@interface GKAuthenticateCredential
+ (id)secureCodedPropertyKeys;
- (GKAuthenticateCredential)init;
@end

@implementation GKAuthenticateCredential

- (GKAuthenticateCredential)init
{
  v3.receiver = self;
  v3.super_class = GKAuthenticateCredential;
  return [(GKAuthenticateCredential *)&v3 init];
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_284 != -1)
  {
    +[GKAuthenticateCredential secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_283;

  return v3;
}

void __51__GKAuthenticateCredential_secureCodedPropertyKeys__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v0 setObject:objc_opt_class() forKey:@"authenticationToken"];
  [v0 setObject:objc_opt_class() forKey:@"accountName"];
  [v0 setObject:objc_opt_class() forKey:@"playerID"];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_283;
  secureCodedPropertyKeys_sSecureCodedKeys_283 = v0;
}

@end