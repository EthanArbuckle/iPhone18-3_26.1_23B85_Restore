@interface DAIMAPNotesUtils
+ (BOOL)messageIsSyncableNote:(id)note;
+ (id)_copyMessageDetailsForNote:(id)note inLibrary:(id)library;
+ (id)_mimeVersion;
+ (id)_noteObjectFromMessage:(id)message withTextContentData:(id)data inStore:(id)store attachmentManager:(id)manager andContext:(id)context;
+ (id)headersFromLocalNoteObject:(id)object imapAccount:(id)account;
+ (id)messageAttachmentsFromNoteAttachmentObjects:(id)objects attachmentManager:(id)manager;
+ (id)messageFromLocalNoteObject:(id)object inMailboxUid:(id)uid inAccount:(id)account;
+ (id)noteAttachmentObjectsFromAttachmentsOfMessage:(id)message attachmentManager:(id)manager noteContext:(id)context;
+ (id)outgoingMessageFromLocalNoteObject:(id)object imapAccount:(id)account attachmentManager:(id)manager;
+ (void)_runInterimWorkerThreadWithStartupLock:(id)lock;
+ (void)drainWorkerThreadAndInvokeBlock:(id)block;
+ (void)logBytes:(const char *)bytes length:(int)length;
+ (void)setUpMailLogging;
- (void)flushLog;
@end

@implementation DAIMAPNotesUtils

+ (id)noteAttachmentObjectsFromAttachmentsOfMessage:(id)message attachmentManager:(id)manager noteContext:(id)context
{
  messageCopy = message;
  managerCopy = manager;
  contextCopy = context;
  v8 = +[NSMutableArray array];
  v9 = objc_autoreleasePoolPush();
  messageBody = [messageCopy messageBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attachmentURLs = [messageBody attachmentURLs];
    if ([attachmentURLs count])
    {
      v32 = messageBody;
      v33 = v9;
      v35 = v8;
      v34 = messageCopy;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = attachmentURLs;
      v12 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        v15 = _CPLog_to_os_log_type[3];
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            v19 = [managerCopy attachmentForURL:v17 error:0];
            if (v19)
            {
              newlyAddedAttachment = [contextCopy newlyAddedAttachment];
              contentID = [v19 contentID];
              [newlyAddedAttachment setContentID:contentID];

              fileName = [v19 fileName];
              [newlyAddedAttachment setFilename:fileName];

              mimeType = [v19 mimeType];
              if (mimeType)
              {
                [newlyAddedAttachment setMimeType:mimeType];
              }

              else
              {
                inferredMimeType = [v19 inferredMimeType];
                [newlyAddedAttachment setMimeType:inferredMimeType];
              }

              v25 = [v19 fetchDataSynchronously:0];
              v39 = 0;
              v26 = [newlyAddedAttachment persistAttachmentData:v25 error:&v39];
              v27 = v39;
              if (v26)
              {
                [v35 addObject:newlyAddedAttachment];
              }

              else
              {
                v28 = DALoggingwithCategory();
                if (os_log_type_enabled(v28, v15))
                {
                  *buf = 138412290;
                  v45 = newlyAddedAttachment;
                  _os_log_impl(&dword_0, v28, v15, "Couldn't persist data for attachment: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              newlyAddedAttachment = DALoggingwithCategory();
              if (os_log_type_enabled(newlyAddedAttachment, v15))
              {
                *buf = 138412546;
                v45 = v17;
                v46 = 2112;
                v47 = managerCopy;
                _os_log_impl(&dword_0, newlyAddedAttachment, v15, "I don't know how to archive this attachment.  It will be lost on modify.  Attachment %@, manager %@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v18);
          }

          v13 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v13);
      }

      attachmentURLs = obj;

      v9 = v33;
      messageCopy = v34;
      v8 = v35;
      messageBody = v32;
    }
  }

  else
  {
    attachmentURLs = DALoggingwithCategory();
    v29 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(attachmentURLs, v29))
    {
      *buf = 138412290;
      v45 = messageCopy;
      _os_log_impl(&dword_0, attachmentURLs, v29, "The following message doesn't have a mime body: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v9);
  if ([v8 count])
  {
    v30 = v8;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (id)messageAttachmentsFromNoteAttachmentObjects:(id)objects attachmentManager:(id)manager
{
  objectsCopy = objects;
  managerCopy = manager;
  v6 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = objectsCopy;
  v31 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v31)
  {
    goto LABEL_19;
  }

  v7 = *v35;
  v8 = _CPLog_to_os_log_type[3];
  v27 = *v35;
  v28 = v6;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v35 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v34 + 1) + 8 * i);
      v11 = objc_autoreleasePoolPush();
      v33 = 0;
      v12 = [v10 attachmentDataFileURLWithError:&v33];
      v13 = v33;
      v14 = v13;
      if (v12)
      {
        v32 = v13;
        v15 = [NSData dataWithContentsOfURL:v12 options:0 error:&v32];
        v16 = v32;

        if (v15)
        {
          filename = [v10 filename];
          v18 = filename;
          if (filename)
          {
            contentID = filename;
          }

          else
          {
            contentID = [v10 contentID];
          }

          v20 = contentID;

          mimeType = [v10 mimeType];
          contentID2 = [v10 contentID];
          v23 = [managerCopy attachmentForData:v15 mimeType:mimeType fileName:v20 contentID:contentID2 context:@"DataAccess"];

          v24 = DALoggingwithCategory();
          if (os_log_type_enabled(v24, v8))
          {
            *buf = 138412290;
            v39 = v23;
            _os_log_impl(&dword_0, v24, v8, "Here's the attachment: %@", buf, 0xCu);
          }

          v6 = v28;
          [v28 addObject:v23];

          v7 = v27;
          goto LABEL_17;
        }
      }

      else
      {
        v16 = v13;
      }

      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v8))
      {
        *buf = 138412546;
        v39 = v12;
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&dword_0, v15, v8, "Couldn't get attachment data from url %@. %@", buf, 0x16u);
      }

LABEL_17:

      objc_autoreleasePoolPop(v11);
    }

    v31 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v31);
LABEL_19:

  if ([v6 count])
  {
    v25 = v6;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (BOOL)messageIsSyncableNote:(id)note
{
  noteCopy = note;
  headers = [noteCopy headers];
  v5 = [headers firstHeaderForKey:@"X-Uniform-Type-Identifier"];
  v6 = v5;
  if (!v5 || ![v5 hasPrefix:@"com.apple.mail-note"])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  messageSize = [noteCopy messageSize];
  if (messageSize >= 0xF00000)
  {
    v9 = messageSize;
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v10, v11))
    {
      v13 = 134217984;
      v14 = v9;
      _os_log_impl(&dword_0, v10, v11, "Note is too big at %lu bytes.", &v13, 0xCu);
    }

    goto LABEL_8;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

+ (id)_noteObjectFromMessage:(id)message withTextContentData:(id)data inStore:(id)store attachmentManager:(id)manager andContext:(id)context
{
  messageCopy = message;
  dataCopy = data;
  managerCopy = manager;
  contextCopy = context;
  storeCopy = store;
  selfCopy = self;
  v16 = [self messageIsSyncableNote:messageCopy];
  headers = [messageCopy headers];
  v18 = [headers firstHeaderForKey:@"X-Universally-Unique-Identifier"];
  if (!v18)
  {
    v18 = +[NSString da_newGUID];
  }

  v40 = dataCopy;
  v38 = contextCopy;
  v19 = [contextCopy newlyAddedNoteWithGUID:v18];
  v20 = [headers firstHeaderForKey:H_SUBJECT];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = &stru_1C808;
  }

  v22 = [NSNumber numberWithInt:v16 ^ 1];
  [v19 setIsBookkeepingEntry:v22];

  [v19 setStore:storeCopy];
  v37 = v21;
  [v19 setTitle:v21];
  firstSenderAddress = [headers firstSenderAddress];
  [v19 setAuthor:firstSenderAddress];

  author = [v19 author];

  if (!author)
  {
    [v19 setAuthor:&stru_1C808];
  }

  v25 = [headers firstHeaderForKey:H_DATE];
  if (!v25 || (v26 = [NSDate mf_copyDateInCommonFormatsWithString:v25]) == 0)
  {
    v26 = +[NSDate date];
  }

  v27 = [headers firstHeaderForKey:@"X-Mail-Created-Date"];
  if (v27 || (v27 = v25, v25))
  {
    v28 = v27;
    v29 = [NSDate mf_copyDateInCommonFormatsWithString:v27];
    if (v29)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = v26;
LABEL_17:
  [v19 setModificationDate:v26];
  [v19 setCreationDate:v29];
  v30 = v40;
  v31 = v16 ^ 1;
  if (!v40)
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = [[NSString alloc] initWithBytes:objc_msgSend(v40 length:"bytes") encoding:{objc_msgSend(v40, "length"), 4}];
    [v19 setContent:v32];

    v33 = [selfCopy noteAttachmentObjectsFromAttachmentsOfMessage:messageCopy attachmentManager:managerCopy noteContext:v38];
    if ([v33 count])
    {
      v34 = [NSSet setWithArray:v33];
      [v19 setAttachments:v34];
    }

    v30 = v40;
  }

  [v19 setServerIntId:{objc_msgSend(messageCopy, "uid")}];

  return v19;
}

+ (id)_mimeVersion
{
  if (qword_22240 != -1)
  {
    sub_FDB0();
  }

  v3 = qword_22238;

  return v3;
}

+ (id)headersFromLocalNoteObject:(id)object imapAccount:(id)account
{
  objectCopy = object;
  accountCopy = account;
  v8 = objc_opt_new();
  title = [objectCopy title];
  v10 = [title componentsSeparatedByString:@"\n"];

  v11 = [v10 objectAtIndexedSubscript:0];
  [v8 setHeader:v11 forKey:H_SUBJECT];

  _mimeVersion = [self _mimeVersion];
  [v8 setHeader:_mimeVersion forKey:H_MIME_VERSION];

  author = [objectCopy author];
  if (!author)
  {
    fullUserName = [accountCopy fullUserName];
    firstEmailAddress = [accountCopy firstEmailAddress];
    author = [NSString mf_formattedAddressWithName:fullUserName email:firstEmailAddress useQuotes:1];

    if (!author)
    {
      author = &stru_1C808;
    }
  }

  v29 = author;
  v16 = [NSArray arrayWithObjects:&v29 count:1];
  [v8 setAddressListForSender:v16];

  modificationDate = [objectCopy modificationDate];
  v18 = +[NSTimeZone systemTimeZone];
  v19 = [modificationDate dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v18];
  v20 = [v19 description];

  [v8 setHeader:v20 forKey:H_DATE];
  creationDate = [objectCopy creationDate];
  if (!creationDate)
  {
    creationDate = [objectCopy modificationDate];
    if (!creationDate)
    {
      creationDate = +[NSDate date];
    }
  }

  v22 = creationDate;
  v23 = +[NSTimeZone systemTimeZone];
  v24 = [v22 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v23];
  v25 = [v24 description];

  [v8 setHeader:v25 forKey:@"X-Mail-Created-Date"];
  isBookkeepingEntry = [objectCopy isBookkeepingEntry];
  LOBYTE(v24) = [isBookkeepingEntry BOOLValue];

  if ((v24 & 1) == 0)
  {
    [v8 setHeader:@"com.apple.mail-note" forKey:@"X-Uniform-Type-Identifier"];
    guid = [objectCopy guid];
    [v8 setHeader:guid forKey:@"X-Universally-Unique-Identifier"];
  }

  return v8;
}

+ (id)outgoingMessageFromLocalNoteObject:(id)object imapAccount:(id)account attachmentManager:(id)manager
{
  objectCopy = object;
  accountCopy = account;
  managerCopy = manager;
  isBookkeepingEntry = [objectCopy isBookkeepingEntry];
  bOOLValue = [isBookkeepingEntry BOOLValue];

  if (bOOLValue)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v36 = objectCopy;
      _os_log_impl(&dword_0, v13, v14, "Asked to create an outgoing message from a bookkeeping entry.  Who's the joker trying to introduce data loss? Note %@", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v13 = [self headersFromLocalNoteObject:objectCopy imapAccount:accountCopy];
    v16 = objc_opt_new();
    [v16 setMessageClassToInstantiate:objc_opt_class()];
    if ([objectCopy isPlainText])
    {
      content = [objectCopy content];
      v15 = [v16 createMessageWithString:content headers:v13];
    }

    else
    {
      v29 = accountCopy;
      attachments = [objectCopy attachments];
      v19 = [DAIMAPNotesUtils messageAttachmentsFromNoteAttachmentObjects:attachments attachmentManager:managerCopy];

      content2 = [objectCopy content];
      v15 = [v16 createMessageWithHtmlString:content2 plainTextAlternative:0 otherHtmlStringsAndAttachments:v19 headers:v13];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v30 + 1) + 8 * i) url];
            [managerCopy removeAttachmentForURL:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v23);
      }

      accountCopy = v29;
    }

    integerId = [objectCopy integerId];
    [v15 setLocalIntegerId:{objc_msgSend(integerId, "intValue")}];
  }

  return v15;
}

+ (id)messageFromLocalNoteObject:(id)object inMailboxUid:(id)uid inAccount:(id)account
{
  objectCopy = object;
  uidCopy = uid;
  accountCopy = account;
  if (objectCopy)
  {
    integerId = [objectCopy integerId];
    intValue = [integerId intValue];

    v12 = [[MFLibraryMessage alloc] initWithLibraryID:intValue];
    [v12 setFlags:{objc_msgSend(objectCopy, "flags")}];
    if ([objectCopy serverIntId])
    {
      serverIntId = [objectCopy serverIntId];
      v14 = serverIntId;
      if (serverIntId < 0)
      {
        v14 = -serverIntId;
        [v12 setHasTemporaryUid:1];
      }

      v15 = [NSString stringWithFormat:@"%llu", v14];
      [v12 setRemoteID:v15];
    }

    if (uidCopy)
    {
      store = [accountCopy storeForMailboxUid:uidCopy];
      [v12 setMessageStore:store];
    }

    else
    {
      store = [objectCopy store];
      externalIdentifier = [store externalIdentifier];
      if (externalIdentifier)
      {
        v18 = [accountCopy mailboxUidForURL:externalIdentifier];
        if (v18)
        {
          v19 = [accountCopy storeForMailboxUid:v18];
          [v12 setMessageStore:v19];
        }

        else
        {
          v19 = DALoggingwithCategory();
          v21 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v19, v21))
          {
            *buf = 138412546;
            v36 = accountCopy;
            v37 = 2112;
            v38 = externalIdentifier;
            _os_log_impl(&dword_0, v19, v21, "Couldn't get a MailboxUID from account %@ with url %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v18 = DALoggingwithCategory();
        v20 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v18, v20))
        {
          *buf = 138412290;
          v36 = store;
          _os_log_impl(&dword_0, v18, v20, "Couldn't find a url on store %@", buf, 0xCu);
        }
      }
    }

    author = [objectCopy author];
    if (!author)
    {
      fullUserName = [accountCopy fullUserName];
      if (fullUserName)
      {
        author = fullUserName;
      }

      else
      {
        author = &stru_1C808;
      }
    }

    title = [objectCopy title];
    v34 = author;
    v25 = [NSArray arrayWithObjects:&v34 count:1];
    modificationDate = [objectCopy modificationDate];
    [modificationDate timeIntervalSince1970];
    v28 = v27;
    creationDate = [objectCopy creationDate];
    [creationDate timeIntervalSince1970];
    v31 = v30;
    title2 = [objectCopy title];
    [v12 setMessageInfo:title to:&__NSArray0__struct cc:&__NSArray0__struct bcc:&__NSArray0__struct sender:v25 dateReceivedTimeIntervalSince1970:0 dateSentTimeIntervalSince1970:v28 messageIDHash:v31 conversationID:0 summary:title2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_copyMessageDetailsForNote:(id)note inLibrary:(id)library
{
  noteCopy = note;
  libraryCopy = library;
  if ([noteCopy hasValidServerIntId])
  {
    v7 = objc_opt_new();
    *&v7[OBJC_IVAR___MFMessageDetails_library] = libraryCopy;
    integerId = [noteCopy integerId];
    intValue = [integerId intValue];
    *&v7[OBJC_IVAR___MFMessageDetails_libraryID] = intValue;

    serverIntId = [noteCopy serverIntId];
    *&v7[OBJC_IVAR___MFMessageDetails_uid] = serverIntId;
    flags = [noteCopy flags];
    *&v7[OBJC_IVAR___MFMessageDetails_messageFlags] = flags;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)logBytes:(const char *)bytes length:(int)length
{
  if (qword_22250 != -1)
  {
    sub_FDC4();
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_EDF8;
  v11 = sub_EE08;
  v12 = [[NSData alloc] initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  v6 = v8[5];
  DACPLoggingAppendDataToLogFile();
  _Block_object_dispose(&v7, 8);
}

- (void)flushLog
{
  v2 = objc_opt_class();

  [v2 flushLog];
}

+ (void)setUpMailLogging
{
  if ((byte_22258 & 1) == 0)
  {
    byte_22258 = 1;
    if (shouldDALogAtLevel())
    {
      v3 = +[MFConnection logClasses];
      v5 = [v3 mutableCopy];

      v4 = v5;
      if (!v5)
      {
        v4 = objc_opt_new();
      }

      v6 = v4;
      [v4 addObject:self];
      [MFConnection setLogClasses:v6];
      [MFConnection setLogAllSocketActivity:1];
    }
  }
}

+ (void)_runInterimWorkerThreadWithStartupLock:(id)lock
{
  lockCopy = lock;
  v3 = objc_autoreleasePoolPush();
  [lockCopy lockWhenCondition:0];
  v4 = +[NSRunLoop currentRunLoop];
  qword_22268 = CFRetain([v4 getCFRunLoop]);

  v5 = +[NSPort port];
  v6 = +[NSRunLoop currentRunLoop];
  [v5 scheduleInRunLoop:v6 forMode:NSDefaultRunLoopMode];

  [lockCopy unlockWithCondition:1];
  v7 = +[NSRunLoop currentRunLoop];
  [v7 run];

  objc_autoreleasePoolPop(v3);
}

+ (void)drainWorkerThreadAndInvokeBlock:(id)block
{
  blockCopy = block;
  v5 = objc_autoreleasePoolPush();
  v6 = qword_22268;
  if (!qword_22268)
  {
    v7 = [[NSConditionLock alloc] initWithCondition:0];
    v8 = [[NSThread alloc] initWithTarget:self selector:"_runInterimWorkerThreadWithStartupLock:" object:v7];
    v9 = qword_22260;
    qword_22260 = v8;

    [qword_22260 start];
    [v7 lockWhenCondition:1];
    [v7 unlockWithCondition:1];

    v6 = qword_22268;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F1A0;
  block[3] = &unk_1C788;
  v10 = blockCopy;
  v12 = v10;
  CFRunLoopPerformBlock(v6, kCFRunLoopCommonModes, block);
  CFRunLoopWakeUp(qword_22268);

  objc_autoreleasePoolPop(v5);
}

@end