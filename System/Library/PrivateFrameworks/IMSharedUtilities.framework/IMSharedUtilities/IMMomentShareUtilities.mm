@interface IMMomentShareUtilities
+ (id)photoShareURLFromPluginBundleID:(id)d contentString:(id)string payload:(id)payload shouldAccept:(BOOL *)accept;
@end

@implementation IMMomentShareUtilities

+ (id)photoShareURLFromPluginBundleID:(id)d contentString:(id)string payload:(id)payload shouldAccept:(BOOL *)accept
{
  if ([d isEqualToString:@"com.apple.messages.URLBalloonProvider"])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [string length];
    v12 = *MEMORY[0x1E69A5FB0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A86D3A30;
    v17[3] = &unk_1E782A000;
    v17[4] = v10;
    [string enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0, v17}];
    if ([v10 count] < 2)
    {
      firstObject = [v10 firstObject];
      v14 = firstObject;
      if (firstObject && !_IMShouldProcessURLForPhotosExtension(firstObject))
      {
        v14 = 0;
      }

      if (v10)
      {
      }

      goto LABEL_10;
    }

    if (v10)
    {
    }

    return 0;
  }

  if (![d isEqualToString:IMBalloonExtensionIDWithSuffix(@"com.apple.mobileslideshow.PhotosMessagesApp")])
  {
    return 0;
  }

  v14 = IMPhotosShareURLFromPayloadData(payload);
LABEL_10:
  if (accept)
  {
    if (v14)
    {
      *accept = 1;
      v15 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"md-disable-photo-share-auto-accept"}];
      if (v15)
      {
        if ([v15 BOOLValue])
        {
          *accept = 0;
        }
      }
    }
  }

  return v14;
}

@end