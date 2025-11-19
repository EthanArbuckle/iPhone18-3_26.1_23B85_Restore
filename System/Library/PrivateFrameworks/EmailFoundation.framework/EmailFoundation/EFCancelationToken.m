@interface EFCancelationToken
- (void)dealloc;
@end

@implementation EFCancelationToken

- (void)dealloc
{
  [(EFManualCancelationToken *)self cancel];
  v3.receiver = self;
  v3.super_class = EFCancelationToken;
  [(EFCancelationToken *)&v3 dealloc];
}

@end