@interface CKDClientInfo
+ (id)sharedClientInfo;
- (CKDClientInfo)init;
- (NSString)hostname;
- (id)initInternal;
- (void)_refreshHostname;
- (void)dealloc;
@end

@implementation CKDClientInfo

+ (id)sharedClientInfo
{
  if (qword_280D585F0 != -1)
  {
    dispatch_once(&qword_280D585F0, &unk_28385E900);
  }

  v3 = qword_280D585E8;

  return v3;
}

- (NSString)hostname
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_cachedHostname)
  {
    objc_msgSend__refreshHostname(v2, v3, v4);
  }

  objc_sync_exit(v2);

  cachedHostname = v2->_cachedHostname;

  return cachedHostname;
}

- (CKDClientInfo)init
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v8, a2, self, @"CKDClientInfo.m", 49, @"Use +[%@ sharedClientInfo]", v7);

  return 0;
}

- (id)initInternal
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CKDClientInfo;
  v2 = [(CKDClientInfo *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.cloudkit.clientinfo.callback", v4);
    hostCallbackQueue = v2->_hostCallbackQueue;
    v2->_hostCallbackQueue = v5;

    objc_initWeak(&location, v2);
    v14[0] = @"UserAssignedDeviceName";
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v14, 1);
    v8 = v2->_hostCallbackQueue;
    objc_copyWeak(&v11, &location);
    v2->_hostNotificationToken = MGRegisterForUpdates();
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  hostNotificationToken = self->_hostNotificationToken;
  MGCancelNotifications();
  v4.receiver = self;
  v4.super_class = CKDClientInfo;
  [(CKDClientInfo *)&v4 dealloc];
}

- (void)_refreshHostname
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"hostname");
  v3 = self;
  objc_sync_enter(v3);
  v4 = MGCopyAnswer();
  cachedHostname = v3->_cachedHostname;
  v3->_cachedHostname = v4;

  if (objc_msgSend_maximumLengthOfBytesUsingEncoding_(v3->_cachedHostname, v6, 4) >= 0x3E9)
  {
    v7 = 10;
    v9 = objc_autoreleasePoolPush();
    while (objc_msgSend_lengthOfBytesUsingEncoding_(v3->_cachedHostname, v8, 4) >= 0x3E9)
    {
      v11 = objc_msgSend_substringToIndex_(v3->_cachedHostname, v10, 1010 - v7);
      v12 = v3->_cachedHostname;
      v3->_cachedHostname = v11;

      v7 *= 2;
    }

    objc_autoreleasePoolPop(v9);
  }

  objc_sync_exit(v3);

  MEMORY[0x2821F9670](v3, sel_didChangeValueForKey_, @"hostname");
}

@end