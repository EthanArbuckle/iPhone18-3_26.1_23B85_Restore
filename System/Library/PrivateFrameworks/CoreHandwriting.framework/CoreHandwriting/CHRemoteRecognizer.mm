@interface CHRemoteRecognizer
+ (int64_t)absoluteMaxStrokeCountPerRequest;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteRecognizer:(id)recognizer;
- (CGSize)minimumDrawingSize;
- (CHRemoteRecognizer)initWithEnableCachingIfAvailable:(BOOL)available;
- (id)connection;
- (unint64_t)hash;
- (void)dealloc;
- (void)logDrawingsAndResultsForRequest:(id)request result:(id)result error:(id)error;
- (void)setupXPCConnectionIfNeeded;
@end

@implementation CHRemoteRecognizer

- (CHRemoteRecognizer)initWithEnableCachingIfAvailable:(BOOL)available
{
  v14.receiver = self;
  v14.super_class = CHRemoteRecognizer;
  result = [(CHRemoteRecognizer *)&v14 init];
  if (result)
  {
    v5 = result;
    v6 = objc_opt_class();
    objc_msgSend_defaultMinimumDrawingSize(v6, v7, v8, v9, v10, v11);
    result = v5;
    v5->_minimumDrawingSize.width = v12;
    v5->_minimumDrawingSize.height = v13;
    v5->_priority = 0;
    v5->_enableCachingIfAvailable = available;
  }

  return result;
}

- (void)setupXPCConnectionIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->__connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v7 = objc_msgSend_initWithMachServiceName_options_(v3, v4, @"com.apple.handwritingd.remoterecognition", 0, v5, v6);
    connection = selfCopy->__connection;
    selfCopy->__connection = v7;

    v13 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v9, &unk_1EF2155C0, v10, v11, v12);
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v23 = objc_msgSend_setWithObjects_(v14, v19, v15, v20, v21, v22, v16, v17, v18, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v13, v24, v23, sel_transcriptionPathsForTokenizedTextResult_recognitionRequest_withReply_, 0, 1);
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v32 = objc_msgSend_setWithObjects_(v25, v28, v26, v29, v30, v31, v27, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v13, v33, v32, sel_handleRecognitionRequest_withReply_, 1, 1);
    objc_msgSend_setRemoteObjectInterface_(selfCopy->__connection, v34, v13, v35, v36, v37);
    objc_initWeak(&location, selfCopy);
    v38 = selfCopy->__connection;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = sub_1838B3B54;
    v52[3] = &unk_1E6DDD098;
    objc_copyWeak(&v53, &location);
    objc_msgSend_setInterruptionHandler_(v38, v39, v52, v40, v41, v42);
    objc_msgSend_setInvalidationHandler_(selfCopy->__connection, v43, &unk_1EF1BEEB0, v44, v45, v46);
    objc_msgSend_resume(selfCopy->__connection, v47, v48, v49, v50, v51);
    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (id)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->__connection;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)dealloc
{
  sub_1838B3C0C(self);
  v3.receiver = self;
  v3.super_class = CHRemoteRecognizer;
  [(CHRemoteRecognizer *)&v3 dealloc];
}

- (void)logDrawingsAndResultsForRequest:(id)request result:(id)result error:(id)error
{
  v136[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  errorCopy = error;
  if (os_variant_has_internal_diagnostics())
  {
    v15 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v10, v11, v12, v13, v14);
    v20 = objc_msgSend_dictionaryForKey_(v15, v16, @"com.apple.corehandwriting", v17, v18, v19);

    v25 = objc_msgSend_objectForKey_(v20, v21, @"CHLogAllDrawings", v22, v23, v24);
    v31 = objc_msgSend_BOOLValue(v25, v26, v27, v28, v29, v30);

    if (v31)
    {
      v37 = objc_msgSend_topTranscription(resultCopy, v32, v33, v34, v35, v36);
      v43 = &stru_1EF1C0318;
      v125 = v37;
      if (v37)
      {
        v43 = v37;
      }

      v136[0] = v43;
      v135[0] = @"string";
      v135[1] = @"request_description";
      v44 = objc_msgSend_debugDescription(requestCopy, v38, v39, v40, v41, v42);
      v136[1] = v44;
      v126 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v45, v136, v135, 2, v46);

      if (qword_1EA84D108 != -1)
      {
        dispatch_once(&qword_1EA84D108, &unk_1EF1BEED0);
      }

      v127 = objc_alloc_init(MEMORY[0x1E696AB78]);
      objc_msgSend_setDateFormat_(v127, v47, @"dd-MM-yyyy-HH-mm-ss-SSS", v48, v49, v50);
      v56 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v51, v52, v53, v54, v55);
      v62 = objc_msgSend_UUIDString(v56, v57, v58, v59, v60, v61);
      v128 = objc_msgSend_substringToIndex_(v62, v63, 4, v64, v65, v66);

      v72 = objc_msgSend_now(MEMORY[0x1E695DF00], v67, v68, v69, v70, v71);
      v77 = objc_msgSend_stringFromDate_(v127, v73, v72, v74, v75, v76);

      v83 = objc_msgSend_drawing(requestCopy, v78, v79, v80, v81, v82);
      LOBYTE(v72) = v83 == 0;

      if (v72)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v88 = qword_1EA84DC70;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v130 = @"CHLogAllDrawings";
          v131 = 2112;
          v132 = errorCopy;
          _os_log_impl(&dword_18366B000, v88, OS_LOG_TYPE_ERROR, "%@ skipping serialization of nil drawing. Error = %@", buf, 0x16u);
        }
      }

      else
      {
        v88 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v84, @"drawing_%@_%@.json", v85, v86, v87, v77, v128);
        v94 = objc_msgSend_drawing(requestCopy, v89, v90, v91, v92, v93);
        objc_msgSend_writeToFileWithContext_folder_basename_(v94, v95, v126, qword_1EA84D100, v88, v96);

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v97 = qword_1EA84DC70;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v130 = @"CHLogAllDrawings";
          v131 = 2112;
          v132 = qword_1EA84D100;
          v133 = 2112;
          v134 = v88;
          _os_log_impl(&dword_18366B000, v97, OS_LOG_TYPE_DEFAULT, "%@ serialize drawing to %@/%@, ", buf, 0x20u);
        }

        v102 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v98, @"request_%@_%@.hrr", v99, v100, v101, v77, v128);
        v106 = objc_msgSend_writeToFileInFolder_basename_(requestCopy, v103, qword_1EA84D100, v102, v104, v105);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v107 = qword_1EA84DC70;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v130 = @"CHLogAllDrawings";
          v131 = 2112;
          v132 = qword_1EA84D100;
          v133 = 2112;
          v134 = v102;
          _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_DEFAULT, "%@ serialize request to %@/%@, ", buf, 0x20u);
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v108 = qword_1EA84DC70;
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          v114 = objc_msgSend_debugDescription(requestCopy, v109, v110, v111, v112, v113);
          *buf = 138412546;
          v130 = @"CHLogAllDrawings";
          v131 = 2112;
          v132 = v114;
          _os_log_impl(&dword_18366B000, v108, OS_LOG_TYPE_DEFAULT, "%@ serialize request with description = %@", buf, 0x16u);
        }
      }

      if (resultCopy)
      {
        v119 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v115, @"result_%@_%@.dat", v116, v117, v118, v77, v128);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v120 = qword_1EA84DC70;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v130 = @"CHLogAllDrawings";
          v131 = 2112;
          v132 = qword_1EA84D100;
          v133 = 2112;
          v134 = v119;
          _os_log_impl(&dword_18366B000, v120, OS_LOG_TYPE_DEFAULT, "%@ serialize recognition result to %@/%@, ", buf, 0x20u);
        }

        v124 = objc_msgSend_writeToFileInFolder_basename_(resultCopy, v121, qword_1EA84D100, v119, v122, v123);
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v119 = qword_1EA84DC70;
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v130 = @"CHLogAllDrawings";
          v131 = 2112;
          v132 = errorCopy;
          _os_log_impl(&dword_18366B000, v119, OS_LOG_TYPE_ERROR, "%@ skipping serialization of nil result. Error = %@", buf, 0x16u);
        }
      }
    }
  }
}

- (BOOL)isEqualToRemoteRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self == recognizerCopy)
  {
    LOBYTE(v55) = 1;
  }

  else
  {
    objc_msgSend_minimumDrawingSize(self, v4, v5, v6, v7, v8);
    v11 = v10;
    v13 = v12;
    objc_msgSend_minimumDrawingSize(recognizerCopy, v14, v15, v16, v17, v18);
    v26 = v11 == v25 && v13 == v24;
    if (v26 && (v27 = objc_msgSend_maxRecognitionResultCount(self, v19, v20, v21, v22, v23), v27 == objc_msgSend_maxRecognitionResultCount(recognizerCopy, v28, v29, v30, v31, v32)) && (v38 = objc_msgSend_priority(self, v33, v34, v35, v36, v37), v38 == objc_msgSend_priority(recognizerCopy, v39, v40, v41, v42, v43)))
    {
      v49 = objc_msgSend_enableCachingIfAvailable(self, v44, v45, v46, v47, v48);
      v55 = v49 ^ objc_msgSend_enableCachingIfAvailable(recognizerCopy, v50, v51, v52, v53, v54) ^ 1;
    }

    else
    {
      LOBYTE(v55) = 0;
    }
  }

  return v55;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteRecognizer = objc_msgSend_isEqualToRemoteRecognizer_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToRemoteRecognizer;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v7 = (self->_minimumDrawingSize.height + self->_minimumDrawingSize.width);
  v8 = objc_msgSend_maxRecognitionResultCount(self, a2, v2, v3, v4, v5);
  return objc_msgSend_priority(self, v9, v10, v11, v12, v13) ^ v8 ^ self->_enableCachingIfAvailable ^ v7;
}

+ (int64_t)absoluteMaxStrokeCountPerRequest
{
  v2 = objc_opt_class();

  return objc_msgSend_drawingStrokeLimitForLocale_(v2, v3, 0, v4, v5, v6);
}

- (CGSize)minimumDrawingSize
{
  width = self->_minimumDrawingSize.width;
  height = self->_minimumDrawingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end