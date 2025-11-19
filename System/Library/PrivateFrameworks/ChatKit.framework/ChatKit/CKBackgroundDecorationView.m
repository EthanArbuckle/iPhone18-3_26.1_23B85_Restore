@interface CKBackgroundDecorationView
- (CKBackgroundDecorationView)initWithFrame:(CGRect)a3;
@end

@implementation CKBackgroundDecorationView

- (CKBackgroundDecorationView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKBackgroundDecorationView;
  v3 = [(CKBackgroundDecorationView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 detailsAttachmentsDecorationViewBackgroundColor];
    [(CKBackgroundDecorationView *)v3 setBackgroundColor:v6];

    v7 = [(CKBackgroundDecorationView *)v3 layer];
    [v7 setCornerRadius:10.0];
  }

  return v3;
}

@end