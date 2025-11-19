@interface ICPillOrnamentViewController
- (CGPoint)contentAnchorPoint;
- (CGPoint)offset;
- (CGPoint)sceneAnchorPoint;
- (ICPillOrnamentViewController)initWithRootViewController:(id)a3 contentAnchorPoint:(CGPoint)a4 sceneAnchorPoint:(CGPoint)a5 offset:(CGPoint)a6 cornerRadius:(double)a7;
- (void)loadView;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation ICPillOrnamentViewController

- (ICPillOrnamentViewController)initWithRootViewController:(id)a3 contentAnchorPoint:(CGPoint)a4 sceneAnchorPoint:(CGPoint)a5 offset:(CGPoint)a6 cornerRadius:(double)a7
{
  y = a6.y;
  x = a6.x;
  v10 = a5.y;
  v11 = a5.x;
  v12 = a4.y;
  v13 = a4.x;
  v16 = a3;
  v22.receiver = self;
  v22.super_class = ICPillOrnamentViewController;
  v17 = [(ICPillOrnamentViewController *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rootViewController, a3);
    v18->_contentAnchorPoint.x = v13;
    v18->_contentAnchorPoint.y = v12;
    v18->_sceneAnchorPoint.x = v11;
    v18->_sceneAnchorPoint.y = v10;
    v18->_offset.x = x;
    v18->_offset.y = y;
    v18->_cornerRadius = a7;
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v18->_contentView;
    v18->_contentView = v19;
  }

  return v18;
}

- (void)loadView
{
  v3 = [(ICPillOrnamentViewController *)self contentView];
  [(ICPillOrnamentViewController *)self setView:v3];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  v3.receiver = self;
  v3.super_class = ICPillOrnamentViewController;
  [(ICPillOrnamentViewController *)&v3 setPreferredContentSize:a3.width, a3.height];
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