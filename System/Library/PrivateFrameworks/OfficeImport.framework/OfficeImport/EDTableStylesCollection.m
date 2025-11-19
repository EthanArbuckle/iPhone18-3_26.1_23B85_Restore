@interface EDTableStylesCollection
- (id)objectWithName:(id)a3;
- (void)setDefaultPivotStyleName:(id)a3;
- (void)setDefaultTableStyleName:(id)a3;
@end

@implementation EDTableStylesCollection

- (id)objectWithName:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = [(EDCollection *)self count]) != 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(EDCollection *)self objectAtIndex:v6];
      v8 = [v7 name];
      v9 = v8;
      if (v8)
      {
        if ([v8 isEqualToString:v4])
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

- (void)setDefaultTableStyleName:(id)a3
{
  v5 = a3;
  if (self->mDefaultTableStyleName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mDefaultTableStyleName, a3);
    v5 = v6;
  }
}

- (void)setDefaultPivotStyleName:(id)a3
{
  v5 = a3;
  if (self->mDefaultPivotStyleName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mDefaultPivotStyleName, a3);
    v5 = v6;
  }
}

@end