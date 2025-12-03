@interface DRMainSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation DRMainSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  obj = [[DRTouchTrackingWindow alloc] initWithWindowScene:sceneCopy];
  v7 = +[DRDragSessionManager sharedSessionManager];
  [(DRTouchTrackingWindow *)obj setTrackingDelegate:v7];

  [(DRTouchTrackingWindow *)obj setHidden:0];
  objc_storeStrong(&self->_touchTrackingWindow, obj);
  v8 = [[DRContentWindow alloc] initWithWindowScene:sceneCopy];
  screen = [sceneCopy screen];
  [screen bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [[DRViewController alloc] initWithDelegate:self initialFrame:v11, v13, v15, v17];
  screen2 = [sceneCopy screen];

  LODWORD(sceneCopy) = [screen2 _isEmbeddedScreen];
  if (sceneCopy)
  {
    [(DRViewController *)v18 observeInterfaceOrientationUpdates];
  }

  [(DRContentWindow *)v8 setRootViewController:v18];
  [(DRContentWindow *)v8 makeKeyAndVisible];
  window = self->_window;
  self->_window = &v8->super;
}

@end