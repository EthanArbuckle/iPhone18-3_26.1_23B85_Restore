@interface ML3DatabaseCachedRow
- (ML3DatabaseCachedRow)initWithArray:(id)a3;
- (const)cStringForColumnIndex:(unint64_t)a3;
- (double)doubleForColumnIndex:(unint64_t)a3;
- (id)_numberOrZeroForColumnIndex:(unint64_t)a3;
- (id)arrayRepresentation;
- (id)dictionaryRepresentation;
- (id)valueForColumnIndex:(unint64_t)a3;
- (int)intForColumnIndex:(unint64_t)a3;
- (int64_t)int64ForColumnIndex:(unint64_t)a3;
- (void)getBlobBytes:(const void *)a3 outLength:(int *)a4 forColumnIndex:(unint64_t)a5;
@end

@implementation ML3DatabaseCachedRow

- (id)_numberOrZeroForColumnIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_arrayRepresentation objectAtIndex:a3];
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

- (id)valueForColumnIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_arrayRepresentation objectAtIndex:a3];
  v4 = [MEMORY[0x277CBEB68] null];

  if (v3 == v4)
  {

    v3 = 0;
  }

  return v3;
}

- (void)getBlobBytes:(const void *)a3 outLength:(int *)a4 forColumnIndex:(unint64_t)a5
{
  v9 = [(ML3DatabaseCachedRow *)self dataForColumnIndex:a5];
  v10 = v9;
  if (v9)
  {
    v13 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"ML3DatabaseCachedRow.m" lineNumber:80 description:@"Attempted to read cached blob data from non-NSData type."];
    }

    *a4 = [v13 length];
    v11 = v13;
    v9 = [v13 bytes];
    v10 = v13;
  }

  else
  {
    *a4 = 0;
  }

  *a3 = v9;

  MEMORY[0x2821F96F8](v9, v10);
}

- (const)cStringForColumnIndex:(unint64_t)a3
{
  v3 = [(ML3DatabaseCachedRow *)self valueForColumnIndex:a3];
  v4 = [v3 UTF8String];

  return v4;
}

- (int64_t)int64ForColumnIndex:(unint64_t)a3
{
  v3 = [(ML3DatabaseCachedRow *)self _numberOrZeroForColumnIndex:a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (int)intForColumnIndex:(unint64_t)a3
{
  v3 = [(ML3DatabaseCachedRow *)self _numberOrZeroForColumnIndex:a3];
  v4 = [v3 intValue];

  return v4;
}

- (double)doubleForColumnIndex:(unint64_t)a3
{
  v3 = [(ML3DatabaseCachedRow *)self _numberOrZeroForColumnIndex:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (ML3DatabaseCachedRow)initWithArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ML3DatabaseCachedRow;
  v6 = [(ML3DatabaseRow *)&v9 initWithParentResult:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_arrayRepresentation, a3);
  }

  return v7;
}

@end