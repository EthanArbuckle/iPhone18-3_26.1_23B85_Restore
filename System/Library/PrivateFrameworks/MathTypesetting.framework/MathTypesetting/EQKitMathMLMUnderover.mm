@interface EQKitMathMLMUnderover
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMUnderover

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMUnderover;
  return [(EQKitMathMLTernaryNode *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMUnderover mathMLAttributes]::sAttributesSet, -[EQKitMathMLMUnderover mathMLAttributes]::sAttributesData, &-[EQKitMathMLMStringLiteral mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMUnderover mathMLAttributes]::sAttributesSet;
}

@end