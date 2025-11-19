@interface DDOpenURLAction
- (BOOL)canBePerformedWhenDeviceIsLocked;
- (id)appLink;
- (id)compactTitle;
- (id)companionAction;
- (id)iconName;
- (id)localizedName;
- (id)notificationIconBundleIdentifier;
- (id)quickActionTitle;
- (void)performFromView:(id)a3;
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
        v5 = [(NSURL *)self->super._url scheme];
        v6 = [v5 lowercaseString];
        v7 = [v6 isEqualToString:@"rdar"];

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
      v9 = self;
      [DDOpenURLAction appLink];
      self = v9;
      if (_MergedGlobals_8 != 1)
      {
        goto LABEL_6;
      }
    }

    url = self->super._url;
    if (url)
    {
      v3 = self;
      v4 = [MEMORY[0x277CC1E48] appLinksWithURL:url limit:1 error:0];
      v5 = [v4 firstObject];
      appLink = v3->_appLink;
      v3->_appLink = v5;

      self = v3;
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
    v6 = [(DDOpenURLAction *)self appLink];

    if (v6)
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
    v2 = [(DDOpenURLAction *)self appLink];
    v3 = [v2 targetApplicationRecord];
    v4 = [v3 localizedName];

    v5 = MEMORY[0x277CCACA8];
    v6 = DDLocalizedString(@"Open in “%@”");
    v7 = [v5 stringWithFormat:v6, v4];
  }

  else if (self->super._isCompanion)
  {
    v8 = objc_alloc(MEMORY[0x277CC1E98]);
    v9 = [MEMORY[0x277CBEBC0] URLWithString:@"http://"];
    v10 = [v8 initWithURL:v9 error:0];
    v11 = [v10 bundleRecord];
    v12 = [v11 localizedName];

    if ([v12 length])
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = DDLocalizedString(@"Open in %@");
      v7 = [v13 stringWithFormat:v14, v12];
    }

    else
    {
      v7 = DDLocalizedString(@"Open in Web Browser");
    }
  }

  else
  {
    v15 = [(NSURL *)self->super._url scheme];
    v16 = [v15 lowercaseString];
    v17 = [v16 isEqualToString:@"rdar"];

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
      v6 = v4;
      v4 = v6;
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
  v6 = [(DDAction *)&v9 compactTitle];
LABEL_10:
  v7 = v6;

  return v7;
}

- (id)quickActionTitle
{
  url = self->super._url;
  if (url)
  {
    v4 = [(NSURL *)url _lp_highLevelDomain];
    if ([v4 length])
    {
      v5 = v4;

      return v5;
    }
  }

  v7.receiver = self;
  v7.super_class = DDOpenURLAction;
  v5 = [(DDAction *)&v7 quickActionTitle];

  return v5;
}

- (void)performFromView:(id)a3
{
  v10 = a3;
  if ([(DDOpenURLAction *)self shouldOpenInApp]&& ([(DDOpenURLAction *)self appLink], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(DDOpenURLAction *)self appLink];
    [v5 setEnabled:1];

    v6 = [(DDOpenURLAction *)self appLink];
    [v6 openWithCompletionHandler:0];

    v7 = v10;
  }

  else
  {
    if ([(DDOpenURLAction *)self shouldOpenInBrowser])
    {
      v8 = [(DDOpenURLAction *)self appLink];

      if (v8)
      {
        v9 = [(DDOpenURLAction *)self appLink];
        [v9 setEnabled:0];
      }
    }

    [(DDAction *)self _performFromView:v10 byOpeningURL:self->super._url disableAppLink:[(DDOpenURLAction *)self shouldOpenInBrowser]];
    v7 = v10;
  }
}

- (BOOL)canBePerformedWhenDeviceIsLocked
{
  if (![(DDOpenURLAction *)self shouldOpenInApp])
  {
    return 1;
  }

  v3 = [(DDOpenURLAction *)self appLink];
  v4 = v3 == 0;

  return v4;
}

- (id)notificationIconBundleIdentifier
{
  v2 = [(NSURL *)self->super._url scheme];
  v3 = [v2 lowercaseString];
  v4 = [v3 hasPrefix:@"http"];

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