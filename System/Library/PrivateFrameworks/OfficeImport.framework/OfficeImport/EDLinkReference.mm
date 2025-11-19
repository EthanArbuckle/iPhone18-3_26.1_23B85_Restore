@interface EDLinkReference
+ (id)linkReferenceWithLinkIndex:(unint64_t)a3 firstSheetIndex:(unint64_t)a4 lastSheetIndex:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLinkReference:(id)a3;
- (EDLinkReference)init;
- (EDLinkReference)initWithLinkIndex:(unint64_t)a3 firstSheetIndex:(unint64_t)a4 lastSheetIndex:(unint64_t)a5;
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

- (EDLinkReference)initWithLinkIndex:(unint64_t)a3 firstSheetIndex:(unint64_t)a4 lastSheetIndex:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = EDLinkReference;
  result = [(EDLinkReference *)&v9 init];
  if (result)
  {
    result->mLinkIndex = a3;
    result->mFirstSheetIndex = a4;
    result->mLastSheetIndex = a5;
  }

  return result;
}

+ (id)linkReferenceWithLinkIndex:(unint64_t)a3 firstSheetIndex:(unint64_t)a4 lastSheetIndex:(unint64_t)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithLinkIndex:a3 firstSheetIndex:a4 lastSheetIndex:a5];

  return v5;
}

- (BOOL)isEqualToLinkReference:(id)a3
{
  v4 = a3;
  v5 = *&self->mLinkIndex == *(v4 + 8) && self->mLastSheetIndex == *(v4 + 3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDLinkReference *)self isEqualToLinkReference:v5];
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