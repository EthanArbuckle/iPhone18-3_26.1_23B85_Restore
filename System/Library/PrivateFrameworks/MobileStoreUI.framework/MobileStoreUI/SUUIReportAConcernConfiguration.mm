@interface SUUIReportAConcernConfiguration
+ (id)configurationWithTemplateElement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIReportAConcernConfiguration

+ (id)configurationWithTemplateElement:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(a1);
    v6 = [v4 reportConcernURL];
    [v5 setReportConcernURL:v6];

    [v5 setItemIdentifier:{objc_msgSend(v4, "itemIdentifier")}];
    v7 = [v4 reportConcernExplanation];
    [v5 setReportConcernExplanation:v7];

    v8 = [v4 firstChildForElementName:@"title"];
    v9 = [v8 text];
    v10 = [v9 attributedString];
    v11 = [v10 string];
    [v5 setSelectReasonTitle:v11];

    v12 = [v4 firstChildForElementName:@"subtitle"];
    v13 = [v12 text];
    v14 = [v13 attributedString];
    v15 = [v14 string];
    [v5 setSelectReasonSubtitle:v15];

    v16 = [v4 firstChildForElementName:@"text"];
    v17 = [v16 text];
    v18 = [v17 attributedString];
    v19 = [v18 string];
    [v5 setPrivacyNote:v19];

    v20 = [MEMORY[0x277CBEB18] array];
    v21 = [v4 reasonElements];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__SUUIReportAConcernConfiguration_configurationWithTemplateElement___block_invoke;
    v24[3] = &unk_2798F5F90;
    v25 = v20;
    v22 = v20;
    [v21 enumerateObjectsUsingBlock:v24];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SUUIReportAConcernConfiguration *)self reportConcernURL];
  [v4 setReportConcernURL:v5];

  [v4 setItemIdentifier:{-[SUUIReportAConcernConfiguration itemIdentifier](self, "itemIdentifier")}];
  v6 = [(SUUIReportAConcernConfiguration *)self reportConcernExplanation];
  [v4 setReportConcernExplanation:v6];

  v7 = [(SUUIReportAConcernConfiguration *)self selectReasonTitle];
  [v4 setSelectReasonTitle:v7];

  v8 = [(SUUIReportAConcernConfiguration *)self selectReasonSubtitle];
  [v4 setSelectReasonSubtitle:v8];

  v9 = [(SUUIReportAConcernConfiguration *)self privacyNote];
  [v4 setPrivacyNote:v9];

  v10 = [(SUUIReportAConcernConfiguration *)self reasons];
  [v4 setReasons:v10];

  return v4;
}

@end