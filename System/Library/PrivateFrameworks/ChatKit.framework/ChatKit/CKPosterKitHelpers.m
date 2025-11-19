@interface CKPosterKitHelpers
+ (id)posterEditingViewControllerConfigurationFromConfiguration:(id)a3 applyingLuminanceThreshold:(double)a4;
+ (id)posterRenderingViewControllerWithContents:(id)a3 context:(id)a4 snapshotController:(id)a5 initialSnapshotBundle:(id)a6 snapshotDefinition:(id)a7;
+ (id)snapshotDefinitionForChannelIdentifier:(id)a3;
+ (void)forceDelayLoadForPosterKit;
@end

@implementation CKPosterKitHelpers

+ (id)posterRenderingViewControllerWithContents:(id)a3 context:(id)a4 snapshotController:(id)a5 initialSnapshotBundle:(id)a6 snapshotDefinition:(id)a7
{
  v11 = a7;
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterRenderingViewController(v12);
  v14 = *(v13 + 216);
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v14 alloc];
  if (objc_opt_respondsToSelector())
  {
    v20 = [v19 initWithPosterContents:v18 context:v17 boundingShape:-1 extensionInstance:0 snapshotController:v16 initialSnapshotBundle:v15 renderingMode:3 snapshotDefinition:v11];
  }

  else
  {
    v20 = [v19 initWithPosterContents:v18 context:v17 boundingShape:-1 extensionInstance:0 snapshotController:v16 initialSnapshotBundle:v15 renderingMode:3];

    [v20 setSnapshotDefinition:v11];
  }

  return v20;
}

+ (id)snapshotDefinitionForChannelIdentifier:(id)a3
{
  v4 = a3;
  gotLoadHelper_x20__OBJC_CLASS___PRUISPosterChannelSnapshotDefinition(v5);
  if (v6 && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v7 = [*(v3 + 160) galleryDefinitionForChannelIdentifier:v4];
  }

  else
  {
    v7 = [*(v3 + 160) galleryDefinition];
  }

  v8 = v7;

  return v8;
}

+ (id)posterEditingViewControllerConfigurationFromConfiguration:(id)a3 applyingLuminanceThreshold:(double)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v5 setUserInterfaceStyleLuminanceThreshold:v6];
  }

  return v5;
}

+ (void)forceDelayLoadForPosterKit
{
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannel(v2);
  v3 = objc_opt_class();
  if (v3)
  {
    v4 = NSStringFromClass(v3);
    NSLog(&cfstr_InvokedForceDe.isa, v4);
  }
}

@end