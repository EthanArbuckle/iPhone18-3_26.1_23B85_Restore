@interface EKCalendarSharedCalendarNotification(CUIKDescription)
- (id)_actionStringWithOptions:()CUIKDescription;
- (id)allDescriptionStringsWithOptions:()CUIKDescription;
- (id)descriptionStrings:()CUIKDescription;
- (id)titleStringWithOptions:()CUIKDescription;
@end

@implementation EKCalendarSharedCalendarNotification(CUIKDescription)

- (id)titleStringWithOptions:()CUIKDescription
{
  v3.receiver = self;
  v3.super_class = &off_1F4AEE0E8;
  v1 = objc_msgSendSuper2(&v3, sel_titleStringWithOptions_);

  return v1;
}

- (id)_actionStringWithOptions:()CUIKDescription
{
  allowedEntityTypes = [self allowedEntityTypes];
  v6 = [self _identityStringWithOptions:a3];
  if ((allowedEntityTypes & 2) != 0)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v9 = v8;
    v10 = @"Invitation to share a reminders list with %@.";
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v9 = v8;
    if ((a3 & 0x20) != 0)
    {
      v10 = @"%@ invited you to a shared calendar.";
    }

    else
    {
      v10 = @"Invitation to share a calendar with %@.";
    }
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F4AA8958 table:0];
  v12 = [v7 localizedStringWithFormat:v11, v6];

  return v12;
}

- (id)allDescriptionStringsWithOptions:()CUIKDescription
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [self _actionStringWithOptions:?];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)descriptionStrings:()CUIKDescription
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x20) != 0)
  {
    v11 = @"Person";
    v3 = [self _actionStringWithOptions:?];
    v12[0] = v3;
    v4 = MEMORY[0x1E695DF20];
    v5 = v12;
    v6 = &v11;
  }

  else
  {
    v9 = @"Action";
    v3 = [self _actionStringWithOptions:?];
    v10 = v3;
    v4 = MEMORY[0x1E695DF20];
    v5 = &v10;
    v6 = &v9;
  }

  v7 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:1];

  return v7;
}

@end