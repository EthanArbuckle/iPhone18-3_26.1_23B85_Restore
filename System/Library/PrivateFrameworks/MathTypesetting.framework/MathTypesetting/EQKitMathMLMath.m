@interface EQKitMathMLMath
- (NSArray)children;
- (NSString)description;
- (Schemata)layoutSchemata;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)newLayout;
- (void)dealloc;
@end

@implementation EQKitMathMLMath

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v13.receiver = self;
  v13.super_class = EQKitMathMLMath;
  v6 = [(EQKitMathMLMath *)&v13 init];
  if (v6)
  {
    v7 = operator new(0x230uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v8 = v7;
      v9 = EQKit::AttributeCollection::AttributeCollection(v7);
      v6->mAttributeCollection = v10;
      [a4 setAttributeCollection:{v8, v9}];
      v11 = [a4 parseChildrenAsNodeFromXMLNode:a3];
      v6->mExpression = v11;
      [(EQKitMathMLNode *)v11 setParent:v6];
    }

    else
    {
      v6->mAttributeCollection = 0;
    }

    if (v6->mExpression)
    {
      v6->mEnvironment = [a4 environment];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMath mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMath mathMLAttributes]::sAttributesData, "N5EQKit19AttributeCollectionE");
  }

  return [EQKitMathMLMath mathMLAttributes]::sAttributesSet;
}

- (void)dealloc
{
  mAttributeCollection = self->mAttributeCollection;
  if (mAttributeCollection)
  {
    (*(*mAttributeCollection + 8))(mAttributeCollection, a2);
  }

  v4.receiver = self;
  v4.super_class = EQKitMathMLMath;
  [(EQKitMathMLMath *)&v4 dealloc];
}

- (id)newLayout
{
  v3 = [EQKitLayoutImplementation alloc];
  mEnvironment = self->mEnvironment;

  return [(EQKitLayoutImplementation *)v3 initWithRoot:self environment:mEnvironment];
}

- (NSArray)children
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = self->mExpression;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (Schemata)layoutSchemata
{
  if (self->mExpression)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  }

  else
  {
    v4 = [MEMORY[0x277CBEA60] array];
  }

  return EQKit::Layout::Schemata::row(v4, retstr);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p expr=%@>", NSStringFromClass(v4), self, self->mExpression];
}

@end