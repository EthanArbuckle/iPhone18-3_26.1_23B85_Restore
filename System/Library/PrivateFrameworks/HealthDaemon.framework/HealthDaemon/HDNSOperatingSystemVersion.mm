@interface HDNSOperatingSystemVersion
+ (HDNSOperatingSystemVersion)unknownVersion;
+ (HDNSOperatingSystemVersion)versionWithMajor:(uint64_t)major minor:(uint64_t)minor patch:;
@end

@implementation HDNSOperatingSystemVersion

+ (HDNSOperatingSystemVersion)unknownVersion
{
  objc_opt_self();
  v0 = objc_alloc_init(HDNSOperatingSystemVersion);
  v1 = v0;
  if (v0)
  {
    v3 = HDDataProvenanceOperatingSystemVersionUnknown;
    v4 = 0;
    objc_copyStruct(&v0->_versionStruct, &v3, 24, 1, 0);
  }

  return v1;
}

+ (HDNSOperatingSystemVersion)versionWithMajor:(uint64_t)major minor:(uint64_t)minor patch:
{
  objc_opt_self();
  v7 = objc_alloc_init(HDNSOperatingSystemVersion);
  v8 = v7;
  if (v7)
  {
    src[0] = a2;
    src[1] = major;
    src[2] = minor;
    objc_copyStruct(&v7->_versionStruct, src, 24, 1, 0);
  }

  return v8;
}

@end