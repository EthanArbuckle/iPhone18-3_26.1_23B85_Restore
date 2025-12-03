@interface OBNavigationBarDisplayState
+ (id)displayStateForNavigationBar:(id)bar;
- (OBNavigationBarDisplayState)initWithNavigationBar:(id)bar;
- (void)applyState:(id)state;
@end

@implementation OBNavigationBarDisplayState

- (OBNavigationBarDisplayState)initWithNavigationBar:(id)bar
{
  barCopy = bar;
  v9.receiver = self;
  v9.super_class = OBNavigationBarDisplayState;
  v5 = [(OBNavigationBarDisplayState *)&v9 init];
  if (v5)
  {
    [barCopy _titleOpacity];
    v5->_titleOpacity = v6;
    [barCopy _backgroundOpacity];
    v5->_backgroundOpacity = v7;
  }

  return v5;
}

- (void)applyState:(id)state
{
  stateCopy = state;
  [(OBNavigationBarDisplayState *)self titleOpacity];
  [stateCopy _setTitleOpacity:?];
  [(OBNavigationBarDisplayState *)self backgroundOpacity];
  [stateCopy _setBackgroundOpacity:?];
}

+ (id)displayStateForNavigationBar:(id)bar
{
  barCopy = bar;
  v5 = [[self alloc] initWithNavigationBar:barCopy];

  return v5;
}

@end