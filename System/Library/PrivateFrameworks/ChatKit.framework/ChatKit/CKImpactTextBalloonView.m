@interface CKImpactTextBalloonView
- (CKImpactTextBalloonView)initWithFrame:(CGRect)a3;
@end

@implementation CKImpactTextBalloonView

- (CKImpactTextBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKImpactTextBalloonView;
  v3 = [(CKTextBalloonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKImpactTextBalloonView *)v3 layer];
    [v5 setMinificationFilter:*MEMORY[0x1E6979D68]];
  }

  return v4;
}

@end