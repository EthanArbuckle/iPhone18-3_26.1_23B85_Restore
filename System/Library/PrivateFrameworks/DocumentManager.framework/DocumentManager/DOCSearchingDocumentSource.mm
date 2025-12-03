@interface DOCSearchingDocumentSource
- (DOCSearchingDocumentSource)initWithProviderDomain:(id)domain;
- (id)loadIconForSize:(int64_t)size;
@end

@implementation DOCSearchingDocumentSource

- (DOCSearchingDocumentSource)initWithProviderDomain:(id)domain
{
  domainCopy = domain;
  v12.receiver = self;
  v12.super_class = DOCSearchingDocumentSource;
  v6 = [(DOCDocumentSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providerDomain, domain);
    identifier = [domainCopy identifier];
    [(DOCDocumentSource *)v7 setIdentifier:identifier];

    v9 = DOCLocalizedDisplayName();
    [(DOCDocumentSource *)v7 setDisplayName:v9];

    [(DOCDocumentSource *)v7 setSearching_fileProviderDomain:domainCopy];
    v10 = v7;
  }

  return v7;
}

- (id)loadIconForSize:(int64_t)size
{
  v5 = objc_opt_class();
  providerDomain = self->_providerDomain;

  return [v5 iconForFileProvider:providerDomain size:size];
}

@end