@interface EDSearchableIndexClientState
+ (id)clientState;
+ (id)clientStateFromData:(id)data;
+ (id)transactionAttributeKey;
- (EDSearchableIndexClientState)init;
- (EDSearchableIndexClientState)initWithDictionary:(id)dictionary;
- (NSNumber)transactionValue;
- (id)archiveRepresentation;
- (id)description;
- (void)addTransactionValueToAttributeSet:(id)set;
@end

@implementation EDSearchableIndexClientState

+ (id)transactionAttributeKey
{
  if (transactionAttributeKey_onceToken != -1)
  {
    +[EDSearchableIndexClientState transactionAttributeKey];
  }

  v3 = transactionAttributeKey_key;

  return v3;
}

void __55__EDSearchableIndexClientState_transactionAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mail_transaction" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v1 = transactionAttributeKey_key;
  transactionAttributeKey_key = v0;
}

+ (id)clientState
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)clientStateFromData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:4 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[self alloc] initWithDictionary:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  ef_posixLocale = [MEMORY[0x1E695DF58] ef_posixLocale];
  [v3 setLocale:ef_posixLocale];

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ssZ"];
  v5 = [v3 stringFromDate:self->_transactionDate];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> version=%@ date=%@ transaction=%lld", objc_opt_class(), self, self->_systemBuildVersion, v5, self->_transaction];

  return v6;
}

- (EDSearchableIndexClientState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"transaction"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"date"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"build"];
  if (objc_opt_respondsToSelector())
  {
    v12.receiver = self;
    v12.super_class = EDSearchableIndexClientState;
    v8 = [(EDSearchableIndexClientState *)&v12 init];
    if (v8)
    {
      v8->_transaction = [v5 longLongValue];
      if (v7)
      {
        [(EDSearchableIndexClientState *)v8 setSystemBuildVersion:v7];
      }

      if (objc_opt_respondsToSelector())
      {
        v9 = MEMORY[0x1E695DF00];
        [v6 doubleValue];
        v10 = [v9 dateWithTimeIntervalSince1970:?];
        [(EDSearchableIndexClientState *)v8 setTransactionDate:v10];
      }
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (EDSearchableIndexClientState)init
{
  v9.receiver = self;
  v9.super_class = EDSearchableIndexClientState;
  v2 = [(EDSearchableIndexClientState *)&v9 init];
  if (v2)
  {
    v3 = EFSystemBuildVersion();
    v4 = [v3 copy];
    systemBuildVersion = v2->_systemBuildVersion;
    v2->_systemBuildVersion = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF00]);
    transactionDate = v2->_transactionDate;
    v2->_transactionDate = v6;
  }

  return v2;
}

- (id)archiveRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_transaction];
  [dictionary setObject:v4 forKeyedSubscript:@"transaction"];

  v5 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_transactionDate timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  [dictionary setObject:v6 forKeyedSubscript:@"date"];

  [dictionary setObject:self->_systemBuildVersion forKeyedSubscript:@"build"];
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:0];

  return v7;
}

- (NSNumber)transactionValue
{
  transactionValue = self->_transactionValue;
  if (!transactionValue)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_transaction];
    v5 = self->_transactionValue;
    self->_transactionValue = v4;

    transactionValue = self->_transactionValue;
  }

  return transactionValue;
}

- (void)addTransactionValueToAttributeSet:(id)set
{
  setCopy = set;
  transactionValue = [(EDSearchableIndexClientState *)self transactionValue];
  if (transactionValue)
  {
    transactionAttributeKey = [objc_opt_class() transactionAttributeKey];
    [setCopy setValue:transactionValue forCustomKey:transactionAttributeKey];
  }
}

@end