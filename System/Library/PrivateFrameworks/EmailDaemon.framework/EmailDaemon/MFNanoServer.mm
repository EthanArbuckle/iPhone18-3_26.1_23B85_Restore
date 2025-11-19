@interface MFNanoServer
- (MFNanoServer)init;
- (id)_filteredMessagesArrayFromLibraryMessages:(id)a3 syncedMailbox:(id)a4;
- (id)_filteredMessagesArrayFromLibraryMessages:(id)a3 syncedMailboxes:(id)a4;
- (id)_libraryMessagesReceivedBefore:(id)a3 count:(unint64_t)a4 inConversationWithId:(id)a5 protectedDataAvailable:(BOOL *)a6 limitDateReceived:(id)a7 syncedMailbox:(id)a8;
- (id)_libraryMessagesReceivedBefore:(id)a3 count:(unint64_t)a4 inConversationWithId:(id)a5 protectedDataAvailable:(BOOL *)a6 limitDateReceived:(id)a7 syncedMailboxes:(id)a8;
- (id)_messageIdsForNanoMessages:(id)a3;
- (id)nanoBulletinFlagsForMessageFromAccount:(id)a3 mailboxURLString:(id)a4 status:(unint64_t)a5 dateReceived:(id)a6;
- (void)_addObservers;
- (void)_cancelLoadingContentForLibraryMessageId:(id)a3;
- (void)_conversationFlagsChanged:(id)a3;
- (void)_fetchForMailboxes:(id)a3 growFetchWindow:(BOOL)a4;
- (void)_handleSingleAutoFetchDone:(id)a3;
- (void)_loadFullMesssagesForMessageIds:(id)a3 messagesAlreadyLoadedByMessageId:(id)a4 libraryMessagesRetrievalBlock:(id)a5 callback:(id)a6;
- (void)_messageFlagsChanged:(id)a3;
- (void)_messagesAdded:(id)a3;
- (void)_messagesCompacted:(id)a3;
- (void)_updateVIPList:(id)a3 requestContext:(id)a4;
- (void)_vipChangedNotification:(id)a3;
- (void)messageContentLoader:(id)a3 receivedAttachmentData:(id)a4 contentId:(id)a5 loadedProtected:(BOOL)a6;
- (void)messageContentLoader:(id)a3 receivedImageAttachment:(id)a4 contentId:(id)a5 loadedProtected:(BOOL)a6;
- (void)messageContentLoader:(id)a3 receivedMailContent:(id)a4 forMessage:(id)a5 loadedProtected:(BOOL)a6;
- (void)messageContentLoaderDidFailLoadingContent:(id)a3;
- (void)messageContentLoaderDidFinishLoading:(id)a3;
- (void)performBlock:(id)a3;
- (void)syncProvider:(id)a3 didFailAuthenticatingAccount:(id)a4;
- (void)syncProvider:(id)a3 didMoveMessageIds:(id)a4 toMailbox:(id)a5;
- (void)syncProvider:(id)a3 didRequestContentForMessageWithId:(id)a4 highPriority:(BOOL)a5;
- (void)syncProvider:(id)a3 didRequestFetchForMailboxes:(id)a4;
- (void)syncProvider:(id)a3 didRequestFirstMessages:(unint64_t)a4 mailboxes:(id)a5;
- (void)syncProvider:(id)a3 didRequestMessagesToSendAsFetchResponseForMessageIds:(id)a4;
- (void)syncProvider:(id)a3 didRequestMessagesWithContext:(id)a4;
- (void)syncProvider:(id)a3 didRequestResendAccountWithId:(id)a4;
- (void)syncProvider:(id)a3 didRequestResendMessagesWithIds:(id)a4;
- (void)syncProvider:(id)a3 didRequestSendComposedMessage:(id)a4;
- (void)syncProvider:(id)a3 didRequestStopDownloadingMessageElementsForMessageWithId:(id)a4;
- (void)syncProvider:(id)a3 didRequestVIPSenderListWithRequestContext:(id)a4;
- (void)syncProvider:(id)a3 didUpdateMailboxSelection:(id)a4;
- (void)syncProvider:(id)a3 didUpdateMessagesStatus:(id)a4;
- (void)syncProvider:(id)a3 didUpdateWatchAccounts:(id)a4;
- (void)syncProviderDidRequestAccounts:(id)a3;
- (void)syncProviderDidRequestFetch:(id)a3 forConversationId:(id)a4 mailbox:(id)a5;
- (void)syncProviderDidRequestStopDownloadingAllMessageElements:(id)a3;
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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (id)nanoBulletinFlagsForMessageFromAccount:(id)a3 mailboxURLString:(id)a4 status:(unint64_t)a5 dateReceived:(id)a6
{
  v10 = a6;
  v11 = [a3 mailboxUidForURL:a4];
  v12 = [MFLibraryMessage nano_nnmkMailItemStatusFromMSResultsStatus:a5];
  syncProvider = self->_syncProvider;
  v14 = [v11 nano_mailbox];
  v15 = [(NNMKSyncProvider *)syncProvider containsSyncedMailbox:v14];

  v16 = self->_syncProvider;
  v17 = [v11 nano_mailboxId];
  v18 = [(NNMKSyncProvider *)v16 bulletinFlagsForMessageStatus:v12 dateReceived:v10 messageWillBeAddedToSyncProvider:v15 mailboxId:v17];

  return v18;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  [EFProcessTransaction transactionWithDescription:@"com.apple.email.NanoServer"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008416C;
  v9 = v8[3] = &unk_100158128;
  v10 = v4;
  v5 = v9;
  v6 = v4;
  v7 = objc_retainBlock(v8);
  dispatch_async(self->_nanoServerQueue, v7);
}

- (void)syncProviderDidRequestAccounts:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100084220;
  v3[3] = &unk_100156400;
  v3[4] = self;
  [(MFNanoServer *)self performBlock:v3];
}

- (void)syncProvider:(id)a3 didUpdateMailboxSelection:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100084350;
  v5[3] = &unk_1001563D8;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(MFNanoServer *)v6 performBlock:v5];
}

- (void)syncProvider:(id)a3 didUpdateMessagesStatus:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100084408;
  v5[3] = &unk_1001563D8;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(MFNanoServer *)v6 performBlock:v5];
}

- (void)syncProvider:(id)a3 didMoveMessageIds:(id)a4 toMailbox:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000844F8;
  v8[3] = &unk_1001573C0;
  v9 = self;
  v10 = a4;
  v11 = a5;
  v6 = v11;
  v7 = v10;
  [(MFNanoServer *)v9 performBlock:v8];
}

- (void)syncProvider:(id)a3 didRequestFirstMessages:(unint64_t)a4 mailboxes:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000845C0;
  v6[3] = &unk_100157098;
  v8 = self;
  v9 = a4;
  v7 = a5;
  v5 = v7;
  [(MFNanoServer *)v8 performBlock:v6];
}

- (void)syncProvider:(id)a3 didRequestMessagesWithContext:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000849C8;
  v6[3] = &unk_1001563D8;
  v7 = a4;
  v8 = self;
  v5 = v7;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)a3 didRequestResendMessagesWithIds:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100084EAC;
  v6[3] = &unk_1001563D8;
  v7 = a4;
  v8 = self;
  v5 = v7;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)a3 didRequestMessagesToSendAsFetchResponseForMessageIds:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085298;
  v6[3] = &unk_1001563D8;
  v7 = a4;
  v8 = self;
  v5 = v7;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)a3 didRequestResendAccountWithId:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000855E0;
  v5[3] = &unk_1001563D8;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(MFNanoServer *)v6 performBlock:v5];
}

- (void)syncProvider:(id)a3 didRequestContentForMessageWithId:(id)a4 highPriority:(BOOL)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100085704;
  v7[3] = &unk_1001596C0;
  v8 = self;
  v9 = a4;
  v10 = a5;
  v6 = v9;
  [(MFNanoServer *)v8 performBlock:v7];
}

- (void)syncProvider:(id)a3 didRequestStopDownloadingMessageElementsForMessageWithId:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000857C0;
  v5[3] = &unk_1001563D8;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(MFNanoServer *)v6 performBlock:v5];
}

- (void)syncProviderDidRequestStopDownloadingAllMessageElements:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000858E4;
  v3[3] = &unk_100156400;
  v3[4] = self;
  [(MFNanoServer *)self performBlock:v3];
}

- (void)syncProviderDidRequestFetch:(id)a3 forConversationId:(id)a4 mailbox:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v11 = v8;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [(MFNanoServer *)self syncProvider:v7 didRequestFetchForMailboxes:v10];
  }
}

- (void)syncProvider:(id)a3 didRequestFetchForMailboxes:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085B9C;
  v6[3] = &unk_1001563D8;
  v7 = a4;
  v8 = self;
  v5 = v7;
  [(MFNanoServer *)self performBlock:v6];
}

- (void)syncProvider:(id)a3 didRequestVIPSenderListWithRequestContext:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085CFC;
  v5[3] = &unk_1001563D8;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(MFNanoServer *)v6 performBlock:v5];
}

- (void)syncProvider:(id)a3 didRequestSendComposedMessage:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100085E80;
  v9[3] = &unk_1001573C0;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(MFNanoServer *)self performBlock:v9];
}

- (void)syncProvider:(id)a3 didUpdateWatchAccounts:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086030;
  v4[3] = &unk_100156400;
  v4[4] = self;
  [(MFNanoServer *)self performBlock:v4, a4];
}

- (void)syncProvider:(id)a3 didFailAuthenticatingAccount:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008616C;
  v5[3] = &unk_1001563D8;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(MFNanoServer *)v6 performBlock:v5];
}

- (void)_messagesAdded:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086224;
  v4[3] = &unk_1001563D8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MFNanoServer *)v5 performBlock:v4];
}

- (void)_messageFlagsChanged:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000864A4;
  v4[3] = &unk_1001563D8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MFNanoServer *)v5 performBlock:v4];
}

- (void)_conversationFlagsChanged:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086924;
  v4[3] = &unk_1001563D8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MFNanoServer *)v5 performBlock:v4];
}

- (void)_messagesCompacted:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086FD0;
  v4[3] = &unk_1001563D8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MFNanoServer *)v5 performBlock:v4];
}

- (void)_vipChangedNotification:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000872B8;
  v5[3] = &unk_1001563D8;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(MFNanoServer *)self performBlock:v5];
}

- (void)_updateVIPList:(id)a3 requestContext:(id)a4
{
  v18 = a3;
  v6 = a4;
  syncProvider = self->_syncProvider;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v18;
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
          v15 = [v13 name];
          [v14 setName:v15];

          v16 = [v13 displayName];
          [v14 setDisplayName:v16];

          v17 = [v13 emailAddresses];
          [v14 setEmailAddresses:v17];

          [v8 addObject:v14];
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(NNMKSyncProvider *)self->_syncProvider updateVIPSenderList:v8 requestContext:v6];
  }
}

- (void)_handleSingleAutoFetchDone:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008766C;
  v5[3] = &unk_1001563D8;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(MFNanoServer *)self performBlock:v5];
}

- (void)messageContentLoader:(id)a3 receivedMailContent:(id)a4 forMessage:(id)a5 loadedProtected:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MFLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v38 = [v10 messageId];
    v36 = [v12 messageId];
    v18 = [v12 serverId];
    v19 = [v12 accountId];
    v20 = [v12 mailboxId];
    v21 = [v12 conversationId];
    *buf = 138544642;
    v46 = v38;
    v47 = 2114;
    v48 = v36;
    v49 = 2114;
    v50 = v18;
    v51 = 2114;
    *v52 = v19;
    *&v52[8] = 2114;
    v53 = v20;
    *v54 = 2114;
    *&v54[2] = v21;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received mail content. Message ID: '%{public}@', server ID: '%{public}@', account ID: : '%{public}@', mailbox: '%{public}@', conversation: '%{public}@'", buf, 0x3Eu);
  }

  v14 = MFLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v39 = [v10 messageId];
    v35 = [v11 messageId];
    v37 = [v11 externalReferenceId];
    v22 = [v11 mainAlternativeValid];
    v34 = [v11 textData];
    v23 = [v34 length];
    [v11 htmlContentData];
    v31 = v23;
    v33 = v32 = v22;
    v30 = [v33 length];
    v29 = [v11 hasTextData];
    v24 = [v11 originalContentSize];
    v25 = [v11 attachments];
    v26 = [v25 count];
    v27 = [v11 partiallyLoaded];
    v28 = [v11 isHTML];
    *buf = 138545922;
    v46 = v39;
    v47 = 2114;
    v48 = v35;
    v49 = 2114;
    v50 = v37;
    v51 = 1024;
    *v52 = v32;
    *&v52[4] = 1024;
    *&v52[6] = v31;
    LOWORD(v53) = 1024;
    *(&v53 + 2) = v30;
    HIWORD(v53) = 1024;
    *v54 = v29;
    *&v54[4] = 1024;
    *&v54[6] = v24;
    v55 = 1024;
    v56 = v26;
    v57 = 1024;
    v58 = v27;
    v59 = 1024;
    v60 = v28;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received mail content. Content: message ID: '%{public}@, ext.ref. ID: '%{public}@, main alt. valid: '%{BOOL}hhu, text: %{iec-bytes}u, html: %{iec-bytes}u, hasText: %{BOOL}hhu, original size: %{iec-bytes}u, attachments: %u, partial: %{BOOL}hhu, is HTML: %{BOOL}hhu", buf, 0x50u);
  }

  [v10 messageId];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100087DF8;
  v40[3] = &unk_100159770;
  v40[4] = self;
  v15 = v10;
  v41 = v15;
  v16 = v11;
  v42 = v16;
  v17 = v12;
  v43 = v17;
  v44 = a6;
  [(MFNanoServer *)self performBlock:v40];
}

- (void)messageContentLoader:(id)a3 receivedImageAttachment:(id)a4 contentId:(id)a5 loadedProtected:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MFLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v10 messageId];
    [v11 size];
    v19 = v18;
    [v11 size];
    *buf = 138544386;
    v27 = v17;
    v28 = 2114;
    v29 = v12;
    v30 = 1024;
    v31 = v19;
    v32 = 1024;
    v33 = v20;
    v34 = 1024;
    v35 = v6;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received image attachment. Content ID: '%{public}@', %u x %u, loaded protected %{BOOL}hhu", buf, 0x28u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008812C;
  v21[3] = &unk_100159770;
  v21[4] = self;
  v14 = v10;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v25 = v6;
  [(MFNanoServer *)self performBlock:v21];
}

- (void)messageContentLoader:(id)a3 receivedAttachmentData:(id)a4 contentId:(id)a5 loadedProtected:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MFLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v10 messageId];
    *buf = 138544130;
    v24 = v17;
    v25 = 2114;
    v26 = v12;
    v27 = 1024;
    v28 = [v11 length];
    v29 = 1024;
    v30 = v6;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Received attachment. Content ID: '%{public}@', %{iec-bytes}u bytes, loaded protected %{BOOL}hhu", buf, 0x22u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008843C;
  v18[3] = &unk_100159770;
  v18[4] = self;
  v14 = v10;
  v19 = v14;
  v15 = v11;
  v20 = v15;
  v16 = v12;
  v21 = v16;
  v22 = v6;
  [(MFNanoServer *)self performBlock:v18];
}

- (void)messageContentLoaderDidFinishLoading:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 messageId];
    sub_1000D4D14(v6, buf, v5);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008866C;
  v8[3] = &unk_1001563D8;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [(MFNanoServer *)self performBlock:v8];
}

- (void)messageContentLoaderDidFailLoadingContent:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 messageId];
    sub_1000D4D6C(v6, buf, v5);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100088860;
  v8[3] = &unk_1001563D8;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [(MFNanoServer *)self performBlock:v8];
}

- (void)_cancelLoadingContentForLibraryMessageId:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_messageContentLoadersKeyedByMessageId objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 cancel];
    [(NSMutableDictionary *)self->_messageContentLoadersKeyedByMessageId removeObjectForKey:v6];
  }
}

- (void)_loadFullMesssagesForMessageIds:(id)a3 messagesAlreadyLoadedByMessageId:(id)a4 libraryMessagesRetrievalBlock:(id)a5 callback:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  fullMessageLoader = self->_fullMessageLoader;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100088D68;
  v17[3] = &unk_1001597C0;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [(MFNanoServerFullMessageLoader2 *)fullMessageLoader loadFullMessagesForMessageIds:a3 completion:v17];
}

- (id)_messageIdsForNanoMessages:(id)a3
{
  v3 = [a3 ef_map:&stru_100159800];

  return v3;
}

- (id)_libraryMessagesReceivedBefore:(id)a3 count:(unint64_t)a4 inConversationWithId:(id)a5 protectedDataAvailable:(BOOL *)a6 limitDateReceived:(id)a7 syncedMailbox:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (v17)
  {
    v22 = v17;
    v19 = [NSArray arrayWithObjects:&v22 count:1];
    v20 = [(MFNanoServer *)self _libraryMessagesReceivedBefore:v14 count:a4 inConversationWithId:v15 protectedDataAvailable:a6 limitDateReceived:v16 syncedMailboxes:v19];
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)_libraryMessagesReceivedBefore:(id)a3 count:(unint64_t)a4 inConversationWithId:(id)a5 protectedDataAvailable:(BOOL *)a6 limitDateReceived:(id)a7 syncedMailboxes:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = objc_alloc_init(MFNanoServerFetchParam);
  [(MFNanoServerFetchParam *)v18 setBeforeDateReceived:v14];
  [(MFNanoServerFetchParam *)v18 setConversationId:v15];
  [(MFNanoServerFetchParam *)v18 setDateReceivedLimit:v16];
  [(MFNanoServerFetchParam *)v18 setCount:a4];
  v19 = [(MFNanoServerMessageFetchService *)self->_messageFetchService messagesForMailboxes:v17 param:v18];
  if ([v19 count])
  {
    v20 = [v19 count];
    if (a4 != 0xFFFFFFFF && v20 < a4)
    {
      [(MFNanoServer *)self _fetchForMailboxes:v17 growFetchWindow:1];
    }
  }

  if (a6)
  {
    *a6 = [(MFNanoServerFetchParam *)v18 protectedDataAvailable];
  }

  return v19;
}

- (id)_filteredMessagesArrayFromLibraryMessages:(id)a3 syncedMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v12 = v7;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [(MFNanoServer *)self _filteredMessagesArrayFromLibraryMessages:v6 syncedMailboxes:v9];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)_filteredMessagesArrayFromLibraryMessages:(id)a3 syncedMailboxes:(id)a4
{
  v5 = a3;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D4DD8(buf, [v5 count], v6);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000897D0;
  v9[3] = &unk_100159828;
  v9[4] = self;
  v7 = [v5 ef_compactMap:v9];

  return v7;
}

- (void)_fetchForMailboxes:(id)a3 growFetchWindow:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v5 = [v10 ef_map:&stru_100159868];
  v6 = [v5 ef_filter:&stru_100159888];

  if ([v10 count])
  {
    v7 = +[AutoFetchController sharedController];
    v8 = v7;
    if (v4)
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