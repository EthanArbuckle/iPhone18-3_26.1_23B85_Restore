@interface LNFetchEnumURLOperation
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchEnumURLOperation

- (void)start
{
  v2 = self;
  sub_197671B3C();
}

- (void)finishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_197671DD8(a3);
}

@end