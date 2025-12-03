@interface LNFetchEnumURLOperation
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchEnumURLOperation

- (void)start
{
  selfCopy = self;
  sub_197671B3C();
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_197671DD8(error);
}

@end