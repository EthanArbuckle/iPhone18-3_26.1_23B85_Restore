@interface MBDHTMLToSuper_MENTION_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_MENTION_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = MBDHTMLToSuper_MENTION_Frame;
  attributesCopy = attributes;
  [(MBDToSuperParserFrame *)&v19 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = MBDIMCopyNormalizedAttributes(attributesCopy, 1, 0);

  v17 = [v16 _stringForKey:@"uri"];
  bd_stringByRemovingURLEscapes = [v17 bd_stringByRemovingURLEscapes];

  if ([bd_stringByRemovingURLEscapes length])
  {
    [contextCopy pushMentionAttributeWithURI:bd_stringByRemovingURLEscapes];
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v12.receiver = self;
  v12.super_class = MBDHTMLToSuper_MENTION_Frame;
  contextCopy = context;
  [(MBDToSuperParserFrame *)&v12 parser:parser context:contextCopy didEndElement:element namespaceURI:i qualifiedName:name];
  [contextCopy popMentionAttribute];
}

@end