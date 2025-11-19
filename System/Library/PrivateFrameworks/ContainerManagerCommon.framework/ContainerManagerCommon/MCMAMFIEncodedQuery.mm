@interface MCMAMFIEncodedQuery
- (MCMAMFIEncodedQuery)initWithLoggingName:(id)a3 reason:(unint64_t)a4 encodedQuery:(id)a5;
- (NSData)encodedQuery;
- (NSString)loggingName;
- (unint64_t)reason;
@end

@implementation MCMAMFIEncodedQuery

- (NSData)encodedQuery
{
  result = self->_encodedQuery;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)reason
{
  result = self->_reason;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)loggingName
{
  result = self->_loggingName;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMAMFIEncodedQuery)initWithLoggingName:(id)a3 reason:(unint64_t)a4 encodedQuery:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MCMAMFIEncodedQuery;
  v11 = [(MCMAMFIEncodedQuery *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_loggingName, a3);
    v12->_reason = a4;
    objc_storeStrong(&v12->_encodedQuery, a5);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end