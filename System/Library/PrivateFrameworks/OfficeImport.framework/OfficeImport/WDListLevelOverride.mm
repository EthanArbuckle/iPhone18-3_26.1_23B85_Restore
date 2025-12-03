@interface WDListLevelOverride
- (WDListLevelOverride)initWithDocument:(id)document level:(unsigned __int8)level;
- (id)description;
- (id)mutableListLevel;
@end

@implementation WDListLevelOverride

- (id)mutableListLevel
{
  mListLevel = self->mListLevel;
  if (!mListLevel)
  {
    v4 = [WDListLevel alloc];
    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    v6 = [(WDListLevel *)v4 initWithDocument:WeakRetained];
    v7 = self->mListLevel;
    self->mListLevel = v6;

    mListLevel = self->mListLevel;
  }

  return mListLevel;
}

- (WDListLevelOverride)initWithDocument:(id)document level:(unsigned __int8)level
{
  documentCopy = document;
  v10.receiver = self;
  v10.super_class = WDListLevelOverride;
  v7 = [(WDListLevelOverride *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->mDocument, documentCopy);
    v8->mLevel = level;
  }

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDListLevelOverride;
  v2 = [(WDListLevelOverride *)&v4 description];

  return v2;
}

@end