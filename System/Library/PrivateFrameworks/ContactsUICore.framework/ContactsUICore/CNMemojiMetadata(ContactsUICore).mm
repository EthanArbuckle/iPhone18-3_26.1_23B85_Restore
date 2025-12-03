@interface CNMemojiMetadata(ContactsUICore)
+ (id)metadataWithMemojiMetadata:()ContactsUICore backgroundColorDescription:;
@end

@implementation CNMemojiMetadata(ContactsUICore)

+ (id)metadataWithMemojiMetadata:()ContactsUICore backgroundColorDescription:
{
  v6 = a4;
  v7 = a3;
  v8 = [self alloc];
  avatarRecord = [v7 avatarRecord];
  poseConfiguration = [v7 poseConfiguration];

  v11 = [v8 initWithAvatarRecord:avatarRecord poseConfiguration:poseConfiguration backgroundColorDescription:v6];

  return v11;
}

@end