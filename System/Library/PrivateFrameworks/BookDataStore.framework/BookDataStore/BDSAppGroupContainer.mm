@interface BDSAppGroupContainer
+ (BOOL)isUnitTesting;
+ (NSURL)containerURL;
+ (NSURL)documentsURL;
@end

@implementation BDSAppGroupContainer

+ (NSURL)containerURL
{
  if ([self isUnitTesting])
  {
    if (qword_1ECF75E30 != -1)
    {
      sub_1E47091B8();
    }

    bu_booksGroupContainerURL = qword_1ECF75E38;
  }

  else
  {
    bu_booksGroupContainerURL = [MEMORY[0x1E695DFF8] bu_booksGroupContainerURL];
  }

  return bu_booksGroupContainerURL;
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
  containerURL = [objc_opt_class() containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"Documents"];

  return v3;
}

@end