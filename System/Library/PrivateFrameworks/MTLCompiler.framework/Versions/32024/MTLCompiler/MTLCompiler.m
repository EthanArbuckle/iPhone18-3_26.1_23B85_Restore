uint64_t MTLCompilerObject::initDriverPlugin(MTLCompilerObject *this, const char *__s2, const void *a3, size_t a4)
{
  v7 = *(this + 1);
  v8 = *(this + 2) - v7;
  if (!v8)
  {
LABEL_14:
    operator new();
  }

  v9 = 0;
  v10 = v8 >> 3;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  while (1)
  {
    v12 = *(v7 + 8 * v9);
    if (strcmp(*(v12 + 104), __s2))
    {
      goto LABEL_6;
    }

    if (a3)
    {
      break;
    }

    if (!*(v12 + 112))
    {
      return v9;
    }

LABEL_6:
    if (v11 == ++v9)
    {
      goto LABEL_14;
    }
  }

  if (*(v12 + 120) != a4 || memcmp(a3, *(v12 + 112), a4))
  {
    goto LABEL_6;
  }

  return v9;
}

void MTLCompilerObject::buildRequest(uint64_t a1, unsigned int a2, int a3, unsigned int *a4, std::string::size_type a5, uint64_t a6)
{
  v194 = *MEMORY[0x277D85DE8];
  {
    llvm::install_fatal_error_handler(fatalErrorHandler, 0, v146);
    __cxa_atexit(llvm::ScopedFatalErrorHandler::~ScopedFatalErrorHandler, &MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::scopeHandler, &dword_213BCC000);
  }

  free(*(a1 + 64));
  *(a1 + 64) = 0;
  v159 = (a1 + 64);
  *(a1 + 72) = 0;
  switch(a3)
  {
    case 0:
      std::string::basic_string[abi:ne200100]<0>(&buf, "MTLInvalidRequest");
      logCompileError((a1 + 80), "invalid compiler request type");
      std::string::~string(&buf);
      abort();
    case 1:
      if ((*a4 & 0x30000000) != 0x10000000)
      {
        goto LABEL_26;
      }

      if (MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::requestCount >= 1)
      {
        goto LABEL_290;
      }

      ++MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::requestCount;
LABEL_26:
      if (a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
      {
        goto LABEL_290;
      }

      v191 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      buf.__r_.__value_.__l.__size_ = a5;
      buf.__r_.__value_.__r.__words[2] = a2;
      v189 = a6;
      *&v190 = a4;
      *(&v190 + 1) = 1;
      DWORD2(v191) = 0;
      MTLCompilerObject::backendCompileExecutableRequest(a1, &buf);
      goto LABEL_285;
    case 3:
    case 13:
      v182 = 0;
      v183 = 0;
      v184 = 0;
      MTLBuildRequestTypeToString(a3, &__p);
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v11 = a1 + 80;
        }

        else
        {
          v11 = *(a1 + 80);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v11;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v189 = "source";
        _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v13 = mach_absolute_time();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v180 = 0;
      MEMORY[0x21604B680](&v179);
      v151 = v13;
      v154 = a1 + 80;
      __p.__r_.__value_.__r.__words[0] = &v179;
      __p.__r_.__value_.__r.__words[2] = llvm::LLVMContext::getDiagnosticContext(&v179);
      __p.__r_.__value_.__l.__size_ = llvm::LLVMContext::getDiagnosticHandlerCallBack(&v179);
      llvm::LLVMContext::setDiagnosticHandlerCallBack();
      v152 = a1;
      v14 = a4[1];
      v15 = a4 + *a4 + 19;
      *&v178.__r_.__value_.__r.__words[1] = 0uLL;
      v178.__r_.__value_.__r.__words[0] = &v179;
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = ((v15 & 0xFFFFFFFFFFFFFFFCLL) + v14);
      if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v18 = strlen(((v15 & 0xFFFFFFFFFFFFFFFCLL) + v14));
      }

      else
      {
        v18 = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(&v178, v17, &v17[v18]);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v178, " ", "");
      v71 = a4[3];
      if (v71)
      {
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v178, "-Os ", "");
        v71 = a4[3];
      }

      if ((v71 & 2) != 0)
      {
        v72 = mach_absolute_time();
      }

      else
      {
        v72 = 0;
      }

      __s1 = 0;
      v150 = v72;
      if (a3 != 13)
      {
        memset(&buf, 0, sizeof(buf));
        v173 = 0;
        v76 = *(a1 + 32);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
        --v178.__r_.__value_.__l.__size_;
        v77 = MTLGPUCompilerBuildFromSource();
        v158 = v77 != 0;
        if (v77)
        {
          MTLObjectGetAsMetalLib();
          createLibraryInfo();
        }

        v83 = a4[3];
        if ((v83 & 2) != 0)
        {
          v85 = (*&gMachTimeToNS * (mach_absolute_time() - v150));
          LODWORD(v186) = 0;
          *(&v186 + 1) = v85;
          std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &v186);
          v86 = (v183 - v182) >> 4;
          if (v86 == -2)
          {
            v84 = 0;
          }

          else
          {
            v84 = 12 * v86 + 28;
          }

          v83 = a4[3];
        }

        else
        {
          v84 = 0;
          v85 = 0;
        }

        v87 = MTLCompilerObject::serializeLibraryReply(a1, &v180, __s1, 0, buf.__r_.__value_.__l.__data_, (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3, v84, 0, (v83 & 4) != 0, 0, 0);
        v88 = buf.__r_.__value_.__r.__words[0];
        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
LABEL_265:
          operator delete(v88);
        }

LABEL_266:
        if (v178.__r_.__value_.__l.__data_ != &v179)
        {
          free(v178.__r_.__value_.__l.__data_);
        }

        ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
        llvm::LLVMContext::~LLVMContext(&v179);
        v141 = v158;
        if (!v87)
        {
          v141 = 0;
        }

        if (v141)
        {
          MTLBuildRequestTypeToString(a3, &buf);
          v142 = logCompileEnd(v154, v151, "source", &buf, &unk_213C7E907);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if ((a4[3] & 2) != 0)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 6;
            buf.__r_.__value_.__l.__size_ = v142;
            std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
            LODWORD(buf.__r_.__value_.__l.__data_) = 4;
            buf.__r_.__value_.__l.__size_ = v142 - v85;
            std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
          }

          v165 = 0;
          v166 = 0;
          v167 = 0;
          std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v165, v182, v183, (v183 - v182) >> 4);
          if (v87[13])
          {
            v143 = v87[12];
            memset(&buf, 0, sizeof(buf));
            std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&buf, v165, v166, (v166 - v165) >> 4);
            serializeCompileTimeData(v87 + v143, &buf);
            if (buf.__r_.__value_.__r.__words[0])
            {
              buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          if (v165)
          {
            v166 = v165;
            operator delete(v165);
          }

          (*(a6 + 16))(a6, 0, v87, v180, 0);
          free(v87);
        }

        else
        {
          v144 = *v159;
          (*(a6 + 16))(a6);
        }

        goto LABEL_282;
      }

      v176 = 0;
      v186 = 0uLL;
      v187 = 0;
      v73 = a4[1];
      if (!v73)
      {
        v81 = a1;
        v82 = *(a1 + 32);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
        --v178.__r_.__value_.__l.__size_;
        v158 = MTLGPUCompilerBuildFromSourceToBuffer() != 0;
        std::vector<char *>::push_back[abi:ne200100](&v186, &__s1);
        goto LABEL_253;
      }

      v173 = 0;
      v174 = 0;
      v175 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v169[1] = 0;
      v74 = *(a1 + 32);
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
      --v178.__r_.__value_.__l.__size_;
      if (!MTLGPUCompilerCompileFromSource())
      {
        goto LABEL_245;
      }

      AsObject = MTLModuleGetAsObject();
      v94 = (v171 - v170) >> 3;
      if ((v94 + 1) >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v95 = (v172 - v170) >> 2;
      if (v95 <= v94 + 1)
      {
        v95 = v94 + 1;
      }

      if (v172 - v170 >= 0x7FFFFFFFFFFFFFF8)
      {
        v96 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v96 = v95;
      }

      if (v96)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v170, v96);
      }

      v115 = (8 * v94);
      *v115 = AsObject;
      v116 = 8 * v94 + 8;
      v117 = v115 - (v171 - v170);
      memcpy(v117, v170, v171 - v170);
      v118 = v170;
      v170 = v117;
      v171 = v116;
      v172 = 0;
      if (v118)
      {
        operator delete(v118);
      }

      v171 = v116;
      if (v73 < 5)
      {
LABEL_242:
        v81 = v152;
        v134 = *(v152 + 4);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
        --v178.__r_.__value_.__l.__size_;
        v158 = MTLGPUCompilerLinkToBuffer() != 0;
        if (__s1)
        {
          std::vector<char *>::push_back[abi:ne200100](&v186, &__s1);
        }
      }

      else
      {
        v119 = 1;
        while (1)
        {
          v120 = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v121 = (v119 & 1) != 0 ? 0 : v16 - v120;
          v124 = *v120;
          v122 = v120 + 1;
          v123 = v124;
          snprintf(&buf, 0x20uLL, "%s%zu", "linked-air-blob-", (v174 - v173) >> 3);
          v169[0] = LLVMCreateMemoryBufferWithMemoryRange();
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v173, v169);
          v168 = 0;
          v125 = MTLObjectCreate();
          if (!v125)
          {
            break;
          }

          v126 = v171;
          if (v171 >= v172)
          {
            v128 = (v171 - v170) >> 3;
            if ((v128 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v129 = (v172 - v170) >> 2;
            if (v129 <= v128 + 1)
            {
              v129 = v128 + 1;
            }

            if (v172 - v170 >= 0x7FFFFFFFFFFFFFF8)
            {
              v130 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v130 = v129;
            }

            if (v130)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v170, v130);
            }

            v131 = (8 * v128);
            *v131 = v125;
            v127 = 8 * v128 + 8;
            v132 = v131 - (v171 - v170);
            memcpy(v132, v170, v171 - v170);
            v133 = v170;
            v170 = v132;
            v171 = v127;
            v172 = 0;
            if (v133)
            {
              operator delete(v133);
            }
          }

          else
          {
            *v171 = v125;
            v127 = (v126 + 8);
          }

          v119 = 0;
          v171 = v127;
          v73 = v73 + v121 - v123 - 4;
          v16 = v122 + v123;
          if (v73 <= 4)
          {
            goto LABEL_242;
          }
        }

        std::vector<char *>::push_back[abi:ne200100](&v186, &v168);
LABEL_245:
        v158 = 0;
        v81 = v152;
      }

      v135 = v173;
      v136 = v174;
      while (v135 != v136)
      {
        v137 = *v135;
        LLVMDisposeMemoryBuffer();
        ++v135;
      }

      if (v170)
      {
        v171 = v170;
        operator delete(v170);
      }

      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

LABEL_253:
      if ((a4[3] & 2) != 0)
      {
        v85 = (*&gMachTimeToNS * (mach_absolute_time() - v150));
        LODWORD(buf.__r_.__value_.__l.__data_) = 0;
        buf.__r_.__value_.__l.__size_ = v85;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
        v139 = (v183 - v182) >> 4;
        if (v139 == -2)
        {
          v138 = 0;
        }

        else
        {
          v138 = (12 * v139 + 28);
        }
      }

      else
      {
        v138 = 0;
        v85 = 0;
      }

      if (*(&v186 + 1) == v186)
      {
        v140 = 0;
      }

      else
      {
        v140 = v186;
      }

      v87 = MTLCompilerObject::serializeLibraryToArchiveReply(v81, &v180, v140, (*(&v186 + 1) - v186) >> 3, v158, v176, v138);
      if (v176)
      {
        LLVMDisposeMemoryBuffer();
      }

      v88 = v186;
      if (v186)
      {
        *(&v186 + 1) = v186;
        goto LABEL_265;
      }

      goto LABEL_266;
    case 4:
      std::string::basic_string[abi:ne200100]<0>(&v182, "MTLBuildOpaqueRequest");
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v59 = a1 + 80;
        }

        else
        {
          v59 = *(a1 + 80);
        }

        v60 = &v182;
        if (v184 < 0)
        {
          v60 = v182;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v59;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v60;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v189 = "opaque";
        _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v61 = mach_absolute_time();
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v182);
      }

      v62 = *(a1 + 8);
      if (a2 >= ((*(a1 + 16) - v62) >> 3))
      {
        goto LABEL_290;
      }

      v193 = 0;
      memset(&buf, 0, sizeof(buf));
      LODWORD(v189) = 0;
      v190 = 0u;
      v191 = 0u;
      v192 = 0;
      v63 = *(v62 + 8 * a2);
      *(v63 + 155) = 1;
      v64 = *(v63 + 32);
      if (v64)
      {
        v65 = v64(*(v63 + 128), a4, a5, 0, 0, &buf, &buf.__r_.__value_.__l.__size_, &v190, &v190 + 8, &v191, &v191 + 8, &buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        *(&v191 + 1) = 0;
        v65 = (*(v63 + 24))(*(v63 + 128), a4, a5, 0, &buf, &buf.__r_.__value_.__l.__size_, &buf.__r_.__value_.__r.__words[2]);
      }

      LODWORD(v189) = v65;
      if (v65)
      {
        if (v65 != 1)
        {
LABEL_290:
          abort();
        }

        v78 = 2;
      }

      else
      {
        v78 = 0;
      }

      (*(a6 + 16))(a6, v78, buf.__r_.__value_.__r.__words[0], buf.__r_.__value_.__l.__size_, buf.__r_.__value_.__r.__words[2]);
      v79 = *(*(a1 + 8) + 8 * a2);
      if (*(v79 + 155) == 1)
      {
        (*(v79 + 16))(*(v79 + 128));
        *(v79 + 155) = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(&v182, "MTLBuildOpaqueRequest");
      logCompileEnd(a1 + 80, v61, "opaque", &v182, &unk_213C7E907);
      if ((SHIBYTE(v184) & 0x80000000) == 0)
      {
        goto LABEL_285;
      }

      v80 = v182;
      goto LABEL_284;
    case 5:
      v170 = 0;
      v182 = 0;
      v183 = 0;
      v184 = 0;
      MEMORY[0x21604B680](&v180);
      __p.__r_.__value_.__r.__words[0] = &v180;
      __p.__r_.__value_.__r.__words[2] = llvm::LLVMContext::getDiagnosticContext(&v180);
      __p.__r_.__value_.__l.__size_ = llvm::LLVMContext::getDiagnosticHandlerCallBack(&v180);
      llvm::LLVMContext::setDiagnosticHandlerCallBack();
      std::string::basic_string[abi:ne200100]<0>(&v178, "MTLBuildCISPIRequestToArchive");
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v22 = a1 + 80;
        }

        else
        {
          v22 = *(a1 + 80);
        }

        v23 = &v178;
        if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v178.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v22;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v189 = "CI SPI";
        _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v147 = mach_absolute_time();
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      v148 = a1 + 80;
      v153 = a1;
      v24 = a4[2];
      v25 = a4[3];
      std::vector<llvm::Module *>::vector[abi:ne200100](&v178, v24);
      v149 = v24;
      if (!v24)
      {
        goto LABEL_54;
      }

      v26 = 0;
      v27 = (a4 + v25 + 4);
      break;
    case 6:
      v21 = "MTLSpecializeFunction request type is deprecated, use MTLSpecializeFunctionToArchive";
      goto LABEL_108;
    case 7:
      v191 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      *&buf.__r_.__value_.__r.__words[1] = a5;
      v189 = a6;
      *&v190 = a4;
      *(&v190 + 1) = 1;
      DWORD2(v191) = 0;
      MTLCompilerObject::downgradeAndLoadModuleRequest(a1, &buf);
      goto LABEL_285;
    case 8:
      v66 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::logCompilerFailure(a1, a4, a5, a6);
      return;
    case 10:
      if (a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
      {
        goto LABEL_290;
      }

      v191 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      buf.__r_.__value_.__l.__size_ = a5;
      buf.__r_.__value_.__r.__words[2] = a2;
      v189 = a6;
      *&v190 = a4;
      *(&v190 + 1) = 5;
      DWORD2(v191) = 4;
      MTLCompilerObject::backendCompileStatelessRequest(a1, &buf);
      goto LABEL_285;
    case 11:
      v21 = "MTLStitchFunctionDagRequest request type is deprecated, use MTLStitchFunctionDagToArchive";
LABEL_108:
      MTLCompilerErrorObject::setFormattedErrorMessage(v159, v21);
      v67 = *(a6 + 16);
      v68 = *MEMORY[0x277D85DE8];
      v69 = 2 * (*v159 != 0);

      v67(a6, v69, 0, 0);
      return;
    case 14:
      MEMORY[0x21604B680](&buf);
      MTLCompilerObject::stitchFunctionDag(a1, &buf, v58, a4, a5, a6);
      llvm::LLVMContext::~LLVMContext(&buf);
      goto LABEL_285;
    case 15:
      v19 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::buildSpecializedFunctionRequest(a1, a4, a5, v10, a6);
      return;
    case 16:
      v70 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::generateMachO(a1, a4, a5, a6);
      return;
    case 17:
      v20 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::generateBinaryArchiveID(a1, a4, a5, a6);
      return;
    default:
      std::string::basic_string[abi:ne200100]<0>(&buf, "MTLBuildRequestTypeUnknown");
      logCompileError((a1 + 80), "unknown compiler request type");
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      (*(a6 + 16))(a6, 2, 0, 0, "Internal compiler error.");
      goto LABEL_285;
  }

  do
  {
    v28 = *v27;
    buf.__r_.__value_.__r.__words[0] = a4 + *(v27 - 1);
    buf.__r_.__value_.__l.__size_ = v28;
    buf.__r_.__value_.__r.__words[2] = &unk_213C7E907;
    v189 = 0;
    llvm::getLazyBitcodeModule();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v185, &v186);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v185);
    if (v187)
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to read function bitcode.");
LABEL_163:
      if ((v187 & 1) == 0)
      {
        std::unique_ptr<llvm::Module>::reset[abi:ne200100](&v186, 0);
      }

LABEL_165:
      v92 = 0;
      v97 = 0;
      v98 = 1;
      goto LABEL_187;
    }

    v29 = v186;
    *&v186 = 0;
    llvm::Module::materializeAll(&buf, v29);
    if (buf.__r_.__value_.__r.__words[0])
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to materializeAll.");
      if (buf.__r_.__value_.__r.__words[0])
      {
        (*(*buf.__r_.__value_.__l.__data_ + 8))(buf.__r_.__value_.__r.__words[0]);
      }

      goto LABEL_163;
    }

    v30 = MTLUpgradeAIRModule();
    if (v30)
    {
      *(v178.__r_.__value_.__r.__words[0] + v26) = v29;
    }

    else
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to upgrade AIR version.");
      if (v29)
      {
        v31 = MEMORY[0x21604BFC0](v29);
        MEMORY[0x21604C990](v31, 0x10B2C407FF26C1CLL);
      }
    }

    if (buf.__r_.__value_.__r.__words[0])
    {
      (*(*buf.__r_.__value_.__l.__data_ + 8))(buf.__r_.__value_.__r.__words[0]);
    }

    if ((v187 & 1) == 0)
    {
      v32 = v186;
      *&v186 = 0;
      if (v32)
      {
        v33 = MEMORY[0x21604BFC0]();
        MEMORY[0x21604C990](v33, 0x10B2C407FF26C1CLL);
      }
    }

    if (!v30)
    {
      goto LABEL_165;
    }

    v27 += 2;
    v26 += 8;
  }

  while (8 * v24 != v26);
LABEL_54:
  std::vector<ImageFilterFunctionInfoSPI>::vector[abi:ne200100](&v186, *a4);
  std::vector<llvm::Function *>::vector[abi:ne200100](&v173, *a4);
  if (*a4)
  {
    v34 = 0;
    v35 = (a4 + 5);
    v36 = (a4 + a4[1]);
    do
    {
      v37 = v36[2];
      v38 = *(v178.__r_.__value_.__r.__words[0] + 8 * v36[1]);
      if (v35)
      {
        strlen(v35);
      }

      Function = llvm::Module::getFunction();
      if (Function)
      {
        *&buf.__r_.__value_.__r.__words[1] = 0uLL;
        v189 = 0;
        v40 = *v36 != 0;
        buf.__r_.__value_.__s.__data_[0] = v40;
        if (v37)
        {
          v156 = v35;
          v157 = v36;
          v41 = v37;
          v42 = 0;
          v43 = v36 + 5;
          v155 = v41;
          v44 = v41;
          do
          {
            v45 = *(v43 - 2);
            v46 = *(v43 - 1);
            v47 = *v43;
            if (v42 >= v189)
            {
              size = buf.__r_.__value_.__l.__size_;
              v49 = &v42[-buf.__r_.__value_.__l.__size_];
              v50 = 0xAAAAAAAAAAAAAAABLL * (&v42[-buf.__r_.__value_.__l.__size_] >> 2);
              v51 = v50 + 1;
              if (v50 + 1 > 0x1555555555555555)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * (&v189[-buf.__r_.__value_.__l.__size_] >> 2) > v51)
              {
                v51 = 0x5555555555555556 * (&v189[-buf.__r_.__value_.__l.__size_] >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * (&v189[-buf.__r_.__value_.__l.__size_] >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v52 = 0x1555555555555555;
              }

              else
              {
                v52 = v51;
              }

              if (v52)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(&buf.__r_.__value_.__l.__size_, v52);
              }

              v53 = 12 * v50;
              *v53 = v45;
              *(v53 + 4) = v46;
              *(v53 + 8) = v47;
              v42 = (12 * v50 + 12);
              v54 = v53 - v49;
              memcpy((v53 - v49), size, v49);
              v55 = buf.__r_.__value_.__l.__size_;
              buf.__r_.__value_.__l.__size_ = v54;
              buf.__r_.__value_.__r.__words[2] = v42;
              v189 = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *v42 = v45;
              *(v42 + 1) = v46;
              *(v42 + 2) = v47;
              v42 += 12;
            }

            v43 += 3;
            buf.__r_.__value_.__r.__words[2] = v42;
            --v44;
          }

          while (v44);
          v40 = buf.__r_.__value_.__s.__data_[0];
          v35 = v156;
          v36 = v157;
          LODWORD(v37) = v155;
        }

        *(v173 + v34) = Function;
        v56 = (v186 + 32 * v34);
        v56->__r_.__value_.__s.__data_[0] = v40;
        if (v56 != &buf)
        {
          std::vector<ImageFilterFunctionArgumentInfoSPI>::__assign_with_size[abi:ne200100]<ImageFilterFunctionArgumentInfoSPI*,ImageFilterFunctionArgumentInfoSPI*>(&v56->__r_.__value_.__l.__size_, buf.__r_.__value_.__l.__size_, buf.__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((buf.__r_.__value_.__r.__words[2] - buf.__r_.__value_.__l.__size_) >> 2));
        }

        if (buf.__r_.__value_.__l.__size_)
        {
          buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
          operator delete(buf.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MTLCompilerErrorObject::setFormattedErrorMessage(v159, "Failed to find function %s in library", v35);
        (*(a6 + 16))(a6, 2, 0, 0, *v159);
      }

      v35 += strlen(v35) + 1;
      v36 += 3 * v37 + 3;
      ++v34;
    }

    while (v34 < *a4);
  }

  if ((*(a4 + 17) & 2) != 0)
  {
    v57 = mach_absolute_time();
  }

  else
  {
    v57 = 0;
  }

  v179 = 0;
  ComposeImageFuncFromLibrariesSPI = MTLCompilerObject::getComposeImageFuncFromLibrariesSPI(v153);
  if (ComposeImageFuncFromLibrariesSPI)
  {
    v90 = ComposeImageFuncFromLibrariesSPI(&v178, &v173, &v186, &v179);
    goto LABEL_147;
  }

  if (v149 >= 2)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(v159, "Creating a ComputePipeline from multiple libraries is unsupported. Found functions from %d modules", v149);
    goto LABEL_167;
  }

  ComposeImageFuncSPI = MTLCompilerObject::getComposeImageFuncSPI(v153);
  if (ComposeImageFuncSPI)
  {
    v90 = ComposeImageFuncSPI(*v178.__r_.__value_.__l.__data_, &v173, &v186, &v179);
LABEL_147:
    v91 = v90;
    if (v90)
    {
      if ((*(a4 + 17) & 2) != 0)
      {
        v92 = (*&gMachTimeToNS * (mach_absolute_time() - v57));
        LODWORD(buf.__r_.__value_.__l.__data_) = 2;
        buf.__r_.__value_.__l.__size_ = v92;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
        v99 = (v183 - v182) >> 4;
        if (v99 == -2)
        {
          v93 = 0;
        }

        else
        {
          v93 = (12 * v99 + 28);
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
      }

      v100 = *(v91 + 5);
      LLVMExtraMakeSharedModule();
      Name = llvm::Value::getName(v91);
      if (Name)
      {
        std::string::basic_string[abi:ne200100](&buf, Name, v101);
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      MTLMetalFunctionCreate();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v104 = *(v91 + 5);
      if (*(v104 + 239) < 0)
      {
        v105 = *(v104 + 216);
      }

      MTLMetalLibCreateExecutableWithTriple();
      MTLMetalLibInsertFunction();
      v106 = MTLWriteMetalLibToMemoryBuffer();
      v97 = MTLCompilerObject::serializeLibraryToArchiveReply(v153, &v170, 0, 0, 1, v106, v93);
      if (v106)
      {
        LLVMDisposeMemoryBuffer();
      }

      LLVMExtraDisposeSharedModule();
      v98 = 0;
      goto LABEL_184;
    }

    v159 = &v179;
LABEL_167:
    (*(a6 + 16))(a6, 2, 0, 0, *v159);
  }

  else
  {
    (*(a6 + 16))(a6, 2, 0, 0, "Failed to load composeImageFunc plugin");
  }

  v92 = 0;
  v97 = 0;
  v98 = 1;
LABEL_184:
  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  buf.__r_.__value_.__r.__words[0] = &v186;
  std::vector<ImageFilterFunctionInfoSPI>::__destroy_vector::operator()[abi:ne200100](&buf);
LABEL_187:
  if (v178.__r_.__value_.__r.__words[0])
  {
    v178.__r_.__value_.__l.__size_ = v178.__r_.__value_.__r.__words[0];
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
  llvm::LLVMContext::~LLVMContext(&v180);
  if (v97)
  {
    v107 = v98;
  }

  else
  {
    v107 = 1;
  }

  if ((v107 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &unk_213C7E907);
    if (_MTLIsInternalBuild() && *a4)
    {
      v108 = 20;
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v178, "; ");
        std::string::push_back(&v178, *(a4 + v108));
        buf = v178;
        memset(&v178, 0, sizeof(v178));
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v110 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v110 = buf.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, p_buf, v110);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v178.__r_.__value_.__l.__data_);
        }

        v111 = v108 - 19;
        ++v108;
      }

      while (v111 < *a4);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "MTLBuildCISPIRequestToArchive");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = &__p;
    }

    else
    {
      v112 = __p.__r_.__value_.__r.__words[0];
    }

    v113 = logCompileEnd(v148, v147, "CI SPI", &buf, v112);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((*(a4 + 17) & 2) != 0)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 6;
      buf.__r_.__value_.__l.__size_ = v113;
      std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
      LODWORD(buf.__r_.__value_.__l.__data_) = 4;
      buf.__r_.__value_.__l.__size_ = v113 - v92;
      std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
    }

    v162 = 0;
    v163 = 0;
    v164 = 0;
    std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v162, v182, v183, (v183 - v182) >> 4);
    if (v97[13])
    {
      v114 = v97[12];
      memset(&buf, 0, sizeof(buf));
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&buf, v162, v163, (v163 - v162) >> 4);
      serializeCompileTimeData(v97 + v114, &buf);
      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (v162)
    {
      v163 = v162;
      operator delete(v162);
    }

    (*(a6 + 16))(a6, 0, v97, v170, 0);
    free(v97);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_282:
  v80 = v182;
  if (v182)
  {
    v183 = v182;
LABEL_284:
    operator delete(v80);
  }

LABEL_285:
  v145 = *MEMORY[0x277D85DE8];
}

uint64_t MTLCodeGenServiceBuildRequest(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if ((atomic_load_explicit(&qword_281130268, memory_order_acquire) & 1) == 0)
    {
      MTLCodeGenServiceBuildRequest_cold_1();
    }

    v12 = qword_281130260;
    v13 = mmap(0, qword_281130260 + 0x800000, 3, 4098, 503316480, 0);
    if (v13 == -1)
    {
      v15 = *(a6 + 16);
      v16 = "Cannot allocate stack";
    }

    else
    {
      v14 = v13;
      if (!mprotect(v13, qword_281130260, 0))
      {
        v20 = a1;
        v21 = a2;
        v22 = a3;
        v23 = a4;
        v24 = a5;
        v25 = a6;
        split_stack_call(v14 + qword_281130260, 0x800000, invokeBuildRequest, &v20);
        return munmap(v14, v12 + 0x800000);
      }

      v15 = *(a6 + 16);
      v16 = "Cannot set guard page protection";
    }

    v17 = a6;
    v18 = 1;
  }

  else
  {
    v15 = *(a6 + 16);
    v16 = "Compilation failed: compiler service missing";
    v17 = a6;
    v18 = 2;
  }

  return v15(v17, v18, 0, 0, v16);
}

void MTLCompilerObject::backendCompileExecutableRequest(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v36 = 0u;
  v37 = 0;
  memset(v35, 0, 24);
  v35[3] = -1;
  v38 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v34 = 0;
  v28 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v26 = 0;
  v27 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLBuildFunctions");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v4 = *(a1 + 80);
    }

    v5 = __p;
    if (DiagnosticContext < 0)
    {
      v5 = __p[0];
    }

    *buf = 136446722;
    *v49 = v4;
    *&v49[8] = 2082;
    *&v49[10] = v5;
    *&v49[18] = 2080;
    *&v50 = "pipeline";
    _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v6 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x21604B680](v23);
  __p[0] = v23;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v23);
  __p[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v23);
  v7 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  *buf = 0;
  *&v49[4] = 0u;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  MTLCompilerObject::getReadParametersFromRequest(v7, buf, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v23, (a2 + 40), &v43, &v43 + 1, 1);
  *(a2 + 48) = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_16:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_18;
  }

  if ((MTLCompilerObject::runFrameworkPasses(a1, a2, v35, v23) & 1) == 0)
  {
    goto LABEL_16;
  }

  MTLCompilerObject::backendCompileModule(a1, a2, v29, v9, &v26);
  v10 = *(a2 + 32);
  if ((*(v10 + 5) & 2) != 0)
  {
    if ((v27 - v26) >> 4 == -2)
    {
      v11 = 0;
    }

    else
    {
      v11 = 12 * (((v27 - v26) >> 4) + 2) + 4;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = 0;
  v22 = 0;
  if ((*(v10 + 2) & 0x80) != 0)
  {
    v19 = *a2;
    v20 = *(v10 + 176);
    v18 = MTLGPUArchiverFromId();
    v21 = v18;
    if (!v18 || !MTLCompilerObject::storeToBinaryArchive(a1, *(a2 + 32), *(a2 + 8), buf, v29, *(a2 + 40), v35, &v21, &v22))
    {
      (*(*(a2 + 24) + 16))();
      if (v43)
      {
        free(v43);
      }

      free(v22);
      MTLGPUArchiverDestroy();
LABEL_18:
      ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
      llvm::LLVMContext::~LLVMContext(v23);
      goto LABEL_19;
    }
  }

  MTLCompilerObject::serializeBackendCompilationOutput(a1, *(a2 + 16), a2, v35, v29, &v26, v6, v11);
  if (v18)
  {
    MTLGPUArchiverDestroy();
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
  llvm::LLVMContext::~LLVMContext(v23);
  if (v43)
  {
    free(v43);
    v43 = 0uLL;
  }

LABEL_19:
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v35[i], 0);
  }

  v13 = v44;
  *&v44 = 0;
  if (v13)
  {
    free(v13);
  }

  v14 = v38;
  v38 = 0;
  if (v14)
  {
    free(v14);
  }

  v15 = v36;
  *&v36 = 0;
  if (v15)
  {
    free(v15);
  }

  v16 = v35[0];
  v35[0] = 0;
  if (v16)
  {
    free(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
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

uint64_t MTLCompilerObject::getReadParametersFromRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  *a2 = *(a5 + 3);
  v6 = a3 + a5[2];
  *(a2 + 8) = a5[3];
  *(a2 + 16) = v6;
  LODWORD(v6) = *(a6 + 4);
  *(a2 + 65) = BYTE2(v6) & 1;
  *(a2 + 64) = (v6 & 0x8000) == 0;
  *(a2 + 80) = *(a6 + 268);
  v7 = *(a5 + 6);
  *(a2 + 100) = *(a5 + 10);
  *(a2 + 84) = v7;
  v8 = a5[5];
  *(a2 + 24) = v8;
  if (v8)
  {
    v9 = a3 + a5[4];
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 32) = v9;
  *(a2 + 48) = a3 + *a5;
  v10 = *(a3 + 32);
  if (v10 > a4)
  {
    goto LABEL_14;
  }

  v13 = *(a3 + 36);
  if ((v13 + v10) > a4)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    v15 = a3 + v10;
    if (strnlen((a3 + v10), *(a3 + 36)) < v13)
    {
      *(a2 + 56) = v15;
    }
  }

  *(a2 + 40) = *(a3 + 48);
  v16 = *(a3 + 168);
  if (v16 > a4 || (v17 = *(a3 + 172), (v17 + v16) > a4))
  {
LABEL_14:
    abort();
  }

  if (v17)
  {
    *(a2 + 72) = a3 + v16;
  }

  return 1;
}

llvm::Module *MTLCompilerObject::readModuleFromBinaryRequest(uint64_t a1, unsigned __int16 *a2, llvm::LLVMContext *a3, MTLFunctionType *a4, void **a5, unint64_t *a6, int a7)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v45 = 0;
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v15 = *a2;
  if ((v15 | 2) == 3)
  {
    v16 = moduleFromOpenGLBitcode(v15 == 3, a3, *(a2 + 2), *(a2 + 1), v14, v13, a5, a6);
    v19 = v16;
    v45 = v16;
    v20 = *a2;
    *(a1 + 72) = 1;
    if (!v16)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to process function bitcode(%d) in plugin", v20);
LABEL_55:
      v19 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v24 = *(a2 + 1);
    __p = *(a2 + 2);
    v39 = v24;
    v40 = &unk_213C7E907;
    v41 = 0;
    llvm::getLazyBitcodeModule();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v49, v46);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v49);
    if (v47)
    {
      MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to read function bitcode.");
      if (v47)
      {
        goto LABEL_55;
      }

      v25 = v46[0];
      v46[0] = 0;
      if (!v25)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v19 = v46[0];
    v45 = v46[0];
    v46[0] = 0;
    v16 = llvm::Module::materializeAll(&__p, v45);
    v26 = __p;
    if (__p)
    {
      MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to materializeAll.");
      v16 = __p;
      if (__p)
      {
        v16 = (*(*__p + 8))(__p);
      }
    }

    if ((v47 & 1) == 0)
    {
      v16 = v46[0];
      v46[0] = 0;
      if (v16)
      {
        v27 = MEMORY[0x21604BFC0]();
        v16 = MEMORY[0x21604C990](v27, 0x10B2C407FF26C1CLL);
      }
    }

    if (v26)
    {
      goto LABEL_52;
    }

    v20 = *a2;
  }

  if (v20 == 2)
  {
    v45 = 0;
    v16 = moduleFromOpenCLModule(a3, v19, v14, v13, a5, a6, v17, v18, v36);
    v19 = v16;
    v45 = v16;
    *(a1 + 73) = 1;
    if (!v16)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to process function bitcode(%d) in plugin", *a2);
      goto LABEL_55;
    }
  }

  v21 = *(a2 + 7);
  if (v21)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v21);
    v22 = SHIBYTE(v40) >= 0 ? &__p : __p;
    v23 = SHIBYTE(v40) >= 0 ? SHIBYTE(v40) : v39;
    llvm::Module::setTargetTriple(v19, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }
  }

  if ((*(a1 + 72) & 1) != 0 || (v19 = v45, MTLCompilerObject::upgradeAIRModule(v16, v45, *(a2 + 10), *(a2 + 11))))
  {
    if (*(a2 + 64) == 1)
    {
      v19 = v45;
      if (*(v45 + 239) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, *(v45 + 27), *(v45 + 28));
      }

      else
      {
        v44 = *(v45 + 9);
      }

      v48 = 260;
      v46[0] = &v44;
      MEMORY[0x21604BFD0](&__p, v46);
      v46[0] = "air.version";
      v48 = 259;
      if (llvm::Module::getNamedMetadata(v19, v46))
      {
        v28 = readVersionMetadata(v19, "air.version", 0, 0, 0) > 0x20003;
      }

      else
      {
        v28 = 0;
      }

      if (((_os_feature_enabled_impl() ^ 1) & v28 & 1) == 0 && v43 != 7)
      {
        MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Target OS is incompatible.");
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        v45 = 0;
        goto LABEL_53;
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }
    }

    if (!a7)
    {
      v33 = 0;
      *a4 = 0xFFFFLL;
      v19 = v45;
      while (1)
      {
        v34 = entryPointsMetadata[v33];
        v42 = 257;
        if (*v34)
        {
          __p = v34;
          v35 = 3;
        }

        else
        {
          v35 = 1;
        }

        LOBYTE(v42) = v35;
        if (llvm::Module::getNamedMetadata(v19, &__p))
        {
          break;
        }

        if (++v33 == 7)
        {
          goto LABEL_56;
        }
      }

      *a4 = entryPointsType[v33];
      goto LABEL_56;
    }

    v29 = *(a2 + 6);
    *a4 = MTLFunctionTypeVertex;
    v19 = v45;
    if (eliminateOtherEntryPoints(v45, v29, a4))
    {
      goto LABEL_56;
    }

    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Function %s was not found in the module.", v29);
  }

  else
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to upgrade function bitcode");
  }

LABEL_52:
  v45 = 0;
  if (v19)
  {
LABEL_53:
    v25 = v19;
LABEL_54:
    v30 = MEMORY[0x21604BFC0](v25);
    MEMORY[0x21604C990](v30, 0x10B2C407FF26C1CLL);
    goto LABEL_55;
  }

LABEL_56:
  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::Module>::reset[abi:ne200100](a1, 0);
  }

  return a1;
}

uint64_t MTLCompilerObject::upgradeAIRModule(MTLCompilerObject *this, llvm::Module *a2, int a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a4 | a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = a3;
    v9 = 1024;
    v10 = a4;
    _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MTLCompiler upgrade pass forced to use air version %d.%d", v8, 0xEu);
  }

  result = MTLUpgradeAIRModule();
  v7 = *MEMORY[0x277D85DE8];
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

size_t *CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(size_t *a1, const void *a2, size_t a3, uint64_t a4, const void *a5, size_t a6)
{
  if (*(a4 + 16))
  {
    v10 = LLVMGetBufferStart();
  }

  else
  {
    v10 = 0;
  }

  if (*(a4 + 8))
  {
    v11 = LLVMGetBufferStart();
  }

  else
  {
    v11 = 0;
  }

  if (*(a4 + 16))
  {
    v12 = LLVMGetBufferSize();
  }

  else
  {
    v12 = 0;
  }

  v27 = v10;
  if (!*(a4 + 8))
  {
    v18 = 0;
    v14 = *(a4 + 16);
    if (v14)
    {
      v13 = 0;
      goto LABEL_28;
    }

    v13 = 0;
    goto LABEL_27;
  }

  v13 = LLVMGetBufferSize();
  v14 = *(a4 + 8);
  if (!*(a4 + 16))
  {
    v18 = 0;
LABEL_27:
    v18 |= v14 != 0;
    goto LABEL_28;
  }

  if (!v14)
  {
    v18 = 0;
    goto LABEL_28;
  }

  v15 = *v11;
  AirReflection::Reflection::Hash((v10 + *v10), &v32);
  AirReflection::Reflection::Hash((v11 + v15), &v30);
  v16 = v32;
  v17 = v30;
  if (v33 - v32 != v31 - v30)
  {
    v18 = 0;
    if (!v30)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v18 = memcmp(v32, v30, v33 - v32) == 0;
  if (v17)
  {
LABEL_22:
    v31 = v17;
    operator delete(v17);
    v16 = v32;
  }

LABEL_23:
  if (v16)
  {
    v33 = v16;
    operator delete(v16);
  }

  if (!*(a4 + 16))
  {
    v14 = *(a4 + 8);
    goto LABEL_27;
  }

LABEL_28:
  v19 = (a3 + 87) & 0xFFFFFFFFFFFFFFF8;
  v20 = ((a3 + 87) | 7) + a6;
  v21 = v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = ((v20 | 7) + v13) & 0xFFFFFFFFFFFFFFF8;
  if (v18)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v12 = v13;
    v24 = v22;
  }

  else
  {
    v24 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = v24;
  v25 = malloc_type_malloc(v24, 0xECC150FBuLL);
  a1[1] = v25;
  *v25 = xmmword_213C7D420;
  v25[2] = 80;
  v25[3] = a3;
  v25[4] = v23;
  v25[5] = v12;
  v25[6] = v21;
  v25[7] = v13;
  v25[8] = v19;
  v25[9] = a6;
  if (a3)
  {
    memcpy((a1[1] + 80), a2, a3);
  }

  if (a6)
  {
    memcpy((a1[1] + v19), a5, a6);
  }

  if (v13)
  {
    memcpy((a1[1] + v21), v11, v13);
  }

  if (!(v18 & 1 | (v12 == 0)))
  {
    memcpy((a1[1] + v23), v27, v12);
  }

  return a1;
}

void sub_213BD011C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLCompilerObject::serializeBackendCompilationOutput(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v16 = a3[4];
  if (!*(v16 + 4) && *(v16 + 216) == 1)
  {
    v17 = *(a5 + 24);
LABEL_9:
    if (!v17)
    {
      v19 = 0;
      goto LABEL_20;
    }

    if (v17 == 1)
    {
      v19 = 2;
LABEL_20:
      v28 = a3[3];
      v29 = *a5;
      v30 = *(a5 + 8);
      v31 = *(a5 + 16);
      (*(a3[3] + 16))();
      goto LABEL_36;
    }

LABEL_43:
    abort();
  }

  v17 = *(a5 + 24);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = *a5 == 0;
  }

  if (v18)
  {
    goto LABEL_9;
  }

  memset(v52, 0, sizeof(v52));
  v53 = 1065353216;
  v20 = *a4;
  if (a4[1])
  {
    v21 = *a4;
  }

  else
  {
    v21 = 0;
  }

  v22 = a4[16];
  v23 = a4[17];
  CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v51, v21);
  addBlocksForOutput(v52, a4, a5, v51);
  LOBYTE(__p[0]) = 5;
  v54[0] = a8;
  std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,CompilerOutputBlock>(v52, __p);
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  v50 = 0;
  v24 = createSerializedCompileRequest(&v50, v52, v54);
  if (!v24)
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to serialize reply data");
    v32 = *(a1 + 64);
    (*(a3[3] + 16))();
    v19 = 0;
    goto LABEL_35;
  }

  v25 = *a3;
  v26 = *(a3[4] + 88);
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLBuildFunctions");
  v27 = logCompileEnd(a1 + 80, a7, "pipeline", __p, (v25 + v26));
  if (v49 < 0)
  {
    operator delete(__p[0]);
    if (!a8)
    {
      goto LABEL_30;
    }
  }

  else if (!a8)
  {
    goto LABEL_30;
  }

  LODWORD(__p[0]) = 3;
  __p[1] = v27;
  std::vector<CompileTimeData>::push_back[abi:ne200100](a6, __p);
  LODWORD(__p[0]) = 4;
  __p[1] = &v27[-*(a5 + 72)];
  std::vector<CompileTimeData>::push_back[abi:ne200100](a6, __p);
  v33 = *(&v55 + 1);
  v46 = 0;
  v47 = 0;
  v45 = 0;
  std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v45, *a6, a6[1], (a6[1] - *a6) >> 4);
  v34 = v45;
  if (v46 != v45)
  {
    v35 = &v24[v33];
    v36 = (v46 - v45) >> 4;
    *v35 = v36;
    v35[2] = BYTE2(v36);
    v35[3] = BYTE3(v36);
    v36 = v36;
    if (v36)
    {
      v37 = v35 + 4;
      v38 = v34 + 8;
      do
      {
        *v37 = *(v38 - 2);
        v39 = *v38;
        v38 += 2;
        *(v37 + 4) = v39;
        v37 += 12;
        --v36;
      }

      while (v36);
      goto LABEL_29;
    }
  }

  if (v34)
  {
LABEL_29:
    v46 = v34;
    operator delete(v34);
  }

LABEL_30:
  v40 = *(a5 + 24);
  if (v40)
  {
    if (v40 != 1)
    {
      goto LABEL_43;
    }

    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v41 = *(a5 + 16);
  (*(a3[3] + 16))();
  free(v24);
LABEL_35:
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v51);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(v52);
  if (!v24)
  {
    result = 0;
    goto LABEL_41;
  }

LABEL_36:
  if (*(a5 + 64) == 1)
  {
    BackendCompilationOutput::free(a5);
  }

  else
  {
    v42 = *(*(a1 + 8) + 8 * a2);
    if (*(v42 + 155) == 1)
    {
      (*(v42 + 16))(*(v42 + 128));
      *(v42 + 155) = 0;
    }
  }

  result = v19 == 0;
LABEL_41:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213BD04C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, char a22)
{
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(&a20);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a22);
  _Unwind_Resume(a1);
}

uint64_t AirReflection::Reflection::Hash@<X0>(AirReflection::Reflection *this@<X0>, unsigned __int8 **a2@<X8>)
{
  CC_SHA256_Init(&c);
  AirReflection::Reflection::HashImpl(this, &c);
  return flatbuffers::SignatureBuilder::Create(&c, a2);
}

uint64_t AirReflection::Reflection::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Reflection", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    Air::Version::HashImpl((a1 + v5), c);
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7 + *(a1 + v7));
    data = *v8;
    CC_SHA256_Update(c, &data, 4u);
    v9 = *v8;
    if (v9)
    {
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v12 = *v11++;
        AirReflection::Node::HashImpl((v10 + v12), c);
        v10 = v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14 + *(a1 + v14));
    data = *v15;
    CC_SHA256_Update(c, &data, 4u);
    v16 = *v15;
    if (v16)
    {
      v17 = (v15 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v18 = *v17++;
        data = v18;
        CC_SHA256_Update(c, &data, 4u);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v19 = (a1 - *a1);
  if (*v19 >= 0xBu && (v20 = v19[5]) != 0)
  {
    v21 = (a1 + v20 + *(a1 + v20));
    data = *v21;
    CC_SHA256_Update(c, &data, 4u);
    v22 = *v21;
    if (v22)
    {
      v23 = (v21 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v24 = *v23++;
        data = v24;
        CC_SHA256_Update(c, &data, 4u);
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v25 = (a1 - *a1);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = (a1 + v26 + *(a1 + v26));
    data = *v27;
    CC_SHA256_Update(c, &data, 4u);
    v28 = *v27;
    if (v28)
    {
      v29 = (v27 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v30 = *v29++;
        data = v30;
        CC_SHA256_Update(c, &data, 4u);
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v31 = (a1 - *a1);
  if (*v31 >= 0xFu && (v32 = v31[7]) != 0)
  {
    v33 = (a1 + v32 + *(a1 + v32));
    data = *v33;
    CC_SHA256_Update(c, &data, 4u);
    v34 = *v33;
    if (v34)
    {
      v35 = (v33 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v36 = *v35++;
        data = v36;
        CC_SHA256_Update(c, &data, 4u);
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v37 = (a1 - *a1);
  if (*v37 >= 0x11u && (v38 = v37[8]) != 0)
  {
    v39 = (a1 + v38 + *(a1 + v38));
    data = *v39;
    CC_SHA256_Update(c, &data, 4u);
    v40 = *v39;
    if (v40)
    {
      v41 = (v39 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v42 = *v41++;
        data = v42;
        CC_SHA256_Update(c, &data, 4u);
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v43 = (a1 - *a1);
  if (*v43 >= 0x13u && (v44 = v43[9]) != 0)
  {
    v45 = (a1 + v44 + *(a1 + v44));
    data = *v45;
    CC_SHA256_Update(c, &data, 4u);
    v46 = *v45;
    if (v46)
    {
      v47 = (v45 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v48 = *v47++;
        data = v48;
        CC_SHA256_Update(c, &data, 4u);
        --v46;
      }

      while (v46);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v49 = (a1 - *a1);
  if (*v49 >= 0x15u && (v50 = v49[10]) != 0)
  {
    v51 = (a1 + v50 + *(a1 + v50));
    data = *v51;
    CC_SHA256_Update(c, &data, 4u);
    v52 = *v51;
    if (v52)
    {
      v53 = (v51 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v54 = *v53++;
        data = v54;
        CC_SHA256_Update(c, &data, 4u);
        --v52;
      }

      while (v52);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v55 = (a1 - *a1);
  if (*v55 >= 0x17u && (v56 = v55[11]) != 0)
  {
    v57 = (a1 + v56 + *(a1 + v56));
    data = *v57;
    CC_SHA256_Update(c, &data, 4u);
    v58 = *v57;
    if (v58)
    {
      v59 = (v57 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v60 = *v59++;
        data = v60;
        CC_SHA256_Update(c, &data, 4u);
        --v58;
      }

      while (v58);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v61 = (a1 - *a1);
  if (*v61 >= 0x19u && (v62 = v61[12]) != 0)
  {
    v63 = (a1 + v62 + *(a1 + v62));
    data = *v63;
    CC_SHA256_Update(c, &data, 4u);
    v64 = *v63;
    if (v64)
    {
      v65 = v63 + 1;
      v66 = v63 + 1;
      do
      {
        v67 = *v66++;
        AirReflection::LocalAllocation::HashImpl((v65 + v67), c);
        v65 = v66;
        --v64;
      }

      while (v64);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v68 = (a1 - *a1);
  if (*v68 >= 0x1Bu && (v69 = v68[13]) != 0)
  {
    v70 = (a1 + v69 + *(a1 + v69));
    data = *v70;
    CC_SHA256_Update(c, &data, 4u);
    v71 = *v70;
    if (v71)
    {
      v72 = (v70 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v73 = *v72++;
        data = v73;
        CC_SHA256_Update(c, &data, 4u);
        --v71;
      }

      while (v71);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v74 = (a1 - *a1);
  if (*v74 >= 0x1Du && (v75 = v74[14]) != 0)
  {
    v76 = (a1 + v75 + *(a1 + v75));
    data = *v76;
    CC_SHA256_Update(c, &data, 4u);
    v77 = *v76;
    if (v77)
    {
      v78 = (v76 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v79 = *v78++;
        data = v79;
        CC_SHA256_Update(c, &data, 4u);
        --v77;
      }

      while (v77);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v80 = (a1 - *a1);
  if (*v80 >= 0x1Fu && (v81 = v80[15]) != 0)
  {
    v82 = (a1 + v81 + *(a1 + v81));
    data = *v82;
    CC_SHA256_Update(c, &data, 4u);
    v83 = *v82;
    if (v83)
    {
      v84 = (v82 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v85 = *v84++;
        data = v85;
        CC_SHA256_Update(c, &data, 4u);
        --v83;
      }

      while (v83);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v86 = (a1 - *a1);
  if (*v86 >= 0x21u && (v87 = v86[16]) != 0)
  {
    v88 = (a1 + v87 + *(a1 + v87));
    data = *v88;
    result = CC_SHA256_Update(c, &data, 4u);
    v90 = *v88;
    if (v90)
    {
      v91 = (v88 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v92 = *v91++;
        data = v92;
        result = CC_SHA256_Update(c, &data, 4u);
        --v90;
      }

      while (v90);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t Air::Version::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.Version", 0xBu);
  data = *a1;
  CC_SHA256_Update(c, &data, 4u);
  v6 = a1[1];
  CC_SHA256_Update(c, &v6, 4u);
  v7 = a1[2];
  return CC_SHA256_Update(c, &v7, 4u);
}

uint64_t AirReflection::Node::HashImpl(AirReflection::Node *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Node", 0x12u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 5u)
  {
    goto LABEL_195;
  }

  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_195;
  }

  v8 = *(a1 + v7);
  if (v8 >= 286720)
  {
    if (v8 < 532480)
    {
      if (v8 <= 524292)
      {
        if (v8 > 294917)
        {
          if (v8 > 0x80000)
          {
            if (v8 > 524290)
            {
              if (v8 == 524291)
              {
                v73 = AirReflection::Node::node_as_MeshTypeInfo(a1);
                return AirReflection::MeshTypeInfo::HashImpl(v73, c);
              }

              else
              {
                v44 = AirReflection::Node::node_as_GlobalBinding(a1);
                return AirReflection::GlobalBinding::HashImpl(v44, c);
              }
            }

            else if (v8 == 524289)
            {
              v69 = AirReflection::Node::node_as_StructTypeInfo(a1);
              return AirReflection::StructTypeInfo::HashImpl(v69, c);
            }

            else
            {
              v31 = AirReflection::Node::node_as_StitchingArgument(a1);
              return AirReflection::StitchingArgument::HashImpl(v31, c);
            }
          }

          if (v8 <= 294919)
          {
            if (v8 == 294918)
            {
              v67 = AirReflection::Node::node_as_CIMatrixArg(a1);
              return AirReflection::CIMatrixArg::HashImpl(v67, c);
            }

            else
            {
              v24 = AirReflection::Node::node_as_CISamplerArg(a1);
              return AirReflection::CISamplerArg::HashImpl(v24, c);
            }
          }

          if (v8 == 294920)
          {
            v71 = AirReflection::Node::node_as_CIImageblockArg(a1);
            return AirReflection::CIImageblockArg::HashImpl(v71, c);
          }

          if (v8 == 0x80000)
          {
            v42 = AirReflection::Node::node_as_FunctionConstant(a1);
            return AirReflection::FunctionConstant::HashImpl(v42, c);
          }
        }

        else
        {
          if (v8 > 294913)
          {
            if (v8 > 294915)
            {
              if (v8 == 294916)
              {
                v72 = AirReflection::Node::node_as_CITextureArg(a1);
                return AirReflection::CITextureArg::HashImpl(v72, c);
              }

              else
              {
                v43 = AirReflection::Node::node_as_CIBuiltinArg(a1);
                return AirReflection::CIBuiltinArg::HashImpl(v43, c);
              }
            }

            else if (v8 == 294914)
            {
              v68 = AirReflection::Node::node_as_CIPointerArg(a1);
              return AirReflection::CIPointerArg::HashImpl(v68, c);
            }

            else
            {
              v30 = AirReflection::Node::node_as_CIStructArg(a1);
              return AirReflection::CIStructArg::HashImpl(v30, c);
            }
          }

          if (v8 >= 294912)
          {
            if (v8 == 294912)
            {
              v70 = AirReflection::Node::node_as_CIArrayArg(a1);
              return AirReflection::CIArrayArg::HashImpl(v70, c);
            }

            AirReflection::Node::node_as_CIPaddingArg(a1);
            v16 = "AirReflection.CIPaddingArg";
LABEL_177:
            v17 = c;
            v18 = 26;
            return CC_SHA256_Update(v17, v16, v18);
          }

          if (v8 == 286720)
          {
            v66 = AirReflection::Node::node_as_MeshArg(a1);
            return AirReflection::MeshArg::HashImpl(v66, c);
          }

          if (v8 == 290816)
          {
            v19 = AirReflection::Node::node_as_MeshGridPropertiesArg(a1);
            return AirReflection::MeshGridPropertiesArg::HashImpl(v19, c);
          }
        }

        goto LABEL_195;
      }

      switch(v8)
      {
        case 528384:
          v13 = AirReflection::Node::node_as_OpaqueType(a1);
          result = AirReflection::OpaqueType::HashImpl(v13, c);
          break;
        case 528385:
          v198 = AirReflection::Node::node_as_VoidType(a1);
          result = AirReflection::VoidType::HashImpl(v198, c);
          break;
        case 528386:
          v193 = AirReflection::Node::node_as_BoolType(a1);
          result = AirReflection::BoolType::HashImpl(v193, c);
          break;
        case 528387:
          v196 = AirReflection::Node::node_as_CharType(a1);
          result = AirReflection::CharType::HashImpl(v196, c);
          break;
        case 528388:
          v188 = AirReflection::Node::node_as_UCharType(a1);
          result = AirReflection::UCharType::HashImpl(v188, c);
          break;
        case 528389:
          v201 = AirReflection::Node::node_as_ShortType(a1);
          result = AirReflection::ShortType::HashImpl(v201, c);
          break;
        case 528390:
          v204 = AirReflection::Node::node_as_UShortType(a1);
          result = AirReflection::UShortType::HashImpl(v204, c);
          break;
        case 528391:
          v197 = AirReflection::Node::node_as_IntType(a1);
          result = AirReflection::IntType::HashImpl(v197, c);
          break;
        case 528392:
          v207 = AirReflection::Node::node_as_UIntType(a1);
          result = AirReflection::UIntType::HashImpl(v207, c);
          break;
        case 528393:
          v190 = AirReflection::Node::node_as_LongType(a1);
          result = AirReflection::LongType::HashImpl(v190, c);
          break;
        case 528394:
          v206 = AirReflection::Node::node_as_ULongType(a1);
          result = AirReflection::ULongType::HashImpl(v206, c);
          break;
        case 528395:
          v187 = AirReflection::Node::node_as_LLongType(a1);
          result = AirReflection::LLongType::HashImpl(v187, c);
          break;
        case 528396:
          v189 = AirReflection::Node::node_as_ULLongType(a1);
          result = AirReflection::ULLongType::HashImpl(v189, c);
          break;
        case 528397:
          v203 = AirReflection::Node::node_as_HalfType(a1);
          result = AirReflection::HalfType::HashImpl(v203, c);
          break;
        case 528398:
          v186 = AirReflection::Node::node_as_FloatType(a1);
          result = AirReflection::FloatType::HashImpl(v186, c);
          break;
        case 528399:
          v195 = AirReflection::Node::node_as_DoubleType(a1);
          result = AirReflection::DoubleType::HashImpl(v195, c);
          break;
        case 528400:
          v185 = AirReflection::Node::node_as_BFloatType(a1);
          result = AirReflection::BFloatType::HashImpl(v185, c);
          break;
        case 528401:
          v199 = AirReflection::Node::node_as_VectorType(a1);
          result = AirReflection::VectorType::HashImpl(v199, c);
          break;
        case 528402:
          v205 = AirReflection::Node::node_as_PackedVectorType(a1);
          result = AirReflection::PackedVectorType::HashImpl(v205, c);
          break;
        case 528403:
          v209 = AirReflection::Node::node_as_MatrixType(a1);
          result = AirReflection::MatrixType::HashImpl(v209, c);
          break;
        case 528404:
          v200 = AirReflection::Node::node_as_FunctionType(a1);
          result = AirReflection::FunctionType::HashImpl(v200, c);
          break;
        case 528405:
          v202 = AirReflection::Node::node_as_PointerType(a1);
          result = AirReflection::PointerType::HashImpl(v202, c);
          break;
        case 528406:
          v208 = AirReflection::Node::node_as_LValueReferenceType(a1);
          result = AirReflection::LValueReferenceType::HashImpl(v208, c);
          break;
        case 528407:
          v210 = AirReflection::Node::node_as_RValueReferenceType(a1);
          result = AirReflection::RValueReferenceType::HashImpl(v210, c);
          break;
        case 528408:
          v192 = AirReflection::Node::node_as_ArrayType(a1);
          result = AirReflection::ArrayType::HashImpl(v192, c);
          break;
        case 528409:
          v191 = AirReflection::Node::node_as_EnumType(a1);
          result = AirReflection::EnumType::HashImpl(v191, c);
          break;
        case 528410:
          v213 = AirReflection::Node::node_as_RecordBase(a1);
          result = AirReflection::RecordBase::HashImpl(v213, c);
          break;
        case 528411:
          v184 = AirReflection::Node::node_as_RecordField(a1);
          result = AirReflection::RecordField::HashImpl(v184, c);
          break;
        case 528412:
          v211 = AirReflection::Node::node_as_StructType(a1);
          result = AirReflection::StructType::HashImpl(v211, c);
          break;
        case 528413:
          v212 = AirReflection::Node::node_as_UnionType(a1);
          result = AirReflection::UnionType::HashImpl(v212, c);
          break;
        default:
          if (v8 == 524293)
          {
            v194 = AirReflection::Node::node_as_InlineTypeInfo(a1);
            result = AirReflection::InlineTypeInfo::HashImpl(v194, c);
          }

          else
          {
            if (v8 != 524294)
            {
              goto LABEL_195;
            }

            v50 = AirReflection::Node::node_as_VisibleFunctionReference(a1);
            result = AirReflection::VisibleFunctionReference::HashImpl(v50, c);
          }

          break;
      }

      return result;
    }

    if (v8 < 540672)
    {
      switch(v8)
      {
        case 532480:
          v11 = AirReflection::Node::node_as_ArrayOfType(a1);
          result = AirReflection::ArrayOfType::HashImpl(v11, c);
          break;
        case 532481:
          v165 = AirReflection::Node::node_as_ArrayRefOfType(a1);
          result = AirReflection::ArrayRefOfType::HashImpl(v165, c);
          break;
        case 532482:
          v167 = AirReflection::Node::node_as_Texture1dType(a1);
          result = AirReflection::Texture1dType::HashImpl(v167, c);
          break;
        case 532483:
          v162 = AirReflection::Node::node_as_Texture1dArrayType(a1);
          result = AirReflection::Texture1dArrayType::HashImpl(v162, c);
          break;
        case 532484:
          v158 = AirReflection::Node::node_as_Texture2dType(a1);
          result = AirReflection::Texture2dType::HashImpl(v158, c);
          break;
        case 532485:
          v155 = AirReflection::Node::node_as_Texture2dArrayType(a1);
          result = AirReflection::Texture2dArrayType::HashImpl(v155, c);
          break;
        case 532486:
          v161 = AirReflection::Node::node_as_Texture3dType(a1);
          result = AirReflection::Texture3dType::HashImpl(v161, c);
          break;
        case 532487:
          v153 = AirReflection::Node::node_as_TextureCubeType(a1);
          result = AirReflection::TextureCubeType::HashImpl(v153, c);
          break;
        case 532488:
          v154 = AirReflection::Node::node_as_TextureCubeArrayType(a1);
          result = AirReflection::TextureCubeArrayType::HashImpl(v154, c);
          break;
        case 532489:
          v159 = AirReflection::Node::node_as_Texture2dMsType(a1);
          result = AirReflection::Texture2dMsType::HashImpl(v159, c);
          break;
        case 532490:
          v166 = AirReflection::Node::node_as_Texture2dMsArrayType(a1);
          result = AirReflection::Texture2dMsArrayType::HashImpl(v166, c);
          break;
        case 532491:
          v170 = AirReflection::Node::node_as_TextureBuffer1dType(a1);
          result = AirReflection::TextureBuffer1dType::HashImpl(v170, c);
          break;
        case 532492:
          v148 = AirReflection::Node::node_as_Depth2dType(a1);
          result = AirReflection::Depth2dType::HashImpl(v148, c);
          break;
        case 532493:
          v163 = AirReflection::Node::node_as_Depth2dArrayType(a1);
          result = AirReflection::Depth2dArrayType::HashImpl(v163, c);
          break;
        case 532494:
          v171 = AirReflection::Node::node_as_DepthCubeType(a1);
          result = AirReflection::DepthCubeType::HashImpl(v171, c);
          break;
        case 532495:
          v176 = AirReflection::Node::node_as_DepthCubeArrayType(a1);
          result = AirReflection::DepthCubeArrayType::HashImpl(v176, c);
          break;
        case 532496:
          v164 = AirReflection::Node::node_as_Depth2dMsType(a1);
          result = AirReflection::Depth2dMsType::HashImpl(v164, c);
          break;
        case 532497:
          v173 = AirReflection::Node::node_as_Depth2dMsArrayType(a1);
          result = AirReflection::Depth2dMsArrayType::HashImpl(v173, c);
          break;
        case 532498:
          v175 = AirReflection::Node::node_as_SamplerType(a1);
          result = AirReflection::SamplerType::HashImpl(v175, c);
          break;
        case 532499:
          v157 = AirReflection::Node::node_as_PatchControlPointType(a1);
          result = AirReflection::PatchControlPointType::HashImpl(v157, c);
          break;
        case 532500:
          v149 = AirReflection::Node::node_as_ImageblockType(a1);
          result = AirReflection::ImageblockType::HashImpl(v149, c);
          break;
        case 532501:
          v146 = AirReflection::Node::node_as_R8UNormType(a1);
          result = AirReflection::R8UNormType::HashImpl(v146, c);
          break;
        case 532502:
          v147 = AirReflection::Node::node_as_R8SNormType(a1);
          result = AirReflection::R8SNormType::HashImpl(v147, c);
          break;
        case 532503:
          v168 = AirReflection::Node::node_as_R16UNormType(a1);
          result = AirReflection::R16UNormType::HashImpl(v168, c);
          break;
        case 532504:
          v141 = AirReflection::Node::node_as_R16SNormType(a1);
          result = AirReflection::R16SNormType::HashImpl(v141, c);
          break;
        case 532505:
          v140 = AirReflection::Node::node_as_RG8UNormType(a1);
          result = AirReflection::RG8UNormType::HashImpl(v140, c);
          break;
        case 532506:
          v151 = AirReflection::Node::node_as_RG8SNormType(a1);
          result = AirReflection::RG8SNormType::HashImpl(v151, c);
          break;
        case 532507:
          v172 = AirReflection::Node::node_as_RG16UNormType(a1);
          result = AirReflection::RG16UNormType::HashImpl(v172, c);
          break;
        case 532508:
          v178 = AirReflection::Node::node_as_RG16SNormType(a1);
          result = AirReflection::RG16SNormType::HashImpl(v178, c);
          break;
        case 532509:
          v156 = AirReflection::Node::node_as_RGBA8UNormType(a1);
          result = AirReflection::RGBA8UNormType::HashImpl(v156, c);
          break;
        case 532510:
          v143 = AirReflection::Node::node_as_RGBA8SNormType(a1);
          result = AirReflection::RGBA8SNormType::HashImpl(v143, c);
          break;
        case 532511:
          v180 = AirReflection::Node::node_as_RGBA16UNormType(a1);
          result = AirReflection::RGBA16UNormType::HashImpl(v180, c);
          break;
        case 532512:
          v160 = AirReflection::Node::node_as_RGBA16SNormType(a1);
          result = AirReflection::RGBA16SNormType::HashImpl(v160, c);
          break;
        case 532513:
          v179 = AirReflection::Node::node_as_SRGBA8UNormType(a1);
          result = AirReflection::SRGBA8UNormType::HashImpl(v179, c);
          break;
        case 532514:
          v169 = AirReflection::Node::node_as_RGB10A2Type(a1);
          result = AirReflection::RGB10A2Type::HashImpl(v169, c);
          break;
        case 532515:
          v145 = AirReflection::Node::node_as_RG11B10FType(a1);
          result = AirReflection::RG11B10FType::HashImpl(v145, c);
          break;
        case 532516:
          v182 = AirReflection::Node::node_as_RGB9E5Type(a1);
          result = AirReflection::RGB9E5Type::HashImpl(v182, c);
          break;
        case 532517:
          v181 = AirReflection::Node::node_as_CommandBufferType(a1);
          result = AirReflection::CommandBufferType::HashImpl(v181, c);
          break;
        case 532518:
          v136 = AirReflection::Node::node_as_ComputePipelineStateType(a1);
          result = AirReflection::ComputePipelineStateType::HashImpl(v136, c);
          break;
        case 532519:
          v174 = AirReflection::Node::node_as_RenderPipelineStateType(a1);
          result = AirReflection::RenderPipelineStateType::HashImpl(v174, c);
          break;
        case 532520:
          v152 = AirReflection::Node::node_as_InterpolantType(a1);
          result = AirReflection::InterpolantType::HashImpl(v152, c);
          break;
        case 532521:
          v135 = AirReflection::Node::node_as_VisibleFunctionTableType(a1);
          result = AirReflection::VisibleFunctionTableType::HashImpl(v135, c);
          break;
        case 532522:
          v177 = AirReflection::Node::node_as_IntersectionFunctionTableType(a1);
          result = AirReflection::IntersectionFunctionTableType::HashImpl(v177, c);
          break;
        case 532523:
          v150 = AirReflection::Node::node_as_AccelerationStructureType(a1);
          result = AirReflection::AccelerationStructureType::HashImpl(v150, c);
          break;
        case 532524:
          v138 = AirReflection::Node::node_as_MeshType(a1);
          result = AirReflection::MeshType::HashImpl(v138, c);
          break;
        case 532525:
          v133 = AirReflection::Node::node_as_MeshGridPropertiesType(a1);
          result = AirReflection::MeshGridPropertiesType::HashImpl(v133, c);
          break;
        case 532526:
          goto LABEL_195;
        case 532527:
          v142 = AirReflection::Node::node_as_VertexValueType(a1);
          result = AirReflection::VertexValueType::HashImpl(v142, c);
          break;
        case 532528:
          v134 = AirReflection::Node::node_as_DepthStencilStateType(a1);
          result = AirReflection::DepthStencilStateType::HashImpl(v134, c);
          break;
        case 532529:
          v137 = AirReflection::Node::node_as_FunctionHandleType(a1);
          result = AirReflection::FunctionHandleType::HashImpl(v137, c);
          break;
        case 532530:
          v183 = AirReflection::Node::node_as_IntersectionFunctionHandleType(a1);
          result = AirReflection::IntersectionFunctionHandleType::HashImpl(v183, c);
          break;
        case 532531:
          v144 = AirReflection::Node::node_as_ExtentsType(a1);
          result = AirReflection::ExtentsType::HashImpl(v144, c);
          break;
        case 532532:
          v139 = AirReflection::Node::node_as_TensorType(a1);
          result = AirReflection::TensorType::HashImpl(v139, c);
          break;
        default:
          if (v8 != 536576)
          {
            goto LABEL_195;
          }

          v82 = AirReflection::Node::node_as_AddressSpaceTypeQual(a1);
          result = AirReflection::AddressSpaceTypeQual::HashImpl(v82, c);
          break;
      }

      return result;
    }

    if (v8 < 544768)
    {
      switch(v8)
      {
        case 540672:
          AirReflection::Node::node_as_ClipDistanceAttr(a1);
          v16 = "AirReflection.ClipDistanceAttr";
          v17 = c;
          v18 = 30;
          return CC_SHA256_Update(v17, v16, v18);
        case 540673:
          v80 = AirReflection::Node::node_as_FunctionConstantPredicateAttr(a1);
          return AirReflection::FunctionConstantPredicateAttr::HashImpl(v80, c);
        case 540674:
          v75 = AirReflection::Node::node_as_LocationIndexAttr(a1);
          return AirReflection::LocationIndexAttr::HashImpl(v75, c);
        case 540675:
          AirReflection::Node::node_as_PointSizeAttr(a1);
          v16 = "AirReflection.PointSizeAttr";
          goto LABEL_186;
        case 540676:
          AirReflection::Node::node_as_PositionAttr(a1);
          v16 = "AirReflection.PositionAttr";
          goto LABEL_177;
        case 540677:
          AirReflection::Node::node_as_PrimitiveCulledAttr(a1);
          v16 = "AirReflection.PrimitiveCulledAttr";
          v17 = c;
          v18 = 33;
          return CC_SHA256_Update(v17, v16, v18);
        case 540678:
          AirReflection::Node::node_as_PrimitiveIDAttr(a1);
          v16 = "AirReflection.PrimitiveIDAttr";
          v17 = c;
          v18 = 29;
          return CC_SHA256_Update(v17, v16, v18);
        case 540679:
          v79 = AirReflection::Node::node_as_RenderTargetAttr(a1);
          return AirReflection::RenderTargetAttr::HashImpl(v79, c);
        case 540680:
          AirReflection::Node::node_as_RenderTargetArrayIndexAttr(a1);
          v16 = "AirReflection.RenderTargetArrayIndexAttr";
          v17 = c;
          v18 = 40;
          return CC_SHA256_Update(v17, v16, v18);
        case 540681:
          AirReflection::Node::node_as_ViewportArrayIndexAttr(a1);
          v16 = "AirReflection.ViewportArrayIndexAttr";
          v17 = c;
          v18 = 36;
          return CC_SHA256_Update(v17, v16, v18);
        case 540682:
          v81 = AirReflection::Node::node_as_UserAttr(a1);
          return AirReflection::UserAttr::HashImpl(v81, c);
        case 540683:
          AirReflection::Node::node_as_InvariantAttr(a1);
          v16 = "AirReflection.InvariantAttr";
LABEL_186:
          v17 = c;
          v18 = 27;
          break;
        case 540684:
          AirReflection::Node::node_as_SharedAttr(a1);
          v16 = "AirReflection.SharedAttr";
          v17 = c;
          v18 = 24;
          return CC_SHA256_Update(v17, v16, v18);
        default:
          goto LABEL_195;
      }

      return CC_SHA256_Update(v17, v16, v18);
    }

    if (v8 <= 544770)
    {
      if (v8 == 544768)
      {
        v78 = AirReflection::Node::node_as_MeshEmulationValueGroup(a1);
        return AirReflection::MeshEmulation::ValueGroup::HashImpl(v78, c);
      }

      else if (v8 == 544769)
      {
        v74 = AirReflection::Node::node_as_MeshEmulationBlock(a1);
        return AirReflection::MeshEmulation::Block::HashImpl(v74, c);
      }

      else
      {
        v33 = AirReflection::Node::node_as_MeshEmulationMeshLayout(a1);
        return AirReflection::MeshEmulation::MeshLayout::HashImpl(v33, c);
      }
    }

    if (v8 <= 544772)
    {
      if (v8 == 544771)
      {
        v76 = AirReflection::Node::node_as_MeshEmulationMeshKernel(a1);
        return AirReflection::MeshEmulation::MeshKernel::HashImpl(v76, c);
      }

      else
      {
        v25 = AirReflection::Node::node_as_MeshEmulationMeshVertex(a1);
        return AirReflection::MeshEmulation::MeshVertex::HashImpl(v25, c);
      }
    }

    if (v8 == 544773)
    {
      v77 = AirReflection::Node::node_as_MeshEmulationObjectKernel(a1);
      return AirReflection::MeshEmulation::ObjectKernel::HashImpl(v77, c);
    }

    if (v8 == 544774)
    {
      v45 = AirReflection::Node::node_as_MeshEmulationFragmentAnalysisResult(a1);
      return AirReflection::MeshEmulation::FragmentAnalysisResult::HashImpl(v45, c);
    }

LABEL_195:
    v257 = 0;
    v16 = &v257;
    v17 = c;
    v18 = 4;
    return CC_SHA256_Update(v17, v16, v18);
  }

  if (v8 < 266240)
  {
    if (v8 <= 139265)
    {
      if (v8 > 4101)
      {
        if (v8 >= 135168)
        {
          if (v8 <= 135170)
          {
            if (v8 == 135168)
            {
              v119 = AirReflection::Node::node_as_RenderTargetRet(a1);
              return AirReflection::RenderTargetRet::HashImpl(v119, c);
            }

            else if (v8 == 135169)
            {
              v131 = AirReflection::Node::node_as_DepthRet(a1);
              return AirReflection::DepthRet::HashImpl(v131, c);
            }

            else
            {
              v38 = AirReflection::Node::node_as_StencilRet(a1);
              return AirReflection::StencilRet::HashImpl(v38, c);
            }
          }

          if (v8 >= 139264)
          {
            if (v8 == 139264)
            {
              v115 = AirReflection::Node::node_as_AcceptIntersectionRet(a1);
              return AirReflection::AcceptIntersectionRet::HashImpl(v115, c);
            }

            else
            {
              v49 = AirReflection::Node::node_as_ContinueSearchRet(a1);
              return AirReflection::ContinueSearchRet::HashImpl(v49, c);
            }
          }

          if (v8 == 135171)
          {
            v111 = AirReflection::Node::node_as_SampleMaskRet(a1);
            return AirReflection::SampleMaskRet::HashImpl(v111, c);
          }

          if (v8 == 135172)
          {
            v27 = AirReflection::Node::node_as_ImageblockDataRet(a1);
            return AirReflection::ImageblockDataRet::HashImpl(v27, c);
          }
        }

        else if (v8 <= 131073)
        {
          switch(v8)
          {
            case 4102:
              v117 = AirReflection::Node::node_as_UserAnnotationFnAttr(a1);
              return AirReflection::UserAnnotationFnAttr::HashImpl(v117, c);
            case 131072:
              v129 = AirReflection::Node::node_as_ClipDistanceRet(a1);
              return AirReflection::ClipDistanceRet::HashImpl(v129, c);
            case 131073:
              v36 = AirReflection::Node::node_as_PointSizeRet(a1);
              return AirReflection::PointSizeRet::HashImpl(v36, c);
          }
        }

        else
        {
          if (v8 <= 131075)
          {
            if (v8 == 131074)
            {
              v109 = AirReflection::Node::node_as_PositionRet(a1);
              return AirReflection::PositionRet::HashImpl(v109, c);
            }

            else
            {
              v21 = AirReflection::Node::node_as_RenderTargetArrayIndexRet(a1);
              return AirReflection::RenderTargetArrayIndexRet::HashImpl(v21, c);
            }
          }

          if (v8 == 131076)
          {
            v113 = AirReflection::Node::node_as_VertexOutputRet(a1);
            return AirReflection::VertexOutputRet::HashImpl(v113, c);
          }

          if (v8 == 131077)
          {
            v47 = AirReflection::Node::node_as_ViewportArrayIndexRet(a1);
            return AirReflection::ViewportArrayIndexRet::HashImpl(v47, c);
          }
        }
      }

      else if (v8 > 7)
      {
        if (v8 > 4097)
        {
          if (v8 > 4099)
          {
            if (v8 == 4100)
            {
              v114 = AirReflection::Node::node_as_PatchFnAttr(a1);
              return AirReflection::PatchFnAttr::HashImpl(v114, c);
            }

            else
            {
              v48 = AirReflection::Node::node_as_MaxMeshWorkgroupsFnAttr(a1);
              return AirReflection::MaxMeshWorkgroupsFnAttr::HashImpl(v48, c);
            }
          }

          else if (v8 == 4098)
          {
            v110 = AirReflection::Node::node_as_WorkgroupSizeHintFnAttr(a1);
            return AirReflection::WorkgroupSizeHintFnAttr::HashImpl(v110, c);
          }

          else
          {
            v26 = AirReflection::Node::node_as_WorkgroupMaxSizeFnAttr(a1);
            return AirReflection::WorkgroupMaxSizeFnAttr::HashImpl(v26, c);
          }
        }

        switch(v8)
        {
          case 8:
            v118 = AirReflection::Node::node_as_CIFunction(a1);
            return AirReflection::CIFunction::HashImpl(v118, c);
          case 4096:
            v130 = AirReflection::Node::node_as_VecTypeHintFnAttr(a1);
            return AirReflection::VecTypeHintFnAttr::HashImpl(v130, c);
          case 4097:
            v37 = AirReflection::Node::node_as_WorkgroupSizeFnAttr(a1);
            return AirReflection::WorkgroupSizeFnAttr::HashImpl(v37, c);
        }
      }

      else
      {
        if (v8 > 3)
        {
          if (v8 > 5)
          {
            if (v8 == 6)
            {
              v112 = AirReflection::Node::node_as_MeshFunction(a1);
              return AirReflection::MeshFunction::HashImpl(v112, c);
            }

            else
            {
              v46 = AirReflection::Node::node_as_ObjectFunction(a1);
              return AirReflection::ObjectFunction::HashImpl(v46, c);
            }
          }

          else if (v8 == 4)
          {
            v108 = AirReflection::Node::node_as_VisibleFunction(a1);
            return AirReflection::VisibleFunction::HashImpl(v108, c);
          }

          else
          {
            v15 = AirReflection::Node::node_as_IntersectionFunction(a1);
            return AirReflection::IntersectionFunction::HashImpl(v15, c);
          }
        }

        switch(v8)
        {
          case 1:
            v116 = AirReflection::Node::node_as_FragmentFunction(a1);
            return AirReflection::FragmentFunction::HashImpl(v116, c);
          case 2:
            v128 = AirReflection::Node::node_as_KernelFunction(a1);
            return AirReflection::KernelFunction::HashImpl(v128, c);
          case 3:
            v35 = AirReflection::Node::node_as_VertexFunction(a1);
            return AirReflection::VertexFunction::HashImpl(v35, c);
        }
      }
    }

    else
    {
      if (v8 > 147460)
      {
        switch(v8)
        {
          case 262144:
            v12 = AirReflection::Node::node_as_BufferArg(a1);
            result = AirReflection::BufferArg::HashImpl(v12, c);
            break;
          case 262145:
            v250 = AirReflection::Node::node_as_SamplerArg(a1);
            result = AirReflection::SamplerArg::HashImpl(v250, c);
            break;
          case 262146:
            v246 = AirReflection::Node::node_as_TextureArg(a1);
            result = AirReflection::TextureArg::HashImpl(v246, c);
            break;
          case 262147:
            v248 = AirReflection::Node::node_as_ConstantArg(a1);
            result = AirReflection::ConstantArg::HashImpl(v248, c);
            break;
          case 262148:
            v243 = AirReflection::Node::node_as_IndirectBufferArg(a1);
            result = AirReflection::IndirectBufferArg::HashImpl(v243, c);
            break;
          case 262149:
            v251 = AirReflection::Node::node_as_IndirectConstantArg(a1);
            result = AirReflection::IndirectConstantArg::HashImpl(v251, c);
            break;
          case 262150:
            v253 = AirReflection::Node::node_as_CommandBufferArg(a1);
            result = AirReflection::CommandBufferArg::HashImpl(v253, c);
            break;
          case 262151:
            v249 = AirReflection::Node::node_as_ComputePipelineStateArg(a1);
            result = AirReflection::ComputePipelineStateArg::HashImpl(v249, c);
            break;
          case 262152:
            v255 = AirReflection::Node::node_as_RenderPipelineStateArg(a1);
            result = AirReflection::RenderPipelineStateArg::HashImpl(v255, c);
            break;
          case 262153:
            v245 = AirReflection::Node::node_as_VisibleFunctionTableArg(a1);
            result = AirReflection::VisibleFunctionTableArg::HashImpl(v245, c);
            break;
          case 262154:
            v254 = AirReflection::Node::node_as_IntersectionFunctionTableArg(a1);
            result = AirReflection::IntersectionFunctionTableArg::HashImpl(v254, c);
            break;
          case 262155:
            v241 = AirReflection::Node::node_as_InstanceAccelerationStructureArg(a1);
            result = AirReflection::InstanceAccelerationStructureArg::HashImpl(v241, c);
            break;
          case 262156:
            v244 = AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(a1);
            result = AirReflection::PrimitiveAccelerationStructureArg::HashImpl(v244, c);
            break;
          case 262157:
            v252 = AirReflection::Node::node_as_BufferStrideArg(a1);
            result = AirReflection::BufferStrideArg::HashImpl(v252, c);
            break;
          case 262158:
            v240 = AirReflection::Node::node_as_DepthStencilStateArg(a1);
            result = AirReflection::DepthStencilStateArg::HashImpl(v240, c);
            break;
          case 262159:
            v247 = AirReflection::Node::node_as_FunctionHandleArg(a1);
            result = AirReflection::FunctionHandleArg::HashImpl(v247, c);
            break;
          case 262160:
            v239 = AirReflection::Node::node_as_TensorArg(a1);
            result = AirReflection::TensorArg::HashImpl(v239, c);
            break;
          default:
            if (v8 == 147461)
            {
              v242 = AirReflection::Node::node_as_CISamplerRet(a1);
              result = AirReflection::CISamplerRet::HashImpl(v242, c);
            }

            else
            {
              if (v8 != 147462)
              {
                goto LABEL_195;
              }

              v52 = AirReflection::Node::node_as_CIImageblockRet(a1);
              result = AirReflection::CIImageblockRet::HashImpl(v52, c);
            }

            break;
        }

        return result;
      }

      if (v8 >= 147456)
      {
        if (v8 <= 147457)
        {
          if (v8 == 147456)
          {
            v58 = AirReflection::Node::node_as_CIPointerRet(a1);
            return AirReflection::CIPointerRet::HashImpl(v58, c);
          }

          else
          {
            v40 = AirReflection::Node::node_as_CIStructRet(a1);
            return AirReflection::CIStructRet::HashImpl(v40, c);
          }
        }

        else if (v8 == 147458)
        {
          v54 = AirReflection::Node::node_as_CITextureRet(a1);
          return AirReflection::CITextureRet::HashImpl(v54, c);
        }

        else if (v8 == 147459)
        {
          v56 = AirReflection::Node::node_as_CIBuiltinRet(a1);
          return AirReflection::CIBuiltinRet::HashImpl(v56, c);
        }

        else
        {
          v28 = AirReflection::Node::node_as_CIMatrixRet(a1);
          return AirReflection::CIMatrixRet::HashImpl(v28, c);
        }
      }

      if (v8 <= 143360)
      {
        if (v8 == 139266)
        {
          v57 = AirReflection::Node::node_as_DistanceRet(a1);
          return AirReflection::DistanceRet::HashImpl(v57, c);
        }

        if (v8 == 143360)
        {
          v39 = AirReflection::Node::node_as_MeshPrimitiveDataRet(a1);
          return AirReflection::MeshPrimitiveDataRet::HashImpl(v39, c);
        }
      }

      else
      {
        switch(v8)
        {
          case 143361:
            v53 = AirReflection::Node::node_as_MeshVertexDataRet(a1);
            return AirReflection::MeshVertexDataRet::HashImpl(v53, c);
          case 143362:
            v55 = AirReflection::Node::node_as_PrimitiveCulledRet(a1);
            return AirReflection::PrimitiveCulledRet::HashImpl(v55, c);
          case 143363:
            v23 = AirReflection::Node::node_as_PrimitiveIDRet(a1);
            return AirReflection::PrimitiveIDRet::HashImpl(v23, c);
        }
      }
    }

    goto LABEL_195;
  }

  if (v8 > 274434)
  {
    if (v8 > 278530)
    {
      switch(v8)
      {
        case 282624:
          v9 = AirReflection::Node::node_as_PayloadArg(a1);
          result = AirReflection::PayloadArg::HashImpl(v9, c);
          break;
        case 282625:
          v225 = AirReflection::Node::node_as_OriginArg(a1);
          result = AirReflection::OriginArg::HashImpl(v225, c);
          break;
        case 282626:
          v221 = AirReflection::Node::node_as_DirectionArg(a1);
          result = AirReflection::DirectionArg::HashImpl(v221, c);
          break;
        case 282627:
          v223 = AirReflection::Node::node_as_MinDistanceArg(a1);
          result = AirReflection::MinDistanceArg::HashImpl(v223, c);
          break;
        case 282628:
          v217 = AirReflection::Node::node_as_MaxDistanceArg(a1);
          result = AirReflection::MaxDistanceArg::HashImpl(v217, c);
          break;
        case 282629:
          v228 = AirReflection::Node::node_as_DistanceArg(a1);
          result = AirReflection::DistanceArg::HashImpl(v228, c);
          break;
        case 282630:
          v231 = AirReflection::Node::node_as_WorldSpaceOriginArg(a1);
          result = AirReflection::WorldSpaceOriginArg::HashImpl(v231, c);
          break;
        case 282631:
          v224 = AirReflection::Node::node_as_WorldSpaceDirectionArg(a1);
          result = AirReflection::WorldSpaceDirectionArg::HashImpl(v224, c);
          break;
        case 282632:
          v234 = AirReflection::Node::node_as_GeometryIDArg(a1);
          result = AirReflection::GeometryIDArg::HashImpl(v234, c);
          break;
        case 282633:
          v219 = AirReflection::Node::node_as_UserInstanceIDArg(a1);
          result = AirReflection::UserInstanceIDArg::HashImpl(v219, c);
          break;
        case 282634:
          v233 = AirReflection::Node::node_as_GeometryIntersectionFunctionTableOffsetArg(a1);
          result = AirReflection::GeometryIntersectionFunctionTableOffsetArg::HashImpl(v233, c);
          break;
        case 282635:
          v216 = AirReflection::Node::node_as_InstanceIntersectionFunctionTableOffsetArg(a1);
          result = AirReflection::InstanceIntersectionFunctionTableOffsetArg::HashImpl(v216, c);
          break;
        case 282636:
          v218 = AirReflection::Node::node_as_OpaquePrimitiveArg(a1);
          result = AirReflection::OpaquePrimitiveArg::HashImpl(v218, c);
          break;
        case 282637:
          v230 = AirReflection::Node::node_as_ObjectToWorldTransformArg(a1);
          result = AirReflection::ObjectToWorldTransformArg::HashImpl(v230, c);
          break;
        case 282638:
          v215 = AirReflection::Node::node_as_WorldToObjectTransformArg(a1);
          result = AirReflection::WorldToObjectTransformArg::HashImpl(v215, c);
          break;
        case 282639:
          v222 = AirReflection::Node::node_as_TimeArg(a1);
          result = AirReflection::TimeArg::HashImpl(v222, c);
          break;
        case 282640:
          v214 = AirReflection::Node::node_as_KeyFrameCountArg(a1);
          result = AirReflection::KeyFrameCountArg::HashImpl(v214, c);
          break;
        case 282641:
          started = AirReflection::Node::node_as_MotionStartTimeArg(a1);
          result = AirReflection::MotionStartTimeArg::HashImpl(started, c);
          break;
        case 282642:
          v232 = AirReflection::Node::node_as_MotionEndTimeArg(a1);
          result = AirReflection::MotionEndTimeArg::HashImpl(v232, c);
          break;
        case 282643:
          v237 = AirReflection::Node::node_as_PrimitiveDataArg(a1);
          result = AirReflection::PrimitiveDataArg::HashImpl(v237, c);
          break;
        case 282644:
          v227 = AirReflection::Node::node_as_InstanceIDCountArg(a1);
          result = AirReflection::InstanceIDCountArg::HashImpl(v227, c);
          break;
        case 282645:
          v229 = AirReflection::Node::node_as_UserInstanceIDCountArg(a1);
          result = AirReflection::UserInstanceIDCountArg::HashImpl(v229, c);
          break;
        case 282646:
          v236 = AirReflection::Node::node_as_CurveParameterArg(a1);
          result = AirReflection::CurveParameterArg::HashImpl(v236, c);
          break;
        case 282647:
          v238 = AirReflection::Node::node_as_FunctionIDArg(a1);
          result = AirReflection::FunctionIDArg::HashImpl(v238, c);
          break;
        case 282648:
          v220 = AirReflection::Node::node_as_UserDataBufferArg(a1);
          result = AirReflection::UserDataBufferArg::HashImpl(v220, c);
          break;
        default:
          if (v8 == 278531)
          {
            v235 = AirReflection::Node::node_as_ImageblockArg(a1);
            result = AirReflection::ImageblockArg::HashImpl(v235, c);
          }

          else
          {
            if (v8 != 278532)
            {
              goto LABEL_195;
            }

            v51 = AirReflection::Node::node_as_ImageblockDataArg(a1);
            result = AirReflection::ImageblockDataArg::HashImpl(v51, c);
          }

          break;
      }

      return result;
    }

    if (v8 <= 274439)
    {
      if (v8 <= 274436)
      {
        if (v8 == 274435)
        {
          v65 = AirReflection::Node::node_as_PointCoordArg(a1);
          return AirReflection::PointCoordArg::HashImpl(v65, c);
        }

        else
        {
          v41 = AirReflection::Node::node_as_RenderTargetArg(a1);
          return AirReflection::RenderTargetArg::HashImpl(v41, c);
        }
      }

      else if (v8 == 274437)
      {
        v59 = AirReflection::Node::node_as_RenderTargetArrayIndexArg(a1);
        return AirReflection::RenderTargetArrayIndexArg::HashImpl(v59, c);
      }

      else if (v8 == 274438)
      {
        v62 = AirReflection::Node::node_as_SampleIDArg(a1);
        return AirReflection::SampleIDArg::HashImpl(v62, c);
      }

      else
      {
        v29 = AirReflection::Node::node_as_SampleMaskArg(a1);
        return AirReflection::SampleMaskArg::HashImpl(v29, c);
      }
    }

    if (v8 >= 278528)
    {
      if (v8 == 278528)
      {
        v61 = AirReflection::Node::node_as_PixelPositionInTileArg(a1);
        return AirReflection::PixelPositionInTileArg::HashImpl(v61, c);
      }

      else if (v8 == 278529)
      {
        v64 = AirReflection::Node::node_as_PixelsPerTileArg(a1);
        return AirReflection::PixelsPerTileArg::HashImpl(v64, c);
      }

      else
      {
        v32 = AirReflection::Node::node_as_TileIndexArg(a1);
        return AirReflection::TileIndexArg::HashImpl(v32, c);
      }
    }

    switch(v8)
    {
      case 274440:
        v60 = AirReflection::Node::node_as_ViewportArrayIndexArg(a1);
        return AirReflection::ViewportArrayIndexArg::HashImpl(v60, c);
      case 274445:
        v63 = AirReflection::Node::node_as_BarycentricCoordArg(a1);
        return AirReflection::BarycentricCoordArg::HashImpl(v63, c);
      case 274446:
        v22 = AirReflection::Node::node_as_PrimitiveIDArg(a1);
        return AirReflection::PrimitiveIDArg::HashImpl(v22, c);
    }

    goto LABEL_195;
  }

  if (v8 >= 270336)
  {
    if (v8 >= 274432)
    {
      if (v8 == 274432)
      {
        v104 = AirReflection::Node::node_as_FragmentInputArg(a1);
        return AirReflection::FragmentInputArg::HashImpl(v104, c);
      }

      else if (v8 == 274433)
      {
        v100 = AirReflection::Node::node_as_FrontFacingArg(a1);
        return AirReflection::FrontFacingArg::HashImpl(v100, c);
      }

      else
      {
        v34 = AirReflection::Node::node_as_PositionArg(a1);
        return AirReflection::PositionArg::HashImpl(v34, c);
      }
    }

    else
    {
      switch(v8)
      {
        case 270336:
          v20 = AirReflection::Node::node_as_BaseInstanceArg(a1);
          result = AirReflection::BaseInstanceArg::HashImpl(v20, c);
          break;
        case 270337:
          v87 = AirReflection::Node::node_as_BaseVertexArg(a1);
          result = AirReflection::BaseVertexArg::HashImpl(v87, c);
          break;
        case 270338:
          v86 = AirReflection::Node::node_as_InstanceIDArg(a1);
          result = AirReflection::InstanceIDArg::HashImpl(v86, c);
          break;
        case 270339:
          v89 = AirReflection::Node::node_as_VertexIDArg(a1);
          result = AirReflection::VertexIDArg::HashImpl(v89, c);
          break;
        case 270340:
          v92 = AirReflection::Node::node_as_VertexInputArg(a1);
          result = AirReflection::VertexInputArg::HashImpl(v92, c);
          break;
        case 270341:
          v90 = AirReflection::Node::node_as_ControlPointIndexBufferArg(a1);
          result = AirReflection::ControlPointIndexBufferArg::HashImpl(v90, c);
          break;
        case 270342:
          v88 = AirReflection::Node::node_as_PatchIDArg(a1);
          result = AirReflection::PatchIDArg::HashImpl(v88, c);
          break;
        case 270343:
          v94 = AirReflection::Node::node_as_PositionInPatchArg(a1);
          result = AirReflection::PositionInPatchArg::HashImpl(v94, c);
          break;
        case 270344:
          v84 = AirReflection::Node::node_as_PatchInputArg(a1);
          result = AirReflection::PatchInputArg::HashImpl(v84, c);
          break;
        case 270345:
          v85 = AirReflection::Node::node_as_ControlPointInputArg(a1);
          result = AirReflection::ControlPointInputArg::HashImpl(v85, c);
          break;
        case 270346:
          v83 = AirReflection::Node::node_as_ControlPointField(a1);
          result = AirReflection::ControlPointField::HashImpl(v83, c);
          break;
        case 270350:
          v93 = AirReflection::Node::node_as_AmplificationCountArg(a1);
          result = AirReflection::AmplificationCountArg::HashImpl(v93, c);
          break;
        case 270351:
          v91 = AirReflection::Node::node_as_AmplificationIDArg(a1);
          result = AirReflection::AmplificationIDArg::HashImpl(v91, c);
          break;
        default:
          goto LABEL_195;
      }
    }
  }

  else
  {
    switch(v8)
    {
      case 266240:
        v14 = AirReflection::Node::node_as_ThreadPositionInGridArg(a1);
        result = AirReflection::ThreadPositionInGridArg::HashImpl(v14, c);
        break;
      case 266241:
        v107 = AirReflection::Node::node_as_ThreadsPerGridArg(a1);
        result = AirReflection::ThreadsPerGridArg::HashImpl(v107, c);
        break;
      case 266242:
        v102 = AirReflection::Node::node_as_ThreadgroupPositionInGridArg(a1);
        result = AirReflection::ThreadgroupPositionInGridArg::HashImpl(v102, c);
        break;
      case 266243:
        v105 = AirReflection::Node::node_as_ThreadgroupsPerGridArg(a1);
        result = AirReflection::ThreadgroupsPerGridArg::HashImpl(v105, c);
        break;
      case 266244:
        v98 = AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(a1);
        result = AirReflection::ThreadPositionInThreadgroupArg::HashImpl(v98, c);
        break;
      case 266245:
        v122 = AirReflection::Node::node_as_ThreadsPerThreadgroupArg(a1);
        result = AirReflection::ThreadsPerThreadgroupArg::HashImpl(v122, c);
        break;
      case 266246:
        v124 = AirReflection::Node::node_as_DispatchThreadsPerThreadgroupArg(a1);
        result = AirReflection::DispatchThreadsPerThreadgroupArg::HashImpl(v124, c);
        break;
      case 266247:
        v106 = AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(a1);
        result = AirReflection::ThreadIndexInThreadgroupArg::HashImpl(v106, c);
        break;
      case 266248:
        v127 = AirReflection::Node::node_as_ThreadExecutionWidthArg(a1);
        result = AirReflection::ThreadExecutionWidthArg::HashImpl(v127, c);
        break;
      case 266249:
        v101 = AirReflection::Node::node_as_StageInArg(a1);
        result = AirReflection::StageInArg::HashImpl(v101, c);
        break;
      case 266250:
        v126 = AirReflection::Node::node_as_StageInGridOriginArg(a1);
        result = AirReflection::StageInGridOriginArg::HashImpl(v126, c);
        break;
      case 266251:
        v97 = AirReflection::Node::node_as_StageInGridSizeArg(a1);
        result = AirReflection::StageInGridSizeArg::HashImpl(v97, c);
        break;
      case 266252:
        v99 = AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(a1);
        result = AirReflection::ThreadIndexInSimdgroupArg::HashImpl(v99, c);
        break;
      case 266253:
        v123 = AirReflection::Node::node_as_ThreadsPerSimdgroupArg(a1);
        result = AirReflection::ThreadsPerSimdgroupArg::HashImpl(v123, c);
        break;
      case 266254:
        v96 = AirReflection::Node::node_as_SimdgroupIndexInThreadgroupArg(a1);
        result = AirReflection::SimdgroupIndexInThreadgroupArg::HashImpl(v96, c);
        break;
      case 266255:
        v103 = AirReflection::Node::node_as_SimdgroupsPerThreadgroupArg(a1);
        result = AirReflection::SimdgroupsPerThreadgroupArg::HashImpl(v103, c);
        break;
      case 266256:
        v95 = AirReflection::Node::node_as_DispatchSimdgroupsPerThreadgroupArg(a1);
        result = AirReflection::DispatchSimdgroupsPerThreadgroupArg::HashImpl(v95, c);
        break;
      case 266257:
        v120 = AirReflection::Node::node_as_ThreadIndexInQuadgroupArg(a1);
        result = AirReflection::ThreadIndexInQuadgroupArg::HashImpl(v120, c);
        break;
      case 266258:
        v125 = AirReflection::Node::node_as_QuadgroupIndexInThreadgroupArg(a1);
        result = AirReflection::QuadgroupIndexInThreadgroupArg::HashImpl(v125, c);
        break;
      case 266259:
        v132 = AirReflection::Node::node_as_QuadgroupsPerThreadgroupArg(a1);
        result = AirReflection::QuadgroupsPerThreadgroupArg::HashImpl(v132, c);
        break;
      case 266260:
        v121 = AirReflection::Node::node_as_DispatchQuadgroupsPerThreadgroupArg(a1);
        result = AirReflection::DispatchQuadgroupsPerThreadgroupArg::HashImpl(v121, c);
        break;
      default:
        goto LABEL_195;
    }
  }

  return result;
}

uint64_t std::unique_ptr<llvm::Module>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x21604BFC0]();

    JUMPOUT(0x21604C990);
  }

  return result;
}

void llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1;
    *a1 = 0;
    v7 = v3;
    v4 = llvm::errorToErrorCodeAndEmitErrors();
    *(a2 + 16) |= 1u;
    *a2 = v4;
    *(a2 + 8) = v5;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  else
  {
    *(a2 + 16) &= ~1u;
    v6 = *a1;
    *a1 = 0;
    *a2 = v6;
  }
}

void sub_213BD2E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    MTLCompilerObject::readModuleFromBinaryRequest(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AirReflection::FragmentFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FragmentFunction", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 < 0xBu)
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    v24 = v23[5];
    if (v24)
    {
      LOBYTE(v24) = *(a1 + v24) != 0;
    }
  }

  LOBYTE(data) = v24;
  CC_SHA256_Update(c, &data, 1u);
  v25 = (a1 - *a1);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = v26;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v27);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_FragmentFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderTargetRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LODWORD(v16) = *(a1 + v16);
    }
  }

  data = v16;
  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  return CC_SHA256_Update(v30, v28, v29);
}

uint64_t AirReflection::Node::node_as_RenderTargetRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 135168)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::PositionArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PositionArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  v6 = 1;
  CC_SHA256_Update(c, &data, 1u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u)
  {
    v8 = v7[3];
    if (v8)
    {
      v6 = *(a1 + v8);
    }
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(a1 + v10);
  }

  else
  {
    v11 = 3;
  }

  data = v11;
  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_PositionArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274434) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_FragmentInputArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 274432)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::FragmentInputArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FragmentInputArg", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    p_data = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, p_data, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v16 = (a1 - *a1);
  if (*v16 < 0xBu)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = v16[5];
    if (v17)
    {
      LODWORD(v17) = *(a1 + v17);
    }
  }

  data = v17;
  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 < 0xDu)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[6];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = (a1 + v21);
    v23 = *v22;
    v24 = (v22 + v23 + 4);
    v25 = *(v22 + v23);
    v26 = c;
  }

  else
  {
    data = 0;
    v24 = &data;
    v26 = c;
    v25 = 4;
  }

  CC_SHA256_Update(v26, v24, v25);
  v27 = (a1 - *a1);
  if (*v27 >= 0x11u && (v28 = v27[8]) != 0)
  {
    v29 = (a1 + v28);
    v30 = *v29;
    v31 = (v29 + v30 + 4);
    v32 = *(v29 + v30);
    v33 = c;
  }

  else
  {
    data = 0;
    v31 = &data;
    v33 = c;
    v32 = 4;
  }

  CC_SHA256_Update(v33, v31, v32);
  v34 = (a1 - *a1);
  if (*v34 < 0x13u)
  {
    LOBYTE(v35) = 0;
  }

  else
  {
    v35 = v34[9];
    if (v35)
    {
      LOBYTE(v35) = *(a1 + v35) != 0;
    }
  }

  LOBYTE(data) = v35;
  return CC_SHA256_Update(c, &data, 1u);
}

void ScopedDiagnosticHandler::~ScopedDiagnosticHandler(ScopedDiagnosticHandler *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
}

unint64_t logCompileEnd(std::string::size_type a1, uint64_t a2, const std::string::value_type *a3, uint64_t *a4, const std::string::value_type *a5)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v10 = mach_absolute_time();
  v11 = *&gMachTimeToNS;
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_213C7E907);
  if (a5 && *a5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v27, " [FunctionName=");
    v12 = std::string::append(&v27, a5);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v31, "]");
    v15 = v14->__r_.__value_.__r.__words[0];
    v37[0] = v14->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v30 < 0)
    {
      operator delete(__p);
    }

    __p = v15;
    *v29 = v37[0];
    *&v29[7] = *(v37 + 7);
    v30 = v16;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v27, &unk_213C7E907);
  if (a3 && *a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, " - ");
    v17 = std::string::append(&v31, a3);
    v18 = v17->__r_.__value_.__r.__words[0];
    v37[0] = v17->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
    v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v27.__r_.__value_.__r.__words[0] = v18;
    v27.__r_.__value_.__l.__size_ = v37[0];
    *(&v27.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
    *(&v27.__r_.__value_.__s + 23) = v19;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  v20 = (v11 * (v10 - a2));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    p_p = &__p;
    if (v30 < 0)
    {
      p_p = __p;
    }

    if (*(a4 + 23) >= 0)
    {
      v23 = a4;
    }

    else
    {
      v23 = *a4;
    }

    v24 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v27.__r_.__value_.__r.__words[0];
    }

    LODWORD(v31.__r_.__value_.__l.__data_) = 136447234;
    *(v31.__r_.__value_.__r.__words + 4) = v21;
    WORD2(v31.__r_.__value_.__r.__words[1]) = 2080;
    *(&v31.__r_.__value_.__r.__words[1] + 6) = p_p;
    HIWORD(v31.__r_.__value_.__r.__words[2]) = 2082;
    v32 = v23;
    v33 = 2080;
    v34 = v24;
    v35 = 2048;
    v36 = v20 * 0.000001;
    _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation SUCCESS (ParentProcessName=%{public}s)%s (TYPE=%{public}s%s): Time %f ms ", &v31, 0x34u);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_213BD3BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return LLVMDisposeMemoryBuffer();
  }

  return result;
}

void *MTLCompilerObject::deserializePluginData(void *result, void *a2, uint64_t a3)
{
  v4 = result;
  v5 = a2[5];
  if (v5 > 4)
  {
    if ((v5 - 5) < 2)
    {
LABEL_26:

      return deserializePluginDataForFunctionType<MTLSerializedStatelessFunctionData>(a2, a3);
    }

    if ((v5 - 7) < 2)
    {
      v6 = a2[4];
      v7 = (*a2 + *(v6 + 24));
      if (*(v6 + 28) >= 0xCu)
      {
        v8 = *v7;
        if (v8)
        {
          result = MTLDeserializePluginDataDictionary(&v7[v8]);
          *(a3 + 112) = result;
        }

        v9 = *(v7 + 1);
        if (v9)
        {
          result = MTLDeserializePluginDataDictionary(&v7[v9]);
          *(a3 + 120) = result;
        }
      }

      v10 = *(v4 + 72);
      v11 = (v7[8] >> 3) & 1;
LABEL_35:
      *(v4 + 72) = v11 | v10;
      return result;
    }

LABEL_25:
    if ((*(a2[4] + 3) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    v16 = a2[4];
    v17 = (*a2 + *(v16 + 24));
    if (*(v16 + 28) >= 0xCu)
    {
      v18 = *v17;
      if (v18)
      {
        result = MTLDeserializePluginDataDictionary(&v17[v18]);
        *(a3 + 112) = result;
      }

      v19 = *(v17 + 1);
      if (v19)
      {
        result = MTLDeserializePluginDataDictionary(&v17[v19]);
        *(a3 + 120) = result;
      }
    }

    v10 = *(v4 + 72);
    v11 = (*(v17 + 2) >> 19) & 1;
    goto LABEL_35;
  }

  if (v5 == 2)
  {
    v20 = a2[4];
    v21 = (*a2 + *(v20 + 24));
    if (*(v20 + 28) >= 0x10u)
    {
      v22 = *v21;
      if (v22)
      {
        result = MTLDeserializePluginDataDictionary(&v21[v22]);
        *(a3 + 112) = result;
      }

      v23 = *(v21 + 1);
      if (v23)
      {
        result = MTLDeserializePluginDataDictionary(&v21[v23]);
        *(a3 + 120) = result;
      }
    }

    v10 = *(v4 + 72);
    v11 = (*(v21 + 2) >> 29) & 1;
    goto LABEL_35;
  }

  if (v5 != 3)
  {
    goto LABEL_25;
  }

  v12 = a2[4];
  v13 = (*a2 + *(v12 + 24));
  if (*(v12 + 28) >= 0xCu)
  {
    v14 = *v13;
    if (v14)
    {
      result = MTLDeserializePluginDataDictionary(&v13[v14]);
      *(a3 + 112) = result;
    }

    v15 = *(v13 + 1);
    if (v15)
    {
      result = MTLDeserializePluginDataDictionary(&v13[v15]);
      *(a3 + 120) = result;
    }
  }

  *(v4 + 72) |= (v13[8] & 8) != 0;
  *(v4 + 73) |= (v13[8] & 0x10) != 0;
  return result;
}

void MTLCompilerObject::runDebugInstrumentationPass(MTLCompilerObject *a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(a2[4] + 5) & 0x10) != 0 && [*(a3 + 112) objectForKeyedSubscript:@"MTLBoundsCheck::Options"])
  {
    v6 = mach_absolute_time();
    v7 = a2[5];
    if (v7 == 3)
    {
      v6 = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
      if (v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      *__p = 0u;
      v18 = 0u;
      *v16 = 0u;
      v19 = v20;
      memset(v20, 0, sizeof(v20));
      v21 = 0;
      MTLCompilerObject::getFragmentVaryingsInfo(a1, (*(a2[4] + 4) >> 3) & 1, (*a2 + *(a2[4] + 16)), *(a2[4] + 20), v16);
      if (MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(a1, a2, v16))
      {
        MTLCompilerObject::addPostVertexDumpingToModule(a1, a2);
        std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v19, v20[0]);
        if (__p[1])
        {
          *&v18 = __p[1];
          operator delete(__p[1]);
        }

        v6 = v16[0];
        if (v16[0])
        {
          v16[1] = v16[0];
          operator delete(v16[0]);
        }

LABEL_23:
        MTLCompilerObject::addDebugInstrumentationToModule(v6, a2, a3);
      }

      std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v19, v20[0]);
      if (__p[1])
      {
        *&v18 = __p[1];
        operator delete(__p[1]);
      }

      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }
    }
  }

  else
  {
    v8 = a2[6];
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v10 = Function;
      v15[0] = *(Function + 8);
      v15[1] = 0;
      llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(v16, v15);
      v11 = v16[0];
      if (LODWORD(v16[1]))
      {
        v12 = 8 * LODWORD(v16[1]);
        do
        {
          v13 = *v11;
          if (*v11 && *(v13 + 16) == 84)
          {
            llvm::Instruction::eraseFromParent(v13);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
        v11 = v16[0];
      }

      if (v11 != __p)
      {
        free(v11);
      }

      if (!*(v10 + 1))
      {
        llvm::Function::eraseFromParent(v10);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_213BD4190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::generateReflection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 32) + 4);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (*(a2 + 40) == 1)
  {
    v17 = (a1 + 64);
    v18 = 0;
    MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(&v17, *(a2 + 48), -1, 1, &v20, v19, (v4 >> 10) & 1);
    v4 = *(*(a2 + 32) + 4);
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  v17 = (a1 + 64);
  v18 = 0;
  ReflectionData = MTLGenerateReflectionDataPass::generateReflectionData(&v17, *(a2 + 48), v4, (a3 + 8), v7, v19, *(a3 + 128), *(a3 + 136), (a3 + 24));
  v9 = *a3;
  *a3 = ReflectionData;
  if (v9)
  {
    free(v9);
  }

  v17 = v19;
  std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](&v17);
  v10 = *(a2 + 32);
  if ((*(v10 + 4) & 2) == 0)
  {
    return 0;
  }

  if ((*(v10 + 2) & 0x80) != 0)
  {
    if (!*(a3 + 168) && (*(a1 + 72) & 1) == 0)
    {
      v12 = *(a2 + 48);
      v13 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 168), v13);
    }

    if (!*(a3 + 176) && (*(a1 + 72) & 1) == 0)
    {
      v14 = *(a2 + 48);
      v15 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 176), v15);
    }
  }

  MTLCompilerObject::patchReflection(a1, a2, a3);
  v16 = *(a3 + 8);
  CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v19, *a3);
  (*(*(a2 + 24) + 16))();
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v19);
  return 1;
}

void sub_213BD43A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(va);
  _Unwind_Resume(a1);
}

uint64_t readVersionMetadata(llvm::Module *a1, const char *a2, unsigned int a3, int a4, int a5)
{
  v8 = 1;
  v20 = 1;
  if (*a2)
  {
    v18 = a2;
    v8 = 3;
  }

  v19 = v8;
  NamedMetadata = llvm::Module::getNamedMetadata(a1, &v18);
  if (!NamedMetadata)
  {
    return (a5 + (a4 << 16));
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v11 = Operand - 8 * *(Operand + 8);
  v12 = *(*(v11 + 8 * a3) + 128);
  v13 = (v12 + 24);
  if (*(v12 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  v14 = *v13;
  v15 = *(*(v11 + 8 * (a3 + 1)) + 128);
  v16 = (v15 + 24);
  if (*(v15 + 32) >= 0x41u)
  {
    v16 = *v16;
  }

  return (*v16 + (v14 << 16));
}

uint64_t eliminateOtherEntryPoints(llvm::Module *this, const char *a2, MTLFunctionType *a3)
{
  v6 = 0;
  v21 = 0;
  do
  {
    v7 = entryPointsMetadata[v6];
    v24 = 257;
    if (*v7)
    {
      v23[0] = v7;
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    LOBYTE(v24) = v8;
    NamedMetadata = llvm::Module::getNamedMetadata(this, v23);
    if (NamedMetadata)
    {
      v10 = NamedMetadata;
      v11 = 0;
      v22 = 0;
      while (v11 < llvm::NamedMDNode::getNumOperands(v10))
      {
        Operand = llvm::NamedMDNode::getOperand(v10);
        v23[0] = llvm::Value::getName(*(*(Operand - 8 * *(Operand + 8)) + 128));
        v23[1] = v13;
        if (a2)
        {
          v14 = strlen(a2);
        }

        else
        {
          v14 = 0;
        }

        ++v11;
        if (!llvm::StringRef::compare(v23, a2, v14))
        {
          if (a3)
          {
            *a3 = entryPointsType[v6];
          }

          llvm::TrackingMDRef::reset(&v22, Operand);
          v21 = 1;
          break;
        }
      }

      v15 = entryPointsType[v6];
      v16 = v15 > 8;
      v17 = (1 << v15) & 0x18E;
      if (!v16 && v17 != 0)
      {
        llvm::NamedMDNode::eraseFromParent(v10);
        if (v22)
        {
          if (entryPointsMetadata[v6])
          {
            v19 = strlen(entryPointsMetadata[v6]);
          }

          llvm::Module::getOrInsertNamedMetadata();
          llvm::NamedMDNode::addOperand();
        }
      }

      llvm::TrackingMDRef::~TrackingMDRef(&v22);
    }

    ++v6;
  }

  while (v6 != 7);
  return v21 & 1;
}

void sub_213BD463C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  llvm::TrackingMDRef::~TrackingMDRef(va);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::runFrameworkPasses(uint64_t a1, uint64_t *a2, void *a3, llvm::LLVMContext *a4)
{
  v4 = a2[4];
  if ((*v4 & 0x80000000) == 0)
  {
    return 1;
  }

  v6 = a4;
  v10 = v4[1];
  if ((*v4 & 0x800000) != 0 || ((v10 & 2) != 0 ? (v11 = a3[17] == 0) : (v11 = 0), !v11))
  {
    if (!MTLCompilerObject::loadModule(a1, a2, a3, a4))
    {
      return 0;
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      v15 = a2[6];
      v16 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](a3 + 21, v16);
    }
  }

  if (v10 & 0x40000000) == 0 && (MTLCompilerObject::generateReflection(a1, a2, a3))
  {
    return 0;
  }

  MTLCompilerObject::deserializePluginData(a1, a2, a3);
  MTLCompilerObject::runDebugInstrumentationPass(a1, a2, a3);
  if ((v10 & 2) == 0 && !MTLCompilerObject::lowerModule(a1, a2, a3, v6))
  {
    return 0;
  }

  *v18 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = v22;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if ((MTLCompilerObject::runFWPassesForFunctionType(a1, a2, v12, v18) & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v13 = a2[6];
    v14 = MTLWriteAIRReflectionToMemoryBuffer();
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](a3 + 22, v14);
  }

  if (v10 & 0x40000000) != 0 && (MTLCompilerObject::generateReflection(a1, a2, a3))
  {
LABEL_18:
    v5 = 0;
  }

  else
  {
    MTLCompilerObject::patchReflection(a1, a2, a3);
    v5 = MTLCompilerObject::runLinkingPasses(a1, a2, a3, v18);
  }

  std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v21, v22[0]);
  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  return v5;
}

uint64_t MTLCompilerObject::invokeFunctionLoader(uint64_t a1, unsigned int *a2, unint64_t a3, llvm::LLVMContext *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76[1] = *MEMORY[0x277D85DE8];
  if (a6 && (v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a6 length:a7 freeWhenDone:0], (v15 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAC58], "propertyListWithData:options:format:error:", v14, 0, 0, 0), "objectForKeyedSubscript:", @"LinkerScript_module"), "UTF8String")) != 0))
  {
    LoaderScript = MTLCompilerObject::createLoaderScript(a1, v15, a8);
  }

  else
  {
    LoaderScript = 0;
  }

  v62 = 0;
  v63 = 0;
  v67 = a5;
  llvm::SmallVector<LLVMOpaqueModule *,1u>::SmallVector(&v74, &v67, 1);
  if (!MTLCompilerObject::readVisibleFunctions(a1, &v74, a4, a2[37], a2[36], a2, a3, a2, 0))
  {
    (*(a8 + 16))(a8, 2 * (*(a1 + 64) != 0), 0, 0);
    v33 = 0;
    goto LABEL_51;
  }

  if (a2[38])
  {
    v46 = a4;
    v47 = a1;
    v45 = a2;
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + a2[39] length:?];
    v64 = 0;
    v17 = MEMORY[0x277CCAAC8];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v17 unarchivedObjectOfClasses:objc_msgSend(v18 fromData:"setWithObjects:" error:{v19, v20, objc_opt_class(), 0), v16, &v64}];
    v44 = a8;
    v67 = v69;
    v68 = 0;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v58 objects:v73 count:16];
    if (v22)
    {
      v23 = *v59;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v59 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v58 + 1) + 8 * i);
          __s.__r_.__value_.__r.__words[0] = &__s.__r_.__value_.__r.__words[2];
          __s.__r_.__value_.__l.__size_ = 0;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v26 = [v21 objectForKeyedSubscript:v25];
          v27 = [v26 countByEnumeratingWithState:&v54 objects:v72 count:16];
          if (v27)
          {
            v28 = *v55;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v55 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&__s, [*(*(&v54 + 1) + 8 * j) UTF8String]);
              }

              v27 = [v26 countByEnumeratingWithState:&v54 objects:v72 count:16];
            }

            while (v27);
          }

          [v25 UTF8String];
          v30 = MTLFunctionGroupCreate();
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v67, v30);
          if (__s.__r_.__value_.__l.__data_ != &__s.__r_.__value_.__r.__words[2])
          {
            free(__s.__r_.__value_.__l.__data_);
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v58 objects:v73 count:16];
      }

      while (v22);
    }

    a1 = v47;
    v31 = *(v47 + 32);
    MTLGPUCompilerSetFunctionGroups();
    a8 = v44;
    a2 = v45;
    a4 = v46;
    if (v67 != v69)
    {
      free(v67);
    }
  }

  memset(&__s, 0, sizeof(__s));
  if (MTLCompilerObject::readVisibleFunctions(a1, &v74, a4, a2[41], a2[40], a2, a3, a2, &__s))
  {
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__s.__r_.__value_.__l.__size_)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_33;
      }
    }

    else if (*(&__s.__r_.__value_.__s + 23))
    {
      p_s = &__s;
LABEL_33:
      LoaderScript = MTLCompilerObject::createLoaderScript(a1, p_s, a8);
    }

    v67 = 0;
    v68 = 0;
    v69[0] = v70;
    v69[1] = 0x400000000;
    v70[4] = v71;
    v70[5] = 0;
    v71[0] = 0;
    v71[1] = 1;
    v52 = &v67;
    __p[0] = 0;
    llvm::SmallVector<char const*,1u>::SmallVector(&v64, v75, __p);
    v34 = v65;
    if (v65)
    {
      v35 = 0;
      do
      {
        std::to_string(&v49, v35);
        v36 = std::string::insert(&v49, 0, "linked-air-blob-");
        v37 = *&v36->__r_.__value_.__l.__data_;
        v51 = v36->__r_.__value_.__r.__words[2];
        *__p = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        *(v64 + v35) = llvm::StringSaver::save();
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        ++v35;
      }

      while (v34 != v35);
    }

    v38 = *a2;
    v39 = *(a1 + 32);
    MTLGPUCompilerSetLoadingMode();
    v40 = *(a1 + 32);
    Modules = MTLGPUCompilerLoadModules();
    if (LoaderScript)
    {
      LLVMDisposeMemoryBuffer();
    }

    if (Modules)
    {
      v33 = v63;
    }

    else
    {
      (*(a8 + 16))(a8, 2, 0, 0, v62);
      free(v62);
      v33 = 0;
    }

    if (v64 != &v66)
    {
      free(v64);
    }

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&v67);
    goto LABEL_49;
  }

  (*(a8 + 16))(a8, 2 * (*(a1 + 64) != 0), 0, 0);
  v33 = 0;
LABEL_49:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_51:
  if (v74 != v76)
  {
    free(v74);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_213BD4E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t *a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a55 != &a57)
  {
    free(a55);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&a58);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  v60 = *(v58 - 128);
  if (v60 != (v58 - 112))
  {
    free(v60);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(uint64_t a1)
{
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateSlabs(a1, *(a1 + 16), (*(a1 + 16) + 8 * *(a1 + 24)));
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateCustomSizedSlabs(a1);
  v2 = *(a1 + 64);
  if (v2 != (a1 + 80))
  {
    free(v2);
  }

  v3 = *(a1 + 16);
  if (v3 != (a1 + 32))
  {
    free(v3);
  }

  return a1;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateSlabs(uint64_t result, llvm **a2, llvm **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = ((v6 - *(v5 + 16)) >> 10) & 0x1FFFFFF;
      if (v7 >= 0x1E)
      {
        LOBYTE(v7) = 30;
      }

      v8 = *v4++;
      result = llvm::deallocate_buffer(v8, (4096 << v7));
      ++v6;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateCustomSizedSlabs(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    v2 = *(result + 64);
    v3 = v2 + 16 * v1;
    do
    {
      v4 = *v2;
      v5 = *(v2 + 8);
      v2 += 16;
      result = llvm::deallocate_buffer(v4, v5);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t llvm::StringRef::compare(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    v5 = memcmp(*a1, a2, a3);
    if (v5)
    {
      return (v5 >> 31) | 1u;
    }
  }

  if (v4 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void *llvm::TrackingMDRef::reset(void *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *v3 = a2;
  if (a2)
  {

    return llvm::MetadataTracking::track();
  }

  return result;
}

void llvm::TrackingMDRef::~TrackingMDRef(llvm::TrackingMDRef *this)
{
  if (*this)
  {
    llvm::MetadataTracking::untrack();
  }
}

uint64_t MTLCompilerObject::loadModule(uint64_t a1, void *a2, uint64_t a3, llvm::LLVMContext *a4)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v7 = a2[6];
  v8 = a2[4];
  if ((*(v8 + 3) & 4) != 0)
  {
    v7 = MTLCompilerObject::invokeFunctionLoader(a1, v8, a2[1], a4, v7, *(a3 + 128), *(a3 + 136), a2[3]);
    *a2[4] &= ~0x4000000u;
  }

  v4 = v7 != 0;
  if (!v7)
  {
    free(*(a3 + 128));
    *(a3 + 128) = 0;
  }

  a2[6] = v7;
  return v4;
}

uint64_t llvm::SmallVector<LLVMOpaqueModule *,1u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213BD5230(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 3) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 8 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 3);
  return result;
}

void *llvm::SmallVector<char const*,1u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  llvm::SmallVectorImpl<llvm::Instruction *>::assign(a1, a2, *a3);
  return a1;
}

void sub_213BD5314(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLCompilerObject::readVisibleFunctions(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t a8, std::string *a9)
{
  v23 = a1;
  v34 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    a1 = std::string::append(v12, "STRIP { ");
  }

  if (a5)
  {
    v13 = 0;
    v14 = (a6 + a4);
    v15 = a5;
    v16 = 1;
    v17 = a5;
    while (1)
    {
      v28 = 0;
      v29 = 0u;
      v30 = 0u;
      memset(v31, 0, 26);
      v32 = 0u;
      memset(v33, 0, sizeof(v33));
      MTLCompilerObject::getReadParametersFromRequest(a1, &v28, a6, a7, v14, a8);
      v27 = 0;
      v18 = MTLCompilerObject::readModuleFromBinaryRequest(v23, &v28, a3, &v27, 0, 0, 1);
      if (!v18)
      {
        break;
      }

      v19 = v18;
      if (v12)
      {
        std::string::append(a9, v31[1]);
        std::string::append(a9, " { } ");
      }

      a1 = llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(a2, v19);
      v13 = v16 >= v15;
      v14 += 14;
      ++v16;
      if (!--v17)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (v12)
    {
      std::string::append(v12, "}\n");
    }

    v13 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t llvm::SmallVectorImpl<llvm::Instruction *>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) < a2)
  {
    llvm::SmallVectorTemplateBase<llvm::Instruction *,true>::growAndAssign(a1);
  }

  v3 = *(a1 + 8);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) & 0x1FFFFFFFELL;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_213C7D090)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v5 += 2;
      v8 += 2;
    }

    while (v6 != v5);
  }

  v10 = a2 - v3;
  if (a2 > v3)
  {
    v11 = 0;
    v12 = vdupq_n_s64(v10 - 1);
    v13 = (*a1 + 8 * v3 + 8);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_213C7D090)));
      if (v14.i8[0])
      {
        *(v13 - 1) = a3;
      }

      if (v14.i8[4])
      {
        *v13 = a3;
      }

      v11 += 2;
      v13 += 2;
    }

    while (((v10 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
  }

  *(a1 + 8) = a2;
  return a1;
}

const char *rtLibPathInBundle(NSBundle *a1, NSString *a2)
{
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      rtLibPathInBundle();
    }

    return 0;
  }

  v4 = [(NSBundle *)a1 URLForResource:a2 withExtension:@"rtlib"];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      rtLibPathInBundle(a2, a1);
    }

    return 0;
  }

  result = [(NSURL *)v4 fileSystemRepresentation];
  if (!result || !*result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      rtLibPathInBundle(a2, a1);
    }

    return 0;
  }

  return result;
}

void *std::vector<char const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<MTLOpaqueObject *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, v10);
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

uint64_t MTLCompilerObject::invokeLowerModule(uint64_t a1, uint64_t a2, int a3, llvm::Module *a4, MTLFunctionType a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  if (*(a2 + 284))
  {
    v11 = *(a2 + 280);
    MTLGPUCompilerHandleSPIs();
    free(0);
  }

  if (a5 <= MTLFunctionTypeObject && ((1 << a5) & 0x186) != 0)
  {
    if ((*(a2 + 5) & 8) != 0)
    {
      MDNodeForFunctionType = getMDNodeForFunctionType(a4, a5);
      if (MDNodeForFunctionType)
      {
        v13 = *(*(MDNodeForFunctionType - *(MDNodeForFunctionType + 2)) + 128);
      }

      MTLGPUCompilerEnableDegenerateVertexAmplificationEmulation();
    }

    if (a5 == MTLFunctionTypeFragment && (*(a2 + 5) & 0x20) != 0)
    {
      v14 = getMDNodeForFunctionType(a4, MTLFunctionTypeFragment);
      v15 = (v14 - *(v14 + 2))[2];
      if (v15)
      {
        v16 = *(v15 + 8);
        if (v16)
        {
          v17 = v14;
          v18 = -8 * v16;
          while (1)
          {
            v19 = *(v15 + v18);
            v20 = *(v19 + 8);
            if (v20 >= 2)
            {
              v21 = *(v19 - 8 * v20 + 8);
              if (!*v21)
              {
                String = llvm::MDString::getString(v21);
                if (v23 == 29)
                {
                  v24 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
                  v25 = v24 && String[2] == 0x5F79617272615F74;
                  if (v25 && *(String + 21) == 0x7865646E695F7961)
                  {
LABEL_73:
                    v66 = *(*(v17 - *(v17 + 2)) + 128);
                    v67 = *(*(v19 - 8 * *(v19 + 8)) + 128);
                    v68 = (v67 + 24);
                    if (*(v67 + 32) >= 0x41u)
                    {
                      v68 = *v68;
                    }

                    v69 = *v68;
                    if (*(v66 + 18))
                    {
                      llvm::Function::BuildLazyArguments(v66);
                    }

                    llvm::Constant::getNullValue(*(*(v66 + 88) + 40 * v69), v23);
                    llvm::Value::replaceAllUsesWith();
                    v70 = *(v19 + 16);
                    if ((v70 & 4) != 0)
                    {
                      v71 = *(v70 & 0xFFFFFFFFFFFFFFF8);
                    }

                    llvm::MDString::get();
                    llvm::MDNode::replaceOperandWith();
                    goto LABEL_41;
                  }
                }
              }

              v27 = *(v19 + 8);
              if (v27 >= 4)
              {
                v28 = *(v19 - 8 * v27 + 24);
                if (!*v28)
                {
                  v29 = llvm::MDString::getString(v28);
                  if (v23 == 29)
                  {
                    break;
                  }
                }
              }
            }

LABEL_40:
            v18 += 8;
            if (!v18)
            {
              goto LABEL_41;
            }
          }

          v30 = bswap64(*v29);
          v31 = 0x6169722E72656E64;
          if (v30 == 0x6169722E72656E64)
          {
            v30 = bswap64(v29[1]);
            if (v30 == 0x65725F7461726765)
            {
              v30 = bswap64(v29[2]);
              v31 = 0x745F61727261795FLL;
              if (v30 == 0x745F61727261795FLL)
              {
                v30 = bswap64(*(v29 + 21));
                v31 = 0x61795F696E646578;
                if (v30 == 0x61795F696E646578)
                {
                  v32 = 0;
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v31 = 0x65725F7461726765;
            }
          }

          if (v30 < v31)
          {
            v32 = -1;
          }

          else
          {
            v32 = 1;
          }

LABEL_39:
          if (!v32)
          {
            goto LABEL_73;
          }

          goto LABEL_40;
        }
      }
    }
  }

LABEL_41:
  v33 = *(a2 + 4);
  MTLGPUCompilerEnableRaytracingEmulation();
  v34 = *(a2 + 4);
  MTLGPUCompilerSetRaytracingEmulationIndirectAccelerationStructures();
  v35 = *(a2 + 232);
  MTLGPUCompilerSetRaytracingEmulationMaxAccelerationStructureTraversalDepth();
  v36 = *(a2 + 4);
  MTLGPUCompilerEnable16BitTextureCoordinateEmulation();
  v37 = *(a2 + 4);
  MTLGPUCompilerEnableTLSEmulation();
  v38 = *(a2 + 4);
  MTLGPUCompilerEnableResourcePatchingInstrumentation();
  v39 = *(a2 + 4);
  MTLGPUCompilerEnableResourceUsageInstrumentation();
  v40 = *(a2 + 4);
  MTLGPUCompilerEnableExternallyInitializedVariableSupport();
  v41 = *(a2 + 4);
  MTLGPUCompilerEnableBFloatEmulation();
  MTLGPUCompilerEnableDoubleEmulation();
  if (a5 <= MTLFunctionTypeObject && ((1 << a5) & 0x18C) != 0)
  {
    if (*(a2 + 200))
    {
      v42 = (a2 + *(a2 + 196) + *(a2 + *(a2 + 196)));
      v43 = (v42 - *v42);
      if (*v43 >= 9u)
      {
        v44 = v43[4];
        if (v44)
        {
          v45 = *(v42 + v44);
          if (v45 == 4)
          {
            v56 = Air::PipelineScript::pipeline_as_mesh_render(v42);
            if (!v56)
            {
              goto LABEL_70;
            }

            if (a5 == MTLFunctionTypeMesh)
            {
              v60 = (v56 - *v56);
              if (*v60 < 0xDu)
              {
                goto LABEL_70;
              }

              v61 = v60[6];
              if (!v61)
              {
                goto LABEL_70;
              }

              v49 = (v56 + v61 + *(v56 + v61));
              v62 = (v49 - *v49);
              if (*v62 < 0x21u)
              {
                goto LABEL_70;
              }

              v51 = v62[16];
              if (!v51)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if (a5 != MTLFunctionTypeObject)
              {
                goto LABEL_70;
              }

              v57 = (v56 - *v56);
              if (*v57 < 0xBu)
              {
                goto LABEL_70;
              }

              v58 = v57[5];
              if (!v58)
              {
                goto LABEL_70;
              }

              v49 = (v56 + v58 + *(v56 + v58));
              v59 = (v49 - *v49);
              if (*v59 < 0x1Fu)
              {
                goto LABEL_70;
              }

              v51 = v59[15];
              if (!v51)
              {
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v45 == 3)
            {
              v46 = Air::PipelineScript::pipeline_as_tile_render(v42);
              if (!v46)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if (v45 != 2)
              {
                goto LABEL_70;
              }

              v46 = Air::PipelineScript::pipeline_as_compute(v42);
              if (!v46)
              {
                goto LABEL_70;
              }
            }

            v47 = (v46 - *v46);
            if (*v47 < 7u)
            {
              goto LABEL_70;
            }

            v48 = v47[3];
            if (!v48)
            {
              goto LABEL_70;
            }

            v49 = (v46 + v48 + *(v46 + v48));
            v50 = (v49 - *v49);
            if (*v50 < 0x19u)
            {
              goto LABEL_70;
            }

            v51 = v50[12];
            if (!v51)
            {
              goto LABEL_70;
            }
          }

          v52 = v49 + v51 + *(v49 + v51);
          if (*v52 >= 3u)
          {
            v53 = *(v52 + 4);
            v54 = *(v52 + 12);
            v55 = *(v52 + 20);
            MTLGPUCompilerSetRequiredThreadsPerThreadgroup();
          }
        }
      }
    }
  }

LABEL_70:
  v63 = *(a2 + 208);
  MTLGPUCompilerSetNativeArch();
  v64 = *(a1 + 32);
  if (!MTLGPUCompilerLowerModule())
  {
    (*(a6 + 16))(a6, 2, 0, 0, 0);
  }

  free(0);
  return 0;
}

uint64_t MTLCompilerObject::runFragmentPasses(uint64_t a1, void *a2)
{
  v2 = a2[4];
  if (!*(v2 + 28))
  {
    return 1;
  }

  v4 = *a2 + *(v2 + 24);
  v5 = ((*(v4 + 8) & 0x20000000) != 0) | *(a1 + 72);
  *(a1 + 72) = v5;
  v6 = (a1 + 64);
  v13 = (a1 + 64);
  v14 = v5;
  v7 = a2[6];
  v8 = 16;
  if (*(v4 + 8) < 0)
  {
    v8 = 24;
  }

  if (MTLCheckPixelFormatValidPass::checkPixelFormatValid(&v13, v7, v4, v4 + v8, 0, 0))
  {
    return 1;
  }

  v11 = a2[6];
  if (v11)
  {
    v12 = MEMORY[0x21604BFC0](v11, v9);
    MEMORY[0x21604C990](v12, 0x10B2C407FF26C1CLL);
  }

  a2[6] = 0;
  (*(a2[3] + 16))(a2[3], 2 * (*v6 != 0), 0, 0);
  return 0;
}

uint64_t MTLCompilerObject::runFWPassesForFunctionType(char **a1, uint64_t *a2, int a3, MTLCompilerObject::FragmentVaryingsInfo *a4)
{
  v5 = a2[5];
  if (v5 > 4)
  {
    if ((v5 - 5) < 4)
    {
      return 1;
    }

    return (*(a2[4] + 3) >> 6) & 1;
  }

  switch(v5)
  {
    case 1:

      return MTLCompilerObject::runVertexPasses(a1, a2, a3, a4);
    case 2:

      return MTLCompilerObject::runFragmentPasses(a1, a2);
    case 3:
      if (*(a2[4] + 28) < 0xCu)
      {
        return 1;
      }

      result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
      if (result)
      {
        return 1;
      }

      break;
    default:
      return (*(a2[4] + 3) >> 6) & 1;
  }

  return result;
}

uint64_t MTLCheckPixelFormatValidPass::pixelColorFormatValid(MTLCompilerErrorObject **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    if (a5)
    {
      return 1;
    }

    MTLCompilerErrorObject::setErrorMessage(*a1, "Shaders reads from a color attachment whose pixel format is MTLPixelFormatInvalid");
    return 0;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  __src = 0;
  __len = 0;
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if (!MTLCheckPixelFormatValidPass::getArgumentTypeName(InfoForDevice, a4, &__src))
  {
    v14 = *(a3 + 8);
    LOBYTE(v15) = *(a3 + 8);
    if ((*(a3 + 8) & 0xFE) == 0x12)
    {
      v15 = *(**(a3 + 16) + 8);
    }

    if ((v15 | 2) == 2)
    {
      if ((BYTE10(v28) & 3) != 0)
      {
        goto LABEL_20;
      }

      v16 = "Floating point fragment input cannot be read from a %s color attachment";
      v17 = *a1;
      v18 = "Floating point fragment output cannot be written to a %s color attachment";
    }

    else
    {
      if ((BYTE10(v28) & 3) == 0)
      {
        goto LABEL_20;
      }

      v16 = "Integer fragment input cannot be read from a %s color attachment";
      v17 = *a1;
      v18 = "Integer fragment output cannot be written to a %s color attachment";
    }

    if (a5)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(v17, v18, v28);
    }

    else
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(v17, v16, v28);
    }

    return 0;
  }

  ComponentType = MTLDataTypeGetComponentType();
  if (ComponentType > 0x29)
  {
    goto LABEL_54;
  }

  if (((1 << ComponentType) & 0x10008) != 0)
  {
    v12 = 196608;
    goto LABEL_18;
  }

  if (((1 << ComponentType) & 0x2020000000) != 0)
  {
    v12 = 1310720;
    goto LABEL_18;
  }

  if (((1 << ComponentType) & 0x20200000000) == 0)
  {
LABEL_54:
    abort();
  }

  v12 = 2621440;
LABEL_18:
  if ((DWORD2(v28) & v12) == 0)
  {
    if (a5)
    {
      v20 = "output";
    }

    else
    {
      v20 = "input";
    }

    v21 = *a1;
    if (__src)
    {
      v22 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = __len;
      if (__len)
      {
        memmove(__dst, __src, __len);
      }

      *(__dst + v22) = 0;
      v23 = __dst;
      if (v25 < 0)
      {
        v23 = __dst[0];
      }
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v23 = __dst;
      v25 = 0;
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(v21, "%s of type %s is not compatible with a %s color attachment.", v20, v23, v28);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    return 0;
  }

  v14 = *(a3 + 8);
LABEL_20:
  if (v14 == 18)
  {
    v19 = *(a3 + 32);
  }

  else
  {
    v19 = 1;
  }

  if (a2 == 1 && a5 && v19 <= 3)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "fragment shader color output requires 4 outputs for pixel format (%s)");
    return 0;
  }

  result = 1;
  if (a5 && a2 != 263 && v19 < v30)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "fragment shader color output does not have enough components for the pixel format (%s)");
    return 0;
  }

  return result;
}

void sub_213BD6464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCheckPixelFormatValidPass::getArgumentTypeName(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a2 - 8 * *(a2 + 8) + 8 * v6);
      if (v7)
      {
        if (!*v7)
        {
          String = llvm::MDString::getString(v7);
          if (v9 == 17)
          {
            v10 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
            if (v10 && *(String + 16) == 101)
            {
              break;
            }
          }
        }
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = v5;
        break;
      }
    }

    v12 = v6 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12 >= v5)
  {
    return 0;
  }

  v13 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v12));
  v15 = v14;
  v16 = strlen(v13);
  result = dataTypeFromString(v13, v16);
  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t MTLCompilerObject::lowerModule(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v9 = *(a2 + 48);
  Instance = MTLCompilerSharedMemoryInterface::getInstance(a1);
  MTLCompilerSharedMemoryInterface::setLoweringRuntimes(Instance, (a1 + 32), a2);
  v11 = *(a2 + 32);
  if ((*(v11 + 3) & 2) != 0 && v9)
  {
    v9 = MTLCompilerObject::invokeLowerModule(a1, v11, a4, v9, *(a2 + 40), *(a2 + 24));
    **(a2 + 32) &= ~0x2000000u;
  }

  v4 = v9 != 0;
  if (!v9)
  {
    free(*(a3 + 128));
    *(a3 + 128) = 0;
  }

  *(a2 + 48) = v9;
  return v4;
}

void dataTypeInfoFromString(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  v31 = a2;
  if (a2)
  {
    memmove(&__dst, a1, a2);
  }

  *(&__dst + a2) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32[0] = 0;
  v33 = p_dst;
  v32[1] = strlen(p_dst);
  while (1)
  {
    NextToken = BasicParser::getNextToken(v32);
    if (!NextToken)
    {
      goto LABEL_29;
    }

    v7 = NextToken;
    v8 = bufferTypeMap();
    std::string::basic_string[abi:ne200100]<0>(&__p, v7);
    v9 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v8, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    if (bufferTypeMap() + 8 == v9)
    {
      break;
    }

    if (*(v9 + 56) != 1)
    {
      v11 = *(v9 + 60);
      *&v10 = *(v9 + 64);
      goto LABEL_30;
    }
  }

  v12 = pixelFormatTypeMap();
  std::string::basic_string[abi:ne200100]<0>(&__p, v7);
  v13 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v12, &__p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (pixelFormatTypeMap() + 8 == v13)
  {
LABEL_29:
    v11 = 0;
    v10 = 0uLL;
    goto LABEL_30;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(&__p, v13 + 56);
  v14 = __p;
  if ((v28 & 0x80u) == 0)
  {
    v15 = &v26;
  }

  else
  {
    v15 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v16 = v28;
  }

  else
  {
    v16 = v27;
  }

  dataTypeInfoFromString(&v23, v15, v16);
  v11 = v29;
  v21 = v24;
  v17 = BasicParser::getNextToken(v32);
  v18 = strlen(v17);
  dataTypeInfoFromString(&v22, v17, v18);
  v19 = v22;
  if (v28 < 0)
  {
    operator delete(v26);
  }

  *&v10 = v21;
  *(&v10 + 1) = __PAIR64__(v19, v14);
LABEL_30:
  *a3 = v11;
  *(a3 + 4) = v10;
  if (v31 < 0)
  {
    operator delete(__dst);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_213BD68C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(a17);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *BasicParser::getNextToken(BasicParser *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (v2 < v1)
  {
    v3 = (*(this + 1) + v2);
    while (1)
    {
      v4 = *v3++;
      v5 = (1 << v4) & 0x5000144100000001;
      if (v4 > 0x3E || v5 == 0)
      {
        break;
      }

      LODWORD(v2) = v2 + 1;
      *this = v2;
      if (v1 == v2)
      {
        LODWORD(v2) = v1;
        goto LABEL_10;
      }
    }
  }

  if (v2 <= v1)
  {
LABEL_10:
    v7 = 0;
    v8 = *(this + 1);
    v9 = this + 16;
    while (1)
    {
      v10 = *(v8 + (v2 + v7));
      if (v10 <= 0x3E && ((1 << v10) & 0x5000144100000001) != 0)
      {
        break;
      }

      if (v7 == 63)
      {
        *(this + 79) = 0;
        return v9;
      }

      v12 = this + v7;
      v13 = v2 + v7++;
      v12[16] = v10;
      *this = v13 + 1;
      if (v2 + v7 > v1)
      {
        return v9;
      }
    }

    *(this + v7 + 16) = 0;
    if (v7)
    {
      return v9;
    }
  }

  return 0;
}

uint64_t AirReflection::BufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BufferArg", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LODWORD(v16) = *(a1 + v16);
    }
  }

  data = v16;
  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = *(a1 + v18);
  }

  else
  {
    v19 = 1;
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0x15u && (v27 = v26[10]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x19u && (v33 = v32[12]) != 0)
  {
    v34 = (a1 + v33);
    v35 = *v34;
    p_data = (v34 + v35 + 4);
    v37 = *(v34 + v35);
    v38 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v38 = c;
    v37 = 4;
  }

  CC_SHA256_Update(v38, p_data, v37);
  v39 = (a1 - *a1);
  if (*v39 >= 0x1Bu && (v40 = v39[13]) != 0)
  {
    v41 = (a1 + v40);
    v42 = *v41;
    v43 = (v41 + v42 + 4);
    v44 = *(v41 + v42);
    v45 = c;
  }

  else
  {
    data = 0;
    v43 = &data;
    v45 = c;
    v44 = 4;
  }

  CC_SHA256_Update(v45, v43, v44);
  v46 = (a1 - *a1);
  if (*v46 < 0x1Du)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = v46[14];
    if (v47)
    {
      LOBYTE(v47) = *(a1 + v47) != 0;
    }
  }

  LOBYTE(data) = v47;
  CC_SHA256_Update(c, &data, 1u);
  v48 = (a1 - *a1);
  if (*v48 >= 0x1Fu && (v49 = v48[15]) != 0)
  {
    v50 = v49;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v50);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_StructTypeInfo(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524289) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StructTypeInfo::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StructTypeInfo", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));
    data = *v6;
    result = CC_SHA256_Update(c, &data, 4u);
    v8 = *v6;
    if (v8)
    {
      v9 = v6 + 1;
      v10 = v6 + 1;
      do
      {
        v11 = *v10++;
        result = AirReflection::StructTypeInfoField::HashImpl((v9 + v11), c);
        v9 = v10;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v13 = 0;
    return CC_SHA256_Update(c, &v13, 4u);
  }

  return result;
}

uint64_t AirReflection::StructTypeInfoField::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StructTypeInfoField", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 < 7u)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = v7[3];
    if (v8)
    {
      LODWORD(v8) = *(a1 + v8);
    }
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 < 9u)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = v9[4];
    if (v10)
    {
      LODWORD(v10) = *(a1 + v10);
    }
  }

  data = v10;
  CC_SHA256_Update(c, &data, 4u);
  v11 = (a1 - *a1);
  if (*v11 < 0xBu)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[5];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    p_data = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, p_data, v18);
  v20 = (a1 - *a1);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = (a1 + v21);
    v23 = *v22;
    v24 = (v22 + v23 + 4);
    v25 = *(v22 + v23);
    v26 = c;
  }

  else
  {
    data = 0;
    v24 = &data;
    v26 = c;
    v25 = 4;
  }

  CC_SHA256_Update(v26, v24, v25);
  v27 = (a1 - *a1);
  if (*v27 >= 0x11u && (v28 = v27[8]) != 0)
  {
    v29 = (a1 + v28);
    v30 = *v29;
    v31 = (v29 + v30 + 4);
    v32 = *(v29 + v30);
    v33 = c;
  }

  else
  {
    data = 0;
    v31 = &data;
    v33 = c;
    v32 = 4;
  }

  CC_SHA256_Update(v33, v31, v32);
  v34 = (a1 - *a1);
  if (*v34 >= 0x13u && (v35 = v34[9]) != 0)
  {
    v36 = v35;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v36);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v37 = (a1 - *a1);
  if (*v37 >= 0x15u && (v38 = v37[10]) != 0)
  {
    v39 = v38;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v39);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v40 = (a1 - *a1);
  if (*v40 >= 0x17u && (v41 = v40[11]) != 0)
  {
    v42 = v41;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v42);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v43 = (a1 - *a1);
  if (*v43 >= 0x19u && (v44 = v43[12]) != 0)
  {
    v45 = v44;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v45);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v46 = (a1 - *a1);
  if (*v46 >= 0x1Bu && (v47 = v46[13]) != 0)
  {
    v48 = v47;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v48);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

void sub_213BD73E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213BD7454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **addBlocksForOutput(uint64_t **result, void *a2, uint64_t *a3, void *a4)
{
  v6 = result;
  if (a3)
  {
    v9 = *a3;
    v8 = a3[1];
    v18 = 0;
    if (v8)
    {
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(result, &v18);
    }

    v11 = a3[4];
    v10 = a3[5];
    v18 = 3;
    if (v10)
    {
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    v13 = a3[6];
    v12 = a3[7];
    v18 = 4;
    if (v12)
    {
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }
  }

  if (a2)
  {
    if (a2[5])
    {
      v14 = a2[4];
      v18 = 1;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    if (*a4)
    {
      v15 = a4[1];
      v18 = 2;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    if (a2[8])
    {
      v16 = a2[7];
      v18 = 6;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    if (a2[19])
    {
      v17 = a2[18];
      v18 = 7;
      return std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }
  }

  return result;
}

uint64_t AirReflection::Node::node_as_BufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x40000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

void std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t bufferTypeMap(void)
{
  if (atomic_load_explicit(&bufferTypeMapOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&bufferTypeMapOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<bufferTypeMap(void)::$_0 &&>>);
  }

  return bufferTypeMap(void)::nonGlobalBufferTypeMap;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t MTLCompilerObject::runLinkingPasses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 40);
  if (v7 == 1)
  {
    result = MTLCompilerObject::runVertexLinkingPass(a1, a2, a3, a4);
    if (!result)
    {
      return result;
    }

    v7 = *(a2 + 40);
  }

  if (v7 == 2)
  {
    MTLCompilerObject::runFragmentLinkingPass(a1, a2, a3);
  }

  return 1;
}

uint64_t std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,CompilerOutputBlock>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *createSerializedCompileRequest(size_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sizeOfSerializedCompilerBlocks(a2);
  v7 = v6;
  if (a1)
  {
    *a1 = v6;
  }

  memptr = 0;
  v8 = malloc_type_posix_memalign(&memptr, 8uLL, v6, 0xC81645FuLL);
  result = 0;
  if (!v8)
  {
    bzero(memptr, v7);
    serializeCompilerBlocks(memptr, v7, a2, a3);
    return memptr;
  }

  return result;
}

uint64_t sizeOfSerializedCompilerBlocks(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 8;
  }

  result = 8;
  do
  {
    result += ((v1[3] + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v1 = *v1;
  }

  while (v1);
  return result;
}

void *serializeCompilerBlocks(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  *result = *(a3 + 24);
  if (v4)
  {
    v6 = result;
    v7 = 8;
    do
    {
      v8 = *(v4 + 16);
      v9 = (v6 + v7);
      v10 = v4[3];
      *v9 = v8;
      v9[1] = v10;
      v11 = v7 + 16;
      if (v10)
      {
        v12 = v4[4];
        if (v12)
        {
          result = memcpy(v6 + v11, v12, v10);
        }
      }

      if (a4)
      {
        *(a4 + 8 * v8) = v11;
      }

      v7 = ((v4[3] + 7) & 0xFFFFFFFFFFFFFFF8) + v11;
      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(uint64_t a1)
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

void MTLCompilerObject::buildSpecializedFunctionRequest(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "MTLSpecializeFunctionToArchive");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v9 = *(a1 + 80);
    }

    p_p = &__p;
    if (DiagnosticContext < 0)
    {
      p_p = __p;
    }

    *buf = 136446722;
    *v45 = v9;
    *&v45[8] = 2082;
    *&v45[10] = p_p;
    *&v45[18] = 2080;
    *&v46 = "function specialization";
    _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v11 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p);
  }

  v38 = 0;
  *buf = 0;
  *&v45[4] = 0u;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  if ((*(a2 + 5) & 2) != 0)
  {
    v11 = mach_absolute_time();
  }

  MEMORY[0x21604B680](v37);
  *&__p = v37;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v37);
  *(&__p + 1) = llvm::LLVMContext::getDiagnosticHandlerCallBack(v37);
  v12 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  MTLCompilerObject::getReadParametersFromRequest(v12, buf, a2, a3, (a2 + 88), a2);
  v36 = 1;
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v37, &v36, 0, 0, 1);
  v14 = ModuleFromBinaryRequest;
  v34 = 0;
  v35 = ModuleFromBinaryRequest;
  v33 = 0;
  if (!ModuleFromBinaryRequest)
  {
    (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_39:
    v25 = 0;
    v24 = 0;
    v22 = 0;
    goto LABEL_40;
  }

  v15 = *(a2 + 160);
  v16 = *(a2 + 12);
  if (!v16)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    if (!v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v17 = *(a2 + 8);
  if ((*(a2 + 5) & 2) != 0)
  {
    v18 = mach_absolute_time();
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    ModuleFromBinaryRequest = MTLCompilerObject::applyConstantValues(a1, v37, v14, a2 + 236, (a2 + v17), v16, v48, &v33);
    v20 = ModuleFromBinaryRequest;
    if (ModuleFromBinaryRequest)
    {
      v19 = 0;
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  ModuleFromBinaryRequest = MTLCompilerObject::applyConstantValuesToArchive(a1, v37, v14, a2 + 236, (a2 + v17), v16, v48, &v33);
  v19 = ModuleFromBinaryRequest;
  v34 = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
LABEL_38:
    free(v33);
    (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
    goto LABEL_39;
  }

  v20 = 0;
LABEL_26:
  if (*(a2 + 160))
  {
LABEL_27:
    ModuleFromBinaryRequest = MTLCompilerObject::invokeLoaderForSpecializedFunction(a1, &v35, v20, a2, a3, v37, a5);
    v19 = ModuleFromBinaryRequest;
    v34 = ModuleFromBinaryRequest;
  }

LABEL_28:
  if ((*(a2 + 2) & 0x80) != 0)
  {
    *&v32 = 0;
    MTLCompilerObject::insertFunctionInArchive(ModuleFromBinaryRequest, a2, buf, &v34);
  }

  if ((*(a2 + 5) & 2) != 0)
  {
    v22 = (*&gMachTimeToNS * (mach_absolute_time() - v18));
    LODWORD(v32) = 1;
    *(&v32 + 1) = v22;
    std::vector<CompileTimeData>::push_back[abi:ne200100](&v39, &v32);
    v23 = (v40 - v39) >> 4;
    if (v23 == -2)
    {
      v21 = 0;
    }

    else
    {
      v21 = (12 * v23 + 28);
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v24 = MTLCompilerObject::serializeLibraryToArchiveReply(a1, &v38, &v33, 1, 1, v19, v21);
  if (v19)
  {
    LLVMDisposeMemoryBuffer();
  }

  v25 = 1;
LABEL_40:
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
  llvm::LLVMContext::~LLVMContext(v37);
  if (v25)
  {
    if (v24)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "MTLSpecializeFunctionToArchive");
      v26 = logCompileEnd(a1 + 80, v11, "function specialization", &__p, v48);
      if (SHIBYTE(DiagnosticContext) < 0)
      {
        operator delete(__p);
      }

      if ((*(a2 + 5) & 2) != 0)
      {
        LODWORD(__p) = 6;
        *(&__p + 1) = v26;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v39, &__p);
        LODWORD(__p) = 4;
        *(&__p + 1) = v26 - v22;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v39, &__p);
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v29, v39, v40, (v40 - v39) >> 4);
      if (v24[13])
      {
        v27 = v24[12];
        DiagnosticContext = 0;
        __p = 0uLL;
        std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&__p, v29, v30, (v30 - v29) >> 4);
        serializeCompileTimeData(v24 + v27, &__p);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      (*(a5 + 16))(a5, 0, v24, v38, 0);
      free(v24);
    }

    else
    {
      (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
    }
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t MTLCompilerObject::applyConstantValuesToArchive(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, const char *a5, unint64_t a6, uint64_t a7, const char **a8)
{
  v19[0] = this;
  v19[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v19[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v18 = 0;
  v13 = parseFunctionConstants(this, a5, a6, &v18);
  v14 = *(a1 + 32);
  v15 = MTLGPUCompilerSpecializeFunctionToBuffer();
  free(v13);
  if (!v15)
  {
    if (a8)
    {
      v16 = *a8;
    }

    else
    {
      v16 = "Failed to specialize function.";
    }

    MTLCompilerErrorObject::setErrorMessage((a1 + 64), v16);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v19);
  return 0;
}

void sub_213BD88AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(va);
  _Unwind_Resume(a1);
}

char *parseFunctionConstants(llvm::LLVMContext *a1, const char *a2, unint64_t a3, unsigned int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 <= 3)
  {
    goto LABEL_12;
  }

  v7 = *a2;
  v18 = malloc_type_malloc(16 * v7, 0x1020040D5A9D86FuLL);
  if (v7)
  {
    v8 = (v18 + 8);
    v9 = 4;
    v10 = v7;
    while (a3 > v9)
    {
      if (a3 - v9 <= 1)
      {
        break;
      }

      if (v9 + 2 >= a3)
      {
        break;
      }

      v11 = *&a2[v9];
      v12 = a2[v9 + 2];
      v13 = v9 + 3;
      v14 = _MTLConstantDataSize();
      if (v9 + 3 >= a3)
      {
        break;
      }

      v9 = v14 + v13;
      if (v14 + v13 > a3 || v14 >= 0x11)
      {
        break;
      }

      memcpy(__dst, &a2[v13], v14);
      *(v8 - 2) = v11;
      *v8 = getLLVMConstantValue(a1, v12, __dst);
      v8 += 2;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    abort();
  }

LABEL_11:
  *a4 = v7;
  v15 = *MEMORY[0x277D85DE8];
  return v18;
}

llvm::Constant *getLLVMConstantValue(llvm::LLVMContext *a1, MTLDataType a2, const unsigned __int8 *a3)
{
  ComponentType = MTLDataTypeGetComponentType();
  ComponentCount = MTLDataTypeGetComponentCount();
  if (ComponentType <= 32)
  {
    switch(ComponentType)
    {
      case 3:
        llvm::Type::getFloatTy(a1, v5);
        result = llvm::ConstantDataVector::getFP();
        break;
      case 16:
        llvm::Type::getHalfTy(a1, v5);
        result = llvm::ConstantDataVector::getFP();
        break;
      case 29:
LABEL_10:
        result = llvm::ConstantDataVector::get();
        break;
      default:
        goto LABEL_21;
    }
  }

  else
  {
    v7 = ComponentType - 37;
    if ((ComponentType - 37) > 0x30)
    {
      goto LABEL_20;
    }

    if (((1 << v7) & 0x11100) != 0)
    {
      result = llvm::ConstantDataVector::get();
    }

    else
    {
      if (((1 << v7) & 0x11) == 0)
      {
        if (((1 << v7) & 0x1100000000000) != 0)
        {
          result = llvm::ConstantDataVector::get();
          goto LABEL_15;
        }

LABEL_20:
        if (ComponentType != 33)
        {
LABEL_21:
          abort();
        }

        goto LABEL_10;
      }

      result = llvm::ConstantDataVector::get();
    }
  }

LABEL_15:
  if (ComponentCount == 1)
  {

    return llvm::Constant::getAggregateElement(result);
  }

  return result;
}

char *MTLCompilerObject::serializeLibraryToArchiveReply(uint64_t a1, size_t *a2, const char **a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v9 = a3;
  v28 = a5;
  v12 = 0;
  if (a4)
  {
    v13 = a3;
    v14 = a4;
    do
    {
      if (*v13)
      {
        v12 += strlen(*v13) + 1;
      }

      ++v13;
      --v14;
    }

    while (v14);
    if (v12 >= 0xFFFFFFFF)
    {
      return 0;
    }

    v15 = v12 + 104;
    a5 = v28;
  }

  else
  {
    v15 = 104;
  }

  v27 = a2;
  v26 = a1;
  if (a5)
  {
    v16 = v15;
    v17 = LLVMGetBufferSize();
    if (a7)
    {
      v18 = v15 + v17;
    }

    else
    {
      v18 = 0;
    }

    v15 += v17 + a7;
    v19 = 3;
  }

  else
  {
    v18 = 0;
    LODWORD(a7) = 0;
    v17 = 0;
    v16 = 0;
    v19 = 2;
  }

  v20 = malloc_type_malloc(v15, 0x100004077774924uLL);
  *v20 = v19;
  *(v20 + 1) = 0;
  *(v20 + 4) = 0x6800000000;
  *(v20 + 3) = v12;
  *(v20 + 3) = 0;
  *(v20 + 4) = 0;
  *(v20 + 2) = 0;
  *(v20 + 10) = v16;
  *(v20 + 11) = v17;
  *(v20 + 12) = v18;
  *(v20 + 13) = a7;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  if (v8)
  {
    v21 = 0;
    do
    {
      v22 = *v9;
      if (*v9)
      {
        v23 = strlen(*v9) + 1;
        if (v8 != 1)
        {
          v22[v23] = 10;
        }

        memcpy(&v20[v21 + 104], v22, v23);
        free(v22);
        v21 += v23;
      }

      ++v9;
      --v8;
    }

    while (v8);
  }

  if ((v28 & 1) == 0)
  {
    MTLCompilerErrorObject::setErrorMessage((v26 + 64), v20 + 104);
    free(v20);
    return 0;
  }

  v24 = LLVMGetBufferStart();
  memcpy(&v20[v16], v24, v17);
  *v27 = v15;
  return v20;
}

uint64_t std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CompileTimeData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_213BD8DD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AirReflection::Node::node_as_TextureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262146) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TextureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TextureArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::SamplerArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SamplerArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_SamplerArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262145) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = v4 - 72;
        std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
        v6 = *(v4 - 14);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 176;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void MTLCompilerObject::patchReflection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 32) + 4))
  {
    v3 = a1 + 64;
    v4 = 0;
    MTLGenerateReflectionDataPass::patchTraceBufferReflectionData(&v3, *(a2 + 48), *a3, *(a3 + 24));
  }
}

void std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t MTLCompilerObject::runFragmentLinkingPass(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 32) + 4);
  if ((v3 & 4) != 0)
  {
    v6 = result + 64;
    v7 = 0;
    v4 = *(a2 + 48);
    if ((v3 & 8) != 0)
    {
      v9[0] = &unk_282634780;
      v9[1] = a3;
      v9[3] = v9;
      MTLFragmentInputPackingPass::fragmentInputPacking(&v6, v4, v9);
      result = std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](v9);
    }

    else
    {
      v8[0] = &unk_2826347C8;
      v8[1] = a3;
      v8[3] = v8;
      MTLFragmentInputLinkingPass::fragmentInputLinking(&v6, v4, v8);
      result = std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](v8);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213BD95D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double MTLCompilerObject::backendCompileModule(void *a1, uint64_t *a2, BackendCompilationOutput *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2[4] + 4);
  v10 = (v9 >> 8) & 1 | *(a2 + 14);
  if ((v9 & 0x200) != 0)
  {
    v10 = v10 | 2;
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a2 + 4);
  v14 = a1[1];
  v15 = *(v14 + 8 * v13);
  if (*(v15 + 154) == 1)
  {
    *(*(v15 + 128) + 16) = a1[4];
  }

  v16 = a2[4];
  v17 = *(v16 + 224);
  if (v17 >> 3 >= 0xFA3)
  {
    *(a3 + 6) = 1;
    v18 = "Cannot compile for given LLVM version";
LABEL_8:
    *(a3 + 2) = v18;
    return result;
  }

  v41 = v11;
  v19 = *a2;
  v20 = *(v16 + 8);
  if (v17)
  {
    v21 = v17 == 32023;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (*(v16 + 48) && *(v16 + 94) != 3)
  {
    v23 = *(v16 + 52);
    v24 = a2[6];
    if (!MTLDowngradeAIRModule())
    {
      *(a3 + 6) = 1;
      v18 = a1[8];
      goto LABEL_8;
    }

    v42 = a5;
    v13 = *(a2 + 4);
    v14 = a1[1];
    v16 = a2[4];
  }

  else
  {
    v42 = a5;
  }

  v25 = *(v14 + 8 * v13);
  if ((*(v16 + 288) & 1) != 0 && (*(v25 + 152) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerObject::backendCompileModule();
    }

    MTLFunctionTypeToString(a2[5], v48);
    logCompileError(a1 + 10, "Compile request asks for AIRNTInterfaces, but the compilation plugin does not support them.");
    std::string::~string(v48);
    abort();
  }

  if ((*(v16 + 288) & 1) != 0 && *(v25 + 152) && *(v25 + 153) == 1 && *(v16 + 200))
  {
    *(a3 + 64) = 1;
    v26 = (*a2 + *(v16 + 196));
    *&v48[0] = 0;
    BYTE8(v48[0]) = 0;
    v48[1] = 0u;
    v49 = 0u;
    v27 = strncmp(v26 + 4, "AIRP", 4uLL);
    v28 = *v26;
    if (v27)
    {
      v40 = &v26[v28];
    }

    else
    {
      MTLCompilerObject::AIRNTGetFunctionScriptFromPipeline(&v26[v28], a2[5], v47);
      flatbuffers::DetachedBuffer::operator=(v48, v47);
      flatbuffers::DetachedBuffer::~DetachedBuffer(v47);
      v40 = v49 + *v49;
      v16 = a2[4];
      v25 = *(a1[1] + 8 * *(a2 + 4));
    }

    v31 = *(v16 + 208);
    v32 = (*(v25 + 56))(v19 + v20, *(v16 + 12));
    v46 = 0;
    v47[0] = 0;
    v44 = 0;
    v45 = 0;
    __s1 = 0;
    v33 = *(a2[4] + 4);
    v34 = &v45;
    if ((v33 & 0x200) == 0)
    {
      v34 = 0;
    }

    v35 = &v44;
    if ((v33 & 0x200) == 0)
    {
      v35 = 0;
    }

    *(a3 + 6) = MTLCompilerPluginInterface::airntEmitPipelineImage(*(a1[1] + 8 * *(a2 + 4)), v32, a2[6], v17, v10, HIDWORD(v31), v31, v40, v47, &v46, v34, v35, &__s1);
    (*(*(a1[1] + 8 * *(a2 + 4)) + 64))(v32);
    v36 = v46;
    *a3 = v47[0];
    *(a3 + 1) = v36;
    v37 = __s1;
    if (__s1)
    {
      *(a3 + 2) = strdup(__s1);
      free(v37);
    }

    else
    {
      *(a3 + 2) = 0;
    }

    v29 = v42;
    v39 = v44;
    v38 = v45;
    if ((v33 & 0x200) == 0)
    {
      v38 = 0;
      v39 = 0;
    }

    *(a3 + 6) = v38;
    *(a3 + 7) = v39;
    flatbuffers::DetachedBuffer::~DetachedBuffer(v48);
  }

  else
  {
    *(a3 + 6) = MTLCompilerPluginInterface::compilerBuildRequest(v25, (*(v16 + 4) & 0x200000 | v22) != 0, v17, (v19 + v20), *(v16 + 12), v10, a2[6], a3);
    v29 = v42;
  }

  if ((*(a2[4] + 5) & 2) != 0)
  {
    v30 = *&gMachTimeToNS * (mach_absolute_time() - v41);
    *(a3 + 9) = v30;
    LODWORD(v48[0]) = 5;
    *(&v48[0] + 1) = v30;
    std::vector<CompileTimeData>::push_back[abi:ne200100](v29, v48);
  }

  return result;
}

void sub_213BD99A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  flatbuffers::DetachedBuffer::~DetachedBuffer(va);
  flatbuffers::DetachedBuffer::~DetachedBuffer((v14 - 136));
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerPluginInterface::compilerBuildRequest(MTLCompilerPluginInterface *this, int a2, signed int a3, const void *a4, uint64_t a5, uint64_t a6, llvm::Module *a7, BackendCompilationOutput *a8)
{
  if (a2)
  {
    if (a3 == 32023)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    getSerializedModule(v13, &v22);
    v14 = v22;
    if (*(v22 + 16) == *(v22 + 8))
    {
      v19 = "Invalid serialized bitcode";
    }

    else
    {
      v15 = *(this + 12);
      if (v15)
      {
        *(this + 155) = 1;
        v16 = v15(*(this + 16), a4, a5, a6);
LABEL_16:
        (*(*v14 + 8))(v14);
        return v16;
      }

      v19 = "Driver does not support MTLCompilerBuildRequestWithSerializedBitcode, but MTLCompilerOptionCompilerPluginRequiresSerializedBitcode was set.";
    }

    *(a8 + 2) = v19;
    v16 = 1;
    goto LABEL_16;
  }

  *(this + 155) = 1;
  v17 = *(this + 4);
  if (v17)
  {
    return v17(*(this + 16), a4, a5, a6, a7, a8, a8 + 8, a8 + 32, a8 + 40, a8 + 48, a8 + 56, a8 + 16);
  }

  *(a8 + 5) = 0;
  *(a8 + 7) = 0;
  v20 = *(this + 3);
  v21 = *(this + 16);

  return v20(v21, a4, a5, a7, a8, a8 + 8, a8 + 16);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::Function *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::Function *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *MTLGenerateReflectionDataPass::generateReflectionData(uint64_t a1, llvm::Module *a2, char a3, void *a4, int a5, void *a6, const void *a7, size_t a8, void *a9)
{
  v116 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    memset(v108, 0, sizeof(v108));
    parseFunctions(a2, v108);
    v14 = v108[0];
    v106 = 0;
    v105 = 0;
    v107 = 0;
    v15 = entryPointsType[*(v108[0] + 48)];
    memset(v104, 0, sizeof(v104));
    v79 = v15;
    v16 = v15 != 5 || *(v108[0] + 24) == 0;
    v76 = a4;
    v77 = a6;
    __n = a8;
    if (!v16)
    {
      StitchingReflection::StitchingReflection(v113);
    }

    v102 = 0;
    v101 = 0;
    v100 = 0;
    v17 = *(v108[0] + 8);
    if (v17)
    {
      v18 = *(v17 + 8);
    }

    else
    {
      v18 = 0;
    }

    v19 = *v108[0];
    if (*(*v108[0] + 18))
    {
      llvm::Function::BuildLazyArguments(*v108[0]);
      v20 = *(v14 + 48);
    }

    if (v18)
    {
      v21 = *(v19 + 88);
      v22 = *(*(v14 + 8) - 8 * *(*(v14 + 8) + 8));
      DataLayout = llvm::Module::getDataLayout(*(*v14 + 40));
      llvm::DataLayout::DataLayout(v113, DataLayout);
      MTLArgumentData::MTLArgumentData(v112);
    }

    v24 = 954437177 * ((v101 - v100) >> 5);
    if (v24)
    {
      v25 = 0;
      do
      {
        std::vector<MTLArgumentData>::push_back[abi:ne200100](v104, (v100 + v25));
        v25 += 288;
      }

      while (288 * v24 != v25);
    }

    v113[0] = &v100;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v26 = 12;
    v103 = 12;
    if ((v79 | 2) == 3)
    {
      v26 = 0x38E38E38E38E38E4 * ((v106 - v105) >> 5) + 16;
      v103 = v26;
    }

    v27 = *(v14 + 128);
    if (!v27 || *(*(v14 + 120) + v27 - 1))
    {
      LODWORD(v27) = v27 + 1;
    }

    v78 = v24;
    v103 = v26 + v27 + 8;
    v111 = 0;
    v110 = 0;
    __p = &v110;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke;
    v99[3] = &unk_278171778;
    v99[4] = &v100;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_2;
    v98[3] = &unk_2781717A0;
    v98[4] = &v100;
    serializeArguments(v104, &__p, v99, v98);
    v28 = entryPointsType[*(v14 + 48)];
    v75 = v101[3];
    if (v28 == 2)
    {
      v101[3] += 4;
      MTLArgumentData::MTLArgumentData(v113);
    }

    if ((v28 | 2) == 3)
    {
      v101[3] += 8;
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_5;
      v97[3] = &unk_278171778;
      v97[4] = &v100;
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_6;
      v96[3] = &unk_2781717A0;
      v96[4] = &v100;
      serializePostVertexDumpOutputs(a6, v97, v96);
    }

    v29 = v101;
    v30 = v101[3];
    v31 = v30;
    if (a9)
    {
      *a9 = v30;
      v31 = v29[3];
    }

    v32 = __n + v31 + 8;
    v29[3] = v32;
    v74 = entryPointsType[*(v14 + 48)];
    if (v74 == 6)
    {
      v29[3] = v32 + ((*(v14 + 104) - *(v14 + 96)) >> 1) + 8;
    }

    v94 = 0;
    v93 = 0;
    v95 = 0;
    v113[0] = "air.global_bindings";
    v115 = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(a2, v113);
    v34 = NamedMetadata;
    if (NamedMetadata)
    {
      v113[1] = 0;
      v113[0] = 0;
      v114 = 0;
      NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
      std::vector<MTLArgumentData>::reserve(&v93, NumOperands);
      if (llvm::NamedMDNode::getNumOperands(v34))
      {
        Operand = llvm::NamedMDNode::getOperand(v34);
        v37 = Operand - 8 * *(Operand + 8);
        v38 = *(v37 + 16);
        v39 = *(*(v37 + 8) + 128);
        if (v94 < v95)
        {
          MTLArgumentData::MTLArgumentData(v94);
        }

        std::vector<MTLArgumentData>::__emplace_back_slow_path<>(&v93);
      }

      llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(v113);
    }

    v101[3] += 4;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_7;
    v92[3] = &unk_278171778;
    v92[4] = &v100;
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_8;
    v91[3] = &unk_2781717A0;
    v91[4] = &v100;
    serializeArguments(&v93, &__p, v92, v91);
    v40 = v101[3];
    v9 = malloc_type_malloc(v40, 0x100004077774924uLL);
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&__p, v110);
    v111 = 0;
    __p = &v110;
    v110 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = v9;
    *v9 = 0x4E494253504C544DLL;
    v41 = v88;
    ++v90;
    *v88[3] = 131073;
    v41[3] += 4;
    if ((v79 | 2) == 3)
    {
      LODWORD(v43) = 954437177 * ((v106 - v105) >> 5);
      v42 = v88;
      *v88[3] = v43;
      v42[3] += 4;
      v43 = v43;
      if (v43)
      {
        v44 = 4;
        do
        {
          v45 = v88;
          *v88[3] = *(v105 + v44);
          v45[3] += 4;
          v44 += 288;
          --v43;
        }

        while (v43);
      }
    }

    v46 = *(v14 + 120);
    v47 = *(v14 + 128);
    v48 = v88;
    memcpy(v88[3], v46, v47);
    v49 = (v48[3] + v47);
    v48[3] = v49;
    if (!v47 || v46[v47 - 1])
    {
      *v49 = 0;
      ++v48[3];
    }

    v50 = v88;
    *v88[3] = v78;
    v50[3] += 4;
    v51 = v88;
    *v88[3] = v75;
    v51[3] += 4;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_9;
    v86[3] = &unk_278171778;
    v86[4] = &v87;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_10;
    v85[3] = &unk_2781717A0;
    v85[4] = &v87;
    serializeArguments(v104, &__p, v86, v85);
    if (entryPointsType[*(v14 + 48)] == 2)
    {
      v52 = v88;
      v53 = v88[3];
      *v53 = 0;
      *(v53 + 1) = 0;
      *(v53 + 3) = 0;
      v52[3] += 4;
      MTLArgumentData::MTLArgumentData(v113);
    }

    if ((v28 | 2) == 3)
    {
      v54 = v88;
      *v88[3] = a5;
      v54[3] += 4;
      v55 = v88;
      *v88[3] = v30;
      v55[3] += 4;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_13;
      v84[3] = &unk_278171778;
      v84[4] = &v87;
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_14;
      v83[3] = &unk_2781717A0;
      v83[4] = &v87;
      serializePostVertexDumpOutputs(v77, v84, v83);
    }

    v56 = v88;
    *v88[3] = -1;
    v56[3] += 4;
    v57 = v88;
    *v88[3] = __n;
    v57[3] += 4;
    if (__n)
    {
      v58 = v88;
      memcpy(v88[3], a7, __n);
      v58[3] += __n;
    }

    if (v74 == 6)
    {
      v59 = v88;
      v60 = v88[3];
      *v60 = *(v14 + 70) & 3;
      *(v60 + 1) = 0;
      *(v60 + 3) = 0;
      v59[3] += 4;
      v61 = *(v14 + 104) - *(v14 + 96);
      v62 = v88;
      v63 = v88[3];
      *v63 = v61 >> 3;
      v63[1] = v61 >> 11;
      v63[2] = v61 >> 19;
      v63[3] = v61 >> 27;
      v62[3] += 4;
      v64 = *(v14 + 96);
      if (*(v14 + 104) != v64)
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = *(v64 + 8 * v65);
          v68 = v88;
          *v88[3] = v67;
          v68[3] += 4;
          v65 = v66;
          v64 = *(v14 + 96);
          ++v66;
        }

        while (v65 < (*(v14 + 104) - v64) >> 3);
      }
    }

    v69 = v88;
    *v88[3] = v40;
    v69[3] += 4;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_15;
    v82[3] = &unk_278171778;
    v82[4] = &v87;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_16;
    v81[3] = &unk_2781717A0;
    v81[4] = &v87;
    serializeArguments(&v93, &__p, v82, v81);
    *v76 = v101[3];
    _Block_object_dispose(&v87, 8);
    v113[0] = &v93;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&__p, v110);
    _Block_object_dispose(&v100, 8);
    v113[0] = v104;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    v113[0] = &v105;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    v113[0] = v108;
    std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](v113);
  }

  else
  {
    v9 = 0;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v9;
}