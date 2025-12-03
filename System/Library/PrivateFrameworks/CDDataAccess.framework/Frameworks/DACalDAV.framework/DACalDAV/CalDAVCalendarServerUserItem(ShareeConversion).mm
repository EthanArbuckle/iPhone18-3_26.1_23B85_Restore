@interface CalDAVCalendarServerUserItem(ShareeConversion)
- (id)initWithREMSharee:()ShareeConversion;
- (id)rem_shareeForREMList:()ShareeConversion;
- (id)rem_updatedREMShareeFromREMSharee:()ShareeConversion;
@end

@implementation CalDAVCalendarServerUserItem(ShareeConversion)

- (id)initWithREMSharee:()ShareeConversion
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = a3;
    address = [v5 address];
    v7 = [v4 URLWithString:address];

    displayName = [v5 displayName];
    v9 = [v5 status] - 1;
    if (v9 < 5)
    {
      v10 = (v9 + 1);
    }

    else
    {
      v10 = 0;
    }

    accessLevel = [v5 accessLevel];

    if ((accessLevel - 1) < 3)
    {
      v12 = accessLevel;
    }

    else
    {
      v12 = 0;
    }

    self = [self initWithHREF:v7 commonName:displayName inviteStatus:v10 access:v12];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)rem_shareeForREMList:()ShareeConversion
{
  v5 = a3;
  if (!v5)
  {
    [(CalDAVCalendarServerUserItem(ShareeConversion) *)a2 rem_shareeForREMList:self];
  }

  acceptedURL = [self acceptedURL];

  if (acceptedURL)
  {
    acceptedURL2 = [self acceptedURL];
    absoluteString = [acceptedURL2 absoluteString];
  }

  else
  {
    acceptedURL2 = [self href];
    payloadAsFullURL = [acceptedURL2 payloadAsFullURL];
    absoluteString = [payloadAsFullURL absoluteString];
  }

  firstName = [self firstName];
  if (firstName && (v10 = firstName, [self lastName], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    firstName2 = [self firstName];
    lastName = [self lastName];
    payloadAsString = 0;
  }

  else
  {
    commonName = [self commonName];
    payloadAsString = [commonName payloadAsString];

    lastName = 0;
    firstName2 = 0;
  }

  inviteStatus = [self inviteStatus];
  name = [inviteStatus name];
  v17 = _calDAVCalendarServerInviteStatusFromString(name) - 1;
  if (v17 < 5)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  access = [self access];
  accessLevel = [access accessLevel];
  name2 = [accessLevel name];
  v22 = _calDAVCalendarServerAccessLevelFromString(name2);

  v23 = objc_alloc(MEMORY[0x277D447E8]);
  newObjectID = [MEMORY[0x277D447E8] newObjectID];
  account = [v5 account];
  [account objectID];
  v27 = v26 = v5;
  objectID = [v26 objectID];
  v29 = [v23 initShareeWithObjectID:newObjectID accountID:v27 listID:objectID displayName:payloadAsString firstName:firstName2 lastName:lastName address:absoluteString status:v18 accessLevel:v22];

  return v29;
}

- (id)rem_updatedREMShareeFromREMSharee:()ShareeConversion
{
  v5 = a3;
  if (!v5)
  {
    [(CalDAVCalendarServerUserItem(ShareeConversion) *)a2 rem_updatedREMShareeFromREMSharee:self];
  }

  commonName = [self commonName];
  payloadAsString = [commonName payloadAsString];

  displayName = [v5 displayName];
  firstName = [v5 firstName];
  lastName = [v5 lastName];
  address = [v5 address];
  status = [v5 status];
  accessLevel = [v5 accessLevel];
  v43 = payloadAsString;
  v44 = firstName;
  if ([payloadAsString length] && (objc_msgSend(payloadAsString, "isEqualToString:", displayName) & 1) == 0)
  {
    v20 = payloadAsString;
    firstName2 = displayName;
    v19 = 1;
    displayName = v20;
    goto LABEL_15;
  }

  firstName2 = [self firstName];
  if (![firstName2 length])
  {
LABEL_12:
    v19 = 0;
    goto LABEL_15;
  }

  lastName2 = [self lastName];
  if (![lastName2 length])
  {

    goto LABEL_12;
  }

  firstName3 = [self firstName];
  v15 = firstName;
  v16 = firstName3;
  if ([firstName3 isEqualToString:v15])
  {
    lastName3 = [self lastName];
    v18 = [lastName3 isEqualToString:lastName];

    if (v18)
    {
      v19 = 0;
      goto LABEL_16;
    }
  }

  else
  {
  }

  firstName4 = [self firstName];

  [self lastName];
  v19 = 0;
  firstName2 = lastName;
  lastName = v44 = firstName4;
LABEL_15:

LABEL_16:
  inviteStatus = [self inviteStatus];
  name = [inviteStatus name];
  v24 = _calDAVCalendarServerInviteStatusFromString(name);

  if ((status - 1) < 5)
  {
    v25 = status;
  }

  else
  {
    v25 = 0;
  }

  if (v24 != v25)
  {
    status = 0;
    v19 = 1;
    if (v24 <= 2)
    {
      if (v24 == 1)
      {
        status = 1;
      }

      else if (v24 == 2)
      {
        status = 2;
      }
    }

    else
    {
      switch(v24)
      {
        case 3:
          status = 3;
          break;
        case 4:
          status = 4;
          break;
        case 5:
          status = 5;
          break;
      }
    }
  }

  access = [self access];
  accessLevel2 = [access accessLevel];
  name2 = [accessLevel2 name];
  v29 = _calDAVCalendarServerAccessLevelFromString(name2);

  if ((accessLevel - 1) < 3)
  {
    v30 = accessLevel;
  }

  else
  {
    v30 = 0;
  }

  if (v29 == v30)
  {
    if ((v19 & 1) == 0)
    {
      v31 = 0;
      v33 = v44;
      v32 = lastName;
      v34 = address;
      goto LABEL_33;
    }
  }

  else
  {
    accessLevel = v29;
  }

  v35 = objc_alloc(MEMORY[0x277D447E8]);
  newObjectID = [MEMORY[0x277D447E8] newObjectID];
  accountID = [v5 accountID];
  listID = [v5 listID];
  v41 = accessLevel;
  v34 = address;
  v39 = v35;
  v33 = v44;
  v32 = lastName;
  v31 = [v39 initShareeWithObjectID:newObjectID accountID:accountID listID:listID displayName:displayName firstName:v44 lastName:lastName address:address status:status accessLevel:v41];

LABEL_33:

  return v31;
}

- (void)rem_shareeForREMList:()ShareeConversion .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalDAVCalendarServerUserItem+REMShareeConversion.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"list"}];
}

- (void)rem_updatedREMShareeFromREMSharee:()ShareeConversion .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalDAVCalendarServerUserItem+REMShareeConversion.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"remSharee"}];
}

@end