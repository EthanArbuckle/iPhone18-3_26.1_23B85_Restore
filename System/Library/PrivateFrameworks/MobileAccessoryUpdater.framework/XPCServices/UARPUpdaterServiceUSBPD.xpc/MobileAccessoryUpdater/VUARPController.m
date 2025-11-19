@interface VUARPController
- (VUARPController)init;
@end

@implementation VUARPController

- (VUARPController)init
{
  v3.receiver = self;
  v3.super_class = VUARPController;
  return [(VUARPController *)&v3 init];
}

@end