@interface AXLTPhoneCallListener
+ (id)sharedInstance;
- (AXLTPhoneCallListener)init;
- (AXLTPhoneCallListenerDelegate)delegate;
- (BOOL)isCallActive;
- (void)_startObserving;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)callStatusChanged:(id)a3;
- (void)setUtilityType:(int64_t)a3;
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

- (void)setUtilityType:(int64_t)a3
{
  if (self->_utilityType != a3)
  {
    self->_utilityType = a3;
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    if (self->_utilityType)
    {
      [(CXCallObserver *)self->_callObserver setDelegate:0 queue:0];
      callObserver = self->_callObserver;
      self->_callObserver = 0;

      v6 = [MEMORY[0x277D6EDF8] sharedInstance];
      callCenter = self->_callCenter;
      self->_callCenter = v6;

      [v11 addObserver:self selector:sel_callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
      [v11 addObserver:self selector:sel_callStatusChanged_ name:*MEMORY[0x277D6F038] object:0];
    }

    else
    {
      v8 = self->_callCenter;
      self->_callCenter = 0;

      [v11 removeObserver:self name:*MEMORY[0x277D6EFF0] object:0];
      [v11 removeObserver:self name:*MEMORY[0x277D6F038] object:0];
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
    v3 = [(TUCallCenter *)self->_callCenter currentCalls];
    if ([v3 count])
    {
      v4 = 1;
    }

    else
    {
      v12 = [(TUCallCenter *)self->_callCenter currentVideoCalls];
      v4 = [v12 count] != 0;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(AXLTPhoneCallListener *)self callObserver];
    v6 = [v5 calls];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 hasConnected] && !objc_msgSend(v11, "hasEnded"))
          {

            v4 = 1;
            goto LABEL_17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  v4 = [(AXLTPhoneCallListener *)self callObserver];
  [v4 setDelegate:self queue:0];
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v13 = a4;
  if (([v13 hasConnected] & 1) == 0 && (objc_msgSend(v13, "hasEnded") & 1) == 0)
  {
    v9 = [(AXLTPhoneCallListener *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    v7 = [(AXLTPhoneCallListener *)self delegate];
    [v7 phoneCallListenerCallDialing:self];
    goto LABEL_13;
  }

  if ([v13 hasConnected] && (objc_msgSend(v13, "hasEnded") & 1) == 0)
  {
    v11 = [(AXLTPhoneCallListener *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }

    v7 = [(AXLTPhoneCallListener *)self delegate];
    v8 = [v13 UUID];
    [v7 phoneCallListenerCallConnected:self callID:v8];
    goto LABEL_12;
  }

  if ([v13 hasEnded])
  {
    v5 = [(AXLTPhoneCallListener *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(AXLTPhoneCallListener *)self delegate];
      v8 = [v13 UUID];
      [v7 phoneCallListenerCallEnded:self callID:v8];
LABEL_12:

LABEL_13:
    }
  }

LABEL_14:
}

- (void)callStatusChanged:(id)a3
{
  v17 = a3;
  v4 = [v17 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v17 object];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v6 callUUID];
  v9 = [v7 initWithUUIDString:v8];

  if ([v6 status] == 4)
  {
    v10 = [(AXLTPhoneCallListener *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }

    v12 = [(AXLTPhoneCallListener *)self delegate];
    [v12 phoneCallListenerCallDialing:self];
    goto LABEL_13;
  }

  if ([v6 status] == 1)
  {
    v13 = [(AXLTPhoneCallListener *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }

    v12 = [(AXLTPhoneCallListener *)self delegate];
    [v12 phoneCallListenerCallConnected:self callID:v9];
    goto LABEL_13;
  }

  if ([v6 status] == 6)
  {
    v15 = [(AXLTPhoneCallListener *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v12 = [(AXLTPhoneCallListener *)self delegate];
      [v12 phoneCallListenerCallEnded:self callID:v9];
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