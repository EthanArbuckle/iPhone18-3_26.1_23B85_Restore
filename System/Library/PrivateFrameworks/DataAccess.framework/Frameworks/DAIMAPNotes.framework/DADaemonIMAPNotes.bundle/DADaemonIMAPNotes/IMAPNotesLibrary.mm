@interface IMAPNotesLibrary
- (BOOL)isMessageContentsLocallyAvailable:(id)a3;
- (DAIMAPNotesDaemonAccount)notesAccount;
- (IMAPAccount)account;
- (id)addMessages:(id)a3 withMailbox:(id)a4 fetchBodies:(BOOL)a5 newMessagesByOldMessage:(id)a6 remoteIDs:(id)a7 setFlags:(unint64_t)a8 clearFlags:(unint64_t)a9 messageFlagsForMessages:(id)a10 copyFiles:(BOOL)a11 addPOPUIDs:(BOOL)a12 dataSectionsByMessage:(id)a13;
- (id)getDetailsForAllMessagesFromMailbox:(id)a3;
- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7;
- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)a3 fromMailbox:(id)a4;
- (id)mailboxUidForMessage:(id)a3;
- (id)messageWithMessageID:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5;
- (id)messageWithRemoteID:(id)a3 inRemoteMailbox:(id)a4;
- (id)messagesForMailbox:(id)a3 olderThanNumberOfDays:(int)a4;
- (id)messagesWithMessageIDHeader:(id)a3;
- (id)messagesWithSummariesForMailbox:(id)a3 range:(_NSRange)a4;
- (id)oldestMessageInMailbox:(id)a3;
- (id)sequenceIdentifierForMessagesWithRemoteIDs:(id)a3 inMailbox:(id)a4;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (unsigned)maximumRemoteIDForMailbox:(id)a3;
- (unsigned)minimumRemoteIDForMailbox:(id)a3;
- (unsigned)nonDeletedCountForMailbox:(id)a3;
- (unsigned)totalCountForMailbox:(id)a3;
- (void)compactMailbox:(id)a3;
- (void)compactMessages:(id)a3 permanently:(BOOL)a4;
- (void)removeAllMessagesFromMailbox:(id)a3 andNotify:(BOOL)a4;
- (void)sendMessagesMatchingCriterion:(id)a3 to:(id)a4 options:(unsigned int)a5 range:(_NSRange)a6;
- (void)setFlags:(unint64_t)a3 forMessage:(id)a4;
- (void)setFlagsForMessages:(id)a3 mask:(unint64_t)a4;
- (void)setNoteContext:(id)a3;
- (void)setSequenceIdentifier:(id)a3 forMessagesWithRemoteIDs:(id)a4 inMailbox:(id)a5;
@end

@implementation IMAPNotesLibrary

- (unsigned)maximumRemoteIDForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(IMAPNotesLibrary *)self noteContext];

  if (!v5)
  {
    sub_F3E0();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v7 = [(IMAPNotesLibrary *)self noteContext];
  v8 = [WeakRetained localNotesAccountInContext:v7];

  v9 = [v8 storeForExternalId:v4];
  v10 = [v9 maximumServerIntId];
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    v14 = 138412546;
    v15 = v4;
    v16 = 1024;
    v17 = v10;
    _os_log_impl(&dword_0, v11, v12, "Max remote id for mailbox url %@ returning %d", &v14, 0x12u);
  }

  return v10;
}

- (id)getDetailsForAllMessagesFromMailbox:(id)a3
{
  v4 = a3;
  v5 = [(IMAPNotesLibrary *)self noteContext];

  if (!v5)
  {
    sub_F44C();
  }

  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v43 = v4;
    _os_log_impl(&dword_0, v6, v7, "Get details for all messages in mailbox at url %@", buf, 0xCu);
  }

  v8 = +[NSMutableArray array];
  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v10 = [(IMAPNotesLibrary *)self noteContext];
  v11 = [WeakRetained localNotesAccountInContext:v10];

  v12 = [v11 storeForExternalId:v4];
  if (v12)
  {
    v30 = v11;
    v31 = v4;
    v13 = [(IMAPNotesLibrary *)self noteContext];
    v14 = [v13 allNotesInCollection:v12];

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
    v4 = v31;
    v12 = v29;
  }

  return v8;
}

- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)a3 fromMailbox:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(IMAPNotesLibrary *)self getDetailsForAllMessagesFromMailbox:v7];
  }

  else
  {
    v9 = [(IMAPNotesLibrary *)self noteContext];

    if (!v9)
    {
      sub_F5E0();
    }

    v8 = +[NSMutableArray array];
    WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
    v11 = [(IMAPNotesLibrary *)self noteContext];
    v12 = [WeakRetained localNotesAccountInContext:v11];

    v24 = v12;
    v13 = [v12 storeForExternalId:v7];
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

- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7
{
  v12 = a7;
  v13 = [(IMAPNotesLibrary *)self noteContext];

  if (!v13)
  {
    sub_F64C();
  }

  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 134218754;
    v48 = a3;
    v49 = 2112;
    v50 = v12;
    v51 = 2048;
    v52 = a4;
    v53 = 2048;
    v54 = a5;
    _os_log_impl(&dword_0, v14, v15, "Getting details for %lu messages in mailbox %@ from top of range [%lu, %lu]", buf, 0x2Au);
  }

  v41 = +[NSMutableArray array];
  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v17 = [(IMAPNotesLibrary *)self noteContext];
  v18 = [WeakRetained localNotesAccountInContext:v17];

  v40 = v18;
  v19 = [v18 storeForExternalId:v12];
  v38 = a5 - a4;
  v39 = a4;
  [v19 notesForServerIntIdsInRange:a4 ascending:a5 - a4 + 1 limit:{0, a3}];
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
  v37 = v12;
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

        if (!--a3)
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

  v12 = v37;
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
    v30 = v39;
    goto LABEL_25;
  }

LABEL_26:
  v31 = DALoggingwithCategory();
  if (os_log_type_enabled(v31, v15))
  {
    v32 = [v41 count];
    *buf = 134217984;
    v48 = v32;
    _os_log_impl(&dword_0, v31, v15, "Returning %lu message details", buf, 0xCu);
  }

  return v41;
}

- (void)compactMailbox:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_0, v5, v6, "Deleting all notes in mailbox at url %@", buf, 0xCu);
  }

  v7 = [(IMAPNotesLibrary *)self noteContext];
  if (!v7)
  {
    sub_F6B8();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v9 = [WeakRetained localNotesAccountInContext:v7];

  v10 = [v9 storeForExternalId:v4];
  v11 = [v7 allNotesInCollection:v10];
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

        [v7 deleteNoteRegardlessOfConstraints:*(*(&v16 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)compactMessages:(id)a3 permanently:(BOOL)a4
{
  v32 = a4;
  v5 = a3;
  v33 = [(IMAPNotesLibrary *)self noteContext];
  if (!v33)
  {
    sub_F714();
  }

  v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
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
    if (v32)
    {
      v20 = @" permanently";
    }

    *buf = 138412546;
    v46 = v35;
    v47 = 2112;
    v48 = v20;
    _os_log_impl(&dword_0, v18, v19, "Deleting messages with int ids %@%@", buf, 0x16u);
  }

  v21 = [v33 notesForIntegerIds:v35];
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
          [v33 deleteNoteRegardlessOfConstraints:v26];
        }

        else
        {
          v29 = DALoggingwithCategory();
          if (os_log_type_enabled(v29, v19))
          {
            v30 = [v26 integerId];
            v31 = [v26 serverIntId];
            *buf = 138412546;
            v46 = v30;
            v47 = 2048;
            v48 = v31;
            _os_log_impl(&dword_0, v29, v19, "Skipping delete of message with int id %@, as we've recently modified its server int id to be something new %lld (condensed add/delete into a modify)", buf, 0x16u);
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v23);
  }
}

- (id)addMessages:(id)a3 withMailbox:(id)a4 fetchBodies:(BOOL)a5 newMessagesByOldMessage:(id)a6 remoteIDs:(id)a7 setFlags:(unint64_t)a8 clearFlags:(unint64_t)a9 messageFlagsForMessages:(id)a10 copyFiles:(BOOL)a11 addPOPUIDs:(BOOL)a12 dataSectionsByMessage:(id)a13
{
  v90 = a5;
  v18 = a3;
  v96 = a4;
  v95 = a6;
  v19 = a7;
  v20 = DALoggingwithCategory();
  v21 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v20, v21))
  {
    *buf = 138412802;
    v118 = v18;
    v119 = 2112;
    v120 = v19;
    v121 = 2112;
    v122 = v96;
    _os_log_impl(&dword_0, v20, v21, "Adding messages %@ (remote ids %@) to mailbox uid %@", buf, 0x20u);
  }

  v94 = +[NSMutableArray array];
  v22 = [(IMAPNotesLibrary *)self noteContext];
  if (!v22)
  {
    sub_F780();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v92 = v22;
  v24 = [WeakRetained localNotesAccountInContext:v22];

  v25 = [v96 URLString];
  v88 = v24;
  v93 = [v24 storeForExternalId:v25];

  v26 = objc_opt_new();
  v100 = objc_opt_new();
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v27 = v18;
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
          v36 = [v32 localIntegerId];
          if (v36)
          {
            v34 = [NSNumber numberWithInt:v36];
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
  v98 = self;
  v91 = v19;

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
        v54 = [v53 integerId];
        [v47 setObject:v53 forKeyedSubscript:v54];
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
        v83 = [v80 DAExtendedDescription];
        *buf = 138412290;
        v118 = v83;
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
        [v85 handleFailureInMethod:v87 object:v98 file:@"IMAPNotesLibrary.m" lineNumber:335 description:{@"Notes db was corrupted.  Crashing the daemon to get a second chance at it (err %@)", v80}];
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
      v61 = 0;
    }

    else
    {
      v60 = [v55 objectAtIndexedSubscript:v56];
      v61 = [v60 longLongValue];
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
      v65 = [v59 localIntegerId];
      if (v65)
      {
        v66 = [NSNumber numberWithInt:v65];
        v64 = [v47 objectForKeyedSubscript:v66];

        if (v61)
        {
          [v64 setServerIntId:v61];
        }

LABEL_41:
        if (v64)
        {
          goto LABEL_55;
        }
      }
    }

    v67 = [DAIMAPNotesUtils messageIsSyncableNote:v59];
    if (v67 && v90)
    {
      v68 = [v59 messageData];
      v69 = [(IMAPNotesLibrary *)v98 notesAccount];
      v70 = [v69 attachmentManager];
      v64 = [DAIMAPNotesUtils _noteObjectFromMessage:v59 withTextContentData:v68 inStore:v93 attachmentManager:v70 andContext:v92];

LABEL_54:
      v55 = v91;
      if (!v64)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v71 = [(IMAPNotesLibrary *)v98 notesAccount];
    v72 = [v71 attachmentManager];
    v64 = [DAIMAPNotesUtils _noteObjectFromMessage:v59 withTextContentData:0 inStore:v93 attachmentManager:v72 andContext:v92];

    v73 = v67 ^ 1;
    if (!v64)
    {
      v73 = 1;
    }

    if (v73)
    {
      goto LABEL_54;
    }

    v74 = objc_loadWeakRetained(&v98->_notesAccount);
    [v74 addNoteNeedingBodyDownload:v64];

    v89 = 1;
    v55 = v91;
LABEL_55:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [v59 messageFlags];
      if (v75 != [v64 flags])
      {
        [v64 setFlags:v75];
      }
    }

    v76 = objc_loadWeakRetained(&v98->_account);
    v77 = [DAIMAPNotesUtils messageFromLocalNoteObject:v64 inMailboxUid:v96 inAccount:v76];

    [v94 addObject:v77];
    [v95 setObject:v77 forKeyedSubscript:v59];

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

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v40 = a3;
  v6 = a4;
  v7 = [(IMAPNotesLibrary *)self noteContext];
  if (!v7)
  {
    sub_F868();
  }

  v8 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = v6;
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
  v38 = v7;
  v16 = [v7 notesForIntegerIds:v8];
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
          v24 = [v23 integerId];
          [v17 setObject:v23 forKeyedSubscript:v24];
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
            v33 = [v32 flags];
            v34 = MFMessageFlagsByApplyingDictionary();
            if (v33 != v34)
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

- (id)mailboxUidForMessage:(id)a3
{
  v3 = [a3 messageStore];
  v4 = [v3 mailboxUid];

  return v4;
}

- (BOOL)isMessageContentsLocallyAvailable:(id)a3
{
  v4 = a3;
  v5 = [(IMAPNotesLibrary *)self noteContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 libraryID]), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [NSSet setWithObject:v6];
    v9 = [v5 notesForIntegerIds:v8];

    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setFlags:(unint64_t)a3 forMessage:(id)a4
{
  v6 = a4;
  v7 = [(IMAPNotesLibrary *)self noteContext];
  if (!v7)
  {
    sub_F8D4();
  }

  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    v19 = 134218242;
    v20 = a3;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_0, v8, v9, "Setting flags %llx for message %@", &v19, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 libraryID]);
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSSet setWithObject:v10];
  v12 = [v7 notesForIntegerIds:v11];

  if ([v12 count])
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    if ([v13 flags] != a3)
    {
      [v13 setFlags:a3];
    }

    v14 = [v6 remoteID];

    if (v14)
    {
      v15 = [v6 remoteID];
      v16 = [v15 longLongValue];

      v17 = [v13 serverIntId];
      v18 = DALoggingwithCategory();
      if (os_log_type_enabled(v18, v9))
      {
        v19 = 134218240;
        v20 = v16;
        v21 = 2048;
        v22 = v17;
        _os_log_impl(&dword_0, v18, v9, "Testing remote id %lld with local id %lld", &v19, 0x16u);
      }

      if (v16 != v17)
      {
        [v13 setServerIntId:v16];
      }
    }
  }
}

- (id)sequenceIdentifierForMessagesWithRemoteIDs:(id)a3 inMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMAPNotesLibrary *)self noteContext];
  if (!v8)
  {
    sub_F940();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v10 = [WeakRetained localNotesAccountInContext:v8];

  v11 = [v10 storeForExternalId:v7];

  if ([v6 count])
  {
    v12 = [NSSet setWithArray:v6];
    v13 = [v11 minimumSequenceNumberForServerIntIds:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [NSString stringWithFormat:@"%llu", v13];

  return v14;
}

- (void)setSequenceIdentifier:(id)a3 forMessagesWithRemoteIDs:(id)a4 inMailbox:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMAPNotesLibrary *)self noteContext];
  if (!v11)
  {
    sub_F9AC();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v13 = [WeakRetained localNotesAccountInContext:v11];

  v14 = [v13 storeForExternalId:v10];
  if ([v9 count])
  {
    v23 = [NSSet setWithArray:v9];
    v15 = [v14 notesForServerIntIds:?];
    v24 = v8;
    v16 = [v8 longLongValue];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = v16 & ~(v16 >> 63);
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

    v8 = v24;
  }
}

- (void)removeAllMessagesFromMailbox:(id)a3 andNotify:(BOOL)a4
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

- (id)messageWithMessageID:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5
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

- (id)messagesWithMessageIDHeader:(id)a3
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

- (void)sendMessagesMatchingCriterion:(id)a3 to:(id)a4 options:(unsigned int)a5 range:(_NSRange)a6
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

- (id)messagesForMailbox:(id)a3 olderThanNumberOfDays:(int)a4
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

- (id)messagesWithSummariesForMailbox:(id)a3 range:(_NSRange)a4
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

- (unsigned)nonDeletedCountForMailbox:(id)a3
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

- (unsigned)totalCountForMailbox:(id)a3
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

- (id)oldestMessageInMailbox:(id)a3
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

- (unsigned)minimumRemoteIDForMailbox:(id)a3
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

- (void)setFlagsForMessages:(id)a3 mask:(unint64_t)a4
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

- (id)messageWithRemoteID:(id)a3 inRemoteMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMAPNotesLibrary *)self noteContext];
  if (!v8)
  {
    sub_FA18();
  }

  WeakRetained = objc_loadWeakRetained(&self->_notesAccount);
  v10 = [WeakRetained localNotesAccountInContext:v8];

  v11 = [v10 storeForExternalId:v7];

  v12 = [v6 longLongValue];
  v13 = [NSNumber numberWithLongLong:v12];
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
    v23 = v12;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_0, v19, v20, "message with remote id %lld (%@) returning %@", &v22, 0x20u);
  }

  return v18;
}

- (void)setNoteContext:(id)a3
{
  v5 = a3;
  if (self->_noteContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_noteContext, a3);
    v5 = v6;
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