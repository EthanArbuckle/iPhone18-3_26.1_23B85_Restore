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
- (id)_initWithShim:(id)shim;
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
- (void)assetDataForType:(int64_t)type usingSim:(id)sim completion:(id)completion;
- (void)clearCachedAssets:(id)assets;
- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size completion:(id)completion;
- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size fingerprint:(id)fingerprint completion:(id)completion;
- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size usingSim:(id)sim completion:(id)completion;
- (void)logoFileURLForType:(int64_t)type desiredSize:(CGSize)size completion:(id)completion;
- (void)permissions:(id)permissions completion:(id)completion;
- (void)squareLogoDataForDesiredSize:(CGSize)size completion:(id)completion;
- (void)wideLogoDataForDesiredSize:(CGSize)size completion:(id)completion;
@end

@implementation BSBrand

- (NSString)brandURI
{
  shim = [(BSBrand *)self shim];
  brandURI = [shim brandURI];

  return brandURI;
}

- (BOOL)isRCSChatBot
{
  shim = [(BSBrand *)self shim];
  isRCSChatBot = [shim isRCSChatBot];

  return isRCSChatBot;
}

- (NSString)name
{
  shim = [(BSBrand *)self shim];
  name = [shim name];

  return name;
}

- (id)categories
{
  shim = [(BSBrand *)self shim];
  categories = [shim categories];

  return categories;
}

- (NSString)primaryPhoneNumber
{
  shim = [(BSBrand *)self shim];
  primaryPhoneNumber = [shim primaryPhoneNumber];

  return primaryPhoneNumber;
}

- (BOOL)isVerified
{
  shim = [(BSBrand *)self shim];
  isVerified = [shim isVerified];

  return isVerified;
}

- (NSURL)primaryLogoURL
{
  shim = [(BSBrand *)self shim];
  primaryLogoURL = [shim primaryLogoURL];

  return primaryLogoURL;
}

- (NSURL)secondaryLogoURL
{
  shim = [(BSBrand *)self shim];
  secondaryLogoURL = [shim secondaryLogoURL];

  return secondaryLogoURL;
}

- (int64_t)brandType
{
  shim = [(BSBrand *)self shim];
  brandType = [shim brandType];

  return brandType;
}

- (id)brandInfo
{
  shim = [(BSBrand *)self shim];
  brandInfo = [shim brandInfo];

  return brandInfo;
}

- (id)verifiedBy
{
  shim = [(BSBrand *)self shim];
  verifiedBy = [shim verifiedBy];

  return verifiedBy;
}

- (id)website
{
  shim = [(BSBrand *)self shim];
  website = [shim website];

  return website;
}

- (id)messageNumber
{
  shim = [(BSBrand *)self shim];
  messageNumber = [shim messageNumber];

  return messageNumber;
}

- (id)emailAddress
{
  shim = [(BSBrand *)self shim];
  emailAddress = [shim emailAddress];

  return emailAddress;
}

- (id)address
{
  shim = [(BSBrand *)self shim];
  address = [shim address];

  return address;
}

- (id)termsAndConditionsURL
{
  shim = [(BSBrand *)self shim];
  termsAndConditionsURL = [shim termsAndConditionsURL];

  return termsAndConditionsURL;
}

- (id)genericCSSTemplateURL
{
  shim = [(BSBrand *)self shim];
  genericCSSTemplateURL = [shim genericCSSTemplateURL];

  return genericCSSTemplateURL;
}

- (id)localizedDescription
{
  shim = [(BSBrand *)self shim];
  localizedDescription = [shim localizedDescription];

  return localizedDescription;
}

- (NSString)localizedResponseTime
{
  shim = [(BSBrand *)self shim];
  localizedResponseTime = [shim localizedResponseTime];

  return localizedResponseTime;
}

- (id)logoFingerprint
{
  shim = [(BSBrand *)self shim];
  logoFingerprint = [shim logoFingerprint];

  return logoFingerprint;
}

- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size fingerprint:(id)fingerprint completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  shim = [(BSBrand *)self shim];
  [shim logoDataOfType:type desiredSize:completionCopy completion:{width, height}];
}

- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  shim = [(BSBrand *)self shim];
  [shim logoDataOfType:type desiredSize:completionCopy completion:{width, height}];
}

- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size usingSim:(id)sim completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  simCopy = sim;
  shim = [(BSBrand *)self shim];
  [shim logoDataOfType:type desiredSize:simCopy usingSim:completionCopy completion:{width, height}];
}

- (void)squareLogoDataForDesiredSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  shim = [(BSBrand *)self shim];
  [shim squareLogoDataForDesiredSize:completionCopy completion:{width, height}];
}

- (void)wideLogoDataForDesiredSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  shim = [(BSBrand *)self shim];
  [shim wideLogoDataForDesiredSize:completionCopy completion:{width, height}];
}

- (void)logoFileURLForType:(int64_t)type desiredSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  shim = [(BSBrand *)self shim];
  [shim logoFileURLOfType:type desiredSize:completionCopy completionHandler:{width, height}];
}

- (void)assetDataForType:(int64_t)type usingSim:(id)sim completion:(id)completion
{
  completionCopy = completion;
  simCopy = sim;
  shim = [(BSBrand *)self shim];
  [shim assetDataOfType:type usingSim:simCopy completion:completionCopy];
}

- (void)clearCachedAssets:(id)assets
{
  assetsCopy = assets;
  shim = [(BSBrand *)self shim];
  [shim clearCachedAssets:assetsCopy];
}

- (NSString)_primaryBrandColorHexString
{
  shim = [(BSBrand *)self shim];
  primaryBrandColorHexString = [shim primaryBrandColorHexString];

  return primaryBrandColorHexString;
}

- (NSString)_secondaryBrandColorHexString
{
  shim = [(BSBrand *)self shim];
  secondaryBrandColorHexString = [shim secondaryBrandColorHexString];

  return secondaryBrandColorHexString;
}

- (id)_initWithShim:(id)shim
{
  shimCopy = shim;
  v9.receiver = self;
  v9.super_class = BSBrand;
  v6 = [(BSBrand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shim, shim);
  }

  return v7;
}

+ (id)mockBrand
{
  v2 = [self alloc];
  v3 = +[BSBrandObjcShim mockBrand];
  v4 = [v2 _initWithShim:v3];

  return v4;
}

- (BOOL)isAppleMainBrand
{
  brandURI = [(BSBrand *)self brandURI];
  v3 = BSBrandURIIsAppleMain(brandURI);

  return v3;
}

- (BOOL)isAppleMakoBrand
{
  brandURI = [(BSBrand *)self brandURI];
  v3 = BSBrandURIIsAppleMako(brandURI);

  return v3;
}

- (NSString)appBundleID
{
  shim = [(BSBrand *)self shim];
  appBundleID = [shim appBundleID];

  return appBundleID;
}

- (NSURL)deepLinkURL
{
  shim = [(BSBrand *)self shim];
  deepLinkURL = [shim deepLinkURL];

  return deepLinkURL;
}

- (NSURL)fallBackURL
{
  shim = [(BSBrand *)self shim];
  fallBackURL = [shim fallBackURL];

  return fallBackURL;
}

- (void)permissions:(id)permissions completion:(id)completion
{
  completionCopy = completion;
  permissionsCopy = permissions;
  shim = [(BSBrand *)self shim];
  [shim permissions:permissionsCopy completionHandler:completionCopy];
}

- (NSURL)logoURL
{
  shim = [(BSBrand *)self shim];
  logoURL = [shim logoURL];

  return logoURL;
}

- (NSString)companyID
{
  shim = [(BSBrand *)self shim];
  companyID = [shim companyID];

  return companyID;
}

- (NSString)businessID
{
  shim = [(BSBrand *)self shim];
  businessID = [shim businessID];

  return businessID;
}

- (NSString)brandID
{
  shim = [(BSBrand *)self shim];
  brandURI = [shim brandURI];

  return brandURI;
}

@end