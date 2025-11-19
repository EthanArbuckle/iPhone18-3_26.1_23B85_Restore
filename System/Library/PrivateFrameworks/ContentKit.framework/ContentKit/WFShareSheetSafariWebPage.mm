@interface WFShareSheetSafariWebPage
+ (id)webPageFromPreprocessingResult:(id)a3 javaScriptRunnerIdentifier:(id)a4;
- (WFShareSheetSafariWebPage)initWithCoder:(id)a3;
- (WFShareSheetSafariWebPage)initWithURL:(id)a3 pageTitle:(id)a4 selectionText:(id)a5 selectionHTML:(id)a6 documentHTML:(id)a7 javaScriptRunnerIdentifier:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFShareSheetSafariWebPage

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFShareSheetSafariWebPage;
  v4 = a3;
  [(WFSafariWebPage *)&v8 encodeWithCoder:v4];
  v5 = [(WFShareSheetSafariWebPage *)self selectionText:v8.receiver];
  [v4 encodeObject:v5 forKey:@"selectionText"];

  v6 = [(WFShareSheetSafariWebPage *)self selectionHTML];
  [v4 encodeObject:v6 forKey:@"selectionHTML"];

  v7 = [(WFShareSheetSafariWebPage *)self javaScriptRunnerIdentifier];
  [v4 encodeObject:v7 forKey:@"javaScriptRunnerIdentifier"];
}

- (WFShareSheetSafariWebPage)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFShareSheetSafariWebPage;
  v5 = [(WFSafariWebPage *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectionText"];
    selectionText = v5->_selectionText;
    v5->_selectionText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectionHTML"];
    selectionHTML = v5->_selectionHTML;
    v5->_selectionHTML = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"javaScriptRunnerIdentifier"];
    javaScriptRunnerIdentifier = v5->_javaScriptRunnerIdentifier;
    v5->_javaScriptRunnerIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (WFShareSheetSafariWebPage)initWithURL:(id)a3 pageTitle:(id)a4 selectionText:(id)a5 selectionHTML:(id)a6 documentHTML:(id)a7 javaScriptRunnerIdentifier:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v26.receiver = self;
  v26.super_class = WFShareSheetSafariWebPage;
  v17 = [(WFSafariWebPage *)&v26 initWithURL:a3 pageTitle:a4 documentHTML:a7];
  if (v17)
  {
    v18 = [v14 copy];
    selectionText = v17->_selectionText;
    v17->_selectionText = v18;

    v20 = [v15 copy];
    selectionHTML = v17->_selectionHTML;
    v17->_selectionHTML = v20;

    v22 = [v16 copy];
    javaScriptRunnerIdentifier = v17->_javaScriptRunnerIdentifier;
    v17->_javaScriptRunnerIdentifier = v22;

    v24 = v17;
  }

  return v17;
}

+ (id)webPageFromPreprocessingResult:(id)a3 javaScriptRunnerIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"WFShareSheetSafariWebPage.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  v9 = a1;
  v10 = [v7 objectForKey:@"URL"];
  v11 = [v7 objectForKey:@"title"];
  v12 = [v7 objectForKey:@"selectionText"];
  v13 = [v7 objectForKey:@"selection"];
  v14 = [v7 objectForKey:@"document"];
  v21 = v10;
  v15 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  if ([v13 length])
  {
    v16 = [v13 dataUsingEncoding:4];
  }

  else
  {
    v16 = 0;
  }

  if ([v14 length])
  {
    v17 = [v14 dataUsingEncoding:4];
  }

  else
  {
    v17 = 0;
  }

  v18 = [[v9 alloc] initWithURL:v15 pageTitle:v11 selectionText:v12 selectionHTML:v16 documentHTML:v17 javaScriptRunnerIdentifier:v8];

  return v18;
}

@end