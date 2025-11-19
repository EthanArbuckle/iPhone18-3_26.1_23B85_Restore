@interface EFDeallocInvocationToken
- (void)dealloc;
@end

@implementation EFDeallocInvocationToken

- (void)dealloc
{
  [(EFInvocationToken *)self invoke];
  v3.receiver = self;
  v3.super_class = EFDeallocInvocationToken;
  [(EFDeallocInvocationToken *)&v3 dealloc];
}

@end