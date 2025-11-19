id _ObjectUIDsWithAliasID(void **a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  p = 0;
  apr_pool_create_ex(&p, 0, 0, v5);
  v6 = p;
  v7 = apr_array_make(p, 32, 8);
  v8 = *(**a1 + 24);
  v9 = *a1[11];
  v22 = a2;
  entry = find_entry(v8, &v22, 8uLL, 0);
  if (*entry)
  {
    for (i = *(*entry + 32); i; i = i[4])
    {
      if (i[2] <= v9 && i[3] >= v9)
      {
        v12 = i[1];
        *apr_array_push(v7) = v12;
      }
    }
  }

  nelts = v7->nelts;
  if (nelts >= 1)
  {
    v14 = 0;
    v15 = 8 * nelts;
    do
    {
      v16 = *&v7->elts[v14];
      if (v16)
      {
        v17 = *v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
      [v4 addObject:v18];

      v14 += 8;
    }

    while (v15 != v14);
  }

  apr_pool_destroy(v6);
  v19 = [v4 copy];

  return v19;
}

uint64_t GTShaderDebuggerMakeDebugMetadata(uint64_t a1, void *a2, void *a3, void *a4)
{
  v178 = *MEMORY[0x277D85DE8];
  v112 = a2;
  v7 = a3;
  if (*(a1 + 208))
  {
    v110 = a4;
    v111 = v7;
    v119 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v117 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v120 = a1;
    v113 = *(**a1 + 40);
    v114 = **(a1 + 88);
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v9 = v112;
    v10 = [v9 countByEnumeratingWithState:&v132 objects:v162 count:16];
    if (v10)
    {
      v115 = *v133;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v133 != v115)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v132 + 1) + 8 * i);
          AliasStream = GetAliasStream(*(**v120 + 24), [v12 unsignedIntegerValue], **(v120 + 88));
          if (AliasStream)
          {
            v14 = *AliasStream;
          }

          else
          {
            v14 = 0;
          }

          v15 = *(v120 + 96);
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
          v17 = [v15 objectForKeyedSubscript:v16];

          v18 = [v17 bitcodeData];
          if (!v18)
          {
            if (v110)
            {
              *v110 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to process executable debug information", 0, 0, 0);
            }

            v8 = 0;
            v7 = v111;
            goto LABEL_92;
          }

          if ((*(v120 + 208) & 8) != 0)
          {
            v19 = [v17 name];
            v161[0] = v19;
            v161[1] = v12;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:2];
            v21 = [v20 componentsJoinedByString:@"_"];

            v22 = [v21 stringByAppendingPathExtension:@"bc"];
            v23 = [*(v120 + 200) stringByAppendingPathComponent:v22];
            v131 = 0;
            [v18 writeToFile:v23 options:1 error:&v131];
          }

          Function = GTMTLSMContext_lastFunction(*v113, v14, v114);
          if (Function && ((v25 = *(Function + 120)) != 0 || (v25 = *(Function + 112)) != 0) && *(v25 + 8))
          {
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
          }

          else
          {
            v26 = [MEMORY[0x277CBEB68] null];
          }

          v27 = v26;
          [v117 addObject:v26];

          [v119 addObject:v18];
        }

        v10 = [v9 countByEnumeratingWithState:&v132 objects:v162 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v130 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v28 = v111;
    v29 = [v28 countByEnumeratingWithState:&v127 objects:v160 count:16];
    if (v29)
    {
      v30 = *v128;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v128 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v127 + 1) + 8 * j);
          v33 = GetAliasStream(*(**v120 + 24), [v32 unsignedIntegerValue], **(v120 + 88));
          if (v33)
          {
            v34 = *v33;
          }

          else
          {
            v34 = 0;
          }

          v35 = *(v120 + 96);
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v34];
          v37 = [v35 objectForKeyedSubscript:v36];

          if (v37 && [v37 type])
          {
            v38 = [v37 bitcodeData];
            if (v38)
            {
              if ((*(v120 + 208) & 8) != 0)
              {
                v39 = [v37 installName];
                v159[0] = v39;
                v159[1] = v32;
                v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:2];
                v41 = [v40 componentsJoinedByString:@"_"];

                v42 = [v41 stringByAppendingPathExtension:@"bc"];
                v43 = [*(v120 + 200) stringByAppendingPathComponent:v42];
                v126 = 0;
                [v38 writeToFile:v43 options:1 error:&v126];
              }

              [v119 addObject:v38];
              v44 = [MEMORY[0x277CBEB68] null];
              [v117 addObject:v44];
            }
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v127 objects:v160 count:16];
      }

      while (v29);
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v45 = *(v120 + 120);
    v46 = [v45 countByEnumeratingWithState:&v122 objects:v158 count:16];
    if (v46)
    {
      v47 = *v123;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v123 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v122 + 1) + 8 * k);
          v50 = [v49 bitcodeData];
          if (v50)
          {
            if ((*(v120 + 208) & 8) != 0)
            {
              v51 = [v49 installName];
              v52 = [v51 stringByAppendingPathExtension:@"bc"];
              v53 = [*(v120 + 200) stringByAppendingPathComponent:v52];
              v121 = 0;
              [v50 writeToFile:v53 options:1 error:&v121];
            }

            [v119 addObject:v50];
            v54 = [MEMORY[0x277CBEB68] null];
            [v117 addObject:v54];
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v122 objects:v158 count:16];
      }

      while (v46);
    }

    v55 = *(v120 + 104);
    v56 = v119;
    v118 = v117;
    v109 = v55;
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0;
    v173[0] = &v174;
    v173[1] = 0x400000000;
    v116 = v56;
    MEMORY[0x253032D20](v153);
    v151 = 0;
    __src = 0;
    v152 = 0;
    v148 = 0u;
    __p = 0u;
    v149 = 1065353216;
    v57 = [v56 count];
    if (!v57)
    {
LABEL_93:
      v141 = 0;
      v142 = 0;
      v140 = &v141;
      v143 = 0u;
      v144 = 0u;
      v145 = 1065353216;
      v146 = 0;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v87 = v109;
      v88 = [v87 countByEnumeratingWithState:&v136 objects:v163 count:16];
      if (v88)
      {
        v89 = *v137;
        do
        {
          for (m = 0; m != v88; ++m)
          {
            if (*v137 != v89)
            {
              objc_enumerationMutation(v87);
            }

            v91 = *(*(&v136 + 1) + 8 * m);
            v92 = [v87 objectForKeyedSubscript:v91];
            v93 = v91;
            std::string::basic_string[abi:nn200100]<0>(&p_src, [v91 UTF8String]);
            v94 = v92;
            std::string::basic_string[abi:nn200100]<0>(&v156, [v92 UTF8String]);
            ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(&v140, &p_src, &v156);
            if (v157 < 0)
            {
              operator delete(v156);
            }

            if (v176 < 0)
            {
              operator delete(p_src);
            }
          }

          v88 = [v87 countByEnumeratingWithState:&v136 objects:v163 count:16];
        }

        while (v88);
      }

      std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(v141);
      v141 = 0;
      v142 = 0;
      v140 = &v141;
      *&v154 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeThreadTracePoint;
      *(&v154 + 1) = 0;
      v155 = &v140;
      std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:nn200100]<char const(&)[24],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(&p_src, "tracepoint_thread_begin", &v154);
    }

    v58 = 0;
    while (1)
    {
      v59 = [v56 objectAtIndexedSubscript:v58];
      v60 = v59;
      [v59 bytes];
      [v59 length];
      llvm::MemoryBuffer::getMemBuffer();
      llvm::MemoryBuffer::getMemBufferRef(&p_src, v163[0]);
      llvm::parseIR();
      if (!v140)
      {
        break;
      }

      p_src = "llvm.dbg.cu";
      v177 = 259;
      if (!llvm::Module::getNamedMetadata())
      {
        v99 = GTShaderDebuggerMDSerializerError(2u, &cfstr_MetadataSerial.isa);
        v101 = v99;
        goto LABEL_113;
      }

      v61 = v151;
      v62 = __src;
      v63 = v151 - __src;
      if (v151 >= v152)
      {
        v66 = (v63 >> 3) + 1;
        if (v66 >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v67 = v152 - __src;
        if ((v152 - __src) >> 2 > v66)
        {
          v66 = v67 >> 2;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          if (!(v68 >> 61))
          {
            operator new();
          }

          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v69 = v151 - __src;
        v70 = (8 * (v63 >> 3));
        v71 = v140;
        v140 = 0;
        *v70 = v71;
        v65 = v70 + 1;
        memcpy(0, v62, v69);
        __src = 0;
        v151 = v65;
        v152 = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        v64 = v140;
        v140 = 0;
        *v151 = v64;
        v65 = v61 + 1;
      }

      v151 = v65;
      v72 = [v118 objectAtIndexedSubscript:v58];
      v73 = [MEMORY[0x277CBEB68] null];
      v74 = v72 == v73;

      if (!v74)
      {
        v75 = v72;
        v76 = [v72 UTF8String];
        v77 = v63 >> 3;
        v78 = (v63 >> 3);
        if (!*(&__p + 1))
        {
          goto LABEL_84;
        }

        v79 = vcnt_s8(*(&__p + 8));
        v79.i16[0] = vaddlv_u8(v79);
        if (v79.u32[0] > 1uLL)
        {
          v80 = v78;
          if (*(&__p + 1) <= v78)
          {
            v80 = v77 % DWORD2(__p);
          }
        }

        else
        {
          v80 = (DWORD2(__p) - 1) & v78;
        }

        v81 = *(__p + 8 * v80);
        if (!v81 || (v82 = *v81) == 0)
        {
LABEL_84:
          operator new();
        }

        while (1)
        {
          size = v82->__r_.__value_.__l.__size_;
          if (size == v78)
          {
            if (LODWORD(v82->__r_.__value_.__r.__words[2]) == v77)
            {
              std::string::__assign_external(v82 + 1, v76);
              break;
            }
          }

          else
          {
            if (v79.u32[0] > 1uLL)
            {
              if (size >= *(&__p + 1))
              {
                size %= *(&__p + 1);
              }
            }

            else
            {
              size &= *(&__p + 1) - 1;
            }

            if (size != v80)
            {
              goto LABEL_84;
            }
          }

          v82 = v82->__r_.__value_.__r.__words[0];
          if (!v82)
          {
            goto LABEL_84;
          }
        }
      }

      std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v140);
      v84 = v163[0];
      v163[0] = 0;
      if (v84)
      {
        (*(*v84 + 8))(v84);
      }

      ++v58;
      v56 = v116;
      if (v58 == v57)
      {
        goto LABEL_93;
      }
    }

    if ((SBYTE7(v169) & 0x80u) == 0)
    {
      v95 = &v168;
    }

    else
    {
      v95 = v168;
    }

    if ((SBYTE7(v169) & 0x80u) == 0)
    {
      v96 = SBYTE7(v169);
    }

    else
    {
      v96 = *(&v168 + 1);
    }

    v97 = objc_alloc(MEMORY[0x277CCACA8]);
    v98 = [v97 initWithBytes:v95 length:v96 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v99 = GTShaderDebuggerMDSerializerError(1u, v98);
    v100 = v99;

LABEL_113:
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v140);
    v102 = v163[0];
    v163[0] = 0;
    if (v102)
    {
      (*(*v102 + 8))(v102);
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(&__p);
    p_src = &__src;
    std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&p_src);
    llvm::LLVMContext::~LLVMContext(v153);
    llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v173);
    if (v171)
    {
      *(&v171 + 1) = v171;
      operator delete(v171);
    }

    if (SHIBYTE(v170) < 0)
    {
      operator delete(*(&v169 + 1));
    }

    if (SBYTE7(v169) < 0)
    {
      operator delete(v168);
    }

    if (SBYTE7(v166) < 0)
    {
      operator delete(v165);
    }

    v103 = v99;
    v104 = [v103 localizedDescription];
    v105 = v104;
    v106 = @"Unknown error";
    if (v104)
    {
      v106 = v104;
    }

    v107 = v106;

    v108 = [@"Failed to process debug information: " stringByAppendingString:v107];

    if (v110)
    {
      *v110 = GTShaderDebuggerMakeError(4u, v108, @"Try updating your target device to the latest OS version or try matching your deployment target version to the target device", 0, 0);
    }

    v7 = v111;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_92:

  v85 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_24D96BC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&a62);
  v73 = STACK[0x590];
  STACK[0x590] = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(&a71);
  a62 = &STACK[0x218];
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&a62);
  llvm::LLVMContext::~LLVMContext(&STACK[0x230]);
  llvm::SMDiagnostic::~SMDiagnostic(&STACK[0x610]);

  _Unwind_Resume(a1);
}

uint64_t GTShaderDebuggerMakePSOCompute(uint64_t a1, void *a2, uint64_t a3, apr_allocator_t *a4)
{
  v125 = *MEMORY[0x277D85DE8];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v5 = *a1;
  v99 = *(*a1 + 8);
  v97 = [v99 defaultDevice];
  v6 = *(*v5 + 40);
  v7 = [*(a1 + 96) mutableCopy];
  v8 = v5[2840];
  if (v8 - 95) <= 0xA && ((0x409u >> (v8 - 95)))
  {
    v9 = 14;
LABEL_6:
    v10 = *&v5[v9 + 48];
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = 16;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:
  v95 = v10;
  Object = GTMTLSMContext_getObject(**(*v5 + 40), v10, **(a1 + 88));
  memset(v118, 0, 512);
  GTMTLSMComputePipelineState_computePipelineDescriptor(v6, Object, v118, newpool);
  v12 = [v99 computePipelineDescriptorMap];
  v102 = [v12 mutableCopy];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v114 objects:v124 count:16];
  v98 = a1;
  if (v13)
  {
    v14 = *v115;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v115 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v114 + 1) + 8 * i);
        v17 = [obj objectForKeyedSubscript:v16];
        if (([v17 conformsToProtocol:&unk_2860F8DC8] & 1) != 0 || objc_msgSend(v17, "conformsToProtocol:", &unk_2860F8EF0))
        {
          [v102 setObject:v17 forKeyedSubscript:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v114 objects:v124 count:16];
    }

    while (v13);
  }

  v100 = MakeMTLComputePipelineDescriptorWithoutResourceIndex(v118, v102);
  v18 = [v99 computePipelineStateForKey:v95];
  [v100 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(v18, "maxTotalThreadsPerThreadgroup")}];

  v19 = a1;
  if ((GT_SUPPORT_0 & 0x10000) != 0)
  {
    [v100 setDriverCompilerOptions:&unk_2860D62E0 & ((*(a1 + 208) << 59) >> 63)];
  }

  v20 = *(a1 + 208);
  if ((v20 & 4) != 0)
  {
    v21 = [v100 computeFunction];
    v22 = [v100 preloadedLibraries];
    v23 = _GetPreloadedDylibsForGlobalRelocation(a1, v21, v22, a2);

    if (!v23)
    {
      goto LABEL_34;
    }

    [v100 setPreloadedLibraries:v23];
    v24 = [v23 count];
    if (v120 <= 1u)
    {
      v25 = 1;
    }

    else
    {
      v25 = v120;
    }

    [v100 setMaxCallStackDepth:v24 + v25];

    v19 = a1;
    v20 = *(a1 + 208);
  }

  if ((v20 & 2) == 0)
  {
    goto LABEL_31;
  }

  v26 = [v100 preloadedLibraries];
  v23 = _GetPreloadedDylibsForGlobalBinding(v19, v26, a2);

  if (v23)
  {
    [v100 setPreloadedLibraries:v23];
    v27 = [v23 count];
    if (v120 <= 1u)
    {
      v28 = 1;
    }

    else
    {
      v28 = v120;
    }

    [v100 setMaxCallStackDepth:v27 + v28];

    v20 = *(a1 + 208);
LABEL_31:
    if ((v20 & 6) == 0)
    {
      v29 = [v99 computePipelineDescriptorMap];
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v119];
      v31 = [v29 objectForKeyedSubscript:v30];

      if (v31)
      {
        v32 = [v97 loadDynamicLibrariesForFunction:v31 insertLibraries:MEMORY[0x277CBEBF8] error:0];
      }

      else
      {
        v32 = 0;
      }

      if ([v32 count])
      {
        v34 = [v100 preloadedLibraries];
        v35 = [v34 mutableCopy];

        [v35 addObjectsFromArray:v32];
        v36 = [v35 copy];
        [v100 setPreloadedLibraries:v36];

        v37 = [v35 count];
        if (v120 <= 1u)
        {
          v38 = 1;
        }

        else
        {
          v38 = v120;
        }

        [v100 setMaxCallStackDepth:v37 + v38];
      }
    }

    if ([v97 supportsFamily:1009])
    {
      [v100 setMaxCallStackDepth:{objc_msgSend(v100, "maxCallStackDepth") + 1}];
    }

    v94 = [v99 computePipelineDescriptorMap];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v119];
    v93 = [v94 objectForKeyedSubscript:v39];

    v40 = [v93 stageInputAttributes];
    v92 = v40;
    if ([v40 count])
    {
      v41 = [v100 stageInputDescriptor];
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v101 = v40;
      v42 = [v101 countByEnumeratingWithState:&v110 objects:v123 count:16];
      if (v42)
      {
        v40 = 0;
        v43 = *v111;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v111 != v43)
            {
              objc_enumerationMutation(v101);
            }

            v45 = *(*(&v110 + 1) + 8 * j);
            if (([v45 isActive] & 1) == 0)
            {
              v46 = [v45 attributeIndex];
              v47 = [v41 attributes];
              v48 = [v47 objectAtIndexedSubscript:v46];
              v49 = [v48 format] == 0;

              if (v49)
              {
                v50 = [v45 attributeType] - 3;
                if (v50 > 0x4A)
                {
                  v51 = 46;
                }

                else
                {
                  v51 = qword_24DA91178[v50];
                }

                v52 = [v41 attributes];
                v53 = [v52 objectAtIndexedSubscript:v46];
                [v53 setFormat:v51];

                v54 = [v41 attributes];
                v55 = [v54 objectAtIndexedSubscript:v46];
                [v55 setBufferIndex:v40];

                v56 = [v41 attributes];
                v57 = [v56 objectAtIndexedSubscript:v46];
                [v57 setOffset:0];

                v58 = [v41 layouts];
                v59 = [v58 objectAtIndexedSubscript:v40];
                [v59 setStride:1];

                ++v40;
              }
            }
          }

          v42 = [v101 countByEnumeratingWithState:&v110 objects:v123 count:16];
        }

        while (v42);
      }
    }

    v108 = 0;
    v109 = 0;
    v60 = [v97 newComputePipelineStateWithDescriptor:v100 options:0x200000 reflection:&v109 error:&v108];
    v61 = v109;
    v62 = v108;
    v33 = v62;
    if (v60 || [v62 code] != 3)
    {
      v63 = 0;
    }

    else
    {
      v40 = [v33 domain];
      if ([v40 containsString:@"CompilerError"])
      {

        goto LABEL_72;
      }

      v63 = 1;
    }

    if ([v33 code] != 4)
    {
      if (v63)
      {
LABEL_75:
      }

LABEL_76:
      if (v60)
      {
        goto LABEL_77;
      }

      if ([v33 code] == 2)
      {
        v81 = [v33 domain];
        if ([v81 containsString:@"AGXMetal"])
        {
          v82 = [v33 description];
          v83 = [v82 localizedCaseInsensitiveContainsString:@"maxTotalThreadsPerThreadgroup"];

          if (v83)
          {
            [v100 setMaxTotalThreadsPerThreadgroup:v121];
            v104 = v33;
            v105 = v61;
            v60 = [v97 newComputePipelineStateWithDescriptor:v100 options:0x200000 reflection:&v105 error:&v104];
            v84 = v105;

            v85 = v104;
            v61 = v84;
            v33 = v85;
            if (v60)
            {
LABEL_77:
              v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v95, v92}];
              [obj setObject:v60 forKeyedSubscript:v69];

              v70 = [v61 traceBufferIndex];
              if (v70 == -1)
              {
                CurrentEncoderFreeBindingSlotIndex = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                CurrentEncoderFreeBindingSlotIndex = v70;
              }

              if ((*(v98 + 208) & 2) != 0)
              {
                CurrentEncoderFreeBindingSlotIndex = _GetCurrentEncoderFreeBindingSlotIndex((v98 + 8));
              }

              if (CurrentEncoderFreeBindingSlotIndex != 0x7FFFFFFFFFFFFFFFLL || (*(v98 + 208) & 4) != 0)
              {
                v72 = [obj copy];
                v73 = *(v98 + 96);
                *(v98 + 96) = v72;

                v74 = [v61 constantSamplerUniqueIdentifiers];
                v75 = [v61 constantSamplerDescriptors];
                v76 = _MakeConstantSamplers(v74, v75);
                v77 = *(v98 + 136);
                *(v98 + 136) = v76;

                v78 = [v61 bindings];
                v79 = _MakeBindings(v78);
                v80 = *(v98 + 128);
                *(v98 + 128) = v79;

                *(v98 + 144) = CurrentEncoderFreeBindingSlotIndex;
                v23 = 1;
                goto LABEL_104;
              }

              if (a2)
              {
                GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up GPU data buffer", 0, 0, 0);
                *a2 = v23 = 0;
LABEL_104:

                goto LABEL_105;
              }

LABEL_103:
              v23 = 0;
              goto LABEL_104;
            }
          }
        }

        else
        {
        }
      }

      if (a2)
      {
        v86 = [v33 description];
        if ([v86 localizedCaseInsensitiveContainsString:@"Undefined symbol"])
        {
          v87 = v33;
          *a2 = v33;
        }

        else
        {
          if ((*(v98 + 208) & 0x10) != 0)
          {
            v88 = 4;
          }

          else
          {
            v88 = 2;
          }

          v89 = GTShaderDebuggerMakeError(v88, @"Failed to set up compute pipeline state for debugging", 0, v33, 0);
          *a2 = v89;
        }
      }

      v60 = 0;
      goto LABEL_103;
    }

    v64 = [v33 domain];
    v65 = [v64 containsString:@"AGXMetal"];

    if (v63)
    {

      if ((v65 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (!v65)
    {
      goto LABEL_76;
    }

LABEL_72:
    if ((GT_SUPPORT_0 & 0x4000) != 0 && [v100 maxTotalThreadsPerThreadgroup] == 1024)
    {
      [v100 setMaxTotalThreadsPerThreadgroup:512];
      v106 = v33;
      v107 = v61;
      v66 = [v97 newComputePipelineStateWithDescriptor:v100 options:0x200000 reflection:&v107 error:&v106];
      v67 = v107;

      v68 = v106;
      v40 = v60;
      v33 = v68;
      v61 = v67;
      v60 = v66;
      goto LABEL_75;
    }

    goto LABEL_76;
  }

LABEL_34:
  v33 = 0;
LABEL_105:

  apr_pool_destroy(newpool);
  v90 = *MEMORY[0x277D85DE8];
  return v23;
}

id _GetPreloadedDylibsForGlobalRelocation(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(*a1 + 8);
  v10 = [v9 defaultDevice];
  v11 = *(a1 + 112);
  if (![v11 count])
  {
    if (a4)
    {
      if ((*(a1 + 208) & 0x10) != 0)
      {
        v18 = 4;
      }

      else
      {
        v18 = 1;
      }

      GTShaderDebuggerMakeError(v18, @"Internal error: debug dylib not found", 0, 0, 0);
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_44;
  }

  v51 = a4;
  v52 = a1;
  v54 = 0;
  v12 = v10;
  v13 = objc_alloc_init(MEMORY[0x277CD6D10]);
  [v13 setLibraryType:1];
  [v13 setLanguageVersion:131076];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"@executable_path/%@.metallib", @"libtracebuffer_gr"];
  [v13 setInstallName:v14];

  [v13 setCompileSymbolVisibility:1];
  [v13 setAdditionalCompilerArguments:@"-fexternally-initialized"];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"extern device void * constant trace_buffer [[ clang::externally_initialized ]] __asm(trace.buffer)\nextern C {\n  [[gnu::visibility(default)]] device void *__tracepoint_get_trace_buffer() {\n    return trace_buffer;\n  }\n}\n"];;
  v16 = [v12 newLibraryWithSource:v15 options:v13 error:&v54];

  if (v16)
  {
    v17 = [v12 newDynamicLibrary:v16 error:&v54];
  }

  else
  {
    v17 = 0;
  }

  v20 = v54;
  if (!v17)
  {
    if (v51)
    {
      if ((*(v52 + 208) & 0x10) != 0)
      {
        v39 = 4;
      }

      else
      {
        v39 = 1;
      }

      GTShaderDebuggerMakeError(v39, @"Internal error: debug dylib setup failed", 0, v20, 0);
      *v51 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    v37 = v20;
    goto LABEL_43;
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v21 addObjectsFromArray:v8];
  [v21 addObjectsFromArray:v11];
  v50 = v17;
  [v21 addObject:v17];
  v22 = [objc_alloc(MEMORY[0x277CD6CB8]) initWithSymbolName:@"trace.buffer" buffer:*(v52 + 184) offset:0];
  v48 = v20;
  v53 = v20;
  v23 = v22;
  v49 = v21;
  v24 = [v12 loadDynamicLibrariesForFunction:v7 insertLibraries:v21 error:&v53];
  v19 = v24;
  if (!v24)
  {
    goto LABEL_27;
  }

  v44 = v11;
  v45 = v10;
  v46 = v9;
  v47 = v8;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v43 = v24;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = v26;
  v28 = *v56;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v56 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v55 + 1) + 8 * i);
      v31 = [v30 installName];
      if ([v31 containsString:@"libtracepoint"])
      {
      }

      else
      {
        v32 = [v30 installName];
        v33 = [v32 containsString:@"libtracebuffer_gr"];

        if (!v33)
        {
          continue;
        }
      }

      v34 = [v30 relocations];
      v35 = v34;
      if (v34)
      {
        [v34 arrayByAddingObject:v23];
      }

      else
      {
        v59 = v23;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
      }
      v36 = ;
      [v30 setRelocations:v36];
    }

    v27 = [v25 countByEnumeratingWithState:&v55 objects:v60 count:16];
  }

  while (v27);
LABEL_26:

  v8 = v47;
  v10 = v45;
  v9 = v46;
  v19 = v43;
  v11 = v44;
LABEL_27:

  v37 = v53;
  if (v19)
  {
    v38 = v19;
  }

  else if (v51)
  {
    if ((*(v52 + 208) & 0x10) != 0)
    {
      v40 = 4;
    }

    else
    {
      v40 = 1;
    }

    *v51 = GTShaderDebuggerMakeError(v40, @"Internal error: could not load debug dylib", 0, v37, 0);
  }

  v17 = v50;
LABEL_43:

LABEL_44:
  v41 = *MEMORY[0x277D85DE8];

  return v19;
}

id _GetPreloadedDylibsForGlobalBinding(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*a1 + 8);
  v7 = [v6 defaultDevice];
  v8 = *(a1 + 112);
  if ([v8 count])
  {
    CurrentEncoderFreeBindingSlotIndex = _GetCurrentEncoderFreeBindingSlotIndex((a1 + 8));
    if (CurrentEncoderFreeBindingSlotIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = CurrentEncoderFreeBindingSlotIndex;
      v27 = 0;
      v14 = v7;
      v15 = objc_alloc_init(MEMORY[0x277CD6D10]);
      [v15 setLibraryType:1];
      [v15 setLanguageVersion:196610];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"@executable_path/%@.metallib", @"libtracebuffer_gb"];
      [v15 setInstallName:v16];

      [v15 setCompileSymbolVisibility:1];
      v28 = @"GLOBAL_BINDING";
      v17 = [MEMORY[0x277CCABB0] numberWithInt:v13];
      v29[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      [v15 setPreprocessorMacros:v18];

      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"device void * constant trace_buffer [[ buffer(GLOBAL_BINDING) ]]\nextern C {\n  [[gnu::visibility(default)]] device void *__tracepoint_get_trace_buffer() {\n    return trace_buffer;\n  }\n}\n"];;
      v20 = [v14 newLibraryWithSource:v19 options:v15 error:&v27];

      if (v20)
      {
        v21 = [v14 newDynamicLibrary:v20 error:&v27];
      }

      else
      {
        v21 = 0;
      }

      v22 = v27;
      if (v21)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v23 addObjectsFromArray:v5];
        [v23 addObjectsFromArray:v8];
        [v23 addObject:v21];
        v12 = [v23 copy];
      }

      else if (a3)
      {
        if ((*(a1 + 208) & 0x10) != 0)
        {
          v24 = 4;
        }

        else
        {
          v24 = 1;
        }

        GTShaderDebuggerMakeError(v24, @"Internal error: debug dylib setup failed", 0, v22, 0);
        *a3 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (a3)
    {
      v10 = @"Unable to debug pipeline - no available buffer binding slot";
      v11 = 4;
LABEL_10:
      GTShaderDebuggerMakeError(v11, v10, 0, 0, 0);
      *a3 = v12 = 0;
      goto LABEL_24;
    }
  }

  else if (a3)
  {
    if ((*(a1 + 208) & 0x10) != 0)
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    v10 = @"Internal error: debug dylib not found";
    goto LABEL_10;
  }

  v12 = 0;
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t _GetCurrentEncoderFreeBindingSlotIndex(void *a1)
{
  v2 = 30;
  while (1)
  {
    v3 = a1[3];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v2];
    v5 = [v3 objectForKeyedSubscript:v4];
    if (!v5)
    {
      break;
    }

LABEL_7:

LABEL_8:
    v2 = (v2 - 1);
    if (v2 == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v6 = a1[2];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v7 = [v6 objectForKeyedSubscript:v5];
  if (v7)
  {
LABEL_6:

    goto LABEL_7;
  }

  v8 = a1[6];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v10 = [v8 objectForKeyedSubscript:v9];
  if (v10)
  {

    v7 = 0;
    goto LABEL_6;
  }

  v11 = a1[7];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    goto LABEL_8;
  }

  if ((v2 & 0x80000000) == 0)
  {
    return v2;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

id _MakeConstantSamplers(void *a1, void *a2)
{
  v43[16] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6 = [v4 count];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v6];
    v8 = v7;
    if (v6)
    {
      v9 = 0;
      v25 = v6;
      v26 = v7;
      do
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        memset(v38, 0, sizeof(v38));
        v10 = [v4 objectAtIndexedSubscript:v9];
        MakeGTMTLSamplerDescriptor(v38, v10);

        v37 = [v3 objectAtIndexedSubscript:v9];
        v42[0] = @"borderColor";
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v40)];
        v43[0] = v36;
        v42[1] = @"compareFunction";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE7(v40)];
        v43[1] = v35;
        v42[2] = @"lodMinClamp";
        LODWORD(v11) = v40;
        v34 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
        v43[2] = v34;
        v42[3] = @"lodMaxClamp";
        LODWORD(v12) = HIDWORD(v39);
        v33 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
        v43[3] = v33;
        v42[4] = @"lodAverage";
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE10(v40)];
        v43[4] = v32;
        v42[5] = @"lodBias";
        LODWORD(v13) = DWORD2(v39);
        v31 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
        v43[5] = v31;
        v42[6] = @"minFilter";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE12(v40)];
        v43[6] = v30;
        v42[7] = @"magFilter";
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE11(v40)];
        v43[7] = v29;
        v42[8] = @"mipFilter";
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE13(v40)];
        v43[8] = v28;
        v42[9] = @"maxAnisotropy";
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v38[0] + 1)];
        v43[9] = v27;
        v42[10] = @"normalizedCoordinates";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE14(v40)];
        v43[10] = v14;
        v42[11] = @"pixelFormat";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v40)];
        v43[11] = v15;
        v42[12] = @"reductionMode";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
        v43[12] = v16;
        v42[13] = @"rAddressMode";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v40)];
        v43[13] = v17;
        v42[14] = @"sAddressMode";
        [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v41)];
        v19 = v18 = v4;
        v43[14] = v19;
        v42[15] = @"tAddressMode";
        [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(v41)];
        v21 = v20 = v3;
        v43[15] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:16];

        v3 = v20;
        v4 = v18;

        v8 = v26;
        [v26 setObject:v22 forKeyedSubscript:v37];

        ++v9;
      }

      while (v25 != v9);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

id _MakeBindings(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = @"__resource_tracking_impl_trace_buffer";
    v6 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 name];
        if (([v9 isEqualToString:@"trace.buffer"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", v5) & 1) == 0)
        {
          v24[0] = @"index";
          v10 = v2;
          v11 = v5;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "index")}];
          v25[0] = v12;
          v24[1] = @"type";
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
          v25[1] = v13;
          v24[2] = @"used";
          v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isUsed")}];
          v24[3] = @"name";
          v25[2] = v14;
          v25[3] = v9;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
          [v19 addObject:v15];

          v5 = v11;
          v2 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  v16 = [v19 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t GTShaderDebuggerMakePSORender(id *a1, void *a2)
{
  v243 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 1);
  v218 = [v5 defaultDevice];
  v6 = [a1[24] objectForKeyedSubscript:@"ROI"];
  v7 = [v6 objectForKeyedSubscript:@"Type"];
  v215 = [v7 integerValue];

  v8 = [a1[12] mutableCopy];
  v9 = v4[2840];
  v217 = a2;
  if (v9 - 95) <= 0xA && ((0x409u >> (v9 - 95)))
  {
    v10 = 28;
LABEL_6:
    v11 = *&v4[v10 + 48];
    goto LABEL_7;
  }

  if (v9)
  {
    v10 = 2150;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:
  v219 = a1;
  v214 = v11;
  Object = GTMTLSMContext_getObject(**(**a1 + 40), v11, *a1[11]);
  v216 = v5;
  v13 = [v5 renderPipelineDescriptorMap];
  v14 = [v13 mutableCopy];

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v237 objects:v242 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v238;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v238 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v237 + 1) + 8 * i);
        v21 = [v15 objectForKeyedSubscript:v20];
        if (([v21 conformsToProtocol:&unk_2860F8DC8] & 1) != 0 || objc_msgSend(v21, "conformsToProtocol:", &unk_2860F8EF0))
        {
          [v14 setObject:v21 forKeyedSubscript:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v237 objects:v242 count:16];
    }

    while (v17);
  }

  v22 = Object[8];
  if (!v22)
  {
    v42 = Object[9];
    v24 = v216;
    if (v42)
    {
      v43 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(Object[9], v14);
      [v43 setMaxTotalThreadsPerObjectThreadgroup:*(v42 + 406)];
      [v43 setMaxTotalThreadsPerMeshThreadgroup:*(v42 + 404)];
      v44 = *(v42 + 336);
      v231 = *(v42 + 320);
      v232 = v44;
      v213 = v43;
      [v43 setMaxThreadgroupsPerMeshGrid:&v231];
      if ((GT_SUPPORT_0 & 0x8000) != 0)
      {
        [v43 setDriverCompilerOptions:&unk_2860D6308 & ((v219[26] << 59) >> 63)];
      }

      v45 = [v216 renderPipelineDescriptorMap];
      if (v215 == 2)
      {
        v46 = _ObjectArrayWithMap(*(v42 + 272), *(v42 + 280), v45);
        v47 = [v213 objectLinkedFunctions];
        [v47 setFunctions:v46];

        v48 = _ObjectArrayWithMap(*(v42 + 304), *(v42 + 312), v45);
        v49 = [v213 objectLinkedFunctions];
        [v49 setPrivateFunctions:v48];

        v50 = _ObjectArrayWithMap(*(v42 + 256), *(v42 + 264), v45);
        v51 = [v213 objectLinkedFunctions];
        [v51 setBinaryFunctions:v50];

        v52 = _ObjectArrayWithMap(*(v42 + 208), *(v42 + 216), v45);
        v53 = [v213 meshLinkedFunctions];
        [v53 setFunctions:v52];

        v54 = _ObjectArrayWithMap(*(v42 + 240), *(v42 + 248), v45);
        v55 = [v213 meshLinkedFunctions];
        [v55 setPrivateFunctions:v54];

        v56 = _ObjectArrayWithMap(*(v42 + 192), *(v42 + 200), v45);
        v57 = [v213 meshLinkedFunctions];
        [v57 setBinaryFunctions:v56];

        v59 = v219 + 26;
        v58 = v219[26];
        if ((v58 & 4) == 0)
        {
          v60 = 0;
          if ((v58 & 2) == 0)
          {
            v61 = 344;
            v24 = v216;
            goto LABEL_117;
          }

          goto LABEL_99;
        }

        v84 = v45;
        v85 = [v213 fragmentFunction];
        v86 = [v213 fragmentPreloadedLibraries];
      }

      else
      {
        if (v215 == 6)
        {
          v109 = _ObjectArrayWithMap(*(v42 + 272), *(v42 + 280), v45);
          v110 = [v213 objectLinkedFunctions];
          [v110 setFunctions:v109];

          v111 = _ObjectArrayWithMap(*(v42 + 304), *(v42 + 312), v45);
          v112 = [v213 objectLinkedFunctions];
          [v112 setPrivateFunctions:v111];

          v113 = _ObjectArrayWithMap(*(v42 + 256), *(v42 + 264), v45);
          v114 = [v213 objectLinkedFunctions];
          [v114 setBinaryFunctions:v113];

          v115 = _ObjectArrayWithMap(*(v42 + 144), *(v42 + 152), v45);
          v116 = [v213 fragmentLinkedFunctions];
          [v116 setFunctions:v115];

          v117 = _ObjectArrayWithMap(*(v42 + 176), *(v42 + 184), v45);
          v118 = [v213 fragmentLinkedFunctions];
          [v118 setPrivateFunctions:v117];

          v119 = _ObjectArrayWithMap(*(v42 + 128), *(v42 + 136), v45);
          v120 = [v213 fragmentLinkedFunctions];
          [v120 setBinaryFunctions:v119];

          v59 = v219 + 26;
          v83 = v219[26];
          if ((v83 & 4) == 0)
          {
            v60 = 1;
            goto LABEL_97;
          }

          v84 = v45;
          v85 = [v213 meshFunction];
          v121 = [v213 meshPreloadedLibraries];
          v60 = 1;
          goto LABEL_79;
        }

        if (v215 == 5)
        {
          v71 = _ObjectArrayWithMap(*(v42 + 208), *(v42 + 216), v45);
          v72 = [v213 meshLinkedFunctions];
          [v72 setFunctions:v71];

          v73 = _ObjectArrayWithMap(*(v42 + 240), *(v42 + 248), v45);
          v74 = [v213 meshLinkedFunctions];
          [v74 setPrivateFunctions:v73];

          v75 = _ObjectArrayWithMap(*(v42 + 192), *(v42 + 200), v45);
          v76 = [v213 meshLinkedFunctions];
          [v76 setBinaryFunctions:v75];

          v77 = _ObjectArrayWithMap(*(v42 + 144), *(v42 + 152), v45);
          v78 = [v213 fragmentLinkedFunctions];
          [v78 setFunctions:v77];

          v79 = _ObjectArrayWithMap(*(v42 + 176), *(v42 + 184), v45);
          v80 = [v213 fragmentLinkedFunctions];
          [v80 setPrivateFunctions:v79];

          v81 = _ObjectArrayWithMap(*(v42 + 128), *(v42 + 136), v45);
          v82 = [v213 fragmentLinkedFunctions];
          [v82 setBinaryFunctions:v81];
        }

        v59 = v219 + 26;
        v83 = v219[26];
        if ((v83 & 4) == 0)
        {
          v60 = 0;
          goto LABEL_97;
        }

        v84 = v45;
        v85 = [v213 objectFunction];
        v86 = [v213 objectPreloadedLibraries];
      }

      v121 = v86;
      v60 = 0;
LABEL_79:
      v122 = _GetPreloadedDylibsForGlobalRelocation(v219, v85, v121, v217);
      if (v122)
      {
        v123 = v122;
        if (v215 == 2)
        {
          [v213 setFragmentPreloadedLibraries:v122];
          [v213 setMaxFragmentCallStackDepth:{objc_msgSend(v123, "count") + 1}];
        }

        else if (v60)
        {
          [v213 setMeshPreloadedLibraries:v122];
          [v213 setMaxMeshCallStackDepth:{objc_msgSend(v123, "count") + 1}];
        }

        else
        {
          [v213 setObjectPreloadedLibraries:v122];
          [v213 setMaxObjectCallStackDepth:{objc_msgSend(v123, "count") + 1}];
        }

        v83 = *v59;
        v45 = v84;
LABEL_97:
        if ((v83 & 2) == 0)
        {
LABEL_112:
          v24 = v216;
          if ((v83 & 6) != 0)
          {
LABEL_146:
            if ([v218 supportsFamily:1009])
            {
              if (v215 == 2)
              {
                [v213 setMaxFragmentCallStackDepth:{objc_msgSend(v213, "maxFragmentCallStackDepth") + 1}];
              }

              else if (v60)
              {
                [v213 setMaxMeshCallStackDepth:{objc_msgSend(v213, "maxMeshCallStackDepth") + 1}];
              }

              else
              {
                [v213 setMaxObjectCallStackDepth:{objc_msgSend(v213, "maxObjectCallStackDepth") + 1}];
              }
            }

            v229 = 0;
            v230 = 0;
            v100 = &v229;
            v92 = [v218 newRenderPipelineStateWithMeshDescriptor:v213 options:0x200000 reflection:&v230 error:&v229];
            v150 = v230;
            goto LABEL_199;
          }

          v61 = 368;
          if (v60)
          {
            v61 = 360;
          }

          if (v215 == 2)
          {
            v61 = 344;
          }

LABEL_117:
          v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v42 + v61)];
          v133 = [v45 objectForKeyedSubscript:v132];

          if (v133)
          {
            v134 = [v218 loadDynamicLibrariesForFunction:v133 insertLibraries:MEMORY[0x277CBEBF8] error:0];
          }

          else
          {
            v134 = 0;
          }

          if ([v134 count])
          {
            v135 = v45;
            if (v215 == 2)
            {
              v136 = [v213 fragmentPreloadedLibraries];
              v137 = [v136 mutableCopy];

              [v137 addObjectsFromArray:v134];
              v138 = [v137 copy];
              [v213 setFragmentPreloadedLibraries:v138];

              [v213 setMaxFragmentCallStackDepth:{objc_msgSend(v137, "count") + 1}];
            }

            else if (v60)
            {
              v139 = [v213 meshPreloadedLibraries];
              v137 = [v139 mutableCopy];

              [v137 addObjectsFromArray:v134];
              v140 = [v137 copy];
              [v213 setMeshPreloadedLibraries:v140];

              [v213 setMaxMeshCallStackDepth:{objc_msgSend(v137, "count") + 1}];
            }

            else
            {
              v148 = [v213 objectPreloadedLibraries];
              v137 = [v148 mutableCopy];

              [v137 addObjectsFromArray:v134];
              v149 = [v137 copy];
              [v213 setObjectPreloadedLibraries:v149];

              [v213 setMaxObjectCallStackDepth:{objc_msgSend(v137, "count") + 1}];
            }

            v45 = v135;
          }

          goto LABEL_146;
        }

        if (v215 != 2)
        {
          if (v60)
          {
            v85 = [v213 meshPreloadedLibraries];
            v60 = 1;
LABEL_104:
            v130 = _GetPreloadedDylibsForGlobalBinding(v219, v85, v217);
            if (v130)
            {
              v131 = v130;
              if (v215 == 2)
              {
                [v213 setFragmentPreloadedLibraries:v130];
                [v213 setMaxFragmentCallStackDepth:{objc_msgSend(v131, "count") + 1}];
              }

              else if (v60)
              {
                [v213 setMeshPreloadedLibraries:v130];
                [v213 setMaxMeshCallStackDepth:{objc_msgSend(v131, "count") + 1}];
              }

              else
              {
                [v213 setObjectPreloadedLibraries:v130];
                [v213 setMaxObjectCallStackDepth:{objc_msgSend(v131, "count") + 1}];
              }

              v83 = *v59;
              goto LABEL_112;
            }

            v24 = v216;
            goto LABEL_140;
          }

          v129 = [v213 objectPreloadedLibraries];
LABEL_103:
          v85 = v129;
          goto LABEL_104;
        }

LABEL_99:
        v129 = [v213 fragmentPreloadedLibraries];
        goto LABEL_103;
      }

      v24 = v216;
LABEL_93:

      v128 = v213;
      v45 = v84;
LABEL_141:

      goto LABEL_142;
    }

    v62 = Object[6];
    if (!v62)
    {
      v96 = 0;
      goto LABEL_68;
    }

    v63 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(Object[6], v14);
    v45 = [v216 renderPipelineDescriptorMap];
    v213 = v63;
    if (v215 == 2)
    {
      v64 = _ObjectArrayWithMap(*(v62 + 135), *(v62 + 136), v45);
      v65 = [v63 vertexLinkedFunctions];
      [v65 setFunctions:v64];

      v66 = _ObjectArrayWithMap(*(v62 + 139), *(v62 + 140), v45);
      v67 = [v63 vertexLinkedFunctions];
      [v67 setPrivateFunctions:v66];

      v68 = _ObjectArrayWithMap(*(v62 + 133), *(v62 + 134), v45);
      v69 = [v63 vertexLinkedFunctions];
      [v69 setBinaryFunctions:v68];

      v70 = _ObjectArrayWithMap(*(v62 + 163), *(v62 + 164), v45);
      [v63 setVertexPreloadedLibraries:v70];
    }

    else
    {
      v102 = _ObjectArrayWithMap(*(v62 + 111), *(v62 + 112), v45);
      v103 = [v63 fragmentLinkedFunctions];
      [v103 setFunctions:v102];

      v104 = _ObjectArrayWithMap(*(v62 + 115), *(v62 + 116), v45);
      v105 = [v63 fragmentLinkedFunctions];
      [v105 setPrivateFunctions:v104];

      v106 = _ObjectArrayWithMap(*(v62 + 109), *(v62 + 110), v45);
      v107 = [v63 fragmentLinkedFunctions];
      [v107 setBinaryFunctions:v106];

      v70 = _ObjectArrayWithMap(*(v62 + 148), *(v62 + 149), v45);
      [v63 setFragmentPreloadedLibraries:v70];
    }

    if ((GT_SUPPORT_0 & 0x8000) != 0)
    {
      [v63 setDriverCompilerOptions:&unk_2860D6330 & ((v219[26] << 59) >> 63)];
    }

    v108 = v219[26];
    if ((v108 & 4) != 0)
    {
      v84 = v45;
      if (v215 == 2)
      {
        v85 = [v63 fragmentFunction];
        [v63 fragmentPreloadedLibraries];
      }

      else
      {
        v85 = [v63 vertexFunction];
        [v63 vertexPreloadedLibraries];
      }
      v121 = ;
      v124 = _GetPreloadedDylibsForGlobalRelocation(v219, v85, v121, v217);
      if (!v124)
      {
        goto LABEL_93;
      }

      v125 = v124;
      if (v215 == 2)
      {
        [v63 setFragmentPreloadedLibraries:v124];
        v126 = [v125 count];
        if (v62[672] <= 1u)
        {
          v127 = 1;
        }

        else
        {
          v127 = v62[672];
        }

        [v63 setMaxFragmentCallStackDepth:v126 + v127];
      }

      else
      {
        [v63 setVertexPreloadedLibraries:v124];
        v141 = [v125 count];
        if (v62[675] <= 1u)
        {
          v142 = 1;
        }

        else
        {
          v142 = v62[675];
        }

        [v63 setMaxVertexCallStackDepth:v141 + v142];
      }

      v108 = v219[26];
      v45 = v84;
    }

    if ((v108 & 2) != 0)
    {
      if (v215 == 2)
      {
        [v63 fragmentPreloadedLibraries];
      }

      else
      {
        [v63 vertexPreloadedLibraries];
      }
      v85 = ;
      v143 = _GetPreloadedDylibsForGlobalBinding(v219, v85, v217);
      if (!v143)
      {
LABEL_140:
        v128 = v213;
        goto LABEL_141;
      }

      v144 = v143;
      if (v215 == 2)
      {
        [v63 setFragmentPreloadedLibraries:v143];
        v145 = [v144 count];
        if (v62[672] <= 1u)
        {
          v146 = 1;
        }

        else
        {
          v146 = v62[672];
        }

        [v63 setMaxFragmentCallStackDepth:v145 + v146];
      }

      else
      {
        [v63 setVertexPreloadedLibraries:v143];
        v151 = [v144 count];
        if (v62[675] <= 1u)
        {
          v152 = 1;
        }

        else
        {
          v152 = v62[675];
        }

        [v63 setMaxVertexCallStackDepth:v151 + v152];
      }

      v108 = v219[26];
    }

    if ((v108 & 6) == 0)
    {
      v153 = 648;
      if (v215 == 2)
      {
        v153 = 588;
      }

      v154 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v62[v153]];
      v155 = v45;
      v156 = [v45 objectForKeyedSubscript:v154];

      if (v156)
      {
        v157 = [v218 loadDynamicLibrariesForFunction:v156 insertLibraries:MEMORY[0x277CBEBF8] error:0];
      }

      else
      {
        v157 = 0;
      }

      if ([v157 count])
      {
        if (v215 == 2)
        {
          v158 = [v63 fragmentPreloadedLibraries];
          v159 = [v158 mutableCopy];

          [v159 addObjectsFromArray:v157];
          v160 = [v157 copy];
          [v63 setFragmentPreloadedLibraries:v160];

          v161 = [v157 count];
          if (v62[672] <= 1u)
          {
            v162 = 1;
          }

          else
          {
            v162 = v62[672];
          }

          [v63 setMaxFragmentCallStackDepth:v161 + v162];
        }

        else
        {
          v163 = [v63 vertexPreloadedLibraries];
          v159 = [v163 mutableCopy];

          [v159 addObjectsFromArray:v157];
          v164 = [v157 copy];
          [v63 setVertexPreloadedLibraries:v164];

          v165 = [v157 count];
          if (v62[675] <= 1u)
          {
            v166 = 1;
          }

          else
          {
            v166 = v62[675];
          }

          [v63 setMaxVertexCallStackDepth:v165 + v166];
        }

        v24 = v216;
      }

      v45 = v155;
    }

    if ([v218 supportsFamily:1009])
    {
      if (v215 == 2)
      {
        [v63 setMaxFragmentCallStackDepth:{objc_msgSend(v63, "maxFragmentCallStackDepth") + 1}];
LABEL_198:
        v223 = 0;
        v224 = 0;
        v100 = &v223;
        v92 = [v218 newRenderPipelineStateWithDescriptor:v213 options:0x200000 reflection:&v224 error:{&v223, v210}];
        v150 = v224;
LABEL_199:
        v62 = v150;
        goto LABEL_200;
      }

      [v63 setMaxVertexCallStackDepth:{objc_msgSend(v63, "maxVertexCallStackDepth") + 1}];
    }

    if (v215 == 1)
    {
      v167 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v62 + 162)];
      v168 = [v45 objectForKeyedSubscript:v167];

      v169 = [v168 stageInputAttributes];
      if ([v169 count])
      {
        v211 = v168;
        v212 = v45;
        v222 = [v63 vertexDescriptor];
        v225 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v210 = v169;
        obj = v169;
        v170 = [obj countByEnumeratingWithState:&v225 objects:v241 count:16];
        if (v170)
        {
          v171 = v170;
          v172 = 0;
          v173 = *v226;
          do
          {
            v174 = 0;
            v220 = v171;
            do
            {
              if (*v226 != v173)
              {
                objc_enumerationMutation(obj);
              }

              v175 = *(*(&v225 + 1) + 8 * v174);
              if (([v175 isActive] & 1) == 0)
              {
                v176 = [v175 attributeIndex];
                v177 = [v222 attributes];
                v178 = [v177 objectAtIndexedSubscript:v176];
                v179 = [v178 format];

                if (!v179)
                {
                  v180 = [v175 attributeType];
                  if ((v180 - 3) > 0x4A)
                  {
                    v181 = 46;
                  }

                  else
                  {
                    v181 = qword_24DA91178[v180 - 3];
                  }

                  v182 = [v222 attributes];
                  v183 = [v182 objectAtIndexedSubscript:v176];
                  [v183 setFormat:v181];

                  v184 = [v222 attributes];
                  v185 = [v184 objectAtIndexedSubscript:v176];
                  [v185 setBufferIndex:v172];

                  v186 = [v222 attributes];
                  v187 = [v186 objectAtIndexedSubscript:v176];
                  [v187 setOffset:0];

                  v188 = [v222 layouts];
                  v189 = [v188 objectAtIndexedSubscript:v172];
                  [v189 setStride:1];

                  ++v172;
                }

                v171 = v220;
              }

              ++v174;
            }

            while (v171 != v174);
            v171 = [obj countByEnumeratingWithState:&v225 objects:v241 count:16];
          }

          while (v171);
        }

        v24 = v216;
        v168 = v211;
        v45 = v212;
        v169 = v210;
      }
    }

    goto LABEL_198;
  }

  v23 = MakeMTLTileRenderPipelineDescriptor(Object[8], v14);
  v24 = v216;
  v25 = [v216 renderPipelineStateForKey:v214];
  [v23 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(v25, "maxTotalThreadsPerThreadgroup")}];

  v26 = v219[26];
  if ((v26 & 4) != 0)
  {
    v27 = [v23 tileFunction];
    [v23 preloadedLibraries];
    v29 = v28 = v23;
    v30 = _GetPreloadedDylibsForGlobalRelocation(v219, v27, v29, v217);

    v23 = v28;
    if (!v30)
    {
LABEL_40:

LABEL_142:
      v147 = 0;
      v62 = 0;
      goto LABEL_230;
    }

    [v28 setPreloadedLibraries:v30];
    v31 = [v30 count];
    if (*(v22 + 146) <= 1u)
    {
      v32 = 1;
    }

    else
    {
      v32 = *(v22 + 146);
    }

    [v28 setMaxCallStackDepth:v31 + v32];

    v26 = v219[26];
  }

  if ((v26 & 2) == 0)
  {
    goto LABEL_30;
  }

  v33 = [v23 preloadedLibraries];
  v34 = _GetPreloadedDylibsForGlobalBinding(v219, v33, v217);

  if (!v34)
  {
    goto LABEL_40;
  }

  [v23 setPreloadedLibraries:v34];
  v35 = [v34 count];
  if (*(v22 + 146) <= 1u)
  {
    v36 = 1;
  }

  else
  {
    v36 = *(v22 + 146);
  }

  [v23 setMaxCallStackDepth:v35 + v36];

  v26 = v219[26];
LABEL_30:
  if ((v26 & 6) == 0)
  {
    v37 = v23;
    v38 = [v216 renderPipelineDescriptorMap];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v22 + 136)];
    v40 = [v38 objectForKeyedSubscript:v39];

    if (v40)
    {
      v41 = [v218 loadDynamicLibrariesForFunction:v40 insertLibraries:MEMORY[0x277CBEBF8] error:0];
    }

    else
    {
      v41 = 0;
    }

    if ([v41 count])
    {
      v87 = [v37 preloadedLibraries];
      v88 = [v87 mutableCopy];

      [v88 addObjectsFromArray:v41];
      v89 = [v88 copy];
      [v37 setPreloadedLibraries:v89];

      v24 = v216;
      v90 = [v88 count];
      if (*(v22 + 146) <= 1u)
      {
        v91 = 1;
      }

      else
      {
        v91 = *(v22 + 146);
      }

      [v37 setMaxCallStackDepth:v90 + v91];
    }

    v23 = v37;
  }

  if ([v218 supportsFamily:1009])
  {
    [v23 setMaxCallStackDepth:{objc_msgSend(v23, "maxCallStackDepth") + 1}];
  }

  v235 = 0;
  v236 = 0;
  v92 = [v218 newRenderPipelineStateWithTileDescriptor:v23 options:0x200000 reflection:&v236 error:&v235];
  v93 = v23;
  v62 = v236;
  v94 = v235;
  v95 = v94;
  if (v92)
  {
    v96 = v94;

    goto LABEL_202;
  }

  v213 = v93;
  if ([v94 code] == 2)
  {
    v97 = [v95 domain];
    if (![v97 containsString:@"AGXMetal"])
    {
      v96 = v95;
      v92 = 0;
      v24 = v216;
      goto LABEL_201;
    }

    v98 = [v95 description];
    v99 = [v98 localizedCaseInsensitiveContainsString:@"maxTotalThreadsPerThreadgroup"];

    if (v99)
    {
      [v213 setMaxTotalThreadsPerThreadgroup:*(v22 + 148)];
      v233 = v95;
      v234 = v62;
      v100 = &v233;
      v92 = [v218 newRenderPipelineStateWithTileDescriptor:v213 options:0x200000 reflection:&v234 error:&v233];
      v101 = v234;

      v62 = v101;
      v24 = v216;
      v45 = v95;
LABEL_200:
      v97 = v45;
      v96 = *v100;
LABEL_201:

      if (v92)
      {
LABEL_202:
        v190 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v214];
        [v15 setObject:v92 forKeyedSubscript:v190];

        v191 = [v62 traceBufferIndex];
        if (v191 == -1)
        {
          CurrentEncoderFreeBindingSlotIndex = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          CurrentEncoderFreeBindingSlotIndex = v191;
        }

        if ((v219[26] & 2) != 0)
        {
          CurrentEncoderFreeBindingSlotIndex = _GetCurrentEncoderFreeBindingSlotIndex(v219 + 1);
        }

        if (CurrentEncoderFreeBindingSlotIndex == 0x7FFFFFFFFFFFFFFFLL && (v219[26] & 4) == 0)
        {
          if (v217)
          {
            GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up GPU data buffer", 0, 0, 0);
            *v217 = v193 = 0;
LABEL_236:
            v147 = v96;
            goto LABEL_237;
          }

LABEL_224:
          v193 = 0;
          goto LABEL_236;
        }

        v194 = 0;
        if (v215 > 3)
        {
          if (v215 == 6)
          {
            v195 = [v62 meshBindings];
            goto LABEL_234;
          }

          if (v215 == 5)
          {
            v195 = [v62 objectBindings];
            goto LABEL_234;
          }

          if (v215 != 4)
          {
            goto LABEL_235;
          }
        }

        else if (v215 != 1)
        {
          if (v215 == 2)
          {
            v195 = [v62 fragmentBindings];
            goto LABEL_234;
          }

          if (v215 == 3)
          {
            v195 = [v62 tileBindings];
LABEL_234:
            v194 = v195;
          }

LABEL_235:
          v200 = [v15 copy];
          v201 = v219[12];
          v219[12] = v200;

          v202 = [v62 constantSamplerUniqueIdentifiers];
          v203 = [v62 constantSamplerDescriptors];
          v204 = _MakeConstantSamplers(v202, v203);
          v205 = v219[17];
          v219[17] = v204;

          v206 = _MakeBindings(v194);
          v207 = v219[16];
          v219[16] = v206;

          v219[18] = CurrentEncoderFreeBindingSlotIndex;
          v193 = 1;
          goto LABEL_236;
        }

        v195 = [v62 vertexBindings];
        goto LABEL_234;
      }

      goto LABEL_216;
    }
  }

  v96 = v95;

  v24 = v216;
LABEL_68:

LABEL_216:
  if (!v217)
  {
    v92 = 0;
    goto LABEL_224;
  }

  v147 = v96;
  v196 = [v96 description];
  if ([v196 localizedCaseInsensitiveContainsString:@"Undefined symbol"])
  {
    v197 = v96;
    *v217 = v96;
  }

  else
  {
    if ((v219[26] & 0x10) != 0)
    {
      v198 = 4;
    }

    else
    {
      v198 = 2;
    }

    v199 = GTShaderDebuggerMakeError(v198, @"Failed to set up render pipeline state for debugging", 0, v96, 0);
    *v217 = v199;
  }

LABEL_230:
  v92 = 0;
  v193 = 0;
LABEL_237:

  v208 = *MEMORY[0x277D85DE8];
  return v193;
}

id _ObjectArrayWithMap(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2]; a2; --a2)
  {
    v7 = *a1++;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    v9 = [v5 objectForKeyedSubscript:v8];

    if (v9)
    {
      [i addObject:v9];
    }
  }

  v10 = [i copy];

  return v10;
}

void GTShaderDebuggerJITResources(void *a1)
{
  v1 = a1;
  v185 = *MEMORY[0x277D85DE8];
  v124 = *(*a1 + 8);
  v123 = [v124 defaultDevice];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v142 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v1[3];
  v4 = v1[16];
  v131 = v1;
  v126 = v2;
  if ([v3 count] && objc_msgSend(v4, "count"))
  {
    [*(*v1 + 8) defaultDevice];
    v140 = v138 = v3;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v167 objects:&v171 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v168;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v168 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v167 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = [v11 firstObject];
          v13 = [v12 unsignedLongLongValue];

          if (v13)
          {
            v14 = [v11 lastObject];
            v15 = [v14 unsignedLongLongValue];

            if (v15)
            {
              *&v160 = MEMORY[0x277D85DD0];
              *(&v160 + 1) = 3221225472;
              *&v161 = ___MakeBytesBufferReplacementsForPipeline_block_invoke;
              *(&v161 + 1) = &unk_2796589C8;
              *&v162 = v10;
              v16 = [v4 gt_firstObjectPassingTest:&v160];
              if (v16)
              {
                v17 = [v140 newBufferWithBytes:v13 length:v15 options:0];
                [v142 setObject:v17 forKeyedSubscript:v10];
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v167 objects:&v171 count:16];
      }

      while (v7);
    }

    v1 = v131;
    v2 = v126;
    v3 = v138;
  }

  v18 = [v142 copy];

  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v151 objects:v166 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v152;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v152 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v151 + 1) + 8 * j);
        v25 = [v19 objectForKeyedSubscript:v24];
        [v2 setObject:v25 forKeyedSubscript:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v151 objects:v166 count:16];
    }

    while (v21);
  }

  v125 = v19;

  v143 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = v1[4];
  v27 = v1[16];
  v28 = *(v1 + 72);
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v29 = [v26 countByEnumeratingWithState:&v160 objects:&v171 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v161;
    v145 = v28 & 1;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v161 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v160 + 1) + 8 * k);
        v34 = [v26 objectForKeyedSubscript:v33];
        v35 = [v34 unsignedLongLongValue];

        if (!v35)
        {
          v159[0] = MEMORY[0x277D85DD0];
          v159[1] = 3221225472;
          v159[2] = ___MakeDummyBufferReplacementsForPipeline_block_invoke;
          v159[3] = &unk_2796589C8;
          v159[4] = v33;
          v36 = [v27 gt_firstObjectPassingTest:v159];
          v37 = v36;
          if (v36)
          {
            v38 = [v36 objectForKeyedSubscript:@"used"];
            v39 = [v38 BOOLValue];

            if (!v39 || v145)
            {
              v40 = [v37 objectForKeyedSubscript:@"index"];
              [v143 addObject:v40];
            }
          }
        }
      }

      v30 = [v26 countByEnumeratingWithState:&v160 objects:&v171 count:16];
    }

    while (v30);
  }

  if ([v143 count])
  {
    v41 = v131;
    v42 = *(*v131 + 8);
    v43 = [v42 defaultDevice];
    v44 = [v43 newBufferWithLength:1024 options:0];
    if (v44)
    {
      v45 = v44;
      v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v47 = v143;
      v48 = [v47 countByEnumeratingWithState:&v155 objects:&v167 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v156;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v156 != v50)
            {
              objc_enumerationMutation(v47);
            }

            [v46 setObject:v45 forKeyedSubscript:*(*(&v155 + 1) + 8 * m)];
          }

          v49 = [v47 countByEnumeratingWithState:&v155 objects:&v167 count:16];
        }

        while (v49);
      }

      v52 = [v46 copy];
      v53 = v125;
    }

    else
    {
      v52 = 0;
      v53 = v125;
    }

    v54 = v126;
  }

  else
  {
    v52 = 0;
    v41 = v131;
    v53 = v125;
    v54 = v126;
  }

  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v55 = v52;
  v56 = [v55 countByEnumeratingWithState:&v147 objects:v165 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v148;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v148 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v147 + 1) + 8 * n);
        v61 = [v53 objectForKeyedSubscript:v60];

        if (!v61)
        {
          v62 = [v55 objectForKeyedSubscript:v60];
          [v54 setObject:v62 forKeyedSubscript:v60];
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v147 objects:v165 count:16];
    }

    while (v57);
  }

  v63 = [v54 copy];
  v64 = v41[21];
  v41[21] = v63;

  v132 = *v41[11];
  v133 = *(**v41 + 40);
  v65 = v41[16];
  v66 = v41[7];
  v128 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v67 = v66;
  v141 = [v67 countByEnumeratingWithState:&v160 objects:&v167 count:16];
  if (v141)
  {
    v139 = *v161;
    v129 = v67;
    v130 = v55;
    v127 = v65;
    do
    {
      for (ii = 0; ii != v141; ++ii)
      {
        if (*v161 != v139)
        {
          objc_enumerationMutation(v67);
        }

        v69 = *(*(&v160 + 1) + 8 * ii);
        v70 = [v67 objectForKeyedSubscript:v69];
        v71 = [v70 unsignedLongLongValue];

        if (v71)
        {
          *&v155 = MEMORY[0x277D85DD0];
          *(&v155 + 1) = 3221225472;
          *&v156 = ___MakeVisibleFunctionTablesForPipeline_block_invoke;
          *(&v156 + 1) = &unk_2796589C8;
          v136 = v69;
          *&v157 = v69;
          v72 = [v65 gt_firstObjectPassingTest:&v155];
          if (v72)
          {
            Object = GTMTLSMContext_getObject(*v133, v71, v132);
            if (Object)
            {
              v74 = Object;
              if (*Object == 83)
              {
                v75 = v65;
                v134 = v72;
                v76 = v41;
                v77 = [v41[12] mutableCopy];
                v78 = v74[14];
                v79 = objc_alloc_init(MEMORY[0x277CD70A8]);
                [v79 setFunctionCount:*v78];
                v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74[17]];
                v81 = [v77 objectForKeyedSubscript:v80];

                v144 = v77;
                if (v81)
                {
                  v82 = [v81 newVisibleFunctionTableWithDescriptor:v79 stage:*(v74 + 176)];
                  v41 = v76;
                  v65 = v75;
                }

                else
                {
                  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74[16]];
                  v84 = [v77 objectForKeyedSubscript:v83];

                  if (v84)
                  {
                    v85 = [v84 newVisibleFunctionTableWithDescriptor:v79];
                  }

                  else
                  {
                    v85 = 0;
                  }

                  v41 = v76;

                  v55 = v130;
                  v65 = v75;
                  v82 = v85;
                }

                v87 = v82;
                if (v82)
                {
                  v88 = **v41;
                  v146 = *v41[11];
                  newpool = 0;
                  apr_pool_create_ex(&newpool, 0, 0, v86);
                  v171 = 0u;
                  v172 = 0;
                  v184 = 0;
                  v183 = 0u;
                  v182 = 0u;
                  v180 = 0u;
                  v181 = 0u;
                  v178 = 0u;
                  v179 = 0u;
                  v176 = 0u;
                  v174 = 0u;
                  v175 = 0u;
                  LODWORD(v171) = 83;
                  v173 = -1;
                  WORD5(v178) = 2;
                  v177 = 0xFFFFFFFFFFFFFFFFLL;
                  v184 = *v74[14];
                  v89 = 8 * v184;
                  v90 = apr_palloc(newpool, 8 * v184);
                  v91 = v90;
                  if (v90)
                  {
                    bzero(v90, v89);
                  }

                  *(&v183 + 1) = v91;
                  v92 = *(v88 + 8);
                  v159[0] = v74[1];
                  v93 = *(*(*find_entry(v92, v159, 8uLL, 0) + 32) + 32);
                  v137 = v87;
                  if (v93)
                  {
                    v94 = 0;
                    while (1)
                    {
                      v95 = atomic_load((v93 + 4));
                      v96 = v94 + (v95 >> 6) - 1;
                      if (v96 > 0)
                      {
                        break;
                      }

                      v93 = *(v93 + 40);
                      v94 = v96;
                      if (!v93)
                      {
                        v94 = v96;
                        goto LABEL_84;
                      }
                    }

                    v96 = 0;
LABEL_84:
                    v97 = v94 | (v96 << 32);
                  }

                  else
                  {
                    v97 = 0;
                  }

                  while (v93)
                  {
                    v98 = v93 + 64 + ((HIDWORD(v97) - v97) << 6);
                    if ((*(v98 + 15) & 8) == 0 || *v98 >= v146)
                    {
                      break;
                    }

                    GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(&v171, *(v88 + 16), v98);
                    v99 = atomic_load((v93 + 4));
                    v100 = v97 + (v99 >> 6);
                    v101 = (HIDWORD(v97) + 1);
                    v97 = (v101 << 32) | v97;
                    if (v101 == v100 - 1)
                    {
                      v97 = (v101 << 32) | v101;
                      v93 = *(v93 + 40);
                    }
                  }

                  v72 = v134;
                  if (v184)
                  {
                    for (jj = 0; v184 > jj; ++jj)
                    {
                      v103 = *(*(&v183 + 1) + 8 * jj);
                      if (!v103)
                      {
                        continue;
                      }

                      v104 = GTMTLSMContext_getObject(**(v88 + 40), *(*(&v183 + 1) + 8 * jj), v146);
                      if (!v104)
                      {
                        continue;
                      }

                      v105 = v104;
                      v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v103];
                      v107 = [v144 objectForKeyedSubscript:v106];
                      if (v107)
                      {
                        v108 = v107;
                      }

                      else
                      {
                        v109 = v144;
                        v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105[6]];
                        v108 = [v109 objectForKeyedSubscript:v110];

                        v135 = v108;
                        if (v108)
                        {
                          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105[9]];
                          v112 = [v109 objectForKeyedSubscript:v111];

                          if (v112)
                          {
                            v113 = *(v105 + 96);
                            v114 = v135;
                            v108 = [v112 functionHandleWithFunction:v135 stage:v113];
                          }

                          else
                          {
                            v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105[8]];
                            v116 = [v109 objectForKeyedSubscript:v115];

                            if (v116)
                            {
                              v108 = [v116 functionHandleWithFunction:v135];
                            }

                            else
                            {
                              v108 = 0;
                            }

                            v114 = v135;
                          }
                        }

                        else
                        {
                          v114 = 0;
                        }

                        v72 = v134;
                        if (!v108)
                        {
                          v108 = [*(*v131 + 8) functionHandleForKey:v103];
                          if (!v108)
                          {
                            continue;
                          }

                          goto LABEL_107;
                        }
                      }

                      v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v103];
                      [v144 setObject:v108 forKeyedSubscript:v117];

LABEL_107:
                      [v137 setFunction:v108 atIndex:jj];
                    }
                  }

                  apr_pool_destroy(newpool);
                  v118 = [v144 copy];
                  v41 = v131;
                  v119 = v131[12];
                  v131[12] = v118;

                  v87 = v137;
                  [v128 setObject:v137 forKeyedSubscript:v136];
                  v55 = v130;
                  v65 = v127;
                }

                else
                {

                  v72 = v134;
                }

                v67 = v129;
              }
            }
          }
        }
      }

      v141 = [v67 countByEnumeratingWithState:&v160 objects:&v167 count:16];
    }

    while (v141);
  }

  v120 = [v128 copy];
  v121 = v41[22];
  v41[22] = v120;

  v122 = *MEMORY[0x277D85DE8];
}

uint64_t GTShaderDebuggerEncodeResourcesRender(void *a1, void *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v4 = a1[12];
  v5 = *(*a1 + 11360);
  if (v5 - 95) <= 0xA && ((0x409u >> (v5 - 95)))
  {
    v6 = 112;
LABEL_6:
    v7 = *(*a1 + 192 + v6);
    goto LABEL_7;
  }

  if (v5)
  {
    v6 = 8600;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = *(*a1 + 8);
    v11 = v10;
    if (*(*a1 + 11360))
    {
      v12 = *(*a1 + 200);
    }

    else
    {
      v12 = 0;
    }

    v14 = [v10 renderCommandEncoderForKey:v12];
    v13 = v14 != 0;
    if (!v14)
    {
      if (a2)
      {
        *a2 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve render encoder", 0, 0, 0);
      }

      goto LABEL_99;
    }

    v15 = a1[18];
    v16 = [a1[24] objectForKeyedSubscript:@"ROI"];
    v17 = [v16 objectForKeyedSubscript:@"Type"];
    v18 = [v17 integerValue];

    if (v18 <= 3)
    {
      if (v18 != 1)
      {
        if (v18 == 2)
        {
          v75 = v14 != 0;
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 setFragmentBuffer:a1[23] offset:0 atIndex:v15];
          }

          v74 = v11;
          v21 = a1[21];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v54 = [v21 countByEnumeratingWithState:&v96 objects:v113 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v97;
            do
            {
              for (i = 0; i != v55; ++i)
              {
                if (*v97 != v56)
                {
                  objc_enumerationMutation(v21);
                }

                v58 = *(*(&v96 + 1) + 8 * i);
                v59 = [v21 objectForKeyedSubscript:{v58, v74}];
                [v14 setFragmentBuffer:v59 offset:0 atIndex:{objc_msgSend(v58, "unsignedIntegerValue")}];
              }

              v55 = [v21 countByEnumeratingWithState:&v96 objects:v113 count:16];
            }

            while (v55);
          }

          v28 = a1[22];
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v60 = [v28 countByEnumeratingWithState:&v92 objects:v112 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v93;
            do
            {
              for (j = 0; j != v61; ++j)
              {
                if (*v93 != v62)
                {
                  objc_enumerationMutation(v28);
                }

                v64 = *(*(&v92 + 1) + 8 * j);
                v65 = [v28 objectForKeyedSubscript:{v64, v74}];
                [v14 setFragmentVisibleFunctionTable:v65 atBufferIndex:{objc_msgSend(v64, "unsignedIntegerValue")}];
              }

              v61 = [v28 countByEnumeratingWithState:&v92 objects:v112 count:16];
            }

            while (v61);
          }

          goto LABEL_86;
        }

        if (v18 == 3)
        {
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 setTileBuffer:a1[23] offset:0 atIndex:v15];
          }

          v75 = v14 != 0;
          v74 = v11;
          v21 = a1[21];
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v22 = [v21 countByEnumeratingWithState:&v88 objects:v111 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v89;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v89 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v88 + 1) + 8 * k);
                v27 = [v21 objectForKeyedSubscript:{v26, v74}];
                [v14 setTileBuffer:v27 offset:0 atIndex:{objc_msgSend(v26, "unsignedIntegerValue")}];
              }

              v23 = [v21 countByEnumeratingWithState:&v88 objects:v111 count:16];
            }

            while (v23);
          }

          v28 = a1[22];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v29 = [v28 countByEnumeratingWithState:&v84 objects:v110 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v85;
            do
            {
              for (m = 0; m != v30; ++m)
              {
                if (*v85 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v84 + 1) + 8 * m);
                v34 = [v28 objectForKeyedSubscript:{v33, v74}];
                [v14 setTileVisibleFunctionTable:v34 atBufferIndex:{objc_msgSend(v33, "unsignedIntegerValue")}];
              }

              v30 = [v28 countByEnumeratingWithState:&v84 objects:v110 count:16];
            }

            while (v30);
          }

LABEL_86:

          v11 = v74;
LABEL_97:
          v13 = v75;
          goto LABEL_98;
        }

LABEL_69:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "GTShaderDebuggerEncodeResourcesRender", 4209, 4, "Unreachable", v19, v20, v74);
LABEL_98:
        [v14 useResource:a1[23] usage:{2, v74}];
        [v14 setRenderPipelineState:v9];
LABEL_99:

        goto LABEL_100;
      }

LABEL_40:
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v14 setVertexBuffer:a1[23] offset:0 atIndex:v15];
      }

      v75 = v14 != 0;
      v74 = v11;
      v21 = a1[21];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v35 = [v21 countByEnumeratingWithState:&v104 objects:v115 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v105;
        do
        {
          for (n = 0; n != v36; ++n)
          {
            if (*v105 != v37)
            {
              objc_enumerationMutation(v21);
            }

            v39 = *(*(&v104 + 1) + 8 * n);
            v40 = [v21 objectForKeyedSubscript:{v39, v74}];
            [v14 setVertexBuffer:v40 offset:0 atIndex:{objc_msgSend(v39, "unsignedIntegerValue")}];
          }

          v36 = [v21 countByEnumeratingWithState:&v104 objects:v115 count:16];
        }

        while (v36);
      }

      v28 = a1[22];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v41 = [v28 countByEnumeratingWithState:&v100 objects:v114 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v101;
        do
        {
          for (ii = 0; ii != v42; ++ii)
          {
            if (*v101 != v43)
            {
              objc_enumerationMutation(v28);
            }

            v45 = *(*(&v100 + 1) + 8 * ii);
            v46 = [v28 objectForKeyedSubscript:{v45, v74}];
            [v14 setVertexVisibleFunctionTable:v46 atBufferIndex:{objc_msgSend(v45, "unsignedIntegerValue")}];
          }

          v42 = [v28 countByEnumeratingWithState:&v100 objects:v114 count:16];
        }

        while (v42);
      }

      goto LABEL_86;
    }

    switch(v18)
    {
      case 6:
        v75 = v14 != 0;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v14 setMeshBuffer:a1[23] offset:0 atIndex:v15];
        }

        v47 = a1[21];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v48 = [v47 countByEnumeratingWithState:&v80 objects:v109 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v81;
          do
          {
            for (jj = 0; jj != v49; ++jj)
            {
              if (*v81 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v80 + 1) + 8 * jj);
              v53 = [v47 objectForKeyedSubscript:v52];
              [v14 setMeshBuffer:v53 offset:0 atIndex:{objc_msgSend(v52, "unsignedIntegerValue")}];
            }

            v49 = [v47 countByEnumeratingWithState:&v80 objects:v109 count:16];
          }

          while (v49);
        }

        break;
      case 5:
        v75 = v14 != 0;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v14 setObjectBuffer:a1[23] offset:0 atIndex:v15];
        }

        v47 = a1[21];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v66 = [v47 countByEnumeratingWithState:&v76 objects:v108 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v77;
          do
          {
            for (kk = 0; kk != v67; ++kk)
            {
              if (*v77 != v68)
              {
                objc_enumerationMutation(v47);
              }

              v70 = *(*(&v76 + 1) + 8 * kk);
              v71 = [v47 objectForKeyedSubscript:v70];
              [v14 setObjectBuffer:v71 offset:0 atIndex:{objc_msgSend(v70, "unsignedIntegerValue")}];
            }

            v67 = [v47 countByEnumeratingWithState:&v76 objects:v108 count:16];
          }

          while (v67);
        }

        break;
      case 4:
        goto LABEL_40;
      default:
        goto LABEL_69;
    }

    goto LABEL_97;
  }

  if (a2)
  {
    GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve render pipeline", 0, 0, 0);
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_100:

  v72 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t GTShaderDebuggerEncodeResourcesCompute(void *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a1[12];
  v5 = *(*a1 + 11360);
  if (v5 - 95) <= 0xA && ((0x409u >> (v5 - 95)))
  {
    v6 = 56;
LABEL_6:
    v7 = *(*a1 + 192 + v6);
    goto LABEL_7;
  }

  if (v5)
  {
    v6 = 64;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = *(*a1 + 8);
    v11 = v10;
    if (*(*a1 + 11360))
    {
      v12 = *(*a1 + 200);
    }

    else
    {
      v12 = 0;
    }

    v14 = [v10 computeCommandEncoderForKey:v12];
    v15 = v14;
    v13 = v14 != 0;
    if (v14)
    {
      if (a1[18] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v14 setBuffer:a1[23] offset:0 atIndex:?];
      }

      v33 = v11;
      v16 = a1[21];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v39;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            v22 = [v16 objectForKeyedSubscript:v21];
            [v15 setBuffer:v22 offset:0 atIndex:{objc_msgSend(v21, "unsignedIntegerValue")}];
          }

          v18 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v18);
      }

      v32 = v13;
      v23 = a1[22];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v35;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v34 + 1) + 8 * j);
            v29 = [v23 objectForKeyedSubscript:v28];
            [v15 setVisibleFunctionTable:v29 atBufferIndex:{objc_msgSend(v28, "unsignedIntegerValue")}];
          }

          v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v25);
      }

      [v15 useResource:a1[23] usage:2];
      [v15 setComputePipelineState:v9];

      v11 = v33;
      v13 = v32;
    }

    else if (a2)
    {
      *a2 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve compute encoder", 0, 0, 0);
    }
  }

  else if (a2)
  {
    GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve compute pipeleine", 0, 0, 0);
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t GTShaderDebuggerExecuteEncoder(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[10];
  if (v3)
  {
    v5 = *(v2 + 11360);
    v6 = *(v2 + 8);
    v7 = v6;
    if (*(v2 + 11360))
    {
      v8 = *(v2 + 200);
    }

    else
    {
      v8 = 0;
    }

    if (v5 == 70)
    {
      v10 = [v6 renderCommandEncoderForKey:v8];
      v11 = *(v3 + 320);
      v12 = [v7 executeIndirectCommandBufferMap];
      v9 = DYMTLDrawRenderCommandEncoder(v10, v3, v11, v3 + 216, v12);

      v7 = v12;
    }

    else
    {
      v10 = [v6 computeCommandEncoderForKey:v8];
      v9 = DYMTLDispatchComputeCommandEncoder(v10, v3, *(v3 + 320));
    }

    if (a2 && (v9 & 1) == 0)
    {
      GTShaderDebuggerMakeError(1u, @"Internal error: Problem encountered during execution", 0, 0, 0);
      *a2 = v9 = 0;
    }
  }

  else
  {
    GTMTLReplayController_defaultDispatchFunction(*a1, a1[11]);
    return 1;
  }

  return v9;
}

uint64_t GTShaderDebuggerValidateUserComputeDispatch(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 11360);
  if (v5 == 70)
  {
    v6 = [*(v4 + 8) renderPipelineStateForKey:*(v4 + 8792)];
    v15 = [v6 maxTotalThreadsPerThreadgroup];
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    v17 = a1[11];
    if (*(v17 + 8) != -16137)
    {
      goto LABEL_25;
    }

    v18 = GTTraceFunc_argumentBytesWithMap(v17, *(v17 + 13), *(**a1 + 16));
    v19 = *(v18 + 1);
    v20 = *(v18 + 2);
    v21 = *(v18 + 3);
    v22 = v20 * v19 * v21;
    if (!v22)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per tile (width(%llu) * height(%llu) * depth(%llu)) must not be 0", v19, v20, v21];
      if (a2)
      {
        v24 = @"Failed to launch tile kernel: Dispatched total threads per tile is 0";
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v22 <= v16)
    {
      goto LABEL_25;
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per tile (%llu: (width(%llu) * height(%llu) * depth(%llu))) must not be greater than the pipeline's maximum total threads per threadgroup (%llu)", v20 * v19 * v21, v19, v20, v21, v16];
    if (!a2)
    {
      goto LABEL_31;
    }

    v24 = @"Failed to launch tile kernel: Maximum total threads per threadgroup size limit exceeded";
    goto LABEL_30;
  }

  if (v5 == 28)
  {
    v6 = [*(v4 + 8) computePipelineStateForKey:*(v4 + 256)];
    v7 = [v6 maxTotalThreadsPerThreadgroup];
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = a1[11];
    v10 = *(**a1 + 16);
    v11 = *(v9 + 8);
    if (v11 == -16327)
    {
      v12 = 48;
      v13 = 40;
      v14 = 32;
LABEL_20:
      v31 = GTTraceFunc_argumentBytesWithMap(v9, *(v9 + 13), v10);
      v28 = *&v31[v14];
      v29 = *&v31[v13];
      v30 = *&v31[v12];
LABEL_21:
      v32 = v29 * v30 * v28;
      if (!v32)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per threadgroup (width(%llu) * height(%llu) * depth(%llu)) must not be 0", v28, v29, v30];
        if (a2)
        {
          v24 = @"Failed to launch compute kernel: Dispatched total threads per threadgroup is 0";
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v32 > v8)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per threadgroup (%llu: (width(%llu) * height(%llu) * depth(%llu))) must not be greater than the pipeline's maximum total threads per threadgroup (%llu)", v29 * v30 * v28, v28, v29, v30, v8];
        if (a2)
        {
          v24 = @"Failed to launch compute kernel: Maximum total threads per threadgroup size limit exceeded";
          goto LABEL_30;
        }

LABEL_31:

        v25 = 0;
        goto LABEL_32;
      }

LABEL_25:
      v25 = 1;
LABEL_32:

      return v25;
    }

    if (v11 != -16078)
    {
      if (v11 != -16220)
      {
        goto LABEL_25;
      }

      v12 = 40;
      v13 = 32;
      v14 = 24;
      goto LABEL_20;
    }

    v26 = GTTraceFunc_argumentBytesWithMap(v9, *(v9 + 13), v10);
    v27 = *(v26 + 1);
    v28 = *(v26 + 4);
    v29 = *(v26 + 5);
    v30 = *(v26 + 6);
    if (v27 == -1 || *(v26 + 3) * v27 * *(v26 + 2))
    {
      goto LABEL_21;
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per grid (width(%llu) * height(%llu) * depth(%llu)) must not be 0", v28, v29, v30];
    if (!a2)
    {
      goto LABEL_31;
    }

    v24 = @"Failed to launch compute kernel: Dispatched total threads per grid size is 0";
LABEL_30:
    *a2 = GTShaderDebuggerMakeError(4u, v24, v23, 0, 0);
    goto LABEL_31;
  }

  return 1;
}

BOOL GTShaderDebuggerValidateUserEncoderBindings(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 128);
  if ([v4 count])
  {
    v26 = a2;
    v28 = *(a1 + 24);
    v42 = *(a1 + 32);
    v41[0] = &unk_2860D6920;
    v41[1] = &unk_2860D6938;
    v41[2] = &unk_2860D6950;
    v43 = *(a1 + 48);
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:v41 count:3];
    v39[0] = &unk_2860D6920;
    v39[1] = &unk_2860D6938;
    v40[0] = @"buffer";
    v40[1] = @"texture";
    v39[2] = &unk_2860D6950;
    v40[2] = @"sampler";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = @"used";
      v8 = *v35;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:v7];
          v12 = [v11 BOOLValue];

          if (v12)
          {
            v13 = [v10 objectForKeyedSubscript:@"type"];
            v14 = [v32 objectForKeyedSubscript:v13];
            if (v14)
            {
              v15 = v7;
              v16 = [v10 objectForKeyedSubscript:@"index"];
              v17 = [v14 objectForKeyedSubscript:v16];
              if (![v17 unsignedIntegerValue])
              {
                if ([v13 integerValue] || (objc_msgSend(v28, "objectForKeyedSubscript:", v16), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
                {
                  v31 = [v30 objectForKeyedSubscript:v13];
                  v18 = [v10 objectForKeyedSubscript:@"name"];
                  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Function argument '%@' does not have a valid %@ binding at index '%@'", v18, v31, v16];
                  [v29 addObject:v19];
                }
              }

              v7 = v15;
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v6);
    }

    v21 = [v29 count];
    v22 = v21 == 0;
    v4 = v27;
    if (v21)
    {
      v23 = [v29 componentsJoinedByString:@"\n"];
      if (v26)
      {
        *v26 = GTShaderDebuggerMakeError(4u, v23, @"Ensure all function arguments have valid resource bindings", 0, 0);
      }
    }
  }

  else
  {
    v22 = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t GTShaderDebuggerMakeTraceBuffer(uint64_t a1, void *a2)
{
  v4 = [*(*a1 + 8) defaultDevice];
  v5 = [v4 maxBufferLength];
  v6 = v5;
  if (v5 >= 0x10000000)
  {
    v7 = 0x10000000;
  }

  else
  {
    v7 = v5;
  }

  v8 = [*(a1 + 192) objectForKeyedSubscript:@"Options"];
  v9 = [v8 objectForKeyedSubscript:@"TraceBufferSize"];
  v10 = [v9 unsignedIntegerValue];

  if (v6 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 >= 0xFFFFFFFF)
  {
    v11 = 0xFFFFFFFFLL;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = [v4 newBufferWithLength:v12 options:0];
  v14 = v13;
  if (v13)
  {
    v15 = *(a1 + 160);
    v16 = [v13 contents];
    *v16 = 1;
    *(v16 + 4) = [v14 length];
    v17 = [*(a1 + 192) objectForKeyedSubscript:@"ROI"];
    v18 = [(__CFString *)v17 objectForKeyedSubscript:@"Type"];
    v19 = [v18 integerValue];

    if (v19 > 3)
    {
      if (v19 != 4)
      {
        if (v19 == 5)
        {
          v50 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v22 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v23 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionZ"];
          v51 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v75 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v52 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionZ"];
          *&v53 = -1;
          *(&v53 + 1) = -1;
          *(v16 + 12) = v53;
          *(v16 + 28) = v53;
          *(v16 + 44) = -1;
          v76 = v50;
          *(v16 + 16) = [v50 unsignedIntValue];
          *(v16 + 20) = [v22 unsignedIntValue];
          *(v16 + 24) = [v23 unsignedIntValue];
          *(v16 + 32) = [v51 unsignedIntValue];
          *(v16 + 36) = [v75 unsignedIntValue];
          *(v16 + 40) = [v52 unsignedIntValue];
          *(v16 + 8) = 48;

          goto LABEL_54;
        }

        if (v19 == 6)
        {
          v76 = [(__CFString *)v17 objectForKeyedSubscript:@"AmplificationID"];
          v73 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v23 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v68 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionZ"];
          v66 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v70 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v29 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionZ"];
          v65 = [(__CFString *)v17 objectForKeyedSubscript:@"ObjectThreadgroupPosX"];
          v64 = [(__CFString *)v17 objectForKeyedSubscript:@"ObjectThreadgroupPosY"];
          v63 = [(__CFString *)v17 objectForKeyedSubscript:@"ObjectThreadgroupPosZ"];
          *&v30 = -1;
          *(&v30 + 1) = -1;
          *(v16 + 12) = v30;
          *(v16 + 28) = v30;
          *(v16 + 44) = v30;
          *(v16 + 60) = -1;
          *(v16 + 16) = [v73 unsignedIntValue];
          *(v16 + 20) = [v23 unsignedIntValue];
          *(v16 + 24) = [v68 unsignedIntValue];
          *(v16 + 32) = [v66 unsignedIntValue];
          *(v16 + 36) = [v70 unsignedIntValue];
          v31 = v29;
          *(v16 + 40) = [v29 unsignedIntValue];
          *(v16 + 48) = [v65 unsignedIntValue];
          *(v16 + 52) = [v64 unsignedIntValue];
          *(v16 + 56) = [v63 unsignedIntValue];
          *(v16 + 64) = [v76 unsignedIntValue];
          *(v16 + 8) = 68;

          v22 = v73;
          goto LABEL_54;
        }

LABEL_35:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "GTShaderDebuggerMakeTraceBuffer", 4898, 4, "Unreachable", v20, v21, v62);
        if (a2)
        {
          v27 = @"Error encountered while setting up GPU data buffer";
          goto LABEL_20;
        }

LABEL_37:
        v28 = 0;
        goto LABEL_55;
      }

      v76 = [(__CFString *)v17 objectForKeyedSubscript:@"InstanceID"];
      v22 = [(__CFString *)v17 objectForKeyedSubscript:@"AmplificationID"];
      v23 = [(__CFString *)v17 objectForKeyedSubscript:@"PatchIDs"];
      if (v15)
      {
        *(v16 + 12) = -1;
        *(v16 + 20) = -1;
        *(v16 + 12) = [v76 unsignedIntValue];
        *(v16 + 16) = [v22 unsignedIntValue];
        v36 = [v23 count];
        *(v16 + 20) = v36;
        if (!v36)
        {
          v35 = 24;
          goto LABEL_53;
        }

        v74 = v22;
        v37 = 0;
        do
        {
          v38 = [v23 objectAtIndexedSubscript:v37];
          *(v16 + 24 + 4 * v37) = [v38 unsignedIntValue];

          ++v37;
          v39 = *(v16 + 20);
        }

        while (v37 < v39);
        v35 = 4 * v39 + 24;
        goto LABEL_50;
      }

      *(v16 + 12) = -1;
      *(v16 + 12) = [v76 unsignedIntValue];
      v58 = [v23 count];
      *(v16 + 16) = v58;
      if (v58)
      {
        v74 = v22;
        v59 = 0;
        do
        {
          v60 = [v23 objectAtIndexedSubscript:v59];
          *(v16 + 20 + 4 * v59) = [v60 unsignedIntValue];

          ++v59;
          v57 = *(v16 + 16);
        }

        while (v59 < v57);
        goto LABEL_49;
      }
    }

    else
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          v40 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v41 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v23 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v67 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v42 = [(__CFString *)v17 objectForKeyedSubscript:@"MinSampleID"];
          v69 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxSampleID"];
          v71 = [(__CFString *)v17 objectForKeyedSubscript:@"RenderTargetArrayIndex"];
          *&v43 = -1;
          *(&v43 + 1) = -1;
          *(v16 + 12) = v43;
          *(v16 + 28) = v43;
          *(v16 + 44) = v43;
          *(v16 + 60) = -1;
          v76 = v40;
          [v40 floatValue];
          *(v16 + 16) = v44;
          [v41 floatValue];
          v45 = vdupq_n_s32(0xCE6E6B28);
          v45.i32[0] = *(v16 + 16);
          v45.i32[1] = v46;
          *(v16 + 16) = v45;
          [v23 floatValue];
          *(v16 + 32) = v47;
          [v67 floatValue];
          v48 = vdupq_n_s32(0x4E6E6B28u);
          v48.i32[0] = *(v16 + 32);
          v48.i32[1] = v49;
          *(v16 + 32) = v48;
          *(v16 + 48) = [v42 unsignedIntValue];
          *(v16 + 52) = [v69 unsignedIntValue];
          if (v15 >= 2)
          {
            *(v16 + 56) = [v71 unsignedIntValue];
          }

          *(v16 + 8) = 64;

          v22 = v41;
          goto LABEL_54;
        }

        if (v19 == 3)
        {
          v76 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v22 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v23 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionZ"];
          v24 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v72 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v25 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionZ"];
          *&v26 = -1;
          *(&v26 + 1) = -1;
          *(v16 + 12) = v26;
          *(v16 + 28) = v26;
          *(v16 + 44) = -1;
          *(v16 + 16) = [v76 unsignedIntValue];
          *(v16 + 20) = [v22 unsignedIntValue];
          *(v16 + 24) = [v23 unsignedIntValue];
          *(v16 + 32) = [v24 unsignedIntValue];
          *(v16 + 36) = [v72 unsignedIntValue];
          *(v16 + 40) = [v25 unsignedIntValue];
          *(v16 + 8) = 48;

LABEL_54:
          objc_storeStrong((a1 + 184), v14);
          v28 = 1;
          goto LABEL_55;
        }

        goto LABEL_35;
      }

      v76 = [(__CFString *)v17 objectForKeyedSubscript:@"InstanceID"];
      v22 = [(__CFString *)v17 objectForKeyedSubscript:@"AmplificationID"];
      v23 = [(__CFString *)v17 objectForKeyedSubscript:@"VertexIDs"];
      if (v15)
      {
        *(v16 + 12) = -1;
        *(v16 + 20) = -1;
        *(v16 + 12) = [v76 unsignedIntValue];
        v32 = [v23 count];
        *(v16 + 20) = v32;
        if (v32)
        {
          v33 = 0;
          do
          {
            v34 = [v23 objectAtIndexedSubscript:v33];
            *(v16 + 24 + 4 * v33) = [v34 unsignedIntValue];

            ++v33;
          }

          while (v33 < *(v16 + 20));
        }

        *(v16 + 16) = [v22 unsignedIntValue];
        v35 = 4 * *(v16 + 20) + 24;
        goto LABEL_53;
      }

      *(v16 + 12) = -1;
      *(v16 + 12) = [v76 unsignedIntValue];
      v54 = [v23 count];
      *(v16 + 16) = v54;
      if (v54)
      {
        v74 = v22;
        v55 = 0;
        do
        {
          v56 = [v23 objectAtIndexedSubscript:v55];
          *(v16 + 20 + 4 * v55) = [v56 unsignedIntValue];

          ++v55;
          v57 = *(v16 + 16);
        }

        while (v55 < v57);
LABEL_49:
        v35 = 4 * v57 + 20;
LABEL_50:
        v22 = v74;
LABEL_53:
        *(v16 + 8) = v35;
        goto LABEL_54;
      }
    }

    v35 = 20;
    goto LABEL_53;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create GPU data buffer [%llu]", v12];
  if (!a2)
  {
    goto LABEL_37;
  }

  v27 = v17;
LABEL_20:
  GTShaderDebuggerMakeError(1u, v27, 0, 0, 0);
  *a2 = v28 = 0;
LABEL_55:

  return v28;
}

id GTShaderDebuggerMakeTraceData(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  v5 = [*(a1 + 192) objectForKeyedSubscript:@"ROI"];
  v6 = [v4 contents];
  v7 = [v4 length];
  v8 = [v5 objectForKeyedSubscript:@"Type"];
  v9 = [v8 integerValue];

  if (*v6 == 1)
  {
    v10 = GTFenum_isComputeCall(*(*(a1 + 88) + 8));
    v11 = @"draw";
    if (v10)
    {
      v11 = @"dispatch";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No thread execution data for the %@ call", v11];
    if (!a2)
    {
      goto LABEL_26;
    }

    if (v9 == 3)
    {
      v13 = @"Select a different threadgroup to debug and try again";
    }

    else
    {
      v13 = 0;
    }

    if ((*(a1 + 208) & 0x10) != 0)
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    v15 = v12;
    goto LABEL_25;
  }

  if (v7 != v6[1])
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Corrupt GPU data buffer [%u:%llu]", v6[1], v7];
    if (!a2)
    {
LABEL_26:

LABEL_27:
      v20 = 0;
      goto LABEL_28;
    }

    if ((*(a1 + 208) & 0x10) != 0)
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }

    v15 = v12;
    v13 = 0;
LABEL_25:
    *a2 = GTShaderDebuggerMakeError(v14, v15, v13, 0, 0);
    goto LABEL_26;
  }

  if (v7 < v6[2])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPU data buffer limits exceeded [%u]", v6[2]];
    if (a2)
    {
      if ((*(a1 + 208) & 0x10) != 0)
      {
        v17 = 4;
      }

      else
      {
        v17 = 3;
      }

      v25 = @"RequiredTraceBufferSize";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6[2]];
      v26[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *a2 = GTShaderDebuggerMakeError(v17, v16, 0, 0, v19);
    }

    goto LABEL_27;
  }

  v24 = v9 - 1;
  v23 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v24 length:4];
  [v23 appendBytes:v6 length:v6[2]];
  v20 = [v23 copy];

LABEL_28:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id GTShaderDebuggerMakeResourceMappings(uint64_t **a1)
{
  v187[3] = *MEMORY[0x277D85DE8];
  v2 = (*a1)[1];
  v3 = **a1;
  v127 = *(v3 + 40);
  v128 = v2;
  v126 = *(v3 + 8);
  v129 = *a1[11];
  v152 = 0u;
  v153 = 0u;
  v116 = a1;
  v134 = a1[16];
  if ([v134 count])
  {
    v121 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v122 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v117 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v115 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v186[0] = &unk_2860D6920;
    v186[1] = &unk_2860D6938;
    v187[0] = v122;
    v187[1] = v117;
    v186[2] = &unk_2860D6950;
    v187[2] = v115;
    v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:3];
    v184 = *(a1 + 2);
    v183[0] = &unk_2860D6920;
    v183[1] = &unk_2860D6938;
    v183[2] = &unk_2860D6950;
    v185 = a1[6];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v184 forKeys:v183 count:3];
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    obj = v170 = 0u;
    v119 = [obj countByEnumeratingWithState:&v169 objects:v182 count:16];
    if (v119)
    {
      v118 = *v170;
      do
      {
        for (p = 0; p != v119; p = (p + 1))
        {
          if (*v170 != v118)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v169 + 1) + 8 * p);
          v5 = [obj objectForKeyedSubscript:v4];
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v6 = [v5 countByEnumeratingWithState:&v165 objects:v181 count:16];
          if (v6)
          {
            v7 = *v166;
            do
            {
              for (i = 0; i != v6; ++i)
              {
                if (*v166 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v165 + 1) + 8 * i);
                v10 = [v5 objectForKeyedSubscript:v9];
                v11 = [v10 unsignedLongLongValue];

                if (v11)
                {
                  v164[0] = MEMORY[0x277D85DD0];
                  v164[1] = 3221225472;
                  v164[2] = ___GetCurrentEncoderBoundResources_block_invoke;
                  v164[3] = &unk_2796589F0;
                  v164[4] = v4;
                  v164[5] = v9;
                  v12 = [v134 gt_firstObjectPassingTest:v164];
                  if (v12)
                  {
                    v13 = [v131 objectForKeyedSubscript:v4];
                    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
                    [v13 addObject:v14];
                  }
                }
              }

              v6 = [v5 countByEnumeratingWithState:&v165 objects:v181 count:16];
            }

            while (v6);
          }
        }

        v119 = [obj countByEnumeratingWithState:&v169 objects:v182 count:16];
      }

      while (v119);
    }

    v15 = v116[3];
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v160 objects:v180 count:16];
    if (v16)
    {
      v17 = *v161;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v161 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v160 + 1) + 8 * j);
          v159[0] = MEMORY[0x277D85DD0];
          v159[1] = 3221225472;
          v159[2] = ___GetCurrentEncoderBoundResources_block_invoke_2;
          v159[3] = &unk_2796589C8;
          v159[4] = v19;
          v20 = [v134 gt_firstObjectPassingTest:v159];
          if (v20)
          {
            [v121 addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v160 objects:v180 count:16];
      }

      while (v16);
    }

    v21 = *v116[11];
    v22 = *(**v116 + 40);
    v23 = v116[2];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v155 objects:v179 count:16];
    if (v24)
    {
      v25 = *v156;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v156 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v155 + 1) + 8 * k);
          Object = GTMTLSMContext_getObject(*v22, [v27 unsignedLongLongValue], v21);
          if (Object)
          {
            v29 = *Object;
            v30 = v122;
            if (v29 != 22)
            {
              if (v29 != 80)
              {
                continue;
              }

              v30 = v117;
            }

            [v30 addObject:v27];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v155 objects:v179 count:16];
      }

      while (v24);
    }

    v132 = v116[1];
    if ([v132 count])
    {
      newpool = 0;
      apr_pool_create_ex(&newpool, 0, 0, v31);
      pa = newpool;
      v32 = apr_array_make(newpool, 32, 8);
      GTMTLSMContext_getObjects(*(v22 + 8), v21, v32);
      if (v32->nelts >= 1)
      {
        v33 = 0;
        do
        {
          v34 = *&v32->elts[8 * v33];
          if (v34)
          {
            if (*(v34 + 48))
            {
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
              v36 = [v132 containsObject:v35];

              if (v36)
              {
                v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v34 + 8)];
                [v122 addObject:v37];
              }
            }
          }

          ++v33;
        }

        while (v33 < v32->nelts);
      }

      v32->nelts = 0;
      GTMTLSMContext_getObjects(*(v22 + 24), v21, v32);
      if (v32->nelts >= 1)
      {
        v38 = 0;
        do
        {
          v39 = *&v32->elts[8 * v38];
          if (v39)
          {
            if (*(v39 + 48))
            {
              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
              v41 = [v132 containsObject:v40];

              if (v41)
              {
                v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v39 + 8)];
                [v117 addObject:v42];
              }
            }
          }

          ++v38;
        }

        while (v38 < v32->nelts);
      }

      apr_pool_destroy(pa);
    }

    *(&v153 + 1) = [v121 copy];
    v43 = [v122 copy];
    *&v152 = v43;
    *(&v152 + 1) = [v117 copy];
    *&v153 = [v115 copy];
  }

  else
  {
    v43 = 0;
  }

  v135 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v43, "count")}];
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v44 = v43;
  v45 = [v44 countByEnumeratingWithState:&v148 objects:v178 count:16];
  if (v45)
  {
    v46 = *v149;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v149 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = [*(*(&v148 + 1) + 8 * m) unsignedLongLongValue];
        v49 = [v128 bufferForKey:v48];
        v50 = DEVICEOBJECT(v49);

        if (v50)
        {
          v51 = GTMTLSMContext_getObject(*v127, v48, v129);
          if (v51)
          {
            v52 = v51;
            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v50, "gpuAddress")}];
            v54 = MEMORY[0x277CCABB0];
            v182[0] = v52[1];
            entry = find_entry(v126, v182, 8uLL, 0);
            if (*entry && (v56 = *(*entry + 32)) != 0)
            {
              v57 = atomic_load((v56 + 56));
              v58 = v56 + (~(v57 >> 2) & 8);
            }

            else
            {
              v58 = 8;
            }

            v59 = [v54 numberWithUnsignedLongLong:*v58];
            [v135 setObject:v53 forKeyedSubscript:v59];
          }
        }
      }

      v45 = [v44 countByEnumeratingWithState:&v148 objects:v178 count:16];
    }

    while (v45);
  }

  v60 = objc_alloc(MEMORY[0x277CBEB38]);
  v61 = *(&v152 + 1);
  v133 = [v60 initWithCapacity:{objc_msgSend(*(&v152 + 1), "count")}];
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v62 = v61;
  v63 = [v62 countByEnumeratingWithState:&v144 objects:v177 count:16];
  if (v63)
  {
    v64 = *v145;
    do
    {
      for (n = 0; n != v63; ++n)
      {
        if (*v145 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v66 = [*(*(&v144 + 1) + 8 * n) unsignedLongLongValue];
        v67 = [v128 textureForKey:v66];
        v68 = DEVICEOBJECT(v67);

        if (v68)
        {
          v182[0] = v66;
          v69 = find_entry(*v127, v182, 8uLL, 0);
          if (*v69)
          {
            v70 = *(*v69 + 32);
            if (v70)
            {
              v71 = 0;
              do
              {
                if (v70[2] > v129 || (v72 = v70, v70[3] <= v129))
                {
                  if (v71)
                  {
                    v72 = v71;
                    goto LABEL_90;
                  }

                  v72 = 0;
                }

                v70 = v70[4];
                v71 = v72;
              }

              while (v70);
              if (!v72)
              {
                goto LABEL_95;
              }

LABEL_90:
              v73 = MEMORY[0x277CCABB0];
              v182[0] = v72[1];
              v74 = find_entry(v126, v182, 8uLL, 0);
              if (*v74 && (v75 = *(*v74 + 32)) != 0)
              {
                v76 = atomic_load((v75 + 56));
                v77 = v75 + (~(v76 >> 2) & 8);
              }

              else
              {
                v77 = 8;
              }

              v78 = [v73 numberWithUnsignedLongLong:*v77];
              v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v68, "uniqueIdentifier")}];
              [v133 setObject:v78 forKeyedSubscript:v79];
            }
          }
        }

LABEL_95:
      }

      v63 = [v62 countByEnumeratingWithState:&v144 objects:v177 count:16];
    }

    while (v63);
  }

  v80 = objc_alloc(MEMORY[0x277CBEB38]);
  v81 = v153;
  pb = [v80 initWithCapacity:{objc_msgSend(v153, "count")}];
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v82 = v81;
  v83 = [v82 countByEnumeratingWithState:&v140 objects:v176 count:16];
  if (v83)
  {
    v84 = *v141;
    do
    {
      for (ii = 0; ii != v83; ++ii)
      {
        if (*v141 != v84)
        {
          objc_enumerationMutation(v82);
        }

        v86 = [*(*(&v140 + 1) + 8 * ii) unsignedLongLongValue];
        v87 = [v128 samplerStateForKey:v86];
        v88 = DEVICEOBJECT(v87);

        if (v88)
        {
          v182[0] = v86;
          v89 = find_entry(*v127, v182, 8uLL, 0);
          if (*v89)
          {
            v90 = *(*v89 + 32);
            if (v90)
            {
              v91 = 0;
              do
              {
                if (v90[2] > v129 || (v92 = v90, v90[3] <= v129))
                {
                  if (v91)
                  {
                    v92 = v91;
                    goto LABEL_114;
                  }

                  v92 = 0;
                }

                v90 = v90[4];
                v91 = v92;
              }

              while (v90);
              if (!v92)
              {
                goto LABEL_119;
              }

LABEL_114:
              v93 = MEMORY[0x277CCABB0];
              v182[0] = v92[1];
              v94 = find_entry(v126, v182, 8uLL, 0);
              if (*v94 && (v95 = *(*v94 + 32)) != 0)
              {
                v96 = atomic_load((v95 + 56));
                v97 = v95 + (~(v96 >> 2) & 8);
              }

              else
              {
                v97 = 8;
              }

              v98 = [v93 numberWithUnsignedLongLong:*v97];
              v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v88, "uniqueIdentifier")}];
              [(apr_pool_t *)pb setObject:v98 forKeyedSubscript:v99];
            }
          }
        }

LABEL_119:
      }

      v83 = [v82 countByEnumeratingWithState:&v140 objects:v176 count:16];
    }

    while (v83);
  }

  v130 = v116[17];
  v100 = objc_alloc(MEMORY[0x277CBEB38]);
  v101 = *(&v153 + 1);
  v102 = [v100 initWithCapacity:{objc_msgSend(*(&v153 + 1), "count")}];
  v103 = v116[21];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v104 = v101;
  v105 = [v104 countByEnumeratingWithState:&v136 objects:v175 count:16];
  if (v105)
  {
    v106 = *v137;
    do
    {
      for (jj = 0; jj != v105; ++jj)
      {
        if (*v137 != v106)
        {
          objc_enumerationMutation(v104);
        }

        v108 = *(*(&v136 + 1) + 8 * jj);
        v109 = [v103 objectForKeyedSubscript:v108];
        v110 = DEVICEOBJECT(v109);

        if (v110)
        {
          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v110, "gpuAddress")}];
          [v102 setObject:v111 forKeyedSubscript:v108];
        }
      }

      v105 = [v104 countByEnumeratingWithState:&v136 objects:v175 count:16];
    }

    while (v105);
  }

  v173[0] = @"Bytes";
  v173[1] = @"Buffers";
  v174[0] = v102;
  v174[1] = v135;
  v173[2] = @"Textures";
  v173[3] = @"Samplers";
  v174[2] = v133;
  v174[3] = pb;
  v173[4] = @"ConstantSamplers";
  v174[4] = v130;
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:5];

  __destructor_8_s0_s8_s16_s24(&v152);
  v113 = *MEMORY[0x277D85DE8];

  return v112;
}

void __destructor_8_s0_s8_s16_s24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void ShaderDebugger::Metadata::MDSerializer::~MDSerializer(ShaderDebugger::Metadata::MDSerializer *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(*(this + 1));
}

void ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(int8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  v10 = a1[4];
  if (v10)
  {
    v11 = v9;
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *&v10)
      {
        v14 = v9 % *&v10;
      }
    }

    else
    {
      v14 = (*&v10 - 1) & v9;
    }

    v15 = *(*&a1[3] + 8 * v14);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        do
        {
          v17 = v16[1];
          if (v17 == v11)
          {
            if (std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, a2))
            {
              return;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v17 >= *&v10)
              {
                v17 %= *&v10;
              }
            }

            else
            {
              v17 &= *&v10 - 1;
            }

            if (v17 != v14)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

  v18 = *(a3 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a3 + 8);
  }

  if (v18)
  {
    *&v30.st_dev = a2;
    v19 = (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[3], a2) + 5);

    std::string::operator=(v19, a3);
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
    v25 = -1;
    v27 = 0;
    v28 = 0;
    __n = 0;
    std::string::operator=(&v24, a2);
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (!stat(v20, &v30) && (v30.st_mode & 0xF000) == 0x8000)
    {
      __n = v30.st_size;
      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      v25 = open(v21, 0, 0);
      v27 = mmap(0, __n, 1, 2, v25, 0);
      v28 = v27;
    }

    if (v25 != -1)
    {
      memset(&v30, 0, 24);
      if (__n)
      {
        std::string::resize(&v30, __n, 0);
        if ((v30.st_gid & 0x80000000) == 0)
        {
          v22 = &v30;
        }

        else
        {
          v22 = *&v30.st_dev;
        }

        memcpy(v22, v27, __n);
      }

      v29 = a2;
      v23 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[3], a2);
      std::string::operator=((v23 + 5), &v30);
      if (SHIBYTE(v30.st_gid) < 0)
      {
        operator delete(*&v30.st_dev);
      }

      if (v25 != -1)
      {
        munmap(v27, __n);
        close(v25);
        v25 = -1;
      }
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
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

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void ShaderDebugger::Metadata::MDSerializer::write<std::string>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  v27 = v4;
  v5 = a1[1];
  v6 = a1[2] - *a1;
  if (v6 < &v5[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v6) | 1);
    v5 = a1[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v8 = a1[2];
    if (v5 >= v8)
    {
      v9 = *a1;
      v10 = &v5[-*a1];
      v11 = (v10 + 1);
      if ((v10 + 1) < 0)
      {
LABEL_43:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v12 = v8 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v14 = &v5[-*a1];
      *v10 = *(&v27 + i);
      v5 = v10 + 1;
      memcpy(0, v9, v14);
      *a1 = 0;
      a1[1] = v10 + 1;
      a1[2] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v5++ = *(&v27 + i);
    }

    a1[1] = v5;
  }

  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = a1[2] - *a1;
  if (v18 < &v5[v17 - *a1])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v18) | 1);
  }

  if (v17)
  {
    v19 = a1[1];
    do
    {
      v20 = a1[2];
      if (v19 >= v20)
      {
        v21 = *a1;
        v22 = &v19[-*a1];
        v23 = (v22 + 1);
        if ((v22 + 1) < 0)
        {
          goto LABEL_43;
        }

        v24 = v20 - v21;
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          operator new();
        }

        v26 = &v19[-*a1];
        *v22 = *v16;
        v19 = v22 + 1;
        memcpy(0, v21, v26);
        *a1 = 0;
        a1[1] = v22 + 1;
        a1[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v19++ = *v16;
      }

      ++v16;
      a1[1] = v19;
      --v17;
    }

    while (v17);
  }
}

uint64_t ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(void *a1, uint64_t a2)
{
  v11 = a2;
  isMetadataIdReserved = ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(a1, a2);
  v5 = a1[1];
  v6 = *a1;
  if (*a1 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        v6 = a1[1];
        break;
      }
    }
  }

  if (v5 == v6)
  {
    v8 = -1;
    if (!isMetadataIdReserved)
    {
LABEL_8:
      std::vector<unsigned long>::push_back[abi:nn200100](a1, &v11);
      v10 = 0;
      std::vector<BOOL>::push_back((a1 + 3), &v10);
      return ((a1[1] - *a1) >> 3) - 1;
    }
  }

  else
  {
    v7 = v6 - *a1;
    if (!((v7 == -8) | isMetadataIdReserved & 1))
    {
      return -1;
    }

    v8 = v7 >> 3;
    if (!isMetadataIdReserved)
    {
      goto LABEL_8;
    }
  }

  if (a1[4] <= v8)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  *(a1[3] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
  return v8;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (*a1 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        v3 = *(a1 + 8);
        break;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  v4 = v3 - *a1;
  if (*(a1 + 32) <= (v4 >> 3))
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return (*(*(a1 + 24) + (((v4 >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 >> 3)) & 1;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeLocation(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = *MEMORY[0x277D85DE8];
  v82 = a6;
  v83 = a5;
  v79.__r_.__value_.__r.__words[0] = 1;
  __str.__r_.__value_.__r.__words[0] = &v79;
  v10 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 1uLL);
  v11 = v10;
  v13 = v10 + 5;
  v12 = v10[5];
  v14 = v10[6];
  v15 = v12;
  if (v12 != v14)
  {
    while (*v15 != a2)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = v10[6];
        break;
      }
    }
  }

  if (v14 != v15)
  {
    v16 = v15 - v12;
    if (v15 - v12 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v10 + 5), a2))
    {
      v22 = v16 >> 3;
      goto LABEL_139;
    }
  }

  v81 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v13, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 8));
  }

  else
  {
    __str = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *a4, *(a4 + 8));
  }

  else
  {
    v79 = *a4;
  }

  v17 = *(a3 + 23);
  if ((v17 & 0x80000000) == 0)
  {
    v78 = *a3;
    goto LABEL_17;
  }

  std::string::__init_copy_ctor_external(&v78, *a3, *(a3 + 8));
  v17 = *(a3 + 23);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_17:
    v18 = v17;
    v19 = a3;
    if (!v18)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v19 = *a3;
  v18 = *(a3 + 8);
  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_18:
  v20 = &v19[v18];
  v21 = v19;
  while (*v21 != 47)
  {
    ++v21;
    if (!--v18)
    {
      goto LABEL_27;
    }
  }

  if (v21 == v20 || v21 != v19)
  {
LABEL_27:
    v23 = *(a4 + 23);
    if (v23 < 0)
    {
      if (*(a4 + 8) != 1)
      {
LABEL_36:
        if (v23 >= 0)
        {
          v25 = *(a4 + 23);
        }

        else
        {
          v25 = *(a4 + 8);
        }

        std::string::basic_string[abi:nn200100](&v77, v25 + 1);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v77;
        }

        else
        {
          v26 = v77.__r_.__value_.__r.__words[0];
        }

        if (v25)
        {
          if (*(a4 + 23) >= 0)
          {
            v27 = a4;
          }

          else
          {
            v27 = *a4;
          }

          memmove(v26, v27, v25);
        }

        *(&v26->__r_.__value_.__l.__data_ + v25) = 47;
        v28 = *(a3 + 23);
        if (v28 >= 0)
        {
          v29 = a3;
        }

        else
        {
          v29 = *a3;
        }

        if (v28 >= 0)
        {
          v30 = *(a3 + 23);
        }

        else
        {
          v30 = *(a3 + 8);
        }

        v31 = std::string::append(&v77, v29, v30);
        v32 = v31->__r_.__value_.__r.__words[0];
        *&v84 = v31->__r_.__value_.__l.__size_;
        *(&v84 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
        v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str.__r_.__value_.__r.__words[0] = v32;
        __str.__r_.__value_.__l.__size_ = v84;
        *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&v84 + 7);
        *(&__str.__r_.__value_.__s + 23) = v33;
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        goto LABEL_57;
      }

      v24 = *a4;
    }

    else
    {
      v24 = a4;
      if (v23 != 1)
      {
        goto LABEL_36;
      }
    }

    if (*v24 == 47)
    {
      std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v77, a4, a3);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v77;
      goto LABEL_57;
    }

    goto LABEL_36;
  }

LABEL_57:
  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  p_str = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v36 = p_str + size;
  while (size)
  {
    v37 = *--v36;
    --size;
    if (v37 == 47)
    {
      v38 = v36 - p_str;
      if (v36 - p_str != -1)
      {
        std::string::basic_string(&v77, &__str, 0, v38 + 1, &v84);
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        v79 = v77;
        std::string::basic_string(&v77, &__str, v38 + 1, 0xFFFFFFFFFFFFFFFFLL, &v84);
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        v78 = v77;
      }

      break;
    }
  }

  v39 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v39 = v79.__r_.__value_.__l.__size_;
    if (!v79.__r_.__value_.__l.__size_)
    {
      goto LABEL_77;
    }

    v40 = v79.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v79.__r_.__value_.__s + 23))
    {
      goto LABEL_77;
    }

    v40 = &v79;
  }

  if (v40->__r_.__value_.__s.__data_[v39 - 1] != 47)
  {
    std::string::append(&v79, "/", 1uLL);
  }

LABEL_77:
  v41 = v11[12];
  v42 = v11[11];
  v43 = v11[13] - v42;
  if (v43 < &v41[-v42 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v43) | 1);
    v41 = v11[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v45 = v11[13];
    if (v41 >= v45)
    {
      v46 = v11[11];
      v47 = (v41 - v46);
      v48 = v41 - v46 + 1;
      if (v48 < 0)
      {
LABEL_140:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v49 = v45 - v46;
      if (2 * v49 > v48)
      {
        v48 = 2 * v49;
      }

      if (v49 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        operator new();
      }

      v51 = v41 - v46;
      *v47 = *(&v81 + i);
      v41 = v47 + 1;
      memcpy(0, v46, v51);
      v11[11] = 0;
      v11[12] = v47 + 1;
      v11[13] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v41++ = *(&v81 + i);
    }

    v11[12] = v41;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(v11 + 11, &v78);
  ShaderDebugger::Metadata::MDSerializer::write<std::string>(v11 + 11, &v79);
  v52 = v11[12];
  v53 = v11[11];
  v54 = v11[13] - v53;
  if (v54 < &v52[-v53 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v54) | 1);
    v52 = v11[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v56 = v11[13];
    if (v52 >= v56)
    {
      v57 = v11[11];
      v58 = (v52 - v57);
      v59 = v52 - v57 + 1;
      if (v59 < 0)
      {
        goto LABEL_140;
      }

      v60 = v56 - v57;
      if (2 * v60 > v59)
      {
        v59 = 2 * v60;
      }

      if (v60 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v61 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        operator new();
      }

      v62 = v52 - v57;
      *v58 = *(&v83 + j);
      v52 = v58 + 1;
      memcpy(0, v57, v62);
      v11[11] = 0;
      v11[12] = v58 + 1;
      v11[13] = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v52++ = *(&v83 + j);
    }

    v11[12] = v52;
  }

  v63 = v11[11];
  v64 = v11[13] - v63;
  if (v64 < &v52[-v63 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v64) | 1);
    v52 = v11[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v66 = v11[13];
    if (v52 >= v66)
    {
      v67 = v11[11];
      v68 = (v52 - v67);
      v69 = v52 - v67 + 1;
      if (v69 < 0)
      {
        goto LABEL_140;
      }

      v70 = v66 - v67;
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      if (v70 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v71 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v71 = v69;
      }

      if (v71)
      {
        operator new();
      }

      v72 = v52 - v67;
      *v68 = *(&v82 + k);
      v52 = v68 + 1;
      memcpy(0, v67, v72);
      v11[11] = 0;
      v11[12] = v68 + 1;
      v11[13] = 0;
      if (v67)
      {
        operator delete(v67);
      }
    }

    else
    {
      *v52++ = *(&v82 + k);
    }

    v11[12] = v52;
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v77, &v79.__r_.__value_.__l.__data_, &v78.__r_.__value_.__l.__data_);
  v73 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  v74 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v73 = v77.__r_.__value_.__l.__size_;
  }

  if (v73)
  {
    v84 = 0uLL;
    v85 = 0;
    ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(a1, &v77, &v84);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(v84);
    }

    v74 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  v22 = v81;
  if (v74 < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_139:
  v75 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:nn200100](a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = 0;
  v39 = a4;
  v40 = &v38;
  v6 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 0);
  v7 = v6;
  v9 = v6 + 5;
  v8 = v6[5];
  v10 = v6[6];
  v11 = v8;
  if (v8 != v10)
  {
    while (*v11 != a2)
    {
      v11 += 8;
      if (v11 == v10)
      {
        v11 = v6[6];
        break;
      }
    }
  }

  if (v10 != v11)
  {
    v12 = v11 - v8;
    if (v11 - v8 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v6 + 5), a2))
    {
      return v12 >> 3;
    }
  }

  v37 = a3;
  v40 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v9, a2);
  v14 = (v7 + 11);
  v13 = v7[11];
  v15 = v7[12];
  v16 = v7[13] - v13;
  if (v16 < &v15[-v13 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v16) | 1);
    v15 = v7[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v18 = v7[13];
    if (v15 >= v18)
    {
      v19 = *v14;
      v20 = (v15 - *v14);
      v21 = (v20 + 1);
      if ((v20 + 1) < 0)
      {
LABEL_43:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v22 = v18 - v19;
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        operator new();
      }

      v24 = v15 - *v14;
      *v20 = *(&v40 + i);
      v15 = v20 + 1;
      memcpy(0, v19, v24);
      v7[11] = 0;
      v7[12] = v20 + 1;
      v7[13] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v15++ = *(&v40 + i);
    }

    v7[12] = v15;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(v7 + 11, v37);
  v25 = v7[12];
  v26 = v7[11];
  v27 = v7[13] - v26;
  if (v27 < &v25[-v26 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v27) | 1);
    v25 = v7[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v29 = v7[13];
    if (v25 >= v29)
    {
      v30 = *v14;
      v31 = (v25 - *v14);
      v32 = (v31 + 1);
      if ((v31 + 1) < 0)
      {
        goto LABEL_43;
      }

      v33 = v29 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = v25 - *v14;
      *v31 = *(&v39 + j);
      v25 = v31 + 1;
      memcpy(0, v30, v35);
      v7[11] = 0;
      v7[12] = v31 + 1;
      v7[13] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v25++ = *(&v39 + j);
    }

    v7[12] = v25;
  }

  return v40;
}

void ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a5;
  v80 = a3;
  v77 = -1;
  v78 = a6;
  v76 = 6;
  v81 = &v76;
  v8 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 6uLL);
  v9 = v8;
  v11 = v8 + 5;
  v10 = v8[5];
  v12 = v8[6];
  v13 = v10;
  if (v10 != v12)
  {
    while (*v13 != a2)
    {
      v13 += 8;
      if (v13 == v12)
      {
        v13 = v8[6];
        break;
      }
    }
  }

  if (v12 == v13 || v13 - v10 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v8 + 5), a2))
  {
    v81 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v11, a2);
    v15 = (v9 + 11);
    v14 = v9[11];
    v16 = v9[12];
    v17 = v9[13] - v14;
    if (v17 < &v16[-v14 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v17) | 1);
      v16 = v9[12];
    }

    for (i = 0; i != 8; ++i)
    {
      v19 = v9[13];
      if (v16 >= v19)
      {
        v20 = *v15;
        v21 = (v16 - *v15);
        v22 = (v21 + 1);
        if ((v21 + 1) < 0)
        {
LABEL_105:
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v23 = v19 - v20;
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          operator new();
        }

        v25 = v16 - *v15;
        *v21 = *(&v81 + i);
        v16 = v21 + 1;
        memcpy(0, v20, v25);
        v9[11] = 0;
        v9[12] = v21 + 1;
        v9[13] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v16++ = *(&v81 + i);
      }

      v9[12] = v16;
    }

    v26 = v9[11];
    v27 = v9[13] - v26;
    if (v27 < &v16[-v26 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v27) | 1);
      v16 = v9[12];
    }

    for (j = 0; j != 8; ++j)
    {
      v29 = v9[13];
      if (v16 >= v29)
      {
        v30 = *v15;
        v31 = (v16 - *v15);
        v32 = (v31 + 1);
        if ((v31 + 1) < 0)
        {
          goto LABEL_105;
        }

        v33 = v29 - v30;
        if (2 * v33 > v32)
        {
          v32 = 2 * v33;
        }

        if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v32;
        }

        if (v34)
        {
          operator new();
        }

        v35 = v16 - *v15;
        *v31 = *(&v80 + j);
        v16 = v31 + 1;
        memcpy(0, v30, v35);
        v9[11] = 0;
        v9[12] = v31 + 1;
        v9[13] = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v16++ = *(&v80 + j);
      }

      v9[12] = v16;
    }

    v76 = a4;
    v36 = v9[11];
    v37 = v9[13] - v36;
    if (v37 < &v16[-v36 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v37) | 1);
      v16 = v9[12];
    }

    for (k = 0; k != 8; ++k)
    {
      v39 = v9[13];
      if (v16 >= v39)
      {
        v40 = *v15;
        v41 = (v16 - *v15);
        v42 = (v41 + 1);
        if ((v41 + 1) < 0)
        {
          goto LABEL_105;
        }

        v43 = v39 - v40;
        if (2 * v43 > v42)
        {
          v42 = 2 * v43;
        }

        if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v44 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v42;
        }

        if (v44)
        {
          operator new();
        }

        v45 = v16 - *v15;
        *v41 = *(&v76 + k);
        v16 = v41 + 1;
        memcpy(0, v40, v45);
        v9[11] = 0;
        v9[12] = v41 + 1;
        v9[13] = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *v16++ = *(&v76 + k);
      }

      v9[12] = v16;
    }

    v46 = v9[11];
    v47 = v9[13] - v46;
    if (v47 < &v16[-v46 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v47) | 1);
      v16 = v9[12];
    }

    for (m = 0; m != 8; ++m)
    {
      v49 = v9[13];
      if (v16 >= v49)
      {
        v50 = *v15;
        v51 = (v16 - *v15);
        v52 = (v51 + 1);
        if ((v51 + 1) < 0)
        {
          goto LABEL_105;
        }

        v53 = v49 - v50;
        if (2 * v53 > v52)
        {
          v52 = 2 * v53;
        }

        if (v53 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v54 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          operator new();
        }

        v55 = v16 - *v15;
        *v51 = *(&v79 + m);
        v16 = v51 + 1;
        memcpy(0, v50, v55);
        v9[11] = 0;
        v9[12] = v51 + 1;
        v9[13] = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v16++ = *(&v79 + m);
      }

      v9[12] = v16;
    }

    v56 = v9[11];
    v57 = v9[13] - v56;
    if (v57 < &v16[-v56 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v57) | 1);
      v16 = v9[12];
    }

    for (n = 0; n != 8; ++n)
    {
      v59 = v9[13];
      if (v16 >= v59)
      {
        v60 = *v15;
        v61 = (v16 - *v15);
        v62 = (v61 + 1);
        if ((v61 + 1) < 0)
        {
          goto LABEL_105;
        }

        v63 = v59 - v60;
        if (2 * v63 > v62)
        {
          v62 = 2 * v63;
        }

        if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v64 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v62;
        }

        if (v64)
        {
          operator new();
        }

        v65 = v16 - *v15;
        *v61 = *(&v78 + n);
        v16 = v61 + 1;
        memcpy(0, v60, v65);
        v9[11] = 0;
        v9[12] = v61 + 1;
        v9[13] = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v16++ = *(&v78 + n);
      }

      v9[12] = v16;
    }

    v66 = v9[11];
    v67 = v9[13] - v66;
    if (v67 < &v16[-v66 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v67) | 1);
      v16 = v9[12];
    }

    for (ii = 0; ii != 8; ++ii)
    {
      v69 = v9[13];
      if (v16 >= v69)
      {
        v70 = *v15;
        v71 = (v16 - *v15);
        v72 = (v71 + 1);
        if ((v71 + 1) < 0)
        {
          goto LABEL_105;
        }

        v73 = v69 - v70;
        if (2 * v73 > v72)
        {
          v72 = 2 * v73;
        }

        if (v73 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v74 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v72;
        }

        if (v74)
        {
          operator new();
        }

        v75 = v16 - *v15;
        *v71 = *(&v77 + ii);
        v16 = v71 + 1;
        memcpy(0, v70, v75);
        v9[11] = 0;
        v9[12] = v71 + 1;
        v9[13] = 0;
        if (v70)
        {
          operator delete(v70);
        }
      }

      else
      {
        *v16++ = *(&v77 + ii);
      }

      v9[12] = v16;
    }
  }
}

void ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v50 = a2;
  v48 = a5;
  v7 = a1[1];
  v8 = a1[2] - *a1;
  if (v8 < &v7[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v8) | 1);
    v7 = a1[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v10 = a1[2];
    if (v7 >= v10)
    {
      v11 = *a1;
      v12 = &v7[-*a1];
      v13 = (v12 + 1);
      if ((v12 + 1) < 0)
      {
LABEL_66:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v14 = v10 - v11;
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        operator new();
      }

      v16 = &v7[-*a1];
      *v12 = *(&v50 + i);
      v7 = v12 + 1;
      memcpy(0, v11, v16);
      *a1 = 0;
      a1[1] = v12 + 1;
      a1[2] = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v7++ = *(&v50 + i);
    }

    a1[1] = v7;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a3);
  v17 = a1[1];
  v18 = a1[2] - *a1;
  if (v18 < &v17[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v18) | 1);
    v17 = a1[1];
  }

  for (j = 0; j != 8; ++j)
  {
    v20 = a1[2];
    if (v17 >= v20)
    {
      v21 = *a1;
      v22 = &v17[-*a1];
      v23 = (v22 + 1);
      if ((v22 + 1) < 0)
      {
        goto LABEL_66;
      }

      v24 = v20 - v21;
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        operator new();
      }

      v26 = &v17[-*a1];
      *v22 = *(&v49 + j);
      v17 = v22 + 1;
      memcpy(0, v21, v26);
      *a1 = 0;
      a1[1] = v22 + 1;
      a1[2] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v17++ = *(&v49 + j);
    }

    a1[1] = v17;
  }

  v27 = a1[2] - *a1;
  if (v27 < &v17[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v27) | 1);
    v17 = a1[1];
  }

  for (k = 0; k != 8; ++k)
  {
    v29 = a1[2];
    if (v17 >= v29)
    {
      v30 = *a1;
      v31 = &v17[-*a1];
      v32 = (v31 + 1);
      if ((v31 + 1) < 0)
      {
        goto LABEL_66;
      }

      v33 = v29 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = &v17[-*a1];
      *v31 = *(&v48 + k);
      v17 = v31 + 1;
      memcpy(0, v30, v35);
      *a1 = 0;
      a1[1] = v31 + 1;
      a1[2] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v17++ = *(&v48 + k);
    }

    a1[1] = v17;
  }

  v47 = a6;
  v36 = a1[2] - *a1;
  if (v36 < &v17[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v36) | 1);
    v17 = a1[1];
  }

  for (m = 0; m != 8; ++m)
  {
    v38 = a1[2];
    if (v17 >= v38)
    {
      v39 = *a1;
      v40 = &v17[-*a1];
      v41 = (v40 + 1);
      if ((v40 + 1) < 0)
      {
        goto LABEL_66;
      }

      v42 = v38 - v39;
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        operator new();
      }

      v44 = &v17[-*a1];
      *v40 = *(&v47 + m);
      v17 = v40 + 1;
      memcpy(0, v39, v44);
      *a1 = 0;
      a1[1] = v40 + 1;
      a1[2] = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v17++ = *(&v47 + m);
    }

    a1[1] = v17;
  }
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v30[0] = 2;
  v30[1] = v30;
  v11 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 2uLL);
  v12 = v11;
  v14 = v11 + 5;
  v13 = v11[5];
  v15 = v11[6];
  v16 = v13;
  if (v13 != v15)
  {
    while (*v16 != a2)
    {
      v16 += 8;
      if (v16 == v15)
      {
        v16 = v11[6];
        break;
      }
    }
  }

  if (v15 != v16)
  {
    v17 = v16 - v13;
    if (v16 - v13 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v11 + 5), a2))
    {
      return v17 >> 3;
    }
  }

  v18 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v14, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(v12 + 11, v18, a3, a4, a5, 0);
  v20 = v12[12];
  v19 = v12[13];
  v21 = v12[11];
  if (v19 - v21 < &v20[-v21 + 1])
  {
    std::vector<unsigned char>::reserve(v12 + 11, (2 * (v19 - v21)) | 1);
    v20 = v12[12];
    v19 = v12[13];
  }

  if (v20 >= v19)
  {
    v23 = v12[11];
    v24 = (v20 - v23);
    v25 = v20 - v23 + 1;
    if (v25 < 0)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v26 = v19 - v23;
    if (2 * v26 > v25)
    {
      v25 = 2 * v26;
    }

    if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      operator new();
    }

    v28 = v20 - v23;
    *v24 = a6;
    v22 = v24 + 1;
    memcpy(0, v23, v28);
    v12[11] = 0;
    v12[12] = v24 + 1;
    v12[13] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v20 = a6;
    v22 = v20 + 1;
  }

  v12[12] = v22;
  return v18;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeGlobalVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = 2;
  v18[1] = v18;
  v9 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 2uLL);
  v10 = v9;
  v12 = v9 + 5;
  v11 = v9[5];
  v13 = v9[6];
  v14 = v11;
  if (v11 != v13)
  {
    while (*v14 != a2)
    {
      v14 += 8;
      if (v14 == v13)
      {
        v14 = v9[6];
        break;
      }
    }
  }

  if (v13 != v14)
  {
    v15 = v14 - v11;
    if (v14 - v11 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v9 + 5), a2))
    {
      return v15 >> 3;
    }
  }

  v16 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v12, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(v10 + 11, v16, a3, a4, a5, 1);
  return v16;
}

void ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v81 = a4;
  v82 = a2;
  v79 = a6;
  v80 = a5;
  v78 = a7;
  v10 = a1[1];
  v11 = a1[2] - *a1;
  if (v11 < &v10[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v11) | 1);
    v10 = a1[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v13 = a1[2];
    if (v10 >= v13)
    {
      v14 = *a1;
      v15 = &v10[-*a1];
      v16 = (v15 + 1);
      if ((v15 + 1) < 0)
      {
LABEL_114:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v17 = v13 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        operator new();
      }

      v19 = &v10[-*a1];
      *v15 = *(&v82 + i);
      v10 = v15 + 1;
      memcpy(0, v14, v19);
      *a1 = 0;
      a1[1] = v15 + 1;
      a1[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v10++ = *(&v82 + i);
    }

    a1[1] = v10;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a3);
  v20 = a1[1];
  v21 = a1[2] - *a1;
  if (v21 < &v20[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v21) | 1);
    v20 = a1[1];
  }

  for (j = 0; j != 8; ++j)
  {
    v23 = a1[2];
    if (v20 >= v23)
    {
      v24 = *a1;
      v25 = &v20[-*a1];
      v26 = (v25 + 1);
      if ((v25 + 1) < 0)
      {
        goto LABEL_114;
      }

      v27 = v23 - v24;
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        operator new();
      }

      v29 = &v20[-*a1];
      *v25 = *(&v81 + j);
      v20 = v25 + 1;
      memcpy(0, v24, v29);
      *a1 = 0;
      a1[1] = v25 + 1;
      a1[2] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v20++ = *(&v81 + j);
    }

    a1[1] = v20;
  }

  v30 = a1[2] - *a1;
  if (v30 < &v20[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v30) | 1);
    v20 = a1[1];
  }

  for (k = 0; k != 8; ++k)
  {
    v32 = a1[2];
    if (v20 >= v32)
    {
      v33 = *a1;
      v34 = &v20[-*a1];
      v35 = (v34 + 1);
      if ((v34 + 1) < 0)
      {
        goto LABEL_114;
      }

      v36 = v32 - v33;
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        operator new();
      }

      v38 = &v20[-*a1];
      *v34 = *(&v80 + k);
      v20 = v34 + 1;
      memcpy(0, v33, v38);
      *a1 = 0;
      a1[1] = v34 + 1;
      a1[2] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v20++ = *(&v80 + k);
    }

    a1[1] = v20;
  }

  v39 = a1[2] - *a1;
  if (v39 < &v20[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v39) | 1);
    v20 = a1[1];
  }

  for (m = 0; m != 8; ++m)
  {
    v41 = a1[2];
    if (v20 >= v41)
    {
      v42 = *a1;
      v43 = &v20[-*a1];
      v44 = (v43 + 1);
      if ((v43 + 1) < 0)
      {
        goto LABEL_114;
      }

      v45 = v41 - v42;
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        operator new();
      }

      v47 = &v20[-*a1];
      *v43 = *(&v79 + m);
      v20 = v43 + 1;
      memcpy(0, v42, v47);
      *a1 = 0;
      a1[1] = v43 + 1;
      a1[2] = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    else
    {
      *v20++ = *(&v79 + m);
    }

    a1[1] = v20;
  }

  v48 = a1[2] - *a1;
  if (v48 < &v20[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v48) | 1);
    v20 = a1[1];
  }

  for (n = 0; n != 8; ++n)
  {
    v50 = a1[2];
    if (v20 >= v50)
    {
      v51 = *a1;
      v52 = &v20[-*a1];
      v53 = (v52 + 1);
      if ((v52 + 1) < 0)
      {
        goto LABEL_114;
      }

      v54 = v50 - v51;
      if (2 * v54 > v53)
      {
        v53 = 2 * v54;
      }

      if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        operator new();
      }

      v56 = &v20[-*a1];
      *v52 = *(&v78 + n);
      v20 = v52 + 1;
      memcpy(0, v51, v56);
      *a1 = 0;
      a1[1] = v52 + 1;
      a1[2] = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v20++ = *(&v78 + n);
    }

    a1[1] = v20;
  }

  v77 = a8;
  v57 = a1[2] - *a1;
  if (v57 < &v20[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v57) | 1);
    v20 = a1[1];
  }

  for (ii = 0; ii != 8; ++ii)
  {
    v59 = a1[2];
    if (v20 >= v59)
    {
      v60 = *a1;
      v61 = &v20[-*a1];
      v62 = (v61 + 1);
      if ((v61 + 1) < 0)
      {
        goto LABEL_114;
      }

      v63 = v59 - v60;
      if (2 * v63 > v62)
      {
        v62 = 2 * v63;
      }

      if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v64 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }

      if (v64)
      {
        operator new();
      }

      v65 = &v20[-*a1];
      *v61 = *(&v77 + ii);
      v20 = v61 + 1;
      memcpy(0, v60, v65);
      *a1 = 0;
      a1[1] = v61 + 1;
      a1[2] = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      *v20++ = *(&v77 + ii);
    }

    a1[1] = v20;
  }

  v77 = a9;
  v66 = a1[2] - *a1;
  if (v66 < &v20[-*a1 + 8])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v66) | 1);
    v20 = a1[1];
  }

  for (jj = 0; jj != 8; ++jj)
  {
    v68 = a1[2];
    if (v20 >= v68)
    {
      v69 = *a1;
      v70 = &v20[-*a1];
      v71 = (v70 + 1);
      if ((v70 + 1) < 0)
      {
        goto LABEL_114;
      }

      v72 = v68 - v69;
      if (2 * v72 > v71)
      {
        v71 = 2 * v72;
      }

      if (v72 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v73 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        operator new();
      }

      v74 = &v20[-*a1];
      *v70 = *(&v77 + jj);
      v20 = v70 + 1;
      memcpy(0, v69, v74);
      *a1 = 0;
      a1[1] = v70 + 1;
      a1[2] = 0;
      if (v69)
      {
        operator delete(v69);
      }
    }

    else
    {
      *v20++ = *(&v77 + jj);
    }

    a1[1] = v20;
  }
}

void std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(unint64_t **a1, int a2, uint64_t a3)
{
  v6 = **a1;
  v7 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1[2], v6);
  if (v6 == -1 || v7 != 0)
  {
    *a1[1] = v7[3];
    return;
  }

  v9 = *a1[4];
  v10 = *(v9 + 88) + a2;
  v51 = *a1[3];
  v52 = a1[3][1];
  if (a3 == 4294950959)
  {
    Object = GTMTLSMContext_getObject(**(v9 + 40), v6, v10);
    AddFunctionIfExist(*a1[4], a1[3], Object[6], v10, *a1[5], 3);
    v22 = Object[7];
    if (!v22)
    {
      goto LABEL_17;
    }

    v15 = a1[3];
    v16 = *a1[4];
    v17 = *(v22 + 848);
    v18 = *a1[5];
    v19 = v10;
    v20 = 3;
    goto LABEL_16;
  }

  if (a3 == 4294951017)
  {
    v11 = GTMTLSMContext_getObject(**(v9 + 40), v6, v10);
    v12 = v11[6];
    if (v12)
    {
      AddFunctionIfExist(*a1[4], a1[3], *(v12 + 1296), v10, *a1[5], 1);
      AddFunctionIfExist(*a1[4], a1[3], *(v11[6] + 1176), v10, *a1[5], 2);
    }

    v13 = v11[8];
    if (v13)
    {
      AddFunctionIfExist(*a1[4], a1[3], *(v13 + 136), v10, *a1[5], 3);
    }

    v14 = v11[9];
    if (v14)
    {
      AddFunctionIfExist(*a1[4], a1[3], *(v14 + 360), v10, *a1[5], 7);
      v15 = a1[3];
      v16 = *a1[4];
      v17 = *(v11[9] + 368);
      v18 = *a1[5];
      v19 = v10;
      v20 = 8;
LABEL_16:
      AddFunctionIfExist(v16, v15, v17, v19, v18, v20);
    }
  }

LABEL_17:
  v49 = **a1;
  v23 = 8;
  entry = find_entry(*(*a1[4] + 8), *a1, 8uLL, 0);
  if (*entry)
  {
    v25 = *(*entry + 32);
    if (v25)
    {
      v26 = atomic_load((v25 + 56));
      v23 = v25 + (~(v26 >> 2) & 8);
    }

    else
    {
      v23 = 8;
    }
  }

  v27 = a1[6];
  v29 = *v27;
  v28 = v27[1];
  v30 = v28 - *v27;
  v50 = 0xCCCCCCCCCCCCCCCDLL * (v30 >> 3);
  v31 = a1[2];
  v32 = **a1;
  v33 = v31[1];
  v48 = *v23;
  if (!*&v33)
  {
    goto LABEL_38;
  }

  v34 = vcnt_s8(v33);
  v34.i16[0] = vaddlv_u8(v34);
  if (v34.u32[0] > 1uLL)
  {
    v35 = **a1;
    if (v32 >= *&v33)
    {
      v35 = v32 % *&v33;
    }
  }

  else
  {
    v35 = (*&v33 - 1) & v32;
  }

  v36 = *(*v31 + 8 * v35);
  if (!v36 || (v37 = *v36) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v38 = v37[1];
    if (v38 == v32)
    {
      break;
    }

    if (v34.u32[0] > 1uLL)
    {
      if (v38 >= *&v33)
      {
        v38 %= *&v33;
      }
    }

    else
    {
      v38 &= *&v33 - 1;
    }

    if (v38 != v35)
    {
      goto LABEL_38;
    }

LABEL_37:
    v37 = *v37;
    if (!v37)
    {
      goto LABEL_38;
    }
  }

  if (v37[2] != v32)
  {
    goto LABEL_37;
  }

  v39 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 4);
  v40 = -1431655765 * ((a1[3][1] - *a1[3]) >> 4) - v39;
  v37[3] = v50;
  *a1[1] = v50;
  v41 = v27[2];
  if (v28 >= v41)
  {
    v43 = v50 + 1;
    if (v50 + 1 > 0x666666666666666)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v44 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v29) >> 3);
    if (2 * v44 > v43)
    {
      v43 = 2 * v44;
    }

    if (v44 >= 0x333333333333333)
    {
      v45 = 0x666666666666666;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      if (v45 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v46 = 8 * (v30 >> 3);
    *v46 = v49;
    *(v46 + 8) = v48;
    *(v46 + 16) = a2;
    *(v46 + 24) = v50;
    *(v46 + 32) = v39;
    *(v46 + 36) = v40;
    v42 = v46 + 40;
    v47 = v46 - v30;
    memcpy((v46 - v30), v29, v30);
    *v27 = v47;
    v27[1] = v42;
    v27[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v28 = v49;
    *(v28 + 8) = v48;
    *(v28 + 16) = a2;
    *(v28 + 24) = v50;
    v42 = v28 + 40;
    *(v28 + 32) = v39;
    *(v28 + 36) = v40;
  }

  v27[1] = v42;
}

void AddFunctionIfExist(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, int a6)
{
  v42 = a5;
  Object = GTMTLSMContext_getObject(**(a1 + 40), a3, a4);
  if (!Object)
  {
    goto LABEL_34;
  }

  v12 = Object;
  v13 = Object + 1;
  v41 = Object[1];
  v14 = *(a1 + 8);
  v15 = 8;
  entry = find_entry(v14, v13, 8uLL, 0);
  if (*entry)
  {
    v17 = *(*entry + 32);
    if (v17)
    {
      v18 = atomic_load((v17 + 56));
      v15 = v17 + (~(v18 >> 2) & 8);
    }

    else
    {
      v15 = 8;
    }
  }

  v19 = *v15;
  v40 = v12[5];
  v20 = *a2;
  v21 = a2[1];
  v22 = v12[7];
  if (v22)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12[7]];
  }

  else
  {
    v23 = &stru_2860BD438;
  }

  v24 = [v42 addString:v23];
  if (v22)
  {
  }

  v25 = v12[10];
  if (v25)
  {
    if (*(v25 + 8))
    {
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      v27 = [v42 addString:v26];
    }

    else
    {
      v28 = *(v25 + 16);
      if (v28)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v25 + 16)];
      }

      else
      {
        v26 = &stru_2860BD438;
      }

      v27 = [v42 addString:v26];
      if (!v28)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_20:
  v29 = -1431655765 * ((v21 - v20) >> 4);
  v30 = a2[1];
  v31 = a2[2];
  if (v30 >= v31)
  {
    v33 = *a2;
    v34 = v30 - *a2;
    v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 4) + 1;
    if (v35 > 0x555555555555555)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 4);
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    if (v36 >= 0x2AAAAAAAAAAAAAALL)
    {
      v37 = 0x555555555555555;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (v37 <= 0x555555555555555)
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v38 = 16 * (v34 >> 4);
    *v38 = v41;
    *(v38 + 8) = v19;
    *(v38 + 16) = v40;
    *(v38 + 24) = v29;
    *(v38 + 28) = v24;
    *(v38 + 32) = v27;
    *(v38 + 36) = a6;
    *(v38 + 40) = 0;
    v32 = v38 + 48;
    v39 = v38 - v34;
    memcpy((v38 - v34), v33, v34);
    *a2 = v39;
    a2[1] = v32;
    a2[2] = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v30 = v41;
    *(v30 + 8) = v19;
    *(v30 + 16) = v40;
    *(v30 + 24) = v29;
    *(v30 + 28) = v24;
    *(v30 + 32) = v27;
    *(v30 + 36) = a6;
    v32 = v30 + 48;
    *(v30 + 40) = 0;
  }

  a2[1] = v32;
LABEL_34:
}

void sub_24D9797A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

id GTShaderProfilerStreamDataFromReplayDataSource()
{
  v102 = MEMORY[0x28223BE20]();
  v160 = *MEMORY[0x277D85DE8];
  if (shared_initialized)
  {
    goto LABEL_11;
  }

  if (initialized++)
  {
    goto LABEL_11;
  }

  if ((apr_pools_shared_initialized & 1) != 0 || (v2 = apr_pools_initialized, ++apr_pools_initialized, v2))
  {
LABEL_5:
    *&v155 = 0;
    if (!apr_pool_create_ex(&v155, 0, 0, v0))
    {
      *(v155 + 80) = "apr_initialize";
    }

    goto LABEL_11;
  }

  global_allocator = 0;
  v3 = GTCoreAlloc(0xC8uLL);
  if (!v3)
  {
LABEL_10:
    apr_pools_initialized = 0;
    goto LABEL_11;
  }

  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 192) = 0;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  global_allocator = v3;
  *(v3 + 8) = vdupq_n_s64(0x8000uLL);
  if (apr_pool_create_ex(&global_pool, 0, v3, v0))
  {
    apr_allocator_destroy(global_allocator);
    global_allocator = 0;
    goto LABEL_10;
  }

  v96 = global_pool;
  *(global_pool + 80) = "apr_global_pool";
  if (hash_mutex)
  {
LABEL_185:
    *&v155 = 0;
    if (apr_thread_mutex_create(&v155, v96, v4))
    {
      goto LABEL_11;
    }

    v100 = global_allocator;
    v101 = global_pool;
    *(global_allocator + 24) = v155;
    *(v100 + 32) = v101;
    goto LABEL_5;
  }

  v97 = apr_palloc(v96, 0x38uLL);
  hash_mutex = v97;
  v98 = *(v96 + 5);
  if (v98)
  {
    *(v96 + 5) = *v98;
  }

  else
  {
    v98 = apr_palloc(v96, 0x20uLL);
  }

  v99 = 0;
  v98[1] = v97;
  v98[2] = atomic_cleanup;
  v98[3] = apr_pool_cleanup_null;
  *v98 = *(v96 + 4);
  *(v96 + 4) = v98;
  while (!apr_thread_mutex_create((hash_mutex + v99), v96, v4))
  {
    v99 += 8;
    if (v99 == 56)
    {
      LODWORD(v96) = global_pool;
      goto LABEL_185;
    }
  }

LABEL_11:
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v0);
  v5 = v102;
  v150 = v102;
  v149 = 0;
  apr_pool_create_ex(&v149, newpool, 0, v6);
  v105 = GTCaptureArchiveDecompressor_create(v149);
  v7 = objc_opt_new();
  v148 = v7;
  v8 = **v102;
  if (v8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:**v102];
    v9 = [v5 lastPathComponent];
    v7 = v148;
  }

  else
  {
    v9 = 0;
  }

  [v7 setTraceName:v9];
  if (v8)
  {
  }

  v10 = v150;
  Device = GTMTLSMContext_getDevice(*v150[5], v150[11]);
  if (Device)
  {
    v12 = Device[5];
    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v12 + 64)];
      [v148 setMetalDeviceName:v13];

      v10 = v150;
    }
  }

  v109 = v10[2];
  v14 = v10[15];
  v15 = v10[16];
  memset(v146, 0, sizeof(v146));
  v147 = 1065353216;
  memset(v144, 0, sizeof(v144));
  v145 = 1065353216;
  v142 = 0;
  v141 = 0;
  v143 = 0;
  v139 = 0;
  v138 = 0;
  v140 = 0;
  v136 = 0;
  v135 = 0;
  v137 = 0;
  v134 = 0;
  v133 = 0;
  __p = 0;
  if (*(v14 + 3) >= 1)
  {
    v16 = 0;
    v17 = 0;
    v108 = v15;
    v18 = 0;
    v104 = 0;
    v103 = v14;
    while (1)
    {
      v19 = (v14[3] + 24 * v18);
      v20 = v15[3] + (*v19 << 6);
      if ((*(v20 + 15) & 0x40) != 0 && (v19[5] + 12542) < 0xFFFFFFFE)
      {
        goto LABEL_154;
      }

      v113 = v17;
      v114 = (v14[3] + 24 * v18);
      v110 = v15[3] + (*v19 << 6);
      v21 = *(v20 + 8);
      ConstructorType = GTFenum_getConstructorType(v21);
      if (ConstructorType == 25)
      {
        break;
      }

      if (ConstructorType == 51)
      {
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        v23 = *(v110 + 8);
        if (v23 == -15343)
        {
          v26 = 0;
          *(&v156 + 1) = *v110;
        }

        else
        {
          v24 = v150[2];
          if (v23 == -15313)
          {
            v79 = GTTraceFunc_argumentBytesWithMap(v110, *(v110 + 13), v150[2]);
            *(&v158 + 1) = GTTraceFunc_argumentBytesWithMap(v110, v79[8], v24);
            v26 = *(&v155 + 1);
          }

          else if (v23 == -15333)
          {
            v25 = GTTraceFunc_argumentBytesWithMap(v110, *(v110 + 13), v150[2]);
            v155 = 0u;
            v156 = 0u;
            v157 = 0u;
            v158 = 0u;
            v159 = 0u;
            v26 = *(v25 + 1);
            if (v26)
            {
              LODWORD(v155) = 51;
              *(&v155 + 1) = v26;
              *&v156 = *v110;
              *(&v156 + 1) = -1;
              BYTE9(v159) = 1;
              *&v158 = *v25;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        v153 = 0;
        v154 = 0;
        v152 = v26;
        entry = find_entry(v150[1], &v155 + 8, 8uLL, 0);
        v81 = 8;
        if (!*entry)
        {
          goto LABEL_152;
        }

        v82 = *(*entry + 32);
        if (!v82)
        {
          v81 = 8;
          goto LABEL_152;
        }

        goto LABEL_150;
      }

      if (GTMTLReplayHost_IsFuncEnumSampledEncoder(v21, 1, 0))
      {
        bzero(&v155, 0x2BA0uLL);
        bzero(&v152, 0x2BA0uLL);
        ++*(v136 - 4);
        v131 = 0;
        v130 = 0;
        v129[0] = &v131;
        v129[1] = &v130;
        v129[2] = v146;
        v129[3] = &__p;
        v129[4] = &v150;
        v129[5] = &v148;
        v129[6] = &v138;
        v31 = v114;
        v32 = *v114;
        v106 = v18;
        if (v32 >= v114[1])
        {
          goto LABEL_127;
        }

        while (1)
        {
          v33 = v15[3] + (v32 << 6);
          if (GTFenum_isParallelCommandEncoderCall(*(v33 + 8)))
          {
            v34 = &v155;
          }

          else
          {
            v34 = &v152;
          }

          GTMTLSMCommandEncoder_processTraceFunc(v34, v33, v150[2]);
          v35 = *(v34 + 1);
          v36 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v144, v35);
          if (v36)
          {
            LODWORD(v37) = *(v36 + 6);
            goto LABEL_80;
          }

          if (v16 != v113 && *(v113 - 3) == *v31)
          {
            LODWORD(v37) = -1 - 858993459 * ((v113 - v16) >> 3);
            goto LABEL_80;
          }

          v38 = find_entry(v150[1], v34 + 8, 8uLL, 0);
          v39 = 8;
          if (*v38)
          {
            v40 = *(*v38 + 32);
            if (v40)
            {
              v41 = atomic_load((v40 + 56));
              v39 = v40 + (~(v41 >> 2) & 8);
            }

            else
            {
              v39 = 8;
            }
          }

          __src = v16;
          v42 = *v39;
          v43 = *(v34 + 1);
          v107 = *v31;
          if (!v144[1])
          {
            goto LABEL_67;
          }

          v44 = vcnt_s8(v144[1]);
          v44.i16[0] = vaddlv_u8(v44);
          if (v44.u32[0] > 1uLL)
          {
            v45 = *(v34 + 1);
            if (v43 >= v144[1])
            {
              v45 = v43 % v144[1];
            }
          }

          else
          {
            v45 = (v144[1] - 1) & v43;
          }

          v46 = *(v144[0] + 8 * v45);
          if (!v46 || (v47 = *v46) == 0)
          {
LABEL_67:
            operator new();
          }

          while (1)
          {
            v48 = v47[1];
            if (v48 == v43)
            {
              break;
            }

            if (v44.u32[0] > 1uLL)
            {
              if (v48 >= v144[1])
              {
                v48 %= v144[1];
              }
            }

            else
            {
              v48 &= v144[1] - 1;
            }

            if (v48 != v45)
            {
              goto LABEL_67;
            }

LABEL_66:
            v47 = *v47;
            if (!v47)
            {
              goto LABEL_67;
            }
          }

          if (v47[2] != v43)
          {
            goto LABEL_66;
          }

          v49 = v113 - v16;
          v37 = 0xCCCCCCCCCCCCCCCDLL * ((v113 - v16) >> 3);
          v50 = (v142 - v141) >> 5;
          v51 = ((v136 - v135) >> 5) - 1;
          v47[3] = v37;
          v52 = v37 + 1;
          if (v37 + 1 > 0x666666666666666)
          {
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          if (0x999999999999999ALL * (-__src >> 3) > v52)
          {
            v52 = 0x999999999999999ALL * (-__src >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
          {
            v53 = 0x666666666666666;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            if (v53 <= 0x666666666666666)
            {
              operator new();
            }

            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v54 = 8 * (&v113[-__src] >> 3);
          *v54 = v35;
          *(v54 + 8) = v42;
          *(v54 + 16) = v107;
          *(v54 + 24) = v37;
          *(v54 + 28) = v50;
          *(v54 + 32) = v51;
          *(v54 + 36) = 0;
          v113 = (v54 + 40);
          memcpy((40 * v37 + 40 * (v49 / -40)), __src, v49);
          if (__src)
          {
            operator delete(__src);
          }

          v16 = (40 * v37 + 40 * (v49 / -40));
          v15 = v108;
          v18 = v106;
LABEL_80:
          v55 = *(v33 + 8);
          if (v55 == -16279 || v55 == -16337)
          {
            v131 = *(GTTraceFunc_argumentBytesWithMap(v33, *(v33 + 13), v109) + 1);
            _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(v129, v32, *(v33 + 8));
            v55 = *(v33 + 8);
          }

          if (GTFenum_isGPUCommandCall(v55))
          {
            v56 = GTFenum_isDrawCall(v55);
            v57 = 0;
            if (v56)
            {
              v58 = 1;
              goto LABEL_120;
            }

            v58 = 3;
            if (v55 > -15298)
            {
              if (v55 != -15297)
              {
                v67 = -15059;
                goto LABEL_102;
              }
            }

            else if (v55 != -16137)
            {
              v67 = -15486;
LABEL_102:
              if (v55 != v67)
              {
                if (GTFenum_isComputeCall(v55))
                {
                  v57 = 0;
                  v58 = 2;
                }

                else if (GTFenum_isSampledBlitCallAGX(v55) || GTFenum_isSampledBlitCall(v55))
                {
                  ++v104;
                  v58 = 4;
                  v57 = 1;
                }

                else
                {
                  v75 = GTFenum_isMeshCall(v55);
                  v57 = 0;
                  if (v75)
                  {
                    v58 = 5;
                  }

                  else
                  {
                    v58 = 0;
                  }
                }
              }
            }

LABEL_120:
            LODWORD(__dst[0]) = (v142 - v141) >> 5;
            DWORD1(__dst[0]) = v37;
            if (v57)
            {
              v76 = -1;
            }

            else
            {
              v76 = v130;
            }

            DWORD2(__dst[0]) = ((v136 - v135) >> 5) - 1;
            HIDWORD(__dst[0]) = v76;
            *&__dst[1] = v32;
            *(&__dst[1] + 1) = v58 | 0xFFFFFFFF00000000;
            std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v141, __dst);
            if (v76 != -1)
            {
              ++*(v138 + 10 * v76 + 7);
            }

            ++*&v16[40 * v37 + 36];
          }

          else if (v55 >> 2 == 1073737833)
          {
            __srca = v16;
            p = *v105;
            GTMTLSMContext_indirectCommandBufferResources(v126, v150[5], *v110, p);
            GetExecuteCommandsInBufferArgs(&v120, v15[3] + (v32 << 6), v150[2]);
            Object = GTMTLSMContext_getObject(*v150[5], v120, *v110);
            GTMTLCreateIndirectCommandEncoder(v124, Object[14]);
            memcpy(__dst, v34, sizeof(__dst));
            if (*v34 == 28)
            {
              if ((GT_SUPPORT_0 & 0x10) != 0)
              {
                v68 = v122;
                if (v122)
                {
                  v69 = v121;
                  v70 = v123;
                  v71 = v125;
                  v72 = ((v136 - v135) >> 5) - 1;
                  v73 = &v16[40 * v37];
                  do
                  {
                    v127 = v70 + v71 * v69;
                    if (GTMTLSMComputeCommandEncoder_loadIndirectCommand(&__dst[3] + 8, v124, v127, v126))
                    {
                      v131 = *&__dst[4];
                      _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(v129, v32, 4294950959);
                      LODWORD(v116) = (v142 - v141) >> 5;
                      *(&v116 + 4) = __PAIR64__(v72, v37);
                      v74 = v130;
                      HIDWORD(v116) = v130;
                      v117 = v32;
                      v118 = 2;
                      v119 = v69;
                      std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v141, &v116);
                      if (v74 != -1)
                      {
                        ++*(v138 + 10 * v74 + 7);
                      }

                      ++*(v73 + 9);
                    }

                    ++v69;
                    --v68;
                  }

                  while (v68);
                }
              }
            }

            else if (*v34 == 70)
            {
              v60 = v122;
              if (v122)
              {
                v61 = v121;
                v62 = v123;
                v63 = v125;
                v64 = ((v136 - v135) >> 5) - 1;
                v65 = &v16[40 * v37];
                do
                {
                  v127 = v62 + v63 * v61;
                  if (GTMTLSMRenderCommandEncoder_loadIndirectCommand(&__dst[3] + 8, v124, v127, v126))
                  {
                    v131 = *(&__dst[537] + 1);
                    _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(v129, v32, 4294951017);
                    LODWORD(v116) = (v142 - v141) >> 5;
                    *(&v116 + 4) = __PAIR64__(v64, v37);
                    v66 = v130;
                    HIDWORD(v116) = v130;
                    v117 = v32;
                    v118 = 1;
                    v119 = v61;
                    std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v141, &v116);
                    if (v66 != -1)
                    {
                      ++*(v138 + 10 * v66 + 7);
                    }

                    ++*(v65 + 9);
                  }

                  ++v61;
                  --v60;
                }

                while (v60);
              }
            }

            apr_pool_clear(p);
            v16 = __srca;
            v15 = v108;
          }

          ++v32;
          v31 = v114;
          if (v32 >= v114[1])
          {
LABEL_127:
            v18 += v31[3];
            v14 = v103;
            v17 = v113;
            goto LABEL_154;
          }
        }
      }

LABEL_153:
      v17 = v113;
LABEL_154:
      if (++v18 >= *(v14 + 3))
      {
        v91 = v17;
        goto LABEL_164;
      }
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    v27 = v150[2];
    v28 = *(v110 + 8);
    if (v28 > -16203)
    {
      if (v28 <= -15702)
      {
        v77 = v28 == -16202;
        v78 = -15908;
      }

      else
      {
        if (v28 == -15701)
        {
          v87 = GTTraceFunc_argumentBytesWithMap(v110, *(v110 + 13), v150[2]);
          v155 = 0u;
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v88 = *(v87 + 1);
          if (v88)
          {
            LODWORD(v155) = 25;
            *(&v155 + 1) = v88;
            *&v156 = *v110;
            *(&v156 + 1) = -1;
            *&v158 = *v87;
            v89 = GTTraceFunc_argumentBytesWithMap(v110, v87[16], v27);
            *&v159 = v89;
            if (v89)
            {
              BYTE9(v159) = v89[9];
            }
          }

          goto LABEL_148;
        }

        v77 = v28 == -15318;
        v78 = -15316;
      }

      if (!v77 && v28 != v78)
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v28 <= -16362)
      {
        if (v28 == -16365)
        {
          v86 = GTTraceFunc_argumentBytesWithMap(v110, *(v110 + 13), v150[2]);
          *(&v158 + 1) = GTTraceFunc_argumentBytesWithMap(v110, v86[8], v27);
        }

        else if (v28 == -16364)
        {
          BYTE8(v159) = *(GTTraceFunc_argumentBytesWithMap(v110, *(v110 + 13), v150[2]) + 2);
        }

        goto LABEL_148;
      }

      if (v28 != -16361)
      {
        if (v28 != -16343)
        {
          if (v28 != -16342)
          {
            goto LABEL_148;
          }

          v29 = GTTraceFunc_argumentBytesWithMap(v110, *(v110 + 13), v150[2]);
          v155 = 0u;
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v30 = *(v29 + 1);
          if (!v30)
          {
            goto LABEL_148;
          }

          LODWORD(v155) = 25;
          *(&v155 + 1) = v30;
          *&v156 = *v110;
          *(&v156 + 1) = -1;
          goto LABEL_162;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(v110, *(v110 + 13), v150[2]);
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v90 = *(v29 + 1);
        if (v90)
        {
          LODWORD(v155) = 25;
          *(&v155 + 1) = v90;
          *&v156 = *v110;
          *(&v156 + 1) = -1;
          BYTE9(v159) = 1;
LABEL_162:
          *&v158 = *v29;
        }

LABEL_148:
        v153 = 0;
        v154 = 0;
        v152 = *(&v155 + 1);
        v84 = find_entry(v150[1], &v155 + 8, 8uLL, 0);
        v81 = 8;
        if (!*v84)
        {
LABEL_152:
          *(&v152 + 1) = *v81;
          v153 = *v114;
          v154 = ((v136 - v135) >> 5);
          std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v135, &v152);
          goto LABEL_153;
        }

        v82 = *(*v84 + 32);
        if (!v82)
        {
          v81 = 8;
          goto LABEL_152;
        }

LABEL_150:
        v85 = atomic_load((v82 + 56));
        v81 = v82 + (~(v85 >> 2) & 8);
        goto LABEL_152;
      }
    }

    *(&v156 + 1) = *v110;
    goto LABEL_148;
  }

  v16 = 0;
  v91 = 0;
  v104 = 0;
LABEL_164:
  [v148 addGPUCommands:? count:?];
  [v148 addEncoders:v16 count:0xCCCCCCCCCCCCCCCDLL * ((v91 - v16) >> 3)];
  [v148 addPipelineStates:? count:?];
  v92 = v135;
  [v148 addCommandBuffers:v135 count:(v136 - v135) >> 5];
  [v148 addShaderFunctionInfo:? count:?];
  [v148 setNumBlitCalls:v104];
  apr_pool_destroy(v149);
  v93 = v148;
  if (__p)
  {
    v133 = __p;
    operator delete(__p);
  }

  if (v92)
  {
    operator delete(v92);
  }

  if (v138)
  {
    v139 = v138;
    operator delete(v138);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v141)
  {
    operator delete(v141);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v144);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v146);

  [v93 setDataSourceHasUnusedResources:0 captureRange:{v102[11], v102[12]}];
  apr_pool_destroy(newpool);
  v94 = *MEMORY[0x277D85DE8];

  return v93;
}

void GTMTLReplayController_tileMemoryFree(uint64_t a1)
{
  [*(a1 + 56) removeAllObjects];
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;

  v3 = *(a1 + 88);
  *(a1 + 88) = 0;

  v4 = *(a1 + 96);
  *(a1 + 96) = 0;

  v5 = *(a1 + 104);
  *(a1 + 104) = 0;

  v6 = *(a1 + 136);
  *(a1 + 136) = 0;

  v7 = *(a1 + 112);
  *(a1 + 112) = 0;

  v8 = *(a1 + 120);
  *(a1 + 120) = 0;
}

void GTMTLReplayController_tileMemoryLoad(uint64_t a1)
{
  if (GT_SUPPORT_0)
  {
    v2 = *(a1 + 11360);
    v3 = *(a1 + 8);
    if (v2 - 95) <= 0xA && ((0x409u >> (v2 - 95)))
    {
      v4 = GTMTLReplayController_renderPassDescriptor4(a1);
      v5 = [v3 defaultDevice];
      v6 = objc_opt_new();
      [v6 setMaxBufferBindCount:1];
      v7 = [v5 newArgumentTableWithDescriptor:v6 error:0];
      if (*(a1 + 11360))
      {
        v8 = *(a1 + 200);
      }

      else
      {
        v8 = 0;
      }

      v13 = [*(a1 + 8) mtl4RenderCommandEncoderForKey:v8];
      v14 = v13;
      if (*(a1 + 136))
      {
        [v13 setRenderPipelineState:*(a1 + 120)];
        [v7 setAddress:objc_msgSend(*(a1 + 136) atIndex:{"gpuAddress"), 0}];
        [v14 setArgumentTable:v7 atStages:4];
        v15 = *(v4 + 628);
        v16.i64[0] = *(v4 + 630);
        v16.i64[1] = v15;
        v17 = 1;
        [v14 dispatchThreadsPerTile:&v16];
      }

      if (*(a1 + 128))
      {
        [v14 setRenderPipelineState:*(a1 + 96)];
        [v14 setThreadgroupMemoryLength:*(v4 + 616) offset:0 atIndex:0];
        [v7 setAddress:objc_msgSend(*(a1 + 128) atIndex:{"gpuAddress"), 0}];
        [v14 setArgumentTable:v7 atStages:4];
        v16 = vdupq_n_s64(1uLL);
        v17 = 1;
        [v14 dispatchThreadsPerTile:&v16];
      }
    }

    else
    {
      v9 = GTMTLReplayController_renderPassDescriptor(a1);
      if (v2)
      {
        v10 = *(a1 + 200);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v3 renderCommandEncoderForKey:v10];
      v5 = v11;
      if (*(a1 + 136))
      {
        [v11 setRenderPipelineState:*(a1 + 120)];
        [v5 setTileBuffer:*(a1 + 136) offset:0 atIndex:0];
        v12 = *(v9 + 812);
        v16.i64[0] = *(v9 + 814);
        v16.i64[1] = v12;
        v17 = 1;
        [v5 dispatchThreadsPerTile:&v16];
      }

      if (*(a1 + 128))
      {
        [v5 setRenderPipelineState:*(a1 + 96)];
        [v5 setThreadgroupMemoryLength:*(v9 + 800) offset:0 atIndex:0];
        [v5 setTileBuffer:*(a1 + 128) offset:0 atIndex:0];
        v16 = vdupq_n_s64(1uLL);
        v17 = 1;
        [v5 dispatchThreadsPerTile:&v16];
      }
    }
  }
}

void AddMemorylessTexture(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v14 = a1[7];
  Object = GTMTLSMContext_getObject(**(v6 + 40), a2, a3);
  if (Object && *Object == 80)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    GTMTLSMContext_getTextureDescriptor(*(v6 + 40), a2, a3, &v15);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    v9 = WORD2(v17);
    if ((BYTE4(v17) & 0xF0) == 0x30)
    {
      v10 = [v14 objectForKeyedSubscript:v8];

      if (!v10)
      {
        v11 = [a1[1] defaultDevice];
        WORD2(v17) = v9 & 0xFF2F;
        DWORD1(v16) |= 1u;
        v12 = MakeMTLTextureDescriptorWithoutResourceIndex(&v15);
        v13 = [v11 newTextureWithDescriptor:v12];
        [v14 setObject:v13 forKeyedSubscript:v8];
      }
    }
  }
}

void sub_24D97B124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::unique_ptr<GRCCurrentFrameStream>::reset[abi:nn200100]((v10 + 488));
  std::__hash_table<std::__hash_value_type<unsigned int,RingBufferSampledData>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RingBufferSampledData>>>::~__hash_table(v10 + 448);
  v12 = *(v10 + 424);
  if (v12)
  {
    *(v10 + 432) = v12;
    operator delete(v12);
  }

  a10 = (v10 + 328);
  std::vector<std::pair<unsigned int,SampleInfoWithPayload>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 304);
  std::vector<std::tuple<unsigned int,SampleInfoWithPayload,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&a10);
  ProgramAddressHelper::~ProgramAddressHelper(v10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<GRCCurrentFrameStream>::reset[abi:nn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    v2 = *(v1 + 256);
    if (v2)
    {
      *(v1 + 264) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 232);
    if (v3)
    {
      *(v1 + 240) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 208);
    if (v4)
    {
      operator delete(v4);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v1 + 168);
    v5 = *(v1 + 144);
    if (v5)
    {
      do
      {
        v6 = *v5;
        v7 = v5[3];
        if (v7)
        {
          v5[4] = v7;
          operator delete(v7);
        }

        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v8 = *(v1 + 128);
    *(v1 + 128) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v1 + 88);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v1 + 48);
    v9 = *(v1 + 24);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    JUMPOUT(0x2530332C0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,RingBufferSampledData>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RingBufferSampledData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 11);
      *(v2 + 11) = 0;

      v5 = *(v2 + 12);
      *(v2 + 12) = 0;

      v6 = *(v2 + 14);
      if (v6)
      {
        *(v2 + 15) = v6;
        operator delete(v6);
      }

      v7 = *(v2 + 4);
      if (v7)
      {
        *(v2 + 5) = v7;
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}