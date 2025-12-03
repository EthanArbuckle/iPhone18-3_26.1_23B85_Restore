@interface CSUSystemSearchTokenizer
+ (id)SystemSearchTokenizerForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisionsForSystemSearchTokenizer;
- (CSUSystemSearchTokenizer)initWithRevision:(int64_t)revision error:(id *)error;
- (id)getTokenIDsForText:(id)text;
- (id)getTokensForText:(id)text;
@end

@implementation CSUSystemSearchTokenizer

+ (id)availableRevisionsForSystemSearchTokenizer
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 5, v4, v5);
  v10 = objc_msgSend_copy(v2, v6, v7, v8, v9);

  return v10;
}

+ (id)SystemSearchTokenizerForRevision:(int64_t)revision error:(id *)error
{
  v6 = [CSUSystemSearchTokenizer alloc];
  v9 = objc_msgSend_initWithRevision_error_(v6, v7, revision, error, v8);

  return v9;
}

- (CSUSystemSearchTokenizer)initWithRevision:(int64_t)revision error:(id *)error
{
  self->_revision = revision;
  *error = 0;
  if (revision == 5)
  {
    v7 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 1, error, v4);
    v12 = objc_msgSend_vocabularyModelPath(v7, v8, v9, v10, v11);
    v13 = v12;
    v18 = objc_msgSend_UTF8String(v13, v14, v15, v16, v17);
    v19 = strlen(v18);
    if (v19 < 0x7FFFFFFFFFFFFFF8)
    {
      v20 = v19;
      if (v19 < 0x17)
      {
        v23 = v19;
        if (v19)
        {
          memmove(&__dst, v18, v19);
        }

        *(&__dst + v20) = 0;

        sub_1AC0600A4();
      }

      operator new();
    }

    sub_1AC060A04();
  }

  if (revision == 2)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, a2, @"tokenizer revision CSUSystemSearchTextEncoderV1ConfigurationRevision_v2_0_English not supported!", error, v4);
  }

  else
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, a2, @"tokenizer revision unknown!", error, v4);
  }
  *error = ;

  return 0;
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

@end