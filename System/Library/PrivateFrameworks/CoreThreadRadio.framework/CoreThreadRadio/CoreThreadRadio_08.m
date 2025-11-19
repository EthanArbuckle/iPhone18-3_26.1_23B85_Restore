void XPCIPCAPI_v1_rcp::interface_net_scan_start_handler()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  operator new();
}

void sub_1000B424C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v40 - 168, *(v40 - 160));
  _Unwind_Resume(a1);
}

void sub_1000B4AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v42 - 168, *(v42 - 160));
  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::interface_energy_scan_start_handler(int a1, xpc_object_t xdict)
{
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  string = xpc_dictionary_get_string(xdict, "method");
  v3 = strlen(string);
  if (v3 < 0x7FFFFFFFFFFFFFF8)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v6 = v3;
      if (v3)
      {
        memmove(&__dst, string, v3);
      }

      *(&__dst + v4) = 0;
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1000B5040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v40 - 152, *(v40 - 144));
  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::interface_peek_handler(int a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "method");
  v3 = strlen(string);
  if (v3 < 0x7FFFFFFFFFFFFFF8)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v6 = v3;
      if (v3)
      {
        memmove(&__dst, string, v3);
      }

      *(&__dst + v4) = 0;
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1000B5478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (*(v25 - 113) < 0)
    {
LABEL_3:
      operator delete(*(v25 - 136));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v25 - 113) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int,boost::any const&)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v3, (a2 + 1));
  boost::function<void ()(int,boost::any const&)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(v4, &v2);
}

void sub_1000B560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void **boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void (***boost::function<void ()(std::string const&,boost::any const&)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::signals2::slot_base::~slot_base(boost::signals2::slot_base *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v3 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v3);
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

atomic_uint *boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 2)
  {
    result = *(a1 + 8);
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  else if (v1 == 1)
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  return result;
}

void *dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>::callback(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

uint64_t boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::~list5(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t boost::_bi::storage4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::~storage4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::~list4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::~list7(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    _Block_release(v3);
  }

  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 8));
  return a1;
}

void std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v5(a2 + 64, a2 + 64, 2);
        }
      }

      *(a2 + 7) = 0;
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v6 = a2;
    }

    else
    {
      v6 = a2;
    }

    operator delete(v6);
  }
}

uint64_t std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](uint64_t result)
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

void *std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = 0;
    boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::move_assign(&v4, result);
    boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::move_assign(v3, a2);
    result = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::move_assign(a2, &v4);
    if (v4)
    {
      if ((v4 & 1) == 0)
      {
        if (*v4)
        {
          return (*v4)(v5, v5, 2);
        }
      }
    }
  }

  return result;
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100444271 & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x8000000100444271 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

void boost::detail::function::void_function_obj_invoker3<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>,void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5[0] = &v4;
  v5[1] = a3;
  v5[2] = a4;
  boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::arg<3>>::operator()<boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist3<void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>((a1 + 16), a1, v5);
}

void boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::arg<3>>::operator()<boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist3<void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a3 + 8);
  v6 = **a3;
  v7 = *(v5 + 16);
  *__p = *v5;
  v11 = v7;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  v8 = *(a3 + 16);
  *object = *v8;
  *v8 = 0;
  *(v8 + 8) = 0;
  boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(a2, v4, v6, __p, object);
  if (object[1])
  {
    dispatch_release(object[1]);
  }

  if (object[0])
  {
    _Block_release(object[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000B5F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = (a2 + (v7 >> 1));
  if ((v7 & 1) == 0)
  {
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v14, *a4, *(a4 + 8));
    v10 = *a5;
    if (!*a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = *(*v9 + v8);
  if (*(a4 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = *a4;
  v10 = *a5;
  if (*a5)
  {
LABEL_7:
    v10 = _Block_copy(v10);
  }

LABEL_8:
  v11 = *(a5 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v8(v9, a3, &v14, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1000B60C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_1000B6190(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void sub_1000B6390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::shared_ptr<void>::~shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::nolock_force_unique_connection_list(uint64_t ***a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit(v2 + 2, memory_order_acquire) != 1)
  {
    operator new();
  }

  v3 = **a1;
  v4 = a1[2];
  if (v4 == v3)
  {
    v4 = v3[1];
  }

  v6 = v4;
  return boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(a1, a2, 1, &v6, 2);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(uint64_t ***a1, uint64_t a2, char a3, uint64_t **a4, int a5)
{
  result = *a4;
  v21 = result;
  v7 = **a1;
  if (v7 != result)
  {
    v8 = a5 - 1;
    if (a3)
    {
      v10 = 0;
      do
      {
        v12 = result[2];
        v13 = *(v12 + 32);
        if (v13)
        {
          for (i = *v13; i != v13[1]; i += 24)
          {
            if ((*i ^ (*i >> 31)) > 1)
            {
              if ((*(**(i + 8) + 24))(*(i + 8)))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v15 = *(i + 16);
              if (!v15 || !atomic_load_explicit((v15 + 8), memory_order_acquire))
              {
LABEL_18:
                if (*(v12 + 24) == 1)
                {
                  *(v12 + 24) = 0;
                  boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v12, a2);
                }

                break;
              }
            }
          }
        }

        v16 = v21[2];
        if (*(v16 + 24))
        {
          result = v21[1];
        }

        else
        {
          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::erase(**a1, (v16 + 64), &v21);
        }

        v21 = result;
        ++v10;
      }

      while (result != **a1 && v8 >= v10);
    }

    else
    {
      v17 = 1;
      do
      {
        while (1)
        {
          v19 = result[2];
          if (*(v19 + 24))
          {
            break;
          }

          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::erase(v7, (v19 + 64), &v21);
          v7 = **a1;
          v21 = result;
          if (result == v7 || v8 < v17++)
          {
            goto LABEL_33;
          }
        }

        result = result[1];
        v21 = result;
      }

      while (result != v7 && v8 >= v17++);
    }
  }

LABEL_33:
  a1[2] = result;
  return result;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (v2)
  {
    return;
  }

  (*(*a1 + 40))(&v18);
  v4 = *(a2 + 176);
  if (v4 != *(a2 + 160))
  {
    v10 = *(&v18 + 1);
    *(*(a2 + 168) + 16 * v4) = v18;
    v11 = v10;
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_29:
    *(a2 + 176) = v4 + 1;
    return;
  }

  if (v4 == -1)
  {
    v15 = *(&v18 + 1);
    *(*(a2 + 168) - 16) = v18;
    v11 = v15;
    if (v15)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  if (v5 >= 0xB)
  {
    if (!(v5 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = *(a2 + 168);
  if (v4)
  {
    v7 = &v6[2 * v4];
    v8 = a2;
    do
    {
      v9 = v6[1];
      *v8 = *v6;
      v8[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }

      v6 += 2;
      v8 += 2;
    }

    while (v6 != v7);
    v6 = *(a2 + 168);
  }

  if (v6)
  {
    v13 = *(a2 + 176);
    if (v13 > 0)
    {
      v16 = &v6[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v6);
    }

    if (*(a2 + 160) >= 0xBuLL)
    {
      operator delete(*(a2 + 168));
    }
  }

  *(a2 + 160) = v5;
  *(a2 + 168) = a2;
  v4 = *(a2 + 176);
  v14 = *(&v18 + 1);
  *(a2 + 16 * v4) = v18;
  v11 = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_17:
  atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  v12 = *(&v18 + 1);
  ++*(a2 + 176);
  if (v12)
  {
    if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
      if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v12 + 24))(v12);
      }
    }
  }
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::connection_body(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_1004C1E20;
  operator new();
}

void boost::signals2::detail::connection_body_base::~connection_body_base(boost::signals2::detail::connection_body_base *this)
{
  *this = off_1004C1E88;
  v1 = *(this + 2);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete();
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9 = 10;
  __p = v8;
  v11 = 0;
  v12 = v2;
  pthread_mutex_lock(v2);
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::nolock_grab_tracked_objects<boost::signals2::mutex,boost::iterators::function_output_iterator<boost::signals2::detail::does_nothing>>(a1, v8);
  v3 = *(a1 + 24);
  pthread_mutex_unlock(v12);
  v4 = __p;
  if (__p)
  {
    if (v11 > 0)
    {
      v6 = __p + 16 * v11;
      do
      {
        v7 = *(v6 - 1);
        if (v7)
        {
          if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v7 + 16))(v7);
            if (atomic_fetch_add(v7 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v7 + 24))(v7);
            }
          }
        }

        v6 -= 16;
      }

      while (v6 > v4);
    }

    if (v9 >= 0xB)
    {
      operator delete(__p);
    }
  }

  return v3;
}

void sub_1000B6D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void *std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1000B7018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v13 = v10 + v11 - 24;
    v14 = -v11;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v13);
      v13 -= 24;
      v14 += 24;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_1000B71B8(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>>(v1);
  __cxa_rethrow();
}

void **boost::checked_delete<boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(result + 4, result + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete();
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete();
  }

  return result;
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = off_1004C1E20;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = off_1004C1E88;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::nolock_grab_tracked_objects<boost::signals2::mutex,boost::iterators::function_output_iterator<boost::signals2::detail::does_nothing>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
    if (*v2 != v2[1])
    {
      while (1)
      {
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v3, &v9);
        if ((*v3 ^ (*v3 >> 31)) == 2)
        {
          if (!(*(**(v3 + 8) + 24))(*(v3 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v3 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (v9 == v9 >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, a2);
        }

        v7 = 1;
        if (v9 == v9 >> 31)
        {
LABEL_13:
          v8 = v11;
          if (v11)
          {
            if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v3 += 24;
          if (v3 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        return;
      }
    }
  }
}

void sub_1000B76F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B7820(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::detail::sp_pointer_construct<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>(v1);
  }

  __cxa_rethrow();
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::m_insert(uint64_t a1, uint64_t a2)
{
  if (*a2 != a1 + 32)
  {
    v2 = *(*a2 + 48);
  }

  operator new();
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_21:
    operator new();
  }

  v3 = *a2;
  if (*a2 == 1)
  {
    v4 = a2[2];
    while (1)
    {
      v5 = v2;
      v6 = *(v2 + 8);
      if (v6 == 1)
      {
        v7 = *(v2 + 10);
        if (v4 >= v7)
        {
          if (v7 >= v4)
          {
            return v5;
          }

          goto LABEL_10;
        }

LABEL_4:
        v2 = *v2;
        if (!*v5)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 > 1)
        {
          goto LABEL_4;
        }

LABEL_10:
        v2 = v2[1];
        if (!v2)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v8 = *(v2 + 8);
  if (v3 == v8)
  {
    return v2;
  }

  v5 = *(a1 + 8);
  while (1)
  {
    if (v3 < v8)
    {
      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    if (v8 >= v3)
    {
      return v5;
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_21;
    }

LABEL_17:
    v8 = *(v2 + 8);
    v5 = v2;
    if (v3 == v8)
    {
      return v2;
    }
  }
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf2<void,XPCIPCAPI_v1_rcp,std::string const&,boost::any const&>,boost::_bi::list3<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x80000001004445F8 & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x80000001004445F8 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker2<boost::_bi::bind_t<void,boost::_mfi::mf2<void,XPCIPCAPI_v1_rcp,std::string const&,boost::any const&>,boost::_bi::list3<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>>>,void,std::string const&,boost::any const&>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_1000B7EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::shared_ptr<void>::~shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::nolock_force_unique_connection_list(uint64_t ***a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit(v2 + 2, memory_order_acquire) != 1)
  {
    operator new();
  }

  v3 = **a1;
  v4 = a1[2];
  if (v4 == v3)
  {
    v4 = v3[1];
  }

  v6 = v4;
  return boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(a1, a2, 1, &v6, 2);
}

void sub_1000B81A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(uint64_t ***a1, uint64_t a2, char a3, uint64_t **a4, int a5)
{
  result = *a4;
  v21 = result;
  v7 = **a1;
  if (v7 != result)
  {
    v8 = a5 - 1;
    if (a3)
    {
      v10 = 0;
      do
      {
        v12 = result[2];
        v13 = *(v12 + 32);
        if (v13)
        {
          for (i = *v13; i != v13[1]; i += 24)
          {
            if ((*i ^ (*i >> 31)) > 1)
            {
              if ((*(**(i + 8) + 24))(*(i + 8)))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v15 = *(i + 16);
              if (!v15 || !atomic_load_explicit((v15 + 8), memory_order_acquire))
              {
LABEL_18:
                if (*(v12 + 24) == 1)
                {
                  *(v12 + 24) = 0;
                  boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v12, a2);
                }

                break;
              }
            }
          }
        }

        v16 = v21[2];
        if (*(v16 + 24))
        {
          result = v21[1];
        }

        else
        {
          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(**a1, (v16 + 64), &v21);
        }

        v21 = result;
        ++v10;
      }

      while (result != **a1 && v8 >= v10);
    }

    else
    {
      v17 = 1;
      do
      {
        while (1)
        {
          v19 = result[2];
          if (*(v19 + 24))
          {
            break;
          }

          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(v7, (v19 + 64), &v21);
          v7 = **a1;
          v21 = result;
          if (result == v7 || v8 < v17++)
          {
            goto LABEL_33;
          }
        }

        result = result[1];
        v21 = result;
      }

      while (result != v7 && v8 >= v17++);
    }
  }

LABEL_33:
  a1[2] = result;
  return result;
}

void sub_1000B844C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v4 = *(a2 + 24);
  v5 = (a2 + 32);
  if (v4 != (a2 + 32))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v23, &v22, v4 + 8))
      {
        operator new();
      }

      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 24);
  if (v9 != v5)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 8);
    do
    {
      v10[6] = v11;
      v12 = a2;
      if (v9 != v5)
      {
        v12 = *(v9 + 6);
      }

      v13 = *(v9 + 1);
      v14 = v13;
      v15 = v9;
      if (v13)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v8 = *v16 == v15;
          v15 = v16;
        }

        while (!v8);
      }

      v17 = a2;
      if (v16 != v5)
      {
        v17 = *(v16 + 6);
      }

      while (v12 != v17)
      {
        v12 = *(v12 + 8);
        v11 = *(v11 + 8);
      }

      if (v13)
      {
        do
        {
          v18 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v18 = *(v9 + 2);
          v8 = *v18 == v9;
          v9 = v18;
        }

        while (!v8);
      }

      v19 = v10[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v10[2];
          v8 = *v20 == v10;
          v10 = v20;
        }

        while (!v8);
      }

      v9 = v18;
      v10 = v20;
    }

    while (v18 != v5);
  }

  return a1;
}

void sub_1000B8740(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[3];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  operator delete(__p);
}

void sub_1000B8964(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(void *a1, int *a2, uint64_t **a3)
{
  v6 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    if (a1[10] != *a3)
    {
      goto LABEL_52;
    }

    v12 = (*a3)[1];
    v8 = v6;
    v13 = (v6 - 1);
    if (v12 != a1)
    {
LABEL_43:
      std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(v13, a2)[6] = v12;
      goto LABEL_52;
    }

    goto LABEL_12;
  }

  v7 = *a2;
  if (*a2 == 1)
  {
    v8 = v6;
    v9 = v5;
    do
    {
      while (1)
      {
        v10 = *(v9 + 8);
        v11 = v10 < 1;
        if (v10 == 1)
        {
          v11 = *(v9 + 10) < a2[2];
        }

        if (!v11)
        {
          break;
        }

        v9 = v9[1];
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v8 = v6;
    v16 = v5;
    do
    {
      v17 = *(v16 + 8);
      v18 = v17 == v7;
      v11 = v17 < v7;
      v19 = v17 < v7;
      if (v11)
      {
        v20 = v8;
      }

      else
      {
        v20 = v16;
      }

      if (v18)
      {
        v19 = 0;
        v8 = v16;
      }

      else
      {
        v8 = v20;
      }

      v16 = v16[v19];
    }

    while (v16);
  }

LABEL_23:
  if (v8[6] == *a3)
  {
    v12 = (*a3)[1];
    v21 = *a2;
    if (*a2 == 1)
    {
      v22 = v6;
      v23 = v5;
      while (1)
      {
        v24 = *(v23 + 8);
        if (v24 == 1)
        {
          if (a2[2] < *(v23 + 10))
          {
            goto LABEL_31;
          }

LABEL_26:
          v23 = v23[1];
          if (!v23)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v24 <= 1)
          {
            goto LABEL_26;
          }

LABEL_31:
          v22 = v23;
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v22 = v6;
    v25 = v5;
    do
    {
      v26 = *(v25 + 8);
      v27 = v21 == v26;
      v11 = v21 < v26;
      v28 = v21 >= v26;
      if (v11)
      {
        v29 = v25;
      }

      else
      {
        v29 = v22;
      }

      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v22 = v29;
      }

      v25 = v25[v28];
    }

    while (v25);
LABEL_41:
    if (v22 == v6)
    {
      v13 = (v6 - 1);
      if (v12 != a1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = (v6 - 1);
      if (v12 != v22[6])
      {
        goto LABEL_43;
      }
    }

LABEL_12:
    v14 = v8[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v30 = v8;
      do
      {
        v15 = v30[2];
        v18 = *v15 == v30;
        v30 = v15;
      }

      while (!v18);
    }

    if (*v13 == v8)
    {
      *v13 = v15;
    }

    --a1[5];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v8);
    operator delete(v8);
  }

LABEL_52:
  v31 = *a3;
  v32 = **a3;
  v33 = (*a3)[1];
  *(v32 + 8) = v33;
  *v33 = v32;
  --a1[2];
  v34 = v31[3];
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v34 + 16))(v34);
      if (atomic_fetch_add(v34 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v34 + 24))(v34);
      }
    }
  }

  operator delete(v31);
  return v33;
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>::connection_body(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_1004C2068;
  operator new();
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete();
}

void sub_1000B8EEC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>>(v1);
  __cxa_rethrow();
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = off_1004C2068;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = off_1004C1E88;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void sub_1000B91A8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::detail::sp_pointer_construct<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>(v1);
  }

  __cxa_rethrow();
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,XPCIPCAPI_v1_rcp,nl::wpantund::WPAN::NetworkInstance const&>,boost::_bi::list2<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100444AA4 & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x8000000100444AA4 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,XPCIPCAPI_v1_rcp,nl::wpantund::WPAN::NetworkInstance const&>,boost::_bi::list2<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>>>,void,nl::wpantund::WPAN::NetworkInstance const&>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_1000B9498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::shared_ptr<void>::~shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::nolock_force_unique_connection_list(uint64_t ***a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit(v2 + 2, memory_order_acquire) != 1)
  {
    operator new();
  }

  v3 = **a1;
  v4 = a1[2];
  if (v4 == v3)
  {
    v4 = v3[1];
  }

  v6 = v4;
  return boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(a1, a2, 1, &v6, 2);
}

void sub_1000B9754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void sub_1000B9858(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v4 = *(a2 + 24);
  v5 = (a2 + 32);
  if (v4 != (a2 + 32))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v23, &v22, v4 + 8))
      {
        operator new();
      }

      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 24);
  if (v9 != v5)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 8);
    do
    {
      v10[6] = v11;
      v12 = a2;
      if (v9 != v5)
      {
        v12 = *(v9 + 6);
      }

      v13 = *(v9 + 1);
      v14 = v13;
      v15 = v9;
      if (v13)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v8 = *v16 == v15;
          v15 = v16;
        }

        while (!v8);
      }

      v17 = a2;
      if (v16 != v5)
      {
        v17 = *(v16 + 6);
      }

      while (v12 != v17)
      {
        v12 = *(v12 + 8);
        v11 = *(v11 + 8);
      }

      if (v13)
      {
        do
        {
          v18 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v18 = *(v9 + 2);
          v8 = *v18 == v9;
          v9 = v18;
        }

        while (!v8);
      }

      v19 = v10[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v10[2];
          v8 = *v20 == v10;
          v10 = v20;
        }

        while (!v8);
      }

      v9 = v18;
      v10 = v20;
    }

    while (v18 != v5);
  }

  return a1;
}

void sub_1000B9B4C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[3];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  operator delete(__p);
}

void sub_1000B9D70(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>::connection_body(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_1004C2260;
  operator new();
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete();
}

void sub_1000BA028(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>>(v1);
  __cxa_rethrow();
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = off_1004C2260;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = off_1004C1E88;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void sub_1000BA2E4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::detail::sp_pointer_construct<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>(v1);
  }

  __cxa_rethrow();
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,XPCIPCAPI_v1_rcp,nl::wpantund::EnergyScanResultEntry const&>,boost::_bi::list2<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100444E1BLL & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x8000000100444E1BLL & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,XPCIPCAPI_v1_rcp,nl::wpantund::EnergyScanResultEntry const&>,boost::_bi::list2<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>>>,void,nl::wpantund::EnergyScanResultEntry const&>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_1000BA5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::shared_ptr<void>::~shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::nolock_force_unique_connection_list(uint64_t ***a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit(v2 + 2, memory_order_acquire) != 1)
  {
    operator new();
  }

  v3 = **a1;
  v4 = a1[2];
  if (v4 == v3)
  {
    v4 = v3[1];
  }

  v6 = v4;
  return boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::nolock_cleanup_connections_from(a1, a2, 1, &v6, 2);
}

void sub_1000BA890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void sub_1000BA994(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v4 = *(a2 + 24);
  v5 = (a2 + 32);
  if (v4 != (a2 + 32))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v23, &v22, v4 + 8))
      {
        operator new();
      }

      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 24);
  if (v9 != v5)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 8);
    do
    {
      v10[6] = v11;
      v12 = a2;
      if (v9 != v5)
      {
        v12 = *(v9 + 6);
      }

      v13 = *(v9 + 1);
      v14 = v13;
      v15 = v9;
      if (v13)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v8 = *v16 == v15;
          v15 = v16;
        }

        while (!v8);
      }

      v17 = a2;
      if (v16 != v5)
      {
        v17 = *(v16 + 6);
      }

      while (v12 != v17)
      {
        v12 = *(v12 + 8);
        v11 = *(v11 + 8);
      }

      if (v13)
      {
        do
        {
          v18 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v18 = *(v9 + 2);
          v8 = *v18 == v9;
          v9 = v18;
        }

        while (!v8);
      }

      v19 = v10[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v10[2];
          v8 = *v20 == v10;
          v10 = v20;
        }

        while (!v8);
      }

      v9 = v18;
      v10 = v20;
    }

    while (v18 != v5);
  }

  return a1;
}

void sub_1000BAC88(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[3];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  operator delete(__p);
}

void sub_1000BAEAC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>::connection_body(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_1004C2458;
  operator new();
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete();
}

void sub_1000BB164(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>>(v1);
  __cxa_rethrow();
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = off_1004C2458;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = off_1004C1E88;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void sub_1000BB420(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::detail::sp_pointer_construct<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>(v1);
  }

  __cxa_rethrow();
}

__int128 *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,XPCIPCAPI_v1_rcp,std::string const&>,boost::_bi::list2<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>>>>::manage(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100445317 & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, (0x8000000100445317 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,XPCIPCAPI_v1_rcp,std::string const&>,boost::_bi::list2<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>>>,void,std::string const&>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, v1, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFvhN3xpc4dictEEEE40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFvhN3xpc4dictEEEE40c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void *boost::any::holder<nl::Data>::holder(void *result, void *a2)
{
  result[1] = 0;
  *result = off_1004C25C0;
  result[2] = 0;
  result[3] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1000BB734(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::any::holder<nl::Data>::~holder(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void boost::any::holder<nl::Data>::~holder(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

void sub_1000BB8B8()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::list5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *a3;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v14 = *a4;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v14, *a4, *(a4 + 8));
LABEL_6:
  v9 = *a5;
  if (*a5)
  {
    v9 = _Block_copy(v9);
  }

  v10 = *(a5 + 8);
  aBlock = v9;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(a1, a2, &v15, &v14, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  return a1;
}

void sub_1000BBA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *a3;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *a4;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
LABEL_6:
  boost::_bi::storage4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage4(a1, a2, &v13, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v13.__r_.__value_.__l.__data_);
    v9 = *a5;
    if (!*a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v9 = *a5;
  if (*a5)
  {
LABEL_12:
    v9 = _Block_copy(v9);
  }

LABEL_13:
  v10 = *(a5 + 8);
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  return a1;
}

void sub_1000BBB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    *a1 = a2;
    v7 = (a1 + 8);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      *v7 = __p;
      if (*(a4 + 23) < 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v8 = *a4;
      *(a1 + 48) = *(a4 + 2);
      *(a1 + 32) = v8;
      return a1;
    }
  }

  else
  {
    __p = *a3;
    *a1 = a2;
    v7 = (a1 + 8);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(a4 + 23) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  return a1;
}

void sub_1000BBCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 31) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  v6 = *(a2 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 64);
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  return a1;
}

void sub_1000BBD88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void boost::function<void ()(char const*)>::function<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(void *a1, __int128 *a2)
{
  v4 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v5, (a2 + 1));
  *a1 = 0;
  v10 = v4;
  v11 = v5;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v6;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v7;
  }

  v3 = aBlock;
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  v14 = v3;
  v15 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::function1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(a1, &v10);
}

void sub_1000BBF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
    _Unwind_Resume(a1);
  }

  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v4, (a2 + 1));
  v9 = v3;
  v10 = v4;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v5;
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v2 = aBlock;
  if (aBlock)
  {
    v2 = _Block_copy(aBlock);
  }

  v13 = v2;
  v14 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::detail::function::basic_vtable1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::function1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>)::stored_vtable, &v9);
}

void sub_1000BC10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
    _Unwind_Resume(a1);
  }

  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>,void,char const*>::invoke(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  v4 = &v3;
  boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<char const*>>(v2 + 16, v2, &v4);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v7 + 80);
      if (v8)
      {
        dispatch_release(v8);
      }

      v9 = *(v7 + 72);
      if (v9)
      {
        _Block_release(v9);
      }

      if (*(v7 + 71) < 0)
      {
        operator delete(*(v7 + 48));
      }

      if (*(v7 + 47) < 0)
      {
        operator delete(*(v7 + 24));
      }

      operator delete();
    }

    goto LABEL_9;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001004453BELL & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004453BELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<char const*>>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = *a1;
  v6 = **a3;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(a1 + 8), *(a1 + 16));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v11 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v11, *(a1 + 32), *(a1 + 40));
LABEL_6:
  v7 = *(a1 + 56);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 64);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(a2, v5, v6, &v12, &v11, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_1000BC4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = (a2 + (v9 >> 1));
  if ((v9 & 1) == 0)
  {
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v10 = *(*v11 + v10);
  if (*(a4 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = *a4;
  if ((*(a5 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    v16 = *a5;
    goto LABEL_8;
  }

LABEL_7:
  std::string::__init_copy_ctor_external(&v16, *a5, *(a5 + 8));
LABEL_8:
  v12 = *a6;
  if (*a6)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a6 + 8);
  aBlock = v12;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v10(v11, a3, &v17, &v16, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_1000BC644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void boost::detail::function::basic_vtable1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v3, (a2 + 1));
  operator new();
}

void *boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::list4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
    v7 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = *a3;
  v7 = *a4;
  if (*a4)
  {
LABEL_5:
    v7 = _Block_copy(v7);
  }

LABEL_6:
  v8 = *(a4 + 8);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  boost::_bi::storage4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage4(a1, a2, &v12, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1000BC89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *boost::_bi::storage4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    *a1 = a2;
    v7 = (a1 + 1);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      *v7 = __p;
      v8 = *a4;
      if (!*a4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __p = *a3;
    *a1 = a2;
    v7 = (a1 + 1);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v8 = *a4;
  if (*a4)
  {
LABEL_8:
    v8 = _Block_copy(v8);
  }

LABEL_9:
  v9 = *(a4 + 8);
  a1[4] = v8;
  a1[5] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  return a1;
}

void sub_1000BC9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::bind_t(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
    v5 = *(a2 + 48);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  v5 = *(a2 + 48);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  return a1;
}

void boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(void *a1, uint64_t a2)
{
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::bind_t(&v4, a2);
  *a1 = 0;
  v9 = v4;
  v10 = v5;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v3 = aBlock;
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  v12 = v3;
  v13 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(a1, &v9);
}

void sub_1000BCB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a17);
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, uint64_t a2)
{
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::bind_t(&v3, a2);
  v8 = v3;
  v9 = v4;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v5;
  }

  v2 = aBlock;
  if (aBlock)
  {
    v2 = _Block_copy(aBlock);
  }

  v11 = v2;
  v12 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::detail::function::basic_vtable1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>)::stored_vtable, &v8);
}

void sub_1000BCCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a17);
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>,void,int>::invoke(uint64_t *a1, int a2)
{
  v3 = a2;
  v2 = *a1;
  v4 = &v3;
  boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<int>>(v2 + 16, v2, &v4);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v7 + 56);
      if (v8)
      {
        dispatch_release(v8);
      }

      v9 = *(v7 + 48);
      if (v9)
      {
        _Block_release(v9);
      }

      if (*(v7 + 47) < 0)
      {
        operator delete(*(v7 + 24));
      }

      operator delete();
    }

    goto LABEL_9;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001004454B5 & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004454B5 & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<int>>(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v5 = *a1;
  v6 = **a3;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(a1 + 8), *(a1 + 16));
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&v12.__r_.__value_.__l.__data_ = *(a1 + 8);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v12.__r_.__value_.__r.__words[2] = *(a1 + 24);
  if (v7)
  {
LABEL_5:
    v7 = _Block_copy(v7);
  }

LABEL_6:
  v9 = *(a1 + 40);
  aBlock = v7;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(a2, v5, v6, &v12, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1000BD010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = (a2 + (v7 >> 1));
  if ((v7 & 1) == 0)
  {
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v14, *a4, *(a4 + 8));
    v10 = *a5;
    if (!*a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = *(*v9 + v8);
  if (*(a4 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = *a4;
  v10 = *a5;
  if (*a5)
  {
LABEL_7:
    v10 = _Block_copy(v10);
  }

LABEL_8:
  v11 = *(a5 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v8(v9, a3, &v14, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1000BD140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(void *a1, __int128 *a2)
{
  v4 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v5, (a2 + 1));
  *a1 = 0;
  v10 = v4;
  v11 = v5;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v6;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v7;
  }

  v3 = aBlock;
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  v14 = v3;
  v15 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(a1, &v10);
}

void sub_1000BD3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
    _Unwind_Resume(a1);
  }

  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v4, (a2 + 1));
  v9 = v3;
  v10 = v4;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v5;
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v2 = aBlock;
  if (aBlock)
  {
    v2 = _Block_copy(aBlock);
  }

  v13 = v2;
  v14 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::detail::function::basic_vtable1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>)::stored_vtable, &v9);
}

void sub_1000BD5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
    _Unwind_Resume(a1);
  }

  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>,void,int>::invoke(uint64_t *a1, int a2)
{
  v3 = a2;
  v2 = *a1;
  v4 = &v3;
  boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<int>>(v2 + 16, v2, &v4);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v7 + 80);
      if (v8)
      {
        dispatch_release(v8);
      }

      v9 = *(v7 + 72);
      if (v9)
      {
        _Block_release(v9);
      }

      if (*(v7 + 71) < 0)
      {
        operator delete(*(v7 + 48));
      }

      if (*(v7 + 47) < 0)
      {
        operator delete(*(v7 + 24));
      }

      operator delete();
    }

    goto LABEL_9;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001004455A4 & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004455A4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<int>>(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v5 = *a1;
  v6 = **a3;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(a1 + 8), *(a1 + 16));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v11 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v11, *(a1 + 32), *(a1 + 40));
LABEL_6:
  v7 = *(a1 + 56);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 64);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(a2, v5, v6, &v12, &v11, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_1000BD938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = (a2 + (v9 >> 1));
  if ((v9 & 1) == 0)
  {
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v10 = *(*v11 + v10);
  if (*(a4 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = *a4;
  if ((*(a5 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    v16 = *a5;
    goto LABEL_8;
  }

LABEL_7:
  std::string::__init_copy_ctor_external(&v16, *a5, *(a5 + 8));
LABEL_8:
  v12 = *a6;
  if (*a6)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a6 + 8);
  aBlock = v12;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v10(v11, a3, &v17, &v16, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_1000BDADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::list7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *a3;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v17 = *a4;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
LABEL_6:
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a5, *(a5 + 8));
  }

  else
  {
    v16 = *a5;
  }

  v11 = *a6;
  if (*a6)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a6 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(a1, a2, &v18, &v17, &v16, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_23:
    operator delete(v18.__r_.__value_.__l.__data_);
    return a1;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

  return a1;
}

void sub_1000BDC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *a3;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v15 = *a4;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v15, *a4, *(a4 + 8));
LABEL_6:
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  boost::_bi::storage6<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage6(a1, a2, &v16, &v15, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      operator delete(v16.__r_.__value_.__l.__data_);
      v11 = *a6;
      if (!*a6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v11 = *a6;
  if (*a6)
  {
LABEL_17:
    v11 = _Block_copy(v11);
  }

LABEL_18:
  v12 = *(a6 + 8);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  return a1;
}

void sub_1000BDE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage6<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *a3;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *a4;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
LABEL_6:
  boost::_bi::storage4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>>::storage4(a1, a2, &v12, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ((*(a5 + 23) & 0x80000000) == 0)
  {
LABEL_9:
    v9 = *a5;
    *(a1 + 72) = *(a5 + 2);
    *(a1 + 56) = v9;
    return a1;
  }

LABEL_12:
  std::string::__init_copy_ctor_external((a1 + 56), *a5, *(a5 + 1));
  return a1;
}

void sub_1000BE008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  v7 = *(a2 + 80);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  return a1;
}

void sub_1000BE128(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int,boost::any const&)>::function<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(void *a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v4, (a2 + 1));
  *a1 = 0;
  v5 = v3;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v6, &v4);
  boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(a1, &v5);
}

void sub_1000BE294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v3, (a2 + 1));
  v4 = v2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v5, &v3);
  boost::detail::function::basic_vtable2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>)::stored_vtable, &v4);
}

void sub_1000BE410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker2<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>,void,int,boost::any const&>::invoke(uint64_t *a1, int a2, unsigned int *a3)
{
  v4 = a2;
  v3 = *a1;
  v5[0] = &v4;
  v5[1] = a3;
  boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist2<int,boost::any const&>>(v3 + 16, v3, v5);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

    v8 = *(v7 + 104);
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(v7 + 96);
    if (v9)
    {
      _Block_release(v9);
    }

    if (*(v7 + 95) < 0)
    {
      operator delete(*(v7 + 72));
      if ((*(v7 + 71) & 0x80000000) == 0)
      {
LABEL_19:
        if ((*(v7 + 47) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_24:
        operator delete(*(v7 + 24));
LABEL_20:
        operator delete();
      }
    }

    else if ((*(v7 + 71) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(*(v7 + 48));
    if ((*(v7 + 47) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x8000000100445699 & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100445699 & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist2<int,boost::any const&>>(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v5 = *a1;
  v6 = a3[1];
  v7 = **a3;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 8), *(a1 + 16));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *(a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v13 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v13, *(a1 + 32), *(a1 + 40));
LABEL_6:
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v12 = *(a1 + 56);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 88);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(a2, v5, v7, v6, &v14, &v13, &v12, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_23:
      operator delete(v14.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_1000BE7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = (a2 + (v13 >> 1));
  if ((v13 & 1) == 0)
  {
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v22, *a5, *(a5 + 8));
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14 = *(*v15 + v14);
  if (*(a5 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = *a5;
  if ((*(a6 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    v21 = *a6;
    goto LABEL_8;
  }

LABEL_7:
  std::string::__init_copy_ctor_external(&v21, *a6, *(a6 + 8));
LABEL_8:
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a7, *(a7 + 8));
  }

  else
  {
    v20 = *a7;
  }

  v16 = *a8;
  if (*a8)
  {
    v16 = _Block_copy(v16);
  }

  v17 = *(a8 + 8);
  aBlock = v16;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v14(v15, a3, a4, &v22, &v21, &v20, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_25:
      operator delete(v22.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void sub_1000BE9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void boost::detail::function::basic_vtable2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v3, (a2 + 1));
  operator new();
}

void boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(void *a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v4, (a2 + 1));
  *a1 = 0;
  v5 = v3;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v6, &v4);
  boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(a1, &v5);
}

void sub_1000BEC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v3, (a2 + 1));
  v4 = v2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v5, &v3);
  boost::detail::function::basic_vtable2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::function1<void,int>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>)::stored_vtable, &v4);
}

void sub_1000BEE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a23);
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>,void,int>::invoke(uint64_t *a1, int a2)
{
  v3 = a2;
  v2 = *a1;
  v4 = &v3;
  boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<int>>(v2 + 16, v2, &v4);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

    v8 = *(v7 + 104);
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(v7 + 96);
    if (v9)
    {
      _Block_release(v9);
    }

    if (*(v7 + 95) < 0)
    {
      operator delete(*(v7 + 72));
      if ((*(v7 + 71) & 0x80000000) == 0)
      {
LABEL_19:
        if ((*(v7 + 47) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_24:
        operator delete(*(v7 + 24));
LABEL_20:
        operator delete();
      }
    }

    else if ((*(v7 + 71) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(*(v7 + 48));
    if ((*(v7 + 47) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001004457A9 & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004457A9 & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist1<int>>(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v5 = *a1;
  v6 = **a3;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 8), *(a1 + 16));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v12 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v12, *(a1 + 32), *(a1 + 40));
LABEL_6:
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v11 = *(a1 + 56);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 88);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(a2, v5, v6, &v13, &v12, &v11, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_23:
      operator delete(v13.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_1000BF1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v23 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v23 - 64));
  _Unwind_Resume(exception_object);
}

void boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = (a2 + (v11 >> 1));
  if ((v11 & 1) == 0)
  {
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v20, *a4, *(a4 + 8));
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = *(*v13 + v12);
  if (*(a4 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = *a4;
  if ((*(a5 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    v19 = *a5;
    goto LABEL_8;
  }

LABEL_7:
  std::string::__init_copy_ctor_external(&v19, *a5, *(a5 + 8));
LABEL_8:
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a6, *(a6 + 8));
  }

  else
  {
    v18 = *a6;
  }

  v14 = *a7;
  if (*a7)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a7 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v12(v13, a3, &v20, &v19, &v18, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_25:
      operator delete(v20.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void sub_1000BF3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void dispatch::block<void({block_pointer})(unsigned char,xpc::dict)>::operator()<unsigned char const&,xpc::dict const&>(uint64_t *a1, unsigned __int8 *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
}

void boost::function<void ()(int,boost::any const&)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(void *a1, __int128 *a2)
{
  v4 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v5, (a2 + 1));
  *a1 = 0;
  v10 = v4;
  v11 = v5;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v6;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v7;
  }

  v3 = aBlock;
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  v14 = v3;
  v15 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(a1, &v10);
}

void sub_1000BF678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
    _Unwind_Resume(a1);
  }

  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v4, (a2 + 1));
  v9 = v3;
  v10 = v4;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v5;
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v2 = aBlock;
  if (aBlock)
  {
    v2 = _Block_copy(aBlock);
  }

  v13 = v2;
  v14 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  boost::detail::function::basic_vtable1<void,char const*>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::function2<void,int,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>)::stored_vtable, &v9);
}

void sub_1000BF860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
    _Unwind_Resume(a1);
  }

  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manage(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::void_function_obj_invoker2<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>,void,int,boost::any const&>::invoke(uint64_t *a1, int a2, unsigned int *a3)
{
  v4 = a2;
  v3 = *a1;
  v5[0] = &v4;
  v5[1] = a3;
  boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist2<int,boost::any const&>>(v3 + 16, v3, v5);
}

void *boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>::manager(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v7 + 80);
      if (v8)
      {
        dispatch_release(v8);
      }

      v9 = *(v7 + 72);
      if (v9)
      {
        _Block_release(v9);
      }

      if (*(v7 + 71) < 0)
      {
        operator delete(*(v7 + 48));
      }

      if (*(v7 + 47) < 0)
      {
        operator delete(*(v7 + 24));
      }

      operator delete();
    }

    goto LABEL_9;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001004458A4 & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004458A4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

void boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::operator()<boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::rrlist2<int,boost::any const&>>(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v5 = *a1;
  v6 = a3[1];
  v7 = **a3;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 8), *(a1 + 16));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v12 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v12, *(a1 + 32), *(a1 + 40));
LABEL_6:
  v8 = *(a1 + 56);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 64);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(a2, v5, v7, v6, &v13, &v12, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_1000BFC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = (a2 + (v11 >> 1));
  if ((v11 & 1) == 0)
  {
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v19, *a5, *(a5 + 8));
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = *(*v13 + v12);
  if (*(a5 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = *a5;
  if ((*(a6 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    v18 = *a6;
    goto LABEL_8;
  }

LABEL_7:
  std::string::__init_copy_ctor_external(&v18, *a6, *(a6 + 8));
LABEL_8:
  v14 = *a7;
  if (*a7)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a7 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v12(v13, a3, a4, &v19, &v18, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v19.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_1000BFDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

char *OUTLINED_FUNCTION_4_2@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  if (*result < 0)
  {
    v4 = *a2;
  }

  return result;
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void InternalClientsInterface::InternalClientsInterface(InternalClientsInterface *this, dispatch_queue_s *a2)
{
  *(this + 1) = a2;
  Instance = InternalIPCAPI::getInstance(this);
  *this = Instance;
  InternalIPCAPI::add_process_queue(Instance, a2);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v6 = logging_obg;
    if (syslog_is_the_mask_enabled(3))
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        InternalClientsInterface::InternalClientsInterface(v6);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void InternalClientsInterface::~InternalClientsInterface(InternalClientsInterface *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(5))
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "OTD InternalClientInterface - Deleted", v2, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void stabilitySettings_t::~stabilitySettings_t(void **this)
{
  if ((*(this + 111) & 0x80000000) == 0)
  {
    if ((*(this + 87) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[8]);
    return;
  }

  operator delete(this[11]);
  if (*(this + 87) < 0)
  {
    goto LABEL_5;
  }
}

void HostCmdTask::free_apidata(_OTCTL_CMD_DATA **this)
{
  v2 = *this;
  if (v2)
  {
    switch(*(this + 3))
    {
      case 1:
        _OTCTL_CMD_DATA::~_OTCTL_CMD_DATA(v2);

        goto LABEL_5;
      case 2:
      case 3:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x14:
      case 0x1B:
      case 0x28:
        boost::function<void ()(std::string const&,boost::any const&)>::~function(v2);

        goto LABEL_5;
      case 4:
        _PROPERTY_GET_CMD_DATA::~_PROPERTY_GET_CMD_DATA(v2);

        goto LABEL_5;
      case 5:
        _PROPERTY_SET_CMD_DATA::~_PROPERTY_SET_CMD_DATA(v2);

        goto LABEL_5;
      case 6:
        _SERVICE_ADD_CMD_DATA::~_SERVICE_ADD_CMD_DATA(v2);

        goto LABEL_5;
      case 7:
        _SERVICE_REMOVE_CMD_DATA::~_SERVICE_REMOVE_CMD_DATA(v2);

        goto LABEL_5;
      case 8:
        _ROUTE_ADD_CMD_DATA::~_ROUTE_ADD_CMD_DATA(v2);

        goto LABEL_5;
      case 9:
        _ROUTE_REMOVE_CMD_DATA::~_ROUTE_REMOVE_CMD_DATA(v2);

        goto LABEL_5;
      case 0xA:
      case 0xB:
        _CONFIG_GATEWAY_CMD_DATA::~_CONFIG_GATEWAY_CMD_DATA(v2);

        goto LABEL_5;
      case 0xC:
        _FORM_NETWORK_CMD_DATA::~_FORM_NETWORK_CMD_DATA(v2);

        goto LABEL_5;
      case 0xD:
        _FORM_NETWORK_CMD_DATA::~_FORM_NETWORK_CMD_DATA(v2);

        goto LABEL_5;
      case 0x13:
      case 0x19:

        goto LABEL_5;
      case 0x15:
      case 0x16:
      case 0x17:
        _NET_SCAN_CMD_DATA::~_NET_SCAN_CMD_DATA(v2);

        goto LABEL_5;
      case 0x18:
        _GENERATE_PSKC_CMD_DATA::~_GENERATE_PSKC_CMD_DATA(v2);

        goto LABEL_5;
      case 0x1A:
        _PEEK_CMD_DATA::~_PEEK_CMD_DATA(v2);

        goto LABEL_5;
      case 0x1C:
        SendDiagnosticsCmdData::~SendDiagnosticsCmdData(v2);

        goto LABEL_5;
      case 0x1E:
        _PEEK_CMD_DATA::~_PEEK_CMD_DATA(v2);

        goto LABEL_5;
      case 0x1F:
        boost::function<void ()(std::string const&,boost::any const&)>::~function(v2);

        goto LABEL_5;
      case 0x20:
        boost::function<void ()(std::string const&,boost::any const&)>::~function(v2);

        goto LABEL_5;
      case 0x24:
        _DIAG_GET_DEVICE_DATA_CMD_DATA::~_DIAG_GET_DEVICE_DATA_CMD_DATA(v2);

        goto LABEL_5;
      case 0x27:
        _PEEK_CMD_DATA::~_PEEK_CMD_DATA(v2);

        goto LABEL_5;
      case 0x2A:
        _UPDATE_ACCESSORY_ADDR_DATA::~_UPDATE_ACCESSORY_ADDR_DATA(v2);

LABEL_5:
        operator delete();
      default:
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg)
        {
          v4 = logging_obg;
          if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            HostCmdTask::free_apidata();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        break;
    }
  }
}

void _CONFIG_GATEWAY_CMD_DATA::~_CONFIG_GATEWAY_CMD_DATA(_CONFIG_GATEWAY_CMD_DATA *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(this + 64, this + 64, 2);
      }
    }

    *(this + 7) = 0;
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(this + 32, *(this + 5));
}

void TaskQueueWrapper::pop_front(TaskQueueWrapper *this)
{
  std::mutex::lock((this + 24));
  v3 = *(this + 1);
  v2 = *(this + 2);
  v5 = *v3;
  v4 = v3[1];
  *(v5 + 8) = v4;
  *v4 = v5;
  *(this + 2) = v2 - 1;
  v6 = v3[3];
  if (v6)
  {
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 16))(v6);
      if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 24))(v6);
      }
    }
  }

  operator delete(v3);

  std::mutex::unlock((this + 24));
}

void TaskQueueWrapper::front(TaskQueueWrapper *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 24));
  v4 = *(this + 1);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  *a2 = v6;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  std::mutex::unlock((this + 24));
}

void RcpHostContext::RcpHostContext(RcpHostContext *this)
{
  *this = this;
  *(this + 1) = this;
  *(this + 1) = xmmword_1004459B0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 104) = xmmword_1004459B0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 22) = off_1004C2740;
  operator new();
}

void sub_1000C0DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11)
{
  boost::detail::shared_count::~shared_count(v11 + 48);
  boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::~signal(v18);
  boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::~signal(v19);
  boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::~signal(v17);
  boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::~signal(v16);
  boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::~signal(v15);
  boost::signals2::signal<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::~signal(v14);
  boost::signals2::signal<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::~signal(v13);
  boost::signals2::signal<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::~signal(a11);
  TaskQueueWrapper::~TaskQueueWrapper(v12);
  TaskQueueWrapper::~TaskQueueWrapper(v11);
  _Unwind_Resume(a1);
}

void sub_1000C0FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  boost::detail::shared_count::~shared_count(v12);
  TaskQueueWrapper::~TaskQueueWrapper(v11);
  TaskQueueWrapper::~TaskQueueWrapper(v10);
  _Unwind_Resume(a1);
}

void sub_1000C103C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  TaskQueueWrapper::~TaskQueueWrapper(v11);
  TaskQueueWrapper::~TaskQueueWrapper(v10);
  _Unwind_Resume(a1);
}

double RcpHostContext::clear_leader_reelect_counters(RcpHostContext *this)
{
  result = 0.0;
  *(this + 6120) = 0u;
  return result;
}

void *boost::signals2::signal<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = off_1004C2AC0;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void TaskQueueWrapper::~TaskQueueWrapper(TaskQueueWrapper *this)
{
  std::mutex::~mutex((this + 24));
  if (*(this + 2))
  {
    v2 = *(this + 1);
    v3 = *(*this + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 2) = 0;
    if (v2 != this)
    {
      do
      {
        v5 = *(v2 + 1);
        v6 = *(v2 + 3);
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != this);
    }
  }
}

void RcpHostContext::signalNodeStatusChange(RcpHostContext *this)
{
  v2 = 16;
  strcpy(__p, "Network:NodeType");
  operator new();
}

void sub_1000C1380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C1538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 112));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void RcpHostContext::persistDefaultChildNode(RcpHostContext *this, int a2)
{
  if (a2)
  {
    v2 = "1";
  }

  else
  {
    v2 = "0";
  }

  saveStringValue("defaultChildNode", v2);
}

void RcpHostContext::persistGeoAvailable(RcpHostContext *this, int a2)
{
  if (a2)
  {
    v2 = "1";
  }

  else
  {
    v2 = "0";
  }

  saveStringValue("geo", v2);
}

__int128 *RcpHostContext::getDefaultChildNodeFlag(RcpHostContext *this)
{
  result = getStringValue("defaultChildNode");
  if (result)
  {
    return (atoi(result) == 1);
  }

  return result;
}

__int128 *RcpHostContext::getPersistedGeoAvailableFlag(RcpHostContext *this)
{
  result = getStringValue("geo");
  if (result)
  {
    return (atoi(result) == 1);
  }

  return result;
}

void RcpHostContext::persistWedSession(uint64_t a1, uint64_t a2, const char *a3)
{
  v3 = a3;
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_5;
    }

LABEL_7:
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v6 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a2;
        if (*(a2 + 23) < 0)
        {
          v7 = *a2;
        }

        v8 = v3;
        if (v3[23] < 0)
        {
          v8 = *v3;
        }

        v11 = 136315650;
        v12 = "persistWedSession";
        v13 = 2080;
        v14 = v7;
        v15 = 2080;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s wedAddr = %s wedmleid = %s", &v11, 0x20u);
      }

      goto LABEL_17;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

LABEL_16:
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    goto LABEL_17;
  }

  if (*(a2 + 23))
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((a3[23] & 0x8000000000000000) != 0)
  {
    if (*(a3 + 1))
    {
      goto LABEL_7;
    }
  }

  else if (a3[23])
  {
    goto LABEL_7;
  }

  v9 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v9)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = v9;
  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "wedAddr & wedmleid empty String", &v11, 2u);
  }

LABEL_17:
  if (*(a2 + 23) < 0)
  {
    saveStringValue("wedSession", *a2);
    if ((v3[23] & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v3 = *v3;
    goto LABEL_19;
  }

  saveStringValue("wedSession", a2);
  if (v3[23] < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  saveStringValue("wedSession_mleid", v3);
}

void RcpHostContext::getPersistedWedMleid(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  StringValue = getStringValue("wedSession_mleid");
  v4 = StringValue;
  if (StringValue)
  {
    v5 = *StringValue;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v7 = logging_obg;
    if (v5)
    {
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6))
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v8 = 136315394;
            v9 = "getPersistedWedMleid";
            v10 = 2080;
            v11 = v4;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s wedMleid = %s", &v8, 0x16u);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      }

      std::string::assign(a1, v4);
    }

    else if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "getPersistedWedMleid";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s wedMleid empty String", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }
}

void sub_1000C1A54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::getPersistedWedAddr(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  StringValue = getStringValue("wedSession");
  v4 = StringValue;
  if (StringValue)
  {
    v5 = *StringValue;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v7 = logging_obg;
    if (v5)
    {
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6))
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v8 = 136315394;
            v9 = "getPersistedWedAddr";
            v10 = 2080;
            v11 = v4;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s wedAddr = %s", &v8, 0x16u);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      }

      std::string::assign(a1, v4);
    }

    else if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "getPersistedWedAddr";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s wedAddr empty String", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }
}

void sub_1000C1C18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RcpHostContext::isWedSessionEnabled(RcpHostContext *this)
{
  result = getStringValue("wedSession");
  if (result)
  {
    v2 = result;
    v3 = *result;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v5 = logging_obg;
    if (!v3)
    {
      if (logging_obg)
      {
        result = syslog_is_the_mask_enabled(6);
        if (!result)
        {
          return result;
        }

        result = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        v7 = 136315138;
        v8 = "isWedSessionEnabled";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s wedAddr empty String", &v7, 0xCu);
      }

      else
      {
        result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      }

      return 0;
    }

    if (!logging_obg)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      }

      return 1;
    }

    if (!syslog_is_the_mask_enabled(6))
    {
      return 1;
    }

    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    result = 1;
    if (v6)
    {
      v7 = 136315394;
      v8 = "isWedSessionEnabled";
      v9 = 2080;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s wedAddr = %s", &v7, 0x16u);
      return 1;
    }
  }

  return result;
}

BOOL RcpHostContext::isStateMachineEnabled(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 497);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("Thread:StateMachine:Wed:Enabled", 1);
    *(this + 497) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::isAudioNoThreadFeatureEnabled(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 499);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("EnableAudioNoThreadFeature", 0);
    *(this + 499) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::isRegulatoryCertMode(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 500);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("RegulatoryCertMode", 0);
    *(this + 500) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::isThreadAlwaysOnFeatureEnabled(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 498);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("EnableThreadAlwaysOnFeature", 0);
    *(this + 498) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::isThreadCertEnabled(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 501);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("Thread:Cert:Enabled", 0);
    *(this + 501) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::isThreadDecoupledFromBluetooth(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 502);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("DecoupleThreadFromBluetooth", 0);
    *(this + 502) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::isThreadGeoEnabled(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 503);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("EnableThreadGeo", 0);
    *(this + 503) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::isThreadSessionEnabled(RcpHostContext *this)
{
  *v4 = 0;
  getStringValueLocal("threadSession", v4, 4);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Thread Start Session Status = %s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  return (*v4 ^ 0x4E4F | v4[2]) == 0;
}

BOOL RcpHostContext::isCoexLoadSimulationEnabled(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 504);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("EnableCoexLoadSimulation", 0);
    *(this + 504) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

BOOL RcpHostContext::iscoreDumpTXFailureEnabled(RcpHostContext *this)
{
  isFeatureEnabled = *(this + 505);
  if (isFeatureEnabled == 255)
  {
    isFeatureEnabled = getBoolValue_isFeatureEnabled("EnableCoreDumpTXFailure", 0);
    *(this + 505) = isFeatureEnabled;
  }

  return isFeatureEnabled == 1;
}

__int128 *RcpHostContext::ot_event_handler(RcpHostContext *this, uint64_t a2)
{
  v4 = *(this + 496);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v6 = logging_obg;
  if ((v4 & 1) == 0)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ot_event_handler: INITIALIZE", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    *(this + 496) = 1;
    operator new();
  }

  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ot_event_handler flags[0x%llx]", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  if ((a2 & 0x4000) != 0)
  {
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v7)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "EVENT::OT_CHANGED_THREAD_CHANNEL", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    *(&__str.__r_.__value_.__s + 23) = 11;
    strcpy(&__str, "NCP:Channel");
    operator new();
  }

  if ((a2 & 0x80) != 0)
  {
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "EVENT::OT_CHANGED_THREAD_PARTITION_ID", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    *(&v35.__r_.__value_.__s + 23) = 19;
    strcpy(&v35, "Network:PartitionId");
    operator new();
  }

  if ((a2 & 4) != 0)
  {
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v9)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "EVENT::OT_CHANGED_THREAD_ROLE", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    *(&v34.__r_.__value_.__s + 23) = 16;
    strcpy(&v34, "Network:NodeType");
    operator new();
  }

  if ((a2 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  std::mutex::lock((this + 408));
  nl::wpantund::ncp_state_to_string(*(this + 100), buf);
  std::mutex::unlock((this + 408));
  if ((v40 & 0x80000000) == 0)
  {
    if (v40 == 10)
    {
      v10 = buf;
      goto LABEL_45;
    }

LABEL_53:
    v14 = 0;
    if ((a2 & 4) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  if (*&buf[8] != 10)
  {
    goto LABEL_53;
  }

  v10 = *buf;
LABEL_45:
  v11 = *v10;
  v12 = *(v10 + 4);
  v14 = v11 == 0x746169636F737361 && v12 == 25701;
  if ((a2 & 4) != 0)
  {
LABEL_59:
    v16 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v16)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = buf;
        if (v40 < 0)
        {
          v17 = *buf;
        }

        *v37 = 136315138;
        *&v37[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "EVENT::OT_CHANGED_THREAD_NETDATA(state: %s)", v37, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    if (gSrpModeNetInfo)
    {
      *(&v32.__r_.__value_.__s + 23) = 18;
      strcpy(&v32, "Thread:NetworkData");
      operator new();
    }

    *(&v33.__r_.__value_.__s + 23) = 15;
    strcpy(&v33, "Thread:Services");
    operator new();
  }

LABEL_54:
  if (v14)
  {
    goto LABEL_59;
  }

  v15 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v15)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "EVENT::OT_CHANGED_THREAD_NETDATA(state: Not Associated)", v37, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  if ((v40 & 0x80000000) == 0)
  {
LABEL_73:
    if ((a2 & 0x10000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_81;
  }

  operator delete(*buf);
  if ((a2 & 0x10000000) != 0)
  {
LABEL_74:
    v18 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v18)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "EVENT::OT_CHANGED_ACTIVE_DATASET", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    operator new();
  }

LABEL_81:
  if ((a2 & 0x20000000) != 0)
  {
    v19 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v19)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "EVENT::OT_CHANGED_PENDING_DATASET", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    operator new();
  }

  result = getStringValue("threadSession");
  if (result && *result == 79 && *(result + 1) == 78 && !*(result + 2))
  {
    result = *(this + 497);
    if (result == 255)
    {
      result = getBoolValue_isFeatureEnabled("Thread:StateMachine:Wed:Enabled", 1);
      *(this + 497) = result;
    }

    if (result == 1)
    {
      if ((a2 & 0x800000000) != 0)
      {
        v21 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v21)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_PERIPHERAL_SLEEPY_DEVICE_TYPE", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        v40 = 20;
        strcpy(buf, "PeripheralDeviceType");
        operator new();
      }

      if ((a2 & 0x1000000000) != 0)
      {
        v22 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v22)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_PERIPHERAL_NON_SLEEPY_DEVICE_TYPE", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        v40 = 20;
        strcpy(buf, "PeripheralDeviceType");
        operator new();
      }

      if ((a2 & 0x400) != 0)
      {
        v23 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v23)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_THREAD_CHILD_ADDED", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        operator new();
      }

      if ((a2 & 0x800) != 0)
      {
        v24 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v24)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_THREAD_CHILD_REMOVED", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        operator new();
      }

      if ((a2 & 0x2000000000) != 0)
      {
        v25 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v25)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_PERIPHERAL_WAKEUP_MAX_RETRY_ATTEMPTS_EXCEEDED", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        operator new();
      }

      if ((a2 & 0x400000000) != 0)
      {
        std::mutex::lock((this + 408));
        nl::wpantund::ncp_state_to_string(*(this + 100), buf);
        std::mutex::unlock((this + 408));
        v26 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v26)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = buf;
            if (v40 < 0)
            {
              v27 = *buf;
            }

            *v37 = 136315138;
            *&v37[4] = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_RECEIVED_ADV(state: %s)", v37, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        v38 = 11;
        strcpy(v37, "ReceivedAdv");
        operator new();
      }

      if ((a2 & 0x200000000) != 0)
      {
        std::mutex::lock((this + 408));
        nl::wpantund::ncp_state_to_string(*(this + 100), buf);
        std::mutex::unlock((this + 408));
        v28 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v28)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = buf;
            if (v40 < 0)
            {
              v29 = *buf;
            }

            *v37 = 136315138;
            *&v37[4] = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_ATTACH_ATTEMPT_FAIL(state: %s)", v37, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        operator new();
      }

      if ((a2 & 0x100000000) != 0)
      {
        std::mutex::lock((this + 408));
        nl::wpantund::ncp_state_to_string(*(this + 100), buf);
        std::mutex::unlock((this + 408));
        v30 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v30)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = buf;
            if (v40 < 0)
            {
              v31 = *buf;
            }

            *v37 = 136315138;
            *&v37[4] = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "ThreadConnection: EVENT::OT_CHANGED_ATTACH_ATTEMPT_SUCCESS(state: %s)", v37, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        operator new();
      }
    }
  }

  return result;
}

void sub_1000C3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C3D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C3F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void RcpHostContext::get_rcp_state(RcpHostContext *this@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((this + 408));
  nl::wpantund::ncp_state_to_string(*(this + 100), a2);

  std::mutex::unlock((this + 408));
}

void sub_1000C4164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 112));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

uint64_t RcpHostContext::otctl_OutputFormatV(RcpHostContext *this, const char *__format, va_list a3)
{
  __str[1600] = 0;
  v4 = vsnprintf(__str, 0x640uLL, __format, a3);
  v5 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    v8 = __error();
    v9 = strerror(*v8);
    otLogCritPlat("Failed to format CLI output: %s", v10, v11, v12, v13, v14, v15, v16, v9);
    return v5;
  }

  if (v4 + *(this + 2813) >= 0x1401)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v7 = logging_obg;
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        RcpHostContext::otctl_OutputFormatV(this + 2813);
        if (!v5)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = 0;
  do
  {
    v18 = __str[v17];
    v19 = *(this + 2813);
    *(this + 2813) = v19 + 1;
    *(this + v19 + 506) = v18;
    ++v17;
  }

  while (v5 > v17);
LABEL_13:
  if (*(this + 2813) > 0xBB8u)
  {
    v20 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v20)
    {
      v21 = v20;
      if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        RcpHostContext::otctl_OutputFormatV(this + 2813);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }

  return v5;
}

void RcpHostContext::OtctlOutputSend(RcpHostContext *this)
{
  v2 = this + 506;
  v3 = *(this + 2813);
  *(this + 2813) = v3 + 1;
  *(this + v3 + 506) = 0;
  v4 = strlen(this + 506);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v7 = v4;
  if (v4)
  {
    memcpy(&__dst, v2, v4);
  }

  *(&__dst + v5) = 0;
  boost::signals2::detail::signal_impl<void ()(std::string const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&)>,boost::signals2::mutex>::operator()(*(this + 47), &__dst);
  memset(v2, 255, *(this + 2813));
  *(this + 2813) = 0;
  if (v7 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1000C44A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::get_rcp_role(RcpHostContext *this@<X0>, std::string *a2@<X8>)
{
  std::mutex::lock((this + 408));
  if (*(this + 495) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 59), *(this + 60));
    v4 = (this + 408);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 472);
    a2->__r_.__value_.__r.__words[2] = *(this + 61);
    v4 = (this + 408);
  }

  std::mutex::unlock(v4);
}

void RcpHostContext::update_rcp_role(uint64_t a1, const std::string *a2)
{
  std::mutex::lock((a1 + 408));
  std::string::operator=((a1 + 472), a2);

  std::mutex::unlock((a1 + 408));
}

void RcpHostContext::trigger_leader_override(RcpHostContext *this)
{
  *(&__str.__r_.__value_.__s + 23) = 14;
  strcpy(&__str, "LeaderOverride");
  operator new();
}

void sub_1000C4698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::getRcpSettingsParams(RcpHostContext *this, signed __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, BOOL *a5, unsigned int *a6, unsigned int *a7, BOOL *a8, BOOL *a9, signed __int8 *a10, signed __int8 *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int8 *a15, unsigned __int8 *a16)
{
  v17 = 11;
  strcpy(buf, "NCP:TXPower");
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
  operator new();
}

BOOL RcpHostContext::getIsPrimaryResident(RcpHostContext *this)
{
  v7 = 19;
  strcpy(__p, "is_primary_resident");
  v8 = __p;
  v1 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  v2 = (v1 + 7);
  v3 = *(v1 + 79);
  if (v3 < 0)
  {
    if (v1[8] == 1)
    {
      v4 = **v2 == 49;
      if ((v7 & 0x80000000) == 0)
      {
        return v4;
      }

      goto LABEL_9;
    }

LABEL_8:
    v4 = 0;
    if ((v7 & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_9;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = *v2 == 49;
  if ((v7 & 0x80000000) == 0)
  {
    return v4;
  }

LABEL_9:
  operator delete(*__p);
  return v4;
}

void sub_1000C60F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C6220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::getRcpStateDump(RcpHostContext *this)
{
  v2 = 21;
  strcpy(__p, "vendor:ncp:state:dump");
  operator new();
}

void sub_1000C6314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::update_rcp_state(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 408));
  if ((a2 - 2) < 3)
  {
    v4 = 8;
    if (*(a1 + 400) == 8)
    {
      goto LABEL_20;
    }

LABEL_11:
    *(a1 + 400) = v4;
    nl::wpantund::ncp_state_to_string(v4, __p);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        v6 = __p;
        if (v8 < 0)
        {
          v6 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "New RCP state:: %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    buf[23] = 9;
    strcpy(buf, "NCP:State");
    operator new();
  }

  if (a2 == 1)
  {
    *(a1 + 5973) = 0;
    v4 = 6;
    if (*(a1 + 400) == 6)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
    *(a1 + 5973) = 0;
    v4 = 4;
    if (*(a1 + 400) == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v4 = 1;
  if (*(a1 + 400) != 1)
  {
    goto LABEL_11;
  }

LABEL_20:
  std::mutex::unlock((a1 + 408));
}

void RcpHostContext::reportThreadServicesToClient(RcpHostContext *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(this + 100);
      *buf = 136315394;
      *&buf[4] = "reportThreadServicesToClient";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  nl::wpantund::ncp_state_to_string(*(this + 100), buf);
  if ((v18 & 0x80000000) == 0)
  {
    if (v18 != 10)
    {
      goto LABEL_32;
    }

    if (*buf != 0x746169636F737361 || *&buf[8] != 25701)
    {
      goto LABEL_32;
    }

LABEL_23:
    *(this + 5973) = 257;
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        nl::wpantund::ncp_state_to_string(*(this + 100), buf);
        v9 = v18 >= 0 ? buf : *buf;
        *v13 = 136315394;
        v14 = "reportThreadServicesToClient";
        v15 = 2080;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %s: Notify thread services & IPV6 routes to SRP client", v13, 0x16u);
        if (v18 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    *(&__str.__r_.__value_.__s + 23) = 15;
    strcpy(&__str, "Thread:Services");
    operator new();
  }

  if (*&buf[8] != 10)
  {
    operator delete(*buf);
    goto LABEL_32;
  }

  v7 = **buf != 0x746169636F737361 || *(*buf + 8) != 25701;
  operator delete(*buf);
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_32:
  v10 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v10)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      nl::wpantund::ncp_state_to_string(*(this + 100), buf);
      if (v18 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      *v13 = 136315394;
      v14 = "reportThreadServicesToClient";
      v15 = 2080;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %s(state: Not Associated)", v13, 0x16u);
      if (v18 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

void sub_1000C6AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::report_threadstart_metrics(uint64_t a1, int a2)
{
  v2 = a1 + 4096;
  if (*(a1 + 5976))
  {
    v5 = (a1 + 5976);
    v6 = gettimeofday(&v25, &v24);
    tv_sec = v25.tv_sec;
    tv_usec = v25.tv_usec;
    v9 = 274877907 * (v25.tv_usec - *(a1 + 6008));
    *(a1 + 6032) = (v9 >> 38) + (v9 >> 63) + 1000 * (LODWORD(v25.tv_sec) - *(a1 + 6000));
    v10 = tv_sec - *(a1 + 5984);
    v11 = 274877907 * (tv_usec - *(a1 + 5992));
    *(a1 + 6036) = (v11 >> 38) + (v11 >> 63) + 1000 * v10;
    switch(a2)
    {
      case 4:
        *(v2 + 1947) = 1;
        break;
      case 3:
        *(v2 + 1948) = 1;
        break;
      case 2:
        *(v2 + 1949) = 1;
        break;
    }

    RcpHostContext::print_threadstart_metrics(v6, v2 + 1880);
    v19 = _NSConcreteStackBlock;
    v20 = 0x40000000;
    v21 = ___ZN14RcpHostContext26report_threadstart_metricsE12otDeviceRole_block_invoke;
    v22 = &__block_descriptor_tmp_1;
    v23 = a1;
    analytics_send_event_lazy();
    v16 = *v5;
    *(a1 + 6064) = *(v2 + 1896);
    v17 = *(v2 + 1928);
    *(a1 + 6080) = *(v2 + 1912);
    *(a1 + 6096) = v17;
    *(a1 + 6112) = *(v2 + 1944);
    *(a1 + 6048) = v16;
    RcpHostContext::clear_threadstart_metrics(a1);
    logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      v14 = "Triggered flagstoneThreadStartMetrics";
      v15 = &v18;
      goto LABEL_14;
    }
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12)
    {
      logging_obg = v12;
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25.tv_sec) = 0;
        v14 = "report_threadstart_metrics NOT IN PROGRESS";
        v15 = &v25;
LABEL_14:
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, v14, v15, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }
}

void RcpHostContext::print_threadstart_metrics(uint64_t a1, uint64_t a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a2 + 48);
        v6 = *(a2 + 52);
        v7 = *(a2 + 56);
        v8 = *(a2 + 60);
        v9 = *(a2 + 64);
        v10 = *(a2 + 65);
        v11 = *(a2 + 66);
        v12 = *(a2 + 69);
        v13 = *(a2 + 68);
        v14 = *(a2 + 67);
        v15[0] = 67111424;
        v15[1] = v5;
        v16 = 1024;
        v17 = v6;
        v18 = 1024;
        v19 = v7;
        v20 = 1024;
        v21 = v8;
        v22 = 1024;
        v23 = v9;
        v24 = 1024;
        v25 = v10;
        v26 = 1024;
        v27 = v11;
        v28 = 1024;
        v29 = v12;
        v30 = 1024;
        v31 = v13;
        v32 = 1024;
        v33 = v14;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "print_threadstart_metrics: pf_time[%u] ts_time[%u] radio_time[%u] total_time_ms[%u] pref_nw_found[%d] attach_with_uuid[%d] new_network[%d] E[%d] R[%d] L[%d]", v15, 0x3Eu);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

xpc_object_t ___ZN14RcpHostContext26report_threadstart_metricsE12otDeviceRole_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "total_time_ms", *(v1 + 6036));
  xpc_dictionary_set_uint64(empty, "threadstart_api_time_ms", *(v1 + 6028));
  xpc_dictionary_set_uint64(empty, "pref_nw_get_time_ms", *(v1 + 6024));
  xpc_dictionary_set_uint64(empty, "radio_start_time_ms", *(v1 + 6032));
  xpc_dictionary_set_BOOL(empty, "is_pref_nw_start", *(v1 + 6040));
  xpc_dictionary_set_BOOL(empty, "is_uuid_nw_start", *(v1 + 6041));
  xpc_dictionary_set_BOOL(empty, "is_form_new_nw_start", *(v1 + 6042));
  return empty;
}

double RcpHostContext::clear_threadstart_metrics(RcpHostContext *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "clear_threadstart_metrics", v5, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  *(this + 5976) = 0;
  result = 0.0;
  *(this + 6024) = 0u;
  *(this + 6038) = 0;
  return result;
}

void RcpHostContext::init_threadstart_metrics(RcpHostContext *this)
{
  if (*(this + 5976) == 1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v2 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        v3 = "init_threadstart_metrics  IN PROGRESS";
        v4 = v2;
        v5 = 2;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v3, &v11, v5);
        return;
      }

      return;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_14:
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    return;
  }

  RcpHostContext::clear_threadstart_metrics(this);
  *(this + 5976) = 1;
  gettimeofday(this + 374, this + 6016);
  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v7)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_14;
  }

  v8 = v7;
  if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(this + 748);
    v10 = *(this + 1498);
    v11 = 134218240;
    v12 = v9;
    v13 = 1024;
    v14 = v10;
    v3 = "init_threadstart_metrics StartTime[%ld]s[%d]us";
    v4 = v8;
    v5 = 18;
    goto LABEL_10;
  }
}

void RcpHostContext::init_threadstart_radio_start(timeval *this)
{
  if (LOBYTE(this[373].tv_usec) == 1)
  {
    gettimeofday(this + 375, &this[376]);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          tv_sec = this[375].tv_sec;
          tv_usec = this[375].tv_usec;
          v6 = 134218240;
          v7 = tv_sec;
          v8 = 1024;
          v9 = tv_usec;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "threadstart_metrics radio_start[%ld]s[%d]us", &v6, 0x12u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }
}

void RcpHostContext::update_threadstart_metrics(RcpHostContext *this, timeval a2, timeval a3, int a4, int a5)
{
  *(this + 6040) = a4;
  *(this + 6041) = a5;
  if ((a4 & 1) == 0 && (a5 & 1) == 0)
  {
    *(this + 6042) = 1;
  }

  v8 = *(this + 1496);
  v9 = *(this + 1498);
  *(this + 1506) = (a2.tv_usec - v9) / 1000 + 1000 * (LODWORD(a2.tv_sec) - v8);
  *(this + 1507) = (a3.tv_usec - v9) / 1000 + 1000 * (LODWORD(a3.tv_sec) - v8);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v11 = logging_obg;
    if (syslog_is_the_mask_enabled(5))
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(this + 1506);
        v13 = *(this + 1507);
        v14[0] = 67109888;
        v14[1] = a4;
        v15 = 1024;
        v16 = a5;
        v17 = 1024;
        v18 = v12;
        v19 = 1024;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "update_threadstart_metrics: preferredFound[%d] attachWithUuid[%d] check_pref_join_time_ms[%u]  total_ts_time_ms[%u]", v14, 0x1Au);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

void RcpHostContext::GetThreadStartMetrics(uint64_t a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      RcpHostContext::GetThreadStartMetrics(a1);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  snprintf(__str, 0xC8uLL, "%-35s = %u ms", "total_time_ms", *(a1 + 6108));
  v4 = strlen(__str);
  if (v4 <= 0x7FFFFFFFFFFFFFF7)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      v7 = v4;
      if (v4)
      {
        memcpy(&__dst, __str, v4);
      }

      *(&__dst + v5) = 0;
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

{
  v1 = *(a1 + 6108);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_3(&_mh_execute_header, v2, v3, "%s: %u ms", v4, v5, v6, v7, 2u);
}

{
  v1 = *(a1 + 6100);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_3(&_mh_execute_header, v2, v3, "%s: %u ms", v4, v5, v6, v7, 2u);
}

{
  v1 = *(a1 + 6104);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_3(&_mh_execute_header, v2, v3, "%s: %u ms", v4, v5, v6, v7, 2u);
}

{
  v1 = *(a1 + 6096);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_3(&_mh_execute_header, v2, v3, "%s: %u ms", v4, v5, v6, v7, 2u);
}

{
  v1 = *(a1 + 6112);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_3(&_mh_execute_header, v2, v3, "%s: %d", v4, v5, v6, v7, 2u);
}

{
  v1 = *(a1 + 6113);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_3(&_mh_execute_header, v2, v3, "%s: %d", v4, v5, v6, v7, 2u);
}

{
  v1 = *(a1 + 6114);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_3(&_mh_execute_header, v2, v3, "%s: %d", v4, v5, v6, v7, 2u);
}

void sub_1000C7E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL RcpHostContext::is_device_state_valid_for_service_or_route_modification(RcpHostContext *this)
{
  std::mutex::lock((this + 408));
  v2 = *(this + 100);
  if (v2 == 8)
  {
    goto LABEL_10;
  }

  nl::wpantund::ncp_state_to_string(*(this + 100), __p);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      RcpHostContext::is_device_state_valid_for_service_or_route_modification(__p);
      if (v6 < 0)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6 < 0)
  {
LABEL_9:
    operator delete(__p[0]);
  }

LABEL_10:
  std::mutex::unlock((this + 408));
  return v2 == 8;
}

void sub_1000C7FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 408));
  _Unwind_Resume(a1);
}

void RcpHostContext::reportThreadNetworkDataToClient(RcpHostContext *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(this + 100);
      *buf = 136315394;
      *&buf[4] = "reportThreadNetworkDataToClient";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  nl::wpantund::ncp_state_to_string(*(this + 100), buf);
  if (v19 < 0)
  {
    if (*&buf[8] != 10)
    {
      operator delete(*buf);
      goto LABEL_33;
    }

    v7 = **buf != 0x746169636F737361 || *(*buf + 8) != 25701;
    operator delete(*buf);
    if (v7)
    {
LABEL_33:
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          nl::wpantund::ncp_state_to_string(*(this + 100), buf);
          if (v19 >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          *v14 = 136315394;
          v15 = "reportThreadNetworkDataToClient";
          v16 = 2080;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %s(state: Not Associated)", v14, 0x16u);
          if (v19 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      }

      return;
    }
  }

  else
  {
    if (v19 != 10)
    {
      goto LABEL_33;
    }

    if (*buf != 0x746169636F737361 || *&buf[8] != 25701)
    {
      goto LABEL_33;
    }
  }

  if (gSrpModeNetInfo == 1)
  {
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        nl::wpantund::ncp_state_to_string(*(this + 100), buf);
        v9 = v19 >= 0 ? buf : *buf;
        *v14 = 136315394;
        v15 = "reportThreadNetworkDataToClient";
        v16 = 2080;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %s: Notify thread network data to SRP client", v14, 0x16u);
        if (v19 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    v13 = 18;
    strcpy(__p, "Thread:NetworkData");
    operator new();
  }
}

void sub_1000C83CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::reportWakeOnDeviceConnectionStatusToClient(RcpHostContext *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(this + 100);
      *buf = 136315394;
      *&buf[4] = "reportWakeOnDeviceConnectionStatusToClient";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  nl::wpantund::ncp_state_to_string(*(this + 100), buf);
  if ((v18 & 0x80000000) == 0)
  {
    if (v18 != 10)
    {
      goto LABEL_32;
    }

    if (*buf != 0x746169636F737361 || *&buf[8] != 25701)
    {
      goto LABEL_32;
    }

LABEL_23:
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        nl::wpantund::ncp_state_to_string(*(this + 100), buf);
        v9 = v18 >= 0 ? buf : *buf;
        *v13 = 136315394;
        v14 = "reportWakeOnDeviceConnectionStatusToClient";
        v15 = 2080;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %s: Notify WakeOnDeviceConnectionStatus to SRP client", v13, 0x16u);
        if (v18 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    *(&__str.__r_.__value_.__s + 23) = 12;
    strcpy(&__str, "NCP:WedMleId");
    operator new();
  }

  if (*&buf[8] != 10)
  {
    operator delete(*buf);
    goto LABEL_32;
  }

  v7 = **buf != 0x746169636F737361 || *(*buf + 8) != 25701;
  operator delete(*buf);
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_32:
  v10 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v10)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      nl::wpantund::ncp_state_to_string(*(this + 100), buf);
      if (v18 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      *v13 = 136315394;
      v14 = "reportWakeOnDeviceConnectionStatusToClient";
      v15 = 2080;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %s(state: Not Associated)", v13, 0x16u);
      if (v18 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

void sub_1000C87B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::reportThreadNeighborMeshLocalAddressToClient(RcpHostContext *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(this + 100);
      *buf = 136315394;
      *&buf[4] = "reportThreadNeighborMeshLocalAddressToClient";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  nl::wpantund::ncp_state_to_string(*(this + 100), buf);
  if ((v17 & 0x80000000) == 0)
  {
    if (v17 != 10)
    {
      goto LABEL_32;
    }

    if (*buf != 0x746169636F737361 || *&buf[8] != 25701)
    {
      goto LABEL_32;
    }

LABEL_23:
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        nl::wpantund::ncp_state_to_string(*(this + 100), buf);
        v9 = v17 >= 0 ? buf : *buf;
        *v12 = 136315394;
        v13 = "reportThreadNeighborMeshLocalAddressToClient";
        v14 = 2080;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %s: Notify ThreadNeighborMeshLocalAddress to SRP client", v12, 0x16u);
        if (v17 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    operator new();
  }

  if (*&buf[8] != 10)
  {
    operator delete(*buf);
    goto LABEL_32;
  }

  v7 = **buf != 0x746169636F737361 || *(*buf + 8) != 25701;
  operator delete(*buf);
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_32:
  v10 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v10)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      nl::wpantund::ncp_state_to_string(*(this + 100), buf);
      if (v17 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      *v12 = 136315394;
      v13 = "reportThreadNeighborMeshLocalAddressToClient";
      v14 = 2080;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %s(state: Not Associated)", v12, 0x16u);
      if (v17 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

void sub_1000C8BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void RcpHostContext::init_clients(void **this)
{
  startThreadNetworkManager();
  AWDMetricsClient_Initialize();
  startGeoServicesHandler(this[49]);
}

void sub_1000C8DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C8F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C9140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C92F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C94A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C965C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C9810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C99C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C9B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C9D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C9EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CA094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CA248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CA3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CA5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CA764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CA918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CAACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CAC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CAE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CAFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CB19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CB350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CB504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CB6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CB874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CBA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CBBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CBD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CBF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CC0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CC2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 24));
  boost::shared_ptr<void>::~shared_ptr(&a9);
  _Unwind_Resume(a1);
}

void RcpHostContext::handle_rcp_reset(RcpHostContext *this, int a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      RcpHostContext::handle_rcp_reset();
      if ((a2 - 115) > 2)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_7:
    if ((a2 - 115) > 2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  if ((a2 - 115) > 2)
  {
    return;
  }

LABEL_8:
  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v5)
  {
    v6 = v5;
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "RCP crash detected on reset. Get crash dump info", v7, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

void RcpHostContext::handle_hard_reset(RcpHostContext *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      v3 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v3)
      {
        goto LABEL_13;
      }

LABEL_8:
      v4 = v3;
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Trigger RCP2 FLR from RecoverFromRcpFailure", v5, 2u);
        }
      }

      goto LABEL_11;
    }

LABEL_7:
    v3 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v3)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v2 = logging_obg;
  if (!syslog_is_the_mask_enabled(3) || !os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  RcpHostContext::handle_hard_reset();
  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    CoreBTtriggerFLR();
    return;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  CoreBTtriggerFLR();
}

void RcpHostContext::captureABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  memset(&v23, 0, sizeof(v23));
  v12 = RcpHostContext::sRcpHostContext;
  if (*(RcpHostContext::sRcpHostContext + 5679) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(RcpHostContext::sRcpHostContext + 5656), *(RcpHostContext::sRcpHostContext + 5664));
    v12 = RcpHostContext::sRcpHostContext;
    if ((*(RcpHostContext::sRcpHostContext + 5727) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = *(RcpHostContext::sRcpHostContext + 5656);
    if ((*(RcpHostContext::sRcpHostContext + 5727) & 0x80000000) == 0)
    {
LABEL_3:
      v21 = *(v12 + 5704);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v21, *(v12 + 5704), *(v12 + 5712));
LABEL_6:
  if (a6)
  {
    std::mutex::lock((a1 + 408));
    nl::wpantund::ncp_state_to_string(*(a1 + 400), &v20);
    std::mutex::unlock((a1 + 408));
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v23 = v20;
  }

  else
  {
    std::string::assign(&v23, "ABSENT");
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      RcpHostContext::captureABC(&v23);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_20;
      }

LABEL_18:
      v19 = v23;
      goto LABEL_21;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  std::string::__init_copy_ctor_external(&v19, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
LABEL_21:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v21;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v22;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
  }

  else
  {
    v16 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a3, *(a3 + 8));
  }

  else
  {
    v15 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  AWDMetricsClient_TriggerAutoBugCaptures_internal(&v19, &v18, &v17, &v16, &v15, &__p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_39:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

LABEL_49:
  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_41:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

LABEL_50:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_42:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_54:
    operator delete(v23.__r_.__value_.__l.__data_);
    return;
  }

LABEL_53:
  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }
}

void sub_1000CC8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a30);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a49 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a37);
  if ((a49 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v49 - 137) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a44);
  if ((*(v49 - 137) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v49 - 105) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v49 - 160));
  if ((*(v49 - 105) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v49 - 73) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v49 - 128));
  if ((*(v49 - 73) & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  operator delete(*(v49 - 96));
  _Unwind_Resume(exception_object);
}