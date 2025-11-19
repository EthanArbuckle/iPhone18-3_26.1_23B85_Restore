@interface CHRemoteSketchRecognizer
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRemoteSketchRecognizer:(id)a3;
- (CHRemoteSketchRecognizer)initWithPriority:(int64_t)a3;
- (id)sketchRecognitionResultsForDrawing:(id)a3 options:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation CHRemoteSketchRecognizer

- (CHRemoteSketchRecognizer)initWithPriority:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = CHRemoteSketchRecognizer;
  v4 = [(CHRemoteRecognizer *)&v10 initWithEnableCachingIfAvailable:0];
  objc_msgSend_setPriority_(v4, v5, a3, v6, v7, v8);
  return v4;
}

- (id)sketchRecognitionResultsForDrawing:(id)a3 options:(id)a4 error:(id *)a5
{
  if (self)
  {
    v7 = a4;
    v8 = a3;
    v9 = [CHRemoteRecognitionSketchRequest alloc];
    v15 = objc_msgSend_priority(self, v10, v11, v12, v13, v14);
    v18 = objc_msgSend_initWithDrawing_options_priority_(v9, v16, v8, v7, v15, v17);

    v24 = objc_msgSend_maxRecognitionResultCount(self, v19, v20, v21, v22, v23);
    objc_msgSend_setMaxRecognitionResultCount_(v18, v25, v24, v26, v27, v28);
    objc_msgSend_minimumDrawingSize(self, v29, v30, v31, v32, v33);
    objc_msgSend_setMinimumDrawingSize_(v18, v34, v35, v36, v37, v38);
    v44 = objc_msgSend_enableCachingIfAvailable(self, v39, v40, v41, v42, v43);
    objc_msgSend_setEnableCachingIfAvailable_(v18, v45, v44, v46, v47, v48);
    v129 = v18;
    v49 = self;
    objc_sync_enter(v49);
    v50 = &off_1839CD000;
    if (!v49->__connection)
    {
      v51 = objc_alloc(MEMORY[0x1E696B0B8]);
      v55 = objc_msgSend_initWithMachServiceName_options_(v51, v52, @"com.apple.handwritingd.remoterecognition", 0, v53, v54);
      connection = v49->__connection;
      v49->__connection = v55;

      v128 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v57, &unk_1EF2155C0, v58, v59, v60);
      v127 = MEMORY[0x1E695DFD8];
      v126 = objc_opt_class();
      v125 = objc_opt_class();
      v124 = objc_opt_class();
      v123 = objc_opt_class();
      v122 = objc_opt_class();
      v121 = objc_opt_class();
      v120 = objc_opt_class();
      v119 = objc_opt_class();
      v61 = objc_opt_class();
      v62 = objc_opt_class();
      v63 = objc_opt_class();
      v64 = objc_opt_class();
      v65 = objc_opt_class();
      v66 = objc_opt_class();
      v67 = objc_opt_class();
      v68 = objc_opt_class();
      v69 = objc_opt_class();
      v74 = objc_msgSend_setWithObjects_(v127, v70, v126, v71, v72, v73, v125, v124, v123, v122, v121, v120, v119, v61, v62, v63, v64, v65, v66, v67, v68, v69, 0);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v128, v75, v74, sel_handleSketchRecognitionRequest_withReply_, 0, 1);
      objc_msgSend_setRemoteObjectInterface_(v49->__connection, v76, v128, v77, v78, v79);
      objc_initWeak(&location, v49);
      v80 = v49->__connection;
      *buf = MEMORY[0x1E69E9820];
      v155 = 3221225472;
      v156 = sub_183737618;
      v157 = &unk_1E6DDD110;
      objc_copyWeak(&v158, &location);
      objc_msgSend_setInterruptionHandler_(v80, v81, buf, v82, v83, v84);
      objc_msgSend_setInvalidationHandler_(v49->__connection, v85, &unk_1EF1BC5F8, v86, v87, v88);
      objc_msgSend_resume(v49->__connection, v89, v90, v91, v92, v93);
      objc_destroyWeak(&v158);
      objc_destroyWeak(&location);

      v50 = &off_1839CD000;
    }

    objc_sync_exit(v49);

    v94 = v49;
    objc_sync_enter(v94);
    v95 = v94->__connection;
    objc_sync_exit(v94);

    if (!v95)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v96 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v96, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
      }
    }

    v97 = v94;
    objc_sync_enter(v97);
    v98 = v97->__connection;
    objc_sync_exit(v97);

    if (!v98)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v99 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v99, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
      }
    }

    *buf = 0;
    v155 = buf;
    v156 = 0x3032000000;
    v157 = sub_1837371F4;
    v158 = sub_183737204;
    v159 = 0;
    v100 = v97;
    objc_sync_enter(v100);
    v101 = v100[7];
    objc_sync_exit(v100);

    v149 = MEMORY[0x1E69E9820];
    v150 = *(v50 + 186);
    v102 = v150;
    v151 = sub_18373720C;
    v152 = &unk_1E6DDD0C0;
    v153 = buf;
    v107 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v101, v103, &v149, v104, v105, v106);

    location = 0;
    p_location = &location;
    v145 = 0x3032000000;
    v146 = sub_1837371F4;
    v147 = sub_183737204;
    v148 = 0;
    v137 = 0;
    v138 = &v137;
    v139 = 0x3032000000;
    v140 = sub_1837371F4;
    v141 = sub_183737204;
    v142 = 0;
    v133 = 0;
    v134 = &v133;
    v135 = 0x2020000000;
    v136 = 0;
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = v102;
    v132[2] = sub_183737314;
    v132[3] = &unk_1E6DDD0E8;
    v132[4] = &location;
    v132[5] = &v137;
    v132[6] = &v133;
    v108 = v129;
    objc_msgSend_handleSketchRecognitionRequest_withReply_(v107, v109, v129, v132, v110, v111);
    if ((v134[3] & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v112 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *v131 = 0;
        _os_log_impl(&dword_18366B000, v112, OS_LOG_TYPE_ERROR, "Sketch request did not execute reply block", v131, 2u);
      }
    }

    v113 = *(v155 + 40);
    if (!v113)
    {
      v113 = v138[5];
    }

    v114 = v113;
    v115 = p_location[5];
    _Block_object_dispose(&v133, 8);
    _Block_object_dispose(&v137, 8);

    _Block_object_dispose(&location, 8);
    _Block_object_dispose(buf, 8);

    v116 = v113;
    v117 = a5;
    if (a5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v108 = 0;
    v115 = 0;

    v116 = 0;
    v117 = a5;
    if (a5)
    {
LABEL_25:
      v116 = v116;
      *v117 = v116;
    }
  }

  return v115;
}

- (BOOL)isEqualToRemoteSketchRecognizer:(id)a3
{
  v9 = a3;
  if (self == v9)
  {
    v57 = 1;
  }

  else
  {
    objc_msgSend_minimumDrawingSize(self, v4, v5, v6, v7, v8);
    v11 = v10;
    v13 = v12;
    objc_msgSend_minimumDrawingSize(v9, v14, v15, v16, v17, v18);
    if (v11 != v25 || v13 != v24)
    {
      goto LABEL_14;
    }

    v27 = objc_msgSend_activeCharacterSet(self, v19, v20, v21, v22, v23);
    v33 = objc_msgSend_activeCharacterSet(v9, v28, v29, v30, v31, v32);
    v39 = v33;
    if (v27 == v33)
    {
    }

    else
    {
      v40 = objc_msgSend_activeCharacterSet(self, v34, v35, v36, v37, v38);
      v46 = objc_msgSend_activeCharacterSet(v9, v41, v42, v43, v44, v45);
      isEqual = objc_msgSend_isEqual_(v40, v47, v46, v48, v49, v50);

      if (!isEqual)
      {
        goto LABEL_14;
      }
    }

    v58 = objc_msgSend_maxRecognitionResultCount(self, v52, v53, v54, v55, v56);
    if (v58 != objc_msgSend_maxRecognitionResultCount(v9, v59, v60, v61, v62, v63))
    {
LABEL_14:
      v57 = 0;
      goto LABEL_15;
    }

    v69 = objc_msgSend_priority(self, v64, v65, v66, v67, v68);
    v57 = v69 == objc_msgSend_priority(v9, v70, v71, v72, v73, v74);
  }

LABEL_15:

  return v57;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteSketchRecognizer = objc_msgSend_isEqualToRemoteSketchRecognizer_(self, v5, v4, v6, v7, v8);

    return isEqualToRemoteSketchRecognizer;
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  if (self)
  {
    v3 = self;
    objc_sync_enter(v3);
    objc_msgSend_invalidate(v3->__connection, v4, v5, v6, v7, v8);
    connection = v3->__connection;
    v3->__connection = 0;

    objc_sync_exit(v3);
  }

  v10.receiver = self;
  v10.super_class = CHRemoteSketchRecognizer;
  [(CHRemoteRecognizer *)&v10 dealloc];
}

@end