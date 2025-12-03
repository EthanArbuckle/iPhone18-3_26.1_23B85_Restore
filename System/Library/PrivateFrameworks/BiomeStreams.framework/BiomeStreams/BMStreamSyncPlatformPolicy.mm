@interface BMStreamSyncPlatformPolicy
- (BMStreamSyncPlatformPolicy)initWithTransportType:(unint64_t)type direction:(unint64_t)direction;
@end

@implementation BMStreamSyncPlatformPolicy

- (BMStreamSyncPlatformPolicy)initWithTransportType:(unint64_t)type direction:(unint64_t)direction
{
  v5.receiver = self;
  v5.super_class = BMStreamSyncPlatformPolicy;
  return [(BMResourceSyncPlatformPolicy *)&v5 initWithPlatform:0 transportType:type direction:direction];
}

@end