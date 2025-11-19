@interface HTMLToSuper_A_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation HTMLToSuper_A_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v12 = IMCopyNormalizedAttributes(a8, 1, 0);
  v10 = [v12 objectForKey:@"href"];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];
    if (v11)
    {
      [a4 pushLink:v11];
      self->_shouldPopLink = 1;
    }
  }
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  if (self->_shouldPopLink)
  {
    MEMORY[0x1EEE66B58](a4, sel_popLink);
  }
}

@end