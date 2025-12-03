@interface FLAutoBugHelper
- (FLAutoBugHelper)initWithAutoBugCapture:(id)capture bundleID:(id)d eventValue:(id)value;
- (void)triggerABCWithSubtype:(id)subtype;
- (void)triggerABCWithSubtype:(id)subtype additionalEventName:(id)name;
@end

@implementation FLAutoBugHelper

- (FLAutoBugHelper)initWithAutoBugCapture:(id)capture bundleID:(id)d eventValue:(id)value
{
  v7 = sub_24AB6016C();
  v9 = v8;
  captureCopy = capture;
  if (value)
  {
    valueCopy = value;
    value = sub_24AB5FDCC();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  return sub_24AB45B28(capture, v7, v9, value, v13);
}

- (void)triggerABCWithSubtype:(id)subtype
{
  sub_24AB6016C();
  selfCopy = self;
  sub_24AB45C8C();
}

- (void)triggerABCWithSubtype:(id)subtype additionalEventName:(id)name
{
  sub_24AB6016C();
  sub_24AB6016C();
  selfCopy = self;
  sub_24AB45E04();
}

@end