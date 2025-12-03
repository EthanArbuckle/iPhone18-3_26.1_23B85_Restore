@interface NTPBPersonalizationLocalData(FCKVSCoding)
- (void)writeToKeyValuePair:()FCKVSCoding;
@end

@implementation NTPBPersonalizationLocalData(FCKVSCoding)

- (void)writeToKeyValuePair:()FCKVSCoding
{
  v4 = a3;
  [v4 setValueType:11];
  [v4 setPersonalizationLocalData:self];
}

@end