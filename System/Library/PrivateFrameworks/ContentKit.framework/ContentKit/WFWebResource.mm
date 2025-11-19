@interface WFWebResource
+ (WFWebResource)webResourceWithData:(id)a3 MIMEType:(id)a4 textEncodingName:(id)a5 baseURL:(id)a6;
+ (WFWebResource)webResourceWithFile:(id)a3;
+ (WFWebResource)webResourceWithHTMLString:(id)a3 baseURL:(id)a4;
+ (WFWebResource)webResourceWithURL:(id)a3;
- (WFWebResource)initWithCoder:(id)a3;
- (WFWebResource)initWithData:(id)a3 URL:(id)a4 MIMEType:(id)a5 textEncodingName:(id)a6 frameName:(id)a7;
- (WFWebResource)initWithSerializedRepresentation:(id)a3;
- (id)containedImageFile;
- (id)description;
- (id)loadInWKWebView:(id)a3;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWebResource

+ (WFWebResource)webResourceWithFile:(id)a3
{
  v3 = a3;
  v4 = [[WFFileWebResource alloc] initWithFile:v3];

  return v4;
}

+ (WFWebResource)webResourceWithHTMLString:(id)a3 baseURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[WFHTMLStringWebResource alloc] initWithHTMLString:v6 baseURL:v5];

  return v7;
}

+ (WFWebResource)webResourceWithURL:(id)a3
{
  v3 = a3;
  v4 = [[WFURLWebResource alloc] initWithURL:v3];

  return v4;
}

+ (WFWebResource)webResourceWithData:(id)a3 MIMEType:(id)a4 textEncodingName:(id)a5 baseURL:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[WFWebResource alloc] initWithData:v12 URL:v9 MIMEType:v11 textEncodingName:v10 frameName:0];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWebResource *)self data];
  [v4 encodeObject:v5 forKey:@"WebResourceData"];

  v6 = [(WFWebResource *)self URL];
  [v4 encodeObject:v6 forKey:@"WebResourceURL"];

  v7 = [(WFWebResource *)self MIMEType];
  [v4 encodeObject:v7 forKey:@"WebResourceMIMEType"];

  v8 = [(WFWebResource *)self textEncodingName];
  [v4 encodeObject:v8 forKey:@"WebResourceTextEncodingName"];

  v9 = [(WFWebResource *)self frameName];
  [v4 encodeObject:v9 forKey:@"WebResourceFrameName"];
}

- (WFWebResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWebResource *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceData"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    textEncodingName = v5->_textEncodingName;
    v5->_textEncodingName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    frameName = v5->_frameName;
    v5->_frameName = v14;

    v16 = v5;
  }

  return v5;
}

- (id)serializedRepresentation
{
  v3 = [(WFWebResource *)self data];
  v4 = [(WFWebResource *)self URL];
  v5 = [(WFWebResource *)self MIMEType];
  v6 = [(WFWebResource *)self textEncodingName];
  v7 = [(WFWebResource *)self frameName];
  v8 = objc_opt_new();
  v9 = v8;
  if (v3)
  {
    [v8 setObject:v3 forKey:@"WebResourceData"];
  }

  if (v4)
  {
    v10 = [v4 absoluteString];
    [v9 setObject:v10 forKey:@"WebResourceURL"];
  }

  if (v5)
  {
    [v9 setObject:v5 forKey:@"WebResourceMIMEType"];
  }

  if (v6)
  {
    [v9 setObject:v6 forKey:@"WebResourceTextEncodingName"];
  }

  if (v7)
  {
    [v9 setObject:v7 forKey:@"WebResourceFrameName"];
  }

  return v9;
}

- (WFWebResource)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"WebResourceData"];
  v6 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
  v7 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"WebResourceMIMEType"];
  v8 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"WebResourceTextEncodingName"];
  v9 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"WebResourceFrameName"];

  v10 = [(WFWebResource *)self initWithData:v5 URL:v6 MIMEType:v7 textEncodingName:v8 frameName:v9];
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = WFWebResource;
  v4 = [(WFWebResource *)&v10 description];
  v5 = [(WFWebResource *)self URL];
  v6 = v5;
  if (v5)
  {
    v7 = [v3 stringWithFormat:@"%@ %@", v4, v5];
  }

  else
  {
    v8 = [(WFWebResource *)self MIMEType];
    v7 = [v3 stringWithFormat:@"%@ %@", v4, v8];
  }

  return v7;
}

- (WFWebResource)initWithData:(id)a3 URL:(id)a4 MIMEType:(id)a5 textEncodingName:(id)a6 frameName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(WFWebResource *)self init];
  if (v17)
  {
    v18 = [v12 copy];
    data = v17->_data;
    v17->_data = v18;

    objc_storeStrong(&v17->_URL, a4);
    v20 = [v14 copy];
    MIMEType = v17->_MIMEType;
    v17->_MIMEType = v20;

    v22 = [v15 copy];
    textEncodingName = v17->_textEncodingName;
    v17->_textEncodingName = v22;

    v24 = [v16 copy];
    frameName = v17->_frameName;
    v17->_frameName = v24;

    v26 = v17;
  }

  return v17;
}

- (id)loadInWKWebView:(id)a3
{
  v4 = a3;
  v5 = [(WFWebResource *)self data];
  v6 = [(WFWebResource *)self MIMEType];
  v7 = [(WFWebResource *)self textEncodingName];
  v8 = [(WFWebResource *)self URL];
  v9 = [v4 loadData:v5 MIMEType:v6 characterEncodingName:v7 baseURL:v8];

  return v9;
}

- (id)containedImageFile
{
  v3 = MEMORY[0x277D79F68];
  v4 = [(WFWebResource *)self MIMEType];
  v5 = [v3 typeFromMIMEType:v4];

  if ([v5 conformsToUTType:*MEMORY[0x277CE1DB0]] && (objc_msgSend(v5, "conformsToUTType:", *MEMORY[0x277CE1E68]) & 1) == 0)
  {
    v7 = [(WFWebResource *)self data];
    v8 = [(WFWebResource *)self URL];
    v9 = [v8 lastPathComponent];
    v6 = [WFFileRepresentation fileWithData:v7 ofType:v5 proposedFilename:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end