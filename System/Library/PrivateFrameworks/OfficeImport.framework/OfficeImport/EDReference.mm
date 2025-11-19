@interface EDReference
+ (EDReference)referenceWithAreaReference:(EDAreaReference *)a3;
+ (EDReference)referenceWithFirstRow:(int)a3 lastRow:(int)a4 firstColumn:(int)a5 lastColumn:(int)a6;
+ (EDReference)referenceWithReference:(id)a3;
+ (id)reference;
- (BOOL)fullyAdjacentToReference:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReference:(id)a3;
- (BOOL)isValidAreaReference;
- (EDAreaReference)areaReference;
- (EDReference)init;
- (EDReference)initWithFirstRow:(int)a3 lastRow:(int)a4 firstColumn:(int)a5 lastColumn:(int)a6;
- (EDReference)initWithReference:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)countOfCellsBeingReferenced;
- (void)unionWithFirstRow:(int)a3 lastRow:(int)a4 firstColumn:(int)a5 lastColumn:(int)a6;
- (void)unionWithReference:(id)a3;
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

- (void)unionWithReference:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EDReference *)self unionWithFirstRow:v4[2] lastRow:v4[4] firstColumn:v4[3] lastColumn:v4[5]];
    }
  }
}

- (void)unionWithFirstRow:(int)a3 lastRow:(int)a4 firstColumn:(int)a5 lastColumn:(int)a6
{
  v6 = *&self->mAreaReference.firstRow;
  v7 = vceq_s32(v6, -1);
  v8 = vbsl_s8(vbic_s8(vmvn_s8(vceq_s32(__PAIR64__(a5, a3), -1)), v7), vmin_s32(v6, __PAIR64__(a5, a3)), vbsl_s8(v7, __PAIR64__(a5, a3), v6));
  v9 = vmax_s32(*&self->mAreaReference.lastRow, __PAIR64__(a6, a4));
  *&self->mAreaReference.firstRow = v8;
  *&self->mAreaReference.lastRow = v9;
}

- (EDReference)initWithFirstRow:(int)a3 lastRow:(int)a4 firstColumn:(int)a5 lastColumn:(int)a6
{
  v11.receiver = self;
  v11.super_class = EDReference;
  result = [(EDReference *)&v11 init];
  if (result)
  {
    result->mAreaReference.firstRow = a3;
    result->mAreaReference.firstColumn = a5;
    result->mAreaReference.lastRow = a4;
    result->mAreaReference.lastColumn = a6;
  }

  return result;
}

- (EDReference)initWithReference:(id)a3
{
  v4 = a3;
  v8[0] = [v4 areaReference];
  v8[1] = v5;
  v6 = [(EDReference *)self initWithAreaReference:v8];

  return v6;
}

+ (id)reference
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (EDReference)referenceWithFirstRow:(int)a3 lastRow:(int)a4 firstColumn:(int)a5 lastColumn:(int)a6
{
  v6 = [objc_alloc(objc_opt_class()) initWithFirstRow:*&a3 lastRow:*&a4 firstColumn:*&a5 lastColumn:*&a6];

  return v6;
}

+ (EDReference)referenceWithAreaReference:(EDAreaReference *)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithAreaReference:a3];

  return v3;
}

+ (EDReference)referenceWithReference:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithReference:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithAreaReference:&self->mAreaReference];
}

- (BOOL)isEqualToReference:(id)a3
{
  v4 = a3;
  v5 = self->mAreaReference.firstRow == v4[2] && self->mAreaReference.lastRow == v4[4] && self->mAreaReference.firstColumn == v4[3] && self->mAreaReference.lastColumn == v4[5];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDReference *)self isEqualToReference:v5];
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

- (BOOL)fullyAdjacentToReference:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  firstRow = self->mAreaReference.firstRow;
  v6 = v4[2];
  if (firstRow == v6 && self->mAreaReference.lastRow == v4[4])
  {
    if (self->mAreaReference.firstColumn != v4[5] + 1)
    {
      v7 = self->mAreaReference.lastColumn == v4[3] - 1;
      goto LABEL_14;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_12;
  }

  if (self->mAreaReference.firstColumn != v4[3] || self->mAreaReference.lastColumn != v4[5])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (firstRow == v4[4] + 1)
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