@interface PKAssertion
+ (void)acquireAssertionOfType:(unint64_t)a3 withReason:(id)a4 completion:(id)a5;
+ (void)hasValidAssertionOfType:(unint64_t)a3 completion:(id)a4;
+ (void)isAssertionValid:(id)a3 completion:(id)a4;
- (PKAssertion)initWithType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)markAsInvalidatedAndNotify;
- (void)setInvalidateWhenBackgrounded:(BOOL)a3;
@end

@implementation PKAssertion

+ (void)acquireAssertionOfType:(unint64_t)a3 withReason:(id)a4 completion:(id)a5
{
  v7 = a5;
  if (v7)
  {
    v8 = a4;
    v9 = +[PKAssertionCoordinator sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKAssertion_acquireAssertionOfType_withReason_completion___block_invoke;
    v10[3] = &unk_1E79DEE80;
    v11 = v7;
    [v9 acquireAssertionOfType:a3 withReason:v8 completion:v10];
  }
}

+ (void)isAssertionValid:(id)a3 completion:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v5)
  {
    if (v8 && ([v8 identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = +[PKAssertionCoordinator sharedInstance];
      [v7 isAssertionValid:v8 completion:v5];
    }

    else
    {
      v5[2](v5, 0);
    }
  }
}

+ (void)hasValidAssertionOfType:(unint64_t)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = +[PKAssertionCoordinator sharedInstance];
    [v6 hasValidAssertionOfType:a3 completion:v5];
  }
}

- (PKAssertion)initWithType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = PKAssertion;
  v10 = [(PKAssertion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    reason = v11->_reason;
    v11->_reason = v14;

    v11->_invalidateWhenBackgrounded = 1;
    v11->_invalidationLock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (void)dealloc
{
  [(PKAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKAssertion;
  [(PKAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_invalidationLock);
  v5 = _Block_copy(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v4 = +[PKAssertionCoordinator sharedInstance];
  [v4 invalidateAssertion:self completion:v5];

  os_unfair_lock_unlock(&self->_invalidationLock);
}

- (void)markAsInvalidatedAndNotify
{
  os_unfair_lock_lock(&self->_invalidationLock);
  v3 = _Block_copy(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  os_unfair_lock_unlock(&self->_invalidationLock);
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__PKAssertion_markAsInvalidatedAndNotify__block_invoke;
    v6[3] = &unk_1E79C4428;
    v7 = v3;
    v5 = v6;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_16;
    block[3] = &unk_1E79C4428;
    v9 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)setInvalidateWhenBackgrounded:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_invalidationLock);
  if (self->_invalidateWhenBackgrounded != v3)
  {
    self->_invalidateWhenBackgrounded = v3;
    v5 = +[PKAssertionCoordinator sharedInstance];
    [v5 assertion:self shouldInvalidateWhenBackgrounded:v3];
  }

  os_unfair_lock_unlock(&self->_invalidationLock);
}

- (id)description
{
  type = self->_type;
  if (type > 9)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_1E79DEEA0[type];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Assertion Type: %@, Identifier: %@, Reason: %@", v3, self->_identifier, self->_reason];
}

@end