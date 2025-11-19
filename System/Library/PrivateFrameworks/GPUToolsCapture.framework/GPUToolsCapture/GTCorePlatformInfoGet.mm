@interface GTCorePlatformInfoGet
@end

@implementation GTCorePlatformInfoGet

void __GTCorePlatformInfoGet_block_invoke(id a1)
{
  dword_31F650 = 1;
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 hostName];
  strncpy(hostname, [v2 UTF8String], 0x80uLL);

  *&GTCorePlatformInfoGet_info = hostname;
  *v6 = 0x1A00000006;
  v5 = 16;
  if (sysctl(v6, 2u, &hwtarget, &v5, 0, 0) == -1 || !v5)
  {
    hwtarget = 45;
  }

  *(&GTCorePlatformInfoGet_info + 1) = &hwtarget;
  v3 = [[NSDictionary alloc] initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v4 = [v3 objectForKey:@"ProductBuildVersion"];
  strncpy(osbuild, [v4 UTF8String], 0x10uLL);

  qword_31F648 = osbuild;
}

@end