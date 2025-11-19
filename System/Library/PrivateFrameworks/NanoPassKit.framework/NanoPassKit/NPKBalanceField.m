@interface NPKBalanceField
- (BOOL)hasPendingUpdate;
- (BOOL)isEqual:(id)a3;
- (NPKBalanceField)initWithBalance:(id)a3 label:(id)a4 formattedValue:(id)a5 identifier:(id)a6 primaryBalance:(BOOL)a7 action:(id)a8 pendingUpdateExpireDate:(id)a9;
- (NPKBalanceField)initWithCoder:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKBalanceField

- (NPKBalanceField)initWithBalance:(id)a3 label:(id)a4 formattedValue:(id)a5 identifier:(id)a6 primaryBalance:(BOOL)a7 action:(id)a8 pendingUpdateExpireDate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v31.receiver = self;
  v31.super_class = NPKBalanceField;
  v21 = [(NPKBalanceField *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_balance, a3);
    v23 = [v16 copy];
    label = v22->_label;
    v22->_label = v23;

    v25 = [v17 copy];
    formattedValue = v22->_formattedValue;
    v22->_formattedValue = v25;

    v27 = [v18 copy];
    identifier = v22->_identifier;
    v22->_identifier = v27;

    v22->_isPrimaryBalance = a7;
    objc_storeStrong(&v22->_action, a8);
    objc_storeStrong(&v22->_pendingUpdateExpireDate, a9);
  }

  return v22;
}

- (NPKBalanceField)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NPKBalanceField;
  v5 = [(NPKBalanceField *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formattedValue"];
    formattedValue = v5->_formattedValue;
    v5->_formattedValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v5->_isPrimaryBalance = [v4 decodeBoolForKey:@"isPrimaryBalance"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingUpdateExpireDate"];
    pendingUpdateExpireDate = v5->_pendingUpdateExpireDate;
    v5->_pendingUpdateExpireDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"label"];
  [v5 encodeObject:self->_balance forKey:@"balance"];
  [v5 encodeObject:self->_formattedValue forKey:@"formattedValue"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeBool:self->_isPrimaryBalance forKey:@"isPrimaryBalance"];
  [v5 encodeObject:self->_action forKey:@"action"];
  [v5 encodeObject:self->_pendingUpdateExpireDate forKey:@"pendingUpdateExpireDate"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if ([(NPKBalanceField *)v4 conformsToProtocol:&unk_286D1AA50])
  {
    v6 = [(NPKBalanceField *)self balance];
    v7 = [(NPKBalanceField *)v5 balance];
    if (PKEqualObjects())
    {
      v8 = [(NPKBalanceField *)self label];
      v9 = [(NPKBalanceField *)v5 label];
      if (PKEqualObjects())
      {
        v10 = [(NPKBalanceField *)self formattedValue];
        v11 = [(NPKBalanceField *)v5 formattedValue];
        if (PKEqualObjects() && (v12 = [(NPKBalanceField *)self isPrimaryBalance], v12 == [(NPKBalanceField *)v5 isPrimaryBalance]))
        {
          v14 = [(NPKBalanceField *)self action];
          v15 = [(NPKBalanceField *)v5 action];
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
  v5 = [(NPKBalanceField *)self label];
  v6 = [(NPKBalanceField *)self formattedValue];
  [(NPKBalanceField *)self isPrimaryBalance];
  v7 = NSStringFromBOOL();
  v8 = [(NPKBalanceField *)self identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p> {label:%@ formattedValue:%@ isPrimaryBalance:%@ ID:%@", v4, self, v5, v6, v7, v8];

  pendingUpdateExpireDate = self->_pendingUpdateExpireDate;
  if (pendingUpdateExpireDate)
  {
    [v9 appendFormat:@" PendingUpdateExpireDate:%@ hasPendingUpdate:%d", pendingUpdateExpireDate, -[NPKBalanceField hasPendingUpdate](self, "hasPendingUpdate")];
  }

  v11 = [(NPKBalanceField *)self balance];

  if (v11)
  {
    v12 = [(NPKBalanceField *)self balance];
    v13 = [v12 value];
    [v9 appendFormat:@" balanceValue:%@", v13];
  }

  v14 = [(NPKBalanceField *)self action];

  if (v14)
  {
    v15 = [(NPKBalanceField *)self action];
    [v9 appendFormat:@" action:%@", v15];
  }

  [v9 appendString:@"}"];

  return v9;
}

@end