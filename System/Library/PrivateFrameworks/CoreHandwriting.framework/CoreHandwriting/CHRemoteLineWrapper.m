@interface CHRemoteLineWrapper
- (BOOL)isEqual:(id)a3;
- (CHRemoteLineWrapper)initWithEnableCachingIfAvailable:(BOOL)a3;
- (id)lineWrappingResultForGroups:(id)a3 options:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation CHRemoteLineWrapper

- (CHRemoteLineWrapper)initWithEnableCachingIfAvailable:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CHRemoteLineWrapper;
  result = [(CHRemoteLineWrapper *)&v5 init];
  if (result)
  {
    result->_enableCachingIfAvailable = a3;
  }

  return result;
}

- (void)dealloc
{
  if (self)
  {
    objc_msgSend_invalidate(self->_connection, a2, v2, v3, v4, v5);
    connection = self->_connection;
    self->_connection = 0;
  }

  v8.receiver = self;
  v8.super_class = CHRemoteLineWrapper;
  [(CHRemoteLineWrapper *)&v8 dealloc];
}

- (id)lineWrappingResultForGroups:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [CHRemoteLineWrappingRequest alloc];
  v14 = objc_msgSend_initWithLineWrappableGroups_options_(v10, v11, v8, v9, v12, v13);
  v19 = v14;
  if (self)
  {
    connection = self->_connection;
    v21 = &off_1839CD000;
    if (connection)
    {
      goto LABEL_13;
    }

    v22 = objc_alloc(MEMORY[0x1E696B0B8]);
    v26 = objc_msgSend_initWithMachServiceName_options_(v22, v23, @"com.apple.handwritingd.remoterecognition", 0, v24, v25);
    v27 = self->_connection;
    self->_connection = v26;

    v32 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v28, &unk_1EF2155C0, v29, v30, v31);
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v42 = objc_msgSend_setWithObjects_(v33, v38, v34, v39, v40, v41, v35, v36, v37, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v32, v43, v42, sel_transcriptionPathsForTokenizedTextResult_recognitionRequest_withReply_, 0, 1);
    objc_msgSend_setRemoteObjectInterface_(self->_connection, v44, v32, v45, v46, v47);
    objc_initWeak(&location, self);
    v48 = self->_connection;
    *buf = MEMORY[0x1E69E9820];
    v93 = 3221225472;
    v94 = sub_18373F7F4;
    v95 = &unk_1E6DDD098;
    objc_copyWeak(&v96, &location);
    objc_msgSend_setInterruptionHandler_(v48, v49, buf, v50, v51, v52);
    objc_msgSend_setInvalidationHandler_(self->_connection, v53, &unk_1EF1BC658, v54, v55, v56);
    objc_msgSend_resume(self->_connection, v57, v58, v59, v60, v61);
    objc_destroyWeak(&v96);
    objc_destroyWeak(&location);

    connection = self->_connection;
    v21 = &off_1839CD000;
    if (connection)
    {
      goto LABEL_13;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v62 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
    }

    connection = self->_connection;
    v21 = &off_1839CD000;
    if (connection)
    {
LABEL_13:
      *buf = 0;
      v93 = buf;
      v94 = 0x3032000000;
      v95 = sub_18373FFC8;
      v96 = sub_18373FFD8;
      v97 = 0;
      location = 0;
      p_location = &location;
      v88 = 0x3032000000;
      v89 = sub_18373FFC8;
      v90 = sub_18373FFD8;
      v91 = 0;
      v80 = 0;
      v81 = &v80;
      v82 = 0x3032000000;
      v83 = sub_18373FFC8;
      v84 = sub_18373FFD8;
      v85 = 0;
      v75 = MEMORY[0x1E69E9820];
      v76 = *(v21 + 186);
      v64 = v76;
      v77 = sub_18373FFE0;
      v78 = &unk_1E6DDC2E0;
      v79 = &v80;
      v65 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(connection, v15, &v75, v16, v17, v18);
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = v64;
      v74[2] = sub_183740100;
      v74[3] = &unk_1E6DDD2B8;
      v74[4] = buf;
      v74[5] = &location;
      objc_msgSend_handleLineWrappingRequest_withReply_(v65, v66, v19, v74, v67, v68);
      v69 = v81;
      if (!v81[5])
      {
        v69 = p_location;
      }

      v70 = v69[5];
      v71 = v70;
      self = *(v93 + 40);

      _Block_object_dispose(&v80, 8);
      _Block_object_dispose(&location, 8);

      _Block_object_dispose(buf, 8);
      v72 = v70;
      if (a5)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if (qword_1EA84DC48 == -1)
    {
      v63 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
LABEL_12:

        connection = self->_connection;
        v21 = &off_1839CD000;
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v63 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
    goto LABEL_12;
  }

  v72 = 0;
  if (a5)
  {
LABEL_16:
    v72 = v72;
    *a5 = v72;
  }

LABEL_17:

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteLineWrapper = objc_msgSend_isEqualToRemoteLineWrapper_(self, v5, v4, v6, v7, v8);

    return isEqualToRemoteLineWrapper;
  }

  else
  {

    return 0;
  }
}

@end