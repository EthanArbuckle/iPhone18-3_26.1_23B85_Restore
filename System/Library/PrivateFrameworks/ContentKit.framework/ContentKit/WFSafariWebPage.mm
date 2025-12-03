@interface WFSafariWebPage
- (WFSafariWebPage)initWithCoder:(id)coder;
- (WFSafariWebPage)initWithURL:(id)l pageTitle:(id)title documentHTML:(id)mL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSafariWebPage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFSafariWebPage *)self URL];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  pageTitle = [(WFSafariWebPage *)self pageTitle];
  [coderCopy encodeObject:pageTitle forKey:@"pageTitle"];

  documentHTML = [(WFSafariWebPage *)self documentHTML];
  [coderCopy encodeObject:documentHTML forKey:@"documentHTML"];
}

- (WFSafariWebPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pageTitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentHTML"];

  v8 = [(WFSafariWebPage *)self initWithURL:v5 pageTitle:v6 documentHTML:v7];
  return v8;
}

- (WFSafariWebPage)initWithURL:(id)l pageTitle:(id)title documentHTML:(id)mL
{
  lCopy = l;
  titleCopy = title;
  mLCopy = mL;
  if (lCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSafariWebPage.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"URL"}];

    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSafariWebPage.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"pageTitle"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFSafariWebPage;
  v12 = [(WFSafariWebPage *)&v23 init];
  if (v12)
  {
    v13 = [lCopy copy];
    URL = v12->_URL;
    v12->_URL = v13;

    v15 = [titleCopy copy];
    pageTitle = v12->_pageTitle;
    v12->_pageTitle = v15;

    v17 = [mLCopy copy];
    documentHTML = v12->_documentHTML;
    v12->_documentHTML = v17;

    v19 = v12;
  }

  return v12;
}

@end