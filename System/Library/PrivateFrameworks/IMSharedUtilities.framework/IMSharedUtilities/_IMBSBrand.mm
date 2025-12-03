@interface _IMBSBrand
- (BOOL)isVerified;
- (id)_initWithBSBrand:(id)brand;
- (id)brandURI;
- (id)localizedResponseTime;
- (id)logoFingerprint;
- (id)name;
- (id)primaryPhoneNumber;
- (void)clearCachedAssets:(id)assets;
- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size fingerprint:(id)fingerprint completion:(id)completion;
- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size usingSim:(id)sim completion:(id)completion;
- (void)squareLogoDataForDesiredSize:(CGSize)size completion:(id)completion;
- (void)wideLogoDataForDesiredSize:(CGSize)size completion:(id)completion;
@end

@implementation _IMBSBrand

- (id)_initWithBSBrand:(id)brand
{
  v8.receiver = self;
  v8.super_class = _IMBSBrand;
  _init = [(IMBrand *)&v8 _init];
  v5 = _init;
  if (_init)
  {
    v7.receiver = _init;
    v7.super_class = _IMBSBrand;
    [(IMBrand *)&v7 _setBrand:brand];
  }

  return v5;
}

- (id)brandURI
{
  brand = [(IMBrand *)self brand];

  return [(BSBrand *)brand brandURI];
}

- (id)name
{
  if (![(_IMBSBrand *)self isVerified])
  {
    return [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"MAYBE", &stru_1F1BB91F0, @"IMSharedUtilities", -[BSBrand name](-[IMBrand brand](self, "brand"), "name")];
  }

  brand = [(IMBrand *)self brand];

  return [(BSBrand *)brand name];
}

- (id)primaryPhoneNumber
{
  brand = [(IMBrand *)self brand];

  return [(BSBrand *)brand primaryPhoneNumber];
}

- (BOOL)isVerified
{
  brand = [(IMBrand *)self brand];

  return [(BSBrand *)brand isVerified];
}

- (id)localizedResponseTime
{
  brand = [(IMBrand *)self brand];

  return [(BSBrand *)brand localizedResponseTime];
}

- (id)logoFingerprint
{
  brand = [(IMBrand *)self brand];

  return MEMORY[0x1EEE66B58](brand, sel_logoFingerprint);
}

- (void)squareLogoDataForDesiredSize:(CGSize)size completion:(id)completion
{
  brand = [(IMBrand *)self brand];

  MEMORY[0x1EEE66B58](brand, sel_squareLogoDataForDesiredSize_completion_);
}

- (void)wideLogoDataForDesiredSize:(CGSize)size completion:(id)completion
{
  brand = [(IMBrand *)self brand];

  MEMORY[0x1EEE66B58](brand, sel_wideLogoDataForDesiredSize_completion_);
}

- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size fingerprint:(id)fingerprint completion:(id)completion
{
  brand = [(IMBrand *)self brand];

  MEMORY[0x1EEE66B58](brand, sel_logoDataOfType_desiredSize_fingerprint_completion_);
}

- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size usingSim:(id)sim completion:(id)completion
{
  brand = [(IMBrand *)self brand];

  MEMORY[0x1EEE66B58](brand, sel_logoDataOfType_desiredSize_usingSim_completion_);
}

- (void)clearCachedAssets:(id)assets
{
  brand = [(IMBrand *)self brand];

  MEMORY[0x1EEE66B58](brand, sel_clearCachedAssets_);
}

@end