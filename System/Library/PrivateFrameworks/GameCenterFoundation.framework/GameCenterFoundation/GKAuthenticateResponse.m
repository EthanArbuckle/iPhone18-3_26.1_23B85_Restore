@interface GKAuthenticateResponse
+ (id)secureCodedPropertyKeys;
- (GKAuthenticateResponse)init;
@end

@implementation GKAuthenticateResponse

- (GKAuthenticateResponse)init
{
  v7.receiver = self;
  v7.super_class = GKAuthenticateResponse;
  v2 = [(GKAuthenticateResponse *)&v7 init];
  if (v2)
  {
    v3 = +[GKPreferences shared];
    -[GKAuthenticateResponse setAccessPointIsOnAutomatically:](v2, "setAccessPointIsOnAutomatically:", [v3 accessPointIsOnAutomatically]);

    v4 = +[GKPreferences shared];
    -[GKAuthenticateResponse setAccessPointShowHighlights:](v2, "setAccessPointShowHighlights:", [v4 accessPointShowHighlights]);

    v5 = +[GKPreferences shared];
    -[GKAuthenticateResponse setAccessPointLocation:](v2, "setAccessPointLocation:", [v5 accessPointLocation]);
  }

  return v2;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_9 != -1)
  {
    +[GKAuthenticateResponse secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_9;

  return v3;
}

void __49__GKAuthenticateResponse_secureCodedPropertyKeys__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v0 setObject:objc_opt_class() forKey:@"playerID"];
  [v0 setObject:objc_opt_class() forKey:@"loginDisabled"];
  [v0 setObject:objc_opt_class() forKey:@"suppressLoginSheet"];
  [v0 setObject:objc_opt_class() forKey:@"loginBannerDisabled"];
  [v0 setObject:objc_opt_class() forKey:@"passwordChangeRequired"];
  [v0 setObject:objc_opt_class() forKey:@"passwordChangeURL"];
  [v0 setObject:objc_opt_class() forKey:@"alertTitle"];
  [v0 setObject:objc_opt_class() forKey:@"alertMessage"];
  [v0 setObject:objc_opt_class() forKey:@"lastPersonalizationVersionDisplayed"];
  [v0 setObject:objc_opt_class() forKey:@"lastPrivacyNoticeVersionDisplayed"];
  [v0 setObject:objc_opt_class() forKey:@"accessPointIsOnAutomatically"];
  [v0 setObject:objc_opt_class() forKey:@"accessPointShowHighlights"];
  [v0 setObject:objc_opt_class() forKey:@"accessPointLocation"];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_9;
  secureCodedPropertyKeys_sSecureCodedKeys_9 = v0;
}

@end