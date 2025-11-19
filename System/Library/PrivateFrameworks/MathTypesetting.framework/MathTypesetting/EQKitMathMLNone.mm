@interface EQKitMathMLNone
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLNone

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLNone;
  return [(EQKitMathMLNone *)&v5 init:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLNone;
  [(EQKitMathMLNone *)&v3 dealloc];
}

@end