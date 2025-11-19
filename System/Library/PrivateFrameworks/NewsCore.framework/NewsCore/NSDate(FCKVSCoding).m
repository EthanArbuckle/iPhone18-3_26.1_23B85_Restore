@interface NSDate(FCKVSCoding)
+ (id)readValueFromKeyValuePair:()FCKVSCoding;
- (void)writeToKeyValuePair:()FCKVSCoding;
@end

@implementation NSDate(FCKVSCoding)

+ (id)readValueFromKeyValuePair:()FCKVSCoding
{
  v3 = MEMORY[0x1E695DF00];
  v4 = [a3 dateValue];
  [v4 timeIntervalSince1970];
  v5 = [v3 dateWithTimeIntervalSince1970:?];

  return v5;
}

- (void)writeToKeyValuePair:()FCKVSCoding
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  v5 = [a1 pbDate];
  [v4 setDateValue:v5];
}

@end