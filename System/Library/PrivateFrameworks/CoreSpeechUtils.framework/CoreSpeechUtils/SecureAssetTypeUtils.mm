@interface SecureAssetTypeUtils
+ (id)getAssetFileName:(unsigned int)name;
+ (id)getBundle:(unsigned int)bundle;
+ (id)getVoiceTriggerAssetBundle;
- (SecureAssetTypeUtils)init;
@end

@implementation SecureAssetTypeUtils

+ (id)getBundle:(unsigned int)bundle
{
  v3 = _sSo20SecureAssetTypeUtilsC010CoreSpeechD0E9getBundleySo8NSBundleCSgs6UInt32VFZ_0(bundle);

  return v3;
}

+ (id)getAssetFileName:(unsigned int)name
{
  _sSo20SecureAssetTypeUtilsC010CoreSpeechD0E03getB8FileNameySSSgs6UInt32VFZ_0(name);
  if (v3)
  {
    v4 = sub_247994E74();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getVoiceTriggerAssetBundle
{
  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_247994E74();
  initWithPath_ = [v2 initWithPath_];

  return initWithPath_;
}

- (SecureAssetTypeUtils)init
{
  v3.receiver = self;
  v3.super_class = SecureAssetTypeUtils;
  return [(SecureAssetTypeUtils *)&v3 init];
}

@end