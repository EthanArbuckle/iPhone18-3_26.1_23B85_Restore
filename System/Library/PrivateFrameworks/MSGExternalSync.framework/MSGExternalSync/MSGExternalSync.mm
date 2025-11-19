void DirectSyncAligner::DirectSyncAligner(DirectSyncAligner *this, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  SyncAligner::SyncAligner(this, a2, a3);
  v9[4] = a4;
  v9[5] = a5;
  *v9 = &unk_2868EA710;
  v9[1] = a6;
}

{
  SyncAligner::SyncAligner(this, a2, a3);
  v9[4] = a4;
  v9[5] = a5;
  *v9 = &unk_2868EA710;
  v9[1] = a6;
}

uint64_t DirectSyncAligner::getSyncAlignmentParamsForDirection(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a2[5];
  v7 = *v6;
  v8 = v6[1];
  v9 = ((v8 >> 10) | (*v6 << 6)) * WORD2(v8) + __PAIR128__((*v6 >> 58) * WORD2(v8), WORD1(v8));
  v10 = a2[2];
  v11 = a2[3];
  v12 = (__PAIR128__(v11, v10) * WORD2(v8)) >> 64;
  v13 = v10 * WORD2(v8);
  v14 = __PAIR128__(v11, v10) < 1;
  v15 = *(a2 + 13);
  v16 = -v13;
  v17 = -__PAIR128__(v3, v13) >> 64;
  if (v15 == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = *(a2 + 13);
  }

  if (v15 == 1)
  {
    v17 = (v9 + __PAIR128__(v12, v13)) >> 64;
    v16 = v9 + v13;
  }

  else
  {
    v12 = (v9 - __PAIR128__(v12, v13)) >> 64;
    v13 = v9 - v13;
  }

  v19 = !v14;
  if (v14)
  {
    v20 = v18;
  }

  else
  {
    v20 = *(a2 + 13);
  }

  v57 = v20;
  if (v19)
  {
    v21 = v13;
  }

  else
  {
    v21 = v16;
  }

  if (v19)
  {
    v22 = v12;
  }

  else
  {
    v22 = v17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v59 = "getSyncAlignmentParamsForDirection";
    v60 = 2048;
    *v61 = v7;
    *&v61[8] = 1024;
    *&v61[10] = v8 >> 10;
    *&v61[14] = 1024;
    *&v61[16] = WORD1(v8);
    v62 = 1024;
    v63 = WORD2(v8);
    _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SyncAligner::%s: Target: %llu.%hu.%hu/%hu\n", buf, 0x28u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = a2[2];
    *buf = 136315394;
    v59 = "getSyncAlignmentParamsForDirection";
    v60 = 2048;
    *v61 = v23;
    _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SyncAligner::%s: Phase diff: %lld\n", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a2 + 13);
    *buf = 136315650;
    v59 = "getSyncAlignmentParamsForDirection";
    v60 = 1024;
    *v61 = v24;
    *&v61[4] = 2048;
    *&v61[6] = v21;
    _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SyncAligner::%s: For direction %d, abs phase diff: %lld\n", buf, 0x1Cu);
  }

  v25 = *a2;
  v26 = a2[1];
  v27 = __divti3() + 1;
  v28 = *(a2 + 24);
  if (v27 % v28)
  {
    v29 = v27 + v28 - v27 % v28;
    *(a3 + 16) = v29;
    v30 = v9 * v29 + __PAIR128__(v22, v21) * v57;
    v31 = (*(a2[5] + 12) * v29) >> 64;
    v32 = *(a2[5] + 12) * v29;
    v33 = __divti3();
    v36 = (v30 - __PAIR128__(v34, v33) * __PAIR128__(v31, v32)) >> 64;
    v35 = v30 - v33 * v32;
    if (__PAIR128__(v31, v32) < 0x10000)
    {
      v38 = v32;
      v39 = v31;
    }

    else
    {
      do
      {
        *(&v37 + 1) = v36;
        *&v37 = v35;
        v35 = v37 >> 1;
        *(&v37 + 1) = v31;
        *&v37 = v32;
        v38 = v37 >> 1;
        v39 = v31 >> 1;
        v40 = v31 | (v32 >> 17);
        v32 = v38;
        v31 >>= 1;
        v36 >>= 1;
      }

      while (v40);
    }

    v41 = v33 + (v36 >> 63);
    *(&v43 + 1) = (v36 >> 63) + __CFADD__(v33, v36 >> 63) + v34;
    *&v43 = v41;
    v42 = v43 >> 6;
    v44 = v38 & (v36 >> 63);
    v45 = __CFADD__(v44, v35);
    v46 = v44 + v35;
    if (v46 ^ v38 | (v36 + v45 + (v39 & (v36 >> 63))) ^ v39)
    {
      v47 = v46 << 16;
    }

    else
    {
      v47 = (v46 << 16) - 0x10000;
    }

    *(a3 + 24) = v42;
    *(a3 + 32) = v47 & 0xFFFF03FF | ((v41 & 0x3F) << 10) | (v38 << 32);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v59 = "getSyncAlignmentParamsForDirection";
      v60 = 2048;
      *v61 = v42;
      *&v61[8] = 1024;
      *&v61[10] = v41 & 0x3F;
      *&v61[14] = 1024;
      *&v61[16] = HIWORD(v47);
      v62 = 1024;
      v63 = v38;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SyncAligner::%s: Intermediate frame duration: %llu.%hu.%hu/%hu\n", buf, 0x28u);
    }
  }

  else
  {
    *(a3 + 16) = v27;
    *(a3 + 24) = *a2[4];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v48 = *(a3 + 16);
    *buf = 136315650;
    v59 = "getSyncAlignmentParamsForDirection";
    v60 = 2048;
    *v61 = v27;
    *&v61[8] = 2048;
    *&v61[10] = v48;
    _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SyncAligner::%s: Number of frames to reach alignment, original: %llu, adjusted: %llu\n", buf, 0x20u);
  }

  v49 = *(a2 + 25);
  v50 = *(a3 + 36);
  v51 = *(a3 + 34);
  if (((v49 * v50) & 0xFFFF0000) != 0)
  {
    do
    {
      v51 = v51 >> 1;
      v50 = v50 >> 1;
    }

    while (((v49 * v50) & 0x7FFF0000) != 0);
    *(a3 + 34) = v51;
    *(a3 + 36) = v50;
  }

  if (v51 == v50)
  {
    *(a3 + 34) = v51 - 1;
  }

  v52 = (*(a3 + 32) >> 10) | (*(a3 + 24) << 6);
  v53 = *(a2[5] + 12);
  *a3 = __divti3();
  *(a3 + 8) = v54;
  v55 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t load_current_status(void)
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  return result;
}

uint64_t makeDirectoriesAndOpen(std::string *a1)
{
  v26[19] = *MEMORY[0x277D85DE8];
  v26[6] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  v26[0] = MEMORY[0x277D82860] + 64;
  v3 = MEMORY[0x277D82810];
  v4 = *(MEMORY[0x277D82810] + 16);
  v24 = *(MEMORY[0x277D82810] + 8);
  *&v25[*(v24 - 24) - 8] = v4;
  v5 = &v25[*(v24 - 24) - 8];
  std::ios_base::init(v5, v25);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v24 = v6;
  v26[0] = v2;
  MEMORY[0x259C696F0](v25);
  v13.__val_ = 0;
  v13.__cat_ = std::system_category();
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v12, a1);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a1);
  std::__fs::filesystem::path::remove_filename[abi:ne200100](&__p);
  v7 = std::__fs::filesystem::__create_directories(&__p, &v13);
  val = v13.__val_;
  if (v13.__val_)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v15 = "ec.value() == 0 ";
      v16 = 2080;
      v17 = &unk_2579A8E96;
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
      v20 = 1024;
      v21 = 81;
      v22 = 2048;
      v23 = val;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
      val = v13.__val_;
    }
  }

  else
  {
    if (!v7)
    {
      makeDirectoriesAndOpen();
    }

    std::ofstream::open();
    val = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v24 = *v3;
  *&v25[*(v24 - 24) - 8] = v3[3];
  MEMORY[0x259C69700](v25);
  std::ostream::~ostream();
  MEMORY[0x259C69950](v26);
  v9 = *MEMORY[0x277D85DE8];
  return val;
}

uint64_t std::__fs::filesystem::path::remove_filename[abi:ne200100](uint64_t a1)
{
  v2 = std::__fs::filesystem::path::__filename(a1);
  if (v2.__size_)
  {
    v3 = *(a1 + 23);
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = *a1;
      v4 = &v2.__data_[-*a1];
      if (*(a1 + 8) >= v4)
      {
        *(a1 + 8) = v4;
        goto LABEL_7;
      }
    }

    else
    {
      v4 = &v2.__data_[-a1];
      if (&v2.__data_[-a1] <= v3)
      {
        *(a1 + 23) = v4;
        v5 = a1;
LABEL_7:
        v4[v5] = 0;
        return a1;
      }
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  return a1;
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x259C69700](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x259C69950](a1 + 52);
  return a1;
}

uint64_t asyncThreadWorkload(void)
{
  v12[19] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v12[6] = 0;
  v0 = MEMORY[0x277D82860] + 64;
  v12[0] = MEMORY[0x277D82860] + 64;
  v1 = MEMORY[0x277D82810];
  v2 = *(MEMORY[0x277D82810] + 16);
  v10 = *(MEMORY[0x277D82810] + 8);
  *&v11[*(v10 - 24) - 8] = v2;
  v3 = &v11[*(v10 - 24) - 8];
  std::ios_base::init(v3, v11);
  v4 = MEMORY[0x277D82860] + 24;
  v3[1].__vftable = 0;
  v3[1].__fmtflags_ = -1;
  v10 = v4;
  v12[0] = v0;
  MEMORY[0x259C696F0](v11);
  if (std::future<AppleMSG::gtb_full_time_t>::get((gState + 8)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/tmp/com.apple.externalsyncd/launchDaemons.txt");
    DirectoriesAndOpen = makeDirectoriesAndOpen(&__p);
    v9 = DirectoriesAndOpen;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (DirectoriesAndOpen)
    {
      asyncThreadWorkload();
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Ready!\n", 7);
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&v11[*(v10 - 24) - 8], *&v11[*(v10 - 24) + 24] | 4);
      }

      puts("Finished signalling launch of unloaded Daemons, continuing fine alignment.");
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Finished signalling launch of unloaded Daemons, continuing fine alignment.\n", &__p, 2u);
      }
    }
  }

  else
  {
    v9 = -536870184;
  }

  std::promise<int>::set_value(gState, &v9);
  v10 = *v1;
  *&v11[*(v10 - 24) - 8] = v1[3];
  MEMORY[0x259C69700](v11);
  std::ostream::~ostream();
  result = MEMORY[0x259C69950](v12);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::future<AppleMSG::gtb_full_time_t>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<AppleMSG::gtb_full_time_t>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_25799A7A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<AppleMSG::gtb_full_time_t>::get(v1);
  }

  _Unwind_Resume(exception_object);
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

void std::promise<int>::set_value(uint64_t *a1, int *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<int>::set_value<int const&>(v3, a2);
}

uint64_t plotEventTriggers(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v3 = *a1;
  v4 = (a3 + 16);
  while (1)
  {
    v5 = *v4;
    if (*v4 > a1[800002])
    {
      break;
    }

LABEL_6:
    v4 += 3;
    if (!--a2)
    {
      goto LABEL_7;
    }
  }

  *v10 = *(v4 - 1);
  a1[800002] = v5;
  if (v3 >> 5 < 0xC35)
  {
    v6 = &a1[3 * v3++ + 1];
    *a1 = v3;
    *v6 = *v10;
    *(v6 + 16) = v5;
    goto LABEL_6;
  }

  v7 = 3758097115;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v10 = 136316162;
    *&v10[4] = "retcode == 0 ";
    *&v10[12] = 2080;
    *&v10[14] = &unk_2579A8E96;
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
    v13 = 1024;
    v14 = 243;
    v15 = 2048;
    v16 = -536870181;
    _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v10, 0x30u);
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t updateAlignmentState(uint64_t a1, uint64_t a2)
{
  if (a2 < 2301)
  {
    if (a2 > -2301)
    {
      *a1 = 0;
      v3 = *(a1 + 15) | 1;
      goto LABEL_7;
    }

    v2 = (-a2 * 0xE3F388AE8674A59FLL) >> 64;
  }

  else
  {
    v2 = (a2 * 0xE3F388AE8674A59FLL) >> 64;
  }

  *a1 = 10000000 * (v2 >> 11) + 10000000;
  v3 = *(a1 + 15) & 0xFE;
LABEL_7:
  *(a1 + 15) = v3;
  return 0;
}

uint64_t scheduleSyncPulseAdjustment(int a1, MSGController *this, int a3, MSGController *a4, __int128 *a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  if (a7)
  {
    v11 = a7;
    v12 = (a6 + 8);
    v13 = a5;
    v14 = a7;
    do
    {
      v27 = *v13;
      v28 = v13[1];
      v31 = v13[2];
      v15 = *(v12 - 1);
      v16 = *v12;
      if (MSGController::MasterSyncConfig())
      {
        scheduleSyncPulseAdjustment();
        return v27;
      }

      if ((a9 & 0xFFFFFFFE) == 2)
      {
        v27 = *v13;
        v29 = v13[1];
        v32 = v13[2];
        v17 = *(v12 - 1);
        v18 = *v12;
        if (MSGController::MasterSyncConfig())
        {
          scheduleSyncPulseAdjustment();
          return v27;
        }
      }

      v12 += 2;
      v13 += 3;
      --v14;
    }

    while (v14);
    if (a9 == 3 && v11 >= 1)
    {
      v19 = 2 * v11;
      v20 = (a6 + 16 * v11 + 8);
      v21 = &a5[3 * v11];
      while (1)
      {
        v27 = *v21;
        v30 = v21[1];
        v33 = v21[2];
        v22 = *(v20 - 1);
        v23 = *v20;
        if (MSGController::MasterSyncConfig())
        {
          break;
        }

        v20 += 2;
        ++v11;
        v21 += 3;
        if (v11 >= v19)
        {
          goto LABEL_12;
        }
      }

      scheduleSyncPulseAdjustment();
      return v27;
    }
  }

LABEL_12:
  if (MSGController::DispatchConfigQueue(this))
  {
    scheduleSyncPulseAdjustment();
    return v27;
  }

  if ((a9 & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  result = MSGController::DispatchConfigQueue(a4);
  if (result)
  {
    scheduleSyncPulseAdjustment();
    return v27;
  }

  return result;
}

uint64_t getCurrentTimeAsString@<X0>(_BYTE *a1@<X8>)
{
  v22 = time(0);
  v2 = localtime(&v22);
  v4 = *&v2->tm_mon;
  v3 = *&v2->tm_isdst;
  v5 = *&v2->tm_sec;
  tm_zone = v2->tm_zone;
  v20[1] = v4;
  v20[2] = v3;
  v20[0] = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v10[0] = v20;
  v10[1] = "%F_%T";
  std::operator<<[abi:ne200100]<char,std::char_traits<char>>(&v11, v10);
  if ((v18 & 0x10) != 0)
  {
    v7 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v7 = v14;
    }

    locale = v13[4].__locale_;
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v6 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v13[1].__locale_;
    v7 = v13[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, locale, v6);
  }

LABEL_14:
  a1[v6] = 0;
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x259C69950](&v19);
}

void sub_25799AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ostringstream::~ostringstream(&a12, MEMORY[0x277D82828]);
  MEMORY[0x259C69950](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_25799AFE4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x259C69950](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t *a2)
{
  MEMORY[0x259C69730](v10, a1);
  if (v10[0] == 1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    std::locale::use_facet(&v11, MEMORY[0x277D826D0]);
    std::locale::~locale(&v11);
    v4 = (a1 + *(*a1 - 24));
    rdbuf = v4->__rdbuf_;
    if (v4[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v4);
      v6 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
      v7 = (v6->__vftable[2].~facet_0)(v6, 32);
      std::locale::~locale(&v11);
      v4[1].__fmtflags_ = v7;
    }

    v8 = *a2;
    strlen(a2[1]);
    if (!std::time_put<char,std::ostreambuf_iterator<char>>::put())
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  MEMORY[0x259C69740](v10);
  return a1;
}

void sub_25799B180(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C69740](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25799B160);
}

uint64_t simulateTargetFrequencyAndPhase(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = mach_continuous_time();
  *a5 = 1;
  v13 = a1;
  v12 = *a1;
  v14 = v13[1] - v12;
  if (!v14)
  {
    v16 = 0;
    v11.n128_u64[0] = 0;
LABEL_17:
    v23 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282140640](a2, v16, 108264, a4, a3, v11);
  }

  v15 = v10;
  v16 = 0;
  v17 = v14 >> 4;
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v12 + 1;
  v11.n128_u64[0] = 0;
  while (1)
  {
    v19 = *(v18 - 1);
    if (v10 > v19)
    {
      v11.n128_u64[0] = *v18;
      v16 = *(v18 - 1);
    }

    if (v10 < v19)
    {
      break;
    }

    v18 += 2;
    if (!--v17)
    {
      if (v16)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  *a5 = 0;
  if (v16)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (v10 >= v19)
  {
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = *v12;
    v24 = 136315650;
    v25 = "simulateTargetFrequencyAndPhase";
    v26 = 2048;
    v27 = v15;
    v28 = 2048;
    v29 = v20;
    _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync::%s: Current time: %llu; Simulation start time: %llu\n", &v24, 0x20u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return 3758097112;
}

uint64_t updateEventsStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = mach_continuous_time() - *(a2 + 24 * (a3 - 1));
  if (v7 >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  *(a1 + 8) = v7 & ~(v7 >> 63);
  v8 = v5 - 1 - a4;
  if (a4 < 0)
  {
    v8 = -1;
  }

  *(a1 + 12) = v8;
  return 0;
}

uint64_t getNextCellInLine(std::string *__str, uint64_t a2, std::string::size_type a3, std::string::size_type *a4)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size <= a3)
  {
    getNextCellInLine();
    return LODWORD(v27.__r_.__value_.__l.__data_);
  }

  v7 = 0;
  *a4 = 0;
  for (i = a3; ; ++i)
  {
    v9 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= v9)
    {
      goto LABEL_22;
    }

LABEL_9:
    if ((v9 & 0x80000000) == 0)
    {
      v10 = __str;
    }

    else
    {
      v10 = __str->__r_.__value_.__r.__words[0];
    }

    v11 = v10->__r_.__value_.__s.__data_[i];
    if (v11 <= 0x2C && ((1 << v11) & 0x100000002400) != 0)
    {
      *a4 = i;
      v13 = v11 > 0x2C;
      v14 = (1 << v11) & 0x100000002400;
      v15 = v13 || v14 == 0;
      v7 = i;
      if (!v15)
      {
        goto LABEL_23;
      }
    }
  }

  if (i < __str->__r_.__value_.__l.__size_)
  {
    goto LABEL_9;
  }

LABEL_22:
  i = v7;
LABEL_23:
  if (i <= a3)
  {
    v20 = a3;
  }

  else
  {
    v16 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = __str->__r_.__value_.__l.__size_;
    }

    if (v17)
    {
      v18 = __str->__r_.__value_.__r.__words[0];
    }

    else
    {
      v18 = __str;
    }

    if (v16 <= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = v16;
    }

    v20 = a3;
    do
    {
      if (v19 == a3)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v21 = v18->__r_.__value_.__s.__data_[a3];
      if (v21 > 0x20 || ((1 << v21) & 0x100002600) == 0)
      {
        v20 = a3;
      }

      v13 = v21 > 0x20;
      v23 = (1 << v21) & 0x100002600;
      v24 = v13 || v23 == 0;
      ++a3;
    }

    while (!v24 && i != a3);
  }

  std::string::basic_string(&v27, __str, v20, i - v20, &v28);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = 0;
  *a2 = v27;
  return result;
}

uint64_t splitLineToNCells(std::string *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    splitLineToNCells();
    return v12;
  }

  v12 = 0;
  if (getNextCellInLine(a1, a3, 0, &v12))
  {
    splitLineToNCells();
    return v13;
  }

  if (a2 == 1)
  {
    splitLineToNCells();
    return v13;
  }

  if (getNextCellInLine(a1, a4, v12 + 1, &v12))
  {
    splitLineToNCells();
    return v13;
  }

  if (a2 <= 2)
  {
    splitLineToNCells();
    return v13;
  }

  if (getNextCellInLine(a1, a5, v12 + 1, &v12))
  {
    splitLineToNCells();
    return v13;
  }

  if (a2 == 3)
  {
    splitLineToNCells();
    return v13;
  }

  result = getNextCellInLine(a1, a6, v12 + 1, &v12);
  if (result)
  {
    splitLineToNCells();
    return v13;
  }

  return result;
}

uint64_t loadSimulatedPenroseData(uint64_t a1, const void **a2)
{
  v61[19] = *MEMORY[0x277D85DE8];
  v61[6] = 0;
  v3 = MEMORY[0x277D82858] + 64;
  v61[0] = MEMORY[0x277D82858] + 64;
  v4 = *(MEMORY[0x277D82808] + 16);
  v59[0] = *(MEMORY[0x277D82808] + 8);
  *(v59 + *(v59[0] - 24)) = v4;
  v59[1] = 0;
  v5 = (v59 + *(v59[0] - 24));
  std::ios_base::init(v5, v60);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v59[0] = v6;
  v61[0] = v3;
  MEMORY[0x259C696F0](v60);
  std::string::basic_string[abi:ne200100]<0>(v48, "penrose_last_peak_time");
  std::string::basic_string[abi:ne200100]<0>(v46, "penrose_frequency");
  memset(&v45, 0, sizeof(v45));
  memset(&__str, 0, sizeof(__str));
  memset(&v43, 0, sizeof(v43));
  __p[0] = 0;
  __p[1] = 0;
  v42 = 0;
  std::ifstream::open();
  v7 = (v59 + *(v59[0] - 24));
  if ((v7->__rdstate_ & 5) != 0)
  {
    loadSimulatedPenroseData();
LABEL_59:
    v36 = *v50;
    goto LABEL_47;
  }

  std::ios_base::getloc(v7);
  v8 = std::locale::use_facet(v50, MEMORY[0x277D82680]);
  v9 = (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(v50);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v59, &v45, v9);
  if (splitLineToNCells(&v45, 2uLL, &__str, &v43, __p, __p))
  {
    loadSimulatedPenroseData();
    goto LABEL_59;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v11 = v49;
  if ((v49 & 0x80u) != 0)
  {
    v11 = v48[1];
  }

  if (size != v11 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), (v49 & 0x80u) == 0 ? (v13 = v48) : (v13 = v48[0]), memcmp(p_str, v13, size)))
  {
    loadSimulatedPenroseData();
    goto LABEL_59;
  }

  v14 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v43.__r_.__value_.__l.__size_;
  }

  v16 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v16 = v46[1];
  }

  if (v15 == v16 && ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v17 = &v43) : (v17 = v43.__r_.__value_.__r.__words[0]), (v47 & 0x80u) == 0 ? (v18 = v46) : (v18 = v46[0]), !memcmp(v17, v18, v15)))
  {
    v19 = (v59 + *(v59[0] - 24));
    if ((v19->__rdstate_ & 2) == 0)
    {
      v20 = MEMORY[0x277D82680];
      do
      {
        std::ios_base::getloc(v19);
        v21 = std::locale::use_facet(v50, v20);
        v22 = (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v50);
        std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v59, &v45, v22);
        if ((v60[*(v59[0] - 24) + 16] & 2) != 0)
        {
          break;
        }

        if (splitLineToNCells(&v45, 2uLL, &__str, &v43, __p, __p))
        {
          loadSimulatedPenroseData();
          goto LABEL_59;
        }

        v23 = std::stod(&__str, 0);
        v24 = std::stod(&v43, 0);
        v26 = a2[1];
        v25 = a2[2];
        if (v26 >= v25)
        {
          v28 = *a2;
          v29 = v26 - *a2;
          v30 = v29 >> 4;
          v31 = (v29 >> 4) + 1;
          if (v31 >> 60)
          {
            std::vector<PenroseData>::__throw_length_error[abi:ne200100]();
          }

          v32 = v25 - v28;
          if (v32 >> 3 > v31)
          {
            v31 = v32 >> 3;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF0)
          {
            v33 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<PenroseData>>(a2, v33);
          }

          v34 = 16 * v30;
          *v34 = v23;
          *(v34 + 8) = v24;
          v27 = 16 * v30 + 16;
          memcpy(0, v28, v29);
          v35 = *a2;
          *a2 = 0;
          a2[1] = v27;
          a2[2] = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v26 = v23;
          v26[1] = v24;
          v27 = (v26 + 2);
        }

        a2[1] = v27;
        v19 = (v59 + *(v59[0] - 24));
      }

      while ((v19->__rdstate_ & 2) == 0);
    }

    v36 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v50 = 136316162;
      *&v50[4] = "cell1 == COLUMN1_LABEL";
      v51 = 2080;
      v52 = &unk_2579A8E96;
      v53 = 2080;
      v54 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
      v55 = 1024;
      v56 = 454;
      v57 = 2048;
      v58 = 0;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v50, 0x30u);
      v14 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    v36 = 3758097098;
    if (v14 >= 0)
    {
      v39 = &v43;
    }

    else
    {
      v39 = v43.__r_.__value_.__r.__words[0];
    }

    printf("Expecting second column to be penrose_frequency, was %s instead\n\n", v39);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v43;
      }

      else
      {
        v40 = v43.__r_.__value_.__r.__words[0];
      }

      *v50 = 136315138;
      *&v50[4] = v40;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Expecting second column to be penrose_frequency, was %s instead\n\n", v50, 0xCu);
    }
  }

LABEL_47:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  v59[0] = *MEMORY[0x277D82808];
  *(v59 + *(v59[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x259C69700](v60);
  std::istream::~istream();
  MEMORY[0x259C69950](v61);
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x259C69700](a1 + 2);
  std::istream::~istream();
  MEMORY[0x259C69950](a1 + 53);
  return a1;
}

uint64_t loadSimulatedRampData(uint64_t a1, const void **a2)
{
  v85[19] = *MEMORY[0x277D85DE8];
  v85[6] = 0;
  v3 = MEMORY[0x277D82858] + 64;
  v85[0] = MEMORY[0x277D82858] + 64;
  v4 = *(MEMORY[0x277D82808] + 16);
  v83[0] = *(MEMORY[0x277D82808] + 8);
  *(v83 + *(v83[0] - 24)) = v4;
  v83[1] = 0;
  v5 = (v83 + *(v83[0] - 24));
  std::ios_base::init(v5, v84);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v83[0] = v6;
  v85[0] = v3;
  MEMORY[0x259C696F0](v84);
  std::string::basic_string[abi:ne200100]<0>(v72, "t_now");
  std::string::basic_string[abi:ne200100]<0>(v70, "t_apply");
  std::string::basic_string[abi:ne200100]<0>(v68, "ramp_speed");
  std::string::basic_string[abi:ne200100]<0>(v66, "phase_target_offset");
  memset(&__p, 0, sizeof(__p));
  memset(&__str, 0, sizeof(__str));
  memset(&v63, 0, sizeof(v63));
  memset(&v62, 0, sizeof(v62));
  memset(&v61, 0, sizeof(v61));
  std::ifstream::open();
  v7 = (v83 + *(v83[0] - 24));
  if ((v7->__rdstate_ & 5) != 0)
  {
    loadSimulatedRampData();
LABEL_92:
    v48 = *v74;
    goto LABEL_72;
  }

  std::ios_base::getloc(v7);
  v8 = std::locale::use_facet(v74, MEMORY[0x277D82680]);
  v9 = (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(v74);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v83, &__p, v9);
  if (splitLineToNCells(&__p, 4uLL, &__str, &v63, &v62, &v61))
  {
    loadSimulatedRampData();
    goto LABEL_92;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v11 = v73;
  v12 = v73;
  if ((v73 & 0x80u) != 0)
  {
    v11 = v72[1];
  }

  if (size != v11 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), (v73 & 0x80u) == 0 ? (v14 = v72) : (v14 = v72[0]), memcmp(p_str, v14, size)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v74 = 136316162;
      *&v74[4] = "cell0 == COLUMN0_LABEL";
      v75 = 2080;
      v76 = &unk_2579A8E96;
      v77 = 2080;
      v78 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
      v79 = 1024;
      v80 = 497;
      v81 = 2048;
      v82 = 0;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v74, 0x30u);
      v12 = v73;
    }

    v48 = 3758097098;
    if ((v12 & 0x80u) == 0)
    {
      v51 = v72;
    }

    else
    {
      v51 = v72[0];
    }

    printf("Expecting first column to be %s\n\n", v51);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    if ((v73 & 0x80u) == 0)
    {
      v52 = v72;
    }

    else
    {
      v52 = v72[0];
    }

    *v74 = 136315138;
    *&v74[4] = v52;
    v53 = MEMORY[0x277D86220];
    v54 = "Expecting first column to be %s\n\n";
LABEL_135:
    _os_log_impl(&dword_257999000, v53, OS_LOG_TYPE_DEFAULT, v54, v74, 0xCu);
    goto LABEL_72;
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v63.__r_.__value_.__l.__size_;
  }

  v16 = v71;
  v17 = v71;
  if ((v71 & 0x80u) != 0)
  {
    v16 = v70[1];
  }

  if (v15 != v16 || ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v18 = &v63) : (v18 = v63.__r_.__value_.__r.__words[0]), (v71 & 0x80u) == 0 ? (v19 = v70) : (v19 = v70[0]), memcmp(v18, v19, v15)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v74 = 136316162;
      *&v74[4] = "cell1 == COLUMN1_LABEL";
      v75 = 2080;
      v76 = &unk_2579A8E96;
      v77 = 2080;
      v78 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
      v79 = 1024;
      v80 = 501;
      v81 = 2048;
      v82 = 0;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v74, 0x30u);
      v17 = v71;
    }

    v48 = 3758097098;
    if ((v17 & 0x80u) == 0)
    {
      v55 = v70;
    }

    else
    {
      v55 = v70[0];
    }

    printf("Expecting second column to be %s\n\n", v55);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    if ((v71 & 0x80u) == 0)
    {
      v56 = v70;
    }

    else
    {
      v56 = v70[0];
    }

    *v74 = 136315138;
    *&v74[4] = v56;
    v53 = MEMORY[0x277D86220];
    v54 = "Expecting second column to be %s\n\n";
    goto LABEL_135;
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v62.__r_.__value_.__l.__size_;
  }

  v21 = v69;
  v22 = v69;
  if ((v69 & 0x80u) != 0)
  {
    v21 = v68[1];
  }

  if (v20 != v21 || ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v23 = &v62) : (v23 = v62.__r_.__value_.__r.__words[0]), (v69 & 0x80u) == 0 ? (v24 = v68) : (v24 = v68[0]), memcmp(v23, v24, v20)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v74 = 136316162;
      *&v74[4] = "cell2 == COLUMN2_LABEL";
      v75 = 2080;
      v76 = &unk_2579A8E96;
      v77 = 2080;
      v78 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
      v79 = 1024;
      v80 = 505;
      v81 = 2048;
      v82 = 0;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v74, 0x30u);
      v22 = v69;
    }

    v48 = 3758097098;
    if ((v22 & 0x80u) == 0)
    {
      v57 = v68;
    }

    else
    {
      v57 = v68[0];
    }

    printf("Expecting third column to be %s\n\n", v57);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    if ((v69 & 0x80u) == 0)
    {
      v58 = v68;
    }

    else
    {
      v58 = v68[0];
    }

    *v74 = 136315138;
    *&v74[4] = v58;
    v53 = MEMORY[0x277D86220];
    v54 = "Expecting third column to be %s\n\n";
    goto LABEL_135;
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v61.__r_.__value_.__l.__size_;
  }

  v26 = v67;
  v27 = v67;
  if ((v67 & 0x80u) != 0)
  {
    v26 = v66[1];
  }

  if (v25 != v26 || ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v28 = &v61) : (v28 = v61.__r_.__value_.__r.__words[0]), (v67 & 0x80u) == 0 ? (v29 = v66) : (v29 = v66[0]), memcmp(v28, v29, v25)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v74 = 136316162;
      *&v74[4] = "cell3 == COLUMN3_LABEL";
      v75 = 2080;
      v76 = &unk_2579A8E96;
      v77 = 2080;
      v78 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
      v79 = 1024;
      v80 = 509;
      v81 = 2048;
      v82 = 0;
      _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v74, 0x30u);
      v27 = v67;
    }

    v48 = 3758097098;
    if ((v27 & 0x80u) == 0)
    {
      v59 = v66;
    }

    else
    {
      v59 = v66[0];
    }

    printf("Expecting fourth column to be %s\n\n", v59);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    if ((v67 & 0x80u) == 0)
    {
      v60 = v66;
    }

    else
    {
      v60 = v66[0];
    }

    *v74 = 136315138;
    *&v74[4] = v60;
    v53 = MEMORY[0x277D86220];
    v54 = "Expecting fourth column to be %s\n\n";
    goto LABEL_135;
  }

  v30 = (v83 + *(v83[0] - 24));
  if ((v30->__rdstate_ & 2) == 0)
  {
    v31 = MEMORY[0x277D82680];
    do
    {
      std::ios_base::getloc(v30);
      v32 = std::locale::use_facet(v74, v31);
      v33 = (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(v74);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v83, &__p, v33);
      if ((v84[*(v83[0] - 24) + 16] & 2) != 0)
      {
        break;
      }

      if (splitLineToNCells(&__p, 4uLL, &__str, &v63, &v62, &v61))
      {
        loadSimulatedRampData();
        goto LABEL_92;
      }

      v34 = std::stod(&__str, 0);
      v35 = std::stod(&v63, 0);
      v36 = std::stod(&v62, 0);
      v37 = std::stod(&v61, 0);
      v38 = a2[1];
      v39 = a2[2];
      if (v38 >= v39)
      {
        v41 = *a2;
        v42 = v38 - *a2;
        v43 = v42 >> 5;
        v44 = (v42 >> 5) + 1;
        if (v44 >> 59)
        {
          std::vector<PenroseData>::__throw_length_error[abi:ne200100]();
        }

        v45 = v39 - v41;
        if (v45 >> 4 > v44)
        {
          v44 = v45 >> 4;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFE0)
        {
          v44 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v44)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<RampCSVData>>(a2, v44);
        }

        v46 = 32 * v43;
        *v46 = v34;
        *(v46 + 8) = v35;
        *(v46 + 16) = v36;
        *(v46 + 24) = v37;
        v40 = 32 * v43 + 32;
        memcpy(0, v41, v42);
        v47 = *a2;
        *a2 = 0;
        a2[1] = v40;
        a2[2] = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v38 = v34;
        v38[1] = v35;
        v40 = (v38 + 4);
        v38[2] = v36;
        v38[3] = v37;
      }

      a2[1] = v40;
      v30 = (v83 + *(v83[0] - 24));
    }

    while ((v30->__rdstate_ & 2) == 0);
  }

  v48 = 0;
LABEL_72:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  v83[0] = *MEMORY[0x277D82808];
  *(v83 + *(v83[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x259C69700](v84);
  std::istream::~istream();
  MEMORY[0x259C69950](v85);
  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

void setNewStatus(uint64_t _X0, int a2, void *a3)
{
  v3 = current_status;
  do
  {
    _X7 = unk_27F8EC808;
    __asm { CASPAL          X6, X7, X0, X1, [X8] }

    _ZF = _X6 == v3;
    v3 = _X6;
  }

  while (!_ZF);
  if (a3)
  {
    if (!atomic_fetch_add_explicit(a3, 1uLL, memory_order_release))
    {
      std::__cxx_atomic_notify_all(a3);
    }
  }
}

uint64_t getMCT_MAT_Delta(unint64_t *a1)
{
  times = mach_get_times();
  v3 = times;
  if (times)
  {
    getMCT_MAT_Delta();
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

BOOL isErrorRecoverable(int a1, int *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (*a2 == a1)
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (a3 == v4)
    {
      break;
    }

    v6 = a2[v4++];
  }

  while (v6 != a1);
  return v5 < a3;
}

uint64_t getOutputSyncsLayout(uint64_t a1)
{
  if (*(a1 + 117) != 1)
  {
    return 1;
  }

  if (*(a1 + 124) || *(a1 + 126))
  {
    return 3;
  }

  return 2;
}

void alignToExternalSync()
{
  _X24 = 0;
  _X25 = 0;
  v7 = *MEMORY[0x277D85DE8];
  __asm { CASPAL          X24, X25, X24, X25, [X23] }

  operator new();
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_12(0x2D1u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_12(0x2E4u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_12(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2E0u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

void *std::vector<PenroseSimulateData>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<PenroseData>>(result, a2);
    }

    std::vector<PenroseData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::future<int>::get(atomic_ullong **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<int>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  return v3;
}

void sub_2579A1824(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<AppleMSG::gtb_full_time_t>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t alignToPhaseRamps(int a1, int a2, int a3, int a4, MSGController *this, uint64_t a6)
{
  v60 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  v49 = 0;
  atomic_store(1u, &shouldRun);
  if (!a4)
  {
    if (!this)
    {
      alignToPhaseRamps();
      v13 = *buf;
      goto LABEL_59;
    }

    v11 = *(a6 + 23);
    if (v11 < 0)
    {
      v11 = *(a6 + 8);
    }

    if (v11)
    {
      if (MSGController::initSyncGenPhaseAlignment(this, 0, "FFPLAligner"))
      {
        alignToPhaseRamps();
      }

      else
      {
        puts("Loading ramp data\n");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loading ramp data\n\n", buf, 2u);
        }

        if (!loadSimulatedRampData(a6, &v47))
        {
          v12 = atomic_load(&shouldRun);
          if (v12)
          {
            v13 = 0;
            v14 = 0;
            v15 = MEMORY[0x277D86220];
            while (1)
            {
              if (v48 != v47)
              {
                v42 = v14;
                v16 = 0;
                v17 = 0;
                v8 &= 0xFFFFFFFFFFFF0000;
                v6 &= 0xFFFFFFFFFFFF0000;
                v7 &= 0xFFFFFFFFFFFF0000;
                while (1)
                {
                  if (MSGController::SyncGetTracking())
                  {
                    alignToPhaseRamps();
                    goto LABEL_56;
                  }

                  if (MSGController::SyncGetActiveConfig())
                  {
                    alignToPhaseRamps();
                    goto LABEL_56;
                  }

                  if (MSGController::getEarliestPhaseRampStart())
                  {
                    alignToPhaseRamps();
                    goto LABEL_56;
                  }

                  v44 = (v46 + &v44[-v46] / v45 * v45);
                  v18 = mach_continuous_time();
                  if (v17 >= (v48 - v47) >> 5)
                  {
                    goto LABEL_78;
                  }

                  v19 = &v47[v16];
                  v20 = v18 + ((v19[1] - *v19) * 24000000.0);
                  v21 = v44;
                  v22 = v20 > v44;
                  v23 = v20 - v44;
                  if (v22)
                  {
                    v21 = &v44[(v23 / v45 + 2) * v45];
                    v44 = v21;
                  }

                  v24 = v19[2];
                  v25 = (v46 + v19[3]);
                  printf("t_apply:%llu\tramp_speed:%lld\tref_timestamp:%llu\n", v21, v24, v25);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218496;
                    v51 = v21;
                    v52 = 2048;
                    v53 = v24;
                    v54 = 2048;
                    v55 = v25;
                    _os_log_impl(&dword_257999000, v15, OS_LOG_TYPE_DEFAULT, "t_apply:%llu\tramp_speed:%lld\tref_timestamp:%llu\n", buf, 0x20u);
                  }

                  v26 = MSGController::setTargetSyncAlignmentAndVelocity();
                  v13 = v26;
                  if (v26)
                  {
                    v27 = a2 == 0;
                  }

                  else
                  {
                    v27 = 1;
                  }

                  if (v27)
                  {
                    if (v26)
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    if ((v26 + 536870206) > 0x13 || ((1 << (v26 + 62)) & 0x80021) == 0)
                    {
LABEL_55:
                      alignToPhaseRamps();
                      goto LABEL_56;
                    }

                    puts("Encountered a recoverable error. Continuing");
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_257999000, v15, OS_LOG_TYPE_DEFAULT, "Encountered a recoverable error. Continuing\n", buf, 2u);
                    }
                  }

                  v29 = atomic_load(&shouldRun);
                  if ((v29 & 1) == 0)
                  {
                    alignToPhaseRamps(buf);
                    goto LABEL_56;
                  }

                  ++v17;
                  v30 = v48 - v47;
                  if (v17 < (v48 - v47) >> 5)
                  {
                    v31 = mach_absolute_time();
                    if (v17 >= (v48 - v47) >> 5)
                    {
LABEL_78:
                      std::vector<RampCSVData>::__throw_out_of_range[abi:ne200100]();
                    }

                    v32 = mach_wait_until(v31 + ((*&v47[v16 + 32] - *&v47[v16]) * 24000000.0));
                    v13 = v32;
                    if (v32 == 14)
                    {
                      v13 = 0;
LABEL_45:
                      v14 = v42;
                      break;
                    }

                    if (v32)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v51 = "retcode == 0 ";
                        v52 = 2080;
                        v53 = &unk_2579A8E96;
                        v54 = 2080;
                        v55 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
                        v56 = 1024;
                        v57 = 1379;
                        v58 = 2048;
                        v59 = v13;
                        _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
                      }

                      goto LABEL_57;
                    }

                    v30 = v48 - v47;
                  }

                  v16 += 32;
                  if (v17 >= v30 >> 5)
                  {
                    goto LABEL_45;
                  }
                }
              }

              v33 = mach_absolute_time();
              mach_wait_until(v33 + 24000000);
              if (a3)
              {
                v14 = (v14 + 1);
                printf("\nFinished iteration %u. Looping the simulation data.\n\n", v14);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  LODWORD(v51) = v14;
                  v34 = v15;
                  v35 = "\nFinished iteration %u. Looping the simulation data.\n\n";
                  v36 = 8;
LABEL_51:
                  _os_log_impl(&dword_257999000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
                }
              }

              else
              {
                atomic_store(0, &shouldRun);
                puts("\nFinished simulation data");
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v34 = v15;
                  v35 = "\nFinished simulation data\n";
                  v36 = 2;
                  goto LABEL_51;
                }
              }

              v37 = atomic_load(&shouldRun);
              if ((v37 & 1) == 0)
              {
                goto LABEL_57;
              }
            }
          }

          v13 = 0;
          goto LABEL_58;
        }

        alignToPhaseRamps();
      }
    }

    else
    {
      alignToPhaseRamps();
    }

    v13 = *buf;
LABEL_58:
    v38 = MSGController::deinitSyncGenPhaseAlignment(this);
    if (v38)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v51 = "bailRetcode == 0 ";
        v52 = 2080;
        v53 = &unk_2579A8E96;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGExternalSync/MSGExternalSync.cpp";
        v56 = 1024;
        v57 = 1402;
        v58 = 2048;
        v59 = v38;
        _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
      }

      printf("Unable to deinit phase aligner: %#x\n\n", v38);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v51) = v38;
        _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to deinit phase aligner: %#x\n\n", buf, 8u);
      }
    }

    goto LABEL_59;
  }

  alignToPhaseRamps();
LABEL_56:
  v13 = *buf;
LABEL_57:
  if (this)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v13;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27984E3F8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27984E3F0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PenroseData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RampCSVData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__assoc_state<int>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C69990);
}

uint64_t std::vector<PenroseSimulateData>::emplace_back<PenroseSimulateData const&>(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<PenroseData>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PenroseData>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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
  return v6 - 16;
}

uint64_t std::vector<PenroseSimulateData>::__init_with_size[abi:ne200100]<PenroseSimulateData*,PenroseSimulateData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PenroseSimulateData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2579A2A2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PenroseSimulateData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PenroseData>>(a1, a2);
  }

  std::vector<PenroseData>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::promise<int>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x259C696C0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x259C696D0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x277D82838] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2821F74F8](v3);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_2579A2C88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2579A2E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void std::__assoc_state<AppleMSG::gtb_full_time_t>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v6, &a1->__exception_);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    v4 = a1[1].__vftable;
    shared_owners = a1[1].__shared_owners_;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_2579A2F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C69730](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

  MEMORY[0x259C69740](v13);
  return a1;
}

void sub_2579A30DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C69740](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2579A30BCLL);
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

void sub_2579A3310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x259C696C0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void std::__assoc_state<int>::set_value<int const&>(uint64_t a1, int *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  v5 = *a2;
  *(a1 + 136) |= 5u;
  *(a1 + 140) = v5;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C698E0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2579A34C4(_Unwind_Exception *a1)
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

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x259C69710](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2579A3758(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2579A3718);
  }

  __cxa_rethrow();
}

void std::__assoc_state<AppleMSG::gtb_full_time_t>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C69990);
}

uint64_t *std::promise<AppleMSG::gtb_full_time_t>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x259C696C0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x259C696D0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void sub_2579A3B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>(uint64_t *a1)
{
  v6 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  v4 = pthread_setspecific(v2->__key_, v3);
  (v6[1])(v4);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>::~unique_ptr[abi:ne200100](&v6);
  return 0;
}

void sub_2579A3BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x259C69990](v3, 0xA0C40AFF93C70);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x259C697C0]();
    MEMORY[0x259C69990](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(uint64_t a1, uint64_t *a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = *a2;
  m = (a1 + 24);
  v15.__m_ = (a1 + 24);
  v15.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  v7 = *(a1 + 136);
  if ((v7 & 8) != 0)
  {
    v13 = 2;
    goto LABEL_26;
  }

  if ((v7 & 4) != 0)
  {
    goto LABEL_24;
  }

  v8 = v4.__d_.__rep_ + 1000000000 * v5;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v8)
  {
    if (v8 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v10.__d_.__rep_)
        {
          if (v10.__d_.__rep_ < 1)
          {
            if (v10.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_14;
            }

            v11 = 0x8000000000000000;
          }

          else
          {
            if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_15;
            }

LABEL_14:
            v11 = 1000 * v10.__d_.__rep_;
LABEL_15:
            if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
LABEL_18:
        std::condition_variable::__do_timed_wait((a1 + 88), &v15, v12);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v7 = *(a1 + 136);
    if ((v7 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v7 = *(a1 + 136);
LABEL_24:
  v13 = ((v7 >> 2) & 1) == 0;
  if (v15.__owns_)
  {
    m = v15.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v13;
}

void std::__assoc_state<int>::move(uint64_t a1)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v2 = *(a1 + 16);
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (v2)
  {
    std::exception_ptr::exception_ptr(&v5, (a1 + 16));
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_2579A3E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void std::__assoc_state<AppleMSG::gtb_full_time_t>::set_value<AppleMSG::gtb_full_time_t>(uint64_t a1, _OWORD *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void OUTLINED_FUNCTION_9_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

void OUTLINED_FUNCTION_12(unsigned __int16 a1@<W8>)
{
  *v2 = a1 | 0xE0000000;
  *v1 = 6;
  v4 = *(v3 - 24);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void SyncAligner::SyncAligner(SyncAligner *this, __int16 a2, uint64_t a3)
{
  *this = &unk_2868EA7E0;
  *(this + 8) = a2;
  *(this + 3) = a3;
}

{
  *this = &unk_2868EA7E0;
  *(this + 8) = a2;
  *(this + 3) = a3;
}

uint64_t SyncAligner::getPhaseDifference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = WORD2(a5);
  v22 = HIDWORD(a5);
  v6 = *(a1 + 24);
  v7 = __divti3();
  v9 = v7;
  v10 = v8;
  if (__CFADD__(v7, v8 >> 63))
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 >> 1;
  *(&v13 + 1) = v11;
  *&v13 = v7 + (v8 >> 63);
  v14 = __modti3();
  v16 = __PAIR128__(v15, v14) - __PAIR128__(v12, v13 >> 1) + __PAIR128__(v10 & (v15 >> 63), v9 & (v15 >> 63));
  v17 = __divti3();
  v19 = ((v16 - __PAIR128__(v18, v17) * v5) >> 31) + __PAIR128__(v18, v17);
  v20 = (((v19 << 10) + 1024) & 0xFC00) == 0 && ((v22 & ((v16 - v17 * v5) >> 31)) + v16 - v17 * v5) >= (v5 + 1) >> 1;
  return v20 + (v19 >> 6);
}

__n128 SyncAligner::populateConfigForDriftCorrection(_OWORD *a1, __n128 *a2, unsigned int a3, uint64_t a4)
{
  v4 = a4 + 48 * a3;
  v5 = a1[3];
  v6 = a1[1];
  *(v4 + 16) = a1[2];
  *(v4 + 32) = v5;
  *v4 = v6;
  *(v4 + 4) = 0;
  result = *a2;
  *(v4 + 32) = *a2;
  *(v4 + 32) -= 200;
  return result;
}

__n128 SyncAligner::populateConfigForContinuousStepAlignment(_OWORD *a1, __n128 *a2, unsigned int a3, uint64_t a4)
{
  v4 = (a4 + 48 * a3);
  v5 = a1[1];
  v6 = a1[3];
  v4[1] = a1[2];
  v4[2] = v6;
  *v4 = v5;
  result = a2[1];
  v4[2] = result;
  return result;
}

uint64_t SyncAligner::populateConfigForFinalAlignment(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 168);
  if (v3)
  {
    v4 = (result + 162);
    v5 = 1;
    do
    {
      v7 = *v4;
      v4 += 2;
      v6 = v7;
      if (!(v5 % v7))
      {
        v6 = 1;
      }

      v5 *= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = 1;
  }

  v8 = a3 + 48 * a2;
  v9 = *(result + 16);
  v10 = *(result + 48);
  *(v8 + 16) = *(result + 32);
  *(v8 + 32) = v10;
  *v8 = v9;
  *(v8 + 32) = *(result + 64);
  v11 = *(v8 + 44);
  v12 = *(v8 + 42);
  if (((v5 * v11) & 0xFFFF0000) != 0)
  {
    do
    {
      v12 = v12 >> 1;
      v11 = v11 >> 1;
    }

    while (((v5 * v11) & 0x7FFF0000) != 0);
    *(v8 + 42) = v12;
    *(v8 + 44) = v11;
  }

  if (v12 == v11)
  {
    *(v8 + 42) = v12 - 1;
  }

  return result;
}

unint64_t SyncAligner::getClampedScheduledTimeExploded(SyncAligner *this, __int128 a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 1);
  v5 = a3 - v4;
  v6 = (a3 - v4) << 6;
  v7 = (v4 + a3) << 6;
  v8 = -(v7 < a2) < 0;
  if (v7 >= a2)
  {
    v7 = a2;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(&a2 + 1);
  }

  v10 = a2 < (v5 << 6);
  if (a2 >= (v5 << 6))
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v7 = v6;
  }

  v12 = *(this + 4) + a4;
  v13 = (*(this + 5) + a4) << 6;
  if (__PAIR128__(v11, v7) < v13)
  {
    v13 = v7;
  }

  if (__PAIR128__(v11, v7) >= (v12 << 6))
  {
    return v13;
  }

  else
  {
    return v12 << 6;
  }
}

uint64_t SyncAligner::populateScheduledTimesForStepAlignment(uint64_t result, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5, uint64_t *a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  v9 = a4[2];
  v10 = *(a4 + 12) >> 10;
  v11 = (__PAIR128__(a8, a7) + v9 * 64) >> 64;
  v12 = __CFADD__(a7 + (v9 << 6), v10);
  v13 = a7 + (v9 << 6) + v10;
  if (v12)
  {
    ++v11;
  }

  v14 = *a4;
  v15 = *(result + 8);
  v16 = v9 - v15;
  v17 = (v9 - v15) << 6;
  v18 = (v15 + v9) << 6;
  v19 = -(v18 < v13) < 0;
  if (v18 >= v13)
  {
    v18 = v13;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v11;
  }

  v21 = __PAIR128__(v11, v13) < (v16 << 6);
  if (__PAIR128__(v11, v13) >= (v16 << 6))
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v18 = v17;
  }

  v23 = *(result + 32) + v14;
  v24 = (*(result + 40) + v14) << 6;
  if (__PAIR128__(v22, v18) >= v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v22;
  }

  if (__PAIR128__(v22, v18) < v24)
  {
    v24 = v18;
  }

  v26 = __PAIR128__(v22, v18) < (v23 << 6);
  if (__PAIR128__(v22, v18) >= (v23 << 6))
  {
    v27 = v24;
  }

  else
  {
    v27 = v23 << 6;
  }

  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  if (*(a2 + 168))
  {
    v32 = 0;
    *(&v33 + 1) = v28;
    *&v33 = v27;
    v55 = (v27 & 0x3F) << 10;
    v56 = v33 >> 6;
    v34 = a2 + 160;
    v35 = a3;
    do
    {
      v36 = a6[1];
      v37 = v36 >> 16;
      v38 = (v36 >> 10) | (*a6 << 6);
      v39 = WORD2(v36);
      v40 = (v38 * v39) >> 64;
      v41 = v38 * v39;
      v12 = __CFADD__(v41, v37);
      v42 = v41 + v37;
      v43 = (v34 + 4 * v32);
      v44 = (__PAIR128__((*a6 >> 58) * v39 + v12 + v40, v42) * *v43) >> 64;
      v45 = v42 * *v43;
      v46 = v39 * v43[1];
      result = __divti3();
      v48 = (__PAIR128__(v44, v45) - __PAIR128__(v47, result) * v46) >> 64;
      v49 = v45 - result * v46;
      if (v46 >= 0x10000)
      {
        v50 = 0;
        do
        {
          v51 = v50 | (v46 >> 17);
          *(&v52 + 1) = v50;
          *&v52 = v46;
          v46 = v52 >> 1;
          v50 >>= 1;
          *(&v52 + 1) = v48;
          *&v52 = v49;
          v49 = v52 >> 1;
          v48 >>= 1;
        }

        while (v51);
      }

      v53 = __PAIR128__(a4[2] >> 58, (*(a4 + 12) >> 10) | (a4[2] << 6)) - __PAIR128__(((((v48 >> 63) + __CFADD__(result, v48 >> 63) + v47) << 58) * 64) >> 64, result + (v48 >> 63)) + __PAIR128__(-1, -1728000);
      v54 = (a9 + 288 + 16 * (v35 + v32 * a5));
      *v54 = v53 >> 6;
      v54[1] = (v53 & 0x3F) << 10;
      v54[2] = v56;
      v54[3] = v55;
      ++v32;
    }

    while (*(a2 + 168) > v32);
  }

  return result;
}

uint64_t DirectSyncAligner::getSyncAlignmentParams(void *a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  if (*(a2 + 160) != 1)
  {
    v14 = 3758097097;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_8();
    *&buf[14] = &unk_2579A8E96;
    *&buf[22] = v44;
    v67 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGManager/SyncAlignment/DirectSyncAligner.cpp";
    LOWORD(v68) = 1024;
    OUTLINED_FUNCTION_7(104);
    v45 = MEMORY[0x277D86220];
LABEL_28:
    _os_log_impl(&dword_257999000, v45, OS_LOG_TYPE_ERROR, "SyncAligner: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
    goto LABEL_23;
  }

  if (*(a2 + 162) != 1)
  {
    v14 = 3758097097;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_8();
    *&buf[14] = &unk_2579A8E96;
    *&buf[22] = v46;
    v67 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGManager/SyncAlignment/DirectSyncAligner.cpp";
    LOWORD(v68) = 1024;
    OUTLINED_FUNCTION_7(105);
    v45 = MEMORY[0x277D86220];
    goto LABEL_28;
  }

  v6 = a2 + 64;
  v5 = *(a2 + 64);
  v51 = *(a2 + 88);
  v54 = *(a2 + 80);
  v7 = HIDWORD(*(a2 + 72));
  v8 = a1[3];
  v9 = __divti3();
  v11 = a1[5];
  v63 = a1[4];
  v64 = 0;
  v65 = v7;
  v60 = v11;
  v61 = 0;
  v62 = v7;
  v12 = (v63 << 6) * v7 + __PAIR128__((v63 >> 58) * v7, 0);
  v13 = (v11 << 6) * v7 + __PAIR128__((v11 >> 58) * v7, 0);
  v14 = 3758097104;
  if (__PAIR128__(v10, v9) >= v12)
  {
    v15 = v9;
    v16 = v10;
    if (v13 >= __PAIR128__(v10, v9))
    {
      v47 = v51 >> 10;
      v17 = __divti3();
      v50 = v18;
      v52 = v17;
      v48 = v13 - v15;
      v19 = v13 - __PAIR128__(v16, v15);
      v49 = v15 - (v63 << 6) * v7;
      v20 = __PAIR128__(v16, v15) - v12;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a2 + 168);
        *buf = 136315394;
        *&buf[4] = "getSyncAlignmentParams";
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SyncAligner::%s: Sync count: %zu\n", buf, 0x16u);
      }

      v22 = v54 >> 58;
      v23 = v47 | (v54 << 6);
      if (*(a2 + 168))
      {
        v24 = a2 + 162;
        v25 = 1;
        v26 = 1;
        do
        {
          v27 = *(v24 - 2);
          OUTLINED_FUNCTION_9();
          v26 *= v28;
          v30 = *v29;
          OUTLINED_FUNCTION_9();
          v25 *= v31;
        }

        while (v32 != 1);
      }

      else
      {
        v26 = 1;
        v25 = 1;
      }

      v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (v33)
      {
        *buf = 136315650;
        *&buf[4] = "getSyncAlignmentParams";
        *&buf[12] = 1024;
        *&buf[14] = v26;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        _os_log_impl(&dword_257999000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SyncAligner::%s: Common ratio: %hu/%hu\n", buf, 0x18u);
      }

      *buf = v48;
      *&buf[8] = *(&v19 + 1);
      *&buf[16] = v47 | (v54 << 6);
      v67 = v54 >> 58;
      v68 = &v60;
      v69 = v6;
      v70 = v26;
      v71 = v25;
      v72 = 1;
      SyncAlignmentParamsForDirection = DirectSyncAligner::getSyncAlignmentParamsForDirection(v33, buf, &v55);
      v36 = v56;
      v35 = v57;
      v59 = v58;
      v37 = v55;
      *buf = v49;
      *&buf[8] = *(&v20 + 1);
      *&buf[16] = v47 | (v54 << 6);
      v67 = v54 >> 58;
      v68 = &v63;
      v69 = v6;
      v70 = v26;
      v71 = v25;
      v72 = -1;
      DirectSyncAligner::getSyncAlignmentParamsForDirection(SyncAlignmentParamsForDirection, buf, &v55);
      v39 = v56;
      v38 = v57;
      v40 = v55;
      if ((__PAIR128__(v22, v23) < 1 || __PAIR128__(v22, v23) >= __PAIR128__(v50, v52)) && (-__PAIR128__(v50, v52) < __PAIR128__(v22, v23) ? (v41 = v54 < 0) : (v41 = 0), v41 || v35 > v57))
      {
        v14 = 0;
        *(a3 + 16) = v58;
        *a3 = v40;
        *(a3 + 8) = v39;
        *(a3 + 32) = v38;
      }

      else
      {
        v14 = 0;
        *(a3 + 16) = v59;
        *a3 = v37;
        *(a3 + 8) = v36;
        *(a3 + 32) = v35;
      }
    }
  }

LABEL_23:
  v42 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t DirectSyncAligner::planSyncPulseAdjustment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v120 = v3;
  v120.n128_u16[6] = *(a2 + 76);
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  if (*(a2 + 136) < 2uLL)
  {
    goto LABEL_50;
  }

  v5 = a3;
  if (*(a3 + 400) != 3)
  {
    v88 = 3758097115;
    goto LABEL_47;
  }

  v7 = *(a2 + 64);
  if (v7 < v3)
  {
    v88 = 3758097090;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }

  v9 = (a1 + 40);
  if (v7 > *(a1 + 40))
  {
    v88 = 3758097090;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

LABEL_53:
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0();
LABEL_68:
    OUTLINED_FUNCTION_6();
    goto LABEL_69;
  }

  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  SyncAlignmentParams = DirectSyncAligner::getSyncAlignmentParams(a1, a2, &v117);
  if (SyncAlignmentParams)
  {
    v88 = SyncAlignmentParams;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v121 = 136316162;
      *&v121[4] = "retcode == 0 ";
      *&v121[12] = 2080;
      *&v121[14] = &unk_2579A8E96;
      *&v121[22] = 2080;
      OUTLINED_FUNCTION_2();
      v124 = 239;
      v125 = 2048;
      v126 = v98;
      OUTLINED_FUNCTION_6();
      _os_log_impl(v99, v100, v101, v102, v103, v104);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *v121 = 136315394;
    *&v121[4] = "planSyncPulseAdjustment";
    *&v121[12] = 1024;
    *&v121[14] = v88;
    v105 = &dword_257999000;
    v106 = MEMORY[0x277D86220];
    v107 = "SyncAligner::%s: getSyncAlignmentParams failed with error : 0x%x\n";
    v108 = v121;
    v109 = OS_LOG_TYPE_ERROR;
    v110 = 18;
LABEL_69:
    _os_log_impl(v105, v106, v109, v107, v108, v110);
    goto LABEL_47;
  }

  if (v118 < *v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v118 > *v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v13 = *(a2 + 160);
  v113 = a2 + 160;
  if (v13 != *(a2 + 162))
  {
    v88 = 3758097095;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_67;
  }

  if (v13 != 1)
  {
    v88 = 3758097095;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

LABEL_67:
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0();
    goto LABEL_68;
  }

  if (v119 <= *(a1 + 16))
  {
    if (v119 < 2)
    {
      v41 = v10 >> 58;
      v42 = *(a2 + 104);
      *v121 = *(a2 + 96);
      *&v121[8] = 0;
      v43 = (v11 >> 10) | (v10 << 6);
      *&v121[16] = v42;
      *v122 = 0;
      v44 = OUTLINED_FUNCTION_5();
      SyncAligner::populateConfigForDriftCorrection(v44, v45, v46, v47);
      SyncAligner::populateConfigForFinalAlignment(a2, 1u, v5);
      v48 = *(v5 + 80);
      if (*(a1 + 40) >= v48)
      {
        v49 = (v5 + 80);
      }

      else
      {
        v49 = v9;
      }

      if (v48 >= *(a1 + 32))
      {
        v50 = v49;
      }

      else
      {
        v50 = v4;
      }

      *(v5 + 80) = *v50;
      v51 = OUTLINED_FUNCTION_3();
      SyncAligner::populateScheduledTimesForStepAlignment(v51, v52, v53, v54, v55, v56, v43, v41, v111);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_5();
      SyncAligner::populateConfigForContinuousStepAlignment(v25, v26, v27, v28);
      if (v119 == 2)
      {
        *(v5 + 32) -= *(a2 + 152);
        *(v5 + 4) = 0;
      }

      if (*(a2 + 168))
      {
        v29 = 0;
        v30 = (v5 + 296);
        do
        {
          *(v30 - 1) = *(a2 + 104) - 27000;
          *v30 = 0;
          v30 += 24;
          ++v29;
        }

        while (*(a2 + 168) > v29);
      }

      SyncAligner::populateConfigForDriftCorrection(a2, &v120, 1u, v5);
      v31 = (v119 - 1);
      v32 = WORD5(v118) * v31 / WORD6(v118) + (WORD4(v118) >> 10) * v31;
      v33 = *(a2 + 104) + v31 * v118;
      v123 = 0;
      *&v122[2] = 0;
      v34 = *(v5 + 32);
      *v121 = v33 + (v32 >> 6);
      *&v121[8] = (v32 << 10) & 0xFC00;
      *&v121[16] = *v121 + v34;
      *v122 = (v32 << 10);
      SyncAligner::populateConfigForFinalAlignment(a2, 2u, v5);
      v35 = *(a2 + 80) >> 58;
      v36 = (*(a2 + 88) >> 10) | (*(a2 + 80) << 6);
      v37 = __divti3();
      SyncAligner::populateScheduledTimesForStepAlignment(a1, a2, 1u, v121, 3, (v5 + 32), v36 + v37, (__PAIR128__(v35, v36) + __PAIR128__(v38, v37)) >> 64, v5);
      if ((*(v5 + 4) & 1) == 0)
      {
        v39 = *(a2 + 168);
        if (v39)
        {
          v40 = (v5 + 304);
          do
          {
            *v40 += 27000;
            v40 += 6;
            --v39;
          }

          while (v39);
        }
      }

      v116 = 3;
    }
  }

  else
  {
    v14 = *(a2 + 104);
    *v121 = *(a2 + 96);
    *&v121[8] = 0;
    *&v121[16] = v14;
    *v122 = 0;
    v15 = OUTLINED_FUNCTION_5();
    SyncAligner::populateConfigForDriftCorrection(v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_3();
    SyncAligner::populateScheduledTimesForStepAlignment(v19, v20, v21, v22, v23, v24, 0, 0, v111);
    SyncAligner::populateConfigForContinuousStepAlignment(a2, &v117, 1u, v5);
  }

  if (*(a2 + 168) >= 2uLL)
  {
    v57 = 1;
    v112 = a2;
LABEL_32:
    v58 = 0;
    v59 = (v113 + 4 * v57);
    v114 = v57;
    v115 = v57 * v116;
    while (1)
    {
      v60 = v5 + 48 * v58;
      v61 = *(v60 + 4);
      v62 = *(v60 + 40);
      v63 = WORD2(v62) * v59[1];
      if (v63 >= 0x10000 && (v61 & 1) != 0)
      {
        break;
      }

      v65 = v5;
      v66 = 0;
      v67 = *v60;
      v69 = (((v62 >> 10) | (*(v60 + 32) << 6)) * WORD2(v62) + __PAIR128__((*(v60 + 32) >> 58) * WORD2(v62), WORD1(v62))) >> 64;
      v68 = ((v62 >> 10) | (*(v60 + 32) << 6)) * WORD2(v62) + WORD1(v62);
      v70 = (__PAIR128__(v69, v68) * *v59) >> 64;
      v71 = v68 * *v59;
      v72 = __divti3();
      v75 = (__PAIR128__(v70, v71) - __PAIR128__(v73, v72) * v63) >> 64;
      v74 = v71 - v72 * v63;
      if (v63 >= 0x10000)
      {
        v76 = 0;
        v77 = v63;
        do
        {
          *(&v78 + 1) = v75;
          *&v78 = v74;
          v74 = v78 >> 1;
          *(&v78 + 1) = v76;
          *&v78 = v77;
          v63 = v78 >> 1;
          v66 = v76 >> 1;
          v79 = v76 | (v77 >> 17);
          v77 = v63;
          v76 >>= 1;
          v75 >>= 1;
        }

        while (v79);
      }

      v80 = v72 + (v75 >> 63);
      *(&v82 + 1) = (v75 >> 63) + __CFADD__(v72, v75 >> 63) + v73;
      *&v82 = v80;
      v81 = v82 >> 6;
      v83 = v63 & (v75 >> 63);
      v84 = __CFADD__(v83, v74);
      v85 = v83 + v74;
      if (v85 ^ v63 | (v75 + v84 + (v66 & (v75 >> 63))) ^ v66)
      {
        v86 = v85 << 16;
      }

      else
      {
        v86 = (v85 << 16) - 0x10000;
      }

      v5 = v65;
      v87 = v65 + 48 * (v58 + v115);
      *v87 = v67;
      *(v87 + 4) = v61;
      *(v87 + 5) = *(v60 + 5);
      *(v87 + 16) = *(v60 + 16);
      *(v87 + 32) = v81;
      *(v87 + 40) = (v63 << 32) | ((v80 & 0x3F) << 10) | v86;
      if (++v58 == v116)
      {
        v57 = v114 + 1;
        if (*(v112 + 168) > (v114 + 1))
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

LABEL_49:
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6();
    _os_log_impl(v92, v93, v94, v95, v96, v97);
LABEL_50:
    v88 = 3758097097;
    goto LABEL_47;
  }

LABEL_46:
  v88 = 0;
  *(v5 + 400) = v116;
  *(v5 + 384) = *(v5 + 16 * v116 + 272);
LABEL_47:
  v89 = *MEMORY[0x277D85DE8];
  return v88;
}

void makeDirectoriesAndOpen()
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v11);
  }

  puts("madeFolders = false;");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v5, "madeFolders = false;\n", v6, v7, v8, v9, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void asyncThreadWorkload()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

atomic_ullong *std::future<AppleMSG::gtb_full_time_t>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

void scheduleSyncPulseAdjustment()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

void getNextCellInLine()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void splitLineToNCells()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x277D85DE8];
}

void loadSimulatedPenroseData()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2CAu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2CAu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

void loadSimulatedRampData()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2CAu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

void getMCT_MAT_Delta()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alignToExternalSync(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v7, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v8, v9, v10, v11, v13);
  }

  *a4 = a2;
  *a3 = 6;
  v12 = *MEMORY[0x277D85DE8];
}

void alignToExternalSync(int a1, _DWORD *a2, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v6, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v7, v8, v9, v10, 2u);
  }

  *a3 = a1;
  *a2 = 6;
  v11 = *MEMORY[0x277D85DE8];
}

void TimingPlotter::dumpDataToCSVFile()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_16();
  v5 = *MEMORY[0x277D85DE8];
}

void alignToPhaseRamps()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v11);
  }

  puts("Error initializing sync gen phase aligner\n");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v5, "Error initializing sync gen phase aligner\n\n", v6, v7, v8, v9, 0);
  }

  OUTLINED_FUNCTION_16();
  v10 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7_0();
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v11);
  }

  puts("Error fetching ramp data from CSV\n");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v5, "Error fetching ramp data from CSV\n\n", v6, v7, v8, v9, 0);
  }

  OUTLINED_FUNCTION_16();
  v10 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  puts("Error fetching current tracking info");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v5, "Error fetching current tracking info\n", v6, v7, v8, v9, 0);
  }

  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  puts("Error fetching current config\n");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v5, "Error fetching current config\n\n", v6, v7, v8, v9, 0);
  }

  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  puts("Error fetching earliest new timestamp");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v5, "Error fetching earliest new timestamp\n", v6, v7, v8, v9, 0);
  }

  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  puts("Failed to apply new ramp target");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v5, "Failed to apply new ramp target\n", v6, v7, v8, v9, 0);
  }

  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_0(&dword_257999000, MEMORY[0x277D86220], v0, "MSGExternalSync: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_8_0(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void alignToPhaseRamps(_DWORD *a1)
{
  puts("Got signal to exit before completing simulation data.");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15(&dword_257999000, MEMORY[0x277D86220], v2, "Got signal to exit before completing simulation data.\n", v3, v4, v5, v6, 0);
  }

  *a1 = -536870165;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F0]();
}

{
  return MEMORY[0x2821F7938]();
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