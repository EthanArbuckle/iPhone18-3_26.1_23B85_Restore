@interface NSDate(FCKVSCoding)
+ (id)readValueFromKeyValuePair:()FCKVSCoding;
- (void)writeToKeyValuePair:()FCKVSCoding;
@end

@implementation NSDate(FCKVSCoding)

+ (id)readValueFromKeyValuePair:()FCKVSCoding
{
  v3 = MEMORY[0x1E695DF00];
  dateValue = [a3 dateValue];
  [dateValue timeIntervalSince1970];
  v5 = [v3 dateWithTimeIntervalSince1970:?];

  return v5;
}

- (void)writeToKeyValuePair:()FCKVSCoding
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  pbDate = [self pbDate];
  [v4 setDateValue:pbDate];
}

@end