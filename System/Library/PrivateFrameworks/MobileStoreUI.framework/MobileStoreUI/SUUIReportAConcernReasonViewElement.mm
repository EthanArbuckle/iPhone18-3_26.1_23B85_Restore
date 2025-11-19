@interface SUUIReportAConcernReasonViewElement
- (SUUIReportAConcernReasonViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUIReportAConcernReasonViewElement

- (SUUIReportAConcernReasonViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = SUUIReportAConcernReasonViewElement;
  v9 = [(SUUIViewElement *)&v18 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"data-content-id"];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
    reasonID = v9->_reasonID;
    v9->_reasonID = v11;

    v13 = [v8 getAttribute:@"data-uppercase-name"];
    if ([v13 length])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v9->_uppercaseName, v14);
    v15 = [v8 textContent];
    name = v9->_name;
    v9->_name = v15;
  }

  return v9;
}

@end