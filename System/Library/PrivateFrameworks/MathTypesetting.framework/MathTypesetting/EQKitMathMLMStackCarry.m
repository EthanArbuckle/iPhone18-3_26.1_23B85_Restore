@interface EQKitMathMLMStackCarry
- (EQKitMathMLMStackCarry)initWithChild:(id)a3;
- (EQKitMathMLMStackCarry)initWithChildren:(id)a3;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackCarry

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5 = [a4 parseChildrenAsArrayFromXMLNode:a3];

  return [(EQKitMathMLMStackCarry *)self initWithChildren:v5];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMStackCarry mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMStackCarry mathMLAttributes]::sAttributesData, &-[EQKitMathMLMStackGroup mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMStackCarry mathMLAttributes]::sAttributesSet;
}

- (EQKitMathMLMStackCarry)initWithChildren:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = EQKitMathMLMStackCarry;
  v4 = [(EQKitMathMLMStackCarry *)&v15 init];
  if (v4)
  {
    v5 = a3;
    v4->mChildren = v5;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) setParent:v4];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (EQKitMathMLMStackCarry)initWithChild:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{a3, 0}];
  v5 = [(EQKitMathMLMStackCarry *)self initWithChildren:v4];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackCarry;
  [(EQKitMathMLMStackCarry *)&v3 dealloc];
}

@end