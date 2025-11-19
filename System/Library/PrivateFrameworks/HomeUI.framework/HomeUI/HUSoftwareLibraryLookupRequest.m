@interface HUSoftwareLibraryLookupRequest
- (HUSoftwareLibraryLookupRequest)initWithAccessory:(id)a3;
- (HUSoftwareLibraryLookupRequest)initWithBundleID:(id)a3 storeID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUSoftwareLibraryLookupRequest

- (HUSoftwareLibraryLookupRequest)initWithBundleID:(id)a3 storeID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUSoftwareLibraryLookupRequest;
  v9 = [(HUSoftwareLibraryLookupRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, a3);
    objc_storeStrong(&v10->_storeID, a4);
  }

  return v10;
}

- (HUSoftwareLibraryLookupRequest)initWithAccessory:(id)a3
{
  v5 = a3;
  v6 = [v5 bundleID];
  v7 = [v5 storeID];
  v8 = [(HUSoftwareLibraryLookupRequest *)self initWithBundleID:v6 storeID:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_accessory, a3);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HUSoftwareLibraryLookupRequest *)self bundleID];
  v6 = [(HUSoftwareLibraryLookupRequest *)self storeID];
  v7 = [v4 initWithBundleID:v5 storeID:v6];

  v8 = [(HUSoftwareLibraryLookupRequest *)self accessory];
  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

@end