@interface IMSyndicationUtilities
- (CKContainer)ckContainer;
- (OS_dispatch_queue)attributionFetchQueue;
- (id)UTITypeForURL:(id)l;
- (id)_URLSchemeForCollaborationApp:(unint64_t)app;
- (id)_bundleIDsForCollaborationApp:(unint64_t)app;
- (id)_fetchCKBundleIDsForURL:(id)l returnLocalBundlesOnly:(BOOL)only;
- (id)bundleIDsForCollaborationURL:(id)l;
- (id)bundleIDsForShareBearURL:(id)l;
- (unint64_t)_collaborationAppForURL:(id)l;
- (void)fetchAttributionsForHighlight:(id)highlight highlight:(id)a4 completionBlock:(id)block;
@end

@implementation IMSyndicationUtilities

- (OS_dispatch_queue)attributionFetchQueue
{
  if (qword_1EB30B438 != -1)
  {
    sub_1A88C44B8();
  }

  v3 = qword_1EB30B430;

  return v3;
}

- (id)bundleIDsForCollaborationURL:(id)l
{
  lCopy = l;
  v5 = +[IMSharedWithYouManager sharedManager];
  v6 = [v5 lsAppRecordForURL:lCopy checkInstalledAppsOnly:0];
  v7 = v6;
  if (v6)
  {
    applicationIdentifier = [v6 applicationIdentifier];
    v9 = [applicationIdentifier isEqualToString:@"com.apple.CloudKit.ShareBear"];

    if (v9)
    {
      bundleIdentifier = [(IMSyndicationUtilities *)self bundleIDsForShareBearURL:lCopy];
    }

    else
    {
      bundleIdentifier = [v7 bundleIdentifier];

      if (bundleIdentifier)
      {
        v11 = MEMORY[0x1E695DEC8];
        bundleIdentifier2 = [v7 bundleIdentifier];
        bundleIdentifier = [v11 arrayWithObject:bundleIdentifier2];
      }
    }
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (id)bundleIDsForShareBearURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [(IMSyndicationUtilities *)self _collaborationAppForURL:lCopy];
    if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 5)
    {
      [(IMSyndicationUtilities *)self _fetchCKBundleIDsForURL:lCopy returnLocalBundlesOnly:0];
    }

    else
    {
      [(IMSyndicationUtilities *)self _bundleIDsForCollaborationApp:v5];
    }
    v7 = ;
    v6 = [v7 mutableCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)UTITypeForURL:(id)l
{
  v3 = [(IMSyndicationUtilities *)self _collaborationAppForURL:l];
  if (v3 - 2 > 2)
  {
    return @"public.url";
  }

  else
  {
    return off_1E7829A58[v3 - 2];
  }
}

- (void)fetchAttributionsForHighlight:(id)highlight highlight:(id)a4 completionBlock:(id)block
{
  highlightCopy = highlight;
  v9 = a4;
  blockCopy = block;
  v11 = blockCopy;
  if (highlightCopy)
  {
    attributionFetchQueue = [(IMSyndicationUtilities *)self attributionFetchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86C3EFC;
    block[3] = &unk_1E78289A0;
    v14 = highlightCopy;
    v15 = v9;
    v16 = v11;
    dispatch_async(attributionFetchQueue, block);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (id)_bundleIDsForCollaborationApp:(unint64_t)app
{
  array = [MEMORY[0x1E695DEC8] array];
  if (app > 2)
  {
    switch(app)
    {
      case 3uLL:
        [MEMORY[0x1E695DEC8] arrayWithObjects:{@"com.apple.Pages", @"com.apple.iWork.Pages", 0}];
        break;
      case 4uLL:
        [MEMORY[0x1E695DEC8] arrayWithObjects:{@"com.apple.Numbers", @"com.apple.iWork.Numbers", 0}];
        break;
      case 6uLL:
        [MEMORY[0x1E695DEC8] arrayWithObjects:{@"com.apple.finder", @"com.apple.DocumentsApp", 0}];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (app)
  {
    if (app == 1)
    {
      [MEMORY[0x1E695DEC8] arrayWithObjects:{@"com.apple.reminders", 0, v7}];
    }

    else
    {
      if (app != 2)
      {
        goto LABEL_15;
      }

      [MEMORY[0x1E695DEC8] arrayWithObjects:{@"com.apple.Keynote", @"com.apple.iWork.Keynote", 0}];
    }
  }

  else
  {
    [MEMORY[0x1E695DEC8] arrayWithObjects:{@"com.apple.Notes", @"com.apple.mobilenotes", 0}];
  }
  v5 = ;

  array = v5;
LABEL_15:

  return array;
}

- (id)_URLSchemeForCollaborationApp:(unint64_t)app
{
  string = [MEMORY[0x1E696AEC0] string];
  if (app <= 6)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:off_1E7829A70[app]];

    string = v5;
  }

  return string;
}

- (unint64_t)_collaborationAppForURL:(id)l
{
  v5 = 0;
  v6 = 7;
  do
  {
    absoluteString = [l absoluteString];
    v8 = [(IMSyndicationUtilities *)self _URLSchemeForCollaborationApp:v5];
    v9 = [absoluteString containsString:v8];

    if (v9)
    {
      v6 = v5;
    }

    ++v5;
  }

  while (v5 != 7);
  return v6;
}

- (CKContainer)ckContainer
{
  ckContainer = self->_ckContainer;
  if (!ckContainer)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:@"com.apple.SocialLayer" environment:1];
    v6 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v5 options:v4];
    v7 = self->_ckContainer;
    self->_ckContainer = v6;

    ckContainer = self->_ckContainer;
  }

  return ckContainer;
}

- (id)_fetchCKBundleIDsForURL:(id)l returnLocalBundlesOnly:(BOOL)only
{
  onlyCopy = only;
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      absoluteString = [lCopy absoluteString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = absoluteString;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Fetching BundleIDs for CK URL:%@", &buf, 0xCu);
    }
  }

  cKShareURLSlugBasedApplicationName = [lCopy CKShareURLSlugBasedApplicationName];
  lowercaseString = [cKShareURLSlugBasedApplicationName lowercaseString];
  v11 = [lowercaseString isEqualToString:@"share"];

  if (v11 && IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "CK is going to need to perform a n/w request", &buf, 2u);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = sub_1A8601FB4;
  v25 = sub_1A86021C8;
  v26 = 0;
  v13 = objc_alloc(MEMORY[0x1E695B980]);
  v21 = lCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v15 = [v13 initWithShareURLs:v14 returnLocalBundlesOnly:onlyCopy];

  if (IMIsRunningInMessagesUIProcess() && [MEMORY[0x1E696AF00] isMainThread])
  {
    configuration = [v15 configuration];
    [configuration setQualityOfService:33];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A86C4610;
  v20[3] = &unk_1E7829A38;
  v20[4] = &buf;
  [v15 setPerShareURLBlock:v20];
  ckContainer = [(IMSyndicationUtilities *)self ckContainer];
  [ckContainer addOperation:v15];

  [v15 waitUntilFinished];
  v18 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v18;
}

@end