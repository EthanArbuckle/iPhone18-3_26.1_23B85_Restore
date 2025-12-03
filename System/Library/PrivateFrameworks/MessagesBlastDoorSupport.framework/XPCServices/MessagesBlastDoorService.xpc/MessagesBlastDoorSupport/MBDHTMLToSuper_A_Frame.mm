@interface MBDHTMLToSuper_A_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_A_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = MBDHTMLToSuper_A_Frame;
  attributesCopy = attributes;
  [(MBDToSuperParserFrame *)&v21 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = MBDIMCopyNormalizedAttributes(attributesCopy, 1, 0);

  v17 = [v16 objectForKey:@"href"];
  v18 = [v16 objectForKey:@"isrichlink"];
  if (v17)
  {
    v19 = [[NSURL alloc] initWithString:v17];
    if (v19)
    {
      [contextCopy pushLink:v19];
      *(&self->super.super._didPushMessagePartNumber + 1) = 1;
    }
  }

  if (v18)
  {
    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 BOOLValue]);
    [contextCopy pushIsRichLink:v20];
    *(&self->super.super._didPushMessagePartNumber + 2) = 1;
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = MBDHTMLToSuper_A_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:parser context:contextCopy didEndElement:element namespaceURI:i qualifiedName:name];
  if (*(&self->super.super._didPushMessagePartNumber + 1))
  {
    [contextCopy popLink];
  }

  if (*(&self->super.super._didPushMessagePartNumber + 2))
  {
    [contextCopy popIsRichLink];
  }
}

@end