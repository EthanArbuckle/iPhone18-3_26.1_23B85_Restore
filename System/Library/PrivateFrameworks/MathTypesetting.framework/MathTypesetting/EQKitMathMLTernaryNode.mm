@interface EQKitMathMLTernaryNode
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLTernaryNode)initWithFirst:(id)first second:(id)second third:(id)third;
- (id)children;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLTernaryNode

- (EQKitMathMLTernaryNode)initWithFirst:(id)first second:(id)second third:(id)third
{
  v10.receiver = self;
  v10.super_class = EQKitMathMLTernaryNode;
  v8 = [(EQKitMathMLTernaryNode *)&v10 init];
  if (v8)
  {
    v8->mFirst = first;
    v8->mSecond = second;
    v8->mThird = third;
    [(EQKitMathMLNode *)v8->mFirst setParent:v8];
    [(EQKitMathMLNode *)v8->mSecond setParent:v8];
    [(EQKitMathMLNode *)v8->mThird setParent:v8];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLTernaryNode;
  [(EQKitMathMLTernaryNode *)&v3 dealloc];
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v7 = [parser parseChildrenAsArrayFromXMLNode:?];
  if ([v7 count] == 3)
  {
    v8 = [v7 objectAtIndex:0];
    v9 = [v7 objectAtIndex:1];
    v10 = [v7 objectAtIndex:2];

    return [(EQKitMathMLTernaryNode *)self initWithFirst:v8 second:v9 third:v10];
  }

  else
  {
    [parser reportError:5 withNode:node];

    return 0;
  }
}

- (id)children
{
  v4[3] = *MEMORY[0x277D85DE8];
  mSecond = self->mSecond;
  v4[0] = self->mFirst;
  v4[1] = mSecond;
  v4[2] = self->mThird;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];
}

- (BOOL)isBaseFontNameUsed
{
  if ([(EQKitMathMLNode *)self->mFirst isBaseFontNameUsed]|| [(EQKitMathMLNode *)self->mSecond isBaseFontNameUsed])
  {
    return 1;
  }

  mThird = self->mThird;

  return [(EQKitMathMLNode *)mThird isBaseFontNameUsed];
}

@end