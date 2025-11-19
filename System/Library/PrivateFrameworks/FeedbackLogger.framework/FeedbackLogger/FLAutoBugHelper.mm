@interface FLAutoBugHelper
- (FLAutoBugHelper)initWithAutoBugCapture:(id)a3 bundleID:(id)a4 eventValue:(id)a5;
- (void)triggerABCWithSubtype:(id)a3;
- (void)triggerABCWithSubtype:(id)a3 additionalEventName:(id)a4;
@end

@implementation FLAutoBugHelper

- (FLAutoBugHelper)initWithAutoBugCapture:(id)a3 bundleID:(id)a4 eventValue:(id)a5
{
  v7 = sub_24AB6016C();
  v9 = v8;
  v10 = a3;
  if (a5)
  {
    v11 = a5;
    a5 = sub_24AB5FDCC();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  return sub_24AB45B28(a3, v7, v9, a5, v13);
}

- (void)triggerABCWithSubtype:(id)a3
{
  sub_24AB6016C();
  v4 = self;
  sub_24AB45C8C();
}

- (void)triggerABCWithSubtype:(id)a3 additionalEventName:(id)a4
{
  sub_24AB6016C();
  sub_24AB6016C();
  v5 = self;
  sub_24AB45E04();
}

@end