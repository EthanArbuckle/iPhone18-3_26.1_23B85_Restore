@interface BUCoalescingCallBlock
- (BUCoalescingCallBlock)initWithNotifyBlock:(id)block notifyTimeout:(unsigned __int16)timeout blockDescription:(id)description notifyTimeoutBlock:(id)timeoutBlock;
- (id)description;
- (void)_coalescingTimeExpired:(unint64_t)expired;
- (void)_invoke;
- (void)_invokeIfNotInProgress;
- (void)_maxTimeExpired:(unint64_t)expired;
- (void)signalWithCompletion:(id)completion;
@end

@implementation BUCoalescingCallBlock

- (BUCoalescingCallBlock)initWithNotifyBlock:(id)block notifyTimeout:(unsigned __int16)timeout blockDescription:(id)description notifyTimeoutBlock:(id)timeoutBlock
{
  blockCopy = block;
  descriptionCopy = description;
  timeoutBlockCopy = timeoutBlock;
  v31.receiver = self;
  v31.super_class = BUCoalescingCallBlock;
  v15 = [(BUCoalescingCallBlock *)&v31 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(blockCopy, v13, v14);
    notifyBlock = v15->_notifyBlock;
    v15->_notifyBlock = v16;

    v20 = objc_msgSend_copy(timeoutBlockCopy, v18, v19);
    notifyTimeoutBlock = v15->_notifyTimeoutBlock;
    v15->_notifyTimeoutBlock = v20;

    v15->_notifyTimeoutDurationSeconds = timeout;
    v24 = objc_msgSend_copy(descriptionCopy, v22, v23);
    notifyBlockDescription = v15->_notifyBlockDescription;
    v15->_notifyBlockDescription = v24;

    v26 = dispatch_group_create();
    group = v15->_group;
    v15->_group = v26;

    v28 = dispatch_queue_create("BUCoalescingCallBlock.sync", 0);
    sync = v15->_sync;
    v15->_sync = v28;

    v15->_nextCoalescingTime = -1;
    v15->_nextMaxTime = -1;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_notifyBlockDescription(self, v6, v7);
  if (v10)
  {
    v11 = @" nb=";
  }

  else
  {
    v11 = &stru_2853F3C08;
  }

  v12 = objc_msgSend_notifyBlockDescription(self, v8, v9);
  v16 = objc_msgSend_notifyBlockDescription(self, v13, v14);
  v17 = @"";
  if (!v16)
  {
    v17 = &stru_2853F3C08;
  }

  v18 = objc_msgSend_stringWithFormat_(v3, v15, @"<%@: %p%@%@%@>", v5, self, v11, v12, v17);

  return v18;
}

- (void)_invokeIfNotInProgress
{
  if (objc_msgSend_isInvoking(self, a2, v2))
  {
    objc_msgSend_setNextMaxTime_(self, v4, -1);

    objc_msgSend_setNextCoalescingTime_(self, v6, -1);
  }

  else
  {

    objc_msgSend__invoke(self, v4, v5);
  }
}

- (void)_invoke
{
  v4 = objc_msgSend_callbacks(self, a2, v2);
  v7 = objc_msgSend_copy(v4, v5, v6);

  objc_msgSend_setCallbacks_(self, v8, 0);
  objc_msgSend_setNextMaxTime_(self, v9, -1);
  objc_msgSend_setNextCoalescingTime_(self, v10, -1);
  objc_msgSend_setPending_(self, v11, 0);
  objc_msgSend_setInvoking_(self, v12, 1);
  v15 = objc_msgSend_group(self, v13, v14);
  v18 = objc_msgSend_sync(self, v16, v17);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_241DB65C0;
  v20[3] = &unk_278D1D008;
  v20[4] = self;
  v21 = v7;
  v19 = v7;
  dispatch_group_notify(v15, v18, v20);
}

- (void)_maxTimeExpired:(unint64_t)expired
{
  if (objc_msgSend_nextMaxTime(self, a2, expired) == expired)
  {

    objc_msgSend__invokeIfNotInProgress(self, v4, v5);
  }
}

- (void)_coalescingTimeExpired:(unint64_t)expired
{
  if (objc_msgSend_nextCoalescingTime(self, a2, expired) == expired)
  {

    objc_msgSend__invokeIfNotInProgress(self, v4, v5);
  }

  else if (objc_msgSend_nextCoalescingTime(self, v4, v5) != -1)
  {
    CoalescingTime = objc_msgSend_nextCoalescingTime(self, v6, v7);
    v11 = objc_msgSend_nextCoalescingTime(self, v9, v10);
    v14 = objc_msgSend_sync(self, v12, v13);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_241DB6E24;
    v15[3] = &unk_278D1D030;
    v15[4] = self;
    v15[5] = CoalescingTime;
    dispatch_after(v11, v14, v15);
  }
}

- (void)signalWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_sync(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DB6EEC;
  v9[3] = &unk_278D1D058;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_sync(v7, v9);
}

@end