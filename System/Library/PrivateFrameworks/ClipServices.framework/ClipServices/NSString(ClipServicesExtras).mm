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
  v3 = [self dataUsingEncoding:4];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), v2);
  v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v2 length:32];

  return v4;
}

- (id)cps_sha256String
{
  cps_sha256 = [self cps_sha256];
  bytes = [cps_sha256 bytes];

  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", *(bytes + i)];
  }

  return v3;
}

- (__CFString)cps_privacyPreservingDescription
{
  v1 = [self length];
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
  if ([self hasPrefix:v4])
  {
    selfCopy = [self substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (uint64_t)cps_looksLikeParentAppOfAppClipBundleIdentifier:()ClipServicesExtras
{
  v4 = [a3 componentsSeparatedByString:@"."];
  v5 = [self componentsSeparatedByString:@"."];
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
  alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];
  v4 = [self rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (uint64_t)cps_looksLikeUUIDOrWebClipIdentifier
{
  result = [self length];
  if (result)
  {
    v3 = result;
    return ([self hasPrefix:@"com.apple.appclip-"] & 1) != 0 || (objc_msgSend(self, "hasPrefix:", @"com.apple.webapp-") & 1) != 0 || v3 == 32 && (objc_msgSend(self, "cps_isAlphaNumeric") & 1) != 0;
  }

  return result;
}

- (BOOL)cps_looksLikeStoreItemIdentifier
{
  if ([self length] < 5)
  {
    return 0;
  }

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v2 = [self rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
  return v2;
}

@end