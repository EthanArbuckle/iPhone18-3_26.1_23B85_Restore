@interface DIWebPresentmentBrand
- (DIWebPresentmentBrand)initWithBrandIdentifier:(id)a3 localizedNames:(id)a4 logoURL:(id)a5;
@end

@implementation DIWebPresentmentBrand

- (DIWebPresentmentBrand)initWithBrandIdentifier:(id)a3 localizedNames:(id)a4 logoURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DIWebPresentmentBrand;
  v11 = [(DIWebPresentmentBrand *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    brandIdentifier = v11->_brandIdentifier;
    v11->_brandIdentifier = v12;

    v14 = [v9 copy];
    localizedNames = v11->_localizedNames;
    v11->_localizedNames = v14;

    v16 = [v10 copy];
    logoURL = v11->_logoURL;
    v11->_logoURL = v16;
  }

  return v11;
}

@end