@interface EQKitMathMLMTr
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMTr)init;
- (EQKitMathMLMTr)initWithChildren:(id)a3 node:(_xmlNode *)a4;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMTr

- (EQKitMathMLMTr)init
{
  v3 = [MEMORY[0x277CBEA60] array];

  return [(EQKitMathMLMTr *)self initWithChildren:v3];
}

- (EQKitMathMLMTr)initWithChildren:(id)a3 node:(_xmlNode *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = EQKitMathMLMTr;
  v5 = [(EQKitMathMLMTr *)&v16 init:a3];
  if (v5)
  {
    v6 = a3;
    v5->mChildren = v6;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) setParent:v5];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  [a4 pushState:3];
  v7 = [a4 parseChildrenAsArrayFromXMLNode:a3];
  [a4 popState];

  return [(EQKitMathMLMTr *)self initWithChildren:v7 node:a3];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMTr mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMTr mathMLAttributes]::sAttributesData, &-[EQKitMathMLMTd mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMTr mathMLAttributes]::sAttributesSet;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMTr;
  [(EQKitMathMLMTr *)&v3 dealloc];
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