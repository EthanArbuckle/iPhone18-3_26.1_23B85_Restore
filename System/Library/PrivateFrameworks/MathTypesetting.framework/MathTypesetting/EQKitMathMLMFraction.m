@interface EQKitMathMLMFraction
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
@end

@implementation EQKitMathMLMFraction

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMFraction;
  return [(EQKitMathMLBinaryNode *)&v5 initFromXMLNode:a3 parser:a4];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMFraction mathMLAttributes]::sAttributesSet, -[EQKitMathMLMFraction mathMLAttributes]::sAttributesData, &-[EQKitMathMLMLongDivision mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMFraction mathMLAttributes]::sAttributesSet;
}

@end