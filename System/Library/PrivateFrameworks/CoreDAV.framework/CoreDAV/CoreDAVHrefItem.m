@interface CoreDAVHrefItem
- (CoreDAVHrefItem)init;
- (CoreDAVHrefItem)initWithURL:(id)a3;
- (CoreDAVHrefItem)initWithURL:(id)a3 baseURL:(id)a4;
- (id)description;
- (id)payloadAsFullURL;
- (id)payloadAsOriginalURL;
- (void)write:(id)a3;
@end

@implementation CoreDAVHrefItem

- (CoreDAVHrefItem)init
{
  result = [(CoreDAVItem *)self initWithNameSpace:@"DAV:" andName:@"href"];
  if (result)
  {
    result->_writeStyle = 0;
  }

  return result;
}

- (CoreDAVHrefItem)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVHrefItem *)self init];
  if (v5)
  {
    v6 = [v4 absoluteString];
    [(CoreDAVItem *)v5 setPayloadAsString:v6];
  }

  return v5;
}

- (CoreDAVHrefItem)initWithURL:(id)a3 baseURL:(id)a4
{
  v7 = a4;
  v8 = [(CoreDAVHrefItem *)self initWithURL:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseURL, a4);
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = CoreDAVHrefItem;
  v4 = [(CoreDAVItem *)&v9 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVHrefItem *)self payloadAsOriginalURL];
  [v3 appendFormat:@"\n  Payload as original URL: [%@]", v5];

  v6 = [(CoreDAVHrefItem *)self payloadAsFullURL];
  [v3 appendFormat:@"\n  Payload as full URL: [%@]", v6];

  v7 = [(CoreDAVHrefItem *)self baseURL];
  [v3 appendFormat:@"\n  Base URL: [%@]", v7];

  return v3;
}

- (void)write:(id)a3
{
  v4 = a3;
  writeStyle = self->_writeStyle;
  v11 = v4;
  if (writeStyle == 1)
  {
    v6 = [(CoreDAVHrefItem *)self payloadAsFullURL];
    v7 = [v6 CDVURLWithUser:0];
    v8 = [(CoreDAVItem *)self name];
    v9 = [(CoreDAVItem *)self nameSpace];
    v10 = [v7 absoluteString];
    [v11 appendElement:v8 inNamespace:v9 withStringContent:v10 withAttributeNamesAndValues:0];

    goto LABEL_5;
  }

  if (writeStyle == 2)
  {
    v6 = [(CoreDAVItem *)self name];
    v7 = [(CoreDAVItem *)self nameSpace];
    v8 = [(CoreDAVHrefItem *)self payloadAsFullURL];
    v9 = [v8 CDVRawPath];
    [v11 appendElement:v6 inNamespace:v7 withStringContent:v9 withAttributeNamesAndValues:0];
LABEL_5:

    goto LABEL_7;
  }

  v6 = [(CoreDAVItem *)self name];
  v7 = [(CoreDAVItem *)self nameSpace];
  v8 = [(CoreDAVItem *)self payloadAsString];
  [v11 appendElement:v6 inNamespace:v7 withStringContent:v8 withAttributeNamesAndValues:0];
LABEL_7:
}

- (id)payloadAsFullURL
{
  v3 = [(CoreDAVItem *)self payloadAsString];
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (!v5 || ![v5 length])
  {
    v9 = 0;
    goto LABEL_10;
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = [(CoreDAVHrefItem *)self baseURL];
  v8 = [v6 URLWithString:v5 relativeToURL:v7];
  v9 = [v8 absoluteURL];

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v9 scheme];
  if ([v10 hasPrefix:@"http"])
  {
    v11 = [v9 user];
    if (![v11 length])
    {
      v12 = [(CoreDAVHrefItem *)self baseURL];
      v13 = [v12 user];
      if ([v13 length])
      {
        v14 = [v9 host];
        v15 = [v14 length];

        if (!v15)
        {
          goto LABEL_17;
        }

        v10 = [(CoreDAVHrefItem *)self baseURL];
        v11 = [v10 user];
        [v9 CDVURLWithUser:v11];
        v9 = v12 = v9;
      }

      else
      {
      }
    }
  }

LABEL_17:
  v17 = [v9 scheme];
  v18 = [v17 hasPrefix:@"http"];

  if (v18)
  {
    v19 = [v9 CDVRawPath];
    if ([v19 rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [v9 host];
      if (v20)
      {
        v21 = v20;
        v22 = [v9 host];
        v23 = [v22 length];

        if (v23)
        {
          v24 = [v19 CDVStringByAddingPercentEscapesForHREF];
          v25 = [v9 CDVURLWithPath:v24];

          v9 = v25;
        }
      }
    }
  }

LABEL_10:

  return v9;
}

- (id)payloadAsOriginalURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(CoreDAVItem *)self payloadAsString];
  v4 = [v2 URLWithString:v3];
  v5 = [v4 absoluteURL];

  return v5;
}

@end