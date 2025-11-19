@interface EQKitMathMLMStackGroup
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMStackGroup)initWithChildren:(id)a3;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackGroup

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5 = [a4 parseChildrenAsArrayFromXMLNode:a3];

  return [(EQKitMathMLMStackGroup *)self initWithChildren:v5];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMStackGroup mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMStackGroup mathMLAttributes]::sAttributesData, &-[EQKitMathMLMStackLine mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMStackGroup mathMLAttributes]::sAttributesSet;
}

- (EQKitMathMLMStackGroup)initWithChildren:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = EQKitMathMLMStackGroup;
  v4 = [(EQKitMathMLMStackGroup *)&v22 init];
  if (v4)
  {
    v5 = [a3 count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = [a3 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v7)
                {
                  v7 = [a3 mutableCopy];
                  a3 = v7;
                }

                v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v9, 0}];
                v11 = [[EQKitMathMLMStackRow alloc] initWithChildren:v10];
                [v7 replaceObjectAtIndex:i withObject:v11];
              }
            }
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v4->mChildren = a3;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    mChildren = v4->mChildren;
    v13 = [(NSArray *)mChildren countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(mChildren);
          }

          [*(*(&v18 + 1) + 8 * j) setParent:v4];
        }

        v14 = [(NSArray *)mChildren countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v14);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackGroup;
  [(EQKitMathMLMStackGroup *)&v3 dealloc];
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

@end