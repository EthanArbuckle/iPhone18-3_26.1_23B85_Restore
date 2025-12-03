@interface OADProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)isMergedPropertyForSelector:(SEL)selector;
- (OADProperties)init;
- (OADProperties)initWithDefaults;
- (id)description;
- (id)overrideForSelector:(SEL)selector mustExist:(BOOL)exist;
- (void)changeParentPreservingEffectiveValues:(id)values;
- (void)flatten;
- (void)setMergedWithParent:(BOOL)parent;
- (void)setParent:(id)parent;
@end

@implementation OADProperties

- (OADProperties)initWithDefaults
{
  v3.receiver = self;
  v3.super_class = OADProperties;
  result = [(OADProperties *)&v3 init];
  if (result)
  {
    *(result + 16) |= 3u;
  }

  return result;
}

- (OADProperties)init
{
  v6.receiver = self;
  v6.super_class = OADProperties;
  v2 = [(OADProperties *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 16) |= 3u;
    defaultProperties = [objc_opt_class() defaultProperties];
    [(OADProperties *)v3 setParent:defaultProperties];
  }

  return v3;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  parent = [(OADProperties *)parentCopy parent];
  if (parent)
  {
    do
    {
      v5Parent = [parent parent];

      parent = v5Parent;
    }

    while (v5Parent);
  }

  if (parentCopy != self)
  {
    objc_storeStrong(&self->mParent, parent);
  }
}

- (void)setMergedWithParent:(BOOL)parent
{
  if (parent)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (id)overrideForSelector:(SEL)selector mustExist:(BOOL)exist
{
  selfCopy = self;
  while (1)
  {
    v7 = *(selfCopy + 16);
    *(selfCopy + 16) = v7 & 0xFD;
    v8 = ([(OADProperties *)selfCopy methodForSelector:selector])(selfCopy, selector);
    *(selfCopy + 16) = *(selfCopy + 16) & 0xFD | v7 & 2;
    if (v8)
    {
      break;
    }

    mParent = selfCopy->mParent;
    if (!mParent && exist)
    {
      break;
    }

    v10 = mParent;

    selfCopy = v10;
    if (!mParent)
    {
      selfCopy = 0;
      break;
    }
  }

  return selfCopy;
}

- (BOOL)isMergedPropertyForSelector:(SEL)selector
{
  mParent = self->mParent;
  if (!mParent || (*(self + 16) & 2) == 0 || (*(mParent + 16) & 1) == 0)
  {
    return 0;
  }

  v6 = [(OADProperties *)mParent methodForSelector:?];
  v7 = self->mParent;

  return v6(v7, selector);
}

- (void)changeParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  [(OADProperties *)self setMergedWithParent:0];
  [(OADProperties *)self fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  parent = [(OADProperties *)self parent];

  if (parent != valuesCopy)
  {
    [(OADProperties *)self setParent:valuesCopy];
  }
}

- (void)flatten
{
  [(OADProperties *)self setMergedWithParent:1];
  [(OADProperties *)self setMerged:1];
  mParent = self->mParent;

  [(OADProperties *)mParent flatten];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = equalCopy;
    parent = [v6 parent];
    v8 = (parent != 0) ^ (self->mParent == 0);

    if (v8)
    {
      parent2 = [v6 parent];
      if (!parent2 || ([v6 parent], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", self->mParent), v10, parent2, (v11 & 1) != 0))
      {
        if ([v6 isMerged] == (*(self + 16) & 1))
        {
          [v6 isMergedWithParent];
        }
      }
    }
  }

  return isKindOfClass & 1;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADProperties;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

@end