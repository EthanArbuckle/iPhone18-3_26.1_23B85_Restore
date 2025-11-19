@interface CLSNotificationBannerDisplayManager
+ (id)shared;
- (void)showBannerWithTitle:(id)a3 message:(id)a4;
@end

@implementation CLSNotificationBannerDisplayManager

+ (id)shared
{
  if (qword_27ED78308 != -1)
  {
    dispatch_once(&qword_27ED78308, &unk_28563EE98);
  }

  v3 = qword_27ED78300;

  return v3;
}

- (void)showBannerWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24351CFEC;
  block[3] = &unk_278DBEED8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end