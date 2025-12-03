@interface NSMutableURLRequest(GKAdditions)
+ (uint64_t)hashForPlayerID:()GKAdditions;
- (void)setDeviceUniqueID;
- (void)setGameDescriptor:()GKAdditions;
- (void)setInternal:()GKAdditions;
- (void)setLocale:()GKAdditions isOverridingUsersPreferredLanguage:;
- (void)setPlayerID:()GKAdditions hash:authToken:;
- (void)setPushToken:()GKAdditions;
- (void)setRestrictions:()GKAdditions;
- (void)setSAPSignature:()GKAdditions;
- (void)setSAPversion:()GKAdditions;
- (void)setStoreMode:()GKAdditions;
@end

@implementation NSMutableURLRequest(GKAdditions)

+ (uint64_t)hashForPlayerID:()GKAdditions
{
  v3 = [a3 hash];
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  return (v4 % 0xF4240) + 1000000;
}

- (void)setPlayerID:()GKAdditions hash:authToken:
{
  v11 = a3;
  v7 = a5;
  v8 = [self URL];
  _gkIsSecure = [v8 _gkIsSecure];

  if (_gkIsSecure && v11 && v7)
  {
    [self setValue:v11 forHTTPHeaderField:@"x-gk-player-id"];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(objc_opt_class(), "hashForPlayerID:", v11)];
    [self setValue:v10 forHTTPHeaderField:@"x-gk-player-id-hash"];

    [self setValue:v7 forHTTPHeaderField:@"x-gk-auth-token"];
  }
}

- (void)setGameDescriptor:()GKAdditions
{
  v19 = a3;
  v4 = [self URL];
  _gkIsSecure = [v4 _gkIsSecure];

  v6 = v19;
  if (!v19 || !_gkIsSecure)
  {
    goto LABEL_28;
  }

  v7 = [v19 objectForKey:@"adam-id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    stringValue = [v7 stringValue];

    v7 = stringValue;
  }

  if (v7)
  {
    [self setValue:v7 forHTTPHeaderField:@"x-gk-adam-id"];
  }

  v9 = [v19 objectForKey:@"external-version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    stringValue2 = [v9 stringValue];

    v9 = stringValue2;
  }

  if (v9)
  {
    [self setValue:v9 forHTTPHeaderField:@"x-gk-external-version"];
  }

  v11 = [v19 objectForKey:@"parent-bundle-id"];
  if (v11)
  {
    v12 = v11;
LABEL_14:
    [self setValue:v12 forHTTPHeaderField:@"x-gk-bundle-id"];
    goto LABEL_15;
  }

  v12 = [v19 objectForKey:@"bundle-id"];
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_15:
  v13 = [v19 objectForKey:@"bundle-version"];
  if (v13)
  {
    [self setValue:v13 forHTTPHeaderField:@"x-gk-bundle-version"];
  }

  v14 = [v19 objectForKey:@"platform"];
  if (v14)
  {
    [self setValue:v14 forHTTPHeaderField:@"x-gk-platform"];
  }

  v15 = [v19 objectForKey:@"short-bundle-version"];
  if (v15)
  {
    [self setValue:v15 forHTTPHeaderField:@"x-gk-short-bundle-version"];
  }

  else
  {
    v16 = +[GKApplicationWorkspace defaultWorkspace];
    v17 = [v16 applicationProxyForBundleID:v12];
    if ([v17 isInstalled] && (objc_msgSend(v17, "isRestricted") & 1) == 0)
    {
      bundleShortVersion = [v17 bundleShortVersion];
      if (bundleShortVersion)
      {
        [self setValue:bundleShortVersion forHTTPHeaderField:@"x-gk-short-bundle-version"];
      }
    }
  }

  v6 = v19;
LABEL_28:
}

- (void)setStoreMode:()GKAdditions
{
  v8 = a3;
  v4 = [self URL];
  _gkIsSecure = [v4 _gkIsSecure];

  if (_gkIsSecure)
  {
    if (v8)
    {
      if (![v8 isStoreDemoModeEnabled])
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v6 = +[GKPreferences shared];
    isStoreDemoModeEnabled = [v6 isStoreDemoModeEnabled];

    if (isStoreDemoModeEnabled)
    {
LABEL_4:
      [self setValue:@"true" forHTTPHeaderField:@"x-gk-store-mode"];
    }
  }

LABEL_5:
}

- (void)setRestrictions:()GKAdditions
{
  v10 = a3;
  v4 = [self URL];
  _gkIsSecure = [v4 _gkIsSecure];

  if (_gkIsSecure)
  {
    if (v10)
    {
      if ([v10 isMultiplayerGamingRestricted])
      {
        [self setValue:@"true" forHTTPHeaderField:@"x-gk-restrict-multiplayer"];
      }

      if ([v10 isAddingFriendsRestricted])
      {
LABEL_6:
        [self setValue:@"true" forHTTPHeaderField:@"x-gk-restrict-friend-add"];
      }
    }

    else
    {
      v6 = +[GKPreferences shared];
      isMultiplayerGamingRestricted = [v6 isMultiplayerGamingRestricted];

      if (isMultiplayerGamingRestricted)
      {
        [self setValue:@"true" forHTTPHeaderField:@"x-gk-restrict-multiplayer"];
      }

      v8 = +[GKPreferences shared];
      isAddingFriendsRestricted = [v8 isAddingFriendsRestricted];

      if (isAddingFriendsRestricted)
      {
        goto LABEL_6;
      }
    }
  }
}

- (void)setDeviceUniqueID
{
  v2 = [self URL];
  _gkIsSecure = [v2 _gkIsSecure];

  if (_gkIsSecure)
  {
    v5 = +[GKDevice currentDevice];
    udid = [v5 udid];
    [self setValue:udid forHTTPHeaderField:@"x-gk-udid"];
  }
}

- (void)setPushToken:()GKAdditions
{
  v8 = a3;
  v4 = [self URL];
  _gkIsSecure = [v4 _gkIsSecure];

  v6 = v8;
  if (v8 && _gkIsSecure)
  {
    _gkAsHexString = [v8 _gkAsHexString];
    [self setValue:_gkAsHexString forHTTPHeaderField:@"x-gk-push-token"];

    v6 = v8;
  }
}

- (void)setInternal:()GKAdditions
{
  v5 = [self URL];
  _gkIsSecure = [v5 _gkIsSecure];

  if (_gkIsSecure && a3)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    stringValue = [v8 stringValue];
    [self setValue:stringValue forHTTPHeaderField:@"x-gk-internal"];
  }
}

- (void)setLocale:()GKAdditions isOverridingUsersPreferredLanguage:
{
  if (a3 && (a4 & 1) != 0)
  {
    localeIdentifier = [a3 localeIdentifier];
  }

  else
  {
    v7 = MEMORY[0x277CCA8D8];
    v8 = a3;
    localeIdentifier = [v7 _gkPreferredUserLanguage];
  }

  v10 = localeIdentifier;
  [self setValue:localeIdentifier forHTTPHeaderField:@"accept-language"];
  localeIdentifier2 = [a3 localeIdentifier];

  [self setValue:localeIdentifier2 forHTTPHeaderField:@"x-gk-region-format"];
}

- (void)setSAPSignature:()GKAdditions
{
  v8 = a3;
  v4 = [self URL];
  _gkIsSecure = [v4 _gkIsSecure];

  v6 = v8;
  if (v8 && _gkIsSecure)
  {
    v7 = [v8 base64EncodedStringWithOptions:0];
    [self setValue:v7 forHTTPHeaderField:@"x-gk-sap-signature"];

    v6 = v8;
  }
}

- (void)setSAPversion:()GKAdditions
{
  v7 = a3;
  v4 = [self URL];
  _gkIsSecure = [v4 _gkIsSecure];

  v6 = v7;
  if (v7 && _gkIsSecure)
  {
    [self setValue:v7 forHTTPHeaderField:@"x-gk-sap-version"];
    v6 = v7;
  }
}

@end