@interface DDRTaskClearPersonalHotspotSettings
- (void)run;
@end

@implementation DDRTaskClearPersonalHotspotSettings

- (void)run
{
  v2 = _NETRBClientCreate();
  if (v2)
  {
    v3 = v2;
    _NETRBClientSetGlobalServiceState();

    __NETRBClientDestroy(v3);
  }
}

@end