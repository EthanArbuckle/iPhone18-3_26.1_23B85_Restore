@interface FCBalancedCounter
- (FCBalancedCounter)init;
- (void)_bumpCounterPositively:(BOOL)positively;
- (void)notifyWhenCountReachesZeroOnQueue:(id)queue usingBlock:(id)block;
@end

@implementation FCBalancedCounter

- (FCBalancedCounter)init
{
  v7.receiver = self;
  v7.super_class = FCBalancedCounter;
  v2 = [(FCBalancedCounter *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_group_create();
    dispatchGroup = v3->_dispatchGroup;
    v3->_dispatchGroup = v4;
  }

  return v3;
}

- (void)notifyWhenCountReachesZeroOnQueue:(id)queue usingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "queue"];
    *buf = 136315906;
    v12 = "[FCBalancedCounter notifyWhenCountReachesZeroOnQueue:usingBlock:]";
    v13 = 2080;
    v14 = "FCBalancedCounter.m";
    v15 = 1024;
    v16 = 47;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v12 = "[FCBalancedCounter notifyWhenCountReachesZeroOnQueue:usingBlock:]";
    v13 = 2080;
    v14 = "FCBalancedCounter.m";
    v15 = 1024;
    v16 = 48;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  dispatch_group_notify(self->_dispatchGroup, queueCopy, blockCopy);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_bumpCounterPositively:(BOOL)positively
{
  positivelyCopy = positively;
  os_unfair_lock_lock_with_options();
  count = self->_count;
  v6 = count - 1;
  if (positivelyCopy)
  {
    v6 = count + 1;
  }

  self->_count = v6;
  if (count)
  {
    if (!v6)
    {
      dispatch_group_leave(self->_dispatchGroup);
    }
  }

  else
  {
    dispatch_group_enter(self->_dispatchGroup);
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end