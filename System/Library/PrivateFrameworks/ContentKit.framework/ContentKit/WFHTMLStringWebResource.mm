@interface WFHTMLStringWebResource
- (WFHTMLStringWebResource)initWithCoder:(id)coder;
- (WFHTMLStringWebResource)initWithHTMLString:(id)string baseURL:(id)l;
- (id)MIMEType;
- (id)data;
- (id)loadInWKWebView:(id)view;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHTMLStringWebResource

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFHTMLStringWebResource;
  coderCopy = coder;
  [(WFWebResource *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFHTMLStringWebResource *)self htmlString:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"htmlString"];

  baseURL = [(WFHTMLStringWebResource *)self baseURL];
  [coderCopy encodeObject:baseURL forKey:@"baseURL"];
}

- (WFHTMLStringWebResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"htmlString"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];

  v7 = [(WFHTMLStringWebResource *)self initWithHTMLString:v5 baseURL:v6];
  return v7;
}

- (id)MIMEType
{
  v2 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  mIMEType = [v2 MIMEType];

  return mIMEType;
}

- (id)data
{
  htmlString = [(WFHTMLStringWebResource *)self htmlString];
  v3 = [htmlString dataUsingEncoding:4];

  return v3;
}

- (id)loadInWKWebView:(id)view
{
  viewCopy = view;
  htmlString = [(WFHTMLStringWebResource *)self htmlString];
  baseURL = [(WFHTMLStringWebResource *)self baseURL];
  if (baseURL)
  {
    v7 = [viewCopy loadHTMLString:htmlString baseURL:baseURL];
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"file:///"];
    v7 = [viewCopy loadHTMLString:htmlString baseURL:v8];
  }

  return v7;
}

- (WFHTMLStringWebResource)initWithHTMLString:(id)string baseURL:(id)l
{
  stringCopy = string;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = WFHTMLStringWebResource;
  v9 = [(WFHTMLStringWebResource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_htmlString, string);
    objc_storeStrong(&v10->_baseURL, l);
    v11 = v10;
  }

  return v10;
}

@end