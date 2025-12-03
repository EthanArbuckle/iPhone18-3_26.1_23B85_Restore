@interface WMListLevelTextToken
+ (id)tokenWithString:(id)string level:(int)level formatter:(id)formatter;
- (WMListLevelTextToken)initWithString:(id)string level:(int)level formatter:(id)formatter;
@end

@implementation WMListLevelTextToken

- (WMListLevelTextToken)initWithString:(id)string level:(int)level formatter:(id)formatter
{
  stringCopy = string;
  formatterCopy = formatter;
  v14.receiver = self;
  v14.super_class = WMListLevelTextToken;
  v11 = [(WMListLevelTextToken *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_string, string);
    v12->_level = level;
    objc_storeStrong(&v12->_formatter, formatter);
  }

  return v12;
}

+ (id)tokenWithString:(id)string level:(int)level formatter:(id)formatter
{
  v6 = *&level;
  stringCopy = string;
  formatterCopy = formatter;
  v9 = [[WMListLevelTextToken alloc] initWithString:stringCopy level:v6 formatter:formatterCopy];

  return v9;
}

@end