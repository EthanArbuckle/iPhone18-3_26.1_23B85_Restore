@interface CKHandwritingWindow
- (void)_updateInterfaceOrientationFromDeviceOrientation:(BOOL)orientation;
@end

@implementation CKHandwritingWindow

- (void)_updateInterfaceOrientationFromDeviceOrientation:(BOOL)orientation
{
  if (![(CKHandwritingWindow *)self eatOrientationEvents])
  {
    v4.receiver = self;
    v4.super_class = CKHandwritingWindow;
    [(CKHandwritingWindow *)&v4 _updateInterfaceOrientationFromDeviceOrientation:0];
  }
}

@end