@interface SUUIReportAConcernReasonViewElement
- (SUUIReportAConcernReasonViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIReportAConcernReasonViewElement

- (SUUIReportAConcernReasonViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SUUIReportAConcernReasonViewElement;
  v9 = [(SUUIViewElement *)&v18 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"data-content-id"];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
    reasonID = v9->_reasonID;
    v9->_reasonID = v11;

    v13 = [elementCopy getAttribute:@"data-uppercase-name"];
    if ([v13 length])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v9->_uppercaseName, v14);
    textContent = [elementCopy textContent];
    name = v9->_name;
    v9->_name = textContent;
  }

  return v9;
}

@end