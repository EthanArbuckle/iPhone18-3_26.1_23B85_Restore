@interface BCCloudDataNullPrivacyDelegate
+ (id)nullPrivacyDelegate;
- (id)recordNameFromRecordType:(id)type identifier:(id)identifier;
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

  return [NSString stringWithFormat:@"%@.%@", typeCopy, identifierCopy];
}

@end