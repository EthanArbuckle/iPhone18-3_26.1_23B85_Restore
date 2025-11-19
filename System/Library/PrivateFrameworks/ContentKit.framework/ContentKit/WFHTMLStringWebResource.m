@interface WFHTMLStringWebResource
- (WFHTMLStringWebResource)initWithCoder:(id)a3;
- (WFHTMLStringWebResource)initWithHTMLString:(id)a3 baseURL:(id)a4;
- (id)MIMEType;
- (id)data;
- (id)loadInWKWebView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFHTMLStringWebResource

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFHTMLStringWebResource;
  v4 = a3;
  [(WFWebResource *)&v7 encodeWithCoder:v4];
  v5 = [(WFHTMLStringWebResource *)self htmlString:v7.receiver];
  [v4 encodeObject:v5 forKey:@"htmlString"];

  v6 = [(WFHTMLStringWebResource *)self baseURL];
  [v4 encodeObject:v6 forKey:@"baseURL"];
}

- (WFHTMLStringWebResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"htmlString"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];

  v7 = [(WFHTMLStringWebResource *)self initWithHTMLString:v5 baseURL:v6];
  return v7;
}

- (id)MIMEType
{
  v2 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v3 = [v2 MIMEType];

  return v3;
}

- (id)data
{
  v2 = [(WFHTMLStringWebResource *)self htmlString];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (id)loadInWKWebView:(id)a3
{
  v4 = a3;
  v5 = [(WFHTMLStringWebResource *)self htmlString];
  v6 = [(WFHTMLStringWebResource *)self baseURL];
  if (v6)
  {
    v7 = [v4 loadHTMLString:v5 baseURL:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"file:///"];
    v7 = [v4 loadHTMLString:v5 baseURL:v8];
  }

  return v7;
}

- (WFHTMLStringWebResource)initWithHTMLString:(id)a3 baseURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFHTMLStringWebResource;
  v9 = [(WFHTMLStringWebResource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_htmlString, a3);
    objc_storeStrong(&v10->_baseURL, a4);
    v11 = v10;
  }

  return v10;
}

@end