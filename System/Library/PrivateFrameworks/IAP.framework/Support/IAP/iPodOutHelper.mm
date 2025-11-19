@interface iPodOutHelper
- (iPodOutHelper)init;
- (void)applicationStateChanged:(id)a3;
- (void)dealloc;
@end

@implementation iPodOutHelper

- (iPodOutHelper)init
{
  v4.receiver = self;
  v4.super_class = iPodOutHelper;
  v2 = [(iPodOutHelper *)&v4 init];
  if (v2)
  {
    dword_10012C5E0 = 0;
    [qword_10012B8B0 setDelegate:v2];
    [qword_10012B8B0 startObserving];
  }

  return v2;
}

- (void)dealloc
{
  [qword_10012B8B0 stopObserving];
  v3.receiver = self;
  v3.super_class = iPodOutHelper;
  [(iPodOutHelper *)&v3 dealloc];
}

- (void)applicationStateChanged:(id)a3
{
  if (![objc_msgSend(a3 objectForKey:{BKSApplicationStateDisplayIDKey), "caseInsensitiveCompare:", @"com.apple.iphoneos.iPodOut"}])
  {
    v4 = [objc_msgSend(a3 objectForKey:{BKSApplicationStateKey), "unsignedIntValue"}];
    if (v4 != dword_10012C5E0)
    {
      dword_10012C5E0 = v4;
      if (qword_10012B8C0 != -1)
      {
        sub_1000E1CE8();
      }

      v5 = qword_10012B8B8;
      if (!qword_10012B8B8 || (qword_10012B8B8 & 7) != 0)
      {
        __break(0x5516u);
      }

      else
      {
        v6 = dword_10012C5E0 > 1;

        sub_100009DD8(v5, v6);
      }
    }
  }
}

@end