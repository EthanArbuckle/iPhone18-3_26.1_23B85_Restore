@interface FCMyArticlesRequest
+ (FCMyArticlesRequest)lastRequestIssued;
+ (void)setLastRequestIssued:(id)issued;
- (FCMyArticlesRequest)init;
- (NSArray)feedIDs;
@end

@implementation FCMyArticlesRequest

- (NSArray)feedIDs
{
  selfCopy = self;
  MyArticlesRequest.feedIDs.getter();

  v3 = sub_1B67D97AC();

  return v3;
}

- (FCMyArticlesRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (FCMyArticlesRequest)lastRequestIssued
{
  v2 = _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvgZ_0();

  return v2;
}

+ (void)setLastRequestIssued:(id)issued
{
  issuedCopy = issued;

  _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(issued);
}

@end