@interface SUUIReportAConcernConfiguration
+ (id)configurationWithTemplateElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIReportAConcernConfiguration

+ (id)configurationWithTemplateElement:(id)element
{
  if (element)
  {
    elementCopy = element;
    v5 = objc_alloc_init(self);
    reportConcernURL = [elementCopy reportConcernURL];
    [v5 setReportConcernURL:reportConcernURL];

    [v5 setItemIdentifier:{objc_msgSend(elementCopy, "itemIdentifier")}];
    reportConcernExplanation = [elementCopy reportConcernExplanation];
    [v5 setReportConcernExplanation:reportConcernExplanation];

    v8 = [elementCopy firstChildForElementName:@"title"];
    text = [v8 text];
    attributedString = [text attributedString];
    string = [attributedString string];
    [v5 setSelectReasonTitle:string];

    v12 = [elementCopy firstChildForElementName:@"subtitle"];
    text2 = [v12 text];
    attributedString2 = [text2 attributedString];
    string2 = [attributedString2 string];
    [v5 setSelectReasonSubtitle:string2];

    v16 = [elementCopy firstChildForElementName:@"text"];
    text3 = [v16 text];
    attributedString3 = [text3 attributedString];
    string3 = [attributedString3 string];
    [v5 setPrivacyNote:string3];

    array = [MEMORY[0x277CBEB18] array];
    reasonElements = [elementCopy reasonElements];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__SUUIReportAConcernConfiguration_configurationWithTemplateElement___block_invoke;
    v24[3] = &unk_2798F5F90;
    v25 = array;
    v22 = array;
    [reasonElements enumerateObjectsUsingBlock:v24];

    [v5 setReasons:v22];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __68__SUUIReportAConcernConfiguration_configurationWithTemplateElement___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc_init(SUUIReportAConcernReason);
  v4 = [v9 reasonID];
  [(SUUIReportAConcernReason *)v3 setReasonID:v4];

  v5 = [v9 name];
  [(SUUIReportAConcernReason *)v3 setName:v5];

  v6 = [v9 uppercaseName];
  if (v6)
  {
    [(SUUIReportAConcernReason *)v3 setUppercaseName:v6];
  }

  else
  {
    v7 = [v9 name];
    v8 = [v7 uppercaseString];
    [(SUUIReportAConcernReason *)v3 setUppercaseName:v8];
  }

  [*(a1 + 32) addObject:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  reportConcernURL = [(SUUIReportAConcernConfiguration *)self reportConcernURL];
  [v4 setReportConcernURL:reportConcernURL];

  [v4 setItemIdentifier:{-[SUUIReportAConcernConfiguration itemIdentifier](self, "itemIdentifier")}];
  reportConcernExplanation = [(SUUIReportAConcernConfiguration *)self reportConcernExplanation];
  [v4 setReportConcernExplanation:reportConcernExplanation];

  selectReasonTitle = [(SUUIReportAConcernConfiguration *)self selectReasonTitle];
  [v4 setSelectReasonTitle:selectReasonTitle];

  selectReasonSubtitle = [(SUUIReportAConcernConfiguration *)self selectReasonSubtitle];
  [v4 setSelectReasonSubtitle:selectReasonSubtitle];

  privacyNote = [(SUUIReportAConcernConfiguration *)self privacyNote];
  [v4 setPrivacyNote:privacyNote];

  reasons = [(SUUIReportAConcernConfiguration *)self reasons];
  [v4 setReasons:reasons];

  return v4;
}

@end