@interface CLLocationAccessRecorder
- (CLLocationAccessRecorder)init;
- (id)getConnection;
- (id)getSynchronousRemoteObjectProxy;
- (int64_t)getLocationAccessRecordingIntervalState;
- (void)accessInflightMessageCache:(id)cache;
- (void)connect;
- (void)exportLocationAccessActivity:(id)activity;
- (void)getLocationAccessRecordStateWithReplyBlock:(id)block;
- (void)handleCacheMessage:(id)message;
- (void)handleMessageResend;
- (void)setLocationAccessRecordAsActiveForDays:(int64_t)days completionHandler:(id)handler;
@end

@implementation CLLocationAccessRecorder

- (CLLocationAccessRecorder)init
{
  v12.receiver = self;
  v12.super_class = CLLocationAccessRecorder;
  v2 = [(CLLocationAccessRecorder *)&v12 init];
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_connection(v2, v3, v4);
    v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
    objc_msgSend_setInflightMessageCache_(v5, v10, v9);

    v5->_handlersLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)connect
{
  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  v5 = objc_msgSend_initWithMachServiceName_options_(v3, v4, @"com.apple.locationaccessstored.registration", 0);
  v7 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v6, &unk_2868356C0);
  objc_msgSend_setRemoteObjectInterface_(v5, v8, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_25616CF44;
  v15[3] = &unk_279824620;
  v15[4] = self;
  objc_msgSend_setInvalidationHandler_(v5, v9, v15);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_25616CFB4;
  v14[3] = &unk_279824620;
  v14[4] = self;
  objc_msgSend_setInterruptionHandler_(v5, v10, v14);
  objc_msgSend_resume(v5, v11, v12);
  objc_msgSend_setConnection_(self, v13, v5);
}

- (id)getConnection
{
  connection = self->_connection;
  if (!connection)
  {
    objc_msgSend_connect(self, a2, v2);
    connection = self->_connection;
  }

  return connection;
}

- (id)getSynchronousRemoteObjectProxy
{
  v3 = objc_msgSend_getConnection(self, a2, v2);
  v5 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, v4, &unk_286833E98);

  return v5;
}

- (void)handleMessageResend
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_25616D38C;
  v21 = sub_25616D39C;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_25616D3A4;
  v16[3] = &unk_279824668;
  v16[4] = &v17;
  objc_msgSend_accessInflightMessageCache_(self, a2, v16);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v18[5];
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v23, 16);
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = objc_msgSend_objectForKeyedSubscript_(v18[5], v5, *(*(&v12 + 1) + 8 * v8), v12);
        objc_msgSend_handleCacheMessage_(self, v10, v9);

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v23, 16);
    }

    while (v6);
  }

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setLocationAccessRecordAsActiveForDays:(int64_t)days completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_msgSend_getConnection(self, v7, v8);
  v12 = objc_msgSend_remoteObjectProxy(v9, v10, v11);

  if (v12)
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = sub_25616D38C;
    v27 = sub_25616D39C;
    v28 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_25616D670;
    v19[3] = &unk_279824690;
    v21 = buf;
    v19[4] = self;
    v13 = handlerCopy;
    v20 = v13;
    daysCopy = days;
    objc_msgSend_accessInflightMessageCache_(self, v14, v19);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_25616D7E8;
    v16[3] = &unk_2798246B8;
    v16[4] = self;
    v17 = v13;
    v18 = buf;
    objc_msgSend_setLocationAccessRecordAsActiveForDays_completionHandler_(v12, v15, days, v16);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25616C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Location Access Store #CLLA no connection to proxy", buf, 2u);
    }
  }
}

- (void)exportLocationAccessActivity:(id)activity
{
  activityCopy = activity;
  v7 = objc_msgSend_getConnection(self, v5, v6);
  v10 = objc_msgSend_remoteObjectProxy(v7, v8, v9);

  if (v10)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = sub_25616D38C;
    v24 = sub_25616D39C;
    v25 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_25616DAD0;
    v17[3] = &unk_2798246E0;
    v19 = buf;
    v17[4] = self;
    v11 = activityCopy;
    v18 = v11;
    objc_msgSend_accessInflightMessageCache_(self, v12, v17);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_25616DC0C;
    v14[3] = &unk_279824708;
    v14[4] = self;
    v15 = v11;
    v16 = buf;
    objc_msgSend_exportLocationAccessActivity_(v10, v13, v14);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    (*(activityCopy + 2))(activityCopy, &stru_286833F58);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25616C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Location Access Store #CLLA no connection to proxy", buf, 2u);
    }
  }
}

- (int64_t)getLocationAccessRecordingIntervalState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_25616DD8C;
  v4[3] = &unk_279824730;
  v4[4] = &v5;
  objc_msgSend_getLocationAccessRecordStateWithReplyBlock_(self, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)getLocationAccessRecordStateWithReplyBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = objc_msgSend_getSynchronousRemoteObjectProxy(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_25616DEA0;
  v9[3] = &unk_279824730;
  v9[4] = &v10;
  objc_msgSend_getLocationAccessRecordStateWithReplyBlock_(v7, v8, v9);

  blockCopy[2](blockCopy, v11[3]);
  _Block_object_dispose(&v10, 8);
}

- (void)accessInflightMessageCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&self->_handlersLock);
  cacheCopy[2](cacheCopy, self->_inflightMessageCache);

  os_unfair_lock_unlock(&self->_handlersLock);
}

- (void)handleCacheMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = objc_msgSend_objectForKeyedSubscript_(messageCopy, v5, @"kInfoMessageNameKey");
  isEqual = objc_msgSend_isEqual_(v6, v7, @"kCLConnectionMessageSetLocationAccessRecordAsActive");

  if (isEqual)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(messageCopy, v9, @"kInfoSetRecordDaysKey");
    v13 = objc_msgSend_integerValue(v10, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(messageCopy, v14, @"kInfoMessageHandlerKey");
    objc_msgSend_setLocationAccessRecordAsActiveForDays_completionHandler_(self, v16, v13, v15);

LABEL_5:
    goto LABEL_8;
  }

  v17 = objc_msgSend_objectForKeyedSubscript_(messageCopy, v9, @"kInfoMessageNameKey");
  v19 = objc_msgSend_isEqual_(v17, v18, @"kCLConnectionMessageExportLocationAccessActivity");

  if (v19)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(messageCopy, v20, @"kInfoMessageHandlerKey");
    objc_msgSend_exportLocationAccessActivity_(self, v21, v10);
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v24 = objc_msgSend_objectForKeyedSubscript_(messageCopy, v22, @"kInfoMessageNameKey");
    v25 = 138412546;
    v26 = v24;
    v27 = 2112;
    selfCopy = self;
    _os_log_fault_impl(&dword_25616C000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "#Location Access Store #CLLA received unhandled message: %@ self: %@", &v25, 0x16u);
  }

LABEL_8:

  v23 = *MEMORY[0x277D85DE8];
}

@end