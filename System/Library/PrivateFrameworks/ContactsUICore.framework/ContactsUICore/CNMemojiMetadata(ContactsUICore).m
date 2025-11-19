@interface CNMemojiMetadata(ContactsUICore)
+ (id)metadataWithMemojiMetadata:()ContactsUICore backgroundColorDescription:;
@end

@implementation CNMemojiMetadata(ContactsUICore)

+ (id)metadataWithMemojiMetadata:()ContactsUICore backgroundColorDescription:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [v7 avatarRecord];
  v10 = [v7 poseConfiguration];

  v11 = [v8 initWithAvatarRecord:v9 poseConfiguration:v10 backgroundColorDescription:v6];

  return v11;
}

@end