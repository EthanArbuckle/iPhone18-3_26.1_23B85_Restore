@interface NSURL(_BlastDoorLPExtras)
- (BOOL)_bd_lp_hasAllowedNonHTTPScheme;
- (BOOL)_bd_lp_isHTTPFamilyURL;
@end

@implementation NSURL(_BlastDoorLPExtras)

- (BOOL)_bd_lp_isHTTPFamilyURL
{
  scheme = [self scheme];
  if ([scheme compare:@"http" options:3])
  {
    v2 = [scheme compare:@"https" options:3] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (BOOL)_bd_lp_hasAllowedNonHTTPScheme
{
  scheme = [self scheme];
  v2 = scheme;
  if (scheme)
  {
    v3 = ![scheme caseInsensitiveCompare:@"shoebox"] || !objc_msgSend(v2, "caseInsensitiveCompare:", @"wallet") || objc_msgSend(v2, "caseInsensitiveCompare:", @"prefs") == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end