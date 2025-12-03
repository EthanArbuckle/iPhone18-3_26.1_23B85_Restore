@interface EQKitMathMLMAlignGroup
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLMAlignGroup

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMAlignGroup;
  return [(EQKitMathMLMAlignGroup *)&v5 init:node];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMAlignGroup;
  [(EQKitMathMLMAlignGroup *)&v3 dealloc];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMAlignGroup mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMAlignGroup mathMLAttributes]::sAttributesData, &-[EQKitMathMLMAlignMark mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMAlignGroup mathMLAttributes]::sAttributesSet;
}

@end