@interface _EDDeleteReconciliationMergeHandler
+ (_EDDeleteReconciliationMergeHandler)allocWithZone:(_NSZone *)a3;
+ (_EDDeleteReconciliationMergeHandler)sharedInstance;
- (unint64_t)handleReconciliationMergeErrorForTable:(id)a3 columnName:(id)a4 statement:(id)a5 journalRowID:(id)a6 protectedRowID:(id)a7 connection:(id)a8 rowsUpdated:(unint64_t *)a9 error:(id *)a10;
- (void)dealloc;
@end

@implementation _EDDeleteReconciliationMergeHandler

+ (_EDDeleteReconciliationMergeHandler)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot directly allocate a %@ object, use +sharedInstance instead.", a1];
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS____EDDeleteReconciliationMergeHandler;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
}

+ (_EDDeleteReconciliationMergeHandler)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___EDDeleteReconciliationMergeHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_predicate != -1)
  {
    dispatch_once(&sharedInstance_predicate, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot deallocate a %@ object.", objc_opt_class()];
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v4);
  }

  v5.receiver = self;
  v5.super_class = _EDDeleteReconciliationMergeHandler;
  [(_EDDeleteReconciliationMergeHandler *)&v5 dealloc];
}

- (unint64_t)handleReconciliationMergeErrorForTable:(id)a3 columnName:(id)a4 statement:(id)a5 journalRowID:(id)a6 protectedRowID:(id)a7 connection:(id)a8 rowsUpdated:(unint64_t *)a9 error:(id *)a10
{
  v13 = a3;
  v14 = a6;
  v15 = a8;
  v16 = [MEMORY[0x1E699B8C8] column:a4];
  v17 = [v16 equalTo:v14];

  v18 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:v13 where:v17];
  if ([v15 executeDeleteStatement:v18 error:a10])
  {
    if (!a9)
    {
      v19 = 0;
      goto LABEL_8;
    }

    v19 = 0;
    v20 = sqlite3_changes([v15 sqlDB]);
    goto LABEL_6;
  }

  v19 = 2;
  if (a9)
  {
    v20 = 0;
LABEL_6:
    *a9 = v20;
  }

LABEL_8:

  return v19;
}

@end