@interface BMStreamSyncPlatformPolicy
- (BMStreamSyncPlatformPolicy)initWithTransportType:(unint64_t)a3 direction:(unint64_t)a4;
@end

@implementation BMStreamSyncPlatformPolicy

- (BMStreamSyncPlatformPolicy)initWithTransportType:(unint64_t)a3 direction:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = BMStreamSyncPlatformPolicy;
  return [(BMResourceSyncPlatformPolicy *)&v5 initWithPlatform:0 transportType:a3 direction:a4];
}

@end