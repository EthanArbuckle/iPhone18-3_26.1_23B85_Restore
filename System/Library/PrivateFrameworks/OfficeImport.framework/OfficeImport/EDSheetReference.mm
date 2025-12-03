@interface EDSheetReference
+ (id)referenceWithSheetIndex:(unint64_t)index firstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn;
- (BOOL)fullyAdjacentToReference:(id)reference;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTableReference:(id)reference;
- (EDSheetReference)init;
- (EDSheetReference)initWithSheetIndex:(unint64_t)index firstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn;
- (id)description;
- (unint64_t)hash;
- (void)unionWithReference:(id)reference;
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

- (EDSheetReference)initWithSheetIndex:(unint64_t)index firstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn
{
  v9.receiver = self;
  v9.super_class = EDSheetReference;
  result = [(EDReference *)&v9 initWithFirstRow:*&row lastRow:*&lastRow firstColumn:*&column lastColumn:*&lastColumn];
  if (result)
  {
    result->mSheetIndex = index;
  }

  return result;
}

+ (id)referenceWithSheetIndex:(unint64_t)index firstRow:(int)row lastRow:(int)lastRow firstColumn:(int)column lastColumn:(int)lastColumn
{
  v7 = [objc_alloc(objc_opt_class()) initWithSheetIndex:index firstRow:*&row lastRow:*&lastRow firstColumn:*&column lastColumn:*&lastColumn];

  return v7;
}

- (BOOL)isEqualToTableReference:(id)reference
{
  referenceCopy = reference;
  if (self->mSheetIndex == referenceCopy[3])
  {
    v7.receiver = self;
    v7.super_class = EDSheetReference;
    v5 = [(EDReference *)&v7 isEqualToReference:referenceCopy];
  }

  else
  {
    v5 = 0;
  }

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDSheetReference *)self isEqualToTableReference:v5];
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

- (BOOL)fullyAdjacentToReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = referenceCopy;
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

- (void)unionWithReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->mSheetIndex != referenceCopy[3])
      {
        [TCMessageContext reportWarning:ECUnsupportedExportFormula];
      }

      v5.receiver = self;
      v5.super_class = EDSheetReference;
      [(EDReference *)&v5 unionWithReference:referenceCopy];
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