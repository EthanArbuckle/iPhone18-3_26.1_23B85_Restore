@interface IMParentalControlsService
- (void)dealloc;
@end

@implementation IMParentalControlsService

- (void)dealloc
{
  objc_msgSend_setAllowlist_(self, a2, 0);
  objc_msgSend_setName_(self, v3, 0);
  v4.receiver = self;
  v4.super_class = IMParentalControlsService;
  [(IMParentalControlsService *)&v4 dealloc];
}

@end