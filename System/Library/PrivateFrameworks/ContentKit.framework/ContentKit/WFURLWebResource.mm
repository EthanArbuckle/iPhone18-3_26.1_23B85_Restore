@interface WFURLWebResource
- (WFURLWebResource)initWithURL:(id)l;
- (id)loadInWKWebView:(id)view;
- (id)request;
@end

@implementation WFURLWebResource

- (id)loadInWKWebView:(id)view
{
  viewCopy = view;
  request = [(WFURLWebResource *)self request];
  v6 = [viewCopy loadRequest:request];

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

- (WFURLWebResource)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = WFURLWebResource;
  return [(WFWebResource *)&v4 initWithData:0 URL:l MIMEType:0 textEncodingName:0 frameName:0];
}

@end