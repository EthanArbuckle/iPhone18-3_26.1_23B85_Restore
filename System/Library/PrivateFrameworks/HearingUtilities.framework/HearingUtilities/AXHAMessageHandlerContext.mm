@interface AXHAMessageHandlerContext
- (AXHAMessageHandlerContext)initWithTarget:(id)target block:(id)block;
@end

@implementation AXHAMessageHandlerContext

- (AXHAMessageHandlerContext)initWithTarget:(id)target block:(id)block
{
  targetCopy = target;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = AXHAMessageHandlerContext;
  v9 = [(AXHAMessageHandlerContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (targetCopy && blockCopy)
    {
      objc_storeStrong(&v9->_target, target);
      v11 = _Block_copy(blockCopy);
      block = v10->_block;
      v10->_block = v11;
    }

    else
    {
      block = v9;
      v10 = 0;
    }
  }

  return v10;
}

@end