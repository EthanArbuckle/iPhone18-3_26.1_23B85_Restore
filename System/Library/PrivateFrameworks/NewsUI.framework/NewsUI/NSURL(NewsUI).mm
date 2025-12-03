@interface NSURL(NewsUI)
+ (void)nu_sanitizedURLForWebView:()NewsUI navigationAction:;
- (uint64_t)nu_handleExternalURLWithPrompt;
- (void)nu_deepLinkURL;
@end

@implementation NSURL(NewsUI)

- (void)nu_deepLinkURL
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [defaultWorkspace URLOverrideForURL:self];

  defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [defaultWorkspace2 applicationsAvailableForOpeningURL:v3];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
    localizedName = [v6 localizedName];
    v8 = [localizedName length];

    if (v8)
    {
      self = v3;
    }
  }

  selfCopy = self;

  return self;
}

+ (void)nu_sanitizedURLForWebView:()NewsUI navigationAction:
{
  v5 = a4;
  request = [v5 request];
  v7 = [request URL];

  v8 = v7;
  targetFrame = [v5 targetFrame];
  if ([targetFrame isMainFrame])
  {
  }

  else
  {
    navigationType = [v5 navigationType];

    nu_deepLinkURL = v8;
    if (navigationType)
    {
      goto LABEL_5;
    }
  }

  nu_deepLinkURL = [v8 nu_deepLinkURL];

LABEL_5:
  if (![nu_deepLinkURL isEqual:v8])
  {
    v15 = nu_deepLinkURL;
    goto LABEL_15;
  }

  if (([self nu_canHandleNavigationAction:v5] & 1) != 0 || !objc_msgSend(v8, "isSpringboardHandledURL"))
  {
    goto LABEL_14;
  }

  v12 = MEMORY[0x277CBEBC0];
  scheme = [v8 scheme];
  if (([v12 isDefaultCallingAppScheme:scheme] & 1) == 0 && (objc_msgSend(v8, "isFaceTimeURL") & 1) == 0)
  {
    isFaceTimeAudioURL = [v8 isFaceTimeAudioURL];

    if (isFaceTimeAudioURL)
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
  scheme = [self scheme];
  if ([self fc_isStoreURL])
  {
    goto LABEL_2;
  }

  if ([self fc_isHTTPScheme])
  {
    v4 = 0;
    goto LABEL_11;
  }

  absoluteString = [self absoluteString];
  v6 = [absoluteString isEqualToString:@"about:blank"];

  v4 = 0;
  if ((v6 & 1) == 0 && scheme)
  {
    if ([self nss_isNewsURL])
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      delegate = [mEMORY[0x277D75128] delegate];
      v20 = *MEMORY[0x277D766D0];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v21[0] = bundleIdentifier;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v4 = [delegate application:mEMORY[0x277D75128] openURL:self options:v11];
    }

    else
    {
      if (([MEMORY[0x277CBEBC0] isDefaultCallingAppScheme:scheme] & 1) != 0 || (objc_msgSend(self, "isFaceTimeAudioURL") & 1) != 0 || objc_msgSend(self, "isFaceTimeURL"))
      {
LABEL_2:
        mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
        [mEMORY[0x277D75128]2 openURL:self options:MEMORY[0x277CBEC10] completionHandler:0];

        v4 = 1;
        goto LABEL_11;
      }

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      mEMORY[0x277D75128] = [defaultWorkspace applicationsAvailableForOpeningURL:self];

      if (![mEMORY[0x277D75128] count])
      {
        v4 = 0;
        goto LABEL_10;
      }

      delegate = [mEMORY[0x277D75128] objectAtIndex:0];
      localizedName = [delegate localizedName];
      v16 = [localizedName length];
      v4 = v16 != 0;

      if (v16)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke;
        block[3] = &unk_2799A3440;
        v18 = delegate;
        selfCopy = self;
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