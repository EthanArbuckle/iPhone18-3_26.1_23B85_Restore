@interface SUUIURLViewElement
- (SUUIURLViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIURLViewElement

- (SUUIURLViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = SUUIURLViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    textContent = [elementCopy textContent];
    if ([textContent length])
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v12 = [textContent stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
      url = v9->_url;
      v9->_url = v13;

      textContent = v12;
    }
  }

  return v9;
}

@end