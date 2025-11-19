@interface MFMessageResultsGenerator
- (MFMessageResultsGenerator)initWithKeys:(id)a3 downloadIfNecessary:(BOOL)a4;
- (id)_accountReference:(id)a3;
- (id)_attachmentValueForKey:(id)a3;
- (id)_bestAlternativePart:(id)a3;
- (id)_bodySummary:(id)a3;
- (id)_conversationReference:(id)a3;
- (id)_convertEmailAddress:(id)a3;
- (id)_convertEmailAddresses:(id)a3;
- (id)_dateReceived:(id)a3;
- (id)_dateSent:(id)a3;
- (id)_defaultAttachmentManager;
- (id)_headerData:(id)a3;
- (id)_headerValueForKey:(id)a3;
- (id)_isLocalDraft:(id)a3;
- (id)_knownAttachmentLimiterTests;
- (id)_localMessageReference:(id)a3;
- (id)_mailboxType:(id)a3;
- (id)_mailboxURL:(id)a3;
- (id)_messageIDHash:(id)a3;
- (id)_messageLibraryID:(id)a3;
- (id)_messageReference:(id)a3;
- (id)_outgoing:(id)a3;
- (id)_predictiveModelSummary:(id)a3;
- (id)_publisherBulletinID:(id)a3;
- (id)_receivingAddresses:(id)a3;
- (id)_recipientBcc:(id)a3;
- (id)_recipientCc:(id)a3;
- (id)_recipientTo:(id)a3;
- (id)_rfc822Data:(id)a3;
- (id)_sender:(id)a3;
- (id)_status:(id)a3;
- (id)_subject:(id)a3;
- (id)_suppressionContexts:(id)a3;
- (id)_testForAttachmentLimiterType:(id)a3;
- (id)blockForKey:(id)a3;
- (void)_addressBook;
- (void)dealloc;
@end

@implementation MFMessageResultsGenerator

- (MFMessageResultsGenerator)initWithKeys:(id)a3 downloadIfNecessary:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = MFMessageResultsGenerator;
  v5 = [(_MFResultsGenerator *)&v9 initWithKeys:a3];
  v6 = v5;
  if (v5)
  {
    v5->_shouldDownload = a4;
    v7 = v5;
  }

  return v6;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = MFMessageResultsGenerator;
  [(MFMessageResultsGenerator *)&v4 dealloc];
}

- (id)blockForKey:(id)a3
{
  v3 = a3;
  if (qword_100185958 != -1)
  {
    sub_1000D4A44();
  }

  v4 = [qword_100185950 objectForKeyedSubscript:v3];
  if (!v4)
  {
    if ([v3 hasPrefix:@"MSResultsKeyAttachments"])
    {
      v4 = &stru_1001593F0;
    }

    else
    {
      v4 = &stru_100159410;
    }
  }

  v5 = objc_retainBlock(v4);

  return v5;
}

- (id)_messageLibraryID:(id)a3
{
  v3 = [NSNumber numberWithLongLong:[(MFLibraryMessage *)self->_message libraryID]];

  return v3;
}

- (id)_messageReference:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message globalMessageURL];
  if (!v4)
  {
    v4 = [(MFLibraryMessage *)self->_message mf_externalReference];
  }

  v5 = [v4 absoluteString];

  return v5;
}

- (id)_localMessageReference:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message mf_externalReference];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)_publisherBulletinID:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message account];
  v5 = [v4 uniqueServerIdForMessage:self->_message];

  if (!v5)
  {
    v6 = [(MFLibraryMessage *)self->_message mf_externalReference];
    v5 = [v6 absoluteString];
  }

  return v5;
}

- (id)_conversationReference:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message mf_conversationReference];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)_accountReference:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message account];
  v4 = [v3 uniqueID];

  return v4;
}

- (id)_mailboxURL:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message mailbox];
  v4 = [v3 URLString];

  return v4;
}

- (id)_messageIDHash:(id)a3
{
  v3 = [NSNumber numberWithLongLong:[(MFLibraryMessage *)self->_message messageIDHash]];
  v4 = [v3 stringValue];

  return v4;
}

- (id)_subject:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message subject];
  v4 = [v3 subjectString];

  return v4;
}

- (id)_bodySummary:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message summary];
  if (!v4)
  {
    v4 = [MessageBodyLoader copySummaryForMessage:self->_message downloadIfNecessary:self->_shouldDownload];
  }

  return v4;
}

- (id)_predictiveModelSummary:(id)a3
{
  v3 = [(MFMessageResultsGenerator *)self _copyPredictiveModelSummaryForMessage:self->_message downloadIfNecessary:self->_shouldDownload];

  return v3;
}

- (id)_defaultAttachmentManager
{
  v2 = sub_100027C70();
  v3 = [v2 defaultAttachmentManager];

  return v3;
}

- (void)_addressBook
{
  result = self->_addressBook;
  if (!result)
  {
    result = ABAddressBookCreateWithOptions(0, 0);
    self->_addressBook = result;
  }

  return result;
}

- (id)_convertEmailAddress:(id)a3
{
  v4 = a3;
  if ([(MFMessageResultsGenerator *)self _addressBook])
  {
    v5 = v4;
    v6 = [v5 emailAddressValue];
    v7 = [v6 displayName];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v5 stringValue];
    }

    v11 = v9;

    v12 = v5;
    v13 = [v12 emailAddressValue];
    v14 = [v13 simpleAddress];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v12 stringValue];
    }

    v17 = v16;

    v18 = MFPreferredCompositeNameForAddressAndDisplayName();
    v19 = v18;
    if (v18 && ([v18 isEqualToString:v11] & 1) == 0)
    {
      v20 = objc_alloc_init(ECEmailAddressFormatter);
      [v20 setShouldIncludeDisplayName:1];
      v21 = [ECEmailAddressComponents componentsWithString:v17];
      [v21 setDisplayName:v19];
      v22 = [v21 emailAddressValue];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v17;
      }

      v10 = [v20 stringFromEmailAddressConvertible:v24];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v25 = v10;
  }

  else
  {
    v25 = v4;
  }

  v26 = v25;

  return v25;
}

- (id)_convertEmailAddresses:(id)a3
{
  v4 = a3;
  if ([(MFMessageResultsGenerator *)self _addressBook])
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(MFMessageResultsGenerator *)self _convertEmailAddress:*(*(&v12 + 1) + 8 * i), v12];
          if (v10)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)_sender:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message firstSender];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddress:v4];

  return v5;
}

- (id)_recipientBcc:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message bcc];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddresses:v4];

  return v5;
}

- (id)_recipientCc:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message cc];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddresses:v4];

  return v5;
}

- (id)_recipientTo:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message to];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddresses:v4];

  return v5;
}

- (id)_receivingAddresses:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message account];
  v4 = [v3 emailAddressesAndAliasesList];

  return v4;
}

- (id)_dateSent:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message dateSent];

  return v3;
}

- (id)_dateReceived:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message dateReceived];

  return v3;
}

- (id)_status:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message messageFlags];
  v5 = [(MFLibraryMessage *)self->_message conversationFlags];
  v6 = [(MFLibraryMessage *)self->_message conversationFlags];
  if (v4 >> 10)
  {
    v7 = v4 >> 10 == 63;
  }

  else
  {
    v7 = 1;
  }

  v8 = ((v4 >> 1) & 8 | v4 & 1 | (v4 >> 6) & 4 | (v4 >> 1) & 2) ^ 1;
  if (!v7)
  {
    v8 |= 0x10uLL;
  }

  v9 = (v4 >> 15) & 0x40 | (v4 >> 19) & 0x20 | ((v5 & 1) << 7) | (v6 << 6) & 0x100 | v8;
  if ((v4 & 0x18000000000) != 0)
  {
    v10 = v9 | 0x200;
  }

  else
  {
    v10 = v9;
  }

  v11 = [NSNumber numberWithUnsignedInteger:v10];

  return v11;
}

- (id)_isLocalDraft:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message mailbox];
  v4 = +[LocalAccount localAccount];
  v5 = [v4 transientDraftsFolder];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  return v7;
}

- (id)_outgoing:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message mailbox];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isOutgoingMailboxUid]);

  return v4;
}

- (id)_mailboxType:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message mailbox];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 mailboxType]);

  return v4;
}

- (id)_suppressionContexts:(id)a3
{
  v4 = objc_alloc_init(NSMutableSet);
  v5 = [(MFLibraryMessage *)self->_message mf_externalReference];
  v6 = [v5 absoluteString];

  if (v6)
  {
    [v4 addObject:v6];
  }

  v7 = [(MFLibraryMessage *)self->_message mf_conversationReference];
  v8 = [v7 absoluteString];

  if (v8)
  {
    [v4 addObject:v8];
  }

  v9 = [(MFLibraryMessage *)self->_message mailbox];
  v10 = [v9 URLString];
  if (v10)
  {
    [v4 addObject:v10];
  }

  if ([v9 mailboxType] == 7)
  {
    [v4 addObject:@"com.apple.mobilemail.context.AllInbox"];
  }

  v11 = [(MFLibraryMessage *)self->_message messageFlags];
  if ((v11 & 0x1000000) != 0)
  {
    [v4 addObject:MSUserNotificationCenterTopicVIP];
  }

  if ((v11 & 0x10) != 0)
  {
    [v4 addObject:@"com.apple.mobilemail.context.flagged"];
  }

  if ((v11 & 0x18000000000) != 0)
  {
    [v4 addObject:@"com.apple.mobilemail.context.toMe"];
  }

  if (v11 >> 10 && v11 >> 10 != 63)
  {
    [v4 addObject:@"com.apple.mobilemail.context.hasAttachments"];
  }

  if (([(MFLibraryMessage *)self->_message conversationFlags]& 1) != 0)
  {
    [v4 addObject:MSUserNotificationCenterTopicNotifiedThreads];
  }

  v12 = [(MFLibraryMessage *)self->_message readLater];

  if (v12)
  {
    [v4 addObject:MSUserNotificationCenterTopicRemindMe];
  }

  v13 = [(MFLibraryMessage *)self->_message category];
  if ([v13 state] && objc_msgSend(v13, "isPrimary"))
  {
    [v4 addObject:MSUserNotificationCenterTopicPrimary];
  }

  return v4;
}

- (id)_knownAttachmentLimiterTests
{
  if (qword_100185968 != -1)
  {
    sub_1000D4A58();
  }

  v3 = qword_100185960;

  return v3;
}

- (id)_testForAttachmentLimiterType:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageResultsGenerator *)self _knownAttachmentLimiterTests];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_attachmentValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryMessage *)self->_message messageBodyIfAvailable];
  v6 = [v5 topLevelPart];
  v7 = [v6 attachmentURLs];
  attachmentManager = self->_attachmentManager;
  v22 = 0;
  v9 = [(MFAttachmentManager *)attachmentManager attachmentsForURLs:v7 error:&v22];
  v10 = v22;
  if (!v9)
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#Warning couldn't convert attachment URLs to attachment objects: %@", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![v9 count])
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078E24;
  block[3] = &unk_100156400;
  block[4] = self;
  if (qword_100185978 != -1)
  {
    dispatch_once(&qword_100185978, block);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_100077AD4;
  v26 = sub_100077AE4;
  v27 = 0;
  v11 = [v4 length];
  v12 = qword_100185970;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100078F34;
  v16[3] = &unk_1001594E0;
  v17 = v4;
  v18 = self;
  v19 = v9;
  p_buf = &buf;
  [v12 enumerateMatchesInString:v17 options:4 range:0 usingBlock:{v11, v16}];
  v13 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
LABEL_10:

  return v13;
}

- (id)_rfc822Data:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message mailbox];
  v5 = [v4 store];

  v6 = objc_alloc_init(MFMutableData);
  v7 = [v5 headerDataForMessage:self->_message downloadIfNecessary:0];
  if (v7)
  {
    [v6 appendData:v7];
  }

  v8 = [v5 fullBodyDataForMessage:self->_message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:0 didDownload:0];

  if (v8)
  {
    [v6 appendData:v8];
  }

  return v6;
}

- (id)_bestAlternativePart:(id)a3
{
  v3 = [(MFLibraryMessage *)self->_message bestAlternativePart];

  return v3;
}

- (id)_headerData:(id)a3
{
  v4 = [(MFLibraryMessage *)self->_message mailbox];
  v5 = [v4 store];

  v6 = [v5 headerDataForMessage:self->_message downloadIfNecessary:0];

  return v6;
}

- (id)_headerValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryMessage *)self->_message messageBodyIfAvailable];
  v6 = [v5 topLevelPart];

  v7 = [(MFLibraryMessage *)self->_message bestAlternativeInPart:v6];
  v8 = [(MFLibraryMessage *)self->_message defaultAlternativeInPart:v6];
  if (v7 != v8)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Warning Exchange message was not fully loaded.  We won't be able to get custom headers for it.", v13, 2u);
    }
  }

  v10 = [(MFLibraryMessage *)self->_message headers];
  v11 = [v10 headersForKey:v4];

  return v11;
}

@end