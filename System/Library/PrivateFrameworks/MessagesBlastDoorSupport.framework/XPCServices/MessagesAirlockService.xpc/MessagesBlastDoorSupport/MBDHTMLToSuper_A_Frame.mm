@interface MBDHTMLToSuper_A_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_A_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v10 = MBDIMCopyNormalizedAttributes(attributes, 1, 0);
  v11 = [v10 objectForKey:@"href"];
  v12 = [v10 objectForKey:@"isrichlink"];
  if (v11)
  {
    v13 = [[NSURL alloc] initWithString:v11];
    if (v13)
    {
      [contextCopy pushLink:v13];
      self->_shouldPopLink = 1;
    }
  }

  if (v12)
  {
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 BOOLValue]);
    [contextCopy pushIsRichLink:v14];
    self->_shouldPopIsRichLink = 1;
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  contextCopy = context;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  if (self->_shouldPopLink)
  {
    [contextCopy popLink];
  }

  if (self->_shouldPopIsRichLink)
  {
    [contextCopy popIsRichLink];
  }
}

@end