@interface CHSHCKContainerUserDefaults
- (CHSHCKContainerUserDefaults)init;
- (CHSHCKContainerUserDefaults)initWithContainerIdentifier:(id)a3;
- (NSData)previousServerChangeTokenData;
- (NSDate)transactionRecordZoneCreationDate;
- (NSDate)transactionRecordZoneFetchDate;
- (NSDate)transactionRecordZoneSubscriptionCreationDate;
- (id)containerUserDefaultsObjectForKey:(id)a3;
- (void)setContainerUserDefaultsObject:(id)a3 forKey:(id)a4;
- (void)setPreviousServerChangeTokenData:(id)a3;
- (void)setTransactionRecordZoneCreationDate:(id)a3;
- (void)setTransactionRecordZoneFetchDate:(id)a3;
- (void)setTransactionRecordZoneSubscriptionCreationDate:(id)a3;
@end

@implementation CHSHCKContainerUserDefaults

- (CHSHCKContainerUserDefaults)init
{
  [(CHSHCKContainerUserDefaults *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CHSHCKContainerUserDefaults)initWithContainerIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHSHCKContainerUserDefaults;
  v5 = [(CHSHCKContainerUserDefaults *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v6;
  }

  return v5;
}

- (id)containerUserDefaultsObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CHSHCKContainerUserDefaults *)self containerIdentifier];
  if (v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 dictionaryForKey:v5];

    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setContainerUserDefaultsObject:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CHSHCKContainerUserDefaults *)self containerIdentifier];
  if (v7)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 dictionaryForKey:v7];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = +[NSMutableDictionary dictionary];
    }

    [v10 setObject:v12 forKeyedSubscript:v6];
    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:v10 forKey:v7];
  }
}

- (NSData)previousServerChangeTokenData
{
  v3 = NSStringFromSelector("previousServerChangeTokenData");
  v4 = [(CHSHCKContainerUserDefaults *)self containerUserDefaultsObjectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPreviousServerChangeTokenData:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("previousServerChangeTokenData");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:v4 forKey:v5];
}

- (NSDate)transactionRecordZoneCreationDate
{
  v3 = NSStringFromSelector("transactionRecordZoneCreationDate");
  v4 = [(CHSHCKContainerUserDefaults *)self containerUserDefaultsObjectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTransactionRecordZoneCreationDate:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("transactionRecordZoneCreationDate");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:v4 forKey:v5];
}

- (NSDate)transactionRecordZoneFetchDate
{
  v3 = NSStringFromSelector("transactionRecordZoneFetchDate");
  v4 = [(CHSHCKContainerUserDefaults *)self containerUserDefaultsObjectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTransactionRecordZoneFetchDate:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("transactionRecordZoneFetchDate");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:v4 forKey:v5];
}

- (NSDate)transactionRecordZoneSubscriptionCreationDate
{
  v3 = NSStringFromSelector("transactionRecordZoneSubscriptionCreationDate");
  v4 = [(CHSHCKContainerUserDefaults *)self containerUserDefaultsObjectForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTransactionRecordZoneSubscriptionCreationDate:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("transactionRecordZoneSubscriptionCreationDate");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:v4 forKey:v5];
}

@end