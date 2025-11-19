@interface PKPeerPaymentAssociatedAccountRemovalRecord
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentAssociatedAccountRemovalRecord)initWithCoder:(id)a3;
- (PKPeerPaymentAssociatedAccountRemovalRecord)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentAssociatedAccountRemovalRecord

- (PKPeerPaymentAssociatedAccountRemovalRecord)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentAssociatedAccountRemovalRecord;
  v5 = [(PKPeerPaymentAssociatedAccountRemovalRecord *)&v21 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 PKStringForKey:@"removalReason"];
    v9 = v8;
    v10 = 0;
    if (v8 == @"closed" || !v8)
    {
      goto LABEL_12;
    }

    v11 = [(__CFString *)v8 isEqualToString:@"closed"];

    if ((v11 & 1) == 0)
    {
      v12 = v9;
      if (v12 == @"graduation" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"graduation"], v13, (v14 & 1) != 0))
      {
        v10 = 1;
        goto LABEL_12;
      }

      v15 = v13;
      if (v15 == @"deletedInvite" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"deletedInvite"], v16, v17))
      {
        v10 = 2;
        goto LABEL_12;
      }
    }

    v10 = 0;
LABEL_12:

    v5->_reason = v10;
    v18 = [v4 PKDateForKey:@"removalDate"];
    date = v5->_date;
    v5->_date = v18;
  }

  return v5;
}

- (PKPeerPaymentAssociatedAccountRemovalRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentAssociatedAccountRemovalRecord;
  v5 = [(PKPeerPaymentAssociatedAccountRemovalRecord *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v5->_hasPresentedNotification = [v4 decodeBoolForKey:@"hasPresentedNotification"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  altDSID = self->_altDSID;
  v5 = a3;
  [v5 encodeObject:altDSID forKey:@"altDSID"];
  [v5 encodeInteger:self->_reason forKey:@"reason"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeBool:self->_hasPresentedNotification forKey:@"hasPresentedNotification"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  reason = self->_reason;
  v5 = @"closed";
  if (reason == 1)
  {
    v5 = @"graduation";
  }

  if (reason == 2)
  {
    v6 = @"deletedInvite";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"reason: '%@'; ", v6];
  [v3 appendFormat:@"date: '%@'; ", self->_date];
  if (self->_hasPresentedNotification)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"hasPresentedNotification: '%@'; ", v7];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = v4[2];
  v6 = self->_altDSID;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

      goto LABEL_15;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (self->_reason == v4[3])
  {
    date = self->_date;
    v11 = v4[4];
    if (date && v11)
    {
      if (([(NSDate *)date isEqual:?]& 1) != 0)
      {
        goto LABEL_17;
      }
    }

    else if (date == v11)
    {
LABEL_17:
      v12 = self->_hasPresentedNotification == *(v4 + 8);
      goto LABEL_16;
    }
  }

LABEL_15:
  v12 = 0;
LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_altDSID];
  [v3 safelyAddObject:self->_date];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_reason - v4 + 32 * v4;
  v6 = self->_hasPresentedNotification - v5 + 32 * v5;

  return v6;
}

@end