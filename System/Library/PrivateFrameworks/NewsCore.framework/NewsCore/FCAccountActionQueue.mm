@interface FCAccountActionQueue
- (BOOL)enqueueActionWithType:(int64_t)a3;
- (BOOL)popActionTypesUpToCount:(unint64_t)a3 setLocalDataHintIfNeeded:(BOOL)a4;
- (BOOL)readLocalDataHint;
- (FCAccountActionQueue)init;
- (FCAccountActionQueue)initWithFileURL:(id)a3;
- (id)peekAtActionTypes;
@end

@implementation FCAccountActionQueue

- (id)peekAtActionTypes
{
  v2 = [(FCAccountActionQueue *)self persistentDictionary];
  v3 = [v2 read];
  v4 = [v3 fc_actionTypes];

  return v4;
}

- (FCAccountActionQueue)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCAccountActionQueue init]";
    v10 = 2080;
    v11 = "FCAccountActionQueue.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCAccountActionQueue init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAccountActionQueue)initWithFileURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FCAccountActionQueue;
  v5 = [(FCAccountActionQueue *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [[FCPersistentDictionary alloc] initWithFileURL:v4 allowedClasses:v9];
    persistentDictionary = v5->_persistentDictionary;
    v5->_persistentDictionary = v10;
  }

  return v5;
}

- (BOOL)readLocalDataHint
{
  v2 = [(FCAccountActionQueue *)self persistentDictionary];
  v3 = [v2 read];
  v4 = [v3 fc_localDataHint];

  return v4;
}

- (BOOL)enqueueActionWithType:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v4 = [(FCAccountActionQueue *)self persistentDictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FCAccountActionQueue_enqueueActionWithType___block_invoke;
  v6[3] = &unk_1E7C3A430;
  v6[4] = &v7;
  v6[5] = a3;
  LOBYTE(a3) = [v4 writeWithAccessor:v6];

  LOBYTE(a3) = v8[3] & a3;
  _Block_object_dispose(&v7, 8);
  return a3 & 1;
}

uint64_t __46__FCAccountActionQueue_enqueueActionWithType___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 fc_enqueueActionType:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)popActionTypesUpToCount:(unint64_t)a3 setLocalDataHintIfNeeded:(BOOL)a4
{
  v6 = [(FCAccountActionQueue *)self persistentDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__FCAccountActionQueue_popActionTypesUpToCount_setLocalDataHintIfNeeded___block_invoke;
  v9[3] = &__block_descriptor_41_e29_v16__0__NSMutableDictionary_8l;
  v9[4] = a3;
  v10 = a4;
  v7 = [v6 writeWithAccessor:v9];

  return v7;
}

void __73__FCAccountActionQueue_popActionTypesUpToCount_setLocalDataHintIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_popActionTypesUpToCount:v3];
  [v4 fc_setLocalDataHintIfNeeded:*(a1 + 40)];
}

@end