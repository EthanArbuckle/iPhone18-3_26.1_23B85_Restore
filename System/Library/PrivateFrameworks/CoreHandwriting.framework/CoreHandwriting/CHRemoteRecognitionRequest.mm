@interface CHRemoteRecognitionRequest
+ (id)loadFromFile:(id)file;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteRecognitionRequest:(id)request;
- (CGSize)minimumDrawingSize;
- (CHRemoteRecognitionRequest)initWithCoder:(id)coder;
- (CHRemoteRecognitionRequest)initWithDrawing:(id)drawing options:(id)options priority:(int64_t)priority;
- (id)description;
- (id)writeToFileInFolder:(id)folder basename:(id)basename;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDrawing:(id)drawing;
- (void)setEnableCachingIfAvailable:(BOOL)available;
- (void)setHasBeenSubmitted:(BOOL)submitted;
- (void)setMaxRecognitionResultCount:(unint64_t)count;
- (void)setMinimumDrawingSize:(CGSize)size;
- (void)setOptions:(id)options;
- (void)setPriority:(int64_t)priority;
@end

@implementation CHRemoteRecognitionRequest

- (CHRemoteRecognitionRequest)initWithDrawing:(id)drawing options:(id)options priority:(int64_t)priority
{
  drawingCopy = drawing;
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = CHRemoteRecognitionRequest;
  v11 = [(CHRemoteRecognitionRequest *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_drawing, drawing);
    objc_storeStrong(&v12->_options, options);
    v12->_hasBeenSubmitted = 0;
    v12->_priority = priority;
    v17 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v13, @"CHRequestOptionContributeToStyle", v14, v15, v16);
    v12->_shouldContributeToStyle = objc_msgSend_BOOLValue(v17, v18, v19, v20, v21, v22);
  }

  return v12;
}

- (CHRemoteRecognitionRequest)initWithCoder:(id)coder
{
  v78 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  obj = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"drawing", v7, v8);
  v13 = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"priority", v10, v11, v12);
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v25 = objc_msgSend_setWithObjects_(v14, v21, v15, v22, v23, v24, v16, v17, v18, v19, v20, 0);
  v29 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v26, v25, @"options", v27, v28);

  if (v13 <= 2 && obj)
  {
    v71.receiver = self;
    v71.super_class = CHRemoteRecognitionRequest;
    v30 = [(CHRemoteRecognitionRequest *)&v71 init];
    objc_storeStrong(&v30->_drawing, obj);
    objc_storeStrong(&v30->_options, v29);
    v30->_priority = v13;
    objc_msgSend_decodeFloatForKey_(coderCopy, v31, @"minimumDrawingWidth", v32, v33, v34);
    v36 = v35;
    objc_msgSend_decodeFloatForKey_(coderCopy, v37, @"minimumDrawingHeight", v38, v39, v40);
    v30->_minimumDrawingSize.width = v36;
    v30->_minimumDrawingSize.height = v41;
    v42 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v43, v42, @"maxRecognitionResultCount", v44, v45);
    v30->_maxRecognitionResultCount = objc_msgSend_unsignedIntegerValue(v46, v47, v48, v49, v50, v51);

    v30->_enableCachingIfAvailable = objc_msgSend_decodeBoolForKey_(coderCopy, v52, @"enableCachingIfAvailable", v53, v54, v55);
    v30->_hasBeenSubmitted = objc_msgSend_decodeBoolForKey_(coderCopy, v56, @"hasBeenSubmitted", v57, v58, v59);
    v30->_shouldContributeToStyle = objc_msgSend_decodeBoolForKey_(coderCopy, v60, @"shouldContributeToStyle", v61, v62, v63);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v64 = qword_1EA84DC70;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = objc_opt_class();
      v66 = @"NO";
      if (obj)
      {
        v67 = @"YES";
      }

      else
      {
        v67 = @"NO";
      }

      *buf = 138412802;
      v73 = v65;
      v74 = 2112;
      v75 = v67;
      if (v13 < 3)
      {
        v66 = @"YES";
      }

      v76 = 2112;
      v77 = v66;
      v68 = v65;
      _os_log_impl(&dword_18366B000, v64, OS_LOG_TYPE_ERROR, "%@ decoding failed. Drawing is required to be non-null and priority has to be valid. isValidDrawing=%@, isValidPriority=%@", buf, 0x20u);
    }

    v30 = 0;
  }

  return v30;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->_drawing, @"drawing", v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_options, @"options", v8, v9);
  width = self->_minimumDrawingSize.width;
  *&width = width;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v11, @"minimumDrawingWidth", v12, v13, v14, width);
  height = self->_minimumDrawingSize.height;
  *&height = height;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v16, @"minimumDrawingHeight", v17, v18, v19, height);
  v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v20, self->_maxRecognitionResultCount, v21, v22, v23);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, v24, @"maxRecognitionResultCount", v26, v27);

  objc_msgSend_encodeBool_forKey_(coderCopy, v28, self->_enableCachingIfAvailable, @"enableCachingIfAvailable", v29, v30);
  objc_msgSend_encodeBool_forKey_(coderCopy, v31, self->_hasBeenSubmitted, @"hasBeenSubmitted", v32, v33);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v34, self->_priority, @"priority", v35, v36);
  objc_msgSend_encodeBool_forKey_(coderCopy, v37, self->_shouldContributeToStyle, @"shouldContributeToStyle", v38, v39);
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

- (void)setMinimumDrawingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_hasBeenSubmitted)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v6 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", buf, 2u);
    }

    if (self->_hasBeenSubmitted)
    {
      if (qword_1EA84DC48 == -1)
      {
        v7 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v7 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v9 = 0;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionRequest cannot be mutated after being submitted", v9, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  if (self->_minimumDrawingSize.width != width || self->_minimumDrawingSize.height != height)
  {
    self->_minimumDrawingSize.width = width;
    self->_minimumDrawingSize.height = height;
  }
}

- (void)setMaxRecognitionResultCount:(unint64_t)count
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
  if (self->_maxRecognitionResultCount != count)
  {
    self->_maxRecognitionResultCount = count;
  }
}

- (void)setEnableCachingIfAvailable:(BOOL)available
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
  self->_enableCachingIfAvailable = available;
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

- (BOOL)isEqualToRemoteRecognitionRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    objc_msgSend_minimumDrawingSize(self, v4, v5, v6, v7, v8);
    v11 = v10;
    v13 = v12;
    objc_msgSend_minimumDrawingSize(requestCopy, v14, v15, v16, v17, v18);
    if (v11 != v25 || v13 != v24)
    {
      goto LABEL_20;
    }

    v27 = objc_msgSend_maxRecognitionResultCount(self, v19, v20, v21, v22, v23);
    if (v27 != objc_msgSend_maxRecognitionResultCount(requestCopy, v28, v29, v30, v31, v32))
    {
      goto LABEL_20;
    }

    v38 = objc_msgSend_enableCachingIfAvailable(self, v33, v34, v35, v36, v37);
    if (v38 != objc_msgSend_enableCachingIfAvailable(requestCopy, v39, v40, v41, v42, v43))
    {
      goto LABEL_20;
    }

    v49 = objc_msgSend_drawing(self, v44, v45, v46, v47, v48);
    v55 = objc_msgSend_drawing(requestCopy, v50, v51, v52, v53, v54);
    v61 = v55;
    if (v49 == v55)
    {
    }

    else
    {
      v62 = objc_msgSend_drawing(self, v56, v57, v58, v59, v60);
      v68 = objc_msgSend_drawing(requestCopy, v63, v64, v65, v66, v67);
      isEqualToDrawing = objc_msgSend_isEqualToDrawing_(v62, v69, v68, v70, v71, v72);

      if (!isEqualToDrawing)
      {
        goto LABEL_20;
      }
    }

    v80 = objc_msgSend_options(self, v74, v75, v76, v77, v78);
    v86 = objc_msgSend_options(requestCopy, v81, v82, v83, v84, v85);
    v92 = v86;
    if (v80 == v86)
    {
    }

    else
    {
      v93 = objc_msgSend_options(self, v87, v88, v89, v90, v91);
      v99 = objc_msgSend_options(requestCopy, v94, v95, v96, v97, v98);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v93, v100, v99, v101, v102, v103);

      if (!isEqualToDictionary)
      {
        goto LABEL_20;
      }
    }

    v110 = objc_msgSend_priority(self, v105, v106, v107, v108, v109);
    if (v110 == objc_msgSend_priority(requestCopy, v111, v112, v113, v114, v115))
    {
      shouldContributeToStyle = objc_msgSend_shouldContributeToStyle(self, v116, v117, v118, v119, v120);
      v79 = shouldContributeToStyle ^ objc_msgSend_shouldContributeToStyle(requestCopy, v122, v123, v124, v125, v126) ^ 1;
      goto LABEL_21;
    }

LABEL_20:
    LOBYTE(v79) = 0;
    goto LABEL_21;
  }

  LOBYTE(v79) = 1;
LABEL_21:

  return v79;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteRecognitionRequest = objc_msgSend_isEqualToRemoteRecognitionRequest_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToRemoteRecognitionRequest;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  width = self->_minimumDrawingSize.width;
  height = self->_minimumDrawingSize.height;
  v9 = objc_msgSend_options(self, a2, v2, v3, v4, v5);
  v15 = objc_msgSend_hash(v9, v10, v11, v12, v13, v14);

  v21 = objc_msgSend_drawing(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_hash(v21, v22, v23, v24, v25, v26);

  v33 = objc_msgSend_maxRecognitionResultCount(self, v28, v29, v30, v31, v32);
  return v15 ^ v27 ^ v33 ^ objc_msgSend_shouldContributeToStyle(self, v34, v35, v36, v37, v38) ^ (height + width);
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_description(self->_options, a2, v2, v3, v4, v5);
  v13 = v8;
  v14 = @"N";
  if (self->_enableCachingIfAvailable)
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  if (self->_hasBeenSubmitted)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  if (self->_shouldContributeToStyle)
  {
    v14 = @"Y";
  }

  v17 = objc_msgSend_stringWithFormat_(v7, v9, @"Remote Recognition Request %p (option keys=%@, drawing=%p, enableCachingIfAvailable=%@, hasBeenSubmitted=%@, priority=%ld, shouldContributeToStyle=%@)", v10, v11, v12, self, v8, self->_drawing, v15, v16, self->_priority, v14);

  return v17;
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