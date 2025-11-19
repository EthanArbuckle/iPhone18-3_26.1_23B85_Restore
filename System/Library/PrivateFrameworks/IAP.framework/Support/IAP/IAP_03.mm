uint64_t sub_10003F8BC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10003F8D0(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 4)
  {
    return (*(*result + 128))();
  }

  __break(0x550Au);
  return result;
}

void sub_10003F910(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
LABEL_19:
    __break(0x550Au);
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  if (a2 >= 4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  if (a2 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (a2 == 2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  valuePtr = v7;
  [*(a1 + 120) setExpectedRepeatMode:v7];
  if (![*(a1 + 120) _isCommandSupported:25])
  {
    [*(a1 + 120) setRepeatModeCache:v7];
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (qword_10012BB20 && (qword_10012BB20 & 7) == 0)
    {
      (*(*qword_10012BB20 + 56))();
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  keys[0] = kMRMediaRemoteOptionRepeatMode;
  keys[1] = kMRMediaRemoteCommandInfoPreservesRepeatModeKey;
  values[0] = v8;
  values[1] = kCFBooleanTrue;
  v9 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  NSLog(@"SetRepeatDefault send ChangeRepeatMode repeatModeNumber=%@ opts=%@", v8, v9);
  MRMediaRemoteSendCommand();
  [*(a1 + 120) setRepeatModeCache:0];
  CFRelease(v9);
LABEL_17:
}

uint64_t sub_10003FAF0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [*(v1 + 120) currentRepeatMode];
    if (v3 == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * (v3 == 3);
    }

    objc_autoreleasePoolPop(v2);
    return v4;
  }

  return result;
}

uint64_t sub_10003FB50(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 4)
  {
    return (*(*result + 160))();
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10003FB90(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 168))();
  }

  __break(0x5516u);
  return result;
}

void sub_10003FBC4(id *a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
LABEL_19:
    __break(0x550Au);
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  if (a2 >= 4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  if (a2 == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  if (a2 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  valuePtr = v7;
  [a1[15] setExpectedShuffleMode:v7];
  if (![a1[15] _isCommandSupported:26])
  {
    [a1[15] setShuffleModeCache:v7];
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (qword_10012BB20 && (qword_10012BB20 & 7) == 0)
    {
      (*(*qword_10012BB20 + 56))();
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  keys[0] = kMRMediaRemoteOptionShuffleMode;
  keys[1] = kMRMediaRemoteCommandInfoPreservesShuffleModeKey;
  values[0] = v8;
  values[1] = kCFBooleanTrue;
  v9 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  NSLog(@"SetShuffleDefault send ChangeShuffleMode shuffleModeNumber=%@ opts=%@", v8, v9);
  MRMediaRemoteSendCommand();
  [a1[15] setShuffleModeCache:0];
  CFRelease(v9);
  (*(*a1 + 82))(a1);
LABEL_17:
}

uint64_t sub_10003FDDC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [*(v1 + 120) currentShuffleMode];
    if (v3 == 3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * (v3 == 2);
    }

    objc_autoreleasePoolPop(v2);
    return v4;
  }

  return result;
}

uint64_t sub_10003FE3C(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 0x100)
  {
    return (*(*result + 192))();
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10003FE7C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 200))();
  }

  __break(0x5516u);
  return result;
}

void sub_10003FEB0(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v3 = objc_alloc_init(NSAutoreleasePool);
  if (a2 >= 0x100)
  {
LABEL_8:
    __break(0x550Au);
    return;
  }

  MRMediaRemoteSetPlaybackSpeed();
}

uint64_t sub_10003FF30(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    [*(v1 + 120) nowPlayingAppPlaybackSpeed];
    if (v3 < 1.0)
    {
      v4 = 255;
    }

    else
    {
      v4 = 0;
    }

    if (v3 <= 1.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    return v5;
  }

  return result;
}

void sub_10003FF98(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  v3 = objc_alloc_init(NSAutoreleasePool);
  if (a2 >= 0x80)
  {
LABEL_11:
    __break(0x550Au);
    return;
  }

  v6 = v3;
  if (a2)
  {
    v4 = [+[MLEQPreset eqPresetForBuiltInPresetType:](MLEQPreset eqPresetForBuiltInPresetType:{a2), "name"}];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetValue(@"MusicEQPresetName", v4, @"com.apple.mobileipod", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.mobileipod", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  GSSendAppPreferencesChanged();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.preferences.ipod-changed", 0, 0, 1u);
  notify_post("com.apple.mobileipod-prefsChanged");
}

void sub_1000400B0(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_7:
    __break(0x550Au);
    return;
  }

  v1 = CFPreferencesCopyValue(@"MusicEQPresetName", @"com.apple.mobileipod", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v1)
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = [MLEQPreset eqPresetForName:v1];
    CFRelease(v1);
    v4 = [v3 builtInPresetType];

    if (v4 >= 0x80)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_100040168(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 248))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004019C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = (*(*result + 224))(result);
  if (result >= 0x80)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (result)
  {
    return (result - 99);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100040200(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
LABEL_8:
    __break(0x5500u);
    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_6:
    (*(*result + 216))(result);
    return 1;
  }

  if (a2 >= 0xFFFFFF9C)
  {
    goto LABEL_8;
  }

  if (a2 + 99 < 0x80)
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(0x550Au);
  return result;
}

uint64_t sub_10004026C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 272))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000402A8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 280))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000402E4(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = &kCFBooleanTrue;
    if (!a2)
    {
      v2 = &kCFBooleanFalse;
    }

    CFPreferencesSetValue(@"MusicSoundCheckEnabledSetting", *v2, @"com.apple.mobileipod", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    CFPreferencesSynchronize(@"com.apple.mobileipod", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    GSSendAppPreferencesChanged();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.preferences.ipod-changed", 0, 0, 1u);

    return notify_post("com.apple.mobileipod-prefsChanged");
  }

  return result;
}

BOOL sub_1000403C4(_BOOL8 result)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    keyExistsAndHasValidFormat = -86;
    return CFPreferencesGetAppBooleanValue(@"MusicSoundCheckEnabledSetting", @"com.apple.mobileipod", &keyExistsAndHasValidFormat) != 0;
  }

  return result;
}

uint64_t sub_10004041C(uint64_t result, int a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  *(result + 100) = 0;
  *(result + 102) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  if (sub_10003F088() < 1)
  {
    return 1;
  }

  result = sub_1000CC7A0();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  result = (*(*result + 104))(result, a3);
  if (!result)
  {
    return 1;
  }

  if (dword_10012963C)
  {
LABEL_11:
    result = 0;
    *(v3 + 100) = 1;
    *(v3 + 104) = a2;
    *(v3 + 112) = a3;
    return result;
  }

  if ((result & 7) == 0)
  {
    if ((*(*result + 112))(result))
    {
      return 1;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(0x5516u);
  return result;
}

uint64_t sub_10004050C(uint64_t result, int a2, uint64_t a3, char a4)
{
  if (!result)
  {
    goto LABEL_15;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  *(result + 100) = 0;
  *(result + 102) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  result = sub_1000CC7A0();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  result = (*(*result + 104))(result, a3);
  if (!result)
  {
    return 1;
  }

  if (dword_10012963C)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    return result;
  }

  if ((*(*result + 112))(result))
  {
    return 1;
  }

LABEL_10:
  if (sub_10003F088() < 1)
  {
    v8 = sub_100067278();
    return !((sub_10006814C(*(v4 + 96), v8, 1) < 0x3E9) & ~a4 & a2);
  }

  else
  {
    *(v4 + 112) = a3;
    result = 0;
    if (a2)
    {
      *(v4 + 102) = 1;
    }

    else
    {
      *(v4 + 101) = 1;
    }
  }

  return result;
}

void sub_100040634(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_19;
  }

  if (!a6)
  {
    return;
  }

  v13 = objc_alloc_init(NSAutoreleasePool);
  if ((*(*a1 + 36))(a1, a2, a6))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    if ([a1[15] podcastAppSelected] & 1) != 0 || (objc_msgSend(a1[15], "iBooksAppSelected"))
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v14 = [a1[15] iTunesUAppSelected] ^ 1;
    }

    v25 = v14;
    v15 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (v15)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040914;
      block[3] = &unk_100114388;
      block[4] = &v22;
      block[5] = a1;
      dispatch_sync(v15, block);
      v16 = *(v23 + 24);
      if (v16 >= 2)
      {
LABEL_20:
        __break(0x550Au);
        return;
      }

      if ((v16 & 1) == 0)
      {
        (*(*a1 + 65))(a1, a6);
        (*(*a1 + 70))(a1);
        (*(*a1 + 83))(a1, a7 & ~(a7 >> 31), 1);
        goto LABEL_15;
      }

      v17 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
      if (v17)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100040AD4;
        v18[3] = &unk_1001149A8;
        v19 = a2;
        v18[4] = a1;
        v18[5] = a6;
        v20 = a8;
        dispatch_sync(v17, v18);
        (*(*a1 + 70))(a1);
LABEL_15:
        _Block_object_dispose(&v22, 8);
        goto LABEL_16;
      }
    }

LABEL_19:
    __break(0x5510u);
    goto LABEL_20;
  }

LABEL_16:
}

void sub_1000408FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040914(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  if (dword_1001295A8)
  {
    v4 = v3;
    if (v2[100] < 0)
    {
      if ((v2[99] & 0x80000000) == 0)
      {
        v10 = [objc_msgSend(+[MPMediaQuery geniusMixesQuery](MPMediaQuery "geniusMixesQuery")];
        (*(*v2 + 656))(v2);
        [v4 setQueueWithGeniusMixPlaylist:v10];
        *(*(*(a1 + 32) + 8) + 24) = 0;
        if ((sub_100036DB4() & 1) == 0)
        {
          NSLog(@"%s:%d no systemMusicPlayer! unlikely to be starting genius mix", "Play_block_invoke", 3363);
        }
      }
    }

    else
    {
      if (qword_10012BB28 != -1)
      {
        sub_1000E1F88();
      }

      v5 = qword_10012BB20;
      if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
      {
        __break(0x5516u);
      }

      else
      {
        v6 = sub_100030078(qword_10012BB20);
        v8 = v2[100];
        if (v6 > v8)
        {
          v9 = sub_1000300CC(v5, v8, v7);
          (*(*v2 + 656))(v2);
          [v4 setQueueWithRadioStation:v9];
          [v4 prepareQueueForPlayback];
          if ((sub_100036DB4() & 1) == 0)
          {
            NSLog(@"%s:%d no systemMusicPlayer! unlikely to be starting radio", "Play_block_invoke", 3350);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }
}

uint64_t sub_100040AD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  if (*(a1 + 48) != -1)
  {
    if (sub_100036DB4())
    {
      v4 = [v3 nowPlayingItemAtIndex:*(a1 + 48)];
      if (!v4)
      {
        NSLog(@"%s:%d Failed nowPlayingItemAtIndex: numberOfItems=%d index=%d mediaItem=%@", "Play_block_invoke_2", 3388, [v3 numberOfItems], *(a1 + 48), 0);
      }

      [v3 setNowPlayingItem:v4];
    }

    else
    {
      NSLog(@"%s:%d no systemMusicPlayer, can't queue track for now playing!", "Play_block_invoke_2", 3395);
    }
  }

  if (!sub_100036DB4() || [v3 playbackState] || objc_msgSend(v3, "queueAsQuery"))
  {
    if ((sub_100036DB4() & 1) == 0)
    {
      NSLog(@"%s:%d can't queue all songs for systemMusicPlayer!", "Play_block_invoke_2", 3421);
    }
  }

  else
  {
    v8 = +[MPMediaQuery songsQuery];
    result = sub_100025E90();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_31;
    }

    if ((*(*result + 96))(result))
    {
      if (qword_10012BB28 != -1)
      {
        sub_1000E1F88();
      }

      result = qword_10012BB20;
      if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
      {
        goto LABEL_31;
      }

      if ((*(*qword_10012BB20 + 624))())
      {
        [(MPMediaQuery *)v8 addFilterPredicate:[MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsLocal]];
      }
    }

    if (sub_100036874())
    {
      [(MPMediaQuery *)v8 setIgnoreSystemFilterPredicates:1];
    }

    [v3 setQueueWithQuery:v8];
    [v3 prepareQueueForPlayback];
  }

  result = (*(*v2 + 520))(v2, *(a1 + 40));
  v6 = *(a1 + 52);
  if (v6 >= 2)
  {
    __break(0x550Au);
LABEL_31:
    __break(0x5516u);
    return result;
  }

  if (v6)
  {
    v7 = *(*v2 + 656);

    return v7(v2);
  }

  return result;
}

void sub_100040D78(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (v3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040E28;
      block[3] = &unk_100111CF8;
      block[4] = a1;
      dispatch_sync(v3, block);

      return;
    }
  }

  __break(0x5510u);
}

id sub_100040E28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  (*(*v1 + 576))(v1);

  return [v2 setQueueWithQuery:0];
}

NSObject *sub_100040EAC(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = sub_100036DB4();
    if (!v2)
    {
      goto LABEL_10;
    }

    v3 = objc_alloc_init(NSAutoreleasePool);
    if ((*(v1->isa + 55))(v1) & 1) != 0 || ((*(v1->isa + 58))(v1))
    {
LABEL_8:

      v4 = *(v7 + 24);
      if (v4 < 2)
      {
LABEL_11:
        _Block_object_dispose(&v6, 8);
        return (v4 & 1);
      }

      __break(0x550Au);
LABEL_10:
      sub_1000DDE90(v2, @"%s:%s:%d no systemMusicPlayer, sending MR start FF command", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "StartFastForward", 3469);
      MRMediaRemoteSendCommandToApp();
      LOBYTE(v4) = 1;
      *(v7 + 24) = 1;
      goto LABEL_11;
    }

    result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (result)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004107C;
      block[3] = &unk_1001149D0;
      block[4] = &v6;
      dispatch_sync(result, block);
      goto LABEL_8;
    }
  }

  __break(0x5510u);
  return result;
}

id sub_10004107C(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

NSObject *sub_1000410BC(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = sub_100036DB4();
    if (!v2)
    {
      goto LABEL_10;
    }

    v3 = objc_alloc_init(NSAutoreleasePool);
    if ((*(v1->isa + 56))(v1) & 1) != 0 || ((*(v1->isa + 58))(v1))
    {
LABEL_8:

      v4 = *(v7 + 24);
      if (v4 < 2)
      {
LABEL_11:
        _Block_object_dispose(&v6, 8);
        return (v4 & 1);
      }

      __break(0x550Au);
LABEL_10:
      sub_1000DDE90(v2, @"%s:%s:%d no systemMusicPlayer, sending MR start REW command", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "StartRewind", 3495);
      MRMediaRemoteSendCommandToApp();
      LOBYTE(v4) = 1;
      *(v7 + 24) = 1;
      goto LABEL_11;
    }

    result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (result)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004128C;
      block[3] = &unk_1001149D0;
      block[4] = &v6;
      dispatch_sync(result, block);
      goto LABEL_8;
    }
  }

  __break(0x5510u);
  return result;
}

id sub_10004128C(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void sub_1000412CC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_12;
  }

  if (sub_100036DB4())
  {
    v1 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (v1)
    {

      dispatch_sync(v1, &stru_1001149F0);
      return;
    }

LABEL_12:
    __break(0x5510u);
    return;
  }

  sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer, sending MR stop FF/REW command", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "StopFFRew", 3513);
  MRMediaRemoteSendCommandToApp();

  MRMediaRemoteSendCommandToApp();
}

void sub_1000413AC(id a1)
{
  v1 = +[MediaPlayerHelper sharedSystemMusicPlayer];

  [v1 endSeeking];
}

void sub_1000413DC(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = [*(a1 + 120) nowPlayingHandlerQueue];
    if (v4)
    {
      v5[1] = 3221225472;
      v5[0] = _NSConcreteStackBlock;
      v5[2] = sub_10004148C;
      v5[3] = &unk_1001137F0;
      v5[4] = a1;
      *&v5[5] = a2 / 1000.0;
      dispatch_async(v4, v5);
      return;
    }
  }

  __break(0x5510u);
}

id sub_10004148C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 120) _isSetElapsedTimeAvailable];
  if (result)
  {
    v3.n128_u64[0] = *(a1 + 40);

    return _MRMediaRemoteSetElapsedTime(v3);
  }

  return result;
}

NSObject *sub_1000414DC(NSObject *result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  if (!sub_100036DB4())
  {
    result = [(objc_class *)v2[15].isa nowPlayingAppPlaybackState];
    if (result <= 3)
    {
      if (!result)
      {
        goto LABEL_15;
      }

      if (a2 <= 0xFF)
      {
        if (a2 - 1 >= 2)
        {
          if (a2 != 3)
          {
            goto LABEL_15;
          }

          sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer, sending MRMediaRemoteCommandNextTrack", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "Next", 3581);
        }

        else
        {
          sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer, sending MRMediaRemoteCommandNextChapter", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "Next", 3586);
        }

        MRMediaRemoteSendCommandToApp();
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (result)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004166C;
    block[3] = &unk_100113280;
    block[4] = v2;
    if (a2 < 0x100)
    {
      v6 = a2;
      dispatch_sync(result, block);
LABEL_15:

      return 1;
    }

LABEL_16:
    __break(0x550Au);
LABEL_17:
    __break(0x5516u);
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_10004166C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  result = [v3 playbackState];
  if (!result)
  {
    return result;
  }

  if (*(a1 + 40) >= 0x100u)
  {
    goto LABEL_32;
  }

  v5 = *(a1 + 40);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {

      return [v3 skipToNextItem];
    }
  }

  else
  {
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    v6 = qword_10012BB20;
    result = sub_1000418D0(v2, 0);
    if (result)
    {
      v7 = result;
      if ((result & 7) != 0)
      {
LABEL_33:
        __break(0x5516u);
        goto LABEL_34;
      }

      result = sub_100052BC8(result, 0);
      if (!result)
      {
        return result;
      }

      result = (*(*v7 + 368))(v7);
      v8 = result;
      if (result)
      {
        result = (*(v2->isa + 26))(v2);
      }

      v9 = *(a1 + 40);
      if (v9 <= 0xFF)
      {
        if (v9 == 1)
        {
          if (!v8)
          {
LABEL_16:
            [v3 skipToNextItem];
            goto LABEL_29;
          }

          if (result != -1)
          {
            if (result + 1 >= v8)
            {
              goto LABEL_16;
            }

            goto LABEL_26;
          }
        }

        else
        {
          if (!v8 || v9 != 2)
          {
LABEL_29:
            v11 = *(*v7 + 8);

            return v11(v7);
          }

          if (result != -1)
          {
            if (result + 1 >= v8)
            {
              goto LABEL_29;
            }

LABEL_26:
            if (v6 && (v6 & 7) == 0)
            {
              v10 = (*(*v7 + 376))(v7);
              (*(*v6 + 344))(v6, v10);
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

LABEL_34:
        __break(0x5500u);
        return result;
      }

LABEL_32:
      __break(0x550Au);
      goto LABEL_33;
    }
  }

  return result;
}

NSObject *sub_1000418D0(NSObject *result, int a2)
{
  if (!result || (p_isa = &result->isa, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10004237C(result, 1);
    if (((*(*p_isa + 74))(p_isa) & 1) == 0 && ((*(*p_isa + 75))(p_isa) & 1) == 0 && ((*(*p_isa + 76))(p_isa) & 1) == 0)
    {
      operator new();
    }

    v4 = objc_alloc_init(NSAutoreleasePool);
    if (!(*(*p_isa + 52))(p_isa))
    {

      return 0;
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = sub_100042670;
    v11 = sub_100042680;
    v12 = 0;
    if (((*(*p_isa + 75))(p_isa) & 1) != 0 || (*(*p_isa + 76))(p_isa))
    {
      v5 = sub_1000331F4([p_isa[15] currentNowPlayingInfoPID]);
LABEL_10:
      v8[5] = v5;
      goto LABEL_11;
    }

    if (!a2)
    {
      v5 = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
      goto LABEL_10;
    }

    result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (result)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000426A4;
      block[3] = &unk_1001149D0;
      block[4] = &v7;
      dispatch_sync(result, block);
LABEL_11:
      operator new();
    }
  }

  __break(0x5510u);
  return result;
}

NSObject *sub_100041C90(NSObject *result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  if (!sub_100036DB4())
  {
    result = [(objc_class *)v2[15].isa nowPlayingAppPlaybackState];
    if (result <= 3)
    {
      if (!result)
      {
        goto LABEL_15;
      }

      if (a2 <= 0xFF)
      {
        if (a2 - 1 >= 2)
        {
          if (a2 != 3)
          {
            goto LABEL_15;
          }

          sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer, sending MRMediaRemoteCommandPrevTrack", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "Prev", 3651);
        }

        else
        {
          sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer, sending MRMediaRemoteCommandPreviousChapter", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "Prev", 3656);
        }

        MRMediaRemoteSendCommandToApp();
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (result)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100041E20;
    block[3] = &unk_100113280;
    block[4] = v2;
    if (a2 < 0x100)
    {
      v6 = a2;
      dispatch_sync(result, block);
LABEL_15:

      return 1;
    }

LABEL_16:
    __break(0x550Au);
LABEL_17:
    __break(0x5516u);
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_100041E20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  result = [v3 playbackState];
  if (!result)
  {
    return result;
  }

  if (*(a1 + 40) >= 0x100u)
  {
    goto LABEL_36;
  }

  v5 = *(a1 + 40);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 3)
    {
      return result;
    }

    if (sub_1000420CC(v2, 0) > 0xF9F)
    {
      result = v3;

      return [result skipToBeginning];
    }

    return [v3 skipToPreviousItem];
  }

  else
  {
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    v6 = qword_10012BB20;
    result = sub_1000418D0(v2, 0);
    if (result)
    {
      v7 = result;
      if ((result & 7) != 0)
      {
LABEL_37:
        __break(0x5516u);
        return [result skipToBeginning];
      }

      result = sub_100052BC8(result, 0);
      if (!result)
      {
        return result;
      }

      result = (*(*v7 + 368))(v7);
      v8 = result;
      if (result)
      {
        if (!v6 || (v6 & 7) != 0)
        {
          goto LABEL_37;
        }

        v9 = sub_1000420CC(v6, 0);
        result = (*(*v7 + 392))(v7, v9);
      }

      v10 = *(a1 + 40);
      if (v10 <= 0xFF)
      {
        if (v10 == 1)
        {
          if (!v8 || !result)
          {
            [v3 skipToBeginningOrPreviousItem];
            goto LABEL_33;
          }
        }

        else if (!v8 || !result || v10 != 2)
        {
LABEL_33:
          v12 = *(*v7 + 8);

          return v12(v7);
        }

        if (v6 && (v6 & 7) == 0)
        {
          v11 = (*(*v7 + 376))(v7, (result - 1));
          (*(v6->isa + 43))(v6, v11);
          goto LABEL_33;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(0x550Au);
      goto LABEL_37;
    }
  }

  return result;
}

NSObject *sub_1000420CC(NSObject *result, int a2)
{
  if (!result)
  {
    goto LABEL_30;
  }

  p_isa = &result->isa;
  if ((result & 7) != 0)
  {
    goto LABEL_30;
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  if (!(*(*p_isa + 74))(p_isa) || sub_10003AF10(p_isa, a2))
  {
    result = [p_isa[15] currentPlaybackTime];
    if (v5 >= 0.0 && v5 <= 2147483.65)
    {
      v6 = v5 * 1000.0;
      if (v6 <= -1.0 || v6 >= 4294967300.0)
      {
        goto LABEL_31;
      }

      v8 = v6;
      goto LABEL_18;
    }

    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    result = qword_10012BB20;
    if (qword_10012BB20 && (qword_10012BB20 & 7) == 0)
    {
      v8 = (*(*qword_10012BB20 + 504))() - 1;
LABEL_18:
      v9 = (*(*p_isa + 74))(p_isa);
      sub_1000DDE90(6u, @"MP: IsNowPlayingAppIPod()=%d, timeElapsed=%d", v9, v8);
      v10 = v8;
LABEL_29:

      return v10;
    }

LABEL_30:
    __break(0x5516u);
LABEL_31:
    __break(0x5505u);
    goto LABEL_32;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!a2)
  {
    result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
    v12 = v11 * 1000.0;
    if (v12 <= -1.0 || v12 >= 4294967300.0)
    {
      goto LABEL_31;
    }

    v10 = v12;
    *(v16 + 6) = v10;
    goto LABEL_28;
  }

  result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (result)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004318C;
    block[3] = &unk_1001149D0;
    block[4] = &v15;
    dispatch_sync(result, block);
    v10 = *(v16 + 6);
LABEL_28:
    sub_1000DDE90(6u, @"MP: iPod is Now Playing App, timeElapsed=%d", v10);
    _Block_object_dispose(&v15, 8);
    goto LABEL_29;
  }

LABEL_32:
  __break(0x5510u);
  return result;
}

void sub_10004234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100042364(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004237C(uint64_t result, char a2)
{
  if (!result)
  {
    goto LABEL_41;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  if ((a2 & 1) != 0 || dword_100129630 != 4 || (result = [*(result + 120) fakeStreamTrackIndexTimeExpired], result))
  {
    pthread_mutex_lock((v2 + 208));
    if (*(v2 + 51))
    {
      v3 = sub_100067278();
      v4 = sub_10006814C(*(v2 + 51), v3, 1);
      v5 = v4;
      if (byte_10012BB08)
      {
        v6 = 5000;
      }

      else
      {
        v6 = 1700;
      }

      sub_1000DDEEC(0, 7, "%s:%d curTimeInMs = %u, _waitForMRNotificationTimestamp = %u, timeElapsed = %u, __cacheTimeoutMSWaitForMRNotification = %u", "WaitForMRNotification", 3690, v3, *(v2 + 51), v4, v6);
      if (byte_10012BB08)
      {
        v7 = 5000;
      }

      else
      {
        v7 = 1700;
      }

      if (v7 <= v5)
      {
        *(v2 + 51) = 0;
      }

      else
      {
        v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        *&v19.tv_usec = 0xAAAAAAAAAAAAAAAALL;
        result = gettimeofday(&v19, 0);
        if (byte_10012BB08)
        {
          v8 = 5000;
        }

        else
        {
          v8 = 1700;
        }

        v9 = v8 >= v5;
        v10 = v8 - v5;
        if (!v9)
        {
          goto LABEL_42;
        }

        if ((*(v2 + 100) & 0x80000000) != 0 && (result = [*(v2 + 15) iBooksAppSelected], (result & 1) == 0))
        {
          result = [*(v2 + 15) podcastAppSelected];
          v11 = 5000;
          if ((result & 1) == 0)
          {
            result = [*(v2 + 15) iTunesUAppSelected];
            if (result)
            {
              v11 = 5000;
            }

            else
            {
              v11 = 0;
            }
          }
        }

        else
        {
          v11 = 5000;
        }

        v12 = v10 + v11;
        if (__CFADD__(v10, v11))
        {
          goto LABEL_40;
        }

        if (1000 * v19.tv_usec != 1000 * v19.tv_usec)
        {
LABEL_43:
          __break(0x550Cu);
          return result;
        }

        tv_sec = v19.tv_sec;
        if (v12 >= 0x3E9)
        {
          while (1)
          {
            v14 = tv_sec + 1;
            if (__OFADD__(tv_sec, 1))
            {
              goto LABEL_40;
            }

            v12 -= 1000;
            ++tv_sec;
            if (v12 <= 0x3E8)
            {
              tv_sec = v14;
              break;
            }
          }
        }

        v15 = 1000000 * v12 + (1000 * v19.tv_usec);
        v18.tv_sec = tv_sec;
        v18.tv_nsec = v15;
        if (v15 >= 1000000001)
        {
          v16 = __OFADD__(tv_sec, 1);
          v17 = tv_sec + 1;
          if (v16)
          {
LABEL_40:
            __break(0x5500u);
LABEL_41:
            __break(0x5516u);
LABEL_42:
            __break(0x5515u);
            goto LABEL_43;
          }

          v18.tv_sec = v17;
          v18.tv_nsec = v15 - 1000000000;
        }

        if (pthread_cond_timedwait((v2 + 272), (v2 + 208), &v18) == 60)
        {
          NSLog(@"%s:%d, Timed out waiting for MR notifications", "WaitForMRNotification", 3726);
        }
      }
    }

    return pthread_mutex_unlock((v2 + 208));
  }

  return result;
}

uint64_t sub_1000425A0(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = objc_alloc_init(NSAutoreleasePool);
    sub_10004237C(v2, 0);
    if ((*(*v2 + 52))(v2))
    {
      v5 = [v2[15] _currentNowPlayingInfoTrack:a2];
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }

    return v5;
  }

  return result;
}

uint64_t sub_100042658(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000425A0(result, 1);
  }

  __break(0x5516u);
  return result;
}

id *sub_10004268C(id *result)
{
  if (result && (result & 7) == 0)
  {
    return [result[15] currentNowPlayingInfoPID];
  }

  __break(0x5516u);
  return result;
}

id sub_1000426A4(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

NSObject *sub_1000426E0(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000418D0(result, 1);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_1000426F8(NSObject *result)
{
  if (!result || (p_isa = &result->isa, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    sub_10004237C(p_isa, 0);
    if (!(*(*p_isa + 52))(p_isa))
    {
      goto LABEL_9;
    }

    v3 = [p_isa[15] currentNowPlayingInfoTrackCount];
    *(v7 + 6) = v3;
    if ([p_isa[15] currentNowPlayingInfoTrackCountExists] & 1) != 0 || !(*(*p_isa + 74))(p_isa) || ((*(*p_isa + 64))(p_isa))
    {
      goto LABEL_9;
    }

    result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (result)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000428EC;
      block[3] = &unk_1001149D0;
      block[4] = &v6;
      dispatch_sync(result, block);
      sub_1000DDE90(7u, @"%s:%s-%d numberOfItems from iPod player is 0x%x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "TrackCount", 3839, *(v7 + 6));
LABEL_9:

      v4 = *(v7 + 6);
      _Block_object_dispose(&v6, 8);
      return v4;
    }
  }

  __break(0x5510u);
  return result;
}

id sub_1000428EC(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100042928(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      sub_10004237C(result, 1);
      if ((*(*v2 + 74))(v2) & 1) != 0 || ((*(*v2 + 75))(v2) & 1) != 0 || ((*(*v2 + 76))(v2))
      {
        result = (*(*v2 + 49))(v2);
        if (result > a2)
        {
          v4 = objc_alloc_init(NSAutoreleasePool);
          v5 = [v2[15] currentNowPlayingInfoTrack];
          if (((*(*v2 + 75))(v2) & 1) == 0 && (*(*v2 + 64))(v2) && sub_100036DB4())
          {
            operator new();
          }

          [+[IAPStackshot sharedInstance](IAPStackshot startTimer:"startTimer:withInfo:" withInfo:@"MediaPlayer::GetIndTrackAccessor", 3.0];
          v11 = 0;
          v12 = &v11;
          v13 = 0x3052000000;
          v14 = sub_100042670;
          v15 = sub_100042680;
          v16 = 0;
          if ((*(*v2 + 75))(v2))
          {
            if (v5 != a2)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          if ((*(*v2 + 76))(v2))
          {
LABEL_15:
            v6 = sub_1000331F4([v2[15] currentNowPlayingInfoPID]);
            v12[5] = v6;
            goto LABEL_16;
          }

          if (!sub_100036DB4())
          {
            if ((sub_100036DB4() & 1) == 0)
            {
              sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer, can't get nowPlayingItemAtIndex", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "GetIndTrackAccessor", 3944);
            }

LABEL_16:
            operator new();
          }

          result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
          if (result)
          {
            v8[0] = _NSConcreteStackBlock;
            v8[1] = 3221225472;
            v8[2] = sub_1000430C8;
            v8[3] = &unk_100114388;
            v9 = a2;
            v10 = v5;
            v8[4] = &v11;
            dispatch_sync(result, v8);
            goto LABEL_16;
          }

          goto LABEL_31;
        }
      }

      else
      {
        [v2[15] currentNowPlayingInfoTrack];
        result = (*(*v2 + 64))(v2);
        if ((result & 1) != 0 || (a2 & 0x80000000) == 0 && (result = (*(*v2 + 49))(v2), result > a2))
        {
          operator new();
        }
      }

      v7 = v18[3];
      if (!v7)
      {
LABEL_20:
        _Block_object_dispose(&v17, 8);
        return v7;
      }

      if ((v7 & 7) == 0)
      {
        *(v7 + 48) = 1;
        goto LABEL_20;
      }
    }
  }

  __break(0x5516u);
LABEL_31:
  __break(0x5510u);
  return result;
}

uint64_t sub_100043024(uint64_t a1)
{
  v2 = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    v4 = (*(*(*(a1 + 32) + 8) + 24) & 7) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && ((result = (*(*result + 400))(result, v2), (v5 = *(*(*(a1 + 32) + 8) + 24)) != 0) ? (v6 = (*(*(*(a1 + 32) + 8) + 24) & 7) == 0) : (v6 = 0), v6))
  {
    *(v5 + 32) = 1;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

void sub_1000430C8(uint64_t a1)
{
  v2 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  v3 = v2;
  if (*(a1 + 40) == *(a1 + 44))
  {
    v4 = [v2 nowPlayingItem];
  }

  else
  {
    v4 = [v2 nowPlayingItemAtIndex:?];
  }

  *(*(*(a1 + 32) + 8) + 40) = v4;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    NSLog(@"%s:%d Failed nowPlayingItemAtIndex: numberOfItems=%d index=%d mediaItem=%@", "GetIndTrackAccessor_block_invoke_2", 3937, [v3 numberOfItems], *(a1 + 40), *(*(*(a1 + 32) + 8) + 40));
  }
}

NSObject *sub_100043174(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000420CC(result, 1);
  }

  __break(0x5516u);
  return result;
}

id sub_10004318C(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  v4 = v3 * 1000.0;
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 4294967300.0)
  {
    v4 = 4294967300.0;
  }

  if (v4 > -1.0 && v4 < 4294967300.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  else
  {
    __break(0x5505u);
  }

  return result;
}

uint64_t sub_100043210(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_15;
  }

  pthread_mutex_lock((result + 136));
  if (!*(v1 + 132))
  {
LABEL_8:
    pthread_mutex_unlock((v1 + 136));
    if ([*(v1 + 120) nowPlayingAppIsValid])
    {
      if ((*(*v1 + 592))(v1))
      {
        v4 = objc_alloc_init(NSAutoreleasePool);
        v5 = [+[IAPStackshot sharedInstance](IAPStackshot startTimer:"startTimer:withInfo:" withInfo:@"MediaPlayer::GetPlaybackState", 3.0];
        v6 = [*(v1 + 120) nowPlayingAppPlaybackState];
        [+[IAPStackshot sharedInstance](IAPStackshot endTimer:"endTimer:", v5];

        sub_1000DDE90(6u, @"MP: GetPlaybackState: playbackState=%d", v6);
        return v6;
      }

      else
      {
        v3 = [*(v1 + 120) nowPlayingAppPlaybackState];
        sub_1000DDE90(6u, @"MP: GetPlaybackState: playbackState=%d, ! IsNowPlayingAppIPod()", v3);
      }
    }

    else
    {
      sub_1000DDE90(6u, @"MP: GetPlaybackState: playbackState=%d, ! IsNowPlayingAppValid()", 0);
      return 0;
    }

    return v3;
  }

  v2 = sub_100067278();
  result = sub_10006814C(*(v1 + 132), v2, 1);
  if (result > 0x3E7)
  {
    *(v1 + 132) = 0;
    *(v1 + 392) = 0;
    goto LABEL_8;
  }

  v3 = *(v1 + 128);
  if (v3 < 4)
  {
    sub_1000DDE90(6u, @"MP: GetPlaybackState: playbackState=%d, _expectedPlayState=%d, curTimeInMs(%u) - _expectedPlayStateTimestamp(%u) > __cacheTimeoutMS(%u)", v3, v3, v2, *(v1 + 132), 1000);
    pthread_mutex_unlock((v1 + 136));
    return v3;
  }

LABEL_15:
  __break(0x550Au);
  return result;
}

BOOL sub_1000433BC(_BOOL8 result)
{
  if (!result || (v1 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDE90(6u, @"MP: Playing: check Playing, kPlaying=%u", 1);
    return (*(*v1 + 416))(v1) == 1;
  }

  return result;
}

BOOL sub_100043450(_BOOL8 result)
{
  if (!result || (v1 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDE90(6u, @"MP: Paused: check Playing, kPlaying=%u", 2);
    return (*(*v1 + 416))(v1) == 2;
  }

  return result;
}

void sub_1000434E4(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_24;
  }

  pthread_mutex_lock((a1 + 328));
  if (!*(a1 + 324))
  {
    goto LABEL_7;
  }

  v2 = sub_100067278();
  if (sub_10006814C(*(a1 + 324), v2, 1) <= 0x3E7)
  {
    v10 = *(a1 + 320);
    if (v10 < 4)
    {
      sub_1000DDE90(6u, @"MP: InFF(%d): ISL::kInFF=%d _expectedFFRewState=%d, __cacheTimeoutMS(%u) > (curTimeInMs(%u) - _expectedFFRewStateTimestamp(%u))", v10 == 1, 1, v10, 1000, v2, *(a1 + 324));
      pthread_mutex_unlock((a1 + 328));
      return;
    }

    goto LABEL_24;
  }

  *(a1 + 324) = 0;
  v3 = *(a1 + 320);
  if (v3 <= 3)
  {
    sub_1000DDE90(6u, @"MP: InFF(%d): ISL::kInFF=%d _expectedFFRewState=%d, __cacheTimeoutMS(%u) > (curTimeInMs(%u) - _expectedFFRewStateTimestamp(%u))", 0, 1, v3, 1000, v2, 0);
LABEL_7:
    pthread_mutex_unlock((a1 + 328));
    v4 = objc_alloc_init(NSAutoreleasePool);
    v5 = (*(*a1 + 592))(a1);
    [*(a1 + 120) nowPlayingAppPlaybackRate];
    v7 = v6;
    if ((v5 & 1) == 0)
    {
      v9 = v6 != 1.5 && v6 > 1.0;
      sub_1000DDE90(6u, @"MP: InFF(%d): ISL::kInFF=%d ! IsNowPlayingAppIPod() rate=%f", v9, 1, *&v6);
      goto LABEL_17;
    }

    if ([*(a1 + 120) nowPlayingAppPlaybackState])
    {
      v8 = v7 != 1.5 && v7 > 1.0;
      sub_1000DDE90(6u, @"MP: InFF(%d): ISL::kInFF=%d IsNowPlayingAppIPod() rate=%f, Not ISL::kStopped", v8, 1, *&v7);
      goto LABEL_17;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v11 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (!v11)
    {
      goto LABEL_25;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043794;
    block[3] = &unk_1001149D0;
    block[4] = &v14;
    dispatch_sync(v11, block);
    v12 = *(v15 + 24);
    if (v12 <= 1)
    {
      sub_1000DDE90(6u, @"MP: InFF(%d): ISL::kInFF=%d IsNowPlayingAppIPod() rate=%f, ISL::kStopped", v12, 1, *&v7, 0);
      _Block_object_dispose(&v14, 8);
LABEL_17:

      return;
    }
  }

LABEL_24:
  __break(0x550Au);
LABEL_25:
  __break(0x5510u);
}

id sub_100043794(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  *(*(*(a1 + 32) + 8) + 24) = result == 4;
  return result;
}

void sub_1000437D8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((a1 + 328));
    if (*(a1 + 324))
    {
      v2 = sub_100067278();
      if (sub_10006814C(*(a1 + 324), v2, 1) <= 0x3E7)
      {
        v7 = *(a1 + 320);
        if (v7 < 4)
        {
          sub_1000DDE90(6u, @"MP: InRew(%d): ISL::kInRew=%d _expectedFFRewState=%d, __cacheTimeoutMS(%u) > (curTimeInMs(%u) - _expectedFFRewStateTimestamp(%u))", v7 == 2, 2, v7, 1000, v2, *(a1 + 324));
          pthread_mutex_unlock((a1 + 328));
          return;
        }

        goto LABEL_17;
      }

      *(a1 + 324) = 0;
    }

    pthread_mutex_unlock((a1 + 328));
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = (*(*a1 + 592))(a1);
    [*(a1 + 120) nowPlayingAppPlaybackRate];
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      sub_1000DDE90(6u, @"MP: InRew(%d): ISL::kInRew=%d ! IsNowPlayingAppIPod() rate=%f", v5 < 0.0, 2, *&v5);
      goto LABEL_10;
    }

    if ([*(a1 + 120) nowPlayingAppPlaybackState])
    {
      sub_1000DDE90(6u, @"MP: InRew(%d): ISL::kInRew=%d IsNowPlayingAppIPod() rate=%f, Not ISL::kStopped", v6 < 0.0, 2, *&v6);
LABEL_10:

      return;
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (!v8)
    {
      goto LABEL_18;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043A38;
    block[3] = &unk_1001149D0;
    block[4] = &v11;
    dispatch_sync(v8, block);
    v9 = *(v12 + 24);
    if (v9 <= 1)
    {
      sub_1000DDE90(6u, @"MP: InRew(%d): ISL::kInRew=%d IsNowPlayingAppIPod() rate=%f, ISL::kStopped", v9, 2, *&v6, 0);
      _Block_object_dispose(&v11, 8);
      goto LABEL_10;
    }
  }

LABEL_17:
  __break(0x550Au);
LABEL_18:
  __break(0x5510u);
}

id sub_100043A38(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  *(*(*(a1 + 32) + 8) + 24) = result == 5;
  return result;
}

uint64_t sub_100043A7C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if ((*(*result + 440))(result))
  {
    return 1;
  }

  else
  {
    v2 = *(*v1 + 448);

    return v2(v1);
  }

  return result;
}

uint64_t sub_100043B2C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 416))(result) == 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100043B84(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100043B9C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100043BB4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

void sub_100043BCC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100043BE4(a1, 1);
  }
}

void sub_100043BE4(uint64_t a1, int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_15:
    __break(0x550Au);
    goto LABEL_16;
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (!sub_100036DB4() || !(*(*a1 + 592))(a1))
  {
    if ((sub_100036DB4() & 1) == 0)
    {
      sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer!", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "_IsNowPlayingGeniusMix", 4300);
    }

LABEL_11:

    if (*(v9 + 24) <= 1u)
    {
      _Block_object_dispose(&v8, 8);
      return;
    }

    goto LABEL_15;
  }

  if (!(*(*a1 + 416))(a1))
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    v6 = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
    *(v9 + 24) = v6;
    goto LABEL_11;
  }

  v5 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043DB8;
    block[3] = &unk_1001149D0;
    block[4] = &v8;
    dispatch_sync(v5, block);
    goto LABEL_11;
  }

LABEL_16:
  __break(0x5510u);
}

void sub_100043DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100043DB8(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL sub_100043DF4(_BOOL8 result)
{
  if (!result || (v1 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = (*(*v1 + 74))(v1) && (*(*v1 + 52))(v1) && [v1[15] nowPlayingAppIsiTunesRadio] != 0;

    return v3;
  }

  return result;
}

uint64_t sub_100043EBC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10003AF10(result, 1);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100043ED4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100036874();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100043EFC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 23;
  }

  __break(0x5516u);
  return result;
}

std::string *sub_100043F14(uint64_t a1, int a2, std::string *this)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v5;
  v24 = v5;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  v15 = v5;
  v16 = v5;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v9 = v5;
  v10 = v5;
  if (a2)
  {
    result = objc_alloc_init(NSAutoreleasePool);
    if ((a2 - 1) >= 0xFFFFFF9C)
    {
      __break(0x5500u);
    }

    else
    {
      v7 = result;
      v8 = [+[MLEQPreset eqPresetForBuiltInPresetType:](MLEQPreset eqPresetForBuiltInPresetType:{(a2 + 99), v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24), "localizedName"}];
      if (!v8 || !CFStringGetCString(v8, &v9, 256, 0x8000100u))
      {
        LOBYTE(v9) = 0;
      }

      return std::string::assign(this, &v9);
    }
  }

  else
  {

    return std::string::assign(this, "Off");
  }

  return result;
}

void sub_100044054(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  v4 = [*(a1 + 120) nowPlayingAppName];
  if (!v4)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_9;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_9;
    }

LABEL_12:
    __break(0x5516u);
    return;
  }

  std::string::assign(a2, [objc_msgSend(v4 "precomposedStringWithCanonicalMapping")]);
LABEL_9:
}

void sub_1000440FC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = [*(a1 + 120) currentNowPlayingInfoString:kMRMediaRemoteNowPlayingInfoTitle];
  if (v5)
  {
    v6 = v5;
    std::string::assign(a2, [objc_msgSend(v5 "precomposedStringWithCanonicalMapping")]);
    v7 = v6;
LABEL_5:

    return;
  }

  if (!dword_10012961C || ![*(a1 + 120) nowPlayingAppName])
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_5;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  std::string::assign(a2, [objc_msgSend(objc_msgSend(*(a1 + 120) "nowPlayingAppName")]);
  memset(&v12, 0, sizeof(v12));
  sub_100025D20(__p, ".");
  sub_10001D66C(a2, &v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v12.__r_.__value_.__l.__size_ - v12.__r_.__value_.__r.__words[0]) >> 3);
  if (v8)
  {
    v9 = sub_100023B20(&v12, v8 - 1);
    std::string::operator=(a2, v9);
    __p[0] = &v12;
    sub_100025BF4(__p);
    goto LABEL_5;
  }

LABEL_17:
  __break(0x5515u);
}

void sub_10004426C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  sub_100025BF4(&__p);
  _Unwind_Resume(a1);
}

void sub_1000442A4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v4 = [*(a1 + 120) currentNowPlayingInfoString:kMRMediaRemoteNowPlayingInfoAlbum];
  if (!v4)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_9;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_9;
    }

LABEL_12:
    __break(0x5516u);
    return;
  }

  v5 = v4;
  std::string::assign(a2, [objc_msgSend(v4 "precomposedStringWithCanonicalMapping")]);
  v6 = v5;
LABEL_9:
}

void sub_100044364(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v4 = [*(a1 + 120) currentNowPlayingInfoString:kMRMediaRemoteNowPlayingInfoArtist];
  if (!v4)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_9;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_9;
    }

LABEL_12:
    __break(0x5516u);
    return;
  }

  v5 = v4;
  std::string::assign(a2, [objc_msgSend(v4 "precomposedStringWithCanonicalMapping")]);
  v6 = v5;
LABEL_9:
}

void sub_100044424(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v4 = [*(a1 + 120) currentNowPlayingInfoString:kMRMediaRemoteNowPlayingInfoGenre];
  if (!v4)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_9;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_9;
    }

LABEL_12:
    __break(0x5516u);
    return;
  }

  v5 = v4;
  std::string::assign(a2, [objc_msgSend(v4 "precomposedStringWithCanonicalMapping")]);
  v6 = v5;
LABEL_9:
}

void sub_1000444E4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v4 = [*(a1 + 120) currentNowPlayingInfoString:kMRMediaRemoteNowPlayingInfoComposer];
  if (!v4)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_9;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_9;
    }

LABEL_12:
    __break(0x5516u);
    return;
  }

  v5 = v4;
  std::string::assign(a2, [objc_msgSend(v4 "precomposedStringWithCanonicalMapping")]);
  v6 = v5;
LABEL_9:
}

uint64_t sub_1000445A4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  result = [*(result + 120) currentNowPlayingInfoDuration];
  if (v1 >= 0.0 && v1 <= 2147483.65)
  {
    v2 = v1 * 1000.0;
    if (v2 > -1.0 && v2 < 4294967300.0)
    {
      return v2;
    }

    goto LABEL_19;
  }

  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  result = qword_10012BB20;
  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
LABEL_19:
    __break(0x5505u);
    return result;
  }

  if ((*(*qword_10012BB20 + 504))())
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id *sub_10004467C(id *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = [result[15] currentNowPlayingInfoAlbumTrack];
    if (result < 0x10000)
    {
      return result;
    }
  }

  __break(0x5507u);
  return result;
}

id *sub_1000446BC(id *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = [result[15] currentNowPlayingInfoDisc];
    if (result < 0x10000)
    {
      return result;
    }
  }

  __break(0x5507u);
  return result;
}

id sub_1000446FC(id *a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    return [a1[15] currentNowPlayingInfoChapter];
  }

  __break(0x5516u);
  return [a1 currentNowPlayingInfoChapter];
}

id *sub_100044714(id *result)
{
  if (result && (result & 7) == 0)
  {
    return [result[15] currentNowPlayingInfoChapterCount];
  }

  __break(0x5516u);
  return result;
}

id sub_10004472C(id *a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    return [a1[15] currentNowPlayingInfoArtworkExists];
  }

  __break(0x5516u);
  return [a1 currentNowPlayingInfoArtworkExists];
}

void sub_100044744(id *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  v6 = objc_alloc_init(NSAutoreleasePool);
  if (!(*(*a1 + 76))(a1))
  {
LABEL_6:

    return;
  }

  v7 = [a1[15] nowPlayingInfoTitleForAudiobookIndex:a2];
  if (v7)
  {
    v8 = v7;
    std::string::assign(a3, [objc_msgSend(v7 "precomposedStringWithCanonicalMapping")]);
    v9 = v8;
    goto LABEL_6;
  }

  if (!dword_10012961C || ![a1[15] nowPlayingAppName])
  {
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      *a3 = 0;
      *(a3 + 23) = 0;
      goto LABEL_6;
    }

    if (*a3)
    {
      **a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  std::string::assign(a3, [objc_msgSend(objc_msgSend(a1[15] "nowPlayingAppName")]);
  memset(&v14, 0, sizeof(v14));
  sub_100025D20(__p, ".");
  sub_10001D66C(a3, &v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v14.__r_.__value_.__l.__size_ - v14.__r_.__value_.__r.__words[0]) >> 3);
  if (v10)
  {
    v11 = sub_100023B20(&v14, v10 - 1);
    std::string::operator=(a3, v11);
    __p[0] = &v14;
    sub_100025BF4(__p);
    goto LABEL_6;
  }

LABEL_18:
  __break(0x5515u);
}

void sub_1000448E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  sub_100025BF4(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_10004491C(_BOOL8 result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    return ![*(result + 120) nowPlayingAppIsValid] || objc_msgSend(*(v1 + 120), "nowPlayingAppIsIPodApp") != 0;
  }

  return result;
}

BOOL sub_100044970(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    return [*(result + 120) nowPlayingAppIsVideosApp] != 0;
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000449A4(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    return [*(result + 120) nowPlayingAppIsiBooksApp] != 0;
  }

  __break(0x5516u);
  return result;
}

BOOL sub_1000449D8(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    return [*(result + 120) nowPlayingAppIsPodcastApp] != 0;
  }

  __break(0x5516u);
  return result;
}

id sub_100044A0C(id *a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    return [a1[15] currentNowPlayingInfoArtwork];
  }

  __break(0x5516u);
  return [a1 currentNowPlayingInfoArtwork];
}

uint64_t sub_100044A3C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 568))();
  }

  __break(0x5516u);
  return result;
}

void sub_100044A78(uint64_t a1, void *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a2;
    v5 = [*(a1 + 120) nowPlayingHandlerQueue];
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100044B18;
      v6[3] = &unk_1001137D0;
      v6[4] = a2;
      v6[5] = a1;
      dispatch_async(v5, v6);
      return;
    }
  }

  __break(0x5510u);
}

void sub_100044B18(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_1000DDE90(7u, @"MR: %s:%d call _handleNowPlayingInfo:", "DBGNotifyNowPlayingInfo_block_invoke", 4607);
  [*(v2 + 120) _handleNowPlayingInfo:*(a1 + 32)];
  v3 = *(a1 + 32);
}

void sub_100044B84(uint64_t a1, void *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a2;
    v5 = [*(a1 + 120) nowPlayingHandlerQueue];
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100044C24;
      v6[3] = &unk_1001137D0;
      v6[4] = a2;
      v6[5] = a1;
      dispatch_async(v5, v6);
      return;
    }
  }

  __break(0x5510u);
}

void sub_100044C24(uint64_t a1)
{
  [*(*(a1 + 40) + 120) _setNowPlayingApp:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_100044C64(uint64_t a1, char a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = [*(a1 + 120) nowPlayingHandlerQueue];
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100044D04;
      v5[3] = &unk_100114A10;
      v5[4] = a1;
      v6 = a2;
      dispatch_async(v4, v5);
      return;
    }
  }

  __break(0x5510u);
}

void sub_100044D04(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1000DDE90(7u, @"MR: %s:%d call _handleNowPlayingAppIsPlayingDidChange:", "DBGNotifyNowPlayingState_block_invoke", 4625);
  if (*(a1 + 40) >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    v3 = *(v2 + 120);

    [v3 _handleNowPlayingAppIsPlayingDidChange:?];
  }
}

NSString *sub_100044D74(NSString *result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  if ((*(*a2 + 208))(a2) != 2)
  {
    return 0;
  }

  WORD2(v3) = -21846;
  LODWORD(v3) = -1431655766;
  result = (*(*a2 + 184))(&v3, a2);
  if (&vars0 == 23 || &v3 + 5 <= 3)
  {
LABEL_15:
    __break(0x5513u);
    return result;
  }

  result = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", v3, BYTE1(v3), BYTE2(v3), BYTE3(v3), BYTE4(v3), BYTE5(v3)];
  if (!result)
  {
    return result;
  }

  if (MRMediaRemoteSelectSourceWithID())
  {
    return 1;
  }

  NSLog(@"MediaPlayer::PullRouteToA2DP failed to set audio route to A2DP");
  return 0;
}

uint64_t sub_100044E98(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  v2 = a2;
  pthread_mutex_lock((a1 + 136));
  v4 = *(a1 + 128);
  if (v4 >= 4)
  {
    goto LABEL_23;
  }

  if (*(a1 + 392) > 1u)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 393);
  if (v5 > 1)
  {
    goto LABEL_23;
  }

  NSLog(@"MR: %s:%d ENTER _expectedPlayState=%d _expectedPlayStateTimestamp=%u _nowPlayingInfoReceived=%u _nowPlayingAppIsPlayingReceived=%u", "SetExpectedPlayStateInfo", 4656, v4, *(a1 + 132), *(a1 + 392), v5);
  if (v2)
  {
    if (v2 == 3)
    {
      v6 = 0;
    }

    else
    {
      if (v2 != 1)
      {
        goto LABEL_25;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 132);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 128);
  if (v8 > 3)
  {
    goto LABEL_23;
  }

  if (v6 != v8)
  {
LABEL_18:
    *(a1 + 128) = v6;
    v7 = sub_100067278();
    *(a1 + 132) = v7;
    *(a1 + 392) = 0;
    v6 = *(a1 + 128);
    if (v6 < 4)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_20;
    }

LABEL_23:
    __break(0x550Au);
LABEL_24:
    __break(0x5516u);
LABEL_25:
    sub_1000E1FD8(v2);
  }

  v9 = *(a1 + 392);
  if (v9 > 1)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + 393);
  if (v10 > 1)
  {
    goto LABEL_23;
  }

LABEL_20:
  NSLog(@"MR: %s:%d EXIT _expectedPlayState=%d _expectedPlayStateTimestamp=%u _nowPlayingInfoReceived=%u _nowPlayingAppIsPlayingReceived=%u", "SetExpectedPlayStateInfo", 4684, v6, v7, v9, v10);

  return pthread_mutex_unlock((a1 + 136));
}

uint64_t sub_100044FF0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 208));
    v2 = sub_100067278();
    *(v1 + 204) = v2;
    NSLog(@"MR: %s:%d _waitForMRNotificationTimestamp=%u", "SetWaitForMRNotification", 4725, v2);

    return pthread_mutex_unlock((v1 + 208));
  }

  return result;
}

uint64_t sub_10004506C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_13;
  }

  v2 = a2;
  pthread_mutex_lock((a1 + 328));
  v4 = *(a1 + 320);
  if (v4 >= 4)
  {
    goto LABEL_12;
  }

  NSLog(@"MR: %s:%d ENTER _expectedFFRewStateTimestamp=%u _expectedFFRewState=%d", "SetExpectedFFRewStateInfo", 4752, *(a1 + 324), v4);
  if ((v2 - 8) >= 4)
  {
    goto LABEL_14;
  }

  v5 = dword_1000EB580[(v2 - 8)];
  v6 = *(a1 + 324);
  if (v6)
  {
    v7 = *(a1 + 320);
    if (v7 <= 3)
    {
      if (v5 == v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_12:
    __break(0x550Au);
LABEL_13:
    __break(0x5516u);
LABEL_14:
    sub_1000E2010(v2);
  }

LABEL_8:
  *(a1 + 320) = v5;
  v6 = sub_100067278();
  *(a1 + 324) = v6;
  v5 = *(a1 + 320);
  if (v5 > 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  NSLog(@"MR: %s:%d EXIT _expectedFFRewStateTimestamp=%u _expectedFFRewState=%d", "SetExpectedFFRewStateInfo", 4777, v6, v5);

  return pthread_mutex_unlock((a1 + 328));
}

NSObject *sub_10004516C(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_19;
  }

  if (![(objc_class *)result[15].isa podcastAppSelected])
  {
    if ([*(v1 + 120) iBooksAppSelected])
    {
      NSLog(@"MusicPlayerPlay: iBooksAppSelected, send MR Play to iBooks");
      goto LABEL_9;
    }

    if ([*(v1 + 120) iTunesUAppSelected])
    {
      NSLog(@"MusicPlayerPlay: iTunesUAppSelected, send MR Play to iTunesU");
      goto LABEL_9;
    }

    if ((sub_100036DB4() & 1) == 0)
    {
      NSLog(@"MusicPlayerPlay: No systemMusicPlayer. send MR Play instead");
      MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
      goto LABEL_10;
    }

    NSLog(@"MusicPlayerPlay: systemMusicPlayer play");
    MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
    result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (result)
    {
      dispatch_sync(result, &stru_100114A30);
      goto LABEL_11;
    }

LABEL_19:
    __break(0x5510u);
    return result;
  }

  NSLog(@"MusicPlayerPlay: podcastAppSelected, send MR Play to Podcasts");
LABEL_9:
  MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
LABEL_10:
  MRMediaRemoteSendCommandToApp();
LABEL_11:

  return sub_100044E98(v1, 0);
}

void sub_1000452B4(id a1)
{
  v1 = +[MediaPlayerHelper sharedSystemMusicPlayer];

  [v1 play];
}

NSObject *sub_1000452E4(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  if ((sub_100036DB4() & 1) == 0)
  {
    NSLog(@"MusicPlayerPause: No systemMusicPlayer. send MR Pause instead");
    MRMediaRemoteSendCommandToApp();
    goto LABEL_7;
  }

  sub_1000DDE90(6u, @"%s:%d regular systemMusicPlayer pause", "virtual void ISL::MediaPlayer::MusicPlayerPause()", 4919);
  result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (!result)
  {
LABEL_11:
    __break(0x5510u);
    return result;
  }

  dispatch_sync(result, &stru_100114A50);
LABEL_7:

  return sub_100044E98(v1, 1);
}

void sub_1000453AC(id a1)
{
  v1 = +[MediaPlayerHelper sharedSystemMusicPlayer];

  [v1 pause];
}

uint64_t sub_1000453DC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (sub_100036DB4())
    {
      NSLog(@"MusicPlayerStop: systemMusicPlayer stop");
      [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
    }

    else
    {
      NSLog(@"MusicPlayerStop: No systemMusicPlayer. send MR Stop instead");
      MRMediaRemoteSendCommandToApp();
    }

    return sub_100044E98(v1, 3);
  }

  return result;
}

void sub_100045478(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_10:
    __break(0x550Au);
    goto LABEL_11;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 2;
  v2 = objc_alloc_init(NSAutoreleasePool);
  v3 = [+[IAPStackshot sharedInstance](IAPStackshot startTimer:"startTimer:withInfo:" withInfo:@"MediaPlayer::GetPlaybackState", 3.0];
  if ((sub_100036DB4() & 1) == 0)
  {
    sub_1000DDE90(0, @"%s:%s:%d [[MPMusicPlayerController systemMusicPlayer] playbackState] unlikely to work with no systemMusicPlayer. Use media remote playback state instead", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "MusicPlayerState", 4954);
    v5 = [*(a1 + 120) nowPlayingAppPlaybackState];
    *(v8 + 6) = v5;
LABEL_7:
    [+[IAPStackshot sharedInstance](IAPStackshot endTimer:"endTimer:", v3];

    if (*(v8 + 6) < 4u)
    {
      _Block_object_dispose(&v7, 8);
      return;
    }

    goto LABEL_10;
  }

  v4 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100045608;
    block[3] = &unk_1001149D0;
    block[4] = &v7;
    dispatch_sync(v4, block);
    goto LABEL_7;
  }

LABEL_11:
  __break(0x5510u);
}

void sub_1000455EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_100045608(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  if ((result - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1000EB5D0[(result - 1)];
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t sub_100045664(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 395);
    if (v1 >= 2)
    {
      goto LABEL_12;
    }

    if ((v1 & 1) == 0)
    {
      goto LABEL_7;
    }

    v2 = byte_100129625;
    if (byte_100129625 >= 2u)
    {
LABEL_12:
      do
      {
        __break(0x550Au);
LABEL_7:
        v2 = byte_100129624;
      }

      while (byte_100129624 > 1u);
    }

    v3 = v2 ^ 1 | (dword_100129620 != 0);
    sub_1000DDE90(7u, @"MR: cloud tracks hidden = %d", (v2 ^ 1) & 1u | (dword_100129620 != 0));
    return v3 & 1;
  }

  return result;
}

void sub_100045700(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = byte_100129624;
    if (byte_100129624 < 2u)
    {
      byte_100129625 = byte_100129624;
      *(a1 + 395) = a2;
      sub_1000DDE90(7u, @"%s:%s Just froze cloud tracks, __showCloudTracksSettingWhenSettingFrozen=%d, _cloudTracksSettingFrozen=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "FreezeCloudTracksHiddenSetting", v4, a2, v2, v3);
      return;
    }
  }

  __break(0x550Au);
}

id sub_100045774(id *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (v3 = a1, (a1 & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    [a1[15] _resetFakeStreamTrackCount];
    [v3[15] setPodcastAppSelected:0];
    [v3[15] setIBooksAppSelected:0];
    a1 = v3[15];
    a3 = 0;
  }

  return [a1 setITunesUAppSelected:a3];
}

id *sub_1000457DC(id *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (a1 & 7) == 0)
  {
    return sub_10003D3E4(a1, a2, a3);
  }

  __break(0x5516u);
  return a1;
}

id sub_1000457F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (v3 = a1, (a1 & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDE90(7u, @"MR: %s:%d index=%d, call _setFakeStreamTrackIndexForSetCurIndex", "SetFakeStreamTrackIndexForSetCurIndex", 5017, a2);
    a1 = v3[15];
    a3 = a2;
  }

  return [a1 _setFakeStreamTrackIndexForSetCurIndex:a3];
}

id sub_100045868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (v4 = a1, (a1 & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v5 = a3;
    sub_1000DDE90(7u, @"MR: %s:%d index=%d fromPlay=%d, call _setFakeStreamTrackIndex:fromPlay:", "SetFakeStreamTrackIndex", 5024, a2, a3);
    a1 = v4[15];
    a3 = a2;
    a4 = v5;
  }

  return [a1 _setFakeStreamTrackIndex:a3 fromPlay:a4];
}

uint64_t sub_1000458F0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 396) = -1;
  }

  return result;
}

id sub_100045910(id *a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    return [a1[15] notifyExplicitControlOccurred];
  }

  __break(0x5516u);
  return [a1 notifyExplicitControlOccurred];
}

void sub_100045928()
{
  pthread_mutex_lock(&stru_100129648);
  sub_1000187F0(&qword_10012BAD0);
  pthread_mutex_unlock(&stru_100129648);
  sub_1000CA360(0, 3, 0);
  qword_10012BB10 = v0;
  sub_1000CA360(0, 3, 0);
  qword_10012BB18 = v1;
}

void sub_1000459A8(uint64_t a1)
{
  if (a1)
  {
    if ((a1 & 7) == 0)
    {
      v1 = xmmword_1000EB380;
      operator new();
    }
  }

  __break(0x5516u);
}

uint64_t sub_100045A68()
{
  qword_10012BAD0 = &qword_10012BAD0;
  qword_10012BAD8 = &qword_10012BAD0;
  qword_10012BAE0 = 0;
  return __cxa_atexit(sub_1000385F0, &qword_10012BAD0, &_mh_execute_header);
}

uint64_t sub_100045A94()
{
  if (qword_10012BB38 != -1)
  {
    sub_1000E2048();
  }

  return qword_10012BB30;
}

uint64_t sub_100045B40(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10001C4A0(result);
    *v1 = off_100114AD0;
    *(v1 + 96) = 0;
    +[IAPServer sendAudioStateChangedNotification];
    return v1;
  }

  return result;
}

uint64_t sub_100045BC0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_100045C34(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100045BC0(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100045C48(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100045BC0(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_100045CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(a1 + 96) = 1;
    sub_100045CE8(a1, a2, a3, 1);
  }
}

void sub_100045CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    NSLog(@"ERROR - %s:%s - %d need a port", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaVolumeMgr.mm", "SetVolumeMaster", 105);
    return;
  }

  v17 = objc_alloc_init(NSAutoreleasePool);
  if ((*(*a1 + 136))(a1) < a3)
  {
    a3 = (*(*a1 + 136))(a1);
  }

  sub_1000DDE90(8u, @"%s - volume changing from %d to %d, notifyApp=%d", "SetVolumeMaster", dword_10012C668, a3, a4);
  v8 = a3 - dword_10012C668;
  if (a3 <= dword_10012C668)
  {
    v8 = dword_10012C668 - a3;
  }

  if (v8)
  {
    if (a3)
    {
      dword_10012C66C = 0;
    }

    dword_10012C668 = a3;
    v9 = sub_1000C4254();
    if (!v9 || (v9 & 7) != 0)
    {
      goto LABEL_24;
    }

    (*(*v9 + 48))(v9, 512, 0, 0, 0);
  }

  if (a4)
  {
    SBSSpringBoardServerPort();
    SBSetMediaVolume();
    sub_1000DDE90(8u, @"%s - sending IAPAudioVolumeChangedNotification", "SetVolumeMaster");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, IAPAudioVolumeChangedNotification, 0, 0, 0);
    v11 = sub_1000CC7A0();
    if (!v11 || (v11 & 7) != 0)
    {
      goto LABEL_24;
    }

    v12 = (*(*v11 + 104))(v11, a2);
    if (v12)
    {
      v13 = v12;
      v14 = +[EAManager sharedManager];
      *&v15 = dword_10012C668 / 255.0;
      v16 = [NSNumber numberWithFloat:v15];
      if ((v13 & 7) == 0)
      {
        [v14 updateValueFromIap:v16 forPort:kCFAccessoryPortLineOut andPortPorperty:kCFAccessoryPortPropertyVolumeScalar forAccessory:(*(*v13 + 40))(v13)];
        goto LABEL_20;
      }

LABEL_24:
      __break(0x5516u);
      return;
    }
  }

LABEL_20:
}

uint64_t sub_100045FB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 88))(result, a2, a3, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100045FF0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    pthread_once(&stru_100129698, sub_100046038);
    return dword_10012C668;
  }

  return result;
}

void sub_100046038()
{
  SBSSpringBoardServerPort();
  SBGetMediaVolume();
  v0 = 0.0 * 255.0;
  if ((0.0 * 255.0) > -1.0 && v0 < 4295000000.0)
  {
    dword_10012C668 = v0;
    sub_1000DDE90(8u, @"MediaVolumeMgr::InitVolumeOnce %d", v0);
  }

  else
  {
    __break(0x5505u);
  }
}

uint64_t sub_1000460B0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (dword_10012C668)
    {
      v2 = 0;
      dword_10012C66C = dword_10012C668;
      return (*(*result + 88))(result, a2, v2, 0);
    }

    v2 = dword_10012C66C;
    if (dword_10012C66C)
    {
      return (*(*result + 88))(result, a2, v2, 0);
    }
  }

  return result;
}

BOOL sub_100046114(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return dword_10012C668 == 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100046138(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100046150(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 255;
  }

  __break(0x5516u);
  return result;
}

void sub_100046168(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_19;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_19;
  }

  v17 = objc_alloc_init(NSAutoreleasePool);
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_19;
  }

  v8 = a2[89];
  if (v8 >= 2)
  {
    goto LABEL_20;
  }

  if (v8 != a3)
  {
    a2[89] = a3;
    v9 = (*(*a2 + 200))(a2);
    sub_1000DDE90(8u, @"%s - setting legacy volume support %d, port=%hhx(%s)", "SetLegacyVolumeSupport", a3, a2, v9);
    v10 = sub_1000CC7A0();
    if (v10 && (v10 & 7) == 0)
    {
      v11 = (*(*v10 + 96))(v10, a4);
      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = v11;
      v13 = +[EAManager sharedManager];
      v14 = [NSNumber numberWithInt:a3];
      if ((v12 & 7) == 0)
      {
        [v13 updateValueFromIap:v14 forPort:kCFAccessoryPortLineOut andPortPorperty:kCFAccessoryPortPropertyVolumeControlIsSupported forAccessory:(*(*v12 + 40))(v12)];
LABEL_12:
        sub_1000DDE90(8u, @"%s - sending IAPAudioVolumeControlSupportChangedNotification", "SetLegacyVolumeSupport");
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, IAPAudioVolumeControlSupportChangedNotification, 0, 0, 0);
        if (a3)
        {
          v16 = *(a1 + 96);
          if (v16 <= 1)
          {
            if (v16)
            {
              sub_100045CE8(a1, a2, dword_10012C668, 1);
            }

            goto LABEL_16;
          }

LABEL_20:
          __break(0x550Au);
          return;
        }

        goto LABEL_16;
      }
    }

LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

LABEL_16:
}

uint64_t sub_100046384(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 89);
      if (v2 < 2)
      {
        return v2 & 1;
      }

      __break(0x550Au);
LABEL_7:
      NSLog(@"ERROR - %s:%s - %d need a port", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaVolumeMgr.mm", "GetLegacyVolumeSupport", 188);
      LOBYTE(v2) = 0;
      return v2 & 1;
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100046400(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_20;
  }

  v15 = objc_alloc_init(NSAutoreleasePool);
  if (!a3)
  {
    NSLog(@"ERROR - %s:%s - %d couldn't find transport for accID %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaVolumeMgr.mm", "SetVolumeControlSupported", 219, 0);
    goto LABEL_17;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_20;
  }

  v6 = a3[88];
  if (v6 >= 2)
  {
    goto LABEL_21;
  }

  if (v6 != a2)
  {
    a3[88] = a2;
    v7 = (*(*a3 + 200))(a3);
    sub_1000DDE90(8u, @"%s - setting non-legacy volume support %d, port=%hhx(%s)", "SetVolumeControlSupported", a2, a3, v7);
    v8 = sub_1000CC7A0();
    if (v8 && (v8 & 7) == 0)
    {
      v9 = (*(*v8 + 104))(v8, a3);
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v9;
      v11 = +[EAManager sharedManager];
      v12 = [NSNumber numberWithInt:a2];
      if ((v10 & 7) == 0)
      {
        [v11 updateValueFromIap:v12 forPort:kCFAccessoryPortLineOut andPortPorperty:kCFAccessoryPortPropertyVolumeControlIsSupported forAccessory:(*(*v10 + 40))(v10)];
LABEL_12:
        sub_1000DDE90(8u, @"%s - sending IAPAudioVolumeControlSupportChangedNotification", "SetVolumeControlSupported");
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, IAPAudioVolumeControlSupportChangedNotification, 0, 0, 0);
        if (a2)
        {
          v14 = *(a1 + 96);
          if (v14 <= 1)
          {
            if (v14)
            {
              sub_100045CE8(a1, a3, dword_10012C668, 1);
            }

            goto LABEL_17;
          }

LABEL_21:
          __break(0x550Au);
          return;
        }

        goto LABEL_17;
      }
    }

LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

LABEL_17:
}

uint64_t sub_100046644(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    if ((a2 & 7) == 0)
    {
      v4 = *(a2 + 88);
      if (v4 < 2)
      {
        return v4 & 1;
      }

      __break(0x550Au);
LABEL_7:
      NSLog(@"ERROR - %s:%s - %d couldn't find transport for accID %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaVolumeMgr.mm", "IsVolumeControlSupported", 230, 0, v2, v3);
      LOBYTE(v4) = 0;
      return v4 & 1;
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000466C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_19;
  }

  v10 = objc_alloc_init(NSAutoreleasePool);
  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_19;
    }

    if (sub_10000FE6C(a2))
    {
      byte_10012C60C = a3;
      if ([+[IAPGroupedCommandManager sharedManager](IAPGroupedCommandManager "sharedManager")])
      {
        [+[IAPGroupedCommandManager sharedManager](IAPGroupedCommandManager "sharedManager")];
        goto LABEL_14;
      }

      +[IAPServer sendAudioStateChangedNotification];
      v5 = sub_1000CC7A0();
      if (v5 && (v5 & 7) == 0)
      {
        v6 = (*(*v5 + 104))(v5, a2);
        if (!v6)
        {
          goto LABEL_14;
        }

        v7 = v6;
        v8 = +[EAManager sharedManager];
        v9 = [NSNumber numberWithInt:a3];
        if ((v7 & 7) == 0)
        {
          [v8 updateValueFromIap:v9 forPort:kCFAccessoryPortLineOut andPortPorperty:kCFAccessoryPortPropertyIsConnected forAccessory:(*(*v7 + 40))(v7)];
LABEL_14:
          if (byte_10012C60C <= 1u)
          {
            sub_1000DDE90(9u, @"MediaVolumeMgr::SetLineoutEnabled(%d) on port %hhx", byte_10012C60C, a2);
            goto LABEL_16;
          }

LABEL_20:
          __break(0x550Au);
          return;
        }
      }

LABEL_19:
      __break(0x5516u);
      goto LABEL_20;
    }
  }

  NSLog(@"ERROR - %s:%s - %d can only set lineout on a specific port", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaVolumeMgr.mm", "SetLineoutEnabled", 266);
LABEL_16:
}

uint64_t sub_1000468AC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    if ((a2 & 7) == 0)
    {
      v2 = byte_10012C60C;
      if (byte_10012C60C < 2u)
      {
        return v2 & 1;
      }

      __break(0x550Au);
LABEL_7:
      NSLog(@"ERROR - %s:%s - %d need a port", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaVolumeMgr.mm", "GetLineoutEnabled", 277);
      v2 = 0;
      return v2 & 1;
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100046930(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDE90(8u, @"MediaVolumeMgr::SetVolumeAsUninitialized");
    *(a1 + 96) = 0;
  }
}

uint64_t sub_1000469D4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = IOServiceMatching("IODPController");
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionaryAddValue(Mutable, @"Location", @"External");
      CFDictionaryAddValue(v1, @"IOPropertyMatch", v3);
      CFRelease(v3);
    }

    return IOServiceGetMatchingService(kIOMasterPortDefault, v1);
  }

  return result;
}

uint64_t sub_100046A8C()
{
  if (qword_10012BB58 != -1)
  {
    sub_1000E2070();
  }

  return qword_10012BB50;
}

uint64_t sub_100046B38(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100114C10;
    *(result + 16) = 0;
    *(result + 8) = result + 16;
    *(result + 24) = 0;
    pthread_mutex_init((result + 32), 0);
    return v1;
  }

  return result;
}

uint64_t sub_100046BBC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100114C10;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_100046C30(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100046BBC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100046C44(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100046BBC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100046CC4(uint64_t result, unint64_t a2)
{
  v3 = a2;
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 32));
    sub_10001C6E0((v2 + 8), &v3);
    pthread_mutex_unlock((v2 + 32));
    return 1;
  }

  return result;
}

BOOL sub_100046D20(_BOOL8 result, uint64_t a2)
{
  v4 = a2;
  if (!result || (v2 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 32));
    v3 = sub_10001C900(v2 + 8, &v4);
    if (v2 + 16 != v3)
    {
      sub_1000083F0((v2 + 8), v3);
    }

    pthread_mutex_unlock((v2 + 32));
    return v2 + 16 != v3;
  }

  return result;
}

uint64_t *sub_100046DA8(uint64_t *result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 4));
    v4 = v2[1];
    v6 = v4;
    while (v4 != v2 + 2)
    {
      if (!v4 || (v4 & 7) != 0)
      {
        goto LABEL_14;
      }

      result = *(v4 + 32);
      if (!result || (*(v4 + 32) & 7) != 0)
      {
        goto LABEL_14;
      }

      (**result)(result, a2);
      result = sub_100007D44(&v6);
      v4 = v6;
    }

    return pthread_mutex_unlock((v2 + 4));
  }

  return result;
}

uint64_t sub_100046E68(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = MGCopyAnswer();
    v3 = [v2 isEqualToString:@"iPad"];

    if (v3)
    {
      v4 = 23933;
    }

    else
    {
      v4 = 23933;
      if (((*(*v1 + 160))(v1) & 1) == 0)
      {
        if ((*(*v1 + 168))(v1))
        {
          v4 = 23933;
        }

        else
        {
          v4 = 24445;
        }
      }
    }

    if ((*(*v1 + 176))(v1))
    {
      return v4 | 0x2000;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

id sub_100046F6C()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"iPad"];

  return v1;
}

uint64_t sub_100046FB4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100046FCC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100046FE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100046FFC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047014(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 176))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047048(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 88))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004707C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100047120;
    block[3] = &unk_100111CF8;
    block[4] = result;
    if (qword_10012BB60 != -1)
    {
      dispatch_once(&qword_10012BB60, block);
    }

    return byte_10012BB68 & 1;
  }

  return result;
}

uint64_t sub_100047120(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = (*(*v1 + 160))(v1);
  if ((result & 1) != 0 || (result = (*(*v1 + 168))(v1), result))
  {
    byte_10012BB68 = 0;
  }

  else
  {
    v3 = sub_1000469D4(v1);
    byte_10012BB68 = v3 != 0;

    return IOObjectRelease(v3);
  }

  return result;
}

uint64_t sub_1000471D4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000471EC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047204(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004721C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047234(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004724C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return MGGetBoolAnswer();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047268(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return MGGetBoolAnswer();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047284()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"Watch"];

  if (v1)
  {
    return 4;
  }

  v3 = MGCopyAnswer();
  v4 = [v3 isEqualToString:@"iPod"];

  if (v4)
  {
    return 2;
  }

  v5 = MGCopyAnswer();
  v6 = [v5 isEqualToString:@"iPad"];

  if (v6)
  {
    return 3;
  }

  v7 = MGCopyAnswer();
  v8 = [v7 isEqualToString:@"iPhone"];

  if (v8)
  {
    return 1;
  }

  v9 = MGCopyAnswer();
  v10 = [v9 isEqualToString:@"AppleTV"];

  if (v10)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000473B0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if ((*(*result + 160))(result))
  {
    return 0;
  }

  else
  {
    return (*(*v1 + 168))(v1) ^ 1;
  }

  return result;
}

uint64_t sub_100047440(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047458(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = (*(*result + 160))(result);
  if ((result & 1) == 0)
  {
    result = (*(*v2 + 168))(v2);
    if (!result)
    {
      return 1;
    }
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
  }

  else
  {
    return ((*(*a2 + 264))(a2) & 1) != 0 || (*(*a2 + 208))(a2) == 1;
  }

  return result;
}

uint64_t sub_100047560(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047578(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100047590(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000475A8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000475C0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000475D8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return MGGetBoolAnswer();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000475F4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return MGGetBoolAnswer();
  }

  __break(0x5516u);
  return result;
}

id sub_100047610(id result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    return [result supportsUltraHighPowerMode];
  }

  result = [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (result)
  {

    return [result supportsUltraHighPowerMode];
  }

  return result;
}

id sub_10004766C(id result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    return [result supportsPowerModeOnAcrossSleep];
  }

  result = [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (result)
  {

    return [result supportsPowerModeOnAcrossSleep];
  }

  return result;
}

uint64_t sub_1000476C8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return MGGetBoolAnswer();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000476E4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

void sub_1000476FC()
{
  v0 = qword_10012BB70;
  if (qword_10012BB70)
  {
    goto LABEL_4;
  }

  v1 = objc_alloc_init(NSAutoreleasePool);
  v2 = [objc_msgSend(objc_msgSend(CPSharedResourcesDirectory() stringByAppendingPathComponent:{@"Media", "stringByAppendingPathComponent:", @"iTunes_Control", "stringByAppendingPathComponent:", @"Device"}];
  v3 = [v2 lengthOfBytesUsingEncoding:4];
  v4 = v3 + 1;
  if (v3 != -1)
  {
    qword_10012BB70 = malloc_type_malloc((v3 + 1), 0x100004077774924uLL);
    [v2 getCString:qword_10012BB70 maxLength:v4 encoding:4];

    v0 = qword_10012BB70;
LABEL_4:
    qword_10012C670 = v0;
    return;
  }

  __break(0x5500u);
}

void sub_100047814(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9)
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PretendAccessoryType", @"com.apple.iapd", 0);
  v17 = CFPreferencesGetAppIntegerValue(@"PretendAccessoryType", @"com.apple.iapd", 0);
  if (v17 == 1)
  {
    v18 = 1;
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_6;
    }

    v17 = 0;
    v18 = 0;
  }

  sub_1000DDE90(0, @"RequiresChargingCurrentLimit: pretendAccessoryType=%d, override isApple=%d -> %d", AppIntegerValue, v17, a5);
  a5 = v18;
LABEL_6:
  v67[0] = @"productTypeContain";
  v67[1] = @"productTypeEqualGreater";
  v68[0] = @"iPhone";
  v68[1] = @"iPhone10,1";
  v67[2] = @"nameMatch";
  v67[3] = @"modelMatch";
  v68[2] = @"BMW NBT";
  v68[3] = @"B069 C2";
  v67[4] = @"manufacturerMatch";
  v67[5] = @"overrideCurrentLimit";
  v68[4] = @"HarmanBecker";
  v68[5] = &off_1001215C0;
  v69 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:6];
  obj = [NSArray arrayWithObjects:&v69 count:1];
  v19 = CFPreferencesGetAppIntegerValue(@"ChargingPowerOverride", @"com.apple.iapd", 0);
  v20 = CFPreferencesGetAppIntegerValue(@"ChargingPowerBehavior", @"com.apple.iapd", 0);
  v21 = CFPreferencesGetAppIntegerValue(@"PretendBatteryLevel", @"com.apple.iapd", 0);
  if (a1)
  {
    v25 = 0;
    v29 = a9;
    v28 = a8;
    v22 = a8;
    goto LABEL_96;
  }

  if (v21 <= 0)
  {
    v22 = a8;
  }

  else
  {
    v22 = v21;
  }

  if ((v20 - 3) >= 6)
  {
    v23 = 45;
    if (v20 == 1)
    {
      v24 = 0;
      goto LABEL_13;
    }

    if (v20 == 2)
    {
      v24 = 1;
      v23 = 45;
      goto LABEL_13;
    }
  }

  else
  {
    v23 = (10 * v20 - 5);
  }

  v24 = 1;
LABEL_13:
  v53 = v23;
  NSLog(@"RequiresChargingCurrentLimit: isApple=%d deviceType=%d checkChargingCurrentLimit=%d chargingCurrentLimit=%d inLimit=%d behavior=%d batteryThreshold=%d", a5, a6, v24, v19, a7, v20, v23);
  if (!v24)
  {
    goto LABEL_100;
  }

  v25 = 0;
  v27 = v19 > 0 && v19 < a7;
  if ((v19 & 0x80000000) != 0 || v27)
  {
    v29 = a9;
    v28 = a8;
LABEL_76:
    v47 = v29 != 0;
    if (v29 && v27)
    {
      if (WORD1(v19))
      {
        goto LABEL_104;
      }

      if (v29)
      {
        goto LABEL_103;
      }

      *v29 = v19;
      v47 = 1;
      v27 = 1;
    }

    if (!v25)
    {
      goto LABEL_83;
    }

LABEL_82:

    goto LABEL_83;
  }

  if (!a2 && !a3 && !a4)
  {
LABEL_100:
    v25 = 0;
    v29 = a9;
    v28 = a8;
    goto LABEL_96;
  }

  if (!a2)
  {
    v61 = 0;
    if (a3)
    {
      goto LABEL_27;
    }

LABEL_29:
    v60 = 0;
    goto LABEL_30;
  }

  v61 = [NSString stringWithUTF8String:a2];
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_27:
  v60 = [NSString stringWithUTF8String:a3];
LABEL_30:
  v28 = a8;
  if (a4)
  {
    v59 = [NSString stringWithUTF8String:a4];
  }

  else
  {
    v59 = 0;
  }

  v29 = a9;
  v58 = MGCopyAnswer();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v57 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v57)
  {
    goto LABEL_63;
  }

  v50 = v19;
  v51 = v22;
  v52 = a5;
  v56 = *v63;
  while (2)
  {
    for (i = 0; i != v57; i = i + 1)
    {
      if (*v63 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v62 + 1) + 8 * i);
      v32 = [v31 objectForKey:@"nameMatch"];
      v33 = [v31 objectForKey:@"nameContain"];
      v34 = (v32 | v33) == 0;
      if (v61)
      {
        if (v32)
        {
          v35 = [(NSString *)v61 isEqualToString:v32];
        }

        else
        {
          if (!v33)
          {
            goto LABEL_44;
          }

          v35 = [(NSString *)v61 containsString:v33];
        }

        v34 = v35;
      }

LABEL_44:
      v36 = [v31 objectForKey:@"modelMatch"];
      v37 = [v31 objectForKey:@"modelContain"];
      v38 = (v36 | v37) == 0;
      if (!v60)
      {
        goto LABEL_50;
      }

      if (v36)
      {
        v39 = [(NSString *)v60 isEqualToString:v36];
      }

      else
      {
        if (!v37)
        {
          goto LABEL_50;
        }

        v39 = [(NSString *)v60 containsString:v37];
      }

      v38 = v39;
LABEL_50:
      v40 = [v31 objectForKey:@"manufacturerMatch"];
      v41 = [v31 objectForKey:@"manufacturerContain"];
      v42 = (v40 | v41) == 0;
      if (v59)
      {
        if (v40)
        {
          v43 = [(NSString *)v59 isEqualToString:v40];
LABEL_55:
          v42 = v43;
          goto LABEL_56;
        }

        if (v41)
        {
          v43 = [(NSString *)v59 containsString:v41];
          goto LABEL_55;
        }
      }

LABEL_56:
      v44 = sub_100047F08(v58, [v31 objectForKey:@"productTypeMatch"], objc_msgSend(v31, "objectForKey:", @"productTypeContain"), objc_msgSend(v31, "objectForKey:", @"productTypeEqualLesser"), objc_msgSend(v31, "objectForKey:", @"productTypeLesser"), objc_msgSend(v31, "objectForKey:", @"productTypeEqualGreater"), objc_msgSend(v31, "objectForKey:", @"productTypeGreater"));
      if (v34 && v38 && v42 && v44)
      {
        v19 = [objc_msgSend(v31 objectForKey:{@"overrideCurrentLimit", "intValue"}];
        v29 = a9;
        v28 = a8;
        v22 = v51;
        a5 = v52;
        goto LABEL_63;
      }
    }

    v57 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v57)
    {
      continue;
    }

    break;
  }

  v29 = a9;
  v28 = a8;
  v22 = v51;
  a5 = v52;
  v19 = v50;
LABEL_63:
  sub_1000DDE90(0, @"RequiresChargingCurrentLimit: isApple=%d deviceType=%d chargingCurrentLimit=%d inLimit=%d battery=%d threshold=%d", a5, a6, v19, a7, v22, v53);
  if (a6 == 3 || v22 < v53)
  {
    v46 = 1;
  }

  else
  {
    v46 = a5;
  }

  if ((v46 & 1) == 0)
  {
    v25 = v58;
    if (a7 > 0x5DC || v19 >= 1501)
    {
      if (v19 >= 1500)
      {
        v49 = 1500;
      }

      else
      {
        v49 = v19;
      }

      if (v19)
      {
        LODWORD(v19) = v49;
        if (!v49)
        {
          goto LABEL_96;
        }
      }

      else
      {
        LODWORD(v19) = 1500;
      }
    }

    else if (!v19)
    {
      goto LABEL_96;
    }

    goto LABEL_75;
  }

  v25 = v58;
  if (v19)
  {
LABEL_75:
    v27 = v19 < a7;
    goto LABEL_76;
  }

LABEL_96:
  v27 = 0;
  v47 = v29 != 0;
  if (v25)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v47)
  {
    if ((v29 & 1) == 0)
    {
      v48 = *v29;
      goto LABEL_87;
    }

LABEL_103:
    __break(0x5516u);
LABEL_104:
    __break(0x5507u);
  }

  else
  {
    v48 = 0xFFFFFFFFLL;
LABEL_87:
    NSLog(@"RequiresChargingCurrentLimit: isApple=%d deviceType=%d batt=%d(%d) %d->%d, return %d", a5, a6, v28, v22, a7, v48, v27);
  }
}

BOOL sub_100047F08(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v7 = (a2 | a3 | a4 | a5 | a6 | a7) == 0;
  if (a1)
  {
    if (a2)
    {
      v7 = [a1 isEqualToString:a2];
      goto LABEL_4;
    }

    if (!a3)
    {
LABEL_4:
      if (a4)
      {
        v13 = [a1 length];
        if (v13 == [a4 length])
        {
          v14 = [a1 compare:a4] + 1 >= 2;
        }

        else
        {
          v15 = [a1 length];
          v14 = v15 >= [a4 length];
        }

        v7 = !v14;
      }

      if (a5)
      {
        v16 = [a1 length];
        if (v16 != [a5 length])
        {
          v17 = [a1 length];
          v7 = v17 < [a5 length];
          if (!a6)
          {
            goto LABEL_25;
          }

LABEL_23:
          v18 = [a1 length];
          if (v18 != [a6 length])
          {
            v19 = [a1 length];
            v7 = v19 > [a6 length];
            if (!a7)
            {
              return v7;
            }

            goto LABEL_28;
          }

          v7 = [a1 compare:a6] < 2;
LABEL_25:
          if (!a7)
          {
            return v7;
          }

LABEL_28:
          v20 = [a1 length];
          if (v20 == [a7 length])
          {
            return [a1 compare:a7] == 1;
          }

          v21 = [a1 length];
          return v21 > [a7 length];
        }

        v7 = [a1 compare:a5] == -1;
      }

      if (!a6)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v7 = [a1 containsString:?];
    if (a4 || a5 || a6 || a7)
    {
      v7 = v7 & sub_100047F08(a1, 0, 0, a4, a5, a6, a7);
      goto LABEL_4;
    }
  }

  return v7;
}

void *sub_100048198(void *result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    __break(0x5500u);
    __break(0x5515u);
  }

  else
  {
    *result = off_100114D58;
    result[1] = 0;
    *(result + 14) = 0;
    v4 = objc_alloc_init(NSAutoreleasePool);
    if (a2 != -1)
    {
      v5 = +[MPMediaQuery playlistsQuery];
      if (v5)
      {
        if ([(MPMediaQuery *)v5 collections])
        {
          sub_10002FA5C();
        }
      }
    }

    return v2;
  }

  return result;
}

uint64_t sub_10004834C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100114D58;

    *(v1 + 8) = 0;
    return v1;
  }

  return result;
}

uint64_t sub_1000483A8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      *result = off_100114D58;

      *(v1 + 8) = 0;

      operator delete();
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_100048448(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8) != 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048468(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return ([objc_msgSend(*(result + 8) valueForProperty:{MPMediaPlaylistPropertyPlaylistAttributes), "intValue"}] >> 2) & 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000484A8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 20);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000484D0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 21);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000484F8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048510(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048528(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    return result;
  }

  if (*a2)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
LABEL_7:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100048560(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048578(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048590(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000485A8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000485C0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000485D8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000485F0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048608(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048620()
{
  if (qword_10012BB80 != -1)
  {
    sub_1000E2084();
  }

  return qword_10012BB78;
}

uint64_t sub_1000486CC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10001C4A0(result);
    *v1 = off_100114E28;
    *(v1 + 104) = 0;
    *(v1 + 96) = v1 + 104;
    *(v1 + 112) = 0;
    pthread_mutex_init((v1 + 120), 0);
    if ((byte_10012BB88 & 1) == 0)
    {
      *(v1 + 184) = IONotificationPortCreate(kIOMasterPortDefault);
      Main = CFRunLoopGetMain();
      RunLoopSource = IONotificationPortGetRunLoopSource(*(v1 + 184));
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v1, sub_100048894, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v5 = *(v1 + 184);
      v6 = IOServiceMatching("IOPMPowerSource");
      IOServiceAddMatchingNotification(v5, "IOServiceFirstMatch", v6, sub_1000488A8, (v1 + 184), (v1 + 192));
      sub_1000488A8((v1 + 184), *(v1 + 192));
      byte_10012BB88 = 1;
      v7 = *v1;
      if (byte_10012BB89)
      {
        v8 = (v7 + 176);
      }

      else
      {
        v8 = (v7 + 184);
      }

      (*v8)(v1, 0);
    }

    return v1;
  }

  return result;
}

void sub_100048874(_Unwind_Exception *a1)
{
  sub_1000089F8(v2);
  sub_100048954(v1);
  _Unwind_Resume(a1);
}

IONotificationPort **sub_1000488A8(IONotificationPort **result, io_iterator_t iterator)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *result;
    notification = -1431655766;
    result = IOIteratorNext(iterator);
    if (result)
    {
      v4 = result;
      do
      {
        sub_10004A640(v4);
        IOServiceAddInterestNotification(v3, v4, "IOGeneralInterest", sub_10004AA00, 0, &notification);
        IOObjectRelease(v4);
        result = IOIteratorNext(iterator);
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_100048954(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_1000489C8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100114E28;
    if (byte_10012BB88 == 1)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v1, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0);
      Main = CFRunLoopGetMain();
      RunLoopSource = IONotificationPortGetRunLoopSource(*(v1 + 184));
      CFRunLoopRemoveSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      IONotificationPortDestroy(*(v1 + 184));
    }

    pthread_mutex_destroy((v1 + 120));
    sub_1000089F8(v1 + 96);

    return sub_100048954(v1);
  }

  return result;
}

void sub_100048A90(_Unwind_Exception *a1)
{
  sub_1000089F8(v1 + 96);
  sub_100048954(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100048AB0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000489C8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048AC4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000489C8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100048B44(uint64_t result, unint64_t a2)
{
  v3 = a2;
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 120));
    sub_10001C6E0((v2 + 96), &v3);
    pthread_mutex_unlock((v2 + 120));
    return 1;
  }

  return result;
}

BOOL sub_100048BA0(_BOOL8 result, uint64_t a2)
{
  v4 = a2;
  if (!result || (v2 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 120));
    v3 = sub_10001C900(v2 + 96, &v4);
    if (v2 + 104 != v3)
    {
      sub_1000083F0((v2 + 96), v3);
    }

    pthread_mutex_unlock((v2 + 120));
    return v2 + 104 != v3;
  }

  return result;
}

uint64_t *sub_100048C28(uint64_t *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_19:
    __break(0x5516u);
    return result;
  }

  result = pthread_mutex_lock((result + 15));
  v2 = v1[12];
  v6 = v2;
  if (v2 != v1 + 13)
  {
    while (v2 && (v2 & 7) == 0)
    {
      result = *(v2 + 32);
      if (!result || (*(v2 + 32) & 7) != 0)
      {
        break;
      }

      v4 = (**result)(result, 0);
      result = sub_100007D44(&v6);
      v2 = v6;
      if (v4)
      {
        v5 = v6 == v1 + 13;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  v4 = 1;
LABEL_18:
  pthread_mutex_unlock((v1 + 15));
  return v4;
}

uint64_t *sub_100048CFC(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result = pthread_mutex_lock((result + 15));
      v2 = v1[12];
      v4 = v2;
      v3 = 1;
      if (v2 == v1 + 13)
      {
LABEL_11:
        pthread_mutex_unlock((v1 + 15));
        return (v3 & 1);
      }

      while (v2 && (v2 & 7) == 0)
      {
        result = *(v2 + 32);
        if (result)
        {
          if ((result & 7) != 0)
          {
            break;
          }

          v3 &= (*(*result + 8))(result);
        }

        else
        {
          NSLog(@"ERROR - Power listener is NULL");
        }

        result = sub_100007D44(&v4);
        v2 = v4;
        if (v4 == v1 + 13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_100048DD4(uint64_t *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 15));
    v2 = v1[12];
    v5 = v2;
    v3 = 1;
    while (v2 != v1 + 13)
    {
      if (!v2 || (v2 & 7) != 0)
      {
        goto LABEL_14;
      }

      result = *(v2 + 32);
      if (!result || (*(v2 + 32) & 7) != 0)
      {
        goto LABEL_14;
      }

      v3 = v3 & (*(*result + 16))(result);
      result = sub_100007D44(&v5);
      v2 = v5;
    }

    pthread_mutex_unlock((v1 + 15));
    return v3;
  }

  return result;
}

uint64_t *sub_100048E98(uint64_t *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 15));
    v2 = v1[12];
    v5 = v2;
    v3 = 1;
    while (v2 != v1 + 13)
    {
      if (!v2 || (v2 & 7) != 0)
      {
        goto LABEL_14;
      }

      result = *(v2 + 32);
      if (!result || (*(v2 + 32) & 7) != 0)
      {
        goto LABEL_14;
      }

      v3 = v3 & (*(*result + 24))(result);
      result = sub_100007D44(&v5);
      v2 = v5;
    }

    pthread_mutex_unlock((v1 + 15));
    return v3;
  }

  return result;
}

uint64_t *sub_100048F5C(uint64_t *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 15));
    v2 = v1[12];
    v5 = v2;
    v3 = 1;
    while (v2 != v1 + 13)
    {
      if (!v2 || (v2 & 7) != 0)
      {
        goto LABEL_14;
      }

      result = *(v2 + 32);
      if (!result || (*(v2 + 32) & 7) != 0)
      {
        goto LABEL_14;
      }

      v3 = v3 & (*(*result + 32))(result);
      result = sub_100007D44(&v5);
      v2 = v5;
    }

    pthread_mutex_unlock((v1 + 15));
    return v3;
  }

  return result;
}

uint64_t sub_100049020(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_14;
  }

  if (a3 >= 4)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  sub_1000DDE90(0xAu, @"acc power changed to %d state for dock (%hhx)", a3, a2);
  pthread_mutex_lock(&stru_1001296A8);
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  }

  pthread_mutex_unlock(&stru_1001296A8);
  return v6;
}

id sub_1000490CC(id result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    pthread_mutex_lock(&stru_1001296A8);
    if (a2)
    {
      v3 = [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
      if (v3)
      {
        v4 = [v3 accessoryPowerState];
        pthread_mutex_unlock(&stru_1001296A8);
        if (v4 < 4)
        {
          return v4;
        }

        __break(0x550Au);
      }
    }

    pthread_mutex_unlock(&stru_1001296A8);
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_100049158(uint64_t *result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 15));
    v4 = v2[12];
    v6 = v4;
    while (v4 != v2 + 13)
    {
      if (!v4 || (v4 & 7) != 0)
      {
        goto LABEL_14;
      }

      result = *(v4 + 32);
      if (!result || (*(v4 + 32) & 7) != 0)
      {
        goto LABEL_14;
      }

      (*(*result + 40))(result, a2);
      result = sub_100007D44(&v6);
      v4 = v6;
    }

    return pthread_mutex_unlock((v2 + 15));
  }

  return result;
}

uint64_t *sub_100049218(uint64_t *result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 15));
    v4 = v2[12];
    v6 = v4;
    while (v4 != v2 + 13)
    {
      if (!v4 || (v4 & 7) != 0)
      {
        goto LABEL_14;
      }

      result = *(v4 + 32);
      if (!result || (*(v4 + 32) & 7) != 0)
      {
        goto LABEL_14;
      }

      (*(*result + 48))(result, a2);
      result = sub_100007D44(&v6);
      v4 = v6;
    }

    return pthread_mutex_unlock((v2 + 15));
  }

  return result;
}

id sub_1000492D8(id result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    return [result setAccessoryPowerModeOnDuringSleep:a3];
  }

  if (a2)
  {
    v3 = a3;
    result = [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
    if (result)
    {
      a3 = v3;

      return [result setAccessoryPowerModeOnDuringSleep:a3];
    }
  }

  return result;
}

id sub_100049348(id a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    a1 = [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
    if (!a1)
    {
      return 0;
    }
  }

  return [a1 accessoryPowerModeOnDuringSleep];
}

uint64_t sub_1000493B4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDE90(0xAu, @"IsPowerConnected: __isOnAC = %d", byte_10012BB89 & 1);
    return byte_10012BB89 & 1;
  }

  return result;
}

uint64_t sub_100049410(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v1 = sub_10000C0EC();
    result = pthread_mutex_lock(&stru_10012B758);
    v2 = *(v1 + 8);
    v3 = v2 != v1;
    if (v2 == v1)
    {
LABEL_23:
      pthread_mutex_unlock(&stru_10012B758);
      return v3;
    }

    while (v2 && (v2 & 7) == 0)
    {
      result = *(v2 + 16);
      if (!result || (*(v2 + 16) & 7) != 0)
      {
        break;
      }

      result = (*(*result + 208))(result);
      if (!result)
      {
        result = sub_1000CC7A0();
        if (!result || (result & 7) != 0)
        {
          break;
        }

        result = (*(*result + 104))(result, *(v2 + 16));
        if (result)
        {
          if ((result & 7) != 0)
          {
            break;
          }

          result = (*(*result + 24))(result);
          if (result == 11)
          {
            if (dword_10012BB8C == 0x4000)
            {
              if (byte_10012BB89)
              {
                goto LABEL_23;
              }
            }

            else if (dword_10012BB8C == 0x8000)
            {
              goto LABEL_23;
            }
          }
        }
      }

      v2 = *(v2 + 8);
      v3 = v2 != v1;
      if (v2 == v1)
      {
        goto LABEL_23;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100049574(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v1 = sub_10000C0EC();
    result = pthread_mutex_lock(&stru_10012B758);
    v2 = *(v1 + 8);
    v3 = v2 != v1;
    if (v2 == v1)
    {
LABEL_21:
      pthread_mutex_unlock(&stru_10012B758);
      return v3;
    }

    while (v2 && (v2 & 7) == 0)
    {
      result = *(v2 + 16);
      if (!result || (*(v2 + 16) & 7) != 0)
      {
        break;
      }

      result = (*(*result + 208))(result);
      if (!result)
      {
        result = sub_1000CC7A0();
        if (!result || (result & 7) != 0)
        {
          break;
        }

        result = (*(*result + 104))(result, *(v2 + 16));
        if (result)
        {
          if ((result & 7) != 0)
          {
            break;
          }

          result = (*(*result + 24))(result);
          if (result == 11 && dword_10012BB8C == 0x4000 && (byte_10012BB89 & 1) != 0)
          {
            goto LABEL_21;
          }
        }
      }

      v2 = *(v2 + 8);
      v3 = v2 != v1;
      if (v2 == v1)
      {
        goto LABEL_21;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000496CC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDE90(0xAu, @"GetBatteryLevel: __batteryCapacity/Override = %d / %d", dword_10012BB90, dword_10012BB94);
    if (dword_10012BB94)
    {
      return dword_10012BB94;
    }

    else
    {
      return dword_10012BB90;
    }
  }

  return result;
}

uint64_t sub_100049734(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDE90(0xAu, @"GetBatteryLevelMax: __batteryCapacity/Override = %d / %d, max = %d / %d", dword_10012BB90, dword_10012BB94, 100, dword_10012BB98);
    if (dword_10012BB94)
    {
      return 100;
    }

    else
    {
      return dword_10012BB98;
    }
  }

  return result;
}

uint64_t sub_1000497B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = byte_10012BB9C & 1;
      v3 = dword_10012BB94;
      v4 = (*(*result + 232))(result);
      v5 = (*(*v1 + 240))(v1);
      sub_1000DDE90(0xAu, @"GetChargingState: __isBatteryCharging =%d, __batteryCapacityOverride = %d, batteryLevel = %d / %d", v2, v3, v4, v5);
      if ((byte_10012BB9C & 1) != 0 && !dword_10012BB94)
      {
        goto LABEL_5;
      }

      if ((byte_10012BB89 & 1) == 0)
      {
        goto LABEL_15;
      }

      v7 = (*(*v1 + 232))(v1);
      if (v7 < (*(*v1 + 240))(v1))
      {
LABEL_5:
        v6 = 1;
        sub_1000DDE90(0xAu, @"GetChargingState: kChargerCharging");
        return v6;
      }

      if (byte_10012BB89)
      {
        v8 = (*(*v1 + 232))(v1);
        v9 = (*(*v1 + 240))(v1);
        if (v8 == v9)
        {
          v10 = @"GetChargingState: kChargerCharged";
        }

        else
        {
          v10 = @"GetChargingState: kChargerTrickle";
        }

        if (v8 == v9)
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
LABEL_15:
        v6 = 0;
        v10 = @"GetChargingState: kChargerDisabled";
      }

      sub_1000DDE90(0xAu, &v10->isa);
      return v6;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004999C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100046F6C() ^ 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000499C8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  result = (*(*result + 160))(result);
  if (result)
  {
    v3 = 500;
  }

  else
  {
    v3 = 300;
  }

  if (!a2)
  {
    result = [NSNumber alloc];
    goto LABEL_15;
  }

  if ((a2 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v4 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v5 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (!v5)
  {
LABEL_13:

    return v3;
  }

  result = [v5 ultraHighPowerModeCurrentLimit];
  if (!WORD1(result))
  {
    v3 = result;
    goto LABEL_13;
  }

LABEL_16:
  __break(0x5507u);
  return result;
}

void sub_100049AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    v5 = [NSNumber alloc];
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return;
  }

  v6 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v4 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (v4)
  {
    [v4 setAvailableCurrentFromAccInMa:a3];
  }
}

id sub_100049B48(id result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    result = [NSNumber alloc];
    goto LABEL_10;
  }

  if ((a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  v2 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v3 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (v3)
  {
    v4 = [v3 availableCurrentFromAccInMa];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100049BDC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    v3 = [NSNumber alloc];
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return;
  }

  v4 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v2 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (v2)
  {
    [v2 restoreAvailableCurrentFromAcc];
  }
}

void sub_100049C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_35;
  }

  v12 = (*(*a2 + 224))(a2);
  v13 = (*(*a1 + 296))(a1, a2);
  if (a3 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= 0x10000)
  {
    goto LABEL_36;
  }

  v15 = v13;
  v27 = v14;
  v16 = (*(*a1 + 232))(a1);
  v17 = (*(*a1 + 240))(a1);
  if (!v17 || v16 > v17)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v20 = 100 * v16;
    if ((v20 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_38:
      __break(0x550Cu);
      return;
    }

    v19 = v20 / v17;
    if (v20 / v17 > 0xFF)
    {
      goto LABEL_36;
    }
  }

  v21 = sub_100047284();
  v22 = sub_1000C4254();
  if (!v22 || (v22 & 7) != 0)
  {
    goto LABEL_35;
  }

  v23 = sub_10005A468(v22, a2);
  if (v21 >= 8)
  {
LABEL_37:
    __break(0x550Au);
    goto LABEL_38;
  }

  sub_100047814(v12, a4, a5, a6, v23, v21, v14, v19, &v27);
  if (v27 == v15)
  {
    return;
  }

  v24 = "(nil)";
  if (a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = "(nil)";
  }

  if (a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = "(nil)";
  }

  if (a6)
  {
    v24 = a6;
  }

  sub_1000DDE90(0xAu, @"CheckAndLimitChargingAtStart: override chargingCurrent %d -> %d for %s / %s / %s", v14, v27, v25, v26, v24);
  if (qword_10012BB80 != -1)
  {
    sub_1000E2098();
  }

  if (!qword_10012BB78 || (qword_10012BB78 & 7) != 0)
  {
LABEL_35:
    __break(0x5516u);
LABEL_36:
    __break(0x5507u);
    goto LABEL_37;
  }

  (*(*qword_10012BB78 + 288))();
}

void sub_100049EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    v5 = [NSNumber alloc];
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return;
  }

  v6 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v4 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (v4)
  {
    [v4 setReserveCurrentForAccInMa:a3];
  }
}

id sub_100049F9C(id result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    result = [NSNumber alloc];
    goto LABEL_10;
  }

  if ((a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  v2 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v3 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (v3)
  {
    v4 = [v3 reserveCurrentForAccInMa];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10004A030(id a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    a1 = [NSNumber alloc];
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
_objc_msgSend$setInternalBatteryChargingState_:
    [a1 setInternalBatteryChargingState:a3];
    return;
  }

  v3 = a3;
  v4 = [[NSNumber alloc] initWithInt:(*(*a2 + 56))(a2)];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];

    if (v6)
    {
      a1 = v6;
      a3 = v3;

      goto _objc_msgSend$setInternalBatteryChargingState_;
    }
  }
}

id sub_10004A11C(id a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    a1 = [NSNumber alloc];
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    return [a1 internalBatteryChargingState];
  }

  v2 = [[NSNumber alloc] initWithInt:(*(*a2 + 56))(a2)];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];

  if (!v4)
  {
    return 0;
  }

  a1 = v4;

  return [a1 internalBatteryChargingState];
}

void sub_10004A1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    v5 = [NSNumber alloc];
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return;
  }

  v6 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v4 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (v4)
  {
    [v4 setMaxInputCurrentFromAccInMa:a3];
  }
}

id sub_10004A29C(id result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    result = [NSNumber alloc];
    goto LABEL_10;
  }

  if ((a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  v2 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v3 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
  if (v3)
  {
    v4 = [v3 maxInputCurrentFromAccInMa];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10004A330(id result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = a2 / 0x3E8uLL;
    v3 = +[IAPServer sharedIAPServer];

    return [v3 preventIdleSleep:v2];
  }

  return result;
}

uint64_t sub_10004A38C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004A3A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 64))(result, 1048577, 0, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004A3E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 64))(result, 1048578, 0, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004A430(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 64))(result, 1048579, 0, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004A478(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 64))(result, 1048580, 0, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004A4C0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = (*(*result + 232))(result);
    v3 = (*(*v1 + 240))(v1);
    v4 = *(*v1 + 64);

    return v4(v1, 1048583, 0, v2, v3);
  }

  return result;
}

uint64_t sub_10004A58C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 45;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004A5A4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

void sub_10004A5B8(id a1)
{
  v1 = dword_10012BB94;
  v2 = sub_1000477E8();
  NSLog(@"Logging preferences changed! (pretendBatteryLevel): %d -> %d", v1, v2);
  dword_10012BB94 = sub_1000477E8();
  if (qword_10012BB80 != -1)
  {
    sub_1000E2084();
  }

  v3 = qword_10012BB78;
  if (!qword_10012BB78 || (qword_10012BB78 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    sub_10004A4C0(v3);
  }
}

void sub_10004A640(io_registry_entry_t a1)
{
  properties = 0;
  v2 = objc_alloc_init(NSAutoreleasePool);
  if (IORegistryEntryCreateCFProperties(a1, &properties, 0, 0))
  {
    goto LABEL_41;
  }

  dword_10012BB90 = [-[__CFDictionary objectForKey:](properties objectForKey:{@"CurrentCapacity", "intValue"}];
  dword_10012BB98 = [-[__CFDictionary objectForKey:](properties objectForKey:{@"MaxCapacity", "intValue"}];
  byte_10012BB89 = [-[__CFDictionary objectForKey:](properties objectForKey:{@"ExternalConnected", "BOOLValue"}];
  byte_10012BB9C = [-[__CFDictionary objectForKey:](properties objectForKey:{@"IsCharging", "BOOLValue"}];
  byte_10012BB9F = [-[__CFDictionary objectForKey:](properties objectForKey:{@"ExternalChargeCapable", "BOOLValue"}];
  v3 = [-[__CFDictionary objectForKey:](properties objectForKey:{@"AdapterInfo", "intValue"}];
  dword_10012BB8C = v3;
  NSLog(@"__update_battery_state: battCap %d (%d) / %d, onAC %d, charging %d, chargingCapable %d, source %d", dword_10012BB90, dword_10012BB94, dword_10012BB98, byte_10012BB89 & 1, byte_10012BB9C & 1, byte_10012BB9F & 1, v3);
  if (byte_10012BB9C)
  {
    if (byte_10012BB89)
    {
      if (dword_10012BB90 == dword_10012BB98)
      {
        v4 = 0;
        byte_10012BB9C = 0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else if (byte_10012BB89)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_10;
  }

  if (byte_10012BB9F)
  {
    goto LABEL_8;
  }

  v4 = dword_10012BB8C == -536870201;
LABEL_10:
  v5 = dword_1001296E8;
  if (dword_1001296E8 == -1)
  {
    v5 = CFPreferencesGetAppBooleanValue(@"LogPowerSourceEvents", @"com.apple.iapd", 0) != 0;
    dword_1001296E8 = v5;
  }

  if (v5)
  {
    if (dword_10012BB8C >= 0x4000)
    {
      if (dword_10012BB8C == 0x8000)
      {
        v6 = @"fw";
        goto LABEL_23;
      }

      if (dword_10012BB8C == 0x4000)
      {
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"usb charging (%d mA)", [-[__CFDictionary objectForKey:](properties objectForKey:{@"Amperage", "intValue"}]);
        goto LABEL_23;
      }
    }

    else
    {
      if (dword_10012BB8C == -536870201)
      {
        v6 = @"unsupported";
        goto LABEL_23;
      }

      if (!dword_10012BB8C)
      {
        v6 = @"battery";
LABEL_23:
        NSLog(@"power=%@ AC(last)=%d(%d)", v6, byte_10012BB89 & 1, byte_10012BB9E & 1);
        goto LABEL_24;
      }
    }

    v6 = [NSString stringWithFormat:@"unknown (%d)", dword_10012BB8C];
    goto LABEL_23;
  }

LABEL_24:
  if (byte_10012BB88 != 1 || ((byte_10012BB9E ^ byte_10012BB89) & 1) == 0 && ((v4 ^ byte_10012BB9D) & 1) == 0)
  {
    goto LABEL_40;
  }

  if (v4 || (byte_10012BB89 & 1) != 0)
  {
    if (qword_10012BB80 != -1)
    {
      sub_1000E2098();
    }

    if (qword_10012BB78 && (qword_10012BB78 & 7) == 0)
    {
      (*(*qword_10012BB78 + 176))();
LABEL_39:
      byte_10012BB9D = v4;
      byte_10012BB9E = byte_10012BB89 & 1;
LABEL_40:
      dispatch_async(&_dispatch_main_q, &stru_100114FE8);
      CFRelease(properties);
LABEL_41:

      return;
    }
  }

  else
  {
    if (qword_10012BB80 != -1)
    {
      sub_1000E2098();
    }

    if (qword_10012BB78 && (qword_10012BB78 & 7) == 0)
    {
      (*(*qword_10012BB78 + 184))();
      goto LABEL_39;
    }
  }

  __break(0x5516u);
}

void sub_10004AA00(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (a3 == -536723200)
  {
    sub_10004A640(a2);
  }
}

void sub_10004AA1C(id a1)
{
  if (qword_10012BB80 != -1)
  {
    sub_1000E2084();
  }

  v2 = qword_10012BB78;
  if (qword_10012BB78)
  {
    v3 = (qword_10012BB78 & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    sub_10004A4C0(v2);
  }

  else
  {
    __break(0x5516u);
  }
}

void sub_10004AA74()
{
  sub_1000C4254();
  if (!sub_1000CC7A0())
  {
    syslog(4, "Can't create and IPodAccessoryMgr instance\n");
  }

  if (!sub_1000D6570())
  {
    syslog(4, "Can't create and IPodSimpleRemote instance\n");
  }

  if (!sub_1000CB9FC())
  {
    syslog(4, "Can't create and IPodAccessoryEQ instance\n");
  }
}

uint64_t sub_10004AAD8()
{
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    return sub_1000C8004(result);
  }

  return result;
}

uint64_t sub_10004AB10()
{
  if (qword_10012BBA8 != -1)
  {
    sub_1000E20C0();
  }

  return qword_10012BBA0;
}

uint64_t sub_10004ABD8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_10004AC4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10004ABD8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004AC60(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10004ABD8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

id sub_10004ACE0(id result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    v6 = [objc_msgSend(+[EAManager sharedManager](EAManager "sharedManager")];

    return v6;
  }

  return result;
}

id sub_10004AD54(id result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    v6 = [objc_msgSend(+[EAManager sharedManager](EAManager "sharedManager")];

    return v6;
  }

  return result;
}

void sub_10004ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    [objc_msgSend(+[EAManager sharedManager](EAManager "sharedManager")];
  }
}

uint64_t sub_10004AE54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    LODWORD(a3) = [objc_msgSend(+[EAManager sharedManager](EAManager "sharedManager")];

    return a3 ^ 1;
  }

  return result;
}

id sub_10004AEC8(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v9 = objc_alloc_init(NSAutoreleasePool);
    v10 = [objc_msgSend(+[EAManager sharedManager](EAManager "sharedManager")];

    return v10;
  }

  return result;
}

void sub_10004AF54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v8 = objc_alloc_init(NSAutoreleasePool);
    v7 = +[EAManager sharedManager];
    if (a4)
    {
      [v7 openCompleteForSessionWithConnectionID:a2 sessionID:a3];
    }

    else
    {
      [v7 closeSessionForConnectionID:a2 sessionID:a3 notifyApp:1];
    }
  }
}

void sub_10004AFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    [+[EAManager sharedManager](EAManager "sharedManager")];
  }
}

uint64_t sub_10004B064(uint64_t result, unsigned int a2, __int16 a3, char a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4[1] = -86;
    v4[0] = a4;
    v5 = a3;
    return (*(*result + 32))(result, 1310721, a2, v4);
  }

  return result;
}

uint64_t sub_10004B0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 32))(result, 1310724, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004B11C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 32))(result, 1310722, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004B164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 32))(result, 1310723, a2, a3);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004B1AC()
{
  if (qword_10012BBB8 != -1)
  {
    sub_1000E20D4();
  }

  return qword_10012BBB0;
}

uint64_t sub_10004B258(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      sub_10001C4A0(result);
      *v1 = off_100115140;
      *(v1 + 96) = 0;
      *(v1 + 104) = 0;
      sub_100025D20((v1 + 112), "");
      *(v1 + 136) = 0;
      *(v1 + 144) = 0;
      notify_port = 0;
      shouldFreeInfo = 0;
      context.version = 0;
      context.info = v1;
      memset(&context.retain, 0, 24);
      qword_10012C6A0 = dispatch_queue_create("SystemStatus BT global event queue", 0);
      if (!notify_register_mach_port("com.apple.springboard.lockstate", &notify_port, 0, (v1 + 96)))
      {
        v2 = CFMachPortCreateWithPort(kCFAllocatorDefault, notify_port, sub_10004B8D8, &context, &shouldFreeInfo);
        if (v2)
        {
          RunLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, v2, 0);
          CFRelease(v2);
          Main = CFRunLoopGetMain();
          CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
          CFRelease(RunLoopSource);
          check = 0;
          v5 = notify_check(*(v1 + 96), &check);
          v6 = 0;
          if (!v5 && check)
          {
            v6 = SBSGetScreenLockStatus();
          }

          *(v1 + 104) = v6;
        }
      }

      result = sub_100046A8C();
      if (result && (result & 7) == 0)
      {
        if ((*(*result + 176))(result))
        {
          v7 = CFPreferencesCopyAppValue(kIAPVideoTVOutSystem, @"com.apple.iapd");
          if (v7)
          {
            CFRelease(v7);
          }

          else
          {
            CFPreferencesSetValue(kIAPVideoTVOutSystem, kIAPVideoTVOutSystem_NTSC, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          }

          v8 = CFPreferencesCopyAppValue(kIAPVideoTVOutFitSystem, @"com.apple.iapd");
          if (v8)
          {
            CFRelease(v8);
          }

          else
          {
            CFPreferencesSetValue(kIAPVideoTVOutFitSystem, kIAPVideoTVOutFitSystem_ScaleToFill, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          }

          v9 = CFPreferencesCopyAppValue(kIAPVideoTVOutAspectRatio, @"com.apple.iapd");
          if (v9)
          {
            CFRelease(v9);
          }

          else
          {
            CFPreferencesSetValue(kIAPVideoTVOutAspectRatio, kIAPVideoTVOutAspectRatio_16_9, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          }

          v10 = CFPreferencesCopyAppValue(kIAPVideoTVOutSignal, @"com.apple.iapd");
          if (v10)
          {
            CFRelease(v10);
          }

          else
          {
            CFPreferencesSetValue(kIAPVideoTVOutSignal, kIAPVideoTVOutSignal_None, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          }

          v11 = CFPreferencesCopyAppValue(kIAPVideoTVOutCaptioning, @"com.apple.iapd");
          if (v11)
          {
            CFRelease(v11);
          }

          else
          {
            CFPreferencesSetValue(kIAPVideoTVOutCaptioning, kIAPVideoTVOutCaptioning_Off, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          }

          v12 = CFPreferencesCopyAppValue(kIAPVideoTVOutReservedForiPodOut, @"com.apple.iapd");
          if (v12)
          {
            CFRelease(v12);
          }

          else
          {
            CFPreferencesSetValue(kIAPVideoTVOutReservedForiPodOut, kIAPVideoTVOutReservedForiPodOut_NO, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          }

          v13 = CFPreferencesCopyAppValue(kIAPVideoTVOutReservedForRemoteUI, @"com.apple.iapd");
          if (v13)
          {
            CFRelease(v13);
          }

          else
          {
            CFPreferencesSetValue(kIAPVideoTVOutReservedForRemoteUI, kIAPVideoTVOutReservedForRemoteUI_NO, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          }

          if (!byte_10012C679)
          {
            byte_10012C679 = notify_register_check("com.apple.iapd.videoout.SettingsChanged", &dword_10012C67C) == 0;
          }
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, v1, sub_10004B964, @"com.apple.springboard.nowPlayingAppChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        _AXSAssistiveTouchEnabled();
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, v1, sub_10004B9EC, kAXSAssistiveTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        if (dword_1001296F4 == -1)
        {
          dword_1001296F4 = CFPreferencesGetAppBooleanValue(@"FakeNowPlayingBundleID", @"com.apple.iapd", 0) != 0;
        }

        if (dword_1001296F0 == -1)
        {
          dword_1001296F0 = CFPreferencesGetAppBooleanValue(@"NotifyBundleIDAsMobileIPod", @"com.apple.iapd", 0) != 0;
        }

        byte_10012C678 = CFPreferencesGetAppBooleanValue(@"LogVideoEvents", @"com.apple.iapd", 0);
        if (qword_10012BBC8 != -1)
        {
          sub_1000E20E8();
        }

        qword_10012BBD0 = objc_alloc_init(IAPApplicationStateMonitor);
        [qword_10012BBD0 startObserving];
        byte_10012C6A8 = byte_10012BBC0 & 1;
        if (byte_10012BBC0 & 1) != 0 && (byte_10012BBC1)
        {
          byte_10012C698 = CFPreferencesGetAppBooleanValue(@"DisableAuthentication", @"com.apple.iapd", 0);
          AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DisableUSBAuthentication", @"com.apple.iapd", 0);
        }

        else
        {
          NSLog(@"Can't disable auth!");
          AppBooleanValue = 0;
          byte_10012C698 = 0;
        }

        byte_10012C699 = AppBooleanValue;
        v17 = CFPreferencesCopyAppValue(@"IapImitate", @"com.apple.iapd");
        v18 = v17;
        if (v17)
        {
          v19 = CFGetTypeID(v17);
          if (v19 == CFStringGetTypeID())
          {
            qword_10012C688 = v18;
          }

          else
          {
            CFRelease(v18);
          }
        }

        sub_10004BB20();
        operator new();
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10004B89C(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  sub_10004BBC4(v1);
  _Unwind_Resume(a1);
}

void sub_10004B8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || (a2 & 3) != 0 || !a4 || (a4 & 7) != 0)
  {
    goto LABEL_13;
  }

  if (*(a2 + 20) != *(a4 + 96))
  {
    return;
  }

  v5 = SBSGetScreenLockStatus();
  *(a4 + 104) = v5;
  if (v5)
  {
    return;
  }

  v6 = sub_1000154F0();
  if (!v6 || (v6 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return;
  }

  sub_1000178E4(v6);
}

uint64_t sub_10004B964()
{
  if (qword_10012BBB8 != -1)
  {
    sub_1000E20D4();
  }

  result = qword_10012BBB0;
  if (qword_10012BBB0)
  {
    v1 = (qword_10012BBB0 & 7) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = *(*qword_10012BBB0 + 32);

    return v2();
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004B9EC()
{
  if (qword_10012BBB8 != -1)
  {
    sub_1000E20D4();
  }

  result = qword_10012BBB0;
  if (qword_10012BBB0)
  {
    v1 = (qword_10012BBB0 & 7) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = *(*qword_10012BBB0 + 32);

    return v2();
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

void sub_10004BA74(id a1)
{
  byte_10012BBC0 = 0;
  byte_10012BBC1 = 0;
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    byte_10012BBC0 = CFEqual(v1, @"Internal") != 0;
    CFRelease(v2);
  }

  else
  {
    byte_10012BBC0 = 0;
  }

  v3 = MGCopyAnswer();
  byte_10012BBC1 = CFBooleanGetValue(v3) == 0;

  CFRelease(v3);
}

void sub_10004BB20()
{
  [[NSString cStringUsingEncoding:@"com.apple.iaptransportd-%d" stringWithFormat:?], "cStringUsingEncoding:", 4];
  if (BTSessionAttachWithQueue())
  {
    NSLog(@"ERROR - %s:%s - %d failed attaching to BT server", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTAttachToServer", 2343, sub_10005082C);
    qword_10012C690 = 0;
  }
}

uint64_t sub_10004BBC4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_10004BC38(uint64_t result)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  *result = off_100115140;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v1, @"com.apple.springboard.nowPlayingAppChanged", 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, v1, @"SBSpringBoardDidLaunchNotification", 0);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, v1, kAXSAssistiveTouchEnabledNotification, 0);
  notify_cancel(dword_10012C67C);
  if (qword_10012C688)
  {
    CFRelease(qword_10012C688);
    qword_10012C688 = 0;
  }

  v5 = *(v1 + 144);
  if (v5)
  {

    *(v1 + 144) = 0;
  }

  result = *(v1 + 152);
  if (result)
  {
    if ((result & 7) == 0)
    {
      sub_1000089F8(result);
      operator delete();
    }

LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  result = *(v1 + 160);
  if (!result)
  {
LABEL_19:
    __break(0x5510u);
    return result;
  }

  dispatch_release(result);
  if (qword_10012C6A0)
  {
    dispatch_release(qword_10012C6A0);
    qword_10012C6A0 = 0;
  }

  [qword_10012BBD0 stopObserving];

  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  return sub_10004BBC4(v1);
}

void sub_10004BD84(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  sub_10004BBC4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004BDAC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10004BC38(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004BDC0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10004BC38(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10004BE40(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return byte_10012C698 != 0;
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10004BE64(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return byte_10012C699 != 0;
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10004BE88(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return byte_10012C6A8 != 0;
  }

  __break(0x5516u);
  return result;
}

unint64_t sub_10004BEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  v15 = v5;
  v16 = v5;
  v13 = v5;
  v14 = v5;
  *buffer = v5;
  v12 = v5;
  v6 = MGCopyAnswerWithError();
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      if (CFStringGetCString(v7, buffer, 256, 0x8000100u))
      {
        goto LABEL_11;
      }
    }

    else
    {
      NSLog(@"SystemStatus::GetMobileGestaltKeyValue() got non-string when querying key");
    }

    buffer[0] = 0;
LABEL_11:
    CFRelease(v7);
    if (a3)
    {
      v9 = buffer;
      return sub_100025D20(a3, v9);
    }

LABEL_14:
    __break(0x5516u);
  }

  NSLog(@"SystemStatus::GetMobileGestaltKeyValue() MG error: 0x%08x retrieving key:(%@)", 0, a2);
  if (!a3)
  {
    goto LABEL_14;
  }

  v9 = "N/A";
  return sub_100025D20(a3, v9);
}

void sub_10004BFF8(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_28;
  }

  v4 = (*(*a1 + 528))(a1);
  v5 = dword_10012C6AC;
  if (dword_10012C6AC >= 4)
  {
    goto LABEL_27;
  }

  v6 = v4;
  v7 = byte_10012C6B0;
  if (dword_10012C6AC)
  {
    v8 = byte_10012C6B0 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (v4 > 7)
    {
LABEL_27:
      __break(0x550Au);
      goto LABEL_28;
    }

    v9 = v4 == 4;
  }

  if (v4 > 7)
  {
    goto LABEL_27;
  }

  v10 = a1[136];
  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_28;
    }

    v11 = (*(*a2 + 200))(a2);
  }

  else
  {
    v11 = "NULL";
  }

  sub_1000DDE90(0xCu, @"%s:%s shouldDisplayPortTransportBeEnabled = %d, _isDisplayPortTransportEnabled = %d, _videoOutMode = %d, _videoOutAuthorized = %d, tvSignal = %d for port %s", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetupVideoPortTransportsIfNecessary", v9, v10, v5, v7, v6, v11);
  if (a1[136] == v9)
  {
    return;
  }

  v12 = sub_100046A8C();
  if (!v12 || (v12 & 7) != 0)
  {
LABEL_28:
    __break(0x5516u);
    return;
  }

  v13 = sub_1000469D4(v12);
  if (v13)
  {
    v14 = v13;
    sub_1000DDE90(0xCu, @"VideoOut Logging: DP enabled = %d", v9);
    v15 = &kCFBooleanTrue;
    if (!v9)
    {
      v15 = &kCFBooleanFalse;
    }

    IORegistryEntrySetCFProperty(v14, @"PowerState", *v15);
    IOObjectRelease(v14);
  }

  else
  {
    NSLog(@"ERROR - %s:%s - %d unable to get service for display port", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetupVideoPortTransportsIfNecessary", 455);
  }

  a1[136] = v9;
}

void sub_10004C1D0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    if (!qword_10012C688 || CFStringCompare(qword_10012C688, @"iPod_5G", 1uLL) && CFStringCompare(qword_10012C688, @"iPod_Classic", 1uLL) && CFStringCompare(qword_10012C688, @"iPod_3G_nano", 1uLL))
    {
      sub_10004BEAC(a1, @"UserAssignedDeviceName", &__str);
      std::string::operator=(a2, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::assign(a2, "iPod");
    }
  }
}

void sub_10004C2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004C2E8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    if (!qword_10012C688 || CFStringCompare(qword_10012C688, @"iPod_5G", 1uLL) && CFStringCompare(qword_10012C688, @"iPod_Classic", 1uLL) && CFStringCompare(qword_10012C688, @"iPod_3G_nano", 1uLL))
    {
      sub_10004BEAC(a1, @"SerialNumber", &__str);
      std::string::operator=(a2, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::assign(a2, "1A12345ABCD");
    }
  }
}

void sub_10004C3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10004C400@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_32:
    __break(0x5516u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v28[15] = v3;
  *v28 = v3;
  v27 = v3;
  v26 = v3;
  v25 = v3;
  v24 = v3;
  v23 = v3;
  v22 = v3;
  v21 = v3;
  v20 = v3;
  v19 = v3;
  v18 = v3;
  v17 = v3;
  v16 = v3;
  v15 = v3;
  *&buffer[1] = v3;
  buffer[0] = 0;
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
    v6 = CPGetDeviceRegionCode();
    if (v6)
    {
      v7 = v6;
      MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v5);
      CFStringAppend(MutableCopy, v7);
      CFRelease(v5);
      v5 = MutableCopy;
    }

    if (!CFStringGetCString(v5, buffer, 256, 0x8000100u))
    {
      buffer[0] = 0;
    }

    CFRelease(v5);
  }

  if (qword_10012C688)
  {
    if (CFStringCompare(qword_10012C688, @"iPod_5G", 1uLL))
    {
      if (CFStringCompare(qword_10012C688, @"iPod_Classic", 1uLL))
      {
        if (CFStringCompare(qword_10012C688, @"iPod_3G_nano", 1uLL))
        {
          if (CFStringCompare(qword_10012C688, @"iPod_Unknown", 1uLL) == kCFCompareEqualTo)
          {
            v11 = 0x6E776F6E6B6E55;
LABEL_29:
            *buffer = v11;
            goto LABEL_30;
          }

          if (CFStringCompare(qword_10012C688, @"iPhone4_Black_16_GSM", 1uLL) == kCFCompareEqualTo)
          {
            v10 = 0x4C383133434DLL;
            goto LABEL_28;
          }

          if (CFStringCompare(qword_10012C688, @"iPod_Touch_4G_32", 1uLL))
          {
            if (CFStringCompare(qword_10012C688, @"iPad2_Black_32_GSM", 1uLL))
            {
              if (CFStringCompare(qword_10012C688, @"iPad2_White_32_GSM", 1uLL))
              {
                goto LABEL_30;
              }

              v9 = 943276877;
              goto LABEL_22;
            }

            v12 = 926368589;
          }

          else
          {
            v12 = 875905869;
          }

          v10 = v12 & 0xFFFF0000FFFFFFFFLL | 0x4C3400000000;
          goto LABEL_28;
        }

        v9 = 892486221;
LABEL_22:
        v10 = v9 & 0xFFFF0000FFFFFFFFLL | 0x4C3300000000;
        goto LABEL_28;
      }

      v10 = 0x4C393230424DLL;
    }

    else
    {
      v10 = 0x4C363431414DLL;
    }

LABEL_28:
    v11 = v10 & 0xFFFFFFFFFFFFLL | 0x4C000000000000;
    goto LABEL_29;
  }

LABEL_30:
  if (!a2)
  {
    goto LABEL_32;
  }

  return sub_100025D20(a2, buffer);
}

uint64_t sub_10004C694(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (!qword_10012C688)
    {
      return 2490368;
    }

    if (CFStringCompare(qword_10012C688, @"iPod_5G", 1uLL) == kCFCompareEqualTo)
    {
      return 720896;
    }

    if (CFStringCompare(qword_10012C688, @"iPod_Classic", 1uLL) == kCFCompareEqualTo)
    {
      return 1245184;
    }

    if (CFStringCompare(qword_10012C688, @"iPod_3G_nano", 1uLL) == kCFCompareEqualTo)
    {
      return 1310720;
    }

    if (CFStringCompare(qword_10012C688, @"iPod_Unknown", 1uLL) == kCFCompareEqualTo)
    {
      return 11206656;
    }

    if (CFStringCompare(qword_10012C688, @"iPhone4_Black_16_GSM", 1uLL) == kCFCompareEqualTo)
    {
      return 0x200000;
    }

    if (CFStringCompare(qword_10012C688, @"iPod_Touch_4G_32", 1uLL) == kCFCompareEqualTo)
    {
      return 2162688;
    }

    v1 = 2359296;
    if (CFStringCompare(qword_10012C688, @"iPad2_Black_32_GSM", 1uLL))
    {
      if (CFStringCompare(qword_10012C688, @"iPad2_White_32_GSM", 1uLL))
      {
        return 2490368;
      }

      else
      {
        return 2359296;
      }
    }

    return v1;
  }

  return result;
}

void sub_10004C7D0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
  }

  v3 = MGCopyAnswer();
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v3);
  Length = CFStringGetLength(MutableCopy);
  if (CFStringHasSuffix(MutableCopy, @"AP"))
  {
    v6 = Length - 2;
    if (!__OFSUB__(Length, 2))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!CFStringHasSuffix(MutableCopy, @"DEV"))
  {
    goto LABEL_6;
  }

  v6 = Length - 3;
  if (__OFSUB__(Length, 3))
  {
LABEL_10:
    __break(0x5515u);
    goto LABEL_11;
  }

LABEL_5:
  CFStringPad(MutableCopy, 0, v6, 0);
LABEL_6:
  memset(buffer, 170, 10);
  CFStringGetCString(MutableCopy, buffer, 10, 0x600u);
  memset(a2, 170, 24);
  sub_100025D20(a2, buffer);
  CFRelease(v3);
  CFRelease(MutableCopy);
}

void sub_10004C904(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004C928(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*(a1 + 135) < 0)
  {
    if (*(a1 + 120))
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 135))
  {
    goto LABEL_9;
  }

  sub_10004BEAC(a1, @"ProductVersion", &__str);
  std::string::operator=((a1 + 112), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_9:
  if (a2)
  {
    std::string::basic_string(a2, (a1 + 112));
    return;
  }

LABEL_11:
  __break(0x5516u);
}

void sub_10004C9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004C9D8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = -86;
    v2 = -86;
    v1 = -86;
    (*(*result + 160))(result, &v3, &v2, &v1);
    return (v2 << 8) | (v3 << 16) | v1;
  }

  return result;
}

void sub_10004CA5C(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_67;
  }

  memset(&__str, 170, sizeof(__str));
  p_str = &__str;
  (*(*a1 + 128))(&__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    v9 = __CFADD__(p_str, size);
    if ("." == -1 || v9)
    {
      goto LABEL_64;
    }

    v10 = p_str + size;
    v11 = sub_100025108(p_str, p_str + size, ".", "", sub_1000251B0);
    if (v11 == v10)
    {
      v12 = -1;
    }

    else
    {
      v12 = v11 - p_str;
    }
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_66:
    __break(0x5500u);
LABEL_67:
    __break(0x5516u);
    return;
  }

  v14 = v13;
  v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__str;
  }

  else
  {
    v16 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = __str.__r_.__value_.__l.__size_;
  }

  if (v15 <= v13)
  {
    v19 = -1;
    goto LABEL_29;
  }

  if (~v16 < v13 || "." == -1 || v15 > ~v16)
  {
LABEL_64:
    __break(0x5513u);
LABEL_65:
    __break(0x5507u);
    goto LABEL_66;
  }

  v17 = v16 + v15;
  v18 = sub_100025108(v16 + v13, (v16 + v15), ".", "", sub_1000251B0);
  if (v18 == v17)
  {
    v19 = -1;
  }

  else
  {
    v19 = v18 - v16;
  }

LABEL_29:
  memset(&v30, 170, sizeof(v30));
  std::string::basic_string(&v30, &__str, 0, v12, &v29);
  memset(&v29, 0, sizeof(v29));
  memset(&v28, 0, sizeof(v28));
  if (!qword_10012C688 || CFStringCompare(qword_10012C688, @"iPod_5G", 1uLL) && CFStringCompare(qword_10012C688, @"iPod_Classic", 1uLL) && CFStringCompare(qword_10012C688, @"iPod_3G_nano", 1uLL))
  {
    if (v19 == -1)
    {
      std::string::basic_string(&__p, &__str, v14, 0xFFFFFFFFFFFFFFFFLL, &v32);
      std::string::operator=(&v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::assign(&v28, "0");
    }

    else
    {
      std::string::basic_string(&__p, &__str, v14, v19, &v32);
      std::string::operator=(&v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (__OFADD__(v19, 1))
      {
        goto LABEL_66;
      }

      std::string::basic_string(&__p, &__str, v19 + 1, 0xFFFFFFFFFFFFFFFFLL, &v32);
      std::string::operator=(&v28, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v30;
    }

    else
    {
      v22 = v30.__r_.__value_.__r.__words[0];
    }

    v23 = atoi(v22);
    if (v23 <= 0xFF)
    {
      *a2 = v23;
      v24 = (v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v29 : v29.__r_.__value_.__r.__words[0];
      v25 = atoi(v24);
      if (v25 <= 0xFF)
      {
        *a3 = v25;
        v21 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        v26 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
        v20 = atoi(v26);
        if (v20 <= 0xFF)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_65;
  }

  LOBYTE(v20) = 0;
  *a2 = 1;
  *a3 = 2;
  v21 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
LABEL_55:
  *a4 = v20;
  if (v21 < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10004CDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10004CE7C(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 104) != 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004CE9C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004CEB0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004CEC8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004CEDC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004CEF0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004CF04(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004CF1C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004CF30(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 255;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004CF48(uint64_t a1, int a2, __n128 a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = a2 / 255.0;
    a3.n128_u64[0] = 0;
    if (v3 >= 0.00000011921)
    {
      a3.n128_f32[0] = a2 / 255.0;
      if (v3 > 1.0)
      {
        a3.n128_u32[0] = 1.0;
      }
    }
  }

  return _BKSDisplayBrightnessSetWithImplicitTransaction(a3);
}

uint64_t sub_10004CF94(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
LABEL_15:
    __break(0x5505u);
    return result;
  }

  result = BKSDisplayBrightnessGetCurrent();
  if (v1 < 0.00000011921)
  {
    return 0;
  }

  if (v1 > 1.0)
  {
    return 255;
  }

  v2 = v1 * 255.0;
  if (v2 <= -1.0 || v2 >= 65536.0)
  {
    goto LABEL_15;
  }

  return v2;
}

uint64_t sub_10004D014(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return SBSUndimScreen();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004D028(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004D03C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004D050(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004D064(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004D07C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004D090(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004D0A8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004D0BC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

void sub_10004D0D4(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_6;
  }

  NSLog(@"sda mode unlocked");
  valuePtr = 1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v2 = kIapdServerName;
  CFPreferencesSetValue(@"SDAModeUnlocked", v1, kIapdServerName, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSetValue(@"SDAModeEnabled", v1, v2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(v2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFRelease(v1);
  v3 = sub_1000154F0();
  if (!v3 || (v3 & 7) != 0)
  {
LABEL_6:
    __break(0x5516u);
  }

  else
  {
    sub_100017914(v3);
  }
}

void sub_10004D1C8(uint64_t a1)
{
  v2 = byte_10012C6B0;
  if (byte_10012C6B0)
  {
    v2 = dword_10012C6AC;
    if (dword_10012C6AC >= 4)
    {
      __break(0x550Au);
      goto LABEL_19;
    }

    v3 = off_100115528[dword_10012C6AC];
  }

  else
  {
    v3 = @"Off";
  }

  if (v2 == dword_10012BBD8)
  {
    if (!a1)
    {
      v4 = "NULL";
      goto LABEL_13;
    }

    if ((a1 & 7) == 0)
    {
      v4 = (*(*a1 + 200))(a1);
LABEL_13:
      sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s - ignoring as duplicate", @"Out", v3, v4);
      return;
    }

    goto LABEL_19;
  }

  dword_10012BBD8 = v2;
  notify_set_state(dword_10012C67C, v2);
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_15;
  }

  if ((a1 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return;
  }

  v5 = (*(*a1 + 200))(a1);
LABEL_15:
  sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"Out", v3, v5);

  sub_10004D334(a1);
}

void sub_10004D334(uint64_t a1)
{
  if ([+[IAPGroupedCommandManager sharedManager](IAPGroupedCommandManager "sharedManager")])
  {
    v2 = +[IAPGroupedCommandManager sharedManager];

    [v2 videoOutSettingsChanged:a1];
  }

  else
  {
    context.version = 0;
    if (qword_10012BBB8 != -1)
    {
      sub_1000E20D4();
    }

    context.info = qword_10012BBB0;
    memset(&context.retain, 0, 24);
    if (qword_10012C680)
    {
      CFRunLoopTimerInvalidate(qword_10012C680);
      CFRelease(qword_10012C680);
      qword_10012C680 = 0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    qword_10012C680 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + 0.2, 0.0, 0, 0, sub_10004FB3C, &context);
    Main = CFRunLoopGetMain();
    CFRunLoopAddTimer(Main, qword_10012C680, kCFRunLoopDefaultMode);
  }
}

uint64_t sub_10004D450(uint64_t a1, const char *a2, const char *a3)
{
  if (a2 && a3)
  {
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
    if (CFStringCompare(v5, kIAPVideoTVOutSystem, 0) == kCFCompareEqualTo || CFStringCompare(v5, kIAPVideoTVOutFitSystem, 0) == kCFCompareEqualTo || CFStringCompare(v5, kIAPVideoTVOutAspectRatio, 0) == kCFCompareEqualTo || CFStringCompare(v5, kIAPVideoTVOutSignal, 0) == kCFCompareEqualTo || CFStringCompare(v5, kIAPVideoTVOutCaptioning, 0) == kCFCompareEqualTo || CFStringCompare(v5, kIAPVideoTVOutReservedForiPodOut, 0) == kCFCompareEqualTo || CFStringCompare(v5, kIAPVideoTVOutReservedForRemoteUI, 0) == kCFCompareEqualTo)
    {
      v7 = CFPreferencesCopyAppValue(v5, @"com.apple.iapd");
      if (v7)
      {
        v8 = v7;
        if (CFStringCompare(v7, v6, 0))
        {
          CFPreferencesSetValue(v5, v6, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          CFPreferencesSynchronize(@"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          sub_10004D334(a1);
        }

        CFRelease(v8);
      }

      else
      {
        CFPreferencesSetValue(v5, v6, @"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        CFPreferencesSynchronize(@"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_10004D334(a1);
      }
    }

    CFRelease(v5);
    CFRelease(v6);
  }

  return 0;
}

char *sub_10004D674(uint64_t a1, char **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = [[NSString alloc] initWithCString:a1 encoding:4];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = CFPreferencesCopyAppValue(v5, @"com.apple.iapd");
  if (!v7)
  {
LABEL_8:

LABEL_9:
    return 0;
  }

  v8 = v7;
  v9 = [v7 lengthOfBytesUsingEncoding:4];
  v10 = __CFADD__(v9, 1);
  result = v9 + 1;
  if (!v10)
  {
    result = malloc_type_malloc(result, 0x100004077774924uLL);
    if (!a2 || (a2 & 7) != 0)
    {
      goto LABEL_11;
    }

    v12 = result;
    *a2 = result;
    result = [v8 lengthOfBytesUsingEncoding:4];
    if (result != -1)
    {
      [v8 getCString:v12 maxLength:result + 1 encoding:4];

      goto LABEL_8;
    }
  }

  __break(0x5500u);
LABEL_11:
  __break(0x5516u);
  return result;
}

void sub_10004D764(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  if (a3 >= 4)
  {
LABEL_15:
    __break(0x550Au);
    return;
  }

  if (a3 != 3)
  {
    v6 = **(&off_100115548 + a3);
    if (v6)
    {
      v8 = v5;
      if (!a2)
      {
        v7 = "NULL";
        goto LABEL_10;
      }

      if ((a2 & 7) == 0)
      {
        v7 = (*(*a2 + 200))(a2);
LABEL_10:
        sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"TV System", v6, v7);
        sub_10004D450(a2, [kIAPVideoTVOutSystem UTF8String], objc_msgSend(v6, "UTF8String"));
        v5 = v8;
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

LABEL_11:
}

uint64_t sub_10004D880(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    if (a2 && (v7 = 0, sub_10004D674([kIAPVideoTVOutSystem UTF8String], &v7), v7))
    {
      v4 = [NSString alloc];
      v5 = [v4 initWithUTF8String:v7];
      if ([v5 caseInsensitiveCompare:kIAPVideoTVOutSystem_NTSC])
      {
        if ([v5 caseInsensitiveCompare:kIAPVideoTVOutSystem_PAL])
        {
          v6 = 2 * ([v5 caseInsensitiveCompare:kIAPVideoTVOutSystem_SECAM] == 0);
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        v6 = 0;
      }

      free(v7);
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  return result;
}

void sub_10004D988(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_15;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  if (a3 >= 2)
  {
LABEL_16:
    __break(0x550Au);
    return;
  }

  v6 = &kIAPVideoTVOutAspectRatio_16_9;
  if ((a3 & 1) == 0)
  {
    v6 = &kIAPVideoTVOutAspectRatio_4_3;
  }

  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_12;
  }

  v9 = v5;
  if (!a2)
  {
    v8 = "NULL";
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v8 = (*(*a2 + 200))(a2);
LABEL_11:
  sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"TV Aspect Ratio", v7, v8);
  sub_10004D450(a2, [kIAPVideoTVOutAspectRatio UTF8String], objc_msgSend(v7, "UTF8String"));
  v5 = v9;
LABEL_12:
}

uint64_t sub_10004DAA8(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    if (a2 && (v7 = 0, sub_10004D674([kIAPVideoTVOutAspectRatio UTF8String], &v7), v7))
    {
      v4 = [NSString alloc];
      v5 = [v4 initWithUTF8String:v7];
      if ([v5 caseInsensitiveCompare:kIAPVideoTVOutAspectRatio_4_3])
      {
        [v5 caseInsensitiveCompare:kIAPVideoTVOutAspectRatio_16_9];
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      free(v7);
    }

    else
    {
      v6 = 1;
    }

    return v6;
  }

  return result;
}