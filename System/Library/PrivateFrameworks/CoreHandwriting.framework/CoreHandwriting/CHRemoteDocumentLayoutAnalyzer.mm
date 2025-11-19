@interface CHRemoteDocumentLayoutAnalyzer
- (BOOL)isEqual:(id)a3;
- (id)analyzeDrawing:(id)a3 strokeIdentifiers:(id)a4 contextStrokeIdentifiers:(id)a5 options:(id)a6 error:(id *)a7;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CHRemoteDocumentLayoutAnalyzer

- (id)analyzeDrawing:(id)a3 strokeIdentifiers:(id)a4 contextStrokeIdentifiers:(id)a5 options:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [CHRemoteDocumentLayoutAnalysisRequest alloc];
  v22 = objc_msgSend_priority(self, v17, v18, v19, v20, v21);
  v24 = objc_msgSend_initWithDrawing_strokeIdentifiers_contextStrokeIdentifiers_options_priority_(v16, v23, v12, v13, v14, v15, v22);
  v25 = v24;
  if (self)
  {
    v26 = self;
    objc_sync_enter(v26);
    if (v26->_connection)
    {
      objc_sync_exit(v26);

      if (v26->_connection)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x1E696B0B8]);
      v35 = objc_msgSend_initWithMachServiceName_options_(v31, v32, @"com.apple.handwritingd.remoterecognition", 0, v33, v34);
      connection = v26->_connection;
      v26->_connection = v35;

      v41 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v37, &unk_1EF2155C0, v38, v39, v40);
      objc_msgSend_setRemoteObjectInterface_(v26->_connection, v42, v41, v43, v44, v45);
      objc_initWeak(&location, v26);
      v46 = v26->_connection;
      *buf = MEMORY[0x1E69E9820];
      v90 = 3221225472;
      v91 = sub_1837365C4;
      v92 = &unk_1E6DDD098;
      objc_copyWeak(&v93, &location);
      objc_msgSend_setInterruptionHandler_(v46, v47, buf, v48, v49, v50);
      objc_msgSend_setInvalidationHandler_(v26->_connection, v51, &unk_1EF1BC5D8, v52, v53, v54);
      objc_msgSend_resume(v26->_connection, v55, v56, v57, v58, v59);
      objc_destroyWeak(&v93);
      objc_destroyWeak(&location);

      objc_sync_exit(v26);
      if (v26->_connection)
      {
        goto LABEL_15;
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v60 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
    }

    if (v26->_connection)
    {
LABEL_15:
      *buf = 0;
      v90 = buf;
      v91 = 0x3032000000;
      v92 = sub_18373632C;
      v93 = sub_18373633C;
      v94 = 0;
      location = 0;
      p_location = &location;
      v85 = 0x3032000000;
      v86 = sub_18373632C;
      v87 = sub_18373633C;
      v88 = 0;
      objc_msgSend_setHasBeenSubmitted_(v25, v27, 1, v28, v29, v30);
      v77 = 0;
      v78 = &v77;
      v79 = 0x3032000000;
      v80 = sub_18373632C;
      v81 = sub_18373633C;
      v82 = 0;
      v62 = v26->_connection;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = sub_183736344;
      v76[3] = &unk_1E6DDC2E0;
      v76[4] = &v77;
      v67 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v62, v63, v76, v64, v65, v66);
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = sub_183736464;
      v75[3] = &unk_1E6DDD070;
      v75[4] = buf;
      v75[5] = &location;
      objc_msgSend_handleDocumentLayoutAnalysisRequest_withReply_(v67, v68, v25, v75, v69, v70);
      v71 = v78[5];
      if (!v71)
      {
        v71 = p_location[5];
      }

      v72 = v71;
      self = *(v90 + 40);

      _Block_object_dispose(&v77, 8);
      _Block_object_dispose(&location, 8);

      _Block_object_dispose(buf, 8);
      v73 = v71;
      if (a7)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (qword_1EA84DC48 == -1)
    {
      v61 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v61 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
    goto LABEL_14;
  }

  v73 = 0;
  if (a7)
  {
LABEL_18:
    v73 = v73;
    *a7 = v73;
  }

LABEL_19:

  return self;
}

- (void)dealloc
{
  sub_18373667C(self);
  v3.receiver = self;
  v3.super_class = CHRemoteDocumentLayoutAnalyzer;
  [(CHRemoteDocumentLayoutAnalyzer *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v11 = v5;
    if (self)
    {
      if (self == v5)
      {
        LOBYTE(self) = 1;
      }

      else
      {
        self = objc_msgSend_priority(self, v6, v7, v8, v9, v10);
        LOBYTE(self) = self == objc_msgSend_priority(v11, v12, v13, v14, v15, v16);
      }
    }

    return self;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CHRemoteDocumentLayoutAnalyzer;
  return [(CHRemoteDocumentLayoutAnalyzer *)&v3 hash];
}

@end