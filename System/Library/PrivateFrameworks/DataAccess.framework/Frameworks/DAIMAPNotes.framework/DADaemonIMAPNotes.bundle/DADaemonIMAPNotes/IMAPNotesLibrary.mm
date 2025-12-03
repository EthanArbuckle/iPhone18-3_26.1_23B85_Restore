@interface IMAPNotesLibrary
- (BOOL)isMessageContentsLocallyAvailable:(id)available;
- (DAIMAPNotesDaemonAccount)notesAccount;
- (IMAPAccount)account;
- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3;
- (id)getDetailsForAllMessagesFromMailbox:(id)mailbox;
- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox;
- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)range fromMailbox:(id)mailbox;
- (id)mailboxUidForMessage:(id)message;
- (id)messageWithMessageID:(id)d options:(unsigned int)options inMailbox:(id)mailbox;
- (id)messageWithRemoteID:(id)d inRemoteMailbox:(id)mailbox;
- (id)messagesForMailbox:(id)mailbox olderThanNumberOfDays:(int)days;
- (id)messagesWithMessageIDHeader:(id)header;
- (id)messagesWithSummariesForMailbox:(id)mailbox range:(_NSRange)range;
- (id)oldestMessageInMailbox:(id)mailbox;
- (id)sequenceIdentifierForMessagesWithRemoteIDs:(id)ds inMailbox:(id)mailbox;
- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (unsigned)maximumRemoteIDForMailbox:(id)mailbox;
- (unsigned)minimumRemoteIDForMailbox:(id)mailbox;
- (unsigned)nonDeletedCountForMailbox:(id)mailbox;
- (unsigned)totalCountForMailbox:(id)mailbox;
- (void)compactMailbox:(id)mailbox;
- (void)compactMessages:(id)messages permanently:(BOOL)permanently;
- (void)removeAllMessagesFromMailbox:(id)mailbox andNotify:(BOOL)notify;
- (void)sendMessagesMatchingCriterion:(id)criterion to:(id)to options:(unsigned int)options range:(_NSRange)range;
- (void)setFlags:(unint64_t)flags forMessage:(id)message;
- (void)setFlagsForMessages:(id)messages mask:(unint64_t)mask;
- (void)setNoteContext:(id)context;
- (void)setSequenceIdentifier:(id)identifier forMessagesWithRemoteIDs:(id)ds inMailbox:(id)mailbox;
@end

@implementation IMAPNotesLibrary

- (unsigned)maximumRemoteIDForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  noteContext = [(IMAPNotesLibrary *)self noteContext];

  if (!noteContext)
  {
    sub_F3E0();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  noteContext2 = [(IMAPNotesLibrary *)self noteContext];
  v8 = [WeakRetained localNotesAccountInContext:noteContext2];

  v9 = [v8 storeForExternalId:mailboxCopy];
  maximumServerIntId = [v9 maximumServerIntId];
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    v14 = 138412546;
    v15 = mailboxCopy;
    v16 = 1024;
    v17 = maximumServerIntId;
    _os_log_impl(&dword_0, v11, v12, "Max remote id for mailbox url %@ returning %d", &v14, 0x12u);
  }

  return maximumServerIntId;
}

- (id)getDetailsForAllMessagesFromMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  noteContext = [(IMAPNotesLibrary *)self noteContext];

  if (!noteContext)
  {
    sub_F44C();
  }

  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v43 = mailboxCopy;
    _os_log_impl(&dword_0, v6, v7, "Get details for all messages in mailbox at url %@", buf, 0xCu);
  }

  v8 = +[NSMutableArray array];
  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  noteContext2 = [(IMAPNotesLibrary *)self noteContext];
  v11 = [WeakRetained localNotesAccountInContext:noteContext2];

  v12 = [v11 storeForExternalId:mailboxCopy];
  if (v12)
  {
    v30 = v11;
    v31 = mailboxCopy;
    noteContext3 = [(IMAPNotesLibrary *)self noteContext];
    v14 = [noteContext3 allNotesInCollection:v12];

    v15 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          if ([v21 hasValidServerIntId])
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v18);
    }

    v29 = v12;

    v22 = [v15 sortedArrayUsingFunction:sub_18C0 context:0];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [DAIMAPNotesUtils _copyMessageDetailsForNote:*(*(&v32 + 1) + 8 * j) inLibrary:self];
          if (v27)
          {
            [v8 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v24);
    }

    v11 = v30;
    mailboxCopy = v31;
    v12 = v29;
  }

  return v8;
}

- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)range fromMailbox:(id)mailbox
{
  length = range.length;
  location = range.location;
  mailboxCopy = mailbox;
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(IMAPNotesLibrary *)self getDetailsForAllMessagesFromMailbox:mailboxCopy];
  }

  else
  {
    noteContext = [(IMAPNotesLibrary *)self noteContext];

    if (!noteContext)
    {
      sub_F5E0();
    }

    v8 = +[NSMutableArray array];
    WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
    noteContext2 = [(IMAPNotesLibrary *)self noteContext];
    v12 = [WeakRetained localNotesAccountInContext:noteContext2];

    v24 = v12;
    v13 = [v12 storeForExternalId:mailboxCopy];
    v14 = [v13 notesForServerIntIdsInRange:location ascending:length + 1 limit:{1, 0}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [DAIMAPNotesUtils _copyMessageDetailsForNote:*(*(&v25 + 1) + 8 * i) inLibrary:self];
          if (v19)
          {
            [v8 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v16);
    }

    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v20, v21))
    {
      v22 = [v8 count];
      *buf = 134217984;
      v30 = v22;
      _os_log_impl(&dword_0, v20, v21, "Returning %lu message details", buf, 0xCu);
    }
  }

  return v8;
}

- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  noteContext = [(IMAPNotesLibrary *)self noteContext];

  if (!noteContext)
  {
    sub_F64C();
  }

  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 134218754;
    messagesCopy = messages;
    v49 = 2112;
    v50 = mailboxCopy;
    v51 = 2048;
    bottomCopy = bottom;
    v53 = 2048;
    rangeCopy = range;
    _os_log_impl(&dword_0, v14, v15, "Getting details for %lu messages in mailbox %@ from top of range [%lu, %lu]", buf, 0x2Au);
  }

  v41 = +[NSMutableArray array];
  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  noteContext2 = [(IMAPNotesLibrary *)self noteContext];
  v18 = [WeakRetained localNotesAccountInContext:noteContext2];

  v40 = v18;
  v19 = [v18 storeForExternalId:mailboxCopy];
  v38 = range - bottom;
  bottomCopy2 = bottom;
  [v19 notesForServerIntIdsInRange:bottom ascending:range - bottom + 1 limit:{0, messages}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = v45 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v21)
  {

    if (!a6)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v22 = v21;
  v34 = v19;
  v35 = a6;
  v36 = v15;
  v37 = mailboxCopy;
  v23 = 0;
  v24 = *v43;
  v25 = -1;
  while (2)
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v43 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v27 = [DAIMAPNotesUtils _copyMessageDetailsForNote:*(*(&v42 + 1) + 8 * i) inLibrary:self, v34, v35];
      if (v27)
      {
        [v41 insertObject:v27 atIndex:0];
        v28 = *&v27[OBJC_IVAR___MFMessageDetails_uid];
        if (v23 <= v28)
        {
          v23 = *&v27[OBJC_IVAR___MFMessageDetails_uid];
        }

        if (v25 >= v28)
        {
          v25 = *&v27[OBJC_IVAR___MFMessageDetails_uid];
        }

        if (!--messages)
        {

          goto LABEL_20;
        }
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_20:

  mailboxCopy = v37;
  v15 = v36;
  v19 = v34;
  a6 = v35;
  if (v35)
  {
    v29 = v23 - v25;
    if (v23 >= v25)
    {
      v30 = v25;
LABEL_25:
      a6->location = v30;
      a6->length = v29;
      goto LABEL_26;
    }

LABEL_24:
    v29 = v38;
    v30 = bottomCopy2;
    goto LABEL_25;
  }

LABEL_26:
  v31 = DALoggingwithCategory();
  if (os_log_type_enabled(v31, v15))
  {
    v32 = [v41 count];
    *buf = 134217984;
    messagesCopy = v32;
    _os_log_impl(&dword_0, v31, v15, "Returning %lu message details", buf, 0xCu);
  }

  return v41;
}

- (void)compactMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v22 = mailboxCopy;
    _os_log_impl(&dword_0, v5, v6, "Deleting all notes in mailbox at url %@", buf, 0xCu);
  }

  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_F6B8();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v9 = [WeakRetained localNotesAccountInContext:noteContext];

  v10 = [v9 storeForExternalId:mailboxCopy];
  v11 = [noteContext allNotesInCollection:v10];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [noteContext deleteNoteRegardlessOfConstraints:*(*(&v16 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)compactMessages:(id)messages permanently:(BOOL)permanently
{
  permanentlyCopy = permanently;
  messagesCopy = messages;
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_F714();
  }

  v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = messagesCopy;
  v7 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v10 = _CPLog_to_os_log_type[3];
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 libraryID]);
          [v35 addObject:v13];

          v14 = [v12 uid];
LABEL_12:
          v16 = [NSNumber numberWithUnsignedLong:v14];
          [v6 addObject:v16];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [NSNumber numberWithUnsignedInt:*&v12[OBJC_IVAR___MFMessageDetails_libraryID]];
          [v35 addObject:v15];

          v14 = *&v12[OBJC_IVAR___MFMessageDetails_uid];
          goto LABEL_12;
        }

        v16 = DALoggingwithCategory();
        if (os_log_type_enabled(v16, v10))
        {
          *buf = 138412290;
          v46 = v12;
          _os_log_impl(&dword_0, v16, v10, "Yikes, being asked to compact a message I don't know how to grok: %@", buf, 0xCu);
        }

LABEL_13:

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v17 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      v8 = v17;
    }

    while (v17);
  }

  v18 = DALoggingwithCategory();
  v19 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v18, v19))
  {
    v20 = &stru_1C808;
    if (permanentlyCopy)
    {
      v20 = @" permanently";
    }

    *buf = 138412546;
    v46 = v35;
    v47 = 2112;
    v48 = v20;
    _os_log_impl(&dword_0, v18, v19, "Deleting messages with int ids %@%@", buf, 0x16u);
  }

  v21 = [noteContext notesForIntegerIds:v35];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        v27 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v26 serverIntId]);
        v28 = [v6 containsObject:v27];

        if (v28)
        {
          [noteContext deleteNoteRegardlessOfConstraints:v26];
        }

        else
        {
          v29 = DALoggingwithCategory();
          if (os_log_type_enabled(v29, v19))
          {
            integerId = [v26 integerId];
            serverIntId = [v26 serverIntId];
            *buf = 138412546;
            v46 = integerId;
            v47 = 2048;
            v48 = serverIntId;
            _os_log_impl(&dword_0, v29, v19, "Skipping delete of message with int id %@, as we've recently modified its server int id to be something new %lld (condensed add/delete into a modify)", buf, 0x16u);
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v23);
  }
}

- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3
{
  bodiesCopy = bodies;
  messagesCopy = messages;
  mailboxCopy = mailbox;
  messageCopy = message;
  dsCopy = ds;
  v20 = DALoggingwithCategory();
  v21 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v20, v21))
  {
    *buf = 138412802;
    v118 = messagesCopy;
    v119 = 2112;
    v120 = dsCopy;
    v121 = 2112;
    v122 = mailboxCopy;
    _os_log_impl(&dword_0, v20, v21, "Adding messages %@ (remote ids %@) to mailbox uid %@", buf, 0x20u);
  }

  v94 = +[NSMutableArray array];
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_F780();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v92 = noteContext;
  v24 = [WeakRetained localNotesAccountInContext:noteContext];

  uRLString = [mailboxCopy URLString];
  v88 = v24;
  v93 = [v24 storeForExternalId:uRLString];

  v26 = objc_opt_new();
  v100 = objc_opt_new();
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v27 = messagesCopy;
  v28 = [v27 countByEnumeratingWithState:&v110 objects:v116 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v111;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v111 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v110 + 1) + 8 * i);
        v33 = [v32 uid];
        if (v33)
        {
          v34 = [NSNumber numberWithUnsignedInt:v33];
          v35 = v26;
LABEL_12:
          [v35 addObject:v34];

          continue;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          localIntegerId = [v32 localIntegerId];
          if (localIntegerId)
          {
            v34 = [NSNumber numberWithInt:localIntegerId];
            v35 = v100;
            goto LABEL_12;
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v110 objects:v116 count:16];
    }

    while (v29);
  }

  v87 = a2;
  v97 = v27;
  selfCopy = self;
  v91 = dsCopy;

  v37 = [v93 notesForServerIntIds:v26];
  v38 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v39 = v37;
  v40 = [v39 countByEnumeratingWithState:&v106 objects:v115 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v107;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v107 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v106 + 1) + 8 * j);
        if (([v44 hasValidServerIntId] & 1) == 0)
        {
          sub_F7DC(v44);
        }

        v45 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v44 serverIntId]);
        [v38 setObject:v44 forKeyedSubscript:v45];
      }

      v41 = [v39 countByEnumeratingWithState:&v106 objects:v115 count:16];
    }

    while (v41);
  }

  v46 = [v93 notesForIntegerIds:v100];

  v47 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v48 = v46;
  v49 = [v48 countByEnumeratingWithState:&v102 objects:v114 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v103;
    do
    {
      for (k = 0; k != v50; k = k + 1)
      {
        if (*v103 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v102 + 1) + 8 * k);
        integerId = [v53 integerId];
        [v47 setObject:v53 forKeyedSubscript:integerId];
      }

      v50 = [v48 countByEnumeratingWithState:&v102 objects:v114 count:16];
    }

    while (v50);
  }

  v55 = v91;
  if (![v97 count])
  {
LABEL_61:
    v101 = 0;
    v79 = [v92 save:&v101];
    v80 = v101;
    if ((v79 & 1) == 0)
    {
      v81 = DALoggingwithCategory();
      v82 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v81, v82))
      {
        dAExtendedDescription = [v80 DAExtendedDescription];
        *buf = 138412290;
        v118 = dAExtendedDescription;
        _os_log_impl(&dword_0, v81, v82, "Failed to save: %@", buf, 0xCu);
      }

      if ([NoteContext databaseIsCorrupt:v80])
      {
        v84 = DALoggingwithCategory();
        if (os_log_type_enabled(v84, v82))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v84, v82, "Notes database was corrupted! This is a fatal error, so let's try that again.", buf, 2u);
        }

        v85 = +[NSAssertionHandler currentHandler];
        [v85 handleFailureInMethod:v87 object:selfCopy file:@"IMAPNotesLibrary.m" lineNumber:335 description:{@"Notes db was corrupted.  Crashing the daemon to get a second chance at it (err %@)", v80}];
      }
    }

    goto LABEL_69;
  }

  v56 = 0;
  v89 = 0;
  v57 = 1;
  v58 = v97;
  do
  {
    v99 = v57;
    v59 = [v58 objectAtIndexedSubscript:v56];
    if ([v55 count] <= v56)
    {
      longLongValue = 0;
    }

    else
    {
      v60 = [v55 objectAtIndexedSubscript:v56];
      longLongValue = [v60 longLongValue];
    }

    v62 = [v59 uid];
    if (v62)
    {
      v63 = [NSNumber numberWithUnsignedLong:v62];
      v64 = [v38 objectForKeyedSubscript:v63];

      goto LABEL_41;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      localIntegerId2 = [v59 localIntegerId];
      if (localIntegerId2)
      {
        v66 = [NSNumber numberWithInt:localIntegerId2];
        v64 = [v47 objectForKeyedSubscript:v66];

        if (longLongValue)
        {
          [v64 setServerIntId:longLongValue];
        }

LABEL_41:
        if (v64)
        {
          goto LABEL_55;
        }
      }
    }

    v67 = [DAIMAPNotesUtils messageIsSyncableNote:v59];
    if (v67 && bodiesCopy)
    {
      messageData = [v59 messageData];
      notesAccount = [(IMAPNotesLibrary *)selfCopy notesAccount];
      attachmentManager = [notesAccount attachmentManager];
      v64 = [DAIMAPNotesUtils _noteObjectFromMessage:v59 withTextContentData:messageData inStore:v93 attachmentManager:attachmentManager andContext:v92];

LABEL_54:
      v55 = v91;
      if (!v64)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    notesAccount2 = [(IMAPNotesLibrary *)selfCopy notesAccount];
    attachmentManager2 = [notesAccount2 attachmentManager];
    v64 = [DAIMAPNotesUtils _noteObjectFromMessage:v59 withTextContentData:0 inStore:v93 attachmentManager:attachmentManager2 andContext:v92];

    v73 = v67 ^ 1;
    if (!v64)
    {
      v73 = 1;
    }

    if (v73)
    {
      goto LABEL_54;
    }

    v74 = objc_loadWeakRetained(&selfCopy->_notesAccount);
    [v74 addNoteNeedingBodyDownload:v64];

    v89 = 1;
    v55 = v91;
LABEL_55:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      messageFlags = [v59 messageFlags];
      if (messageFlags != [v64 flags])
      {
        [v64 setFlags:messageFlags];
      }
    }

    v76 = objc_loadWeakRetained(&selfCopy->_account);
    v77 = [DAIMAPNotesUtils messageFromLocalNoteObject:v64 inMailboxUid:mailboxCopy inAccount:v76];

    [v94 addObject:v77];
    [messageCopy setObject:v77 forKeyedSubscript:v59];

LABEL_59:
    v56 = v99;
    v58 = v97;
    v78 = [v97 count];
    v57 = v99 + 1;
  }

  while (v78 > v99);
  if ((v89 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_69:

  return v94;
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  dictionaryCopy = dictionary;
  messagesCopy = messages;
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_F868();
  }

  v8 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = messagesCopy;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v49 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 libraryID]);
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v11);
  }

  v37 = v8;
  v38 = noteContext;
  v16 = [noteContext notesForIntegerIds:v8];
  v36 = v16;
  if ([v16 count])
  {
    v17 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v45 + 1) + 8 * j);
          integerId = [v23 integerId];
          [v17 setObject:v23 forKeyedSubscript:integerId];
        }

        v20 = [v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v17 = 0;
  }

  v39 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = v9;
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v41 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v30 libraryID]);
          v32 = [v17 objectForKeyedSubscript:v31];

          if (v32)
          {
            flags = [v32 flags];
            v34 = MFMessageFlagsByApplyingDictionary();
            if (flags != v34)
            {
              [v32 setFlags:v34];
              [v39 addObject:v30];
            }
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v27);
  }

  return v39;
}

- (id)mailboxUidForMessage:(id)message
{
  messageStore = [message messageStore];
  mailboxUid = [messageStore mailboxUid];

  return mailboxUid;
}

- (BOOL)isMessageContentsLocallyAvailable:(id)available
{
  availableCopy = available;
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [availableCopy libraryID]), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [NSSet setWithObject:v6];
    v9 = [noteContext notesForIntegerIds:v8];

    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setFlags:(unint64_t)flags forMessage:(id)message
{
  messageCopy = message;
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_F8D4();
  }

  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    v19 = 134218242;
    flagsCopy = flags;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&dword_0, v8, v9, "Setting flags %llx for message %@", &v19, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [messageCopy libraryID]);
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSSet setWithObject:v10];
  v12 = [noteContext notesForIntegerIds:v11];

  if ([v12 count])
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    if ([v13 flags] != flags)
    {
      [v13 setFlags:flags];
    }

    remoteID = [messageCopy remoteID];

    if (remoteID)
    {
      remoteID2 = [messageCopy remoteID];
      longLongValue = [remoteID2 longLongValue];

      serverIntId = [v13 serverIntId];
      v18 = DALoggingwithCategory();
      if (os_log_type_enabled(v18, v9))
      {
        v19 = 134218240;
        flagsCopy = longLongValue;
        v21 = 2048;
        v22 = serverIntId;
        _os_log_impl(&dword_0, v18, v9, "Testing remote id %lld with local id %lld", &v19, 0x16u);
      }

      if (longLongValue != serverIntId)
      {
        [v13 setServerIntId:longLongValue];
      }
    }
  }
}

- (id)sequenceIdentifierForMessagesWithRemoteIDs:(id)ds inMailbox:(id)mailbox
{
  dsCopy = ds;
  mailboxCopy = mailbox;
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_F940();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v10 = [WeakRetained localNotesAccountInContext:noteContext];

  v11 = [v10 storeForExternalId:mailboxCopy];

  if ([dsCopy count])
  {
    v12 = [NSSet setWithArray:dsCopy];
    v13 = [v11 minimumSequenceNumberForServerIntIds:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [NSString stringWithFormat:@"%llu", v13];

  return v14;
}

- (void)setSequenceIdentifier:(id)identifier forMessagesWithRemoteIDs:(id)ds inMailbox:(id)mailbox
{
  identifierCopy = identifier;
  dsCopy = ds;
  mailboxCopy = mailbox;
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_F9AC();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v13 = [WeakRetained localNotesAccountInContext:noteContext];

  v14 = [v13 storeForExternalId:mailboxCopy];
  if ([dsCopy count])
  {
    v23 = [NSSet setWithArray:dsCopy];
    v15 = [v14 notesForServerIntIds:?];
    v24 = identifierCopy;
    longLongValue = [identifierCopy longLongValue];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = longLongValue & ~(longLongValue >> 63);
      v21 = *v26;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v25 + 1) + 8 * i) setSequenceNumber:v20];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    identifierCopy = v24;
  }
}

- (void)removeAllMessagesFromMailbox:(id)mailbox andNotify:(BOOL)notify
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v5, v6, "Need to write %s", &v7, 0xCu);
  }
}

- (id)messageWithMessageID:(id)d options:(unsigned int)options inMailbox:(id)mailbox
{
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v6, v7))
  {
    v9 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v6, v7, "Need to write %s", &v9, 0xCu);
  }

  return 0;
}

- (id)messagesWithMessageIDHeader:(id)header
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v4, v5, "Need to write %s", &v7, 0xCu);
  }

  return 0;
}

- (void)sendMessagesMatchingCriterion:(id)criterion to:(id)to options:(unsigned int)options range:(_NSRange)range
{
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v7, v8, "Need to write %s", &v9, 0xCu);
  }
}

- (id)messagesForMailbox:(id)mailbox olderThanNumberOfDays:(int)days
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v5, v6, "Need to write %s", &v8, 0xCu);
  }

  return 0;
}

- (id)messagesWithSummariesForMailbox:(id)mailbox range:(_NSRange)range
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v5, v6, "Need to write %s", &v8, 0xCu);
  }

  return 0;
}

- (unsigned)nonDeletedCountForMailbox:(id)mailbox
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v4, v5, "Need to write %s", &v7, 0xCu);
  }

  return 0;
}

- (unsigned)totalCountForMailbox:(id)mailbox
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v4, v5, "Need to write %s", &v7, 0xCu);
  }

  return 0;
}

- (id)oldestMessageInMailbox:(id)mailbox
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v4, v5, "Need to write %s", &v7, 0xCu);
  }

  return 0;
}

- (unsigned)minimumRemoteIDForMailbox:(id)mailbox
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v4, v5, "Need to write %s", &v7, 0xCu);
  }

  return 0;
}

- (void)setFlagsForMessages:(id)messages mask:(unint64_t)mask
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_0, v5, v6, "Need to write %s", &v7, 0xCu);
  }
}

- (id)messageWithRemoteID:(id)d inRemoteMailbox:(id)mailbox
{
  dCopy = d;
  mailboxCopy = mailbox;
  noteContext = [(IMAPNotesLibrary *)self noteContext];
  if (!noteContext)
  {
    sub_FA18();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v10 = [WeakRetained localNotesAccountInContext:noteContext];

  v11 = [v10 storeForExternalId:mailboxCopy];

  longLongValue = [dCopy longLongValue];
  v13 = [NSNumber numberWithLongLong:longLongValue];
  v14 = [NSSet setWithObject:v13];
  v15 = [v11 notesForServerIntIds:v14];

  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = objc_loadWeakRetained(&self->_account);
    v18 = [DAIMAPNotesUtils messageFromLocalNoteObject:v16 inMailboxUid:0 inAccount:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = DALoggingwithCategory();
  v20 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v19, v20))
  {
    v22 = 134218498;
    v23 = longLongValue;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_0, v19, v20, "message with remote id %lld (%@) returning %@", &v22, 0x20u);
  }

  return v18;
}

- (void)setNoteContext:(id)context
{
  contextCopy = context;
  if (self->_noteContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_noteContext, context);
    contextCopy = v6;
  }
}

- (IMAPAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

- (DAIMAPNotesDaemonAccount)notesAccount
{
  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);

  return WeakRetained;
}

@end