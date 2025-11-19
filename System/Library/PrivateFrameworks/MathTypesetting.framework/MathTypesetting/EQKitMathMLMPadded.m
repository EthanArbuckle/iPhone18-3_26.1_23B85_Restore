@interface EQKitMathMLMPadded
- (const)mathMLAttributes;
- (void)dealloc;
@end

@implementation EQKitMathMLMPadded

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMPadded mathMLAttributes]::sAttributesSet, -[EQKitMathMLMPadded mathMLAttributes]::sAttributesData, -[EQKitMathMLMSpace mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMPadded mathMLAttributes]::sAttributesSet;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EQKitMathMLMPadded;
  [(EQKitMathMLUnaryNode *)&v2 dealloc];
}

@end