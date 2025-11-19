@interface MBDHTMLToSuper_STRONG_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_STRONG_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v14.receiver = self;
  v14.super_class = MBDHTMLToSuper_STRONG_Frame;
  v13 = a4;
  [(MBDToSuperParserFrame *)&v14 parser:a3 context:v13 didStartElement:a5 namespaceURI:a6 qualifiedName:a7 attributes:a8];
  [v13 incrementBoldCount];
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  v12.receiver = self;
  v12.super_class = MBDHTMLToSuper_STRONG_Frame;
  v11 = a4;
  [(MBDToSuperParserFrame *)&v12 parser:a3 context:v11 didEndElement:a5 namespaceURI:a6 qualifiedName:a7];
  [v11 decrementBoldCount];
}

@end