@interface ASAttendee
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASAttendee)init;
- (ASAttendee)initWithCalAttendee:(void *)a3 parentEvent:(id)a4;
- (ASAttendee)initWithCoder:(id)a3;
- (id)copyOfSelfWithoutLocalID;
- (id)fullEmailString;
- (id)icsUserAddress;
- (void)appendActiveSyncDataForTask:(id)a3 toData:(id)a4;
- (void)applyPlaceHolder;
- (void)encodeWithCoder:(id)a3;
- (void)saveToCalendarWithParentASEvent:(id)a3 existingRecord:(void *)a4 isDefaultCalendar:(BOOL)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8;
@end

@implementation ASAttendee

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_18 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_18;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_18 = v2;
    acceptsTopLevelLeaves___haveChecked_18 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_18 == 1)
  {
    v2 = parsingLeafNode___result_18;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_18 = v2;
    parsingLeafNode___haveChecked_18 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_18 == 1)
  {
    v2 = parsingWithSubItems___result_18;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_18 = v2;
    parsingWithSubItems___haveChecked_18 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_18 == 1)
  {
    v2 = frontingBasicTypes___result_18;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_18 = v2;
    frontingBasicTypes___haveChecked_18 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_18 == 1)
  {
    v2 = notifyOfUnknownTokens___result_18;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_18 = v2;
    notifyOfUnknownTokens___haveChecked_18 = 1;
  }

  return v2 & 1;
}

- (void)applyPlaceHolder
{
  v3 = [(ASAttendee *)self placeHolder];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1034];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASAttendee *)self setName:v5];
    }
  }

  v6 = [(ASAttendee *)self placeHolder];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:1033];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASAttendee *)self setEmail:v8];
    }
  }

  v9 = [(ASAttendee *)self placeHolder];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:1065];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASAttendee setStatus:](self, "setStatus:", [v11 intValue]);
    }
  }

  v12 = [(ASAttendee *)self placeHolder];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:1066];
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASAttendee setRole:](self, "setRole:", [v14 intValue]);
    }
  }

  v15 = [(ASAttendee *)self placeHolder];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:2064];
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v17];
      [(ASAttendee *)self setProposedStartTime:v18];
    }
  }

  v19 = [(ASAttendee *)self placeHolder];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:2065];
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v21];
      [(ASAttendee *)self setProposedEndTime:v22];
    }
  }

  [(ASAttendee *)self setLocalId:0xFFFFFFFFLL];

  [(ASAttendee *)self setPlaceHolder:0];
}

- (void)saveToCalendarWithParentASEvent:(id)a3 existingRecord:(void *)a4 isDefaultCalendar:(BOOL)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8
{
  v8 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v10 = a8;
  if (-[ASAttendee localId](self, "localId") == -1 || (+[ASLocalDBHelper sharedInstance](ASLocalDBHelper, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), [v10 accountID], v12 = objc_claimAutoreleasedReturnValue(), Attendee = MEMORY[0x24C210A30](objc_msgSend(v11, "calDatabaseForAccountID:", v12), -[ASAttendee localId](self, "localId")), v12, v11, !Attendee))
  {
    v15 = +[ASLocalDBHelper sharedInstance];
    v16 = [v10 accountID];
    [v15 calDatabaseForAccountID:v16];
    Attendee = CalDatabaseCreateAttendee();

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v17 = [(ASAttendee *)self name];
  if (v17)
  {
    MEMORY[0x24C210610](Attendee, v17);
  }

  v18 = [(ASAttendee *)self email];
  if (v18)
  {
    MEMORY[0x24C210620](Attendee, v18);
  }

  v19 = [(ASAttendee *)self invitedBy];
  if (v19)
  {
    CalAttendeeSetInvitedBy();
  }

  [(ASAttendee *)self role];
  CalAttendeeSetType();
  v20 = [(ASAttendee *)self role];
  if (v20 <= 3)
  {
    v21 = dword_24A14DD50[v20];
    CalAttendeeSetRole();
  }

  CalAttendeeGetPendingStatus();
  v22 = [(ASAttendee *)self status];
  if (v22 <= 3)
  {
    if (v22 && v22 != 2 && v22 != 3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22 == 4)
  {
LABEL_21:
    CalAttendeeSetStatus();
    goto LABEL_22;
  }

  if (v22 != 6)
  {
    if (v22 != 5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  Status = CalAttendeeGetStatus();
  if (Status != *MEMORY[0x277CF7138])
  {
    v34 = Status;
    log = DALoggingwithCategory();
    type = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(log, type))
    {
      *buf = 67109120;
      v38 = v34;
      _os_log_impl(&dword_24A0AC000, log, type, "We're being asked to save an attendee with a deleted status, but that attendee has a non-deleted status %d", buf, 8u);
    }
  }

LABEL_22:
  CalAttendeeSetPendingStatus();
  v23 = [(ASAttendee *)self proposedStartTime];
  v24 = MEMORY[0x277CF78F0];
  if (v23)
  {
    v25 = [(ASAttendee *)self proposedStartTime];
    [v25 timeIntervalSinceReferenceDate];
    v27 = v26;
  }

  else
  {
    v27 = *MEMORY[0x277CF78F0];
  }

  CalAttendeeGetProposedStartDate();
  if (v28 != v27)
  {
    CalParticipantSetProposedStartDateChanged();
    CalEventAddInvitationChangedProperties();
    if (v8)
    {
      CalEventSetNeedsNotification();
    }
  }

  CalAttendeeSetProposedStartDate();
  v29 = MEMORY[0x24C2105A0](Attendee);
  if (v27 == *v24)
  {
    v30 = EKAutoCommentPrefix();
    v31 = [v30 substringFromIndex:1];

    if ([v29 hasPrefix:v31])
    {
      MEMORY[0x24C210670](Attendee, &stru_285D39BD0);
    }
  }

  if (v14)
  {
    CalCalendarItemAddAttendee();
  }

  CFRelease(Attendee);

  v32 = *MEMORY[0x277D85DE8];
}

- (ASAttendee)init
{
  v5.receiver = self;
  v5.super_class = ASAttendee;
  v2 = [(ASItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ASAttendee *)v2 setStatus:7];
  }

  return v3;
}

- (ASAttendee)initWithCalAttendee:(void *)a3 parentEvent:(id)a4
{
  v15.receiver = self;
  v15.super_class = ASAttendee;
  v5 = [(ASItem *)&v15 init:a3];
  v6 = v5;
  if (v5)
  {
    [(ASAttendee *)v5 setStatus:7];
    [(ASAttendee *)v6 setLocalId:MEMORY[0x24C210600](a3)];
    v7 = MEMORY[0x24C210560](a3);
    if (v7)
    {
      [(ASAttendee *)v6 setName:v7];
    }

    v8 = MEMORY[0x24C210570](a3);
    if (v8)
    {
      [(ASAttendee *)v6 setEmail:v8];
    }

    if (v6->_email && !v6->_name)
    {
      [(ASAttendee *)v6 setName:?];
    }

    v9 = CalAttendeeCopyInvitedBy();
    if (v9)
    {
      [(ASAttendee *)v6 setInvitedBy:v9];
    }

    if (CalAttendeeGetType() == 3)
    {
      v10 = 3;
    }

    else
    {
      Role = CalAttendeeGetRole();
      if (Role == 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (Role == 2);
      }
    }

    [(ASAttendee *)v6 setRole:v10];
    Status = CalAttendeeGetStatus();
    if (Status == *MEMORY[0x277CF7138])
    {
      v13 = 6;
    }

    else if (Status > 3)
    {
      v13 = 7;
    }

    else
    {
      v13 = dword_24A14DD60[Status];
    }

    [(ASAttendee *)v6 setStatus:v13];
  }

  return v6;
}

- (ASAttendee)initWithCoder:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ASAttendee;
  v6 = [(ASItem *)&v11 init];
  if (v6)
  {
    if (([v5 allowsKeyedCoding] & 1) == 0)
    {
      [(ASAttendee *)a2 initWithCoder:v6];
    }

    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(ASAttendee *)v6 setName:v7];

    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    [(ASAttendee *)v6 setEmail:v8];

    -[ASAttendee setStatus:](v6, "setStatus:", [v5 decodeIntForKey:@"status"]);
    -[ASAttendee setRole:](v6, "setRole:", [v5 decodeIntForKey:@"role"]);
    -[ASAttendee setLocalId:](v6, "setLocalId:", [v5 decodeIntForKey:@"localId"]);
    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"invitedBy"];
    [(ASAttendee *)v6 setInvitedBy:v9];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASAttendee *)a2 encodeWithCoder:?];
  }

  v6 = [(ASAttendee *)self name];
  [v5 encodeObject:v6 forKey:@"name"];

  v7 = [(ASAttendee *)self email];
  [v5 encodeObject:v7 forKey:@"email"];

  [v5 encodeInt:-[ASAttendee status](self forKey:{"status"), @"status"}];
  [v5 encodeInt:-[ASAttendee role](self forKey:{"role"), @"role"}];
  [v5 encodeInt:-[ASAttendee localId](self forKey:{"localId"), @"localId"}];
  v8 = [(ASAttendee *)self invitedBy];
  [v5 encodeObject:v8 forKey:@"invitedBy"];
}

- (void)appendActiveSyncDataForTask:(id)a3 toData:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(ASAttendee *)self name];
  if (v7)
  {
    [v6 appendTag:10 withStringContent:v7];
  }

  v8 = [(ASAttendee *)self email];
  if (v8)
  {
    [v6 appendTag:9 withStringContent:v8];
  }

  v9 = [v17 taskManager];
  v10 = [v9 protocol];
  if ([v10 sendAttendeeRole])
  {
    v11 = [(ASAttendee *)self role];

    if (v11)
    {
      v12 = [(ASAttendee *)self role];
      v13 = v6;
LABEL_12:
      [v13 appendTag:42 withIntContent:v12];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v14 = [v17 taskManager];
  v15 = [v14 protocol];
  if ([v15 alwaysSendAttendeeRole])
  {
    v16 = [(ASAttendee *)self role];

    if (v16)
    {
      goto LABEL_14;
    }

    v13 = v6;
    v12 = 1;
    goto LABEL_12;
  }

LABEL_14:
}

- (id)fullEmailString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASAttendee *)self name];
  v5 = [(ASAttendee *)self email];
  v6 = [v3 mf_formattedAddressWithName:v4 email:v5 useQuotes:1];

  return v6;
}

- (id)copyOfSelfWithoutLocalID
{
  v3 = objc_opt_new();
  v4 = [(ASAttendee *)self name];
  [v3 setName:v4];

  v5 = [(ASAttendee *)self email];
  [v3 setEmail:v5];

  [v3 setStatus:{-[ASAttendee status](self, "status")}];
  [v3 setRole:{-[ASAttendee role](self, "role")}];
  v6 = [(ASAttendee *)self invitedBy];
  [v3 setInvitedBy:v6];

  return v3;
}

- (id)icsUserAddress
{
  v3 = [(ASAttendee *)self email];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D7F158]);
    v5 = [(ASAttendee *)self email];
    v3 = [v4 initWithEmailAddress:v5];

    v6 = [(ASAttendee *)self name];
    [v3 setCn:v6];

    if ([(ASAttendee *)self role]== 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    [v3 setCutype:v7];
    v8 = [(ASAttendee *)self status];
    if (v8 <= 6 && ((0x7Du >> v8) & 1) != 0)
    {
      [v3 setPartstat:dword_24A14DD80[v8]];
    }

    v9 = [(ASAttendee *)self role];
    if (v9 <= 3)
    {
      [v3 setRole:dword_24A14DD70[v9]];
    }
  }

  return v3;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAttendee.m" lineNumber:241 description:@"We can't unarchive a recurrence if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAttendee.m" lineNumber:254 description:@"We can't archive a recurrence if the coder doesn't allow keyed coding"];
}

@end