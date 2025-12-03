@interface MCMAMFIEncodedQuery
- (MCMAMFIEncodedQuery)initWithLoggingName:(id)name reason:(unint64_t)reason encodedQuery:(id)query;
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

- (MCMAMFIEncodedQuery)initWithLoggingName:(id)name reason:(unint64_t)reason encodedQuery:(id)query
{
  v16 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queryCopy = query;
  v15.receiver = self;
  v15.super_class = MCMAMFIEncodedQuery;
  v11 = [(MCMAMFIEncodedQuery *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_loggingName, name);
    v12->_reason = reason;
    objc_storeStrong(&v12->_encodedQuery, query);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end