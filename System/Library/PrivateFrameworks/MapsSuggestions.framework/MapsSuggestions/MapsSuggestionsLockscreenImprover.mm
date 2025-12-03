@interface MapsSuggestionsLockscreenImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsLockscreenImprover

- (BOOL)improveEntry:(id)entry
{
  v17 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    *v16 = MEMORY[0x1E69E9820];
    *&v16[8] = 3221225472;
    *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
    *&v16[24] = &__block_descriptor_40_e5_v8__0l;
    *&v16[32] = "LockscreenImprover";
    if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
    {
      dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
    }

    v4 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3 localizedStringForKey:@"MAPS_SUGG_SUBTITLE_UNLOCK" value:@"Unlock device to show details<unlocalized>" table:{0, *v16, *&v16[8], *&v16[16], *&v16[24], *&v16[32], v17}];
    v5 = MapsSuggestionsNonNilString(v4, &stru_1F444C108);
    [entryCopy setUndecoratedSubtitleWhenLocked:v5];

    v6 = 0;
    switch([entryCopy type])
    {
      case 0:
        goto LABEL_52;
      case 1:
      case 2:
      case 9:
      case 18:
      case 19:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        undecoratedTitle = [entryCopy undecoratedTitle];
        goto LABEL_6;
      case 3:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_CAL";
        v12 = @"Upcoming event<unlocalized>";
        goto LABEL_49;
      case 4:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_LOI";
        v12 = @"Significant location<unlocalized>";
        goto LABEL_49;
      case 5:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_RECENT";
        v12 = @"Recent place<unlocalized>";
        goto LABEL_49;
      case 6:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_FAV";
        v12 = @"Favorite place<unlocalized>";
        goto LABEL_49;
      case 7:
        undecoratedTitle = MapsSuggestionsLocalizedParkedCarString();
        goto LABEL_6;
      case 8:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_RESTAURANT_RESERVATION";
        v12 = @"Restaurant reservation<unlocalized>";
        goto LABEL_49;
      case 10:
        undecoratedTitle2 = [entryCopy undecoratedTitle];
        [entryCopy setUndecoratedTitleWhenLocked:undecoratedTitle2];

        undecoratedSubtitle = [entryCopy undecoratedSubtitle];
        [entryCopy setUndecoratedSubtitleWhenLocked:undecoratedSubtitle];
        goto LABEL_9;
      case 11:
        undecoratedTitle = MapsSuggestionsLocalizedResumeRouteString();
LABEL_6:
        v8 = undecoratedTitle;
        [entryCopy setUndecoratedTitleWhenLocked:undecoratedTitle];
        goto LABEL_50;
      case 12:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_DEC";
        v12 = @"Recently viewed location<unlocalized>";
        goto LABEL_49;
      case 13:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_HOTEL";
        v12 = @"Hotel reservation<unlocalized>";
        goto LABEL_49;
      case 14:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_CAR_RENTAL";
        v12 = @"Car rental<unlocalized>";
        goto LABEL_49;
      case 15:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_FLIGHT";
        v12 = @"Flight reservation<unlocalized>";
        goto LABEL_49;
      case 16:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_TICKET";
        v12 = @"Ticketed event<unlocalized>";
        goto LABEL_49;
      case 17:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_PORTRAIT";
        v12 = @"Siri suggestion<unlocalized>";
        goto LABEL_49;
      case 21:
        *v16 = MEMORY[0x1E69E9820];
        *&v16[8] = 3221225472;
        *&v16[16] = ___MapsSuggestionsBundle_block_invoke_3;
        *&v16[24] = &__block_descriptor_40_e5_v8__0l;
        *&v16[32] = "LockscreenImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_3 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_3, v16);
        }

        v10 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_3;
        v11 = @"MAPS_SUGG_TITLE_RATING";
        v12 = @"Rate<unlocalized>";
LABEL_49:
        v8 = [v10 localizedStringForKey:v11 value:v12 table:{0, *v16, *&v16[8], *&v16[16], *&v16[24], *&v16[32]}];
        v14 = MapsSuggestionsNonNilString(v8, &stru_1F444C108);
        [entryCopy setUndecoratedTitleWhenLocked:v14];

LABEL_50:
        break;
      default:
        break;
    }

    v6 = 1;
  }

  else
  {
    undecoratedSubtitle = GEOFindOrCreateLog();
    if (os_log_type_enabled(undecoratedSubtitle, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136446978;
      *&v16[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLockscreenImprover.m";
      *&v16[12] = 1024;
      *&v16[14] = 21;
      *&v16[18] = 2082;
      *&v16[20] = "[MapsSuggestionsLockscreenImprover improveEntry:]";
      *&v16[28] = 2082;
      *&v16[30] = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, undecoratedSubtitle, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", v16, 0x26u);
    }

LABEL_9:

    v6 = 0;
  }

LABEL_52:

  return v6;
}

@end