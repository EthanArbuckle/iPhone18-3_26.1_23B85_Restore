@interface HDInsertOrUpdateDeviceKeyValueEntryOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCategory:(int64_t)category key:(id)key value:(id)value domain:(id)domain deviceContext:(id)context modificationDate:(id)date;
- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCoder:(id)coder;
- (id)transactionContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDInsertOrUpdateDeviceKeyValueEntryOperation

- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCategory:(int64_t)category key:(id)key value:(id)value domain:(id)domain deviceContext:(id)context modificationDate:(id)date
{
  keyCopy = key;
  valueCopy = value;
  domainCopy = domain;
  contextCopy = context;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = HDInsertOrUpdateDeviceKeyValueEntryOperation;
  v18 = [(HDInsertOrUpdateDeviceKeyValueEntryOperation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_category = category;
    objc_storeStrong(&v18->_value, value);
    objc_storeStrong(&v19->_key, key);
    objc_storeStrong(&v19->_domainName, domain);
    objc_storeStrong(&v19->_deviceContext, context);
    objc_storeStrong(&v19->_modificationDate, date);
  }

  return v19;
}

- (id)transactionContext
{
  if (self->_category)
  {
    +[HDDatabaseTransactionContext contextForWriting];
  }

  else
  {
    +[HDDatabaseTransactionContext contextForWritingProtectedData];
  }
  v2 = ;

  return v2;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  LOBYTE(error) = [deviceKeyValueStoreManager insertOrUpdateData:self->_value forKey:self->_key transaction:transactionCopy domainName:self->_domainName protectionCategory:self->_category deviceContext:self->_deviceContext modificationDate:self->_modificationDate error:error];

  return error;
}

- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"Category"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EntryValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EntryKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EntryDomain"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceContext"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];

  v11 = [(HDInsertOrUpdateDeviceKeyValueEntryOperation *)self initWithCategory:v5 key:v7 value:v6 domain:v8 deviceContext:v9 modificationDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  category = self->_category;
  coderCopy = coder;
  [coderCopy encodeInt64:category forKey:@"Category"];
  [coderCopy encodeObject:self->_value forKey:@"EntryValue"];
  [coderCopy encodeObject:self->_key forKey:@"EntryKey"];
  [coderCopy encodeObject:self->_domainName forKey:@"EntryDomain"];
  [coderCopy encodeObject:self->_deviceContext forKey:@"DeviceContext"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"ModificationDate"];
}

@end