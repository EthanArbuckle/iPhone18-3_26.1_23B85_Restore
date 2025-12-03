@interface SUUIReportAConcernTemplateViewElement
- (NSArray)reasonElements;
- (SUUIReportAConcernTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIReportAConcernTemplateViewElement

- (SUUIReportAConcernTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v17.receiver = self;
  v17.super_class = SUUIReportAConcernTemplateViewElement;
  v9 = [(SUUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"src"];
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    reportConcernURL = v9->_reportConcernURL;
    v9->_reportConcernURL = v11;

    v13 = [elementCopy getAttribute:@"data-content-id"];
    v9->_itemIdentifier = [v13 longLongValue];

    v14 = [elementCopy getAttribute:@"data-explanation"];
    reportConcernExplanation = v9->_reportConcernExplanation;
    v9->_reportConcernExplanation = v14;
  }

  return v9;
}

- (NSArray)reasonElements
{
  array = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SUUIReportAConcernTemplateViewElement_reasonElements__block_invoke;
  v7[3] = &unk_2798F5B20;
  v8 = array;
  v4 = array;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __55__SUUIReportAConcernTemplateViewElement_reasonElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end