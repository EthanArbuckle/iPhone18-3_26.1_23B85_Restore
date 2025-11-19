void sub_245B6F9DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_245B6FA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_245B6FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245B7026C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_245B702F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_245B70618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  os_activity_scope_leave(&state);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

os_log_t ___ZL46_CLLogObjectForCategory_TilesFramework_Defaultv_block_invoke()
{
  result = os_log_create("com.apple.CoreLocationTiles", "TilesFramework");
  logObject_TilesFramework_Default = result;
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E8FBA0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

CLConnection *std::unique_ptr<CLConnection,CLConnectionDeleter>::reset[abi:ne200100](CLConnection **a1, CLConnection *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return CLConnection::deferredDelete(result);
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<char const(&)[35],NSDictionary *&,std::allocator<CLConnectionMessage>,0>(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2858B82C8;
  std::construct_at[abi:ne200100]<CLConnectionMessage,char const(&)[35],NSDictionary *&,CLConnectionMessage*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<CLConnectionMessage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858B82C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D79910);
}

uint64_t std::construct_at[abi:ne200100]<CLConnectionMessage,char const(&)[35],NSDictionary *&,CLConnectionMessage*>(uint64_t a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v10 = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  *(&__dst + v7) = 0;
  MEMORY[0x245D79880](a1, &__dst, *a3);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_245B70C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<char const(&)[41],std::allocator<CLConnectionMessage>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2858B82C8;
  std::construct_at[abi:ne200100]<CLConnectionMessage,char const(&)[41],CLConnectionMessage*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<CLConnectionMessage,char const(&)[41],CLConnectionMessage*>(uint64_t a1, char *__s)
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

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  MEMORY[0x245D79870](a1, &__dst);
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_245B70E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLConnectionMessage::CLConnectionMessage()
{
  return MEMORY[0x282182D48]();
}

{
  return MEMORY[0x282182D50]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}