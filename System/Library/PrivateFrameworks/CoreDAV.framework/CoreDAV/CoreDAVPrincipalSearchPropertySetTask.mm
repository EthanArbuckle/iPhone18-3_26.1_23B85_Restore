@interface CoreDAVPrincipalSearchPropertySetTask
- (CoreDAVPrincipalSearchPropertySetTask)initWithURL:(id)a3;
- (id)copyDefaultParserForContentType:(id)a3;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVPrincipalSearchPropertySetTask

- (CoreDAVPrincipalSearchPropertySetTask)initWithURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = CoreDAVPrincipalSearchPropertySetTask;
  result = [(CoreDAVTask *)&v4 initWithURL:a3];
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
  v3 = [(CoreDAVXMLData *)v2 data];

  return v3;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = [CoreDAVXMLParser alloc];
  v5 = objc_opt_class();
  v6 = [(CoreDAVTask *)self url];
  v7 = [(CoreDAVXMLParser *)v4 initWithRootElementNameSpace:@"DAV:" name:@"principal-search-property-set" parseClass:v5 baseURL:v6];

  return v7;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CoreDAVTask *)self rootElement];
    v8 = [(CoreDAVTask *)self delegate];
    v9 = [v7 principalSearchProperties];
    [v8 searchPropertySetTask:self completetWithPropertySearchSet:v9 error:v4];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v10.receiver = self;
  v10.super_class = CoreDAVPrincipalSearchPropertySetTask;
  [(CoreDAVTask *)&v10 finishCoreDAVTaskWithError:v4];
}

@end