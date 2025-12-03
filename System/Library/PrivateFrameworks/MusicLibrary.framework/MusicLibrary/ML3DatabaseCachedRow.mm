@interface ML3DatabaseCachedRow
- (ML3DatabaseCachedRow)initWithArray:(id)array;
- (const)cStringForColumnIndex:(unint64_t)index;
- (double)doubleForColumnIndex:(unint64_t)index;
- (id)_numberOrZeroForColumnIndex:(unint64_t)index;
- (id)arrayRepresentation;
- (id)dictionaryRepresentation;
- (id)valueForColumnIndex:(unint64_t)index;
- (int)intForColumnIndex:(unint64_t)index;
- (int64_t)int64ForColumnIndex:(unint64_t)index;
- (void)getBlobBytes:(const void *)bytes outLength:(int *)length forColumnIndex:(unint64_t)index;
@end

@implementation ML3DatabaseCachedRow

- (id)_numberOrZeroForColumnIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_arrayRepresentation objectAtIndex:index];
  if (!v3 || ([MEMORY[0x277CBEB68] null], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {

    v3 = &unk_2840CA508;
  }

  return v3;
}

- (id)arrayRepresentation
{
  v2 = [(NSArray *)self->_arrayRepresentation copy];

  return v2;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_arrayRepresentation, "count")}];
  if ([(NSArray *)self->_arrayRepresentation count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_arrayRepresentation objectAtIndexedSubscript:v4];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      [v3 setObject:v5 forKey:v6];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_arrayRepresentation count]);
  }

  return v3;
}

- (id)valueForColumnIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_arrayRepresentation objectAtIndex:index];
  null = [MEMORY[0x277CBEB68] null];

  if (v3 == null)
  {

    v3 = 0;
  }

  return v3;
}

- (void)getBlobBytes:(const void *)bytes outLength:(int *)length forColumnIndex:(unint64_t)index
{
  bytes = [(ML3DatabaseCachedRow *)self dataForColumnIndex:index];
  v10 = bytes;
  if (bytes)
  {
    v13 = bytes;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseCachedRow.m" lineNumber:80 description:@"Attempted to read cached blob data from non-NSData type."];
    }

    *length = [v13 length];
    v11 = v13;
    bytes = [v13 bytes];
    v10 = v13;
  }

  else
  {
    *length = 0;
  }

  *bytes = bytes;

  MEMORY[0x2821F96F8](bytes, v10);
}

- (const)cStringForColumnIndex:(unint64_t)index
{
  v3 = [(ML3DatabaseCachedRow *)self valueForColumnIndex:index];
  uTF8String = [v3 UTF8String];

  return uTF8String;
}

- (int64_t)int64ForColumnIndex:(unint64_t)index
{
  v3 = [(ML3DatabaseCachedRow *)self _numberOrZeroForColumnIndex:index];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int)intForColumnIndex:(unint64_t)index
{
  v3 = [(ML3DatabaseCachedRow *)self _numberOrZeroForColumnIndex:index];
  intValue = [v3 intValue];

  return intValue;
}

- (double)doubleForColumnIndex:(unint64_t)index
{
  v3 = [(ML3DatabaseCachedRow *)self _numberOrZeroForColumnIndex:index];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (ML3DatabaseCachedRow)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = ML3DatabaseCachedRow;
  v6 = [(ML3DatabaseRow *)&v9 initWithParentResult:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_arrayRepresentation, array);
  }

  return v7;
}

@end