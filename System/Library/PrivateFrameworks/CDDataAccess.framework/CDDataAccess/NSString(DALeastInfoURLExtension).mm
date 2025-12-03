@interface NSString(DALeastInfoURLExtension)
- (id)da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:()DALeastInfoURLExtension;
@end

@implementation NSString(DALeastInfoURLExtension)

- (id)da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:()DALeastInfoURLExtension
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:self relativeToURL:v4];
  user = [v4 user];
  if (user)
  {
    v7 = user;
    user2 = [v5 user];

    if (!user2)
    {
      user3 = [v4 user];
      v10 = [v5 da_urlBySettingUsername:user3];

      v5 = v10;
    }
  }

  absoluteURL = [v5 absoluteURL];

  return absoluteURL;
}

@end