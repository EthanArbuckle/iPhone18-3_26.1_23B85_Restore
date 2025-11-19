@interface CSUSystemSearchTextEncoderV1
- (BOOL)checkIfEmbeddingInDstBufferIsContiguous:(const void *)a3;
- (BOOL)checkIfEmbeddingInSrcBufferIsContiguous:(id)a3;
- (BOOL)loadResources:(id *)a3;
- (CSUSystemSearchTextEncoderV1)initWithConfiguration:(id)a3;
- (EspressoTensor)getTokenEmbeddingsforChunks:(SEL)a3 error:(vector<std:(std:(id *)a5 :allocator<std::vector<unsigned int>>> *)a4 :vector<unsigned)int>;
- (id).cxx_construct;
- (vector<unsigned)getTokensOnText:(CSUSystemSearchTextEncoderV1 *)self withBOS:(SEL)a3 withEOS:(id)a4 withError:(BOOL)a5;
- (void)_unsafeRunOnInput:(id)a3 completion:(id)a4;
- (void)_unsafeRunOnInputText:(id)a3 completion:(id)a4;
- (void)runOnInput:(id)a3 completion:(id)a4;
- (void)runOnInputText:(id)a3 completion:(id)a4;
@end

@implementation CSUSystemSearchTextEncoderV1

- (CSUSystemSearchTextEncoderV1)initWithConfiguration:(id)a3
{
  v9.receiver = self;
  v9.super_class = CSUSystemSearchTextEncoderV1;
  v6 = [(CSUSystemSearchTextEncoderV1 *)&v9 init];
  if (v6)
  {
    v7 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v3, @"CSUSystemSearchTextEncoderV1 is deprecated, please switch over to CSUTextEncoder for text encoding/embedding purposes.", v4, v5);
  }

  return 0;
}

- (vector<unsigned)getTokensOnText:(CSUSystemSearchTextEncoderV1 *)self withBOS:(SEL)a3 withEOS:(id)a4 withError:(BOOL)a5
{
  v8 = a6;
  v9 = a5;
  v12 = a4;
  if (objc_msgSend_loadResources_(self, v13, a7, v14, v15))
  {
    if (objc_msgSend_inputIsLowerCase(self->_configuration, v16, v17, v18, v19))
    {
      v24 = objc_msgSend_lowercaseString(v12, v20, v21, v22, v23);

      v12 = v24;
    }

    v25 = v12;
    v30 = objc_msgSend_UTF8String(v25, v26, v27, v28, v29);
    v31 = strlen(v30);
    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AC060A04();
    }

    v32 = v31;
    if (v31 >= 0x17)
    {
      operator new();
    }

    v40 = v31;
    if (v31)
    {
      memmove(&__dst, v30, v31);
    }

    *(&__dst + v32) = 0;
    (*(*self->_vocabulary.__ptr_ + 16))(&__src);
    if (v9)
    {
      v36 = 1;
      sub_1AC071660(&__src, __src, &v36);
    }

    v34 = __src;
    v33 = v38;
    if (!v8)
    {
      v33 = v38 - 4;
    }

    retstr->var1 = 0;
    retstr->var2 = 0;
    retstr->var0 = 0;
    if (v33 != v34)
    {
      if (((v33 - v34) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    if (v34)
    {
      v38 = v34;
      operator delete(v34);
    }

    if (v40 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (BOOL)loadResources:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = sub_1AC090E50();
  v5 = os_signpost_id_generate(v4);

  v6 = sub_1AC090E50();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v23[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CSUTextEncoderEspressoV1LoadResources", "", v23, 2u);
  }

  v26[0] = &unk_1F20D0778;
  v26[1] = v5;
  v27 = v26;
  if (!self->_textEncoderNet.__ptr_)
  {
    v12 = objc_msgSend_vocabularyModelPath(self->_configuration, v8, v9, v10, v11);
    v13 = v12;
    v18 = objc_msgSend_UTF8String(v12, v14, v15, v16, v17);
    v19 = strlen(v18);
    if (v19 < 0x7FFFFFFFFFFFFFF8)
    {
      v20 = v19;
      if (v19 < 0x17)
      {
        v25 = v19;
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

  unk_1F20D07A8();
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27);
  }

  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)checkIfEmbeddingInDstBufferIsContiguous:(const void *)a3
{
  v4 = *(a3 + 2);
  v3 = *(a3 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  (*(**(a3 + 5) + 32))(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

- (BOOL)checkIfEmbeddingInSrcBufferIsContiguous:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_strides(v4, v5, v6, v7, v8);
  v18 = objc_msgSend_shape(v4, v10, v11, v12, v13);
  for (i = 0; ; ++i)
  {
    if (i >= objc_msgSend_count(v18, v14, v15, v16, v17))
    {
      v34 = 0;
      goto LABEL_7;
    }

    v23 = objc_msgSend_objectAtIndex_(v18, v20, i, v21, v22);
    v28 = objc_msgSend_unsignedLongValue(v23, v24, v25, v26, v27);
    v33 = objc_msgSend_tokenEmbeddingLength(self->_configuration, v29, v30, v31, v32);

    if (v28 == v33)
    {
      break;
    }
  }

  v35 = objc_msgSend_objectAtIndex_(v9, v14, i, v16, v17);
  v34 = objc_msgSend_unsignedLongValue(v35, v36, v37, v38, v39) == 1;

LABEL_7:
  return v34;
}

- (EspressoTensor)getTokenEmbeddingsforChunks:(SEL)a3 error:(vector<std:(std:(id *)a5 :allocator<std::vector<unsigned int>>> *)a4 :vector<unsigned)int>
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_maximumSequenceLength(self->_configuration, a3, a4, a5, v5);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  operator new();
}

- (void)_unsafeRunOnInput:(id)a3 completion:(id)a4
{
  v13[37] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13[0] = 0;
  LOBYTE(a4) = objc_msgSend_loadResources_(self, v6, v13, v7, v8);
  v9 = v13[0];
  if (a4)
  {
    memset(&v13[1], 0, 24);
    operator new();
  }

  v12[2](v12, 0, v9);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_unsafeRunOnInputText:(id)a3 completion:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  objc_msgSend_setString_(v8, v9, v17, v10, v11);
  objc_msgSend_addObject_(v7, v12, v8, v13, v14);
  objc_msgSend_runOnInput_completion_(self, v15, v7, v6, v16);
}

- (void)runOnInput:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend__unsafeRunOnInput_completion_(self, v8, v6, v7, v9);
}

- (void)runOnInputText:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend__unsafeRunOnInputText_completion_(self, v8, v6, v7, v9);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end