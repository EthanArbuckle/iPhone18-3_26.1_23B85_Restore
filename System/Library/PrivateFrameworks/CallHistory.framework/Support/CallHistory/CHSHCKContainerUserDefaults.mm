@interface CHSHCKContainerUserDefaults
- (CHSHCKContainerUserDefaults)init;
- (CHSHCKContainerUserDefaults)initWithContainerIdentifier:(id)identifier;
- (NSData)previousServerChangeTokenData;
- (NSDate)transactionRecordZoneCreationDate;
- (NSDate)transactionRecordZoneFetchDate;
- (NSDate)transactionRecordZoneSubscriptionCreationDate;
- (id)containerUserDefaultsObjectForKey:(id)key;
- (void)setContainerUserDefaultsObject:(id)object forKey:(id)key;
- (void)setPreviousServerChangeTokenData:(id)data;
- (void)setTransactionRecordZoneCreationDate:(id)date;
- (void)setTransactionRecordZoneFetchDate:(id)date;
- (void)setTransactionRecordZoneSubscriptionCreationDate:(id)date;
@end

@implementation CHSHCKContainerUserDefaults

- (CHSHCKContainerUserDefaults)init
{
  [(CHSHCKContainerUserDefaults *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CHSHCKContainerUserDefaults)initWithContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CHSHCKContainerUserDefaults;
  v5 = [(CHSHCKContainerUserDefaults *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v6;
  }

  return v5;
}

- (id)containerUserDefaultsObjectForKey:(id)key
{
  keyCopy = key;
  containerIdentifier = [(CHSHCKContainerUserDefaults *)self containerIdentifier];
  if (containerIdentifier)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 dictionaryForKey:containerIdentifier];

    v8 = [v7 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setContainerUserDefaultsObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  containerIdentifier = [(CHSHCKContainerUserDefaults *)self containerIdentifier];
  if (containerIdentifier)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 dictionaryForKey:containerIdentifier];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = +[NSMutableDictionary dictionary];
    }

    [v10 setObject:objectCopy forKeyedSubscript:keyCopy];
    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:v10 forKey:containerIdentifier];
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

- (void)setPreviousServerChangeTokenData:(id)data
{
  dataCopy = data;
  v5 = NSStringFromSelector("previousServerChangeTokenData");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:dataCopy forKey:v5];
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

- (void)setTransactionRecordZoneCreationDate:(id)date
{
  dateCopy = date;
  v5 = NSStringFromSelector("transactionRecordZoneCreationDate");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:dateCopy forKey:v5];
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

- (void)setTransactionRecordZoneFetchDate:(id)date
{
  dateCopy = date;
  v5 = NSStringFromSelector("transactionRecordZoneFetchDate");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:dateCopy forKey:v5];
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

- (void)setTransactionRecordZoneSubscriptionCreationDate:(id)date
{
  dateCopy = date;
  v5 = NSStringFromSelector("transactionRecordZoneSubscriptionCreationDate");
  [(CHSHCKContainerUserDefaults *)self setContainerUserDefaultsObject:dateCopy forKey:v5];
}

@end