@interface MBDHTMLToSuper_TEXTEFFECT_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_TEXTEFFECT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = MBDHTMLToSuper_TEXTEFFECT_Frame;
  attributesCopy = attributes;
  [(MBDToSuperParserFrame *)&v18 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = MBDIMCopyNormalizedAttributes(attributesCopy, 1, 0);

  v17 = [v16 _stringForKey:@"type"];
  if ([v17 length])
  {
    [contextCopy pushTextEffectAttributeWithType:{objc_msgSend(v17, "unsignedIntValue")}];
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v12.receiver = self;
  v12.super_class = MBDHTMLToSuper_TEXTEFFECT_Frame;
  contextCopy = context;
  [(MBDToSuperParserFrame *)&v12 parser:parser context:contextCopy didEndElement:element namespaceURI:i qualifiedName:name];
  [contextCopy popTextEffectAttribute];
}

@end