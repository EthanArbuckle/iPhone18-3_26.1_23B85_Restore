@interface _BLAcquireSlotRequest
- (_BLAcquireSlotRequest)initWithDeviceGUID:(id)d;
- (void)_acquireSlotWithURL:(id)l;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation _BLAcquireSlotRequest

- (_BLAcquireSlotRequest)initWithDeviceGUID:(id)d
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = _BLAcquireSlotRequest;
  v5 = [(ICRequestOperation *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D7FC30]);
    active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v6, v7, v8, v9);
    requestContext = v5->_requestContext;
    v5->_requestContext = active;

    v15 = objc_msgSend_copy(dCopy, v12, v13, v14);
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v15;
  }

  return v5;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D110CC;
  v8[3] = &unk_278D158A0;
  v8[4] = self;
  v9 = handlerCopy;
  v5 = handlerCopy;
  objc_msgSend_performRequestWithCompletionHandler_(self, v6, v8, v7);
}

- (void)execute
{
  v5 = objc_msgSend_defaultBag(MEMORY[0x277CF3300], a2, v2, v3);
  objc_initWeak(&location, self);
  v9 = objc_msgSend_acquireSlotURL(v5, v6, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D11218;
  v12[3] = &unk_278D158C8;
  objc_copyWeak(&v13, &location);
  objc_msgSend_valueWithCompletion_(v9, v10, v12, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_acquireSlotWithURL:(id)l
{
  v55 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v5;
  deviceGUID = self->_deviceGUID;
  if (deviceGUID)
  {
    objc_msgSend_setObject_forKey_(v5, v6, deviceGUID, @"guid");
  }

  v10 = objc_msgSend_deviceInfo(self->_requestContext, v6, deviceGUID, v7);
  isWatch = objc_msgSend_isWatch(v10, v11, v12, v13);

  if (isWatch)
  {
    v18 = objc_msgSend_sharedMonitor(MEMORY[0x277D7FBA8], v15, v16, v17);
    v22 = objc_msgSend_pairedDeviceMediaGUID(v18, v19, v20, v21);

    if (objc_msgSend_length(v22, v23, v24, v25))
    {
      objc_msgSend_setObject_forKey_(v8, v26, v22, @"companion-guid");
    }

    else
    {
      v27 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_241D0D000, v27, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain companion guid.", buf, 0xCu);
      }
    }
  }

  v52 = 0;
  v28 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v15, v8, 100, 0, &v52);
  v29 = v52;
  v30 = v29;
  if (!v28 || v29)
  {
    v31 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = v30;
      _os_log_impl(&dword_241D0D000, v31, OS_LOG_TYPE_ERROR, "Failed to serialize property list for acquireSlot request! %@", buf, 0xCu);
    }
  }

  v32 = objc_alloc(MEMORY[0x277CCAB70]);
  v35 = objc_msgSend_initWithURL_(v32, v33, lCopy, v34);
  objc_msgSend_setHTTPMethod_(v35, v36, @"POST", v37);
  objc_msgSend_setHTTPBody_(v35, v38, v28, v39);
  objc_msgSend_setValue_forHTTPHeaderField_(v35, v40, *MEMORY[0x277D7F910], *MEMORY[0x277D7F918]);
  objc_initWeak(buf, self);
  v41 = objc_alloc(MEMORY[0x277D7FC38]);
  v43 = objc_msgSend_initWithURLRequest_requestContext_(v41, v42, v35, self->_requestContext);
  v47 = objc_msgSend_highPrioritySession(MEMORY[0x277D7FC90], v44, v45, v46);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_241D11644;
  v50[3] = &unk_278D158F0;
  objc_copyWeak(&v51, buf);
  objc_msgSend_enqueueDataRequest_withCompletionHandler_(v47, v48, v43, v50);
  objc_destroyWeak(&v51);

  objc_destroyWeak(buf);
  v49 = *MEMORY[0x277D85DE8];
}

@end