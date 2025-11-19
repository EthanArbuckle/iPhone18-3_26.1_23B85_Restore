@interface MFMessageLoadingContext
+ (id)log;
+ (unint64_t)_nextOffsetForOffset:(unint64_t)a3 totalLength:(unint64_t)a4 requestedAmount:(unint64_t)a5;
- (MFMessageLoadingContext)initWithMessage:(id)a3 attachmentManager:(id)a4;
- (id)_reallyLoad:(int64_t)a3 shouldDownload:(BOOL)a4;
- (id)addLoadObserver:(id)a3;
- (id)onScheduler:(id)a3 addLoadObserver:(id)a4;
- (void)_setupMeetingData;
- (void)_setupObservableStreams;
- (void)assignAttachmentManagerToContent:(id)a3;
- (void)dealloc;
- (void)load:(int64_t)a3;
- (void)load:(int64_t)a3 scheduler:(id)a4 shouldDownload:(BOOL)a5;
- (void)processMeetingInvitations:(id)a3;
@end

@implementation MFMessageLoadingContext

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MFMessageLoadingContext_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_23 != -1)
  {
    dispatch_once(&log_onceToken_23, block);
  }

  v2 = log_log_23;

  return v2;
}

void __30__MFMessageLoadingContext_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_23;
  log_log_23 = v1;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancelable cancel];
  v3.receiver = self;
  v3.super_class = MFMessageLoadingContext;
  [(MFMessageLoadingContext *)&v3 dealloc];
}

- (MFMessageLoadingContext)initWithMessage:(id)a3 attachmentManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MFMessageLoadingContext;
  v9 = [(MFMessageLoadingContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    objc_storeStrong(&v10->_attachmentManager, a4);
    v11 = [v7 messageStore];
    v12 = [v11 mailbox];

    v13 = [v12 mailboxType];
    v10->_outgoingMessage = [v12 isOutgoingMailboxUid];
    v10->_draftMessage = v13 == 5;
    v10->_editableMessage = (v13 - 5) < 2;
    [(MFMessageLoadingContext *)v10 _setupMeetingData];
    [(MFMessageLoadingContext *)v10 _setupObservableStreams];
  }

  return v10;
}

- (void)_setupMeetingData
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "unable to get an event with external id %@ after it was successfully reconstituted.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_setupObservableStreams
{
  if (self->_inputObservable)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MFMessageLoadingContext.m" lineNumber:222 description:@"_inputObservable must not already be configured"];
  }

  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E699B830] observableObserver];
  inputObservable = self->_inputObservable;
  self->_inputObservable = v3;

  v5 = [(EFObserver *)self->_inputObservable replay:1];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __50__MFMessageLoadingContext__setupObservableStreams__block_invoke;
  v17 = &unk_1E7AA6FF0;
  objc_copyWeak(&v18, &location);
  v6 = [v5 filter:&v14];
  contentObservable = self->_contentObservable;
  self->_contentObservable = v6;

  v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  cancelable = self->_cancelable;
  self->_cancelable = v8;

  v10 = self->_cancelable;
  v11 = [v5 connect];
  [(EFManualCancelationToken *)v10 addCancelable:v11];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

uint64_t __50__MFMessageLoadingContext__setupObservableStreams__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 content];
  [WeakRetained assignAttachmentManagerToContent:v5];

  v6 = [v3 content];
  [WeakRetained processMeetingInvitations:v6];

  return 1;
}

- (id)onScheduler:(id)a3 addLoadObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__MFMessageLoadingContext_onScheduler_addLoadObserver___block_invoke;
  aBlock[3] = &unk_1E7AA68F0;
  v8 = v7;
  v21 = v8;
  v9 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MFMessageLoadingContext_onScheduler_addLoadObserver___block_invoke_2;
  v17[3] = &unk_1E7AA7018;
  v10 = v9;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v12 = _Block_copy(v17);
  v13 = [MEMORY[0x1E699B838] observerWithResultBlock:v12 completionBlock:0 failureBlock:v10];
  v14 = [(EFObservable *)self->_contentObservable observeOn:v6];
  v15 = [v14 subscribe:v13];

  [(EFManualCancelationToken *)self->_cancelable addCancelable:v15];

  return v15;
}

void __55__MFMessageLoadingContext_onScheduler_addLoadObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 content];

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [v6 error];
    (*(v4 + 16))(v4, v5);
  }
}

- (id)addLoadObserver:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699B978] immediateScheduler];
  v6 = [(MFMessageLoadingContext *)self onScheduler:v5 addLoadObserver:v4];

  return v6;
}

- (void)load:(int64_t)a3
{
  v5 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
  [(MFMessageLoadingContext *)self load:a3 scheduler:?];
}

- (void)load:(int64_t)a3 scheduler:(id)a4 shouldDownload:(BOOL)a5
{
  v8 = a4;
  [(MFMessageLoadingContext *)self setHasLoadedSomeContent:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MFMessageLoadingContext_load_scheduler_shouldDownload___block_invoke;
  v9[3] = &unk_1E7AA7040;
  v9[4] = self;
  v9[5] = a3;
  v10 = a5;
  [v8 performVoucherPreservingBlock:v9];
}

+ (unint64_t)_nextOffsetForOffset:(unint64_t)a3 totalLength:(unint64_t)a4 requestedAmount:(unint64_t)a5
{
  if (!(a5 | a3))
  {
    return 1;
  }

  if (a5)
  {
    v5 = a5 + a3;
    v6 = a5 + a3 >= a4;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = a3 >= 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return a4;
  }

  else
  {
    return v5;
  }
}

- (id)_reallyLoad:(int64_t)a3 shouldDownload:(BOOL)a4
{
  v112 = a4;
  v125 = *MEMORY[0x1E69E9840];
  if (([(EFManualCancelationToken *)self->_cancelable isCanceled]& 1) != 0)
  {
    v111 = 0;
    goto LABEL_62;
  }

  v111 = objc_alloc_init(MFMessageLoadingContextEvent);
  [(MFMessageLoadingContextEvent *)v111 setContext:self];
  v7 = [(MFMessageLoadingContext *)self message];
  v8 = [(MFMessageLoadingContext *)self messageBody];
  v9 = +[MFActivityMonitor pushNewMonitor];
  cancelable = self->_cancelable;
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __54__MFMessageLoadingContext__reallyLoad_shouldDownload___block_invoke;
  v118[3] = &unk_1E7AA25C0;
  v106 = v9;
  v119 = v106;
  [(EFManualCancelationToken *)cancelable addCancelationBlock:v118];
  v11 = +[MFActivityMonitor currentMonitor];
  v110 = self;
  [v11 recordTransportType:1];

  if (v8 && v112)
  {
    v12 = v8;
    v13 = self;
  }

  else
  {
    if (v112)
    {
      v14 = +[MFMessageLoadingContext log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Download supported, getting body", buf, 2u);
      }

      v15 = [v7 messageBody];
    }

    else
    {
      v16 = +[MFMessageLoadingContext log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Download not supported, getting body if available", buf, 2u);
      }

      v15 = [v7 messageBodyIfAvailable];
    }

    v107 = v15;

    v12 = v107;
    v13 = self;
    if (v107)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v96 = [MEMORY[0x1E696AAA8] currentHandler];
        [v96 handleFailureInMethod:a2 object:self file:@"MFMessageLoadingContext.m" lineNumber:355 description:@"body must be a MIME body"];

        v12 = v107;
        v13 = self;
      }
    }

    [(MFMessageLoadingContext *)v13 _setMessageBody:v12];
    if (!v12)
    {
      v62 = +[MFMessageLoadingContext log];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = [v7 messageID];
        [(MFMessageLoadingContext *)v63 _reallyLoad:buf shouldDownload:v62];
      }

      -[MFMessageLoadingContextEvent setTransportType:](v111, "setTransportType:", [v106 transportType]);
      v64 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2050 userInfo:0];
      [(MFMessageLoadingContextEvent *)v111 setError:v64];

      +[MFActivityMonitor destroyMonitor];
      v65 = v111;
      v108 = 0;
      goto LABEL_61;
    }
  }

  v117 = 0;
  v108 = v12;
  v17 = [objc_opt_class() _nextOffsetForOffset:-[MFMessageLoadingContext contentOffset](v13 totalLength:"contentOffset") requestedAmount:{objc_msgSend(v12, "totalTextSize"), 0}];
  v18 = [v12 topLevelPart];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v116 = 0;
  v22 = *MEMORY[0x1E699A730];
  v23 = 1;
  do
  {
    if (!v23)
    {
      v24 = [v19 contentToOffset:v17 resultOffset:&v117 downloadIfNecessary:v112 asHTML:1 isComplete:&v116];

      v25 = v19;
      v21 = v24;
      v20 = v25;
    }

    if (a3 < 1)
    {
      v26 = [v7 defaultAlternativeInPart:v18];
      goto LABEL_26;
    }

    v26 = [v7 bestAlternativeInPart:v18];

    if (v20 && v26 == v20 && _contentLoadedEmptyDocument(v21, v117))
    {

      v117 = 0;
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:v22 code:2050 userInfo:0];
      [(MFMessageLoadingContextEvent *)v111 setError:v27];
      v21 = 0;
      v20 = 0;
      v26 = 0;
      a3 = -1;
      v19 = v27;
LABEL_26:
    }

    v19 = v26;
    v23 = v26 == 0;
  }

  while (!v26 || v26 != v20);
  [(MFMessageLoadingContext *)v110 setLoadedPart:v26];
  [(MFMessageLoadingContext *)v110 setContentOffset:v117];
  v28 = [v26 rfc822DecodedMessageBody];
  v29 = v28;
  v30 = v108;
  if (v28)
  {
    v30 = v28;
  }

  v109 = v30;

  v31 = [v109 attachments];
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __54__MFMessageLoadingContext__reallyLoad_shouldDownload___block_invoke_138;
  v115[3] = &unk_1E7AA7068;
  v115[4] = v110;
  v105 = [v31 ef_map:v115];

  if ([v105 count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = _os_activity_create(&dword_1B0389000, "Load attachment", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      memset(buf, 170, 16);
      os_activity_scope_enter(v32, buf);
      v33 = [(MFMessageLoadingContext *)v110 attachmentManager];
      [v33 insertMessageAttachmentMetadataToPersistence:v105 forMessage:v7];

      v34 = EDAttachmentsLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v123 = 138543362;
        v124 = v105;
        _os_log_impl(&dword_1B0389000, v34, OS_LOG_TYPE_DEFAULT, "Loading attachments %{public}@", &v123, 0xCu);
      }

      os_activity_scope_leave(buf);
    }
  }

  LOBYTE(v123) = 0;
  v114 = 0;
  [v109 numberOfAttachmentsSigned:&v123 encrypted:&v114];
  v35 = [(MFMailMessage *)v110->_message messageFlags];
  if (v123 == 1 && (v35 & 0x800000) == 0 || (v114 & 1) != 0 && (v35 & 8) == 0)
  {
    LOBYTE(v123) = v123 | ((v35 & 0x800000) != 0);
    v114 |= (v35 & 8) != 0;
    v36 = [v7 numberOfAttachments];
    [v7 setNumberOfAttachments:v36 isSigned:v123 isEncrypted:v114];
  }

  if (_contentLoadedEmptyDocument(v21, v117))
  {
    [(MFMessageLoadingContextEvent *)v111 setContent:MEMORY[0x1E695E0F0]];
    [(MFMessageLoadingContext *)v110 setHasLoadedSomeContent:1];
    goto LABEL_43;
  }

  v21 = v21;
  v38 = [v21 firstObject];
  if ([v21 count] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v39 = [v38 error];
    v40 = v39;
    v41 = 1;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v104 = v39;
  if (v41)
  {
    [(MFMessageLoadingContext *)v110 setHasLoadedSomeContent:0];
    -[MFMessageLoadingContextEvent setTransportType:](v111, "setTransportType:", [v106 transportType]);
    [(MFMessageLoadingContextEvent *)v111 setError:v104];
    +[MFActivityMonitor destroyMonitor];
    v42 = v111;

    goto LABEL_60;
  }

  v59 = v109;
  v102 = v59;
  if ([v21 count])
  {
    v60 = 0;
    v61 = 0;
    goto LABEL_76;
  }

  v66 = [v59 topLevelPart];
  v67 = [v66 SMIMEError];

  v68 = [v67 domain];
  if (![@"MFMessageErrorDomain" isEqualToString:v68])
  {

    goto LABEL_74;
  }

  v69 = [v67 code] == 1035;

  if (!v69)
  {
LABEL_74:
    v60 = 0;
    v61 = 0;
    goto LABEL_75;
  }

  v70 = v67;
  v61 = 1;
  v60 = v67;
LABEL_75:

LABEL_76:
  v71 = v60;
  if (v61)
  {
    [(MFMessageLoadingContext *)v110 setHasLoadedSomeContent:0];
    -[MFMessageLoadingContextEvent setTransportType:](v111, "setTransportType:", [v106 transportType]);
    [(MFMessageLoadingContextEvent *)v111 setError:v71];
    +[MFActivityMonitor destroyMonitor];
    v72 = v111;

    goto LABEL_60;
  }

  v73 = [v19 isHTML];
  if (a3 < 1)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  v103 = v71;
  if (v74 != 1 || [(MFMessageLoadingContext *)v110 contentOffset]>> 14 > 2 || (v116 & 1) != 0)
  {
    goto LABEL_113;
  }

  v98 = [v21 count];
  v100 = 0;
  v101 = v21;
  v75 = 0;
  while ((v116 & 1) != 0 || v75 >= v98)
  {
LABEL_103:
    v89 = v75;
    v90 = +[MFMessageLoadingContext _nextOffsetForOffset:totalLength:requestedAmount:](MFMessageLoadingContext, "_nextOffsetForOffset:totalLength:requestedAmount:", -[MFMessageLoadingContext contentOffset](v110, "contentOffset"), [v108 totalTextSize], 0x4000);
    v21 = [v19 contentToOffset:v90 resultOffset:&v117 downloadIfNecessary:v112 asHTML:1 isComplete:&v116];

    [(MFMessageLoadingContext *)v110 setContentOffset:v117];
    if (v17 != v90)
    {
      v17 = v90;
      v101 = v21;
      v75 = v89;
      if (v117 < 0xC000)
      {
        continue;
      }
    }

    goto LABEL_113;
  }

  v97 = sel_encodedFileSize;
  while (2)
  {
    v76 = v75;
    v77 = [v101 objectAtIndex:v97];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_101:

        v75 = v76 + 1;
        if ((v116 & 1) != 0 || v75 >= v98)
        {
          goto LABEL_103;
        }

        continue;
      }

      v88 = [v77 encodedFileSize] + v100;
LABEL_100:
      v100 = v88;
      goto LABEL_101;
    }

    break;
  }

  v99 = [v77 htmlData];
  v78 = v99;
  v79 = [v99 bytes];
  v80 = [v99 length];
  if (!v79)
  {
    v83 = 0;
    goto LABEL_107;
  }

  v81 = v80;
  v82 = memchr(v79, 60, v80);
  if (!v82 || (v83 = v82, v84 = &v79[v81], (v84 - v82) < 6))
  {
LABEL_97:
    v87 = [v99 length];

    v88 = v87 + v100;
    goto LABEL_100;
  }

  while (1)
  {
    v85 = *(v83 + 5);
    if ((v85 == 62 || v85 == 32) && !strncasecmp(v83 + 1, "body", 4uLL))
    {
      break;
    }

    v86 = memchr((v83 + 1), 60, v84 - (v83 + 1));
    if (v86)
    {
      v83 = v86;
      if ((v84 - v86) > 5)
      {
        continue;
      }
    }

    goto LABEL_97;
  }

LABEL_107:

  v91 = v83 - v79 + v100;
  if (v91 < 0x401)
  {
    v21 = v101;
  }

  else
  {
    v92 = [(MFMessageLoadingContext *)v110 contentOffset];
    v93 = [v108 totalTextSize];
    if (v91 <= 0x1F58)
    {
      v94 = 8024;
    }

    else
    {
      v94 = v91;
    }

    v21 = [v19 contentToOffset:+[MFMessageLoadingContext _nextOffsetForOffset:totalLength:requestedAmount:](MFMessageLoadingContext resultOffset:"_nextOffsetForOffset:totalLength:requestedAmount:" downloadIfNecessary:v92 asHTML:v93 isComplete:{v94), &v117, v112, 1, &v116}];

    [(MFMessageLoadingContext *)v110 setContentOffset:v117];
  }

LABEL_113:
  [(MFMessageLoadingContextEvent *)v111 setContent:v21];
  if (v117)
  {
    v95 = [v21 count] != 0;
  }

  else
  {
    v95 = 0;
  }

  [(MFMessageLoadingContext *)v110 setHasLoadedSomeContent:v95];

LABEL_43:
  if (v116)
  {
    v37 = 1;
  }

  else
  {
    v43 = [v20 totalTextSize];
    v44 = [(MFMessageLoadingContext *)v110 contentOffset];
    if (v43 >= v44)
    {
      v45 = v43 - v44;
    }

    else
    {
      v45 = 0;
    }

    [(MFMessageLoadingContextEvent *)v111 setRemainingBytes:v45];
    v46 = +[MFMessageLoadingContext log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [(MFMessageLoadingContext *)v110 message];
      v48 = [v47 ef_publicDescription];
      v49 = [(MFMessageLoadingContextEvent *)v111 remainingBytes];
      *buf = 138543618;
      *&buf[4] = v48;
      *&buf[12] = 2048;
      *&buf[14] = v49;
      _os_log_impl(&dword_1B0389000, v46, OS_LOG_TYPE_DEFAULT, "Body download not complete for message %{public}@. Remaining bytes: %ld", buf, 0x16u);
    }

    v37 = v116;
  }

  [(MFMessageLoadingContextEvent *)v111 setHasLoadedCompleteBody:v37 & 1];
  v50 = [v7 bestAlternativeInPart:v18];
  [(MFMessageLoadingContextEvent *)v111 setHasLoadedBestAlternativePart:v20 == v50];

  [(MFMessageLoadingContextEvent *)v111 setLoadedPart:v20];
  [(MFMessageLoadingContextEvent *)v111 setLoadedBody:v109];
  -[MFMessageLoadingContextEvent setTransportType:](v111, "setTransportType:", [v106 transportType]);
  [(MFMessageLoadingContext *)v110 setHasLoadedCompleteMessage:v116];
  [(MFMessageLoadingContext *)v110 setHasLoadedBestAlternativePart:[(MFMessageLoadingContextEvent *)v111 hasLoadedBestAlternativePart]];
  v51 = +[MFMessageLoadingContext log];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v113 = [(MFMessageLoadingContext *)v110 message];
    v52 = [v113 ef_publicDescription];
    v53 = v116;
    v54 = [(MFMessageLoadingContextEvent *)v111 hasLoadedBestAlternativePart];
    v55 = [(MFMessageLoadingContextEvent *)v111 transportType];
    *buf = 138544130;
    *&buf[4] = v52;
    *&buf[12] = 1024;
    *&buf[14] = v53;
    *&buf[18] = 1024;
    *&buf[20] = v54;
    v121 = 2048;
    v122 = v55;
    _os_log_impl(&dword_1B0389000, v51, OS_LOG_TYPE_DEFAULT, "MFMessageLoadingContextEvent for message:%{public}@ hasLoadedCompleteMessage %{BOOL}d, hasLoadedBestAlternativePart %{BOOL}d, transportType %ld", buf, 0x22u);
  }

  +[MFActivityMonitor destroyMonitor];
  v56 = v111;
LABEL_60:

LABEL_61:
LABEL_62:
  v57 = *MEMORY[0x1E69E9840];

  return v111;
}

id __54__MFMessageLoadingContext__reallyLoad_shouldDownload___block_invoke_138(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 mimePart];
  v5 = [v4 partNumber];

  v6 = EDAttachmentsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Creating MFAttachment for part number %{public}@ textAttachment %@", &v11, 0x16u);
  }

  v7 = [*(a1 + 32) attachmentManager];
  v8 = [v7 attachmentForTextAttachment:v3 error:0];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)assignAttachmentManagerToContent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          [v9 setAttachmentManager:self->_attachmentManager];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v9 = [(MFMessageLoadingContext *)self attachmentManager];
          v10 = [v9 attachmentForTextAttachment:v8 error:0];
        }

LABEL_11:
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)processMeetingInvitations:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [(MFMessageLoadingContext *)self attachmentManager];
          v10 = [v9 attachmentForTextAttachment:v8 error:0];

          if ([v10 isCalendarFile])
          {
            if (self->_eventICSRepresentation)
            {
              [v10 setIcsRepresentation:?];
            }

            else if (self->_eventUniqueID)
            {
              [v10 setEventID:?];
              [v10 setMeetingStorePersistentID:self->_meetingStorePersistentID];
            }

            if (self->_meetingName)
            {
              [v10 setFileName:?];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_reallyLoad:(os_log_t)log shouldDownload:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Failed to get the body for messageID %{public}@", buf, 0xCu);
}

@end