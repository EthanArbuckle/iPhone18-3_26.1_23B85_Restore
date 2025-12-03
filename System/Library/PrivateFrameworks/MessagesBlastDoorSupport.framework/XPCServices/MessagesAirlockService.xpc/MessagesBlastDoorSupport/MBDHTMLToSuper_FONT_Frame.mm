@interface MBDHTMLToSuper_FONT_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_FONT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v10 = MBDIMCopyNormalizedAttributes(attributes, 1, 0);
  v11 = [v10 objectForKey:@"face"];
  if (v11)
  {
    [contextCopy pushFontFamily:v11];
    self->_shouldPopFontName = 1;
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  contextCopy = context;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  if (self->_shouldPopFontName)
  {
    [contextCopy popFontFamily];
  }

  if (self->_shouldPopFontSize)
  {
    [contextCopy popFontSize];
  }
}

@end