@interface _HKOutsideTapCallback
- (UIView)view;
- (_HKOutsideTapCallback)initWithView:(id)view outsideTapBlock:(id)block;
@end

@implementation _HKOutsideTapCallback

- (_HKOutsideTapCallback)initWithView:(id)view outsideTapBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = _HKOutsideTapCallback;
  v8 = [(_HKOutsideTapCallback *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, viewCopy);
    v10 = _Block_copy(blockCopy);
    outsideTapBlock = v9->_outsideTapBlock;
    v9->_outsideTapBlock = v10;
  }

  return v9;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end