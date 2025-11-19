@interface DiskImageParamsLocked_XPC
- (DiskImageParamsLocked_XPC)initWithBackendXPC:(id)a3;
@end

@implementation DiskImageParamsLocked_XPC

- (DiskImageParamsLocked_XPC)initWithBackendXPC:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DiskImageParamsLocked_XPC;
  v5 = [(DiskImageParamsXPC *)&v7 initWithBackendXPC:v4];
  if (v5)
  {
    -[DiskImageParamsXPC setBlockSize:](v5, "setBlockSize:", *(*[v4 cryptoHeader] + 52));
  }

  return v5;
}

@end