@interface NPKBalanceField
- (BOOL)hasPendingUpdate;
- (BOOL)isEqual:(id)equal;
- (NPKBalanceField)initWithBalance:(id)balance label:(id)label formattedValue:(id)value identifier:(id)identifier primaryBalance:(BOOL)primaryBalance action:(id)action pendingUpdateExpireDate:(id)date;
- (NPKBalanceField)initWithCoder:(id)coder;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKBalanceField

- (NPKBalanceField)initWithBalance:(id)balance label:(id)label formattedValue:(id)value identifier:(id)identifier primaryBalance:(BOOL)primaryBalance action:(id)action pendingUpdateExpireDate:(id)date
{
  balanceCopy = balance;
  labelCopy = label;
  valueCopy = value;
  identifierCopy = identifier;
  actionCopy = action;
  dateCopy = date;
  v31.receiver = self;
  v31.super_class = NPKBalanceField;
  v21 = [(NPKBalanceField *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_balance, balance);
    v23 = [labelCopy copy];
    label = v22->_label;
    v22->_label = v23;

    v25 = [valueCopy copy];
    formattedValue = v22->_formattedValue;
    v22->_formattedValue = v25;

    v27 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v27;

    v22->_isPrimaryBalance = primaryBalance;
    objc_storeStrong(&v22->_action, action);
    objc_storeStrong(&v22->_pendingUpdateExpireDate, date);
  }

  return v22;
}

- (NPKBalanceField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NPKBalanceField;
  v5 = [(NPKBalanceField *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formattedValue"];
    formattedValue = v5->_formattedValue;
    v5->_formattedValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v5->_isPrimaryBalance = [coderCopy decodeBoolForKey:@"isPrimaryBalance"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingUpdateExpireDate"];
    pendingUpdateExpireDate = v5->_pendingUpdateExpireDate;
    v5->_pendingUpdateExpireDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  [coderCopy encodeObject:label forKey:@"label"];
  [coderCopy encodeObject:self->_balance forKey:@"balance"];
  [coderCopy encodeObject:self->_formattedValue forKey:@"formattedValue"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isPrimaryBalance forKey:@"isPrimaryBalance"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
  [coderCopy encodeObject:self->_pendingUpdateExpireDate forKey:@"pendingUpdateExpireDate"];
}

- (BOOL)hasPendingUpdate
{
  pendingUpdateExpireDate = self->_pendingUpdateExpireDate;
  if (pendingUpdateExpireDate)
  {
    [(NSDate *)pendingUpdateExpireDate timeIntervalSinceNow];
    LOBYTE(pendingUpdateExpireDate) = v3 > 0.0;
  }

  return pendingUpdateExpireDate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if ([(NPKBalanceField *)equalCopy conformsToProtocol:&unk_286D1AA50])
  {
    balance = [(NPKBalanceField *)self balance];
    balance2 = [(NPKBalanceField *)v5 balance];
    if (PKEqualObjects())
    {
      label = [(NPKBalanceField *)self label];
      label2 = [(NPKBalanceField *)v5 label];
      if (PKEqualObjects())
      {
        formattedValue = [(NPKBalanceField *)self formattedValue];
        formattedValue2 = [(NPKBalanceField *)v5 formattedValue];
        if (PKEqualObjects() && (v12 = [(NPKBalanceField *)self isPrimaryBalance], v12 == [(NPKBalanceField *)v5 isPrimaryBalance]))
        {
          action = [(NPKBalanceField *)self action];
          action2 = [(NPKBalanceField *)v5 action];
          v13 = PKEqualObjects();
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  label = [(NPKBalanceField *)self label];
  formattedValue = [(NPKBalanceField *)self formattedValue];
  [(NPKBalanceField *)self isPrimaryBalance];
  v7 = NSStringFromBOOL();
  identifier = [(NPKBalanceField *)self identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p> {label:%@ formattedValue:%@ isPrimaryBalance:%@ ID:%@", v4, self, label, formattedValue, v7, identifier];

  pendingUpdateExpireDate = self->_pendingUpdateExpireDate;
  if (pendingUpdateExpireDate)
  {
    [v9 appendFormat:@" PendingUpdateExpireDate:%@ hasPendingUpdate:%d", pendingUpdateExpireDate, -[NPKBalanceField hasPendingUpdate](self, "hasPendingUpdate")];
  }

  balance = [(NPKBalanceField *)self balance];

  if (balance)
  {
    balance2 = [(NPKBalanceField *)self balance];
    value = [balance2 value];
    [v9 appendFormat:@" balanceValue:%@", value];
  }

  action = [(NPKBalanceField *)self action];

  if (action)
  {
    action2 = [(NPKBalanceField *)self action];
    [v9 appendFormat:@" action:%@", action2];
  }

  [v9 appendString:@"}"];

  return v9;
}

@end