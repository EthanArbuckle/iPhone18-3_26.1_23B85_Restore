@interface ACCUserDefaults
+ (id)sharedDefaults;
- (ACCUserDefaults)init;
@end

@implementation ACCUserDefaults

- (ACCUserDefaults)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector("sharedDefaults");
  +[NSException raise:format:](NSException, "raise:format:", NSInternalInconsistencyException, @"Use +[%@ %@] instead of -%@.", v4, v5, NSStringFromSelector(a2));
  return 0;
}

+ (id)sharedDefaults
{
  if (qword_10012C5A8 != -1)
  {
    sub_1000E2714();
  }

  return qword_10012C5A0;
}

@end