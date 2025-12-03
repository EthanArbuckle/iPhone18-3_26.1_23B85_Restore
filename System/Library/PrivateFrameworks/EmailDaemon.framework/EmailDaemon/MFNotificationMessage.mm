@interface MFNotificationMessage
- (BOOL)_isInFavoriteMailbox;
- (BOOL)isNotifiedThread;
- (BOOL)isPrimary;
- (MFNotificationMessage)initWithFavoritesReader:(id)reader vipReader:(id)vipReader libraryMessage:(id)message contactStore:(id)store remindMeDate:(id)date;
- (MFNotificationMessage)initWithFavoritesReader:(id)reader vipReader:(id)vipReader libraryMessage:(id)message contactStore:(id)store suppressionContexts:(id)contexts summary:(id)summary;
- (MFNotificationMessage)initWithNotificationMessage:(id)message summary:(id)summary;
- (NSSet)topicIdentifiers;
- (NSString)coalesceThreadID;
- (NSString)ef_publicDescription;
- (NSString)messageReference;
- (NSString)title;
- (id)_displaySender;
- (id)_displaySubject;
- (id)_summaryForRemindMe;
- (unint64_t)status;
@end

@implementation MFNotificationMessage

- (MFNotificationMessage)initWithFavoritesReader:(id)reader vipReader:(id)vipReader libraryMessage:(id)message contactStore:(id)store suppressionContexts:(id)contexts summary:(id)summary
{
  readerCopy = reader;
  vipReaderCopy = vipReader;
  messageCopy = message;
  storeCopy = store;
  contextsCopy = contexts;
  summaryCopy = summary;
  v62.receiver = self;
  v62.super_class = MFNotificationMessage;
  v17 = [(MFNotificationMessage *)&v62 init];
  p_isa = &v17->super.isa;
  v19 = v17;
  if (!v17)
  {
LABEL_14:
    v35 = v19;
    goto LABEL_15;
  }

  objc_storeStrong(&v17->_libraryMessage, message);
  account = [messageCopy account];
  account = v19->_account;
  v19->_account = account;

  objc_storeStrong(p_isa + 19, store);
  if (v19->_account)
  {
    objc_storeStrong(p_isa + 14, reader);
    objc_storeStrong(p_isa + 15, vipReader);
    objc_storeStrong(p_isa + 7, summary);
    objc_storeStrong(p_isa + 9, contexts);
    mailbox = [(MFLibraryMessage *)v19->_libraryMessage mailbox];
    mailbox = v19->_mailbox;
    v19->_mailbox = mailbox;

    subject = [(MFLibraryMessage *)v19->_libraryMessage subject];
    subjectString = [subject subjectString];
    subject = v19->_subject;
    v19->_subject = subjectString;

    senders = [(MFLibraryMessage *)v19->_libraryMessage senders];
    firstObject = [senders firstObject];
    senderFullAddress = v19->_senderFullAddress;
    v19->_senderFullAddress = firstObject;

    v30 = v19->_senderFullAddress;
    emailAddressValue = [(NSString *)v30 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v33 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [(NSString *)v30 stringValue];
    }

    v36 = stringValue;

    senderAddress = v19->_senderAddress;
    v19->_senderAddress = v36;

    uniqueID = [(MailAccount *)v19->_account uniqueID];
    accountID = v19->_accountID;
    v19->_accountID = uniqueID;

    _displaySubject = [(MFNotificationMessage *)v19 _displaySubject];
    subtitle = v19->_subtitle;
    v19->_subtitle = _displaySubject;

    dateReceived = [(MFLibraryMessage *)v19->_libraryMessage dateReceived];
    dateReceived = v19->_dateReceived;
    v19->_dateReceived = dateReceived;

    senderAddressComment = [(MFLibraryMessage *)v19->_libraryMessage senderAddressComment];
    emailAddressValue2 = [senderAddressComment emailAddressValue];
    displayName = [emailAddressValue2 displayName];
    v47 = displayName;
    if (displayName)
    {
      stringValue2 = displayName;
    }

    else
    {
      stringValue2 = [senderAddressComment stringValue];
    }

    v49 = stringValue2;

    senderCommentedAddress = v19->_senderCommentedAddress;
    v19->_senderCommentedAddress = v49;

    v19->_isVIP = [(EMVIPReader *)v19->_vipReader isVIPAddress:v19->_senderFullAddress];
    v19->_isFavoriteMailbox = [(MFNotificationMessage *)v19 _isInFavoriteMailbox];
    nanoLocalMessageId = [(MFLibraryMessage *)v19->_libraryMessage nanoLocalMessageId];
    v52 = nanoLocalMessageId;
    if (nanoLocalMessageId)
    {
      v53 = nanoLocalMessageId;
      nanoMessageId = v19->_nanoMessageId;
      v19->_nanoMessageId = v53;
    }

    else
    {
      nanoMessageId = [p_isa[2] mf_externalReference];
      absoluteString = [nanoMessageId absoluteString];
      v56 = v19->_nanoMessageId;
      v19->_nanoMessageId = absoluteString;
    }

    goto LABEL_14;
  }

  v35 = 0;
LABEL_15:

  return v35;
}

- (MFNotificationMessage)initWithFavoritesReader:(id)reader vipReader:(id)vipReader libraryMessage:(id)message contactStore:(id)store remindMeDate:(id)date
{
  readerCopy = reader;
  vipReaderCopy = vipReader;
  messageCopy = message;
  dateCopy = date;
  v60.receiver = self;
  v60.super_class = MFNotificationMessage;
  v16 = [(MFNotificationMessage *)&v60 init];
  p_isa = &v16->super.isa;
  v18 = v16;
  if (!v16)
  {
LABEL_17:
    v34 = v18;
    goto LABEL_18;
  }

  objc_storeStrong(&v16->_libraryMessage, message);
  account = [messageCopy account];
  account = v18->_account;
  v18->_account = account;

  if (v18->_account)
  {
    objc_storeStrong(p_isa + 14, reader);
    objc_storeStrong(p_isa + 15, vipReader);
    v18->_isRemindMe = 1;
    objc_storeStrong(p_isa + 13, date);
    mailbox = [(MFLibraryMessage *)v18->_libraryMessage mailbox];
    mailbox = v18->_mailbox;
    v18->_mailbox = mailbox;

    subject = [(MFLibraryMessage *)v18->_libraryMessage subject];
    subjectString = [subject subjectString];
    subject = v18->_subject;
    v18->_subject = subjectString;

    senders = [(MFLibraryMessage *)v18->_libraryMessage senders];
    firstObject = [senders firstObject];
    senderFullAddress = v18->_senderFullAddress;
    v18->_senderFullAddress = firstObject;

    v29 = v18->_senderFullAddress;
    emailAddressValue = [(NSString *)v29 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v32 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [(NSString *)v29 stringValue];
    }

    v35 = stringValue;

    senderAddress = v18->_senderAddress;
    v18->_senderAddress = v35;

    uniqueID = [(MailAccount *)v18->_account uniqueID];
    accountID = v18->_accountID;
    v18->_accountID = uniqueID;

    subtitle = v18->_subtitle;
    v18->_subtitle = 0;

    dateReceived = [(MFLibraryMessage *)v18->_libraryMessage dateReceived];
    dateReceived = v18->_dateReceived;
    v18->_dateReceived = dateReceived;

    senderAddressComment = [(MFLibraryMessage *)v18->_libraryMessage senderAddressComment];
    emailAddressValue2 = [senderAddressComment emailAddressValue];
    displayName = [emailAddressValue2 displayName];
    v45 = displayName;
    if (displayName)
    {
      stringValue2 = displayName;
    }

    else
    {
      stringValue2 = [senderAddressComment stringValue];
    }

    v47 = stringValue2;

    senderCommentedAddress = v18->_senderCommentedAddress;
    v18->_senderCommentedAddress = v47;

    v18->_isVIP = [(EMVIPReader *)v18->_vipReader isVIPAddress:v18->_senderFullAddress];
    v18->_isFavoriteMailbox = [(MFNotificationMessage *)v18 _isInFavoriteMailbox];
    nanoLocalMessageId = [(MFLibraryMessage *)v18->_libraryMessage nanoLocalMessageId];
    v50 = nanoLocalMessageId;
    if (nanoLocalMessageId)
    {
      v51 = nanoLocalMessageId;
      nanoMessageId = v18->_nanoMessageId;
      v18->_nanoMessageId = v51;
    }

    else
    {
      nanoMessageId = [p_isa[2] mf_externalReference];
      absoluteString = [nanoMessageId absoluteString];
      v54 = v18->_nanoMessageId;
      v18->_nanoMessageId = absoluteString;
    }

    _summaryForRemindMe = [(MFNotificationMessage *)v18 _summaryForRemindMe];
    summary = v18->_summary;
    v18->_summary = _summaryForRemindMe;

    if (v18->_summary)
    {
      +[EDRemindMeNotificationController localizedRemindMeNotificationTitle];
    }

    else
    {
      +[EDRemindMeNotificationController localizedRemindMeNotificationTitleNoSender];
    }
    v57 = ;
    title = v18->_title;
    v18->_title = v57;

    goto LABEL_17;
  }

  v34 = 0;
LABEL_18:

  return v34;
}

- (MFNotificationMessage)initWithNotificationMessage:(id)message summary:(id)summary
{
  messageCopy = message;
  summaryCopy = summary;
  if (messageCopy)
  {
    v13.receiver = self;
    v13.super_class = MFNotificationMessage;
    v8 = [(MFNotificationMessage *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_libraryMessage, messageCopy[2]);
      objc_storeStrong(&v9->_account, messageCopy[3]);
      objc_storeStrong(&v9->_contactStore, messageCopy[19]);
      objc_storeStrong(&v9->_favoritesReader, messageCopy[14]);
      objc_storeStrong(&v9->_vipReader, messageCopy[15]);
      v10 = summaryCopy;
      if (!summaryCopy)
      {
        v10 = messageCopy[7];
      }

      objc_storeStrong(&v9->_summary, v10);
      objc_storeStrong(&v9->_suppressionContexts, messageCopy[9]);
      objc_storeStrong(&v9->_mailbox, messageCopy[16]);
      objc_storeStrong(&v9->_subject, messageCopy[17]);
      objc_storeStrong(&v9->_senderFullAddress, messageCopy[20]);
      objc_storeStrong(&v9->_senderAddress, messageCopy[8]);
      objc_storeStrong(&v9->_accountID, messageCopy[10]);
      objc_storeStrong(&v9->_subtitle, messageCopy[6]);
      objc_storeStrong(&v9->_dateReceived, messageCopy[4]);
      objc_storeStrong(&v9->_senderCommentedAddress, messageCopy[18]);
      v9->_isVIP = *(messageCopy + 8);
      v9->_isFavoriteMailbox = *(messageCopy + 9);
      objc_storeStrong(&v9->_nanoMessageId, messageCopy[11]);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_summaryForRemindMe
{
  _displaySender = [(MFNotificationMessage *)self _displaySender];
  if ([_displaySender length])
  {
    _displaySubject = [(MFNotificationMessage *)self _displaySubject];
    v5 = [NSString stringWithFormat:@"%@\n%@", _displaySender, _displaySubject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)title
{
  title = self->_title;
  if (!title)
  {
    _displaySender = [(MFNotificationMessage *)self _displaySender];
    v5 = self->_title;
    self->_title = _displaySender;

    title = self->_title;
  }

  return title;
}

- (id)_displaySender
{
  senderFullAddress = [(MFNotificationMessage *)self senderFullAddress];
  senderFullAddress2 = [(MFNotificationMessage *)self senderFullAddress];
  emailAddressValue = [senderFullAddress2 emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v7 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [senderFullAddress2 stringValue];
  }

  v9 = stringValue;

  if (!v9 || ([(MFNotificationMessage *)self contactStore], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
LABEL_10:
    v18 = senderFullAddress;
    emailAddressValue2 = [v18 emailAddressValue];
    displayName = [emailAddressValue2 displayName];
    v21 = displayName;
    if (displayName)
    {
      stringValue2 = displayName;
    }

    else
    {
      stringValue2 = [v18 stringValue];
    }

    v23 = stringValue2;

    if ([v23 isEqualToString:v18])
    {
      senderCommentedAddress = [(MFNotificationMessage *)self senderCommentedAddress];
    }

    else
    {
      senderCommentedAddress = v23;
    }

    v17 = senderCommentedAddress;

    goto LABEL_17;
  }

  v11 = [CNContact predicateForContactsMatchingEmailAddress:v9];
  contactStore = [(MFNotificationMessage *)self contactStore];
  v13 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v26[0] = v13;
  v26[1] = CNContactEmailAddressesKey;
  v14 = [NSArray arrayWithObjects:v26 count:2];
  v15 = [contactStore unifiedContactsMatchingPredicate:v11 keysToFetch:v14 error:0];

  if (![v15 count])
  {

    goto LABEL_10;
  }

  firstObject = [v15 firstObject];
  v17 = [CNContactFormatter stringFromContact:firstObject style:0];

  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_17:

  return v17;
}

- (id)_displaySubject
{
  subject = [(MFLibraryMessage *)self->_libraryMessage subject];
  subjectString = [subject subjectString];

  if (subjectString)
  {
    v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    [subjectString ef_stringByTrimmingLeadingCharactersInSet:v4];
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    [v4 localizedStringForKey:@"NO_SUBJECT" value:&stru_10015BEC8 table:0];
  }
  v5 = ;

  return v5;
}

- (BOOL)_isInFavoriteMailbox
{
  selfCopy = self;
  favoritesReader = self->_favoritesReader;
  account = [(MFNotificationMessage *)self account];
  v5 = [(MFFavoritesReader *)favoritesReader favoriteMailboxesForAccount:account];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100098B34;
  v7[3] = &unk_100157208;
  v7[4] = selfCopy;
  LOBYTE(selfCopy) = [v5 ef_any:v7];

  return selfCopy;
}

- (NSString)messageReference
{
  globalMessageURL = [(MFLibraryMessage *)self->_libraryMessage globalMessageURL];
  if (!globalMessageURL)
  {
    globalMessageURL = [(MFLibraryMessage *)self->_libraryMessage mf_externalReference];
  }

  absoluteString = [globalMessageURL absoluteString];

  return absoluteString;
}

- (NSSet)topicIdentifiers
{
  v3 = objc_alloc_init(NSMutableSet);
  if ([(MFNotificationMessage *)self isVIP])
  {
    [v3 addObject:MSUserNotificationCenterTopicVIP];
  }

  if ([(MFNotificationMessage *)self isNotifiedThread])
  {
    [v3 addObject:MSUserNotificationCenterTopicNotifiedThreads];
  }

  if ([(MFNotificationMessage *)self isRemindMe])
  {
    [v3 addObject:MSUserNotificationCenterTopicRemindMe];
  }

  if ([(MFNotificationMessage *)self isPrimary])
  {
    [v3 addObject:MSUserNotificationCenterTopicPrimary];
  }

  if ([(MFNotificationMessage *)self isFavoriteMailbox])
  {
    [v3 addObject:MSUserNotificationCenterTopicFavoriteMailboxes];
  }

  if (![(MFNotificationMessage *)self isFavoriteMailbox])
  {
    accountID = [(MFNotificationMessage *)self accountID];
    [v3 addObject:accountID];
  }

  return v3;
}

- (NSString)coalesceThreadID
{
  account = [(MFNotificationMessage *)self account];
  displayName = [account displayName];
  v4 = displayName;
  if (displayName)
  {
    v5 = displayName;
  }

  else
  {
    v5 = &stru_10015BEC8;
  }

  v6 = v5;

  return &v5->isa;
}

- (BOOL)isNotifiedThread
{
  libraryMessage = [(MFNotificationMessage *)self libraryMessage];
  conversationFlags = [libraryMessage conversationFlags];

  return conversationFlags & 1;
}

- (NSString)ef_publicDescription
{
  notificationID = [(MFNotificationMessage *)self notificationID];
  libraryMessage = [(MFNotificationMessage *)self libraryMessage];
  libraryID = [libraryMessage libraryID];
  libraryMessage2 = [(MFNotificationMessage *)self libraryMessage];
  globalMessageID = [libraryMessage2 globalMessageID];
  accountID = [(MFNotificationMessage *)self accountID];
  topicIdentifiers = [(MFNotificationMessage *)self topicIdentifiers];
  v10 = [NSString stringWithFormat:@"notificationID %@, libraryID:%ld, globalMessageID:%ld, Account:%@, Topics:%@", notificationID, libraryID, globalMessageID, accountID, topicIdentifiers];

  return v10;
}

- (unint64_t)status
{
  v3 = [[MFMessageResultsGenerator alloc] initWithKeys:&__NSArray0__struct downloadIfNecessary:0];
  [(MFMessageResultsGenerator *)v3 setMessage:self->_libraryMessage];
  v4 = [(_MFResultsGenerator *)v3 valueForKey:@"MSResultsKeyStatus"];

  return v4;
}

- (BOOL)isPrimary
{
  libraryMessage = [(MFNotificationMessage *)self libraryMessage];
  category = [libraryMessage category];

  if ([category state])
  {
    isPrimary = [category isPrimary];
  }

  else
  {
    isPrimary = 0;
  }

  return isPrimary;
}

@end