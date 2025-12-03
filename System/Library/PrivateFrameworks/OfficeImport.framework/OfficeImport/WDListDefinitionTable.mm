@interface WDListDefinitionTable
- (WDListDefinitionTable)initWithDocument:(id)document;
- (id)addDefinitionWithDefinitionId:(int)id styleId:(id)styleId;
- (id)definitionWithDefinitionId:(int)id;
- (id)definitionWithStyleId:(id)id;
- (id)description;
- (id)resolvedDefinitionWithDefinitionId:(int)id;
@end

@implementation WDListDefinitionTable

- (WDListDefinitionTable)initWithDocument:(id)document
{
  documentCopy = document;
  v26.receiver = self;
  v26.super_class = WDListDefinitionTable;
  v5 = [(WDListDefinitionTable *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mListDefinitions = v6->mListDefinitions;
    v6->mListDefinitions = v7;

    v9 = objc_opt_new();
    mListDefinitionMapById = v6->mListDefinitionMapById;
    v6->mListDefinitionMapById = v9;

    v11 = objc_opt_new();
    mListDefinitionMapByStyleId = v6->mListDefinitionMapByStyleId;
    v6->mListDefinitionMapByStyleId = v11;

    v13 = [[WDListDefinition alloc] initWithDocument:documentCopy listDefinitionId:0xFFFFFFFFLL styleId:0];
    mNullListDefinition = v6->mNullListDefinition;
    v6->mNullListDefinition = v13;

    [(WDListDefinition *)v6->mNullListDefinition setType:0];
    addLevel = [(WDListDefinition *)v6->mNullListDefinition addLevel];
    [addLevel setNumberFormat:0];
    paragraphProperties = [addLevel paragraphProperties];
    [paragraphProperties setFirstLineIndent:0];
    [paragraphProperties setLeadingIndent:0];
    [paragraphProperties setFollowingIndent:0];
    [addLevel setSuffix:0];
    v17 = [[WDListDefinition alloc] initWithDocument:documentCopy listDefinitionId:4294967294 styleId:0];
    mDefaultListDefinition = v6->mDefaultListDefinition;
    v6->mDefaultListDefinition = v17;

    [(WDListDefinition *)v6->mDefaultListDefinition setType:1];
    v24 = documentCopy;
    for (i = 1; i != 10; ++i)
    {
      addLevel2 = [(WDListDefinition *)v6->mDefaultListDefinition addLevel];
      [addLevel2 setStartNumber:1];
      [addLevel2 setNumberFormat:0];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%lu.", i];
      [addLevel2 setText:v21];

      [addLevel2 setJustification:0];
      paragraphProperties2 = [addLevel2 paragraphProperties];
      [paragraphProperties2 setFirstLineIndent:4294966576];
      [paragraphProperties2 setLeadingIndent:(720 * i)];
      v25[1] = 6;
      v25[0] = 720 * i;
      [paragraphProperties2 addTabStopAdded:v25];
    }

    documentCopy = v24;
  }

  return v6;
}

- (id)addDefinitionWithDefinitionId:(int)id styleId:(id)styleId
{
  v4 = *&id;
  styleIdCopy = styleId;
  if (v4 == 0x80000000)
  {
    v4 = [(NSMutableArray *)self->mListDefinitions count];
  }

  v7 = [WDListDefinition alloc];
  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  v9 = [(WDListDefinition *)v7 initWithDocument:WeakRetained listDefinitionId:v4 styleId:styleIdCopy];

  [(NSMutableArray *)self->mListDefinitions addObject:v9];
  mListDefinitionMapById = self->mListDefinitionMapById;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)mListDefinitionMapById setObject:v9 forKeyedSubscript:v11];

  if (styleIdCopy)
  {
    [(NSMutableDictionary *)self->mListDefinitionMapByStyleId setObject:v9 forKeyedSubscript:styleIdCopy];
  }

  return v9;
}

- (id)definitionWithDefinitionId:(int)id
{
  if (id == -1)
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

- (id)definitionWithStyleId:(id)id
{
  v3 = [(NSMutableDictionary *)self->mListDefinitionMapByStyleId objectForKeyedSubscript:id];

  return v3;
}

- (id)resolvedDefinitionWithDefinitionId:(int)id
{
  v4 = [(WDListDefinitionTable *)self definitionWithDefinitionId:*&id];
  styleRefId = [(WDListDefinition *)v4 styleRefId];

  if (styleRefId)
  {
    styleRefId2 = [(WDListDefinition *)v4 styleRefId];
    v7 = [(WDListDefinitionTable *)self definitionWithStyleId:styleRefId2];

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