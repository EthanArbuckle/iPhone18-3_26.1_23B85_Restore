@interface EQKitMathMLMLabeledTr
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMLabeledTr

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  [parser pushState:3];
  v7 = [parser parseChildrenAsArrayFromXMLNode:node];
  [parser popState];
  if ([v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
    [v8 removeObjectAtIndex:0];
    v11.receiver = self;
    v11.super_class = EQKitMathMLMLabeledTr;
    v9 = [(EQKitMathMLMTr *)&v11 initWithChildren:v8 node:node];
  }

  else
  {

    return 0;
  }

  return v9;
}

@end