@interface EQKitMathMLMSpace
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMSpace

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMSpace;
  return [(EQKitMathMLMSpace *)&v5 init:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMSpace;
  [(EQKitMathMLMSpace *)&v3 dealloc];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMSpace mathMLAttributes]::sAttributesSet, -[EQKitMathMLMSpace mathMLAttributes]::sAttributesData, &-[EQKitMathMLMStack mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMSpace mathMLAttributes]::sAttributesSet;
}

@end