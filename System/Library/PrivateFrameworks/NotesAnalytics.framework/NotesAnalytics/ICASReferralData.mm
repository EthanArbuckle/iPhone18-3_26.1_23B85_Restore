@interface ICASReferralData
- (ICASReferralData)initWithReferringApplication:(id)application referringInboundUrl:(id)url;
- (id)toDict;
@end

@implementation ICASReferralData

- (ICASReferralData)initWithReferringApplication:(id)application referringInboundUrl:(id)url
{
  applicationCopy = application;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = ICASReferralData;
  v9 = [(ICASReferralData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_referringApplication, application);
    objc_storeStrong(&v10->_referringInboundUrl, url);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"referringApplication";
  referringApplication = [(ICASReferralData *)self referringApplication];
  if (referringApplication)
  {
    referringApplication2 = [(ICASReferralData *)self referringApplication];
  }

  else
  {
    referringApplication2 = objc_opt_new();
  }

  v5 = referringApplication2;
  v12[1] = @"referringInboundUrl";
  v13[0] = referringApplication2;
  referringInboundUrl = [(ICASReferralData *)self referringInboundUrl];
  if (referringInboundUrl)
  {
    referringInboundUrl2 = [(ICASReferralData *)self referringInboundUrl];
  }

  else
  {
    referringInboundUrl2 = objc_opt_new();
  }

  v8 = referringInboundUrl2;
  v13[1] = referringInboundUrl2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end