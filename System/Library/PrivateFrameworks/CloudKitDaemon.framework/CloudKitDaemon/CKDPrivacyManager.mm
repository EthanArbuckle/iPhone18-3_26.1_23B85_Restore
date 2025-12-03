@interface CKDPrivacyManager
+ (id)sharedManager;
- (CKDPrivacyManager)init;
- (id)initInternal;
- (void)_resetPrivacySettingsForAppContainerAccountTuple:(id)tuple completionHandler:(id)handler;
- (void)resetPrivacySettingsWithCompletionHandler:(id)handler;
@end

@implementation CKDPrivacyManager

+ (id)sharedManager
{
  if (qword_280D586B8 != -1)
  {
    dispatch_once(&qword_280D586B8, &unk_28385EAC0);
  }

  v3 = qword_280D586B0;

  return v3;
}

- (CKDPrivacyManager)init
{
  v2 = objc_alloc(MEMORY[0x277CBC360]);
  v4 = objc_msgSend_initWithCode_format_(v2, v3, 12, @"Use +[CKDPrivacyManager sharedManager] instead");
  objc_exception_throw(v4);
}

- (id)initInternal
{
  v10.receiver = self;
  v10.super_class = CKDPrivacyManager;
  v2 = [(CKDPrivacyManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.cloudkit.privacyManagerQueue", v4);
    privacyManagerQueue = v2->_privacyManagerQueue;
    v2->_privacyManagerQueue = v5;

    v7 = objc_opt_new();
    operations = v2->_operations;
    v2->_operations = v7;
  }

  return v2;
}

- (void)resetPrivacySettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_privacyManagerQueue(self, v6, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22540A92C;
  block[3] = &unk_278547E60;
  v11 = handlerCopy;
  v12 = a2;
  block[4] = self;
  v9 = handlerCopy;
  dispatch_async(v8, block);
}

- (void)_resetPrivacySettingsForAppContainerAccountTuple:(id)tuple completionHandler:(id)handler
{
  tupleCopy = tuple;
  handlerCopy = handler;
  v10 = objc_msgSend_privacyManagerQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22540B010;
  block[3] = &unk_278546C30;
  v14 = tupleCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = tupleCopy;
  dispatch_async(v10, block);
}

@end