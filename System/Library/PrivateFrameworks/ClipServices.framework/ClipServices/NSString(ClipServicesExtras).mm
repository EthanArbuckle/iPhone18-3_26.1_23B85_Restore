@interface NSString(ClipServicesExtras)
- (BOOL)cps_isAlphaNumeric;
- (BOOL)cps_looksLikeStoreItemIdentifier;
- (__CFString)cps_privacyPreservingDescription;
- (id)cps_sha256;
- (id)cps_sha256String;
- (id)cps_stringByRemovingPrefix:()ClipServicesExtras;
- (uint64_t)cps_looksLikeParentAppOfAppClipBundleIdentifier:()ClipServicesExtras;
- (uint64_t)cps_looksLikeUUIDOrWebClipIdentifier;
@end

@implementation NSString(ClipServicesExtras)

- (id)cps_sha256
{
  v2 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  v3 = [a1 dataUsingEncoding:4];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), v2);
  v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v2 length:32];

  return v4;
}

- (id)cps_sha256String
{
  v1 = [a1 cps_sha256];
  v2 = [v1 bytes];

  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", *(v2 + i)];
  }

  return v3;
}

- (__CFString)cps_privacyPreservingDescription
{
  v1 = [a1 length];
  if (v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"about %lu characters", 5 * (v1 / 5.0)];
  }

  else
  {
    v2 = @"empty";
  }

  return v2;
}

- (id)cps_stringByRemovingPrefix:()ClipServicesExtras
{
  v4 = a3;
  if ([a1 hasPrefix:v4])
  {
    v5 = [a1 substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = a1;
  }

  v6 = v5;

  return v6;
}

- (uint64_t)cps_looksLikeParentAppOfAppClipBundleIdentifier:()ClipServicesExtras
{
  v4 = [a3 componentsSeparatedByString:@"."];
  v5 = [a1 componentsSeparatedByString:@"."];
  if ([v4 count] && objc_msgSend(v5, "count") && (v6 = objc_msgSend(v4, "count"), v6 > objc_msgSend(v5, "count")))
  {
    if ([v5 count])
    {
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v7];
        v9 = [v4 objectAtIndexedSubscript:v7];
        v10 = [v8 isEqualToString:v9];

        if ((v10 & 1) == 0)
        {
          break;
        }

        ++v7;
      }

      while ([v5 count] > v7);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)cps_isAlphaNumeric
{
  v2 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v3 = [v2 invertedSet];
  v4 = [a1 rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (uint64_t)cps_looksLikeUUIDOrWebClipIdentifier
{
  result = [a1 length];
  if (result)
  {
    v3 = result;
    return ([a1 hasPrefix:@"com.apple.appclip-"] & 1) != 0 || (objc_msgSend(a1, "hasPrefix:", @"com.apple.webapp-") & 1) != 0 || v3 == 32 && (objc_msgSend(a1, "cps_isAlphaNumeric") & 1) != 0;
  }

  return result;
}

- (BOOL)cps_looksLikeStoreItemIdentifier
{
  if ([a1 length] < 5)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v4 = [v3 invertedSet];

  v2 = [a1 rangeOfCharacterFromSet:v4] == 0x7FFFFFFFFFFFFFFFLL;
  return v2;
}

@end