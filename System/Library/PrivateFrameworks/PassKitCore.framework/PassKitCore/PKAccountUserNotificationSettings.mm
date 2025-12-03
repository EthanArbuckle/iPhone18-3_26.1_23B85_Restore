@interface PKAccountUserNotificationSettings
+ (id)defaultNotificationSettings;
- (BOOL)_isEqualToAccountUserNotificationSettings:(id)settings;
- (BOOL)isEqual:(id)equal;
- (PKAccountUserNotificationSettings)initWithAccountUserNotificationSettings:(id)settings;
- (PKAccountUserNotificationSettings)initWithCoder:(id)coder;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountUserNotificationSettings

- (PKAccountUserNotificationSettings)initWithAccountUserNotificationSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = PKAccountUserNotificationSettings;
  v5 = [(PKAccountUserNotificationSettings *)&v11 init];
  if (v5)
  {
    v5->_transactionNotificationsEnabled = [settingsCopy transactionNotificationsEnabled];
    transactionNotificationThreshold = [settingsCopy transactionNotificationThreshold];
    transactionNotificationThreshold = v5->_transactionNotificationThreshold;
    v5->_transactionNotificationThreshold = transactionNotificationThreshold;

    monthlySpendNotificationThreshold = [settingsCopy monthlySpendNotificationThreshold];
    monthlySpendNotificationThreshold = v5->_monthlySpendNotificationThreshold;
    v5->_monthlySpendNotificationThreshold = monthlySpendNotificationThreshold;
  }

  return v5;
}

+ (id)defaultNotificationSettings
{
  v2 = objc_alloc_init(self);
  v2[8] = 1;

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountUserNotificationSettings *)self _isEqualToAccountUserNotificationSettings:v5];
  }

  return v6;
}

- (BOOL)_isEqualToAccountUserNotificationSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (!settingsCopy || self->_transactionNotificationsEnabled != *(settingsCopy + 8))
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

- (PKAccountUserNotificationSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountUserNotificationSettings;
  v5 = [(PKAccountUserNotificationSettings *)&v11 init];
  if (v5)
  {
    v5->_transactionNotificationsEnabled = [coderCopy decodeBoolForKey:@"transactionNotificationsEnabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionNotificationThreshold"];
    transactionNotificationThreshold = v5->_transactionNotificationThreshold;
    v5->_transactionNotificationThreshold = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"monthlySpendNotificationThreshold"];
    monthlySpendNotificationThreshold = v5->_monthlySpendNotificationThreshold;
    v5->_monthlySpendNotificationThreshold = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transactionNotificationsEnabled = self->_transactionNotificationsEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:transactionNotificationsEnabled forKey:@"transactionNotificationsEnabled"];
  [coderCopy encodeObject:self->_transactionNotificationThreshold forKey:@"transactionNotificationThreshold"];
  [coderCopy encodeObject:self->_monthlySpendNotificationThreshold forKey:@"monthlySpendNotificationThreshold"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PKMutableAccountUserNotificationSettings allocWithZone:zone];

  return [(PKAccountUserNotificationSettings *)v4 initWithAccountUserNotificationSettings:self];
}

@end