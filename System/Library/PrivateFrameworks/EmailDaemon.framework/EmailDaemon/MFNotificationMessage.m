@interface MFNotificationMessage
- (BOOL)_isInFavoriteMailbox;
- (BOOL)isNotifiedThread;
- (BOOL)isPrimary;
- (MFNotificationMessage)initWithFavoritesReader:(id)a3 vipReader:(id)a4 libraryMessage:(id)a5 contactStore:(id)a6 remindMeDate:(id)a7;
- (MFNotificationMessage)initWithFavoritesReader:(id)a3 vipReader:(id)a4 libraryMessage:(id)a5 contactStore:(id)a6 suppressionContexts:(id)a7 summary:(id)a8;
- (MFNotificationMessage)initWithNotificationMessage:(id)a3 summary:(id)a4;
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

- (MFNotificationMessage)initWithFavoritesReader:(id)a3 vipReader:(id)a4 libraryMessage:(id)a5 contactStore:(id)a6 suppressionContexts:(id)a7 summary:(id)a8
{
  v61 = a3;
  v60 = a4;
  v15 = a5;
  v59 = a6;
  v58 = a7;
  v16 = a8;
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

  objc_storeStrong(&v17->_libraryMessage, a5);
  v20 = [v15 account];
  account = v19->_account;
  v19->_account = v20;

  objc_storeStrong(p_isa + 19, a6);
  if (v19->_account)
  {
    objc_storeStrong(p_isa + 14, a3);
    objc_storeStrong(p_isa + 15, a4);
    objc_storeStrong(p_isa + 7, a8);
    objc_storeStrong(p_isa + 9, a7);
    v22 = [(MFLibraryMessage *)v19->_libraryMessage mailbox];
    mailbox = v19->_mailbox;
    v19->_mailbox = v22;

    v24 = [(MFLibraryMessage *)v19->_libraryMessage subject];
    v25 = [v24 subjectString];
    subject = v19->_subject;
    v19->_subject = v25;

    v27 = [(MFLibraryMessage *)v19->_libraryMessage senders];
    v28 = [v27 firstObject];
    senderFullAddress = v19->_senderFullAddress;
    v19->_senderFullAddress = v28;

    v30 = v19->_senderFullAddress;
    v31 = [(NSString *)v30 emailAddressValue];
    v32 = [v31 simpleAddress];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = [(NSString *)v30 stringValue];
    }

    v36 = v34;

    senderAddress = v19->_senderAddress;
    v19->_senderAddress = v36;

    v38 = [(MailAccount *)v19->_account uniqueID];
    accountID = v19->_accountID;
    v19->_accountID = v38;

    v40 = [(MFNotificationMessage *)v19 _displaySubject];
    subtitle = v19->_subtitle;
    v19->_subtitle = v40;

    v42 = [(MFLibraryMessage *)v19->_libraryMessage dateReceived];
    dateReceived = v19->_dateReceived;
    v19->_dateReceived = v42;

    v44 = [(MFLibraryMessage *)v19->_libraryMessage senderAddressComment];
    v45 = [v44 emailAddressValue];
    v46 = [v45 displayName];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = [v44 stringValue];
    }

    v49 = v48;

    senderCommentedAddress = v19->_senderCommentedAddress;
    v19->_senderCommentedAddress = v49;

    v19->_isVIP = [(EMVIPReader *)v19->_vipReader isVIPAddress:v19->_senderFullAddress];
    v19->_isFavoriteMailbox = [(MFNotificationMessage *)v19 _isInFavoriteMailbox];
    v51 = [(MFLibraryMessage *)v19->_libraryMessage nanoLocalMessageId];
    v52 = v51;
    if (v51)
    {
      v53 = v51;
      nanoMessageId = v19->_nanoMessageId;
      v19->_nanoMessageId = v53;
    }

    else
    {
      nanoMessageId = [p_isa[2] mf_externalReference];
      v55 = [nanoMessageId absoluteString];
      v56 = v19->_nanoMessageId;
      v19->_nanoMessageId = v55;
    }

    goto LABEL_14;
  }

  v35 = 0;
LABEL_15:

  return v35;
}

- (MFNotificationMessage)initWithFavoritesReader:(id)a3 vipReader:(id)a4 libraryMessage:(id)a5 contactStore:(id)a6 remindMeDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
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

  objc_storeStrong(&v16->_libraryMessage, a5);
  v19 = [v14 account];
  account = v18->_account;
  v18->_account = v19;

  if (v18->_account)
  {
    objc_storeStrong(p_isa + 14, a3);
    objc_storeStrong(p_isa + 15, a4);
    v18->_isRemindMe = 1;
    objc_storeStrong(p_isa + 13, a7);
    v21 = [(MFLibraryMessage *)v18->_libraryMessage mailbox];
    mailbox = v18->_mailbox;
    v18->_mailbox = v21;

    v23 = [(MFLibraryMessage *)v18->_libraryMessage subject];
    v24 = [v23 subjectString];
    subject = v18->_subject;
    v18->_subject = v24;

    v26 = [(MFLibraryMessage *)v18->_libraryMessage senders];
    v27 = [v26 firstObject];
    senderFullAddress = v18->_senderFullAddress;
    v18->_senderFullAddress = v27;

    v29 = v18->_senderFullAddress;
    v30 = [(NSString *)v29 emailAddressValue];
    v31 = [v30 simpleAddress];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = [(NSString *)v29 stringValue];
    }

    v35 = v33;

    senderAddress = v18->_senderAddress;
    v18->_senderAddress = v35;

    v37 = [(MailAccount *)v18->_account uniqueID];
    accountID = v18->_accountID;
    v18->_accountID = v37;

    subtitle = v18->_subtitle;
    v18->_subtitle = 0;

    v40 = [(MFLibraryMessage *)v18->_libraryMessage dateReceived];
    dateReceived = v18->_dateReceived;
    v18->_dateReceived = v40;

    v42 = [(MFLibraryMessage *)v18->_libraryMessage senderAddressComment];
    v43 = [v42 emailAddressValue];
    v44 = [v43 displayName];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = [v42 stringValue];
    }

    v47 = v46;

    senderCommentedAddress = v18->_senderCommentedAddress;
    v18->_senderCommentedAddress = v47;

    v18->_isVIP = [(EMVIPReader *)v18->_vipReader isVIPAddress:v18->_senderFullAddress];
    v18->_isFavoriteMailbox = [(MFNotificationMessage *)v18 _isInFavoriteMailbox];
    v49 = [(MFLibraryMessage *)v18->_libraryMessage nanoLocalMessageId];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
      nanoMessageId = v18->_nanoMessageId;
      v18->_nanoMessageId = v51;
    }

    else
    {
      nanoMessageId = [p_isa[2] mf_externalReference];
      v53 = [nanoMessageId absoluteString];
      v54 = v18->_nanoMessageId;
      v18->_nanoMessageId = v53;
    }

    v55 = [(MFNotificationMessage *)v18 _summaryForRemindMe];
    summary = v18->_summary;
    v18->_summary = v55;

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

- (MFNotificationMessage)initWithNotificationMessage:(id)a3 summary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13.receiver = self;
    v13.super_class = MFNotificationMessage;
    v8 = [(MFNotificationMessage *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_libraryMessage, v6[2]);
      objc_storeStrong(&v9->_account, v6[3]);
      objc_storeStrong(&v9->_contactStore, v6[19]);
      objc_storeStrong(&v9->_favoritesReader, v6[14]);
      objc_storeStrong(&v9->_vipReader, v6[15]);
      v10 = v7;
      if (!v7)
      {
        v10 = v6[7];
      }

      objc_storeStrong(&v9->_summary, v10);
      objc_storeStrong(&v9->_suppressionContexts, v6[9]);
      objc_storeStrong(&v9->_mailbox, v6[16]);
      objc_storeStrong(&v9->_subject, v6[17]);
      objc_storeStrong(&v9->_senderFullAddress, v6[20]);
      objc_storeStrong(&v9->_senderAddress, v6[8]);
      objc_storeStrong(&v9->_accountID, v6[10]);
      objc_storeStrong(&v9->_subtitle, v6[6]);
      objc_storeStrong(&v9->_dateReceived, v6[4]);
      objc_storeStrong(&v9->_senderCommentedAddress, v6[18]);
      v9->_isVIP = *(v6 + 8);
      v9->_isFavoriteMailbox = *(v6 + 9);
      objc_storeStrong(&v9->_nanoMessageId, v6[11]);
    }

    self = v9;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_summaryForRemindMe
{
  v3 = [(MFNotificationMessage *)self _displaySender];
  if ([v3 length])
  {
    v4 = [(MFNotificationMessage *)self _displaySubject];
    v5 = [NSString stringWithFormat:@"%@\n%@", v3, v4];
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
    v4 = [(MFNotificationMessage *)self _displaySender];
    v5 = self->_title;
    self->_title = v4;

    title = self->_title;
  }

  return title;
}

- (id)_displaySender
{
  v3 = [(MFNotificationMessage *)self senderFullAddress];
  v4 = [(MFNotificationMessage *)self senderFullAddress];
  v5 = [v4 emailAddressValue];
  v6 = [v5 simpleAddress];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 stringValue];
  }

  v9 = v8;

  if (!v9 || ([(MFNotificationMessage *)self contactStore], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
LABEL_10:
    v18 = v3;
    v19 = [v18 emailAddressValue];
    v20 = [v19 displayName];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [v18 stringValue];
    }

    v23 = v22;

    if ([v23 isEqualToString:v18])
    {
      v24 = [(MFNotificationMessage *)self senderCommentedAddress];
    }

    else
    {
      v24 = v23;
    }

    v17 = v24;

    goto LABEL_17;
  }

  v11 = [CNContact predicateForContactsMatchingEmailAddress:v9];
  v12 = [(MFNotificationMessage *)self contactStore];
  v13 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v26[0] = v13;
  v26[1] = CNContactEmailAddressesKey;
  v14 = [NSArray arrayWithObjects:v26 count:2];
  v15 = [v12 unifiedContactsMatchingPredicate:v11 keysToFetch:v14 error:0];

  if (![v15 count])
  {

    goto LABEL_10;
  }

  v16 = [v15 firstObject];
  v17 = [CNContactFormatter stringFromContact:v16 style:0];

  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_17:

  return v17;
}

- (id)_displaySubject
{
  v2 = [(MFLibraryMessage *)self->_libraryMessage subject];
  v3 = [v2 subjectString];

  if (v3)
  {
    v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    [v3 ef_stringByTrimmingLeadingCharactersInSet:v4];
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
  v2 = self;
  favoritesReader = self->_favoritesReader;
  v4 = [(MFNotificationMessage *)self account];
  v5 = [(MFFavoritesReader *)favoritesReader favoriteMailboxesForAccount:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100098B34;
  v7[3] = &unk_100157208;
  v7[4] = v2;
  LOBYTE(v2) = [v5 ef_any:v7];

  return v2;
}

- (NSString)messageReference
{
  v3 = [(MFLibraryMessage *)self->_libraryMessage globalMessageURL];
  if (!v3)
  {
    v3 = [(MFLibraryMessage *)self->_libraryMessage mf_externalReference];
  }

  v4 = [v3 absoluteString];

  return v4;
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
    v4 = [(MFNotificationMessage *)self accountID];
    [v3 addObject:v4];
  }

  return v3;
}

- (NSString)coalesceThreadID
{
  v2 = [(MFNotificationMessage *)self account];
  v3 = [v2 displayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(MFNotificationMessage *)self libraryMessage];
  v3 = [v2 conversationFlags];

  return v3 & 1;
}

- (NSString)ef_publicDescription
{
  v3 = [(MFNotificationMessage *)self notificationID];
  v4 = [(MFNotificationMessage *)self libraryMessage];
  v5 = [v4 libraryID];
  v6 = [(MFNotificationMessage *)self libraryMessage];
  v7 = [v6 globalMessageID];
  v8 = [(MFNotificationMessage *)self accountID];
  v9 = [(MFNotificationMessage *)self topicIdentifiers];
  v10 = [NSString stringWithFormat:@"notificationID %@, libraryID:%ld, globalMessageID:%ld, Account:%@, Topics:%@", v3, v5, v7, v8, v9];

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
  v2 = [(MFNotificationMessage *)self libraryMessage];
  v3 = [v2 category];

  if ([v3 state])
  {
    v4 = [v3 isPrimary];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end