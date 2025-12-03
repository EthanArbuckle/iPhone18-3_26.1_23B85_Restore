@interface CUIKConferenceUtils
+ (id)_imageForApplicationRecord:(id)record URL:(id)l isBroadcast:(BOOL)broadcast;
+ (id)_platformImageForISIcon:(id)icon;
+ (id)_prepareImageForDefaultDescriptor:(id)descriptor;
+ (id)_systemImageNamed:(id)named;
+ (id)_titleForApplicationRecord:(id)record URL:(id)l;
+ (id)_workQueue;
+ (id)subtitleForURL:(id)l displayedWithTitle:(id)title;
+ (id)subtitleForVirtualConference:(id)conference displayedWithTitle:(id)title;
+ (id)synchronousOutlineIconForURL:(id)l isBroadcast:(BOOL)broadcast outImageName:(id *)name incomplete:(BOOL *)incomplete;
+ (id)synchronousTitleForURL:(id)l incomplete:(BOOL *)incomplete;
+ (unint64_t)_buttonTypeForApplicationRecord:(id)record URL:(id)l isBroadcast:(BOOL)broadcast;
+ (void)displayDetailsForJoinMethod:(id)method completionHandler:(id)handler;
+ (void)displayDetailsForURL:(id)l isBroadcast:(BOOL)broadcast completionHandler:(id)handler;
+ (void)imageForRoomType:(id)type completionHandler:(id)handler;
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

+ (id)_prepareImageForDefaultDescriptor:(id)descriptor
{
  v3 = MEMORY[0x1E69DCEB0];
  descriptorCopy = descriptor;
  mainScreen = [v3 mainScreen];
  [mainScreen scale];
  v7 = v6;

  v8 = objc_alloc(MEMORY[0x1E69A8A30]);
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v10 = v9;
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v12 = [v8 initWithSize:v10 scale:{v11, v7}];
  [v12 setDrawBorder:1];
  v13 = [descriptorCopy prepareImageForDescriptor:v12];

  return v13;
}

+ (id)_imageForApplicationRecord:(id)record URL:(id)l isBroadcast:(BOOL)broadcast
{
  lCopy = l;
  bundleIdentifier = [record bundleIdentifier];
  if (!bundleIdentifier || (v10 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:bundleIdentifier], objc_msgSend(self, "_platformImageForISIcon:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    if (broadcast)
    {
      v12 = @"play.tv.fill";
    }

    else if ([lCopy cal_hasSchemeTel])
    {
      v12 = @"phone.fill";
    }

    else if ([MEMORY[0x1E6992F40] isPreferredURL:lCopy])
    {
      v12 = @"video.fill";
    }

    else
    {
      v12 = @"link";
    }

    v11 = [self _systemImageNamed:v12];
  }

  return v11;
}

+ (id)synchronousTitleForURL:(id)l incomplete:(BOOL *)incomplete
{
  v6 = MEMORY[0x1E69669E0];
  lCopy = l;
  v8 = [v6 applicationRecordForURL:lCopy incomplete:incomplete];
  v9 = [self _titleForApplicationRecord:v8 URL:lCopy];

  return v9;
}

+ (id)synchronousOutlineIconForURL:(id)l isBroadcast:(BOOL)broadcast outImageName:(id *)name incomplete:(BOOL *)incomplete
{
  lCopy = l;
  v11 = [MEMORY[0x1E69669E0] applicationRecordForURL:lCopy incomplete:incomplete];
  v12 = v11;
  if (broadcast)
  {
    v13 = @"play.tv";
  }

  else if (v11 || ([MEMORY[0x1E6992F40] isPreferredURL:lCopy] & 1) != 0)
  {
    v13 = @"video";
  }

  else if ([lCopy cal_hasSchemeTel])
  {
    v13 = @"phone";
  }

  else
  {
    v13 = @"link";
  }

  v14 = [self _systemImageNamed:v13];
  if (name)
  {
    *name = v13;
  }

  return v14;
}

+ (id)_systemImageNamed:(id)named
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:named];
  v4 = [v3 imageWithRenderingMode:2];

  return v4;
}

+ (id)_platformImageForISIcon:(id)icon
{
  v3 = [self _prepareImageForDefaultDescriptor:icon];
  v4 = MEMORY[0x1E69DCAB8];
  cGImage = [v3 CGImage];
  [v3 scale];
  v6 = [v4 imageWithCGImage:cGImage scale:0 orientation:?];

  return v6;
}

+ (id)_titleForApplicationRecord:(id)record URL:(id)l
{
  recordCopy = record;
  lCopy = l;
  if (!recordCopy)
  {
    goto LABEL_5;
  }

  bundleIdentifier = [recordCopy bundleIdentifier];
  localizedName = [recordCopy localizedName];
  if ([bundleIdentifier isEqualToString:@"com.microsoft.lync2013.iphone"])
  {
    v9 = CUIKBundle();
    v10 = [v9 localizedStringForKey:@"Skype" value:&stru_1F4AA8958 table:0];

    localizedName = v10;
  }

  if (!localizedName)
  {
LABEL_5:
    localizedName = [lCopy cal_ShortDisplayStringForURL];
  }

  return localizedName;
}

+ (unint64_t)_buttonTypeForApplicationRecord:(id)record URL:(id)l isBroadcast:(BOOL)broadcast
{
  recordCopy = record;
  lCopy = l;
  if (broadcast)
  {
    v9 = 2;
  }

  else if (recordCopy || ([MEMORY[0x1E6992F40] isPreferredURL:lCopy] & 1) != 0)
  {
    v9 = 0;
  }

  else if ([lCopy cal_hasSchemeTel])
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (void)displayDetailsForURL:(id)l isBroadcast:(BOOL)broadcast completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v10 = MEMORY[0x1E69669E0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CUIKConferenceUtils_displayDetailsForURL_isBroadcast_completionHandler___block_invoke;
  v13[3] = &unk_1E839A3C8;
  v15 = handlerCopy;
  selfCopy = self;
  broadcastCopy = broadcast;
  v14 = lCopy;
  v11 = handlerCopy;
  v12 = lCopy;
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

+ (void)displayDetailsForJoinMethod:(id)method completionHandler:(id)handler
{
  handlerCopy = handler;
  methodCopy = method;
  v9 = [methodCopy URL];
  isBroadcast = [methodCopy isBroadcast];

  [self displayDetailsForURL:v9 isBroadcast:isBroadcast completionHandler:handlerCopy];
}

+ (void)imageForRoomType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  _workQueue = [self _workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CUIKConferenceUtils_imageForRoomType_completionHandler___block_invoke;
  block[3] = &unk_1E839A3F0;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = typeCopy;
  v9 = handlerCopy;
  v10 = typeCopy;
  dispatch_async(_workQueue, block);
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

+ (id)subtitleForVirtualConference:(id)conference displayedWithTitle:(id)title
{
  titleCopy = title;
  conferenceCopy = conference;
  joinMethods = [conferenceCopy joinMethods];
  firstObject = [joinMethods firstObject];

  v9 = MEMORY[0x1E69D8B70];
  v10 = [firstObject URL];
  v11 = [v9 conversationLinkForURL:v10];

  linkName = [v11 linkName];
  title = [conferenceCopy title];

  title2 = [firstObject title];
  if ([linkName length] && (v15 = objc_msgSend(titleCopy, "isEqualToString:", linkName), v16 = linkName, !v15) || objc_msgSend(title, "length") && (v17 = objc_msgSend(titleCopy, "isEqualToString:", title), v16 = title, !v17) || objc_msgSend(title2, "length") && (v18 = objc_msgSend(titleCopy, "isEqualToString:", title2), v16 = title2, (v18 & 1) == 0))
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)subtitleForURL:(id)l displayedWithTitle:(id)title
{
  titleCopy = title;
  v6 = [MEMORY[0x1E69D8B70] conversationLinkForURL:l];
  linkName = [v6 linkName];
  if ([linkName length] && (objc_msgSend(titleCopy, "isEqualToString:", linkName) & 1) == 0)
  {
    v8 = linkName;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end