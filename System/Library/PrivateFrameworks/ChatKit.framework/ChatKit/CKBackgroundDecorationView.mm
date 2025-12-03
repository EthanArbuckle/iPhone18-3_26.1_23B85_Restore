@interface CKBackgroundDecorationView
- (CKBackgroundDecorationView)initWithFrame:(CGRect)frame;
@end

@implementation CKBackgroundDecorationView

- (CKBackgroundDecorationView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKBackgroundDecorationView;
  v3 = [(CKBackgroundDecorationView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    detailsAttachmentsDecorationViewBackgroundColor = [theme detailsAttachmentsDecorationViewBackgroundColor];
    [(CKBackgroundDecorationView *)v3 setBackgroundColor:detailsAttachmentsDecorationViewBackgroundColor];

    layer = [(CKBackgroundDecorationView *)v3 layer];
    [layer setCornerRadius:10.0];
  }

  return v3;
}

@end