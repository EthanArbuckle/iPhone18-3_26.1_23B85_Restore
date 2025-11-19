@interface EQKitMathMLMOver
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
@end

@implementation EQKitMathMLMOver

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMOver;
  return [(EQKitMathMLBinaryNode *)&v5 initFromXMLNode:a3 parser:a4];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMOver mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMOver mathMLAttributes]::sAttributesData, -[EQKitMathMLMPadded mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMOver mathMLAttributes]::sAttributesSet;
}

@end