@interface FCMockFetchedValueDescriptor
- (BOOL)isValue:(id)a3 equalToValue:(id)a4;
- (FCMockFetchedValueDescriptor)initWithInputManagers:(id)a3;
- (void)fetchValueWithCachePolicy:(unint64_t)a3 qualityOfService:(int64_t)a4 completion:(id)a5;
- (void)markDirty;
@end

@implementation FCMockFetchedValueDescriptor

- (FCMockFetchedValueDescriptor)initWithInputManagers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "inputManagers"];
    *buf = 136315906;
    v13 = "[FCMockFetchedValueDescriptor initWithInputManagers:]";
    v14 = 2080;
    v15 = "FCMockFetchedValueDescriptor.m";
    v16 = 1024;
    v17 = 30;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCMockFetchedValueDescriptor;
  v5 = [(FCFetchedValueDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    myInputManagers = v5->_myInputManagers;
    v5->_myInputManagers = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)markDirty
{
  v3 = [(FCFetchedValueDescriptor *)self observer];
  [v3 fetchedValueDescriptorValueIsDirty:self];
}

- (void)fetchValueWithCachePolicy:(unint64_t)a3 qualityOfService:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(FCMockFetchedValueDescriptor *)self willFetchBlock];

  if (v9)
  {
    v10 = [(FCMockFetchedValueDescriptor *)self willFetchBlock];
    v10[2]();
  }

  [(FCMockFetchedValueDescriptor *)self setWillFetchCount:[(FCMockFetchedValueDescriptor *)self willFetchCount]+ 1];
  v12 = [(FCMockFetchedValueDescriptor *)self fetchValue];
  v11 = [(FCMockFetchedValueDescriptor *)self fetchError];
  [(FCMockFetchedValueDescriptor *)self setLastFetchCachePolicy:a3];
  [(FCMockFetchedValueDescriptor *)self setLastFetchQualityOfService:a4];
  v8[2](v8, v12, v11);
}

- (BOOL)isValue:(id)a3 equalToValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FCMockFetchedValueDescriptor *)self valueEqualityTest];
  v9 = (v8)[2](v8, v7, v6);

  return v9;
}

@end