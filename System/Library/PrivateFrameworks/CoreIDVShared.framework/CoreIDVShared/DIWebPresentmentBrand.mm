@interface DIWebPresentmentBrand
- (DIWebPresentmentBrand)initWithBrandIdentifier:(id)identifier localizedNames:(id)names logoURL:(id)l;
@end

@implementation DIWebPresentmentBrand

- (DIWebPresentmentBrand)initWithBrandIdentifier:(id)identifier localizedNames:(id)names logoURL:(id)l
{
  identifierCopy = identifier;
  namesCopy = names;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = DIWebPresentmentBrand;
  v11 = [(DIWebPresentmentBrand *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    brandIdentifier = v11->_brandIdentifier;
    v11->_brandIdentifier = v12;

    v14 = [namesCopy copy];
    localizedNames = v11->_localizedNames;
    v11->_localizedNames = v14;

    v16 = [lCopy copy];
    logoURL = v11->_logoURL;
    v11->_logoURL = v16;
  }

  return v11;
}

@end