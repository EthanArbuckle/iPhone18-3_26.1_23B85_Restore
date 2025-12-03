@interface DAMailboxSearchQuery
+ (id)mailboxSearchQueryWithSearchString:(id)string consumer:(id)consumer;
+ (id)mailboxSearchQueryWithSearchString:(id)string predicate:(id)predicate consumer:(id)consumer;
- (DAMailboxSearchQuery)initWithDictionaryRepresentation:(id)representation consumer:(id)consumer;
- (DAMailboxSearchQuery)initWithSearchString:(id)string consumer:(id)consumer;
- (DAMailboxSearchQuery)initWithSearchString:(id)string predicate:(id)predicate consumer:(id)consumer;
- (id)dictionaryRepresentation;
@end

@implementation DAMailboxSearchQuery

+ (id)mailboxSearchQueryWithSearchString:(id)string consumer:(id)consumer
{
  consumerCopy = consumer;
  stringCopy = string;
  v7 = [[DAMailboxSearchQuery alloc] initWithSearchString:stringCopy consumer:consumerCopy];

  return v7;
}

+ (id)mailboxSearchQueryWithSearchString:(id)string predicate:(id)predicate consumer:(id)consumer
{
  consumerCopy = consumer;
  predicateCopy = predicate;
  stringCopy = string;
  v10 = [[DAMailboxSearchQuery alloc] initWithSearchString:stringCopy predicate:predicateCopy consumer:consumerCopy];

  return v10;
}

- (DAMailboxSearchQuery)initWithSearchString:(id)string consumer:(id)consumer
{
  v7.receiver = self;
  v7.super_class = DAMailboxSearchQuery;
  v4 = [(DASearchQuery *)&v7 initWithSearchString:string consumer:consumer];
  v5 = v4;
  if (v4)
  {
    [(DAMailboxSearchQuery *)v4 setBodyType:4];
    [(DAMailboxSearchQuery *)v5 setTruncationSize:0x10000];
    [(DAMailboxSearchQuery *)v5 setAllOrNone:0];
    [(DAMailboxSearchQuery *)v5 setMIMESupport:2];
    [(DAMailboxSearchQuery *)v5 setDeepTraversal:0];
    [(DAMailboxSearchQuery *)v5 setRebuildResults:1];
  }

  return v5;
}

- (DAMailboxSearchQuery)initWithSearchString:(id)string predicate:(id)predicate consumer:(id)consumer
{
  v8.receiver = self;
  v8.super_class = DAMailboxSearchQuery;
  v5 = [(DASearchQuery *)&v8 initWithSearchString:string predicate:predicate consumer:consumer];
  v6 = v5;
  if (v5)
  {
    [(DAMailboxSearchQuery *)v5 setBodyType:4];
    [(DAMailboxSearchQuery *)v6 setTruncationSize:0x10000];
    [(DAMailboxSearchQuery *)v6 setAllOrNone:0];
    [(DAMailboxSearchQuery *)v6 setMIMESupport:2];
    [(DAMailboxSearchQuery *)v6 setDeepTraversal:0];
    [(DAMailboxSearchQuery *)v6 setRebuildResults:1];
  }

  return v6;
}

- (DAMailboxSearchQuery)initWithDictionaryRepresentation:(id)representation consumer:(id)consumer
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = DAMailboxSearchQuery;
  v7 = [(DASearchQuery *)&v17 initWithDictionaryRepresentation:representationCopy consumer:consumer];
  if (v7)
  {
    v8 = [representationCopy objectForKeyedSubscript:@"MessageSearchCollectionID"];
    [(DAMailboxSearchQuery *)v7 setCollectionID:v8];

    v9 = [representationCopy objectForKeyedSubscript:@"MessageSearchBodyType"];
    -[DAMailboxSearchQuery setBodyType:](v7, "setBodyType:", [v9 intValue]);

    v10 = [representationCopy objectForKeyedSubscript:@"MessageSearchTruncationSize"];
    -[DAMailboxSearchQuery setTruncationSize:](v7, "setTruncationSize:", [v10 longLongValue]);

    v11 = [representationCopy objectForKeyedSubscript:@"MessageSearchAllOrNone"];
    -[DAMailboxSearchQuery setAllOrNone:](v7, "setAllOrNone:", [v11 BOOLValue]);

    v12 = [representationCopy objectForKeyedSubscript:@"MessageSearchPriorToDate"];
    [(DAMailboxSearchQuery *)v7 setPriorToDate:v12];

    v13 = [representationCopy objectForKeyedSubscript:@"MessageSearchMIMESupport"];
    -[DAMailboxSearchQuery setMIMESupport:](v7, "setMIMESupport:", [v13 intValue]);

    v14 = [representationCopy objectForKeyedSubscript:@"MessageSearchDeepTraversal"];
    -[DAMailboxSearchQuery setDeepTraversal:](v7, "setDeepTraversal:", [v14 BOOLValue]);

    v15 = [representationCopy objectForKeyedSubscript:@"MessageSearchRebuildResults"];
    -[DAMailboxSearchQuery setRebuildResults:](v7, "setRebuildResults:", [v15 BOOLValue]);
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v14.receiver = self;
  v14.super_class = DAMailboxSearchQuery;
  dictionaryRepresentation = [(DASearchQuery *)&v14 dictionaryRepresentation];
  collectionID = [(DAMailboxSearchQuery *)self collectionID];
  [dictionaryRepresentation setObject:collectionID forKeyedSubscript:@"MessageSearchCollectionID"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAMailboxSearchQuery bodyType](self, "bodyType")}];
  [dictionaryRepresentation setObject:v5 forKeyedSubscript:@"MessageSearchBodyType"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[DAMailboxSearchQuery truncationSize](self, "truncationSize")}];
  [dictionaryRepresentation setObject:v6 forKeyedSubscript:@"MessageSearchTruncationSize"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAMailboxSearchQuery allOrNone](self, "allOrNone")}];
  [dictionaryRepresentation setObject:v7 forKeyedSubscript:@"MessageSearchAllOrNone"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAMailboxSearchQuery MIMESupport](self, "MIMESupport")}];
  [dictionaryRepresentation setObject:v8 forKeyedSubscript:@"MessageSearchMIMESupport"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAMailboxSearchQuery deepTraversal](self, "deepTraversal")}];
  [dictionaryRepresentation setObject:v9 forKeyedSubscript:@"MessageSearchDeepTraversal"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAMailboxSearchQuery rebuildResults](self, "rebuildResults")}];
  [dictionaryRepresentation setObject:v10 forKeyedSubscript:@"MessageSearchRebuildResults"];

  priorToDate = [(DAMailboxSearchQuery *)self priorToDate];

  if (priorToDate)
  {
    priorToDate2 = [(DAMailboxSearchQuery *)self priorToDate];
    [dictionaryRepresentation setObject:priorToDate2 forKeyedSubscript:@"MessageSearchPriorToDate"];
  }

  return dictionaryRepresentation;
}

@end