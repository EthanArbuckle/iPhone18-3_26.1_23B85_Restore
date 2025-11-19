@interface MPModelPlaylist(LastUpdatedString)
- (id)_stringForDayOfWeek:()LastUpdatedString compact:;
- (id)nms_lastUpdatedString;
@end

@implementation MPModelPlaylist(LastUpdatedString)

- (id)nms_lastUpdatedString
{
  v2 = [a1 lastModifiedDateComponents];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = [a1 lastModifiedDateComponents];
    v5 = [v4 date];
    v6 = [v3 component:512 fromDate:v5];

    v7 = [a1 _stringForDayOfWeek:v6 compact:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stringForDayOfWeek:()LastUpdatedString compact:
{
  v5 = 0;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v6 = [MEMORY[0x277CCA8D8] nanoMusicSyncBundle];
        if (a4)
        {
          v7 = @"COMPACT_LAST_UPDATED_SUBTITLE_SUNDAY";
          v8 = @"Updated Sun";
        }

        else
        {
          v7 = @"LAST_UPDATED_SUBTITLE_SUNDAY";
          v8 = @"Updated every Sunday";
        }

        break;
      case 2:
        v6 = [MEMORY[0x277CCA8D8] nanoMusicSyncBundle];
        if (a4)
        {
          v7 = @"COMPACT_LAST_UPDATED_SUBTITLE_MONDAY";
          v8 = @"Updated Mon";
        }

        else
        {
          v7 = @"LAST_UPDATED_SUBTITLE_MONDAY";
          v8 = @"Updated every Monday";
        }

        break;
      case 3:
        v6 = [MEMORY[0x277CCA8D8] nanoMusicSyncBundle];
        if (a4)
        {
          v7 = @"COMPACT_LAST_UPDATED_SUBTITLE_TUESDAY";
          v8 = @"Updated Tue";
        }

        else
        {
          v7 = @"LAST_UPDATED_SUBTITLE_TUESDAY";
          v8 = @"Updated every Tuesday";
        }

        break;
      default:
        goto LABEL_31;
    }
  }

  else if (a3 > 5)
  {
    if (a3 == 6)
    {
      v6 = [MEMORY[0x277CCA8D8] nanoMusicSyncBundle];
      if (a4)
      {
        v7 = @"COMPACT_LAST_UPDATED_SUBTITLE_FRIDAY";
        v8 = @"Updated Fri";
      }

      else
      {
        v7 = @"LAST_UPDATED_SUBTITLE_FRIDAY";
        v8 = @"Updated every Friday";
      }
    }

    else
    {
      if (a3 != 7)
      {
        goto LABEL_31;
      }

      v6 = [MEMORY[0x277CCA8D8] nanoMusicSyncBundle];
      if (a4)
      {
        v7 = @"COMPACT_LAST_UPDATED_SUBTITLE_SATURDAY";
        v8 = @"Updated Sat";
      }

      else
      {
        v7 = @"LAST_UPDATED_SUBTITLE_SATURDAY";
        v8 = @"Updated every Saturday";
      }
    }
  }

  else if (a3 == 4)
  {
    v6 = [MEMORY[0x277CCA8D8] nanoMusicSyncBundle];
    if (a4)
    {
      v7 = @"COMPACT_LAST_UPDATED_SUBTITLE_WEDNESDAY";
      v8 = @"Updated Wed";
    }

    else
    {
      v7 = @"LAST_UPDATED_SUBTITLE_WEDNESDAY";
      v8 = @"Updated every Wednesday";
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] nanoMusicSyncBundle];
    if (a4)
    {
      v7 = @"COMPACT_LAST_UPDATED_SUBTITLE_THURSDAY";
      v8 = @"Updated Thu";
    }

    else
    {
      v7 = @"LAST_UPDATED_SUBTITLE_THURSDAY";
      v8 = @"Updated every Thursday";
    }
  }

  v5 = [v6 localizedStringForKey:v7 value:v8 table:0];

LABEL_31:

  return v5;
}

@end