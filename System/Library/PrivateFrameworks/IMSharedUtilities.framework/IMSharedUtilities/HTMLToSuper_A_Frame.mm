@interface HTMLToSuper_A_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation HTMLToSuper_A_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v12 = IMCopyNormalizedAttributes(attributes, 1, 0);
  v10 = [v12 objectForKey:@"href"];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];
    if (v11)
    {
      [context pushLink:v11];
      self->_shouldPopLink = 1;
    }
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if (self->_shouldPopLink)
  {
    MEMORY[0x1EEE66B58](context, sel_popLink);
  }
}

@end