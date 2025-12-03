@interface NPSPrefPlistProtectedUtil
+ (BOOL)isPlistProtectedAtPath:(id)path;
@end

@implementation NPSPrefPlistProtectedUtil

+ (BOOL)isPlistProtectedAtPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NPSPrefPlistProtectedUtil" reason:@"Path cannot be nil" userInfo:0];
    objc_exception_throw(v11);
  }

  v4 = pathCopy;
  v5 = open_dprotected_np([pathCopy UTF8String], 0, 0, 1);
  if (v5 == -1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
    v7 = fcntl(v5, 63);
    close(v6);
  }

  NSLog(&cfstr_SProtectionCla.isa, "+[NPSPrefPlistProtectedUtil isPlistProtectedAtPath:]", v4, v7);
  v9 = v7 != -1 && v7 < 4;

  return v9;
}

@end