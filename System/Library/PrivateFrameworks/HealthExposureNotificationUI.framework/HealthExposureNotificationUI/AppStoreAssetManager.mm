@interface AppStoreAssetManager
+ (void)accessAppFor:(id)a3 presentingViewController:(id)a4 completion:(id)a5;
+ (void)openAppStoreFromViewController:(id)a3;
+ (void)presentAppStoreProductPage:(id)a3 from:(id)a4;
- (_TtC28HealthExposureNotificationUI20AppStoreAssetManager)init;
@end

@implementation AppStoreAssetManager

+ (void)accessAppFor:(id)a3 presentingViewController:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  v9 = a3;
  v10 = a4;
  sub_2516C4230(v9, v10, ObjCClassMetadata, v7);
  _Block_release(v7);
  _Block_release(v7);
}

+ (void)presentAppStoreProductPage:(id)a3 from:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_2516C44E8(v5, v6);
}

+ (void)openAppStoreFromViewController:(id)a3
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
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