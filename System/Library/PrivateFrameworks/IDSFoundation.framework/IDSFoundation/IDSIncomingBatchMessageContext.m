@interface IDSIncomingBatchMessageContext
- (IDSIncomingBatchMessageContext)initWithBatchIdentifier:(id)a3 serverStorageFetchContext:(id)a4;
- (IDSIncomingBatchMessageContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSIncomingBatchMessageContext

- (IDSIncomingBatchMessageContext)initWithBatchIdentifier:(id)a3 serverStorageFetchContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSIncomingBatchMessageContext;
  v9 = [(IDSIncomingBatchMessageContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_batchIdentifier, a3);
    objc_storeStrong(&v10->_serverStorageFetchContext, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  batchIdentifier = self->_batchIdentifier;
  v5 = a3;
  [v5 encodeObject:batchIdentifier forKey:@"IDSIncomingBatchMessageContextBatchIdentifierKey"];
  [v5 encodeObject:self->_serverStorageFetchContext forKey:@"IDSIncomingBatchMessageContextServerStorageFetchContextKey"];
  [v5 encodeBool:self->_isLastFromStorage forKey:@"IDSIncomingBatchMessageContextIsLastFromStorageKey"];
  [v5 encodeObject:self->_batchNumber forKey:@"IDSIncomingBatchMessageContextBatchNumberKey"];
  [v5 encodeObject:self->_totalBatchCount forKey:@"IDSIncomingBatchMessageContextTotalBatchCountKey"];
  [v5 encodeBool:self->_firstMessageAfterTimeout forKey:@"IDSIncomingBatchMessageContextFirstMessageAfterTimeoutKey"];
}

- (IDSIncomingBatchMessageContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextBatchIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextServerStorageFetchContextKey"];
  v7 = [v4 decodeBoolForKey:@"IDSIncomingBatchMessageContextIsLastFromStorageKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextBatchNumberKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextTotalBatchCountKey"];
  v10 = [v4 decodeBoolForKey:@"IDSIncomingBatchMessageContextFirstMessageAfterTimeoutKey"];

  v11 = [(IDSIncomingBatchMessageContext *)self initWithBatchIdentifier:v5 serverStorageFetchContext:v6];
  [(IDSIncomingBatchMessageContext *)v11 setIsLastFromStorage:v7];
  [(IDSIncomingBatchMessageContext *)v11 setBatchNumber:v8];
  [(IDSIncomingBatchMessageContext *)v11 setTotalBatchCount:v9];
  [(IDSIncomingBatchMessageContext *)v11 setFirstMessageAfterTimeout:v10];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_isLastFromStorage)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_firstMessageAfterTimeout)
  {
    v5 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p> batchIdentifier: %@ serverStorageFetchContext: %@ isLastFromStorage: %@ batchNumber: %@ totalBatchCount: %@ firstMessageAfterTimeout: %@", v4, self, self->_batchIdentifier, self->_serverStorageFetchContext, v6, self->_batchNumber, self->_totalBatchCount, v5];
}

@end