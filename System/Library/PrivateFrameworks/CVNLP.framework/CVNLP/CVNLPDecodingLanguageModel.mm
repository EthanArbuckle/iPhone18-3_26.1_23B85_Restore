@interface CVNLPDecodingLanguageModel
+ (id)_decodingLanguageModelForLocale:(id)a3 modelType:(int)a4 decodingWeight:(id)a5 lowerBoundLogProbability:(id)a6 type:(int)a7;
+ (id)pathForLanguageModelForLocale:(id)a3 modelType:(int)a4 resourceType:(int)a5;
+ (unsigned)_normalizedLMTokenIDForWord:(id)a3 withTokenID:(unsigned int)TokenIDForString sourceLanguageModel:(id)a5 outScore:(double *)a6;
- (CVNLPDecodingLanguageModel)initWithCVNLPLanguageModel:(CVNLPLanguageModel *)a3 locale:(id)a4 decodingWeight:(id)a5;
- (CVNLPDecodingLanguageModel)initWithLMLanguageModel:(void *)a3 locale:(id)a4 decodingWeight:(id)a5;
- (CVNLPDecodingLanguageModel)initWithLanguageModel:(void *)a3 locale:(id)a4;
- (id)_initWithLanguageModel:(void *)a3 locale:(id)a4 decodingWeight:(id)a5 lowerBoundLogProbability:(id)a6 type:(int)a7;
- (int64_t)requiredContextLengthForStringLength:(int64_t)a3;
- (vector<unsigned)characterTokenIDsForString:(CVNLPDecodingLanguageModel *)self;
- (vector<unsigned)wordTokenIDsForString:(CVNLPDecodingLanguageModel *)self outTokenRanges:(SEL)a3;
- (void)dealloc;
@end

@implementation CVNLPDecodingLanguageModel

- (id)_initWithLanguageModel:(void *)a3 locale:(id)a4 decodingWeight:(id)a5 lowerBoundLogProbability:(id)a6 type:(int)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = CVNLPDecodingLanguageModel;
  v16 = [(CVNLPInformationStream *)&v19 initWithDecodingWeight:v14 lowerBoundLogProbability:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_locale, a4);
    v17->_lmSPIType = a7;
    if ((a7 - 1) < 2)
    {
      v17->_languageModel = CFRetain(a3);
    }

    v17->_tokenizer = LMStreamTokenizerCreate();
  }

  return v17;
}

- (CVNLPDecodingLanguageModel)initWithLMLanguageModel:(void *)a3 locale:(id)a4 decodingWeight:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend_defaultLowerBoundLogProbability(CVNLPInformationStream, v10, v11, v12);
  v15 = objc_msgSend__initWithLanguageModel_locale_decodingWeight_lowerBoundLogProbability_type_(self, v14, a3, v8, v9, v13, 1);

  return v15;
}

- (CVNLPDecodingLanguageModel)initWithCVNLPLanguageModel:(CVNLPLanguageModel *)a3 locale:(id)a4 decodingWeight:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend_defaultLowerBoundLogProbability(CVNLPInformationStream, v10, v11, v12);
  v15 = objc_msgSend__initWithLanguageModel_locale_decodingWeight_lowerBoundLogProbability_type_(self, v14, a3, v8, v9, v13, 2);

  return v15;
}

- (CVNLPDecodingLanguageModel)initWithLanguageModel:(void *)a3 locale:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_defaultDecodingWeight(CVNLPInformationStream, v7, v8, v9);
  v14 = objc_msgSend_defaultLowerBoundLogProbability(CVNLPInformationStream, v11, v12, v13);
  v16 = objc_msgSend__initWithLanguageModel_locale_decodingWeight_lowerBoundLogProbability_type_(self, v15, a3, v6, v10, v14, 1);

  return v16;
}

- (void)dealloc
{
  lmSPIType = self->_lmSPIType;
  if (lmSPIType == 2)
  {
    CFRelease(self->_languageModel);
  }

  else if (lmSPIType == 1)
  {
    languageModel = self->_languageModel;
    LMLanguageModelRelease();
  }

  if (self->_tokenizer)
  {
    LMStreamTokenizerRelease();
  }

  v5.receiver = self;
  v5.super_class = CVNLPDecodingLanguageModel;
  [(CVNLPDecodingLanguageModel *)&v5 dealloc];
}

+ (id)_decodingLanguageModelForLocale:(id)a3 modelType:(int)a4 decodingWeight:(id)a5 lowerBoundLogProbability:(id)a6 type:(int)a7
{
  v72[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v16 = a6;
  if (a7 == 2)
  {
    v67[0] = @"CVNLPLocaleKey";
    v24 = objc_msgSend_localeIdentifier(v11, v13, v14, v15);
    v27 = v24;
    if (a4 == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v68[0] = v24;
    v67[1] = @"CVNLPTokenTypeKey";
    v29 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v25, v28, v26);
    v68[1] = v29;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v68, v67, 2);

    CVNLPLanguageModelCreate(v31);
  }

  if (a7 != 1)
  {
LABEL_7:
    v23 = 0;
    goto LABEL_21;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v71 = *MEMORY[0x1E69ABF90];
      v17 = objc_msgSend_localeIdentifier(v11, v13, v14, v15);
      v72[0] = v17;
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v72, &v71, 1);

      v20 = LMLanguageModelCreate();
      if (v20)
      {
        v21 = [CVNLPDecodingLanguageModel alloc];
        v23 = objc_msgSend__initWithLanguageModel_locale_decodingWeight_lowerBoundLogProbability_type_(v21, v22, v20, v11, v12, v16, 1);
        LMLanguageModelRelease();
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_1D9D9E010;
  v65 = sub_1D9D9E020;
  v66 = 0;
  LDEnumerateAssetDataItems();
  v35 = v62[5];
  if (v35)
  {
    v36 = objc_msgSend_path(v35, v32, v33, v34);
    v40 = objc_msgSend_lastPathComponent(v36, v37, v38, v39);
    v44 = objc_msgSend_stringByDeletingPathExtension(v40, v41, v42, v43);

    v48 = objc_msgSend_stringByDeletingLastPathComponent(v36, v45, v46, v47);
    v69[0] = *MEMORY[0x1E69ABF90];
    v52 = objc_msgSend_languageCode(v11, v49, v50, v51);
    v70[0] = v52;
    v70[1] = MEMORY[0x1E695E110];
    v53 = *MEMORY[0x1E69ABF70];
    v69[1] = *MEMORY[0x1E69ABF50];
    v69[2] = v53;
    v69[3] = *MEMORY[0x1E69ABF68];
    v70[2] = v48;
    v70[3] = v44;
    v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, v70, v69, 4);

    v56 = LMLanguageModelCreate();
    if (v56)
    {
      v57 = [CVNLPDecodingLanguageModel alloc];
      v23 = objc_msgSend__initWithLanguageModel_locale_decodingWeight_lowerBoundLogProbability_type_(v57, v58, v56, v11, v12, v16, 1);
      LMLanguageModelRelease();
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v61, 8);

LABEL_21:
  v59 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)pathForLanguageModelForLocale:(id)a3 modelType:(int)a4 resourceType:(int)a5
{
  v7 = a3;
  v11 = v7;
  memset(&v40, 0, sizeof(v40));
  v39 = &unk_1F554E258;
  if (a4 == 2 && a5 == 1)
  {
    v12 = objc_msgSend_languageCode(v7, v8, v9, v10);
    v15 = objc_msgSend_stringByAppendingPathExtension_(v12, v13, @"lm", v14);
    sub_1D9D87968(v15, v37);

    strcpy(v30, "Models/word_lm");
    v31 = 14;
    v32 = objc_alloc_init(BundleHelper);
    sub_1D9D9E78C(v30, v37, v33);
    sub_1D9D89D38(&v35, v33);
    std::string::operator=(&v40, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v17 = v33[0];
  }

  else
  {
    if (a4 != 1 || a5 != 2)
    {
      goto LABEL_18;
    }

    v16 = objc_msgSend_languageCode(v7, v8, v9, v10);
    sub_1D9D87968(v16, v37);

    strcpy(v30, "Models");
    v31 = 6;
    v32 = objc_alloc_init(BundleHelper);
    sub_1D9D9E78C(v30, v37, v28);
    sub_1D9D89D38(&v35, v28);
    std::string::operator=(&v40, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v17 = v28[0];
  }

  operator delete(v17);
LABEL_16:

  if (v31 < 0)
  {
    operator delete(v30[0]);
    if (v38 < 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    v19 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_23:
  operator delete(v37[0]);
  v20 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  v19 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v40.__r_.__value_.__l.__size_;
  }

  if (!v20)
  {
LABEL_37:
    v25 = 0;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_26:
  v21 = sub_1D9D54A80(&v39);
  v19 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if (!v21)
  {
    goto LABEL_37;
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v40;
  }

  else
  {
    v22 = v40.__r_.__value_.__r.__words[0];
  }

  if (!v22)
  {
    v35 = 0;
    v25 = 0;
    if (!v25)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v40.__r_.__value_.__l.__size_;
  }

  v24 = CFStringCreateWithBytes(0, v22, v23, 0x8000100u, 0);
  v35 = v24;
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v25 = v24;
  if (v25)
  {
LABEL_43:
    CFRelease(v25);
  }

LABEL_44:
  if ((*(&v40.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_38:
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_39:

  return v25;
}

- (int64_t)requiredContextLengthForStringLength:(int64_t)a3
{
  lmSPIType = self->_lmSPIType;
  if (lmSPIType == 2)
  {
    return a3;
  }

  if (lmSPIType == 1)
  {
    return 5;
  }

  return 0;
}

- (vector<unsigned)characterTokenIDsForString:(CVNLPDecodingLanguageModel *)self
{
  v6 = a4;
  v10 = objc_msgSend_length(v6, v7, v8, v9);
  v13 = objc_msgSend_requiredContextLengthForStringLength_(self, v11, v10, v12);
  if (v13)
  {
    if (!(v13 >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (objc_msgSend_length(v6, v14, v15, v16))
  {
    objc_msgSend_length(v6, v17, v18, v19);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;

  return result;
}

- (vector<unsigned)wordTokenIDsForString:(CVNLPDecodingLanguageModel *)self outTokenRanges:(SEL)a3
{
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x4812000000;
  v48[3] = sub_1D9D9F090;
  v48[4] = sub_1D9D9F0B4;
  v48[5] = &unk_1D9DF809A;
  memset(&v48[6], 0, 24);
  v33 = a4;
  objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7);
  objc_claimAutoreleasedReturnValue();
  v10 = objc_msgSend_stringByAppendingString_(v33, v8, @" ", v9);
  v47 = 0;
  v11 = sub_1D9DA0144(v10, &v47);
  v12 = v47;

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x4012000000;
  v37 = sub_1D9D9F0CC;
  v38 = nullsub_17;
  v39 = &unk_1D9DF809A;
  v40 = 0;
  v41 = 0;
  v40 = objc_msgSend_length(v11, v13, v14, v15);
  v41 = 0;
  v16 = v43[3];
  if (v16 < objc_msgSend_count(v12, v17, v18, v19))
  {
    v22 = objc_msgSend_objectAtIndex_(v12, v20, v43[3], v21);
    v26 = objc_msgSend_rangeValue(v22, v23, v24, v25);
    v27 = v35;
    v35[6] = v26;
    v27[7] = v28;

    ++v43[3];
  }

  objc_msgSend_maximumLengthOfBytesUsingEncoding_(v11, v20, 4, v21);
  objc_msgSend_length(v11, v29, v30, v31);
  operator new[]();
}

+ (unsigned)_normalizedLMTokenIDForWord:(id)a3 withTokenID:(unsigned int)TokenIDForString sourceLanguageModel:(id)a5 outScore:(double *)a6
{
  v8 = a3;
  objc_msgSend_languageModel(a5, v9, v10, v11);
  if (!TokenIDForString)
  {
    TokenIDForString = LMLanguageModelGetTokenIDForString();
    if (!TokenIDForString)
    {
      v15 = objc_msgSend_lowercaseString(v8, v12, v13, v14);
      TokenIDForString = LMLanguageModelGetTokenIDForString();
    }
  }

  if (TokenIDForString == 28)
  {
    v16 = 6;
  }

  else
  {
    v16 = TokenIDForString;
  }

  if ((v16 & 0xFFFFFFFE) == 0x82)
  {
    v17 = 3;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

@end