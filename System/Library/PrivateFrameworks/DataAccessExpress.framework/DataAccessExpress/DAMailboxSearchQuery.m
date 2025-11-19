@interface DAMailboxSearchQuery
+ (id)mailboxSearchQueryWithSearchString:(id)a3 consumer:(id)a4;
+ (id)mailboxSearchQueryWithSearchString:(id)a3 predicate:(id)a4 consumer:(id)a5;
- (DAMailboxSearchQuery)initWithDictionaryRepresentation:(id)a3 consumer:(id)a4;
- (DAMailboxSearchQuery)initWithSearchString:(id)a3 consumer:(id)a4;
- (DAMailboxSearchQuery)initWithSearchString:(id)a3 predicate:(id)a4 consumer:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation DAMailboxSearchQuery

+ (id)mailboxSearchQueryWithSearchString:(id)a3 consumer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DAMailboxSearchQuery alloc] initWithSearchString:v6 consumer:v5];

  return v7;
}

+ (id)mailboxSearchQueryWithSearchString:(id)a3 predicate:(id)a4 consumer:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[DAMailboxSearchQuery alloc] initWithSearchString:v9 predicate:v8 consumer:v7];

  return v10;
}

- (DAMailboxSearchQuery)initWithSearchString:(id)a3 consumer:(id)a4
{
  v7.receiver = self;
  v7.super_class = DAMailboxSearchQuery;
  v4 = [(DASearchQuery *)&v7 initWithSearchString:a3 consumer:a4];
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

- (DAMailboxSearchQuery)initWithSearchString:(id)a3 predicate:(id)a4 consumer:(id)a5
{
  v8.receiver = self;
  v8.super_class = DAMailboxSearchQuery;
  v5 = [(DASearchQuery *)&v8 initWithSearchString:a3 predicate:a4 consumer:a5];
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

- (DAMailboxSearchQuery)initWithDictionaryRepresentation:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = DAMailboxSearchQuery;
  v7 = [(DASearchQuery *)&v17 initWithDictionaryRepresentation:v6 consumer:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"MessageSearchCollectionID"];
    [(DAMailboxSearchQuery *)v7 setCollectionID:v8];

    v9 = [v6 objectForKeyedSubscript:@"MessageSearchBodyType"];
    -[DAMailboxSearchQuery setBodyType:](v7, "setBodyType:", [v9 intValue]);

    v10 = [v6 objectForKeyedSubscript:@"MessageSearchTruncationSize"];
    -[DAMailboxSearchQuery setTruncationSize:](v7, "setTruncationSize:", [v10 longLongValue]);

    v11 = [v6 objectForKeyedSubscript:@"MessageSearchAllOrNone"];
    -[DAMailboxSearchQuery setAllOrNone:](v7, "setAllOrNone:", [v11 BOOLValue]);

    v12 = [v6 objectForKeyedSubscript:@"MessageSearchPriorToDate"];
    [(DAMailboxSearchQuery *)v7 setPriorToDate:v12];

    v13 = [v6 objectForKeyedSubscript:@"MessageSearchMIMESupport"];
    -[DAMailboxSearchQuery setMIMESupport:](v7, "setMIMESupport:", [v13 intValue]);

    v14 = [v6 objectForKeyedSubscript:@"MessageSearchDeepTraversal"];
    -[DAMailboxSearchQuery setDeepTraversal:](v7, "setDeepTraversal:", [v14 BOOLValue]);

    v15 = [v6 objectForKeyedSubscript:@"MessageSearchRebuildResults"];
    -[DAMailboxSearchQuery setRebuildResults:](v7, "setRebuildResults:", [v15 BOOLValue]);
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v14.receiver = self;
  v14.super_class = DAMailboxSearchQuery;
  v3 = [(DASearchQuery *)&v14 dictionaryRepresentation];
  v4 = [(DAMailboxSearchQuery *)self collectionID];
  [v3 setObject:v4 forKeyedSubscript:@"MessageSearchCollectionID"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAMailboxSearchQuery bodyType](self, "bodyType")}];
  [v3 setObject:v5 forKeyedSubscript:@"MessageSearchBodyType"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[DAMailboxSearchQuery truncationSize](self, "truncationSize")}];
  [v3 setObject:v6 forKeyedSubscript:@"MessageSearchTruncationSize"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAMailboxSearchQuery allOrNone](self, "allOrNone")}];
  [v3 setObject:v7 forKeyedSubscript:@"MessageSearchAllOrNone"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAMailboxSearchQuery MIMESupport](self, "MIMESupport")}];
  [v3 setObject:v8 forKeyedSubscript:@"MessageSearchMIMESupport"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAMailboxSearchQuery deepTraversal](self, "deepTraversal")}];
  [v3 setObject:v9 forKeyedSubscript:@"MessageSearchDeepTraversal"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAMailboxSearchQuery rebuildResults](self, "rebuildResults")}];
  [v3 setObject:v10 forKeyedSubscript:@"MessageSearchRebuildResults"];

  v11 = [(DAMailboxSearchQuery *)self priorToDate];

  if (v11)
  {
    v12 = [(DAMailboxSearchQuery *)self priorToDate];
    [v3 setObject:v12 forKeyedSubscript:@"MessageSearchPriorToDate"];
  }

  return v3;
}

@end