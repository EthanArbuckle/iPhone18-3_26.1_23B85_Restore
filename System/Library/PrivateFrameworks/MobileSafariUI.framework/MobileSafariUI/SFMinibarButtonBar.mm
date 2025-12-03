@interface SFMinibarButtonBar
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block;
- (void)willBeginTransitionWithCoordinator:(id)coordinator;
@end

@implementation SFMinibarButtonBar

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_2159F9AFC(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = _Block_copy(block);
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

  imageCopy = image;
  viewCopy = view;
  selfCopy = self;
  sub_2159FA3E4(imageCopy, viewCopy, item, v15, v16, x, y, width, height);
  sub_2159F7E0C(v15);
}

- (void)willBeginTransitionWithCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2159FA6FC(coordinator);
  swift_unknownObjectRelease();
}

@end