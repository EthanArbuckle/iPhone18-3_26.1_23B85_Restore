@interface WFFileWebResource
- (WFFileWebResource)initWithCoder:(id)coder;
- (WFFileWebResource)initWithFile:(id)file;
- (id)MIMEType;
- (id)data;
- (id)loadInWKWebView:(id)view;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileWebResource

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFFileWebResource;
  coderCopy = coder;
  [(WFWebResource *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFFileWebResource *)self file:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"file"];
}

- (WFFileWebResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];

  v6 = [(WFFileWebResource *)self initWithFile:v5];
  return v6;
}

- (id)MIMEType
{
  file = [(WFFileWebResource *)self file];
  wfType = [file wfType];
  mIMEType = [wfType MIMEType];

  return mIMEType;
}

- (id)data
{
  file = [(WFFileWebResource *)self file];
  mappedData = [file mappedData];

  return mappedData;
}

- (id)loadInWKWebView:(id)view
{
  viewCopy = view;
  file = [(WFFileWebResource *)self file];
  fileURL = [file fileURL];

  v7 = [viewCopy loadFileURL:fileURL allowingReadAccessToURL:fileURL];

  return v7;
}

- (WFFileWebResource)initWithFile:(id)file
{
  fileCopy = file;
  v10.receiver = self;
  v10.super_class = WFFileWebResource;
  v6 = [(WFFileWebResource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_file, file);
    v8 = v7;
  }

  return v7;
}

@end