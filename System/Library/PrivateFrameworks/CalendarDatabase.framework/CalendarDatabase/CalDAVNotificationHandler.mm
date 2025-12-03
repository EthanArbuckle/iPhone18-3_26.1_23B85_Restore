@interface CalDAVNotificationHandler
+ (id)_changedAttributesFromCalendarChanges:(id)changes;
+ (int)_inviteStatusFromString:(id)string;
+ (void)_copyCalendarForReplyItem:(id)item inDatabase:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)l;
+ (void)_copyNotificationWithExternalID:(id)d inCalendar:(void *)calendar withDatabase:(CalDatabase *)database recordIDMap:(id)map;
+ (void)_copyNotificationWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store withDatabase:(CalDatabase *)database recordIDMap:(id)map;
+ (void)_createNotificationWithInviteStatus:(int)status inDatabase:(CalDatabase *)database;
+ (void)_createResourceChange:(id)change withType:(unsigned int)type forNotification:(void *)notification withRecurrenceID:(id)d database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)l;
+ (void)_handleInviteNotification:(id)notification withUid:(id)uid serverURL:(id)l syncKey:(id)key database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)rL notificationCalendar:(void *)self0 notificationCalendarURL:(id)self1 recordIDMap:(id)self2;
+ (void)_handleInviteReply:(id)reply withUid:(id)uid serverURL:(id)l syncKey:(id)key owningNotification:(id)notification database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)self0 notificationCalendar:(void *)self1 notificationCalendarURL:(id)self2 contactsProvider:(id)self3 recordIDMap:(id)self4;
+ (void)_handleResourceChanged:(id)changed withUid:(id)uid serverURL:(id)l syncKey:(id)key database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)rL notificationCalendar:(void *)self0 notificationCalendarURL:(id)self1 recordIDMap:(id)self2;
+ (void)processNotificationWithData:(id)data serverURL:(id)l syncKey:(id)key database:(CalDatabase *)database notificationCalendar:(void *)calendar store:(void *)store calendarHomeURL:(id)rL notificationCalendarURL:(id)self0 contactsProvider:(id)self1 recordIDMap:(id)self2;
+ (void)setURL:(id)l forResourceWithUUID:(id)d withDatabase:(CalDatabase *)database notificationCalendar:(void *)calendar notificationCalendarURL:(id)rL recordIDMap:(id)map;
@end

@implementation CalDAVNotificationHandler

+ (void)processNotificationWithData:(id)data serverURL:(id)l syncKey:(id)key database:(CalDatabase *)database notificationCalendar:(void *)calendar store:(void *)store calendarHomeURL:(id)rL notificationCalendarURL:(id)self0 contactsProvider:(id)self1 recordIDMap:(id)self2
{
  lCopy = l;
  keyCopy = key;
  rLCopy = rL;
  uRLCopy = uRL;
  providerCopy = provider;
  mapCopy = map;
  v18 = MEMORY[0x1E6997878];
  dataCopy = data;
  v20 = [v18 alloc];
  v21 = [v20 initWithRootElementNameSpace:*MEMORY[0x1E6997880] name:*MEMORY[0x1E69920A8] parseClass:objc_opt_class() baseURL:rLCopy];
  [v21 processData:dataCopy forTask:0];

  [v21 processData:0 forTask:0];
  rootElement = [v21 rootElement];
  lastPathComponent = [lCopy lastPathComponent];
  content = [rootElement content];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  content2 = [rootElement content];
  content3 = content2;
  v44 = mapCopy;
  v45 = uRLCopy;
  if (isKindOfClass)
  {
    v28 = [content2 uid];
    payloadAsString = [v28 payloadAsString];

    v37 = uRLCopy;
    v38 = mapCopy;
    calendarCopy4 = calendar;
    v36 = rLCopy;
    v31 = rLCopy;
    selfCopy2 = self;
    databaseCopy2 = database;
    [self _handleInviteNotification:content3 withUid:payloadAsString serverURL:lCopy syncKey:keyCopy database:v36 store:calendar calendarHomeURL:v37 notificationCalendar:v38 notificationCalendarURL:? recordIDMap:?];
    lastPathComponent = payloadAsString;
LABEL_7:

    goto LABEL_8;
  }

  v31 = rLCopy;
  selfCopy2 = self;
  databaseCopy2 = database;
  objc_opt_class();
  v34 = objc_opt_isKindOfClass();

  content3 = [rootElement content];
  if (v34)
  {
    calendarCopy4 = calendar;
    [self _handleInviteReply:content3 withUid:lastPathComponent serverURL:lCopy syncKey:keyCopy owningNotification:rootElement database:database store:store calendarHomeURL:v31 notificationCalendar:calendar notificationCalendarURL:v45 contactsProvider:providerCopy recordIDMap:v44];
    goto LABEL_7;
  }

  objc_opt_class();
  v35 = objc_opt_isKindOfClass();

  if (v35)
  {
    content3 = [rootElement content];
    calendarCopy4 = calendar;
    [self _handleResourceChanged:content3 withUid:lastPathComponent serverURL:lCopy syncKey:keyCopy database:database store:store calendarHomeURL:v31 notificationCalendar:calendar notificationCalendarURL:v45 recordIDMap:v44];
    goto LABEL_7;
  }

  calendarCopy4 = calendar;
LABEL_8:
  [selfCopy2 setURL:lCopy forResourceWithUUID:lastPathComponent withDatabase:databaseCopy2 notificationCalendar:calendarCopy4 notificationCalendarURL:v45 recordIDMap:v44];
}

+ (int)_inviteStatusFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E69920A0]])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6992098]])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6992088]])
  {
    v4 = 2;
  }

  else
  {
    [stringCopy isEqualToString:*MEMORY[0x1E6992090]];
    v4 = 3;
  }

  return v4;
}

+ (void)_createNotificationWithInviteStatus:(int)status inDatabase:(CalDatabase *)database
{
  if ((status - 1) < 3)
  {
    return CalDatabaseCreateInviteReplyNotification(database);
  }

  if (!status)
  {
    return CalDatabaseCreateNotification(database);
  }

  return result;
}

+ (void)_handleInviteNotification:(id)notification withUid:(id)uid serverURL:(id)l syncKey:(id)key database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)rL notificationCalendar:(void *)self0 notificationCalendarURL:(id)self1 recordIDMap:(id)self2
{
  v70 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  uidCopy = uid;
  keyCopy = key;
  mapCopy = map;
  uRLCopy = uRL;
  rLCopy = rL;
  lCopy = l;
  inviteStatus = [notificationCopy inviteStatus];
  name = [inviteStatus name];

  v62 = name;
  v24 = [self _inviteStatusFromString:name];
  v25 = [lCopy calDAV_leastInfoStringRepresentationRelativeToParentURL:uRLCopy];

  v63 = mapCopy;
  v26 = [self _copyNotificationWithExternalID:v25 inCalendar:calendar withDatabase:database recordIDMap:mapCopy];
  if (!v26)
  {
    v26 = [self _createNotificationWithInviteStatus:v24 inDatabase:database];
    CalNotificationSetOwner(v26, calendar);
    CalNotificationSetExternalID(v26);
    CalNotificationSetExternalModTag(v26);
    CalNotificationSetUUID(v26);
    v27 = CalEntityCopyRecordID(v26);
    if (v27)
    {
      [mapCopy setUniqueIdentifier:uidCopy forRecordID:v27];
    }
  }

  hostURL = [notificationCopy hostURL];
  href = [hostURL href];
  payloadAsFullURL = [href payloadAsFullURL];

  v31 = [payloadAsFullURL calDAV_leastInfoStringRepresentationRelativeToParentURL:rLCopy];

  appendSlashIfNeeded = [v31 appendSlashIfNeeded];

  if (payloadAsFullURL)
  {
    Calendar = CalDatabaseCopyCalendarWithExternalIDInStore(database, appendSlashIfNeeded, store);
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (!Calendar)
    {
      Calendar = CalDatabaseCreateCalendar(database);
      CalStoreAddCalendar(store, Calendar);
      CalCalendarSetExternalID(Calendar);
      CalNotificationSetHostURL(v26, payloadAsFullURL);
      CalCalendarSetNeedsNotification(Calendar);
    }

    CalCalendarSetIsSharingInvitation(Calendar);
    CalCalendarSetSharingStatus(Calendar);
    CalCalendarSetHidden(Calendar);
    CalCalendarSetImmutable(Calendar);
    CalCalendarSetAlwaysReadOnly(Calendar);
    CalCalendarSetSharingInvitationResponse(Calendar);
    organizer = [notificationCopy organizer];
    commonName = [organizer commonName];
    payloadAsString = [commonName payloadAsString];

    organizer2 = [notificationCopy organizer];
    href2 = [organizer2 href];
    payloadAsFullURL2 = [href2 payloadAsFullURL];

    v61 = payloadAsString;
    CalCalendarSetSharedOwnerName(Calendar);
    [payloadAsFullURL2 absoluteString];
    CalCalendarSetSharedOwnerAddress(Calendar);
    summary = [notificationCopy summary];
    [summary payloadAsString];
    CalCalendarSetTitle(Calendar);

    v47 = [notificationCopy uid];
    [v47 payloadAsString];
    CalCalendarSetExternalIdentificationTag(Calendar);

    supportedCalendarComponentSet = [notificationCopy supportedCalendarComponentSet];
    componentsAsString = [supportedCalendarComponentSet componentsAsString];

    if ([componentsAsString length])
    {
      v50 = [MEMORY[0x1E6992080] allowedCalendars:componentsAsString contains:@"VEVENT"];
      v51 = [MEMORY[0x1E6992080] allowedCalendars:componentsAsString contains:@"VTODO"];
      if ((v51 & (v50 ^ 1)) != 0)
      {
        v52 = 3;
      }

      else
      {
        v52 = 0;
      }

      if (v50)
      {
        v53 = 2;
      }

      else
      {
        v53 = 0;
      }

      if (v51)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      CanContainEntityType = CalCalendarCanContainEntityType(Calendar, 3);
      v56 = CalCalendarCanContainEntityType(Calendar, 2);
      if ((CanContainEntityType & (v56 ^ 1)) != 0)
      {
        v57 = 3;
      }

      else
      {
        v57 = 0;
      }

      if (v56)
      {
        v58 = 2;
      }

      else
      {
        v58 = 0;
      }

      if (!CanContainEntityType)
      {
        v57 = v58;
      }

      if (v57 != v54)
      {
        CalCalendarSetCanContainEntityType(Calendar, v54);
      }
    }

    if (Calendar)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  Calendar = 0;
  if (!v24)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v24 == 1)
  {
    CalInviteReplyNotificationSetHostURL(v26, payloadAsFullURL);
    summary2 = [notificationCopy summary];
    payloadAsString2 = [summary2 payloadAsString];

    CalInviteReplyNotificationSetSummary(v26, payloadAsString2);
    CalInviteReplyNotificationSetStatus(v26);
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v38 = v37;

    CalInviteReplyNotificationSetCreationDate(v26, v38);
  }

  v39 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v67 = v24;
    v68 = 2112;
    v69 = payloadAsFullURL;
    _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_INFO, "Got an invitation response of %d for calendar %@, so we're going to remove it", buf, 0x12u);
  }

  if (Calendar)
  {
    CalRemoveCalendar(Calendar);
LABEL_36:
    CFRelease(Calendar);
  }

LABEL_37:
  if (v26)
  {
    CFRelease(v26);
  }

  v59 = *MEMORY[0x1E69E9840];
}

+ (void)_handleInviteReply:(id)reply withUid:(id)uid serverURL:(id)l syncKey:(id)key owningNotification:(id)notification database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)self0 notificationCalendar:(void *)self1 notificationCalendarURL:(id)self2 contactsProvider:(id)self3 recordIDMap:(id)self4
{
  v99 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  uidCopy = uid;
  lCopy = l;
  keyCopy = key;
  notificationCopy = notification;
  rLCopy = rL;
  uRLCopy = uRL;
  providerCopy = provider;
  mapCopy = map;
  v25 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v96 = replyCopy;
    _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_INFO, "Handling invite reply notification %@", buf, 0xCu);
  }

  v26 = [lCopy calDAV_leastInfoStringRepresentationRelativeToParentURL:uRLCopy];
  v27 = [self _copyNotificationWithExternalID:? inCalendar:? withDatabase:? recordIDMap:?];
  v92 = notificationCopy;
  v89 = uRLCopy;
  if (v27)
  {
    InviteReplyNotification = v27;
    v85 = rLCopy;
    v94 = 0;
    v29 = v26;
    v30 = uidCopy;
    goto LABEL_9;
  }

  v31 = [self _copyCalendarForReplyItem:replyCopy inDatabase:database store:store calendarHomeURL:rLCopy];
  if (v31)
  {
    v32 = v31;
    InviteReplyNotification = CalDatabaseCreateInviteReplyNotification(database);
    CalNotificationSetOwner(InviteReplyNotification, calendar);
    v29 = v26;
    CalNotificationSetExternalID(InviteReplyNotification);
    CalNotificationSetExternalModTag(InviteReplyNotification);
    v30 = uidCopy;
    CalNotificationSetUUID(InviteReplyNotification);
    CalInviteReplyNotificationSetInviteReplyCalendar(InviteReplyNotification, v32);
    v94 = CalCalendarCopyTitle(v32);
    v33 = CalEntityCopyRecordID(InviteReplyNotification);
    if (v33)
    {
      [mapCopy setUniqueIdentifier:uidCopy forRecordID:v33];
    }

    v85 = rLCopy;
    CFRelease(v32);
    notificationCopy = v92;
LABEL_9:
    dtstamp = [notificationCopy dtstamp];
    payloadAsString = [dtstamp payloadAsString];
    v36 = notificationCopy;
    v37 = [payloadAsString length];

    if (v37)
    {
      v38 = MEMORY[0x1E69E3CA8];
      dtstamp2 = [v36 dtstamp];
      payloadAsString2 = [dtstamp2 payloadAsString];
      v41 = [v38 dateFromICSString:payloadAsString2];

      v42 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v41];
      v43 = CalDateFromICSDateAsUTC(v42);
      CalInviteReplyNotificationSetCreationDate(InviteReplyNotification, v43);
    }

    inviteStatus = [replyCopy inviteStatus];
    name = [inviteStatus name];

    v86 = lCopy;
    v88 = mapCopy;
    if ([name isEqualToString:*MEMORY[0x1E6992088]])
    {
      v46 = v30;
    }

    else
    {
      v46 = v30;
      if (([name isEqualToString:*MEMORY[0x1E6992090]] & 1) == 0)
      {
        [name isEqualToString:*MEMORY[0x1E6992098]];
      }
    }

    CalInviteReplyNotificationSetStatus(InviteReplyNotification);
    hostURL = [replyCopy hostURL];
    href = [hostURL href];
    payloadAsFullURL = [href payloadAsFullURL];

    CalInviteReplyNotificationSetHostURL(InviteReplyNotification, payloadAsFullURL);
    inReplyTo = [replyCopy inReplyTo];
    payloadAsString3 = [inReplyTo payloadAsString];

    CalInviteReplyNotificationSetInReplyTo(InviteReplyNotification);
    summary = [replyCopy summary];
    payloadAsString4 = [summary payloadAsString];
    v54 = payloadAsString4;
    v55 = v94;
    if (payloadAsString4)
    {
      v55 = payloadAsString4;
    }

    v56 = v55;

    CalInviteReplyNotificationSetSummary(InviteReplyNotification, v56);
    firstName = [replyCopy firstName];
    if (firstName && (v58 = firstName, [replyCopy lastName], v59 = objc_claimAutoreleasedReturnValue(), v59, v58, v59))
    {
      v60 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v61 = v60;
        firstName2 = [replyCopy firstName];
        lastName = [replyCopy lastName];
        *buf = 138412546;
        v96 = firstName2;
        v97 = 2112;
        v98 = lastName;
        _os_log_impl(&dword_1DEBB1000, v61, OS_LOG_TYPE_INFO, "Invite reply has firstName: %@, lastName: %@", buf, 0x16u);
      }

      firstName3 = [replyCopy firstName];
      CalInviteReplyNotificationSetShareeFirstName(InviteReplyNotification);

      lastName2 = [replyCopy lastName];
      CalInviteReplyNotificationSetShareeLastName(InviteReplyNotification);
      v66 = v46;
    }

    else
    {
      acceptedURL = [replyCopy acceptedURL];

      v66 = v46;
      mapCopy = v88;
      if (acceptedURL)
      {
LABEL_39:
        acceptedURL2 = [replyCopy acceptedURL];

        if (acceptedURL2)
        {
          acceptedURL3 = [replyCopy acceptedURL];
          CalInviteReplyNotificationSetShareeAddress(InviteReplyNotification, acceptedURL3);
        }

        CFRelease(InviteReplyNotification);

        rLCopy = v85;
        lCopy = v86;
        goto LABEL_42;
      }

      href2 = [replyCopy href];
      lastName2 = [href2 payloadAsFullURL];

      v69 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = lastName2;
        _os_log_impl(&dword_1DEBB1000, v69, OS_LOG_TYPE_INFO, "Invite reply has no names. Using the provided address of %@", buf, 0xCu);
      }

      absoluteString = [lastName2 absoluteString];
      if (([absoluteString hasMailto] & 1) != 0 || objc_msgSend(absoluteString, "hasTel"))
      {
        CalInviteReplyNotificationSetShareeAddress(InviteReplyNotification, lastName2);
        if ([absoluteString hasMailto])
        {
          stringRemovingMailto = [absoluteString stringRemovingMailto];
          v72 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v96 = stringRemovingMailto;
            _os_log_impl(&dword_1DEBB1000, v72, OS_LOG_TYPE_INFO, "This looks like a mailto address. Search the addressbook for a contact with the address %@", buf, 0xCu);
          }

          v73 = [providerCopy fullNameForFirstContactMatchingEmailAddress:stringRemovingMailto];
        }

        else
        {
          stringRemovingMailto = [absoluteString stringRemovingTel];
          v80 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v96 = stringRemovingMailto;
            _os_log_impl(&dword_1DEBB1000, v80, OS_LOG_TYPE_INFO, "This looks like a telephone number. Search the addressbook for a contact with the phone number %@", buf, 0xCu);
          }

          v73 = [providerCopy fullNameForFirstContactMatchingPhoneNumber:stringRemovingMailto];
        }

        v81 = v73;

        CalInviteReplyNotificationSetShareeDisplayName(InviteReplyNotification);
        v66 = uidCopy;
      }
    }

    mapCopy = v88;
    goto LABEL_39;
  }

  v74 = CDBLogHandle;
  v29 = v26;
  v66 = uidCopy;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    v75 = v74;
    [replyCopy hostURL];
    v77 = v76 = rLCopy;
    href3 = [v77 href];
    payloadAsOriginalURL = [href3 payloadAsOriginalURL];
    *buf = 138412290;
    v96 = payloadAsOriginalURL;
    _os_log_impl(&dword_1DEBB1000, v75, OS_LOG_TYPE_INFO, "Ignoring invite reply notification for an unknown calendar: %@", buf, 0xCu);

    rLCopy = v76;
  }

LABEL_42:

  v84 = *MEMORY[0x1E69E9840];
}

+ (void)_copyCalendarForReplyItem:(id)item inDatabase:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)l
{
  if (!store)
  {
    return 0;
  }

  lCopy = l;
  hostURL = [item hostURL];
  href = [hostURL href];
  payloadAsFullURL = [href payloadAsFullURL];

  v13 = [payloadAsFullURL calDAV_leastInfoStringRepresentationRelativeToParentURL:lCopy];

  appendSlashIfNeeded = [v13 appendSlashIfNeeded];

  v15 = CalDatabaseCopyCalendarWithExternalIDInStore(database, appendSlashIfNeeded, store);
  return v15;
}

+ (void)_handleResourceChanged:(id)changed withUid:(id)uid serverURL:(id)l syncKey:(id)key database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)rL notificationCalendar:(void *)self0 notificationCalendarURL:(id)self1 recordIDMap:(id)self2
{
  v137 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  uidCopy = uid;
  keyCopy = key;
  rLCopy = rL;
  selfCopy2 = self;
  mapCopy = map;
  v22 = [l calDAV_leastInfoStringRepresentationRelativeToParentURL:uRL];
  v23 = [self _copyNotificationWithExternalID:v22 inCalendar:calendar withDatabase:database recordIDMap:mapCopy];
  v84 = keyCopy;
  v85 = uidCopy;
  v82 = v22;
  if (v23)
  {
    v24 = v23;
    CalResourceChangeNotificationRemoveAllChanges(v23);
  }

  else
  {
    v24 = CalDatabaseCreateResourceChangeNotification(database);
    CalNotificationSetOwner(v24, calendar);
    CalNotificationSetExternalID(v24);
    CalNotificationSetExternalModTag(v24);
    CalNotificationSetUUID(v24);
    v25 = CalEntityCopyRecordID(v24);
    if (v25)
    {
      [mapCopy setUniqueIdentifier:uidCopy forRecordID:v25];
    }
  }

  v26 = objc_alloc(MEMORY[0x1E69E3C90]);
  dtstamp = [changedCopy dtstamp];
  v28 = [v26 initWithValue:dtstamp];

  v81 = v28;
  v29 = CalDateFromICSDateAsUTC(v28);
  v95 = v24;
  CalResourceChangeNotificationSetLastModifiedDate(v24, v29);
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  created = [changedCopy created];
  v31 = [created countByEnumeratingWithState:&v126 objects:v136 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v127;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v127 != v33)
        {
          objc_enumerationMutation(created);
        }

        v35 = [self _createResourceChange:*(*(&v126 + 1) + 8 * i) withType:1 forNotification:v24 withRecurrenceID:0 database:database store:store calendarHomeURL:rLCopy];
        if (v35)
        {
          CFRelease(v35);
        }
      }

      v32 = [created countByEnumeratingWithState:&v126 objects:v136 count:16];
    }

    while (v32);
  }

  v83 = mapCopy;

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v86 = changedCopy;
  obj = [changedCopy updated];
  v36 = v24;
  v89 = [obj countByEnumeratingWithState:&v122 objects:v135 count:16];
  if (v89)
  {
    v88 = *v123;
    databaseCopy = database;
    do
    {
      v37 = 0;
      do
      {
        if (*v123 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v90 = v37;
        v38 = *(*(&v122 + 1) + 8 * v37);
        calendarChanges = [v38 calendarChanges];
        v40 = [selfCopy2 _changedAttributesFromCalendarChanges:calendarChanges];

        if ([v40 count])
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          allKeys = [v40 allKeys];
          v99 = [allKeys countByEnumeratingWithState:&v118 objects:v134 count:16];
          if (!v99)
          {
            goto LABEL_46;
          }

          v96 = *v119;
          v93 = v38;
          v94 = v40;
          while (1)
          {
            v41 = 0;
            do
            {
              if (*v119 != v96)
              {
                objc_enumerationMutation(allKeys);
              }

              v101 = v41;
              v42 = *(*(&v118 + 1) + 8 * v41);
              v100 = [selfCopy2 _createResourceChange:v38 withType:2 forNotification:v36 withRecurrenceID:v42 database:database store:store calendarHomeURL:rLCopy];
              if (v100)
              {
                v43 = [v40 objectForKeyedSubscript:v42];
                v114 = 0u;
                v115 = 0u;
                v116 = 0u;
                v117 = 0u;
                v44 = [v43 countByEnumeratingWithState:&v114 objects:v133 count:16];
                if (!v44)
                {
                  goto LABEL_43;
                }

                v45 = v44;
                v46 = 0;
                v47 = *v115;
                while (1)
                {
                  for (j = 0; j != v45; ++j)
                  {
                    if (*v115 != v47)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v49 = *(*(&v114 + 1) + 8 * j);
                    if (![v49 caseInsensitiveCompare:@"dtstart"])
                    {
LABEL_38:
                      v46 |= 1u;
                      continue;
                    }

                    if ([v49 caseInsensitiveCompare:@"TimeChanged"])
                    {
                      if (![v49 caseInsensitiveCompare:@"DateChanged"])
                      {
                        goto LABEL_38;
                      }

                      if ([v49 caseInsensitiveCompare:@"summary"])
                      {
                        if (![v49 caseInsensitiveCompare:@"location"] || !objc_msgSend(v49, "caseInsensitiveCompare:", @"x-apple-structured-location"))
                        {
                          v46 |= 8u;
                        }
                      }

                      else
                      {
                        v46 |= 4u;
                      }
                    }

                    else
                    {
                      v46 |= 2u;
                    }
                  }

                  v45 = [v43 countByEnumeratingWithState:&v114 objects:v133 count:16];
                  if (!v45)
                  {
LABEL_43:
                    CalResourceChangeSetChangedProperties(v100);
                    CFRelease(v100);

                    database = databaseCopy;
                    v38 = v93;
                    selfCopy2 = self;
                    v36 = v24;
                    v40 = v94;
                    break;
                  }
                }
              }

              v41 = v101 + 1;
            }

            while (v101 + 1 != v99);
            v99 = [allKeys countByEnumeratingWithState:&v118 objects:v134 count:16];
            if (!v99)
            {
LABEL_46:

              goto LABEL_49;
            }
          }
        }

        v50 = [selfCopy2 _createResourceChange:v38 withType:2 forNotification:v36 withRecurrenceID:0 database:database store:store calendarHomeURL:rLCopy];
        if (v50)
        {
          CFRelease(v50);
        }

LABEL_49:

        v37 = v90 + 1;
      }

      while (v90 + 1 != v89);
      v89 = [obj countByEnumeratingWithState:&v122 objects:v135 count:16];
    }

    while (v89);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  deleted = [v86 deleted];
  v52 = [deleted countByEnumeratingWithState:&v110 objects:v132 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v111;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v111 != v54)
        {
          objc_enumerationMutation(deleted);
        }

        v56 = *(*(&v110 + 1) + 8 * k);
        v57 = [self _createResourceChange:v56 withType:3 forNotification:v36 withRecurrenceID:0 database:database store:store calendarHomeURL:rLCopy];
        if (v57)
        {
          v58 = v57;
          summary = [v56 summary];
          v60 = summary;
          if (summary)
          {
            displayName = summary;
          }

          else
          {
            displayName = [v56 displayName];
          }

          v62 = displayName;

          CalResourceChangeSetDeletedSummary(v58);
          CFRelease(v58);
        }

        v36 = v95;
      }

      v53 = [deleted countByEnumeratingWithState:&v110 objects:v132 count:16];
    }

    while (v53);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  collectionChanges = [v86 collectionChanges];
  v64 = [collectionChanges countByEnumeratingWithState:&v106 objects:v131 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v107;
    do
    {
      for (m = 0; m != v65; ++m)
      {
        if (*v107 != v66)
        {
          objc_enumerationMutation(collectionChanges);
        }

        v68 = *(*(&v106 + 1) + 8 * m);
        v69 = [self _createResourceChange:v68 withType:4 forNotification:v95 withRecurrenceID:0 database:database store:store calendarHomeURL:rLCopy];
        if (v69)
        {
          v70 = v69;
          if ([v68 created])
          {
            [v68 created];
            CalResourceChangeSetCreateCount(v70);
          }

          if ([v68 updated])
          {
            [v68 updated];
            CalResourceChangeSetUpdateCount(v70);
          }

          if ([v68 deleted])
          {
            [v68 deleted];
            CalResourceChangeSetDeleteCount(v70);
          }

          CFRelease(v70);
        }
      }

      v65 = [collectionChanges countByEnumeratingWithState:&v106 objects:v131 count:16];
    }

    while (v65);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  collectionUpdates = [v86 collectionUpdates];
  v72 = [collectionUpdates countByEnumeratingWithState:&v102 objects:v130 count:16];
  v73 = v95;
  if (v72)
  {
    v74 = v72;
    v75 = *v103;
    do
    {
      for (n = 0; n != v74; ++n)
      {
        if (*v103 != v75)
        {
          objc_enumerationMutation(collectionUpdates);
        }

        v77 = *(*(&v102 + 1) + 8 * n);
        v78 = [self _createResourceChange:v77 withType:5 forNotification:v73 withRecurrenceID:0 database:database store:store calendarHomeURL:rLCopy];
        if (v78)
        {
          v79 = v78;
          if ([v77 state] != 2)
          {
            [v77 state];
          }

          CalResourceChangeSetPublicStatus(v79);
          CFRelease(v79);
        }

        v73 = v95;
      }

      v74 = [collectionUpdates countByEnumeratingWithState:&v102 objects:v130 count:16];
    }

    while (v74);
  }

  CFRelease(v73);
  v80 = *MEMORY[0x1E69E9840];
}

+ (void)_createResourceChange:(id)change withType:(unsigned int)type forNotification:(void *)notification withRecurrenceID:(id)d database:(CalDatabase *)database store:(void *)store calendarHomeURL:(id)l
{
  changeCopy = change;
  dCopy = d;
  lCopy = l;
  v17 = CalDatabaseCreateResourceChangeOfType(database);
  CalResourceChangeNotificationAddChange(notification, v17);
  href = [changeCopy href];
  payloadAsFullURL = [href payloadAsFullURL];

  pathExtension = [payloadAsFullURL pathExtension];
  v21 = [pathExtension isEqualToString:@"ics"];

  if (v21)
  {
    uRLByDeletingLastPathComponent = [payloadAsFullURL URLByDeletingLastPathComponent];
    [uRLByDeletingLastPathComponent calDAV_leastInfoStringRepresentationRelativeToParentURL:lCopy];
    databaseCopy = database;
    typeCopy = type;
    storeCopy = store;
    v25 = v17;
    v26 = payloadAsFullURL;
    v27 = changeCopy;
    v28 = lCopy;
    v30 = v29 = dCopy;
    appendSlashIfNeeded = [v30 appendSlashIfNeeded];

    dCopy = v29;
    lCopy = v28;
    changeCopy = v27;
    payloadAsFullURL = v26;
    v17 = v25;
    store = storeCopy;
    type = typeCopy;
    database = databaseCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent = [payloadAsFullURL calDAV_leastInfoStringRepresentationRelativeToParentURL:lCopy];
    appendSlashIfNeeded = [uRLByDeletingLastPathComponent appendSlashIfNeeded];
  }

  v32 = CalDatabaseCopyCalendarWithExternalIDInStore(database, appendSlashIfNeeded, store);
  if (v32)
  {
    v33 = v32;
    CalResourceChangeSetCalendar(v17, v32);
    CFRelease(v33);
  }

  if (type - 1 <= 1)
  {
    v34 = [payloadAsFullURL calDAV_leastInfoStringRepresentationRelativeToParentURL:lCopy];
    v35 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore(database, -1, v34, 0, store);
    v62 = dCopy;
    if (dCopy)
    {
      if (([dCopy isEqualToString:@"master"] & 1) == 0)
      {
        v53 = CalEventCopyDetachedEvents(v35);
        if ([(__CFArray *)v53 count])
        {
          v54 = objc_alloc(MEMORY[0x1E69E3C90]);
          v55 = [MEMORY[0x1E69E3CA8] dateFromICSString:dCopy];
          v56 = [v54 initWithValue:v55];

          databaseCopy = v56;
          v57 = CalDateFromICSDateAsUTC(v56);
          if ([(__CFArray *)v53 count])
          {
            v58 = 0;
            while (1)
            {
              databaseCopy = [(__CFArray *)v53 objectAtIndexedSubscript:v58, databaseCopy];

              if (CalEventGetOriginalStartDate(databaseCopy) == v57)
              {
                break;
              }

              if (++v58 >= [(__CFArray *)v53 count])
              {
                goto LABEL_36;
              }
            }

            if (databaseCopy)
            {
              CFRetain(databaseCopy);
              dCopy = databaseCopy;
            }

            else
            {
              dCopy = 0;
            }
          }

          else
          {
LABEL_36:
            dCopy = 0;
            databaseCopy = v35;
          }
        }

        else
        {
          dCopy = 0;
          databaseCopy = v35;
        }

        if (!databaseCopy)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      dCopy = 0;
    }

    databaseCopy = v35;
    if (!v35)
    {
LABEL_12:
      if (v35)
      {
        CFRelease(v35);
      }

      if (dCopy)
      {
        CFRelease(dCopy);
      }

      dCopy = v62;
      goto LABEL_17;
    }

LABEL_11:
    CalResourceChangeSetCalendarItem(v17, databaseCopy);
    goto LABEL_12;
  }

LABEL_17:
  changedBy = [changeCopy changedBy];
  v38 = changedBy;
  if (!changedBy)
  {
    goto LABEL_30;
  }

  displayName = [changedBy displayName];
  if (displayName)
  {
    CalResourceChangeSetChangedByDisplayName(v17);
  }

  else
  {
    firstName = [v38 firstName];
    CalResourceChangeSetChangedByFirstName(v17);

    lastName = [v38 lastName];
    CalResourceChangeSetChangedByLastName(v17);
  }

  emailAddress = [v38 emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [v38 emailAddress];
    stringAddingMailto = [emailAddress2 stringAddingMailto];
  }

  else
  {
    phoneNumber = [v38 phoneNumber];

    if (!phoneNumber)
    {
      address = [v38 address];

      if (address)
      {
        address2 = [v38 address];
        CalResourceChangeSetChangedByAddress(v17, address2);
      }

      goto LABEL_27;
    }

    emailAddress2 = [v38 phoneNumber];
    stringAddingMailto = [emailAddress2 stringAddingTel];
  }

  v46 = CFURLCreateWithString(0, stringAddingMailto, 0);

  CalResourceChangeSetChangedByAddress(v17, v46);
  if (v46)
  {
    CFRelease(v46);
  }

LABEL_27:
  v47 = objc_alloc(MEMORY[0x1E69E3C90]);
  dtstamp = [v38 dtstamp];
  v49 = [v47 initWithValue:dtstamp];

  v50 = CalDateFromICSDateAsUTC(v49);
  v51 = CFDateCreate(0, v50);
  CalResourceChangeSetTimestamp(v17);
  if (v51)
  {
    CFRelease(v51);
  }

LABEL_30:
  return v17;
}

+ (id)_changedAttributesFromCalendarChanges:(id)changes
{
  v61 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = changesCopy;
  v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v38)
  {
    v37 = *v55;
    do
    {
      v4 = 0;
      do
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v4;
        v5 = *(*(&v54 + 1) + 8 * v4);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        recurrences = [v5 recurrences];
        v42 = [recurrences countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v42)
        {
          v41 = *v51;
          do
          {
            v6 = 0;
            do
            {
              if (*v51 != v41)
              {
                objc_enumerationMutation(recurrences);
              }

              v45 = v6;
              v7 = *(*(&v50 + 1) + 8 * v6);
              recurrenceID = [v7 recurrenceID];
              if (recurrenceID)
              {
                recurrenceID2 = [v7 recurrenceID];
                payloadAsString = [recurrenceID2 payloadAsString];
              }

              else
              {
                payloadAsString = @"master";
              }

              v11 = [dictionary objectForKeyedSubscript:payloadAsString];
              if (!v11)
              {
                v11 = objc_opt_new();
                [dictionary setObject:v11 forKeyedSubscript:payloadAsString];
              }

              v44 = payloadAsString;
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              changes = [v7 changes];
              changedProperties = [changes changedProperties];

              v14 = [changedProperties countByEnumeratingWithState:&v46 objects:v58 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v47;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v47 != v16)
                    {
                      objc_enumerationMutation(changedProperties);
                    }

                    v18 = *(*(&v46 + 1) + 8 * v17);
                    nameAttribute = [v18 nameAttribute];

                    if (nameAttribute)
                    {
                      nameAttribute2 = [v18 nameAttribute];
                      v21 = [nameAttribute2 caseInsensitiveCompare:@"dtstart"];

                      if (v21)
                      {
                        goto LABEL_23;
                      }

                      typeAttribute = [v18 typeAttribute];
                      if (typeAttribute && (v24 = typeAttribute, [v18 typeAttribute], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "caseInsensitiveCompare:", @"time"), v25, v24, !v26))
                      {
                        v31 = v11;
                        v32 = @"TimeChanged";
                      }

                      else
                      {
                        typeAttribute2 = [v18 typeAttribute];
                        if (!typeAttribute2 || (v28 = typeAttribute2, [v18 typeAttribute], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "caseInsensitiveCompare:", @"date"), v29, v28, v30))
                        {
LABEL_23:
                          nameAttribute3 = [v18 nameAttribute];
                          [v11 addObject:nameAttribute3];

                          goto LABEL_24;
                        }

                        v31 = v11;
                        v32 = @"DateChanged";
                      }

                      [v31 addObject:v32];
                    }

LABEL_24:
                    ++v17;
                  }

                  while (v15 != v17);
                  v33 = [changedProperties countByEnumeratingWithState:&v46 objects:v58 count:16];
                  v15 = v33;
                }

                while (v33);
              }

              v6 = v45 + 1;
            }

            while (v45 + 1 != v42);
            v42 = [recurrences countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v42);
        }

        v4 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v38);
  }

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (void)_copyNotificationWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store withDatabase:(CalDatabase *)database recordIDMap:(id)map
{
  identifierCopy = identifier;
  mapCopy = map;
  v13 = [mapCopy recordIDForUniqueIdentifier:identifierCopy];
  if (!v13 || (v14 = CalDatabaseCopyEntityWithRecordID(database, v13)) == 0)
  {
    v15 = CalDatabaseCopyNotificationWithUniqueIdentifierInCalendarOrStore(database, -1, identifierCopy, calendar, store);
    v14 = v15;
    if (v15)
    {
      v16 = CalEntityCopyRecordID(v15);
      if (v16)
      {
        v17 = v16;
        [mapCopy setUniqueIdentifier:identifierCopy forRecordID:v16];
        CFRelease(v17);
      }
    }
  }

  return v14;
}

+ (void)_copyNotificationWithExternalID:(id)d inCalendar:(void *)calendar withDatabase:(CalDatabase *)database recordIDMap:(id)map
{
  dCopy = d;
  v10 = [map recordIDForExternalIdentifier:dCopy];
  if (v10)
  {
    v11 = CalDatabaseCopyEntityWithRecordID(database, v10);
    if (!calendar)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!calendar)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    v11 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore(database, -1, dCopy, calendar, 0);
  }

LABEL_7:

  return v11;
}

+ (void)setURL:(id)l forResourceWithUUID:(id)d withDatabase:(CalDatabase *)database notificationCalendar:(void *)calendar notificationCalendarURL:(id)rL recordIDMap:(id)map
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  rLCopy = rL;
  mapCopy = map;
  if (lCopy)
  {
    v18 = [self _copyNotificationWithUniqueIdentifier:dCopy inCalendar:calendar orStore:0 withDatabase:database recordIDMap:mapCopy];
    if (v18)
    {
      v19 = v18;
      v20 = [lCopy calDAV_leastInfoStringRepresentationRelativeToParentURL:rLCopy];
      CalNotificationSetExternalID(v19);
      v21 = CalEntityCopyRecordID(v19);
      if (v21)
      {
        v22 = v21;
        [mapCopy setExternalIdentifier:v20 forRecordID:v21];
        CFRelease(v22);
      }

      CFRelease(v19);
    }

    else
    {
      v23 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = dCopy;
        _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_DEFAULT, "Couldn't set url for the event %@ because it doesn't exist in our database", &v25, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end