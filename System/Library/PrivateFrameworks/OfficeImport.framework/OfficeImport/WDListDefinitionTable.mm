@interface WDListDefinitionTable
- (WDListDefinitionTable)initWithDocument:(id)a3;
- (id)addDefinitionWithDefinitionId:(int)a3 styleId:(id)a4;
- (id)definitionWithDefinitionId:(int)a3;
- (id)definitionWithStyleId:(id)a3;
- (id)description;
- (id)resolvedDefinitionWithDefinitionId:(int)a3;
@end

@implementation WDListDefinitionTable

- (WDListDefinitionTable)initWithDocument:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = WDListDefinitionTable;
  v5 = [(WDListDefinitionTable *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mListDefinitions = v6->mListDefinitions;
    v6->mListDefinitions = v7;

    v9 = objc_opt_new();
    mListDefinitionMapById = v6->mListDefinitionMapById;
    v6->mListDefinitionMapById = v9;

    v11 = objc_opt_new();
    mListDefinitionMapByStyleId = v6->mListDefinitionMapByStyleId;
    v6->mListDefinitionMapByStyleId = v11;

    v13 = [[WDListDefinition alloc] initWithDocument:v4 listDefinitionId:0xFFFFFFFFLL styleId:0];
    mNullListDefinition = v6->mNullListDefinition;
    v6->mNullListDefinition = v13;

    [(WDListDefinition *)v6->mNullListDefinition setType:0];
    v15 = [(WDListDefinition *)v6->mNullListDefinition addLevel];
    [v15 setNumberFormat:0];
    v16 = [v15 paragraphProperties];
    [v16 setFirstLineIndent:0];
    [v16 setLeadingIndent:0];
    [v16 setFollowingIndent:0];
    [v15 setSuffix:0];
    v17 = [[WDListDefinition alloc] initWithDocument:v4 listDefinitionId:4294967294 styleId:0];
    mDefaultListDefinition = v6->mDefaultListDefinition;
    v6->mDefaultListDefinition = v17;

    [(WDListDefinition *)v6->mDefaultListDefinition setType:1];
    v24 = v4;
    for (i = 1; i != 10; ++i)
    {
      v20 = [(WDListDefinition *)v6->mDefaultListDefinition addLevel];
      [v20 setStartNumber:1];
      [v20 setNumberFormat:0];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%lu.", i];
      [v20 setText:v21];

      [v20 setJustification:0];
      v22 = [v20 paragraphProperties];
      [v22 setFirstLineIndent:4294966576];
      [v22 setLeadingIndent:(720 * i)];
      v25[1] = 6;
      v25[0] = 720 * i;
      [v22 addTabStopAdded:v25];
    }

    v4 = v24;
  }

  return v6;
}

- (id)addDefinitionWithDefinitionId:(int)a3 styleId:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v4 == 0x80000000)
  {
    v4 = [(NSMutableArray *)self->mListDefinitions count];
  }

  v7 = [WDListDefinition alloc];
  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  v9 = [(WDListDefinition *)v7 initWithDocument:WeakRetained listDefinitionId:v4 styleId:v6];

  [(NSMutableArray *)self->mListDefinitions addObject:v9];
  mListDefinitionMapById = self->mListDefinitionMapById;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)mListDefinitionMapById setObject:v9 forKeyedSubscript:v11];

  if (v6)
  {
    [(NSMutableDictionary *)self->mListDefinitionMapByStyleId setObject:v9 forKeyedSubscript:v6];
  }

  return v9;
}

- (id)definitionWithDefinitionId:(int)a3
{
  if (a3 == -1)
  {
    v7 = 40;
  }

  else
  {
    mListDefinitionMapById = self->mListDefinitionMapById;
    v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v6 = [(NSMutableDictionary *)mListDefinitionMapById objectForKeyedSubscript:v5];

    if (v6)
    {
      goto LABEL_6;
    }

    v7 = 48;
  }

  v6 = *(&self->super.isa + v7);
LABEL_6:

  return v6;
}

- (id)definitionWithStyleId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mListDefinitionMapByStyleId objectForKeyedSubscript:a3];

  return v3;
}

- (id)resolvedDefinitionWithDefinitionId:(int)a3
{
  v4 = [(WDListDefinitionTable *)self definitionWithDefinitionId:*&a3];
  v5 = [(WDListDefinition *)v4 styleRefId];

  if (v5)
  {
    v6 = [(WDListDefinition *)v4 styleRefId];
    v7 = [(WDListDefinitionTable *)self definitionWithStyleId:v6];

    v4 = v7;
    if (!v7)
    {
      v4 = self->mNullListDefinition;
    }
  }

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDListDefinitionTable;
  v2 = [(WDListDefinitionTable *)&v4 description];

  return v2;
}

@end