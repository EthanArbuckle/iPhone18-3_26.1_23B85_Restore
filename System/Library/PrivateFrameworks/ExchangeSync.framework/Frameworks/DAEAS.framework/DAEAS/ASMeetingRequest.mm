@interface ASMeetingRequest
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASEmailItem)parentEmailItem;
- (ASMeetingRequest)init;
- (ASMeetingRequest)initWithCoder:(id)coder;
- (BOOL)_bailIfNotNewestDataForAccount:(id)account;
- (BOOL)cachedOrganizerIsSelfWithAccount:(id)account;
- (BOOL)saveEmailServerIdToCalendarWithExistingRecord:(void *)record intoCalendar:(void *)calendar account:(id)account;
- (BOOL)saveForwardeesToCalendarWithExistingRecord:(void *)record account:(id)account;
- (BOOL)saveResponseCommentToCalendarWithExistingRecord:(void *)record;
- (BOOL)shouldUseInMemoryAttendeesForAccount:(id)account numExistingAttendees:(unint64_t)attendees;
- (BOOL)writeInviteToCalDBCreateAsRejected:(BOOL)rejected defaultCalendar:(void *)calendar account:(id)account;
- (id)description;
- (id)unactionableICSRepresentationForAccount:(id)account;
- (void)_determineSelfnessWithLocalEvent:(void *)event forAccount:(id)account;
- (void)_setReminderSecsBefore:(id)before;
- (void)encodeWithCoder:(id)coder;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)postProcessApplicationData;
- (void)saveEmailServerIdAndUpdateNotificationToRecord:(void *)record account:(id)account;
- (void)setDTStamp:(id)stamp;
- (void)setOrganizer:(id)organizer;
- (void)takeValuesFromParentEmailForAccount:(id)account;
@end

@implementation ASMeetingRequest

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_31 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_31;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_31 = v2;
    acceptsTopLevelLeaves___haveChecked_31 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_31 == 1)
  {
    v2 = parsingLeafNode___result_31;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_31 = v2;
    parsingLeafNode___haveChecked_31 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_31 == 1)
  {
    v2 = parsingWithSubItems___result_31;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_31 = v2;
    parsingWithSubItems___haveChecked_31 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_31 == 1)
  {
    v2 = frontingBasicTypes___result_31;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_31 = v2;
    frontingBasicTypes___haveChecked_31 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_31 == 1)
  {
    v2 = notifyOfUnknownTokens___result_31;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_31 = v2;
    notifyOfUnknownTokens___haveChecked_31 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v32 = MEMORY[0x277CBEAC0];
    v6 = [ASParseRule alloc];
    selfCopy = self;
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CBEAC0];
    v35 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:40 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:552];
    v33 = [v8 dictionaryWithObjectsAndKeys:{v35, v34, 0}];
    v40 = [(ASParseRule *)v6 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:39 objectClass:v7 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v33];
    v39 = [MEMORY[0x277CCABB0] numberWithInt:551];
    v38 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:40 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:552];
    v9 = [ASParseRule alloc];
    v10 = objc_opt_class();
    v11 = MEMORY[0x277CBEAC0];
    v31 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:28 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:540];
    v29 = [v11 dictionaryWithObjectsAndKeys:{v31, v30, 0}];
    v37 = [(ASParseRule *)v9 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:27 objectClass:v10 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v29];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:539];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:51 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:563];
    v12 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:32 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:4384];
    v14 = [ASParseRule alloc];
    v15 = objc_opt_class();
    v16 = MEMORY[0x277CBEAC0];
    v25 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:21 token:22 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:5398];
    v18 = [v16 dictionaryWithObjectsAndKeys:{v25, v17, 0}];
    v19 = [(ASParseRule *)v14 initWithMinimumNumber:0 maximumNumber:1 codePage:21 token:21 objectClass:v15 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v18];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:5397];
    v5 = [v32 dictionaryWithObjectsAndKeys:{v40, v39, v38, v28, v37, v27, v24, v26, v12, v13, v19, v20, 0}];

    v21 = +[ASItem parseRuleCache];
    v22 = NSStringFromClass(selfCopy);
    [v21 setObject:v5 forKey:v22];
  }

  return v5;
}

- (void)_determineSelfnessWithLocalEvent:(void *)event forAccount:(id)account
{
  accountCopy = account;
  if (![(ASEvent *)self haveCheckedOrganizerEmail])
  {
    [(ASEvent *)self setHaveCheckedOrganizerEmail:1];
    [(ASEvent *)self setCachedOrganizerIsSelf:0];
    attendees = [(ASEvent *)self attendees];
    if ([attendees count])
    {
      organizerEmail = [(ASEvent *)self organizerEmail];
      v7 = [organizerEmail length];

      if (!v7)
      {
        goto LABEL_6;
      }

      attendees = [(ASEvent *)self organizerEmail];
      -[ASEvent setCachedOrganizerIsSelf:](self, "setCachedOrganizerIsSelf:", [accountCopy accountContainsEmailAddress:attendees]);
    }
  }

LABEL_6:
}

- (void)postProcessApplicationData
{
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:538];
  v5 = [applicationData objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue")}];
      [(ASEvent *)self setAllDayEvent:v6];
    }
  }

  applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:541];
  v9 = [applicationData2 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v9];
      [(ASMeetingRequest *)self setDTStamp:v10];
    }
  }

  applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:542];
  v13 = [applicationData3 objectForKey:v12];

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v13];
      [(ASEvent *)self setEndTime:v14];
    }
  }

  applicationData4 = [(ASChangedCollectionLeaf *)self applicationData];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:543];
  v17 = [applicationData4 objectForKey:v16];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "intValue")}];
      [(ASMeetingRequest *)self setInstanceType:v18];
    }
  }

  applicationData5 = [(ASChangedCollectionLeaf *)self applicationData];
  v89 = [applicationData5 objectForKeyedSubscript:&unk_285D57E58];

  if (v89)
  {
    v20 = [[ASLocation alloc] initWithApplicationData:v89];
    [(ASEvent *)self setLocation:v20];
  }

  else
  {
    applicationData6 = [(ASChangedCollectionLeaf *)self applicationData];
    v58 = [MEMORY[0x277CCABB0] numberWithInt:545];
    v20 = [applicationData6 objectForKey:v58];

    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = [[ASLocation alloc] initWithTitle:v20];
        [(ASEvent *)self setLocation:v59];
      }
    }
  }

  applicationData7 = [(ASChangedCollectionLeaf *)self applicationData];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:547];
  v23 = [applicationData7 objectForKey:v22];

  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASMeetingRequest *)self setOrganizer:v23];
    }
  }

  applicationData8 = [(ASChangedCollectionLeaf *)self applicationData];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:549];
  v26 = [applicationData8 objectForKey:v25];

  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v26, "intValue")}];
      [(ASMeetingRequest *)self _setReminderSecsBefore:v27];
    }
  }

  applicationData9 = [(ASChangedCollectionLeaf *)self applicationData];
  v29 = [MEMORY[0x277CCABB0] numberWithInt:550];
  v30 = [applicationData9 objectForKey:v29];

  if (v30)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v30, "intValue")}];
      [(ASEvent *)self setResponseRequested:v31];
    }
  }

  applicationData10 = [(ASChangedCollectionLeaf *)self applicationData];
  v33 = [MEMORY[0x277CCABB0] numberWithInt:562];
  v34 = [applicationData10 objectForKey:v33];

  if (v34)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v34, "intValue")}];
      [(ASEvent *)self setSensitivity:v35];
    }
  }

  applicationData11 = [(ASChangedCollectionLeaf *)self applicationData];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:532];
  v38 = [applicationData11 objectForKey:v37];

  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setSubject:v38];
    }
  }

  applicationData12 = [(ASChangedCollectionLeaf *)self applicationData];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:561];
  v41 = [applicationData12 objectForKey:v40];

  if (v41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v41];
      [(ASEvent *)self setStartTime:v42];
    }
  }

  applicationData13 = [(ASChangedCollectionLeaf *)self applicationData];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:527];
  v45 = [applicationData13 objectForKey:v44];

  if (v45)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v46 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v45];
      [(ASMeetingRequest *)self setDateReceived:v46];
    }
  }

  applicationData14 = [(ASChangedCollectionLeaf *)self applicationData];
  v48 = [MEMORY[0x277CCABB0] numberWithInt:563];
  v49 = [applicationData14 objectForKey:v48];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASEvent *)self setTimeZone:v49];
  }

  applicationData15 = [(ASChangedCollectionLeaf *)self applicationData];
  v51 = [MEMORY[0x277CCABB0] numberWithInt:548];
  v52 = [applicationData15 objectForKey:v51];

  if (v52)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v53 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v52];
      [(ASMeetingRequest *)self setRecurrenceId:v53];
    }
  }

  applicationData16 = [(ASChangedCollectionLeaf *)self applicationData];
  v55 = [applicationData16 objectForKeyedSubscript:&unk_285D57E70];

  if (v55)
  {
    v56 = [[ASEventUID alloc] initWithUidString:v55];
LABEL_48:
    v61 = v56;
    [(ASEvent *)self setEventUID:v56];

    eventUID = [(ASEvent *)self eventUID];
    exceptionDate = [(ASMeetingRequest *)self exceptionDate];
    [eventUID setExceptionDate:exceptionDate];

    goto LABEL_49;
  }

  applicationData17 = [(ASChangedCollectionLeaf *)self applicationData];
  v55 = [applicationData17 objectForKeyedSubscript:&unk_285D57E88];

  if (v55)
  {
    v56 = [[ASEventUID alloc] initWithGlobalObjectIdString:v55];
    goto LABEL_48;
  }

LABEL_49:
  applicationData18 = [(ASChangedCollectionLeaf *)self applicationData];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:5651];
  v66 = [applicationData18 objectForKey:v65];

  if (v66)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASMeetingRequest setMeetingMessageType:](self, "setMeetingMessageType:", [v66 intValue]);
    }
  }

  applicationData19 = [(ASChangedCollectionLeaf *)self applicationData];
  v68 = [applicationData19 objectForKeyedSubscript:&unk_285D57EA0];

  v69 = [v68 objectForKeyedSubscript:&unk_285D57EB8];
  [(ASEvent *)self setRecurrence:v69];

  applicationData20 = [(ASChangedCollectionLeaf *)self applicationData];
  v71 = [MEMORY[0x277CCABB0] numberWithInt:575];
  v72 = [applicationData20 objectForKey:v71];

  if (v72)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v73 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v72, "intValue")}];
      [(ASEvent *)self setDisallowNewTimeProposal:v73];
    }
  }

  applicationData21 = [(ASChangedCollectionLeaf *)self applicationData];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:5397];
  v76 = [applicationData21 objectForKey:v75];

  if (v76)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASMeetingRequest *)self setForwardees:v76];
    }
  }

  applicationData22 = [(ASChangedCollectionLeaf *)self applicationData];
  v78 = [MEMORY[0x277CCABB0] numberWithInt:2064];
  v79 = [applicationData22 objectForKey:v78];

  if (v79)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v80 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v79];
      [(ASEvent *)self setProposedStartTime:v80];
    }
  }

  applicationData23 = [(ASChangedCollectionLeaf *)self applicationData];
  v82 = [MEMORY[0x277CCABB0] numberWithInt:2065];
  v83 = [applicationData23 objectForKey:v82];

  if (v83)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v84 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v83];
      [(ASEvent *)self setProposedEndTime:v84];
    }
  }

  [(ASChangedCollectionLeaf *)self setApplicationData:0];
  parentEmailItem = [(ASMeetingRequest *)self parentEmailItem];
  folderId = [parentEmailItem folderId];
  [(ASMeetingRequest *)self setCachedParentFolderId:folderId];

  parentEmailItem2 = [(ASMeetingRequest *)self parentEmailItem];
  serverID = [parentEmailItem2 serverID];
  [(ASMeetingRequest *)self setCachedParentServerId:serverID];
}

- (BOOL)_bailIfNotNewestDataForAccount:(id)account
{
  protocol = [account protocol];
  serverCreatesEventChangesForInvitations = [protocol serverCreatesEventChangesForInvitations];

  if (!serverCreatesEventChangesForInvitations)
  {
    return 1;
  }

  exceptionDate = [(ASMeetingRequest *)self exceptionDate];
  v7 = exceptionDate == 0;

  return v7;
}

- (BOOL)saveEmailServerIdToCalendarWithExistingRecord:(void *)record intoCalendar:(void *)calendar account:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = ASMeetingRequest;
  v9 = [(ASEvent *)&v11 setCalEventWithExistingRecord:record intoCalendar:calendar];
  if (v9)
  {
    [(ASMeetingRequest *)self saveEmailServerIdAndUpdateNotificationToRecord:record account:accountCopy];
  }

  return v9;
}

- (void)saveEmailServerIdAndUpdateNotificationToRecord:(void *)record account:(id)account
{
  v77 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v8 = MEMORY[0x277D03988];
  if (record)
  {
    Status = CalCalendarItemGetStatus();
    v10 = [(ASEvent *)self copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:record forAccount:accountCopy];
    if (v10)
    {
      v11 = v10;
      v12 = CalAttendeeGetStatus();
      CFRelease(v11);
    }

    else
    {
      v15 = DALoggingwithCategory();
      v16 = *(v8 + 3);
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 138412290;
        *v72 = self;
        _os_log_impl(&dword_24A0AC000, v15, v16, "Could not create a self attendee for meeting request %@.  Likely this is a request from ourselves, to ourselves.", buf, 0xCu);
      }

      v12 = 7;
    }

    ModifiedDate = CalCalendarItemCopyLastModifiedDate();
    protocol = [accountCopy protocol];
    serverUpdatesAttendeeStatusOnEvents = [protocol serverUpdatesAttendeeStatusOnEvents];

    if (!serverUpdatesAttendeeStatusOnEvents)
    {
      goto LABEL_13;
    }

    if (!ModifiedDate)
    {
      goto LABEL_14;
    }

    dTStamp = [(ASEvent *)self dTStamp];
    if (!dTStamp)
    {
      goto LABEL_14;
    }

    v21 = dTStamp;
    dTStamp2 = [(ASEvent *)self dTStamp];
    v68 = accountCopy;
    v23 = a2;
    v24 = Status;
    v25 = v8;
    v26 = [dTStamp2 compare:ModifiedDate];

    v36 = v26 == 1;
    v8 = v25;
    Status = v24;
    a2 = v23;
    accountCopy = v68;
    if (v36)
    {
LABEL_13:
      v13 = 1;
    }

    else
    {
LABEL_14:
      v27 = DALoggingwithCategory();
      v28 = *(v8 + 6);
      if (os_log_type_enabled(v27, v28))
      {
        [(ASEvent *)self dTStamp];
        v69 = a2;
        v29 = Status;
        v31 = v30 = v8;
        *buf = 138412802;
        *v72 = self;
        *&v72[8] = 2112;
        v73 = v31;
        *v74 = 2112;
        *&v74[2] = ModifiedDate;
        _os_log_impl(&dword_24A0AC000, v27, v28, "Received a meeting request %@, but the dtstamp %@ isn't newer than what's in the db %@.  Not alerting the user for this save", buf, 0x20u);

        v8 = v30;
        Status = v29;
        a2 = v69;
      }

      v13 = 0;
    }

    v14 = v12;
  }

  else
  {
    Status = 0;
    v13 = 1;
    v14 = 7;
    LODWORD(v12) = 2;
  }

  if (![(ASEvent *)self calEvent])
  {
    [ASMeetingRequest saveEmailServerIdAndUpdateNotificationToRecord:a2 account:self];
  }

  if ([(ASEvent *)self shouldUpdateStatus])
  {
    v32 = [(ASEvent *)self _nextEventStatusWithOldStatus:Status meetingClassType:[(ASMeetingRequest *)self meetingClassType] account:accountCopy];
    v70 = Status;
    if (v32)
    {
      v33 = [(ASEvent *)self _nextAttendeeStatusWithOldStatus:v14 meetingClassType:[(ASMeetingRequest *)self meetingClassType] account:accountCopy];
      v34 = v8;
      if ([(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:accountCopy])
      {
        LODWORD(v12) = 7;
      }

      else if ([(ASMeetingRequest *)self meetingClassType]!= 2)
      {
        LODWORD(v12) = v33;
      }

      v36 = v70 == 1 && v32 == 3;
      v37 = v36;
      if ((v12 & 0xFFFFFFFD) == 0)
      {
        v37 = 0;
      }

      v35 = v37 | v13 & (v12 == 0);
      v38 = [(ASEvent *)self copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:[(ASEvent *)self calEvent] forAccount:accountCopy];
      if (v38)
      {
        v39 = v38;
        CalAttendeeGetPendingStatus();
        CalAttendeeSetStatus();
        CalAttendeeSetPendingStatus();
        CFRelease(v39);
      }
    }

    else
    {
      v34 = v8;
      v35 = 0;
      LODWORD(v12) = 7;
    }

    [(ASEvent *)self calEvent];
    CalCalendarItemSetStatus();
    if (v35)
    {
      [(ASEvent *)self calEvent];
      CalEventSetNeedsNotification();
    }

    v40 = DALoggingwithCategory();
    v8 = v34;
    v41 = *(v34 + 6);
    if (os_log_type_enabled(v40, v41))
    {
      meetingClassType = [(ASMeetingRequest *)self meetingClassType];
      v43 = [(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:accountCopy];
      *buf = 67110400;
      *v72 = v32;
      *&v72[4] = 1024;
      *&v72[6] = v12;
      LOWORD(v73) = 1024;
      *(&v73 + 2) = v70;
      HIWORD(v73) = 1024;
      *v74 = v14;
      *&v74[4] = 1024;
      *&v74[6] = meetingClassType;
      v8 = v34;
      v75 = 1024;
      v76 = v43;
      _os_log_impl(&dword_24A0AC000, v40, v41, "Setting new event status %d, attendee status %d, as I had old event status %d, attendee status %d, and meetingClassType %d, and organizerIsSelf is %d", buf, 0x26u);
    }
  }

  [(ASEvent *)self calEvent];
  v44 = CalEventCopyEventActions();
  if ([v44 count])
  {
    v45 = 0;
    do
    {
      [v44 objectAtIndexedSubscript:v45];

      [(ASEvent *)self calEvent];
      CalEventRemoveEventAction();
      ++v45;
    }

    while (v45 < [v44 count]);
  }

  v46 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  [v46 calDatabaseForAccountID:accountID];
  EventAction = CalDatabaseCreateEventAction();

  cachedParentFolderId = [(ASMeetingRequest *)self cachedParentFolderId];
  CalEventActionSetExternalFolderID();

  cachedParentServerId = [(ASMeetingRequest *)self cachedParentServerId];
  CalEventActionSetExternalID();

  v51 = CalEventCopyEventActions();
  if (!v51)
  {
    v54 = 0;
    v53 = 0;
    v55 = 0;
    goto LABEL_54;
  }

  v52 = v51;
  if (!CFArrayGetCount(v51) || !CFArrayGetValueAtIndex(v52, 0))
  {
    v55 = 0;
    v53 = 0;
LABEL_51:
    v54 = 0;
    goto LABEL_52;
  }

  v53 = CalEventActionCopyExternalRepresentation();
  if (!v53)
  {
    v55 = 0;
    goto LABEL_51;
  }

  v54 = ASUnarchiveDate(@"emailDateReceived", v53);
  v55 = 1;
LABEL_52:
  CFRelease(v52);
LABEL_54:
  dateReceived = [(ASMeetingRequest *)self dateReceived];

  if (dateReceived && (!v54 || [(NSDate *)self->_dateReceived compare:v54]== NSOrderedDescending))
  {
    v57 = DALoggingwithCategory();
    v58 = *(v8 + 6);
    if (os_log_type_enabled(v57, v58))
    {
      dateReceived2 = [(ASMeetingRequest *)self dateReceived];
      *buf = 138412290;
      *v72 = dateReceived2;
      _os_log_impl(&dword_24A0AC000, v57, v58, "Setting ReceivedDate %@ in EventAction", buf, 0xCu);
    }

    v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dateReceived3 = [(ASMeetingRequest *)self dateReceived];
    [v60 setObject:dateReceived3 forKey:@"emailDateReceived"];

    v62 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v60];
    CalEventActionSetExternalRepresentation();

    goto LABEL_64;
  }

  v63 = v55 ^ 1;
  if (!v53)
  {
    v63 = 1;
  }

  if (v63)
  {
LABEL_64:
    if (!v53)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  CalEventActionSetExternalRepresentation();
LABEL_65:
  CFRelease(v53);
LABEL_66:
  v64 = DALoggingwithCategory();
  v65 = *(v8 + 6);
  if (os_log_type_enabled(v64, v65))
  {
    [(ASEvent *)self calEvent];
    ID = CalEntityGetID();
    *buf = 67109120;
    *v72 = ID;
    _os_log_impl(&dword_24A0AC000, v64, v65, "Adding event action for event with RowID: %d", buf, 8u);
  }

  [(ASEvent *)self calEvent];
  CalEventAddEventAction();
  CFRelease(EventAction);

  v67 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveResponseCommentToCalendarWithExistingRecord:(void *)record
{
  v43 = *MEMORY[0x277D85DE8];
  if (record)
  {
    from = [(ASEvent *)self from];
    firstObject = [from firstObject];

    mf_uncommentedAddress = [firstObject mf_uncommentedAddress];
    v7 = DALoggingwithCategory();
    v8 = MEMORY[0x277D03988];
    v9 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v7, v9, "Saving response comments", buf, 2u);
    }

    if (mf_uncommentedAddress)
    {
      v10 = CalCalendarItemCopyAttendees();
      if (v10)
      {
        v11 = v10;
        Count = CFArrayGetCount(v10);
        v13 = DALoggingwithCategory();
        if (os_log_type_enabled(v13, v9))
        {
          *buf = 134217984;
          v42 = Count;
          _os_log_impl(&dword_24A0AC000, v13, v9, "Attendees count is %ld", buf, 0xCu);
        }

        if (Count < 1)
        {
          v18 = 0;
        }

        else
        {
          v40 = firstObject;
          v14 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
            v16 = MEMORY[0x24C210570]();
            if ([v16 isEqualToString:mf_uncommentedAddress])
            {
              body = [(ASEvent *)self body];

              if (body)
              {
                break;
              }
            }

            if (Count == ++v14)
            {
              v18 = 0;
              firstObject = v40;
              goto LABEL_43;
            }
          }

          CalParticipantGetCommentLastModified();
          v24 = v23;
          dateReceived = [(ASMeetingRequest *)self dateReceived];
          [dateReceived timeIntervalSinceReferenceDate];
          v27 = v26;

          if (v27 <= v24)
          {
            v30 = DALoggingwithCategory();
            if (os_log_type_enabled(v30, v9))
            {
              *buf = 0;
              _os_log_impl(&dword_24A0AC000, v30, v9, "Not adding attendee response comment, because it's older than the one in the database.", buf, 2u);
            }

            v18 = 0;
            firstObject = v40;
          }

          else
          {
            body2 = [(ASEvent *)self body];
            newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
            v30 = [body2 stringByTrimmingCharactersInSet:newlineCharacterSet];

            if ([v30 length])
            {
              v39 = newlineCharacterSet;
              v38 = MEMORY[0x24C2105A0](ValueAtIndex);
              v31 = [v30 compare:?];
              v32 = DALoggingwithCategory();
              v33 = os_log_type_enabled(v32, v9);
              if (v31)
              {
                if (v33)
                {
                  *buf = 138412290;
                  v42 = v30;
                  _os_log_impl(&dword_24A0AC000, v32, v9, "Adding attendee response comment: %@", buf, 0xCu);
                }

                MEMORY[0x24C210670](ValueAtIndex, v30);
                v18 = 1;
                CalParticipantSetCommentChanged();
                CalParticipantSetCommentLastModified();
                CalEventAddInvitationChangedProperties();
                proposedStartTime = [(ASEvent *)self proposedStartTime];

                if (!proposedStartTime)
                {
                  CalEventSetNeedsNotification();
                }
              }

              else
              {
                if (v33)
                {
                  *buf = 0;
                  _os_log_impl(&dword_24A0AC000, v32, v9, "Not adding attendee response comment, because it is identical to existing comment.", buf, 2u);
                }

                v18 = 0;
              }

              newlineCharacterSet = v39;
              firstObject = v40;
              v35 = v38;
            }

            else
            {
              v35 = DALoggingwithCategory();
              firstObject = v40;
              if (os_log_type_enabled(v35, v9))
              {
                *buf = 0;
                _os_log_impl(&dword_24A0AC000, v35, v9, "Not adding attendee response comment, because it only contains newline.", buf, 2u);
              }

              v18 = 0;
            }
          }
        }

LABEL_43:
        CFRelease(v11);
        goto LABEL_44;
      }

      v20 = DALoggingwithCategory();
      v21 = *(v8 + 6);
      if (os_log_type_enabled(v20, v21))
      {
        *buf = 0;
        v22 = "No attendees, cannot save response comments";
        goto LABEL_21;
      }
    }

    else
    {
      v20 = DALoggingwithCategory();
      v21 = *(v8 + 6);
      if (os_log_type_enabled(v20, v21))
      {
        *buf = 0;
        v22 = "No email address, cannot save response comments";
LABEL_21:
        _os_log_impl(&dword_24A0AC000, v20, v21, v22, buf, 2u);
      }
    }

    v18 = 0;
LABEL_44:

    goto LABEL_45;
  }

  firstObject = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(firstObject, v19))
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, firstObject, v19, "No existing record, cannot save response comments", buf, 2u);
  }

  v18 = 0;
LABEL_45:

  v36 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)saveForwardeesToCalendarWithExistingRecord:(void *)record account:(id)account
{
  v42 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (record)
  {
    v7 = CalCalendarItemCopyAttendees();
    v8 = CalCalendarItemCopyAttendeesPendingDeletion();
    if (v7)
    {
      v9 = [v7 mutableCopy];
    }

    else
    {
      v9 = objc_opt_new();
    }

    v12 = v9;
    v34 = v7;
    v35 = accountCopy;
    if (v8)
    {
      [v9 addObjectsFromArray:v8];
    }

    v33 = v8;
    v13 = objc_alloc(MEMORY[0x277CBEB58]);
    forwardees = [(ASMeetingRequest *)self forwardees];
    v15 = [v13 initWithArray:forwardees];

    v16 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          email = [v22 email];
          if (email)
          {
            [v16 setObject:v22 forKeyedSubscript:email];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v19);
    }

    accountCopy = v35;
    if ([v12 count])
    {
      v24 = 0;
      do
      {
        v25 = [v12 objectAtIndexedSubscript:v24];

        v26 = MEMORY[0x24C210570](v25);
        if (v26)
        {
          v27 = [v16 objectForKeyedSubscript:v26];
          if (v27)
          {
            [v17 removeObject:v27];
            [v27 setLocalId:MEMORY[0x24C210600](v25)];
            [v27 saveToCalendarWithParentASEvent:self existingRecord:record isDefaultCalendar:1 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:v35];
          }
        }

        ++v24;
      }

      while (v24 < [v12 count]);
    }

    allObjects = [v17 allObjects];
    if ([allObjects count])
    {
      v29 = 0;
      do
      {
        v30 = [allObjects objectAtIndexedSubscript:v29];
        [v30 saveToCalendarWithParentASEvent:self existingRecord:record isDefaultCalendar:1 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:v35];

        ++v29;
      }

      while (v29 < [allObjects count]);
    }

    v10 = v34;
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v10, v11, "No existing record, cannot save forwardees", buf, 2u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return record != 0;
}

- (BOOL)shouldUseInMemoryAttendeesForAccount:(id)account numExistingAttendees:(unint64_t)attendees
{
  attendees = [(ASEvent *)self attendees];
  v6 = [attendees count];

  if (attendees)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  return !v7;
}

- (BOOL)writeInviteToCalDBCreateAsRejected:(BOOL)rejected defaultCalendar:(void *)calendar account:(id)account
{
  rejectedCopy = rejected;
  v66 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v9 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  [v9 calDatabaseForAccountID:accountID];

  v11 = [(ASMeetingRequest *)self meetingClassType]- 1;
  if (v11 > 5)
  {
    if ([(ASMeetingRequest *)self meetingMessageType]- 4 > 2)
    {
LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }

LABEL_6:
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v14))
    {
      v64 = 67109378;
      *v65 = [(ASMeetingRequest *)self meetingMessageType];
      *&v65[4] = 2112;
      *&v65[6] = self;
      _os_log_impl(&dword_24A0AC000, v13, v14, "Not saving invitation, because it had meeting message type %d.  Invite %@", &v64, 0x12u);
    }

    goto LABEL_9;
  }

  if ([(ASMeetingRequest *)self meetingMessageType]- 4 < 3)
  {
    goto LABEL_6;
  }

  if (calendar)
  {
    v12 = CalCalendarCopyStore();
  }

  else
  {
    v12 = 0;
  }

  eventUID = [(ASEvent *)self eventUID];
  [eventUID uidForCalFramework];
  v19 = CalDatabaseCopyAllEventsWithUniqueIdentifierInStore();

  Count = CFArrayGetCount(v19);
  if (v19)
  {
    CFRelease(v19);
  }

  if (Count >= 2)
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v21, v22))
    {
      eventUID2 = [(ASEvent *)self eventUID];
      uidForCalFramework = [eventUID2 uidForCalFramework];
      v64 = 134218242;
      *v65 = Count;
      *&v65[8] = 2112;
      *&v65[10] = uidForCalFramework;
      _os_log_impl(&dword_24A0AC000, v21, v22, "Found %ld events with the same UID %@. Not updating them.", &v64, 0x16u);
    }

LABEL_18:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_9;
  }

  eventUID3 = [(ASEvent *)self eventUID];
  [eventUID3 uidForCalFramework];
  v26 = CalDatabaseCopyEventWithUniqueIdentifierInStore();

  if (((0x1Cu >> v11) & 1) == 0)
  {
    if ((0x20u >> v11))
    {
      protocol = [accountCopy protocol];
      supportsForwarderTracking = [protocol supportsForwarderTracking];

      if (supportsForwarderTracking)
      {
        if (v26)
        {
          v27 = [(ASMeetingRequest *)self saveForwardeesToCalendarWithExistingRecord:v26 account:accountCopy];
          goto LABEL_22;
        }

        v54 = DALoggingwithCategory();
        v55 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v54, v55))
        {
          eventUID4 = [(ASEvent *)self eventUID];
          uidForCalFramework2 = [eventUID4 uidForCalFramework];
          v64 = 138412290;
          *v65 = uidForCalFramework2;
          _os_log_impl(&dword_24A0AC000, v54, v55, "Do not create forward notification event with UID %@", &v64, 0xCu);
        }

        v26 = 0;
      }

      v15 = 0;
      goto LABEL_76;
    }

    if (!v26)
    {
      if ([(ASMeetingRequest *)self meetingClassType]== 2)
      {
        exceptionDate = [(ASMeetingRequest *)self exceptionDate];

        if (exceptionDate)
        {
          v34 = DALoggingwithCategory();
          v35 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v34, v35))
          {
            LOWORD(v64) = 0;
            _os_log_impl(&dword_24A0AC000, v34, v35, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore", &v64, 2u);
          }

          eventUID5 = [(ASEvent *)self eventUID];
          [eventUID5 uidWithoutExceptionDate];
          v37 = CalDatabaseCopyEventWithUniqueIdentifierInStore();

          if (v37)
          {
            CalEventGetLastModifiedDate();
            v39 = v38;
            CFRelease(v37);
            dTStamp = [(ASEvent *)self dTStamp];
            [dTStamp timeIntervalSinceReferenceDate];
            v42 = v41;

            if (v42 <= v39)
            {
              goto LABEL_18;
            }
          }
        }
      }

      if (calendar)
      {
        CFRetain(calendar);
      }

LABEL_43:
      if (rejectedCopy)
      {
        [(ASEvent *)self setShouldUpdateStatus:0];
      }

      protocol2 = [accountCopy protocol];
      processFullMeetingInvitationData = [protocol2 processFullMeetingInvitationData];

      if (processFullMeetingInvitationData)
      {
        if ([(ASMeetingRequest *)self saveToCalendarWithExistingRecord:v26 intoCalendar:calendar shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:accountCopy])
        {
LABEL_47:
          if (!v26 && rejectedCopy && ![(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:accountCopy])
          {
            v45 = DALoggingwithCategory();
            v46 = *(MEMORY[0x277D03988] + 6);
            if (os_log_type_enabled(v45, v46))
            {
              LOWORD(v64) = 0;
              _os_log_impl(&dword_24A0AC000, v45, v46, "Setting Attendee status to rejected, as I created an invite for a trash folder", &v64, 2u);
            }

            [(ASEvent *)self calEvent];
            v47 = CalCalendarItemCopySelfAttendee();
            if (v47)
            {
              v48 = v47;
              CalAttendeeGetPendingStatus();
              CalAttendeeSetStatus();
              CalAttendeeSetPendingStatus();
              CFRelease(v48);
            }
          }

          goto LABEL_56;
        }
      }

      else if (v26)
      {
        if ([(ASMeetingRequest *)self saveEmailServerIdToCalendarWithExistingRecord:v26 intoCalendar:calendar account:accountCopy])
        {
LABEL_56:
          protocol3 = [accountCopy protocol];
          if ([protocol3 useSmartMailTasks])
          {
            sender = [(ASMeetingRequest *)self sender];

            if (sender)
            {
              if (![(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:accountCopy])
              {
                [(ASEvent *)self calEvent];
                v51 = CalCalendarItemCopySelfAttendee();
                if (v51)
                {
                  v52 = v51;
                  sender2 = [(ASMeetingRequest *)self sender];
                  CalAttendeeSetInvitedBy();

                  CFRelease(v52);
                }
              }
            }
          }

          else
          {
          }

          v15 = 1;
          goto LABEL_74;
        }
      }

      else if ([(ASMeetingRequest *)self meetingClassType]== 1)
      {
        if ([(ASMeetingRequest *)self saveToCalendarWithExistingRecord:0 intoCalendar:calendar shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:accountCopy])
        {
          goto LABEL_47;
        }
      }

      else
      {
        v58 = DALoggingwithCategory();
        v59 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v58, v59))
        {
          LOWORD(v64) = 0;
          _os_log_impl(&dword_24A0AC000, v58, v59, "Not adding a cancelled meeting request to CalDB", &v64, 2u);
        }
      }

      v15 = 0;
LABEL_74:
      if (calendar)
      {
        CFRelease(calendar);
      }

      goto LABEL_76;
    }

    v30 = CalEventCopyOriginalEvent();
    if ([(ASMeetingRequest *)self meetingClassType]== 2)
    {
      instanceType = [(ASMeetingRequest *)self instanceType];
      if (![instanceType intValue])
      {
        exceptionDate2 = [(ASMeetingRequest *)self exceptionDate];
        if (exceptionDate2)
        {
        }

        else
        {

          if (v30 && v30 != v26)
          {
            calendar = CalCalendarItemCopyCalendar();
LABEL_34:
            CFRelease(v30);
            goto LABEL_43;
          }

          instanceType = CalCalendarItemCopyRecurrences();
          if ([instanceType count])
          {
            writeOutBrokenCancelationRequests = [MEMORY[0x277D03910] writeOutBrokenCancelationRequests];
            v61 = DALoggingwithCategory();
            v62 = *(MEMORY[0x277D03988] + 3);
            v63 = os_log_type_enabled(v61, v62);
            if (!writeOutBrokenCancelationRequests)
            {
              if (v63)
              {
                v64 = 138412290;
                *v65 = self;
                _os_log_impl(&dword_24A0AC000, v61, v62, "Ignoring broken meeting request %@.  Apologies, we weren't given enough info to apply it correctly", &v64, 0xCu);
              }

              if (v30)
              {
                CFRelease(v30);
              }

              CFRelease(v26);
              if (v12)
              {
                CFRelease(v12);
              }

              goto LABEL_9;
            }

            if (v63)
            {
              v64 = 138412290;
              *v65 = self;
              _os_log_impl(&dword_24A0AC000, v61, v62, "Found a broken cancelation email, but will write it out regardless, based on profile settings %@", &v64, 0xCu);
            }
          }
        }
      }
    }

    calendar = CalCalendarItemCopyCalendar();
    if (!v30)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v27 = [(ASMeetingRequest *)self saveResponseCommentToCalendarWithExistingRecord:v26];
LABEL_22:
  v15 = v27;
LABEL_76:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  accountCopy = account;
  callbackDictCopy = callbackDict;
  dictCopy = dict;
  parentCopy = parent;
  rootCopy = root;
  contextCopy = context;
  parent = [parentCopy parent];
  [(ASMeetingRequest *)self setParentEmailItem:parent];

  [(ASChangedCollectionLeaf *)self setValidateOpeningTokens:0];
  v22.receiver = self;
  v22.super_class = ASMeetingRequest;
  [(ASEvent *)&v22 parseASParseContext:contextCopy root:rootCopy parent:parentCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy account:accountCopy];

  parsingState = self->super.super.super._parsingState;
  if ((parsingState - 3) <= 1)
  {
    self->super.super.super._parsingState = parsingState;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  subject = [(ASEvent *)self subject];
  startTime = [(ASEvent *)self startTime];
  v7 = [v3 stringWithFormat:@"<%@: [%@] [%@]>", v4, subject, startTime];

  return v7;
}

- (ASMeetingRequest)init
{
  v5.receiver = self;
  v5.super_class = ASMeetingRequest;
  v2 = [(ASEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ASEvent *)v2 setCalculateNextStatusAsIfMeetingRequest:1];
    [(ASEvent *)v3 setShouldUpdateStatus:1];
    [(ASMeetingRequest *)v3 setMeetingMessageType:0];
  }

  return v3;
}

- (void)_setReminderSecsBefore:(id)before
{
  if (before)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(before, "intValue") / 60)}];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ASEvent *)self setReminderMinsBefore:v4];
}

- (void)takeValuesFromParentEmailForAccount:(id)account
{
  v65 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  [(ASEvent *)self setHaveCheckedOrganizerEmail:0];
  subject = [(ASEvent *)self subject];

  if (!subject)
  {
    parentEmailItem = [(ASMeetingRequest *)self parentEmailItem];
    subject2 = [parentEmailItem subject];
    v8 = [subject2 mf_decodeMimeHeaderValueWithCharsetHint:@"UTF-8"];
    [(ASEvent *)self setSubject:v8];
  }

  body = [(ASEvent *)self body];

  if (!body)
  {
    parentEmailItem2 = [(ASMeetingRequest *)self parentEmailItem];
    body2 = [parentEmailItem2 body];

    if (body2)
    {
      [(ASEvent *)self setBody:body2];
      parentEmailItem3 = [(ASMeetingRequest *)self parentEmailItem];
      -[ASEvent setBodyTruncated:](self, "setBodyTruncated:", [parentEmailItem3 bodyTruncated]);
    }
  }

  from = [(ASEvent *)self from];

  if (!from)
  {
    parentEmailItem4 = [(ASMeetingRequest *)self parentEmailItem];
    from2 = [parentEmailItem4 from];
    [(ASEvent *)self setFrom:from2];
  }

  dateReceived = [(ASMeetingRequest *)self dateReceived];

  if (!dateReceived)
  {
    parentEmailItem5 = [(ASMeetingRequest *)self parentEmailItem];
    date = [parentEmailItem5 date];
    [(ASMeetingRequest *)self setDateReceived:date];
  }

  attendees = [(ASEvent *)self attendees];

  if (!attendees)
  {
    v52 = accountCopy;
    v20 = objc_opt_new();
    parentEmailItem6 = [(ASMeetingRequest *)self parentEmailItem];
    v22 = [parentEmailItem6 to];

    selfCopy = self;
    parentEmailItem7 = [(ASMeetingRequest *)self parentEmailItem];
    v24 = [parentEmailItem7 cc];

    v25 = objc_opt_new();
    v51 = v22;
    [v25 addObjectsFromArray:v22];
    v50 = v24;
    [v25 addObjectsFromArray:v24];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v60;
      do
      {
        v29 = 0;
        do
        {
          if (*v60 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v59 + 1) + 8 * v29);
          v31 = objc_opt_new();
          v32 = [v30 mf_decodeMimeHeaderValueWithCharsetHint:@"UTF-8"];
          mf_addressComment = [v32 mf_addressComment];
          v34 = mf_addressComment;
          if (mf_addressComment && ([mf_addressComment isEqualToString:v32] & 1) == 0)
          {
            [v31 setName:v34];
          }

          mf_uncommentedAddress = [v32 mf_uncommentedAddress];
          [v31 setEmail:mf_uncommentedAddress];

          [v20 addObject:v31];
          ++v29;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v27);
    }

    self = selfCopy;
    [(ASEvent *)selfCopy setAttendees:v20];

    accountCopy = v52;
  }

  sender = [(ASMeetingRequest *)self sender];

  if (!sender)
  {
    parentEmailItem8 = [(ASMeetingRequest *)self parentEmailItem];
    sender2 = [parentEmailItem8 sender];
    [(ASMeetingRequest *)self setSender:sender2];
  }

  forwardees = [(ASMeetingRequest *)self forwardees];

  if (forwardees)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    forwardees2 = [(ASMeetingRequest *)self forwardees];
    v41 = [forwardees2 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v56;
      do
      {
        v44 = 0;
        do
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(forwardees2);
          }

          v45 = *(*(&v55 + 1) + 8 * v44);
          parentEmailItem9 = [(ASMeetingRequest *)self parentEmailItem];
          from3 = [parentEmailItem9 from];
          v48 = [from3 objectAtIndexedSubscript:0];
          [v45 setInvitedBy:v48];

          ++v44;
        }

        while (v42 != v44);
        v42 = [forwardees2 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v42);
    }
  }

  [(ASMeetingRequest *)self _determineSelfnessWithLocalEvent:0 forAccount:accountCopy];

  v49 = *MEMORY[0x277D85DE8];
}

- (void)setOrganizer:(id)organizer
{
  organizerCopy = organizer;
  v4 = [organizerCopy mf_decodeMimeHeaderValueWithCharsetHint:@"UTF-8"];
  mf_addressComment = [v4 mf_addressComment];
  v6 = mf_addressComment;
  if (mf_addressComment && ([mf_addressComment isEqualToString:organizerCopy] & 1) == 0)
  {
    [(ASEvent *)self setOrganizerName:v6];
  }

  mf_uncommentedAddress = [v4 mf_uncommentedAddress];
  [(ASEvent *)self setOrganizerEmail:mf_uncommentedAddress];
}

- (void)setDTStamp:(id)stamp
{
  [stamp timeIntervalSinceReferenceDate];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  v6.receiver = self;
  v6.super_class = ASMeetingRequest;
  [(ASEvent *)&v6 setDTStamp:v5];
}

- (ASMeetingRequest)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = ASMeetingRequest;
  v6 = [(ASEvent *)&v26 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    [(ASEvent *)v6 setCalculateNextStatusAsIfMeetingRequest:1];
    [(ASEvent *)v7 setShouldUpdateStatus:1];
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [(ASMeetingRequest *)a2 initWithCoder:v7];
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceType"];
    [(ASMeetingRequest *)v7 setInstanceType:v8];

    v9 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"dateReceived"];
    [(ASMeetingRequest *)v7 setDateReceived:v12];

    v13 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"recurrenceId"];
    [(ASMeetingRequest *)v7 setRecurrenceId:v16];

    -[ASMeetingRequest setMeetingClassType:](v7, "setMeetingClassType:", [coderCopy decodeIntForKey:@"meetingClassType"]);
    -[ASMeetingRequest setMeetingMessageType:](v7, "setMeetingMessageType:", [coderCopy decodeIntForKey:@"meetingMessageType"]);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cachedParentFolderId"];
    [(ASMeetingRequest *)v7 setCachedParentFolderId:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cachedParentServerId"];
    [(ASMeetingRequest *)v7 setCachedParentServerId:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    [(ASMeetingRequest *)v7 setSender:v19];

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"forwardees"];
    [(ASMeetingRequest *)v7 setForwardees:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASMeetingRequest;
  [(ASEvent *)&v13 encodeWithCoder:coderCopy];
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASMeetingRequest *)a2 encodeWithCoder:?];
  }

  instanceType = [(ASMeetingRequest *)self instanceType];
  [coderCopy encodeObject:instanceType forKey:@"instanceType"];

  dateReceived = [(ASMeetingRequest *)self dateReceived];
  [coderCopy encodeObject:dateReceived forKey:@"dateReceived"];

  recurrenceId = [(ASMeetingRequest *)self recurrenceId];
  [coderCopy encodeObject:recurrenceId forKey:@"recurrenceId"];

  [coderCopy encodeInt:-[ASMeetingRequest meetingClassType](self forKey:{"meetingClassType"), @"meetingClassType"}];
  [coderCopy encodeInt:-[ASMeetingRequest meetingMessageType](self forKey:{"meetingMessageType"), @"meetingMessageType"}];
  cachedParentFolderId = [(ASMeetingRequest *)self cachedParentFolderId];
  [coderCopy encodeObject:cachedParentFolderId forKey:@"cachedParentFolderId"];

  cachedParentServerId = [(ASMeetingRequest *)self cachedParentServerId];
  [coderCopy encodeObject:cachedParentServerId forKey:@"cachedParentServerId"];

  sender = [(ASMeetingRequest *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  forwardees = [(ASMeetingRequest *)self forwardees];
  [coderCopy encodeObject:forwardees forKey:@"forwardees"];
}

- (BOOL)cachedOrganizerIsSelfWithAccount:(id)account
{
  accountCopy = account;
  [(ASMeetingRequest *)self _determineSelfnessWithLocalEvent:[(ASEvent *)self calEvent] forAccount:accountCopy];

  return [(ASEvent *)self cachedOrganizerIsSelf];
}

- (id)unactionableICSRepresentationForAccount:(id)account
{
  v17[1] = *MEMORY[0x277D85DE8];
  [(ASMeetingRequest *)self saveToCalendarWithExistingRecord:0 intoCalendar:0 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:account];
  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    v4 = ICSEventFromCalEventFixUpCalEvent();
    allDayEvent = [(ASEvent *)self allDayEvent];
    intValue = [allDayEvent intValue];

    if (intValue)
    {
      [v4 setForcedAllDay:1];
    }

    [v4 setAttendee:0];
    meetingMessageType = [(ASMeetingRequest *)self meetingMessageType];
    v8 = @"DELEGATEES-COPY";
    if (meetingMessageType == 5)
    {
      v8 = @"DELEGATORS-COPY";
    }

    if (meetingMessageType == 4)
    {
      v9 = @"OUT-OF-DATE";
    }

    else
    {
      v9 = v8;
    }

    v10 = [objc_alloc(MEMORY[0x277D7F130]) initWithValue:v9 type:5007];
    [v4 setProperty:v10 forName:@"X-APPLE-NO-ACTION"];
    v11 = objc_opt_new();
    v17[0] = v4;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v11 setComponents:v12 options:1];

    v13 = CalCreateiCalendarDataFromICSCalendar();
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (ASEmailItem)parentEmailItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEmailItem);

  return WeakRetained;
}

- (void)saveEmailServerIdAndUpdateNotificationToRecord:(uint64_t)a1 account:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASMeetingRequest.m" lineNumber:290 description:{@"ASEvent reported save success, but I have no local record?"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASMeetingRequest.m" lineNumber:873 description:@"We can't unarchive a Meeting Request if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASMeetingRequest.m" lineNumber:895 description:@"We can't archive a Meeting Request if the coder doesn't allow keyed coding"];
}

@end