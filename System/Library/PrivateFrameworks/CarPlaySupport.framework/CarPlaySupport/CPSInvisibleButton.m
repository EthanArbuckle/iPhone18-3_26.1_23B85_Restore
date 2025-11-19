@interface CPSInvisibleButton
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CPSInvisibleButton

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10 = a3;
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (([(CPSInvisibleButton *)v9 pointInside:location[0] withEvent:v10.x, v10.y]& 1) != 0)
  {
    v11 = MEMORY[0x277D82BE0](v9);
  }

  else
  {
    v6.receiver = v9;
    v6.super_class = CPSInvisibleButton;
    v11 = [(CPSInvisibleButton *)&v6 hitTest:location[0] withEvent:v10.x, v10.y];
  }

  v7 = 1;
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

@end