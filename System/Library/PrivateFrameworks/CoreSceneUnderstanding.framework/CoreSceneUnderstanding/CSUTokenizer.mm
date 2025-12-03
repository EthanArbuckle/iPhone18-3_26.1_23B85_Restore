@interface CSUTokenizer
+ (id)TokenizerForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisionsForTokenizer;
- (CSUTokenizer)initWithRevision:(int64_t)revision error:(id *)error;
- (id)getTextFromTokenIds:(id)ids error:(id *)error;
- (id)getTokenIDsForText:(id)text;
- (id)getTokensForText:(id)text;
@end

@implementation CSUTokenizer

+ (id)availableRevisionsForTokenizer
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 12, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 11, v7, v8);
  objc_msgSend_addIndex_(v2, v9, 8, v10, v11);
  objc_msgSend_addIndex_(v2, v12, 7, v13, v14);
  objc_msgSend_addIndex_(v2, v15, 2, v16, v17);
  objc_msgSend_addIndex_(v2, v18, 1, v19, v20);
  objc_msgSend_addIndex_(v2, v21, 2, v22, v23);
  v28 = objc_msgSend_copy(v2, v24, v25, v26, v27);

  return v28;
}

+ (id)TokenizerForRevision:(int64_t)revision error:(id *)error
{
  v6 = [CSUTokenizer alloc];
  v9 = objc_msgSend_initWithRevision_error_(v6, v7, revision, error, v8);

  return v9;
}

- (CSUTokenizer)initWithRevision:(int64_t)revision error:(id *)error
{
  v7 = objc_msgSend_createForRevision_error_(CSUTextEncoderConfiguration, a2, revision, error, v4);
  config = self->_config;
  self->_config = v7;

  v13 = self->_config;
  if (v13)
  {
    self->_revision = revision;
    ptr = self->_vocabulary.__ptr_;
    self->_vocabulary.__ptr_ = 0;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
      v13 = self->_config;
    }

    self->_toLower = 1;
    v15 = objc_msgSend_systemSearchTextEncoderConfig(v13, v9, v10, v11, v12);

    v20 = self->_config;
    if (v15)
    {
      v21 = objc_msgSend_systemSearchTextEncoderConfig(v20, v16, v17, v18, v19);
      v26 = objc_msgSend_vocabularyModelPath(v21, v22, v23, v24, v25);

      v27 = v26;
      v32 = objc_msgSend_UTF8String(v27, v28, v29, v30, v31);
      v33 = strlen(v32);
      if (v33 <= 0x7FFFFFFFFFFFFFF7)
      {
        v34 = v33;
        if (v33 < 0x17)
        {
          v56 = v33;
          if (v33)
          {
            memmove(&__dst, v32, v33);
          }

          *(&__dst + v34) = 0;
          sub_1AC0600A4();
        }

        operator new();
      }

      sub_1AC060A04();
    }

    v35 = objc_msgSend_textEncoderE5MLConfig(v20, v16, v17, v18, v19);

    if (v35)
    {
      v40 = objc_msgSend_textEncoderE5MLConfig(self->_config, v36, v37, v38, v39);
      v45 = objc_msgSend_vocabularyModelPath(v40, v41, v42, v43, v44);

      v46 = v45;
      v51 = objc_msgSend_UTF8String(v46, v47, v48, v49, v50);
      v52 = strlen(v51);
      if (v52 <= 0x7FFFFFFFFFFFFFF7)
      {
        v53 = v52;
        if (v52 < 0x17)
        {
          v56 = v52;
          if (v52)
          {
            memmove(&__dst, v51, v52);
          }

          *(&__dst + v53) = 0;
          sub_1AC0600A4();
        }

        operator new();
      }

      sub_1AC060A04();
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)getTokenIDsForText:(id)text
{
  textCopy = text;
  v9 = textCopy;
  if (self->_toLower)
  {
    v10 = objc_msgSend_lowercaseString(textCopy, v5, v6, v7, v8);

    v9 = v10;
  }

  v11 = v9;
  v16 = objc_msgSend_UTF8String(v11, v12, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    v21 = strlen(v16);
    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AC060A04();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      operator new();
    }

    v40 = v21;
    if (v21)
    {
      memmove(&__dst, v20, v21);
    }

    *(&__dst + v22) = 0;
    (*(*self->_vocabulary.__ptr_ + 16))(&__p);
    v29 = objc_opt_new();
    v30 = __p;
    v31 = v38;
    if (__p != v38)
    {
      do
      {
        v32 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v25, *v30, v27, v28);
        objc_msgSend_addObject_(v29, v33, v32, v34, v35);

        ++v30;
      }

      while (v30 != v31);
    }

    v24 = objc_msgSend_copy(v29, v25, v26, v27, v28);

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    if (v40 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v23 = objc_msgSend_errorForInvalidModelWithLocalizedDescription_(CSUError, v17, @"getTokensForText input text is nil! returning nil", v18, v19);
    v24 = 0;
  }

  return v24;
}

- (id)getTokensForText:(id)text
{
  v47 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (textCopy)
  {
    v38 = objc_msgSend_getTokenIDsForText_(self, v4, textCopy, v5, v6);
    v8 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v38;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v42, v46, 16);
    if (v10)
    {
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x1E696AEC0]);
          ptr = self->_vocabulary.__ptr_;
          v20 = objc_msgSend_unsignedIntValue(v13, v16, v17, v18, v19);
          (*(*ptr + 40))(__p, ptr, v20);
          if (v41 >= 0)
          {
            v24 = objc_msgSend_initWithUTF8String_(v14, v21, __p, v22, v23);
          }

          else
          {
            v24 = objc_msgSend_initWithUTF8String_(v14, v21, __p[0], v22, v23);
          }

          v28 = v24;
          objc_msgSend_addObject_(v8, v25, v24, v26, v27);

          if (v41 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v42, v46, 16);
      }

      while (v10);
    }

    v34 = objc_msgSend_copy(v8, v30, v31, v32, v33);
  }

  else
  {
    v35 = objc_msgSend_errorForInvalidModelWithLocalizedDescription_(CSUError, v4, @"getTokensForText input text is nil! returning nil", v5, v6);
    v34 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)getTextFromTokenIds:(id)ids error:(id *)error
{
  idsCopy = ids;
  v10 = idsCopy;
  if (!idsCopy)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v15 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v6, @"input cannot be nil!", v8, v9);
    goto LABEL_9;
  }

  v11 = objc_msgSend_count(idsCopy, v6, v7, v8, v9);
  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  if (error)
  {
    v15 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v12, @"input has no tokens ids!", v13, v14);
LABEL_9:
    *error = v15;
  }

LABEL_10:

  return 0;
}

@end