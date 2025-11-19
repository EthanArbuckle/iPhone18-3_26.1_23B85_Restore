@interface PKAccountUserNotificationSettings
+ (id)defaultNotificationSettings;
- (BOOL)_isEqualToAccountUserNotificationSettings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKAccountUserNotificationSettings)initWithAccountUserNotificationSettings:(id)a3;
- (PKAccountUserNotificationSettings)initWithCoder:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountUserNotificationSettings

- (PKAccountUserNotificationSettings)initWithAccountUserNotificationSettings:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountUserNotificationSettings;
  v5 = [(PKAccountUserNotificationSettings *)&v11 init];
  if (v5)
  {
    v5->_transactionNotificationsEnabled = [v4 transactionNotificationsEnabled];
    v6 = [v4 transactionNotificationThreshold];
    transactionNotificationThreshold = v5->_transactionNotificationThreshold;
    v5->_transactionNotificationThreshold = v6;

    v8 = [v4 monthlySpendNotificationThreshold];
    monthlySpendNotificationThreshold = v5->_monthlySpendNotificationThreshold;
    v5->_monthlySpendNotificationThreshold = v8;
  }

  return v5;
}

+ (id)defaultNotificationSettings
{
  v2 = objc_alloc_init(a1);
  v2[8] = 1;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountUserNotificationSettings *)self _isEqualToAccountUserNotificationSettings:v5];
  }

  return v6;
}

- (BOOL)_isEqualToAccountUserNotificationSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_transactionNotificationsEnabled != *(v4 + 8))
  {
    goto LABEL_10;
  }

  transactionNotificationThreshold = self->_transactionNotificationThreshold;
  v7 = v5[2];
  if (!transactionNotificationThreshold || !v7)
  {
    if (transactionNotificationThreshold == v7)
    {
      goto LABEL_6;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (([(NSDecimalNumber *)transactionNotificationThreshold isEqual:?]& 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  monthlySpendNotificationThreshold = self->_monthlySpendNotificationThreshold;
  v9 = v5[3];
  if (monthlySpendNotificationThreshold && v9)
  {
    v10 = [(NSDecimalNumber *)monthlySpendNotificationThreshold isEqual:?];
  }

  else
  {
    v10 = monthlySpendNotificationThreshold == v9;
  }

LABEL_11:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transactionNotificationThreshold];
  [v3 safelyAddObject:self->_monthlySpendNotificationThreshold];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_transactionNotificationsEnabled - v4 + 32 * v4;

  return v5;
}

- (PKAccountUserNotificationSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountUserNotificationSettings;
  v5 = [(PKAccountUserNotificationSettings *)&v11 init];
  if (v5)
  {
    v5->_transactionNotificationsEnabled = [v4 decodeBoolForKey:@"transactionNotificationsEnabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionNotificationThreshold"];
    transactionNotificationThreshold = v5->_transactionNotificationThreshold;
    v5->_transactionNotificationThreshold = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"monthlySpendNotificationThreshold"];
    monthlySpendNotificationThreshold = v5->_monthlySpendNotificationThreshold;
    v5->_monthlySpendNotificationThreshold = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  transactionNotificationsEnabled = self->_transactionNotificationsEnabled;
  v5 = a3;
  [v5 encodeBool:transactionNotificationsEnabled forKey:@"transactionNotificationsEnabled"];
  [v5 encodeObject:self->_transactionNotificationThreshold forKey:@"transactionNotificationThreshold"];
  [v5 encodeObject:self->_monthlySpendNotificationThreshold forKey:@"monthlySpendNotificationThreshold"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PKMutableAccountUserNotificationSettings allocWithZone:a3];

  return [(PKAccountUserNotificationSettings *)v4 initWithAccountUserNotificationSettings:self];
}

@end