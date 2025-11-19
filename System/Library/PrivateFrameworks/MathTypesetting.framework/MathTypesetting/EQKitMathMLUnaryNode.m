@interface EQKitMathMLUnaryNode
- (EQKitMathMLUnaryNode)initWithChild:(id)a3;
- (EQKitMathMLUnaryNode)initWithChildren:(id)a3;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLUnaryNode

- (EQKitMathMLUnaryNode)initWithChild:(id)a3
{
  v7.receiver = self;
  v7.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->mChild = v5;
    [(EQKitMathMLNode *)v5 setParent:v4];
  }

  return v4;
}

- (EQKitMathMLUnaryNode)initWithChildren:(id)a3
{
  v6.receiver = self;
  v6.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v6 init];
  if (v4)
  {
    v4->mChild = [[EQKitMathMLMRow alloc] initWithChildren:a3];
  }

  return v4;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v7 = [a4 parseChildrenAsNodeFromXMLNode:?];
  if (v7)
  {

    return [(EQKitMathMLUnaryNode *)self initWithChild:v7];
  }

  else
  {
    [a4 reportError:5 withNode:a3];

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLUnaryNode;
  [(EQKitMathMLUnaryNode *)&v3 dealloc];
}

@end