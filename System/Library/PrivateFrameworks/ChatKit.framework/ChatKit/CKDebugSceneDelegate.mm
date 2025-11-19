@interface CKDebugSceneDelegate
- (void)displayViewController:(id)a3 forScene:(id)a4 title:(id)a5;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation CKDebugSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = [a5 userActivities];
  v9 = [v8 anyObject];

  v10 = [v9 activityType];
  v11 = [v10 isEqualToString:@"com.apple.Messages.ShowMessageInspector"];

  if (v11)
  {
    v12 = [v9 userInfo];
    v13 = [v12 objectForKey:@"message-guid"];

    v14 = [MEMORY[0x1E69A5AE8] sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__CKDebugSceneDelegate_scene_willConnectToSession_options___block_invoke;
    v18[3] = &unk_1E72F1018;
    v18[4] = self;
    v19 = v7;
    [v14 loadMessageWithGUID:v13 completionBlock:v18];
  }

  else
  {
    v13 = +[_TtC7ChatKit44DebugInspectorContainerViewControllerFactory debugMenuViewController];
    [(CKDebugSceneDelegate *)self displayViewController:v13 forScene:v7 title:@"Messages Debug Menu"];
  }

  v15 = objc_alloc_init(MEMORY[0x1E69DCE78]);
  v16 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  [v15 setCanActivateForTargetContentIdentifierPredicate:v16];

  v17 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  [v15 setPrefersToActivateForTargetContentIdentifierPredicate:v17];

  [v7 setActivationConditions:v15];
}

void __59__CKDebugSceneDelegate_scene_willConnectToSession_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForMessage:a2];
  [v3 displayViewController:v4 forScene:*(a1 + 40) title:@"Message"];
}

- (void)displayViewController:(id)a3 forScene:(id)a4 title:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v15 sizeRestrictions];
  [v10 setMinimumSize:{300.0, 200.0}];

  v11 = [v15 sizeRestrictions];
  [v11 setMaximumSize:{440.0, 720.0}];

  [v15 setTitle:v8];
  v12 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:v15];
  [(CKDebugSceneDelegate *)self setWindow:v12];

  v13 = [(CKDebugSceneDelegate *)self window];
  [v13 setRootViewController:v9];

  v14 = [(CKDebugSceneDelegate *)self window];
  [v14 makeKeyAndVisible];
}

@end