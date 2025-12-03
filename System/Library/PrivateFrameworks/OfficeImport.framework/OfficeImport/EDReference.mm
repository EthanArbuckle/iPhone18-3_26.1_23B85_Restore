@interface EDReference
+ (EDReference)referenceWithAreaReference:(EDAreaReference *)reference;
+ (EDReference)referenceWithFirstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn;
+ (EDReference)referenceWithReference:(id)reference;
+ (id)reference;
- (BOOL)fullyAdjacentToReference:(id)reference;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReference:(id)reference;
- (BOOL)isValidAreaReference;
- (EDAreaReference)areaReference;
- (EDReference)init;
- (EDReference)initWithFirstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn;
- (EDReference)initWithReference:(id)reference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)countOfCellsBeingReferenced;
- (void)unionWithFirstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn;
- (void)unionWithReference:(id)reference;
@end

@implementation EDReference

- (BOOL)isValidAreaReference
{
  firstRow = self->mAreaReference.firstRow;
  if ((firstRow & 0x80000000) != 0)
  {
    return 0;
  }

  lastRow = self->mAreaReference.lastRow;
  if ((lastRow & 0x80000000) != 0)
  {
    return 0;
  }

  firstColumn = self->mAreaReference.firstColumn;
  if (firstColumn < 0)
  {
    return 0;
  }

  lastColumn = self->mAreaReference.lastColumn;
  if (firstRow > lastRow || lastColumn < 0)
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = __OFSUB__(firstColumn, lastColumn);
    v7 = firstColumn == lastColumn;
    v8 = firstColumn - lastColumn < 0;
  }

  return (v8 ^ v9 | v7) != 0;
}

- (EDReference)init
{
  v3.receiver = self;
  v3.super_class = EDReference;
  result = [(EDReference *)&v3 init];
  if (result)
  {
    *&result->mAreaReference.firstRow = -1;
    *&result->mAreaReference.lastRow = -1;
  }

  return result;
}

- (unint64_t)countOfCellsBeingReferenced
{
  if ([(EDReference *)self isValidCellReference])
  {
    return 1;
  }

  if (![(EDReference *)self isValidAreaReference])
  {
    return 0;
  }

  v4 = vadd_s32(vsub_s32(*&self->mAreaReference.lastRow, *&self->mAreaReference.firstRow), 0x100000001);
  return v4.i32[1] * v4.i32[0];
}

- (void)unionWithReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EDReference *)self unionWithFirstRow:referenceCopy[2] lastRow:referenceCopy[4] firstColumn:referenceCopy[3] lastColumn:referenceCopy[5]];
    }
  }
}

- (void)unionWithFirstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn
{
  v6 = *&self->mAreaReference.firstRow;
  v7 = vceq_s32(v6, -1);
  v8 = vbsl_s8(vbic_s8(vmvn_s8(vceq_s32(__PAIR64__(column, row), -1)), v7), vmin_s32(v6, __PAIR64__(column, row)), vbsl_s8(v7, __PAIR64__(column, row), v6));
  v9 = vmax_s32(*&self->mAreaReference.lastRow, __PAIR64__(lastColumn, lastRow));
  *&self->mAreaReference.firstRow = v8;
  *&self->mAreaReference.lastRow = v9;
}

- (EDReference)initWithFirstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn
{
  v11.receiver = self;
  v11.super_class = EDReference;
  result = [(EDReference *)&v11 init];
  if (result)
  {
    result->mAreaReference.firstRow = row;
    result->mAreaReference.firstColumn = column;
    result->mAreaReference.lastRow = lastRow;
    result->mAreaReference.lastColumn = lastColumn;
  }

  return result;
}

- (EDReference)initWithReference:(id)reference
{
  referenceCopy = reference;
  v8[0] = [referenceCopy areaReference];
  v8[1] = v5;
  v6 = [(EDReference *)self initWithAreaReference:v8];

  return v6;
}

+ (id)reference
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (EDReference)referenceWithFirstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn
{
  v6 = [objc_alloc(objc_opt_class()) initWithFirstRow:*&row lastRow:*&lastRow firstColumn:*&column lastColumn:*&lastColumn];

  return v6;
}

+ (EDReference)referenceWithAreaReference:(EDAreaReference *)reference
{
  v3 = [objc_alloc(objc_opt_class()) initWithAreaReference:reference];

  return v3;
}

+ (EDReference)referenceWithReference:(id)reference
{
  referenceCopy = reference;
  v4 = [objc_alloc(objc_opt_class()) initWithReference:referenceCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithAreaReference:&self->mAreaReference];
}

- (BOOL)isEqualToReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->mAreaReference.firstRow == referenceCopy[2] && self->mAreaReference.lastRow == referenceCopy[4] && self->mAreaReference.firstColumn == referenceCopy[3] && self->mAreaReference.lastColumn == referenceCopy[5];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDReference *)self isEqualToReference:v5];
  }

  return v6;
}

- (EDAreaReference)areaReference
{
  v2 = *&self->mAreaReference.lastRow;
  v3 = *&self->mAreaReference.firstRow;
  result.lastRow = v2;
  result.lastColumn = HIDWORD(v2);
  result.firstRow = v3;
  result.firstColumn = HIDWORD(v3);
  return result;
}

- (BOOL)fullyAdjacentToReference:(id)reference
{
  referenceCopy = reference;
  if (!referenceCopy)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  firstRow = self->mAreaReference.firstRow;
  v6 = referenceCopy[2];
  if (firstRow == v6 && self->mAreaReference.lastRow == referenceCopy[4])
  {
    if (self->mAreaReference.firstColumn != referenceCopy[5] + 1)
    {
      v7 = self->mAreaReference.lastColumn == referenceCopy[3] - 1;
      goto LABEL_14;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_12;
  }

  if (self->mAreaReference.firstColumn != referenceCopy[3] || self->mAreaReference.lastColumn != referenceCopy[5])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (firstRow == referenceCopy[4] + 1)
  {
    goto LABEL_10;
  }

  v7 = self->mAreaReference.lastRow == v6 - 1;
LABEL_14:
  v8 = v7;
LABEL_12:

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDReference;
  v2 = [(EDReference *)&v4 description];

  return v2;
}

@end