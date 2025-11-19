@interface CoreDAVActionBackedTask
- (id)description;
@end

@implementation CoreDAVActionBackedTask

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVActionBackedTask;
  v4 = [(CoreDAVTask *)&v7 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVActionBackedTask *)self backingAction];
  [v3 appendFormat:@"| Backing Action: [%@]", v5];

  [v3 appendFormat:@"]"];

  return v3;
}

@end