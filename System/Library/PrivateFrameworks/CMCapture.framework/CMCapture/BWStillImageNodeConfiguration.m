@interface BWStillImageNodeConfiguration
- (void)dealloc;
@end

@implementation BWStillImageNodeConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageNodeConfiguration;
  [(BWStillImageNodeConfiguration *)&v3 dealloc];
}

@end