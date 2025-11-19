@interface FLAutoBugCapture
- (void)triggerABCWithSubtype:(id)a3 bundleID:(id)a4 eventName:(id)a5 eventValue:(id)a6;
@end

@implementation FLAutoBugCapture

- (void)triggerABCWithSubtype:(id)a3 bundleID:(id)a4 eventName:(id)a5 eventValue:(id)a6
{
  v9 = sub_24AB6016C();
  v11 = v10;
  v12 = sub_24AB6016C();
  v14 = v13;
  if (a5)
  {
    v15 = sub_24AB6016C();
    a5 = v16;
    if (a6)
    {
LABEL_3:
      v17 = a6;
      v18 = self;
      a6 = sub_24AB5FDCC();
      v20 = v19;

      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v21 = self;
  v20 = 0xF000000000000000;
LABEL_6:
  sub_24AB43B8C(v9, v11, v12, v14, v15, a5, a6, v20);
  sub_24AB46108(a6, v20);
}

@end