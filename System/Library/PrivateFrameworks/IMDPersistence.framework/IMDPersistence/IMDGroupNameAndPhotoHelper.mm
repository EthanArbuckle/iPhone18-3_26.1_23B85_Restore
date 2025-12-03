@interface IMDGroupNameAndPhotoHelper
+ (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles;
- (IMDGroupNameAndPhotoHelper)init;
@end

@implementation IMDGroupNameAndPhotoHelper

+ (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles
{
  sub_1B7CFECE0();
  sub_1B7CFE300();
  v4 = sub_1B7CFE2F0();

  return v4 & 1;
}

- (IMDGroupNameAndPhotoHelper)init
{
  v3.receiver = self;
  v3.super_class = IMDGroupNameAndPhotoHelper;
  return [(IMDGroupNameAndPhotoHelper *)&v3 init];
}

@end