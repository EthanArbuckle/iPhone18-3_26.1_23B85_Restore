@interface CLKUITimeView
- (CGAffineTransform)aodTransform;
- (CLKUITimeView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (CLKUITimeViewDelegate)delegate;
- (UIEdgeInsets)paddingInsets;
- (void)dealloc;
- (void)setAodTransform:(CGAffineTransform *)a3;
@end

@implementation CLKUITimeView

- (CLKUITimeView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CLKUITimeView;
  v9 = [(CLKUITimeView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_clockTimer, a4);
    v11 = objc_opt_self();
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [(CLKUITimeView *)v10 registerForTraitChanges:v12 withAction:sel_traitCollectionDidChange_previousTraitCollection_];
    traitChangeRegistration = v10->_traitChangeRegistration;
    v10->_traitChangeRegistration = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(CLKUITimeView *)self unregisterForTraitChanges:self->_traitChangeRegistration];
  v3.receiver = self;
  v3.super_class = CLKUITimeView;
  [(CLKUITimeView *)&v3 dealloc];
}

- (CLKUITimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGAffineTransform)aodTransform
{
  v3 = *&self[11].a;
  *&retstr->a = *&self[10].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].c;
  return self;
}

- (void)setAodTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_aodTransform.a = *&a3->a;
  *&self->_aodTransform.c = v4;
  *&self->_aodTransform.tx = v3;
}

- (UIEdgeInsets)paddingInsets
{
  top = self->_paddingInsets.top;
  left = self->_paddingInsets.left;
  bottom = self->_paddingInsets.bottom;
  right = self->_paddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end