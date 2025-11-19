@interface EQKitMathMLMAction
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMAction

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v10.receiver = self;
  v10.super_class = EQKitMathMLMAction;
  v6 = [(EQKitMathMLMAction *)&v10 init];
  if (v6)
  {
    v7 = [a4 parseChildrenAsArrayFromXMLNode:a3];
    if ([v7 count])
    {
      v8 = [v7 objectAtIndex:0];
      v6->mExpression = v8;
      [(EQKitMathMLNode *)v8 setParent:v6];
    }

    else
    {
      [a4 reportError:5 withNode:a3];

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMAction;
  [(EQKitMathMLMAction *)&v3 dealloc];
}

@end