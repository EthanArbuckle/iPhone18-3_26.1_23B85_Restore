@interface CPSInvisibleButton
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CPSInvisibleButton

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  if (([(CPSInvisibleButton *)selfCopy pointInside:location[0] withEvent:testCopy.x, testCopy.y]& 1) != 0)
  {
    v11 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = CPSInvisibleButton;
    v11 = [(CPSInvisibleButton *)&v6 hitTest:location[0] withEvent:testCopy.x, testCopy.y];
  }

  v7 = 1;
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

@end