@interface LNFetchEnumURLsOperation
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchEnumURLsOperation

- (void)start
{
  v2 = self;
  sub_19767221C();
}

- (void)finishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_197672530(a3);
}

@end