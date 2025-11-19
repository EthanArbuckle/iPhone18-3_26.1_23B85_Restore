@interface CUIKInviteeDescriptionGenerator
+ (id)inviteeStringForAttendees:(id)a3;
+ (id)inviteeStringForEvent:(id)a3;
@end

@implementation CUIKInviteeDescriptionGenerator

+ (id)inviteeStringForEvent:(id)a3
{
  v4 = [a3 attendees];
  v5 = [a1 inviteeStringForAttendees:v4];

  return v5;
}

+ (id)inviteeStringForAttendees:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if (([v10 isCurrentUser] & 1) == 0)
        {
          v11 = [v10 name];

          if (v11)
          {
            v12 = [v10 name];
            goto LABEL_11;
          }

          v13 = [v10 emailAddress];

          if (v13)
          {
            v12 = [v10 emailAddress];
LABEL_11:
            v14 = v12;
          }

          else
          {
            v15 = [v10 phoneNumber];

            if (v15)
            {
              v16 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
              v17 = [v10 phoneNumber];
              v14 = [v16 formattedStringForPhoneNumber:v17];
            }

            else
            {
              v14 = &stru_1F4AA8958;
            }
          }

          [v4 addObject:v14];
        }

        ++v9;
      }

      while (v7 != v9);
      v18 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v18;
    }

    while (v18);
  }

  if ([v4 count])
  {
    v19 = [v4 count];
    v20 = MEMORY[0x1E696AEC0];
    v21 = CUIKBundle();
    v22 = v21;
    if (v19 == 1)
    {
      v23 = [v21 localizedStringForKey:@"Invitees: %@" value:&stru_1F4AA8958 table:0];
      v24 = [v4 firstObject];
      v25 = [v20 localizedStringWithFormat:v23, v24];
    }

    else
    {
      v23 = [v21 localizedStringForKey:@"%lu Invitees" value:&stru_1F4AA8958 table:0];
      v25 = [v20 localizedStringWithFormat:v23, objc_msgSend(v4, "count")];
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end