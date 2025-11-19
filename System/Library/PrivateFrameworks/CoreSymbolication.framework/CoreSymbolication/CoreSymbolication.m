uint64_t _access_storage(uint64_t a1)
{
  pthread_mutex_lock(&_access_storage(void({block_pointer})(std::unique_ptr<MMapArchiveFileSystem> &))::storage_access_lock);
  (*(a1 + 16))(a1, &_access_storage(void({block_pointer})(std::unique_ptr<MMapArchiveFileSystem> &))::_storage_raw);
  return pthread_mutex_unlock(&_access_storage(void({block_pointer})(std::unique_ptr<MMapArchiveFileSystem> &))::storage_access_lock);
}

uint64_t _connection_count(int a1, int a2)
{
  pthread_mutex_lock(&_connection_count(connection_activity,int)::connection_access_lock);
  if (a1 == 1)
  {
    ++_connection_count(connection_activity,int)::connection_count;
    v4 = qword_100010258;
    if (qword_100010258 >= qword_100010260)
    {
      v10 = _connection_count(connection_activity,int)::pidlist;
      v11 = qword_100010258 - _connection_count(connection_activity,int)::pidlist;
      v12 = (qword_100010258 - _connection_count(connection_activity,int)::pidlist) >> 2;
      v13 = v12 + 1;
      if ((v12 + 1) >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = qword_100010260 - _connection_count(connection_activity,int)::pidlist;
      if ((qword_100010260 - _connection_count(connection_activity,int)::pidlist) >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
      v16 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](&_connection_count(connection_activity,int)::pidlist, v16);
      }

      v17 = (4 * v12);
      v18 = &v17[-((qword_100010258 - _connection_count(connection_activity,int)::pidlist) >> 2)];
      *v17 = a2;
      v5 = (v17 + 1);
      memcpy(v18, v10, v11);
      v19 = _connection_count(connection_activity,int)::pidlist;
      _connection_count(connection_activity,int)::pidlist = v18;
      qword_100010258 = v5;
      qword_100010260 = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *qword_100010258 = a2;
      v5 = v4 + 4;
    }

    qword_100010258 = v5;
    v6 = _connection_count(connection_activity,int)::connection_count;
  }

  else
  {
    v6 = _connection_count(connection_activity,int)::connection_count;
    if (a1 == 2 && _connection_count(connection_activity,int)::connection_count >= 1)
    {
      v7 = _connection_count(connection_activity,int)::pidlist;
      if (_connection_count(connection_activity,int)::pidlist != qword_100010258)
      {
        v8 = _connection_count(connection_activity,int)::pidlist;
        while (*v8 != a2)
        {
          ++v8;
          v7 += 4;
          if (v8 == qword_100010258)
          {
            v7 = qword_100010258;
            break;
          }
        }
      }

      if (qword_100010258 != v7)
      {
        v9 = qword_100010258 - (v7 + 4);
        if (qword_100010258 != v7 + 4)
        {
          memmove(v7, (v7 + 4), qword_100010258 - (v7 + 4));
        }

        qword_100010258 = v7 + v9;
        _connection_count(connection_activity,int)::connection_count = v6 - 1;
        v6 = (v6 - 1);
      }
    }
  }

  pthread_mutex_unlock(&_connection_count(connection_activity,int)::connection_access_lock);
  return v6;
}

void __main_block_invoke(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    pid = xpc_connection_get_pid(a2);
    if (_connection_count(1, pid) == 1)
    {
      atomic_fetch_add(allowed_deinit_number, 1u);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v14 = 0x2000000000;
      v15 = 0;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 0x40000000;
      v10[2] = __main_block_invoke_2;
      v10[3] = &unk_10000C4D8;
      v10[4] = &buf;
      _access_storage(v10);
      if (*(*(&buf + 1) + 24) == 1 && (initialize_storage() & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v11 = 136315138;
          v12 = storage_path;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to initialize storage at %s\n", v11, 0xCu);
        }

        fprintf(__stderrp, "Unable to initialize storage at %s\n", storage_path);
        shutdown();
      }

      _Block_object_dispose(&buf, 8);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = __main_block_invoke_5;
    handler[3] = &__block_descriptor_tmp_6;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }

  else if (type == &_xpc_type_error)
  {
    if (a2 == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = xpc_dictionary_get_string(&_xpc_error_connection_invalid, _xpc_error_key_description);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Top level listener XPC_ERROR_CONNECTION_INVALID: %s\n", &buf, 0xCu);
      }

      v7 = __stderrp;
      xpc_dictionary_get_string(&_xpc_error_connection_invalid, _xpc_error_key_description);
      fprintf(v7, "Top level listener XPC_ERROR_CONNECTION_INVALID: %s\n");
    }

    else
    {
      v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (a2 == &_xpc_error_termination_imminent)
      {
        if (v5)
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = xpc_dictionary_get_string(&_xpc_error_termination_imminent, _xpc_error_key_description);
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Top level listener XPC_ERROR_TERMINATION_IMMINENT: %s\n", &buf, 0xCu);
        }

        v8 = __stderrp;
        xpc_dictionary_get_string(&_xpc_error_termination_imminent, _xpc_error_key_description);
        fprintf(v8, "Top level listener XPC_ERROR_TERMINATION_IMMINENT: %s\n");
      }

      else
      {
        if (v5)
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = xpc_dictionary_get_string(a2, _xpc_error_key_description);
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Top level listener error: %s\n", &buf, 0xCu);
        }

        v6 = __stderrp;
        xpc_dictionary_get_string(a2, _xpc_error_key_description);
        fprintf(v6, "Top level listener error: %s\n");
      }
    }

    shutdown();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Top level event: Unhandled xpc type\n", &buf, 2u);
    }

    fwrite("Top level event: Unhandled xpc type\n", 0x24uLL, 1uLL, __stderrp);
  }
}

void coresymbolicationd_peer_event_handler(_xpc_connection_s *a1@<X0>, xpc_object_t object@<X1>, XPCDictionary *a3@<X8>)
{
  if (xpc_get_type(object) != &_xpc_type_error)
  {
    if (a1)
    {
      euid = xpc_connection_get_euid(a1);
      xpc_connection_get_pid(a1);
      XPCDictionary::XPCDictionary(&v44, object, 1);
      XPCDictionary::create_reply(&v44, a3);
    }

    else
    {
      euid = geteuid();
      XPCDictionary::XPCDictionary(&v44, object, 1);
      XPCDictionary::XPCDictionary(a3);
    }

    uint64 = xpc_dictionary_get_uint64(object, "cmd");
    if (uint64 <= 5)
    {
      if (uint64 > 3)
      {
        if (uint64 == 4)
        {
          XPCObject::XPCObject(&v39, &v44);
          XPCDictionary::get_object(&v39, "entry", &__p);
          if (XPCObject::operator BOOL(&__p) && XPCObject::xpc_type(&__p) == &_xpc_type_array)
          {
            *&v55 = _NSConcreteStackBlock;
            *(&v55 + 1) = 1174405120;
            v56 = ___ZL36coresymbolicationd_read_mmap_archive13XPCDictionaryRS_ji_block_invoke;
            v57 = &__block_descriptor_tmp_62;
            XPCObject::XPCObject(&v58, &__p);
            LODWORD(v60) = euid;
            v59 = a3;
            _access_storage(&v55);
            XPCObject::~XPCObject(&v58);
          }

          XPCObject::~XPCObject(&__p);
          v17 = &v39;
        }

        else
        {
          XPCObject::XPCObject(&v38, &v44);
          region = 0;
          v54 = 0;
          XPCDictionary::get_object(&v38, "archive_shmem", &v52);
          if (XPCObject::raw_ptr(&v52) && XPCObject::xpc_type(&v52) == &_xpc_type_shmem && (v36 = XPCObject::raw_ptr(&v52), v19 = xpc_shmem_map(v36, &region), (v54 = v19) != 0))
          {
            v20 = region;
            bytes = region;
          }

          else
          {
            region = 0;
            bytes = XPCDictionary::get_bytes(&v38, "archive", &v54);
            v20 = region;
            v19 = v54;
          }

          __p = v20;
          v48 = v19;
          if (bytes)
          {
            if (v19 >= *(bytes + 1))
            {
              XPCDictionary::get_object(&v38, "entry", &v51);
              if (XPCObject::operator BOOL(&v51) && XPCObject::xpc_type(&v51) == &_xpc_type_array)
              {
                XPCObject::XPCObject(&v50, &v51);
                if (XPCArray::count(&v50) < 6)
                {
                  XPCDictionary::set_uint64(a3, "write_errno", 6uLL);
                }

                else
                {
                  *&v55 = _NSConcreteStackBlock;
                  *(&v55 + 1) = 1174405120;
                  v56 = ___ZL37coresymbolicationd_write_mmap_archive13XPCDictionaryRS_ji_block_invoke;
                  v57 = &__block_descriptor_tmp_71;
                  XPCObject::XPCObject(&v58, &v51);
                  v62 = euid;
                  v59 = bytes;
                  v60 = v54;
                  v61 = a3;
                  _access_storage(&v55);
                  XPCObject::~XPCObject(&v58);
                }

                XPCObject::~XPCObject(&v50);
              }

              XPCObject::~XPCObject(&v51);
            }

            else
            {
              XPCDictionary::set_uint64(a3, "write_errno", 6uLL);
            }
          }

          std::unique_ptr<void,coresymbolicationd_write_mmap_archive(XPCDictionary,XPCDictionary&,unsigned int,int)::$_0>::~unique_ptr[abi:ne200100](&__p);
          XPCObject::~XPCObject(&v52);
          v17 = &v38;
        }

        goto LABEL_88;
      }

      if (uint64 == 2)
      {
        XPCObject::XPCObject(&v41, &v44);
        __p = 0;
        v48 = 0;
        v49 = 0;
        XPCDictionary::get_object(&v41, "filters", &v54);
        v24 = XPCObject::operator BOOL(&v54);
        if (v24)
        {
          v24 = XPCObject::xpc_type(&v54);
          if (v24 == &_xpc_type_array)
          {
            v25 = XPCObject::XPCObject(&region, &v54);
            v26 = XPCArray::count(v25);
            if (v26)
            {
              v27 = 0;
              v28 = 1;
              do
              {
                XPCArray::get_object(&region, v27, &v52);
                if (XPCObject::xpc_type(&v52) == &_xpc_type_array)
                {
                  XPCObject::XPCObject(&v51, &v52);
                  MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(&v55, &v51);
                  XPCObject::~XPCObject(&v51);
                  if (euid)
                  {
                    LODWORD(v58) = euid;
                  }

                  std::vector<MMapArchiveFileSystem::ArchiveEntry>::push_back[abi:ne200100](&__p, &v55);
                }

                XPCObject::~XPCObject(&v52);
                v27 = v28;
                v15 = v26 > v28++;
              }

              while (v15);
            }

            XPCObject::~XPCObject(&region);
          }
        }

        v29 = __p;
        v30 = v48;
        if (__p == v48)
        {
          v31 = UUID::null_uuid(v24);
          MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(&v55, v31, 0, euid, 0, 7, 0xFFFF);
          std::vector<MMapArchiveFileSystem::ArchiveEntry>::push_back[abi:ne200100](&__p, &v55);
          v29 = __p;
          v30 = v48;
        }

        *&v55 = _NSConcreteStackBlock;
        *(&v55 + 1) = 1174405120;
        v56 = ___ZL38coresymbolicationd_match_mmap_archives13XPCDictionaryRS_j_block_invoke;
        v57 = &__block_descriptor_tmp_56;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        std::vector<MMapArchiveFileSystem::ArchiveEntry>::__init_with_size[abi:ne200100]<MMapArchiveFileSystem::ArchiveEntry*,MMapArchiveFileSystem::ArchiveEntry*>(&v58, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
        v61 = a3;
        _access_storage(&v55);
        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        XPCObject::~XPCObject(&v54);
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        v17 = &v41;
        goto LABEL_88;
      }

      if (uint64 == 3)
      {
        XPCObject::XPCObject(&v40, &v44);
        __p = 0;
        v48 = 0;
        v49 = 0;
        XPCDictionary::get_object(&v40, "filters", &v54);
        v10 = XPCObject::operator BOOL(&v54);
        if (v10)
        {
          v10 = XPCObject::xpc_type(&v54);
          if (v10 == &_xpc_type_array)
          {
            v11 = XPCObject::XPCObject(&region, &v54);
            v12 = XPCArray::count(v11);
            if (v12)
            {
              v13 = 0;
              v14 = 1;
              do
              {
                XPCArray::get_object(&region, v13, &v52);
                if (XPCObject::xpc_type(&v52) == &_xpc_type_array)
                {
                  XPCObject::XPCObject(&v51, &v52);
                  MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(&v55, &v51);
                  XPCObject::~XPCObject(&v51);
                  if (euid)
                  {
                    LODWORD(v58) = euid;
                  }

                  std::vector<MMapArchiveFileSystem::ArchiveEntry>::push_back[abi:ne200100](&__p, &v55);
                }

                XPCObject::~XPCObject(&v52);
                v13 = v14;
                v15 = v12 > v14++;
              }

              while (v15);
            }

            XPCObject::~XPCObject(&region);
          }
        }

        if (euid)
        {
          v16 = 0;
        }

        else
        {
          v10 = XPCDictionary::get_uint64(&v40, "should_delete_precached");
          v16 = v10 == 1;
        }

        v33 = __p;
        v34 = v48;
        if (__p == v48)
        {
          v35 = UUID::null_uuid(v10);
          MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(&v55, v35, 0, euid, 0, 7, 0xFFFF);
          std::vector<MMapArchiveFileSystem::ArchiveEntry>::push_back[abi:ne200100](&__p, &v55);
          v33 = __p;
          v34 = v48;
        }

        *&v55 = _NSConcreteStackBlock;
        *(&v55 + 1) = 1174405120;
        v56 = ___ZL39coresymbolicationd_delete_mmap_archives13XPCDictionaryRS_j_block_invoke;
        v57 = &__block_descriptor_tmp_60;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        std::vector<MMapArchiveFileSystem::ArchiveEntry>::__init_with_size[abi:ne200100]<MMapArchiveFileSystem::ArchiveEntry*,MMapArchiveFileSystem::ArchiveEntry*>(&v58, v33, v34, 0x6DB6DB6DB6DB6DB7 * ((v34 - v33) >> 3));
        LOBYTE(v62) = v16;
        v61 = a3;
        _access_storage(&v55);
        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        XPCObject::~XPCObject(&v54);
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        v17 = &v40;
        goto LABEL_88;
      }

LABEL_89:
      XPCObject::~XPCObject(&v44);
      return;
    }

    if (uint64 > 7)
    {
      if (uint64 == 8)
      {
        XPCObject::XPCObject(&v42, &v44);
        global_queue = dispatch_get_global_queue(0, 0);
        dispatch_async(global_queue, &__block_literal_global_53);
        v17 = &v42;
      }

      else
      {
        if (uint64 != 9)
        {
          goto LABEL_89;
        }

        XPCObject::XPCObject(&v37, &v44);
        v21 = XPCDictionary::get_uint64(&v37, "free_capacity");
        *&v55 = _NSConcreteStackBlock;
        *(&v55 + 1) = 0x40000000;
        v56 = ___ZL26coresymbolicationd_compact13XPCDictionaryRS__block_invoke;
        v57 = &__block_descriptor_tmp_76;
        v58 = v21;
        v59 = a3;
        _access_storage(&v55);
        v17 = &v37;
      }
    }

    else
    {
      if (uint64 == 6)
      {
        *&v55 = _NSConcreteStackBlock;
        *(&v55 + 1) = 0x40000000;
        v56 = ___ZL25coresymbolicationd_statusRK13XPCDictionaryRS__block_invoke;
        v57 = &__block_descriptor_tmp_48;
        v58 = a3;
        _access_storage(&v55);
        goto LABEL_89;
      }

      XPCObject::XPCObject(&v43, &v44);
      *&v55 = _NSConcreteStackBlock;
      *(&v55 + 1) = 0x40000000;
      v56 = ___ZL27coresymbolicationd_validate13XPCDictionaryRS__block_invoke;
      v57 = &__block_descriptor_tmp_50;
      v58 = a3;
      _access_storage(&v55);
      v17 = &v43;
    }

LABEL_88:
    XPCObject::~XPCObject(v17);
    goto LABEL_89;
  }

  if (object == &_xpc_error_connection_invalid || object == &_xpc_error_connection_interrupted)
  {
    v8 = a1 ? xpc_connection_get_pid(a1) : -1;
    if (!_connection_count(2, v8))
    {
      if (coresymbolicationd_peer_event_handler(_xpc_connection_s *,void *)::once_token != -1)
      {
        coresymbolicationd_peer_event_handler();
      }

      atomic_fetch_add(allowed_deinit_number, 1u);
      v22 = atomic_load(allowed_deinit_number);
      v23 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = ___ZL37coresymbolicationd_peer_event_handlerP17_xpc_connection_sPv_block_invoke_2;
      block[3] = &__block_descriptor_tmp_41;
      v46 = v22;
      dispatch_after(v23, purgeability_and_deinit_queue, block);
    }
  }

  XPCDictionary::XPCDictionary(a3);
}

void sub_1000018D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, void *a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43)
{
  XPCObject::~XPCObject((v44 + 32));
  XPCObject::~XPCObject(&a36);
  XPCObject::~XPCObject(&a37);
  std::unique_ptr<void,coresymbolicationd_write_mmap_archive(XPCDictionary,XPCDictionary&,unsigned int,int)::$_0>::~unique_ptr[abi:ne200100](&__p);
  XPCObject::~XPCObject(&a41);
  XPCObject::~XPCObject(&a12);
  XPCObject::~XPCObject(v43);
  XPCObject::~XPCObject(&a27);
  _Unwind_Resume(a1);
}

void XPCDictionary::XPCDictionary(XPCDictionary *this, xpc_object_t object, int a3)
{
  *this = object;
  if (object)
  {
    if (a3)
    {
      xpc_retain(object);
    }
  }
}

xpc_object_t XPCDictionary::get_object@<X0>(xpc_object_t *this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  result = xpc_dictionary_get_value(*this, a2);
  *a3 = result;
  if (result)
  {

    return xpc_retain(result);
  }

  return result;
}

xpc_object_t XPCDictionary::create_reply@<X0>(xpc_object_t *this@<X0>, void *a2@<X8>)
{
  result = xpc_dictionary_create_reply(*this);
  *a2 = result;
  return result;
}

void **XPCObject::XPCObject(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  return a1;
}

xpc_type_t XPCObject::xpc_type(xpc_type_t *this)
{
  result = *this;
  if (result)
  {
    return xpc_get_type(result);
  }

  return result;
}

void XPCObject::~XPCObject(void **this)
{
  v1 = *this;
  if (v1)
  {
    xpc_release(v1);
  }
}

uint64_t UUID::is_null(UUID *this)
{
  if (UUID::null_uuid(void)::fake == *this && unk_100010090 == *&(*this)[8])
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    v3 = i;
    if ((*this)[i])
    {
      break;
    }

    if (v3 == 15)
    {
      return 1;
    }
  }

  return 0;
}

int8x16_t *MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(int8x16_t *a1, void **a2)
{
  XPCObject::XPCObject(&v7, a2);
  *a1 = *XPCArray::get_uuid(&v7, 0);
  a1[1].i64[0] = XPCArray::get_uint64(&v7, 1uLL);
  a1[1].i64[1] = XPCArray::get_uint64(&v7, 2uLL);
  a1[2].i32[0] = XPCArray::get_uint64(&v7, 3uLL);
  a1[2].i32[1] = XPCArray::get_uint64(&v7, 4uLL);
  a1[2].i32[2] = XPCArray::get_uint64(&v7, 5uLL);
  if (XPCArray::count(&v7) < 8)
  {
    a1[2].i32[3] = 1;
    a1[3].i8[0] = 0;
  }

  else
  {
    a1[2].i16[6] = XPCArray::get_uint64(&v7, 6uLL);
    a1[2].i16[7] = XPCArray::get_uint64(&v7, 7uLL);
    v3 = XPCArray::count(&v7) == 9 && XPCArray::get_uint64(&v7, 8uLL) != 0;
    a1[3].i8[0] = v3;
    if (a1[2].i16[6] == 3)
    {
      UUID::get_complement(a1);
      a1->i64[0] = v4;
      a1->i64[1] = v5;
    }
  }

  XPCObject::~XPCObject(&v7);
  return a1;
}

void sub_100001D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XPCObject::~XPCObject(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZL36coresymbolicationd_read_mmap_archive13XPCDictionaryRS_ji_block_invoke(uint64_t result, pthread_mutex_t **a2)
{
  if (*a2)
  {
    v3 = result;
    XPCObject::XPCObject(&v4, (result + 32));
    MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(v5, &v4);
    XPCObject::~XPCObject(&v4);
    if (*(v3 + 48))
    {
      v6 = *(v3 + 48);
    }

    result = MMapArchiveFileSystem::match_archive(*a2, v5);
    if (result)
    {
      result = MMapArchiveFileSystem::is_entry_in_bounds(*a2, v5);
      if (result)
      {
        return _xpc_dict_box_entry(*(v3 + 40), a2, v5);
      }
    }
  }

  return result;
}

void sub_100001E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XPCObject::~XPCObject(va);
  _Unwind_Resume(a1);
}

uint64_t MMapArchiveFileSystem::match_archive(pthread_mutex_t *this, MMapArchiveFileSystem::ArchiveEntry *a2)
{
  pthread_mutex_lock(this);
  UUIDBytesToString<CFUUIDBytes>(a2, __s, 40);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "match_archive -- UUID: ", 23);
  v5 = strlen(__s);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, __s, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", uid: ", 7);
  v7 = *(a2 + 8);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", offset: ", 10);
  v9 = *(a2 + 2);
  v10 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", size: ", 8);
  v11 = *(a2 + 9);
  std::ostream::operator<<();
  if ((v47 & 0x10) != 0)
  {
    v13 = v46;
    if (v46 < v43)
    {
      v46 = v43;
      v13 = v43;
    }

    locale = v42[4].__locale_;
    goto LABEL_8;
  }

  if ((v47 & 8) != 0)
  {
    locale = v42[1].__locale_;
    v13 = v42[3].__locale_;
LABEL_8:
    v12 = v13 - locale;
    if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v39 = v13 - locale;
    if (v12)
    {
      memmove(&__dst, locale, v12);
    }

    goto LABEL_14;
  }

  v12 = 0;
  v39 = 0;
LABEL_14:
  *(&__dst + v12) = 0;
  if (v39 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(v37, p_dst);
  is_null = UUID::is_null(a2);
  if (*(a2 + 8) == -1)
  {
    v17 = 1;
  }

  else
  {
    v17 = is_null;
  }

  if (v17)
  {
    goto LABEL_43;
  }

  v18 = *&this[1].__opaque[16];
  v19 = *(v18 + 12);
  if (!v19)
  {
    goto LABEL_43;
  }

  v20 = (v18 + 24);
  v21 = bswap64(*a2);
  v22 = v20;
  v23 = v19;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[7 * (v23 >> 1)];
    v26 = bswap64(*v25);
    if (v26 != v21)
    {
      v27 = v21;
LABEL_27:
      if (v26 < v27)
      {
        v28 = -1;
      }

      else
      {
        v28 = 1;
      }

      goto LABEL_30;
    }

    v26 = bswap64(v25[1]);
    v27 = bswap64(*(a2 + 1));
    if (v26 != v27)
    {
      goto LABEL_27;
    }

    v28 = 0;
LABEL_30:
    v29 = v25 + 7;
    v23 += ~v24;
    if (v28 < 0)
    {
      v22 = v29;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  v30 = &v20[7 * v19];
  while (v22 != v30)
  {
    if (*v22 != *a2 || v22[1] != *(a2 + 1))
    {
      break;
    }

    if (MMapArchiveFileSystem::ArchiveEntry::matches(a2, v22))
    {
      v34 = *v22;
      v35 = *(v22 + 1);
      v36 = *(v22 + 2);
      *(a2 + 48) = *(v22 + 48);
      *(a2 + 1) = v35;
      *(a2 + 2) = v36;
      *a2 = v34;
      v32 = 1;
      goto LABEL_44;
    }

    v22 += 7;
  }

LABEL_43:
  v32 = 0;
LABEL_44:
  CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(v37);
  if (v39 < 0)
  {
    operator delete(__dst);
  }

  if (v45 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v42);
  std::ostream::~ostream();
  std::ios::~ios();
  pthread_mutex_unlock(this);
  return v32;
}

void sub_10000227C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t _xpc_dict_box_entry(xpc_object_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(*a2 + 64);
  v7 = *(a3 + 16);
  v45 = *(a3 + 36);
  v8 = v7 & 0x3FFF;
  v9 = ((v7 + v45 + 0x3FFF) & 0xFFFFFFFFFFFFC000) - (v7 & 0xFFFFFFFFFFFFC000);
  v44[1] = v9;
  v44[2] = v8;
  v10 = mmap(0, v9, 1, 1, v6, v7 & 0xFFFFFFFFFFFFC000);
  v44[0] = v10;
  if (v10 != -1)
  {
    v11 = v10;
    v12 = &v10[v8];
    if (v12 != -1)
    {
      if (!v12->i32[1])
      {
        goto LABEL_18;
      }

      v13 = v12[3].i32[0];
      if (v13 != TMMapArchive::calculate_checksum(v12))
      {
        goto LABEL_18;
      }

      v14 = v12[6].u64 + 32 * v12->i32[2] + (24 * v12->i32[3]);
      v15 = v12[1].i32[0];
      v16 = v14 + (24 * v15);
      v17 = v12[5].u32[2];
      v18 = (4 * v15);
      v19 = v16 + (36 * v12[1].i32[1]) + (20 * v12[1].i32[2]);
      v20 = v19 + v18 + v17 + v12[5].u32[0];
      v21 = v20 + v12[5].u32[1];
      v22 = v12[2].u32[2];
      if (v22)
      {
        v23 = v20 + v22;
        if (v23)
        {
          if (v23 < v20 || v23 >= v21)
          {
            goto LABEL_18;
          }
        }
      }

      v25 = v12[2].u32[3];
      if (v25)
      {
        v26 = v20 + v25;
        if (v26)
        {
          if (v26 < v20 || v26 >= v21)
          {
LABEL_18:
            v28 = *(a3 + 16);
            v46[0] = *a3;
            v46[1] = v28;
            v46[2] = *(a3 + 32);
            v47 = *(a3 + 48);
            v42 = 0;
            v43 = 0;
            v41 = 0;
            std::vector<MMapArchiveFileSystem::ArchiveEntry>::__init_with_size[abi:ne200100]<MMapArchiveFileSystem::ArchiveEntry const*,MMapArchiveFileSystem::ArchiveEntry const*>(&v41, v46, &v48, 1uLL);
            MMapArchiveFileSystem::delete_archives(*a2, &v41, 1, __p);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            XPCDictionary::set_uint64(a1, "write_errno", 6uLL);
            if (v41)
            {
              v42 = v41;
              operator delete(v41);
            }

            goto LABEL_22;
          }
        }
      }

      v31 = (v19 + v17);
      if (v17)
      {
        v32 = (v16 + (36 * v12[1].i32[1]) + (20 * v12[1].i32[2]));
        do
        {
          v33 = v19 - *v32;
          if (v33 < v14 || v33 >= v16)
          {
            goto LABEL_18;
          }

          ++v32;
          v19 += 4;
        }

        while (v32 != v31);
      }

      if (v18)
      {
        v35 = (v31 + v18);
        v36 = v31;
        do
        {
          v37 = v31 - *v36;
          if (v37 < v14 || v37 >= v16)
          {
            goto LABEL_18;
          }

          ++v36;
          ++v31;
        }

        while (v36 != v35);
      }

      v39 = xpc_shmem_create(v11, v9);
      if (v39)
      {
        XPCDictionary::set_object(a1, "shmem", v39);
        XPCDictionary::set_uint64(a1, "major_version", *(a3 + 44));
        XPCDictionary::set_uint64(a1, "minor_version", *(a3 + 46));
        xpc_release(v39);
        v29 = 1;
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v29 = 0;
LABEL_23:
  MMapArchiveFileSystem::MMapMemory::~MMapMemory(v44);
  return v29;
}

void MMapArchiveFileSystem::MMapMemory::~MMapMemory(MMapArchiveFileSystem::MMapMemory *this)
{
  v2 = *this;
  if (v2 != -1)
  {
    munmap(v2, *(this + 1));
  }
}

uint64_t __main_block_invoke_2(uint64_t result, void *a2)
{
  if (!*a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t initialize_storage(void)
{
  v0 = storage_dirname;
  if (storage_dirname)
  {
    v1 = storage_path == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (!storage_dirname)
    {
      v0 = "/private/var/root/Library/Caches/com.apple.coresymbolicationd";
      storage_dirname = "/private/var/root/Library/Caches/com.apple.coresymbolicationd";
    }

    v2 = strlen(v0);
    v15 = 128;
    if (sysctlbyname("kern.osversion", __s, &v15, 0, 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine os version, exiting\n", buf, 2u);
      }

      fwrite("Unable to determine os version, exiting\n", 0x28uLL, 1uLL, __stderrp);
    }

    v3 = v2 + strlen(__s);
    v4 = malloc_type_malloc(v3 + 2, 0x100004077774924uLL);
    *&v4[strlcpy(v4, storage_dirname, v3 + 2)] = 47;
    strlcat(v4, __s, v3 + 2);
    storage_path = v4;
    if (!v4 || (v0 = storage_dirname) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Out of memory", buf, 2u);
      }

      fwrite("Out of memory", 0xDuLL, 1uLL, __stderrp);
      v11 = 0;
      return v11 & 1;
    }
  }

  v5 = strdup(v0);
  for (i = v5 + 1; *i == 47; ++i)
  {
    *i = 0;
    if (mkdir(v5, 0x1C0u) == -1 && *__error() != 17)
    {
      goto LABEL_25;
    }

    *i = 47;
LABEL_21:
    ;
  }

  if (*i)
  {
    goto LABEL_21;
  }

  if (*(i - 1) != 47 && mkdir(v5, 0x1C0u) == -1)
  {
    __error();
  }

LABEL_25:
  free(v5);
  v7 = opendir(storage_dirname);
  v8 = v7;
  if (v7)
  {
    v9 = dirfd(v7);
    for (j = readdir(v8); j; j = readdir(v8))
    {
      if (!strncmp(j->d_name, "grow.", 5uLL))
      {
        unlinkat(v9, j->d_name, 0);
      }
    }

    closedir(v8);
  }

  *__s = 0;
  v17 = __s;
  v18 = 0x2000000000;
  v19 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = ___ZL18initialize_storagev_block_invoke;
  v13[3] = &unk_10000C520;
  v13[4] = __s;
  _access_storage(v13);
  v11 = v17[24];
  _Block_object_dispose(__s, 8);
  return v11 & 1;
}

void sub_1000029C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MMapArchiveFileSystem::MMapArchiveFileSystem(MMapArchiveFileSystem *this, int a2, const char *a3)
{
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = 850045863;
  *(this + 16) = -1;
  v4 = (this + 64);
  v5 = a2 == 0;
  *(this + 11) = -1;
  *(this + 9) = 0;
  v6 = (this + 72);
  *(this + 10) = 0;
  if (a2)
  {
    v7 = 16777218;
  }

  else
  {
    v7 = 0x1000000;
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v12 = v8;
  v9 = open(a3, v7, 384);
  *v4 = v9;
  if (v9 != -1 && !fstat(v9, &v11) && (v11.st_mode & 0xF000) == 0x8000)
  {
    st_size = v11.st_size;
    *v6 = v11.st_size;
    if (st_size >= 0x4000 && (st_size & 0x3FFF) == 0)
    {
      operator new();
    }
  }

  MMapArchiveFileSystem::close(this);
}

MMapArchiveFileSystem::MMapMemory *std::unique_ptr<MMapArchiveFileSystem::MMapMemory>::reset[abi:ne200100](MMapArchiveFileSystem::MMapMemory **a1, MMapArchiveFileSystem::MMapMemory *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MMapArchiveFileSystem::MMapMemory::~MMapMemory(result);

    operator delete();
  }

  return result;
}

BOOL MMapArchiveFileSystem::validate(pthread_mutex_t *this)
{
  pthread_mutex_lock(this);
  v2 = MMapArchiveFileSystem::validate_locked(this);
  pthread_mutex_unlock(this);
  return v2;
}

BOOL MMapArchiveFileSystem::validate_locked(MMapArchiveFileSystem *this)
{
  v2 = *(this + 16);
  if (v2 == -1 || fstat(v2, &v29) || (v29.st_mode & 0xF000) != 0x8000)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 9);
  if ((v4 & 0x3FFF) == 0 && v4 >= 0x4000 && v4 <= v29.st_size)
  {
    if (!*(this + 10))
    {
      return 0;
    }

    v5 = *(this + 11);
    if (v5 == -1)
    {
      return 0;
    }

    if (*v5 != -22168898)
    {
      return 0;
    }

    if (v5[1] != 1)
    {
      return 0;
    }

    v6 = v5[2];
    if (!v6)
    {
      return 0;
    }

    v7 = v5[3];
    if (v7 > v6)
    {
      return 0;
    }

    v8 = (56 * v6 + 16407) & 0x7FFFFFC000;
    if (v8 > v4)
    {
      return 0;
    }

    if (v7)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = v5;
        v12 = &v5[v9];
        result = MMapArchiveFileSystem::ArchiveEntry::validate(&v5[v9 + 6]);
        if (!result)
        {
          break;
        }

        v5 = *(this + 11);
        if (v12[16] > v5[4])
        {
          return 0;
        }

        v13 = *&v11[v9 + 10];
        if (v13 < v8 || v13 + v11[v9 + 15] > *(this + 9))
        {
          return 0;
        }

        if (v11[v9 + 14] == -2)
        {
          if (v10)
          {
            v14 = &v5[14 * v10 - 14];
            v16 = *(v14 + 3);
            v15 = *(v14 + 4);
            v17 = *(v12 + 3) == v16 && *(v12 + 4) == v15;
            if (v17)
            {
              return 0;
            }
          }

          v18 = v5[3];
          if (v10 < v18 - 1 && *(v12 + 3) == *&v5[v9 + 20] && *(v12 + 4) == *&v5[v9 + 22])
          {
            return 0;
          }
        }

        else
        {
          v18 = v5[3];
        }

        ++v10;
        v9 += 14;
        if (v10 >= v18)
        {
          if (v18 < 2)
          {
            return 1;
          }

          v20 = v5[14];
          v21 = v5 + 32;
          v22 = v18 - 1;
          do
          {
            v23 = bswap64(*(v21 - 13));
            v24 = bswap64(*(v21 - 6));
            if (v23 == v24 && (v23 = bswap64(*(v21 - 12)), v24 = bswap64(*(v21 - 5)), v23 == v24))
            {
              v25 = 0;
            }

            else if (v23 < v24)
            {
              v25 = -1;
            }

            else
            {
              v25 = 1;
            }

            v26 = *(v21 - 4);
            v17 = v25 == 0;
            v27 = v25 < 0;
            if (v17)
            {
              v27 = v20 < v26;
            }

            if (!v27)
            {
              v28 = (*v21 & 1) != 0 ? 1 : *(v21 - 56);
              result = 0;
              if ((v28 & 1) == 0 || v26 != v20)
              {
                break;
              }
            }

            v21 += 56;
            result = 1;
            v20 = v26;
            --v22;
          }

          while (v22);
          return result;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL MMapArchiveFileSystem::ArchiveEntry::validate(MMapArchiveFileSystem::ArchiveEntry *this)
{
  result = 0;
  if ((UUID::is_null(this) & 1) == 0)
  {
    if (*(this + 10))
    {
      if (*(this + 3))
      {
        if (*(this + 8) != -1 && (*(this + 8) & 0x3FFF) == 0)
        {
          v3 = *(this + 9);
          if (v3)
          {
            if ((v3 & 0x3FFF) == 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

MMapArchiveFileSystem *std::unique_ptr<MMapArchiveFileSystem>::reset[abi:ne200100](MMapArchiveFileSystem **a1, MMapArchiveFileSystem *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MMapArchiveFileSystem::~MMapArchiveFileSystem(result);

    operator delete();
  }

  return result;
}

uint64_t _UUIDBytesToString<CFUUIDBytes>(unsigned __int8 *a1, char *__str, size_t __size)
{
  if (a1)
  {
    v3 = __str == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && __size > 0x24;
  if (v5 == 1)
  {
    snprintf(__str, __size, "%02hhX%02hhX%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX%02hhX%02hhX%02hhX%02hhX", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15]);
  }

  return v5;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100003608(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000035E8);
}

void (__cdecl ***std::ostringstream::basic_ostringstream[abi:ne200100](void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1000037B4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_100003870(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100003B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(CSCppCrashReporterInfoSetter *this, const char *a2)
{
  v7 = 0;
  pthread_threadid_np(0, &v7);
  pthread_mutex_lock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
  v4 = qword_1000100E0;
  *(this + 1) = qword_1000100E0;
  v5 = v7;
  if (v4)
  {
    v6 = CSCppCrashReporterInfoSetter::crash_reporter_owner == v7;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    qword_1000100E0 = a2;
    *this = 1;
    CSCppCrashReporterInfoSetter::crash_reporter_owner = v5;
  }

  else
  {
    *this = 0;
  }

  pthread_mutex_unlock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
}

BOOL MMapArchiveFileSystem::ArchiveEntry::matches(UUID *this, MMapArchiveFileSystem::ArchiveEntry *a2)
{
  if ((*this)[48] != *(a2 + 48))
  {
    return 0;
  }

  v4 = *&(*this)[32];
  if (v4 != -1)
  {
    v5 = *(a2 + 8);
    if (v5 != -2 && v4 != v5)
    {
      return 0;
    }
  }

  v7 = *&(*this)[24];
  if (v7 && v7 != *(a2 + 3))
  {
    return 0;
  }

  v9 = *&(*this)[40];
  if (v9)
  {
    if (v9 != *(a2 + 10))
    {
      return 0;
    }
  }

  if ((UUID::is_null(this) & 1) == 0 && (*this != *a2 || *&(*this)[8] != *(a2 + 1)))
  {
    return 0;
  }

  v11 = *&(*this)[44];
  if (v11 != 0xFFFF && v11 != *(a2 + 22))
  {
    return 0;
  }

  v13 = *&(*this)[46];
  return v13 == 0xFFFF || v13 == *(a2 + 23);
}

void CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(CSCppCrashReporterInfoSetter *this)
{
  if (*this == 1)
  {
    pthread_mutex_lock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
    qword_1000100E0 = *(this + 1);
    pthread_mutex_unlock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
  }
}

BOOL MMapArchiveFileSystem::is_entry_in_bounds(MMapArchiveFileSystem *this, const MMapArchiveFileSystem::ArchiveEntry *a2)
{
  v4.st_size = 0;
  fstat(*(this + 16), &v4);
  return *(a2 + 2) + *(a2 + 9) <= v4.st_size;
}

void ___ZL37coresymbolicationd_write_mmap_archive13XPCDictionaryRS_ji_block_invoke(uint64_t a1, MMapArchiveFileSystem **a2)
{
  if (*a2)
  {
    XPCObject::XPCObject(&v10, (a1 + 32));
    MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(v13, &v10);
    XPCObject::~XPCObject(&v10);
    if (*(a1 + 64) || v14 == -1)
    {
      v14 = *(a1 + 64);
    }

    v4 = MMapArchiveFileSystem::add_archive(*a2, v13, *(a1 + 40), *(a1 + 48));
    if (v4 == 3)
    {
      if ((attempt_grow_storage(std::unique_ptr<MMapArchiveFileSystem> &)::growth_failed_do_not_try_again & 1) == 0)
      {
        snprintf(__str, 0x400uLL, "%s/grow.XXXXXXX", storage_dirname);
        v5 = mkstemp(__str);
        v12 = 0;
        if (v5 != -1)
        {
          pthread_mutex_lock(*a2);
          v6 = *(*(*a2 + 11) + 8);
          operator new();
        }

        attempt_grow_storage(std::unique_ptr<MMapArchiveFileSystem> &)::growth_failed_do_not_try_again = 1;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to grow coresymbolicationd storage; will not attempt again unless daemon respawns\n", buf, 2u);
        }

        fwrite("Unable to grow coresymbolicationd storage; will not attempt again unless daemon respawns\n", 0x59uLL, 1uLL, __stderrp);
        v7 = v12;
        v12 = 0;
        if (v7)
        {
          MMapArchiveFileSystem::~MMapArchiveFileSystem(v7);
          operator delete();
        }
      }

      v4 = MMapArchiveFileSystem::add_archive(*a2, v13, *(a1 + 40), *(a1 + 48));
    }

    XPCDictionary::set_uint64(*(a1 + 56), "write_errno", v4);
    if (!v4)
    {
      if (_xpc_dict_box_entry(*(a1 + 56), a2, v13))
      {
        v8 = *(a1 + 56);
        MMapArchiveFileSystem::ArchiveEntry::encode(v13, __str);
        v9 = XPCObject::raw_ptr(__str);
        XPCDictionary::set_object(v8, "results", v9);
        XPCObject::~XPCObject(__str);
      }
    }
  }
}

void sub_1000040F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MMapArchiveFileSystem::add_archive(MMapArchiveFileSystem *this, UUID *a2, int32x4_t *a3, size_t a4)
{
  if ((UUID::is_null(a2) & 1) != 0 || *&(*a2)[32] == -1)
  {
    return 1;
  }

  v8 = 1;
  if (a4 >= 0x60 && a3 && *&(*a2)[24])
  {
    if (a3->i32[1])
    {
      v9 = a3[3].i32[0];
      if (v9 == TMMapArchive::calculate_checksum(a3) && TMMapArchive::are_offsets_in_bounds(a3))
      {
        pthread_mutex_lock(this);
        v10 = *(this + 11);
        v11 = *(v10 + 12);
        v12 = (v10 + 24);
        if (v11)
        {
          v13 = *&(*a2)[32];
          v14 = std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SortByUUID &,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry,std::__identity>(v12, &v12[7 * v11], a2);
          v12 = v14;
          v16 = v15;
          v17 = 1;
          v18 = v15;
          if (v14 != v15)
          {
            v19 = v14;
            while (1)
            {
              v20 = *(v19 + 32);
              if (v20 == -2)
              {
                if (*&(*a2)[32] != -2)
                {
                  goto LABEL_34;
                }

                v18 = v12;
                if (!is_replacement_entry(a3, *&(*a2)[46], v19, *(this + 16)))
                {
                  goto LABEL_34;
                }

                goto LABEL_41;
              }

              if (v20 >= v13)
              {
                break;
              }

              if (v17)
              {
                if (is_duplicate_entry(a3, a4, v19, *(this + 16)))
                {
                  v17 = 0;
                  *&(*a2)[16] = *(v19 + 16);
                  *&(*a2)[36] = *(v19 + 36);
                }

                else
                {
                  v17 = 1;
                }
              }

              else
              {
                v17 = 0;
              }

              v18 = (v19 + 56);
              v19 = v18;
              if (v18 == v16)
              {
                goto LABEL_41;
              }
            }

            if (v20 == v13)
            {
              if (*(v19 + 44) != *&(*a2)[44])
              {
                goto LABEL_40;
              }

              if (is_replacement_entry(a3, *&(*a2)[46], v19, *(this + 16)))
              {
                *(v19 + 48) = 1;
                goto LABEL_40;
              }

LABEL_34:
              v8 = 2;
              goto LABEL_86;
            }

            if (v17)
            {
              if (is_duplicate_entry(a3, a4, v19, *(this + 16)))
              {
                v17 = 0;
                *&(*a2)[16] = *(v19 + 16);
                *&(*a2)[36] = *(v19 + 36);
              }

              else
              {
                v17 = 1;
              }

LABEL_40:
              v18 = v19;
            }

            else
            {
              v17 = 0;
            }
          }

LABEL_41:
          if (*(*(this + 11) + 12) < *(*(this + 11) + 8))
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v16 = (v10 + 24);
          v18 = (v10 + 24);
          if (*(v10 + 8))
          {
LABEL_43:
            v22 = (a4 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
            v23 = *(this + 9) + v22;
            if (ftruncate(*(this + 16), v23))
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v24 = __error();
                v25 = strerror(*v24);
                *buf = 134218242;
                v50 = v23;
                v51 = 2080;
                v52 = v25;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Call to extend file size to %lld failed. %s\n", buf, 0x16u);
              }

              v26 = __stderrp;
              v27 = __error();
              v28 = strerror(*v27);
              fprintf(v26, "Call to extend file size to %lld failed. %s\n", v23, v28);
LABEL_85:
              ftruncate(*(this + 16), *(this + 9));
              v8 = 4;
              goto LABEL_86;
            }

            v29 = serialize_archive_to_disk(a3, *(this + 16), *(this + 9));
            v30 = v29;
            if (v29)
            {
              *&(*a2)[16] = *(this + 9);
              *&(*a2)[36] = v22;
              *(this + 9) = v23;
              fsync(*(this + 16));
            }

            if (!v22 || !a3->i64[0])
            {
              putchar(10);
              v48 = utility_basename("/Library/Caches/com.apple.xbs/Sources/CoreSymbolication/CoreSymbolication/MMapArchiveFileSystem.cpp");
              MMapArchiveFileSystem::add_archive(v48);
            }

            if (!v30)
            {
              goto LABEL_85;
            }

LABEL_53:
            if (*&(*a2)[32] == -2 && v12 != v16)
            {
              v31 = 0;
              v32 = (v16 - v12 - 56) / 0x38uLL;
              v33 = vdupq_n_s64(v32);
              v34 = (v32 + 16) & 0xFFFFFFFFFFFFFF0;
              do
              {
                v35 = vdupq_n_s64(v31);
                v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009590)));
                if (vuzp1_s8(vuzp1_s16(v36, *v33.i8), *v33.i8).u8[0])
                {
                  *(v12 + 48) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v36, *&v33), *&v33).i8[1])
                {
                  *(v12 + 104) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009580)))), *&v33).i8[2])
                {
                  *(v12 + 160) = 1;
                  *(v12 + 216) = 1;
                }

                v37 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009570)));
                if (vuzp1_s8(*&v33, vuzp1_s16(v37, *&v33)).i32[1])
                {
                  *(v12 + 272) = 1;
                }

                if (vuzp1_s8(*&v33, vuzp1_s16(v37, *&v33)).i8[5])
                {
                  *(v12 + 328) = 1;
                }

                if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009560))))).i8[6])
                {
                  *(v12 + 384) = 1;
                  *(v12 + 440) = 1;
                }

                v38 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009550)));
                if (vuzp1_s8(vuzp1_s16(v38, *v33.i8), *v33.i8).u8[0])
                {
                  *(v12 + 496) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v38, *&v33), *&v33).i8[1])
                {
                  *(v12 + 552) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009540)))), *&v33).i8[2])
                {
                  *(v12 + 608) = 1;
                  *(v12 + 664) = 1;
                }

                v39 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009530)));
                if (vuzp1_s8(*&v33, vuzp1_s16(v39, *&v33)).i32[1])
                {
                  *(v12 + 720) = 1;
                }

                if (vuzp1_s8(*&v33, vuzp1_s16(v39, *&v33)).i8[5])
                {
                  *(v12 + 776) = 1;
                }

                if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_100009520))))).i8[6])
                {
                  *(v12 + 832) = 1;
                  *(v12 + 888) = 1;
                }

                v31 += 16;
                v12 += 112;
              }

              while (v34 != v31);
            }

            v40 = *(this + 11);
            v41 = *(v40 + 12);
            memmove(v18 + 7, v18, v40 + 56 * v41 - v18 + 24);
            v8 = 0;
            v42 = *(this + 11);
            v43 = *(v42 + 16);
            if ((v43 + 1) > 1)
            {
              v44 = v43 + 1;
            }

            else
            {
              v44 = 1;
            }

            *(v42 + 16) = v44;
            *&(*a2)[40] = v44;
            *v45 = *a2;
            v46 = *&(*a2)[16];
            v47 = *&(*a2)[32];
            v18[6] = *&(*a2)[48];
            *(v18 + 1) = v46;
            *(v18 + 2) = v47;
            *v18 = *v45;
            *(*(this + 11) + 12) = v41 + 1;
            goto LABEL_86;
          }
        }

        v8 = 3;
LABEL_86:
        pthread_mutex_unlock(this);
        return v8;
      }

      return 6;
    }

    else
    {
      return 5;
    }
  }

  return v8;
}

unint64_t *std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SortByUUID &,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry,std::__identity>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a2 == a1)
  {
    return a2;
  }

  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
  v5 = bswap64(*a3);
  while (1)
  {
    v6 = v4 >> 1;
    v7 = &v3[7 * (v4 >> 1)];
    v8 = bswap64(*v7);
    if (v8 == v5)
    {
      v8 = bswap64(v7[1]);
      v9 = bswap64(a3[1]);
      if (v8 == v9)
      {
        break;
      }
    }

    else
    {
      v9 = v5;
    }

    v10 = v8 < v9 ? -1 : 1;
    if ((v10 & 0x80000000) == 0)
    {
      break;
    }

    v3 = v7 + 7;
    v6 = v4 + ~v6;
LABEL_19:
    v4 = v6;
    if (!v6)
    {
      return v3;
    }
  }

  v11 = bswap64(*a3);
  v12 = bswap64(*v7);
  if (v11 != v12 || (v11 = bswap64(a3[1]), v12 = bswap64(v7[1]), v11 != v12))
  {
    v13 = v11 < v12 ? -1 : 1;
    if (v13 < 0)
    {
      a2 = &v3[7 * (v4 >> 1)];
      goto LABEL_19;
    }
  }

  if (v4 != 1)
  {
    v14 = bswap64(*a3);
    do
    {
      v15 = v6 >> 1;
      v16 = &v3[7 * (v6 >> 1)];
      v17 = bswap64(*v16);
      if (v17 == v14)
      {
        v17 = bswap64(v16[1]);
        v18 = bswap64(a3[1]);
        if (v17 == v18)
        {
          v19 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v18 = v14;
      }

      if (v17 < v18)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

LABEL_31:
      v20 = v16 + 7;
      v6 += ~v15;
      if (v19 < 0)
      {
        v3 = v20;
      }

      else
      {
        v6 = v15;
      }
    }

    while (v6);
  }

  std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SortByUUID &,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry,std::__identity &>(v7 + 7, a2, a3);
  return v3;
}

BOOL is_duplicate_entry(const void *a1, size_t a2, uint64_t a3, int a4)
{
  if (((a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000) != *(a3 + 36))
  {
    return 0;
  }

  v6 = *(a3 + 16);
  v13 = v6 & 0x3FFF;
  v14 = (a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
  v12 = ((((a2 + 0x3FFF) | 0x3FFF) + v6) & 0xFFFFFFFFFFFFC000) - (v6 & 0xFFFFFFFFFFFFC000);
  v11 = mmap(0, v12, 1, 1, a4, v6 & 0xFFFFFFFFFFFFC000);
  v7 = &v11[v13];
  if (v11 == -1 || v7 + 1 == 0)
  {
    MMapArchiveFileSystem::MMapMemory::~MMapMemory(&v11);
    return 0;
  }

  v10 = memcmp(a1, v7, a2) == 0;
  MMapArchiveFileSystem::MMapMemory::~MMapMemory(&v11);
  return v10;
}

BOOL TMMapArchive::are_offsets_in_bounds(TMMapArchive *this)
{
  v2 = this + 96;
  v3 = this + 32 * *(this + 2) + 24 * *(this + 3) + (24 * *(this + 4)) + (4 * *(this + 4)) + (36 * *(this + 5)) + (20 * *(this + 6)) + *(this + 22) + *(this + 20) + 96;
  v4 = TMMapArchive::strtab_end(this);
  v5 = TMMapArchive::dsym_path(this);
  if (v5)
  {
    if (v5 < v3 || v5 >= v4)
    {
      return 0;
    }
  }

  v8 = *(this + 11);
  v9 = *(this + 4);
  v10 = (32 * *(this + 2));
  v11 = (24 * *(this + 3));
  v12 = *(this + 22);
  v13 = (24 * v9);
  v14 = (36 * *(this + 5));
  v15 = (20 * *(this + 6));
  v16 = (4 * v9);
  if (!v8 || (v17 = &v2[v8 + v10 + v11 + v13 + v16 + v14 + v15 + v12 + *(this + 20)]) == 0 || (result = 0, v17 >= v3) && v17 < v4)
  {
    v18 = &v2[v10 + v11];
    v19 = &v18[v13];
    v20 = &v18[v13 + v14 + v15];
    v21 = (v20 + v12);
    if (v12)
    {
      v22 = v20;
      do
      {
        v23 = v20 - *v22;
        if (v23 < v18 || v23 >= v19)
        {
          return 0;
        }

        ++v22;
        ++v20;
      }

      while (v22 != v21);
    }

    if (v16)
    {
      v25 = (v21 + v16);
      v26 = v21 + 1;
      do
      {
        v27 = v21 - *(v26 - 1);
        result = v27 >= v18 && v27 < v19;
        v29 = !result || v26++ == v25;
        ++v21;
      }

      while (!v29);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t TMMapArchive::strtab_end(TMMapArchive *this)
{
  v1 = *(this + 2);
  v2.i64[0] = v1;
  v2.i64[1] = HIDWORD(v1);
  v3 = v2;
  v3.i32[1] = v2.i32[0];
  v3.i32[3] = *(this + 6);
  return this + *(this + 20) + *(this + 21) + vaddlvq_u32(vmulq_s32(v3, xmmword_1000095A0)) + (32 * *(this + 2)) + (24 * *(this + 3)) + *(this + 22) + 96;
}

uint64_t TMMapArchive::dsym_path(TMMapArchive *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 2);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = v3;
  v4.i32[1] = v3.i32[0];
  v4.i32[3] = *(this + 6);
  return this + *(this + 22) + *(this + 20) + vaddlvq_u32(vmulq_s32(v4, xmmword_1000095A0)) + (32 * *(this + 2)) + (24 * *(this + 3)) + v1 + 96;
}

unint64_t *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SortByUUID &,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry,std::__identity &>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  if (a2 != result)
  {
    v3 = 0x6DB6DB6DB6DB6DB7 * (a2 - result);
    v4 = bswap64(*a3);
    do
    {
      v5 = v3 >> 1;
      v6 = &result[7 * (v3 >> 1)];
      v7 = bswap64(*v6);
      if (v4 == v7)
      {
        v8 = bswap64(a3[1]);
        v7 = bswap64(v6[1]);
        if (v8 == v7)
        {
          v9 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v8 = v4;
      }

      if (v8 < v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

LABEL_10:
      v10 = v6 + 7;
      v3 += ~v5;
      if (v9 < 0)
      {
        v3 = v5;
      }

      else
      {
        result = v10;
      }
    }

    while (v3);
  }

  return result;
}

void MMapArchiveFileSystem::ArchiveEntry::encode(int8x16_t *this@<X0>, void *a2@<X8>)
{
  XPCArray::XPCArray(&v6);
  if (this[2].i16[6] == 3)
  {
    UUID::get_complement(this);
    *&v7.byte0 = v4;
    *&v7.byte8 = v5;
    XPCArray::set_uuid(&v6, 0xFFFFFFFFFFFFFFFFLL, &v7);
  }

  else
  {
    XPCArray::set_uuid(&v6, 0xFFFFFFFFFFFFFFFFLL, this);
  }

  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[1].u64[0]);
  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[1].u64[1]);
  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[2].u32[0]);
  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[2].u32[1]);
  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[2].u32[2]);
  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[2].u16[6]);
  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[2].u16[7]);
  XPCArray::set_uint64(&v6, 0xFFFFFFFFFFFFFFFFLL, this[3].u8[0]);
  XPCObject::XPCObject(a2, &v6);
  XPCObject::~XPCObject(&v6);
}

void *XPCObject::XPCObject(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

uint64_t std::unique_ptr<void,coresymbolicationd_write_mmap_archive(XPCDictionary,XPCDictionary&,unsigned int,int)::$_0>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    munmap(v2, *(a1 + 8));
  }

  return a1;
}

BOOL is_replacement_entry(const TMMapArchive *a1, unsigned int a2, MMapArchiveFileSystem::ArchiveEntry *a3, int a4)
{
  if (*(a3 + 22) != 7)
  {
    return 1;
  }

  v7 = *(a3 + 2);
  v19 = *(a3 + 9);
  v8 = v7 & 0x3FFF;
  v17 = ((v7 + v19 + 0x3FFF) & 0xFFFFFFFFFFFFC000) - (v7 & 0xFFFFFFFFFFFFC000);
  v18 = v8;
  v9 = mmap(0, v17, 1, 1, a4, v7 & 0xFFFFFFFFFFFFC000);
  v16 = v9;
  v11 = 0;
  if (v9 != -1)
  {
    v10 = &v9[v8];
    if (v10 != -1)
    {
      if (*(a3 + 23) < a2 || TMMapArchive::dsym_path(a1) && !TMMapArchive::dsym_path(v10) || *(a1 + 3) > *(v10 + 3) || *(a1 + 4) > *(v10 + 4) || *(a1 + 6) > *(v10 + 6) || *(a1 + 20) && (*(a1 + 7) & 0x1000) != 0 && !*(v10 + 20) || ((v12 = TMMapArchive::optional_data(a1)) == 0 || !*(v12 + 1) ? (v13 = 0) : *(v12 + 2) >= 0x14u ? (v13 = (v12 + 16)) : (v13 = 0), (v14 = TMMapArchive::optional_data(v10)) != 0 && *(v14 + 1) && v13 && *(v14 + 2) >= 0x14u && do_candidate_sources_replace_existing(*v13, *(v14 + 4))))
      {
        v11 = 1;
      }
    }
  }

  MMapArchiveFileSystem::MMapMemory::~MMapMemory(&v16);
  return v11;
}

char *TMMapArchive::optional_data(TMMapArchive *this)
{
  result = TMMapArchive::strtab_end(this);
  v3 = this + *(this + 1);
  v4 = v3 > result;
  v5 = v3 - result;
  if (!v4 || v5 < 0xC || *result != 12648430 || !*(result + 1))
  {
    return 0;
  }

  LODWORD(v6) = *(result + 2);
  if (v6 <= 0xC)
  {
    v6 = 12;
  }

  else
  {
    v6 = v6;
  }

  if (v5 != v6)
  {
    return 0;
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  launch_time = time(0);
  if (initialize_storage())
  {
    mach_service = xpc_connection_create_mach_service("com.apple.coresymbolicationd", 0, 1uLL);
    coresymbolicationd_listener = mach_service;
    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &__block_literal_global);
      xpc_connection_resume(coresymbolicationd_listener);
      dispatch_main();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to acquire mach service port, exiting\n", buf, 2u);
    }

    fwrite("Unable to acquire mach service port, exiting\n", 0x2DuLL, 1uLL, __stderrp);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v5 = storage_path;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to open storage at %s\n", buf, 0xCu);
    }

    fprintf(__stderrp, "Unable to open storage at %s\n", storage_path);
  }

  shutdown();
  exit(1);
}

uint64_t shutdown(void)
{
  _access_storage(&__block_literal_global_32);
  if (coresymbolicationd_listener)
  {
    xpc_connection_cancel(coresymbolicationd_listener);
    coresymbolicationd_listener = 0;
  }

  return _xpc_transaction_exit_clean();
}

void __main_block_invoke_5(uint64_t a1, void *a2)
{
  coresymbolicationd_peer_event_handler(*(a1 + 32), a2, &v5);
  if (*(a1 + 32) && XPCObject::raw_ptr(&v5))
  {
    v3 = *(a1 + 32);
    v4 = XPCObject::raw_ptr(&v5);
    xpc_connection_send_message(v3, v4);
  }

  XPCObject::~XPCObject(&v5);
}

void sub_100005404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XPCObject::~XPCObject(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::allocator<int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
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

void ___ZL8shutdownv_block_invoke(id a1, void *a2)
{
  if (*a2)
  {
    MMapArchiveFileSystem::mark_storage_purgeable(*a2);

    std::unique_ptr<MMapArchiveFileSystem>::reset[abi:ne200100](a2, 0);
  }
}

uint64_t ___ZL37coresymbolicationd_peer_event_handlerP17_xpc_connection_sPv_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  v2 = atomic_load(allowed_deinit_number);
  if (v1 == v2)
  {
    result = _access_storage(&__block_literal_global_40);
  }

  atomic_fetch_add(allowed_deinit_number, 1u);
  return result;
}

void ___ZL37coresymbolicationd_peer_event_handlerP17_xpc_connection_sPv_block_invoke_3(id a1, void *a2)
{
  if (*a2 && !_connection_count(3, -1))
  {
    MMapArchiveFileSystem::mark_storage_purgeable(*a2);

    std::unique_ptr<MMapArchiveFileSystem>::reset[abi:ne200100](a2, 0);
  }
}

void ___ZL25coresymbolicationd_statusRK13XPCDictionaryRS__block_invoke(uint64_t a1, pthread_mutex_t **a2)
{
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  MMapArchiveFileSystem::status(*a2, &v6[2], &v6[1], v6, &v5);
  v3 = time(0);
  v4 = difftime(v3, launch_time);
  XPCDictionary::set_uint64(*(a1 + 32), "version", v6[2]);
  XPCDictionary::set_uint64(*(a1 + 32), "capacity", v6[1]);
  XPCDictionary::set_uint64(*(a1 + 32), "count", v6[0]);
  XPCDictionary::set_uint64(*(a1 + 32), "bytes_total", v5);
  XPCDictionary::set_double(*(a1 + 32), "uptime", v4);
}

void ___ZL27coresymbolicationd_validate13XPCDictionaryRS__block_invoke(uint64_t a1, pthread_mutex_t **a2)
{
  if (*a2 && MMapArchiveFileSystem::validate(*a2))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);

  XPCDictionary::set_uint64(v4, "is_valid", v3);
}

void std::vector<MMapArchiveFileSystem::ArchiveEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<MMapArchiveFileSystem::ArchiveEntry>::allocate_at_least[abi:ne200100](a1, v13);
    }

    v14 = 56 * v10;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v9 = 56 * v10 + 56;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = v4 + 56;
  }

  *(a1 + 8) = v9;
}

void ___ZL38coresymbolicationd_match_mmap_archives13XPCDictionaryRS_j_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    XPCArray::XPCArray(&v12);
    MMapArchiveFileSystem::match_archives(*a2, (a1 + 32), &v10);
    v4 = v10;
    v5 = v11;
    if (v10 != v11)
    {
      do
      {
        MMapArchiveFileSystem::ArchiveEntry::encode(v4, &v9);
        v6 = XPCObject::raw_ptr(&v9);
        XPCArray::append_object(&v12, v6);
        XPCObject::~XPCObject(&v9);
        v4 = (v4 + 56);
      }

      while (v4 != v5);
      v4 = v10;
    }

    if (v4)
    {
      v11 = v4;
      operator delete(v4);
    }

    v7 = *(a1 + 56);
    v8 = XPCObject::raw_ptr(&v12);
    XPCDictionary::set_object(v7, "results", v8);
    XPCObject::~XPCObject(&v12);
  }
}

uint64_t __copy_helper_block_e8_32c79_ZTSNSt3__16vectorIN21MMapArchiveFileSystem12ArchiveEntryENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<MMapArchiveFileSystem::ArchiveEntry>::__init_with_size[abi:ne200100]<MMapArchiveFileSystem::ArchiveEntry*,MMapArchiveFileSystem::ArchiveEntry*>(v2, *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
}

void __destroy_helper_block_e8_32c79_ZTSNSt3__16vectorIN21MMapArchiveFileSystem12ArchiveEntryENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void std::allocator<MMapArchiveFileSystem::ArchiveEntry>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<MMapArchiveFileSystem::ArchiveEntry>::__init_with_size[abi:ne200100]<MMapArchiveFileSystem::ArchiveEntry*,MMapArchiveFileSystem::ArchiveEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MMapArchiveFileSystem::ArchiveEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_100005AE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MMapArchiveFileSystem::ArchiveEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::allocator<MMapArchiveFileSystem::ArchiveEntry>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void ___ZL39coresymbolicationd_delete_mmap_archives13XPCDictionaryRS_j_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    XPCArray::XPCArray(&v12);
    MMapArchiveFileSystem::delete_archives(*a2, a1 + 32, *(a1 + 64), &v10);
    v4 = v10;
    v5 = v11;
    if (v10 != v11)
    {
      do
      {
        MMapArchiveFileSystem::ArchiveEntry::encode(v4, &v9);
        v6 = XPCObject::raw_ptr(&v9);
        XPCArray::append_object(&v12, v6);
        XPCObject::~XPCObject(&v9);
        v4 = (v4 + 56);
      }

      while (v4 != v5);
      v4 = v10;
    }

    if (v4)
    {
      v11 = v4;
      operator delete(v4);
    }

    v7 = *(a1 + 56);
    v8 = XPCObject::raw_ptr(&v12);
    XPCDictionary::set_object(v7, "results", v8);
    XPCObject::~XPCObject(&v12);
  }
}

uint64_t std::vector<MMapArchiveFileSystem::ArchiveEntry>::__init_with_size[abi:ne200100]<MMapArchiveFileSystem::ArchiveEntry const*,MMapArchiveFileSystem::ArchiveEntry const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MMapArchiveFileSystem::ArchiveEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_100005CE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL26coresymbolicationd_compact13XPCDictionaryRS__block_invoke(uint64_t a1, pthread_mutex_t **a2)
{
  if (*a2)
  {
    MMapArchiveFileSystem::delete_old_archives(*a2, *(a1 + 32), __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    XPCDictionary::set_uint64(*(a1 + 40), "success", 1uLL);
  }
}

char *utility_basename(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2 == 1)
  {
    v5 = 2;
  }

  else
  {
    v3 = v2;
    if (!v2)
    {

      return strdup(v1);
    }

    v6 = 0;
    v7 = &v1[v2];
    do
    {
      v8 = &v7[v6--];
      v9 = *(v8 - 1);
    }

    while (v9 != 47 && v6 + v2 != 0);
    if (v2 + v6)
    {
      if (v6 == -1)
      {
        v13 = malloc_type_malloc(v2, 0x100004077774924uLL);
        strlcpy(v13, v1, v3);
        return v13;
      }

      v11 = malloc_type_malloc(-v6, 0x100004077774924uLL);
      v12 = &v7[v6 + 1];
      goto LABEL_20;
    }

    if (v9 == 47)
    {
      ++v1;
    }

    v5 = v7 - v1 + 1;
  }

  v11 = malloc_type_malloc(v5, 0x100004077774924uLL);
  v12 = v1;
LABEL_20:

  return strcpy(v11, v12);
}

BOOL path_exists(const char *a1, BOOL *a2)
{
  v3 = stat(a1, &v5);
  if (a2 && !v3)
  {
    *a2 = (v5.st_mode & 0xF000) == 0x4000;
  }

  return v3 == 0;
}

__n128 MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(MMapArchiveFileSystem::ArchiveEntry *this, __n128 *a2, uint64_t a3, int a4, int a5, __int16 a6, __int16 a7)
{
  result = *a2;
  *this = *a2;
  *(this + 2) = 0;
  *(this + 3) = a3;
  *(this + 8) = a4;
  *(this + 9) = 0;
  *(this + 10) = a5;
  *(this + 22) = a6;
  *(this + 23) = a7;
  *(this + 48) = 0;
  return result;
}

uint64_t MMapArchiveFileSystem::close(MMapArchiveFileSystem *this)
{
  pthread_mutex_lock(this);
  v2 = *(this + 16);
  if (v2 != -1)
  {
    close(v2);
    *(this + 16) = -1;
  }

  if (*(this + 10))
  {
    std::unique_ptr<MMapArchiveFileSystem::MMapMemory>::reset[abi:ne200100](this + 10, 0);
  }

  *(this + 11) = -1;
  return pthread_mutex_unlock(this);
}

void MMapArchiveFileSystem::MMapArchiveFileSystem(MMapArchiveFileSystem *this, const char *a2, unsigned int a3)
{
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = 850045863;
  *(this + 16) = -1;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = -1;
  unlink(a2);
  v6 = open(a2, 16778754, 384);
  *(this + 16) = v6;
  if (v6 == -1 || (MMapArchiveFileSystem::initialize(this, a3) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136315394;
      v13 = a2;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Attempt to create [%s] failed. %s\n", buf, 0x16u);
    }

    v9 = __stderrp;
    v10 = __error();
    v11 = strerror(*v10);
    fprintf(v9, "Attempt to create [%s] failed. %s\n", a2, v11);
    MMapArchiveFileSystem::close(this);
  }
}

uint64_t MMapArchiveFileSystem::initialize(MMapArchiveFileSystem *this, unsigned int a2)
{
  v3 = (56 * a2 + 16407) & 0x7FFFFFC000;
  *(this + 9) = v3;
  if (!ftruncate(*(this + 16), v3))
  {
    v5 = *(this + 9);
    operator new();
  }

  return 0;
}

void MMapArchiveFileSystem::MMapArchiveFileSystem(MMapArchiveFileSystem *this, int a2, unsigned int a3)
{
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = 850045863;
  *(this + 16) = a2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = -1;
  if ((MMapArchiveFileSystem::initialize(this, a3) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Attempt to initialize fd failed. %s\n", buf, 0xCu);
    }

    v6 = __stderrp;
    v7 = __error();
    v8 = strerror(*v7);
    fprintf(v6, "Attempt to initialize fd failed. %s\n", v8);
    MMapArchiveFileSystem::close(this);
  }
}

uint64_t MMapArchiveFileSystem::status(pthread_mutex_t *this, unsigned int *a2, unsigned int *a3, unsigned int *a4, unint64_t *a5)
{
  pthread_mutex_lock(this);
  v10 = *&this[1].__opaque[16];
  *a2 = v10[1];
  *a3 = v10[2];
  *a4 = v10[3];
  *a5 = MMapArchiveFileSystem::bytes_in_use(this);
  pthread_mutex_unlock(this);
  return 1;
}

uint64_t MMapArchiveFileSystem::bytes_in_use(MMapArchiveFileSystem *this)
{
  v1 = *(this + 11);
  v2 = (56 * *(v1 + 8) + 16407) & 0x7FFFFFC000;
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  v3 = *(v1 + 12);
  if (v3)
  {
    v4 = 56 * v3;
    v5 = v1 + 40;
    do
    {
      v7 = *v5;
      if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v8, &v7))
      {
        v7 = *v5;
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(v8, &v7);
        v2 += *(v5 + 20);
      }

      v5 += 56;
      v4 -= 56;
    }

    while (v4);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v8);
  return v2;
}

void sub_1000065DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MMapArchiveFileSystem::match_archives@<X0>(uint64_t a1@<X0>, UUID **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pthread_mutex_lock(a1);
  v6 = *(a1 + 88);
  v7 = *(v6 + 12);
  if (v7)
  {
    v8 = (v6 + 24);
    v9 = v6 + 24 + 56 * v7;
    do
    {
      v10 = *a2;
      v11 = a2[1];
      while (v10 != v11)
      {
        if (MMapArchiveFileSystem::ArchiveEntry::matches(v10, v8))
        {
          v12 = a3[1];
          v13 = a3[2];
          if (v12 >= v13)
          {
            v18 = *a3;
            v19 = v12 - *a3;
            v20 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 3) + 1;
            if (v20 > 0x492492492492492)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v21 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v18) >> 3);
            if (2 * v21 > v20)
            {
              v20 = 2 * v21;
            }

            if (v21 >= 0x249249249249249)
            {
              v20 = 0x492492492492492;
            }

            if (v20)
            {
              std::allocator<MMapArchiveFileSystem::ArchiveEntry>::allocate_at_least[abi:ne200100](a3, v20);
            }

            v22 = 8 * (v19 >> 3);
            v23 = *v8;
            v24 = v8[1];
            v25 = v8[2];
            *(v22 + 48) = *(v8 + 6);
            *(v22 + 16) = v24;
            *(v22 + 32) = v25;
            *v22 = v23;
            v17 = v22 + 56;
            v26 = v22 - v19;
            memcpy((v22 - v19), v18, v19);
            v27 = *a3;
            *a3 = v26;
            a3[1] = v17;
            a3[2] = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            v14 = *v8;
            v15 = v8[1];
            v16 = v8[2];
            *(v12 + 6) = *(v8 + 6);
            *(v12 + 1) = v15;
            *(v12 + 2) = v16;
            *v12 = v14;
            v17 = (v12 + 56);
          }

          a3[1] = v17;
          break;
        }

        v10 = (v10 + 56);
      }

      v8 = (v8 + 56);
    }

    while (v8 != v9);
  }

  return pthread_mutex_unlock(a1);
}

void sub_1000067B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, pthread_mutex_t *a10)
{
  pthread_mutex_unlock(a10);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t MMapArchiveFileSystem::_remove_entries_with_predicate@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(*(a1 + 88) + 12);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::__value_func[abi:ne200100](v28, a4);
  v10 = std::__stable_partition_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)> &,MMapArchiveFileSystem::ArchiveEntry*>(a2, a3, v28);
  std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::~__value_func[abi:ne200100](v28);
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  if (v10 != a2)
  {
    v11 = a2;
    do
    {
      v27 = *(v11 + 2);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(v24, &v27);
      std::vector<MMapArchiveFileSystem::ArchiveEntry>::push_back[abi:ne200100](a5, v11);
      v11 = (v11 + 56);
    }

    while (v11 != v10);
  }

  MMapArchiveFileSystem::punch_cache_hole(a1, a5);
  v26 = v24;
  if (v10 == a3)
  {
    v13 = v10;
  }

  else
  {
    v12 = a3 - v10;
    v13 = v10;
    do
    {
      v27 = *(v13 + 2);
      if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v24, &v27))
      {
        v14 = a3 - 56;
        do
        {
          if (v13 == v14)
          {
            goto LABEL_26;
          }

          v27 = *(v14 + 16);
          v14 -= 56;
          v12 -= 56;
        }

        while (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v24, &v27));
        v15 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3) + 1;
        if (v12 < 113)
        {
          v20 = 0;
          v16 = 0;
        }

        else
        {
          v23 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3) + 1;
          if (v15 >= 0x249249249249249)
          {
            v16 = 0x249249249249249;
          }

          else
          {
            v16 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3) + 1;
          }

          while (1)
          {
            v17 = operator new(56 * v16, &std::nothrow);
            if (v17)
            {
              break;
            }

            v18 = v16 >> 1;
            v19 = v16 > 1;
            v16 >>= 1;
            if (!v19)
            {
              v20 = 0;
              v16 = v18;
              goto LABEL_22;
            }
          }

          v20 = v17;
LABEL_22:
          v15 = v23;
        }

        v13 = std::__stable_partition_impl<std::_ClassicAlgPolicy,MMapArchiveFileSystem::_remove_entries_with_predicate(MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry&)>)::$_1 &,MMapArchiveFileSystem::ArchiveEntry *,long,std::pair<MMapArchiveFileSystem::ArchiveEntry *,long>>(v13, (v14 + 56), &v26, v15, v20, v16);
        if (v20)
        {
          operator delete(v20);
        }

        goto LABEL_26;
      }

      v13 = (v13 + 56);
      v12 -= 56;
    }

    while (v13 != a3);
    do
    {
      std::vector<MMapArchiveFileSystem::ArchiveEntry>::push_back[abi:ne200100](a5, v10);
      v10 = (v10 + 56);
LABEL_26:
      ;
    }

    while (v10 != v13);
  }

  v21 = v9 + 1227133513 * ((a5[1] - *a5) >> 3);
  *(*(a1 + 88) + 12) = v21;
  memmove(a2, v13, 56 * v21);
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v24);
}

uint64_t MMapArchiveFileSystem::punch_cache_hole(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      v15 = 0;
      v16 = v5;
      v17 = *(v2 + 36);
      result = fcntl(*(v4 + 64), 99, &v15);
      if (result)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v7 = v16;
          v6 = v17;
          v8 = __error();
          v9 = strerror(*v8);
          *buf = 134218498;
          v19 = v7;
          v20 = 2048;
          v21 = v6;
          v22 = 2080;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to execute PUNCHHOLE at offset %lld with size %lld. Reason = %s", buf, 0x20u);
        }

        v10 = __stderrp;
        v11 = v16;
        v12 = v17;
        v13 = __error();
        v14 = strerror(*v13);
        result = fprintf(v10, "Failed to execute PUNCHHOLE at offset %lld with size %lld. Reason = %s", v11, v12, v14);
      }

      v2 += 56;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t MMapArchiveFileSystem::delete_archives@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  pthread_mutex_lock(a1);
  v8 = *(a1 + 88);
  v9 = *(v8 + 12);
  if (v9)
  {
    v14[0] = off_10000C790;
    v14[1] = a2;
    LOBYTE(v15[0]) = a3;
    v15[1] = v14;
    memset(v15 + 1, 0, 7);
    MMapArchiveFileSystem::_remove_entries_with_predicate(a1, (v8 + 24), v8 + 24 + 56 * v9, v14, &v12);
    v10 = v13;
    *a4 = v12;
    a4[2] = v10;
    v13 = 0;
    v12 = 0uLL;
    std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::~__value_func[abi:ne200100](v14);
  }

  return pthread_mutex_unlock(a1);
}

void sub_100006D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::~__value_func[abi:ne200100](va);
  pthread_mutex_unlock(v4);
  _Unwind_Resume(a1);
}

uint64_t MMapArchiveFileSystem::delete_old_archives@<X0>(pthread_mutex_t *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pthread_mutex_lock(this);
  if (a2)
  {
    v6 = *&this[1].__opaque[16];
    v7 = *(v6 + 12);
    if (v7)
    {
      v12 = 0;
      v13[0] = off_10000C820;
      v13[1] = a2;
      v13[2] = &v12;
      v13[3] = v13;
      MMapArchiveFileSystem::_remove_entries_with_predicate(this, (v6 + 24), v6 + 24 + 56 * v7, v13, &v10);
      v8 = v11;
      *a3 = v10;
      a3[2] = v8;
      v11 = 0;
      v10 = 0uLL;
      std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::~__value_func[abi:ne200100](v13);
    }
  }

  return pthread_mutex_unlock(this);
}

void sub_100006E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::~__value_func[abi:ne200100](va);
  pthread_mutex_unlock(v6);
  _Unwind_Resume(a1);
}

BOOL serialize_archive_to_disk(int32x4_t *__buf, int __fd, off_t a3)
{
  v3 = __buf;
  v9 = a3;
  if ((__buf[1].i8[13] & 0x10) != 0 || !__buf[5].i32[0])
  {
    v8 = __buf->u32[1];
    return TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(__buf, v8, __fd, &v9);
  }

  v5 = __buf->u32[1];
  result = TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(__buf, 4uLL, __fd, &v9);
  if (result)
  {
    __bufa = v3->i32[1] - v3[5].i32[0];
    result = TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(&__bufa, 4uLL, __fd, &v9);
    if (result)
    {
      result = TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(&v3->u64[1], 0x28uLL, __fd, &v9);
      if (result)
      {
        v11 = TMMapArchive::calculate_checksum(v3) - v3[5].i32[0];
        result = TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(&v11, 4uLL, __fd, &v9);
        if (result)
        {
          result = TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(v3[3].i64 + 4, 0x18uLL, __fd, &v9);
          if (result)
          {
            v10 = 0;
            result = TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(&v10, 8uLL, __fd, &v9);
            if (result)
            {
              v7 = (4 * v3[1].i32[0]) + TMMapArchive::by_mangled_name_map(v3);
              result = TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(v3[5].i64 + 4, v7 - (v3 + 84), __fd, &v9);
              if (result)
              {
                __buf = (v7 + v3[5].u32[0]);
                v8 = &v3->i8[v5] - __buf;
                return TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(__buf, v8, __fd, &v9);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MMapArchiveFileSystem::copy_locked(uint64_t a1, MMapArchiveFileSystem **a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 88);
  v4 = *(v3 + 12);
  if ((v4 - 1) >= *(*(*a2 + 11) + 8))
  {
    return 1;
  }

  v8 = 56 * v4;
  for (i = (v3 + 72); ; i += 56)
  {
    if (*i == 1)
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 64);
    v11 = *(i - 4);
    v22 = *(i - 3);
    v20 = ((v11 + v22 + 0x3FFF) & 0xFFFFFFFFFFFFC000) - (v11 & 0xFFFFFFFFFFFFC000);
    v21 = v11 & 0x3FFF;
    v12 = mmap(0, v20, 1, 1, v10, v11 & 0xFFFFFFFFFFFFC000);
    v19 = v12;
    if (v12 == -1 || &v12[v21] == -1)
    {
      break;
    }

    v13 = *(i - 3);
    v14 = *i;
    v15 = *(i - 1);
    v24 = *(i - 2);
    *v25 = v15;
    v26 = v14;
    *v23 = v13;
    v16 = MMapArchiveFileSystem::add_archive(*a2, v23, &v12[v21], DWORD1(v15));
    *a3 = v16;
    if (v16)
    {
      if (v16 != 5)
      {
        break;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "coresymbolicationd: compact operation encountered empty archive:", v18, 2u);
      }
    }

    MMapArchiveFileSystem::MMapMemory::~MMapMemory(&v19);
LABEL_11:
    v8 -= 56;
    if (!v8)
    {
      return 1;
    }
  }

  MMapArchiveFileSystem::MMapMemory::~MMapMemory(&v19);
  return 0;
}

void sub_1000071B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MMapArchiveFileSystem::MMapMemory::~MMapMemory(va);
  _Unwind_Resume(a1);
}

uint64_t MMapArchiveFileSystem::mark_storage_purgeable(MMapArchiveFileSystem *this)
{
  v8 = 67589;
  result = ffsctl(*(this + 16), 0xC0084A44uLL, &v8, 0);
  if (result)
  {
    v2 = result;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = __error();
      v4 = strerror(*v3);
      *buf = 67109634;
      v10 = v2;
      v11 = 2080;
      v12 = v4;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to mark storage purgeable - flags %d (%s) (flags 0x%llx)\n", buf, 0x1Cu);
    }

    v5 = __stderrp;
    v6 = __error();
    v7 = strerror(*v6);
    return fprintf(v5, "Failed to mark storage purgeable - flags %d (%s) (flags 0x%llx)\n", v2, v7, v8);
  }

  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

BOOL TMMapArchiveSerialization::_invoke_supplied_callback<serialize_archive_to_disk(TMMapArchive const*,int,long long)::$_0>(void *__buf, size_t __nbyte, int __fd, off_t *a4)
{
  if (!__nbyte)
  {
    return 1;
  }

  v6 = __nbyte;
  v8 = *a4;
  do
  {
    v9 = 4;
    do
    {
      v10 = pwrite(__fd, __buf, v6, v8);
      v11 = v10 != -1;
      if (v10 == -1 && *__error() != 4)
      {
        return 0;
      }
    }

    while (*__error() == 4 && v9-- != 0);
    if (v10 == -1)
    {
      break;
    }

    v8 = *a4 + v10;
    *a4 = v8;
    v6 -= v10;
  }

  while (v6);
  return v11;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

__int128 *std::__stable_partition_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)> &,MMapArchiveFileSystem::ArchiveEntry*>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a2;
    for (i = a2 - a1; ; i -= 56)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
LABEL_23:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if (((*(*v7 + 48))(v7, v3) & 1) == 0)
      {
        break;
      }

      v3 = (v3 + 56);
      if (v3 == v5)
      {
        return v3;
      }
    }

    while (1)
    {
      v5 -= 56;
      if (v3 == v5)
      {
        break;
      }

      v8 = *(a3 + 24);
      if (!v8)
      {
        goto LABEL_23;
      }

      i -= 56;
      if ((*(*v8 + 48))(v8, v5))
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * (i >> 3) + 1;
        if (i < 113)
        {
          v14 = 0;
          v10 = 0;
        }

        else
        {
          if (v9 >= 0x249249249249249)
          {
            v10 = 0x249249249249249;
          }

          else
          {
            v10 = 0x6DB6DB6DB6DB6DB7 * (i >> 3) + 1;
          }

          while (1)
          {
            v11 = operator new(56 * v10, &std::nothrow);
            if (v11)
            {
              break;
            }

            v12 = v10 >> 1;
            v13 = v10 > 1;
            v10 >>= 1;
            if (!v13)
            {
              v14 = 0;
              v10 = v12;
              goto LABEL_20;
            }
          }

          v14 = v11;
        }

LABEL_20:
        v3 = std::__stable_partition_impl<std::_ClassicAlgPolicy,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)> &,MMapArchiveFileSystem::ArchiveEntry*,long,std::pair<MMapArchiveFileSystem::ArchiveEntry*,long>>(v3, v5, a3, v9, v14, v10);
        if (v14)
        {
          operator delete(v14);
        }

        return v3;
      }
    }
  }

  return v3;
}

void sub_100007C28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__stable_partition_impl<std::_ClassicAlgPolicy,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)> &,MMapArchiveFileSystem::ArchiveEntry*,long,std::pair<MMapArchiveFileSystem::ArchiveEntry*,long>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v7 = a2;
  v8 = a1;
  if (a4 == 3)
  {
    v17 = *(a3 + 24);
    if (v17)
    {
      v18 = (v8 + 56);
      if (!(*(*v17 + 48))(v17, v8 + 56))
      {
        v49 = *(v8 + 72);
        v48 = *(v8 + 88);
        v50 = *v18;
        v51 = *(v8 + 104);
        v53 = *(v7 + 16);
        v52 = *(v7 + 32);
        v54 = *v7;
        *(v8 + 104) = *(v7 + 48);
        *(v8 + 72) = v53;
        *(v8 + 88) = v52;
        *v18 = v54;
        *(v7 + 48) = v51;
        *v7 = v50;
        *(v7 + 16) = v49;
        *(v7 + 32) = v48;
        v55 = *(v8 + 48);
        v57 = *(v8 + 16);
        v56 = *(v8 + 32);
        v58 = *v8;
        v59 = *(v8 + 72);
        *v8 = *v18;
        *(v8 + 16) = v59;
        *(v8 + 32) = *(v8 + 88);
        *(v8 + 48) = *(v8 + 104);
        *v18 = v58;
        *(v8 + 72) = v57;
        *(v8 + 88) = v56;
        v7 = v8 + 56;
        *(v8 + 104) = v55;
        return v7;
      }

      v19 = *(v8 + 48);
      v21 = *(v8 + 16);
      v20 = *(v8 + 32);
      v22 = *v8;
      v23 = *(v8 + 72);
      *v8 = *v18;
      *(v8 + 16) = v23;
      *(v8 + 32) = *(v8 + 88);
      *(v8 + 48) = *(v8 + 104);
      *v18 = v22;
      *(v8 + 72) = v21;
      *(v8 + 88) = v20;
      *(v8 + 104) = v19;
      v11 = *(v8 + 72);
      v10 = *(v8 + 88);
      v12 = *v18;
      v13 = *(v8 + 104);
      v25 = *(v7 + 16);
      v24 = *(v7 + 32);
      v26 = *v7;
      *(v8 + 104) = *(v7 + 48);
      *(v8 + 72) = v25;
      *(v8 + 88) = v24;
      *v18 = v26;
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  if (a4 == 2)
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 32);
    v12 = *a1;
    v13 = *(a1 + 48);
    v15 = *(a2 + 16);
    v14 = *(a2 + 32);
    v16 = *a2;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v15;
    *(a1 + 32) = v14;
    *a1 = v16;
LABEL_7:
    *(v7 + 48) = v13;
    *v7 = v12;
    *(v7 + 16) = v11;
    *(v7 + 32) = v10;
    return v7;
  }

  v28 = a5;
  if (a6 < a4)
  {
    v29 = *(a3 + 24);
    if (v29)
    {
      v30 = (v8 + 56 * (a4 / 2));
      v31 = 56 * (a4 / 2) - 56;
      v32 = a4 / 2;
      while (((*(*v29 + 48))(v29, v8 + v31) & 1) == 0)
      {
        if (!v31)
        {
          goto LABEL_25;
        }

        --v32;
        v29 = *(a3 + 24);
        v31 -= 56;
        if (!v29)
        {
          goto LABEL_30;
        }
      }

      v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)> &,MMapArchiveFileSystem::ArchiveEntry*,long,std::pair<MMapArchiveFileSystem::ArchiveEntry*,long>>(v8, v8 + v31, a3, v32, v28, a6);
LABEL_25:
      v60 = *(a3 + 24);
      if (v60)
      {
        v61 = (v7 + 56);
        v62 = a4 - a4 / 2;
        v63 = v30;
        while ((*(*v60 + 48))(v60, v63))
        {
          v63 = (v63 + 56);
          if (v63 == v7)
          {
            return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *>(v8, v30, v61);
          }

          --v62;
          v60 = *(a3 + 24);
          if (!v60)
          {
            goto LABEL_30;
          }
        }

        v61 = std::__stable_partition_impl<std::_ClassicAlgPolicy,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)> &,MMapArchiveFileSystem::ArchiveEntry*,long,std::pair<MMapArchiveFileSystem::ArchiveEntry*,long>>(v63, v7, a3, v62, v28, a6);
        return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *>(v8, v30, v61);
      }
    }

LABEL_30:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v33 = *a1;
  v34 = *(a1 + 16);
  v35 = *(a1 + 32);
  *(a5 + 6) = *(a1 + 48);
  a5[1] = v34;
  a5[2] = v35;
  *a5 = v33;
  v36 = a5 + 56;
  v37 = a1 + 56;
  if (a1 + 56 == a2)
  {
    v64 = *(a1 + 72);
    *a1 = *v37;
    *(a1 + 16) = v64;
    *(a1 + 32) = *(a1 + 88);
    *(a1 + 48) = *(a1 + 104);
LABEL_34:
    v65 = v37;
    do
    {
      v66 = *v28;
      v67 = v28[1];
      v68 = v28[2];
      *(v65 + 48) = *(v28 + 48);
      *(v65 + 16) = v67;
      *(v65 + 32) = v68;
      *v65 = v66;
      v65 += 56;
      v28 = (v28 + 56);
    }

    while (v28 < v36);
    return v37;
  }

  do
  {
    v38 = *(a3 + 24);
    if (!v38)
    {
      goto LABEL_30;
    }

    if ((*(*v38 + 48))(v38, v37))
    {
      v39 = *v37;
      v40 = *(v37 + 16);
      v41 = *(v37 + 32);
      *(v8 + 48) = *(v37 + 48);
      *(v8 + 16) = v40;
      *(v8 + 32) = v41;
      *v8 = v39;
      v8 += 56;
    }

    else
    {
      v42 = *v37;
      v43 = *(v37 + 16);
      v44 = *(v37 + 32);
      *(v36 + 48) = *(v37 + 48);
      *(v36 + 16) = v43;
      *(v36 + 32) = v44;
      *v36 = v42;
      v36 += 56;
    }

    v37 += 56;
  }

  while (v37 != v7);
  v45 = *v37;
  v46 = *(v37 + 16);
  v47 = *(v37 + 32);
  *(v8 + 48) = *(v37 + 48);
  *(v8 + 16) = v46;
  *(v8 + 32) = v47;
  *v8 = v45;
  v37 = v8 + 56;
  v7 = v8 + 56;
  if (v36 > v28)
  {
    goto LABEL_34;
  }

  return v7;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

__int128 *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *>(__int128 *__src, __int128 *a2, __int128 *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if ((__src + 56) == a2)
    {
      v7 = *__src;
      v9 = __src[1];
      v11 = __src[2];
      v13 = *(__src + 6);
      v5 = a3 - a2;
      memmove(__src, __src + 56, a3 - a2 - 7);
      v3 = (__src + v5);
      *v3 = v7;
      v3[1] = v9;
      v3[2] = v11;
      *(v3 + 48) = v13;
    }

    else if ((a2 + 56) == a3)
    {
      v3 = (__src + 56);
      v8 = *(a3 - 56);
      v10 = *(a3 - 40);
      v12 = *(a3 - 24);
      v14 = *(a3 - 1);
      if ((a3 - 56) != __src)
      {
        memmove(__src + 56, __src, a3 - 56 - __src - 7);
      }

      *__src = v8;
      __src[1] = v10;
      __src[2] = v12;
      *(__src + 48) = v14;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,MMapArchiveFileSystem::ArchiveEntry *>(__src, a2, a3);
    }
  }

  return v3;
}

__int128 *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,MMapArchiveFileSystem::ArchiveEntry *>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = a2 - a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3);
  if (v4 == v5)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = (a2 + 56);
      v7 = (a1 + 56);
      do
      {
        v8 = *(v7 - 24);
        v9 = *(v7 - 40);
        v10 = *(v7 - 56);
        v11 = *(v7 - 1);
        v12 = *(v6 - 40);
        v13 = *(v6 - 24);
        v14 = *(v6 - 8);
        *(v7 - 56) = *(v6 - 56);
        *(v7 - 8) = v14;
        *(v7 - 24) = v13;
        *(v7 - 40) = v12;
        *(v6 - 8) = v11;
        *(v6 - 56) = v10;
        *(v6 - 40) = v9;
        *(v6 - 24) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 = (v7 + 56);
        v15 = v6 == a3;
        v6 = (v6 + 56);
      }

      while (!v15);
    }
  }

  else
  {
    v16 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    do
    {
      v17 = v16;
      v16 = v5;
      v5 = v17 % v5;
    }

    while (v5);
    v18 = (a1 + 56 * v16);
    do
    {
      v19 = *(v18 - 56);
      v20 = *(v18 - 40);
      v21 = *(v18 - 24);
      v22 = *(v18 - 1);
      v18 = (v18 - 56);
      v34 = v19;
      v35 = v20;
      v36 = v21;
      v37 = v22;
      v23 = (v18 + v3);
      v24 = v18;
      do
      {
        v25 = v24;
        v24 = v23;
        v26 = *v23;
        v27 = v23[1];
        v28 = v23[2];
        *(v25 + 48) = *(v23 + 48);
        v25[1] = v27;
        v25[2] = v28;
        *v25 = v26;
        v29 = 0x6DB6DB6DB6DB6DB7 * ((a3 - v23) >> 3);
        v30 = __OFSUB__(v4, v29);
        v32 = v4 - v29;
        v31 = (v32 < 0) ^ v30;
        v23 = (a1 + 56 * v32);
        if (v31)
        {
          v23 = (v24 + v3);
        }
      }

      while (v23 != v18);
      *(v24 + 48) = v37;
      v24[1] = v35;
      v24[2] = v36;
      *v24 = v34;
    }

    while (v18 != a1);
    return (a1 + a3 - a2);
  }

  return a2;
}

uint64_t std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__int128 *std::__stable_partition_impl<std::_ClassicAlgPolicy,MMapArchiveFileSystem::_remove_entries_with_predicate(MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry&)>)::$_1 &,MMapArchiveFileSystem::ArchiveEntry *,long,std::pair<MMapArchiveFileSystem::ArchiveEntry *,long>>(__int128 *a1, __int128 *a2, void **a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v7 = a2;
  v8 = a1;
  if (a4 == 3)
  {
    v17 = (a1 + 56);
    v18 = *a3;
    v76[0] = *(v8 + 9);
    if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v18, v76))
    {
      v50 = *(v8 + 72);
      v49 = *(v8 + 88);
      v51 = *v17;
      v52 = *(v8 + 13);
      v54 = v7[1];
      v53 = v7[2];
      v55 = *v7;
      *(v8 + 104) = *(v7 + 48);
      *(v8 + 72) = v54;
      *(v8 + 88) = v53;
      *v17 = v55;
      *(v7 + 48) = v52;
      *v7 = v51;
      v7[1] = v50;
      v7[2] = v49;
      v56 = *(v8 + 6);
      v58 = v8[1];
      v57 = v8[2];
      v59 = *v8;
      v60 = *(v8 + 72);
      *v8 = *v17;
      v8[1] = v60;
      v8[2] = *(v8 + 88);
      *(v8 + 48) = *(v8 + 104);
      *v17 = v59;
      *(v8 + 72) = v58;
      *(v8 + 88) = v57;
      v7 = (v8 + 56);
      *(v8 + 104) = v56;
      return v7;
    }

    v19 = *(v8 + 6);
    v21 = v8[1];
    v20 = v8[2];
    v22 = *v8;
    v23 = *(v8 + 72);
    *v8 = *v17;
    v8[1] = v23;
    v8[2] = *(v8 + 88);
    *(v8 + 48) = *(v8 + 104);
    *v17 = v22;
    *(v8 + 72) = v21;
    *(v8 + 88) = v20;
    *(v8 + 104) = v19;
    v11 = *(v8 + 72);
    v10 = *(v8 + 88);
    v12 = *v17;
    v13 = *(v8 + 13);
    v25 = v7[1];
    v24 = v7[2];
    v26 = *v7;
    *(v8 + 104) = *(v7 + 48);
    *(v8 + 72) = v25;
    *(v8 + 88) = v24;
    *v17 = v26;
    goto LABEL_6;
  }

  if (a4 == 2)
  {
    v11 = a1[1];
    v10 = a1[2];
    v12 = *a1;
    v13 = *(a1 + 6);
    v15 = a2[1];
    v14 = a2[2];
    v16 = *a2;
    *(a1 + 48) = *(a2 + 48);
    a1[1] = v15;
    a1[2] = v14;
    *a1 = v16;
LABEL_6:
    *(v7 + 48) = v13;
    *v7 = v12;
    v7[1] = v11;
    v7[2] = v10;
    return v7;
  }

  v28 = a5;
  if (a6 >= a4)
  {
    v34 = *a1;
    v35 = a1[1];
    v36 = a1[2];
    *(a5 + 6) = *(a1 + 6);
    a5[1] = v35;
    a5[2] = v36;
    *a5 = v34;
    v37 = a5 + 56;
    v38 = (a1 + 56);
    if ((a1 + 56) == a2)
    {
      v70 = *(a1 + 72);
      *a1 = *v38;
      a1[1] = v70;
      a1[2] = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
    }

    else
    {
      do
      {
        v39 = *a3;
        v76[0] = *(v38 + 2);
        if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v39, v76))
        {
          v40 = *v38;
          v41 = v38[1];
          v42 = v38[2];
          *(v8 + 48) = *(v38 + 48);
          v8[1] = v41;
          v8[2] = v42;
          *v8 = v40;
          v8 = (v8 + 56);
        }

        else
        {
          v43 = *v38;
          v44 = v38[1];
          v45 = v38[2];
          *(v37 + 48) = *(v38 + 6);
          *(v37 + 16) = v44;
          *(v37 + 32) = v45;
          *v37 = v43;
          v37 += 56;
        }

        v38 = (v38 + 56);
      }

      while (v38 != v7);
      v46 = *v38;
      v47 = v38[1];
      v48 = v38[2];
      *(v8 + 48) = *(v38 + 48);
      v8[1] = v47;
      v8[2] = v48;
      *v8 = v46;
      v38 = (v8 + 56);
      v7 = (v8 + 56);
      if (v37 <= v28)
      {
        return v7;
      }
    }

    v71 = v38;
    do
    {
      v72 = *v28;
      v73 = v28[1];
      v74 = v28[2];
      *(v71 + 48) = *(v28 + 48);
      v71[1] = v73;
      v71[2] = v74;
      *v71 = v72;
      v71 = (v71 + 56);
      v28 = (v28 + 56);
    }

    while (v28 < v37);
    return v38;
  }

  v29 = a4 / 2;
  v30 = a1 + 56 * (a4 / 2);
  v31 = v30 - 56;
  v32 = *a3;
  v76[0] = *(v30 - 40);
  if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v32, v76))
  {
    v33 = a4 / 2;
LABEL_22:
    v63 = std::__stable_partition_impl<std::_ClassicAlgPolicy,MMapArchiveFileSystem::_remove_entries_with_predicate(MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry&)>)::$_1 &,MMapArchiveFileSystem::ArchiveEntry *,long,std::pair<MMapArchiveFileSystem::ArchiveEntry *,long>>(v8, v31, a3, v33, v28, a6);
  }

  else
  {
    v61 = 56 - 56 * v29;
    v33 = a4 / 2;
    while (v61)
    {
      --v33;
      v62 = *a3;
      v76[0] = *(v31 - 40);
      v61 += 56;
      v31 -= 56;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v62, v76))
      {
        v31 = v8 - v61;
        v30 = v8 + 56 * (a4 / 2);
        goto LABEL_22;
      }
    }

    v63 = v8;
    v30 = v8 + 56 * (a4 / 2);
  }

  v64 = a4 - v29;
  v65 = *a3;
  v76[0] = *(v30 + 16);
  if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v65, v76))
  {
    v66 = (v7 + 56);
    v67 = v8 + 56 * v29 + 56;
    while (v67 != v7)
    {
      --v64;
      v68 = *a3;
      v76[0] = *(v67 + 16);
      v67 += 56;
      if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v68, v76))
      {
        v69 = v67 - 56;
        goto LABEL_33;
      }
    }
  }

  else
  {
    v69 = v30;
LABEL_33:
    v66 = std::__stable_partition_impl<std::_ClassicAlgPolicy,MMapArchiveFileSystem::_remove_entries_with_predicate(MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *,std::function<BOOL ()(MMapArchiveFileSystem::ArchiveEntry&)>)::$_1 &,MMapArchiveFileSystem::ArchiveEntry *,long,std::pair<MMapArchiveFileSystem::ArchiveEntry *,long>>(v69, v7, a3, v64, v28, a6);
  }

  return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,MMapArchiveFileSystem::ArchiveEntry *,MMapArchiveFileSystem::ArchiveEntry *>(v63, v30, v66);
}

__n128 std::__function::__func<MMapArchiveFileSystem::delete_archives(std::vector<MMapArchiveFileSystem::ArchiveEntry> const&,BOOL)::$_0,std::allocator<MMapArchiveFileSystem::delete_archives(std::vector<MMapArchiveFileSystem::ArchiveEntry> const&,BOOL)::$_0>,BOOL ()(MMapArchiveFileSystem::ArchiveEntry&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_10000C790;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

BOOL std::__function::__func<MMapArchiveFileSystem::delete_archives(std::vector<MMapArchiveFileSystem::ArchiveEntry> const&,BOOL)::$_0,std::allocator<MMapArchiveFileSystem::delete_archives(std::vector<MMapArchiveFileSystem::ArchiveEntry> const&,BOOL)::$_0>,BOOL ()(MMapArchiveFileSystem::ArchiveEntry&)>::operator()(uint64_t a1, MMapArchiveFileSystem::ArchiveEntry *a2)
{
  if (*(a2 + 8) == -2 && *(a1 + 16) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  do
  {
    result = MMapArchiveFileSystem::ArchiveEntry::matches(v4, a2);
    if (result)
    {
      break;
    }

    v4 = (v4 + 56);
  }

  while (v4 != v5);
  return result;
}

uint64_t std::__function::__func<MMapArchiveFileSystem::delete_archives(std::vector<MMapArchiveFileSystem::ArchiveEntry> const&,BOOL)::$_0,std::allocator<MMapArchiveFileSystem::delete_archives(std::vector<MMapArchiveFileSystem::ArchiveEntry> const&,BOOL)::$_0>,BOOL ()(MMapArchiveFileSystem::ArchiveEntry&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

__n128 std::__function::__func<MMapArchiveFileSystem::delete_old_archives(unsigned long long)::$_0,std::allocator<MMapArchiveFileSystem::delete_old_archives(unsigned long long)::$_0>,BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_10000C820;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MMapArchiveFileSystem::delete_old_archives(unsigned long long)::$_0,std::allocator<MMapArchiveFileSystem::delete_old_archives(unsigned long long)::$_0>,BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) == -2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (*v2 >= *(a1 + 8))
  {
    return 0;
  }

  *v2 += *(a2 + 36);
  return 1;
}

uint64_t std::__function::__func<MMapArchiveFileSystem::delete_old_archives(unsigned long long)::$_0,std::allocator<MMapArchiveFileSystem::delete_old_archives(unsigned long long)::$_0>,BOOL ()(MMapArchiveFileSystem::ArchiveEntry &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

xpc_object_t XPCArray::get_object@<X0>(xpc_object_t *this@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  result = xpc_array_get_value(*this, a2);
  *a3 = result;
  if (result)
  {

    return xpc_retain(result);
  }

  return result;
}

void MMapArchiveFileSystem::add_archive(const char *a1)
{
  printf("ASSERT(%s) %s %d, %s\n", "page_aligned_mmap_archive_size > 8 && *reinterpret_cast<const uint64_t *>(mmap_archive) != 0", a1, 938, "Empty archive");
  if (qword_1000100E0)
  {
    printf("__crashreporter_info__: %s\n", qword_1000100E0);
  }

  abort();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}