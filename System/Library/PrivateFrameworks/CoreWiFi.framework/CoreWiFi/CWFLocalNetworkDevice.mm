@interface CWFLocalNetworkDevice
- (id)description;
- (id)preferredSourceAddress;
- (id)sanitizedName;
- (unint64_t)hash;
@end

@implementation CWFLocalNetworkDevice

- (id)preferredSourceAddress
{
  v2 = [(CWFLocalNetworkDevice *)self sourceAddresses];
  v3 = [v2 anyObject];

  return v3;
}

- (id)sanitizedName
{
  v2 = [(CWFLocalNetworkDevice *)self name];
  v3 = [v2 _stringByRemovingSpecialCharacters];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CWFLocalNetworkDevice *)self name];
  v4 = [v3 hash];
  v5 = [(CWFLocalNetworkDevice *)self sourceAddresses];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ : %p", v5, self];

  v6 = [(CWFLocalNetworkDevice *)self name];

  if (v6)
  {
    v7 = [(CWFLocalNetworkDevice *)self name];
    [v3 appendFormat:@" name='%@'", v7];
  }

  v8 = [(CWFLocalNetworkDevice *)self sourceAddresses];

  if (v8)
  {
    v9 = [(CWFLocalNetworkDevice *)self sourceAddresses];
    v10 = [v9 count];

    v11 = [(CWFLocalNetworkDevice *)self sourceAddresses];
    v12 = [v11 _prettyDescription];
    v13 = v12;
    if (v10 == 1)
    {
      v14 = @" address='%@'";
    }

    else
    {
      v14 = @" addresses='%@'";
    }

    [v3 appendFormat:v14, v12];
  }

  v15 = [(CWFLocalNetworkDevice *)self serviceNames];

  if (v15)
  {
    v16 = [(CWFLocalNetworkDevice *)self serviceNames];
    v17 = [v16 _prettyDescription];
    [v3 appendFormat:@" services='%@'", v17];
  }

  [v3 appendString:@">"];

  return v3;
}

@end