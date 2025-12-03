@interface UIBarButtonItem(IC)
+ (id)ic_itemWithFixedWidth:()IC;
- (id)ic_view;
- (void)ic_setTitleTextAttributesForAllStates:()IC;
- (void)setIc_titleAndAccessibilityLabel:()IC;
@end

@implementation UIBarButtonItem(IC)

- (id)ic_view
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[self respondsToSelector:@selector(view)]" functionName:"-[UIBarButtonItem(IC) ic_view]" simulateCrash:1 showAlert:0 format:@"UIBarButtonItem expected to respond to selector: view"];
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [self performSelector:sel_view];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)ic_setTitleTextAttributesForAllStates:()IC
{
  v4 = a3;
  [self setTitleTextAttributes:v4 forState:0];
  [self setTitleTextAttributes:v4 forState:2];
  [self setTitleTextAttributes:v4 forState:1];
  [self setTitleTextAttributes:v4 forState:8];
}

- (void)setIc_titleAndAccessibilityLabel:()IC
{
  [self setTitle:?];
  accessibilityLabel = [self accessibilityLabel];
  [self setAccessibilityLabel:accessibilityLabel];
}

+ (id)ic_itemWithFixedWidth:()IC
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v2 setWidth:self];

  return v2;
}

@end