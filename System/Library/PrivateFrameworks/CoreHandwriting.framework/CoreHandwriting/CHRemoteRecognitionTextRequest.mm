@interface CHRemoteRecognitionTextRequest
+ (id)loadFromFile:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRemoteRecognitionTextRequest:(id)a3;
- (CHRemoteRecognitionTextRequest)initWithCoder:(id)a3;
- (CHRemoteRecognitionTextRequest)initWithLocales:(id)a3 recognitionMode:(int)a4 drawing:(id)a5 options:(id)a6 priority:(int64_t)a7;
- (id)description;
- (id)recognizerConfigurationKeyWithLocale:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveCharacterSetPerLocale:(id)a3;
- (void)setAutoCapitalizationMode:(int)a3;
- (void)setAutoCorrectionMode:(int)a3;
- (void)setBaseWritingDirection:(int)a3;
- (void)setContentType:(int)a3;
- (void)setCustomLexiconEntries:(id)a3;
- (void)setEnableGen2CharacterLMIfAvailable:(BOOL)a3;
- (void)setEnableGen2ModelIfAvailable:(BOOL)a3;
- (void)setEnableStrokeReordering:(BOOL)a3;
- (void)setLocales:(id)a3;
- (void)setRecognitionMode:(int)a3;
- (void)setShouldUseTextReplacements:(BOOL)a3;
@end

@implementation CHRemoteRecognitionTextRequest

- (CHRemoteRecognitionTextRequest)initWithLocales:(id)a3 recognitionMode:(int)a4 drawing:(id)a5 options:(id)a6 priority:(int64_t)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (!objc_msgSend_count(v12, v15, v16, v17, v18, v19))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "CHRemoteRecognitionTextRequest must be initialized with at least one locale", buf, 2u);
    }
  }

  if (!objc_msgSend_count(v12, v20, v21, v22, v23, v24))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v26 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_FAULT, "CHRemoteRecognitionTextRequest must be initialized with at least one locale", buf, 2u);
    }
  }

  v53.receiver = self;
  v53.super_class = CHRemoteRecognitionTextRequest;
  v27 = [(CHRemoteRecognitionRequest *)&v53 initWithDrawing:v13 options:v14 priority:a7];
  objc_msgSend_setLocales_(v27, v28, v12, v29, v30, v31);
  objc_msgSend_setRecognitionMode_(v27, v32, v10, v33, v34, v35);
  v41 = objc_msgSend_parametersOverride(CHRecognizerConfiguration, v36, v37, v38, v39, v40);
  v47 = objc_msgSend_copy(v41, v42, v43, v44, v45, v46);
  objc_msgSend_setParametersOverride_(v27, v48, v47, v49, v50, v51);

  return v27;
}

- (CHRemoteRecognitionTextRequest)initWithCoder:(id)a3
{
  v112[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v108.receiver = self;
  v108.super_class = CHRemoteRecognitionTextRequest;
  v5 = [(CHRemoteRecognitionRequest *)&v108 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v112[0] = objc_opt_class();
    v112[1] = objc_opt_class();
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v112, 2, v8, v9);
    v15 = objc_msgSend_setWithArray_(v6, v11, v10, v12, v13, v14);
    v19 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v16, v15, @"locales", v17, v18);

    if (v19 && objc_msgSend_count(v19, v20, v21, v22, v23, v24))
    {
      objc_storeStrong(&v5->_locales, v19);
      v5->_recognitionMode = objc_msgSend_decodeIntegerForKey_(v4, v25, @"recognitionMode", v26, v27, v28);
      v5->_contentType = objc_msgSend_decodeIntegerForKey_(v4, v29, @"contentType", v30, v31, v32);
      v5->_autoCapitalizationMode = objc_msgSend_decodeIntegerForKey_(v4, v33, @"autoCapitalizationMode", v34, v35, v36);
      v5->_autoCorrectionMode = objc_msgSend_decodeIntegerForKey_(v4, v37, @"autoCorrectionMode", v38, v39, v40);
      *&v5->_baseWritingDirection = objc_msgSend_decodeIntegerForKey_(v4, v41, @"baseWritingDirection", v42, v43, v44);
      v45 = MEMORY[0x1E695DFD8];
      v111[0] = objc_opt_class();
      v111[1] = objc_opt_class();
      v111[2] = objc_opt_class();
      v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v46, v111, 3, v47, v48);
      v54 = objc_msgSend_setWithArray_(v45, v50, v49, v51, v52, v53);
      v58 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v55, v54, @"activeCharacterSetPerLocale", v56, v57);
      activeCharacterSetPerLocale = v5->_activeCharacterSetPerLocale;
      v5->_activeCharacterSetPerLocale = v58;

      v5->_shouldUseTextReplacements = objc_msgSend_decodeBoolForKey_(v4, v60, @"shouldUseTextReplacements", v61, v62, v63);
      v5->_enableGen2ModelIfAvailable = objc_msgSend_decodeBoolForKey_(v4, v64, @"enableGen2ModelIfAvailable", v65, v66, v67);
      v5->_enableGen2CharacterLMIfAvailable = objc_msgSend_decodeBoolForKey_(v4, v68, @"enableGen2CharacterLMIfAvailable", v69, v70, v71);
      v5->_enableStrokeReordering = objc_msgSend_decodeBoolForKey_(v4, v72, @"enableStrokeReordering", v73, v74, v75);
      v76 = MEMORY[0x1E695DFD8];
      v110[0] = objc_opt_class();
      v110[1] = objc_opt_class();
      v110[2] = objc_opt_class();
      v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, v110, 3, v78, v79);
      v85 = objc_msgSend_setWithArray_(v76, v81, v80, v82, v83, v84);
      v89 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v86, v85, @"parameterOverride", v87, v88);
      parametersOverride = v5->_parametersOverride;
      v5->_parametersOverride = v89;

      v91 = MEMORY[0x1E695DFD8];
      v109[0] = objc_opt_class();
      v109[1] = objc_opt_class();
      v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v92, v109, 2, v93, v94);
      v100 = objc_msgSend_setWithArray_(v91, v96, v95, v97, v98, v99);
      v104 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v101, v100, @"customLexiconEntries", v102, v103);
      customLexiconEntries = v5->_customLexiconEntries;
      v5->_customLexiconEntries = v104;

      goto LABEL_11;
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v19 = qword_1EA84DC70;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v107 = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "CHRemoteRecognitionTextRequest decoding failed. Locale is required to be non-null.", &v107, 2u);
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = CHRemoteRecognitionTextRequest;
  [(CHRemoteRecognitionRequest *)&v44 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_locales, @"locales", v6, v7);
  objc_msgSend_encodeInteger_forKey_(v4, v8, self->_recognitionMode, @"recognitionMode", v9, v10);
  objc_msgSend_encodeInteger_forKey_(v4, v11, self->_contentType, @"contentType", v12, v13);
  objc_msgSend_encodeInteger_forKey_(v4, v14, self->_autoCapitalizationMode, @"autoCapitalizationMode", v15, v16);
  objc_msgSend_encodeInteger_forKey_(v4, v17, self->_autoCorrectionMode, @"autoCorrectionMode", v18, v19);
  objc_msgSend_encodeInteger_forKey_(v4, v20, *&self->_baseWritingDirection, @"baseWritingDirection", v21, v22);
  objc_msgSend_encodeObject_forKey_(v4, v23, self->_activeCharacterSetPerLocale, @"activeCharacterSetPerLocale", v24, v25);
  objc_msgSend_encodeBool_forKey_(v4, v26, self->_shouldUseTextReplacements, @"shouldUseTextReplacements", v27, v28);
  objc_msgSend_encodeBool_forKey_(v4, v29, self->_enableGen2ModelIfAvailable, @"enableGen2ModelIfAvailable", v30, v31);
  objc_msgSend_encodeBool_forKey_(v4, v32, self->_enableGen2CharacterLMIfAvailable, @"enableGen2CharacterLMIfAvailable", v33, v34);
  objc_msgSend_encodeBool_forKey_(v4, v35, self->_enableStrokeReordering, @"enableStrokeReordering", v36, v37);
  objc_msgSend_encodeObject_forKey_(v4, v38, self->_parametersOverride, @"parameterOverride", v39, v40);
  objc_msgSend_encodeObject_forKey_(v4, v41, self->_customLexiconEntries, @"customLexiconEntries", v42, v43);
}

+ (id)loadFromFile:(id)a3
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, a3, v3, v4, v5);
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0, v10);

  return v11;
}

- (id)recognizerConfigurationKeyWithLocale:(id)a3
{
  v4 = a3;
  v5 = [CHRecognizerConfiguration alloc];
  recognitionMode = self->_recognitionMode;
  autoCapitalizationMode = self->_autoCapitalizationMode;
  autoCorrectionMode = self->_autoCorrectionMode;
  v9 = *&self->_baseWritingDirection;
  v15 = objc_msgSend_enableCachingIfAvailable(self, v10, v11, v12, v13, v14);
  BYTE2(v25) = self->_enableGen2CharacterLMIfAvailable;
  BYTE1(v25) = self->_enableGen2ModelIfAvailable;
  LOBYTE(v25) = v15;
  v17 = objc_msgSend_initWithMode_locale_contentType_autoCapitalizationMode_autoCorrectionMode_baseWritingDirection_enableCachingIfAvailable_enableGen2ModelIfAvailable_enableGen2CharacterLMIfAvailable_(v5, v16, recognitionMode, v4, 0, autoCapitalizationMode, autoCorrectionMode, v9, v25);
  v23 = objc_msgSend_configurationKey(v17, v18, v19, v20, v21, v22);

  return v23;
}

- (void)setLocales:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasBeenSubmitted(self, v5, v6, v7, v8, v9))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    }
  }

  if (objc_msgSend_hasBeenSubmitted(self, v10, v11, v12, v13, v14))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v21 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v24, 2u);
    }
  }

  if (self->_locales != v4)
  {
    v22 = objc_msgSend_copy(v4, v16, v17, v18, v19, v20);
    locales = self->_locales;
    self->_locales = v22;
  }
}

- (void)setRecognitionMode:(int)a3
{
  if (!objc_msgSend_hasBeenSubmitted(self, a2, *&a3, v3, v4, v5))
  {
    if (!objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
  }

LABEL_8:

  if (!objc_msgSend_hasBeenSubmitted(self, v14, v15, v16, v17, v18))
  {
LABEL_3:
    if (self->_recognitionMode == a3)
    {
      return;
    }

LABEL_13:
    self->_recognitionMode = a3;
    return;
  }

LABEL_9:
  if (qword_1EA84DC48 == -1)
  {
    v19 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v19 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    *v20 = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v20, 2u);
  }

LABEL_12:

  if (self->_recognitionMode != a3)
  {
    goto LABEL_13;
  }
}

- (void)setContentType:(int)a3
{
  if (!objc_msgSend_hasBeenSubmitted(self, a2, *&a3, v3, v4, v5))
  {
    if (!objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
  }

LABEL_8:

  if (!objc_msgSend_hasBeenSubmitted(self, v14, v15, v16, v17, v18))
  {
LABEL_3:
    if (self->_contentType == a3)
    {
      return;
    }

LABEL_13:
    self->_contentType = a3;
    return;
  }

LABEL_9:
  if (qword_1EA84DC48 == -1)
  {
    v19 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v19 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    *v20 = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v20, 2u);
  }

LABEL_12:

  if (self->_contentType != a3)
  {
    goto LABEL_13;
  }
}

- (void)setAutoCapitalizationMode:(int)a3
{
  if (!objc_msgSend_hasBeenSubmitted(self, a2, *&a3, v3, v4, v5))
  {
    if (!objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
  }

LABEL_8:

  if (!objc_msgSend_hasBeenSubmitted(self, v14, v15, v16, v17, v18))
  {
LABEL_3:
    if (self->_autoCapitalizationMode == a3)
    {
      return;
    }

LABEL_13:
    self->_autoCapitalizationMode = a3;
    return;
  }

LABEL_9:
  if (qword_1EA84DC48 == -1)
  {
    v19 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v19 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    *v20 = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v20, 2u);
  }

LABEL_12:

  if (self->_autoCapitalizationMode != a3)
  {
    goto LABEL_13;
  }
}

- (void)setAutoCorrectionMode:(int)a3
{
  if (!objc_msgSend_hasBeenSubmitted(self, a2, *&a3, v3, v4, v5))
  {
    if (!objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
  }

LABEL_8:

  if (!objc_msgSend_hasBeenSubmitted(self, v14, v15, v16, v17, v18))
  {
LABEL_3:
    if (self->_autoCorrectionMode == a3)
    {
      return;
    }

LABEL_13:
    self->_autoCorrectionMode = a3;
    return;
  }

LABEL_9:
  if (qword_1EA84DC48 == -1)
  {
    v19 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v19 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    *v20 = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v20, 2u);
  }

LABEL_12:

  if (self->_autoCorrectionMode != a3)
  {
    goto LABEL_13;
  }
}

- (void)setBaseWritingDirection:(int)a3
{
  v6 = *&a3;
  if (!objc_msgSend_hasBeenSubmitted(self, a2, *&a3, v3, v4, v5))
  {
    if (!objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
  }

LABEL_8:

  if (!objc_msgSend_hasBeenSubmitted(self, v14, v15, v16, v17, v18))
  {
LABEL_3:
    if (*&self->_baseWritingDirection == v6)
    {
      return;
    }

LABEL_13:
    *&self->_baseWritingDirection = v6;
    return;
  }

LABEL_9:
  if (qword_1EA84DC48 == -1)
  {
    v19 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v19 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_11:
    *v20 = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v20, 2u);
  }

LABEL_12:

  if (*&self->_baseWritingDirection != v6)
  {
    goto LABEL_13;
  }
}

- (void)setActiveCharacterSetPerLocale:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasBeenSubmitted(self, v5, v6, v7, v8, v9))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    }
  }

  if (objc_msgSend_hasBeenSubmitted(self, v10, v11, v12, v13, v14))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v21 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v24, 2u);
    }
  }

  if (self->_activeCharacterSetPerLocale != v4)
  {
    v22 = objc_msgSend_copy(v4, v16, v17, v18, v19, v20);
    activeCharacterSetPerLocale = self->_activeCharacterSetPerLocale;
    self->_activeCharacterSetPerLocale = v22;
  }
}

- (void)setShouldUseTextReplacements:(BOOL)a3
{
  if (objc_msgSend_hasBeenSubmitted(self, a2, a3, v3, v4, v5))
  {
    if (qword_1EA84DC48 == -1)
    {
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
  {
    if (qword_1EA84DC48 == -1)
    {
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v15 = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v15, 2u);
    goto LABEL_10;
  }

LABEL_11:
  self->_shouldUseTextReplacements = a3;
}

- (void)setEnableGen2ModelIfAvailable:(BOOL)a3
{
  if (objc_msgSend_hasBeenSubmitted(self, a2, a3, v3, v4, v5))
  {
    if (qword_1EA84DC48 == -1)
    {
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
  {
    if (qword_1EA84DC48 == -1)
    {
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v15 = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v15, 2u);
    goto LABEL_10;
  }

LABEL_11:
  self->_enableGen2ModelIfAvailable = a3;
}

- (void)setEnableGen2CharacterLMIfAvailable:(BOOL)a3
{
  if (objc_msgSend_hasBeenSubmitted(self, a2, a3, v3, v4, v5))
  {
    if (qword_1EA84DC48 == -1)
    {
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
  {
    if (qword_1EA84DC48 == -1)
    {
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v15 = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v15, 2u);
    goto LABEL_10;
  }

LABEL_11:
  self->_enableGen2CharacterLMIfAvailable = a3;
}

- (void)setEnableStrokeReordering:(BOOL)a3
{
  if (objc_msgSend_hasBeenSubmitted(self, a2, a3, v3, v4, v5))
  {
    if (qword_1EA84DC48 == -1)
    {
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (objc_msgSend_hasBeenSubmitted(self, v8, v9, v10, v11, v12))
  {
    if (qword_1EA84DC48 == -1)
    {
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v14 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v15 = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v15, 2u);
    goto LABEL_10;
  }

LABEL_11:
  self->_enableStrokeReordering = a3;
}

- (void)setCustomLexiconEntries:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasBeenSubmitted(self, v5, v6, v7, v8, v9))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    }
  }

  if (objc_msgSend_hasBeenSubmitted(self, v10, v11, v12, v13, v14))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v21 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v24, 2u);
    }
  }

  if (self->_customLexiconEntries != v4)
  {
    v22 = objc_msgSend_copy(v4, v16, v17, v18, v19, v20);
    customLexiconEntries = self->_customLexiconEntries;
    self->_customLexiconEntries = v22;
  }
}

- (BOOL)isEqualToRemoteRecognitionTextRequest:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToSet = 1;
  }

  else
  {
    v183.receiver = self;
    v183.super_class = CHRemoteRecognitionTextRequest;
    if (![(CHRemoteRecognitionRequest *)&v183 isEqualToRemoteRecognitionRequest:v4])
    {
      goto LABEL_18;
    }

    v10 = objc_msgSend_recognitionMode(self, v5, v6, v7, v8, v9);
    if (v10 != objc_msgSend_recognitionMode(v4, v11, v12, v13, v14, v15))
    {
      goto LABEL_18;
    }

    v21 = objc_msgSend_contentType(self, v16, v17, v18, v19, v20);
    if (v21 != objc_msgSend_contentType(v4, v22, v23, v24, v25, v26))
    {
      goto LABEL_18;
    }

    v32 = objc_msgSend_autoCapitalizationMode(self, v27, v28, v29, v30, v31);
    if (v32 != objc_msgSend_autoCapitalizationMode(v4, v33, v34, v35, v36, v37))
    {
      goto LABEL_18;
    }

    v43 = objc_msgSend_autoCorrectionMode(self, v38, v39, v40, v41, v42);
    if (v43 != objc_msgSend_autoCorrectionMode(v4, v44, v45, v46, v47, v48))
    {
      goto LABEL_18;
    }

    v54 = objc_msgSend_baseWritingDirection(self, v49, v50, v51, v52, v53);
    if (v54 != objc_msgSend_baseWritingDirection(v4, v55, v56, v57, v58, v59))
    {
      goto LABEL_18;
    }

    shouldUseTextReplacements = objc_msgSend_shouldUseTextReplacements(self, v60, v61, v62, v63, v64);
    if (shouldUseTextReplacements != objc_msgSend_shouldUseTextReplacements(v4, v66, v67, v68, v69, v70))
    {
      goto LABEL_18;
    }

    v76 = objc_msgSend_enableGen2ModelIfAvailable(self, v71, v72, v73, v74, v75);
    if (v76 != objc_msgSend_enableGen2ModelIfAvailable(v4, v77, v78, v79, v80, v81))
    {
      goto LABEL_18;
    }

    v87 = objc_msgSend_enableGen2CharacterLMIfAvailable(self, v82, v83, v84, v85, v86);
    if (v87 != objc_msgSend_enableGen2CharacterLMIfAvailable(v4, v88, v89, v90, v91, v92))
    {
      goto LABEL_18;
    }

    v98 = objc_msgSend_locales(self, v93, v94, v95, v96, v97);
    v104 = objc_msgSend_locales(v4, v99, v100, v101, v102, v103);
    v110 = v104;
    if (v98 == v104)
    {
    }

    else
    {
      v111 = objc_msgSend_locales(self, v105, v106, v107, v108, v109);
      v117 = objc_msgSend_locales(v4, v112, v113, v114, v115, v116);
      isEqualToArray = objc_msgSend_isEqualToArray_(v111, v118, v117, v119, v120, v121);

      if (!isEqualToArray)
      {
LABEL_18:
        isEqualToSet = 0;
        goto LABEL_19;
      }
    }

    v129 = objc_msgSend_activeCharacterSetPerLocale(self, v123, v124, v125, v126, v127);
    v135 = objc_msgSend_activeCharacterSetPerLocale(v4, v130, v131, v132, v133, v134);
    v141 = v135;
    if (v129 == v135)
    {
    }

    else
    {
      v142 = objc_msgSend_activeCharacterSetPerLocale(self, v136, v137, v138, v139, v140);
      v148 = objc_msgSend_activeCharacterSetPerLocale(v4, v143, v144, v145, v146, v147);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v142, v149, v148, v150, v151, v152);

      if (!isEqualToDictionary)
      {
        goto LABEL_18;
      }
    }

    v160 = objc_msgSend_customLexiconEntries(self, v154, v155, v156, v157, v158);
    v171 = objc_msgSend_customLexiconEntries(v4, v161, v162, v163, v164, v165);
    if (v160 == v171)
    {
      isEqualToSet = 1;
    }

    else
    {
      v172 = objc_msgSend_customLexiconEntries(self, v166, v167, v168, v169, v170);
      v178 = objc_msgSend_customLexiconEntries(v4, v173, v174, v175, v176, v177);
      isEqualToSet = objc_msgSend_isEqualToSet_(v172, v179, v178, v180, v181, v182);
    }
  }

LABEL_19:

  return isEqualToSet;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteRecognitionTextRequest = objc_msgSend_isEqualToRemoteRecognitionTextRequest_(self, v5, v4, v6, v7, v8);

    return isEqualToRemoteRecognitionTextRequest;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v86 = *MEMORY[0x1E69E9840];
  objc_msgSend_locales(self, a2, v2, v3, v4, v5);
  while (1)
    v15 = {;
    v21 = objc_msgSend_count(v15, v16, v17, v18, v19, v20);

    if (v7 >= v21)
    {
      break;
    }

    v27 = objc_msgSend_locales(self, v22, v23, v24, v25, v26);
    v32 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, v7, v29, v30, v31);

    v38 = objc_msgSend_activeCharacterSetPerLocale(self, v33, v34, v35, v36, v37);
    v43 = objc_msgSend_objectForKeyedSubscript_(v38, v39, v32, v40, v41, v42);

    v54 = objc_msgSend_hash(v32, v44, v45, v46, v47, v48);
    if (v43)
    {
      v8 ^= objc_msgSend_hash(v43, v49, v50, v51, v52, v53);
    }

    v9 ^= v54 << v7;

    ++v7;
    objc_msgSend_locales(self, v10, v11, v12, v13, v14);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v55 = objc_msgSend_customLexiconEntries(self, v22, v23, v24, v25, v26);
  v58 = 0;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v81, v85, 16, v57);
  if (v64)
  {
    v65 = *v82;
    do
    {
      v66 = 0;
      do
      {
        if (*v82 != v65)
        {
          objc_enumerationMutation(v55);
        }

        v58 ^= objc_msgSend_hash(*(*(&v81 + 1) + 8 * v66++), v59, v60, v61, v62, v63);
      }

      while (v64 != v66);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v59, &v81, v85, 16, v63);
    }

    while (v64);
  }

  v80.receiver = self;
  v80.super_class = CHRemoteRecognitionTextRequest;
  v67 = [(CHRemoteRecognitionRequest *)&v80 hash];
  v73 = objc_msgSend_recognitionMode(self, v68, v69, v70, v71, v72);
  return v58 ^ v67 ^ v73 ^ objc_msgSend_contentType(self, v74, v75, v76, v77, v78) ^ v8 ^ v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v9 = objc_msgSend_recognitionMode(self, v4, v5, v6, v7, v8);
  v124 = objc_msgSend_stringForRecognitionMode_(v3, v10, v9, v11, v12, v13);
  v14 = objc_opt_class();
  v20 = objc_msgSend_contentType(self, v15, v16, v17, v18, v19);
  v123 = objc_msgSend_stringForRecognitionContentType_(v14, v21, v20, v22, v23, v24);
  v25 = objc_opt_class();
  v31 = objc_msgSend_autoCapitalizationMode(self, v26, v27, v28, v29, v30);
  v122 = objc_msgSend_stringForAutoCapitalizationMode_(v25, v32, v31, v33, v34, v35);
  v36 = objc_opt_class();
  v42 = objc_msgSend_autoCorrectionMode(self, v37, v38, v39, v40, v41);
  v121 = objc_msgSend_stringForAutoCorrectionMode_(v36, v43, v42, v44, v45, v46);
  v47 = objc_opt_class();
  v53 = objc_msgSend_baseWritingDirection(self, v48, v49, v50, v51, v52);
  v120 = objc_msgSend_stringForBaseWritingDirection_(v47, v54, v53, v55, v56, v57);
  v63 = objc_msgSend_locales(self, v58, v59, v60, v61, v62);
  v67 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v63, v64, @", ", &unk_1EF1BC990, v65, v66);

  v73 = objc_msgSend_activeCharacterSetPerLocale(self, v68, v69, v70, v71, v72);
  v79 = objc_msgSend_allValues(v73, v74, v75, v76, v77, v78);
  v119 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v79, v80, @", ", &unk_1EF1BC9B0, v81, v82);

  v126.receiver = self;
  v126.super_class = CHRemoteRecognitionTextRequest;
  v83 = [(CHRemoteRecognitionRequest *)&v126 description];
  v125.receiver = self;
  v125.super_class = CHRemoteRecognitionTextRequest;
  v84 = [(CHRemoteRecognitionRequest *)&v125 description];
  v90 = objc_msgSend_length(v84, v85, v86, v87, v88, v89);
  v118 = objc_msgSend_substringToIndex_(v83, v91, v90 - 1, v92, v93, v94);

  v95 = MEMORY[0x1E696AEC0];
  v101 = objc_msgSend_customLexiconEntries(self, v96, v97, v98, v99, v100);
  v107 = objc_msgSend_count(v101, v102, v103, v104, v105, v106);
  if (self->_shouldUseTextReplacements)
  {
    v112 = @"Y";
  }

  else
  {
    v112 = @"N";
  }

  if (self->_enableGen2ModelIfAvailable)
  {
    v113 = @"Y";
  }

  else
  {
    v113 = @"N";
  }

  if (self->_enableGen2CharacterLMIfAvailable)
  {
    v114 = @"Y";
  }

  else
  {
    v114 = @"N";
  }

  if (self->_enableStrokeReordering)
  {
    v115 = @"Y";
  }

  else
  {
    v115 = @"N";
  }

  v116 = objc_msgSend_stringWithFormat_(v95, v108, @"%@, locales=[%@], mode=%@, content type=%@, autocapitalization mode=%@, autocorrection mode=%@, baseWritingDirection=%@, active character sets=[%@], custom lexicon entries count=%lu, shouldUseTextReplacements=%@, enableGen2ModelIfAvailable=%@, enableGen2CharacterLMIfAvailable=%@, enableStrokeReordering=%@"), v109, v110, v111, v118, v67, v124, v123, v122, v121, v120, v119, v107, v112, v113, v114, v115);

  return v116;
}

@end