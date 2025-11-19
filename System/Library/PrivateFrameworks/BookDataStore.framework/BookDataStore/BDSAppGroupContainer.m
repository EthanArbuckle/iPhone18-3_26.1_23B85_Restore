@interface BDSAppGroupContainer
+ (BOOL)isUnitTesting;
+ (NSURL)containerURL;
+ (NSURL)documentsURL;
@end

@implementation BDSAppGroupContainer

+ (NSURL)containerURL
{
  if ([a1 isUnitTesting])
  {
    if (qword_1ECF75E30 != -1)
    {
      sub_1E47091B8();
    }

    v2 = qword_1ECF75E38;
  }

  else
  {
    v2 = [MEMORY[0x1E695DFF8] bu_booksGroupContainerURL];
  }

  return v2;
}

+ (BOOL)isUnitTesting
{
  if (qword_1EE2B0540 != -1)
  {
    sub_1E45E3BB4();
  }

  return (byte_1ECF75E28 | byte_1EE2AEC10) & 1;
}

+ (NSURL)documentsURL
{
  v2 = [objc_opt_class() containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"Documents"];

  return v3;
}

@end