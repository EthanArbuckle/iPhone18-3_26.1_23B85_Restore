@interface NSKeyedArchiver(WFTemporaryFileManager)
+ (id)wf_securelyArchivedDataWithRootObject:()WFTemporaryFileManager;
+ (id)wf_securelyArchivedDataWithRootObject:()WFTemporaryFileManager deletionResponsibility:;
@end

@implementation NSKeyedArchiver(WFTemporaryFileManager)

+ (id)wf_securelyArchivedDataWithRootObject:()WFTemporaryFileManager deletionResponsibility:
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setDeletionResponsibility:a4];
  v8 = [a1 wf_securelyArchivedDataWithRootObject:v6 fileCoder:v7];

  return v8;
}

+ (id)wf_securelyArchivedDataWithRootObject:()WFTemporaryFileManager
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 wf_securelyArchivedDataWithRootObject:v4 fileCoder:v5];

  return v6;
}

@end