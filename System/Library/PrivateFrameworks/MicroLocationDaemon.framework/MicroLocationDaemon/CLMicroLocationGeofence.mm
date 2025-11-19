@interface CLMicroLocationGeofence
- (CLMicroLocationGeofence)init;
@end

@implementation CLMicroLocationGeofence

- (CLMicroLocationGeofence)init
{
  v3.receiver = self;
  v3.super_class = CLMicroLocationGeofence;
  return [(CLMicroLocationGeofence *)&v3 init];
}

@end