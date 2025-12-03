@interface NSString(FCKVSCoding)
- (void)writeToKeyValuePair:()FCKVSCoding;
@end

@implementation NSString(FCKVSCoding)

- (void)writeToKeyValuePair:()FCKVSCoding
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setStringValue:self];
}

@end