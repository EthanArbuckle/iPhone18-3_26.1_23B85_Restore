@interface MBDHTMLToSuper_STRONG_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_STRONG_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v14.receiver = self;
  v14.super_class = MBDHTMLToSuper_STRONG_Frame;
  contextCopy = context;
  [(MBDToSuperParserFrame *)&v14 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributes];
  [contextCopy incrementBoldCount];
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v12.receiver = self;
  v12.super_class = MBDHTMLToSuper_STRONG_Frame;
  contextCopy = context;
  [(MBDToSuperParserFrame *)&v12 parser:parser context:contextCopy didEndElement:element namespaceURI:i qualifiedName:name];
  [contextCopy decrementBoldCount];
}

@end