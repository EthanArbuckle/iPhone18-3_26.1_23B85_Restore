@interface WDListDefinition
- (WDListDefinition)initWithDocument:(id)a3 listDefinitionId:(int)a4 styleId:(id)a5;
- (id)addLevel;
- (id)description;
- (id)levelAt:(int)a3;
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

- (id)levelAt:(int)a3
{
  if (self->mType)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->mLevels count];
  if (v5)
  {
    mLevels = self->mLevels;
    if (v4 >= v5)
    {
      v8 = [(NSMutableArray *)mLevels objectAtIndex:0];
      if ([v8 legacy])
      {
        v9 = v8;
      }

      else
      {
        v9 = [(NSMutableArray *)self->mLevels lastObject];
      }

      v7 = v9;
    }

    else
    {
      v7 = [(NSMutableArray *)mLevels objectAtIndex:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WDListDefinition)initWithDocument:(id)a3 listDefinitionId:(int)a4 styleId:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = WDListDefinition;
  v10 = [(WDListDefinition *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->mDocument, v8);
    v11->mListDefinitionId = a4;
    v12 = [v9 copy];
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