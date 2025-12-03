@interface CoreDAVHrefItem
- (CoreDAVHrefItem)init;
- (CoreDAVHrefItem)initWithURL:(id)l;
- (CoreDAVHrefItem)initWithURL:(id)l baseURL:(id)rL;
- (id)description;
- (id)payloadAsFullURL;
- (id)payloadAsOriginalURL;
- (void)write:(id)write;
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

- (CoreDAVHrefItem)initWithURL:(id)l
{
  lCopy = l;
  v5 = [(CoreDAVHrefItem *)self init];
  if (v5)
  {
    absoluteString = [lCopy absoluteString];
    [(CoreDAVItem *)v5 setPayloadAsString:absoluteString];
  }

  return v5;
}

- (CoreDAVHrefItem)initWithURL:(id)l baseURL:(id)rL
{
  rLCopy = rL;
  v8 = [(CoreDAVHrefItem *)self initWithURL:l];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseURL, rL);
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

  payloadAsOriginalURL = [(CoreDAVHrefItem *)self payloadAsOriginalURL];
  [v3 appendFormat:@"\n  Payload as original URL: [%@]", payloadAsOriginalURL];

  payloadAsFullURL = [(CoreDAVHrefItem *)self payloadAsFullURL];
  [v3 appendFormat:@"\n  Payload as full URL: [%@]", payloadAsFullURL];

  baseURL = [(CoreDAVHrefItem *)self baseURL];
  [v3 appendFormat:@"\n  Base URL: [%@]", baseURL];

  return v3;
}

- (void)write:(id)write
{
  writeCopy = write;
  writeStyle = self->_writeStyle;
  v11 = writeCopy;
  if (writeStyle == 1)
  {
    payloadAsFullURL = [(CoreDAVHrefItem *)self payloadAsFullURL];
    nameSpace2 = [payloadAsFullURL CDVURLWithUser:0];
    name = [(CoreDAVItem *)self name];
    nameSpace = [(CoreDAVItem *)self nameSpace];
    absoluteString = [nameSpace2 absoluteString];
    [v11 appendElement:name inNamespace:nameSpace withStringContent:absoluteString withAttributeNamesAndValues:0];

    goto LABEL_5;
  }

  if (writeStyle == 2)
  {
    payloadAsFullURL = [(CoreDAVItem *)self name];
    nameSpace2 = [(CoreDAVItem *)self nameSpace];
    name = [(CoreDAVHrefItem *)self payloadAsFullURL];
    nameSpace = [name CDVRawPath];
    [v11 appendElement:payloadAsFullURL inNamespace:nameSpace2 withStringContent:nameSpace withAttributeNamesAndValues:0];
LABEL_5:

    goto LABEL_7;
  }

  payloadAsFullURL = [(CoreDAVItem *)self name];
  nameSpace2 = [(CoreDAVItem *)self nameSpace];
  name = [(CoreDAVItem *)self payloadAsString];
  [v11 appendElement:payloadAsFullURL inNamespace:nameSpace2 withStringContent:name withAttributeNamesAndValues:0];
LABEL_7:
}

- (id)payloadAsFullURL
{
  payloadAsString = [(CoreDAVItem *)self payloadAsString];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [payloadAsString stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (!v5 || ![v5 length])
  {
    absoluteURL = 0;
    goto LABEL_10;
  }

  v6 = MEMORY[0x277CBEBC0];
  baseURL = [(CoreDAVHrefItem *)self baseURL];
  v8 = [v6 URLWithString:v5 relativeToURL:baseURL];
  absoluteURL = [v8 absoluteURL];

  if (!absoluteURL)
  {
    goto LABEL_10;
  }

  scheme = [absoluteURL scheme];
  if ([scheme hasPrefix:@"http"])
  {
    user = [absoluteURL user];
    if (![user length])
    {
      baseURL2 = [(CoreDAVHrefItem *)self baseURL];
      user2 = [baseURL2 user];
      if ([user2 length])
      {
        host = [absoluteURL host];
        v15 = [host length];

        if (!v15)
        {
          goto LABEL_17;
        }

        scheme = [(CoreDAVHrefItem *)self baseURL];
        user = [scheme user];
        [absoluteURL CDVURLWithUser:user];
        absoluteURL = baseURL2 = absoluteURL;
      }

      else
      {
      }
    }
  }

LABEL_17:
  scheme2 = [absoluteURL scheme];
  v18 = [scheme2 hasPrefix:@"http"];

  if (v18)
  {
    cDVRawPath = [absoluteURL CDVRawPath];
    if ([cDVRawPath rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      host2 = [absoluteURL host];
      if (host2)
      {
        v21 = host2;
        host3 = [absoluteURL host];
        v23 = [host3 length];

        if (v23)
        {
          cDVStringByAddingPercentEscapesForHREF = [cDVRawPath CDVStringByAddingPercentEscapesForHREF];
          v25 = [absoluteURL CDVURLWithPath:cDVStringByAddingPercentEscapesForHREF];

          absoluteURL = v25;
        }
      }
    }
  }

LABEL_10:

  return absoluteURL;
}

- (id)payloadAsOriginalURL
{
  v2 = MEMORY[0x277CBEBC0];
  payloadAsString = [(CoreDAVItem *)self payloadAsString];
  v4 = [v2 URLWithString:payloadAsString];
  absoluteURL = [v4 absoluteURL];

  return absoluteURL;
}

@end