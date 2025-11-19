@interface _UIKeyboardArbiterClientHandle
+ (id)handlerWithArbiter:(id)a3 forConnection:(id)a4;
- (BOOL)_isKeyboardOnScreen:(id)a3;
- (BOOL)_shouldRejectSceneIdentityUpdateCorrectingClientIfNeeded:(id)a3 fromSelector:(SEL)a4;
- (BOOL)isHandlerShowableWithHandler:(id)a3;
- (BOOL)isKeyboardOnScreen;
- (BOOL)takeProcessAssertionOnRemoteWithQueue:(id)a3;
- (id)description;
- (id)descriptionForLog;
- (id)sceneDescription;
- (void)_deactivateScene;
- (void)_reevaluateRemoteFocusContext:(id)a3;
- (void)activeProcessResign;
- (void)addHostedPids:(id)a3;
- (void)applicationShouldFocusWithBundle:(id)a3 onCompletion:(id)a4;
- (void)beginAcquiringFocusOnQueue:(id)a3;
- (void)cacheWindowContext;
- (void)checkActivation:(unint64_t)a3;
- (void)clearAcquiringFocus;
- (void)dealloc;
- (void)didAttachLayer;
- (void)didDetachLayer;
- (void)invalidate;
- (void)notifyIAVHeight:(double)a3;
- (void)pointIsWithinKeyboardContent:(CGPoint)a3 onCompletion:(id)a4;
- (void)releaseProcessAssertion;
- (void)retrieveDebugInformation:(id)a3;
- (void)retrieveMoreDebugInformationWithCompletion:(id)a3;
- (void)setAllVisibleFrames:(id)a3;
- (void)setClientFocusContext:(id)a3;
- (void)setDeactivating:(BOOL)a3;
- (void)setWantsFencing:(BOOL)a3;
- (void)signalAutofillUIBringupWithCompletion:(id)a3;
- (void)signalEventSourceChanged:(int64_t)a3 completionHandler:(id)a4;
- (void)signalKeyboardChangeComplete;
- (void)signalKeyboardChanged:(id)a3 onCompletion:(id)a4;
- (void)signalKeyboardClientChanged:(id)a3 onCompletion:(id)a4;
- (void)signalKeyboardUIDidChange:(id)a3 onCompletion:(id)a4;
- (void)startArbitrationWithExpectedState:(id)a3 focusContext:(id)a4 hostingPIDs:(id)a5 usingFence:(BOOL)a6 withSuppression:(int)a7 onConnected:(id)a8;
- (void)transition:(id)a3 eventStage:(unint64_t)a4 withInfo:(id)a5;
- (void)uncacheWindowContext;
- (void)userFirstTapOnKeyboard;
@end

@implementation _UIKeyboardArbiterClientHandle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_running)
  {
    v5 = &stru_2867933A0;
  }

  else
  {
    v5 = @" (suspended)";
  }

  v6 = @"NO";
  if (self->_active)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_wantedState)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_keyboardOnScreen)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_acquiringFocus)
  {
    v6 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p; %@ <%@>%@; hosting PIDs %@; level %f; active %@ [wants %@]; suppression %i; iav %f; on screen %@; isAcquiringFocus: %@>", v4, self, self->_processHandle, self->_remoteFocusContext, v5, self->_hostedPids, *&self->_level, v7, v8, self->_suppressionCount, *&self->_iavHeight, v9, v6];
}

- (id)descriptionForLog
{
  v3 = MEMORY[0x277CCACA8];
  bundleIdentifier = self->_bundleIdentifier;
  v5 = [(UIKBArbiterClientFocusContext *)self->_remoteFocusContext descriptionForLog];
  if (self->_running)
  {
    v6 = "Y";
  }

  else
  {
    v6 = "N";
  }

  v7 = [(NSMutableSet *)self->_hostedPids allObjects];
  v8 = numberArrayToString(v7);

  level = self->_level;
  if (self->_active)
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  wantedState = self->_wantedState;
  v12 = _UIKeyboardWindowStateToString();
  v13 = v12;
  if (self->_keyboardOnScreen)
  {
    v14 = "Y";
  }

  else
  {
    v14 = "N";
  }

  v15 = [v3 stringWithFormat:@"<%@ focus:%@ run:%s hosting:%@ level:%.0f active:%s wantedState:%@ #suppr:%d iavHeight:%.0f onScreen:%s>", bundleIdentifier, v5, v6, v8, *&level, v10, v12, self->_suppressionCount, *&self->_iavHeight, v14];

  return v15;
}

- (void)clearAcquiringFocus
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v4 = _UIArbiterLog();
  os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  v5 = NSStringFromSelector(a2);
  v6 = [(_UIKeyboardArbiterClientHandle *)self remoteFocusContext];
  v7 = [v6 sceneIdentity];
  v8 = [v7 stringRepresentation];
  v14 = 138412802;
  v15 = self;
  v16 = 2112;
  v17 = v5;
  v18 = 2112;
  v19 = v8;
  LODWORD(v13) = 32;
  v9 = _os_log_send_and_compose_impl();

  v10 = [_UIKeyboardArbiterDebug sharedInstance:&v14];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v20];
  [v10 debugWithMessage:v11];

  if (v9 != v20)
  {
    free(v9);
  }

  self->_acquiringFocus = 0;
  [(_UIKeyboardArbiterClientHandle *)self setRequestedCorrectionOfClientSceneIdentityWhileAcquiringFocus:0];
  [(BSAbsoluteMachTimer *)self->_acquiringFocusTimer cancel];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)releaseProcessAssertion
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_remoteKeepAliveAssertionCount - 1;
  self->_remoteKeepAliveAssertionCount = v3;
  if (!v3)
  {
    [(RBSAssertion *)self->_remoteKeepAliveAssertion invalidate];
    remoteKeepAliveAssertion = self->_remoteKeepAliveAssertion;
    self->_remoteKeepAliveAssertion = 0;
  }

  memset(v16, 0, sizeof(v16));
  v5 = _UIArbiterLog();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  remoteKeepAliveAssertionCount = self->_remoteKeepAliveAssertionCount;
  v12 = 138412546;
  v13 = self;
  v14 = 2048;
  v15 = remoteKeepAliveAssertionCount;
  LODWORD(v11) = 22;
  v7 = _os_log_send_and_compose_impl();

  v8 = [_UIKeyboardArbiterDebug sharedInstance:&v12];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
  [v8 debugWithMessage:v9];

  if (v7 != v16)
  {
    free(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)sceneDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSXPCConnection *)self->_connection processIdentifier];
  v5 = [(UIKBArbiterClientFocusContext *)self->_remoteFocusContext sceneIdentity];
  v6 = [v5 stringRepresentation];
  v7 = [v3 stringWithFormat:@"<pid: %d scene: %@>", v4, v6];;

  return v7;
}

- (BOOL)isKeyboardOnScreen
{
  if (self->_keyboardOnScreen)
  {
    return 1;
  }

  v3 = self;
  v4 = [MEMORY[0x277CBEB18] array];
  LOBYTE(v3) = [(_UIKeyboardArbiterClientHandle *)v3 _isKeyboardOnScreen:v4];

  return v3;
}

- (void)didAttachLayer
{
  if (!self->_sceneLayer)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIKeyboardArbiter.m" lineNumber:2506 description:@"Layer must exist for us to attach visibility to."];
  }

  if (self->_endpointGrantInjector)
  {
    [(_UIKeyboardArbiterClientHandle *)self didDetachLayer];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2557BA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Keyboard attaching layer before removing prior layer...", buf, 2u);
    }
  }

  v3 = [MEMORY[0x277D0ADC0] identityForIdentifier:@"com.apple.UIKit.remote-keyboard"];
  v4 = [getFBSceneManagerClass() sharedInstance];
  v5 = [v4 newSceneIdentityTokenForIdentity:v3];

  v6 = [v5 stringRepresentation];
  v7 = _UISVisibilityEnvironmentForSceneIdentityTokenString();

  [(FBSCAContextSceneLayer *)self->_sceneLayer contextID];
  v8 = _UISVisibilityEnvironmentForUIHostedWindowContextID();
  v9 = MEMORY[0x277CF3290];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48___UIKeyboardArbiterClientHandle_didAttachLayer__block_invoke;
  v16[3] = &unk_2797F4BE0;
  v16[4] = self;
  v17 = v8;
  v18 = v7;
  v10 = v7;
  v11 = v8;
  v12 = [v9 injectorWithConfigurator:v16];
  endpointGrantInjector = self->_endpointGrantInjector;
  self->_endpointGrantInjector = v12;
}

- (void)signalKeyboardChangeComplete
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_impl(&dword_2557BA000, v4, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalKeyboardChangeComplete", buf, 0x12u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(buf, 0, sizeof(buf));
  v6 = _UIArbiterLog();
  os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  v7 = NSStringFromSelector(a2);
  v13 = 138412546;
  v14 = self;
  v15 = 2112;
  v16 = v7;
  LODWORD(v12) = 22;
  v8 = _os_log_send_and_compose_impl();

  v9 = [_UIKeyboardArbiterDebug sharedInstance:&v13];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v9 debugWithMessage:v10];

  if (v8 != buf)
  {
    free(v8);
  }

  [(_UIKeyboardArbiter *)self->_owner completeKeyboardStatusChangedFromHandler:self];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  v4 = _UIArbiterLog();
  os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  v5 = NSStringFromSelector(a2);
  v20 = 138412546;
  v21 = self;
  v22 = 2112;
  v23 = v5;
  LODWORD(v17) = 22;
  v6 = _os_log_send_and_compose_impl();

  v7 = [_UIKeyboardArbiterDebug sharedInstance:&v20];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v24];
  [v7 debugWithMessage:v8];

  if (v6 != v24)
  {
    free(v6);
  }

  v9 = [(_UIKeyboardArbiterClientHandle *)self description];
  owner = self->_owner;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44___UIKeyboardArbiterClientHandle_invalidate__block_invoke;
  v18[3] = &unk_2797F4C30;
  v19 = v9;
  v11 = v9;
  [(_UIKeyboardArbiter *)owner setKeyboardTotalDisable:0 withFence:0 fromHandler:self completionHandler:v18];
  self->_iavHeight = 0.0;
  self->_keyboardOnScreen = 0;
  [(_UIKeyboardArbiter *)self->_owner notifyHeightUpdated:self];
  [(_UIKeyboardArbiterClientHandle *)self setWindowContextID:0 focusContext:0 windowState:0 withLevel:0.0];
  v12 = self->_owner;
  self->_owner = 0;

  self->_connection = 0;
  remoteFocusContext = self->_remoteFocusContext;
  self->_remoteFocusContext = 0;

  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = 0;

  [(RBSAssertion *)self->_remoteKeepAliveAssertion invalidate];
  remoteKeepAliveAssertion = self->_remoteKeepAliveAssertion;
  self->_remoteKeepAliveAssertion = 0;

  self->_invalidated = 1;
  v16 = *MEMORY[0x277D85DE8];
}

+ (id)handlerWithArbiter:(id)a3 forConnection:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(_UIKeyboardArbiterClientHandle);
  objc_storeStrong(&v9->_owner, a3);
  v9->_connection = v8;
  v10 = [MEMORY[0x277CBEB58] set];
  hostedPids = v9->_hostedPids;
  v9->_hostedPids = v10;

  v9->_running = 1;
  if (v8)
  {
    [(NSXPCConnection *)v8 auditToken];
  }

  else
  {
    memset(&atoken, 0, sizeof(atoken));
  }

  v12 = audit_token_to_pid(&atoken);
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x277D46F50] identifierWithPid:v12];
    v33 = 0;
    v15 = [MEMORY[0x277D46F48] handleForIdentifier:v14 error:&v33];
    v16 = v33;
    if (v16)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      memset(&atoken, 0, sizeof(atoken));
      v17 = _UIArbiterLog();
      os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      v34 = 138412802;
      v35 = a1;
      v36 = 1024;
      LODWORD(v37[0]) = v13;
      WORD2(v37[0]) = 2112;
      *(v37 + 6) = v16;
      LODWORD(v32) = 28;
      v18 = _os_log_send_and_compose_impl();

      v19 = [_UIKeyboardArbiterDebug sharedInstance:&v34];
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&atoken];
      [v19 errorWithMessage:v20];

      if (v18 != &atoken)
      {
        free(v18);
      }
    }

    else
    {
      objc_storeStrong(&v9->_processHandle, v15);
      v25 = [v15 bundle];
      v26 = [v25 identifier];
      bundleIdentifier = v9->_bundleIdentifier;
      v9->_bundleIdentifier = v26;
    }
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    memset(&atoken, 0, sizeof(atoken));
    v21 = _UIArbiterLog();
    os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    v34 = 138412546;
    v35 = a1;
    v36 = 2112;
    v37[0] = v8;
    LODWORD(v32) = 22;
    v22 = _os_log_send_and_compose_impl();

    v23 = [_UIKeyboardArbiterDebug sharedInstance:&v34];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&atoken];
    [v23 errorWithMessage:v24];

    if (v22 != &atoken)
    {
      free(v22);
    }
  }

  v28 = [(NSXPCConnection *)v8 valueForEntitlement:@"com.apple.KeyboardArbiter.client.debuginfo"];
  v29 = [v28 BOOLValue];

  if (v29)
  {
    v9->_hasDebugInformationEntitlement = 1;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    memset(v12, 0, sizeof(v12));
    v3 = _UIArbiterLog();
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    v10 = 138412290;
    v11 = self;
    LODWORD(v8) = 12;
    v4 = _os_log_send_and_compose_impl();

    v5 = [_UIKeyboardArbiterDebug sharedInstance:&v10];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
    [v5 errorWithMessage:v6];

    if (v4 != v12)
    {
      free(v4);
    }

    [(_UIKeyboardArbiter *)self->_owner handleUnexpectedDeallocForHandler:self];
  }

  if (self->_endpointGrantInjector)
  {
    [(_UIKeyboardArbiterClientHandle *)self didDetachLayer];
  }

  [(BSAbsoluteMachTimer *)self->_acquiringFocusTimer invalidate];
  v9.receiver = self;
  v9.super_class = _UIKeyboardArbiterClientHandle;
  [(_UIKeyboardArbiterClientHandle *)&v9 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setDeactivating:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (self->_deactivating != a3)
  {
    v5 = _UIArbiterClientHandleLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
      v7 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
      v8 = "N";
      v12 = 138543874;
      v13 = v6;
      if (v3)
      {
        v8 = "Y";
      }

      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_2557BA000, v5, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setDeactivating:%s", &v12, 0x1Cu);
    }
  }

  self->_deactivating = v3;
  if (!v3)
  {
    v9 = [(_UIKeyboardArbiterClientHandle *)self pendingNotifyKeyboardChanged];

    if (v9)
    {
      v10 = [(_UIKeyboardArbiterClientHandle *)self pendingNotifyKeyboardChanged];
      (v10)[2](v10, self);

      [(_UIKeyboardArbiterClientHandle *)self setPendingNotifyKeyboardChanged:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addHostedPids:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableSet *)self->_hostedPids addObjectsFromArray:v4];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_hostedPids;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = -[_UIKeyboardArbiter handlerForPID:](self->_owner, "handlerForPID:", [*(*(&v15 + 1) + 8 * v9) intValue]);
        [v10 setIsViewService:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  owner = self->_owner;
  childrenSuppressionCount = self->_childrenSuppressionCount;
  v13 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [(_UIKeyboardArbiter *)owner setSuppressionCount:childrenSuppressionCount ofPIDs:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startArbitrationWithExpectedState:(id)a3 focusContext:(id)a4 hostingPIDs:(id)a5 usingFence:(BOOL)a6 withSuppression:(int)a7 onConnected:(id)a8
{
  v35 = a6;
  v76 = *MEMORY[0x277D85DE8];
  v13 = a3;
  obj = a4;
  v14 = a4;
  v15 = a5;
  v33 = a8;
  v16 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v18 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    [v13 descriptionForLog];
    v19 = v31 = a2;
    v20 = [v14 descriptionForLog];
    v21 = numberArrayToString(v15);
    v22 = v21;
    *buf = 138544899;
    v23 = "N";
    *&buf[4] = v17;
    if (v35)
    {
      v23 = "Y";
    }

    *&buf[12] = 1024;
    *&buf[14] = v18;
    *&buf[18] = 2114;
    *&buf[20] = v19;
    *&buf[28] = 2113;
    *&buf[30] = v20;
    *&buf[38] = 2112;
    *&buf[40] = v21;
    LOWORD(v47) = 2080;
    *(&v47 + 2) = v23;
    WORD5(v47) = 1024;
    HIDWORD(v47) = a7;
    _os_log_impl(&dword_2557BA000, v16, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) startArbitration\n    expectedState:%{public}@\n    focusContext:%{private}@\n    hostingPIDs:%@ usingFence:%s withSuppression:%d", buf, 0x40u);

    a2 = v31;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  memset(buf, 0, sizeof(buf));
  v24 = _UIArbiterLog();
  os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  v25 = NSStringFromSelector(a2);
  v36 = 138413314;
  v37 = self;
  v38 = 2112;
  v39 = v25;
  v40 = 2112;
  v41 = v13;
  v42 = 2112;
  v43 = v14;
  v44 = 2112;
  v45 = v15;
  LODWORD(v30) = 52;
  v26 = _os_log_send_and_compose_impl();

  v27 = [_UIKeyboardArbiterDebug sharedInstance:&v36];
  v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v27 debugWithMessage:v28];

  if (v26 != buf)
  {
    free(v26);
  }

  self->_suppressionCount = a7;
  self->_wantsFence = v35;
  objc_storeStrong(&self->_remoteFocusContext, obj);
  self->_keyboardOnScreen = [v13 keyboardOnScreen];
  self->_multipleScenes = [v13 multipleScenes];
  if (v15)
  {
    [(_UIKeyboardArbiterClientHandle *)self addHostedPids:v15];
  }

  [(_UIKeyboardArbiter *)self->_owner newClientConnected:self withExpectedState:v13 onConnected:v33];
  if (self->_active)
  {
    [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:self->_hostedPids active:1];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateScene
{
  v3 = [(_UIKeyboardArbiter *)self->_owner deactivateHandle:self];
  self->_active = v3;
  if (v3)
  {
    return;
  }

  [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:self->_hostedPids active:0];
  v4 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  if (v4 == self)
  {
    goto LABEL_7;
  }

  v5 = [(_UIKeyboardArbiter *)self->_owner focusRequestedHandle];
  v6 = v5;
  if (v5 != self)
  {

LABEL_7:
    goto LABEL_8;
  }

  v7 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  v8 = [v7 active];

  if (v8)
  {
    owner = self->_owner;
    v4 = [(_UIKeyboardArbiter *)owner activeInputDestinationHandle];
    [(_UIKeyboardArbiter *)owner activateHandle:v4];
    goto LABEL_7;
  }

LABEL_8:

  [(_UIKeyboardArbiterClientHandle *)self activeProcessResign];
}

- (void)activeProcessResign
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(_UIKeyboardArbiter *)self->_owner handlerForPID:[(_UIKeyboardArbiterClientHandle *)self prevActiveIdentifier]];
  v5 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  if (!v5 || (v6 = v5, [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == self))
  {
    v12 = 1;
  }

  else
  {
    hostedPids = self->_hostedPids;
    v9 = MEMORY[0x277CCABB0];
    v10 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
    v11 = [v9 numberWithInt:{objc_msgSend(v10, "processIdentifier")}];
    v12 = [(NSMutableSet *)hostedPids containsObject:v11];
  }

  if ([v4 running] && (objc_msgSend(v4, "isKeyboardOnScreen") & v12) == 1 && (objc_msgSend(v4, "inputUIHost") & 1) == 0)
  {
    memset(v28, 0, sizeof(v28));
    v13 = _UIArbiterLog();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    v14 = NSStringFromSelector(a2);
    v15 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v16 = [v4 bundleIdentifier];
    v22 = 138412802;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    LODWORD(v21) = 32;
    v17 = _os_log_send_and_compose_impl();

    v18 = [_UIKeyboardArbiterDebug sharedInstance:&v22];
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v28];
    [v18 debugWithMessage:v19];

    if (v17 != v28)
    {
      free(v17);
    }

    [(_UIKeyboardArbiter *)self->_owner runOperations:&__block_literal_global_539 onHandler:v4 fromFunction:"[_UIKeyboardArbiterClientHandle activeProcessResign]"];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isKeyboardOnScreen:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 containsObject:self])
  {
    v5 = 0;
  }

  else
  {
    [v4 addObject:self];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_hostedPids;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = -[_UIKeyboardArbiter handlerForPID:](self->_owner, "handlerForPID:", [*(*(&v15 + 1) + 8 * i) intValue]);
          v12 = [v11 _isKeyboardOnScreen:v4];

          if (v12)
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)beginAcquiringFocusOnQueue:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *location = 0u;
  v28 = 0u;
  v6 = _UIArbiterLog();
  os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  v7 = NSStringFromSelector(a2);
  v8 = [(_UIKeyboardArbiterClientHandle *)self remoteFocusContext];
  v9 = [v8 sceneIdentity];
  v10 = [v9 stringRepresentation];
  v21 = 138412802;
  v22 = self;
  v23 = 2112;
  v24 = v7;
  v25 = 2112;
  v26 = v10;
  LODWORD(v18) = 32;
  v11 = _os_log_send_and_compose_impl();

  v12 = [_UIKeyboardArbiterDebug sharedInstance:&v21];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:location];
  [v12 debugWithMessage:v13];

  if (v11 != location)
  {
    free(v11);
  }

  self->_acquiringFocus = 1;
  objc_initWeak(location, self);
  acquiringFocusTimer = self->_acquiringFocusTimer;
  if (!acquiringFocusTimer)
  {
    v15 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"com.apple.KeyboardArbiter.AcquiringFocusTimer"];
    v16 = self->_acquiringFocusTimer;
    self->_acquiringFocusTimer = v15;

    acquiringFocusTimer = self->_acquiringFocusTimer;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61___UIKeyboardArbiterClientHandle_beginAcquiringFocusOnQueue___block_invoke;
  v19[3] = &unk_2797F4BB8;
  objc_copyWeak(&v20, location);
  v19[4] = self;
  [(BSAbsoluteMachTimer *)acquiringFocusTimer scheduleWithFireInterval:v5 leewayInterval:v19 queue:5.0 handler:0.1];
  objc_destroyWeak(&v20);
  objc_destroyWeak(location);

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRejectSceneIdentityUpdateCorrectingClientIfNeeded:(id)a3 fromSelector:(SEL)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(_UIKeyboardArbiterClientHandle *)self remoteFocusContext];
  v8 = [v7 sceneIdentity];

  v9 = [(_UIKeyboardArbiterClientHandle *)self isAcquiringFocus];
  v10 = BSEqualObjects();
  v11 = [(_UIKeyboardArbiter *)self->_owner omniscientDelegate];
  v12 = v11;
  if (!v11 || !v9 || (v6 == 0) != (v8 == 0) || v10)
  {
  }

  else
  {
    v13 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.Spotlight"];

    if (!v14)
    {
      v15 = [(_UIKeyboardArbiterClientHandle *)self requestedCorrectionOfClientSceneIdentityWhileAcquiringFocus];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = _UIArbiterLog();
      os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      v17 = NSStringFromSelector(a4);
      v18 = [v6 stringRepresentation];
      v32 = 138412802;
      v33 = self;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      LODWORD(v31) = 32;
      v19 = _os_log_send_and_compose_impl();

      v20 = [_UIKeyboardArbiterDebug sharedInstance:&v32];
      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
      [v20 errorWithMessage:v21];

      if (v19 != &v38)
      {
        free(v19);
      }

      if (!v15)
      {
        [(_UIKeyboardArbiter *)self->_owner handlerRequestedForcedClientSceneIdentityUpdate:self];
      }

      v22 = 1;
      goto LABEL_17;
    }
  }

  if (v9)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = _UIArbiterLog();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    v24 = NSStringFromSelector(a4);
    v25 = [v6 stringRepresentation];
    v32 = 138412802;
    v33 = self;
    v34 = 2112;
    v35 = v24;
    v36 = 2112;
    v37 = v25;
    LODWORD(v31) = 32;
    v26 = _os_log_send_and_compose_impl();

    v27 = [_UIKeyboardArbiterDebug sharedInstance:&v32];
    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
    [v27 debugWithMessage:v28];

    if (v26 != &v38)
    {
      free(v26);
    }

    [(_UIKeyboardArbiterClientHandle *)self clearAcquiringFocus];
  }

  v22 = 0;
LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)setClientFocusContext:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v8 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v9 = [v5 descriptionForLog];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 2114;
    *&buf[20] = v9;
    _os_log_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setClientFocusContext\n    focusContext:%{public}@", buf, 0x1Cu);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = _UIArbiterLog();
  os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  v11 = NSStringFromSelector(a2);
  v12 = [v5 sceneIdentity];
  v13 = [v12 stringRepresentation];
  v21 = 138412802;
  v22 = self;
  v23 = 2112;
  v24 = v11;
  v25 = 2112;
  v26 = v13;
  LODWORD(v20) = 32;
  v14 = _os_log_send_and_compose_impl();

  v15 = [_UIKeyboardArbiterDebug sharedInstance:&v21];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v15 debugWithMessage:v16];

  if (v14 != buf)
  {
    free(v14);
  }

  v17 = [v5 sceneIdentity];
  v18 = [(_UIKeyboardArbiterClientHandle *)self _shouldRejectSceneIdentityUpdateCorrectingClientIfNeeded:v17 fromSelector:a2];

  if (!v18)
  {
    [(_UIKeyboardArbiterClientHandle *)self _reevaluateRemoteFocusContext:v5];
    [(_UIKeyboardArbiter *)self->_owner reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_reevaluateRemoteFocusContext:(id)a3
{
  v6 = a3;
  v5 = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(v5);
  objc_storeStrong(&self->_remoteFocusContext, a3);
  if (([MEMORY[0x277D75658] inputUIOOP] & 1) != 0 || self->_sceneLayer)
  {
    [(_UIKeyboardArbiterClientHandle *)self checkActivation:self->_wantedState];
  }

  [(_UIKeyboardArbiter *)self->_owner reevaluateSceneClientSettings];
  [(_UIKeyboardArbiter *)self->_owner updateKeyboardSceneSettings];
  objc_sync_exit(v5);
}

- (void)checkActivation:(unint64_t)a3
{
  v5 = [MEMORY[0x277D75658] inputUIOOP];
  owner = self->_owner;
  if (v5)
  {
    v7 = [(_UIKeyboardArbiter *)owner lastActivatedHandle];
    v8 = v7 != self;
  }

  else
  {
    v7 = [(_UIKeyboardArbiter *)owner sceneLayer];
    v9 = [(_UIKeyboardArbiterClientHandle *)self sceneLayer];
    v8 = v7 != v9;
  }

  if (self->_active)
  {
    v10 = a3 == 1 && v8;
    if (a3 != 2 && !v10)
    {
      if (!a3)
      {

        [(_UIKeyboardArbiterClientHandle *)self _deactivateScene];
      }

      return;
    }
  }

  else if (a3 - 1 > 1)
  {
    return;
  }

  v11 = [(_UIKeyboardArbiter *)self->_owner activateHandle:self];
  self->_active = v11;
  if (v11)
  {
    hostedPids = self->_hostedPids;

    [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:hostedPids active:1];
  }
}

- (void)didDetachLayer
{
  [(BSServiceConnectionEndpointInjector *)self->_endpointGrantInjector invalidate];
  endpointGrantInjector = self->_endpointGrantInjector;
  self->_endpointGrantInjector = 0;
}

- (void)setWantsFencing:(BOOL)a3
{
  v3 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v8 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v9 = "N";
    *buf = 138543874;
    *&buf[4] = v7;
    if (v3)
    {
      v9 = "Y";
    }

    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 2080;
    *&buf[20] = v9;
    _os_log_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setWantsFencing:%s", buf, 0x1Cu);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = _UIArbiterLog();
  os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  v11 = NSStringFromSelector(a2);
  v12 = v11;
  v13 = @"NO";
  *v19 = 138412802;
  *&v19[4] = self;
  *&v19[12] = 2112;
  if (v3)
  {
    v13 = @"YES";
  }

  *&v19[14] = v11;
  v20 = 2112;
  v21 = v13;
  LODWORD(v18) = 32;
  v14 = _os_log_send_and_compose_impl();

  v15 = [_UIKeyboardArbiterDebug sharedInstance:v19];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v15 debugWithMessage:v16];

  if (v14 != buf)
  {
    free(v14);
  }

  self->_wantsFence = v3;
  v17 = *MEMORY[0x277D85DE8];
}

- (void)signalKeyboardUIDidChange:(id)a3 onCompletion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (+[_UIKeyboardArbiter unitTestEnvironment])
  {
    [(_UIKeyboardArbiter *)self->_owner setKeyboardUIHandle:self];
    [(_UIKeyboardArbiterClientHandle *)self setInputUIHost:1];
  }

  if ([MEMORY[0x277D75658] inputUIOOP])
  {
    memset(v26, 0, sizeof(v26));
    v9 = _UIArbiterLog();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    v10 = NSStringFromSelector(a2);
    v20 = 138412802;
    v21 = self;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    LODWORD(v19) = 32;
    v11 = _os_log_send_and_compose_impl();

    v12 = [_UIKeyboardArbiterDebug sharedInstance:&v20];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v26];
    [v12 debugWithMessage:v13];

    if (v11 != v26)
    {
      free(v11);
    }

    self->_keyboardOnScreen = [v7 keyboardOnScreen];
    -[_UIKeyboardArbiter setKeyboardScenePresentationMode:](self->_owner, "setKeyboardScenePresentationMode:", [v7 keyboardScenePresentationMode]);
    [(_UIKeyboardArbiter *)self->_owner updateKeyboardUIStatus:v7 fromHandler:self];
    v14 = [(_UIKeyboardArbiter *)self->_owner sceneDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(_UIKeyboardArbiter *)self->_owner sceneDelegate];
      v17 = [(_UIKeyboardArbiter *)self->_owner focusContext];
      [v16 focusContext:v17 didChangeKeyboardScenePresentationMode:{-[_UIKeyboardArbiter keyboardScenePresentationMode](self->_owner, "keyboardScenePresentationMode")}];
    }
  }

  if (v8)
  {
    v8[2](v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)signalKeyboardClientChanged:(id)a3 onCompletion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  memset(v22, 0, sizeof(v22));
  v9 = _UIArbiterLog();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  v10 = NSStringFromSelector(a2);
  v16 = 138412802;
  v17 = self;
  v18 = 2112;
  v19 = v10;
  v20 = 2112;
  v21 = v7;
  LODWORD(v15) = 32;
  v11 = _os_log_send_and_compose_impl();

  v12 = [_UIKeyboardArbiterDebug sharedInstance:&v16];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22];
  [v12 debugWithMessage:v13];

  if (v11 != v22)
  {
    free(v11);
  }

  self->_keyboardOnScreen = [v7 keyboardOnScreen];
  self->_multipleScenes = [v7 multipleScenes];
  [(_UIKeyboardArbiter *)self->_owner updateKeyboardStatus:v7 fromHandler:self];
  if (v8)
  {
    v8[2](v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)signalKeyboardChanged:(id)a3 onCompletion:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v11 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v12 = [v7 descriptionForLog];
    *buf = 138543874;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 2114;
    *&buf[20] = v12;
    _os_log_impl(&dword_2557BA000, v9, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalKeyboardChanged\n    keyboardChanges:%{public}@", buf, 0x1Cu);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(buf, 0, sizeof(buf));
  v13 = _UIArbiterLog();
  os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  v14 = NSStringFromSelector(a2);
  v21 = 138412802;
  v22 = self;
  v23 = 2112;
  v24 = v14;
  v25 = 2112;
  v26 = v7;
  LODWORD(v20) = 32;
  v15 = _os_log_send_and_compose_impl();

  v16 = [_UIKeyboardArbiterDebug sharedInstance:&v21];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v16 debugWithMessage:v17];

  if (v15 != buf)
  {
    free(v15);
  }

  self->_keyboardOnScreen = [v7 keyboardOnScreen];
  self->_multipleScenes = [v7 multipleScenes];
  [(_UIKeyboardArbiter *)self->_owner updateKeyboardStatus:v7 fromHandler:self];
  if (!self->_keyboardOnScreen)
  {
    if ([(_UIKeyboardArbiterClientHandle *)self isViewService])
    {
      if ([(_UIKeyboardArbiterClientHandle *)self prevActiveIdentifier])
      {
        v18 = [v7 hostProcessIdentifier];
        if (v18 == getpid())
        {
          [(_UIKeyboardArbiterClientHandle *)self activeProcessResign];
        }
      }
    }
  }

  if (v8)
  {
    v8[2](v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)signalAutofillUIBringupWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 1024;
    v11 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_impl(&dword_2557BA000, v5, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalAutofillUIBringup", &v8, 0x12u);
  }

  if ([MEMORY[0x277D75658] usesInputSystemUIForAutoFillOnly])
  {
    [(_UIKeyboardArbiterClientHandle *)self setRequiresInputUIForAutofillUIOnly:1];
    [(_UIKeyboardArbiter *)self->_owner reevaluateSceneClientSettings];
    if (v4)
    {
      v4[2](v4);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyIAVHeight:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = _UIArbiterLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromSelector(a2);
    v13 = 138412802;
    v14 = self;
    v15 = 2112;
    *v16 = v12;
    *&v16[8] = 2048;
    *&v16[10] = a3;
    _os_log_debug_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEBUG, "[%@] %@: %f", &v13, 0x20u);
  }

  if (self->_iavHeight != a3)
  {
    v7 = _UIArbiterClientHandleLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
      v9 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
      iavHeight = self->_iavHeight;
      v13 = 138544130;
      v14 = v8;
      v15 = 1024;
      *v16 = v9;
      *&v16[4] = 2048;
      *&v16[6] = a3;
      *&v16[14] = 2048;
      *&v16[16] = iavHeight;
      _os_log_impl(&dword_2557BA000, v7, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) notifyIAVHeight:%.1f (was %.1f)", &v13, 0x26u);
    }

    self->_iavHeight = a3;
    [(_UIKeyboardArbiter *)self->_owner notifyHeightUpdated:self];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)transition:(id)a3 eventStage:(unint64_t)a4 withInfo:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v13 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v14 = _UIKeyboardTransitionStageToString();
    *buf = 138544130;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 2114;
    *&buf[20] = v9;
    *&buf[28] = 2114;
    *&buf[30] = v14;
    _os_log_impl(&dword_2557BA000, v11, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) transition:%{public}@ eventStage:%{public}@", buf, 0x26u);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  memset(buf, 0, sizeof(buf));
  v15 = _UIArbiterLog();
  os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  v16 = NSStringFromSelector(a2);
  v22 = 138413314;
  v23 = self;
  v24 = 2112;
  v25 = v16;
  v26 = 2112;
  v27 = v9;
  v28 = 1024;
  v29 = a4;
  v30 = 2112;
  v31 = v10;
  LODWORD(v21) = 48;
  v17 = _os_log_send_and_compose_impl();

  v18 = [_UIKeyboardArbiterDebug sharedInstance:&v22];
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v18 debugWithMessage:v19];

  if (v17 != buf)
  {
    free(v17);
  }

  [(_UIKeyboardArbiter *)self->_owner transition:v9 eventStage:a4 withInfo:v10 fromHandler:self];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)retrieveDebugInformation:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = v18;
    *&buf[12] = 1024;
    *&buf[14] = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_debug_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEBUG, "RX %{public}@(%d) retrieveDebugInfo", buf, 0x12u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  v7 = _UIArbiterLog();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  v8 = NSStringFromSelector(a2);
  v21 = 138412546;
  v22 = self;
  v23 = 2112;
  v24 = v8;
  LODWORD(v19) = 22;
  v9 = _os_log_send_and_compose_impl();

  v10 = [_UIKeyboardArbiterDebug sharedInstance:&v21];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v10 debugWithMessage:v11];

  if (v9 != buf)
  {
    free(v9);
  }

  if ([(_UIKeyboardArbiterClientHandle *)self hasDebugInformationEntitlement])
  {
    if (v5)
    {
      v12 = [(_UIKeyboardArbiter *)self->_owner description];
      v5[2](v5, v12);
    }
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(buf, 0, sizeof(buf));
    v13 = _UIArbiterLog();
    os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    v21 = 138412290;
    v22 = self;
    LODWORD(v20) = 12;
    v14 = _os_log_send_and_compose_impl();

    v15 = [_UIKeyboardArbiterDebug sharedInstance:&v21];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v15 errorWithMessage:v16];

    if (v14 != buf)
    {
      free(v14);
    }

    v5[2](v5, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)retrieveMoreDebugInformationWithCompletion:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 1024;
    *&buf[14] = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_debug_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEBUG, "RX %{public}@(%d) retrieveMoreDebugInfo", buf, 0x12u);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(buf, 0, sizeof(buf));
  v7 = _UIArbiterLog();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  v8 = NSStringFromSelector(a2);
  v20 = 138412546;
  v21 = self;
  v22 = 2112;
  v23 = v8;
  LODWORD(v18) = 22;
  v9 = _os_log_send_and_compose_impl();

  v10 = [_UIKeyboardArbiterDebug sharedInstance:&v20];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v10 debugWithMessage:v11];

  if (v9 != buf)
  {
    free(v9);
  }

  if ([(_UIKeyboardArbiterClientHandle *)self hasDebugInformationEntitlement])
  {
    [(_UIKeyboardArbiter *)self->_owner retrieveDebugInformationWithCompletion:v5];
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(buf, 0, sizeof(buf));
    v12 = _UIArbiterLog();
    os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    v20 = 138412290;
    v21 = self;
    LODWORD(v19) = 12;
    v13 = _os_log_send_and_compose_impl();

    v14 = [_UIKeyboardArbiterDebug sharedInstance:&v20];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v14 errorWithMessage:v15];

    if (v13 != buf)
    {
      free(v13);
    }

    v5[2](v5, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isHandlerShowableWithHandler:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && !self->_checkingShowability)
  {
    LOBYTE(v6) = 1;
    if (v4 != self)
    {
      self->_checkingShowability = 1;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = self->_hostedPids;
      v6 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v8 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v7);
            }

            v10 = -[_UIKeyboardArbiter handlerForPID:](self->_owner, "handlerForPID:", [*(*(&v14 + 1) + 8 * i) intValue]);
            v11 = [v10 isHandlerShowableWithHandler:v5];

            if (v11)
            {
              LOBYTE(v6) = 1;
              goto LABEL_15;
            }
          }

          v6 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      self->_checkingShowability = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)takeProcessAssertionOnRemoteWithQueue:(id)a3
{
  v109 = *MEMORY[0x277D85DE8];
  v4 = a3;
  remoteKeepAliveAssertionCount = self->_remoteKeepAliveAssertionCount;
  self->_remoteKeepAliveAssertionCount = remoteKeepAliveAssertionCount + 1;
  v6 = &off_2557D5000;
  if (remoteKeepAliveAssertionCount)
  {
    goto LABEL_27;
  }

  v7 = [(NSXPCConnection *)self->_connection processIdentifier];
  if (v7 == getpid())
  {
    goto LABEL_27;
  }

  v8 = [(_UIKeyboardArbiterClientHandle *)self description];
  if (takeProcessAssertionOnRemoteWithQueue____needsStaging != 1)
  {
    v18 = [MEMORY[0x277D47008] targetWithPid:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
    v19 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.UIKit.KeyboardManagement.xpc" name:@"Arbiter"];
    v20 = objc_alloc(MEMORY[0x277D46DB8]);
    v64 = v19;
    v76 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    v63 = v18;
    v22 = [v20 initWithExplanation:@"com.apple.UIKit.KeyboardManagement.message" target:v18 attributes:v21];
    remoteKeepAliveAssertion = self->_remoteKeepAliveAssertion;
    self->_remoteKeepAliveAssertion = v22;

    v24 = self->_remoteKeepAliveAssertion;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_577;
    v68[3] = &unk_2797F4C08;
    v25 = v8;
    v69 = v25;
    [(RBSAssertion *)v24 setInvalidationHandler:v68];
    v26 = self->_remoteKeepAliveAssertion;
    v67 = 0;
    v27 = [(RBSAssertion *)v26 acquireWithError:&v67];
    v28 = v67;
    v65 = v28;
    if (v27)
    {
      v29 = &off_2557D5000;
LABEL_23:
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v49 = _UIArbiterLog();
      os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG);
      v72 = *(v29 + 506);
      v73 = v25;
      LODWORD(v61) = 12;
      v50 = _os_log_send_and_compose_impl();

      v51 = [_UIKeyboardArbiterDebug sharedInstance:&v72];
      v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v77];
      [v51 debugWithMessage:v52];

      if (v50 != &v77)
      {
        free(v50);
      }

      v6 = &off_2557D5000;
      v17 = v63;
      goto LABEL_26;
    }

    v30 = v28;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v31 = _UIArbiterLog();
    os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    v72 = 138412546;
    v73 = v25;
    v74 = 2112;
    v75 = v30;
    LODWORD(v61) = 22;
    v32 = _os_log_send_and_compose_impl();

    v33 = [_UIKeyboardArbiterDebug sharedInstance:&v72];
    v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v77];
    [v33 errorWithMessage:v34];

    if (v32 != &v77)
    {
      free(v32);
    }

    v35 = [v65 domain];
    v36 = *MEMORY[0x277D47098];
    v29 = &off_2557D5000;
    if ([v35 isEqual:*MEMORY[0x277D47098]])
    {
      v37 = [v65 code];

      if (v37 == 1)
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v38 = _UIArbiterLog();
        os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
        v72 = 138412290;
        v73 = v25;
        LODWORD(v62) = 12;
        v39 = _os_log_send_and_compose_impl();

        v40 = [_UIKeyboardArbiterDebug sharedInstance:&v72];
        v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v77];
        [v40 errorWithMessage:v41];

        if (v39 == &v77)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    v42 = [v65 domain];
    if ([v42 isEqual:v36])
    {
      v43 = [v65 localizedFailureReason];
      v44 = [v43 isEqual:@"Could not find plist for domain attribute"];

      if (v44)
      {

        v45 = 0;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v46 = _UIArbiterLog();
    os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    v72 = 138412290;
    v73 = v25;
    LODWORD(v62) = 12;
    v39 = _os_log_send_and_compose_impl();

    v47 = [_UIKeyboardArbiterDebug sharedInstance:&v72];
    v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v77];
    [v47 errorWithMessage:v48];

    if (v39 == &v77)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v39);
LABEL_22:
    takeProcessAssertionOnRemoteWithQueue____needsStaging = 1;
    goto LABEL_23;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v9 = _UIArbiterLog();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  v72 = 138412290;
  v73 = v8;
  LODWORD(v61) = 12;
  v10 = _os_log_send_and_compose_impl();

  v11 = [_UIKeyboardArbiterDebug sharedInstance:&v72];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v77];
  [v11 debugWithMessage:v12];

  if (v10 != &v77)
  {
    free(v10);
  }

  v13 = objc_alloc(MEMORY[0x277CEEEA8]);
  v14 = [(NSXPCConnection *)self->_connection processIdentifier];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke;
  v70[3] = &unk_2797F4810;
  v71 = v8;
  v15 = [v13 initWithPID:v14 flags:39 reason:4 name:@"com.apple.UIKit.KeyboardManagement.message" withHandler:v70];
  v16 = self->_remoteKeepAliveAssertion;
  self->_remoteKeepAliveAssertion = v15;

  v17 = v71;
  v6 = &off_2557D5000;
LABEL_26:

LABEL_27:
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v53 = _UIArbiterLog();
  os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG);
  v54 = self->_remoteKeepAliveAssertionCount;
  v72 = *(v6 + 508);
  v73 = self;
  v74 = 2048;
  v75 = v54;
  LODWORD(v61) = 22;
  v55 = _os_log_send_and_compose_impl();

  v56 = [_UIKeyboardArbiterDebug sharedInstance:&v72];
  v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v77];
  [v56 debugWithMessage:v57];

  if (v55 != &v77)
  {
    free(v55);
  }

  ++self->_remoteKeepAliveTimerCount;
  v58 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_582;
  block[3] = &unk_2797F4630;
  block[4] = self;
  dispatch_after(v58, v4, block);
  v45 = 1;
LABEL_30:

  v59 = *MEMORY[0x277D85DE8];
  return v45;
}

- (void)cacheWindowContext
{
  v10[3] = *MEMORY[0x277D85DE8];
  if ([(_UIKeyboardArbiterClientHandle *)self active])
  {
    if (self->_wantedState)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[FBSCAContextSceneLayer contextID](self->_sceneLayer, "contextID")}];
      v10[0] = v3;
      remoteFocusContext = self->_remoteFocusContext;
      v5 = remoteFocusContext;
      if (!remoteFocusContext)
      {
        v5 = [MEMORY[0x277CBEB68] null];
      }

      v6 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_level, v10[0], v5}];
      v10[2] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
      cachedContext = self->_cachedContext;
      self->_cachedContext = v7;

      if (!remoteFocusContext)
      {
      }
    }

    [(_UIKeyboardArbiterClientHandle *)self setWindowContextID:0 focusContext:0 windowState:0 withLevel:0.0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)uncacheWindowContext
{
  if (self->_cachedContext)
  {
    if (![(_UIKeyboardArbiterClientHandle *)self active])
    {
      v3 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:0];
      v4 = [v3 intValue];
      v5 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v7 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:1];
      }

      else
      {
        v7 = 0;
      }

      v8 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:2];
      -[_UIKeyboardArbiterClientHandle setWindowContextID:focusContext:windowState:withLevel:](self, "setWindowContextID:focusContext:windowState:withLevel:", v4, v7, 1, [v8 intValue]);

      if (isKindOfClass)
      {
      }
    }

    cachedContext = self->_cachedContext;
    self->_cachedContext = 0;
  }
}

- (void)pointIsWithinKeyboardContent:(CGPoint)a3 onCompletion:(id)a4
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    v6 = MEMORY[0x277D75830];
    v7 = a4;
    v7[2](v7, [v6 pointIsWithinKeyboardContent:{x, y}]);
  }
}

- (void)setAllVisibleFrames:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54___UIKeyboardArbiterClientHandle_setAllVisibleFrames___block_invoke;
  v6[3] = &unk_2797F45E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)userFirstTapOnKeyboard
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  if (v4 != self)
  {
    goto LABEL_2;
  }

  if ([(_UIKeyboardArbiterClientHandle *)self isViewService])
  {
  }

  else
  {
    v23 = [(_UIKeyboardArbiter *)self->_owner focusRequestedHandle];
    v24 = v23;
    if (v23 != self)
    {

LABEL_2:
LABEL_3:
      v5 = _UIArbiterEventsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = NSStringFromSelector(a2);
        v7 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
        if ([(_UIKeyboardArbiterClientHandle *)self active])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
        v10 = [v9 bundleIdentifier];
        v11 = [(_UIKeyboardArbiter *)self->_owner focusRequestedHandle];
        v12 = [v11 bundleIdentifier];
        *buf = 138413314;
        v29 = v6;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v10;
        v36 = 2112;
        v37 = v12;
        _os_log_impl(&dword_2557BA000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %@(active=%@) taps on blank keyboard, activeInputDestinationHandle: %@, focusRequestedHandle: %@", buf, 0x34u);
      }

      [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardLogs:0];
      [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardRecordTime:CFAbsoluteTimeGetCurrent()];
      owner = self->_owner;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __56___UIKeyboardArbiterClientHandle_userFirstTapOnKeyboard__block_invoke;
      v26[3] = &unk_2797F4C58;
      v26[4] = self;
      [(_UIKeyboardArbiter *)owner retrieveDebugInformationWithCompletion:v26];
      [(_UIKeyboardArbiter *)self->_owner runOperations:&__block_literal_global_589 onHandler:self fromFunction:"[_UIKeyboardArbiterClientHandle userFirstTapOnKeyboard]"];
      goto LABEL_9;
    }

    v25 = [(_UIKeyboardArbiterClientHandle *)self active];

    if (!v25)
    {
      goto LABEL_3;
    }
  }

  [(_UIKeyboardArbiter *)self->_owner blankKeyboardRecordTime];
  if (v15 > 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(_UIKeyboardArbiter *)self->_owner blankKeyboardRecordTime];
    if (Current - v17 > 1800.0)
    {
      [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardRecordTime:0.0];
      v18 = [(_UIKeyboardArbiter *)self->_owner blankKeyboardLogs];
      v19 = [v18 count];

      if (v19)
      {
        v20 = [(_UIKeyboardArbiter *)self->_owner blankKeyboardLogs];
        v21 = [v20 objectAtIndexedSubscript:0];
        v27 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardLogs:v22];
      }
    }
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)applicationShouldFocusWithBundle:(id)a3 onCompletion:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v11 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v12 = @"(self)";
    *buf = 138543874;
    *&buf[4] = v10;
    if (v7)
    {
      v12 = v7;
    }

    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 2114;
    *&buf[20] = v12;
    _os_log_impl(&dword_2557BA000, v9, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) applicationShouldFocusWithBundle:%{public}@", buf, 0x1Cu);
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v13 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
  if ([v13 isEqual:v7])
  {

    goto LABEL_9;
  }

  v14 = [(_UIKeyboardArbiterClientHandle *)self hasDebugInformationEntitlement];

  if (v14)
  {
LABEL_9:
    if (([(__CFString *)v7 isEqualToString:&stru_2867933A0]& 1) == 0)
    {
      v15 = [(_UIKeyboardArbiter *)self->_owner handlerForBundleID:v7];
LABEL_12:
      v16 = v15;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      memset(buf, 0, sizeof(buf));
      v17 = _UIArbiterLog();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      v18 = NSStringFromSelector(a2);
      v33 = 138413058;
      v34 = self;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v7;
      v39 = 2114;
      v40 = v16;
      LODWORD(v32) = 42;
      v19 = _os_log_send_and_compose_impl();

      v20 = [_UIKeyboardArbiterDebug sharedInstance:&v33];
      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v20 debugWithMessage:v21];

      if (v19 != buf)
      {
        free(v19);
      }

      if (v16 && (([(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle], (v22 = objc_claimAutoreleasedReturnValue()) == 0) || (v23 = v22, [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v16 == v24)))
      {
        owner = self->_owner;
        v25 = 1;
        [(_UIKeyboardArbiter *)owner handlerRequestedFocus:v16 shouldStealKeyboard:1];
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v25 = 0;
        if (!v8)
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      v8[2](v8, v25);
      goto LABEL_19;
    }

LABEL_10:
    v15 = self;
    goto LABEL_12;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(buf, 0, sizeof(buf));
  v28 = _UIArbiterLog();
  os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  v33 = 138412546;
  v34 = self;
  v35 = 2112;
  v36 = v7;
  LODWORD(v32) = 22;
  v29 = _os_log_send_and_compose_impl();

  v30 = [_UIKeyboardArbiterDebug sharedInstance:&v33];
  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v30 errorWithMessage:v31];

  if (v29 != buf)
  {
    free(v29);
  }

  v8[2](v8, 0);
LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)signalEventSourceChanged:(int64_t)a3 completionHandler:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v10 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v11 = _UITextInputSourceToString();
    *buf = 138543874;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2114;
    *&buf[20] = v11;
    _os_log_impl(&dword_2557BA000, v8, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalEventSourceChanged:%{public}@", buf, 0x1Cu);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  v12 = _UIArbiterLog();
  os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  v13 = NSStringFromSelector(a2);
  v19 = 138412802;
  v20 = self;
  v21 = 2112;
  v22 = v13;
  v23 = 1024;
  v24 = a3;
  LODWORD(v18) = 28;
  v14 = _os_log_send_and_compose_impl();

  v15 = [_UIKeyboardArbiterDebug sharedInstance:&v19];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v15 debugWithMessage:v16];

  if (v14 != buf)
  {
    free(v14);
  }

  [(_UIKeyboardArbiter *)self->_owner signalEventSourceChanged:a3 fromHandler:self completionHandler:v7];

  v17 = *MEMORY[0x277D85DE8];
}

@end