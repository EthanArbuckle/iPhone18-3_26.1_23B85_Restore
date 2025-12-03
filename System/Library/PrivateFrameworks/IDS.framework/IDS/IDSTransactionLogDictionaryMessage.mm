@interface IDSTransactionLogDictionaryMessage
- (IDSTransactionLogDictionaryMessage)initWithDictionary:(id)dictionary accountUniqueID:(id)d fromID:(id)iD loginID:(id)loginID serviceName:(id)name;
- (IDSTransactionLogDictionaryMessage)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation IDSTransactionLogDictionaryMessage

- (IDSTransactionLogDictionaryMessage)initWithDictionary:(id)dictionary accountUniqueID:(id)d fromID:(id)iD loginID:(id)loginID serviceName:(id)name
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = IDSTransactionLogDictionaryMessage;
  v14 = [(IDSTransactionLogMessage *)&v17 _initWithAccountUniqueID:d fromID:iD loginID:loginID serviceName:name];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 5, dictionary);
  }

  return v15;
}

- (IDSTransactionLogDictionaryMessage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = IDSTransactionLogDictionaryMessage;
  v5 = [(IDSTransactionLogMessage *)&v9 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageDictionaryValueKey"];
    dictionaryValue = v5->_dictionaryValue;
    v5->_dictionaryValue = v6;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  _dictionaryRepresentation = [(IDSTransactionLogMessage *)self _dictionaryRepresentation];
  dictionaryValue = [(IDSTransactionLogDictionaryMessage *)self dictionaryValue];

  if (dictionaryValue)
  {
    dictionaryValue2 = [(IDSTransactionLogDictionaryMessage *)self dictionaryValue];
    [_dictionaryRepresentation setObject:dictionaryValue2 forKeyedSubscript:@"IDSTransactionLogMessageDictionaryValueKey"];
  }

  return _dictionaryRepresentation;
}

@end