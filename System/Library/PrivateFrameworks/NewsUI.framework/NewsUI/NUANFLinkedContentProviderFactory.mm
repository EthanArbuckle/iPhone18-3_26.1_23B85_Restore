@interface NUANFLinkedContentProviderFactory
- (NUANFLinkedContentProviderFactory)initWithContentContext:(id)context;
- (id)createLinkedContentProviderForArticle:(id)article;
@end

@implementation NUANFLinkedContentProviderFactory

- (NUANFLinkedContentProviderFactory)initWithContentContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = NUANFLinkedContentProviderFactory;
  v6 = [(NUANFLinkedContentProviderFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, context);
  }

  return v7;
}

- (id)createLinkedContentProviderForArticle:(id)article
{
  v3 = [[NUANFLinkedContentProvider alloc] initWithContentContext:self->_contentContext];

  return v3;
}

@end