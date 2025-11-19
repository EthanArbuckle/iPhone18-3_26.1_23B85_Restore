@interface WFSafariWebPage
- (WFSafariWebPage)initWithCoder:(id)a3;
- (WFSafariWebPage)initWithURL:(id)a3 pageTitle:(id)a4 documentHTML:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSafariWebPage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSafariWebPage *)self URL];
  [v4 encodeObject:v5 forKey:@"URL"];

  v6 = [(WFSafariWebPage *)self pageTitle];
  [v4 encodeObject:v6 forKey:@"pageTitle"];

  v7 = [(WFSafariWebPage *)self documentHTML];
  [v4 encodeObject:v7 forKey:@"documentHTML"];
}

- (WFSafariWebPage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pageTitle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentHTML"];

  v8 = [(WFSafariWebPage *)self initWithURL:v5 pageTitle:v6 documentHTML:v7];
  return v8;
}

- (WFSafariWebPage)initWithURL:(id)a3 pageTitle:(id)a4 documentHTML:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFSafariWebPage.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"URL"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFSafariWebPage.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"pageTitle"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFSafariWebPage;
  v12 = [(WFSafariWebPage *)&v23 init];
  if (v12)
  {
    v13 = [v9 copy];
    URL = v12->_URL;
    v12->_URL = v13;

    v15 = [v10 copy];
    pageTitle = v12->_pageTitle;
    v12->_pageTitle = v15;

    v17 = [v11 copy];
    documentHTML = v12->_documentHTML;
    v12->_documentHTML = v17;

    v19 = v12;
  }

  return v12;
}

@end