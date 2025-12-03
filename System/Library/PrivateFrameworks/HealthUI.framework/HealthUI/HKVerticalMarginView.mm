@interface HKVerticalMarginView
- (HKVerticalMarginView)initWithSubview:(id)subview offsetOptions:(unint64_t)options;
- (double)_bottomOffsetWithController:(id)controller;
- (double)_findTabBarHeightWithController:(id)controller;
- (double)_topOffsetWithController:(id)controller;
- (id)_findViewController;
- (void)dealloc;
- (void)keyboardWasShown:(id)shown;
- (void)layoutSubviews;
@end

@implementation HKVerticalMarginView

- (HKVerticalMarginView)initWithSubview:(id)subview offsetOptions:(unint64_t)options
{
  subviewCopy = subview;
  v14.receiver = self;
  v14.super_class = HKVerticalMarginView;
  v7 = [(HKVerticalMarginView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_offsetOptions = options;
    marginDelegate = v7->_marginDelegate;
    v7->_marginDelegate = 0;

    v8->_currentKeyboardHeight = 0.0;
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(HKVerticalMarginView *)v8 setBackgroundColor:secondarySystemBackgroundColor];

    [(HKVerticalMarginView *)v8 addSubview:subviewCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_keyboardWasShown_ name:*MEMORY[0x1E69DDF78] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel_keyboardWillBeHidden_ name:*MEMORY[0x1E69DE078] object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];

  v5.receiver = self;
  v5.super_class = HKVerticalMarginView;
  [(HKVerticalMarginView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = HKVerticalMarginView;
  [(HKVerticalMarginView *)&v17 layoutSubviews];
  subviews = [(HKVerticalMarginView *)self subviews];
  v4 = [subviews objectAtIndex:0];

  [(HKVerticalMarginView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _findViewController = [(HKVerticalMarginView *)self _findViewController];
  [(HKVerticalMarginView *)self _topOffsetWithController:_findViewController];
  v15 = v14;
  [(HKVerticalMarginView *)self _bottomOffsetWithController:_findViewController];
  [v4 setFrame:{v6, v8 + v15, v10, v12 - (v15 + v16)}];
}

- (void)keyboardWasShown:(id)shown
{
  userInfo = [shown userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  v6 = v5;

  self->_currentKeyboardHeight = v6;
  [(HKVerticalMarginView *)self setNeedsLayout];
}

- (double)_topOffsetWithController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  offsetOptions = self->_offsetOptions;
  if (offsetOptions)
  {
    view = [controllerCopy view];
    window = [view window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
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

  navigationController = [v5 navigationController];
  v15 = navigationController;
  if (navigationController && ([navigationController isNavigationBarHidden] & 1) == 0)
  {
    navigationBar = [v15 navigationBar];
    [navigationBar frame];
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

- (double)_bottomOffsetWithController:(id)controller
{
  controllerCopy = controller;
  offsetOptions = self->_offsetOptions;
  if ((offsetOptions & 8) == 0 || (currentKeyboardHeight = self->_currentKeyboardHeight, currentKeyboardHeight <= 0.0))
  {
    currentKeyboardHeight = 0.0;
    if ((offsetOptions & 4) != 0)
    {
      [(HKVerticalMarginView *)self _findTabBarHeightWithController:controllerCopy];
      currentKeyboardHeight = v7 + 0.0;
    }
  }

  return currentKeyboardHeight;
}

- (double)_findTabBarHeightWithController:(id)controller
{
  tabBarController = [controller tabBarController];
  v4 = tabBarController;
  if (tabBarController)
  {
    tabBar = [tabBarController tabBar];
    v6 = 0.0;
    if (([tabBar isHidden] & 1) == 0)
    {
      [tabBar frame];
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
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [(HKVerticalMarginView *)selfCopy nextResponder];

      selfCopy = nextResponder;
      if (!nextResponder)
      {
        goto LABEL_6;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_6:

  return selfCopy;
}

@end