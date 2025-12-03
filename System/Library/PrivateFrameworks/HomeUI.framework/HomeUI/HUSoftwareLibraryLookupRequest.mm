@interface HUSoftwareLibraryLookupRequest
- (HUSoftwareLibraryLookupRequest)initWithAccessory:(id)accessory;
- (HUSoftwareLibraryLookupRequest)initWithBundleID:(id)d storeID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUSoftwareLibraryLookupRequest

- (HUSoftwareLibraryLookupRequest)initWithBundleID:(id)d storeID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = HUSoftwareLibraryLookupRequest;
  v9 = [(HUSoftwareLibraryLookupRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, d);
    objc_storeStrong(&v10->_storeID, iD);
  }

  return v10;
}

- (HUSoftwareLibraryLookupRequest)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  bundleID = [accessoryCopy bundleID];
  storeID = [accessoryCopy storeID];
  v8 = [(HUSoftwareLibraryLookupRequest *)self initWithBundleID:bundleID storeID:storeID];

  if (v8)
  {
    objc_storeStrong(&v8->_accessory, accessory);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleID = [(HUSoftwareLibraryLookupRequest *)self bundleID];
  storeID = [(HUSoftwareLibraryLookupRequest *)self storeID];
  v7 = [v4 initWithBundleID:bundleID storeID:storeID];

  accessory = [(HUSoftwareLibraryLookupRequest *)self accessory];
  v9 = v7[3];
  v7[3] = accessory;

  return v7;
}

@end