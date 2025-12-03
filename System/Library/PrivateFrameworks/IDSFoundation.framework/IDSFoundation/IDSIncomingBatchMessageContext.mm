@interface IDSIncomingBatchMessageContext
- (IDSIncomingBatchMessageContext)initWithBatchIdentifier:(id)identifier serverStorageFetchContext:(id)context;
- (IDSIncomingBatchMessageContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSIncomingBatchMessageContext

- (IDSIncomingBatchMessageContext)initWithBatchIdentifier:(id)identifier serverStorageFetchContext:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = IDSIncomingBatchMessageContext;
  v9 = [(IDSIncomingBatchMessageContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_batchIdentifier, identifier);
    objc_storeStrong(&v10->_serverStorageFetchContext, context);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  batchIdentifier = self->_batchIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:batchIdentifier forKey:@"IDSIncomingBatchMessageContextBatchIdentifierKey"];
  [coderCopy encodeObject:self->_serverStorageFetchContext forKey:@"IDSIncomingBatchMessageContextServerStorageFetchContextKey"];
  [coderCopy encodeBool:self->_isLastFromStorage forKey:@"IDSIncomingBatchMessageContextIsLastFromStorageKey"];
  [coderCopy encodeObject:self->_batchNumber forKey:@"IDSIncomingBatchMessageContextBatchNumberKey"];
  [coderCopy encodeObject:self->_totalBatchCount forKey:@"IDSIncomingBatchMessageContextTotalBatchCountKey"];
  [coderCopy encodeBool:self->_firstMessageAfterTimeout forKey:@"IDSIncomingBatchMessageContextFirstMessageAfterTimeoutKey"];
}

- (IDSIncomingBatchMessageContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextBatchIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextServerStorageFetchContextKey"];
  v7 = [coderCopy decodeBoolForKey:@"IDSIncomingBatchMessageContextIsLastFromStorageKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextBatchNumberKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextTotalBatchCountKey"];
  v10 = [coderCopy decodeBoolForKey:@"IDSIncomingBatchMessageContextFirstMessageAfterTimeoutKey"];

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