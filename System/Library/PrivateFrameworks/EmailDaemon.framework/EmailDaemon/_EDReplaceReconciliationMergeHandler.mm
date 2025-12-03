@interface _EDReplaceReconciliationMergeHandler
+ (_EDReplaceReconciliationMergeHandler)allocWithZone:(_NSZone *)zone;
+ (_EDReplaceReconciliationMergeHandler)sharedInstance;
- (unint64_t)handleReconciliationMergeErrorForTable:(id)table columnName:(id)name statement:(id)statement journalRowID:(id)d protectedRowID:(id)iD connection:(id)connection rowsUpdated:(unint64_t *)updated error:(id *)self0;
- (void)dealloc;
@end

@implementation _EDReplaceReconciliationMergeHandler

+ (_EDReplaceReconciliationMergeHandler)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot directly allocate a %@ object, use +sharedInstance instead.", self];
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS____EDReplaceReconciliationMergeHandler;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
}

+ (_EDReplaceReconciliationMergeHandler)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___EDReplaceReconciliationMergeHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (unint64_t)handleReconciliationMergeErrorForTable:(id)table columnName:(id)name statement:(id)statement journalRowID:(id)d protectedRowID:(id)iD connection:(id)connection rowsUpdated:(unint64_t *)updated error:(id *)self0
{
  tableCopy = table;
  statementCopy = statement;
  iDCopy = iD;
  connectionCopy = connection;
  v18 = [MEMORY[0x1E699B8C8] column:name];
  v19 = [v18 equalTo:iDCopy];

  v20 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:tableCopy where:v19];
  if ([connectionCopy executeDeleteStatement:v20 error:error] && objc_msgSend(connectionCopy, "executeUpdateStatement:error:", statementCopy, error))
  {
    if (!updated)
    {
      v21 = 0;
      goto LABEL_8;
    }

    v21 = 0;
    v22 = sqlite3_changes([connectionCopy sqlDB]);
    goto LABEL_7;
  }

  v21 = 2;
  if (updated)
  {
    v22 = 0;
LABEL_7:
    *updated = v22;
  }

LABEL_8:

  return v21;
}

@end