@interface OrgLukhnosPortmobileFileFiles
+ (BOOL)existsWithOrgLukhnosPortmobileFilePath:(id)a3;
+ (BOOL)isDirectoryWithOrgLukhnosPortmobileFilePath:(id)a3;
+ (BOOL)isWritableWithOrgLukhnosPortmobileFilePath:(id)a3;
+ (BOOL)notExistsWithOrgLukhnosPortmobileFilePath:(id)a3;
+ (id)newByteChannelWithOrgLukhnosPortmobileFilePath:(id)a3 withOrgLukhnosPortmobileFileStandardOpenOptionEnum:(id)a4;
+ (int64_t)sizeWithOrgLukhnosPortmobileFilePath:(id)a3;
+ (void)delete__WithOrgLukhnosPortmobileFilePath:(id)a3;
@end

@implementation OrgLukhnosPortmobileFileFiles

+ (id)newByteChannelWithOrgLukhnosPortmobileFilePath:(id)a3 withOrgLukhnosPortmobileFileStandardOpenOptionEnum:(id)a4
{
  v7 = a4;
  v5 = [IOSObjectArray arrayWithObjects:&v7 count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  return OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(a3, v5);
}

+ (int64_t)sizeWithOrgLukhnosPortmobileFilePath:(id)a3
{
  if (!a3 || (v3 = [a3 toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 length];
}

+ (BOOL)existsWithOrgLukhnosPortmobileFilePath:(id)a3
{
  if (!a3 || (v3 = *(a3 + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 exists];
}

+ (BOOL)notExistsWithOrgLukhnosPortmobileFilePath:(id)a3
{
  if (!a3 || (v3 = *(a3 + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 exists] ^ 1;
}

+ (BOOL)isDirectoryWithOrgLukhnosPortmobileFilePath:(id)a3
{
  if (!a3 || (v3 = *(a3 + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 isDirectory];
}

+ (BOOL)isWritableWithOrgLukhnosPortmobileFilePath:(id)a3
{
  if (!a3 || (v3 = *(a3 + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 canWrite];
}

+ (void)delete__WithOrgLukhnosPortmobileFilePath:(id)a3
{
  if (!a3 || (v3 = [a3 toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v3 delete];
}

@end