@interface HKVerticalMarginView
- (HKVerticalMarginView)initWithSubview:(id)a3 offsetOptions:(unint64_t)a4;
- (double)_bottomOffsetWithController:(id)a3;
- (double)_findTabBarHeightWithController:(id)a3;
- (double)_topOffsetWithController:(id)a3;
- (id)_findViewController;
- (void)dealloc;
- (void)keyboardWasShown:(id)a3;
- (void)layoutSubviews;
@end

@implementation HKVerticalMarginView

- (HKVerticalMarginView)initWithSubview:(id)a3 offsetOptions:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HKVerticalMarginView;
  v7 = [(HKVerticalMarginView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_offsetOptions = a4;
    marginDelegate = v7->_marginDelegate;
    v7->_marginDelegate = 0;

    v8->_currentKeyboardHeight = 0.0;
    v10 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(HKVerticalMarginView *)v8 setBackgroundColor:v10];

    [(HKVerticalMarginView *)v8 addSubview:v6];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v8 selector:sel_keyboardWasShown_ name:*MEMORY[0x1E69DDF78] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v8 selector:sel_keyboardWillBeHidden_ name:*MEMORY[0x1E69DE078] object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];

  v5.receiver = self;
  v5.super_class = HKVerticalMarginView;
  [(HKVerticalMarginView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = HKVerticalMarginView;
  [(HKVerticalMarginView *)&v17 layoutSubviews];
  v3 = [(HKVerticalMarginView *)self subviews];
  v4 = [v3 objectAtIndex:0];

  [(HKVerticalMarginView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(HKVerticalMarginView *)self _findViewController];
  [(HKVerticalMarginView *)self _topOffsetWithController:v13];
  v15 = v14;
  [(HKVerticalMarginView *)self _bottomOffsetWithController:v13];
  [v4 setFrame:{v6, v8 + v15, v10, v12 - (v15 + v16)}];
}

- (void)keyboardWasShown:(id)a3
{
  v7 = [a3 userInfo];
  v4 = [v7 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  v6 = v5;

  self->_currentKeyboardHeight = v6;
  [(HKVerticalMarginView *)self setNeedsLayout];
}

- (double)_topOffsetWithController:(id)a3
{
  v4 = a3;
  v5 = v4;
  offsetOptions = self->_offsetOptions;
  if (offsetOptions)
  {
    v8 = [v4 view];
    v9 = [v8 window];
    v10 = [v9 windowScene];
    v11 = [v10 statusBarManager];
    [v11 statusBarFrame];
    v13 = v12;

    v7 = v13 + 0.0;
    if ((self->_offsetOptions & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0.0;
    if ((offsetOptions & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v14 = [v5 navigationController];
  v15 = v14;
  if (v14 && ([v14 isNavigationBarHidden] & 1) == 0)
  {
    v16 = [v15 navigationBar];
    [v16 frame];
    v7 = v7 + v17;
  }

LABEL_9:
  marginDelegate = self->_marginDelegate;
  if (marginDelegate)
  {
    [(HKVerticalMarginDelegate *)marginDelegate verticalMarginTopOffset];
    v7 = v7 + v19;
  }

  return v7;
}

- (double)_bottomOffsetWithController:(id)a3
{
  v4 = a3;
  offsetOptions = self->_offsetOptions;
  if ((offsetOptions & 8) == 0 || (currentKeyboardHeight = self->_currentKeyboardHeight, currentKeyboardHeight <= 0.0))
  {
    currentKeyboardHeight = 0.0;
    if ((offsetOptions & 4) != 0)
    {
      [(HKVerticalMarginView *)self _findTabBarHeightWithController:v4];
      currentKeyboardHeight = v7 + 0.0;
    }
  }

  return currentKeyboardHeight;
}

- (double)_findTabBarHeightWithController:(id)a3
{
  v3 = [a3 tabBarController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 tabBar];
    v6 = 0.0;
    if (([v5 isHidden] & 1) == 0)
    {
      [v5 frame];
      v6 = v7;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)_findViewController
{
  v2 = self;
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [(HKVerticalMarginView *)v2 nextResponder];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
}

@end