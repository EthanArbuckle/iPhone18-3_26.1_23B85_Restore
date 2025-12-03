@interface EFInvocationToken
+ (id)tokenWithInvocationBlock:(id)block;
+ (id)tokenWithLabel:(id)label invocationBlock:(id)block;
- (BOOL)isInvoked;
- (EFInvocationToken)initWithInvocationBlock:(id)block;
- (EFInvocationToken)initWithLabel:(id)label;
- (NSString)description;
- (id)_nts_consumeBlocks;
- (void)addInvocable:(id)invocable;
- (void)addInvocationBlock:(id)block;
- (void)invoke;
- (void)removeAllInvocationBlocks;
@end

@implementation EFInvocationToken

- (BOOL)isInvoked
{
  [(NSLock *)self->_lock lock];
  isInvoked = self->_isInvoked;
  [(NSLock *)self->_lock unlock];
  return isInvoked;
}

- (void)invoke
{
  v15 = *MEMORY[0x1E69E9840];
  p_lock = &self->_lock;
  [(NSLock *)self->_lock lock];
  _nts_consumeBlocks = [(EFInvocationToken *)self _nts_consumeBlocks];
  self->_isInvoked = 1;
  [(NSLock *)*p_lock unlock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = _nts_consumeBlocks;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_nts_consumeBlocks
{
  if (self->_isInvoked)
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v2 = self->_blocks;
    blocks = self->_blocks;
    self->_blocks = 0;
  }

  return v2;
}

- (NSString)description
{
  label = [(EFInvocationToken *)self label];

  if (label)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    label2 = [(EFInvocationToken *)self label];
    v6 = [v4 initWithFormat:@" (%@)", label2];
  }

  else
  {
    v6 = &stru_1F459BF68;
  }

  [(NSLock *)self->_lock lock];
  isInvoked = self->_isInvoked;
  v8 = [(NSMutableArray *)self->_blocks count];
  [(NSLock *)self->_lock unlock];
  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  if (isInvoked)
  {
    v11 = &stru_1F459BF68;
  }

  else
  {
    v11 = @"not ";
  }

  _descriptionString = [objc_opt_class() _descriptionString];
  v13 = [v9 stringWithFormat:@"<%@: %p%@> %@%@ - %lu blocks", v10, self, v6, v11, _descriptionString, v8];

  return v13;
}

+ (id)tokenWithLabel:(id)label invocationBlock:(id)block
{
  labelCopy = label;
  blockCopy = block;
  v8 = [[self alloc] initWithLabel:labelCopy];
  [v8 addInvocationBlock:blockCopy];

  return v8;
}

+ (id)tokenWithInvocationBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithInvocationBlock:blockCopy];

  return v5;
}

- (EFInvocationToken)initWithLabel:(id)label
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = EFInvocationToken;
  v5 = [(EFInvocationToken *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    blocks = v5->_blocks;
    v5->_blocks = v8;

    v10 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v10;
  }

  return v5;
}

- (EFInvocationToken)initWithInvocationBlock:(id)block
{
  blockCopy = block;
  v5 = [(EFInvocationToken *)self initWithLabel:0];
  v6 = v5;
  if (v5)
  {
    [(EFInvocationToken *)v5 addInvocationBlock:blockCopy];
  }

  return v6;
}

- (void)removeAllInvocationBlocks
{
  [(NSLock *)self->_lock lock];
  if (!self->_isInvoked)
  {
    [(NSMutableArray *)self->_blocks removeAllObjects];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)addInvocationBlock:(id)block
{
  aBlock = block;
  if (!aBlock)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFInvocationToken.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [(NSLock *)self->_lock lock];
  isInvoked = self->_isInvoked;
  if (!isInvoked)
  {
    blocks = self->_blocks;
    v7 = _Block_copy(aBlock);
    [(NSMutableArray *)blocks addObject:v7];
  }

  [(NSLock *)self->_lock unlock];
  if (isInvoked)
  {
    aBlock[2]();
  }
}

- (void)addInvocable:(id)invocable
{
  invocableCopy = invocable;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__EFInvocationToken_addInvocable___block_invoke;
  v6[3] = &unk_1E8248580;
  v7 = invocableCopy;
  v5 = invocableCopy;
  [(EFInvocationToken *)self addInvocationBlock:v6];
}

@end