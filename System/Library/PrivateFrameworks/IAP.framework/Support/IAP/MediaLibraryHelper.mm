@interface MediaLibraryHelper
- (BOOL)iTunesRadioEnabled;
- (MediaLibraryHelper)init;
- (int)getFilteredMediaTypesMask:(int)mask;
- (void)_updateITunesRadioEnabled;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)dealloc;
- (void)handleAppInstall:(id)install;
- (void)handleAppUninstall:(id)uninstall;
@end

@implementation MediaLibraryHelper

- (void)_updateITunesRadioEnabled
{
  AppIntegerValue = dword_10012B810;
  if (dword_10012B810 == -1)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"overrideRadioEnabled", @"com.apple.iapd", 0);
    dword_10012B810 = AppIntegerValue;
    if (AppIntegerValue)
    {
      goto LABEL_3;
    }
  }

  else if (dword_10012B810)
  {
LABEL_3:
    if (AppIntegerValue == -1)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"overrideRadioEnabled", @"com.apple.iapd", 0);
      dword_10012B810 = AppIntegerValue;
    }

    v4 = AppIntegerValue == 1;
    goto LABEL_6;
  }

  showMusic = self->_showMusic;
  if (showMusic < 2)
  {
    if (showMusic)
    {
      v4 = [+[MPRadioLibrary defaultRadioLibrary](MPRadioLibrary "defaultRadioLibrary")];
    }

    else
    {
      v4 = 0;
    }

LABEL_6:
    self->_iTunesRadioEnabled = v4;
    return;
  }

  __break(0x550Au);
}

- (BOOL)iTunesRadioEnabled
{
  result = [(MediaLibraryHelper *)self _updateITunesRadioEnabled];
  if (self->_iTunesRadioEnabled < 2u)
  {
    return self->_iTunesRadioEnabled;
  }

  __break(0x550Au);
  return result;
}

- (MediaLibraryHelper)init
{
  v11.receiver = self;
  v11.super_class = MediaLibraryHelper;
  v2 = [(MediaLibraryHelper *)&v11 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dword_10012B814;
  if (dword_10012B814 == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MediaLibraryAccessOverride", @"com.apple.iapd", 0);
    v3 = AppBooleanValue;
    dword_10012B814 = AppBooleanValue;
    if ((AppBooleanValue & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((dword_10012B814 & 1) == 0)
  {
LABEL_4:
    v4 = sub_1000E1434("com.apple.Music");
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:
  v2->_showMusic = v4;
  if ((v3 & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1000E1434("com.apple.podcasts");
  }

  v2->_showPodcasts = v6;
  if ((v3 & 4) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000E1434("com.apple.iBooks");
  }

  v2->_showAudioBooks = v7;
  if ((v3 & 8) != 0)
  {
    result = 1;
  }

  else
  {
    result = sub_1000E1434("com.apple.itunesu");
  }

  v2->_showiTunesU = result;
  showMusic = v2->_showMusic;
  if (showMusic >= 2 || (showPodcasts = v2->_showPodcasts, showPodcasts > 1) || v2->_showAudioBooks > 1u)
  {
    __break(0x550Au);
  }

  else
  {
    NSLog(@"MediaLibraryHelper init: M=%d P=%d B=%d U=%d", showMusic, showPodcasts, v2->_showAudioBooks, result);
    [(MediaLibraryHelper *)v2 _updateITunesRadioEnabled];
    result = objc_alloc_init(IAPWorkspaceObserver);
    if (((v2 + 8) & 7) == 0)
    {
      v2->_workspaceObserver = result;
      [(MediaLibraryHelper *)result setDelegate:v2];
      [(IAPWorkspaceObserver *)v2->_workspaceObserver startObserving];
      return v2;
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    [(IAPWorkspaceObserver *)self->_workspaceObserver stopObserving];
    [(IAPWorkspaceObserver *)self->_workspaceObserver setDelegate:0];

    self->_workspaceObserver = 0;
    v3.receiver = self;
    v3.super_class = MediaLibraryHelper;
    [(MediaLibraryHelper *)&v3 dealloc];
  }
}

- (void)handleAppInstall:(id)install
{
  if ([objc_msgSend(install "applicationIdentifier")])
  {
    showMusic = self->_showMusic;
    if (showMusic < 2)
    {
      self->_showMusic = 1;
      v6 = showMusic != 1;
      v7 = v6;
      goto LABEL_16;
    }

LABEL_28:
    __break(0x550Au);
    return;
  }

  if ([objc_msgSend(install "applicationIdentifier")])
  {
    showPodcasts = self->_showPodcasts;
    v9 = showPodcasts == 1;
    if (showPodcasts > 1)
    {
      goto LABEL_28;
    }

    v6 = 0;
    self->_showPodcasts = 1;
  }

  else if ([objc_msgSend(install "applicationIdentifier")])
  {
    showAudioBooks = self->_showAudioBooks;
    v9 = showAudioBooks == 1;
    if (showAudioBooks > 1)
    {
      goto LABEL_28;
    }

    v6 = 0;
    self->_showAudioBooks = 1;
  }

  else
  {
    if (![objc_msgSend(install "applicationIdentifier")])
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_16;
    }

    showiTunesU = self->_showiTunesU;
    v9 = showiTunesU == 1;
    if (showiTunesU > 1)
    {
      goto LABEL_28;
    }

    v6 = 0;
    self->_showiTunesU = 1;
  }

  v7 = !v9;
LABEL_16:
  v12 = self->_showMusic;
  if (v12 > 1)
  {
    goto LABEL_28;
  }

  v13 = self->_showPodcasts;
  if (v13 > 1)
  {
    goto LABEL_28;
  }

  v14 = self->_showAudioBooks;
  if (v14 > 1)
  {
    goto LABEL_28;
  }

  v15 = self->_showiTunesU;
  if (v15 > 1)
  {
    goto LABEL_28;
  }

  NSLog(@"MediaLibraryHelper handleAppInstall: M=%d P=%d B=%d U=%d sendMusicNotification=%d sendNotification=%d", v12, v13, v14, v15, v6, v7);
  if (v6)
  {
    v16 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v16 postNotificationName:off_10012B7A0 object:0];
  }

  if (v7)
  {
    v17 = +[NSNotificationCenter defaultCenter];
    v18 = off_10012B798;

    [(NSNotificationCenter *)v17 postNotificationName:v18 object:0];
  }
}

- (void)handleAppUninstall:(id)uninstall
{
  AppBooleanValue = dword_10012B814;
  if (dword_10012B814 == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MediaLibraryAccessOverride", @"com.apple.iapd", 0);
    dword_10012B814 = AppBooleanValue;
  }

  if (![objc_msgSend(uninstall "applicationIdentifier")])
  {
    if ([objc_msgSend(uninstall "applicationIdentifier")])
    {
      showPodcasts = self->_showPodcasts;
      if (showPodcasts > 1)
      {
        goto LABEL_28;
      }

      v7 = 0;
      v10 = (AppBooleanValue >> 1) & 1;
      self->_showPodcasts = (AppBooleanValue & 2) != 0;
    }

    else if ([objc_msgSend(uninstall "applicationIdentifier")])
    {
      showPodcasts = self->_showAudioBooks;
      if (showPodcasts > 1)
      {
        goto LABEL_28;
      }

      v7 = 0;
      v10 = (AppBooleanValue >> 2) & 1;
      self->_showAudioBooks = (AppBooleanValue & 4) != 0;
    }

    else
    {
      if (![objc_msgSend(uninstall "applicationIdentifier")])
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_16;
      }

      showPodcasts = self->_showiTunesU;
      if (showPodcasts > 1)
      {
LABEL_28:
        __break(0x550Au);
        return;
      }

      v7 = 0;
      v10 = (AppBooleanValue >> 3) & 1;
      self->_showiTunesU = (AppBooleanValue & 8) != 0;
    }

    v8 = v10 != showPodcasts;
    goto LABEL_16;
  }

  showMusic = self->_showMusic;
  if (showMusic >= 2)
  {
    goto LABEL_28;
  }

  self->_showMusic = AppBooleanValue & 1;
  v7 = (AppBooleanValue & 1) != showMusic;
  v8 = v7;
LABEL_16:
  v11 = self->_showMusic;
  if (v11 > 1)
  {
    goto LABEL_28;
  }

  v12 = self->_showPodcasts;
  if (v12 > 1)
  {
    goto LABEL_28;
  }

  showAudioBooks = self->_showAudioBooks;
  if (showAudioBooks > 1)
  {
    goto LABEL_28;
  }

  showiTunesU = self->_showiTunesU;
  if (showiTunesU > 1)
  {
    goto LABEL_28;
  }

  NSLog(@"MediaLibraryHelper handleAppUninstall: M=%d P=%d B=%d U=%d sendMusicNotification=%d sendNotification=%d", v11, v12, showAudioBooks, showiTunesU, v7, v8);
  if (v7)
  {
    v15 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v15 postNotificationName:off_10012B7A8 object:0];
  }

  if (v8)
  {
    v16 = +[NSNotificationCenter defaultCenter];
    v17 = off_10012B798;

    [(NSNotificationCenter *)v16 postNotificationName:v17 object:0];
  }
}

- (int)getFilteredMediaTypesMask:(int)mask
{
  showMusic = self->_showMusic;
  if (showMusic >= 2 || (showPodcasts = self->_showPodcasts, showPodcasts > 1) || (showAudioBooks = self->_showAudioBooks, showAudioBooks > 1) || (showiTunesU = self->_showiTunesU, showiTunesU > 1))
  {
    __break(0x550Au);
  }

  else
  {
    if (mask)
    {
      maskCopy = mask;
    }

    else
    {
      maskCopy = 7423;
    }

    if (showMusic)
    {
      v8 = maskCopy;
    }

    else
    {
      v8 = maskCopy & 0xFFFFF7FE;
    }

    if ((showPodcasts & 1) == 0)
    {
      v8 &= 0xFFFFFBFD;
    }

    if ((showAudioBooks & 1) == 0)
    {
      v8 &= ~4u;
    }

    if (showiTunesU)
    {
      LODWORD(self) = v8;
    }

    else
    {
      LODWORD(self) = v8 & 0xFFFFEFF7;
    }
  }

  return self;
}

- (void)applicationsDidInstall:(id)install
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [install countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(install);
        }

        [(MediaLibraryHelper *)self handleAppInstall:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [install countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)applicationsWillUninstall:(id)uninstall
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [uninstall countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(uninstall);
        }

        [(MediaLibraryHelper *)self handleAppUninstall:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [uninstall countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [uninstall countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(uninstall);
        }

        [(MediaLibraryHelper *)self handleAppUninstall:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [uninstall countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end