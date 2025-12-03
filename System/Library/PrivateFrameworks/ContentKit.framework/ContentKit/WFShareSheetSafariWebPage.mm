@interface WFShareSheetSafariWebPage
+ (id)webPageFromPreprocessingResult:(id)result javaScriptRunnerIdentifier:(id)identifier;
- (WFShareSheetSafariWebPage)initWithCoder:(id)coder;
- (WFShareSheetSafariWebPage)initWithURL:(id)l pageTitle:(id)title selectionText:(id)text selectionHTML:(id)mL documentHTML:(id)tML javaScriptRunnerIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFShareSheetSafariWebPage

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFShareSheetSafariWebPage;
  coderCopy = coder;
  [(WFSafariWebPage *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFShareSheetSafariWebPage *)self selectionText:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectionText"];

  selectionHTML = [(WFShareSheetSafariWebPage *)self selectionHTML];
  [coderCopy encodeObject:selectionHTML forKey:@"selectionHTML"];

  javaScriptRunnerIdentifier = [(WFShareSheetSafariWebPage *)self javaScriptRunnerIdentifier];
  [coderCopy encodeObject:javaScriptRunnerIdentifier forKey:@"javaScriptRunnerIdentifier"];
}

- (WFShareSheetSafariWebPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFShareSheetSafariWebPage;
  v5 = [(WFSafariWebPage *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionText"];
    selectionText = v5->_selectionText;
    v5->_selectionText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionHTML"];
    selectionHTML = v5->_selectionHTML;
    v5->_selectionHTML = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"javaScriptRunnerIdentifier"];
    javaScriptRunnerIdentifier = v5->_javaScriptRunnerIdentifier;
    v5->_javaScriptRunnerIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (WFShareSheetSafariWebPage)initWithURL:(id)l pageTitle:(id)title selectionText:(id)text selectionHTML:(id)mL documentHTML:(id)tML javaScriptRunnerIdentifier:(id)identifier
{
  textCopy = text;
  mLCopy = mL;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = WFShareSheetSafariWebPage;
  v17 = [(WFSafariWebPage *)&v26 initWithURL:l pageTitle:title documentHTML:tML];
  if (v17)
  {
    v18 = [textCopy copy];
    selectionText = v17->_selectionText;
    v17->_selectionText = v18;

    v20 = [mLCopy copy];
    selectionHTML = v17->_selectionHTML;
    v17->_selectionHTML = v20;

    v22 = [identifierCopy copy];
    javaScriptRunnerIdentifier = v17->_javaScriptRunnerIdentifier;
    v17->_javaScriptRunnerIdentifier = v22;

    v24 = v17;
  }

  return v17;
}

+ (id)webPageFromPreprocessingResult:(id)result javaScriptRunnerIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareSheetSafariWebPage.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  selfCopy = self;
  v10 = [resultCopy objectForKey:@"URL"];
  v11 = [resultCopy objectForKey:@"title"];
  v12 = [resultCopy objectForKey:@"selectionText"];
  v13 = [resultCopy objectForKey:@"selection"];
  v14 = [resultCopy objectForKey:@"document"];
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

  v18 = [[selfCopy alloc] initWithURL:v15 pageTitle:v11 selectionText:v12 selectionHTML:v16 documentHTML:v17 javaScriptRunnerIdentifier:identifierCopy];

  return v18;
}

@end