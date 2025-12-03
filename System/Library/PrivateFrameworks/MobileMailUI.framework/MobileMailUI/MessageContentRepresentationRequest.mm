@interface MessageContentRepresentationRequest
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (id)defaultScheduler;
- (BOOL)hasStarted;
- (BOOL)isFinished;
- (EFFuture)contentRepresentationFuture;
- (EMMessage)message;
- (MessageContentRepresentationRequest)initWithMessage:(id)message includeSuggestions:(int64_t)suggestions representationType:(id)type delegate:(id)delegate;
- (MessageContentRepresentationRequest)initWithMessageList:(id)list itemIdentifier:(id)identifier includeSuggestions:(int64_t)suggestions representationType:(id)type delegate:(id)delegate;
- (NSString)ef_publicDescription;
- (id)addLoadObserver:(id)observer;
- (id)onScheduler:(id)scheduler addLoadObserver:(id)observer;
- (id)resultIfAvailable;
- (id)waitForResult;
- (unint64_t)signpostID;
- (unint64_t)state;
- (void)_commonInitWithIncludeSuggestionItems:(id)obj delegate:;
- (void)_issueMessageContentRepresentationRequest;
- (void)_resetFuture:(uint64_t)future;
- (void)cancel;
- (void)dealloc;
- (void)retry;
- (void)updateItemID:(id)d messageList:(id)list;
@end

@implementation MessageContentRepresentationRequest

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MessageContentRepresentationRequest_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __42__MessageContentRepresentationRequest_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MessageContentRepresentationRequest_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __50__MessageContentRepresentationRequest_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log;
  signpostLog_log = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (id)defaultScheduler
{
  objc_opt_self();
  if (defaultScheduler_onceToken != -1)
  {
    +[MessageContentRepresentationRequest defaultScheduler];
  }

  v0 = defaultScheduler_scheduler;

  return v0;
}

void __55__MessageContentRepresentationRequest_defaultScheduler__block_invoke()
{
  v0 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.MessageContentRepresentationRequest" qualityOfService:25];
  v1 = defaultScheduler_scheduler;
  defaultScheduler_scheduler = v0;
}

- (MessageContentRepresentationRequest)initWithMessage:(id)message includeSuggestions:(int64_t)suggestions representationType:(id)type delegate:(id)delegate
{
  messageCopy = message;
  typeCopy = type;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = MessageContentRepresentationRequest;
  v13 = [(MessageContentRepresentationRequest *)&v19 init];
  if (v13)
  {
    itemID = [messageCopy itemID];
    itemID = v13->_itemID;
    v13->_itemID = itemID;

    v16 = [MEMORY[0x277D07150] futureWithResult:messageCopy];
    messageFuture = v13->_messageFuture;
    v13->_messageFuture = v16;

    objc_storeStrong(&v13->_contentRepresentationType, type);
    [(MessageContentRepresentationRequest *)v13 _commonInitWithIncludeSuggestionItems:delegateCopy delegate:?];
  }

  return v13;
}

- (void)_commonInitWithIncludeSuggestionItems:(id)obj delegate:
{
  if (self)
  {
    objc_storeWeak((self + 8), obj);
    *(self + 64) = a2;
    observableObserver = [MEMORY[0x277D07180] observableObserver];
    v6 = *(self + 24);
    *(self + 24) = observableObserver;

    v7 = objc_alloc_init(MEMORY[0x277D07170]);
    v8 = *(self + 16);
    *(self + 16) = v7;

    v13 = [*(self + 24) replay:1];
    v9 = [v13 filter:&__block_literal_global_68];
    v10 = *(self + 32);
    *(self + 32) = v9;

    v11 = *(self + 16);
    connect = [v13 connect];
    [v11 addCancelable:connect];
  }
}

- (MessageContentRepresentationRequest)initWithMessageList:(id)list itemIdentifier:(id)identifier includeSuggestions:(int64_t)suggestions representationType:(id)type delegate:(id)delegate
{
  listCopy = list;
  identifierCopy = identifier;
  typeCopy = type;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = MessageContentRepresentationRequest;
  v16 = [(MessageContentRepresentationRequest *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_itemID, identifier);
    v18 = [listCopy messageListItemForItemID:identifierCopy];
    v19 = [v18 then:&__block_literal_global_61];
    messageFuture = v17->_messageFuture;
    v17->_messageFuture = v19;

    objc_storeStrong(&v17->_contentRepresentationType, type);
    [(MessageContentRepresentationRequest *)v17 _commonInitWithIncludeSuggestionItems:delegateCopy delegate:?];
  }

  return v17;
}

id __121__MessageContentRepresentationRequest_initWithMessageList_itemIdentifier_includeSuggestions_representationType_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 displayMessage];

  return v2;
}

- (void)updateItemID:(id)d messageList:(id)list
{
  dCopy = d;
  listCopy = list;
  if (([(EMCollectionItemID *)self->_itemID isEqual:dCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_itemID, d);
    v8 = [listCopy messageListItemForItemID:dCopy];
    v9 = [v8 then:&__block_literal_global_63];
    messageFuture = self->_messageFuture;
    self->_messageFuture = v9;
  }
}

id __64__MessageContentRepresentationRequest_updateItemID_messageList___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 displayMessage];

  return v2;
}

- (NSString)ef_publicDescription
{
  state = [(MessageContentRepresentationRequest *)self state];
  if (state > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_2781818C8[state];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  itemID = [(MessageContentRepresentationRequest *)self itemID];
  v9 = [v5 stringWithFormat:@"<%@: %p> itemID: %@ state:%@", v7, self, itemID, v4];

  return v9;
}

- (void)dealloc
{
  [(MessageContentRepresentationRequest *)self cancel];
  v3.receiver = self;
  v3.super_class = MessageContentRepresentationRequest;
  [(MessageContentRepresentationRequest *)&v3 dealloc];
}

- (void)cancel
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[MessageContentRepresentationRequest log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    itemID = [(MessageContentRepresentationRequest *)self itemID];
    v7 = 138412802;
    v8 = v4;
    v9 = 2048;
    selfCopy = self;
    v11 = 2114;
    v12 = itemID;
    _os_log_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Content request for message %{public}@ being cancelled.", &v7, 0x20u);
  }

  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  v6 = *MEMORY[0x277D85DE8];
}

- (EMMessage)message
{
  messageFuture = [(MessageContentRepresentationRequest *)self messageFuture];
  result = [messageFuture result];

  if ((*(*MEMORY[0x277D07110] + 16))())
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_issueMessageContentRepresentationRequest
{
  v47 = *MEMORY[0x277D85DE8];
  if (self)
  {
    atomic_store(0, (self + 48));
    os_unfair_lock_lock((self + 68));
    if (*(self + 40))
    {
      os_unfair_lock_unlock((self + 68));
    }

    else
    {
      promise = [MEMORY[0x277D071A8] promise];
      future = [promise future];
      v6 = *(self + 40);
      *(self + 40) = future;

      os_unfair_lock_unlock((self + 68));
      if (promise)
      {
        v7 = +[MessageContentRepresentationRequest signpostLog];
        signpostID = [self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
        {
          itemID = [self itemID];
          *buf = 138543362;
          v42 = itemID;
          _os_signpost_emit_with_name_impl(&dword_2149C9000, v7, OS_SIGNPOST_EVENT, signpostID, "MessageContentRepresentationRequest", "itemID=%{signpost.description:attribute,public}@", buf, 0xCu);
        }

        v10 = +[MessageContentRepresentationRequest signpostLog];
        signpostID2 = [self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          itemID2 = [self itemID];
          *buf = 138543362;
          v42 = itemID2;
          _os_signpost_emit_with_name_impl(&dword_2149C9000, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpostID2, "MessageContentRepresentationRequest", "itemID=%{signpost.description:attribute,public}@", buf, 0xCu);
        }

        v13 = +[MessageContentRepresentationRequest signpostLog];
        signpostID3 = [self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          itemID3 = [self itemID];
          *buf = 138543362;
          v42 = itemID3;
          _os_signpost_emit_with_name_impl(&dword_2149C9000, v13, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "MessageContentRepresentationRequestFailed", "itemID=%{signpost.description:attribute,public}@", buf, 0xCu);
        }

        messageFuture = [self messageFuture];
        resultIfAvailable = [messageFuture resultIfAvailable];
        v18 = resultIfAvailable == 0;

        if (v18)
        {
          v19 = +[MessageContentRepresentationRequest log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v27 = objc_opt_class();
            itemID4 = [self itemID];
            *buf = 138412802;
            v42 = v27;
            v43 = 2048;
            selfCopy3 = self;
            v45 = 2114;
            v46 = itemID4;
            _os_log_error_impl(&dword_2149C9000, v19, OS_LOG_TYPE_ERROR, "<%@: %p> Issuing content request for message with unavailable message future %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v19 = +[MessageContentRepresentationRequest log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = objc_opt_class();
            itemID5 = [self itemID];
            *buf = 138412802;
            v42 = v20;
            v43 = 2048;
            selfCopy3 = self;
            v45 = 2114;
            v46 = itemID5;
            _os_log_impl(&dword_2149C9000, v19, OS_LOG_TYPE_DEFAULT, "<%@: %p> Issuing content request for message %{public}@", buf, 0x20u);
          }
        }

        v22 = +[MessageContentRepresentationRequest defaultScheduler];
        itemID6 = [self itemID];
        objc_initWeak(buf, self);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke;
        v38[3] = &unk_278181808;
        objc_copyWeak(&v40, buf);
        v24 = itemID6;
        v39 = v24;
        v25 = [messageFuture onScheduler:v22 then:v38];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke_3;
        v36[3] = &unk_278181830;
        objc_copyWeak(&v37, buf);
        [v25 addSuccessBlock:v36];
        objc_initWeak(&location, promise);
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke_95;
        v32 = &unk_278181858;
        objc_copyWeak(&v33, buf);
        objc_copyWeak(&v34, &location);
        [v25 addFailureBlock:&v29];
        [promise finishWithFuture:v25, v29, v30, v31, v32];
        [*(self + 16) addCancelable:promise];
        objc_destroyWeak(&v34);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
        objc_destroyWeak(&v37);

        objc_destroyWeak(&v40);
        objc_destroyWeak(buf);

        goto LABEL_22;
      }
    }

    promise = +[MessageContentRepresentationRequest log];
    if (os_log_type_enabled(promise, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      itemID7 = [self itemID];
      *buf = 138412802;
      v42 = v3;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = itemID7;
      _os_log_impl(&dword_2149C9000, promise, OS_LOG_TYPE_DEFAULT, "<%@: %p> Content request for message %{public}@ already issued", buf, 0x20u);
    }

LABEL_22:
  }

  v26 = *MEMORY[0x277D85DE8];
}

id __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277D071A8] promise];
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    if (!v6)
    {
      v6 = objc_alloc_init(MessageContentRepresentationRequestDelegate);
    }

    v7 = v6;
    v8 = objc_alloc(MEMORY[0x277D06D60]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke_2;
    v15[3] = &unk_2781815A8;
    v15[4] = WeakRetained;
    v9 = [v8 initWithBuilder:v15];
    v10 = [v5 completionHandlerAdapter];
    v11 = [v3 requestRepresentationWithOptions:v9 delegate:v7 completionHandler:v10];

    [WeakRetained[2] addCancelable:v11];
    v12 = [v5 future];
  }

  else
  {
    v13 = MEMORY[0x277D07150];
    v5 = [MEMORY[0x277CCA9B8] em_itemNotFoundErrorWithItemID:*(a1 + 32)];
    v12 = [v13 futureWithError:v5];
  }

  return v12;
}

void __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setRequestedRepresentation:*(*(a1 + 32) + 72)];
  [v3 setNetworkUsage:1];
  [v3 setIncludeSuggestionItems:*(*(a1 + 32) + 64)];
  v4 = *MEMORY[0x277D06F98];
  v10[0] = *MEMORY[0x277D06FA8];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [v3 setRequestedHeaderKeys:v5];

  [v3 setIncludeCachedMetadataJSON:1];
  v6 = *(*(a1 + 32) + 56);
  v7 = 1;
  if (v6 != 1)
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v3 setCacheBehavior:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[MessageContentRepresentationRequest signpostLog];
    v6 = [WeakRetained signpostID];
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_2149C9000, v5, OS_SIGNPOST_INTERVAL_END, v6, "MessageContentRepresentationRequest", " enableTelemetry=YES ", &v15, 2u);
    }

    v7 = +[MessageContentRepresentationRequest log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = [WeakRetained itemID];
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = WeakRetained;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_2149C9000, v7, OS_LOG_TYPE_DEFAULT, "<%@: %p> Content request for message %{public}@ loaded successfully", &v15, 0x20u);
    }

    v10 = WeakRetained[3];
    v11 = MEMORY[0x277D07190];
    v12 = [MEMORY[0x277CBEB68] null];
    v13 = [v11 pairWithFirst:v3 second:v12];
    [v10 observerDidReceiveResult:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__MessageContentRepresentationRequest__issueMessageContentRepresentationRequest__block_invoke_95(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (!WeakRetained)
  {
    goto LABEL_2;
  }

  v8 = [v5 future];
  [(MessageContentRepresentationRequest *)WeakRetained _resetFuture:v8];

  v9 = +[MessageContentRepresentationRequest signpostLog];
  v10 = [WeakRetained signpostID];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_2149C9000, v9, OS_SIGNPOST_INTERVAL_END, v10, "MessageContentRepresentationRequestFailed", " enableTelemetry=YES ", &v21, 2u);
  }

  v11 = [v3 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  if (v12)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v12 = v3;
LABEL_10:
    atomic_store(1u, WeakRetained + 48);
    goto LABEL_11;
  }

  v12 = [MEMORY[0x277CCA9B8] em_internalErrorWithReason:@"MessageContentRepresentationRequest failed without reason"];
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = +[MessageContentRepresentationRequest log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = [WeakRetained itemID];
    v16 = [v12 ef_publicDescription];
    v21 = 138413058;
    v22 = v14;
    v23 = 2048;
    v24 = WeakRetained;
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = v16;
    _os_log_impl(&dword_2149C9000, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> Content request for message %{public}@ failed to load with error: %{public}@", &v21, 0x2Au);
  }

  v17 = *(WeakRetained + 3);
  v18 = MEMORY[0x277D07190];
  v19 = [MEMORY[0x277CBEB68] null];
  v20 = [v18 pairWithFirst:v19 second:v12];
  [v17 observerDidReceiveResult:v20];

LABEL_2:
  v7 = *MEMORY[0x277D85DE8];
}

- (EFFuture)contentRepresentationFuture
{
  os_unfair_lock_lock(&self->_contentRepresentationLock);
  v3 = self->_futureContentRepresentation;
  os_unfair_lock_unlock(&self->_contentRepresentationLock);

  return v3;
}

- (void)retry
{
  v8 = *MEMORY[0x277D85DE8];
  ++self->_retryAttempt;
  v3 = +[MessageContentRepresentationRequest signpostLog];
  signpostID = [(MessageContentRepresentationRequest *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    retryAttempt_low = LOBYTE(self->_retryAttempt);
    v7[0] = 67240192;
    v7[1] = retryAttempt_low;
    _os_signpost_emit_with_name_impl(&dword_2149C9000, v3, OS_SIGNPOST_EVENT, signpostID, "MessageContentRepresentationRequest", "retry-attempt=%{signpost.description:attribute,public}hhu", v7, 8u);
  }

  [(MessageContentRepresentationRequest *)self start];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)resultIfAvailable
{
  contentRepresentationFuture = [(MessageContentRepresentationRequest *)self contentRepresentationFuture];
  v3 = [contentRepresentationFuture resultIfAvailable:0];

  return v3;
}

- (id)waitForResult
{
  [(MessageContentRepresentationRequest *)self start];
  contentRepresentationFuture = [(MessageContentRepresentationRequest *)self contentRepresentationFuture];
  v4 = [contentRepresentationFuture result:0];

  return v4;
}

- (BOOL)hasStarted
{
  contentRepresentationFuture = [(MessageContentRepresentationRequest *)self contentRepresentationFuture];
  v3 = contentRepresentationFuture != 0;

  return v3;
}

- (BOOL)isFinished
{
  resultIfAvailable = [(MessageContentRepresentationRequest *)self resultIfAvailable];
  v3 = resultIfAvailable != 0;

  return v3;
}

- (unint64_t)state
{
  resultIfAvailable = [(MessageContentRepresentationRequest *)self resultIfAvailable];

  if (resultIfAvailable)
  {
    return 2;
  }

  v5 = atomic_load(&self->_hasError);
  if (v5)
  {
    return 3;
  }

  else
  {
    return [(MessageContentRepresentationRequest *)self hasStarted];
  }
}

- (id)onScheduler:(id)scheduler addLoadObserver:(id)observer
{
  schedulerCopy = scheduler;
  observerCopy = observer;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__MessageContentRepresentationRequest_onScheduler_addLoadObserver___block_invoke;
  aBlock[3] = &unk_278181880;
  v8 = observerCopy;
  v22 = v8;
  v9 = _Block_copy(aBlock);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __67__MessageContentRepresentationRequest_onScheduler_addLoadObserver___block_invoke_2;
  v19 = &unk_2781818A8;
  v10 = v8;
  v20 = v10;
  v11 = _Block_copy(&v16);
  v12 = [MEMORY[0x277D07188] observerWithResultBlock:v11 completionBlock:0 failureBlock:{v9, v16, v17, v18, v19}];
  v13 = [(EFObservable *)self->_contentObservable observeOn:schedulerCopy];
  v14 = [v13 subscribe:v12];

  [(EFManualCancelationToken *)self->_cancelationToken addCancelable:v14];

  return v14;
}

void __67__MessageContentRepresentationRequest_onScheduler_addLoadObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 first];
  v4 = *MEMORY[0x277D07118];
  if ((*(*MEMORY[0x277D07118] + 16))(*MEMORY[0x277D07118], v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v8 first];
  }

  v6 = [v8 second];
  if ((*(v4 + 16))(v4, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v8 second];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)addLoadObserver:(id)observer
{
  observerCopy = observer;
  immediateScheduler = [MEMORY[0x277D071B8] immediateScheduler];
  v6 = [(MessageContentRepresentationRequest *)self onScheduler:immediateScheduler addLoadObserver:observerCopy];

  return v6;
}

- (void)_resetFuture:(uint64_t)future
{
  if (future)
  {
    v3 = a2;
    os_unfair_lock_lock((future + 68));
    v4 = *(future + 40);

    if (v4 == v3)
    {
      *(future + 40) = 0;
    }

    os_unfair_lock_unlock((future + 68));
  }
}

@end