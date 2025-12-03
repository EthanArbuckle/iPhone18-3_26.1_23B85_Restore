@interface FLAutoBugCapture
- (void)triggerABCWithSubtype:(id)subtype bundleID:(id)d eventName:(id)name eventValue:(id)value;
@end

@implementation FLAutoBugCapture

- (void)triggerABCWithSubtype:(id)subtype bundleID:(id)d eventName:(id)name eventValue:(id)value
{
  v9 = sub_24AB6016C();
  v11 = v10;
  v12 = sub_24AB6016C();
  v14 = v13;
  if (name)
  {
    v15 = sub_24AB6016C();
    name = v16;
    if (value)
    {
LABEL_3:
      valueCopy = value;
      selfCopy = self;
      value = sub_24AB5FDCC();
      v20 = v19;

      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (value)
    {
      goto LABEL_3;
    }
  }

  selfCopy2 = self;
  v20 = 0xF000000000000000;
LABEL_6:
  sub_24AB43B8C(v9, v11, v12, v14, v15, name, value, v20);
  sub_24AB46108(value, v20);
}

@end