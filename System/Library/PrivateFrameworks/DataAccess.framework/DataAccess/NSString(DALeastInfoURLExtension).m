@interface NSString(DALeastInfoURLExtension)
- (id)da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:()DALeastInfoURLExtension;
@end

@implementation NSString(DALeastInfoURLExtension)

- (id)da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:()DALeastInfoURLExtension
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:a1 relativeToURL:v4];
  v6 = [v4 user];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 user];

    if (!v8)
    {
      v9 = [v4 user];
      v10 = [v5 da_urlBySettingUsername:v9];

      v5 = v10;
    }
  }

  v11 = [v5 absoluteURL];

  return v11;
}

@end