@interface EDLinksCollection
- (BOOL)convertLinkReferenceIndex:(unint64_t)index firstSheetIndex:(unint64_t *)sheetIndex lastSheetIndex:(unint64_t *)lastSheetIndex;
- (EDLinksCollection)init;
- (id)description;
- (id)linkAtIndex:(unint64_t)index;
- (id)referenceAtIndex:(unint64_t)index;
- (unint64_t)addLink:(id)link;
- (unint64_t)addOrEquivalentLinkReferenceOfType:(int)type firstSheetIndex:(unint64_t)index lastSheetIndex:(unint64_t)sheetIndex;
- (unint64_t)addReference:(id)reference;
- (unint64_t)indexOfFirstLinkWithType:(int)type;
- (unint64_t)indexOfReference:(id)reference;
- (unint64_t)linkIndexCreateIfNeededWithType:(int)type;
- (void)addOrEquivalentExternalAddInName:(id)name linkReferenceIndex:(unint64_t *)index nameIndex:(unint64_t *)nameIndex;
@end

@implementation EDLinksCollection

- (EDLinksCollection)init
{
  v8.receiver = self;
  v8.super_class = EDLinksCollection;
  v2 = [(EDLinksCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mLinks = v2->mLinks;
    v2->mLinks = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mReferences = v2->mReferences;
    v2->mReferences = v5;
  }

  return v2;
}

- (id)linkAtIndex:(unint64_t)index
{
  if ([(EDLinksCollection *)self linksCount]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mLinks objectAtIndex:index];
  }

  return v5;
}

- (unint64_t)indexOfFirstLinkWithType:(int)type
{
  v5 = [(NSMutableArray *)self->mLinks count];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = [(NSMutableArray *)self->mLinks objectAtIndex:v7];
    if (v8)
    {
      v9 = v8;
      type = [v8 type];

      if (type == type)
      {
        break;
      }
    }

    if (v6 == ++v7)
    {
      return -1;
    }
  }

  return v7;
}

- (unint64_t)addLink:(id)link
{
  linkCopy = link;
  if (linkCopy)
  {
    [(NSMutableArray *)self->mLinks addObject:linkCopy];
    v5 = [(NSMutableArray *)self->mLinks count]- 1;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (unint64_t)linkIndexCreateIfNeededWithType:(int)type
{
  v3 = *&type;
  v5 = [(EDLinksCollection *)self indexOfFirstLinkWithType:?];
  if (v5 == -1)
  {
    v6 = [EDLink linkWithType:v3];
    v5 = [(EDLinksCollection *)self addLink:v6];
  }

  return v5;
}

- (id)referenceAtIndex:(unint64_t)index
{
  if ([(EDLinksCollection *)self referencesCount]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mReferences objectAtIndex:index];
  }

  return v5;
}

- (unint64_t)indexOfReference:(id)reference
{
  result = [(NSMutableArray *)self->mReferences indexOfObject:reference];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

- (unint64_t)addReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    [(NSMutableArray *)self->mReferences addObject:referenceCopy];
    v5 = [(NSMutableArray *)self->mReferences count]- 1;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (BOOL)convertLinkReferenceIndex:(unint64_t)index firstSheetIndex:(unint64_t *)sheetIndex lastSheetIndex:(unint64_t *)lastSheetIndex
{
  *sheetIndex = -1;
  *lastSheetIndex = -1;
  v8 = [(EDLinksCollection *)self referenceAtIndex:index];
  v9 = -[EDLinksCollection linkAtIndex:](self, "linkAtIndex:", [v8 linkIndex]);
  v10 = v9;
  if (v9 && [v9 type] == 1)
  {
    *sheetIndex = [v8 firstSheetIndex];
    *lastSheetIndex = [v8 lastSheetIndex];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)addOrEquivalentLinkReferenceOfType:(int)type firstSheetIndex:(unint64_t)index lastSheetIndex:(unint64_t)sheetIndex
{
  v6 = [EDLinkReference linkReferenceWithLinkIndex:[(EDLinksCollection *)self linkIndexCreateIfNeededWithType:*&type] firstSheetIndex:index lastSheetIndex:sheetIndex];
  v7 = [(EDLinksCollection *)self indexOfReference:v6];
  if (v7 == -1)
  {
    v7 = [(EDLinksCollection *)self addReference:v6];
  }

  return v7;
}

- (void)addOrEquivalentExternalAddInName:(id)name linkReferenceIndex:(unint64_t *)index nameIndex:(unint64_t *)nameIndex
{
  nameCopy = name;
  v8 = [(EDLinksCollection *)self addOrEquivalentLinkReferenceOfType:3 firstSheetIndex:65534 lastSheetIndex:65534];
  *index = v8;
  if (v8 == -1)
  {
    *nameIndex = -1;
  }

  else
  {
    v9 = [(EDLinksCollection *)self referenceAtIndex:v8];
    v10 = -[EDLinksCollection linkAtIndex:](self, "linkAtIndex:", [v9 linkIndex]);
    externalNames = [v10 externalNames];
    v12 = [EDString edStringWithString:nameCopy];
    *nameIndex = [externalNames addOrEquivalentObject:v12];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDLinksCollection;
  v2 = [(EDLinksCollection *)&v4 description];

  return v2;
}

@end