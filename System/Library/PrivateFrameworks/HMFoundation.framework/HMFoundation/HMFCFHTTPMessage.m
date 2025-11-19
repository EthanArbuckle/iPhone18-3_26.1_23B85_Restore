@interface HMFCFHTTPMessage
@end

@implementation HMFCFHTTPMessage

void __34___HMFCFHTTPMessage_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _MergedGlobals_57;
  _MergedGlobals_57 = v0;

  [_MergedGlobals_57 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss z"];
  v2 = _MergedGlobals_57;
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = _MergedGlobals_57;
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v4 setTimeZone:v5];
}

@end