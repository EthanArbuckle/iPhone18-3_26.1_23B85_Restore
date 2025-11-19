@interface CVNLPTokenIDConverter
- (BOOL)enumerateTokensForText:(id)a3 withBlock:(id)a4;
- (CVNLPTokenIDConverter)initWithLanguageModel:(void *)a3;
- (CVNLPTokenIDConverter)initWithResource:(id)a3 andTokenType:(int)a4;
- (id).cxx_construct;
- (void)enumerateTokenIDsForText:(id)a3 withBlock:(id)a4;
@end

@implementation CVNLPTokenIDConverter

- (CVNLPTokenIDConverter)initWithResource:(id)a3 andTokenType:(int)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = CVNLPTokenIDConverter;
  if ([(CVNLPTokenIDConverter *)&v24 init])
  {
    v10 = objc_msgSend_path(v6, v7, v8, v9);
    v11 = v10;
    v15 = objc_msgSend_UTF8String(v10, v12, v13, v14);
    memset(&v23, 0, sizeof(v23));
    v16 = (v15 - 1);
    do
    {
      v17 = v16->__r_.__value_.__s.__data_[1];
      v16 = (v16 + 1);
    }

    while (v17);
    sub_1D9D2B214(&v23, v15, v16);
    v22 = &unk_1F554E258;

    sub_1D9D54E34(&v21, &v22);
    sub_1D9DB8A38(&v21, a4);
  }

  v18 = 0;

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (CVNLPTokenIDConverter)initWithLanguageModel:(void *)a3
{
  v19.receiver = self;
  v19.super_class = CVNLPTokenIDConverter;
  v4 = [(CVNLPTokenIDConverter *)&v19 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = *(a3 + 15);
  v7 = *(a3 + 16);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  cntrl = v4->_vocabTokenizer.__cntrl_;
  v4->_vocabTokenizer.__ptr_ = v6;
  v4->_vocabTokenizer.__cntrl_ = v7;
  if (cntrl && !atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    ptr = v5->_vocabTokenizer.__ptr_;
    v10 = *(ptr + 31);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v11 = *(ptr + 1);
    v10 = *(ptr + 2);
    goto LABEL_13;
  }

  ptr = v5->_vocabTokenizer.__ptr_;
  v10 = *(ptr + 31);
  if (v10 < 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = ptr + 8;
LABEL_13:
  v5->_bosTokenID = (*(*ptr + 40))(ptr, v11, v10);
  v12 = v5->_vocabTokenizer.__ptr_;
  v13 = *(v12 + 55);
  if (v13 < 0)
  {
    v14 = *(v12 + 4);
    v13 = *(v12 + 5);
  }

  else
  {
    v14 = v12 + 32;
  }

  v5->_eosTokenID = (*(*v12 + 40))(v12, v14, v13);
  v15 = v5->_vocabTokenizer.__ptr_;
  v16 = *(v15 + 79);
  if (v16 < 0)
  {
    v17 = *(v15 + 7);
    v16 = *(v15 + 8);
  }

  else
  {
    v17 = v15 + 56;
  }

  v5->_unkTokenID = (*(*v15 + 40))(v15, v17, v16);
  return v5;
}

- (void)enumerateTokenIDsForText:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  ptr = self->_vocabTokenizer.__ptr_;
  if (ptr)
  {
    v9 = v6;
    v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
    v14 = strlen(v13);
    (*(*ptr + 24))(&__p, ptr, v13, v14, 0);
    v17 = 0;
    v15 = __p;
    if (v19 != __p)
    {
      v16 = 0;
      do
      {
        (*(v7 + 2))(v7, 0x7FFFFFFFFFFFFFFFLL, 0, v15[v16], &v17);
        v15 = __p;
        if (v17)
        {
          break;
        }

        ++v16;
      }

      while (v16 < (v19 - __p) >> 2);
    }

    if (v15)
    {
      v19 = v15;
      operator delete(v15);
    }
  }
}

- (BOOL)enumerateTokensForText:(id)a3 withBlock:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  ptr = self->_vocabTokenizer.__ptr_;
  if (ptr)
  {
    v9 = v6;
    v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
    v14 = strlen(v13);
    (*(*ptr + 16))(&__p, ptr, v13, v14, 0);
    v37 = 0;
    v15 = __p;
    v16 = v39;
    if (v39 != __p)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = &v15[v17];
        v20 = SHIBYTE(v15[v17 + 2]);
        if (v20 < 0)
        {
          if (!*v19)
          {
            v22 = 0;
            if (v22)
            {
              goto LABEL_9;
            }

            goto LABEL_10;
          }

          v20 = v19[1];
          v19 = *v19;
        }

        v21 = CFStringCreateWithBytes(0, v19, v20, 0x8000100u, 0);
        if (!v21)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v22 = v21;
        if (v22)
        {
LABEL_9:
          CFRelease(v22);
        }

LABEL_10:
        v23 = (__p + v17 * 8);
        v24 = *(__p + v17 * 8 + 23);
        if ((v24 & 0x8000000000000000) != 0)
        {
          v25 = *v23;
          v24 = v23[1];
        }

        else
        {
          v25 = __p + v17 * 8;
        }

        v26 = (*(*self->_vocabTokenizer.__ptr_ + 40))(self->_vocabTokenizer.__ptr_, v25, v24);
        v7[2](v7, v22, v26, &v37);
        v27 = v37;

        if (v27)
        {
          v30 = __p;
          if (__p)
          {
            v31 = v39;
            v28 = __p;
            if (v39 != __p)
            {
              do
              {
                v32 = *(v31 - 1);
                v31 -= 3;
                if (v32 < 0)
                {
                  operator delete(*v31);
                }
              }

              while (v31 != v30);
              v28 = __p;
            }

            v39 = v30;
LABEL_34:
            operator delete(v28);
          }

          goto LABEL_35;
        }

        ++v18;
        v15 = __p;
        v16 = v39;
        v17 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v39 - __p) >> 3) > v18);
    }

    if (v15)
    {
      v28 = v15;
      if (v16 != v15)
      {
        do
        {
          v29 = *(v16 - 1);
          v16 -= 3;
          if (v29 < 0)
          {
            operator delete(*v16);
          }
        }

        while (v16 != v15);
        v28 = __p;
      }

      v39 = v15;
      goto LABEL_34;
    }

LABEL_35:
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end