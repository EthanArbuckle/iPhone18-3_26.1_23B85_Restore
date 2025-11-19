@interface NTKArgonChannelID
+ (NSSet)allChannelIDs;
+ (NSString)currentChannelID;
@end

@implementation NTKArgonChannelID

+ (NSString)currentChannelID
{
  v2 = [@"fs_phone" dataUsingEncoding:4];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

+ (NSSet)allChannelIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = @"facesupport";
  v16[1] = @"fs_phone";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:{2, 0}];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) dataUsingEncoding:4];
        v9 = [v8 base64EncodedStringWithOptions:0];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

@end