@interface AppStoreAssetManager
+ (void)accessAppFor:(id)for presentingViewController:(id)controller completion:(id)completion;
+ (void)openAppStoreFromViewController:(id)controller;
+ (void)presentAppStoreProductPage:(id)page from:(id)from;
- (_TtC28HealthExposureNotificationUI20AppStoreAssetManager)init;
@end

@implementation AppStoreAssetManager

+ (void)accessAppFor:(id)for presentingViewController:(id)controller completion:(id)completion
{
  v7 = _Block_copy(completion);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  forCopy = for;
  controllerCopy = controller;
  sub_2516C4230(forCopy, controllerCopy, ObjCClassMetadata, v7);
  _Block_release(v7);
  _Block_release(v7);
}

+ (void)presentAppStoreProductPage:(id)page from:(id)from
{
  pageCopy = page;
  fromCopy = from;
  sub_2516C44E8(pageCopy, fromCopy);
}

+ (void)openAppStoreFromViewController:(id)controller
{
  defaultWorkspace = [objc_opt_self() defaultWorkspace];
  if (defaultWorkspace)
  {
    v4 = defaultWorkspace;
    v5 = sub_251703134();
    [v4 openApplicationWithBundleID_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC28HealthExposureNotificationUI20AppStoreAssetManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppStoreAssetManager();
  return [(AppStoreAssetManager *)&v3 init];
}

@end