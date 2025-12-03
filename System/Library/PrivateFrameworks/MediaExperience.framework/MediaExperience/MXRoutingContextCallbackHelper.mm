@interface MXRoutingContextCallbackHelper
+ (id)_sharedLock;
- (MXRoutingContextCallbackHelper)initWithRoutingContext:(OpaqueFigRoutingContext *)context routeConfigUpdateID:(id)d correlationID:(id)iD callback:(void *)callback context:(void *)a7;
- (void)_routeConfigUpdated:(id)updated;
- (void)dealloc;
@end

@implementation MXRoutingContextCallbackHelper

- (MXRoutingContextCallbackHelper)initWithRoutingContext:(OpaqueFigRoutingContext *)context routeConfigUpdateID:(id)d correlationID:(id)iD callback:(void *)callback context:(void *)a7
{
  v24.receiver = self;
  v24.super_class = MXRoutingContextCallbackHelper;
  v12 = [(MXRoutingContextCallbackHelper *)&v24 init];
  v12->mRouteConfigUpdateID = d;
  if (context)
  {
    v13 = CFRetain(context);
  }

  else
  {
    v13 = 0;
  }

  v12->mFigRoutingContext = v13;
  v12->mCallback = callback;
  v12->mContext = a7;
  v12->mCorrelationID = iD;
  v14 = [[MXRoutingContextModificationMetrics alloc] initWithCorrelationID:v12->mCorrelationID];
  v12->mRoutingContextModificationMetrics = v14;
  -[MXRoutingContextModificationMetrics setServerModificationStartedTimestamp:](v14, "setServerModificationStartedTimestamp:", [MEMORY[0x1E696AD98] numberWithLongLong:FigGetUpTimeNanoseconds()]);
  mFigRoutingContext = v12->mFigRoutingContext;
  VTable = CMBaseObjectGetVTable();
  v17 = *(*(VTable + 16) + 64);
  if (v17)
  {
    v18 = *(VTable + 16) + 64;
    v17(mFigRoutingContext, &v12->mPreviousRouteDescriptors);
  }

  objc_initWeak(&location, v12);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __108__MXRoutingContextCallbackHelper_initWithRoutingContext_routeConfigUpdateID_correlationID_callback_context___block_invoke;
  v21[3] = &unk_1E7AEB980;
  objc_copyWeak(&v22, &location);
  v12->mFigRoutingContextToken = [defaultCenter addObserverForName:@"routeConfigUpdated" object:context queue:0 usingBlock:v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  return v12;
}

uint64_t __108__MXRoutingContextCallbackHelper_initWithRoutingContext_routeConfigUpdateID_correlationID_callback_context___block_invoke(uint64_t a1, uint64_t a2)
{
  [+[MXRoutingContextCallbackHelper _sharedLock](MXRoutingContextCallbackHelper "_sharedLock")];
  [objc_loadWeak((a1 + 32)) _routeConfigUpdated:a2];
  v4 = +[MXRoutingContextCallbackHelper _sharedLock];

  return [v4 unlock];
}

+ (id)_sharedLock
{
  if (_sharedLock_onceToken != -1)
  {
    +[MXRoutingContextCallbackHelper _sharedLock];
  }

  return _sharedLock_sharedLock;
}

id __45__MXRoutingContextCallbackHelper__sharedLock__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  _sharedLock_sharedLock = result;
  return result;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  mFigRoutingContext = self->mFigRoutingContext;
  if (mFigRoutingContext)
  {
    CFRelease(mFigRoutingContext);
    self->mFigRoutingContext = 0;
  }

  v4.receiver = self;
  v4.super_class = MXRoutingContextCallbackHelper;
  [(MXRoutingContextCallbackHelper *)&v4 dealloc];
}

- (void)_routeConfigUpdated:(id)updated
{
  v13 = *MEMORY[0x1E69E9840];
  userInfo = [updated userInfo];
  v5 = [userInfo objectForKey:@"routeConfigUpdateID"];
  v6 = [userInfo objectForKey:@"routeConfigUpdateReason"];
  v7 = [v6 isEqualToString:@"configUpdateReasonEndedFailed"];
  if ([v5 isEqualToString:self->mRouteConfigUpdateID] && -[MXRoutingContextCallbackHelper _didRouteChangeFinish:](self, "_didRouteChangeFinish:", v6) && self->mCallback)
  {
    -[MXRoutingContextModificationMetrics setRouteChangeFailed:](self->mRoutingContextModificationMetrics, "setRouteChangeFailed:", [MEMORY[0x1E696AD98] numberWithBool:v7]);
    -[MXRoutingContextModificationMetrics setServerModificationFinishedTimestamp:](self->mRoutingContextModificationMetrics, "setServerModificationFinishedTimestamp:", [MEMORY[0x1E696AD98] numberWithLongLong:FigGetUpTimeNanoseconds()]);
    [(NSNumber *)[(MXRoutingContextModificationMetrics *)self->mRoutingContextModificationMetrics serverModificationFinishedTimestamp] longLongValue];
    [(NSNumber *)[(MXRoutingContextModificationMetrics *)self->mRoutingContextModificationMetrics serverModificationStartedTimestamp] longLongValue];
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    mFigRoutingContext = self->mFigRoutingContext;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v10)
    {
      v10(mFigRoutingContext, &self->mCurrentRouteDescriptors);
    }

    v11 = [[MXRoutingContextModificationResult alloc] initWithRouteConfigUpdatedReason:v6 modificationMetrics:self->mRoutingContextModificationMetrics previousRouteDescriptors:self->mPreviousRouteDescriptors currentRouteDescriptors:self->mCurrentRouteDescriptors];
    (self->mCallback)(self->mContext, v11);

    self->mCallback = 0;
    self->mContext = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end