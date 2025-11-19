@interface WDListTable
- (WDListTable)initWithDocument:(id)a3;
- (id)addListWithListId:(int)a3 listDefinitionId:(int)a4;
- (id)description;
- (id)listWithListId:(int)a3;
@end

@implementation WDListTable

- (id)addListWithListId:(int)a3 listDefinitionId:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  if (a3 == 0x80000000)
  {
    v5 = [(NSMutableArray *)self->mLists count]+ 1;
  }

  v7 = [WDList alloc];
  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  v9 = [(WDList *)v7 initWithDocument:WeakRetained listId:v5 listDefinitionId:v4];

  if (v9)
  {
    [(NSMutableArray *)self->mLists addObject:v9];
    mListMapById = self->mListMapById;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [(NSMutableDictionary *)mListMapById setObject:v9 forKeyedSubscript:v11];
  }

  return v9;
}

- (id)listWithListId:(int)a3
{
  if (a3)
  {
    mListMapById = self->mListMapById;
    v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v6 = [(NSMutableDictionary *)mListMapById objectForKeyedSubscript:v5];

    if (v6)
    {
      goto LABEL_6;
    }

    v7 = 40;
  }

  else
  {
    v7 = 32;
  }

  v6 = *(&self->super.isa + v7);
LABEL_6:

  return v6;
}

- (WDListTable)initWithDocument:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WDListTable;
  v5 = [(WDListTable *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mLists = v6->mLists;
    v6->mLists = v7;

    v9 = objc_opt_new();
    mListMapById = v6->mListMapById;
    v6->mListMapById = v9;

    v11 = [[WDList alloc] initWithDocument:v4 listId:0 listDefinitionId:0xFFFFFFFFLL];
    mNullList = v6->mNullList;
    v6->mNullList = v11;

    v13 = [[WDList alloc] initWithDocument:v4 listId:2147483649 listDefinitionId:4294967294];
    mDefaultList = v6->mDefaultList;
    v6->mDefaultList = v13;
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDListTable;
  v2 = [(WDListTable *)&v4 description];

  return v2;
}

@end