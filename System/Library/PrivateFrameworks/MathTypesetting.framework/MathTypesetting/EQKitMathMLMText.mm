@interface EQKitMathMLMText
- (EQKitMathMLMText)initWithContent:(id)content;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLMText

- (EQKitMathMLMText)initWithContent:(id)content
{
  if (content)
  {
    v6.receiver = self;
    v6.super_class = EQKitMathMLMText;
    v4 = [(EQKitMathMLMText *)&v6 init];
    if (v4)
    {
      v4->mContent = content;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMText;
  [(EQKitMathMLMText *)&v3 dealloc];
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5 = [parser parseChildrenAsTokenContentFromXMLNode:node];

  return [(EQKitMathMLMText *)self initWithContent:v5];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMText mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMText mathMLAttributes]::sAttributesData, &-[EQKitMathMLMToken mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMText mathMLAttributes]::sAttributesSet;
}

@end