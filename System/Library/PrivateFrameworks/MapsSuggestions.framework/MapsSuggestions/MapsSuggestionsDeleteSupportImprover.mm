@interface MapsSuggestionsDeleteSupportImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsDeleteSupportImprover

- (BOOL)improveEntry:(id)entry
{
  v17 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDeleteSupportImprover.m";
      v11 = 1024;
      v12 = 24;
      v13 = 2082;
      v14 = "[MapsSuggestionsDeleteSupportImprover improveEntry:]";
      v15 = 2082;
      v16 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", &v9, 0x26u);
    }

    goto LABEL_7;
  }

  if ([entryCopy availableRemovalBehaviors])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = 0;
  switch([v4 type])
  {
    case 0:
      break;
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      goto LABEL_9;
    case 3:
      Integer = GEOConfigGetInteger();
      if ([v4 BOOLeanForKey:@"MapsSuggestionsCalendarEventIsRecurringKey" is:1])
      {
LABEL_9:
        Integer = GEOConfigGetInteger();
      }

      goto LABEL_10;
    default:
      Integer = 0;
LABEL_10:
      [v4 setAvailableRemovalBehavior:Integer];
      v5 = 1;
      break;
  }

LABEL_11:

  return v5;
}

@end