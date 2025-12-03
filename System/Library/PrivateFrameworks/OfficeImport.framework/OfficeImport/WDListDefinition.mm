@interface WDListDefinition
- (WDListDefinition)initWithDocument:(id)document listDefinitionId:(int)id styleId:(id)styleId;
- (id)addLevel;
- (id)description;
- (id)levelAt:(int)at;
@end

@implementation WDListDefinition

- (id)addLevel
{
  if (!self->mLevels)
  {
    v3 = objc_opt_new();
    mLevels = self->mLevels;
    self->mLevels = v3;
  }

  v5 = [WDListLevel alloc];
  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  v7 = [(WDListLevel *)v5 initWithDocument:WeakRetained];

  [(NSMutableArray *)self->mLevels addObject:v7];

  return v7;
}

- (id)levelAt:(int)at
{
  if (self->mType)
  {
    atCopy = at;
  }

  else
  {
    atCopy = 0;
  }

  v5 = [(NSMutableArray *)self->mLevels count];
  if (v5)
  {
    mLevels = self->mLevels;
    if (atCopy >= v5)
    {
      v8 = [(NSMutableArray *)mLevels objectAtIndex:0];
      if ([v8 legacy])
      {
        lastObject = v8;
      }

      else
      {
        lastObject = [(NSMutableArray *)self->mLevels lastObject];
      }

      v7 = lastObject;
    }

    else
    {
      v7 = [(NSMutableArray *)mLevels objectAtIndex:atCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WDListDefinition)initWithDocument:(id)document listDefinitionId:(int)id styleId:(id)styleId
{
  documentCopy = document;
  styleIdCopy = styleId;
  v15.receiver = self;
  v15.super_class = WDListDefinition;
  v10 = [(WDListDefinition *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->mDocument, documentCopy);
    v11->mListDefinitionId = id;
    v12 = [styleIdCopy copy];
    mStyleId = v11->mStyleId;
    v11->mStyleId = v12;
  }

  return v11;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDListDefinition;
  v2 = [(WDListDefinition *)&v4 description];

  return v2;
}

@end