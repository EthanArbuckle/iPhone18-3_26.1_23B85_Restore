@interface HIDTransaction
- (BOOL)commitElements:(id)elements error:(id *)error timeout:(int64_t)timeout callback:(id)callback;
- (HIDTransaction)initWithDevice:(id)device;
- (void)dealloc;
@end

@implementation HIDTransaction

- (HIDTransaction)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = HIDTransaction;
  v5 = [(HIDTransaction *)&v9 init];
  if (v5 && (v6 = IOHIDTransactionCreate(*MEMORY[0x277CBECE8], deviceCopy, kIOHIDTransactionDirectionTypeInput, 1u), (v5->_transaction = v6) != 0))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  transaction = self->_transaction;
  if (transaction)
  {
    CFRelease(transaction);
  }

  v4.receiver = self;
  v4.super_class = HIDTransaction;
  [(HIDTransaction *)&v4 dealloc];
}

- (BOOL)commitElements:(id)elements error:(id *)error timeout:(int64_t)timeout callback:(id)callback
{
  v27 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  callbackCopy = callback;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [elementsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(elementsCopy);
        }

        IOHIDTransactionAddElement(self->_transaction, *(*(&v22 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [elementsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  transaction = self->_transaction;
  if (callbackCopy)
  {
    v17 = _Block_copy(callbackCopy);
    v18 = IOHIDTransactionCommitWithCallback(transaction, timeout, asyncCommitCallback, v17);
  }

  else
  {
    v18 = IOHIDTransactionCommit(self->_transaction);
  }

  v19 = v18;
  IOHIDTransactionClear(self->_transaction);
  if (v19)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithIOReturn:v19];
    }

    if (callbackCopy)
    {
      _Block_release(callbackCopy);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

@end