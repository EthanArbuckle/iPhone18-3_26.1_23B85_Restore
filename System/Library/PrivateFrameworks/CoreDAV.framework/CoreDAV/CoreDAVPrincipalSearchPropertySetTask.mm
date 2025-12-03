@interface CoreDAVPrincipalSearchPropertySetTask
- (CoreDAVPrincipalSearchPropertySetTask)initWithURL:(id)l;
- (id)copyDefaultParserForContentType:(id)type;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVPrincipalSearchPropertySetTask

- (CoreDAVPrincipalSearchPropertySetTask)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = CoreDAVPrincipalSearchPropertySetTask;
  result = [(CoreDAVTask *)&v4 initWithURL:l];
  if (result)
  {
    result->super._depth = 2;
  }

  return result;
}

- (id)requestBody
{
  v2 = objc_alloc_init(CoreDAVXMLData);
  [(CoreDAVXMLData *)v2 startElement:@"principal-search-property-set" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v2 endElement:@"principal-search-property-set" inNamespace:@"DAV:"];
  data = [(CoreDAVXMLData *)v2 data];

  return data;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = [CoreDAVXMLParser alloc];
  v5 = objc_opt_class();
  v6 = [(CoreDAVTask *)self url];
  v7 = [(CoreDAVXMLParser *)v4 initWithRootElementNameSpace:@"DAV:" name:@"principal-search-property-set" parseClass:v5 baseURL:v6];

  return v7;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  delegate = [(CoreDAVTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    rootElement = [(CoreDAVTask *)self rootElement];
    delegate2 = [(CoreDAVTask *)self delegate];
    principalSearchProperties = [rootElement principalSearchProperties];
    [delegate2 searchPropertySetTask:self completetWithPropertySearchSet:principalSearchProperties error:errorCopy];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v10.receiver = self;
  v10.super_class = CoreDAVPrincipalSearchPropertySetTask;
  [(CoreDAVTask *)&v10 finishCoreDAVTaskWithError:errorCopy];
}

@end