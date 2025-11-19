@interface CSUTextEncoderConfiguration
+ (id)availableContextLengthsForRevision:(int64_t)a3;
+ (id)availableRevisions;
+ (id)createForRevision:(int64_t)a3 error:(id *)a4;
+ (id)defaultContextLengthForRevision:(int64_t)a3;
- (BOOL)setInferenceBackend:(int64_t)a3;
- (id)initSystemSearchTextEncoderV1:(id)a3 forRevision:(int64_t)a4;
- (id)initTextEncoderE5ML:(id)a3 forRevision:(int64_t)a4;
- (void)setAdditionalLayerNames:(id)a3;
- (void)setContextLength:(unint64_t)a3;
@end

@implementation CSUTextEncoderConfiguration

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 7, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 2, v7, v8);
  objc_msgSend_addIndex_(v2, v9, 8, v10, v11);
  objc_msgSend_addIndex_(v2, v12, 11, v13, v14);
  objc_msgSend_addIndex_(v2, v15, 12, v16, v17);

  return v2;
}

+ (id)availableContextLengthsForRevision:(int64_t)a3
{
  if ((a3 - 6) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E7967FB0[a3 - 6];
  }
}

+ (id)defaultContextLengthForRevision:(int64_t)a3
{
  if ((a3 - 6) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E7967FE8[a3 - 6];
  }
}

+ (id)createForRevision:(int64_t)a3 error:(id *)a4
{
  v6 = 0;
  *a4 = 0;
  if (a3 <= 10)
  {
    if ((a3 - 6) >= 2)
    {
      if (a3 != 8)
      {
        goto LABEL_20;
      }

      v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 5, a4, v4);
      v12 = *a4;
      if (*a4)
      {
        goto LABEL_13;
      }

      v20 = [CSUTextEncoderConfiguration alloc];
      inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v20, v21, v11, 8, v22);
    }

    else
    {
      v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 2, a4, v4);
      v12 = *a4;
      if (*a4)
      {
        goto LABEL_13;
      }

      v13 = [CSUTextEncoderConfiguration alloc];
      inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v13, v14, v11, a3, v15);
    }

LABEL_18:
    v6 = inited;
    goto LABEL_19;
  }

  if (a3 != 11)
  {
    if (a3 != 12)
    {
      goto LABEL_20;
    }

    v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 8, a4, v4);
    v12 = *a4;
    if (*a4)
    {
      goto LABEL_13;
    }

    v23 = [CSUTextEncoderConfiguration alloc];
    inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v23, v24, v11, 12, v25);
    goto LABEL_18;
  }

  v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 7, a4, v4);
  v12 = *a4;
  if (!*a4)
  {
    v17 = [CSUTextEncoderConfiguration alloc];
    inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v17, v18, v11, 11, v19);
    goto LABEL_18;
  }

LABEL_13:
  objc_msgSend_logInternalError_(CSUError, v8, v12, v9, v10);
  v6 = 0;
LABEL_19:

LABEL_20:

  return v6;
}

- (id)initSystemSearchTextEncoderV1:(id)a3 forRevision:(int64_t)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = CSUTextEncoderConfiguration;
  v8 = [(CSUTextEncoderConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_revision = a4;
    objc_storeStrong(&v8->_systemSearchTextEncoderConfig, a3);
    v9->_tokenEmbeddingLength = objc_msgSend_tokenEmbeddingLength(v9->_systemSearchTextEncoderConfig, v10, v11, v12, v13);
    textEncoderE5MLConfig = v9->_textEncoderE5MLConfig;
    v9->_textEncoderE5MLConfig = 0;

    v15 = v9;
  }

  return v9;
}

- (id)initTextEncoderE5ML:(id)a3 forRevision:(int64_t)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = CSUTextEncoderConfiguration;
  v8 = [(CSUTextEncoderConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_revision = a4;
    objc_storeStrong(&v8->_textEncoderE5MLConfig, a3);
    v9->_tokenEmbeddingLength = objc_msgSend_tokenEmbeddingLength(v9->_textEncoderE5MLConfig, v10, v11, v12, v13);
    systemSearchTextEncoderConfig = v9->_systemSearchTextEncoderConfig;
    v9->_systemSearchTextEncoderConfig = 0;

    v15 = v9;
  }

  return v9;
}

- (void)setAdditionalLayerNames:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_additionalLayerNames, a3);
  systemSearchTextEncoderConfig = self->_systemSearchTextEncoderConfig;
  if (systemSearchTextEncoderConfig)
  {
    objc_msgSend_setAdditionalLayerNames_(systemSearchTextEncoderConfig, v5, v10, v6, v7);
  }

  textEncoderE5MLConfig = self->_textEncoderE5MLConfig;
  if (textEncoderE5MLConfig)
  {
    objc_msgSend_setAdditionalLayerNames_(textEncoderE5MLConfig, v5, v10, v6, v7);
  }
}

- (BOOL)setInferenceBackend:(int64_t)a3
{
  if ((self->_revision - 11) <= 1)
  {
    v3 = sub_1AC090E50();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F8DC();
    }
  }

  return 0;
}

- (void)setContextLength:(unint64_t)a3
{
  self->_contextLength = a3;
  if (self->_systemSearchTextEncoderConfig)
  {
    v5 = sub_1AC090E50();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F910();
    }
  }

  else
  {
    textEncoderE5MLConfig = self->_textEncoderE5MLConfig;
    if (textEncoderE5MLConfig)
    {
      objc_msgSend_setContextLength_(textEncoderE5MLConfig, a2, a3, v3, v4);
      revision = self->_revision;
      if (revision == 11)
      {
        contextLength = self->_contextLength;
        v10 = sub_1AC090E50();
        v11 = v10;
        if (contextLength == 512)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *v41 = 0;
            _os_log_impl(&dword_1AC05D000, v11, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_512", v41, 2u);
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v15, @"main_ctx_512", v16, v17);
        }

        else if (contextLength == 77)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC05D000, v11, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_77", buf, 2u);
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v12, @"main_ctx_77", v13, v14);
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1AC11F944();
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v18, @"main_ctx_77", v19, v20);
          self->_contextLength = 77;
          objc_msgSend_setContextLength_(self->_textEncoderE5MLConfig, v21, 77, v22, v23);
        }

        revision = self->_revision;
      }

      if (revision == 12)
      {
        v24 = self->_contextLength;
        v25 = sub_1AC090E50();
        v26 = v25;
        if (v24 == 128)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *v39 = 0;
            _os_log_impl(&dword_1AC05D000, v26, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_128", v39, 2u);
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v30, @"main_ctx_128", v31, v32);
        }

        else if (v24 == 77)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *v40 = 0;
            _os_log_impl(&dword_1AC05D000, v26, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_77", v40, 2u);
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v27, @"main_ctx_77", v28, v29);
        }

        else
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1AC11F978();
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v33, @"main_ctx_128", v34, v35);
          self->_contextLength = 128;
          objc_msgSend_setContextLength_(self->_textEncoderE5MLConfig, v36, 128, v37, v38);
        }
      }
    }
  }
}

@end