@interface MADRequest
- (MADRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setError:(id)a3;
@end

@implementation MADRequest

- (MADRequest)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MADRequest;
  v5 = [(MADRequest *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Results"];
    results = v5->_results;
    v5->_results = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
    error = v5->_error;
    v5->_error = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_results forKey:@"Results"];
  [v4 encodeObject:self->_error forKey:@"Error"];
}

- (void)setError:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 userInfo];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __23__MADRequest_setError___block_invoke;
  v15[3] = &unk_1E83430A0;
  v7 = v5;
  v16 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v15];

  if ([v7 count])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADRequest setError:v4];
    }

    v8 = [v4 userInfo];
    v9 = [v8 mutableCopy];

    [(NSError *)v9 removeObjectsForKeys:v7];
    v10 = MEMORY[0x1E696ABC0];
    v11 = [v4 domain];
    v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v4 userInfo:{"code"), v9}];
    error = self->_error;
    self->_error = v12;
  }

  else
  {
    v14 = v4;
    v9 = self->_error;
    self->_error = v14;
  }
}

void __23__MADRequest_setError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 conformsToProtocol:&unk_1F4926780] & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"results: %@, ", self->_results];
  [v3 appendFormat:@"error: %@>", self->_error];

  return v3;
}

- (void)setError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "NSError does not conform to NSSecureCoding; dropping some keys (%@)", &v1, 0xCu);
}

@end