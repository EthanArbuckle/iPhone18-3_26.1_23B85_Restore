@interface OADProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)isMergedPropertyForSelector:(SEL)a3;
- (OADProperties)init;
- (OADProperties)initWithDefaults;
- (id)description;
- (id)overrideForSelector:(SEL)a3 mustExist:(BOOL)a4;
- (void)changeParentPreservingEffectiveValues:(id)a3;
- (void)flatten;
- (void)setMergedWithParent:(BOOL)a3;
- (void)setParent:(id)a3;
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
    v4 = [objc_opt_class() defaultProperties];
    [(OADProperties *)v3 setParent:v4];
  }

  return v3;
}

- (void)setParent:(id)a3
{
  v7 = a3;
  v5 = [(OADProperties *)v7 parent];
  if (v5)
  {
    do
    {
      v6 = [v5 parent];

      v5 = v6;
    }

    while (v6);
  }

  if (v7 != self)
  {
    objc_storeStrong(&self->mParent, a3);
  }
}

- (void)setMergedWithParent:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (id)overrideForSelector:(SEL)a3 mustExist:(BOOL)a4
{
  v6 = self;
  while (1)
  {
    v7 = *(v6 + 16);
    *(v6 + 16) = v7 & 0xFD;
    v8 = ([(OADProperties *)v6 methodForSelector:a3])(v6, a3);
    *(v6 + 16) = *(v6 + 16) & 0xFD | v7 & 2;
    if (v8)
    {
      break;
    }

    mParent = v6->mParent;
    if (!mParent && a4)
    {
      break;
    }

    v10 = mParent;

    v6 = v10;
    if (!mParent)
    {
      v6 = 0;
      break;
    }
  }

  return v6;
}

- (BOOL)isMergedPropertyForSelector:(SEL)a3
{
  mParent = self->mParent;
  if (!mParent || (*(self + 16) & 2) == 0 || (*(mParent + 16) & 1) == 0)
  {
    return 0;
  }

  v6 = [(OADProperties *)mParent methodForSelector:?];
  v7 = self->mParent;

  return v6(v7, a3);
}

- (void)changeParentPreservingEffectiveValues:(id)a3
{
  v5 = a3;
  [(OADProperties *)self setMergedWithParent:0];
  [(OADProperties *)self fixPropertiesForChangingParentPreservingEffectiveValues:v5];
  v4 = [(OADProperties *)self parent];

  if (v4 != v5)
  {
    [(OADProperties *)self setParent:v5];
  }
}

- (void)flatten
{
  [(OADProperties *)self setMergedWithParent:1];
  [(OADProperties *)self setMerged:1];
  mParent = self->mParent;

  [(OADProperties *)mParent flatten];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [v6 parent];
    v8 = (v7 != 0) ^ (self->mParent == 0);

    if (v8)
    {
      v9 = [v6 parent];
      if (!v9 || ([v6 parent], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", self->mParent), v10, v9, (v11 & 1) != 0))
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