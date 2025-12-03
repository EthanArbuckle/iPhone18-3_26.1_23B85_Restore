@interface IXPlaceholderSpecification
- (IXPlaceholder)parentPlaceholder;
- (IXPlaceholderSpecification)initWithLocalizedBundleName:(id)name bundleID:(id)d type:(unint64_t)type client:(unint64_t)client location:(id)location;
@end

@implementation IXPlaceholderSpecification

- (IXPlaceholderSpecification)initWithLocalizedBundleName:(id)name bundleID:(id)d type:(unint64_t)type client:(unint64_t)client location:(id)location
{
  nameCopy = name;
  dCopy = d;
  locationCopy = location;
  v23.receiver = self;
  v23.super_class = IXPlaceholderSpecification;
  v15 = [(IXPlaceholderSpecification *)&v23 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    localizedBundleName = v15->_localizedBundleName;
    v15->_localizedBundleName = v16;

    v18 = [dCopy copy];
    bundleID = v15->_bundleID;
    v15->_bundleID = v18;

    v15->_placeholderType = type;
    v15->_client = client;
    v20 = [locationCopy copyWithZone:0];
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