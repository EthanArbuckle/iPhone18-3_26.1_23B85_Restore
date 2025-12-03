@interface EQKitMathMLMOperator
- (EQKitMathMLMOperator)initWithString:(id)string environment:(id)environment;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMOperator

- (EQKitMathMLMOperator)initWithString:(id)string environment:(id)environment
{
  v14.receiver = self;
  v14.super_class = EQKitMathMLMOperator;
  v6 = [EQKitMathMLMToken initWithString:sel_initWithString_environment_ environment:?];
  if (v6)
  {
    operatorDictionary = [environment operatorDictionary];
    uTF8String = [string UTF8String];
    v9 = strlen(uTF8String);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__dst, uTF8String, v9);
    }

    *(&__dst + v10) = 0;
    v6->mOperatorId = EQKit::Config::Operator::Dictionary::operatorId(operatorDictionary, &__dst);
    if (v13 < 0)
    {
      operator delete(__dst);
    }
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMOperator;
  return [(EQKitMathMLMToken *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMOperator mathMLAttributes]::sAttributesSet, -[EQKitMathMLMOperator mathMLAttributes]::sAttributesData, &-[EQKitMathMLMOver mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMOperator mathMLAttributes]::sAttributesSet;
}

@end