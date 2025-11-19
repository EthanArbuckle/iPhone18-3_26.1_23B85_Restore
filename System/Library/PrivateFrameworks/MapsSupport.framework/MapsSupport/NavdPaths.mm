@interface NavdPaths
+ (id)pathInCacheDirWithFilename:(id)a3;
@end

@implementation NavdPaths

+ (id)pathInCacheDirWithFilename:(id)a3
{
  v3 = qword_1000759C0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10003EA78();
  }

  v5 = [qword_1000759B8 stringByAppendingPathComponent:v4];

  return v5;
}

@end