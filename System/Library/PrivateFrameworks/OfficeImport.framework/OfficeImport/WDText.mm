@interface WDText
- (BOOL)isEmpty;
- (WDDocument)document;
- (WDTableCell)tableCell;
- (WDText)initWithDocument:(id)document textType:(int)type tableCell:(id)cell;
- (id)addParagraph;
- (id)addParagraphAtIndex:(int)index;
- (id)addTable;
- (id)addTableAtIndex:(int)index;
- (id)blockIterator;
- (id)content;
- (id)description;
- (id)firstParagraph;
- (id)newBlockIterator;
- (id)newRunIterator;
- (id)paragraphs;
- (id)runIterator;
- (int)tableNestingLevel;
- (void)removeLastCharacter:(unsigned __int16)character;
@end

@implementation WDText

- (int)tableNestingLevel
{
  WeakRetained = objc_loadWeakRetained(&self->mTableCell);

  if (!WeakRetained)
  {
    return 1;
  }

  if ([(WDText *)self textType]== 4)
  {
    v4 = objc_loadWeakRetained(&self->mTableCell);
    text = [v4 text];
    textType = [text textType];

    if (textType != 4)
    {
      return 1;
    }
  }

  v7 = objc_loadWeakRetained(&self->mTableCell);
  v8 = [v7 row];
  table = [v8 table];
  v10 = [table nestingLevel] + 1;

  return v10;
}

- (id)addParagraph
{
  v3 = [[WDParagraph alloc] initWithText:self];
  [(NSMutableArray *)self->mBlocks addObject:v3];

  return v3;
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

- (id)addTable
{
  v3 = [[WDTable alloc] initWithText:self];
  [(NSMutableArray *)self->mBlocks addObject:v3];

  return v3;
}

- (WDTableCell)tableCell
{
  WeakRetained = objc_loadWeakRetained(&self->mTableCell);

  return WeakRetained;
}

- (WDText)initWithDocument:(id)document textType:(int)type tableCell:(id)cell
{
  documentCopy = document;
  cellCopy = cell;
  v15.receiver = self;
  v15.super_class = WDText;
  v10 = [(WDText *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->mDocument, documentCopy);
    v11->mTextType = type;
    objc_storeWeak(&v11->mTableCell, cellCopy);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mBlocks = v11->mBlocks;
    v11->mBlocks = v12;
  }

  return v11;
}

- (id)addParagraphAtIndex:(int)index
{
  v5 = [[WDParagraph alloc] initWithText:self];
  [(NSMutableArray *)self->mBlocks insertObject:v5 atIndex:index];

  return v5;
}

- (id)firstParagraph
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  mBlocks = self->mBlocks;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__WDText_firstParagraph__block_invoke;
  v5[3] = &unk_2799C68F8;
  v5[4] = &v6;
  [(NSMutableArray *)mBlocks enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __24__WDText_firstParagraph__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = objc_opt_class();
  v7 = TSUDynamicCast(v6, v13);
  v8 = v7;
  if (v7 && ![v7 blockType])
  {
    v9 = objc_opt_class();
    v10 = TSUDynamicCast(v9, v8);
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

- (id)paragraphs
{
  array = [MEMORY[0x277CBEB18] array];
  mBlocks = self->mBlocks;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __20__WDText_paragraphs__block_invoke;
  v7[3] = &unk_2799CD978;
  v5 = array;
  v8 = v5;
  [(NSMutableArray *)mBlocks enumerateObjectsUsingBlock:v7];

  return v5;
}

void __20__WDText_paragraphs__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_class();
  v4 = TSUDynamicCast(v3, v8);
  v5 = v4;
  if (v4 && ![v4 blockType])
  {
    v6 = objc_opt_class();
    v7 = TSUDynamicCast(v6, v5);
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }
  }
}

- (id)addTableAtIndex:(int)index
{
  v5 = [[WDTable alloc] initWithText:self];
  [(NSMutableArray *)self->mBlocks insertObject:v5 atIndex:index];

  return v5;
}

- (void)removeLastCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v5 = [(NSMutableArray *)self->mBlocks count];
  if (v5)
  {
    v7 = [(NSMutableArray *)self->mBlocks objectAtIndex:v5 - 1];
    if (![v7 blockType])
    {
      v6 = v7;
      [v6 removeLastCharacter:characterCopy];
      if (![v6 runCount])
      {
        [(NSMutableArray *)self->mBlocks removeLastObject];
      }
    }
  }
}

- (id)blockIterator
{
  v2 = [[WDArrayIterator alloc] initWithArray:self->mBlocks];

  return v2;
}

- (id)newBlockIterator
{
  v3 = [WDArrayIterator alloc];
  mBlocks = self->mBlocks;

  return [(WDArrayIterator *)v3 initWithArray:mBlocks];
}

- (id)runIterator
{
  v3 = [WDBlockRunIterator alloc];
  blockIterator = [(WDText *)self blockIterator];
  v5 = [(WDCombinedIterator *)v3 initWithParentIterator:blockIterator];

  return v5;
}

- (id)newRunIterator
{
  newBlockIterator = [(WDText *)self newBlockIterator];
  v3 = [(WDCombinedIterator *)[WDBlockRunIterator alloc] initWithParentIterator:newBlockIterator];

  return v3;
}

- (BOOL)isEmpty
{
  if (![(NSMutableArray *)self->mBlocks count])
  {
    return 1;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = [(NSMutableArray *)self->mBlocks objectAtIndex:v3];
    isEmpty = [v5 isEmpty];

    if ((isEmpty & 1) == 0)
    {
      break;
    }

    v3 = v4;
  }

  while ([(NSMutableArray *)self->mBlocks count]> v4++);
  return isEmpty;
}

- (id)content
{
  string = [MEMORY[0x277CCAB68] string];
  newRunIterator = [(WDText *)self newRunIterator];
  while ([newRunIterator hasNext])
  {
    next = [newRunIterator next];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string2 = [next string];
      [string appendString:string2];
    }
  }

  return string;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDText;
  v2 = [(WDText *)&v4 description];

  return v2;
}

@end