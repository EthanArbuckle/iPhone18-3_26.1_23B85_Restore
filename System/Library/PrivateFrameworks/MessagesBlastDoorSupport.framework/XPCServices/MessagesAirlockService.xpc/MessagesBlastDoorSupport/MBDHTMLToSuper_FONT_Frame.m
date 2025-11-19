@interface MBDHTMLToSuper_FONT_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_FONT_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v12 = a4;
  v10 = MBDIMCopyNormalizedAttributes(a8, 1, 0);
  v11 = [v10 objectForKey:@"face"];
  if (v11)
  {
    [v12 pushFontFamily:v11];
    self->_shouldPopFontName = 1;
  }
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (self->_shouldPopFontName)
  {
    [v12 popFontFamily];
  }

  if (self->_shouldPopFontSize)
  {
    [v12 popFontSize];
  }
}

@end