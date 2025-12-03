@interface MBDHTMLToSuper_FONT_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_FONT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = MBDHTMLToSuper_FONT_Frame;
  attributesCopy = attributes;
  [(MBDToSuperParserFrame *)&v18 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = MBDIMCopyNormalizedAttributes(attributesCopy, 1, 0);

  v17 = [v16 objectForKey:@"face"];
  if (v17)
  {
    [contextCopy pushFontFamily:v17];
    *(&self->super.super._didPushMessagePartNumber + 1) = 1;
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = MBDHTMLToSuper_FONT_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:parser context:contextCopy didEndElement:element namespaceURI:i qualifiedName:name];
  if (*(&self->super.super._didPushMessagePartNumber + 1))
  {
    [contextCopy popFontFamily];
  }

  if (*(&self->super.super._didPushMessagePartNumber + 2))
  {
    [contextCopy popFontSize];
  }
}

@end