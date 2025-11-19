@interface NSData(FCKVSCoding)
- (void)writeToKeyValuePair:()FCKVSCoding;
@end

@implementation NSData(FCKVSCoding)

- (void)writeToKeyValuePair:()FCKVSCoding
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setDataValue:a1];
}

@end