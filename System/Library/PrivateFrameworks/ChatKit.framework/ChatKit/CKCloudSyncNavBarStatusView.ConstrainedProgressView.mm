@interface CKCloudSyncNavBarStatusView.ConstrainedProgressView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithCoder:(id)coder;
- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithFrame:(CGRect)frame;
@end

@implementation CKCloudSyncNavBarStatusView.ConstrainedProgressView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView_constrainedWidth);
  if (*(&self->super.super.super._responderFlags + OBJC_IVAR____TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView_constrainedWidth))
  {
    v3 = 92.0;
  }

  v4 = 5.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView_constrainedWidth;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKCloudSyncNavBarStatusView.ConstrainedProgressView();
  return [(CKCloudSyncNavBarStatusView.ConstrainedProgressView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView_constrainedWidth;
  *v4 = 0;
  v4[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKCloudSyncNavBarStatusView.ConstrainedProgressView();
  coderCopy = coder;
  v6 = [(CKCloudSyncNavBarStatusView.ConstrainedProgressView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end