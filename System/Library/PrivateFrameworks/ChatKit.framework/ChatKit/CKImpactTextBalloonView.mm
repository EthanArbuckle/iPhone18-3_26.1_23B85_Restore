@interface CKImpactTextBalloonView
- (CKImpactTextBalloonView)initWithFrame:(CGRect)frame;
@end

@implementation CKImpactTextBalloonView

- (CKImpactTextBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKImpactTextBalloonView;
  v3 = [(CKTextBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(CKImpactTextBalloonView *)v3 layer];
    [layer setMinificationFilter:*MEMORY[0x1E6979D68]];
  }

  return v4;
}

@end