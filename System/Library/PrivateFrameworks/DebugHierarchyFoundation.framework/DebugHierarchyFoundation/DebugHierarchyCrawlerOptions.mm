@interface DebugHierarchyCrawlerOptions
- (BOOL)shouldCrawlGroupWithID:(id)d;
- (DebugHierarchyCrawlerOptions)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
@end

@implementation DebugHierarchyCrawlerOptions

- (DebugHierarchyCrawlerOptions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = DebugHierarchyCrawlerOptions;
  v5 = [(DebugHierarchyCrawlerOptions *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rootItems"];
    rootItems = v5->_rootItems;
    v5->_rootItems = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"groupingIdentifiers"];
    groupingIdentifiers = v5->_groupingIdentifiers;
    v5->_groupingIdentifiers = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"groupingIdentifiersAreExclusive"];
    v11 = v10;
    if (v10)
    {
      v5->_groupingIdentifiersAreExclusive = [v10 BOOLValue];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"groupVisibilityMask"];
    v13 = v12;
    if (v12)
    {
      v5->_groupVisibilityMask = [v12 unsignedIntegerValue];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"maximumObjectDepth"];
    v15 = v14;
    if (v14)
    {
      v5->_maximumObjectDepth = [v14 unsignedIntegerValue];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"maximumObjectCount"];
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
  rootItems = [(DebugHierarchyCrawlerOptions *)self rootItems];
  v5 = [rootItems count];

  if (v5)
  {
    rootItems2 = [(DebugHierarchyCrawlerOptions *)self rootItems];
    [v3 setObject:rootItems2 forKeyedSubscript:@"rootItems"];
  }

  groupingIdentifiers = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
  v8 = [groupingIdentifiers count];

  if (v8)
  {
    groupingIdentifiers2 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
    [v3 setObject:groupingIdentifiers2 forKeyedSubscript:@"groupingIdentifiers"];
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

- (BOOL)shouldCrawlGroupWithID:(id)d
{
  dCopy = d;
  groupingIdentifiers = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];

  if (groupingIdentifiers)
  {
    groupingIdentifiers2 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
    v7 = [groupingIdentifiers2 count];

    if (v7)
    {
      groupingIdentifiers3 = [(DebugHierarchyCrawlerOptions *)self groupingIdentifiers];
      v9 = [groupingIdentifiers3 containsObject:dCopy];

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