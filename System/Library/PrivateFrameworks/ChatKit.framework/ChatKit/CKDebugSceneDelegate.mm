@interface CKDebugSceneDelegate
- (void)displayViewController:(id)controller forScene:(id)scene title:(id)title;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation CKDebugSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  userActivities = [options userActivities];
  anyObject = [userActivities anyObject];

  activityType = [anyObject activityType];
  v11 = [activityType isEqualToString:@"com.apple.Messages.ShowMessageInspector"];

  if (v11)
  {
    userInfo = [anyObject userInfo];
    v13 = [userInfo objectForKey:@"message-guid"];

    mEMORY[0x1E69A5AE8] = [MEMORY[0x1E69A5AE8] sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__CKDebugSceneDelegate_scene_willConnectToSession_options___block_invoke;
    v18[3] = &unk_1E72F1018;
    v18[4] = self;
    v19 = sceneCopy;
    [mEMORY[0x1E69A5AE8] loadMessageWithGUID:v13 completionBlock:v18];
  }

  else
  {
    v13 = +[_TtC7ChatKit44DebugInspectorContainerViewControllerFactory debugMenuViewController];
    [(CKDebugSceneDelegate *)self displayViewController:v13 forScene:sceneCopy title:@"Messages Debug Menu"];
  }

  v15 = objc_alloc_init(MEMORY[0x1E69DCE78]);
  v16 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  [v15 setCanActivateForTargetContentIdentifierPredicate:v16];

  v17 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  [v15 setPrefersToActivateForTargetContentIdentifierPredicate:v17];

  [sceneCopy setActivationConditions:v15];
}

void __59__CKDebugSceneDelegate_scene_willConnectToSession_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForMessage:a2];
  [v3 displayViewController:v4 forScene:*(a1 + 40) title:@"Message"];
}

- (void)displayViewController:(id)controller forScene:(id)scene title:(id)title
{
  sceneCopy = scene;
  titleCopy = title;
  controllerCopy = controller;
  sizeRestrictions = [sceneCopy sizeRestrictions];
  [sizeRestrictions setMinimumSize:{300.0, 200.0}];

  sizeRestrictions2 = [sceneCopy sizeRestrictions];
  [sizeRestrictions2 setMaximumSize:{440.0, 720.0}];

  [sceneCopy setTitle:titleCopy];
  v12 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:sceneCopy];
  [(CKDebugSceneDelegate *)self setWindow:v12];

  window = [(CKDebugSceneDelegate *)self window];
  [window setRootViewController:controllerCopy];

  window2 = [(CKDebugSceneDelegate *)self window];
  [window2 makeKeyAndVisible];
}

@end