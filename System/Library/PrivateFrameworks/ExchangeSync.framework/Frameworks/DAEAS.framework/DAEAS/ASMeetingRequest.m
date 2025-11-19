@interface ASMeetingRequest
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASEmailItem)parentEmailItem;
- (ASMeetingRequest)init;
- (ASMeetingRequest)initWithCoder:(id)a3;
- (BOOL)_bailIfNotNewestDataForAccount:(id)a3;
- (BOOL)cachedOrganizerIsSelfWithAccount:(id)a3;
- (BOOL)saveEmailServerIdToCalendarWithExistingRecord:(void *)a3 intoCalendar:(void *)a4 account:(id)a5;
- (BOOL)saveForwardeesToCalendarWithExistingRecord:(void *)a3 account:(id)a4;
- (BOOL)saveResponseCommentToCalendarWithExistingRecord:(void *)a3;
- (BOOL)shouldUseInMemoryAttendeesForAccount:(id)a3 numExistingAttendees:(unint64_t)a4;
- (BOOL)writeInviteToCalDBCreateAsRejected:(BOOL)a3 defaultCalendar:(void *)a4 account:(id)a5;
- (id)description;
- (id)unactionableICSRepresentationForAccount:(id)a3;
- (void)_determineSelfnessWithLocalEvent:(void *)a3 forAccount:(id)a4;
- (void)_setReminderSecsBefore:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)postProcessApplicationData;
- (void)saveEmailServerIdAndUpdateNotificationToRecord:(void *)a3 account:(id)a4;
- (void)setDTStamp:(id)a3;
- (void)setOrganizer:(id)a3;
- (void)takeValuesFromParentEmailForAccount:(id)a3;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_31 = v2;
    notifyOfUnknownTokens___haveChecked_31 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v32 = MEMORY[0x277CBEAC0];
    v6 = [ASParseRule alloc];
    v36 = a1;
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
    v22 = NSStringFromClass(v36);
    [v21 setObject:v5 forKey:v22];
  }

  return v5;
}

- (void)_determineSelfnessWithLocalEvent:(void *)a3 forAccount:(id)a4
{
  v8 = a4;
  if (![(ASEvent *)self haveCheckedOrganizerEmail])
  {
    [(ASEvent *)self setHaveCheckedOrganizerEmail:1];
    [(ASEvent *)self setCachedOrganizerIsSelf:0];
    v5 = [(ASEvent *)self attendees];
    if ([v5 count])
    {
      v6 = [(ASEvent *)self organizerEmail];
      v7 = [v6 length];

      if (!v7)
      {
        goto LABEL_6;
      }

      v5 = [(ASEvent *)self organizerEmail];
      -[ASEvent setCachedOrganizerIsSelf:](self, "setCachedOrganizerIsSelf:", [v8 accountContainsEmailAddress:v5]);
    }
  }

LABEL_6:
}

- (void)postProcessApplicationData
{
  v3 = [(ASChangedCollectionLeaf *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:538];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue")}];
      [(ASEvent *)self setAllDayEvent:v6];
    }
  }

  v7 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:541];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v9];
      [(ASMeetingRequest *)self setDTStamp:v10];
    }
  }

  v11 = [(ASChangedCollectionLeaf *)self applicationData];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:542];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v13];
      [(ASEvent *)self setEndTime:v14];
    }
  }

  v15 = [(ASChangedCollectionLeaf *)self applicationData];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:543];
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "intValue")}];
      [(ASMeetingRequest *)self setInstanceType:v18];
    }
  }

  v19 = [(ASChangedCollectionLeaf *)self applicationData];
  v89 = [v19 objectForKeyedSubscript:&unk_285D57E58];

  if (v89)
  {
    v20 = [[ASLocation alloc] initWithApplicationData:v89];
    [(ASEvent *)self setLocation:v20];
  }

  else
  {
    v57 = [(ASChangedCollectionLeaf *)self applicationData];
    v58 = [MEMORY[0x277CCABB0] numberWithInt:545];
    v20 = [v57 objectForKey:v58];

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

  v21 = [(ASChangedCollectionLeaf *)self applicationData];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:547];
  v23 = [v21 objectForKey:v22];

  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASMeetingRequest *)self setOrganizer:v23];
    }
  }

  v24 = [(ASChangedCollectionLeaf *)self applicationData];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:549];
  v26 = [v24 objectForKey:v25];

  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v26, "intValue")}];
      [(ASMeetingRequest *)self _setReminderSecsBefore:v27];
    }
  }

  v28 = [(ASChangedCollectionLeaf *)self applicationData];
  v29 = [MEMORY[0x277CCABB0] numberWithInt:550];
  v30 = [v28 objectForKey:v29];

  if (v30)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v30, "intValue")}];
      [(ASEvent *)self setResponseRequested:v31];
    }
  }

  v32 = [(ASChangedCollectionLeaf *)self applicationData];
  v33 = [MEMORY[0x277CCABB0] numberWithInt:562];
  v34 = [v32 objectForKey:v33];

  if (v34)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v34, "intValue")}];
      [(ASEvent *)self setSensitivity:v35];
    }
  }

  v36 = [(ASChangedCollectionLeaf *)self applicationData];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:532];
  v38 = [v36 objectForKey:v37];

  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setSubject:v38];
    }
  }

  v39 = [(ASChangedCollectionLeaf *)self applicationData];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:561];
  v41 = [v39 objectForKey:v40];

  if (v41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v41];
      [(ASEvent *)self setStartTime:v42];
    }
  }

  v43 = [(ASChangedCollectionLeaf *)self applicationData];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:527];
  v45 = [v43 objectForKey:v44];

  if (v45)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v46 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v45];
      [(ASMeetingRequest *)self setDateReceived:v46];
    }
  }

  v47 = [(ASChangedCollectionLeaf *)self applicationData];
  v48 = [MEMORY[0x277CCABB0] numberWithInt:563];
  v49 = [v47 objectForKey:v48];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASEvent *)self setTimeZone:v49];
  }

  v50 = [(ASChangedCollectionLeaf *)self applicationData];
  v51 = [MEMORY[0x277CCABB0] numberWithInt:548];
  v52 = [v50 objectForKey:v51];

  if (v52)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v53 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v52];
      [(ASMeetingRequest *)self setRecurrenceId:v53];
    }
  }

  v54 = [(ASChangedCollectionLeaf *)self applicationData];
  v55 = [v54 objectForKeyedSubscript:&unk_285D57E70];

  if (v55)
  {
    v56 = [[ASEventUID alloc] initWithUidString:v55];
LABEL_48:
    v61 = v56;
    [(ASEvent *)self setEventUID:v56];

    v62 = [(ASEvent *)self eventUID];
    v63 = [(ASMeetingRequest *)self exceptionDate];
    [v62 setExceptionDate:v63];

    goto LABEL_49;
  }

  v60 = [(ASChangedCollectionLeaf *)self applicationData];
  v55 = [v60 objectForKeyedSubscript:&unk_285D57E88];

  if (v55)
  {
    v56 = [[ASEventUID alloc] initWithGlobalObjectIdString:v55];
    goto LABEL_48;
  }

LABEL_49:
  v64 = [(ASChangedCollectionLeaf *)self applicationData];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:5651];
  v66 = [v64 objectForKey:v65];

  if (v66)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASMeetingRequest setMeetingMessageType:](self, "setMeetingMessageType:", [v66 intValue]);
    }
  }

  v67 = [(ASChangedCollectionLeaf *)self applicationData];
  v68 = [v67 objectForKeyedSubscript:&unk_285D57EA0];

  v69 = [v68 objectForKeyedSubscript:&unk_285D57EB8];
  [(ASEvent *)self setRecurrence:v69];

  v70 = [(ASChangedCollectionLeaf *)self applicationData];
  v71 = [MEMORY[0x277CCABB0] numberWithInt:575];
  v72 = [v70 objectForKey:v71];

  if (v72)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v73 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v72, "intValue")}];
      [(ASEvent *)self setDisallowNewTimeProposal:v73];
    }
  }

  v74 = [(ASChangedCollectionLeaf *)self applicationData];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:5397];
  v76 = [v74 objectForKey:v75];

  if (v76)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASMeetingRequest *)self setForwardees:v76];
    }
  }

  v77 = [(ASChangedCollectionLeaf *)self applicationData];
  v78 = [MEMORY[0x277CCABB0] numberWithInt:2064];
  v79 = [v77 objectForKey:v78];

  if (v79)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v80 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v79];
      [(ASEvent *)self setProposedStartTime:v80];
    }
  }

  v81 = [(ASChangedCollectionLeaf *)self applicationData];
  v82 = [MEMORY[0x277CCABB0] numberWithInt:2065];
  v83 = [v81 objectForKey:v82];

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
  v85 = [(ASMeetingRequest *)self parentEmailItem];
  v86 = [v85 folderId];
  [(ASMeetingRequest *)self setCachedParentFolderId:v86];

  v87 = [(ASMeetingRequest *)self parentEmailItem];
  v88 = [v87 serverID];
  [(ASMeetingRequest *)self setCachedParentServerId:v88];
}

- (BOOL)_bailIfNotNewestDataForAccount:(id)a3
{
  v4 = [a3 protocol];
  v5 = [v4 serverCreatesEventChangesForInvitations];

  if (!v5)
  {
    return 1;
  }

  v6 = [(ASMeetingRequest *)self exceptionDate];
  v7 = v6 == 0;

  return v7;
}

- (BOOL)saveEmailServerIdToCalendarWithExistingRecord:(void *)a3 intoCalendar:(void *)a4 account:(id)a5
{
  v8 = a5;
  v11.receiver = self;
  v11.super_class = ASMeetingRequest;
  v9 = [(ASEvent *)&v11 setCalEventWithExistingRecord:a3 intoCalendar:a4];
  if (v9)
  {
    [(ASMeetingRequest *)self saveEmailServerIdAndUpdateNotificationToRecord:a3 account:v8];
  }

  return v9;
}

- (void)saveEmailServerIdAndUpdateNotificationToRecord:(void *)a3 account:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277D03988];
  if (a3)
  {
    Status = CalCalendarItemGetStatus();
    v10 = [(ASEvent *)self copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:a3 forAccount:v7];
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
    v18 = [v7 protocol];
    v19 = [v18 serverUpdatesAttendeeStatusOnEvents];

    if (!v19)
    {
      goto LABEL_13;
    }

    if (!ModifiedDate)
    {
      goto LABEL_14;
    }

    v20 = [(ASEvent *)self dTStamp];
    if (!v20)
    {
      goto LABEL_14;
    }

    v21 = v20;
    v22 = [(ASEvent *)self dTStamp];
    v68 = v7;
    v23 = a2;
    v24 = Status;
    v25 = v8;
    v26 = [v22 compare:ModifiedDate];

    v36 = v26 == 1;
    v8 = v25;
    Status = v24;
    a2 = v23;
    v7 = v68;
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
    v32 = [(ASEvent *)self _nextEventStatusWithOldStatus:Status meetingClassType:[(ASMeetingRequest *)self meetingClassType] account:v7];
    v70 = Status;
    if (v32)
    {
      v33 = [(ASEvent *)self _nextAttendeeStatusWithOldStatus:v14 meetingClassType:[(ASMeetingRequest *)self meetingClassType] account:v7];
      v34 = v8;
      if ([(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:v7])
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
      v38 = [(ASEvent *)self copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:[(ASEvent *)self calEvent] forAccount:v7];
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
      v42 = [(ASMeetingRequest *)self meetingClassType];
      v43 = [(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:v7];
      *buf = 67110400;
      *v72 = v32;
      *&v72[4] = 1024;
      *&v72[6] = v12;
      LOWORD(v73) = 1024;
      *(&v73 + 2) = v70;
      HIWORD(v73) = 1024;
      *v74 = v14;
      *&v74[4] = 1024;
      *&v74[6] = v42;
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
  v47 = [v7 accountID];
  [v46 calDatabaseForAccountID:v47];
  EventAction = CalDatabaseCreateEventAction();

  v49 = [(ASMeetingRequest *)self cachedParentFolderId];
  CalEventActionSetExternalFolderID();

  v50 = [(ASMeetingRequest *)self cachedParentServerId];
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
  v56 = [(ASMeetingRequest *)self dateReceived];

  if (v56 && (!v54 || [(NSDate *)self->_dateReceived compare:v54]== NSOrderedDescending))
  {
    v57 = DALoggingwithCategory();
    v58 = *(v8 + 6);
    if (os_log_type_enabled(v57, v58))
    {
      v59 = [(ASMeetingRequest *)self dateReceived];
      *buf = 138412290;
      *v72 = v59;
      _os_log_impl(&dword_24A0AC000, v57, v58, "Setting ReceivedDate %@ in EventAction", buf, 0xCu);
    }

    v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v61 = [(ASMeetingRequest *)self dateReceived];
    [v60 setObject:v61 forKey:@"emailDateReceived"];

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

- (BOOL)saveResponseCommentToCalendarWithExistingRecord:(void *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(ASEvent *)self from];
    v5 = [v4 firstObject];

    v6 = [v5 mf_uncommentedAddress];
    v7 = DALoggingwithCategory();
    v8 = MEMORY[0x277D03988];
    v9 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v7, v9, "Saving response comments", buf, 2u);
    }

    if (v6)
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
          v40 = v5;
          v14 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
            v16 = MEMORY[0x24C210570]();
            if ([v16 isEqualToString:v6])
            {
              v17 = [(ASEvent *)self body];

              if (v17)
              {
                break;
              }
            }

            if (Count == ++v14)
            {
              v18 = 0;
              v5 = v40;
              goto LABEL_43;
            }
          }

          CalParticipantGetCommentLastModified();
          v24 = v23;
          v25 = [(ASMeetingRequest *)self dateReceived];
          [v25 timeIntervalSinceReferenceDate];
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
            v5 = v40;
          }

          else
          {
            v28 = [(ASEvent *)self body];
            v29 = [MEMORY[0x277CCA900] newlineCharacterSet];
            v30 = [v28 stringByTrimmingCharactersInSet:v29];

            if ([v30 length])
            {
              v39 = v29;
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
                v34 = [(ASEvent *)self proposedStartTime];

                if (!v34)
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

              v29 = v39;
              v5 = v40;
              v35 = v38;
            }

            else
            {
              v35 = DALoggingwithCategory();
              v5 = v40;
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

  v5 = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v19))
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v5, v19, "No existing record, cannot save response comments", buf, 2u);
  }

  v18 = 0;
LABEL_45:

  v36 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)saveForwardeesToCalendarWithExistingRecord:(void *)a3 account:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3)
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
    v35 = v6;
    if (v8)
    {
      [v9 addObjectsFromArray:v8];
    }

    v33 = v8;
    v13 = objc_alloc(MEMORY[0x277CBEB58]);
    v14 = [(ASMeetingRequest *)self forwardees];
    v15 = [v13 initWithArray:v14];

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
          v23 = [v22 email];
          if (v23)
          {
            [v16 setObject:v22 forKeyedSubscript:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v19);
    }

    v6 = v35;
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
            [v27 saveToCalendarWithParentASEvent:self existingRecord:a3 isDefaultCalendar:1 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:v35];
          }
        }

        ++v24;
      }

      while (v24 < [v12 count]);
    }

    v28 = [v17 allObjects];
    if ([v28 count])
    {
      v29 = 0;
      do
      {
        v30 = [v28 objectAtIndexedSubscript:v29];
        [v30 saveToCalendarWithParentASEvent:self existingRecord:a3 isDefaultCalendar:1 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:v35];

        ++v29;
      }

      while (v29 < [v28 count]);
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
  return a3 != 0;
}

- (BOOL)shouldUseInMemoryAttendeesForAccount:(id)a3 numExistingAttendees:(unint64_t)a4
{
  v5 = [(ASEvent *)self attendees];
  v6 = [v5 count];

  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  return !v7;
}

- (BOOL)writeInviteToCalDBCreateAsRejected:(BOOL)a3 defaultCalendar:(void *)a4 account:(id)a5
{
  v6 = a3;
  v66 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = +[ASLocalDBHelper sharedInstance];
  v10 = [v8 accountID];
  [v9 calDatabaseForAccountID:v10];

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

  if (a4)
  {
    v12 = CalCalendarCopyStore();
  }

  else
  {
    v12 = 0;
  }

  v18 = [(ASEvent *)self eventUID];
  [v18 uidForCalFramework];
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
      v23 = [(ASEvent *)self eventUID];
      v24 = [v23 uidForCalFramework];
      v64 = 134218242;
      *v65 = Count;
      *&v65[8] = 2112;
      *&v65[10] = v24;
      _os_log_impl(&dword_24A0AC000, v21, v22, "Found %ld events with the same UID %@. Not updating them.", &v64, 0x16u);
    }

LABEL_18:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_9;
  }

  v25 = [(ASEvent *)self eventUID];
  [v25 uidForCalFramework];
  v26 = CalDatabaseCopyEventWithUniqueIdentifierInStore();

  if (((0x1Cu >> v11) & 1) == 0)
  {
    if ((0x20u >> v11))
    {
      v28 = [v8 protocol];
      v29 = [v28 supportsForwarderTracking];

      if (v29)
      {
        if (v26)
        {
          v27 = [(ASMeetingRequest *)self saveForwardeesToCalendarWithExistingRecord:v26 account:v8];
          goto LABEL_22;
        }

        v54 = DALoggingwithCategory();
        v55 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v54, v55))
        {
          v56 = [(ASEvent *)self eventUID];
          v57 = [v56 uidForCalFramework];
          v64 = 138412290;
          *v65 = v57;
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
        v33 = [(ASMeetingRequest *)self exceptionDate];

        if (v33)
        {
          v34 = DALoggingwithCategory();
          v35 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v34, v35))
          {
            LOWORD(v64) = 0;
            _os_log_impl(&dword_24A0AC000, v34, v35, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore", &v64, 2u);
          }

          v36 = [(ASEvent *)self eventUID];
          [v36 uidWithoutExceptionDate];
          v37 = CalDatabaseCopyEventWithUniqueIdentifierInStore();

          if (v37)
          {
            CalEventGetLastModifiedDate();
            v39 = v38;
            CFRelease(v37);
            v40 = [(ASEvent *)self dTStamp];
            [v40 timeIntervalSinceReferenceDate];
            v42 = v41;

            if (v42 <= v39)
            {
              goto LABEL_18;
            }
          }
        }
      }

      if (a4)
      {
        CFRetain(a4);
      }

LABEL_43:
      if (v6)
      {
        [(ASEvent *)self setShouldUpdateStatus:0];
      }

      v43 = [v8 protocol];
      v44 = [v43 processFullMeetingInvitationData];

      if (v44)
      {
        if ([(ASMeetingRequest *)self saveToCalendarWithExistingRecord:v26 intoCalendar:a4 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:v8])
        {
LABEL_47:
          if (!v26 && v6 && ![(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:v8])
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
        if ([(ASMeetingRequest *)self saveEmailServerIdToCalendarWithExistingRecord:v26 intoCalendar:a4 account:v8])
        {
LABEL_56:
          v49 = [v8 protocol];
          if ([v49 useSmartMailTasks])
          {
            v50 = [(ASMeetingRequest *)self sender];

            if (v50)
            {
              if (![(ASMeetingRequest *)self cachedOrganizerIsSelfWithAccount:v8])
              {
                [(ASEvent *)self calEvent];
                v51 = CalCalendarItemCopySelfAttendee();
                if (v51)
                {
                  v52 = v51;
                  v53 = [(ASMeetingRequest *)self sender];
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
        if ([(ASMeetingRequest *)self saveToCalendarWithExistingRecord:0 intoCalendar:a4 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:v8])
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
      if (a4)
      {
        CFRelease(a4);
      }

      goto LABEL_76;
    }

    v30 = CalEventCopyOriginalEvent();
    if ([(ASMeetingRequest *)self meetingClassType]== 2)
    {
      v31 = [(ASMeetingRequest *)self instanceType];
      if (![v31 intValue])
      {
        v32 = [(ASMeetingRequest *)self exceptionDate];
        if (v32)
        {
        }

        else
        {

          if (v30 && v30 != v26)
          {
            a4 = CalCalendarItemCopyCalendar();
LABEL_34:
            CFRelease(v30);
            goto LABEL_43;
          }

          v31 = CalCalendarItemCopyRecurrences();
          if ([v31 count])
          {
            v60 = [MEMORY[0x277D03910] writeOutBrokenCancelationRequests];
            v61 = DALoggingwithCategory();
            v62 = *(MEMORY[0x277D03988] + 3);
            v63 = os_log_type_enabled(v61, v62);
            if (!v60)
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

    a4 = CalCalendarItemCopyCalendar();
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

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v17 parent];
  [(ASMeetingRequest *)self setParentEmailItem:v20];

  [(ASChangedCollectionLeaf *)self setValidateOpeningTokens:0];
  v22.receiver = self;
  v22.super_class = ASMeetingRequest;
  [(ASEvent *)&v22 parseASParseContext:v19 root:v18 parent:v17 callbackDict:v16 streamCallbackDict:v15 account:v14];

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
  v5 = [(ASEvent *)self subject];
  v6 = [(ASEvent *)self startTime];
  v7 = [v3 stringWithFormat:@"<%@: [%@] [%@]>", v4, v5, v6];

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

- (void)_setReminderSecsBefore:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(a3, "intValue") / 60)}];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ASEvent *)self setReminderMinsBefore:v4];
}

- (void)takeValuesFromParentEmailForAccount:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ASEvent *)self setHaveCheckedOrganizerEmail:0];
  v5 = [(ASEvent *)self subject];

  if (!v5)
  {
    v6 = [(ASMeetingRequest *)self parentEmailItem];
    v7 = [v6 subject];
    v8 = [v7 mf_decodeMimeHeaderValueWithCharsetHint:@"UTF-8"];
    [(ASEvent *)self setSubject:v8];
  }

  v9 = [(ASEvent *)self body];

  if (!v9)
  {
    v10 = [(ASMeetingRequest *)self parentEmailItem];
    v11 = [v10 body];

    if (v11)
    {
      [(ASEvent *)self setBody:v11];
      v12 = [(ASMeetingRequest *)self parentEmailItem];
      -[ASEvent setBodyTruncated:](self, "setBodyTruncated:", [v12 bodyTruncated]);
    }
  }

  v13 = [(ASEvent *)self from];

  if (!v13)
  {
    v14 = [(ASMeetingRequest *)self parentEmailItem];
    v15 = [v14 from];
    [(ASEvent *)self setFrom:v15];
  }

  v16 = [(ASMeetingRequest *)self dateReceived];

  if (!v16)
  {
    v17 = [(ASMeetingRequest *)self parentEmailItem];
    v18 = [v17 date];
    [(ASMeetingRequest *)self setDateReceived:v18];
  }

  v19 = [(ASEvent *)self attendees];

  if (!v19)
  {
    v52 = v4;
    v20 = objc_opt_new();
    v21 = [(ASMeetingRequest *)self parentEmailItem];
    v22 = [v21 to];

    v53 = self;
    v23 = [(ASMeetingRequest *)self parentEmailItem];
    v24 = [v23 cc];

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
          v33 = [v32 mf_addressComment];
          v34 = v33;
          if (v33 && ([v33 isEqualToString:v32] & 1) == 0)
          {
            [v31 setName:v34];
          }

          v35 = [v32 mf_uncommentedAddress];
          [v31 setEmail:v35];

          [v20 addObject:v31];
          ++v29;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v27);
    }

    self = v53;
    [(ASEvent *)v53 setAttendees:v20];

    v4 = v52;
  }

  v36 = [(ASMeetingRequest *)self sender];

  if (!v36)
  {
    v37 = [(ASMeetingRequest *)self parentEmailItem];
    v38 = [v37 sender];
    [(ASMeetingRequest *)self setSender:v38];
  }

  v39 = [(ASMeetingRequest *)self forwardees];

  if (v39)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v40 = [(ASMeetingRequest *)self forwardees];
    v41 = [v40 countByEnumeratingWithState:&v55 objects:v63 count:16];
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
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v55 + 1) + 8 * v44);
          v46 = [(ASMeetingRequest *)self parentEmailItem];
          v47 = [v46 from];
          v48 = [v47 objectAtIndexedSubscript:0];
          [v45 setInvitedBy:v48];

          ++v44;
        }

        while (v42 != v44);
        v42 = [v40 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v42);
    }
  }

  [(ASMeetingRequest *)self _determineSelfnessWithLocalEvent:0 forAccount:v4];

  v49 = *MEMORY[0x277D85DE8];
}

- (void)setOrganizer:(id)a3
{
  v8 = a3;
  v4 = [v8 mf_decodeMimeHeaderValueWithCharsetHint:@"UTF-8"];
  v5 = [v4 mf_addressComment];
  v6 = v5;
  if (v5 && ([v5 isEqualToString:v8] & 1) == 0)
  {
    [(ASEvent *)self setOrganizerName:v6];
  }

  v7 = [v4 mf_uncommentedAddress];
  [(ASEvent *)self setOrganizerEmail:v7];
}

- (void)setDTStamp:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  v6.receiver = self;
  v6.super_class = ASMeetingRequest;
  [(ASEvent *)&v6 setDTStamp:v5];
}

- (ASMeetingRequest)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = ASMeetingRequest;
  v6 = [(ASEvent *)&v26 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    [(ASEvent *)v6 setCalculateNextStatusAsIfMeetingRequest:1];
    [(ASEvent *)v7 setShouldUpdateStatus:1];
    if (([v5 allowsKeyedCoding] & 1) == 0)
    {
      [(ASMeetingRequest *)a2 initWithCoder:v7];
    }

    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"instanceType"];
    [(ASMeetingRequest *)v7 setInstanceType:v8];

    v9 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v5 decodeObjectOfClasses:v11 forKey:@"dateReceived"];
    [(ASMeetingRequest *)v7 setDateReceived:v12];

    v13 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [v5 decodeObjectOfClasses:v15 forKey:@"recurrenceId"];
    [(ASMeetingRequest *)v7 setRecurrenceId:v16];

    -[ASMeetingRequest setMeetingClassType:](v7, "setMeetingClassType:", [v5 decodeIntForKey:@"meetingClassType"]);
    -[ASMeetingRequest setMeetingMessageType:](v7, "setMeetingMessageType:", [v5 decodeIntForKey:@"meetingMessageType"]);
    v17 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"cachedParentFolderId"];
    [(ASMeetingRequest *)v7 setCachedParentFolderId:v17];

    v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"cachedParentServerId"];
    [(ASMeetingRequest *)v7 setCachedParentServerId:v18];

    v19 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    [(ASMeetingRequest *)v7 setSender:v19];

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v5 decodeObjectOfClasses:v22 forKey:@"forwardees"];
    [(ASMeetingRequest *)v7 setForwardees:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ASMeetingRequest;
  [(ASEvent *)&v13 encodeWithCoder:v5];
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASMeetingRequest *)a2 encodeWithCoder:?];
  }

  v6 = [(ASMeetingRequest *)self instanceType];
  [v5 encodeObject:v6 forKey:@"instanceType"];

  v7 = [(ASMeetingRequest *)self dateReceived];
  [v5 encodeObject:v7 forKey:@"dateReceived"];

  v8 = [(ASMeetingRequest *)self recurrenceId];
  [v5 encodeObject:v8 forKey:@"recurrenceId"];

  [v5 encodeInt:-[ASMeetingRequest meetingClassType](self forKey:{"meetingClassType"), @"meetingClassType"}];
  [v5 encodeInt:-[ASMeetingRequest meetingMessageType](self forKey:{"meetingMessageType"), @"meetingMessageType"}];
  v9 = [(ASMeetingRequest *)self cachedParentFolderId];
  [v5 encodeObject:v9 forKey:@"cachedParentFolderId"];

  v10 = [(ASMeetingRequest *)self cachedParentServerId];
  [v5 encodeObject:v10 forKey:@"cachedParentServerId"];

  v11 = [(ASMeetingRequest *)self sender];
  [v5 encodeObject:v11 forKey:@"sender"];

  v12 = [(ASMeetingRequest *)self forwardees];
  [v5 encodeObject:v12 forKey:@"forwardees"];
}

- (BOOL)cachedOrganizerIsSelfWithAccount:(id)a3
{
  v4 = a3;
  [(ASMeetingRequest *)self _determineSelfnessWithLocalEvent:[(ASEvent *)self calEvent] forAccount:v4];

  return [(ASEvent *)self cachedOrganizerIsSelf];
}

- (id)unactionableICSRepresentationForAccount:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  [(ASMeetingRequest *)self saveToCalendarWithExistingRecord:0 intoCalendar:0 shouldMergeProperties:0 outMergeDidChooseLocalProperties:0 account:a3];
  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    v4 = ICSEventFromCalEventFixUpCalEvent();
    v5 = [(ASEvent *)self allDayEvent];
    v6 = [v5 intValue];

    if (v6)
    {
      [v4 setForcedAllDay:1];
    }

    [v4 setAttendee:0];
    v7 = [(ASMeetingRequest *)self meetingMessageType];
    v8 = @"DELEGATEES-COPY";
    if (v7 == 5)
    {
      v8 = @"DELEGATORS-COPY";
    }

    if (v7 == 4)
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