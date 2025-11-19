void std::__shared_ptr_emplace<DiskImageIOBreaker>::__shared_ptr_emplace[abi:ne200100]<DiskImage &,BOOL,std::allocator<DiskImageIOBreaker>,0>(uint64_t a1, uint64_t a2, char *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BF4870;
  v4 = *a3;
  *(a1 + 32) = 0;
  *(a1 + 24) = &unk_285BF4328;
  *(a1 + 40) = a2;
  (*(*a2 + 80))(a2);
  *(a1 + 80) = v4;
  _ZNSt3__110shared_ptrIcEC2B8ne200100IN18DiskImageIOBreaker10shared_refMUlT_E_EEEDnS4_NS_9enable_ifIXsr38__shared_ptr_nullptr_deleter_ctor_reqsIS4_EE5valueENS1_20__nullptr_sfinae_tagEE4typeE((a1 + 88));
}

void std::__shared_ptr_emplace<DiskImageIOBreaker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BF4870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void _ZNSt3__120__shared_ptr_pointerIDnN18DiskImageIOBreaker10shared_refMUlT_E_ENS_9allocatorIcEEED0Ev(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t _ZNKSt3__120__shared_ptr_pointerIDnN18DiskImageIOBreaker10shared_refMUlT_E_ENS_9allocatorIcEEE13__get_deleterERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN18DiskImageIOBreaker10shared_refMUlT_E_E))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t getDIOSLog()
{
  if (getDIOSLog_onceToken != -1)
  {
    getDIOSLog_cold_1();
  }

  return getDIOSLog_log;
}

os_log_t __getDIOSLog_block_invoke()
{
  result = os_log_create("com.apple.DiskImages2", "Default");
  getDIOSLog_log = result;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248F08940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = [v16 reason];
    [DIError failWithEnumValue:150 verboseInfo:v17 error:v14];

    objc_end_catch();
    JUMPOUT(0x248F088A4);
  }

  _Unwind_Resume(exception_object);
}

void sub_248F093A4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x248F093ACLL);
  }

  JUMPOUT(0x248F0939CLL);
}

void sub_248F09E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 2)
  {
    v13 = [*(__cxa_begin_catch(exception_object) + 1) copy];
    [DIError failWithInError:v13 outError:v10];
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v14 = __cxa_begin_catch(exception_object);
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:(*(*v14 + 16))(v14)];
    [DIError failWithEnumValue:154 verboseInfo:v13 error:v10];
  }

  __cxa_end_catch();
  JUMPOUT(0x248F09E0CLL);
}

void BaseFolderCopier::traverseSrcFolder(BaseFolderCopier *this)
{
  v88 = *MEMORY[0x277D85DE8];
  *v87 = xmmword_278F81328;
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(v72, "Cleanup At Startup");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v72[24], "Temporary Items");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v74, ".Trashes");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v75, "cores");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v76, "private/var/db/BootCache.playlist");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v77, "Library/Caches/TemporaryItems");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v78, ".hotfiles.btree");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v79, ".Spotlight-V100");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v80, ".fseventsd");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v81, "Network Trash Folder");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v82, ".Trash");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v83, ".FBCLockFolder");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v84, ".FBCIndex");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v85, ".DS_Store");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v86, ".VolumeIcon");
  std::set<std::__fs::filesystem::path>::set[abi:ne200100](&v70, v72, 15);
  v2 = 360;
  do
  {
    if (v72[v2 - 1] < 0)
    {
      operator delete(*(&v70 + v2));
    }

    v2 -= 24;
  }

  while (v2);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(v72, "Volumes");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v72[24], ".vol");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v74, "private/tmp");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v75, "private/var/vm");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v76, "private/var/folders");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v77, "private/var/db/dyld");
  std::set<std::__fs::filesystem::path>::set[abi:ne200100](&v68, v72, 6);
  for (i = 0; i != -18; i -= 3)
  {
    if (SHIBYTE(v77.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v77.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  std::__fs::filesystem::__current_path(&v67, 0);
  v4 = (this + 8);
  if (*(this + 31) < 0)
  {
    v4 = *v4;
  }

  v66.__pn_.__r_.__value_.__r.__words[0] = v4;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v72, &v66);
  std::__fs::filesystem::__current_path(v72, 0);
  if ((v72[23] & 0x80000000) != 0)
  {
    operator delete(*v72);
  }

  v65 = getuid();
  v5 = fts_open(v87, 16, 0);
  if (!v5)
  {
    v59 = @"Failed to start folder traversal";
    goto LABEL_113;
  }

  v6 = v5;
  if (*(this + 88))
  {
LABEL_109:
    exception = __cxa_allocate_exception(0x10uLL);
    errnoException::errnoException(exception, &cfstr_CopyAbortedByU.isa, 89);
  }

  while (1)
  {
    v7 = fts_read(v6);
    v8 = v7;
    if (!v7)
    {
      break;
    }

    fts_info = v7->fts_info;
    if (fts_info > 3)
    {
      if (fts_info == 4 || fts_info == 10 || fts_info == 7)
      {
        v51 = __cxa_allocate_exception(0x10uLL);
        fts_errno = v8->fts_errno;
        v53 = @"Failure during source folder traversal";
        goto LABEL_108;
      }

LABEL_26:
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v72, &v7->fts_path);
      std::__fs::filesystem::path::lexically_normal(&v66, v72);
      if ((v72[23] & 0x80000000) != 0)
      {
        operator delete(*v72);
      }

      v12.__data_ = &v66;
      if (&v71 != std::__tree<std::__fs::filesystem::path>::find<std::__fs::filesystem::path>(&v70, v12))
      {
        if (DIDebugLogsEnabled())
        {
          v14 = *__error();
          if (DIForwardLogs())
          {
            v15 = getDIOSLog();
            os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
            v16 = &v66;
            if ((v66.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v16 = v66.__pn_.__r_.__value_.__r.__words[0];
            }

            *v72 = 0x2A04100302;
            *&v72[8] = 2080;
            *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
            *&v72[18] = 2080;
            *&v72[20] = v16;
            v17 = _os_log_send_and_compose_impl();

            if (v17)
            {
              fprintf(*MEMORY[0x277D85DF8], "%s\n", v17);
              free(v17);
            }
          }

          else
          {
            v24 = getDIOSLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = &v66;
              if ((v66.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v25 = v66.__pn_.__r_.__value_.__r.__words[0];
              }

              *v72 = 0x2A04100302;
              *&v72[8] = 2080;
              *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
              *&v72[18] = 2080;
              *&v72[20] = v25;
              _os_log_impl(&dword_248DE0000, v24, OS_LOG_TYPE_DEBUG, "%.*s: Skipping %s", v72, 0x1Cu);
            }
          }

          *__error() = v14;
        }

        if (v8->fts_info == 1 && fts_set(v6, v8, 4))
        {
          v57 = __cxa_allocate_exception(0x10uLL);
          errnoException::errnoException(v57, &cfstr_FtsSetFailed.isa, 0);
        }

LABEL_57:
        if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__pn_.__r_.__value_.__l.__data_);
        }

        goto LABEL_59;
      }

      st_mode = v8->fts_statp->st_mode;
      v19 = st_mode & 0xF000;
      if (v19 < 0x6000)
      {
        if (v19 != 4096 && v19 != 0x2000)
        {
          goto LABEL_61;
        }

LABEL_41:
        v20 = *__error();
        if (DIForwardLogs())
        {
          v21 = getDIOSLog();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fts_path = v8->fts_path;
          *v72 = 0x2A04100302;
          *&v72[8] = 2080;
          *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
          *&v72[18] = 2080;
          *&v72[20] = fts_path;
          v23 = _os_log_send_and_compose_impl();

          if (v23)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v23);
            free(v23);
          }
        }

        else
        {
          v26 = getDIOSLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v8->fts_path;
            *v72 = 0x2A04100302;
            *&v72[8] = 2080;
            *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
            *&v72[18] = 2080;
            *&v72[20] = v27;
            _os_log_impl(&dword_248DE0000, v26, OS_LOG_TYPE_DEFAULT, "%.*s: Skipping invalid file type: %s", v72, 0x1Cu);
          }
        }

        *__error() = v20;
        goto LABEL_57;
      }

      if (v19 == 49152 || v19 == 24576)
      {
        goto LABEL_41;
      }

LABEL_61:
      if (v65 && access(v8->fts_accpath, 4) && *__error() != 2)
      {
        BaseFolderCopier::print_permissions(this, st_mode, v8->fts_accpath);
        v62 = __cxa_allocate_exception(0x10uLL);
        v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"No read permissions for file %s", v8->fts_accpath];
        errnoException::errnoException(v62, v63, 13);
      }

      v28 = v8->fts_info;
      if (v28 == 1)
      {
        st_size = 0;
        v30 = 786445;
        goto LABEL_73;
      }

      if (v28 != 6)
      {
        if (v28 == 8)
        {
          st_size = v8->fts_statp->st_size;
          if (st_size >= 1)
          {
            v30 = (*(*this + 8))(this) | 0xC0000;
LABEL_73:
            if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(v72, v66.__pn_.__r_.__value_.__l.__data_, v66.__pn_.__r_.__value_.__l.__size_);
            }

            else
            {
              *v72 = v66;
            }

            *&v72[24] = st_size;
            v73 = v30;
            v31 = *(this + 9);
            if (v31 >= *(this + 10))
            {
              v34 = std::vector<fileItem_t>::__emplace_back_slow_path<fileItem_t>(this + 64, v72);
              v35 = v72[23];
              *(this + 9) = v34;
              if (v35 < 0)
              {
                operator delete(*v72);
              }
            }

            else
            {
              v32 = *v72;
              *(v31 + 16) = *&v72[16];
              *v31 = v32;
              memset(v72, 0, 24);
              v33 = v73;
              *(v31 + 24) = *&v72[24];
              *(v31 + 32) = v33;
              *(this + 9) = v31 + 40;
            }

            *(this + 7) += st_size;
            if (v8->fts_info == 1)
            {
              v13.__data_ = &v66;
              if (&v69 != std::__tree<std::__fs::filesystem::path>::find<std::__fs::filesystem::path>(&v68, v13))
              {
                if (DIDebugLogsEnabled())
                {
                  v36 = *__error();
                  if (DIForwardLogs())
                  {
                    v37 = getDIOSLog();
                    os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
                    v38 = &v66;
                    if ((v66.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v38 = v66.__pn_.__r_.__value_.__r.__words[0];
                    }

                    *v72 = 0x2A04100302;
                    *&v72[8] = 2080;
                    *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
                    *&v72[18] = 2080;
                    *&v72[20] = v38;
                    v39 = _os_log_send_and_compose_impl();

                    if (v39)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "%s\n", v39);
                      free(v39);
                    }
                  }

                  else
                  {
                    v40 = getDIOSLog();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                    {
                      v41 = &v66;
                      if ((v66.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v41 = v66.__pn_.__r_.__value_.__r.__words[0];
                      }

                      *v72 = 0x2A04100302;
                      *&v72[8] = 2080;
                      *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
                      *&v72[18] = 2080;
                      *&v72[20] = v41;
                      _os_log_impl(&dword_248DE0000, v40, OS_LOG_TYPE_DEBUG, "%.*s: Skipping content of folder %s", v72, 0x1Cu);
                    }
                  }

                  *__error() = v36;
                }

                if (fts_set(v6, v8, 4))
                {
                  v42 = __cxa_allocate_exception(0x10uLL);
                  errnoException::errnoException(v42, &cfstr_FtsSetFailed.isa, 0);
                }
              }
            }

            goto LABEL_57;
          }
        }

        else
        {
          st_size = 0;
        }

        v30 = 786439;
        goto LABEL_73;
      }

      st_size = 0;
      v30 = 786434;
      goto LABEL_73;
    }

    if (fts_info != 2)
    {
      goto LABEL_26;
    }

LABEL_59:
    if (*(this + 88))
    {
      goto LABEL_109;
    }
  }

  if (*__error())
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    v53 = @"Error reported from fts_read";
    fts_errno = 0;
LABEL_108:
    errnoException::errnoException(v51, &v53->isa, fts_errno);
  }

  if (fts_close(v6))
  {
    v59 = @"Failed to cleanup folder traversal";
LABEL_113:
    v60 = __cxa_allocate_exception(0x10uLL);
    errnoException::errnoException(v60, &v59->isa, 0);
  }

  v44 = *__error();
  if (DIForwardLogs())
  {
    v66.__pn_.__r_.__value_.__r.__words[0] = 0;
    v45 = getDIOSLog();
    os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
    v46 = *(this + 7);
    *v72 = 0x2A04100302;
    *&v72[8] = 2080;
    *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
    *&v72[18] = 2048;
    *&v72[20] = v46;
    v47 = _os_log_send_and_compose_impl();

    if (v47)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v47);
      free(v47);
    }
  }

  else
  {
    v48 = getDIOSLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(this + 7);
      *v72 = 0x2A04100302;
      *&v72[8] = 2080;
      *&v72[10] = "void BaseFolderCopier::traverseSrcFolder()";
      *&v72[18] = 2048;
      *&v72[20] = v49;
      _os_log_impl(&dword_248DE0000, v48, OS_LOG_TYPE_DEFAULT, "%.*s: Folder size: %llu", v72, 0x1Cu);
    }
  }

  *__error() = v44;
  std::__fs::filesystem::__current_path(&v67, 0);
  if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__pn_.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::destroy(&v68, v69);
  std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::destroy(&v70, v71);
  v50 = *MEMORY[0x277D85DE8];
}

void sub_248F0ACAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, std::__fs::filesystem::path *a23, char a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v38 = __cxa_begin_catch(a1);
    if (v35)
    {
      fts_close(v35);
    }

    std::__fs::filesystem::__current_path(&a23, 0);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_285BF4958;
    exception[1] = v38[1];
  }

  if (SHIBYTE(a25) < 0)
  {
    operator delete(a23);
  }

  std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::destroy(&a26, a27);
  std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::destroy(&a29, a30);
  _Unwind_Resume(a1);
}

void sub_248F0AF30(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248F0AF28);
}

void sub_248F0B0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, char a19)
{
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a2 == 2)
  {
    v24 = [*(__cxa_begin_catch(a1) + 1) copy];
    [DIError failWithInError:v24 outError:v20];

    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {

      _Unwind_Resume(a1);
    }

    v25 = __cxa_begin_catch(a1);
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:(*(*v25 + 16))(v25)];
    [DIError failWithEnumValue:154 verboseInfo:v26 error:v20];

    __cxa_end_catch();
  }

  JUMPOUT(0x248F0B06CLL);
}

uint64_t BaseFolderCopier::copy(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  std::string::operator=((a1 + 32), a2);
  std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](v7, a3);
  (**a1)(a1, v7);
  result = std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F0B2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void errnoException::~errnoException(std::exception *this)
{

  std::exception::~exception(this);
}

{

  std::exception::~exception(this);

  JUMPOUT(0x24C1ED730);
}

int *BaseFolderCopier::print_permissions(BaseFolderCopier *this, __int16 a2, char *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  if (DIForwardLogs())
  {
    v6 = getDIOSLog();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 0x3804100C02;
    v30 = 2080;
    v31 = "void BaseFolderCopier::print_permissions(mode_t, char *)";
    if ((a2 & 0x100) != 0)
    {
      v7 = 114;
    }

    else
    {
      v7 = 45;
    }

    v32 = 2080;
    v33 = a3;
    if ((a2 & 0x80) != 0)
    {
      v8 = 119;
    }

    else
    {
      v8 = 45;
    }

    v34 = 1024;
    v35 = v7;
    if ((a2 & 0x40) != 0)
    {
      v9 = 120;
    }

    else
    {
      v9 = 45;
    }

    v36 = 1024;
    v37 = v8;
    if ((a2 & 0x20) != 0)
    {
      v10 = 114;
    }

    else
    {
      v10 = 45;
    }

    v38 = 1024;
    v39 = v9;
    if ((a2 & 0x10) != 0)
    {
      v11 = 119;
    }

    else
    {
      v11 = 45;
    }

    v40 = 1024;
    if ((a2 & 8) != 0)
    {
      v12 = 120;
    }

    else
    {
      v12 = 45;
    }

    v41 = v10;
    if ((a2 & 4) != 0)
    {
      v13 = 114;
    }

    else
    {
      v13 = 45;
    }

    v42 = 1024;
    if ((a2 & 2) != 0)
    {
      v14 = 119;
    }

    else
    {
      v14 = 45;
    }

    v43 = v11;
    if (a2)
    {
      v15 = 120;
    }

    else
    {
      v15 = 45;
    }

    v44 = 1024;
    v45 = v12;
    v46 = 1024;
    v47 = v13;
    v48 = 1024;
    v49 = v14;
    v50 = 1024;
    v51 = v15;
    v16 = _os_log_send_and_compose_impl();

    if (v16)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
      free(v16);
    }
  }

  else
  {
    v17 = getDIOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0x3804100C02;
      v30 = 2080;
      v31 = "void BaseFolderCopier::print_permissions(mode_t, char *)";
      if ((a2 & 0x100) != 0)
      {
        v18 = 114;
      }

      else
      {
        v18 = 45;
      }

      v32 = 2080;
      v33 = a3;
      if ((a2 & 0x80) != 0)
      {
        v19 = 119;
      }

      else
      {
        v19 = 45;
      }

      v34 = 1024;
      v35 = v18;
      if ((a2 & 0x40) != 0)
      {
        v20 = 120;
      }

      else
      {
        v20 = 45;
      }

      v36 = 1024;
      if ((a2 & 0x20) != 0)
      {
        v21 = 114;
      }

      else
      {
        v21 = 45;
      }

      v37 = v19;
      if ((a2 & 0x10) != 0)
      {
        v22 = 119;
      }

      else
      {
        v22 = 45;
      }

      v38 = 1024;
      if ((a2 & 8) != 0)
      {
        v23 = 120;
      }

      else
      {
        v23 = 45;
      }

      v39 = v20;
      if ((a2 & 4) != 0)
      {
        v24 = 114;
      }

      else
      {
        v24 = 45;
      }

      v40 = 1024;
      if ((a2 & 2) != 0)
      {
        v25 = 119;
      }

      else
      {
        v25 = 45;
      }

      v41 = v21;
      if (a2)
      {
        v26 = 120;
      }

      else
      {
        v26 = 45;
      }

      v42 = 1024;
      v43 = v22;
      v44 = 1024;
      v45 = v23;
      v46 = 1024;
      v47 = v24;
      v48 = 1024;
      v49 = v25;
      v50 = 1024;
      v51 = v26;
      _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_DEFAULT, "%.*s: permissions for current path %s: %c%c%c%c%c%c%c%c%c", buf, 0x52u);
    }
  }

  result = __error();
  *result = v5;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_248F0B70C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<std::__fs::filesystem::path>::set[abi:ne200100](void *a1, std::basic_string_view<_CharT, _Traits>::size_type a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      v8.__data_ = v4;
      v8.__size_ = a2;
      std::__tree<std::__fs::filesystem::path>::__emplace_hint_unique_key_args<std::__fs::filesystem::path,std::__fs::filesystem::path const&>(a1, v8);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__fs::filesystem::path>::__emplace_hint_unique_key_args<std::__fs::filesystem::path,std::__fs::filesystem::path const&>(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  size = a2.__size_;
  a2.__size_ = &v5;
  result = *std::__tree<std::__fs::filesystem::path>::__find_equal<std::__fs::filesystem::path>(a1, a2, &v4, size);
  if (!result)
  {
    std::__tree<std::__fs::filesystem::path>::__construct_node<std::__fs::filesystem::path const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__fs::filesystem::path>::__find_equal<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path::__string_view a2, const std::string_view::value_type **a3, const std::__fs::filesystem::path *a4)
{
  size = a2.__size_;
  data = a2.__data_;
  v8 = a1 + 8;
  if ((a1 + 8) == a2.__data_ || (a2.__data_ += 32, (std::__fs::filesystem::operator<=>[abi:ne200100](a4, a2) & 0x80) != 0))
  {
    if (*a1 == data)
    {
      v12 = data;
    }

    else
    {
      v11 = *data;
      if (*data)
      {
        do
        {
          v12 = v11;
          v11 = *(v11 + 8);
        }

        while (v11);
      }

      else
      {
        v16 = data;
        do
        {
          v12 = *(v16 + 2);
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      a2.__data_ = a4;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100]((v12 + 32), a2) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*data)
    {
      *size = v12;
      return (v12 + 8);
    }

    else
    {
      *size = data;
      return data;
    }
  }

  a2.__data_ = a4;
  if ((std::__fs::filesystem::operator<=>[abi:ne200100]((data + 32), a2) & 0x80) == 0)
  {
    *size = data;
    *a3 = data;
    return a3;
  }

  a3 = (data + 8);
  v13 = *(data + 1);
  if (v13)
  {
    v14 = *(data + 1);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v20 = data;
    do
    {
      v15 = *(v20 + 2);
      v17 = *v15 == v20;
      v20 = v15;
    }

    while (!v17);
  }

  if (v15 == v8)
  {
LABEL_29:
    if (v13)
    {
      *size = v15;
      return v15;
    }

    else
    {
      *size = data;
    }

    return a3;
  }

  v10.__data_ = v15 + 32;
  if ((std::__fs::filesystem::operator<=>[abi:ne200100](a4, v10) & 0x80) != 0)
  {
    v13 = *a3;
    goto LABEL_29;
  }

LABEL_17:
  v18.__data_ = size;
  v18.__size_ = a4;

  return std::__tree<std::__fs::filesystem::path>::__find_equal<std::__fs::filesystem::path>(a1, v18);
}

void sub_248F0BA58(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__fs::filesystem::path>::__find_equal<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    size = a2.__size_;
    do
    {
      while (1)
      {
        v6 = v3;
        a2.__data_ = (v3 + 4);
        if ((std::__fs::filesystem::operator<=>[abi:ne200100](size, a2) & 0x80) == 0)
        {
          break;
        }

        v3 = *v6;
        v4 = v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      a2.__data_ = size;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100]((v6 + 4), a2) & 0x80) == 0)
      {
        break;
      }

      v4 = v6 + 1;
      v3 = v6[1];
    }

    while (v3);
  }

  else
  {
    v6 = (a1 + 8);
  }

LABEL_10:
  *data = v6;
  return v4;
}

uint64_t std::__fs::filesystem::operator<=>[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  v3 = std::__fs::filesystem::path::__compare(a1, a2);
  if (v3 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void errnoException::errnoException(errnoException *this, NSString *a2, int a3)
{
  v5 = a2;
  *this = &unk_285BF4958;
  *(this + 1) = 0;
  if (!a3)
  {
    a3 = *__error();
  }

  v6 = [DIError errorWithDomain:*MEMORY[0x277CCA5B8] code:a3 description:0 verboseInfo:v5 error:0];
  v7 = *(this + 1);
  *(this + 1) = v6;
}

uint64_t errnoException::what(id *this)
{
  v1 = [this[1] localizedDescription];
  v2 = [v1 UTF8String];

  return v2;
}

uint64_t std::__tree<std::__fs::filesystem::path>::find<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  data = a2.__data_;
  v5 = a1 + 8;
  do
  {
    a2.__data_ = data;
    v6 = std::__fs::filesystem::operator<=>[abi:ne200100]((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  a2.__data_ = (v5 + 32);
  if ((std::__fs::filesystem::operator<=>[abi:ne200100](data, a2) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::vector<fileItem_t>::__emplace_back_slow_path<fileItem_t>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::allocator<fileItem_t>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fileItem_t>,fileItem_t*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<fileItem_t>::~__split_buffer(&v16);
  return v15;
}

void sub_248F0BE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fileItem_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<fileItem_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fileItem_t>,fileItem_t*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fileItem_t>,fileItem_t*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fileItem_t>,fileItem_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fileItem_t>,fileItem_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<fileItem_t>,fileItem_t*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<fileItem_t>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<fileItem_t>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<fileItem_t>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__shared_ptr_emplace<ParallelFolderCopier>::__shared_ptr_emplace[abi:ne200100]<char const*,std::allocator<ParallelFolderCopier>,0>(void *a1, std::string **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BF4980;
  std::construct_at[abi:ne200100]<ParallelFolderCopier,char const*,ParallelFolderCopier*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ParallelFolderCopier>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BF4980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

ParallelFolderCopier *std::construct_at[abi:ne200100]<ParallelFolderCopier,char const*,ParallelFolderCopier*>(ParallelFolderCopier *a1, std::string **a2)
{
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, a2);
  ParallelFolderCopier::ParallelFolderCopier(a1, &__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_248F0C344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ParallelFolderCopier::ParallelFolderCopier(ParallelFolderCopier *this, const std::__fs::filesystem::path *a2, uint64_t a3)
{
  BaseFolderCopier::BaseFolderCopier(this, a2);
  *v5 = &unk_285BF49D0;
  v5[12] = a3;
  if (!a3)
  {
    v7 = 1;
    v6 = 4;
    sysctlbyname("hw.logicalcpu", &v7, &v6, 0, 0);
    *(this + 12) = v7;
  }
}

void BaseFolderCopier::BaseFolderCopier(BaseFolderCopier *this, const std::__fs::filesystem::path *a2)
{
  *this = &unk_285BF4A28;
  v3 = (this + 8);
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&a2->__pn_.__r_.__value_.__l.__data_;
    v3->__r_.__value_.__r.__words[2] = a2->__pn_.__r_.__value_.__r.__words[2];
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *(this + 73) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
}

void BaseFolderCopier::~BaseFolderCopier(BaseFolderCopier *this)
{
  *this = &unk_285BF4A28;
  v2 = (this + 64);
  std::vector<fileItem_t>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void ParallelFolderCopier::copyFiles(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  if (DIForwardLogs())
  {
    v3 = getDIOSLog();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    v4 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v5 = *v5;
    }

    v6 = *(a1 + 96);
    *buf = 0x4204100502;
    v14 = 2080;
    v15 = "virtual void ParallelFolderCopier::copyFiles(progressFunc_t) const";
    v16 = 2080;
    v17 = v4;
    v18 = 2080;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = getDIOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v9 = *v9;
      }

      v10 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v10 = *v10;
      }

      v11 = *(a1 + 96);
      *buf = 0x4204100502;
      v14 = 2080;
      v15 = "virtual void ParallelFolderCopier::copyFiles(progressFunc_t) const";
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Copying: %s -> %s (%ld threads)", buf, 0x30u);
    }
  }

  *__error() = v2;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3812000000;
  v12[3] = __Block_byref_object_copy__7;
  v12[4] = __Block_byref_object_dispose__7;
  v12[5] = &unk_248FE5F72;
  v12[6] = 0;
  operator new();
}

void sub_248F0CE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  workqueue::transaction::~transaction(&a71);
  workqueue::workqueue::~workqueue(&a29);
  _Block_object_dispose(&a39, 8);
  v73 = a45;
  a45 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  _Unwind_Resume(a1);
}

void ParallelFolderCopier::~ParallelFolderCopier(BaseFolderCopier *this)
{
  BaseFolderCopier::~BaseFolderCopier(this);

  JUMPOUT(0x24C1ED730);
}

void std::vector<fileItem_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fileItem_t>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<fileItem_t>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__7(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_248F0D140(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyfileWithClassFHandling(const char *a1, const char *a2, copyfile_flags_t flags)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = copyfile(a1, a2, 0, flags);
  if (v4 && (*__error() == 1 || *__error() == 13))
  {
    v5 = open_dprotected_np(a1, 0, 0, 1);
    if (v5 != -1)
    {
      v6 = v5;
      v7 = fcntl(v5, 63, 0);
      close(v6);
      if (v7 == 6)
      {
        v8 = *__error();
        if (DIForwardLogs())
        {
          v9 = getDIOSLog();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          *buf = 0x5E04100302;
          v15 = 2080;
          v16 = "int copyfileWithClassFHandling(const char *, const char *, copyfile_state_t, copyfile_flags_t)";
          v17 = 2080;
          v18 = a1;
          v10 = _os_log_send_and_compose_impl();

          if (v10)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
            free(v10);
          }
        }

        else
        {
          v11 = getDIOSLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0x5E04100302;
            v15 = 2080;
            v16 = "int copyfileWithClassFHandling(const char *, const char *, copyfile_state_t, copyfile_flags_t)";
            v17 = 2080;
            v18 = a1;
            _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Skipping Class F protected file: %s", buf, 0x1Cu);
          }
        }

        v4 = 0;
        *__error() = v8;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t ___ZNK20ParallelFolderCopier9copyFilesENSt3__18functionIFvxEEE_block_invoke(uint64_t result)
{
  v1 = result;
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(result + 40);
  if (*(v2 + 88) == 1)
  {
    v3 = 1;
    atomic_compare_exchange_strong(*(result + 48), &v3, 0);
    if (v3 == 1)
    {
      operator new();
    }
  }

  v4 = atomic_load(*(result + 48));
  if (v4)
  {
    if (DIDebugLogsEnabled())
    {
      v5 = *__error();
      if (DIForwardLogs())
      {
        v6 = getDIOSLog();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        v7 = (v1 + 56);
        if (*(v1 + 79) < 0)
        {
          v7 = *v7;
        }

        v8 = (v1 + 80);
        if (*(v1 + 103) < 0)
        {
          v8 = *v8;
        }

        *buf = 68158466;
        v29 = 79;
        v30 = 2080;
        v31 = "virtual void ParallelFolderCopier::copyFiles(progressFunc_t) const_block_invoke";
        v32 = 2080;
        v33 = v7;
        v34 = 2080;
        v35 = v8;
        LODWORD(v27) = 38;
        v9 = _os_log_send_and_compose_impl();

        if (v9)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
          free(v9);
        }
      }

      else
      {
        v10 = getDIOSLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = (v1 + 56);
          if (*(v1 + 79) < 0)
          {
            v11 = *v11;
          }

          v12 = (v1 + 80);
          if (*(v1 + 103) < 0)
          {
            v12 = *v12;
          }

          *buf = 68158466;
          v29 = 79;
          v30 = 2080;
          v31 = "virtual void ParallelFolderCopier::copyFiles(progressFunc_t) const_block_invoke";
          v32 = 2080;
          v33 = v11;
          v34 = 2080;
          v35 = v12;
          _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEBUG, "%.*s: Background copy of %s to %s", buf, 0x26u);
        }
      }

      *__error() = v5;
    }

    v13 = (v1 + 56);
    v14 = (v1 + 56);
    if (*(v1 + 79) < 0)
    {
      v14 = *v13;
    }

    v15 = (v1 + 80);
    if (*(v1 + 103) < 0)
    {
      v15 = *v15;
    }

    if (copyfileWithClassFHandling(v14, v15, 0x800000Eu))
    {
      if (DIDebugLogsEnabled())
      {
        v16 = *__error();
        if (DIForwardLogs())
        {
          v17 = getDIOSLog();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
          v18 = (v1 + 56);
          if (*(v1 + 79) < 0)
          {
            v18 = *v13;
          }

          v19 = *__error();
          *buf = 68158466;
          v29 = 79;
          v30 = 2080;
          v31 = "virtual void ParallelFolderCopier::copyFiles(progressFunc_t) const_block_invoke";
          v32 = 2080;
          v33 = v18;
          v34 = 1024;
          LODWORD(v35) = v19;
          LODWORD(v27) = 34;
          v20 = _os_log_send_and_compose_impl();

          if (v20)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
            free(v20);
          }
        }

        else
        {
          v21 = getDIOSLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = (v1 + 56);
            if (*(v1 + 79) < 0)
            {
              v22 = *v13;
            }

            v23 = *__error();
            *buf = 68158466;
            v29 = 79;
            v30 = 2080;
            v31 = "virtual void ParallelFolderCopier::copyFiles(progressFunc_t) const_block_invoke";
            v32 = 2080;
            v33 = v22;
            v34 = 1024;
            LODWORD(v35) = v23;
            _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_DEBUG, "%.*s: Failed to copy %s (errno %d)", buf, 0x22u);
          }
        }

        *__error() = v16;
      }

      v24 = 1;
      atomic_compare_exchange_strong(*(v1 + 48), &v24, 0);
      if (v24 == 1)
      {
        if (*(v1 + 79) < 0)
        {
          v13 = *v13;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy %s", v13, v27];
        objc_claimAutoreleasedReturnValue();
        operator new();
      }
    }

    atomic_fetch_add(*(v1 + 104), *(v1 + 112));
    v25 = atomic_load(*(v1 + 104));
    result = std::function<void ()(long long)>::operator()(v1 + 120, 100 * v25 / *(v2 + 56));
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __copy_helper_block_ea8_56c34_ZTSNSt3__14__fs10filesystem4pathE80c34_ZTSNSt3__14__fs10filesystem4pathE120c27_ZTSNSt3__18functionIFvxEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v5 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v5;
  }

  return std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](a1 + 120, a2 + 120);
}

void sub_248F0D960(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_56c34_ZTSNSt3__14__fs10filesystem4pathE80c34_ZTSNSt3__14__fs10filesystem4pathE120c27_ZTSNSt3__18functionIFvxEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](a1 + 120);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

void *std::__shared_ptr_emplace<SerialFolderCopier>::__shared_ptr_emplace[abi:ne200100]<char const*,std::allocator<SerialFolderCopier>,0>(void *a1, std::string **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BF4A90;
  std::construct_at[abi:ne200100]<SerialFolderCopier,char const*,SerialFolderCopier*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SerialFolderCopier>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BF4A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::construct_at[abi:ne200100]<SerialFolderCopier,char const*,SerialFolderCopier*>(uint64_t a1, std::string **a2)
{
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, a2);
  *a1 = &unk_285BF4A28;
  v3 = (a1 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v4 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 73) = 0u;
    *a1 = &unk_285BF4AE0;
    if (v4 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(a1 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 73) = 0u;
    *a1 = &unk_285BF4AE0;
  }

  return a1;
}

void sub_248F0DCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SerialFolderCopier::copyFiles(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *__error();
  if (DIForwardLogs())
  {
    v37.__pn_.__r_.__value_.__r.__words[0] = 0;
    v4 = getDIOSLog();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    v5 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v5 = v5->__pn_.__r_.__value_.__r.__words[0];
    }

    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = v6->__pn_.__r_.__value_.__r.__words[0];
    }

    *buf = 68158466;
    v39 = 64;
    v40 = 2080;
    v41 = "virtual void SerialFolderCopier::copyFiles(progressFunc_t) const";
    v42 = 2080;
    v43 = v5;
    v44 = 2080;
    v45 = v6;
    LODWORD(v34) = 38;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = getDIOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v9 = v9->__pn_.__r_.__value_.__r.__words[0];
      }

      v10 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v10 = v10->__pn_.__r_.__value_.__r.__words[0];
      }

      *buf = 68158466;
      v39 = 64;
      v40 = 2080;
      v41 = "virtual void SerialFolderCopier::copyFiles(progressFunc_t) const";
      v42 = 2080;
      v43 = v9;
      v44 = 2080;
      v45 = v10;
      _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Copying: %s -> %s", buf, 0x26u);
    }
  }

  *__error() = v3;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      if (*(a1 + 88) == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        v29 = errnoException::errnoException(exception, &cfstr_CopyAbortedByU.isa, 89);
      }

      std::__fs::filesystem::operator/[abi:ne200100](v11, a1 + 8, &v37);
      std::__fs::filesystem::operator/[abi:ne200100](v11, a1 + 32, &__p);
      if (DIDebugLogsEnabled())
      {
        v14 = *__error();
        if (DIForwardLogs())
        {
          v15 = getDIOSLog();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          if ((v37.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v37;
          }

          else
          {
            v16 = v37.__pn_.__r_.__value_.__r.__words[0];
          }

          if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__pn_.__r_.__value_.__r.__words[0];
          }

          v18 = *(v11 + 32);
          *buf = 68158722;
          v39 = 64;
          v40 = 2080;
          v41 = "virtual void SerialFolderCopier::copyFiles(progressFunc_t) const";
          v42 = 2080;
          v43 = v16;
          v44 = 2080;
          v45 = p_p;
          v46 = 1024;
          v47 = v18;
          LODWORD(v34) = 44;
          v19 = _os_log_send_and_compose_impl();

          if (v19)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v19);
            free(v19);
          }
        }

        else
        {
          v20 = getDIOSLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            if ((v37.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v37;
            }

            else
            {
              v21 = v37.__pn_.__r_.__value_.__r.__words[0];
            }

            if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &__p;
            }

            else
            {
              v22 = __p.__pn_.__r_.__value_.__r.__words[0];
            }

            v23 = *(v11 + 32);
            *buf = 68158722;
            v39 = 64;
            v40 = 2080;
            v41 = "virtual void SerialFolderCopier::copyFiles(progressFunc_t) const";
            v42 = 2080;
            v43 = v21;
            v44 = 2080;
            v45 = v22;
            v46 = 1024;
            v47 = v23;
            _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEBUG, "%.*s: Copying %s to %s, flags 0x%x", buf, 0x2Cu);
          }
        }

        *__error() = v14;
      }

      if ((v37.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v37;
      }

      else
      {
        v24 = v37.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p.__pn_.__r_.__value_.__r.__words[0];
      }

      if (copyfileWithClassFHandling(v24, v25, *(v11 + 32)))
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        v31 = &v37;
        if ((v37.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v37.__pn_.__r_.__value_.__r.__words[0];
        }

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed copying %s", v31, v34];
        errnoException::errnoException(v30, v32, 0);
      }

      v26 = *(v11 + 24);
      if (v26)
      {
        v13 += v26;
        std::function<void ()(long long)>::operator()(a2, (100 * v13) / *(a1 + 56));
      }

      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__pn_.__r_.__value_.__l.__data_);
      }

      v11 += 40;
    }

    while (v11 != v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_248F0E208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void SerialFolderCopier::~SerialFolderCopier(BaseFolderCopier *this)
{
  BaseFolderCopier::~BaseFolderCopier(this);

  JUMPOUT(0x24C1ED730);
}

void sub_248F0E76C(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v3 = objc_begin_catch(exc_buf);
    v4 = [v3 reason];
    [DIError failWithEnumValue:150 verboseInfo:v4 error:v2];

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x248F0E6D0);
}

void sub_248F0E9E0(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v3 = objc_begin_catch(exc_buf);
    v4 = [v3 reason];
    [DIError failWithEnumValue:150 verboseInfo:v4 error:v2];

    objc_end_catch();
    JUMPOUT(0x248F0E98CLL);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x248F0E990);
}

uint64_t MKDIDeviceDeinitialize(void *a1)
{
  v1 = a1[1];
  free(a1);
  v2 = *(MEMORY[0x277D274C8] + 16);

  return v2(v1);
}

void *MKDIDeviceCopyProperty(void *a1, const void *a2)
{
  v4 = (*(MEMORY[0x277D274C8] + 24))(a1[1]);
  if (CFEqual(a2, @"Geometry"))
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
    [v5 setObject:v6 forKeyedSubscript:@"Sector Count"];

    return v5;
  }

  return v4;
}

void *MKDIDeviceCopyProperties(void *a1)
{
  v2 = (*(MEMORY[0x277D274C8] + 32))(a1[1]);
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v2];

  v4 = MKDIDeviceCopyProperty(a1, @"Geometry");
  [v3 setObject:v4 forKeyedSubscript:@"Geometry"];

  return v3;
}

uint64_t system_properties::get_logical_cpus(system_properties *this)
{
  if (atomic_load_explicit(&system_properties::get_logical_cpus(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&system_properties::get_logical_cpus(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<system_properties::get_logical_cpus(void)::$_0 &&>>);
  }

  return system_properties::get_logical_cpus(void)::num_cpus;
}

uint64_t (**system_properties::get_resources(system_properties *this))(system_properties::$_2 *__hidden this)
{
  {
    system_properties::get_resources(void)::total_memory_gb = (get_memory_size() + 0x3FFFFFFF) >> 30;
  }

  v1 = &system_properties::small_config;
  if (system_properties::get_resources(void)::total_memory_gb > 3)
  {
    v1 = &system_properties::medium_config;
  }

  if (system_properties::get_resources(void)::total_memory_gb <= 8)
  {
    return v1;
  }

  else
  {
    return &system_properties::big_config;
  }
}

uint64_t get_memory_size(void)
{
  if (atomic_load_explicit(&get_memory_size(void)::flag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&get_memory_size(void)::flag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<get_memory_size(void)::$_0 &&>>);
  }

  return get_memory_size(void)::memory_size;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<get_memory_size(void)::$_0 &&>>()
{
  v1 = 8;
  v2 = 0;
  result = sysctlbyname("hw.memsize", &v2, &v1, 0, 0);
  get_memory_size(void)::memory_size = v2;
  return result;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<system_properties::get_logical_cpus(void)::$_0 &&>>()
{
  v2 = 1;
  v1 = 4;
  result = sysctlbyname("hw.logicalcpu", &v2, &v1, 0, 0);
  system_properties::get_logical_cpus(void)::num_cpus = v2;
  return result;
}

uint64_t ref::details::_get_tagged_ptr_lock(unint64_t this, const void *a2)
{
  {
    v5 = this;
    ref::details::_get_tagged_ptr_lock();
    this = v5;
  }

  v2 = 0x9DDFEA08EB382D69 * ((8 * (this & 0x1FFFFFFF) + 8) ^ HIDWORD(this));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v2 >> 47) ^ v2);
  return &ref::details::_get_tagged_ptr_lock(void const*)::mutexs + 64 * ((9 * ((v3 >> 47) ^ v3)) & 0xF);
}

uint64_t ref::details::_get_tagged_ptr_cond(unint64_t this, const void *a2)
{
  {
    v5 = this;
    ref::details::_get_tagged_ptr_cond();
    this = v5;
  }

  v2 = 0x9DDFEA08EB382D69 * ((8 * (this & 0x1FFFFFFF) + 8) ^ HIDWORD(this));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v2 >> 47) ^ v2);
  return &ref::details::_get_tagged_ptr_cond(void const*)::conds + 48 * ((9 * ((v3 >> 47) ^ v3)) & 0xF);
}

uint64_t ref::details::ref_cnt_handle::ref_cnt_handle(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_285BF4C50;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  return result;
}

void ref::details::ref_cnt_handle::~ref_cnt_handle(ref::details::ref_cnt_handle *this, const void *a2)
{
  *this = &unk_285BF4C50;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (atomic_fetch_add_explicit(*(this + 1), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      ref::ref_cnt::notify(v3, a2);
    }
  }
}

{
  ref::details::ref_cnt_handle::~ref_cnt_handle(this, a2);

  JUMPOUT(0x24C1ED730);
}

ref::ref_cnt *ref::details::ref_cnt_handle::upgrade_to_exclusive@<X0>(ref::details::ref_cnt_handle *this@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 16);
  result = *(this + 1);
  if (v6 == 1)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      ref::ref_cnt::notify(result, a2);
    }

    *(this + 16) = 0;
    v8 = *(this + 1);

    return ref::ref_cnt::take_exclusive(v8, a2, a3);
  }

  else
  {
    *(a3 + 16) = 0;
    *a3 = &unk_285BF4C70;
    *(a3 + 8) = result;
    *(a3 + 24) = a2;
  }

  return result;
}

void ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(ref::details::ref_cnt_set_handle *this, const void *a2)
{
  *this = &unk_285BF4C70;
  if (*(this + 16) == 1)
  {
    atomic_store(*(this + 3), *(this + 1));
    ref::ref_cnt::notify(*(this + 1), a2);
  }

  *(this + 16) = 0;

  ref::details::ref_cnt_handle::~ref_cnt_handle(this, a2);
}

{
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(this, a2);

  JUMPOUT(0x24C1ED730);
}

void ref::ref_cnt::notify(ref::ref_cnt *this, const void *a2)
{
  tagged_ptr_lock = ref::details::_get_tagged_ptr_lock(this, a2);
  std::mutex::lock(tagged_ptr_lock);
  tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(this, v4);
  std::condition_variable::notify_all(tagged_ptr_cond);

  std::mutex::unlock(tagged_ptr_lock);
}

std::mutex *__cxx_global_array_dtor()
{
  result = &unk_27EECE0F8;
  v1 = -1024;
  do
  {
    std::mutex::~mutex(result);
    result = (v2 - 64);
    v1 += 64;
  }

  while (v1);
  return result;
}

std::condition_variable *__cxx_global_array_dtor_1()
{
  result = &unk_27EECE408;
  v1 = -768;
  do
  {
    std::condition_variable::~condition_variable(result);
    result = (v2 - 48);
    v1 += 48;
  }

  while (v1);
  return result;
}

uint64_t smart_enums::validators::validator_exception_base::reason@<X0>(const char **this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = strlen(this[3]);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, this[3], v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
  v7 = strlen(this[1]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, this[1], v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " - ", 3);
  v10 = this[2];
  v11 = strlen(v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_14:
  a2[v12] = 0;
  v17[0] = *MEMORY[0x277D82818];
  v15 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v15;
  v19 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1ED6A0](&v26);
}

void sub_248F11AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint8_t buf, int a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18, __int16 a19, uint64_t a20, __int16 a21, int a22)
{
  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed opening the shadow/cache file(s)" error:v24];
    __cxa_end_catch();
    JUMPOUT(0x248F11A70);
  }

  _Unwind_Resume(a1);
}

void smart_enums::validators::validator_exception<int>::~validator_exception(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x24C1ED730);
}

void smart_enums::validators::validator_exception<int>::reason(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = smart_enums::validators::validator_exception_base::what(a1);
  std::string::basic_string[abi:ne200100]<0>(v18, v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  if ((v19 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = v18[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " [", 2);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = a1[8];
  v10 = MEMORY[0x24C1ED390]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "]", 1);
  std::stringbuf::str[abi:ne200100](&v14, a2);
  v12[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v11;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](&v17);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void *std::vector<char *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void BufferAllocator::~BufferAllocator(BufferAllocator *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x24C1ED710](*v2, 0x1000C8077774924);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 3);
  }

  *(this + 4) = v2;
  std::mutex::~mutex((this + 96));
  std::condition_variable::~condition_variable(this + 1);
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void BufferAllocator::BufferAllocator(BufferAllocator *this, uint64_t a2, unsigned int a3, unint64_t a4)
{
  *this = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  v6 = (this + 24);
  *(this + 6) = 1018212795;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 850045863;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  *(this + 2) = v7;
  std::vector<char *>::reserve(v6, a3);
  if (a3)
  {
    BufferAllocator::add_buffer(this);
  }
}

void BufferAllocator::allocate(std::condition_variable *this@<X0>, void *a2@<X8>)
{
  __lk.__m_ = &this[2];
  __lk.__owns_ = 1;
  std::mutex::lock(&this[2]);
  v4 = *&this->__cv_.__opaque[24];
  if (*&this->__cv_.__opaque[16] == v4)
  {
    if (*&this->__cv_.__opaque[8] > *this->__cv_.__opaque)
    {
      BufferAllocator::add_buffer(this);
    }

    do
    {
      std::condition_variable::wait(this + 1, &__lk);
      v4 = *&this->__cv_.__opaque[24];
    }

    while (*&this->__cv_.__opaque[16] == v4);
  }

  v5 = *(v4 - 8);
  *&this->__cv_.__opaque[24] = v4 - 8;
  v7 = this;
  *a2 = v5;
  operator new();
}

void BufferAllocator::allocate(void)::$_0::operator()<char *>(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  std::mutex::lock((*a1 + 96));
  std::vector<char *>::emplace_back<char * const&>(v2 + 24, &v3);
  std::mutex::unlock((v2 + 96));
  std::condition_variable::notify_one((v2 + 48));
}

void sub_248F126A8(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<char *,BufferAllocator::allocate(void)::$_0,std::allocator<char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_pointer<char *,BufferAllocator::allocate(void)::$_0,std::allocator<char>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 96));
  std::vector<char *>::emplace_back<char * const&>(v1 + 24, &v2);
  std::mutex::unlock((v1 + 96));
  std::condition_variable::notify_one((v1 + 48));
}

void sub_248F1274C(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  __clang_call_terminate(a1);
}

uint64_t std::__shared_ptr_pointer<char *,BufferAllocator::allocate(void)::$_0,std::allocator<char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<char *>::emplace_back<char * const&>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
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
      std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](a1, v10);
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
  return v6 - 8;
}

void toNativeType(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

uint64_t CFStringGetOSType(const __CFString *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Invalid resource key";
    goto LABEL_8;
  }

  Length = CFStringGetLength(a1);
  if (Length >= 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Resource name is too long to fit uint32_t";
    goto LABEL_8;
  }

  v8.length = Length;
  *buffer = 0;
  v8.location = 0;
  if (CFStringGetBytes(a1, v8, 0, 0, 0, buffer, 4, 0) != 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Can't get key in cstring format";
LABEL_8:
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v5, 0x16u);
  }

  return bswap32(*buffer);
}

BOOL addNumberToCFArray<long long>(__CFArray *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
  v5 = v3;
  if (v3)
  {
    CFArrayAppendValue(a1, v3);
  }

  CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&v5);
  return v3 != 0;
}

BOOL addCFNumber64ToDict(__CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
  v7 = v5;
  if (v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&v7);
  return v5 != 0;
}

__CFDictionary *cf::make_dict@<X0>(const void **keys@<X0>, const void **values@<X1>, CFIndex numValues@<X2>, CFMutableDictionaryRef *a4@<X8>)
{
  if (keys && values && numValues)
  {
    result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, numValues, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Mutable = result;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v7 = 0;
    result = CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v7);
  }

  *a4 = Mutable;
  return result;
}

CFMutableDictionaryRef cf::make_empty_dict@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *a1 = result;
  return result;
}

const void **cf::serialize_to_xml_plist@<X0>(CFPropertyListRef propertyList@<X0>, const __CFData **a2@<X8>)
{
  error = 0;
  v4 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListXMLFormat_v1_0, 0, &error);
  v5 = v4;
  if (v4)
  {
    v6 = error == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v11 = std::generic_category();
    exception[1] = 22;
    exception[2] = v11;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't serialize property list";
  }

  Length = CFDataGetLength(v4);
  TypeID = CFDataGetTypeID();
  if (CFGetTypeID(v5) != TypeID)
  {
    v12 = __cxa_allocate_exception(0x40uLL);
    v13 = CFGetTypeID(v5);
    v14 = cf::CFUtilException::CFUtilException(v12, v13, TypeID);
  }

  v15 = 0;
  *a2 = v5;
  a2[1] = Length;
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&v15);
  return CFAutoRelease<__CFError *>::~CFAutoRelease(&error);
}

void sub_248F12E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  CFAutoRelease<__CFError *>::~CFAutoRelease(&a10);
  _Unwind_Resume(a1);
}

const void **cf::deserialize_from_xml_plist@<X0>(UInt8 *bytes@<X0>, CFIndex length@<X1>, void *a3@<X8>)
{
  error = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v19 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v11 = std::generic_category();
    exception[1] = 12;
    exception[2] = v11;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't create data for plist deserialization";
  }

  format = kCFPropertyListXMLFormat_v1_0;
  v6 = CFPropertyListCreateWithData(v4, v5, 0, &format, &error);
  if (v6)
  {
    v7 = error == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v12 = __cxa_allocate_exception(0x40uLL);
    Code = CFErrorGetCode(error);
    *v12 = &unk_285BF4E60;
    v14 = std::generic_category();
    v12[1] = Code;
    v12[2] = v14;
    *(v12 + 24) = 0;
    *(v12 + 48) = 0;
    v12[7] = "Can't convert data to property list";
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v6) != TypeID)
  {
    v15 = __cxa_allocate_exception(0x40uLL);
    v16 = CFGetTypeID(v6);
    v17 = cf::CFUtilException::CFUtilException(v15, v16, TypeID);
  }

  *a3 = v6;
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&v19);
  return CFAutoRelease<__CFError *>::~CFAutoRelease(&error);
}

void sub_248F13064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&a11);
  CFAutoRelease<__CFError *>::~CFAutoRelease(&a12);
  _Unwind_Resume(a1);
}

char *CFDataCopyToVector@<X0>(const __CFData *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  Length = CFDataGetLength(a1);
  v9 = a3 + a2;
  v10 = __CFADD__(a3, a2);
  if (__CFADD__(a3, a2))
  {
    v11 = -1;
  }

  else
  {
    v11 = a3 + a2;
  }

  if (__CFADD__(a3, a2))
  {
    v9 = v11;
  }

  v18 = v9;
  v19 = v10;
  v12 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v18);
  if (!a3)
  {
    a3 = Length;
  }

  if (Length < v12)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Unable to convert data to vector.", 0x16u);
  }

  v13 = v12;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  BytePtr = CFDataGetBytePtr(a1);
  std::vector<std::byte>::reserve(a4, a3);
  return std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte const*,std::byte const*>(a4, *a4, &BytePtr[a2], &BytePtr[v13], v13 - a2);
}

void sub_248F1319C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL addCFStringToDict(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v5, 0x8000100u);
  v8 = v6;
  if (v6)
  {
    CFDictionarySetValue(a1, a2, v6);
  }

  CFAutoRelease<__CFString const*>::~CFAutoRelease(&v8);
  return v6 != 0;
}

void sub_248F13248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

void cf::add_key_value_pairs_to_dict(CFMutableDictionaryRef *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = *a2;
    v5 = *a2 + 16 * v2;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v4 += 16;
      CFDictionaryAddValue(*a1, v6, v7);
    }

    while (v4 != v5);
  }
}

const void **CFAutoRelease<__CFError *>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void convertHexToBytes(char *__s, unint64_t *a2)
{
  v3 = &v17;
  std::string::basic_string[abi:ne200100]<0>(&v17, __s);
  v4 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  v6 = v17.__r_.__value_.__r.__words[0];
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = (&v17 + HIBYTE(v17.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v8 = (v17.__r_.__value_.__r.__words[0] + v17.__r_.__value_.__l.__size_);
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v17.__r_.__value_.__r.__words[0];
  }

  if (v3 != v8)
  {
    do
    {
      v3->__r_.__value_.__s.__data_[0] = __tolower(v3->__r_.__value_.__s.__data_[0]);
      v3 = (v3 + 1);
    }

    while (v3 != v8);
    v4 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    size = v17.__r_.__value_.__l.__size_;
    v6 = v17.__r_.__value_.__r.__words[0];
    v5 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  if (v5 >= 0)
  {
    v9 = &v17;
  }

  else
  {
    v9 = v6;
  }

  if (v5 < 0)
  {
    v4 = size;
  }

  if (v4 >= 2)
  {
    v10 = v9 + v4;
    v11 = v9;
    while (1)
    {
      v12 = memchr(v11, 48, v4 - 1);
      if (!v12)
      {
        goto LABEL_22;
      }

      if (LOWORD(v12->__r_.__value_.__l.__data_) == 30768)
      {
        break;
      }

      v11 = (&v12->__r_.__value_.__l.__data_ + 1);
      v4 = v10 - v11;
      if (v10 - v11 < 2)
      {
        goto LABEL_22;
      }
    }

    if (v12 == v9)
    {
      v13 = std::string::erase(&v17, 0, 2uLL);
      std::string::operator=(&v17, v13);
    }
  }

LABEL_22:
  v14 = 0;
  v15 = 0;
  v16 = 0;
  boost::algorithm::unhex<std::string,std::back_insert_iterator<std::vector<unsigned char>>>(&v17, &v14);
  if (a2)
  {
    *a2 = v15 - v14;
  }

  operator new[]();
}

void sub_248F134E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  switch(a2)
  {
    case 3:
      __cxa_begin_catch(exception_object);
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v20 = std::generic_category();
      exception[1] = 22;
      exception[2] = v20;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Does not contain an even number of hex digits.";
    case 2:
      __cxa_begin_catch(exception_object);
      v21 = __cxa_allocate_exception(0x40uLL);
      *v21 = &unk_285BF4E60;
      v22 = std::generic_category();
      v21[1] = 22;
      v21[2] = v22;
      *(v21 + 24) = 0;
      *(v21 + 48) = 0;
      v21[7] = "Contains non-hexadecimal characters.";
    case 1:
      __cxa_begin_catch(exception_object);
      v23 = __cxa_allocate_exception(0x40uLL);
      *v23 = &unk_285BF4E60;
      v24 = std::generic_category();
      v23[1] = 22;
      v23[2] = v24;
      *(v23 + 24) = 0;
      *(v23 + 48) = 0;
      v23[7] = "Decoding error.";
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::algorithm::unhex<std::string,std::back_insert_iterator<std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 23);
  v4 = *a1;
  if (v3 >= 0)
  {
    v4 = a1;
  }

  if (v3 < 0)
  {
    v3 = *(a1 + 8);
  }

  v7 = v4;
  if (v3)
  {
    v5 = v4 + v3;
    do
    {
      a2 = boost::algorithm::detail::decode_one<std::__wrap_iter<char const*>,std::back_insert_iterator<std::vector<unsigned char>>,BOOL (*)(std::__wrap_iter<char const*>,std::__wrap_iter<char const*>)>(&v7, v5, a2, boost::algorithm::detail::iter_end<std::__wrap_iter<char const*>>);
    }

    while (v7 != v5);
  }

  return a2;
}

uint64_t di_utils::buffer_to_uuid(di_utils *this, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  result = boost::uuids::basic_name_generator<boost::uuids::detail::sha1>::operator()(v4, this, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *operator<<(void *a1, unsigned int *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = strlen(v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " (error code ", 13);
  v8 = MEMORY[0x24C1ED390](v7, a2[2]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
  return a1;
}

uint64_t DiskImagesRuntimeException::what(DiskImagesRuntimeException *this)
{
  if (*(this + 48) != 1)
  {
    result = this + 56;
    return *result;
  }

  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t di_utils::random_uuid(di_utils *this)
{
  v4 = *MEMORY[0x277D85DE8];
  uuid_generate_random(out);
  result = *out;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *details::get_dummy_shared_ptr(void)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    details::get_dummy_shared_ptr();
  }

  if (atomic_load_explicit(details::get_dummy_shared_ptr(void)::dummy_once_flag, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(details::get_dummy_shared_ptr(void)::dummy_once_flag, &v2, std::__call_once_proxy[abi:ne200100]<std::tuple<details::get_dummy_shared_ptr(void)::$_0 &&>>);
  }

  return &unk_27EECE630;
}

uint64_t std::shared_ptr<char>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t process_terminator::terminate(process_terminator *this)
{
  if (process_terminator::supports_termination == 1)
  {
    v1 = 0;
    atomic_compare_exchange_strong(&process_terminator::terminated, &v1, 1u);
    if (!v1)
    {
      *&v3 = "void process_terminator::terminate()";
      *(&v3 + 1) = 34;
      v4 = 16;
      di_log::logger<di_log::log_printer<137ul>>::logger(v5, &v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Terminating due to unrecoverable I/O error", 42);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v5);
      MEMORY[0x24C1ED6A0](&v7);
      return raise(15);
    }
  }

  return result;
}

void sub_248F13A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<137ul>>::~logger(va);
  _Unwind_Resume(a1);
}

unint64_t trim_data(sg_vec_ns::details::sg_vec_iterator *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 26);
  v6 = a4[1];
  if (*a4 - (v5 - v6) >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a4 - (v5 - v6);
  }

  v8 = v5 - v6;
  if (v5 == v6)
  {
    goto LABEL_69;
  }

  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v46, a1);
  sg_vec_ns::details::sg_vec_iterator::operator+=(&v46, v7 + v8);
  sg_vec_ns::details::buffer_iterator::rtrim_written(v49);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v33, a1);
  sg_vec_ns::generate_vec_ref(v33, a2, a4[1], v7 + v8, 0xFFFFFFFFFFFFFFFFLL, &v36);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  sg_vec_ref::begin(&v36, v62);
  sg_entry::operator=(&v46, v62);
  v48 = v63;
  v49[0] = v64;
  v49[1] = v65;
  v49[2] = v66;
  v50 = v67;
  v11 = v68;
  v68 = 0uLL;
  v12 = *(&v51 + 1);
  v51 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v52 = v69;
    v53 = v70;
    v54 = v71;
    if (*(&v68 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v68 + 1));
    }
  }

  else
  {
    v52 = v69;
    v53 = v70;
    v54 = v71;
  }

  if (*(&v62[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62[0] + 1));
  }

  sg_vec_ns::details::sg_vec_iterator::operator+=(&v46, v8);
  sg_vec_ref::end(&v36, v30);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&__src, &v46);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v21, a1);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&__dst, &v21);
  v13 = 0;
  v59 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(&__src, v30))
  {
    sg_vec_ns::details::buffer_iterator::sync(&v27);
    v14 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v29;
    if (!v29)
    {
      sg_vec_ns::details::sg_vec_iterator::operator++(&__src);
      v18 = 2;
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v16 = v57;
    if (v26 < v57)
    {
      v16 = v26;
    }

    if (v16 >= v29)
    {
      v17 = v29;
    }

    else
    {
      v17 = v16;
    }

    if (!v16)
    {
      *&v60 = "trim_data(const sg_vec::iterator &, const sg_vec::iterator &, size_t, const io_result_t &)::(anonymous class)::operator()(const auto &, const auto &, size_t) const [src:auto = sg_vec_ns::details::sg_vec_iterator, dst:auto = sg_vec_ns::details::sg_vec_iterator]";
      *(&v60 + 1) = 121;
      v61 = 16;
      di_log::logger<di_log::log_printer<183ul>>::logger(v62, &v60);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, "Trimming: Written ", 18);
      MEMORY[0x24C1ED3C0](&v72, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, ", dest buffer_size ", 19);
      MEMORY[0x24C1ED3C0](&v72, v57);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, " src size ", 10);
      MEMORY[0x24C1ED3C0](&v72, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, ", trimmed size", 14);
      MEMORY[0x24C1ED3C0](&v72, 0);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(v62);
      MEMORY[0x24C1ED6A0](v73);
      memmove(__dst, __src, v17);
LABEL_34:
      *&v60 = "transform(Fn &&, sg_vec_ref::iterator, const sg_vec_ref::iterator &, sg_vec_ref::iterator) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/utils.cpp:180:13)]";
      *(&v60 + 1) = 97;
      v61 = 16;
      di_log::logger<di_log::log_printer<694ul>>::logger(v62, &v60);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, "IO error with sg: ", 18);
      operator<<(&v72, &__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, " dest ", 6);
      operator<<(&v72, &__dst);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, " returned status ", 17);
      MEMORY[0x24C1ED3B0](&v72, v17);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<694ul>>::~logger_buf(v62);
      MEMORY[0x24C1ED6A0](v73);
      v18 = 1;
      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_28:
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      goto LABEL_29;
    }

    memmove(__dst, __src, v17);
    if (v17 <= 0)
    {
      goto LABEL_34;
    }

    sg_vec_ns::details::sg_vec_iterator::operator+=(&__src, v17);
    sg_vec_ns::details::sg_vec_iterator::operator+=(&__dst, v17);
    v18 = 0;
    v13 += v17;
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_29:
    if ((v18 | 2) != 2)
    {
      goto LABEL_37;
    }
  }

  sg_vec_ns::details::sg_vec_iterator::operator+=(&v21, v13);
LABEL_37:
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(&v51 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

LABEL_69:
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v36, a1);
  sg_vec_ns::details::sg_vec_iterator::operator+=(&v36, v7);
  sg_vec_ns::details::buffer_iterator::rtrim_written(v39);
  v19 = *(a1 + 26);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  return v7;
}

void sub_248F13F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x738]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a66);
  sg_vec_ref::~sg_vec_ref(&STACK[0x388]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x658]);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::detail::decode_one<std::__wrap_iter<char const*>,std::back_insert_iterator<std::vector<unsigned char>>,BOOL (*)(std::__wrap_iter<char const*>,std::__wrap_iter<char const*>)>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t))
{
  v8 = 0;
  v9 = *a1;
  v10 = 1;
  do
  {
    v11 = v10;
    if (a4(v9, a2))
    {
      v24 = 0u;
      v25 = 0u;
      DWORD2(v25) = -1;
      v23[0] = &unk_285BF4EC8;
      v23[1] = &unk_285BF4EF8;
      boost::throw_exception<boost::algorithm::not_enough_input>(v23);
    }

    v12 = boost::algorithm::detail::hex_char_to_int<char>(**a1);
    v10 = 0;
    v8 = v12 + 16 * v8;
    v9 = *a1 + 1;
    *a1 = v9;
  }

  while ((v11 & 1) != 0);
  v14 = *(a3 + 8);
  v13 = *(a3 + 16);
  if (v14 >= v13)
  {
    v16 = *a3;
    v17 = &v14[-*a3];
    v18 = (v17 + 1);
    if ((v17 + 1) < 0)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v19 = v13 - v16;
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      operator new();
    }

    v21 = &v14[-*a3];
    *v17 = v8;
    v15 = v17 + 1;
    memcpy(0, v16, v21);
    *a3 = 0;
    *(a3 + 8) = v17 + 1;
    *(a3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 1;
  }

  *(a3 + 8) = v15;
  return a3;
}

void sub_248F1423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  boost::algorithm::not_enough_input::~not_enough_input(va);
  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::algorithm::not_enough_input>(void *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  boost::algorithm::not_enough_input::not_enough_input(exception, a1);
}

void boost::algorithm::not_enough_input::~not_enough_input(std::exception *this)
{
  std::exception::~exception(this);
  *(v1 + 8) = &unk_285BF4F18;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v1 + 16));
}

{
  std::exception::~exception(this);
  *(v1 + 8) = &unk_285BF4F18;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v1 + 16));

  JUMPOUT(0x24C1ED730);
}

uint64_t boost::algorithm::detail::hex_char_to_int<char>(int a1)
{
  v1 = a1 - 48;
  if ((a1 - 48) >= 0xA)
  {
    if ((a1 - 65) > 5)
    {
      if ((a1 - 97) > 5)
      {
        boost::exception_detail::set_info_rv<boost::error_info<boost::algorithm::bad_char_,char>>::set<boost::algorithm::non_hex_input>();
      }

      return (a1 - 87);
    }

    else
    {
      return (a1 - 55);
    }
  }

  return v1;
}

void sub_248F1440C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  boost::algorithm::non_hex_input::~non_hex_input(va);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::not_enough_input::not_enough_input(uint64_t a1, void *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(a1 + 8) = &unk_285BF4F18;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(a1 + 40) = *(v3 + 8);
  *(a1 + 24) = v5;
  *a1 = &unk_285BF4EC8;
  *(a1 + 8) = &unk_285BF4EF8;
  return a1;
}

uint64_t *virtual thunk toboost::algorithm::not_enough_input::~not_enough_input(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &unk_285BF4F18;
  v2 = (v1 + 16);

  return boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v2);
}

void virtual thunk toboost::algorithm::not_enough_input::~not_enough_input(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &unk_285BF4F18;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 2);

  JUMPOUT(0x24C1ED730);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void boost::throw_exception<boost::algorithm::non_hex_input>(const boost::algorithm::non_hex_input *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  boost::algorithm::non_hex_input::non_hex_input(exception, a1);
}

void boost::algorithm::non_hex_input::~non_hex_input(std::exception *this)
{
  std::exception::~exception(this);
  *(v1 + 8) = &unk_285BF4F18;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v1 + 16));
}

{
  std::exception::~exception(this);
  *(v1 + 8) = &unk_285BF4F18;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v1 + 16));

  JUMPOUT(0x24C1ED730);
}

boost::algorithm::non_hex_input *boost::algorithm::non_hex_input::non_hex_input(boost::algorithm::non_hex_input *this, const boost::algorithm::non_hex_input *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(this + 1) = &unk_285BF4F18;
  *(this + 2) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(this + 10) = *(v3 + 8);
  *(this + 24) = v5;
  *this = &unk_285BF4F60;
  *(this + 1) = &unk_285BF4F90;
  return this;
}

uint64_t *virtual thunk toboost::algorithm::non_hex_input::~non_hex_input(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &unk_285BF4F18;
  v2 = (v1 + 16);

  return boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v2);
}

void virtual thunk toboost::algorithm::non_hex_input::~non_hex_input(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &unk_285BF4F18;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 2);

  JUMPOUT(0x24C1ED730);
}

void sub_248F14AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::to_string<boost::algorithm::bad_char_,char>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL));
  if (v18)
  {
    v4 = v18;
  }

  else
  {
    v4 = ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::string::basic_string[abi:ne200100]<0>(&v14, v4);
  free(v18);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5.__i_ = &v14;
  }

  else
  {
    v5.__i_ = v14.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v14, v5, 91);
  v15 = v14;
  memset(&v14, 0, sizeof(v14));
  v6 = std::string::append(&v15, "] = ", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v23 = *(a1 + 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
  std::ostringstream::str[abi:ne200100](&v18, v12);
  v18 = *MEMORY[0x277D82828];
  *(&v18 + *(v18 - 3)) = *(MEMORY[0x277D82828] + 24);
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](&v22);
  if ((v13 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v12[1];
  }

  v10 = std::string::append(&v16, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 10);
  *a2 = v17;
  memset(&v17, 0, sizeof(v17));
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_248F14EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

boost::core::scoped_demangled_name *boost::core::scoped_demangled_name::scoped_demangled_name(boost::core::scoped_demangled_name *this, const char *lpmangled)
{
  status = 0;
  v4 = 0;
  *this = __cxa_demangle(lpmangled, 0, &v4, &status);
  return this;
}

void sub_248F1501C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<boost::error_info<boost::algorithm::bad_char_,char>>::shared_ptr[abi:ne200100]<boost::error_info<boost::algorithm::bad_char_,char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<boost::error_info<boost::algorithm::bad_char_,char> *,std::shared_ptr<boost::error_info<boost::algorithm::bad_char_,char>>::__shared_ptr_default_delete<boost::error_info<boost::algorithm::bad_char_,char>,boost::error_info<boost::algorithm::bad_char_,char>>,std::allocator<boost::error_info<boost::algorithm::bad_char_,char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<boost::error_info<boost::algorithm::bad_char_,char> *,std::shared_ptr<boost::error_info<boost::algorithm::bad_char_,char>>::__shared_ptr_default_delete<boost::error_info<boost::algorithm::bad_char_,char>,boost::error_info<boost::algorithm::bad_char_,char>>,std::allocator<boost::error_info<boost::algorithm::bad_char_,char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<boost::error_info<boost::algorithm::bad_char_,char> *,std::shared_ptr<boost::error_info<boost::algorithm::bad_char_,char>>::__shared_ptr_default_delete<boost::error_info<boost::algorithm::bad_char_,char>,boost::error_info<boost::algorithm::bad_char_,char>>,std::allocator<boost::error_info<boost::algorithm::bad_char_,char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::exception_detail::error_info_container_impl::diagnostic_information(boost::exception_detail::error_info_container_impl *this, const char *a2)
{
  if (a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    v4 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v4);
    v5 = *(this + 1);
    if (v5 != (this + 16))
    {
      do
      {
        (***(v5 + 5))(__p);
        if (v15 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        if (v15 >= 0)
        {
          v7 = HIBYTE(v15);
        }

        else
        {
          v7 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v6, v7);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = *(v5 + 1);
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = *(v5 + 2);
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != (this + 16));
    }

    std::ostringstream::str[abi:ne200100](&v16, __p);
    v11 = v15;
    v12 = *__p;
    *__p = *(this + 2);
    v15 = *(this + 6);
    *(this + 2) = v12;
    *(this + 6) = v11;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x277D82828];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
    v17 = MEMORY[0x277D82878] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x24C1ED6A0](&v20);
  }

  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void *boost::exception_detail::error_info_container_impl::get@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::find<boost::exception_detail::type_info_>(a1 + 8, a2);
  if ((a1 + 16) == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result[6];
    *a3 = result[5];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void boost::exception_detail::error_info_container_impl::set(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__emplace_unique_key_args<boost::exception_detail::type_info_,std::piecewise_construct_t const&,std::tuple<boost::exception_detail::type_info_ const&>,std::tuple<>>(a1 + 8, a3);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v5 + 48);
  *(v5 + 40) = v7;
  *(v5 + 48) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }
}

BOOL boost::exception_detail::error_info_container_impl::release(boost::exception_detail::error_info_container_impl *this)
{
  v1 = *(this + 14) - 1;
  *(this + 14) = v1;
  if (this && !v1)
  {
    boost::exception_detail::error_info_container_impl::~error_info_container_impl(this);
    MEMORY[0x24C1ED730]();
  }

  return v1 == 0;
}

void *std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::find<boost::exception_detail::type_info_>(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__lower_bound<boost::exception_detail::type_info_>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = v4[4];
  if (*a2 != v6 && strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL)) < 0)
  {
    return v3;
  }

  return v5;
}

void *std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__lower_bound<boost::exception_detail::type_info_>(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = v5[4];
      if (v7 == v6)
      {
        a4 = v5;
      }

      else
      {
        v8 = strcmp((*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL));
        if (v8 >= 0)
        {
          a4 = v5;
        }

        v5 = (v5 + ((v8 >> 28) & 8));
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__emplace_unique_key_args<boost::exception_detail::type_info_,std::piecewise_construct_t const&,std::tuple<boost::exception_detail::type_info_ const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *a3;
    v7 = v5[4];
    if (*a3 != v7)
    {
      v8 = *(v6 + 8);
      do
      {
        v9 = *(v7 + 8);
        if (strcmp((v8 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
        {
          v10 = *v5;
          v4 = v5;
          if (!*v5)
          {
            break;
          }
        }

        else
        {
          if ((strcmp((v9 & 0x7FFFFFFFFFFFFFFFLL), (v8 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
          {
            break;
          }

          v4 = v5 + 1;
          v10 = v5[1];
          if (!v10)
          {
            break;
          }
        }

        v7 = v10[4];
        v5 = v10;
      }

      while (v6 != v7);
    }
  }

  else
  {
    v5 = (a1 + 8);
  }

  *a2 = v5;
  return v4;
}

void boost::exception_detail::error_info_container_impl::~error_info_container_impl(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy((this + 1), this[2]);
}

void sub_248F1592C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<boost::error_info<boost::algorithm::bad_char_,char>>::shared_ptr[abi:ne200100]<boost::error_info<boost::algorithm::bad_char_,char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<boost::exception_detail::error_info_base *,std::shared_ptr<boost::exception_detail::error_info_base>::__shared_ptr_default_delete<boost::exception_detail::error_info_base,boost::exception_detail::error_info_base>,std::allocator<boost::exception_detail::error_info_base>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<boost::exception_detail::error_info_base *,std::shared_ptr<boost::exception_detail::error_info_base>::__shared_ptr_default_delete<boost::exception_detail::error_info_base,boost::exception_detail::error_info_base>,std::allocator<boost::exception_detail::error_info_base>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<boost::exception_detail::error_info_base *,std::shared_ptr<boost::exception_detail::error_info_base>::__shared_ptr_default_delete<boost::exception_detail::error_info_base,boost::exception_detail::error_info_base>,std::allocator<boost::exception_detail::error_info_base>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__emplace_unique_key_args<boost::exception_detail::type_info_,std::pair<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,std::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_248F15B64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x24C1ED730](v1, 0x1000C4077774924);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t diskimage_uio::crypto::details::auth_table_impl_t::get_entry(diskimage_uio::crypto::details::auth_table_impl_t *this, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *this;
  v12[0] = 0;
  v13 = 0;
  v11[0] = this;
  v11[1] = v3 + 20 * a2;
  v4 = crypto::auth_table::const_iterator::operator*(v11);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v9, v4);
  v7 = this;
  if (v10 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v8 = &v7;
  (off_285BF51C8[v10])(&v8, v9);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
  if (v13 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F15D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  if (LOBYTE(STACK[0x520]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3 + 16);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::crypto::auth_table_entry::base_auth_table_entry::base_auth_table_entry(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = *(a2 + 2);
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = *(a2 + 2);
  return result;
}

uint64_t diskimage_uio::crypto::auth_table_entry::base_auth_table_entry::base_auth_table_entry(uint64_t a1, void (****a2)(void))
{
  (***a2)();
  *(a1 + 8) = 0;
  return a1;
}

{
  (***a2)();
  *(a1 + 8) = 0;
  return a1;
}

uint64_t *diskimage_uio::crypto::auth_table_entry::base_auth_table_entry::operator=(uint64_t *a1, void (****a2)(uint64_t *__return_ptr))
{
  (***a2)(&v7);
  v3 = v7;
  v7 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v5 = v7;
    v7 = 0;
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }

  return a1;
}

void diskimage_uio::crypto::auth_table_entry::base_auth_table_entry::~base_auth_table_entry(diskimage_uio::crypto::auth_table_entry::base_auth_table_entry *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

uint64_t *diskimage_uio::crypto::auth_table_entry::base_auth_table_entry::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

uint64_t diskimage_uio::crypto::auth_table_entry::passphrase::get_impl(diskimage_uio::crypto::auth_table_entry::passphrase *this)
{
  return *this;
}

{
  return *this;
}

void diskimage_uio::crypto::auth_table_entry::passphrase::~passphrase(diskimage_uio::crypto::auth_table_entry::passphrase *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

void diskimage_uio::crypto::details::auth_table_entry_passphrase_impl_t::unlock(diskimage_uio::crypto::details::auth_table_entry_passphrase_impl_t *this@<X0>, crypto::auth_entry_ns::passphrase *a2@<X1>, _BYTE *a3@<X8>)
{
  crypto::auth_entry_ns::passphrase::unlock((this + 16), a2, v5);
  diskimage_uio::crypto::details::auth_table_entry_base_impl_t::unlock_open_params(this, v5, a3);
  if (v6 == 1)
  {
    v7 = v5;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&v7);
  }
}

void sub_248F161AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    *(v13 - 24) = &a10;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100]((v13 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::crypto::auth_table_entry::passphrase::passphrase(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

uint64_t diskimage_uio::crypto::auth_table_entry::public_key::get_impl(diskimage_uio::crypto::auth_table_entry::public_key *this)
{
  return *this;
}

{
  return *this;
}

uint64_t diskimage_uio::crypto::details::auth_table_entry_public_key_impl_t::get_key_derivation_version(diskimage_uio::crypto::details::auth_table_entry_public_key_impl_t *this)
{
  if (crypto::public_key_header::get_crypto_algo_and_padding((this + 28)) == *MEMORY[0x277CDC358])
  {
    return 1;
  }

  crypto::public_key_header::get_crypto_algo_and_padding((this + 28));
  return 0;
}

const std::error_category *diskimage_uio::crypto::auth_table_entry::public_key::unlock@<X0>(uint64_t a1@<X8>)
{
  result = std::generic_category();
  *a1 = 45;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t diskimage_uio::crypto::auth_table_entry::public_key::public_key(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

uint64_t diskimage_uio::crypto::auth_table_entry::symmetric_key::get_impl(diskimage_uio::crypto::auth_table_entry::symmetric_key *this)
{
  return *this;
}

{
  return *this;
}

void diskimage_uio::crypto::auth_table_entry::symmetric_key::~symmetric_key(diskimage_uio::crypto::auth_table_entry::symmetric_key *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

void diskimage_uio::crypto::details::auth_table_entry_symmetric_key_impl_t::unlock(diskimage_uio::crypto::details::auth_table_entry_symmetric_key_impl_t *this@<X0>, const __CFData *a2@<X1>, _BYTE *a3@<X8>)
{
  crypto::auth_entry_ns::symmetric_key::unlock((this + 16), a2, v5);
  diskimage_uio::crypto::details::auth_table_entry_base_impl_t::unlock_open_params(this, v5, a3);
  if (v6 == 1)
  {
    v7 = v5;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&v7);
  }
}

void sub_248F16404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    *(v13 - 24) = &a10;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100]((v13 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::crypto::auth_table_entry::symmetric_key::symmetric_key(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

uint64_t diskimage_uio::crypto::auth_table_entry::unknown::unknown(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

uint64_t diskimage_uio::crypto::auth_table_entry::error::error(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  *(result + 8) = 0;
  return result;
}

uint64_t diskimage_uio::crypto::auth_table_entry::get_type(diskimage_uio::crypto::auth_table_entry *this)
{
  v1 = *(this + 4);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_285BF53B8[v1])(&v4, this);
}

uint64_t diskimage_uio::crypto::auth_table_entry::get_passphrase_entry(uint64_t this)
{
  if (this)
  {
    if (*(this + 16))
    {
      return 0;
    }
  }

  return this;
}

{
  if (this)
  {
    if (*(this + 16))
    {
      return 0;
    }
  }

  return this;
}

uint64_t diskimage_uio::crypto::auth_table_entry::get_public_key_entry(uint64_t this)
{
  if (this)
  {
    if (*(this + 16) != 1)
    {
      return 0;
    }
  }

  return this;
}

{
  if (this)
  {
    if (*(this + 16) != 1)
    {
      return 0;
    }
  }

  return this;
}

uint64_t diskimage_uio::crypto::auth_table_entry::get_symmetric_key_entry(uint64_t this)
{
  if (this)
  {
    if (*(this + 16) != 2)
    {
      return 0;
    }
  }

  return this;
}

{
  if (this)
  {
    if (*(this + 16) != 2)
    {
      return 0;
    }
  }

  return this;
}

uint64_t diskimage_uio::crypto::auth_table::const_iterator::const_iterator(uint64_t this, const crypto::auth_table *a2, uint64_t a3)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = a3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = a3;
  return this;
}

uint64_t diskimage_uio::crypto::auth_table::const_iterator::operator++(uint64_t a1)
{
  ++*(a1 + 40);
  if (*(a1 + 32) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);
    *(a1 + 32) = 0;
  }

  return a1;
}

uint64_t diskimage_uio::crypto::auth_table::const_iterator::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = std::__optional_copy_base<diskimage_uio::crypto::auth_table_entry,false>::__optional_copy_base[abi:ne200100]((a2 + 8), a1 + 8);
  v5 = *(a1 + 40);
  *(a2 + 40) = v5;
  *(a1 + 40) = v5 + 1;
  if (*(a1 + 32) == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t diskimage_uio::crypto::auth_table::const_iterator::operator*(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    diskimage_uio::crypto::details::auth_table_impl_t::get_entry(**a1, *(a1 + 40));
    std::optional<diskimage_uio::crypto::auth_table_entry>::operator=[abi:ne200100]<diskimage_uio::crypto::auth_table_entry,void>(a1 + 8, v3);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3);
  }

  return a1 + 8;
}

void sub_248F166F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<diskimage_uio::crypto::auth_table_entry>::operator=[abi:ne200100]<diskimage_uio::crypto::auth_table_entry,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(a1, a2);
  }

  else
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void *diskimage_uio::crypto::auth_table::auth_table(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t diskimage_uio::crypto::auth_table::cbegin@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return this;
}

uint64_t diskimage_uio::crypto::auth_table::begin@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return this;
}

uint64_t diskimage_uio::crypto::auth_table::cend@<X0>(diskimage_uio::crypto::auth_table *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = **this;
  *&v12 = *this;
  *(&v12 + 1) = v4;
  v13[0] = 0;
  v14 = 0;
  *&v9 = v12;
  *(&v9 + 1) = *(v12 + 8);
  v10[0] = 0;
  v11 = 0;
  v17 = v12;
  std::__optional_copy_base<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,false>::__optional_copy_base[abi:ne200100](v18, v13);
  v15 = v9;
  result = std::__optional_copy_base<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,false>::__optional_copy_base[abi:ne200100](v16, v10);
  v6 = *(&v15 + 1);
  v7 = *(&v17 + 1);
  if (v16[640] == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16);
  }

  if (v18[640] == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v18);
  }

  if (v11 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
  }

  if (v14 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v13);
  }

  *a2 = this;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 2);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F168F0(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0xA60]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3 + 16);
  }

  if (LOBYTE(STACK[0x290]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 16);
  }

  if (LOBYTE(STACK[0x528]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 16);
  }

  _Unwind_Resume(a1);
}

crypto::auth_table **diskimage_uio::crypto::auth_table::operator=(crypto::auth_table **a1, crypto::auth_table **a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<diskimage_uio::crypto::details::auth_table_impl_t>::reset[abi:ne200100](a1, v3);
  return a1;
}

BOOL diskimage_uio::crypto::auth_table::empty(diskimage_uio::crypto::auth_table *this)
{
  v9 = this;
  v10[0] = 0;
  v11 = 0;
  v12 = 0;
  diskimage_uio::crypto::auth_table::cend(this, &v6);
  v2 = v6;
  v3 = v8;
  if (v7[24])
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
    if (v11)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
    }
  }

  return v2 == this && v3 == 0;
}

void diskimage_uio::crypto::auth_table::~auth_table(crypto::auth_table **this)
{
  std::unique_ptr<diskimage_uio::crypto::details::auth_table_impl_t>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<diskimage_uio::crypto::details::auth_table_impl_t>::reset[abi:ne200100](this, 0);
}

uint64_t diskimage_uio::crypto::details::get_supported_cryptos_impl(diskimage_uio::crypto::details *this)
{
  if (atomic_load_explicit(&diskimage_uio::crypto::details::get_supported_cryptos_impl(void)::once, memory_order_acquire) != -1)
  {
    v6[2] = v1;
    v6[3] = v2;
    v6[0] = &v4;
    v6[1] = &diskimage_uio::crypto::details::get_supported_cryptos_impl(void)::impl;
    v5 = v6;
    std::__call_once(&diskimage_uio::crypto::details::get_supported_cryptos_impl(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<diskimage_uio::crypto::details::get_supported_cryptos_impl(void)::$_0 &&,diskimage_uio::crypto::details::supported_cryptos_impl_t *&>>);
  }

  return diskimage_uio::crypto::details::get_supported_cryptos_impl(void)::impl;
}

uint64_t diskimage_uio::crypto::per_io_cryptor::supported_cryptos::is_cryptor_engine_supported(diskimage_uio::crypto::details *a1)
{
  supported_cryptos_impl = diskimage_uio::crypto::details::get_supported_cryptos_impl(a1);
  v3 = *(supported_cryptos_impl + 1) - *supported_cryptos_impl;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = v3 >> 4;
  while (1)
  {
    supported_cryptos_impl = diskimage_uio::crypto::details::get_supported_cryptos_impl(supported_cryptos_impl);
    v6 = *supported_cryptos_impl;
    if (*(*supported_cryptos_impl + v4) == *a1 && *(v6 + v4 + 4) == *(a1 + 1) && *(v6 + v4 + 8) == *(a1 + 2) && *(v6 + v4 + 12) == *(a1 + 3))
    {
      break;
    }

    v4 += 16;
    if (!--v5)
    {
      return 0;
    }
  }

  return 1;
}

void *diskimage_uio::crypto::per_io_cryptor::supported_cryptos::const_iterator::const_iterator(void *this, uint64_t a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void diskimage_uio::crypto::registered_cryptos::register_crypto(uint64_t a1@<X0>, diskimage_uio::crypto::details *a2@<X1>, uint64_t a3@<X8>)
{
  if ((diskimage_uio::crypto::per_io_cryptor::supported_cryptos::is_cryptor_engine_supported(a2) & 1) == 0)
  {
    v13 = std::generic_category();
    *a3 = 45;
    *(a3 + 8) = v13;
    *(a3 + 16) = 0;
    return;
  }

  v20 = *a2;
  DWORD1(v20) &= ~2u;
  std::mutex::lock((a1 + 48));
  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  v8 = (v7 + 8 * (v6 >> 8));
  if (*(a1 + 16) == v7)
  {
    v9 = 0;
    v12 = 0;
    v11 = (v7 + 8 * ((*(a1 + 40) + v6) >> 8));
  }

  else
  {
    v9 = (*v8 + 16 * v6);
    v10 = *(a1 + 40) + v6;
    v11 = (v7 + 8 * (v10 >> 8));
    v12 = (*v11 + 16 * v10);
  }

  std::__find_segment_if[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props const&,diskimage_uio::crypto::encryption_props const* const*,long,256l>,std::__find_segment<diskimage_uio::crypto::encryption_props>,std::__identity>(v8, v9, v11, v12, &v20);
  v15 = v14;
  v16 = *(a1 + 32) + *(a1 + 40);
  v17 = *(a1 + 8);
  v18 = (v17 + 8 * (v16 >> 8));
  if (*(a1 + 16) == v17)
  {
    if (!v15)
    {
LABEL_10:
      std::deque<diskimage_uio::crypto::encryption_props>::emplace<diskimage_uio::crypto::encryption_props>(a1, v18, v15, &v20);
      v15 = v19;
    }
  }

  else if (*v18 + 16 * v16 == v15)
  {
    goto LABEL_10;
  }

  *a3 = v15;
  *(a3 + 16) = 1;
  std::mutex::unlock((a1 + 48));
}

uint64_t *std::deque<diskimage_uio::crypto::encryption_props>::emplace<diskimage_uio::crypto::encryption_props>(int64x2_t *a1, char *a2, uint64_t a3, _OWORD *a4)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 >> 8));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 16 * v6;
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((a3 - *a2) >> 4) + 32 * (a2 - v9) - ((v10 - *v9) >> 4);
  }

  v12 = a1[2].i64[1];
  v13 = v12 - v11;
  if (v11 >= v12 - v11)
  {
    if (v8 == v7)
    {
      v18 = 0;
    }

    else
    {
      v18 = 32 * (v8 - v7) - 1;
    }

    if (v18 == v12 + v6)
    {
      std::deque<diskimage_uio::crypto::encryption_props>::__add_back_capacity(a1);
      v12 = a1[2].i64[1];
      v13 = v12 - v11;
    }

    if (v12 == v11)
    {
      *(*(a1->i64[1] + (((a1[2].i64[0] + v11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (a1[2].i8[0] + v11)) = *a4;
      ++a1[2].i64[1];
    }

    else
    {
      v48 = *a4;
      v19 = a1[2].i64[0] + v12;
      v20 = a1->i64[1];
      v21 = (v20 + 8 * (v19 >> 8));
      if (a1[1].i64[0] == v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = (*v21 + 16 * v19);
      }

      v32 = std::prev[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,0>((v20 + 8 * (v19 >> 8)), v22);
      v34 = v33;
      *v22 = *v33;
      ++a1[2].i64[1];
      if (v13 >= 2)
      {
        v35 = (&v22[-*v21] >> 4) - v13;
        if (v35 < 1)
        {
          v41 = 255 - v35;
          v36 = &v21[-(v41 >> 8)];
          v37 = &(*v36)[16 * ~v41];
        }

        else
        {
          v36 = &v21[v35 >> 8];
          v37 = &(*v36)[16 * v35];
        }

        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,0>(v36, v37, v32, v34, v21, v22, &v49);
        v21 = v50;
        v22 = v51;
      }

      if (v22 == *v21)
      {
        v22 = (*(v21 - 1) + 4096);
      }

      *(v22 - 1) = v48;
    }
  }

  else
  {
    if (v6)
    {
      if (v11)
      {
LABEL_10:
        v48 = *a4;
        v14 = a1[2].u64[0];
        v15 = a1->i64[1];
        v16 = (v15 + 8 * (v14 >> 8));
        if (a1[1].i64[0] == v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = (*v16 + 16 * v14);
        }

        v47.n128_u64[0] = v15 + 8 * (v14 >> 8);
        v47.n128_u64[1] = v17;
        std::prev[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,0>(v47.n128_u64[0], v17);
        *v27 = *v17;
        a1[2] = vaddq_s64(a1[2], xmmword_248FA3230);
        if (v11 != 1)
        {
          v28 = (v17 - *v16) >> 4;
          if (v28 < 0)
          {
            v38 = 254 - v28;
            v30 = &v16[-(v38 >> 8)];
            v31 = &(*v30)[16 * ~v38];
          }

          else
          {
            v29 = v28 + 1;
            v30 = &v16[v29 >> 8];
            v31 = &(*v30)[16 * v29];
          }

          v39 = std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>::operator+[abi:ne200100](&v47, v11);
          v49 = v47;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>>>(v30, v31, v39, v40, &v49);
          v17 = v49.n128_u64[1];
        }

        *v17 = v48;
        goto LABEL_43;
      }
    }

    else
    {
      std::deque<diskimage_uio::crypto::encryption_props>::__add_front_capacity(a1);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v23 = a1[2].u64[0];
    v24 = a1->i64[1];
    v25 = (v24 + 8 * (v23 >> 8));
    v26 = *v25 + 16 * v23;
    if (a1[1].i64[0] == v24)
    {
      v26 = 0;
    }

    if (v26 == *v25)
    {
      v26 = *(v25 - 1) + 4096;
    }

    *(v26 - 16) = *a4;
    a1[2] = vaddq_s64(a1[2], xmmword_248FA3230);
  }

LABEL_43:
  v42 = a1[2].u64[0];
  v43 = a1->i64[1];
  v44 = (v43 + 8 * (v42 >> 8));
  if (a1[1].i64[0] == v43)
  {
    v45 = 0;
  }

  else
  {
    v45 = *v44 + 16 * v42;
  }

  v49.n128_u64[0] = v44;
  v49.n128_u64[1] = v45;
  return std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>::operator+[abi:ne200100](&v49, v11);
}

const std::error_category *diskimage_uio::crypto::registered_cryptos::find@<X0>(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[4];
  v5 = a1[1];
  v6 = a1[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 16 * v4;
  }

  v9 = a1[5] + v4;
  v10 = v9 >> 8;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
LABEL_5:
  result = v8;
  while (1)
  {
    v16 = v6 == v5 ? 0 : *(v5 + 8 * v10) + 16 * v9;
    if (result == v16 || LODWORD(result->__vftable) == v11 && HIDWORD(result->__vftable) == v12 && LODWORD(result[1].__vftable) == v13 && HIDWORD(result[1].__vftable) == v14)
    {
      break;
    }

    result += 2;
    v8 += 16;
    if (*v7 + 4096 == v8)
    {
      v17 = v7[1];
      ++v7;
      v8 = v17;
      goto LABEL_5;
    }
  }

  if (v6 == v5)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v5 + 8 * v10) + 16 * v9;
  }

  if (result == v18)
  {
    result = std::generic_category();
    v19 = 0;
    *(a3 + 8) = result;
    v8 = 22;
  }

  else
  {
    v19 = 1;
  }

  *a3 = v8;
  *(a3 + 16) = v19;
  return result;
}

const std::error_category *diskimage_uio::crypto::registered_cryptos::to_sg_per_io_crypto_algo@<X0>(const std::error_category *result@<X0>, uint64_t a2@<X8>)
{
  if (HIDWORD(result->__vftable))
  {
    goto LABEL_2;
  }

  v4 = result[1].__vftable;
  if (!v4)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(result[1].__vftable);
  v6 = result->__vftable;
  if (v4 != v5 && v6 != 3)
  {
    goto LABEL_2;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if ((v4 | 2) != 3)
      {
        goto LABEL_2;
      }

      v8 = 2;
    }

    else
    {
      if (v6 != 3 || v4 != 3 || v5)
      {
        goto LABEL_2;
      }

      v8 = 3;
    }

    *a2 = v8;
LABEL_24:
    v3 = 1;
    goto LABEL_3;
  }

  if (!v6)
  {
    *a2 = 0;
    goto LABEL_24;
  }

  if (v6 == 1 && (v4 | 2) == 3)
  {
    v3 = 1;
    *a2 = 1;
    goto LABEL_3;
  }

LABEL_2:
  result = std::generic_category();
  v3 = 0;
  *a2 = 45;
  *(a2 + 8) = result;
LABEL_3:
  *(a2 + 16) = v3;
  return result;
}

__n128 diskimage_uio::crypto::registered_cryptos::to_sg_per_io_crypto@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, sg_per_io_crypto *a4@<X8>)
{
  diskimage_uio::crypto::registered_cryptos::find(a1, *a2, v18);
  if ((v19 & 1) == 0)
  {
    v12 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v18);
LABEL_12:
    result = *v12;
    *a4 = *v12;
    *(a4 + 56) = 0;
    return result;
  }

  v7 = v18[0];
  diskimage_uio::crypto::registered_cryptos::to_sg_per_io_crypto_algo(v18[0], v16);
  if ((v17 & 1) == 0)
  {
    v12 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
    goto LABEL_12;
  }

  v8 = HIDWORD(v7[1].__vftable);
  if ((LODWORD(v7[1].__vftable) - 1) >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = 8 * (LODWORD(v7[1].__vftable) - 1) + 16;
  }

  *&v14 = a2 + 8;
  *(&v14 + 1) = v9;
  if ((v8 - 1) >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 8 * (v8 - 1) + 16;
  }

  v13.n128_u64[0] = a2 + 8 + v9;
  v13.n128_u64[1] = v10;
  sg_per_io_crypto::sg_per_io_crypto(v15, v16[0], &v14, &v13, a3, *(a2 + 72) * a3);
  sg_per_io_crypto::sg_per_io_crypto(a4, v15);
  *(a4 + 56) = 1;
  return result;
}

void diskimage_uio::diskimage_open_params::query_general_encryption(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_248F175E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_248F176FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_248F1786C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_248F17978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_248F17A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::crypto::details::auth_table_entry_passphrase_impl_t::auth_table_entry_passphrase_impl_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_285BF5200;
  *(a1 + 8) = a2;
  *(a1 + 16) = *a3;
  *(a1 + 28) = *(a3 + 12);
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 36) = *(a3 + 20);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 40) = *(a3 + 24);
  v5 = *(a3 + 28);
  *(a1 + 60) = *(a3 + 44);
  *(a1 + 44) = v5;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0;
  *(a1 + 76) = *(a3 + 60);
  v6 = *(a3 + 80);
  *(a1 + 80) = *(a3 + 64);
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a3 + 96);
  *(a1 + 116) = *(a3 + 100);
  *(a1 + 120) = *(a3 + 104);
  *(a1 + 124) = *(a3 + 108);
  bzero((a1 + 128), 0x204uLL);
  *(a1 + 128) = *(a3 + 112);
  memcpy((a1 + 132), (a3 + 116), 0x200uLL);
  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_285BF5248[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void diskimage_uio::crypto::details::auth_table_entry_unknown_impl_t::~auth_table_entry_unknown_impl_t(diskimage_uio::crypto::details::auth_table_entry_unknown_impl_t *this)
{
  *this = &unk_285BF5310;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_285BF5310;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1ED730);
}

__n128 diskimage_uio::crypto::details::auth_table_entry_base_impl_t::unlock_open_params@<Q0>(uint64_t a1@<X0>, char ***a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2[3])
  {
    diskimage_uio::crypto::details::auth_table_impl_t::unlock_open_params(*(a1 + 8), a2);
  }

  v6 = 35;
  v7 = std::generic_category();
  if ((*(*a2[1] + 4))(a2[1], *a2, &v6) || (v7->equivalent_0)(v7, a2, v6))
  {
    *a3 = 0;
    a3[16] = 1;
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[16] = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 16);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BF5390[v5])(&v6, a2);
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error> &&>(uint64_t *a1, uint64_t (****a2)(void))
{
  v2 = *a1;
  result = (***a2)();
  *(v2 + 8) = 0;
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error> &&>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  *(v2 + 8) = *(a2 + 2);
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error> &&>(uint64_t *a1, uint64_t (****a2)(void))
{
  v2 = *a1;
  result = (***a2)();
  *(v2 + 8) = 0;
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error> &&>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  *(v2 + 8) = *(a2 + 2);
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error> &&>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  *(v2 + 8) = *(a2 + 2);
  return result;
}

_BYTE *std::__optional_copy_base<diskimage_uio::crypto::auth_table_entry,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_248F183F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 16);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BF53E0[v5])(&v6, a2);
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, uint64_t (****a2)(void))
{
  v2 = *a1;
  result = (***a2)();
  *(v2 + 8) = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, uint64_t (****a2)(void))
{
  v2 = *a1;
  result = (***a2)();
  *(v2 + 8) = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, uint64_t (****a2)(void))
{
  v2 = *a1;
  result = (***a2)();
  *(v2 + 8) = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, uint64_t (****a2)(void))
{
  v2 = *a1;
  result = (***a2)();
  *(v2 + 8) = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN13diskimage_uio6crypto16auth_table_entry10passphraseENSA_10public_keyENSA_13symmetric_keyENSA_7unknownENSA_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, uint64_t (****a2)(void))
{
  v2 = *a1;
  result = (***a2)();
  *(v2 + 8) = 0;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(result + 16) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_285BF5408[v4])(v6);
    }
  }

  return result;
}

uint64_t *std::__variant_detail::__assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__assign_alt[abi:ne200100]<0ul,diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::passphrase>(uint64_t a1, uint64_t *a2, void (****a3)(uint64_t *__return_ptr))
{
  if (*(a1 + 16))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = (***a3)();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {

    return diskimage_uio::crypto::auth_table_entry::base_auth_table_entry::operator=(a2, a3);
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__assign_alt[abi:ne200100]<1ul,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::public_key>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v5;
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *(a2 + 8) = *(a3 + 2);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v8 = *a3;
    *a3 = 0;
    *a1 = v8;
    *(a1 + 8) = *(a3 + 2);
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t *std::__variant_detail::__assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__assign_alt[abi:ne200100]<2ul,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::symmetric_key>(uint64_t a1, uint64_t *a2, void (****a3)(uint64_t *__return_ptr))
{
  if (*(a1 + 16) == 2)
  {

    return diskimage_uio::crypto::auth_table_entry::base_auth_table_entry::operator=(a2, a3);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = (***a3)();
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__assign_alt[abi:ne200100]<3ul,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::unknown>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 16) == 3)
  {
    v5 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v5;
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *(a2 + 8) = *(a3 + 2);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v8 = *a3;
    *a3 = 0;
    *a1 = v8;
    *(a1 + 8) = *(a3 + 2);
    *(a1 + 16) = 3;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>>::__assign_alt[abi:ne200100]<4ul,diskimage_uio::crypto::auth_table_entry::error,diskimage_uio::crypto::auth_table_entry::error>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 16) == 4)
  {
    v5 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v5;
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *(a2 + 8) = *(a3 + 2);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v8 = *a3;
    *a3 = 0;
    *a1 = v8;
    *(a1 + 8) = *(a3 + 2);
    *(a1 + 16) = 4;
  }

  return result;
}

crypto::auth_table *std::unique_ptr<diskimage_uio::crypto::details::auth_table_impl_t>::reset[abi:ne200100](crypto::auth_table **a1, crypto::auth_table *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    crypto::auth_table::~auth_table(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

void *std::__find_segment_if[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props const&,diskimage_uio::crypto::encryption_props const* const*,long,256l>,std::__find_segment<diskimage_uio::crypto::encryption_props>,std::__identity>(void *a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v7 = a1;
  if (a1 == a3)
  {
    v8 = std::__find[abi:ne200100]<diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props,std::__identity>(a2, a4, a5);
    if (!v7)
    {
      return v7;
    }

    goto LABEL_6;
  }

  v10 = (*a1 + 4096);
  v11 = std::__find[abi:ne200100]<diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props,std::__identity>(a2, v10, a5);
  if (v11 != v10)
  {
    v8 = v11;
LABEL_6:
    if ((*v7 + 4096) == v8)
    {
      v12 = v7[1];
      ++v7;
    }

    return v7;
  }

  v13 = v7 + 1;
  v7 += 2;
  do
  {
    v14 = *v13;
    if (v13 == a3)
    {
      if ((*v13 + 4096) != std::__find[abi:ne200100]<diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props,std::__identity>(v14, a4, a5))
      {
        return a3;
      }

      v17 = v13[1];
      return v7;
    }

    v15 = v14 + 1024;
    v16 = std::__find[abi:ne200100]<diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props,std::__identity>(v14, v14 + 1024, a5);
    ++v7;
    ++v13;
  }

  while (v16 == v15);
  if ((*(v13 - 1) + 4096) == v16)
  {
    v18 = *v13;
  }

  else
  {
    --v13;
  }

  return v13;
}

_DWORD *std::__find[abi:ne200100]<diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props const*,diskimage_uio::crypto::encryption_props,std::__identity>(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  for (; result != a2; result += 4)
  {
    if (*result == *a3 && result[1] == a3[1] && result[2] == a3[2] && result[3] == a3[3])
    {
      break;
    }
  }

  return result;
}

void diskimage_uio::crypto::details::supported_cryptos_impl_t::supported_cryptos_impl_t(diskimage_uio::crypto::details::supported_cryptos_impl_t *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::allocator<diskimage_uio::crypto::encryption_props>::allocate_at_least[abi:ne200100](this, 1uLL);
}

void sub_248F18FBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<diskimage_uio::crypto::encryption_props>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::deque<diskimage_uio::crypto::encryption_props>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x100)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v10);
  }

  *(a1 + 32) = v5 + 256;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_front<std::atomic<DiskImage::Context *> *>(a1, v11);
}

void sub_248F1922C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::prev[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,0>(void *a1, uint64_t a2)
{
  v2 = (a2 - *a1) >> 4;
  if (v2 < 2)
  {
    result = &a1[-((256 - v2) >> 8)];
    v5 = *result;
  }

  else
  {
    result = &a1[(v2 - 1) >> 8];
    v4 = *result;
  }

  return result;
}

uint64_t *std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
      v6 = *result;
    }

    else
    {
      result += v4 >> 8;
      v5 = *result;
    }
  }

  return result;
}

void *std::deque<diskimage_uio::crypto::encryption_props>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_back<std::atomic<DiskImage::Context *> *&>(a1, &v10);
}

void sub_248F194A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props *,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props **,long,256l>,0>(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props *,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props **,long,256l>,0>(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props *,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props **,long,256l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props *,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props **,long,256l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 4 >= v11 >> 4 ? v11 >> 4 : (a3 - v9) >> 4;
      if (v12)
      {
        __src = memmove(__dst, v9, 16 * v12);
      }

      v9 += 16 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 16 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props*,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props**,long,256l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<diskimage_uio::crypto::encryption_props *,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props **,long,256l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<diskimage_uio::crypto::encryption_props *,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props **,long,256l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<diskimage_uio::crypto::encryption_props *,std::__deque_iterator<diskimage_uio::crypto::encryption_props,diskimage_uio::crypto::encryption_props *,diskimage_uio::crypto::encryption_props&,diskimage_uio::crypto::encryption_props **,long,256l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a1) >> 4;
      }

      v11 -= 16 * v13;
      a4 -= 16 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 16 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

BOOL lock_free::bitmap_t::update_pair_element(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v5 = a4 - a3 + 2;
  v6 = ~(-1 << v5) << a3;
  if (a4 - a3 == 62)
  {
    v6 = -1;
  }

  v7 = *a5;
  v8 = a5[1];
  if (v7 == v8)
  {
    v9 = (*(a1 + 8) + 8 * a2);
    if (*a5)
    {
      v10 = (v6 & ~atomic_fetch_or(v9, v6)) == 0;
    }

    else
    {
      v10 = (atomic_fetch_and(v9, ~v6) & v6) == 0;
    }
  }

  else
  {
    if ((a4 - a3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = 0;
      v12 = v5 >> 1;
      v13 = v7 | (2 * v8);
      do
      {
        v11 = v13 | (4 * v11);
        --v12;
      }

      while (v12);
    }

    else
    {
      v11 = 0;
    }

    v14 = v11 << a3;
    v15 = *(*(a1 + 8) + 8 * a2);
    v16 = v15 & ~v6 | v14;
    v17 = v15;
    atomic_compare_exchange_strong((*(a1 + 8) + 8 * a2), &v17, v16);
    if (v17 != v15)
    {
      v18 = ~v6;
      do
      {
        v15 = v17;
        v16 = v17 & v18 | v14;
        atomic_compare_exchange_strong((*(a1 + 8) + 8 * a2), &v17, v16);
      }

      while (v17 != v15);
    }

    v10 = v15 == v16;
  }

  return !v10;
}

unint64_t lock_free::first_pair_match(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = a3 - a2 + 2;
  if ((a3 - a2) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = 0;
    v6 = v4 >> 1;
    do
    {
      v5 = *a4 | (2 * a4[1]) | (4 * v5);
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  if (a3 - a2 == 62)
  {
    v7 = -1;
  }

  else
  {
    v7 = ~(-1 << v4) << a2;
  }

  v9 = ((v5 << a2) ^ v7 & a1 | (((v5 << a2) ^ v7 & a1) >> 1)) & 0x5555555555555555;
  v8 = v9 == 0;
  v10 = __clz(__rbit64(v9));
  if (v8)
  {
    return a3 + 2;
  }

  else
  {
    return v10;
  }
}

unint64_t lock_free::first_pair_mismatch(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = a3 - a2 + 2;
  if ((a3 - a2) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = 0;
    v6 = v4 >> 1;
    do
    {
      v5 = *a4 | (2 * a4[1]) | (4 * v5);
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  if (a3 - a2 == 62)
  {
    v7 = -1;
  }

  else
  {
    v7 = ~(-1 << v4) << a2;
  }

  v9 = v7 & ~((v5 << a2) ^ a1) & ((v7 & ~((v5 << a2) ^ a1)) >> 1) & 0x5555555555555555;
  v8 = v9 == 0;
  v10 = __clz(__rbit64(v9));
  if (v8)
  {
    return a3 + 2;
  }

  else
  {
    return v10;
  }
}

unint64_t lock_free::bitmap_t::update_bits(lock_free::bitmap_t *this, unint64_t a2, unint64_t a3, int a4)
{
  if (a2 > a3 || *(this + 2) <= a3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "invalid bits range ", 19);
    MEMORY[0x24C1ED3E0](v24, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "-", 1);
    MEMORY[0x24C1ED3E0](v24, a3);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v24, 0x16u);
  }

  v4 = a2 >> 6;
  v5 = a2 & 0x3F;
  v6 = a3 & 0x3F;
  if (a2 >> 6 == a3 >> 6)
  {
    v7 = v6 - v5 + 1;
    v8 = ~(-1 << v7) << v5;
    if (v7 == 64)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(this + 1);
    if (a4)
    {
      v11 = atomic_fetch_or((v10 + 8 * v4), v9);
      v5 = v9;
    }

    else
    {
      v5 = 0;
      v11 = atomic_fetch_and((v10 + 8 * v4), ~v9);
    }

    LOBYTE(v5) = (v11 & v9) != v5;
  }

  else
  {
    v12 = a3 >> 6;
    if ((a2 & 0x3F) != 0)
    {
      v5 = ~(-1 << -v5) << v5;
      v13 = *(this + 1);
      if (a4)
      {
        v14 = atomic_fetch_or((v13 + 8 * v4), v5);
        v15 = v5;
      }

      else
      {
        v15 = 0;
        v14 = atomic_fetch_and((v13 + 8 * v4), ~v5);
      }

      LOBYTE(v5) = (v14 & v5) != v15;
      ++v4;
    }

    if (v6 != 63)
    {
      v16 = ~(-2 << v6);
      v17 = *(this + 1);
      if (a4)
      {
        v18 = atomic_fetch_or((v17 + 8 * v12), v16);
        v19 = v16;
      }

      else
      {
        v19 = 0;
        v18 = atomic_fetch_and((v17 + 8 * v12), ~v16);
      }

      if ((v18 & v16) != v19)
      {
        LOBYTE(v5) = 1;
      }

      --v12;
    }

    for (; v4 <= v12; ++v4)
    {
      LOBYTE(v5) = (*(this + 1) + 8 * v4 != __swp(*(this + 2) + 8 * v4, (*(this + 1) + 8 * v4))) | v5;
    }
  }

  return v5 & 1;
}

void sub_248F19BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL lock_free::bitmap_t::update_pair_bits(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  if (a3 <= a2 || *(a1 + 16) < a3 || ((a3 - a2) & 1) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "invalid bits range ", 19);
    MEMORY[0x24C1ED3E0](v21, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "-", 1);
    MEMORY[0x24C1ED3E0](v21, a3);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v21, 0x16u);
  }

  v8 = a3 - 2;
  v9 = a2 >> 6;
  v10 = a2 & 0x3F;
  v11 = v8 & 0x3F;
  if (a2 >> 6 == v8 >> 6)
  {
    v12 = a2 >> 6;

    return lock_free::bitmap_t::update_pair_element(a1, v12, v10, v8 & 0x3F, a4);
  }

  else
  {
    v14 = v8 >> 6;
    v15 = (a2 & 0x3F) != 0 && lock_free::bitmap_t::update_pair_element(a1, v9++, v10, 62, a4);
    if (v11 <= 0x3D)
    {
      v15 |= lock_free::bitmap_t::update_pair_element(a1, v14--, 0, v11, a4);
    }

    v16 = 0;
    v17 = 32;
    do
    {
      v16 = *a4 | (2 * a4[1]) | (4 * v16);
      --v17;
    }

    while (v17);
    while (v9 <= v14)
    {
      v18 = *(a1 + 8);
      if (v15)
      {
        *(v18 + 8 * v9) = v16;
        v15 = 1;
      }

      else
      {
        v19 = (v18 + 8 * v9);
        v16 = __swp(v19, v19);
        v15 = v19 != v16;
      }

      ++v9;
    }

    return v15 & 1;
  }
}

void sub_248F19DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

unint64_t lock_free::bitmap_t::find_match_bits(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a3;
  if (a3 <= a2 || *(a1 + 16) < a3 || ((a3 - a2) & 1) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "invalid bits range ", 19);
    MEMORY[0x24C1ED3E0](v26, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "-", 1);
    MEMORY[0x24C1ED3E0](v26, v4);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v26, 0x16u);
  }

  v8 = a3 - 2;
  v9 = a2 >> 6;
  v10 = a2 & 0x3F;
  v11 = (a3 - 2) & 0x3F;
  if (a2 >> 6 == (a3 - 2) >> 6)
  {
    v12 = atomic_load((*(a1 + 8) + 8 * v9));
    pair_match = lock_free::first_pair_match(v12, v10, (a3 - 2) & 0x3F, a4);
    return pair_match + (a2 & 0xFFFFFFFFFFFFFFC0);
  }

  if (v10)
  {
    v14 = atomic_load((*(a1 + 8) + 8 * v9));
    pair_match = lock_free::first_pair_match(v14, v10, 62, a4);
    if (pair_match != 64)
    {
      return pair_match + (a2 & 0xFFFFFFFFFFFFFFC0);
    }

    ++v9;
  }

  v15 = 0;
  v16 = v8 >> 6;
  if (v11 >= 0x3E)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  v18 = 32;
  do
  {
    v15 = *a4 | (2 * a4[1]) | (4 * v15);
    --v18;
  }

  while (v18);
  v19 = v16 + v17;
  if (v9 > v19)
  {
LABEL_18:
    if (v11 <= 0x3D)
    {
      v22 = atomic_load((*(a1 + 8) + 8 * v16));
      v23 = lock_free::first_pair_match(v22, 0, (v4 - 2) & 0x3F, a4);
      if (v23 != v11 + 2)
      {
        return v23 + (v8 & 0xFFFFFFFFFFFFFFC0);
      }
    }
  }

  else
  {
    v20 = *(a1 + 8);
    v21 = v9 << 6;
    while (((*(v20 + 8 * v9) ^ v15 | ((*(v20 + 8 * v9) ^ v15) >> 1)) & 0x5555555555555555) == 0)
    {
      ++v9;
      v21 += 64;
      if (v9 > v19)
      {
        goto LABEL_18;
      }
    }

    return __clz(__rbit64((*(v20 + 8 * v9) ^ v15 | ((*(v20 + 8 * v9) ^ v15) >> 1)) & 0x5555555555555555)) + v21;
  }

  return v4;
}

void sub_248F1A038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

unint64_t lock_free::bitmap_t::find_mismatch_bits(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a3;
  if (a3 <= a2 || *(a1 + 16) < a3 || ((a3 - a2) & 1) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "invalid bits range ", 19);
    MEMORY[0x24C1ED3E0](v27, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "-", 1);
    MEMORY[0x24C1ED3E0](v27, v4);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v27, 0x16u);
  }

  v8 = a3 - 2;
  v9 = a2 >> 6;
  v10 = a2 & 0x3F;
  v11 = (a3 - 2) & 0x3F;
  if (a2 >> 6 == (a3 - 2) >> 6)
  {
    v12 = atomic_load((*(a1 + 8) + 8 * v9));
    pair_mismatch = lock_free::first_pair_mismatch(v12, v10, (a3 - 2) & 0x3F, a4);
    return pair_mismatch + (a2 & 0xFFFFFFFFFFFFFFC0);
  }

  if (v10)
  {
    v14 = atomic_load((*(a1 + 8) + 8 * v9));
    pair_mismatch = lock_free::first_pair_mismatch(v14, v10, 62, a4);
    if (pair_mismatch != 64)
    {
      return pair_mismatch + (a2 & 0xFFFFFFFFFFFFFFC0);
    }

    ++v9;
  }

  v15 = 0;
  v16 = v8 >> 6;
  if (v11 >= 0x3E)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  v18 = 32;
  do
  {
    v15 = *a4 | (2 * a4[1]) | (4 * v15);
    --v18;
  }

  while (v18);
  v19 = v16 + v17;
  if (v9 > v19)
  {
LABEL_18:
    if (v11 <= 0x3D)
    {
      v23 = atomic_load((*(a1 + 8) + 8 * v16));
      v24 = lock_free::first_pair_mismatch(v23, 0, (v4 - 2) & 0x3F, a4);
      if (v24 != v11 + 2)
      {
        return v24 + (v8 & 0xFFFFFFFFFFFFFFC0);
      }
    }
  }

  else
  {
    v20 = v9 << 6;
    while (1)
    {
      v21 = *(*(a1 + 8) + 8 * v9);
      v22 = ((v15 ^ ~v21) >> 1) & ~(v15 ^ v21) & 0x5555555555555555;
      if (v22)
      {
        return __clz(__rbit64(v22)) + v20;
      }

      ++v9;
      v20 += 64;
      if (v9 > v19)
      {
        goto LABEL_18;
      }
    }
  }

  return v4;
}

void sub_248F1A27C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL lock_free::bitmap_t::is_reset(lock_free::bitmap_t *this)
{
  v1 = *(this + 2) + 63;
  if (v1 < 0x40)
  {
    return 1;
  }

  v3 = *(this + 1);
  if (*v3)
  {
    return 0;
  }

  v4 = v1 >> 6;
  v5 = 1;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }
  }

  while (!v3[v5++]);
  return v6 >= v4;
}

uint64_t lock_free::bitmap_t::get_num_set(lock_free::bitmap_t *this)
{
  v1 = *(this + 2) + 63;
  if (v1 < 0x40)
  {
    return 0;
  }

  v4 = 0;
  v2 = 0;
  v5 = 8 * (v1 >> 6);
  do
  {
    v6 = atomic_load((*(this + 1) + v4));
    v8 = v6;
    v2 += std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,64ul>,true>(&v8, 0, 0x40uLL);
    v4 += 8;
  }

  while (v5 != v4);
  return v2;
}

unint64_t lock_free::bitmap_t::get_bit(lock_free::bitmap_t *this, unint64_t a2)
{
  if (*(this + 2) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Bit ", 4);
    MEMORY[0x24C1ED3E0](v7, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " requested while there are only ", 32);
    MEMORY[0x24C1ED3E0](v7, *(this + 2));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " bits in the bitmap", 19);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v7, 0x16u);
  }

  v2 = atomic_load((*(this + 1) + 8 * (a2 >> 6)));
  return (v2 >> a2) & 1;
}

void sub_248F1A490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL lock_free::bitmap_t::set_bit(lock_free::bitmap_t *this, unint64_t a2, int a3)
{
  if (*(this + 2) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Bit ", 4);
    MEMORY[0x24C1ED3E0](v10, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " requested while there are only ", 32);
    MEMORY[0x24C1ED3E0](v10, *(this + 2));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " bits in the bitmap", 19);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v10, 0x16u);
  }

  v3 = 1 << a2;
  v4 = (*(this + 1) + 8 * (a2 >> 6));
  if (a3)
  {
    v5 = atomic_fetch_or(v4, v3);
  }

  else
  {
    v5 = atomic_fetch_and(v4, ~v3);
  }

  return (v5 & v3) == 0;
}

void sub_248F1A5D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,64ul>,true>(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t crypto::header::header(uint64_t a1, int *a2, int a3, _DWORD *a4)
{
  *a1 = 1919118949;
  v14 = 1919118949;
  smart_enums::validators::value<unsigned int>("sig1_t", 1919118949, &v14, 1);
  *(a1 + 4) = 1634952291;
  v14 = 1634952291;
  smart_enums::validators::value<unsigned int>("sig2_t", 1634952291, &v14, 1);
  *(a1 + 8) = 2;
  v14 = 2;
  smart_enums::validators::value<unsigned int>("version_t", 2, &v14, 1);
  *(a1 + 12) = 16;
  v14 = 16;
  smart_enums::validators::value<unsigned int>("iv_tweak_size_t", 16, &v14, 1);
  *(a1 + 16) = *a4;
  *(a1 + 20) = -2147483647;
  v14 = -2147483647;
  v8 = smart_enums::validators::value<unsigned int>("algorithm_type", -2147483647, &v14, 1);
  v9 = *a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = v9;
  *(a1 + 52) = a3;
  *(a1 + 56) = xmmword_248FA7FA0;
  *(a1 + 72) = 0;
  if (*a4 == 5)
  {
    v10 = 91;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 28) = v10;
  if (*a4 == 5)
  {
    v11 = 160;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 32) = v11;
  *(a1 + 36) = di_utils::random_uuid(v8);
  *(a1 + 44) = v12;
  return a1;
}

void crypto::header::header(crypto::header *this, Backend *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  v3 = (*(*a2 + 40))(a2);
  v4 = v3 - 12;
  if (v3 >= 0xC)
  {
    v5 = *(details::get_dummy_shared_ptr() + 1);
    v11 = v19;
    v12 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 12;
    v14 = v4;
    v15 = 12;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = (*(*a2 + 128))(a2, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if ((v6 & 0x80000000) == 0 && v19[0] == 0x1000000 && *&v19[1] == 0x72636E6561736463)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "The image is encrypted with obsolete encoding version 1", 0x2Du);
    }
  }

  if ((*(*a2 + 40))(a2) > 0x4B)
  {
    operator new[]();
  }

  v7 = __cxa_allocate_exception(0x20uLL);
  v8 = (*(*a2 + 40))(a2);
  *v7 = &unk_285BF0D58;
  v7[1] = "crypto";
  v7[2] = 76;
  v7[3] = v8;
}

void sub_248F1AE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_248F1AE24(_Unwind_Exception *a1, int a2, ...)
{
  va_start(va, a2);
  switch(a2)
  {
    case 3:
      v5 = __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x30uLL);
      serializer_exception_base::serializer_exception_base((exception + 1), v5);
      *exception = &unk_285BE7030;
      exception[1] = &unk_285BE7070;
    case 2:
      __cxa_begin_catch(a1);
      __cxa_rethrow();
    case 1:
      v7 = __cxa_begin_catch(a1);
      v8 = __cxa_allocate_exception(0x40uLL);
      std::ostringstream::basic_ostringstream[abi:ne200100](va);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(va, "Unsupported value for crypto header field ", 42);
      v9 = *(v7 + 1);
      v10 = strlen(v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(va, v9, v10);
      DiskImagesRuntimeException::DiskImagesRuntimeException(v8, va, 0xA1u);
  }

  MEMORY[0x24C1ED710](v3, v2);
  _Unwind_Resume(a1);
}

void sub_248F1B4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](&a23);
  if (v26)
  {
    __cxa_free_exception(v25);
  }

  __cxa_end_catch();
  MEMORY[0x24C1ED710](v24, v23);
  JUMPOUT(0x248F1B55CLL);
}

void sub_248F1B514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x24C1ED710](v11, v10);
  JUMPOUT(0x248F1B55CLL);
}

void sub_248F1B554(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x248F1B55CLL);
  }

  __clang_call_terminate(a1);
}

__n128 crypto::header::header(crypto::header *this, const char *a2)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *this = *a2;
  result = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  *(this + 60) = *(a2 + 60);
  *(this + 2) = v3;
  *(this + 3) = v4;
  *(this + 1) = result;
  return result;
}

char *crypto::header::write(crypto::header *this, char *a2)
{
  *a2 = *this;
  *(a2 + 1) = *(this + 1);
  *(a2 + 2) = bswap32(*(this + 2));
  *(a2 + 3) = bswap32(*(this + 3));
  *(a2 + 4) = bswap32(*(this + 4));
  *(a2 + 5) = bswap32(*(this + 5));
  *(a2 + 6) = bswap32(*(this + 6));
  *(a2 + 7) = bswap32(*(this + 7));
  *(a2 + 8) = bswap32(*(this + 8));
  *(a2 + 36) = *(this + 36);
  *(a2 + 13) = bswap32(*(this + 13));
  *(a2 + 7) = bswap64(*(this + 7));
  *(a2 + 8) = bswap64(*(this + 8));
  *(a2 + 18) = bswap32(*(this + 18));
  return a2 + 76;
}

const void **crypto::header::populate_crypto_header_info(crypto::header *this, DiskImageInfo *a2)
{
  v3 = (*(*(a2 + *(*a2 - 40)) + 16))(a2 + *(*a2 - 40));
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Image contains crypto format but info class is missing EncryptionInfo", 0x16u);
  }

  v4 = v3;
  v5 = *(this + 6);
  if (v5 == 128)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = 3;
  if (*(this + 4) == 5)
  {
    v7 = v6;
  }

  *(v3 + 8) = v7;
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
  }

  *(v3 + 16) = v5;
  v8 = *MEMORY[0x277CBECE8];
  v14 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(this + 36));
  v9 = CFUUIDCreateString(v8, v14);
  v13 = v9;
  if (*(v4 + 32))
  {
    CFRelease(*(v4 + 32));
    v9 = v13;
  }

  *(v4 + 32) = v9;
  v13 = 0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&v13);
  return CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&v14);
}

void sub_248F1B788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a9);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&a10);
  _Unwind_Resume(a1);
}

uint64_t *crypto::format::format(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  *a1 = *a3;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 1) = *v5;
  a1[4] = *(v5 + 16);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *a2;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 5) = *(v6 + 24);
  a1[7] = *(v6 + 40);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8[0] = a1;
  v8[1] = a1;
  crypto::header::exec_with_enc_mode<di_utils::overloaded<crypto::format::create_crypto_mode_data(void)::{lambda(crypto::header::aes_cbc_iv8,crypto::header const&)#1},crypto::format::create_crypto_mode_data(void)::{lambda(crypto::header::aes_xts,crypto::header const&)#1}>>(v8, *a1, (a1 + 8));
  return a1;
}

void sub_248F1B874(_Unwind_Exception *a1)
{
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 48) = v8;
    operator delete(v8);
  }

  crypto::format::format(v3, v1, v4);
  _Unwind_Resume(a1);
}

uint64_t *crypto::format::format(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  crypto::generate_random_key(*(v3 + 24), (a1 + 2));
  v5 = *a1;
  if (*(*a1 + 16) == 5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 8 * *(v5 + 12);
  }

  crypto::generate_random_key(v6, (a1 + 5));
  v8[0] = a1;
  v8[1] = a1;
  crypto::header::exec_with_enc_mode<di_utils::overloaded<crypto::format::create_crypto_mode_data(void)::{lambda(crypto::header::aes_cbc_iv8,crypto::header const&)#1},crypto::format::create_crypto_mode_data(void)::{lambda(crypto::header::aes_xts,crypto::header const&)#1}>>(v8, *a1, (a1 + 8));
  return a1;
}

void sub_248F1B948(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t crypto::generate_random_key@<X0>(unint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (this >= 8)
  {
    std::vector<std::byte>::__append(a2, this >> 3);
    v4 = *a2;
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return crypto::generate_random_bytes(v4, v3 - v4);
}

void sub_248F1B9E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **crypto::format::make_key_blob@<X0>(crypto::format *this@<X0>, void *a2@<X8>)
{
  result = std::vector<std::byte>::vector[abi:ne200100](a2, *(this + 3) + *(this + 6) - (*(this + 2) + *(this + 5)) + 5);
  v4 = *result;
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = v6 - v5;
  if (v6 != v5)
  {
    result = memmove(*result, v5, v6 - v5);
  }

  v8 = &v4[v7];
  v9 = *(this + 5);
  v10 = *(this + 6);
  v11 = v10 - v9;
  if (v10 != v9)
  {
    result = memmove(v8, v9, v10 - v9);
  }

  strcpy(&v8[v11], "CKIE");
  return result;
}

void sub_248F1BB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = *(v10 - 24);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void crypto::auth_table::create(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  v9 = 0;
  *&v10 = v4;
  *(&v10 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  crypto::auth_table::init_auth_descriptors(&v8, &v6);
  if (v7)
  {
    *a2 = v8;
    *(a2 + 16) = v9;
    v8 = 0uLL;
    v9 = 0;
    *(a2 + 24) = v10;
    v5 = 1;
    v10 = 0uLL;
  }

  else
  {
    v5 = 0;
    *a2 = v6;
  }

  *(a2 + 40) = v5;
  crypto::auth_table::~auth_table(&v8);
}

void sub_248F1BC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  crypto::auth_table::~auth_table(va);
  _Unwind_Resume(a1);
}

void crypto::crypto_serializer_t::create_serializer(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v16 = &unk_285BF5440;
  v17 = &v18;
  v7 = *a2;
  v6 = a2[1];
  *&v20 = a1;
  *(&v20 + 1) = v7;
  v21 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v9 = a3[1];
  v24 = a3;
  v25 = v8;
  v26[0] = 0;
  v27 = 0;
  if (v8 != v9)
  {
    do
    {
      crypto::crypto_serializer_t::occupy_space(&v16, *(v8 + 4), *(v8 + 12));
      crypto::auth_table::const_iterator::operator++(&v24, v22);
      if (v23[640] == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v23);
      }

      v8 = v25;
    }

    while (v24 != a3 || v25 != a3[1]);
    if (v27)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v26);
    }
  }

  v12 = v17;
  v11 = v18;
  *a4 = &unk_285BF5440;
  *(a4 + 8) = v12;
  *(a4 + 16) = v11;
  v13 = a4 + 16;
  v14 = v19;
  *(a4 + 24) = v19;
  if (v14)
  {
    v11[2] = v13;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
    v11 = 0;
  }

  else
  {
    *(a4 + 8) = v13;
  }

  *(a4 + 32) = v20;
  *(a4 + 48) = v21;
  *(&v20 + 1) = 0;
  v21 = 0;
  *(a4 + 56) = 1;
  v16 = &unk_285BF5440;
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(&v17, v11);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_248F1BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x560]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9 + 16);
  }

  crypto::crypto_serializer_t::~crypto_serializer_t(&a9);
  _Unwind_Resume(a1);
}

uint64_t **crypto::crypto_serializer_t::occupy_space(uint64_t **this, unint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3 + a2;
  v11 = 2;
  if (a3 + a2 > a2)
  {
    v3 = this;
    v4 = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::discrete_interval<unsigned long long,std::less> const&>((this + 1), v10);
    if (v5)
    {
      v12 = v4;
      boost::icl::segmental::join_left<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>((v3 + 8), &v12);
      return boost::icl::segmental::join_right<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>((v3 + 8), &v12);
    }

    else
    {
      v6 = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::upper_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(v3 + 8, v10);
      v7 = *v6;
      if (*v6)
      {
        do
        {
          v8 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (v9);
      }

      return boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::add_over((v3 + 8), v10, v8);
    }
  }

  return this;
}

double crypto::crypto_serializer_t::create_key_blob@<D0>(crypto::format **this@<X0>, uint64_t a2@<X8>)
{
  crypto::format::make_key_blob(this[4], &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  return result;
}

uint64_t crypto::crypto_serializer_t::write_header@<X0>(crypto::header ***this@<X0>, uint64_t a2@<X8>)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = malloc_type_valloc(0x4CuLL, 0x8B7C732DuLL);
  if (!v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v14, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v15 = &unk_285BF55F0;
  *(&v17 + 1) = &v15;
  v22 = v4;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v23, &v15);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v15);
  crypto::header::write(*this[4], v22);
  v5 = v22;
  v6 = *(details::get_dummy_shared_ptr() + 1);
  v15 = v5;
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = xmmword_248FA7FB0;
  v18 = 76;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v7 = (*(*this[5] + 15))(this[5], &v15);
  if (v7 == 76)
  {
    v8 = 1;
  }

  else
  {
    if (v7 <= 0)
    {
      v9 = -v7;
    }

    else
    {
      v9 = 5;
    }

    v10 = std::generic_category();
    v8 = 0;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  *(a2 + 16) = v8;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v22, 0);
  result = std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v23);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F1C0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v11 - 80), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v10 + 8);
  _Unwind_Resume(a1);
}

void crypto::crypto_serializer_t::get_handle_for_new_entry(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = **(a1 + 32);
  if (*(v5 + 72) >= 0x14u)
  {
    *&v18 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v18 + 1) = 68;
    v19 = 16;
    di_log::logger<di_log::log_printer<429ul>>::logger(v20, &v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Cannot edit crypto header that has more than ", 45);
    MEMORY[0x24C1ED3C0](&v22, 20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, " auth entries", 13);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(v20);
LABEL_22:
    MEMORY[0x24C1ED6A0](&v23);
    *a4 = make_error_code(161);
    *(a4 + 8) = v17;
    *(a4 + 32) = 0;
    return;
  }

  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  if (v8 == (a1 + 16) || v8[4] >= a2 + 476)
  {
    v10 = 476;
  }

  else
  {
    v10 = v8[5];
    v11 = v8[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v8[2];
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (!v13);
    }

    if (v12 != v9)
    {
      do
      {
        if (v12[4] - v10 >= a2)
        {
          break;
        }

        v14 = v12[1];
        v15 = v12;
        if (v14)
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
            v16 = v15[2];
            v13 = *v16 == v15;
            v15 = v16;
          }

          while (!v13);
        }

        v10 = v12[5];
        v12 = v16;
      }

      while (v16 != v9);
    }
  }

  if (v10 + a2 > *(v5 + 64))
  {
    *&v18 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v18 + 1) = 68;
    v19 = 16;
    di_log::logger<di_log::log_printer<437ul>>::logger(v20, &v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "No room to add new auth entry", 29);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(v20);
    goto LABEL_22;
  }

  *v20 = a3;
  *&v20[4] = v10;
  *&v20[12] = a2;
  v20[20] = 1;
  v21 = a1;
  (*(*a1 + 40))(a1);
  *a4 = *v20;
  *(a4 + 13) = *&v20[13];
  *(a4 + 24) = a1;
  v20[20] = 0;
  *(a4 + 32) = 1;
  crypto::descriptor_handle_t::~descriptor_handle_t(v20);
}

void sub_248F1C354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<437ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<429ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<429ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5678;
  a1[45] = &unk_285BF5778;
  a1[46] = &unk_285BF57A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5678;
  a1[45] = &unk_285BF5700;
  a1[46] = &unk_285BF5728;
  return a1;
}

void sub_248F1C47C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<429ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<437ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<437ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5898;
  a1[45] = &unk_285BF5998;
  a1[46] = &unk_285BF59C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5898;
  a1[45] = &unk_285BF5920;
  a1[46] = &unk_285BF5948;
  return a1;
}

void sub_248F1C5E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<437ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t **crypto::crypto_serializer_t::release_space(uint64_t **this, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3 + a2;
  v5 = 2;
  return boost::icl::interval_base_set<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::subtract(this + 1, v4);
}

void crypto::crypto_serializer_t::serialize(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a2[1] - *a2;
  crypto::crypto_serializer_t::get_handle_for_new_entry(a1, v7, a3, v23);
  if (v25 == 1)
  {
    v8 = *a2;
    v9 = *&v23[4];
    v10 = *(details::get_dummy_shared_ptr() + 1);
    v15 = v8;
    v16 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v7;
    v18 = v9;
    v19 = v7;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v15);
    if (v7 == v11)
    {
      *a4 = *v23;
      *(a4 + 13) = *&v23[13];
      *(a4 + 24) = v24;
      v12 = v23[20];
      if (v23[20] == 1)
      {
        v23[20] = 0;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      if (v11 <= 0)
      {
        v13 = -v11;
      }

      else
      {
        v13 = 5;
      }

      v14 = std::generic_category();
      v12 = 0;
      *a4 = v13;
      *(a4 + 8) = v14;
    }

    *(a4 + 32) = v12;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v25)
    {
      crypto::descriptor_handle_t::~descriptor_handle_t(v23);
    }
  }

  else
  {
    *a4 = *v23;
    *(a4 + 32) = 0;
  }
}

void sub_248F1C7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (*(v11 - 56) == 1)
  {
    crypto::descriptor_handle_t::~descriptor_handle_t((v11 - 88));
  }

  _Unwind_Resume(exception_object);
}

void crypto::crypto_serializer_t::serialize(crypto::crypto_serializer_t *this@<X0>, const crypto::passphrase_header *a2@<X1>, uint64_t a3@<X8>)
{
  std::vector<char>::vector[abi:ne200100](__p, 616);
  crypto::passphrase_header::write(a2, __p[0]);
  crypto::crypto_serializer_t::serialize(this, __p, 1, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_248F1C878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void crypto::crypto_serializer_t::serialize(crypto::crypto_serializer_t *this@<X0>, const crypto::public_key_header *a2@<X1>, uint64_t a3@<X8>)
{
  std::vector<char>::vector[abi:ne200100](__p, 564);
  crypto::public_key_header::write(a2, __p[0]);
  crypto::crypto_serializer_t::serialize(this, __p, 2, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_248F1C908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void crypto::crypto_serializer_t::serialize(crypto::crypto_serializer_t *this@<X0>, const crypto::symmetric_key_header *a2@<X1>, uint64_t a3@<X8>)
{
  std::vector<char>::vector[abi:ne200100](__p, 556);
  crypto::symmetric_key_header::write(a2, __p[0]);
  crypto::crypto_serializer_t::serialize(this, __p, 4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_248F1C998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t crypto::crypto_serializer_t::serialize@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v19 = *a2;
    goto LABEL_18;
  }

  v8 = v6 - v5;
  v9 = malloc_type_valloc(v6 - v5, 0x8B7C732DuLL);
  if (!v9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v22 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v22, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v23 = &unk_285BF55F0;
  v26 = &v23;
  v31 = v9;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v32, &v23);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v23);
  v10 = *a2;
  if (*a2 != a2[1])
  {
    v11 = 0;
    do
    {
      crypto::auth_entry_descriptor::write((v10 + v11), &v31[v11]);
      v11 += 20;
    }

    while (v10 + v11 != a2[1]);
  }

  v12 = v31;
  v13 = *(details::get_dummy_shared_ptr() + 1);
  v23 = v12;
  v24 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = v8;
  v26 = 76;
  v27 = v8;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v14 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v23);
  v15 = v14;
  if (v8 != v14)
  {
    if (v14 <= 0)
    {
      v16 = -v14;
    }

    else
    {
      v16 = 5;
    }

    v17 = std::generic_category();
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = 0;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v31, 0);
  result = std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v32);
  if (v8 == v15)
  {
    v5 = *a2;
    v19 = a2[1];
LABEL_18:
    *(**(a1 + 32) + 72) = -858993459 * ((v19 - v5) >> 2);
    result = crypto::crypto_serializer_t::write_header(a1, a3);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F1CBD4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v15 + 8);
  _Unwind_Resume(a1);
}

crypto *crypto_format_backend::read_aligned(uint64_t a1, crypto::context::aes *a2, char *a3, unint64_t a4, const sg_per_io_crypto *a5)
{
  v31[19] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = **(a1 + 48);
    v11 = *(v10 + 52);
    if (*(a1 + 392))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v10 + 64);
    }

    v13 = v12 + a4;
    v14 = *(a1 + 24);
    v15 = *(details::get_dummy_shared_ptr() + 1);
    v21 = a2;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v11 * a3;
    v24 = v13;
    v25 = v11 * a3;
    v26 = 0;
    v27[0] = 0;
    v28 = 0;
    if (*(a5 + 56))
    {
      sg_per_io_crypto::sg_per_io_crypto(v27, a5);
      v28 = 1;
    }

    v16 = (*(*v14 + 128))(v14, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if ((v16 & 0x80000000) != 0)
    {
      *&v19 = "crypto_format_backend::read_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
      *(&v19 + 1) = 35;
      v20 = 16;
      di_log::logger<di_log::log_printer<525ul>>::logger(&v21, &v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Crypto couldn't read from inner backend @ ", 42);
      MEMORY[0x24C1ED3E0](&v30, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "/", 1);
      MEMORY[0x24C1ED3B0](&v30, v11 * a3);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(&v21);
      MEMORY[0x24C1ED6A0](v31);
    }

    else
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v21, a1 + 216);
      v29 = v11;
      v16 = crypto::crypt_op::crypt(&v21, a2, a3, a4);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_248F1CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<525ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<525ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<525ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5AB8;
  a1[45] = &unk_285BF5BB8;
  a1[46] = &unk_285BF5BE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5AB8;
  a1[45] = &unk_285BF5B40;
  a1[46] = &unk_285BF5B68;
  return a1;
}

void sub_248F1CF6C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<525ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t crypto_format_backend::read(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = crypto_format_backend::read_aligned(a1, v13, 1, v8, v18);
    if (result)
    {
      return result;
    }

    v14 = v9;
    if (v6 >= (v7 - v9))
    {
      v15 = v7 - v9;
    }

    else
    {
      v15 = v6;
    }

    memcpy(v4, (*(a1 + 384) + v14), v15);
    v6 -= v15;
    v4 += v15;
    v8 += v7;
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    sg_per_io_crypto::sg_per_io_crypto(v18, (a2 + 6));
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v18[0] = 0;
  }

  v19 = v10;
  result = crypto_format_backend::read_aligned(a1, v4, (v6 / v7), v8, v18);
  if (!result)
  {
    v12 = v6 % v7;
    if (!(v6 % v7))
    {
      return *(a2 + 4);
    }

    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v16 = v6 - v12;
    v17 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = crypto_format_backend::read_aligned(a1, v17, 1, v16 + v8, v18);
    if (!result)
    {
      memcpy(&v4[v16], *(a1 + 384), v12);
      return *(a2 + 4);
    }
  }

  return result;
}

crypto *crypto_format_backend::write_aligned(uint64_t a1, crypto::context::aes *a2, char *a3, unint64_t a4, const sg_per_io_crypto *a5)
{
  v32[19] = *MEMORY[0x277D85DE8];
  v10 = **(a1 + 48);
  if (*(a1 + 392))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v10 + 52);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v22, a1 + 64);
  v30 = v12;
  v13 = crypto::crypt_op::crypt(&v22, a2, a3, a4);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v22);
  if (!v13)
  {
    v14 = *(a1 + 24);
    v15 = v11 + a4;
    v16 = *(details::get_dummy_shared_ptr() + 1);
    v17 = v12 * a3;
    v22 = a2;
    v23 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v17;
    v25 = v15;
    v26 = v17;
    v27 = 0;
    v28[0] = 0;
    v29 = 0;
    if (*(a5 + 56))
    {
      sg_per_io_crypto::sg_per_io_crypto(v28, a5);
      v29 = 1;
    }

    v13 = (*(*v14 + 120))(v14, &v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if ((v13 & 0x80000000) != 0)
    {
      *&v20 = "crypto_format_backend::write_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
      *(&v20 + 1) = 36;
      v21 = 16;
      di_log::logger<di_log::log_printer<602ul>>::logger(&v22, &v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Crypto couldn't write to inner backend @ ", 41);
      MEMORY[0x24C1ED3E0](&v31, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "/", 1);
      MEMORY[0x24C1ED3B0](&v31, v17);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(&v22);
      MEMORY[0x24C1ED6A0](v32);
    }

    else
    {
      v13 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_248F1D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<602ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<602ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<602ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5CD8;
  a1[45] = &unk_285BF5DD8;
  a1[46] = &unk_285BF5E00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5CD8;
  a1[45] = &unk_285BF5D60;
  a1[46] = &unk_285BF5D88;
  return a1;
}

void sub_248F1D4B4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<602ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t crypto_format_backend::write(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 48))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = crypto_format_backend::read_aligned(a1, v13, 1, v8, v22);
    if (result)
    {
      return result;
    }

    v14 = v6 >= (v7 - v9) ? v7 - v9 : v6;
    memcpy(*(a1 + 384), v4 + v9, v14);
    v15 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = crypto_format_backend::write_aligned(a1, v15, 1, v8, v22);
    if (result)
    {
      return result;
    }

    v6 -= v14;
    v4 = (v4 + v14);
    v8 += v14;
  }

  if (*(a2 + 40))
  {
    if (v6 >= v7)
    {
      v16 = 0;
      while (1)
      {
        memcpy(*(a1 + 384), v4 + v16, v7);
        v17 = *(a1 + 384);
        if ((*(a2 + 104) & 1) != 0 && *(a2 + 48))
        {
          sg_per_io_crypto::clone_with_offset((a2 + 48), *(a2 + 24), v16, v21);
          sg_per_io_crypto::sg_per_io_crypto(v22, v21);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v22[0] = 0;
        }

        v23 = v18;
        result = crypto_format_backend::write_aligned(a1, v17, 1, v8 + v16, v22);
        if (result)
        {
          return result;
        }

        v6 -= v7;
        v16 += v7;
        if (v6 < v7)
        {
          v4 = (v4 + v16);
          v8 += v16;
          break;
        }
      }
    }
  }

  else
  {
    v10 = v6 / v7;
    if (*(a2 + 104) == 1 && *(a2 + 48))
    {
      sg_per_io_crypto::sg_per_io_crypto(v22, (a2 + 48));
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v22[0] = 0;
    }

    v23 = v11;
    result = crypto_format_backend::write_aligned(a1, v4, (v6 / v7), v8, v22);
    if (result)
    {
      return result;
    }

    v4 = (v4 + v10 * v7);
    v8 += v10 * v7;
    v6 %= v7;
  }

  if (!v6)
  {
    return *(a2 + 16);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48))
  {
    return 4294967194;
  }

  v19 = *(a1 + 384);
  v22[0] = 0;
  v23 = 0;
  result = crypto_format_backend::read_aligned(a1, v19, 1, v8, v22);
  if (!result)
  {
    memcpy(*(a1 + 384), v4, v6);
    v20 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = crypto_format_backend::write_aligned(a1, v20, 1, v8, v22);
    if (!result)
    {
      return *(a2 + 16);
    }
  }

  return result;
}

void crypto_format_backend::run_futures(crypto_format_backend *this)
{
  v68 = *MEMORY[0x277D85DE8];
  v1 = *(this + 51);
  v2 = *(this + 52);
  if (v2 == v1)
  {
    goto LABEL_70;
  }

  v4 = *(this + 54);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(this + 55) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(this + 55) + v4) & 0x1F))
  {
    goto LABEL_70;
  }

  v7 = *(**(this + 6) + 52);
  v8 = *v5 + 128 * (*(this + 54) & 0x1FLL);
  v9 = &v1[v4 >> 5];
  if (v2 != v1)
  {
    v10 = *(v1 + (((v4 + *(this + 55)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(this + 55)) & 0x1F);
    if (v6 == v10)
    {
      v36 = &v1[v4 >> 5];
      v37 = *v36 + 128 * (*(this + 54) & 0x1FLL);
      if (v37 != v8)
      {
        do
        {
          v38 = *(v37 + 112);
          if (v38)
          {
            *(v38 + 16) = 0;
          }

          v39 = *(v37 + 8);
          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          v37 += 128;
          if (v37 - *v36 == 4096)
          {
            v40 = v36[1];
            ++v36;
            v37 = v40;
          }
        }

        while (v37 != v8);
        v1 = *(this + 51);
        v2 = *(this + 52);
      }

      goto LABEL_63;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v10 = 0;
LABEL_8:
    v11 = &v1[v4 >> 5];
    if (v10 != v6)
    {
      *v5;
      v12 = ((v4 & 0x1F) << 7) >> 7;
      if (v12 < 0)
      {
        v14 = 30 - v12;
        v13 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v13 = v12 + 1;
        v11 = &v5[(v12 + 1) >> 5];
      }

      v15 = *v11;
      v6 = *v11 + 128 * (v13 & 0x1F);
      if (v6 == v10)
      {
LABEL_19:
        v6 = v10;
      }

      else
      {
        v16 = *(v8 + 24);
        v17 = *v5 + 128 * (v4 & 0x1F);
        while (1)
        {
          v16 += *(v17 + 16);
          if (v16 != *(v6 + 24) || *(v17 + 120) != *(v6 + 120))
          {
            break;
          }

          v18 = v6 + 128;
          if (v6 + 128 - v15 == 4096)
          {
            v19 = v11[1];
            ++v11;
            v15 = v19;
            v18 = v19;
          }

          v17 = v6;
          v6 = v18;
          if (v18 == v10)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v20 = (v8 + 120);
    v21 = 64;
    if (!*(v8 + 120))
    {
      v21 = 216;
    }

    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v60, this + v21);
    v61 = v7;
    v45 = *(this + 3);
    v52 = v9;
    v53 = v8;
    v50 = v11;
    v51 = v6;
    if (*(this + 392))
    {
      v46 = 0;
    }

    else
    {
      v46 = *(**(this + 6) + 64);
    }

    v22 = *v20;
    v23 = *MEMORY[0x277D85FA0];
    crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(*v20, v62);
    if (v8 == v6)
    {
      v24 = 0;
      goto LABEL_50;
    }

    sg_entry::sg_entry(v47, v8);
    v24 = 0;
    v25 = v49 / v23 * v23;
    v26 = v8;
    v27 = v9;
    while (1)
    {
      sg_entry::sg_entry(&v64, v26);
      if (!v63)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v63 + 48))(v63, &v64))
      {
        v28 = v66 + v67 - v25;
        if (v28 % v23)
        {
          v29 = v23 - v28 % v23;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 + v28;
        v24 += v30;
        v25 += v30;
      }

      else
      {
        v31 = v23;
        if (v67 % v7)
        {
          goto LABEL_36;
        }

        if (v66 % v7)
        {
          v31 = 0;
LABEL_36:
          v32 = v31 + v24;
          if ((v66 + v67) % v7)
          {
            v33 = v23;
          }

          else
          {
            v33 = 0;
          }

          v24 = v32 + v33;
          v25 = (v7 - 1 + v66 + v67) / v7 * v7;
          goto LABEL_40;
        }

        v25 = v66 + v67;
      }

LABEL_40:
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      v26 += 128;
      if (v26 - *v27 == 4096)
      {
        v34 = v27[1];
        ++v27;
        v26 = v34;
      }

      if (v26 == v6)
      {
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

LABEL_50:
        crypto::details::sg_allocator::sg_allocator(v54, v24, *MEMORY[0x277D85FA0]);
        std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v62);
        v55 = v60;
        v56 = v45;
        v57 = v22;
        v58 = v46;
        if (v53 == v51)
        {
          v35 = 0;
        }

        else
        {
          v35 = 4 * (v50 - v52) - ((v53 - *v52) >> 7) + ((v51 - *v50) >> 7);
        }

        v59 = v35;
        is_mul_ok(3 * v35, 0x18uLL);
        operator new[]();
      }
    }
  }

LABEL_63:
  *(this + 55) = 0;
  v41 = v2 - v1;
  if (v41 >= 3)
  {
    do
    {
      operator delete(*v1);
      v42 = *(this + 52);
      v1 = (*(this + 51) + 8);
      *(this + 51) = v1;
      v41 = (v42 - v1) >> 3;
    }

    while (v41 > 2);
  }

  if (v41 == 1)
  {
    v43 = 16;
    goto LABEL_69;
  }

  if (v41 == 2)
  {
    v43 = 32;
LABEL_69:
    *(this + 54) = v43;
  }

LABEL_70:
  v44 = *MEMORY[0x277D85DE8];
}

void sub_248F1E33C(_Unwind_Exception *a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::~crypt_consecutive_vector_with_futures(&STACK[0x278], a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::operator()(uint64_t a1)
{
  v2 = crypto::crypt_op::crypt_consecutive_vector::operator()(a1);
  if ((v2 & 0x80000000) != 0)
  {

    crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::report_errors(a1 + 224, v2);
  }
}

void *di_log::logger<di_log::log_printer<758ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<758ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5EF8;
  a1[45] = &unk_285BF5FF8;
  a1[46] = &unk_285BF6020;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5EF8;
  a1[45] = &unk_285BF5F80;
  a1[46] = &unk_285BF5FA8;
  return a1;
}

void sub_248F1E654(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<758ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<776ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<776ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF6118;
  a1[45] = &unk_285BF6218;
  a1[46] = &unk_285BF6240;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF6118;
  a1[45] = &unk_285BF61A0;
  a1[46] = &unk_285BF61C8;
  return a1;
}

void sub_248F1E7C0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<776ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::~crypt_consecutive_vector_with_futures(uint64_t a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector::reset(a1, a2);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::report_errors(a1 + 224, *(a1 + 304));

  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector(a1);
}

uint64_t crypto_format_backend::unmap_range(crypto_format_backend *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (*(this + 392))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(**(this + 6) + 64);
  }

  return (*(*v3 + 24))(v3, v4 + a2);
}

uint64_t crypto_format_backend::truncate(crypto_format_backend *this, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(this + 98);
  v4 = **(this + 6);
  if ((v3 & 2) == 0)
  {
    *(v4 + 56) = a2;
  }

  v5 = *(this + 3);
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 64);
  }

  v7 = (*(*v5 + 56))(v5, (a2 + *(v4 + 52) - 1) / *(v4 + 52) * *(v4 + 52) + v6);
  if (!v7)
  {
    crypto::header::write(**(this + 6), v19);
    v8 = *(details::get_dummy_shared_ptr() + 1);
    v12 = v19;
    v13 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = xmmword_248FA7FB0;
    v15 = 76;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v9 = (*(**(this + 3) + 120))(*(this + 3), &v12);
    if (v14 == v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_248F1EA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void crypto_format_backend::crypto_format_backend(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  (*(**a2 + 80))(&v8);
  BackendInternalBackend::BackendInternalBackend(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = *a3;
  v6 = a3[1];
  *(a1 + 40) = &unk_285BF6330;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a3;
  }

  *a1 = &unk_285BF5498;
  *(a1 + 40) = &unk_285BF5570;
  crypto::format::create_aes_context(v5, 0);
  crypto::format::create_aes_context(*a3, 1);
  *(a1 + 368) = crypto::context::get_cryptos_base(a1 + 64);
  *(a1 + 376) = crypto::context::get_cryptos_base(a1 + 216);
  v7 = *(**a3 + 52);
  operator new[]();
}

void sub_248F1EBD4(_Unwind_Exception *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 64);
  *(v1 + 5) = v2;
  v4 = *(v1 + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}