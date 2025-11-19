@interface NSURL(NewsUI)
+ (void)nu_sanitizedURLForWebView:()NewsUI navigationAction:;
- (uint64_t)nu_handleExternalURLWithPrompt;
- (void)nu_deepLinkURL;
@end

@implementation NSURL(NewsUI)

- (void)nu_deepLinkURL
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [v2 URLOverrideForURL:a1];

  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [v4 applicationsAvailableForOpeningURL:v3];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 localizedName];
    v8 = [v7 length];

    if (v8)
    {
      a1 = v3;
    }
  }

  v9 = a1;

  return a1;
}

+ (void)nu_sanitizedURLForWebView:()NewsUI navigationAction:
{
  v5 = a4;
  v6 = [v5 request];
  v7 = [v6 URL];

  v8 = v7;
  v9 = [v5 targetFrame];
  if ([v9 isMainFrame])
  {
  }

  else
  {
    v10 = [v5 navigationType];

    v11 = v8;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [v8 nu_deepLinkURL];

LABEL_5:
  if (![v11 isEqual:v8])
  {
    v15 = v11;
    goto LABEL_15;
  }

  if (([a1 nu_canHandleNavigationAction:v5] & 1) != 0 || !objc_msgSend(v8, "isSpringboardHandledURL"))
  {
    goto LABEL_14;
  }

  v12 = MEMORY[0x277CBEBC0];
  v13 = [v8 scheme];
  if (([v12 isDefaultCallingAppScheme:v13] & 1) == 0 && (objc_msgSend(v8, "isFaceTimeURL") & 1) == 0)
  {
    v16 = [v8 isFaceTimeAudioURL];

    if (v16)
    {
      goto LABEL_11;
    }

LABEL_14:
    v15 = v8;
    goto LABEL_15;
  }

LABEL_11:
  v14 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:v8];
  [v14 setShowUIPrompt:1];
  v15 = [v14 URL];

  v8 = v15;
LABEL_15:
  v17 = v15;

  return v15;
}

- (uint64_t)nu_handleExternalURLWithPrompt
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 scheme];
  if ([a1 fc_isStoreURL])
  {
    goto LABEL_2;
  }

  if ([a1 fc_isHTTPScheme])
  {
    v4 = 0;
    goto LABEL_11;
  }

  v5 = [a1 absoluteString];
  v6 = [v5 isEqualToString:@"about:blank"];

  v4 = 0;
  if ((v6 & 1) == 0 && v2)
  {
    if ([a1 nss_isNewsURL])
    {
      v7 = [MEMORY[0x277D75128] sharedApplication];
      v8 = [v7 delegate];
      v20 = *MEMORY[0x277D766D0];
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 bundleIdentifier];
      v21[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v4 = [v8 application:v7 openURL:a1 options:v11];
    }

    else
    {
      if (([MEMORY[0x277CBEBC0] isDefaultCallingAppScheme:v2] & 1) != 0 || (objc_msgSend(a1, "isFaceTimeAudioURL") & 1) != 0 || objc_msgSend(a1, "isFaceTimeURL"))
      {
LABEL_2:
        v3 = [MEMORY[0x277D75128] sharedApplication];
        [v3 openURL:a1 options:MEMORY[0x277CBEC10] completionHandler:0];

        v4 = 1;
        goto LABEL_11;
      }

      v14 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v7 = [v14 applicationsAvailableForOpeningURL:a1];

      if (![v7 count])
      {
        v4 = 0;
        goto LABEL_10;
      }

      v8 = [v7 objectAtIndex:0];
      v15 = [v8 localizedName];
      v16 = [v15 length];
      v4 = v16 != 0;

      if (v16)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke;
        block[3] = &unk_2799A3440;
        v18 = v8;
        v19 = a1;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

LABEL_10:
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

@end