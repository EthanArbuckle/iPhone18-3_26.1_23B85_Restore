@interface IDSNGMSwizzler
+ (void)installMethods;
+ (void)uninstallMethods;
@end

@implementation IDSNGMSwizzler

+ (void)installMethods
{
  os_unfair_lock_lock(&stru_100CBD1B0);
  if ((byte_100CBD1B4 & 1) == 0)
  {
    v2 = NSClassFromString(@"NGMFullPrekey");
    InstanceMethod = class_getInstanceMethod(v2, "dhKey");
    qword_100CBD1B8 = method_getImplementation(InstanceMethod);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003D2E9C;
    v6[3] = &unk_100BDA4F8;
    v6[4] = qword_100CBD1B8;
    v6[5] = "dhKey";
    v4 = objc_retainBlock(v6);
    v5 = imp_implementationWithBlock(v4);

    method_setImplementation(InstanceMethod, v5);
    byte_100CBD1B4 = 1;
  }

  os_unfair_lock_unlock(&stru_100CBD1B0);
}

+ (void)uninstallMethods
{
  os_unfair_lock_lock(&stru_100CBD1B0);
  if (byte_100CBD1B4 == 1)
  {
    v2 = NSClassFromString(@"NGMFullPrekey");
    InstanceMethod = class_getInstanceMethod(v2, "dhKey");
    method_setImplementation(InstanceMethod, qword_100CBD1B8);
    byte_100CBD1B4 = 0;
    v4 = qword_100CBD1A8;
    qword_100CBD1A8 = 0;
  }

  os_unfair_lock_unlock(&stru_100CBD1B0);
}

@end