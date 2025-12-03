@interface BCCloudDataNullPrivacyDelegate
+ (id)nullPrivacyDelegate;
- (id)recordNameFromRecordType:(id)type identifier:(id)identifier;
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

- (id)recordNameFromRecordType:(id)type identifier:(id)identifier
{
  identifierCopy = @"-";
  if (type)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = @"-";
  }

  if (identifier)
  {
    identifierCopy = identifier;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", typeCopy, identifierCopy];
}

@end