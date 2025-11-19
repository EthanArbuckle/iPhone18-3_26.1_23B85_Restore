@interface EQKitMathMLMStack
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMStack)initWithChildren:(id)a3;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMStack

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5 = [a4 parseChildrenAsArrayFromXMLNode:a3];

  return [(EQKitMathMLMStack *)self initWithChildren:v5];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMStack mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMStack mathMLAttributes]::sAttributesData, &-[EQKitMathMLMStackCarries mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMStack mathMLAttributes]::sAttributesSet;
}

- (EQKitMathMLMStack)initWithChildren:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = EQKitMathMLMStack;
  v4 = [(EQKitMathMLMStack *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->mAlign = 0;
    v6 = [a3 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = [a3 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v8)
          {
            v8 = [a3 mutableCopy];
            a3 = v8;
          }

          v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
          v12 = [[EQKitMathMLMStackGroup alloc] initWithChildren:v11];
          [v8 replaceObjectAtIndex:i withObject:v12];
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = a3;
    v5->mChildren = v13;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v19 + 1) + 8 * v17++) setParent:v5];
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStack;
  [(EQKitMathMLMStack *)&v3 dealloc];
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