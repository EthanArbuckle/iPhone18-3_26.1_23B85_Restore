@interface EKCalendarInviteReplyNotification(CUIKDescription)
- (id)_actionWithOptions:()CUIKDescription;
- (id)allDescriptionStringsWithOptions:()CUIKDescription;
- (id)descriptionStrings:()CUIKDescription;
- (id)titleStringWithOptions:()CUIKDescription;
@end

@implementation EKCalendarInviteReplyNotification(CUIKDescription)

- (id)titleStringWithOptions:()CUIKDescription
{
  v6.receiver = self;
  v6.super_class = &off_1F4AEED30;
  v1 = objc_msgSendSuper2(&v6, sel_titleStringWithOptions_);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = CUIKBundle();
    v3 = [v4 localizedStringForKey:@"Shared Calendar" value:&stru_1F4AA8958 table:0];
  }

  return v3;
}

- (id)_actionWithOptions:()CUIKDescription
{
  if (([self allowedEntityTypes] & 2) != 0)
  {
    allowedEntityTypes = [self allowedEntityTypes];
    v5 = (allowedEntityTypes & 1) == 0;
    if ([self type] != 10)
    {
      goto LABEL_7;
    }

    if ((allowedEntityTypes & 1) == 0)
    {
      v7 = CUIKBundle();
      v8 = v7;
      v9 = @"This reminders list is no longer shared.";
LABEL_13:
      v14 = [v7 localizedStringForKey:v9 value:&stru_1F4AA8958 table:0];
      goto LABEL_22;
    }

LABEL_12:
    v7 = CUIKBundle();
    v8 = v7;
    v9 = @"This calendar is no longer shared.";
    goto LABEL_13;
  }

  if ([self type] == 10)
  {
    goto LABEL_12;
  }

  v5 = 0;
LABEL_7:
  if ([self type] != 9)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v8 = [self _identityStringWithOptions:a3];
  if ([self status] == 2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CUIKBundle();
    v12 = v11;
    if (v5)
    {
      v13 = @"%@ declined your shared reminders list.";
    }

    else
    {
      v13 = @"%@ declined your shared calendar.";
    }
  }

  else
  {
    status = [self status];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CUIKBundle();
    v12 = v11;
    if (status == 1)
    {
      v16 = @"%@ joined your shared calendar.";
      v17 = @"%@ joined your shared reminders list.";
    }

    else
    {
      v16 = @"%@ is pending on this shared calendar invitation.";
      v17 = @"%@ is pending on this shared reminders list invitation.";
    }

    if (v5)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16;
    }
  }

  v18 = [v11 localizedStringForKey:v13 value:&stru_1F4AA8958 table:0];
  v14 = [v10 localizedStringWithFormat:v18, v8];

LABEL_22:
LABEL_23:

  return v14;
}

- (id)allDescriptionStringsWithOptions:()CUIKDescription
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = [self _actionWithOptions:?];
  v2 = v1;
  if (v1)
  {
    v5[0] = v1;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)descriptionStrings:()CUIKDescription
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v6 = [self _actionWithOptions:a3];
  [v5 setObject:v6 forKeyedSubscript:@"Action"];

  timeSensitiveDescriptionString = [self timeSensitiveDescriptionString];
  [v5 setObject:timeSensitiveDescriptionString forKeyedSubscript:@"TimeSensitive"];

  v8 = [self blockedDescriptionString:(a3 >> 10) & 1];
  [v5 setObject:v8 forKeyedSubscript:@"Blocked"];

  v9 = [v5 copy];

  return v9;
}

@end