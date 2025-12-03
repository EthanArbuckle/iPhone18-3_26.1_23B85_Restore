@interface CoreDAVItemWithHrefChildItemTolerateBarePayload
- (id)description;
- (id)href;
- (void)parserSuggestsBaseURL:(id)l;
- (void)setPayload:(id)payload;
@end

@implementation CoreDAVItemWithHrefChildItemTolerateBarePayload

- (id)href
{
  href = self->super._href;
  if (!href)
  {
    href = self->_virtualHref;
  }

  return href;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CoreDAVItemWithHrefChildItemTolerateBarePayload;
  v3 = [(CoreDAVItemWithHrefChildItem *)&v7 description];
  v4 = v3;
  if (self->super._href)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v3];
    [v5 appendFormat:@"\n  (virtual HREF, element had a bare payload)"];
  }

  return v5;
}

- (void)setPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:payloadCopy encoding:4];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_alloc_init(CoreDAVHrefItem);
    virtualHref = self->_virtualHref;
    self->_virtualHref = v8;

    [(CoreDAVItem *)self->_virtualHref setPayload:payloadCopy];
    if (self->_baseURL)
    {
      [(CoreDAVHrefItem *)self->_virtualHref parserSuggestsBaseURL:?];
    }
  }
}

- (void)parserSuggestsBaseURL:(id)l
{
  lCopy = l;
  objc_storeStrong(&self->_baseURL, l);
  virtualHref = self->_virtualHref;
  if (virtualHref)
  {
    [(CoreDAVHrefItem *)virtualHref parserSuggestsBaseURL:self->_baseURL];
  }
}

@end