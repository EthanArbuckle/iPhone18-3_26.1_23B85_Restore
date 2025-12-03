@interface ShimAccessoryMatterCapabilities
- (BOOL)isCapabilityAllowed:(int64_t)allowed vendorID:(int64_t)d productID:(int64_t)iD;
- (BOOL)isCapabilityAllowed:(int64_t)allowed vendorID:(int64_t)d productID:(int64_t)iD firmwareVersion:(int64_t)version;
@end

@implementation ShimAccessoryMatterCapabilities

- (BOOL)isCapabilityAllowed:(int64_t)allowed vendorID:(int64_t)d productID:(int64_t)iD
{

  LOBYTE(iD) = sub_2297C3BC8(allowed, d, iD);

  return iD & 1;
}

- (BOOL)isCapabilityAllowed:(int64_t)allowed vendorID:(int64_t)d productID:(int64_t)iD firmwareVersion:(int64_t)version
{

  LOBYTE(version) = sub_2297C3EAC(allowed, d, iD, version);

  return version & 1;
}

@end