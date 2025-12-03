@interface DDOpenURLAction
- (BOOL)canBePerformedWhenDeviceIsLocked;
- (id)appLink;
- (id)compactTitle;
- (id)companionAction;
- (id)iconName;
- (id)localizedName;
- (id)notificationIconBundleIdentifier;
- (id)quickActionTitle;
- (void)performFromView:(id)view;
@end

@implementation DDOpenURLAction

- (id)iconName
{
  if (self->super._hasCompanion)
  {
    if ([(NSURL *)self->super._url dd_isAppleStore])
    {
      if (([(NSURL *)self->super._url dd_isAppleApps]& 1) != 0)
      {
        return @"appstore";
      }

      else if (([(NSURL *)self->super._url dd_isAppleBooks]& 1) != 0)
      {
        return @"book";
      }

      else if (([(NSURL *)self->super._url dd_isAppleMusic]& 1) != 0)
      {
        return @"music";
      }

      else if (([(NSURL *)self->super._url dd_isApplePodcasts]& 1) != 0)
      {
        return @"podcasts";
      }

      else if ([(NSURL *)self->super._url dd_isAppleTV])
      {
        return @"tv";
      }

      else
      {
        return @"star";
      }
    }

    else
    {
      return @"arrow.up.forward.app";
    }
  }

  else
  {
    isCompanion = self->super._isCompanion;
    result = @"safari";
    if (!isCompanion)
    {
      if ([(NSURL *)self->super._url dd_isMaps:1])
      {
        return @"map";
      }

      else
      {
        scheme = [(NSURL *)self->super._url scheme];
        lowercaseString = [scheme lowercaseString];
        v7 = [lowercaseString isEqualToString:@"rdar"];

        if (v7)
        {
          return @"ant";
        }

        else
        {
          return @"safari";
        }
      }
    }
  }

  return result;
}

- (id)appLink
{
  if (!self->_appLinkInitDone)
  {
    self->_appLinkInitDone = 1;
    if (qword_280B122E8 == -1)
    {
      if (_MergedGlobals_8 != 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      selfCopy = self;
      [DDOpenURLAction appLink];
      self = selfCopy;
      if (_MergedGlobals_8 != 1)
      {
        goto LABEL_6;
      }
    }

    url = self->super._url;
    if (url)
    {
      selfCopy2 = self;
      v4 = [MEMORY[0x277CC1E48] appLinksWithURL:url limit:1 error:0];
      firstObject = [v4 firstObject];
      appLink = selfCopy2->_appLink;
      selfCopy2->_appLink = firstObject;

      self = selfCopy2;
    }
  }

LABEL_6:
  v7 = self->_appLink;

  return v7;
}

uint64_t __26__DDOpenURLAction_appLink__block_invoke()
{
  result = [MEMORY[0x277CC1E48] currentProcessHasReadAccess];
  _MergedGlobals_8 = result;
  return result;
}

- (id)companionAction
{
  if (self->super._isCompanion || self->super._hasCompanion)
  {
    v3 = 0;
  }

  else
  {
    appLink = [(DDOpenURLAction *)self appLink];

    if (appLink)
    {
      v3 = [(DDAction *)[DDOpenURLAction alloc] initWithURL:self->super._url result:self->super._result context:self->super._context];
      if (v3)
      {
        v3->super._isCompanion = 1;
        self->super._hasCompanion = 1;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)localizedName
{
  if (self->super._hasCompanion)
  {
    appLink = [(DDOpenURLAction *)self appLink];
    targetApplicationRecord = [appLink targetApplicationRecord];
    localizedName = [targetApplicationRecord localizedName];

    v5 = MEMORY[0x277CCACA8];
    v6 = DDLocalizedString(@"Open in “%@”");
    v7 = [v5 stringWithFormat:v6, localizedName];
  }

  else if (self->super._isCompanion)
  {
    v8 = objc_alloc(MEMORY[0x277CC1E98]);
    v9 = [MEMORY[0x277CBEBC0] URLWithString:@"http://"];
    v10 = [v8 initWithURL:v9 error:0];
    bundleRecord = [v10 bundleRecord];
    localizedName2 = [bundleRecord localizedName];

    if ([localizedName2 length])
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = DDLocalizedString(@"Open in %@");
      v7 = [v13 stringWithFormat:v14, localizedName2];
    }

    else
    {
      v7 = DDLocalizedString(@"Open in Web Browser");
    }
  }

  else
  {
    scheme = [(NSURL *)self->super._url scheme];
    lowercaseString = [scheme lowercaseString];
    v17 = [lowercaseString isEqualToString:@"rdar"];

    if (v17)
    {
      v18 = @"Open in Radar";
    }

    else
    {
      v18 = @"Open Link";
    }

    v7 = DDLocalizedString(v18);
  }

  return v7;
}

- (id)compactTitle
{
  v3 = self->super._result;
  if (v3)
  {
    v4 = actionSheetTitleForResult(v3);
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_6:
    if ([v4 length] <= 0x3B)
    {
      compactTitle = v4;
      v4 = compactTitle;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  url = self->super._url;
  if (!url)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v4 = actionSheetTitleForURL(url);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9.receiver = self;
  v9.super_class = DDOpenURLAction;
  compactTitle = [(DDAction *)&v9 compactTitle];
LABEL_10:
  v7 = compactTitle;

  return v7;
}

- (id)quickActionTitle
{
  url = self->super._url;
  if (url)
  {
    _lp_highLevelDomain = [(NSURL *)url _lp_highLevelDomain];
    if ([_lp_highLevelDomain length])
    {
      quickActionTitle = _lp_highLevelDomain;

      return quickActionTitle;
    }
  }

  v7.receiver = self;
  v7.super_class = DDOpenURLAction;
  quickActionTitle = [(DDAction *)&v7 quickActionTitle];

  return quickActionTitle;
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  if ([(DDOpenURLAction *)self shouldOpenInApp]&& ([(DDOpenURLAction *)self appLink], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    appLink = [(DDOpenURLAction *)self appLink];
    [appLink setEnabled:1];

    appLink2 = [(DDOpenURLAction *)self appLink];
    [appLink2 openWithCompletionHandler:0];

    v7 = viewCopy;
  }

  else
  {
    if ([(DDOpenURLAction *)self shouldOpenInBrowser])
    {
      appLink3 = [(DDOpenURLAction *)self appLink];

      if (appLink3)
      {
        appLink4 = [(DDOpenURLAction *)self appLink];
        [appLink4 setEnabled:0];
      }
    }

    [(DDAction *)self _performFromView:viewCopy byOpeningURL:self->super._url disableAppLink:[(DDOpenURLAction *)self shouldOpenInBrowser]];
    v7 = viewCopy;
  }
}

- (BOOL)canBePerformedWhenDeviceIsLocked
{
  if (![(DDOpenURLAction *)self shouldOpenInApp])
  {
    return 1;
  }

  appLink = [(DDOpenURLAction *)self appLink];
  v4 = appLink == 0;

  return v4;
}

- (id)notificationIconBundleIdentifier
{
  scheme = [(NSURL *)self->super._url scheme];
  lowercaseString = [scheme lowercaseString];
  v4 = [lowercaseString hasPrefix:@"http"];

  if (v4)
  {
    return @"com.apple.mobilesafari";
  }

  else
  {
    return 0;
  }
}

@end