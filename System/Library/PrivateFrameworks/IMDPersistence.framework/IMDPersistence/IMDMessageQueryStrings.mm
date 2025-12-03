@interface IMDMessageQueryStrings
+ (id)allColumnsWithPrefix:(id)prefix;
- (IMDMessageQueryStrings)init;
@end

@implementation IMDMessageQueryStrings

+ (id)allColumnsWithPrefix:(id)prefix
{
  if (prefix)
  {
    v3 = sub_1B7CFEA60();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_1B7C1D15C(v3, v5);

  v6 = sub_1B7CFEA30();

  return v6;
}

- (IMDMessageQueryStrings)init
{
  v3.receiver = self;
  v3.super_class = IMDMessageQueryStrings;
  return [(IMDMessageQueryStrings *)&v3 init];
}

@end