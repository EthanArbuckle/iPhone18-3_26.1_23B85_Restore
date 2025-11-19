@interface MBDHTMLToSuper_BR_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_BR_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v14.receiver = self;
  v14.super_class = MBDHTMLToSuper_BR_Frame;
  v13 = a4;
  [(MBDToSuperParserFrame *)&v14 parser:a3 context:v13 didStartElement:a5 namespaceURI:a6 qualifiedName:a7 attributes:a8];
  [v13 appendString:@"\n"];
}

@end