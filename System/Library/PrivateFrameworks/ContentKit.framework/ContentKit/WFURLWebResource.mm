@interface WFURLWebResource
- (WFURLWebResource)initWithURL:(id)a3;
- (id)loadInWKWebView:(id)a3;
- (id)request;
@end

@implementation WFURLWebResource

- (id)loadInWKWebView:(id)a3
{
  v4 = a3;
  v5 = [(WFURLWebResource *)self request];
  v6 = [v4 loadRequest:v5];

  return v6;
}

- (id)request
{
  v2 = MEMORY[0x277CCAB70];
  v3 = [(WFWebResource *)self URL];
  v4 = [v2 requestWithURL:v3];

  [v4 _setNonAppInitiated:1];

  return v4;
}

- (WFURLWebResource)initWithURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFURLWebResource;
  return [(WFWebResource *)&v4 initWithData:0 URL:a3 MIMEType:0 textEncodingName:0 frameName:0];
}

@end