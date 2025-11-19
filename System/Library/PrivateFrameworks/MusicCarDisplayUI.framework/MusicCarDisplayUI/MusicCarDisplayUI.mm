id MCDCarDisplayBundle()
{
  if (MCDCarDisplayBundle_onceToken != -1)
  {
    MCDCarDisplayBundle_cold_1();
  }

  v1 = MCDCarDisplayBundle_carDisplayBundle;

  return v1;
}

id MCDMusicGeneralLogging()
{
  if (MCDMusicGeneralLogging_onceToken != -1)
  {
    MCDMusicGeneralLogging_cold_1();
  }

  v1 = MCDMusicGeneralLogging_facility;

  return v1;
}

void sub_25AD90718(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25AD915F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25AD91FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL MCDIndexPathIsRootForContainer(void *a1)
{
  v1 = a1;
  v2 = [v1 indexPath];
  if ([v2 length])
  {
    v3 = [v1 model];
    v4 = [v3 bundleID];
    if (MRMediaRemoteApplicationSupportsSectionedBrowsing())
    {
      v5 = [v1 indexPath];
      v6 = [v5 length] == 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_25AD935F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MCDCarDisplayBundle_block_invoke()
{
  MCDCarDisplayBundle_carDisplayBundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileMusicPlayer.MusicCarDisplayUI"];

  return MEMORY[0x2821F96F8]();
}

id MCDMusicBundle()
{
  if (MCDMusicBundle_onceToken != -1)
  {
    MCDMusicBundle_cold_1();
  }

  v1 = MCDMusicBundle_musicBundle;

  return v1;
}

uint64_t __MCDMusicBundle_block_invoke()
{
  MCDMusicBundle_musicBundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MusicApplication"];

  return MEMORY[0x2821F96F8]();
}

uint64_t MCDCarDisplayUIMode()
{
  v0 = [MEMORY[0x277D759A0] _carScreen];
  v1 = [v0 _capabilityForKey:*MEMORY[0x277D77538]];
  v2 = [v1 integerValue];

  v3 = [v0 _capabilityForKey:*MEMORY[0x277D77540]];
  v4 = [v3 integerValue];

  if ([v0 supportsFocus])
  {
    v5 = 2;
  }

  else
  {
    v5 = v2 & (v4 != 0);
  }

  return v5;
}

id MCDFormattedNumberString(void *a1)
{
  v1 = MCDFormattedNumberString_sOnceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MCDFormattedNumberString_cold_1();
  }

  v3 = [MCDFormattedNumberString_sNumberFormatter stringFromNumber:v2];

  return v3;
}

uint64_t __MCDFormattedNumberString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = MCDFormattedNumberString_sNumberFormatter;
  MCDFormattedNumberString_sNumberFormatter = v0;

  [MCDFormattedNumberString_sNumberFormatter setNumberStyle:1];
  [MCDFormattedNumberString_sNumberFormatter setUsesSignificantDigits:0];
  [MCDFormattedNumberString_sNumberFormatter setMaximumFractionDigits:2];
  v2 = MCDFormattedNumberString_sNumberFormatter;

  return [v2 setUsesGroupingSeparator:1];
}

id MCDLocalizedExplicitImage()
{
  v0 = [MEMORY[0x277D7FA28] defaultManager];
  v1 = [v0 ageVerificationState];
  v2 = [v1 treatment];

  if (v2 == 1)
  {
    v3 = @"19.circle.fill";
  }

  else
  {
    v3 = @"e.square.fill";
  }

  v4 = [MEMORY[0x277D755B8] _systemImageNamed:v3];

  return v4;
}

__CFString *MCDLocalizedExplicitString()
{
  v0 = [MEMORY[0x277D7FA28] defaultManager];
  v1 = [v0 ageVerificationState];
  v2 = [v1 treatment];

  if (v2 == 1)
  {
    return @"⓳";
  }

  else
  {
    return @"🅴";
  }
}

id MCDFavoriteIcon()
{
  v0 = objc_alloc_init(MEMORY[0x277D755E8]);
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76940] scale:1];
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill" withConfiguration:v1];
  [v0 setImage:v2];
  v3 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v0 setTintColor:v3];

  [v0 sizeToFit];

  return v0;
}

id MCDFormattedPlaybackRateString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToNumber:&unk_286C30DF0])
  {
    v2 = MCDCarDisplayBundle();
    v3 = v2;
    v4 = @"PLAYBACK_RATE_SPEED_HALF";
LABEL_9:
    v5 = [v2 localizedStringForKey:v4 value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    goto LABEL_10;
  }

  if ([v1 isEqualToNumber:&unk_286C30E00])
  {
    v2 = MCDCarDisplayBundle();
    v3 = v2;
    v4 = @"PLAYBACK_RATE_SPEED_THREE_QUARTERS";
    goto LABEL_9;
  }

  if ([v1 isEqualToNumber:&unk_286C30E10])
  {
    v2 = MCDCarDisplayBundle();
    v3 = v2;
    v4 = @"PLAYBACK_RATE_SPEED_ONE_AND_QUARTER";
    goto LABEL_9;
  }

  if ([v1 isEqualToNumber:&unk_286C30E20])
  {
    v2 = MCDCarDisplayBundle();
    v3 = v2;
    v4 = @"PLAYBACK_RATE_SPEED_ONE_AND_HALF";
    goto LABEL_9;
  }

  v7 = MEMORY[0x277CCACA8];
  v3 = MCDCarDisplayBundle();
  v8 = [v3 localizedStringForKey:@"PLAYBACK_RATE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  v9 = MCDFormattedNumberString(v1);
  v5 = [v7 stringWithFormat:v8, v9];

LABEL_10:

  return v5;
}

id MCDAlbumDetailFormat(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = MCDCarDisplayBundle();
  v6 = [v5 localizedStringForKey:@"%d Song(s)" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  v7 = [v4 localizedStringWithFormat:v6, a1];

  if (a2 < 1)
  {
    v15 = v7;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = MCDCarDisplayBundle();
    v10 = [v9 localizedStringForKey:@"%d Minute(s)" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v11 = [v8 localizedStringWithFormat:v10, a2];

    v12 = MEMORY[0x277CCACA8];
    v13 = MCDCarDisplayBundle();
    v14 = [v13 localizedStringForKey:@"ALBUM_DETAIL_FORMAT_FULL" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v15 = [v12 localizedStringWithFormat:v14, v7, v11];
  }

  return v15;
}

id MCDMPModelObjectForGenericObject(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v3 = [v1 playlist];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v3 = [v1 artist];
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v3 = [v1 album];
        goto LABEL_11;
      }

LABEL_8:
      v3 = v1;
      goto LABEL_11;
    }

    v3 = [v1 song];
  }

LABEL_11:
  v4 = v3;

  return v4;
}

void MCDSetChargeOnDescendantsOfView(void *a1, uint64_t a2, double a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        MCDSetChargeOnDescendantsOfView(*(*(&v14 + 1) + 8 * v11), a2, a3);
        if (objc_opt_isKindOfClass())
        {
          v10 = a3;
          *&v12 = v10;
          [v5 setCharge:v12];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void MCDClearTableViewSelection(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 indexPathsForSelectedRows];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 deselectRowAtIndexPath:*(*(&v11 + 1) + 8 * v9++) animated:a2];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

__CFString *_MCDStringFromIndexPath(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 length];
    v11[0] = v11;
    MEMORY[0x28223BE20](v2, v3);
    v5 = v11 - v4;
    [v1 getIndexes:v11 - v4];
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*&v5[8 * i]];
        [(__CFString *)v6 appendFormat:@"%@", v8];

        if (v2 - 1 > i)
        {
          [(__CFString *)v6 appendString:@"."];
        }
      }
    }
  }

  else
  {
    v6 = @"ROOT";
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

id MCDGetNowPlayingButton(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CF9150];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  [v5 addTarget:v4 action:a2 forControlEvents:64];

  return v5;
}

id MCDBarButtonItemForNegativeSpacer(double a1)
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v2 setWidth:-a1];

  return v2;
}

void MCDSetupTableHeaderView(void *a1)
{
  v8 = a1;
  if (_UISolariumEnabled())
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] tableBackgroundColor];
  }
  v1 = ;
  v2 = [v8 contentView];
  [v2 setBackgroundColor:v1];

  v3 = [MEMORY[0x277D75348] _carSystemPrimaryColor];
  v4 = [v8 textLabel];
  [v4 setTextColor:v3];

  v5 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
  v6 = [v8 textLabel];
  [v6 setFont:v5];

  v7 = [v8 textLabel];
  [v7 setTextAlignment:1];
}

id MCDFormatArtistAlbumString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"%@ — %@" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v8 = [v5 localizedStringWithFormat:v7, v3, v4];

    goto LABEL_9;
  }

  if ([v4 length])
  {
    v9 = v4;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  if ([v3 length])
  {
    v9 = v3;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

uint64_t MCDTimeDurationForSeconds(float a1)
{
  if (MCDTimeDurationForSeconds_sOnceToken != -1)
  {
    MCDTimeDurationForSeconds_cold_1();
  }

  v2 = MCDTimeDurationForSeconds_sTimeFormatter;

  return [v2 stringFromSeconds:a1];
}

uint64_t __MCDTimeDurationForSeconds_block_invoke()
{
  MCDTimeDurationForSeconds_sTimeFormatter = objc_alloc_init(MEMORY[0x277CE6640]);

  return MEMORY[0x2821F96F8]();
}

id MCDFilteredStringForString(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 newlineCharacterSet];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:&stru_286C2B080];

  return v5;
}

uint64_t MCDNetworkRestrictedCellularData()
{
  if (!ICEnvironmentNetworkTypeIsCellular())
  {
    return 0;
  }

  v0 = [MEMORY[0x277CD5FD8] sharedNetworkObserver];
  v1 = [v0 isMusicCellularStreamingAllowed] ^ 1;

  return v1;
}

void MCDSetAllowsCellularData(uint64_t a1)
{
  v2 = [MEMORY[0x277CD5FD8] sharedNetworkObserver];
  [v2 setMusicCellularStreamingAllowed:a1];
}

void MCDPerformColorUpdateWithCurrentTraitCollection(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = MEMORY[0x277D75C80];
    v4 = a2;
    v5 = a1;
    v6 = [v3 _currentTraitCollection];
    [MEMORY[0x277D75C80] _setCurrentTraitCollection:v5];

    v4[2](v4);
    [MEMORY[0x277D75C80] _setCurrentTraitCollection:v6];
  }
}

void sub_25AD96928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 224), 8);
  _Block_object_dispose((v51 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25AD973DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_25AD995C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25AD99D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25AD9AAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *_MCDCreateMediaRemoteIndexPath(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = malloc_type_malloc(0x10uLL, 0x1010040FDD9F14CuLL);
  v4 = v3;
  v3[1] = v2;
  if (v2)
  {
    v5 = 0;
    *v3 = malloc_type_malloc(8 * v2, 0x100004000313F17uLL);
    do
    {
      *(*v4 + 8 * v5) = [v1 indexAtPosition:v5];
      ++v5;
    }

    while (v2 != v5);
  }

  else
  {
    *v3 = 0;
  }

  return v4;
}

void sub_25AD9C0EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25AD9C2C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25AD9F468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25AD9F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MCDNSIndexPathFromMRMediaRemoteIndexPath(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x28223BE20](a1, a2);
  if (v3)
  {
    v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = v3;
    do
    {
      v7 = *v2++;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  v8 = [MEMORY[0x277CCAA70] indexPathWithIndexes:? length:?];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_25AD9FBD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id MCDGeneralLogging()
{
  if (MCDGeneralLogging_onceToken != -1)
  {
    MCDGeneralLogging_cold_1();
  }

  v1 = MCDGeneralLogging_facility;

  return v1;
}

uint64_t __MCDGeneralLogging_block_invoke()
{
  MCDGeneralLogging_facility = os_log_create("com.apple.MusicCarDisplay", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t __MCDMusicGeneralLogging_block_invoke()
{
  MCDMusicGeneralLogging_facility = os_log_create("com.apple.MusicCarPlay", "General");

  return MEMORY[0x2821F96F8]();
}

void sub_25ADA1434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_25ADA3100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25ADA3428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _MCDNoContentFontWithTextStyle(uint64_t a1)
{
  v1 = MEMORY[0x277D74300];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a1 addingSymbolicTraits:2 options:0];
  v3 = [v1 fontWithDescriptor:v2 size:0.0];

  return v3;
}

void sub_25ADA63EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25ADA6C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25ADA7588(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}