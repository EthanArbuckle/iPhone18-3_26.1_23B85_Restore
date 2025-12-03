@interface CPLCloudKitResourceRecordProperties
+ (void)initialize;
@end

@implementation CPLCloudKitResourceRecordProperties

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 objectForKey:@"CPLResourceRecordPropertiesToEncrypt"];

    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      qword_1002C00A8 = [v3 unsignedIntegerValue];
    }

    _objc_release_x2();
  }
}

@end