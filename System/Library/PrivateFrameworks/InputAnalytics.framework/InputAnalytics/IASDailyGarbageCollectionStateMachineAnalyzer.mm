@interface IASDailyGarbageCollectionStateMachineAnalyzer
- (BOOL)asynchronousSignalIsConsistent:(id)consistent;
@end

@implementation IASDailyGarbageCollectionStateMachineAnalyzer

- (BOOL)asynchronousSignalIsConsistent:(id)consistent
{
  consistentCopy = consistent;
  v7 = objc_msgSend_creationTimestamp(consistentCopy, v5, v6);

  if (!v7)
  {
    goto LABEL_7;
  }

  v10 = objc_msgSend_lastConsumedAsyncSignal(self, v8, v9);

  if (!v10)
  {
    objc_msgSend_setLastConsumedAsyncSignal_(self, v11, consistentCopy);
LABEL_7:
    v25 = 1;
    goto LABEL_8;
  }

  v13 = objc_msgSend_lastConsumedAsyncSignal(self, v11, v12);
  v16 = objc_msgSend_creationTimestamp(v13, v14, v15);

  v19 = objc_msgSend_creationTimestamp(consistentCopy, v17, v18);
  objc_msgSend_setLastConsumedAsyncSignal_(self, v20, consistentCopy);
  v22 = objc_msgSend_compare_(v16, v21, v19);
  v25 = v22 != 1;
  if (v22 == 1)
  {
    v26 = objc_msgSend_sessionErrors(self, v23, v24);
    objc_msgSend_logErrorCodeIfNotNil_(v26, v27, 0x1F4FDDDF8);
  }

LABEL_8:
  return v25;
}

@end