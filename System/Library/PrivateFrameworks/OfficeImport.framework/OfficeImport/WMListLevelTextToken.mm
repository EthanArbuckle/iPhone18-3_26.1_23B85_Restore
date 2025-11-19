@interface WMListLevelTextToken
+ (id)tokenWithString:(id)a3 level:(int)a4 formatter:(id)a5;
- (WMListLevelTextToken)initWithString:(id)a3 level:(int)a4 formatter:(id)a5;
@end

@implementation WMListLevelTextToken

- (WMListLevelTextToken)initWithString:(id)a3 level:(int)a4 formatter:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = WMListLevelTextToken;
  v11 = [(WMListLevelTextToken *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_string, a3);
    v12->_level = a4;
    objc_storeStrong(&v12->_formatter, a5);
  }

  return v12;
}

+ (id)tokenWithString:(id)a3 level:(int)a4 formatter:(id)a5
{
  v6 = *&a4;
  v7 = a3;
  v8 = a5;
  v9 = [[WMListLevelTextToken alloc] initWithString:v7 level:v6 formatter:v8];

  return v9;
}

@end