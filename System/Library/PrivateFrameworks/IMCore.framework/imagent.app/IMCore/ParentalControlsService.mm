@interface ParentalControlsService
- (void)dealloc;
@end

@implementation ParentalControlsService

- (void)dealloc
{
  [(ParentalControlsService *)self setAllowlist:0];
  [(ParentalControlsService *)self setName:0];
  v3.receiver = self;
  v3.super_class = ParentalControlsService;
  [(ParentalControlsService *)&v3 dealloc];
}

@end