@interface EDCollectionWithPointerEquality
- (BOOL)isEqualToCollection:(id)a3;
@end

@implementation EDCollectionWithPointerEquality

- (BOOL)isEqualToCollection:(id)a3
{
  v4 = a3;
  v5 = [(EDCollection *)self count];
  if (v5 == [v4 count])
  {
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [(EDCollection *)self objectAtIndex:v6];
        v9 = [v4 objectAtIndex:v6];

        v10 = v8 == v9;
        if (!v10)
        {
          break;
        }
      }

      while (v7 != v6++);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end