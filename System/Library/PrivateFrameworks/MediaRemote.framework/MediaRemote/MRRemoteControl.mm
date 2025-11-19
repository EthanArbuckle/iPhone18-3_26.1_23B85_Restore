@interface MRRemoteControl
+ (id)sharedRemoteControl;
@end

@implementation MRRemoteControl

+ (id)sharedRemoteControl
{
  if (sharedRemoteControl_onceToken != -1)
  {
    +[MRRemoteControl sharedRemoteControl];
  }

  v3 = sharedRemoteControl__sharedRemoteControl;

  return v3;
}

void __38__MRRemoteControl_sharedRemoteControl__block_invoke()
{
  v0 = objc_alloc_init(MRRemoteControl);
  v1 = sharedRemoteControl__sharedRemoteControl;
  sharedRemoteControl__sharedRemoteControl = v0;
}

@end