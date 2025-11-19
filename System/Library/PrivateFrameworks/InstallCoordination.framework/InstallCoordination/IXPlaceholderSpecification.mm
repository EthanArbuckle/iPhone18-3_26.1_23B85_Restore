@interface IXPlaceholderSpecification
- (IXPlaceholder)parentPlaceholder;
- (IXPlaceholderSpecification)initWithLocalizedBundleName:(id)a3 bundleID:(id)a4 type:(unint64_t)a5 client:(unint64_t)a6 location:(id)a7;
@end

@implementation IXPlaceholderSpecification

- (IXPlaceholderSpecification)initWithLocalizedBundleName:(id)a3 bundleID:(id)a4 type:(unint64_t)a5 client:(unint64_t)a6 location:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = IXPlaceholderSpecification;
  v15 = [(IXPlaceholderSpecification *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    localizedBundleName = v15->_localizedBundleName;
    v15->_localizedBundleName = v16;

    v18 = [v13 copy];
    bundleID = v15->_bundleID;
    v15->_bundleID = v18;

    v15->_placeholderType = a5;
    v15->_client = a6;
    v20 = [v14 copyWithZone:0];
    location = v15->_location;
    v15->_location = v20;
  }

  return v15;
}

- (IXPlaceholder)parentPlaceholder
{
  WeakRetained = objc_loadWeakRetained(&self->_parentPlaceholder);

  return WeakRetained;
}

@end