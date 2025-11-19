@interface EDSheetReference
+ (id)referenceWithSheetIndex:(unint64_t)a3 firstRow:(int)a4 lastRow:(int)a5 firstColumn:(int)a6 lastColumn:(int)a7;
- (BOOL)fullyAdjacentToReference:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTableReference:(id)a3;
- (EDSheetReference)init;
- (EDSheetReference)initWithSheetIndex:(unint64_t)a3 firstRow:(int)a4 lastRow:(int)a5 firstColumn:(int)a6 lastColumn:(int)a7;
- (id)description;
- (unint64_t)hash;
- (void)unionWithReference:(id)a3;
@end

@implementation EDSheetReference

- (EDSheetReference)init
{
  v3.receiver = self;
  v3.super_class = EDSheetReference;
  result = [(EDReference *)&v3 init];
  if (result)
  {
    result->mSheetIndex = -1;
  }

  return result;
}

- (EDSheetReference)initWithSheetIndex:(unint64_t)a3 firstRow:(int)a4 lastRow:(int)a5 firstColumn:(int)a6 lastColumn:(int)a7
{
  v9.receiver = self;
  v9.super_class = EDSheetReference;
  result = [(EDReference *)&v9 initWithFirstRow:*&a4 lastRow:*&a5 firstColumn:*&a6 lastColumn:*&a7];
  if (result)
  {
    result->mSheetIndex = a3;
  }

  return result;
}

+ (id)referenceWithSheetIndex:(unint64_t)a3 firstRow:(int)a4 lastRow:(int)a5 firstColumn:(int)a6 lastColumn:(int)a7
{
  v7 = [objc_alloc(objc_opt_class()) initWithSheetIndex:a3 firstRow:*&a4 lastRow:*&a5 firstColumn:*&a6 lastColumn:*&a7];

  return v7;
}

- (BOOL)isEqualToTableReference:(id)a3
{
  v4 = a3;
  if (self->mSheetIndex == v4[3])
  {
    v7.receiver = self;
    v7.super_class = EDSheetReference;
    v5 = [(EDReference *)&v7 isEqualToReference:v4];
  }

  else
  {
    v5 = 0;
  }

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDSheetReference *)self isEqualToTableReference:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  mSheetIndex = self->mSheetIndex;
  v4.receiver = self;
  v4.super_class = EDSheetReference;
  return [(EDReference *)&v4 hash]| (mSheetIndex << 8);
}

- (BOOL)fullyAdjacentToReference:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    if (self->mSheetIndex == v5[3])
    {
      v8.receiver = self;
      v8.super_class = EDSheetReference;
      v6 = [(EDReference *)&v8 fullyAdjacentToReference:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)unionWithReference:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->mSheetIndex != v4[3])
      {
        [TCMessageContext reportWarning:ECUnsupportedExportFormula];
      }

      v5.receiver = self;
      v5.super_class = EDSheetReference;
      [(EDReference *)&v5 unionWithReference:v4];
    }
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDSheetReference;
  v2 = [(EDReference *)&v4 description];

  return v2;
}

@end