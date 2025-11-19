@interface BDSAppGroupContainer
+ (BOOL)isUnitTesting;
+ (NSURL)containerURL;
+ (NSURL)documentsURL;
@end

@implementation BDSAppGroupContainer

+ (BOOL)isUnitTesting
{
  if (qword_1002749F8 != -1)
  {
    sub_1001BDD58();
  }

  return (byte_100274A00 | byte_1002749F0) & 1;
}

+ (NSURL)containerURL
{
  if ([a1 isUnitTesting])
  {
    if (qword_100274A08 != -1)
    {
      sub_1001BDD6C();
    }

    v2 = qword_100274A10;
  }

  else
  {
    v2 = +[NSURL bu_booksGroupContainerURL];
  }

  return v2;
}

+ (NSURL)documentsURL
{
  v2 = [objc_opt_class() containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"Documents"];

  return v3;
}

@end