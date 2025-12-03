@interface EDLinkReference
+ (id)linkReferenceWithLinkIndex:(unint64_t)index firstSheetIndex:(unint64_t)sheetIndex lastSheetIndex:(unint64_t)lastSheetIndex;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLinkReference:(id)reference;
- (EDLinkReference)init;
- (EDLinkReference)initWithLinkIndex:(unint64_t)index firstSheetIndex:(unint64_t)sheetIndex lastSheetIndex:(unint64_t)lastSheetIndex;
- (id)description;
@end

@implementation EDLinkReference

- (EDLinkReference)init
{
  v3.receiver = self;
  v3.super_class = EDLinkReference;
  result = [(EDLinkReference *)&v3 init];
  if (result)
  {
    result->mFirstSheetIndex = -1;
    result->mLastSheetIndex = -1;
    result->mLinkIndex = -1;
  }

  return result;
}

- (EDLinkReference)initWithLinkIndex:(unint64_t)index firstSheetIndex:(unint64_t)sheetIndex lastSheetIndex:(unint64_t)lastSheetIndex
{
  v9.receiver = self;
  v9.super_class = EDLinkReference;
  result = [(EDLinkReference *)&v9 init];
  if (result)
  {
    result->mLinkIndex = index;
    result->mFirstSheetIndex = sheetIndex;
    result->mLastSheetIndex = lastSheetIndex;
  }

  return result;
}

+ (id)linkReferenceWithLinkIndex:(unint64_t)index firstSheetIndex:(unint64_t)sheetIndex lastSheetIndex:(unint64_t)lastSheetIndex
{
  v5 = [objc_alloc(objc_opt_class()) initWithLinkIndex:index firstSheetIndex:sheetIndex lastSheetIndex:lastSheetIndex];

  return v5;
}

- (BOOL)isEqualToLinkReference:(id)reference
{
  referenceCopy = reference;
  v5 = *&self->mLinkIndex == *(referenceCopy + 8) && self->mLastSheetIndex == *(referenceCopy + 3);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDLinkReference *)self isEqualToLinkReference:v5];
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDLinkReference;
  v2 = [(EDLinkReference *)&v4 description];

  return v2;
}

@end