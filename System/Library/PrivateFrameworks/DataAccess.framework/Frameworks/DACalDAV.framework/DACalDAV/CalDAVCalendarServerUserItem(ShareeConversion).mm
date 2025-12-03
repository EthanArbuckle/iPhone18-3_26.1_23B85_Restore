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

  v8 = [self initWithHREF:v2 commonName:v3 inviteStatus:v5 access:v7];

  return v8;
}

- (uint64_t)createCalShareeInDatabase:()ShareeConversion andCalendar:
{
  Sharee = CalDatabaseCreateSharee();
  CalShareeSetOwner();
  acceptedURL = [self acceptedURL];

  if (acceptedURL)
  {
    acceptedURL2 = [self acceptedURL];
  }

  else
  {
    acceptedURL2 = [self href];
    [acceptedURL2 payloadAsFullURL];
  }

  CalShareeSetAddress();

  firstName = [self firstName];
  if (firstName && (v6 = firstName, [self lastName], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    firstName2 = [self firstName];
    CalShareeSetFirstName();

    lastName = [self lastName];
    CalShareeSetLastName();
  }

  else
  {
    lastName = [self commonName];
    [lastName payloadAsString];
    CalShareeSetDisplayName();
  }

  inviteStatus = [self inviteStatus];
  name = [inviteStatus name];
  _calDAVCalendarServerInviteStatusFromString(name);
  CalShareeSetStatus();

  access = [self access];
  accessLevel = [access accessLevel];
  name2 = [accessLevel name];
  _calDAVCalendarServerAccessLevelFromString(name2);
  CalShareeSetAccessLevel();

  return Sharee;
}

- (uint64_t)updateCalSharee:()ShareeConversion
{
  commonName = [self commonName];
  payloadAsString = [commonName payloadAsString];

  v4 = CalShareeCopyDisplayName();
  Name = CalShareeCopyFirstName();
  v6 = CalShareeCopyLastName();
  if ([payloadAsString length] && (objc_msgSend(payloadAsString, "isEqualToString:", v4) & 1) == 0)
  {
    CalShareeSetDisplayName();
    v11 = 1;
    goto LABEL_14;
  }

  firstName = [self firstName];
  if ([firstName length])
  {
    lastName = [self lastName];
    if ([lastName length])
    {
      firstName2 = [self firstName];
      if ([firstName2 isEqualToString:Name])
      {
        lastName2 = [self lastName];
        v25 = [lastName2 isEqualToString:v6];

        if (v25)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      firstName3 = [self firstName];
      CalShareeSetFirstName();

      firstName = [self lastName];
      CalShareeSetLastName();
    }

    else
    {
    }
  }

LABEL_13:
  v11 = 0;
LABEL_14:
  inviteStatus = [self inviteStatus];
  name = [inviteStatus name];
  v15 = _calDAVCalendarServerInviteStatusFromString(name);

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

  access = [self access];
  accessLevel = [access accessLevel];
  name2 = [accessLevel name];
  v21 = _calDAVCalendarServerAccessLevelFromString(name2);

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