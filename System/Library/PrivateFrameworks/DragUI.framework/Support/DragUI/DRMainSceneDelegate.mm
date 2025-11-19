@interface DRMainSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation DRMainSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  obj = [[DRTouchTrackingWindow alloc] initWithWindowScene:v6];
  v7 = +[DRDragSessionManager sharedSessionManager];
  [(DRTouchTrackingWindow *)obj setTrackingDelegate:v7];

  [(DRTouchTrackingWindow *)obj setHidden:0];
  objc_storeStrong(&self->_touchTrackingWindow, obj);
  v8 = [[DRContentWindow alloc] initWithWindowScene:v6];
  v9 = [v6 screen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [[DRViewController alloc] initWithDelegate:self initialFrame:v11, v13, v15, v17];
  v19 = [v6 screen];

  LODWORD(v6) = [v19 _isEmbeddedScreen];
  if (v6)
  {
    [(DRViewController *)v18 observeInterfaceOrientationUpdates];
  }

  [(DRContentWindow *)v8 setRootViewController:v18];
  [(DRContentWindow *)v8 makeKeyAndVisible];
  window = self->_window;
  self->_window = &v8->super;
}

@end