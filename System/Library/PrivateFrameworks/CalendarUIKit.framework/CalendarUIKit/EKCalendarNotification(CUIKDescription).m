@interface EKCalendarNotification(CUIKDescription)
- (id)_identityStringForIdentity:()CUIKDescription withOptions:;
- (id)blockedDescriptionString:()CUIKDescription;
- (id)timeSensitiveDescriptionString;
@end

@implementation EKCalendarNotification(CUIKDescription)

- (id)_identityStringForIdentity:()CUIKDescription withOptions:
{
  v6 = a3;
  if ((a4 & 2) != 0)
  {
    v20 = 0;
    v7 = [CUIKAttendeeDescriptionGenerator displayNameForIdentity:v6 outFirstName:&v20 outLastName:0];
    v8 = v20;
  }

  else
  {
    v7 = [CUIKAttendeeDescriptionGenerator displayNameForIdentity:v6 outFirstName:0 outLastName:0];
    v8 = 0;
  }

  if ([a1 couldBeJunk])
  {
    v9 = [a1 emailAddress];

    if (v9)
    {
      v10 = [a1 emailAddress];
LABEL_23:
      v14 = v10;
      goto LABEL_24;
    }
  }

  if ([a1 couldBeJunk] && (objc_msgSend(a1, "phoneNumber"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
    v13 = [a1 phoneNumber];
    v14 = [v12 formattedStringForPhoneNumber:v13];
  }

  else
  {
    if ((a4 & 2) == 0)
    {
      if (v7)
      {
        goto LABEL_25;
      }

      v15 = CUIKBundle();
      v7 = v15;
      if (a4)
      {
        v16 = @"Somebody";
      }

      else
      {
        v16 = @"somebody";
      }

      v10 = [v15 localizedStringForKey:v16 value:&stru_1F4AA8958 table:0];
      goto LABEL_23;
    }

    if (v8)
    {
      v10 = v8;
      goto LABEL_23;
    }

    v17 = [a1 firstName];
    v12 = v17;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v7;
    }

    v14 = v18;
  }

  v7 = v12;
LABEL_24:

  v7 = v14;
LABEL_25:

  return v7;
}

- (id)timeSensitiveDescriptionString
{
  if ([a1 cuik_isTimeSensitive])
  {
    v1 = +[CUIKNotificationDescriptionGenerator timeSensitiveString];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)blockedDescriptionString:()CUIKDescription
{
  if (a3)
  {
    if (([a1 containsCachedBlockedAttendee] & 1) == 0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_6;
    }
  }

  else if (![a1 containsBlockedAttendee])
  {
    goto LABEL_3;
  }

  v3 = +[CUIKNotificationDescriptionGenerator blockedAttendeeString];
LABEL_6:

  return v3;
}

@end