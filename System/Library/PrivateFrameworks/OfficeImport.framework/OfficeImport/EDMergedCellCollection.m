@interface EDMergedCellCollection
- (id)referenceContainingRow:(int)a3 column:(int)a4;
- (unint64_t)addObject:(id)a3;
@end

@implementation EDMergedCellCollection

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  if ([v4 isValidAreaReference])
  {
    v7.receiver = self;
    v7.super_class = EDMergedCellCollection;
    v5 = [(EDCollection *)&v7 addObject:v4];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (id)referenceContainingRow:(int)a3 column:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v7 = [(EDCollection *)self count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(EDCollection *)self objectAtIndex:v9];
      if ([v10 containsRow:v5 column:v4])
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

@end