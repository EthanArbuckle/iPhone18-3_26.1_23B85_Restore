@interface SUUIRowViewElement
- (NSArray)columns;
- (SUUIRowViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIRowViewElement

- (SUUIRowViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUIRowViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"type"];
    type = v9->_type;
    v9->_type = v10;
  }

  return v9;
}

- (NSArray)columns
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SUUIRowViewElement_columns__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = array;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __29__SUUIRowViewElement_columns__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 21)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end