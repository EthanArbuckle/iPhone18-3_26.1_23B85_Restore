@interface SUUIJSFakeXMLHTTPRequest
- (IKJSXMLDocument)responseXML;
- (NSString)responseText;
- (NSString)statusText;
- (SUUIJSFakeXMLHTTPRequest)initWithAppContext:(id)a3 data:(id)a4 URLResponse:(id)a5 performanceMetrics:(id)a6;
- (id)getAllResponseHeaders;
- (id)getResponseHeader:(id)a3;
@end

@implementation SUUIJSFakeXMLHTTPRequest

- (SUUIJSFakeXMLHTTPRequest)initWithAppContext:(id)a3 data:(id)a4 URLResponse:(id)a5 performanceMetrics:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SUUIJSFakeXMLHTTPRequest;
  v14 = [(IKJSObject *)&v17 initWithAppContext:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, a4);
    objc_storeStrong(&v15->_performanceMetrics, a6);
    objc_storeStrong(&v15->_response, a5);
  }

  return v15;
}

- (id)getAllResponseHeaders
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(NSHTTPURLResponse *)self->_response allHeaderFields];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUUIJSFakeXMLHTTPRequest_getAllResponseHeaders__block_invoke;
  v7[3] = &unk_2798FBFF8;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)getResponseHeader:(id)a3
{
  if (a3)
  {
    response = self->_response;
    v4 = a3;
    v5 = [(NSHTTPURLResponse *)response allHeaderFields];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)responseText
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_data encoding:4];

  return v2;
}

- (IKJSXMLDocument)responseXML
{
  v3 = objc_alloc(NSClassFromString(&cfstr_Ikjsxmldomimpl.isa));
  v4 = [(IKJSObject *)self appContext];
  v5 = [v3 initWithAppContext:v4];

  v6 = [v5 createLSInput];
  [v6 setByteStream:self->_data];
  v7 = [v5 createLSParser:1 :0];
  v8 = [v7 parse:v6];

  return v8;
}

- (NSString)statusText
{
  v2 = MEMORY[0x277CBAB48];
  v3 = [(NSHTTPURLResponse *)self->_response statusCode];

  return [v2 localizedStringForStatusCode:v3];
}

@end