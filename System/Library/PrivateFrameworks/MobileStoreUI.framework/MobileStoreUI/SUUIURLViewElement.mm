@interface SUUIURLViewElement
- (SUUIURLViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUIURLViewElement

- (SUUIURLViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SUUIURLViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 textContent];
    if ([v10 length])
    {
      v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v12 = [v10 stringByTrimmingCharactersInSet:v11];

      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
      url = v9->_url;
      v9->_url = v13;

      v10 = v12;
    }
  }

  return v9;
}

@end