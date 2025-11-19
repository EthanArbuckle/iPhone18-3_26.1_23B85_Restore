void sub_100109414(_Unwind_Exception *a1)
{
  xpc::dict::~dict(v2);
  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE48c23_ZTSKN3xpc10connectionE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
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

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void __copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c23_ZTSKN3xpc10connectionE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    xpc_retain(v4);
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 48);
      a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
      *&a1[2].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  else
  {
    a1[1].__r_.__value_.__r.__words[2] = xpc_null_create();
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
LABEL_6:
  v6 = *(a2 + 72);
  a1[3].__r_.__value_.__r.__words[0] = v6;
  if (!v6)
  {
    a1[3].__r_.__value_.__r.__words[0] = xpc_null_create();
    v7 = *(a2 + 80);
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  xpc_retain(v6);
  v7 = *(a2 + 80);
  if (v7)
  {
LABEL_10:
    v7 = _Block_copy(v7);
  }

LABEL_11:
  v8 = *(a2 + 88);
  a1[3].__r_.__value_.__l.__size_ = v7;
  a1[3].__r_.__value_.__r.__words[2] = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c23_ZTSKN3xpc10connectionE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
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

  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void *std::__tree<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,CtrXPC::ServerClientState>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 48);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  xpc_release(*(a2 + 32));
  operator delete(a2);
  return v4;
}

void std::__tree<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,CtrXPC::ServerClientState>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,CtrXPC::ServerClientState>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,CtrXPC::ServerClientState>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    xpc_release(a2[4]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a2 + 7);
    if (v5)
    {
      _Block_release(v5);
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

uint64_t std::__shared_ptr_pointer<CtrXPC::Server *,std::shared_ptr<CtrXPC::Server>::__shared_ptr_default_delete<CtrXPC::Server,CtrXPC::Server>,std::allocator<CtrXPC::Server>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v2 = *(result + 8);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CtrXPC::Server *,std::shared_ptr<CtrXPC::Server>::__shared_ptr_default_delete<CtrXPC::Server,CtrXPC::Server>,std::allocator<CtrXPC::Server>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001004474D1)
  {
    if (((v2 & 0x80000001004474D1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001004474D1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004474D1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<CtrXPC::Server>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t sendUserBTNotification()
{
  result = RcpHostContext::sRcpHostContext;
  if (RcpHostContext::sRcpHostContext)
  {
    result = RcpHostContext::isThreadDecoupledFromBluetooth(RcpHostContext::sRcpHostContext);
    if ((result & 1) == 0)
    {
      operator new();
    }
  }

  return result;
}

BOOL checkBluetoothStateAndNotifyUser(void)
{
  if (RcpHostContext::isThreadDecoupledFromBluetooth(RcpHostContext::sRcpHostContext))
  {
    return 1;
  }

  CoreBTState = getCoreBTState();
  v1 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = "OFF";
    v5 = "BOOL checkBluetoothStateAndNotifyUser()";
    v4 = 136315650;
    if (CoreBTState)
    {
      v2 = "ON";
    }

    v6 = 1024;
    v7 = 36;
    v8 = 2080;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s%d:bluetooth is %s", &v4, 0x1Cu);
  }

  return CoreBTState;
}

void _GLOBAL__sub_I_BTNotificationHelper_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void append_complex_to_xpc_object_by_value_type(void *a1, any *a2)
{
  if (a2->var0)
  {
    v4 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  v5 = v4[1];
  if (v5 == 0x8000000100444031 || ((v5 & 0x8000000100444031 & 0x8000000000000000) != 0) != __OFSUB__(v5, 0x8000000100444031) && !strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100444031 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    if (a2->var0)
    {
      v6 = (*(*a2->var0 + 16))(a2->var0);
    }

    else
    {
    }

    v8 = (v6[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v8 != (0x8000000100444031 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v8, (0x8000000100444031 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v60.__vftable = 0;
      std::bad_cast::bad_cast(&v60);
      v60.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    std::list<std::string>::list(&__p, a2->var0 + 8);
    xpc_dictionary_set_uint64(a1, "v_type", 0xDuLL);
    v9 = xpc_array_create(0, 0);
    for (i = v58; i != &__p; i = *(i + 1))
    {
      v11 = i + 16;
      if (i[39] < 0)
      {
        v11 = *v11;
      }

      xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, v11);
    }

    xpc_dictionary_set_value(a1, "value", v9);
    xpc_release(v9);
    if (v59)
    {
      v12 = v58;
      v13 = *(__p + 1);
      v14 = *v58;
      *(v14 + 8) = v13;
      *v13 = v14;
      v59 = 0;
      if (v12 != &__p)
      {
        do
        {
          v15 = *(v12 + 1);
          if (v12[39] < 0)
          {
            v16 = v12;
            operator delete(*(v12 + 2));
            v12 = v16;
          }

          operator delete(v12);
          v12 = v15;
        }

        while (v15 != &__p);
      }
    }
  }

  else
  {
    if (a2->var0)
    {
      v7 = (*(*a2->var0 + 16))(a2->var0);
    }

    else
    {
    }

    v17 = v7[1];
    if (v17 == 0x8000000100444085 || ((v17 & 0x8000000100444085 & 0x8000000000000000) != 0) != __OFSUB__(v17, 0x8000000100444085) && !strcmp((v17 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100444085 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      boost::any_cast<std::set<std::string>>(a2, &__p);
      xpc_dictionary_set_uint64(a1, "v_type", 0xDuLL);
      v18 = xpc_array_create(0, 0);
      v19 = __p;
      if (__p != &v58)
      {
        do
        {
          v20 = v19 + 32;
          if (v19[55] < 0)
          {
            v20 = *v20;
          }

          xpc_array_set_string(v18, 0xFFFFFFFFFFFFFFFFLL, v20);
          v21 = *(v19 + 1);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = *(v19 + 2);
              v23 = *v22 == v19;
              v19 = v22;
            }

            while (!v23);
          }

          v19 = v22;
        }

        while (v22 != &v58);
      }

      xpc_dictionary_set_value(a1, "value", v18);
      xpc_release(v18);
      std::__tree<std::string>::destroy(&__p, v58);
    }

    else
    {
      if (a2->var0)
      {
        v24 = (*(*a2->var0 + 16))(a2->var0);
      }

      else
      {
      }

      v25 = v24[1];
      if (v25 == 0x8000000100447D88 || ((v25 & 0x8000000100447D88 & 0x8000000000000000) != 0) != __OFSUB__(v25, 0x8000000100447D88) && !strcmp((v25 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        boost::any_cast<nl::Data>(a2, &__p);
        xpc_dictionary_set_uint64(a1, "v_type", 0xEuLL);
        v26 = xpc_array_create(0, 0);
        v27 = __p;
        if (__p != v58)
        {
          do
          {
            xpc_array_set_uint64(v26, 0xFFFFFFFFFFFFFFFFLL, *v27);
            v27 = (v27 + 1);
          }

          while (v27 != v58);
        }
      }

      else
      {
        if (a2->var0)
        {
          v28 = (*(*a2->var0 + 16))(a2->var0);
        }

        else
        {
        }

        v29 = v28[1];
        if (v29 != 0x80000001004440E6 && (((v29 & 0x80000001004440E6 & 0x8000000000000000) != 0) == __OFSUB__(v29, 0x80000001004440E6) || strcmp((v29 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004440E6 & 0x7FFFFFFFFFFFFFFFLL))))
        {
          if (a2->var0)
          {
            v31 = (*(*a2->var0 + 16))(a2->var0);
          }

          else
          {
          }

          v32 = v31[1];
          if (v32 == 0x800000010044410ALL || ((v32 & 0x800000010044410ALL & 0x8000000000000000) != 0) != __OFSUB__(v32, 0x800000010044410ALL) && !strcmp((v32 & 0x7FFFFFFFFFFFFFFFLL), (0x800000010044410ALL & 0x7FFFFFFFFFFFFFFFLL)))
          {
            boost::any_cast<std::set<int>>(a2, &__p);
            xpc_dictionary_set_uint64(a1, "v_type", 0xFuLL);
            v33 = xpc_array_create(0, 0);
            v34 = __p;
            if (__p != &v58)
            {
              do
              {
                xpc_array_set_int64(v33, 0xFFFFFFFFFFFFFFFFLL, *(v34 + 7));
                v35 = *(v34 + 1);
                if (v35)
                {
                  do
                  {
                    v36 = v35;
                    v35 = *v35;
                  }

                  while (v35);
                }

                else
                {
                  do
                  {
                    v36 = *(v34 + 2);
                    v23 = *v36 == v34;
                    v34 = v36;
                  }

                  while (!v23);
                }

                v34 = v36;
              }

              while (v36 != &v58);
            }

            xpc_dictionary_set_value(a1, "value", v33);
            xpc_release(v33);
            std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&__p, v58);
          }

          else
          {
            if (a2->var0)
            {
              v37 = (*(*a2->var0 + 16))(a2->var0);
            }

            else
            {
            }

            v38 = v37[1];
            if (v38 == 0x8000000100444137 || ((v38 & 0x8000000100444137 & 0x8000000000000000) != 0) != __OFSUB__(v38, 0x8000000100444137) && !strcmp((v38 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL)))
            {
              v39 = boost::any_cast<std::map<std::string,boost::any> const&>(a2);
              std::map<std::string,boost::any>::map[abi:ne200100](&__p, v39);
              if (xpc_get_type(a1) == &_xpc_type_dictionary)
              {
                xpc_dictionary_set_uint64(a1, "v_type", 0xCuLL);
                v47 = xpc_array_create(0, 0);
                v48 = __p;
                if (__p != &v58)
                {
                  do
                  {
                    v49 = v48 + 32;
                    if (v48[55] < 0)
                    {
                      v49 = *v49;
                    }

                    v50 = xpc_dictionary_create(0, 0, 0);
                    xpc_dictionary_set_string(v50, "key", v49);
                    if (is_value_basic_type(v48 + 7))
                    {
                      append_basic_to_xpc_object_by_value_type(v50, v48 + 7);
                    }

                    else
                    {
                      append_complex_to_xpc_object_by_value_type(v50, v48 + 7);
                    }

                    xpc_array_append_value(v47, v50);
                    xpc_release(v50);
                    v51 = *(v48 + 1);
                    if (v51)
                    {
                      do
                      {
                        v52 = v51;
                        v51 = *v51;
                      }

                      while (v51);
                    }

                    else
                    {
                      do
                      {
                        v52 = *(v48 + 2);
                        v23 = *v52 == v48;
                        v48 = v52;
                      }

                      while (!v23);
                    }

                    v48 = v52;
                  }

                  while (v52 != &v58);
                }

                xpc_dictionary_set_value(a1, "value", v47);
                xpc_release(v47);
              }

              else if (xpc_get_type(a1) == &_xpc_type_array)
              {
                v40 = xpc_array_create(0, 0);
                v41 = __p;
                if (__p != &v58)
                {
                  do
                  {
                    v42 = v41 + 32;
                    if (v41[55] < 0)
                    {
                      v42 = *v42;
                    }

                    v43 = xpc_dictionary_create(0, 0, 0);
                    xpc_dictionary_set_string(v43, "key", v42);
                    if (is_value_basic_type(v41 + 7))
                    {
                      append_basic_to_xpc_object_by_value_type(v43, v41 + 7);
                    }

                    else
                    {
                      append_complex_to_xpc_object_by_value_type(v43, v41 + 7);
                    }

                    xpc_array_append_value(v40, v43);
                    xpc_release(v43);
                    v44 = *(v41 + 1);
                    if (v44)
                    {
                      do
                      {
                        v45 = v44;
                        v44 = *v44;
                      }

                      while (v44);
                    }

                    else
                    {
                      do
                      {
                        v45 = *(v41 + 2);
                        v23 = *v45 == v41;
                        v41 = v45;
                      }

                      while (!v23);
                    }

                    v41 = v45;
                  }

                  while (v45 != &v58);
                }

                xpc_array_append_value(a1, v40);
                xpc_release(v40);
              }

              std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&__p, v58);
            }

            else
            {
              if (a2->var0)
              {
                v46 = (*(*a2->var0 + 16))(a2->var0);
              }

              else
              {
              }

              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported type");
              }

              v53 = boost::any_cast<std::list<std::map<std::string,boost::any>> const&>(a2);
              std::list<std::map<std::string,boost::any>>::list(&__p, v53);
              if (xpc_get_type(a1) == &_xpc_type_dictionary)
              {
                xpc_dictionary_set_uint64(a1, "v_type", 0xCuLL);
                v55 = xpc_array_create(0, 0);
                if (v58 != &__p)
                {
                  operator new();
                }

                xpc_dictionary_set_value(a1, "value", v55);
                xpc_release(v55);
              }

              else if (xpc_get_type(a1) == &_xpc_type_array)
              {
                v54 = xpc_array_create(0, 0);
                if (v58 != &__p)
                {
                  operator new();
                }

                xpc_array_append_value(a1, v54);
                xpc_release(v54);
              }

              std::list<std::map<std::string,boost::any>>::~list(&__p);
            }
          }

          return;
        }

        boost::any_cast<std::vector<unsigned char>>(a2, &__p);
        xpc_dictionary_set_uint64(a1, "v_type", 0xEuLL);
        v26 = xpc_array_create(0, 0);
        v30 = __p;
        if (__p != v58)
        {
          do
          {
            xpc_array_set_uint64(v26, 0xFFFFFFFFFFFFFFFFLL, *v30);
            v30 = (v30 + 1);
          }

          while (v30 != v58);
        }
      }

      xpc_dictionary_set_value(a1, "value", v26);
      xpc_release(v26);
      if (__p)
      {
        v58 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_10010AADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void XPCHelpers::xpc_append_dictionary(XPCHelpers *this, const char *a2, any *a3, const any *a4)
{
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "key", a2);
  if (is_value_basic_type(a3))
  {
    append_basic_to_xpc_object_by_value_type(v7, a3);
  }

  else
  {
    append_complex_to_xpc_object_by_value_type(v7, a3);
  }

  xpc_array_append_value(this, v7);

  xpc_release(v7);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void append_basic_to_xpc_object_by_value_type(void *a1, any *a2)
{
  if (a2->var0)
  {
    v4 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  v5 = v4[1];
  if (v5 == 0x8000000100447B36 || ((v5 & 0x8000000100447B36 & 0x8000000000000000) != 0) != __OFSUB__(v5, 0x8000000100447B36) && !strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    if (a2->var0)
    {
      v6 = (*(*a2->var0 + 16))(a2->var0);
    }

    else
    {
    }

    v10 = (v6[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v10 != (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v10, (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v58.__vftable = 0;
      std::bad_cast::bad_cast(&v58);
      v58.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    var0 = a2->var0;
    if (*(a2->var0 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(var0 + 1), *(var0 + 2));
    }

    else
    {
      v12 = *(var0 + 8);
      __p.__r_.__value_.__r.__words[2] = *(var0 + 3);
      *&__p.__r_.__value_.__l.__data_ = v12;
    }

    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v14 = __p.__r_.__value_.__r.__words[0];
    xpc_dictionary_set_uint64(a1, "v_type", 0xAuLL);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v14;
    }

    goto LABEL_43;
  }

  if (a2->var0)
  {
    v7 = *((*(*a2->var0 + 16))(a2->var0) + 8);
    v9 = __OFSUB__(v7, v8);
    if (v7 == v8)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v9 = __OFSUB__(v7, v8);
    if (v7 == v8)
    {
      goto LABEL_29;
    }
  }

  if ((v8 & v7) < 0 != v9 && !strcmp((v7 & 0x7FFFFFFFFFFFFFFFLL), (v8 & 0x7FFFFFFFFFFFFFFFLL)))
  {
LABEL_29:
    if (a2->var0)
    {
      v19 = (*((*(*a2->var0 + 16))(a2->var0) + 8) & 0x7FFFFFFFFFFFFFFFLL);
      v20 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      if (v19 == (v8 & 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v20 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      if (v19 == (v8 & 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_34:
        v21 = *(a2->var0 + 1);
        v22 = strlen(v21);
        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v23 = v22;
        if (v22 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v22;
        if (v22)
        {
          memmove(&__p, v21, v22);
        }

        __p.__r_.__value_.__s.__data_[v23] = 0;
        v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v25 = __p.__r_.__value_.__r.__words[0];
        xpc_dictionary_set_uint64(a1, "v_type", 0xAuLL);
        if (v24 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = v25;
        }

LABEL_43:
        xpc_dictionary_set_string(a1, "value", p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    if (strcmp(v19, v20))
    {
      v58.__vftable = 0;
      std::bad_cast::bad_cast(&v58);
      v58.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    goto LABEL_34;
  }

  if (a2->var0)
  {
    v16 = *((*(*a2->var0 + 16))(a2->var0) + 8);
    v18 = __OFSUB__(v16, v17);
    if (v16 == v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v18 = __OFSUB__(v16, v17);
    if (v16 == v17)
    {
      goto LABEL_53;
    }
  }

  if ((v17 & v16) < 0 != v18 && !strcmp((v16 & 0x7FFFFFFFFFFFFFFFLL), (v17 & 0x7FFFFFFFFFFFFFFFLL)))
  {
LABEL_53:
    if (a2->var0)
    {
      v29 = (*((*(*a2->var0 + 16))(a2->var0) + 8) & 0x7FFFFFFFFFFFFFFFLL);
      v30 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
      if (v29 == (v17 & 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_58;
      }
    }

    else
    {
      v30 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
      if (v29 == (v17 & 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_58:
        v31 = *(a2->var0 + 8);
        xpc_dictionary_set_uint64(a1, "v_type", 2uLL);

        xpc_dictionary_set_BOOL(a1, "value", v31);
        return;
      }
    }

    if (strcmp(v29, v30))
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      std::bad_cast::bad_cast(&__p);
      __p.__r_.__value_.__r.__words[0] = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    goto LABEL_58;
  }

  if (a2->var0)
  {
    v26 = *((*(*a2->var0 + 16))(a2->var0) + 8);
    v28 = __OFSUB__(v26, v27);
    if (v26 == v27)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v28 = __OFSUB__(v26, v27);
    if (v26 == v27)
    {
      goto LABEL_68;
    }
  }

  if ((v27 & v26) < 0 != v28 && !strcmp((v26 & 0x7FFFFFFFFFFFFFFFLL), (v27 & 0x7FFFFFFFFFFFFFFFLL)))
  {
LABEL_68:
    if (a2->var0)
    {
      v35 = (*((*(*a2->var0 + 16))(a2->var0) + 8) & 0x7FFFFFFFFFFFFFFFLL);
      v36 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      if (v35 == (v27 & 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_73;
      }
    }

    else
    {
      v36 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      if (v35 == (v27 & 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_73:
        v37 = *(a2->var0 + 8);
        v38 = a1;
        v39 = 1;
LABEL_74:
        xpc_dictionary_set_uint64(v38, "v_type", v39);

        xpc_dictionary_set_uint64(a1, "value", v37);
        return;
      }
    }

    if (strcmp(v35, v36))
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      std::bad_cast::bad_cast(&__p);
      __p.__r_.__value_.__r.__words[0] = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    goto LABEL_73;
  }

  if (a2->var0)
  {
    v32 = *((*(*a2->var0 + 16))(a2->var0) + 8);
    v34 = __OFSUB__(v32, v33);
    if (v32 == v33)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v34 = __OFSUB__(v32, v33);
    if (v32 == v33)
    {
      goto LABEL_83;
    }
  }

  if ((v33 & v32) < 0 != v34 && !strcmp((v32 & 0x7FFFFFFFFFFFFFFFLL), (v33 & 0x7FFFFFFFFFFFFFFFLL)))
  {
LABEL_83:
    if (a2->var0)
    {
      v41 = (*(*a2->var0 + 16))(a2->var0);
    }

    else
    {
    }

    v42 = (v41[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v42 != (v33 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v42, (v33 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      std::bad_cast::bad_cast(&__p);
      __p.__r_.__value_.__r.__words[0] = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    v43 = *(a2->var0 + 8);
    goto LABEL_89;
  }

  if (a2->var0)
  {
    v40 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  v46 = v40[1];
  if (v46 == v47 || (v47 & v46) < 0 != __OFSUB__(v46, v47) && !strcmp((v46 & 0x7FFFFFFFFFFFFFFFLL), (v47 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v37 = *boost::any_cast<unsigned short const&>(a2);
    v38 = a1;
    v39 = 4;
    goto LABEL_74;
  }

  if (a2->var0)
  {
    v48 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  {
    v43 = *boost::any_cast<short const&>(a2);
LABEL_89:
    v44 = a1;
    v45 = 3;
LABEL_90:
    xpc_dictionary_set_uint64(v44, "v_type", v45);

    xpc_dictionary_set_int64(a1, "value", v43);
    return;
  }

  if (a2->var0)
  {
    v49 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  {
    v37 = *boost::any_cast<unsigned int const&>(a2);
    v38 = a1;
    v39 = 6;
    goto LABEL_74;
  }

  if (a2->var0)
  {
    v50 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  {
    v43 = *boost::any_cast<int const&>(a2);
    v44 = a1;
    v45 = 5;
    goto LABEL_90;
  }

  if (a2->var0)
  {
    v51 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  {
    v37 = *boost::any_cast<unsigned long long const&>(a2);
    v38 = a1;
    v39 = 8;
    goto LABEL_74;
  }

  if (a2->var0)
  {
    v52 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  {
    v43 = *boost::any_cast<long long const&>(a2);
    v44 = a1;
    v45 = 7;
    goto LABEL_90;
  }

  if (a2->var0)
  {
    v53 = (*(*a2->var0 + 16))(a2->var0);
  }

  else
  {
  }

  {
    v54 = *boost::any_cast<double const&>(a2);
  }

  else
  {
    if (a2->var0)
    {
      v55 = (*(*a2->var0 + 16))(a2->var0);
    }

    else
    {
    }

    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported type");
    }

    v54 = *boost::any_cast<float const&>(a2);
  }

  xpc_dictionary_set_uint64(a1, "v_type", 9uLL);

  xpc_dictionary_set_double(a1, "value", v54);
}

void sub_10010B824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void append_basic_to_xpc_object_by_type(void *a1, uint64_t a2, const char *a3)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v4 = a1;
        xpc_dictionary_set_uint64(a1, "v_type", 3uLL);
        v5 = *a3;
        goto LABEL_27;
      }

      if (a2 != 4)
      {
        v4 = a1;
        xpc_dictionary_set_uint64(a1, "v_type", 5uLL);
        v5 = *a3;
LABEL_27:

        xpc_dictionary_set_int64(v4, "value", v5);
        return;
      }

      v9 = a1;
      xpc_dictionary_set_uint64(a1, "v_type", 4uLL);
      v10 = *a3;
      goto LABEL_31;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        xpc_dictionary_set_uint64(a1, "v_type", 2uLL);
        v8 = *a3;

        xpc_dictionary_set_BOOL(a1, "value", v8);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported type");
    }

    v9 = a1;
    xpc_dictionary_set_uint64(a1, "v_type", 1uLL);
    v10 = *a3;
LABEL_31:

    xpc_dictionary_set_uint64(v9, "value", v10);
    return;
  }

  if (a2 <= 7)
  {
    if (a2 != 6)
    {
      v4 = a1;
      xpc_dictionary_set_uint64(a1, "v_type", 7uLL);
      v5 = *a3;
      goto LABEL_27;
    }

    v9 = a1;
    xpc_dictionary_set_uint64(a1, "v_type", 6uLL);
    v10 = *a3;
    goto LABEL_31;
  }

  switch(a2)
  {
    case 8:
      v9 = a1;
      xpc_dictionary_set_uint64(a1, "v_type", 8uLL);
      v10 = *a3;
      goto LABEL_31;
    case 9:
      xpc_dictionary_set_uint64(a1, "v_type", 9uLL);
      v12 = *a3;

      xpc_dictionary_set_double(a1, "value", v12);
      break;
    case 10:
      xpc_dictionary_set_uint64(a1, "v_type", 0xAuLL);

      xpc_dictionary_set_string(a1, "value", a3);
      break;
    default:
      goto LABEL_34;
  }
}

uint64_t is_value_basic_type(const any *a1)
{
  var0 = a1->var0;
  if (var0)
  {
    v3 = (*(*var0 + 16))(var0);
  }

  else
  {
  }

  v4 = v3[1];
  if (v4 == 0x8000000100447B36 || ((v4 & 0x8000000100447B36 & 0x8000000000000000) != 0) != __OFSUB__(v4, 0x8000000100447B36) && !strcmp((v4 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if (a1->var0)
  {
    v5 = *((*(*a1->var0 + 16))(a1->var0) + 8);
    v7 = __OFSUB__(v5, v6);
    if (v5 == v6)
    {
      return 1;
    }
  }

  else
  {
    v7 = __OFSUB__(v5, v6);
    if (v5 == v6)
    {
      return 1;
    }
  }

  if ((v6 & v5) < 0 != v7 && !strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (v6 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if (a1->var0)
  {
    v8 = *((*(*a1->var0 + 16))(a1->var0) + 8);
    v10 = __OFSUB__(v8, v9);
    if (v8 == v9)
    {
      return 1;
    }
  }

  else
  {
    v10 = __OFSUB__(v8, v9);
    if (v8 == v9)
    {
      return 1;
    }
  }

  if ((v9 & v8) < 0 != v10 && !strcmp((v8 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if (a1->var0)
  {
    v11 = *((*(*a1->var0 + 16))(a1->var0) + 8);
    v13 = __OFSUB__(v11, v12);
    if (v11 == v12)
    {
      return 1;
    }
  }

  else
  {
    v13 = __OFSUB__(v11, v12);
    if (v11 == v12)
    {
      return 1;
    }
  }

  if ((v12 & v11) < 0 != v13 && !strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (v12 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if (!a1->var0)
  {
    v16 = __OFSUB__(v14, v15);
    if (v14 != v15)
    {
      goto LABEL_33;
    }

    return 1;
  }

  v14 = *((*(*a1->var0 + 16))(a1->var0) + 8);
  v16 = __OFSUB__(v14, v15);
  if (v14 == v15)
  {
    return 1;
  }

LABEL_33:
  if ((v15 & v14) < 0 != v16 && !strcmp((v14 & 0x7FFFFFFFFFFFFFFFLL), (v15 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  v18 = v17[1];
  if (v18 == v19 || (v19 & v18) < 0 != __OFSUB__(v18, v19) && !strcmp((v18 & 0x7FFFFFFFFFFFFFFFLL), (v19 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  {
    return 1;
  }

  {
    return 1;
  }

  {
    return 1;
  }

  {
    return 1;
  }

  {
    return 1;
  }

  {
    return 1;
  }

  if (a1->var0)
  {
    v27 = (*(*a1->var0 + 16))(a1->var0);
  }

  else
  {
  }

  {
    {
      {
        {
          {
            {
              if (a1->var0)
              {
                v33 = (*(*a1->var0 + 16))(a1->var0);
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void append_to_xpc_object_by_value_type(void *a1, any *a2)
{
  if (is_value_basic_type(a2))
  {

    append_basic_to_xpc_object_by_value_type(a1, a2);
  }

  else
  {

    append_complex_to_xpc_object_by_value_type(a1, a2);
  }
}

void XPCHelpers::xpc_append_dictionary(XPCHelpers *this, const char *a2, const char *a3, const char *a4, void *a5)
{
  if (a3 != 10 || a4)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "v_type", a3);
    xpc_dictionary_set_string(v9, "key", a2);
    append_basic_to_xpc_object_by_type(v9, a3, a4);
    xpc_array_append_value(this, v9);

    xpc_release(v9);
  }
}

uint64_t boost::any_cast<std::map<std::string,boost::any> const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v4, (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v6.__vftable = 0;
    std::bad_cast::bad_cast(&v6);
    v6.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

uint64_t boost::any_cast<std::list<std::map<std::string,boost::any>> const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v4, (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v6.__vftable = 0;
    std::bad_cast::bad_cast(&v6);
    v6.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

void *std::list<std::map<std::string,boost::any>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::__list_imp<std::map<std::string,boost::any>>::__create_node[abi:ne200100]<std::map<std::string,boost::any> const&>();
  }

  return result;
}

void sub_10010C530(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__list_imp<std::map<std::string,boost::any>>::clear(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::any_cast<unsigned short const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != v5 && strcmp(v4, v5))
  {
    v7.__vftable = 0;
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

uint64_t boost::any_cast<short const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != v5 && strcmp(v4, v5))
  {
    v7.__vftable = 0;
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

uint64_t boost::any_cast<unsigned int const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != v5 && strcmp(v4, v5))
  {
    v7.__vftable = 0;
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

uint64_t boost::any_cast<int const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != v5 && strcmp(v4, v5))
  {
    v7.__vftable = 0;
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

uint64_t boost::any_cast<long long const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != v5 && strcmp(v4, v5))
  {
    v7.__vftable = 0;
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

uint64_t boost::any_cast<double const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != v5 && strcmp(v4, v5))
  {
    v7.__vftable = 0;
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

uint64_t boost::any_cast<float const&>(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
  }

  v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v4 != v5 && strcmp(v4, v5))
  {
    v7.__vftable = 0;
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *a1 + 8;
}

void sub_10010CD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v17);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void InternalClient::registerClient(InternalIPCAPI *a1, uint64_t a2, uint64_t *a3)
{
  Instance = InternalIPCAPI::getInstance(a1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = Instance;
    std::string::__init_copy_ctor_external(&__p, v9, v10);
    Instance = v11;
    v7 = a3[1];
    v12 = *a3;
    v13 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  __p = *a2;
  v7 = a3[1];
  v12 = *a3;
  v13 = v7;
  if (v7)
  {
LABEL_3:
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_4:
  InternalIPCAPI::add_client(Instance, &__p.__r_.__value_.__l.__data_, &v12);
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_7:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_8:
  InternalClient::eventsOn(a1);
}

void sub_10010CE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void InternalClient::InternalClient(InternalClient *this, const char *a2)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create(a2, v4);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    *(this + 3) = 0;
    dispatch_release(v6);
    v7 = strlen(a2);
    if (v7 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(this + 3) = 0;
    v7 = strlen(a2);
    if (v7 < 0x7FFFFFFFFFFFFFF8)
    {
LABEL_3:
      v8 = v7;
      if (v7 < 0x17)
      {
        *(this + 55) = v7;
        v9 = this + 32;
        if (v7)
        {
          memmove(v9, a2, v7);
        }

        v9[v8] = 0;
        operator new();
      }

      operator new();
    }
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_10010D01C(_Unwind_Exception *a1)
{
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v1 + 56);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
    ctu::SharedSynchronizable<InternalClient>::~SharedSynchronizable(v1);
    _Unwind_Resume(a1);
  }

  ctu::SharedSynchronizable<InternalClient>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void *ctu::SharedSynchronizable<InternalClient>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void InternalClient::eventsOn(InternalClient *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = (this + 32);
      if (*(this + 55) < 0)
      {
        v4 = *v4;
      }

      v8 = 136315138;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Internal client clientName:%s eventsOn initiate set to true", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *(this + 80) = 1;
  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v5)
  {
    v6 = v5;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = (this + 32);
      if (*(this + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Internal client clientName:%s eventsOn set to true", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

InternalClient *InternalClient::getClientEventListenersPtr@<X0>(InternalClient *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  *a2 = *(this + 7);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void InternalClient::eventsOff(InternalClient *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = (this + 32);
      if (*(this + 55) < 0)
      {
        v4 = *v4;
      }

      v8 = 136315138;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Internal client clientName:%s eventsOff initiate set to false", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *(this + 80) = 0;
  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v5)
  {
    v6 = v5;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = (this + 32);
      if (*(this + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Internal client clientName:%s eventsOff  set to false", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void InternalClient::~InternalClient(InternalClient *this)
{
  v2 = *(this + 8);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 55) < 0)
  {
LABEL_4:
    operator delete(*(this + 4));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void InternalClient::get(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 1;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient3getENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPN5boost3anyE_block_invoke;
  aBlock[3] = &unk_1004C3CF0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
  }

  else
  {
    v21 = *a2;
  }

  aBlock[4] = &v26;
  v22 = a3;
  v23 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v24 = v9;
  v25 = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1174405120;
  v16[2] = ___ZN14InternalClient3getENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPN5boost3anyE_block_invoke_5;
  v16[3] = &__block_descriptor_tmp_7;
  v16[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (v9)
  {
    v18 = _Block_copy(v9);
    object = v11;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v18 = 0;
  object = v11;
  if (v11)
  {
LABEL_13:
    dispatch_retain(v11);
  }

LABEL_14:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v16);
  if (v8)
  {
    v12 = dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v13 = v27;
    if (v12)
    {
      *(v27 + 24) = 1;
    }
  }

  else
  {
    v13 = v27;
  }

  v14 = *(v13 + 24);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  *a4 = v15;
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  _Block_object_dispose(&v26, 8);
}

void sub_10010D790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, dispatch_object_t object)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(v32 - 128);
  if (object)
  {
    dispatch_release(object);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if (!v31)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!v31)
  {
LABEL_4:
    _Block_object_dispose((v32 - 112), 8);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v31);
  _Block_object_dispose((v32 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN14InternalClient3getENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPN5boost3anyE_block_invoke(uint64_t a1, int a2, uint64_t *a3)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      *(*(*(a1 + 32) + 8) + 24) = a2;
      v9 = *(a1 + 64);
      v10 = *a3;
      if (!*a3)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = a2;
    v9 = *(a1 + 64);
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v7 = logging_obg;
  if (!syslog_is_the_mask_enabled(5) || !os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    goto LABEL_9;
  }

  v8 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v8 = *v8;
  }

  v13 = 136315650;
  v14 = "get_block_invoke";
  v15 = 1024;
  v16 = a2;
  v17 = 2080;
  v18 = v8;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received callback in %s with status %d for cmd: %s", &v13, 0x1Cu);
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v9 = *(a1 + 64);
  v10 = *a3;
  if (!*a3)
  {
LABEL_14:
    v12 = *v9;
    *v9 = 0;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  v11 = (*(*v10 + 24))(v10);
  v12 = *v9;
  *v9 = v11;
  if (v12)
  {
LABEL_11:
    (*(*v12 + 8))(v12);
  }

LABEL_12:
  dispatch_group_leave(*(a1 + 72));
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 72);
    *(a1 + 72) = v5;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    v5 = *(a2 + 72);
    *(a1 + 72) = v5;
    if (!v5)
    {
      return;
    }
  }

  dispatch_retain(v5);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void ___ZN14InternalClient3getENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPN5boost3anyE_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  Instance = InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(v2 + 32), *(v2 + 40));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(v2 + 32);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(a1 + 40);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v6, *(a1 + 40), *(a1 + 48));
LABEL_6:
  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_copy(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    dispatch_retain(v5);
  }

  InternalIPCAPI::getProperty(Instance, &v7, &v6);
}

void sub_10010DBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void InternalClient::set(uint64_t a1, uint64_t a2)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 1;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient3setENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPKc_block_invoke;
  aBlock[3] = &unk_1004C3D58;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  aBlock[4] = v17;
  v14 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v6 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v15 = v4;
  v16 = v6;
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v9 = 13;
  strcpy(__p, "property_type");
  v7[0] = __p;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v10, __p);
  operator new();
}

void sub_10010E3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, dispatch_object_t object)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a33, a34);
  dispatch::callback<void({block_pointer})(void)>::~callback(v48 - 144);
  if (object)
  {
    dispatch_release(object);
    if ((a46 & 0x80000000) == 0)
    {
LABEL_3:
      if (!v47)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a46 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!v47)
  {
LABEL_4:
    _Block_object_dispose((v48 - 128), 8);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v47);
  _Block_object_dispose((v48 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZN14InternalClient3setENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPKc_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = 136315650;
    v6 = "set_block_invoke";
    v7 = 1024;
    v8 = a2;
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d for cmd: %s", &v5, 0x1Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 64));
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    *(a1 + 64) = v5;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    v5 = *(a2 + 64);
    *(a1 + 64) = v5;
    if (!v5)
    {
      return;
    }
  }

  dispatch_retain(v5);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void ___ZN14InternalClient3setENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPKc_block_invoke_13(InternalIPCAPI *a1)
{
  v1 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  operator new();
}

void sub_10010E798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c127_ZTSNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN5boost3anyENS_4lessIS6_EENS4_INS_4pairIKS6_S8_EEEEEE64c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  std::map<std::string,boost::any>::map[abi:ne200100](a1 + 40, (a2 + 40));
  v4 = *(a2 + 64);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c127_ZTSNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN5boost3anyENS_4lessIS6_EENS4_INS_4pairIKS6_S8_EEEEEE64c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((a1 + 5), v4);
}

void InternalClient::setEventHandler(uint64_t a1, uint64_t a2, void *a3, NSObject **a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v9 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = a2;
      if (*(a2 + 23) < 0)
      {
        v10 = *a2;
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "InternalClient::setEventHandler for %s by %s.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (a3)
  {
    a3 = _Block_copy(a3);
  }

  v12 = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *buf = a3;
  *&buf[8] = v12;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = ___ZN14InternalClient15setEventHandlerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEU13block_pointerFvN5boost3anyEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_15_0;
  v13[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (a3)
  {
    aBlock = _Block_copy(a3);
    object = v12;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  aBlock = 0;
  object = v12;
  if (v12)
  {
LABEL_20:
    dispatch_retain(v12);
  }

LABEL_21:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (a3)
  {
    _Block_release(a3);
  }
}

void sub_10010EB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  dispatch::callback<void({block_pointer})(void)>::~callback(va);
  _Unwind_Resume(a1);
}

void sub_10010EB18(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN14InternalClient15setEventHandlerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEU13block_pointerFvN5boost3anyEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  if ((*(a1 + 63) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 48))
    {
      return;
    }
  }

  else if (!*(a1 + 63))
  {
    return;
  }

  if (*(a1 + 64) && *(a1 + 72))
  {
    v2 = std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*(*(a1 + 32) + 56), (a1 + 40));
    v3 = *(a1 + 64);
    if (v3)
    {
      v3 = _Block_copy(v3);
    }

    v4 = v2[7];
    v2[7] = v3;
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      dispatch_retain(v5);
    }

    v6 = v2[8];
    v2[8] = v5;
    if (v6)
    {
      dispatch_release(v6);
    }
  }
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c57_ZTSN8dispatch8callbackIU13block_pointerFvN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c57_ZTSN8dispatch8callbackIU13block_pointerFvN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void InternalClient::setEventHandler(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v9 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = a2;
      if (*(a2 + 23) < 0)
      {
        v10 = *a2;
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "InternalClient::setEventHandler for %s by %s", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (a3)
  {
    a3 = _Block_copy(a3);
  }

  if (a4)
  {
    dispatch_retain(a4);
  }

  *buf = a3;
  *&buf[8] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1174405120;
  v12[2] = ___ZN14InternalClient15setEventHandlerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEU13block_pointerFvN5boost3anyEEP16dispatch_queue_s_block_invoke;
  v12[3] = &__block_descriptor_tmp_18_0;
  v12[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (a3)
  {
    aBlock = _Block_copy(a3);
    object = a4;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  aBlock = 0;
  object = a4;
  if (a4)
  {
LABEL_20:
    dispatch_retain(a4);
  }

LABEL_21:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    dispatch_release(a4);
  }

  if (a3)
  {
    _Block_release(a3);
  }
}

void sub_10010EF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  dispatch::callback<void({block_pointer})(void)>::~callback(va);
  _Unwind_Resume(a1);
}

void sub_10010EF40(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN14InternalClient15setEventHandlerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEU13block_pointerFvN5boost3anyEEP16dispatch_queue_s_block_invoke(uint64_t a1)
{
  if ((*(a1 + 63) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 48))
    {
      return;
    }
  }

  else if (!*(a1 + 63))
  {
    return;
  }

  if (*(a1 + 64) && *(a1 + 72))
  {
    v2 = std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*(*(a1 + 32) + 56), (a1 + 40));
    v3 = *(a1 + 64);
    if (v3)
    {
      v3 = _Block_copy(v3);
    }

    v4 = v2[7];
    v2[7] = v3;
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      dispatch_retain(v5);
    }

    v6 = v2[8];
    v2[8] = v5;
    if (v6)
    {
      dispatch_release(v6);
    }
  }
}

void InternalClient::sendData(InternalClient *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
}

void InternalClient::send_diagnostics_req()
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 1;
  v0 = dispatch_group_create();
  dispatch_group_enter(v0);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient20send_diagnostics_reqE22Ctr_send_diagnostics_t_block_invoke;
  aBlock[3] = &unk_1004C3E20;
  aBlock[4] = v9;
  aBlock[5] = v0;
  if (v0)
  {
    dispatch_retain(v0);
  }

  v1 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v3 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[6] = v1;
  aBlock[7] = v3;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  v5 = 6;
  strcpy(&__p, "method");
  p_p = &__p;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v6, &__p);
  operator new();
}

void sub_10010F5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, dispatch_object_t object)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a25, a26);
  dispatch::callback<void({block_pointer})(void)>::~callback(v34 - 160);
  if (object)
  {
    dispatch_release(object);
    if (!v33)
    {
LABEL_3:
      _Block_object_dispose((v34 - 144), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  dispatch_release(v33);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

void ___ZN14InternalClient20send_diagnostics_reqE22Ctr_send_diagnostics_t_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "send_diagnostics_req_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_10010F87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void InternalClient::trm_get_ot_data(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 1;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient15trm_get_ot_dataE21Ctr_trm_get_ot_data_tPN5boost3anyE_block_invoke;
  aBlock[3] = &unk_1004C3E88;
  aBlock[4] = &v25;
  aBlock[5] = a3;
  v22 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v23 = v9;
  v24 = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1174405120;
  v16[2] = ___ZN14InternalClient15trm_get_ot_dataE21Ctr_trm_get_ot_data_tPN5boost3anyE_block_invoke_29;
  v16[3] = &__block_descriptor_tmp_31_0;
  v16[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v18 = *(a2 + 24);
  if (v9)
  {
    v19 = _Block_copy(v9);
    object = v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = 0;
  object = v11;
  if (v11)
  {
LABEL_10:
    dispatch_retain(v11);
  }

LABEL_11:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v16);
  if (v8)
  {
    v12 = dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v13 = v26;
    if (v12)
    {
      *(v26 + 24) = 1;
    }
  }

  else
  {
    v13 = v26;
  }

  v14 = *(v13 + 24);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  *a4 = v15;
  if (object)
  {
    dispatch_release(object);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  _Block_object_dispose(&v25, 8);
}

void sub_10010FB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(v27 - 128);
  if (object)
  {
    dispatch_release(object);
    if (!v26)
    {
LABEL_3:
      _Block_object_dispose((v27 - 112), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  dispatch_release(v26);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN14InternalClient15trm_get_ot_dataE21Ctr_trm_get_ot_data_tPN5boost3anyE_block_invoke(uint64_t a1, int a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "trm_get_ot_data_block_invoke";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v9, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = *(a1 + 40);
  if (!*a3)
  {
    v8 = *v6;
    *v6 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = (*(**a3 + 24))(*a3);
  v8 = *v6;
  *v6 = v7;
  if (v8)
  {
LABEL_5:
    (*(*v8 + 8))(v8);
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 48));
}

void __copy_helper_block_e8_48c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_48c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ___ZN14InternalClient15trm_get_ot_dataE21Ctr_trm_get_ot_data_tPN5boost3anyE_block_invoke_29(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v9 = *(a1 + 40);
  }

  v8 = 12;
  strcpy(__p, "TrmGetOTData");
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(v2 + 32), *(v2 + 40));
  }

  else
  {
    v6 = *(v2 + 32);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    _Block_copy(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    dispatch_retain(v5);
  }

  InternalIPCAPI::interface_trm_get_ot_data();
}

void sub_10010FE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
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

void __copy_helper_block_e8_40c27_ZTS21Ctr_trm_get_ot_data_t72c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 80);
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c27_ZTS21Ctr_trm_get_ot_data_t72c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void InternalClient::send_ping_node_req(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient18send_ping_node_reqE20Ctr_send_ping_node_t_block_invoke;
  aBlock[3] = &unk_1004C3EF0;
  aBlock[4] = &v24;
  v21 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v22 = v7;
  v23 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = ___ZN14InternalClient18send_ping_node_reqE20Ctr_send_ping_node_t_block_invoke_35;
  v14[3] = &__block_descriptor_tmp_37_0;
  v14[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v16 = *(a2 + 24);
  v17 = *(a2 + 26);
  if (v7)
  {
    v18 = _Block_copy(v7);
    object = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = 0;
  object = v9;
  if (v9)
  {
LABEL_10:
    dispatch_retain(v9);
  }

LABEL_11:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v14);
  if (v6)
  {
    v10 = dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v25;
    if (v10)
    {
      *(v25 + 24) = 1;
    }
  }

  else
  {
    v11 = v25;
  }

  v12 = *(v11 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  _Block_object_dispose(&v24, 8);
}

void sub_100110230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(v27 - 128);
  if (object)
  {
    dispatch_release(object);
    if (!v26)
    {
LABEL_3:
      _Block_object_dispose((v27 - 112), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  dispatch_release(v26);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN14InternalClient18send_ping_node_reqE20Ctr_send_ping_node_t_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "send_ping_node_req_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient18send_ping_node_reqE20Ctr_send_ping_node_t_block_invoke_35(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v11 = *(a1 + 40);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 66);
  strcpy(__p, "NetworkMonitorPingNode");
  v10 = 22;
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(v2 + 32), *(v2 + 40));
  }

  else
  {
    v8 = *(v2 + 32);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    _Block_copy(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    dispatch_retain(v7);
  }

  InternalIPCAPI::interface_send_ping_req();
}

void sub_1001104C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void __copy_helper_block_e8_40c26_ZTS20Ctr_send_ping_node_t72c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v7 = *(a2 + 64);
    *(a1 + 66) = *(a2 + 66);
    *(a1 + 64) = v7;
    v6 = *(a2 + 72);
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 64) = v5;
  v6 = *(a2 + 72);
  if (v6)
  {
LABEL_5:
    v6 = _Block_copy(v6);
  }

LABEL_6:
  v8 = *(a2 + 80);
  *(a1 + 72) = v6;
  *(a1 + 80) = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}

void __destroy_helper_block_e8_40c26_ZTS20Ctr_send_ping_node_t72c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void InternalClient::get_device_data_diag_req(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = ___ZN14InternalClient24get_device_data_diag_reqE19Ctr_get_diag_data_t_block_invoke;
  v14[3] = &unk_1004C3F58;
  v14[4] = &v18;
  v15 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = _Block_copy(v14);
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v16 = v7;
  v17 = v9;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1174405120;
  v22[2] = ___ZN14InternalClient24get_device_data_diag_reqE19Ctr_get_diag_data_t_block_invoke_41;
  v22[3] = &__block_descriptor_tmp_43;
  v22[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v24 = *(a2 + 24);
  v25 = *(a2 + 40);
  if (v7)
  {
    aBlock = _Block_copy(v7);
    object = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  aBlock = 0;
  object = v9;
  if (v9)
  {
LABEL_10:
    dispatch_retain(v9);
  }

LABEL_11:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v22);
  if (v6)
  {
    v10 = dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v19;
    if (v10)
    {
      *(v19 + 24) = 1;
    }
  }

  else
  {
    v11 = v19;
  }

  v12 = *(v11 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  _Block_object_dispose(&v18, 8);
}

void sub_1001108C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, char a15, uint64_t a16, char a17)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a15);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100110900(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN14InternalClient24get_device_data_diag_reqE19Ctr_get_diag_data_t_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "get_device_data_diag_req_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient24get_device_data_diag_reqE19Ctr_get_diag_data_t_block_invoke_41(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  operator new();
}

void sub_100110BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(a17);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c25_ZTS19Ctr_get_diag_data_t88c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
    v6 = *(a2 + 88);
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v5;
  v6 = *(a2 + 88);
  if (v6)
  {
LABEL_5:
    v6 = _Block_copy(v6);
  }

LABEL_6:
  v8 = *(a2 + 96);
  *(a1 + 88) = v6;
  *(a1 + 96) = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}

void __destroy_helper_block_e8_40c25_ZTS19Ctr_get_diag_data_t88c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void InternalClient::form(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = 1;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient4formE8Ctr_form_block_invoke;
  aBlock[3] = &unk_1004C3FC0;
  aBlock[4] = v22;
  v17 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v7 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v18 = v5;
  object = v7;
  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = *a1;
    if (*a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = "router";
    *(a1 + 72) = "router";
    v9 = *a1;
    if (*a1)
    {
LABEL_7:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v9;
        WORD2(buf[1]) = 2080;
        *(&buf[1] + 6) = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Forming WPAN %s as node type %s", buf, 0x16u);
      }

      if (*(a1 + 8) == 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v10 = *(a1 + 10);
          LODWORD(buf[0]) = 67109120;
          HIDWORD(buf[0]) = v10;
          v11 = ", channel:%d";
LABEL_18:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v11, buf, 8u);
        }
      }

      else if (*(a1 + 12) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 16);
        LODWORD(buf[0]) = 67109120;
        HIDWORD(buf[0]) = v12;
        v11 = ", channel-mask:0x%x";
        goto LABEL_18;
      }

      if (*(a1 + 20) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 22);
        LODWORD(buf[0]) = 67109120;
        HIDWORD(buf[0]) = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, ", panid:0x%04X", buf, 8u);
      }

      if (*(a1 + 24) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, ", xpanid:0x%016llX", buf, 0xCu);
      }

      if (*(a1 + 40) == 1)
      {
        encode_data_into_string((a1 + 41), 16, buf, 0x24uLL, 0);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          LODWORD(v24[0]) = 136315138;
          *(v24 + 4) = buf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, ", key:[%s]", v24, 0xCu);
        }
      }

      if (*(a1 + 57) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 60);
        LODWORD(buf[0]) = 67109120;
        HIDWORD(buf[0]) = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, ", key-index:%d", buf, 8u);
      }

      if (*(a1 + 80) == 1)
      {
        memset(buf + 2, 0, 44);
        LOWORD(buf[0]) = 14906;
        v24[0] = *(a1 + 81);
        v24[1] = 0;
        inet_ntop(30, v24, buf, 0x2Eu);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v25 = 136315138;
          *&v25[4] = buf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, ", mesh-local-prefix:%s", v25, 0xCu);
        }
      }

      if (*(a1 + 89) == 1)
      {
        memset(buf + 2, 0, 44);
        LOWORD(buf[0]) = 14906;
        v24[0] = *(a1 + 90);
        v24[1] = 0;
        inet_ntop(30, v24, buf, 0x2Eu);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v25 = 136315138;
          *&v25[4] = buf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, ", legacy-prefix:%s", v25, 0xCu);
        }
      }

      HIBYTE(buf[2]) = 6;
      strcpy(buf, "method");
      v24[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v20, buf);
      operator new();
    }
  }

  *a2 = 10;
  strcpy((a2 + 8), "Network Name not Given");
  *(a2 + 31) = 22;
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v20, v21[0]);
  _Block_object_dispose(v22, 8);
}

void sub_100111FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, dispatch_object_t object, char a25, uint64_t a26, char a27, char *a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a25);
  if (object)
  {
    dispatch_release(object);
    if (!v40)
    {
LABEL_4:
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a27, a28);
      _Block_object_dispose(&a30, 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_4;
  }

  dispatch_release(v40);
  goto LABEL_4;
}

void ___ZN14InternalClient4formE8Ctr_form_block_invoke(uint64_t a1, int a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "form_block_invoke";
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received callback for %s with status %d", &v6, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient4formE8Ctr_form_block_invoke_61(InternalIPCAPI *a1)
{
  v1 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  operator new();
}

void sub_100112368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void InternalClient::leave(InternalClient *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient5leaveEb_block_invoke;
  aBlock[3] = &unk_1004C4028;
  aBlock[4] = &v20;
  v19 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = ___ZN14InternalClient5leaveEb_block_invoke_68;
  v14[3] = &__block_descriptor_tmp_69;
  v14[4] = this;
  v17 = a2;
  if (v7)
  {
    v15 = _Block_copy(v7);
    object = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = 0;
  object = v9;
  if (v9)
  {
LABEL_7:
    dispatch_retain(v9);
  }

LABEL_8:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(this, v14);
  if (v6)
  {
    v10 = dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v21;
    if (v10)
    {
      *(v21 + 24) = 1;
    }
  }

  else
  {
    v11 = v21;
  }

  v12 = *(v11 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v19)
  {
    dispatch_release(v19);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  _Block_object_dispose(&v20, 8);
}

void ___ZN14InternalClient5leaveEb_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "leave_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient5leaveEb_block_invoke_68(uint64_t a1)
{
  v2 = *(a1 + 32);
  Instance = InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(v2 + 32), *(v2 + 40));
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(v2 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    if (!v5)
    {
LABEL_6:
      v6 = *(a1 + 48);
      if (v6)
      {
        dispatch_retain(v6);
      }

      InternalIPCAPI::interface_leave_handler(Instance, &v7, v4);
    }
  }

  _Block_copy(v5);
  goto LABEL_6;
}

void sub_1001127A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void InternalClient::updatePrimaryResident(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient21updatePrimaryResidentE23Ctr_primaryResidentInfo_block_invoke;
  aBlock[3] = &unk_1004C4090;
  aBlock[4] = &v21;
  v20 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = ___ZN14InternalClient21updatePrimaryResidentE23Ctr_primaryResidentInfo_block_invoke_73;
  v14[3] = &__block_descriptor_tmp_74;
  v14[4] = a1;
  v15 = *a2;
  v16 = *(a2 + 2);
  if (v7)
  {
    v17 = _Block_copy(v7);
    object = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = 0;
  object = v9;
  if (v9)
  {
LABEL_7:
    dispatch_retain(v9);
  }

LABEL_8:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v14);
  if (v6)
  {
    v10 = dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v22;
    if (v10)
    {
      *(v22 + 24) = 1;
    }
  }

  else
  {
    v11 = v22;
  }

  v12 = *(v11 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  _Block_object_dispose(&v21, 8);
}

void ___ZN14InternalClient21updatePrimaryResidentE23Ctr_primaryResidentInfo_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "updatePrimaryResident_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient21updatePrimaryResidentE23Ctr_primaryResidentInfo_block_invoke_73(uint64_t a1)
{
  v2 = *(a1 + 32);
  InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(v2 + 32), *(v2 + 40));
    v7 = *(a1 + 40);
    v8 = *(a1 + 41);
    v9 = *(a1 + 48);
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(v2 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 41);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    if (!v6)
    {
LABEL_6:
      v10 = *(a1 + 72);
      if (v10)
      {
        dispatch_retain(v10);
      }

      InternalIPCAPI::interface_update_primary_resident_handler();
    }
  }

  _Block_copy(v6);
  goto LABEL_6;
}

void sub_100112C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_64c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_64c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }
}

void InternalClient::updateHomeThreadInfo(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient20updateHomeThreadInfoE18Ctr_homeThreadInfo_block_invoke;
  aBlock[3] = &unk_1004C40F8;
  aBlock[4] = &v21;
  v20 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = ___ZN14InternalClient20updateHomeThreadInfoE18Ctr_homeThreadInfo_block_invoke_78;
  v14[3] = &__block_descriptor_tmp_81;
  v14[4] = a1;
  v17 = *a2;
  v18 = *(a2 + 2);
  if (v7)
  {
    v15 = _Block_copy(v7);
    object = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = 0;
  object = v9;
  if (v9)
  {
LABEL_7:
    dispatch_retain(v9);
  }

LABEL_8:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v14);
  if (v6)
  {
    v10 = dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v22;
    if (v10)
    {
      *(v22 + 24) = 1;
    }
  }

  else
  {
    v11 = v22;
  }

  v12 = *(v11 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  _Block_object_dispose(&v21, 8);
}

void ___ZN14InternalClient20updateHomeThreadInfoE18Ctr_homeThreadInfo_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "updateHomeThreadInfo_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient20updateHomeThreadInfoE18Ctr_homeThreadInfo_block_invoke_78(uint64_t a1)
{
  v2 = *(a1 + 32);
  InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(v2 + 32), *(v2 + 40));
    v6 = *(a1 + 56);
    v8 = *(a1 + 72);
    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(v2 + 32);
    v5 = *(a1 + 56);
    v7 = *(a1 + 72);
    v3 = *(a1 + 40);
    if (!v3)
    {
LABEL_6:
      v4 = *(a1 + 48);
      if (v4)
      {
        dispatch_retain(v4);
      }

      InternalIPCAPI::interface_update_home_thread_info_handler();
    }
  }

  _Block_copy(v3);
  goto LABEL_6;
}

void sub_10011310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void InternalClient::wedStart(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient8wedStartE13Ctr_wed_start_block_invoke;
  aBlock[3] = &unk_1004C4160;
  aBlock[4] = &v20;
  v19 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1174405120;
  v15[2] = ___ZN14InternalClient8wedStartE13Ctr_wed_start_block_invoke_85;
  v15[3] = &__block_descriptor_tmp_86;
  v15[4] = a1;
  v15[5] = a2;
  if (v7)
  {
    v16 = _Block_copy(v7);
    object = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = 0;
  object = v9;
  if (v9)
  {
LABEL_7:
    dispatch_retain(v9);
  }

LABEL_8:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(a1, v15);
  if (v6)
  {
    v10 = dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v21;
    if (v10)
    {
      *(v21 + 24) = 1;
    }
  }

  else
  {
    v11 = v21;
  }

  v12 = *(v11 + 24);
  if (v12 == 9)
  {
    v13 = 14;
  }

  else
  {
    v13 = 3;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *a3 = v14;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v19)
  {
    dispatch_release(v19);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  _Block_object_dispose(&v20, 8);
}

void ___ZN14InternalClient8wedStartE13Ctr_wed_start_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "wedStart_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient8wedStartE13Ctr_wed_start_block_invoke_85(InternalIPCAPI *a1)
{
  v2 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(v2 + 32), *(v2 + 40));
    v5 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(v2 + 32);
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (!v3)
    {
LABEL_6:
      v6 = *(a1 + 7);
      if (v6)
      {
        dispatch_retain(v6);
      }

      InternalIPCAPI::interface_wed_start_handler();
    }
  }

  _Block_copy(v3);
  goto LABEL_6;
}

void sub_1001134F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_48c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_48c58_ZTSN8dispatch8callbackIU13block_pointerFvhN5boost3anyEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }
}

void InternalClient::wedStop(InternalClient *this@<X0>, uint64_t a2@<X8>)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 1;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient7wedStopEv_block_invoke;
  aBlock[3] = &unk_1004C41C8;
  aBlock[4] = &v18;
  v17 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v7 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = ___ZN14InternalClient7wedStopEv_block_invoke_90;
  v13[3] = &__block_descriptor_tmp_93;
  v13[4] = this;
  if (v5)
  {
    v14 = _Block_copy(v5);
    object = v7;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = 0;
  object = v7;
  if (v7)
  {
LABEL_7:
    dispatch_retain(v7);
  }

LABEL_8:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(this, v13);
  if (v4)
  {
    v8 = dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v9 = v19;
    if (v8)
    {
      *(v19 + 24) = 1;
    }
  }

  else
  {
    v9 = v19;
  }

  v10 = *(v9 + 24);
  if (v10 == 9)
  {
    v11 = 14;
  }

  else
  {
    v11 = 3;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v7)
  {
    dispatch_release(v7);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  _Block_object_dispose(&v18, 8);
}

void ___ZN14InternalClient7wedStopEv_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "wedStop_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient7wedStopEv_block_invoke_90(InternalIPCAPI *a1)
{
  v2 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(v2 + 32), *(v2 + 40));
    v3 = *(a1 + 5);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(v2 + 32);
    v3 = *(a1 + 5);
    if (!v3)
    {
LABEL_6:
      v4 = *(a1 + 6);
      if (v4)
      {
        dispatch_retain(v4);
      }

      InternalIPCAPI::interface_wed_stop_handler();
    }
  }

  _Block_copy(v3);
  goto LABEL_6;
}

void sub_100113978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void InternalClient::scan(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 1;
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient4scanE8Ctr_scan_block_invoke;
  aBlock[3] = &unk_1004C4230;
  aBlock[4] = v12;
  aBlock[5] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v6 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[6] = v4;
  aBlock[7] = v6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 16);
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Starting Scan of Type %d \n", buf, 8u);
  }

  v8 = *(a2 + 8);
  buf[23] = 12;
  v14 = buf;
  strcpy(buf, "channel_mask");
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v10, buf);
  operator new();
}

void sub_100114430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, dispatch_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14InternalClient4scanE8Ctr_scan_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "scan_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient4scanE8Ctr_scan_block_invoke_98(InternalIPCAPI *a1)
{
  v1 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  operator new();
}

void sub_100114700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14InternalClient4scanE8Ctr_scan_block_invoke_106(uint64_t a1)
{
  v2 = *(a1 + 32);
  InternalIPCAPI::getInstance(a1);
  std::map<std::string,boost::any>::map[abi:ne200100](v6, (a1 + 40));
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(v2 + 32), *(v2 + 40));
  }

  else
  {
    v5 = *(v2 + 32);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_copy(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_retain(v4);
  }

  InternalIPCAPI::interface_discover_scan_start_handler();
}

void sub_100114870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, char *a18)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

void ___ZN14InternalClient4scanE8Ctr_scan_block_invoke_111(InternalIPCAPI *a1)
{
  v1 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  operator new();
}

void sub_1001149DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void InternalClient::join(uint64_t a1, void *a2)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 1;
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient4joinE8Ctr_join_block_invoke;
  aBlock[3] = &unk_1004C42F8;
  aBlock[4] = v13;
  aBlock[5] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v6 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[6] = v4;
  aBlock[7] = v6;
  if (*a2)
  {
    v9 = 6;
    strcpy(__p, "method");
    v7[0] = __p;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v11, __p);
    operator new();
  }

  operator new();
}

void sub_100115420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, dispatch_object_t object, char a38)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a38);
  if (object)
  {
    dispatch_release(object);
    if (!v38)
    {
LABEL_4:
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v39 - 168, *(v39 - 160));
      _Block_object_dispose((v39 - 144), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_4;
  }

  dispatch_release(v38);
  goto LABEL_4;
}

void ___ZN14InternalClient4joinE8Ctr_join_block_invoke(uint64_t a1, int a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "join_block_invoke";
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received callback for %s with status %d", &v6, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient4joinE8Ctr_join_block_invoke_121(InternalIPCAPI *a1)
{
  v1 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  operator new();
}

void sub_10011576C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void InternalClient::joiner(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
}

void InternalClient::resume(InternalClient *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
}

void InternalClient::reset(InternalClient *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient5resetEb_block_invoke;
  aBlock[3] = &unk_1004C4360;
  aBlock[4] = &v24;
  v23 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v9 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Hard Resetting RCP. . .\n", buf, 2u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = ___ZN14InternalClient5resetEb_block_invoke_132;
    v15[3] = &__block_descriptor_tmp_135;
    v15[4] = this;
    if (v7)
    {
      v16 = _Block_copy(v7);
      object = v9;
      if (!v9)
      {
LABEL_11:
        ctu::SharedSynchronizable<InternalClient>::execute_wrapped(this, v15);
        if (object)
        {
          dispatch_release(object);
        }

        if (v16)
        {
          _Block_release(v16);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v16 = 0;
      object = v9;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    dispatch_retain(v9);
    goto LABEL_11;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Resetting RCP. . .\n", buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1174405120;
  v18[2] = ___ZN14InternalClient5resetEb_block_invoke_128;
  v18[3] = &__block_descriptor_tmp_131_0;
  v18[4] = this;
  if (!v7)
  {
    v19 = 0;
    v20 = v9;
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v19 = _Block_copy(v7);
  v20 = v9;
  if (v9)
  {
LABEL_19:
    dispatch_retain(v9);
  }

LABEL_20:
  ctu::SharedSynchronizable<InternalClient>::execute_wrapped(this, v18);
  if (v20)
  {
    dispatch_release(v20);
  }

  if (v19)
  {
    _Block_release(v19);
  }

LABEL_24:
  if (v6)
  {
    v11 = dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v25;
    if (v11)
    {
      *(v25 + 24) = 1;
    }
  }

  else
  {
    v12 = v25;
  }

  v13 = *(v12 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  *a3 = v14;
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  _Block_object_dispose(&v24, 8);
}

void ___ZN14InternalClient5resetEb_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "reset_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s with status=%d", &v4, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void ___ZN14InternalClient5resetEb_block_invoke_128(InternalIPCAPI *a1)
{
  v2 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(v2 + 32), *(v2 + 40));
    v3 = *(a1 + 5);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(v2 + 32);
    v3 = *(a1 + 5);
    if (!v3)
    {
LABEL_6:
      v4 = *(a1 + 6);
      if (v4)
      {
        dispatch_retain(v4);
      }

      InternalIPCAPI::interface_reset_handler();
    }
  }

  _Block_copy(v3);
  goto LABEL_6;
}

void sub_100115CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN14InternalClient5resetEb_block_invoke_132(InternalIPCAPI *a1)
{
  v2 = *(a1 + 4);
  Instance = InternalIPCAPI::getInstance(a1);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(v2 + 32), *(v2 + 40));
    v4 = *(a1 + 5);
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = *(v2 + 32);
  v4 = *(a1 + 5);
  if (v4)
  {
LABEL_5:
    v4 = _Block_copy(v4);
  }

LABEL_6:
  v5 = *(a1 + 6);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  InternalIPCAPI::interface_hard_reset_handler(Instance, &v8, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_100115DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void InternalClient::generatePSKc(uint64_t a1, void *a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 1;
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient12generatePSKcE16Ctr_generatePSKcPN5boost3anyE_block_invoke;
  aBlock[3] = &unk_1004C43F8;
  aBlock[4] = v13;
  aBlock[5] = a3;
  aBlock[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v8 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[7] = v6;
  aBlock[8] = v8;
  if (*a2)
  {
    if (a2[2])
    {
      v16 = 6;
      strcpy(&__dst, "method");
      __p = &__dst;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v11, &__dst);
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_100116720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, dispatch_object_t object, char a33, uint64_t a34, char a35, char *a36)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a33);
  if (object)
  {
    dispatch_release(object);
    if (!v36)
    {
LABEL_4:
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a35, a36);
      _Block_object_dispose((v37 - 192), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_4;
  }

  dispatch_release(v36);
  goto LABEL_4;
}

void ___ZN14InternalClient12generatePSKcE16Ctr_generatePSKcPN5boost3anyE_block_invoke(uint64_t a1, int a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "generatePSKc_block_invoke";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received callback for %s : status=%d", &v9, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = *(a1 + 40);
  if (!*a3)
  {
    v8 = *v6;
    *v6 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = (*(**a3 + 24))(*a3);
  v8 = *v6;
  *v6 = v7;
  if (v8)
  {
LABEL_5:
    (*(*v8 + 8))(v8);
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 48));
}

void ___ZN14InternalClient12generatePSKcE16Ctr_generatePSKcPN5boost3anyE_block_invoke_142(InternalIPCAPI *a1)
{
  v1 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  operator new();
}

void sub_100116AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void InternalClient::signal_property_changed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    *buf = 136315138;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Signaling Property change for key: %s. . .\n", buf, 0xCu);
  }

  Instance = InternalIPCAPI::getInstance(v5);
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = Instance;
    std::string::__init_copy_ctor_external(&__p, v8, v9);
    Instance = v10;
  }

  else
  {
    __p = *a2;
  }

  InternalIPCAPI::signal_property_changed(Instance, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100116C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void InternalClient::getNCPStatus(InternalClient *this, any *a2)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 1;
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN14InternalClient12getNCPStatusEPN5boost3anyE_block_invoke;
  aBlock[3] = &unk_1004C4460;
  aBlock[4] = v12;
  aBlock[5] = a2;
  aBlock[6] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v6 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[7] = v4;
  aBlock[8] = v6;
  v8 = 6;
  strcpy(&__p, "method");
  p_p = &__p;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v10, &__p);
  operator new();
}

void sub_100117040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, dispatch_object_t object, char a33)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a33);
  if (object)
  {
    dispatch_release(object);
    if (!v33)
    {
LABEL_4:
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v34 - 152, *(v34 - 144));
      _Block_object_dispose((v34 - 128), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_4;
  }

  dispatch_release(v33);
  goto LABEL_4;
}

void ___ZN14InternalClient12getNCPStatusEPN5boost3anyE_block_invoke(uint64_t a1, char a2, any *a3)
{
  any_to_string(a3, &__p);
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = *(a1 + 40);
  if (a3->var0)
  {
    v7 = (*(*a3->var0 + 24))(a3->var0);
    v8 = *v6;
    *v6 = v7;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = *v6;
  *v6 = 0;
  if (v8)
  {
LABEL_3:
    (*(*v8 + 8))(v8);
  }

LABEL_4:
  dispatch_group_leave(*(a1 + 48));
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001171C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14InternalClient12getNCPStatusEPN5boost3anyE_block_invoke_150(InternalIPCAPI *a1)
{
  v1 = *(a1 + 4);
  InternalIPCAPI::getInstance(a1);
  operator new();
}

void sub_100117318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001174DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<InternalClient>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

InternalClient *std::__shared_ptr_pointer<InternalClient *,std::shared_ptr<InternalClient>::__shared_ptr_default_delete<InternalClient,InternalClient>,std::allocator<InternalClient>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    InternalClient::~InternalClient(result);

    operator delete();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<InternalClient *,std::shared_ptr<InternalClient>::__shared_ptr_default_delete<InternalClient,InternalClient>,std::allocator<InternalClient>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000010044759CLL)
  {
    if (((v2 & 0x800000010044759CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000010044759CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000010044759CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

InternalClient **std::unique_ptr<InternalClient>::~unique_ptr[abi:ne200100](InternalClient **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    InternalClient::~InternalClient(v2);
    operator delete();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>> *,std::shared_ptr<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>::__shared_ptr_default_delete<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>,std::allocator<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::destroy(*(result + 24), *(v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>> *,std::shared_ptr<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>::__shared_ptr_default_delete<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>,std::allocator<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001004476EELL)
  {
    if (((v2 & 0x80000001004476EELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001004476EELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004476EELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a2 + 7);
    if (v5)
    {
      _Block_release(v5);
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

uint64_t *std::unique_ptr<std::map<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::destroy(v1, *(v1 + 8));
    operator delete();
  }

  return result;
}

void ctu::SharedSynchronizable<InternalClient>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14InternalClientE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1004C4568;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14InternalClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14InternalClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
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

void sub_100117BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(boost::any)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void,0>(*(a1 + 8), v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HostInterpreter::ProcessSendNetworkDiagnostics(HostInterpreter *this, unsigned __int8 a2, char **a3, unsigned __int8 *__src)
{
  memcpy(v14, __src, *(__src + 16));
  otIp6AddressToString(v14, v18, 48);
  v6 = otThreadSendDiagnosticGet(*(this + 28), v14, __src + 16, __src[34], HostInterpreter::HandleDiagnosticGetResponse, this);
  v7 = v6;
  if (v6 > 6)
  {
    if (v6 == 13)
    {
      v10 = 4;
    }

    else
    {
      v10 = 1;
    }

    if (v6 == 7)
    {
      v8 = 2;
    }

    else
    {
      v8 = v10;
    }

    v9 = *(__src + 5);
    if (v9)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (!v6)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        v13 = *(__src + 17);
        *buf = 136315394;
        *&buf[4] = v18;
        v16 = 1024;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM HostInterpreter::ProcessSendNetworkDiagnostics Sent network diagnostic get cmd to:%s tlv_len:%d", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v8 = 0;
    v9 = *(__src + 5);
    if (v9)
    {
      goto LABEL_15;
    }

LABEL_23:
    std::runtime_error::runtime_error(buf, "call to empty boost::function");
    *buf = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(buf);
  }

  if (v6 == 5)
  {
    v8 = 9;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(__src + 5);
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_15:
  (*((v9 & 0xFFFFFFFFFFFFFFFELL) + 8))(__src + 48, v8);
  return v7;
}

uint64_t HostInterpreter::ProcessDatasetUpdate(HostInterpreter *this, unsigned __int8 a2, char **a3, unsigned int *a4)
{
  if (*a4 == 1)
  {
    PendingTlvs = otDatasetGetPendingTlvs(*(this + 28), v13);
    if (!PendingTlvs)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessDatasetUpdate(v13);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      if (v14)
      {
        dskeychainRcp::AddDataSet(1u, v13, v14);
      }

      else
      {
        dskeychainRcp::DeleteDataSet(1u);
      }

      return 0;
    }
  }

  else
  {
    if (*a4)
    {
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7)
      {
        v8 = v7;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessDatasetUpdate();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      PendingTlvs = 7;
      goto LABEL_18;
    }

    PendingTlvs = otDatasetGetActiveTlvs(*(this + 28), v13);
    if (!PendingTlvs)
    {
      v6 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v6)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HI:DatasetUpdate: Active Dataset Len[%d]", buf, 8u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      if (v14)
      {
        dskeychainRcp::AddDataSet(0, v13, v14);
      }

      else
      {
        dskeychainRcp::DeleteDataSet(0);
      }

      buf[23] = 20;
      strcpy(buf, "ActiveDataSetChanged");
      operator new();
    }
  }

  if (PendingTlvs == 23)
  {
    dskeychainRcp::DeleteDataSet(*a4);
    return 0;
  }

LABEL_18:
  v9 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v9)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessDatasetUpdate(a4);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return PendingTlvs;
}

void sub_1001181C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessDiscoverScan(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  v70 = 16;
  strcpy(__s1, "Scan:ChannelMask");
  v6 = a4[1];
  if (!v6)
  {
LABEL_20:
    v66 = 0;
    goto LABEL_29;
  }

  v7 = a4[1];
  while (1)
  {
    v8 = *(v7 + 55);
    if (v8 >= 0)
    {
      v9 = *(v7 + 55);
    }

    else
    {
      v9 = v7[5];
    }

    if (v8 >= 0)
    {
      v10 = (v7 + 4);
    }

    else
    {
      v10 = v7[4];
    }

    if (v9 >= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = v9;
    }

    v12 = memcmp(__s1, v10, v11);
    v13 = v12 < 0;
    if (!v12)
    {
      v13 = v9 > 0x10;
    }

    if (v13)
    {
      goto LABEL_3;
    }

    v14 = memcmp(v10, __s1, v11);
    v15 = v9 < 0x10;
    if (v14)
    {
      v15 = v14 < 0;
    }

    if (!v15)
    {
      break;
    }

    ++v7;
LABEL_3:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  v70 = 16;
  strcpy(__s1, "Scan:ChannelMask");
  v68.__vftable = __s1;
  v16 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1);
  v17 = v16[7];
  if (v17)
  {
    v18 = (*(*v17 + 16))(v17);
  }

  else
  {
  }

  v19 = (v18[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v19 != v20 && strcmp(v19, v20))
  {
    v68.__vftable = 0;
    std::bad_cast::bad_cast(&v68);
    v68.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  v66 = *(v16[7] + 8);
  if (v70 < 0)
  {
    operator delete(*__s1);
  }

  v6 = a4[1];
LABEL_29:
  v70 = 10;
  strcpy(__s1, "Scan:PANID");
  if (!v6)
  {
LABEL_48:
    v65 = -1;
    goto LABEL_57;
  }

  v21 = v6;
  while (2)
  {
    v22 = *(v21 + 55);
    if (v22 >= 0)
    {
      v23 = *(v21 + 55);
    }

    else
    {
      v23 = v21[5];
    }

    if (v22 >= 0)
    {
      v24 = (v21 + 4);
    }

    else
    {
      v24 = v21[4];
    }

    if (v23 >= 0xA)
    {
      v25 = 10;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(__s1, v24, v25);
    v27 = v26 < 0;
    if (!v26)
    {
      v27 = v23 > 0xA;
    }

    if (v27)
    {
LABEL_31:
      v21 = *v21;
      if (!v21)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  v28 = memcmp(v24, __s1, v25);
  v29 = v23 < 0xA;
  if (v28)
  {
    v29 = v28 < 0;
  }

  if (v29)
  {
    ++v21;
    goto LABEL_31;
  }

  v70 = 10;
  v68.__vftable = __s1;
  strcpy(__s1, "Scan:PANID");
  v30 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1);
  v31 = v30[7];
  if (v31)
  {
    v32 = (*(*v31 + 16))(v31);
  }

  else
  {
  }

  v33 = (v32[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v33 != v34 && strcmp(v33, v34))
  {
    v68.__vftable = 0;
    std::bad_cast::bad_cast(&v68);
    v68.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  v65 = *(v30[7] + 8);
  if (v70 < 0)
  {
    operator delete(*__s1);
  }

  v6 = a4[1];
LABEL_57:
  v70 = 20;
  strcpy(__s1, "Scan:EnableFiltering");
  v67 = a4;
  if (v6)
  {
    v35 = v6;
    do
    {
      v36 = *(v35 + 55);
      if (v36 >= 0)
      {
        v37 = *(v35 + 55);
      }

      else
      {
        v37 = v35[5];
      }

      if (v36 >= 0)
      {
        v38 = (v35 + 4);
      }

      else
      {
        v38 = v35[4];
      }

      if (v37 >= 0x14)
      {
        v39 = 20;
      }

      else
      {
        v39 = v37;
      }

      v40 = memcmp(__s1, v38, v39);
      v41 = v40 < 0;
      if (!v40)
      {
        v41 = v37 > 0x14;
      }

      if (!v41)
      {
        v42 = memcmp(v38, __s1, v39);
        v43 = v37 < 0x14;
        if (v42)
        {
          v43 = v42 < 0;
        }

        if (!v43)
        {
          v70 = 20;
          strcpy(__s1, "Scan:EnableFiltering");
          v68.__vftable = __s1;
          v46 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1);
          v47 = any_to_BOOL(v46 + 7);
          if (v70 < 0)
          {
            v48 = v47;
            operator delete(*__s1);
            v47 = v48;
          }

          v45 = v47;
          v44 = this;
          v6 = v67[1];
          goto LABEL_80;
        }

        ++v35;
      }

      v35 = *v35;
    }

    while (v35);
  }

  v44 = this;
  v45 = 0;
LABEL_80:
  v70 = 15;
  strcpy(__s1, "Scan:JoinerFlag");
  if (!v6)
  {
LABEL_99:
    v57 = 0;
    goto LABEL_100;
  }

  while (2)
  {
    v49 = *(v6 + 55);
    if (v49 >= 0)
    {
      v50 = *(v6 + 55);
    }

    else
    {
      v50 = v6[5];
    }

    if (v49 >= 0)
    {
      v51 = v6 + 4;
    }

    else
    {
      v51 = v6[4];
    }

    if (v50 >= 0xF)
    {
      v52 = 15;
    }

    else
    {
      v52 = v50;
    }

    v53 = memcmp(__s1, v51, v52);
    v54 = v53 < 0;
    if (!v53)
    {
      v54 = v50 > 0xF;
    }

    if (v54)
    {
LABEL_82:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_99;
      }

      continue;
    }

    break;
  }

  v55 = memcmp(v51, __s1, v52);
  v56 = v50 < 0xF;
  if (v55)
  {
    v56 = v55 < 0;
  }

  if (v56)
  {
    ++v6;
    goto LABEL_82;
  }

  v70 = 15;
  strcpy(__s1, "Scan:JoinerFlag");
  v68.__vftable = __s1;
  v63 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v67, __s1);
  v57 = any_to_BOOL(v63 + 7);
  if (v70 < 0)
  {
    v64 = v57;
    operator delete(*__s1);
    v57 = v64;
  }

LABEL_100:
  v58 = otThreadDiscover(*(v44 + 28), v66, v65, v57, v45, HostInterpreter::HandleActiveScanResultFromBeacon, v44);
  v59 = v58;
  if (v58)
  {
    v60 = v67[3];
    if (!v60)
    {
      std::runtime_error::runtime_error(__s1, "call to empty boost::function");
      *__s1 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(__s1);
    }

    (*((v60 & 0xFFFFFFFFFFFFFFFELL) + 8))(v67 + 4, v58);
    TaskQueueWrapper::pop_front(RcpHostContext::sRcpHostContext);
  }

  else
  {
    mNetScanCmdApiData = v67;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *__s1 = 67109120;
      *&__s1[4] = v59;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "HI:DiscoverScan error = %d", __s1, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return v59;
}

void sub_100118980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::bad_cast a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::bad_cast::~bad_cast(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessEnergyScan(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  v43 = 16;
  strcpy(__s1, "Scan:ChannelMask");
  v6 = *(a4 + 1);
  if (v6)
  {
    v7 = *(a4 + 1);
    do
    {
      v8 = *(v7 + 55);
      if (v8 >= 0)
      {
        v9 = *(v7 + 55);
      }

      else
      {
        v9 = v7[5];
      }

      if (v8 >= 0)
      {
        v10 = (v7 + 4);
      }

      else
      {
        v10 = v7[4];
      }

      if (v9 >= 0x10)
      {
        v11 = 16;
      }

      else
      {
        v11 = v9;
      }

      v12 = memcmp(__s1, v10, v11);
      v13 = v12 < 0;
      if (!v12)
      {
        v13 = v9 > 0x10;
      }

      if (!v13)
      {
        v14 = memcmp(v10, __s1, v11);
        v15 = v9 < 0x10;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (!v15)
        {
          v43 = 16;
          strcpy(__s1, "Scan:ChannelMask");
          v41.__vftable = __s1;
          v17 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1);
          v18 = v17[7];
          if (v18)
          {
            v19 = (*(*v18 + 16))(v18);
          }

          else
          {
          }

          v20 = (v19[1] & 0x7FFFFFFFFFFFFFFFLL);
          if (v20 != v21 && strcmp(v20, v21))
          {
            v41.__vftable = 0;
            std::bad_cast::bad_cast(&v41);
            v41.__vftable = off_1004C1D50;
            boost::throw_exception<boost::bad_any_cast>();
          }

          v16 = *(v17[7] + 8);
          if (v43 < 0)
          {
            operator delete(*__s1);
          }

          v6 = *(a4 + 1);
          goto LABEL_29;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v16 = 0;
LABEL_29:
  v43 = 11;
  strcpy(__s1, "Scan:Period");
  if (!v6)
  {
LABEL_48:
    v30 = 0;
    goto LABEL_49;
  }

  while (1)
  {
    v22 = *(v6 + 55);
    if (v22 >= 0)
    {
      v23 = *(v6 + 55);
    }

    else
    {
      v23 = v6[5];
    }

    if (v22 >= 0)
    {
      v24 = (v6 + 4);
    }

    else
    {
      v24 = v6[4];
    }

    if (v23 >= 0xB)
    {
      v25 = 11;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(__s1, v24, v25);
    v27 = v26 < 0;
    if (!v26)
    {
      v27 = v23 > 0xB;
    }

    if (v27)
    {
      goto LABEL_31;
    }

    v28 = memcmp(v24, __s1, v25);
    v29 = v23 < 0xB;
    if (v28)
    {
      v29 = v28 < 0;
    }

    if (!v29)
    {
      break;
    }

    ++v6;
LABEL_31:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_48;
    }
  }

  v43 = 11;
  v41.__vftable = __s1;
  strcpy(__s1, "Scan:Period");
  v35 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1);
  v36 = v35[7];
  if (v36)
  {
    v37 = (*(*v36 + 16))(v36);
  }

  else
  {
  }

  v38 = (v37[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v38 != v39 && strcmp(v38, v39))
  {
    v41.__vftable = 0;
    std::bad_cast::bad_cast(&v41);
    v41.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  v30 = *(v35[7] + 8);
  if (v43 < 0)
  {
    v40 = *(v35[7] + 8);
    operator delete(*__s1);
    v30 = v40;
  }

LABEL_49:
  v31 = otLinkEnergyScan(*(this + 28), v16, v30, HostInterpreter::HandleEnergyScanResult, this);
  if (v31)
  {
    v32 = *(a4 + 3);
    if (!v32)
    {
      std::runtime_error::runtime_error(__s1, "call to empty boost::function");
      *__s1 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(__s1);
    }

    (*((v32 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 32, v31);
    TaskQueueWrapper::pop_front(RcpHostContext::sRcpHostContext);
  }

  else
  {
    mEnergyScanCmdApiData = a4;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *__s1 = 67109120;
      *&__s1[4] = v31;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "HI:EnergyScan error=%d", __s1, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return v31;
}

void sub_100118EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::bad_cast::~bad_cast(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessForm(HostInterpreter *this, unsigned __int8 a2, char **a3, _BYTE *a4)
{
  *__str = 0u;
  v77 = 0u;
  memset(&v67, 0, sizeof(v67));
  gettimeofday(&v66, 0);
  tv_sec = v66.tv_sec;
  v74 = 0;
  v73 = 0u;
  v71 = 0u;
  memset(v72, 0, sizeof(v72));
  *(&__p.__r_.__value_.__s + 23) = 17;
  memset(v70, 0, sizeof(v70));
  strcpy(&__p, "Thread:DeviceMode");
  v63[0].__vftable = &__p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__p.__r_.__value_.__l.__data_);
  if (*(v7 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v7[7], v7[8]);
  }

  else
  {
    v65 = *(v7 + 7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_6:
    v64 = v65;
    goto LABEL_9;
  }

  std::string::__init_copy_ctor_external(&v64, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
LABEL_9:
  v8 = HostInterpreter::DeviceModeConfig(this, &v64);
  NewNetwork = v8;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
    if (NewNetwork)
    {
      goto LABEL_28;
    }
  }

  else if (v8)
  {
    goto LABEL_28;
  }

  v10 = *(this + 28);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
        *(__p.__r_.__value_.__r.__words + 4) = "ProcessForm";
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Thread Start Indication sent", &__p, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    started = otPlatVendorSetVendorThreadStartStop(*(this + 28), 1);
    if (started)
    {
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "ProcessForm";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = started;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: otPlatVendorSetVendorThreadStartStop Error: %d", &__p, 0x12u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }
  }

  NewNetwork = otDatasetCreateNewNetwork(*(this + 28), v70);
  if (NewNetwork)
  {
    goto LABEL_28;
  }

  BYTE8(v73) = 1;
  *&v70[0] = tv_sec;
  WORD4(v70[0]) = 0;
  BYTE10(v70[0]) = 1;
  otThreadGetPskc(*(this + 28), &v75);
  if (vmaxvq_u8(vtstq_s8(v75, v75)))
  {
    *(&v72[3] + 6) = 0;
    *(&v72[2] + 14) = 0;
    otThreadGetPskc(*(this + 28), &v72[2] + 14);
    BYTE1(v74) = 1;
  }

  else
  {
    v23 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v23)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "ProcessForm::pskc not present. Generated new pskc", &__p, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  if (a4[32] == 1)
  {
    *(&__p.__r_.__value_.__s + 23) = 11;
    strcpy(&__p, "NCP:Channel");
    v63[0].__vftable = &__p;
    v20 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_);
    v21 = v20[7];
    if (v21)
    {
      v22 = (*(*v21 + 16))(v21);
    }

    else
    {
    }

    v24 = (v22[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v24 != v25 && strcmp(v24, v25))
    {
      v63[0].__vftable = 0;
      std::bad_cast::bad_cast(v63);
      v63[0].__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    WORD5(v72[2]) = *(v20[7] + 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    LOBYTE(v74) = 1;
  }

  if (a4[31] == 1)
  {
    *(&__p.__r_.__value_.__s + 23) = 13;
    strcpy(&__p, "Network:PANID");
    v63[0].__vftable = &__p;
    v26 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_);
    v27 = v26[7];
    if (v27)
    {
      v28 = (*(*v27 + 16))(v27);
    }

    else
    {
    }

    v29 = (v28[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v29 != v30 && strcmp(v29, v30))
    {
      v63[0].__vftable = 0;
      std::bad_cast::bad_cast(v63);
      v63[0].__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    WORD4(v72[2]) = *(v26[7] + 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    HIBYTE(v73) = 1;
  }

  if (a4[27] == 1)
  {
    HIBYTE(v63[2].__vftable) = 12;
    strcpy(v63, "Network:Name");
    v68 = v63;
    v31 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v63[0].__vftable);
    boost::any_cast<std::string>((v31 + 7), &__p);
    v67 = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v63[2].__vftable) < 0)
    {
      operator delete(v63[0].__vftable);
    }

    memset(v72, 0, 17);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v67;
    }

    else
    {
      v32 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v67.__r_.__value_.__l.__size_;
    }

    memcpy(v72, v32, size);
    BYTE11(v73) = 1;
  }

  if (a4[28] == 1)
  {
    *(&v72[1] + 1) = 0;
    *(&__p.__r_.__value_.__s + 23) = 14;
    strcpy(&__p, "Network:XPANID");
    v63[0].__vftable = &__p;
    v34 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_);
    v35 = v34[7];
    if (v35)
    {
      v36 = (*(*v35 + 16))(v35);
    }

    else
    {
    }

    v37 = (v36[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v37 != v38 && strcmp(v37, v38))
    {
      v63[0].__vftable = 0;
      std::bad_cast::bad_cast(v63);
      v63[0].__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }

    v39 = *(v34[7] + 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    snprintf(__str, 0x20uLL, "%016llx", v39);
    v40 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v40)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
        *(__p.__r_.__value_.__r.__words + 4) = __str;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "::Xpanid = [%s]", &__p, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    NewNetwork = ot::Utils::CmdLineParser::ParseAsHexString(__str, &v72[1] + 1, 8);
    if (!NewNetwork)
    {
      BYTE12(v73) = 1;
      goto LABEL_100;
    }

LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

LABEL_100:
  if (a4[26] != 1)
  {
    v14 = 0;
    goto LABEL_130;
  }

  HIBYTE(v63[2].__vftable) = 11;
  strcpy(v63, "Network:Key");
  v68 = v63;
  v41 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v63[0].__vftable);
  any_to_data(v41 + 7, &__p);
  v42 = __p.__r_.__value_.__l.__size_;
  v14 = __p.__r_.__value_.__r.__words[0];
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(v63[2].__vftable) < 0)
  {
    operator delete(v63[0].__vftable);
  }

  v43 = 2 * (v42 - v14);
  if (v43 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v43 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = 2 * (v42 - v14);
  if (v43)
  {
    bzero(&__p, 2 * (v42 - v14));
  }

  __p.__r_.__value_.__s.__data_[v43] = 0;
  std::string::reserve(&__p, v43 | 1);
  if (v14 == v42)
  {
    v44 = 0;
  }

  else
  {
    v44 = v14;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  encode_data_into_string(v44, v42 - v14, p_p, v46, 0);
  v71 = 0uLL;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &__p;
  }

  else
  {
    v47 = __p.__r_.__value_.__r.__words[0];
  }

  v48 = ot::Utils::CmdLineParser::ParseAsHexString(v47, &v71, 0x10);
  NewNetwork = v48;
  if (v48)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    BYTE10(v73) = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_124:
      if (v48)
      {
        goto LABEL_29;
      }

      goto LABEL_130;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (NewNetwork)
  {
    goto LABEL_29;
  }

LABEL_130:
  if (a4[29] == 1)
  {
    HIBYTE(v63[2].__vftable) = 20;
    strcpy(v63, "IPv6:MeshLocalPrefix");
    v68 = v63;
    v49 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v63[0].__vftable);
    any_to_string(v49 + 7, &__p);
    if (SHIBYTE(v63[2].__vftable) < 0)
    {
      operator delete(v63[0].__vftable);
    }

    v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v51 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = __p.__r_.__value_.__l.__size_;
    }

    if (v50)
    {
      if (v50 >= 5)
      {
        v52 = 4;
        v53 = 4;
        do
        {
          std::string::insert(&__p, v52, ":");
          v53 += 5;
          v52 = v53;
          v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v54 = __p.__r_.__value_.__l.__size_;
          }
        }

        while (v54 > v53);
      }

      std::string::append(&__p, "::");
      v51 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    *(&v72[1] + 9) = 0;
    if (v51 >= 0)
    {
      v55 = &__p;
    }

    else
    {
      v55 = __p.__r_.__value_.__r.__words[0];
    }

    v56 = ot::Utils::CmdLineParser::ParseAsIp6Address(v55, v63);
    NewNetwork = v56;
    if (v56)
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_147;
      }
    }

    else
    {
      *(&v72[1] + 9) = v63[0];
      BYTE13(v73) = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_147:
        if (v56)
        {
          goto LABEL_29;
        }

        goto LABEL_151;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (NewNetwork)
    {
      goto LABEL_29;
    }
  }

LABEL_151:
  NewNetwork = otDatasetSetActive(*(this + 28), v70);
  if (!NewNetwork)
  {
    v57 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v57)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Dataset commit active, Done", &__p, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if ((a4[37] & 1) == 0)
    {
      v59 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v59)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessForm(uint8_t, char **, void *)";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = 794;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s:%d:Network will not be created ", &__p, 0x12u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

LABEL_183:
      NewNetwork = 0;
      v17 = 0;
      v18 = *(a4 + 5);
      if (v18)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    RcpHostContext::init_threadstart_radio_start(RcpHostContext::sRcpHostContext);
    otIp6SetSlaacEnabled(*(this + 28), 1);
    NewNetwork = otIp6SetEnabled(*(this + 28), 1);
    if (!NewNetwork)
    {
      v58 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v58)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Ifconfig up, Done", &__p, 2u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      NewNetwork = otThreadSetEnabled(*(this + 28), 1);
      if (!NewNetwork)
      {
        LinkMode = otThreadGetLinkMode(*(this + 28));
        if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
        {
          otThreadBecomeLeader(*(this + 28), 0);
        }

        v61 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v61)
        {
          is_the_mask_enabled = syslog_is_the_mask_enabled(6);
          if (is_the_mask_enabled)
          {
            is_the_mask_enabled = os_log_type_enabled(v61, OS_LOG_TYPE_INFO);
            if (is_the_mask_enabled)
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
              *(__p.__r_.__value_.__r.__words + 4) = "ProcessForm";
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s Thread start, Done", &__p, 0xCu);
            }
          }
        }

        else
        {
          is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (is_the_mask_enabled)
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        HostInterpreter::transactionEnabled(is_the_mask_enabled, 1);
        goto LABEL_183;
      }
    }
  }

LABEL_29:
  HIDWORD(v16) = NewNetwork - 1;
  LODWORD(v16) = NewNetwork - 1;
  v15 = v16 >> 1;
  if (v15 > 2)
  {
    if (v15 != 6)
    {
      if (v15 == 3)
      {
        v17 = 2;
        NewNetwork = 7;
        v18 = *(a4 + 5);
        if (!v18)
        {
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v17 = 4;
    NewNetwork = 13;
    v18 = *(a4 + 5);
    if (v18)
    {
      goto LABEL_40;
    }

LABEL_37:
    std::runtime_error::runtime_error(&__p, "call to empty boost::function");
    __p.__r_.__value_.__r.__words[0] = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&__p);
  }

  if (!v15)
  {
    NewNetwork = 1;
LABEL_39:
    v17 = 1;
    v18 = *(a4 + 5);
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_40;
  }

  if (v15 != 2)
  {
    goto LABEL_39;
  }

  v17 = 9;
  NewNetwork = 5;
  v18 = *(a4 + 5);
  if (!v18)
  {
    goto LABEL_37;
  }

LABEL_40:
  (*((v18 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 48, v17);
  if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_46:
    operator delete(v67.__r_.__value_.__l.__data_);
    if (!v14)
    {
      return NewNetwork;
    }

    goto LABEL_43;
  }

  operator delete(v65.__r_.__value_.__l.__data_);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  if (v14)
  {
LABEL_43:
    operator delete(v14);
  }

  return NewNetwork;
}

void sub_100119E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::bad_cast a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, _Unwind_Exception *exception_object, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a39 & 0x80000000) == 0)
  {
LABEL_3:
    if (!v48)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(a34);
  if (!v48)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v48);
  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessGeneratePSKc(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  v21 = 11;
  strcpy(v20, "pass_phrase");
  __p[0] = v20;
  v6 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4 + 24, v20);
  v7 = &v22;
  any_to_string(v6 + 7, &v22);
  if (v23 < 0)
  {
    v7 = v22.__vftable;
  }

  v17 = 12;
  strcpy(v16, "network_name");
  v24 = v16;
  v8 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4 + 24, v16);
  any_to_string(v8 + 7, __p);
  v9 = v19;
  v10 = __p[0];
  otThreadGetExtendedPanId(*(this + 28));
  if (v9 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = v10;
  }

  Pskc = otDatasetGeneratePskc(v7, v12, v11, &v25);
  if (v19 < 0)
  {
    operator delete(__p[0]);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v16[0]);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v22.__vftable);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_10:
    if (Pskc)
    {
      goto LABEL_11;
    }

LABEL_19:
    operator new();
  }

LABEL_18:
  operator delete(v20[0]);
  if (!Pskc)
  {
    goto LABEL_19;
  }

LABEL_11:
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessGeneratePSKc();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return Pskc;
}

void sub_10011A360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::runtime_error a19)
{
  std::runtime_error::~runtime_error(&a19);
  (*(*v20 + 8))(v20);
  operator delete(v19);
  _Unwind_Resume(a1);
}

void sub_10011A408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if (a27 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a28);
  if (a27 < 0)
  {
LABEL_5:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessGetRcpCrashDump(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  memset(&v63, 0, sizeof(v63));
  memset(&v62, 0, sizeof(v62));
  *(v61 + 3) = 0;
  v61[0] = 0;
  memset(&v60, 0, sizeof(v60));
  DWORD1(xmmword_1004E5778) = 0;
  FaultInfo = otPlatVendorGetFaultInfo(*(this + 28), &v64);
  if (FaultInfo)
  {
LABEL_2:
    v6 = 0;
    v7 = 0;
    goto LABEL_75;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *buf = 67110400;
      *&buf[4] = v65;
      *&buf[8] = 1024;
      *&buf[10] = DWORD1(v65);
      *&buf[14] = 1024;
      LODWORD(v67) = v64;
      WORD2(v67) = 1024;
      *(&v67 + 6) = WORD4(v65);
      WORD5(v67) = 1024;
      HIDWORD(v67) = DWORD1(v64);
      v68 = 2048;
      v69 = *(&v64 + 1);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Fatal info address = %u line = %u random_id = %u crash_count = %u crash_type = %u time_stamp = %llu", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (SDWORD1(v64) <= 1)
  {
    if (!DWORD1(v64))
    {
      v9 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v9)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
LABEL_56:
          [PowerEventHandler_Rcp init:];
        }

LABEL_74:
        v6 = 0;
        v7 = 0;
        FaultInfo = 0;
        goto LABEL_75;
      }

      if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_74;
      }

      *buf = 0;
      v10 = "ProcessGetFaultInfo: Fault info: NONE";
LABEL_71:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
      goto LABEL_74;
    }

    if (DWORD1(v64) == 1)
    {
      std::string::assign(&v63, "assert_dump_");
      v11 = "E_NCP_RESET_CAUSE_ASSERT";
      DWORD1(xmmword_1004E5778) = 1;
      goto LABEL_27;
    }
  }

  else
  {
    switch(DWORD1(v64))
    {
      case 2:
        std::string::assign(&v63, "fault_dump_");
        v11 = "E_NCP_RESET_CAUSE_HARD_FAULT";
        DWORD1(xmmword_1004E5778) = 2;
        goto LABEL_27;
      case 3:
        std::string::assign(&v63, "stackoverflow_dump_");
        v11 = "E_NCP_RESET_CAUSE_STACK_OVERFLOW";
        DWORD1(xmmword_1004E5778) = 3;
        goto LABEL_27;
      case 0xFF:
        v9 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v9)
        {
          if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_74;
          }

          *buf = 0;
          v10 = "ProcessGetFaultInfo: Fault info: UNINITIALIZED";
          goto LABEL_71;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        goto LABEL_74;
    }
  }

  std::string::assign(&v63, "unknown_dump_");
  v11 = "E_NCP_RESET_CAUSE_OTHER";
LABEL_27:
  std::string::assign(&v60, v11);
  *&xmmword_1004E5788 = v65;
  WORD4(xmmword_1004E5788) = WORD4(v65);
  LODWORD(xmmword_1004E5778) = v64;
  *(&xmmword_1004E5778 + 1) = *(&v64 + 1);
  HostInterpreter::save_awd_stability_counters(this);
  FaultInfo = otPlatVendorGetVersion(*(this + 28), __s, 500);
  std::string::assign(&v62, __s);
  if (FaultInfo)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessGetRcpCrashDump();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    goto LABEL_2;
  }

  v13 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v13)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = __s;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "RCP crashed: Vendor version = %s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v62;
  }

  else
  {
    v14 = v62.__r_.__value_.__r.__words[0];
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v62.__r_.__value_.__l.__size_;
  }

  if (size < 5)
  {
    goto LABEL_67;
  }

  v16 = v14 + size;
  v17 = size;
  v18 = v14;
  while (1)
  {
    v19 = memchr(v18, 68, v17 - 4);
    if (!v19)
    {
      goto LABEL_67;
    }

    if (*v19 == 1430406468 && v19[4] == 71)
    {
      break;
    }

    v18 = (v19 + 1);
    v17 = v16 - v18;
    if (v16 - v18 < 5)
    {
      goto LABEL_67;
    }
  }

  if (v19 == v16 || v19 - v14 == -1)
  {
LABEL_67:
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      goto LABEL_74;
    }

    if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_74;
    }

    *buf = 0;
    v10 = "Crash dump support only present in DEBUG FW version";
    goto LABEL_71;
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v63.__r_.__value_.__l.__size_;
  }

  if (size + v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (size + v21 > 0x16)
  {
    operator new();
  }

  *&v67 = 0;
  memset(buf, 0, sizeof(buf));
  BYTE7(v67) = size + v21;
  if (v21)
  {
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v63;
    }

    else
    {
      v23 = v63.__r_.__value_.__r.__words[0];
    }

    memmove(buf, v23, v21);
  }

  v24 = &buf[v21];
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v62;
  }

  else
  {
    v25 = v62.__r_.__value_.__r.__words[0];
  }

  memmove(v24, v25, size);
  v24[size] = 0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v63.__r_.__value_.__r.__words[2] = v67;
  *&v63.__r_.__value_.__l.__data_ = *buf;
  if (SBYTE7(v67) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = v63;
  }

  new_crash_dump_file = create_new_crash_dump_file(__src, 250, &v59);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    v27 = new_crash_dump_file;
    operator delete(v59.__r_.__value_.__l.__data_);
    new_crash_dump_file = v27;
  }

  if ((new_crash_dump_file & 1) == 0)
  {
    v30 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v30)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        FaultInfo = 1;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Failed to create crash dump file", buf, 2u);
        }

        goto LABEL_2;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v6 = 0;
    v7 = 0;
    FaultInfo = 1;
    goto LABEL_75;
  }

  v28 = strlen(__src);
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v29 = v28;
  if (v28 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v28;
  if (v28)
  {
    memcpy(&__dst, __src, v28);
  }

  __dst.__r_.__value_.__s.__data_[v29] = 0;
  v31 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v57 = __dst;
  }

  FaultInfo = HostInterpreter::SaveCrashLogs(this, &v57);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (!FaultInfo)
  {
    v33 = xmmword_1004E5778;
    std::to_string(&v53, xmmword_1004E5788);
    v34 = std::string::insert(&v53, 0, "{ADDRESS=");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v54, ";");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v55, "LINE=");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v52, DWORD1(xmmword_1004E5788));
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v52;
    }

    else
    {
      v40 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v41 = v52.__r_.__value_.__l.__size_;
    }

    v42 = std::string::append(&v56, v40, v41);
    v43 = *&v42->__r_.__value_.__l.__data_;
    *&v67 = *(&v42->__r_.__value_.__l + 2);
    *buf = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(buf, "}");
    v6 = v44->__r_.__value_.__r.__words[0];
    v45 = v44->__r_.__value_.__l.__size_;
    v61[0] = v44->__r_.__value_.__r.__words[2];
    *(v61 + 3) = *(&v44->__r_.__value_.__r.__words[2] + 3);
    v46 = SHIBYTE(v44->__r_.__value_.__r.__words[2]);
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_131:
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_132;
        }

        goto LABEL_143;
      }
    }

    else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

    operator delete(v52.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_132:
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_144;
    }

LABEL_143:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_133:
      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_145;
    }

LABEL_144:
    operator delete(v55.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_134:
      if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_135;
      }

LABEL_146:
      operator delete(v53.__r_.__value_.__l.__data_);
LABEL_135:
      if (v46 < 0)
      {
        std::string::__init_copy_ctor_external(&v49, v6, v45);
      }

      else
      {
        v49.__r_.__value_.__r.__words[0] = v6;
        v49.__r_.__value_.__l.__size_ = v45;
        LODWORD(v49.__r_.__value_.__r.__words[2]) = v61[0];
        *(&v49.__r_.__value_.__r.__words[2] + 3) = *(v61 + 3);
        *(&v49.__r_.__value_.__s + 23) = v46;
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v60;
      }

      v51 = v33 == -559038737;
      analytics_send_event_lazy();
      if (v33 != -559038737)
      {
        *buf = xmmword_1004E5778;
        v67 = xmmword_1004E5788;
        AWDMetricsClient_TriggerAutoBugCapture();
      }

      v64 = 0u;
      v65 = 0u;
      v47 = *(this + 28);
      FaultInfo = otPlatVendorSetFaultInfo();
      if (!FaultInfo)
      {
        v48 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v48)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Reset the fault info", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_156:
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_140;
        }
      }

      else if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_156;
      }

      operator delete(v49.__r_.__value_.__l.__data_);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_140;
    }

LABEL_145:
    operator delete(v54.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_146;
  }

  v32 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v32)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessGetRcpCrashDump();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v6 = 0;
  v46 = 0;
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_157;
  }

LABEL_140:
  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_157:
  v7 = v46 < 0;
LABEL_75:
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
    if (v7)
    {
LABEL_77:
      operator delete(v6);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_78;
      }

LABEL_82:
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return FaultInfo;
      }

      goto LABEL_79;
    }
  }

  else if (v7)
  {
    goto LABEL_77;
  }

  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

LABEL_78:
  operator delete(v62.__r_.__value_.__l.__data_);
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_79:
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  return FaultInfo;
}

void sub_10011B0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v70 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v70 & 0x80000000) == 0)
  {
LABEL_6:
    if (a56 < 0)
    {
      operator delete(a51);
      if (v71 >= 0)
      {
        goto LABEL_8;
      }
    }

    else if (v71 >= 0)
    {
LABEL_8:
      if (a63 < 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    operator delete(v69);
    if (a63 < 0)
    {
LABEL_9:
      operator delete(a58);
      if ((a69 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_13:
    if ((a69 & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_14:
    operator delete(a64);
    _Unwind_Resume(a1);
  }

  operator delete(a45);
  goto LABEL_6;
}

void HostInterpreter::ProcessInitialize(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "HI:ProcessInitialize", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  RcpHostContext::clear_threadstart_metrics(RcpHostContext::sRcpHostContext);
  if (FillmoreControllerGetTmac(v33))
  {
    v6 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v6)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "tmac:MG Read success", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v9 = otPlatVendorSetAssignedHwMac(*(this + 28), v33);
    if (v9)
    {
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v9;
          v11 = "tmac: set in RCP2 failed ret=[%d]";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 8u);
          goto LABEL_55;
        }

        goto LABEL_55;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    *__str = 0;
    AssignedHwMac = otPlatVendorGetAssignedHwMac(*(this + 28), __str);
    if (AssignedHwMac)
    {
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = AssignedHwMac;
          v11 = "tmac:read from RCP2 fail ret=[%d]";
          goto LABEL_31;
        }

LABEL_55:
        v32 = 0;
        if (otPlatVendorGetAssignedHwMac(*(this + 28), &v32))
        {
          v14 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v14)
          {
            if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              HostInterpreter::ProcessInitialize();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        snprintf(__str, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v32, BYTE1(v32), BYTE2(v32), BYTE3(v32), BYTE4(v32), BYTE5(v32), BYTE6(v32), HIBYTE(v32));
        std::string::assign((RcpHostContext::sRcpHostContext + 5632), __str);
        v15 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v15)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = (RcpHostContext::sRcpHostContext + 5632);
            if (*(RcpHostContext::sRcpHostContext + 5655) < 0)
            {
              v16 = *v16;
            }

            *buf = 136315138;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "vendor:assigned:hw:mac := %s", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        ExtendedAddress = otLinkGetExtendedAddress(*(this + 28));
        snprintf(__s, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", *ExtendedAddress, ExtendedAddress[1], ExtendedAddress[2], ExtendedAddress[3], ExtendedAddress[4], ExtendedAddress[5], ExtendedAddress[6], ExtendedAddress[7]);
        std::string::assign((RcpHostContext::sRcpHostContext + 5888), __s);
        v18 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v18)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = (RcpHostContext::sRcpHostContext + 5888);
            if (*(RcpHostContext::sRcpHostContext + 5911) < 0)
            {
              v19 = *v19;
            }

            *buf = 136315138;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "mac Extended Address := %s", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        BYTE1(v21) = 20;
        strcpy(buf, "ca:reporting:enabled");
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
        operator new();
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

LABEL_54:
      [PowerEventHandler_Rcp init:];
      goto LABEL_55;
    }

    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67110912;
        *&buf[4] = __str[0];
        *&buf[8] = 1024;
        *&buf[10] = __str[1];
        *&buf[14] = 1024;
        *&buf[16] = __str[2];
        *&buf[20] = 1024;
        v21 = __str[3];
        v22 = 1024;
        v23 = __str[4];
        v24 = 1024;
        v25 = __str[5];
        v26 = 1024;
        v27 = __str[6];
        v28 = 1024;
        v29 = __str[7];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "tmac: read from RCP2=%x%x%x%x%x%x%x%x", buf, 0x32u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (*v33 == *__str)
    {
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v7)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }

      *buf = 0;
      v8 = "tmac:Verification success";
    }

    else
    {
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v7)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }

      *buf = 0;
      v8 = "tmac:Verification fail";
    }
  }

  else
  {
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v7)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v8 = "tmac:MG Read failed";
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
  goto LABEL_55;
}

void sub_10011CB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a29)
  {
    (*(*a29 + 8))(a29);
  }

  if (a30)
  {
    (*(*a30 + 8))(a30);
  }

  if (a31)
  {
    (*(*a31 + 8))(a31);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessJoin(HostInterpreter *this, unsigned __int8 a2, char **a3, _BYTE *a4)
{
  memset(&v48, 0, sizeof(v48));
  ot::Settings::Init((*(this + 28) + 200));
  memset(v47, 0, 7);
  memset(v51, 0, sizeof(v51));
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  if (a4[32] != 1)
  {
    goto LABEL_44;
  }

  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "NCP:Channel");
  v46.__r_.__value_.__r.__words[0] = &__p;
  v6 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_);
  v7 = v6[7];
  if (v7)
  {
    v8 = (*(*v7 + 16))(v7);
  }

  else
  {
  }

  v9 = (v8[1] & 0x7FFFFFFFFFFFFFFFLL);
  v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
  if (v9 != (v10 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (v10 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v46.__r_.__value_.__r.__words[0] = 0;
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  WORD5(v55) = *(v6[7] + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    LOBYTE(v58) = 1;
    if ((a4[31] & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    LOBYTE(v58) = 1;
    if ((a4[31] & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "Network:PANID");
  v46.__r_.__value_.__r.__words[0] = &__p;
  v12 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_);
  v13 = v12[7];
  if (v13)
  {
    v14 = (*((*(*v13 + 16))(v13) + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v14 == v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v14 == v11)
    {
      goto LABEL_16;
    }
  }

  if (strcmp(v14, v11))
  {
    v46.__r_.__value_.__r.__words[0] = 0;
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

LABEL_16:
  WORD4(v55) = *(v12[7] + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    HIBYTE(v57) = 1;
    if (a4[27])
    {
      goto LABEL_20;
    }

LABEL_44:
    v23 = 0;
    v24 = 0;
LABEL_45:
    v25 = 2;
    v26 = 7;
    goto LABEL_46;
  }

  HIBYTE(v57) = 1;
  if ((a4[27] & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_20:
  *(&v46.__r_.__value_.__s + 23) = 12;
  strcpy(&v46, "Network:Name");
  v49 = &v46;
  v15 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v46.__r_.__value_.__l.__data_);
  boost::any_cast<std::string>((v15 + 7), &__p);
  v48 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v53 = 0uLL;
  LOBYTE(v54) = 0;
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v48;
  }

  else
  {
    v16 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  memcpy(&v53, v16, size);
  BYTE11(v57) = 1;
  if ((a4[28] & 1) == 0)
  {
    goto LABEL_44;
  }

  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "Network:XPANID");
  v46.__r_.__value_.__r.__words[0] = &__p;
  v18 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_);
  v19 = any_to_uint64(v18 + 7, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "DatasetTest buf extpanid saved: %llx", &__p, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *(&v54 + 5) = bswap32(v19);
  BYTE4(v54) = BYTE4(v19);
  BYTE3(v54) = BYTE5(v19);
  BYTE2(v54) = BYTE6(v19);
  BYTE1(v54) = HIBYTE(v19);
  BYTE12(v57) = 1;
  if (a4[26] != 1)
  {
    goto LABEL_44;
  }

  *(&v46.__r_.__value_.__s + 23) = 11;
  strcpy(&v46, "Network:Key");
  v49 = &v46;
  v21 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v46.__r_.__value_.__l.__data_);
  any_to_data(v21 + 7, &__p);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v22 = 2 * (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&v46.__r_.__value_.__s + 23) = 2 * (__p.__r_.__value_.__s.__data_[8] - __p.__r_.__value_.__s.__data_[0]);
  if (v22)
  {
    bzero(&v46, v22);
  }

  v46.__r_.__value_.__s.__data_[v22] = 0;
  std::string::reserve(&v46, (2 * (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])) | 1);
  if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
  {
    v29 = 0;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v46;
  }

  else
  {
    v30 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = 22;
  }

  else
  {
    v31 = (v46.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  encode_data_into_string(v29, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0], v30, v31, 0);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v46;
  }

  else
  {
    v32 = v46.__r_.__value_.__r.__words[0];
  }

  v26 = ot::Utils::CmdLineParser::ParseAsHexString(v32, &v52, 0x10);
  if (v26)
  {
    v33 = 6;
  }

  else
  {
    v33 = 0;
    BYTE10(v57) = 1;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
    v23 = 0;
    v24 = 0;
    if (!v26)
    {
LABEL_75:
      v25 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, "Network:NodeType");
    v49 = &v46;
    v34 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v46.__r_.__value_.__l.__data_);
    boost::any_cast<std::string>((v34 + 7), &__p);
    v35 = __p.__r_.__value_.__l.__size_;
    v23 = __p.__r_.__value_.__r.__words[0];
    v47[0] = __p.__r_.__value_.__r.__words[2];
    *(v47 + 3) = *(&__p.__r_.__value_.__r.__words[2] + 3);
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v23, v35);
    }

    else
    {
      v45.__r_.__value_.__r.__words[0] = v23;
      v45.__r_.__value_.__l.__size_ = v35;
      LODWORD(v45.__r_.__value_.__r.__words[2]) = v47[0];
      *(&v45.__r_.__value_.__r.__words[2] + 3) = *(v47 + 3);
      *(&v45.__r_.__value_.__s + 23) = v24;
    }

    v26 = HostInterpreter::DeviceModeConfig(this, &v45);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (!v26)
    {
      v26 = otDatasetSetActive(*(this + 28), v51);
      if (!v26)
      {
        v36 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v36)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Dataset commit active, Done", &__p, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        HostInterpreter::setExtendedMACAddressInDataSetIfAvailableinDB(this);
        otIp6SetSlaacEnabled(*(this + 28), 1);
        v26 = otIp6SetEnabled(*(this + 28), 1);
        if (!v26)
        {
          v37 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v37)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              LOWORD(__p.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Ifconfig up, Done", &__p, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          v26 = otThreadSetEnabled(*(this + 28), 1);
          if (!v26)
          {
            LinkMode = otThreadGetLinkMode(*(this + 28));
            if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
            {
              otThreadBecomeLeader(*(this + 28), 0);
            }

            v41 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v41)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
                *(__p.__r_.__value_.__r.__words + 4) = "ProcessJoin";
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Thread start, Done", &__p, 0xCu);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            HostInterpreter::saveExtendedMACAddressIfNotAvailableinDB(this);
            isThreadSessionJoinEnabled = HostInterpreter::isThreadSessionJoinEnabled(v42);
            if (!isThreadSessionJoinEnabled)
            {
              v44 = log_get_logging_obg("com.apple.threadradiod", "default");
              if (v44)
              {
                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
                  *(__p.__r_.__value_.__r.__words + 4) = "ProcessJoin";
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s Thread Session Join THREAD_SESSION_ON", &__p, 0xCu);
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [PowerEventHandler_Rcp init:];
              }

              HostInterpreter::persistThreadSessionJoin(this, 1);
            }

            HostInterpreter::transactionEnabled(isThreadSessionJoinEnabled, 1);
            v26 = 0;
            goto LABEL_75;
          }
        }
      }
    }
  }

  HIDWORD(v39) = v26 - 1;
  LODWORD(v39) = v26 - 1;
  v38 = v39 >> 1;
  if (v38 <= 2)
  {
    if (v38)
    {
      if (v38 == 2)
      {
        v25 = 9;
        v26 = 5;
        goto LABEL_46;
      }
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_107;
  }

  if (v38 != 6)
  {
    if (v38 == 3)
    {
      goto LABEL_45;
    }

LABEL_107:
    v25 = 1;
    goto LABEL_46;
  }

  v25 = 4;
  v26 = 13;
LABEL_46:
  v27 = *(a4 + 5);
  if (!v27)
  {
    std::runtime_error::runtime_error(&__p, "call to empty boost::function");
    __p.__r_.__value_.__r.__words[0] = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&__p);
  }

  (*((v27 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 48, v25);
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  return v26;
}