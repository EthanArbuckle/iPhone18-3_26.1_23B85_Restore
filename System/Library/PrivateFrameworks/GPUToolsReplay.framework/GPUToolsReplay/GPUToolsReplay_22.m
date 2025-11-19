uint64_t GTMTLDataType_requiresPatching(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 7) & 1;
  v3 = (a2 >> 8) & 1;
  if (a1 == 118)
  {
    v4 = (a2 >> 8) & 1;
  }

  else
  {
    v4 = 0;
  }

  if (a1 != 117)
  {
    LODWORD(v3) = v4;
  }

  if (a1 != 116)
  {
    LODWORD(v2) = v3;
  }

  v5 = (a2 >> 5) & 1;
  v6 = (a2 >> 6) & 1;
  if (a1 != 115)
  {
    LODWORD(v6) = 0;
  }

  if (a1 != 80)
  {
    LODWORD(v5) = v6;
  }

  if (a1 <= 115)
  {
    LODWORD(v2) = v5;
  }

  v7 = (a2 >> 4) & 1;
  v8 = a2 & 1;
  v9 = (a2 >> 1) & 1;
  v10 = (a2 >> 3) & 1;
  if (a1 != 60)
  {
    LODWORD(v10) = 0;
  }

  if (a1 != 59)
  {
    LODWORD(v9) = v10;
  }

  if (a1 != 58)
  {
    v8 = v9;
  }

  if (a1 <= 77)
  {
    LODWORD(v7) = v8;
  }

  if (a1 <= 79)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

uint64_t GTMTLPointerType_requiresPatching(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2 == 2)
  {
    return GTMTLArrayType_requiresPatching(*(a1 + 8), a2);
  }

  if (v2 == 1)
  {
    return GTMTLStructType_requiresPatching(*(a1 + 8), a2);
  }

  return GTMTLDataType_requiresPatching(*(a1 + 22), a2);
}

uint64_t GTMTLArrayType_requiresPatching(uint64_t a1, unint64_t a2)
{
  while (1)
  {
    v2 = *(a1 + 24);
    if (v2 != 2)
    {
      break;
    }

    a1 = *(a1 + 8);
  }

  if (v2 == 1)
  {
    return GTMTLStructType_requiresPatching(*(a1 + 8));
  }

  else
  {
    return GTMTLDataType_requiresPatching(*(a1 + 24), a2);
  }
}

uint64_t GTMTLStructType_isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    while (1)
    {
      v6 = v4 + 32 * v3;
      v7 = v5 + 32 * v3;
      if (*(v6 + 16) != *(v7 + 16))
      {
        return 0;
      }

      v8 = *(v6 + 24);
      if (v8 != *(v7 + 24))
      {
        return 0;
      }

      if (v8 == 2)
      {
        while (1)
        {
          v6 = *(v6 + 8);
          v7 = *(v7 + 8);
          if (*(v6 + 20) != *(v7 + 20))
          {
            return 0;
          }

          v9 = *(v6 + 24);
          if (v9 != *(v7 + 24))
          {
            return 0;
          }

          if (v9 != 2)
          {
            if (v9 != 1)
            {
              goto LABEL_9;
            }

            result = GTMTLStructType_isEqual(*(v6 + 8), *(v7 + 8));
            if (result)
            {
              goto LABEL_9;
            }

            return result;
          }
        }
      }

      if (v8 == 1 && (GTMTLStructType_isEqual(*(v6 + 8), *(v7 + 8)) & 1) == 0)
      {
        return 0;
      }

LABEL_9:
      if (++v3 == v2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t DYMTLIABDecodingOp_cleanup(uint64_t a1)
{
  if (*(a1 + 16) >= 1)
  {
    v2 = 0;
    v3 = 24;
    do
    {
      v4 = *(a1 + 24);
      v5 = *(v4 + v3);
      *(v4 + v3) = 0;

      ++v2;
      v3 += 40;
    }

    while (v2 < *(a1 + 16));
  }

  return 0;
}

char *DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v250 = v3;
  v4 = v0;
  v282 = *MEMORY[0x277D85DE8];
  v5 = v0 + 20480;
  v244 = *(v0 + 8);
  v6 = *v4;
  v260 = v5;
  v7 = *(v6[16] + 24) + (*GroupBuilder_getCommandBuffer(*(*(*v4 + 15) + 12), *(*(*v4 + 15) + 24), *(v5 + 2080)) << 6);
  *__dst = *(GTTraceFunc_argumentBytesWithMap(v7, *(v7 + 13), v6[2]) + 1);
  entry = find_entry(v6[19], __dst, 8uLL, 0);
  if (*entry)
  {
    v9 = *(*entry + 32);
  }

  else
  {
    v9 = 0;
  }

  v262 = v4;
  v10 = v4[1];
  v11 = apr_array_make(v2, *(*(v9 + 8) + 12), 32);
  *&v265 = v11;
  v12 = apr_hash_make(v2);
  *(&v265 + 1) = v12;
  v251 = apr_hash_make(v2);
  *&v266 = v251;
  ht = apr_hash_make(v2);
  *(&v266 + 1) = ht;
  *&v253 = apr_hash_make(v2);
  *(&v253 + 1) = apr_hash_make(v2);
  v267 = v253;
  *&v255 = apr_hash_make(v2);
  *(&v255 + 1) = apr_hash_make(v2);
  v268 = v255;
  *&v256 = apr_hash_make(v2);
  *(&v256 + 1) = apr_hash_make(v2);
  v269 = v256;
  *&v257 = apr_hash_make(v2);
  p = v2;
  *(&v257 + 1) = apr_hash_make(v2);
  v270 = v257;
  v271 = 0;
  v13 = *(v9 + 8);
  if (*(v13 + 12) >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (*(v13 + 24) + v14);
      v17 = apr_array_push(v11);
      v18 = [v10 bufferForKey:v16[2]];
      v19 = DEVICEOBJECT(v18);

      *v17 = [v19 gpuAddress];
      v17[1] = [v19 length];
      v17[2] = *v16;
      *(v17 + 24) = 0;

      ++v15;
      v13 = *(v9 + 8);
      v14 += 32;
    }

    while (v15 < *(v13 + 12));
  }

  qsort(v11->elts, v11->nelts, v11->elt_size, GTMTLGPUAddressResource_compare);
  v20 = *(v9 + 16);
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = v20;
  *(v20 + 40) = 0;
  v21 = apr_hash_next((v20 + 16));
  if (v21)
  {
    v22 = v21;
    do
    {
      v23 = *(*(v22 + 1) + 32);
      v24 = apr_palloc(p, 0x20uLL);
      v25 = [v10 textureForKey:v23[1]];
      v26 = DEVICEOBJECT(v25);

      *v24 = [v26 uniqueIdentifier];
      v24[1] = *v23;
      v24[2] = [v26 gpuResourceID];
      v27 = v24 + 2;
      v28 = *(v9 + 104);
      if (v28 != 1)
      {
        v27 = v24;
      }

      if (v28 == 2)
      {
        v29 = v24 + 3;
      }

      else
      {
        v29 = v27;
      }

      apr_hash_set(v12, v29, 8, v24);

      v22 = apr_hash_next(v22);
    }

    while (v22);
  }

  v30 = *(v9 + 24);
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v30;
  *(v30 + 40) = 0;
  v31 = apr_hash_next((v30 + 16));
  v32 = p;
  if (v31)
  {
    v33 = v31;
    do
    {
      v34 = *(*(v33 + 1) + 32);
      v35 = apr_palloc(p, 0x20uLL);
      v36 = [v10 tensorForKey:v34[1]];
      v37 = DEVICEOBJECT(v36);

      *v35 = 0;
      v35[1] = *v34;
      v35[2] = [v37 gpuResourceID];
      v38 = v35 + 2;
      v39 = *(v9 + 104);
      if (v39 != 1)
      {
        v38 = v35;
      }

      if (v39 == 2)
      {
        v40 = v35 + 3;
      }

      else
      {
        v40 = v38;
      }

      apr_hash_set(v251, v40, 8, v35);

      v33 = apr_hash_next(v33);
    }

    while (v33);
  }

  v41 = *(v9 + 32);
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v41;
  *(v41 + 40) = 0;
  v42 = apr_hash_next((v41 + 16));
  if (v42)
  {
    v43 = v42;
    do
    {
      v44 = *(*(v43 + 1) + 32);
      v45 = apr_palloc(v32, 0x20uLL);
      v46 = [v10 depthStencilStateForKey:v44[1]];
      v47 = DEVICEOBJECT(v46);

      if (objc_opt_respondsToSelector())
      {
        v48 = [v47 device];
        v49 = [v48 supportsFamily:1010];

        if (v49)
        {
          *v45 = [v47 uniqueIdentifier];
          v45[1] = *v44;
          v45[2] = [v47 gpuResourceID];
          v50 = *(v9 + 104);
          if (v50 == 2)
          {
            v51 = v45 + 3;
          }

          else if (v50 == 1)
          {
            v51 = v45 + 2;
          }

          else
          {
            v51 = v45;
          }

          apr_hash_set(ht, v51, 8, v45);
        }
      }

      v43 = apr_hash_next(v43);
      v32 = p;
    }

    while (v43);
  }

  v52 = *(v9 + 40);
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v52;
  *(v52 + 40) = 0;
  v53 = apr_hash_next((v52 + 16));
  if (v53)
  {
    v54 = v53;
    do
    {
      v55 = *(*(v54 + 1) + 32);
      v56 = apr_palloc(v32, 0x20uLL);
      v57 = [v10 samplerStateForKey:v55[1]];
      v58 = DEVICEOBJECT(v57);

      *v56 = [v58 uniqueIdentifier];
      v56[1] = *v55;
      v56[2] = [v58 gpuResourceID];
      v59 = v56 + 2;
      v60 = *(v9 + 104);
      if (v60 != 1)
      {
        v59 = v56;
      }

      if (v60 == 2)
      {
        v61 = v56 + 3;
      }

      else
      {
        v61 = v59;
      }

      apr_hash_set(v253, v61, 8, v56);

      v54 = apr_hash_next(v54);
    }

    while (v54);
  }

  v62 = *(v9 + 48);
  *(v62 + 24) = 0;
  *(v62 + 32) = 0;
  *(v62 + 16) = v62;
  *(v62 + 40) = 0;
  v63 = apr_hash_next((v62 + 16));
  if (v63)
  {
    v64 = v63;
    do
    {
      v65 = *(*(v64 + 1) + 32);
      v66 = apr_palloc(v32, 0x20uLL);
      v67 = [v10 renderPipelineStateForKey:v65[1]];
      v68 = DEVICEOBJECT(v67);

      *v66 = [v68 uniqueIdentifier];
      v66[1] = *v65;
      v66[2] = [v68 gpuResourceID];
      v69 = v66 + 2;
      v70 = *(v9 + 104);
      if (v70 != 1)
      {
        v69 = v66;
      }

      if (v70 == 2)
      {
        v71 = v66 + 3;
      }

      else
      {
        v71 = v69;
      }

      apr_hash_set(*(&v253 + 1), v71, 8, v66);

      v64 = apr_hash_next(v64);
    }

    while (v64);
  }

  v72 = *(v9 + 56);
  *(v72 + 24) = 0;
  *(v72 + 32) = 0;
  *(v72 + 16) = v72;
  *(v72 + 40) = 0;
  v73 = apr_hash_next((v72 + 16));
  if (v73)
  {
    v74 = v73;
    do
    {
      v75 = *(*(v74 + 1) + 32);
      v76 = apr_palloc(v32, 0x20uLL);
      v77 = [v10 computePipelineStateForKey:v75[1]];
      v78 = DEVICEOBJECT(v77);

      *v76 = [v78 uniqueIdentifier];
      v76[1] = *v75;
      v76[2] = [v78 gpuResourceID];
      v79 = v76 + 2;
      v80 = *(v9 + 104);
      if (v80 != 1)
      {
        v79 = v76;
      }

      if (v80 == 2)
      {
        v81 = v76 + 3;
      }

      else
      {
        v81 = v79;
      }

      apr_hash_set(v255, v81, 8, v76);

      v74 = apr_hash_next(v74);
    }

    while (v74);
  }

  v82 = *(v9 + 64);
  *(v82 + 24) = 0;
  *(v82 + 32) = 0;
  *(v82 + 16) = v82;
  *(v82 + 40) = 0;
  v83 = apr_hash_next((v82 + 16));
  if (v83)
  {
    v84 = v83;
    do
    {
      v85 = *(*(v84 + 1) + 32);
      v86 = apr_palloc(v32, 0x20uLL);
      v87 = [v10 indirectCommandBufferForKey:v85[1]];
      v88 = DEVICEOBJECT(v87);

      *v86 = [v88 uniqueIdentifier];
      v86[1] = *v85;
      v86[2] = [v88 gpuResourceID];
      v89 = v86 + 2;
      v90 = *(v9 + 104);
      if (v90 != 1)
      {
        v89 = v86;
      }

      if (v90 == 2)
      {
        v91 = v86 + 3;
      }

      else
      {
        v91 = v89;
      }

      apr_hash_set(*(&v255 + 1), v91, 8, v86);

      v84 = apr_hash_next(v84);
    }

    while (v84);
  }

  v92 = *(v9 + 72);
  *(v92 + 24) = 0;
  *(v92 + 32) = 0;
  *(v92 + 16) = v92;
  *(v92 + 40) = 0;
  v93 = apr_hash_next((v92 + 16));
  if (v93)
  {
    v94 = v93;
    do
    {
      v95 = *(*(v94 + 1) + 32);
      v96 = apr_palloc(v32, 0x20uLL);
      v97 = [v10 visibleFunctionTableForKey:v95[1]];
      v98 = DEVICEOBJECT(v97);

      *v96 = [v98 uniqueIdentifier];
      v96[1] = *v95;
      v96[2] = [v98 gpuResourceID];
      v99 = v96 + 2;
      v100 = *(v9 + 104);
      if (v100 != 1)
      {
        v99 = v96;
      }

      if (v100 == 2)
      {
        v101 = v96 + 3;
      }

      else
      {
        v101 = v99;
      }

      apr_hash_set(v256, v101, 8, v96);

      v94 = apr_hash_next(v94);
    }

    while (v94);
  }

  v102 = *(v9 + 80);
  *(v102 + 24) = 0;
  *(v102 + 32) = 0;
  *(v102 + 16) = v102;
  *(v102 + 40) = 0;
  v103 = apr_hash_next((v102 + 16));
  if (v103)
  {
    v104 = v103;
    do
    {
      v105 = *(*(v104 + 1) + 32);
      v106 = apr_palloc(v32, 0x20uLL);
      v107 = [v10 intersectionFunctionTableForKey:v105[1]];
      v108 = DEVICEOBJECT(v107);

      *v106 = [v108 uniqueIdentifier];
      v106[1] = *v105;
      v106[2] = [v108 gpuResourceID];
      v109 = v106 + 2;
      v110 = *(v9 + 104);
      if (v110 != 1)
      {
        v109 = v106;
      }

      if (v110 == 2)
      {
        v111 = v106 + 3;
      }

      else
      {
        v111 = v109;
      }

      apr_hash_set(*(&v256 + 1), v111, 8, v106);

      v104 = apr_hash_next(v104);
    }

    while (v104);
  }

  v112 = *(v9 + 88);
  *(v112 + 24) = 0;
  *(v112 + 32) = 0;
  *(v112 + 16) = v112;
  *(v112 + 40) = 0;
  v113 = apr_hash_next((v112 + 16));
  if (v113)
  {
    v114 = v113;
    do
    {
      v115 = *(*(v114 + 1) + 32);
      v116 = apr_palloc(v32, 0x20uLL);
      v117 = [v10 accelerationStructureForKey:v115[1]];
      v118 = DEVICEOBJECT(v117);

      *v116 = [v118 uniqueIdentifier];
      v116[1] = *v115;
      v116[2] = [v118 gpuResourceID];
      v119 = v116 + 2;
      v120 = *(v9 + 104);
      if (v120 != 1)
      {
        v119 = v116;
      }

      if (v120 == 2)
      {
        v121 = v116 + 3;
      }

      else
      {
        v121 = v119;
      }

      apr_hash_set(v257, v121, 8, v116);

      v114 = apr_hash_next(v114);
    }

    while (v114);
  }

  v122 = *(v9 + 104);
  v123 = *(v9 + 96);
  *(v123 + 24) = 0;
  *(v123 + 32) = 0;
  *(v123 + 16) = v123;
  *(v123 + 40) = 0;
  v124 = apr_hash_next((v123 + 16));
  v125 = v124;
  if (v122 != 1)
  {
    v126 = v244;
    v127 = v262;
    if (!v124)
    {
      goto LABEL_106;
    }

    while (1)
    {
      v132 = *(*(v125 + 1) + 32);
      v133 = *(v9 + 104);
      if (*(v9 + 104))
      {
        v134 = v132 + 2;
        if (v133 != 1)
        {
          v134 = *(v9 + 104);
        }

        if (v133 == 2)
        {
          v135 = v132 + 1;
        }

        else
        {
          v135 = v134;
        }

        if (!v132)
        {
LABEL_104:
          v136 = 0;
          goto LABEL_105;
        }
      }

      else
      {
        v135 = v132 + 1;
        if (!v132)
        {
          goto LABEL_104;
        }
      }

      v136 = apr_palloc(v32, 8uLL);
      *v136 = *v132;
LABEL_105:
      apr_hash_set(*(&v257 + 1), v135, 8, v136);
      v125 = apr_hash_next(v125);
      if (!v125)
      {
        goto LABEL_106;
      }
    }
  }

  v126 = v244;
  v127 = v262;
  if (v124)
  {
    do
    {
      v128 = *(v125 + 1);
      v129 = *(v128 + 16);
      v130 = *(v128 + 24);
      v131 = apr_array_copy(v32, *(v128 + 32));
      apr_hash_set(*(&v257 + 1), v129, v130, v131);
      v125 = apr_hash_next(v125);
    }

    while (v125);
  }

LABEL_106:

  GTMTLIndirectResources_rehash(__dst, &v265, 1, v32);
  v137 = 0;
  v138 = *v127;
  v139 = *(*(*v127 + 16) + 24) + ((*(v260 + 2080) - 1) << 6);
  v140 = *(v139 + 8) >> 2 == 1073737833;
  v269 = *&__dst[64];
  v270 = *&__dst[80];
  v271 = *&__dst[96];
  v265 = *__dst;
  v266 = *&__dst[16];
  v267 = *&__dst[32];
  v268 = *&__dst[48];
  v280 = 0;
  v279 = 0u;
  memset(v278, 0, sizeof(v278));
  v277 = 0u;
  memset(v276, 0, sizeof(v276));
  v275 = 0u;
  v274 = 0u;
  if (v140)
  {
    v280 = *v127[23];
    GTMTLSMContext_indirectCommandBufferResources(v278, *(v138 + 5), *v139, v280);
    GetExecuteCommandsInBufferArgs(&v274, v139, *(v138 + 2));
    Object = GTMTLSMContext_getObject(**(v138 + 5), v274, *v139);
    GTMTLCreateIndirectCommandEncoder(v276 + 8, Object[14]);
    v137 = *(&v275 + 1) + *(&v277 + 1) * *(v260 + 2084);
    *(&v279 + 1) = v137;
  }

  v142 = *(v127 + 2840);
  if (v142 == 28)
  {
    memcpy(__dst, v127 + 31, 0x8D0uLL);
    if (*(v139 + 8) >> 2 == 1073737833)
    {
      GTMTLSMComputeCommandEncoder_loadIndirectCommand(__dst, v276 + 1, v137, v278);
      apr_pool_clear(v280);
    }

    v153 = GTMTLSMContext_getObject(**(v138 + 5), *&__dst[8], *v139);
    v154 = v153[8];
    memset(v272, 0, 512);
    GTMTLSMComputePipelineState_computePipelineDescriptor(*(v138 + 5), v153, v272, v32);
    v155 = (v250 + 1346);
    v156 = *(v154 + 94);
    if (*(v154 + 94))
    {
      v149 = *(v154 + 32);
      while (v155 != *(v149 + 18) || *(v149 + 16) > 1u)
      {
        v149 += 56;
        if (!--v156)
        {
          goto LABEL_134;
        }
      }
    }

    else
    {
LABEL_134:
      v149 = 0;
    }

    v158 = v273;
    v159 = (*&__dst[8 * ((v250 + 1346) >> 6) + 16] >> (v250 + 66)) & 1;
    v160 = &__dst[8 * v155];
    v161 = *(v160 + 4);
    v162 = *(v160 + 35);
    goto LABEL_182;
  }

  if (v142 == 70)
  {
    memcpy(__dst, v127 + 31, sizeof(__dst));
    if (*(v139 + 8) >> 2 == 1073737833)
    {
      GTMTLSMRenderCommandEncoder_loadIndirectCommand(__dst, v276 + 1, v137, v278);
      apr_pool_clear(v280);
    }

    v143 = GTMTLSMContext_getObject(**(v138 + 5), *&__dst[8544], *v139);
    v144 = v143[7];
    if (v250 < 0xFFFFFFFFFFFFFBBELL)
    {
      if (v250 < 0xFFFFFFFFFFFFFB7ELL)
      {
        if (v250 < 0xFFFFFFFFFFFFFB3ELL)
        {
          if (v250 >= 0xFFFFFFFFFFFFFAFELL)
          {
            v145 = &__dst[3584];
            v146 = &__dst[3832];
            v147 = v250 + 1282;
            v168 = *(v144 + 204);
            if (*(v144 + 204))
            {
              v149 = *(v144 + 40);
              while (v147 != *(v149 + 18) || *(v149 + 16) > 1u)
              {
                v149 += 56;
                if (!--v168)
                {
                  goto LABEL_168;
                }
              }
            }

            else
            {
LABEL_168:
              v149 = 0;
            }

            v151 = (v143[9] + 368);
            v152 = &__dst[3576];
            goto LABEL_181;
          }

          v145 = &__dst[6896];
          v146 = &__dst[7144];
          v147 = v250 + 1346;
          v170 = *(v144 + 202);
          if (*(v144 + 202))
          {
            v149 = *(v144 + 56);
            while (v147 != *(v149 + 18) || *(v149 + 16) > 1u)
            {
              v149 += 56;
              if (!--v170)
              {
                goto LABEL_178;
              }
            }
          }

          else
          {
LABEL_178:
            v149 = 0;
          }

          v151 = (v143[8] + 136);
          v167 = 6888;
        }

        else
        {
          v145 = &__dst[5240];
          v146 = &__dst[5488];
          v147 = v250 + 1218;
          v165 = *(v144 + 206);
          if (*(v144 + 206))
          {
            v149 = *(v144 + 48);
            while (v147 != *(v149 + 18) || *(v149 + 16) > 1u)
            {
              v149 += 56;
              if (!--v165)
              {
                goto LABEL_157;
              }
            }
          }

          else
          {
LABEL_157:
            v149 = 0;
          }

          v151 = (v143[9] + 360);
          v167 = 5232;
        }

        v152 = &__dst[v167];
      }

      else
      {
        v145 = &__dst[1928];
        v146 = &__dst[2176];
        v147 = v250 + 1154;
        v163 = *(v144 + 200);
        if (*(v144 + 200))
        {
          v149 = *(v144 + 32);
          while (v147 != *(v149 + 18) || *(v149 + 16) > 1u)
          {
            v149 += 56;
            if (!--v163)
            {
              goto LABEL_146;
            }
          }
        }

        else
        {
LABEL_146:
          v149 = 0;
        }

        v151 = (v143[6] + 1176);
        v152 = &__dst[1920];
      }
    }

    else
    {
      v145 = &__dst[24];
      v146 = &__dst[272];
      v147 = v250 + 1090;
      v148 = *(v144 + 198);
      if (*(v144 + 198))
      {
        v149 = *(v144 + 24);
        while (v147 != *(v149 + 18) || *(v149 + 16) > 1u)
        {
          v149 += 56;
          if (!--v148)
          {
            goto LABEL_122;
          }
        }
      }

      else
      {
LABEL_122:
        v149 = 0;
      }

      v151 = (v143[6] + 1296);
      v152 = &__dst[8 * (v147 >> 6) + 8];
    }

LABEL_181:
    v158 = *v151;
    v159 = (*v152 >> v147) & 1;
    v161 = *&v145[8 * v147];
    v162 = *&v146[8 * v147];
    goto LABEL_182;
  }

  v149 = 0;
  v158 = 0;
  v161 = 0;
  v162 = 0;
  LODWORD(v159) = 0;
LABEL_182:
  v172 = [v126 functionForKey:v158];
  v173 = DEVICEOBJECT(v172);

  v242 = v173;
  v174 = [v173 newArgumentEncoderWithBufferIndex:*(v149 + 18)];
  if (v159)
  {
    v175 = [v127[1] defaultDevice];
    v176 = [v175 newBufferWithBytes:v161 length:v162 options:0];

    v162 = 0;
  }

  else
  {
    v176 = [v126 bufferForKey:v161];
  }

  v177 = [v176 length];
  v178 = v127[3];
  v179 = [v178 bufferWithLength:v177 alignment:{objc_msgSend(v174, "alignment")}];
  v180 = [v178 blitCommandEncoder];
  v181 = [v179 heapBuffer];
  v259 = v177;
  [v180 copyFromBuffer:v176 sourceOffset:0 toBuffer:v181 destinationOffset:objc_msgSend(v179 size:{"heapLocation"), v177}];

  v182 = [v178 commandBuffer];
  v183 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"DecodeAB Blit"];
  [v182 setLabel:v183];

  [v178 commitCommandBuffer];
  [v182 waitUntilCompleted];
  v243 = [v179 heapBuffer];

  v241 = v179;
  v184 = [v179 heapLocation];

  v185 = apr_array_make(v32, 8, 32);
  if (*(v149 + 16) > 1u)
  {
    goto LABEL_191;
  }

  v186 = *(v149 + 8);
  if (!v186)
  {
    goto LABEL_191;
  }

  v187 = *v186;
  if (v187 == 1)
  {
    goto LABEL_192;
  }

  if (v187 == 60 && v186[22] == 1)
  {
    v186 = *(v186 + 1);
  }

  else
  {
LABEL_191:
    v186 = 0;
  }

LABEL_192:
  GTMTLStructType_fillArgumentIndicesRequiresPatching(v186, 0, 0, v185, 0xFFFuLL);
  v188 = DEVICEOBJECT(v243);
  v189 = v174;
  v190 = [v189 encodedLength];
  v240 = v189;
  v245 = [v189 layout];
  v191 = v162 % v190;
  v258 = v190;
  v192 = (v177 - v162 % v190) / v190;
  nelts = v185->nelts;
  v194 = apr_array_make(v32, nelts + v192 + v192 * nelts + 2, 8);
  *apr_array_push(v194) = v192;
  *apr_array_push(v194) = nelts;
  if (v185->nelts >= 1)
  {
    v195 = 0;
    v196 = 8;
    do
    {
      v197 = *&v185->elts[v196];
      *apr_array_push(v194) = v197;
      ++v195;
      v196 += 32;
    }

    while (v195 < v185->nelts);
  }

  v198 = v191 + v258;
  if (v191 + v258 <= v177)
  {
    v199 = v271;
    v247 = v188;
    v246 = v271;
    while (1)
    {
      v200 = v198;
      *apr_array_push(v194) = v191;
      if (!v199)
      {
        break;
      }

      if (v199 == 1)
      {
        v261 = v200;
        v201 = v188;
        v202 = v185->nelts;
        if (v202 >= 1)
        {
          v203 = v201;
          v204 = 0;
          v205 = 0;
          v206 = v191 + v184;
          v207 = v265;
          while (1)
          {
            v208 = &v185->elts[v204];
            v209 = *v208;
            v210 = *v208 - 58;
            if (v210 <= 0x3C)
            {
              break;
            }

LABEL_225:
            ++v205;
            v204 += 32;
            if (v205 >= v202)
            {
              goto LABEL_263;
            }
          }

          v211 = *(v208 + 2);
          if (((1 << v210) & 0x1E00000000700003) == 0)
          {
            if (*v208 != 60)
            {
              goto LABEL_225;
            }

            v215 = *([v203 contents] + v211 + v206);
            v218 = GTMTLGPUAddressResource_resourceForGPUAddress(*(v207 + 24), *(v207 + 12), v215);
            if (v218)
            {
              v215 = v218[2] + v215 - *v218;
            }

            goto LABEL_224;
          }

          v212 = [v203 contents];
          v213 = 0;
          if (v209 > 0x73u)
          {
            if (v209 > 0x8Au)
            {
              v214 = &v266 + 1;
              if (v209 != 139)
              {
                if (v209 != 140)
                {
                  goto LABEL_221;
                }

                v214 = &v266;
              }

              goto LABEL_220;
            }

            v214 = &v270;
            if (v209 - 117 < 2)
            {
              goto LABEL_220;
            }

            v214 = &v269 + 1;
            if (v209 == 116)
            {
              goto LABEL_220;
            }
          }

          else
          {
            if (v209 <= 0x4Eu)
            {
              v214 = &v265 + 1;
              if (v209 != 58)
              {
                v214 = &v267;
                if (v209 != 59)
                {
                  v214 = &v267 + 1;
                  if (v209 != 78)
                  {
                    goto LABEL_221;
                  }
                }
              }

LABEL_220:
              v213 = *v214;
              goto LABEL_221;
            }

            v214 = &v268;
            if (v209 == 79)
            {
              goto LABEL_220;
            }

            v214 = &v268 + 1;
            if (v209 == 80)
            {
              goto LABEL_220;
            }

            v214 = &v269;
            if (v209 == 115)
            {
              goto LABEL_220;
            }
          }

LABEL_221:
          v215 = *(v212 + v211 + v206);
          *__dst = v215;
          v216 = *find_entry(v213, __dst, 8uLL, 0);
          if (v216)
          {
            v217 = *(v216 + 32);
            if (v217)
            {
              v215 = *(v217 + 8);
            }
          }

LABEL_224:
          *apr_array_push(v194) = v215;
          v202 = v185->nelts;
          goto LABEL_225;
        }

        goto LABEL_263;
      }

LABEL_264:
      v198 = v200 + v258;
      v191 = v200;
      if (v200 + v258 > v259)
      {
        goto LABEL_265;
      }
    }

    v261 = v200;
    v219 = v188;
    v220 = v245;
    v221 = v185->nelts;
    if (v221 < 1)
    {
LABEL_262:

LABEL_263:
      v188 = v247;

      v199 = v246;
      v200 = v261;
      goto LABEL_264;
    }

    v222 = 0;
    v223 = 0;
    v224 = v270;
    v254 = v269;
    v252 = v268;
    v249 = v267;
    v248 = v265;
    while (1)
    {
      v225 = &v185->elts[v222];
      v227 = *v225;
      v226 = v225[1];
      if (*v225 > 79)
      {
        if (v227 <= 115)
        {
          if (v227 == 80)
          {
            v228 = [v220 uniqueIdentifierForIndirectCommandBufferAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
            *__dst = v228;
            v229 = *(&v252 + 1);
            goto LABEL_257;
          }

          if (v227 == 115)
          {
            v228 = [v220 uniqueIdentifierForVisibleFunctionTableAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
            *__dst = v228;
            v229 = v254;
            goto LABEL_257;
          }
        }

        else
        {
          switch(v227)
          {
            case 't':
              v228 = [v220 uniqueIdentifierForIntersectionFunctionTableAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
              *__dst = v228;
              v229 = *(&v254 + 1);
              goto LABEL_257;
            case 'u':
              v230 = [v220 uniqueIdentifierForPrimitiveAccelerationStructureAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
LABEL_256:
              v228 = v230;
              *__dst = v230;
              v229 = v224;
LABEL_257:
              v232 = *find_entry(v229, __dst, 8uLL, 0);
              if (v232)
              {
                v233 = *(v232 + 32);
                if (v233)
                {
                  v228 = *(v233 + 8);
                }
              }

LABEL_260:
              *apr_array_push(v194) = v228;
              v221 = v185->nelts;
              break;
            case 'v':
              v230 = [v220 uniqueIdentifierForInstanceAccelerationStructureAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
              goto LABEL_256;
          }
        }
      }

      else if (v227 <= 59)
      {
        if (v227 == 58)
        {
          v228 = [v220 uniqueIdentifierForTextureAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
          *__dst = v228;
          v229 = *(&v248 + 1);
          goto LABEL_257;
        }

        if (v227 == 59)
        {
          v228 = [v220 uniqueIdentifierForSamplerAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
          *__dst = v228;
          v229 = v249;
          goto LABEL_257;
        }
      }

      else
      {
        switch(v227)
        {
          case '<':
            v228 = [v220 virtualAddressForBufferAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
            v231 = GTMTLGPUAddressResource_resourceForGPUAddress(*(v248 + 24), *(v248 + 12), v228);
            if (v231)
            {
              v228 = v231[2] + v228 - *v231;
            }

            goto LABEL_260;
          case 'N':
            v228 = [v220 uniqueIdentifierForRenderPipelineAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
            *__dst = v228;
            v229 = *(&v249 + 1);
            goto LABEL_257;
          case 'O':
            v228 = [v220 uniqueIdentifierForComputePipelineAtIndex:v226 inIndirectArgumentBuffer:v219 atOffset:v191 + v184];
            *__dst = v228;
            v229 = v252;
            goto LABEL_257;
        }
      }

      ++v223;
      v222 += 32;
      if (v223 >= v221)
      {
        goto LABEL_262;
      }
    }
  }

LABEL_265:
  elts = v194->elts;
  p_elt_size = &v194->elt_size;
  elt_size = v194->elt_size;
  v236 = p_elt_size[1];

  v238 = *MEMORY[0x277D85DE8];
  return elts;
}

uint64_t GTMTLReplayDefaults_logCommandBufferHandlers()
{
  v0 = MEMORY[0x277CBEBD0];
  v1 = @"com.apple.gputools.replay.logCommandBufferHandlers";
  v2 = [v0 standardUserDefaults];
  v3 = [v2 BOOLForKey:@"com.apple.gputools.replay.logCommandBufferHandlers"];

  return v3;
}

uint64_t GetPlanePixelFormat(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 > 539)
  {
    v4 = a1 - 550;
    v5 = 10;
    if (!a2)
    {
      v5 = 554;
    }

    v6 = 30;
    if (!a2)
    {
      v6 = 10;
    }

    v7 = 578;
    if (!a2)
    {
      v7 = 576;
    }

    if (a1 != 543)
    {
      v7 = 0;
    }

    if (a1 == 540)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 >= 2)
    {
      return v8;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 <= 519)
    {
      if (a1 != 500 && a1 != 503)
      {
        return result;
      }

LABEL_22:
      if (a2)
      {
        return 30;
      }

      else
      {
        return 10;
      }
    }

    if (a1 == 520 || a1 == 523)
    {
      goto LABEL_22;
    }
  }

  return result;
}

void GTMTLReplayController_restoreRenderCommandEncoder(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v85[1] = *MEMORY[0x277D85DE8];
  v7 = a3 + 0x2000;
  v8 = a2 + 0x2000;
  v9 = a1;
  v10 = a4;
  v50 = v9;
  v11 = *(a3 + 8544);
  if (*(a2 + 8544) != v11 && v11 != 0)
  {
    v13 = [v10 renderPipelineStateForKey:?];
    [v50 setRenderPipelineState:v13];
  }

  if (*(v8 + 2907) != *(v7 + 2907))
  {
    [v50 setTriangleFillMode:?];
  }

  if (*(v8 + 2906) != *(v7 + 2906))
  {
    [v50 setFrontFacingWinding:?];
  }

  if (*(v8 + 2904) != *(v7 + 2904))
  {
    [v50 setCullMode:?];
  }

  v14 = *(a3 + 9848);
  if (*(a2 + 9848) != v14 && v14)
  {
    v15 = [v10 depthStencilStateForKey:?];
    [v50 setDepthStencilState:v15];
  }

  if (*(a2 + 10008) != *(a3 + 10008))
  {
    v16 = *(a3 + 10012);
LABEL_19:
    v17 = *(a3 + 10016);
    [v50 setDepthBias:? slopeScale:? clamp:?];
    goto LABEL_20;
  }

  if (*(a2 + 10012) != *(a3 + 10012) || *(a2 + 10016) != *(a3 + 10016))
  {
    goto LABEL_19;
  }

LABEL_20:
  if (*(v8 + 2905) != *(v7 + 2905))
  {
    [v50 setDepthClipMode:?];
  }

  if (*(a2 + 10020) == *(a3 + 10020))
  {
    if (*(a2 + 10024) == *(a3 + 10024))
    {
      goto LABEL_26;
    }
  }

  else
  {
    v18 = *(a3 + 10024);
  }

  [v50 setDepthTestMinBound:? maxBound:?];
LABEL_26:
  if (*(a2 + 10044) == *(a3 + 10044))
  {
    if (*(a2 + 10048) == *(a3 + 10048))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v19 = *(a3 + 10048);
  }

  [v50 setStencilFrontReferenceValue:? backReferenceValue:?];
LABEL_31:
  v20 = *(a3 + 8552);
  if (v20 != *(a2 + 8552) || memcmp((a3 + 8560), (a2 + 8560), 48 * v20))
  {
    [v50 setViewports:a3 + 8560 count:v20];
  }

  v21 = *(a3 + 9328);
  if (v21 != *(a2 + 9328) || memcmp((a3 + 9336), (a2 + 9336), 32 * v21))
  {
    [v50 setScissorRects:a3 + 9336 count:v21];
  }

  v26 = v50;
  if ((GT_SUPPORT_0 & 2) != 0)
  {
    if (*(v8 + 2908) == *(v7 + 2908))
    {
      if (*(a2 + 11084) == *(a3 + 11084))
      {
LABEL_43:
        if (*(a2 + 11088) == *(a3 + 11088))
        {
          if (*(a2 + 9856) == *(a3 + 9856))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v28 = *(a3 + 9856);
        }

        [v50 setVertexAmplificationCount:? viewMappings:?];
        v26 = v50;
        goto LABEL_48;
      }
    }

    else
    {
      v27 = *(a3 + 11084);
    }

    [v50 setVertexAmplificationMode:? value:?];
    v26 = v50;
    goto LABEL_43;
  }

LABEL_48:
  if (*(v8 + 1836) != *(v7 + 1836) || *(v8 + 1844) != *(v7 + 1844))
  {
    LODWORD(v22) = *(a3 + 10028);
    LODWORD(v23) = *(a3 + 10032);
    LODWORD(v24) = *(a3 + 10036);
    LODWORD(v25) = *(a3 + 10040);
    [v50 setBlendColorRed:v22 green:v23 blue:v24 alpha:v25];
    v26 = v50;
  }

  if (*(v8 + 2909) == *(v7 + 2909))
  {
    if (*(a2 + 11092) == *(a3 + 11092))
    {
      goto LABEL_58;
    }
  }

  else
  {
    v30 = *(a3 + 11092);
  }

  [v50 setVisibilityResultMode:? offset:?];
  v26 = v50;
LABEL_58:
  v51 = a2 + 24;
  v52 = a3 + 24;
  v53 = 31;
  v54 = a2 + 272;
  v55 = a3 + 272;
  v56 = 31;
  *&v57 = a2 + 520;
  *(&v57 + 1) = a3 + 520;
  *&v58 = 31;
  *(&v58 + 1) = a2 + 16;
  *&v59 = a3 + 16;
  *(&v59 + 1) = 1;
  v60 = a2 + 8;
  v61 = a3 + 8;
  v62 = 1;
  v63 = a3 + 24;
  v64 = a3 + 272;
  v65 = a2 + 768;
  v66 = a3 + 768;
  v67 = 128;
  v68 = a2 + 1792;
  v69 = a3 + 1792;
  v70 = 16;
  v71 = a2 + 10052;
  v72 = a2 + 10116;
  v73 = a3 + 10052;
  v74 = a3 + 10116;
  v75 = 16;
  v76 = sel_setVertexBuffer_offset_atIndex_;
  v77 = sel_setVertexBuffer_offset_attributeStride_atIndex_;
  v78 = sel_setVertexAccelerationStructure_atBufferIndex_;
  v79 = sel_setVertexIntersectionFunctionTable_atBufferIndex_;
  v80 = sel_setVertexVisibleFunctionTable_atBufferIndex_;
  v81 = sel_setVertexBytes_length_atIndex_;
  v82 = sel_setVertexBytes_length_attributeStride_atIndex_;
  v83 = sel_setVertexTextures_withRange_;
  v84 = sel_setVertexSamplerStates_lodMinClamps_lodMaxClamps_withRange_;
  RestoreRenderStageResources(v26, &v51, v10);
  v51 = a2 + 1928;
  v52 = a3 + 1928;
  v53 = 31;
  v54 = a2 + 2176;
  v55 = a3 + 2176;
  v56 = 31;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = a2 + 1920;
  v61 = a3 + 1920;
  v62 = 1;
  v63 = a3 + 1928;
  v64 = a3 + 2176;
  v65 = a2 + 2424;
  v66 = a3 + 2424;
  v67 = 128;
  v68 = a2 + 3448;
  v69 = a3 + 3448;
  v70 = 16;
  v71 = a2 + 10180;
  v72 = a2 + 10244;
  v73 = a3 + 10180;
  v74 = a3 + 10244;
  v75 = 16;
  v76 = sel_setFragmentBuffer_offset_atIndex_;
  v77 = 0;
  v78 = sel_setFragmentAccelerationStructure_atBufferIndex_;
  v79 = sel_setFragmentIntersectionFunctionTable_atBufferIndex_;
  v80 = sel_setFragmentVisibleFunctionTable_atBufferIndex_;
  v81 = sel_setFragmentBytes_length_atIndex_;
  v82 = 0;
  v83 = sel_setFragmentTextures_withRange_;
  v84 = sel_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange_;
  RestoreRenderStageResources(v50, &v51, v10);
  if (*(a2 + 9864) != *(a3 + 9864) || *(a2 + 10704) != *(a3 + 10704) || *(a2 + 10708) != *(a3 + 10708))
  {
    v31 = [v10 bufferForKey:?];
    [v50 setTessellationFactorBuffer:v31 offset:*(a3 + 10704) instanceStride:*(a3 + 10708)];
  }

  v32 = v50;
  if (*(a2 + 10692) != *(a3 + 10692))
  {
    [v50 setTessellationFactorScale:?];
    v32 = v50;
  }

  v51 = a2 + 3584;
  v52 = a3 + 3584;
  v53 = 31;
  v54 = a2 + 3832;
  v55 = a3 + 3832;
  v56 = 31;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = a2 + 3576;
  v61 = a3 + 3576;
  v62 = 1;
  v63 = a3 + 3584;
  v64 = a3 + 3832;
  v65 = a2 + 4080;
  v66 = a3 + 4080;
  v67 = 128;
  v68 = a2 + 5104;
  v69 = a3 + 5104;
  v70 = 16;
  v71 = a2 + 10308;
  v72 = a2 + 10372;
  v73 = a3 + 10308;
  v74 = a3 + 10372;
  v75 = 16;
  v76 = sel_setObjectBuffer_offset_atIndex_;
  v77 = 0;
  v78 = sel_setObjectAccelerationStructure_atBufferIndex_;
  v79 = sel_setObjectIntersectionFunctionTable_atBufferIndex_;
  v80 = sel_setObjectVisibleFunctionTable_atBufferIndex_;
  v81 = sel_setObjectBytes_length_atIndex_;
  v82 = 0;
  v83 = sel_setObjectTextures_withRange_;
  v84 = sel_setObjectSamplerStates_lodMinClamps_lodMaxClamps_withRange_;
  RestoreRenderStageResources(v32, &v51, v10);
  for (i = 0; i != 31; ++i)
  {
    v34 = *(a3 + 10960 + 4 * i);
    if (v34 != *(a2 + 10960 + 4 * i))
    {
      [v50 setObjectThreadgroupMemoryLength:v34 atIndex:i];
    }
  }

  v51 = a2 + 5240;
  v52 = a3 + 5240;
  v53 = 31;
  v54 = a2 + 5488;
  v55 = a3 + 5488;
  v56 = 31;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = a2 + 5232;
  v61 = a3 + 5232;
  v62 = 1;
  v63 = a3 + 5240;
  v64 = a3 + 5488;
  v65 = a2 + 5736;
  v66 = a3 + 5736;
  v67 = 128;
  v68 = a2 + 6760;
  v69 = a3 + 6760;
  v70 = 16;
  v71 = a2 + 10436;
  v72 = a2 + 10500;
  v73 = a3 + 10436;
  v74 = a3 + 10500;
  v75 = 16;
  v76 = sel_setMeshBuffer_offset_atIndex_;
  v77 = 0;
  v78 = sel_setMeshAccelerationStructure_atBufferIndex_;
  v79 = sel_setMeshIntersectionFunctionTable_atBufferIndex_;
  v80 = sel_setMeshVisibleFunctionTable_atBufferIndex_;
  v81 = sel_setMeshBytes_length_atIndex_;
  v82 = 0;
  v83 = sel_setMeshTextures_withRange_;
  v84 = sel_setMeshSamplerStates_lodMinClamps_lodMaxClamps_withRange_;
  RestoreRenderStageResources(v50, &v51, v10);
  if (GT_SUPPORT_0)
  {
    v51 = a2 + 6896;
    v52 = a3 + 6896;
    v53 = 31;
    v54 = a2 + 7144;
    v55 = a3 + 7144;
    v56 = 31;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = a2 + 6888;
    v61 = a3 + 6888;
    v62 = 1;
    v63 = a3 + 6896;
    v64 = a3 + 7144;
    v65 = a2 + 7392;
    v66 = a3 + 7392;
    v67 = 128;
    v68 = a2 + 8416;
    v69 = a3 + 8416;
    v70 = 16;
    v71 = a2 + 10564;
    v72 = a2 + 10628;
    v73 = a3 + 10564;
    v74 = a3 + 10628;
    v75 = 16;
    v76 = sel_setTileBuffer_offset_atIndex_;
    v77 = 0;
    v78 = sel_setTileAccelerationStructure_atBufferIndex_;
    v79 = sel_setTileIntersectionFunctionTable_atBufferIndex_;
    v80 = sel_setTileVisibleFunctionTable_atBufferIndex_;
    v81 = sel_setTileBytes_length_atIndex_;
    v82 = 0;
    v83 = sel_setTileTextures_withRange_;
    v84 = sel_setTileSamplerStates_lodMinClamps_lodMaxClamps_withRange_;
    RestoreRenderStageResources(v50, &v51, v10);
    v35 = 0;
    v36 = (a2 + 10836);
    v37 = (a3 + 10836);
    do
    {
      if (*(v36 - 31) == *(v37 - 31))
      {
        if (*v36 == *v37)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v38 = *v37;
      }

      [v50 setThreadgroupMemoryLength:? offset:? atIndex:?];
LABEL_75:
      ++v37;
      ++v35;
      ++v36;
    }

    while (v35 != 31);
  }

  v39 = 0;
  v40 = (a2 + 9936);
  v41 = (a3 + 9936);
  do
  {
    if (*(v40 - 8) != *(v41 - 8))
    {
      [v50 setColorStoreAction:? atIndex:?];
    }

    if (*v40 != *v41)
    {
      [v50 setColorStoreActionOptions:? atIndex:?];
    }

    ++v41;
    ++v39;
    ++v40;
  }

  while (v39 != 8);
  if (*(v8 + 2910) != *(v7 + 2910))
  {
    [v50 setDepthStoreAction:?];
  }

  if (*(v8 + 2912) != *(v7 + 2912))
  {
    [v50 setDepthStoreActionOptions:?];
  }

  if (*(v8 + 2911) != *(v7 + 2911))
  {
    [v50 setStencilStoreAction:?];
  }

  if (*(v8 + 2913) != *(v7 + 2913))
  {
    [v50 setStencilStoreActionOptions:?];
  }

  if (*(a2 + 10696) != *(a3 + 10696))
  {
    [v50 setLineWidth:?];
  }

  v42 = *(v7 + 2914);
  if (v42 != *(v8 + 2914))
  {
    [v50 setPrimitiveRestartEnabled:v42 != 0];
  }

  v43 = *(a2 + 10000);
  v51 = *(a3 + 10000);
  v85[0] = v43;
  if (v51 == v43)
  {
    v44 = 1;
    while (v44 != 8)
    {
      v45 = v44;
      v46 = *(&v51 + v44);
      v47 = *(v85 + v44++);
      if (v46 != v47)
      {
        if ((v45 - 1) > 6)
        {
          break;
        }

        goto LABEL_99;
      }
    }
  }

  else
  {
LABEL_99:
    v48 = MakeMTLLogicalToPhysicalColorAttachmentMap(v51);
    [v50 setColorAttachmentMap:v48];
  }

  v49 = *MEMORY[0x277D85DE8];
}

void RestoreRenderStageResources(void *a1, uint64_t *a2, void *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = CompareObjectIdRange(*a2, a2[1], a2[2]);
  v9 = v8;
  v10 = CompareObjectIdRange(a2[3], a2[4], a2[5]);
  v12.length = v11;
  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = v10;
  }

  if (v11)
  {
    v12.location = v10;
  }

  else
  {
    v12.location = v13;
  }

  v79.location = v13;
  v79.length = v9;
  v14 = NSUnionRange(v79, v12);
  v76 = v14;
  if (!v14.length)
  {
    goto LABEL_39;
  }

  location = v14.location;
  length = v14.length;
  do
  {
    *&v77[0] = location;
    if (((*(a2[13] + ((location >> 3) & 0x1FFFFFFFFFFFFFF8)) >> location) & 1) == 0 && *(a2[1] + 8 * location))
    {
      v75 = [v6 resourceForKey:?];
      if ([v75 conformsToProtocol:&unk_2860F61B0])
      {
        v74 = *(a2[4] + 8 * *&v77[0]);
        v17 = a2[10];
        if (v17 && ((*(v17 + ((*&v77[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SLOBYTE(v77[0])) & 1) != 0)
        {
          v73 = *(a2[7] + 8 * *&v77[0]);
          v18 = MEMORY[0x277CBEAE8];
          v19 = [v5 methodSignatureForSelector:a2[29]];
          v20 = [v18 invocationWithMethodSignature:v19];

          [v20 setSelector:a2[29]];
          [v20 setTarget:v5];
          [v20 setArgument:&v75 atIndex:2];
          [v20 setArgument:&v74 atIndex:3];
          [v20 setArgument:&v73 atIndex:4];
          v21 = v20;
          v22 = 5;
        }

        else
        {
          v28 = MEMORY[0x277CBEAE8];
          v29 = [v5 methodSignatureForSelector:a2[28]];
          v20 = [v28 invocationWithMethodSignature:v29];

          [v20 setSelector:a2[28]];
          [v20 setTarget:v5];
          [v20 setArgument:&v75 atIndex:2];
          [v20 setArgument:&v74 atIndex:3];
          v21 = v20;
          v22 = 4;
        }
      }

      else
      {
        if ([v75 conformsToProtocol:&unk_2860F7610] && a2[30])
        {
          v23 = MEMORY[0x277CBEAE8];
          v24 = [v5 methodSignatureForSelector:?];
          v20 = [v23 invocationWithMethodSignature:v24];

          v25 = a2[30];
        }

        else if ([v75 conformsToProtocol:&unk_2860F77A8] && a2[31])
        {
          v26 = MEMORY[0x277CBEAE8];
          v27 = [v5 methodSignatureForSelector:?];
          v20 = [v26 invocationWithMethodSignature:v27];

          v25 = a2[31];
        }

        else
        {
          if (![v75 conformsToProtocol:&unk_2860F7528] || !a2[32])
          {
            goto LABEL_27;
          }

          v30 = MEMORY[0x277CBEAE8];
          v31 = [v5 methodSignatureForSelector:?];
          v20 = [v30 invocationWithMethodSignature:v31];

          v25 = a2[32];
        }

        [v20 setSelector:v25];
        [v20 setTarget:v5];
        [v20 setArgument:&v75 atIndex:2];
        v21 = v20;
        v22 = 3;
      }

      [v21 setArgument:v77 atIndex:v22];
      [v20 invoke];

LABEL_27:
    }

    ++location;
    --length;
  }

  while (length);
  if (a2[14])
  {
    v32 = 0;
    do
    {
      v33 = 0;
      do
      {
        v34 = *(a2[13] + 8 * v32) >> v33;
        if (!v34)
        {
          break;
        }

        v35 = (v33 + __clz(__rbit64(v34)));
        *&v77[0] = (v32 << 6) + v35;
        v36 = a2[10];
        if (v36 && ((*(v36 + ((((v32 << 6) + v35) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) != 0)
        {
          v37 = MEMORY[0x277CBEAE8];
          v38 = [v5 methodSignatureForSelector:a2[34]];
          v39 = [v37 invocationWithMethodSignature:v38];

          [v39 setSelector:a2[34]];
          [v39 setTarget:v5];
          [v39 setArgument:a2[15] + 8 * *&v77[0] atIndex:2];
          [v39 setArgument:a2[16] + 8 * *&v77[0] atIndex:3];
          [v39 setArgument:a2[7] + 8 * *&v77[0] atIndex:4];
          v40 = v39;
          v41 = 5;
        }

        else
        {
          v42 = MEMORY[0x277CBEAE8];
          v43 = [v5 methodSignatureForSelector:a2[33]];
          v39 = [v42 invocationWithMethodSignature:v43];

          [v39 setSelector:a2[33]];
          [v39 setTarget:v5];
          [v39 setArgument:a2[15] + 8 * *&v77[0] atIndex:2];
          [v39 setArgument:a2[16] + 8 * *&v77[0] atIndex:3];
          v40 = v39;
          v41 = 4;
        }

        [v40 setArgument:v77 atIndex:v41];
        [v39 invoke];

        v33 = v35 + 1;
      }

      while (v35 < 63);
      ++v32;
    }

    while (a2[14] > v32);
  }

LABEL_39:
  v76.location = CompareObjectIdRange(a2[17], a2[18], a2[19]);
  v76.length = v44;
  if (v44)
  {
    bzero(v77, 0x400uLL);
    v45 = 0;
    do
    {
      v46 = [v6 textureForKey:*(a2[18] + 8 * v76.location + 8 * v45)];
      v47 = *(v77 + v45);
      *(v77 + v45) = v46;

      ++v45;
    }

    while (v45 < v76.length);
    v75 = v77;
    v48 = MEMORY[0x277CBEAE8];
    v49 = [v5 methodSignatureForSelector:a2[35]];
    v50 = [v48 invocationWithMethodSignature:v49];

    [v50 setSelector:a2[35]];
    [v50 setTarget:v5];
    [v50 setArgument:&v75 atIndex:2];
    [v50 setArgument:&v76 atIndex:3];
    [v50 invoke];

    for (i = 1016; i != -8; i -= 8)
    {
    }
  }

  v52 = CompareObjectIdRange(a2[20], a2[21], a2[22]);
  v54 = v53;
  v76.location = v52;
  v76.length = v53;
  v55 = CompareFloatRange(a2[23], a2[25], a2[27]);
  v57.length = v56;
  if (v54)
  {
    v58 = v52;
  }

  else
  {
    v58 = v55;
  }

  if (v56)
  {
    v57.location = v55;
  }

  else
  {
    v57.location = v58;
  }

  v80.location = v58;
  v80.length = v54;
  v59 = NSUnionRange(v80, v57);
  v76 = v59;
  v60 = CompareFloatRange(a2[24], a2[26], a2[27]);
  v62.length = v61;
  if (v59.length)
  {
    v63 = v59.location;
  }

  else
  {
    v63 = v60;
  }

  if (v61)
  {
    v62.location = v60;
  }

  else
  {
    v62.location = v63;
  }

  v81.location = v63;
  v81.length = v59.length;
  v76 = NSUnionRange(v81, v62);
  if (v76.length)
  {
    v64 = 0;
    memset(v77, 0, 128);
    do
    {
      v65 = [v6 samplerStateForKey:*(a2[21] + 8 * v76.location + 8 * v64)];
      v66 = *(v77 + v64);
      *(v77 + v64) = v65;

      ++v64;
    }

    while (v64 < v76.length);
    v67 = a2[26];
    v74 = a2[25] + 4 * v76.location;
    v75 = v77;
    v73 = v67 + 4 * v76.location;
    v68 = MEMORY[0x277CBEAE8];
    v69 = [v5 methodSignatureForSelector:a2[36]];
    v70 = [v68 invocationWithMethodSignature:v69];

    [v70 setSelector:a2[36]];
    [v70 setTarget:v5];
    [v70 setArgument:&v75 atIndex:2];
    [v70 setArgument:&v74 atIndex:3];
    [v70 setArgument:&v73 atIndex:4];
    [v70 setArgument:&v76 atIndex:5];
    [v70 invoke];

    for (j = 120; j != -8; j -= 8)
    {
    }
  }

  v72 = *MEMORY[0x277D85DE8];
}

unint64_t CompareObjectIdRange(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  if (a3)
  {
    while (*(a1 + 8 * v3) == *(a2 + 8 * v3))
    {
      if (a3 == ++v3)
      {
        v3 = a3;
        break;
      }
    }
  }

  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = v3;
  }

  while (v3 < a3)
  {
    v5 = a3 - 1;
    v6 = *(a1 - 8 + 8 * a3);
    v7 = *(a2 - 8 + 8 * a3--);
    if (v6 != v7)
    {
      v4 = v5 + 1;
      break;
    }
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t CompareFloatRange(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  if (a3)
  {
    while (*(a1 + 4 * v3) == *(a2 + 4 * v3))
    {
      if (a3 == ++v3)
      {
        v3 = a3;
        break;
      }
    }
  }

  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = v3;
  }

  while (v3 < a3)
  {
    v5 = a3 - 1;
    v6 = *(a1 - 4 + 4 * a3);
    v7 = *(a2 - 4 + 4 * a3--);
    if (v6 != v7)
    {
      v4 = v5 + 1;
      break;
    }
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void GTMTLReplayController_restoreDefaultRenderCommandEncoder()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v21 = *MEMORY[0x277D85DE8];
  memset(v13, 0, 512);
  v8 = *v1;
  v10 = v9;
  v11 = v7;
  GTMTLSMRenderCommandEncoder_init(v13, v8);
  v14 = 1;
  v15 = v6;
  v16 = v4;
  v17 = 0x3FF0000000000000;
  v18 = 1;
  v19 = v6;
  v20 = v4;
  GTMTLReplayController_restoreRenderCommandEncoder(v11, v13, v2, v10);

  v12 = *MEMORY[0x277D85DE8];
}

void GTMTLReplayController_restoreDefaultRenderCommandEncoder4(void *a1, unint64_t a2, unint64_t a3, uint64_t *a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v10 = a5;
  v12 = a1;
  bzero(v14, 0x750uLL);
  v13 = v9;
  v16 = 1065353216;
  v17 = 1;
  memset_pattern16(v15, &unk_24DA90D30, 0x40uLL);
  v18 = 1028;
  v15[8] = 0x706050403020100;
  v14[7] = 1;
  *&v14[10] = a2;
  *&v14[11] = a3;
  v14[13] = 0x3FF0000000000000;
  v14[104] = 1;
  v14[107] = a2;
  v14[108] = a3;
  GTMTLReplayController_restoreMTL4RenderCommandEncoder(v12, &v13, a4, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void GTMTLReplayController_restoreMTL4RenderCommandEncoder(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a4;
  v43 = v7;
  v9 = *(a3 + 56);
  if (*(a2 + 56) != v9 && v9 != 0)
  {
    v11 = [v8 renderPipelineStateForKey:?];
    [v43 setRenderPipelineState:v11];
  }

  if (*(a2 + 1871) != *(a3 + 1871))
  {
    [v43 setTriangleFillMode:?];
  }

  if (*(a2 + 1870) != *(a3 + 1870))
  {
    [v43 setFrontFacingWinding:?];
  }

  if (*(a2 + 1868) != *(a3 + 1868))
  {
    [v43 setCullMode:?];
  }

  v12 = *(a3 + 1360);
  if (*(a2 + 1360) != v12 && v12)
  {
    v13 = [v8 depthStencilStateForKey:?];
    [v43 setDepthStencilState:v13];
  }

  if (*(a2 + 1448) != *(a3 + 1448))
  {
    v14 = *(a3 + 1452);
LABEL_19:
    v15 = *(a3 + 1456);
    [v43 setDepthBias:v43 slopeScale:? clamp:?];
    goto LABEL_20;
  }

  if (*(a2 + 1452) != *(a3 + 1452) || *(a2 + 1456) != *(a3 + 1456))
  {
    goto LABEL_19;
  }

LABEL_20:
  if (*(a2 + 1869) != *(a3 + 1869))
  {
    [v43 setDepthClipMode:?];
  }

  if (*(a2 + 1476) == *(a3 + 1476))
  {
    if (*(a2 + 1480) == *(a3 + 1480))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v16 = *(a3 + 1480);
  }

  [v43 setStencilFrontReferenceValue:v43 backReferenceValue:?];
LABEL_27:
  v17 = *(a3 + 64);
  if (v17 != *(a2 + 64) || memcmp((a3 + 72), (a2 + 72), 48 * v17))
  {
    [v43 setViewports:a3 + 72 count:{v17, v43}];
  }

  v18 = *(a3 + 840);
  if (v18 != *(a2 + 840) || memcmp((a3 + 848), (a2 + 848), 32 * v18))
  {
    [v43 setScissorRects:a3 + 848 count:{v18, v43}];
  }

  if (*(a2 + 1460) != *(a3 + 1460) || *(a2 + 1468) != *(a3 + 1468))
  {
    LODWORD(v19) = *(a3 + 1460);
    LODWORD(v20) = *(a3 + 1464);
    LODWORD(v21) = *(a3 + 1468);
    LODWORD(v22) = *(a3 + 1472);
    [v43 setBlendColorRed:v19 green:v20 blue:v21 alpha:v22];
  }

  if (*(a2 + 1872) == *(a3 + 1872))
  {
    if (*(a2 + 1864) == *(a3 + 1864))
    {
      goto LABEL_43;
    }
  }

  else
  {
    v24 = *(a3 + 1864);
  }

  [v43 setVisibilityResultMode:v43 offset:?];
LABEL_43:
  for (i = 0; i != 31; ++i)
  {
    v26 = *(a3 + 1736 + 4 * i);
    if (v26 != *(a2 + 1736 + 4 * i))
    {
      [v43 setObjectThreadgroupMemoryLength:v26 atIndex:i];
    }
  }

  if (GT_SUPPORT_0)
  {
    v27 = 0;
    v28 = (a2 + 1612);
    v29 = (a3 + 1612);
    do
    {
      if (*(v28 - 31) == *(v29 - 31))
      {
        if (*v28 == *v29)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v30 = *v29;
      }

      [v43 setThreadgroupMemoryLength:v43 offset:? atIndex:?];
LABEL_54:
      ++v29;
      ++v27;
      ++v28;
    }

    while (v27 != 31);
  }

  for (j = 0; j != 8; ++j)
  {
    if (*(a2 + 1376 + 8 * j) != *(a3 + 1376 + 8 * j))
    {
      [v43 setColorStoreAction:? atIndex:?];
    }
  }

  if (*(a2 + 1873) != *(a3 + 1873))
  {
    [v43 setDepthStoreAction:?];
  }

  if (*(a2 + 1874) != *(a3 + 1874))
  {
    [v43 setStencilStoreAction:?];
  }

  if (*(a2 + 1484) != *(a3 + 1484))
  {
    [v43 setLineWidth:?];
  }

  for (k = 0; k != 5; ++k)
  {
    v33 = *(a3 + 8 + 8 * k);
    if (*(a2 + 8 + 8 * k) != v33 && v33 != 0)
    {
      v35 = [v8 mtl4ArgumentTableForKey:?];
      [v43 setArgumentTable:v35 atStages:(1 << k)];
    }
  }

  v36 = *(a3 + 1440);
  v44 = *(a2 + 1440);
  v45[0] = v36;
  if (v36 == v44)
  {
    v37 = 1;
    while (v37 != 8)
    {
      v38 = v37;
      v39 = *(v45 + v37);
      v40 = *(&v45[-1] + v37++);
      if (v39 != v40)
      {
        if ((v38 - 1) >= 7)
        {
          break;
        }

        goto LABEL_77;
      }
    }
  }

  else
  {
LABEL_77:
    v41 = MakeMTLLogicalToPhysicalColorAttachmentMap(v36);
    [v43 setColorAttachmentMap:v41];
  }

  v42 = *MEMORY[0x277D85DE8];
}

void GTMTLReplayController_restoreComputeCommandEncoder(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  v10 = *(a3 + 8);
  if (*(a2 + 8) != v10 && v10 != 0)
  {
    v12 = [v8 computePipelineStateForKey:?];
    [v7 setComputePipelineState:v12];
  }

  v13 = CompareObjectIdRange(a2 + 32, a3 + 32, 0x1FuLL);
  v15 = v14;
  v70 = a2;
  v16 = CompareObjectIdRange(a2 + 280, a3 + 280, 0x1FuLL);
  v18.length = v17;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = v16;
  }

  if (v17)
  {
    v18.location = v16;
  }

  else
  {
    v18.location = v19;
  }

  v81.location = v19;
  v81.length = v15;
  v20 = NSUnionRange(v81, v18);
  v71 = a3;
  if (v20.length)
  {
    location = v20.location;
    length = v20.length;
    v68 = a3 + 280;
    v69 = a3 + 32;
    v23 = (a3 + 16);
    v24 = a3 + 24;
    v67 = a3 + 528;
    v25 = (a3 + 8 * v20.location + 280);
    do
    {
      if ((v23[location >> 6] & (1 << location)) == 0 && *(v25 - 31) != 0)
      {
        v27 = [v9 resourceForKey:?];
        if ([v27 conformsToProtocol:&unk_2860F61B0])
        {
          v28 = *v25;
          if ((*(v24 + 8 * (location >> 6)) & (1 << location)) != 0)
          {
            [v7 setBuffer:v27 offset:v28 attributeStride:v25[31] atIndex:location];
          }

          else
          {
            [v7 setBuffer:v27 offset:v28 atIndex:location];
          }
        }

        else if ([v27 conformsToProtocol:&unk_2860F7610])
        {
          [v7 setAccelerationStructure:v27 atBufferIndex:location];
        }

        else if ([v27 conformsToProtocol:&unk_2860F77A8])
        {
          [v7 setIntersectionFunctionTable:v27 atBufferIndex:location];
        }

        else if ([v27 conformsToProtocol:&unk_2860F7528])
        {
          [v7 setVisibleFunctionTable:v27 atBufferIndex:location];
        }
      }

      ++location;
      ++v25;
      --length;
    }

    while (length);
    v29 = 0;
    a3 = v71;
    do
    {
      v30 = *v23 >> v29;
      if (!v30)
      {
        break;
      }

      v31 = __clz(__rbit64(v30));
      v32 = v29 + v31;
      if ((*(v24 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v29 + v31)))
      {
        [v7 setBytes:*(v69 + 8 * v32) length:*(v68 + 8 * v32) attributeStride:*(v67 + 8 * v32) atIndex:v32];
      }

      else
      {
        [v7 setBytes:*(v69 + 8 * v32) length:*(v68 + 8 * v32) atIndex:v32];
      }

      v29 = v32 + 1;
    }

    while (v32 < 63);
  }

  v33 = CompareObjectIdRange(v70 + 776, a3 + 776, 0x80uLL);
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    bzero(&v72, 0x400uLL);
    v37 = a3;
    v38 = 0;
    v39 = v37 + 8 * v35 + 776;
    do
    {
      v40 = [v9 textureForKey:*(v39 + 8 * v38)];
      v41 = *(&v72 + v38);
      *(&v72 + v38) = v40;

      ++v38;
    }

    while (v36 != v38);
    [v7 setTextures:&v72 withRange:{v35, v36}];
    for (i = 1016; i != -8; i -= 8)
    {
    }

    a3 = v71;
  }

  v43 = CompareObjectIdRange(v70 + 1800, a3 + 1800, 0x10uLL);
  v45 = v44;
  v46 = a3 + 2120;
  v47 = CompareFloatRange(v70 + 2120, a3 + 2120, 0x10uLL);
  v49.length = v48;
  if (v45)
  {
    v50 = v43;
  }

  else
  {
    v50 = v47;
  }

  if (v48)
  {
    v49.location = v47;
  }

  else
  {
    v49.location = v50;
  }

  v82.location = v50;
  v82.length = v45;
  v51 = NSUnionRange(v82, v49);
  v52 = a3 + 2184;
  v53 = CompareFloatRange(v70 + 2184, a3 + 2184, 0x10uLL);
  v55.length = v54;
  if (v51.length)
  {
    v56 = v51.location;
  }

  else
  {
    v56 = v53;
  }

  if (v54)
  {
    v55.location = v53;
  }

  else
  {
    v55.location = v56;
  }

  v83.location = v56;
  v83.length = v51.length;
  v57 = NSUnionRange(v83, v55);
  if (v57.length)
  {
    v58 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v59 = a3 + 8 * v57.location + 1800;
    v72 = 0u;
    v73 = 0u;
    do
    {
      v60 = [v9 samplerStateForKey:*(v59 + 8 * v58)];
      v61 = *(&v72 + v58);
      *(&v72 + v58) = v60;

      ++v58;
    }

    while (v57.length != v58);
    [v7 setSamplerStates:&v72 lodMinClamps:v46 + 4 * v57.location lodMaxClamps:v52 + 4 * v57.location withRange:{v57.location, v57.length}];
    for (j = 120; j != -8; j -= 8)
    {
    }

    a3 = v71;
  }

  v63 = 0;
  v64 = a3 + 1984;
  do
  {
    if (*(v70 + 1984 + 4 * v63) != *(v64 + 4 * v63))
    {
      [v7 setThreadgroupMemoryLength:? atIndex:?];
    }

    ++v63;
  }

  while (v63 != 31);
  if ((GT_SUPPORT_0 & 0x200) != 0 && *(v71 + 2108) && *(v71 + 2112))
  {
    [v7 setImageblockWidth:? height:?];
  }

  if (memcmp((v70 + 1928), (v71 + 1928), 0x30uLL))
  {
    v65 = *(v71 + 1944);
    v72 = *(v71 + 1928);
    v73 = v65;
    v74 = *(v71 + 1960);
    [v7 setStageInRegion:&v72];
  }

  v66 = *MEMORY[0x277D85DE8];
}

uint64_t GTMTLReplayController_renderPassDescriptor(uint64_t a1)
{
  v2 = *(*a1 + 88) + *(a1 + 22560);
  v3 = *(a1 + 22536);
  if ((GTFenum_isMTLCommandEncoder(v3) && ((v4 = a1 + 11368, !v3) || *(a1 + 11392) > v2) || (v5 = *(a1 + 11360), GTFenum_isMTLCommandEncoder(v5)) && ((v4 = a1 + 192, !v5) || *(a1 + 216) > v2)) && (*v4 == 70 || *v4 == 65))
  {
    return *(v4 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTLReplayController_renderPassDescriptor4(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 11360) - 95;
  if (v2 <= 0xA && ((0x409u >> v2) & 1) != 0)
  {
    if (*(a1 + 216) > *(*a1 + 88) + *(a1 + 22560) && *(a1 + 192) == 98)
    {
      return *(a1 + 248);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void GTMTLReplayController_updateCommandEncoder(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(*a1 + 16);
  v6 = *(a2 + 8);
  ConstructorType = GTFenum_getConstructorType(v6);
  if (!ConstructorType)
  {
    ConstructorType = GTFenum_getReceiverType(v6);
  }

  if (ConstructorType - 95) <= 0xA && ((0x409u >> (ConstructorType - 95)))
  {
    v8 = a1 + 192;
    GTMTL4SMCommandEncoder_processTraceFunc(a1 + 192, a2, v5);
    *(a1 + 11360) = *(a1 + 192);
  }

  else if (GTFenum_isMTLCommandEncoder(ConstructorType))
  {
    v9 = GTFenum_isParallelCommandEncoderCall(v6);
    v10 = 192;
    if (v9)
    {
      v10 = 11368;
    }

    v8 = a1 + v10;
    GTMTLSMCommandEncoder_processTraceFunc(a1 + v10, a2, v5);
    *(v8 + 11168) = *v8;
  }

  else
  {
    v8 = 0;
  }

  v11 = *(a2 + 8);
  if (v11 > -15167)
  {
    if ((v11 + 15166) >= 2)
    {
      goto LABEL_34;
    }

    v14 = GTMTLReplayController_renderPassDescriptor4(a1);
    v15 = *(a1 + 8);
    v16 = [v15 renderPassDescriptorMap];
    v17 = MakeMTL4RenderPassDescriptor(v14, v16);

    v33 = 0;
    v34 = 0;
    if ((GT_SUPPORT_0 & 0x400) != 0 && ([v17 rasterizationRateMap], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v18;
      v20 = [v17 renderTargetWidth];
      v34 = v20;
      v21 = [v17 renderTargetHeight];
      v33 = v21;
      if (!v20)
      {
        [v19 screenSize];
        v20 = v30;
        v34 = v30;
      }

      if (!v21)
      {
        [v19 screenSize];
        v21 = v29;
        v33 = v29;
      }
    }

    else
    {
      v28 = [v15 defaultDevice];
      [v17 validate:v28 width:&v34 height:&v33];

      v19 = 0;
      v21 = v33;
      v20 = v34;
    }

    *(a1 + 22544) = v20;
    *(a1 + 22552) = v21;
    *(v8 + 120) = 1;
    *(v8 + 144) = v20;
    *(v8 + 152) = v21;
    *(v8 + 168) = 0x3FF0000000000000;
    *(v8 + 896) = 1;
    *(v8 + 920) = v20;
    *(v8 + 928) = v21;
LABEL_33:

    goto LABEL_34;
  }

  if (v11 == -16353 || v11 == -16351)
  {
    v22 = GTMTLReplayController_renderPassDescriptor(a1);
    v15 = *(a1 + 8);
    v23 = [v15 renderPassDescriptorMap];
    v17 = MakeMTLRenderPassDescriptor(v22, v23);

    v33 = 0;
    v34 = 0;
    if ((GT_SUPPORT_0 & 0x400) != 0 && ([v17 rasterizationRateMap], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v24;
      v25 = [v17 renderTargetWidth];
      v34 = v25;
      v26 = [v17 renderTargetHeight];
      v33 = v26;
      if (!v25)
      {
        [v19 screenSize];
        v25 = v32;
        v34 = v32;
      }

      if (!v26)
      {
        [v19 screenSize];
        v26 = v31;
        v33 = v31;
      }
    }

    else
    {
      v27 = [v15 defaultDevice];
      [v17 validate:v27 width:&v34 height:&v33];

      v19 = 0;
      v26 = v33;
      v25 = v34;
    }

    *(a1 + 22544) = v25;
    *(a1 + 22552) = v26;
    *(v8 + 8608) = 1;
    *(v8 + 8632) = v25;
    *(v8 + 8640) = v26;
    *(v8 + 8656) = 0x3FF0000000000000;
    *(v8 + 9384) = 1;
    *(v8 + 9408) = v25;
    *(v8 + 9416) = v26;
    goto LABEL_33;
  }

  if (v11 == -16286)
  {
    v12 = *(a1 + 22544);
    v13 = *(a1 + 22552);
    *(v8 + 8608) = 1;
    *(v8 + 8632) = v12;
    *(v8 + 8640) = v13;
    *(v8 + 8656) = 0x3FF0000000000000;
    *(v8 + 9384) = 1;
    *(v8 + 9408) = v12;
    *(v8 + 9416) = v13;
  }

LABEL_34:
  objc_autoreleasePoolPop(v4);
}

void GTMTLReplayController_playTo(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 20480;
  if (*(a1 + 22560) < a2)
  {
    v5 = *(*a1 + 128);
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(v5 + 24) + (*(v2 + 2080) << 6);
      if (GTFenum_isBeginCommandBuffer(*(v7 + 8)))
      {
        GTMTLReplayController_restoreCommandBuffer(a1, v7);
      }

      GTMTLReplayController_updateCommandEncoder(a1, v7);
      if (*(v7 + 8) >> 2 != 1073737833 || (qword_27F09CF90 & 0x100000000) != 0)
      {
        GTMTLReplayController_defaultDispatchFunction(a1, v7);
      }

      else
      {
        GTMTLReplayController_executeCommandsInBuffer(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL);
      }

      objc_autoreleasePoolPop(v6);
      v8 = (*(v2 + 2080) + 1);
      *(v2 + 2080) = v8;
    }

    while (v8 < a2);
  }

  *(v2 + 2084) = 0;
}

void GTMTLReplayController_executeCommandsInBuffer(uint64_t *a1, unint64_t *a2, NSUInteger a3, NSUInteger a4)
{
  v8 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  GetExecuteCommandsInBufferArgs(&v36, a2, *(v8 + 16));
  v40.location = *(&v36 + 1);
  v40.length = v37;
  v39.location = a3;
  v39.length = a4;
  v9 = NSIntersectionRange(v39, v40);
  if (v9.length)
  {
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    p = *a1[23];
    GTMTLSMContext_indirectCommandBufferResources(v34 + 8, *(v8 + 40), *a2, p);
    Object = GTMTLSMContext_getObject(**(v8 + 40), v36, *a2);
    GTMTLCreateIndirectCommandEncoder(&v21, Object[14]);
    v11 = a1[1];
    v12 = [v11 defaultDevice];
    v13 = v21;
    v14 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v21);
    v15 = [v12 newIndirectCommandBufferWithDescriptor:v14 maxCommandCount:v9.length options:0];

    v16 = *(&v37 + 1) + *&v34[0] * v9.location;
    v17 = [v11 restoreIndirectCommandBufferDataMap];
    GTMTLEncodeIndirectCommandBufferWithRange(v15, 0, v9.length, v13, v16, v34 + 1, v17);

    v18 = *(a1 + 2840);
    if (v18 == 28)
    {
      if ((GT_SUPPORT_0 & 0x10) != 0)
      {
        v19 = [v11 computeCommandEncoderForKey:a1[25]];
        goto LABEL_7;
      }
    }

    else if (v18 == 70)
    {
      v19 = [v11 renderCommandEncoderForKey:a1[25]];
LABEL_7:
      v20 = v19;
      [v19 executeCommandsInBuffer:v15 withRange:{0, v9.length, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33}];
    }

    apr_pool_clear(p);
  }
}

uint64_t GTMTLReplayController_debugSubCommandStop(uint64_t a1, unsigned int a2, uint64_t a3)
{
  [g_activityLog enterDebugFuncStopFromIndex:*(a1 + 22560) toIndex:a2 | (a3 << 32)];
  GTMTLReplayController_debugSubCommand(a1, a2, a3);
  v6 = *(a1 + 22560);
  ExclusiveRange = GroupBuilder_findExclusiveRange(*(*(*a1 + 120) + 12), *(*(*a1 + 120) + 24), (v6 - 1));
  if (ExclusiveRange && GTFenum_isBeginCommandBuffer(ExclusiveRange[5]))
  {
    GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(a1, v6);
  }

  [*(a1 + 8) commitCommandBuffers:a1 + 40];
  v8 = g_activityLog;

  return [v8 leaveActivity];
}

_DWORD *GTMTLReplayController_debugSubCommand(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v158 = *MEMORY[0x277D85DE8];
  v5 = result + 5120;
  v6 = *(*result + 128);
  v7 = *(v6 + 12);
  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  if (result[5640] != v8)
  {
    v10 = 0;
LABEL_8:
    if (s_logUsingOsLog == 1)
    {
      v11 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 67109376;
        HIDWORD(buf[0]) = v8;
        LOWORD(buf[1]) = 1024;
        *(&buf[1] + 2) = v3;
        _os_log_impl(&dword_24D764000, v11, OS_LOG_TYPE_INFO, "debugSubCommand - functionIndex: %u, subCommandIndex: %u", buf, 0xEu);
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85E08];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"debugSubCommand - functionIndex: %u, subCommandIndex: %u", v8, a3];
      fprintf(v12, "%s\n", [v13 UTF8String]);
    }

    v14 = v8 < v5[520] || v10;
    if ((v14 & 1) != 0 || (qword_27F09CF90 & 0x2000) != 0)
    {
      GTMTLReplayController_rewind(v4);
    }

    v15 = *(*v4 + 120);
    v16 = *(v15 + 12);
    v141 = v15;
    v142 = (v8 - 1);
    v17 = *(v15 + 24);
    InclusiveRange = GroupBuilder_findInclusiveRange(v16, v17, v142);
    v19 = GroupRange_encoderWithAttachments(InclusiveRange);
    v20 = v5[520];
    ExclusiveRange = GroupBuilder_findExclusiveRange(v16, v17, v20 - 1);
    if (ExclusiveRange)
    {
      v22 = ExclusiveRange;
      v23 = GroupRange_encoderWithAttachments(ExclusiveRange);
      v24 = v23;
      if (v23)
      {
        if (*v23 >= v20)
        {
          v25 = 2;
        }

        else
        {
          v25 = 3;
        }

        if (v23 == v19)
        {
          v26 = v25;
        }

        else
        {
          v26 = *v23 < v20;
        }
      }

      else
      {
        v26 = 0;
      }

      GTMTLReplayController_restoreGroup(v4, v22, v26);
    }

    else
    {
      v24 = 0;
    }

    v27 = (v8 - 1);
    if (v8 && (v28 = *(v6 + 24)) != 0)
    {
      v29 = v28 + (v142 << 6);
      if (*(v29 + 8) >> 2 == 1073737833)
      {
        v30 = (v28 + (v142 << 6));
      }

      else
      {
        v30 = 0;
      }

      v144 = v30;
    }

    else
    {
      v29 = 0;
      v144 = 0;
    }

    v31 = v5[520];
    if (v31)
    {
      v32 = *(v6 + 24);
      if (v32)
      {
        v33 = (v32 + ((v31 - 1) << 6));
        if (*(v33 + 2) >> 2 == 1073737833)
        {
          v34 = v5[521];
          v35 = (v34 + 1);
          v36 = (v3 - v34);
          v37 = v144;
          v38 = v33 == v144;
          if (v33 == v144)
          {
            v37 = 0;
          }

          v144 = v37;
          if (v38)
          {
            v39 = v36;
          }

          else
          {
            v39 = ~v35;
          }

          GTMTLReplayController_executeCommandsInBuffer(v4, v33, v35, v39);
        }
      }
    }

    if (v19)
    {
      if (v24 != v19)
      {
        v140 = v8;
        GTMTLReplayController_playTo(v4, *v19);
        GTMTLReplayController_updateCommandEncoder(v4, *(v6 + 24) + (*v19 << 6));
        v40 = *(v4 + 11360) - 95;
        if (v40 > 0xA || ((0x409u >> v40) & 1) == 0)
        {
          v139 = v29;
          GTMTLReplayController_tileMemoryFree(v4);
          v41 = GTMTLReplayController_renderPassDescriptor(v4);
          v42 = *(*v4 + 88);
          v43 = v5[520];
          for (i = 8; i != 520; i += 64)
          {
            AddMemorylessTexture(v4, *(v41 + i), v42 + v43);
          }

          AddMemorylessTexture(v4, *(v41 + 680), v42 + v43);
          AddMemorylessTexture(v4, *(v41 + 728), v42 + v43);
          v45 = 0;
          if (*(v41 + 814))
          {
            v29 = v139;
            if (*(v41 + 812))
            {
              v45 = (*(v41 + 812) + *(v4 + 22552) - 1) / *(v41 + 812) * ((*(v41 + 814) + *(v4 + 22544) - 1) / *(v41 + 814));
            }
          }

          else
          {
            v29 = v139;
          }

          if (GT_SUPPORT_0)
          {
            if (v45)
            {
              v137 = *(v41 + 800);
              if (!(((v137 + *(v41 + 804)) < 0) ^ __OFADD__(v137, *(v41 + 804)) | (v137 + *(v41 + 804) == 0)))
              {
                v131 = *(v41 + 804);
                v134 = v5;
                v135 = v3;
                v136 = v45;
                v143 = [*(v4 + 8) defaultDevice];
                v46 = objc_alloc_init(MEMORY[0x277CD7070]);
                v129 = v41;
                FillAttachmentPixelFormats(v41, *(*v4 + 40), v42 + v43, v46);
                v47 = 0;
                v48 = 0;
                do
                {
                  v49 = v46;
                  v50 = [v46 colorAttachments];
                  v51 = [v50 objectAtIndexedSubscript:v47];
                  v52 = [v51 pixelFormat];

                  if (v52)
                  {
                    v155[v48] = v52;
                    v53 = &buf[7 * v48];
                    GTMTLPixelFormatGetInfoForDevice(v153, v143, v52);
                    v54 = v153[1];
                    *v53 = v153[0];
                    *(v53 + 1) = v54;
                    *(v53 + 2) = v153[2];
                    v53[6] = v154;
                    ++v48;
                  }

                  ++v47;
                  v46 = v49;
                }

                while (v47 != 8);
                [v49 rasterSampleCount];
                v55 = (MTLPixelFormatComputeTotalSizeUsed() + 7) & 0xFFFFFFFFFFFFFFF8;
                v56 = objc_alloc_init(MEMORY[0x277CD6D10]);
                v133 = v56;
                if (v137 <= 0)
                {
                  v130 = 0;
                }

                else
                {
                  v57 = v56;
                  v152 = @"THREADGROUP_MEMORY_LENGTH";
                  v58 = [MEMORY[0x277CCABB0] numberWithInt:v137];
                  *&v153[0] = v58;
                  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:&v152 count:1];
                  [v57 setPreprocessorMacros:v59];

                  v151 = 0;
                  v60 = [v143 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\n\nstruct ThreadgroupData { uint8_t data[THREADGROUP_MEMORY_LENGTH]; };\n\nkernel void ThreadgroupStore(ushort2 threadgroup_position_in_grid [[ threadgroup_position_in_grid ]] options:\n                                ushort2 threadgroups_per_grid [[ threadgroups_per_grid ]] error:{\n                                device ThreadgroupData* buffer [[ buffer(0) ]], \n                                const threadgroup ThreadgroupData& threadgroupData [[ threadgroup(0) ]])\n{\n   ushort i = (threadgroup_position_in_grid.y * threadgroups_per_grid.x) + threadgroup_position_in_grid.x;\n   for (ushort j = 0; j < THREADGROUP_MEMORY_LENGTH; j++)\n       buffer[i].data[j] = threadgroupData.data[j];\n}\n\nkernel void ThreadgroupLoad(ushort2 threadgroup_position_in_grid [[ threadgroup_position_in_grid ]], \n                                ushort2 threadgroups_per_grid [[ threadgroups_per_grid ]], \n                                const device ThreadgroupData* buffer [[ buffer(0) ]], \n                                threadgroup ThreadgroupData& threadgroupData [[ threadgroup(0) ]])\n{\n   ushort i = (threadgroup_position_in_grid.y * threadgroups_per_grid.x) + threadgroup_position_in_grid.x;\n   for (ushort j = 0; j < THREADGROUP_MEMORY_LENGTH; j++)\n       threadgroupData.data[j] = buffer[i].data[j];\n}\n\nkernel void Fence()\n{\n}\n", v57, &v151}];
                  v61 = v151;
                  v62 = [v60 newFunctionWithName:@"ThreadgroupStore"];
                  [v49 setTileFunction:v62];

                  v150 = v61;
                  v63 = [v143 newRenderPipelineStateWithTileDescriptor:v49 options:0 reflection:0 error:&v150];
                  v64 = v150;

                  v65 = *(v4 + 88);
                  *(v4 + 88) = v63;

                  v66 = [v60 newFunctionWithName:@"ThreadgroupLoad"];
                  [v49 setTileFunction:v66];

                  v149 = v64;
                  v67 = [v143 newRenderPipelineStateWithTileDescriptor:v49 options:0 reflection:0 error:&v149];
                  v68 = v149;

                  v69 = *(v4 + 96);
                  *(v4 + 96) = v67;

                  v70 = [v60 newFunctionWithName:@"Fence"];
                  [v49 setTileFunction:v70];

                  v148 = v68;
                  v71 = [v143 newRenderPipelineStateWithTileDescriptor:v49 options:0 reflection:0 error:&v148];
                  v130 = v148;

                  v72 = *(v4 + 104);
                  *(v4 + 104) = v71;

                  v73 = [v143 newBufferWithLength:v136 * v137 options:32];
                  v74 = *(v4 + 128);
                  *(v4 + 128) = v73;
                }

                v29 = v139;
                v75 = v131 - v55;
                if (v131 <= v55)
                {
                  v3 = v135;
                  v106 = v143;
                  v91 = v133;
                  v100 = v130;
                }

                else
                {
                  v76 = 8;
                  if ((v75 & 7) != 0)
                  {
                    do
                    {
                      v76 /= 2;
                    }

                    while (v75 % v76);
                  }

                  v138 = v131 - v55;
                  v77 = v75 / v76;
                  v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v75 / v76];
                  v79 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v77];
                  if (v77 >= 1)
                  {
                    v80 = 0;
                    v81 = (8 * v76);
                    do
                    {
                      v82 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"uint%d_t _%d", v81, v80];
                      [v78 addObject:v82];

                      v83 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(dest)->_%d = (src)->_%d", v80, v80];
                      [v79 addObject:v83];

                      v80 = (v80 + 1);
                    }

                    while (v77 != v80);
                  }

                  v155[0] = @"IMAGEBLOCK_SAMPLE_MEMBERS";
                  v84 = objc_alloc(MEMORY[0x277CCACA8]);
                  v132 = v78;
                  v127 = [v78 componentsJoinedByString:@" "];;
                  v85 = [v84 initWithFormat:@"%@", v127];
                  buf[0] = v85;
                  v155[1] = @"IMAGEBLOCK_SAMPLE_COPY(dest,src)";
                  v86 = objc_alloc(MEMORY[0x277CCACA8]);
                  v128 = v79;
                  v87 = [v79 componentsJoinedByString:@" "];;
                  v88 = [v86 initWithFormat:@"%@", v87];
                  buf[1] = v88;
                  v155[2] = @"SAMPLE_COUNT";
                  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v49, "rasterSampleCount")}];
                  v157 = v89;
                  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v155 count:3];
                  v91 = v133;
                  [v133 setPreprocessorMacros:v90];

                  v147 = v130;
                  v92 = [v143 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\n\nstruct ImageblockData { IMAGEBLOCK_SAMPLE_MEMBERS; };\n\nkernel void ImageblockStore(ushort2 threadgroup_position_in_grid [[ threadgroup_position_in_grid ]] options:\n                            ushort2 threadgroups_per_grid [[ threadgroups_per_grid ]] error:{\n                            ushort2 threads_per_threadgroup [[ threads_per_threadgroup ]], \n                            ushort thread_index_in_threadgroup [[ thread_index_in_threadgroup ]], \n                            ushort2 thread_position_in_threadgroup [[ thread_position_in_threadgroup ]], \n                            device ImageblockData* buffer [[ buffer(0) ]], \n                            const imageblock<ImageblockData, imageblock_layout_explicit> ib)\n{\n   uint i = (threadgroup_position_in_grid.y * threadgroups_per_grid.x) + threadgroup_position_in_grid.x;\n   i *= threads_per_threadgroup.x * threads_per_threadgroup.y;\n   i += thread_index_in_threadgroup;\n   for (ushort j = 0; j < SAMPLE_COUNT; j++)\n   {\n       const threadgroup_imageblock ImageblockData* src = ib.data(thread_position_in_threadgroup, j, imageblock_data_rate::sample);\n       device ImageblockData* dest = buffer + i * SAMPLE_COUNT + j;       IMAGEBLOCK_SAMPLE_COPY(dest, src);\n   }\n}\n\nkernel void ImageblockLoad(ushort2 threadgroup_position_in_grid [[ threadgroup_position_in_grid ]], \n                           ushort2 threadgroups_per_grid [[ threadgroups_per_grid ]], \n                           ushort2 threads_per_threadgroup [[ threads_per_threadgroup ]], \n                           ushort thread_index_in_threadgroup [[ thread_index_in_threadgroup ]], \n                           ushort2 thread_position_in_threadgroup [[ thread_position_in_threadgroup ]], \n                           const device ImageblockData* buffer [[ buffer(0) ]], \n                           imageblock<ImageblockData, imageblock_layout_explicit> ib)\n{\n   uint i = (threadgroup_position_in_grid.y * threadgroups_per_grid.x) + threadgroup_position_in_grid.x;\n   i *= threads_per_threadgroup.x * threads_per_threadgroup.y;\n   i += thread_index_in_threadgroup;\n   for (ushort j = 0; j < SAMPLE_COUNT; j++)\n   {\n       threadgroup_imageblock ImageblockData* dest = ib.data(thread_position_in_threadgroup, j, imageblock_data_rate::sample);\n       const device ImageblockData* src = buffer + i * SAMPLE_COUNT + j;       IMAGEBLOCK_SAMPLE_COPY(dest, src);\n   }\n}\n", v133, &v147}];
                  v93 = v147;

                  [v49 setThreadgroupSizeMatchesTileSize:1];
                  v94 = [v92 newFunctionWithName:@"ImageblockStore"];
                  [v49 setTileFunction:v94];

                  v146 = v93;
                  v95 = [v143 newRenderPipelineStateWithTileDescriptor:v49 options:0 reflection:0 error:&v146];
                  v96 = v146;

                  v97 = *(v4 + 112);
                  *(v4 + 112) = v95;

                  v98 = [v92 newFunctionWithName:@"ImageblockLoad"];
                  [v49 setTileFunction:v98];

                  v145 = v96;
                  v99 = [v143 newRenderPipelineStateWithTileDescriptor:v49 options:0 reflection:0 error:&v145];
                  v100 = v145;

                  v101 = *(v4 + 120);
                  *(v4 + 120) = v99;

                  v102 = *(v129 + 814);
                  v103 = *(v129 + 812);
                  v104 = [v49 rasterSampleCount];
                  v105 = v138 * v136 * v102;
                  v106 = v143;
                  v107 = [v143 newBufferWithLength:v105 * v103 * v104 options:32];
                  v108 = *(v4 + 136);
                  *(v4 + 136) = v107;

                  v5 = v134;
                  v3 = v135;
                  v29 = v139;
                }

                v27 = v142;
              }
            }
          }
        }

        v109 = *v19;
        GTMTLReplayController_restoreCommandEncoder();
        v5[520] = *v19 + 1;
        v8 = v140;
      }
    }

    else
    {
      GTMTLReplayController_tileMemoryFree(v4);
    }

    if (v144)
    {
      GTMTLReplayController_playTo(v4, v27);
      GTMTLReplayController_executeCommandsInBuffer(v4, v144, 0, (v3 + 1));
      v5[520] = v8;
    }

    else
    {
      GTMTLReplayController_playTo(v4, v8);
    }

    v110 = GroupBuilder_findInclusiveRange(*(v141 + 12), *(v141 + 24), v27);
    v111 = GroupRange_encoderWithIndirectResources(v110);
    if (v111)
    {
      GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v4, *(v111 + 4));
    }

    if (!v19 || (GTFenum_isEndEncoding(*(v29 + 8)) & 1) != 0 || (GT_SUPPORT_0 & 1) == 0)
    {
      goto LABEL_109;
    }

    v112 = *(v4 + 11360);
    v113 = *(v4 + 8);
    if (v112 - 95) <= 0xA && ((0x409u >> (v112 - 95)))
    {
      v114 = GTMTLReplayController_renderPassDescriptor4(v4);
      v115 = [v113 defaultDevice];
      v116 = objc_opt_new();
      [v116 setMaxBufferBindCount:1];
      v117 = [v115 newArgumentTableWithDescriptor:v116 error:0];
      if (*(v4 + 11360))
      {
        v118 = *(v4 + 200);
      }

      else
      {
        v118 = 0;
      }

      v123 = [*(v4 + 8) mtl4RenderCommandEncoderForKey:v118];
      v124 = v123;
      if (*(v4 + 136))
      {
        [v123 setRenderPipelineState:*(v4 + 112)];
        [v117 setAddress:objc_msgSend(*(v4 + 136) atIndex:{"gpuAddress"), 0}];
        [v124 setArgumentTable:v117 atStages:4];
        v125 = *(v114 + 628);
        buf[0] = *(v114 + 630);
        buf[1] = v125;
      }

      else
      {
        if (!*(v4 + 128))
        {
LABEL_105:
          if (*(v4 + 128))
          {
            [v124 setRenderPipelineState:*(v4 + 88)];
            [v124 setThreadgroupMemoryLength:*(v114 + 616) offset:0 atIndex:0];
            [v117 setAddress:objc_msgSend(*(v4 + 128) atIndex:{"gpuAddress"), 0}];
            [v124 setArgumentTable:v117 atStages:4];
            *buf = vdupq_n_s64(1uLL);
            v157 = 1;
            [v124 dispatchThreadsPerTile:buf];
          }

LABEL_108:
LABEL_109:
          v5[521] = v3;
          result = [*(v4 + 24) commitCommandBuffer];
          goto LABEL_110;
        }

        [v123 setRenderPipelineState:*(v4 + 104)];
        *buf = vdupq_n_s64(1uLL);
      }

      v157 = 1;
      [v124 dispatchThreadsPerTile:buf];
      goto LABEL_105;
    }

    v119 = GTMTLReplayController_renderPassDescriptor(v4);
    if (v112)
    {
      v120 = *(v4 + 200);
    }

    else
    {
      v120 = 0;
    }

    v121 = [v113 renderCommandEncoderForKey:v120];
    v115 = v121;
    if (*(v4 + 136))
    {
      [v121 setRenderPipelineState:*(v4 + 112)];
      [v115 setTileBuffer:*(v4 + 136) offset:0 atIndex:0];
      v122 = *(v119 + 812);
      buf[0] = *(v119 + 814);
      buf[1] = v122;
    }

    else
    {
      if (!*(v4 + 128))
      {
        goto LABEL_97;
      }

      [v121 setRenderPipelineState:*(v4 + 104)];
      *buf = vdupq_n_s64(1uLL);
    }

    v157 = 1;
    [v115 dispatchThreadsPerTile:buf];
LABEL_97:
    if (*(v4 + 128))
    {
      [v115 setRenderPipelineState:*(v4 + 88)];
      [v115 setThreadgroupMemoryLength:*(v119 + 800) offset:0 atIndex:0];
      [v115 setTileBuffer:*(v4 + 128) offset:0 atIndex:0];
      *buf = vdupq_n_s64(1uLL);
      v157 = 1;
      [v115 dispatchThreadsPerTile:buf];
    }

    goto LABEL_108;
  }

  v9 = result[5641];
  if (v9 != a3)
  {
    v10 = v9 >= a3;
    goto LABEL_8;
  }

LABEL_110:
  v126 = *MEMORY[0x277D85DE8];
  return result;
}

void GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  if ((*(*a1 + 352) & 2) == 0)
  {

    _restoreCommandEncoderIndirectResourceUsage(a1);
    return;
  }

  InclusiveRange = GroupBuilder_findInclusiveRange(*(v3[15] + 12), *(v3[15] + 24), a2);
  if (InclusiveRange)
  {
    v6 = InclusiveRange;
    while (1)
    {
      v7 = v6[5];
      if ((GTFenum_isBeginCommandBuffer(v7) & 1) != 0 || GTFenum_getConstructorType(v7) == 51)
      {
        break;
      }

      v8 = v6[2];
      if (v8)
      {
        v6 -= 6 * v8;
      }

      else
      {
        v6 = 0;
      }

      if (!v8)
      {
        goto LABEL_13;
      }
    }

    v9 = *(v3[16] + 24) + (*v6 << 6);
  }

  else
  {
LABEL_13:
    v9 = 0;
  }

  FuncStreamRef = GTTraceFunc_getFuncStreamRef(v9, v3[2]);
  if (FuncStreamRef)
  {
    entry = find_entry(v3[21], &FuncStreamRef, 8uLL, 0);
    if (*entry)
    {
      v11 = *(*entry + 32);
      if (v11)
      {
        v42 = v9;
        v12 = *(*(v11 + 24) + 48);
        v13 = **(a1 + 184);
        v14 = apr_palloc(v13, 8 * v12);
        v15 = v14;
        if (v14)
        {
          bzero(v14, 8 * v12);
        }

        v45 = v15;
        v16 = &v15[8 * v12];
        v17 = 8 * *(*(v3[5] + 296) + 12);
        v18 = apr_palloc(v13, v17 + 8);
        v19 = v18;
        if (v18)
        {
          bzero(v18, v17 + 8);
        }

        v20 = *(v11 + 24);
        v21 = *(a1 + 8);
        *(v20 + 24) = 0;
        *(v20 + 32) = 0;
        *(v20 + 16) = v20;
        *(v20 + 40) = 0;
        v22 = apr_hash_next((v20 + 16));
        if (v22)
        {
          v44 = v16;
          v41 = v13;
          v23 = 0;
          v43 = 0;
          v24 = 0;
          while (1)
          {
            v25 = *(*(v22 + 1) + 32);
            v26 = *(v25 + 2);
            if (v26 > 79)
            {
              break;
            }

            v27 = (v26 - 16);
            if (v27 <= 0x38)
            {
              if (((1 << v27) & 0x120000000041) == 0)
              {
                if (v27 != 34)
                {
                  if (v27 == 56)
                  {
                    v19[v24++] = [v21 residencySetForKey:*v25];
                  }

                  goto LABEL_36;
                }

                v28 = [v21 heapForKey:*v25];
                if ([v28 type] != 2)
                {
                  *(v44 - 1) = v28;
                  v44 -= 8;
                  ++v43;
                }

                goto LABEL_35;
              }

LABEL_33:
              v28 = [v21 resourceForKey:*v25];
              v29 = [v28 heap];

              if (!v29)
              {
                goto LABEL_34;
              }

              goto LABEL_35;
            }

LABEL_36:
            v22 = apr_hash_next(v22);
            if (!v22)
            {
              v30 = v23;
              v22 = v43;
              v13 = v41;
              v16 = v44;
              goto LABEL_43;
            }
          }

          if (v26 != 80)
          {
            if (v26 != 83 && v26 != 101)
            {
              goto LABEL_36;
            }

            goto LABEL_33;
          }

          v28 = [v21 textureForKey:*v25];
          if ([v28 storageMode] != 3)
          {
LABEL_34:
            *&v45[8 * v23++] = v28;
          }

LABEL_35:

          goto LABEL_36;
        }

        v24 = 0;
        v30 = 0;
LABEL_43:
        v31 = GT_SUPPORT_0;
        if ((GT_SUPPORT_0 & 0x200000) != 0)
        {
          v33 = *(a1 + 144);
          [v33 removeAllAllocations];
          [v33 addAllocations:v45 count:v30];
          [v33 addAllocations:v16 count:v22];
          [v33 commit];
          v19[v24] = v33;
          if (GTFenum_isMTL4CommandBufferRelated(*(v42 + 8)))
          {
            [v21 mtl4CommandBufferForKey:FuncStreamRef];
          }

          else
          {
            [v21 commandBufferForKey:FuncStreamRef];
          }
          v34 = ;

          [v34 useResidencySets:v19 count:v24 + 1];
          goto LABEL_50;
        }

        if (*(a1 + 11360))
        {
          v32 = *(a1 + 200);
        }

        else
        {
          v32 = 0;
        }

        v35 = GroupBuilder_findInclusiveRange(*(*(*a1 + 120) + 12), *(*(*a1 + 120) + 24), (*(a1 + 22560) - 1));
        v36 = GroupRange_encoderWithIndirectResources(v35);
        if (!v36 || *v36 > a2 || v36[1] <= a2)
        {
          goto LABEL_64;
        }

        ConstructorType = GTFenum_getConstructorType(v36[5]);
        switch(ConstructorType)
        {
          case 17:
            v40 = [v21 accelerationStructureCommandEncoderForKey:v32];
            break;
          case 28:
            v40 = [v21 computeCommandEncoderForKey:v32];
            break;
          case 70:
            v38 = 7;
            if ((v31 & 1) == 0)
            {
              v38 = 3;
            }

            if ((*&v31 & 0x400000) != 0)
            {
              v39 = v38 | 0x18;
            }

            else
            {
              v39 = v38;
            }

            v34 = [v21 renderCommandEncoderForKey:v32];
            [v34 useResources:v45 count:v30 usage:1 stages:v39];
            [v34 useHeaps:v16 count:v22 stages:v39];
LABEL_50:

LABEL_64:
            apr_pool_clear(v13);

            return;
          default:
            goto LABEL_64;
        }

        v34 = v40;
        [v40 useResources:v45 count:v30 usage:1];
        [v34 useHeaps:v16 count:v22];
        goto LABEL_50;
      }
    }
  }
}

void _restoreCommandEncoderIndirectResourceUsage(_DWORD *a1)
{
  v2 = (a1[5640] - 1);
  v3 = *a1;
  InclusiveRange = GroupBuilder_findInclusiveRange(*(*(*a1 + 120) + 12), *(*(*a1 + 120) + 24), v2);
  if (InclusiveRange)
  {
    v5 = InclusiveRange;
    while (1)
    {
      ConstructorType = GTFenum_getConstructorType(v5[5]);
      if (GTFenum_isMTLCommandEncoder(ConstructorType))
      {
        break;
      }

      v7 = v5[2];
      if (v7)
      {
        v5 -= 6 * v7;
      }

      else
      {
        v5 = 0;
      }

      if (!v7)
      {
        return;
      }
    }

    if ((ConstructorType - 17) <= 0x35 && ((1 << (ConstructorType - 17)) & 0x20000000000801) != 0)
    {
      v9 = *v5;
      v10 = v2 - v9;
      if (v2 > v9)
      {
        v11 = v9 << 6;
        do
        {
          v12 = *(*(v3 + 128) + 24) + v11;
          if (GTFenum_isUseResourceCall(*(v12 + 8)))
          {
            GTMTLReplayController_defaultDispatchFunction(a1, v12);
          }

          v11 += 64;
          --v10;
        }

        while (v10);
      }
    }
  }
}

void GTMTLReplayController_restoreGroup(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = a2[2];
  if (v5)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    GTMTLReplayController_restoreGroup(a1, &a2[-6 * v5], a3);
  }

  v7 = *(*(*a1 + 128) + 24) + (*a2 << 6);
  v8 = *(v7 + 8);
  ConstructorType = GTFenum_getConstructorType(v8);
  if (GTFenum_isMTLCommandEncoder(ConstructorType) || (ConstructorType - 95) <= 0xA && ((0x409u >> (ConstructorType - 95)) & 1) != 0)
  {
    GTMTLReplayController_restoreCommandEncoder();
    GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(a1, *a2);

    _restoreCommandEncoderIndirectResourceUsage(a1);
  }

  else
  {
    isBeginCommandBuffer = GTFenum_isBeginCommandBuffer(v8);
    GTMTLReplayController_defaultDispatchFunction(a1, v7);
    if (isBeginCommandBuffer)
    {
      v11 = a1[5640];

      GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(a1, v11);
    }
  }
}

void GTMTLReplayController_restoreCommandEncoder()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v90 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 128);
  v9 = *(v5 + 8);
  v10 = *(v8 + 24) + (v4 << 6);
  v11 = *(v10 + 8);
  ConstructorType = GTFenum_getConstructorType(v11);
  if (!ConstructorType)
  {
    ConstructorType = GTFenum_getReceiverType(v11);
  }

  if (ConstructorType > 69)
  {
    if (ConstructorType != 70)
    {
      if (ConstructorType != 95)
      {
        if (ConstructorType == 98)
        {
          bzero(v73, 0x790uLL);
          GTMTL4SMCommandEncoder_processTraceFunc(v73, v10, v7);
          if (*(v10 + 8) >> 1 == 2147476065)
          {
            memcpy(__dst, __src[0], 0x280uLL);
            if (v2)
            {
              for (i = 0; i != 64; i += 8)
              {
                BYTE1(__dst[i + 3]) = 1;
              }

              BYTE1(__dst[67]) = 1;
              BYTE1(__dst[73]) = 1;
            }

            else if (qword_27F09CF90)
            {
              _clearDontCareAttachments(__dst, &__dst[64], &__dst[70]);
            }

            if ((v2 & 2) != 0)
            {
              v48 = __dst;
              v49 = 8;
              do
              {
                if (*v48)
                {
                  v50 = 3;
                }

                else
                {
                  v50 = 1;
                }

                *(v48 + 27) = v50;
                v48 += 8;
                --v49;
              }

              while (v49);
              if (__dst[64])
              {
                v51 = 3;
              }

              else
              {
                v51 = 1;
              }

              BYTE3(__dst[67]) = v51;
              if (__dst[70])
              {
                v52 = 3;
              }

              else
              {
                v52 = 1;
              }

              BYTE3(__dst[73]) = v52;
            }

            v53 = v2 & 1;
            v54 = [v9 mtl4CommandBufferForKey:{GTTraceFunc_targetContext(v10, v7)}];
            v55 = [v9 renderPassDescriptorMapWithMemorylessSubstitutes:*(v5 + 56)];
            v56 = MakeMTL4RenderPassDescriptor(__dst, v55);

            v18 = [v54 renderCommandEncoderWithDescriptor:v56];
            if ([g_commandBufferDescriptor errorOptions])
            {
              v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"debugIndex(%u)", *(v5 + 22560)];
              [v18 insertDebugSignpost:v57];
            }

            [v9 setMTL4RenderCommandEncoder:v18 forKey:{GTTraceFunc_getFuncStreamRef(v10, v7)}];

            if (!v53)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v18 = 0;
            if ((v2 & 1) == 0)
            {
              goto LABEL_108;
            }
          }

          GTMTLReplayController_tileMemoryLoad(v5);
LABEL_108:
          __src[8] = 1;
          v58 = *(v5 + 22544);
          v75[1] = vcvtq_f64_u64(v58);
          v76 = 0x3FF0000000000000;
          v81 = 1;
          v82 = v58;
          GTMTLReplayController_restoreMTL4RenderCommandEncoder(v18, __src, v5 + 248, v9);

          goto LABEL_130;
        }

        goto LABEL_25;
      }

      bzero(v73, 0x790uLL);
      GTMTL4SMCommandEncoder_processTraceFunc(v73, v10, v7);
      GTMTLReplayController_defaultDispatchFunction(v5, v10);
      if (*(v5 + 11360))
      {
        v16 = *(v5 + 200);
      }

      else
      {
        v16 = 0;
      }

      v31 = [v9 mtl4ComputeCommandEncoderForKey:v16];
      v35 = v9;
      v36 = v35;
      v37 = *(v5 + 248);
      if (__src[0] != v37 && v37)
      {
        v38 = [v35 computePipelineStateForKey:?];
        [v31 setComputePipelineState:v38];
      }

      v39 = *(v5 + 256);
      if (__src[1] != v39 && v39)
      {
        v40 = [v36 mtl4ArgumentTableForKey:?];
        [v31 setArgumentTable:v40];
      }

      for (j = 0; j != 31; ++j)
      {
        if (*(&__src[2] + j) != *(v5 + 264 + 4 * j))
        {
          [v31 setThreadgroupMemoryLength:? atIndex:?];
        }
      }

      if ((GT_SUPPORT_0 & 0x200) != 0 && *(v5 + 388) && *(v5 + 392))
      {
        [v31 setImageblockWidth:? height:?];
      }

      goto LABEL_76;
    }

    bzero(v73, 0x2BA0uLL);
    GTMTLSMCommandEncoder_processTraceFunc(v73, v10, v7);
    v14 = *(v10 + 8);
    if (v14 == -16286)
    {
      v43 = GTTraceFunc_argumentBytesWithMap(v10, *(v10 + 13), v7);
      v44 = [v9 parallelRenderCommandEncoderForKey:*v43];
      v45 = [v44 renderCommandEncoder];
      if ([g_commandBufferDescriptor errorOptions])
      {
        v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"debugIndex(%u)", *(v5 + 22560)];
        [v45 insertDebugSignpost:v46];
      }

      [v9 setRenderCommandEncoder:v45 forKey:*(v43 + 1)];

      if ((v2 & 1) == 0)
      {
        goto LABEL_129;
      }
    }

    else if (v14 == -16353)
    {
      v15 = GTTraceFunc_argumentBytesWithMap(v10, *(v10 + 13), v7);
      memcpy(__dst, __src[0], sizeof(__dst));
      if (v2)
      {
        for (k = 0; k != 64; k += 8)
        {
          BYTE1(__dst[k + 3]) = 1;
        }

        BYTE1(__dst[87]) = 1;
        BYTE1(__dst[93]) = 1;
      }

      else if (qword_27F09CF90)
      {
        _clearDontCareAttachments(__dst, &__dst[84], &__dst[90]);
      }

      if ((v2 & 2) != 0)
      {
        v60 = __dst;
        v61 = 8;
        do
        {
          if (*v60)
          {
            v62 = 3;
          }

          else
          {
            v62 = 1;
          }

          *(v60 + 27) = v62;
          v60 += 8;
          --v61;
        }

        while (v61);
        if (__dst[84])
        {
          v63 = 3;
        }

        else
        {
          v63 = 1;
        }

        BYTE3(__dst[87]) = v63;
        if (__dst[90])
        {
          v64 = 3;
        }

        else
        {
          v64 = 1;
        }

        BYTE3(__dst[93]) = v64;
      }

      v65 = [v9 commandBufferForKey:*v15];
      v66 = [v9 renderPassDescriptorMapWithMemorylessSubstitutes:*(v5 + 56)];
      v67 = MakeMTLRenderPassDescriptor(__dst, v66);

      v45 = [v65 renderCommandEncoderWithDescriptor:v67];
      if ([g_commandBufferDescriptor errorOptions])
      {
        v68 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"debugIndex(%u)", *(v5 + 22560)];
        [v45 insertDebugSignpost:v68];
      }

      [v9 setRenderCommandEncoder:v45 forKey:*(v15 + 1)];

      if ((v2 & 1) == 0)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v45 = 0;
      if ((v2 & 1) == 0)
      {
        goto LABEL_129;
      }
    }

    GTMTLReplayController_tileMemoryLoad(v5);
LABEL_129:
    v69 = *(v5 + 22544);
    v70 = *(v5 + 22552);
    v83 = 1;
    v84 = v69;
    v85 = v70;
    v86 = 0x3FF0000000000000;
    v87 = 1;
    v88 = v69;
    v89 = v70;
    GTMTLReplayController_restoreRenderCommandEncoder(v45, __src, v5 + 248, v9);

    goto LABEL_130;
  }

  if (ConstructorType == 28)
  {
    bzero(v73, 0x2BA0uLL);
    GTMTLSMCommandEncoder_processTraceFunc(v73, v10, v7);
    GTMTLReplayController_defaultDispatchFunction(v5, v10);
    if (*(v5 + 11360))
    {
      v17 = *(v5 + 200);
    }

    else
    {
      v17 = 0;
    }

    v31 = [v9 computeCommandEncoderForKey:v17];
    if ([g_commandBufferDescriptor errorOptions])
    {
      v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"debugIndex(%u)", *(v5 + 22560)];
      [v31 insertDebugSignpost:v42];
    }

    GTMTLReplayController_restoreComputeCommandEncoder(v31, __src, v5 + 248, v9);
    goto LABEL_81;
  }

  if (ConstructorType == 65)
  {
    bzero(v73, 0x2BA0uLL);
    GTMTLSMCommandEncoder_processTraceFunc(v73, v10, v7);
    v13 = GTTraceFunc_argumentBytesWithMap(v10, *(v10 + 13), v7);
    memcpy(__dst, __src[0], sizeof(__dst));
    if (v2)
    {
      for (m = 0; m != 64; m += 8)
      {
        BYTE1(__dst[m + 3]) = 1;
      }

      BYTE1(__dst[87]) = 1;
      BYTE1(__dst[93]) = 1;
    }

    else if (qword_27F09CF90)
    {
      _clearDontCareAttachments(__dst, &__dst[84], &__dst[90]);
    }

    if ((v2 & 2) != 0)
    {
      v20 = __dst;
      v21 = 8;
      do
      {
        if (*v20)
        {
          v22 = 3;
        }

        else
        {
          v22 = 1;
        }

        *(v20 + 27) = v22;
        v20 += 8;
        --v21;
      }

      while (v21);
      if (__dst[84])
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      BYTE3(__dst[87]) = v23;
      if (__dst[90])
      {
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      BYTE3(__dst[93]) = v24;
    }

    v25 = (v5 + 11560);
    v26 = [v9 commandBufferForKey:*v13];
    v27 = [v9 renderPassDescriptorMapWithMemorylessSubstitutes:*(v5 + 56)];
    v28 = MakeMTLRenderPassDescriptor(__dst, v27);

    v29 = [v26 parallelRenderCommandEncoderWithDescriptor:v28];
    if ([g_commandBufferDescriptor errorOptions])
    {
      v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"debugIndex(%u)", *(v5 + 22560)];
      [v29 insertDebugSignpost:v30];
    }

    [v9 setParallelRenderCommandEncoder:v29 forKey:*(v13 + 1)];

    v31 = v29;
    v32 = 0;
    v33 = v75;
    v34 = (v5 + 11496);
    do
    {
      if (*(v33 - 8) != *(v34 - 8))
      {
        [v31 setColorStoreAction:? atIndex:?];
      }

      if (*v33 != *v34)
      {
        [v31 setColorStoreActionOptions:? atIndex:?];
      }

      ++v33;
      ++v34;
      ++v32;
    }

    while (v32 != 8);
    if (v77 != *v25)
    {
      [v31 setDepthStoreAction:?];
    }

    if (v79 != v25[2])
    {
      [v31 setDepthStoreActionOptions:?];
    }

    if (v78 != v25[1])
    {
      [v31 setStencilStoreAction:?];
    }

    if (v80 != v25[3])
    {
      [v31 setStencilStoreActionOptions:?];
    }

LABEL_76:

LABEL_81:
    goto LABEL_130;
  }

LABEL_25:
  GTMTLReplayController_defaultDispatchFunction(v5, v10);
LABEL_130:

  objc_autoreleasePoolPop(v6);
  v71 = *MEMORY[0x277D85DE8];
}

uint64_t _clearDontCareAttachments(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + 25;
  v4 = 8;
  __asm { FMOV            V1.2D, #1.0 }

  do
  {
    if (!*v3)
    {
      *v3 = 2;
      *(v3 + 7) = xmmword_24DA8BC30;
      *(v3 + 23) = _Q1;
    }

    v3 += 64;
    --v4;
  }

  while (v4);
  if (!*(a2 + 25))
  {
    *(a2 + 25) = 2;
    *(a2 + 32) = 0x3FE0000000000000;
  }

  if (!*(a3 + 25))
  {
    *(a3 + 25) = 2;
    *(a3 + 32) = -1431655766;
  }

  return result;
}

void GTMTLReplayController_debugSubCommandResume(void *a1, unsigned int a2, int a3)
{
  v4 = a1;
  v5 = *a1;
  if (a2)
  {
    v6 = *(*(v5 + 128) + 24) + ((a2 - 1) << 6);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
LABEL_7:
      if (*(v6 - 56) >> 2 == 1073737833)
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        GetExecuteCommandsInBufferArgs(&v11, v6, *(v5 + 16));
        v7 = a2 - 1;
        v8 = v12;
        a1 = v4;
        v9 = v7;
      }

      else
      {
        v7 = a2 - 1;
        v9 = v7;
        v8 = 0;
      }

      GTMTLReplayController_debugSubCommandStop(a1, v9, v8);
      goto LABEL_11;
    }
  }

  if ((*(v6 + 8) & 0xFFFFFFFC) != 0xFFFFC1A4)
  {
    goto LABEL_7;
  }

  GTMTLReplayController_debugSubCommandStop(a1, a2, (a3 - 1));
  v7 = a2 - 1;
LABEL_11:
  ExclusiveRange = GroupBuilder_findExclusiveRange(*(*(*v4 + 120) + 12), *(*(*v4 + 120) + 24), v7);

  GTMTLReplayController_restoreGroup(v4, ExclusiveRange, 3);
}

void GTMTLReplayController_prePlayForProfiling(uint64_t a1)
{
  v2 = MEMORY[0x277D85E08];
  if (s_logUsingOsLog == 1)
  {
    v3 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24D764000, v3, OS_LOG_TYPE_INFO, "Pre-playing for profiling", buf, 2u);
    }
  }

  else
  {
    v4 = *MEMORY[0x277D85E08];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pre-playing for profiling"];
    fprintf(v4, "%s\n", [v5 UTF8String]);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (s_logUsingOsLog == 1)
  {
    v8 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_24D764000, v8, OS_LOG_TYPE_INFO, "Rewinding for profiling", v15, 2u);
    }
  }

  else
  {
    v9 = *v2;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rewinding for profiling"];
    fprintf(v9, "%s\n", [v8 UTF8String]);
  }

  Rewind(a1);
  if ((qword_27F09CF90 & 0x400000) != 0)
  {
    v10 = off_279312748;
  }

  else
  {
    v10 = 0x277CD9F10;
  }

  v11 = *v10;
  [*(a1 + 8) setLayerClass:objc_opt_class()];
  v12 = *(v7 + 104);
  if (v12)
  {
    GTMTLReplayController_playTo(a1, v12);
    v13 = [*(a1 + 8) defaultCommandQueue];
    [v13 finish];
  }

  objc_autoreleasePoolPop(v6);
}

void GTMTLReplayController_populateUnusedResources(void *a1, void *a2)
{
  v12 = a2;
  v3 = 0;
  v4 = a1[5] + 8;
  do
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(v5 + 12);
    if (v6 >= 1)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v5 + 24) + 8 * i);
        v9 = *(v8 + 16);
        v10 = a1[9];
        if (v10 <= v9 && a1[10] + v10 > v9)
        {
          [v12 addUnusedResourceKey:*(v8 + 8)];
          v6 = *(v5 + 12);
        }
      }
    }

    ++v3;
  }

  while (v3 != 50);
}

id GTMTLReplayController_defaultLibrary(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v2 newDefaultLibraryWithBundle:v3 error:0];

  return v4;
}

void sub_24D8E57E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D8E59AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D8E5ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D8E5BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D8E68AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

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

void std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(*a1);
    std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(a1[1]);
    v2 = a1[11];
    if (v2)
    {
      a1[12] = v2;
      operator delete(v2);
    }

    v3 = a1[8];
    if (v3)
    {
      operator delete(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      a1[6] = v4;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:nn200100]<char const(&)[24],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:nn200100]<char const(&)[26],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

uint64_t std::__function::__value_func<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeModules(std::vector<std::unique_ptr<llvm::Module>> const&,std::unordered_map<unsigned int,std::string> const&,unsigned long long *)::$_0::operator()(int **a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  llvm::StringRef::str(v35, String, v5);
  v6 = **a1;
  v7 = *(a2 - 8 * *(a2 + 8) + 8);
  if (v7 && *v7 == 1)
  {
    v8 = *(v7 + 128);
    if (v8 && *(v8 + 16) == 3)
    {
      v10 = *(v8 - 32);
      v11 = (v10 + 24);
      if (*(v10 + 32) >= 0x41u)
      {
        v11 = *v11;
      }

      v6 = *v11;
    }
  }

  v31 = v6;
  v12 = a1[1];
  v13 = v36;
  v14 = v35[0];
  if ((v36 & 0x80u) == 0)
  {
    v15 = v35;
  }

  else
  {
    v15 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v16 = v36;
  }

  else
  {
    v16 = v35[1];
  }

  v17 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v15, v16);
  v18 = *(v12 + 2);
  if (!*&v18)
  {
    goto LABEL_34;
  }

  v19 = v17;
  v20 = vcnt_s8(v18);
  v20.i16[0] = vaddlv_u8(v20);
  v21 = v20.u32[0];
  if (v20.u32[0] > 1uLL)
  {
    v22 = v17;
    if (v17 >= *&v18)
    {
      v22 = v17 % *&v18;
    }
  }

  else
  {
    v22 = (*&v18 - 1) & v17;
  }

  v23 = *(*v12 + 8 * v22);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_34:
    if (v13 < 0)
    {
      goto LABEL_35;
    }

    return;
  }

  while (1)
  {
    v25 = v24[1];
    if (v19 == v25)
    {
      break;
    }

    if (v21 > 1)
    {
      if (v25 >= *&v18)
      {
        v25 %= *&v18;
      }
    }

    else
    {
      v25 &= *&v18 - 1;
    }

    if (v25 != v22)
    {
      goto LABEL_34;
    }

LABEL_33:
    v24 = *v24;
    if (!v24)
    {
      goto LABEL_34;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v24 + 2, v35))
  {
    goto LABEL_33;
  }

  v26 = a1[2];
  v32[0] = a2;
  v32[1] = v26;
  v33 = v31;
  v34 = 0;
  v37 = v32;
  v27 = v24[8];
  if (v27)
  {
    (*(*v27 + 48))(v27, &v37);
    if (v13 < 0)
    {
LABEL_35:
      operator delete(v14);
    }
  }

  else
  {
    v28 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::StringRef::str(v28, v29, v30);
  }
}

void *llvm::StringRef::str(void *this, const void *a2, size_t a3)
{
  v3 = this;
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    *(this + 23) = a3;
    if (a3)
    {
      this = memcpy(this, a2, a3);
    }

    *(v3 + a3) = 0;
  }

  else
  {
    *this = 0;
    this[1] = 0;
    this[2] = 0;
  }

  return this;
}

uint64_t std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2, a1[4]);
}

__n128 std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860BC0C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeWaypointTracePoint(int8x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v7 = *(v6 + 32);
  if (v7 > 0x40)
  {
    v8 = **(v6 + 24);
  }

  else
  {
    v8 = (*(v6 + 24) << -v7) >> -v7;
  }

  v9 = v8 & 0xFFFFFF | (*(a2 + 4) << 24);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v60 = v9;
  v58 = 9;
  v61 = &v58;
  v10 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 9uLL);
  v11 = v10;
  v13 = v10 + 5;
  v12 = v10[5];
  v14 = v10[6];
  v15 = v12;
  if (v12 != v14)
  {
    while (*v15 != v5)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = v10[6];
        break;
      }
    }
  }

  if (v14 == v15 || v15 - v12 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v10 + 5), v5))
  {
    v61 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v13, v5);
    v17 = (v11 + 11);
    v16 = v11[11];
    v18 = v11[12];
    v19 = v11[13] - v16;
    if (v19 < &v18[-v16 + 8])
    {
      std::vector<unsigned char>::reserve(v11 + 11, (2 * v19) | 1);
      v18 = v11[12];
    }

    for (i = 0; i != 8; ++i)
    {
      v21 = v11[13];
      if (v18 >= v21)
      {
        v22 = *v17;
        v23 = (v18 - *v17);
        v24 = (v23 + 1);
        if ((v23 + 1) < 0)
        {
LABEL_76:
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v25 = v21 - v22;
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          operator new();
        }

        v27 = v18 - *v17;
        *v23 = *(&v61 + i);
        v18 = v23 + 1;
        memcpy(0, v22, v27);
        v11[11] = 0;
        v11[12] = v23 + 1;
        v11[13] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v18++ = *(&v61 + i);
      }

      v11[12] = v18;
    }

    v28 = v11[11];
    v29 = v11[13] - v28;
    if (v29 < &v18[-v28 + 8])
    {
      std::vector<unsigned char>::reserve(v11 + 11, (2 * v29) | 1);
      v18 = v11[12];
    }

    for (j = 0; j != 8; ++j)
    {
      v31 = v11[13];
      if (v18 >= v31)
      {
        v32 = *v17;
        v33 = (v18 - *v17);
        v34 = (v33 + 1);
        if ((v33 + 1) < 0)
        {
          goto LABEL_76;
        }

        v35 = v31 - v32;
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          operator new();
        }

        v37 = v18 - *v17;
        *v33 = *(&v60 + j);
        v18 = v33 + 1;
        memcpy(0, v32, v37);
        v11[11] = 0;
        v11[12] = v33 + 1;
        v11[13] = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v18++ = *(&v60 + j);
      }

      v11[12] = v18;
    }

    v58 = a3;
    v38 = v11[11];
    v39 = v11[13] - v38;
    if (v39 < &v18[-v38 + 8])
    {
      std::vector<unsigned char>::reserve(v11 + 11, (2 * v39) | 1);
      v18 = v11[12];
    }

    for (k = 0; k != 8; ++k)
    {
      v41 = v11[13];
      if (v18 >= v41)
      {
        v42 = *v17;
        v43 = (v18 - *v17);
        v44 = (v43 + 1);
        if ((v43 + 1) < 0)
        {
          goto LABEL_76;
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

        v47 = v18 - *v17;
        *v43 = *(&v58 + k);
        v18 = v43 + 1;
        memcpy(0, v42, v47);
        v11[11] = 0;
        v11[12] = v43 + 1;
        v11[13] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v18++ = *(&v58 + k);
      }

      v11[12] = v18;
    }

    v48 = v11[11];
    v49 = v11[13] - v48;
    if (v49 < &v18[-v48 + 8])
    {
      std::vector<unsigned char>::reserve(v11 + 11, (2 * v49) | 1);
      v18 = v11[12];
    }

    for (m = 0; m != 8; ++m)
    {
      v51 = v11[13];
      if (v18 >= v51)
      {
        v52 = *v17;
        v53 = (v18 - *v17);
        v54 = (v53 + 1);
        if ((v53 + 1) < 0)
        {
          goto LABEL_76;
        }

        v55 = v51 - v52;
        if (2 * v55 > v54)
        {
          v54 = 2 * v55;
        }

        if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v56 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          operator new();
        }

        v57 = v18 - *v17;
        *v53 = *(&TracePointLocation + m);
        v18 = v53 + 1;
        memcpy(0, v52, v57);
        v11[11] = 0;
        v11[12] = v53 + 1;
        v11[13] = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        *v18++ = *(&TracePointLocation + m);
      }

      v11[12] = v18;
    }
  }
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(int8x8_t *a1, uint64_t a2)
{
  v2 = *(a2 - 8 * *(a2 + 8) + 24);
  if (!v2)
  {
    return -1;
  }

  v4 = *(v2 - 8 * *(v2 + 8));
  if (*v4 == 15 || (v4 = *(v4 - 8 * *(v4 + 8))) != 0)
  {
    v5 = *(v4 - 8 * *(v4 + 8));
    if (v5)
    {
      String = llvm::MDString::getString(v5);
      v8 = v7;
    }

    else
    {
      v8 = 0;
      String = 0;
    }
  }

  else
  {
    v8 = 0;
    String = "";
  }

  llvm::StringRef::str(v18, String, v8);
  v10 = *(v2 - 8 * *(v2 + 8));
  if (*v10 == 15 || (v10 = *(v10 - 8 * *(v10 + 8))) != 0)
  {
    v11 = *(v10 - 8 * *(v10 + 8) + 8);
    if (v11)
    {
      v12 = llvm::MDString::getString(v11);
      v14 = v13;
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = "";
  }

  llvm::StringRef::str(__p, v12, v14);
  v9 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v2, v18, __p, *(v2 + 4), *(v2 + 2));
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return v9;
}

uint64_t std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860BC078;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeDataValueTracePoint(int8x8_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = *(a2 + 4);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = *(v3 - 8 * *(v3 + 8) + 32);
  v10 = *v9;
  if (v10 == 24)
  {
    v22 = (v9 - *(v9 + 2))[3];
    v123[0] = 0;
    v123[1] = 0;
    v122 = v123;
    v23 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v22, &v122);
    std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v123[0]);
    Filename = llvm::DIVariable::getFilename(v9);
    llvm::StringRef::str(v126, Filename, v25);
    Directory = llvm::DIVariable::getDirectory(v9);
    llvm::StringRef::str(__p, Directory, v27);
    v28 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v9 + 1, v126, __p, *(v9 + 6), -1);
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v128 < 0)
    {
      operator delete(v126[0]);
    }

    v29 = (v9 - *(v9 + 2))[1];
    if (v29)
    {
      String = llvm::MDString::getString(v29);
      v32 = v31;
    }

    else
    {
      String = 0;
      v32 = 0;
    }

    llvm::StringRef::str(v126, String, v32);
    v34 = ShaderDebugger::Metadata::MDSerializer::serializeGlobalVariable(a1, v9, v126, v23, v28);
  }

  else
  {
    if (v10 != 25)
    {
      v33 = -1;
      goto LABEL_25;
    }

    v11 = (v9 - *(v9 + 2))[3];
    v130[0] = 0;
    v130[1] = 0;
    v129 = v130;
    v12 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v11, &v129);
    std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v130[0]);
    v13 = llvm::DIVariable::getFilename(v9);
    llvm::StringRef::str(v126, v13, v14);
    v15 = llvm::DIVariable::getDirectory(v9);
    llvm::StringRef::str(__p, v15, v16);
    v17 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v9 + 1, v126, __p, *(v9 + 6), -1);
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v128 < 0)
    {
      operator delete(v126[0]);
    }

    v18 = (v9 - *(v9 + 2))[1];
    if (v18)
    {
      v19 = llvm::MDString::getString(v18);
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    llvm::StringRef::str(v126, v19, v21);
    v34 = ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(a1, v9, v126, v12, v17, *(v9 + 16) != 0);
  }

  v33 = v34;
  if (v128 < 0)
  {
    operator delete(v126[0]);
  }

LABEL_25:
  v35 = *(v3 + 8);
  v36 = *(v3 - 8 * v35 + 40);
  if (*v36 == 6)
  {
    v37 = *(v36 + 24);
    v38 = *(v36 + 32);
    llvm::DIExpression::getFragmentInfo();
    v39 = v126[0];
    if (v127)
    {
      v40 = v126[1];
    }

    else
    {
      v40 = 0;
    }

    if (!v127)
    {
      v39 = 0;
    }

    v35 = *(v3 + 8);
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  v41 = *(*(v3 - 8 * v35 + 48) + 128);
  v42 = *(v41 + 32);
  if (v42 > 0x40)
  {
    v43 = **(v41 + 24);
  }

  else
  {
    v43 = (*(v41 + 24) << -v42) >> -v42;
  }

  __p[0] = (v6 & 0xFFFFFF | (v7 << 24));
  v135 = v33;
  v136 = TracePointLocation;
  v134 = v43;
  v132 = v40;
  v133 = v39;
  v131 = 10;
  v126[0] = &v131;
  v44 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 0xAuLL);
  v45 = v44;
  v47 = v44 + 5;
  v46 = v44[5];
  v48 = v44[6];
  v49 = v46;
  if (v46 != v48)
  {
    while (*v49 != v3)
    {
      v49 += 8;
      if (v49 == v48)
      {
        v49 = v44[6];
        break;
      }
    }
  }

  if (v48 == v49 || v49 - v46 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v44 + 5), v3))
  {
    v126[0] = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v47, v3);
    v51 = (v45 + 11);
    v50 = v45[11];
    v52 = v45[12];
    v53 = v45[13] - v50;
    if (v53 < &v52[-v50 + 8])
    {
      std::vector<unsigned char>::reserve(v45 + 11, (2 * v53) | 1);
      v52 = v45[12];
    }

    for (i = 0; i != 8; ++i)
    {
      v55 = v45[13];
      if (v52 >= v55)
      {
        v56 = *v51;
        v57 = (v52 - *v51);
        v58 = (v57 + 1);
        if ((v57 + 1) < 0)
        {
LABEL_156:
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v59 = v55 - v56;
        if (2 * v59 > v58)
        {
          v58 = 2 * v59;
        }

        if (v59 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v60 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          operator new();
        }

        v61 = v52 - *v51;
        *v57 = *(v126 + i);
        v52 = v57 + 1;
        memcpy(0, v56, v61);
        v45[11] = 0;
        v45[12] = v57 + 1;
        v45[13] = 0;
        if (v56)
        {
          operator delete(v56);
        }
      }

      else
      {
        *v52++ = *(v126 + i);
      }

      v45[12] = v52;
    }

    v62 = v45[11];
    v63 = v45[13] - v62;
    if (v63 < &v52[-v62 + 8])
    {
      std::vector<unsigned char>::reserve(v45 + 11, (2 * v63) | 1);
      v52 = v45[12];
    }

    for (j = 0; j != 8; ++j)
    {
      v65 = v45[13];
      if (v52 >= v65)
      {
        v66 = *v51;
        v67 = (v52 - *v51);
        v68 = (v67 + 1);
        if ((v67 + 1) < 0)
        {
          goto LABEL_156;
        }

        v69 = v65 - v66;
        if (2 * v69 > v68)
        {
          v68 = 2 * v69;
        }

        if (v69 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v70 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          operator new();
        }

        v71 = v52 - *v51;
        *v67 = *(__p + j);
        v52 = v67 + 1;
        memcpy(0, v66, v71);
        v45[11] = 0;
        v45[12] = v67 + 1;
        v45[13] = 0;
        if (v66)
        {
          operator delete(v66);
        }
      }

      else
      {
        *v52++ = *(__p + j);
      }

      v45[12] = v52;
    }

    v72 = v45[11];
    v73 = v45[13] - v72;
    if (v73 < &v52[-v72 + 8])
    {
      std::vector<unsigned char>::reserve(v45 + 11, (2 * v73) | 1);
      v52 = v45[12];
    }

    for (k = 0; k != 8; ++k)
    {
      v75 = v45[13];
      if (v52 >= v75)
      {
        v76 = *v51;
        v77 = (v52 - *v51);
        v78 = (v77 + 1);
        if ((v77 + 1) < 0)
        {
          goto LABEL_156;
        }

        v79 = v75 - v76;
        if (2 * v79 > v78)
        {
          v78 = 2 * v79;
        }

        if (v79 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v80 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v78;
        }

        if (v80)
        {
          operator new();
        }

        v81 = v52 - *v51;
        *v77 = *(&v136 + k);
        v52 = v77 + 1;
        memcpy(0, v76, v81);
        v45[11] = 0;
        v45[12] = v77 + 1;
        v45[13] = 0;
        if (v76)
        {
          operator delete(v76);
        }
      }

      else
      {
        *v52++ = *(&v136 + k);
      }

      v45[12] = v52;
    }

    v82 = v45[11];
    v83 = v45[13] - v82;
    if (v83 < &v52[-v82 + 8])
    {
      std::vector<unsigned char>::reserve(v45 + 11, (2 * v83) | 1);
      v52 = v45[12];
    }

    for (m = 0; m != 8; ++m)
    {
      v85 = v45[13];
      if (v52 >= v85)
      {
        v86 = *v51;
        v87 = (v52 - *v51);
        v88 = (v87 + 1);
        if ((v87 + 1) < 0)
        {
          goto LABEL_156;
        }

        v89 = v85 - v86;
        if (2 * v89 > v88)
        {
          v88 = 2 * v89;
        }

        if (v89 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v90 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v90 = v88;
        }

        if (v90)
        {
          operator new();
        }

        v91 = v52 - *v51;
        *v87 = *(&v135 + m);
        v52 = v87 + 1;
        memcpy(0, v86, v91);
        v45[11] = 0;
        v45[12] = v87 + 1;
        v45[13] = 0;
        if (v86)
        {
          operator delete(v86);
        }
      }

      else
      {
        *v52++ = *(&v135 + m);
      }

      v45[12] = v52;
    }

    v92 = v45[11];
    v93 = v45[13] - v92;
    if (v93 < &v52[-v92 + 8])
    {
      std::vector<unsigned char>::reserve(v45 + 11, (2 * v93) | 1);
      v52 = v45[12];
    }

    for (n = 0; n != 8; ++n)
    {
      v95 = v45[13];
      if (v52 >= v95)
      {
        v96 = *v51;
        v97 = (v52 - *v51);
        v98 = (v97 + 1);
        if ((v97 + 1) < 0)
        {
          goto LABEL_156;
        }

        v99 = v95 - v96;
        if (2 * v99 > v98)
        {
          v98 = 2 * v99;
        }

        if (v99 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v100 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v100 = v98;
        }

        if (v100)
        {
          operator new();
        }

        v101 = v52 - *v51;
        *v97 = *(&v134 + n);
        v52 = v97 + 1;
        memcpy(0, v96, v101);
        v45[11] = 0;
        v45[12] = v97 + 1;
        v45[13] = 0;
        if (v96)
        {
          operator delete(v96);
        }
      }

      else
      {
        *v52++ = *(&v134 + n);
      }

      v45[12] = v52;
    }

    v102 = v45[11];
    v103 = v45[13] - v102;
    if (v103 < &v52[-v102 + 8])
    {
      std::vector<unsigned char>::reserve(v45 + 11, (2 * v103) | 1);
      v52 = v45[12];
    }

    for (ii = 0; ii != 8; ++ii)
    {
      v105 = v45[13];
      if (v52 >= v105)
      {
        v106 = *v51;
        v107 = (v52 - *v51);
        v108 = (v107 + 1);
        if ((v107 + 1) < 0)
        {
          goto LABEL_156;
        }

        v109 = v105 - v106;
        if (2 * v109 > v108)
        {
          v108 = 2 * v109;
        }

        if (v109 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v110 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v110 = v108;
        }

        if (v110)
        {
          operator new();
        }

        v111 = v52 - *v51;
        *v107 = *(&v133 + ii);
        v52 = v107 + 1;
        memcpy(0, v106, v111);
        v45[11] = 0;
        v45[12] = v107 + 1;
        v45[13] = 0;
        if (v106)
        {
          operator delete(v106);
        }
      }

      else
      {
        *v52++ = *(&v133 + ii);
      }

      v45[12] = v52;
    }

    v112 = v45[11];
    v113 = v45[13] - v112;
    if (v113 < &v52[-v112 + 8])
    {
      std::vector<unsigned char>::reserve(v45 + 11, (2 * v113) | 1);
      v52 = v45[12];
    }

    for (jj = 0; jj != 8; ++jj)
    {
      v115 = v45[13];
      if (v52 >= v115)
      {
        v116 = *v51;
        v117 = (v52 - *v51);
        v118 = (v117 + 1);
        if ((v117 + 1) < 0)
        {
          goto LABEL_156;
        }

        v119 = v115 - v116;
        if (2 * v119 > v118)
        {
          v118 = 2 * v119;
        }

        if (v119 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v120 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v120 = v118;
        }

        if (v120)
        {
          operator new();
        }

        v121 = v52 - *v51;
        *v117 = *(&v132 + jj);
        v52 = v117 + 1;
        memcpy(0, v116, v121);
        v45[11] = 0;
        v45[12] = v117 + 1;
        v45[13] = 0;
        if (v116)
        {
          operator delete(v116);
        }
      }

      else
      {
        *v52++ = *(&v132 + jj);
      }

      v45[12] = v52;
    }
  }
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(uint64_t a1, unsigned __int8 *a2, void **a3)
{
  v6 = a3 + 1;
  v5 = a3[1];
  if (!v5)
  {
LABEL_14:
    operator new();
  }

  v7 = a3 + 1;
  v8 = a3[1];
  do
  {
    v9 = v8[4];
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v7 = v8;
    }

    v8 = v8[v11];
  }

  while (v8);
  if (v7 == v6 || v7[4] > a2)
  {
    while (1)
    {
      while (1)
      {
        v12 = v5;
        v13 = v5[4];
        if (v13 <= a2)
        {
          break;
        }

        v5 = *v12;
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      if (v13 >= a2)
      {
        break;
      }

      v5 = v12[1];
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    v288 = 3;
    v291 = &v288;
    v14 = a1;
    v15 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 3uLL);
    v16 = v15[5];
    v291 = a2;
    v17 = v15[6];
    v18 = v16;
    if (v16 != v17)
    {
      while (*v18 != a2)
      {
        if (++v18 == v17)
        {
          v18 = v15[6];
          break;
        }
      }
    }

    if (v17 == v18 || (v19 = v18 - v16, v19 == -8))
    {
      std::vector<unsigned long>::push_back[abi:nn200100]((v15 + 5), &v291);
      LOBYTE(__p[0]) = 1;
      std::vector<BOOL>::push_back((v15 + 8), __p);
      result = ((v15[6] - v15[5]) >> 3) - 1;
    }

    else
    {
      result = v19 >> 3;
    }

    v21 = *a2;
    if (v21 <= 0xC)
    {
      if (v21 == 11)
      {
        v273 = result;
        v44 = *&a2[-8 * *(a2 + 2) + 16];
        if (v44)
        {
          String = llvm::MDString::getString(v44);
          v47 = v46;
        }

        else
        {
          String = 0;
          v47 = 0;
        }

        llvm::StringRef::str(&v291, String, v47);
        v136 = *(a2 + 7);
        v137 = *(a2 + 12);
        v139 = *(a2 + 4);
        v138 = *(a2 + 5);
        Tag = llvm::DINode::getTag(a2);
        LODWORD(v284[0]) = *(a2 + 13);
        __p[0] = 3;
        v288 = __p;
        v141 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 3uLL);
        v142 = v141;
        v144 = v141 + 5;
        v143 = v141[5];
        v145 = v141[6];
        v146 = v143;
        if (v143 != v145)
        {
          while (*v146 != a2)
          {
            if (++v146 == v145)
            {
              v146 = v141[6];
              break;
            }
          }
        }

        if (v145 == v146 || v146 - v143 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v141 + 5), a2))
        {
          v147 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v144, a2);
          ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(v142 + 11, v147, &v291, v136, v139, v137, v138, Tag, 0);
          v148 = v142[12];
          v149 = v142[11];
          v150 = v142[13] - v149;
          if (v150 < &v148[-v149 + 4])
          {
            std::vector<unsigned char>::reserve(v142 + 11, (2 * v150) | 1);
            v148 = v142[12];
          }

          for (i = 0; i != 4; ++i)
          {
            v152 = v142[13];
            if (v148 >= v152)
            {
              v153 = v142[11];
              v154 = (v148 - v153);
              v155 = v148 - v153 + 1;
              if (v155 < 0)
              {
                goto LABEL_363;
              }

              v156 = v152 - v153;
              if (2 * v156 > v155)
              {
                v155 = 2 * v156;
              }

              if (v156 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v157 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v157 = v155;
              }

              if (v157)
              {
                operator new();
              }

              v158 = v148 - v153;
              *v154 = *(v284 + i);
              v148 = v154 + 1;
              memcpy(0, v153, v158);
              v142[11] = 0;
              v142[12] = v154 + 1;
              v142[13] = 0;
              if (v153)
              {
                operator delete(v153);
              }
            }

            else
            {
              *v148++ = *(v284 + i);
            }

            v142[12] = v148;
          }
        }

        if (SHIBYTE(v293) < 0)
        {
          operator delete(v291);
        }

        return v273;
      }

      if (v21 != 12)
      {
        return result;
      }

      v273 = result;
      v283[0] = 0;
      v283[1] = 0;
      v282 = v283;
      std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(&v282, *a3, v6);
      v22 = *(a2 + 2);
      v23 = *&a2[-8 * v22 + 24];
      if (v23)
      {
        v292 = 0;
        v293 = 0;
        v291 = &v292;
        std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(&v291, v282, v283);
        v24 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v23, &v291);
        std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v292);
        v25 = -*(a2 + 2);
      }

      else
      {
        v25 = -v22;
        v24 = -1;
      }

      v51 = *(a2 + 52);
      if (v51 >= 9)
      {
        v52 = 100;
      }

      else
      {
        v52 = v51;
      }

      v53 = *&a2[8 * v25 + 16];
      if (v53)
      {
        v54 = llvm::MDString::getString(v53);
        v56 = v55;
      }

      else
      {
        v54 = 0;
        v56 = 0;
      }

      llvm::StringRef::str(&v288, v54, v56);
      v102 = *(a2 + 7);
      v103 = *(a2 + 12);
      v105 = *(a2 + 4);
      v104 = *(a2 + 5);
      v106 = llvm::DINode::getTag(a2);
      v284[0] = v24;
      v296[0] = 3;
      __p[0] = v296;
      v107 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 3uLL);
      v108 = v107;
      v110 = v107 + 5;
      v109 = v107[5];
      v111 = v107[6];
      v112 = v109;
      if (v109 != v111)
      {
        while (*v112 != a2)
        {
          if (++v112 == v111)
          {
            v112 = v107[6];
            break;
          }
        }
      }

      if (v111 == v112 || v112 - v109 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v107 + 5), a2))
      {
        v276 = v51;
        v113 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v110, a2);
        ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(v108 + 11, v113, &v288, v102, v105, v103, v104, v106, 2);
        v114 = v108[12];
        v115 = v108[11];
        v116 = v108[13] - v115;
        if (v116 < &v114[-v115 + 8])
        {
          std::vector<unsigned char>::reserve(v108 + 11, (2 * v116) | 1);
          v114 = v108[12];
        }

        for (j = 0; j != 8; ++j)
        {
          v118 = v108[13];
          if (v114 >= v118)
          {
            v119 = v108[11];
            v120 = (v114 - v119);
            v121 = v114 - v119 + 1;
            if (v121 < 0)
            {
              goto LABEL_363;
            }

            v122 = v118 - v119;
            if (2 * v122 > v121)
            {
              v121 = 2 * v122;
            }

            if (v122 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v123 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v123 = v121;
            }

            if (v123)
            {
              operator new();
            }

            v124 = v114 - v119;
            *v120 = *(v284 + j);
            v114 = v120 + 1;
            memcpy(0, v119, v124);
            v108[11] = 0;
            v108[12] = v120 + 1;
            v108[13] = 0;
            if (v119)
            {
              operator delete(v119);
            }
          }

          else
          {
            *v114++ = *(v284 + j);
          }

          v108[12] = v114;
        }

        v125 = 100;
        if ((v276 & 0x100000000) != 0)
        {
          v125 = v52;
        }

        __p[0] = v125;
        v126 = v108[11];
        v127 = v108[13] - v126;
        if (v127 < &v114[-v126 + 8])
        {
          std::vector<unsigned char>::reserve(v108 + 11, (2 * v127) | 1);
          v114 = v108[12];
        }

        for (k = 0; k != 8; ++k)
        {
          v129 = v108[13];
          if (v114 >= v129)
          {
            v130 = v108[11];
            v131 = (v114 - v130);
            v132 = v114 - v130 + 1;
            if (v132 < 0)
            {
              goto LABEL_363;
            }

            v133 = v129 - v130;
            if (2 * v133 > v132)
            {
              v132 = 2 * v133;
            }

            if (v133 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v134 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v134 = v132;
            }

            if (v134)
            {
              operator new();
            }

            v135 = v114 - v130;
            *v131 = *(__p + k);
            v114 = v131 + 1;
            memcpy(0, v130, v135);
            v108[11] = 0;
            v108[12] = v131 + 1;
            v108[13] = 0;
            if (v130)
            {
              operator delete(v130);
            }
          }

          else
          {
            *v114++ = *(__p + k);
          }

          v108[12] = v114;
        }
      }

      if (SHIBYTE(v290) < 0)
      {
        operator delete(v288);
      }

      v101 = v283[0];
LABEL_360:
      std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v101);
      return v273;
    }

    if (v21 != 13)
    {
      if (v21 != 14)
      {
        return result;
      }

      v273 = result;
      v279[0] = 0;
      v279[1] = 0;
      v278 = v279;
      std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(&v278, *a3, v6);
      v291 = 0;
      v292 = 0;
      v293 = 0;
      v26 = *(a2 + 2);
      v27 = -v26;
      v28 = *&a2[-8 * v26 + 24];
      if (v28)
      {
        v29 = *(v28 + 8);
        if (v29 >= 1)
        {
          v30 = 0;
          v31 = -v29;
          v32 = v28;
          do
          {
            v33 = *(v32 - 8 * *(v28 + 8));
            if (v30 || v33)
            {
              v289 = 0;
              v290 = 0;
              v288 = &v289;
              std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(&v288, v278, v279);
              v34 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v33, &v288);
              std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v289);
              __p[0] = 3;
              __p[1] = v34;
            }

            else
            {
              *__p = xmmword_24DA8BC40;
            }

            std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:nn200100](&v291, __p);
            --v30;
            v32 += 8;
          }

          while (v31 != v30);
          v27 = -*(a2 + 2);
        }
      }

      v35 = *&a2[8 * v27 + 16];
      if (v35)
      {
        v36 = llvm::MDString::getString(v35);
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      llvm::StringRef::str(__p, v36, v38);
      v57 = *(a2 + 7);
      v58 = *(a2 + 12);
      v60 = *(a2 + 4);
      v59 = *(a2 + 5);
      v61 = llvm::DINode::getTag(a2);
      v296[0] = 3;
      v284[0] = v296;
      v62 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 3uLL);
      v63 = v62;
      v65 = v62 + 5;
      v64 = v62[5];
      v66 = v62[6];
      v67 = v64;
      if (v64 != v66)
      {
        while (*v67 != a2)
        {
          if (++v67 == v66)
          {
            v67 = v62[6];
            break;
          }
        }
      }

      if (v66 == v67 || v67 - v64 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v62 + 5), a2))
      {
        v68 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v65, a2);
        ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(v63 + 11, v68, __p, v57, v60, v58, v59, v61, 3);
        v284[0] = ((v292 - v291) >> 4);
        v69 = v63[12];
        v70 = v63[11];
        v71 = v63[13] - v70;
        if (v71 < &v69[-v70 + 8])
        {
          std::vector<unsigned char>::reserve(v63 + 11, (2 * v71) | 1);
          v69 = v63[12];
        }

        for (m = 0; m != 8; ++m)
        {
          v73 = v63[13];
          if (v69 >= v73)
          {
            v74 = v63[11];
            v75 = (v69 - v74);
            v76 = v69 - v74 + 1;
            if (v76 < 0)
            {
              goto LABEL_363;
            }

            v77 = v73 - v74;
            if (2 * v77 > v76)
            {
              v76 = 2 * v77;
            }

            if (v77 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v78 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v78 = v76;
            }

            if (v78)
            {
              operator new();
            }

            v79 = v69 - v74;
            *v75 = *(v284 + m);
            v69 = v75 + 1;
            memcpy(0, v74, v79);
            v63[11] = 0;
            v63[12] = v75 + 1;
            v63[13] = 0;
            if (v74)
            {
              operator delete(v74);
            }
          }

          else
          {
            *v69++ = *(v284 + m);
          }

          v63[12] = v69;
        }

        v80 = v291;
        v275 = v292;
        if (v291 != v292)
        {
          do
          {
            v284[0] = *v80;
            v81 = v63[11];
            v82 = v63[13] - v81;
            if (v82 < &v69[-v81 + 8])
            {
              std::vector<unsigned char>::reserve(v63 + 11, (2 * v82) | 1);
              v69 = v63[12];
            }

            for (n = 0; n != 8; ++n)
            {
              v84 = v63[13];
              if (v69 >= v84)
              {
                v85 = v63[11];
                v86 = (v69 - v85);
                v87 = v69 - v85 + 1;
                if (v87 < 0)
                {
                  goto LABEL_363;
                }

                v88 = v84 - v85;
                if (2 * v88 > v87)
                {
                  v87 = 2 * v88;
                }

                if (v88 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v89 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v89 = v87;
                }

                if (v89)
                {
                  operator new();
                }

                v90 = v69 - v85;
                *v86 = *(v284 + n);
                v69 = v86 + 1;
                memcpy(0, v85, v90);
                v63[11] = 0;
                v63[12] = v86 + 1;
                v63[13] = 0;
                if (v85)
                {
                  operator delete(v85);
                }
              }

              else
              {
                *v69++ = *(v284 + n);
              }

              v63[12] = v69;
            }

            v284[0] = v80[1];
            v91 = v63[11];
            v92 = v63[13] - v91;
            if (v92 < &v69[-v91 + 8])
            {
              std::vector<unsigned char>::reserve(v63 + 11, (2 * v92) | 1);
              v69 = v63[12];
            }

            for (ii = 0; ii != 8; ++ii)
            {
              v94 = v63[13];
              if (v69 >= v94)
              {
                v95 = v63[11];
                v96 = (v69 - v95);
                v97 = v69 - v95 + 1;
                if (v97 < 0)
                {
                  goto LABEL_363;
                }

                v98 = v94 - v95;
                if (2 * v98 > v97)
                {
                  v97 = 2 * v98;
                }

                if (v98 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v99 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  operator new();
                }

                v100 = v69 - v95;
                *v96 = *(v284 + ii);
                v69 = v96 + 1;
                memcpy(0, v95, v100);
                v63[11] = 0;
                v63[12] = v96 + 1;
                v63[13] = 0;
                if (v95)
                {
                  operator delete(v95);
                }
              }

              else
              {
                *v69++ = *(v284 + ii);
              }

              v63[12] = v69;
            }

            v80 += 2;
          }

          while (v80 != v275);
        }
      }

      if (SHIBYTE(v287) < 0)
      {
        operator delete(__p[0]);
      }

      if (v291)
      {
        operator delete(v291);
      }

      v101 = v279[0];
      goto LABEL_360;
    }

    v273 = result;
    v281[0] = 0;
    v281[1] = 0;
    v280 = v281;
    std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(&v280, *a3, v6);
    v48 = *(a2 + 2);
    v49 = *&a2[-8 * v48 + 24];
    if (v49)
    {
      v292 = 0;
      v293 = 0;
      v291 = &v292;
      std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(&v291, v280, v281);
      v271 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v49, &v291);
      std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v292);
      v50 = -*(a2 + 2);
    }

    else
    {
      v50 = -v48;
      v271 = -1;
    }

    v288 = 0;
    v289 = 0;
    v290 = 0;
    v159 = *&a2[8 * v50 + 32];
    if (v159)
    {
      v160 = (v159 - 8 * *(v159 + 8));
    }

    else
    {
      v160 = 0;
    }

    if (v160 == v159)
    {
LABEL_279:
      v213 = *&a2[8 * v50 + 16];
      if (v213)
      {
        v214 = llvm::MDString::getString(v213);
        v216 = v215;
      }

      else
      {
        v214 = 0;
        v216 = 0;
      }

      llvm::StringRef::str(v284, v214, v216);
      v217 = *(a2 + 7);
      v218 = *(a2 + 12);
      v220 = *(a2 + 4);
      v219 = *(a2 + 5);
      v221 = llvm::DINode::getTag(a2);
      v294 = 3;
      v295 = v271;
      v296[0] = &v294;
      v222 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 3uLL);
      v223 = v222;
      v225 = v222 + 5;
      v224 = v222[5];
      v226 = v222[6];
      v227 = v224;
      if (v224 != v226)
      {
        while (*v227 != a2)
        {
          if (++v227 == v226)
          {
            v227 = v222[6];
            break;
          }
        }
      }

      if (v226 == v227 || v227 - v224 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v222 + 5), a2))
      {
        v228 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v225, a2);
        ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(v223 + 11, v228, v284, v217, v220, v218, v219, v221, 1);
        v229 = v223[12];
        v230 = v223[11];
        v231 = v223[13] - v230;
        if (v231 < &v229[-v230 + 8])
        {
          std::vector<unsigned char>::reserve(v223 + 11, (2 * v231) | 1);
          v229 = v223[12];
        }

        for (jj = 0; jj != 8; ++jj)
        {
          v233 = v223[13];
          if (v229 >= v233)
          {
            v234 = v223[11];
            v235 = (v229 - v234);
            v236 = v229 - v234 + 1;
            if (v236 < 0)
            {
              goto LABEL_363;
            }

            v237 = v233 - v234;
            if (2 * v237 > v236)
            {
              v236 = 2 * v237;
            }

            if (v237 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v238 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v238 = v236;
            }

            if (v238)
            {
              operator new();
            }

            v239 = v229 - v234;
            *v235 = *(&v296[-1] + jj);
            v229 = v235 + 1;
            memcpy(0, v234, v239);
            v223[11] = 0;
            v223[12] = v235 + 1;
            v223[13] = 0;
            if (v234)
            {
              operator delete(v234);
            }
          }

          else
          {
            *v229++ = *(&v296[-1] + jj);
          }

          v223[12] = v229;
        }

        v296[0] = &v289[-v288] >> 4;
        v240 = v223[11];
        v241 = v223[13] - v240;
        if (v241 < &v229[-v240 + 8])
        {
          std::vector<unsigned char>::reserve(v223 + 11, (2 * v241) | 1);
          v229 = v223[12];
        }

        for (kk = 0; kk != 8; ++kk)
        {
          v243 = v223[13];
          if (v229 >= v243)
          {
            v244 = v223[11];
            v245 = (v229 - v244);
            v246 = v229 - v244 + 1;
            if (v246 < 0)
            {
              goto LABEL_363;
            }

            v247 = v243 - v244;
            if (2 * v247 > v246)
            {
              v246 = 2 * v247;
            }

            if (v247 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v248 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v248 = v246;
            }

            if (v248)
            {
              operator new();
            }

            v249 = v229 - v244;
            *v245 = *(v296 + kk);
            v229 = v245 + 1;
            memcpy(0, v244, v249);
            v223[11] = 0;
            v223[12] = v245 + 1;
            v223[13] = 0;
            if (v244)
            {
              operator delete(v244);
            }
          }

          else
          {
            *v229++ = *(v296 + kk);
          }

          v223[12] = v229;
        }

        v250 = v288;
        for (mm = v289; v250 != mm; v250 += 16)
        {
          v296[0] = *v250;
          v251 = v223[11];
          v252 = v223[13] - v251;
          if (v252 < &v229[-v251 + 8])
          {
            std::vector<unsigned char>::reserve(v223 + 11, (2 * v252) | 1);
            v229 = v223[12];
          }

          for (nn = 0; nn != 8; ++nn)
          {
            v254 = v223[13];
            if (v229 >= v254)
            {
              v255 = v223[11];
              v256 = (v229 - v255);
              v257 = v229 - v255 + 1;
              if (v257 < 0)
              {
                goto LABEL_363;
              }

              v258 = v254 - v255;
              if (2 * v258 > v257)
              {
                v257 = 2 * v258;
              }

              if (v258 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v259 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v259 = v257;
              }

              if (v259)
              {
                operator new();
              }

              v260 = v229 - v255;
              *v256 = *(v296 + nn);
              v229 = v256 + 1;
              memcpy(0, v255, v260);
              v223[11] = 0;
              v223[12] = v256 + 1;
              v223[13] = 0;
              if (v255)
              {
                operator delete(v255);
              }
            }

            else
            {
              *v229++ = *(v296 + nn);
            }

            v223[12] = v229;
          }

          v296[0] = *(v250 + 1);
          v261 = v223[11];
          v262 = v223[13] - v261;
          if (v262 < &v229[-v261 + 8])
          {
            std::vector<unsigned char>::reserve(v223 + 11, (2 * v262) | 1);
            v229 = v223[12];
          }

          for (i1 = 0; i1 != 8; ++i1)
          {
            v264 = v223[13];
            if (v229 >= v264)
            {
              v265 = v223[11];
              v266 = (v229 - v265);
              v267 = v229 - v265 + 1;
              if (v267 < 0)
              {
                goto LABEL_363;
              }

              v268 = v264 - v265;
              if (2 * v268 > v267)
              {
                v267 = 2 * v268;
              }

              if (v268 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v269 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v269 = v267;
              }

              if (v269)
              {
                operator new();
              }

              v270 = v229 - v265;
              *v266 = *(v296 + i1);
              v229 = v266 + 1;
              memcpy(0, v265, v270);
              v223[11] = 0;
              v223[12] = v266 + 1;
              v223[13] = 0;
              if (v265)
              {
                operator delete(v265);
              }
            }

            else
            {
              *v229++ = *(v296 + i1);
            }

            v223[12] = v229;
          }
        }
      }

      if (v285 < 0)
      {
        operator delete(v284[0]);
      }

      if (v288)
      {
        operator delete(v288);
      }

      v101 = v281[0];
      goto LABEL_360;
    }

    v272 = *&a2[8 * v50 + 32];
    while (1)
    {
      v161 = *v160;
      v162 = **v160;
      if ((v162 - 11) < 4 || v162 == 33)
      {
        __p[1] = 0;
        v287 = 0;
        __p[0] = &__p[1];
        std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(__p, v280, v281);
        v163 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(v14, v161, __p);
        std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(__p[1]);
        v284[0] = 3;
        v284[1] = v163;
      }

      else
      {
        if (v162 != 9)
        {
          goto LABEL_201;
        }

        Count = llvm::DISubrange::getCount(*v160);
        v165 = Count & 0xFFFFFFFFFFFFFFF8;
        if ((Count & 6) != 0 || v165 == 0)
        {
          v167 = -1;
        }

        else
        {
          v168 = *(v165 + 32);
          if (v168 > 0x40)
          {
            v167 = **(v165 + 24);
          }

          else
          {
            v167 = (*(v165 + 24) << -v168) >> -v168;
          }
        }

        LowerBound = llvm::DISubrange::getLowerBound(v161);
        v170 = 0;
        if ((LowerBound & 6) == 0)
        {
          v171 = LowerBound & 0xFFFFFFFFFFFFFFF8;
          if ((LowerBound & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v172 = *(v171 + 32);
            if (v172 > 0x40)
            {
              v170 = **(v171 + 24);
            }

            else
            {
              v170 = (*(v171 + 24) << -v172) >> -v172;
            }
          }
        }

        v295 = v167;
        v296[0] = v170;
        v294 = 4;
        v284[0] = &v294;
        v173 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(v14, 4uLL);
        v174 = v173;
        v176 = v173 + 5;
        v175 = v173[5];
        v177 = v173[6];
        v178 = v175;
        if (v175 == v177)
        {
          v159 = v272;
        }

        else
        {
          v159 = v272;
          while (*v178 != v161)
          {
            if (++v178 == v177)
            {
              v178 = v173[6];
              break;
            }
          }
        }

        if (v177 == v178 || (v179 = v178 - v175, v178 - v175 == -8) || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v173 + 5), v161))
        {
          v284[0] = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v176, v161);
          v181 = (v174 + 11);
          v180 = v174[11];
          v182 = v174[12];
          v183 = v174[13] - v180;
          if (v183 < &v182[-v180 + 8])
          {
            std::vector<unsigned char>::reserve(v174 + 11, (2 * v183) | 1);
            v182 = v174[12];
          }

          for (i2 = 0; i2 != 8; ++i2)
          {
            v185 = v174[13];
            if (v182 >= v185)
            {
              v186 = *v181;
              v187 = (v182 - *v181);
              v188 = (v187 + 1);
              if ((v187 + 1) < 0)
              {
LABEL_363:
                std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
              }

              v189 = v185 - v186;
              if (2 * v189 > v188)
              {
                v188 = 2 * v189;
              }

              if (v189 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v190 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v190 = v188;
              }

              if (v190)
              {
                operator new();
              }

              v191 = v182 - *v181;
              *v187 = *(v284 + i2);
              v182 = v187 + 1;
              memcpy(0, v186, v191);
              v174[11] = 0;
              v174[12] = v187 + 1;
              v174[13] = 0;
              if (v186)
              {
                operator delete(v186);
              }
            }

            else
            {
              *v182++ = *(v284 + i2);
            }

            v174[12] = v182;
          }

          v192 = v174[11];
          v193 = v174[13] - v192;
          if (v193 < &v182[-v192 + 8])
          {
            std::vector<unsigned char>::reserve(v174 + 11, (2 * v193) | 1);
            v182 = v174[12];
          }

          for (i3 = 0; i3 != 8; ++i3)
          {
            v195 = v174[13];
            if (v182 >= v195)
            {
              v196 = *v181;
              v197 = (v182 - *v181);
              v198 = (v197 + 1);
              if ((v197 + 1) < 0)
              {
                goto LABEL_363;
              }

              v199 = v195 - v196;
              if (2 * v199 > v198)
              {
                v198 = 2 * v199;
              }

              if (v199 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v200 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v200 = v198;
              }

              if (v200)
              {
                operator new();
              }

              v201 = v182 - *v181;
              *v197 = *(v296 + i3);
              v182 = v197 + 1;
              memcpy(0, v196, v201);
              v174[11] = 0;
              v174[12] = v197 + 1;
              v174[13] = 0;
              if (v196)
              {
                operator delete(v196);
              }
            }

            else
            {
              *v182++ = *(v296 + i3);
            }

            v174[12] = v182;
          }

          v202 = v174[11];
          v203 = v174[13] - v202;
          if (v203 < &v182[-v202 + 8])
          {
            std::vector<unsigned char>::reserve(v174 + 11, (2 * v203) | 1);
            v182 = v174[12];
          }

          for (i4 = 0; i4 != 8; ++i4)
          {
            v205 = v174[13];
            if (v182 >= v205)
            {
              v206 = *v181;
              v207 = (v182 - *v181);
              v208 = (v207 + 1);
              if ((v207 + 1) < 0)
              {
                goto LABEL_363;
              }

              v209 = v205 - v206;
              if (2 * v209 > v208)
              {
                v208 = 2 * v209;
              }

              if (v209 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v210 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v210 = v208;
              }

              if (v210)
              {
                operator new();
              }

              v211 = v182 - *v181;
              *v207 = *(&v296[-1] + i4);
              v182 = v207 + 1;
              memcpy(0, v206, v211);
              v174[11] = 0;
              v174[12] = v207 + 1;
              v174[13] = 0;
              if (v206)
              {
                operator delete(v206);
              }
            }

            else
            {
              *v182++ = *(&v296[-1] + i4);
            }

            v174[12] = v182;
          }

          v212 = v284[0];
          v14 = a1;
          v159 = v272;
        }

        else
        {
          v212 = v179 >> 3;
        }

        v284[0] = 4;
        v284[1] = v212;
      }

      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:nn200100](&v288, v284);
LABEL_201:
      if (++v160 == v159)
      {
        v50 = -*(a2 + 2);
        goto LABEL_279;
      }
    }
  }

  v288 = 3;
  v291 = &v288;
  v39 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 3uLL);
  v41 = v39[5];
  v40 = v39[6];
  v42 = v41;
  if (v41 != v40)
  {
    while (*v42 != a2)
    {
      if (++v42 == v40)
      {
        v42 = v39[6];
        break;
      }
    }
  }

  v43 = v42 - v41;
  if (v40 == v42)
  {
    return -1;
  }

  else
  {
    return v43;
  }
}

llvm::MDString *llvm::DIVariable::getFilename(llvm::DIVariable *this)
{
  v1 = (this - *(this + 2))[2];
  if (!v1)
  {
    return "";
  }

  result = *(v1 - 8 * *(v1 + 8));
  if (result)
  {
    return llvm::MDString::getString(result);
  }

  return result;
}

llvm::MDString *llvm::DIVariable::getDirectory(llvm::DIVariable *this)
{
  v1 = (this - *(this + 2))[2];
  if (!v1)
  {
    return "";
  }

  result = *(v1 - 8 * *(v1 + 8) + 8);
  if (result)
  {
    return llvm::MDString::getString(result);
  }

  return result;
}

void *std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::set<llvm::DIType *>::insert[abi:nn200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = v3[4];
      if (v5[4] < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = v4[4];
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
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
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t *std::__tree<llvm::DIType *>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeDataTracePoint(int8x8_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = *(a2 + 4);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = v3 - 8 * *(v3 + 8);
  v10 = *(*(v9 + 32) + 128);
  v11 = *(v10 + 32);
  if (v11 > 0x40)
  {
    v12 = **(v10 + 24);
  }

  else
  {
    v12 = (*(v10 + 24) << -v11) >> -v11;
  }

  v13 = *(*(v9 + 40) + 128);
  v14 = *(v13 + 32);
  if (v14 > 0x40)
  {
    LODWORD(v15) = **(v13 + 24);
  }

  else
  {
    v15 = (*(v13 + 24) << -v14) >> -v14;
  }

  v77 = TracePointLocation;
  v78 = v6 & 0xFFFFFF | (v7 << 24);
  v76 = v12;
  v75 = 8;
  v79 = &v75;
  v16 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 8uLL);
  v17 = v16;
  v19 = v16 + 5;
  v18 = v16[5];
  v20 = v16[6];
  v21 = v18;
  if (v18 != v20)
  {
    while (*v21 != v3)
    {
      v21 += 8;
      if (v21 == v20)
      {
        v21 = v16[6];
        break;
      }
    }
  }

  if (v20 == v21 || v21 - v18 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v16 + 5), v3))
  {
    v74 = v15;
    v79 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v19, v3);
    v23 = (v17 + 11);
    v22 = v17[11];
    v24 = v17[12];
    v25 = v17[13] - v22;
    if (v25 < &v24[-v22 + 8])
    {
      std::vector<unsigned char>::reserve(v17 + 11, (2 * v25) | 1);
      v24 = v17[12];
    }

    for (i = 0; i != 8; ++i)
    {
      v27 = v17[13];
      if (v24 >= v27)
      {
        v28 = *v23;
        v29 = (v24 - *v23);
        v30 = (v29 + 1);
        if ((v29 + 1) < 0)
        {
LABEL_98:
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v31 = v27 - v28;
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          operator new();
        }

        v33 = v24 - *v23;
        *v29 = *(&v79 + i);
        v24 = v29 + 1;
        memcpy(0, v28, v33);
        v17[11] = 0;
        v17[12] = v29 + 1;
        v17[13] = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v24++ = *(&v79 + i);
      }

      v17[12] = v24;
    }

    v34 = v17[11];
    v35 = v17[13] - v34;
    if (v35 < &v24[-v34 + 8])
    {
      std::vector<unsigned char>::reserve(v17 + 11, (2 * v35) | 1);
      v24 = v17[12];
    }

    for (j = 0; j != 8; ++j)
    {
      v37 = v17[13];
      if (v24 >= v37)
      {
        v38 = *v23;
        v39 = (v24 - *v23);
        v40 = (v39 + 1);
        if ((v39 + 1) < 0)
        {
          goto LABEL_98;
        }

        v41 = v37 - v38;
        if (2 * v41 > v40)
        {
          v40 = 2 * v41;
        }

        if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v42 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          operator new();
        }

        v43 = v24 - *v23;
        *v39 = *(&v78 + j);
        v24 = v39 + 1;
        memcpy(0, v38, v43);
        v17[11] = 0;
        v17[12] = v39 + 1;
        v17[13] = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v24++ = *(&v78 + j);
      }

      v17[12] = v24;
    }

    v44 = v17[11];
    v45 = v17[13] - v44;
    if (v45 < &v24[-v44 + 8])
    {
      std::vector<unsigned char>::reserve(v17 + 11, (2 * v45) | 1);
      v24 = v17[12];
    }

    for (k = 0; k != 8; ++k)
    {
      v47 = v17[13];
      if (v24 >= v47)
      {
        v48 = *v23;
        v49 = (v24 - *v23);
        v50 = (v49 + 1);
        if ((v49 + 1) < 0)
        {
          goto LABEL_98;
        }

        v51 = v47 - v48;
        if (2 * v51 > v50)
        {
          v50 = 2 * v51;
        }

        if (v51 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v52 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          operator new();
        }

        v53 = v24 - *v23;
        *v49 = *(&v77 + k);
        v24 = v49 + 1;
        memcpy(0, v48, v53);
        v17[11] = 0;
        v17[12] = v49 + 1;
        v17[13] = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v24++ = *(&v77 + k);
      }

      v17[12] = v24;
    }

    v54 = v17[11];
    v55 = v17[13] - v54;
    if (v55 < &v24[-v54 + 4])
    {
      std::vector<unsigned char>::reserve(v17 + 11, (2 * v55) | 1);
      v24 = v17[12];
    }

    for (m = 0; m != 4; ++m)
    {
      v57 = v17[13];
      if (v24 >= v57)
      {
        v58 = *v23;
        v59 = (v24 - *v23);
        v60 = (v59 + 1);
        if ((v59 + 1) < 0)
        {
          goto LABEL_98;
        }

        v61 = v57 - v58;
        if (2 * v61 > v60)
        {
          v60 = 2 * v61;
        }

        if (v61 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v62 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          operator new();
        }

        v63 = v24 - *v23;
        *v59 = *(&v76 + m);
        v24 = v59 + 1;
        memcpy(0, v58, v63);
        v17[11] = 0;
        v17[12] = v59 + 1;
        v17[13] = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v24++ = *(&v76 + m);
      }

      v17[12] = v24;
    }

    v75 = v74;
    v64 = v17[11];
    v65 = v17[13] - v64;
    if (v65 < &v24[-v64 + 8])
    {
      std::vector<unsigned char>::reserve(v17 + 11, (2 * v65) | 1);
      v24 = v17[12];
    }

    for (n = 0; n != 8; ++n)
    {
      v67 = v17[13];
      if (v24 >= v67)
      {
        v68 = *v23;
        v69 = (v24 - *v23);
        v70 = (v69 + 1);
        if ((v69 + 1) < 0)
        {
          goto LABEL_98;
        }

        v71 = v67 - v68;
        if (2 * v71 > v70)
        {
          v70 = 2 * v71;
        }

        if (v71 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v72 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v72 = v70;
        }

        if (v72)
        {
          operator new();
        }

        v73 = v24 - *v23;
        *v69 = *(&v75 + n);
        v24 = v69 + 1;
        memcpy(0, v68, v73);
        v17[11] = 0;
        v17[12] = v69 + 1;
        v17[13] = 0;
        if (v68)
        {
          operator delete(v68);
        }
      }

      else
      {
        *v24++ = *(&v75 + n);
      }

      v17[12] = v24;
    }
  }
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeVariableTracePoint(int8x8_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *a2 - 8 * *(*a2 + 8);
  v5 = *(*(v4 + 16) + 128);
  v6 = *(v5 + 32);
  if (v6 > 0x40)
  {
    v7 = **(v5 + 24);
  }

  else
  {
    v7 = (*(v5 + 24) << -v6) >> -v6;
  }

  v8 = *(*(v4 + 40) + 128);
  v9 = *(v8 + 32);
  if (v9 > 0x40)
  {
    LODWORD(v10) = **(v8 + 24);
  }

  else
  {
    v10 = (*(v8 + 24) << -v9) >> -v9;
  }

  v11 = *(a2 + 16);
  v12 = *(v4 + 32);
  v13 = *v12;
  if (*v12)
  {
    if (v13 == 24)
    {
      v25 = (v12 - *(v12 + 2))[3];
      v148[0] = 0;
      v148[1] = 0;
      v147 = v148;
      v26 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v25, &v147);
      std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v148[0]);
      Filename = llvm::DIVariable::getFilename(v12);
      llvm::StringRef::str(&v151, Filename, v28);
      Directory = llvm::DIVariable::getDirectory(v12);
      llvm::StringRef::str(__p, Directory, v30);
      v31 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v12 + 1, &v151, __p, *(v12 + 6), -1);
      if (v150 < 0)
      {
        operator delete(__p[0]);
      }

      if (v153 < 0)
      {
        operator delete(v151);
      }

      v32 = (v12 - *(v12 + 2))[1];
      if (v32)
      {
        String = llvm::MDString::getString(v32);
        v35 = v34;
      }

      else
      {
        String = 0;
        v35 = 0;
      }

      llvm::StringRef::str(&v151, String, v35);
      v78 = ShaderDebugger::Metadata::MDSerializer::serializeGlobalVariable(a1, v12, &v151, v26, v31);
      goto LABEL_88;
    }

    if (v13 == 25)
    {
      v14 = (v12 - *(v12 + 2))[3];
      v155[0] = 0;
      v155[1] = 0;
      v154 = v155;
      v15 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v14, &v154);
      std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v155[0]);
      v16 = llvm::DIVariable::getFilename(v12);
      llvm::StringRef::str(&v151, v16, v17);
      v18 = llvm::DIVariable::getDirectory(v12);
      llvm::StringRef::str(__p, v18, v19);
      v20 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v12 + 1, &v151, __p, *(v12 + 6), -1);
      if (v150 < 0)
      {
        operator delete(__p[0]);
      }

      if (v153 < 0)
      {
        operator delete(v151);
      }

      v21 = (v12 - *(v12 + 2))[1];
      if (v21)
      {
        v22 = llvm::MDString::getString(v21);
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      llvm::StringRef::str(&v151, v22, v24);
      v79 = *(v12 + 16) != 0;
      v80 = a1;
      v81 = v12;
      v82 = v15;
      v83 = v20;
      goto LABEL_87;
    }

LABEL_82:
    v77 = -1;
    goto LABEL_90;
  }

  v36 = *(a2 + 8);
  v37 = llvm::MDString::getString(*(v4 + 32));
  if (v38 < 0xD)
  {
    goto LABEL_82;
  }

  v39 = *v37 == 0x765F6E7275746572 && *(v37 + 5) == 0x2865756C61765F6ELL;
  if (!v39)
  {
    goto LABEL_82;
  }

  v40 = v38;
  if (*(v37 + v38 - 1) != 41)
  {
    goto LABEL_82;
  }

  v138 = v36;
  v139 = v37;
  std::string::basic_string[abi:nn200100]<0>(&v151, "return_value(");
  v41 = v152;
  if ((v153 & 0x80u) == 0)
  {
    v41 = v153;
  }

  v42 = v40 - 1;
  if (v40 < v41)
  {
    v41 = v40;
  }

  v141 = v41;
  v142 = v40 - 1;
  v43 = v42 >= v41;
  v44 = v42 - v41;
  if (v43)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if ((v153 & 0x8000000000000000) != 0)
  {
    operator delete(v151);
  }

  v46 = *(v3 - 8 * *(v3 + 8) + 24);
  if (v46)
  {
    if (*v46 == 5)
    {
      Subprogram = llvm::DILocalScope::getSubprogram(*(v46 - 8 * *(v46 + 8)));
      if (Subprogram)
      {
LABEL_163:
        v132 = *(Subprogram - 8 * *(Subprogram + 8) + 32);
        if (v132)
        {
          v133 = *(v132 - 8 * *(v132 + 8) + 24);
          if (v133)
          {
            v134 = *(v133 + 8);
            if (v134)
            {
              v135 = *(v133 - 8 * v134);
              if (v135)
              {
                v146[0] = 0;
                v146[1] = 0;
                v145 = v146;
                v76 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v135, &v145);
                std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v146[0]);
                goto LABEL_169;
              }
            }
          }
        }

LABEL_168:
        v76 = -1;
        goto LABEL_169;
      }
    }
  }

  v48 = *(v138 + 88);
  if (!v48)
  {
    goto LABEL_168;
  }

  v137 = v7;
  v143 = v10;
  v49 = *(v138 + 80);
  v50 = 8 * v48;
  v140 = v45;
  do
  {
    Subprogram = *v49;
    v51 = *(*v49 - 8 * *(*v49 + 8) + 24);
    if (v51)
    {
      v52 = llvm::MDString::getString(v51);
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    llvm::StringRef::str(&v151, v52, v54);
    v55 = v153;
    v56 = v153;
    v57 = v151;
    if ((v153 & 0x80u) != 0)
    {
      v55 = v152;
    }

    v58 = v45;
    v59 = v55 == v45;
    if (v59 && v142 > v141)
    {
      if ((v153 & 0x80u) == 0)
      {
        v61 = &v151;
      }

      else
      {
        v61 = v151;
      }

      v59 = memcmp(v61, v139 + v141, v58) == 0;
    }

    if (v56 < 0)
    {
      operator delete(v57);
    }

    if (v59)
    {
LABEL_162:
      LODWORD(v10) = v143;
      LODWORD(v7) = v137;
      goto LABEL_163;
    }

    ++v49;
    v50 -= 8;
    v45 = v140;
  }

  while (v50);
  v62 = *(v138 + 88);
  if (v62)
  {
    v63 = *(v138 + 80);
    for (i = 8 * v62; i; i -= 8)
    {
      Subprogram = *v63;
      v65 = *(*v63 - 8 * *(*v63 + 8) + 16);
      if (v65)
      {
        v66 = llvm::MDString::getString(v65);
        v68 = v67;
      }

      else
      {
        v66 = 0;
        v68 = 0;
      }

      llvm::StringRef::str(&v151, v66, v68);
      v69 = v153;
      v70 = v153;
      v71 = v151;
      if ((v153 & 0x80u) != 0)
      {
        v69 = v152;
      }

      v39 = v69 == v45;
      v72 = v45;
      v73 = v69 == v45;
      if (v39 && v142 > v141)
      {
        if ((v153 & 0x80u) == 0)
        {
          v75 = &v151;
        }

        else
        {
          v75 = v151;
        }

        v73 = memcmp(v75, v139 + v141, v72) == 0;
        if (v70 < 0)
        {
LABEL_79:
          operator delete(v71);
          if (v73)
          {
            goto LABEL_162;
          }

          goto LABEL_80;
        }
      }

      else if (v153 < 0)
      {
        goto LABEL_79;
      }

      if (v73)
      {
        goto LABEL_162;
      }

LABEL_80:
      ++v63;
      v45 = v140;
    }
  }

  v76 = -1;
  LODWORD(v10) = v143;
  LODWORD(v7) = v137;
LABEL_169:
  v136 = *(v4 + 32);
  std::string::basic_string[abi:nn200100]<0>(&v151, "ret");
  v80 = a1;
  v81 = v136;
  v82 = v76;
  v83 = -1;
  v79 = 0;
LABEL_87:
  v78 = ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(v80, v81, &v151, v82, v83, v79);
LABEL_88:
  v77 = v78;
  if (v153 < 0)
  {
    operator delete(v151);
  }

LABEL_90:
  __p[0] = (v7 & 0xFFFFFF | (v11 << 24));
  v156 = 7;
  v157[0] = v77;
  v151 = &v156;
  v84 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 7uLL);
  v85 = v84;
  v87 = v84 + 5;
  v86 = v84[5];
  v88 = v84[6];
  v89 = v86;
  if (v86 != v88)
  {
    while (*v89 != v3)
    {
      v89 += 8;
      if (v89 == v88)
      {
        v89 = v84[6];
        break;
      }
    }
  }

  if (v88 == v89 || v89 - v86 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v84 + 5), v3))
  {
    v144 = v10;
    v151 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v87, v3);
    v91 = (v85 + 11);
    v90 = v85[11];
    v92 = v85[12];
    v93 = v85[13] - v90;
    if (v93 < &v92[-v90 + 8])
    {
      std::vector<unsigned char>::reserve(v85 + 11, (2 * v93) | 1);
      v92 = v85[12];
    }

    for (j = 0; j != 8; ++j)
    {
      v95 = v85[13];
      if (v92 >= v95)
      {
        v96 = *v91;
        v97 = (v92 - *v91);
        v98 = (v97 + 1);
        if ((v97 + 1) < 0)
        {
LABEL_170:
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v99 = v95 - v96;
        if (2 * v99 > v98)
        {
          v98 = 2 * v99;
        }

        if (v99 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v100 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v100 = v98;
        }

        if (v100)
        {
          operator new();
        }

        v101 = v92 - *v91;
        *v97 = *(&v151 + j);
        v92 = v97 + 1;
        memcpy(0, v96, v101);
        v85[11] = 0;
        v85[12] = v97 + 1;
        v85[13] = 0;
        if (v96)
        {
          operator delete(v96);
        }
      }

      else
      {
        *v92++ = *(&v151 + j);
      }

      v85[12] = v92;
    }

    v102 = v85[11];
    v103 = v85[13] - v102;
    if (v103 < &v92[-v102 + 8])
    {
      std::vector<unsigned char>::reserve(v85 + 11, (2 * v103) | 1);
      v92 = v85[12];
    }

    for (k = 0; k != 8; ++k)
    {
      v105 = v85[13];
      if (v92 >= v105)
      {
        v106 = *v91;
        v107 = (v92 - *v91);
        v108 = (v107 + 1);
        if ((v107 + 1) < 0)
        {
          goto LABEL_170;
        }

        v109 = v105 - v106;
        if (2 * v109 > v108)
        {
          v108 = 2 * v109;
        }

        if (v109 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v110 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v110 = v108;
        }

        if (v110)
        {
          operator new();
        }

        v111 = v92 - *v91;
        *v107 = *(__p + k);
        v92 = v107 + 1;
        memcpy(0, v106, v111);
        v85[11] = 0;
        v85[12] = v107 + 1;
        v85[13] = 0;
        if (v106)
        {
          operator delete(v106);
        }
      }

      else
      {
        *v92++ = *(__p + k);
      }

      v85[12] = v92;
    }

    v112 = v85[11];
    v113 = v85[13] - v112;
    if (v113 < &v92[-v112 + 8])
    {
      std::vector<unsigned char>::reserve(v85 + 11, (2 * v113) | 1);
      v92 = v85[12];
    }

    for (m = 0; m != 8; ++m)
    {
      v115 = v85[13];
      if (v92 >= v115)
      {
        v116 = *v91;
        v117 = (v92 - *v91);
        v118 = (v117 + 1);
        if ((v117 + 1) < 0)
        {
          goto LABEL_170;
        }

        v119 = v115 - v116;
        if (2 * v119 > v118)
        {
          v118 = 2 * v119;
        }

        if (v119 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v120 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v120 = v118;
        }

        if (v120)
        {
          operator new();
        }

        v121 = v92 - *v91;
        *v117 = *(v157 + m);
        v92 = v117 + 1;
        memcpy(0, v116, v121);
        v85[11] = 0;
        v85[12] = v117 + 1;
        v85[13] = 0;
        if (v116)
        {
          operator delete(v116);
        }
      }

      else
      {
        *v92++ = *(v157 + m);
      }

      v85[12] = v92;
    }

    v156 = v144;
    v122 = v85[11];
    v123 = v85[13] - v122;
    if (v123 < &v92[-v122 + 8])
    {
      std::vector<unsigned char>::reserve(v85 + 11, (2 * v123) | 1);
      v92 = v85[12];
    }

    for (n = 0; n != 8; ++n)
    {
      v125 = v85[13];
      if (v92 >= v125)
      {
        v126 = *v91;
        v127 = (v92 - *v91);
        v128 = (v127 + 1);
        if ((v127 + 1) < 0)
        {
          goto LABEL_170;
        }

        v129 = v125 - v126;
        if (2 * v129 > v128)
        {
          v128 = 2 * v129;
        }

        if (v129 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v130 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v130 = v128;
        }

        if (v130)
        {
          operator new();
        }

        v131 = v92 - *v91;
        *v127 = *(&v157[-1] + n);
        v92 = v127 + 1;
        memcpy(0, v126, v131);
        v85[11] = 0;
        v85[12] = v127 + 1;
        v85[13] = 0;
        if (v126)
        {
          operator delete(v126);
        }
      }

      else
      {
        *v92++ = *(&v157[-1] + n);
      }

      v85[12] = v92;
    }
  }
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeFunctionCallTracePoint(int8x8_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = v6 & 0xFFFFFF | (*(a2 + 4) << 24);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = *(v3 - 8 * *(v3 + 8) + 32);
  if (v9)
  {
    if (*v9)
    {
      if (*v9 != 17)
      {
        return;
      }

      v10 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(a1, v9);
      v11 = a1;
      v12 = v3;
      v13 = v7;
    }

    else
    {
      String = llvm::MDString::getString(v9);
      llvm::StringRef::str(__p, String, v16);
      v17 = ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(a1, -1, __p, TracePointLocation);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = a1;
      v12 = v3;
      v13 = v7;
      v10 = v17;
    }

    ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(v11, v12, v13, 0, v10, TracePointLocation);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "__gt_unnamed_function_call__");
    v14 = ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(a1, -1, __p, TracePointLocation);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(a1, v3, v7, 0, v14, TracePointLocation);
  }
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(int8x8_t *a1, uint64_t a2)
{
  v4 = a2 + 1;
  v5 = a2;
  if (*a2 == 15 || (v5 = *(a2 - 8 * *(a2 + 8))) != 0)
  {
    v6 = *(v5 - 8 * *(v5 + 8));
    if (v6)
    {
      String = llvm::MDString::getString(v6);
      v9 = v8;
    }

    else
    {
      v9 = 0;
      String = 0;
    }
  }

  else
  {
    v9 = 0;
    String = "";
  }

  llvm::StringRef::str(v24, String, v9);
  v10 = a2;
  if (*a2 == 15 || (v10 = *(a2 - 8 * *(a2 + 8))) != 0)
  {
    v11 = *(v10 - 8 * *(v10 + 8) + 8);
    if (v11)
    {
      v12 = llvm::MDString::getString(v11);
      v14 = v13;
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = "";
  }

  llvm::StringRef::str(__p, v12, v14);
  v15 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v4, v24, __p, *(a2 + 24), -1);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v16 = *(a2 - 8 * *(a2 + 8) + 16);
  if (v16)
  {
    v17 = llvm::MDString::getString(v16);
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  llvm::StringRef::str(v24, v17, v19);
  v20 = ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(a1, a2, v24, v15);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  return v20;
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeFunctionEndTracePoint(int8x8_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = v6 & 0xFFFFFF | (*(a2 + 4) << 24);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(a1, *(v3 - 8 * *(v3 + 8) + 32));

  ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(a1, v3, v7, 2, v9, TracePointLocation);
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeFunctionBeginTracePoint(int8x8_t *a1, _DWORD *a2)
{
  v3 = *a2;
  v4 = *a2 - 8 * *(*a2 + 8);
  v5 = *(*(v4 + 16) + 128);
  v6 = *(v5 + 32);
  if (v6 > 0x40)
  {
    v7 = **(v5 + 24);
  }

  else
  {
    v7 = (*(v5 + 24) << -v6) >> -v6;
  }

  v8 = v7 & 0xFFFFFF | (a2[4] << 24);
  v9 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(a1, *(v4 + 32));

  ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(a1, v3, v8, 1, v9, -1);
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeThreadTracePoint(int8x8_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = *(a2 + 4);
  ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v8 = *(*(v3 - 8 * *(v3 + 8) + 32) + 128);
  v9 = *(v8 + 32);
  if (v9 > 0x40)
  {
    LODWORD(v8) = **(v8 + 24);
  }

  else
  {
    v8 = (*(v8 + 24) << -v9) >> -v9;
  }

  v49 = v8;
  v50 = v6 & 0xFFFFFF | (v7 << 24);
  v48 = 5;
  v51 = &v48;
  v10 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 5uLL);
  v11 = v10;
  v13 = v10 + 5;
  v12 = v10[5];
  v14 = v10[6];
  v15 = v12;
  if (v12 != v14)
  {
    while (*v15 != v3)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = v10[6];
        break;
      }
    }
  }

  if (v14 == v15 || v15 - v12 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v10 + 5), v3))
  {
    v51 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v13, v3);
    v17 = (v11 + 11);
    v16 = v11[11];
    v18 = v11[12];
    v19 = v11[13] - v16;
    if (v19 < &v18[-v16 + 8])
    {
      std::vector<unsigned char>::reserve(v11 + 11, (2 * v19) | 1);
      v18 = v11[12];
    }

    for (i = 0; i != 8; ++i)
    {
      v21 = v11[13];
      if (v18 >= v21)
      {
        v22 = *v17;
        v23 = (v18 - *v17);
        v24 = (v23 + 1);
        if ((v23 + 1) < 0)
        {
LABEL_63:
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v25 = v21 - v22;
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          operator new();
        }

        v27 = v18 - *v17;
        *v23 = *(&v51 + i);
        v18 = v23 + 1;
        memcpy(0, v22, v27);
        v11[11] = 0;
        v11[12] = v23 + 1;
        v11[13] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v18++ = *(&v51 + i);
      }

      v11[12] = v18;
    }

    v28 = v11[11];
    v29 = v11[13] - v28;
    if (v29 < &v18[-v28 + 8])
    {
      std::vector<unsigned char>::reserve(v11 + 11, (2 * v29) | 1);
      v18 = v11[12];
    }

    for (j = 0; j != 8; ++j)
    {
      v31 = v11[13];
      if (v18 >= v31)
      {
        v32 = *v17;
        v33 = (v18 - *v17);
        v34 = (v33 + 1);
        if ((v33 + 1) < 0)
        {
          goto LABEL_63;
        }

        v35 = v31 - v32;
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          operator new();
        }

        v37 = v18 - *v17;
        *v33 = *(&v50 + j);
        v18 = v33 + 1;
        memcpy(0, v32, v37);
        v11[11] = 0;
        v11[12] = v33 + 1;
        v11[13] = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v18++ = *(&v50 + j);
      }

      v11[12] = v18;
    }

    v38 = v11[11];
    v39 = v11[13] - v38;
    if (v39 < &v18[-v38 + 8])
    {
      std::vector<unsigned char>::reserve(v11 + 11, (2 * v39) | 1);
      v18 = v11[12];
    }

    for (k = 0; k != 8; ++k)
    {
      v41 = v11[13];
      if (v18 >= v41)
      {
        v42 = *v17;
        v43 = (v18 - *v17);
        v44 = (v43 + 1);
        if ((v43 + 1) < 0)
        {
          goto LABEL_63;
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

        v47 = v18 - *v17;
        *v43 = *(&v49 + k);
        v18 = v43 + 1;
        memcpy(0, v42, v47);
        v11[11] = 0;
        v11[12] = v43 + 1;
        v11[13] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v18++ = *(&v49 + k);
      }

      v11[12] = v18;
    }
  }
}

apr_hash_t *MakeFunctionHandleMaps(uint64_t a1, apr_pool_t *pool)
{
  v4 = apr_hash_make(pool);
  v5 = apr_hash_make(pool);
  if (*(a1 + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 24) + 8 * v6);
      if (*(v7 + 88))
      {
        apr_hash_set(v4, (v7 + 8), 8, (v7 + 88));
      }

      if (*(v7 + 48))
      {
        apr_hash_set(v5, (v7 + 48), 8, (v7 + 8));
      }

      ++v6;
    }

    while (v6 < *(a1 + 12));
  }

  return v4;
}

id StringFromArchive(void *a1, uint64_t a2, char *a3)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if ((*(FileWithFilename + 24) & 2) != 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:*a1];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    v12 = [v10 stringByAppendingPathComponent:v11];

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:v12 encoding:4 error:0];
  }

  else
  {
    v7 = FileWithFilename;
    v8 = malloc_type_malloc(*(FileWithFilename + 8), 0x1AD85F42uLL);
    GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, v7, v8, *(v7 + 8), 0);
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v8 length:*(v7 + 8) encoding:4 freeWhenDone:1];
  }

  return v9;
}