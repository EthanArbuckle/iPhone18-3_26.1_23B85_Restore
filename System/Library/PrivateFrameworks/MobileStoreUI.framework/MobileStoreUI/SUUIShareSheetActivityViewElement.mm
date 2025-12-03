@interface SUUIShareSheetActivityViewElement
- (SUUILabelViewElement)message;
- (SUUILabelViewElement)title;
- (SUUIShareSheetActivityViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIShareSheetActivityViewElement

- (SUUIShareSheetActivityViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = SUUIShareSheetActivityViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"type"];
    activityType = v9->_activityType;
    v9->_activityType = v10;

    v12 = [elementCopy getAttribute:@"src"];
    if ([v12 length])
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
      contentSourceURL = v9->_contentSourceURL;
      v9->_contentSourceURL = v13;
    }
  }

  return v9;
}

- (SUUILabelViewElement)message
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__69;
  v9 = __Block_byref_object_dispose__69;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SUUIShareSheetActivityViewElement_message__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__SUUIShareSheetActivityViewElement_message__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") != 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (SUUILabelViewElement)title
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__69;
  v9 = __Block_byref_object_dispose__69;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SUUIShareSheetActivityViewElement_title__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__SUUIShareSheetActivityViewElement_title__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = SUUIShareSheetActivityViewElement;
  v5 = [(SUUIViewElement *)&v12 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    activityType = [(SUUIShareSheetActivityViewElement *)elementCopy activityType];
    activityType = self->_activityType;
    self->_activityType = activityType;

    contentSourceURL = [(SUUIShareSheetActivityViewElement *)elementCopy contentSourceURL];
    contentSourceURL = self->_contentSourceURL;
    self->_contentSourceURL = contentSourceURL;
  }

  return v6;
}

@end