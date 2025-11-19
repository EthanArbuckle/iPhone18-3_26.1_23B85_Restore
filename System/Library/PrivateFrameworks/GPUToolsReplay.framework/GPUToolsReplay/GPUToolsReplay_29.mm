void std::vector<std::pair<unsigned int,SampleInfoWithPayload>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 96;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::tuple<unsigned int,SampleInfoWithPayload,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 4);
        if (v6)
        {
          *(v4 - 3) = v6;
          operator delete(v6);
        }

        v4 -= 104;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v2[4]);
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

void std::vector<ProgramAddressHelper::PerRingBufferProgramInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(*(v4 - 5));
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v4 - 88));
        v4 -= 88;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ProgramAddressHelper::~ProgramAddressHelper(void **this)
{
  for (i = 33; i != 18; i -= 5)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&this[i]);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 18));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 13));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 8));
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>>>::~__hash_table((this + 3));
  v3 = this;
  std::vector<ProgramAddressHelper::PerRingBufferProgramInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void FillAttachmentPixelFormats(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  v16 = a4;
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 8);
  do
  {
    v11 = *v9;
    v9 += 8;
    v10 = v11;
    if (v11)
    {
      v19 = 0;
      v18 = 0u;
      memset(v17, 0, sizeof(v17));
      GTMTLSMContext_getTextureDescriptor(a2, v10, a3, v17);
      v12 = WORD1(v18);
      v13 = [v16 colorAttachments];
      v14 = [v13 objectAtIndexedSubscript:v7];
      [v14 setPixelFormat:v12];

      v8 = HIBYTE(v18);
    }

    ++v7;
  }

  while (v7 != 8);
  if (v8 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  [v16 setRasterSampleCount:v15];
}

id HarvestTileImageBlockMemory(uint64_t a1, uint64_t a2, void **a3)
{
  v100[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 11360) != 70)
  {
    GTMTLReplay_fillError(a3, 101, MEMORY[0x277CBEC10]);
    if (a3)
    {
      v15 = *a3;
    }

    else
    {
      v15 = 0;
    }

    GTMTLReplay_handleNSError(v15);
    v16 = 0;
    goto LABEL_86;
  }

  v6 = **(a1 + 184);
  v88 = *a1;
  v89 = *(*a1 + 88);
  v87 = *(a1 + 22560);
  v7 = GTMTLSMContext_getObject(**(*a1 + 40), *(a1 + 8792), v89 + v87)[7];
  v8 = *(v7 + 64);
  LODWORD(v9) = *(v7 + 200);
  v10 = 56;
  if (*(v7 + 200))
  {
    v10 = 32;
  }

  else
  {
    LODWORD(v9) = *(v7 + 202);
  }

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v12 = 0;
    v13 = *(v7 + v10);
    v9 = v9;
    v8 = v13;
    do
    {
      v14 = *(v8 + 16);
      if (v14 == 17)
      {
        if (*(v8 + 38) == 1)
        {
          goto LABEL_20;
        }
      }

      else if (v14 == 16)
      {
        v8 = v13 + 56 * v12;
        goto LABEL_20;
      }

      ++v12;
      v8 += 56;
      --v9;
    }

    while (v9);
    v8 = 0;
  }

LABEL_20:
  v17 = *(v8 + 24);
  if (!v17)
  {
    v17 = *(v8 + 8);
  }

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 8);
    do
    {
      countStructMember(v19);
      v19 += 32;
      --v18;
    }

    while (v18);
  }

  v20 = apr_array_make(v6, 8, 8);
  nameStructType1(v20, v17, a2);
  v22 = v21;
  v94[1] = v21;
  v24 = apr_array_pstrcat(v6, v20, v23);
  p = v6;
  v25 = apr_psprintf(v6, v24, a2);
  v94[0] = v25;
  v26 = *(a1 + 8);
  v27 = [v26 defaultDevice];
  v28 = objc_alloc_init(MEMORY[0x277CD7050]);
  v29 = v28;
  v30 = HIDWORD(v22);
  if (v22)
  {
    [v28 setTextureType:3];
    [v29 setArrayLength:v22];
    v31 = 19;
  }

  else
  {
    v31 = 3;
  }

  [v29 setUsage:v31];
  [v29 setWidth:*(a1 + 22544)];
  [v29 setHeight:*(a1 + 22552)];
  if ((v22 & 0xFFFF00000000) == 0)
  {
    if ((BYTE6(v22) - 3) > 0x35u)
    {
      LOWORD(v30) = 0;
    }

    else
    {
      LOWORD(v30) = word_24DA913D0[4 * (BYTE6(v22) - 3)];
    }
  }

  [v29 setPixelFormat:v30];
  [v29 setStorageMode:2];
  v32 = [v27 newTextureWithDescriptor:v29];
  if (!v32)
  {
    v99 = @"GTErrorKeyMTLTextureDescriptor";
    v100[0] = v29;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:&v99 count:1];
    GTMTLReplay_fillError(a3, 101, v34);
    if (a3)
    {
      v35 = *a3;
    }

    else
    {
      v35 = 0;
    }

    GTMTLReplay_handleNSError(v35);

    goto LABEL_84;
  }

  v33 = p;
  if (GT_SUPPORT_0)
  {
    v81 = a3;
    v36 = MEMORY[0x277CCACA8];
    v37 = apr_array_make(p, 8, 8);
    *apr_array_push(v37) = "#include <metal_stdlib>\n#include <metal_imageblocks>\n#include <simd/simd.h>\nusing namespace metal;\n\nstruct ImageblockMaster {\n";
    v38 = *(v8 + 16);
    v85 = v27;
    v86 = v26;
    v83 = v25;
    v84 = v32;
    v82 = v36;
    if (v38 == 17 || v38 == 16)
    {
      v39 = *(v8 + 24);
      if (!v39)
      {
        v39 = *(v8 + 8);
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = apr_array_make(p, 8, 8);
    if (*(v39 + 16))
    {
      v41 = v40;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      do
      {
        v41->nelts = 0;
        LODWORD(v44) = processStructMember(v41, *(v39 + 8) + v42, 1, v44) + v44;
        v46 = apr_array_pstrcat(v37->pool, v41, v45);
        *apr_array_push(v37) = v46;
        ++v43;
        v42 += 32;
      }

      while (v43 < *(v39 + 16));
    }

    *apr_array_push(v37) = "};\n\n";
    v47 = *(v8 + 16);
    if (v47 == 16)
    {
      v53 = *(v8 + 37);
      v50 = *(v8 + 36);
      *apr_array_push(v37) = "kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock";
      v26 = v86;
      v48 = p;
      if (v53)
      {
LABEL_50:
        v51 = apr_array_push(v37);
        v52 = " [[ alias_implicit_imageblock ]]";
        goto LABEL_54;
      }
    }

    else
    {
      v48 = p;
      if (v47 != 17)
      {
        *apr_array_push(v37) = "kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock";
        v26 = v86;
        goto LABEL_56;
      }

      v49 = *(v8 + 37);
      v50 = *(v8 + 36);
      *apr_array_push(v37) = "kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock";
      v26 = v86;
      if (v49)
      {
        goto LABEL_50;
      }
    }

    if (v50 > 7)
    {
LABEL_56:
      *apr_array_push(v37) = ",\n\tuint2 gid [[ thread_position_in_grid ]],\n\tushort2 lid [[ thread_position_in_threadgroup ]],\n\t";
      if (v22)
      {
        v55 = "texture2d_array";
      }

      else
      {
        v55 = "texture2d";
      }

      *apr_array_push(v37) = v55;
      *apr_array_push(v37) = "<";
      if ((BYTE6(v22) - 3) > 0x35u)
      {
        v56 = 0;
      }

      else
      {
        v56 = off_279658B48[(BYTE6(v22) - 3)];
      }

      *apr_array_push(v37) = v56;
      *apr_array_push(v37) = ", access::write> imageBlockData [[ texture(0) ]])\n";
      *apr_array_push(v37) = "{\n";
      *apr_array_push(v37) = "\tthreadgroup_imageblock ImageblockMaster* ib = imageBlock.data(lid);\n";
      v57 = apr_array_push(v37);
      if (v22)
      {
        *v57 = "\tfor (int i = 0; i < ";
        v58 = apr_psprintf(v37->pool, "%u", v22);
        *apr_array_push(v37) = v58;
        *apr_array_push(v37) = "; i++) {\n";
        *apr_array_push(v37) = "\t\t";
        if ((BYTE6(v22) - 3) > 0x35u)
        {
          v59 = 0;
        }

        else
        {
          v59 = off_279658CF8[(BYTE6(v22) - 3)];
        }

        v27 = v85;
        *apr_array_push(v37) = v59;
        *apr_array_push(v37) = " currData = ib->";
        *apr_array_push(v37) = v83;
        *apr_array_push(v37) = "[i];\n";
        *apr_array_push(v37) = "\t\timageBlockData.write(";
        GenerateStringForWritingDataToTexture(v37, v94);
        *apr_array_push(v37) = ", gid, i);\n";
        v61 = apr_array_push(v37);
        v62 = "\t}\n";
      }

      else
      {
        *v57 = "\t";
        if ((BYTE6(v22) - 3) > 0x35u)
        {
          v60 = 0;
        }

        else
        {
          v60 = off_279658CF8[(BYTE6(v22) - 3)];
        }

        v27 = v85;
        *apr_array_push(v37) = v60;
        *apr_array_push(v37) = " currData = ib->";
        *apr_array_push(v37) = v83;
        *apr_array_push(v37) = ";\n";
        *apr_array_push(v37) = "\timageBlockData.write(";
        GenerateStringForWritingDataToTexture(v37, v94);
        v61 = apr_array_push(v37);
        v62 = ", gid);\n";
      }

      *v61 = v62;
      *apr_array_push(v37) = "}\n";
      v64 = [v82 stringWithUTF8String:{apr_array_pstrcat(v48, v37, v63)}];
      v93 = 0;
      v65 = [v27 newLibraryWithSource:v64 options:0 error:&v93];
      v66 = v93;
      if (v66)
      {
        v67 = v66;
        v97 = *MEMORY[0x277CCA7E8];
        v98 = v66;
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        GTMTLReplay_fillError(v81, 101, v68);
        v32 = v84;
        if (v81)
        {
          v69 = *v81;
        }

        else
        {
          v69 = 0;
        }

        GTMTLReplay_handleNSError(v69);
      }

      else
      {
        v68 = objc_alloc_init(MEMORY[0x277CD7070]);
        [v68 setLabel:@"Tile Pipeline for dumping Image Block data"];
        v70 = [v65 newFunctionWithName:@"dumpImageBlockData"];
        [v68 setTileFunction:v70];

        [v68 setThreadgroupSizeMatchesTileSize:1];
        v71 = GTMTLReplayController_renderPassDescriptor(a1);
        FillAttachmentPixelFormats(v71, *(v88 + 40), v89 + v87, v68);
        v92 = 0;
        v72 = [v27 newRenderPipelineStateWithTileDescriptor:v68 error:&v92];
        v73 = v92;
        v32 = v84;
        if (!v73)
        {

          if (*(a1 + 11360))
          {
            v77 = *(a1 + 200);
          }

          else
          {
            v77 = 0;
          }

          v33 = p;
          v80 = [v26 renderCommandEncoderForKey:v77];
          [v80 pushDebugGroup:@"Dump Tile Data"];
          [v80 setRenderPipelineState:v72];
          [v80 setTileTexture:v84 atIndex:0];
          v91[0] = [v80 tileWidth];
          v91[1] = [v80 tileHeight];
          v91[2] = 1;
          [v80 dispatchThreadsPerTile:v91];
          [v80 popDebugGroup];

          goto LABEL_34;
        }

        v74 = v73;
        v95 = *MEMORY[0x277CCA7E8];
        v96 = v73;
        v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        GTMTLReplay_fillError(v81, 101, v75);
        if (v81)
        {
          v76 = *v81;
        }

        else
        {
          v76 = 0;
        }

        GTMTLReplay_handleNSError(v76);

        v67 = v64;
        v64 = v72;
      }

LABEL_84:
      v16 = 0;
      goto LABEL_85;
    }

    *apr_array_push(v37) = " [[ alias_implicit_imageblock_color";
    v54 = apr_psprintf(v37->pool, "(%u)", v50);
    *apr_array_push(v37) = v54;
    v51 = apr_array_push(v37);
    v52 = " ]]";
LABEL_54:
    *v51 = v52;
    goto LABEL_56;
  }

LABEL_34:
  apr_pool_clear(v33);
  v16 = v32;
LABEL_85:

LABEL_86:
  v78 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t countStructMember(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 16);
    if (!v5)
    {
      return 0;
    }

    LODWORD(v6) = 0;
    v7 = *(v4 + 8);
    do
    {
      v6 = countStructMember(v7) + v6;
      v7 += 32;
      --v5;
    }

    while (v5);
    return v6;
  }

  if (v1 != 2)
  {
    return 1;
  }

  v2 = *(a1 + 8);

  return countArrayType(v2);
}

uint64_t nameStructType1(apr_array_header_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = *(a2 + 8); ; i += 32)
  {
    v7 = countStructMember(i);
    if (a3 < v7)
    {
      break;
    }

    a3 = (a3 - v7);
    if (!--v3)
    {
      return 0;
    }
  }

  v9 = *i;
  if (!strncmp(*i, "user(", 5uLL))
  {
    v9 = "fragmentMember%d";
  }

  *apr_array_push(a1) = v9;
  v10 = *(i + 24);
  if (v10 == 1)
  {
    v11 = *(i + 8);
    *apr_array_push(a1) = ".";
    return nameStructType1(a1, v11, a3);
  }

  else if (v10 == 2)
  {
    return nameArrayType(a1, *(i + 8), a3);
  }

  else
  {
    v12 = v10 - 62;
    if (v12 <= 0xFu)
    {
      v13 = word_24DA91F80[v12];
    }

    result = 0;
    v14 = *(i + 25);
  }

  return result;
}

uint64_t processStructMember(apr_array_header_t *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  v8 = *a2;
  if (!strncmp(*a2, "user(", 5uLL))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v8 = apr_psprintf(a1->pool, "fragmentMember%d", a4);
  }

  *apr_array_push(a1) = v8;
  v10 = *(a2 + 24);
  switch(v10)
  {
    case 1:
      v11 = processStructType(a1, *(a2 + 8), a3, a4);
      break;
    case 60:
      v11 = processPointerType(a1, *(a2 + 8), a3, a4);
      break;
    case 2:
      v11 = processArrayType(a1, *(a2 + 8), a3, a4);
      break;
    default:
      processDataType(a1, *(a2 + 25), v10, a3);
      v12 = 1;
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
  }

  v12 = v11;
  if (v9)
  {
LABEL_13:
    *apr_array_push(a1) = "[[ ";
    *apr_array_push(a1) = v9;
    *apr_array_push(a1) = " ]]";
  }

LABEL_14:
  *apr_array_push(a1) = ";\n";
  return v12;
}

void *GenerateStringForWritingDataToTexture(apr_array_header_t *arr, uint64_t a2)
{
  if (*(a2 + 14) - 3 > 0x35)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279658B48[(*(a2 + 14) - 3)];
  }

  *apr_array_push(arr) = v4;
  if (*(a2 + 14) - 4 > 0x34)
  {
    v5 = "4(currData, 0, 0, 0)";
  }

  else
  {
    v5 = off_279658EA8[(*(a2 + 14) - 4)];
  }

  result = apr_array_push(arr);
  *result = v5;
  return result;
}

uint64_t processArrayType(apr_array_header_t *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  for (i = 1; ; i *= v11)
  {
    v9 = apr_psprintf(a1->pool, "[%u]", *(a2 + 20));
    *apr_array_push(a1) = v9;
    v10 = *(a2 + 24);
    v11 = *(a2 + 20);
    if (v10 != 2)
    {
      break;
    }

    a2 = *(a2 + 8);
  }

  if (v10 == 1)
  {
    v12 = processStructType(a1, *(a2 + 8), a3, a4);
  }

  else
  {
    if (v10 != 60)
    {
      processDataType(a1, *(a2 + 25), v10, a3);
      return (v11 * i);
    }

    v12 = processPointerType(a1, *(a2 + 8), a3, a4);
  }

  v11 *= v12;
  return (v11 * i);
}

uint64_t processStructType(apr_array_header_t *a1, uint64_t a2, int a3, apr_allocator_t *a4)
{
  v4 = a4;
  newpool = 0;
  apr_pool_create_ex(&newpool, a1->pool, 0, a4);
  p = newpool;
  v8 = apr_array_make(newpool, 8, 8);
  nelts = a1->nelts;
  if (nelts > 1)
  {
    v10 = 0;
    v11 = nelts - 1;
    v12 = nelts - 2;
    do
    {
      elts = a1->elts;
      v14 = *&elts[8 * v10];
      *&elts[8 * v10] = *&elts[8 * v11];
      *&a1->elts[8 * v11] = v14;
      ++v10;
      --v11;
      v15 = v12-- <= v10;
    }

    while (!v15);
  }

  *apr_array_push(a1) = "} ";
  if (a3 >= 1)
  {
    v16 = a3;
    do
    {
      *apr_array_push(a1) = "\t";
      --v16;
    }

    while (v16);
  }

  v17 = *(a2 + 16);
  if (v17 < 1)
  {
    v18 = 0;
  }

  else
  {
    LODWORD(v18) = 0;
    v19 = v17 + 1;
    v20 = 32 * v17 - 32;
    do
    {
      v8->nelts = 0;
      v18 = processStructMember(v8, *(a2 + 8) + v20, (a3 + 1), (v18 + v4)) + v18;
      v22 = apr_array_pstrcat(a1->pool, v8, v21);
      *apr_array_push(a1) = v22;
      --v19;
      v20 -= 32;
    }

    while (v19 > 1);
  }

  *apr_array_push(a1) = "struct {\n";
  if (a3 >= 1)
  {
    do
    {
      *apr_array_push(a1) = "\t";
      --a3;
    }

    while (a3);
  }

  v23 = a1->nelts;
  if (v23 > 1)
  {
    v24 = 0;
    v25 = v23 - 1;
    v26 = v23 - 2;
    do
    {
      v27 = a1->elts;
      v28 = *&v27[8 * v24];
      *&v27[8 * v24] = *&v27[8 * v25];
      *&a1->elts[8 * v25] = v28;
      ++v24;
      --v25;
      v15 = v26-- <= v24;
    }

    while (!v15);
  }

  apr_pool_destroy(p);
  return v18;
}

uint64_t processPointerType(apr_array_header_t *arr, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  v5 = a3;
  v8 = *(a2 + 22);
  if (v8 == 1)
  {
    nelts = arr->nelts;
    if (nelts >= 2)
    {
      v24 = 0;
      v25 = nelts - 1;
      v26 = nelts - 2;
      do
      {
        elts = arr->elts;
        v28 = *&elts[8 * v24];
        *&elts[8 * v24] = *&elts[8 * v25];
        *&arr->elts[8 * v25] = v28;
        ++v24;
        --v25;
        v16 = v26-- <= v24;
      }

      while (!v16);
    }

    *apr_array_push(arr) = "*";
    v29 = arr->nelts;
    if (v29 >= 2)
    {
      v30 = 0;
      v31 = v29 - 1;
      v32 = v29 - 2;
      do
      {
        v33 = arr->elts;
        v34 = *&v33[8 * v30];
        *&v33[8 * v30] = *&v33[8 * v31];
        *&arr->elts[8 * v31] = v34;
        ++v30;
        --v31;
        v16 = v32-- <= v30;
      }

      while (!v16);
    }

    if (*(a2 + 22) == 1)
    {
      v35 = *(a2 + 8);
    }

    else
    {
      v35 = 0;
    }

    return processStructType(arr, v35, v5, a4);
  }

  else
  {
    if (v8 != 2)
    {
      return 1;
    }

    v9 = processArrayType(arr, *(a2 + 8), a3, a4);
    v10 = arr->nelts;
    if (v10 >= 2)
    {
      v11 = 0;
      v12 = v10 - 1;
      v13 = v10 - 2;
      do
      {
        v14 = arr->elts;
        v15 = *&v14[8 * v11];
        *&v14[8 * v11] = *&v14[8 * v12];
        *&arr->elts[8 * v12] = v15;
        ++v11;
        --v12;
        v16 = v13-- <= v11;
      }

      while (!v16);
    }

    *apr_array_push(arr) = "(*";
    v17 = arr->nelts;
    if (v17 >= 2)
    {
      v18 = 0;
      v19 = v17 - 1;
      v20 = v17 - 2;
      do
      {
        v21 = arr->elts;
        v22 = *&v21[8 * v18];
        *&v21[8 * v18] = *&v21[8 * v19];
        *&arr->elts[8 * v19] = v22;
        ++v18;
        --v19;
        v16 = v20-- <= v18;
      }

      while (!v16);
    }

    *apr_array_push(arr) = ")";
    return v9;
  }
}

void *processDataType(apr_array_header_t *arr, int a2, int a3, int a4)
{
  nelts = arr->nelts;
  if (nelts >= 2)
  {
    v7 = 0;
    v8 = nelts - 1;
    v9 = nelts - 2;
    do
    {
      elts = arr->elts;
      v11 = *&elts[8 * v7];
      *&elts[8 * v7] = *&elts[8 * v8];
      *&arr->elts[8 * v8] = v11;
      ++v7;
      --v8;
      v12 = v9-- <= v7;
    }

    while (!v12);
  }

  if ((a3 - 62) > 0xFu)
  {
    v13 = 0;
    v15 = 1;
    goto LABEL_46;
  }

  v13 = 0;
  v14 = word_24DA91F80[(a3 - 62)];
  v15 = 1;
  if (v14 > 0x45)
  {
    if (word_24DA91F80[(a3 - 62)] > 0x5Bu)
    {
      if (word_24DA91F80[(a3 - 62)] > 0x6Du)
      {
        if (v14 == 110)
        {
          v13 = "rgba16unorm";
        }

        else
        {
          if (v14 != 112)
          {
            goto LABEL_46;
          }

          v13 = "rgba16snorm";
        }
      }

      else if (v14 == 92)
      {
        v13 = "rg11b10f";
      }

      else
      {
        if (v14 != 93)
        {
          goto LABEL_46;
        }

        v13 = "rgb9e5";
      }
    }

    else if (word_24DA91F80[(a3 - 62)] > 0x47u)
    {
      if (v14 == 72)
      {
        v13 = "rgba8snorm";
      }

      else
      {
        if (v14 != 90)
        {
          goto LABEL_46;
        }

        v13 = "rgb10a2";
      }
    }

    else if (v14 == 70)
    {
      v13 = "rgba8unorm";
    }

    else
    {
      v13 = "srgba8unorm";
    }
  }

  else if (word_24DA91F80[(a3 - 62)] > 0x1Du)
  {
    if (word_24DA91F80[(a3 - 62)] > 0x3Bu)
    {
      if (v14 == 60)
      {
        v13 = "rg16unorm";
      }

      else
      {
        if (v14 != 62)
        {
          goto LABEL_46;
        }

        v13 = "rg16snorm";
      }
    }

    else if (v14 == 30)
    {
      v13 = "rg8unorm";
    }

    else
    {
      if (v14 != 32)
      {
        goto LABEL_46;
      }

      v13 = "rg8snorm";
    }
  }

  else if (word_24DA91F80[(a3 - 62)] > 0x13u)
  {
    if (v14 == 20)
    {
      v13 = "r16unorm";
    }

    else
    {
      if (v14 != 22)
      {
        goto LABEL_46;
      }

      v13 = "r16snorm";
    }
  }

  else if (v14 == 10)
  {
    v13 = "r8unorm";
  }

  else
  {
    if (v14 != 12)
    {
      goto LABEL_46;
    }

    v13 = "r8snorm";
  }

  v15 = 0;
  a3 = a2;
LABEL_46:
  if ((a3 - 3) > 0x35)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_279658CF8[(a3 - 3)];
  }

  *apr_array_push(arr) = " ";
  result = apr_array_push(arr);
  if (v15)
  {
    *result = v16;
  }

  else
  {
    *result = ">";
    *apr_array_push(arr) = v16;
    *apr_array_push(arr) = "<";
    result = apr_array_push(arr);
    *result = v13;
  }

  if (a4 >= 1)
  {
    do
    {
      result = apr_array_push(arr);
      *result = "\t";
      --a4;
    }

    while (a4);
  }

  v18 = arr->nelts;
  if (v18 > 1)
  {
    v19 = 0;
    v20 = v18 - 1;
    v21 = v18 - 2;
    do
    {
      v22 = arr->elts;
      v23 = *&v22[8 * v19];
      *&v22[8 * v19] = *&v22[8 * v20];
      *&arr->elts[8 * v20] = v23;
      ++v19;
      --v20;
      v12 = v21-- <= v19;
    }

    while (!v12);
  }

  return result;
}

uint64_t nameArrayType(apr_array_header_t *a1, uint64_t a2, int a3)
{
  v6 = countArrayType(a2);
  v7 = *(a2 + 24);
  v8 = v6 / *(a2 + 20);
  if (v7 == 1)
  {
    v11 = apr_psprintf(a1->pool, "[%u]", a3 / v8);
    *apr_array_push(a1) = v11;
    if (*(a2 + 24) == 1)
    {
      v12 = *(a2 + 8);
    }

    else
    {
      v12 = 0;
    }

    *apr_array_push(a1) = ".";
    return nameStructType1(a1, v12, (a3 % v8));
  }

  else if (v7 == 2)
  {
    v9 = apr_psprintf(a1->pool, "[%u]", a3 / v8);
    *apr_array_push(a1) = v9;
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 0;
    }

    return nameArrayType(a1, v10, (a3 % v8));
  }

  else
  {
    v13 = v7 - 62;
    if (v13 <= 0xFu)
    {
      v14 = word_24DA91F80[v13];
    }

    result = 0;
    v16 = *(a2 + 25);
  }

  return result;
}

uint64_t countArrayType(uint64_t a1)
{
  for (i = 1; ; i *= v3)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 20);
    if (v2 != 2)
    {
      break;
    }

    a1 = *(a1 + 8);
  }

  if (v2 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 8);
      do
      {
        v6 += countStructMember(v7);
        v7 += 32;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v3 *= v6;
  }

  return (v3 * i);
}

id GTUpdateShaderMakeError(unsigned int a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEB38];
  v10 = a2;
  v11 = [v9 alloc];
  v12 = [v11 initWithObjectsAndKeys:{v10, *MEMORY[0x277CCA450], 0}];

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTUpdateShaderErrorDomain" code:a1 userInfo:v12];

  return v13;
}

id GTCreateMTLLibrary(id *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if ([v7 length])
  {
    v8 = [a1[1] defaultDevice];
    if (!*(a2 + 152))
    {
      goto LABEL_15;
    }

    v35 = a4;
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [v10 substringToIndex:8];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 152)];
    v33 = v11;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"tmp-%@", v11];
    v14 = [v12 stringByAppendingPathExtension:v13];

    v15 = [a1[2831] URLByAppendingPathComponent:v14];
    v38 = 0;
    v16 = [v7 writeToURL:v15 options:1 error:&v38];
    v17 = v38;
    v18 = v17;
    v34 = v8;
    if (v16)
    {
      v37 = v17;
      v11 = [v8 newLibraryWithURL:v15 error:&v37];
      v19 = v37;

      v20 = [MEMORY[0x277CCAA00] defaultManager];
      [v20 removeItemAtURL:v15 error:0];

      if (v11)
      {
        v21 = v11;
      }

      else
      {
        v31 = MEMORY[0x277CCACA8];
        v22 = _GTMTLSMLibraryDisplayLabel(a2, *(*a1 + 1));
        v32 = [v31 stringWithFormat:@"Failed to instantiate library <url> '%@'", v22];

        if (v35)
        {
          *v35 = GTUpdateShaderMakeError(3u, v32, 0, v19);
        }
      }
    }

    else
    {
      v19 = v17;
    }

    v8 = v34;
    a4 = v35;
    if ((v16 & 1) == 0)
    {
LABEL_15:
      v23 = dispatch_data_create([v7 bytes], objc_msgSend(v7, "length"), 0, 0);
      v36 = 0;
      v11 = [v8 newLibraryWithData:v23 error:&v36];
      v24 = v36;
      if (v11)
      {
        v25 = v11;
      }

      else
      {
        v26 = v8;
        v27 = MEMORY[0x277CCACA8];
        v28 = _GTMTLSMLibraryDisplayLabel(a2, *(*a1 + 1));
        v29 = [v27 stringWithFormat:@"Failed to instantiate library <data> '%@'", v28];

        if (a4)
        {
          *a4 = GTUpdateShaderMakeError(3u, v29, 0, v24);
        }

        v8 = v26;
      }
    }
  }

  else if (a4)
  {
    GTUpdateShaderMakeError(1u, @"Internal error: No library data", 0, 0);
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id GTCreateMTLFunction(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2[5]];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = a2[15];
    if (v10)
    {
      v11 = MakeMTLIntersectionFunctionDescriptor(v10);
      v24 = 0;
      v12 = [v9 newIntersectionFunctionWithDescriptor:v11 error:&v24];
      v13 = v24;
    }

    else
    {
      v14 = a2[14];
      if (!v14)
      {
        v20 = a2[7];
        if (!v20 || !*v20)
        {
          v15 = GTUpdateShaderMakeError(1u, @"Internal error: empty function name", 0, 0);
          goto LABEL_10;
        }

        v15 = a2[9];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        if (v15)
        {
          v21 = MakeMTLFunctionConstantValues(a2[9]);
          v22 = 0;
          v12 = [v9 newFunctionWithName:v11 constantValues:v21 error:&v22];
          v15 = v22;
        }

        else
        {
          v12 = [v9 newFunctionWithName:v11];
        }

LABEL_9:

        if (v12)
        {
LABEL_13:

          goto LABEL_14;
        }

LABEL_10:
        v16 = MEMORY[0x277CCACA8];
        v17 = _GTMTLSMFunctionDisplayLabel(a2, *(*a1 + 8));
        v18 = [v16 stringWithFormat:@"Failed to instantiate function '%@'", v17];

        if (a4)
        {
          *a4 = GTUpdateShaderMakeError(3u, v18, 0, v15);
        }

        v12 = 0;
        goto LABEL_13;
      }

      v11 = MakeMTLFunctionDescriptor(v14, v7);
      v23 = 0;
      v12 = [v9 newFunctionWithDescriptor:v11 error:&v23];
      v13 = v23;
    }

    v15 = v13;
    goto LABEL_9;
  }

  if (a4)
  {
    GTUpdateShaderMakeError(1u, @"Internal error: Failed to find runtime library for function", 0, 0);
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  return v12;
}

__CFString *_GTMTLSMFunctionDisplayLabel(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1[8];
    if (!v4 || !*v4 || ([MEMORY[0x277CCACA8] stringWithUTF8String:?], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = a1[15];
      if (!v6 || (v7 = *(v6 + 8)) == 0)
      {
        v8 = a1[14];
        if (!v8 || (v7 = *(v8 + 8)) == 0)
        {
          v7 = a1[7];
        }
      }

      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      if (v9)
      {
        v5 = v9;
      }

      else
      {
        v5 = @"MTLFunction";
      }
    }

    v16 = a1[1];
    entry = find_entry(a2, &v16, 8uLL, 0);
    if (*entry && (v11 = *(*entry + 32)) != 0)
    {
      v12 = atomic_load((v11 + 56));
      v13 = v11 + (~(v12 >> 2) & 8);
    }

    else
    {
      v13 = 8;
    }

    v14 = [(__CFString *)v5 stringByAppendingFormat:@" 0x%llx", *v13];
  }

  else
  {
    v14 = &stru_2860BD438;
  }

  return v14;
}

uint64_t GTUpdateShaderPipelines(id *a1, uint64_t a2, void *a3)
{
  v313 = *MEMORY[0x277D85DE8];
  v220 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v221 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v215 = a1[2];
  v238 = a1[1];
  v225 = [v238 defaultDevice];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v4);
  v5 = apr_array_make(newpool, 128, 8);
  GTMTLSMContext_getObjects(*(*a1 + 6), a1[5], v5);
  nelts = v5->nelts;
  v235 = v5;
  if (nelts < 1)
  {
LABEL_48:
    v228 = [v221 copy];
    goto LABEL_49;
  }

  v6 = 0;
  while (1)
  {
    v7 = *&v235->elts[8 * v6];
    if (v7)
    {
      v244 = *(v7 + 8);
    }

    else
    {
      v244 = 0;
    }

    v8 = [v238 unusedResourceKeys];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v244];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      goto LABEL_47;
    }

    v258 = 0;
    v259 = 0;
    v12 = *(v7 + 64);
    if (v12)
    {
      v13 = *(v12 + 40);
      v14 = *(v12 + 96);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = *a1;
    v265 = 0;
    apr_pool_create_ex(&v265, 0, 0, v11);
    v299 = 0u;
    v300 = 0u;
    v297 = 0u;
    v298 = 0u;
    v295 = 0u;
    v296 = 0u;
    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    v287 = 0u;
    v288 = 0u;
    v285 = 0u;
    v286 = 0u;
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    v16 = v265;
    GTMTLSMComputePipelineState_computePipelineDescriptor(v15, v7, &v269, v265);
    *&v260 = v301[12];
    *(&v260 + 1) = v301;
    v261 = v303;
    *&v253 = &v260;
    *(&v253 + 1) = 1;
    *&v254 = v13;
    *(&v254 + 1) = v14;
    LOBYTE(v15) = GetProgramUpdateObjectMapForPipelineObjects(&v253, a1, &v259, &v258);
    apr_pool_destroy(v16);
    v241 = v259;
    v17 = v258;
    if (v15)
    {
      break;
    }

LABEL_47:
    if (++v6 == nelts)
    {
      goto LABEL_48;
    }
  }

  v229 = v17;
  v18 = [v238 computePipelineDescriptorMap];
  v19 = [v18 mutableCopy];

  if ([v241 count])
  {
    v307 = 0u;
    v308 = 0u;
    v305 = 0u;
    v306 = 0u;
    v20 = v241;
    v21 = [v20 countByEnumeratingWithState:&v305 objects:p count:16];
    if (v21)
    {
      v22 = *v306;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v306 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v305 + 1) + 8 * i);
          v25 = [v20 objectForKeyedSubscript:v24];
          [v19 setObject:v25 forKeyedSubscript:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v305 objects:p count:16];
      }

      while (v21);
    }
  }

  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  GTMTLSMComputePipelineState_computePipelineDescriptor(*a1, v7, &v269, newpool);
  v26 = MakeMTLComputePipelineDescriptor(&v269, v19);
  if ([v229 count])
  {
    v27 = [v26 preloadedLibraries];
    v28 = v27;
    if (v27)
    {
      v223 = [v27 arrayByAddingObjectsFromArray:v229];
      v29 = v223;
    }

    else
    {
      v217 = [v229 copy];
      v29 = v217;
    }

    [v26 setPreloadedLibraries:v29];
    v30 = v217;
    if (v28)
    {
      v30 = v223;
    }
  }

  v257 = 0;
  v252 = 0;
  v31 = [v225 newComputePipelineStateWithDescriptor:v26 options:0x40000 reflection:&v257 error:&v252];
  v32 = v257;
  v33 = v252;
  if (!v31)
  {
    if (v302)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@": '%s'", v302];
    }

    else
    {
      v37 = &stru_2860BD438;
    }

    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to recreate compute pipeline%@", v37];
    if (a3)
    {
      *a3 = GTUpdateShaderMakeError(4u, v46, 0, v33);
    }

    goto LABEL_44;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v244];
  [v221 setObject:v31 forKeyedSubscript:v34];

  if (!v32)
  {
    goto LABEL_46;
  }

  v35 = [v32 performanceStatistics];
  if (v7)
  {
    v36 = *(v7 + 8);
  }

  else
  {
    v36 = 0;
  }

  v38 = MEMORY[0x277CCABB0];
  v39 = a1[3];
  *&v260 = v36;
  entry = find_entry(v39, &v260, 8uLL, 0);
  if (*entry && (v41 = *(*entry + 32)) != 0)
  {
    v42 = atomic_load((v41 + 56));
    v43 = v41 + (~(v42 >> 2) & 8);
  }

  else
  {
    v43 = 8;
  }

  v44 = [v38 numberWithUnsignedLongLong:*v43];
  [v220 setObject:v35 forKeyedSubscript:v44];

  v37 = [v32 performanceStatistics];
  if (v37)
  {
    v45 = *(v215 + 64);
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v7 + 8)];
    [v45 setObject:v37 forKeyedSubscript:v46];
LABEL_44:
  }

LABEL_46:
  if (v31)
  {
    goto LABEL_47;
  }

  v228 = 0;
LABEL_49:
  apr_pool_destroy(newpool);

  if (!v228)
  {
    v201 = 0;
    goto LABEL_225;
  }

  v222 = v220;
  v230 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v218 = a1[2];
  v242 = a1[1];
  v224 = [v242 defaultDevice];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v47);
  v48 = apr_array_make(newpool, 128, 8);
  GTMTLSMContext_getObjects(*(*a1 + 5), a1[5], v48);
  v236 = v48->nelts;
  v239 = v48;
  if (v236 < 1)
  {
LABEL_165:
    v239->nelts = 0;
    v227 = [v230 copy];
    goto LABEL_166;
  }

  v49 = 0;
  while (2)
  {
    v50 = *&v239->elts[8 * v49];
    if (v50)
    {
      v51 = *(v50 + 8);
    }

    else
    {
      v51 = 0;
    }

    v245 = *&v239->elts[8 * v49];
    v52 = [v242 unusedResourceKeys];
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
    v54 = [v52 containsObject:v53];

    if (v54)
    {
LABEL_105:
      if (++v49 == v236)
      {
        goto LABEL_165;
      }

      continue;
    }

    break;
  }

  v55 = v245[10];
  if (!v55)
  {
    v257 = 0;
    v258 = 0;
    v69 = v245[7];
    if (v69)
    {
      v70 = *(v69 + 96);
      v69 = *(v69 + 214);
    }

    else
    {
      v70 = 0;
    }

    v265 = 0;
    v266 = 0;
    v267 = v70;
    v268 = v69;
    v90 = v245[6];
    if (v90)
    {
      *&v305 = *(v90 + 1296);
      *(&v305 + 1) = v90 + 1064;
      v306 = *(v90 + 1304);
      *&v307 = *(v90 + 1176);
      *(&v307 + 1) = v90 + 872;
      v91 = *(v90 + 1184);
      v92 = *(v90 + 1192);
      *&v308 = v91;
      *(&v308 + 1) = v92;
      v265 = &v305;
      v266 = 2;
      ProgramUpdateObjectMapForPipelineObjects = GetProgramUpdateObjectMapForPipelineObjects(&v265, a1, &v258, &v257);
    }

    else
    {
      v94 = v245[9];
      if (v94)
      {
        v95 = v94[45];
        *&v305 = v94[46];
        *(&v305 + 1) = v94 + 32;
        v306 = 0uLL;
        *&v307 = v95;
        *(&v307 + 1) = v94 + 24;
        v308 = 0uLL;
        v309 = v94[43];
        v310 = v94 + 16;
        v311 = 0;
        v312 = 0;
        v265 = &v305;
        v266 = 3;
        ProgramUpdateObjectMapForPipelineObjects = GetProgramUpdateObjectMapForPipelineObjects(&v265, a1, &v258, &v257);
      }

      else
      {
        v96 = v245[8];
        if (!v96)
        {
          v99 = 0;
LABEL_91:
          v76 = v258;
          v100 = v257;
          if (!v99)
          {
            v75 = v100;
            goto LABEL_104;
          }

          v226 = v245 + 6;
          v233 = v100;
          v101 = [v242 renderPipelineDescriptorMap];
          v82 = [v101 mutableCopy];

          v255 = 0u;
          v256 = 0u;
          v253 = 0u;
          v254 = 0u;
          v75 = v76;
          v102 = [v75 countByEnumeratingWithState:&v253 objects:p count:16];
          if (v102)
          {
            v103 = *v254;
            do
            {
              for (j = 0; j != v102; ++j)
              {
                if (*v254 != v103)
                {
                  objc_enumerationMutation(v75);
                }

                v105 = *(*(&v253 + 1) + 8 * j);
                v106 = [v75 objectForKeyedSubscript:v105];
                [v82 setObject:v106 forKeyedSubscript:v105];
              }

              v102 = [v75 countByEnumeratingWithState:&v253 objects:p count:16];
            }

            while (v102);
          }

          if (*v226)
          {
            v107 = MakeMTLRenderPipelineDescriptor(*v226, v82);
            if ([v233 count])
            {
              v108 = [v107 vertexPreloadedLibraries];
              v109 = v108;
              if (v108)
              {
                v215 = [v108 arrayByAddingObjectsFromArray:v233];
                v110 = v215;
              }

              else
              {
                v213 = [v233 copy];
                v110 = v213;
              }

              [v107 setVertexPreloadedLibraries:v110];
              v115 = v213;
              if (v109)
              {
                v115 = v215;
              }

              v116 = [v107 fragmentPreloadedLibraries];

              if (v116)
              {
                v214 = [v116 arrayByAddingObjectsFromArray:v233];
                v117 = v214;
              }

              else
              {
                v212 = [v233 copy];
                v117 = v212;
              }

              [v107 setFragmentPreloadedLibraries:v117];
              v118 = v212;
              if (v116)
              {
                v118 = v214;
              }
            }

            v251 = 0;
            v252 = 0;
            v119 = &v251;
            v120 = &v252;
            v87 = [v224 newRenderPipelineStateWithDescriptor:v107 options:0x40000 reflection:&v252 error:&v251];
            v121 = 1200;
          }

          else
          {
            v111 = v245[9];
            v226 = v245 + 9;
            if (v111)
            {
              v107 = MakeMTLMeshRenderPipelineDescriptor(v111, v82);
              if ([v233 count])
              {
                v112 = [v107 objectPreloadedLibraries];
                v113 = v112;
                if (v112)
                {
                  v211 = [v112 arrayByAddingObjectsFromArray:v233];
                  v114 = v211;
                }

                else
                {
                  v208 = [v233 copy];
                  v114 = v208;
                }

                [v107 setObjectPreloadedLibraries:v114];
                v126 = v208;
                if (v113)
                {
                  v126 = v211;
                }

                v127 = [v107 meshPreloadedLibraries];

                if (v127)
                {
                  v210 = [v127 arrayByAddingObjectsFromArray:v233];
                  v128 = v210;
                }

                else
                {
                  v207 = [v233 copy];
                  v128 = v207;
                }

                [v107 setMeshPreloadedLibraries:v128];
                v129 = v207;
                if (v127)
                {
                  v129 = v210;
                }

                v130 = [v107 fragmentPreloadedLibraries];

                if (v130)
                {
                  v209 = [v130 arrayByAddingObjectsFromArray:v233];
                  v131 = v209;
                }

                else
                {
                  v206 = [v233 copy];
                  v131 = v206;
                }

                [v107 setFragmentPreloadedLibraries:v131];
                v132 = v206;
                if (v130)
                {
                  v132 = v209;
                }
              }

              v249 = 0;
              v250 = 0;
              v119 = &v249;
              v120 = &v250;
              v87 = [v224 newRenderPipelineStateWithMeshDescriptor:v107 options:0x40000 reflection:&v250 error:&v249];
              v121 = 352;
            }

            else
            {
              v122 = v245[8];
              v226 = v245 + 8;
              if (!v122)
              {
                v133 = 0;
                v76 = 0;
                goto LABEL_157;
              }

              v107 = MakeMTLTileRenderPipelineDescriptor(v122, v82);
              if ([v233 count])
              {
                v123 = [v107 preloadedLibraries];
                v124 = v123;
                if (v123)
                {
                  v205 = [v123 arrayByAddingObjectsFromArray:v233];
                  v125 = v205;
                }

                else
                {
                  v204 = [v233 copy];
                  v125 = v204;
                }

                [v107 setPreloadedLibraries:v125];
                v134 = v204;
                if (v124)
                {
                  v134 = v205;
                }
              }

              v247 = 0;
              v248 = 0;
              v119 = &v247;
              v120 = &v248;
              v87 = [v224 newRenderPipelineStateWithTileDescriptor:v107 options:0x40000 reflection:&v248 error:&v247];
              v121 = 112;
            }
          }

          v135 = *v120;
          v76 = *v119;
          v136 = *(*v226 + v121);

          v133 = v135;
          if (v87)
          {
            v137 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
            [v230 setObject:v87 forKeyedSubscript:v137];

            if (v135)
            {
              v138 = [v135 performanceStatistics];
              v139 = MEMORY[0x277CCABB0];
              v140 = a1[3];
              *&v305 = v245[1];
              v141 = find_entry(v140, &v305, 8uLL, 0);
              if (*v141 && (v142 = *(*v141 + 32)) != 0)
              {
                v143 = atomic_load((v142 + 56));
                v144 = v142 + (~(v143 >> 2) & 8);
              }

              else
              {
                v144 = 8;
              }

              v146 = [v139 numberWithUnsignedLongLong:*v144];
              [v222 setObject:v138 forKeyedSubscript:v146];

              v145 = [v135 performanceStatistics];
              if (!v145)
              {
                v149 = 1;
LABEL_162:

                if ((v149 & 1) == 0)
                {
                  goto LABEL_212;
                }

                goto LABEL_105;
              }

              v147 = v218[8];
              v148 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v245[1]];
              [v147 setObject:v145 forKeyedSubscript:v148];
              v149 = 1;
LABEL_161:

              goto LABEL_162;
            }

LABEL_82:

LABEL_104:
            goto LABEL_105;
          }

          if (v136)
          {
            v145 = [MEMORY[0x277CCACA8] stringWithFormat:@": '%s'", v136];
            goto LABEL_158;
          }

LABEL_157:
          v145 = &stru_2860BD438;
LABEL_158:
          v148 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to recreate render pipeline%@", v145];
          if (a3)
          {
            GTUpdateShaderMakeError(4u, v148, 0, v76);
            v87 = 0;
            *a3 = v149 = 0;
          }

          else
          {
            v87 = 0;
            v149 = 0;
          }

          goto LABEL_161;
        }

        *&v305 = v96[17];
        *(&v305 + 1) = v96;
        v98 = v96[15];
        v97 = v96[16];
        *&v306 = v98;
        *(&v306 + 1) = v97;
        v265 = &v305;
        v266 = 1;
        ProgramUpdateObjectMapForPipelineObjects = GetProgramUpdateObjectMapForPipelineObjects(&v265, a1, &v258, &v257);
      }
    }

    v99 = ProgramUpdateObjectMapForPipelineObjects;
    goto LABEL_91;
  }

  if (!v245[5])
  {
    v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v245[5]];
    v72 = [v230 objectForKeyedSubscript:v71];
    v73 = v72 == 0;

    if (!v73)
    {
      v68 = 0;
      goto LABEL_70;
    }

    goto LABEL_105;
  }

  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57 = 0;
  v58 = v55[9];
  *&v305 = v55[8];
  DWORD2(v305) = v58;
  *&v306 = *v55;
  DWORD2(v306) = v55[1];
  v59 = v55[7];
  *&v307 = v55[6];
  DWORD2(v307) = v59;
  *&v308 = v55[4];
  DWORD2(v308) = v55[5];
  v309 = v55[2];
  LODWORD(v310) = v55[3];
  do
  {
    v60 = &v305 + v57;
    v61 = *v60;
    if (*v60)
    {
      v62 = *(v60 + 2);
      if (v62 >= 1)
      {
        do
        {
          v63 = *v61++;
          v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
          v65 = [a1[10] objectForKeyedSubscript:v64];
          if (v65)
          {
            [v56 setObject:v65 forKeyedSubscript:v64];
          }

          --v62;
        }

        while (v62);
      }
    }

    ++v57;
  }

  while (v57 != 5);
  v66 = [v56 copy];
  v67 = v66;

  v68 = v66;
LABEL_70:
  v74 = [v242 functionMap];
  v75 = [v74 mutableCopy];

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v76 = v68;
  v77 = [v76 countByEnumeratingWithState:&v260 objects:&v269 count:16];
  if (v77)
  {
    v78 = *v261;
    do
    {
      for (k = 0; k != v77; ++k)
      {
        if (*v261 != v78)
        {
          objc_enumerationMutation(v76);
        }

        v80 = *(*(&v260 + 1) + 8 * k);
        v81 = [v76 objectForKeyedSubscript:v80];
        [v75 setObject:v81 forKeyedSubscript:v80];
      }

      v77 = [v76 countByEnumeratingWithState:&v260 objects:&v269 count:16];
    }

    while (v77);
  }

  v82 = MakeMTLRenderPipelineFunctionsDescriptor(v245[10], v75);
  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v245[5]];
  v84 = [v230 objectForKeyedSubscript:v83];
  v85 = v84;
  if (v84)
  {
    v86 = v84;
  }

  else
  {
    v86 = [v242 renderPipelineStateForKey:v245[5]];
  }

  v87 = v86;

  v259 = 0;
  v88 = [v87 newRenderPipelineStateWithAdditionalBinaryFunctions:v82 error:&v259];
  v233 = v259;
  if (v88)
  {
    v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
    [v230 setObject:v88 forKeyedSubscript:v89];

    goto LABEL_82;
  }

  if (a3)
  {
    *a3 = GTUpdateShaderMakeError(4u, @"Failed to recreate render pipeline with additional shaders", 0, v233);
  }

LABEL_212:
  v227 = 0;
LABEL_166:
  apr_pool_destroy(newpool);

  if (!v227)
  {
    v201 = 0;
    goto LABEL_224;
  }

  v150 = [v222 copy];
  v151 = *(a2 + 40);
  *(a2 + 40) = v150;

  v152 = [v227 copy];
  v153 = *a2;
  *a2 = v152;

  v154 = [v228 copy];
  v155 = *(a2 + 8);
  *(a2 + 8) = v154;

  v237 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v231 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v240 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v246 = *a2;
  v234 = *(a2 + 8);
  p[0] = 0;
  apr_pool_create_ex(p, 0, 0, v156);
  v157 = apr_array_make(p[0], 128, 8);
  v157->nelts = 0;
  GTMTLSMContext_getObjects(*(*a1 + 34), a1[5], v157);
  v158 = v157;
  if (v157->nelts >= 1)
  {
    v159 = 0;
    while (1)
    {
      v160 = *&v157->elts[8 * v159];
      v243 = v160 ? *(v160 + 8) : 0;
      v161 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 72)];
      v162 = [v246 objectForKey:v161];

      if (v162)
      {
        break;
      }

      v168 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 64)];
      v167 = [v234 objectForKey:v168];

      if (v167)
      {
        v169 = a1[10];
        v170 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
        v171 = [v169 objectForKeyedSubscript:v170];
        v172 = v171;
        if (v171)
        {
          v173 = v171;
        }

        else
        {
          v177 = [a1[1] functionMap];
          v178 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
          v173 = [v177 objectForKeyedSubscript:v178];
        }

        v176 = [v167 functionHandleWithFunction:v173];
        v179 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v243];
        [v240 setObject:v176 forKeyedSubscript:v179];

        goto LABEL_182;
      }

LABEL_183:

      ++v159;
      v157 = v158;
      if (v159 >= v158->nelts)
      {
        goto LABEL_184;
      }
    }

    v163 = a1[10];
    v164 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
    v165 = [v163 objectForKeyedSubscript:v164];
    v166 = v165;
    if (v165)
    {
      v167 = v165;
    }

    else
    {
      v174 = [a1[1] functionMap];
      v175 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
      v167 = [v174 objectForKeyedSubscript:v175];
    }

    v173 = [v162 functionHandleWithFunction:v167 stage:*(v160 + 96)];
    v176 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v243];
    [v240 setObject:v173 forKeyedSubscript:v176];
LABEL_182:

    goto LABEL_183;
  }

LABEL_184:
  v157->nelts = 0;
  GTMTLSMContext_getObjects(*(*a1 + 8), a1[5], v157);
  if (v157->nelts >= 1)
  {
    v180 = 0;
    while (1)
    {
      v181 = *&v157->elts[8 * v180];
      v182 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v181 + 136)];
      v183 = [v246 objectForKey:v182];

      if (v183)
      {
        break;
      }

      v186 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v181 + 128)];
      v183 = [v234 objectForKey:v186];

      if (v183)
      {
        v184 = MakeMTLVisibleFunctionTableDescriptor(*(v181 + 112));
        v185 = [v183 newVisibleFunctionTableWithDescriptor:v184];
        if ((UpdateVisibleFunctionTable(a1, v185, v181, v240) & 1) == 0)
        {
          if (a3)
          {
            *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update visiable function table for compute pipeline", 0, 0);
          }

          goto LABEL_218;
        }

        goto LABEL_191;
      }

LABEL_192:
      ++v180;
      v157 = v158;
      if (v180 >= v158->nelts)
      {
        goto LABEL_193;
      }
    }

    v184 = MakeMTLVisibleFunctionTableDescriptor(*(v181 + 112));
    v185 = [v183 newVisibleFunctionTableWithDescriptor:v184 stage:*(v181 + 176)];
    if ((UpdateVisibleFunctionTable(a1, v185, v181, v240) & 1) == 0)
    {
      if (a3)
      {
        *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update visiable function table for render pipeline", 0, 0);
      }

LABEL_218:

      v201 = 0;
      goto LABEL_223;
    }

LABEL_191:
    v187 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v181 + 8)];
    [v237 setObject:v185 forKeyedSubscript:v187];

    goto LABEL_192;
  }

LABEL_193:
  v157->nelts = 0;
  GTMTLSMContext_getObjects(*(*a1 + 9), a1[5], v157);
  *&v275 = 0;
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  GTMTLIndirectResources_allResourcesByKey(&v269, *a1, a1[5], 1, p[0]);
  if (v157->nelts < 1)
  {
LABEL_202:
    v196 = [v240 copy];
    v197 = *(a2 + 16);
    *(a2 + 16) = v196;

    v198 = [v237 copy];
    v199 = *(a2 + 24);
    *(a2 + 24) = v198;

    v200 = [v231 copy];
    v191 = *(a2 + 32);
    *(a2 + 32) = v200;
    v201 = 1;
    goto LABEL_222;
  }

  v188 = 0;
  while (1)
  {
    v189 = *&v157->elts[8 * v188];
    v190 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v189 + 136)];
    v191 = [v246 objectForKey:v190];

    if (v191)
    {
      v192 = MakeMTLIntersectionFunctionTableDescriptor(*(v189 + 112));
      v193 = [v191 newIntersectionFunctionTableWithDescriptor:v192 stage:*(v189 + 168)];
      if ((UpdateIntersectionFunctionTable(a1, v193, v189, v240, v237, &v269) & 1) == 0)
      {
        if (a3)
        {
          *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update intersection function table for render pipeline", 0, 0);
        }

        goto LABEL_221;
      }

      goto LABEL_200;
    }

    v194 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v189 + 128)];
    v191 = [v234 objectForKey:v194];

    if (v191)
    {
      break;
    }

LABEL_201:
    ++v188;
    v157 = v158;
    if (v188 >= v158->nelts)
    {
      goto LABEL_202;
    }
  }

  v192 = MakeMTLIntersectionFunctionTableDescriptor(*(v189 + 112));
  v193 = [v191 newIntersectionFunctionTableWithDescriptor:v192];
  if (UpdateIntersectionFunctionTable(a1, v193, v189, v240, v237, &v269))
  {
LABEL_200:
    v195 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v189 + 8)];
    [v231 setObject:v193 forKeyedSubscript:v195];

    goto LABEL_201;
  }

  if (a3)
  {
    *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update intersection function table for compute pipeline", 0, 0);
  }

LABEL_221:

  v201 = 0;
LABEL_222:

LABEL_223:
  apr_pool_destroy(p[0]);

LABEL_224:
LABEL_225:

  v202 = *MEMORY[0x277D85DE8];
  return v201;
}

void __destructor_8_s8_S_s56_s64_s72_s80_s88(uint64_t a1)
{
  __destructor_8_s0_s8_s16_s24(a1 + 56);
  v2 = *(a1 + 88);
}

BOOL GetProgramUpdateObjectMapForPipelineObjects(void *a1, id *a2, void *a3, void *a4)
{
  v34 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1[1] >= 1)
  {
    v7 = 0;
    v37 = a1[1] & 0x7FFFFFFFLL;
    do
    {
      v39 = v7;
      v8 = (*a1 + 32 * v7);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*v8, v34}];
      v10 = [a2[10] objectForKeyedSubscript:v9];
      if (v10)
      {
        [v6 setObject:v10 forKeyedSubscript:v9];
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      v38 = v8;
      v13 = v8[1];
      v14 = v13[3];
      v40 = v13[2];
      v41 = v14;
      v15 = v13[1];
      v42 = *v13;
      v43 = v15;
      v17 = v13[6];
      v16 = v13[7];
      v44 = v17;
      v45 = v16;
      do
      {
        v18 = &v40 + 2 * v12;
        v19 = *v18;
        if (*v18)
        {
          v20 = *(v18 + 2);
          if (v20 >= 1)
          {
            do
            {
              v21 = *v19++;
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
              v23 = [a2[10] objectForKeyedSubscript:v22];
              if (v23)
              {
                [v6 setObject:v23 forKeyedSubscript:v22];
                ++v11;
              }

              --v20;
            }

            while (v20);
          }
        }

        ++v12;
      }

      while (v12 != 3);
      v24 = v38[2];
      if (v24 && v38[3] >= 1)
      {
        v25 = v38[3] & 0x7FFFFFFFLL;
        do
        {
          v26 = *v24++;
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
          v28 = [a2[8] objectForKeyedSubscript:v27];
          if (v28)
          {
            [v6 setObject:v28 forKeyedSubscript:v27];
          }

          --v25;
        }

        while (v25);
      }

      if (v11 && [a2[9] count])
      {
        v29 = [a2[9] allValues];
        [v36 addObjectsFromArray:v29];
      }

      v7 = v39 + 1;
    }

    while (v39 + 1 != v37);
  }

  if (v34)
  {
    *v34 = [v6 copy];
  }

  if (a4)
  {
    *a4 = [v36 copy];
  }

  v30 = [v6 count];
  v31 = v30 + [v36 count] != 0;

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t UpdateVisibleFunctionTable(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v9);
  v26 = 0u;
  *&v27 = 0;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  LODWORD(v26) = 83;
  *(&v27 + 1) = -1;
  WORD5(v32) = 2;
  v31 = 0xFFFFFFFFFFFFFFFFLL;
  v39 = **(a3 + 112);
  v38 = apr_palloc(newpool, 8 * v39);
  bzero(v38, 8 * v39);
  v10 = *(a1 + 24);
  v41 = *(a3 + 8);
  v11 = *(*(*find_entry(v10, &v41, 8uLL, 0) + 32) + 32);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = atomic_load((v11 + 4));
      v14 = v12 + (v13 >> 6) - 1;
      if (v14 > 0)
      {
        break;
      }

      v11 = *(v11 + 40);
      v12 = v14;
      if (!v11)
      {
        v12 = v14;
        goto LABEL_8;
      }
    }

    v14 = 0;
LABEL_8:
    v15 = v12 | (v14 << 32);
  }

  else
  {
    v15 = 0;
  }

  while (v11)
  {
    v16 = v11 + 64 + ((HIDWORD(v15) - v15) << 6);
    if ((*(v16 + 15) & 8) == 0 || *v16 >= *(a1 + 40))
    {
      break;
    }

    GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(&v26, *(a1 + 32), v16);
    v17 = atomic_load((v11 + 4));
    v18 = v15 + (v17 >> 6);
    v19 = (HIDWORD(v15) + 1);
    v15 = (v19 << 32) | v15;
    if (v19 == v18 - 1)
    {
      v15 = (v19 << 32) | v19;
      v11 = *(v11 + 40);
    }
  }

  if (v39)
  {
    for (i = 0; v39 > i; ++i)
    {
      v21 = *(v38 + i);
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v21, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37}];
      v23 = [v8 objectForKeyedSubscript:v22];
      if (v23)
      {
      }

      else
      {
        v23 = [*(a1 + 8) functionHandleForKey:v21];

        if (!v23)
        {
          v24 = 0;
          goto LABEL_21;
        }
      }

      [v7 setFunction:v23 atIndex:i];
    }
  }

  v24 = 1;
LABEL_21:
  apr_pool_destroy(newpool);

  return v24;
}

uint64_t UpdateIntersectionFunctionTable(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v14);
  bzero(v40, 0x3A8uLL);
  v40[0] = 60;
  v43 = 2;
  v41 = -1;
  v42 = -1;
  v45 = *(*(a3 + 112) + 8);
  v15 = 16 * v45;
  v44 = apr_palloc(newpool, 16 * v45);
  bzero(v44, v15);
  v16 = *(a1 + 24);
  v48 = *(a3 + 8);
  v17 = *(*(*find_entry(v16, &v48, 8uLL, 0) + 32) + 32);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = atomic_load((v17 + 4));
      v20 = v18 + (v19 >> 6) - 1;
      if (v20 > 0)
      {
        break;
      }

      v17 = *(v17 + 40);
      v18 = v20;
      if (!v17)
      {
        v18 = v20;
        goto LABEL_8;
      }
    }

    v20 = 0;
LABEL_8:
    v21 = v18 | (v20 << 32);
  }

  else
  {
    v21 = 0;
  }

  while (v17)
  {
    v22 = v17 + 64 + ((HIDWORD(v21) - v21) << 6);
    if ((*(v22 + 15) & 8) == 0 || *v22 >= *(a1 + 40))
    {
      break;
    }

    GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithMap(v40, *(a1 + 32), v22, a6);
    v23 = atomic_load((v17 + 4));
    v24 = v21 + (v23 >> 6);
    v25 = (HIDWORD(v21) + 1);
    v21 = (v25 << 32) | v21;
    if (v25 == v24 - 1)
    {
      v21 = (v25 << 32) | v25;
      v17 = *(v17 + 40);
    }
  }

  if (v45)
  {
    v26 = 0;
    for (i = 0; i < v45; ++i)
    {
      v28 = *&v44[v26];
      switch(v28)
      {
        case 3:
          [v11 setOpaqueCurveIntersectionFunctionWithSignature:*&v44[v26 + 8] atIndex:i];
          break;
        case 2:
          [v11 setOpaqueTriangleIntersectionFunctionWithSignature:*&v44[v26 + 8] atIndex:i];
          break;
        case 1:
          v29 = *&v44[v26 + 8];
          if (v29)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v44[v26 + 8]];
            v31 = [v12 objectForKeyedSubscript:v30];
            if (v31)
            {
            }

            else
            {
              v31 = [*(a1 + 8) functionHandleForKey:v29];

              if (!v31)
              {
LABEL_40:
                v38 = 0;
                goto LABEL_41;
              }
            }

            [v11 setFunction:v31 atIndex:i];
          }

          break;
      }

      v26 += 16;
    }
  }

  v32 = 0;
  v33 = &v46;
  do
  {
    v34 = *(v33 - 4);
    if (v34 == 2)
    {
      v36 = *(v33 - 1);
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
      v35 = [v13 objectForKeyedSubscript:v37];
      if (v35)
      {
      }

      else
      {
        v35 = [*(a1 + 8) visibleFunctionTableForKey:v36];

        if (!v35)
        {
          goto LABEL_40;
        }
      }

      [v11 setVisibleFunctionTable:v35 atBufferIndex:v32];
      goto LABEL_37;
    }

    if (v34 == 1 && *(v33 - 1))
    {
      v35 = [*(a1 + 8) bufferForKey:?];
      if (!v35)
      {
        goto LABEL_40;
      }

      [v11 setBuffer:v35 offset:*v33 atIndex:v32];
LABEL_37:
    }

    ++v32;
    v33 += 3;
  }

  while (v32 != 31);
  v38 = 1;
LABEL_41:
  apr_pool_destroy(newpool);

  return v38;
}

id _GTMTLSMLibraryDisplayLabel(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4 && *v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v5 = @"MTLLibrary";
  }

  v12 = *(a1 + 8);
  entry = find_entry(a2, &v12, 8uLL, 0);
  if (*entry && (v7 = *(*entry + 32)) != 0)
  {
    v8 = atomic_load((v7 + 56));
    v9 = v7 + (~(v8 >> 2) & 8);
  }

  else
  {
    v9 = 8;
  }

  v10 = [(__CFString *)v5 stringByAppendingFormat:@" 0x%llx", *v9];

  return v10;
}

uint64_t GTResourceTrackerGetResourceType(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  entry = find_entry(a2, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v3 = *(*entry + 32);
  if (!v3 || !*v3)
  {
    return 0;
  }

  v4 = *(v3[4] + 72);

  return GTFenum_getConstructorType(v4);
}

uint64_t GTResourceTrackerUsingResource(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v18 = a3;
  if (a3)
  {
    v8 = result;
    result = find_entry(result, &v18, 8uLL, 0);
    if (!*result || !*(*result + 32))
    {
      v9 = apr_palloc(*v8, 0x10uLL);
      *v9 = v18;
      apr_hash_set(v8, v9, 8, v9);
      v19.i64[0] = v18;
      v10 = *find_entry(a4, &v19, 8uLL, 0);
      if (v10 && (v11 = *(v10 + 32)) != 0)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          v13 = v12 + 64;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      result = GTFenum_getConstructorType(*(v13 + 8));
      v9[2] = result;
      if (a2 <= 49)
      {
        if (a2 != 16)
        {
          if (a2 != 22)
          {
            goto LABEL_33;
          }

          v19 = 0u;
          v20 = 0;
          v26 = 0u;
          *&v27 = 0;
          v28 = 0u;
          v29 = 0u;
          v24 = 0u;
          v22 = 0u;
          v23 = 0u;
          v19.i32[0] = 22;
          v21 = -1;
          WORD5(v26) = 2;
          v25 = 0xFFFFFFFFFFFFFFFFLL;
          *&v30 = 0;
          *(&v27 + 1) = -1;
          GTMTLSMBuffer_processTraceFuncWithMap(v19.i8, a5, v13);
LABEL_19:
          v14 = v23;
LABEL_23:
          v15 = v8;
          v16 = 50;
LABEL_32:
          result = GTResourceTrackerUsingResource(v15, v16, v14, a4, a5);
          goto LABEL_33;
        }

        v19 = 0u;
        v20 = 0;
        *&v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v22 = 0u;
        v23 = 0u;
        v19.i32[0] = 16;
        v21 = -1;
        WORD5(v26) = 2;
        v25 = 0xFFFFFFFFFFFFFFFFLL;
        result = GTMTLSMAccelerationStructure_processTraceFuncWithMap(v19.i8, a5, v13);
        if (v23)
        {
          result = GTResourceTrackerUsingResource(v8, 50, v23, a4, a5);
        }

        v14 = *(&v29 + 1);
        if (*(&v29 + 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (a2 != 50)
        {
          if (a2 != 80)
          {
            if (a2 != 101)
            {
              goto LABEL_33;
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v22 = 0u;
            v23 = 0u;
            v19 = 0u;
            v20 = 0;
            v19.i32[0] = 101;
            v21 = -1;
            WORD5(v26) = 2;
            v25 = 0xFFFFFFFFFFFFFFFFLL;
            result = GTMTLSMTensor_processTraceFuncWithMap(v19.i8, a5, v13);
            v14 = v28;
            if (!v28)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

          v19 = 0u;
          v20 = 0;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v22 = 0u;
          v23 = 0u;
          v19.i32[0] = 80;
          v21 = -1;
          WORD5(v26) = 2;
          v25 = 0xFFFFFFFFFFFFFFFFLL;
          *&v34 = 0xFFFFFFFFLL;
          GTMTLSMTexture_processTraceFuncWithMap(&v19, a5, v13);
          v14 = *(&v29 + 1);
          if (*(&v29 + 1))
          {
            v15 = v8;
            v16 = 80;
            goto LABEL_32;
          }

          v14 = v29;
          if (v29)
          {
LABEL_31:
            v15 = v8;
            v16 = 22;
            goto LABEL_32;
          }

          goto LABEL_19;
        }

        v19 = 0u;
        v20 = 0;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v19.i32[0] = 50;
        v21 = -1;
        WORD4(v25) = 2;
        result = GTMTLSMHeap_processTraceFuncWithMap(v19.i8, a5, v13);
        if (v23 && *(v23 + 20) != 2)
        {
          v14 = v19.i64[1];
          goto LABEL_23;
        }
      }
    }
  }

LABEL_33:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *tracker_resource_get(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v24 = a3;
  GTResourceTrackerUsingResource(*(a1 + 24), a2, a3, *a1, *(a1 + 8));
  ParentResource = GetParentResource(a1, v5);
  if (ParentResource != v5)
  {
    find_entry(*a1, &ParentResource, 8uLL, 0);
    v5 = ParentResource;
    v24 = ParentResource;
  }

  if (v5)
  {
    v7 = *(a1 + 40);
    entry = find_entry(v7, &v24, 8uLL, 0);
    if (!*entry || (v9 = *(*entry + 32)) == 0)
    {
      v25 = v24;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = *find_entry(*a1, &v25, 8uLL, 0);
      if (v12)
      {
        v13 = *(v12 + 32);
        if (v13)
        {
          v14 = v13[4];
          if (v14)
          {
            if ((*(v14 + 79) & 8) != 0)
            {
              v15 = v14 + 64;
              goto LABEL_14;
            }
          }
        }
      }

      else
      {
        v13 = 0;
      }

      v15 = 0;
LABEL_14:
      v16 = apr_palloc(v11, 0x38uLL);
      v9 = v16;
      if (v16)
      {
        v16[6] = 0;
        *(v16 + 1) = 0u;
        *(v16 + 2) = 0u;
        *v16 = 0u;
      }

      *v16 = v13[1];
      v16[1] = v25;
      ConstructorType = GTFenum_getConstructorType(*(v15 + 8));
      v9[3] = -1;
      *(v9 + 10) = ConstructorType;
      v9[2] = a4;
      v9[4] = -1;
      if (ConstructorType <= 59)
      {
        if (ConstructorType != 16)
        {
          if (ConstructorType == 22)
          {
            v26 = 0u;
            v27 = 0;
            v33 = 0u;
            v35 = 0u;
            v36 = 0u;
            *&v34 = 0;
            v30 = 0u;
            v31 = 0u;
            v29 = 0u;
            v26.i32[0] = 22;
            v28 = -1;
            WORD5(v33) = 2;
            v32 = 0xFFFFFFFFFFFFFFFFLL;
            *&v37 = 0;
            *(&v34 + 1) = -1;
            GTMTLSMBuffer_processTraceFuncWithMap(v26.i8, v10, v15);
            if ((GTFenum_isSharedResourceConstructor(*(v15 + 8)) & 1) == 0)
            {
              if ((BYTE8(v33) & 0xE0) != 0)
              {
                goto LABEL_44;
              }

              v20 = atomic_load(v13 + 7);
              v18 = (v20 >> 1) & 1;
LABEL_43:
              *(v9 + 48) = v18;
              goto LABEL_44;
            }
          }

          else
          {
            if (ConstructorType != 50)
            {
              goto LABEL_44;
            }

            if (*(a1 + 56) != 1)
            {
              goto LABEL_44;
            }

            v26 = 0u;
            v27 = 0;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v26.i32[0] = 50;
            v28 = -1;
            WORD4(v32) = 2;
            GTMTLSMHeap_processTraceFuncWithMap(v26.i8, v10, v15);
            if (!v30)
            {
              goto LABEL_44;
            }

            v19 = *(v30 + 16);
            if ((GTFenum_isSharedResourceConstructor(*(v15 + 8)) & 1) == 0 && (v19 & 0xE0) != 0)
            {
              goto LABEL_44;
            }
          }

LABEL_39:
          LOBYTE(v18) = 1;
          goto LABEL_43;
        }
      }

      else
      {
        if (ConstructorType <= 82)
        {
          if (ConstructorType != 60)
          {
            if (ConstructorType == 80)
            {
              v26 = 0u;
              v27 = 0;
              v33 = 0u;
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v34 = 0u;
              v30 = 0u;
              v31 = 0u;
              v29 = 0u;
              v26.i32[0] = 80;
              v28 = -1;
              WORD5(v33) = 2;
              v32 = 0xFFFFFFFFFFFFFFFFLL;
              *&v41 = 0xFFFFFFFFLL;
              GTMTLSMTexture_processTraceFuncWithMap(&v26, v10, v15);
              if (v34 && (*(v34 + 36) & 0xF0) == 0x30)
              {
                v9[3] = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (GTFenum_isSharedResourceConstructor(*(v15 + 8)))
              {
                LOBYTE(v18) = (*(v15 + 15) & 2) == 0;
              }

              else
              {
                LOBYTE(v18) = 0;
              }

              goto LABEL_43;
            }

LABEL_44:
            apr_hash_set(v7, v9 + 1, 8, v9);
            goto LABEL_45;
          }

          *v9 = v13[2];
          goto LABEL_39;
        }

        if (ConstructorType != 83)
        {
          if (ConstructorType == 101)
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v34 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v27 = 0;
            v29 = 0u;
            v26 = 0u;
            v26.i32[0] = 101;
            v28 = -1;
            WORD5(v33) = 2;
            v32 = 0xFFFFFFFFFFFFFFFFLL;
            GTMTLSMTensor_processTraceFuncWithMap(v26.i8, v10, v15);
          }

          goto LABEL_44;
        }
      }

      *v9 = v13[2];
      goto LABEL_44;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_45:
  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t GetParentResource(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v22 = a2;
  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = *find_entry(*a1, &v22, 8uLL, 0);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {
    v5 = *(v4 + 32);
    v6 = v5 ? v5 + 64 : 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 8);
  if (GTFenum_isSharedResourceConstructor(v7))
  {
    goto LABEL_9;
  }

  ConstructorType = GTFenum_getConstructorType(v7);
  if (ConstructorType == 16)
  {
    if (*(a1 + 56) != 1)
    {
      goto LABEL_9;
    }

    v23 = 0u;
    v24 = 0;
    *&v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v23.i32[0] = 16;
    v25 = -1;
    WORD5(v30) = 2;
    v29 = 0xFFFFFFFFFFFFFFFFLL;
    GTMTLSMAccelerationStructure_processTraceFuncWithMap(v23.i8, *(a1 + 8), v6);
  }

  else
  {
    if (ConstructorType != 22)
    {
      if (ConstructorType == 80)
      {
        v23 = 0u;
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v26 = 0u;
        v27 = 0u;
        v23.i32[0] = 80;
        v25 = -1;
        WORD5(v30) = 2;
        v29 = 0xFFFFFFFFFFFFFFFFLL;
        v38 = 0xFFFFFFFFLL;
        GTMTLSMTexture_processTraceFuncWithMap(&v23, *(a1 + 8), v6);
        if (v33 != 0)
        {
          goto LABEL_30;
        }

        if (*(a1 + 56) == 1 && v27)
        {
          entry = find_entry(*a1, &v27, 8uLL, 0);
          if (*entry && (v12 = *(*entry + 32)) != 0 && (v13 = *(v12 + 32)) != 0 && (*(v13 + 79) & 8) != 0)
          {
            v14 = (v13 + 64);
          }

          else
          {
            v14 = 0;
          }

          v15 = 0u;
          v16 = 0;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          LODWORD(v15) = 50;
          v17 = -1;
          WORD4(v21) = 2;
          GTMTLSMHeap_processTraceFuncWithMap(&v15, *(a1 + 8), v14);
          if (v19)
          {
            if (*(v19 + 20) != 2)
            {
              goto LABEL_30;
            }
          }
        }
      }

      goto LABEL_9;
    }

    if (*(a1 + 56) != 1)
    {
      goto LABEL_9;
    }

    v23 = 0u;
    v24 = 0;
    v30 = 0u;
    *&v31 = 0;
    *&v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23.i32[0] = 22;
    v25 = -1;
    WORD5(v30) = 2;
    v29 = 0xFFFFFFFFFFFFFFFFLL;
    *(&v31 + 1) = -1;
    GTMTLSMBuffer_processTraceFuncWithMap(v23.i8, *(a1 + 8), v6);
  }

  if (v27)
  {
LABEL_30:
    result = GetParentResource(a1);
    goto LABEL_10;
  }

LABEL_9:
  result = v22;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *GTResourceTrackerResourceRead(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = tracker_resource_get(a1, a2, a3, a4);
  v9 = v8;
  if (v8)
  {
    v10 = v8[3];
    if (v10 < 0)
    {
      v10 = a4;
    }

    v8[3] = v10;
    if (*(v8 + 48) == 1)
    {
      v11 = tracker_resource_get(a1, a2, a3, a4);
      if (v11)
      {
        v11[4] = a4;
      }
    }
  }

  return v9;
}

void *GTResourceTrackerResourceUsage(void *result, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
  if ((a5 & 2) != 0)
  {
    result = tracker_resource_get(result, a2, a3, a4);
    if (result)
    {
      result[4] = a4;
    }
  }

  if ((a5 & 5) != 0)
  {

    return GTResourceTrackerResourceRead(v9, a2, a3, a4);
  }

  return result;
}

uint64_t GTResourceTrackerUsingResourceArray(uint64_t result, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v8 = a4;
    v11 = result;
    do
    {
      v12 = *a3;
      if (*a3)
      {
        if (a2)
        {
          ResourceType = a2;
        }

        else
        {
          ResourceType = GTResourceTrackerGetResourceType(*a3, a5);
          v12 = *a3;
        }

        result = GTResourceTrackerUsingResource(v11, ResourceType, v12, a5, a6);
      }

      ++a3;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *GTResourceTrackerResourceReadMTLArray(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2)
  {
    v6 = result;
    do
    {
      v8 = *v3++;
      v7 = v8;
      if (v8)
      {
        result = GTResourceTrackerResourceRead(v6, 16, v7, a3);
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void *GTResourceTrackerResourceWriteArray(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    do
    {
      v9 = *a2++;
      v8 = v9;
      if (v9)
      {
        result = tracker_resource_get(v7, 80, v8, a4);
        if (result)
        {
          result[4] = a4;
        }
      }

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *GTResourceTrackerResourceUsageArray(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    v7 = a3;
    v9 = result;
    do
    {
      result = *a2;
      if (*a2)
      {
        ResourceType = GTResourceTrackerGetResourceType(result, *v9);
        result = GTResourceTrackerResourceUsage(v9, ResourceType, *a2, a4, a5);
      }

      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void GTResourceTrackerUsingResourceHeap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  if (!a2)
  {
    return;
  }

  if (*(a1 + 56) == 1)
  {
    entry = find_entry(*a1, &v21, 8uLL, 0);
    if (*entry && (v6 = *(*entry + 32)) != 0 && (v7 = *(v6 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }

    v14 = 0u;
    v15 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    LODWORD(v14) = 50;
    v16 = -1;
    WORD4(v20) = 2;
    GTMTLSMHeap_processTraceFuncWithMap(&v14, *(a1 + 8), v8);
    if (v18 && *(v18 + 20) != 2)
    {
      v13 = tracker_resource_get(a1, 50, v21, a3);
      if (v13)
      {
        v13[4] = a3;
      }

      goto LABEL_13;
    }

    v9 = *(a1 + 24);
    v10 = v21;
  }

  else
  {
    v10 = a2;
    v9 = *(a1 + 24);
  }

  GTResourceTrackerUsingResource(v9, 50, v10, *a1, *(a1 + 8));
LABEL_13:
  v11 = find_entry(*(a1 + 32), &v21, 8uLL, 0);
  if (!*v11 || !*(*v11 + 32))
  {
    v12 = apr_palloc(**(a1 + 32), 0x10uLL);
    *v12 = v21;
    v12[1] = a3;
    apr_hash_set(*(a1 + 32), v12, 8, v12);
  }
}

uint64_t IsHeapResourceMadeAliasable(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = a2;
  v4 = *(*(*find_entry(a1, &v18, 8uLL, 0) + 32) + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_8:
        v8 = v5 | (v7 << 32);
        goto LABEL_9;
      }
    }

    v7 = 0;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *v9;
    if (*v9 > a3)
    {
      break;
    }

    v11 = *(v9 + 8);
    v13 = v11 == -16122 || v11 == -16114 || v11 == -15651;
    if (v13 || (GTFenum_isDestructor(v11) & 1) != 0)
    {
      return v10;
    }

    v14 = atomic_load((v4 + 4));
    v15 = v8 + (v14 >> 6);
    v16 = (HIDWORD(v8) + 1);
    v8 = (v16 << 32) | v8;
    if (v16 == v15 - 1)
    {
      v8 = (v16 << 32) | v16;
      v4 = *(v4 + 40);
    }
  }

  return -1;
}

void *GTResourceTrackerMakeWithDescriptor(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = apr_palloc(v2, 0x40uLL);
  *v3 = *a1;
  v3[2] = v2;
  v3[3] = apr_hash_make(v2);
  v3[4] = apr_hash_make(v2);
  v3[5] = apr_hash_make(v2);
  v3[6] = apr_hash_make(v2);
  *(v3 + 56) = *(a1 + 24);
  return v3;
}

void GTResourceTrackerProcessFunction()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v194 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 8);
  ConstructorType = GTFenum_getConstructorType(v4);
  if (GTFenum_isMTLCommandEncoder(ConstructorType))
  {
    bzero(&v164, 0x2BA0uLL);
    GTMTLSMCommandEncoder_processTraceFunc(&v164, v2, v3[1]);
    if (v164 <= 64)
    {
      if (v164 != 17 && v164 != 21)
      {
        if (v164 != 28)
        {
          goto LABEL_219;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v164 <= 73)
      {
        if (v164 != 65)
        {
          if (v164 == 70)
          {
            v6 = *v3;
            *&v170 = v165;
            v7 = *find_entry(v6, &v170, 8uLL, 0);
            if (v7 && (v8 = *(v7 + 32)) != 0 && (v9 = *(v8 + 32)) != 0 && (*(v9 + 79) & 8) != 0)
            {
              v10 = v9 + 64;
            }

            else
            {
              v10 = 0;
            }

            bzero(&v170, 0x2BA0uLL);
            GTMTLSMCommandEncoder_processTraceFunc(&v170, v10, v3[1]);
            bzero(&v166, 0x2BA0uLL);
            v161 = 0;
            v162 = 0;
            if (*(v10 + 8) != -16286)
            {
              v61 = *(&v174 + 1);
              v62 = renderCommandEncoder_processStreamWithDescriptor(v3, *(&v174 + 1), &v170);
              v161 = v193;
              LOWORD(v162) = v193[615];
              goto LABEL_176;
            }

            v11 = *v3;
            v163 = *(&v173 + 1);
            v12 = *find_entry(v11, &v163, 8uLL, 0);
            if (v12)
            {
              v13 = *(v12 + 32);
              if (v13)
              {
                v14 = *(v13 + 32);
                if (v14)
                {
                  if ((*(v14 + 79) & 8) != 0)
                  {
                    v15 = (v14 + 64);
LABEL_161:
                    GTMTLSMCommandEncoder_processTraceFunc(&v166, v15, v3[1]);
                    v126 = *(v13 + 32);
                    if (v126)
                    {
                      v127 = 0;
                      while (1)
                      {
                        v128 = atomic_load((v126 + 4));
                        v129 = v127 + (v128 >> 6) - 1;
                        if (v129 > 1)
                        {
                          break;
                        }

                        v126 = *(v126 + 40);
                        v127 = v129;
                        if (!v126)
                        {
                          v127 = v129;
                          goto LABEL_168;
                        }
                      }

                      v129 = 1;
LABEL_168:
                      v130 = v127 | (v129 << 32);
                    }

                    else
                    {
                      v130 = 0;
                    }

                    while (v126)
                    {
                      v131 = v126 + 64 + ((HIDWORD(v130) - v130) << 6);
                      if ((*(v131 + 15) & 8) == 0)
                      {
                        break;
                      }

                      v132 = GTFenum_getConstructorType(*(v131 + 8));
                      if (!GTFenum_isMTLCommandEncoder(v132))
                      {
                        GTMTLSMCommandEncoder_processTraceFunc(&v166, (v126 + 64 + ((HIDWORD(v130) - v130) << 6)), v3[1]);
                      }

                      v133 = atomic_load((v126 + 4));
                      v134 = v130 + (v133 >> 6);
                      v135 = (HIDWORD(v130) + 1);
                      v130 = (v135 << 32) | v130;
                      if (v135 == v134 - 1)
                      {
                        v130 = (v135 << 32) | v135;
                        v126 = *(v126 + 40);
                      }
                    }

                    v61 = v168;
                    v161 = v169;
                    LOWORD(v162) = v169[64];
                    v62 = renderCommandEncoder_processStreamWithDescriptor(v3, v168, &v170);
LABEL_176:
                    RenderEncoderWithDescriptor(v3, v61);
                    if (v170 == 70)
                    {
                      v113 = &v161;
                      v114 = v3;
                      v115 = v61;
                      v112 = v62;
LABEL_178:
                      RenderEncoderEndEncoding(v114, v115, v113, v112);
                    }

                    goto LABEL_219;
                  }
                }
              }
            }

            else
            {
              v13 = 0;
            }

            v15 = 0;
            goto LABEL_161;
          }

LABEL_219:
          v159 = *MEMORY[0x277D85DE8];
          return;
        }

        v44 = *v3;
        *&v170 = v165;
        v45 = *find_entry(v44, &v170, 8uLL, 0);
        if (v45)
        {
          v46 = *(v45 + 32);
          bzero(&v170, 0x2BA0uLL);
          if (v46)
          {
            v47 = *(v46 + 32);
            if (v47)
            {
              if ((*(v47 + 79) & 8) != 0)
              {
                v48 = (v47 + 64);
                goto LABEL_89;
              }
            }
          }
        }

        else
        {
          bzero(&v170, 0x2BA0uLL);
          v46 = 0;
        }

        v48 = 0;
LABEL_89:
        GTMTLSMCommandEncoder_processTraceFunc(&v170, v48, v3[1]);
        v76 = *(&v174 + 1);
        RenderEncoderWithDescriptor(v3, *(&v174 + 1));
        v77 = *(v46 + 32);
        if (v77)
        {
          v78 = 0;
          while (1)
          {
            v79 = atomic_load((v77 + 4));
            v80 = v78 + (v79 >> 6) - 1;
            if (v80 > 1)
            {
              break;
            }

            v77 = *(v77 + 40);
            v78 = v80;
            if (!v77)
            {
              v78 = v80;
LABEL_137:
              v81 = v78 | (v80 << 32);
              goto LABEL_138;
            }
          }

          v80 = 1;
          goto LABEL_137;
        }

        v81 = 0;
LABEL_138:
        while (v77)
        {
          v106 = v77 + 64;
          v107 = v77 + 64 + ((HIDWORD(v81) - v81) << 6);
          if ((*(v107 + 15) & 8) == 0)
          {
            break;
          }

          if (GTFenum_isEndEncoding(*(v107 + 8)))
          {
            v166 = &v175;
            LOWORD(v167) = v183;
            *(&v167 + 2) = 0;
            HIWORD(v167) = 0;
            v112 = *v107;
            v113 = &v166;
            v114 = v3;
            v115 = v76;
            goto LABEL_178;
          }

          GTResourceTrackerProcessResourceUse(v3, v106 + ((HIDWORD(v81) - v81) << 6), *v107);
          v108 = GTFenum_getConstructorType(*(v107 + 8));
          if (GTFenum_isMTLCommandEncoder(v108))
          {
            bzero(&v166, 0x2BA0uLL);
            GTMTLSMCommandEncoder_processTraceFunc(&v166, (v106 + ((HIDWORD(v81) - v81) << 6)), v3[1]);
            renderCommandEncoder_processStreamWithDescriptor(v3, v76, &v166);
          }

          else
          {
            GTMTLSMCommandEncoder_processTraceFunc(&v170, (v106 + ((HIDWORD(v81) - v81) << 6)), v3[1]);
          }

          v109 = atomic_load((v77 + 4));
          v110 = v81 + (v109 >> 6);
          v111 = (HIDWORD(v81) + 1);
          v81 = (v111 << 32) | v81;
          if (v111 == v110 - 1)
          {
            v81 = (v111 << 32) | v111;
            v77 = *(v77 + 40);
          }
        }

        goto LABEL_219;
      }

      if (v164 != 74)
      {
        if (v164 != 82)
        {
          goto LABEL_219;
        }

LABEL_43:
        computeCommandEncoder_processStream();
        goto LABEL_219;
      }
    }

    defaultCommandEncoder_processStream();
    goto LABEL_219;
  }

  if (ConstructorType - 95) <= 0xA && ((0x409u >> (ConstructorType - 95)))
  {
    bzero(&v166, 0x790uLL);
    GTMTL4SMCommandEncoder_processTraceFunc(&v166, v2, v3[1]);
    switch(v166)
    {
      case 'i':
        v55 = v167;
        bzero(&v170, 0x790uLL);
        v56 = *v3;
        v164 = v55;
        v57 = *(*(*find_entry(v56, &v164, 8uLL, 0) + 32) + 32);
        if (v57)
        {
          v58 = 0;
          while (1)
          {
            v59 = atomic_load((v57 + 4));
            v60 = v58 + (v59 >> 6) - 1;
            if (v60 > 0)
            {
              break;
            }

            v57 = *(v57 + 40);
            v58 = v60;
            if (!v57)
            {
              v58 = v60;
              goto LABEL_148;
            }
          }

          v60 = 0;
LABEL_148:
          v82 = v58 | (v60 << 32);
        }

        else
        {
          v82 = 0;
        }

        while (v57)
        {
          v116 = v57 + 64;
          v117 = v57 + 64 + ((HIDWORD(v82) - v82) << 6);
          if ((*(v117 + 15) & 8) == 0)
          {
            break;
          }

          GTResourceTrackerProcessResourceUse(v3, v116 + ((HIDWORD(v82) - v82) << 6), *v117);
          GTMTL4SMCommandEncoder_processTraceFunc(&v170, (v116 + ((HIDWORD(v82) - v82) << 6)), v3[1]);
          v118 = atomic_load((v57 + 4));
          v119 = v82 + (v118 >> 6);
          v120 = (HIDWORD(v82) + 1);
          v82 = (v120 << 32) | v82;
          if (v120 == v119 - 1)
          {
            v82 = (v120 << 32) | v120;
            v57 = *(v57 + 40);
          }
        }

        break;
      case 'b':
        v33 = *v3;
        *&v170 = v167;
        v34 = *find_entry(v33, &v170, 8uLL, 0);
        if (v34 && (v35 = *(v34 + 32)) != 0 && (v36 = *(v35 + 32)) != 0 && (*(v36 + 79) & 8) != 0)
        {
          v37 = (v36 + 64);
        }

        else
        {
          v37 = 0;
        }

        bzero(&v170, 0x790uLL);
        GTMTL4SMCommandEncoder_processTraceFunc(&v170, v37, v3[1]);
        v38 = *v3;
        v39 = *(&v174 + 1);
        v164 = *(&v170 + 1);
        v40 = *(*(*find_entry(v38, &v164, 8uLL, 0) + 32) + 32);
        if (v40)
        {
          v41 = 0;
          while (1)
          {
            v42 = atomic_load((v40 + 4));
            v43 = v41 + (v42 >> 6) - 1;
            if (v43 > 1)
            {
              break;
            }

            v40 = *(v40 + 40);
            v41 = v43;
            if (!v40)
            {
              v41 = v43;
              goto LABEL_98;
            }
          }

          v43 = 1;
LABEL_98:
          v75 = v41 | (v43 << 32);
        }

        else
        {
          v75 = 0;
        }

LABEL_99:
        v160 = v40 + 64;
        while (v40)
        {
          v84 = v160 + ((HIDWORD(v75) - v75) << 6);
          if ((*(v84 + 15) & 8) == 0)
          {
            break;
          }

          v85 = *(v84 + 8);
          if (v85 == -15104 || v85 == -14892 || v85 == -15047)
          {
            v98 = *v84;
            goto LABEL_122;
          }

          GTResourceTrackerProcessResourceUse(v3, v160 + ((HIDWORD(v75) - v75) << 6), *v84);
          GTMTL4SMCommandEncoder_processTraceFunc(&v170, v84, v3[1]);
          if ((*(v84 + 8) + 15059) <= 0xB)
          {
            v88 = v170;
            v89 = v192[496];
            v90 = v39;
            v91 = 8;
            v92 = *v84;
            do
            {
              RenderEncoderLoadAttachment(v3, v90, v92);
              v90 += 64;
              --v91;
            }

            while (v91);
            RenderEncoderLoadAttachment(v3, v39 + 512, v92);
            RenderEncoderLoadAttachment(v3, v39 + 560, v92);
            if (v88 == 70)
            {
              if (v89)
              {
                v93 = *(v39 + 608);
                if (v93)
                {
                  v94 = tracker_resource_get(v3, 22, v93, v92);
                  if (v94)
                  {
                    v94[4] = v92;
                  }
                }
              }
            }

            GTResourceTrackerUsingResource(v3[3], 68, *(v39 + 600), *v3, v3[1]);
          }

          v95 = atomic_load((v40 + 4));
          v96 = v75 + (v95 >> 6);
          v97 = (HIDWORD(v75) + 1);
          v75 = (v97 << 32) | v75;
          if (v97 == v96 - 1)
          {
            v75 = (v97 << 32) | v97;
            v40 = *(v40 + 40);
            goto LABEL_99;
          }
        }

        v98 = -1;
LABEL_122:
        v99 = (v39 + 8);
        v100 = 8;
        do
        {
          GTResourceTrackerUsingResource(v3[3], 80, *v99, *v3, v3[1]);
          GTResourceTrackerUsingResource(v3[3], 80, *(v99 - 1), *v3, v3[1]);
          v99 += 8;
          --v100;
        }

        while (v100);
        GTResourceTrackerUsingResource(v3[3], 80, *(v39 + 520), *v3, v3[1]);
        GTResourceTrackerUsingResource(v3[3], 80, *(v39 + 512), *v3, v3[1]);
        GTResourceTrackerUsingResource(v3[3], 80, *(v39 + 568), *v3, v3[1]);
        GTResourceTrackerUsingResource(v3[3], 80, *(v39 + 560), *v3, v3[1]);
        GTResourceTrackerUsingResource(v3[3], 22, *(v39 + 608), *v3, v3[1]);
        GTResourceTrackerUsingResource(v3[3], 68, *(v39 + 600), *v3, v3[1]);
        if (v170 == 98)
        {
          v101 = 0;
          v102 = v39;
          do
          {
            v103 = *(v102 + 27);
            if (v103 == 4)
            {
              v103 = *&v192[v101];
            }

            RenderEncoderStoreAttachment(v3, v102, v103, v98);
            v101 += 8;
            v102 += 64;
          }

          while (v101 != 64);
          if (*(v39 + 539) == 4)
          {
            v104 = v192[497];
          }

          else
          {
            v104 = *(v39 + 539);
          }

          RenderEncoderStoreAttachment(v3, (v39 + 512), v104, v98);
          if (*(v39 + 587) == 4)
          {
            v105 = v192[498];
          }

          else
          {
            v105 = *(v39 + 587);
          }

          RenderEncoderStoreAttachment(v3, (v39 + 560), v105, v98);
        }

        break;
      case '_':
        v16 = v167;
        bzero(&v170, 0x790uLL);
        v17 = *v3;
        v164 = v16;
        v18 = *(*(*find_entry(v17, &v164, 8uLL, 0) + 32) + 32);
        if (v18)
        {
          v19 = 0;
          while (1)
          {
            v20 = atomic_load((v18 + 4));
            v21 = v19 + (v20 >> 6) - 1;
            if (v21 > 0)
            {
              break;
            }

            v18 = *(v18 + 40);
            v19 = v21;
            if (!v18)
            {
              v19 = v21;
              goto LABEL_154;
            }
          }

          v21 = 0;
LABEL_154:
          v83 = v19 | (v21 << 32);
        }

        else
        {
          v83 = 0;
        }

        while (v18)
        {
          v121 = v18 + 64;
          v122 = v18 + 64 + ((HIDWORD(v83) - v83) << 6);
          if ((*(v122 + 15) & 8) == 0)
          {
            break;
          }

          GTResourceTrackerProcessResourceUse(v3, v121 + ((HIDWORD(v83) - v83) << 6), *v122);
          GTMTL4SMCommandEncoder_processTraceFunc(&v170, (v121 + ((HIDWORD(v83) - v83) << 6)), v3[1]);
          v123 = atomic_load((v18 + 4));
          v124 = v83 + (v123 >> 6);
          v125 = (HIDWORD(v83) + 1);
          v83 = (v125 << 32) | v83;
          if (v125 == v124 - 1)
          {
            v83 = (v125 << 32) | v125;
            v18 = *(v18 + 40);
          }
        }

        break;
    }

    goto LABEL_219;
  }

  if (v4 + 20474) <= 0x36 && ((0x40000020020001uLL >> (v4 - 6)))
  {
    v22 = GTTraceFunc_targetContext(v2, v3[1]);
    ReceiverType = GTFenum_getReceiverType(*(v2 + 8));
    if (ReceiverType > 102)
    {
      if (ReceiverType != 103)
      {
        if (ReceiverType != 104)
        {
          goto LABEL_219;
        }

        v24 = *v2;
        v49 = *v3;
        *&v170 = v22;
        v50 = *(*find_entry(v49, &v170, 8uLL, 0) + 32);
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v171 = 0;
        v173 = 0u;
        v170 = 0u;
        LODWORD(v170) = 104;
        v172 = -1;
        v51 = *(v50 + 32);
        if (v51)
        {
          v52 = 0;
          while (1)
          {
            v53 = atomic_load((v51 + 4));
            v54 = v52 + (v53 >> 6) - 1;
            if (v54 > 0)
            {
              break;
            }

            v51 = *(v51 + 40);
            v52 = v54;
            if (!v51)
            {
              v52 = v54;
              goto LABEL_192;
            }
          }

          v54 = 0;
LABEL_192:
          v137 = v52 | (v54 << 32);
        }

        else
        {
          v137 = 0;
        }

        while (v51)
        {
          v145 = v51 + 64 + ((HIDWORD(v137) - v137) << 6);
          if ((*(v145 + 15) & 8) == 0 || *v145 > v24)
          {
            break;
          }

          GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(&v170, v3[1], v145);
          v146 = atomic_load((v51 + 4));
          v147 = v137 + (v146 >> 6);
          v148 = (HIDWORD(v137) + 1);
          v137 = (v148 << 32) | v137;
          if (v148 == v147 - 1)
          {
            v137 = (v148 << 32) | v148;
            v51 = *(v51 + 40);
          }
        }

        GTResourceTrackerUsingResource(v3[3], 104, v22, *v3, v3[1]);
        GTResourceTrackerResourceRead(v3, 80, v175, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v175 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v176, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v176 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v177, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v177 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v178, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v178 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v179 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v180 + 1), v24);
        v149 = v180;
LABEL_216:
        v158 = tracker_resource_get(v3, 80, v149, v24);
        if (v158)
        {
          v158[4] = v24;
        }

        GTResourceTrackerUsingResource(v3[3], 41, *(&v174 + 1), *v3, v3[1]);
        goto LABEL_219;
      }

      v24 = *v2;
      v69 = *v3;
      *&v170 = v22;
      v70 = *(*find_entry(v69, &v170, 8uLL, 0) + 32);
      v170 = 0u;
      v171 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      LODWORD(v170) = 103;
      *&v180 = 0;
      v172 = -1;
      v71 = *(v70 + 32);
      if (v71)
      {
        v72 = 0;
        while (1)
        {
          v73 = atomic_load((v71 + 4));
          v74 = v72 + (v73 >> 6) - 1;
          if (v74 > 0)
          {
            break;
          }

          v71 = *(v71 + 40);
          v72 = v74;
          if (!v71)
          {
            v72 = v74;
            goto LABEL_208;
          }
        }

        v74 = 0;
LABEL_208:
        v139 = v72 | (v74 << 32);
      }

      else
      {
        v139 = 0;
      }

      while (v71)
      {
        v154 = v71 + 64 + ((HIDWORD(v139) - v139) << 6);
        if ((*(v154 + 15) & 8) == 0 || *v154 > v24)
        {
          break;
        }

        GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(&v170, v3[1], v154);
        v155 = atomic_load((v71 + 4));
        v156 = v139 + (v155 >> 6);
        v157 = (HIDWORD(v139) + 1);
        v139 = (v157 << 32) | v139;
        if (v157 == v156 - 1)
        {
          v139 = (v157 << 32) | v157;
          v71 = *(v71 + 40);
        }
      }

      GTResourceTrackerUsingResource(v3[3], 103, v22, *v3, v3[1]);
      GTResourceTrackerUsingResource(v3[3], 40, *(v174 + 32), *v3, v3[1]);
      GTResourceTrackerResourceRead(v3, 80, v175, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v175 + 1), v24);
      GTResourceTrackerResourceRead(v3, 80, v176, v24);
      v144 = *(&v176 + 1);
    }

    else
    {
      if (ReceiverType == 39)
      {
        v24 = *v2;
        v63 = *v3;
        *&v170 = v22;
        v64 = *(*find_entry(v63, &v170, 8uLL, 0) + 32);
        v170 = 0u;
        v171 = 0;
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        LODWORD(v170) = 39;
        v172 = -1;
        v65 = *(v64 + 32);
        if (v65)
        {
          v66 = 0;
          while (1)
          {
            v67 = atomic_load((v65 + 4));
            v68 = v66 + (v67 >> 6) - 1;
            if (v68 > 0)
            {
              break;
            }

            v65 = *(v65 + 40);
            v66 = v68;
            if (!v65)
            {
              v66 = v68;
              goto LABEL_200;
            }
          }

          v68 = 0;
LABEL_200:
          v138 = v66 | (v68 << 32);
        }

        else
        {
          v138 = 0;
        }

        while (v65)
        {
          v150 = v65 + 64 + ((HIDWORD(v138) - v138) << 6);
          if ((*(v150 + 15) & 8) == 0 || *v150 > v24)
          {
            break;
          }

          GTMTLFXSMSpatialScaler_processTraceFuncWithMap(&v170, v3[1], v150);
          v151 = atomic_load((v65 + 4));
          v152 = v138 + (v151 >> 6);
          v153 = (HIDWORD(v138) + 1);
          v138 = (v153 << 32) | v138;
          if (v153 == v152 - 1)
          {
            v138 = (v153 << 32) | v153;
            v65 = *(v65 + 40);
          }
        }

        GTResourceTrackerUsingResource(v3[3], 39, v22, *v3, v3[1]);
        GTResourceTrackerResourceRead(v3, 80, v175, v24);
        v149 = *(&v175 + 1);
        goto LABEL_216;
      }

      if (ReceiverType != 40)
      {
        goto LABEL_219;
      }

      v24 = *v2;
      v25 = *v3;
      *&v170 = v22;
      v26 = *(*find_entry(v25, &v170, 8uLL, 0) + 32);
      v170 = 0u;
      v171 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      LODWORD(v170) = 40;
      *&v180 = 0;
      v172 = -1;
      v27 = *(v26 + 32);
      if (v27)
      {
        v28 = 0;
        while (1)
        {
          v29 = atomic_load((v27 + 4));
          v30 = v28 + (v29 >> 6) - 1;
          if (v30 > 0)
          {
            break;
          }

          v27 = *(v27 + 40);
          v28 = v30;
          if (!v27)
          {
            v28 = v30;
            goto LABEL_184;
          }
        }

        v30 = 0;
LABEL_184:
        v136 = v28 | (v30 << 32);
      }

      else
      {
        v136 = 0;
      }

      while (v27)
      {
        v140 = v27 + 64 + ((HIDWORD(v136) - v136) << 6);
        if ((*(v140 + 15) & 8) == 0 || *v140 > v24)
        {
          break;
        }

        GTMTLFXSMTemporalScaler_processTraceFuncWithMap(&v170, v3[1], v140);
        v141 = atomic_load((v27 + 4));
        v142 = v136 + (v141 >> 6);
        v143 = (HIDWORD(v136) + 1);
        v136 = (v143 << 32) | v136;
        if (v143 == v142 - 1)
        {
          v136 = (v143 << 32) | v143;
          v27 = *(v27 + 40);
        }
      }

      GTResourceTrackerUsingResource(v3[3], 40, v22, *v3, v3[1]);
      GTResourceTrackerResourceRead(v3, 80, v175, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v175 + 1), v24);
      GTResourceTrackerResourceRead(v3, 80, v176, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v176 + 1), v24);
      v144 = *(&v177 + 1);
    }

    GTResourceTrackerResourceRead(v3, 80, v144, v24);
    v149 = v177;
    goto LABEL_216;
  }

  v31 = *v2;
  v32 = *MEMORY[0x277D85DE8];

  GTResourceTrackerProcessResourceUse(v3, v2, v31);
}

void defaultCommandEncoder_processStream()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v28 = *MEMORY[0x277D85DE8];
  bzero(v26, 0x2BA0uLL);
  v4 = *v3;
  v25 = v2;
  v5 = *(*(*find_entry(v4, &v25, 8uLL, 0) + 32) + 32);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = atomic_load((v5 + 4));
      v8 = v6 + (v7 >> 6) - 1;
      if (v8 > 0)
      {
        break;
      }

      v5 = *(v5 + 40);
      v6 = v8;
      if (!v5)
      {
        v6 = v8;
        goto LABEL_8;
      }
    }

    v8 = 0;
LABEL_8:
    v9 = v6 | (v8 << 32);
  }

  else
  {
    v9 = 0;
  }

  while (v5)
  {
    v10 = v5 + 64;
    v11 = v5 + 64 + ((HIDWORD(v9) - v9) << 6);
    if ((*(v11 + 15) & 8) == 0)
    {
      break;
    }

    GTResourceTrackerProcessResourceUse(v3, v10 + ((HIDWORD(v9) - v9) << 6), *v11);
    GTMTLSMCommandEncoder_processTraceFunc(v26, (v10 + ((HIDWORD(v9) - v9) << 6)), v3[1]);
    v12 = atomic_load((v5 + 4));
    v13 = v9 + (v12 >> 6);
    v14 = (HIDWORD(v9) + 1);
    v9 = (v14 << 32) | v9;
    if (v14 == v13 - 1)
    {
      v9 = (v14 << 32) | v14;
      v5 = *(v5 + 40);
    }
  }

  switch(v26[0])
  {
    case 0x11:
      v21 = v27;
      if (v27)
      {
        for (i = 8; i != 104; i += 24)
        {
          v23 = *(v21 + i);
          if (v23)
          {
            GTResourceTrackerUsingResource(v3[3], 31, v23, *v3, v3[1]);
          }
        }
      }

      break;
    case 0x15:
      v18 = v27;
      if (v27)
      {
        for (j = 8; j != 104; j += 24)
        {
          v20 = *(v18 + j);
          if (v20)
          {
            GTResourceTrackerUsingResource(v3[3], 31, v20, *v3, v3[1]);
          }
        }
      }

      break;
    case 0x4A:
      v15 = v27;
      if (v27)
      {
        for (k = 8; k != 104; k += 24)
        {
          v17 = *(v15 + k);
          if (v17)
          {
            GTResourceTrackerUsingResource(v3[3], 31, v17, *v3, v3[1]);
          }
        }
      }

      break;
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t computeCommandEncoder_processStream()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v23 = *MEMORY[0x277D85DE8];
  bzero(v21, 0x2BA0uLL);
  v4 = *v3;
  v20 = v2;
  result = find_entry(v4, &v20, 8uLL, 0);
  v6 = *(*(*result + 32) + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 0)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_8:
    v10 = v7 | (v9 << 32);
  }

  else
  {
    v10 = 0;
  }

  while (v6)
  {
    v11 = v6 + 64;
    v12 = v6 + 64 + ((HIDWORD(v10) - v10) << 6);
    if ((*(v12 + 15) & 8) == 0)
    {
      break;
    }

    GTResourceTrackerProcessResourceUse(v3, v11 + ((HIDWORD(v10) - v10) << 6), *v12);
    GTMTLSMCommandEncoder_processTraceFunc(v21, (v11 + ((HIDWORD(v10) - v10) << 6)), v3[1]);
    result = ResourceTracker_processCommandEncoder(v3, *(v12 + 8), v21, *v12);
    v13 = atomic_load((v6 + 4));
    v14 = v10 + (v13 >> 6);
    v15 = (HIDWORD(v10) + 1);
    v10 = (v15 << 32) | v10;
    if (v15 == v14 - 1)
    {
      v10 = (v15 << 32) | v15;
      v6 = *(v6 + 40);
    }
  }

  if (v21[0] == 28)
  {
    v16 = v22;
    if (v22)
    {
      for (i = 8; i != 104; i += 24)
      {
        v18 = *(v16 + i);
        if (v18)
        {
          result = GTResourceTrackerUsingResource(v3[3], 31, v18, *v3, v3[1]);
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t renderCommandEncoder_processStreamWithDescriptor(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v26 = *(a3 + 8);
  v7 = *(*(*find_entry(v6, &v26, 8uLL, 0) + 32) + 32);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = atomic_load((v7 + 4));
      v10 = v8 + (v9 >> 6) - 1;
      if (v10 > 1)
      {
        break;
      }

      v7 = *(v7 + 40);
      v8 = v10;
      if (!v7)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    v10 = 1;
LABEL_8:
    v11 = v8 | (v10 << 32);
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  v12 = v7 + 64;
  while (v7)
  {
    v13 = v12 + ((HIDWORD(v11) - v11) << 6);
    if ((*(v13 + 15) & 8) == 0)
    {
      break;
    }

    isEndEncoding = GTFenum_isEndEncoding(*(v13 + 8));
    v15 = *v13;
    if (isEndEncoding)
    {
      return v15;
    }

    GTResourceTrackerProcessResourceUse(a1, v12 + ((HIDWORD(v11) - v11) << 6), v15);
    GTMTLSMCommandEncoder_processTraceFunc(a3, (v12 + ((HIDWORD(v11) - v11) << 6)), a1[1]);
    ResourceTracker_processCommandEncoder(a1, *(v13 + 8), a3, *v13);
    if (GTFenum_isDrawCall(*(v13 + 8)))
    {
      v16 = *a3 != 70 || *(a3 + 11157) == 0;
      v17 = *v13;
      v18 = a2;
      v19 = 8;
      do
      {
        RenderEncoderLoadAttachment(a1, v18, v17);
        v18 += 64;
        --v19;
      }

      while (v19);
      RenderEncoderLoadAttachment(a1, a2 + 672, v17);
      RenderEncoderLoadAttachment(a1, a2 + 720, v17);
      if (!v16)
      {
        v20 = *(a2 + 792);
        if (v20)
        {
          v21 = tracker_resource_get(a1, 22, v20, v17);
          if (v21)
          {
            v21[4] = v17;
          }
        }
      }

      GTResourceTrackerUsingResource(a1[3], 68, *(a2 + 784), *a1, a1[1]);
      v12 = v7 + 64;
    }

    v22 = atomic_load((v7 + 4));
    v23 = v11 + (v22 >> 6);
    v24 = (HIDWORD(v11) + 1);
    v11 = (v24 << 32) | v11;
    if (v24 == v23 - 1)
    {
      v11 = (v24 << 32) | v24;
      v7 = *(v7 + 40);
      goto LABEL_9;
    }
  }

  return -1;
}

uint64_t RenderEncoderWithDescriptor(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 1;
  v5 = 8;
  do
  {
    GTResourceTrackerUsingResource(a1[3], 80, *v4, *a1, a1[1]);
    GTResourceTrackerUsingResource(a1[3], 80, *(v4 - 1), *a1, a1[1]);
    v4 += 8;
    --v5;
  }

  while (v5);
  GTResourceTrackerUsingResource(a1[3], 80, a2[85], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[84], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[91], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[90], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 22, a2[99], *a1, a1[1]);
  result = GTResourceTrackerUsingResource(a1[3], 68, a2[98], *a1, a1[1]);
  v7 = 0;
  v8 = a2 + 66;
  do
  {
    v9 = v8[v7];
    if (v9)
    {
      result = GTResourceTrackerUsingResource(a1[3], 31, v9, *a1, a1[1]);
    }

    v7 += 5;
  }

  while (v7 != 20);
  return result;
}

void *RenderEncoderEndEncoding(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = a2;
  do
  {
    v10 = *(v9 + 27);
    if (v10 == 4)
    {
      v10 = *(*a3 + v8);
    }

    RenderEncoderStoreAttachment(a1, v9, v10, a4);
    v8 += 8;
    v9 += 64;
  }

  while (v8 != 64);
  v11 = *(a2 + 699);
  if (v11 == 4)
  {
    v11 = *(a3 + 8);
  }

  RenderEncoderStoreAttachment(a1, (a2 + 672), v11, a4);
  v12 = *(a2 + 747);
  if (v12 == 4)
  {
    v12 = *(a3 + 9);
  }

  return RenderEncoderStoreAttachment(a1, (a2 + 720), v12, a4);
}

uint64_t *RenderEncoderLoadAttachment(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  v7 = *(a2 + 25);
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  if (v7 != 1)
  {
    if (*(a2 + 25))
    {
      return result;
    }

LABEL_5:

    return GTResourceTrackerResourceRead(result, 80, v4, 0x7FFFFFFFFFFFFFFFLL);
  }

  GTResourceTrackerResourceRead(result, 80, v4, a3);
  v8 = *v6;
  v9 = *(a2 + 8);
  result = find_entry(v8, &v9, 8uLL, 0);
  if (*(*(*(*result + 32) + 32) + 72) == -16294)
  {
    result = tracker_resource_get(v6, 80, *(a2 + 8), a3);
    *(result + 48) = 1;
  }

  return result;
}

void *RenderEncoderStoreAttachment(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  if (v5)
  {
    v7 = result;
    if (a3 <= 1)
    {
      if (a3 >= 2)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 5)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = tracker_resource_get(result, 80, v5, a4);
      if (v9)
      {
        v9[4] = a4;
      }
    }

    v5 = *a2;
LABEL_12:
    result = tracker_resource_get(v7, 80, v5, a4);
    if (result)
    {
      result[4] = a4;
    }
  }

  return result;
}

void *ResourceTracker_processCommandEncoder(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  result = GTFenum_isDrawCall(a2);
  if (result)
  {
    if (*a3 != 70)
    {
      return result;
    }

    v9 = *a1;
    v24.i64[0] = *(a3 + 8600);
    v10 = *find_entry(v9, &v24, 8uLL, 0);
    if (v10)
    {
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    GTMTLSMRenderPipelineState_resourceAccess(&v24, v11, a1[1]);
    v24 = vandq_s8(v24, vdupq_n_s64(~*(a3 + 64)));
    BufferAccess(a1, a3 + 80, &v24, a4);
    TextureAccess(a1, a3 + 824, &v25, a4);
    *(v27 + 8) = vandq_s8(*(v27 + 8), vdupq_n_s64(~*(a3 + 1976)));
    BufferAccess(a1, a3 + 1984, &v27[0].i64[1], a4);
    TextureAccess(a1, a3 + 2480, &v27[1].i64[1], a4);
    v30 = vandq_s8(v30, vdupq_n_s64(~*(a3 + 3632)));
    BufferAccess(a1, a3 + 3640, &v30, a4);
    TextureAccess(a1, a3 + 4136, &v31, a4);
    *(v33 + 8) = vandq_s8(*(v33 + 8), vdupq_n_s64(~*(a3 + 5288)));
    BufferAccess(a1, a3 + 5296, v33 + 1, a4);
    v16 = a3 + 5792;
    v17 = (&v33[1] + 8);
    return TextureAccess(a1, v16, v17, a4);
  }

  if (a2 <= -15298)
  {
    if (a2 != -16137)
    {
      v12 = -15486;
      goto LABEL_10;
    }

LABEL_11:
    v13 = *a1;
    v24.i64[0] = *(a3 + 8600);
    v14 = *find_entry(v13, &v24, 8uLL, 0);
    if (v14)
    {
      v15 = *(v14 + 32);
    }

    else
    {
      v15 = 0;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    GTMTLSMRenderPipelineState_resourceAccess(&v24, v15, a1[1]);
    v36 = vandq_s8(v36, vdupq_n_s64(~*(a3 + 6944)));
    BufferAccess(a1, a3 + 6952, &v36, a4);
    v16 = a3 + 7448;
    v17 = &v37;
    return TextureAccess(a1, v16, v17, a4);
  }

  if (a2 == -15059)
  {
    goto LABEL_11;
  }

  v12 = -15297;
LABEL_10:
  if (a2 == v12)
  {
    goto LABEL_11;
  }

  result = GTFenum_isComputeCall(a2);
  if (!result)
  {
    return result;
  }

  v18 = *a1;
  v24.i64[0] = *(a3 + 64);
  v19 = *find_entry(v18, &v24, 8uLL, 0);
  if (v19)
  {
    v19 = *(v19 + 32);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v20 = a1[1];
  v24 = 0u;
  *&v25 = 0;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30.i64[0] = 0;
  v28 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24.i32[0] = 29;
  *(&v25 + 1) = -1;
  v30.i64[1] = -1;
  if (v19 && (v21 = *(v19 + 32)) != 0 && (*(v21 + 79) & 8) != 0)
  {
    v22 = (v21 + 64);
  }

  else
  {
    v22 = 0;
  }

  GTMTLSMComputePipelineState_processTraceFuncWithMap(v24.i8, v20, v22);
  v40 = v32;
  v41 = v33[0];
  v23 = vandq_s8(v32, vdupq_n_s64(~*(a3 + 72)));
  v43 = v34;
  v42 = v33[1];
  v40 = v23;
  BufferAccess(a1, a3 + 88, &v40, a4);
  v16 = a3 + 832;
  v17 = &v41;
  return TextureAccess(a1, v16, v17, a4);
}

void *BufferAccess(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = result;
  v8 = 0;
  do
  {
    v9 = *a3 >> v8;
    if (!v9)
    {
      break;
    }

    v10 = v8 + __clz(__rbit64(v9));
    result = GTResourceTrackerResourceRead(v7, 22, *(a2 + 8 * v10), a4);
    v8 = v10 + 1;
  }

  while (v10 < 63);
  v11 = 0;
  do
  {
    v12 = a3[1] >> v11;
    if (!v12)
    {
      break;
    }

    v13 = v11 + __clz(__rbit64(v12));
    result = tracker_resource_get(v7, 22, *(a2 + 8 * v13), a4);
    if (result)
    {
      result[4] = a4;
    }

    v11 = v13 + 1;
  }

  while (v13 < 63);
  return result;
}

void *TextureAccess(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = 0;
    v11 = v9;
    v12 = (a3 + 16 * v8);
    v13 = a2 + (v8 << 9);
    do
    {
      v14 = *v12 >> v10;
      if (!v14)
      {
        break;
      }

      v15 = v10 + __clz(__rbit64(v14));
      result = GTResourceTrackerResourceRead(v7, 80, *(v13 + 8 * v15), a4);
      v10 = v15 + 1;
    }

    while (v15 < 63);
    v16 = 0;
    do
    {
      v17 = v12[1] >> v16;
      if (!v17)
      {
        break;
      }

      v18 = v16 + __clz(__rbit64(v17));
      result = tracker_resource_get(v7, 80, *(v13 + 8 * v18), a4);
      if (result)
      {
        result[4] = a4;
      }

      v16 = v18 + 1;
    }

    while (v18 < 63);
    v9 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  return result;
}

void GTResourceTrackerProcessCommandBuffer(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v11 = a2;
  v3 = *(*(*find_entry(v2, &v11, 8uLL, 0) + 32) + 32);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = atomic_load((v3 + 4));
      v6 = v4 + (v5 >> 6) - 1;
      if (v6 > 0)
      {
        break;
      }

      v3 = *(v3 + 40);
      v4 = v6;
      if (!v3)
      {
        v4 = v6;
        goto LABEL_8;
      }
    }

    v6 = 0;
LABEL_8:
    v7 = v4 | (v6 << 32);
  }

  else
  {
    v7 = 0;
  }

  while (v3 && (*(v3 + 64 + ((HIDWORD(v7) - v7) << 6) + 15) & 8) != 0)
  {
    GTResourceTrackerProcessFunction();
    v8 = atomic_load((v3 + 4));
    v9 = v7 + (v8 >> 6);
    v10 = (HIDWORD(v7) + 1);
    v7 = (v10 << 32) | v7;
    if (v10 == v9 - 1)
    {
      v7 = (v10 << 32) | v10;
      v3 = *(v3 + 40);
    }
  }
}

void GTResourceTrackerUsingResidencySet(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  GTResourceTrackerUsingResource(a1[3], 72, a2, *a1, a1[1]);
  entry = find_entry(a1[6], &v5, 8uLL, 0);
  if (!*entry || !*(*entry + 32))
  {
    v4 = apr_palloc(*a1[6], 8uLL);
    *v4 = v5;
    apr_hash_set(a1[6], v4, 8, v4);
  }
}

uint64_t *GTResourceTrackerUsingAccelerationStructureDescriptor(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 96);
  if (v8 == 3)
  {
    if (a3)
    {
      v42 = *result;
      v52 = *(a2 + 16);
      entry = find_entry(v42, &v52, 8uLL, 0);
      if (*entry && *(*entry + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 16), a4);
      }

      v44 = *v7;
      v52 = *a2;
      v45 = find_entry(v44, &v52, 8uLL, 0);
      if (*v45 && *(*v45 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *a2, a4);
      }

      v46 = *v7;
      v52 = *(a2 + 32);
      v47 = find_entry(v46, &v52, 8uLL, 0);
      if (*v47 && *(*v47 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 32), a4);
      }

      v48 = *v7;
      v52 = *(a2 + 48);
      result = find_entry(v48, &v52, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        return result;
      }
    }

    else
    {
      GTResourceTrackerResourceRead(result, 22, *(a2 + 16), a4);
      GTResourceTrackerResourceRead(v7, 22, *a2, a4);
      GTResourceTrackerResourceRead(v7, 22, *(a2 + 32), a4);
    }

    v51 = *(a2 + 48);

    return GTResourceTrackerResourceRead(v7, 22, v51, a4);
  }

  if (v8 == 2)
  {
    if (a3)
    {
      v39 = *result;
      v52 = *(a2 + 8);
      v40 = find_entry(v39, &v52, 8uLL, 0);
      if (*v40 && *(*v40 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 8), a4);
      }

      v41 = *v7;
      v52 = *(a2 + 48);
      result = find_entry(v41, &v52, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        goto LABEL_104;
      }
    }

    else
    {
      GTResourceTrackerResourceRead(result, 22, *(a2 + 8), a4);
    }

    result = GTResourceTrackerResourceRead(v7, 22, *(a2 + 48), a4);
LABEL_104:
    if (*(a2 + 40))
    {
      v49 = 0;
      do
      {
        if (!a3 || (v50 = *v7, v52 = *(*(a2 + 32) + 8 * v49), result = find_entry(v50, &v52, 8uLL, 0), *result) && *(*result + 32))
        {
          result = GTResourceTrackerResourceRead(v7, 16, *(*(a2 + 32) + 8 * v49), a4);
        }

        ++v49;
      }

      while (*(a2 + 40) > v49);
    }

    return result;
  }

  if (v8 == 1 && *(a2 + 8))
  {
    for (i = 0; *(a2 + 8) > i; ++i)
    {
      v10 = *a2 + 152 * i;
      if (!a3 || (v11 = *v7, v52 = *(v10 + 112), result = find_entry(v11, &v52, 8uLL, 0), *result) && *(*result + 32))
      {
        result = GTResourceTrackerResourceRead(v7, 22, *(v10 + 112), a4);
      }

      v12 = *(v10 + 146);
      if (v12 > 3)
      {
        switch(v12)
        {
          case 4u:
            if (*(v10 + 8))
            {
              v30 = 0;
              v31 = 0;
              do
              {
                if (!a3 || (v32 = *v7, v52 = *(*v10 + v30), result = find_entry(v32, &v52, 8uLL, 0), *result) && *(*result + 32))
                {
                  result = GTResourceTrackerResourceRead(v7, 22, *(*v10 + v30), a4);
                }

                ++v31;
                v30 += 16;
              }

              while (*(v10 + 8) > v31);
            }

            break;
          case 5u:
            if (a3)
            {
              v34 = *v7;
              v52 = *v10;
              v35 = find_entry(v34, &v52, 8uLL, 0);
              if (*v35 && *(*v35 + 32))
              {
                GTResourceTrackerResourceRead(v7, 22, *v10, a4);
              }

              v36 = *v7;
              v52 = *(v10 + 48);
              v37 = find_entry(v36, &v52, 8uLL, 0);
              if (*v37 && *(*v37 + 32))
              {
                GTResourceTrackerResourceRead(v7, 22, *(v10 + 48), a4);
              }

              goto LABEL_71;
            }

            GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            GTResourceTrackerResourceRead(v7, 22, *(v10 + 48), a4);
LABEL_78:
            v10 += 32;
            goto LABEL_79;
          case 6u:
            if (*(v10 + 8))
            {
              v17 = 0;
              v18 = 0;
              do
              {
                if (!a3 || (v19 = *v7, v52 = *(*v10 + v17), v20 = find_entry(v19, &v52, 8uLL, 0), *v20) && *(*v20 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*v10 + v17), a4);
                }

                ++v18;
                v17 += 16;
              }

              while (*(v10 + 8) > v18);
            }

            if (*(v10 + 56))
            {
              v21 = 0;
              v22 = 0;
              do
              {
                if (!a3 || (v23 = *v7, v52 = *(*(v10 + 48) + v21), v24 = find_entry(v23, &v52, 8uLL, 0), *v24) && *(*v24 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*(v10 + 48) + v21), a4);
                }

                ++v22;
                v21 += 16;
              }

              while (*(v10 + 56) > v22);
            }

            if (a3)
            {
LABEL_71:
              v38 = *v7;
              v52 = *(v10 + 32);
              result = find_entry(v38, &v52, 8uLL, 0);
              if (!*result || !*(*result + 32))
              {
                break;
              }
            }

            goto LABEL_78;
        }
      }

      else
      {
        switch(v12)
        {
          case 1u:
            if (!a3)
            {
              GTResourceTrackerResourceRead(v7, 22, *(v10 + 40), a4);
              goto LABEL_75;
            }

            v25 = *v7;
            v52 = *(v10 + 40);
            v26 = find_entry(v25, &v52, 8uLL, 0);
            if (*v26 && *(*v26 + 32))
            {
              GTResourceTrackerResourceRead(v7, 22, *(v10 + 40), a4);
            }

            goto LABEL_46;
          case 2u:
            if (a3)
            {
              v33 = *v7;
              v52 = *v10;
              result = find_entry(v33, &v52, 8uLL, 0);
              if (!*result || !*(*result + 32))
              {
                break;
              }
            }

            goto LABEL_79;
          case 3u:
            if (*(v10 + 48))
            {
              v13 = 0;
              v14 = 0;
              do
              {
                if (!a3 || (v15 = *v7, v52 = *(*(v10 + 40) + v13), v16 = find_entry(v15, &v52, 8uLL, 0), *v16) && *(*v16 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*(v10 + 40) + v13), a4);
                }

                ++v14;
                v13 += 16;
              }

              while (*(v10 + 48) > v14);
            }

            if ((a3 & 1) == 0)
            {
LABEL_75:
              GTResourceTrackerResourceRead(v7, 22, *v10, a4);
              goto LABEL_76;
            }

LABEL_46:
            v27 = *v7;
            v52 = *v10;
            v28 = find_entry(v27, &v52, 8uLL, 0);
            if (*v28 && *(*v28 + 32))
            {
              GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            }

            v29 = *v7;
            v52 = *(v10 + 16);
            result = find_entry(v29, &v52, 8uLL, 0);
            if (!*result || !*(*result + 32))
            {
              break;
            }

LABEL_76:
            v10 += 16;
LABEL_79:
            result = GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            break;
        }
      }
    }
  }

  return result;
}

uint64_t GTResourceTrackerUsingFrameInterpolator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *&v11 = a2;
  entry = find_entry(v3, &v11, 8uLL, 0);
  if (*entry)
  {
    v5 = *(*entry + 32);
    v11 = 0u;
    v12 = 0;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 103;
    v13 = -1;
    v6 = a1[1];
    if (v5 && (v7 = *(v5 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0u;
    v12 = 0;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 103;
    v13 = -1;
    v6 = a1[1];
  }

  GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(&v11, v6, v8);
  v9 = v15;
  result = GTResourceTrackerGetResourceType(*(v15 + 32), *a1);
  if ((result | 0x40) == 0x68)
  {
    return GTResourceTrackerUsingResource(a1[3], result, *(v9 + 32), *a1, a1[1]);
  }

  return result;
}

uint64_t GTResourceTrackerUsingMTL4FrameInterpolator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *&v11 = a2;
  entry = find_entry(v3, &v11, 8uLL, 0);
  if (*entry)
  {
    v5 = *(*entry + 32);
    v11 = 0u;
    v12 = 0;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    LODWORD(v11) = 107;
    v13 = -1;
    v6 = a1[1];
    if (v5 && (v7 = *(v5 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0u;
    v12 = 0;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    LODWORD(v11) = 107;
    v13 = -1;
    v6 = a1[1];
  }

  GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(&v11, v6, v8);
  v9 = *(&v15 + 1);
  result = GTResourceTrackerGetResourceType(*(*(&v15 + 1) + 32), *a1);
  if ((result - 109) <= 1)
  {
    return GTResourceTrackerUsingResource(a1[3], result, *(v9 + 32), *a1, a1[1]);
  }

  return result;
}

void GTResourceTrackerProcessResourceUse(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (v6 <= -15820)
  {
    if (v6 <= -16280)
    {
      if (v6 <= -16383)
      {
        switch(v6)
        {
          case -20480:
          case -20473:
          case -20471:
          case -20470:
          case -20464:
          case -20456:
          case -20455:
          case -20454:
          case -20452:
          case -20448:
          case -20444:
          case -20442:
          case -20441:
          case -20440:
          case -20434:
          case -20431:
          case -20428:
          case -20426:
          case -20425:
          case -20424:
          case -20419:
          case -20417:
          case -20414:
          case -20409:
          case -20405:
          case -20397:
          case -20396:
          case -20394:
          case -20393:
          case -20392:
          case -20386:
          case -20383:
          case -20378:
          case -20376:
          case -20375:
          case -20374:
          case -20369:
          case -20367:
          case -20366:
          case -20360:
          case -20354:
          case -20348:
          case -20317:
          case -20314:
            goto LABEL_25;
          case -20479:
          case -20469:
          case -20439:
          case -20404:
          case -20391:
          case -20365:
            goto LABEL_252;
          case -20476:
          case -20461:
          case -20449:
          case -20430:
          case -20411:
          case -20401:
          case -20382:
          case -20357:
          case -20337:
          case -20328:
            goto LABEL_234;
          case -20474:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 39;
            goto LABEL_554;
          case -20457:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 40;
            goto LABEL_554;
          case -20445:
            v218 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerUsingResource(a1[3], 103, *v218, *a1, a1[1]);
            v219 = *v218;

            GTResourceTrackerUsingFrameInterpolator(a1, v219);
            break;
          case -20420:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 104;
            goto LABEL_554;
          case -20406:
            v216 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerUsingResource(a1[3], 107, *v216, *a1, a1[1]);
            v217 = *v216;

            GTResourceTrackerUsingMTL4FrameInterpolator(a1, v217);
            break;
          case -20398:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 108;
            goto LABEL_554;
          case -20370:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 110;
            goto LABEL_554;
          case -20351:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 109;
            goto LABEL_554;
          default:
            return;
        }

        return;
      }

      if (v6 > -16338)
      {
        if (v6 > -16334)
        {
          if (v6 <= -16332)
          {
            if (v6 == -16333)
            {
              v364 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v365 = a1[3];
              v366 = GTTraceFunc_argumentBytesWithMap(a2, v364[24], a1[1]);
              v367 = *(v364 + 2);
              if (v367)
              {
                v368 = v366;
                v370 = *a1;
                v369 = a1[1];
                do
                {
                  v372 = *v368++;
                  v371 = v372;
                  if (v372)
                  {
                    GTResourceTrackerUsingResource(v365, 80, v371, v370, v369);
                  }

                  --v367;
                }

                while (v367);
              }

              return;
            }
          }

          else
          {
            if (v6 == -16331)
            {
              v373 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v374 = a1[3];
              v375 = GTTraceFunc_argumentBytesWithMap(a2, v373[24], a1[1]);
              v376 = *(v373 + 2);
              if (v376)
              {
                v377 = v375;
                v379 = *a1;
                v378 = a1[1];
                do
                {
                  v381 = *v377++;
                  v380 = v381;
                  if (v381)
                  {
                    GTResourceTrackerUsingResource(v374, 75, v380, v379, v378);
                  }

                  --v376;
                }

                while (v376);
              }

              return;
            }

            if (v6 != -16330)
            {
              if (v6 == -16329)
              {
                v31 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v32 = a1[3];
                v33 = GTTraceFunc_argumentBytesWithMap(a2, v31[24], a1[1]);
                v34 = *(v31 + 2);
                if (v34)
                {
                  v35 = v33;
                  v37 = *a1;
                  v36 = a1[1];
                  do
                  {
                    v39 = *v35++;
                    v38 = v39;
                    if (v39)
                    {
                      GTResourceTrackerUsingResource(v32, 75, v38, v37, v36);
                    }

                    --v34;
                  }

                  while (v34);
                }
              }

              return;
            }
          }

LABEL_242:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
LABEL_243:
          ResourceType = 75;
          goto LABEL_554;
        }

        if (v6 > -16336)
        {
          if (v6 == -16335)
          {
            v355 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v356 = a1[3];
            v357 = GTTraceFunc_argumentBytesWithMap(a2, v355[24], a1[1]);
            v358 = *(v355 + 2);
            if (v358)
            {
              v359 = v357;
              v361 = *a1;
              v360 = a1[1];
              do
              {
                v363 = *v359++;
                v362 = v363;
                if (v363)
                {
                  GTResourceTrackerUsingResource(v356, 22, v362, v361, v360);
                }

                --v358;
              }

              while (v358);
            }

            return;
          }

LABEL_230:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 80;
LABEL_554:

          GTResourceTrackerUsingResource(v45, ResourceType, v42, v43, v44);
          return;
        }

        if (v6 == -16337)
        {
LABEL_316:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 29;
          goto LABEL_554;
        }

        v49 = -16336;
        goto LABEL_281;
      }

      if (v6 > -16379)
      {
        if (v6 <= -16360)
        {
          if (v6 == -16378)
          {
LABEL_219:
            v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            goto LABEL_638;
          }

          v77 = -16377;
          goto LABEL_209;
        }

        if (v6 != -16359 && v6 != -16358)
        {
          return;
        }

LABEL_240:
        v97 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v98 = a1[3];
        v42 = *(v97 + 1);
        goto LABEL_331;
      }

      if (v6 <= -16381)
      {
        if (v6 == -16382)
        {
LABEL_218:
          v92 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v93 = v92[1];
LABEL_609:
          GTResourceTrackerResourceRead(a1, 80, v93, a3);
          v48 = v92[10];
        }

        else
        {
LABEL_110:
          v50 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v51 = v50[1];
          v52 = a1;
          v53 = 22;
LABEL_111:
          GTResourceTrackerResourceRead(v52, v53, v51, a3);
          v48 = v50[8];
        }

        goto LABEL_235;
      }

      if (v6 == -16380)
      {
LABEL_236:
        v96 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 80, *(v96 + 1), a3);
        goto LABEL_237;
      }

      v24 = -16379;
      goto LABEL_233;
    }

    if (v6 <= -16088)
    {
      switch(v6)
      {
        case -16279:
          goto LABEL_192;
        case -16278:
        case -16263:
          goto LABEL_282;
        case -16277:
          v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v11 = a1[3];
          v12 = GTTraceFunc_argumentBytesWithMap(a2, v10[24], a1[1]);
          v13 = *(v10 + 2);
          if (v13)
          {
            v14 = v12;
            v16 = *a1;
            v15 = a1[1];
            do
            {
              v18 = *v14++;
              v17 = v18;
              if (v18)
              {
                GTResourceTrackerUsingResource(v11, 22, v17, v16, v15);
              }

              --v13;
            }

            while (v13);
          }

          return;
        case -16276:
        case -16261:
          goto LABEL_230;
        case -16275:
          v154 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v155 = a1[3];
          v156 = GTTraceFunc_argumentBytesWithMap(a2, v154[24], a1[1]);
          v157 = *(v154 + 2);
          if (v157)
          {
            v158 = v156;
            v160 = *a1;
            v159 = a1[1];
            do
            {
              v162 = *v158++;
              v161 = v162;
              if (v162)
              {
                GTResourceTrackerUsingResource(v155, 80, v161, v160, v159);
              }

              --v157;
            }

            while (v157);
          }

          return;
        case -16274:
        case -16272:
        case -16259:
        case -16257:
          goto LABEL_242;
        case -16273:
          v199 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v200 = a1[3];
          v201 = GTTraceFunc_argumentBytesWithMap(a2, v199[24], a1[1]);
          v202 = *(v199 + 2);
          if (v202)
          {
            v203 = v201;
            v205 = *a1;
            v204 = a1[1];
            do
            {
              v207 = *v203++;
              v206 = v207;
              if (v207)
              {
                GTResourceTrackerUsingResource(v200, 75, v206, v205, v204);
              }

              --v202;
            }

            while (v202);
          }

          return;
        case -16271:
          v172 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v173 = a1[3];
          v174 = GTTraceFunc_argumentBytesWithMap(a2, v172[24], a1[1]);
          v175 = *(v172 + 2);
          if (v175)
          {
            v176 = v174;
            v178 = *a1;
            v177 = a1[1];
            do
            {
              v180 = *v176++;
              v179 = v180;
              if (v180)
              {
                GTResourceTrackerUsingResource(v173, 75, v179, v178, v177);
              }

              --v175;
            }

            while (v175);
          }

          return;
        case -16270:
        case -16269:
        case -16268:
        case -16267:
        case -16266:
        case -16265:
        case -16264:
        case -16255:
        case -16253:
        case -16252:
        case -16251:
        case -16250:
        case -16247:
        case -16246:
        case -16245:
        case -16244:
        case -16243:
        case -16242:
        case -16241:
        case -16240:
        case -16239:
        case -16238:
        case -16237:
        case -16236:
        case -16235:
        case -16234:
        case -16233:
        case -16232:
        case -16231:
        case -16230:
        case -16229:
        case -16228:
        case -16227:
        case -16226:
        case -16225:
        case -16224:
        case -16223:
        case -16222:
        case -16221:
        case -16219:
        case -16218:
          return;
        case -16262:
          v163 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v164 = a1[3];
          v165 = GTTraceFunc_argumentBytesWithMap(a2, v163[24], a1[1]);
          v166 = *(v163 + 2);
          if (v166)
          {
            v167 = v165;
            v169 = *a1;
            v168 = a1[1];
            do
            {
              v171 = *v167++;
              v170 = v171;
              if (v171)
              {
                GTResourceTrackerUsingResource(v164, 22, v170, v169, v168);
              }

              --v166;
            }

            while (v166);
          }

          return;
        case -16260:
          v190 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v191 = a1[3];
          v192 = GTTraceFunc_argumentBytesWithMap(a2, v190[24], a1[1]);
          v193 = *(v190 + 2);
          if (v193)
          {
            v194 = v192;
            v196 = *a1;
            v195 = a1[1];
            do
            {
              v198 = *v194++;
              v197 = v198;
              if (v198)
              {
                GTResourceTrackerUsingResource(v191, 80, v197, v196, v195);
              }

              --v193;
            }

            while (v193);
          }

          return;
        case -16258:
          v145 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v146 = a1[3];
          v147 = GTTraceFunc_argumentBytesWithMap(a2, v145[24], a1[1]);
          v148 = *(v145 + 2);
          if (v148)
          {
            v149 = v147;
            v151 = *a1;
            v150 = a1[1];
            do
            {
              v153 = *v149++;
              v152 = v153;
              if (v153)
              {
                GTResourceTrackerUsingResource(v146, 75, v152, v151, v150);
              }

              --v148;
            }

            while (v148);
          }

          return;
        case -16256:
          v181 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v182 = a1[3];
          v183 = GTTraceFunc_argumentBytesWithMap(a2, v181[24], a1[1]);
          v184 = *(v181 + 2);
          if (v184)
          {
            v185 = v183;
            v187 = *a1;
            v186 = a1[1];
            do
            {
              v189 = *v185++;
              v188 = v189;
              if (v189)
              {
                GTResourceTrackerUsingResource(v182, 75, v188, v187, v186);
              }

              --v184;
            }

            while (v184);
          }

          return;
        case -16254:
          goto LABEL_315;
        case -16249:
        case -16248:
        case -16217:
LABEL_60:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 4);
          goto LABEL_682;
        case -16220:
          goto LABEL_158;
        case -16216:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
          goto LABEL_682;
        case -16215:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v144 = v143[3];
LABEL_643:
          GTResourceTrackerResourceRead(a1, 22, v144, a3);
LABEL_644:
          v19 = v143[5];
          goto LABEL_682;
        case -16214:
          v208 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 80, *(v208 + 1), *a1, a1[1]);
          v45 = a1[3];
          v42 = *(v208 + 3);
          v43 = *a1;
          v44 = a1[1];
          goto LABEL_243;
        case -16213:
          goto LABEL_290;
        case -16212:
          goto LABEL_234;
        case -16211:
          goto LABEL_218;
        case -16210:
          goto LABEL_110;
        case -16209:
          goto LABEL_236;
        default:
          switch(v6)
          {
            case -16156:
            case -16155:
              goto LABEL_25;
            case -16148:
              goto LABEL_158;
            case -16147:
              goto LABEL_60;
            case -16146:
              v480 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v481 = v480[2];
LABEL_607:
              GTResourceTrackerResourceRead(a1, 22, v481, a3);
              v19 = v480[4];
              goto LABEL_682;
            case -16145:
              v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v479 = v478[4];
              goto LABEL_680;
            case -16144:
              v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              GTResourceTrackerResourceRead(a1, 22, v478[2], a3);
              v479 = v478[4];
LABEL_680:
              GTResourceTrackerResourceRead(a1, 22, v479, a3);
LABEL_681:
              v19 = v478[6];
              goto LABEL_682;
            case -16142:
              goto LABEL_282;
            case -16140:
              goto LABEL_230;
            case -16139:
            case -16138:
              goto LABEL_242;
            case -16133:
              goto LABEL_240;
            case -16131:
            case -16130:
            case -16129:
            case -16126:
            case -16125:
            case -16124:
              goto LABEL_252;
            default:
              return;
          }
      }
    }

    if (v6 > -15991)
    {
      if (v6 > -15959)
      {
        if (v6 <= -15887)
        {
          if (v6 > -15898)
          {
            if (v6 == -15897)
            {
              v428 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v429 = a1[3];
              v430 = GTTraceFunc_argumentBytesWithMap(a2, v428[16], a1[1]);
              v431 = *(v428 + 1);
              if (v431)
              {
                v432 = v430;
                v434 = *a1;
                v433 = a1[1];
                do
                {
                  v436 = *v432++;
                  v435 = v436;
                  if (v436)
                  {
                    GTResourceTrackerUsingResource(v429, 73, v435, v434, v433);
                  }

                  --v431;
                }

                while (v431);
              }

              return;
            }

            if (v6 == -15888)
            {
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 64;
              goto LABEL_554;
            }

            if (v6 != -15887)
            {
              return;
            }

            v69 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerResourceRead(a1, 80, v69[1], a3);
            v70 = v69[2];
            v71 = a1;
            v72 = 80;
            goto LABEL_211;
          }

          if (v6 != -15958)
          {
            if (v6 == -15898)
            {
              v115 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v116 = a1[3];
              v117 = GTTraceFunc_argumentBytesWithMap(a2, v115[16], a1[1]);
              v118 = *(v115 + 1);
              if (v118)
              {
                v119 = v117;
                v121 = *a1;
                v120 = a1[1];
                do
                {
                  v123 = *v119++;
                  v122 = v123;
                  if (v123)
                  {
                    GTResourceTrackerUsingResource(v116, 73, v122, v121, v120);
                  }

                  --v118;
                }

                while (v118);
              }
            }

            return;
          }

          goto LABEL_325;
        }

        if (v6 > -15878)
        {
          if (v6 != -15877)
          {
            if (v6 != -15821)
            {
              if (v6 == -15820)
              {
                v83 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v84 = GTTraceFunc_argumentBytesWithMap(a2, v83[24], a1[1]);
                v85 = *(v83 + 1);
                if (v85)
                {
                  v86 = v84;
                  do
                  {
                    v87 = *v86++;
                    GTResourceTrackerUsingResourceHeap(a1, v87, a3);
                    --v85;
                  }

                  while (v85);
                }
              }

              return;
            }

            goto LABEL_302;
          }

LABEL_317:
          v129 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v129 + 1), a3);
          v48 = *(v129 + 2);
        }

        else
        {
          if (v6 == -15886 || v6 == -15885)
          {
            goto LABEL_252;
          }

          if (v6 != -15878)
          {
            return;
          }

LABEL_95:
          v47 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v47 + 1), a3);
          v48 = *(v47 + 4);
        }

LABEL_235:
        v55 = a1;
        v56 = 80;
        goto LABEL_639;
      }

      if (v6 > -15965)
      {
        if (v6 <= -15962)
        {
          if (v6 != -15963)
          {
            v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            v20 = a1;
            v21 = 57;
LABEL_683:

            GTResourceTrackerResourceRead(v20, v21, v19, a3);
            return;
          }

          goto LABEL_323;
        }

        if (v6 == -15961)
        {
LABEL_323:
          v130 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 57, *(v130 + 1), a3);
LABEL_324:
          v19 = *(v130 + 2);
          goto LABEL_682;
        }

        if (v6 != -15960)
        {
          v82 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 57, *(v82 + 1), a3);
          v48 = *(v82 + 4);
LABEL_326:
          v55 = a1;
          v56 = 57;
          goto LABEL_639;
        }

LABEL_325:
        v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
        goto LABEL_326;
      }

      if (v6 > -15977)
      {
        if (v6 != -15976)
        {
          if (v6 == -15967)
          {
            goto LABEL_290;
          }

          v68 = -15966;
LABEL_301:
          if (v6 != v68)
          {
            return;
          }

          goto LABEL_302;
        }

        goto LABEL_234;
      }

      if (v6 == -15990)
      {
        goto LABEL_290;
      }

      if (v6 != -15977)
      {
        return;
      }

      v96 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v112 = tracker_resource_get(a1, 80, *(v96 + 1), a3);
      if (v112)
      {
        v112[4] = a3;
      }

LABEL_237:
      v48 = *(v96 + 10);
      goto LABEL_638;
    }

    if (v6 <= -16043)
    {
      if (v6 <= -16048)
      {
        if (v6 <= -16086)
        {
          if (v6 == -16087)
          {
            v410 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v411 = a1[3];
            v412 = GTTraceFunc_argumentBytesWithMap(a2, v410[24], a1[1]);
            v413 = *(v410 + 2);
            if (v413)
            {
              v414 = v412;
              v416 = *a1;
              v415 = a1[1];
              do
              {
                v418 = *v414++;
                v417 = v418;
                if (v418)
                {
                  GTResourceTrackerUsingResource(v411, 22, v417, v416, v415);
                }

                --v413;
              }

              while (v413);
            }
          }

          else
          {
            v99 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v100 = a1[3];
            v101 = GTTraceFunc_argumentBytesWithMap(a2, v99[24], a1[1]);
            v102 = *(v99 + 2);
            if (v102)
            {
              v103 = v101;
              v105 = *a1;
              v104 = a1[1];
              do
              {
                v107 = *v103++;
                v106 = v107;
                if (v107)
                {
                  GTResourceTrackerUsingResource(v100, 80, v106, v105, v104);
                }

                --v102;
              }

              while (v102);
            }
          }

          return;
        }

        if (v6 == -16085)
        {
          v398 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v399 = a1[3];
          v400 = GTTraceFunc_argumentBytesWithMap(a2, v398[24], a1[1]);
          v401 = *(v398 + 2);
          if (v401)
          {
            v402 = v400;
            v404 = *a1;
            v403 = a1[1];
            do
            {
              v406 = *v402++;
              v405 = v406;
              if (v406)
              {
                GTResourceTrackerUsingResource(v399, 75, v405, v404, v403);
              }

              --v401;
            }

            while (v401);
          }

          return;
        }

        if (v6 == -16084)
        {
          v384 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v385 = a1[3];
          v386 = GTTraceFunc_argumentBytesWithMap(a2, v384[24], a1[1]);
          v387 = *(v384 + 2);
          if (v387)
          {
            v388 = v386;
            v390 = *a1;
            v389 = a1[1];
            do
            {
              v392 = *v388++;
              v391 = v392;
              if (v392)
              {
                GTResourceTrackerUsingResource(v385, 75, v391, v390, v389);
              }

              --v387;
            }

            while (v387);
          }

          return;
        }

        if (v6 != -16079)
        {
          return;
        }

        goto LABEL_158;
      }

      if (v6 > -16046)
      {
        if (v6 != -16045)
        {
          if (v6 == -16044)
          {
            v393 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v394 = GTTraceFunc_argumentBytesWithMap(a2, v393[16], a1[1]);
            v395 = *(v393 + 1);
            if (v395)
            {
              v396 = v394;
              do
              {
                v397 = *v396++;
                GTResourceTrackerUsingResourceHeap(a1, v397, a3);
                --v395;
              }

              while (v395);
            }

            return;
          }

          goto LABEL_276;
        }

        goto LABEL_302;
      }

      if (v6 == -16047)
      {
        goto LABEL_276;
      }
    }

    else
    {
      if (v6 > -16004)
      {
        if (v6 > -15994)
        {
          if (v6 != -15993 && v6 != -15992)
          {
            v88 = -15991;
            goto LABEL_266;
          }

          goto LABEL_234;
        }

        if (v6 != -16003)
        {
          if (v6 == -15995)
          {
LABEL_234:
            v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            goto LABEL_235;
          }

          v24 = -15994;
LABEL_233:
          if (v6 != v24)
          {
            return;
          }

          goto LABEL_234;
        }

        v73 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v74 = a1[3];
        v75 = v73[32];
LABEL_574:
        v451 = GTTraceFunc_argumentBytesWithMap(a2, v75, a1[1]);
        v452 = *(v73 + 1);
        v453 = *a1;
        v454 = a1[1];

        GTResourceTrackerUsingResourceArray(v74, 0, v451, v452, v453, v454);
        return;
      }

      if (v6 > -16041)
      {
        if (v6 == -16040)
        {
          v446 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v447 = GTTraceFunc_argumentBytesWithMap(a2, v446[16], a1[1]);
          v448 = *(v446 + 1);
          if (v448)
          {
            v449 = v447;
            do
            {
              v450 = *v449++;
              GTResourceTrackerUsingResourceHeap(a1, v450, a3);
              --v448;
            }

            while (v448);
          }

          return;
        }

        if (v6 != -16017)
        {
          if (v6 != -16008)
          {
            return;
          }

          v73 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v74 = a1[3];
          v75 = v73[16];
          goto LABEL_574;
        }

LABEL_158:
        v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_682:
        v20 = a1;
        v21 = 22;
        goto LABEL_683;
      }

      if (v6 != -16042)
      {
        v68 = -16041;
        goto LABEL_301;
      }
    }

LABEL_305:
    v57 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v58 = v57[24];
LABEL_306:
    v125 = GTTraceFunc_argumentBytesWithMap(a2, v58, a1[1]);
    v126 = *(v57 + 1);
    v127 = *(v57 + 4);

    GTResourceTrackerResourceUsageArray(a1, v125, v126, a3, v127);
    return;
  }

  if (v6 > -15340)
  {
    if (v6 <= -14888)
    {
      if (v6 > -15120)
      {
        if (v6 <= -15042)
        {
          switch(v6)
          {
            case -15119:
            case -15118:
              goto LABEL_110;
            case -15117:
              goto LABEL_210;
            case -15115:
            case -15114:
              goto LABEL_236;
            case -15113:
              goto LABEL_218;
            case -15112:
              goto LABEL_95;
            case -15111:
              goto LABEL_317;
            case -15100:
              goto LABEL_219;
            case -15096:
            case -15094:
            case -15093:
            case -15092:
            case -15091:
              goto LABEL_234;
            case -15086:
              goto LABEL_246;
            case -15085:
              goto LABEL_316;
            case -15082:
            case -15081:
              goto LABEL_252;
            default:
              return;
          }

          return;
        }

        if (v6 <= -15018)
        {
          if (v6 != -15041)
          {
            if (v6 == -15035)
            {
LABEL_315:
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 34;
            }

            else
            {
              if (v6 != -15030)
              {
                return;
              }

LABEL_192:
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 71;
            }

            goto LABEL_554;
          }

          goto LABEL_246;
        }

        if (v6 <= -14894)
        {
          if (v6 != -15017)
          {
            v59 = -15016;
LABEL_251:
            if (v6 != v59)
            {
              return;
            }
          }

LABEL_252:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 41;
          goto LABEL_554;
        }

        if (v6 != -14893)
        {
          if (v6 != -14888)
          {
            return;
          }

LABEL_246:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 88;
          goto LABEL_554;
        }

LABEL_302:
        v124 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);

        GTResourceTrackerUsingResourceHeap(a1, v124, a3);
        return;
      }

      if (v6 > -15283)
      {
        if (v6 <= -15218)
        {
          if (v6 > -15274)
          {
            if (v6 == -15273)
            {
              v419 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v420 = a1[3];
              v421 = GTTraceFunc_argumentBytesWithMap(a2, v419[24], a1[1]);
              v422 = *(v419 + 2);
              if (v422)
              {
                v423 = v421;
                v425 = *a1;
                v424 = a1[1];
                do
                {
                  v427 = *v423++;
                  v426 = v427;
                  if (v427)
                  {
                    GTResourceTrackerUsingResource(v420, 22, v426, v425, v424);
                  }

                  --v422;
                }

                while (v422);
              }

              return;
            }

            if (v6 != -15254)
            {
              if (v6 == -15253)
              {
                v25 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v26 = GTTraceFunc_argumentBytesWithMap(a2, v25[16], a1[1]);
                v27 = *(v25 + 1);
                if (v27)
                {
                  v28 = v26;
                  do
                  {
                    v30 = *v28++;
                    v29 = v30;
                    if (v30)
                    {
                      GTResourceTrackerUsingResidencySet(a1, v29);
                    }

                    --v27;
                  }

                  while (v27);
                }
              }

              return;
            }

            goto LABEL_320;
          }

          if (v6 == -15282)
          {
            v437 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v438 = a1[3];
            v439 = GTTraceFunc_argumentBytesWithMap(a2, v437[24], a1[1]);
            v440 = *(v437 + 2);
            if (v440)
            {
              v441 = v439;
              v443 = *a1;
              v442 = a1[1];
              do
              {
                v445 = *v441++;
                v444 = v445;
                if (v445)
                {
                  GTResourceTrackerUsingResource(v438, 22, v444, v443, v442);
                }

                --v440;
              }

              while (v440);
            }

            return;
          }

          v49 = -15275;
LABEL_281:
          if (v6 != v49)
          {
            return;
          }

LABEL_282:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 22;
          goto LABEL_554;
        }

        if (v6 > -15173)
        {
          if (v6 != -15172)
          {
            if (v6 != -15163)
            {
              if (v6 == -15162)
              {
                v62 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v63 = GTTraceFunc_argumentBytesWithMap(a2, v62[16], a1[1]);
                v64 = *(v62 + 1);
                if (v64)
                {
                  v65 = v63;
                  do
                  {
                    v67 = *v65++;
                    v66 = v67;
                    if (v67)
                    {
                      GTResourceTrackerUsingResidencySet(a1, v66);
                    }

                    --v64;
                  }

                  while (v64);
                }
              }

              return;
            }

LABEL_320:
            v132 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);

            GTResourceTrackerUsingResidencySet(a1, v132);
            return;
          }

LABEL_285:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 90;
          goto LABEL_554;
        }

        if (v6 != -15217)
        {
          if (v6 != -15173)
          {
            return;
          }

          goto LABEL_285;
        }

LABEL_290:
        v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v114 = a1[3];
        ResourceType = GTResourceTrackerGetResourceType(*(v113 + 1), *a1);
        v42 = *(v113 + 1);
        v43 = *a1;
        v44 = a1[1];
        v45 = v114;
        goto LABEL_554;
      }

      if (v6 > -15309)
      {
        if (v6 > -15288)
        {
          if (v6 == -15287)
          {
            goto LABEL_314;
          }

          if (v6 == -15285)
          {
            goto LABEL_290;
          }

          v49 = -15284;
          goto LABEL_281;
        }

        if (v6 == -15308)
        {
          goto LABEL_290;
        }

        if (v6 != -15294)
        {
          return;
        }

        v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
        v43 = *a1;
        v44 = a1[1];
        v45 = a1[3];
LABEL_540:
        ResourceType = 53;
        goto LABEL_554;
      }

      if (v6 <= -15311)
      {
        if (v6 == -15339)
        {
          goto LABEL_290;
        }

        if (v6 != -15311)
        {
          return;
        }

        v79 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v80 = tracker_resource_get(a1, 22, *(v79 + 1), a3);
        if (v80)
        {
          *(v80 + 48) = 1;
        }

        v81 = tracker_resource_get(a1, 22, *(v79 + 1), a3);
        if (v81)
        {
          v81[4] = a3;
        }

        v45 = a1[3];
        v42 = *(v79 + 4);
        goto LABEL_539;
      }

      if (v6 == -15310)
      {
        v407 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v408 = tracker_resource_get(a1, 80, *(v407 + 1), a3);
        if (v408)
        {
          *(v408 + 48) = 1;
        }

        v409 = tracker_resource_get(a1, 80, *(v407 + 1), a3);
        if (v409)
        {
          v409[4] = a3;
        }

        v45 = a1[3];
        v42 = *(v407 + 12);
LABEL_539:
        v43 = *a1;
        v44 = a1[1];
        goto LABEL_540;
      }

      v88 = -15309;
LABEL_266:
      if (v6 != v88)
      {
        return;
      }

      goto LABEL_290;
    }

    if (v6 > -7158)
    {
      switch(v6)
      {
        case -6142:
          v529 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 7, *v529, *a1, a1[1]);
          v530 = GTTraceFunc_argumentBytesWithMap(a2, v529[40], a1[1]);
          v531 = *(v529 + 6);
          if (v531)
          {
            v532 = v530;
            do
            {
              v534 = *v532++;
              v533 = v534;
              if (v534)
              {
                GTResourceTrackerResourceRead(a1, 80, v533, a3);
              }

              --v531;
            }

            while (v531);
          }

          v535 = GTTraceFunc_argumentBytesWithMap(a2, v529[64], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, v535, *(v529 + 9), a3);
          v19 = *(v529 + 13);
          goto LABEL_682;
        case -6141:
        case -6139:
        case -6138:
        case -6134:
        case -6133:
        case -6131:
        case -6129:
        case -6128:
        case -6127:
        case -6124:
        case -6123:
        case -6122:
        case -6120:
        case -6119:
        case -6116:
        case -6111:
        case -6110:
        case -6109:
          return;
        case -6140:
          v536 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 11, *v536, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v536[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v536[11], a3);
          v537 = tracker_resource_get(a1, 22, v536[15], a3);
          if (v537)
          {
            v537[4] = a3;
          }

          v19 = v536[19];
          goto LABEL_682;
        case -6137:
          v515 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 11, *v515, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v515[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v515[11], a3);
          v48 = v515[15];
          goto LABEL_638;
        case -6136:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v143, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v143[3], a3);
          v144 = v143[4];
          goto LABEL_643;
        case -6135:
          v509 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v510 = a1[3];
          v511 = *v509;
          v512 = *a1;
          v513 = a1[1];
          v514 = 8;
          goto LABEL_646;
        case -6132:
          v507 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v507, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v507[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v507[16], a3);
          v48 = v507[21];
          goto LABEL_638;
        case -6130:
          v508 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v508, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v508[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v508[11], a3);
          v48 = v508[16];
          goto LABEL_638;
        case -6126:
          v509 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v510 = a1[3];
          v511 = *v509;
          v512 = *a1;
          v513 = a1[1];
          v514 = 7;
LABEL_646:
          GTResourceTrackerUsingResource(v510, v514, v511, v512, v513);
          GTResourceTrackerResourceRead(a1, 80, v509[5], a3);
          v48 = v509[7];
          goto LABEL_235;
        case -6125:
          v92 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 4, *v92, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 80, v92[6], a3);
          v93 = v92[8];
          goto LABEL_609;
        case -6121:
          v483 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 7, *v483, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 80, v483[5], a3);
          v19 = v483[7];
          goto LABEL_26;
        case -6118:
          v488 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 4, *v488, *a1, a1[1]);
          v489 = GTTraceFunc_argumentBytesWithMap(a2, v488[48], a1[1]);
          v490 = *(v488 + 7);
          if (v490)
          {
            v491 = v489;
            do
            {
              v493 = *v491++;
              v492 = v493;
              if (v493)
              {
                GTResourceTrackerResourceRead(a1, 80, v492, a3);
              }

              --v490;
            }

            while (v490);
          }

          v494 = GTTraceFunc_argumentBytesWithMap(a2, v488[72], a1[1]);
          v495 = *(v488 + 10);
          if (v495)
          {
            v496 = v494;
            do
            {
              v498 = *v496++;
              v497 = v498;
              if (v498)
              {
                GTResourceTrackerResourceRead(a1, 80, v497, a3);
              }

              --v495;
            }

            while (v495);
          }

          v499 = GTTraceFunc_argumentBytesWithMap(a2, v488[96], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, v499, *(v488 + 13), a3);
          goto LABEL_661;
        case -6117:
          v50 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 8, *v50, *a1, a1[1]);
          v51 = v50[6];
          v52 = a1;
          v53 = 80;
          goto LABEL_111;
        case -6115:
          v500 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 8, *v500, *a1, a1[1]);
          v501 = GTTraceFunc_argumentBytesWithMap(a2, v500[48], a1[1]);
          v502 = *(v500 + 7);
          if (v502)
          {
            v503 = v501;
            do
            {
              v505 = *v503++;
              v504 = v505;
              if (v505)
              {
                GTResourceTrackerResourceRead(a1, 80, v504, a3);
              }

              --v502;
            }

            while (v502);
          }

          v506 = GTTraceFunc_argumentBytesWithMap(a2, v500[72], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, v506, *(v500 + 10), a3);
          v19 = *(v500 + 12);
          goto LABEL_682;
        case -6114:
          v488 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v488, *a1, a1[1]);
          v517 = GTTraceFunc_argumentBytesWithMap(a2, v488[48], a1[1]);
          v518 = *(v488 + 7);
          if (v518)
          {
            v519 = v517;
            do
            {
              v521 = *v519++;
              v520 = v521;
              if (v521)
              {
                GTResourceTrackerResourceRead(a1, 80, v520, a3);
              }

              --v518;
            }

            while (v518);
          }

          v522 = GTTraceFunc_argumentBytesWithMap(a2, v488[72], a1[1]);
          v523 = *(v488 + 10);
          if (v523)
          {
            v524 = v522;
            do
            {
              v526 = *v524++;
              v525 = v526;
              if (v526)
              {
                GTResourceTrackerResourceRead(a1, 80, v525, a3);
              }

              --v523;
            }

            while (v523);
          }

          GTResourceTrackerResourceRead(a1, 22, *(v488 + 12), a3);
          v527 = tracker_resource_get(a1, 22, *(v488 + 12), a3);
          if (v527)
          {
            v527[4] = a3;
          }

          GTResourceTrackerResourceRead(a1, 22, *(v488 + 13), a3);
          v528 = tracker_resource_get(a1, 22, *(v488 + 13), a3);
          if (v528)
          {
            v528[4] = a3;
          }

LABEL_661:
          v19 = *(v488 + 15);
          goto LABEL_682;
        case -6113:
          v480 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v480, *a1, a1[1]);
          v481 = v480[3];
          goto LABEL_607;
        case -6112:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v143, *a1, a1[1]);
          v538 = tracker_resource_get(a1, 22, v143[3], a3);
          if (v538)
          {
            v538[4] = a3;
          }

          v539 = tracker_resource_get(a1, 22, v143[4], a3);
          if (v539)
          {
            v539[4] = a3;
          }

          goto LABEL_644;
        case -6108:
          v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v478, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v478[3], a3);
          v479 = v478[5];
          goto LABEL_680;
        case -6107:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v143, *a1, a1[1]);
          v144 = v143[3];
          goto LABEL_643;
        case -6106:
          v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v478, *a1, a1[1]);
          v540 = tracker_resource_get(a1, 22, v478[3], a3);
          if (v540)
          {
            v540[4] = a3;
          }

          v541 = tracker_resource_get(a1, 22, v478[5], a3);
          if (v541)
          {
            v541[4] = a3;
          }

          goto LABEL_681;
        case -6105:
        case -6101:
          v22 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v22, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v22[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v22[16], a3);
          v23 = tracker_resource_get(a1, 22, v22[21], a3);
          if (v23)
          {
            v23[4] = a3;
          }

          v19 = v22[26];
          goto LABEL_682;
        case -6104:
          v482 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 9, *v482, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v482[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v482[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v482[16], a3);
          v48 = v482[20];
          goto LABEL_638;
        case -6103:
          v486 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 9, *v486, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v486[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v486[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v486[16], a3);
          v487 = tracker_resource_get(a1, 22, v486[20], a3);
          if (v487)
          {
            v487[4] = a3;
          }

          v19 = v486[33];
          goto LABEL_682;
        case -6102:
        case -6100:
          v134 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v135 = a1[3];
          v136 = *v134;
          v137 = *a1;
          v138 = a1[1];
          v139 = 14;
          goto LABEL_334;
        case -6099:
        case -6098:
          v134 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v135 = a1[3];
          v136 = *v134;
          v137 = *a1;
          v138 = a1[1];
          v139 = 13;
LABEL_334:
          GTResourceTrackerUsingResource(v135, v139, v136, v137, v138);
          GTResourceTrackerResourceRead(a1, 22, v134[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v134[8], a3);
          GTResourceTrackerResourceRead(a1, 22, v134[10], a3);
          v140 = tracker_resource_get(a1, 22, v134[12], a3);
          if (v140)
          {
            v140[4] = a3;
          }

          v19 = v134[15];
          goto LABEL_682;
        case -6097:
          v484 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 12, *v484, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v484[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v484[8], a3);
          v485 = tracker_resource_get(a1, 22, v484[10], a3);
          if (v485)
          {
            v485[4] = a3;
          }

          v19 = v484[12];
          goto LABEL_682;
        default:
          if (v6 == -7157)
          {
            goto LABEL_330;
          }

          v95 = -7156;
          goto LABEL_329;
      }
    }

    if (v6 <= -14829)
    {
      if (v6 <= -14833)
      {
        if (v6 == -14887)
        {
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 106;
          goto LABEL_554;
        }

        if (v6 == -14886)
        {
          goto LABEL_252;
        }

        v59 = -14885;
        goto LABEL_251;
      }

      if (v6 <= -14831)
      {
        if (v6 != -14832)
        {
          v41 = -14831;
          goto LABEL_222;
        }

LABEL_188:
        v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_224:
        v55 = a1;
        v56 = 16;
        goto LABEL_639;
      }

      if (v6 != -14830)
      {
        v41 = -14829;
LABEL_222:
        if (v6 != v41)
        {
          return;
        }

        goto LABEL_223;
      }

      goto LABEL_223;
    }

    if (v6 <= -14813)
    {
      if (v6 != -14828)
      {
        if (v6 != -14827 && v6 != -14826)
        {
          return;
        }

        goto LABEL_188;
      }

LABEL_223:
      v94 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v94 + 1), a3);
      v48 = *(v94 + 2);
      goto LABEL_224;
    }

    if (v6 <= -10155)
    {
      if (v6 != -14812 && v6 != -14804)
      {
        return;
      }

      v54 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 101, *(v54 + 1), a3);
      v48 = *(v54 + 36);
      v55 = a1;
      v56 = 101;
      goto LABEL_639;
    }

    if (v6 == -10154)
    {
      v141 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v141 + 1), a3);
      v142 = GTTraceFunc_argumentBytesWithMap(a2, v141[16], a1[1]);
      if (!v142)
      {
        return;
      }

      goto LABEL_594;
    }

    v95 = -7158;
LABEL_329:
    if (v6 != v95)
    {
      return;
    }

LABEL_330:
    v133 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v98 = a1[3];
    v42 = *v133;
LABEL_331:
    v43 = *a1;
    v44 = a1[1];
    v45 = v98;
    ResourceType = 2;
    goto LABEL_554;
  }

  if (v6 > -15475)
  {
    if (v6 <= -15367)
    {
      switch(v6)
      {
        case -15474:
          goto LABEL_219;
        case -15473:
        case -15472:
        case -15471:
        case -15470:
        case -15469:
          goto LABEL_234;
        case -15466:
          goto LABEL_215;
        case -15465:
          goto LABEL_318;
        case -15459:
        case -15454:
        case -15449:
LABEL_29:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v20 = a1;
          v21 = 16;
          goto LABEL_683;
        case -15458:
        case -15453:
        case -15448:
          goto LABEL_89;
        case -15457:
          v292 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v293 = a1[3];
          v294 = GTTraceFunc_argumentBytesWithMap(a2, v292[24], a1[1]);
          v295 = *(v292 + 2);
          if (v295)
          {
            v296 = v294;
            v298 = *a1;
            v297 = a1[1];
            do
            {
              v300 = *v296++;
              v299 = v300;
              if (v300)
              {
                GTResourceTrackerUsingResource(v293, 60, v299, v298, v297);
              }

              --v295;
            }

            while (v295);
          }

          break;
        case -15456:
        case -15451:
        case -15446:
          goto LABEL_310;
        case -15455:
          v283 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v284 = a1[3];
          v285 = GTTraceFunc_argumentBytesWithMap(a2, v283[24], a1[1]);
          v286 = *(v283 + 2);
          if (v286)
          {
            v287 = v285;
            v289 = *a1;
            v288 = a1[1];
            do
            {
              v291 = *v287++;
              v290 = v291;
              if (v291)
              {
                GTResourceTrackerUsingResource(v284, 83, v290, v289, v288);
              }

              --v286;
            }

            while (v286);
          }

          break;
        case -15452:
          v319 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v320 = a1[3];
          v321 = GTTraceFunc_argumentBytesWithMap(a2, v319[24], a1[1]);
          v322 = *(v319 + 2);
          if (v322)
          {
            v323 = v321;
            v325 = *a1;
            v324 = a1[1];
            do
            {
              v327 = *v323++;
              v326 = v327;
              if (v327)
              {
                GTResourceTrackerUsingResource(v320, 60, v326, v325, v324);
              }

              --v322;
            }

            while (v322);
          }

          break;
        case -15450:
          v310 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v311 = a1[3];
          v312 = GTTraceFunc_argumentBytesWithMap(a2, v310[24], a1[1]);
          v313 = *(v310 + 2);
          if (v313)
          {
            v314 = v312;
            v316 = *a1;
            v315 = a1[1];
            do
            {
              v318 = *v314++;
              v317 = v318;
              if (v318)
              {
                GTResourceTrackerUsingResource(v311, 83, v317, v316, v315);
              }

              --v313;
            }

            while (v313);
          }

          break;
        case -15447:
          v301 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v302 = a1[3];
          v303 = GTTraceFunc_argumentBytesWithMap(a2, v301[24], a1[1]);
          v304 = *(v301 + 2);
          if (v304)
          {
            v305 = v303;
            v307 = *a1;
            v306 = a1[1];
            do
            {
              v309 = *v305++;
              v308 = v309;
              if (v309)
              {
                GTResourceTrackerUsingResource(v302, 60, v308, v307, v306);
              }

              --v304;
            }

            while (v304);
          }

          break;
        case -15445:
          v220 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v221 = a1[3];
          v222 = GTTraceFunc_argumentBytesWithMap(a2, v220[24], a1[1]);
          v223 = *(v220 + 2);
          if (v223)
          {
            v224 = v222;
            v226 = *a1;
            v225 = a1[1];
            do
            {
              v228 = *v224++;
              v227 = v228;
              if (v228)
              {
                GTResourceTrackerUsingResource(v221, 83, v227, v226, v225);
              }

              --v223;
            }

            while (v223);
          }

          break;
        case -15415:
          goto LABEL_158;
        case -15401:
        case -15391:
          goto LABEL_282;
        case -15399:
          v238 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v239 = a1[3];
          v240 = GTTraceFunc_argumentBytesWithMap(a2, v238[24], a1[1]);
          v241 = *(v238 + 2);
          if (v241)
          {
            v242 = v240;
            v244 = *a1;
            v243 = a1[1];
            do
            {
              v246 = *v242++;
              v245 = v246;
              if (v246)
              {
                GTResourceTrackerUsingResource(v239, 22, v245, v244, v243);
              }

              --v241;
            }

            while (v241);
          }

          break;
        case -15397:
        case -15396:
        case -15387:
        case -15386:
          goto LABEL_242;
        case -15395:
          v274 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v275 = a1[3];
          v276 = GTTraceFunc_argumentBytesWithMap(a2, v274[24], a1[1]);
          v277 = *(v274 + 2);
          if (v277)
          {
            v278 = v276;
            v280 = *a1;
            v279 = a1[1];
            do
            {
              v282 = *v278++;
              v281 = v282;
              if (v282)
              {
                GTResourceTrackerUsingResource(v275, 75, v281, v280, v279);
              }

              --v277;
            }

            while (v277);
          }

          break;
        case -15394:
          v328 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v329 = a1[3];
          v330 = GTTraceFunc_argumentBytesWithMap(a2, v328[24], a1[1]);
          v331 = *(v328 + 2);
          if (v331)
          {
            v332 = v330;
            v334 = *a1;
            v333 = a1[1];
            do
            {
              v336 = *v332++;
              v335 = v336;
              if (v336)
              {
                GTResourceTrackerUsingResource(v329, 75, v335, v334, v333);
              }

              --v331;
            }

            while (v331);
          }

          break;
        case -15393:
        case -15383:
          goto LABEL_230;
        case -15392:
          v265 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v266 = a1[3];
          v267 = GTTraceFunc_argumentBytesWithMap(a2, v265[24], a1[1]);
          v268 = *(v265 + 2);
          if (v268)
          {
            v269 = v267;
            v271 = *a1;
            v270 = a1[1];
            do
            {
              v273 = *v269++;
              v272 = v273;
              if (v273)
              {
                GTResourceTrackerUsingResource(v266, 80, v272, v271, v270);
              }

              --v268;
            }

            while (v268);
          }

          break;
        case -15389:
          v247 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v248 = a1[3];
          v249 = GTTraceFunc_argumentBytesWithMap(a2, v247[24], a1[1]);
          v250 = *(v247 + 2);
          if (v250)
          {
            v251 = v249;
            v253 = *a1;
            v252 = a1[1];
            do
            {
              v255 = *v251++;
              v254 = v255;
              if (v255)
              {
                GTResourceTrackerUsingResource(v248, 22, v254, v253, v252);
              }

              --v250;
            }

            while (v250);
          }

          break;
        case -15385:
          v337 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v338 = a1[3];
          v339 = GTTraceFunc_argumentBytesWithMap(a2, v337[24], a1[1]);
          v340 = *(v337 + 2);
          if (v340)
          {
            v341 = v339;
            v343 = *a1;
            v342 = a1[1];
            do
            {
              v345 = *v341++;
              v344 = v345;
              if (v345)
              {
                GTResourceTrackerUsingResource(v338, 75, v344, v343, v342);
              }

              --v340;
            }

            while (v340);
          }

          break;
        case -15384:
          v229 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v230 = a1[3];
          v231 = GTTraceFunc_argumentBytesWithMap(a2, v229[24], a1[1]);
          v232 = *(v229 + 2);
          if (v232)
          {
            v233 = v231;
            v235 = *a1;
            v234 = a1[1];
            do
            {
              v237 = *v233++;
              v236 = v237;
              if (v237)
              {
                GTResourceTrackerUsingResource(v230, 75, v236, v235, v234);
              }

              --v232;
            }

            while (v232);
          }

          break;
        case -15382:
          v256 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v257 = a1[3];
          v258 = GTTraceFunc_argumentBytesWithMap(a2, v256[24], a1[1]);
          v259 = *(v256 + 2);
          if (v259)
          {
            v260 = v258;
            v262 = *a1;
            v261 = a1[1];
            do
            {
              v264 = *v260++;
              v263 = v264;
              if (v264)
              {
                GTResourceTrackerUsingResource(v257, 80, v263, v262, v261);
              }

              --v259;
            }

            while (v259);
          }

          break;
        default:
          return;
      }

      return;
    }

    if (v6 <= -15343)
    {
      if (v6 != -15366)
      {
        v76 = -15365;
        goto LABEL_313;
      }

      v474 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v474 + 1), a3);
      v475 = tracker_resource_get(a1, 16, *(v474 + 2), a3);
      if (v475)
      {
        v475[4] = a3;
      }

      GTResourceTrackerUsingResource(a1[3], 22, *(v474 + 3), *a1, a1[1]);
      v9 = v474[48];
LABEL_593:
      v142 = GTTraceFunc_argumentBytesWithMap(a2, v9, a1[1]);
LABEL_594:

      GTResourceTrackerUsingAccelerationStructureDescriptor(a1, v142, 0, a3);
      return;
    }

    if (v6 == -15342)
    {
      v476 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v477 = tracker_resource_get(a1, 22, *(v476 + 1), a3);
      if (v477)
      {
        *(v477 + 48) = 1;
      }

      v48 = *(v476 + 1);
      goto LABEL_638;
    }

    v88 = -15340;
    goto LABEL_266;
  }

  if (v6 <= -15648)
  {
    if (v6 > -15757)
    {
      if (v6 > -15750)
      {
        if (v6 > -15727)
        {
          if (v6 != -15726 && v6 != -15723)
          {
            v40 = -15722;
            goto LABEL_255;
          }

LABEL_25:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_26:
          v20 = a1;
          v21 = 80;
          goto LABEL_683;
        }

        if (v6 != -15749)
        {
          v40 = -15728;
LABEL_255:
          if (v6 != v40)
          {
            return;
          }

          goto LABEL_25;
        }

        goto LABEL_290;
      }

      if (v6 > -15755)
      {
        if (v6 == -15754)
        {
LABEL_263:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 31;
          goto LABEL_554;
        }

        v78 = -15750;
LABEL_262:
        if (v6 != v78)
        {
          return;
        }

        goto LABEL_263;
      }

      if (v6 != -15756)
      {
        v78 = -15755;
        goto LABEL_262;
      }

      v383 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerUsingResource(a1[3], 31, *(v383 + 1), *a1, a1[1]);
LABEL_533:
      v48 = *(v383 + 4);
      goto LABEL_638;
    }

    if (v6 > -15785)
    {
      if (v6 <= -15783)
      {
        if (v6 == -15784)
        {
          v382 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v382 + 1), a3);
          v19 = *(v382 + 3);
          goto LABEL_682;
        }

        v40 = -15783;
        goto LABEL_255;
      }

      if (v6 == -15782)
      {
        goto LABEL_25;
      }

      v59 = -15781;
    }

    else
    {
      if (v6 <= -15793)
      {
        if (v6 != -15819)
        {
          if (v6 != -15818)
          {
            return;
          }

          v57 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v58 = v57[32];
          goto LABEL_306;
        }

LABEL_276:
        v108 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v109 = GTResourceTrackerGetResourceType(*(v108 + 1), *a1);
        v110 = *(v108 + 1);
        v111 = *(v108 + 4);

        GTResourceTrackerResourceUsage(a1, v109, v110, a3, v111);
        return;
      }

      if (v6 == -15792)
      {
        v383 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 80, *(v383 + 1), a3);
        goto LABEL_533;
      }

      v59 = -15785;
    }

    goto LABEL_251;
  }

  if (v6 <= -15598)
  {
    switch(v6)
    {
      case -15647:
        v7 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v8 = tracker_resource_get(a1, 16, *(v7 + 1), a3);
        if (v8)
        {
          v8[4] = a3;
        }

        GTResourceTrackerUsingResource(a1[3], 22, *(v7 + 2), *a1, a1[1]);
        v9 = v7[32];
        goto LABEL_593;
      case -15646:
      case -15645:
        goto LABEL_223;
      case -15644:
      case -15643:
      case -15642:
      case -15641:
      case -15640:
      case -15639:
      case -15636:
      case -15628:
      case -15627:
      case -15626:
      case -15625:
      case -15624:
        return;
      case -15638:
        v209 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 16, *(v209 + 1), a3);
        v210 = tracker_resource_get(a1, 16, *(v209 + 2), a3);
        if (v210)
        {
          v210[4] = a3;
        }

        GTResourceTrackerUsingResource(a1[3], 22, *(v209 + 3), *a1, a1[1]);
        v9 = v209[40];
        goto LABEL_593;
      case -15637:
        goto LABEL_263;
      case -15635:
      case -15630:
        goto LABEL_252;
      case -15634:
        goto LABEL_302;
      case -15633:
        v211 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v212 = GTTraceFunc_argumentBytesWithMap(a2, v211[16], a1[1]);
        v213 = *(v211 + 1);
        if (v213)
        {
          v214 = v212;
          do
          {
            v215 = *v214++;
            GTResourceTrackerUsingResourceHeap(a1, v215, a3);
            --v213;
          }

          while (v213);
        }

        return;
      case -15632:
        goto LABEL_276;
      case -15631:
        goto LABEL_305;
      case -15629:
        goto LABEL_314;
      case -15623:
        goto LABEL_29;
      default:
        if (v6 != -15598)
        {
          return;
        }

        v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
        v43 = *a1;
        v44 = a1[1];
        v45 = a1[3];
        ResourceType = 44;
        break;
    }

    goto LABEL_554;
  }

  if (v6 > -15581)
  {
    if (v6 > -15524)
    {
      if (v6 <= -15522)
      {
        if (v6 != -15523)
        {
          v60 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 16, *(v60 + 1), a3);
          v61 = GTTraceFunc_argumentBytesWithMap(a2, v60[32], a1[1]);
          GTResourceTrackerResourceReadMTLArray(a1, v61, a3);
          v48 = *(v60 + 2);
LABEL_638:
          v55 = a1;
          v56 = 22;
LABEL_639:
          v516 = tracker_resource_get(v55, v56, v48, a3);
          if (v516)
          {
            v516[4] = a3;
          }

          return;
        }

LABEL_318:
        v130 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v131 = tracker_resource_get(a1, 16, *(v130 + 1), a3);
        if (v131)
        {
          v131[4] = a3;
        }

        goto LABEL_324;
      }

      if (v6 != -15521)
      {
        v76 = -15502;
LABEL_313:
        if (v6 != v76)
        {
          return;
        }
      }

LABEL_314:
      v128 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v128 + 1), a3);
      v48 = *(v128 + 2);
      goto LABEL_638;
    }

    if (v6 == -15580)
    {
      v465 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v466 = a1[3];
      v467 = GTTraceFunc_argumentBytesWithMap(a2, v465[24], a1[1]);
      v468 = *(v465 + 2);
      if (v468)
      {
        v469 = v467;
        v471 = *a1;
        v470 = a1[1];
        do
        {
          v473 = *v469++;
          v472 = v473;
          if (v473)
          {
            GTResourceTrackerUsingResource(v466, 83, v472, v471, v470);
          }

          --v468;
        }

        while (v468);
      }

      return;
    }

    if (v6 != -15552)
    {
      if (v6 != -15524)
      {
        return;
      }

LABEL_215:
      v89 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v90 = tracker_resource_get(a1, 16, *(v89 + 1), a3);
      if (v90)
      {
        v90[4] = a3;
      }

      v91 = GTTraceFunc_argumentBytesWithMap(a2, v89[32], a1[1]);
      GTResourceTrackerResourceReadMTLArray(a1, v91, a3);
      v19 = *(v89 + 2);
      goto LABEL_682;
    }

    v455 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    GTResourceTrackerResourceRead(a1, 16, *v455, a3);
    v9 = v455[8];
    goto LABEL_593;
  }

  if (v6 <= -15589)
  {
    if (v6 == -15597)
    {
      v456 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v457 = a1[3];
      v458 = GTTraceFunc_argumentBytesWithMap(a2, v456[24], a1[1]);
      v459 = *(v456 + 2);
      if (v459)
      {
        v460 = v458;
        v462 = *a1;
        v461 = a1[1];
        do
        {
          v464 = *v460++;
          v463 = v464;
          if (v464)
          {
            GTResourceTrackerUsingResource(v457, 44, v463, v462, v461);
          }

          --v459;
        }

        while (v459);
      }

      return;
    }

    if (v6 == -15592)
    {
      goto LABEL_210;
    }

    v77 = -15591;
LABEL_209:
    if (v6 != v77)
    {
      return;
    }

LABEL_210:
    v69 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v70 = v69[1];
    v71 = a1;
    v72 = 22;
LABEL_211:
    GTResourceTrackerResourceRead(v71, v72, v70, a3);
    v48 = v69[3];
    goto LABEL_638;
  }

  if (v6 <= -15583)
  {
    if (v6 != -15588)
    {
      if (v6 != -15583)
      {
        return;
      }

LABEL_89:
      v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
      v43 = *a1;
      v44 = a1[1];
      v45 = a1[3];
      ResourceType = 60;
      goto LABEL_554;
    }

    goto LABEL_314;
  }

  if (v6 != -15582)
  {
LABEL_310:
    v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
    v43 = *a1;
    v44 = a1[1];
    v45 = a1[3];
    ResourceType = 83;
    goto LABEL_554;
  }

  v346 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
  v347 = a1[3];
  v348 = GTTraceFunc_argumentBytesWithMap(a2, v346[24], a1[1]);
  v349 = *(v346 + 2);
  if (v349)
  {
    v350 = v348;
    v352 = *a1;
    v351 = a1[1];
    do
    {
      v354 = *v350++;
      v353 = v354;
      if (v354)
      {
        GTResourceTrackerUsingResource(v347, 60, v353, v352, v351);
      }

      --v349;
    }

    while (v349);
  }
}

uint64_t GTTraceDump_getCommandBufferCommitIndex(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  entry = find_entry(a1, &v5, 8uLL, 0);
  if (*entry && (v3 = *(*entry + 32)) != 0)
  {
    return *v3;
  }

  else
  {
    return -1;
  }
}

void GTTraceDump_setCommandBufferInfo(apr_pool_t **a1, uint64_t a2, _OWORD *a3)
{
  v6 = *a1;
  v7 = apr_palloc(*a1, 8uLL);
  *v7 = a2;
  if (a3)
  {
    v8 = apr_palloc(v6, 0x10uLL);
    *v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  apr_hash_set(a1, v7, 8, v8);
}

void GatherCommandQueueResidencySetsUpToIndex(apr_pool_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 0)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_8:
    v10 = v7 | (v9 << 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  while (v6)
  {
    v12 = v6 + 64 + ((HIDWORD(v10) - v10) << 6);
    if ((*(v12 + 15) & 8) == 0 || *v12 >= a4)
    {
      break;
    }

    v13 = *(v12 + 8);
    v14 = v13 + 15161;
    v15 = v13 + 15252;
    v16 = v14 >= 2 && v15 > 1;
    if (!v16 && *(v12 + 15) < 0)
    {
      v11 = *v12;
    }

    v17 = atomic_load((v6 + 4));
    v18 = (HIDWORD(v10) + 1);
    v19 = v10 + (v17 >> 6) - 1;
    v10 = (v18 << 32) | v10;
    if (v18 == v19)
    {
      v10 = (v18 << 32) | v18;
      v6 = *(v6 + 40);
    }
  }

  v20 = *(a2 + 32);
  if (v20)
  {
    v21 = 0;
    while (1)
    {
      v22 = atomic_load((v20 + 4));
      v23 = v21 + (v22 >> 6) - 1;
      if (v23 > 0)
      {
        break;
      }

      v20 = *(v20 + 40);
      v21 = v23;
      if (!v20)
      {
        v21 = v23;
LABEL_28:
        v24 = v21 | (v23 << 32);
        goto LABEL_29;
      }
    }

    v23 = 0;
    goto LABEL_28;
  }

  v24 = 0;
LABEL_29:
  while (v20)
  {
    v25 = v20 + 64;
    v26 = v20 + 64 + ((HIDWORD(v24) - v24) << 6);
    if ((*(v26 + 15) & 8) == 0)
    {
      break;
    }

    if (*v26 < v11)
    {
      goto LABEL_77;
    }

    if (*v26 >= a4)
    {
      if (*(v26 + 15) < 0)
      {
        return;
      }
    }

    else
    {
      v27 = *(v26 + 8);
      if (v27 > -15162)
      {
        if (v27 > -15152)
        {
          if (v27 == -15150)
          {
            goto LABEL_60;
          }

          if (v27 != -15151)
          {
            goto LABEL_77;
          }
        }

        else if (v27 != -15161)
        {
          v28 = -15160;
          goto LABEL_44;
        }
      }

      else if (v27 > -15251)
      {
        if (v27 != -15250)
        {
          v28 = -15249;
LABEL_44:
          if (v27 != v28)
          {
            goto LABEL_77;
          }

LABEL_60:
          v38 = GTTraceFunc_argumentBytesWithMap((v25 + ((HIDWORD(v24) - v24) << 6)), *(v26 + 13), a3);
          v39 = GTTraceFunc_argumentBytesWithMap((v25 + ((HIDWORD(v24) - v24) << 6)), v38[16], a3);
          v40 = *(v26 + 8);
          if ((v40 + 15252) < 2 || (v40 + 15161) < 2 || a5 == 2)
          {
            if (*(v38 + 1))
            {
              v43 = 0;
              v44 = 0;
              do
              {
                v45 = *find_entry(a1, &v39[v43], 8uLL, 0);
                if (!v45 || !*(v45 + 32))
                {
                  if (v39)
                  {
                    v46 = apr_palloc(*a1, 8uLL);
                    *v46 = *&v39[8 * v44];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  apr_hash_set(a1, v46, 8, v46);
                }

                ++v44;
                v43 += 8;
              }

              while (*(v38 + 1) > v44);
            }
          }

          else if (((v40 + 15151) < 2 || (v40 + 15250) <= 1) && !a5 && *(v38 + 1))
          {
            v50 = 0;
            do
            {
              apr_hash_set(a1, v39, 8, 0);
              ++v50;
              v39 += 8;
            }

            while (*(v38 + 1) > v50);
          }

          goto LABEL_77;
        }
      }

      else if (v27 != -15252)
      {
        v28 = -15251;
        goto LABEL_44;
      }

      v29 = GTTraceFunc_argumentBytesWithMap((v25 + ((HIDWORD(v24) - v24) << 6)), *(v26 + 13), a3);
      v30 = v29;
      v31 = *(v26 + 8);
      if ((v31 + 15252) < 2 || (v31 + 15161) < 2 || a5 == 2)
      {
        v34 = *find_entry(a1, v29 + 8, 8uLL, 0);
        if (v34 && *(v34 + 32))
        {
          goto LABEL_77;
        }

        v35 = apr_palloc(*a1, 8uLL);
        *v35 = *(v30 + 1);
        v36 = a1;
        v37 = v35;
      }

      else
      {
        if ((v31 + 15151) >= 2 && (v31 + 15250) > 1 || a5)
        {
          goto LABEL_77;
        }

        v35 = v29 + 8;
        v36 = a1;
        v37 = 0;
      }

      apr_hash_set(v36, v35, 8, v37);
    }

LABEL_77:
    v47 = atomic_load((v20 + 4));
    v48 = v24 + (v47 >> 6);
    v49 = (HIDWORD(v24) + 1);
    v24 = (v49 << 32) | v24;
    if (v49 == v48 - 1)
    {
      v24 = (v49 << 32) | v49;
      v20 = *(v20 + 40);
    }
  }
}