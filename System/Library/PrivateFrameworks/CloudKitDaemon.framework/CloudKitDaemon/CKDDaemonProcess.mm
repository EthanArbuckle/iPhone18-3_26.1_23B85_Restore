@interface CKDDaemonProcess
+ (id)currentProcess;
- (id)_initWithArgC:(int)a3 argv:(const char *)a4;
- (id)_initWithProcessType:(int64_t)a3;
- (id)chunkDataFromSignature:(id)a3 forContainerIdentifier:(id)a4;
@end

@implementation CKDDaemonProcess

+ (id)currentProcess
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = qword_280D586E0;
  if (!qword_280D586E0)
  {
    v4 = [CKDDaemonProcess alloc];
    v6 = objc_msgSend__initWithProcessType_(v4, v5, 2);
    v7 = qword_280D586E0;
    qword_280D586E0 = v6;

    v3 = qword_280D586E0;
  }

  v8 = v3;
  objc_sync_exit(v2);

  return v8;
}

- (id)_initWithProcessType:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = CKDDaemonProcess;
  v4 = [(CKDDaemonProcess *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_processType = a3;
    if (*MEMORY[0x277CBC820] != -1)
    {
      dispatch_once(MEMORY[0x277CBC820], &unk_28385E920);
    }

    *(v5 + 8) = *MEMORY[0x277CBC818];
    if (!a3 && _os_feature_enabled_impl())
    {
      v6 = objc_alloc(MEMORY[0x277CF36C8]);
      v8 = objc_msgSend_initWithChunkDelegate_(v6, v7, v5);
      v9 = *(v5 + 24);
      *(v5 + 24) = v8;
    }
  }

  return v5;
}

- (id)_initWithArgC:(int)a3 argv:(const char *)a4
{
  v8 = 0;
  v9 = 0;
  v29 = *MEMORY[0x277D85DE8];
  v25 = xmmword_27854E090;
  v26 = unk_27854E0A0;
  v27 = xmmword_27854E0B0;
  v28 = unk_27854E0C0;
  v22 = *ymmword_27854E050;
  v23 = xmmword_27854E070;
  v24 = unk_27854E080;
  while (1)
  {
    while (1)
    {
      v10 = getopt_long_only(a3, a4, "std", &v22, 0);
      if (v10 <= 114)
      {
        break;
      }

      if (v10 == 115)
      {
        v8 = 1;
      }

      else if (v10 == 116)
      {
        v8 = 2;
      }
    }

    if (v10 == -1)
    {
      break;
    }

    if (v10 == 100)
    {
      v9 = 1;
    }
  }

  v12 = objc_msgSend__initWithProcessType_(self, v11, v8, *&v22.name, *&v22.flag, v23, v24, v25, v26, v27, v28);
  v15 = v12;
  if (v12)
  {
    if (*(v12 + 8) == (v9 & 1))
    {
      v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, v15, @"CKDDaemonProcess.m", 86, @"Incompatible env and cli arguments for using debug");
    }

    if ((v15[2] == 2) != *MEMORY[0x277CBC810])
    {
      v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, v15, @"CKDDaemonProcess.m", 87, @"Incompatible env and cli arguments for supporting test hooks");
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)chunkDataFromSignature:(id)a3 forContainerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_22507420C;
    v28 = sub_225073684;
    v29 = 0;
    v10 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v8, v9);
    v13 = objc_msgSend_metadataCache(v10, v11, v12);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_225403F60;
    v18[3] = &unk_27854E0D8;
    v19 = v7;
    v20 = self;
    v21 = v6;
    v14 = v10;
    v22 = v14;
    v23 = &v24;
    objc_msgSend_enumerateKnownAppContainerAccountTuplesUsingBlock_(v13, v15, v18);

    v16 = v25[5];
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end