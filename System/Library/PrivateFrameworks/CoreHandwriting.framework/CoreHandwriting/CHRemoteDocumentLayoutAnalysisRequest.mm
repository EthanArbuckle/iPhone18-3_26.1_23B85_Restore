@interface CHRemoteDocumentLayoutAnalysisRequest
+ (id)loadFromFile:(id)file;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteDocumentLayoutAnalysisRequest:(id)request;
- (CHRemoteDocumentLayoutAnalysisRequest)initWithCoder:(id)coder;
- (CHRemoteDocumentLayoutAnalysisRequest)initWithDrawing:(id)drawing strokeIdentifiers:(id)identifiers contextStrokeIdentifiers:(id)strokeIdentifiers options:(id)options priority:(int64_t)priority;
- (id)description;
- (id)writeToFileInFolder:(id)folder basename:(id)basename;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDrawing:(id)drawing;
- (void)setHasBeenSubmitted:(BOOL)submitted;
- (void)setOptions:(id)options;
- (void)setPriority:(int64_t)priority;
- (void)setStrokeIdentifiers:(id)identifiers;
@end

@implementation CHRemoteDocumentLayoutAnalysisRequest

- (CHRemoteDocumentLayoutAnalysisRequest)initWithDrawing:(id)drawing strokeIdentifiers:(id)identifiers contextStrokeIdentifiers:(id)strokeIdentifiers options:(id)options priority:(int64_t)priority
{
  drawingCopy = drawing;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  optionsCopy = options;
  v46.receiver = self;
  v46.super_class = CHRemoteDocumentLayoutAnalysisRequest;
  v21 = [(CHRemoteDocumentLayoutAnalysisRequest *)&v46 init];
  if (v21)
  {
    v22 = objc_msgSend_copy(drawingCopy, v16, v17, v18, v19, v20);
    drawing = v21->_drawing;
    v21->_drawing = v22;

    v29 = objc_msgSend_copy(identifiersCopy, v24, v25, v26, v27, v28);
    strokeIdentifiers = v21->_strokeIdentifiers;
    v21->_strokeIdentifiers = v29;

    v36 = objc_msgSend_copy(strokeIdentifiersCopy, v31, v32, v33, v34, v35);
    contextStrokeIdentifiers = v21->_contextStrokeIdentifiers;
    v21->_contextStrokeIdentifiers = v36;

    v43 = objc_msgSend_copy(optionsCopy, v38, v39, v40, v41, v42);
    options = v21->_options;
    v21->_options = v43;

    v21->_hasBeenSubmitted = 0;
    v21->_priority = priority;
  }

  return v21;
}

- (CHRemoteDocumentLayoutAnalysisRequest)initWithCoder:(id)coder
{
  v76 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"drawing", v7, v8);
  v14 = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, @"priority", v11, v12, v13);
  if (v14 <= 2 && v9)
  {
    v69.receiver = self;
    v69.super_class = CHRemoteDocumentLayoutAnalysisRequest;
    v15 = [(CHRemoteDocumentLayoutAnalysisRequest *)&v69 init];
    objc_storeStrong(&v15->_drawing, v9);
    v15->_priority = v14;
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v25 = objc_msgSend_setWithObjects_(v16, v21, v17, v22, v23, v24, v18, v19, v20, 0);
    v29 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v26, v25, @"options", v27, v28);
    options = v15->_options;
    v15->_options = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v39 = objc_msgSend_setWithObjects_(v31, v35, v32, v36, v37, v38, v33, v34, 0);
    v43 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v40, v39, @"strokeIdentifiers", v41, v42);
    strokeIdentifiers = v15->_strokeIdentifiers;
    v15->_strokeIdentifiers = v43;

    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v53 = objc_msgSend_setWithObjects_(v45, v49, v46, v50, v51, v52, v47, v48, 0);
    v57 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v54, v53, @"contextStrokeIdentifiers", v55, v56);
    contextStrokeIdentifiers = v15->_contextStrokeIdentifiers;
    v15->_contextStrokeIdentifiers = v57;

    v15->_hasBeenSubmitted = objc_msgSend_decodeBoolForKey_(coderCopy, v59, @"hasBeenSubmitted", v60, v61, v62);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v63 = qword_1EA84DC70;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = objc_opt_class();
      v65 = @"NO";
      if (v9)
      {
        v66 = @"YES";
      }

      else
      {
        v66 = @"NO";
      }

      *buf = 138412802;
      v71 = v64;
      v72 = 2112;
      v73 = v66;
      if (v14 < 3)
      {
        v65 = @"YES";
      }

      v74 = 2112;
      v75 = v65;
      v67 = v64;
      _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_ERROR, "%@ decoding failed. Drawing is required to be non-null and priority has to be valid. isValidDrawing=%@, isValidPriority=%@", buf, 0x20u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->_drawing, @"drawing", v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_options, @"options", v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, self->_strokeIdentifiers, @"strokeIdentifiers", v11, v12);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_contextStrokeIdentifiers, @"contextStrokeIdentifiers", v14, v15);
  objc_msgSend_encodeBool_forKey_(coderCopy, v16, self->_hasBeenSubmitted, @"hasBeenSubmitted", v17, v18);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v19, self->_priority, @"priority", v20, v21);
}

- (id)writeToFileInFolder:(id)folder basename:(id)basename
{
  v4 = sub_1838743F8(self, folder, basename);

  return v4;
}

+ (id)loadFromFile:(id)file
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, file, v3, v4, v5);
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0, v10);

  return v11;
}

- (void)setDrawing:(id)drawing
{
  drawingCopy = drawing;
  if (self->_hasBeenSubmitted)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", buf, 2u);
    }

    if (self->_hasBeenSubmitted)
    {
      if (qword_1EA84DC48 == -1)
      {
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v14 = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", v14, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  if (self->_drawing != drawingCopy)
  {
    v12 = objc_msgSend_copy(drawingCopy, v4, v5, v6, v7, v8);
    drawing = self->_drawing;
    self->_drawing = v12;
  }
}

- (void)setStrokeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (self->_hasBeenSubmitted)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", buf, 2u);
    }

    if (self->_hasBeenSubmitted)
    {
      if (qword_1EA84DC48 == -1)
      {
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v14 = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", v14, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  if (self->_strokeIdentifiers != identifiersCopy)
  {
    v12 = objc_msgSend_copy(identifiersCopy, v4, v5, v6, v7, v8);
    strokeIdentifiers = self->_strokeIdentifiers;
    self->_strokeIdentifiers = v12;
  }
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  if (self->_hasBeenSubmitted)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", buf, 2u);
    }

    if (self->_hasBeenSubmitted)
    {
      if (qword_1EA84DC48 == -1)
      {
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v14 = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", v14, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  if (self->_options != optionsCopy)
  {
    v12 = objc_msgSend_copy(optionsCopy, v4, v5, v6, v7, v8);
    options = self->_options;
    self->_options = v12;
  }
}

- (void)setHasBeenSubmitted:(BOOL)submitted
{
  if (!submitted && self->_hasBeenSubmitted)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v5 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "hasBeenSubmitted state cannot be reverted after being set to YES", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v7 = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_FAULT, "hasBeenSubmitted state cannot be reverted after being set to YES", v7, 2u);
    goto LABEL_10;
  }

LABEL_11:
  self->_hasBeenSubmitted = submitted;
}

- (void)setPriority:(int64_t)priority
{
  if (self->_hasBeenSubmitted)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v5 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", buf, 2u);
    }

    if (self->_hasBeenSubmitted)
    {
      if (qword_1EA84DC48 == -1)
      {
        v6 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v6 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v7 = 0;
      _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", v7, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  if (self->_priority != priority)
  {
    self->_priority = priority;
  }
}

- (BOOL)isEqualToRemoteDocumentLayoutAnalysisRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v10 = objc_msgSend_drawing(self, v4, v5, v6, v7, v8);
    v16 = objc_msgSend_drawing(requestCopy, v11, v12, v13, v14, v15);
    v22 = v16;
    if (v10 == v16)
    {
    }

    else
    {
      v23 = objc_msgSend_drawing(self, v17, v18, v19, v20, v21);
      v29 = objc_msgSend_drawing(requestCopy, v24, v25, v26, v27, v28);
      isEqualToDrawing = objc_msgSend_isEqualToDrawing_(v23, v30, v29, v31, v32, v33);

      if (!isEqualToDrawing)
      {
        goto LABEL_17;
      }
    }

    v41 = objc_msgSend_strokeIdentifiers(self, v35, v36, v37, v38, v39);
    v47 = objc_msgSend_strokeIdentifiers(requestCopy, v42, v43, v44, v45, v46);
    v53 = v47;
    if (v41 == v47)
    {
    }

    else
    {
      v54 = objc_msgSend_strokeIdentifiers(self, v48, v49, v50, v51, v52);
      v60 = objc_msgSend_strokeIdentifiers(requestCopy, v55, v56, v57, v58, v59);
      isEqualToArray = objc_msgSend_isEqualToArray_(v54, v61, v60, v62, v63, v64);

      if (!isEqualToArray)
      {
        goto LABEL_17;
      }
    }

    v71 = objc_msgSend_contextStrokeIdentifiers(self, v66, v67, v68, v69, v70);
    v77 = objc_msgSend_contextStrokeIdentifiers(requestCopy, v72, v73, v74, v75, v76);
    v83 = v77;
    if (v71 == v77)
    {

      goto LABEL_15;
    }

    v84 = objc_msgSend_contextStrokeIdentifiers(self, v78, v79, v80, v81, v82);
    v90 = objc_msgSend_contextStrokeIdentifiers(requestCopy, v85, v86, v87, v88, v89);
    isEqualToSet = objc_msgSend_isEqualToSet_(v84, v91, v90, v92, v93, v94);

    if (isEqualToSet)
    {
LABEL_15:
      v101 = objc_msgSend_options(self, v96, v97, v98, v99, v100);
      v107 = objc_msgSend_options(requestCopy, v102, v103, v104, v105, v106);
      v113 = v107;
      if (v101 == v107)
      {
      }

      else
      {
        v114 = objc_msgSend_options(self, v108, v109, v110, v111, v112);
        v120 = objc_msgSend_options(requestCopy, v115, v116, v117, v118, v119);
        isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v114, v121, v120, v122, v123, v124);

        if (!isEqualToDictionary)
        {
          goto LABEL_17;
        }
      }

      v131 = objc_msgSend_priority(self, v126, v127, v128, v129, v130);
      v40 = v131 == objc_msgSend_priority(requestCopy, v132, v133, v134, v135, v136);
      goto LABEL_20;
    }

LABEL_17:
    v40 = 0;
    goto LABEL_20;
  }

  v40 = 1;
LABEL_20:

  return v40;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteDocumentLayoutAnalysisRequest = objc_msgSend_isEqualToRemoteDocumentLayoutAnalysisRequest_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToRemoteDocumentLayoutAnalysisRequest;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v7 = objc_msgSend_options(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_hash(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_drawing(self, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_hash(v19, v20, v21, v22, v23, v24);

  v31 = objc_msgSend_strokeIdentifiers(self, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_hash(v31, v32, v33, v34, v35, v36);

  v43 = objc_msgSend_contextStrokeIdentifiers(self, v38, v39, v40, v41, v42);
  v49 = objc_msgSend_hash(v43, v44, v45, v46, v47, v48);

  v51.receiver = self;
  v51.super_class = CHRemoteDocumentLayoutAnalysisRequest;
  return v25 ^ v13 ^ v37 ^ v49 ^ [(CHRemoteDocumentLayoutAnalysisRequest *)&v51 hash];
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_description(self->_options, a2, v2, v3, v4, v5);
  drawing = self->_drawing;
  v15 = objc_msgSend_count(self->_strokeIdentifiers, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_count(self->_contextStrokeIdentifiers, v16, v17, v18, v19, v20);
  v26 = @"N";
  if (self->_hasBeenSubmitted)
  {
    v26 = @"Y";
  }

  v27 = objc_msgSend_stringWithFormat_(v7, v22, @"Remote Document Layout Analysis Request %p (option keys=%@, drawing=%p, strokeIdentifiers=%ld, contextStrokeIdentifiers=%ld, hasBeenSubmitted=%@, priority=%ld)", v23, v24, v25, self, v8, drawing, v15, v21, v26, self->_priority);

  return v27;
}

@end