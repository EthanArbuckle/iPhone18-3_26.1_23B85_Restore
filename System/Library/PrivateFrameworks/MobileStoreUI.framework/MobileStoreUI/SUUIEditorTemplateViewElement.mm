@interface SUUIEditorTemplateViewElement
- (SUUIEditorTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIEditorTemplateViewElement

- (SUUIEditorTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = SUUIEditorTemplateViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"contentId"];
    v11 = v10;
    if (v10)
    {
      longLongValue = [v10 longLongValue];
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
      contentId = v9->_contentId;
      v9->_contentId = v13;
    }
  }

  return v9;
}

@end