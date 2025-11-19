@interface EQKitMathMLMTable
- (BOOL)isBaseFontNameUsed;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMTable

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  [a4 pushState:2];
  v7 = [a4 parseChildrenAsArrayFromXMLNode:a3];
  v20.receiver = self;
  v20.super_class = EQKitMathMLMTable;
  v8 = [(EQKitMathMLMTable *)&v20 init];
  v9 = v8;
  if (a4)
  {
    if (a3)
    {
      if (v8)
      {
        v10 = v7;
        v9->mChildren = v10;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v16 + 1) + 8 * v14++) setParent:v9];
            }

            while (v12 != v14);
            v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
          }

          while (v12);
        }
      }
    }
  }

  [a4 popState];
  return v9;
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMTable mathMLAttributes]::sAttributesSet, -[EQKitMathMLMTable mathMLAttributes]::sAttributesData, &-[EQKitMathMLMTr mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMTable mathMLAttributes]::sAttributesSet;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMTable;
  [(EQKitMathMLMTable *)&v3 dealloc];
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
  return [v3 stringWithFormat:@"<%@ %p %@>", NSStringFromClass(v4), self, self->mChildren];
}

@end