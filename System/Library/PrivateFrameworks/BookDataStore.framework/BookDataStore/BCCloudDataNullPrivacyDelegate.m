@interface BCCloudDataNullPrivacyDelegate
+ (id)nullPrivacyDelegate;
- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4;
@end

@implementation BCCloudDataNullPrivacyDelegate

+ (id)nullPrivacyDelegate
{
  if (qword_1ECF75DD8 != -1)
  {
    sub_1E4705580();
  }

  v3 = qword_1ECF75DD0;

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

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v5, v4];
}

@end