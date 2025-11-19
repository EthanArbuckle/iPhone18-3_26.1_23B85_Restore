@interface DOCSearchingDocumentSource
- (DOCSearchingDocumentSource)initWithProviderDomain:(id)a3;
- (id)loadIconForSize:(int64_t)a3;
@end

@implementation DOCSearchingDocumentSource

- (DOCSearchingDocumentSource)initWithProviderDomain:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DOCSearchingDocumentSource;
  v6 = [(DOCDocumentSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providerDomain, a3);
    v8 = [v5 identifier];
    [(DOCDocumentSource *)v7 setIdentifier:v8];

    v9 = DOCLocalizedDisplayName();
    [(DOCDocumentSource *)v7 setDisplayName:v9];

    [(DOCDocumentSource *)v7 setSearching_fileProviderDomain:v5];
    v10 = v7;
  }

  return v7;
}

- (id)loadIconForSize:(int64_t)a3
{
  v5 = objc_opt_class();
  providerDomain = self->_providerDomain;

  return [v5 iconForFileProvider:providerDomain size:a3];
}

@end