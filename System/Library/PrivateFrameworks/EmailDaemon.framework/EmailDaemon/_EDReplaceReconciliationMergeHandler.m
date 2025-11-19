@interface _EDReplaceReconciliationMergeHandler
+ (_EDReplaceReconciliationMergeHandler)allocWithZone:(_NSZone *)a3;
+ (_EDReplaceReconciliationMergeHandler)sharedInstance;
- (unint64_t)handleReconciliationMergeErrorForTable:(id)a3 columnName:(id)a4 statement:(id)a5 journalRowID:(id)a6 protectedRowID:(id)a7 connection:(id)a8 rowsUpdated:(unint64_t *)a9 error:(id *)a10;
- (void)dealloc;
@end

@implementation _EDReplaceReconciliationMergeHandler

+ (_EDReplaceReconciliationMergeHandler)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot directly allocate a %@ object, use +sharedInstance instead.", a1];
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS____EDReplaceReconciliationMergeHandler;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
}

+ (_EDReplaceReconciliationMergeHandler)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___EDReplaceReconciliationMergeHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_predicate_322 != -1)
  {
    dispatch_once(&sharedInstance_predicate_322, block);
  }

  v2 = sharedInstance_sharedInstance_323;

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
  v5.super_class = _EDReplaceReconciliationMergeHandler;
  [(_EDReplaceReconciliationMergeHandler *)&v5 dealloc];
}

- (unint64_t)handleReconciliationMergeErrorForTable:(id)a3 columnName:(id)a4 statement:(id)a5 journalRowID:(id)a6 protectedRowID:(id)a7 connection:(id)a8 rowsUpdated:(unint64_t *)a9 error:(id *)a10
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [MEMORY[0x1E699B8C8] column:a4];
  v19 = [v18 equalTo:v16];

  v20 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:v14 where:v19];
  if ([v17 executeDeleteStatement:v20 error:a10] && objc_msgSend(v17, "executeUpdateStatement:error:", v15, a10))
  {
    if (!a9)
    {
      v21 = 0;
      goto LABEL_8;
    }

    v21 = 0;
    v22 = sqlite3_changes([v17 sqlDB]);
    goto LABEL_7;
  }

  v21 = 2;
  if (a9)
  {
    v22 = 0;
LABEL_7:
    *a9 = v22;
  }

LABEL_8:

  return v21;
}

@end