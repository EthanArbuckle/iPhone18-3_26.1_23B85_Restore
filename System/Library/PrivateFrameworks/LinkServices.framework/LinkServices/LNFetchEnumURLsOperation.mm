@interface LNFetchEnumURLsOperation
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchEnumURLsOperation

- (void)start
{
  selfCopy = self;
  sub_19767221C();
}

- (void)finishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_197672530(error);
}

@end