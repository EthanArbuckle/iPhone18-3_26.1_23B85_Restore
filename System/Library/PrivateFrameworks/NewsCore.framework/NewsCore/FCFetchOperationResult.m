@interface FCFetchOperationResult
+ (FCFetchOperationResult)resultWithStatus:(unint64_t)a3 fetchedObject:(id)a4 error:(id)a5;
- (BOOL)anyMissingObjects;
- (FCFetchOperationResult)initWithStatus:(unint64_t)a3 fetchedObject:(id)a4 fetchResult:(unint64_t)a5 error:(id)a6;
@end

@implementation FCFetchOperationResult

- (BOOL)anyMissingObjects
{
  v2 = [(FCFetchOperationResult *)self missingObjectDescriptions];
  v3 = [v2 count] != 0;

  return v3;
}

- (FCFetchOperationResult)initWithStatus:(unint64_t)a3 fetchedObject:(id)a4 fetchResult:(unint64_t)a5 error:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  if (a3 && v11)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetchedObject must be nil if the operation wasn't successful"];
    *buf = 136315906;
    v21 = "[FCFetchOperationResult initWithStatus:fetchedObject:fetchResult:error:]";
    v22 = 2080;
    v23 = "FCFetchOperation.m";
    v24 = 1024;
    v25 = 173;
    v26 = 2114;
    v27 = v13;
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_12;
  }

  if (!a3 && !v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetchedObject must not be nil if the operation was successful"];
    *buf = 136315906;
    v21 = "[FCFetchOperationResult initWithStatus:fetchedObject:fetchResult:error:]";
    v22 = 2080;
    v23 = "FCFetchOperation.m";
    v24 = 1024;
    v25 = 174;
    v26 = 2114;
    v27 = v13;
    v14 = MEMORY[0x1E69E9C10];
LABEL_12:
    _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  v19.receiver = self;
  v19.super_class = FCFetchOperationResult;
  v15 = [(FCFetchOperationResult *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_status = a3;
    objc_storeStrong(&v15->_fetchedObject, a4);
    v16->_fetchResult = a5;
    objc_storeStrong(&v16->_error, a6);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (FCFetchOperationResult)resultWithStatus:(unint64_t)a3 fetchedObject:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[FCFetchOperationResult alloc] initWithStatus:a3 fetchedObject:v8 fetchResult:1 error:v7];

  return v9;
}

@end