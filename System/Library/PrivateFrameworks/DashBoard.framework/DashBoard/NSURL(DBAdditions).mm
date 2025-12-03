@interface NSURL(DBAdditions)
- (BOOL)db_urlHasCaseInsensitiveScheme:()DBAdditions;
- (uint64_t)db_isFaceTimeURL;
- (uint64_t)db_isNowPlayingURL;
- (uint64_t)db_isPhoneCallURL;
@end

@implementation NSURL(DBAdditions)

- (BOOL)db_urlHasCaseInsensitiveScheme:()DBAdditions
{
  v4 = a3;
  scheme = [self scheme];
  v6 = scheme;
  if (scheme)
  {
    v7 = [scheme caseInsensitiveCompare:v4] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)db_isNowPlayingURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];
  if ([lowercaseString isEqualToString:@"nowplaying"])
  {
    v4 = 1;
  }

  else
  {
    absoluteString = [self absoluteString];
    if ([absoluteString hasSuffix:@"nowplaying"])
    {
      v4 = 1;
    }

    else
    {
      absoluteString2 = [self absoluteString];
      v4 = [absoluteString2 isEqualToString:@"music://cardisplay/show-now-playing"];
    }
  }

  return v4;
}

- (uint64_t)db_isPhoneCallURL
{
  tUDialRequestSchemeDefaultApp = [MEMORY[0x277CBEBC0] TUDialRequestSchemeDefaultApp];
  v3 = [self db_urlHasCaseInsensitiveScheme:tUDialRequestSchemeDefaultApp];

  return v3;
}

- (uint64_t)db_isFaceTimeURL
{
  if ([self isFaceTimeURL] & 1) != 0 || (objc_msgSend(self, "isFaceTimeAppJoinConversationLinkURL") & 1) != 0 || (objc_msgSend(self, "isFaceTimeAudioURL"))
  {
    return 1;
  }

  absoluteString = [self absoluteString];
  v4 = [absoluteString containsString:@"facetime.apple.com/join"];

  return v4;
}

@end