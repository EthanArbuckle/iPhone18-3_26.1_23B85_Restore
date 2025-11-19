@interface _HFSetContainer
+ (id)containerWithObject:(id)a3 atIndex:(unint64_t)a4 comparator:(id)a5 hashGenerator:(id)a6;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _HFSetContainer

+ (id)containerWithObject:(id)a3 atIndex:(unint64_t)a4 comparator:(id)a5 hashGenerator:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(_HFSetContainer);
  [(_HFSetContainer *)v12 setObject:v11];

  [(_HFSetContainer *)v12 setIndex:a4];
  [(_HFSetContainer *)v12 setComparator:v10];

  [(_HFSetContainer *)v12 setHashGenerator:v9];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_HFSetContainer *)v4 object];
      v6 = [(_HFSetContainer *)self comparator];
      if (v6)
      {
        v7 = [(_HFSetContainer *)self comparator];
        v8 = [(_HFSetContainer *)self object];
        v9 = (v7)[2](v7, v8, v5);
      }

      else
      {
        v7 = [(_HFSetContainer *)self object];
        v9 = [v7 isEqual:v5];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(_HFSetContainer *)self hashGenerator];
  if (v3)
  {
    v4 = [(_HFSetContainer *)self hashGenerator];
    v5 = [(_HFSetContainer *)self object];
    v6 = (v4)[2](v4, v5);
  }

  else
  {
    v4 = [(_HFSetContainer *)self object];
    v6 = [v4 hash];
  }

  return v6;
}

@end