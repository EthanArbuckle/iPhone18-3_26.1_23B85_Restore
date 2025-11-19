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
  v5 = [a1 scheme];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 caseInsensitiveCompare:v4] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)db_isNowPlayingURL
{
  v2 = [a1 scheme];
  v3 = [v2 lowercaseString];
  if ([v3 isEqualToString:@"nowplaying"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 absoluteString];
    if ([v5 hasSuffix:@"nowplaying"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [a1 absoluteString];
      v4 = [v6 isEqualToString:@"music://cardisplay/show-now-playing"];
    }
  }

  return v4;
}

- (uint64_t)db_isPhoneCallURL
{
  v2 = [MEMORY[0x277CBEBC0] TUDialRequestSchemeDefaultApp];
  v3 = [a1 db_urlHasCaseInsensitiveScheme:v2];

  return v3;
}

- (uint64_t)db_isFaceTimeURL
{
  if ([a1 isFaceTimeURL] & 1) != 0 || (objc_msgSend(a1, "isFaceTimeAppJoinConversationLinkURL") & 1) != 0 || (objc_msgSend(a1, "isFaceTimeAudioURL"))
  {
    return 1;
  }

  v3 = [a1 absoluteString];
  v4 = [v3 containsString:@"facetime.apple.com/join"];

  return v4;
}

@end