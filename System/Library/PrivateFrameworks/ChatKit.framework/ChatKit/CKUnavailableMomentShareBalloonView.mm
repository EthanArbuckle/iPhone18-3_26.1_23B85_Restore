@interface CKUnavailableMomentShareBalloonView
+ (id)_secondaryLabelString;
- (CKUnavailableMomentShareBalloonView)initWithFrame:(CGRect)frame;
- (void)handleTap:(id)tap;
@end

@implementation CKUnavailableMomentShareBalloonView

- (CKUnavailableMomentShareBalloonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKUnavailableMomentShareBalloonView;
  v3 = [(CKMomentShareStatusBalloonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_handleTap_];
    [(CKUnavailableMomentShareBalloonView *)v3 addGestureRecognizer:v4];
  }

  return v3;
}

+ (id)_secondaryLabelString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"CKUnavailableMomentShareBalloonViewMessage_IOS" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (void)handleTap:(id)tap
{
  delegate = [(CKBalloonView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didTapUnavailableMomentShareBalloonView:self];
  }
}

@end