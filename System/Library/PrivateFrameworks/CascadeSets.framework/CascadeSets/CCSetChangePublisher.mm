@interface CCSetChangePublisher
+ (id)publisherForSet:(id)a3 useCase:(id)a4;
- (BOOL)isBookmarkUpToDate:(id)a3;
- (CCSetChangePublisher)init;
- (CCSetChangePublisher)initWithEnumerator:(id)a3;
- (CCSetChangePublisher)initWithSet:(id)a3 readAccess:(id)a4;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
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

+ (id)publisherForSet:(id)a3 useCase:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v8 = [CCDataResourceReadAccess defaultInstanceWithUseCase:v5];

  v9 = [v7 initWithSet:v6 readAccess:v8];

  return v9;
}

- (CCSetChangePublisher)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSetChangePublisher)initWithSet:(id)a3 readAccess:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CCDatabaseSetChangeEnumerator alloc] initWithSet:v7 readAccess:v6];

  v9 = [(CCSetChangePublisher *)self initWithEnumerator:v8];
  return v9;
}

- (CCSetChangePublisher)initWithEnumerator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCSetChangePublisher;
  v6 = [(CCSetChangePublisher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerator, a3);
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
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSetChangePublisher sharedItemCount];
    }

    v5 = 0;
  }

  return v5;
}

- (unint64_t)localItemInstanceCount
{
  enumerator = self->_enumerator;
  v8 = 0;
  v3 = [(CCSetChangeEnumerator *)enumerator itemInstanceCount:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSetChangePublisher localItemInstanceCount];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isBookmarkUpToDate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 value];

    v4 = v5;
  }

  v6 = [(CCSetChangeEnumerator *)self->_enumerator isBookmarkUpToDate:v4];

  return v6;
}

- (id)startWithSubscriber:(id)a3
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