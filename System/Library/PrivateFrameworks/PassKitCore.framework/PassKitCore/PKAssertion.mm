@interface PKAssertion
+ (void)acquireAssertionOfType:(unint64_t)type withReason:(id)reason completion:(id)completion;
+ (void)hasValidAssertionOfType:(unint64_t)type completion:(id)completion;
+ (void)isAssertionValid:(id)valid completion:(id)completion;
- (PKAssertion)initWithType:(unint64_t)type identifier:(id)identifier reason:(id)reason;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)markAsInvalidatedAndNotify;
- (void)setInvalidateWhenBackgrounded:(BOOL)backgrounded;
@end

@implementation PKAssertion

+ (void)acquireAssertionOfType:(unint64_t)type withReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    reasonCopy = reason;
    v9 = +[PKAssertionCoordinator sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKAssertion_acquireAssertionOfType_withReason_completion___block_invoke;
    v10[3] = &unk_1E79DEE80;
    v11 = completionCopy;
    [v9 acquireAssertionOfType:type withReason:reasonCopy completion:v10];
  }
}

+ (void)isAssertionValid:(id)valid completion:(id)completion
{
  validCopy = valid;
  completionCopy = completion;
  if (completionCopy)
  {
    if (validCopy && ([validCopy identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = +[PKAssertionCoordinator sharedInstance];
      [v7 isAssertionValid:validCopy completion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

+ (void)hasValidAssertionOfType:(unint64_t)type completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = +[PKAssertionCoordinator sharedInstance];
    [v6 hasValidAssertionOfType:type completion:completionCopy];
  }
}

- (PKAssertion)initWithType:(unint64_t)type identifier:(id)identifier reason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = PKAssertion;
  v10 = [(PKAssertion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [reasonCopy copy];
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

- (void)setInvalidateWhenBackgrounded:(BOOL)backgrounded
{
  backgroundedCopy = backgrounded;
  os_unfair_lock_lock(&self->_invalidationLock);
  if (self->_invalidateWhenBackgrounded != backgroundedCopy)
  {
    self->_invalidateWhenBackgrounded = backgroundedCopy;
    v5 = +[PKAssertionCoordinator sharedInstance];
    [v5 assertion:self shouldInvalidateWhenBackgrounded:backgroundedCopy];
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