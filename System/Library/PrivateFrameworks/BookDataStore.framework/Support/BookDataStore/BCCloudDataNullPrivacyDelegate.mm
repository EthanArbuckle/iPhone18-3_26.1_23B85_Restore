@interface BCCloudDataNullPrivacyDelegate
+ (id)nullPrivacyDelegate;
- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4;
@end

@implementation BCCloudDataNullPrivacyDelegate

+ (id)nullPrivacyDelegate
{
  if (qword_100274A70 != -1)
  {
    sub_1001C0654();
  }

  v3 = qword_100274A68;

  return v3;
}

- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4
{
  v4 = @"-";
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"-";
  }

  if (a4)
  {
    v4 = a4;
  }

  return [NSString stringWithFormat:@"%@.%@", v5, v4];
}

@end