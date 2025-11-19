uint64_t recoverVectorIndex(int a1, const char *a2, uint64_t a3)
{
  v53[20] = *MEMORY[0x1E69E9840];
  memset(&v42, 0, sizeof(v42));
  std::string::append[abi:nn200100]<char const*,0>(&v42, ".", "");
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    }

    else
    {
      v35 = v42;
    }

    IVFVectorIndex_s::protectionClassForParentPath();
  }

  *__error() = v6;
  memset(&v41, 0, sizeof(v41));
  v8 = strlen(a2);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_82:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v8;
  if (v8)
  {
    memcpy(&buf, a2, v8);
  }

  buf.__r_.__value_.__s.__data_[v9] = 0;
  v10 = std::string::append(&buf, "ivf-vector-indexes");
  v11 = v10->__r_.__value_.__r.__words[0];
  *__p = v10->__r_.__value_.__l.__size_;
  *&__p[7] = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v35.__r_.__value_.__r.__words[0] = v11;
  v35.__r_.__value_.__l.__size_ = *__p;
  *(&v35.__r_.__value_.__r.__words[1] + 7) = *&__p[7];
  *(&v35.__r_.__value_.__s + 23) = v12;
  std::__fs::filesystem::operator/[abi:nn200100](__dst, &v42, &v35);
  if ((__dst[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v41, *__dst, *&__dst[8]);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_73;
      }
    }

    else if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v41 = *__dst;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_73:
      operator delete(v35.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_74;
    }
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_74:
  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_18:
  v13 = std::system_category();
  *&__ec.__val_ = 0;
  __ec.__cat_ = v13;
  size = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v41;
  }

  else
  {
    v15 = v41.__r_.__value_.__r.__words[0];
  }

  v39 = 0;
  memset(__dst, 0, 24);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v41.__r_.__value_.__l.__size_;
  }

  std::string::append[abi:nn200100]<char const*,0>(__dst, v15, (v15 + size));
  std::__fs::filesystem::__status(__dst, &__ec);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if (__ec.__val_)
    {
LABEL_25:
      v16 = *__error();
      v17 = _SILogForLogForCategory(16);
      v18 = dword_1EBF46B0C < 3;
      if (os_log_type_enabled(v17, (dword_1EBF46B0C < 3)))
      {
        v19 = (v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v41 : v41.__r_.__value_.__r.__words[0];
        val = __ec.__val_;
        std::error_code::message(&v35, &__ec);
        v21 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
        *__dst = 136315650;
        *&__dst[4] = v19;
        *&__dst[12] = 1024;
        *&__dst[14] = val;
        *&__dst[18] = 2080;
        *&__dst[20] = v21;
        _os_log_impl(&dword_1C278D000, v17, v18, "*warn* check status %s failed %d %s", __dst, 0x1Cu);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }
      }

      *__error() = v16;
      goto LABEL_35;
    }
  }

  else if (__ec.__val_)
  {
    goto LABEL_25;
  }

  if (v39 && v39 != 255)
  {
    v24 = MEMORY[0x1E69E5528] + 24;
    v25 = MEMORY[0x1E69E5528] + 64;
    bzero(&__dst[8], 0x238uLL);
    v53[0] = v25;
    v26 = *(MEMORY[0x1E69E54C8] + 16);
    *__dst = *(MEMORY[0x1E69E54C8] + 8);
    *&__dst[*(*__dst - 24)] = v26;
    *&__dst[8] = 0;
    v27 = &__dst[*(*__dst - 24)];
    std::ios_base::init(v27, &__dst[16]);
    v27[1].__vftable = 0;
    v27[1].__fmtflags_ = -1;
    *__dst = v24;
    v53[0] = v25;
    MEMORY[0x1C691FB90](&__dst[16]);
    std::ifstream::open();
    if (v52)
    {
      std::istream::seekg();
      v38 = 1;
      std::istream::read();
      if (!v38)
      {
        v33 = *__error();
        v34 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v34, (dword_1EBF46B0C < 3)))
        {
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = v42;
          }

          IVFVectorIndex_s::protectionClassForParentPath();
        }

        *__error() = v33;
        *__dst = *MEMORY[0x1E69E54C8];
        *&__dst[*(*__dst - 24)] = *(MEMORY[0x1E69E54C8] + 24);
        MEMORY[0x1C691FBA0](&__dst[16]);
        std::istream::~istream();
        MEMORY[0x1C691FE80](v53);
        v30 = 1;
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_70;
        }

        goto LABEL_67;
      }
    }

    *__dst = *MEMORY[0x1E69E54C8];
    *&__dst[*(*__dst - 24)] = *(MEMORY[0x1E69E54C8] + 24);
    MEMORY[0x1C691FBA0](&__dst[16]);
    std::istream::~istream();
    MEMORY[0x1C691FE80](v53);
  }

LABEL_35:
  v22 = strlen(a2);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_82;
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v22;
  if (v22)
  {
    memcpy(__dst, a2, v22);
  }

  __dst[v23] = 0;
  v35.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  v35.__r_.__value_.__l.__size_ = 1174405120;
  v35.__r_.__value_.__r.__words[2] = ___ZN16IVFVectorIndex_s17recoverFromShadowEiPKcPVi_block_invoke;
  v36 = &__block_descriptor_tmp_113_8161;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v42;
  }

  IVFVectorIndex_s::enumerateIndexes(&v42);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  buf.__r_.__value_.__r.__words[0] = 0;
  buf.__r_.__value_.__l.__size_ = &buf;
  buf.__r_.__value_.__r.__words[2] = 0x2000000000;
  v46 = 1;
  v28 = strlen(a2);
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_82;
  }

  v29 = v28;
  if (v28 >= 0x17)
  {
    operator new();
  }

  v44 = v28;
  if (v28)
  {
    memcpy(__p, a2, v28);
  }

  __p[v29] = 0;
  *__dst = MEMORY[0x1E69E9820];
  *&__dst[8] = 1174405120;
  *&__dst[16] = ___ZN16IVFVectorIndex_s17recoverFromShadowEiPKcPVi_block_invoke_114;
  *&__dst[24] = &unk_1F427D978;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = v42;
  }

  v51 = a1;
  v50 = a3;
  p_buf = &buf;
  IVFVectorIndex_s::enumerateIndexes(&v42);
  if (v44 < 0)
  {
    operator delete(*__p);
  }

  v30 = *(buf.__r_.__value_.__l.__size_ + 24);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&buf, 8);
  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_70:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_71:
    operator delete(v42.__r_.__value_.__l.__data_);
    goto LABEL_68;
  }

  operator delete(v37.__r_.__value_.__l.__data_);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_67:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_68:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

void ___ZN16IVFVectorIndex_s17recoverFromShadowEiPKcPVi_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a8 < 0)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a7 + 23) >= 0)
      {
        v12 = a7;
      }

      else
      {
        v12 = *a7;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v12;
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "remove: %s", &buf, 0xCu);
    }

    *__error() = v10;
    memset(&v24, 0, sizeof(v24));
    v13 = *(a7 + 23);
    if (v13 >= 0)
    {
      v14 = a7;
    }

    else
    {
      v14 = *a7;
    }

    if (v13 < 0)
    {
      v13 = *(a7 + 8);
    }

    std::string::append[abi:nn200100]<char const*,0>(&v24.__pn_, v14, (v14 + v13));
    std::__fs::filesystem::operator/[abi:nn200100](&__p, a1 + 32, &v24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __p;
    }

    IVFVectorIndex_s::unlink(&buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        if ((SHIBYTE(v24.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((*(a7 + 23) & 0x80000000) == 0)
      {
LABEL_19:
        __p = *a7;
        goto LABEL_24;
      }

LABEL_23:
      std::string::__init_copy_ctor_external(&__p, *a7, *(a7 + 8));
LABEL_24:
      v15 = std::string::append(&__p, ".partitions");
      v16 = v15->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v17 = *__error();
      v18 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
        *(__p.__r_.__value_.__r.__words + 4) = p_buf;
        _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "remove partitions: %s", &__p, 0xCu);
      }

      *__error() = v17;
      memset(&v23, 0, sizeof(v23));
      size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &buf;
      }

      else
      {
        v21 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      std::string::append[abi:nn200100]<char const*,0>(&v23, v21, (v21 + size));
      std::__fs::filesystem::operator/[abi:nn200100](&v24.__pn_, a1 + 32, &v23);
      if (SHIBYTE(v24.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v24.__pn_.__r_.__value_.__l.__data_, v24.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v24.__pn_;
      }

      IVFVectorIndex_s::unlink(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v24.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_40:
          if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_45;
        }
      }

      else if ((SHIBYTE(v24.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      operator delete(v24.__pn_.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_41:
        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_46:
        operator delete(buf.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }

LABEL_45:
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

LABEL_22:
    operator delete(v24.__pn_.__r_.__value_.__l.__data_);
    if ((*(a7 + 23) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_42:
  v22 = *MEMORY[0x1E69E9840];
}

void ___ZN16IVFVectorIndex_s17recoverFromShadowEiPKcPVi_block_invoke_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::string *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = HIBYTE(a7->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80u) == 0)
  {
    size = HIBYTE(a7->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a7->__r_.__value_.__l.__size_;
  }

  if (size + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v9 = a7;
  if (size + 7 >= 0x17)
  {
    operator new();
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  HIBYTE(v33) = size + 7;
  if (size)
  {
    if ((v7 & 0x80u) == 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7->__r_.__value_.__r.__words[0];
    }

    memmove(&v31, v11, size);
  }

  else if ((v7 & 0x80u) == 0)
  {
    v11 = a7;
  }

  else
  {
    v11 = a7->__r_.__value_.__r.__words[0];
  }

  strcpy(&v31 + size, ".shadow");
  memset(&__p, 0, sizeof(__p));
  if ((v7 & 0x80u) == 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 1);
  }

  std::string::append[abi:nn200100]<char const*,0>(&__p, v11, (v11 + v12));
  std::__fs::filesystem::operator/[abi:nn200100](v34, a1 + 40, &__p);
  std::__fs::filesystem::__status(v34, 0);
  if ((v34[23] & 0x80000000) != 0)
  {
    operator delete(*v34);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_38:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }

LABEL_17:
  if (v29.__pn_.__r_.__value_.__s.__data_[0] != 255 && v29.__pn_.__r_.__value_.__s.__data_[0])
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = &v31;
      if (v33 < 0)
      {
        v24 = v31;
      }

      *v34 = 136315138;
      *&v34[4] = v24;
      _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "remove: %s", v34, 0xCu);
    }

    *__error() = v22;
    memset(&v29, 0, sizeof(v29));
    v25 = SHIBYTE(v33);
    if (v33 >= 0)
    {
      v26 = &v31;
    }

    else
    {
      v26 = v31;
    }

    if (v33 < 0)
    {
      v25 = v32;
    }

    std::string::append[abi:nn200100]<char const*,0>(&v29.__pn_, v26, (v26 + v25));
    std::__fs::filesystem::operator/[abi:nn200100](&__p, a1 + 40, &v29);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v34, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *v34 = __p;
    }

    IVFVectorIndex_s::unlink(v34);
    if ((v34[23] & 0x80000000) != 0)
    {
      operator delete(*v34);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_61:
        if ((SHIBYTE(v29.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

LABEL_67:
    operator delete(v29.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v13 = *__error();
  v14 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = &v31;
    if (v33 < 0)
    {
      v15 = v31;
    }

    if (v9[23] >= 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = *v9;
    }

    *v34 = 136315394;
    *&v34[4] = v15;
    *&v34[12] = 2080;
    *&v34[14] = v16;
    _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "copy file: %s to %s", v34, 0x16u);
  }

  *__error() = v13;
  if (v33 >= 0)
  {
    v17 = &v31;
  }

  else
  {
    v17 = v31;
  }

  if (v9[23] >= 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = *v9;
  }

  if ((copyFileFallback(*(a1 + 72), v17, *(a1 + 72), v18, *(a1 + 64), 1, 1) & 1) == 0)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if (v9[23] >= 0)
      {
        v28 = v9;
      }

      else
      {
        v28 = *v9;
      }

      *v34 = 136315650;
      *&v34[4] = "recoverFromShadow_block_invoke";
      *&v34[12] = 1024;
      *&v34[14] = 4088;
      *&v34[18] = 2080;
      *&v34[20] = v28;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: Could not recover file from shadow: %s", v34, 0x1Cu);
    }

    *__error() = v19;
    v21 = v9[23];
    if ((v21 & 0x8000000000000000) != 0)
    {
      v21 = *(v9 + 1);
      if (v21 < 0xB)
      {
        goto LABEL_56;
      }

      v9 = *v9;
    }

    else if (v21 < 0xB)
    {
LABEL_56:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (strcmp(&v9[v21 - 11], ".partitions"))
    {
      goto LABEL_56;
    }
  }

LABEL_62:
  if (SHIBYTE(v33) < 0)
  {
LABEL_63:
    operator delete(v31);
  }

LABEL_64:
  v27 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_8_40c34_ZTSNSt3__14__fs10filesystem4pathE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void __copy_helper_block_8_40c34_ZTSNSt3__14__fs10filesystem4pathE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

uint64_t __Block_byref_object_copy__121(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 56);
  v2 = a2 + 56;
  v3 = v4;
  *(result + 56) = v4;
  v5 = *(v2 - 16);
  *(result + 48) = *(v2 - 8);
  *(v2 - 16) = 0;
  *(result + 40) = v5;
  *(v2 - 8) = 0;
  v6 = *(v2 + 8);
  *(result + 64) = v6;
  *(result + 72) = *(v2 + 16);
  if (v6)
  {
    v7 = *(v3 + 8);
    v8 = *(result + 48);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v7 %= v8;
      }
    }

    else
    {
      v7 &= v8 - 1;
    }

    *(v5 + 8 * v7) = result + 56;
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  return result;
}

void __Block_byref_object_dispose__122(uint64_t a1)
{
  v2 = *(a1 + 56);
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

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void *___ZN16IVFVectorIndex_sC2EiPKcbbPViP10data_map_sjU13block_pointerFvS1_jt14vec_dimensions15vec_data_formatb20VectorIndexOpenErrorjE_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, std::string *a7, char a8)
{
  v83 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 72);
  v76 = 4;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
  v14 = v13;
  v15 = v12;
  v16 = HIDWORD(v12);
  v18 = v17;
  v19 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v20 = *(v19 + 312);
  v21 = *(v19 + 224);
  if (v21)
  {
    v21(*(v19 + 288));
  }

  LODWORD(__dst.__r_.__value_.__l.__data_) = v15;
  LODWORD(buf.__r_.__value_.__l.__data_) = v16;
  LODWORD(v74) = v18;
  v75 = v14;
  if (_setjmp(v19))
  {
    v22 = a1;
    v23 = a5;
    v24 = a2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __p, 2u);
    }

    *(v19 + 312) = v20;
    v25 = a4;
    if (__THREAD_SLOT_KEY)
    {
      v26 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v26)
      {
        goto LABEL_111;
      }
    }

    else
    {
      makeThreadId();
      v26 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v26)
      {
        goto LABEL_111;
      }
    }

    v27 = v26;
    if (v26 < 0x801)
    {
LABEL_9:
      v28 = &threadData[9 * v27];
      v30 = *(v28 - 4);
      v29 = (v28 - 2);
      if (v30 > v75)
      {
        v31 = v27 - 1;
        do
        {
          CIOnThreadCleanUpPop(v31);
        }

        while (*v29 > v75);
      }

      dropThreadId(LODWORD(__dst.__r_.__value_.__l.__data_), 1, add_explicit + 1);
      CICleanUpReset(LODWORD(__dst.__r_.__value_.__l.__data_), v74);
      IVFDiskOne = 0;
      goto LABEL_18;
    }

LABEL_111:
    makeThreadId();
    v27 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_9;
  }

  v22 = a1;
  v23 = a5;
  v24 = a2;
  if ((a8 & 0x80) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v33 = *(v11 + 192);
  *__p = *(v11 + 176);
  *&__p[16] = v33;
  v34 = ((a8 & 0x80) == 0) | *(a1 + 96);
  v25 = a4;
  IVFDiskOne = makeIVFDiskOne(__p, *v11, v11 + 96, a2, a3, a4, a5, a6, 0, v34, &v76);
  v35 = threadData[9 * LODWORD(__dst.__r_.__value_.__l.__data_) + 1] + 320 * LODWORD(buf.__r_.__value_.__l.__data_);
  *(v35 + 312) = v20;
  v36 = *(v35 + 232);
  if (v36)
  {
    v36(*(v35 + 288));
  }

  dropThreadId(LODWORD(__dst.__r_.__value_.__l.__data_), 0, add_explicit + 1);
LABEL_18:
  v37 = v25 & 3;
  v74 = a6 | (2 * (((v25 & 3) << 50) | ((v23 & 3) << 48) | (a3 << 32) | v24));
  if (IVFDiskOne)
  {
    v38 = *__error();
    v39 = _SILogForLogForCategory(16);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    if (*(v11 + 143) < 0)
    {
      v40 = *(v11 + 120);
    }

    else
    {
      v40 = v11 + 120;
    }

    v44 = *(v22 + 80);
    v45 = strlen(v44);
    if (v45 <= 0x7FFFFFFFFFFFFFF7)
    {
      v46 = v39;
      v47 = v45;
      if (v45 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v45;
      if (v45)
      {
        memmove(&__dst, v44, v45);
      }

      __dst.__r_.__value_.__s.__data_[v47] = 0;
      (*(*IVFDiskOne + 312))(__p, IVFDiskOne, &__dst);
      if (__p[23] >= 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = *__p;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v40;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v48;
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "[%s] %s opened", &buf, 0x16u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_43:
      *__error() = v38;
      operator new();
    }

LABEL_112:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v76 == 6)
  {
    *(*(*(v22 + 56) + 8) + 24) = 1;
    v41 = a6 | (2 * (((v25 & 3) << 50) | ((v23 & 3) << 48) | (a3 << 32) | v24));
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
    memset(&buf, 0, sizeof(buf));
    size = SHIBYTE(a7->__r_.__value_.__r.__words[2]);
    if (size >= 0)
    {
      v43 = a7;
    }

    else
    {
      v43 = a7->__r_.__value_.__r.__words[0];
    }

    if (size < 0)
    {
      size = a7->__r_.__value_.__l.__size_;
    }

    std::string::append[abi:nn200100]<char const*,0>(&buf, v43, (v43 + size));
    std::__fs::filesystem::operator/[abi:nn200100](__p, v11 + 72, &buf);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *__p, *&__p[8]);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      __dst = *__p;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    v50 = fd_create_protected(*(v22 + 88), p_dst, 0, 0);
    if (v50)
    {
      fd_release(v50);
      IVFVectorIndex_s::unlink(&__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = __dst.__r_.__value_.__l.__size_;
      }

      if (v51 + 7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_112;
      }

      if (v51 + 7 >= 0x17)
      {
        operator new();
      }

      memset(__p, 0, 24);
      __p[23] = v51 + 7;
      if (v51)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &__dst;
        }

        else
        {
          v52 = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(__p, v52, v51);
      }

      strcpy(&__p[v51], ".shadow");
      IVFVectorIndex_s::unlink(__p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v53 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
      if (v53 + 11 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_112;
      }

      if (v53 + 11 >= 0x17)
      {
        operator new();
      }

      memset(__p, 0, 24);
      __p[23] = v53 + 11;
      if (v53)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &__dst;
        }

        else
        {
          v54 = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(__p, v54, v53);
      }

      strcpy(&__p[v53], ".partitions");
      IVFVectorIndex_s::unlink(__p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v55 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
      if (v55 + 18 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_112;
      }

      if (v55 + 18 >= 0x17)
      {
        operator new();
      }

      memset(__p, 0, 24);
      __p[23] = v55 + 18;
      if (v55)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &__dst;
        }

        else
        {
          v56 = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(__p, v56, v55);
      }

      strcpy(&__p[v55], ".partitions.shadow");
      IVFVectorIndex_s::unlink(__p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *(*(*(v22 + 48) + 8) + 24) = 1;
      LODWORD(v57) = a3 | 0x80000000;
      if (a6)
      {
        v57 = v57;
      }

      else
      {
        v57 = a3;
      }

      v58 = data_map_drop_vectors(*(v11 + 200), v37 & 0xFFFFFFF3 | (4 * (v23 & 3)), *(v22 + 92) | (v57 << 32));
      v59 = *__error();
      v60 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v64 = (v11 + 120);
        if (*(v11 + 143) < 0)
        {
          v64 = *v64;
        }

        if ((a7->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = a7;
        }

        else
        {
          v65 = a7->__r_.__value_.__r.__words[0];
        }

        v66 = kVectorIndexError[v76];
        *__p = 136316418;
        *&__p[4] = "IVFVectorIndex_s_block_invoke";
        *&__p[12] = 1024;
        *&__p[14] = 4383;
        *&__p[18] = 2080;
        *&__p[20] = v64;
        *&__p[28] = 2080;
        *&__p[30] = v65;
        v78 = 1024;
        v79 = v58;
        v80 = 2080;
        v81 = v66;
        _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, "%s:%d: [%s] %s with %u vectors reset for error: %s", __p, 0x36u);
      }

      *__error() = v59;
      v61 = *(v22 + 32);
      if (v61)
      {
        (*(v61 + 16))(v61, *(v22 + 80), a2, a3, a4, v23, a6, v76, v58);
      }
    }

    else
    {
      *(*(*(v22 + 56) + 8) + 24) = 1;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v41 = v74;
  }

  result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((*(*(v22 + 64) + 8) + 40), v41);
  v63 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN16IVFVectorIndex_sC2EiPKcbbPViP10data_map_sjU13block_pointerFvS1_jt14vec_dimensions15vec_data_formatb20VectorIndexOpenErrorjE_block_invoke_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 56);
  v13 = a4 & 3;
  v14 = a6 | (2 * ((v13 << 50) | ((a5 & 3) << 48) | (a3 << 32) | a2));
  v15 = *(v12 + 152);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v12 + 152;
  do
  {
    v17 = *(v15 + 32);
    v18 = v17 >= v14;
    v19 = v17 < v14;
    if (v18)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * v19);
  }

  while (v15);
  if (v16 == v12 + 152 || v14 < *(v16 + 32))
  {
LABEL_9:
    v20 = *(*(a1 + 40) + 8);
    v21 = v20[6];
    if (v21)
    {
      v22 = vcnt_s8(v21);
      v22.i16[0] = vaddlv_u8(v22);
      if (v22.u32[0] > 1uLL)
      {
        v23 = a6 | (2 * ((v13 << 50) | ((a5 & 3) << 48) | (a3 << 32) | a2));
        if (v14 >= *&v21)
        {
          v23 = v14 % *&v21;
        }
      }

      else
      {
        v23 = (*&v21 + 0x7FFFFFFFFFFFFFFFLL) & v14;
      }

      v24 = *(*&v20[5] + 8 * v23);
      if (v24)
      {
        v25 = *v24;
        if (v25)
        {
          if (v22.u32[0] < 2uLL)
          {
            v26 = *&v21 - 1;
            while (1)
            {
              v28 = v25[1];
              if (v28 == v14)
              {
                if (v25[2] == v14)
                {
                  goto LABEL_58;
                }
              }

              else if ((v28 & v26) != v23)
              {
                goto LABEL_29;
              }

              v25 = *v25;
              if (!v25)
              {
                goto LABEL_29;
              }
            }
          }

          do
          {
            v27 = v25[1];
            if (v27 == v14)
            {
              if (v25[2] == v14)
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (v27 >= *&v21)
              {
                v27 %= *&v21;
              }

              if (v27 != v23)
              {
                break;
              }
            }

            v25 = *v25;
          }

          while (v25);
        }
      }
    }

LABEL_29:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v29 = *(a1 + 64);
    v30 = strlen(v29);
    if (v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v31 = v30;
    if (v30 >= 0x17)
    {
      operator new();
    }

    v47 = v30;
    if (v30)
    {
      memmove(__dst, v29, v30);
    }

    *(__dst + v31) = 0;
    IVFIndexName(&v50, a2, a3, a4, a5, a6);
    if ((v47 & 0x80u) == 0)
    {
      v32 = __dst;
    }

    else
    {
      v32 = __dst[0];
    }

    if ((v47 & 0x80u) == 0)
    {
      v33 = v47;
    }

    else
    {
      v33 = __dst[1];
    }

    v34 = std::string::insert(&v50, 0, v32, v33);
    v35 = v34->__r_.__value_.__r.__words[2];
    *__p = *&v34->__r_.__value_.__l.__data_;
    v49 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v45 = a2;
    if (v47 < 0)
    {
      operator delete(__dst[0]);
    }

    LODWORD(v36) = a3 | 0x80000000;
    if (a6)
    {
      v36 = v36;
    }

    else
    {
      v36 = a3;
    }

    v37 = data_map_drop_vectors(*(v12 + 200), v13 & 0xFFFFFFF3 | (4 * (a5 & 3)), *(a1 + 72) | (v36 << 32));
    v38 = *__error();
    v39 = _SILogForLogForCategory(16);
    v40 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v39, (dword_1EBF46B0C < 3)))
    {
      v41 = (v12 + 120);
      if (*(v12 + 143) < 0)
      {
        v41 = *v41;
      }

      v42 = __p;
      if (v49 < 0)
      {
        v42 = __p[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315906;
      *(v50.__r_.__value_.__r.__words + 4) = v41;
      WORD2(v50.__r_.__value_.__r.__words[1]) = 2080;
      *(&v50.__r_.__value_.__r.__words[1] + 6) = v42;
      HIWORD(v50.__r_.__value_.__r.__words[2]) = 1024;
      v51 = v37;
      v52 = 2080;
      v53 = "Purged";
      _os_log_impl(&dword_1C278D000, v39, v40, "*warn* [%s] %s with %u vectors dropped for error: %s", &v50, 0x26u);
    }

    *__error() = v38;
    v43 = *(a1 + 32);
    if (v43)
    {
      (*(v43 + 16))(v43, *(a1 + 64), v45, a3, a4, a5, a6, 5, v37);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_58:
  v44 = *MEMORY[0x1E69E9840];
}

uint64_t IVFVectorIndex_s::readIndexId(uint64_t **a1)
{
  v16[19] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E5528] + 24;
  v3 = MEMORY[0x1E69E5528] + 64;
  bzero(&v14, 0x238uLL);
  v16[0] = v3;
  v4 = MEMORY[0x1E69E54C8];
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v13 = *(MEMORY[0x1E69E54C8] + 8);
  *(&v13 + *(v13 - 24)) = v5;
  v14 = 0;
  v6 = (&v13 + *(v13 - 24));
  std::ios_base::init(v6, v15);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v13 = v2;
  v16[0] = v3;
  MEMORY[0x1C691FB90](v15);
  std::ifstream::open();
  if (v15[15])
  {
    *v12 = -1;
    std::istream::read();
  }

  v7 = *__error();
  v8 = _SILogForLogForCategory(16);
  v9 = dword_1EBF46B0C < 3;
  if (os_log_type_enabled(v8, (dword_1EBF46B0C < 3)))
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    *v12 = 136315138;
    *&v12[4] = a1;
    _os_log_impl(&dword_1C278D000, v8, v9, "*warn* metaFile %s not valid", v12, 0xCu);
  }

  *__error() = v7;
  v13 = *v4;
  *(&v13 + *(v13 - 24)) = v4[3];
  MEMORY[0x1C691FBA0](v15);
  std::istream::~istream();
  MEMORY[0x1C691FE80](v16);
  v10 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void *IVFVectorIndex_s::flush(void *this, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = this[18];
  v3 = this + 19;
  if (v2 != this + 19)
  {
    v5 = this;
    v6 = this + 15;
    do
    {
      v7 = v2[5];
      v8 = *__error();
      v9 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v6;
        if (*(v5 + 143) < 0)
        {
          v10 = *v6;
        }

        (*(*v7 + 312))(__p, v7, v5 + 96);
        v11 = __p;
        if (v17 < 0)
        {
          v11 = __p[0];
        }

        *buf = 136315394;
        v19 = v10;
        v20 = 2080;
        v21 = v11;
        _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "[%s] flush %s", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v8;
      this = (*(*v7 + 136))(v7, a2);
      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v14 = *v13 == v2;
          v2 = v13;
        }

        while (!v14);
      }

      v2 = v13;
    }

    while (v13 != v3);
  }

  v15 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t shadowVectorIndex(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(result + 152);
  v4 = (result + 160);
  if (v3 != (result + 160))
  {
    v7 = result;
    v8 = (result + 128);
    do
    {
      v9 = v3[5];
      v10 = *__error();
      v11 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v8;
        if (*(v7 + 151) < 0)
        {
          v12 = *v8;
        }

        (*(*v9 + 312))(__p, v9, v7 + 104);
        v13 = __p;
        if (v19 < 0)
        {
          v13 = __p[0];
        }

        *buf = 136315394;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "[%s] shadow %s", buf, 0x16u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v10;
      result = (*(*v9 + 48))(v9, a2, a3);
      v14 = v3[1];
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
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v4);
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void compactVectorIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, _DWORD *a6)
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = _SILogForLogForCategory(0);
  v11 = os_signpost_id_make_with_pointer(v10, 0);
  v12 = _SILogForLogForCategory(0);
  spid = v11;
  v13 = v11 - 1;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v12;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "compactVectorIndex", "Start", buf, 2u);
    }
  }

  v62 = *a5;
  v63 = a5[1];
  if (__THREAD_SLOT_KEY)
  {
    v15 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v15)
    {
LABEL_87:
      makeThreadId();
      v15 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_7;
    }
  }

  else
  {
    makeThreadId();
    v15 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v15)
    {
      goto LABEL_87;
    }
  }

  if (v15 >= 0x801)
  {
    goto LABEL_87;
  }

LABEL_7:
  v16 = 0;
  v58 = v13;
  if (v15 && v15 <= 0x800)
  {
    v17 = &threadData[9 * v15];
    v16 = *(v17 - 11);
    *(v17 - 11) = 1;
  }

  v56 = v16;
  v18 = *(a1 + 152);
  v19 = (a1 + 160);
  if (v18 != (a1 + 160))
  {
    v20 = (a2 + 160);
    v59 = a3;
    do
    {
      v21 = v18[5];
      v23 = *(v21 + 12);
      v22 = *(v21 + 16);
      v24 = 1;
      if (v23 != 512)
      {
        v24 = 3;
      }

      if (v23 == 768)
      {
        v24 = 2;
      }

      if (v23 == 256)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      if (v22 == 2)
      {
        v26 = 1;
      }

      else
      {
        v26 = 3;
      }

      if (v22 == 4)
      {
        v26 = 0;
      }

      v27 = *v20;
      if (!*v20)
      {
        goto LABEL_33;
      }

      v28 = *(v21 + 8);
      v29 = *(v21 + 20);
      v30 = *(v21 + 22);
      v31 = v30 | (2 * ((v25 << 50) | (v26 << 48) | (v29 << 32) | v28));
      v32 = v20;
      do
      {
        v33 = v27[4];
        v34 = v33 >= v31;
        v35 = v33 < v31;
        if (v34)
        {
          v32 = v27;
        }

        v27 = v27[v35];
      }

      while (v27);
      if (v32 != v20 && v31 >= v32[4])
      {
        v36 = v32[5];
        if (*(v36 + 8) != v28 || *(v36 + 20) != v29 || (v22 != 2 ? (v47 = v22 == 4) : (v47 = 1), !v47 || *(v36 + 12) != vector_dimension_vec_sizes_15424[v25] || vector_size_elem_sizes_15423[v26] != *(v36 + 16) || *(v36 + 22) != v30))
        {
          v53 = __si_assert_copy_extra_332();
          v54 = v53;
          v55 = "";
          if (v53)
          {
            v55 = v53;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4211, "it->second->isCompatible(propertyId, vecVersion, dim, form, purgeable)", v55);
          free(v54);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v37 = v32[6];
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
LABEL_33:
        v36 = 0;
        v37 = 0;
      }

      v38 = *__error();
      v39 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = a4;
        v41 = a6;
        v42 = a1 + 128;
        if (*(a1 + 151) < 0)
        {
          v42 = *(a1 + 128);
        }

        (*(*v21 + 312))(v66, v21, a1 + 104);
        if (v67 >= 0)
        {
          v43 = v66;
        }

        else
        {
          v43 = v66[0];
        }

        (*(*v36 + 312))(v64, v36, a2 + 104);
        v44 = v64;
        if (v65 < 0)
        {
          v44 = v64[0];
        }

        *buf = 136315650;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = v43;
        *&buf[22] = 2080;
        *&buf[24] = v44;
        _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "[%s] compact %s -> %s", buf, 0x20u);
        if (v65 < 0)
        {
          operator delete(v64[0]);
        }

        a6 = v41;
        a4 = v40;
        v20 = (a2 + 160);
        if (v67 < 0)
        {
          operator delete(v66[0]);
        }

        v19 = (a1 + 160);
        a3 = v59;
      }

      else
      {
        v20 = (a2 + 160);
      }

      *__error() = v38;
      *buf = v62;
      *&buf[16] = v63;
      (*(*v21 + 144))(v21, v36, a3, a4, buf, a6);
      if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37);
        std::__shared_weak_count::__release_weak(v37);
        v45 = v18[1];
        if (!v45)
        {
          do
          {
LABEL_54:
            v46 = v18[2];
            v47 = *v46 == v18;
            v18 = v46;
          }

          while (!v47);
          goto LABEL_12;
        }
      }

      else
      {
        v45 = v18[1];
        if (!v45)
        {
          goto LABEL_54;
        }
      }

      do
      {
        v46 = v45;
        v45 = *v45;
      }

      while (v45);
LABEL_12:
      v18 = v46;
    }

    while (v46 != v19);
  }

  v48 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v48 = __THREAD_SLOT_KEY;
  }

  v49 = pthread_getspecific(v48);
  if (v49 && v49 < 0x801 || (makeThreadId(), (v49 = pthread_getspecific(__THREAD_SLOT_KEY)) != 0))
  {
    if (v49 <= 0x800)
    {
      *(&threadData[9 * v49 - 5] - 1) = v56;
    }
  }

  if (!*a6)
  {
    IVFVectorIndex_s::flush((a2 + 8), 0);
    IVFVectorIndex_s::makeReadOnly((a2 + 8));
  }

  v50 = _SILogForLogForCategory(0);
  if (v58 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v51 = v50;
    if (os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v51, OS_SIGNPOST_INTERVAL_END, spid, "compactVectorIndex", "End", buf, 2u);
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

_DWORD *IVFVectorIndex_s::makeReadOnly(IVFVectorIndex_s *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (this + 120);
    if (*(this + 143) < 0)
    {
      v4 = *v4;
    }

    v5 = (this + 96);
    if (*(this + 119) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = v4;
    v18 = 2080;
    v19 = v5;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "[%s] makeReadOnly %s", buf, 0x16u);
  }

  result = __error();
  *result = v2;
  v7 = *(this + 18);
  if (v7 != (this + 152))
  {
    do
    {
      v8 = *(v7 + 5);
      v9 = *__error();
      v10 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = this + 120;
        if (*(this + 143) < 0)
        {
          v11 = *(this + 15);
        }

        (*(*v8 + 312))(buf, v8, this + 96);
        v12 = buf;
        if (v20 < 0)
        {
          v12 = *buf;
        }

        *v21 = 136315394;
        v22 = v11;
        v23 = 2080;
        v24 = v12;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "[%s] makeReadOnly %s", v21, 0x16u);
        if (v20 < 0)
        {
          operator delete(*buf);
        }
      }

      *__error() = v9;
      result = (*(*v8 + 184))(v8);
      if (v8[22] == 1)
      {
        result = (*(*v8 + 192))(v8);
      }

      v13 = *(v7 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v7 + 2);
          v15 = *v14 == v7;
          v7 = v14;
        }

        while (!v15);
      }

      v7 = v14;
    }

    while (v14 != (this + 152));
  }

  if ((*(this + 4) & 1) == 0)
  {
    result = IVFVectorIndex_s::appendMetaKey(this, 0);
    *(this + 4) = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void subvertVectorIndex(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (__THREAD_SLOT_KEY)
  {
    v4 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v4)
    {
      goto LABEL_163;
    }
  }

  else
  {
    makeThreadId();
    v4 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v4)
    {
      goto LABEL_163;
    }
  }

  if (v4 < 0x801)
  {
    v5 = 0;
LABEL_5:
    if (v4 <= 0x800)
    {
      v6 = &threadData[9 * v4];
      v5 = *(v6 - 11);
      *(v6 - 11) = 1;
    }

LABEL_7:
    v70 = v5;
    *v76 = 0u;
    *v77 = 0u;
    v78 = 1065353216;
    v7 = *(a2 + 152);
    if (v7 != (a2 + 160))
    {
      v71 = (a2 + 128);
      do
      {
        v8 = v7[5];
        v9 = *(v8 + 3);
        switch(v9)
        {
          case 256:
            v10 = 0;
            break;
          case 768:
            v10 = 2;
            break;
          case 512:
            v10 = 1;
            break;
          default:
            v10 = 3;
            break;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 10);
        v13 = *(v8 + 4);
        if (v13 == 2)
        {
          v14 = 1;
        }

        else
        {
          v14 = 3;
        }

        if (v13 == 4)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v16 = *(v8 + 22);
        v74 = 0;
        v75 = 0;
        IVFVectorIndex_s::getVectorIndex(&v74, a1 + 8, v11, v12, v10, v15, v16);
        v17 = v74;
        if (!v74)
        {
          memset(&v73, 0, sizeof(v73));
          if (*(a1 + 127) >= 0)
          {
            v24 = *(a1 + 127);
          }

          else
          {
            v24 = *(a1 + 112);
          }

          if (*(v8 + 47) >= 0)
          {
            v25 = *(v8 + 47);
          }

          else
          {
            v25 = v8[4];
          }

          if (v25 + v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          if (v25 + v24 > 0x16)
          {
            operator new();
          }

          *(&v73.__r_.__value_.__s + 23) = v25 + v24;
          if (v24)
          {
            if (*(a1 + 127) >= 0)
            {
              v30 = (a1 + 104);
            }

            else
            {
              v30 = *(a1 + 104);
            }

            memmove(&v73, v30, v24);
          }

          v31 = &v73 + v24;
          if (v25)
          {
            if (*(v8 + 47) >= 0)
            {
              v32 = v8 + 3;
            }

            else
            {
              v32 = v8[3];
            }

            memmove(v31, v32, v25);
          }

          v31[v25] = 0;
          v33 = *__error();
          v34 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = a2 + 128;
            if (*(a2 + 151) < 0)
            {
              v35 = *v71;
            }

            (*(*v8 + 312))(&__p, v8, a2 + 104);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v37 = &v73;
            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v37 = v73.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = v35;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a2 + 8;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v80 = p_p;
            v81 = 2080;
            v82 = v37;
            _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "[%s] subvert %p %s -> %s (renamed)", &buf, 0x2Au);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          *__error() = v33;
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v73;
          }

          else
          {
            v38 = v73.__r_.__value_.__r.__words[0];
          }

          (*(*v8 + 200))(v8, v38);
          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          goto LABEL_90;
        }

        v18 = 0x9DDFEA08EB382D69 * ((8 * (v74 & 0x1FFFFFFF) + 8) ^ HIDWORD(v74));
        v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v18 >> 47) ^ v18);
        v20 = v19 ^ (v19 >> 47);
        v21 = 0x9DDFEA08EB382D69 * v20;
        if (!v76[1])
        {
          goto LABEL_54;
        }

        v22 = vcnt_s8(v76[1]);
        v22.i16[0] = vaddlv_u8(v22);
        if (v22.u32[0] > 1uLL)
        {
          v23 = 0x9DDFEA08EB382D69 * v20;
          if (v21 >= v76[1])
          {
            v23 = v21 % v76[1];
          }
        }

        else
        {
          v23 = v21 & (v76[1] - 1);
        }

        v26 = *(v76[0] + v23);
        if (!v26 || (v27 = *v26) == 0)
        {
LABEL_54:
          operator new();
        }

        if (v22.u32[0] < 2uLL)
        {
          while (1)
          {
            v29 = v27[1];
            if (v29 == v21)
            {
              if (v27[2] == v74)
              {
                goto LABEL_79;
              }
            }

            else if ((v29 & (v76[1] - 1)) != v23)
            {
              goto LABEL_54;
            }

            v27 = *v27;
            if (!v27)
            {
              goto LABEL_54;
            }
          }
        }

        while (1)
        {
          v28 = v27[1];
          if (v28 == v21)
          {
            break;
          }

          if (v28 >= v76[1])
          {
            v28 %= v76[1];
          }

          if (v28 != v23)
          {
            goto LABEL_54;
          }

LABEL_44:
          v27 = *v27;
          if (!v27)
          {
            goto LABEL_54;
          }
        }

        if (v27[2] != v74)
        {
          goto LABEL_44;
        }

LABEL_79:
        v39 = *__error();
        v40 = _SILogForLogForCategory(16);
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_89;
        }

        v41 = a2 + 128;
        if (*(a2 + 151) < 0)
        {
          v41 = *v71;
        }

        (*(*v8 + 312))(&v73, v8, a2 + 104);
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v73;
        }

        else
        {
          v42 = v73.__r_.__value_.__r.__words[0];
        }

        (*(*v17 + 312))(&__p, v17, a1 + 104);
        v43 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v43 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = v41;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = a2 + 8;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v80 = v42;
        v81 = 2080;
        v82 = v43;
        _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "[%s] subvert %p %s -> %s", &buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_89;
          }

LABEL_100:
          operator delete(v73.__r_.__value_.__l.__data_);
        }

LABEL_89:
        *__error() = v39;
        (*(*v8 + 160))(v8, v17);
LABEL_90:
        v44 = v75;
        if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
          v45 = v7[1];
          if (v45)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v45 = v7[1];
          if (v45)
          {
            do
            {
LABEL_93:
              v46 = v45;
              v45 = *v45;
            }

            while (v45);
            goto LABEL_9;
          }
        }

        do
        {
          v46 = v7[2];
          v47 = *v46 == v7;
          v7 = v46;
        }

        while (!v47);
LABEL_9:
        v7 = v46;
      }

      while (v46 != (a2 + 160));
    }

    v48 = *(a1 + 152);
    if (v48 != (a1 + 160))
    {
      do
      {
        v50 = v48[5];
        if (v76[1])
        {
          v51 = 0x9DDFEA08EB382D69 * ((8 * (v48[5] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(v48[5]));
          v52 = 0x9DDFEA08EB382D69 * (HIDWORD(v50) ^ (v51 >> 47) ^ v51);
          v53 = 0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47));
          v54 = vcnt_s8(v76[1]);
          v54.i16[0] = vaddlv_u8(v54);
          if (v54.u32[0] > 1uLL)
          {
            v55 = v53;
            if (v53 >= v76[1])
            {
              v55 = v53 % v76[1];
            }
          }

          else
          {
            v55 = v53 & (v76[1] - 1);
          }

          v56 = *(v76[0] + v55);
          if (v56)
          {
            v57 = *v56;
            if (v57)
            {
              if (v54.u32[0] < 2uLL)
              {
                while (1)
                {
                  v59 = v57[1];
                  if (v59 == v53)
                  {
                    if (v57[2] == v50)
                    {
                      goto LABEL_126;
                    }
                  }

                  else if ((v59 & (v76[1] - 1)) != v55)
                  {
                    goto LABEL_125;
                  }

                  v57 = *v57;
                  if (!v57)
                  {
                    goto LABEL_125;
                  }
                }
              }

              do
              {
                v58 = v57[1];
                if (v58 == v53)
                {
                  if (v57[2] == v50)
                  {
                    goto LABEL_126;
                  }
                }

                else
                {
                  if (v58 >= v76[1])
                  {
                    v58 %= v76[1];
                  }

                  if (v58 != v55)
                  {
                    break;
                  }
                }

                v57 = *v57;
              }

              while (v57);
            }
          }
        }

LABEL_125:
        (*(*v50 + 168))(v50);
LABEL_126:
        v60 = v48[1];
        if (v60)
        {
          do
          {
            v61 = v60;
            v60 = *v60;
          }

          while (v60);
        }

        else
        {
          do
          {
            v61 = v48[2];
            v47 = *v61 == v48;
            v48 = v61;
          }

          while (!v47);
        }

        v48 = v61;
      }

      while (v61 != (a1 + 160));
    }

    v49 = *(a2 + 8);
    if (*(a2 + 127) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(a2 + 104), *(a2 + 112));
    }

    else
    {
      buf = *(a2 + 104);
    }

    IVFVectorIndex_s::metaFilename(&v73, a2 + 80, &buf.__r_.__value_.__l.__data_);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v73;
    }

    else
    {
      v62 = v73.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 127) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(a1 + 104), *(a1 + 112));
    }

    else
    {
      buf = *(a1 + 104);
    }

    IVFVectorIndex_s::metaFilename(&__p, a1 + 80, &buf.__r_.__value_.__l.__data_);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &__p;
    }

    else
    {
      v64 = __p.__r_.__value_.__r.__words[0];
    }

    IVFVectorIndex_s::rename(v49, v62, v64, v63);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    std::string::operator=((a2 + 104), (a1 + 104));
    v65 = v77[0];
    if (v77[0])
    {
      do
      {
        v66 = *v65;
        operator delete(v65);
        v65 = v66;
      }

      while (v66);
    }

    v67 = v76[0];
    v76[0] = 0;
    if (v67)
    {
      operator delete(v67);
    }

    if (__THREAD_SLOT_KEY)
    {
      v68 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v68)
      {
        goto LABEL_166;
      }
    }

    else
    {
      makeThreadId();
      v68 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v68)
      {
        goto LABEL_166;
      }
    }

    if (v68 < 0x801)
    {
LABEL_157:
      if (v68 <= 0x800)
      {
        *(&threadData[9 * v68 - 5] - 1) = v70;
      }

LABEL_159:
      IVFVectorIndex_s::~IVFVectorIndex_s((a1 + 8));
      v69 = *MEMORY[0x1E69E9840];

      JUMPOUT(0x1C691FEF0);
    }

LABEL_166:
    makeThreadId();
    v68 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v68)
    {
      goto LABEL_159;
    }

    goto LABEL_157;
  }

LABEL_163:
  makeThreadId();
  v4 = pthread_getspecific(__THREAD_SLOT_KEY);
  v5 = 0;
  if (!v4)
  {
    goto LABEL_7;
  }

  goto LABEL_5;
}

void *IVFVectorIndex_s::getVectorIndex(void *result, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v9 = *(a2 + 152);
  v7 = (a2 + 152);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = a7 | (2 * (((a5 & 3) << 50) | ((a6 & 3) << 48) | (a4 << 32) | a3));
  v11 = v7;
  do
  {
    v12 = v8[4];
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v8;
    }

    v8 = v8[v14];
  }

  while (v8);
  if (v11 != v7 && v10 >= v11[4])
  {
    v15 = v11[5];
    if (*(v15 + 8) != a3 || *(v15 + 20) != a4 || a6 > 2 || *(v15 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(v15 + 16) || *(v15 + 22) != a7)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4203, "it->second->isCompatible(propertyId, vecVersion, dim, form, purgeable)", v19);
      free(v18);
      if (__valid_fs(-1))
      {
        v20 = 2989;
      }

      else
      {
        v20 = 3072;
      }

      *v20 = -559038737;
      abort();
    }

    v16 = v11[6];
    *result = v15;
    result[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void IVFVectorIndex_s::rename(IVFVectorIndex_s *this, const char *a2, const char *a3, const char *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = fd_create_protected(this, a2, 0, 0);
  if (v6)
  {
    v7 = v6;
    if (fd_rename(v6, a3))
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315906;
        v14 = "rename";
        v15 = 1024;
        v16 = 4032;
        v17 = 2080;
        v18 = a2;
        v19 = 2080;
        v20 = a3;
        _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Failed to rename %s to %s", &v13, 0x26u);
      }

      *__error() = v8;
    }

    fd_release(v7);
  }

  else
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "rename";
      v15 = 1024;
      v16 = 4039;
      v17 = 2080;
      v18 = a2;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Failed to rename %s", &v13, 0x1Cu);
    }

    *__error() = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t vectorIndexInsertForMerge(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, int a11)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v28 = __si_assert_copy_extra_332();
    v29 = v28;
    v30 = "";
    if (v28)
    {
      v30 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndex.cpp", 237, "vectorId > 0", v30);
LABEL_29:
    free(v29);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (a1[12] == 1)
  {
    v20 = *__error();
    v21 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = a1 + 128;
      if (a1[151] < 0)
      {
        v26 = *v26;
      }

      v27 = a1 + 104;
      if (a1[127] < 0)
      {
        v27 = *v27;
      }

      *buf = 136315906;
      v43 = "insertForMerge";
      v44 = 1024;
      *v45 = 4487;
      *&v45[4] = 2080;
      *&v45[6] = v26;
      v46 = 2080;
      v47 = v27;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: [%s] insertForMerge readonly %s", buf, 0x26u);
    }

    *__error() = v20;
    if (a1[12] == 1)
    {
      v34 = __si_assert_copy_extra_332();
      v29 = v34;
      v35 = "";
      if (v34)
      {
        v35 = v34;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4488, "!fReadOnly", v35);
      goto LABEL_29;
    }
  }

  v40 = 0;
  v41 = 0;
  IVFVectorIndex_s::getOrCreateVectorIndex(&v40, (a1 + 8), a2, a3, a7, a8, a4);
  if (dword_1EBF46B0C >= 5)
  {
    v37 = *__error();
    v31 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = a1 + 128;
      if (a1[151] < 0)
      {
        v32 = *v32;
      }

      v36 = v32;
      (*(*v40 + 312))(__p);
      v33 = __p;
      if (v39 < 0)
      {
        v33 = __p[0];
      }

      *buf = 136315650;
      v43 = v36;
      v44 = 2080;
      *v45 = v33;
      *&v45[8] = 1024;
      *&v45[10] = a11;
      _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "[%s] insertForMerge %s partID=%u", buf, 0x1Cu);
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *__error() = v37;
  }

  result = (*(*v40 + 72))(v40, a2, a3, a5, a6, a7, a8, a10, a9, a11);
  v23 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = result;
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    result = v24;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t vectorIndexStartMerge(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (__THREAD_SLOT_KEY)
  {
    v4 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    makeThreadId();
    v4 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v4)
    {
LABEL_30:
      makeThreadId();
      v4 = pthread_getspecific(__THREAD_SLOT_KEY);
      v5 = 0;
      if (!v4)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v4 >= 0x801)
  {
    goto LABEL_30;
  }

  v5 = 0;
LABEL_5:
  if (v4 <= 0x800)
  {
    v6 = &threadData[9 * v4];
    v5 = *(v6 - 11);
    *(v6 - 11) = 1;
  }

LABEL_7:
  v7 = *__error();
  v8 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v9 = *v9;
    }

    IVFVectorIndex_s::name(__p, a1 + 8);
    if (SBYTE3(v25) >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = *__p;
    }

    *buf = 136315394;
    v29 = v9;
    v30 = 2080;
    v31 = v10;
    _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "[%s] startMerge %s", buf, 0x16u);
    if (SBYTE3(v25) < 0)
    {
      operator delete(*__p);
    }
  }

  *__error() = v7;
  if (*(a1 + 12) == 1)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v16 = *v16;
      }

      v17 = (a1 + 104);
      if (*(a1 + 127) < 0)
      {
        v17 = *v17;
      }

      *__p = 136315906;
      *&__p[4] = "startMerge";
      v22 = 1024;
      v23 = 4497;
      v24 = 2080;
      v25 = v16;
      v26 = 2080;
      v27 = v17;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: [%s] startMerge readonly %s", __p, 0x26u);
    }

    *__error() = v11;
    if (*(a1 + 12) == 1)
    {
      v18 = __si_assert_copy_extra_332();
      v19 = v18;
      v20 = "";
      if (v18)
      {
        v20 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4498, "!fReadOnly", v20);
      free(v19);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  started = data_map_start_offset_rewrite(*(a1 + 208), a2);
  *(a1 + 200) = started;
  *(a1 + 176) = started;
  if (__THREAD_SLOT_KEY)
  {
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
      goto LABEL_33;
    }
  }

  else
  {
    makeThreadId();
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
LABEL_33:
      makeThreadId();
      result = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!result)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  if (result >= 0x801)
  {
    goto LABEL_33;
  }

LABEL_21:
  if (result <= 0x800)
  {
    *(&threadData[9 * result - 5] - 1) = v5;
  }

LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t vectorIndexEndMerge(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (__THREAD_SLOT_KEY)
  {
    v2 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    makeThreadId();
    v2 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v2)
    {
LABEL_24:
      makeThreadId();
      v2 = pthread_getspecific(__THREAD_SLOT_KEY);
      v3 = 0;
      if (!v2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v2 >= 0x801)
  {
    goto LABEL_24;
  }

  v3 = 0;
LABEL_5:
  if (v2 <= 0x800)
  {
    v4 = &threadData[9 * v2];
    v3 = *(v4 - 11);
    *(v4 - 11) = 1;
  }

LABEL_7:
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v7 = *v7;
    }

    IVFVectorIndex_s::name(&__p, a1 + 8);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = p_p;
    _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "[%s] endMerge %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *__error() = v5;
  v9 = *(a1 + 208);
  if (v9)
  {
    data_map_end_offset_rewrite(v9);
    *(a1 + 200) = 0;
  }

  *(a1 + 176) = 0;
  if (__THREAD_SLOT_KEY)
  {
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    makeThreadId();
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
LABEL_27:
      makeThreadId();
      result = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!result)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  if (result >= 0x801)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (result <= 0x800)
  {
    *(&threadData[9 * result - 5] - 1) = v3;
  }

LABEL_22:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t vectorIndexCancelMerge(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (__THREAD_SLOT_KEY)
  {
    v2 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    makeThreadId();
    v2 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v2)
    {
LABEL_24:
      makeThreadId();
      v2 = pthread_getspecific(__THREAD_SLOT_KEY);
      v3 = 0;
      if (!v2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v2 >= 0x801)
  {
    goto LABEL_24;
  }

  v3 = 0;
LABEL_5:
  if (v2 <= 0x800)
  {
    v4 = &threadData[9 * v2];
    v3 = *(v4 - 11);
    *(v4 - 11) = 1;
  }

LABEL_7:
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v7 = *v7;
    }

    IVFVectorIndex_s::name(&__p, a1 + 8);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = p_p;
    _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "[%s] cancelMerge %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *__error() = v5;
  v9 = *(a1 + 208);
  if (v9)
  {
    data_map_cancel_offset_rewrite(v9);
    *(a1 + 200) = 0;
  }

  *(a1 + 176) = 0;
  if (__THREAD_SLOT_KEY)
  {
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    makeThreadId();
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
LABEL_27:
      makeThreadId();
      result = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!result)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  if (result >= 0x801)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (result <= 0x800)
  {
    *(&threadData[9 * result - 5] - 1) = v3;
  }

LABEL_22:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *IVFVectorIndexUpdateSet::getOrCreateVectorIndex(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v12 = a7 | (2 * (((a5 & 3) << 50) | ((a6 & 3) << 48) | (a4 << 32) | a3));
  v13 = *(a2 + 8);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = (a2 + 8);
  do
  {
    v15 = v13[4];
    v16 = v15 >= v12;
    v17 = v15 < v12;
    if (v16)
    {
      v14 = v13;
    }

    v13 = v13[v17];
  }

  while (v13);
  if (v14 == (a2 + 8) || v12 < v14[4])
  {
LABEL_9:
    malloc_default_zone();
    v24 = *(a2 + 24);
    v25 = *(a2 + 40);
    IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::createVectorIndexInstance(a3, a4, a5, a6);
  }

  v18 = v14[5];
  if (*(v18 + 8) != a3 || *(v18 + 20) != a4 || a6 > 2 || *(v18 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(v18 + 16) || *(v18 + 22) != a7)
  {
    v20 = __si_assert_copy_extra_332();
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3814, "it->second->isCompatible(propertyId, vecVersion, dim, form, purgeable)", v22);
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  v19 = v14[6];
  *result = v18;
  result[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::createVectorIndexInstance(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      switch(a3)
      {
        case 2:
          operator new();
        case 1:
          operator new();
        case 0:
          operator new();
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  v4 = __si_assert_copy_extra_332();
  v5 = v4;
  v6 = "";
  if (v4)
  {
    v6 = v4;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3748, "false", v6);
  free(v5);
  if (__valid_fs(-1))
  {
    v7 = 2989;
  }

  else
  {
    v7 = 3072;
  }

  *v7 = -559038737;
  abort();
}

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>,std::allocator<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    malloc_zone_free(*v2, *(v2 + 8));

    JUMPOUT(0x1C691FEF0);
  }
}

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>,std::allocator<IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427F930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::replaceQuantizer(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_lock((a1 + 96));
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v10 = (*(**a2 + 24))();
  v11 = *a3;
  if (v10 != *(*a3 + 68))
  {
    v28 = __si_assert_copy_extra_332();
    v29 = v28;
    v30 = "";
    if (v28)
    {
      v30 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2559, "newQuantizer->count() == newPartitions->nPartitions()", v30);
    free(v29);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(*(a1 + 32) + 24) != v11[18])
  {
    v31 = __si_assert_copy_extra_332();
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2560, "vectors->count() == newPartitions->nVectors()", v33);
    free(v32);
    if (__valid_fs(-1))
    {
      v34 = 2989;
    }

    else
    {
      v34 = 3072;
    }

    *v34 = -559038737;
    abort();
  }

  if (v7 && v9)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v7 + 8;
      if (v7[31] < 0)
      {
        v14 = *v14;
      }

      v40 = v14;
      v15 = (*(*v7 + 16))(v7);
      v16 = (*a2 + 8);
      v37 = v15;
      v38 = v12;
      if (*(*a2 + 31) < 0)
      {
        v16 = *v16;
      }

      v39 = v16;
      v36 = (*(**a2 + 16))(*a2);
      v17 = v46;
      (*(*v9 + 152))(v46, v9);
      if (v47 < 0)
      {
        v17 = v46[0];
      }

      v18 = v9[18];
      v35 = v9[17];
      (*(**a3 + 152))(__p);
      v19 = __p;
      if (v45 < 0)
      {
        v19 = __p[0];
      }

      v20 = *(*a3 + 68);
      v21 = *(*a3 + 72);
      *buf = 136317442;
      v49 = v40;
      v50 = 1024;
      v51 = v37;
      v52 = 2080;
      v53 = v39;
      v54 = 1024;
      v55 = v36;
      v56 = 2080;
      v57 = v17;
      v58 = 1024;
      v59 = v18;
      v60 = 1024;
      v61 = v35;
      v62 = 2080;
      v63 = v19;
      v64 = 1024;
      v65 = v21;
      v66 = 1024;
      v67 = v20;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Replace quantizer %s(%u) -> %s(%u), partitions %s(%u/%u) -> %s(%u/%u)", buf, 0x4Eu);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v38;
      if (v47 < 0)
      {
        operator delete(v46[0]);
      }
    }

    *__error() = v12;
    v11 = *a3;
  }

  if ((*(*v11 + 24))(v11))
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22 && (*(*v9 + 24))(v9))
  {
    (*(**a3 + 176))(*a3, v9);
  }

  v23 = a2[1];
  *&v41 = *a2;
  *(&v41 + 1) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a3[1];
  v42 = *a3;
  v43 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 96));
  _ZNSt3__14swapB8nn200100IN22IVFVectorIndexTemplateIDF16_Li256EE19QuantizerPartitionsEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_((a1 + 64), &v41);
  os_unfair_lock_unlock((a1 + 96));
  v25 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  os_unfair_lock_unlock((a1 + 136));
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::newPartitions(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v5 = ".partitions";
  if (v4 && (*(*v4 + 24))(v4))
  {
    v5 = ".tmp.partitions";
  }

  v6 = strlen(v5);
  if (v6 < 0x7FFFFFFFFFFFFFF8)
  {
    v7 = v6;
    if (v6 < 0x17)
    {
      v9 = v6;
      if (v6)
      {
        memcpy(&__dst, v5, v6);
      }

      *(&__dst + v7) = 0;
      malloc_default_zone();
      if (v9 < 0)
      {
        operator delete(__dst);
      }

      operator new();
    }

    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionStore<vi_onefixedsize_memory_allocator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = AnyPartitionStore::AnyPartitionStore(a1, a4);
  *v6 = &unk_1F427DEE0;
  *(v6 + 80) = 0;
  *(v6 + 88) = -1;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 96) = 0;
  std::to_string(&v11, *(v6 + 76));
  v7 = std::string::insert(&v11, 0, "<memory>(");
  v8 = v7->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v12, ")");
  v10 = v9->__r_.__value_.__r.__words[2];
  *(a1 + 120) = *&v9->__r_.__value_.__l.__data_;
  *(a1 + 136) = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
LABEL_3:
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  (*(**a4 + 24))();
  operator new();
}

int *___ZNK22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIfLi768EEEE_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (*(v3 + 24))
  {
    v4 = 0;
    do
    {
      memset(__p, 0, sizeof(__p));
      v5 = *(a1 + 40);
      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v3 + 16), v4, 3092);
      (*(*v5 + 80))(__p, v5, Ptr, 1);
      (*(**(a1 + 56) + 56))(*(a1 + 56), *__p[0], v4, *(__p[0] + 1));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v4;
      v3 = *(v2 + 32);
    }

    while (v4 < *(v3 + 24));
  }

  result = (*(**(a1 + 56) + 112))(*(a1 + 56), 0);
  v8 = *(*(v2 + 32) + 24);
  if (v8)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(**(a1 + 56) + 152))(v22);
      if (v23 >= 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = v22[0];
      }

      v12 = *(a1 + 56);
      v13 = *(v12 + 68);
      v14 = *(v12 + 72);
      v15 = *(a1 + 40);
      v16 = v15 + 8;
      if (v15[31] < 0)
      {
        v16 = *v16;
      }

      v17 = (*(*v15 + 16))(v15);
      LODWORD(__p[0]) = 136316162;
      *(__p + 4) = v11;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v14;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v13;
      v25 = 2080;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Create new partitions %s(%u/%u) for new quantizer %s(%u)", __p, 0x28u);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    result = __error();
    *result = v9;
    v8 = *(*(v2 + 32) + 24);
  }

  if (*(*(a1 + 56) + 72) != v8)
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2538, "newPartitions->nVectors() == vectors->count()", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__shared_ptr_pointer<PartitionStore<vi_onefixedsize_memory_allocator,512> *,std::shared_ptr<AnyPartitionStore>::__shared_ptr_default_delete<AnyPartitionStore,PartitionStore<vi_onefixedsize_memory_allocator,512>>,std::allocator<PartitionStore<vi_onefixedsize_memory_allocator,512>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<PartitionStore<vi_onefixedsize_memory_allocator,512> *,std::shared_ptr<AnyPartitionStore>::__shared_ptr_default_delete<AnyPartitionStore,PartitionStore<vi_onefixedsize_memory_allocator,512>>,std::allocator<PartitionStore<vi_onefixedsize_memory_allocator,512>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::subvert(uint64_t a1, uint64_t a2)
{
  if (((*(*a2 + 24))(a2) & 1) == 0)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1645, "old->isPersistent()", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return 1;
}

void PartitionStore<vi_onefixedsize_memory_allocator,512>::name(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 120);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 136);
  }
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::dump(uint64_t a1, void *a2, int a3)
{
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Quantizer ", 10);
  v6 = *(a1 + 8);
  if (!v6)
  {
    v83 = __si_assert_copy_extra_332();
    v84 = v83;
    v85 = "";
    if (v83)
    {
      v85 = v83;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 908, "_quantizer != nullptr", v85);
    free(v84);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v9 = *(v6 + 8);
  v7 = v6 + 8;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v11, v12);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " , ", 3);
  v15 = MEMORY[0x1C691FC90](v14, *(a1 + 72));
  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " vectors in ", 12);
  v17 = MEMORY[0x1C691FC90](v16, *(a1 + 68));
  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " partitions:", 12);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(v88, MEMORY[0x1E69E5318]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(v88);
  std::ostream::put();
  result = std::ostream::flush();
  if (a3 >= 3)
  {
    if (!*(a1 + 68))
    {
LABEL_13:
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v30 = std::locale::use_facet(v88, MEMORY[0x1E69E5318]);
      (v30->__vftable[2].~facet_0)(v30, 10);
      std::locale::~locale(v88);
      std::ostream::put();
      return std::ostream::flush();
    }

    if (a3 == 3)
    {
      v21 = 0;
      v22 = MEMORY[0x1E69E5318];
      do
      {
        v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "partition ", 10);
        v24 = MEMORY[0x1C691FC90](v23, v21);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, " (", 2);
        v25 = (*(*a1 + 48))(a1, v21);
        v26 = MEMORY[0x1C691FC90](v24, v25);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ")\t<=", 4);
        v27 = *((*(*a1 + 32))(a1, v21) + 4);
        v28 = std::ostream::operator<<();
        std::ios_base::getloc((v28 + *(*v28 - 24)));
        v29 = std::locale::use_facet(v88, v22);
        (v29->__vftable[2].~facet_0)(v29, 10);
        std::locale::~locale(v88);
        std::ostream::put();
        std::ostream::flush();
        v21 = (v21 + 1);
      }

      while (v21 < *(a1 + 68));
      goto LABEL_13;
    }

    v31 = 0;
    v32 = MEMORY[0x1E69E5318];
    v86 = a1;
LABEL_17:
    v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "partition ", 10);
    v35 = MEMORY[0x1C691FC90](v34, v31);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " (", 2);
    v36 = (*(*a1 + 48))(a1, v31);
    v37 = MEMORY[0x1C691FC90](v35, v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ")\t<=", 4);
    v38 = *((*(*a1 + 32))(a1, v31) + 4);
    v39 = std::ostream::operator<<();
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v40 = std::locale::use_facet(v88, v32);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    v87 = v31;
    v41 = *(a1 + 144) + 16 * v31;
    v89 = 0u;
    v90 = 0u;
    *&v88[0].__locale_ = 0u;
    PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::PartitionEnumerator(v88, *v41, *(*(*v41 + 96) + 4 * *(v41 + 8)));
    v88[0].__locale_ = &unk_1F427E090;
    PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::next(v88);
    while (1)
    {
      v43 = *(&v90 + 1);
      if (!*(&v90 + 1))
      {
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v33 = std::locale::use_facet(v88, v32);
        (v33->__vftable[2].~facet_0)(v33, 10);
        std::locale::~locale(v88);
        std::ostream::put();
        std::ostream::flush();
        a1 = v86;
        v31 = v87 + 1;
        if (v87 + 1 >= *(v86 + 68))
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }

      v91 = 0;
      v92 = 0;
      MEMORY[0x1C691FC40](&v91, a2);
      if (v91 != 1)
      {
        goto LABEL_50;
      }

      v44 = a2 + *(*a2 - 24);
      v45 = *(v44 + 5);
      if ((*(v44 + 2) & 0xB0) == 0x20)
      {
        v46 = "";
      }

      else
      {
        v46 = "  ";
      }

      v47 = *(v44 + 36);
      if (v47 == -1)
      {
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v48 = std::locale::use_facet(&__b, v32);
        v47 = (v48->__vftable[2].~facet_0)(v48, 32);
        std::locale::~locale(&__b);
        *(v44 + 36) = v47;
        if (!v45)
        {
          goto LABEL_49;
        }
      }

      else if (!v45)
      {
        goto LABEL_49;
      }

      v49 = *(v44 + 3);
      v50 = v49 <= 2;
      v51 = v49 - 2;
      if (v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v51;
      }

      if (v46 - "  " >= 1 && (*(*v45 + 96))(v45, "  ", v46 - "  ") != v46 - "  ")
      {
        goto LABEL_49;
      }

      if (v52 >= 1)
      {
        __b.__locale_ = 0;
        v94 = 0;
        v95 = 0;
        if (v52 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_113;
        }

        if (v52 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v95) = v52;
        memset(&__b, v47, v52);
        *(&__b.__locale_ + v52) = 0;
        if (v95 >= 0)
        {
          p_b = &__b;
        }

        else
        {
          p_b = __b.__locale_;
        }

        v54 = (*(*v45 + 96))(v45, p_b, v52);
        if (SHIBYTE(v95) < 0)
        {
          operator delete(__b.__locale_);
        }

        v32 = MEMORY[0x1E69E5318];
        if (v54 != v52)
        {
          goto LABEL_49;
        }
      }

      v55 = "  " - v46 + 2;
      if (v55 >= 1 && (*(*v45 + 96))(v45, v46, "  " - v46 + 2) != v55)
      {
LABEL_49:
        std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 5);
        goto LABEL_50;
      }

      *(v44 + 3) = 0;
LABEL_50:
      MEMORY[0x1C691FC50](&v91);
      v56 = MEMORY[0x1C691FC90](a2, *v43);
      v91 = 0;
      v92 = 0;
      MEMORY[0x1C691FC40](&v91, v56);
      if (v91 != 1)
      {
        goto LABEL_80;
      }

      v57 = v56 + *(*v56 - 24);
      v58 = *(v57 + 5);
      if ((*(v57 + 2) & 0xB0) == 0x20)
      {
        v59 = "";
      }

      else
      {
        v59 = "(";
      }

      v60 = *(v57 + 36);
      if (v60 == -1)
      {
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v61 = std::locale::use_facet(&__b, v32);
        v60 = (v61->__vftable[2].~facet_0)(v61, 32);
        std::locale::~locale(&__b);
        *(v57 + 36) = v60;
        if (!v58)
        {
          goto LABEL_78;
        }
      }

      else if (!v58)
      {
        goto LABEL_78;
      }

      v62 = *(v57 + 3);
      v50 = v62 <= 1;
      v63 = v62 - 1;
      if (v50)
      {
        v64 = 0;
      }

      else
      {
        v64 = v63;
      }

      if (v59 - "(" >= 1 && (*(*v58 + 96))(v58, "(", v59 - "(") != v59 - "(")
      {
        goto LABEL_78;
      }

      if (v64 >= 1)
      {
        __b.__locale_ = 0;
        v94 = 0;
        v95 = 0;
        if (v64 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_113;
        }

        if (v64 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v95) = v64;
        memset(&__b, v60, v64);
        *(&__b.__locale_ + v64) = 0;
        if (v95 >= 0)
        {
          locale = &__b;
        }

        else
        {
          locale = __b.__locale_;
        }

        v66 = (*(*v58 + 96))(v58, locale, v64);
        if (SHIBYTE(v95) < 0)
        {
          v67 = v66;
          operator delete(__b.__locale_);
          if (v67 != v64)
          {
            goto LABEL_78;
          }
        }

        else if (v66 != v64)
        {
          goto LABEL_78;
        }
      }

      v68 = "(" - v59 + 1;
      if (v68 >= 1 && (*(*v58 + 96))(v58, v59, "(" - v59 + 1) != v68)
      {
LABEL_78:
        std::ios_base::clear((v56 + *(*v56 - 24)), *(v56 + *(*v56 - 24) + 32) | 5);
        goto LABEL_79;
      }

      *(v57 + 3) = 0;
LABEL_79:
      v32 = MEMORY[0x1E69E5318];
LABEL_80:
      MEMORY[0x1C691FC50](&v91);
      v69 = v43[1];
      v70 = std::ostream::operator<<();
      v91 = 0;
      v92 = 0;
      MEMORY[0x1C691FC40](&v91, v70);
      if (v91)
      {
        v71 = v70 + *(*v70 - 24);
        v72 = *(v71 + 5);
        if ((*(v71 + 2) & 0xB0) == 0x20)
        {
          v73 = "";
        }

        else
        {
          v73 = ")";
        }

        v74 = *(v71 + 36);
        if (v74 == -1)
        {
          std::ios_base::getloc((v70 + *(*v70 - 24)));
          v75 = std::locale::use_facet(&__b, v32);
          v74 = (v75->__vftable[2].~facet_0)(v75, 32);
          std::locale::~locale(&__b);
          *(v71 + 36) = v74;
          if (!v72)
          {
            goto LABEL_18;
          }
        }

        else if (!v72)
        {
          goto LABEL_18;
        }

        v76 = *(v71 + 3);
        v50 = v76 <= 1;
        v77 = v76 - 1;
        if (v50)
        {
          v78 = 0;
        }

        else
        {
          v78 = v77;
        }

        if (v73 - ")" >= 1 && (*(*v72 + 96))(v72, ")", v73 - ")") != v73 - ")")
        {
          goto LABEL_18;
        }

        if (v78 >= 1)
        {
          __b.__locale_ = 0;
          v94 = 0;
          v95 = 0;
          if (v78 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_113:
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          if (v78 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v95) = v78;
          memset(&__b, v74, v78);
          *(&__b.__locale_ + v78) = 0;
          if (v95 >= 0)
          {
            v79 = &__b;
          }

          else
          {
            v79 = __b.__locale_;
          }

          v80 = (*(*v72 + 96))(v72, v79, v78);
          v81 = v80;
          if (SHIBYTE(v95) < 0)
          {
            operator delete(__b.__locale_);
            if (v81 != v78)
            {
              goto LABEL_18;
            }
          }

          else if (v80 != v78)
          {
            goto LABEL_18;
          }
        }

        v82 = ")" - v73 + 1;
        if (v82 < 1 || (*(*v72 + 96))(v72, v73, ")" - v73 + 1) == v82)
        {
          *(v71 + 3) = 0;
        }

        else
        {
LABEL_18:
          std::ios_base::clear((v70 + *(*v70 - 24)), *(v70 + *(*v70 - 24) + 32) | 5);
        }

        v32 = MEMORY[0x1E69E5318];
      }

      MEMORY[0x1C691FC50](&v91);
      std::ios_base::getloc((v70 + *(*v70 - 24)));
      v42 = std::locale::use_facet(&__b, v32);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&__b);
      std::ostream::put();
      std::ostream::flush();
      (*(v88[0].__locale_ + 3))(v88);
    }
  }

  return result;
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::PartitionEnumerator(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &unk_1F427E0C0;
  *(a1 + 8) = a2;
  *(a1 + 20) = 0x100000001;
  *(a1 + 32) = 0;
  v3 = (a1 + 32);
  *(a1 + 40) = 0;
  if (!a2)
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1441, "store != nullptr", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a2 + 80), a3);
  v6 = *(v5 + 8);
  *(a1 + 16) = *(v5 + 4);
  if (v6 > *(a1 + 24))
  {
    *v3 = v5;
  }

  return a1;
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::next(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 32);
  if (v2 && (v3 = *(a1 + 24), v3 < v2[2]))
  {
    v4 = *(a1 + 20);
    if (v4 > 0x1FF)
    {
      if (!*v2)
      {
        v1 = 0;
        goto LABEL_8;
      }

      v7 = a1;
      v8 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(v1 + 80), *v2);
      if (*(v8 + 8))
      {
        goto LABEL_14;
      }

      v9 = *__error();
      v10 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v7 + 32);
        v12 = *v11;
        v13 = *(v7 + 16);
        v14 = *(v7 + 20);
        v15 = *(v7 + 24);
        LODWORD(v11) = v11[2];
        v16 = *(v8 + 12);
        v17 = *(v8 + 16);
        *buf = 136317186;
        v24 = "next";
        v25 = 1024;
        v26 = 1466;
        v27 = 1024;
        v28 = v12;
        v29 = 1024;
        v30 = v13;
        v31 = 1024;
        v32 = v14;
        v33 = 1024;
        v34 = v15;
        v35 = 1024;
        v36 = v11;
        v37 = 1024;
        v38 = v16;
        v39 = 2048;
        v40 = v17;
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: blockAt(%u).count=0 centOffset=%u currentOffset=%u visited=%u count=%u vec[0]=%u(%f)", buf, 0x40u);
      }

      *__error() = v9;
      if (*(v8 + 8))
      {
LABEL_14:
        if (*(v8 + 4) == *(v7 + 16))
        {
          a1 = v7;
          *(v7 + 32) = v8;
          v1 = v8 + 12;
          *(v7 + 20) = 0x100000001;
          goto LABEL_7;
        }

        v21 = __si_assert_copy_extra_332();
        v19 = v21;
        v22 = "";
        if (v21)
        {
          v22 = v21;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1469, "block->centOffset == centOffset", v22);
      }

      else
      {
        v18 = __si_assert_copy_extra_332();
        v19 = v18;
        v20 = "";
        if (v18)
        {
          v20 = v18;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1468, "block->count > 0", v20);
      }

      free(v19);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    *(a1 + 20) = v4 + 1;
    *(a1 + 24) = v3 + 1;
    v1 = &v2[2 * v4 + 3];
  }

  else
  {
    v1 = 0;
  }

LABEL_7:
  *(a1 + 40) = v1;
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

unint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(void *a1, unsigned int a2)
{
  result = vi_onefixedsize_memory_allocator::getPtr(a1, a2, 4108);
  if (!result)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1337, "block != 0", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

{
  result = vi_onefixedsize_memory_allocator::getPtr(a1, a2, 4108);
  if (!result)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1343, "block != 0", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

void std::__shared_ptr_emplace<PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator,std::allocator<PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427E0F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::vectorOffsetsInPartition@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 144) + 16 * a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0u;
  PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::PartitionEnumerator(v7, *v4, *(*(*v4 + 96) + 4 * *(v4 + 8)));
  *&v7[0] = &unk_1F427E090;
  result = PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::next(v7);
  for (i = *(&v8 + 1); *(&v8 + 1); i = *(&v8 + 1))
  {
    v9 = *i;
    std::vector<unsigned int>::push_back[abi:nn200100](a3, &v9);
    result = (*(*&v7[0] + 24))(v7);
  }

  return result;
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::enumeratePartition(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v7 = a1[18] + 16 * a2;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::PartitionEnumerator(v9, *v7, *(*(*v7 + 96) + 4 * *(v7 + 8)));
  *&v9[0] = &unk_1F427E090;
  for (result = PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::next(v9); *(&v10 + 1); result = (*(*&v9[0] + 24))(v9))
  {
    (*(a3 + 16))(a3, v6);
  }

  return result;
}

void PartitionStore<vi_onefixedsize_memory_allocator,512>::enumeratePartitions(void *a1, unsigned int **a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == a2[1])
  {
    v6 = 0uLL;
  }

  else
  {
    v6 = 0uLL;
    do
    {
      v135 = v6;
      v7 = *v3;
      if ((*(*a1 + 48))(a1, v7))
      {
        v8 = (*(*a1 + 40))(a1, v7);
        v9 = a1[18] + 16 * v7;
        v150 = 0;
        memset(v149, 0, sizeof(v149));
        memset(v143, 0, sizeof(v143));
        PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::PartitionEnumerator(v143, *v9, *(*(*v9 + 96) + 4 * *(v9 + 8)));
        *&v143[0] = &unk_1F427E090;
        PartitionStore<vi_onefixedsize_memory_allocator,512>::PartitionEnumerator::next(v143);
        v141 = 0;
        v142 = 0;
        v138 = &unk_1F427E090;
        *&v139 = 0;
        *(v149 + 8) = *(v143 + 8);
        *(&v149[1] + 8) = *(&v143[1] + 8);
        *(&v149[2] + 1) = *(&v143[2] + 1);
        *&v149[0] = &unk_1F427E090;
        *(&v149[3] + 8) = v139;
        *(&v149[4] + 8) = v140;
        *(&v149[5] + 1) = 0;
        *&v149[3] = &unk_1F427E090;
        LODWORD(v150) = v8;
        v10 = v135;
        v11 = 0x4EC4EC4EC4EC4EC5 * ((*(&v135 + 1) - v135) >> 3) + 1;
        if (v11 > 0x276276276276276)
        {
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        if (0x9D89D89D89D89D8ALL * (-v135 >> 3) > v11)
        {
          v11 = 0x9D89D89D89D89D8ALL * (-v135 >> 3);
        }

        if ((0x4EC4EC4EC4EC4EC5 * (-v135 >> 3)) >= 0x13B13B13B13B13BLL)
        {
          v12 = 0x276276276276276;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          if (v12 <= 0x276276276276276)
          {
            operator new();
          }

          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        v13 = 8 * ((*(&v135 + 1) - v135) >> 3);
        *(v13 + 8) = *(v149 + 8);
        *(v13 + 24) = *(&v149[1] + 8);
        v14 = *(&v149[2] + 1);
        *v13 = &unk_1F427E090;
        *(v13 + 56) = *(&v149[3] + 8);
        *(v13 + 72) = *(&v149[4] + 8);
        *(v13 + 88) = *(&v149[5] + 1);
        *(v13 + 40) = v14;
        *(v13 + 48) = &unk_1F427E090;
        *(v13 + 96) = v8;
        v15 = (*(&v135 + 1) - v135) / -104;
        if (v135 != *(&v135 + 1))
        {
          v16 = 0;
          do
          {
            v17 = 8 * ((*(&v135 + 1) - v135) >> 3) + 104 * v15 + v16;
            v18 = *(v135 + v16 + 8);
            v19 = *(v135 + v16 + 40);
            *(v17 + 24) = *(v135 + v16 + 24);
            *(v17 + 8) = v18;
            *v17 = &unk_1F427E090;
            *(v17 + 40) = v19;
            *(v17 + 48) = &unk_1F427E0C0;
            v20 = *(v135 + v16 + 56);
            v21 = *(v135 + v16 + 72);
            *(v17 + 88) = *(v135 + v16 + 88);
            *(v17 + 72) = v21;
            *(v17 + 56) = v20;
            *(v17 + 48) = &unk_1F427E090;
            *(v17 + 96) = *(v135 + v16 + 96);
            v16 += 104;
          }

          while (v135 + v16 != *(&v135 + 1));
        }

        v22 = v13 + 104;
        *&v6 = v13 + 104 * v15;
        if (v135)
        {
          v136 = v13 + 104 * v15;
          operator delete(v10);
          *&v6 = v136;
        }

        *(&v6 + 1) = v22;
      }

      else
      {
        v6 = v135;
      }

      ++v3;
    }

    while (v3 != a2[1]);
  }

  v23 = v6;
  v24 = *(&v6 + 1) - v6;
  if ((*(&v6 + 1) - v6) >= 105)
  {
    v25 = 0x4EC4EC4EC4EC4EC5 * (v24 >> 3);
    v26 = (v25 - 2) >> 1;
    v27 = v26;
    do
    {
      v32 = v27;
      if (v24 >= 208 && v26 >= v27)
      {
        v33 = (2 * v27) | 1;
        v34 = v6 + 104 * v33;
        if (2 * v27 + 2 < v25)
        {
          v35 = **(v34 + 40);
          v36 = **(v34 + 144);
          v37 = v35 > v36;
          v38 = v35 <= v36 ? 0 : 104;
          v34 += v38;
          if (v37)
          {
            v33 = 2 * v27 + 2;
          }
        }

        v39 = v6 + 104 * v27;
        if (**(v34 + 40) <= **(v39 + 40))
        {
          v150 = 0;
          v40 = *(v39 + 8);
          v41 = *(v39 + 24);
          *(&v149[2] + 1) = *(v39 + 40);
          *(&v149[1] + 8) = v41;
          *(v149 + 8) = v40;
          v42 = *(v39 + 56);
          v43 = *(v39 + 72);
          *(&v149[5] + 1) = *(v39 + 88);
          *(&v149[4] + 8) = v43;
          *(&v149[3] + 8) = v42;
          *&v149[3] = &unk_1F427E090;
          LODWORD(v150) = *(v39 + 96);
          do
          {
            v48 = v39;
            v39 = v34;
            v49 = *(v34 + 8);
            v50 = *(v34 + 24);
            *(v48 + 40) = *(v34 + 40);
            *(v48 + 24) = v50;
            *(v48 + 8) = v49;
            v51 = *(v34 + 56);
            v52 = *(v34 + 72);
            *(v48 + 88) = *(v34 + 88);
            *(v48 + 72) = v52;
            *(v48 + 56) = v51;
            *(v48 + 96) = *(v34 + 96);
            if (v26 < v33)
            {
              break;
            }

            v53 = (2 * v33) | 1;
            v34 = v6 + 104 * v53;
            v54 = 2 * v33 + 2;
            if (v54 < v25)
            {
              v44 = **(v34 + 40);
              v45 = **(v34 + 144);
              v46 = v44 > v45;
              v47 = v44 <= v45 ? 0 : 104;
              v34 += v47;
              v33 = v46 ? v54 : v53;
            }

            else
            {
              v33 = (2 * v33) | 1;
            }
          }

          while (**(v34 + 40) <= **(&v149[2] + 1));
          v28 = *(v149 + 8);
          v29 = *(&v149[1] + 8);
          *(v39 + 40) = *(&v149[2] + 1);
          *(v39 + 24) = v29;
          *(v39 + 8) = v28;
          v30 = *(&v149[3] + 8);
          v31 = *(&v149[4] + 8);
          *(v39 + 88) = *(&v149[5] + 1);
          *(v39 + 72) = v31;
          *(v39 + 56) = v30;
          *(v39 + 96) = v150;
        }
      }

      v27 = v32 - 1;
    }

    while (v32);
  }

  if (*(&v6 + 1) != v6)
  {
    v137 = v6;
    while (1)
    {
      v60 = *(v23 + 40);
      v61 = *(v23 + 96);
      LOBYTE(v138) = 0;
      (*(a3 + 16))(a3, v61, v60, &v138);
      if (v138 == 1)
      {
        break;
      }

      v23 = v137;
      (*(*v137 + 24))(v137);
      v59 = *(&v137 + 1);
      *&v62 = v137;
      v63 = *(&v137 + 1) - v137;
      v64 = 0x4EC4EC4EC4EC4EC5 * ((*(&v137 + 1) - v137) >> 3);
      if (*(v23 + 40) == *(v23 + 88))
      {
        if (v63 >= 105)
        {
          v93 = 0;
          v148 = 0;
          v94 = *(v137 + 8);
          v95 = *(v137 + 24);
          *(&v143[2] + 1) = *(v137 + 40);
          *(&v143[1] + 8) = v95;
          *(v143 + 8) = v94;
          v96 = *(v137 + 56);
          v97 = *(v137 + 72);
          v147 = *(v137 + 88);
          v146 = v97;
          v145 = v96;
          v144 = &unk_1F427E090;
          LODWORD(v148) = *(v137 + 96);
          v98 = v137;
          do
          {
            v103 = v98 + 104 * v93 + 104;
            v104 = (2 * v93) | 1;
            v105 = 2 * v93 + 2;
            if (v105 < v64)
            {
              v106 = **(v103 + 40);
              v107 = **(v103 + 144);
              v108 = v106 > v107;
              v109 = v106 <= v107 ? 0 : 104;
              v103 += v109;
              if (v108)
              {
                v104 = v105;
              }
            }

            v99 = *(v103 + 8);
            v100 = *(v103 + 24);
            *(v98 + 40) = *(v103 + 40);
            *(v98 + 24) = v100;
            *(v98 + 8) = v99;
            v101 = *(v103 + 56);
            v102 = *(v103 + 72);
            *(v98 + 88) = *(v103 + 88);
            *(v98 + 72) = v102;
            *(v98 + 56) = v101;
            *(v98 + 96) = *(v103 + 96);
            v98 = v103;
            v93 = v104;
          }

          while (v104 <= ((v64 - 2) >> 1));
          if (v103 == *(&v137 + 1) - 104)
          {
            v55 = *(v143 + 8);
            v56 = *(&v143[1] + 8);
            *(v103 + 40) = *(&v143[2] + 1);
            *(v103 + 24) = v56;
            *(v103 + 8) = v55;
            v57 = v145;
            v58 = v146;
            *(v103 + 88) = v147;
            *(v103 + 72) = v58;
            *(v103 + 56) = v57;
            *(v103 + 96) = v148;
          }

          else
          {
            v110 = *(*(&v137 + 1) - 96);
            v111 = *(*(&v137 + 1) - 80);
            *(v103 + 40) = *(*(&v137 + 1) - 64);
            *(v103 + 24) = v111;
            *(v103 + 8) = v110;
            v112 = *(*(&v137 + 1) - 48);
            v113 = *(*(&v137 + 1) - 32);
            *(v103 + 88) = *(*(&v137 + 1) - 16);
            *(v103 + 72) = v113;
            *(v103 + 56) = v112;
            *(v103 + 96) = *(*(&v137 + 1) - 8);
            v114 = *(v143 + 8);
            v115 = *(&v143[1] + 8);
            *(*(&v137 + 1) - 64) = *(&v143[2] + 1);
            *(*(&v137 + 1) - 96) = v114;
            *(*(&v137 + 1) - 80) = v115;
            v116 = v145;
            v117 = v146;
            *(*(&v137 + 1) - 16) = v147;
            *(*(&v137 + 1) - 48) = v116;
            *(*(&v137 + 1) - 32) = v117;
            *(*(&v137 + 1) - 8) = v148;
            v118 = v103 - v137 + 104;
            if (v118 >= 105)
            {
              v119 = (0x4EC4EC4EC4EC4EC5 * (v118 >> 3) - 2) >> 1;
              v120 = v137 + 104 * v119;
              if (**(v120 + 40) > **(v103 + 40))
              {
                v150 = 0;
                v121 = *(v103 + 8);
                v122 = *(v103 + 24);
                *(&v149[2] + 1) = *(v103 + 40);
                *(&v149[1] + 8) = v122;
                *(v149 + 8) = v121;
                v123 = *(v103 + 56);
                v124 = *(v103 + 72);
                *(&v149[5] + 1) = *(v103 + 88);
                *(&v149[4] + 8) = v124;
                *(&v149[3] + 8) = v123;
                *&v149[3] = &unk_1F427E090;
                LODWORD(v150) = *(v103 + 96);
                do
                {
                  v125 = v120;
                  v126 = *(v120 + 8);
                  v127 = *(v120 + 24);
                  *(v103 + 40) = *(v120 + 40);
                  *(v103 + 24) = v127;
                  *(v103 + 8) = v126;
                  v128 = *(v120 + 56);
                  v129 = *(v120 + 72);
                  *(v103 + 88) = *(v120 + 88);
                  *(v103 + 72) = v129;
                  *(v103 + 56) = v128;
                  *(v103 + 96) = *(v120 + 96);
                  if (!v119)
                  {
                    break;
                  }

                  v119 = (v119 - 1) >> 1;
                  v120 = v137 + 104 * v119;
                  v103 = v125;
                }

                while (**(v120 + 40) > **(&v149[2] + 1));
                v130 = *(v149 + 8);
                v131 = *(&v149[1] + 8);
                *(v125 + 40) = *(&v149[2] + 1);
                *(v125 + 24) = v131;
                *(v125 + 8) = v130;
                v132 = *(&v149[3] + 8);
                v133 = *(&v149[4] + 8);
                *(v125 + 88) = *(&v149[5] + 1);
                *(v125 + 72) = v133;
                *(v125 + 56) = v132;
                *(v125 + 96) = v150;
              }
            }
          }
        }

        v59 = *(&v137 + 1) - 104;
        *(&v62 + 1) = *(&v137 + 1) - 104;
        v137 = v62;
      }

      else if (v63 >= 208)
      {
        v65 = (v64 - 2) >> 1;
        v66 = v65;
        do
        {
          v71 = v66;
          if (v65 >= v66)
          {
            v72 = (2 * v66) | 1;
            v73 = v137 + 104 * v72;
            if (2 * v66 + 2 < v64)
            {
              v74 = **(v73 + 40);
              v75 = **(v73 + 144);
              v76 = v74 > v75;
              v77 = v74 <= v75 ? 0 : 104;
              v73 += v77;
              if (v76)
              {
                v72 = 2 * v66 + 2;
              }
            }

            v78 = v137 + 104 * v66;
            if (**(v73 + 40) <= **(v78 + 40))
            {
              v150 = 0;
              v79 = *(v78 + 8);
              v80 = *(v78 + 24);
              *(&v149[2] + 1) = *(v78 + 40);
              *(&v149[1] + 8) = v80;
              *(v149 + 8) = v79;
              v81 = *(v78 + 56);
              v82 = *(v78 + 72);
              *(&v149[5] + 1) = *(v78 + 88);
              *(&v149[4] + 8) = v82;
              *(&v149[3] + 8) = v81;
              *&v149[3] = &unk_1F427E090;
              LODWORD(v150) = *(v78 + 96);
              do
              {
                v87 = v78;
                v78 = v73;
                v88 = *(v73 + 8);
                v89 = *(v73 + 24);
                *(v87 + 40) = *(v73 + 40);
                *(v87 + 24) = v89;
                *(v87 + 8) = v88;
                v90 = *(v73 + 56);
                v91 = *(v73 + 72);
                *(v87 + 88) = *(v73 + 88);
                *(v87 + 72) = v91;
                *(v87 + 56) = v90;
                *(v87 + 96) = *(v73 + 96);
                if (v65 < v72)
                {
                  break;
                }

                v92 = (2 * v72) | 1;
                v73 = v137 + 104 * v92;
                v72 = 2 * v72 + 2;
                if (v72 < v64)
                {
                  v83 = **(v73 + 40);
                  v84 = **(v73 + 144);
                  v85 = v83 > v84;
                  if (v83 <= v84)
                  {
                    v86 = 0;
                  }

                  else
                  {
                    v86 = 104;
                  }

                  v73 += v86;
                  if (!v85)
                  {
                    v72 = v92;
                  }
                }

                else
                {
                  v72 = v92;
                }
              }

              while (**(v73 + 40) <= **(&v149[2] + 1));
              v67 = *(v149 + 8);
              v68 = *(&v149[1] + 8);
              *(v78 + 40) = *(&v149[2] + 1);
              *(v78 + 24) = v68;
              *(v78 + 8) = v67;
              v69 = *(&v149[3] + 8);
              v70 = *(&v149[4] + 8);
              *(v78 + 88) = *(&v149[5] + 1);
              *(v78 + 72) = v70;
              *(v78 + 56) = v69;
              *(v78 + 96) = v150;
            }
          }

          v66 = v71 - 1;
        }

        while (v71);
      }

      if (v59 == v23)
      {
        goto LABEL_93;
      }
    }

    v23 = v137;
  }

LABEL_93:
  if (v23)
  {
    operator delete(v23);
  }
}

void PartitionStore<vi_onefixedsize_memory_allocator,512>::enumeratePartitions(_DWORD *a1, uint64_t a2)
{
  if (a1[17])
  {
    operator new();
  }

  __p = 0;
  v3 = 0;
  v4 = 0;
  (*(*a1 + 72))(a1, &__p, a2);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void PartitionStore<vi_onefixedsize_memory_allocator,512>::append(uint64_t a1, unsigned int a2, int a3, float a4)
{
  v7 = *(*(a1 + 96) + 4 * a2);
  v8 = (*(*a1 + 40))(a1);
  v9 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), v7);
  if (*(v9 + 4) != v8)
  {
    goto LABEL_21;
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    if (*(v9 + 16) < a4)
    {
      *(v9 + 12) = a3;
      *(v9 + 16) = a4;
    }

    if (v10 >= 0x200)
    {
      *(v9 + 8) = v10 + 1;
      v11 = *v9;
      if (*v9)
      {
        goto LABEL_17;
      }

LABEL_16:
      v11 = PartitionStore<vi_onefixedsize_memory_allocator,512>::newBlock(a1, v8);
      *PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), v7) = v11;
LABEL_17:
      while (1)
      {
        v9 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), v11);
        if (*(v9 + 4) != v8)
        {
          break;
        }

        v10 = *(v9 + 8);
        if (v10 < 0x200)
        {
          goto LABEL_9;
        }

        *(v9 + 8) = v10 + 1;
        v7 = v11;
        v11 = *v9;
        if (!*v9)
        {
          goto LABEL_16;
        }
      }

LABEL_21:
      v21 = __si_assert_copy_extra_332();
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1363, "block->centOffset == centOffset", v23);
      free(v22);
      if (__valid_fs(-1))
      {
        v24 = 2989;
      }

      else
      {
        v24 = 3072;
      }

      *v24 = -559038737;
      abort();
    }
  }

  else
  {
    *(v9 + 16) = a4;
    v10 = 1;
    *(v9 + 8) = 1;
    *(v9 + 12) = a3;
  }

LABEL_9:
  v12 = v9 + 8 * v10;
  *(v9 + 8) = v10 + 1;
  *(v12 + 12) = a3;
  *(v12 + 16) = a4;
  if (a4 == 0.0)
  {
    v13 = 3.4028e38;
  }

  else
  {
    v14 = *(a1 + 64);
    v15 = v14 / 0xADC8;
    v16 = 48271 * (v14 % 0xADC8);
    v15 *= 3399;
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0x7FFFFFFF;
    }

    v20 = v19 + v18;
    *(a1 + 64) = v20;
    v13 = -logf(vcvts_n_f32_u32(v20 - 1, 0x1FuLL)) / a4;
  }

  v25[0] = a3;
  *&v25[1] = v13;
  MaxSizePriorityQueue<AnyPartitionStore::CandidateEntry,std::vector<AnyPartitionStore::CandidateEntry>,AnyPartitionStore::CandidateQueue::Lesser>::push((a1 + 24), v25);
  ++*(a1 + 72);
}

size_t PartitionStore<vi_onefixedsize_memory_allocator,512>::newBlock(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), 0);
  OffsetFromEnd = vi_onefixedsize_memory_allocator::allocateOffsetFromEnd(*(a1 + 80), 0x100Cu);
  v6 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), 0);
  if (v4 != v6)
  {
    v7 = v6;
    v8 = *__error();
    v9 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = v4;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Partition Storage remapped from %p to %p", &v13, 0x16u);
    }

    *__error() = v8;
  }

  v10 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), OffsetFromEnd);
  bzero(v10, 0x100CuLL);
  v10[1] = a2;
  v11 = *MEMORY[0x1E69E9840];
  return OffsetFromEnd;
}

size_t vi_onefixedsize_memory_allocator::allocateOffsetFromEnd(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (*(a1 + 32) != a2)
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 1379, "inSize == allocator->baseSize", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 + a2;
  if (v6 > v5)
  {
    v7 = *(a1 + 8);
    do
    {
      *(a1 + 16) = 2 * v5;
      v7 = malloc_type_zone_realloc(*a1, v7, 2 * v5, 0xC2B13F7DuLL);
      *(a1 + 8) = v7;
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
      v6 = v4 + v2;
    }

    while (v4 + v2 > v5);
  }

  *(a1 + 24) = v6;
  v8 = v4 / v2;
  Ptr = vi_onefixedsize_memory_allocator::getPtr(a1, v4 / v2, v2);
  bzero(Ptr, v2);
  return v8;
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::vectorCountInPartition(uint64_t a1, unsigned int a2)
{
  v2 = *(PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), *(*(a1 + 96) + 4 * a2)) + 8);
  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::centOffsetForPartition(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), *(*(a1 + 96) + 4 * a2));
  if (*(v3 + 4) != a2)
  {
    v4 = v3;
    v5 = *__error();
    v6 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = *(v4 + 4);
      *buf = 136316162;
      v14 = "centOffsetForPartition";
      v15 = 1024;
      v16 = 1321;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a2;
      v21 = 2048;
      v22 = v4;
      _os_log_fault_impl(&dword_1C278D000, v6, OS_LOG_TYPE_FAULT, "%s:%d: block->centOffset = %u, partitionId = %u, block = %p", buf, 0x28u);
    }

    *__error() = v5;
    if (*(v4 + 4) != a2)
    {
      v10 = __si_assert_copy_extra_332();
      v11 = v10;
      v12 = "";
      if (v10)
      {
        v12 = v10;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1322, "block->centOffset == partitionID", v12);
      free(v11);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a2;
}

void PartitionStore<vi_onefixedsize_memory_allocator,512>::~PartitionStore(uint64_t a1)
{
  PartitionStore<vi_onefixedsize_memory_allocator,512>::~PartitionStore(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::~PartitionStore(uint64_t a1)
{
  *a1 = &unk_1F427DEE0;
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v4)
  {
    malloc_zone_free(*v4, *(v4 + 8));
    MEMORY[0x1C691FEF0](v4, 0x10A0C40CA010D23);
  }

  *a1 = &unk_1F427DFB8;
  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

uint64_t PartitionStore<vi_onefixedsize_memory_allocator,512>::newPartition(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v18 = __si_assert_copy_extra_332();
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 908, "_quantizer != nullptr", v20);
LABEL_28:
    free(v19);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v5 = *(a1 + 68);
  if (v5 > (*(*v3 + 24))(v3))
  {
    v21 = __si_assert_copy_extra_332();
    v22 = v21;
    v23 = "";
    if (v21)
    {
      v23 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1391, "n_partitions <= quantizer()->count()", v23);
LABEL_34:
    free(v22);
    if (__valid_fs(-1))
    {
      v28 = 2989;
    }

    else
    {
      v28 = 3072;
    }

    *v28 = -559038737;
    abort();
  }

  v6 = *(a1 + 68);
  if (v6 > *(a1 + 88) - 1)
  {
    v24 = __si_assert_copy_extra_332();
    v19 = v24;
    v25 = "";
    if (v24)
    {
      v25 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1392, "n_partitions <= max_partitions - 1", v25);
    goto LABEL_28;
  }

  if (v6 != a2)
  {
    v26 = __si_assert_copy_extra_332();
    v22 = v26;
    v27 = "";
    if (v26)
    {
      v27 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1394, "centOffset == partID", v27);
    goto LABEL_34;
  }

  v29 = PartitionStore<vi_onefixedsize_memory_allocator,512>::newBlock(a1, a2);
  *(PartitionStore<vi_onefixedsize_memory_allocator,512>::blockAt(*(a1 + 80), v29) + 12) = -1;
  ++*(a1 + 68);
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 96, &v29);
  v8 = *(a1 + 152);
  v7 = *(a1 + 160);
  if (v8 >= v7)
  {
    v10 = *(a1 + 144);
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 4;
    v13 = v12 + 1;
    if ((v12 + 1) >> 60)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 60))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v16 = 16 * v12;
    *v16 = a1;
    *(v16 + 8) = a2;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    *(a1 + 144) = 0;
    *(a1 + 152) = v9;
    *(a1 + 160) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = a1;
    *(v8 + 8) = a2;
    v9 = v8 + 16;
  }

  *(a1 + 152) = v9;
  return a2;
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 96));
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  if (!v5)
  {
    os_unfair_lock_unlock((a1 + 96));
    *a2 = v6;
    a2[1] = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 96));
  *a2 = v6;
  a2[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
LABEL_9:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getQuantizer(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 96));
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(void *a1)
{
  IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(a1);

  JUMPOUT(0x1C691FEF0);
}

void *IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(void *a1)
{
  *a1 = &unk_1F427F8E8;
  v2 = a1[11];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::diagnoseDump(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, a2, v8);
  v10 = *(a1 + 47);
  if (v10 >= 0)
  {
    v11 = a1 + 24;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ": ", 2);
  v14 = (*(*a1 + 16))(a1);
  v15 = MEMORY[0x1C691FC90](a3, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " vectors ", 9);
  v16 = (*(*a1 + 24))(a1);
  v17 = MEMORY[0x1C691FC90](v15, v16);
  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " partitions.", 12);
  if (*(a1 + 192))
  {
    v19 = "(readOnly)";
  }

  else
  {
    v19 = "(readWrite)";
  }

  if (*(a1 + 192))
  {
    v20 = 10;
  }

  else
  {
    v20 = 11;
  }

  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v19, v20);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v78);
  std::ostream::put();
  std::ostream::flush();
  v75 = 0;
  v76 = 0;
  IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getQuantizer(a1 + 48, &v75);
  v23 = v75;
  if (v75)
  {
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "Quantizer: ", 11);
    v25 = *(v23 + 31);
    if (v25 >= 0)
    {
      v26 = v23 + 8;
    }

    else
    {
      v26 = *(v23 + 8);
    }

    if (v25 >= 0)
    {
      v27 = *(v23 + 31);
    }

    else
    {
      v27 = *(v23 + 16);
    }

    v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, v26, v27);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "(", 1);
    v29 = (*(*v23 + 16))(v23);
    v30 = MEMORY[0x1C691FC80](a3, v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, ") ", 2);
    v31 = (*(*v23 + 24))(v23);
    v32 = MEMORY[0x1C691FC90](v30, v31);
    v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, " centroids.", 11);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
  }

  v73 = 0;
  v74 = 0;
  IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v73);
  v35 = v73;
  if (v73)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "Partition: ", 11);
    (*(*v35 + 152))(&v78, v35);
    v36 = (v80 & 0x80u) == 0 ? &v78 : v78.__locale_;
    v37 = (v80 & 0x80u) == 0 ? v80 : v79;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, v36, v37);
    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v38 = std::locale::use_facet(&v77, MEMORY[0x1E69E5318]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v77);
    std::ostream::put();
    std::ostream::flush();
    if (v80 < 0)
    {
      operator delete(v78.__locale_);
    }
  }

  if (a4)
  {
    v71 = v35;
    v39 = *(a1 + 80);
    v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "offset,vid", 10);
    v72 = a4;
    if (a4 <= 1)
    {
      v41 = ",";
    }

    else
    {
      v41 = ",vector";
    }

    if (a4 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = 7;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, v41, v42);
    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v43 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
    if (*(v39 + 24))
    {
      if (a4 <= 1)
      {
        v58 = 0;
        v59 = MEMORY[0x1E69E5318];
        do
        {
          Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v58, 3092);
          v61 = MEMORY[0x1C691FC90](a3, v58);
          v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, ",", 1);
          v63 = MEMORY[0x1C691FC90](v62, *(Ptr + 3088));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, ",", 1);
          std::ios_base::getloc((a3 + *(*a3 - 24)));
          v64 = std::locale::use_facet(&v78, v59);
          (v64->__vftable[2].~facet_0)(v64, 10);
          std::locale::~locale(&v78);
          std::ostream::put();
          std::ostream::flush();
          ++v58;
        }

        while (v58 < *(v39 + 24));
      }

      else
      {
        v44 = 0;
        v45 = MEMORY[0x1E69E5318];
        do
        {
          v47 = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v44, 3092);
          v48 = MEMORY[0x1C691FC90](a3, v44);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ",", 1);
          v50 = MEMORY[0x1C691FC90](v49, *(v47 + 3088));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, ",", 1);
          v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "{length = ", 10);
          v52 = MEMORY[0x1C691FCA0](v51, 3072);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, ", bytes = 0x", 12);
          data2hexString(&v78, v47, 16);
          if ((v80 & 0x80u) == 0)
          {
            locale = &v78;
          }

          else
          {
            locale = v78.__locale_;
          }

          if ((v80 & 0x80u) == 0)
          {
            v54 = v80;
          }

          else
          {
            v54 = v79;
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, locale, v54);
          if (v80 < 0)
          {
            operator delete(v78.__locale_);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, " ... ", 5);
          data2hexString(&v78, v47 + 3064, 8);
          if ((v80 & 0x80u) == 0)
          {
            v55 = &v78;
          }

          else
          {
            v55 = v78.__locale_;
          }

          if ((v80 & 0x80u) == 0)
          {
            v56 = v80;
          }

          else
          {
            v56 = v79;
          }

          v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, v55, v56);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, " }", 2);
          if (v80 < 0)
          {
            operator delete(v78.__locale_);
          }

          std::ios_base::getloc((a3 + *(*a3 - 24)));
          v46 = std::locale::use_facet(&v78, v45);
          (v46->__vftable[2].~facet_0)(v46, 10);
          std::locale::~locale(&v78);
          std::ostream::put();
          std::ostream::flush();
          ++v44;
        }

        while (v44 < *(v39 + 24));
      }
    }

    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v65 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v65->__vftable[2].~facet_0)(v65, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
    if (v71)
    {
      (*(*v71 + 104))(v71, a3, v72);
    }
  }

  result = (*(*a1 + 16))(a1);
  v67 = v74;
  if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v68 = result;
    (v67->__on_zero_shared)(v67);
    std::__shared_weak_count::__release_weak(v67);
    result = v68;
  }

  v69 = v76;
  if (v76)
  {
    if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v70 = result;
      (v69->__on_zero_shared)(v69);
      std::__shared_weak_count::__release_weak(v69);
      return v70;
    }
  }

  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::status(uint64_t a1, uint64_t a2)
{
  v37 = 0;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  *__p = 0u;
  v34 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v30);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, v5, v6);
  v8 = *(a1 + 47);
  if (v8 >= 0)
  {
    v9 = a1 + 24;
  }

  else
  {
    v9 = *(a1 + 24);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 47);
  }

  else
  {
    v10 = *(a1 + 32);
  }

  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v9, v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "(", 1);
  v12 = (*(*a1 + 16))(a1);
  v13 = MEMORY[0x1C691FC90](&v31, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "/", 1);
  v14 = (*(*a1 + 24))(a1);
  v15 = MEMORY[0x1C691FC90](v13, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "v", 1);
  IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v28);
  if (v28)
  {
    IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v26);
    v16 = MEMORY[0x1C691FC80](v15, *(v26 + 76));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ")", 1);
    v17 = v27;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  else
  {
    v18 = MEMORY[0x1C691FC80](v15, 0);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ")", 1);
  }

  v19 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "[", 1);
  MEMORY[0x1C691FC90](v20, *(*(a1 + 80) + 36));
  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, ",", 1);
  v22 = MEMORY[0x1C691FC90](v21, *(*(a1 + 80) + 40));
  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "] indexId: ", 11);
  MEMORY[0x1C691FCB0](v23, *(a1 + 152));
  std::stringbuf::str();
  *&v30 = *MEMORY[0x1E69E54D8];
  v24 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v31 = v24;
  *(&v31 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v31 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v36);
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::updateVectorStorageOffsets(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    for (i = 0; ; ++i)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1 + 48);
      if (i >= result)
      {
        break;
      }

      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), i, 3092);
      if ((*(v2 + 184) & 1) == 0)
      {
        v7 = *(Ptr + 3088);
        v8 = *(v2 + 24);
        if (!v8 || !((*(v2 + 16) ^ v7) >> (-4 * v8)))
        {
          v9 = *(v2 + 56 + 8 * ((v7 >> (60 - 4 * v8)) & 0xF));
          if (v9)
          {
            v10 = v8 + 2;
            do
            {
              v9 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v7 >> (64 - 4 * v10++)) & 0xF));
            }

            while ((v9 & 1) != 0);
          }

          if (v9)
          {
            (*(*v9 + 16))(v9);
          }
        }
      }
    }
  }

  else
  {
    while (1)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1 + 48);
      if (v2 >= result)
      {
        break;
      }

      vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), v2++, 3092);
    }
  }

  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::getDataForOffset(void *a1, uint64_t a2, int *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 16))(a1) <= a2)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = (*(*a1 + 16))(a1);
      v13 = 136315906;
      v14 = "getDataForOffset";
      v15 = 1024;
      v16 = 3635;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = v12;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: offset out of range: %u >= %u", &v13, 0x1Eu);
    }

    v10 = __error();
    v7 = 0;
    result = 0;
    *v10 = v8;
  }

  else
  {
    result = (*(a1[6] + 32))(a1 + 6, a2);
    v7 = 3072;
  }

  *a3 = v7;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::storageSize(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  v5 = *(*(*(a1 + 80) + 16) + 24);
  v6 = (*(*v4 + 192))(v4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return v6 + v5;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::aNNForDebugProcessResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "search return %zu results", buf, 0xCu);
  }

  *__error() = v5;
  buf[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFANNLogQueryResult", @"com.apple.Spotlight", buf);
  v9 = buf[0];
  v51 = 0;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  *buf = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v34 = a2;
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v36, *(a2 + 8), *(a2 + 16));
  v10 = v37;
  v35 = v36;
  if (v36 != v37)
  {
    if (AppIntegerValue)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v24 = v36;
      do
      {
        (*(a3 + 16))(a3, *(v24 + 2), *(v24 + 4), v24[5]);
        v24 += 6;
      }

      while (v24 != v10);
    }

    else
    {
      v12 = 0;
      v13 = ",";
      v14 = v36;
      do
      {
        (*(a3 + 16))(a3, *(v14 + 2), *(v14 + 4), v14[5]);
        v15 = MEMORY[0x1C691FC90](&v45, *(v14 + 4));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v13, 1);
        v16 = *(v14 + 5);
        v17 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ";", 1);
        v18 = &v46[-2] + *(v45 - 24);
        if ((v18[32] & 5) == 0 && ((*(**(v18 + 5) + 32))(__p), v43 > 1000) || (++v12, HIDWORD(v19) = -1030792151 * v12 + 85899344, LODWORD(v19) = HIDWORD(v19), (v19 >> 1) < 0x51EB851))
        {
          v20 = v13;
          v21 = *__error();
          v22 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v23 = __p;
            if (v42 < 0)
            {
              v23 = __p[0];
            }

            *v39 = 136315138;
            v40 = v23;
            _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "%s", v39, 0xCu);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v21;
          __p[0] = 0;
          __p[1] = 0;
          v42 = 0;
          std::stringbuf::str();
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p[0]);
          }

          v13 = v20;
        }

        v14 += 6;
      }

      while (v14 != v10);
    }
  }

  v25 = &v46[-2] + *(v45 - 24);
  if ((v25[32] & 5) != 0)
  {
    v26 = v34;
  }

  else
  {
    (*(**(v25 + 5) + 32))(__p);
    v26 = v34;
    if (v43 > 0)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v29 = v42 >= 0 ? __p : __p[0];
        *v39 = 136315138;
        v40 = v29;
        _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "%s", v39, 0xCu);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v27;
    }
  }

  if (v26)
  {
    v30 = *(v26 + 8);
    if (v30)
    {
      *(v26 + 16) = v30;
      operator delete(v30);
    }

    MEMORY[0x1C691FEF0](v26, 0x1020C403EC25235);
  }

  if (v35)
  {
    operator delete(v35);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v45 = v31;
  *(&v45 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  *(&v45 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1C691FE80](v50);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::aNNProcessResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIfLi768EE16aNNProcessResultEPvU13block_pointerFvS5_fjE_block_invoke;
  v4[3] = &unk_1E8195768;
  v4[4] = a3;
  return _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPNS3_12storage_formEfjE(a2, v4);
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::aNN(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, int a6, char a7, void *a8, float a9)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a6 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(a1 + 16))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  v9 = a1 + 48;

  IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::aNN(v9, a4, a7, a8, 0, a9);
}

void IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::aNN(uint64_t a1, unsigned __int8 *a2, char a3, void *a4, CFIndex AppIntegerValue, float a6)
{
  v126 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  *__str = 0u;
  v125 = 0u;
  snprintf(__str, 0x20uLL, "%02x%02x%02x%02x...%02x%02x%02x%02x", *a2, a2[1], a2[2], a2[3], a2[3068], a2[3069], a2[3070], a2[3071]);
  if (!AppIntegerValue)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFNumberOfParitionsProbe", @"com.apple.Spotlight", 0);
  }

  keyExistsAndHasValidFormat[0] = 0;
  v12 = CFPreferencesGetAppIntegerValue(@"IVFMinVectorsUseANN", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v13 = v12;
  }

  else
  {
    v13 = 10000;
  }

  if (10 * v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 10 * v11;
  }

  v15 = v14 * _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
  v16 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
  keyExistsAndHasValidFormat[0] = 0;
  v17 = v15 / v16;
  v18 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMin", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v19 = v18;
  }

  else
  {
    v19 = 7;
  }

  v111 = 0;
  v112 = &v111;
  if (v17 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v114 = 0;
  v113 = 0x2000000000;
  v107 = 0;
  v108 = &v107;
  v110 = 0;
  v109 = 0x2000000000;
  v106 = 0;
  *v104 = 0u;
  *__p = 0u;
  _ZN16QuantizerManagerIDF16_Li256EE17aNNLogQueryVecIdsEv(v104);
  Current = CFAbsoluteTimeGetCurrent();
  v92 = v11;
  if ((a3 & 1) != 0 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1) <= v20 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1) <= v14)
  {
    v50 = *__error();
    v51 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v53 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v54 = a6;
      *keyExistsAndHasValidFormat = 136316162;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v52;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = v53;
      *&keyExistsAndHasValidFormat[30] = 2048;
      *&keyExistsAndHasValidFormat[32] = a6;
      _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "brute force search %s top %u of %u vectors in %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x28u);
    }

    else
    {
      v54 = a6;
    }

    *__error() = v50;
    v91 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v55 = 0;
    v56 = *(a1 + 32);
    v57 = v56;
    while (v55 != *(v57 + 24))
    {
      ++*(v112 + 6);
      v58 = IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator*(v56, v55);
      v59 = *(v58 + 3088);
      *keyExistsAndHasValidFormat = 2139095039;
      v60 = 1;
      vDSP_distancesq(a2, 1, v58, 1, keyExistsAndHasValidFormat, 0x300uLL);
      if (v104[1])
      {
        v61 = vcnt_s8(v104[1]);
        v61.i16[0] = vaddlv_u8(v61);
        if (v61.u32[0] > 1uLL)
        {
          v62 = v59;
          if (v104[1] <= v59)
          {
            v62 = v59 % LODWORD(v104[1]);
          }
        }

        else
        {
          v62 = (LODWORD(v104[1]) - 1) & v59;
        }

        v63 = *(v104[0] + v62);
        if (!v63 || (v64 = *v63) == 0)
        {
LABEL_79:
          v60 = 1;
          goto LABEL_80;
        }

        if (v61.u32[0] < 2uLL)
        {
          while (1)
          {
            v65 = v64[1];
            if (v65 == v59)
            {
              if (*(v64 + 4) == v59)
              {
                goto LABEL_71;
              }
            }

            else if ((v65 & (v104[1] - 1)) != v62)
            {
              goto LABEL_79;
            }

            v64 = *v64;
            if (!v64)
            {
              goto LABEL_79;
            }
          }
        }

        while (1)
        {
          v66 = v64[1];
          if (v66 == v59)
          {
            if (*(v64 + 4) == v59)
            {
LABEL_71:
              v60 = 0;
              break;
            }
          }

          else
          {
            if (v66 >= v104[1])
            {
              v66 %= v104[1];
            }

            if (v66 != v62)
            {
              goto LABEL_79;
            }
          }

          v64 = *v64;
          if (!v64)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_80:
      v67 = *keyExistsAndHasValidFormat;
      if (a6 == 0.0 || *keyExistsAndHasValidFormat <= a6)
      {
        if ((v60 & 1) == 0)
        {
          v70 = *__error();
          v71 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109376;
            *&keyExistsAndHasValidFormat[4] = v59;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v67;
            _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", keyExistsAndHasValidFormat, 0x12u);
          }

          *__error() = v70;
        }

        *keyExistsAndHasValidFormat = *(v58 + 3072);
        *&keyExistsAndHasValidFormat[16] = v59;
        *&keyExistsAndHasValidFormat[20] = v67;
        _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(a4, keyExistsAndHasValidFormat);
      }

      else
      {
        if ((v60 & 1) == 0)
        {
          v68 = *__error();
          v69 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109632;
            *&keyExistsAndHasValidFormat[4] = v59;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v67;
            *&keyExistsAndHasValidFormat[18] = 2048;
            *&keyExistsAndHasValidFormat[20] = v54;
            _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", keyExistsAndHasValidFormat, 0x1Cu);
          }

          *__error() = v68;
        }

        ++*(v108 + 6);
      }

      ++v55;
      v57 = *(a1 + 32);
      if (v56 != v57)
      {
        v87 = __si_assert_copy_extra_332();
        v88 = v87;
        v89 = "";
        if (v87)
        {
          v89 = v87;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1953, "store == other.store", v89);
        free(v88);
        if (__valid_fs(-1))
        {
          v90 = 2989;
        }

        else
        {
          v90 = 3072;
        }

        *v90 = -559038737;
        abort();
      }
    }
  }

  else
  {
    if (!AppIntegerValue)
    {
      keyExistsAndHasValidFormat[0] = 0;
      v22 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMax", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat[0])
      {
        v23 = v22;
      }

      else
      {
        v23 = 40;
      }

      keyExistsAndHasValidFormat[0] = 0;
      v24 = CFPreferencesGetAppIntegerValue(@"IVFPartitionSizeFactor", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat[0])
      {
        v25 = v24;
      }

      else
      {
        v25 = 45;
      }

      keyExistsAndHasValidFormat[0] = 0;
      v26 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeNumerator", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
      v27 = keyExistsAndHasValidFormat[0];
      v28 = v11;
      v29 = 8 * v26;
      v30 = v25 * v25;
      keyExistsAndHasValidFormat[0] = 0;
      v31 = CFPreferencesGetAppIntegerValue(@"IVFpartitionProbeDecayExponent", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
      v32 = keyExistsAndHasValidFormat[0];
      if (v31 <= 0x12)
      {
        v33 = 18;
      }

      else
      {
        v33 = v31;
      }

      v34 = v33 - 3;
      v35 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      if (v32)
      {
        v36 = v34;
      }

      else
      {
        v36 = 17;
      }

      v37 = v35 >> v36;
      if (v37 <= 8)
      {
        v38 = 8;
      }

      else
      {
        v38 = v37;
      }

      v39 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      if (v27)
      {
        v40 = v29;
      }

      else
      {
        v40 = 800;
      }

      v11 = v28;
      v41 = v40 * v39 / (v30 * v38);
      if (v23 < v41)
      {
        v41 = v23;
      }

      if (v41 <= v20)
      {
        AppIntegerValue = v20;
      }

      else
      {
        AppIntegerValue = v41;
      }
    }

    v42 = *__error();
    v43 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v45 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      *keyExistsAndHasValidFormat = 136316418;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v44;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = AppIntegerValue;
      *&keyExistsAndHasValidFormat[30] = 1024;
      *&keyExistsAndHasValidFormat[32] = v45;
      *&keyExistsAndHasValidFormat[36] = 2048;
      *&keyExistsAndHasValidFormat[38] = a6;
      _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "aNN search %s top %u of %u vectors in %u of %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x2Eu);
    }

    *__error() = v42;
    os_unfair_lock_lock((a1 + 136));
    os_unfair_lock_lock((a1 + 96));
    v47 = *(a1 + 64);
    v46 = *(a1 + 72);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = *(a1 + 80);
    v48 = *(a1 + 88);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v94 = v48;
    os_unfair_lock_unlock((a1 + 96));
    memset(keyExistsAndHasValidFormat, 0, 24);
    (*(*v47 + 80))(keyExistsAndHasValidFormat, v47, a2, AppIntegerValue);
    v93 = *&keyExistsAndHasValidFormat[8] - *keyExistsAndHasValidFormat;
    if (*&keyExistsAndHasValidFormat[8] != *keyExistsAndHasValidFormat)
    {
      operator new();
    }

    v101 = 0;
    v102 = 0;
    v103 = 0;
    v11 = v92;
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 1174405120;
    v96[2] = ___ZNK22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIfLi768EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke;
    v96[3] = &unk_1F427FC48;
    v96[6] = a1;
    v96[7] = a2;
    v96[4] = &v111;
    std::unordered_set<unsigned int>::unordered_set(&v97, v104);
    v100 = a6;
    v96[5] = &v107;
    v99 = a4;
    (*(*v49 + 72))(v49, &v101, v96);
    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    os_unfair_lock_unlock((a1 + 136));
    v84 = v98;
    if (v98)
    {
      do
      {
        v85 = *v84;
        operator delete(v84);
        v84 = v85;
      }

      while (v85);
    }

    v86 = v97;
    v97 = 0;
    if (v86)
    {
      operator delete(v86);
    }

    if (*keyExistsAndHasValidFormat)
    {
      *&keyExistsAndHasValidFormat[8] = *keyExistsAndHasValidFormat;
      operator delete(*keyExistsAndHasValidFormat);
    }

    if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v94->__on_zero_shared)(v94);
      std::__shared_weak_count::__release_weak(v94);
    }

    v91 = v93 >> 3;
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }

  v72 = *__error();
  v73 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
    v75 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v76 = *(v108 + 6);
    v77 = *(v112 + 6);
    v78 = 0xAAAAAAAAAAAAAAABLL * ((a4[2] - a4[1]) >> 3);
    v79 = CFAbsoluteTimeGetCurrent();
    *keyExistsAndHasValidFormat = 136317442;
    *&keyExistsAndHasValidFormat[4] = __str;
    *&keyExistsAndHasValidFormat[12] = 1024;
    *&keyExistsAndHasValidFormat[14] = v11;
    *&keyExistsAndHasValidFormat[18] = 1024;
    *&keyExistsAndHasValidFormat[20] = v74;
    *&keyExistsAndHasValidFormat[24] = 2048;
    *&keyExistsAndHasValidFormat[26] = a6;
    *&keyExistsAndHasValidFormat[34] = 1024;
    *&keyExistsAndHasValidFormat[36] = v91;
    *&keyExistsAndHasValidFormat[40] = 1024;
    *&keyExistsAndHasValidFormat[42] = v75;
    v116 = 1024;
    v117 = v76;
    v118 = 1024;
    v119 = v77;
    v120 = 2048;
    v121 = v78;
    v122 = 2048;
    v123 = v79 - Current;
    _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "search %s top %u of %u vectors max_distance=%f in %u of %u partitions skip %u of %u populate %zu results in duration: %f", keyExistsAndHasValidFormat, 0x4Eu);
  }

  *__error() = v72;
  v80 = __p[0];
  if (__p[0])
  {
    do
    {
      v81 = *v80;
      operator delete(v80);
      v80 = v81;
    }

    while (v81);
  }

  v82 = v104[0];
  v104[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  v83 = *MEMORY[0x1E69E9840];
}

unint64_t IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator*(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) <= a2)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1937, "offset < store->endOffset()", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = *(a1 + 16);

  return vi_onefixedsize_memory_allocator::getPtr(v2, a2, 3092);
}

void ___ZNK22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIfLi768EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  ++*(*(*(a1 + 32) + 8) + 24);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), *a3, 3092);
  v6 = *(a1 + 56);
  *v26 = 2139095039;
  v7 = 1;
  vDSP_distancesq(v6, 1, Ptr, 1, v26, 0x300uLL);
  v8 = *v26;
  v9 = *(Ptr + 3088);
  v10 = *(a1 + 72);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = *(Ptr + 3088);
    if (*&v10 <= v9)
    {
      v12 = v9 % v10.i32[0];
    }
  }

  else
  {
    v12 = (v10.i32[0] - 1) & v9;
  }

  v13 = *(*(a1 + 64) + 8 * v12);
  if (v13)
  {
    v14 = *v13;
    if (v14)
    {
      if (v11.u32[0] < 2uLL)
      {
        v15 = *&v10 - 1;
        while (1)
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            if (*(v14 + 4) == v9)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 & v15) != v12)
          {
            goto LABEL_22;
          }

          v14 = *v14;
          if (!v14)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v16 = v14[1];
        if (v16 == v9)
        {
          if (*(v14 + 4) == v9)
          {
LABEL_21:
            v7 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          if (v16 >= *&v10)
          {
            v16 %= *&v10;
          }

          if (v16 != v12)
          {
            break;
          }
        }

        v14 = *v14;
      }

      while (v14);
    }
  }

LABEL_22:
  v7 = 1;
LABEL_23:
  v18 = *(a1 + 112);
  if (v18 == 0.0 || *v26 <= v18)
  {
    if ((v7 & 1) == 0)
    {
      v20 = *__error();
      v21 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 67109376;
        *&v26[4] = v9;
        *&v26[8] = 2048;
        *&v26[10] = v8;
        _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", v26, 0x12u);
      }

      *__error() = v20;
    }

    *v26 = *(Ptr + 3072);
    *&v26[16] = v9;
    *&v27 = v8;
    _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(*(a1 + 104), v26);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 112);
        *v26 = 67109632;
        *&v26[4] = v9;
        *&v26[8] = 2048;
        *&v26[10] = v8;
        *&v26[18] = 2048;
        v27 = v24;
        _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", v26, 0x1Cu);
      }

      *__error() = v22;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::aNNForTest(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    operator new();
  }

  v6 = __si_assert_copy_extra_332();
  v7 = v6;
  v8 = "";
  if (v6)
  {
    v8 = v6;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v8);
  free(v7);
  if (__valid_fs(-1))
  {
    v9 = 2989;
  }

  else
  {
    v9 = 3072;
  }

  *v9 = -559038737;
  abort();
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::aNN(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 0x40000000;
    v15 = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIfLi768EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE_block_invoke;
    v16 = &unk_1E8195740;
    v17 = a9;
    operator new();
  }

  v9 = __si_assert_copy_extra_332();
  v10 = v9;
  v11 = "";
  if (v9)
  {
    v11 = v9;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v11);
  free(v10);
  if (__valid_fs(-1))
  {
    v12 = 2989;
  }

  else
  {
    v12 = 3072;
  }

  *v12 = -559038737;
  abort();
}

BOOL IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::restoreUpdateSet(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  vint32 = store_stream_read_vint32(a3);
  if (!vint32)
  {
LABEL_29:
    v5 = 1;
    goto LABEL_33;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v39 = 0;
    v40 = 0;
    v9 = __dst;
    bzero(__dst, 0xC00uLL);
    v37 = 0;
    CIReadPostings(a3, a2, &v39, &v37);
    v10 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 3072 <= v10)
    {
      v12 = 3072;
LABEL_6:
      memcpy(v9, (*(a3 + 6) + v11), v12);
      *(a3 + 5) = v11 + v12;
      goto LABEL_7;
    }

    v21 = *(a3 + 6);
    v22 = v10 - v11;
    if (v10 != v11)
    {
      memcpy(__dst, &v21[v11], v10 - v11);
      *(a3 + 5) = v10;
      v11 = v10;
    }

    v23 = prot_pread(*a3, v21, v11, *(a3 + 3));
    if (v23 != -1)
    {
      *(a3 + 4) = v23;
      *(a3 + 5) = 0;
      v24 = *(a3 + 3) + v23;
      *(a3 + 3) = v24;
      if (!v23)
      {
        goto LABEL_7;
      }

      v9 = &__dst[v22];
      v12 = 3072 - v22;
      if (v12 <= v23)
      {
        v11 = 0;
        goto LABEL_6;
      }

      __offseta = v24;
      v25 = v23;
      while (1)
      {
        v26 = *(a3 + 6);
        v27 = v25;
        memcpy(v9, v26, v25);
        *(a3 + 5) = v27;
        v28 = prot_pread(*a3, v26, v27, __offseta);
        if (v28 == -1)
        {
          break;
        }

        *(a3 + 4) = v28;
        *(a3 + 5) = 0;
        v29 = *(a3 + 3) + v28;
        *(a3 + 3) = v29;
        if (!v28)
        {
          goto LABEL_7;
        }

        __offseta = v29;
        v11 = 0;
        v9 += v27;
        v12 -= v27;
        v25 = v28;
        if (v12 <= v28)
        {
          goto LABEL_6;
        }
      }
    }

    a3[4] = *__error();
LABEL_7:
    v13 = store_stream_read_vint32(a3);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = v39;
    v16 = v40;
    os_unfair_lock_lock((a1 + 144));
    v17 = *(a1 + 120);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(a1 + 136);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock((a1 + 144));
      v19 = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v19 + 384) = v15;
      *(v19 + 385) = v16;
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 144));
      v20 = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v20 + 384) = v15;
      *(v20 + 385) = v16;
    }

    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v7 = *(a1 + 76);
    v8 = *(a1 + 156);
    buf[0] = *(a1 + 160);
    buf[1] = v8;
    *&buf[2] = v7;
    data_map_restore_data(*(a1 + 176), v14, __dst, 0xC00uLL, buf);
    v5 = ++v6 >= vint32;
    if (v6 == vint32)
    {
      goto LABEL_29;
    }
  }

  v30 = *__error();
  v31 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v42 = "restoreUpdateSet";
    v43 = 1024;
    v44 = 3162;
    _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: IVF restoreUpdateSet bad vectorID", buf, 0x12u);
  }

  *__error() = v30;
LABEL_33:
  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t store_stream_read_vint32(unsigned int *a1)
{
  v1 = a1;
  v2 = *(a1 + 5);
  if ((*(a1 + 4) - v2) < 6)
  {
    v16 = 0;
    LODWORD(result) = 0;
    __dst = 0;
    while (1)
    {
      v17 = result;
      v18 = v1;
      if (store_stream_read_bytes(v1, &__dst) != 1)
      {
        break;
      }

      result = ((__dst & 0x7F) << v16) | v17;
      v16 += 7;
      v1 = v18;
      if ((__dst & 0x80) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
    v3 = *(a1 + 6);
    v4 = v2 + 1;
    result = *(v3 + v2);
    if (*(v3 + v2) < 0)
    {
      v6 = v2 + 2;
      v7 = *(v3 + v4);
      v8 = *(v3 + v4);
      if (v7 < 0)
      {
        v9 = v2 + 3;
        v10 = *(v3 + v6);
        v11 = v10;
        if (v10 < 0)
        {
          v12 = v2 + 4;
          v13 = *(v3 + v9);
          v14 = *(v3 + v9);
          if (v13 < 0)
          {
            v15 = *(v3 + v12);
            *(v1 + 5) = v2 + 5;
            if (v15 < 0)
            {
              return ((v14 & 0x7F) << 21) | (v15 << 28) | ((v11 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | (result & 0x7F);
            }

            else
            {
              result = 0;
              v1[4] = 22;
            }
          }

          else
          {
            result = ((v11 & 0x7F) << 14) | (v14 << 21) | ((v8 & 0x7F) << 7) | (result & 0x7F);
            *(v1 + 5) = v12;
          }
        }

        else
        {
          result = ((v8 & 0x7F) << 7) | (v10 << 14) | (result & 0x7F);
          *(v1 + 5) = v9;
        }
      }

      else
      {
        result = result & 0x7F | (v8 << 7);
        *(v1 + 5) = v6;
      }
    }

    else
    {
      *(v1 + 5) = v4;
    }
  }

  return result;
}

_DWORD *IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, float a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v75 = a4;
  v74 = a5;
  if (*(a1 + 144) == 1)
  {
    v53 = __si_assert_copy_extra_332();
    v54 = v53;
    v55 = "";
    if (v53)
    {
      v55 = v53;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2608, "!readOnly", v55);
    goto LABEL_102;
  }

  if (!a2)
  {
    v56 = __si_assert_copy_extra_332();
    v57 = v56;
    v58 = "";
    if (v56)
    {
      v58 = v56;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2609, "vectorId > 0", v58);
    goto LABEL_95;
  }

  Vector = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(a1, a3, &v75, &v74, a2);
  v9 = v75;
  if (v75 == -1)
  {
    v59 = __si_assert_copy_extra_332();
    v54 = v59;
    v60 = "";
    if (v59)
    {
      v60 = v59;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2614, "partID != VECTOR_NOT_FOUND", v60);
    goto LABEL_102;
  }

  if (Vector != -1)
  {
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 32) + 16), Vector, 3092);
    if (Ptr[772] == a2)
    {
      goto LABEL_73;
    }

    v73 = 0;
    data = data_map_get_data(*(a1 + 128), a2, &v73);
    v12 = *__error();
    v13 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *__p = 136316162;
      *&__p[4] = "lookupForInsert";
      v79 = 1024;
      v80 = 2633;
      v81 = 1024;
      *v82 = a2;
      *&v82[4] = 2048;
      *&v82[6] = data;
      v83 = 2048;
      v84 = v73;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
    }

    *__error() = v12;
    if (v73 < 1)
    {
      v19 = *__error();
      v32 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v79 = 1024;
        v80 = 2642;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: vectorId is invalid", __p, 0x12u);
      }

      goto LABEL_45;
    }

    if (v73 == 3072)
    {
      if (!data || !memcmp(data, a3, 0xC00uLL))
      {
LABEL_46:
        v33 = data_map_get_data(*(a1 + 128), Ptr[772], &v73);
        v34 = *__error();
        v35 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v50 = Ptr[772];
          *__p = 136316162;
          *&__p[4] = "lookupForInsert";
          v79 = 1024;
          v80 = 2645;
          v81 = 1024;
          *v82 = v50;
          *&v82[4] = 2048;
          *&v82[6] = v33;
          v83 = 2048;
          v84 = v73;
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
        }

        *__error() = v34;
        if (v73 < 1)
        {
          v42 = *__error();
          v45 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v79 = 1024;
            v80 = 2654;
            _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId is invalid", __p, 0x12u);
          }
        }

        else
        {
          if (v73 != 3072)
          {
            v70 = __si_assert_copy_extra_332();
            v54 = v70;
            v71 = "";
            if (v70)
            {
              v71 = v70;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2647, "size == D * sizeof(ELEM_TYPE)", v71);
            goto LABEL_102;
          }

          v36 = 3072;
          if (!v33 || !memcmp(v33, Ptr, 0xC00uLL))
          {
            goto LABEL_69;
          }

          v37 = *__error();
          v38 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v79 = 1024;
            v80 = 2649;
            _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
          }

          *__error() = v37;
          v39 = *__error();
          v40 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, v33, v73);
            v41 = v82[3] >= 0 ? __p : *__p;
            *buf = 136315138;
            v77 = v41;
            _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
            if ((v82[3] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          *__error() = v39;
          v42 = *__error();
          v43 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, Ptr, v73);
            v44 = v82[3] >= 0 ? __p : *__p;
            *buf = 136315138;
            v77 = v44;
            _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "vector in vector store: %s", buf, 0xCu);
            if ((v82[3] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }

        *__error() = v42;
        v36 = v73;
LABEL_69:
        if (!memcmp(a3, Ptr, v36))
        {
          v46 = *__error();
          v47 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            v51 = Ptr[772];
            *__p = 136315906;
            *&__p[4] = "lookupForInsert";
            v79 = 1024;
            v80 = 2657;
            v81 = 1024;
            *v82 = a2;
            *&v82[4] = 1024;
            *&v82[6] = v51;
            _os_log_fault_impl(&dword_1C278D000, v47, OS_LOG_TYPE_FAULT, "%s:%d: Dup vector with new vectorId=%u old=%u", __p, 0x1Eu);
          }

          *__error() = v46;
          goto LABEL_73;
        }

        v65 = __si_assert_copy_extra_332();
        v54 = v65;
        v66 = "";
        if (v65)
        {
          v66 = v65;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2656, "memcmp(vec.vec, entry->vec.vec, size) == 0", v66);
LABEL_102:
        free(v54);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v14 = *__error();
      v15 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v79 = 1024;
        v80 = 2637;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
      }

      *__error() = v14;
      v16 = *__error();
      v17 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, data, v73);
        v18 = v82[3] >= 0 ? __p : *__p;
        *buf = 136315138;
        v77 = v18;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
        if ((v82[3] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      *__error() = v16;
      v19 = *__error();
      v20 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, a3, v73);
        v21 = v82[3] >= 0 ? __p : *__p;
        *buf = 136315138;
        v77 = v21;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "vector passed in: %s", buf, 0xCu);
        if ((v82[3] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

LABEL_45:
      *__error() = v19;
      goto LABEL_46;
    }

    v67 = __si_assert_copy_extra_332();
    v57 = v67;
    v68 = "";
    if (v67)
    {
      v68 = v67;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2635, "size == D * sizeof(ELEM_TYPE)", v68);
LABEL_95:
    free(v57);
    if (__valid_fs(-1))
    {
      v69 = 2989;
    }

    else
    {
      v69 = 3072;
    }

    *v69 = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 96));
  v22 = *(a1 + 72);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = a3;
  v25 = *(a1 + 80);
  v24 = *(a1 + 88);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v26 = *(a1 + 32);
  OffsetFromEnd = vi_onefixedsize_memory_allocator::allocateOffsetFromEnd(*(v26 + 16), 0xC14u);
  v28 = *(v26 + 24);
  if (OffsetFromEnd != v28)
  {
    v72 = *__error();
    v29 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v52 = *(v26 + 24);
      *__p = 136315906;
      *&__p[4] = "newEntry";
      v79 = 1024;
      v80 = 1909;
      v81 = 2048;
      *v82 = OffsetFromEnd;
      *&v82[8] = 1024;
      *&v82[10] = v52;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: offset: %llu, nVectors: %u", __p, 0x22u);
    }

    *__error() = v72;
    v28 = *(v26 + 24);
    if (OffsetFromEnd != v28)
    {
      v61 = __si_assert_copy_extra_332();
      v57 = v61;
      v62 = "";
      if (v61)
      {
        v62 = v61;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1912, "offset == nVectors", v62);
      goto LABEL_95;
    }
  }

  *(v26 + 24) = v28 + 1;
  v30 = vi_onefixedsize_memory_allocator::getPtr(*(v26 + 16), OffsetFromEnd, 3092);
  memcpy(v30, v23, 0xC00uLL);
  *(v30 + 3072) = 0u;
  *(v30 + 3088) = a2;
  if (*(v26 + 24) == 1)
  {
    *(v26 + 36) = a2;
  }

  *(v26 + 40) = a2;
  (*(*v25 + 56))(v25, v9, OffsetFromEnd, v74);
  v31 = *(a1 + 32);
  if (v25[18] != *(v31 + 24))
  {
    v63 = __si_assert_copy_extra_332();
    v54 = v63;
    v64 = "";
    if (v63)
    {
      v64 = v63;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2619, "cur.partitions->nVectors() == vectors->count()", v64);
    goto LABEL_102;
  }

  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v31 + 16), OffsetFromEnd, 3092);
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_73:
  v48 = *MEMORY[0x1E69E9840];
  return Ptr;
}

uint64_t IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, int a5)
{
  os_unfair_lock_lock((a1 + 96));
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v14 = *a3;
  if (v14 == -1)
  {
    if (*(a1 + 140) != -1)
    {
      v19 = __si_assert_copy_extra_332();
      v20 = v19;
      v21 = "";
      if (v19)
      {
        v21 = v19;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2574, "mergeBeginVectorOffset == VECTOR_NOT_FOUND", v21);
      free(v20);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    (*(*v11 + 80))(&v35, v11, a2, 1);
    v15 = v35;
    if (v36 - v35 != 8)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2576, "topPartition.size() == 1", v24);
      free(v23);
      if (__valid_fs(-1))
      {
        v25 = 2989;
      }

      else
      {
        v25 = 3072;
      }

      *v25 = -559038737;
      abort();
    }

    v16 = *v35;
    *a3 = *v35;
    *a4 = v15[1];
    if (v16 >= _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1))
    {
      v26 = __si_assert_copy_extra_332();
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = "";
      }

      v29 = *a3;
      v30 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v31 = v13[19];
      v32 = (*(*v11 + 16))(v11);
      __message_assert("%s:%u: failed assertion '%s' %s Invalid partId %u >= %u (partitions: v%u quantizer v%u", "IVFVectorIndex.hh", 2581, "partID < nPartitions()", v28, v29, v30, v31, v32);
      free(v27);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v14 = *a3;
  }

  v35 = 0;
  v36 = &v35;
  v38 = -1;
  v37 = 0x2000000000;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 0x40000000;
  v33[2] = ___ZN22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIfLi768EERjRfj_block_invoke;
  v33[3] = &unk_1E8195660;
  v34 = a5;
  v33[6] = a4;
  v33[7] = a2;
  v33[4] = &v35;
  v33[5] = a1;
  (*(*v13 + 80))(v13, v14, v33);
  v17 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return v17;
}

unint64_t ___ZN22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIfLi768EERjRfj_block_invoke(unint64_t result, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(result + 40);
  v5 = *a3;
  if (v5 >= *(v4 + 140))
  {
    goto LABEL_12;
  }

  v7 = result;
  v8 = **(result + 48);
  v9 = a3[1];
  v10 = v8 == v9;
  v11 = vabds_f32(v8, v9);
  v12 = fmaxf(fminf(fabsf(v9), fabsf(v8)) * 0.000015259, 0.000015259);
  if (v10 || v11 <= v12)
  {
    v14 = a4;
    v15 = *(result + 64);
    if (v15)
    {
      result = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 3092);
      if (v15 != *(result + 3088))
      {
        return result;
      }

      *&v5 = *a3;
    }

    v16 = *(v7 + 56);
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 3092);
    result = memcmp(v16, Ptr, 0xC00uLL);
    if (!result)
    {
      *(*(*(v7 + 32) + 8) + 24) = *a3;
      a4 = v14;
LABEL_12:
      *a4 = 1;
    }
  }

  return result;
}

size_t store_stream_read_bytes(unsigned int *a1, char *__dst)
{
  v2 = __dst;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  if (v5 + 1 > v4)
  {
    v6 = v4 - v5;
    if (v4 != v5)
    {
      memcpy(__dst, (*(a1 + 6) + v5), v4 - v5);
      v4 = *(a1 + 4);
      *(a1 + 5) += v6;
    }

    v10 = prot_pread(*a1, *(a1 + 6), v4, *(a1 + 3));
    if (v10 == -1)
    {
      v6 = 0;
    }

    else
    {
      *(a1 + 4) = v10;
      *(a1 + 5) = 0;
      *(a1 + 3) += v10;
      if (!v10)
      {
        v8 = 0;
        return v6 + v8;
      }

      v2 += v6;
      v7 = 1 - v6;
      if (1 - v6 <= v10)
      {
        v5 = 0;
        goto LABEL_3;
      }

      __n = v10;
      while (1)
      {
        memcpy(v2, *(a1 + 6), __n);
        v11 = *(a1 + 6);
        *(a1 + 5) += __n;
        v12 = prot_pread(*a1, v11, *(a1 + 4), *(a1 + 3));
        if (v12 == -1)
        {
          break;
        }

        *(a1 + 4) = v12;
        *(a1 + 5) = 0;
        *(a1 + 3) += v12;
        if (!v12)
        {
          v8 = v6;
          v6 = __n;
          return v6 + v8;
        }

        v5 = 0;
        v2 += __n;
        v7 -= __n;
        v6 += __n;
        __n = v12;
        if (v7 <= v12)
        {
          goto LABEL_3;
        }
      }
    }

    a1[4] = *__error();
    v8 = v6;
    v6 = 0;
    return v6 + v8;
  }

  v6 = 0;
  v7 = 1;
LABEL_3:
  memcpy(v2, (*(a1 + 6) + v5), v7);
  *(a1 + 5) += v7;
  v8 = v6;
  v6 = v7;
  return v6 + v8;
}

void *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::storeUpdateSet(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = store_stream_write_vint32(a3, *(*(a1 + 80) + 24));
  v7 = 0;
  v8 = *(a1 + 80);
  v9 = v8;
  while (v7 != *(v9 + 24))
  {
    v10 = IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator*(v8, v7);
    CIWritePostings(a3, a2, 0, (v10 + 3072), 0, 0);
    v12 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 3072 >= v12)
    {
      v14 = 3072;
      v13 = v10;
      while (1)
      {
        v15 = v12 - v11;
        v16 = v13;
        memcpy((*(a3 + 6) + v11), v13, v12 - v11);
        *(a3 + 5) += v15;
        if (store_stream_flush(a3, 0))
        {
          break;
        }

        v13 = &v16[v15];
        v14 -= v15;
        v12 = *(a3 + 4);
        v11 = *(a3 + 5);
        if (v11 + v14 < v12)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      v13 = v10;
      v14 = 3072;
LABEL_5:
      memcpy((*(a3 + 6) + v11), v13, v14);
      *(a3 + 5) += v14;
    }

    result = store_stream_write_vint32(a3, *(v10 + 3088));
    ++v7;
    v9 = *(a1 + 80);
    if (v8 != v9)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1953, "store == other.store", v19);
      free(v18);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return result;
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::rename(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = a2;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "rename: %s", &buf, 0xCu);
  }

  *__error() = v4;
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&buf, a2, v6);
  }

  buf.__r_.__value_.__s.__data_[v7] = 0;
  v21 = 11;
  strcpy(__s, ".partitions");
  memset(&__p, 0, sizeof(__p));
  v8 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = buf;
  }

  std::string::append(&__p, __s, 0xBuLL);
  if (v21 < 0)
  {
    operator delete(*__s);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_14:
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*v11 + 160))(v11, p_p);
  v13 = *(a1 + 80);
  memset(&buf, 0, sizeof(buf));
  if (*(v13 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *(v13 + 48), *(v13 + 56));
  }

  else
  {
    buf = *(v13 + 48);
  }

  MEMORY[0x1C691FAE0](v13 + 48, a2);
  v14 = *__error();
  v15 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__s, v13);
    v17 = v21 >= 0 ? __s : *__s;
    *v22 = 136315394;
    v23 = v16;
    v24 = 2080;
    v25 = v17;
    _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "rename VectorStore %s -> %s", v22, 0x16u);
    if (v21 < 0)
    {
      operator delete(*__s);
    }
  }

  *__error() = v14;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_43:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_44:
  v18 = *MEMORY[0x1E69E9840];
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::makePurgeable(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *__error();
  v4 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v2);
    v5 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v5;
    _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "makePurgeable VectorStore %s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v3;
  os_unfair_lock_lock((a1 + 144));
  v6 = *(a1 + 120);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v8 + 128))(v8);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else if (!v6)
  {
LABEL_15:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

  (v6->__on_zero_shared)(v6);
  v10 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v6);
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::makeReadOnly(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 192))
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(16);
    v3 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v2, (dword_1EBF46B0C < 3)))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* call makeReadOnly on readOnly index.", __p, 2u);
    }

    *__error() = v1;
    goto LABEL_19;
  }

  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(a1 + 48, 0);
  v5 = *(a1 + 80);
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(v5);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v5);
    v8 = v15 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v17 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "makeReadOnly VectorStore %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v11 + 120))(v11);
  *(a1 + 192) = 1;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else if (!v9)
  {
LABEL_19:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v9->__on_zero_shared)(v9);
  v13 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v9);
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::truncate(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(16);
    v3 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v2, (dword_1EBF46B0C < 3)))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* call truncate on readOnly index.", v8, 2u);
    }

    *__error() = v1;
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(a1 + 48, 0);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(*(a1 + 80));
    os_unfair_lock_lock((a1 + 144));
    v5 = *(a1 + 120);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 128);
    v6 = *(a1 + 136);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 144));
    (*(*v7 + 136))(v7);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (!v5)
      {
        return;
      }
    }

    else if (!v5)
    {
      return;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::unlink(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v4 + 184))(v4);
  v5 = *(a1 + 80);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v5);
    v8 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "unlink VectorStore %s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::subvert(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 144));
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  os_unfair_lock_lock((a2 + 144));
  v7 = *(a2 + 120);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 128);
  v8 = *(a2 + 136);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a2 + 144));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  (*(*v6 + 176))(v6, v9);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::compactForTest(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "compactForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::compactForTest<vi_onefixedsize_disk_allocator>(a1 + 48, a2 + 48);
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

int *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::compact(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  v6 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = (*(*a1 + 24))(a1);
    v9 = (*(*a2 + 16))(a2);
    v10 = (*(*a2 + 24))(a2);
    *buf = 67109888;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "compact %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
  }

  result = __error();
  *result = v4;
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::dump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v22[0] = v12;
  v22[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
  }

  v14 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZNK22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E8195688;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; (v18)(v17, &v31, &i))
  {
    IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::enumerator_s::next(&v28, &v25);
    v31 = v28;
    v32 = v29;
    if (!v29)
    {
      break;
    }
  }

  std::queue<std::shared_ptr<AnyPartitionStore::Enumerator>>::~queue(v27);
  v15 = *(&v26 + 1);
  if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void ___ZNK22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke()
{
  v0 = __si_assert_copy_extra_332();
  v1 = v0;
  v2 = "";
  if (v0)
  {
    v2 = v0;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2544, "0", v2);
  free(v1);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::mergeIndexForTest(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeIndexForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10enumeratorEv(a2 + 48);
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    v14 = 2989;
  }

  else
  {
    v14 = 3072;
  }

  *v14 = -559038737;
  abort();
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::mergeUpdateSetForTest(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeUpdateSetForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    v14 = 2989;
  }

  else
  {
    v14 = 3072;
  }

  *v14 = -559038737;
  abort();
}

_DWORD *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::mergeUpdateSet(_DWORD *result, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (result[2] != *(a2 + 8) || (v5 = result, *(result + 10) != *(a2 + 20)) || result[3] != *(a2 + 12) || result[4] != *(a2 + 16))
  {
    v17 = __si_assert_copy_extra_332();
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      v20 = 2989;
    }

    else
    {
      v20 = 3072;
    }

    *v20 = -559038737;
    abort();
  }

  if (dword_1EBF46B0C >= 5)
  {
    v21 = a2;
    v28 = a4;
    v22 = *__error();
    v23 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = (*(*v5 + 16))(v5);
      v25 = (*(*v5 + 24))(v5);
      v26 = (*(*v21 + 16))(v21);
      v27 = (*(*v21 + 24))(v21);
      __dst[0] = 67109888;
      __dst[1] = v24;
      LOWORD(__dst[2]) = 1024;
      *(&__dst[2] + 2) = v25;
      HIWORD(__dst[3]) = 1024;
      __dst[4] = v26;
      LOWORD(__dst[5]) = 1024;
      *(&__dst[5] + 2) = v27;
      _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "mergeUpdateSet(DocID) %u vectors in %u partitions and %u vectors in %u partitions", __dst, 0x1Au);
    }

    result = __error();
    *result = v22;
    a4 = v28;
    a2 = v21;
  }

  v7 = 0;
  v8 = *(a2 + 80);
  v9 = a4;
  while (v7 != *(v8 + 24))
  {
    v13 = *(IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7) + 3088);
    v14 = IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7);
    memcpy(__dst, v14, sizeof(__dst));
    v15 = IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7);
    if (*(v15 + 3072))
    {
      if (*(v15 + 3076))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = a5;
    }

    else
    {
      v10 = 0;
      v11 = v9;
    }

    v12 = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((v5 + 12), v13, __dst, 0xFFFFFFFF, 3.4028e38);
    result = vi_memory_postings::push_posting(a3, v10, v12 + 768, v11);
    ++v7;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

char *vi_memory_postings::push_posting(char *result, int a2, unsigned int *__src, uint64_t a4)
{
  v7 = *__src & 1;
  if (__src[2])
  {
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = (result + 12);
    v10 = atomic_load(result + 3);
    v11 = v10 + v8;
    v12 = *(result + 2);
    if (v11 >= v12)
    {
      v18 = 2 * v12;
      if (!v12)
      {
        v18 = 0x4000;
      }

      *(result + 2) = v18;
      v19 = result;
      v20 = my_vm_reallocate(result, 12 * v12, 12 * v18, 0xF3u, *(result + 2));
      result = v19;
      if (v20)
      {
        v21 = __si_assert_copy_extra_332();
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "DocPosting.h", 250, "0 == kr", v23);
        free(v22);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    add = atomic_fetch_add(v9, v8);
    v14 = (*result + 12 * add);
    if (v7)
    {
      v15 = 16;
    }

    else
    {
      v15 = 12;
    }

    result = memcpy(v14, __src, v15);
    v7 = 2 * add;
  }

  if (a2)
  {
    v16 = v7 | 1;
    *(__src + 1) = a4;
    v17 = 2 * (a2 != 2);
  }

  else
  {
    __src[2] = a4;
    v16 = v7 & 0xFFFFFFFE;
    v17 = 1;
  }

  *__src = v16;
  __src[1] = v17;
  return result;
}