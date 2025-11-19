@interface EQKitMathMLMStyle
- (const)mathMLAttributes;
@end

@implementation EQKitMathMLMStyle

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMStyle mathMLAttributes]::sAttributesSet, -[EQKitMathMLMStyle mathMLAttributes]::sAttributesDataInherited, -[EQKitMathMLMTable mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMStyle mathMLAttributes]::sAttributesSet;
}

@end