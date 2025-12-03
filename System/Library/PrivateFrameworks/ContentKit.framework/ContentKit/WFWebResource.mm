@interface WFWebResource
+ (WFWebResource)webResourceWithData:(id)data MIMEType:(id)type textEncodingName:(id)name baseURL:(id)l;
+ (WFWebResource)webResourceWithFile:(id)file;
+ (WFWebResource)webResourceWithHTMLString:(id)string baseURL:(id)l;
+ (WFWebResource)webResourceWithURL:(id)l;
- (WFWebResource)initWithCoder:(id)coder;
- (WFWebResource)initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName;
- (WFWebResource)initWithSerializedRepresentation:(id)representation;
- (id)containedImageFile;
- (id)description;
- (id)loadInWKWebView:(id)view;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWebResource

+ (WFWebResource)webResourceWithFile:(id)file
{
  fileCopy = file;
  v4 = [[WFFileWebResource alloc] initWithFile:fileCopy];

  return v4;
}

+ (WFWebResource)webResourceWithHTMLString:(id)string baseURL:(id)l
{
  lCopy = l;
  stringCopy = string;
  v7 = [[WFHTMLStringWebResource alloc] initWithHTMLString:stringCopy baseURL:lCopy];

  return v7;
}

+ (WFWebResource)webResourceWithURL:(id)l
{
  lCopy = l;
  v4 = [[WFURLWebResource alloc] initWithURL:lCopy];

  return v4;
}

+ (WFWebResource)webResourceWithData:(id)data MIMEType:(id)type textEncodingName:(id)name baseURL:(id)l
{
  lCopy = l;
  nameCopy = name;
  typeCopy = type;
  dataCopy = data;
  v13 = [[WFWebResource alloc] initWithData:dataCopy URL:lCopy MIMEType:typeCopy textEncodingName:nameCopy frameName:0];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(WFWebResource *)self data];
  [coderCopy encodeObject:data forKey:@"WebResourceData"];

  v6 = [(WFWebResource *)self URL];
  [coderCopy encodeObject:v6 forKey:@"WebResourceURL"];

  mIMEType = [(WFWebResource *)self MIMEType];
  [coderCopy encodeObject:mIMEType forKey:@"WebResourceMIMEType"];

  textEncodingName = [(WFWebResource *)self textEncodingName];
  [coderCopy encodeObject:textEncodingName forKey:@"WebResourceTextEncodingName"];

  frameName = [(WFWebResource *)self frameName];
  [coderCopy encodeObject:frameName forKey:@"WebResourceFrameName"];
}

- (WFWebResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFWebResource *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceData"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    textEncodingName = v5->_textEncodingName;
    v5->_textEncodingName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
    frameName = v5->_frameName;
    v5->_frameName = v14;

    v16 = v5;
  }

  return v5;
}

- (id)serializedRepresentation
{
  data = [(WFWebResource *)self data];
  v4 = [(WFWebResource *)self URL];
  mIMEType = [(WFWebResource *)self MIMEType];
  textEncodingName = [(WFWebResource *)self textEncodingName];
  frameName = [(WFWebResource *)self frameName];
  v8 = objc_opt_new();
  v9 = v8;
  if (data)
  {
    [v8 setObject:data forKey:@"WebResourceData"];
  }

  if (v4)
  {
    absoluteString = [v4 absoluteString];
    [v9 setObject:absoluteString forKey:@"WebResourceURL"];
  }

  if (mIMEType)
  {
    [v9 setObject:mIMEType forKey:@"WebResourceMIMEType"];
  }

  if (textEncodingName)
  {
    [v9 setObject:textEncodingName forKey:@"WebResourceTextEncodingName"];
  }

  if (frameName)
  {
    [v9 setObject:frameName forKey:@"WebResourceFrameName"];
  }

  return v9;
}

- (WFWebResource)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"WebResourceData"];
  v6 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"WebResourceURL"];
  v7 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"WebResourceMIMEType"];
  v8 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"WebResourceTextEncodingName"];
  v9 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"WebResourceFrameName"];

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
    mIMEType = [(WFWebResource *)self MIMEType];
    v7 = [v3 stringWithFormat:@"%@ %@", v4, mIMEType];
  }

  return v7;
}

- (WFWebResource)initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName
{
  dataCopy = data;
  lCopy = l;
  typeCopy = type;
  nameCopy = name;
  frameNameCopy = frameName;
  v17 = [(WFWebResource *)self init];
  if (v17)
  {
    v18 = [dataCopy copy];
    data = v17->_data;
    v17->_data = v18;

    objc_storeStrong(&v17->_URL, l);
    v20 = [typeCopy copy];
    MIMEType = v17->_MIMEType;
    v17->_MIMEType = v20;

    v22 = [nameCopy copy];
    textEncodingName = v17->_textEncodingName;
    v17->_textEncodingName = v22;

    v24 = [frameNameCopy copy];
    frameName = v17->_frameName;
    v17->_frameName = v24;

    v26 = v17;
  }

  return v17;
}

- (id)loadInWKWebView:(id)view
{
  viewCopy = view;
  data = [(WFWebResource *)self data];
  mIMEType = [(WFWebResource *)self MIMEType];
  textEncodingName = [(WFWebResource *)self textEncodingName];
  v8 = [(WFWebResource *)self URL];
  v9 = [viewCopy loadData:data MIMEType:mIMEType characterEncodingName:textEncodingName baseURL:v8];

  return v9;
}

- (id)containedImageFile
{
  v3 = MEMORY[0x277D79F68];
  mIMEType = [(WFWebResource *)self MIMEType];
  v5 = [v3 typeFromMIMEType:mIMEType];

  if ([v5 conformsToUTType:*MEMORY[0x277CE1DB0]] && (objc_msgSend(v5, "conformsToUTType:", *MEMORY[0x277CE1E68]) & 1) == 0)
  {
    data = [(WFWebResource *)self data];
    v8 = [(WFWebResource *)self URL];
    lastPathComponent = [v8 lastPathComponent];
    v6 = [WFFileRepresentation fileWithData:data ofType:v5 proposedFilename:lastPathComponent];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end