@interface IDSPublicIdentityData
- (IDSPublicIdentityData)initWithPublicLegacyIdentityData:(id)data publicNGMIdentityData:(id)identityData publicNGMPrekeyData:(id)prekeyData NGMVersion:(id)version;
@end

@implementation IDSPublicIdentityData

- (IDSPublicIdentityData)initWithPublicLegacyIdentityData:(id)data publicNGMIdentityData:(id)identityData publicNGMPrekeyData:(id)prekeyData NGMVersion:(id)version
{
  dataCopy = data;
  identityDataCopy = identityData;
  prekeyDataCopy = prekeyData;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = IDSPublicIdentityData;
  v15 = [(IDSPublicIdentityData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_publicLegacyIdentityData, data);
    objc_storeStrong(&v16->_publicNGMIdentityData, identityData);
    objc_storeStrong(&v16->_publicNGMPrekeyData, prekeyData);
    objc_storeStrong(&v16->_NGMVersion, version);
  }

  return v16;
}

@end