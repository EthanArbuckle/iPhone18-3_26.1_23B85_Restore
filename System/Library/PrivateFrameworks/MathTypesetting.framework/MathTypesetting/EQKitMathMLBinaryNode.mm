@interface EQKitMathMLBinaryNode
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLBinaryNode)initWithFirst:(id)first second:(id)second;
- (id)children;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLBinaryNode

- (EQKitMathMLBinaryNode)initWithFirst:(id)first second:(id)second
{
  v8.receiver = self;
  v8.super_class = EQKitMathMLBinaryNode;
  v6 = [(EQKitMathMLBinaryNode *)&v8 init];
  if (v6)
  {
    v6->mFirst = first;
    v6->mSecond = second;
    [(EQKitMathMLNode *)v6->mFirst setParent:v6];
    [(EQKitMathMLNode *)v6->mSecond setParent:v6];
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v7 = [parser parseChildrenAsArrayFromXMLNode:?];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndex:0];
    v9 = [v7 objectAtIndex:1];

    return [(EQKitMathMLBinaryNode *)self initWithFirst:v8 second:v9];
  }

  else
  {
    [parser reportError:5 withNode:node];

    return 0;
  }
}

- (id)children
{
  v4[2] = *MEMORY[0x277D85DE8];
  mSecond = self->mSecond;
  v4[0] = self->mFirst;
  v4[1] = mSecond;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
}

- (BOOL)isBaseFontNameUsed
{
  if ([(EQKitMathMLNode *)self->mFirst isBaseFontNameUsed])
  {
    return 1;
  }

  mSecond = self->mSecond;

  return [(EQKitMathMLNode *)mSecond isBaseFontNameUsed];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLBinaryNode;
  [(EQKitMathMLBinaryNode *)&v3 dealloc];
}

@end