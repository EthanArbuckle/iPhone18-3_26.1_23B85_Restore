@interface WFFileWebResource
- (WFFileWebResource)initWithCoder:(id)a3;
- (WFFileWebResource)initWithFile:(id)a3;
- (id)MIMEType;
- (id)data;
- (id)loadInWKWebView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileWebResource

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFFileWebResource;
  v4 = a3;
  [(WFWebResource *)&v6 encodeWithCoder:v4];
  v5 = [(WFFileWebResource *)self file:v6.receiver];
  [v4 encodeObject:v5 forKey:@"file"];
}

- (WFFileWebResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];

  v6 = [(WFFileWebResource *)self initWithFile:v5];
  return v6;
}

- (id)MIMEType
{
  v2 = [(WFFileWebResource *)self file];
  v3 = [v2 wfType];
  v4 = [v3 MIMEType];

  return v4;
}

- (id)data
{
  v2 = [(WFFileWebResource *)self file];
  v3 = [v2 mappedData];

  return v3;
}

- (id)loadInWKWebView:(id)a3
{
  v4 = a3;
  v5 = [(WFFileWebResource *)self file];
  v6 = [v5 fileURL];

  v7 = [v4 loadFileURL:v6 allowingReadAccessToURL:v6];

  return v7;
}

- (WFFileWebResource)initWithFile:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFFileWebResource;
  v6 = [(WFFileWebResource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_file, a3);
    v8 = v7;
  }

  return v7;
}

@end