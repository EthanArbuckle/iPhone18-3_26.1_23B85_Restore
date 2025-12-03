@interface BUBlockCallThrottler
- (BOOL)_runBlock:(id)block throttle:(BOOL)throttle;
- (BUBlockCallThrottler)init;
@end

@implementation BUBlockCallThrottler

- (BUBlockCallThrottler)init
{
  v3.receiver = self;
  v3.super_class = BUBlockCallThrottler;
  result = [(BUBlockCallThrottler *)&v3 init];
  if (result)
  {
    result->_minimumTimeBetweenCalls = 2.0;
  }

  return result;
}

- (BOOL)_runBlock:(id)block throttle:(BOOL)throttle
{
  throttleCopy = throttle;
  blockCopy = block;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v7, v8);
  objc_msgSend_minimumTimeBetweenCalls(self, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_lastBlockCallDate(self, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_lastBlockCallDate(self, v17, v18);
    objc_msgSend_timeIntervalSinceDate_(v9, v20, v19);
    v22 = v21;
  }

  else
  {
    v22 = v13 + 1.0;
  }

  if ((objc_msgSend_running(self, v17, v18) & 1) != 0 || throttleCopy && (objc_msgSend_minimumTimeBetweenCalls(self, v23, v24), v22 < v28))
  {
    v25 = objc_msgSend_date(MEMORY[0x277CBEAA8], v23, v24);
    objc_msgSend_setLastBlockCallDate_(self, v26, v25);
  }

  else if (blockCopy)
  {
    v27 = 1;
    objc_msgSend_setRunning_(self, v23, 1);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_241DC7794;
    v30[3] = &unk_278D1D148;
    v30[4] = self;
    blockCopy[2](blockCopy, v30);
    goto LABEL_11;
  }

  v27 = 0;
LABEL_11:

  return v27;
}

@end