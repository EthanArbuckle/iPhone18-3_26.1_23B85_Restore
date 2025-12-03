@interface WDAnnotation
- (WDAnnotation)initWithParagraph:(id)paragraph type:(int)type;
- (id)description;
- (id)otherEndOfRangedAnnotation;
- (id)paragraphIds;
- (unint64_t)lastParagraphId;
- (void)useDataFromOtherEnd;
@end

@implementation WDAnnotation

- (WDAnnotation)initWithParagraph:(id)paragraph type:(int)type
{
  paragraphCopy = paragraph;
  v18.receiver = self;
  v18.super_class = WDAnnotation;
  v7 = [(WDRun *)&v18 initWithParagraph:paragraphCopy];
  if (v7)
  {
    document = [paragraphCopy document];
    v9 = [[WDCharacterRun alloc] initWithParagraph:paragraphCopy];
    mReference = v7->mReference;
    v7->mReference = v9;

    [(WDCharacterRun *)v7->mReference setString:@"\x05"];
    v11 = [WDText alloc];
    text = [paragraphCopy text];
    tableCell = [text tableCell];
    v14 = [(WDText *)v11 initWithDocument:document textType:4 tableCell:tableCell];

    v15 = [[WDAnnotationData alloc] initWithText:v14];
    mData = v7->mData;
    v7->mData = v15;

    v7->mType = type;
  }

  return v7;
}

- (void)useDataFromOtherEnd
{
  WeakRetained = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);
  data = [WeakRetained data];

  v5 = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);
  parent = [v5 parent];
  annotationType = [parent annotationType];

  v8 = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);
  parent2 = [v8 parent];
  if (annotationType == 2)
  {
    [(WDAnnotation *)self setParent:parent2];
  }

  else
  {
    otherEndOfRangedAnnotation = [parent2 otherEndOfRangedAnnotation];
    [(WDAnnotation *)self setParent:otherEndOfRangedAnnotation];
  }

  mData = self->mData;
  self->mData = data;
}

- (id)otherEndOfRangedAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->mOtherEndOfRangedAnnotation);

  return WeakRetained;
}

- (id)paragraphIds
{
  array = [MEMORY[0x277CBEB18] array];
  text = [(WDAnnotation *)self text];
  paragraphs = [text paragraphs];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__WDAnnotation_paragraphIds__block_invoke;
  v8[3] = &unk_2799CD978;
  v6 = array;
  v9 = v6;
  [paragraphs enumerateObjectsUsingBlock:v8];

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
  text = [(WDAnnotation *)self text];
  paragraphs = [text paragraphs];
  lastObject = [paragraphs lastObject];
  identifier = [lastObject identifier];

  return identifier;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDAnnotation;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end