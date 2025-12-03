@interface CKPosterKitHelpers
+ (id)posterEditingViewControllerConfigurationFromConfiguration:(id)configuration applyingLuminanceThreshold:(double)threshold;
+ (id)posterRenderingViewControllerWithContents:(id)contents context:(id)context snapshotController:(id)controller initialSnapshotBundle:(id)bundle snapshotDefinition:(id)definition;
+ (id)snapshotDefinitionForChannelIdentifier:(id)identifier;
+ (void)forceDelayLoadForPosterKit;
@end

@implementation CKPosterKitHelpers

+ (id)posterRenderingViewControllerWithContents:(id)contents context:(id)context snapshotController:(id)controller initialSnapshotBundle:(id)bundle snapshotDefinition:(id)definition
{
  definitionCopy = definition;
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterRenderingViewController(v12);
  v14 = *(v13 + 216);
  bundleCopy = bundle;
  controllerCopy = controller;
  contextCopy = context;
  contentsCopy = contents;
  v19 = [v14 alloc];
  if (objc_opt_respondsToSelector())
  {
    v20 = [v19 initWithPosterContents:contentsCopy context:contextCopy boundingShape:-1 extensionInstance:0 snapshotController:controllerCopy initialSnapshotBundle:bundleCopy renderingMode:3 snapshotDefinition:definitionCopy];
  }

  else
  {
    v20 = [v19 initWithPosterContents:contentsCopy context:contextCopy boundingShape:-1 extensionInstance:0 snapshotController:controllerCopy initialSnapshotBundle:bundleCopy renderingMode:3];

    [v20 setSnapshotDefinition:definitionCopy];
  }

  return v20;
}

+ (id)snapshotDefinitionForChannelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  gotLoadHelper_x20__OBJC_CLASS___PRUISPosterChannelSnapshotDefinition(v5);
  if (v6 && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    galleryDefinition = [*(v3 + 160) galleryDefinitionForChannelIdentifier:identifierCopy];
  }

  else
  {
    galleryDefinition = [*(v3 + 160) galleryDefinition];
  }

  v8 = galleryDefinition;

  return v8;
}

+ (id)posterEditingViewControllerConfigurationFromConfiguration:(id)configuration applyingLuminanceThreshold:(double)threshold
{
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:threshold];
    [configurationCopy setUserInterfaceStyleLuminanceThreshold:v6];
  }

  return configurationCopy;
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