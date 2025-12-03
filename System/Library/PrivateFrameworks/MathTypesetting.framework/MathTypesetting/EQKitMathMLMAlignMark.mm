@interface EQKitMathMLMAlignMark
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLMAlignMark

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMAlignMark;
  return [(EQKitMathMLMAlignMark *)&v5 init:node];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMAlignMark;
  [(EQKitMathMLMAlignMark *)&v3 dealloc];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMAlignMark mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMAlignMark mathMLAttributes]::sAttributesData, &-[EQKitMathMLMath mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMAlignMark mathMLAttributes]::sAttributesSet;
}

@end