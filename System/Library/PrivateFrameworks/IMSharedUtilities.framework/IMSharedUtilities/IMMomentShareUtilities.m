@interface IMMomentShareUtilities
+ (id)photoShareURLFromPluginBundleID:(id)a3 contentString:(id)a4 payload:(id)a5 shouldAccept:(BOOL *)a6;
@end

@implementation IMMomentShareUtilities

+ (id)photoShareURLFromPluginBundleID:(id)a3 contentString:(id)a4 payload:(id)a5 shouldAccept:(BOOL *)a6
{
  if ([a3 isEqualToString:@"com.apple.messages.URLBalloonProvider"])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [a4 length];
    v12 = *MEMORY[0x1E69A5FB0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A86D3A30;
    v17[3] = &unk_1E782A000;
    v17[4] = v10;
    [a4 enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0, v17}];
    if ([v10 count] < 2)
    {
      v13 = [v10 firstObject];
      v14 = v13;
      if (v13 && !_IMShouldProcessURLForPhotosExtension(v13))
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

  if (![a3 isEqualToString:IMBalloonExtensionIDWithSuffix(@"com.apple.mobileslideshow.PhotosMessagesApp")])
  {
    return 0;
  }

  v14 = IMPhotosShareURLFromPayloadData(a5);
LABEL_10:
  if (a6)
  {
    if (v14)
    {
      *a6 = 1;
      v15 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"md-disable-photo-share-auto-accept"}];
      if (v15)
      {
        if ([v15 BOOLValue])
        {
          *a6 = 0;
        }
      }
    }
  }

  return v14;
}

@end