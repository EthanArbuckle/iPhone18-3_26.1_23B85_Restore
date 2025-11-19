@interface CUIKConferenceUtils
+ (id)_imageForApplicationRecord:(id)a3 URL:(id)a4 isBroadcast:(BOOL)a5;
+ (id)_platformImageForISIcon:(id)a3;
+ (id)_prepareImageForDefaultDescriptor:(id)a3;
+ (id)_systemImageNamed:(id)a3;
+ (id)_titleForApplicationRecord:(id)a3 URL:(id)a4;
+ (id)_workQueue;
+ (id)subtitleForURL:(id)a3 displayedWithTitle:(id)a4;
+ (id)subtitleForVirtualConference:(id)a3 displayedWithTitle:(id)a4;
+ (id)synchronousOutlineIconForURL:(id)a3 isBroadcast:(BOOL)a4 outImageName:(id *)a5 incomplete:(BOOL *)a6;
+ (id)synchronousTitleForURL:(id)a3 incomplete:(BOOL *)a4;
+ (unint64_t)_buttonTypeForApplicationRecord:(id)a3 URL:(id)a4 isBroadcast:(BOOL)a5;
+ (void)displayDetailsForJoinMethod:(id)a3 completionHandler:(id)a4;
+ (void)displayDetailsForURL:(id)a3 isBroadcast:(BOOL)a4 completionHandler:(id)a5;
+ (void)imageForRoomType:(id)a3 completionHandler:(id)a4;
@end

@implementation CUIKConferenceUtils

+ (id)_workQueue
{
  if (_workQueue_onceToken != -1)
  {
    +[CUIKConferenceUtils _workQueue];
  }

  v3 = _workQueue_workQueue;

  return v3;
}

uint64_t __33__CUIKConferenceUtils__workQueue__block_invoke()
{
  v0 = dispatch_queue_create("CUIKConferenceUtils.workQueue", 0);
  v1 = _workQueue_workQueue;
  _workQueue_workQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_prepareImageForDefaultDescriptor:(id)a3
{
  v3 = MEMORY[0x1E69DCEB0];
  v4 = a3;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = objc_alloc(MEMORY[0x1E69A8A30]);
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v10 = v9;
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v12 = [v8 initWithSize:v10 scale:{v11, v7}];
  [v12 setDrawBorder:1];
  v13 = [v4 prepareImageForDescriptor:v12];

  return v13;
}

+ (id)_imageForApplicationRecord:(id)a3 URL:(id)a4 isBroadcast:(BOOL)a5
{
  v8 = a4;
  v9 = [a3 bundleIdentifier];
  if (!v9 || (v10 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v9], objc_msgSend(a1, "_platformImageForISIcon:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    if (a5)
    {
      v12 = @"play.tv.fill";
    }

    else if ([v8 cal_hasSchemeTel])
    {
      v12 = @"phone.fill";
    }

    else if ([MEMORY[0x1E6992F40] isPreferredURL:v8])
    {
      v12 = @"video.fill";
    }

    else
    {
      v12 = @"link";
    }

    v11 = [a1 _systemImageNamed:v12];
  }

  return v11;
}

+ (id)synchronousTitleForURL:(id)a3 incomplete:(BOOL *)a4
{
  v6 = MEMORY[0x1E69669E0];
  v7 = a3;
  v8 = [v6 applicationRecordForURL:v7 incomplete:a4];
  v9 = [a1 _titleForApplicationRecord:v8 URL:v7];

  return v9;
}

+ (id)synchronousOutlineIconForURL:(id)a3 isBroadcast:(BOOL)a4 outImageName:(id *)a5 incomplete:(BOOL *)a6
{
  v10 = a3;
  v11 = [MEMORY[0x1E69669E0] applicationRecordForURL:v10 incomplete:a6];
  v12 = v11;
  if (a4)
  {
    v13 = @"play.tv";
  }

  else if (v11 || ([MEMORY[0x1E6992F40] isPreferredURL:v10] & 1) != 0)
  {
    v13 = @"video";
  }

  else if ([v10 cal_hasSchemeTel])
  {
    v13 = @"phone";
  }

  else
  {
    v13 = @"link";
  }

  v14 = [a1 _systemImageNamed:v13];
  if (a5)
  {
    *a5 = v13;
  }

  return v14;
}

+ (id)_systemImageNamed:(id)a3
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:a3];
  v4 = [v3 imageWithRenderingMode:2];

  return v4;
}

+ (id)_platformImageForISIcon:(id)a3
{
  v3 = [a1 _prepareImageForDefaultDescriptor:a3];
  v4 = MEMORY[0x1E69DCAB8];
  v5 = [v3 CGImage];
  [v3 scale];
  v6 = [v4 imageWithCGImage:v5 scale:0 orientation:?];

  return v6;
}

+ (id)_titleForApplicationRecord:(id)a3 URL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [v5 bundleIdentifier];
  v8 = [v5 localizedName];
  if ([v7 isEqualToString:@"com.microsoft.lync2013.iphone"])
  {
    v9 = CUIKBundle();
    v10 = [v9 localizedStringForKey:@"Skype" value:&stru_1F4AA8958 table:0];

    v8 = v10;
  }

  if (!v8)
  {
LABEL_5:
    v8 = [v6 cal_ShortDisplayStringForURL];
  }

  return v8;
}

+ (unint64_t)_buttonTypeForApplicationRecord:(id)a3 URL:(id)a4 isBroadcast:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = 2;
  }

  else if (v7 || ([MEMORY[0x1E6992F40] isPreferredURL:v8] & 1) != 0)
  {
    v9 = 0;
  }

  else if ([v8 cal_hasSchemeTel])
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (void)displayDetailsForURL:(id)a3 isBroadcast:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E69669E0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CUIKConferenceUtils_displayDetailsForURL_isBroadcast_completionHandler___block_invoke;
  v13[3] = &unk_1E839A3C8;
  v15 = v9;
  v16 = a1;
  v17 = a4;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [v10 applicationRecordForURL:v12 completionHandler:v13];
}

void __74__CUIKConferenceUtils_displayDetailsForURL_isBroadcast_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = a2;
  v8 = [v3 _imageForApplicationRecord:v6 URL:v4 isBroadcast:v5];
  v7 = [*(a1 + 48) _titleForApplicationRecord:v6 URL:*(a1 + 32)];
  [*(a1 + 48) _buttonTypeForApplicationRecord:v6 URL:*(a1 + 32) isBroadcast:*(a1 + 56)];

  (*(*(a1 + 40) + 16))();
}

+ (void)displayDetailsForJoinMethod:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 URL];
  v8 = [v7 isBroadcast];

  [a1 displayDetailsForURL:v9 isBroadcast:v8 completionHandler:v6];
}

+ (void)imageForRoomType:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CUIKConferenceUtils_imageForRoomType_completionHandler___block_invoke;
  block[3] = &unk_1E839A3F0;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __58__CUIKConferenceUtils_imageForRoomType_completionHandler___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) extensionBundleIdentifier];
  if ([v9 isEqualToString:@"debug-webex"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"debug-webex2"))
  {
    v2 = @"com.webex.meeting";
    goto LABEL_4;
  }

  if ([v9 isEqualToString:@"debug-meet"])
  {
    v2 = @"com.google.meetings";
    goto LABEL_4;
  }

  if ([v9 isEqualToString:@"debug-zoom"])
  {
    v2 = @"us.zoom.videomeetings";
    goto LABEL_4;
  }

  v6 = [MEMORY[0x1E69669E0] FacetimeConferenceExtensionBundleID];
  v7 = [v9 caseInsensitiveCompare:v6];

  if (v7)
  {
    v8 = v9;
  }

  else
  {
    v8 = [MEMORY[0x1E69669E0] FacetimeAppBundleID];
  }

  v2 = v8;
  if (v8)
  {
LABEL_4:
    v3 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v2];
    v4 = [*(a1 + 48) _platformImageForISIcon:v3];

    if (v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v4 = [*(a1 + 48) _platformImageForISIcon:v5];

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

+ (id)subtitleForVirtualConference:(id)a3 displayedWithTitle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 joinMethods];
  v8 = [v7 firstObject];

  v9 = MEMORY[0x1E69D8B70];
  v10 = [v8 URL];
  v11 = [v9 conversationLinkForURL:v10];

  v12 = [v11 linkName];
  v13 = [v6 title];

  v14 = [v8 title];
  if ([v12 length] && (v15 = objc_msgSend(v5, "isEqualToString:", v12), v16 = v12, !v15) || objc_msgSend(v13, "length") && (v17 = objc_msgSend(v5, "isEqualToString:", v13), v16 = v13, !v17) || objc_msgSend(v14, "length") && (v18 = objc_msgSend(v5, "isEqualToString:", v14), v16 = v14, (v18 & 1) == 0))
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)subtitleForURL:(id)a3 displayedWithTitle:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E69D8B70] conversationLinkForURL:a3];
  v7 = [v6 linkName];
  if ([v7 length] && (objc_msgSend(v5, "isEqualToString:", v7) & 1) == 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end