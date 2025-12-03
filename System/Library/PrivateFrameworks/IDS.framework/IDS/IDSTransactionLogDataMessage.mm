@interface IDSTransactionLogDataMessage
- (IDSTransactionLogDataMessage)initWithData:(id)data accountUniqueID:(id)d fromID:(id)iD loginID:(id)loginID serviceName:(id)name;
- (IDSTransactionLogDataMessage)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation IDSTransactionLogDataMessage

- (IDSTransactionLogDataMessage)initWithData:(id)data accountUniqueID:(id)d fromID:(id)iD loginID:(id)loginID serviceName:(id)name
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = IDSTransactionLogDataMessage;
  v14 = [(IDSTransactionLogMessage *)&v17 _initWithAccountUniqueID:d fromID:iD loginID:loginID serviceName:name];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 5, data);
  }

  return v15;
}

- (IDSTransactionLogDataMessage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = IDSTransactionLogDataMessage;
  v5 = [(IDSTransactionLogMessage *)&v9 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageDataValueKey"];
    dataValue = v5->_dataValue;
    v5->_dataValue = v6;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  _dictionaryRepresentation = [(IDSTransactionLogMessage *)self _dictionaryRepresentation];
  dataValue = [(IDSTransactionLogDataMessage *)self dataValue];

  if (dataValue)
  {
    dataValue2 = [(IDSTransactionLogDataMessage *)self dataValue];
    [_dictionaryRepresentation setObject:dataValue2 forKeyedSubscript:@"IDSTransactionLogMessageDataValueKey"];
  }

  return _dictionaryRepresentation;
}

@end