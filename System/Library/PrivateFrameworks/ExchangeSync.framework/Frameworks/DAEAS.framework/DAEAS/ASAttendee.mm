@interface ASAttendee
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASAttendee)init;
- (ASAttendee)initWithCalAttendee:(void *)attendee parentEvent:(id)event;
- (ASAttendee)initWithCoder:(id)coder;
- (id)copyOfSelfWithoutLocalID;
- (id)fullEmailString;
- (id)icsUserAddress;
- (void)appendActiveSyncDataForTask:(id)task toData:(id)data;
- (void)applyPlaceHolder;
- (void)encodeWithCoder:(id)coder;
- (void)saveToCalendarWithParentASEvent:(id)event existingRecord:(void *)record isDefaultCalendar:(BOOL)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
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
    v2 = [self conformsToProtocol:&unk_285D64D60];
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
    v2 = [self conformsToProtocol:&unk_285D5E660];
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
    v2 = [self conformsToProtocol:&unk_285D64A10];
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
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_18 = v2;
    notifyOfUnknownTokens___haveChecked_18 = 1;
  }

  return v2 & 1;
}

- (void)applyPlaceHolder
{
  placeHolder = [(ASAttendee *)self placeHolder];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1034];
  v5 = [placeHolder objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASAttendee *)self setName:v5];
    }
  }

  placeHolder2 = [(ASAttendee *)self placeHolder];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:1033];
  v8 = [placeHolder2 objectForKey:v7];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASAttendee *)self setEmail:v8];
    }
  }

  placeHolder3 = [(ASAttendee *)self placeHolder];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:1065];
  v11 = [placeHolder3 objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASAttendee setStatus:](self, "setStatus:", [v11 intValue]);
    }
  }

  placeHolder4 = [(ASAttendee *)self placeHolder];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:1066];
  v14 = [placeHolder4 objectForKey:v13];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASAttendee setRole:](self, "setRole:", [v14 intValue]);
    }
  }

  placeHolder5 = [(ASAttendee *)self placeHolder];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:2064];
  v17 = [placeHolder5 objectForKey:v16];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v17];
      [(ASAttendee *)self setProposedStartTime:v18];
    }
  }

  placeHolder6 = [(ASAttendee *)self placeHolder];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:2065];
  v21 = [placeHolder6 objectForKey:v20];

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

- (void)saveToCalendarWithParentASEvent:(id)event existingRecord:(void *)record isDefaultCalendar:(BOOL)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  calendarCopy = calendar;
  v39 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (-[ASAttendee localId](self, "localId") == -1 || (+[ASLocalDBHelper sharedInstance](ASLocalDBHelper, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), [accountCopy accountID], v12 = objc_claimAutoreleasedReturnValue(), Attendee = MEMORY[0x24C210A30](objc_msgSend(v11, "calDatabaseForAccountID:", v12), -[ASAttendee localId](self, "localId")), v12, v11, !Attendee))
  {
    v15 = +[ASLocalDBHelper sharedInstance];
    accountID = [accountCopy accountID];
    [v15 calDatabaseForAccountID:accountID];
    Attendee = CalDatabaseCreateAttendee();

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  name = [(ASAttendee *)self name];
  if (name)
  {
    MEMORY[0x24C210610](Attendee, name);
  }

  email = [(ASAttendee *)self email];
  if (email)
  {
    MEMORY[0x24C210620](Attendee, email);
  }

  invitedBy = [(ASAttendee *)self invitedBy];
  if (invitedBy)
  {
    CalAttendeeSetInvitedBy();
  }

  [(ASAttendee *)self role];
  CalAttendeeSetType();
  role = [(ASAttendee *)self role];
  if (role <= 3)
  {
    v21 = dword_24A14DD50[role];
    CalAttendeeSetRole();
  }

  CalAttendeeGetPendingStatus();
  status = [(ASAttendee *)self status];
  if (status <= 3)
  {
    if (status && status != 2 && status != 3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (status == 4)
  {
LABEL_21:
    CalAttendeeSetStatus();
    goto LABEL_22;
  }

  if (status != 6)
  {
    if (status != 5)
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
  proposedStartTime = [(ASAttendee *)self proposedStartTime];
  v24 = MEMORY[0x277CF78F0];
  if (proposedStartTime)
  {
    proposedStartTime2 = [(ASAttendee *)self proposedStartTime];
    [proposedStartTime2 timeIntervalSinceReferenceDate];
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
    if (calendarCopy)
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

- (ASAttendee)initWithCalAttendee:(void *)attendee parentEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = ASAttendee;
  v5 = [(ASItem *)&v15 init:attendee];
  v6 = v5;
  if (v5)
  {
    [(ASAttendee *)v5 setStatus:7];
    [(ASAttendee *)v6 setLocalId:MEMORY[0x24C210600](attendee)];
    v7 = MEMORY[0x24C210560](attendee);
    if (v7)
    {
      [(ASAttendee *)v6 setName:v7];
    }

    v8 = MEMORY[0x24C210570](attendee);
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

- (ASAttendee)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ASAttendee;
  v6 = [(ASItem *)&v11 init];
  if (v6)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [(ASAttendee *)a2 initWithCoder:v6];
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(ASAttendee *)v6 setName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    [(ASAttendee *)v6 setEmail:v8];

    -[ASAttendee setStatus:](v6, "setStatus:", [coderCopy decodeIntForKey:@"status"]);
    -[ASAttendee setRole:](v6, "setRole:", [coderCopy decodeIntForKey:@"role"]);
    -[ASAttendee setLocalId:](v6, "setLocalId:", [coderCopy decodeIntForKey:@"localId"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitedBy"];
    [(ASAttendee *)v6 setInvitedBy:v9];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASAttendee *)a2 encodeWithCoder:?];
  }

  name = [(ASAttendee *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  email = [(ASAttendee *)self email];
  [coderCopy encodeObject:email forKey:@"email"];

  [coderCopy encodeInt:-[ASAttendee status](self forKey:{"status"), @"status"}];
  [coderCopy encodeInt:-[ASAttendee role](self forKey:{"role"), @"role"}];
  [coderCopy encodeInt:-[ASAttendee localId](self forKey:{"localId"), @"localId"}];
  invitedBy = [(ASAttendee *)self invitedBy];
  [coderCopy encodeObject:invitedBy forKey:@"invitedBy"];
}

- (void)appendActiveSyncDataForTask:(id)task toData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  name = [(ASAttendee *)self name];
  if (name)
  {
    [dataCopy appendTag:10 withStringContent:name];
  }

  email = [(ASAttendee *)self email];
  if (email)
  {
    [dataCopy appendTag:9 withStringContent:email];
  }

  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  if ([protocol sendAttendeeRole])
  {
    role = [(ASAttendee *)self role];

    if (role)
    {
      role2 = [(ASAttendee *)self role];
      v13 = dataCopy;
LABEL_12:
      [v13 appendTag:42 withIntContent:role2];
      goto LABEL_14;
    }
  }

  else
  {
  }

  taskManager2 = [taskCopy taskManager];
  protocol2 = [taskManager2 protocol];
  if ([protocol2 alwaysSendAttendeeRole])
  {
    role3 = [(ASAttendee *)self role];

    if (role3)
    {
      goto LABEL_14;
    }

    v13 = dataCopy;
    role2 = 1;
    goto LABEL_12;
  }

LABEL_14:
}

- (id)fullEmailString
{
  v3 = MEMORY[0x277CCACA8];
  name = [(ASAttendee *)self name];
  email = [(ASAttendee *)self email];
  v6 = [v3 mf_formattedAddressWithName:name email:email useQuotes:1];

  return v6;
}

- (id)copyOfSelfWithoutLocalID
{
  v3 = objc_opt_new();
  name = [(ASAttendee *)self name];
  [v3 setName:name];

  email = [(ASAttendee *)self email];
  [v3 setEmail:email];

  [v3 setStatus:{-[ASAttendee status](self, "status")}];
  [v3 setRole:{-[ASAttendee role](self, "role")}];
  invitedBy = [(ASAttendee *)self invitedBy];
  [v3 setInvitedBy:invitedBy];

  return v3;
}

- (id)icsUserAddress
{
  email = [(ASAttendee *)self email];

  if (email)
  {
    v4 = objc_alloc(MEMORY[0x277D7F158]);
    email2 = [(ASAttendee *)self email];
    email = [v4 initWithEmailAddress:email2];

    name = [(ASAttendee *)self name];
    [email setCn:name];

    if ([(ASAttendee *)self role]== 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    [email setCutype:v7];
    status = [(ASAttendee *)self status];
    if (status <= 6 && ((0x7Du >> status) & 1) != 0)
    {
      [email setPartstat:dword_24A14DD80[status]];
    }

    role = [(ASAttendee *)self role];
    if (role <= 3)
    {
      [email setRole:dword_24A14DD70[role]];
    }
  }

  return email;
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