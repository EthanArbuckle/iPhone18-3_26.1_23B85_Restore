@interface WDAnnotation
- (WDAnnotation)initWithParagraph:(id)a3 type:(int)a4;
- (id)description;
- (id)otherEndOfRangedAnnotation;
- (id)paragraphIds;
- (unint64_t)lastParagraphId;
- (void)useDataFromOtherEnd;
@end

@implementation WDAnnotation

- (WDAnnotation)initWithParagraph:(id)a3 type:(int)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = WDAnnotation;
  v7 = [(WDRun *)&v18 initWithParagraph:v6];
  if (v7)
  {
    v8 = [v6 document];
    v9 = [[WDCharacterRun alloc] initWithParagraph:v6];
    mReference = v7->mReference;
    v7->mReference = v9;

    [(WDCharacterRun *)v7->mReference setString:@"\x05"];
    v11 = [WDText alloc];
    v12 = [v6 text];
    v13 = [v12 tableCell];
    v14 = [(WDText *)v11 initWithDocument:v8 textType:4 tableCell:v13];

    v15 = [[WDAnnotationData alloc] initWithText:v14];
    mData = v7->mData;
    v7->mData = v15;

    v7->mType = a4;
  }

  return v7;
}

- (void)useDataFromOtherEnd
{
  WeakRetained = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);
  v4 = [WeakRetained data];

  v5 = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);
  v6 = [v5 parent];
  v7 = [v6 annotationType];

  v8 = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);
  v9 = [v8 parent];
  if (v7 == 2)
  {
    [(WDAnnotation *)self setParent:v9];
  }

  else
  {
    v10 = [v9 otherEndOfRangedAnnotation];
    [(WDAnnotation *)self setParent:v10];
  }

  mData = self->mData;
  self->mData = v4;
}

- (id)otherEndOfRangedAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);

  return WeakRetained;
}

- (id)paragraphIds
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(WDAnnotation *)self text];
  v5 = [v4 paragraphs];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__WDAnnotation_paragraphIds__block_invoke;
  v8[3] = &unk_2799CD978;
  v6 = v3;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __28__WDAnnotation_paragraphIds__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_class();
  v4 = TSUDynamicCast(v3, v8);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
    [v6 addObject:v7];
  }
}

- (unint64_t)lastParagraphId
{
  v2 = [(WDAnnotation *)self text];
  v3 = [v2 paragraphs];
  v4 = [v3 lastObject];
  v5 = [v4 identifier];

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDAnnotation;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end