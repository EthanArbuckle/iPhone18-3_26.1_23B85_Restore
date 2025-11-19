@interface CoreDAVItemWithHrefChildItemTolerateBarePayload
- (id)description;
- (id)href;
- (void)parserSuggestsBaseURL:(id)a3;
- (void)setPayload:(id)a3;
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

- (void)setPayload:(id)a3
{
  v10 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_alloc_init(CoreDAVHrefItem);
    virtualHref = self->_virtualHref;
    self->_virtualHref = v8;

    [(CoreDAVItem *)self->_virtualHref setPayload:v10];
    if (self->_baseURL)
    {
      [(CoreDAVHrefItem *)self->_virtualHref parserSuggestsBaseURL:?];
    }
  }
}

- (void)parserSuggestsBaseURL:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_baseURL, a3);
  virtualHref = self->_virtualHref;
  if (virtualHref)
  {
    [(CoreDAVHrefItem *)virtualHref parserSuggestsBaseURL:self->_baseURL];
  }
}

@end