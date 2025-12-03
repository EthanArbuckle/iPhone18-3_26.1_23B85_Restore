@interface NFRestoreServiceServer
+ (BOOL)checkCurrentuser;
- (NFRestoreServiceServer)init;
- (void)runService:(id)service callback:(id)callback;
@end

@implementation NFRestoreServiceServer

- (NFRestoreServiceServer)init
{
  v6.receiver = self;
  v6.super_class = NFRestoreServiceServer;
  v2 = [(NFRestoreServiceServer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nfrestore.messages", 0);
    messageQueue = v2->messageQueue;
    v2->messageQueue = v3;
  }

  return v2;
}

+ (BOOL)checkCurrentuser
{
  v2 = getpwnam("mobile");
  if (v2)
  {
    LOBYTE(v2) = getuid() == v2->pw_uid;
  }

  return v2;
}

- (void)runService:(id)service callback:(id)callback
{
  serviceCopy = service;
  callbackCopy = callback;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v10(5, "%c[%{public}s %{public}s]:%i Received request to update FW with options : %@", v13, ClassName, Name, 54, serviceCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    *buf = 67110146;
    *&buf[4] = v16;
    *v40 = 2082;
    *&v40[2] = object_getClassName(self);
    *&v40[10] = 2082;
    *&v40[12] = sel_getName(a2);
    *&v40[20] = 1024;
    *&v40[22] = 54;
    *&v40[26] = 2112;
    *&v40[28] = serviceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Received request to update FW with options : %@", buf, 0x2Cu);
  }

  *buf = 0;
  *v40 = buf;
  *&v40[8] = 0x3032000000;
  *&v40[16] = sub_1000014B8;
  *&v40[24] = sub_1000014C8;
  *&v40[32] = os_transaction_create();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1000014B8;
  v37 = sub_1000014C8;
  v38 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v17 = v34[5];
  v18 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v19 = v34[5];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000014D0;
  handler[3] = &unk_1000041F0;
  handler[4] = self;
  handler[5] = a2;
  dispatch_source_set_event_handler(v19, handler);
  dispatch_resume(v34[5]);
  messageQueue = self->messageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001610;
  block[3] = &unk_100004218;
  v26 = serviceCopy;
  selfCopy = self;
  v28 = callbackCopy;
  v29 = &v33;
  v30 = buf;
  v31 = a2;
  v21 = callbackCopy;
  v22 = serviceCopy;
  dispatch_async(messageQueue, block);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(buf, 8);
}

@end