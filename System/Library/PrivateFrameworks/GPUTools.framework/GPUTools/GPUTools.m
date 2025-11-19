void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void sub_24D62ED70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(result, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24D62F9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24D62FD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D6316D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24D632030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24D63228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void std::vector<DYCaptureArchiveCacheEntry>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<DYCaptureArchiveCacheEntry>::__append(a1, a2 - v2);
  }
}

void AutoReaderLock::AutoReaderLock(uint64_t a1, AutoReaderLock *this, uint64_t a3, uint64_t a4)
{
  *a1 = this;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  GPUTools::DYLockUtils::Lock(this, this);
  v7 = *(a1 + 16);
  if (!(*v7)++)
  {
    dispatch_semaphore_wait(*(a1 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  GPUTools::DYLockUtils::Unlock(this, v6);
}

void AutoReaderLock::~AutoReaderLock(AutoReaderLock *this, volatile int *a2)
{
  v3 = *this;
  GPUTools::DYLockUtils::Lock(*this, a2);
  v5 = *(this + 2);
  if ((*v5)-- == 1)
  {
    dispatch_semaphore_signal(*(this + 1));
    v5 = *(this + 2);
  }

  if ((*v5 & 0x80000000) != 0)
  {
    __assert_rtn("AutoReaderLock::~AutoReaderLock()", "", 0, "*_blocking_readers >= 0");
  }

  GPUTools::DYLockUtils::Unlock(v3, v4);
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v105 = *(a2 - 1);
      v106 = v9->i64[0];
      result = (*(*a3 + 16))();
      if (result)
      {
        v107 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v107;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,unsigned long long *>(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(*a3 + 16);
    if (v12 >= 0x81)
    {
      v15 = v8[v13];
      v16 = *v8;
      v17 = v14();
      v18 = *(a2 - 1);
      v19 = v8[v13];
      v20 = (*(*a3 + 16))();
      if (v17)
      {
        v21 = *v8;
        if (v20)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v21;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v21;
          v37 = *(a2 - 1);
          if ((*(*a3 + 16))())
          {
            v38 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v38;
          }
        }
      }

      else if (v20)
      {
        v29 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v29;
        v30 = v8[v13];
        v31 = *v8;
        if ((*(*a3 + 16))())
        {
          v32 = *v8;
          *v8 = v8[v13];
          v8[v13] = v32;
        }
      }

      v39 = v13 - 1;
      v40 = v8[v13 - 1];
      v41 = v8[1];
      v42 = (*(*a3 + 16))();
      v43 = *(a2 - 2);
      v44 = v8[v13 - 1];
      v45 = (*(*a3 + 16))();
      if (v42)
      {
        v46 = v8[1];
        if (v45)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v46;
        }

        else
        {
          v8[1] = v8[v39];
          v8[v39] = v46;
          v53 = *(a2 - 2);
          if ((*(*a3 + 16))())
          {
            v54 = v8[v39];
            v8[v39] = *(a2 - 2);
            *(a2 - 2) = v54;
          }
        }
      }

      else if (v45)
      {
        v47 = v8[v39];
        v8[v39] = *(a2 - 2);
        *(a2 - 2) = v47;
        v48 = v8[v39];
        v49 = v8[1];
        if ((*(*a3 + 16))())
        {
          v50 = v8[1];
          v8[1] = v8[v39];
          v8[v39] = v50;
        }
      }

      v55 = v13 + 1;
      v56 = v8[v13 + 1];
      v57 = v8[2];
      v58 = (*(*a3 + 16))();
      v59 = *(a2 - 3);
      v60 = v8[v13 + 1];
      v61 = (*(*a3 + 16))();
      if (v58)
      {
        v62 = v8[2];
        if (v61)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v62;
        }

        else
        {
          v8[2] = v8[v55];
          v8[v55] = v62;
          v67 = *(a2 - 3);
          if ((*(*a3 + 16))())
          {
            v68 = v8[v55];
            v8[v55] = *(a2 - 3);
            *(a2 - 3) = v68;
          }
        }
      }

      else if (v61)
      {
        v63 = v8[v55];
        v8[v55] = *(a2 - 3);
        *(a2 - 3) = v63;
        v64 = v8[v55];
        v65 = v8[2];
        if ((*(*a3 + 16))())
        {
          v66 = v8[2];
          v8[2] = v8[v55];
          v8[v55] = v66;
        }
      }

      v69 = v8[v13];
      v70 = v8[v39];
      v71 = (*(*a3 + 16))();
      v72 = v8[v55];
      v73 = v8[v13];
      v74 = (*(*a3 + 16))();
      if (v71)
      {
        v75 = v8[v39];
        if (v74)
        {
          v8[v39] = v8[v55];
          v8[v55] = v75;
          v76 = v8[v13];
          goto LABEL_59;
        }

        v8[v39] = v8[v13];
        v8[v13] = v75;
        v80 = v8[v55];
        v81 = (*(*a3 + 16))();
        v76 = v8[v13];
        if (v81)
        {
          v79 = v8[v55];
          v8[v13] = v79;
          v8[v55] = v76;
LABEL_58:
          v76 = v79;
        }
      }

      else
      {
        v76 = v8[v13];
        if (v74)
        {
          v8[v13] = v8[v55];
          v8[v55] = v76;
          v77 = v8[v39];
          v78 = (*(*a3 + 16))();
          v76 = v8[v13];
          if (v78)
          {
            v79 = v8[v39];
            v8[v39] = v76;
            v8[v13] = v79;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v82 = *v8;
      *v8 = v76;
      v8[v13] = v82;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v22 = *v8;
    v23 = v8[v13];
    v24 = v14();
    v25 = *(a2 - 1);
    v26 = *v8;
    v27 = (*(*a3 + 16))();
    if (v24)
    {
      v28 = v8[v13];
      if (!v27)
      {
        v8[v13] = *v8;
        *v8 = v28;
        v51 = *(a2 - 1);
        if ((*(*a3 + 16))())
        {
          v52 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v52;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v28;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_38;
      }

      v33 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v33;
      v34 = *v8;
      v35 = v8[v13];
      if (!(*(*a3 + 16))())
      {
        goto LABEL_38;
      }

      v36 = v8[v13];
      v8[v13] = *v8;
      *v8 = v36;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    v83 = *(v8 - 1);
    v84 = *v8;
    if (((*(*a3 + 16))() & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long long *,BOOL({block_pointer}&)(unsigned long long,unsigned long long)>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long long *,BOOL({block_pointer}&)(unsigned long long,unsigned long long)>(v8, a2, a3);
    if ((v86 & 1) == 0)
    {
      goto LABEL_64;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(v8, v85, a3);
    v9 = (v85 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(v85 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v87)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,false>(v8, v85, a3, -v11, a5 & 1);
      v9 = (v85 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,0>(v9->i64, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,0>(v9->i64, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      v94 = *(a2 - 1);
      v95 = v9[1].i64[1];
      result = (*(*a3 + 16))();
      if (!result)
      {
        return result;
      }

      v96 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v96;
      v98 = v9[1].i64[0];
      v97 = v9[1].i64[1];
      result = (*(*a3 + 16))();
      if (!result)
      {
        return result;
      }

      v99 = v9[1].i64[0];
      v100 = v9->i64[1];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v99;
      result = (*(*a3 + 16))();
      if (!result)
      {
        return result;
      }

      v102 = v9->i64[1];
      v101 = v9[1].i64[0];
      v103 = v9->i64[0];
      v9->i64[1] = v101;
      v9[1].i64[0] = v102;
      v104 = *a3;
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v89 = v9->i64[0];
  v88 = v9->i64[1];
  v90 = (*(*a3 + 16))();
  v91 = *(a2 - 1);
  v92 = v9->i64[1];
  result = (*(*a3 + 16))();
  if ((v90 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v108 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v108;
    v104 = *a3;
    v103 = v9->i64[0];
    v101 = v9->i64[1];
LABEL_91:
    result = (*(v104 + 16))(v104, v101, v103);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v93 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v93;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v93;
  v109 = *(a2 - 1);
  result = (*(*a3 + 16))();
  if (result)
  {
    v107 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *a1;
  v12 = (*(*a5 + 16))();
  v13 = *a3;
  v14 = *a2;
  v15 = (*(*a5 + 16))();
  if (v12)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = *a3;
      *a3 = v16;
    }

    else
    {
      *a1 = *a2;
      *a2 = v16;
      v21 = *a3;
      if ((*(*a5 + 16))())
      {
        v22 = *a2;
        *a2 = *a3;
        *a3 = v22;
      }
    }
  }

  else if (v15)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    v18 = *a2;
    v19 = *a1;
    if ((*(*a5 + 16))())
    {
      v20 = *a1;
      *a1 = *a2;
      *a2 = v20;
    }
  }

  v23 = *a4;
  v24 = *a3;
  result = (*(*a5 + 16))();
  if (result)
  {
    v26 = *a3;
    *a3 = *a4;
    *a4 = v26;
    v27 = *a3;
    v28 = *a2;
    result = (*(*a5 + 16))();
    if (result)
    {
      v29 = *a2;
      *a2 = *a3;
      *a3 = v29;
      v30 = *a2;
      v31 = *a1;
      result = (*(*a5 + 16))();
      if (result)
      {
        v32 = *a1;
        *a1 = *a2;
        *a2 = v32;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*(*a3 + 16))();
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            v13 = *(v4 + v12 - 8);
            result = (*(*a3 + 16))();
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v14 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v14 = v4;
LABEL_10:
          *v14 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(uint64_t result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*(*a3 + 16))();
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          v13 = *(v11 - 2);
          result = (*(*a3 + 16))();
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long long *,BOOL({block_pointer}&)(unsigned long long,unsigned long long)>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *a3;
  v8 = *(a2 - 1);
  if ((*(v7 + 16))())
  {
    v9 = a1;
    do
    {
      v10 = v9[1];
      ++v9;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    v11 = a1 + 1;
    do
    {
      v9 = v11;
      if (v11 >= v4)
      {
        break;
      }

      ++v11;
      v12 = *v9;
    }

    while (!(*(*a3 + 16))());
  }

  if (v9 < v4)
  {
    do
    {
      v13 = *--v4;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  while (v9 < v4)
  {
    v14 = *v9;
    *v9 = *v4;
    *v4 = v14;
    do
    {
      v15 = v9[1];
      ++v9;
    }

    while (!(*(*a3 + 16))());
    do
    {
      v16 = *--v4;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  if (v9 - 1 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v6;
  return v9;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long long *,BOOL({block_pointer}&)(unsigned long long,unsigned long long)>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = a1[++v6];
  }

  while (((*(*a3 + 16))() & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*(*a3 + 16))());
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*(*a3 + 16))());
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v22 = *a3;
        v24 = *a1;
        v23 = a1[1];
        v25 = (*(*a3 + 16))();
        v26 = *(a2 - 1);
        v27 = a1[1];
        v28 = (*(*a3 + 16))();
        if (v25)
        {
          v29 = *a1;
          if (v28)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v29;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v29;
          v42 = *(a2 - 1);
          if (!(*(*a3 + 16))())
          {
            return 1;
          }

          v10 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v28)
        {
          return 1;
        }

        v39 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v39;
        v21 = *a3;
        v20 = *a1;
        v18 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v11 = *(a2 - 1);
        v12 = a1[3];
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v13 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v13;
        v15 = a1[2];
        v14 = a1[3];
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v16 = a1[2];
        v17 = a1[1];
        a1[2] = a1[3];
        a1[3] = v16;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v19 = a1[1];
        v18 = a1[2];
        v20 = *a1;
        a1[1] = v18;
        a1[2] = v19;
        v21 = *a3;
        break;
      default:
        goto LABEL_17;
    }

    if ((*(v21 + 16))(v21, v18, v20))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = *(a2 - 1);
    v9 = *a1;
    if ((*(*a3 + 16))())
    {
      v10 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v10;
    }

    return 1;
  }

LABEL_17:
  v30 = *a3;
  v32 = *a1;
  v31 = a1[1];
  v33 = (*(*a3 + 16))();
  v35 = a1 + 2;
  v34 = a1[2];
  v36 = a1[1];
  v37 = (*(*a3 + 16))();
  if (v33)
  {
    v38 = *a1;
    if (v37)
    {
      *a1 = a1[2];
      a1[2] = v38;
    }

    else
    {
      v43 = a1[2];
      *a1 = a1[1];
      a1[1] = v38;
      if ((*(*a3 + 16))())
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v37)
  {
    v40 = a1[1];
    v41 = *a1;
    a1[1] = a1[2];
    a1[2] = v40;
    if ((*(*a3 + 16))())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v44 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    v47 = *v44;
    v48 = *v35;
    if ((*(*a3 + 16))())
    {
      v49 = *v44;
      v50 = v45;
      while (1)
      {
        *(a1 + v50 + 24) = *(a1 + v50 + 16);
        if (v50 == -16)
        {
          break;
        }

        v51 = *(a1 + v50 + 8);
        v50 -= 8;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v52 = (a1 + v50 + 24);
          goto LABEL_40;
        }
      }

      v52 = a1;
LABEL_40:
      *v52 = v49;
      if (++v46 == 8)
      {
        return v44 + 1 == a2;
      }
    }

    v35 = v44;
    v45 += 8;
    if (++v44 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,unsigned long long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if ((*(*a4 + 16))())
        {
          v15 = *v12;
          *v12 = *a1;
          *a1 = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 1;
      do
      {
        v17 = *a1;
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(a1, a4, v8);
        if (v16 == v18)
        {
          *v18 = v17;
        }

        else
        {
          *v18 = *v16;
          *v16 = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }

        --v16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v14 = *a2;
        v15 = *v12;
        v16 = v12[1];
        if ((*(*a2 + 16))())
        {
          ++v12;
          v11 = v13;
        }
      }

      v17 = *v12;
      v18 = *v5;
      result = (*(*a2 + 16))();
      if ((result & 1) == 0)
      {
        v19 = *v5;
        do
        {
          v20 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v21 = (2 * v11) | 1;
          v12 = (v6 + 8 * v21);
          if (2 * v11 + 2 < a3)
          {
            v22 = *v12;
            v23 = v12[1];
            if ((*(*a2 + 16))())
            {
              ++v12;
              v21 = 2 * v11 + 2;
            }
          }

          v24 = *v12;
          result = (*(*a2 + 16))();
          v5 = v20;
          v11 = v21;
        }

        while (!result);
        *v20 = v19;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      v14 = *(v12 - 1);
      if ((*(*a2 + 16))())
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 8 * (v4 >> 1));
    v10 = *v9;
    v12 = *(a2 - 8);
    v11 = (a2 - 8);
    result = (*(*a3 + 16))();
    if (result)
    {
      v13 = *v11;
      do
      {
        v14 = v9;
        *v11 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 8 * v8);
        v15 = *v9;
        result = (*(*a3 + 16))();
        v11 = v14;
      }

      while ((result & 1) != 0);
      *v14 = v13;
    }
  }

  return result;
}

void std::vector<DYCaptureArchiveCacheEntry>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DYCaptureArchiveCacheEntry>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DYCaptureArchiveCacheEntry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,-[DYCaptureArchive cacheAllResources]::$_0>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8;
  add = atomic_fetch_add((v8[1] + 280), 1uLL);
  for (i = v4[1]; add < i[11]; i = v4[1])
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    if ([i requestDataForFilePosition:add buffer:&v11 size:&v10 error:{&v9, v8}])
    {
      [v4[1] releaseBytesForFilePosition:add];
    }

    add = atomic_fetch_add((v4[1] + 280), 1uLL);
  }

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,-[DYCaptureArchive cacheAllResources]::$_0>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x25302F9A0]();
    MEMORY[0x25302FA40](v3, 0x20C4093837F09);
  }

  return a1;
}

_DWORD *std::vector<unsigned int>::emplace_back<unsigned int const&>(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t a1@<X8>)
{
  v5 = (*(v3 + 8 * *(a1 + 4)) + v2);

  return strcmp(v1, v5);
}

uint64_t DYHarvesterInitMetadata(uint64_t result, __int16 a2, int a3)
{
  *result = 0x63617074757265;
  *(result + 8) = 2;
  *(result + 10) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0;
  return result;
}

uint64_t DYHarvesterGetMetadataSize(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 1)
    {
      return *(result + 12) + 16;
    }

    else
    {
      return *(result + 12);
    }
  }

  return result;
}

void *DYHarvesterGetMetadata(void *result)
{
  if (result)
  {
    if (*result != 0x63617074757265)
    {
      return 0;
    }
  }

  return result;
}

uint64_t DYHarvesterGetDataSize(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1 == 0x63617074757265)
  {
    v2 = *(a1 + 12);
    if (*(a1 + 8) == 1)
    {
      v2 += 16;
    }

    a2 -= v2;
  }

  return a2;
}

uint64_t DYHarvesterGetOffset(uint64_t result)
{
  if (result)
  {
    if (*result == 0x63617074757265)
    {
      if (*(result + 8) == 1)
      {
        return *(result + 12) + 16;
      }

      else
      {
        return *(result + 12);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DYHarvesterGetData(uint64_t result)
{
  if (result && *result == 0x63617074757265)
  {
    v1 = *(result + 12);
    if (*(result + 8) == 1)
    {
      v1 += 16;
    }

    result += v1;
  }

  return result;
}

uint64_t DYHarvesterGetTexturePlaneCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 10) == 1)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DYHarvesterGetTexturePlane(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 10) == 1)
    {
      if (*(result + 16) >= a2)
      {
        result += 48 * a2 + 24;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 DYHarvesterAddTexturePlane(uint64_t a1, __int128 *a2)
{
  v2 = a1 + 48 * *(a1 + 16);
  v4 = *a2;
  result = a2[1];
  *(v2 + 56) = a2[2];
  *(v2 + 24) = v4;
  *(v2 + 40) = result;
  ++*(a1 + 16);
  return result;
}

uint64_t MetalPluginTarget(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (![a1 hasPrefix:@"AGXMetal"])
  {
    return 0xFFFFFFFFLL;
  }

  v2 = [a1 substringFromIndex:{objc_msgSend(@"AGXMetal", "length")}];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if (([v2 hasPrefix:@"G"] & 1) == 0 && (objc_msgSend(v3, "hasPrefix:", @"A") & 1) == 0 && !objc_msgSend(v3, "hasPrefix:", @"1"))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = [v3 UTF8String];
  v5 = [v3 hasPrefix:@"1"] ^ 1;
  if ([v3 length] <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + v5) - 48;
      if (v7 > 9)
      {
        break;
      }

      v6 = v7 + 10 * v6;
      ++v5;
    }

    while (v5 < [v3 length]);
    if (v6 == 15)
    {
      if (v5 < [v3 length] && objc_msgSend(v3, "characterAtIndex:", v5) == 95 || v5 == objc_msgSend(v3, "length"))
      {
        v6 = 14;
      }

      else
      {
        v6 = 15;
      }
    }
  }

  if ([v3 hasPrefix:@"A"])
  {
    v9 = -11;
  }

  else
  {
    v9 = -10;
  }

  v10 = v9 + v6;
  if (v10 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void sub_24D637AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  _Unwind_Resume(a1);
}

void sub_24D637AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  _Unwind_Resume(a1);
}

void sub_24D637B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  _Unwind_Resume(a1);
}

void sub_24D637B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<GPUTools::Playback::FunctionStreamEntry>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24D637B48(_Unwind_Exception *a1)
{
  v4 = std::unique_ptr<GPUTools::Playback::DecodedFunctionStream>::~unique_ptr[abi:ne200100](v1);
  MEMORY[0x25302FA40](v4, v2);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<GPUTools::Playback::FunctionStreamEntry>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_24D6382C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_24D638A68(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = (v4 - 440);
    v7 = -v3;
    do
    {
      GPUTools::FD::CoreFunction::~CoreFunction(v6);
      v6 = (v8 - 456);
      v7 += 456;
    }

    while (v7);
  }

  MEMORY[0x25302FA20](v2, v1);
  _Unwind_Resume(a1);
}

void sub_24D638A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  GPUTools::FD::CoreFunction::~CoreFunction(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_24D638CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  GPUTools::FD::CoreFunction::~CoreFunction(&a9);
  GPUTools::FD::CoreFunction::~CoreFunction(&a71);
  _Unwind_Resume(a1);
}

void GPUTools::Playback::PlaybackEngineDecodeCache::~PlaybackEngineDecodeCache(GPUTools::Playback::PlaybackEngineDecodeCache *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  GPUTools::VMBuffer::~VMBuffer((this + 72));
  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    v6 = v5 - 16;
    v7 = *(v5 - 8);
    if (v7)
    {
      v8 = -456 * v7;
      v9 = (v5 + 456 * v7 - 456);
      do
      {
        GPUTools::FD::CoreFunction::~CoreFunction(v9);
        v9 = (v10 - 456);
        v8 += 456;
      }

      while (v8);
    }

    MEMORY[0x25302FA20](v6, 0x1080C80609E9718);
  }

  v11 = *this;
  if (*this)
  {
    v12 = *(this + 1);
    v13 = *this;
    if (v12 != v11)
    {
      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          GPUTools::Playback::FunctionStreamEntry::~FunctionStreamEntry(v14);
          MEMORY[0x25302FA40]();
        }
      }

      while (v12 != v11);
      v13 = *this;
    }

    *(this + 1) = v11;
    operator delete(v13);
  }
}

void *std::unique_ptr<GPUTools::FD::CoreFunction []>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = -456 * v4;
      v6 = (v1 + 456 * v4 - 456);
      do
      {
        GPUTools::FD::CoreFunction::~CoreFunction(v6);
        v6 = (v7 - 456);
        v5 += 456;
      }

      while (v5);
    }

    MEMORY[0x25302FA20](v3, 0x1080C80609E9718);
    return v2;
  }

  return result;
}

void std::default_delete<GPUTools::FD::CoreFunction []>::operator()[abi:ne200100]<GPUTools::FD::CoreFunction>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = (a2 + 456 * v2 - 456);
      v4 = -456 * v2;
      do
      {
        GPUTools::FD::CoreFunction::~CoreFunction(v3);
        v3 = (v5 - 456);
        v4 += 456;
      }

      while (v4);
    }

    JUMPOUT(0x25302FA20);
  }
}

void *std::vector<std::unique_ptr<GPUTools::Playback::FunctionStreamEntry>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          GPUTools::Playback::FunctionStreamEntry::~FunctionStreamEntry(v5);
          MEMORY[0x25302FA40]();
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

GPUTools::Playback::DecodedFunctionStream **std::unique_ptr<GPUTools::Playback::DecodedFunctionStream>::~unique_ptr[abi:ne200100](GPUTools::Playback::DecodedFunctionStream **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    GPUTools::Playback::DecodedFunctionStream::~DecodedFunctionStream(v2);
    MEMORY[0x25302FA40]();
    return v3;
  }

  return v1;
}

uint64_t std::shared_ptr<GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

id **std::unique_ptr<GPUTools::Playback::FunctionStreamEntry>::~unique_ptr[abi:ne200100](id **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    GPUTools::Playback::FunctionStreamEntry::~FunctionStreamEntry(v2);
    MEMORY[0x25302FA40]();
    return v3;
  }

  return v1;
}

void GPUTools::Playback::FunctionStreamEntry::~FunctionStreamEntry(id *this)
{
  v2 = this[64];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  GPUTools::FD::CoreFunction::~CoreFunction((this + 1));
  v3 = *this;
  *this = 0;
  if (v3)
  {
    GPUTools::Playback::DecodedFunctionStream::~DecodedFunctionStream(v3);
    MEMORY[0x25302FA40]();
  }
}

void sub_24D63983C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2860A2198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25302FA40);
}

void std::__shared_ptr_emplace<GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::tuple<void *,unsigned long>>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::tuple<void *,unsigned long>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::unordered_map<void *,unsigned long>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

unsigned int *GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(unsigned int *result, const Function *a2)
{
  if ((a2 & 0x1000) != 0)
  {
    return GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(a2, result);
  }

  return result;
}

const Function *GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode(unsigned int *a1)
{
  if ((*(**(a1 + 60) + 64))(*(a1 + 60), *(a1 + 57), *(a1 + 59) - *(a1 + 57), a1))
  {
    *(a1 + 58) = a1[108] + *(a1 + 57);
    v2 = a1;
  }

  else
  {
    v4 = *a1;
    v2 = dy_abort();
  }

  return GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(v2);
}

const Function *GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(unsigned int *a1)
{
  result = a1[1];
  if ((result & 0x1000) != 0)
  {
    return GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(result, a1);
  }

  return result;
}

void sub_24D63A4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::operator++(uint64_t a1)
{
  v2 = *(a1 + 544);
  if (v2 == *(a1 + 536))
  {
    if (*(a1 + 568) == 1)
    {
      v4 = *(a1 + 552) - v2;
      v5 = (*(**(a1 + 560) + 56))(*(a1 + 560));
      v6 = *(a1 + 536);
      *(a1 + 544) = (*(**(a1 + 560) + 48))(*(a1 + 560), v6, *(a1 + 552) - v6) + v6;
      GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode_associated(a1, v5);
    }

    else
    {
      GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode(a1);
    }
  }

  *(a1 + 536) = *(a1 + 544);
  return a1;
}

uint64_t GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = GPUTools::FD::Function::Function(a1);
  v6[67] = a3;
  v6[68] = a3;
  v6[69] = *(a2 + 24);
  v7 = *(a2 + 8);
  *(a1 + 560) = v7;
  *(a1 + 568) = (*(*v7 + 16))(v7);
  return a1;
}

void *std::__shared_ptr_emplace<GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>>::__shared_ptr_emplace[abi:ne200100]<NSData *&,void const*&,std::allocator<GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>>,0>(void *a1, NSData **a2, _DWORD **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2860A21D0;
  GPUTools::FD::BaseFunctionStream::BaseFunctionStream((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2860A21D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25302FA40);
}

void std::__shared_ptr_emplace<GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

unsigned int *GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode(unsigned int *a1)
{
  if ((*(**(a1 + 70) + 72))(*(a1 + 70), *(a1 + 67), *(a1 + 69) - *(a1 + 67), a1))
  {
    *(a1 + 68) = a1[108] + *(a1 + 67);
    v2 = a1;
  }

  else
  {
    v4 = *a1;
    v2 = dy_abort();
  }

  return GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode_associated(v2);
}

unsigned int *GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode_associated(unsigned int *result)
{
  v2 = result[1];
  if ((v2 & 0x1000) != 0 && (v2 & 0x2000) == 0)
  {
    v3 = result;
    if (*(result + 68) < *(result + 69))
    {
      operator new();
    }

    v5 = *result;
    dy_abort();
    v6 = *v3;
    v4 = dy_abort();
    MEMORY[0x25302FA40](v1, 0x10B0C40F47DA5FCLL);
    _Unwind_Resume(v4);
  }

  return result;
}

void GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode_associated(unsigned int *a1, __int16 a2)
{
  if ((a2 & 0x1000) != 0)
  {
    GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode_associated(a2, a1);
  }
}

uint64_t is_valid_plist_value(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {

    return is_valid_plist_array(a1);
  }

  else if (v2 == CFDictionaryGetTypeID())
  {

    return is_valid_plist_dictionary(a1);
  }

  else
  {

    return is_valid_plist_value_type(v2);
  }
}

uint64_t is_valid_plist_array(const __CFArray *a1)
{
  if (CFArrayGetCount(a1))
  {
    operator new[]();
  }

  return 1;
}

uint64_t is_valid_plist_dictionary(const __CFDictionary *a1)
{
  if (CFDictionaryGetCount(a1))
  {
    operator new[]();
  }

  return 1;
}

void sub_24D63DCB4(_Unwind_Exception *a1)
{
  MEMORY[0x25302FA20](v3, v1);
  MEMORY[0x25302FA20](v2, v1);
  _Unwind_Resume(a1);
}

CFTypeID plist_filter(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {

    return plist_filter_array(a1);
  }

  else
  {
    result = CFDictionaryGetTypeID();
    if (v2 == result)
    {

      return plist_filter_dictionary(a1);
    }
  }

  return result;
}

CFIndex plist_filter_array(__CFArray *a1)
{
  result = CFArrayGetCount(a1);
  if (result)
  {
    operator new[]();
  }

  return result;
}

CFIndex plist_filter_dictionary(__CFDictionary *a1)
{
  result = CFDictionaryGetCount(a1);
  if (result)
  {
    operator new[]();
  }

  return result;
}

void sub_24D63E06C(_Unwind_Exception *a1)
{
  MEMORY[0x25302FA20](v3, v1);
  MEMORY[0x25302FA20](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t new_ethernet_interfaces_iter(io_iterator_t *a1)
{
  v2 = IOServiceMatching("IOEthernetInterface");
  if (!v2)
  {
    return 5;
  }

  v3 = v2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    CFRelease(v3);
    return 5;
  }

  v5 = Mutable;
  CFDictionarySetValue(Mutable, @"IOPrimaryInterface", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v3, @"IOPropertyMatch", v5);
  CFRelease(v5);
  v6 = *MEMORY[0x277CD28A0];

  return IOServiceGetMatchingServices(v6, v3, a1);
}

const __CFData *copy_mac_address(io_iterator_t iterator)
{
  v2 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v3 = IOIteratorNext(iterator);
    if (!v3)
    {
      break;
    }

    v4 = v3;
    parent = 0;
    if (IORegistryEntryGetParentEntry(v3, "IOService", &parent))
    {
      v5 = 0;
    }

    else
    {
      CFProperty = IORegistryEntryCreateCFProperty(parent, @"IOMACAddress", v2, 0);
      v5 = CFProperty;
      if (CFProperty && CFDataGetLength(CFProperty) <= 5)
      {
        CFRelease(v5);
        v5 = 0;
      }

      IOObjectRelease(parent);
    }

    IOObjectRelease(v4);
    if (v5)
    {
      return v5;
    }
  }

  return 0;
}

uint64_t copy_principal_mac_address()
{
  v4 = 0;
  if (new_ethernet_interfaces_iter(&v4))
  {
    return 0;
  }

  v1 = copy_mac_address(v4);
  IOObjectRelease(v4);
  if (!v1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(v1);
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5]];
  CFRelease(v1);
  return v0;
}

uint64_t copy_computer_name()
{
  v3 = *MEMORY[0x277D85DE8];
  if (gethostname(v2, 0x400uLL))
  {
    result = 0;
  }

  else
  {
    result = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *copy_metal_version(void *a1)
{
  v1 = [MEMORY[0x277CCA8D8] bundleWithPath:{objc_msgSend(a1, "stringByAppendingPathComponent:", @"/System/Library/Frameworks/Metal.framework"}];
  if (!v1)
  {
    return &stru_2860A31B8;
  }

  v2 = [objc_msgSend(v1 objectForInfoDictionaryKey:{*MEMORY[0x277CBED58]), "copy"}];

  return v2;
}

id copy_system_version(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:{objc_msgSend(a1, "stringByAppendingPathComponent:", @"/System/Library/CoreServices/SystemVersion.plist"}];
  v2 = [objc_msgSend(v1 objectForKey:{@"ProductVersion", "copy"}];

  return v2;
}

id copy_system_build(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:{objc_msgSend(a1, "stringByAppendingPathComponent:", @"/System/Library/CoreServices/SystemVersion.plist"}];
  v2 = [objc_msgSend(v1 objectForKey:{@"ProductBuildVersion", "copy"}];

  return v2;
}

uint64_t copy_product_type()
{
  v8 = *MEMORY[0x277D85DE8];
  size = 0;
  *v7 = 0x200000006;
  v0 = sysctl(v7, 2u, 0, &size, 0, 0) == -1 || size == 0;
  if (v0 || (v1 = malloc_type_malloc(size, 0xC1AD7970uLL)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v2 = v1;
    v3 = 0;
    if (!sysctl(v7, 2u, v1, &size, 0, 0))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:1];
    }

    free(v2);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t copy_hardware_uuid()
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  v0 = gethostuuid(v4, &v3);
  result = 0;
  if (!v0)
  {
    result = [objc_msgSend(objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{v4), "UUIDString"}];
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GetAppURL(uint64_t a1)
{
  v1 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a1];

  return [v1 bundleURL];
}

void *PrettifyFenumString(void *result, int a2, int a3)
{
  if (result)
  {
    v5 = result;
    if ([result hasPrefix:@"kDYFE"])
    {
      v5 = [v5 substringFromIndex:5];
    }

    v6 = [v5 rangeOfString:@"_"];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@" " options:0 range:{v6, v7}];
    }

    v8 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@":"];
    v9 = @"+";
    if (!a2)
    {
      v9 = @"-";
    }

    if (a3)
    {
      v10 = @":";
    }

    else
    {
      v10 = &stru_2860A31B8;
    }

    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%@%@]", v9, v8, v10];
  }

  return result;
}

double GPUTools::Playback::VariableCache::VariableCache(GPUTools::Playback::VariableCache *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return result;
}

void GPUTools::Playback::VariableCache::~VariableCache(GPUTools::Playback::VariableCache *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(this + 5);
      v6 = *(v5 + v3);
      v7 = ((v6 - v5) >> 4);
      if (v6)
      {
        v8 = v2 > v7;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        MEMORY[0x25302FA20]();
        v2 = *(this + 12);
      }

      v3 += 16;
    }
  }

  v9 = *(this + 5);
  if (v9)
  {
    MEMORY[0x25302FA20](v9, 0xB2C80428A0DD9);
  }

  std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::~__hash_table(this);
}

void GPUTools::Playback::VariableCache::Add(GPUTools::Playback::VariableCache *this, char *__s, const char *a3)
{
  v6 = *(this + 15);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v13 = *(this + 14);
      v14 = *(this + 12);
      if (v13 >= v14)
      {
        GPUTools::Playback::VariableCache::Add();
      }

      if (!v13)
      {
LABEL_20:
        strlen(__s);
        operator new[]();
      }

      v15 = *(this + 5);
      v16 = *(this + 14);
      v17 = v15;
      while (v14 > ((*v17 - v15) >> 4) || strcmp(*v17, __s))
      {
        v17 += 2;
        if (!--v16)
        {
          goto LABEL_20;
        }
      }

      v15[2 * v13] = v17;
      v17[1] = a3;
      v12 = *(this + 14) + 1;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_26;
      }

      v7 = *(this + 14);
      v8 = *(this + 12);
      if (v7 >= v8)
      {
        GPUTools::Playback::VariableCache::Add();
      }

      v9 = *(this + 5);
      v10 = (v9 + 16 * v7);
      if (v8 <= ((*v10 - v9) >> 4))
      {
        v11 = v9 + 16 * v7;
      }

      else
      {
        v11 = *v10;
      }

      *(v11 + 8) = a3;
      v12 = v7 + 1;
    }

    *(this + 14) = v12;
    return;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  if (v6 != 1)
  {
LABEL_26:
    v19 = *(this + 15);
    v18 = dy_abort();
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    _Unwind_Resume(v18);
  }

  ++*(this + 12);
  ++*(this + 14);
LABEL_5:
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v22 = a3;
  std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__emplace_unique_key_args<std::string,std::pair<std::string,void *>>(this, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }
}

const char *GPUTools::Playback::VariableCache::Get(GPUTools::Playback::VariableCache *this, char *__s)
{
  v4 = *(this + 15);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v13 = *(this + 14);
      v14 = *(this + 12);
      if (v13 >= v14)
      {
        GPUTools::Playback::VariableCache::Get();
      }

      if (!v13)
      {
LABEL_21:
        strlen(__s);
        operator new[]();
      }

      v15 = *(this + 5);
      v16 = *(this + 14);
      v17 = v15;
      while (v14 > ((*v17 - v15) >> 4) || strcmp(*v17, __s))
      {
        v17 += 2;
        if (!--v16)
        {
          goto LABEL_21;
        }
      }

      v15[2 * v13] = v17;
      ++*(this + 14);
      return v17[1];
    }

    if (v4 == 3)
    {
      v8 = *(this + 14);
      v9 = *(this + 12);
      if (v8 >= v9)
      {
        GPUTools::Playback::VariableCache::Get();
      }

      v10 = *(this + 5);
      v11 = (v10 + 16 * v8);
      if (v9 <= ((*v11 - v10) >> 4))
      {
        v12 = v10 + 16 * v8;
      }

      else
      {
        v12 = *v11;
      }

      *(this + 14) = v8 + 1;
      return *(v12 + 8);
    }

    goto LABEL_27;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      ++*(this + 12);
      ++*(this + 14);
      goto LABEL_5;
    }

LABEL_27:
    v19 = *(this + 15);
    v18 = dy_abort();
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    _Unwind_Resume(v18);
  }

LABEL_5:
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v5 = std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::find<std::string>(this, __p);
  v6 = v5;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      return v6[5];
    }
  }

  else if (v5)
  {
    return v6[5];
  }

  return 0;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

_DWORD *GPUTools::Playback::VariableCache::Begin(_DWORD *this)
{
  v1 = this[12];
  if (v1 != this[14])
  {
    GPUTools::Playback::VariableCache::Begin();
  }

  v2 = this;
  this[14] = this[13];
  v3 = this[15];
  if (v3 != 3)
  {
    this[15] = v3 + 1;
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1)
        {
          operator new[]();
        }
      }

      else if (v3 == 2)
      {
        if (v1)
        {
          v4 = 0;
          for (i = 0; i < v1; ++i)
          {
            v6 = *(v2 + 5);
            this = *(v6 + v4);
            if (this)
            {
              v7 = v1 > ((this - v6) >> 4);
            }

            else
            {
              v7 = 1;
            }

            if (!v7)
            {
              this = MEMORY[0x25302FA20]();
              *(v6 + v4) = 0;
              v1 = v2[12];
            }

            v4 += 16;
          }
        }
      }

      else
      {
        v9 = dy_abort();
        return std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::~__hash_table(v9);
      }
    }

    else
    {
      v8 = this[6];
      this[13] = v8;
      this[14] = v8;
      this[12] = v8;
    }
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__emplace_unique_key_args<std::string,std::pair<std::string,void *>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,void *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,void *>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t DYTextureChannelMappingsMerge(unint64_t a1, int a2)
{
  v2 = 0;
  v6 = a2;
  v7 = 50462976;
  do
  {
    v3 = *(&v6 + v2);
    if (v3 > 2)
    {
      v4 = a1 >> 24;
      if (v3 == 3)
      {
        goto LABEL_11;
      }

      if (v3 == 4 || v3 == 5)
      {
        LOBYTE(v4) = *(&v6 + v2);
LABEL_11:
        *(&v7 + v2) = v4;
      }
    }

    else
    {
      LOBYTE(v4) = a1;
      if (!*(&v6 + v2))
      {
        goto LABEL_11;
      }

      v4 = a1 >> 8;
      if (v3 == 1)
      {
        goto LABEL_11;
      }

      v4 = a1 >> 16;
      if (v3 == 2)
      {
        goto LABEL_11;
      }
    }

    ++v2;
  }

  while (v2 != 4);
  return v7;
}

__CFString *DYTextureChannelGetString(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"-";
  }

  else
  {
    return off_279309CE0[a1];
  }
}

__CFString *DYTextureChannelMappingsCopyString(int a1)
{
  v4 = a1;
  if (a1 == 50462976)
  {
    return @"RGBA";
  }

  v1 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    [v1 appendString:DYTextureChannelGetString(*(&v4 + i))];
  }

  return v1;
}

id GPUTools::DYCaptureArchiveUtils::extendArchive(GPUTools::DYCaptureArchiveUtils *this, DYCaptureArchive *a2, NSMutableData *a3, NSData *a4, NSString *a5)
{
  v24 = 0;
  v9 = [DYCaptureArchive createArchiveInTemporaryDirectory:&v24, a4, a5];
  [(GPUTools::DYCaptureArchiveUtils *)this commit:0];
  [(DYCaptureArchive *)a2 commit:0];
  [v9 setMetadataFromArchive:this];
  v22[4] = a4;
  v23 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = ___ZN8GPUTools21DYCaptureArchiveUtils13extendArchiveEP16DYCaptureArchiveS2_P6NSDataP8NSString_block_invoke;
  v22[3] = &unk_279309D18;
  [v9 addFilesFromArchive:this error:&v23 passingTest:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___ZN8GPUTools21DYCaptureArchiveUtils13extendArchiveEP16DYCaptureArchiveS2_P6NSDataP8NSString_block_invoke_2;
  v21[3] = &unk_279309D18;
  v21[4] = v9;
  [v9 addFilesFromArchive:a2 error:&v23 passingTest:v21];
  [v9 commit:0];
  v10 = *MEMORY[0x277D0B170];
  v12 = GPUTools::DYCaptureArchiveUtils::filenameForPrefixInArchive(this, *MEMORY[0x277D0B170], v11);
  v14 = GPUTools::DYCaptureArchiveUtils::filenameForPrefixInArchive(a2, v10, v13);
  v16 = GPUTools::DYCaptureArchiveUtils::openFunctionStreamData(this, v12, v15);
  v19 = GPUTools::DYCaptureArchiveUtils::openFunctionStreamData(a2, v14, v17);
  if (a3 && [(NSMutableData *)a3 length])
  {
    GPUTools::DYCaptureArchiveUtils::appendFuntionStreams(v16, a3, v18);
  }

  GPUTools::DYCaptureArchiveUtils::appendFuntionStreams(v16, v19, v18);
  [v9 addFileWithName:v12 data:v16 options:0 error:0 waitUntilDone:1];

  return v9;
}

uint64_t GPUTools::DYCaptureArchiveUtils::filenameForPrefixInArchive(GPUTools::DYCaptureArchiveUtils *this, DYCaptureArchive *a2, NSString *a3)
{
  v6 = 0;
  v3 = [-[GPUTools::DYCaptureArchiveUtils filenamesWithPrefix:error:](this filenamesWithPrefix:a2 error:{&v6), "sortedArrayUsingSelector:", sel_dy_numericCompare_}];
  if (v6)
  {
    return 0;
  }

  v4 = v3;
  if ([v3 count] != 1)
  {
    return 0;
  }

  else
  {
    return [v4 objectAtIndex:0];
  }
}

void *GPUTools::DYCaptureArchiveUtils::openFunctionStreamData(GPUTools::DYCaptureArchiveUtils *this, DYCaptureArchive *a2, NSString *a3)
{
  v5 = 0;
  v3 = [(GPUTools::DYCaptureArchiveUtils *)this openFileWithFilename:a2 error:&v5];
  if (v5)
  {
    v3 = 0;
  }

  v5 = 0;
  result = [v3 copyMutableData:&v5];
  if (v5)
  {

    return 0;
  }

  return result;
}

void GPUTools::DYCaptureArchiveUtils::appendFuntionStreams(GPUTools::DYCaptureArchiveUtils *this, NSMutableData *a2, NSData *a3)
{
  v5 = [(NSMutableData *)a2 bytes];
  if ([(NSMutableData *)a2 length]>= 8)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:v5 + 8 length:{-[NSMutableData length](a2, "length") - 8}];
    [(GPUTools::DYCaptureArchiveUtils *)this appendData:v6];
  }
}

uint64_t GPUTools::DYCaptureArchiveUtils::openFileInArchive(GPUTools::DYCaptureArchiveUtils *this, DYCaptureArchive *a2, NSString *a3)
{
  v4 = 0;
  result = [(GPUTools::DYCaptureArchiveUtils *)this openFileWithFilename:a2 error:&v4];
  if (v4)
  {
    return 0;
  }

  return result;
}

uint64_t GPUTools::DYCaptureArchiveUtils::openFunctionStream(GPUTools::DYCaptureArchiveUtils *this, DYCaptureArchive *a2, NSString *a3)
{
  v5 = 0;
  v3 = [(GPUTools::DYCaptureArchiveUtils *)this openFileWithFilename:a2 error:&v5];
  if (v5)
  {
    v3 = 0;
  }

  v5 = 0;
  result = [v3 openFunctionStream:&v5];
  if (v5)
  {
    return 0;
  }

  return result;
}

__CFString *DYDevicePlatformGetString(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_279309D88[a1 - 1];
  }
}

__CFString *DYDevicePlatformGetDVTName(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_279309DD8[a1 - 1];
  }
}

uint64_t *std::unique_ptr<GPUTools::RunningStatistics<unsigned long long>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 200);
    if (v3)
    {
      *(v2 + 208) = v3;
      operator delete(v3);
    }

    v4 = 0;
    while (1)
    {
      v5 = *(v2 + v4 + 176);
      if (v5)
      {
        *(v2 + v4 + 184) = v5;
        operator delete(v5);
      }

      v4 -= 24;
      if (v4 == -120)
      {
        v6 = *(v2 + 56);
        if (v6)
        {
          *(v2 + 64) = v6;
          operator delete(v6);
        }

        v7 = *(v2 + 32);
        if (v7)
        {
          *(v2 + 40) = v7;
          operator delete(v7);
        }

        v8 = *v2;
        if (*v2)
        {
          *(v2 + 8) = v8;
          operator delete(v8);
        }

        JUMPOUT(0x25302FA40);
      }
    }
  }

  return result;
}

void GPUTools::RunningStatistics<unsigned long long>::AddElement(uint64_t a1, void *a2)
{
  v3 = *(a1 + 224);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 228) + 1) % v4;
  v6 = v3 + 1;
  if (v4 >= v3 + 1)
  {
    v7 = v3 + 1;
  }

  else
  {
    v7 = *(a1 + 24);
  }

  *(a1 + 224) = v7;
  *(a1 + 228) = v5;
  v8 = *a1;
  *(*a1 + 8 * v5) = *a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v12 = *(a1 + 104);
  v13 = *(a1 + 128);
  v14 = *(a1 + 152);
  v15 = *(a1 + 176);
  if (v7 == 1)
  {
    v16 = *v8;
    *(v15 + 8 * v5) = v16;
    *(v14 + 8 * v5) = v16;
    *(v13 + 8 * v5) = v16;
    *(v12 + 8 * v5) = v16;
    *(v11 + 8 * v5) = v16;
    **(a1 + 200) = 0;
    *(v10 + 8 * v5) = v16;
    *(v9 + 8 * v5) = v16;
  }

  else
  {
    *(v9 + 8 * v5) = 0;
    v17 = *(a1 + 200);
    if (v6)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v17[v18] = v18;
        v19 += v8[v18];
        *(v9 + 8 * v5) = v19;
        ++v18;
        v20 = *(a1 + 224);
      }

      while (v18 < v20);
    }

    else
    {
      v20 = 0;
    }

    __compar[0] = MEMORY[0x277D85DD0];
    __compar[1] = 3221225472;
    __compar[2] = ___ZN8GPUTools17RunningStatisticsIyE10AddElementERKy_block_invoke;
    __compar[3] = &__block_descriptor_40_e15_i24__0r_v8r_v16l;
    __compar[4] = a1;
    qsort_b(v17, v20, 4uLL, __compar);
    v21 = *(v9 + 8 * v5);
    v22 = *(a1 + 224);
    v23 = v22 >> 1;
    if (v21)
    {
      v24 = v21 + (v22 >> 1);
    }

    else
    {
      v24 = -v23;
    }

    *(v9 + 8 * v5) = v24 / v22;
    v25 = *(a1 + 200);
    v26 = *a1;
    *(v11 + 8 * v5) = *(*a1 + 8 * *v25);
    *(v15 + 8 * v5) = v26[v25[(v22 - 1)]];
    if (v22)
    {
      v27 = v26[v25[v23]];
    }

    else
    {
      v27 = (v26[v25[v23]] + v26[v25[(v23 - 1)]]) >> 1;
    }

    *(v13 + 8 * v5) = v27;
    v28 = v22 >> 2;
    v29 = ~(v22 >> 2);
    v30 = v22 + v29;
    v31 = v25[v22 >> 2];
    v32 = v26[v31];
    if ((v22 & 3) != 0)
    {
      *(v12 + 8 * v5) = v32;
      v33 = v25[v30];
      v34 = v26[v33];
    }

    else
    {
      *(v12 + 8 * v5) = (v26[v25[(v28 - 1)]] + v32) >> 1;
      v33 = v25[v30];
      v34 = (v26[v25[(v22 - v28)]] + v26[v33]) >> 1;
    }

    *(v14 + 8 * v5) = v34;
    v35 = (v22 & 0xFFFFFFFC) - (v22 & 0x3FFFFFFF) + 4;
    v36 = (v26[v33] + v26[v31]) * v35;
    *(v10 + 8 * v5) = v36;
    if (v28 + 1 < v30)
    {
      v37 = &v25[v28 + 1];
      v38 = 2 * v28 - v22 + 2;
      do
      {
        v39 = *v37++;
        v36 += 4 * v26[v39];
        *(v10 + 8 * v5) = v36;
      }

      while (!__CFADD__(v38++, 1));
    }

    *(v10 + 8 * v5) = v36 / (4 * (v30 + v29) + 2 * v35);
  }
}

unint64_t GPUTools::RunningStatistics<unsigned long long>::IQRtoIQMRatioMinMax(uint64_t a1, unsigned int a2, double *a3, double *a4)
{
  LODWORD(v4) = *(a1 + 224);
  if (!v4)
  {
    return v4 & 1;
  }

  if (v4 == 1)
  {
    v5 = (*(a1 + 24) + *(a1 + 228)) % *(a1 + 24);
    v4 = *(*(a1 + 56) + 8 * v5);
    if (v4)
    {
      v6 = (*(*(a1 + 152) + 8 * v5) - *(*(a1 + 104) + 8 * v5)) / v4;
      *a4 = v6;
      *a3 = v6;
      LOBYTE(v4) = 1;
    }

    return v4 & 1;
  }

  if (v4 >= a2)
  {
    LODWORD(v4) = a2;
  }

  if (v4)
  {
    v7 = *(a1 + 228);
    v8 = *(a1 + 56);
    v9 = 1;
    v10 = *(a1 + 24);
    while (1)
    {
      v11 = *(v8 + 8 * v7);
      if (v11)
      {
        v12 = (*(*(a1 + 152) + 8 * v7) - *(*(a1 + 104) + 8 * v7)) / v11;
        if (v9)
        {
          *a4 = v12;
          v13 = a3;
        }

        else
        {
          v13 = a3;
          if (v12 >= *a3)
          {
            v13 = a4;
            if (v12 <= *a4)
            {
              v9 = 0;
              goto LABEL_15;
            }
          }
        }

        v9 = 0;
        *v13 = v12;
      }

LABEL_15:
      v7 = (v7 + v10 - 1) % v10;
      LODWORD(v4) = v4 - 1;
      if (!v4)
      {
        LODWORD(v4) = v9 ^ 1;
        return v4 & 1;
      }
    }
  }

  return v4 & 1;
}

uint64_t GPUTools::RunningStatistics<unsigned long long>::RunningStatistics(uint64_t a1, unsigned int a2)
{
  *(a1 + 32) = 0u;
  v3 = (a1 + 32);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 24) = a2;
  v4 = a2;
  *__x = 0;
  std::vector<unsigned long long>::resize(a1, a2, __x);
  v5 = *(a1 + 24);
  __x[0] = 0;
  std::vector<unsigned int>::resize((a1 + 200), v5, __x);
  v6 = *(a1 + 24);
  *__x = 0;
  std::vector<unsigned long long>::resize(v3, v6, __x);
  v7 = *(a1 + 24);
  *__x = 0;
  std::vector<unsigned long long>::resize((a1 + 56), v7, __x);
  for (i = 80; i != 200; i += 24)
  {
    *__x = 0;
    std::vector<unsigned long long>::resize((a1 + i), v4, __x);
  }

  *(a1 + 228) = *(a1 + 24) - 1;
  return a1;
}

void sub_24D642FC0(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 200);
  if (v4)
  {
    *(v1 + 208) = v4;
    operator delete(v4);
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v1 + v5 + 176);
    if (v6)
    {
      *(v1 + v5 + 184) = v6;
      operator delete(v6);
    }

    v5 -= 24;
    if (v5 == -120)
    {
      v7 = *(v1 + 56);
      if (v7)
      {
        *(v1 + 64) = v7;
        operator delete(v7);
      }

      v8 = *v2;
      if (*v2)
      {
        *(v1 + 40) = v8;
        operator delete(v8);
      }

      v9 = *v1;
      if (*v1)
      {
        *(v1 + 8) = v9;
        operator delete(v9);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void std::vector<unsigned long long>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v3, __x);
  }
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_24D65A950)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_24D65A950)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24D65A950)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24D65A960)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_24D65A950)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_24D65A960)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t ___ZN8GPUTools17RunningStatisticsIyE10AddElementERKy_block_invoke(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = **(a1 + 32);
  v4 = *(v3 + 8 * *a2);
  v5 = *(v3 + 8 * *a3);
  v6 = v4 >= v5;
  v7 = v4 > v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double GPUTools::Playback::SequenceCache::SequenceCache(GPUTools::Playback::SequenceCache *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

void GPUTools::Playback::SequenceCache::~SequenceCache(GPUTools::Playback::SequenceCache *this)
{
  v3 = (this + 48);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void GPUTools::Playback::SequenceCache::Begin(GPUTools::Playback::SequenceCache *this)
{
  v2 = *this;
  if (*this != 3)
  {
    *this = v2 + 1;
    if (v2)
    {
      if (v2 == 2)
      {
        v4 = *(this + 2);
        if (v4 != *(this + 1) || (v5 = *(this + 4), *(this + 4) != (v5 - *(this + 3)) >> 2))
        {
          GPUTools::Playback::SequenceCache::Begin();
        }

        if (*(v5 - 4))
        {
          GPUTools::Playback::SequenceCache::Begin();
        }

        std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::reserve(this + 6, v4);
        if (*(this + 4))
        {
          v6 = 0;
          do
          {
            v7 = 0;
            v8 = 1;
            v9 = -1;
            do
            {
              v10 = v9;
              v11 = *(*(this + 3) + 4 * (v6 + v7));
              --v8;
              ++v7;
              ++v9;
            }

            while (v11);
            __p = 0;
            v26 = 0;
            v27 = 0;
            std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::push_back[abi:ne200100](this + 48, &__p);
            if (__p)
            {
              v26 = __p;
              operator delete(__p);
            }

            if (v8)
            {
              __p = 0;
              v26 = 0;
              v12 = -v8;
              v27 = 0;
              std::vector<unsigned long long>::reserve(&__p, -v8);
              v13 = v6 + 1;
              v14 = v6;
              if (v13 < v6 - v8)
              {
                v14 = v6;
                do
                {
                  v15 = *(this + 3);
                  if (*(v15 + 4 * v14) != *(v15 + 4 * v13))
                  {
                    LODWORD(v24) = v13 - v14;
                    HIDWORD(v24) = *(v15 + 4 * v14);
                    std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](&__p, &v24);
                    v14 = v13;
                  }

                  ++v13;
                  --v10;
                }

                while (v10);
                v12 = v6 - v14 - v8;
              }

              v16 = *(this + 3);
              LODWORD(v24) = v12;
              HIDWORD(v24) = *(v16 + 4 * v14);
              std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](&__p, &v24);
              v17 = 0;
              v24 = 0;
              for (i = 1; ; i = 0)
              {
                v19 = __p;
                if (v26 != __p)
                {
                  v20 = 0;
                  v21 = 1;
                  do
                  {
                    v22 = v19[2 * v20];
                    if (v22 > 9)
                    {
                      if (v24)
                      {
                        if (i)
                        {
                          ++v17;
                        }

                        else
                        {
                          std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](*(this + 7) - 24, &v24);
                        }

                        LODWORD(v24) = 0;
                      }

                      if (i)
                      {
                        ++v17;
                      }

                      else
                      {
                        std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](*(this + 7) - 24, __p + v20);
                      }
                    }

                    else
                    {
                      LODWORD(v24) = v24 + v22;
                    }

                    v20 = v21;
                    v19 = __p;
                    ++v21;
                  }

                  while (v20 < (v26 - __p) >> 3);
                }

                if (v24)
                {
                  if (i)
                  {
                    ++v17;
                  }

                  else
                  {
                    std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](*(this + 7) - 24, &v24);
                  }

                  LODWORD(v24) = 0;
                }

                if ((i & 1) == 0)
                {
                  break;
                }

                std::vector<unsigned long long>::reserve((*(this + 7) - 24), v17);
              }

              if (__p)
              {
                v26 = __p;
                operator delete(__p);
              }
            }

            v6 += v7;
          }

          while (v6 < *(this + 4));
        }
      }

      else
      {
        if (v2 != 1)
        {
          v23 = dy_abort();
          if (__p)
          {
            v26 = __p;
            operator delete(__p);
          }

          _Unwind_Resume(v23);
        }

        *(this + 2) = *(this + 1);
        v3 = *(this + 3);
        *(this + 4) = v3;
        std::vector<unsigned int>::reserve(this + 1, v3);
      }
    }
  }

  *(this + 1) = 0;
  *(this + 3) = 0;
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, __n);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }
}

void *std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(result, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::pair<unsigned int,unsigned int>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<std::pair<unsigned int,unsigned int>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<std::pair<unsigned int,unsigned int>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::pair<unsigned int,unsigned int>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_24D64457C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<dy_capture_index_file_entry_t *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<dy_capture_index_file_entry_t *>>(result, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<std::pair<dy_capture_index_file_entry_t *,unsigned long>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<dy_capture_index_file_entry_t *,unsigned long>>>(result, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<GPUTools::objc_ref<DYCaptureArchive *>>::__emplace_back_slow_path<DYCaptureArchive *&>(void *a1, id *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<GPUTools::objc_ref<DYCaptureArchive *>>::~__split_buffer(&v13);
  return v12;
}

void sub_24D64520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<GPUTools::objc_ref<DYCaptureArchive *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*>(uint64_t a1, id *a2, id *a3, id *a4)
{
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4++ = *v4;
      *v4++ = 0;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*,GPUTools::objc_ref<DYCaptureArchive *>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*>>::~__exception_guard_exceptions[abi:ne200100](v6);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*,GPUTools::objc_ref<DYCaptureArchive *>*>(uint64_t a1, id *a2, id *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::objc_ref<DYCaptureArchive *>>,GPUTools::objc_ref<DYCaptureArchive *>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    v1 -= 8;
  }
}

uint64_t std::__split_buffer<GPUTools::objc_ref<DYCaptureArchive *>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<GPUTools::objc_ref<DYCaptureArchive *>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<GPUTools::objc_ref<DYCaptureArchive *>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
  }
}

void std::vector<GPUTools::objc_ref<DYCaptureArchive *>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 8)
  {
    v5 = *(i - 8);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<dy_capture_index_file_entry_t *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>,GPUTools::CStringHash::hash,GPUTools::CStringHash::equal,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>,GPUTools::CStringHash::equal,GPUTools::CStringHash::hash,true>,std::allocator<std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>>>::__emplace_unique_key_args<char const*,char const*&,std::pair<dy_capture_index_file_entry_t *,unsigned long>>(void *a1, const char **a2)
{
  v4 = GPUTools::CStringHash::hash::operator()(a1, *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  v12 = *a2;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (strcmp(v11[2], v12))
  {
    goto LABEL_18;
  }

  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<dy_capture_index_file_entry_t *,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,false>(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 1);
  v110 = a2 - 1;
  v111 = a2 - 3;
  v112 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*(*a3 + 16))();
        if (result)
        {
          v99 = *v10;
          v100 = v10[1];
          v101 = *(a2 - 1);
          *v10 = *(a2 - 2);
          v10[1] = v101;
          *(a2 - 2) = v99;
          *(a2 - 1) = v100;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v87 = (*(*a3 + 16))();
      result = (*(*a3 + 16))();
      if (v87)
      {
        v89 = v10 + 1;
        v88 = *v10;
        if (result)
        {
          *v10 = *(a2 - 2);
        }

        else
        {
          v107 = v10[1];
          v106 = v10[2];
          v10[2] = v88;
          v89 = v10 + 3;
          v108 = v10[3];
          *v10 = v106;
          v10[1] = v108;
          v10[3] = v107;
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          v88 = v10[2];
          v10[2] = *(a2 - 2);
        }

        *(a2 - 2) = v88;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v102 = v10[2];
        v103 = *(a2 - 1);
        v10[2] = *(a2 - 2);
        v104 = v10[3];
        v110 = v10 + 3;
        v10[3] = v103;
        *(a2 - 2) = v102;
        *(a2 - 1) = v104;
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        v105 = *v10;
        *v10 = v10[2];
        v10[2] = v105;
        v89 = v10 + 1;
      }

      v109 = *v89;
      *v89 = *v110;
      *v110 = v109;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,0>(v10, v10 + 2, v10 + 4, v10 + 6, a3);
      result = (*(*a3 + 16))();
      if (result)
      {
        v90 = v10[6];
        v91 = v10[7];
        v92 = *(a2 - 1);
        v10[6] = *(a2 - 2);
        v10[7] = v92;
        *(a2 - 2) = v90;
        *(a2 - 1) = v91;
        result = (*(*a3 + 16))();
        if (result)
        {
          v93 = v10[4];
          v94 = v10[5];
          *(v10 + 2) = *(v10 + 3);
          v10[6] = v93;
          v10[7] = v94;
          result = (*(*a3 + 16))();
          if (result)
          {
            v95 = v10[2];
            v96 = v10[3];
            *(v10 + 1) = *(v10 + 2);
            v10[4] = v95;
            v10[5] = v96;
            result = (*(*a3 + 16))();
            if (result)
            {
              v97 = *v10;
              v98 = v10[1];
              *v10 = *(v10 + 1);
              v10[2] = v97;
              v10[3] = v98;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(v10, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = *(*a3 + 16);
    if (v13 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        v19 = v8 + 1;
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        v19 = v14 + 1;
        v34 = v14[1];
        v35 = v8[1];
        *v8 = *v14;
        v8[1] = v34;
        *v14 = v18;
        v14[1] = v35;
        if ((*(*a3 + 16))())
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v27 = a2 - 1;
LABEL_29:
          v36 = *v19;
          *v19 = *v27;
          *v27 = v36;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        v25 = *(a2 - 1);
        *v14 = *(a2 - 2);
        v27 = v14 + 1;
        v26 = v14[1];
        v14[1] = v25;
        *(a2 - 2) = v24;
        *(a2 - 1) = v26;
        if ((*(*a3 + 16))())
        {
          v28 = *v8;
          *v8 = *v14;
          v19 = v8 + 1;
          *v14 = v28;
          goto LABEL_29;
        }
      }

      v37 = v14 - 2;
      v38 = (*(*a3 + 16))();
      v39 = (*(*a3 + 16))();
      if (v38)
      {
        v40 = v8[2];
        v41 = v8 + 3;
        if (v39)
        {
          v8[2] = *v112;
          *v112 = v40;
          goto LABEL_41;
        }

        v8[2] = *v37;
        *v37 = v40;
        v49 = *v41;
        *v41 = *(v14 - 1);
        *(v14 - 1) = v49;
        if ((*(*a3 + 16))())
        {
          v50 = *v37;
          *v37 = *v112;
          *v112 = v50;
          v41 = v14 - 1;
LABEL_41:
          v45 = a2 - 3;
LABEL_42:
          v51 = *v41;
          *v41 = *v45;
          *v45 = v51;
        }
      }

      else if (v39)
      {
        v42 = *v37;
        v43 = *(a2 - 3);
        *v37 = *(a2 - 4);
        v45 = v14 - 1;
        v44 = *(v14 - 1);
        *(v14 - 1) = v43;
        *(a2 - 4) = v42;
        *(a2 - 3) = v44;
        if ((*(*a3 + 16))())
        {
          v46 = v8[2];
          v8[2] = *v37;
          *v37 = v46;
          v41 = v8 + 3;
          goto LABEL_42;
        }
      }

      v52 = v14 + 2;
      v53 = (*(*a3 + 16))();
      v54 = (*(*a3 + 16))();
      if (v53)
      {
        v55 = v8[4];
        v56 = v8 + 5;
        if (v54)
        {
          v8[4] = *v111;
          *v111 = v55;
          goto LABEL_51;
        }

        v8[4] = *v52;
        *v52 = v55;
        v62 = *v56;
        *v56 = v14[3];
        v14[3] = v62;
        if ((*(*a3 + 16))())
        {
          v63 = *v52;
          *v52 = *v111;
          *v111 = v63;
          v56 = v14 + 3;
LABEL_51:
          v60 = a2 - 5;
LABEL_52:
          v64 = *v56;
          *v56 = *v60;
          *v60 = v64;
        }
      }

      else if (v54)
      {
        v57 = *v52;
        v58 = *(a2 - 5);
        *v52 = *(a2 - 6);
        v60 = v14 + 3;
        v59 = v14[3];
        v14[3] = v58;
        *(a2 - 6) = v57;
        *(a2 - 5) = v59;
        if ((*(*a3 + 16))())
        {
          v61 = v8[4];
          v8[4] = *v52;
          *v52 = v61;
          v56 = v8 + 5;
          goto LABEL_52;
        }
      }

      v65 = (*(*a3 + 16))();
      v66 = (*(*a3 + 16))();
      if (v65)
      {
        v67 = *v37;
        if (v66)
        {
          *v37 = *v52;
          *v52 = v67;
          v68 = v14 + 3;
          v69 = *v14;
          v70 = v14 - 1;
          goto LABEL_61;
        }

        v76 = *v14;
        *v14 = v67;
        v77 = v14[1];
        v78 = *(v14 - 1);
        *v37 = v76;
        *(v14 - 1) = v77;
        v14[1] = v78;
        v79 = (*(*a3 + 16))();
        v69 = *v14;
        if (v79)
        {
          v80 = *v52;
          *v14 = *v52;
          *v52 = v69;
          v68 = v14 + 3;
          v69 = v80;
          v70 = v14 + 1;
LABEL_61:
          v73 = v68;
LABEL_62:
          v81 = *v70;
          *v70 = *v73;
          *v73 = v81;
        }
      }

      else
      {
        v69 = *v14;
        if (v66)
        {
          v71 = v14[3];
          *v14 = *v52;
          v73 = v14 + 1;
          v72 = v14[1];
          v14[1] = v71;
          *v52 = v69;
          v14[3] = v72;
          v74 = (*(*a3 + 16))();
          v69 = *v14;
          if (v74)
          {
            v75 = *v37;
            *v37 = v69;
            v70 = v14 - 1;
            *v14 = v75;
            v69 = v75;
            goto LABEL_62;
          }
        }
      }

      v82 = *v8;
      *v8 = v69;
      v23 = v8 + 1;
      *v14 = v82;
      v33 = v14 + 1;
LABEL_64:
      v83 = *v23;
      *v23 = *v33;
      *v33 = v83;
      goto LABEL_65;
    }

    v20 = v15();
    v21 = (*(*a3 + 16))();
    if (v20)
    {
      v23 = v14 + 1;
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v33 = a2 - 1;
        goto LABEL_64;
      }

      v23 = v10 + 1;
      v47 = v10[1];
      v48 = v14[1];
      *v14 = *v10;
      v14[1] = v47;
      *v10 = v22;
      v10[1] = v48;
      if ((*(*a3 + 16))())
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v29 = *v10;
      v30 = *(a2 - 1);
      *v10 = *(a2 - 2);
      v31 = v10[1];
      v10[1] = v30;
      *(a2 - 2) = v29;
      *(a2 - 1) = v31;
      if ((*(*a3 + 16))())
      {
        v32 = *v14;
        *v14 = *v10;
        *v10 = v32;
        v23 = v14 + 1;
        v33 = v10 + 1;
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*(*a3 + 16))() & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<dy_capture_index_file_entry_t *,unsigned long> *,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long>&,std::pair<dy_capture_index_file_entry_t *,unsigned long>&)>(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v84 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<dy_capture_index_file_entry_t *,unsigned long> *,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long>&,std::pair<dy_capture_index_file_entry_t *,unsigned long>&)>(v8, a2, a3);
    if ((v85 & 1) == 0)
    {
      goto LABEL_70;
    }

    v86 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(v8, v84, a3);
    v10 = v84 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(v84 + 2, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v84;
      if (v86)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v86)
    {
LABEL_70:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,false>(v8, v84, a3, -v12, a5 & 1);
      v10 = v84 + 2;
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,0>(v10, v10 + 2, v10 + 4, a2 - 2, a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v17 = a3 + 1;
      goto LABEL_10;
    }

    v13 = a2 + 1;
    v19 = a2[1];
    v20 = a1[1];
    *a1 = *a2;
    *a2 = v12;
    a1[1] = v19;
    a2[1] = v20;
    if ((*(*a5 + 16))())
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    v15 = a3[1];
    *a2 = *a3;
    v17 = a2 + 1;
    v16 = a2[1];
    a2[1] = v15;
    *a3 = v14;
    a3[1] = v16;
    if ((*(*a5 + 16))())
    {
      v18 = *a1;
      *a1 = *a2;
      v13 = a1 + 1;
      *a2 = v18;
LABEL_10:
      v21 = *v13;
      *v13 = *v17;
      *v17 = v21;
    }
  }

  result = (*(*a5 + 16))();
  if (result)
  {
    v23 = *a3;
    v24 = a3[1];
    v25 = a4[1];
    *a3 = *a4;
    a3[1] = v25;
    *a4 = v23;
    a4[1] = v24;
    result = (*(*a5 + 16))();
    if (result)
    {
      v26 = *a2;
      v27 = a2[1];
      v28 = a3[1];
      *a2 = *a3;
      a2[1] = v28;
      *a3 = v26;
      a3[1] = v27;
      result = (*(*a5 + 16))();
      if (result)
      {
        v29 = *a1;
        v30 = a1[1];
        v31 = a2[1];
        *a1 = *a2;
        a1[1] = v31;
        *a2 = v29;
        a2[1] = v30;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      do
      {
        v8 = v5;
        result = (*(*a3 + 16))();
        if (result)
        {
          v13 = *v8;
          v9 = v7;
          while (1)
          {
            v10 = v4 + v9;
            v11 = *(v4 + v9 + 8);
            *(v10 + 2) = *(v4 + v9);
            *(v10 + 3) = v11;
            if (!v9)
            {
              break;
            }

            v9 -= 16;
            result = (*(*a3 + 16))();
            if ((result & 1) == 0)
            {
              v12 = (v4 + v9 + 16);
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          *v12 = v13;
        }

        v5 = v8 + 1;
        v7 += 16;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (result + 16);
    if ((result + 16) != a2)
    {
      v6 = (result - 16);
      do
      {
        v7 = v4;
        result = (*(*a3 + 16))();
        if (result)
        {
          v10 = *v7;
          v8 = v6;
          do
          {
            v9 = v8[3];
            v8[4] = v8[2];
            v8[5] = v9;
            result = (*(*a3 + 16))();
            v8 -= 2;
          }

          while ((result & 1) != 0);
          *(v8 + 2) = v10;
        }

        v4 = v7 + 1;
        v6 += 2;
      }

      while (v7 + 1 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<dy_capture_index_file_entry_t *,unsigned long> *,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long>&,std::pair<dy_capture_index_file_entry_t *,unsigned long>&)>(void *a1, void *a2, uint64_t a3)
{
  v14 = *a1;
  if ((*(*a3 + 16))())
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = (*(*a3 + 16))();
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < a2)
  {
    do
    {
      a2 -= 2;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  while (v6 < a2)
  {
    v9 = *v6;
    v10 = v6[1];
    v11 = a2[1];
    *v6 = *a2;
    v6[1] = v11;
    *a2 = v9;
    a2[1] = v10;
    do
    {
      v6 += 2;
    }

    while (!(*(*a3 + 16))());
    do
    {
      a2 -= 2;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  if (v6 - 2 != a1)
  {
    v12 = *(v6 - 1);
    *a1 = *(v6 - 2);
    a1[1] = v12;
  }

  *(v6 - 1) = v14;
  return v6;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<dy_capture_index_file_entry_t *,unsigned long> *,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long>&,std::pair<dy_capture_index_file_entry_t *,unsigned long>&)>(void *a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v15 = *a1;
  do
  {
    v6 += 2;
  }

  while (((*(*a3 + 16))() & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 2;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 2;
    }

    while (!(*(*a3 + 16))());
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v11 = v8[1];
      v12 = v9[1];
      *v8 = *v9;
      v8[1] = v12;
      *v9 = v10;
      v9[1] = v11;
      do
      {
        v8 += 2;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      do
      {
        v9 -= 2;
      }

      while (!(*(*a3 + 16))());
    }

    while (v8 < v9);
  }

  result = v8 - 2;
  if (v8 - 2 != a1)
  {
    v14 = *(v8 - 1);
    *a1 = *(v8 - 2);
    a1[1] = v14;
  }

  *(v8 - 1) = v15;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v19 = (*(*a3 + 16))();
      v20 = (*(*a3 + 16))();
      if (v19)
      {
        v22 = a1 + 1;
        v21 = *a1;
        if (v20)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v37 = a1[1];
          v36 = a1[2];
          a1[2] = v21;
          v22 = a1 + 3;
          v38 = a1[3];
          *a1 = v36;
          a1[1] = v38;
          a1[3] = v37;
          if (!(*(*a3 + 16))())
          {
            return 1;
          }

          v21 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v21;
        v30 = a2 - 1;
      }

      else
      {
        if (!v20)
        {
          return 1;
        }

        v27 = a1[2];
        v28 = *(a2 - 1);
        a1[2] = *(a2 - 2);
        v30 = a1 + 3;
        v29 = a1[3];
        a1[3] = v28;
        *(a2 - 2) = v27;
        *(a2 - 1) = v29;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
        v22 = a1 + 1;
      }

      v39 = *v22;
      *v22 = *v30;
      *v30 = v39;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*(*a3 + 16))())
        {
          v10 = a1[6];
          v11 = a1[7];
          v12 = *(a2 - 1);
          a1[6] = *(a2 - 2);
          a1[7] = v12;
          *(a2 - 2) = v10;
          *(a2 - 1) = v11;
          if ((*(*a3 + 16))())
          {
            v13 = a1[4];
            v14 = a1[5];
            *(a1 + 2) = *(a1 + 3);
            a1[6] = v13;
            a1[7] = v14;
            if ((*(*a3 + 16))())
            {
              v15 = a1[2];
              v16 = a1[3];
              *(a1 + 1) = *(a1 + 2);
              a1[4] = v15;
              a1[5] = v16;
              if ((*(*a3 + 16))())
              {
                v17 = *a1;
                v18 = a1[1];
                *a1 = *(a1 + 1);
                a1[2] = v17;
                a1[3] = v18;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*(*a3 + 16))())
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = *(a2 - 1);
      *a1 = *(a2 - 2);
      a1[1] = v9;
      *(a2 - 2) = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v23 = (*(*a3 + 16))();
  v24 = (*(*a3 + 16))();
  if (v23)
  {
    v26 = a1 + 1;
    v25 = *a1;
    if (v24)
    {
      *a1 = a1[4];
    }

    else
    {
      v41 = a1[1];
      v40 = a1[2];
      a1[2] = v25;
      v26 = a1 + 3;
      v42 = a1[3];
      *a1 = v40;
      a1[1] = v42;
      a1[3] = v41;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_35;
      }

      v25 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v25;
    v34 = a1 + 5;
    goto LABEL_34;
  }

  if (v24)
  {
    v32 = a1[2];
    v34 = a1 + 3;
    v33 = a1[3];
    *(a1 + 1) = *(a1 + 2);
    a1[4] = v32;
    a1[5] = v33;
    if ((*(*a3 + 16))())
    {
      v35 = *a1;
      *a1 = a1[2];
      a1[2] = v35;
      v26 = a1 + 1;
LABEL_34:
      v43 = *v26;
      *v26 = *v34;
      *v34 = v43;
    }
  }

LABEL_35:
  v44 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v52 = *v44;
      v47 = v45;
      while (1)
      {
        v48 = a1 + v47;
        v49 = *(a1 + v47 + 40);
        *(v48 + 6) = *(a1 + v47 + 32);
        *(v48 + 7) = v49;
        if (v47 == -32)
        {
          break;
        }

        v47 -= 16;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v50 = (a1 + v47 + 48);
          goto LABEL_43;
        }
      }

      v50 = a1;
LABEL_43:
      *v50 = v52;
      if (++v46 == 8)
      {
        return v44 + 1 == a2;
      }
    }

    v45 += 16;
    if (++v44 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*(*a4 + 16))())
        {
          v13 = *v12;
          v14 = v12[1];
          v15 = *(a1 + 8);
          *v12 = *a1;
          v12[1] = v15;
          *a1 = v13;
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = *(a1 + 8);
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          v20 = v16[1];
          *v19 = *v16;
          v19[1] = v20;
          *v16 = v18;
          v16[1] = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(a1, (v19 + 2), a4, (v19 - a1 + 16) >> 4);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v10 = (a4 - result) >> 3;
      v11 = v10 + 1;
      v12 = (result + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(*a2 + 16))())
      {
        v12 += 2;
        v11 = v13;
      }

      result = (*(*a2 + 16))();
      if ((result & 1) == 0)
      {
        v18 = *v5;
        do
        {
          v14 = v12;
          v15 = v12[1];
          *v5 = *v12;
          *(v5 + 1) = v15;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 16 * v16);
          v17 = 2 * v11 + 2;
          if (v17 < a3)
          {
            if ((*(*a2 + 16))())
            {
              v12 += 2;
              v16 = v17;
            }
          }

          result = (*(*a2 + 16))();
          v5 = v14;
          v11 = v16;
        }

        while (!result);
        *v14 = v18;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 4;
      if ((*(*a2 + 16))())
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = v9[1];
    *a1 = *v9;
    a1[1] = v13;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    result = (*(*a3 + 16))();
    if (result)
    {
      v12 = *v9;
      do
      {
        v10 = v8;
        v11 = v8[1];
        *v9 = *v8;
        *(v9 + 1) = v11;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 16 * v7);
        result = (*(*a3 + 16))();
        v9 = v10;
      }

      while ((result & 1) != 0);
      *v10 = v12;
    }
  }

  return result;
}

void std::vector<GPUTools::objc_ref<DYCaptureArchive *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<GPUTools::objc_ref<DYCaptureArchive *>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t DYKVCMutableCollections_Array_MutableGetter(objc_object *a1, objc_selector *a2)
{
  v3 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [(objc_object *)a1 mutableArrayValueForKey:v3];
}

uint64_t DYKVCMutableCollections_Array_Getter(objc_object *a1, objc_selector *a2)
{
  v3 = [-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v3 underlyingIvarValueForObject:a1];
}

uint64_t DYKVCMutableCollections_Array_Setter(objc_object *a1, objc_selector *a2, NSArray *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 setArray:a3];
}

uint64_t DYKVCMutableCollections_Array_InsertObjectAtIndex(objc_object *a1, objc_selector *a2, objc_object *a3, uint64_t a4)
{
  v6 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v6 insertObject:a3 atIndex:a4];
}

uint64_t DYKVCMutableCollections_Array_RemoveObjectAtIndex(objc_object *a1, objc_selector *a2, uint64_t a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 removeObjectAtIndex:a3];
}

uint64_t DYKVCMutableCollections_Array_ReplaceObjectAtIndexWithObject(objc_object *a1, objc_selector *a2, uint64_t a3, objc_object *a4)
{
  v6 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v6 replaceObjectAtIndex:a3 withObject:a4];
}

uint64_t DYKVCMutableCollections_Array_InsertObjectsAtIndexes(objc_object *a1, objc_selector *a2, NSArray *a3, NSIndexSet *a4)
{
  v6 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v6 insertObjects:a3 atIndexes:a4];
}

uint64_t DYKVCMutableCollections_Array_RemoveObjectsAtIndexes(objc_object *a1, objc_selector *a2, NSIndexSet *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 removeObjectsAtIndexes:a3];
}

uint64_t DYKVCMutableCollections_Array_ReplaceObjectsAtIndexesWithObjects(objc_object *a1, objc_selector *a2, NSIndexSet *a3, NSArray *a4)
{
  v6 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v6 replaceObjectsAtIndexes:a3 withObjects:a4];
}

uint64_t DYKVCMutableCollections_Array_Count(objc_object *a1, objc_selector *a2)
{
  v2 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v2 count];
}

uint64_t DYKVCMutableCollections_Array_ObjectAtIndex(objc_object *a1, objc_selector *a2, uint64_t a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 objectAtIndex:a3];
}

uint64_t DYKVCMutableCollections_Array_ObjectsAtIndexes(objc_object *a1, objc_selector *a2, NSIndexSet *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 objectsAtIndexes:a3];
}

uint64_t DYKVCMutableCollections_Array_GetObjectsRange(objc_object *a1, objc_selector *a2, objc_object **a3, _NSRange a4)
{
  length = a4.length;
  location = a4.location;
  v7 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v7 getObjects:a3 range:{location, length}];
}

uint64_t DYKVCMutableCollections_Set_MutableGetter(objc_object *a1, objc_selector *a2)
{
  v3 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [(objc_object *)a1 mutableSetValueForKey:v3];
}

uint64_t DYKVCMutableCollections_Set_Getter(objc_object *a1, objc_selector *a2)
{
  v3 = [-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v3 underlyingIvarValueForObject:a1];
}

uint64_t DYKVCMutableCollections_Set_Setter(objc_object *a1, objc_selector *a2, NSSet *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 setSet:a3];
}

uint64_t DYKVCMutableCollections_Set_AddObject(objc_object *a1, objc_selector *a2, objc_object *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 addObject:a3];
}

uint64_t DYKVCMutableCollections_Set_RemoveObject(objc_object *a1, objc_selector *a2, objc_object *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 removeObject:a3];
}

uint64_t DYKVCMutableCollections_Set_AddObjects(objc_object *a1, objc_selector *a2, NSSet *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 unionSet:a3];
}

uint64_t DYKVCMutableCollections_Set_RemoveObjects(objc_object *a1, objc_selector *a2, NSSet *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 minusSet:a3];
}

uint64_t DYKVCMutableCollections_Set_IntersectObjects(objc_object *a1, objc_selector *a2, NSSet *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 intersectSet:a3];
}

uint64_t DYKVCMutableCollections_Set_Count(objc_object *a1, objc_selector *a2)
{
  v2 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v2 count];
}

uint64_t DYKVCMutableCollections_Set_ObjectEnumerator(objc_object *a1, objc_selector *a2)
{
  v2 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v2 objectEnumerator];
}

uint64_t DYKVCMutableCollections_Set_Member(objc_object *a1, objc_selector *a2, objc_object *a3)
{
  v4 = [objc_msgSend(-[objc_object _dy_mutableCollectionPropertyInfo](a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 member:a3];
}

double GPUTools::Playback::MemoryManager::MemoryManager(GPUTools::Playback::MemoryManager *this, int a2)
{
  *this = 0;
  *(this + 1) = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    GPUTools::Playback::MemoryManager::MemoryManager();
  }

  return result;
}

{
  *this = 0;
  *(this + 1) = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    GPUTools::Playback::MemoryManager::MemoryManager();
  }

  return result;
}

void GPUTools::Playback::MemoryManager::~MemoryManager(GPUTools::Playback::MemoryManager *this)
{
  GPUTools::Playback::MemoryManager::AllocClear(this);
  v2 = *(this + 2);
  if (v2)
  {
    free(v2);
  }
}

void GPUTools::Playback::MemoryManager::AllocClear(GPUTools::Playback::MemoryManager *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (v2 != 1)
    {
      v6 = *this;
      v5 = dy_abort();
      GPUTools::Playback::MemoryManager::~MemoryManager(v5);
      return;
    }

    v4 = *(this + 2);
    if (v4 <= *(this + 3))
    {
      v4 = *(this + 3);
    }

    *(this + 2) = v4;
    *(this + 3) = 0;
  }

  *(this + 5) = *(this + 3);

  GPUTools::Playback::MemoryManager::memBlockFreeAll(this);
}

void *GPUTools::Playback::MemoryManager::Begin(void *this)
{
  if (this[6] || (v1 = this, *(this + 16)) || this[5] != this[3])
  {
    GPUTools::Playback::MemoryManager::Begin();
  }

  v2 = *this;
  if (*this != 2)
  {
    *this = v2 + 1;
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = *(this + 2);
        if (v3)
        {
          v4 = *(this + 1);
          if (((v4 - 1) & v3) != 0)
          {
            GPUTools::Playback::MemoryManager::Begin();
          }

          if (this[2])
          {
            GPUTools::Playback::MemoryManager::Begin();
          }

          this = malloc_type_malloc((v3 + v4 - 1), 0x526DDF66uLL);
          v1[2] = this;
          if (!this)
          {
            GPUTools::Playback::MemoryManager::Begin();
          }

          v5 = (this + *(v1 + 1) - 1) & -*(v1 + 1);
          v6 = v5 + *(v1 + 2);
          v1[3] = v5;
          v1[4] = v6;
          v1[5] = v5;
        }
      }

      else
      {
        v7 = dy_abort();
        return GPUTools::Playback::MemoryManager::Alloc(v7, v8);
      }
    }

    else
    {
      this[7] = 0;
    }
  }

  return this;
}

uint64_t GPUTools::Playback::MemoryManager::Alloc(GPUTools::Playback::MemoryManager *this, uint64_t a2)
{
  v3 = *this;
  if (!*this)
  {
LABEL_11:

    return GPUTools::Playback::MemoryManager::memBlockAlloc(this, a2);
  }

  if (v3 == 1)
  {
    v6 = *(this + 1);
    if (*(this + 3) + ((a2 + v6 - 1) & -v6) > v6)
    {
      v6 = *(this + 3) + ((a2 + v6 - 1) & -v6);
    }

    *(this + 3) = v6;
    goto LABEL_11;
  }

  if (v3 != 2)
  {
    v7 = *this;
    this = dy_abort();
    return GPUTools::Playback::MemoryManager::memBlockAlloc(this, a2);
  }

  v4 = *(this + 5);
  if ((v4 + a2) > *(this + 4))
  {

    return GPUTools::Playback::MemoryManager::memBlockAlloc(this, a2);
  }

  *(this + 5) = ((a2 + *(this + 1) - 1) & -*(this + 1)) + v4;
  return v4;
}

uint64_t GPUTools::Playback::MemoryManager::memBlockAlloc(GPUTools::Playback::MemoryManager *this, uint64_t a2)
{
  v4 = malloc_type_malloc(a2 + *(this + 1) + 23, 0x10A00404E934A1DuLL);
  v5 = (v4 + *(this + 1) + 23) & -*(this + 1);
  *v4 = *(this + 6);
  v4[1] = v5;
  v4[2] = a2;
  *(this + 6) = v4;
  ++*(this + 16);
  return v5;
}

void *GPUTools::Playback::MemoryManager::memBlockFreeAll(GPUTools::Playback::MemoryManager *this)
{
  result = *(this + 6);
  if (result)
  {
    v3 = 0;
    do
    {
      *(this + 6) = *result;
      --*(this + 16);
      v3 += result[2];
      free(result);
      result = *(this + 6);
    }

    while (result);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 7);
  if (v4 <= v3)
  {
    v4 = v3;
  }

  *(this + 7) = v4;
  return result;
}

void GPUTools::Playback::DecodedFunctionStream::DecodedFunctionStream(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4[2];
  v8 = GPUTools::FD::CoreFunction::CoreFunction(a1);
  *(v8 + 456) = v7;
  *(v8 + 464) = v7;
  v9 = a4[1];
  *(a1 + 472) = a4[3];
  *(a1 + 480) = v9;
  *(a1 + 488) = (*(*v9 + 16))(v9);
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  if ([a3 getInfo:v11 error:0])
  {
    v10 = v12 / 0x46uLL + v12 / 0x230uLL;
    if (v10 >= 0x8FA)
    {
      operator new();
    }

    if (v10 >= 0x47C)
    {
      operator new();
    }

    operator new();
  }

  __assert_rtn("GPUTools::Playback::DecodedFunctionStream::DecodedFunctionStream(id<DYCaptureStore>, DYCaptureFile *, IDFSSegment::fstream &, size_t, FileDataCacheMap &)", "", 0, "ok");
}

void sub_24D64A58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  (*(*v7 + 8))(v7);
  std::vector<std::unique_ptr<GPUTools::Playback::IDFSSegment>>::~vector[abi:ne200100](v6 + 62);
  GPUTools::FD::CoreFunction::~CoreFunction(v6);
  _Unwind_Resume(a1);
}

void GPUTools::Playback::DecodedFunctionStream::~DecodedFunctionStream(GPUTools::Playback::DecodedFunctionStream *this)
{
  v2 = *(this + 62);
  if (v2)
  {
    v3 = *(this + 63);
    v4 = *(this + 62);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 62);
    }

    *(this + 63) = v2;
    operator delete(v4);
  }

  GPUTools::FD::CoreFunction::~CoreFunction(this);
}

void *std::vector<std::unique_ptr<GPUTools::Playback::IDFSSegment>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *GPUTools::Playback::TDFSSegment<2097152ul>::TDFSSegment(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = 0;
  *a1 = &unk_2860A2278;
  for (i = 1; i != 0x40000; i += 57)
  {
    GPUTools::FD::CoreFunction::CoreFunction(&a1[i]);
    v7 -= 456;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v100 = a2;
  a1[0x40000] = 0;
  v13 = a1 + 1;
  v14 = *(a2 + 456);
  v15 = 8;
  v105 = a5;
  while (v14 != *(a3 + 456))
  {
    v16 = v11;
    GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::operator*(a2);
    GPUTools::FD::CoreFunction::operator=();
    v102 = v15;
    if (*(v13 + 5))
    {
      v17 = &v13[3 * *(v13 + 5) + 6];
      v18 = v13 + 6;
      v19 = v16;
      v20 = v12;
      v103 = v17;
LABEL_14:
      if ((*(v18 + 11) & 8) == 0)
      {
        goto LABEL_13;
      }

      v25 = *(v18 + 10);
      v108 = *(v18 + 4);
      v109 = 8 * v25;
      if (8 * v25 > v108)
      {
        v26 = *(v18 + 10);
        if (*(v18 + 4) < 8 * v26)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v25 > -v9 >> 3)
        {
          operator new();
        }

        v10 = v9;
        v26 = *(v18 + 10);
        if (*(v18 + 4) < 8 * v26)
        {
          goto LABEL_13;
        }
      }

      if (v26 > -v19 >> 4)
      {
        operator new();
      }

      v20 = v19;
      if ((*(v18 + 11) & 1) == 0)
      {
        if (!*v18)
        {
          goto LABEL_13;
        }

        [a4 getInfo:v110 forFilenameBuffer:*v18 error:0];
        v27 = a5[1];
        if (v27)
        {
          v28 = vcnt_s8(v27);
          v28.i16[0] = vaddlv_u8(v28);
          if (v28.u32[0] > 1uLL)
          {
            v29 = v110[0];
            if (v110[0] >= *&v27)
            {
              v29 = v110[0] % *&v27;
            }
          }

          else
          {
            v29 = (*&v27 - 1) & v110[0];
          }

          v81 = *(*a5 + 8 * v29);
          if (v81)
          {
            v82 = *v81;
            if (v82)
            {
              if (v28.u32[0] < 2uLL)
              {
                v83 = *&v27 - 1;
                while (1)
                {
                  v85 = v82[1];
                  if (v85 == v110[0])
                  {
                    if (v82[2] == v110[0])
                    {
                      goto LABEL_11;
                    }
                  }

                  else if ((v85 & v83) != v29)
                  {
                    goto LABEL_135;
                  }

                  v82 = *v82;
                  if (!v82)
                  {
                    goto LABEL_135;
                  }
                }
              }

              do
              {
                v84 = v82[1];
                if (v84 == v110[0])
                {
                  if (v82[2] == v110[0])
                  {
LABEL_11:
                    *v18 = v82[3];
                    v23 = *(v18 + 11) & 0xFFF7;
                    v24 = 13;
                    goto LABEL_12;
                  }
                }

                else
                {
                  if (v84 >= *&v27)
                  {
                    v84 %= *&v27;
                  }

                  if (v84 != v29)
                  {
                    break;
                  }
                }

                v82 = *v82;
              }

              while (v82);
            }
          }
        }

LABEL_135:
        if (v109 > v108)
        {
          goto LABEL_13;
        }

        **v18 = v110[0];
        v23 = *(v18 + 11) & 0xFFD7 | 0x20;
        v24 = 8;
LABEL_12:
        *(v18 + 11) = v23;
        *(v18 + 2) = v24;
        goto LABEL_13;
      }

      v30 = GPUTools::FD::Argument::ViewAsCStringArray(v18);
      if (!*(v18 + 10))
      {
        goto LABEL_107;
      }

      v31 = v30;
      v32 = 0;
      v33 = 1;
      v106 = v19;
LABEL_31:
      v35 = *v31;
      if ((*(v31 + 22) & 0x40) == 0)
      {
        if (!**(v35 + 8 * v32))
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (*(*(v35 + 4 * v32) + v35))
      {
LABEL_33:
        [a4 getInfo:v110 forFilenameBuffer:? error:?];
        v36 = a5[1];
        if (!*&v36)
        {
          goto LABEL_57;
        }

        v37 = vcnt_s8(v36);
        v37.i16[0] = vaddlv_u8(v37);
        if (v37.u32[0] > 1uLL)
        {
          v38 = v110[0];
          if (v110[0] >= *&v36)
          {
            v38 = v110[0] % *&v36;
          }
        }

        else
        {
          v38 = (*&v36 - 1) & v110[0];
        }

        v39 = *(*a5 + 8 * v38);
        if (!v39 || (v40 = *v39) == 0)
        {
LABEL_57:
          if (v109 <= v108)
          {
            v33 = 0;
            goto LABEL_59;
          }

          LODWORD(v34) = *(v18 + 10);
LABEL_109:
          v20 = v106;
          v17 = v103;
          if (v34)
          {
            v70 = 0;
            v71 = *v18;
            v72 = v34;
            if (v34 < 4)
            {
              goto LABEL_115;
            }

            if ((v71 - v9) <= 0x1F)
            {
              goto LABEL_115;
            }

            v70 = v34 & 0xFFFC;
            v73 = (v9 + 16);
            v74 = (v71 + 16);
            v75 = v72 & 0xFFFC;
            do
            {
              v76 = *v73;
              *(v74 - 1) = *(v73 - 1);
              *v74 = v76;
              v73 += 2;
              v74 += 2;
              v75 -= 4;
            }

            while (v75);
            if (v70 != v72)
            {
LABEL_115:
              v77 = (v71 + 8 * v70);
              v78 = (v9 + 8 * v70);
              v79 = v72 - v70;
              do
              {
                v80 = *v78++;
                *v77++ = v80;
                --v79;
              }

              while (v79);
            }
          }

          *(v18 + 11) = *(v18 + 11) & 0xFF97 | 0x20;
          *(v18 + 2) = 8;
          goto LABEL_13;
        }

        if (v37.u32[0] < 2uLL)
        {
          v41 = *&v36 - 1;
          while (1)
          {
            v43 = v40[1];
            if (v43 == v110[0])
            {
              if (v40[2] == v110[0])
              {
                goto LABEL_91;
              }
            }

            else if ((v43 & v41) != v38)
            {
              goto LABEL_57;
            }

            v40 = *v40;
            if (!v40)
            {
              goto LABEL_57;
            }
          }
        }

        while (1)
        {
          v42 = v40[1];
          if (v42 == v110[0])
          {
            if (v40[2] == v110[0])
            {
LABEL_91:
              v63 = v106 - v19;
              v64 = (v106 - v19) >> 4;
              v65 = v64 + 1;
              if ((v64 + 1) >> 60)
              {
                std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
              }

              if (-v19 >> 3 > v65)
              {
                v65 = -v19 >> 3;
              }

              v66 = 0xFFFFFFFFFFFFFFFLL;
              if (-v19 < 0x7FFFFFFFFFFFFFF0)
              {
                v66 = v65;
              }

              if (v66)
              {
                if (!(v66 >> 60))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v67 = v19;
              v19 = 0;
              *(16 * v64) = *(v40 + 3);
              v106 = 16 * v64 + 16;
              memcpy(0, v67, v63);
              if (v109 <= v108)
              {
LABEL_59:
                v44 = &v10[-v9];
                v45 = &v10[-v9] >> 3;
                v46 = v45 + 1;
                if ((v45 + 1) >> 61)
                {
                  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
                }

                v47 = v9;
                if (-v9 >> 2 > v46)
                {
                  v46 = -v9 >> 2;
                }

                if (-v9 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v48 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  if (!(v48 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v49 = (8 * v45);
                *v49 = v110[0];
                v10 = (v49 + 1);
                memcpy(0, v47, v44);
                v9 = 0;
                a5 = v105;
              }

LABEL_30:
              ++v32;
              v34 = *(v18 + 10);
              if (v32 < v34)
              {
                goto LABEL_31;
              }

              if ((v33 & 1) == 0)
              {
                goto LABEL_109;
              }

              if (!*(v18 + 10))
              {
                v20 = v106;
LABEL_107:
                v17 = v103;
                goto LABEL_144;
              }

              v68 = *v18;
              v20 = v106;
              v17 = v103;
              if (v34 > 4 && (v68 >= v19 + 16 * v34 - 8 || v19 >= v68 + 8 * v34))
              {
                v86 = v34 & 3;
                if ((v34 & 3) == 0)
                {
                  v86 = 4;
                }

                v69 = v34 - v86;
                v87 = (v19 + 32);
                v88 = (v68 + 16);
                v89 = v69;
                do
                {
                  v90 = v87 - 4;
                  v91 = vld2q_f64(v90);
                  v92 = vld2q_f64(v87);
                  *(v88 - 1) = v91;
                  *v88 = v92;
                  v87 += 8;
                  v88 += 2;
                  v89 -= 4;
                }

                while (v89);
              }

              else
              {
                v69 = 0;
              }

              v93 = 16 * v69;
              v94 = v34 - v69;
              v95 = (v68 + 8 * v69);
              do
              {
                *v95++ = *(v19 + v93);
                v93 += 16;
                --v94;
              }

              while (v94);
LABEL_144:
              *(v18 + 11) &= 0xFFB7u;
              *(v18 + 2) = *(v18 + 3);
LABEL_13:
              v18 += 3;
              if (v18 == v17)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          else
          {
            if (v42 >= *&v36)
            {
              v42 %= *&v36;
            }

            if (v42 != v38)
            {
              goto LABEL_57;
            }
          }

          v40 = *v40;
          if (!v40)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_37:
      if (v109 <= v108)
      {
        v50 = &v10[-v9];
        v51 = &v10[-v9] >> 3;
        v52 = v51 + 1;
        if ((v51 + 1) >> 61)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        v53 = v9;
        if (-v9 >> 2 > v52)
        {
          v52 = -v9 >> 2;
        }

        if (-v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v54 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          if (!(v54 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v61 = (8 * v51);
        *v61 = -1;
        v10 = (v61 + 1);
        memcpy(0, v53, v50);
        v9 = 0;
        a5 = v105;
        if (v33)
        {
          goto LABEL_78;
        }
      }

      else if (v33)
      {
LABEL_78:
        v55 = v9;
        v56 = v106 - v19;
        v57 = (v106 - v19) >> 4;
        v58 = v57 + 1;
        if ((v57 + 1) >> 60)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        if (-v19 >> 3 > v58)
        {
          v58 = -v19 >> 3;
        }

        v59 = v19;
        if (-v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v60 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          if (!(v60 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = 0;
        v62 = (16 * v57);
        v106 = 16 * v57 + 16;
        *v62 = 0;
        v62[1] = 0;
        memcpy(0, v59, v56);
        v33 = 1;
        v9 = v55;
        a5 = v105;
        goto LABEL_30;
      }

      v33 = 0;
      goto LABEL_30;
    }

    v19 = v16;
    v20 = v12;
LABEL_8:
    v12 = v20;
    v21 = v19;
    a2 = v100;
    v22 = *(v100 + 464);
    if (v22 == *(v100 + 456))
    {
      if (*(v100 + 488) == 1)
      {
        v96 = *(v100 + 472) - v22;
        v97 = (*(**(v100 + 480) + 56))(*(v100 + 480));
        v98 = *(v100 + 456);
        *(v100 + 464) = (*(**(v100 + 480) + 48))(*(v100 + 480), v98, *(v100 + 472) - v98) + v98;
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(v100, v97);
      }

      else
      {
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode(v100);
      }
    }

    v14 = *(v100 + 464);
    *(v100 + 456) = v14;
    v15 = v102 + 456;
    ++a1[0x40000];
    v13 = (a1 + v102 + 456);
    v11 = v21;
    if (v102 == 2096696)
    {
      return a1;
    }
  }

  return a1;
}

void sub_24D64B31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (v15)
  {
    operator delete(v15);
  }

  v18 = (a15 + 2096696);
  v19 = -2097144;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v18);
    v18 = (v20 - 456);
    v19 += 456;
  }

  while (v19);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::operator*(unsigned int *a1)
{
  if (*a1 == -1)
  {
    v2 = *(a1 + 57);
  }

  else
  {
    v2 = *(a1 + 57);
    if (*(a1 + 58) != v2)
    {
      return a1;
    }
  }

  if ((*(**(a1 + 60) + 64))(*(a1 + 60), v2, *(a1 + 59) - v2, a1))
  {
    v3 = a1[108] + *(a1 + 57);
    *(a1 + 58) = v3;
    v4 = a1[1];
    if ((v4 & 0x1000) == 0)
    {
      return a1;
    }
  }

  else
  {
    v9 = *a1;
    dy_abort();
  }

  if ((v4 & 0x2000) != 0)
  {
    return a1;
  }

  while (1)
  {
    v6 = *(a1 + 59);
    if (v3 >= v6)
    {
      break;
    }

    v7 = (*(**(a1 + 60) + 56))(*(a1 + 60), v3, v6 - v3);
    v3 = (*(**(a1 + 60) + 48))(*(a1 + 60), *(a1 + 58), *(a1 + 59) - *(a1 + 58)) + *(a1 + 58);
    *(a1 + 58) = v3;
    if ((v7 & 0x2000) != 0)
    {
      return a1;
    }
  }

  v10 = *a1;
  v8 = dy_abort();
  return GPUTools::Playback::TDFSSegment<2097152ul>::~TDFSSegment(v8);
}

uint64_t GPUTools::Playback::TDFSSegment<2097152ul>::~TDFSSegment(uint64_t a1)
{
  v2 = (a1 + 2096696);
  v3 = -2097144;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v2);
    v2 = (v4 - 456);
    v3 += 456;
  }

  while (v3);
  return a1;
}

void GPUTools::Playback::TDFSSegment<2097152ul>::~TDFSSegment(uint64_t a1)
{
  v1 = (a1 + 2096696);
  v2 = -2097144;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v1);
    v1 = (v3 - 456);
    v2 += 456;
  }

  while (v2);

  JUMPOUT(0x25302FA40);
}

uint64_t GPUTools::Playback::TDFSSegment<2097152ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = (a2 + 0x200000);
    v4 = a1 + 8;
    v5 = a2 + 8;
    v6 = 2097144;
    do
    {
      GPUTools::FD::CoreFunction::operator=();
      v4 += 456;
      v5 += 456;
      v6 -= 456;
    }

    while (v6);
    *(a1 + 0x200000) = *v3;
  }

  return a1;
}

void *GPUTools::Playback::TDFSSegment<524288ul>::TDFSSegment(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = 0;
  *a1 = &unk_2860A22E8;
  do
  {
    GPUTools::FD::CoreFunction::CoreFunction(&a1[v6 + 1]);
    v6 += 57;
  }

  while (v6 != 65493);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  a1[65494] = 0;
  v11 = a1 + 1;
  v12 = *(a2 + 456);
  v13 = 8;
  v99 = a2;
  while (v12 != *(a3 + 456))
  {
    v14 = v9;
    GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::operator*(a2);
    v15 = a5;
    GPUTools::FD::CoreFunction::operator=();
    v101 = v13;
    if (*(v11 + 5))
    {
      v16 = &v11[3 * *(v11 + 5) + 6];
      v17 = v11 + 6;
      v18 = v14;
      v19 = v10;
      v102 = v16;
LABEL_14:
      if ((*(v17 + 11) & 8) == 0)
      {
        goto LABEL_13;
      }

      v24 = *(v17 + 10);
      v107 = *(v17 + 4);
      v108 = 8 * v24;
      if (8 * v24 > v107)
      {
        v25 = *(v17 + 10);
        if (*(v17 + 4) < 8 * v25)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v24 > -v7 >> 3)
        {
          operator new();
        }

        v8 = v7;
        v25 = *(v17 + 10);
        if (*(v17 + 4) < 8 * v25)
        {
          goto LABEL_13;
        }
      }

      if (v25 > -v18 >> 4)
      {
        operator new();
      }

      v19 = v18;
      if ((*(v17 + 11) & 1) == 0)
      {
        if (!*v17)
        {
          goto LABEL_13;
        }

        [a4 getInfo:v109 forFilenameBuffer:*v17 error:0];
        v26 = v15[1];
        if (v26)
        {
          v27 = vcnt_s8(v26);
          v27.i16[0] = vaddlv_u8(v27);
          if (v27.u32[0] > 1uLL)
          {
            v28 = v109[0];
            if (v109[0] >= *&v26)
            {
              v28 = v109[0] % *&v26;
            }
          }

          else
          {
            v28 = (*&v26 - 1) & v109[0];
          }

          v80 = *(*v15 + 8 * v28);
          if (v80)
          {
            v81 = *v80;
            if (v81)
            {
              if (v27.u32[0] < 2uLL)
              {
                v82 = *&v26 - 1;
                while (1)
                {
                  v84 = v81[1];
                  if (v84 == v109[0])
                  {
                    if (v81[2] == v109[0])
                    {
                      goto LABEL_11;
                    }
                  }

                  else if ((v84 & v82) != v28)
                  {
                    goto LABEL_135;
                  }

                  v81 = *v81;
                  if (!v81)
                  {
                    goto LABEL_135;
                  }
                }
              }

              do
              {
                v83 = v81[1];
                if (v83 == v109[0])
                {
                  if (v81[2] == v109[0])
                  {
LABEL_11:
                    *v17 = v81[3];
                    v22 = *(v17 + 11) & 0xFFF7;
                    v23 = 13;
                    goto LABEL_12;
                  }
                }

                else
                {
                  if (v83 >= *&v26)
                  {
                    v83 %= *&v26;
                  }

                  if (v83 != v28)
                  {
                    break;
                  }
                }

                v81 = *v81;
              }

              while (v81);
            }
          }
        }

LABEL_135:
        if (v108 > v107)
        {
          goto LABEL_13;
        }

        **v17 = v109[0];
        v22 = *(v17 + 11) & 0xFFD7 | 0x20;
        v23 = 8;
LABEL_12:
        *(v17 + 11) = v22;
        *(v17 + 2) = v23;
        goto LABEL_13;
      }

      v29 = GPUTools::FD::Argument::ViewAsCStringArray(v17);
      if (!*(v17 + 10))
      {
        goto LABEL_107;
      }

      v30 = v29;
      v31 = 0;
      v32 = 1;
      v105 = v18;
LABEL_31:
      v34 = *v30;
      if ((*(v30 + 22) & 0x40) == 0)
      {
        if (!**(v34 + 8 * v31))
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (*(*(v34 + 4 * v31) + v34))
      {
LABEL_33:
        [a4 getInfo:v109 forFilenameBuffer:? error:?];
        v35 = v15[1];
        if (!*&v35)
        {
          goto LABEL_57;
        }

        v36 = vcnt_s8(v35);
        v36.i16[0] = vaddlv_u8(v36);
        if (v36.u32[0] > 1uLL)
        {
          v37 = v109[0];
          if (v109[0] >= *&v35)
          {
            v37 = v109[0] % *&v35;
          }
        }

        else
        {
          v37 = (*&v35 - 1) & v109[0];
        }

        v38 = *(*v15 + 8 * v37);
        if (!v38 || (v39 = *v38) == 0)
        {
LABEL_57:
          if (v108 <= v107)
          {
            v32 = 0;
            goto LABEL_59;
          }

          LODWORD(v33) = *(v17 + 10);
LABEL_109:
          v19 = v105;
          v16 = v102;
          if (v33)
          {
            v69 = 0;
            v70 = *v17;
            v71 = v33;
            if (v33 < 4)
            {
              goto LABEL_115;
            }

            if ((v70 - v7) <= 0x1F)
            {
              goto LABEL_115;
            }

            v69 = v33 & 0xFFFC;
            v72 = (v7 + 16);
            v73 = (v70 + 16);
            v74 = v71 & 0xFFFC;
            do
            {
              v75 = *v72;
              *(v73 - 1) = *(v72 - 1);
              *v73 = v75;
              v72 += 2;
              v73 += 2;
              v74 -= 4;
            }

            while (v74);
            if (v69 != v71)
            {
LABEL_115:
              v76 = (v70 + 8 * v69);
              v77 = (v7 + 8 * v69);
              v78 = v71 - v69;
              do
              {
                v79 = *v77++;
                *v76++ = v79;
                --v78;
              }

              while (v78);
            }
          }

          *(v17 + 11) = *(v17 + 11) & 0xFF97 | 0x20;
          *(v17 + 2) = 8;
          goto LABEL_13;
        }

        if (v36.u32[0] < 2uLL)
        {
          v40 = *&v35 - 1;
          while (1)
          {
            v42 = v39[1];
            if (v42 == v109[0])
            {
              if (v39[2] == v109[0])
              {
                goto LABEL_91;
              }
            }

            else if ((v42 & v40) != v37)
            {
              goto LABEL_57;
            }

            v39 = *v39;
            if (!v39)
            {
              goto LABEL_57;
            }
          }
        }

        while (1)
        {
          v41 = v39[1];
          if (v41 == v109[0])
          {
            if (v39[2] == v109[0])
            {
LABEL_91:
              v62 = v105 - v18;
              v63 = (v105 - v18) >> 4;
              v64 = v63 + 1;
              if ((v63 + 1) >> 60)
              {
                std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
              }

              if (-v18 >> 3 > v64)
              {
                v64 = -v18 >> 3;
              }

              v65 = 0xFFFFFFFFFFFFFFFLL;
              if (-v18 < 0x7FFFFFFFFFFFFFF0)
              {
                v65 = v64;
              }

              if (v65)
              {
                if (!(v65 >> 60))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v66 = v18;
              v18 = 0;
              *(16 * v63) = *(v39 + 3);
              v105 = 16 * v63 + 16;
              memcpy(0, v66, v62);
              if (v108 <= v107)
              {
LABEL_59:
                v43 = &v8[-v7];
                v44 = &v8[-v7] >> 3;
                v45 = v44 + 1;
                if ((v44 + 1) >> 61)
                {
                  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
                }

                v46 = v7;
                if (-v7 >> 2 > v45)
                {
                  v45 = -v7 >> 2;
                }

                if (-v7 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v47 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = v45;
                }

                if (v47)
                {
                  if (!(v47 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v48 = (8 * v44);
                *v48 = v109[0];
                v8 = (v48 + 1);
                memcpy(0, v46, v43);
                v7 = 0;
                v15 = a5;
              }

LABEL_30:
              ++v31;
              v33 = *(v17 + 10);
              if (v31 < v33)
              {
                goto LABEL_31;
              }

              if ((v32 & 1) == 0)
              {
                goto LABEL_109;
              }

              if (!*(v17 + 10))
              {
                v19 = v105;
LABEL_107:
                v16 = v102;
                goto LABEL_144;
              }

              v67 = *v17;
              v19 = v105;
              v16 = v102;
              if (v33 > 4 && (v67 >= v18 + 16 * v33 - 8 || v18 >= v67 + 8 * v33))
              {
                v85 = v33 & 3;
                if ((v33 & 3) == 0)
                {
                  v85 = 4;
                }

                v68 = v33 - v85;
                v86 = (v18 + 32);
                v87 = (v67 + 16);
                v88 = v68;
                do
                {
                  v89 = v86 - 4;
                  v90 = vld2q_f64(v89);
                  v91 = vld2q_f64(v86);
                  *(v87 - 1) = v90;
                  *v87 = v91;
                  v86 += 8;
                  v87 += 2;
                  v88 -= 4;
                }

                while (v88);
              }

              else
              {
                v68 = 0;
              }

              v92 = 16 * v68;
              v93 = v33 - v68;
              v94 = (v67 + 8 * v68);
              do
              {
                *v94++ = *(v18 + v92);
                v92 += 16;
                --v93;
              }

              while (v93);
LABEL_144:
              *(v17 + 11) &= 0xFFB7u;
              *(v17 + 2) = *(v17 + 3);
LABEL_13:
              v17 += 3;
              if (v17 == v16)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          else
          {
            if (v41 >= *&v35)
            {
              v41 %= *&v35;
            }

            if (v41 != v37)
            {
              goto LABEL_57;
            }
          }

          v39 = *v39;
          if (!v39)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_37:
      if (v108 <= v107)
      {
        v49 = &v8[-v7];
        v50 = &v8[-v7] >> 3;
        v51 = v50 + 1;
        if ((v50 + 1) >> 61)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        v52 = v7;
        if (-v7 >> 2 > v51)
        {
          v51 = -v7 >> 2;
        }

        if (-v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v53 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          if (!(v53 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v60 = (8 * v50);
        *v60 = -1;
        v8 = (v60 + 1);
        memcpy(0, v52, v49);
        v7 = 0;
        v15 = a5;
        if (v32)
        {
          goto LABEL_78;
        }
      }

      else if (v32)
      {
LABEL_78:
        v54 = v7;
        v55 = v105 - v18;
        v56 = (v105 - v18) >> 4;
        v57 = v56 + 1;
        if ((v56 + 1) >> 60)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        if (-v18 >> 3 > v57)
        {
          v57 = -v18 >> 3;
        }

        v58 = v18;
        if (-v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v59 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          if (!(v59 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = 0;
        v61 = (16 * v56);
        v105 = 16 * v56 + 16;
        *v61 = 0;
        v61[1] = 0;
        memcpy(0, v58, v55);
        v32 = 1;
        v7 = v54;
        v15 = a5;
        goto LABEL_30;
      }

      v32 = 0;
      goto LABEL_30;
    }

    v18 = v14;
    v19 = v10;
LABEL_8:
    v10 = v19;
    v20 = v18;
    a2 = v99;
    v21 = *(v99 + 464);
    if (v21 == *(v99 + 456))
    {
      if (*(v99 + 488) == 1)
      {
        v95 = *(v99 + 472) - v21;
        v96 = (*(**(v99 + 480) + 56))(*(v99 + 480));
        v97 = *(v99 + 456);
        *(v99 + 464) = (*(**(v99 + 480) + 48))(*(v99 + 480), v97, *(v99 + 472) - v97) + v97;
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(v99, v96);
      }

      else
      {
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode(v99);
      }
    }

    v12 = *(v99 + 464);
    *(v99 + 456) = v12;
    v13 = v101 + 456;
    ++a1[65494];
    v11 = (a1 + v101 + 456);
    v9 = v20;
    if (v101 == 523496)
    {
      return a1;
    }
  }

  return a1;
}

void sub_24D64C200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (v15)
  {
    operator delete(v15);
  }

  v18 = (a15 + 523496);
  v19 = -523944;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v18);
    v18 = (v20 - 456);
    v19 += 456;
  }

  while (v19);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::Playback::TDFSSegment<524288ul>::~TDFSSegment(uint64_t a1)
{
  v2 = (a1 + 523496);
  v3 = -523944;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v2);
    v2 = (v4 - 456);
    v3 += 456;
  }

  while (v3);
  return a1;
}

void GPUTools::Playback::TDFSSegment<524288ul>::~TDFSSegment(uint64_t a1)
{
  v1 = (a1 + 523496);
  v2 = -523944;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v1);
    v1 = (v3 - 456);
    v2 += 456;
  }

  while (v2);

  JUMPOUT(0x25302FA40);
}

uint64_t GPUTools::Playback::TDFSSegment<524288ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 8;
    v5 = a2 + 8;
    v6 = 523944;
    do
    {
      GPUTools::FD::CoreFunction::operator=();
      v4 += 456;
      v5 += 456;
      v6 -= 456;
    }

    while (v6);
    *(a1 + 523952) = *(a2 + 523952);
  }

  return a1;
}

void *GPUTools::Playback::TDFSSegment<131072ul>::TDFSSegment(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = 0;
  *a1 = &unk_2860A2358;
  do
  {
    GPUTools::FD::CoreFunction::CoreFunction(&a1[v6 + 1]);
    v6 += 57;
  }

  while (v6 != 16359);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  a1[16360] = 0;
  v11 = a1 + 1;
  v12 = *(a2 + 456);
  v13 = 8;
  v99 = a2;
  while (v12 != *(a3 + 456))
  {
    v14 = v9;
    GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::operator*(a2);
    v15 = a5;
    GPUTools::FD::CoreFunction::operator=();
    v101 = v13;
    if (*(v11 + 5))
    {
      v16 = &v11[3 * *(v11 + 5) + 6];
      v17 = v11 + 6;
      v18 = v14;
      v19 = v10;
      v102 = v16;
LABEL_14:
      if ((*(v17 + 11) & 8) == 0)
      {
        goto LABEL_13;
      }

      v24 = *(v17 + 10);
      v107 = *(v17 + 4);
      v108 = 8 * v24;
      if (8 * v24 > v107)
      {
        v25 = *(v17 + 10);
        if (*(v17 + 4) < 8 * v25)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v24 > -v7 >> 3)
        {
          operator new();
        }

        v8 = v7;
        v25 = *(v17 + 10);
        if (*(v17 + 4) < 8 * v25)
        {
          goto LABEL_13;
        }
      }

      if (v25 > -v18 >> 4)
      {
        operator new();
      }

      v19 = v18;
      if ((*(v17 + 11) & 1) == 0)
      {
        if (!*v17)
        {
          goto LABEL_13;
        }

        [a4 getInfo:v109 forFilenameBuffer:*v17 error:0];
        v26 = v15[1];
        if (v26)
        {
          v27 = vcnt_s8(v26);
          v27.i16[0] = vaddlv_u8(v27);
          if (v27.u32[0] > 1uLL)
          {
            v28 = v109[0];
            if (v109[0] >= *&v26)
            {
              v28 = v109[0] % *&v26;
            }
          }

          else
          {
            v28 = (*&v26 - 1) & v109[0];
          }

          v80 = *(*v15 + 8 * v28);
          if (v80)
          {
            v81 = *v80;
            if (v81)
            {
              if (v27.u32[0] < 2uLL)
              {
                v82 = *&v26 - 1;
                while (1)
                {
                  v84 = v81[1];
                  if (v84 == v109[0])
                  {
                    if (v81[2] == v109[0])
                    {
                      goto LABEL_11;
                    }
                  }

                  else if ((v84 & v82) != v28)
                  {
                    goto LABEL_135;
                  }

                  v81 = *v81;
                  if (!v81)
                  {
                    goto LABEL_135;
                  }
                }
              }

              do
              {
                v83 = v81[1];
                if (v83 == v109[0])
                {
                  if (v81[2] == v109[0])
                  {
LABEL_11:
                    *v17 = v81[3];
                    v22 = *(v17 + 11) & 0xFFF7;
                    v23 = 13;
                    goto LABEL_12;
                  }
                }

                else
                {
                  if (v83 >= *&v26)
                  {
                    v83 %= *&v26;
                  }

                  if (v83 != v28)
                  {
                    break;
                  }
                }

                v81 = *v81;
              }

              while (v81);
            }
          }
        }

LABEL_135:
        if (v108 > v107)
        {
          goto LABEL_13;
        }

        **v17 = v109[0];
        v22 = *(v17 + 11) & 0xFFD7 | 0x20;
        v23 = 8;
LABEL_12:
        *(v17 + 11) = v22;
        *(v17 + 2) = v23;
        goto LABEL_13;
      }

      v29 = GPUTools::FD::Argument::ViewAsCStringArray(v17);
      if (!*(v17 + 10))
      {
        goto LABEL_107;
      }

      v30 = v29;
      v31 = 0;
      v32 = 1;
      v105 = v18;
LABEL_31:
      v34 = *v30;
      if ((*(v30 + 22) & 0x40) == 0)
      {
        if (!**(v34 + 8 * v31))
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (*(*(v34 + 4 * v31) + v34))
      {
LABEL_33:
        [a4 getInfo:v109 forFilenameBuffer:? error:?];
        v35 = v15[1];
        if (!*&v35)
        {
          goto LABEL_57;
        }

        v36 = vcnt_s8(v35);
        v36.i16[0] = vaddlv_u8(v36);
        if (v36.u32[0] > 1uLL)
        {
          v37 = v109[0];
          if (v109[0] >= *&v35)
          {
            v37 = v109[0] % *&v35;
          }
        }

        else
        {
          v37 = (*&v35 - 1) & v109[0];
        }

        v38 = *(*v15 + 8 * v37);
        if (!v38 || (v39 = *v38) == 0)
        {
LABEL_57:
          if (v108 <= v107)
          {
            v32 = 0;
            goto LABEL_59;
          }

          LODWORD(v33) = *(v17 + 10);
LABEL_109:
          v19 = v105;
          v16 = v102;
          if (v33)
          {
            v69 = 0;
            v70 = *v17;
            v71 = v33;
            if (v33 < 4)
            {
              goto LABEL_115;
            }

            if ((v70 - v7) <= 0x1F)
            {
              goto LABEL_115;
            }

            v69 = v33 & 0xFFFC;
            v72 = (v7 + 16);
            v73 = (v70 + 16);
            v74 = v71 & 0xFFFC;
            do
            {
              v75 = *v72;
              *(v73 - 1) = *(v72 - 1);
              *v73 = v75;
              v72 += 2;
              v73 += 2;
              v74 -= 4;
            }

            while (v74);
            if (v69 != v71)
            {
LABEL_115:
              v76 = (v70 + 8 * v69);
              v77 = (v7 + 8 * v69);
              v78 = v71 - v69;
              do
              {
                v79 = *v77++;
                *v76++ = v79;
                --v78;
              }

              while (v78);
            }
          }

          *(v17 + 11) = *(v17 + 11) & 0xFF97 | 0x20;
          *(v17 + 2) = 8;
          goto LABEL_13;
        }

        if (v36.u32[0] < 2uLL)
        {
          v40 = *&v35 - 1;
          while (1)
          {
            v42 = v39[1];
            if (v42 == v109[0])
            {
              if (v39[2] == v109[0])
              {
                goto LABEL_91;
              }
            }

            else if ((v42 & v40) != v37)
            {
              goto LABEL_57;
            }

            v39 = *v39;
            if (!v39)
            {
              goto LABEL_57;
            }
          }
        }

        while (1)
        {
          v41 = v39[1];
          if (v41 == v109[0])
          {
            if (v39[2] == v109[0])
            {
LABEL_91:
              v62 = v105 - v18;
              v63 = (v105 - v18) >> 4;
              v64 = v63 + 1;
              if ((v63 + 1) >> 60)
              {
                std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
              }

              if (-v18 >> 3 > v64)
              {
                v64 = -v18 >> 3;
              }

              v65 = 0xFFFFFFFFFFFFFFFLL;
              if (-v18 < 0x7FFFFFFFFFFFFFF0)
              {
                v65 = v64;
              }

              if (v65)
              {
                if (!(v65 >> 60))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v66 = v18;
              v18 = 0;
              *(16 * v63) = *(v39 + 3);
              v105 = 16 * v63 + 16;
              memcpy(0, v66, v62);
              if (v108 <= v107)
              {
LABEL_59:
                v43 = &v8[-v7];
                v44 = &v8[-v7] >> 3;
                v45 = v44 + 1;
                if ((v44 + 1) >> 61)
                {
                  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
                }

                v46 = v7;
                if (-v7 >> 2 > v45)
                {
                  v45 = -v7 >> 2;
                }

                if (-v7 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v47 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = v45;
                }

                if (v47)
                {
                  if (!(v47 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v48 = (8 * v44);
                *v48 = v109[0];
                v8 = (v48 + 1);
                memcpy(0, v46, v43);
                v7 = 0;
                v15 = a5;
              }

LABEL_30:
              ++v31;
              v33 = *(v17 + 10);
              if (v31 < v33)
              {
                goto LABEL_31;
              }

              if ((v32 & 1) == 0)
              {
                goto LABEL_109;
              }

              if (!*(v17 + 10))
              {
                v19 = v105;
LABEL_107:
                v16 = v102;
                goto LABEL_144;
              }

              v67 = *v17;
              v19 = v105;
              v16 = v102;
              if (v33 > 4 && (v67 >= v18 + 16 * v33 - 8 || v18 >= v67 + 8 * v33))
              {
                v85 = v33 & 3;
                if ((v33 & 3) == 0)
                {
                  v85 = 4;
                }

                v68 = v33 - v85;
                v86 = (v18 + 32);
                v87 = (v67 + 16);
                v88 = v68;
                do
                {
                  v89 = v86 - 4;
                  v90 = vld2q_f64(v89);
                  v91 = vld2q_f64(v86);
                  *(v87 - 1) = v90;
                  *v87 = v91;
                  v86 += 8;
                  v87 += 2;
                  v88 -= 4;
                }

                while (v88);
              }

              else
              {
                v68 = 0;
              }

              v92 = 16 * v68;
              v93 = v33 - v68;
              v94 = (v67 + 8 * v68);
              do
              {
                *v94++ = *(v18 + v92);
                v92 += 16;
                --v93;
              }

              while (v93);
LABEL_144:
              *(v17 + 11) &= 0xFFB7u;
              *(v17 + 2) = *(v17 + 3);
LABEL_13:
              v17 += 3;
              if (v17 == v16)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          else
          {
            if (v41 >= *&v35)
            {
              v41 %= *&v35;
            }

            if (v41 != v37)
            {
              goto LABEL_57;
            }
          }

          v39 = *v39;
          if (!v39)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_37:
      if (v108 <= v107)
      {
        v49 = &v8[-v7];
        v50 = &v8[-v7] >> 3;
        v51 = v50 + 1;
        if ((v50 + 1) >> 61)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        v52 = v7;
        if (-v7 >> 2 > v51)
        {
          v51 = -v7 >> 2;
        }

        if (-v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v53 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          if (!(v53 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v60 = (8 * v50);
        *v60 = -1;
        v8 = (v60 + 1);
        memcpy(0, v52, v49);
        v7 = 0;
        v15 = a5;
        if (v32)
        {
          goto LABEL_78;
        }
      }

      else if (v32)
      {
LABEL_78:
        v54 = v7;
        v55 = v105 - v18;
        v56 = (v105 - v18) >> 4;
        v57 = v56 + 1;
        if ((v56 + 1) >> 60)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        if (-v18 >> 3 > v57)
        {
          v57 = -v18 >> 3;
        }

        v58 = v18;
        if (-v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v59 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          if (!(v59 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = 0;
        v61 = (16 * v56);
        v105 = 16 * v56 + 16;
        *v61 = 0;
        v61[1] = 0;
        memcpy(0, v58, v55);
        v32 = 1;
        v7 = v54;
        v15 = a5;
        goto LABEL_30;
      }

      v32 = 0;
      goto LABEL_30;
    }

    v18 = v14;
    v19 = v10;
LABEL_8:
    v10 = v19;
    v20 = v18;
    a2 = v99;
    v21 = *(v99 + 464);
    if (v21 == *(v99 + 456))
    {
      if (*(v99 + 488) == 1)
      {
        v95 = *(v99 + 472) - v21;
        v96 = (*(**(v99 + 480) + 56))(*(v99 + 480));
        v97 = *(v99 + 456);
        *(v99 + 464) = (*(**(v99 + 480) + 48))(*(v99 + 480), v97, *(v99 + 472) - v97) + v97;
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(v99, v96);
      }

      else
      {
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode(v99);
      }
    }

    v12 = *(v99 + 464);
    *(v99 + 456) = v12;
    v13 = v101 + 456;
    ++a1[16360];
    v11 = (a1 + v101 + 456);
    v9 = v20;
    if (v101 == 130424)
    {
      return a1;
    }
  }

  return a1;
}

void sub_24D64CFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (v15)
  {
    operator delete(v15);
  }

  v18 = (a15 + 130424);
  v19 = -130872;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v18);
    v18 = (v20 - 456);
    v19 += 456;
  }

  while (v19);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::Playback::TDFSSegment<131072ul>::~TDFSSegment(uint64_t a1)
{
  v2 = (a1 + 130424);
  v3 = -130872;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v2);
    v2 = (v4 - 456);
    v3 += 456;
  }

  while (v3);
  return a1;
}

void GPUTools::Playback::TDFSSegment<131072ul>::~TDFSSegment(uint64_t a1)
{
  v1 = (a1 + 130424);
  v2 = -130872;
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v1);
    v1 = (v3 - 456);
    v2 += 456;
  }

  while (v2);

  JUMPOUT(0x25302FA40);
}