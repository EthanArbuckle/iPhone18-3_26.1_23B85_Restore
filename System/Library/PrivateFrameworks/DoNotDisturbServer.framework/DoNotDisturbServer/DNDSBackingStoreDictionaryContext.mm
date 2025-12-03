@interface DNDSBackingStoreDictionaryContext
- (NSArray)arrayHealingSource;
- (NSDictionary)healingSource;
- (id)_initWithContext:(id)context;
- (id)_initWithDestination:(unint64_t)destination partitionType:(unint64_t)type healingSource:(id)source currentRecord:(id)record redactSensitiveData:(BOOL)data contactProvider:(id)provider applicationIdentifierMapper:(id)mapper;
- (id)copyWithCurrentRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DNDSBackingStoreDictionaryContext

- (id)_initWithDestination:(unint64_t)destination partitionType:(unint64_t)type healingSource:(id)source currentRecord:(id)record redactSensitiveData:(BOOL)data contactProvider:(id)provider applicationIdentifierMapper:(id)mapper
{
  sourceCopy = source;
  recordCopy = record;
  providerCopy = provider;
  mapperCopy = mapper;
  v23.receiver = self;
  v23.super_class = DNDSBackingStoreDictionaryContext;
  v18 = [(DNDSBackingStoreDictionaryContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_destination = destination;
    v18->_partitionType = type;
    objc_storeStrong(&v18->_underlyingHealingSource, source);
    objc_storeStrong(&v19->_currentRecord, record);
    v19->_redactSensitiveData = data;
    objc_storeStrong(&v19->_contactProvider, provider);
    objc_storeStrong(&v19->_applicationIdentifierMapper, mapper);
  }

  return v19;
}

- (id)copyWithCurrentRecord:(id)record
{
  recordCopy = record;
  v5 = [(DNDSBackingStoreDictionaryContext *)self mutableCopy];
  [v5 setCurrentRecord:recordCopy];

  v6 = [v5 copy];
  return v6;
}

- (NSDictionary)healingSource
{
  if (!self->_underlyingHealingSource)
  {
    underlyingHealingSource = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    underlyingHealingSource = self->_underlyingHealingSource;
LABEL_5:
    v4 = underlyingHealingSource;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (NSArray)arrayHealingSource
{
  if (!self->_underlyingHealingSource)
  {
    underlyingHealingSource = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    underlyingHealingSource = self->_underlyingHealingSource;
LABEL_5:
    v4 = underlyingHealingSource;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSBackingStoreDictionaryContext alloc];

  return [(DNDSBackingStoreDictionaryContext *)v4 _initWithContext:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableBackingStoreDictionaryContext alloc];

  return [(DNDSBackingStoreDictionaryContext *)v4 _initWithContext:self];
}

- (id)_initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = DNDSBackingStoreDictionaryContext;
  v5 = [(DNDSBackingStoreDictionaryContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_destination = *(contextCopy + 1);
    v5->_partitionType = *(contextCopy + 2);
    objc_storeStrong(&v5->_underlyingHealingSource, *(contextCopy + 3));
    objc_storeStrong(&v6->_currentRecord, *(contextCopy + 4));
    v6->_redactSensitiveData = *(contextCopy + 40);
    objc_storeStrong(&v6->_contactProvider, *(contextCopy + 6));
    objc_storeStrong(&v6->_applicationIdentifierMapper, *(contextCopy + 7));
  }

  return v6;
}

@end