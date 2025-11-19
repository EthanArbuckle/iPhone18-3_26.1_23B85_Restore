@interface EQKitMathMLBinaryNode
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLBinaryNode)initWithFirst:(id)a3 second:(id)a4;
- (id)children;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLBinaryNode

- (EQKitMathMLBinaryNode)initWithFirst:(id)a3 second:(id)a4
{
  v8.receiver = self;
  v8.super_class = EQKitMathMLBinaryNode;
  v6 = [(EQKitMathMLBinaryNode *)&v8 init];
  if (v6)
  {
    v6->mFirst = a3;
    v6->mSecond = a4;
    [(EQKitMathMLNode *)v6->mFirst setParent:v6];
    [(EQKitMathMLNode *)v6->mSecond setParent:v6];
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v7 = [a4 parseChildrenAsArrayFromXMLNode:?];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndex:0];
    v9 = [v7 objectAtIndex:1];

    return [(EQKitMathMLBinaryNode *)self initWithFirst:v8 second:v9];
  }

  else
  {
    [a4 reportError:5 withNode:a3];

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