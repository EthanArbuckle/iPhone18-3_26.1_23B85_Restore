@interface IMSharedChatSummaries
+ (id)unreadSummaryWithUnreadCount:(int64_t)count withParticipants:(id)participants withGroupChatName:(id)name;
@end

@implementation IMSharedChatSummaries

+ (id)unreadSummaryWithUnreadCount:(int64_t)count withParticipants:(id)participants withGroupChatName:(id)name
{
  v8 = [participants count];
  if (count == 1)
  {
    v9 = [IMSharedUtilitiesFrameworkBundle() localizedStringForKey:@"1 unread" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"%@ unread", &stru_1F1BB91F0, @"IMSharedUtilities", objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", count)];
  }

  v10 = v9;
  v11 = MEMORY[0x1E696AEC0];
  v12 = IMSharedUtilitiesFrameworkBundle();
  if (!name)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        v13 = [v12 localizedStringForKey:@"Empty chat (%@)" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
        nameCopy = v10;
        goto LABEL_6;
      }

      if (v8 == 1)
      {
        v15 = [v12 localizedStringForKey:@"%@ (%@)" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
        nameCopy = [participants objectAtIndex:0];
        v23 = v10;
LABEL_18:
        v14 = v11;
        v13 = v15;
        return [v14 stringWithFormat:v13, nameCopy, v23, v24, v25];
      }

LABEL_14:
      v17 = [v12 localizedStringForKey:@"%@ value:%@ and %@ other people (%@)" table:{&stru_1F1BB91F0, @"IMSharedUtilities"}];
      v18 = [participants objectAtIndex:0];
      v19 = [participants objectAtIndex:1];
      return [v11 stringWithFormat:v17, v18, v19, objc_msgSend(MEMORY[0x1E696ADA0], "localizedStringFromNumber:numberStyle:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v8 - 2), 0), v10];
    }

    if (v8 == 2)
    {
      v16 = @"%@, %@ (%@)";
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_14;
      }

      v16 = @"%@, %@ and 1 other person (%@)";
    }

    v15 = [v12 localizedStringForKey:v16 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
    v21 = [participants objectAtIndex:0];
    v23 = [participants objectAtIndex:1];
    v24 = v10;
    nameCopy = v21;
    goto LABEL_18;
  }

  v13 = [v12 localizedStringForKey:@"%@ (%@)" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
  nameCopy = name;
  v23 = v10;
LABEL_6:
  v14 = v11;
  return [v14 stringWithFormat:v13, nameCopy, v23, v24, v25];
}

@end