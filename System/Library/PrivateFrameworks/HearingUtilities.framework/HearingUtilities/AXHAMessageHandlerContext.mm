@interface AXHAMessageHandlerContext
- (AXHAMessageHandlerContext)initWithTarget:(id)a3 block:(id)a4;
@end

@implementation AXHAMessageHandlerContext

- (AXHAMessageHandlerContext)initWithTarget:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AXHAMessageHandlerContext;
  v9 = [(AXHAMessageHandlerContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (v7 && v8)
    {
      objc_storeStrong(&v9->_target, a3);
      v11 = _Block_copy(v8);
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