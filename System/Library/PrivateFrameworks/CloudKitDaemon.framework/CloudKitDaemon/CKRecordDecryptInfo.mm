@interface CKRecordDecryptInfo
- (CKRecordDecryptInfo)init;
- (CKRecordDecryptInfo)initWithRecord:(id)record callbackQueue:(id)queue;
- (void)_setupDecryptCallbackForQueue:(id)queue;
@end

@implementation CKRecordDecryptInfo

- (CKRecordDecryptInfo)init
{
  v2 = objc_alloc(MEMORY[0x277CBC360]);
  v3 = *MEMORY[0x277CBE660];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"You must call [%@ initWithRecord:callbackQueue:]", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (CKRecordDecryptInfo)initWithRecord:(id)record callbackQueue:(id)queue
{
  recordCopy = record;
  queueCopy = queue;
  v12 = queueCopy;
  if (recordCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDDecryptRecordsOperation.m", 66, @"You can't decrypt a nil record");

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKDDecryptRecordsOperation.m", 67, @"You must specify a callback queue");

LABEL_3:
  v21.receiver = self;
  v21.super_class = CKRecordDecryptInfo;
  v13 = [(CKRecordDecryptInfo *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_record, record);
    objc_msgSend__setupDecryptCallbackForQueue_(v14, v15, v12);
  }

  return v14;
}

- (void)_setupDecryptCallbackForQueue:(id)queue
{
  queueCopy = queue;
  v5 = dispatch_group_create();
  decryptGroup = self->_decryptGroup;
  self->_decryptGroup = v5;

  v9 = objc_msgSend_decryptGroup(self, v7, v8);
  dispatch_group_enter(v9);

  objc_initWeak(&location, self);
  v12 = objc_msgSend_decryptGroup(self, v10, v11);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225254B00;
  v13[3] = &unk_278547098;
  objc_copyWeak(&v14, &location);
  dispatch_group_notify(v12, queueCopy, v13);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end