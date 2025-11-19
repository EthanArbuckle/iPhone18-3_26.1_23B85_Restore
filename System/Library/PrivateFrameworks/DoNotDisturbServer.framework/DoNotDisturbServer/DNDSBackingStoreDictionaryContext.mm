@interface DNDSBackingStoreDictionaryContext
- (NSArray)arrayHealingSource;
- (NSDictionary)healingSource;
- (id)_initWithContext:(id)a3;
- (id)_initWithDestination:(unint64_t)a3 partitionType:(unint64_t)a4 healingSource:(id)a5 currentRecord:(id)a6 redactSensitiveData:(BOOL)a7 contactProvider:(id)a8 applicationIdentifierMapper:(id)a9;
- (id)copyWithCurrentRecord:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DNDSBackingStoreDictionaryContext

- (id)_initWithDestination:(unint64_t)a3 partitionType:(unint64_t)a4 healingSource:(id)a5 currentRecord:(id)a6 redactSensitiveData:(BOOL)a7 contactProvider:(id)a8 applicationIdentifierMapper:(id)a9
{
  v22 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = DNDSBackingStoreDictionaryContext;
  v18 = [(DNDSBackingStoreDictionaryContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_destination = a3;
    v18->_partitionType = a4;
    objc_storeStrong(&v18->_underlyingHealingSource, a5);
    objc_storeStrong(&v19->_currentRecord, a6);
    v19->_redactSensitiveData = a7;
    objc_storeStrong(&v19->_contactProvider, a8);
    objc_storeStrong(&v19->_applicationIdentifierMapper, a9);
  }

  return v19;
}

- (id)copyWithCurrentRecord:(id)a3
{
  v4 = a3;
  v5 = [(DNDSBackingStoreDictionaryContext *)self mutableCopy];
  [v5 setCurrentRecord:v4];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSBackingStoreDictionaryContext alloc];

  return [(DNDSBackingStoreDictionaryContext *)v4 _initWithContext:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableBackingStoreDictionaryContext alloc];

  return [(DNDSBackingStoreDictionaryContext *)v4 _initWithContext:self];
}

- (id)_initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DNDSBackingStoreDictionaryContext;
  v5 = [(DNDSBackingStoreDictionaryContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_destination = *(v4 + 1);
    v5->_partitionType = *(v4 + 2);
    objc_storeStrong(&v5->_underlyingHealingSource, *(v4 + 3));
    objc_storeStrong(&v6->_currentRecord, *(v4 + 4));
    v6->_redactSensitiveData = *(v4 + 40);
    objc_storeStrong(&v6->_contactProvider, *(v4 + 6));
    objc_storeStrong(&v6->_applicationIdentifierMapper, *(v4 + 7));
  }

  return v6;
}

@end