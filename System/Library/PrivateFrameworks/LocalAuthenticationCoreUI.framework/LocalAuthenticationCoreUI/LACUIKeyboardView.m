@interface LACUIKeyboardView
- (CGSize)intrinsicContentSize;
- (LACUIKeyboardView)initWithKeyboard:(id)a3;
- (void)_setup;
@end

@implementation LACUIKeyboardView

- (LACUIKeyboardView)initWithKeyboard:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LACUIKeyboardView;
  v5 = [(LACUIKeyboardView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_keyboard, v4);
    [(LACUIKeyboardView *)v6 _setup];
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboard);
  [WeakRetained intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_setup
{
  [(LACUIKeyboardView *)self setUserInteractionEnabled:1];
  WeakRetained = objc_loadWeakRetained(&self->_keyboard);
  [(LACUIKeyboardView *)self addSubview:WeakRetained];
}

@end