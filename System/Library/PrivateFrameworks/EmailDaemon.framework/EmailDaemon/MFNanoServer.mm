@interface MFNanoServer
- (MFNanoServer)init;
- (id)_filteredMessagesArrayFromLibraryMessages:(id)messages syncedMailbox:(id)mailbox;
- (id)_filteredMessagesArrayFromLibraryMessages:(id)messages syncedMailboxes:(id)mailboxes;
- (id)_libraryMessagesReceivedBefore:(id)before count:(unint64_t)count inConversationWithId:(id)id protectedDataAvailable:(BOOL *)available limitDateReceived:(id)received syncedMailbox:(id)mailbox;
- (id)_libraryMessagesReceivedBefore:(id)before count:(unint64_t)count inConversationWithId:(id)id protectedDataAvailable:(BOOL *)available limitDateReceived:(id)received syncedMailboxes:(id)mailboxes;
- (id)_messageIdsForNanoMessages:(id)messages;
- (id)nanoBulletinFlagsForMessageFromAccount:(id)account mailboxURLString:(id)string status:(unint64_t)status dateReceived:(id)received;
- (void)_addObservers;
- (void)_cancelLoadingContentForLibraryMessageId:(id)id;
- (void)_conversationFlagsChanged:(id)changed;
- (void)_fetchForMailboxes:(id)mailboxes growFetchWindow:(BOOL)window;
- (void)_handleSingleAutoFetchDone:(id)done;
- (void)_loadFullMesssagesForMessageIds:(id)ids messagesAlreadyLoadedByMessageId:(id)id libraryMessagesRetrievalBlock:(id)block callback:(id)callback;
- (void)_messageFlagsChanged:(id)changed;
- (void)_messagesAdded:(id)added;
- (void)_messagesCompacted:(id)compacted;
- (void)_updateVIPList:(id)list requestContext:(id)context;
- (void)_vipChangedNotification:(id)notification;
- (void)messageContentLoader:(id)loader receivedAttachmentData:(id)data contentId:(id)id loadedProtected:(BOOL)protected;
- (void)messageContentLoader:(id)loader receivedImageAttachment:(id)attachment contentId:(id)id loadedProtected:(BOOL)protected;
- (void)messageContentLoader:(id)loader receivedMailContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected;
- (void)messageContentLoaderDidFailLoadingContent:(id)content;
- (void)messageContentLoaderDidFinishLoading:(id)loading;
- (void)performBlock:(id)block;
- (void)syncProvider:(id)provider didFailAuthenticatingAccount:(id)account;
- (void)syncProvider:(id)provider didMoveMessageIds:(id)ids toMailbox:(id)mailbox;
- (void)syncProvider:(id)provider didRequestContentForMessageWithId:(id)id highPriority:(BOOL)priority;
- (void)syncProvider:(id)provider didRequestFetchForMailboxes:(id)mailboxes;
- (void)syncProvider:(id)provider didRequestFirstMessages:(unint64_t)messages mailboxes:(id)mailboxes;
- (void)syncProvider:(id)provider didRequestMessagesToSendAsFetchResponseForMessageIds:(id)ids;
- (void)syncProvider:(id)provider didRequestMessagesWithContext:(id)context;
- (void)syncProvider:(id)provider didRequestResendAccountWithId:(id)id;
- (void)syncProvider:(id)provider didRequestResendMessagesWithIds:(id)ids;
- (void)syncProvider:(id)provider didRequestSendComposedMessage:(id)message;
- (void)syncProvider:(id)provider didRequestStopDownloadingMessageElementsForMessageWithId:(id)id;
- (void)syncProvider:(id)provider didRequestVIPSenderListWithRequestContext:(id)context;
- (void)syncProvider:(id)provider didUpdateMailboxSelection:(id)selection;
- (void)syncProvider:(id)provider didUpdateMessagesStatus:(id)status;
- (void)syncProvider:(id)provider didUpdateWatchAccounts:(id)accounts;
- (void)syncProviderDidRequestAccounts:(id)accounts;
- (void)syncProviderDidRequestFetch:(id)fetch forConversationId:(id)id mailbox:(id)mailbox;
- (void)syncProviderDidRequestStopDownloadingAllMessageElements:(id)elements;
@end

@implementation MFNanoServer

- (MFNanoServer)init
{
  if (MFDeviceSupportsNanoCompanion() && (EFIsRunningUnitTests() & 1) == 0)
  {
    v27.receiver = self;
    v27.super_class = MFNanoServer;
    v4 = [(MFNanoServer *)&v27 init];
    if (v4)
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create("com.apple.MobileMail.NanoServer", v5);
      nanoServerQueue = v4->_nanoServerQueue;
      v4->_nanoServerQueue = v6;

      v8 = [[MFNanoServerFullMessageLoader alloc] initWithCallbackQueue:v4->_nanoServerQueue];
      v9 = [MFNanoServerFullMessageLoader2 alloc];
      v10 = v4->_nanoServerQueue;
      v11 = +[MFMailMessageLibrary defaultInstance];
      v12 = [v9 initWithCallbackQueue:v10 mailMessageLibrary:v11 legacyLoader:v8];
      fullMessageLoader = v4->_fullMessageLoader;
      v4->_fullMessageLoader = v12;

      v14 = objc_alloc_init(MFNanoServerMessageUpdater);
      messageUpdater = v4->_messageUpdater;
      v4->_messageUpdater = v14;

      v16 = objc_alloc_init(MFNanoServerMessageSender);
      messageSender = v4->_messageSender;
      v4->_messageSender = v16;

      v18 = objc_alloc_init(NSMutableDictionary);
      messageContentLoadersKeyedByMessageId = v4->_messageContentLoadersKeyedByMessageId;
      v4->_messageContentLoadersKeyedByMessageId = v18;

      v20 = objc_alloc_init(NSMutableSet);
      mailboxesWaitingForFetch = v4->_mailboxesWaitingForFetch;
      v4->_mailboxesWaitingForFetch = v20;

      v22 = objc_alloc_init(MFNanoServerMessageFetchService);
      messageFetchService = v4->_messageFetchService;
      v4->_messageFetchService = v22;

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100083D6C;
      v25[3] = &unk_100156400;
      v26 = v4;
      [(MFNanoServer *)v26 performBlock:v25];
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_addObservers
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_messagesAdded:" name:MailMessageStoreMessagesAdded object:0];
  [v4 addObserver:self selector:"_messageFlagsChanged:" name:MailMessageStoreMessageFlagsChanged object:0];
  [v4 addObserver:self selector:"_conversationFlagsChanged:" name:EDConversationFlagsChanged object:0];
  [v4 addObserver:self selector:"_messagesCompacted:" name:MailMessageStoreMessagesCompacted object:0];
  [v4 addObserver:self selector:"_handleSingleAutoFetchDone:" name:@"AutoFetchPushCompletedNotification" object:0];
  v3 = +[VIPManager defaultInstance];
  [v4 addObserver:self selector:"_vipChangedNotification:" name:EMVIPsDidChangeNotification object:v3];
}

- (id)nanoBulletinFlagsForMessageFromAccount:(id)account mailboxURLString:(id)string status:(unint64_t)status dateReceived:(id)received
{
  receivedCopy = received;
  v11 = [account mailboxUidForURL:string];
  v12 = [MFLibraryMessage nano_nnmkMailItemStatusFromMSResultsStatus:status];
  syncProvider = self->_syncProvider;
  nano_mailbox = [v11 nano_mailbox];
  v15 = [(NNMKSyncProvider *)syncProvider containsSyncedMailbox:nano_mailbox];

  v16 = self->_syncProvider;
  nano_mailboxId = [v11 nano_mailboxId];
  v18 = [(NNMKSyncProvider *)v16 bulletinFlagsForMessageStatus:v12 dateReceived:receivedCopy messageWillBeAddedToSyncProvider:v15 mailboxId:nano_mailboxId];

  return v18;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  [EFProcessTransaction transactionWithDescription:@"com.apple.email.NanoServer"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008416C;
  v9 = v8[3] = &unk_100158128;
  v10 = blockCopy;
  v5 = v9;
  v6 = blockCopy;
  v7 = objc_retainBlock(v8);
  dispatch_async(self->_nanoServerQueue, v7);
}

- (void)syncProviderDidRequestAccounts:(id)accounts
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100084220;
  v3[3] = &unk_100156400;
  v3[4] = self;
  [(MFNanoServer *)self performBlock:v3];
}

- (void)syncProvider:(id)provider didUpdateMailboxSelection:(id)selection
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100084350;
  v5[3] = &unk_1001563D8;
  selfCopy = self;
  selectionCopy = selection;
  v4 = selectionCopy;
  [(MFNanoServer *)selfCopy performBlock:v5];
}

- (void)syncProvider:(id)provider didUpdateMessagesStatus:(id)status
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100084408;
  v5[3] = &unk_1001563D8;
  selfCopy = self;
  statusCopy = status;
  v4 = statusCopy;
  [(MFNanoServer *)selfCopy performBlock:v5];
}

- (void)syncProvider:(id)provider didMoveMessageIds:(id)ids toMailbox:(id)mailbox
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000844F8;
  v8[3] = &unk_1001573C0;
  selfCopy = self;
  idsCopy = ids;
  mailboxCopy = mailbox;
  v6 = mailboxCopy;
  v7 = idsCopy;
  [(MFNanoServer *)selfCopy performBlock:v8];
}

- (void)syncProvider:(id)provider didRequestFirstMessages:(unint64_t)messages mailboxes:(id)mailboxes
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000845C0;
  v6[3] = &unk_100157098;
  selfCopy = self;
  messagesCopy = messages;
  mailboxesCopy = mailboxes;
  v5 = mailboxesCopy;
  [(MFNanoServer *)selfCopy performBlock:v6];
}

- (void)syncProvider:(id)provider didRequestMessagesWithContext:(id)context
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000849C8;
  v6[3] = &unk_1001563D8;
  contextCopy = context;
  selfCopy = self;
  v5 = contextCopy;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)provider didRequestResendMessagesWithIds:(id)ids
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100084EAC;
  v6[3] = &unk_1001563D8;
  idsCopy = ids;
  selfCopy = self;
  v5 = idsCopy;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)provider didRequestMessagesToSendAsFetchResponseForMessageIds:(id)ids
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085298;
  v6[3] = &unk_1001563D8;
  idsCopy = ids;
  selfCopy = self;
  v5 = idsCopy;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)provider didRequestResendAccountWithId:(id)id
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000855E0;
  v5[3] = &unk_1001563D8;
  selfCopy = self;
  idCopy = id;
  v4 = idCopy;
  [(MFNanoServer *)selfCopy performBlock:v5];
}

- (void)syncProvider:(id)provider didRequestContentForMessageWithId:(id)id highPriority:(BOOL)priority
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100085704;
  v7[3] = &unk_1001596C0;
  selfCopy = self;
  idCopy = id;
  priorityCopy = priority;
  v6 = idCopy;
  [(MFNanoServer *)selfCopy performBlock:v7];
}

- (void)syncProvider:(id)provider didRequestStopDownloadingMessageElementsForMessageWithId:(id)id
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000857C0;
  v5[3] = &unk_1001563D8;
  selfCopy = self;
  idCopy = id;
  v4 = idCopy;
  [(MFNanoServer *)selfCopy performBlock:v5];
}

- (void)syncProviderDidRequestStopDownloadingAllMessageElements:(id)elements
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000858E4;
  v3[3] = &unk_100156400;
  v3[4] = self;
  [(MFNanoServer *)self performBlock:v3];
}

- (void)syncProviderDidRequestFetch:(id)fetch forConversationId:(id)id mailbox:(id)mailbox
{
  fetchCopy = fetch;
  mailboxCopy = mailbox;
  v9 = mailboxCopy;
  if (mailboxCopy)
  {
    v11 = mailboxCopy;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [(MFNanoServer *)self syncProvider:fetchCopy didRequestFetchForMailboxes:v10];
  }
}

- (void)syncProvider:(id)provider didRequestFetchForMailboxes:(id)mailboxes
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085B9C;
  v6[3] = &unk_1001563D8;
  mailboxesCopy = mailboxes;
  selfCopy = self;
  v5 = mailboxesCopy;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)provider didRequestVIPSenderListWithRequestContext:(id)context
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085CFC;
  v5[3] = &unk_1001563D8;
  selfCopy = self;
  contextCopy = context;
  v4 = contextCopy;
  [(MFNanoServer *)selfCopy performBlock:v5];
}

- (void)syncProvider:(id)provider didRequestSendComposedMessage:(id)message
{
  providerCopy = provider;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100085E80;
  v9[3] = &unk_1001573C0;
  v9[4] = self;
  messageCopy = message;
  v11 = providerCopy;
  v7 = providerCopy;
  v8 = messageCopy;
  [(MFNanoServer *)self performBlock:v9];
}

- (void)syncProvider:(id)provider didUpdateWatchAccounts:(id)accounts
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086030;
  v4[3] = &unk_100156400;
  v4[4] = self;
  [(MFNanoServer *)self performBlock:v4, accounts];
}

- (void)syncProvider:(id)provider didFailAuthenticatingAccount:(id)account
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008616C;
  v5[3] = &unk_1001563D8;
  selfCopy = self;
  accountCopy = account;
  v4 = accountCopy;
  [(MFNanoServer *)selfCopy performBlock:v5];
}

- (void)_messagesAdded:(id)added
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086224;
  v4[3] = &unk_1001563D8;
  selfCopy = self;
  addedCopy = added;
  v3 = addedCopy;
  [(MFNanoServer *)selfCopy performBlock:v4];
}

- (void)_messageFlagsChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000864A4;
  v4[3] = &unk_1001563D8;
  selfCopy = self;
  changedCopy = changed;
  v3 = changedCopy;
  [(MFNanoServer *)selfCopy performBlock:v4];
}

- (void)_conversationFlagsChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086924;
  v4[3] = &unk_1001563D8;
  selfCopy = self;
  changedCopy = changed;
  v3 = changedCopy;
  [(MFNanoServer *)selfCopy performBlock:v4];
}

- (void)_messagesCompacted:(id)compacted
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086FD0;
  v4[3] = &unk_1001563D8;
  selfCopy = self;
  compactedCopy = compacted;
  v3 = compactedCopy;
  [(MFNanoServer *)selfCopy performBlock:v4];
}

- (void)_vipChangedNotification:(id)notification
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000872B8;
  v5[3] = &unk_1001563D8;
  notificationCopy = notification;
  selfCopy = self;
  v4 = notificationCopy;
  [(MFNanoServer *)self performBlock:v5];
}

- (void)_updateVIPList:(id)list requestContext:(id)context
{
  listCopy = list;
  contextCopy = context;
  syncProvider = self->_syncProvider;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = listCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = objc_alloc_init(NNMKVIPSender);
          name = [v13 name];
          [v14 setName:name];

          displayName = [v13 displayName];
          [v14 setDisplayName:displayName];

          emailAddresses = [v13 emailAddresses];
          [v14 setEmailAddresses:emailAddresses];

          [v8 addObject:v14];
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(NNMKSyncProvider *)self->_syncProvider updateVIPSenderList:v8 requestContext:contextCopy];
  }
}

- (void)_handleSingleAutoFetchDone:(id)done
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008766C;
  v5[3] = &unk_1001563D8;
  doneCopy = done;
  selfCopy = self;
  v4 = doneCopy;
  [(MFNanoServer *)self performBlock:v5];
}

- (void)messageContentLoader:(id)loader receivedMailContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected
{
  loaderCopy = loader;
  contentCopy = content;
  messageCopy = message;
  v13 = MFLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    messageId = [loaderCopy messageId];
    messageId2 = [messageCopy messageId];
    serverId = [messageCopy serverId];
    accountId = [messageCopy accountId];
    mailboxId = [messageCopy mailboxId];
    conversationId = [messageCopy conversationId];
    *buf = 138544642;
    v46 = messageId;
    v47 = 2114;
    v48 = messageId2;
    v49 = 2114;
    v50 = serverId;
    v51 = 2114;
    *v52 = accountId;
    *&v52[8] = 2114;
    v53 = mailboxId;
    *v54 = 2114;
    *&v54[2] = conversationId;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received mail content. Message ID: '%{public}@', server ID: '%{public}@', account ID: : '%{public}@', mailbox: '%{public}@', conversation: '%{public}@'", buf, 0x3Eu);
  }

  v14 = MFLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    messageId3 = [loaderCopy messageId];
    messageId4 = [contentCopy messageId];
    externalReferenceId = [contentCopy externalReferenceId];
    mainAlternativeValid = [contentCopy mainAlternativeValid];
    textData = [contentCopy textData];
    v23 = [textData length];
    [contentCopy htmlContentData];
    v31 = v23;
    v33 = v32 = mainAlternativeValid;
    v30 = [v33 length];
    hasTextData = [contentCopy hasTextData];
    originalContentSize = [contentCopy originalContentSize];
    attachments = [contentCopy attachments];
    v26 = [attachments count];
    partiallyLoaded = [contentCopy partiallyLoaded];
    isHTML = [contentCopy isHTML];
    *buf = 138545922;
    v46 = messageId3;
    v47 = 2114;
    v48 = messageId4;
    v49 = 2114;
    v50 = externalReferenceId;
    v51 = 1024;
    *v52 = v32;
    *&v52[4] = 1024;
    *&v52[6] = v31;
    LOWORD(v53) = 1024;
    *(&v53 + 2) = v30;
    HIWORD(v53) = 1024;
    *v54 = hasTextData;
    *&v54[4] = 1024;
    *&v54[6] = originalContentSize;
    v55 = 1024;
    v56 = v26;
    v57 = 1024;
    v58 = partiallyLoaded;
    v59 = 1024;
    v60 = isHTML;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received mail content. Content: message ID: '%{public}@, ext.ref. ID: '%{public}@, main alt. valid: '%{BOOL}hhu, text: %{iec-bytes}u, html: %{iec-bytes}u, hasText: %{BOOL}hhu, original size: %{iec-bytes}u, attachments: %u, partial: %{BOOL}hhu, is HTML: %{BOOL}hhu", buf, 0x50u);
  }

  [loaderCopy messageId];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100087DF8;
  v40[3] = &unk_100159770;
  v40[4] = self;
  v15 = loaderCopy;
  v41 = v15;
  v16 = contentCopy;
  v42 = v16;
  v17 = messageCopy;
  v43 = v17;
  protectedCopy = protected;
  [(MFNanoServer *)self performBlock:v40];
}

- (void)messageContentLoader:(id)loader receivedImageAttachment:(id)attachment contentId:(id)id loadedProtected:(BOOL)protected
{
  protectedCopy = protected;
  loaderCopy = loader;
  attachmentCopy = attachment;
  idCopy = id;
  v13 = MFLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    messageId = [loaderCopy messageId];
    [attachmentCopy size];
    v19 = v18;
    [attachmentCopy size];
    *buf = 138544386;
    v27 = messageId;
    v28 = 2114;
    v29 = idCopy;
    v30 = 1024;
    v31 = v19;
    v32 = 1024;
    v33 = v20;
    v34 = 1024;
    v35 = protectedCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received image attachment. Content ID: '%{public}@', %u x %u, loaded protected %{BOOL}hhu", buf, 0x28u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008812C;
  v21[3] = &unk_100159770;
  v21[4] = self;
  v14 = loaderCopy;
  v22 = v14;
  v15 = attachmentCopy;
  v23 = v15;
  v16 = idCopy;
  v24 = v16;
  v25 = protectedCopy;
  [(MFNanoServer *)self performBlock:v21];
}

- (void)messageContentLoader:(id)loader receivedAttachmentData:(id)data contentId:(id)id loadedProtected:(BOOL)protected
{
  protectedCopy = protected;
  loaderCopy = loader;
  dataCopy = data;
  idCopy = id;
  v13 = MFLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    messageId = [loaderCopy messageId];
    *buf = 138544130;
    v24 = messageId;
    v25 = 2114;
    v26 = idCopy;
    v27 = 1024;
    v28 = [dataCopy length];
    v29 = 1024;
    v30 = protectedCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received attachment. Content ID: '%{public}@', %{iec-bytes}u bytes, loaded protected %{BOOL}hhu", buf, 0x22u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008843C;
  v18[3] = &unk_100159770;
  v18[4] = self;
  v14 = loaderCopy;
  v19 = v14;
  v15 = dataCopy;
  v20 = v15;
  v16 = idCopy;
  v21 = v16;
  v22 = protectedCopy;
  [(MFNanoServer *)self performBlock:v18];
}

- (void)messageContentLoaderDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    messageId = [loadingCopy messageId];
    sub_1000D4D14(messageId, buf, v5);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008866C;
  v8[3] = &unk_1001563D8;
  v8[4] = self;
  v7 = loadingCopy;
  v9 = v7;
  [(MFNanoServer *)self performBlock:v8];
}

- (void)messageContentLoaderDidFailLoadingContent:(id)content
{
  contentCopy = content;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    messageId = [contentCopy messageId];
    sub_1000D4D6C(messageId, buf, v5);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100088860;
  v8[3] = &unk_1001563D8;
  v8[4] = self;
  v7 = contentCopy;
  v9 = v7;
  [(MFNanoServer *)self performBlock:v8];
}

- (void)_cancelLoadingContentForLibraryMessageId:(id)id
{
  idCopy = id;
  v4 = [(NSMutableDictionary *)self->_messageContentLoadersKeyedByMessageId objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 cancel];
    [(NSMutableDictionary *)self->_messageContentLoadersKeyedByMessageId removeObjectForKey:idCopy];
  }
}

- (void)_loadFullMesssagesForMessageIds:(id)ids messagesAlreadyLoadedByMessageId:(id)id libraryMessagesRetrievalBlock:(id)block callback:(id)callback
{
  idCopy = id;
  blockCopy = block;
  callbackCopy = callback;
  fullMessageLoader = self->_fullMessageLoader;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100088D68;
  v17[3] = &unk_1001597C0;
  v18 = idCopy;
  selfCopy = self;
  v20 = blockCopy;
  v21 = callbackCopy;
  v14 = callbackCopy;
  v15 = blockCopy;
  v16 = idCopy;
  [(MFNanoServerFullMessageLoader2 *)fullMessageLoader loadFullMessagesForMessageIds:ids completion:v17];
}

- (id)_messageIdsForNanoMessages:(id)messages
{
  v3 = [messages ef_map:&stru_100159800];

  return v3;
}

- (id)_libraryMessagesReceivedBefore:(id)before count:(unint64_t)count inConversationWithId:(id)id protectedDataAvailable:(BOOL *)available limitDateReceived:(id)received syncedMailbox:(id)mailbox
{
  beforeCopy = before;
  idCopy = id;
  receivedCopy = received;
  mailboxCopy = mailbox;
  v18 = mailboxCopy;
  if (mailboxCopy)
  {
    v22 = mailboxCopy;
    v19 = [NSArray arrayWithObjects:&v22 count:1];
    v20 = [(MFNanoServer *)self _libraryMessagesReceivedBefore:beforeCopy count:count inConversationWithId:idCopy protectedDataAvailable:available limitDateReceived:receivedCopy syncedMailboxes:v19];
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)_libraryMessagesReceivedBefore:(id)before count:(unint64_t)count inConversationWithId:(id)id protectedDataAvailable:(BOOL *)available limitDateReceived:(id)received syncedMailboxes:(id)mailboxes
{
  beforeCopy = before;
  idCopy = id;
  receivedCopy = received;
  mailboxesCopy = mailboxes;
  v18 = objc_alloc_init(MFNanoServerFetchParam);
  [(MFNanoServerFetchParam *)v18 setBeforeDateReceived:beforeCopy];
  [(MFNanoServerFetchParam *)v18 setConversationId:idCopy];
  [(MFNanoServerFetchParam *)v18 setDateReceivedLimit:receivedCopy];
  [(MFNanoServerFetchParam *)v18 setCount:count];
  v19 = [(MFNanoServerMessageFetchService *)self->_messageFetchService messagesForMailboxes:mailboxesCopy param:v18];
  if ([v19 count])
  {
    v20 = [v19 count];
    if (count != 0xFFFFFFFF && v20 < count)
    {
      [(MFNanoServer *)self _fetchForMailboxes:mailboxesCopy growFetchWindow:1];
    }
  }

  if (available)
  {
    *available = [(MFNanoServerFetchParam *)v18 protectedDataAvailable];
  }

  return v19;
}

- (id)_filteredMessagesArrayFromLibraryMessages:(id)messages syncedMailbox:(id)mailbox
{
  messagesCopy = messages;
  mailboxCopy = mailbox;
  v8 = mailboxCopy;
  if (mailboxCopy)
  {
    v12 = mailboxCopy;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [(MFNanoServer *)self _filteredMessagesArrayFromLibraryMessages:messagesCopy syncedMailboxes:v9];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)_filteredMessagesArrayFromLibraryMessages:(id)messages syncedMailboxes:(id)mailboxes
{
  messagesCopy = messages;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D4DD8(buf, [messagesCopy count], v6);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000897D0;
  v9[3] = &unk_100159828;
  v9[4] = self;
  v7 = [messagesCopy ef_compactMap:v9];

  return v7;
}

- (void)_fetchForMailboxes:(id)mailboxes growFetchWindow:(BOOL)window
{
  windowCopy = window;
  mailboxesCopy = mailboxes;
  v5 = [mailboxesCopy ef_map:&stru_100159868];
  v6 = [v5 ef_filter:&stru_100159888];

  if ([mailboxesCopy count])
  {
    v7 = +[AutoFetchController sharedController];
    v8 = v7;
    if (windowCopy)
    {
      v9 = 131200;
    }

    else
    {
      v9 = 0x20000;
    }

    [v7 fetchNow:EMFetchTypeForcedAll | v9 withMailboxes:v6];
  }
}

@end