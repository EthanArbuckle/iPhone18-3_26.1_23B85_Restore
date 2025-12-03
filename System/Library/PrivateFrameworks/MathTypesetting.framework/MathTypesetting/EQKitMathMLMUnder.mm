@interface EQKitMathMLMUnder
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMUnder

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMUnder;
  return [(EQKitMathMLBinaryNode *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMUnder mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMUnder mathMLAttributes]::sAttributesData, -[EQKitMathMLMUnderover mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMUnder mathMLAttributes]::sAttributesSet;
}

@end