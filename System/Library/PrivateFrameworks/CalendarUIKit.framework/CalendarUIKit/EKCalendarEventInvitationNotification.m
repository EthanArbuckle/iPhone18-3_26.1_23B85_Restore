@interface EKCalendarEventInvitationNotification
@end

@implementation EKCalendarEventInvitationNotification

void __103__EKCalendarEventInvitationNotification_CUIKDescription___attendeeReplyStringWithOptions_descriptions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v31 = a2;
  v7 = [v31 proposedStartDateDeclined];
  if (v7)
  {
    LOBYTE(v7) = [v31 isCurrentUser];
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  if ([v31 statusChanged])
  {
    v8 = [v31 participantStatus] == 3;
  }

  else
  {
    v8 = 0;
  }

  if ([v31 proposedStartDateChanged])
  {
    v9 = [v31 proposedStartDate];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v31 comment];
  v12 = [v11 CalStringByRemovingAutoComment];

  if (![v31 commentChanged])
  {
    v13 = 0;
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = [v12 length] != 0;
  if (v8)
  {
LABEL_15:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    ++*(*(*(a1 + 56) + 8) + 24);
  }

LABEL_16:
  if (v13)
  {
    v14 = [*(a1 + 32) objectForKeyedSubscript:@"Comment"];

    v15 = MEMORY[0x1E696AEC0];
    v16 = CUIKBundle();
    v17 = v16;
    if (v14)
    {
      v18 = [v16 localizedStringForKey:@"%@\n“%@”" value:&stru_1F4AA8958 table:0];
      v19 = [*(a1 + 32) objectForKeyedSubscript:@"Comment"];
      v20 = [v15 localizedStringWithFormat:v18, v19, v12];
      [*(a1 + 32) setObject:v20 forKeyedSubscript:@"Comment"];
    }

    else
    {
      v18 = [v16 localizedStringForKey:@"“%@”" value:&stru_1F4AA8958 table:0];
      v19 = [v15 localizedStringWithFormat:v18, v12];
      [*(a1 + 32) setObject:v19 forKeyedSubscript:@"Comment"];
    }

    ++*(*(*(a1 + 64) + 8) + 24);
  }

  if (v10)
  {
    v21 = v5;
    ++*(*(*(a1 + 72) + 8) + 24);
    v22 = +[CUIKDateDescriptionGenerator sharedGenerator];
    v23 = [v31 proposedStartDate];
    v24 = [v22 dateStringForDate:v23 allDay:0 standalone:1 shortFormat:0];

    if ([*(*(*(a1 + 80) + 8) + 40) length])
    {
      [*(*(*(a1 + 80) + 8) + 40) appendString:@"\n"];
    }

    v25 = *(*(*(a1 + 80) + 8) + 40);
    v26 = MEMORY[0x1E696AEC0];
    v27 = CUIKBundle();
    v28 = [v27 localizedStringForKey:@"Proposed Time: %@" value:&stru_1F4AA8958 table:0];
    v29 = [v26 localizedStringWithFormat:v28, v24];
    [v25 appendString:v29];

    v5 = v21;
  }

  else if (!v8 && !v13)
  {
    goto LABEL_29;
  }

  v30 = *(*(a1 + 88) + 8);
  if (*(v30 + 40))
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
    v30 = *(*(a1 + 88) + 8);
  }

  objc_storeStrong((v30 + 40), v5);
LABEL_29:
}

@end