@interface EQKitMathMLMEnclose
- (const)mathMLAttributes;
- (void)dealloc;
@end

@implementation EQKitMathMLMEnclose

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMEnclose;
  [(EQKitMathMLUnaryNode *)&v3 dealloc];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMEnclose mathMLAttributes]::sAttributesSet, "/", -[EQKitMathMLMFenced mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMEnclose mathMLAttributes]::sAttributesSet;
}

@end