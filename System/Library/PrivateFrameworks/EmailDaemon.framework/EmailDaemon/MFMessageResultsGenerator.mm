@interface MFMessageResultsGenerator
- (MFMessageResultsGenerator)initWithKeys:(id)keys downloadIfNecessary:(BOOL)necessary;
- (id)_accountReference:(id)reference;
- (id)_attachmentValueForKey:(id)key;
- (id)_bestAlternativePart:(id)part;
- (id)_bodySummary:(id)summary;
- (id)_conversationReference:(id)reference;
- (id)_convertEmailAddress:(id)address;
- (id)_convertEmailAddresses:(id)addresses;
- (id)_dateReceived:(id)received;
- (id)_dateSent:(id)sent;
- (id)_defaultAttachmentManager;
- (id)_headerData:(id)data;
- (id)_headerValueForKey:(id)key;
- (id)_isLocalDraft:(id)draft;
- (id)_knownAttachmentLimiterTests;
- (id)_localMessageReference:(id)reference;
- (id)_mailboxType:(id)type;
- (id)_mailboxURL:(id)l;
- (id)_messageIDHash:(id)hash;
- (id)_messageLibraryID:(id)d;
- (id)_messageReference:(id)reference;
- (id)_outgoing:(id)_outgoing;
- (id)_predictiveModelSummary:(id)summary;
- (id)_publisherBulletinID:(id)d;
- (id)_receivingAddresses:(id)addresses;
- (id)_recipientBcc:(id)bcc;
- (id)_recipientCc:(id)cc;
- (id)_recipientTo:(id)to;
- (id)_rfc822Data:(id)data;
- (id)_sender:(id)_sender;
- (id)_status:(id)_status;
- (id)_subject:(id)_subject;
- (id)_suppressionContexts:(id)contexts;
- (id)_testForAttachmentLimiterType:(id)type;
- (id)blockForKey:(id)key;
- (void)_addressBook;
- (void)dealloc;
@end

@implementation MFMessageResultsGenerator

- (MFMessageResultsGenerator)initWithKeys:(id)keys downloadIfNecessary:(BOOL)necessary
{
  v9.receiver = self;
  v9.super_class = MFMessageResultsGenerator;
  v5 = [(_MFResultsGenerator *)&v9 initWithKeys:keys];
  v6 = v5;
  if (v5)
  {
    v5->_shouldDownload = necessary;
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

- (id)blockForKey:(id)key
{
  keyCopy = key;
  if (qword_100185958 != -1)
  {
    sub_1000D4A44();
  }

  v4 = [qword_100185950 objectForKeyedSubscript:keyCopy];
  if (!v4)
  {
    if ([keyCopy hasPrefix:@"MSResultsKeyAttachments"])
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

- (id)_messageLibraryID:(id)d
{
  v3 = [NSNumber numberWithLongLong:[(MFLibraryMessage *)self->_message libraryID]];

  return v3;
}

- (id)_messageReference:(id)reference
{
  globalMessageURL = [(MFLibraryMessage *)self->_message globalMessageURL];
  if (!globalMessageURL)
  {
    globalMessageURL = [(MFLibraryMessage *)self->_message mf_externalReference];
  }

  absoluteString = [globalMessageURL absoluteString];

  return absoluteString;
}

- (id)_localMessageReference:(id)reference
{
  mf_externalReference = [(MFLibraryMessage *)self->_message mf_externalReference];
  absoluteString = [mf_externalReference absoluteString];

  return absoluteString;
}

- (id)_publisherBulletinID:(id)d
{
  account = [(MFLibraryMessage *)self->_message account];
  absoluteString = [account uniqueServerIdForMessage:self->_message];

  if (!absoluteString)
  {
    mf_externalReference = [(MFLibraryMessage *)self->_message mf_externalReference];
    absoluteString = [mf_externalReference absoluteString];
  }

  return absoluteString;
}

- (id)_conversationReference:(id)reference
{
  mf_conversationReference = [(MFLibraryMessage *)self->_message mf_conversationReference];
  absoluteString = [mf_conversationReference absoluteString];

  return absoluteString;
}

- (id)_accountReference:(id)reference
{
  account = [(MFLibraryMessage *)self->_message account];
  uniqueID = [account uniqueID];

  return uniqueID;
}

- (id)_mailboxURL:(id)l
{
  mailbox = [(MFLibraryMessage *)self->_message mailbox];
  uRLString = [mailbox URLString];

  return uRLString;
}

- (id)_messageIDHash:(id)hash
{
  v3 = [NSNumber numberWithLongLong:[(MFLibraryMessage *)self->_message messageIDHash]];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (id)_subject:(id)_subject
{
  subject = [(MFLibraryMessage *)self->_message subject];
  subjectString = [subject subjectString];

  return subjectString;
}

- (id)_bodySummary:(id)summary
{
  summary = [(MFLibraryMessage *)self->_message summary];
  if (!summary)
  {
    summary = [MessageBodyLoader copySummaryForMessage:self->_message downloadIfNecessary:self->_shouldDownload];
  }

  return summary;
}

- (id)_predictiveModelSummary:(id)summary
{
  v3 = [(MFMessageResultsGenerator *)self _copyPredictiveModelSummaryForMessage:self->_message downloadIfNecessary:self->_shouldDownload];

  return v3;
}

- (id)_defaultAttachmentManager
{
  v2 = sub_100027C70();
  defaultAttachmentManager = [v2 defaultAttachmentManager];

  return defaultAttachmentManager;
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

- (id)_convertEmailAddress:(id)address
{
  addressCopy = address;
  if ([(MFMessageResultsGenerator *)self _addressBook])
  {
    v5 = addressCopy;
    emailAddressValue = [v5 emailAddressValue];
    displayName = [emailAddressValue displayName];
    v8 = displayName;
    if (displayName)
    {
      stringValue = displayName;
    }

    else
    {
      stringValue = [v5 stringValue];
    }

    v11 = stringValue;

    v12 = v5;
    emailAddressValue2 = [v12 emailAddressValue];
    simpleAddress = [emailAddressValue2 simpleAddress];
    v15 = simpleAddress;
    if (simpleAddress)
    {
      stringValue2 = simpleAddress;
    }

    else
    {
      stringValue2 = [v12 stringValue];
    }

    v17 = stringValue2;

    v18 = MFPreferredCompositeNameForAddressAndDisplayName();
    v19 = v18;
    if (v18 && ([v18 isEqualToString:v11] & 1) == 0)
    {
      v20 = objc_alloc_init(ECEmailAddressFormatter);
      [v20 setShouldIncludeDisplayName:1];
      v21 = [ECEmailAddressComponents componentsWithString:v17];
      [v21 setDisplayName:v19];
      emailAddressValue3 = [v21 emailAddressValue];
      v23 = emailAddressValue3;
      if (emailAddressValue3)
      {
        v24 = emailAddressValue3;
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
    v25 = addressCopy;
  }

  v26 = v25;

  return v25;
}

- (id)_convertEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  if ([(MFMessageResultsGenerator *)self _addressBook])
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [addressesCopy count]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = addressesCopy;
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
    v5 = addressesCopy;
  }

  return v5;
}

- (id)_sender:(id)_sender
{
  firstSender = [(MFLibraryMessage *)self->_message firstSender];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddress:firstSender];

  return v5;
}

- (id)_recipientBcc:(id)bcc
{
  v4 = [(MFLibraryMessage *)self->_message bcc];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddresses:v4];

  return v5;
}

- (id)_recipientCc:(id)cc
{
  v4 = [(MFLibraryMessage *)self->_message cc];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddresses:v4];

  return v5;
}

- (id)_recipientTo:(id)to
{
  v4 = [(MFLibraryMessage *)self->_message to];
  v5 = [(MFMessageResultsGenerator *)self _convertEmailAddresses:v4];

  return v5;
}

- (id)_receivingAddresses:(id)addresses
{
  account = [(MFLibraryMessage *)self->_message account];
  emailAddressesAndAliasesList = [account emailAddressesAndAliasesList];

  return emailAddressesAndAliasesList;
}

- (id)_dateSent:(id)sent
{
  dateSent = [(MFLibraryMessage *)self->_message dateSent];

  return dateSent;
}

- (id)_dateReceived:(id)received
{
  dateReceived = [(MFLibraryMessage *)self->_message dateReceived];

  return dateReceived;
}

- (id)_status:(id)_status
{
  messageFlags = [(MFLibraryMessage *)self->_message messageFlags];
  conversationFlags = [(MFLibraryMessage *)self->_message conversationFlags];
  conversationFlags2 = [(MFLibraryMessage *)self->_message conversationFlags];
  if (messageFlags >> 10)
  {
    v7 = messageFlags >> 10 == 63;
  }

  else
  {
    v7 = 1;
  }

  v8 = ((messageFlags >> 1) & 8 | messageFlags & 1 | (messageFlags >> 6) & 4 | (messageFlags >> 1) & 2) ^ 1;
  if (!v7)
  {
    v8 |= 0x10uLL;
  }

  v9 = (messageFlags >> 15) & 0x40 | (messageFlags >> 19) & 0x20 | ((conversationFlags & 1) << 7) | (conversationFlags2 << 6) & 0x100 | v8;
  if ((messageFlags & 0x18000000000) != 0)
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

- (id)_isLocalDraft:(id)draft
{
  mailbox = [(MFLibraryMessage *)self->_message mailbox];
  v4 = +[LocalAccount localAccount];
  transientDraftsFolder = [v4 transientDraftsFolder];
  v6 = [mailbox isEqual:transientDraftsFolder];

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

- (id)_outgoing:(id)_outgoing
{
  mailbox = [(MFLibraryMessage *)self->_message mailbox];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [mailbox isOutgoingMailboxUid]);

  return v4;
}

- (id)_mailboxType:(id)type
{
  mailbox = [(MFLibraryMessage *)self->_message mailbox];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [mailbox mailboxType]);

  return v4;
}

- (id)_suppressionContexts:(id)contexts
{
  v4 = objc_alloc_init(NSMutableSet);
  mf_externalReference = [(MFLibraryMessage *)self->_message mf_externalReference];
  absoluteString = [mf_externalReference absoluteString];

  if (absoluteString)
  {
    [v4 addObject:absoluteString];
  }

  mf_conversationReference = [(MFLibraryMessage *)self->_message mf_conversationReference];
  absoluteString2 = [mf_conversationReference absoluteString];

  if (absoluteString2)
  {
    [v4 addObject:absoluteString2];
  }

  mailbox = [(MFLibraryMessage *)self->_message mailbox];
  uRLString = [mailbox URLString];
  if (uRLString)
  {
    [v4 addObject:uRLString];
  }

  if ([mailbox mailboxType] == 7)
  {
    [v4 addObject:@"com.apple.mobilemail.context.AllInbox"];
  }

  messageFlags = [(MFLibraryMessage *)self->_message messageFlags];
  if ((messageFlags & 0x1000000) != 0)
  {
    [v4 addObject:MSUserNotificationCenterTopicVIP];
  }

  if ((messageFlags & 0x10) != 0)
  {
    [v4 addObject:@"com.apple.mobilemail.context.flagged"];
  }

  if ((messageFlags & 0x18000000000) != 0)
  {
    [v4 addObject:@"com.apple.mobilemail.context.toMe"];
  }

  if (messageFlags >> 10 && messageFlags >> 10 != 63)
  {
    [v4 addObject:@"com.apple.mobilemail.context.hasAttachments"];
  }

  if (([(MFLibraryMessage *)self->_message conversationFlags]& 1) != 0)
  {
    [v4 addObject:MSUserNotificationCenterTopicNotifiedThreads];
  }

  readLater = [(MFLibraryMessage *)self->_message readLater];

  if (readLater)
  {
    [v4 addObject:MSUserNotificationCenterTopicRemindMe];
  }

  category = [(MFLibraryMessage *)self->_message category];
  if ([category state] && objc_msgSend(category, "isPrimary"))
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

- (id)_testForAttachmentLimiterType:(id)type
{
  typeCopy = type;
  _knownAttachmentLimiterTests = [(MFMessageResultsGenerator *)self _knownAttachmentLimiterTests];
  v6 = [_knownAttachmentLimiterTests objectForKey:typeCopy];

  return v6;
}

- (id)_attachmentValueForKey:(id)key
{
  keyCopy = key;
  messageBodyIfAvailable = [(MFLibraryMessage *)self->_message messageBodyIfAvailable];
  topLevelPart = [messageBodyIfAvailable topLevelPart];
  attachmentURLs = [topLevelPart attachmentURLs];
  attachmentManager = self->_attachmentManager;
  v22 = 0;
  v9 = [(MFAttachmentManager *)attachmentManager attachmentsForURLs:attachmentURLs error:&v22];
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
  v11 = [keyCopy length];
  v12 = qword_100185970;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100078F34;
  v16[3] = &unk_1001594E0;
  v17 = keyCopy;
  selfCopy = self;
  v19 = v9;
  p_buf = &buf;
  [v12 enumerateMatchesInString:v17 options:4 range:0 usingBlock:{v11, v16}];
  v13 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
LABEL_10:

  return v13;
}

- (id)_rfc822Data:(id)data
{
  mailbox = [(MFLibraryMessage *)self->_message mailbox];
  store = [mailbox store];

  v6 = objc_alloc_init(MFMutableData);
  v7 = [store headerDataForMessage:self->_message downloadIfNecessary:0];
  if (v7)
  {
    [v6 appendData:v7];
  }

  v8 = [store fullBodyDataForMessage:self->_message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:0 didDownload:0];

  if (v8)
  {
    [v6 appendData:v8];
  }

  return v6;
}

- (id)_bestAlternativePart:(id)part
{
  bestAlternativePart = [(MFLibraryMessage *)self->_message bestAlternativePart];

  return bestAlternativePart;
}

- (id)_headerData:(id)data
{
  mailbox = [(MFLibraryMessage *)self->_message mailbox];
  store = [mailbox store];

  v6 = [store headerDataForMessage:self->_message downloadIfNecessary:0];

  return v6;
}

- (id)_headerValueForKey:(id)key
{
  keyCopy = key;
  messageBodyIfAvailable = [(MFLibraryMessage *)self->_message messageBodyIfAvailable];
  topLevelPart = [messageBodyIfAvailable topLevelPart];

  v7 = [(MFLibraryMessage *)self->_message bestAlternativeInPart:topLevelPart];
  v8 = [(MFLibraryMessage *)self->_message defaultAlternativeInPart:topLevelPart];
  if (v7 != v8)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Warning Exchange message was not fully loaded.  We won't be able to get custom headers for it.", v13, 2u);
    }
  }

  headers = [(MFLibraryMessage *)self->_message headers];
  v11 = [headers headersForKey:keyCopy];

  return v11;
}

@end