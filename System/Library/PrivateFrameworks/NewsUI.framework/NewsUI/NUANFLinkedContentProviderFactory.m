@interface NUANFLinkedContentProviderFactory
- (NUANFLinkedContentProviderFactory)initWithContentContext:(id)a3;
- (id)createLinkedContentProviderForArticle:(id)a3;
@end

@implementation NUANFLinkedContentProviderFactory

- (NUANFLinkedContentProviderFactory)initWithContentContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUANFLinkedContentProviderFactory;
  v6 = [(NUANFLinkedContentProviderFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, a3);
  }

  return v7;
}

- (id)createLinkedContentProviderForArticle:(id)a3
{
  v3 = [[NUANFLinkedContentProvider alloc] initWithContentContext:self->_contentContext];

  return v3;
}

@end