@interface EDTableStylesCollection
- (id)objectWithName:(id)name;
- (void)setDefaultPivotStyleName:(id)name;
- (void)setDefaultTableStyleName:(id)name;
@end

@implementation EDTableStylesCollection

- (id)objectWithName:(id)name
{
  nameCopy = name;
  if (nameCopy && (v5 = [(EDCollection *)self count]) != 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(EDCollection *)self objectAtIndex:v6];
      name = [v7 name];
      v9 = name;
      if (name)
      {
        if ([name isEqualToString:nameCopy])
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

- (void)setDefaultTableStyleName:(id)name
{
  nameCopy = name;
  if (self->mDefaultTableStyleName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->mDefaultTableStyleName, name);
    nameCopy = v6;
  }
}

- (void)setDefaultPivotStyleName:(id)name
{
  nameCopy = name;
  if (self->mDefaultPivotStyleName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->mDefaultPivotStyleName, name);
    nameCopy = v6;
  }
}

@end