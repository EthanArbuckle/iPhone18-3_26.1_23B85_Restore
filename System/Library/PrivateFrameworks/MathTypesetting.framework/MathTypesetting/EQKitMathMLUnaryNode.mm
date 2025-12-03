@interface EQKitMathMLUnaryNode
- (EQKitMathMLUnaryNode)initWithChild:(id)child;
- (EQKitMathMLUnaryNode)initWithChildren:(id)children;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLUnaryNode

- (EQKitMathMLUnaryNode)initWithChild:(id)child
{
  v7.receiver = self;
  v7.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v7 init];
  if (v4)
  {
    childCopy = child;
    v4->mChild = childCopy;
    [(EQKitMathMLNode *)childCopy setParent:v4];
  }

  return v4;
}

- (EQKitMathMLUnaryNode)initWithChildren:(id)children
{
  v6.receiver = self;
  v6.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v6 init];
  if (v4)
  {
    v4->mChild = [[EQKitMathMLMRow alloc] initWithChildren:children];
  }

  return v4;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v7 = [parser parseChildrenAsNodeFromXMLNode:?];
  if (v7)
  {

    return [(EQKitMathMLUnaryNode *)self initWithChild:v7];
  }

  else
  {
    [parser reportError:5 withNode:node];

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