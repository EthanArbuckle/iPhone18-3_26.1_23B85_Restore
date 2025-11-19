@interface BSBrand
+ (id)mockBrand;
- (BOOL)isAppleMainBrand;
- (BOOL)isAppleMakoBrand;
- (BOOL)isRCSChatBot;
- (BOOL)isVerified;
- (NSString)_primaryBrandColorHexString;
- (NSString)_secondaryBrandColorHexString;
- (NSString)appBundleID;
- (NSString)brandID;
- (NSString)brandURI;
- (NSString)businessID;
- (NSString)companyID;
- (NSString)localizedResponseTime;
- (NSString)name;
- (NSString)primaryPhoneNumber;
- (NSURL)deepLinkURL;
- (NSURL)fallBackURL;
- (NSURL)logoURL;
- (NSURL)primaryLogoURL;
- (NSURL)secondaryLogoURL;
- (id)_initWithShim:(id)a3;
- (id)address;
- (id)brandInfo;
- (id)categories;
- (id)emailAddress;
- (id)genericCSSTemplateURL;
- (id)localizedDescription;
- (id)logoFingerprint;
- (id)messageNumber;
- (id)termsAndConditionsURL;
- (id)verifiedBy;
- (id)website;
- (int64_t)brandType;
- (void)assetDataForType:(int64_t)a3 usingSim:(id)a4 completion:(id)a5;
- (void)clearCachedAssets:(id)a3;
- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 completion:(id)a5;
- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 fingerprint:(id)a5 completion:(id)a6;
- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 usingSim:(id)a5 completion:(id)a6;
- (void)logoFileURLForType:(int64_t)a3 desiredSize:(CGSize)a4 completion:(id)a5;
- (void)permissions:(id)a3 completion:(id)a4;
- (void)squareLogoDataForDesiredSize:(CGSize)a3 completion:(id)a4;
- (void)wideLogoDataForDesiredSize:(CGSize)a3 completion:(id)a4;
@end

@implementation BSBrand

- (NSString)brandURI
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 brandURI];

  return v3;
}

- (BOOL)isRCSChatBot
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 isRCSChatBot];

  return v3;
}

- (NSString)name
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 name];

  return v3;
}

- (id)categories
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 categories];

  return v3;
}

- (NSString)primaryPhoneNumber
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 primaryPhoneNumber];

  return v3;
}

- (BOOL)isVerified
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 isVerified];

  return v3;
}

- (NSURL)primaryLogoURL
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 primaryLogoURL];

  return v3;
}

- (NSURL)secondaryLogoURL
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 secondaryLogoURL];

  return v3;
}

- (int64_t)brandType
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 brandType];

  return v3;
}

- (id)brandInfo
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 brandInfo];

  return v3;
}

- (id)verifiedBy
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 verifiedBy];

  return v3;
}

- (id)website
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 website];

  return v3;
}

- (id)messageNumber
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 messageNumber];

  return v3;
}

- (id)emailAddress
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 emailAddress];

  return v3;
}

- (id)address
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 address];

  return v3;
}

- (id)termsAndConditionsURL
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 termsAndConditionsURL];

  return v3;
}

- (id)genericCSSTemplateURL
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 genericCSSTemplateURL];

  return v3;
}

- (id)localizedDescription
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 localizedDescription];

  return v3;
}

- (NSString)localizedResponseTime
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 localizedResponseTime];

  return v3;
}

- (id)logoFingerprint
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 logoFingerprint];

  return v3;
}

- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 fingerprint:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a6;
  v11 = [(BSBrand *)self shim];
  [v11 logoDataOfType:a3 desiredSize:v10 completion:{width, height}];
}

- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = [(BSBrand *)self shim];
  [v10 logoDataOfType:a3 desiredSize:v9 completion:{width, height}];
}

- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 usingSim:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a5;
  v13 = [(BSBrand *)self shim];
  [v13 logoDataOfType:a3 desiredSize:v12 usingSim:v11 completion:{width, height}];
}

- (void)squareLogoDataForDesiredSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(BSBrand *)self shim];
  [v8 squareLogoDataForDesiredSize:v7 completion:{width, height}];
}

- (void)wideLogoDataForDesiredSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(BSBrand *)self shim];
  [v8 wideLogoDataForDesiredSize:v7 completion:{width, height}];
}

- (void)logoFileURLForType:(int64_t)a3 desiredSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = [(BSBrand *)self shim];
  [v10 logoFileURLOfType:a3 desiredSize:v9 completionHandler:{width, height}];
}

- (void)assetDataForType:(int64_t)a3 usingSim:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(BSBrand *)self shim];
  [v10 assetDataOfType:a3 usingSim:v9 completion:v8];
}

- (void)clearCachedAssets:(id)a3
{
  v4 = a3;
  v5 = [(BSBrand *)self shim];
  [v5 clearCachedAssets:v4];
}

- (NSString)_primaryBrandColorHexString
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 primaryBrandColorHexString];

  return v3;
}

- (NSString)_secondaryBrandColorHexString
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 secondaryBrandColorHexString];

  return v3;
}

- (id)_initWithShim:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BSBrand;
  v6 = [(BSBrand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shim, a3);
  }

  return v7;
}

+ (id)mockBrand
{
  v2 = [a1 alloc];
  v3 = +[BSBrandObjcShim mockBrand];
  v4 = [v2 _initWithShim:v3];

  return v4;
}

- (BOOL)isAppleMainBrand
{
  v2 = [(BSBrand *)self brandURI];
  v3 = BSBrandURIIsAppleMain(v2);

  return v3;
}

- (BOOL)isAppleMakoBrand
{
  v2 = [(BSBrand *)self brandURI];
  v3 = BSBrandURIIsAppleMako(v2);

  return v3;
}

- (NSString)appBundleID
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 appBundleID];

  return v3;
}

- (NSURL)deepLinkURL
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 deepLinkURL];

  return v3;
}

- (NSURL)fallBackURL
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 fallBackURL];

  return v3;
}

- (void)permissions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BSBrand *)self shim];
  [v8 permissions:v7 completionHandler:v6];
}

- (NSURL)logoURL
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 logoURL];

  return v3;
}

- (NSString)companyID
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 companyID];

  return v3;
}

- (NSString)businessID
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 businessID];

  return v3;
}

- (NSString)brandID
{
  v2 = [(BSBrand *)self shim];
  v3 = [v2 brandURI];

  return v3;
}

@end