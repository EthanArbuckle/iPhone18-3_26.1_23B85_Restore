@interface FCMockFetchedValueDescriptor
- (BOOL)isValue:(id)value equalToValue:(id)toValue;
- (FCMockFetchedValueDescriptor)initWithInputManagers:(id)managers;
- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion;
- (void)markDirty;
@end

@implementation FCMockFetchedValueDescriptor

- (FCMockFetchedValueDescriptor)initWithInputManagers:(id)managers
{
  v20 = *MEMORY[0x1E69E9840];
  managersCopy = managers;
  if (!managersCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v6 = [managersCopy copy];
    myInputManagers = v5->_myInputManagers;
    v5->_myInputManagers = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)markDirty
{
  observer = [(FCFetchedValueDescriptor *)self observer];
  [observer fetchedValueDescriptorValueIsDirty:self];
}

- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  willFetchBlock = [(FCMockFetchedValueDescriptor *)self willFetchBlock];

  if (willFetchBlock)
  {
    willFetchBlock2 = [(FCMockFetchedValueDescriptor *)self willFetchBlock];
    willFetchBlock2[2]();
  }

  [(FCMockFetchedValueDescriptor *)self setWillFetchCount:[(FCMockFetchedValueDescriptor *)self willFetchCount]+ 1];
  fetchValue = [(FCMockFetchedValueDescriptor *)self fetchValue];
  fetchError = [(FCMockFetchedValueDescriptor *)self fetchError];
  [(FCMockFetchedValueDescriptor *)self setLastFetchCachePolicy:policy];
  [(FCMockFetchedValueDescriptor *)self setLastFetchQualityOfService:service];
  completionCopy[2](completionCopy, fetchValue, fetchError);
}

- (BOOL)isValue:(id)value equalToValue:(id)toValue
{
  toValueCopy = toValue;
  valueCopy = value;
  valueEqualityTest = [(FCMockFetchedValueDescriptor *)self valueEqualityTest];
  v9 = (valueEqualityTest)[2](valueEqualityTest, valueCopy, toValueCopy);

  return v9;
}

@end