@interface LACACMPoolsInfo
- (LACACMPoolsInfo)init;
- (id)description;
- (void)_update;
@end

@implementation LACACMPoolsInfo

- (LACACMPoolsInfo)init
{
  v5.receiver = self;
  v5.super_class = LACACMPoolsInfo;
  v2 = [(LACACMPoolsInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LACACMPoolsInfo *)v2 _update];
  }

  return v3;
}

- (void)_update
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Failed to get pool info from ACM: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

__n128 __26__LACACMPoolsInfo__update__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    if (a3 >= 0x1A)
    {
      v3 = *(*(a1 + 32) + 8);
      result = *a2;
      *(v3 + 42) = *(a2 + 10);
      *(v3 + 32) = result;
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ disposable: %@, non-disposable: %@>", v5, self->_disposablePool, self->_nonDisposablePool];;

  return v6;
}

@end