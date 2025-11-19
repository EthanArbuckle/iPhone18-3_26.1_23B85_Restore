@interface PKDateFromRetryAfterHeader
@end

@implementation PKDateFromRetryAfterHeader

void ___PKDateFromRetryAfterHeader_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_287;
  _MergedGlobals_287 = v0;

  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [_MergedGlobals_287 setLocale:v4];
  [_MergedGlobals_287 setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss 'GMT'"];
  v2 = _MergedGlobals_287;
  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];
}

@end