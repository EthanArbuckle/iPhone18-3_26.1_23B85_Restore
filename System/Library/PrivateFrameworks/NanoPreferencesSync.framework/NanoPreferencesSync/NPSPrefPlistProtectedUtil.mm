@interface NPSPrefPlistProtectedUtil
+ (BOOL)isPlistProtectedAtPath:(id)a3;
@end

@implementation NPSPrefPlistProtectedUtil

+ (BOOL)isPlistProtectedAtPath:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NPSPrefPlistProtectedUtil" reason:@"Path cannot be nil" userInfo:0];
    objc_exception_throw(v11);
  }

  v4 = v3;
  v5 = open_dprotected_np([v3 UTF8String], 0, 0, 1);
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