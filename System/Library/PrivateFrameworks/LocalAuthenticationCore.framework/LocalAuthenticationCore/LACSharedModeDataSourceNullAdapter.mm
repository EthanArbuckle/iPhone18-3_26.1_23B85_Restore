@interface LACSharedModeDataSourceNullAdapter
- (void)fetchSharedModeWithOptions:(id)a3 completion:(id)a4;
@end

@implementation LACSharedModeDataSourceNullAdapter

- (void)fetchSharedModeWithOptions:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = LACLogSharedMode();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", &v10, 0xCu);
  }

  v7 = +[LACSharedMode defaultSharedMode];
  v8 = LACLogSharedMode();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ feature not supported in this platform %{public}@", &v10, 0x16u);
  }

  v5[2](v5, v7);
  v9 = *MEMORY[0x1E69E9840];
}

@end