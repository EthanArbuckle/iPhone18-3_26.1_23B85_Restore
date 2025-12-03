@interface NSError(ClipServicesExtras)
+ (id)cps_errorWithCode:()ClipServicesExtras;
+ (id)cps_errorWithCode:()ClipServicesExtras underlyingError:;
- (BOOL)cps_isUserCanceledError;
- (id)cps_privacyPreservingDescription;
@end

@implementation NSError(ClipServicesExtras)

- (id)cps_privacyPreservingDescription
{
  v2 = MEMORY[0x277CCACA8];
  domain = [self domain];
  v4 = [v2 stringWithFormat:@"(NSError: domain: %@, code: %ld)", domain, objc_msgSend(self, "code")];

  return v4;
}

- (BOOL)cps_isUserCanceledError
{
  domain = [self domain];
  if ([domain isEqualToString:@"CPSErrorDomain"])
  {
    v3 = [self code] == 8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)cps_errorWithCode:()ClipServicesExtras
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3 == 19)
  {
    v9 = *MEMORY[0x277CCA450];
    v4 = _CPSLocalizedString(@"The Internet connection appears to be offline.", &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CPSErrorDomain" code:a3 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)cps_errorWithCode:()ClipServicesExtras underlyingError:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA7E8];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"CPSErrorDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end