@interface CalDAVNotificationHandler
+ (id)_changedAttributesFromCalendarChanges:(id)a3;
+ (int)_inviteStatusFromString:(id)a3;
+ (void)_copyCalendarForReplyItem:(id)a3 inDatabase:(CalDatabase *)a4 store:(void *)a5 calendarHomeURL:(id)a6;
+ (void)_copyNotificationWithExternalID:(id)a3 inCalendar:(void *)a4 withDatabase:(CalDatabase *)a5 recordIDMap:(id)a6;
+ (void)_copyNotificationWithUniqueIdentifier:(id)a3 inCalendar:(void *)a4 orStore:(void *)a5 withDatabase:(CalDatabase *)a6 recordIDMap:(id)a7;
+ (void)_createNotificationWithInviteStatus:(int)a3 inDatabase:(CalDatabase *)a4;
+ (void)_createResourceChange:(id)a3 withType:(unsigned int)a4 forNotification:(void *)a5 withRecurrenceID:(id)a6 database:(CalDatabase *)a7 store:(void *)a8 calendarHomeURL:(id)a9;
+ (void)_handleInviteNotification:(id)a3 withUid:(id)a4 serverURL:(id)a5 syncKey:(id)a6 database:(CalDatabase *)a7 store:(void *)a8 calendarHomeURL:(id)a9 notificationCalendar:(void *)a10 notificationCalendarURL:(id)a11 recordIDMap:(id)a12;
+ (void)_handleInviteReply:(id)a3 withUid:(id)a4 serverURL:(id)a5 syncKey:(id)a6 owningNotification:(id)a7 database:(CalDatabase *)a8 store:(void *)a9 calendarHomeURL:(id)a10 notificationCalendar:(void *)a11 notificationCalendarURL:(id)a12 contactsProvider:(id)a13 recordIDMap:(id)a14;
+ (void)_handleResourceChanged:(id)a3 withUid:(id)a4 serverURL:(id)a5 syncKey:(id)a6 database:(CalDatabase *)a7 store:(void *)a8 calendarHomeURL:(id)a9 notificationCalendar:(void *)a10 notificationCalendarURL:(id)a11 recordIDMap:(id)a12;
+ (void)processNotificationWithData:(id)a3 serverURL:(id)a4 syncKey:(id)a5 database:(CalDatabase *)a6 notificationCalendar:(void *)a7 store:(void *)a8 calendarHomeURL:(id)a9 notificationCalendarURL:(id)a10 contactsProvider:(id)a11 recordIDMap:(id)a12;
+ (void)setURL:(id)a3 forResourceWithUUID:(id)a4 withDatabase:(CalDatabase *)a5 notificationCalendar:(void *)a6 notificationCalendarURL:(id)a7 recordIDMap:(id)a8;
@end

@implementation CalDAVNotificationHandler

+ (void)processNotificationWithData:(id)a3 serverURL:(id)a4 syncKey:(id)a5 database:(CalDatabase *)a6 notificationCalendar:(void *)a7 store:(void *)a8 calendarHomeURL:(id)a9 notificationCalendarURL:(id)a10 contactsProvider:(id)a11 recordIDMap:(id)a12
{
  v46 = a4;
  v14 = a5;
  v15 = a9;
  v16 = a10;
  v43 = a11;
  v17 = a12;
  v18 = MEMORY[0x1E6997878];
  v19 = a3;
  v20 = [v18 alloc];
  v21 = [v20 initWithRootElementNameSpace:*MEMORY[0x1E6997880] name:*MEMORY[0x1E69920A8] parseClass:objc_opt_class() baseURL:v15];
  [v21 processData:v19 forTask:0];

  [v21 processData:0 forTask:0];
  v22 = [v21 rootElement];
  v23 = [v46 lastPathComponent];
  v24 = [v22 content];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v26 = [v22 content];
  v27 = v26;
  v44 = v17;
  v45 = v16;
  if (isKindOfClass)
  {
    v28 = [v26 uid];
    v29 = [v28 payloadAsString];

    v37 = v16;
    v38 = v17;
    v30 = a7;
    v36 = v15;
    v31 = v15;
    v32 = a1;
    v33 = a6;
    [a1 _handleInviteNotification:v27 withUid:v29 serverURL:v46 syncKey:v14 database:v36 store:a7 calendarHomeURL:v37 notificationCalendar:v38 notificationCalendarURL:? recordIDMap:?];
    v23 = v29;
LABEL_7:

    goto LABEL_8;
  }

  v31 = v15;
  v32 = a1;
  v33 = a6;
  objc_opt_class();
  v34 = objc_opt_isKindOfClass();

  v27 = [v22 content];
  if (v34)
  {
    v30 = a7;
    [a1 _handleInviteReply:v27 withUid:v23 serverURL:v46 syncKey:v14 owningNotification:v22 database:a6 store:a8 calendarHomeURL:v31 notificationCalendar:a7 notificationCalendarURL:v45 contactsProvider:v43 recordIDMap:v44];
    goto LABEL_7;
  }

  objc_opt_class();
  v35 = objc_opt_isKindOfClass();

  if (v35)
  {
    v27 = [v22 content];
    v30 = a7;
    [a1 _handleResourceChanged:v27 withUid:v23 serverURL:v46 syncKey:v14 database:a6 store:a8 calendarHomeURL:v31 notificationCalendar:a7 notificationCalendarURL:v45 recordIDMap:v44];
    goto LABEL_7;
  }

  v30 = a7;
LABEL_8:
  [v32 setURL:v46 forResourceWithUUID:v23 withDatabase:v33 notificationCalendar:v30 notificationCalendarURL:v45 recordIDMap:v44];
}

+ (int)_inviteStatusFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69920A0]])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6992098]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6992088]])
  {
    v4 = 2;
  }

  else
  {
    [v3 isEqualToString:*MEMORY[0x1E6992090]];
    v4 = 3;
  }

  return v4;
}

+ (void)_createNotificationWithInviteStatus:(int)a3 inDatabase:(CalDatabase *)a4
{
  if ((a3 - 1) < 3)
  {
    return CalDatabaseCreateInviteReplyNotification(a4);
  }

  if (!a3)
  {
    return CalDatabaseCreateNotification(a4);
  }

  return result;
}

+ (void)_handleInviteNotification:(id)a3 withUid:(id)a4 serverURL:(id)a5 syncKey:(id)a6 database:(CalDatabase *)a7 store:(void *)a8 calendarHomeURL:(id)a9 notificationCalendar:(void *)a10 notificationCalendarURL:(id)a11 recordIDMap:(id)a12
{
  v70 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v65 = a4;
  v64 = a6;
  v18 = a12;
  v19 = a11;
  v20 = a9;
  v21 = a5;
  v22 = [v17 inviteStatus];
  v23 = [v22 name];

  v62 = v23;
  v24 = [a1 _inviteStatusFromString:v23];
  v25 = [v21 calDAV_leastInfoStringRepresentationRelativeToParentURL:v19];

  v63 = v18;
  v26 = [a1 _copyNotificationWithExternalID:v25 inCalendar:a10 withDatabase:a7 recordIDMap:v18];
  if (!v26)
  {
    v26 = [a1 _createNotificationWithInviteStatus:v24 inDatabase:a7];
    CalNotificationSetOwner(v26, a10);
    CalNotificationSetExternalID(v26);
    CalNotificationSetExternalModTag(v26);
    CalNotificationSetUUID(v26);
    v27 = CalEntityCopyRecordID(v26);
    if (v27)
    {
      [v18 setUniqueIdentifier:v65 forRecordID:v27];
    }
  }

  v28 = [v17 hostURL];
  v29 = [v28 href];
  v30 = [v29 payloadAsFullURL];

  v31 = [v30 calDAV_leastInfoStringRepresentationRelativeToParentURL:v20];

  v32 = [v31 appendSlashIfNeeded];

  if (v30)
  {
    Calendar = CalDatabaseCopyCalendarWithExternalIDInStore(a7, v32, a8);
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (!Calendar)
    {
      Calendar = CalDatabaseCreateCalendar(a7);
      CalStoreAddCalendar(a8, Calendar);
      CalCalendarSetExternalID(Calendar);
      CalNotificationSetHostURL(v26, v30);
      CalCalendarSetNeedsNotification(Calendar);
    }

    CalCalendarSetIsSharingInvitation(Calendar);
    CalCalendarSetSharingStatus(Calendar);
    CalCalendarSetHidden(Calendar);
    CalCalendarSetImmutable(Calendar);
    CalCalendarSetAlwaysReadOnly(Calendar);
    CalCalendarSetSharingInvitationResponse(Calendar);
    v40 = [v17 organizer];
    v41 = [v40 commonName];
    v42 = [v41 payloadAsString];

    v43 = [v17 organizer];
    v44 = [v43 href];
    v45 = [v44 payloadAsFullURL];

    v61 = v42;
    CalCalendarSetSharedOwnerName(Calendar);
    [v45 absoluteString];
    CalCalendarSetSharedOwnerAddress(Calendar);
    v46 = [v17 summary];
    [v46 payloadAsString];
    CalCalendarSetTitle(Calendar);

    v47 = [v17 uid];
    [v47 payloadAsString];
    CalCalendarSetExternalIdentificationTag(Calendar);

    v48 = [v17 supportedCalendarComponentSet];
    v49 = [v48 componentsAsString];

    if ([v49 length])
    {
      v50 = [MEMORY[0x1E6992080] allowedCalendars:v49 contains:@"VEVENT"];
      v51 = [MEMORY[0x1E6992080] allowedCalendars:v49 contains:@"VTODO"];
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
    CalInviteReplyNotificationSetHostURL(v26, v30);
    v34 = [v17 summary];
    v35 = [v34 payloadAsString];

    CalInviteReplyNotificationSetSummary(v26, v35);
    CalInviteReplyNotificationSetStatus(v26);
    v36 = [MEMORY[0x1E695DF00] date];
    [v36 timeIntervalSinceReferenceDate];
    v38 = v37;

    CalInviteReplyNotificationSetCreationDate(v26, v38);
  }

  v39 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v67 = v24;
    v68 = 2112;
    v69 = v30;
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

+ (void)_handleInviteReply:(id)a3 withUid:(id)a4 serverURL:(id)a5 syncKey:(id)a6 owningNotification:(id)a7 database:(CalDatabase *)a8 store:(void *)a9 calendarHomeURL:(id)a10 notificationCalendar:(void *)a11 notificationCalendarURL:(id)a12 contactsProvider:(id)a13 recordIDMap:(id)a14
{
  v99 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v91 = a4;
  v20 = a5;
  v93 = a6;
  v21 = a7;
  v22 = a10;
  v23 = a12;
  v90 = a13;
  v24 = a14;
  v25 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v96 = v19;
    _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_INFO, "Handling invite reply notification %@", buf, 0xCu);
  }

  v26 = [v20 calDAV_leastInfoStringRepresentationRelativeToParentURL:v23];
  v27 = [a1 _copyNotificationWithExternalID:? inCalendar:? withDatabase:? recordIDMap:?];
  v92 = v21;
  v89 = v23;
  if (v27)
  {
    InviteReplyNotification = v27;
    v85 = v22;
    v94 = 0;
    v29 = v26;
    v30 = v91;
    goto LABEL_9;
  }

  v31 = [a1 _copyCalendarForReplyItem:v19 inDatabase:a8 store:a9 calendarHomeURL:v22];
  if (v31)
  {
    v32 = v31;
    InviteReplyNotification = CalDatabaseCreateInviteReplyNotification(a8);
    CalNotificationSetOwner(InviteReplyNotification, a11);
    v29 = v26;
    CalNotificationSetExternalID(InviteReplyNotification);
    CalNotificationSetExternalModTag(InviteReplyNotification);
    v30 = v91;
    CalNotificationSetUUID(InviteReplyNotification);
    CalInviteReplyNotificationSetInviteReplyCalendar(InviteReplyNotification, v32);
    v94 = CalCalendarCopyTitle(v32);
    v33 = CalEntityCopyRecordID(InviteReplyNotification);
    if (v33)
    {
      [v24 setUniqueIdentifier:v91 forRecordID:v33];
    }

    v85 = v22;
    CFRelease(v32);
    v21 = v92;
LABEL_9:
    v34 = [v21 dtstamp];
    v35 = [v34 payloadAsString];
    v36 = v21;
    v37 = [v35 length];

    if (v37)
    {
      v38 = MEMORY[0x1E69E3CA8];
      v39 = [v36 dtstamp];
      v40 = [v39 payloadAsString];
      v41 = [v38 dateFromICSString:v40];

      v42 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v41];
      v43 = CalDateFromICSDateAsUTC(v42);
      CalInviteReplyNotificationSetCreationDate(InviteReplyNotification, v43);
    }

    v44 = [v19 inviteStatus];
    v45 = [v44 name];

    v86 = v20;
    v88 = v24;
    if ([v45 isEqualToString:*MEMORY[0x1E6992088]])
    {
      v46 = v30;
    }

    else
    {
      v46 = v30;
      if (([v45 isEqualToString:*MEMORY[0x1E6992090]] & 1) == 0)
      {
        [v45 isEqualToString:*MEMORY[0x1E6992098]];
      }
    }

    CalInviteReplyNotificationSetStatus(InviteReplyNotification);
    v47 = [v19 hostURL];
    v48 = [v47 href];
    v49 = [v48 payloadAsFullURL];

    CalInviteReplyNotificationSetHostURL(InviteReplyNotification, v49);
    v50 = [v19 inReplyTo];
    v51 = [v50 payloadAsString];

    CalInviteReplyNotificationSetInReplyTo(InviteReplyNotification);
    v52 = [v19 summary];
    v53 = [v52 payloadAsString];
    v54 = v53;
    v55 = v94;
    if (v53)
    {
      v55 = v53;
    }

    v56 = v55;

    CalInviteReplyNotificationSetSummary(InviteReplyNotification, v56);
    v57 = [v19 firstName];
    if (v57 && (v58 = v57, [v19 lastName], v59 = objc_claimAutoreleasedReturnValue(), v59, v58, v59))
    {
      v60 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v61 = v60;
        v62 = [v19 firstName];
        v63 = [v19 lastName];
        *buf = 138412546;
        v96 = v62;
        v97 = 2112;
        v98 = v63;
        _os_log_impl(&dword_1DEBB1000, v61, OS_LOG_TYPE_INFO, "Invite reply has firstName: %@, lastName: %@", buf, 0x16u);
      }

      v64 = [v19 firstName];
      CalInviteReplyNotificationSetShareeFirstName(InviteReplyNotification);

      v65 = [v19 lastName];
      CalInviteReplyNotificationSetShareeLastName(InviteReplyNotification);
      v66 = v46;
    }

    else
    {
      v67 = [v19 acceptedURL];

      v66 = v46;
      v24 = v88;
      if (v67)
      {
LABEL_39:
        v82 = [v19 acceptedURL];

        if (v82)
        {
          v83 = [v19 acceptedURL];
          CalInviteReplyNotificationSetShareeAddress(InviteReplyNotification, v83);
        }

        CFRelease(InviteReplyNotification);

        v22 = v85;
        v20 = v86;
        goto LABEL_42;
      }

      v68 = [v19 href];
      v65 = [v68 payloadAsFullURL];

      v69 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = v65;
        _os_log_impl(&dword_1DEBB1000, v69, OS_LOG_TYPE_INFO, "Invite reply has no names. Using the provided address of %@", buf, 0xCu);
      }

      v70 = [v65 absoluteString];
      if (([v70 hasMailto] & 1) != 0 || objc_msgSend(v70, "hasTel"))
      {
        CalInviteReplyNotificationSetShareeAddress(InviteReplyNotification, v65);
        if ([v70 hasMailto])
        {
          v71 = [v70 stringRemovingMailto];
          v72 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v96 = v71;
            _os_log_impl(&dword_1DEBB1000, v72, OS_LOG_TYPE_INFO, "This looks like a mailto address. Search the addressbook for a contact with the address %@", buf, 0xCu);
          }

          v73 = [v90 fullNameForFirstContactMatchingEmailAddress:v71];
        }

        else
        {
          v71 = [v70 stringRemovingTel];
          v80 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v96 = v71;
            _os_log_impl(&dword_1DEBB1000, v80, OS_LOG_TYPE_INFO, "This looks like a telephone number. Search the addressbook for a contact with the phone number %@", buf, 0xCu);
          }

          v73 = [v90 fullNameForFirstContactMatchingPhoneNumber:v71];
        }

        v81 = v73;

        CalInviteReplyNotificationSetShareeDisplayName(InviteReplyNotification);
        v66 = v91;
      }
    }

    v24 = v88;
    goto LABEL_39;
  }

  v74 = CDBLogHandle;
  v29 = v26;
  v66 = v91;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    v75 = v74;
    [v19 hostURL];
    v77 = v76 = v22;
    v78 = [v77 href];
    v79 = [v78 payloadAsOriginalURL];
    *buf = 138412290;
    v96 = v79;
    _os_log_impl(&dword_1DEBB1000, v75, OS_LOG_TYPE_INFO, "Ignoring invite reply notification for an unknown calendar: %@", buf, 0xCu);

    v22 = v76;
  }

LABEL_42:

  v84 = *MEMORY[0x1E69E9840];
}

+ (void)_copyCalendarForReplyItem:(id)a3 inDatabase:(CalDatabase *)a4 store:(void *)a5 calendarHomeURL:(id)a6
{
  if (!a5)
  {
    return 0;
  }

  v9 = a6;
  v10 = [a3 hostURL];
  v11 = [v10 href];
  v12 = [v11 payloadAsFullURL];

  v13 = [v12 calDAV_leastInfoStringRepresentationRelativeToParentURL:v9];

  v14 = [v13 appendSlashIfNeeded];

  v15 = CalDatabaseCopyCalendarWithExternalIDInStore(a4, v14, a5);
  return v15;
}

+ (void)_handleResourceChanged:(id)a3 withUid:(id)a4 serverURL:(id)a5 syncKey:(id)a6 database:(CalDatabase *)a7 store:(void *)a8 calendarHomeURL:(id)a9 notificationCalendar:(void *)a10 notificationCalendarURL:(id)a11 recordIDMap:(id)a12
{
  v137 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v98 = a9;
  v20 = a1;
  v21 = a12;
  v22 = [a5 calDAV_leastInfoStringRepresentationRelativeToParentURL:a11];
  v23 = [a1 _copyNotificationWithExternalID:v22 inCalendar:a10 withDatabase:a7 recordIDMap:v21];
  v84 = v19;
  v85 = v18;
  v82 = v22;
  if (v23)
  {
    v24 = v23;
    CalResourceChangeNotificationRemoveAllChanges(v23);
  }

  else
  {
    v24 = CalDatabaseCreateResourceChangeNotification(a7);
    CalNotificationSetOwner(v24, a10);
    CalNotificationSetExternalID(v24);
    CalNotificationSetExternalModTag(v24);
    CalNotificationSetUUID(v24);
    v25 = CalEntityCopyRecordID(v24);
    if (v25)
    {
      [v21 setUniqueIdentifier:v18 forRecordID:v25];
    }
  }

  v26 = objc_alloc(MEMORY[0x1E69E3C90]);
  v27 = [v17 dtstamp];
  v28 = [v26 initWithValue:v27];

  v81 = v28;
  v29 = CalDateFromICSDateAsUTC(v28);
  v95 = v24;
  CalResourceChangeNotificationSetLastModifiedDate(v24, v29);
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v30 = [v17 created];
  v31 = [v30 countByEnumeratingWithState:&v126 objects:v136 count:16];
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
          objc_enumerationMutation(v30);
        }

        v35 = [a1 _createResourceChange:*(*(&v126 + 1) + 8 * i) withType:1 forNotification:v24 withRecurrenceID:0 database:a7 store:a8 calendarHomeURL:v98];
        if (v35)
        {
          CFRelease(v35);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v126 objects:v136 count:16];
    }

    while (v32);
  }

  v83 = v21;

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v86 = v17;
  obj = [v17 updated];
  v36 = v24;
  v89 = [obj countByEnumeratingWithState:&v122 objects:v135 count:16];
  if (v89)
  {
    v88 = *v123;
    v92 = a7;
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
        v39 = [v38 calendarChanges];
        v40 = [v20 _changedAttributesFromCalendarChanges:v39];

        if ([v40 count])
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v91 = [v40 allKeys];
          v99 = [v91 countByEnumeratingWithState:&v118 objects:v134 count:16];
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
                objc_enumerationMutation(v91);
              }

              v101 = v41;
              v42 = *(*(&v118 + 1) + 8 * v41);
              v100 = [v20 _createResourceChange:v38 withType:2 forNotification:v36 withRecurrenceID:v42 database:a7 store:a8 calendarHomeURL:v98];
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

                    a7 = v92;
                    v38 = v93;
                    v20 = a1;
                    v36 = v24;
                    v40 = v94;
                    break;
                  }
                }
              }

              v41 = v101 + 1;
            }

            while (v101 + 1 != v99);
            v99 = [v91 countByEnumeratingWithState:&v118 objects:v134 count:16];
            if (!v99)
            {
LABEL_46:

              goto LABEL_49;
            }
          }
        }

        v50 = [v20 _createResourceChange:v38 withType:2 forNotification:v36 withRecurrenceID:0 database:a7 store:a8 calendarHomeURL:v98];
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
  v51 = [v86 deleted];
  v52 = [v51 countByEnumeratingWithState:&v110 objects:v132 count:16];
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
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v110 + 1) + 8 * k);
        v57 = [a1 _createResourceChange:v56 withType:3 forNotification:v36 withRecurrenceID:0 database:a7 store:a8 calendarHomeURL:v98];
        if (v57)
        {
          v58 = v57;
          v59 = [v56 summary];
          v60 = v59;
          if (v59)
          {
            v61 = v59;
          }

          else
          {
            v61 = [v56 displayName];
          }

          v62 = v61;

          CalResourceChangeSetDeletedSummary(v58);
          CFRelease(v58);
        }

        v36 = v95;
      }

      v53 = [v51 countByEnumeratingWithState:&v110 objects:v132 count:16];
    }

    while (v53);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v63 = [v86 collectionChanges];
  v64 = [v63 countByEnumeratingWithState:&v106 objects:v131 count:16];
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
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v106 + 1) + 8 * m);
        v69 = [a1 _createResourceChange:v68 withType:4 forNotification:v95 withRecurrenceID:0 database:a7 store:a8 calendarHomeURL:v98];
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

      v65 = [v63 countByEnumeratingWithState:&v106 objects:v131 count:16];
    }

    while (v65);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v71 = [v86 collectionUpdates];
  v72 = [v71 countByEnumeratingWithState:&v102 objects:v130 count:16];
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
          objc_enumerationMutation(v71);
        }

        v77 = *(*(&v102 + 1) + 8 * n);
        v78 = [a1 _createResourceChange:v77 withType:5 forNotification:v73 withRecurrenceID:0 database:a7 store:a8 calendarHomeURL:v98];
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

      v74 = [v71 countByEnumeratingWithState:&v102 objects:v130 count:16];
    }

    while (v74);
  }

  CFRelease(v73);
  v80 = *MEMORY[0x1E69E9840];
}

+ (void)_createResourceChange:(id)a3 withType:(unsigned int)a4 forNotification:(void *)a5 withRecurrenceID:(id)a6 database:(CalDatabase *)a7 store:(void *)a8 calendarHomeURL:(id)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a9;
  v17 = CalDatabaseCreateResourceChangeOfType(a7);
  CalResourceChangeNotificationAddChange(a5, v17);
  v18 = [v14 href];
  v19 = [v18 payloadAsFullURL];

  v20 = [v19 pathExtension];
  v21 = [v20 isEqualToString:@"ics"];

  if (v21)
  {
    v22 = [v19 URLByDeletingLastPathComponent];
    [v22 calDAV_leastInfoStringRepresentationRelativeToParentURL:v16];
    v61 = a7;
    v23 = a4;
    v24 = a8;
    v25 = v17;
    v26 = v19;
    v27 = v14;
    v28 = v16;
    v30 = v29 = v15;
    v31 = [v30 appendSlashIfNeeded];

    v15 = v29;
    v16 = v28;
    v14 = v27;
    v19 = v26;
    v17 = v25;
    a8 = v24;
    a4 = v23;
    a7 = v61;
  }

  else
  {
    v22 = [v19 calDAV_leastInfoStringRepresentationRelativeToParentURL:v16];
    v31 = [v22 appendSlashIfNeeded];
  }

  v32 = CalDatabaseCopyCalendarWithExternalIDInStore(a7, v31, a8);
  if (v32)
  {
    v33 = v32;
    CalResourceChangeSetCalendar(v17, v32);
    CFRelease(v33);
  }

  if (a4 - 1 <= 1)
  {
    v34 = [v19 calDAV_leastInfoStringRepresentationRelativeToParentURL:v16];
    v35 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore(a7, -1, v34, 0, a8);
    v62 = v15;
    if (v15)
    {
      if (([v15 isEqualToString:@"master"] & 1) == 0)
      {
        v53 = CalEventCopyDetachedEvents(v35);
        if ([(__CFArray *)v53 count])
        {
          v54 = objc_alloc(MEMORY[0x1E69E3C90]);
          v55 = [MEMORY[0x1E69E3CA8] dateFromICSString:v15];
          v56 = [v54 initWithValue:v55];

          v61 = v56;
          v57 = CalDateFromICSDateAsUTC(v56);
          if ([(__CFArray *)v53 count])
          {
            v58 = 0;
            while (1)
            {
              v36 = [(__CFArray *)v53 objectAtIndexedSubscript:v58, v61];

              if (CalEventGetOriginalStartDate(v36) == v57)
              {
                break;
              }

              if (++v58 >= [(__CFArray *)v53 count])
              {
                goto LABEL_36;
              }
            }

            if (v36)
            {
              CFRetain(v36);
              v15 = v36;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
LABEL_36:
            v15 = 0;
            v36 = v35;
          }
        }

        else
        {
          v15 = 0;
          v36 = v35;
        }

        if (!v36)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v15 = 0;
    }

    v36 = v35;
    if (!v35)
    {
LABEL_12:
      if (v35)
      {
        CFRelease(v35);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      v15 = v62;
      goto LABEL_17;
    }

LABEL_11:
    CalResourceChangeSetCalendarItem(v17, v36);
    goto LABEL_12;
  }

LABEL_17:
  v37 = [v14 changedBy];
  v38 = v37;
  if (!v37)
  {
    goto LABEL_30;
  }

  v39 = [v37 displayName];
  if (v39)
  {
    CalResourceChangeSetChangedByDisplayName(v17);
  }

  else
  {
    v40 = [v38 firstName];
    CalResourceChangeSetChangedByFirstName(v17);

    v41 = [v38 lastName];
    CalResourceChangeSetChangedByLastName(v17);
  }

  v42 = [v38 emailAddress];

  if (v42)
  {
    v43 = [v38 emailAddress];
    v44 = [v43 stringAddingMailto];
  }

  else
  {
    v45 = [v38 phoneNumber];

    if (!v45)
    {
      v59 = [v38 address];

      if (v59)
      {
        v60 = [v38 address];
        CalResourceChangeSetChangedByAddress(v17, v60);
      }

      goto LABEL_27;
    }

    v43 = [v38 phoneNumber];
    v44 = [v43 stringAddingTel];
  }

  v46 = CFURLCreateWithString(0, v44, 0);

  CalResourceChangeSetChangedByAddress(v17, v46);
  if (v46)
  {
    CFRelease(v46);
  }

LABEL_27:
  v47 = objc_alloc(MEMORY[0x1E69E3C90]);
  v48 = [v38 dtstamp];
  v49 = [v47 initWithValue:v48];

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

+ (id)_changedAttributesFromCalendarChanges:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v43 = [MEMORY[0x1E695DF90] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v3;
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
        v40 = [v5 recurrences];
        v42 = [v40 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
                objc_enumerationMutation(v40);
              }

              v45 = v6;
              v7 = *(*(&v50 + 1) + 8 * v6);
              v8 = [v7 recurrenceID];
              if (v8)
              {
                v9 = [v7 recurrenceID];
                v10 = [v9 payloadAsString];
              }

              else
              {
                v10 = @"master";
              }

              v11 = [v43 objectForKeyedSubscript:v10];
              if (!v11)
              {
                v11 = objc_opt_new();
                [v43 setObject:v11 forKeyedSubscript:v10];
              }

              v44 = v10;
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v12 = [v7 changes];
              v13 = [v12 changedProperties];

              v14 = [v13 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v46 + 1) + 8 * v17);
                    v19 = [v18 nameAttribute];

                    if (v19)
                    {
                      v20 = [v18 nameAttribute];
                      v21 = [v20 caseInsensitiveCompare:@"dtstart"];

                      if (v21)
                      {
                        goto LABEL_23;
                      }

                      v23 = [v18 typeAttribute];
                      if (v23 && (v24 = v23, [v18 typeAttribute], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "caseInsensitiveCompare:", @"time"), v25, v24, !v26))
                      {
                        v31 = v11;
                        v32 = @"TimeChanged";
                      }

                      else
                      {
                        v27 = [v18 typeAttribute];
                        if (!v27 || (v28 = v27, [v18 typeAttribute], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "caseInsensitiveCompare:", @"date"), v29, v28, v30))
                        {
LABEL_23:
                          v22 = [v18 nameAttribute];
                          [v11 addObject:v22];

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
                  v33 = [v13 countByEnumeratingWithState:&v46 objects:v58 count:16];
                  v15 = v33;
                }

                while (v33);
              }

              v6 = v45 + 1;
            }

            while (v45 + 1 != v42);
            v42 = [v40 countByEnumeratingWithState:&v50 objects:v59 count:16];
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

  return v43;
}

+ (void)_copyNotificationWithUniqueIdentifier:(id)a3 inCalendar:(void *)a4 orStore:(void *)a5 withDatabase:(CalDatabase *)a6 recordIDMap:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = [v12 recordIDForUniqueIdentifier:v11];
  if (!v13 || (v14 = CalDatabaseCopyEntityWithRecordID(a6, v13)) == 0)
  {
    v15 = CalDatabaseCopyNotificationWithUniqueIdentifierInCalendarOrStore(a6, -1, v11, a4, a5);
    v14 = v15;
    if (v15)
    {
      v16 = CalEntityCopyRecordID(v15);
      if (v16)
      {
        v17 = v16;
        [v12 setUniqueIdentifier:v11 forRecordID:v16];
        CFRelease(v17);
      }
    }
  }

  return v14;
}

+ (void)_copyNotificationWithExternalID:(id)a3 inCalendar:(void *)a4 withDatabase:(CalDatabase *)a5 recordIDMap:(id)a6
{
  v9 = a3;
  v10 = [a6 recordIDForExternalIdentifier:v9];
  if (v10)
  {
    v11 = CalDatabaseCopyEntityWithRecordID(a5, v10);
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    v11 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore(a5, -1, v9, a4, 0);
  }

LABEL_7:

  return v11;
}

+ (void)setURL:(id)a3 forResourceWithUUID:(id)a4 withDatabase:(CalDatabase *)a5 notificationCalendar:(void *)a6 notificationCalendarURL:(id)a7 recordIDMap:(id)a8
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  if (v14)
  {
    v18 = [a1 _copyNotificationWithUniqueIdentifier:v15 inCalendar:a6 orStore:0 withDatabase:a5 recordIDMap:v17];
    if (v18)
    {
      v19 = v18;
      v20 = [v14 calDAV_leastInfoStringRepresentationRelativeToParentURL:v16];
      CalNotificationSetExternalID(v19);
      v21 = CalEntityCopyRecordID(v19);
      if (v21)
      {
        v22 = v21;
        [v17 setExternalIdentifier:v20 forRecordID:v21];
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
        v26 = v15;
        _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_DEFAULT, "Couldn't set url for the event %@ because it doesn't exist in our database", &v25, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end