@interface CKCloudSyncNavBarStatusView.ConstrainedProgressView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithCoder:(id)a3;
- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithFrame:(CGRect)a3;
@end

@implementation CKCloudSyncNavBarStatusView.ConstrainedProgressView

- (CGSize)sizeThatFits:(CGSize)a3
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

- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView_constrainedWidth;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKCloudSyncNavBarStatusView.ConstrainedProgressView();
  return [(CKCloudSyncNavBarStatusView.ConstrainedProgressView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtCC7ChatKit27CKCloudSyncNavBarStatusViewP33_6FB1AF6C1C2B9653994B3505FD6722D823ConstrainedProgressView_constrainedWidth;
  *v4 = 0;
  v4[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKCloudSyncNavBarStatusView.ConstrainedProgressView();
  v5 = a3;
  v6 = [(CKCloudSyncNavBarStatusView.ConstrainedProgressView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end