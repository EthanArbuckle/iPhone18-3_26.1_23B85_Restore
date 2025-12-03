@interface NavdPaths
+ (id)pathInCacheDirWithFilename:(id)filename;
@end

@implementation NavdPaths

+ (id)pathInCacheDirWithFilename:(id)filename
{
  v3 = qword_1000759C0;
  filenameCopy = filename;
  if (v3 != -1)
  {
    sub_10003EA78();
  }

  v5 = [qword_1000759B8 stringByAppendingPathComponent:filenameCopy];

  return v5;
}

@end