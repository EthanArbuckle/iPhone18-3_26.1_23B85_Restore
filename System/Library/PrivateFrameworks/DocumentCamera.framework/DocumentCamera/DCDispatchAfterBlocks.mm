@interface DCDispatchAfterBlocks
- (DCDispatchAfterBlocks)initWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)dispatchAfter:(double)after withBlock:(id)block;
@end

@implementation DCDispatchAfterBlocks

- (DCDispatchAfterBlocks)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = DCDispatchAfterBlocks;
  v5 = [(DCDispatchAfterBlocks *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DCDispatchAfterBlocks *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = DCDispatchAfterBlocks;
  [(DCDispatchAfterBlocks *)&v3 dealloc];
}

- (void)dispatchAfter:(double)after withBlock:(id)block
{
  v7 = [block copy];
  v6 = _Block_copy(v7);
  [(DCDispatchAfterBlocks *)self performSelector:sel_performBlock_ withObject:v6 afterDelay:after];
}

@end