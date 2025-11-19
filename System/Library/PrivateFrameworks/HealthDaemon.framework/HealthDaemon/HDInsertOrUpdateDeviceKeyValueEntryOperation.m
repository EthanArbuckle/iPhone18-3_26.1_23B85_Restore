@interface HDInsertOrUpdateDeviceKeyValueEntryOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCategory:(int64_t)a3 key:(id)a4 value:(id)a5 domain:(id)a6 deviceContext:(id)a7 modificationDate:(id)a8;
- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCoder:(id)a3;
- (id)transactionContext;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDInsertOrUpdateDeviceKeyValueEntryOperation

- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCategory:(int64_t)a3 key:(id)a4 value:(id)a5 domain:(id)a6 deviceContext:(id)a7 modificationDate:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HDInsertOrUpdateDeviceKeyValueEntryOperation;
  v18 = [(HDInsertOrUpdateDeviceKeyValueEntryOperation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_category = a3;
    objc_storeStrong(&v18->_value, a5);
    objc_storeStrong(&v19->_key, a4);
    objc_storeStrong(&v19->_domainName, a6);
    objc_storeStrong(&v19->_deviceContext, a7);
    objc_storeStrong(&v19->_modificationDate, a8);
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

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 deviceKeyValueStoreManager];
  LOBYTE(a5) = [v9 insertOrUpdateData:self->_value forKey:self->_key transaction:v8 domainName:self->_domainName protectionCategory:self->_category deviceContext:self->_deviceContext modificationDate:self->_modificationDate error:a5];

  return a5;
}

- (HDInsertOrUpdateDeviceKeyValueEntryOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"Category"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EntryValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EntryKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EntryDomain"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceContext"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];

  v11 = [(HDInsertOrUpdateDeviceKeyValueEntryOperation *)self initWithCategory:v5 key:v7 value:v6 domain:v8 deviceContext:v9 modificationDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  category = self->_category;
  v5 = a3;
  [v5 encodeInt64:category forKey:@"Category"];
  [v5 encodeObject:self->_value forKey:@"EntryValue"];
  [v5 encodeObject:self->_key forKey:@"EntryKey"];
  [v5 encodeObject:self->_domainName forKey:@"EntryDomain"];
  [v5 encodeObject:self->_deviceContext forKey:@"DeviceContext"];
  [v5 encodeObject:self->_modificationDate forKey:@"ModificationDate"];
}

@end