@interface SUUIEditorTemplateViewElement
- (SUUIEditorTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUIEditorTemplateViewElement

- (SUUIEditorTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SUUIEditorTemplateViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"contentId"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 longLongValue];
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      contentId = v9->_contentId;
      v9->_contentId = v13;
    }
  }

  return v9;
}

@end