@interface NSURL(_BlastDoorLPExtras)
- (BOOL)_bd_lp_hasAllowedNonHTTPScheme;
- (BOOL)_bd_lp_isHTTPFamilyURL;
@end

@implementation NSURL(_BlastDoorLPExtras)

- (BOOL)_bd_lp_isHTTPFamilyURL
{
  v1 = [a1 scheme];
  if ([v1 compare:@"http" options:3])
  {
    v2 = [v1 compare:@"https" options:3] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (BOOL)_bd_lp_hasAllowedNonHTTPScheme
{
  v1 = [a1 scheme];
  v2 = v1;
  if (v1)
  {
    v3 = ![v1 caseInsensitiveCompare:@"shoebox"] || !objc_msgSend(v2, "caseInsensitiveCompare:", @"wallet") || objc_msgSend(v2, "caseInsensitiveCompare:", @"prefs") == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end