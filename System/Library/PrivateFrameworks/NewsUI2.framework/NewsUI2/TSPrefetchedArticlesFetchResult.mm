@interface TSPrefetchedArticlesFetchResult
- (NSArray)articleIDs;
- (NSDictionary)prefetchedHeadlines;
- (NSString)selectedArticleID;
- (TSPrefetchedArticlesFetchResult)init;
- (TSPrefetchedArticlesFetchResult)initWithSelectedArticleID:(id)d articleIDs:(id)ds prefetchedHeadlines:(id)headlines;
@end

@implementation TSPrefetchedArticlesFetchResult

- (NSString)selectedArticleID
{

  v2 = sub_219BF53D4();

  return v2;
}

- (NSArray)articleIDs
{

  v2 = sub_219BF5904();

  return v2;
}

- (NSDictionary)prefetchedHeadlines
{
  sub_218731D50();

  v2 = sub_219BF5204();

  return v2;
}

- (TSPrefetchedArticlesFetchResult)initWithSelectedArticleID:(id)d articleIDs:(id)ds prefetchedHeadlines:(id)headlines
{
  ObjectType = swift_getObjectType();
  v7 = sub_219BF5414();
  v9 = v8;
  v10 = sub_219BF5924();
  sub_218731D50();
  v11 = sub_219BF5214();
  v12 = (self + OBJC_IVAR___TSPrefetchedArticlesFetchResult_selectedArticleID);
  *v12 = v7;
  v12[1] = v9;
  *(self + OBJC_IVAR___TSPrefetchedArticlesFetchResult_articleIDs) = v10;
  *(self + OBJC_IVAR___TSPrefetchedArticlesFetchResult_prefetchedHeadlines) = v11;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(TSPrefetchedArticlesFetchResult *)&v14 init];
}

- (TSPrefetchedArticlesFetchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end