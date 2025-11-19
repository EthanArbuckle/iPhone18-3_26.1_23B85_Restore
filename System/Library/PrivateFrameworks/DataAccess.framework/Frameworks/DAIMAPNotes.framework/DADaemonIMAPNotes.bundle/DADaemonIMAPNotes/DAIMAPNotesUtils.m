@interface DAIMAPNotesUtils
+ (BOOL)messageIsSyncableNote:(id)a3;
+ (id)_copyMessageDetailsForNote:(id)a3 inLibrary:(id)a4;
+ (id)_mimeVersion;
+ (id)_noteObjectFromMessage:(id)a3 withTextContentData:(id)a4 inStore:(id)a5 attachmentManager:(id)a6 andContext:(id)a7;
+ (id)headersFromLocalNoteObject:(id)a3 imapAccount:(id)a4;
+ (id)messageAttachmentsFromNoteAttachmentObjects:(id)a3 attachmentManager:(id)a4;
+ (id)messageFromLocalNoteObject:(id)a3 inMailboxUid:(id)a4 inAccount:(id)a5;
+ (id)noteAttachmentObjectsFromAttachmentsOfMessage:(id)a3 attachmentManager:(id)a4 noteContext:(id)a5;
+ (id)outgoingMessageFromLocalNoteObject:(id)a3 imapAccount:(id)a4 attachmentManager:(id)a5;
+ (void)_runInterimWorkerThreadWithStartupLock:(id)a3;
+ (void)drainWorkerThreadAndInvokeBlock:(id)a3;
+ (void)logBytes:(const char *)a3 length:(int)a4;
+ (void)setUpMailLogging;
- (void)flushLog;
@end

@implementation DAIMAPNotesUtils

+ (id)noteAttachmentObjectsFromAttachmentsOfMessage:(id)a3 attachmentManager:(id)a4 noteContext:(id)a5
{
  v7 = a3;
  v38 = a4;
  v37 = a5;
  v8 = +[NSMutableArray array];
  v9 = objc_autoreleasePoolPush();
  v10 = [v7 messageBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 attachmentURLs];
    if ([v11 count])
    {
      v32 = v10;
      v33 = v9;
      v35 = v8;
      v34 = v7;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v11;
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
            v19 = [v38 attachmentForURL:v17 error:0];
            if (v19)
            {
              v20 = [v37 newlyAddedAttachment];
              v21 = [v19 contentID];
              [v20 setContentID:v21];

              v22 = [v19 fileName];
              [v20 setFilename:v22];

              v23 = [v19 mimeType];
              if (v23)
              {
                [v20 setMimeType:v23];
              }

              else
              {
                v24 = [v19 inferredMimeType];
                [v20 setMimeType:v24];
              }

              v25 = [v19 fetchDataSynchronously:0];
              v39 = 0;
              v26 = [v20 persistAttachmentData:v25 error:&v39];
              v27 = v39;
              if (v26)
              {
                [v35 addObject:v20];
              }

              else
              {
                v28 = DALoggingwithCategory();
                if (os_log_type_enabled(v28, v15))
                {
                  *buf = 138412290;
                  v45 = v20;
                  _os_log_impl(&dword_0, v28, v15, "Couldn't persist data for attachment: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v20 = DALoggingwithCategory();
              if (os_log_type_enabled(v20, v15))
              {
                *buf = 138412546;
                v45 = v17;
                v46 = 2112;
                v47 = v38;
                _os_log_impl(&dword_0, v20, v15, "I don't know how to archive this attachment.  It will be lost on modify.  Attachment %@, manager %@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v18);
          }

          v13 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v13);
      }

      v11 = obj;

      v9 = v33;
      v7 = v34;
      v8 = v35;
      v10 = v32;
    }
  }

  else
  {
    v11 = DALoggingwithCategory();
    v29 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v11, v29))
    {
      *buf = 138412290;
      v45 = v7;
      _os_log_impl(&dword_0, v11, v29, "The following message doesn't have a mime body: %@", buf, 0xCu);
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

+ (id)messageAttachmentsFromNoteAttachmentObjects:(id)a3 attachmentManager:(id)a4
{
  v5 = a3;
  v29 = a4;
  v6 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
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
          v17 = [v10 filename];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = [v10 contentID];
          }

          v20 = v19;

          v21 = [v10 mimeType];
          v22 = [v10 contentID];
          v23 = [v29 attachmentForData:v15 mimeType:v21 fileName:v20 contentID:v22 context:@"DataAccess"];

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

+ (BOOL)messageIsSyncableNote:(id)a3
{
  v3 = a3;
  v4 = [v3 headers];
  v5 = [v4 firstHeaderForKey:@"X-Uniform-Type-Identifier"];
  v6 = v5;
  if (!v5 || ![v5 hasPrefix:@"com.apple.mail-note"])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = [v3 messageSize];
  if (v7 >= 0xF00000)
  {
    v9 = v7;
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

+ (id)_noteObjectFromMessage:(id)a3 withTextContentData:(id)a4 inStore:(id)a5 attachmentManager:(id)a6 andContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v39 = a6;
  v14 = a7;
  v15 = a5;
  v36 = a1;
  v16 = [a1 messageIsSyncableNote:v12];
  v17 = [v12 headers];
  v18 = [v17 firstHeaderForKey:@"X-Universally-Unique-Identifier"];
  if (!v18)
  {
    v18 = +[NSString da_newGUID];
  }

  v40 = v13;
  v38 = v14;
  v19 = [v14 newlyAddedNoteWithGUID:v18];
  v20 = [v17 firstHeaderForKey:H_SUBJECT];
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

  [v19 setStore:v15];
  v37 = v21;
  [v19 setTitle:v21];
  v23 = [v17 firstSenderAddress];
  [v19 setAuthor:v23];

  v24 = [v19 author];

  if (!v24)
  {
    [v19 setAuthor:&stru_1C808];
  }

  v25 = [v17 firstHeaderForKey:H_DATE];
  if (!v25 || (v26 = [NSDate mf_copyDateInCommonFormatsWithString:v25]) == 0)
  {
    v26 = +[NSDate date];
  }

  v27 = [v17 firstHeaderForKey:@"X-Mail-Created-Date"];
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

    v33 = [v36 noteAttachmentObjectsFromAttachmentsOfMessage:v12 attachmentManager:v39 noteContext:v38];
    if ([v33 count])
    {
      v34 = [NSSet setWithArray:v33];
      [v19 setAttachments:v34];
    }

    v30 = v40;
  }

  [v19 setServerIntId:{objc_msgSend(v12, "uid")}];

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

+ (id)headersFromLocalNoteObject:(id)a3 imapAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 title];
  v10 = [v9 componentsSeparatedByString:@"\n"];

  v11 = [v10 objectAtIndexedSubscript:0];
  [v8 setHeader:v11 forKey:H_SUBJECT];

  v12 = [a1 _mimeVersion];
  [v8 setHeader:v12 forKey:H_MIME_VERSION];

  v13 = [v6 author];
  if (!v13)
  {
    v14 = [v7 fullUserName];
    v15 = [v7 firstEmailAddress];
    v13 = [NSString mf_formattedAddressWithName:v14 email:v15 useQuotes:1];

    if (!v13)
    {
      v13 = &stru_1C808;
    }
  }

  v29 = v13;
  v16 = [NSArray arrayWithObjects:&v29 count:1];
  [v8 setAddressListForSender:v16];

  v17 = [v6 modificationDate];
  v18 = +[NSTimeZone systemTimeZone];
  v19 = [v17 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v18];
  v20 = [v19 description];

  [v8 setHeader:v20 forKey:H_DATE];
  v21 = [v6 creationDate];
  if (!v21)
  {
    v21 = [v6 modificationDate];
    if (!v21)
    {
      v21 = +[NSDate date];
    }
  }

  v22 = v21;
  v23 = +[NSTimeZone systemTimeZone];
  v24 = [v22 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v23];
  v25 = [v24 description];

  [v8 setHeader:v25 forKey:@"X-Mail-Created-Date"];
  v26 = [v6 isBookkeepingEntry];
  LOBYTE(v24) = [v26 BOOLValue];

  if ((v24 & 1) == 0)
  {
    [v8 setHeader:@"com.apple.mail-note" forKey:@"X-Uniform-Type-Identifier"];
    v27 = [v6 guid];
    [v8 setHeader:v27 forKey:@"X-Universally-Unique-Identifier"];
  }

  return v8;
}

+ (id)outgoingMessageFromLocalNoteObject:(id)a3 imapAccount:(id)a4 attachmentManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 isBookkeepingEntry];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v36 = v8;
      _os_log_impl(&dword_0, v13, v14, "Asked to create an outgoing message from a bookkeeping entry.  Who's the joker trying to introduce data loss? Note %@", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v13 = [a1 headersFromLocalNoteObject:v8 imapAccount:v9];
    v16 = objc_opt_new();
    [v16 setMessageClassToInstantiate:objc_opt_class()];
    if ([v8 isPlainText])
    {
      v17 = [v8 content];
      v15 = [v16 createMessageWithString:v17 headers:v13];
    }

    else
    {
      v29 = v9;
      v18 = [v8 attachments];
      v19 = [DAIMAPNotesUtils messageAttachmentsFromNoteAttachmentObjects:v18 attachmentManager:v10];

      v20 = [v8 content];
      v15 = [v16 createMessageWithHtmlString:v20 plainTextAlternative:0 otherHtmlStringsAndAttachments:v19 headers:v13];

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
            [v10 removeAttachmentForURL:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v23);
      }

      v9 = v29;
    }

    v27 = [v8 integerId];
    [v15 setLocalIntegerId:{objc_msgSend(v27, "intValue")}];
  }

  return v15;
}

+ (id)messageFromLocalNoteObject:(id)a3 inMailboxUid:(id)a4 inAccount:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 integerId];
    v11 = [v10 intValue];

    v12 = [[MFLibraryMessage alloc] initWithLibraryID:v11];
    [v12 setFlags:{objc_msgSend(v7, "flags")}];
    if ([v7 serverIntId])
    {
      v13 = [v7 serverIntId];
      v14 = v13;
      if (v13 < 0)
      {
        v14 = -v13;
        [v12 setHasTemporaryUid:1];
      }

      v15 = [NSString stringWithFormat:@"%llu", v14];
      [v12 setRemoteID:v15];
    }

    if (v8)
    {
      v16 = [v9 storeForMailboxUid:v8];
      [v12 setMessageStore:v16];
    }

    else
    {
      v16 = [v7 store];
      v17 = [v16 externalIdentifier];
      if (v17)
      {
        v18 = [v9 mailboxUidForURL:v17];
        if (v18)
        {
          v19 = [v9 storeForMailboxUid:v18];
          [v12 setMessageStore:v19];
        }

        else
        {
          v19 = DALoggingwithCategory();
          v21 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v19, v21))
          {
            *buf = 138412546;
            v36 = v9;
            v37 = 2112;
            v38 = v17;
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
          v36 = v16;
          _os_log_impl(&dword_0, v18, v20, "Couldn't find a url on store %@", buf, 0xCu);
        }
      }
    }

    v22 = [v7 author];
    if (!v22)
    {
      v23 = [v9 fullUserName];
      if (v23)
      {
        v22 = v23;
      }

      else
      {
        v22 = &stru_1C808;
      }
    }

    v24 = [v7 title];
    v34 = v22;
    v25 = [NSArray arrayWithObjects:&v34 count:1];
    v26 = [v7 modificationDate];
    [v26 timeIntervalSince1970];
    v28 = v27;
    v29 = [v7 creationDate];
    [v29 timeIntervalSince1970];
    v31 = v30;
    v32 = [v7 title];
    [v12 setMessageInfo:v24 to:&__NSArray0__struct cc:&__NSArray0__struct bcc:&__NSArray0__struct sender:v25 dateReceivedTimeIntervalSince1970:0 dateSentTimeIntervalSince1970:v28 messageIDHash:v31 conversationID:0 summary:v32];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_copyMessageDetailsForNote:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasValidServerIntId])
  {
    v7 = objc_opt_new();
    *&v7[OBJC_IVAR___MFMessageDetails_library] = v6;
    v8 = [v5 integerId];
    v9 = [v8 intValue];
    *&v7[OBJC_IVAR___MFMessageDetails_libraryID] = v9;

    v10 = [v5 serverIntId];
    *&v7[OBJC_IVAR___MFMessageDetails_uid] = v10;
    v11 = [v5 flags];
    *&v7[OBJC_IVAR___MFMessageDetails_messageFlags] = v11;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)logBytes:(const char *)a3 length:(int)a4
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
  v12 = [[NSData alloc] initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
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
      [v4 addObject:a1];
      [MFConnection setLogClasses:v6];
      [MFConnection setLogAllSocketActivity:1];
    }
  }
}

+ (void)_runInterimWorkerThreadWithStartupLock:(id)a3
{
  v8 = a3;
  v3 = objc_autoreleasePoolPush();
  [v8 lockWhenCondition:0];
  v4 = +[NSRunLoop currentRunLoop];
  qword_22268 = CFRetain([v4 getCFRunLoop]);

  v5 = +[NSPort port];
  v6 = +[NSRunLoop currentRunLoop];
  [v5 scheduleInRunLoop:v6 forMode:NSDefaultRunLoopMode];

  [v8 unlockWithCondition:1];
  v7 = +[NSRunLoop currentRunLoop];
  [v7 run];

  objc_autoreleasePoolPop(v3);
}

+ (void)drainWorkerThreadAndInvokeBlock:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = qword_22268;
  if (!qword_22268)
  {
    v7 = [[NSConditionLock alloc] initWithCondition:0];
    v8 = [[NSThread alloc] initWithTarget:a1 selector:"_runInterimWorkerThreadWithStartupLock:" object:v7];
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
  v10 = v4;
  v12 = v10;
  CFRunLoopPerformBlock(v6, kCFRunLoopCommonModes, block);
  CFRunLoopWakeUp(qword_22268);

  objc_autoreleasePoolPop(v5);
}

@end