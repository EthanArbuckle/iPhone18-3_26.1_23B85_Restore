@interface DebugHierarchyCrawlerOptions
- (BOOL)shouldCrawlGroupWithID:(id)a3;
- (DebugHierarchyCrawlerOptions)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation DebugHierarchyCrawlerOptions

- (DebugHierarchyCrawlerOptions)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DebugHierarchyCrawlerOptions;
  v5 = [(DebugHierarchyCrawlerOptions *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rootItems"];
    rootItems = v5->_rootItems;
    v5->_rootItems = v6;

    v8 = [v4 objectForKeyedSubscript:@"groupingIdentifiers"];
    groupingIdentifiers = v5->_groupingIdentifiers;
    v5->_groupingIdentifiers = v8;

    v10 = [v4 objectForKeyedSubscript:@"groupingIdentifiersAreExclusive"];
    v11 = v10;
    if (v10)
    {
      v5->_groupingIdentifiersAreExclusive = [v10 BOOLValue];
    }

    v12 = [v4 objectForKeyedSubscript:@"groupVisibilityMask"];
    v13 = v12;
    if (v12)
    {
      v5->_groupVisibilityMask = [v12 unsignedIntegerValue];
    }

    v14 = [v4 objectForKeyedSubscript:@"maximumObjectDepth"];
    v15 = v14;
    if (v14)
    {
      v5->_maximumObjectDepth = [v14 unsignedIntegerValue];
    }

    v16 = [v4 objectForKeyedSubscript:@"maximumObjectCount"];
    v17 = v16;
    if (v16)
    {
      v5->_maximumObjectCount = [v16 unsignedIntegerValue];
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(DebugHierarchyCrawlerOptions *)self rootItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(DebugHierarchyCrawlerOptions *)self rootItems];
    [v3 setObject:v6 forKeyedSubscript:@"rootItems"];
  }

  v7 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
    [v3 setObject:v9 forKeyedSubscript:@"groupingIdentifiers"];
  }

  v10 = [NSNumber numberWithBool:[(DebugHierarchyCrawlerOptions *)self groupingIdentifiersAreExclusive]];
  [v3 setObject:v10 forKeyedSubscript:@"groupingIdentifiersAreExclusive"];

  v11 = [NSNumber numberWithLong:[(DebugHierarchyCrawlerOptions *)self groupVisibilityMask]];
  [v3 setObject:v11 forKeyedSubscript:@"groupVisibilityMask"];

  v12 = [NSNumber numberWithUnsignedInteger:[(DebugHierarchyCrawlerOptions *)self maximumObjectDepth]];
  [v3 setObject:v12 forKeyedSubscript:@"maximumObjectDepth"];

  v13 = [NSNumber numberWithUnsignedInteger:[(DebugHierarchyCrawlerOptions *)self maximumObjectCount]];
  [v3 setObject:v13 forKeyedSubscript:@"maximumObjectCount"];

  v14 = [v3 copy];

  return v14;
}

- (BOOL)shouldCrawlGroupWithID:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];

  if (v5)
  {
    v6 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
      v9 = [v8 containsObject:v4];

      v10 = v9 ^ [(DebugHierarchyCrawlerOptions *)self groupingIdentifiersAreExclusive];
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

@end