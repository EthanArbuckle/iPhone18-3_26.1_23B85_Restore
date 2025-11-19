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
    v6 = [v5 address];
    v7 = [v4 URLWithString:v6];

    v8 = [v5 displayName];
    v9 = [v5 status] - 1;
    if (v9 < 5)
    {
      v10 = (v9 + 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 accessLevel];

    if ((v11 - 1) < 3)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    a1 = [a1 initWithHREF:v7 commonName:v8 inviteStatus:v10 access:v12];

    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)rem_shareeForREMList:()ShareeConversion
{
  v5 = a3;
  if (!v5)
  {
    [(CalDAVCalendarServerUserItem(ShareeConversion) *)a2 rem_shareeForREMList:a1];
  }

  v6 = [a1 acceptedURL];

  if (v6)
  {
    v7 = [a1 acceptedURL];
    v32 = [v7 absoluteString];
  }

  else
  {
    v7 = [a1 href];
    v8 = [v7 payloadAsFullURL];
    v32 = [v8 absoluteString];
  }

  v9 = [a1 firstName];
  if (v9 && (v10 = v9, [a1 lastName], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v31 = [a1 firstName];
    v12 = [a1 lastName];
    v13 = 0;
  }

  else
  {
    v14 = [a1 commonName];
    v13 = [v14 payloadAsString];

    v12 = 0;
    v31 = 0;
  }

  v15 = [a1 inviteStatus];
  v16 = [v15 name];
  v17 = _calDAVCalendarServerInviteStatusFromString(v16) - 1;
  if (v17 < 5)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 access];
  v20 = [v19 accessLevel];
  v21 = [v20 name];
  v22 = _calDAVCalendarServerAccessLevelFromString(v21);

  v23 = objc_alloc(MEMORY[0x277D447E8]);
  v24 = [MEMORY[0x277D447E8] newObjectID];
  v25 = [v5 account];
  [v25 objectID];
  v27 = v26 = v5;
  v28 = [v26 objectID];
  v29 = [v23 initShareeWithObjectID:v24 accountID:v27 listID:v28 displayName:v13 firstName:v31 lastName:v12 address:v32 status:v18 accessLevel:v22];

  return v29;
}

- (id)rem_updatedREMShareeFromREMSharee:()ShareeConversion
{
  v5 = a3;
  if (!v5)
  {
    [(CalDAVCalendarServerUserItem(ShareeConversion) *)a2 rem_updatedREMShareeFromREMSharee:a1];
  }

  v6 = [a1 commonName];
  v7 = [v6 payloadAsString];

  v8 = [v5 displayName];
  v9 = [v5 firstName];
  v45 = [v5 lastName];
  v42 = [v5 address];
  v10 = [v5 status];
  v11 = [v5 accessLevel];
  v43 = v7;
  v44 = v9;
  if ([v7 length] && (objc_msgSend(v7, "isEqualToString:", v8) & 1) == 0)
  {
    v20 = v7;
    v12 = v8;
    v19 = 1;
    v8 = v20;
    goto LABEL_15;
  }

  v12 = [a1 firstName];
  if (![v12 length])
  {
LABEL_12:
    v19 = 0;
    goto LABEL_15;
  }

  v13 = [a1 lastName];
  if (![v13 length])
  {

    goto LABEL_12;
  }

  v14 = [a1 firstName];
  v15 = v9;
  v16 = v14;
  if ([v14 isEqualToString:v15])
  {
    v17 = [a1 lastName];
    v18 = [v17 isEqualToString:v45];

    if (v18)
    {
      v19 = 0;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v21 = [a1 firstName];

  [a1 lastName];
  v19 = 0;
  v12 = v45;
  v45 = v44 = v21;
LABEL_15:

LABEL_16:
  v22 = [a1 inviteStatus];
  v23 = [v22 name];
  v24 = _calDAVCalendarServerInviteStatusFromString(v23);

  if ((v10 - 1) < 5)
  {
    v25 = v10;
  }

  else
  {
    v25 = 0;
  }

  if (v24 != v25)
  {
    v10 = 0;
    v19 = 1;
    if (v24 <= 2)
    {
      if (v24 == 1)
      {
        v10 = 1;
      }

      else if (v24 == 2)
      {
        v10 = 2;
      }
    }

    else
    {
      switch(v24)
      {
        case 3:
          v10 = 3;
          break;
        case 4:
          v10 = 4;
          break;
        case 5:
          v10 = 5;
          break;
      }
    }
  }

  v26 = [a1 access];
  v27 = [v26 accessLevel];
  v28 = [v27 name];
  v29 = _calDAVCalendarServerAccessLevelFromString(v28);

  if ((v11 - 1) < 3)
  {
    v30 = v11;
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
      v32 = v45;
      v34 = v42;
      goto LABEL_33;
    }
  }

  else
  {
    v11 = v29;
  }

  v35 = objc_alloc(MEMORY[0x277D447E8]);
  v36 = [MEMORY[0x277D447E8] newObjectID];
  v37 = [v5 accountID];
  v38 = [v5 listID];
  v41 = v11;
  v34 = v42;
  v39 = v35;
  v33 = v44;
  v32 = v45;
  v31 = [v39 initShareeWithObjectID:v36 accountID:v37 listID:v38 displayName:v8 firstName:v44 lastName:v45 address:v42 status:v10 accessLevel:v41];

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