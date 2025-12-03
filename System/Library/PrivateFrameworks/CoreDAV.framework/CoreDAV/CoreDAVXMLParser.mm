@interface CoreDAVXMLParser
+ (BOOL)canHandleContentType:(id)type;
- (BOOL)processData:(id)data forTask:(id)task;
- (CoreDAVErrorItem)rootError;
- (CoreDAVItem)rootElement;
- (CoreDAVXMLParser)initWithData:(id)data;
- (CoreDAVXMLParser)initWithRootElementNameSpace:(id)space name:(id)name parseClass:(Class)class baseURL:(id)l;
@end

@implementation CoreDAVXMLParser

- (CoreDAVXMLParser)initWithData:(id)data
{
  dataCopy = data;
  initializeLibXMLParser();
  v7.receiver = self;
  v7.super_class = CoreDAVXMLParser;
  v5 = [(NSXMLParser *)&v7 initWithData:dataCopy];

  return v5;
}

- (CoreDAVXMLParser)initWithRootElementNameSpace:(id)space name:(id)name parseClass:(Class)class baseURL:(id)l
{
  spaceCopy = space;
  nameCopy = name;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = CoreDAVXMLParser;
  initForIncrementalParsing = [(NSXMLParser *)&v22 initForIncrementalParsing];
  v14 = initForIncrementalParsing;
  if (initForIncrementalParsing)
  {
    [(CoreDAVXMLParser *)initForIncrementalParsing setBaseURL:lCopy];
    v15 = [CoreDAVXMLElementGenerator alloc];
    baseURL = [(CoreDAVXMLParser *)v14 baseURL];
    v17 = [(CoreDAVXMLElementGenerator *)v15 initWithParser:v14 baseURL:baseURL rootElementNameSpace:@"DAV:" elementName:@"error" parseClass:objc_opt_class()];

    [(CoreDAVXMLParser *)v14 setRootErrorGenerator:v17];
    v18 = [CoreDAVXMLElementGenerator alloc];
    baseURL2 = [(CoreDAVXMLParser *)v14 baseURL];
    v20 = [(CoreDAVXMLElementGenerator *)v18 initWithParser:v14 baseURL:baseURL2 rootElementNameSpace:spaceCopy elementName:nameCopy parseClass:class];

    [(CoreDAVXMLParser *)v14 setRootElementGenerator:v20];
    [(NSXMLParser *)v14 setShouldProcessNamespaces:1];
  }

  return v14;
}

- (BOOL)processData:(id)data forTask:(id)task
{
  dataCopy = data;
  taskCopy = task;
  if (dataCopy)
  {
    baseURL = [(CoreDAVXMLParser *)self baseURL];

    if (!baseURL)
    {
      v9 = [taskCopy url];
      [(CoreDAVXMLParser *)self setBaseURL:v9];
    }

    finishIncrementalParse = [(NSXMLParser *)self parseData:dataCopy];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = 1;
      goto LABEL_8;
    }

    finishIncrementalParse = [(NSXMLParser *)self finishIncrementalParse];
  }

  v11 = finishIncrementalParse;
LABEL_8:

  return v11;
}

- (CoreDAVItem)rootElement
{
  rootElementGenerator = [(CoreDAVXMLParser *)self rootElementGenerator];
  element = [rootElementGenerator element];

  return element;
}

- (CoreDAVErrorItem)rootError
{
  rootErrorGenerator = [(CoreDAVXMLParser *)self rootErrorGenerator];
  element = [rootErrorGenerator element];

  return element;
}

+ (BOOL)canHandleContentType:(id)type
{
  lowercaseString = [type lowercaseString];
  v4 = lowercaseString;
  if (lowercaseString && ([lowercaseString hasPrefix:@"text/xml"] & 1) == 0)
  {
    v5 = [v4 hasPrefix:@"application/xml"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end