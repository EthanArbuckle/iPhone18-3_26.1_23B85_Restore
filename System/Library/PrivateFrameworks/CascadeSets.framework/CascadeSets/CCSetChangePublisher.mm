@interface CCSetChangePublisher
+ (id)publisherForSet:(id)set useCase:(id)case;
- (BOOL)isBookmarkUpToDate:(id)date;
- (CCSetChangePublisher)init;
- (CCSetChangePublisher)initWithEnumerator:(id)enumerator;
- (CCSetChangePublisher)initWithSet:(id)set readAccess:(id)access;
- (id)nextEvent;
- (id)startWithSubscriber:(id)subscriber;
- (unint64_t)localItemInstanceCount;
- (unint64_t)sharedItemCount;
- (void)localItemInstanceCount;
- (void)reset;
- (void)sharedItemCount;
@end

@implementation CCSetChangePublisher

- (id)nextEvent
{
  result = [(CCSetChangeEnumerator *)self->_enumerator next];
  if (!result)
  {
    self->_finished = 1;
  }

  return result;
}

- (void)reset
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to reset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (id)publisherForSet:(id)set useCase:(id)case
{
  caseCopy = case;
  setCopy = set;
  v7 = objc_alloc(objc_opt_class());
  v8 = [CCDataResourceReadAccess defaultInstanceWithUseCase:caseCopy];

  v9 = [v7 initWithSet:setCopy readAccess:v8];

  return v9;
}

- (CCSetChangePublisher)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSetChangePublisher)initWithSet:(id)set readAccess:(id)access
{
  accessCopy = access;
  setCopy = set;
  v8 = [[CCDatabaseSetChangeEnumerator alloc] initWithSet:setCopy readAccess:accessCopy];

  v9 = [(CCSetChangePublisher *)self initWithEnumerator:v8];
  return v9;
}

- (CCSetChangePublisher)initWithEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v9.receiver = self;
  v9.super_class = CCSetChangePublisher;
  v6 = [(CCSetChangePublisher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerator, enumerator);
  }

  return v7;
}

- (unint64_t)sharedItemCount
{
  enumerator = self->_enumerator;
  v8 = 0;
  v3 = [(CCSetChangeEnumerator *)enumerator sharedItemCount:&v8];
  v4 = v8;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSetChangePublisher sharedItemCount];
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)localItemInstanceCount
{
  enumerator = self->_enumerator;
  v8 = 0;
  v3 = [(CCSetChangeEnumerator *)enumerator itemInstanceCount:&v8];
  v4 = v8;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSetChangePublisher localItemInstanceCount];
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (BOOL)isBookmarkUpToDate:(id)date
{
  dateCopy = date;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [dateCopy value];

    dateCopy = value;
  }

  v6 = [(CCSetChangeEnumerator *)self->_enumerator isBookmarkUpToDate:dateCopy];

  return v6;
}

- (id)startWithSubscriber:(id)subscriber
{
  enumerator = self->_enumerator;
  enumeratorBookmark = self->_enumeratorBookmark;
  v10 = 0;
  v5 = [(CCSetChangeEnumerator *)enumerator beginWithBookmark:enumeratorBookmark error:&v10];
  v6 = v10;
  v7 = 0;
  if ((v5 & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CCSetChangePublisher startWithSubscriber:];
    }

    v7 = v6;
  }

  return v7;
}

- (void)sharedItemCount
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to get sharedItemCount: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)localItemInstanceCount
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to get localItemInstanceCount: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)startWithSubscriber:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to begin enumeration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end