@interface DOCRemoteBarButtonTrackingView
- (DOCRemoteBarButtonTrackingView)initWithUUID:(id)d;
@end

@implementation DOCRemoteBarButtonTrackingView

- (DOCRemoteBarButtonTrackingView)initWithUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = DOCRemoteBarButtonTrackingView;
  v6 = [(DOCRemoteBarButtonTrackingView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
    [(DOCRemoteBarButtonTrackingView *)v7 setBackgroundColor:0];
    [(DOCRemoteBarButtonTrackingView *)v7 setOpaque:0];
    v8 = v7;
  }

  return v7;
}

@end