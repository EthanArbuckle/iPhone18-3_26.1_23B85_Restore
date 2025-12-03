@interface AXLTPhoneCallListener
+ (id)sharedInstance;
- (AXLTPhoneCallListener)init;
- (AXLTPhoneCallListenerDelegate)delegate;
- (BOOL)isCallActive;
- (void)_startObserving;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)callStatusChanged:(id)changed;
- (void)setUtilityType:(int64_t)type;
@end

@implementation AXLTPhoneCallListener

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXLTPhoneCallListener sharedInstance];
  }

  v3 = sharedInstance_phoneCallObserver;

  return v3;
}

uint64_t __39__AXLTPhoneCallListener_sharedInstance__block_invoke()
{
  sharedInstance_phoneCallObserver = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXLTPhoneCallListener)init
{
  v5.receiver = self;
  v5.super_class = AXLTPhoneCallListener;
  v2 = [(AXLTPhoneCallListener *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXLTPhoneCallListener *)v2 _startObserving];
  }

  return v3;
}

- (void)setUtilityType:(int64_t)type
{
  if (self->_utilityType != type)
  {
    self->_utilityType = type;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    if (self->_utilityType)
    {
      [(CXCallObserver *)self->_callObserver setDelegate:0 queue:0];
      callObserver = self->_callObserver;
      self->_callObserver = 0;

      mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
      callCenter = self->_callCenter;
      self->_callCenter = mEMORY[0x277D6EDF8];

      [defaultCenter addObserver:self selector:sel_callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
      [defaultCenter addObserver:self selector:sel_callStatusChanged_ name:*MEMORY[0x277D6F038] object:0];
    }

    else
    {
      v8 = self->_callCenter;
      self->_callCenter = 0;

      [defaultCenter removeObserver:self name:*MEMORY[0x277D6EFF0] object:0];
      [defaultCenter removeObserver:self name:*MEMORY[0x277D6F038] object:0];
      v9 = objc_opt_new();
      v10 = self->_callObserver;
      self->_callObserver = v9;

      [(CXCallObserver *)self->_callObserver setDelegate:self queue:0];
    }
  }
}

- (BOOL)isCallActive
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_utilityType)
  {
    currentCalls = [(TUCallCenter *)self->_callCenter currentCalls];
    if ([currentCalls count])
    {
      v4 = 1;
    }

    else
    {
      currentVideoCalls = [(TUCallCenter *)self->_callCenter currentVideoCalls];
      v4 = [currentVideoCalls count] != 0;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    callObserver = [(AXLTPhoneCallListener *)self callObserver];
    calls = [callObserver calls];

    v7 = [calls countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(calls);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 hasConnected] && !objc_msgSend(v11, "hasEnded"))
          {

            v4 = 1;
            goto LABEL_17;
          }
        }

        v8 = [calls countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_startObserving
{
  v3 = objc_opt_new();
  [(AXLTPhoneCallListener *)self setCallObserver:v3];

  callObserver = [(AXLTPhoneCallListener *)self callObserver];
  [callObserver setDelegate:self queue:0];
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  changedCopy = changed;
  if (([changedCopy hasConnected] & 1) == 0 && (objc_msgSend(changedCopy, "hasEnded") & 1) == 0)
  {
    delegate = [(AXLTPhoneCallListener *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    delegate2 = [(AXLTPhoneCallListener *)self delegate];
    [delegate2 phoneCallListenerCallDialing:self];
    goto LABEL_13;
  }

  if ([changedCopy hasConnected] && (objc_msgSend(changedCopy, "hasEnded") & 1) == 0)
  {
    delegate3 = [(AXLTPhoneCallListener *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }

    delegate2 = [(AXLTPhoneCallListener *)self delegate];
    uUID = [changedCopy UUID];
    [delegate2 phoneCallListenerCallConnected:self callID:uUID];
    goto LABEL_12;
  }

  if ([changedCopy hasEnded])
  {
    delegate4 = [(AXLTPhoneCallListener *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(AXLTPhoneCallListener *)self delegate];
      uUID = [changedCopy UUID];
      [delegate2 phoneCallListenerCallEnded:self callID:uUID];
LABEL_12:

LABEL_13:
    }
  }

LABEL_14:
}

- (void)callStatusChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
  }

  else
  {
    object2 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  callUUID = [object2 callUUID];
  v9 = [v7 initWithUUIDString:callUUID];

  if ([object2 status] == 4)
  {
    delegate = [(AXLTPhoneCallListener *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }

    delegate2 = [(AXLTPhoneCallListener *)self delegate];
    [delegate2 phoneCallListenerCallDialing:self];
    goto LABEL_13;
  }

  if ([object2 status] == 1)
  {
    delegate3 = [(AXLTPhoneCallListener *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }

    delegate2 = [(AXLTPhoneCallListener *)self delegate];
    [delegate2 phoneCallListenerCallConnected:self callID:v9];
    goto LABEL_13;
  }

  if ([object2 status] == 6)
  {
    delegate4 = [(AXLTPhoneCallListener *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(AXLTPhoneCallListener *)self delegate];
      [delegate2 phoneCallListenerCallEnded:self callID:v9];
LABEL_13:
    }
  }

LABEL_14:
}

- (AXLTPhoneCallListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end