void sub_25C7B212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C7B21A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25C7B22A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25C7B240C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
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
  __cxa_throw(exception, off_2799B9050, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

os_log_t ___ZL43_CLLogObjectForCategory_NumberAdder_Defaultv_block_invoke()
{
  result = os_log_create("com.apple.lomoqa.NumberAdderFramework", "NumberAdder");
  logObject_NumberAdder_Default = result;
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

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<char const(&)[28],NSDictionary *&,std::allocator<CLConnectionMessage>,0>(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286E68208;
  std::construct_at[abi:ne200100]<CLConnectionMessage,char const(&)[28],NSDictionary *&,CLConnectionMessage*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<CLConnectionMessage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E68208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F88E490);
}

uint64_t std::construct_at[abi:ne200100]<CLConnectionMessage,char const(&)[28],NSDictionary *&,CLConnectionMessage*>(uint64_t a1, char *__s, void *a3)
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
  MEMORY[0x25F88E400](a1, &__dst, *a3);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_25C7B2AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

0>();
}

void __57__NumberAdder_numberOne_numberTwo_withCompletionHandler___block_invoke_2(uint64_t a1, CLConnectionMessage **a2)
{
  v3 = *a2;
  v4 = objc_opt_class();
  ObjectOfClass = CLConnectionMessage::getObjectOfClass(v3, v4);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  (*(v6 + 16))(v6, [ObjectOfClass intValue]);
  v7 = *(*(*(a1 + 32) + 8) + 40);

  _Block_release(v7);
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CLConnectionMessage::name(*a3.var0);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v11.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&v11.__r_.__value_.__l.__data_ = v5;
  }

  v6 = _os_activity_create(&dword_25C7B1000, "CL: #NumberAdder Handling message from service", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &v10);

  if (onceToken_NumberAdder_Default != -1)
  {
    [NumberAdder handleMessage:];
  }

  v7 = logObject_NumberAdder_Default;
  if (os_log_type_enabled(logObject_NumberAdder_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v11.__r_.__value_.__r.__words[0];
    }

    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2082;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_25C7B1000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#NumberAdder Handling message from service, event:%{public, location:escape_only}s, messageName:%{public, location:escape_only}s, self:%{public}p}", buf, 0x30u);
  }

  os_activity_scope_leave(&v10);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end