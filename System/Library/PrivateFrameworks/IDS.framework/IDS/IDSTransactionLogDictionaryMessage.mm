@interface IDSTransactionLogDictionaryMessage
- (IDSTransactionLogDictionaryMessage)initWithDictionary:(id)a3 accountUniqueID:(id)a4 fromID:(id)a5 loginID:(id)a6 serviceName:(id)a7;
- (IDSTransactionLogDictionaryMessage)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation IDSTransactionLogDictionaryMessage

- (IDSTransactionLogDictionaryMessage)initWithDictionary:(id)a3 accountUniqueID:(id)a4 fromID:(id)a5 loginID:(id)a6 serviceName:(id)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = IDSTransactionLogDictionaryMessage;
  v14 = [(IDSTransactionLogMessage *)&v17 _initWithAccountUniqueID:a4 fromID:a5 loginID:a6 serviceName:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 5, a3);
  }

  return v15;
}

- (IDSTransactionLogDictionaryMessage)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSTransactionLogDictionaryMessage;
  v5 = [(IDSTransactionLogMessage *)&v9 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"IDSTransactionLogMessageDictionaryValueKey"];
    dictionaryValue = v5->_dictionaryValue;
    v5->_dictionaryValue = v6;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [(IDSTransactionLogMessage *)self _dictionaryRepresentation];
  v4 = [(IDSTransactionLogDictionaryMessage *)self dictionaryValue];

  if (v4)
  {
    v5 = [(IDSTransactionLogDictionaryMessage *)self dictionaryValue];
    [v3 setObject:v5 forKeyedSubscript:@"IDSTransactionLogMessageDictionaryValueKey"];
  }

  return v3;
}

@end