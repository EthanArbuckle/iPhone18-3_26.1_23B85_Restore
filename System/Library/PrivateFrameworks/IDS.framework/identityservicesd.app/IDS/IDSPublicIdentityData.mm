@interface IDSPublicIdentityData
- (IDSPublicIdentityData)initWithPublicLegacyIdentityData:(id)a3 publicNGMIdentityData:(id)a4 publicNGMPrekeyData:(id)a5 NGMVersion:(id)a6;
@end

@implementation IDSPublicIdentityData

- (IDSPublicIdentityData)initWithPublicLegacyIdentityData:(id)a3 publicNGMIdentityData:(id)a4 publicNGMPrekeyData:(id)a5 NGMVersion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSPublicIdentityData;
  v15 = [(IDSPublicIdentityData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_publicLegacyIdentityData, a3);
    objc_storeStrong(&v16->_publicNGMIdentityData, a4);
    objc_storeStrong(&v16->_publicNGMPrekeyData, a5);
    objc_storeStrong(&v16->_NGMVersion, a6);
  }

  return v16;
}

@end