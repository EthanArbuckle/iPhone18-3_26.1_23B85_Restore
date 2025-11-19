@interface EQKitMathMLMStackLine
- (const)mathMLAttributes;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackLine

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackLine;
  [(EQKitMathMLMStackLine *)&v3 dealloc];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMStackLine mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMStackLine mathMLAttributes]::sAttributesData, &-[EQKitMathMLMStackRow mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMStackLine mathMLAttributes]::sAttributesSet;
}

@end