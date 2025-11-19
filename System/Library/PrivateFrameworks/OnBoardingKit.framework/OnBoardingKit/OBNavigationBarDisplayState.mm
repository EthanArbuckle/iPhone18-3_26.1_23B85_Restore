@interface OBNavigationBarDisplayState
+ (id)displayStateForNavigationBar:(id)a3;
- (OBNavigationBarDisplayState)initWithNavigationBar:(id)a3;
- (void)applyState:(id)a3;
@end

@implementation OBNavigationBarDisplayState

- (OBNavigationBarDisplayState)initWithNavigationBar:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OBNavigationBarDisplayState;
  v5 = [(OBNavigationBarDisplayState *)&v9 init];
  if (v5)
  {
    [v4 _titleOpacity];
    v5->_titleOpacity = v6;
    [v4 _backgroundOpacity];
    v5->_backgroundOpacity = v7;
  }

  return v5;
}

- (void)applyState:(id)a3
{
  v4 = a3;
  [(OBNavigationBarDisplayState *)self titleOpacity];
  [v4 _setTitleOpacity:?];
  [(OBNavigationBarDisplayState *)self backgroundOpacity];
  [v4 _setBackgroundOpacity:?];
}

+ (id)displayStateForNavigationBar:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithNavigationBar:v4];

  return v5;
}

@end