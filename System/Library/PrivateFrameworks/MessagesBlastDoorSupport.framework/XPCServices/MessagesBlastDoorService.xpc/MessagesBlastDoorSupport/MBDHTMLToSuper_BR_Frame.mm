@interface MBDHTMLToSuper_BR_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_BR_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v14.receiver = self;
  v14.super_class = MBDHTMLToSuper_BR_Frame;
  contextCopy = context;
  [(MBDToSuperParserFrame *)&v14 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributes];
  [contextCopy appendString:@"\n"];
}

@end