@interface ICDispatchAfterBlocks
- (ICDispatchAfterBlocks)initWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)dispatchAfter:(double)after withBlock:(id)block;
@end

@implementation ICDispatchAfterBlocks

- (ICDispatchAfterBlocks)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = ICDispatchAfterBlocks;
  v5 = [(ICDispatchAfterBlocks *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICDispatchAfterBlocks *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = ICDispatchAfterBlocks;
  [(ICDispatchAfterBlocks *)&v3 dealloc];
}

- (void)dispatchAfter:(double)after withBlock:(id)block
{
  v7 = [block copy];
  v6 = _Block_copy(v7);
  [(ICDispatchAfterBlocks *)self performSelector:sel_performBlock_ withObject:v6 afterDelay:after];
}

@end