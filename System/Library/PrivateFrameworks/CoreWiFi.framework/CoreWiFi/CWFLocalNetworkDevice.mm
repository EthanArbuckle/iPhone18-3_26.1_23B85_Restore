@interface CWFLocalNetworkDevice
- (id)description;
- (id)preferredSourceAddress;
- (id)sanitizedName;
- (unint64_t)hash;
@end

@implementation CWFLocalNetworkDevice

- (id)preferredSourceAddress
{
  sourceAddresses = [(CWFLocalNetworkDevice *)self sourceAddresses];
  anyObject = [sourceAddresses anyObject];

  return anyObject;
}

- (id)sanitizedName
{
  name = [(CWFLocalNetworkDevice *)self name];
  _stringByRemovingSpecialCharacters = [name _stringByRemovingSpecialCharacters];

  return _stringByRemovingSpecialCharacters;
}

- (unint64_t)hash
{
  name = [(CWFLocalNetworkDevice *)self name];
  v4 = [name hash];
  sourceAddresses = [(CWFLocalNetworkDevice *)self sourceAddresses];
  v6 = [sourceAddresses hash];

  return v6 ^ v4;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ : %p", v5, self];

  name = [(CWFLocalNetworkDevice *)self name];

  if (name)
  {
    name2 = [(CWFLocalNetworkDevice *)self name];
    [string appendFormat:@" name='%@'", name2];
  }

  sourceAddresses = [(CWFLocalNetworkDevice *)self sourceAddresses];

  if (sourceAddresses)
  {
    sourceAddresses2 = [(CWFLocalNetworkDevice *)self sourceAddresses];
    v10 = [sourceAddresses2 count];

    sourceAddresses3 = [(CWFLocalNetworkDevice *)self sourceAddresses];
    _prettyDescription = [sourceAddresses3 _prettyDescription];
    v13 = _prettyDescription;
    if (v10 == 1)
    {
      v14 = @" address='%@'";
    }

    else
    {
      v14 = @" addresses='%@'";
    }

    [string appendFormat:v14, _prettyDescription];
  }

  serviceNames = [(CWFLocalNetworkDevice *)self serviceNames];

  if (serviceNames)
  {
    serviceNames2 = [(CWFLocalNetworkDevice *)self serviceNames];
    _prettyDescription2 = [serviceNames2 _prettyDescription];
    [string appendFormat:@" services='%@'", _prettyDescription2];
  }

  [string appendString:@">"];

  return string;
}

@end