@interface CHPostProcessingManager
- (CHPostProcessingManager)init;
- (CHPostProcessingManager)initWithSequence:(id)a3;
- (CHPostProcessingManager)initWithStep:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHPostProcessingManager

- (CHPostProcessingManager)init
{
  v6.receiver = self;
  v6.super_class = CHPostProcessingManager;
  v2 = [(CHPostProcessingManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    sequence = v2->_sequence;
    v2->_sequence = v3;
  }

  return v2;
}

- (CHPostProcessingManager)initWithStep:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DEC8]);
  v10 = objc_msgSend_initWithObjects_(v5, v6, v4, v7, v8, v9, 0);
  v15 = objc_msgSend_initWithSequence_(self, v11, v10, v12, v13, v14);

  return v15;
}

- (CHPostProcessingManager)initWithSequence:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHPostProcessingManager;
  v6 = [(CHPostProcessingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sequence, a3);
  }

  return v7;
}

- (id)process:(id)a3 options:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = a4;
  v13 = 0;
  v14 = &qword_1EA84D000;
  *&v15 = 138412802;
  v84 = v15;
  while (1)
  {
    v16 = objc_msgSend_sequence(self, v7, v8, v9, v10, v11, v84);
    v22 = v13 < objc_msgSend_count(v16, v17, v18, v19, v20, v21);

    if (!v22)
    {
      break;
    }

    v28 = objc_msgSend_sequence(self, v23, v24, v25, v26, v27);
    v33 = objc_msgSend_objectAtIndex_(v28, v29, v13, v30, v31, v32);

    if (objc_msgSend_modifiesOriginalTokens(v33, v34, v35, v36, v37, v38))
    {
      v44 = 0;
    }

    else
    {
      v45 = objc_msgSend_result(v6, v39, v40, v41, v42, v43);
      v44 = objc_msgSend_rawTranscription(v45, v46, v47, v48, v49, v50);
    }

    v51 = objc_msgSend_process_options_(v33, v39, v6, v12, v42, v43);

    if ((objc_msgSend_modifiesOriginalTokens(v33, v52, v53, v54, v55, v56) & 1) == 0)
    {
      v62 = objc_msgSend_result(v51, v57, v58, v59, v60, v61);
      v68 = objc_msgSend_rawTranscription(v62, v63, v64, v65, v66, v67);

      if ((objc_msgSend_isEqualToString_(v68, v69, v44, v70, v71, v72) & 1) == 0)
      {
        if (v14[393] != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v77 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = objc_opt_class();
          v79 = NSStringFromClass(v78);
          *buf = v84;
          v86 = v79;
          v87 = 2112;
          v88 = v44;
          v89 = 2112;
          v90 = v68;
          _os_log_impl(&dword_18366B000, v77, OS_LOG_TYPE_ERROR, "%@ unexpectedly modified original tokens: %@ -> %@", buf, 0x20u);

          v14 = &qword_1EA84D000;
        }
      }

      if ((objc_msgSend_isEqualToString_(v68, v73, v44, v74, v75, v76) & 1) == 0)
      {
        if (v14[393] != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v80 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
        {
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          *buf = v84;
          v86 = v82;
          v87 = 2112;
          v88 = v44;
          v89 = 2112;
          v90 = v68;
          _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_FAULT, "%@ unexpectedly modified original tokens: %@ -> %@", buf, 0x20u);

          v14 = &qword_1EA84D000;
        }
      }
    }

    ++v13;
    v6 = v51;
  }

  return v6;
}

@end