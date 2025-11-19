@interface _HKOutsideTapCallback
- (UIView)view;
- (_HKOutsideTapCallback)initWithView:(id)a3 outsideTapBlock:(id)a4;
@end

@implementation _HKOutsideTapCallback

- (_HKOutsideTapCallback)initWithView:(id)a3 outsideTapBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _HKOutsideTapCallback;
  v8 = [(_HKOutsideTapCallback *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, v6);
    v10 = _Block_copy(v7);
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