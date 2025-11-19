@interface EQKitMathMLMRow
- (BOOL)isBaseFontNameUsed;
- (BOOL)isEmbellishedOperator;
- (EQKitMathMLMRow)init;
- (EQKitMathMLMRow)initWithChildren:(id)a3 node:(_xmlNode *)a4;
- (NSString)description;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)operatorCore;
- (void)dealloc;
@end

@implementation EQKitMathMLMRow

- (EQKitMathMLMRow)init
{
  v3 = [MEMORY[0x277CBEA60] array];

  return [(EQKitMathMLMRow *)self initWithChildren:v3];
}

- (EQKitMathMLMRow)initWithChildren:(id)a3 node:(_xmlNode *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = EQKitMathMLMRow;
  v6 = [(EQKitMathMLMRow *)&v17 init];
  if (v6)
  {
    v6->mChildren = a3;
    v6->mFlags.mImplied = a4 == 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    mChildren = v6->mChildren;
    v8 = [(NSArray *)mChildren countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(mChildren);
          }

          [*(*(&v13 + 1) + 8 * i) setParent:v6];
        }

        v9 = [(NSArray *)mChildren countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v6 = [a4 parseChildrenAsArrayFromXMLNode:?];

  return [(EQKitMathMLMRow *)self initWithChildren:v6 node:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMRow;
  [(EQKitMathMLMRow *)&v3 dealloc];
}

- (BOOL)isEmbellishedOperator
{
  v2 = EQKitLayoutFilterOutSpaceLike(self->mChildren);
  if ([v2 count] != 1)
  {
    return 0;
  }

  v3 = [v2 firstObject];

  return [v3 isEmbellishedOperator];
}

- (id)operatorCore
{
  v2 = EQKitLayoutFilterOutSpaceLike(self->mChildren);
  if ([v2 count] != 1)
  {
    return 0;
  }

  v3 = [v2 firstObject];

  return [v3 operatorCore];
}

- (BOOL)isBaseFontNameUsed
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mChildren = self->mChildren;
  v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(mChildren);
        }

        if ([*(*(&v8 + 1) + 8 * v6) isBaseFontNameUsed])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->mFlags.mImplied)
  {
    v6 = @"implied ";
  }

  else
  {
    v6 = &stru_28696C228;
  }

  return [v3 stringWithFormat:@"<%@ %p %@%@>", v5, self, v6, self->mChildren];
}

@end