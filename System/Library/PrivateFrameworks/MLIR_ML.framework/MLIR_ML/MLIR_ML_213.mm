void std::__function::__func<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1},std::allocator<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1}>,llvm::Expected<std::unique_ptr<llvm::CachedFileStream>> ()(unsigned int,llvm::Twine const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1},std::allocator<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1}>,llvm::Expected<std::unique_ptr<llvm::CachedFileStream>> ()(unsigned int,llvm::Twine const&)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1},std::allocator<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1}>,llvm::Expected<std::unique_ptr<llvm::CachedFileStream>> ()(unsigned int,llvm::Twine const&)>::operator()(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v33 = 261;
  v2 = a1[2];
  v30 = a1[1];
  *&v31 = v2;
  *&v16.__val_ = llvm::sys::fs::create_directories(&v30, 1, 504);
  v16.__cat_ = v3;
  if (v16.__val_)
  {
    v4 = a1[1];
    v5 = a1[2];
    v20 = "can't create cache directory ";
    v22 = v4;
    v23 = v5;
    v24 = 1283;
    v25[0] = &v20;
    v25[2] = ": ";
    LOWORD(v26) = 770;
    std::error_code::message(&__dst, &v16);
    v30 = v25;
    *(&v31 + 1) = &__dst;
    v33 = 1026;
    llvm::Twine::str(&v30, __p);
    llvm::createStringError();
  }

  v30 = &v32;
  v31 = xmmword_257370CF0;
  LOWORD(v26) = 261;
  v6 = a1[2];
  v25[0] = *(a1 + 1);
  v25[1] = v6;
  v7 = a1[12];
  v8 = a1[13];
  v24 = 773;
  v20 = v7;
  v21 = v8;
  v22 = "-%%%%%%.tmp.o";
  v29 = 257;
  v19 = 257;
  llvm::sys::path::append(&v30, v25, &v20, __p, &__dst);
  v24 = 261;
  v20 = v30;
  v21 = v31;
  llvm::sys::fs::TempFile::create(&v20, 384, 0, v25);
  if (v27)
  {
    std::generic_category();
    v9 = v25[0];
    v25[0] = 0;
    v14 = v9;
    llvm::toString(&v14, &v15);
    v10 = std::string::append(&v15, ": ");
    v11 = v10->__r_.__value_.__r.__words[2];
    v16 = *&v10->__r_.__value_.__l.__data_;
    v17 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = a1[23];
    v13 = a1[24];
    __p[0] = &v16;
    __p[2] = v12;
    __p[3] = v13;
    v29 = 1284;
    v20 = __p;
    v22 = ": Can't get a temporary file";
    v24 = 770;
    llvm::Twine::str(&v20, &__dst);
    llvm::createStringError();
  }

  operator new();
}

uint64_t std::__function::__func<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1},std::allocator<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1}>,llvm::Expected<std::unique_ptr<llvm::CachedFileStream>> ()(unsigned int,llvm::Twine const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4llvm10localCacheERKNS_5TwineES2_S2_NSt3__18functionIFvjS2_NS3_10unique_ptrINS_12MemoryBufferENS3_14default_deleteIS6_EEEEEEEENK3$_0clEjNS_9StringRefES2_EUlmS2_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4llvm10localCacheERKNS_5TwineES2_S2_NSt3__18functionIFvjS2_NS3_10unique_ptrINS_12MemoryBufferENS3_14default_deleteIS6_EEEEEEEENK3$_0clEjNS_9StringRefES2_EUlmS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4llvm10localCacheERKNS_5TwineES2_S2_NSt3__18functionIFvjS2_NS3_10unique_ptrINS_12MemoryBufferENS3_14default_deleteIS6_EEEEEEEENK3$_0clEjNS_9StringRefES2_EUlmS2_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4llvm10localCacheERKNS_5TwineES2_S2_NSt3__18functionIFvjS2_NS3_10unique_ptrINS_12MemoryBufferENS3_14default_deleteIS6_EEEEEEEENK3$_0clEjNS_9StringRefES2_EUlmS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1}::StringRef(uint64_t a1, uint64_t a2)
{
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_257370CF0;
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 >= 0x41)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      memcpy((a1 + 24), *a2, *(a2 + 8));
      *(a1 + 8) = v4;
    }
  }

  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = xmmword_257370CF0;
  if (a1 != a2)
  {
    v5 = *(a2 + 96);
    if (v5)
    {
      if (v5 >= 0x41)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      memcpy((a1 + 112), *(a2 + 88), *(a2 + 96));
      *(a1 + 96) = v5;
    }
  }

  *(a1 + 176) = a1 + 200;
  *(a1 + 184) = xmmword_257370CF0;
  if (a1 != a2)
  {
    v6 = *(a2 + 184);
    if (v6)
    {
      if (v6 >= 0x41)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      memcpy((a1 + 200), *(a2 + 176), *(a2 + 184));
      *(a1 + 184) = v6;
    }
  }

  v7 = *(a2 + 288);
  if (!v7)
  {
    v9 = (a1 + 320);
    *(a1 + 288) = 0;
    *(a1 + 296) = a1 + 320;
    *(a1 + 304) = xmmword_257370CF0;
    if (a1 != a2)
    {
      goto LABEL_23;
    }

    return a1;
  }

  if (v7 == a2 + 264)
  {
    *(a1 + 288) = a1 + 264;
    (*(**(a2 + 288) + 24))(*(a2 + 288));
    v9 = (a1 + 320);
    *(a1 + 296) = a1 + 320;
    *(a1 + 304) = xmmword_257370CF0;
    if (a1 != a2)
    {
      goto LABEL_23;
    }

    return a1;
  }

  v8 = (*(*v7 + 16))(v7);
  v9 = (a1 + 320);
  *(a1 + 288) = v8;
  *(a1 + 296) = a1 + 320;
  *(a1 + 304) = xmmword_257370CF0;
  if (a1 == a2)
  {
    return a1;
  }

LABEL_23:
  v11 = *(a2 + 304);
  if (!v11)
  {
    return a1;
  }

  if (v11 >= 0x41)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  memcpy(v9, *(a2 + 296), *(a2 + 304));
  *(a1 + 304) = v11;
  return a1;
}

void std::__function::__alloc_func<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1},std::allocator<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::{lambda(unsigned long,llvm::Twine const&)#1}>,llvm::Expected<std::unique_ptr<llvm::CachedFileStream>> ()(unsigned int,llvm::Twine const&)>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2 != (a1 + 320))
  {
    free(v2);
  }

  v3 = *(a1 + 288);
  if (v3 == a1 + 264)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 176);
    if (v4 != (a1 + 200))
    {
LABEL_7:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 176);
    if (v4 != (a1 + 200))
    {
      goto LABEL_7;
    }
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 112))
  {
    free(v5);
  }

  v6 = *a1;
  if (*a1 != a1 + 24)
  {

    free(v6);
  }
}

uint64_t llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::CacheStream::~CacheStream(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  *a1 = &unk_28689EC80;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 104);
  v46 = 260;
  v45[0] = (a1 + 16);
  llvm::MemoryBuffer::getOpenFile(v3, v45, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 0, v47);
  if (v48)
  {
    v40[0] = "Failed to open new cache file ";
    v41 = 259;
    v39 = 260;
    v38[0] = a1 + 80;
    llvm::operator+(v40, v38, v42);
    v36[0] = ": ";
    v37 = 259;
    llvm::operator+(v42, v36, v43);
    *&v27.__val_ = llvm::ErrorOr<std::unique_ptr<llvm::MemoryBuffer>>::getError(v47);
    v27.__cat_ = v20;
    std::error_code::message(&v29, &v27);
    v35 = 260;
    v34[0] = &v29;
    llvm::operator+(v43, v34, v44);
    v32[0] = "\n";
    v33 = 259;
    llvm::operator+(v44, v32, v45);
    llvm::report_fatal_error(v45, 1);
  }

  v46 = 260;
  v45[0] = (a1 + 16);
  llvm::sys::fs::TempFile::keep((a1 + 72), v45, v4, &v31);
  v5 = v31;
  v31 = 0;
  v45[0] = v47;
  v45[1] = a1;
  if (v5)
  {
    if ((*(*v5 + 48))(v5, &llvm::ErrorList::ID))
    {
      v36[0] = 0;
      v6 = v5[1];
      v7 = v5[2];
      if (v6 != v7)
      {
        v8 = 0;
        do
        {
          v43[0] = v8;
          v9 = *v6;
          *v6 = 0;
          v40[0] = v9;
          llvm::handleErrorImpl<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::CacheStream::~CacheStream()::{lambda(llvm::ECError const&)#1}>(v42, v40, v45);
          llvm::ErrorList::join(v43, v42, v44);
          v8 = v44[0];
          v44[0] = 0;
          if (v42[0])
          {
            (*(*v42[0] + 8))(v42[0]);
          }

          v10 = v40[0];
          v40[0] = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v43[0])
          {
            (*(*v43[0] + 8))(v43[0]);
          }

          ++v6;
        }

        while (v6 != v7);
        v36[0] = v8;
      }
    }

    else
    {
      v38[0] = v5;
      llvm::handleErrorImpl<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::CacheStream::~CacheStream()::{lambda(llvm::ECError const&)#1}>(v36, v38, v45);
      v5 = v38[0];
      if (!v38[0])
      {
        goto LABEL_19;
      }
    }

    (*(*v5 + 8))(v5);
LABEL_19:
    v31 = v36[0];
    if (v36[0])
    {
      v36[0] = "Failed to rename temporary file ";
      v37 = 259;
      v35 = 260;
      v34[0] = a1 + 80;
      llvm::operator+(v36, v34, v38);
      v32[0] = " to ";
      v33 = 259;
      llvm::operator+(v38, v32, v40);
      v30 = 260;
      v29.__r_.__value_.__r.__words[0] = a1 + 16;
      llvm::operator+(v40, &v29, v42);
      *&v27.__val_ = ": ";
      v28 = 259;
      llvm::operator+(v42, &v27.__val_, v43);
      v23 = v31;
      v31 = 0;
      llvm::toString(&v23, &v24);
      v26 = 260;
      v25 = &v24;
      llvm::operator+(v43, &v25, v44);
      v21 = "\n";
      v22 = 259;
      llvm::operator+(v44, &v21, v45);
      llvm::report_fatal_error(v45, 1);
    }
  }

  v11 = *(a1 + 136);
  v46 = 260;
  v45[0] = (a1 + 112);
  v12 = v47[0];
  v47[0] = 0;
  v44[0] = v12;
  LODWORD(v43[0]) = v11;
  v13 = *(a1 + 64);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v13 + 48))(v13, v43, v45, v44);
  v14 = v44[0];
  v44[0] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if ((v48 & 1) == 0)
  {
    v15 = v47[0];
    v47[0] = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = a1 + 40;
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    llvm::sys::fs::TempFile::~TempFile((a1 + 72));
    v17 = *(a1 + 64);
    if (v17 != v16)
    {
      goto LABEL_30;
    }

LABEL_37:
    (*(*v17 + 32))(v17);
    *a1 = &unk_28689ECC8;
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_38:
    operator delete(*(a1 + 16));
    v18 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (!v18)
    {
      return a1;
    }

    goto LABEL_34;
  }

  operator delete(*(a1 + 112));
  llvm::sys::fs::TempFile::~TempFile((a1 + 72));
  v17 = *(a1 + 64);
  if (v17 == v16)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  *a1 = &unk_28689ECC8;
  if (*(a1 + 39) < 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  v18 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v18)
  {
LABEL_34:
    (*(*v18 + 8))(v18);
  }

  return a1;
}

void llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::CacheStream::~CacheStream(uint64_t a1)
{
  llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::CacheStream::~CacheStream(a1);

  JUMPOUT(0x259C63180);
}

void llvm::CachedFileStream::~CachedFileStream(void **this)
{
  *this = &unk_28689ECC8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_28689ECC8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::handleErrorImpl<llvm::localCache(llvm::Twine const&,llvm::Twine const&,llvm::Twine const&,std::function<void ()(unsigned int,llvm::Twine const&,std::unique_ptr<llvm::MemoryBuffer>)>)::$_0::operator() const(unsigned int,llvm::StringRef,llvm::Twine const&)::CacheStream::~CacheStream()::{lambda(llvm::ECError const&)#1}>(void *a1, void *a2, uint64_t **a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ECError::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = a3[1];
    v9 = (*(*v7 + 32))(v7);
    v11 = v10;
    if (std::generic_category() == v10 && v9 == 13)
    {
      v14 = **a3;
      v15 = *(v14 + 8);
      v16 = *(v14 + 16) - v15;
      v25 = 260;
      v24[0] = (v8 + 2);
      llvm::MemoryBuffer::getMemBufferCopy(v15, v16, v24, 0, &v26);
      v17 = v26;
      v26 = 0;
      v18 = *a3;
      v19 = *(v18 + 16);
      if ((v19 & 1) == 0)
      {
        v20 = *v18;
        *v18 = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
          v19 = *(v18 + 16);
        }
      }

      *(v18 + 16) = v19 & 0xFE;
      *v18 = v17;
      llvm::sys::fs::TempFile::discard((v8 + 9), &v23);
      v21 = v23;
      v23 = 0;
      v27 = v21;
      llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v27, v24);
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      *a1 = 0;
      v22 = v26;
      v26 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    else
    {
      *&v12.__val_ = v11;
      llvm::errorCodeToError(v9, v12, a1);
    }

    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

void *llvm::circular_raw_ostream::write_impl(void *this, const char *a2, size_t a3)
{
  v3 = a3;
  v5 = this;
  v6 = this[8];
  if (v6)
  {
    if (a3)
    {
      v7 = this[9];
      this = this[10];
      do
      {
        v8 = v6 - this + v7;
        if (v8 >= v3)
        {
          v9 = v3;
        }

        else
        {
          v9 = v8;
        }

        memcpy(this, a2, v9);
        v7 = v5[9];
        this = (v5[10] + v9);
        v5[10] = this;
        v6 = v5[8];
        if (this == (v7 + v6))
        {
          v5[10] = v7;
          *(v5 + 88) = 1;
          this = v7;
        }

        v3 -= v9;
      }

      while (v3);
    }
  }

  else
  {
    v10 = this[6];

    return llvm::raw_ostream::write(v10, a2, a3);
  }

  return this;
}

void *llvm::circular_raw_ostream::flushBufferWithBanner(void *this)
{
  if (this[8])
  {
    v1 = this;
    v2 = this[6];
    v3 = this[12];
    v4 = strlen(v3);
    llvm::raw_ostream::write(v2, v3, v4);
    if (*(v1 + 88) == 1)
    {
      llvm::raw_ostream::write(v1[6], v1[10], v1[9] + v1[8] - v1[10]);
    }

    this = llvm::raw_ostream::write(v1[6], v1[9], v1[10] - v1[9]);
    v1[10] = v1[9];
    *(v1 + 88) = 0;
  }

  return this;
}

void llvm::circular_raw_ostream::~circular_raw_ostream(const char **this)
{
  llvm::circular_raw_ostream::~circular_raw_ostream(this);

  JUMPOUT(0x259C63180);
}

{
  *this = &unk_28689ED08;
  if (this[4] != this[2])
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  if (this[8])
  {
    v2 = strlen(this[12]);
    llvm::raw_ostream::write(this[6], this[12], v2);
    if (*(this + 88) == 1)
    {
      llvm::raw_ostream::write(this[6], this[10], &this[8][this[9]] - this[10]);
    }

    llvm::raw_ostream::write(this[6], this[9], this[10] - this[9]);
    this[10] = this[9];
    *(this + 88) = 0;
  }

  v3 = this[6];
  if (v3 && *(this + 56) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[9];
  if (v4)
  {
    MEMORY[0x259C63150](v4, 0x1000C8077774924);
  }

  llvm::raw_ostream::~raw_ostream(this);
}

void *llvm::operator<<(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(&v11, 0, sizeof(v11));
  __t.__d_.__rep_ = a2 / 1000;
  __t.__d_.__rep_ = std::chrono::system_clock::to_time_t(&__t);
  localtime_r(&__t.__d_.__rep_, &v11);
  strftime(__s, 0x14uLL, "%Y-%m-%d %H:%M:%S", &v11);
  v4 = strlen(__s);
  v5 = a1;
  v6 = *(a1 + 32);
  if (v4 <= *(a1 + 24) - v6)
  {
    if (v4)
    {
      memcpy(*(a1 + 32), __s, v4);
      v5 = a1;
      v6 = (*(a1 + 32) + v4);
      *(a1 + 32) = v6;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(a1, __s, v4);
    v6 = *(v5 + 4);
  }

  if (v6 >= *(v5 + 3))
  {
    v5 = llvm::raw_ostream::write(v5, 46);
  }

  else
  {
    *(v5 + 4) = v6 + 1;
    *v6 = 46;
  }

  __t.__d_.__rep_ = &unk_28689ED98;
  v9 = "%.9lu";
  v10 = a2 % 1000000000;
  return llvm::raw_ostream::operator<<(v5, &__t);
}

void llvm::format_provider<std::chrono::time_point<llvm::sys::UtcClock,std::chrono::duration<long long,std::ratio<1l,1l>>>,void>::format(uint64_t *a1, void *a2, const char *a3, unint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  memset(&v20, 0, sizeof(v20));
  __t.__d_.__rep_ = 1000000 * v7;
  __t.__d_.__rep_ = std::chrono::system_clock::to_time_t(&__t);
  gmtime_r(&__t.__d_.__rep_, &v20);
  __p[0] = 0;
  __p[1] = 0;
  if (!a4)
  {
    a3 = "%Y-%m-%d %H:%M:%S.%N";
  }

  v30 = 0;
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 20;
  }

  v22 = 0;
  v26 = 0;
  v27 = 1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = &unk_2868A3EF8;
  v28 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v21, 0, 0, 0);
  v9 = 0;
  v10 = 0;
  do
  {
    v12 = a3[v9];
    v11 = (v10 + 1);
    if (v12 == 37 && v8 > v11)
    {
      v15 = a3[v11];
      if (v15 > 0x4D)
      {
        if (v15 == 78)
        {
          v32 = "%.9lu";
          goto LABEL_26;
        }

        if (v15 == 102)
        {
          v32 = "%.6lu";
          goto LABEL_26;
        }
      }

      else
      {
        if (v15 == 37)
        {
          if (v24 - v25 > 1)
          {
            *v25++ = 9509;
          }

          else
          {
            llvm::raw_ostream::write(&v21, "%%", 2uLL);
          }

          goto LABEL_9;
        }

        if (v15 == 76)
        {
          v32 = "%.3lu";
LABEL_26:
          __t.__d_.__rep_ = &unk_28689ED98;
          v33 = 0;
          llvm::raw_ostream::operator<<(&v21, &__t);
          goto LABEL_9;
        }
      }
    }

    v14 = v25;
    if (v25 < v24)
    {
      v25 = (v25 + 1);
      *v14 = v12;
    }

    else
    {
      llvm::raw_ostream::write(&v21, v12);
    }

    LODWORD(v11) = v10;
LABEL_9:
    v9 = (v11 + 1);
    v10 = v11 + 1;
  }

  while (v8 > v9);
  if (v25 != v23)
  {
    llvm::raw_ostream::flush_nonempty(&v21);
  }

  if (v30 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  p_t = &__t;
  if (!strftime(&__t, 0x100uLL, v16, &v20))
  {
    p_t = "BAD-DATE-FORMAT";
  }

  v18 = strlen(p_t);
  v19 = a2[4];
  if (v18 <= a2[3] - v19)
  {
    if (v18)
    {
      memcpy(v19, p_t, v18);
      a2[4] += v18;
    }
  }

  else
  {
    llvm::raw_ostream::write(a2, p_t, v18);
  }

  llvm::raw_ostream::~raw_ostream(&v21);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }
}

void llvm::format_provider<std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,void>::format(void *a1, void *a2, const char *a3, unint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = *a1 / 1000000000;
  v8 = *a1 % 1000000000;
  memset(&v21, 0, sizeof(v21));
  __t.__d_.__rep_ = 1000000 * v7;
  __t.__d_.__rep_ = std::chrono::system_clock::to_time_t(&__t);
  localtime_r(&__t.__d_.__rep_, &v21);
  __p[0] = 0;
  __p[1] = 0;
  if (!a4)
  {
    a3 = "%Y-%m-%d %H:%M:%S.%N";
  }

  v31 = 0;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = 20;
  }

  v23 = 0;
  v27 = 0;
  v28 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v22 = &unk_2868A3EF8;
  v29 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v22, 0, 0, 0);
  v10 = 0;
  v11 = 0;
  do
  {
    v13 = a3[v10];
    v12 = (v11 + 1);
    if (v13 == 37 && v9 > v12)
    {
      v16 = a3[v12];
      if (v16 > 0x4D)
      {
        if (v16 == 78)
        {
          __t.__d_.__rep_ = &unk_28689ED98;
          v33 = "%.9lu";
          v34 = v8;
          goto LABEL_26;
        }

        if (v16 == 102)
        {
          __t.__d_.__rep_ = &unk_28689ED98;
          v33 = "%.6lu";
          v34 = v8 / 1000;
          goto LABEL_26;
        }
      }

      else
      {
        if (v16 == 37)
        {
          if (v25 - v26 > 1)
          {
            *v26++ = 9509;
          }

          else
          {
            llvm::raw_ostream::write(&v22, "%%", 2uLL);
          }

          goto LABEL_9;
        }

        if (v16 == 76)
        {
          __t.__d_.__rep_ = &unk_28689ED98;
          v33 = "%.3lu";
          v34 = v8 / 1000000;
LABEL_26:
          llvm::raw_ostream::operator<<(&v22, &__t);
          goto LABEL_9;
        }
      }
    }

    v15 = v26;
    if (v26 < v25)
    {
      v26 = (v26 + 1);
      *v15 = v13;
    }

    else
    {
      llvm::raw_ostream::write(&v22, v13);
    }

    LODWORD(v12) = v11;
LABEL_9:
    v10 = (v12 + 1);
    v11 = v12 + 1;
  }

  while (v9 > v10);
  if (v26 != v24)
  {
    llvm::raw_ostream::flush_nonempty(&v22);
  }

  if (v31 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  p_t = &__t;
  if (!strftime(&__t, 0x100uLL, v17, &v21))
  {
    p_t = "BAD-DATE-FORMAT";
  }

  v19 = strlen(p_t);
  v20 = a2[4];
  if (v19 <= a2[3] - v20)
  {
    if (v19)
    {
      memcpy(v20, p_t, v19);
      a2[4] += v19;
    }
  }

  else
  {
    llvm::raw_ostream::write(a2, p_t, v19);
  }

  llvm::raw_ostream::~raw_ostream(&v22);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }
}

double llvm::CodeGenCoverage::CodeGenCoverage(llvm::CodeGenCoverage *this)
{
  *this = this + 16;
  *&result = 0x600000000;
  *(this + 1) = 0x600000000;
  *(this + 16) = 0;
  return result;
}

{
  *this = this + 16;
  *&result = 0x600000000;
  *(this + 1) = 0x600000000;
  *(this + 16) = 0;
  return result;
}

uint64_t *llvm::CodeGenCoverage::setCovered(uint64_t *this, unint64_t a2)
{
  if (*(this + 16) > a2)
  {
    v2 = *this;
    goto LABEL_15;
  }

  v3 = a2 + 1;
  v4 = this[8] & 0x3F;
  if (!v4)
  {
    v5 = *(this + 2);
    v6 = v5;
    *(this + 16) = v3;
    v7 = (a2 + 64) >> 6;
    v8 = v5 > v7;
    if (v5 == v7)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (!v8)
    {
      if (*(this + 3) < v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v7 != v5)
      {
        v9 = this;
        v10 = a2;
        bzero((*this + 8 * v5), 8 * (v7 - v5));
        this = v9;
        LODWORD(a2) = v10;
      }

      LODWORD(v7) = v6 + v7 - v5;
      v3 = *(this + 16);
    }

    *(this + 2) = v7;
    v6 = v7;
    goto LABEL_13;
  }

  v5 = *(this + 2);
  *(*this + 8 * v5 - 8) &= ~(-1 << v4);
  v6 = v5;
  *(this + 16) = v3;
  v7 = (a2 + 64) >> 6;
  v8 = v5 > v7;
  if (v5 != v7)
  {
    goto LABEL_7;
  }

LABEL_13:
  v2 = *this;
  v11 = v3 & 0x3F;
  if (v11)
  {
    *(v2 + 8 * v6 - 8) &= ~(-1 << v11);
  }

LABEL_15:
  *(v2 + 8 * (a2 >> 6)) |= 1 << a2;
  return this;
}

uint64_t llvm::CodeGenCoverage::isCovered(llvm::CodeGenCoverage *this, unint64_t a2)
{
  if (*(this + 16) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*this + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

unsigned int *llvm::CodeGenCoverage::covered@<X0>(unsigned int *this@<X0>, unsigned int **a2@<X8>)
{
  v2 = this[16];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
  v4 = **this;
  if (v2 >= 0x41)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  v6 = v4 & v5;
  if ((v4 & v5) == 0)
  {
    if (v2 >= 0x41)
    {
      v9 = (v2 - 1) >> 6;
      v10 = (*this + 8);
      v7 = 64;
      v8 = 0xFFFFFFFFLL;
      while (1)
      {
        v12 = *v10++;
        v11 = v12;
        v13 = v9 == 1 ? v3 : -1;
        v6 = v13 & v11;
        if (v6)
        {
          goto LABEL_7;
        }

        v7 += 64;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_10:
    *a2 = this;
    a2[1] = 0xFFFFFFFFLL;
    a2[2] = this;
    a2[3] = 0xFFFFFFFFLL;
    return this;
  }

  v7 = 0;
LABEL_7:
  v8 = __clz(__rbit64(v6)) | v7;
LABEL_8:
  *a2 = this;
  a2[1] = v8;
  a2[2] = this;
  a2[3] = 0xFFFFFFFFLL;
  return this;
}

BOOL llvm::CodeGenCoverage::parse(uint64_t *a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v5)
  {
    return 1;
  }

  if (a4)
  {
    v10 = *(a2 + 8);
LABEL_4:
    do
    {
      v11 = ~v4;
      v12 = &v5[~v4];
      do
      {
        v13 = v12;
        v14 = v11;
        v15 = *v10;
        v10 = (v10 + 1);
        --v12;
        --v11;
      }

      while (v15);
      result = v10 != v5;
      if (v10 == v5)
      {
        break;
      }

      if (v4)
      {
        if (a4 != strlen(v4))
        {
          goto LABEL_12;
        }
      }

      else if (a4)
      {
        goto LABEL_12;
      }

      if (!memcmp(a3, v4, a4))
      {
        while (1)
        {
          v5 = *(a2 + 16);
          result = v10 == v5;
          v18 = v10 == v5 || &v5[v14] < 8;
          if (v18)
          {
            return result;
          }

          if (*v10 == -1)
          {
            ++v10;
            result = 1;
            v4 = v10;
            if (v10 != v5)
            {
              goto LABEL_4;
            }

            return result;
          }

          llvm::CodeGenCoverage::setCovered(a1, *v10);
          v14 -= 8;
          ++v10;
        }
      }

      do
      {
LABEL_12:
        if (v10 == v5)
        {
          break;
        }

        v18 = v13 < 8;
        v13 -= 8;
        if (v18)
        {
          return 0;
        }

        v17 = *v10++;
      }

      while (v17 != -1);
      result = 1;
      v4 = v10;
    }

    while (v10 != v5);
  }

  else
  {
    v19 = *(a2 + 8);
LABEL_27:
    while (2)
    {
      v20 = ~v4;
      v21 = &v5[~v4];
      do
      {
        v22 = v21;
        v23 = v20;
        v24 = *v19;
        v19 = (v19 + 1);
        --v21;
        --v20;
      }

      while (v24);
      result = v19 != v5;
      if (v19 != v5)
      {
        if (v4 && *v4)
        {
          do
          {
            if (v19 == v5)
            {
              break;
            }

            v18 = v22 < 8;
            v22 -= 8;
            if (v18)
            {
              return 0;
            }

            v25 = *v19++;
          }

          while (v25 != -1);
          result = 1;
          v4 = v19;
          if (v19 != v5)
          {
            continue;
          }
        }

        else
        {
          while (1)
          {
            v5 = *(a2 + 16);
            result = v19 == v5;
            if (v19 == v5 || &v5[v23] < 8)
            {
              break;
            }

            v27 = v19 + 1;
            if (*v19 == -1)
            {
              ++v19;
              result = 1;
              v4 = v19;
              if (v19 != v5)
              {
                goto LABEL_27;
              }

              return result;
            }

            llvm::CodeGenCoverage::setCovered(a1, *v19);
            v23 -= 8;
            v19 = v27;
          }
        }
      }

      break;
    }
  }

  return result;
}

uint64_t llvm::CodeGenCoverage::emit(uint64_t a1, llvm::formatv_object_base *a2, const std::error_category *a3)
{
  if (a3 && *(a1 + 64))
  {
    if ((atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) & 1) == 0)
    {
      llvm::CodeGenCoverage::emit();
    }

    std::recursive_mutex::lock(&stru_27F874368);
    ProcessId = llvm::sys::Process::getProcessId();
    memset(v8, 0, sizeof(v8));
    LODWORD(v10) = 0;
    v14 = 0;
    v15 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_2868A3EF8;
    v16 = v8;
    llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
    llvm::raw_ostream::operator<<(&v9, ProcessId);
    llvm::raw_ostream::~raw_ostream(&v9);
    v9 = a2;
    v10 = a3;
    v11 = v8;
    LOWORD(v13) = 1029;
    llvm::Twine::str(&v9, &__p);
    LODWORD(v9) = 0;
    v10 = std::system_category();
    operator new();
  }

  return 1;
}

uint64_t llvm::CodeGenCoverage::reset(uint64_t this)
{
  if ((*(this + 64) & 0x3F) != 0)
  {
    v1 = *(this + 8);
    *(*this + 8 * v1 - 8) &= ~(-1 << (*(this + 64) & 0x3F));
    *(this + 64) = 0;
    if (!v1)
    {
      return this;
    }
  }

  else
  {
    v2 = *(this + 8);
    *(this + 64) = 0;
    if (!v2)
    {
      return this;
    }
  }

  *(this + 8) = 0;
  return this;
}

void *llvm::cl::basic_parser<BOOL>::basic_parser(void *result)
{
  *result = &unk_28689EDD0;
  return result;
}

{
  *result = &unk_28689EDD0;
  return result;
}

void *llvm::cl::basic_parser<llvm::cl::BOOLOrDefault>::basic_parser(void *result)
{
  *result = &unk_28689EE00;
  return result;
}

{
  *result = &unk_28689EE00;
  return result;
}

void *llvm::cl::basic_parser<int>::basic_parser(void *result)
{
  *result = &unk_28689EE30;
  return result;
}

{
  *result = &unk_28689EE30;
  return result;
}

void *llvm::cl::basic_parser<long>::basic_parser(void *result)
{
  *result = &unk_28689EE60;
  return result;
}

{
  *result = &unk_28689EE60;
  return result;
}

void *llvm::cl::basic_parser<long long>::basic_parser(void *result)
{
  *result = &unk_28689EE90;
  return result;
}

{
  *result = &unk_28689EE90;
  return result;
}

void *llvm::cl::basic_parser<unsigned int>::basic_parser(void *result)
{
  *result = &unk_28689EEC0;
  return result;
}

{
  *result = &unk_28689EEC0;
  return result;
}

void *llvm::cl::basic_parser<unsigned long>::basic_parser(void *result)
{
  *result = &unk_28689EEF0;
  return result;
}

{
  *result = &unk_28689EEF0;
  return result;
}

void *llvm::cl::basic_parser<unsigned long long>::basic_parser(void *result)
{
  *result = &unk_28689EF20;
  return result;
}

{
  *result = &unk_28689EF20;
  return result;
}

void *llvm::cl::basic_parser<double>::basic_parser(void *result)
{
  *result = &unk_28689EF50;
  return result;
}

{
  *result = &unk_28689EF50;
  return result;
}

void *llvm::cl::basic_parser<float>::basic_parser(void *result)
{
  *result = &unk_28689EF80;
  return result;
}

{
  *result = &unk_28689EF80;
  return result;
}

void *llvm::cl::basic_parser<std::string>::basic_parser(void *result)
{
  *result = &unk_28689EFB0;
  return result;
}

{
  *result = &unk_28689EFB0;
  return result;
}

void *llvm::cl::basic_parser<char>::basic_parser(void *result)
{
  *result = &unk_28689EFE0;
  return result;
}

{
  *result = &unk_28689EFE0;
  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = 0;
  AsUnsignedInteger = llvm::getAsUnsignedInteger(a5, a6, 0, v17);
  if ((AsUnsignedInteger & 1) != 0 || HIDWORD(v17[0]))
  {
    v16 = 1283;
    v15[0] = "'";
    v15[2] = a5;
    v15[3] = a6;
    v17[0] = v15;
    v17[2] = "' value invalid for uint argument!";
    v18 = 770;
    v13 = llvm::errs(AsUnsignedInteger);
    llvm::cl::Option::error(a1, v17, 0, 0, v13);
    return 1;
  }

  else
  {
    LODWORD(v15[0]) = v17[0];
    *(a1 + 128) = v17[0];
    *(a1 + 12) = a2;
    v11 = *(a1 + 184);
    if (v11)
    {
      (*(*v11 + 48))(v11, v15);
      return 0;
    }

    else
    {
      v14 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::parser<unsigned int>::parse(v14);
    }
  }
}

uint64_t llvm::cl::parser<unsigned int>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v16[0] = 0;
  AsUnsignedInteger = llvm::getAsUnsignedInteger(a5, a6, 0, v16);
  if ((AsUnsignedInteger & 1) != 0 || HIDWORD(v16[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for uint argument!";
    v17 = 770;
    v13 = llvm::errs(AsUnsignedInteger);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return 1;
  }

  else
  {
    result = 0;
    *a7 = v16[0];
  }

  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

uint64_t llvm::cl::basic_parser_impl::getOptionWidth(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 == 1)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3 + 7;
  }

  (*(*a1 + 16))(a1);
  if (v5)
  {
    v6 = 6;
    if ((*(a2 + 10) & 0x400) == 0)
    {
      v6 = 3;
    }

    v7 = *(a2 + 56);
    if (!v7)
    {
      v7 = v5;
    }

    v4 += v6 + v7;
  }

  return v4;
}

void *llvm::cl::basic_parser_impl::printOptionInfo(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, unsigned int a3)
{
  v6 = llvm::outs(this);
  v47 = *(a2 + 1);
  v48 = 2;
  v7 = (*(*this + 16))(this);
  if (!v8)
  {
    goto LABEL_48;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(a2 + 5);
  if ((v11 & 0x400) != 0)
  {
    v16 = llvm::outs(v7);
    v17 = v16[4];
    if (v16[3] - v17 > 1uLL)
    {
      *v17 = 15392;
      v18 = (v16[4] + 2);
      v16[4] = v18;
    }

    else
    {
      v16 = llvm::raw_ostream::write(v16, " <", 2uLL);
      v18 = v16[4];
    }

    v19 = *(a2 + 7);
    if (v19)
    {
      v20 = *(a2 + 6);
    }

    else
    {
      v20 = v9;
    }

    if (v19)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= v16[3] - v18)
    {
      v23 = v16;
      memcpy(v18, v20, v10);
      v21 = v23;
      v22 = (v23[4] + v10);
      v23[4] = v22;
      if (v23[3] - v22 > 3uLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = llvm::raw_ostream::write(v16, v20, v10);
      v22 = v21[4];
      if (v21[3] - v22 > 3uLL)
      {
LABEL_17:
        *v22 = 774778430;
        v21[4] += 4;
        goto LABEL_48;
      }
    }

    llvm::raw_ostream::write(v21, ">...", 4uLL);
    goto LABEL_48;
  }

  v12 = (v11 >> 3) & 3;
  if (!v12)
  {
    v24 = (*(*a2 + 8))(a2);
    v25 = v24;
    v13 = llvm::outs(v24);
    if (v25 == 1)
    {
      goto LABEL_5;
    }

LABEL_21:
    if (*(a2 + 3) == 1)
    {
      v26 = " <";
    }

    else
    {
      v26 = "=<";
    }

    v27 = *(v13 + 4);
    if (*(v13 + 3) - v27 > 1uLL)
    {
      *v27 = *v26;
      v28 = (*(v13 + 4) + 2);
      *(v13 + 4) = v28;
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, v26, 2uLL);
      v28 = *(v13 + 4);
    }

    v33 = *(a2 + 7);
    if (v33)
    {
      v34 = *(a2 + 6);
    }

    else
    {
      v34 = v9;
    }

    if (v33)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= *(v13 + 3) - v28)
    {
      v38 = v13;
      memcpy(v28, v34, v10);
      v35 = v38;
      v36 = (*(v38 + 4) + v10);
      *(v38 + 4) = v36;
      if (v36 >= *(v38 + 3))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v35 = llvm::raw_ostream::write(v13, v34, v10);
      v36 = *(v35 + 4);
      if (v36 >= *(v35 + 3))
      {
LABEL_43:
        llvm::raw_ostream::write(v35, 62);
        goto LABEL_48;
      }
    }

    *(v35 + 4) = v36 + 1;
    *v36 = 62;
    goto LABEL_48;
  }

  v13 = llvm::outs(v7);
  if (v12 != 1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    *(v14 + 2) = 60;
    *v14 = 15707;
    v15 = (*(v13 + 4) + 3);
    *(v13 + 4) = v15;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "[=<", 3uLL);
    v15 = *(v13 + 4);
  }

  v29 = *(a2 + 7);
  if (v29)
  {
    v30 = *(a2 + 6);
  }

  else
  {
    v30 = v9;
  }

  if (v29)
  {
    v10 = *(a2 + 7);
  }

  if (v10 <= *(v13 + 3) - v15)
  {
    v37 = v13;
    memcpy(v15, v30, v10);
    v31 = v37;
    v32 = (*(v37 + 4) + v10);
    *(v37 + 4) = v32;
    if (*(v37 + 3) - v32 > 1uLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v31 = llvm::raw_ostream::write(v13, v30, v10);
    v32 = v31[4];
    if (v31[3] - v32 > 1uLL)
    {
LABEL_34:
      *v32 = 23870;
      v31[4] += 2;
      goto LABEL_48;
    }
  }

  llvm::raw_ostream::write(v31, ">]", 2uLL);
LABEL_48:
  v40 = *(a2 + 4);
  v39 = *(a2 + 5);
  v41 = *(a2 + 3);
  if (v41 == 1)
  {
    v42 = 7;
  }

  else
  {
    v42 = v41 + 7;
  }

  (*(*this + 16))(this);
  if (v43)
  {
    v44 = 6;
    if ((*(a2 + 5) & 0x400) == 0)
    {
      v44 = 3;
    }

    v45 = *(a2 + 7);
    if (!v45)
    {
      LODWORD(v45) = v43;
    }

    v42 += v44 + v45;
  }

  return llvm::cl::Option::printHelpStr(v40, v39, a3, v42);
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 148) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v8 = *(a1 + 148);
    v6 = &unk_28685B9A0;
    llvm::cl::parser<unsigned int>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

atomic_ullong llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::done(uint64_t a1)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v4[0] = result;
      v4[1] = &v5;
      goto LABEL_7;
    }
  }

  else
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 64) + 8 * v3) = a1;
  ++*(result + 72);
LABEL_7:
  *(a1 + 10) |= 0x4000u;
  return result;
}

atomic_ullong llvm::cl::Option::addArgument(llvm::cl::Option *this)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    result = qword_27F8743B8[0];
    v5 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
LABEL_3:
      v4[0] = result;
      v4[1] = &v5;
      goto LABEL_7;
    }
  }

  else
  {
    result = qword_27F8743B8[0];
    v5 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 64) + 8 * v3) = this;
  ++*(result + 72);
LABEL_7:
  *(this + 5) |= 0x4000u;
  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setInitialValue(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 128) = *a2;
  *(result + 148) = 1;
  *(result + 144) = v2;
  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](v5, a1 + 160);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v17[0] = 0;
  AsSignedInteger = llvm::getAsSignedInteger(a5, a6, 0, v17);
  if (AsSignedInteger || v17[0] != SLODWORD(v17[0]))
  {
    v16 = 1283;
    v15[0] = "'";
    v15[2] = a5;
    v15[3] = a6;
    v17[0] = v15;
    v17[2] = "' value invalid for integer argument!";
    v18 = 770;
    v13 = llvm::errs(AsSignedInteger);
    llvm::cl::Option::error(a1, v17, 0, 0, v13);
    return 1;
  }

  else
  {
    LODWORD(v15[0]) = v17[0];
    *(a1 + 128) = v17[0];
    *(a1 + 12) = a2;
    v11 = *(a1 + 184);
    if (v11)
    {
      (*(*v11 + 48))(v11, v15);
      return 0;
    }

    else
    {
      v14 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::parser<int>::parse(v14);
    }
  }
}

uint64_t llvm::cl::parser<int>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, _DWORD *a7)
{
  v16[0] = 0;
  AsSignedInteger = llvm::getAsSignedInteger(a5, a6, 0, v16);
  if (AsSignedInteger || v16[0] != SLODWORD(v16[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for integer argument!";
    v17 = 770;
    v13 = llvm::errs(AsSignedInteger);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return 1;
  }

  else
  {
    result = 0;
    *a7 = v16[0];
  }

  return result;
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void llvm::cl::opt<int,false,llvm::cl::parser<int>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 148) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v8 = *(a1 + 148);
    v6 = &unk_28685C818;
    llvm::cl::parser<int>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

atomic_ullong llvm::cl::opt<int,false,llvm::cl::parser<int>>::done(uint64_t a1)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v4[0] = result;
      v4[1] = &v5;
      goto LABEL_7;
    }
  }

  else
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 64) + 8 * v3) = a1;
  ++*(result + 72);
LABEL_7:
  *(a1 + 10) |= 0x4000u;
  return result;
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::setInitialValue(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 128) = *a2;
  *(result + 148) = 1;
  *(result + 144) = v2;
  return result;
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::setCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  std::__function::__value_func<void ()(int const&)>::swap[abi:nn200100](v5, a1 + 160);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *__src, size_t __len)
{
  memset(&__p, 0, sizeof(__p));
  if (!__src)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_11;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_16;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
    __dst.__r_.__value_.__s.__data_[__len] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_11:
  __p = __dst;
  std::string::operator=((a1 + 128), &__p);
  *(a1 + 12) = a2;
  v9 = *(a1 + 224);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_16:
    std::string::__throw_length_error[abi:nn200100]();
  }

  (*(*v9 + 48))(v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 192) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 184) != 1)
  {
    goto LABEL_16;
  }

  v4 = *(result + 183);
  if (v4 >= 0)
  {
    v5 = *(result + 183);
  }

  else
  {
    v5 = result[21];
  }

  v6 = *(result + 151);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = result[17];
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = result + 20) : (v8 = result[20]), v7 >= 0 ? (v9 = result + 16) : (v9 = result[16]), v10 = result, v11 = memcmp(v8, v9, v5), result = v10, v11))
  {
LABEL_16:
    v12 = *(result + 151);
    if (v12 >= 0)
    {
      v13 = result + 16;
    }

    else
    {
      v13 = result[16];
    }

    if (v12 >= 0)
    {
      v14 = *(result + 151);
    }

    else
    {
      v14 = result[17];
    }

    return llvm::cl::parser<std::string>::printOptionDiff(result, result, v13, v14, (result + 19), a2);
  }

  return result;
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (a1 + 128);

    std::string::operator=(v4, (a1 + 160));
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=((a1 + 128), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

atomic_ullong llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::done(uint64_t a1)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v4[0] = result;
      v4[1] = &v5;
      goto LABEL_7;
    }
  }

  else
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 64) + 8 * v3) = a1;
  ++*(result + 72);
LABEL_7:
  *(a1 + 10) |= 0x4000u;
  return result;
}

std::string *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::setInitialValue(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 128), a2);
  *(a1 + 184) = 1;

  return std::string::operator=((a1 + 160), a2);
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::setCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](v5, a1 + 200);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

uint64_t llvm::cl::opt<char,false,llvm::cl::parser<char>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, char *a5)
{
  v7 = *a5;
  *(a1 + 128) = v7;
  *(a1 + 12) = a2;
  v5 = *(a1 + 184);
  if (v5)
  {
    (*(*v5 + 48))(v5, &v7);
    return 0;
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<char,false,llvm::cl::parser<char>>::getValueExpectedFlagDefault();
  }
}

uint64_t llvm::cl::opt<char,false,llvm::cl::parser<char>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void llvm::cl::opt<char,false,llvm::cl::parser<char>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 145) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v8 = v3;
    v9 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v6 = &unk_28689FF60;
    llvm::cl::parser<char>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

_BYTE *llvm::cl::opt<char,false,llvm::cl::parser<char>>::setDefault(_BYTE *result)
{
  if (result[145] == 1)
  {
    result[128] = result[144];
  }

  else
  {
    result[128] = 0;
  }

  return result;
}

atomic_ullong llvm::cl::opt<char,false,llvm::cl::parser<char>>::done(uint64_t a1)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v4[0] = result;
      v4[1] = &v5;
      goto LABEL_7;
    }
  }

  else
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 64) + 8 * v3) = a1;
  ++*(result + 72);
LABEL_7:
  *(a1 + 10) |= 0x4000u;
  return result;
}

_BYTE *llvm::cl::opt<char,false,llvm::cl::parser<char>>::setInitialValue(_BYTE *result, _BYTE *a2)
{
  result[128] = *a2;
  result[145] = 1;
  result[144] = *a2;
  return result;
}

uint64_t llvm::cl::opt<char,false,llvm::cl::parser<char>>::setCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  std::__function::__value_func<void ()(char const&)>::swap[abi:nn200100](v5, a1 + 160);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v18 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v18;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v18);
      return v9;
    }

    else
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::parser<BOOL>::parse(v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return result;
}

uint64_t llvm::cl::parser<BOOL>::parse(llvm *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v20 = v7;
      v21 = v8;
      v17 = 1283;
      v16[0] = "'";
      v16[2] = a5;
      v16[3] = a6;
      v18[0] = v16;
      v18[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v19 = 770;
      v15 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v18, 0, 0, v15);
      return 1;
    }

    v9 = *a5;
    if (v9 != 48)
    {
      if (v9 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 0;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 145) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v8 = v3;
    v9 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v6 = &unk_28685B4A0;
    llvm::cl::parser<BOOL>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

_BYTE *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setDefault(_BYTE *result)
{
  if (result[145] == 1)
  {
    result[128] = result[144];
  }

  else
  {
    result[128] = 0;
  }

  return result;
}

atomic_ullong llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::done(uint64_t a1)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v4[0] = result;
      v4[1] = &v5;
      goto LABEL_7;
    }
  }

  else
  {
    result = qword_27F8743B8[0];
    v5 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 64) + 8 * v3) = a1;
  ++*(result + 72);
LABEL_7:
  *(a1 + 10) |= 0x4000u;
  return result;
}

_BYTE *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setInitialValue(_BYTE *result, _BYTE *a2)
{
  result[128] = *a2;
  result[145] = 1;
  result[144] = *a2;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](v5, a1 + 160);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

uint64_t llvm::cl::AddLiteralOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v8[0] = a2;
  v8[1] = a3;
  v7[0] = qword_27F8743B8[0];
  v7[1] = a1;
  v7[2] = v8;
}

_OWORD *llvm::cl::extrahelp::extrahelp(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  *a1 = v5;
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  std::vector<llvm::StringRef>::push_back[abi:nn200100](qword_27F8743B8[0] + 40, &v5);
  return a1;
}

{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  *a1 = v5;
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  std::vector<llvm::StringRef>::push_back[abi:nn200100](qword_27F8743B8[0] + 40, &v5);
  return a1;
}

uint64_t llvm::cl::Option::removeArgument(llvm::cl::Option *this)
{
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v3[0] = qword_27F8743B8[0];
  v3[1] = &v4;
  v4 = this;
}

uint64_t llvm::cl::Option::setArgStr(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if ((*(result + 10) & 0x4000) == 0)
  {
    *(result + 16) = a2;
    *(result + 24) = a3;
    if (a3 != 1)
    {
      return result;
    }

LABEL_7:
    *(v5 + 10) |= 0x1000u;
    return result;
  }

  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v8[0] = a2;
  v8[1] = a3;
  v6[0] = qword_27F8743B8[0];
  v6[1] = &v7;
  v6[2] = v8;
  v7 = v5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t llvm::cl::Option::addCategory(uint64_t this, llvm::cl::OptionCategory *a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire) & 1) == 0)
  {
    v8 = this;
    v10 = a2;
    llvm::cl::Option::addCategory();
    a2 = v10;
    this = v8;
    if (v10 == &unk_27F874418)
    {
      goto LABEL_5;
    }

LABEL_3:
    v2 = **(this + 64);
    if (atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire))
    {
      if (v2 != &unk_27F874418)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = this;
      v11 = a2;
      v7 = v2;
      llvm::cl::Option::addCategory();
      this = v9;
      a2 = v11;
      if (v7 != &unk_27F874418)
      {
        goto LABEL_5;
      }
    }

    **(this + 64) = a2;
    return this;
  }

  if (a2 != &unk_27F874418)
  {
    goto LABEL_3;
  }

LABEL_5:
  v3 = *(this + 64);
  v4 = *(this + 72);
  v5 = v3;
  if (v4)
  {
    v6 = 8 * v4;
    v5 = *(this + 64);
    while (*v5 != a2)
    {
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  if (v5 == &v3[v4])
  {
LABEL_11:
    if (v4 >= *(this + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3[v4] = a2;
    ++*(this + 72);
  }

  return this;
}

void *llvm::cl::getGeneralCategory(llvm::cl *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire) & 1) == 0)
  {
    llvm::cl::Option::addCategory();
  }

  return &unk_27F874418;
}

uint64_t llvm::cl::Option::reset(llvm::cl::Option *this)
{
  *(this + 4) = 0;
  result = (*(*this + 64))(this);
  if ((*(this + 5) & 0x2000) != 0)
  {
    if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
    {
    }

    v3[0] = qword_27F8743B8[0];
    v3[1] = &v4;
    v4 = this;
  }

  return result;
}

const void **llvm::cl::OptionCategory::registerCategory(llvm::cl::OptionCategory *this)
{
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  result = (qword_27F8743B8[0] + 112);
  v3 = *(qword_27F8743B8[0] + 112);
  if (*(qword_27F8743B8[0] + 120) != v3)
  {
LABEL_4:

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, this);
  }

  v4 = *(qword_27F8743B8[0] + 132);
  if (!v4)
  {
LABEL_11:
    if (v4 < *(qword_27F8743B8[0] + 128))
    {
      *(qword_27F8743B8[0] + 132) = v4 + 1;
      *(v3 + 8 * v4) = this;
      return result;
    }

    goto LABEL_4;
  }

  v5 = 8 * v4;
  v6 = *(qword_27F8743B8[0] + 112);
  while (*v6 != this)
  {
    ++v6;
    v5 -= 8;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  return result;
}

atomic_ullong llvm::cl::SubCommand::getTopLevel(llvm::cl::SubCommand *this)
{
  if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  return qword_27F8743D0[0];
}

uint64_t llvm::cl::SubCommand::getAll(llvm::cl::SubCommand *this)
{
  if (!atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8743E8, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  return qword_27F8743E8;
}

void llvm::cl::SubCommand::registerSubCommand(llvm::cl::SubCommand *this)
{
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v2 = qword_27F8743B8[0];
}

void anonymous namespace::CommandLineParser::registerSubCommand(_anonymous_namespace_::CommandLineParser *this, llvm::cl::SubCommand *a2)
{
  v4 = *(this + 34);
  if (*(this + 35) != v4)
  {
    goto LABEL_2;
  }

  v13 = *(this + 73);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = *(this + 34);
    while (*v15 != a2)
    {
      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (v13 >= *(this + 72))
    {
LABEL_2:
      llvm::SmallPtrSetImplBase::insert_imp_big((this + 272), a2);
      goto LABEL_3;
    }

    *(this + 73) = v13 + 1;
    *(v4 + 8 * v13) = a2;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_27F8743E8, memory_order_acquire))
  {
    v5 = *(qword_27F8743E8 + 128);
    v6 = *(qword_27F8743E8 + 136);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_23:
    v7 = v5;
    v12 = &v5[v6];
    if (v5 == v12)
    {
      return;
    }

    goto LABEL_24;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8743E8, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  v5 = *(qword_27F8743E8 + 128);
  v6 = *(qword_27F8743E8 + 136);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_5:
  v7 = v5;
  if (*v5)
  {
    v8 = *v5 == -8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    do
    {
      v10 = v7[1];
      ++v7;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == -8;
      }

      else
      {
        v11 = 1;
      }
    }

    while (v11);
  }

  v12 = &v5[v6];
  if (v7 != v12)
  {
LABEL_24:
    v16 = *v7;
    do
    {
      v17 = *(v16 + 8);
      v18 = *(v17 + 10);
      if ((v18 & 7) == 4 || ((v19 = v18 & 0x180, v20 = v18 & 0x800, v19 != 128) ? (v21 = v20 == 0) : (v21 = 0), !v21 || *(v17 + 24)))
      {
      }

      else
      {
      }

      do
      {
        v22 = v7[1];
        ++v7;
        v16 = v22;
        if (v22)
        {
          v23 = v16 == -8;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
    }

    while (v7 != v12);
  }
}

void llvm::cl::SubCommand::unregisterSubCommand(llvm::cl::SubCommand *this)
{
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    v2 = qword_27F8743B8[0];
    v3 = *(qword_27F8743B8[0] + 272);
    if (*(qword_27F8743B8[0] + 280) != v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = qword_27F8743B8[0];
    v3 = *(qword_27F8743B8[0] + 272);
    if (*(qword_27F8743B8[0] + 280) != v3)
    {
LABEL_3:
      v4 = llvm::SmallPtrSetImplBase::doFind((v2 + 68), this);
      if (v4)
      {
        *v4 = -2;
        ++v2[74];
      }

      return;
    }
  }

  v5 = v2[73];
  if (v5)
  {
    v6 = 8 * v5;
    for (i = v3; *i != this; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }

    v8 = v5 - 1;
    v2[73] = v8;
    *i = v3[v8];
  }
}

_DWORD *llvm::cl::SubCommand::reset(_DWORD *this)
{
  v1 = this;
  this[10] = 0;
  this[22] = 0;
  if (this[35])
  {
    v2 = this[34];
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(v1 + 16);
        this = *(v4 + v3);
        if (this != -8 && this != 0)
        {
          llvm::deallocate_buffer(this, (*this + 17));
        }

        *(v4 + v3) = 0;
        v3 += 8;
      }

      while (8 * v2 != v3);
    }

    v1[35] = 0;
    v1[36] = 0;
  }

  *(v1 + 19) = 0;
  return this;
}

BOOL llvm::cl::SubCommand::operator BOOL(uint64_t a1)
{
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  return *(qword_27F8743B8[0] + 336) == a1;
}

uint64_t ProvideOption(unsigned __int16 *a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, int a6, uint64_t a7, unsigned int *a8)
{
  v16 = a1[7];
  result = (a1[5] >> 3) & 3;
  if (!result)
  {
    result = (*(*a1 + 8))(a1);
    if (result != 3)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (!v16)
    {
      if (a4)
      {
        v34[0] = "does not allow a value! '";
        v34[2] = a4;
        v34[3] = a5;
        v35 = 1283;
        v36[0] = v34;
        v36[2] = "' specified.";
        v21 = 770;
LABEL_40:
        v37 = v21;
        v32 = llvm::errs(result);
        llvm::cl::Option::error(a1, v36, 0, 0, v32);
        return 1;
      }

      goto LABEL_44;
    }

    v19 = "multi-valued option specified with ValueDisallowed modifier!";
LABEL_39:
    v36[0] = v19;
    v21 = 259;
    goto LABEL_40;
  }

  if (result == 3)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (result != 2 || a4)
  {
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  v20 = *a8 + 1;
  if (v20 >= a6 || (~a1[5] & 0x180) == 0)
  {
    v19 = "requires a value!";
    goto LABEL_39;
  }

  *a8 = v20;
  a4 = *(a7 + 8 * v20);
  if (a4)
  {
    result = strlen(*(a7 + 8 * v20));
    a5 = result;
    if (v16)
    {
LABEL_6:
      if (a4)
      {
        result = CommaSeparateAndAddOccurrence(a1, *a8, a2, a3, a4, a5, 0);
        if (result)
        {
          return 1;
        }

        --v16;
        v18 = 1;
        if (!v16)
        {
          return 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      v18 = 0;
LABEL_23:
      v22 = *a8;
      v23 = v22 + 1;
      if (v22 + 1 < a6)
      {
        *a8 = v23;
        v24 = *(a7 + 8 * v23);
        if (v24)
        {
          v25 = strlen(*(a7 + 8 * v23));
        }

        else
        {
          v25 = 0;
        }

        result = CommaSeparateAndAddOccurrence(a1, v23, a2, a3, v24, v25, v18);
        if (result)
        {
          return 1;
        }

        if (v16 == 1)
        {
          return 0;
        }

        v26 = v16 - 2;
        while (1)
        {
          v27 = v26;
          v28 = *a8;
          v29 = v28 + 1;
          if (v28 + 1 >= a6)
          {
            break;
          }

          *a8 = v29;
          v30 = *(a7 + 8 * v29);
          if (v30)
          {
            v31 = strlen(*(a7 + 8 * v29));
          }

          else
          {
            v31 = 0;
          }

          result = CommaSeparateAndAddOccurrence(a1, v29, a2, a3, v30, v31, 1);
          if ((result & 1) == 0)
          {
            v26 = v27 - 1;
            if (v27)
            {
              continue;
            }
          }

          return result;
        }
      }

      v19 = "not enough values!";
      goto LABEL_39;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_22;
    }

    a5 = 0;
    a4 = 0;
  }

LABEL_44:
  v33 = *a8;

  return CommaSeparateAndAddOccurrence(a1, v33, a2, a3, a4, a5, 0);
}

void llvm::cl::TokenizeGNUCommandLine(uint64_t a1, unint64_t a2, void ***a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  if (!a2)
  {
    return;
  }

  v6 = 0;
  do
  {
    if (v25)
    {
      v7 = *(a1 + v6);
    }

    else
    {
      if (v6 == a2)
      {
        return;
      }

      if (a5)
      {
        while (1)
        {
          v7 = *(a1 + v6);
          if (v7 > 0xC)
          {
            if (v7 != 13 && v7 != 32)
            {
              goto LABEL_5;
            }
          }

          else if (v7 != 9)
          {
            if (v7 != 10)
            {
              goto LABEL_5;
            }

            v11 = *(a4 + 8);
            if (v11 >= *(a4 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a4 + 8 * v11) = 0;
            ++*(a4 + 8);
          }

          if (a2 == ++v6)
          {
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v7 = *(a1 + v6);
        if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
        {
          break;
        }

        if (a2 == ++v6)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_5:
    v8 = v6 + 1;
    if (v6 + 1 < a2 && v7 == 92)
    {
      if (v25 + 1 > 0x80)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v26[v25] = *(a1 + v8);
      v9 = v25 + 1;
      goto LABEL_52;
    }

    if (v7 > 0x27)
    {
      goto LABEL_49;
    }

    if (((1 << v7) & 0x100002600) != 0)
    {
      if (v25)
      {
        v12 = a1;
        v13 = a2;
        v14 = a5;
        v15 = a3;
        v16 = llvm::StringSaver::save(a3, v26, v25);
        v17 = *(a4 + 8);
        if (v17 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a4 + 8 * v17) = v16;
        ++*(a4 + 8);
        a3 = v15;
        a5 = v14;
        a2 = v13;
        a1 = v12;
      }

      v9 = 0;
      if (a5 && v7 == 10)
      {
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = 0;
        *(*a4 + 8 * v18) = 0;
        ++*(a4 + 8);
      }

      goto LABEL_51;
    }

    if (((1 << v7) & 0x8400000000) == 0)
    {
LABEL_49:
      if (v25 + 1 > 0x80)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v26[v25] = v7;
      v9 = v25 + 1;
LABEL_51:
      v8 = v6;
LABEL_52:
      v25 = v9;
      goto LABEL_53;
    }

    if (v8 == a2)
    {
      break;
    }

    while (1)
    {
      v19 = *(a1 + v8);
      if (v19 == v7)
      {
        break;
      }

      if (v8 + 1 == a2)
      {
        v20 = v8;
      }

      else
      {
        v20 = v8 + 1;
      }

      if (v19 == 92)
      {
        v21 = v20;
      }

      else
      {
        v21 = v8;
      }

      if (v25 + 1 > 0x80)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v26[v25] = *(a1 + v21);
      v22 = ++v25;
      v8 = v21 + 1;
      if (v21 + 1 == a2)
      {
        goto LABEL_60;
      }
    }

LABEL_53:
    v6 = v8 + 1;
  }

  while (v8 + 1 != a2);
LABEL_59:
  v22 = v25;
LABEL_60:
  if (v22)
  {
    v23 = llvm::StringSaver::save(a3, v26, v22);
    v24 = *(a4 + 8);
    if (v24 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v24) = v23;
    ++*(a4 + 8);
  }
}

void llvm::cl::TokenizeWindowsCommandLine(uint64_t a1, unint64_t a2, void ***a3, uint64_t a4, char a5)
{
  v7 = a5;
  v6 = a4;
  v5[0] = &v7;
  v5[1] = a4;
  tokenizeWindowsCommandLineImpl(a1, a2, a3, llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::cl::TokenizeWindowsCommandLine(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_0>, &v6, 1, llvm::function_ref<void ()(void)>::callback_fn<llvm::cl::TokenizeWindowsCommandLine(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_1>, v5, 0);
}

void tokenizeWindowsCommandLineImpl(uint64_t a1, unint64_t a2, void ***a3, void (*a4)(uint64_t, const void *, size_t), uint64_t a5, int a6, void (*a7)(uint64_t), uint64_t a8, char a9)
{
  v55[16] = *MEMORY[0x277D85DE8];
  v53 = v55;
  v54 = xmmword_257371870;
  if (!a2)
  {
    return;
  }

  v13 = 0;
  v14 = 0;
  v15 = a9;
  v49 = a2 - 1;
  do
  {
    if (v13 == 2)
    {
      v20 = *(a1 + v14);
      if (v20 != 34)
      {
        if ((v20 != 92) | v15 & 1)
        {
          if ((v54 + 1) > *(&v54 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v16 = 0;
          *(v53 + v54) = v20;
          v23 = v54 + 1;
LABEL_27:
          *&v54 = v23;
        }

        else
        {
          v14 = parseBackslash(a1, a2, v14, &v53);
          v16 = 0;
          v15 = 0;
        }

LABEL_32:
        v13 = 2;
        goto LABEL_4;
      }

      if (v14 >= v49 || *(a1 + v14 + 1) != 34)
      {
        goto LABEL_103;
      }

      if ((v54 + 1) > *(&v54 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v16 = 0;
      *(v53 + v54) = 34;
      *&v54 = v54 + 1;
      v13 = 2;
      ++v14;
    }

    else
    {
      if (v13 != 1)
      {
        if (v14 >= a2)
        {
          v13 = 0;
          goto LABEL_69;
        }

        v21 = v14;
        while (1)
        {
          v22 = *(a1 + v21);
          if (v22 > 0x20)
          {
            break;
          }

          if (((1 << v22) & 0x100002201) == 0)
          {
            if (v22 != 10)
            {
              break;
            }

            a7(a8);
          }

          if (a2 == ++v21)
          {
            v13 = 0;
            v16 = 1;
            v14 = a2;
            goto LABEL_4;
          }
        }

        v14 = v21;
        if (v15)
        {
          if (v21 < a2)
          {
            v14 = v21;
            while (1)
            {
              v24 = *(a1 + v14);
              v25 = v24 > 0x22;
              v26 = (1 << v24) & 0x500002601;
              if (!v25 && v26 != 0)
              {
                break;
              }

              if (++v14 >= a2)
              {
                goto LABEL_55;
              }
            }
          }
        }

        else if (v21 < a2)
        {
          while (1)
          {
            v28 = *(a1 + v14);
            v29 = v28 > 0x22 || ((1 << v28) & 0x500002601) == 0;
            if (!v29 || v28 == 92)
            {
              break;
            }

            if (++v14 >= a2)
            {
LABEL_55:
              v14 = a2;
              break;
            }
          }
        }

        if (v21 <= v14)
        {
          v30 = v14;
        }

        else
        {
          v30 = v21;
        }

        if (v30 >= a2)
        {
          v31 = a2;
        }

        else
        {
          v31 = v30;
        }

        v32 = v31 - v21;
        if (v14 >= a2)
        {
LABEL_65:
          v34 = (a1 + v21);
          if (a6)
          {
            v35 = llvm::StringSaver::save(a3, v34, v31 - v21);
            v32 = v36;
            v34 = v35;
          }

          a4(a5, v34, v32);
          if (v14 >= a2)
          {
            goto LABEL_68;
          }

          goto LABEL_10;
        }

        v33 = *(a1 + v14);
        if (v33 <= 0x22)
        {
          if (((1 << v33) & 0x100002601) != 0)
          {
            goto LABEL_65;
          }

          if (v33 == 34)
          {
            if (v14 <= v21)
            {
              v37 = v21;
            }

            else
            {
              v37 = v14;
            }

            if (a2 >= v37)
            {
              v38 = v37;
            }

            else
            {
              v38 = a2;
            }

            v39 = v54;
            if (*(&v54 + 1) < v54 + v38 - v21)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            if (v21 != v31)
            {
              memcpy(v53 + v54, (a1 + v21), v32);
              v39 = v54;
            }

            v16 = 0;
            if (v14 <= v21)
            {
              v40 = v21;
            }

            else
            {
              v40 = v14;
            }

            if (a2 < v40)
            {
              v40 = a2;
            }

            v23 = v39 + v40 - v21;
            goto LABEL_27;
          }
        }

        if (v14 <= v21)
        {
          v41 = v21;
        }

        else
        {
          v41 = v14;
        }

        if (a2 >= v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = a2;
        }

        v43 = v54;
        if (*(&v54 + 1) < v54 + v42 - v21)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v21 != v31)
        {
          memcpy(v53 + v54, (a1 + v21), v32);
          v43 = v54;
        }

        if (v14 <= v21)
        {
          v44 = v21;
        }

        else
        {
          v44 = v14;
        }

        if (a2 < v44)
        {
          v44 = a2;
        }

        *&v54 = v43 + v44 - v21;
        v14 = parseBackslash(a1, a2, v14, &v53);
LABEL_103:
        v16 = 0;
        v13 = 1;
        goto LABEL_4;
      }

      v17 = *(a1 + v14);
      if (v17 <= 0x22)
      {
        if (((1 << v17) & 0x100002601) != 0)
        {
          v18 = llvm::StringSaver::save(a3, v53, v54);
          a4(a5, v18, v19);
          *&v54 = 0;
LABEL_10:
          if (*(a1 + v14) == 10)
          {
            a7(a8);
            v13 = 0;
            v16 = 1;
            v15 = a9;
            goto LABEL_4;
          }

LABEL_68:
          v13 = 0;
          v15 = 0;
LABEL_69:
          v16 = 1;
          goto LABEL_4;
        }

        if (v17 == 34)
        {
          v16 = 0;
          goto LABEL_32;
        }
      }

      if ((v17 != 92) | v15 & 1)
      {
        if ((v54 + 1) > *(&v54 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v16 = 0;
        *(v53 + v54) = v17;
        *&v54 = v54 + 1;
        v13 = 1;
      }

      else
      {
        v14 = parseBackslash(a1, a2, v14, &v53);
        v16 = 0;
        v15 = 0;
        v13 = 1;
      }
    }

LABEL_4:
    ++v14;
  }

  while (v14 < a2);
  v45 = v53;
  if ((v16 & 1) == 0)
  {
    v46 = llvm::StringSaver::save(a3, v53, v54);
    a4(a5, v46, v47);
    v45 = v53;
  }

  if (v45 != v55)
  {
    free(v45);
  }
}

void llvm::cl::TokenizeWindowsCommandLineFull(uint64_t a1, unint64_t a2, void ***a3, uint64_t a4, char a5)
{
  v7 = a5;
  v6 = a4;
  v5[0] = &v7;
  v5[1] = a4;
  tokenizeWindowsCommandLineImpl(a1, a2, a3, llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::cl::TokenizeWindowsCommandLineFull(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_0>, &v6, 1, llvm::function_ref<void ()(void)>::callback_fn<llvm::cl::TokenizeWindowsCommandLineFull(llvm::StringRef,llvm::StringSaver &,llvm::SmallVectorImpl<char const*> &,BOOL)::$_1>, v5, 1);
}

void llvm::cl::tokenizeConfigFile(unsigned __int8 *__src, uint64_t a2, void ***a3, uint64_t a4, unsigned int a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = __src;
    v7 = &__src[a2];
    v8 = &__src[a2];
    v9 = xmmword_257371870;
    while (1)
    {
      v26 = v9;
      v11 = *v6;
      if (v11 > 0x23)
      {
        break;
      }

      if (((1 << v11) & 0x100002600) != 0)
      {
        if (v6 != v7)
        {
          while (1)
          {
            v12 = *v6;
            v13 = v12 > 0x20;
            v14 = (1 << v12) & 0x100002600;
            v15 = v13 || v14 == 0;
            if (v15)
            {
              break;
            }

            if (++v6 == v7)
            {
              goto LABEL_13;
            }
          }
        }
      }

      else
      {
        if (v11 != 35)
        {
          break;
        }

        if (v6 != v7)
        {
          while (*v6 != 10)
          {
            if (++v6 == v7)
            {
LABEL_13:
              v10 = v8;
              goto LABEL_4;
            }
          }
        }
      }

      v10 = v6;
LABEL_4:
      v6 = v10;
      if (v10 == v7)
      {
        return;
      }
    }

    if (v6 == v7)
    {
      v16 = 0;
      v10 = v6;
      v23 = 0;
    }

    else
    {
      v16 = 0;
      v17 = v6;
      v18 = *v6;
      if (v18 == 92)
      {
        goto LABEL_25;
      }

      while (v18 != 10)
      {
LABEL_43:
        if (++v6 == v7)
        {
          break;
        }

        while (1)
        {
          v18 = *v6;
          if (v18 != 92)
          {
            break;
          }

LABEL_25:
          v19 = v6 + 1;
          if (v6 + 1 == v7)
          {
            goto LABEL_43;
          }

          v20 = *v19;
          if (v20 == 10 || ((v15 = v20 == 13, v21 = (v6 + 2), v15) ? (v22 = v21 == v7) : (v22 = 1), !v22 && *v21 == 10))
          {
            if (*(&v26 + 1) < (v16 + v6 - v17))
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            if (v17 != v6)
            {
              memcpy(&v27[v16], v17, v6 - v17);
              v16 = v26;
            }

            v16 += v6 - v17;
            *&v26 = v16;
            if (v6[1] == 13)
            {
              v6 += 2;
            }

            else
            {
              ++v6;
            }

            v17 = v6 + 1;
            goto LABEL_43;
          }

          v6 += 2;
          if (v19 + 1 == v7)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_44:
      v10 = v6;
      v6 = v17;
      v23 = v10 - v17;
      if (*(&v26 + 1) < v16 + v23)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }
    }

    if (v6 != v10)
    {
      memcpy(&v27[v16], v6, v23);
      v16 = v26;
    }

    llvm::cl::TokenizeGNUCommandLine(v27, v16 + v23, a3, a4, a5);
    v9 = xmmword_257371870;
    goto LABEL_4;
  }
}

void llvm::cl::ExpansionContext::expandResponseFile(uint64_t a1@<X0>, llvm::formatv_object_base *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 16);
  v62 = 261;
  v59 = a2;
  *&v60 = a3;
  llvm::vfs::FileSystem::getBufferForFile(v10, &v59, -1, 1, 0, 0, &v57);
  if (v58)
  {
    *&v42.__r_.__value_.__l.__data_ = v57;
    v47[0] = "cannot not open file '";
    v48 = a2;
    v49 = a3;
    v50 = 1283;
    v53 = v47;
    *(&v54 + 1) = "': ";
    v56 = 770;
    std::error_code::message(&v43, &v42);
    v59 = &v53;
    *(&v60 + 1) = &v43;
    v62 = 1026;
    llvm::Twine::str(&v59, __p);
    llvm::createStringError();
  }

  v11 = *(v57 + 8);
  size = *(v57 + 16) - v11;
  memset(&v42, 0, sizeof(v42));
  if (llvm::hasUTF16ByteOrderMark(v11, size))
  {
    if (!llvm::convertUTF16ToUTF8String(v11, size, &v42))
    {
      std::generic_category();
      operator new();
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v42;
    }

    else
    {
      v11 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v42.__r_.__value_.__l.__size_;
    }
  }

  else if (size >= 3 && v11->__r_.__value_.__s.__data_[0] == 239 && v11->__r_.__value_.__s.__data_[1] == 187 && v11->__r_.__value_.__s.__data_[2] == 191)
  {
    v11 = (v11 + 3);
    size -= 3;
  }

  (*(a1 + 8))(v11, size, a1, a4, *(a1 + 57));
  if (*(a1 + 56) & 1) != 0 || (*(a1 + 58))
  {
    v40 = a5;
    v13 = llvm::sys::path::parent_path(a2, a3, 0);
    v15 = *(a4 + 8);
    if (v15)
    {
      v16 = v13;
      v17 = v14;
      v18 = *a4;
      v19 = *a4 + 8 * v15;
      v41 = v19;
      do
      {
        v20 = *v18;
        if (*v18)
        {
          if (*(a1 + 58) != 1)
          {
            goto LABEL_52;
          }

          v51 = *v18;
          v52 = strlen(v20);
          v59 = &v61;
          v60 = xmmword_257371870;
          v21 = llvm::StringRef::find(&v51, "<CFGDIR>", 8uLL, 0);
          if (v21 == -1)
          {
            v23 = 0;
          }

          else
          {
            v22 = v21;
            v23 = 0;
            do
            {
              if (v52 >= v23)
              {
                v24 = v23;
              }

              else
              {
                v24 = v52;
              }

              if (v52 - v24 >= v22 - v23)
              {
                v25 = v22 - v23;
              }

              else
              {
                v25 = v52 - v24;
              }

              if (v60)
              {
                v56 = 261;
                v53 = (v51 + v24);
                *&v54 = v25;
                v50 = 257;
                v46 = 257;
                v44 = 257;
                llvm::sys::path::append(&v59, &v53, v47, __p, &v43);
                v26 = v60;
                if (*(&v60 + 1) < v60 + v17)
                {
                  goto LABEL_35;
                }
              }

              else
              {
                if (*(&v60 + 1) < v25)
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod();
                }

                v27 = 0;
                if (v25)
                {
                  memcpy(v59, (v51 + v24), v25);
                  v27 = v60;
                }

                v26 = v27 + v25;
                *&v60 = v27 + v25;
                if (*(&v60 + 1) < v27 + v25 + v17)
                {
LABEL_35:
                  llvm::SmallVectorBase<unsigned long long>::grow_pod();
                }
              }

              if (v17)
              {
                memcpy(v59 + v26, v16, v17);
                v26 = v60;
              }

              *&v60 = v26 + v17;
              v23 = v22 + 8;
              v22 = llvm::StringRef::find(&v51, "<CFGDIR>", 8uLL, v22 + 8);
            }

            while (v22 != -1);
          }

          v28 = v60;
          v19 = v41;
          if (v60)
          {
            if (v52 > v23)
            {
              v56 = 261;
              v53 = (v51 + v23);
              *&v54 = v52 - v23;
              v50 = 257;
              v46 = 257;
              v44 = 257;
              llvm::sys::path::append(&v59, &v53, v47, __p, &v43);
              v28 = v60;
            }

            *v18 = llvm::StringSaver::save(a1, v59, v28);
          }

          if (v59 != &v61)
          {
            free(v59);
          }

          v20 = *v18;
          if (*v18)
          {
LABEL_52:
            v29 = strlen(v20);
            if (v29)
            {
              if (*v20 == 64)
              {
                v30 = (v20 + 1);
                v62 = 261;
                v31 = v29 - 1;
                v59 = v30;
                *&v60 = v29 - 1;
                if (llvm::sys::path::is_relative(&v59, 0))
                {
                  *(&v60 + 1) = 128;
                  v61 = 64;
                  v32 = 1;
                  v59 = &v61;
                  *&v60 = 1;
                  if (v17 + 1 > 0x80)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_57;
                }
              }

              else
              {
                v31 = v29 - 9;
                if (v29 >= 9 && *v20 == 0x6769666E6F632D2DLL && *(v20 + 8) == 61)
                {
                  v30 = (v20 + 9);
                  *(&v60 + 1) = 128;
                  v61 = 64;
                  v59 = &v61;
                  *&v60 = 1;
                  v56 = 261;
                  v53 = v30;
                  *&v54 = v29 - 9;
                  if (llvm::sys::path::has_parent_path(&v53, 0))
                  {
                    v32 = v60;
                    if (*(&v60 + 1) < v60 + v17)
                    {
LABEL_56:
                      llvm::SmallVectorBase<unsigned long long>::grow_pod();
                    }

LABEL_57:
                    if (v17)
                    {
                      memcpy(v59 + v32, v16, v17);
                      v32 = v60;
                    }

                    *&v60 = v32 + v17;
                    v56 = 261;
                    v53 = v30;
                    *&v54 = v31;
                    v50 = 257;
                    v46 = 257;
                    v44 = 257;
                    llvm::sys::path::append(&v59, &v53, v47, __p, &v43);
LABEL_60:
                    *v18 = llvm::StringSaver::save(a1, v59, v60);
                    v33 = 1;
                    v34 = v59;
                    if (v59 != &v61)
                    {
                      goto LABEL_61;
                    }
                  }

                  else
                  {
                    v53 = &v55;
                    v54 = xmmword_257371870;
                    ConfigFile = llvm::cl::ExpansionContext::findConfigFile(a1, v30, v31, &v53);
                    if ((ConfigFile & 1) == 0)
                    {
                      std::generic_category();
                      v50 = 1283;
                      v47[0] = "cannot not find configuration file: ";
                      v48 = v30;
                      v49 = v31;
                      llvm::Twine::str(v47, __p);
                      llvm::createStringError();
                    }

                    v36 = v54;
                    v37 = v60;
                    if (*(&v60 + 1) < v60 + v54)
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod();
                    }

                    if (v54)
                    {
                      memcpy(v59 + v60, v53, v54);
                      v37 = v60;
                    }

                    *&v60 = v37 + v36;
                    if (v53 != &v55)
                    {
                      free(v53);
                    }

                    if (ConfigFile)
                    {
                      goto LABEL_60;
                    }

                    v33 = 0;
                    v34 = v59;
                    if (v59 != &v61)
                    {
LABEL_61:
                      free(v34);
                    }
                  }

                  if (!v33)
                  {
                    goto LABEL_86;
                  }
                }
              }
            }
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    *v40 = 0;
  }

  else
  {
    *a5 = 0;
  }

LABEL_86:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if ((v58 & 1) == 0)
  {
    v38 = v57;
    *&v57 = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }
  }
}

uint64_t llvm::cl::ExpansionContext::findConfigFile(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  __src = v49;
  __n = xmmword_257371870;
  v53 = 261;
  v50 = a2;
  v51 = a3;
  if (llvm::sys::path::has_parent_path(&v50, 0))
  {
    v8 = 0;
    *&__n = 0;
    if (*(&__n + 1) < a3)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (a3)
    {
      memcpy(__src, a2, a3);
      v8 = __n;
    }

    *&__n = v8 + a3;
    v53 = 261;
    v50 = a2;
    v51 = a3;
    if (llvm::sys::path::is_relative(&v50, 0) && (*(**(a1 + 16) + 112))(*(a1 + 16), &__src))
    {
      goto LABEL_37;
    }

    v44 = v46;
    v45 = xmmword_257371870;
    v9 = __n;
    if (__n)
    {
      if (__n >= 0x81)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      memcpy(v46, __src, __n);
      *&v45 = v9;
      v21 = v44;
    }

    else
    {
      v21 = v46;
    }

    v24 = *(a1 + 16);
    v40 = 261;
    v38 = v21;
    v39 = v9;
    (*(*v24 + 40))(&v50);
    v25 = v55;
    v26 = v54;
    if ((v55 & 1) == 0 && v52 < 0)
    {
      operator delete(v50);
    }

    v27 = v25 | (v26 != 2);
    if (v44 != v46)
    {
      free(v44);
    }

    if (v27)
    {
LABEL_37:
      v12 = 0;
      v28 = __src;
      if (__src == v49)
      {
        return v12;
      }

      goto LABEL_45;
    }

    v30 = __src;
    v29 = __n;
    *(a4 + 8) = 0;
    if (*(a4 + 16) < v29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v31 = 0;
    if (v29)
    {
      memcpy(*a4, v30, v29);
      v31 = *(a4 + 8);
    }

    *(a4 + 8) = v31 + v29;
    v12 = 1;
LABEL_44:
    v28 = __src;
    if (__src != v49)
    {
LABEL_45:
      free(v28);
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if (!v10)
    {
      goto LABEL_37;
    }

    v11 = (*(a1 + 40) + 8);
    v12 = 16 * v10;
    while (1)
    {
      v13 = *v11;
      if (*v11)
      {
        v14 = *(v11 - 1);
        *&__n = 0;
        if (*(&__n + 1) < v13)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(__src, v14, v13);
        *&__n = __n + v13;
        v53 = 261;
        v50 = a2;
        v51 = a3;
        v40 = 257;
        v37 = 257;
        v35 = 257;
        llvm::sys::path::append(&__src, &v50, &v38, &v36, &v34);
        llvm::sys::path::native(&__src, 0);
        __dst = v43;
        v42 = xmmword_257371870;
        v15 = v43;
        v16 = __n;
        if (__n)
        {
          if (__n >= 0x81)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          memcpy(v43, __src, __n);
          *&v42 = v16;
          v15 = __dst;
        }

        v17 = *(a1 + 16);
        v40 = 261;
        v38 = v15;
        v39 = v16;
        (*(*v17 + 40))(&v50);
        v18 = v55;
        v19 = v54;
        if ((v55 & 1) == 0 && v52 < 0)
        {
          operator delete(v50);
        }

        v20 = v19 != 2;
        if (__dst != v43)
        {
          free(__dst);
        }

        if (((v18 | v20) & 1) == 0)
        {
          break;
        }
      }

      v11 += 2;
      v12 -= 16;
      if (!v12)
      {
        goto LABEL_44;
      }
    }

    v23 = __src;
    v22 = __n;
    *(a4 + 8) = 0;
    if (*(a4 + 16) < v22)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v33 = 0;
    if (v22)
    {
      memcpy(*a4, v23, v22);
      v33 = *(a4 + 8);
    }

    *(a4 + 8) = v33 + v22;
    v12 = 1;
    v28 = __src;
    if (__src != v49)
    {
      goto LABEL_45;
    }
  }

  return v12;
}

void llvm::cl::ExpansionContext::expandResponseFiles(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v101 = *MEMORY[0x277D85DE8];
  v90 = &v92;
  v5 = *(a2 + 2);
  v92 = 0;
  *v93 = *v88;
  *&v93[14] = *&v88[14];
  v94 = 0;
  v95 = v5;
  v91 = 0x300000001;
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v68 = a3;
    do
    {
      v10 = v90;
      LODWORD(v11) = v91;
      if (*(v90 + 4 * v91 - 1) == v8)
      {
        do
        {
          v11 = (v11 - 1);
          LODWORD(v91) = v11;
          v12 = &v10[4 * v11];
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
            v10 = v90;
            v11 = v91;
          }
        }

        while (v10[4 * v11 - 1] == v8);
      }

      v13 = *(*a2 + 8 * v8);
      if (!v13 || *v13 != 64)
      {
        ++v9;
        goto LABEL_4;
      }

      *v88 = v89;
      *&v88[8] = xmmword_257371870;
      v99 = 257;
      v15 = v13[1];
      v14 = v13 + 1;
      if (v15)
      {
        *&__dst = v14;
        LOBYTE(v99) = 3;
        if (!llvm::sys::path::is_relative(&__dst, 0))
        {
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(v99) = 1;
        if (!llvm::sys::path::is_relative(&__dst, 0))
        {
LABEL_14:
          v16 = *(a1 + 16);
          v99 = 257;
          if (*v14)
          {
            goto LABEL_15;
          }

          goto LABEL_47;
        }
      }

      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = *(a1 + 24);
        *&v88[8] = 0;
        if (*&v88[16] < v18)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(*v88, v19, v18);
        *&v88[8] += v18;
      }

      else
      {
        (*(**(a1 + 16) + 72))(&v82);
        v20 = v83;
        if (v83)
        {
          if (*v14)
          {
            *&__dst = "cannot get absolute path for: ";
            v97 = v14;
            v21 = 3;
          }

          else
          {
            *&__dst = "cannot get absolute path for: ";
            v21 = 1;
          }

          LOBYTE(v99) = 3;
          HIBYTE(v99) = v21;
          llvm::Twine::str(&__dst, &__p);
          llvm::createStringError();
        }

        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v82;
        }

        else
        {
          v22 = v82.__r_.__value_.__r.__words[0];
        }

        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v82.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v82.__r_.__value_.__l.__size_;
        }

        *&v88[8] = 0;
        if (*&v88[16] < size)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v24 = 0;
        if (size)
        {
          memcpy(*v88, v22, size);
          v24 = *&v88[8];
        }

        *&v88[8] = v24 + size;
        if ((v83 & 1) == 0 && SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (v20)
        {
          v25 = 1;
          goto LABEL_115;
        }
      }

      v99 = 257;
      if (*v14)
      {
        *&__dst = v14;
        v26 = 3;
      }

      else
      {
        v26 = 1;
      }

      LOBYTE(v99) = v26;
      WORD4(v83) = 257;
      WORD4(v70) = 257;
      v80 = 257;
      llvm::sys::path::append(v88, &__dst, &v82, &__p.__r_.__value_.__l.__data_, &__src);
      if ((*&v88[8] + 1) > *&v88[16])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v88 + *&v88[8]) = 0;
      v14 = *v88;
      v16 = *(a1 + 16);
      v99 = 257;
      if (**v88)
      {
LABEL_15:
        *&__dst = v14;
        v17 = 3;
        goto LABEL_48;
      }

LABEL_47:
      v17 = 1;
LABEL_48:
      LOBYTE(v99) = v17;
      (*(*v16 + 40))(&v82);
      if (v87)
      {
        goto LABEL_49;
      }

      if (!llvm::vfs::Status::exists(&v82))
      {
        if (v87)
        {
LABEL_49:
          data = v82.__r_.__value_.__l.__data_;
          v27 = v82.__r_.__value_.__l.__size_;
          v76 = *&v82.__r_.__value_.__l.__data_;
          if (*(a1 + 58))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v27 = std::system_category();
          data = 0;
          *&v76.__val_ = 0;
          v76.__cat_ = v27;
          if (*(a1 + 58))
          {
LABEL_50:
            if (!data)
            {
              v29 = std::generic_category();
              *&v76.__val_ = 2;
              v76.__cat_ = v29;
            }

LABEL_61:
            if (*v14)
            {
              p_src = &__src;
              __src = "cannot not open file '";
              v79[0] = v14;
              v32 = 3;
              v33 = 2;
            }

            else
            {
              p_src = "cannot not open file '";
              __src = "cannot not open file '";
              v32 = 1;
              v33 = 3;
            }

            LOBYTE(v80) = 3;
            HIBYTE(v80) = v32;
            __p.__r_.__value_.__r.__words[0] = p_src;
            __p.__r_.__value_.__r.__words[2] = "': ";
            BYTE8(v70) = v33;
            BYTE9(v70) = 3;
            std::error_code::message(&v75, &v76);
            v34 = BYTE8(v70);
            if (BYTE8(v70))
            {
              if (BYTE8(v70) == 1)
              {
                *&__dst = &v75;
                v35 = 1;
                v34 = 4;
              }

              else
              {
                if (BYTE9(v70) != 1)
                {
                  v34 = 2;
                }

                p_p = &__p;
                if (BYTE9(v70) == 1)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *&__dst = p_p;
                *(&__dst + 1) = __p.__r_.__value_.__l.__size_;
                v97 = &v75;
                v35 = 4;
              }
            }

            else
            {
              v35 = 1;
            }

            LOBYTE(v99) = v34;
            HIBYTE(v99) = v35;
            llvm::Twine::str(&__dst, v81);
            llvm::createStringError();
          }
        }

        if (data)
        {
          v30 = std::generic_category();
          if (data != 2 || v27 != v30)
          {
            goto LABEL_61;
          }
        }

        ++v9;
        v25 = 3;
        goto LABEL_112;
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v82;
      }

      v70 = v83;
      v71 = v84;
      v72 = v85;
      v73 = v86;
      v74 = a1;
      if (v91 != 1)
      {
        v37 = (v90 + 32);
        v38 = 32 * v91 - 32;
        v39 = v90 + 32;
        do
        {
          v40 = *(v74 + 16);
          v80 = 260;
          __src = v39;
          (*(*v40 + 40))(&__dst);
          if (v100)
          {
            *&__dst = "cannot open file: ";
            v97 = v37;
            v99 = 1027;
            llvm::Twine::str(&__dst, &__src);
            llvm::createStringError();
          }

          v41 = llvm::vfs::Status::equivalent(&__p, &__dst);
          if ((v100 & 1) == 0 && SHIBYTE(v97) < 0)
          {
            operator delete(__dst);
          }

          v3 = v3 & 0xFFFFFFFFFFFFFF00 | v41;
          if (v41)
          {
            std::system_category();
            __src = "recursive expansion of: '";
            v79[0] = v37;
            v80 = 1027;
            *&__dst = &__src;
            v97 = "'";
            v99 = 770;
            llvm::Twine::str(&__dst, v81);
            llvm::createStringError();
          }

          v39 += 32;
          v37 = (v37 + 32);
          v38 -= 32;
        }

        while (v38);
      }

      __src = v79;
      v78 = 0;
      v42 = strlen(v14);
      a3 = v68;
      llvm::cl::ExpansionContext::expandResponseFile(a1, v14, v42, &__src, v68);
      if (!*v68)
      {
        v44 = v91;
        if (!v91)
        {
          goto LABEL_97;
        }

        v45 = v90;
        v46 = v78 - 1;
        v47 = (v91 - 1) & 0x7FFFFFFFFFFFFFFLL;
        if (v47)
        {
          v48 = v47 + 1;
          v49 = (v47 + 1) & 0xFFFFFFFFFFFFFFELL;
          v50 = v90 + 32 * v49;
          v51 = (v90 + 56);
          v52 = v49;
          do
          {
            v53 = v46 + *v51;
            *(v51 - 4) += v46;
            *v51 = v53;
            v51 += 8;
            v52 -= 2;
          }

          while (v52);
          if (v48 == v49)
          {
LABEL_97:
            v55 = strlen(v14);
            if (v55 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v56 = v55;
            if (v55 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v97) = v55;
            if (v55)
            {
              memmove(&__dst, v14, v55);
            }

            *(&__dst + v56) = 0;
            v98 = v8 + v78;
            if (v91 >= HIDWORD(v91))
            {
              if (v90 > &__dst || v90 + 32 * v91 <= &__dst)
              {
                llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow();
              }

              llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow();
            }

            v57 = v90 + 32 * v91;
            v58 = __dst;
            *(v57 + 2) = v97;
            *v57 = v58;
            v97 = 0;
            __dst = 0uLL;
            *(v57 + 3) = v98;
            LODWORD(v91) = v91 + 1;
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__dst);
            }

            v59 = *a2;
            v60 = *a2 + 8 * v8;
            v61 = *(a2 + 2);
            v62 = *a2 + 8 * v61;
            if (v62 != v60 + 8)
            {
              memmove(v60, (v60 + 8), v62 - (v60 + 8));
              LODWORD(v61) = *(a2 + 2);
              v59 = *a2;
            }

            *(a2 + 2) = v61 - 1;
            llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a2, v59 + 8 * v8, __src, __src + 8 * v78);
            v25 = 0;
            v43 = __src;
            if (__src == v79)
            {
              goto LABEL_110;
            }

LABEL_109:
            free(v43);
            goto LABEL_110;
          }
        }

        else
        {
          v50 = v90;
        }

        v54 = &v45[32 * v44];
        do
        {
          *(v50 + 3) += v46;
          v50 += 32;
        }

        while (v50 != v54);
        goto LABEL_97;
      }

      v25 = 1;
      v43 = __src;
      if (__src != v79)
      {
        goto LABEL_109;
      }

LABEL_110:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_112:
      if ((v87 & 1) == 0 && SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

LABEL_115:
      if (*v88 != v89)
      {
        free(*v88);
      }

      if (v25 && v25 != 3)
      {
        goto LABEL_126;
      }

LABEL_4:
      v8 = v9;
    }

    while (*(a2 + 2) != v9);
  }

  *a3 = 0;
LABEL_126:
  v63 = v90;
  if (v91)
  {
    v64 = v90 + 32 * v91 - 9;
    v65 = -32 * v91;
    v66 = v64;
    do
    {
      v67 = *v66;
      v66 -= 32;
      if (v67 < 0)
      {
        operator delete(*(v64 - 23));
      }

      v64 = v66;
      v65 += 32;
    }

    while (v65);
    v63 = v90;
    if (v90 != &v92)
    {
      goto LABEL_132;
    }
  }

  else if (v90 != &v92)
  {
LABEL_132:
    free(v63);
  }
}

BOOL llvm::cl::expandResponseFiles(int a1, uint64_t a2, char *__s, void ***a4, uint64_t a5)
{
  if (__s)
  {
    v10 = strlen(__s);
    llvm::sys::Process::GetEnv(__s, v10, &__p);
    v11 = v31;
    if (v31 == 1)
    {
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v30 >= 0)
      {
        v13 = SHIBYTE(v30);
      }

      else
      {
        v13 = v29;
      }

      llvm::cl::TokenizeGNUCommandLine(p_p, v13, a4, a5, 0);
      v11 = v31;
    }

    if ((v11 & 1) != 0 && SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }
  }

  v14 = 8 * a1 - 8;
  v15 = *(a5 + 8);
  if (v15 + (v14 >> 3) > *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a1 != 1)
  {
    memcpy((*a5 + 8 * v15), (a2 + 8), 8 * a1 - 8);
    LODWORD(v15) = *(a5 + 8);
  }

  *(a5 + 8) = v15 + (v14 >> 3);
  __p = *a4;
  v29 = llvm::cl::TokenizeGNUCommandLine;
  llvm::vfs::getRealFileSystem(&v26);
  v16 = v26.__r_.__value_.__r.__words[0];
  if (v26.__r_.__value_.__r.__words[0] && atomic_fetch_add((v26.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  v30 = v16;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  llvm::cl::ExpansionContext::expandResponseFiles(&__p, a5, &v27);
  v18 = v27;
  if (v27)
  {
    v19 = llvm::errs(v17);
    v25 = v27;
    v27 = 0;
    llvm::toString(&v25, &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v22 = llvm::raw_ostream::write(v19, v20, size);
    v23 = *(v22 + 4);
    if (v23 >= *(v22 + 3))
    {
      llvm::raw_ostream::write(v22, 10);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_31:
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(v22 + 4) = v23 + 1;
      *v23 = 10;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_31;
      }
    }

    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }

  return v18 == 0;
}

uint64_t llvm::cl::ExpansionContext::ExpansionContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  llvm::vfs::getRealFileSystem(&v6);
  v4 = v6;
  if (v6 && atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 55) = 0;
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  llvm::vfs::getRealFileSystem(&v6);
  v4 = v6;
  if (v6 && atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 55) = 0;
  return a1;
}

void *llvm::raw_ostream::operator<<(void *a1, const char *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return llvm::raw_ostream::write(a1, a2, v3);
}

BOOL llvm::cl::ExpandResponseFiles(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[0] = *a1;
  v16[1] = a2;
  llvm::vfs::getRealFileSystem(&__p);
  v4 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] && atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v16[2] = v4;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  llvm::cl::ExpansionContext::expandResponseFiles(v16, a3, &v15);
  v6 = v15;
  if (v15)
  {
    v7 = llvm::errs(v5);
    v13 = v15;
    v15 = 0;
    llvm::toString(&v13, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = llvm::raw_ostream::write(v7, p_p, size);
    v11 = *(v10 + 4);
    if (v11 >= *(v10 + 3))
    {
      llvm::raw_ostream::write(v10, 10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_15:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(v10 + 4) = v11 + 1;
      *v11 = 10;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_15;
      }
    }

    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  return v6 == 0;
}

void llvm::cl::ExpansionContext::readConfigFile(uint64_t a1@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = a3;
  v7 = a2;
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_257371870;
  v12 = 261;
  v11[0] = a2;
  v11[1] = a3;
  if (llvm::sys::path::is_relative(v11, 0))
  {
    v10 = 0;
    *&v14 = 0;
    if (*(&v14 + 1) < v6)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v6)
    {
      memcpy(v13, v7, v6);
      v10 = v14;
    }

    *&v14 = v10 + v6;
    if ((*(**(a1 + 16) + 112))(*(a1 + 16), &v13))
    {
      v12 = 1283;
      v11[0] = "cannot get absolute path for ";
      v11[2] = v7;
      v11[3] = v6;
      operator new();
    }

    v7 = v13;
    v6 = v14;
  }

  *(a1 + 58) = 1;
  *(a1 + 56) = 1;
  llvm::cl::ExpansionContext::expandResponseFile(a1, v7, v6, a4, a5);
  if (!*a5)
  {
    llvm::cl::ExpansionContext::expandResponseFiles(a1, a4, a5);
  }

  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t llvm::cl::ParseCommandLineOptions(llvm *a1, void *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *a5, const char *a6, unsigned int a7)
{
  v11 = a1;
  v331 = *MEMORY[0x277D85DE8];
  initCommonOptions(a1);
  v13 = v314;
  v312 = v314;
  v305[1] = 0;
  v305[0] = 0;
  v306 = v308;
  v307 = 0x400000000;
  v309 = v311;
  v310 = 0;
  v311[0] = 0;
  v311[1] = 1;
  v281 = v305;
  v314[0] = *a2;
  v313 = 0x1400000001;
  if (!a6)
  {
    v18 = 1;
    if (v11 < 2)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v14 = strlen(a6);
  llvm::sys::Process::GetEnv(a6, v14, &__p);
  v15 = v329;
  if (v329 == 1)
  {
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    llvm::cl::TokenizeGNUCommandLine(p_p, size, &v281, &v312, 0);
    v15 = v329;
  }

  if ((v15 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = v313;
  if (v11 >= 2)
  {
LABEL_16:
    v19 = a2 + 1;
    v20 = v11 - 1;
    do
    {
      if (v18 >= HIDWORD(v313))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v312 + v18) = *v19;
      v18 = v313 + 1;
      LODWORD(v313) = v313 + 1;
      ++v19;
      --v20;
    }

    while (v20);
  }

LABEL_21:
  if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
  }

  v21 = qword_27F8743B8[0];
  v22 = v312;
  *(qword_27F8743B8[0] + 24) = a3;
  *(v21 + 32) = a4;
  v23 = a5;
  if (!a5)
  {
    v23 = llvm::errs(v12);
  }

  v325 = v327;
  v326 = 0x1400000000;
  if (v18 >= 0x15)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy(v327, v22, 8 * v18);
    v24 = v326;
  }

  else
  {
    v24 = 0;
  }

  LODWORD(v326) = v24 + v18;
  v318[1] = 0;
  v318[0] = 0;
  v319 = v321;
  v320 = 0x400000000;
  v322 = v324;
  v323 = 0;
  v324[0] = 0;
  v324[1] = 1;
  v292[0] = v318;
  v292[1] = llvm::cl::TokenizeGNUCommandLine;
  llvm::vfs::getRealFileSystem(&__p);
  v25 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] && atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v25 + 8))(v25);
  }

  v292[2] = v25;
  v293 = 0u;
  memset(v294, 0, sizeof(v294));
  llvm::cl::ExpansionContext::expandResponseFiles(v292, &v325, &v315);
  if (v315)
  {
    *&__dst = v315;
    v315 = 0;
    llvm::toString(&__dst, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = __p.__r_.__value_.__l.__size_;
    }

    v28 = llvm::raw_ostream::write(v23, v26, v27);
    v29 = *(v28 + 4);
    if (v29 >= *(v28 + 3))
    {
      llvm::raw_ostream::write(v28, 10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_45:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(v28 + 4) = v29 + 1;
      *v29 = 10;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_45;
      }
    }

    if (__dst)
    {
      (*(*__dst + 8))(__dst);
    }

    if (v315)
    {
      (*(*v315 + 8))(v315);
    }

    v32 = 0;
    goto LABEL_456;
  }

  v268 = v23;
  v278 = v326;
  v30 = *v325;
  v271 = v325;
  if (*v325)
  {
    v31 = strlen(v30);
  }

  else
  {
    v31 = 0;
  }

  OptionPred = llvm::sys::path::filename(v30, v31, 0);
  if (v34 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_531:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v35 = v34;
  if (v34 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v34;
  v36 = v271;
  if (v34)
  {
    OptionPred = memmove(&__p, OptionPred, v34);
    __p.__r_.__value_.__s.__data_[v35] = 0;
    if ((*(v21 + 23) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_70:
    operator delete(*v21);
    goto LABEL_57;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  if (*(v21 + 23) < 0)
  {
    goto LABEL_70;
  }

LABEL_57:
  *v21 = __p;
  if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v273 = qword_27F8743D0[0];
  v289 = 0;
  v290 = 0;
  v291 = 0;
  v270 = v21;
  if (v278 >= 2)
  {
    v37 = *(v271 + 1);
    if (*v37 != 45)
    {
      v38 = *(v21 + 280);
      v39 = 16;
      if (v38 == *(v21 + 272))
      {
        v39 = 20;
      }

      v40 = *(v21 + 272 + v39);
      v41 = v38;
      if (v40)
      {
        v42 = 8 * v40;
        v41 = v38;
        while (*v41 >= 0xFFFFFFFFFFFFFFFELL)
        {
          ++v41;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_78;
          }
        }
      }

      v43 = &v38[v40];
      if (v41 != v43)
      {
        v44 = *v41;
LABEL_73:
        if (!*(v44 + 8))
        {
          while (1)
          {
            if (++v41 == v43)
            {
              goto LABEL_78;
            }

            v44 = *v41;
            if (*v41 < 0xFFFFFFFFFFFFFFFELL)
            {
              v265 = 1;
              v45 = 1;
              if (v41 != v43)
              {
                goto LABEL_73;
              }

              goto LABEL_79;
            }
          }
        }

        OptionPred = strlen(v37);
        if (OptionPred)
        {
          v255 = OptionPred;
          if (v40)
          {
            v256 = 8 * v40;
            while (*v38 >= 0xFFFFFFFFFFFFFFFELL)
            {
              ++v38;
              v256 -= 8;
              if (!v256)
              {
                goto LABEL_521;
              }
            }
          }

          if (v38 != v43)
          {
            v257 = 0;
            v258 = *v38;
LABEL_510:
            v273 = v258;
            v259 = *(v258 + 8);
            if (!v259)
            {
              goto LABEL_516;
            }

            if (v259 == v255)
            {
              OptionPred = memcmp(*v258, v37, v255);
              if (!OptionPred)
              {
LABEL_524:
                if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
                {
                  llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
                }

                v265 = 0;
                if (v273 == qword_27F8743D0[0])
                {
                  v45 = 1;
                }

                else
                {
                  v45 = 2;
                }

                if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
                {
                  goto LABEL_81;
                }

                goto LABEL_80;
              }
            }

            if (!v257)
            {
              v257 = v273;
              __p.__r_.__value_.__r.__words[0] = *v273;
              __p.__r_.__value_.__l.__size_ = v259;
              OptionPred = llvm::StringRef::edit_distance(&__p, v37, v255, 1, 0);
              if (OptionPred >= 2)
              {
                v257 = 0;
              }
            }

LABEL_516:
            while (++v38 != v43)
            {
              v258 = *v38;
              if (*v38 < 0xFFFFFFFFFFFFFFFELL)
              {
                if (v38 != v43)
                {
                  goto LABEL_510;
                }

                break;
              }
            }

            if (v257)
            {
              OptionPred = MEMORY[0x259C62C90](&v289, *v257, v257[1]);
            }
          }
        }

LABEL_521:
        if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
        {
          llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
        }

        v273 = qword_27F8743D0[0];
        goto LABEL_524;
      }
    }
  }

LABEL_78:
  v265 = 1;
  v45 = 1;
LABEL_79:
  if (atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
  {
    goto LABEL_81;
  }

LABEL_80:
LABEL_81:
  *(qword_27F8743B8[0] + 336) = v273;
  v46 = v270;
  v47 = *(v270 + 18);
  if (v47)
  {
    v48 = *(v270 + 8);
    v49 = 8 * v47;
    do
    {
      v50 = *v48++;
      v315 = v50;
      __p.__r_.__value_.__r.__words[0] = v270;
      __p.__r_.__value_.__l.__size_ = &v315;
      v49 -= 8;
    }

    while (v49);
  }

  v51 = v273;
  v52 = *(v273 + 40);
  if (!v52)
  {
    __src = 0;
    v280 = 0;
    v76 = 1;
    goto LABEL_121;
  }

  v53 = 0;
  v280 = 0;
  v54 = 0;
  __src = 0;
  v55 = 8 * v52;
  v56 = "error - option can never match, because another positional argument will match an unbounded number of values, and this option does not require a value!";
  v57 = ": CommandLine Error: Option '";
  do
  {
    v58 = *(*(v51 + 32) + v53);
    if ((*(v58 + 10) & 6) == 2)
    {
      ++v280;
      goto LABEL_87;
    }

    if (*(v51 + 152))
    {
      v59 = *(v51 + 40);
      v60 = __src;
      if (v59 > 1)
      {
        v60 = 1;
      }

      __src = v60;
      if (!a5 && v59 >= 2)
      {
        __p.__r_.__value_.__r.__words[0] = "error - this positional option will never be matched, because it does not Require a value, and a cl::ConsumeAfter option is active!";
        v330 = 259;
        v61 = llvm::errs(OptionPred);
        OptionPred = llvm::cl::Option::error(v58, &__p, 0, 0, v61);
LABEL_95:
        __src = 1;
      }
    }

    else if ((v54 & 1) != 0 && !*(v58 + 24))
    {
      if (!a5)
      {
        __p.__r_.__value_.__r.__words[0] = v56;
        v330 = 259;
        v62 = llvm::errs(OptionPred);
        llvm::cl::Option::error(v58, &__p, 0, 0, v62);
      }

      v63 = *(v270 + 23);
      if (v63 >= 0)
      {
        v64 = v270;
      }

      else
      {
        v64 = *v270;
      }

      if (v63 >= 0)
      {
        v65 = *(v270 + 23);
      }

      else
      {
        v65 = *(v270 + 1);
      }

      v66 = llvm::raw_ostream::write(v268, v64, v65);
      v67 = v66[4];
      if (v66[3] - v67 > 0x1CuLL)
      {
        *v67 = *v57;
        *(v67 + 13) = *(v57 + 13);
        v75 = v66[3];
        v68 = (v66[4] + 29);
        v66[4] = v68;
        v69 = *(v58 + 16);
        v70 = *(v58 + 24);
        if (v70 > v75 - v68)
        {
          goto LABEL_113;
        }

LABEL_108:
        if (v70)
        {
          v71 = v66;
          v72 = v57;
          v73 = v56;
          v74 = v70;
          memcpy(v68, v69, v70);
          v66 = v71;
          v51 = v273;
          v68 = (v66[4] + v74);
          v56 = v73;
          v57 = v72;
          v66[4] = v68;
        }

        if (v66[3] - v68 <= 0x13uLL)
        {
          goto LABEL_111;
        }

LABEL_114:
        v68[4] = 169963637;
        *v68 = *"' is all messed up!\n";
        v66[4] += 20;
      }

      else
      {
        v66 = llvm::raw_ostream::write(v66, v57, 0x1DuLL);
        v68 = v66[4];
        v69 = *(v58 + 16);
        v70 = *(v58 + 24);
        if (v70 <= v66[3] - v68)
        {
          goto LABEL_108;
        }

LABEL_113:
        v66 = llvm::raw_ostream::write(v66, v69, v70);
        v68 = v66[4];
        if (v66[3] - v68 > 0x13uLL)
        {
          goto LABEL_114;
        }

LABEL_111:
        llvm::raw_ostream::write(v66, "' is all messed up!\n", 0x14uLL);
      }

      OptionPred = llvm::raw_ostream::operator<<(v268, *(v51 + 40));
      goto LABEL_95;
    }

LABEL_87:
    v54 |= (*(v58 + 10) & 5) == 1;
    v53 += 8;
  }

  while (v55 != v53);
  v36 = v271;
  v76 = (v54 & 1) == 0 && *(v51 + 152) == 0;
  v13 = v314;
  v46 = v270;
LABEL_121:
  v315 = v317;
  v316 = 0x400000000;
  v288 = v45;
  if (v45 >= v278)
  {
    v183 = 0;
    v184 = v280;
    v185 = __src;
    if (!v280)
    {
      goto LABEL_388;
    }

LABEL_372:
    v186 = *(v46 + 23);
    if (v186 >= 0)
    {
      v187 = v46;
    }

    else
    {
      v187 = *v46;
    }

    if (v186 >= 0)
    {
      v188 = *(v46 + 23);
    }

    else
    {
      v188 = *(v46 + 1);
    }

    v189 = llvm::raw_ostream::write(v268, v187, v188);
    v190 = *(v189 + 4);
    if (*(v189 + 3) - v190 > 0x39uLL)
    {
      qmemcpy(v190, ": Not enough positional command line arguments specified!\n", 58);
      v207 = *(v189 + 3);
      v191 = (*(v189 + 4) + 58);
      *(v189 + 4) = v191;
      if ((v207 - v191) > 0x15)
      {
LABEL_380:
        qmemcpy(v191, "Must specify at least ", 22);
        *(v189 + 4) += 22;
        OptionPred = llvm::raw_ostream::operator<<(v189, v184);
        v192 = *(OptionPred + 32);
        if ((*(OptionPred + 24) - v192) > 0x13)
        {
          goto LABEL_381;
        }

        goto LABEL_403;
      }
    }

    else
    {
      v189 = llvm::raw_ostream::write(v189, ": Not enough positional command line arguments specified!\n", 0x3AuLL);
      v191 = *(v189 + 4);
      if (*(v189 + 3) - v191 > 0x15uLL)
      {
        goto LABEL_380;
      }
    }

    v208 = llvm::raw_ostream::write(v189, "Must specify at least ", 0x16uLL);
    OptionPred = llvm::raw_ostream::operator<<(v208, v184);
    v192 = *(OptionPred + 32);
    if ((*(OptionPred + 24) - v192) > 0x13)
    {
LABEL_381:
      *(v192 + 16) = 1953391981;
      *v192 = *" positional argument";
      v193 = *(OptionPred + 24);
      v194 = (*(OptionPred + 32) + 20);
      *(OptionPred + 32) = v194;
      v195 = v184 > 1;
      if (v193 - v194 >= v195)
      {
        goto LABEL_382;
      }

      goto LABEL_404;
    }

LABEL_403:
    OptionPred = llvm::raw_ostream::write(OptionPred, " positional argument", 0x14uLL);
    v194 = *(OptionPred + 32);
    v195 = v184 > 1;
    if (*(OptionPred + 24) - v194 >= v195)
    {
LABEL_382:
      if (v184 >= 2)
      {
        v196 = OptionPred;
        v197 = v195;
        memcpy(v194, "s", v195);
        OptionPred = v196;
        v194 = (*(v196 + 32) + v197);
        *(v196 + 32) = v194;
      }

      if (*(OptionPred + 24) - v194 <= 6uLL)
      {
LABEL_385:
        OptionPred = llvm::raw_ostream::write(OptionPred, ": See: ", 7uLL);
        v198 = *v36;
        if (*v36)
        {
          goto LABEL_420;
        }

        goto LABEL_424;
      }

LABEL_408:
      *(v194 + 3) = 540697957;
      *v194 = 1699946554;
      *(OptionPred + 32) += 7;
      v198 = *v36;
      if (*v36)
      {
        goto LABEL_420;
      }

      goto LABEL_424;
    }

LABEL_404:
    if (v184 <= 1)
    {
      v209 = "";
    }

    else
    {
      v209 = "s";
    }

    OptionPred = llvm::raw_ostream::write(OptionPred, v209, v195);
    v194 = *(OptionPred + 32);
    if (*(OptionPred + 24) - v194 <= 6uLL)
    {
      goto LABEL_385;
    }

    goto LABEL_408;
  }

  v263 = v76;
  v77 = 0;
  v274 = 0;
  while (2)
  {
    v279 = v77;
    v286[0] = 0;
    v286[1] = 0;
    v287 = 0;
    v284 = 0;
    v285 = 0;
    v282 = "";
    v283 = 0;
    v78 = v36[v45];
    if (*v78 != 45 || (v79 = v78[1], (v78[1] == 0) | v274 & 1))
    {
      v77 = v279;
      if (v279)
      {
        v80 = strlen(v36[v45]);
        LODWORD(__p.__r_.__value_.__l.__data_) = v45;
        OptionPred = ProvideOption(v279, *(v279 + 16), *(v279 + 24), v78, v80, 0, 0, &__p);
        v81 = 9;
        goto LABEL_361;
      }

      if (*(v51 + 40))
      {
        OptionPred = strlen(v36[v45]);
        __p.__r_.__value_.__r.__words[0] = v36[v45];
        __p.__r_.__value_.__l.__size_ = OptionPred;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v45;
        if (v316 >= HIDWORD(v316))
        {
          if (v315 > &__p || v315 + 24 * v316 <= &__p)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v82 = v315 + 24 * v316;
        v83 = *&__p.__r_.__value_.__l.__data_;
        *(v82 + 2) = *(&__p.__r_.__value_.__l + 2);
        *v82 = v83;
        v84 = v316 + 1;
        LODWORD(v316) = v84;
        if (v84 >= v280 && *(v273 + 152))
        {
          v85 = v45 + 1;
          v288 = v45 + 1;
          if (v45 + 1 >= v278)
          {
            v77 = 0;
          }

          else
          {
            v86 = &v36[v85];
            do
            {
              if (*v86)
              {
                OptionPred = strlen(*v86);
              }

              else
              {
                OptionPred = 0;
              }

              __p.__r_.__value_.__r.__words[0] = *v86;
              __p.__r_.__value_.__l.__size_ = OptionPred;
              LODWORD(__p.__r_.__value_.__r.__words[2]) = v85;
              if (v84 >= HIDWORD(v316))
              {
                if (v315 > &__p || v315 + 24 * v84 <= &__p)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v87 = v315 + 24 * v316;
              v88 = *&__p.__r_.__value_.__l.__data_;
              *(v87 + 2) = *(&__p.__r_.__value_.__l + 2);
              *v87 = v88;
              v84 = v316 + 1;
              LODWORD(v316) = v316 + 1;
              ++v85;
              ++v86;
            }

            while (v85 < v278);
            v77 = 0;
            v288 = v85;
          }

          v81 = 7;
          v51 = v273;
        }

        else
        {
          v77 = 0;
          v81 = 9;
          v51 = v273;
        }

        goto LABEL_361;
      }

LABEL_286:
      v110 = *(v51 + 88);
      if (v110)
      {
        goto LABEL_287;
      }

      if (v45 > 1)
      {
        v149 = 1;
      }

      else
      {
        v149 = v265;
      }

      if (v149 == 1)
      {
        v150 = HIBYTE(v287);
        v151 = SHIBYTE(v287) < 0;
        v152 = v286[0];
        if (SHIBYTE(v287) >= 0)
        {
          v152 = v286;
        }

        __srca = v152;
        v153 = &v286[1];
      }

      else
      {
        v150 = HIBYTE(v291);
        v151 = v291 < 0;
        v154 = v289;
        if (v291 >= 0)
        {
          v154 = &v289;
        }

        __srca = v154;
        v153 = &v290;
      }

      v155 = *v153;
      if (v151)
      {
        v156 = v155;
      }

      else
      {
        v156 = v150;
      }

      v157 = *(v46 + 23);
      if (v157 >= 0)
      {
        v158 = v46;
      }

      else
      {
        v158 = *v46;
      }

      if (v157 >= 0)
      {
        v159 = *(v46 + 23);
      }

      else
      {
        v159 = *(v46 + 1);
      }

      v160 = llvm::raw_ostream::write(v268, v158, v159);
      v161 = v160[4];
      if ((v160[3] - v161) > 9)
      {
        *(v161 + 8) = 8302;
        *v161 = *": Unknown ";
        v162 = (v160[4] + 10);
        v160[4] = v162;
      }

      else
      {
        v160 = llvm::raw_ostream::write(v160, ": Unknown ", 0xAuLL);
        v162 = v160[4];
      }

      if (v149)
      {
        v163 = "command line argument";
      }

      else
      {
        v163 = "subcommand";
      }

      if (v149)
      {
        v164 = 21;
      }

      else
      {
        v164 = 10;
      }

      if (v164 <= v160[3] - v162)
      {
        v169 = v160;
        memcpy(v162, v163, v164);
        OptionPred = v169;
        v165 = (v169[4] + v164);
        v169[4] = v165;
        if (v169[3] - v165 <= 1uLL)
        {
          goto LABEL_327;
        }

LABEL_323:
        *v165 = 10016;
        *(OptionPred + 32) += 2;
        v166 = v36[v45];
        if (v166)
        {
          goto LABEL_324;
        }

LABEL_328:
        v170 = *(OptionPred + 32);
        if ((*(OptionPred + 24) - v170) <= 9)
        {
          goto LABEL_329;
        }

LABEL_335:
        *(v170 + 8) = 10016;
        *v170 = *"'.  Try: '";
        *(OptionPred + 32) += 10;
        v171 = *v36;
        if (!*v36)
        {
          goto LABEL_336;
        }

LABEL_330:
        v172 = OptionPred;
        v173 = strlen(v171);
        OptionPred = v172;
        if (v173 <= *(v172 + 24) - *(v172 + 32))
        {
          if (v173)
          {
            memcpy(*(v172 + 32), v171, v173);
            OptionPred = v172;
            *(v172 + 32) += v173;
          }
        }

        else
        {
          OptionPred = llvm::raw_ostream::write(v172, v171, v173);
        }

        v51 = v273;
        v174 = *(OptionPred + 32);
        v77 = v279;
        if ((*(OptionPred + 24) - v174) > 8)
        {
          goto LABEL_352;
        }

LABEL_337:
        OptionPred = llvm::raw_ostream::write(OptionPred, " --help'\n", 9uLL);
        if (!v156)
        {
LABEL_353:
          v81 = 9;
          __src = 1;
          goto LABEL_361;
        }
      }

      else
      {
        OptionPred = llvm::raw_ostream::write(v160, v163, v164);
        v165 = *(OptionPred + 32);
        if (*(OptionPred + 24) - v165 > 1uLL)
        {
          goto LABEL_323;
        }

LABEL_327:
        OptionPred = llvm::raw_ostream::write(OptionPred, " '", 2uLL);
        v166 = v36[v288];
        if (!v166)
        {
          goto LABEL_328;
        }

LABEL_324:
        v167 = OptionPred;
        v168 = strlen(v166);
        OptionPred = v167;
        if (v168 <= *(v167 + 24) - *(v167 + 32))
        {
          if (v168)
          {
            memcpy(*(v167 + 32), v166, v168);
            OptionPred = v167;
            *(v167 + 32) += v168;
          }
        }

        else
        {
          OptionPred = llvm::raw_ostream::write(v167, v166, v168);
        }

        v51 = v273;
        v170 = *(OptionPred + 32);
        if ((*(OptionPred + 24) - v170) > 9)
        {
          goto LABEL_335;
        }

LABEL_329:
        OptionPred = llvm::raw_ostream::write(OptionPred, "'.  Try: '", 0xAuLL);
        v171 = *v36;
        if (*v36)
        {
          goto LABEL_330;
        }

LABEL_336:
        v174 = *(OptionPred + 32);
        v77 = v279;
        if ((*(OptionPred + 24) - v174) <= 8)
        {
          goto LABEL_337;
        }

LABEL_352:
        *(v174 + 8) = 10;
        *v174 = *" --help'\n";
        *(OptionPred + 32) += 9;
        if (!v156)
        {
          goto LABEL_353;
        }
      }

      v175 = *(v46 + 23);
      if (v175 >= 0)
      {
        v176 = v46;
      }

      else
      {
        v176 = *v46;
      }

      if (v175 >= 0)
      {
        v177 = *(v46 + 23);
      }

      else
      {
        v177 = *(v46 + 1);
      }

      v178 = llvm::raw_ostream::write(v268, v176, v177);
      v179 = v178[4];
      if (v178[3] - v179 > 0xFuLL)
      {
        *v179 = *": Did you mean '";
        v178[4] += 16;
        if (v149)
        {
          goto LABEL_355;
        }

LABEL_346:
        v180 = v268;
        v181 = *(v268 + 4);
        if (v156 <= *(v268 + 3) - v181)
        {
          OptionPred = memcpy(v181, __srca, v156);
          *(v268 + 4) += v156;
          v182 = *(v268 + 4);
          if ((*(v268 + 3) - v182) <= 2)
          {
            goto LABEL_356;
          }
        }

        else
        {
          OptionPred = llvm::raw_ostream::write(v268, __srca, v156);
          v182 = *(v268 + 4);
          if ((*(v268 + 3) - v182) <= 2)
          {
            goto LABEL_356;
          }
        }
      }

      else
      {
        llvm::raw_ostream::write(v178, ": Did you mean '", 0x10uLL);
        if (!v149)
        {
          goto LABEL_346;
        }

LABEL_355:
        __p.__r_.__value_.__r.__words[0] = __srca;
        *&__p.__r_.__value_.__r.__words[1] = v156;
        v180 = v268;
        v182 = *(v268 + 4);
        if ((*(v268 + 3) - v182) <= 2)
        {
LABEL_356:
          OptionPred = llvm::raw_ostream::write(v180, "'?\n", 3uLL);
          goto LABEL_359;
        }
      }

      *(v182 + 2) = 10;
      *v182 = 16167;
      *(v180 + 4) += 3;
LABEL_359:
      v81 = 9;
      v93 = 1;
LABEL_360:
      __src = v93;
      goto LABEL_361;
    }

    if (v79 == 45 && !v78[2])
    {
      v81 = 9;
      v274 = 1;
      v77 = v279;
      goto LABEL_361;
    }

    if (v279 && (*(v279 + 10) & 0x400) != 0)
    {
      v94 = strlen(v78 + 1);
      v282 = (v78 + 1);
      v283 = v94;
      v95 = v79 != 45 || v94 == 0;
      v96 = v95;
      if (!v95)
      {
        v282 = (v78 + 2);
        v283 = v94 - 1;
      }

      v77 = v279;
      if (!OptionPred || (*(OptionPred + 10) & 0x180) != 0x80)
      {
        v97 = v36[v288];
        if (v97)
        {
          v98 = strlen(v36[v288]);
        }

        else
        {
          v98 = 0;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = v288;
        OptionPred = ProvideOption(v279, *(v279 + 16), *(v279 + 24), v97, v98, 0, 0, &__p);
        v274 = 0;
        v81 = 9;
        goto LABEL_361;
      }

      goto LABEL_157;
    }

    v89 = strlen(v78 + 1);
    v282 = (v78 + 1);
    v283 = v89;
    v90 = v79 != 45 || v89 == 0;
    v91 = v90;
    if (!v90)
    {
      v282 = (v78 + 2);
      v283 = v89 - 1;
    }

    v92 = v91 ^ 1;
    v77 = v279;
    if (OptionPred)
    {
LABEL_157:
      if ((*(OptionPred + 10) & 0x180) == 0x80)
      {
        v274 = 0;
        if ((*(OptionPred + 10) & 0x400) != 0 && v285)
        {
          __p.__r_.__value_.__r.__words[0] = "This argument does not take a value.\n\tInstead, it consumes any positional arguments until the next recognized option.";
          v330 = 259;
          v77 = OptionPred;
          OptionPred = llvm::cl::Option::error(OptionPred, &__p, 0, 0, v268);
          v274 = 0;
          v81 = 0;
          __src = 1;
        }

        else
        {
          v77 = OptionPred;
          v81 = 0;
        }

        goto LABEL_361;
      }

      OptionPred = ProvideOption(OptionPred, v282, v283, v284, v285, v278, v36, &v288);
      v274 = 0;
      v81 = 0;
      v93 = __src | OptionPred;
      goto LABEL_360;
    }

    if (atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
    {
      if (v51 == qword_27F8743D0[0])
      {
        goto LABEL_186;
      }

LABEL_183:
      if (!atomic_load_explicit(qword_27F8743D0, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      }

      if (OptionPred)
      {
        goto LABEL_157;
      }
    }

    else
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8743D0, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      if (v51 != qword_27F8743D0[0])
      {
        goto LABEL_183;
      }
    }

LABEL_186:
    if ((v92 & a7 & 1) != 0 || v283 == 1)
    {
      goto LABEL_212;
    }

    *&__dst = 0;
    OptionPred = getOptionPred(v282, v283, &__dst, isPrefixedOrGrouping, v51 + 128);
    if (!OptionPred)
    {
      goto LABEL_211;
    }

    while (2)
    {
      v100 = v282;
      v99 = v283;
      if (v283 >= __dst)
      {
        v101 = v283 - __dst;
      }

      else
      {
        v101 = 0;
      }

      if (v283 >= __dst)
      {
        v102 = __dst;
      }

      else
      {
        v102 = v283;
      }

      v283 = v102;
      if (__dst >= v99)
      {
        v103 = 0;
LABEL_209:
        v284 = v103;
        v285 = v101;
        v46 = v270;
        v77 = v279;
        goto LABEL_157;
      }

      v103 = v282 + __dst;
      v104 = *(OptionPred + 10);
      v105 = (v104 >> 7) & 3;
      if (v105 == 3)
      {
        goto LABEL_209;
      }

      if (v105 == 2)
      {
        if (*v103 == 61)
        {
LABEL_208:
          ++v103;
          --v101;
        }

        goto LABEL_209;
      }

      if (*v103 == 61)
      {
        goto LABEL_208;
      }

      v106 = (v104 >> 3) & 3;
      if (!v106)
      {
        v107 = OptionPred;
        v106 = (*(*OptionPred + 8))();
        OptionPred = v107;
      }

      if (v106 != 2)
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        __src |= ProvideOption(OptionPred, v100, v102, 0, 0, 0, 0, &__p);
        v282 = v103;
        v283 = v101;
        OptionPred = getOptionPred(v103, v101, &__dst, isGrouping, v51 + 128);
        if (!OptionPred)
        {
          goto LABEL_211;
        }

        continue;
      }

      break;
    }

    __p.__r_.__value_.__r.__words[0] = "may not occur within a group!";
    v330 = 259;
    v108 = OptionPred;
    v109 = llvm::errs(OptionPred);
    llvm::cl::Option::error(v108, &__p, 0, 0, v109);
    __src = 1;
LABEL_211:
    v46 = v270;
LABEL_212:
    v110 = *(v51 + 88);
    if (!v110)
    {
      v264 = v13;
      v303 = v282;
      v304 = v283;
      if (!v283)
      {
        goto LABEL_285;
      }

      __p.__r_.__value_.__s.__data_[0] = 61;
      v111 = llvm::StringRef::find(&v303, &__p, 1uLL, 0);
      if (v111 == -1)
      {
        v266 = 0;
        v267 = 0;
        v260 = v304;
        v261 = v303;
      }

      else
      {
        v112 = v111 >= v304 ? v304 : v111;
        v260 = v112;
        v261 = v303;
        v113 = v304 >= v111 + 1 ? v111 + 1 : v304;
        v266 = v303 + v113;
        v267 = v304 - v113;
      }

      v114 = *(v51 + 128);
      v115 = *(v51 + 136);
      if (v115)
      {
        v116 = *(v51 + 128);
        if (*v114)
        {
          v117 = *v114 == -8;
        }

        else
        {
          v117 = 1;
        }

        if (v117)
        {
          do
          {
            v119 = v116[1];
            ++v116;
            v118 = v119;
            if (v119)
            {
              v120 = v118 == -8;
            }

            else
            {
              v120 = 1;
            }
          }

          while (v120);
        }
      }

      else
      {
        v116 = *(v51 + 128);
      }

      v121 = &v114[v115];
      if (v116 == v121)
      {
        goto LABEL_285;
      }

      v122 = 0;
      v123 = 0;
      v124 = *v116;
      v262 = v121;
      while (1)
      {
        v125 = *(v124 + 8);
        if ((*(v125 + 10) & 0x60) != 0x40)
        {
          break;
        }

        do
        {
LABEL_278:
          v142 = v116[1];
          ++v116;
          v124 = v142;
          if (v142)
          {
            v143 = v124 == -8;
          }

          else
          {
            v143 = 1;
          }
        }

        while (v143);
        if (v116 == v121)
        {
LABEL_285:
          v45 = v288;
          v13 = v264;
          goto LABEL_286;
        }
      }

      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
      __p.__r_.__value_.__l.__size_ = 0x1000000000;
      (*(*v125 + 72))(v125, &__p);
      v126 = *(v125 + 24);
      if (v126)
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= HIDWORD(__p.__r_.__value_.__r.__words[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v127 = (__p.__r_.__value_.__r.__words[0] + 16 * LODWORD(__p.__r_.__value_.__r.__words[1]));
        *v127 = *(v125 + 16);
        v127[1] = v126;
        ++LODWORD(__p.__r_.__value_.__r.__words[1]);
      }

      v128 = (*(v125 + 10) >> 3) & 3;
      if (v128)
      {
        v129 = LODWORD(__p.__r_.__value_.__r.__words[1]);
        if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
        {
          goto LABEL_275;
        }
      }

      else
      {
        v128 = (*(*v125 + 8))(v125);
        v129 = LODWORD(__p.__r_.__value_.__r.__words[1]);
        if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
        {
LABEL_275:
          if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
          {
            free(__p.__r_.__value_.__l.__data_);
          }

          v46 = v270;
          v51 = v273;
          v121 = v262;
          goto LABEL_278;
        }
      }

      v272 = v125;
      v130 = __p.__r_.__value_.__r.__words[0];
      if (v128 == 3)
      {
        v131 = v304;
      }

      else
      {
        v131 = v260;
      }

      if (v128 == 3)
      {
        v132 = v303;
      }

      else
      {
        v132 = v261;
      }

      v133 = 16 * v129;
      if (v128 != 3 && v267 != 0)
      {
        do
        {
          __dst = *v130;
          v135 = llvm::StringRef::edit_distance(&__dst, v132, v131, 1, v123);
          v136 = v135;
          if (!v122 || v135 < v123)
          {
            v137 = *(v130 + 8);
            v295[0] = *v130;
            v295[1] = v137;
            v295[2] = "=";
            v296 = 773;
            *&__dst = v295;
            v298 = v266;
            v299 = v267;
            v300 = 1282;
            llvm::Twine::str(&__dst, &v301);
            if (SHIBYTE(v287) < 0)
            {
              operator delete(v286[0]);
            }

            *v286 = v301;
            v287 = v302;
            v123 = v136;
            v122 = v272;
          }

          v130 += 16;
          v133 -= 16;
        }

        while (v133);
        goto LABEL_275;
      }

      while (1)
      {
        __dst = *v130;
        v138 = llvm::StringRef::edit_distance(&__dst, v132, v131, 1, v123);
        v139 = v138;
        if (v122 && v138 >= v123)
        {
          goto LABEL_265;
        }

        v140 = *(v130 + 8);
        if (v140 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_531;
        }

        v141 = *v130;
        if (v140 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v298) = *(v130 + 8);
        if (v140)
        {
          memmove(&__dst, v141, v140);
          v36 = v271;
          *(&__dst + v140) = 0;
          if (SHIBYTE(v287) < 0)
          {
LABEL_274:
            operator delete(v286[0]);
          }
        }

        else
        {
          v36 = v271;
          LOBYTE(__dst) = 0;
          if (SHIBYTE(v287) < 0)
          {
            goto LABEL_274;
          }
        }

        *v286 = __dst;
        v287 = v298;
        v123 = v139;
        v122 = v272;
LABEL_265:
        v130 += 16;
        v133 -= 16;
        if (!v133)
        {
          goto LABEL_275;
        }
      }
    }

    v45 = v288;
LABEL_287:
    v144 = *(v51 + 80);
    v145 = v45;
    v146 = 8 * v110;
    do
    {
      v148 = v36[v145];
      if (v148)
      {
        v147 = strlen(v36[v145]);
      }

      else
      {
        v147 = 0;
      }

      OptionPred = (*(**v144 + 80))(*v144, v145, "", 0, v148, v147, 0);
      ++v144;
      v146 -= 8;
    }

    while (v146);
    v81 = 9;
    v51 = v273;
    v77 = v279;
LABEL_361:
    if (SHIBYTE(v287) < 0)
    {
      operator delete(v286[0]);
      if (v81 == 9)
      {
        goto LABEL_123;
      }

LABEL_365:
      if (!v81)
      {
        goto LABEL_123;
      }

      break;
    }

    if (v81 != 9)
    {
      goto LABEL_365;
    }

LABEL_123:
    v45 = v288 + 1;
    v288 = v45;
    if (v45 < v278)
    {
      continue;
    }

    break;
  }

  v183 = v316;
  v76 = v263;
  v184 = v280;
  v185 = __src;
  if (v316 < v280)
  {
    goto LABEL_372;
  }

LABEL_388:
  v199 = *(v51 + 40);
  if (v183 <= v199)
  {
    v76 = 0;
  }

  if (v76)
  {
    v200 = *(v46 + 23);
    if (v200 >= 0)
    {
      v201 = v46;
    }

    else
    {
      v201 = *v46;
    }

    if (v200 >= 0)
    {
      v202 = *(v46 + 23);
    }

    else
    {
      v202 = *(v46 + 1);
    }

    v203 = llvm::raw_ostream::write(v268, v201, v202);
    v204 = *(v203 + 4);
    if (*(v203 + 3) - v204 > 0x2AuLL)
    {
      qmemcpy(v204, ": Too many positional arguments specified!\n", 43);
      v216 = *(v203 + 3);
      v205 = *(v203 + 4) + 43;
      *(v203 + 4) = v205;
      if ((v216 - v205) <= 0x13)
      {
        goto LABEL_417;
      }

LABEL_399:
      *(v205 + 16) = 544502639;
      *v205 = *"Can specify at most ";
      *(v203 + 4) += 20;
      OptionPred = llvm::raw_ostream::operator<<(v203, *(v51 + 40));
      v206 = *(OptionPred + 32);
      if (*(OptionPred + 24) - v206 > 0x1BuLL)
      {
        goto LABEL_400;
      }

LABEL_418:
      OptionPred = llvm::raw_ostream::write(OptionPred, " positional arguments: See: ", 0x1CuLL);
    }

    else
    {
      v203 = llvm::raw_ostream::write(v203, ": Too many positional arguments specified!\n", 0x2BuLL);
      v205 = *(v203 + 4);
      if ((*(v203 + 3) - v205) > 0x13)
      {
        goto LABEL_399;
      }

LABEL_417:
      v217 = llvm::raw_ostream::write(v203, "Can specify at most ", 0x14uLL);
      OptionPred = llvm::raw_ostream::operator<<(v217, *(v51 + 40));
      v206 = *(OptionPred + 32);
      if (*(OptionPred + 24) - v206 <= 0x1BuLL)
      {
        goto LABEL_418;
      }

LABEL_400:
      qmemcpy(v206, " positional arguments: See: ", 28);
      *(OptionPred + 32) += 28;
    }

    v198 = *v36;
    if (*v36)
    {
LABEL_420:
      v218 = OptionPred;
      v219 = strlen(v198);
      OptionPred = v218;
      if (v219 <= *(v218 + 24) - *(v218 + 32))
      {
        if (v219)
        {
          memcpy(*(v218 + 32), v198, v219);
          OptionPred = v218;
          *(v218 + 32) += v219;
        }
      }

      else
      {
        OptionPred = llvm::raw_ostream::write(v218, v198, v219);
      }
    }

LABEL_424:
    v220 = *(OptionPred + 32);
    if (*(OptionPred + 24) - v220 > 7uLL)
    {
      *v220 = 0xA706C65682D2D20;
      *(OptionPred + 32) += 8;
    }

    else
    {
      OptionPred = llvm::raw_ostream::write(OptionPred, " --help\n", 8uLL);
    }

    v185 = 1;
    goto LABEL_428;
  }

  v210 = *(v51 + 32);
  if (!*(v51 + 152))
  {
    if (!v199)
    {
LABEL_498:
      v51 = v273;
      v185 = __src;
      goto LABEL_428;
    }

    v239 = 0;
    v240 = &v210[v199];
    while (1)
    {
      v241 = *v210;
      v242 = *(*v210 + 10);
      if ((v242 & 6) == 2)
      {
        v243 = v315 + 24 * v239;
        v244 = *v243;
        v245 = *(v243 + 1);
        LODWORD(__p.__r_.__value_.__l.__data_) = *(v243 + 4);
        OptionPred = ProvideOption(v241, *(v241 + 16), *(v241 + 24), v244, v245, 0, 0, &__p);
        ++v239;
        v242 = *(v241 + 10);
        if (v183 - v239 > --v280)
        {
          goto LABEL_493;
        }
      }

      else if (v183 - v239 > v280)
      {
LABEL_493:
        if ((v242 & 7) != 2)
        {
          v246 = v183 - 1 - v239;
          do
          {
            v247 = *(v241 + 10);
            v248 = v315 + 24 * v239;
            v249 = *v248;
            v250 = *(v248 + 1);
            LODWORD(__p.__r_.__value_.__l.__data_) = *(v248 + 4);
            OptionPred = ProvideOption(v241, *(v241 + 16), *(v241 + 24), v249, v250, 0, 0, &__p);
            ++v239;
            if (v246 <= v280)
            {
              break;
            }

            --v246;
          }

          while ((v247 & 7) != 0);
        }
      }

      ++v210;
      v46 = v270;
      if (v210 == v240)
      {
        goto LABEL_498;
      }
    }
  }

  v211 = 0;
  if (v199)
  {
    v212 = 8 * v199;
    do
    {
      OptionPred = *v210;
      if ((*(*v210 + 10) & 6) == 2)
      {
        v213 = v315 + 24 * v211;
        v214 = *v213;
        v215 = *(v213 + 1);
        LODWORD(__p.__r_.__value_.__l.__data_) = *(v213 + 4);
        OptionPred = ProvideOption(OptionPred, *(OptionPred + 16), *(OptionPred + 24), v214, v215, 0, 0, &__p);
        v185 |= OptionPred;
        ++v211;
      }

      ++v210;
      v212 -= 8;
    }

    while (v212);
    v51 = v273;
    v183 = v316;
    if (*(v273 + 40) == 1 && v211 == 0)
    {
      if (!v316)
      {
        goto LABEL_428;
      }

      v236 = **(v273 + 32);
      v237 = *v315;
      v238 = *(v315 + 1);
      LODWORD(__p.__r_.__value_.__l.__data_) = *(v315 + 4);
      OptionPred = ProvideOption(v236, *(v236 + 16), *(v236 + 24), v237, v238, 0, 0, &__p);
      v185 |= OptionPred;
      v211 = 1;
      v183 = v316;
    }
  }

  if (v183 != v211)
  {
    do
    {
      v251 = *(v51 + 152);
      v252 = v315 + 24 * v211;
      v253 = *v252;
      v254 = *(v252 + 1);
      LODWORD(__p.__r_.__value_.__l.__data_) = *(v252 + 4);
      OptionPred = ProvideOption(v251, *(v251 + 16), *(v251 + 24), v253, v254, 0, 0, &__p);
      v185 |= OptionPred;
      ++v211;
    }

    while (v211 != v316);
  }

LABEL_428:
  v221 = *(v51 + 128);
  v222 = *(v51 + 136);
  if (!v222)
  {
    v223 = *(v51 + 128);
    v228 = &v221[v222];
    if (v221 == v228)
    {
      goto LABEL_450;
    }

    goto LABEL_441;
  }

  v223 = *(v51 + 128);
  if (*v221)
  {
    v224 = *v221 == -8;
  }

  else
  {
    v224 = 1;
  }

  if (v224)
  {
    do
    {
      v226 = v223[1];
      ++v223;
      v225 = v226;
      if (v226)
      {
        v227 = v225 == -8;
      }

      else
      {
        v227 = 1;
      }
    }

    while (v227);
  }

  v228 = &v221[v222];
  if (v223 != v228)
  {
LABEL_441:
    v229 = *v223;
    do
    {
      v230 = *(v229 + 8);
      if ((*(v230 + 10) & 6) == 2 && !*(v230 + 8))
      {
        __p.__r_.__value_.__r.__words[0] = "must be specified at least once!";
        v330 = 259;
        v231 = llvm::errs(OptionPred);
        OptionPred = llvm::cl::Option::error(v230, &__p, 0, 0, v231);
        v185 = 1;
      }

      do
      {
        v232 = v223[1];
        ++v223;
        v229 = v232;
        if (v232)
        {
          v233 = v229 == -8;
        }

        else
        {
          v233 = 1;
        }
      }

      while (v233);
    }

    while (v223 != v228);
  }

LABEL_450:
  *(v46 + 6) = *(v46 + 5);
  if (!a5 && (v185 & 1) != 0)
  {
    exit(1);
  }

  if (v315 != v317)
  {
    free(v315);
  }

  v32 = v185 ^ 1;
  if (SHIBYTE(v291) < 0)
  {
    operator delete(v289);
  }

LABEL_456:
  if (v320)
  {
    llvm::deallocate_buffer(*v319, 0x1000);
  }

  if (v323)
  {
    llvm::deallocate_buffer(*v322, *(v322 + 1));
  }

  if (v322 != v324)
  {
    free(v322);
  }

  if (v319 != v321)
  {
    free(v319);
  }

  if (v325 != v327)
  {
    free(v325);
  }

  if (v307)
  {
    llvm::deallocate_buffer(*v306, 0x1000);
  }

  if (v310)
  {
    llvm::deallocate_buffer(*v309, *(v309 + 1));
  }

  if (v309 != v311)
  {
    free(v309);
  }

  if (v306 != v308)
  {
    free(v306);
  }

  if (v312 != v13)
  {
    free(v312);
  }

  return v32 & 1;
}

void initCommonOptions(llvm *a1)
{
  if (!atomic_load_explicit(qword_27F874400, memory_order_acquire))
  {
  }

  llvm::initDebugCounterOptions(a1);
  inited = llvm::initGraphWriterOptions(v1);
  llvm::initSignalsOptions(inited);
  llvm::initStatisticOptions(v3);
  llvm::initTimerOptions(v4);
  llvm::initTypeSizeOptions(v5);
  llvm::initWithColorOptions(v6);
  v8 = llvm::initDebugOptions(v7);

  llvm::initRandomSeedOptions(v8);
}

uint64_t llvm::cl::Option::error(void *a1, llvm::Twine *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *a5)
{
  v5 = a5;
  if (a3)
  {
    v7 = a4;
    v8 = a3;
    if (a4)
    {
LABEL_3:
      if (!atomic_load_explicit(qword_27F8743B8, memory_order_acquire))
      {
      }

      v9 = *(qword_27F8743B8[0] + 23);
      if (v9 >= 0)
      {
        v10 = qword_27F8743B8[0];
      }

      else
      {
        v10 = *qword_27F8743B8[0];
      }

      if (v9 >= 0)
      {
        v11 = *(qword_27F8743B8[0] + 23);
      }

      else
      {
        v11 = *(qword_27F8743B8[0] + 8);
      }

      v12 = llvm::raw_ostream::write(v5, v10, v11);
      v13 = v12[4];
      if ((v12[3] - v13) > 9)
      {
        *(v13 + 8) = 8293;
        *v13 = *": for the ";
        v12[4] += 10;
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, ": for the ", 0xAuLL);
      }

      v21[0] = v8;
      v21[1] = v7;
      v21[2] = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = a1[2];
    v7 = a1[3];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v14 = a1[4];
  v15 = a1[5];
  v16 = *(a5 + 4);
  if (v15 <= *(a5 + 3) - v16)
  {
    if (v15)
    {
      v20 = v15;
      memcpy(v16, v14, v15);
      *(v5 + 4) += v20;
    }
  }

  else
  {
    llvm::raw_ostream::write(a5, v14, v15);
  }

LABEL_18:
  v17 = *(v5 + 4);
  if ((*(v5 + 3) - v17) > 8)
  {
    *(v17 + 8) = 32;
    *v17 = *" option: ";
    *(v5 + 4) += 9;
    llvm::Twine::print(a2, v5);
    v18 = *(v5 + 4);
    if (*(v5 + 3) != v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(v5, " option: ", 9uLL);
    llvm::Twine::print(a2, v5);
    v18 = *(v5 + 4);
    if (*(v5 + 3) != v18)
    {
LABEL_20:
      *v18 = 10;
      ++*(v5 + 4);
      return 1;
    }
  }

  llvm::raw_ostream::write(v5, "\n", 1uLL);
  return 1;
}

void *anonymous namespace::operator<<(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v15 = 0;
  for (i = 0; v5; --v5)
  {
    if ((i + 1) > 8)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v16[i] = 32;
    i = ++v15;
  }

  if (v4 <= 1)
  {
    v7 = "-";
  }

  else
  {
    v7 = "--";
  }

  if (v4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 + i > 8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  memcpy(&v16[i], v7, v8);
  v9 = llvm::raw_ostream::write(a1, v16, v15 + v8);
  v10 = *a2;
  v11 = *(a2 + 8);
  if (v11 <= v9[3] - v9[4])
  {
    if (v11)
    {
      v12 = v9;
      v13 = *(a2 + 8);
      memcpy(v9[4], v10, v11);
      v12[4] += v13;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, v10, v11);
  }

  return a1;
}

uint64_t llvm::cl::Option::addOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    ++*(a1 + 8);
  }

  return (**a1)(a1);
}

uint64_t llvm::cl::alias::getOptionWidth(llvm::cl::alias *this)
{
  v1 = *(this + 3);
  if (v1 == 1)
  {
    return 7;
  }

  else
  {
    return v1 + 7;
  }
}

void *llvm::cl::Option::printHelpStr(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v33 = 10;
  v6 = llvm::StringRef::find(&v32, &v33, 1uLL, 0);
  if (v6 == -1)
  {
    v30 = 0;
    v31 = 0;
    v27 = v32;
  }

  else
  {
    if (v6 >= *(&v32 + 1))
    {
      v7 = *(&v32 + 1);
    }

    else
    {
      v7 = v6;
    }

    if (*(&v32 + 1) >= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(&v32 + 1);
    }

    *&v27 = v32;
    *(&v27 + 1) = v7;
    v30 = &v8[v32];
    v31 = *(&v32 + 1) - v8;
  }

  v9 = llvm::outs(v6);
  result = llvm::raw_ostream::indent(v9, a3 - a4);
  v11 = result[4];
  if ((result[3] - v11) <= 2)
  {
    result = llvm::raw_ostream::write(result, " - ", 3uLL);
    v12 = result[4];
    v14 = *(&v27 + 1);
    v13 = v27;
    if (*(&v27 + 1) <= result[3] - v12)
    {
      goto LABEL_12;
    }

LABEL_18:
    result = llvm::raw_ostream::write(result, v13, v14);
    v12 = result[4];
    if (result[3] != v12)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  *(v11 + 2) = 32;
  *v11 = 11552;
  v17 = result[3];
  v12 = (result[4] + 3);
  result[4] = v12;
  v14 = *(&v27 + 1);
  v13 = v27;
  if (*(&v27 + 1) > (v17 - v12))
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v14)
  {
    v15 = result;
    v16 = v14;
    memcpy(v12, v13, v14);
    result = v15;
    v12 = (v15[4] + v16);
    v15[4] = v12;
  }

  if (result[3] != v12)
  {
LABEL_15:
    *v12 = 10;
    ++result[4];
    if (v31)
    {
      goto LABEL_22;
    }

    return result;
  }

LABEL_19:
  for (result = llvm::raw_ostream::write(result, "\n", 1uLL); v31; result = llvm::raw_ostream::write(result, "\n", 1uLL))
  {
LABEL_22:
    while (1)
    {
      v33 = 10;
      v18 = llvm::StringRef::find(&v30, &v33, 1uLL, 0);
      if (v18 == -1)
      {
        v22 = 0;
        v23 = 0;
        v19 = v30;
        v20 = v31;
      }

      else
      {
        v19 = v30;
        v20 = v18 >= v31 ? v31 : v18;
        v21 = v31 >= v18 + 1 ? v18 + 1 : v31;
        v22 = &v30[v21];
        v23 = v31 - v21;
      }

      v28 = v19;
      v29 = v20;
      v30 = v22;
      v31 = v23;
      v24 = llvm::outs(v18);
      result = llvm::raw_ostream::indent(v24, a3);
      v25 = result[4];
      if (v29 <= result[3] - v25)
      {
        if (v29)
        {
          v26 = result;
          memcpy(result[4], v28, v29);
          result = v26;
          v25 = (v26[4] + v29);
          v26[4] = v25;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(result, v28, v29);
        v25 = result[4];
      }

      if (result[3] == v25)
      {
        break;
      }

      *v25 = 10;
      ++result[4];
      if (!v31)
      {
        return result;
      }
    }
  }

  return result;
}

void *llvm::cl::Option::printEnumValHelpStr(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *&v34 = a1;
  *(&v34 + 1) = a2;
  v35 = 10;
  v6 = llvm::StringRef::find(&v34, &v35, 1uLL, 0);
  if (v6 == -1)
  {
    v32 = 0;
    v33 = 0;
    v29 = v34;
  }

  else
  {
    if (v6 >= *(&v34 + 1))
    {
      v7 = *(&v34 + 1);
    }

    else
    {
      v7 = v6;
    }

    if (*(&v34 + 1) >= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(&v34 + 1);
    }

    *&v29 = v34;
    *(&v29 + 1) = v7;
    v32 = &v8[v34];
    v33 = *(&v34 + 1) - v8;
  }

  v9 = llvm::outs(v6);
  result = llvm::raw_ostream::indent(v9, a3 - a4);
  v11 = result[4];
  if ((result[3] - v11) > 2)
  {
    *(v11 + 2) = 32;
    *v11 = 11552;
    v19 = result[3];
    v12 = (result[4] + 3);
    result[4] = v12;
    if ((v19 - v12) > 1)
    {
LABEL_12:
      *v12 = 8224;
      v13 = result[3];
      v14 = (result[4] + 2);
      result[4] = v14;
      v16 = *(&v29 + 1);
      v15 = v29;
      if (*(&v29 + 1) <= (v13 - v14))
      {
        goto LABEL_13;
      }

LABEL_20:
      result = llvm::raw_ostream::write(result, v15, v16);
      v14 = result[4];
      if (result[3] != v14)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " - ", 3uLL);
    v12 = result[4];
    if (result[3] - v12 > 1uLL)
    {
      goto LABEL_12;
    }
  }

  result = llvm::raw_ostream::write(result, "  ", 2uLL);
  v14 = result[4];
  v16 = *(&v29 + 1);
  v15 = v29;
  if (*(&v29 + 1) > result[3] - v14)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (v16)
  {
    v17 = result;
    v18 = v16;
    memcpy(v14, v15, v16);
    result = v17;
    v14 = (v17[4] + v18);
    v17[4] = v14;
  }

  if (result[3] != v14)
  {
LABEL_16:
    *v14 = 10;
    ++result[4];
    if (v33)
    {
      goto LABEL_24;
    }

    return result;
  }

LABEL_21:
  for (result = llvm::raw_ostream::write(result, "\n", 1uLL); v33; result = llvm::raw_ostream::write(result, "\n", 1uLL))
  {
LABEL_24:
    while (1)
    {
      v35 = 10;
      v20 = llvm::StringRef::find(&v32, &v35, 1uLL, 0);
      if (v20 == -1)
      {
        v24 = 0;
        v25 = 0;
        v21 = v32;
        v22 = v33;
      }

      else
      {
        v21 = v32;
        v22 = v20 >= v33 ? v33 : v20;
        v23 = v33 >= v20 + 1 ? v20 + 1 : v33;
        v24 = &v32[v23];
        v25 = v33 - v23;
      }

      v30 = v21;
      v31 = v22;
      v32 = v24;
      v33 = v25;
      v26 = llvm::outs(v20);
      result = llvm::raw_ostream::indent(v26, a3 + 2);
      v27 = result[4];
      if (v31 <= result[3] - v27)
      {
        if (v31)
        {
          v28 = result;
          memcpy(result[4], v30, v31);
          result = v28;
          v27 = (v28[4] + v31);
          v28[4] = v27;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(result, v30, v31);
        v27 = result[4];
      }

      if (result[3] == v27)
      {
        break;
      }

      *v27 = 10;
      ++result[4];
      if (!v33)
      {
        return result;
      }
    }
  }

  return result;
}

void *llvm::cl::alias::printOptionInfo(llvm::cl::alias *this, unsigned int a2)
{
  v4 = llvm::outs(this);
  v10 = *(this + 1);
  v11 = 2;
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = *(this + 3);
  if (v7 == 1)
  {
    v8 = 7;
  }

  else
  {
    v8 = v7 + 7;
  }

  return llvm::cl::Option::printHelpStr(v5, v6, a2, v8);
}

void *llvm::cl::basic_parser_impl::printOptionName(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, int a3)
{
  v5 = llvm::outs(this);
  v10 = *(a2 + 1);
  v11 = 2;
  v7 = llvm::outs(v6);
  v8 = a3 - *(a2 + 6);

  return llvm::raw_ostream::indent(v7, v8);
}

uint64_t llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse(llvm *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _DWORD *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v20 = v7;
      v21 = v8;
      v17 = 1283;
      v16[0] = "'";
      v16[2] = a5;
      v16[3] = a6;
      v18[0] = v16;
      v18[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v19 = 770;
      v15 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v18, 0, 0, v15);
      return 1;
    }

    v9 = *a5;
    if (v9 != 48)
    {
      if (v9 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 2;
  return result;
}

BOOL llvm::cl::parser<long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void *a7)
{
  v16[0] = 0;
  result = llvm::getAsSignedInteger(a5, a6, 0, v16);
  if (result)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for long argument!";
    v17 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return v12;
  }

  else
  {
    *a7 = v16[0];
  }

  return result;
}

BOOL llvm::cl::parser<long long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void *a7)
{
  v16[0] = 0;
  result = llvm::getAsSignedInteger(a5, a6, 0, v16);
  if (result)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for llong argument!";
    v17 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return v12;
  }

  else
  {
    *a7 = v16[0];
  }

  return result;
}

uint64_t llvm::cl::parser<unsigned long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v16[0] = 0;
  result = llvm::getAsUnsignedInteger(a5, a6, 0, v16);
  if (result)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for ulong argument!";
    v17 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return v12;
  }

  else
  {
    *a7 = v16[0];
  }

  return result;
}

uint64_t llvm::cl::parser<unsigned long long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v16[0] = 0;
  result = llvm::getAsUnsignedInteger(a5, a6, 0, v16);
  if (result)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for ullong argument!";
    v17 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return v12;
  }

  else
  {
    *a7 = v16[0];
  }

  return result;
}

BOOL parseDouble(void *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  v17 = v19;
  v18 = xmmword_25736B040;
  v8 = llvm::Twine::toNullTerminatedStringRef(v14, &v17);
  v16 = 0;
  v9 = strtod(v8, &v16);
  v10 = *v16;
  if (!*v16)
  {
    *a4 = v9;
  }

  v11 = v17;
  if (v17 != v19)
  {
    free(v17);
  }

  if (v10)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a2;
    v14[3] = a3;
    v17 = v14;
    *(&v18 + 1) = "' value invalid for floating point argument!";
    v19[4] = 770;
    v12 = llvm::errs(v11);
    llvm::cl::Option::error(a1, &v17, 0, 0, v12);
  }

  return v10 != 0;
}

float llvm::cl::parser<float>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7)
{
  v9 = 0.0;
  if (!parseDouble(a2, a5, a6, &v9))
  {
    result = v9;
    *a7 = result;
  }

  return result;
}

uint64_t llvm::cl::generic_parser_base::findOption(uint64_t a1, const void *a2, size_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  do
  {
    v9 = (*(*a1 + 24))(a1, v8);
    if (v10 == a3 && (!a3 || !memcmp(v9, a2, a3)))
    {
      return v8;
    }

    v8 = (v8 + 1);
  }

  while (v7 != v8);
  return v7;
}

unint64_t llvm::cl::generic_parser_base::getOptionWidth(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v15 = v3 == 1;
    v5 = v3 + 15;
    if (v15)
    {
      v6 = 15;
    }

    else
    {
      v6 = v5;
    }

    v7 = (*(*this + 16))(this);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        (*(*this + 24))(this, v9);
        v11 = v10;
        (*(*this + 32))(this, v9);
        v13 = v12;
        v14 = (*(a2 + 5) >> 3) & 3;
        if (v14)
        {
          v15 = v14 == 1 && v11 == 0;
          if (!v15 || v12 != 0)
          {
            goto LABEL_24;
          }
        }

        else if ((*(*a2 + 8))(a2) != 1 || v11 != 0 || v13 != 0)
        {
LABEL_24:
          v19 = v11 + 8;
          if (!v11)
          {
            v19 = 15;
          }

          if (v6 <= v19)
          {
            v6 = v19;
          }
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }
  }

  else
  {
    v20 = (*(*this + 16))(this);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v6 = 0;
      do
      {
        (*(*this + 24))(this, v22);
        if (v6 <= v23 + 8)
        {
          v6 = v23 + 8;
        }

        v22 = (v22 + 1);
      }

      while (v21 != v22);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t llvm::cl::generic_parser_base::printOptionInfo(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, unsigned int a3)
{
  if (!*(a2 + 3))
  {
    if (!*(a2 + 5))
    {
      goto LABEL_12;
    }

    v6 = llvm::outs(this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
      *v7 = 8224;
      v17 = *(v6 + 3);
      v8 = (*(v6 + 4) + 2);
      *(v6 + 4) = v8;
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      if (v10 <= v17 - v8)
      {
LABEL_8:
        if (v10)
        {
          v11 = v6;
          v12 = v10;
          memcpy(v8, v9, v10);
          v6 = v11;
          v8 = (*(v11 + 4) + v12);
          *(v11 + 4) = v8;
        }

        if (v8 < *(v6 + 3))
        {
          goto LABEL_11;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v6 = llvm::raw_ostream::write(v6, "  ", 2uLL);
      v8 = *(v6 + 4);
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      if (v10 <= *(v6 + 3) - v8)
      {
        goto LABEL_8;
      }
    }

    v6 = llvm::raw_ostream::write(v6, v9, v10);
    v8 = *(v6 + 4);
    if (v8 < *(v6 + 3))
    {
LABEL_11:
      *(v6 + 4) = v8 + 1;
      *v8 = 10;
LABEL_12:
      result = (*(*this + 16))(this);
      if (!result)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_22:
    llvm::raw_ostream::write(v6, 10);
    result = (*(*this + 16))(this);
    if (!result)
    {
      return result;
    }

LABEL_23:
    v18 = result;
    v19 = 0;
    do
    {
      v22 = (*(*this + 24))(this, v19);
      v24 = v23;
      v25 = llvm::outs(v22);
      v26 = v25[4];
      if (v25[3] - v26 > 3uLL)
      {
        *v26 = 538976288;
        v25[4] += 4;
      }

      else
      {
        v25 = llvm::raw_ostream::write(v25, "    ", 4uLL);
      }

      *&v57 = v22;
      *(&v57 + 1) = v24;
      v58 = 2;
      v20 = (*(*this + 32))(this, v19);
      result = llvm::cl::Option::printHelpStr(v20, v21, a3, v24 + 8);
      v19 = (v19 + 1);
    }

    while (v18 != v19);
    return result;
  }

  v5 = (*(a2 + 5) >> 3) & 3;
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 != 1)
    {
      goto LABEL_32;
    }
  }

  v5 = (*(*this + 16))(this);
  if (v5)
  {
    v14 = v5;
    v15 = 0;
    while (1)
    {
      v5 = (*(*this + 24))(this, v15);
      if (!v16)
      {
        break;
      }

      v15 = (v15 + 1);
      if (v14 == v15)
      {
        goto LABEL_32;
      }
    }

    v27 = llvm::outs(v5);
    v57 = *(a2 + 1);
    v58 = 2;
    v28 = *(a2 + 3);
    if (v28 == 1)
    {
      v29 = 7;
    }

    else
    {
      v29 = v28 + 7;
    }

    v5 = llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v29);
  }

LABEL_32:
  v30 = llvm::outs(v5);
  v57 = *(a2 + 1);
  v58 = 2;
  v32 = v31[4];
  if (v31[3] - v32 > 7uLL)
  {
    *v32 = 0x3E65756C61763C3DLL;
    v31[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(v31, "=<value>", 8uLL);
  }

  v33 = *(a2 + 3);
  if (v33 == 1)
  {
    v34 = 15;
  }

  else
  {
    v34 = v33 + 15;
  }

  llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v34);
  result = (*(*this + 16))(this);
  if (result)
  {
    v35 = result;
    v36 = 0;
    do
    {
      v37 = (*(*this + 24))(this, v36);
      v39 = v38;
      v41 = (*(*this + 32))(this, v36);
      v42 = v40;
      result = (*(a2 + 5) >> 3) & 3;
      if (result)
      {
        if (result == 1 && v39 == 0 && v40 == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        result = (*(*a2 + 8))(a2);
        if (result == 1 && v39 == 0 && v42 == 0)
        {
          goto LABEL_41;
        }
      }

      v47 = llvm::outs(result);
      v48 = v47;
      v49 = v47[4];
      if ((v47[3] - v49) > 4)
      {
        *(v49 + 4) = 61;
        *v49 = 538976288;
        v53 = v47[3];
        v50 = (v47[4] + 5);
        v48[4] = v50;
        v51 = v39 + 8;
        if (v39 > v53 - v50)
        {
LABEL_64:
          v52 = llvm::raw_ostream::write(v48, v37, v39);
          if (!v42)
          {
            goto LABEL_70;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v48 = llvm::raw_ostream::write(v47, "    =", 5uLL);
        v50 = v48[4];
        v51 = v39 + 8;
        if (v39 > v48[3] - v50)
        {
          goto LABEL_64;
        }
      }

      if (v39)
      {
        v52 = memcpy(v50, v37, v39);
        v48[4] += v39;
        if (!v42)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v52 = llvm::outs(v50);
        v54 = *(v52 + 4);
        if (*(v52 + 3) - v54 > 6uLL)
        {
          *(v54 + 3) = 1048147056;
          *v54 = 1886217532;
          *(v52 + 4) += 7;
          v51 = 15;
          if (!v42)
          {
LABEL_70:
            result = llvm::outs(v52);
            v55 = *(result + 32);
            if (v55 >= *(result + 24))
            {
              result = llvm::raw_ostream::write(result, 10);
            }

            else
            {
              *(result + 32) = v55 + 1;
              *v55 = 10;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v52 = llvm::raw_ostream::write(v52, "<empty>", 7uLL);
          v51 = 15;
          if (!v42)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_40:
      result = llvm::cl::Option::printEnumValHelpStr(v41, v42, a3, v51);
LABEL_41:
      v36 = (v36 + 1);
    }

    while (v35 != v36);
  }

  return result;
}

void *llvm::cl::generic_parser_base::printGenericOptionDiff(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, const llvm::cl::GenericOptionValue *a3, const llvm::cl::GenericOptionValue *a4, int a5)
{
  v10 = llvm::outs(this);
  v11 = v10[4];
  if (v10[3] - v11 > 1uLL)
  {
    *v11 = 8224;
    v10[4] += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "  ", 2uLL);
  }

  v44 = *(a2 + 1);
  v45 = 2;
  v13 = llvm::outs(v12);
  llvm::raw_ostream::indent(v13, a5 - *(a2 + 6));
  v14 = (*(*this + 16))(this);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    while (1)
    {
      v17 = (*(*this + 48))(this, v16);
      v14 = (**a3)(a3, v17);
      if (v14)
      {
        break;
      }

      v16 = (v16 + 1);
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    v23 = llvm::outs(v14);
    v24 = v23;
    v25 = v23[4];
    if (v23[3] - v25 > 1uLL)
    {
      *v25 = 8253;
      v23[4] += 2;
    }

    else
    {
      v24 = llvm::raw_ostream::write(v23, "= ", 2uLL);
    }

    v27 = (*(*this + 24))(this, v16);
    v28 = v26;
    v29 = v24[4];
    if (v26 <= v24[3] - v29)
    {
      if (v26)
      {
        memcpy(v29, v27, v26);
        v24[4] += v28;
      }
    }

    else
    {
      llvm::raw_ostream::write(v24, v27, v26);
    }

    v30 = (*(*this + 24))(this, v16);
    if (v31 <= 8)
    {
      v32 = 8 - v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = llvm::outs(v30);
    v34 = llvm::raw_ostream::indent(v33, v32);
    v35 = v34[4];
    if ((v34[3] - v35) > 0xA)
    {
      *(v35 + 7) = 540701804;
      *v35 = *" (default: ";
      v34[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v34, " (default: ", 0xBuLL);
    }

    v36 = 0;
    while (1)
    {
      v37 = (*(*this + 48))(this, v36);
      v38 = (**a4)(a4, v37);
      if (v38)
      {
        break;
      }

      v36 = (v36 + 1);
      if (v15 == v36)
      {
        goto LABEL_32;
      }
    }

    v39 = llvm::outs(v38);
    v41 = (*(*this + 24))(this, v36);
    v42 = v40;
    v38 = v39[4];
    if (v40 <= v39[3] - v38)
    {
      if (v40)
      {
        v38 = memcpy(v38, v41, v40);
        v39[4] += v42;
      }
    }

    else
    {
      v38 = llvm::raw_ostream::write(v39, v41, v40);
    }

LABEL_32:
    result = llvm::outs(v38);
    v43 = result[4];
    if (result[3] - v43 <= 1uLL)
    {
      v20 = ")\n";
      v21 = 2;
      goto LABEL_34;
    }

    *v43 = 2601;
    v22 = result[4] + 2;
LABEL_38:
    result[4] = v22;
    return result;
  }

LABEL_8:
  result = llvm::outs(v14);
  v19 = result[4];
  if (result[3] - v19 > 0x18uLL)
  {
    qmemcpy(v19, "= *unknown option value*\n", 25);
    v22 = result[4] + 25;
    goto LABEL_38;
  }

  v20 = "= *unknown option value*\n";
  v21 = 25;
LABEL_34:

  return llvm::raw_ostream::write(result, v20, v21);
}

void llvm::cl::parser<BOOL>::printOptionDiff(llvm *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 9);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 9);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}