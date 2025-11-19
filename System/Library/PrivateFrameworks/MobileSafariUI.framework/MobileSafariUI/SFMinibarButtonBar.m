@interface SFMinibarButtonBar
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7;
- (void)willBeginTransitionWithCoordinator:(id)a3;
@end

@implementation SFMinibarButtonBar

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  sub_2159F9AFC(width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = _Block_copy(a7);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_2159F7D34;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  v18 = a5;
  v19 = self;
  sub_2159FA3E4(v17, v18, a6, v15, v16, x, y, width, height);
  sub_2159F7E0C(v15);
}

- (void)willBeginTransitionWithCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_2159FA6FC(a3);
  swift_unknownObjectRelease();
}

@end