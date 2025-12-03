@interface ICPillOrnamentViewController
- (CGPoint)contentAnchorPoint;
- (CGPoint)offset;
- (CGPoint)sceneAnchorPoint;
- (ICPillOrnamentViewController)initWithRootViewController:(id)controller contentAnchorPoint:(CGPoint)point sceneAnchorPoint:(CGPoint)anchorPoint offset:(CGPoint)offset cornerRadius:(double)radius;
- (void)loadView;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation ICPillOrnamentViewController

- (ICPillOrnamentViewController)initWithRootViewController:(id)controller contentAnchorPoint:(CGPoint)point sceneAnchorPoint:(CGPoint)anchorPoint offset:(CGPoint)offset cornerRadius:(double)radius
{
  y = offset.y;
  x = offset.x;
  v10 = anchorPoint.y;
  v11 = anchorPoint.x;
  v12 = point.y;
  v13 = point.x;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = ICPillOrnamentViewController;
  v17 = [(ICPillOrnamentViewController *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rootViewController, controller);
    v18->_contentAnchorPoint.x = v13;
    v18->_contentAnchorPoint.y = v12;
    v18->_sceneAnchorPoint.x = v11;
    v18->_sceneAnchorPoint.y = v10;
    v18->_offset.x = x;
    v18->_offset.y = y;
    v18->_cornerRadius = radius;
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v18->_contentView;
    v18->_contentView = v19;
  }

  return v18;
}

- (void)loadView
{
  contentView = [(ICPillOrnamentViewController *)self contentView];
  [(ICPillOrnamentViewController *)self setView:contentView];
}

- (void)setPreferredContentSize:(CGSize)size
{
  v3.receiver = self;
  v3.super_class = ICPillOrnamentViewController;
  [(ICPillOrnamentViewController *)&v3 setPreferredContentSize:size.width, size.height];
}

- (CGPoint)contentAnchorPoint
{
  x = self->_contentAnchorPoint.x;
  y = self->_contentAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)sceneAnchorPoint
{
  x = self->_sceneAnchorPoint.x;
  y = self->_sceneAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end