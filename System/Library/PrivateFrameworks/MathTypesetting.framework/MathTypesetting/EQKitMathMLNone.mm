@interface EQKitMathMLNone
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLNone

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLNone;
  return [(EQKitMathMLNone *)&v5 init:node];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLNone;
  [(EQKitMathMLNone *)&v3 dealloc];
}

@end