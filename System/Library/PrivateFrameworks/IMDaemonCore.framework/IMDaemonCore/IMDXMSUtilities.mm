@interface IMDXMSUtilities
+ (id)calculateFallbackHashFragmentFor:(id)for;
@end

@implementation IMDXMSUtilities

+ (id)calculateFallbackHashFragmentFor:(id)for
{
  v3 = IMDCTPartDictionaryContentLocationKey;
  forCopy = for;
  v5 = [forCopy objectForKeyedSubscript:v3];
  v6 = SMSCopySanitizedContentLocation(v5);

  lowercaseString = [v6 lowercaseString];
  v8 = [forCopy objectForKeyedSubscript:IMDCTPartDictionaryContentDataKey];

  0x64uLL = [MEMORY[0x277CCACA8] stringWithFormat:@"|%@(%llu)", lowercaseString, objc_msgSend(v8, "length") / 0x64uLL];

  return 0x64uLL;
}

@end