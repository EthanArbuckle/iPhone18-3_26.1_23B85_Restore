@interface CalDAVCalendarServerUserItem(ShareeConversion)
- (uint64_t)createCalShareeInDatabase:()ShareeConversion andCalendar:;
- (uint64_t)initWithCalSharee:()ShareeConversion;
- (uint64_t)updateCalSharee:()ShareeConversion;
@end

@implementation CalDAVCalendarServerUserItem(ShareeConversion)

- (uint64_t)initWithCalSharee:()ShareeConversion
{
  v2 = CalShareeCopyAddress();
  v3 = CalShareeCopyDisplayName();
  Status = CalShareeGetStatus();
  if (Status - 1 >= 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = Status;
  }

  AccessLevel = CalShareeGetAccessLevel();
  if (AccessLevel - 1 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = AccessLevel;
  }

  v8 = [a1 initWithHREF:v2 commonName:v3 inviteStatus:v5 access:v7];

  return v8;
}

- (uint64_t)createCalShareeInDatabase:()ShareeConversion andCalendar:
{
  Sharee = CalDatabaseCreateSharee();
  CalShareeSetOwner();
  v3 = [a1 acceptedURL];

  if (v3)
  {
    v4 = [a1 acceptedURL];
  }

  else
  {
    v4 = [a1 href];
    [v4 payloadAsFullURL];
  }

  CalShareeSetAddress();

  v5 = [a1 firstName];
  if (v5 && (v6 = v5, [a1 lastName], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [a1 firstName];
    CalShareeSetFirstName();

    v9 = [a1 lastName];
    CalShareeSetLastName();
  }

  else
  {
    v9 = [a1 commonName];
    [v9 payloadAsString];
    CalShareeSetDisplayName();
  }

  v10 = [a1 inviteStatus];
  v11 = [v10 name];
  _calDAVCalendarServerInviteStatusFromString(v11);
  CalShareeSetStatus();

  v12 = [a1 access];
  v13 = [v12 accessLevel];
  v14 = [v13 name];
  _calDAVCalendarServerAccessLevelFromString(v14);
  CalShareeSetAccessLevel();

  return Sharee;
}

- (uint64_t)updateCalSharee:()ShareeConversion
{
  v2 = [a1 commonName];
  v3 = [v2 payloadAsString];

  v4 = CalShareeCopyDisplayName();
  Name = CalShareeCopyFirstName();
  v6 = CalShareeCopyLastName();
  if ([v3 length] && (objc_msgSend(v3, "isEqualToString:", v4) & 1) == 0)
  {
    CalShareeSetDisplayName();
    v11 = 1;
    goto LABEL_14;
  }

  v7 = [a1 firstName];
  if ([v7 length])
  {
    v8 = [a1 lastName];
    if ([v8 length])
    {
      v9 = [a1 firstName];
      if ([v9 isEqualToString:Name])
      {
        v10 = [a1 lastName];
        v25 = [v10 isEqualToString:v6];

        if (v25)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v12 = [a1 firstName];
      CalShareeSetFirstName();

      v7 = [a1 lastName];
      CalShareeSetLastName();
    }

    else
    {
    }
  }

LABEL_13:
  v11 = 0;
LABEL_14:
  v13 = [a1 inviteStatus];
  v14 = [v13 name];
  v15 = _calDAVCalendarServerInviteStatusFromString(v14);

  Status = CalShareeGetStatus();
  if ((Status - 1) >= 5)
  {
    v17 = 0;
  }

  else
  {
    v17 = Status;
  }

  if (v17 != v15)
  {
    CalShareeSetStatus();
    v11 = 1;
  }

  v18 = [a1 access];
  v19 = [v18 accessLevel];
  v20 = [v19 name];
  v21 = _calDAVCalendarServerAccessLevelFromString(v20);

  AccessLevel = CalShareeGetAccessLevel();
  if ((AccessLevel - 1) >= 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = AccessLevel;
  }

  if (v21 != v23)
  {
    CalShareeSetAccessLevel();
    v11 = 1;
  }

  return v11;
}

@end