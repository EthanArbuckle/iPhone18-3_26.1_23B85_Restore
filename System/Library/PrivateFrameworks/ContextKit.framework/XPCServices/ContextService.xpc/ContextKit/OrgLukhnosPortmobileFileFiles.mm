@interface OrgLukhnosPortmobileFileFiles
+ (BOOL)existsWithOrgLukhnosPortmobileFilePath:(id)path;
+ (BOOL)isDirectoryWithOrgLukhnosPortmobileFilePath:(id)path;
+ (BOOL)isWritableWithOrgLukhnosPortmobileFilePath:(id)path;
+ (BOOL)notExistsWithOrgLukhnosPortmobileFilePath:(id)path;
+ (id)newByteChannelWithOrgLukhnosPortmobileFilePath:(id)path withOrgLukhnosPortmobileFileStandardOpenOptionEnum:(id)enum;
+ (int64_t)sizeWithOrgLukhnosPortmobileFilePath:(id)path;
+ (void)delete__WithOrgLukhnosPortmobileFilePath:(id)path;
@end

@implementation OrgLukhnosPortmobileFileFiles

+ (id)newByteChannelWithOrgLukhnosPortmobileFilePath:(id)path withOrgLukhnosPortmobileFileStandardOpenOptionEnum:(id)enum
{
  enumCopy = enum;
  v5 = [IOSObjectArray arrayWithObjects:&enumCopy count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  return OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(path, v5);
}

+ (int64_t)sizeWithOrgLukhnosPortmobileFilePath:(id)path
{
  if (!path || (v3 = [path toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 length];
}

+ (BOOL)existsWithOrgLukhnosPortmobileFilePath:(id)path
{
  if (!path || (v3 = *(path + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 exists];
}

+ (BOOL)notExistsWithOrgLukhnosPortmobileFilePath:(id)path
{
  if (!path || (v3 = *(path + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 exists] ^ 1;
}

+ (BOOL)isDirectoryWithOrgLukhnosPortmobileFilePath:(id)path
{
  if (!path || (v3 = *(path + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 isDirectory];
}

+ (BOOL)isWritableWithOrgLukhnosPortmobileFilePath:(id)path
{
  if (!path || (v3 = *(path + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 canWrite];
}

+ (void)delete__WithOrgLukhnosPortmobileFilePath:(id)path
{
  if (!path || (v3 = [path toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v3 delete];
}

@end