size_t DecodeDYMTL4PipelineDescriptor(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v80[1] = a2;
  bzero(__dst, 0x3C8uLL);
  v9 = (a1 + 8);
  v10 = *a1;
  result = strlen((a1 + 8));
  v80[0] = (a1 + 8 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(a1 + 8))
  {
    result = strlen(v9);
    v14 = a3 + 74;
    v15 = a3[74];
    v12 = result + 1;
    if (result != -1)
    {
      v13 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  *v14 = v15 + v12;
  if (a4)
  {
    result = memcpy(v13, v9, v12);
  }

  v76 = v13;
  v16 = vuzp1q_s32(*v80[0], *(v80[0] + 1));
  v17 = *(v80[0] + 32);
  v18 = *(v80[0] + 40);
  v19 = v80[0][6];
  v20 = v80[0][7];
  v21 = v80[0] + 8;
  v22 = v80[0] + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (v20)
  {
    v23 = a3[74];
  }

  else
  {
    v23 = 0;
  }

  a3[74] += v20;
  if (a4)
  {
    if (v20)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v77 = v16;
    result = memcpy(v23, v24, v20);
    v16 = v77;
  }

  v78 = a5;
  v25 = COERCE_DOUBLE(vmovn_s32(v16));
  v26 = v10;
  if (v10 < 0x69)
  {
    v27 = 0;
    v28 = (v22 + 16);
  }

  else
  {
    v27 = *(v22 + 2);
    v28 = (v22 + 24);
  }

  if (a4)
  {
    v29 = v23;
  }

  else
  {
    v29 = 0;
  }

  v73 = v29;
  if (a4)
  {
    v30 = v20;
  }

  else
  {
    v30 = 0;
  }

  v72 = v30;
  if (a4)
  {
    v31 = v19;
  }

  else
  {
    v31 = 0;
  }

  if (!a4)
  {
    v27 = 0;
  }

  v70 = v27;
  v71 = v31;
  if (a4)
  {
    v32 = *v22;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v32 = 0;
  }

  if (a4)
  {
    v33 = v22[8];
  }

  else
  {
    v33 = 0;
  }

  v74 = v33;
  v75 = v32;
  if (a4)
  {
    v34 = v25;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = v28 + 1;
  v36 = *v28;
  v80[0] = v28 + 1;
  if (v36 > 2)
  {
    if (v36 != 3)
    {
      if (v36 != 4)
      {
        if (v36 == 5)
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          __src = 0u;
          v82 = 0u;
          v37 = v28[1];
          v38 = v28 + 2;
          v80[0] = v28 + 2;
          if (v37)
          {
            v39 = &v84 + 4;
            v40 = v78;
            do
            {
              v42 = *v38++;
              v41 = v42;
              v80[0] = v38;
              if (a4)
              {
                *v39 = v41;
              }

              ++v39;
              --v37;
            }

            while (v37);
          }

          else
          {
            v40 = v78;
          }

          *(&v85 + 1) = *v38;
          *&v86 = v38[1];
          v63 = v38[4];
          v83 = *(v38 + 1);
          *&v84 = v63;
          BYTE8(v86) = v38[5];
          v64 = v38[6];
          v80[0] = v38 + 7;
          BYTE9(v86) = v64;
          result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, a4, v40);
          if (a4)
          {
            __dst[2] = v83;
            __dst[3] = v84;
            __dst[4] = v85;
            __dst[5] = v86;
            __dst[0] = __src;
            __dst[1] = v82;
          }
        }

        goto LABEL_86;
      }

      v53 = v17;
      v96 = 0;
      memset(v95, 0, sizeof(v95));
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      memset(v91, 0, sizeof(v91));
      memset(v90, 0, sizeof(v90));
      v88 = 0u;
      memset(v89, 0, sizeof(v89));
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      __src = 0u;
      LOBYTE(v95[7]) = v28[1];
      BYTE1(v95[7]) = v28[2];
      v54 = v28[3];
      v55 = v28 + 4;
      v80[0] = v28 + 4;
      if (v54)
      {
        p_src = &__src;
        v57 = v78;
        do
        {
          MakeDYMTL4RenderPipelineColorAttachmentDescriptor(v80, p_src++, a4);
          --v54;
        }

        while (v54);
        v55 = v80[0];
      }

      else
      {
        v57 = v78;
      }

      v59 = *v55;
      v80[0] = v55 + 1;
      v95[0] = v59;
      MakeDYMTL4FunctionDescriptor(v80, v89, a3, a4, v57);
      v60 = v80[0];
      *&v95[1] = *v80[0];
      v80[0] += 4;
      *&v95[3] = *(v60 + 1);
      MakeDYMTL4FunctionDescriptor(v80, v90, a3, a4, v57);
      v61 = *v80[0]++;
      BYTE3(v95[7]) = v61;
      result = MakeDYMTL4FunctionDescriptor(v80, v91, a3, a4, v57);
      BYTE4(v95[7]) = *v80[0];
      *&v95[5] = *(v80[0] + 1);
      BYTE5(v95[7]) = v80[0][3];
      v92 = *(v80[0] + 2);
      v93 = *(v80[0] + 3);
      v94 = *(v80[0] + 4);
      BYTE6(v95[7]) = v80[0][10];
      LOBYTE(v96) = v80[0][11];
      BYTE1(v96) = v80[0][12];
      HIBYTE(v95[7]) = v80[0][13];
      if (v26 > 0x6E)
      {
        BYTE2(v95[7]) = v80[0][14];
      }

      v17 = v53;
      if (a4)
      {
        v62 = 344;
LABEL_85:
        result = memcpy(__dst, &__src, v62);
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    __src = 0u;
    v82 = 0u;
    v80[0] = &v35[(strlen(v28 + 8) & 0xFFFFFFFFFFFFFFF8) + 8];
    if (*v35)
    {
      v47 = (v28 + 1);
    }

    else
    {
      v47 = 0;
    }

    if (*v35)
    {
      v48 = strlen(v47);
      v49 = a3[74];
      v50 = v48 + 1;
      v51 = v78;
      if (v48 != -1)
      {
        v52 = a3[74];
        goto LABEL_69;
      }
    }

    else
    {
      v49 = a3[74];
      v51 = v78;
    }

    v50 = 0;
    v52 = 0;
LABEL_69:
    a3[74] = v49 + v50;
    if (a4)
    {
      memcpy(v52, v47, v50);
      *&v83 = v52;
      result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, 1, v51);
      __dst[0] = __src;
      __dst[1] = v82;
      *&__dst[2] = v83;
    }

    else
    {
      result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, 0, v51);
    }

    goto LABEL_86;
  }

  if (v36 == 1)
  {
    *&v85 = 0;
    v83 = 0u;
    v84 = 0u;
    __src = 0u;
    v82 = 0u;
    result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, a4, v78);
    *(&v84 + 1) = *v80[0];
    v58 = v80[0][3];
    v83 = *(v80[0] + 1);
    *&v84 = v58;
    LOBYTE(v85) = v80[0][4];
    BYTE2(v85) = v80[0][5];
    BYTE1(v85) = v80[0][6];
    if (a4)
    {
      __dst[2] = v83;
      __dst[3] = v84;
      *&__dst[4] = v85;
      __dst[0] = __src;
      __dst[1] = v82;
    }
  }

  else if (v36 == 2)
  {
    v69 = v17;
    bzero(&__src, 0x3C8uLL);
    v101 = v28[1];
    v102 = v28[2];
    v43 = v28[3];
    v44 = v28 + 4;
    v80[0] = v28 + 4;
    if (v43)
    {
      v45 = &v97;
      v46 = v78;
      do
      {
        MakeDYMTL4RenderPipelineColorAttachmentDescriptor(v80, v45, a4);
        v45 += 2;
        --v43;
      }

      while (v43);
      v44 = v80[0];
    }

    else
    {
      v46 = v78;
    }

    v65 = *v44;
    v80[0] = v44 + 1;
    v99[4] = v65;
    MakeDYMTL4FunctionDescriptor(v80, &v98, a3, a4, v46);
    v104 = *v80[0];
    v100 = *(v80[0] + 1);
    v105 = v80[0][3];
    v106 = v80[0][4];
    v66 = v80[0][5];
    v80[0] += 6;
    v108 = v66;
    MakeDYMTLVertexDescriptor(v80, &__src, v26, a4);
    result = MakeDYMTL4FunctionDescriptor(v80, v99, a3, a4, v46);
    v107 = *v80[0];
    v17 = v69;
    if (v26 > 0x6E)
    {
      v103 = v80[0][1];
    }

    if (a4)
    {
      v62 = 968;
      goto LABEL_85;
    }
  }

LABEL_86:
  v67 = a3[42];
  a3[42] = v67 + 1024;
  if (a4)
  {
    result = memcpy(v67, __dst, 0x3C8uLL);
    *(v67 + 968) = v73;
    *(v67 + 976) = v72;
    *(v67 + 984) = v71;
    *(v67 + 992) = v70;
    *(v67 + 1000) = vuzp1_s8(*&v34, v68).u32[0];
    *(v67 + 1004) = v17;
    *(v67 + 1005) = v18;
    *(v67 + 1006) = v75;
    *(v67 + 1007) = v74;
    *(v67 + 1008) = v76;
    *(v67 + 1016) = v36;
    *(v67 + 1017) = 0;
    *(v67 + 1020) = 0;
  }

  return result;
}

void DecodeDYMTL4AccelerationStructureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 8);
  v24[0] = a1 + 16;
  v24[1] = a2;
  BYTE8(v23) = v6;
  if (v6 == 5)
  {
    MakeDYMTL4PrimitiveAccelerationStructureDescriptor(v24, &v18, a3, a4);
    goto LABEL_8;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(v24, &v18, a4);
    }

LABEL_8:
    v14 = *(a3 + 344);
    *(a3 + 344) = v14 + 6;
    if (!a4)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((a4 & 1) == 0)
  {
    *(a3 + 344) += 96;
    return;
  }

  v7 = *(a1 + 96);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v18 = *(a1 + 24);
  v19 = v12;
  *&v20 = v11;
  *(&v20 + 1) = v10;
  v21 = v13;
  LOBYTE(v22) = v9;
  BYTE1(v22) = v8;
  BYTE2(v22) = v7;
  *(&v22 + 3) = 0;
  BYTE7(v22) = 0;
  v14 = *(a3 + 344);
  *(a3 + 344) = v14 + 6;
LABEL_9:
  v15 = v21;
  v14[2] = v20;
  v14[3] = v15;
  v16 = v23;
  v14[4] = v22;
  v14[5] = v16;
  v17 = v19;
  *v14 = v18;
  v14[1] = v17;
}

void DecodeDYMTLAccelerationStructureDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = 0;
  LODWORD(v9) = 0;
  v231[0] = a1;
  v231[1] = a2;
  v230 = 0;
  v10 = *a1;
  v11 = *(a1 + 8);
  v166 = *(a1 + 8);
  v167 = *(a1 + 16);
  v12 = 0uLL;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      if (v10 < 0x4E)
      {
        v20 = 0;
        v27 = 0;
        v28 = 0;
        if (!v6)
        {
          goto LABEL_184;
        }
      }

      else
      {
        v20 = *(a1 + 120);
        v28 = *(a1 + 128);
        v27 = *(a1 + 136);
        if (!v6)
        {
          goto LABEL_184;
        }
      }

      v148 = *(a1 + 24);
      v8 = *(a1 + 32);
      LOBYTE(v13) = *(a1 + 36);
      LOBYTE(v14) = *(a1 + 37);
      LOWORD(v15) = *(a1 + 38);
      v149 = *(a1 + 40);
      v185 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v19 = *(a1 + 80);
      v9 = *(a1 + 88);
      LODWORD(v21) = *(a1 + 96);
      v22 = *(a1 + 104);
      v26 = *(a1 + 112);
      if (v5)
      {
        v201 = *(a1 + 112);
        v205 = v28;
        v207 = v27;
        v213 = *(a1 + 36);
        v217 = *(a1 + 72);
        v210 = *(a1 + 80);
        v150 = *(a1 + 56);
        v223 = *(a1 + 38);
        v226 = *(a1 + 37);
        v229 = *(a1 + 64);
        AliasStream2 = GetAliasStream2(v5, v148);
        v152 = v167;
        if (AliasStream2)
        {
          v220 = *AliasStream2;
        }

        else
        {
          v220 = 0;
        }

        v161 = GetAliasStream2(v5, v149);
        if (v161)
        {
          v162 = *v161;
        }

        else
        {
          v162 = 0;
        }

        v163 = GetAliasStream2(v5, v150);
        if (v163)
        {
          v164 = *v163;
        }

        else
        {
          v164 = 0;
        }

        v165 = GetAliasStream2(v5, v217);
        v169 = v162;
        if (v165)
        {
          v18 = *v165;
        }

        else
        {
          v18 = 0;
        }

        v19 = v210;
        LOBYTE(v13) = v213;
        LOBYTE(v14) = v226;
        v17 = v229;
        v148 = v220;
        LOWORD(v15) = v223;
        v16 = v164;
        v27 = v207;
        v28 = v205;
        v26 = v201;
      }

      else
      {
        v169 = *(a1 + 40);
        v152 = *(a1 + 16);
      }

      v155 = HIDWORD(v148);
      v23 = v22 >> 8;
      v24 = v22 >> 16;
      v25 = v22 >> 24;
      goto LABEL_220;
    }

    v185 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    v169 = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (*(a1 + 8) != 4)
    {
      goto LABEL_199;
    }

    v236 = 0uLL;
    v237 = 0uLL;
    v234 = 0uLL;
    v235 = 0uLL;
    v232 = 0uLL;
    v233 = 0uLL;
    v38 = *(a1 + 24);
    v231[0] = a1 + 32;
    BYTE8(v237) = v38;
    if (v38 == 5)
    {
      MakeDYMTL4PrimitiveAccelerationStructureDescriptor(v231, &v232, v7, v6);
      if (v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v38 == 6)
      {
        if (!v6)
        {
          v169 = 0;
          v185 = 0;
          v8 = 0;
          LOBYTE(v13) = 0;
          LOBYTE(v14) = 0;
          LOWORD(v15) = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          LODWORD(v21) = 0;
          LODWORD(v9) = 0;
          LOBYTE(v22) = 0;
          LOBYTE(v23) = 0;
          LOBYTE(v24) = 0;
          LODWORD(v25) = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          goto LABEL_199;
        }

        v29 = 0;
        v28 = 0;
        v27 = 0;
        v26 = 0;
        LODWORD(v22) = 0;
        v21 = 0;
        v19 = *(a1 + 104);
        v157 = *(a1 + 112);
        v18 = *(a1 + 96);
        v12 = *(a1 + 80);
        v158 = *(a1 + 72);
        v17 = *(a1 + 56);
        v159 = *(a1 + 40);
        v16 = *(a1 + 32);
        LOBYTE(v236) = *(a1 + 64);
        BYTE1(v236) = v158;
        BYTE2(v236) = v157;
        *(&v236 + 3) = 0;
        BYTE7(v236) = 0;
        v8 = DWORD2(v12);
        v13 = HIDWORD(*(&v12 + 1));
        v14 = *(&v12 + 1) >> 40;
        v15 = HIWORD(*(&v12 + 1));
        v185 = *(&v159 + 1);
        v169 = v159;
        goto LABEL_193;
      }

      if (v38 == 7)
      {
        MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(v231, &v232, v6);
      }

      if (v6)
      {
LABEL_21:
        v185 = *(&v232 + 1);
        v169 = v232;
        *&v12 = v233;
        v8 = DWORD2(v233);
        LOBYTE(v13) = BYTE12(v233);
        LOBYTE(v14) = BYTE13(v233);
        LOWORD(v15) = HIWORD(v233);
        v17 = *(&v234 + 1);
        v16 = v234;
        v19 = *(&v235 + 1);
        v18 = v235;
        v21 = *(&v236 + 1);
        LODWORD(v22) = v237;
        v26 = BYTE4(v237);
        v27 = BYTE5(v237);
        v28 = BYTE6(v237);
        v29 = BYTE7(v237);
LABEL_193:
        v9 = HIDWORD(v21);
        LODWORD(v23) = v22 >> 8;
        LODWORD(v24) = WORD1(v22);
        LODWORD(v25) = BYTE3(v22);
        v20 = v236;
        v230 = *(&v237 + 1);
LABEL_199:
        v156 = v7[44];
        v7[44] = v156 + 104;
        if (!v6)
        {
          return;
        }

        LODWORD(v148) = v12;
        LODWORD(v155) = DWORD1(v12);
        goto LABEL_201;
      }
    }

    v169 = 0;
    v185 = 0;
    v8 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    LODWORD(v9) = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *&v12 = 0;
    goto LABEL_199;
  }

  v212 = *a1;
  if (v11 != 1)
  {
    v185 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    v169 = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (*(a1 + 8) == 2)
    {
      v185 = *(a1 + 24);
      v218 = *(a1 + 32);
      v8 = *(a1 + 40);
      v215 = *(a1 + 36);
      LOBYTE(v13) = *(a1 + 44);
      LOBYTE(v14) = *(a1 + 45);
      LOWORD(v15) = *(a1 + 46);
      v31 = *(a1 + 48);
      v30 = *(a1 + 56);
      v23 = a1 + 64;
      v231[0] = a1 + 64;
      v224 = v14;
      v227 = v30;
      v221 = v15;
      if (v30)
      {
        v32 = v13;
        v33 = v7[72];
        v34 = v33;
        do
        {
          v36 = *v23;
          v23 += 8;
          v35 = v36;
          if (v6)
          {
            if (v5)
            {
              v37 = GetAliasStream2(v5, v35);
              if (v37)
              {
                v35 = *v37;
              }

              else
              {
                v35 = 0;
              }
            }

            v33 = v7[72];
            *v33 = v35;
          }

          v7[72] = ++v33;
          --v30;
        }

        while (v30);
        v231[0] = v23;
        LOBYTE(v13) = v32;
        LOWORD(v15) = v221;
        LOBYTE(v14) = v224;
        v16 = v34;
      }

      else
      {
        v16 = 0;
      }

      v169 = v31;
      if (v212 <= 0x38)
      {
        LOBYTE(v22) = 0;
        v20 = 0;
        v19 = 0;
        v18 = 0;
      }

      else
      {
        LOBYTE(v22) = *v23;
        v18 = *(v23 + 8);
        v19 = *(v23 + 16);
        v20 = *(v23 + 24);
        if (v212 >= 0x4E)
        {
          v21 = *(v23 + 32);
          LODWORD(v24) = *(v23 + 40);
          LODWORD(v23) = *(v23 + 48);
          goto LABEL_180;
        }
      }

      v21 = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
LABEL_180:
      v17 = v227;
      if (v6)
      {
        if (v5)
        {
          v153 = v18;
          v208 = v16;
          v211 = v19;
          v214 = v13;
          v154 = GetAliasStream2(v5, v185);
          v152 = v167;
          if (v154)
          {
            v185 = *v154;
          }

          else
          {
            v185 = 0;
          }

          v160 = GetAliasStream2(v5, v153);
          if (v160)
          {
            v18 = *v160;
          }

          else
          {
            v18 = 0;
          }

          v19 = v211;
          LOBYTE(v13) = v214;
          LOBYTE(v14) = v224;
          v17 = v227;
          LOWORD(v15) = v221;
          v16 = v208;
        }

        else
        {
          v152 = v167;
        }

        LODWORD(v155) = v215;
        LODWORD(v148) = v218;
        LODWORD(v25) = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v9 = HIDWORD(v21);
LABEL_220:
        v29 = 0;
        v156 = v7[44];
        v7[44] = v156 + 104;
        goto LABEL_221;
      }

LABEL_184:
      v7[44] += 104;
      return;
    }

    goto LABEL_199;
  }

  v39 = *(a1 + 24);
  v231[0] = a1 + 32;
  v185 = v39;
  if (v39)
  {
    v40 = 0;
    v170 = a3[53];
    v41 = v231[0];
    while (1)
    {
      v225 = v40;
      v42 = 0;
      v43 = 0;
      v44 = v7[53];
      v7[53] = v44 + 152;
      BYTE4(v232) = 0;
      LODWORD(v232) = 0;
      v45 = v41->u8[0];
      v186 = v41->i64[1];
      v46 = v41[1].u8[0];
      i8 = v41[2].i8;
      v231[0] = v41[2].i64;
      v187 = v41[1].u8[8];
      v188 = v46;
      v189 = v45;
      if (v45 > 3)
      {
        break;
      }

      if (v45 == 1)
      {
        v73 = v41[2].i64[0];
        v74 = v41[2].i64[1];
        v50 = v41[3].i64[0];
        v43 = v41[3].i64[1];
        v222 = v41[4].i64[0];
        LOBYTE(v51) = v41[4].i8[8];
        v49 = v41[5].i64[0];
        i8 = &v41[5].i8[8];
        v231[0] = &v41[5].i64[1];
        if (v212 < 0x3C)
        {
          v216 = 0;
          v48 = 0;
          LOBYTE(v180) = 0;
          LOBYTE(v53) = 30;
          if (!v6)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v53 = v41[5].i64[1];
          v48 = v41[6].i64[0];
          v216 = v41[6].i64[1];
          i8 = v41[7].i8;
          v231[0] = v41[7].i64;
          if (v212 < 0x4E)
          {
            LOBYTE(v180) = 0;
            if (!v6)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v180 = v41[7].i64[0];
            i8 = &v41[7].i8[8];
            v231[0] = &v41[7].i64[1];
            if (!v6)
            {
              goto LABEL_109;
            }
          }
        }

        v228 = v74;
        if (v5)
        {
          v172 = v53;
          v176 = v51;
          v203 = v49;
          v109 = v43;
          v110 = v48;
          v111 = GetAliasStream2(v5, v73);
          if (v111)
          {
            v112 = *v111;
          }

          else
          {
            v112 = 0;
          }

          v117 = GetAliasStream2(v5, v109);
          if (v117)
          {
            v118 = *v117;
          }

          else
          {
            v118 = 0;
          }

          v219 = v112;
          v119 = GetAliasStream2(v5, v110);
          if (v119)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v42 = 0;
            v57 = 0;
            v58 = 0;
            v209 = 0;
            v206 = 0;
            v59 = 0;
            v48 = *v119;
          }

          else
          {
            v48 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v42 = 0;
            v57 = 0;
            v58 = 0;
            v209 = 0;
            v206 = 0;
            v59 = 0;
          }

          v43 = v118;
          v6 = a4;
          v49 = v203;
          LOBYTE(v53) = v172;
          LOBYTE(v51) = v176;
        }

        else
        {
          v219 = v73;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
        }

        LOBYTE(v52) = v180;
      }

      else if (v45 == 2)
      {
        v43 = v41[2].i64[0];
        v81 = v41[2].i64[1];
        v82 = v41[3].i64[0];
        v48 = v41[3].i64[1];
        i8 = v41[4].i8;
        v231[0] = v41[4].i64;
        if (!v6)
        {
          goto LABEL_109;
        }

        v222 = v81;
        v216 = v82;
        if (!v5)
        {
          goto LABEL_110;
        }

        v83 = v48;
        v84 = GetAliasStream2(v5, v43);
        if (v84)
        {
          v49 = 0;
          v219 = 0;
          v228 = 0;
          v50 = 0;
          LOBYTE(v51) = 0;
          LOBYTE(v53) = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
          v43 = *v84;
        }

        else
        {
          v43 = 0;
          v49 = 0;
          v219 = 0;
          v228 = 0;
          v50 = 0;
          LOBYTE(v51) = 0;
          LOBYTE(v53) = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
        }

        v48 = v83;
        LOBYTE(v52) = 0;
      }

      else
      {
        v219 = 0;
        v222 = 0;
        v48 = 0;
        v216 = 0;
        v49 = 0;
        v228 = 0;
        v50 = 0;
        LOBYTE(v51) = 0;
        LOBYTE(v52) = 0;
        LOBYTE(v53) = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v209 = 0;
        v206 = 0;
        v59 = 0;
        if (v45 != 3)
        {
          goto LABEL_142;
        }

        v60 = v41[2].i64[0];
        v61 = &v41[2].i64[1];
        v231[0] = &v41[2].i64[1];
        v228 = v60;
        if (v60)
        {
          v219 = v7[64];
          v62 = v212;
          do
          {
            v63 = v7[64];
            v7[64] = v63 + 2;
            if (v6)
            {
              v64 = *v61;
              v65 = *(v61 + 8);
              if (v5)
              {
                v66 = GetAliasStream2(v5, v64);
                if (v66)
                {
                  v64 = *v66;
                }

                else
                {
                  v64 = 0;
                }
              }

              *v63 = v64;
              v63[1] = v65;
            }

            v61 += 16;
            --v60;
          }

          while (v60);
          v231[0] = v61;
        }

        else
        {
          v219 = 0;
          v62 = v212;
        }

        v50 = *(v61 + 8);
        v43 = *(v61 + 16);
        v93 = *(v61 + 24);
        LOBYTE(v51) = *(v61 + 32);
        v49 = *(v61 + 40);
        i8 = (v61 + 48);
        v231[0] = v61 + 48;
        if (v62 <= 0x3B)
        {
          v216 = 0;
          v48 = 0;
          LOBYTE(v52) = 0;
          LOBYTE(v53) = 30;
          if (!v6)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v53 = *(v61 + 48);
          v48 = *(v61 + 56);
          v216 = *(v61 + 64);
          i8 = (v61 + 72);
          v231[0] = v61 + 72;
          if (v62 < 0x4E)
          {
            LOBYTE(v52) = 0;
            if (!v6)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v52 = *(v61 + 72);
            i8 = (v61 + 80);
            v231[0] = v61 + 80;
            if (!v6)
            {
              goto LABEL_109;
            }
          }
        }

        v222 = v93;
        if (!v5)
        {
          goto LABEL_111;
        }

        v113 = v52;
        v173 = v53;
        v177 = v51;
        v114 = v49;
        v115 = v48;
        v116 = GetAliasStream2(v5, v43);
        if (v116)
        {
          v43 = *v116;
        }

        else
        {
          v43 = 0;
        }

        v120 = GetAliasStream2(v5, v115);
        LOBYTE(v52) = v113;
        if (v120)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
          v48 = *v120;
        }

        else
        {
          v48 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
        }

        v49 = v114;
        LOBYTE(v53) = v173;
        LOBYTE(v51) = v177;
      }

LABEL_142:
      v196 = v58;
      v198 = v57;
      v200 = v56;
      v192 = v55;
      v194 = v42;
      v204 = 0u;
      if (v212 >= 0x38)
      {
        v178 = v51;
        v182 = v52;
        v123 = v54;
        v124 = v59;
        v174 = v53;
        v125 = v49;
        v126 = v43;
        v127 = v48;
        v41 = &i8[(strlen(i8) & 0xFFFFFFFFFFFFFFF8) + 8];
        v231[0] = v41;
        v128 = *i8;
        if (!*i8)
        {
          i8 = 0;
        }

        if (v128)
        {
          v129 = strlen(i8);
          v130 = v7[74];
          v131 = v129 + 1;
          if (v129 != -1)
          {
            v132 = v7[74];
            goto LABEL_152;
          }
        }

        else
        {
          v130 = v7[74];
        }

        v131 = 0;
        v132 = 0;
LABEL_152:
        v7[74] = v130 + v131;
        if (a4)
        {
          v136 = i8;
          v137 = v132;
          memcpy(v132, v136, v131);
          v132 = v137;
        }

        if (v212 < 0x3D)
        {
          v133 = 0;
          v134 = 0;
        }

        else
        {
          v133 = v41->i64[0];
          v134 = v41->i64[1];
          v204 = v41[1];
          v41 += 2;
          v231[0] = v41;
        }

        v135 = v225;
        v48 = v127;
        v43 = v126;
        v6 = a4;
        v49 = v125;
        LOBYTE(v53) = v174;
        LOBYTE(v51) = v178;
        v59 = v124;
        v54 = v123;
        LOBYTE(v52) = v182;
        if (!a4)
        {
          goto LABEL_165;
        }

LABEL_158:
        if (a5)
        {
          v171 = v134;
          v175 = v132;
          v179 = v54;
          v183 = v59;
          v138 = v52;
          v139 = v53;
          v140 = v44;
          v141 = v51;
          v142 = v49;
          v143 = v43;
          v144 = v48;
          v145 = GetAliasStream2(a5, v133);
          if (v145)
          {
            v133 = *v145;
          }

          else
          {
            v133 = 0;
          }

          v146 = v222;
          v48 = v144;
          v43 = v143;
          v6 = a4;
          v49 = v142;
          LOBYTE(v51) = v141;
          v44 = v140;
          v7 = a3;
          LOBYTE(v53) = v139;
          LOBYTE(v52) = v138;
          v59 = v183;
          v132 = v175;
          v54 = v179;
          v134 = v171;
        }

        else
        {
          v146 = v222;
        }

        *v44 = v43;
        *(v44 + 8) = v146;
        *(v44 + 16) = v48;
        *(v44 + 24) = v216;
        *(v44 + 32) = v49;
        *(v44 + 40) = v219;
        *(v44 + 48) = v228;
        *(v44 + 56) = v50;
        *(v44 + 64) = v54 | (v53 << 16) | (v52 << 8) | v51;
        *(v44 + 72) = v192;
        *(v44 + 80) = v200;
        *(v44 + 88) = v194;
        *(v44 + 89) = v198;
        *(v44 + 90) = v196;
        *(v44 + 91) = v209;
        *(v44 + 92) = v206;
        *(v44 + 93) = v59;
        *(v44 + 94) = 0;
        *(v44 + 96) = v186;
        *(v44 + 104) = v132;
        *(v44 + 112) = v133;
        *(v44 + 120) = v134;
        *(v44 + 128) = vextq_s8(v204, v204, 8uLL);
        *(v44 + 144) = v187;
        *(v44 + 145) = v188;
        *(v44 + 146) = v189;
        *(v44 + 147) = v232;
        *(v44 + 151) = BYTE4(v232);
        goto LABEL_165;
      }

      v132 = 0;
      v133 = 0;
      v134 = 0;
      v41 = i8;
      v135 = v225;
      if (v6)
      {
        goto LABEL_158;
      }

LABEL_165:
      v40 = v135 + 1;
      v5 = a5;
      if (v40 == v185)
      {
        v147 = v170;
        v10 = v212;
        goto LABEL_186;
      }
    }

    if (v45 == 4)
    {
      v75 = v41[2].i64[0];
      v76 = &v41[2].i64[1];
      v231[0] = &v41[2].i64[1];
      v222 = v75;
      if (v75)
      {
        v43 = v7[64];
        do
        {
          v77 = v7[64];
          v7[64] = v77 + 2;
          if (v6)
          {
            v78 = *v76;
            v79 = v76[1];
            if (v5)
            {
              v80 = GetAliasStream2(v5, v78);
              if (v80)
              {
                v78 = *v80;
              }

              else
              {
                v78 = 0;
              }
            }

            *v77 = v78;
            v77[1] = v79;
          }

          v76 += 2;
          --v75;
        }

        while (v75);
        v231[0] = v76;
      }

      else
      {
        v43 = 0;
      }

      v92 = v76[1];
      v48 = v76[2];
      i8 = (v76 + 3);
      v231[0] = (v76 + 3);
      if (v6)
      {
        v216 = v92;
      }

      else
      {
LABEL_109:
        v43 = 0;
        v222 = 0;
        v48 = 0;
        v216 = 0;
      }

LABEL_110:
      v49 = 0;
      v219 = 0;
      v228 = 0;
      v50 = 0;
      LOBYTE(v51) = 0;
      LOBYTE(v52) = 0;
      LOBYTE(v53) = 0;
LABEL_111:
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v42 = 0;
      v57 = 0;
      v58 = 0;
      v209 = 0;
      v206 = 0;
      v59 = 0;
      goto LABEL_142;
    }

    if (v45 == 5)
    {
      v43 = v41[2].i64[0];
      v85 = v41[2].i64[1];
      v50 = v41[3].i64[1];
      v228 = v41[3].i64[0];
      v48 = v41[4].i64[0];
      v216 = v41[4].i64[1];
      v51 = v41[5].u64[0];
      v49 = v41[5].i64[1];
      v56 = v41[6].i64[1];
      v219 = v41[6].i64[0];
      v55 = v41[7].i64[0];
      v42 = v41[7].u8[8];
      v59 = v41[8].u8[0];
      v86 = v41[8].u8[8];
      v58 = v41[9].u8[0];
      v57 = v41[9].u8[8];
      i8 = &v41[10].i8[8];
      v87 = v41[10].u8[0];
      v231[0] = &v41[10].i64[1];
      if (!v6)
      {
        goto LABEL_109;
      }

      v222 = v85;
      v209 = v87;
      v206 = v86;
      if (!v5)
      {
        goto LABEL_141;
      }

      v181 = v59;
      v195 = v58;
      v197 = v57;
      v199 = v56;
      v191 = v55;
      v193 = v42;
      v88 = v51;
      v89 = v49;
      v90 = v48;
      v91 = GetAliasStream2(v5, v43);
      if (v91)
      {
        v43 = *v91;
      }

      else
      {
        v43 = 0;
      }

      v121 = GetAliasStream2(v5, v228);
      if (v121)
      {
        v228 = *v121;
      }

      else
      {
        v228 = 0;
      }

      v122 = GetAliasStream2(v5, v89);
      if (v122)
      {
        v49 = *v122;
      }

      else
      {
        v49 = 0;
      }

      v48 = v90;
      v51 = v88;
      v42 = v193;
      v55 = v191;
    }

    else
    {
      v219 = 0;
      v222 = 0;
      v48 = 0;
      v216 = 0;
      v49 = 0;
      v228 = 0;
      v50 = 0;
      LOBYTE(v51) = 0;
      LOBYTE(v52) = 0;
      LOBYTE(v53) = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v209 = 0;
      v206 = 0;
      v59 = 0;
      if (v45 != 6)
      {
        goto LABEL_142;
      }

      v67 = v41[2].i64[0];
      v68 = &v41[2].i64[1];
      v231[0] = &v41[2].i64[1];
      v222 = v67;
      if (v67)
      {
        v43 = v7[64];
        do
        {
          v69 = v7[64];
          v7[64] = v69 + 2;
          if (v6)
          {
            v70 = *v68;
            v71 = v68[1];
            if (v5)
            {
              v72 = GetAliasStream2(v5, v70);
              if (v72)
              {
                v70 = *v72;
              }

              else
              {
                v70 = 0;
              }
            }

            *v69 = v70;
            v69[1] = v71;
          }

          v68 += 2;
          --v67;
        }

        while (v67);
        v231[0] = v68;
      }

      else
      {
        v43 = 0;
      }

      v96 = *v68;
      v94 = (v68 + 1);
      v95 = v96;
      v231[0] = v94;
      v202 = v96;
      if (v96)
      {
        v228 = v7[64];
        do
        {
          v97 = v7[64];
          v7[64] = v97 + 2;
          v98 = *v94;
          v99 = *(v94 + 8);
          v94 += 16;
          v231[0] = v94;
          if (v6)
          {
            if (v5)
            {
              v100 = GetAliasStream2(v5, v98);
              if (v100)
              {
                v98 = *v100;
              }

              else
              {
                v98 = 0;
              }
            }

            *v97 = v98;
            v97[1] = v99;
          }

          --v95;
        }

        while (v95);
      }

      else
      {
        v228 = 0;
      }

      v48 = *v94;
      v101 = *(v94 + 8);
      v51 = *(v94 + 16);
      v49 = *(v94 + 24);
      v56 = *(v94 + 40);
      v219 = *(v94 + 32);
      v42 = *(v94 + 48);
      v59 = *(v94 + 56);
      v102 = *(v94 + 64);
      v55 = *(v94 + 72);
      v58 = *(v94 + 80);
      v57 = *(v94 + 88);
      i8 = (v94 + 104);
      v231[0] = v94 + 104;
      if ((v6 & 1) == 0)
      {
        goto LABEL_109;
      }

      v206 = v102;
      v216 = v101;
      v209 = *(v94 + 96);
      if (!v5)
      {
        v50 = v202;
LABEL_141:
        v52 = v51 >> 8;
        v53 = v51 >> 16;
        v54 = v51 & 0xFFFFFFFFFF000000;
        goto LABEL_142;
      }

      v181 = v59;
      v195 = v58;
      v197 = v57;
      v199 = v56;
      v103 = v55;
      v104 = v42;
      v105 = v44;
      v106 = v51;
      v107 = v48;
      v108 = GetAliasStream2(v5, v49);
      v50 = v202;
      if (v108)
      {
        v49 = *v108;
      }

      else
      {
        v49 = 0;
      }

      v48 = v107;
      v51 = v106;
      v44 = v105;
      v7 = a3;
      v42 = v104;
      v55 = v103;
    }

    v56 = v199;
    v58 = v195;
    v57 = v197;
    v59 = v181;
    goto LABEL_141;
  }

  v147 = 0;
LABEL_186:
  v169 = v147;
  if (v10 <= 0x38)
  {
    LODWORD(v148) = 0;
    v8 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LODWORD(v155) = 1;
  }

  else
  {
    v8 = *v231[0];
    LODWORD(v148) = *(v231[0] + 8);
    LOBYTE(v14) = *(v231[0] + 16);
    LOBYTE(v13) = *(v231[0] + 24);
    LODWORD(v155) = *(v231[0] + 32);
  }

  v156 = v7[44];
  v7[44] = v156 + 104;
  if (v6)
  {
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    LODWORD(v9) = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_201:
    v152 = v167;
LABEL_221:
    *v156 = v169;
    *(v156 + 8) = v185;
    *(v156 + 16) = v148;
    *(v156 + 20) = v155;
    *(v156 + 24) = v8;
    *(v156 + 28) = v13;
    *(v156 + 29) = v14;
    *(v156 + 30) = v15;
    *(v156 + 32) = v16;
    *(v156 + 40) = v17;
    *(v156 + 48) = v18;
    *(v156 + 56) = v19;
    *(v156 + 64) = v20;
    *(v156 + 72) = v21 | (v9 << 32);
    *(v156 + 80) = (v24 << 16) | (v25 << 24) | (v23 << 8) | v22;
    *(v156 + 84) = v26;
    *(v156 + 85) = v27;
    *(v156 + 86) = v28;
    *(v156 + 87) = v29;
    *(v156 + 88) = v230;
    *(v156 + 96) = v166;
    *(v156 + 97) = v152;
    *(v156 + 102) = 0;
    *(v156 + 98) = 0;
  }
}

void DecodeDYIOSurface(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = *a1;
  v37 = *(a1 + 8);
  v7 = *(a1 + 32);
  WORD6(v42) = *(a1 + 24);
  HIWORD(v42) = v7;
  v8 = *(a1 + 48);
  LOWORD(v43) = *(a1 + 40);
  v9 = *(a1 + 64);
  WORD1(v43) = *(a1 + 56);
  WORD2(v43) = v9;
  v10 = *(a1 + 80);
  *&v42 = __PAIR64__(*(a1 + 72), v8);
  v11 = (a1 + 88);
  BYTE6(v43) = v10;
  v12 = v10;
  if (v10)
  {
    v13 = &v38 + 6;
    do
    {
      v14 = v11[1];
      *(v13 - 4) = *v11;
      *(v13 - 3) = v14;
      v15 = v11[3];
      *(v13 - 2) = v11[2];
      *(v13 - 3) = v15;
      v16 = v11[5];
      *(v13 - 1) = v11[4];
      v11 += 6;
      *v13 = v16;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  DWORD2(v42) = *v11;
  if (v6 <= 0x29)
  {
    v19 = *(&v43 + 1);
    v17 = v44;
  }

  else
  {
    v17 = v11[1];
    v18 = v11 + 2;
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v6 >= 0x2E)
    {
      if (v17)
      {
        v20 = *(a3 + 592);
      }

      else
      {
        v20 = 0;
      }

      *(a3 + 592) += v17;
      if (a4)
      {
        memcpy(v20, v19, v17);
      }

      goto LABEL_30;
    }
  }

  if (!v19)
  {
    goto LABEL_29;
  }

  error = 0;
  v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v19 length:v17 freeWhenDone:0];
  v22 = CFPropertyListCreateWithData(0, v21, 0, 0, &error);
  if (error)
  {
    v23 = CFErrorCopyDescription(error);
    v24 = v23;
    if (s_logUsingOsLog == 1)
    {
      v25 = gt_tagged_log(3u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        CStringPtr = CFStringGetCStringPtr(v24, 0x8000100u);
        *buf = 136315138;
        v47 = CStringPtr;
        _os_log_error_impl(&dword_24D764000, v25, OS_LOG_TYPE_ERROR, "warning: %s", buf, 0xCu);
      }
    }

    else
    {
      v27 = *MEMORY[0x277D85DF8];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"warning: %s", CFStringGetCStringPtr(v23, 0x8000100u)];
      fprintf(v27, "%s\n", [v25 UTF8String]);
    }

    CFRelease(v24);
    CFRelease(error);
  }

  if (v22)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
    v30 = [v29 bytes];
    v31 = [v29 length];
    v17 = v31;
    if (v31)
    {
      v20 = *(a3 + 592);
    }

    else
    {
      v20 = 0;
    }

    *(a3 + 592) += v31;
    if (a4)
    {
      memcpy(v20, v30, v31);
    }

    objc_autoreleasePoolPop(v28);
  }

  else
  {
LABEL_29:
    v20 = 0;
    v17 = 0;
  }

LABEL_30:
  *(&v43 + 1) = v20;
  v44 = v17;
  v32 = *(a3 + 552);
  *(a3 + 552) = v32 + 120;
  if (a4)
  {
    v33 = v42;
    *(v32 + 64) = v41;
    *(v32 + 80) = v33;
    *(v32 + 96) = v43;
    *(v32 + 112) = v44;
    v34 = v38;
    *v32 = v37;
    *(v32 + 16) = v34;
    v35 = v40;
    *(v32 + 32) = v39;
    *(v32 + 48) = v35;
  }

  v36 = *MEMORY[0x277D85DE8];
}

size_t DecodeDYMTLDeviceDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  result = strlen((a1 + 16));
  v12 = &v9[result & 0xFFFFFFFFFFFFFFF8];
  v13 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v56 = *(v12 + 8);
  v57 = *(v12 + 4);
  v55 = *(v12 + 12);
  v15 = v12 + 40;
  v58 = v12[32];
  if (v8 == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v54 = 0;
  }

  else
  {
    v19 = &v15[strlen(v15) & 0xFFFFFFFFFFFFFFF8];
    v20 = a4;
    if (*v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v22 = v14;
    v23 = v8;
    v24 = v7;
    v7 = &v19[(strlen(v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 8];
    v25 = (v7 + 8);
    if (v19[8])
    {
      v17 = v19 + 8;
    }

    else
    {
      v17 = 0;
    }

    result = strlen((v7 + 8));
    v13 = *(a1 + 16);
    v26 = &v25[result & 0xFFFFFFFFFFFFFFF8];
    v27 = *(v7 + 8);
    LOBYTE(v7) = v24;
    LOBYTE(v8) = v23;
    v14 = v22;
    v16 = v21;
    a4 = v20;
    if (v27)
    {
      v18 = v25;
    }

    else
    {
      v18 = 0;
    }

    v15 = v26 + 24;
    LOBYTE(v54) = v26[16];
    BYTE4(v54) = v26[8];
  }

  if (v7 < 0xCu)
  {
    v47 = 0;
    v50 = 0;
    v53 = 0;
    v51 = 0;
    v48 = 0;
    v29 = 0;
    v52 = 0u;
    v49 = 0u;
    v59 = 0u;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v52 = *v15;
  if (v7 < 0xFu)
  {
    v47 = 0;
    v50 = 0;
    v53 = 0;
    goto LABEL_25;
  }

  v53 = v15[16];
  if (v7 < 0x19u)
  {
    v47 = 0;
    v50 = 0;
LABEL_25:
    v51 = 0;
    v48 = 0;
    v29 = 0;
    v59 = 0u;
    v49 = 0u;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v59 = 0u;
  if (*(v15 + 3) == -1)
  {
    v51 = 0;
    v28 = (v15 + 32);
    v49 = 0uLL;
  }

  else
  {
    v11.i64[0] = *(v15 + 3);
    v49 = vuzp1q_s16(vuzp1q_s32(vzip1q_s64(v11, *(v15 + 2)), vextq_s8(*(v15 + 2), *(v15 + 3), 8uLL)), vuzp1q_s32(vzip1q_s64(vdupq_laneq_s64(*(v15 + 3), 1), *(v15 + 4)), *(v15 + 72)));
    WORD2(v51) = *(v15 + 44);
    v28 = (v15 + 104);
    LOWORD(v51) = *(v15 + 48);
  }

  if (v7 < 0x1Cu)
  {
    v47 = 0;
    v50 = 0;
    goto LABEL_32;
  }

  v50 = *v28;
  if (v7 == 28)
  {
    v47 = 0;
LABEL_32:
    v48 = 0;
    goto LABEL_33;
  }

  v48 = v28[8];
  if (v7 < 0x2Cu)
  {
    v47 = 0;
LABEL_33:
    v29 = 0;
    if (v13)
    {
      goto LABEL_34;
    }

LABEL_39:
    v30 = (a3 + 592);
    v31 = *(a3 + 592);
    goto LABEL_40;
  }

  v47 = *(v28 + 2);
  if (v7 < 0x35u)
  {
    goto LABEL_33;
  }

  v59 = *(v28 + 24);
  v29 = v28[40];
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_34:
  result = strlen(v14);
  v30 = (a3 + 592);
  v31 = *(a3 + 592);
  v32 = result + 1;
  if (result != -1)
  {
    v33 = *(a3 + 592);
    goto LABEL_41;
  }

LABEL_40:
  v32 = 0;
  v33 = 0;
LABEL_41:
  *v30 = v31 + v32;
  if (a4)
  {
    result = memcpy(v33, v14, v32);
  }

  if (v16)
  {
    result = strlen(v16);
    v34 = (a3 + 592);
    v35 = *(a3 + 592);
    v36 = result + 1;
    if (result != -1)
    {
      v37 = *(a3 + 592);
      goto LABEL_48;
    }
  }

  else
  {
    v34 = (a3 + 592);
    v35 = *(a3 + 592);
  }

  v36 = 0;
  v37 = 0;
LABEL_48:
  *v34 = v35 + v36;
  if (a4)
  {
    result = memcpy(v37, v16, v36);
  }

  if (v17)
  {
    result = strlen(v17);
    v38 = (a3 + 592);
    v39 = *(a3 + 592);
    v40 = result + 1;
    if (result != -1)
    {
      v41 = *(a3 + 592);
      goto LABEL_55;
    }
  }

  else
  {
    v38 = (a3 + 592);
    v39 = *(a3 + 592);
  }

  v40 = 0;
  v41 = 0;
LABEL_55:
  *v38 = v39 + v40;
  if (a4)
  {
    result = memcpy(v41, v17, v40);
  }

  if (v18)
  {
    result = strlen(v18);
    v42 = (a3 + 592);
    v43 = *(a3 + 592);
    v44 = result + 1;
    if (result != -1)
    {
      v45 = *(a3 + 592);
      goto LABEL_62;
    }
  }

  else
  {
    v42 = (a3 + 592);
    v43 = *(a3 + 592);
  }

  v44 = 0;
  v45 = 0;
LABEL_62:
  *v42 = v43 + v44;
  if (a4)
  {
    result = memcpy(v45, v18, v44);
    v46 = *(a3 + 480);
    *(a3 + 480) = v46 + 112;
    *v46 = v52;
    *(v46 + 16) = v47;
    *(v46 + 24) = v59;
    *(v46 + 40) = v49;
    *(v46 + 56) = WORD2(v51);
    *(v46 + 58) = v51;
    *(v46 + 60) = 0;
    *(v46 + 64) = v33;
    *(v46 + 72) = v37;
    *(v46 + 80) = v41;
    *(v46 + 88) = v45;
    *(v46 + 96) = v57;
    *(v46 + 98) = v56;
    *(v46 + 100) = v55;
    *(v46 + 102) = v8;
    *(v46 + 103) = v50;
    *(v46 + 104) = v7;
    *(v46 + 105) = v58;
    *(v46 + 106) = BYTE4(v54);
    *(v46 + 107) = v54;
    *(v46 + 108) = v53;
    *(v46 + 109) = v48;
    *(v46 + 110) = v29;
    *(v46 + 111) = 0;
  }

  else
  {
    *(a3 + 480) += 112;
  }

  return result;
}

size_t DecodeDYMTLCounterSampleBufferDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = (a1 + 8);
  v8 = a1 + 8 + (strlen((a1 + 8)) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __s = v10;
  v11 = v8 + 8 + (strlen((v8 + 8)) & 0xFFFFFFFFFFFFFFF8);
  v53 = *(v8 + 8);
  if (*(v8 + 8))
  {
    v12 = (v8 + 8);
  }

  else
  {
    v12 = 0;
  }

  v55 = v12;
  v13 = *(v11 + 16);
  v14 = (v11 + 24);
  v52 = v13;
  if (v13)
  {
    v51 = a3[70];
    while (1)
    {
      v15 = &v14[strlen(v14) & 0xFFFFFFFFFFFFFFF8];
      v16 = v15 + 8;
      v17 = *v14;
      if (*v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0;
      }

      v19 = strlen(v15 + 8);
      v20 = *(v15 + 8);
      if (v20)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0;
      }

      if (v17)
      {
        v22 = strlen(v18);
        v23 = a3[74];
        v24 = v22 + 1;
        if (v22 != -1)
        {
          v25 = a3[74];
          goto LABEL_20;
        }
      }

      else
      {
        v23 = a3[74];
      }

      v24 = 0;
      v25 = 0;
LABEL_20:
      a3[74] = v23 + v24;
      if (a4)
      {
        memcpy(v25, v18, v24);
      }

      if (!v20)
      {
        v27 = a3[74];
LABEL_26:
        v28 = 0;
        v29 = 0;
        goto LABEL_27;
      }

      v26 = strlen(v21);
      v27 = a3[74];
      v28 = v26 + 1;
      if (v26 == -1)
      {
        goto LABEL_26;
      }

      v29 = a3[74];
LABEL_27:
      a3[74] = v27 + v28;
      if (a4)
      {
        memcpy(v29, v21, v28);
        v30 = a3[70];
        a3[70] = v30 + 2;
        *v30 = v25;
        v30[1] = v29;
      }

      else
      {
        a3[70] += 16;
      }

      v14 = &v16[(v19 & 0xFFFFFFFFFFFFFFF8) + 8];
      if (!--v13)
      {
        goto LABEL_33;
      }
    }
  }

  v51 = 0;
LABEL_33:
  result = strlen(v14);
  v32 = &v14[result & 0xFFFFFFFFFFFFFFF8];
  v33 = *v14;
  if (*v14)
  {
    v34 = v14;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v32 + 1);
  v36 = *(v32 + 2);
  if (v9)
  {
    result = strlen(__s);
    v37 = a3 + 74;
    v38 = a3[74];
    v39 = result + 1;
    if (result != -1)
    {
      v40 = a3[74];
      v41 = v55;
      goto LABEL_41;
    }
  }

  else
  {
    v37 = a3 + 74;
    v38 = a3[74];
  }

  v41 = v55;
  v39 = 0;
  v40 = 0;
LABEL_41:
  *v37 = v38 + v39;
  if (a4)
  {
    result = memcpy(v40, __s, v39);
  }

  if (v53)
  {
    result = strlen(v41);
    v42 = a3 + 74;
    v43 = a3[74];
    v44 = result + 1;
    if (result != -1)
    {
      v45 = a3[74];
      goto LABEL_48;
    }
  }

  else
  {
    v42 = a3 + 74;
    v43 = a3[74];
  }

  v44 = 0;
  v45 = 0;
LABEL_48:
  *v42 = v43 + v44;
  if (a4)
  {
    result = memcpy(v45, v41, v44);
  }

  if (v33)
  {
    result = strlen(v34);
    v46 = a3 + 74;
    v47 = a3[74];
    v48 = result + 1;
    if (result != -1)
    {
      v49 = a3[74];
      goto LABEL_55;
    }
  }

  else
  {
    v46 = a3 + 74;
    v47 = a3[74];
  }

  v48 = 0;
  v49 = 0;
LABEL_55:
  *v46 = v47 + v48;
  if (a4)
  {
    result = memcpy(v49, v34, v48);
    v50 = a3[55];
    a3[55] = v50 + 48;
    *v50 = v49;
    *(v50 + 8) = v40;
    *(v50 + 16) = v45;
    *(v50 + 24) = v51;
    *(v50 + 32) = v52;
    *(v50 + 40) = v36;
    *(v50 + 44) = v35;
    *(v50 + 45) = 0;
    *(v50 + 47) = 0;
  }

  else
  {
    a3[55] += 48;
  }

  return result;
}

uint64_t DecodeDYMTLImageFilterFunctionInfoSPI(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = *(a1 + 8);
  if (result)
  {
    v6 = 0;
    v7 = (a1 + 16);
    do
    {
      v8 = *v7;
      v9 = *(v7 + 1);
      v7 += 16;
      v10 = *(a3 + 496);
      if (v9)
      {
        v11 = v10 + 24;
        v12 = v9;
        do
        {
          if (a4)
          {
            v13 = *(v7 + 2);
            *(v11 - 24) = *v7;
            *(v11 - 8) = v13;
          }

          v7 += 24;
          *(a3 + 496) = v11;
          v11 += 24;
          --v12;
        }

        while (v12);
      }

      v14 = *(a3 + 368);
      if (a4)
      {
        *v14 = v8;
        *(v14 + 4) = 0;
        *(v14 + 1) = 0;
        *(v14 + 8) = v9;
        *(v14 + 16) = v10;
        v14 = *(a3 + 368);
      }

      *(a3 + 368) = v14 + 24;
      ++v6;
    }

    while (v6 != result);
  }

  return result;
}

void DecodeDYMTLStitchedLibraryDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4, uint64_t a5)
{
  v6 = a4;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v9 = newpool;
  v10 = apr_hash_make(newpool);
  v11 = (a1 + 8);
  v12 = *a1;
  v76[0] = (a1 + 8);
  v70 = 0;
  v69 = 0;
  if (v12 < 0x4F)
  {
    LOBYTE(v13) = 4;
    goto LABEL_10;
  }

  v13 = *(a1 + 24);
  v11 = (a1 + 32);
  v76[0] = (a1 + 32);
  if (v12 <= 0x51)
  {
LABEL_10:
    LOBYTE(v75) = v13;
    *(&v72 + 1) = 0;
    *(&v73 + 1) = 0;
    goto LABEL_11;
  }

  v14 = *(a1 + 56);
  LOBYTE(v75) = *(a1 + 48);
  v11 = (a1 + 64);
  v76[0] = (a1 + 64);
  *(&v73 + 1) = v14;
  v15 = *(a3 + 536);
  *(a3 + 536) = v15 + 56 * v14;
  if (v14)
  {
    v16 = a5;
    v17 = 0;
    *(&v72 + 1) = v15;
    do
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v59[0] = v76;
      v59[1] = &v72;
      v59[2] = a3;
      v59[3] = v10;
      v60 = v12;
      v61 = v6;
      v62 = 0;
      v63 = 0;
      DecodeDYMTLFunctionStitchingNode(&v64, v59, &v68);
      if (v6)
      {
        v18 = v64;
        v19 = v65;
        v20 = v66;
        *(v15 + 48) = v67;
        *(v15 + 16) = v19;
        *(v15 + 32) = v20;
        *v15 = v18;
        v15 += 56;
      }

      ++v17;
    }

    while (v17 < *(&v73 + 1));
    v11 = v76[0];
    a5 = v16;
  }

  else
  {
    *(&v72 + 1) = 0;
  }

LABEL_11:
  v22 = *v11;
  v21 = v11 + 8;
  v76[0] = v21;
  *&v74 = v22;
  if (v22)
  {
    v54 = v9;
    v23 = 0;
    *&v72 = *(a3 + 528);
    while (1)
    {
      v58 = v23;
      v24 = v76[0];
      v55 = *v76[0];
      v76[0] += 8;
      v25 = &v76[0][(strlen(v76[0]) & 0xFFFFFFFFFFFFFFF8) + 8];
      v76[0] = v25;
      v26 = *(v24 + 8);
      v27 = v24[8] ? v24 + 8 : 0;
      if (!v26)
      {
        break;
      }

      v28 = strlen(v27);
      v29 = *(a3 + 592);
      v30 = v28 + 1;
      if (v28 == -1)
      {
        goto LABEL_20;
      }

      __dst = *(a3 + 592);
LABEL_21:
      *(a3 + 592) = v29 + v30;
      if (v6)
      {
        memcpy(__dst, v27, v30);
        v25 = v76[0];
      }

      v31 = *v25;
      v76[0] = v25 + 8;
      v32 = *(a3 + 576);
      *(a3 + 576) = &v32[v31];
      v33 = v31;
      v56 = v32;
      if (v31)
      {
        do
        {
          *&v64 = v76;
          *(&v64 + 1) = &v72;
          *&v65 = a3;
          *(&v65 + 1) = v10;
          LODWORD(v66) = v12;
          BYTE4(v66) = v6;
          *(&v66 + 5) = v69;
          BYTE7(v66) = v70;
          DYMTLFunctionStitchingFunctionNodeID = GetDYMTLFunctionStitchingFunctionNodeID(&v64);
          if (v6)
          {
            *v32++ = DYMTLFunctionStitchingFunctionNodeID;
          }

          --v33;
        }

        while (v33);
        v35 = v56;
      }

      else
      {
        v35 = 0;
      }

      *&v64 = v76;
      *(&v64 + 1) = &v72;
      *&v65 = a3;
      *(&v65 + 1) = v10;
      LODWORD(v66) = v12;
      BYTE4(v66) = v6;
      *(&v66 + 5) = v69;
      BYTE7(v66) = v70;
      DYMTLFunctionStitchingNodeID = GetDYMTLFunctionStitchingNodeID(&v64);
      v37 = v76[0];
      v38 = *v76[0];
      v76[0] += 8;
      v39 = *(a3 + 544);
      if (v38)
      {
        v40 = v39 + 8;
        v41 = v37 + 16;
        v42 = v38;
        do
        {
          v43 = *(v41 - 1);
          v76[0] = v41;
          if (v6)
          {
            *(v40 - 8) = v43;
          }

          v41 += 8;
          *(a3 + 544) = v40;
          v40 += 8;
          --v42;
        }

        while (v42);
      }

      if (v6)
      {
        v44 = *(a3 + 528);
        *v44 = __dst;
        *(v44 + 8) = v35;
        *(v44 + 16) = v31;
        *(v44 + 24) = DYMTLFunctionStitchingNodeID;
        *(v44 + 32) = v39;
        *(v44 + 40) = v38;
        *(v44 + 48) = v55;
        *(v44 + 49) = 0;
        *(v44 + 52) = 0;
      }

      *(a3 + 528) += 56;
      v23 = v58 + 1;
      if (v58 + 1 >= v74)
      {
        v21 = v76[0];
        v9 = v54;
        goto LABEL_39;
      }
    }

    v29 = *(a3 + 592);
LABEL_20:
    v30 = 0;
    __dst = 0;
    goto LABEL_21;
  }

  *&v72 = 0;
LABEL_39:
  v45 = *v21;
  v76[0] = v21 + 8;
  *(&v74 + 1) = v45;
  if (!v45)
  {
    *&v73 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v46 = 0;
  v47 = *(a3 + 576);
  *&v73 = v47;
  do
  {
    v48 = *v76[0];
    v76[0] += 8;
    if (v6)
    {
      if (a5)
      {
        AliasStream2 = GetAliasStream2(a5, v48);
        if (AliasStream2)
        {
          v48 = *AliasStream2;
        }

        else
        {
          v48 = 0;
        }
      }

      v47 = *(a3 + 576);
      *v47 = v48;
      v45 = *(&v74 + 1);
    }

    *(a3 + 576) = ++v47;
    ++v46;
  }

  while (v46 < v45);
  if (v6)
  {
LABEL_49:
    v50 = *(a3 + 376);
    v51 = v72;
    v52 = v73;
    v53 = v74;
    *(v50 + 48) = v75;
    *(v50 + 16) = v52;
    *(v50 + 32) = v53;
    *v50 = v51;
  }

LABEL_50:
  *(a3 + 376) += 56;
  apr_pool_destroy(v9);
}

size_t DecodeDYMTLFunctionStitchingNode(size_t result, unsigned __int8 ***a2, void *a3)
{
  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  v6 = **a2;
  v8 = *v6;
  v7 = v8;
  **a2 = v6 + 8;
  *result = v8;
  if (v8 <= 4)
  {
    if ((v7 - 1) >= 2)
    {
      if (v7 != 3 && v7 != 4)
      {
        return result;
      }

LABEL_7:
      v9 = **a2;
      v10 = *v9;
      **a2 = v9 + 8;
      *(result + 16) = v10;
      return result;
    }

    goto LABEL_10;
  }

  if ((v7 - 6) < 4)
  {
    goto LABEL_7;
  }

  if (v7 == 5)
  {
    v12 = **a2;
    v13 = *v12;
    **a2 = v12 + 8;
    *(result + 16) = v13;
    v14 = **a2;
    v15 = *v14;
    **a2 = v14 + 8;
    *(result + 8) = v15;
    v16 = **a2;
    v17 = *v16;
    **a2 = v16 + 8;
    *(result + 18) = v17;
    return result;
  }

  if (v7 == 12)
  {
LABEL_10:
    v20 = v3;
    v21 = v4;
    v11 = *(a2 + 1);
    v18[0] = *a2;
    v18[1] = v11;
    v19 = a2[4];
    return DecodeDYMTLFunctionStitchingFunctionNode(result, v18, v7, a3);
  }

  return result;
}

uint64_t GetDYMTLFunctionStitchingNodeID(__int128 *a1)
{
  if (*(a1 + 8) < 0x52u)
  {
    v11 = 0;
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v4 = a1[1];
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 4);
    DecodeDYMTLFunctionStitchingNode(v9, &v6, &v11);
    v5 = a1[1];
    v6 = *a1;
    v7 = v5;
    v8 = *(a1 + 4);
    return AppendNodeToDescriptor(&v6, v9, v11);
  }

  else
  {
    v2 = **a1;
    result = *v2;
    **a1 = v2 + 1;
  }

  return result;
}

uint64_t GetDYMTLFunctionStitchingFunctionNodeID(unsigned __int8 ***a1)
{
  if (*(a1 + 8) < 0x52u)
  {
    v13 = 0;
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    v4 = **a1;
    v5 = *v4;
    **a1 = v4 + 8;
    v6 = *(a1 + 1);
    v8 = *a1;
    v9 = v6;
    v10 = a1[4];
    DecodeDYMTLFunctionStitchingFunctionNode(v11, &v8, v5, &v13);
    v7 = *(a1 + 1);
    v8 = *a1;
    v9 = v7;
    v10 = a1[4];
    return AppendNodeToDescriptor(&v8, v11, v13);
  }

  else
  {
    v2 = **a1;
    result = *v2;
    **a1 = (v2 + 1);
  }

  return result;
}

size_t DecodeDYMTLFunctionStitchingFunctionNode(uint64_t a1, unint64_t ***a2, int a3, void *a4)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = a3;
  if ((*(a2 + 8) - 79) <= 2)
  {
    v6 = **a2;
    v7 = *v6;
    **a2 = (v6 + 1);
    *a4 = v7;
  }

  if (a3 == 2)
  {
    v8 = **a2;
    v9 = *v8;
    **a2 = (v8 + 1);
    *(a1 + 48) = v9;
  }

  v10 = **a2;
  **a2 = &v10[(strlen(v10) & 0xFFFFFFFFFFFFFFF8) + 8];
  if (!*v10)
  {
    v10 = "";
  }

  v11 = a2[2];
  v12 = *(a2 + 36);
  result = strlen(v10);
  v14 = result + 1;
  if (result == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11[74];
  }

  v11[74] = (v11[74] + v14);
  if (v12 == 1)
  {
    result = memcpy(v15, v10, v14);
  }

  *(a1 + 8) = v15;
  v16 = **a2;
  v17 = *v16;
  **a2 = v16 + 1;
  *(a1 + 32) = v17;
  v18 = a2[2];
  v19 = v18[72];
  v18[72] = &v19[v17];
  if (v17)
  {
    v20 = 0;
    *(a1 + 16) = v19;
    do
    {
      v21 = *(a2 + 1);
      v28 = *a2;
      v29 = v21;
      v30 = a2[4];
      result = GetDYMTLFunctionStitchingNodeID(&v28);
      if (*(a2 + 36) == 1)
      {
        *v19++ = result;
        v17 = *(a1 + 32);
      }

      ++v20;
    }

    while (v20 < v17);
  }

  else
  {
    *(a1 + 16) = 0;
  }

  v22 = **a2;
  v23 = *v22;
  **a2 = v22 + 1;
  *(a1 + 40) = v23;
  v24 = a2[2];
  v25 = v24[72];
  v24[72] = &v25[v23];
  if (v23)
  {
    v26 = 0;
    *(a1 + 24) = v25;
    do
    {
      v27 = *(a2 + 1);
      v28 = *a2;
      v29 = v27;
      v30 = a2[4];
      result = GetDYMTLFunctionStitchingFunctionNodeID(&v28);
      if (*(a2 + 36) == 1)
      {
        *v25++ = result;
        v23 = *(a1 + 40);
      }

      ++v26;
    }

    while (v26 < v23);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t AppendNodeToDescriptor(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v16 = a3;
  if (!*a2)
  {
    return 0;
  }

  if (a3 && (*(a1 + 32) - 79) <= 2)
  {
    entry = find_entry(*(a1 + 24), &v16, 8uLL, 0);
    if (*entry)
    {
      result = *(*entry + 32);
      if (result)
      {
        return result;
      }
    }

    v7 = *(*(a1 + 8) + 24);
    v8 = *(a1 + 24);
    v9 = apr_palloc(*v8, 8uLL);
    *v9 = v16;
    apr_hash_set(v8, v9, 8, (v7 + 1));
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(v11 + 536);
  if (!*(v10 + 8))
  {
    *(v10 + 8) = v12;
  }

  *(v11 + 536) = v12 + 56;
  if (*(a1 + 36) == 1)
  {
    v13 = *a2;
    v14 = a2[1];
    v15 = a2[2];
    *(v12 + 48) = *(a2 + 6);
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v10 = *(a1 + 8);
  }

  result = *(v10 + 24) + 1;
  *(v10 + 24) = result;
  return result;
}

void *DecodeDYMPSPluginCNNConvolutionDescriptor(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result[1];
  v6 = *(result + 4);
  v7 = *(result + 6);
  v8 = *(result + 8);
  v9 = result[5];
  v10 = result + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v11 = *v10;
  v12 = *(v10 + 16);
  v13 = *(v10 + 32);
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  v16 = *(v10 + 72);
  v18 = *(v10 + 88);
  v17 = *(v10 + 96);
  v19 = *(a3 + 72);
  *(a3 + 72) = &v19[v9];
  if (a4)
  {
    if (v9)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v9)
    {
      v21 = result + 6;
    }

    else
    {
      v21 = 0;
    }

    v28 = v13;
    v29 = v11;
    v26 = v12;
    v27 = v14;
    v25 = v16;
    result = memcpy(v20, v21, v9);
    v22.i64[1] = v26.i64[1];
    v23 = vmovn_s64(v25);
    *v22.i8 = vmovn_s64(v26);
    v24 = *(a3 + 16);
    *v24 = v20;
    *(v24 + 8) = v9;
    *(v24 + 12) = v6;
    *(v24 + 16) = v7;
    *(v24 + 20) = v8;
    *(v24 + 24) = vuzp1q_s32(v29, v28);
    *(v24 + 40) = vmovn_s64(v27);
    *(v24 + 48) = v15;
    *(v24 + 52) = v5;
    v22.i16[1] = v22.i16[2];
    v22.i16[2] = v23.i16[0];
    v22.i16[3] = v23.i16[2];
    *(v24 + 53) = vmovn_s16(v22).u32[0];
    *(v24 + 57) = v18;
    *(v24 + 58) = v17;
    *(v24 + 63) = 0;
    *(v24 + 59) = 0;
  }

  *(a3 + 16) += 64;
  return result;
}

void *DecodeDYMPSPluginCNNConvolutionData(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = vmovn_s64(*(a1 + 8));
  v51 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = (a1 + 40);
  v9 = (a1 + 40 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  v13 = (v10 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v13;
  v14 = v13 + 1;
  v15 = v16;
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = (v14 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = *v18;
  v19 = v18 + 1;
  v20 = v21;
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v19 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *v23;
  v24 = v23 + 1;
  v25 = v26;
  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  __src = v27;
  v28 = (v24 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = *v28;
  v29 = v28 + 1;
  v30 = v31;
  if (!v31)
  {
    v29 = 0;
  }

  v48 = v29;
  if (v7)
  {
    result = a3[9];
  }

  else
  {
    result = 0;
  }

  a3[9] += v7;
  v52 = v6;
  v50 = result;
  if (a4)
  {
    if (v11)
    {
      v33 = v10;
    }

    else
    {
      v33 = 0;
    }

    if (v7)
    {
      v34 = v8;
    }

    else
    {
      v34 = 0;
    }

    memcpy(result, v34, v7);
    v35 = (v11 >> 2);
    if ((v11 >> 2))
    {
      v36 = a3[8];
    }

    else
    {
      v36 = 0;
    }

    a3[8] += 4 * v35;
    v49 = v36;
    result = memcpy(v36, v33, 4 * v35);
    v6 = v52;
  }

  else
  {
    v35 = (v11 >> 2);
    if ((v11 >> 2))
    {
      v37 = a3[8];
    }

    else
    {
      v37 = 0;
    }

    v49 = v37;
    a3[8] += 4 * v35;
  }

  if (v6.i32[0] == 2)
  {
    v39 = a3[8];
    a3[8] = v39 + 1024;
    if (a4)
    {
      result = memcpy(v39, v17, 0x400uLL);
      v6 = v52;
    }

    goto LABEL_41;
  }

  if (v6.i32[0] != 1)
  {
    v39 = 0;
LABEL_41:
    v38 = 0;
    goto LABEL_42;
  }

  if (v35)
  {
    v38 = a3[7];
  }

  else
  {
    v38 = 0;
  }

  a3[7] += 8 * v35;
  if (a4)
  {
    result = memcpy(v38, v22, 8 * v35);
    v6 = v52;
  }

  v39 = 0;
LABEL_42:
  if (!(v25 + v30))
  {
    v40 = 0;
    if (!a4)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v41 = a3[8];
  v42 = &v41[4 * v35];
  a3[8] = v42;
  if (a4)
  {
    if (v35)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    memcpy(v43, __src, 4 * v35);
    if (v35)
    {
      v44 = a3[8];
    }

    else
    {
      v44 = 0;
    }

    a3[8] += 4 * v35;
    result = memcpy(v44, v48, 4 * v35);
    v6 = v52;
    v45 = a3[6];
    *v45 = v43;
    v45[1] = v44;
  }

  else
  {
    a3[8] = &v42[4 * v35];
  }

  v40 = a3[6];
  a3[6] = *&v40 + 16;
  if (a4)
  {
LABEL_55:
    v46 = a3[3];
    *v46 = v6;
    v46[1].i32[0] = v51;
    v46[1].i32[1] = 0;
    v46[2] = v50;
    v46[3] = v49;
    v46[4] = v39;
    v46[5] = v38;
    v46[6] = v40;
    v46[7].i32[0] = v7;
    v46[7].i32[1] = v11 >> 2;
  }

LABEL_56:
  a3[3] += 64;
  return result;
}

uint64_t GroupBuilder_popGroup(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  if (v4 && (v5 = *(v4 + 12), v5))
  {
    v6 = *(v4 + 24);
    v7 = *(v4 + 8);
    v8 = v5 - 1;
    *(v4 + 12) = v8;
    v9 = (v6 + v8 * v7);
  }

  else
  {
    v9 = 0;
  }

  result = gt_error_assert_add_error(a1, v9 != 0, "last != ((void*)0)");
  if ((result & 1) == 0)
  {
    v11 = *(a1 + 48);
    v12 = *v9;
    v13 = *(v11 + 24) + 24 * *v9;
    *(v13 + 4) = a2;
    *(v13 + 12) = *(v11 + 12) + ~v12;
  }

  return result;
}

int *GroupBuilder_findInclusiveRange(int a1, int *a2, unint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    v4 = &v3[6 * (a1 >> 1)];
    v6 = *v4;
    v5 = v4 + 6;
    v7 = v6 > a3;
    if (v6 <= a3)
    {
      a1 += ~(a1 >> 1);
    }

    else
    {
      a1 = a1 >> 1;
    }

    if (!v7)
    {
      v3 = v5;
    }
  }

  while (a1 > 0);
  if (v3 == a2)
  {
    return 0;
  }

  result = v3 - 6;
  while (result[1] < a3)
  {
    v9 = result[2];
    result -= 6 * v9;
    if (!v9)
    {
      return 0;
    }
  }

  return result;
}

int *GroupBuilder_findExclusiveRange(int a1, int *a2, unint64_t a3)
{
  result = GroupBuilder_findInclusiveRange(a1, a2, a3);
  if (result)
  {
    while (result[1] <= a3)
    {
      v5 = result[2];
      result -= 6 * v5;
      if (!v5)
      {
        return 0;
      }
    }
  }

  return result;
}

int *GroupBuilder_getCommandBuffer(int a1, int *a2, unint64_t a3)
{
  InclusiveRange = GroupBuilder_findInclusiveRange(a1, a2, a3);
  if (InclusiveRange)
  {
    while (1)
    {
      v4 = InclusiveRange[5];
      if ((GTFenum_isBeginCommandBuffer(v4) & 1) != 0 || GTFenum_getConstructorType(v4) == 51)
      {
        break;
      }

      v5 = InclusiveRange[2];
      InclusiveRange -= 6 * v5;
      if (!v5)
      {
        return 0;
      }
    }
  }

  return InclusiveRange;
}

uint64_t GroupRange_encoderWithIndirectResources(uint64_t result)
{
  if (result)
  {
    do
    {
      v1 = *(result + 20);
      if (v1 > -15365)
      {
        if ((v1 + 15171) <= 6 && ((1 << (v1 + 67)) & 0x61) != 0 || v1 == -15364 || v1 == -14884)
        {
          return result;
        }
      }

      else if (v1 > -15713)
      {
        if (v1 == -15712 || v1 == -15673 || v1 == -15586)
        {
          return result;
        }
      }

      else if ((v1 + 16353) < 2 || v1 == -16014)
      {
        return result;
      }

      v8 = *(result + 8);
      result -= 24 * v8;
    }

    while (v8);
    return 0;
  }

  return result;
}

uint64_t GroupRange_encoderWithAttachments(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 20);
      v2 = (v1 + 15166) < 2 || v1 == -16353;
      if (v2 || v1 == -16351)
      {
        break;
      }

      v4 = *(result + 8);
      result -= 24 * v4;
      if (!v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t GetAliasStream(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  v4 = *find_entry(a1, &v6, 8uLL, 0);
  if (v4)
  {
    while (1)
    {
      v4 = v4[4];
      if (!v4)
      {
        break;
      }

      if (v4[2] <= a3)
      {
        if (v4[3] < a3)
        {
          return 0;
        }

        return v4[1];
      }
    }
  }

  return 0;
}

uint64_t GetOpenStream(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *find_entry(*(a1 + 24), &v7, 8uLL, 0);
  if (v3)
  {
    while (1)
    {
      v3 = v3[4];
      if (!v3)
      {
        break;
      }

      v4 = atomic_load((*(a1 + 16) + 80));
      if (v3[2] <= v4 && v3[3] > v4)
      {
        return v3[1];
      }
    }
  }

  return 0;
}

uint64_t GetStreamUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  result = GetOpenStream(a1, a2);
  if (!a2 || result)
  {
    if (result)
    {
      return *result;
    }
  }

  else
  {
    v6 = *(a1 + 112);
    v5 = (a1 + 112);
    v7 = atomic_load((*(v5 - 12) + 80));
    v8[0] = v6;
    v8[1] = 503;
    v9 = a2;
    v10 = v7;
    v11 = "deviceObject == 0 || stream != NULL";
    v12 = 0;
    GTError_addError(v5, v8);
    return 0;
  }

  return result;
}

void CloseStream(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(*find_entry(*(a1 + 24), a2 + 8, 8uLL, 0) + 32);
    v5 = *(a1 + 16);
    v6 = atomic_load((v5 + 80));
    *(v4 + 24) = v6;
    pthread_mutex_lock((v5 + 8));
    v7 = atomic_load((v5 + 112));
    if (v7 == 1 || v7 == 2 && (v8 = atomic_load(a2 + 7), (v8 & 0x10) != 0))
    {
      v11 = atomic_load(a2 + 7);
      v12 = v11;
      do
      {
        atomic_compare_exchange_strong(a2 + 7, &v12, v11 | 4);
        v13 = v12 == v11;
        v11 = v12;
      }

      while (!v13);

      pthread_mutex_unlock((v5 + 8));
    }

    else
    {
      v27 = 0uLL;
      *v28 = 0;
      apr_hash_set(*(v5 + 96), a2, 8, 0);
      v9 = *(*(v5 + 96) + 48);
      v10 = a2[3];
      if (atomic_fetch_add((v10 + 40), 0xFFFFFFFF) == 1)
      {
        v27 = *(v10 + 8);
        *v28 = *(v10 + 24);
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *v10 = *(v5 + 104);
        *(v5 + 104) = v10;
      }

      if (*(&v27 + 1))
      {
        v14 = atomic_load(a2 + 12);
        atomic_fetch_add(v28, v14);
        v15 = atomic_load(a2 + 13);
        atomic_fetch_add(&v28[1], v15);
        *(*(&v27 + 1) + 40) = a2[4];
      }

      else
      {
        v27 = *(a2 + 2);
        *v28 = a2[6];
      }

      a2[4] = 0;
      a2[5] = 0;
      a2[6] = 0;
      *a2 = *(v5 + 104);
      *(v5 + 104) = a2;
      pthread_mutex_unlock((v5 + 8));
      v16 = v27;
      if (v27)
      {
        v17 = *(v5 + 72);
        pthread_mutex_lock((v17 + 264));
        v18 = v17 + 16;
        do
        {
          v19 = *v16;
          if (v19 < 0x101)
          {
            v20 = 0;
          }

          else
          {
            v20 = 0;
            for (i = 256; i < v19; i *= 2)
            {
              ++v20;
            }
          }

          v22 = *(v16 + 5);
          v16[1] = 64;
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          *(v16 + 4) = v16;
          *(v16 + 6) = 0;
          *(v16 + 7) = 0;
          *(v16 + 5) = 0;
          *(v16 + 5) = *(v18 + 8 * v20);
          *(v18 + 8 * v20) = v16;
          v16 = v22;
        }

        while (v22);
        pthread_mutex_unlock((v17 + 264));
      }

      if (!v9)
      {
        pthread_mutex_destroy((v5 + 8));
        v23 = *(v5 + 72);
        v24 = MEMORY[0x277D85F48];
        if (*v23 >= 1)
        {
          v25 = 0;
          v26 = 0;
          do
          {
            MEMORY[0x253034350](*v24, *(*(v23 + 1) + v25), *(*(v23 + 1) + v25 + 8));
            ++v26;
            v25 += 16;
          }

          while (v26 < *v23);
        }

        pthread_mutex_destroy((v23 + 66));
        free(*(v23 + 1));
        MEMORY[0x253034350](*v24, v23, 328);
        apr_pool_destroy(**(v5 + 96));
        if ((shared_initialized & 1) == 0 && !--initialized && (apr_pools_shared_initialized & 1) == 0 && apr_pools_initialized && !--apr_pools_initialized)
        {
          apr_pool_destroy(global_pool);
          global_pool = 0;
          global_allocator = 0;
        }
      }
    }
  }
}

uint64_t OpenStream(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a2;
  entry = find_entry(*(a1 + 24), &v9, 8uLL, 0);
  if (*entry)
  {
    v6 = *(*entry + 32);
    v7 = atomic_load((*(a1 + 16) + 80));
    if (v6)
    {
      while (*(v6 + 40) > a3)
      {
        v6 = *(v6 + 32);
        if (!v6)
        {
          return 0;
        }
      }

      *(v6 + 16) = v7;
      return *(v6 + 8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    atomic_load((*(a1 + 16) + 80));
  }

  return result;
}

uint64_t StoreBlob(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = GTTraceEncoder_storeBlob(a2, Data, v7);
  apr_pool_clear(v5);
  return v8;
}

uint64_t UnwrapMTL4RenderPassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v29, 0x258uLL);
  v30 = 640;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v29, 0x92u, 1u);
  v31[1] = v10;
  v12 = v30;
  bzero(v30, 0x280uLL);
  v15 = *v9;
  v14 = (v9 + 8);
  v13 = v15;
  while (1)
  {
    v16 = *v14;
    v31[0] = v14 + 1;
    if (v16 == -1)
    {
      break;
    }

    MakeDYMTLRenderPassColorAttachmentDescriptor(v31, &v12[64 * v16], v13, 1, a1);
    v14 = v31[0];
  }

  v17 = v14[1];
  v31[0] = v14 + 2;
  v12[632] = v17;
  MakeDYMTLRenderPassDepthAttachmentDescriptor(v31, (v12 + 512), v13, 1, a1);
  v18 = v31[0];
  *(v12 + 310) = *v31[0];
  *(v12 + 75) = v18[1];
  *(v12 + 311) = v18[2];
  *(v12 + 312) = v18[3];
  v19 = v18[4];
  v31[0] = v18 + 5;
  *(v12 + 313) = v19;
  MakeDYMTLRenderPassStencilAttachmentDescriptor(v31, (v12 + 560), v13, 1, a1);
  v20 = v31[0];
  v21 = *v31[0];
  *(v12 + 154) = *v31[0];
  v22 = *(v20 + 4);
  *(v12 + 314) = v22;
  v23 = *(v20 + 8);
  *(v12 + 315) = v23;
  *(v12 + 76) = v20[3];
  v12[634] = v20[4];
  v12[596] = v20[5];
  if (v13 >= 0x67)
  {
    v12[633] = v20[6];
  }

  if (v12[632] == 255)
  {
    v12[632] = 0;
  }

  if (*(v12 + 310) == -1)
  {
    *(v12 + 310) = 0;
  }

  if (*(v12 + 311) == -1)
  {
    *(v12 + 311) = 0;
  }

  if (*(v12 + 312) == -1)
  {
    *(v12 + 312) = 0;
  }

  if (*(v12 + 313) == -1)
  {
    *(v12 + 313) = 0;
  }

  if (v21 == -1)
  {
    *(v12 + 154) = 0;
  }

  if (v22 == -1)
  {
    *(v12 + 314) = 0;
  }

  if (v23 == -1)
  {
    *(v12 + 315) = 0;
  }

  AliasStream2 = GetAliasStream2(a1, *(v12 + 75));
  if (AliasStream2)
  {
    v25 = *AliasStream2;
  }

  else
  {
    v25 = 0;
  }

  *(v12 + 75) = v25;
  v26 = GetAliasStream2(a1, *(v12 + 76));
  if (v26)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  *(v12 + 76) = v27;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StreamArray(uint64_t a1, uint64_t a2, uint64_t *__src, uint64_t *a4, uint64_t a5)
{
  if (a5)
  {
    v10 = __src;
    v11 = a5;
    do
    {
      v12 = *a4++;
      *v10++ = GetStreamUniqueIdentifier(a1, v12);
      --v11;
    }

    while (v11);
  }

  return GTTraceEncoder_storeBytes(a2, __src, 8 * a5);
}

uint64_t UnwrapMTL4PipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4PipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x9Cu, 1u);
  DecodeDYMTL4PipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTL4CompilerTaskOptionsUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v9 = *(v8 + 1);
  if (v9)
  {
    v21 = 8 * v9;
  }

  v20 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x9Du, 1u);
  v11 = *(v8 + 1);
  if (v11)
  {
    v12 = 0;
    v13 = v8 + 16;
    v14 = v21;
    do
    {
      AliasStream2 = GetAliasStream2(a1, *&v13[8 * v12]);
      if (AliasStream2)
      {
        v16 = *AliasStream2;
      }

      else
      {
        v16 = 0;
      }

      *(v14 + 8 * v12++) = v16;
    }

    while (v11 != v12);
  }

  else
  {
    v14 = 0;
  }

  v17 = v20;
  *v20 = v14;
  *(v17 + 8) = v11;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

double SaveMTLComputePipelineReflection_(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  DecodeDYMTLComputePipelineReflection(a3, v22, 0, (a1 + 64));
  v6 = PerformanceStatisticsURL(a3);
  if (v6)
  {
    FileWithFilename = GTCaptureArchive_getFileWithFilename(*a1, v6);
    v8 = FileWithFilename;
    if (FileWithFilename)
    {
      v9 = 0;
      v10 = *(FileWithFilename + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v9 = 1;
LABEL_6:
  *(&v23 + 1) += v10;
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v22, 0x78u);
  v11 = DecodeDYMTLComputePipelineReflection(a3, v22, 1, (a1 + 64));
  if ((v9 & 1) == 0)
  {
    v12 = *(&v23 + 1);
    GTCaptureArchive_fillBuffer(*a1, *(a1 + 8), v6, *(&v23 + 1), *(v8 + 8), (a1 + 64));
    v13 = *(v8 + 8);
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v14 = *(v11 + 24);
  if (v14)
  {
    CalculateBindingsAccess(v14, *(v11 + 92), &v18);
  }

  v15 = *(v11 + 32);
  if (v15)
  {
    CalculateBindingsAccess(v15, *(v11 + 94), &v18);
  }

  v16 = v19;
  *(v11 + 104) = v18;
  *(v11 + 120) = v16;
  result = *&v20;
  *(v11 + 136) = v20;
  *(v11 + 152) = v21;
  return result;
}

uint64_t UnwrapMTL4PipelineStageDynamicLinkingDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4PipelineStageDynamicLinkingDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0xA3u, 1u);
  DecodeDYMTL4PipelineStageDynamicLinkingDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

void SaveMTLDynamicLibraryInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v6, 0, sizeof(v6));
  DecodeDYMTLDynamicLibraryInfo(a3, v6, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v6, 0x7Cu);
  DecodeDYMTLDynamicLibraryInfo(a3, v6, 1, (a1 + 64));
}

uint64_t UnwrapMTL4LibraryDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (Data)
  {
    v9 = Data;
    v10 = v8;
    bzero(v23, 0x258uLL);
    DecodeDYMTL4LibraryDescriptor(v9, v10, v23, 0, a1);
    DescriptorWithCount = AllocateDescriptorWithCount(a2, v23, 0x97u, 1u);
    v12 = v23[16];
    DecodeDYMTL4LibraryDescriptor(v9, v10, v23, 1, a1);
    v13 = *(v12 + 24);
    bzero(v21, 0x258uLL);
    v14 = GTCaptureArchive_readData(*a1, *(a1 + 8), v13, v6, (a1 + 64));
    v15 = v14;
    if (v14)
    {
      __dst = (strlen(v14) + 1);
      AllocateDescriptorWithCount(a2, v21, 0, 1u);
      v16 = strlen(v15);
      v17 = __dst;
      v18 = v16 + 1;
      if (v16 != -1)
      {
        v19 = __dst;
LABEL_8:
        __dst = &v17[v18];
        memcpy(v19, v15, v18);
        *(v12 + 16) = v19;
        apr_pool_clear(v6);
        return DescriptorWithCount;
      }
    }

    else
    {
      __dst = 0;
      AllocateDescriptorWithCount(a2, v21, 0, 1u);
      v17 = __dst;
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t SaveMTL4MachineLearningPipelineReflection_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v7, 0, sizeof(v7));
  DecodeDYMTL4MachineLearningPipelineReflection(a3, v7, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v7, 0xA6u);
  return DecodeDYMTL4MachineLearningPipelineReflection(a3, v7, 1, (a1 + 64));
}

void *SaveMTLRenderPipelineReflection_(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  DecodeDYMTLRenderPipelineReflection(a3, v24, 0, (a1 + 64));
  v6 = PerformanceStatisticsURL(a3);
  if (v6)
  {
    FileWithFilename = GTCaptureArchive_getFileWithFilename(*a1, v6);
    v8 = FileWithFilename;
    if (FileWithFilename)
    {
      v9 = 0;
      v10 = *(FileWithFilename + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v9 = 1;
LABEL_6:
  *(&v25 + 1) += v10;
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v24, 0x77u);
  v11 = DecodeDYMTLRenderPipelineReflection(a3, v24, 1u, (a1 + 64));
  if ((v9 & 1) == 0)
  {
    v12 = *(&v25 + 1);
    GTCaptureArchive_fillBuffer(*a1, *(a1 + 8), v6, *(&v25 + 1), *(v8 + 8), (a1 + 64));
    v13 = *(v8 + 8);
    *(v11 + 112) = v12;
    *(v11 + 120) = v13;
  }

  memset(v23, 0, 280);
  v14 = *(v11 + 72);
  if (v14)
  {
    CalculateBindingsAccess(v14, *(v11 + 208), v23);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    CalculateBindingsAccess(v15, *(v11 + 198), v23);
  }

  v16 = *(v11 + 32);
  if (v16)
  {
    CalculateBindingsAccess(v16, *(v11 + 200), &v23[3] + 8);
  }

  v17 = *(v11 + 40);
  if (v17)
  {
    CalculateBindingsAccess(v17, *(v11 + 204), &v23[7]);
  }

  v18 = *(v11 + 80);
  if (v18)
  {
    CalculateBindingsAccess(v18, *(v11 + 210), &v23[7]);
  }

  v19 = *(v11 + 48);
  if (v19)
  {
    CalculateBindingsAccess(v19, *(v11 + 206), &v23[10] + 8);
  }

  v20 = *(v11 + 88);
  if (v20)
  {
    CalculateBindingsAccess(v20, *(v11 + 212), &v23[10] + 8);
  }

  v21 = *(v11 + 56);
  if (v21)
  {
    CalculateBindingsAccess(v21, *(v11 + 202), &v23[14]);
  }

  return memcpy((v11 + 216), v23, 0x118uLL);
}

uint64_t UnwrapMTL4RenderPipelineDynamicLinkingDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4RenderPipelineDynamicLinkingDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0xA4u, 1u);
  DecodeDYMTL4RenderPipelineDynamicLinkingDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTL4AccelerationStructureDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4AccelerationStructureDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA8u, 1u);
  DecodeDYMTL4AccelerationStructureDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLAccelerationStructureDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLAccelerationStructureDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x5Bu, 1u);
  DecodeDYMTLAccelerationStructureDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreBlobWithoutCaptureVersion(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  v9 = v8;
  if (gt_error_assert_add_error((a1 + 64), v8 > 7, "data.length >= sizeof(uint64_t)"))
  {
    return 0;
  }

  v11 = GTTraceEncoder_storeBlob(a2, Data + 8, v9 - 8);
  apr_pool_clear(v6);
  return v11;
}

uint64_t StreamNSArray(uint64_t a1, uint64_t a2, char *a3)
{
  Data = GTCaptureArchive_readData(*a1, *(a1 + 8), a3, **(a1 + 8), (a1 + 64));
  v7 = v6;
  if (gt_error_assert_add_error((a1 + 64), v6 > 0xF, "sizeof(uint64_t) * 2 <= data.length"))
  {
    return 0;
  }

  v8 = *(Data + 1);
  if (gt_error_assert_add_error((a1 + 64), v7 == ((v8 << 32) + 0x200000000) >> 29, "sizeof(uint64_t) * (2 + count) == data.length"))
  {
    return 0;
  }

  bzero(v16, 0x258uLL);
  v17 = ((v8 << 32) + 0x100000000) >> 29;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v16, 0, 1u);
  v11 = v17;
  *v17 = v8;
  if (v8 >= 1)
  {
    v12 = (Data + 16);
    v13 = (v11 + 8);
    v14 = v8 & 0x7FFFFFFF;
    do
    {
      v15 = *v12++;
      *v13++ = GetStreamUniqueIdentifier(a1, v15);
      --v14;
    }

    while (v14);
  }

  return DescriptorWithCount;
}

uint64_t UnwrapMTLComputePipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLComputePipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x3Du, 1u);
  DecodeDYMTLComputePipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLStitchedLibraryDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLStitchedLibraryDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x66u, 1u);
  DecodeDYMTLStitchedLibraryDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLRenderPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLRenderPipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x32u, 1u);
  DecodeDYMTLRenderPipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLTileRenderPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLTileRenderPipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x39u, 1u);
  DecodeDYMTLTileRenderPipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLTextureDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(&v19, 0x250uLL);
  v18 = 56;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, &v18, 0x29u, 1u);
  v8 = v18;
  *(v18 + 48) = 512;
  *v8 = GTMTLTextureDescriptorDefaults;
  *(v8 + 16) = unk_24DA92D40;
  *(v8 + 32) = xmmword_24DA92D50;
  v9 = *Data;
  *(v8 + 49) = *(Data + 1);
  *(v8 + 34) = *(Data + 2);
  *(v8 + 24) = *(Data + 3);
  *(v8 + 32) = *(Data + 4);
  *(v8 + 30) = *(Data + 5);
  *(v8 + 45) = *(Data + 6);
  *(v8 + 47) = *(Data + 7);
  *(v8 + 28) = *(Data + 8);
  v10 = 72;
  if (v9 < 3)
  {
    v10 = 80;
  }

  v11 = &Data[v10];
  *(v8 + 43) = *v11;
  *(v8 + 44) = *(v11 + 1);
  if (v9)
  {
    *(v8 + 20) = *(v11 + 2);
    if (v9 <= 3)
    {
      if (v9 == 3)
      {
        *(v8 + 36) = *(v11 + 16) | (16 * *(v11 + 12));
      }
    }

    else
    {
      v12 = v11[24];
      *(v8 + 46) = v12;
      v13 = *(v11 + 10);
      v14 = v13 | (16 * *(v11 + 8));
      *(v8 + 36) = v13 | (16 * *(v11 + 16));
      if (v9 >= 0x15)
      {
        *(v8 + 38) = *(v11 + 6);
        *(v8 + 40) = *(v11 + 7);
        if (v9 != 21)
        {
          *(v8 + 8) = *(v11 + 8);
          *(v8 + 42) = *(v11 + 9);
          if (v9 >= 0x23)
          {
            v15 = *(v11 + 22);
            v16 = *(v11 + 24);
            *(v8 + 16) = v11[80] | (*(v11 + 22) << 8) | (*(v11 + 24) << 16) | (*(v11 + 26) << 24);
            if (v9 >= 0x27)
            {
              *(v8 + 16) = *(v11 + 14);
              if (v9 >= 0x2A)
              {
                *(v8 + 36) = v14 | (*(v11 + 60) << 8);
                *v8 = *(v11 + 16);
                *(v8 + 48) = *(v11 + 17);
                *(v8 + 50) = *(v11 + 18);
                if (v9 >= 0x31)
                {
                  *(v8 + 41) = *(v11 + 19);
                  *(v8 + 39) = *(v11 + 20);
                }
              }
            }
          }
        }
      }

      if (v12 == 255)
      {
        *(v8 + 46) = 0;
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLTensorDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v31, 0x258uLL);
  v32 = 288;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v31, 0x94u, 1u);
  v8 = v32;
  v32 += 288;
  v9 = *Data;
  *(v8 + 283) = *(Data + 1);
  memset(&v33[8], 0, 128);
  v10 = *(Data + 2);
  v11 = (Data + 24);
  *v33 = v10;
  if (v10)
  {
    v12 = &v33[8];
    v13 = v10 - 1;
    if (v13 >= 0xF)
    {
      v13 = 15;
    }

    v14 = v13 + 1;
    do
    {
      v15 = *v11++;
      *v12++ = v15;
      --v14;
    }

    while (v14);
  }

  v16 = *&v33[112];
  *(v8 + 96) = *&v33[96];
  *(v8 + 112) = v16;
  *(v8 + 128) = *&v33[128];
  v17 = *&v33[48];
  *(v8 + 32) = *&v33[32];
  *(v8 + 48) = v17;
  v18 = *&v33[80];
  *(v8 + 64) = *&v33[64];
  *(v8 + 80) = v18;
  v19 = *&v33[16];
  *v8 = *v33;
  *(v8 + 16) = v19;
  *(v8 + 287) = *v11;
  if (v9 >= 0x68)
  {
    *(v8 + 284) = v11[1];
    *(v8 + 272) = v11[2];
    if (v9 != 104)
    {
      *(v8 + 282) = v11[3];
      *(v8 + 285) = v11[4];
      *(v8 + 280) = v11[5];
      *(v8 + 286) = v11[6];
      memset(&v33[8], 0, 128);
      v20 = v11[7];
      *v33 = v20;
      if (v20)
      {
        v21 = &v33[8];
        v22 = v11 + 8;
        v23 = v20 - 1;
        if (v23 >= 0xF)
        {
          v23 = 15;
        }

        v24 = v23 + 1;
        do
        {
          v25 = *v22++;
          *v21++ = v25;
          --v24;
        }

        while (v24);
      }

      v26 = *&v33[64];
      *(v8 + 216) = *&v33[80];
      v27 = *&v33[112];
      *(v8 + 232) = *&v33[96];
      *(v8 + 248) = v27;
      v28 = *v33;
      *(v8 + 152) = *&v33[16];
      v29 = *&v33[48];
      *(v8 + 168) = *&v33[32];
      *(v8 + 184) = v29;
      *(v8 + 200) = v26;
      *(v8 + 264) = *&v33[128];
      *(v8 + 136) = v28;
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLAccelerationStructurePassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v20 = 96;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x86u, 1u);
  v10 = v20;
  *v20 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  for (i = (v8 + 8); ; i += 4)
  {
    v12 = *i;
    if (*i == -1)
    {
      break;
    }

    v13 = i[2];
    v14 = i[3];
    AliasStream2 = GetAliasStream2(a1, i[1]);
    if (AliasStream2)
    {
      v16 = *AliasStream2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 3 * v12;
    *v17 = v14;
    v17[1] = v16;
    v17[2] = v13;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLBlitPassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v20 = 96;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x24u, 1u);
  v10 = v20;
  *v20 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  for (i = (v8 + 8); ; i += 4)
  {
    v12 = *i;
    if (*i == -1)
    {
      break;
    }

    v13 = i[2];
    v14 = i[3];
    AliasStream2 = GetAliasStream2(a1, i[1]);
    if (AliasStream2)
    {
      v16 = *AliasStream2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 3 * v12;
    *v17 = v14;
    v17[1] = v16;
    v17[2] = v13;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLComputePassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v20, 0x258uLL);
  v21 = 104;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v20, 0x26u, 1u);
  v10 = v21;
  *v21 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  v11 = *(v8 + 1);
  v12 = (v8 + 16);
  *(v10 + 96) = v11;
  while (1)
  {
    v13 = *v12;
    if (*v12 == -1)
    {
      break;
    }

    v14 = v12[2];
    v15 = v12[3];
    AliasStream2 = GetAliasStream2(a1, v12[1]);
    if (AliasStream2)
    {
      v17 = *AliasStream2;
    }

    else
    {
      v17 = 0;
    }

    v18 = (v10 + 24 * v13);
    *v18 = v15;
    v18[1] = v17;
    v18[2] = v14;
    v12 += 4;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLRenderPassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLRenderPassDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x22u, 1u);
  DecodeDYMTLRenderPassDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLResourceStatePassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v20 = 96;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x28u, 1u);
  v10 = v20;
  *v20 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  for (i = (v8 + 8); ; i += 4)
  {
    v12 = *i;
    if (*i == -1)
    {
      break;
    }

    v13 = i[2];
    v14 = i[3];
    AliasStream2 = GetAliasStream2(a1, i[1]);
    if (AliasStream2)
    {
      v16 = *AliasStream2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 3 * v12;
    *v17 = v14;
    v17[1] = v16;
    v17[2] = v13;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLCommandBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v15, 0x258uLL);
  v16 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v15, 0x4Eu, 1u);
  v10 = v16;
  *v16 = GTMTLCommandBufferDescriptorDefaults;
  *(v10 + 8) = *(v8 + 1);
  *(v10 + 9) = *(v8 + 2);
  v11 = *(v8 + 3);
  *v10 = v11;
  AliasStream2 = GetAliasStream2(a1, v11);
  if (AliasStream2)
  {
    v13 = *AliasStream2;
  }

  else
  {
    v13 = 0;
  }

  *v10 = v13;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLIntersectionFunctionTableDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x5Cu, 1u);
  v8 = v12;
  v9 = *Data;
  *(v12 + 8) = *(Data + 1);
  if (v9 >= 0x36)
  {
    *v8 = *(Data + 2);
    *(v8 + 12) = *(Data + 3);
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLVisibleFunctionTableDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 24;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x52u, 1u);
  v8 = v12;
  v9 = *Data;
  *v12 = *(Data + 1);
  if (v9 >= 0x2F)
  {
    *(v8 + 8) = *(Data + 2);
    if (v9 >= 0x36)
    {
      *(v8 + 16) = *(Data + 3);
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLFunctionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLFunctionDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x51u, 1u);
  DecodeDYMTLFunctionDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

void SaveMTLFunctionInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v6, 0, sizeof(v6));
  DecodeDYMTLFunctionInfo(a3, v6, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v6, 0x7Bu);
  DecodeDYMTLFunctionInfo(a3, v6, 1, (a1 + 64));
}

uint64_t StoreMTLAccelerationStructureAllocationDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x87u, 1u);
  v8 = v11;
  *(v11 + 9) = *(Data + 1);
  *(v8 + 8) = *(Data + 2);
  *v8 = *(Data + 3);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTL4ArgumentTableDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4ArgumentTableDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x8Fu, 1u);
  DecodeDYMTL4ArgumentTableDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x2Au, 1u);
  v8 = v11;
  *v11 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *v8 = *(Data + 1);
  *(v8 + 32) = *(Data + 2);
  *(v8 + 34) = *(Data + 6);
  *(v8 + 24) = *(Data + 8);
  *(v8 + 8) = *(Data + 9);
  *(v8 + 16) = *(Data + 10);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreIOSurfaceUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYIOSurface(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x3Fu, 1u);
  DecodeDYIOSurface(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTL4CommandAllocatorDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4CommandAllocatorDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA7u, 1u);
  DecodeDYMTL4CommandAllocatorDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLCommandQueueDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x43u, 1u);
  v8 = v12;
  *v12 = GTMTLCommandQueueDescriptorDefaults;
  v9 = *Data;
  *v8 = *(Data + 1);
  *(v8 + 8) = *(Data + 2);
  *(v8 + 4) = *(Data + 3);
  *(v8 + 7) = *(Data + 4);
  if (v9 >= 0x2A)
  {
    *(v8 + 6) = *(Data + 5);
    if (v9 >= 0x51)
    {
      *(v8 + 5) = *(Data + 6);
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTL4CompilerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4CompilerDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x98u, 1u);
  DecodeDYMTL4CompilerDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLImageFilterFunctionInfoSPIUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v12, 0x258uLL);
  v9 = DecodeDYMTLImageFilterFunctionInfoSPI(Data, v8, v12, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v12, 0x14u, v9);
  DecodeDYMTLImageFilterFunctionInfoSPI(Data, v8, v12, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLCounterSampleBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLCounterSampleBufferDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x48u, 1u);
  DecodeDYMTLCounterSampleBufferDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLDepthStencilDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLDepthStencilDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x34u, 1u);
  DecodeDYMTLDepthStencilDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLIOCommandQueueDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 8;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x89u, 1u);
  v8 = v11;
  *v11 = 64;
  *v8 = *(Data + 1);
  *(v8 + 4) = *(Data + 2);
  *(v8 + 5) = *(Data + 3);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLIndirectCommandBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 48;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x37u, 1u);
  v8 = v12;
  *v12 = GTMTLIndirectCommandBufferDescriptorDefaults;
  *(v8 + 16) = unk_24DA91FE8;
  *(v8 + 32) = xmmword_24DA91FF8;
  v9 = *Data;
  *(v8 + 16) = *(Data + 1);
  *(v8 + 26) = *(Data + 2);
  *(v8 + 19) = *(Data + 3);
  *(v8 + 38) = *(Data + 4);
  *(v8 + 31) = *(Data + 5);
  if (v9 >= 0x1B)
  {
    *(v8 + 32) = *(Data + 6);
    *(v8 + 33) = *(Data + 7);
    if (v9 >= 0x29)
    {
      *(v8 + 8) = *(Data + 8);
      if (v9 >= 0x3C)
      {
        *(v8 + 41) = *(Data + 9);
        if (v9 >= 0x48)
        {
          *(v8 + 35) = *(Data + 10);
          *(v8 + 34) = *(Data + 11);
          *(v8 + 36) = *(Data + 12);
          if (v9 != 72)
          {
            *(v8 + 40) = *(Data + 13);
            if (v9 >= 0x4A)
            {
              *(v8 + 42) = *(Data + 14);
              if (v9 >= 0x65)
              {
                *(v8 + 37) = *(Data + 15);
                *(v8 + 39) = *(Data + 16);
                *(v8 + 23) = *(Data + 17);
                *(v8 + 21) = *(Data + 18);
                *(v8 + 28) = *(Data + 19);
                *(v8 + 22) = *(Data + 20);
                *(v8 + 20) = *(Data + 21);
                *(v8 + 25) = *(Data + 22);
                *(v8 + 29) = *(Data + 23);
                *(v8 + 24) = *(Data + 24);
                *(v8 + 27) = *(Data + 25);
                *(v8 + 30) = *(Data + 26);
                *(v8 + 18) = *(Data + 27);
                if (v9 >= 0x69)
                {
                  *v8 = *(Data + 28);
                }
              }
            }
          }
        }
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTL4CommandQueueDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4CommandQueueDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA2u, 1u);
  DecodeDYMTL4CommandQueueDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLMotionEstimationPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 4;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x42u, 1u);
  v8 = v11;
  *v11 = 0;
  v8[1] = *(Data + 1);
  *v8 = *(Data + 2);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

void SaveMTLPipelineLibraryInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v6, 0, sizeof(v6));
  DecodeDYMTLPipelineLibraryInfo(a3, v6, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v6, 0x8Au);
  DecodeDYMTLPipelineLibraryInfo(a3, v6, 1, (a1 + 64));
}

uint64_t StoreMTLRasterizationRateMapDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLRasterizationRateMapDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x45u, 1u);
  DecodeDYMTLRasterizationRateMapDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLMeshRenderPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLMeshRenderPipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x88u, 1u);
  DecodeDYMTLMeshRenderPipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLResidencySetDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLResidencySetDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x8Eu, 1u);
  DecodeDYMTLResidencySetDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLSamplerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLSamplerDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x35u, 1u);
  DecodeDYMTLSamplerDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLResourceViewPoolDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLResourceViewPoolDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA0u, 1u);
  DecodeDYMTLResourceViewPoolDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLFunctionConstantValuesUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLFunctionConstantValues(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x50u, 1u);
  DecodeDYMTLFunctionConstantValues(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLIntersectionFunctionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  v9 = v7;
  bzero(v12, 0x258uLL);
  DecodeDYMTLIntersectionFunctionDescriptor(v8, v9, v12, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v12, 0x5Du, 1u);
  DecodeDYMTLIntersectionFunctionDescriptor(v8, v9, v12, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLRenderPipelineFunctionsDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLRenderPipelineFunctionsDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x60u, 1u);
  DecodeDYMTLRenderPipelineFunctionsDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLTextureViewDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0xA1u, 1u);
  v8 = v11;
  *v11 = *(Data + 8);
  *(v8 + 36) = *(Data + 3);
  *(v8 + 16) = *(Data + 2);
  *(v8 + 38) = *(Data + 6);
  *(v8 + 32) = *(Data + 7);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLDeviceDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLDeviceDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x41u, 1u);
  DecodeDYMTLDeviceDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMPSPluginCNNConvolutionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  memset(v11, 0, sizeof(v11));
  DecodeDYMPSPluginCNNConvolutionDescriptor(Data, v7, v11, 0);
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v11, 0x4Au);
  DecodeDYMPSPluginCNNConvolutionDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSPluginCNNConvolutionDataUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  memset(v11, 0, sizeof(v11));
  DecodeDYMPSPluginCNNConvolutionData(Data, v7, v11, 0);
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v11, 0x1Bu);
  DecodeDYMPSPluginCNNConvolutionData(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSPluginNDArrayConvolutionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v21 = 0u;
  v22 = 0u;
  memset(v19, 0, sizeof(v19));
  v20 = 0x2CuLL;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v19, 0x4Cu);
  v8 = 0;
  v9 = v20;
  *&v20 = v20 + 44;
  v10 = (Data + 8);
  do
  {
    v11 = v10;
    v12 = *v10++;
    *&v9[v8] = v12;
    v8 += 4;
  }

  while (v8 != 12);
  v13 = 0;
  v9[36] = *v10;
  v14 = v11 + 3;
  v9[37] = v10[1];
  do
  {
    v15 = *v14++;
    *&v9[v13 + 12] = v15;
    v13 += 4;
  }

  while (v13 != 12);
  for (i = 0; i != 12; i += 4)
  {
    v17 = *v14++;
    *&v9[i + 24] = v17;
  }

  v9[38] = *v14;
  v9[39] = v14[1];
  v9[40] = v14[2];
  v9[41] = v14[3];
  v9[42] = v14[4];
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSSourceTextureInfoUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 80;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, &v10, 0x18u);
  v8 = v10;
  *v10 = *(Data + 1);
  v8[1] = *(Data + 2);
  v8[2] = *(Data + 3);
  v8[3] = *(Data + 4);
  v8[4] = *(Data + 5);
  v8[5] = *(Data + 6);
  v8[6] = *(Data + 7);
  v8[7] = *(Data + 8);
  v8[8] = *(Data + 9);
  v8[9] = *(Data + 10);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSDestinationTextureInfoUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 80;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, &v10, 0x19u);
  v8 = v11;
  *v11 = *(Data + 1);
  v8[1] = *(Data + 2);
  v8[2] = *(Data + 3);
  v8[3] = *(Data + 4);
  v8[4] = *(Data + 5);
  v8[5] = *(Data + 6);
  v8[6] = *(Data + 7);
  v8[7] = *(Data + 8);
  v8[8] = *(Data + 9);
  v8[9] = *(Data + 10);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSNDArrayStructureUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v19 = 0u;
  v20 = 0u;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v18 = 48;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v16, 0x1Cu);
  v8 = 0;
  v9 = v18;
  v10 = v18;
  *v18 = *(Data + 1);
  v18 = v10 + 48;
  v11 = (Data + 16);
  do
  {
    v12 = *v11++;
    *(v9 + 8 + v8) = v12;
    v8 += 4;
  }

  while (v8 != 16);
  v13 = 0;
  v14 = (v9 + 24);
  do
  {
    *v14++ = v11[v13++];
  }

  while (v13 != 4);
  *(v9 + 40) = v11[4];
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t UnwrapMTLFXFrameInterpolatorDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v14, 0x258uLL);
  v15 = 56;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v14, 0x90u, 1u);
  if (*v8 >= 0x71u)
  {
    v10 = v15;
    *(v15 + 40) = *(v8 + 1);
    *(v10 + 42) = *(v8 + 2);
    *(v10 + 44) = *(v8 + 3);
    *(v10 + 46) = *(v8 + 4);
    *v10 = *(v8 + 5);
    *(v10 + 8) = *(v8 + 6);
    AliasStream2 = GetAliasStream2(a1, *(v8 + 7));
    if (AliasStream2)
    {
      v12 = *AliasStream2;
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 32) = v12;
    *(v10 + 16) = *(v8 + 8);
    *(v10 + 24) = *(v8 + 9);
    *(v10 + 48) = *(v8 + 10);
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLFXSpatialScalerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x8Bu, 1u);
  v8 = v11;
  *v11 = *(Data + 1);
  *(v8 + 8) = *(Data + 2);
  *(v8 + 16) = *(Data + 3);
  *(v8 + 24) = *(Data + 4);
  *(v8 + 32) = *(Data + 5);
  *(v8 + 34) = *(Data + 6);
  *(v8 + 36) = *(Data + 7);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLFXTemporalDenoisedScalerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 72;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x91u, 1u);
  v8 = *Data;
  v9 = v12;
  *v12 = *(Data + 1);
  *(v9 + 2) = *(Data + 2);
  *(v9 + 4) = *(Data + 3);
  *(v9 + 6) = *(Data + 4);
  *(v9 + 8) = *(Data + 5);
  *(v9 + 10) = *(Data + 6);
  *(v9 + 12) = *(Data + 7);
  *(v9 + 14) = *(Data + 8);
  *(v9 + 20) = *(Data + 9);
  *(v9 + 24) = *(Data + 10);
  *(v9 + 32) = *(Data + 11);
  *(v9 + 40) = *(Data + 12);
  *(v9 + 48) = *(Data + 13);
  *(v9 + 56) = *(Data + 28);
  *(v9 + 60) = *(Data + 30);
  *(v9 + 64) = *(Data + 16);
  *(v9 + 65) = *(Data + 17);
  if (v8 >= 0x4D)
  {
    *(v9 + 66) = *(Data + 18);
    *(v9 + 22) = *(Data + 19);
    if (v8 >= 0x50)
    {
      *(v9 + 67) = *(Data + 20);
      if (v8 >= 0x6D)
      {
        *(v9 + 16) = *(Data + 21);
        *(v9 + 18) = *(Data + 22);
        *(v9 + 68) = *(Data + 23);
        *(v9 + 69) = *(Data + 24);
        *(v9 + 70) = *(Data + 25);
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLFXTemporalScalerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 64;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x8Cu, 1u);
  v8 = *Data;
  v9 = v12;
  *v12 = *(Data + 1);
  *(v9 + 2) = *(Data + 2);
  *(v9 + 4) = *(Data + 3);
  *(v9 + 6) = *(Data + 4);
  *(v9 + 16) = *(Data + 5);
  *(v9 + 24) = *(Data + 6);
  *(v9 + 32) = *(Data + 7);
  *(v9 + 40) = *(Data + 8);
  *(v9 + 48) = *(Data + 18);
  *(v9 + 52) = *(Data + 20);
  *(v9 + 56) = *(Data + 11);
  *(v9 + 57) = *(Data + 12);
  if (v8 >= 0x4D)
  {
    *(v9 + 58) = *(Data + 13);
    *(v9 + 8) = *(Data + 14);
    if (v8 >= 0x50)
    {
      *(v9 + 59) = *(Data + 15);
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t GetStreamAtIndex(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a2;
  v4 = *find_entry(a1, &v6, 8uLL, 0);
  if (v4)
  {
    while (1)
    {
      v4 = *(v4 + 32);
      if (!v4)
      {
        break;
      }

      if (*(v4 + 40) <= a3)
      {
        return *(v4 + 8);
      }
    }
  }

  return 0;
}

uint64_t StoreSnapshot(uint64_t a1, uint64_t a2, char *__s, void *a4)
{
  v8 = *(a1 + 48);
  v9 = strlen(__s);
  v10 = *find_entry(*(a1 + 32), __s, v9, 0);
  if (v10)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = v11[8];
      if (!a4)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  Data = GTCaptureArchive_readData(*a1, *(a1 + 8), __s, v8, (a1 + 64));
  v15 = v14;
  if (gt_error_assert_add_error((a1 + 64), v14 > 7, "data.length >= sizeof(uint64_t)"))
  {
    return 0;
  }

  v12 = GTTraceEncoder_storeBlob(a2, Data, v15);
  v11 = apr_palloc(v8, 0x10uLL);
  *v11 = **(a2 + 16);
  v11[8] = v12;
  if (__s)
  {
    v16 = apr_palloc(v8, v9 + 1);
    memcpy(v16, __s, v9 + 1);
  }

  else
  {
    v16 = 0;
  }

  apr_hash_set(*(a1 + 32), v16, v9, v11);
  if (a4)
  {
LABEL_11:
    *a4 = *v11;
  }

  return v12;
}

uint64_t StoreMTLHeapDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 24;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x36u, 1u);
  v8 = v12;
  *(v12 + 16) = 32;
  *v8 = GTMTLHeapDescriptorDefaults;
  v9 = *Data;
  *(v8 + 8) = *(Data + 1);
  *(v8 + 20) = *(Data + 4);
  *(v8 + 16) = *(Data + 7);
  if (v9 >= 0x2A)
  {
    *(v8 + 19) = *(Data + 8);
    if (v9 >= 0x34)
    {
      *v8 = *(Data + 9);
      if (v9 >= 0x66)
      {
        *(v8 + 18) = *(Data + 10);
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t SaveMTLLibraryInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v7, 0, sizeof(v7));
  DecodeDYMTLLibraryInfo(a3, v7, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v7, 0x85u);
  return DecodeDYMTLLibraryInfo(a3, v7, 1, (a1 + 64));
}

uint64_t UnwrapMTLCompileOptionsUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLCompileOptions(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x49u, 1u);
  DecodeDYMTLCompileOptions(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLTextureMipmapInfoUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v17, 0x258uLL);
  v7 = 16 * Data[8];
  v18 = 16;
  v19 = v7;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v17, 0x5Fu, 1u);
  v9 = *(Data + 1);
  v10 = v18;
  v11 = v19;
  *(v18 + 8) = *(Data + 1);
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *v10 = v12;
  if (v9)
  {
    v13 = (v11 + 8);
    v14 = (Data + 40);
    do
    {
      *(v13 - 2) = *(v14 - 2);
      *(v13 - 1) = *(v14 - 1);
      v15 = *v14;
      v14 += 4;
      *v13 = v15;
      v13 += 4;
      --v9;
    }

    while (v9);
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StreamArrayFromFile(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  Data = GTCaptureArchive_readData(*a1, *(a1 + 8), a3, **(a1 + 8), (a1 + 64));
  if (gt_error_assert_add_error((a1 + 64), v8 >= 8 * a4, "data.length >= count * sizeof(uint64_t)"))
  {
    return 0;
  }

  v10 = a4;
  v11 = 8 * a4;
  v12 = apr_palloc(*(a1 + 56), v11);
  v13 = v12;
  if (v12)
  {
    bzero(v12, v11);
  }

  return StreamArray(a1, a2, v13, Data, v10);
}

uint64_t UnwrapMTL4CommandBufferOptionsUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v15, 0x258uLL);
  v16 = 8;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v15, 0xA9u, 1u);
  v10 = v16;
  v11 = *(v8 + 1);
  *v16 = v11;
  AliasStream2 = GetAliasStream2(a1, v11);
  if (AliasStream2)
  {
    v13 = *AliasStream2;
  }

  else
  {
    v13 = 0;
  }

  *v10 = v13;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t AllocateDescriptorWithCount(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += (*(a2 + v5) + 7) & 0xFFFFFFFFFFFFFFF8;
    v5 += 8;
  }

  while (v5 != 600);
  v7 = *(*(a1 + 8) + 24);
  v8 = *(a1 + 24);
  v9 = *(a1 + 42);
  *(a1 + 42) = v9 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v7, v8, (v6 << 32) | (a3 << 16) | (a4 << 8) | v9);
  v11 = 0;
  v12 = Bytes + 16;
  do
  {
    if (((*(a2 + v11) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v12 += (*(a2 + v11) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + v11) = v13;
    v11 += 8;
  }

  while (v11 != 600);
  return Bytes[8];
}

uint64_t AllocatePipelineReflectionWithType(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = vdupq_n_s64(7uLL);
  v7 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  do
  {
    v5 = vaddq_s64(vandq_s8(vaddq_s64(*(a2 + v4), v6), v7), v5);
    v4 += 16;
  }

  while (v4 != 240);
  v8 = vaddvq_s64(v5);
  if (!v8)
  {
    return 0;
  }

  v9 = *(*(a1 + 8) + 24);
  v10 = *(a1 + 24);
  v11 = *(a1 + 42);
  *(a1 + 42) = v11 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v9, v10, (v8 << 32) | (a3 << 16) | v11 | 0x100);
  v13 = 0;
  v14 = Bytes + 16;
  do
  {
    if (((*(a2 + v13) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v14 += (*(a2 + v13) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + v13) = v15;
    v13 += 8;
  }

  while (v13 != 240);
  return Bytes[8];
}

uint64_t AllocateMPSDescriptorWithType(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = vdupq_n_s64(0xFuLL);
  v7 = vdupq_n_s64(0xFFFFFFFFFFFFFFF0);
  do
  {
    v5 = vaddq_s64(vandq_s8(vaddq_s64(*(a2 + v4), v6), v7), v5);
    v4 += 16;
  }

  while (v4 != 80);
  v8 = *(*(a1 + 8) + 24);
  v9 = *(a1 + 24);
  v10 = *(a1 + 42);
  *(a1 + 42) = v10 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v8, v9, (vaddvq_s64(v5) << 32) | (a3 << 16) | v10 | 0x100);
  v12 = 0;
  v13 = Bytes + 16;
  do
  {
    if (((*(a2 + v12) + 15) & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v13 += (*(a2 + v12) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + v12) = v14;
    v12 += 8;
  }

  while (v12 != 80);
  return Bytes[8];
}

void GTTraceFbufToFunc_createStream(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 4);
  if (v6 <= -15610)
  {
    if (v6 <= -16076)
    {
      if (v6 > -16234)
      {
        if (v6 <= -16164)
        {
          if (v6 <= -16199)
          {
            switch(v6)
            {
              case -16233:
                v19 = 0uLL;
                *&v20 = 0;
                DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat(&v19, a2, (*a2 - 36), (a1 + 64));
                break;
              case -16200:
                v19 = 0u;
                v20 = 0u;
                DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
                break;
              case -16199:
                v20 = 0u;
                v21 = 0u;
                v19 = 0u;
                DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (a1 + 64));
                break;
              default:
                return;
            }
          }

          else if (v6 > -16197)
          {
            if (v6 == -16196)
            {
              v21 = 0u;
              v22 = 0u;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            else
            {
              if (v6 != -16165)
              {
                return;
              }

              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newCommandQueueWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            }
          }

          else if (v6 == -16198)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else
        {
          switch(v6)
          {
            case -16120:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newHeapWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16119:
            case -16118:
            case -16115:
            case -16114:
            case -16113:
            case -16112:
            case -16111:
            case -16110:
            case -16109:
            case -16108:
            case -16105:
            case -16103:
            case -16102:
            case -16100:
            case -16097:
            case -16094:
            case -16093:
            case -16092:
            case -16087:
            case -16086:
            case -16085:
            case -16084:
            case -16083:
              return;
            case -16117:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLHeap_newBufferWithLength_options(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16116:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLHeap_newTextureWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16107:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_error(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16106:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16104:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLBuffer_newTiledTextureWithDescriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16101:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16099:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newTextureLayoutWithDescriptor_isHeapOrBufferBacked(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16098:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLBuffer_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16096:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newTextureWithBytesNoCopy_length_descriptor_deallocator(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16095:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newDefaultLibraryWithBundle_error(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16091:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16090:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16089:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16088:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16082:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            case -16081:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            default:
              if (v6 == -16163)
              {
                v19 = 0uLL;
                *&v20 = 0;
                DYTraceDecode_MTLDevice_newBufferWithIOSurface(&v19, a2, (*a2 - 36), (a1 + 64));
              }

              else
              {
                if (v6 != -16128)
                {
                  return;
                }

                v19 = 0uLL;
                DYTraceDecode_MTLDevice_newFence(&v19, a2, (*a2 - 36), (a1 + 64));
              }

              break;
          }
        }
      }

      else if (v6 <= -18425)
      {
        if (v6 <= -18429)
        {
          switch(v6)
          {
            case -18432:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newSpatialScalerWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -18431:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newTemporalScalerWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -18429:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newFrameInterpolatorWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -18427)
        {
          v19 = 0u;
          v20 = 0u;
          if (v6 == -18426)
          {
            DYTraceDecode_MTLDevice_newMTL4TemporalScalerWithDescriptor_compiler(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            DYTraceDecode_MTLDevice_newMTL4FrameInterpolatorWithDescriptor_compiler(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -18428)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newTemporalDenoisedScalerWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newMTL4SpatialScalerWithDescriptor_compiler(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else
      {
        switch(v6)
        {
          case -16354:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandBuffer_blitCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_443;
          case -16353:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCommandBuffer_renderCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_443;
          case -16352:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandBuffer_computeCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_443;
          case -16351:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCommandBuffer_parallelRenderCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_443;
          case -16350:
          case -16349:
          case -16348:
          case -16347:
          case -16346:
          case -16345:
          case -16344:
          case -16341:
          case -16340:
          case -16339:
          case -16338:
          case -16337:
          case -16336:
          case -16335:
          case -16334:
          case -16333:
          case -16332:
          case -16331:
          case -16330:
          case -16329:
          case -16328:
          case -16327:
          case -16326:
          case -16325:
          case -16324:
          case -16323:
          case -16322:
          case -16321:
          case -16320:
          case -16319:
          case -16318:
          case -16317:
          case -16295:
          case -16293:
          case -16292:
          case -16291:
          case -16289:
          case -16288:
          case -16287:
            return;
          case -16343:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandQueue_commandBuffer(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16342:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandQueue_commandBufferWithUnretainedReferences(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16316:
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newCommandQueue(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16315:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newCommandQueueWithMaxCommandBufferCount(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16314:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newBufferWithLength_options(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16313:
            goto LABEL_374;
          case -16312:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newBufferWithBytesNoCopy_length_options_deallocator(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16311:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newDepthStencilStateWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16310:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newTextureWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16309:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newSamplerStateWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16308:
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newDefaultLibrary(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16307:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithFile_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16306:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithData_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16305:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithSource_options_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16304:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithSource_options_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16303:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16302:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16301:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16300:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16299:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16298:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_options_reflection_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16297:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16296:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_options_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16294:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newTextureWithDescriptor_iosurface_plane(&v19, a2, (*a2 - 36), (a1 + 64));
            if (*(a1 + 68))
            {
              return;
            }

            v10 = *(&v19 + 1);
            if (!GetStreamAtIndex(*(a1 + 24), *(&v19 + 1), a3))
            {
              goto LABEL_508;
            }

            v12 = (v5 + 80);
            goto LABEL_514;
          case -16290:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLLibrary_newFunctionWithName(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -16286:
            v19 = 0uLL;
            DYTraceDecode_MTLParallelRenderCommandEncoder_renderCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_443;
          default:
            if (v6 == -18424)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newMTL4TemporalDenoisedScalerWithDescriptor_compiler(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            else
            {
              if (v6 != -16368)
              {
                return;
              }

              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLBuffer_newTextureWithDescriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            break;
        }
      }

      goto LABEL_503;
    }

    if (v6 > -15849)
    {
      if (v6 <= -15716)
      {
        if (v6 > -15741)
        {
          if (v6 <= -15734)
          {
            switch(v6)
            {
              case -15740:
                v20 = 0u;
                v21 = 0u;
                v19 = 0u;
                DYTraceDecode_MTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error(&v19, a2, (*a2 - 36), (a1 + 64));
                break;
              case -15738:
                v20 = 0u;
                v21 = 0u;
                v19 = 0u;
                DYTraceDecode_MTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error(&v19, a2, (*a2 - 36), (a1 + 64));
                break;
              case -15734:
                v19 = 0uLL;
                *&v20 = 0;
                DYTraceDecode_MTLCaptureManager_newCaptureScopeWithDevice(&v19, a2, (*a2 - 36), (a1 + 64));
                break;
              default:
                return;
            }
          }

          else if (v6 > -15731)
          {
            if (v6 == -15730)
            {
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newFunctionWithGLIR_inputsDescription_functionType(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            else
            {
              if (v6 != -15717)
              {
                return;
              }

              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newBinaryArchiveWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
            }
          }

          else if (v6 == -15733)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCaptureManager_newCaptureScopeWithCommandQueue(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15731)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLIR_functionType(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 <= -15794)
        {
          switch(v6)
          {
            case -15848:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newCounterSampleBufferWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15847:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15830:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLFunction_newFunctionWithPluginData_bitcodeType(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15778)
        {
          if (v6 == -15777)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newTextureWithDescriptor_offset(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15775)
            {
              return;
            }

            *&v23 = 0;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -15793)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newRasterizationRateMapWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -15778)
          {
            return;
          }

          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLHeap_newBufferWithLength_options_offset(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 <= -15691)
      {
        if (v6 <= -15706)
        {
          switch(v6)
          {
            case -15715:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_pipelineLibrary(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15714:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection_pipelineLibrary(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15707:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newBufferWithBytes_length_options_gpuAddress(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15696)
        {
          if (v6 == -15695)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newDynamicLibrary_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15693)
            {
              return;
            }

            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDAG_functions_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -15705)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newBufferWithLength_options_gpuAddress(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -15701)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLCommandQueue_commandBufferWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else
      {
        if (v6 <= -15621)
        {
          if (v6 <= -15689)
          {
            if (v6 == -15690)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_resourceIndex(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            else
            {
              *&v23 = 0;
              v21 = 0u;
              v22 = 0u;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_resourceIndex(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            goto LABEL_503;
          }

          if (v6 == -15688)
          {
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle_resourceIndex(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          }

          if (v6 != -15673)
          {
            return;
          }

          v19 = 0uLL;
          DYTraceDecode_MTLCommandBuffer_accelerationStructureCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
          goto LABEL_443;
        }

        if (v6 > -15615)
        {
          if (v6 == -15614)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newAccelerationStructureWithSize(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15613)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newDynamicLibraryWithURL_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -15620)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLComputePipelineState_functionHandleWithFunction(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -15615)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newAccelerationStructureWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      goto LABEL_503;
    }

    if (v6 > -15998)
    {
      if (v6 > -15922)
      {
        if (v6 > -15910)
        {
          if (v6 > -15892)
          {
            if (v6 == -15891)
            {
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newMotionEstimationPipelineWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
              goto LABEL_503;
            }

            if (v6 != -15870)
            {
              return;
            }

            v19 = 0uLL;
            DYTraceDecode_MTLCommandBuffer_resourceStateCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_443;
          }

          if (v6 == -15909)
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newSharedEventWithHandle(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15900)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newResourceGroupFromResources_count(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 > -15914)
        {
          if (v6 == -15913)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLTexture_newRemoteTextureViewForDevice(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15912)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newSharedEventWithMachPort(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -15921)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLIndirectCommandBuffer_indirectComputeCommandAtIndex(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -15914)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLBuffer_newRemoteBufferViewForDevice(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        goto LABEL_503;
      }

      if (v6 <= -15980)
      {
        switch(v6)
        {
          case -15997:
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newEvent(&v19, a2, (*a2 - 36), (a1 + 64));
            break;
          case -15996:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newSharedEvent(&v19, a2, (*a2 - 36), (a1 + 64));
            break;
          case -15980:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newSharedTextureWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            break;
          default:
            return;
        }

        goto LABEL_503;
      }

      if (v6 > -15970)
      {
        if (v6 == -15969)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -15922)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLIndirectCommandBuffer_indirectRenderCommandAtIndex(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        goto LABEL_503;
      }

      if (v6 != -15979)
      {
        if (v6 != -15972)
        {
          return;
        }

        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCount_options(&v19, a2, (*a2 - 36), (a1 + 64));
        goto LABEL_503;
      }

      gt_error_assert_add_error((a1 + 64), 0, "0");
      if (!*(a1 + 68))
      {

        CreateStream(a1, 0, a3);
      }

      return;
    }

    if (v6 <= -16035)
    {
      if (v6 <= -16052)
      {
        switch(v6)
        {
          case -16075:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newPipelineLibraryWithFilePath_error(&v19, a2, (*a2 - 36), (a1 + 64));
            break;
          case -16053:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLArgumentEncoder_newArgumentEncoderForBufferAtIndex(&v19, a2, (*a2 - 36), (a1 + 64));
            break;
          case -16052:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex(&v19, a2, (*a2 - 36), (a1 + 64));
            break;
          default:
            return;
        }
      }

      else if (v6 > -16039)
      {
        if (v6 == -16038)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLLibrary_newExternFunctionWithName(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -16037)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newArgumentEncoderWithArguments(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 == -16051)
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -16039)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newLibraryWithURL_error(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -16030)
    {
      if (v6 > -16015)
      {
        if (v6 == -16014)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLCommandBuffer_computeCommandEncoderWithDispatchType(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -16013)
          {
            return;
          }

          v19 = 0uLL;
          DYTraceDecode_MTLCommandBuffer_videoCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        goto LABEL_443;
      }

      if (v6 == -16029)
      {
        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newLibraryWithCIFilters_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -16018)
        {
          return;
        }

        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newLibraryWithCIFiltersForComputePipeline_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    if (v6 != -16034)
    {
      if (v6 == -16031)
      {
        *&v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        DYTraceDecode_MTLDevice_newTiledTextureWithBytesNoCopy_length_descriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -16030)
        {
          return;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newTiledTextureWithBytesNoCopy_length_deallocator_descriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLCaptureManager_notifySubmissionForEyeSPI_iosurface_bounds_submitFlags(&v19, a2, (*a2 - 36), (a1 + 64));
LABEL_384:
    if (!*(a1 + 68))
    {
      v10 = v19;
      if (!GetStreamAtIndex(*(a1 + 24), v19, a3))
      {
LABEL_508:
        v13 = a1;
        v7 = v10;
        goto LABEL_506;
      }
    }

    return;
  }

  if (v6 <= -15260)
  {
    if (v6 > -15365)
    {
      if (v6 > -15351)
      {
        if (v6 <= -15307)
        {
          if (v6 > -15334)
          {
            if (v6 == -15333)
            {
              v19 = 0uLL;
              DYTraceDecode_MTLIOCommandQueue_commandBuffer(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            else
            {
              if (v6 != -15317)
              {
                return;
              }

              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newProfileWithExecutionSize(&v19, a2, (*a2 - 36), (a1 + 64));
            }
          }

          else if (v6 == -15350)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newIOCommandQueueWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15348)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newIOHandleWithURL_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 <= -15297)
        {
          if (v6 == -15306)
          {
            v19 = 0uLL;
            DYTraceDecode_MTLIOCommandQueue_commandBufferWithUnretainedReferences(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15299)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLIOScratchBufferAllocator_newScratchBufferWithMinimumSize(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else
        {
          switch(v6)
          {
            case -15296:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newIOHandleWithURL_compressionMethod_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15261:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newArgumentEncoderWithBufferBinding(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15260:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newIOFileHandleWithURL_compressionMethod_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            default:
              return;
          }
        }
      }

      else
      {
        if (v6 > -15356)
        {
          if (v6 <= -15354)
          {
            if (v6 == -15355)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLHeap_newAccelerationStructureWithDescriptor_offset(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            else
            {
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLHeap_newAccelerationStructureWithSize(&v19, a2, (*a2 - 36), (a1 + 64));
            }
          }

          else if (v6 == -15353)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_offset(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else if (v6 == -15352)
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_offset_resourceIndex(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_resourceIndex(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          goto LABEL_503;
        }

        if (v6 > -15359)
        {
          if (v6 == -15358)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newAccelerationStructureWithSize_withDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15356)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else
        {
          if (v6 == -15364)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_443;
          }

          if (v6 != -15359)
          {
            return;
          }

          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newAccelerationStructureWithBuffer_offset_resourceIndex(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }
    }

    else
    {
      if (v6 > -15507)
      {
        switch(v6)
        {
          case -15464:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newAccelerationStructureWithBuffer_offset(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15463:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_functionHandleWithFunction_stage(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15462:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15461:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15460:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableWithDescriptor_stage(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15459:
          case -15458:
          case -15457:
          case -15456:
          case -15455:
          case -15454:
          case -15453:
          case -15452:
          case -15451:
          case -15450:
          case -15449:
          case -15448:
          case -15447:
          case -15446:
          case -15445:
          case -15433:
          case -15432:
          case -15431:
          case -15426:
          case -15424:
          case -15423:
          case -15422:
          case -15418:
          case -15417:
          case -15416:
          case -15415:
          case -15414:
          case -15413:
          case -15412:
          case -15411:
          case -15410:
          case -15409:
          case -15408:
          case -15407:
            return;
          case -15444:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_fragmentFunctionHandleWithFunction(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15443:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15442:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newTileIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15441:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15440:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15439:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15438:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15437:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_tileFunctionHandleWithFunction(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15436:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_vertexFunctionHandleWithFunction(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15435:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15434:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDescriptorSPI_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15430:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLCoreIR_functionType(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15429:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLCoreIR_inputsDescription_functionType(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15428:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLESIR_functionType(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15427:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLESIR_inputsDescription_functionType(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15425:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15421:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15420:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15419:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptorSPI_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15406:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15405:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15404:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          case -15403:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          default:
            if (v6 == -15506)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newAccelerationStructureWithSize_resourceIndex(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            else
            {
              if (v6 != -15496)
              {
                return;
              }

              v19 = 0uLL;
              DYTraceDecode_MTLDevice_newLateEvalEvent(&v19, a2, (*a2 - 36), (a1 + 64));
            }

            break;
        }

        goto LABEL_503;
      }

      if (v6 > -15578)
      {
        if (v6 <= -15542)
        {
          switch(v6)
          {
            case -15577:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15551:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15550:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newIntersectionFunctionWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15532)
        {
          if (v6 == -15531)
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newDynamicLibraryWithURL_options_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15509)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newBufferWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -15541)
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -15540)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLComputePipelineState_newIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else
      {
        if (v6 <= -15587)
        {
          if (v6 == -15609)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLLibrary_newFunctionWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          }

          if (v6 == -15608)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLLibrary_newFunctionWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
            goto LABEL_503;
          }

          if (v6 != -15587)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLCommandBuffer_blitCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          goto LABEL_443;
        }

        if (v6 <= -15585)
        {
          v19 = 0uLL;
          *&v20 = 0;
          if (v6 == -15586)
          {
            DYTraceDecode_MTLCommandBuffer_computeCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            DYTraceDecode_MTLCommandBuffer_resourceStateCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }

LABEL_443:
          if (!*(a1 + 68))
          {
            CreateEncoderStream(a1, *(&v19 + 1), v19, a3);
          }

          return;
        }

        if (v6 == -15584)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLCommandBuffer_sampledComputeCommandEncoderWithDescriptor_programInfoBuffer_capacity(&v19, a2, (*a2 - 36), (a1 + 64));
          goto LABEL_443;
        }

        if (v6 != -15578)
        {
          return;
        }

        v19 = 0uLL;
        *&v20 = 0;
        DYTraceDecode_MTLComputePipelineState_newVisibleFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
      }
    }

    goto LABEL_503;
  }

  if (v6 <= -14868)
  {
    if (v6 <= -15141)
    {
      if (v6 <= -15191)
      {
        if (v6 <= -15199)
        {
          switch(v6)
          {
            case -15259:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newIOFileHandleWithURL_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15245:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newResidencySetWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            case -15200:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newArgumentTableWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15197)
        {
          if (v6 == -15196)
          {
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newCommandBuffer(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15194)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newCompilerWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -15198)
        {
          v19 = 0uLL;
          DYTraceDecode_MTLDevice_newCommandAllocator(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newCommandAllocatorWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 > -15172)
      {
        if (v6 <= -15166)
        {
          if (v6 == -15171)
          {
            v19 = 0uLL;
            DYTraceDecode_MTL4CommandBuffer_computeCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15166)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          goto LABEL_443;
        }

        if (v6 == -15165)
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor_options(&v19, a2, (*a2 - 36), (a1 + 64));
          goto LABEL_443;
        }

        if (v6 != -15141)
        {
          return;
        }

        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else if (v6 > -15174)
      {
        if (v6 == -15173)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator_options(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 == -15190)
      {
        v19 = 0uLL;
        DYTraceDecode_MTLDevice_newMTL4CommandQueue(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -15189)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newTextureViewPoolWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
      }

LABEL_503:
      if (*(a1 + 68))
      {
        return;
      }

      goto LABEL_504;
    }

    if (v6 <= -15131)
    {
      if (v6 > -15137)
      {
        if (v6 > -15135)
        {
          if (v6 == -15134)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -15131)
            {
              return;
            }

            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          if (v6 == -15136)
          {
            DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_error(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }
      }

      else if (v6 > -15139)
      {
        v19 = 0u;
        v20 = 0u;
        if (v6 == -15138)
        {
          DYTraceDecode_MTL4Compiler_newDynamicLibrary_error(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 == -15140)
      {
        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTL4Compiler_newDynamicLibrary_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -14872)
    {
      if (v6 > -14870)
      {
        v19 = 0u;
        v20 = 0u;
        if (v6 == -14869)
        {
          DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        if (v6 == -14871)
        {
          DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      goto LABEL_503;
    }

    if (v6 > -14960)
    {
      if (v6 == -14959)
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newTensorWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
        goto LABEL_503;
      }

      if (v6 != -14884)
      {
        return;
      }

      v19 = 0uLL;
      DYTraceDecode_MTL4CommandBuffer_machineLearningCommandEncoder(&v19, a2, (*a2 - 36), (a1 + 64));
      goto LABEL_443;
    }

    if (v6 == -15130)
    {
      *&v21 = 0;
      v19 = 0u;
      v20 = 0u;
      DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (a1 + 64));
      goto LABEL_503;
    }

    if (v6 == -14969)
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      DYTraceDecode_MTLTextureViewPool_setTextureView_descriptor_atIndex(&v19, a2, (*a2 - 36), (a1 + 64));
      if (!*(a1 + 68))
      {
        v7 = *(&v21 + 1);
LABEL_505:
        v13 = a1;
LABEL_506:
        CreateStream(v13, v7, a3);
        return;
      }
    }

    return;
  }

  if (v6 > -7164)
  {
    if (v6 > -6123)
    {
      if (v6 > -6111)
      {
        if (v6 > -6097)
        {
          if (v6 == -6096)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MPSPlugin_newNDArrayConvolution2DGradientWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }

          else
          {
            if (v6 != -6095)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MPSPlugin_newNDArrayConvolution2DWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
          }
        }

        else if (v6 == -6110)
        {
          v19 = 0uLL;
          DYTraceDecode_MPSPlugin_newMatrixFullyConnected(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -6109)
          {
            return;
          }

          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          DYTraceDecode_MPSPlugin_newCNNPoolingAverageWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 > -6117)
      {
        if (v6 == -6116)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNDilatedPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -6111)
          {
            return;
          }

          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNConvolutionGradientWithDescriptor_convolutionData(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 == -6122)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MPSPlugin_newMatrixMultiplicationWithTransposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -6119)
        {
          return;
        }

        v19 = 0uLL;
        DYTraceDecode_MPSPlugin_newCNNSoftMax(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -6135)
    {
      if (v6 > -6132)
      {
        if (v6 == -6131)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNConvolutionWithDescriptor_dataSource_fullyConnected(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -6129)
          {
            return;
          }

          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterAArray_count(&v19, a2, (*a2 - 36), (a1 + 64));
        }
      }

      else if (v6 == -6134)
      {
        *&v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        DYTraceDecode_MPSPlugin_newMatrixVectorMultiplicationWithTranspose_rows_columns_alpha_beta(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -6133)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -6144)
    {
      if (v6 == -6143)
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MPSPlugin_newCNNConvolutionWithDescriptor_convolutionData(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -6141)
        {
          return;
        }

        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        DYTraceDecode_MPSPlugin_newCNNPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    if (v6 != -7163)
    {
      if (v6 != -6655)
      {
        return;
      }

      v19 = 0uLL;
      DYTraceDecode_NSHMDMetalSession_nextDrawable(&v19, a2, (*a2 - 36), (a1 + 64));
      goto LABEL_503;
    }

    v19 = 0uLL;
    *&v20 = 0;
    DYTraceDecode_CAMetalLayer_setDevice(&v19, a2, (*a2 - 36), (a1 + 64));
    if (*(a1 + 68))
    {
      return;
    }

    v11 = *(&v19 + 1);
    if (!GetStreamAtIndex(*(a1 + 24), *(&v19 + 1), a3))
    {
      CreateStream(a1, v11, a3);
    }

    goto LABEL_408;
  }

  if (v6 > -14802)
  {
    if (v6 > -10238)
    {
      if (v6 <= -7168)
      {
        if (v6 == -10237)
        {
LABEL_374:
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          DYTraceDecode_MTLDevice_newBufferWithBytes_length_options(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        else
        {
          if (v6 != -10151)
          {
            return;
          }

          v19 = 0uLL;
          DYTraceDecode_MTLCaptureManager_sharedCaptureManager(&v19, a2, (*a2 - 36), (a1 + 64));
        }

        goto LABEL_503;
      }

      if (v6 != -7167)
      {
        if (v6 != -7166)
        {
          return;
        }

        v19 = 0uLL;
        DYTraceDecode_CAMetalLayer_nextDrawable(&v19, a2, (*a2 - 36), (a1 + 64));
        goto LABEL_503;
      }

      v19 = 0uLL;
      DYTraceDecode_CAMetalDrawable_texture(&v19, a2, (*a2 - 36), (a1 + 64));
      if (*(a1 + 68))
      {
        return;
      }

      StreamAtIndex = GetStreamAtIndex(*(a1 + 24), v19, a3);
      gt_error_assert_add_error((a1 + 64), StreamAtIndex != 0, "drawableStream != ((void*)0)");
      if (StreamAtIndex)
      {
        v9 = *StreamAtIndex;
      }

      else
      {
        v9 = 0;
      }

      v14 = *find_entry(*(a1 + 40), &v19 + 8, 8uLL, 0);
      if (!v14 || (v15 = *(v14 + 32)) == 0 || *v15 != v9)
      {
        v16 = *(a1 + 40);
        v17 = apr_palloc(*v16, 8uLL);
        *v17 = *(&v19 + 1);
        v18 = apr_palloc(**(a1 + 40), 8uLL);
        *v18 = v9;
        apr_hash_set(v16, v17, 8, v18);
LABEL_504:
        v7 = *(&v19 + 1);
        goto LABEL_505;
      }

      v12 = (v5 + 88);
LABEL_514:
      atomic_fetch_add(v12, 1uLL);
      return;
    }

    if (v6 <= -12544)
    {
      if (v6 == -14801)
      {
        v19 = 0uLL;
        *&v20 = 0;
        DYTraceDecode_MTLTexture_newTextureViewWithDescriptor(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      else
      {
        if (v6 != -12544)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLCommandQueue_continueCommandBuffer_retainReferences(&v19, a2, (*a2 - 36), (a1 + 64));
      }

      goto LABEL_503;
    }

    if (v6 == -12543)
    {
      v19 = 0u;
      v20 = 0u;
      DYTraceDecode_MTLIOCommandQueue_continueCommandBuffer_retainReferences(&v19, a2, (*a2 - 36), (a1 + 64));
      goto LABEL_503;
    }

    if (v6 != -10239)
    {
      return;
    }

    v19 = 0uLL;
    DYTraceDecode_MTLDevice_deviceReference(&v19, a2, (*a2 - 36), (a1 + 64));
    goto LABEL_384;
  }

  if (v6 <= -14837)
  {
    if (v6 == -14867)
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (a1 + 64));
      goto LABEL_503;
    }

    if (v6 != -14855)
    {
      if (v6 != -14840)
      {
        return;
      }

      *&v21 = 0;
      v19 = 0u;
      v20 = 0u;
      DYTraceDecode_MTLBuffer_newTensorWithDescriptor_offset_error(&v19, a2, (*a2 - 36), (a1 + 64));
      goto LABEL_503;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLTextureViewPool_copyResourceViewsFromPool_sourceRange_destinationIndex(&v19, a2, (*a2 - 36), (a1 + 64));
    if (*(a1 + 68))
    {
      return;
    }

LABEL_408:
    v7 = v19;
    goto LABEL_505;
  }

  if (v6 <= -14835)
  {
    if (v6 == -14836)
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (a1 + 64));
    }

    else
    {
      v19 = 0uLL;
      *&v20 = 0;
      DYTraceDecode_MTLDevice_functionHandleWithFunction(&v19, a2, (*a2 - 36), (a1 + 64));
    }

    goto LABEL_503;
  }

  if (v6 == -14834)
  {
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLDevice_newMTL4CommandQueueWithDescriptor_error(&v19, a2, (*a2 - 36), (a1 + 64));
    goto LABEL_503;
  }

  if (v6 == -14802)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex(&v19, a2, (*a2 - 36), (a1 + 64));
    if (!*(a1 + 68))
    {
      v7 = *(&v22 + 1);
      goto LABEL_505;
    }
  }
}

void CreateStream(uint64_t a1, unint64_t a2, int a3)
{
  v9 = a2;
  if (a2)
  {
    v6 = GTTraceContext_openStream(*(a1 + 16), a2);
    v7 = apr_palloc(**(a1 + 24), 0x30uLL);
    *v7 = a2;
    v7[1] = v6;
    v7[2] = -1;
    v7[3] = -1;
    *(v7 + 10) = a3;
    v8 = *find_entry(*(a1 + 24), &v9, 8uLL, 0);
    if (v8)
    {
      v8 = *(v8 + 32);
    }

    v7[4] = v8;
    apr_hash_set(*(a1 + 24), v7, 8, v7);
  }
}

void CreateEncoderStream(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v14 = a2;
  OpenStream = GetOpenStream(a1, a3);
  if ((gt_error_assert_add_error((a1 + 112), OpenStream != 0, "commandBufferStream != ((void*)0)") & 1) == 0)
  {
    v8 = *(OpenStream + 24);
    v9 = *(a1 + 16);
    pthread_mutex_lock((v9 + 8));
    RetainFreeNode(v9);
    v11 = v10;
    *v10 = atomic_fetch_add((v9 + 88), 1uLL);
    v10[1] = a2;
    v10[3] = v8;
    atomic_fetch_add((v8 + 40), 1u);
    atomic_store(0, v10 + 7);
    if (*v9 == 1)
    {
      atomic_store(0x20uLL, v10 + 7);
    }

    apr_hash_set(*(v9 + 96), v10, 8, v10);
    pthread_mutex_unlock((v9 + 8));
    v12 = apr_palloc(**(a1 + 24), 0x30uLL);
    *v12 = a2;
    v12[1] = v11;
    v12[2] = -1;
    v12[3] = -1;
    *(v12 + 10) = a4;
    v13 = *find_entry(*(a1 + 24), &v14, 8uLL, 0);
    if (v13)
    {
      v13 = *(v13 + 32);
    }

    v12[4] = v13;
    apr_hash_set(*(a1 + 24), v12, 8, v12);
  }
}

unint64_t *GTTraceContext_openStream(uint64_t a1, unint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  RetainFreeNode(a1);
  v5 = v4;
  RetainFreeNode(a1);
  v5[3] = v6;
  add = atomic_fetch_add((a1 + 88), 1uLL);
  *v5 = add;
  v5[1] = a2;
  v5[2] = 0;
  v8 = v5[3];
  *v8 = *(a1 + 72);
  *(v8 + 32) = add;
  atomic_fetch_add((v8 + 40), 1u);
  atomic_store(0, v5 + 7);
  if (*a1 == 1)
  {
    atomic_store(0x20uLL, v5 + 7);
  }

  apr_hash_set(*(a1 + 96), v5, 8, v5);
  pthread_mutex_unlock((a1 + 8));
  return v5;
}

double RetainFreeNode(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    v2 = apr_palloc(**(a1 + 96), 0x1000uLL);
    v3 = 0;
    v4 = v2 + 8;
    v5 = vdupq_n_s64(0x3FuLL);
    do
    {
      v6 = vorrq_s8(vdupq_n_s64(v3), xmmword_24DA8B910);
      if (vmovn_s64(vcgtq_u64(v5, v6)).u8[0])
      {
        *(v4 - 8) = v4;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3FuLL), v6)).i32[1])
      {
        *v4 = v4 + 8;
      }

      v3 += 2;
      v4 += 16;
    }

    while (v3 != 64);
    v2[504] = 0;
    *(a1 + 104) = v2;
  }

  *(a1 + 104) = *v2;
  result = 0.0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  return result;
}

uint64_t GTTraceFunc_argumentBlobWithMap(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 0x40)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  v7[0] = *a1;
  v7[1] = a2;
  entry = find_entry(a3, v7, 9uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

char *GTTraceFunc_argumentBytesWithPool(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x40)
  {
    return a1 + a2;
  }

  v3 = *(a3 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  while (1)
  {
    v5 = atomic_load((v3 + 4));
    v6 = v5 - 64;
    if (v6 >= 1)
    {
      break;
    }

LABEL_11:
    result = 0;
    v3 = *(v3 + 40);
    if (!v3)
    {
      return result;
    }
  }

  v7 = v3 + 64;
  while (v4 != *v7 || *(v7 + 8) != a2)
  {
    v8 = (*(v7 + 12) + 23) & 0xFFFFFFF8;
    v7 += v8;
    v9 = __OFSUB__(v6, v8);
    v6 -= v8;
    if ((v6 < 0) ^ v9 | (v6 == 0))
    {
      goto LABEL_11;
    }
  }

  return (v7 + 16);
}

char *GTTraceFunc_argumentBytesWithMap(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x40)
  {
    return a1 + a2;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = *a1;
  v8[1] = a2;
  entry = find_entry(a3, v8, 9uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v6 = *(*entry + 32);
  if (v6)
  {
    return (v6 + 16);
  }

  else
  {
    return 0;
  }
}

char *GTTraceFunc_targetContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2);
  if (v2 == -15913 || v2 == -15914)
  {
    result += 16;
  }

  else if (!result)
  {
    return result;
  }

  return *result;
}

char *GTTraceFunc_getFuncStreamRef(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (GTFenum_getConstructorType(v4) || GTFenum_isBeginCommandBuffer(v4))
  {
    return *(GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2) + 1);
  }

  return GTTraceFunc_targetContext(a1, a2);
}

uint64_t GTTraceMemoryMap_argumentBlobAtIndex(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0x40)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  v7[0] = a3;
  v7[1] = a1;
  entry = find_entry(a2, v7, 9uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

void GTTraceContext_pushEncoderWithStream(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v4 = (a1 + 32);
  add = atomic_fetch_add((a2 + 80), 1uLL);
  *a1 = a2;
  *(a1 + 24) = add;
  v6 = s();
  v8 = *v6;
  *v6 = add;
  *v4 = v8;
  v9 = *(v6 + 8);
  *(a1 + 40) = v9;
  *(a1 + 41) = 16400;
  *(a1 + 43) = 0;
  *(a1 + 47) = 0;
  if (!v7)
  {
    v7 = *(a2 + 120);
  }

  *(a1 + 8) = v7;
  PushFunc(v7);
  *(a1 + 16) = v10;
  *v10 = add;
  *(v10 + 11) = 0;
  *(v10 + 8) = 0;
  *(v10 + 15) = v9;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 16) = 0u;
  if (v8)
  {
    v11 = GTTraceEncoder_storeBytes(a1, v4, 8uLL);
    v10 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 12) = v11;
  v12 = atomic_load((a2 + 128));
  if (v12)
  {
    v13 = *a1;
    v14 = *(a1 + 24);
    v15 = GTTraceContext_backtrace_callstack();
    v16 = backtrace(v15, 512);
    if (v16 >= 1)
    {
      v17 = v16 - 2;
      v18 = 8 * v17;
      v35 = 0;
      pthread_threadid_np(0, &v35);
      v19 = v13 + 24 * (v35 & 0xF);
      v20 = (v19 + 136);
      v21 = atomic_fetch_add((v19 + 152), 1u);
      do
      {
        v22 = atomic_load(v20 + 5);
      }

      while (v22 != v21);
      v23 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
      v24 = *v20;
      if (!*v20)
      {
        goto LABEL_16;
      }

      v25 = atomic_load(v24 + 1);
      while (1)
      {
        v26 = v25;
        v27 = v23 + v25;
        v28 = *v24;
        if (v27 > v28)
        {
          break;
        }

        v25 = v26;
        atomic_compare_exchange_strong(v24 + 1, &v25, v27);
        if (v25 == v26)
        {
          v28 = *v24;
          break;
        }
      }

      v29 = (v24 + v26);
      if (v27 > v28)
      {
LABEL_16:
        v30 = GTTraceStoreAllocNode(*(v13 + 72), 0x3FC0uLL, 3, 0);
        *(v30 + 5) = *v20;
        *v20 = v30;
        if (!*(v20 + 1))
        {
          *(v20 + 1) = v30;
        }

        v31 = atomic_load(v30 + 1);
        while (1)
        {
          v32 = v31;
          v33 = v23 + v31;
          v34 = *v30;
          if (v33 > v34)
          {
            break;
          }

          v31 = v32;
          atomic_compare_exchange_strong(v30 + 1, &v31, v33);
          if (v31 == v32)
          {
            v34 = *v30;
            break;
          }
        }

        v29 = (v30 + v32);
        if (v33 > v34)
        {
          v29 = 0;
        }
      }

      atomic_store(v21 + 1, v20 + 5);
      *v29 = v14;
      v29[1] = v17 | 0x800000000;
      memcpy(v29 + 2, v15 + 2, v18);
    }
  }
}

double PushFunc(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 48), 1u);
  do
  {
    v3 = atomic_load((a1 + 52));
  }

  while (v3 != add);
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = atomic_load(v4 + 1);
  while (1)
  {
    v6 = v5;
    v7 = v5 + 64;
    v8 = *v4;
    if (v7 > v8)
    {
      break;
    }

    v5 = v6;
    atomic_compare_exchange_strong(v4 + 1, &v5, v7);
    if (v5 == v6)
    {
      v8 = *v4;
      break;
    }
  }

  if (v7 <= v8)
  {
    v19 = (v4 + v6);
    v9 = add + 1;
  }

  else
  {
LABEL_9:
    v9 = add + 1;
    if (((add + 1) << 7) >= 0x3FC0)
    {
      v10 = 16320;
    }

    else
    {
      v10 = v9 << 7;
    }

    v11 = GTTraceStoreAllocNode(**(a1 + 24), v10, 1, *a1);
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = (v12 + 40);
    }

    else
    {
      v13 = (a1 + 32);
    }

    *v13 = v11;
    *(a1 + 40) = v11;
    *(v11 + 5) = 0;
    v14 = atomic_load(v11 + 1);
    while (1)
    {
      v15 = v14;
      v16 = v14 + 64;
      v17 = *v11;
      if (v16 > v17)
      {
        break;
      }

      v14 = v15;
      atomic_compare_exchange_strong(v11 + 1, &v14, v16);
      if (v14 == v15)
      {
        v17 = *v11;
        break;
      }
    }

    v18 = (v11 + v15);
    if (v16 <= v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  result = 0.0;
  v19[2] = 0u;
  v19[3] = 0u;
  *v19 = 0u;
  v19[1] = 0u;
  atomic_store(v9, (a1 + 52));
  return result;
}

uint64_t GTTraceEncoder_storeBytes(uint64_t a1, void *__src, size_t __n)
{
  v3 = 0;
  if (__src)
  {
    v4 = __n;
    if (__n)
    {
      v3 = *(a1 + 41);
      if (v3 + __n > 0x40)
      {
        v7 = *(*(a1 + 8) + 24);
        v3 = *(a1 + 42);
        *(a1 + 42) = v3 + 1;
        if (__n << 32)
        {
          v8 = __n;
          Bytes = GTTraceMemPool_allocateBytes(v7, *(a1 + 24), (__n << 32) | v3);
          memcpy(Bytes + 16, __src, v8);
        }
      }

      else
      {
        memcpy((*(a1 + 16) + v3), __src, __n);
        *(a1 + 41) += (v4 + 7) & 0xF8;
      }
    }
  }

  return v3;
}

char *GTTraceEncoder_allocateArguments(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(v3 + 8) = a2;
  v4 = *(a1 + 41);
  if ((v4 + a3) > 0x40)
  {
    v6 = *(*(a1 + 8) + 24);
    v7 = *(a1 + 42);
    *(a1 + 42) = v7 + 1;
    v5 = GTTraceMemPool_allocateBytes(v6, *(a1 + 24), v7 | (a3 << 32)) + 16;
    LOBYTE(v4) = v7;
  }

  else
  {
    v5 = (v3 + v4);
    *(a1 + 41) = v4 + a3;
  }

  *(v3 + 13) = v4;
  return v5;
}

uint64_t GTTraceEncoder_storeBlob(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = 0;
  if (a2)
  {
    if (a3)
    {
      v4 = *(*(a1 + 8) + 24);
      v3 = *(a1 + 42);
      *(a1 + 42) = v3 + 1;
      if (a3 << 32)
      {
        v6 = a3;
        Bytes = GTTraceMemPool_allocateBytes(v4, *(a1 + 24), (a3 << 32) | v3);
        memcpy(Bytes + 16, a2, v6);
      }
    }
  }

  return v3;
}

uint64_t GTTraceStream_lastFunc(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = atomic_load((v1 + 4));
    if (v2 < 0x80)
    {
LABEL_7:
      v1 = *(a1 + 32);
      if (v1)
      {
        v6 = 0;
        while (1)
        {
          v7 = atomic_load((v1 + 4));
          v8 = v6 + (v7 >> 6) - 1;
          if (v8 > 0)
          {
            break;
          }

          v1 = *(v1 + 40);
          v6 = v8;
          if (!v1)
          {
            return v1;
          }
        }

        v9 = v6;
        v10 = (0xFFFFFFFF00000001 * v6) >> 32;
        if ((*(v1 + (v10 << 6) + 79) & 8) != 0)
        {
          do
          {
            v11 = v1;
            v12 = v10;
            v13 = atomic_load((v1 + 4));
            v14 = (HIDWORD(v9) + 1);
            if (v14 == v9 + (v13 >> 6) - 1)
            {
              v1 = *(v11 + 40);
              if (!v1)
              {
                return v11 + (v12 << 6) + 64;
              }

              v9 = (HIDWORD(v9) + 1);
            }

            else
            {
              v9 = v9;
              v1 = v11;
            }

            v9 |= v14 << 32;
            v10 = (0xFFFFFFFF00000001 * v9) >> 32;
          }

          while ((*(v1 + (v10 << 6) + 79) & 8) != 0);
          return v11 + (v12 << 6) + 64;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v3 = (v2 >> 6) - 2;
      v4 = v1 + 64;
      while (1)
      {
        v1 = v4 + (v3 << 6);
        if ((*(v1 + 15) & 8) != 0)
        {
          break;
        }

        v5 = __OFSUB__(v3--, 1);
        if (v3 < 0 != v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return v1;
}

uint64_t GTMTLGPUAddressResource_compare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void *GTMTLGPUAddressResource_resourceForGPUAddress(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  do
  {
    v4 = &v3[4 * (a2 >> 1)];
    v6 = *v4;
    v5 = v4 + 4;
    v7 = v6 > a3;
    if (v6 <= a3)
    {
      a2 += ~(a2 >> 1);
    }

    else
    {
      a2 >>= 1;
    }

    if (!v7)
    {
      v3 = v5;
    }
  }

  while (a2);
  if (v3 == a1)
  {
    return 0;
  }

  result = v3 - 4;
  v9 = *(v3 - 4);
  if (!v9 || *(v3 - 3) + v9 <= a3)
  {
    return 0;
  }

  return result;
}

uint64_t GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  entry = find_entry(a1, &v5, 8uLL, 0);
  if (*entry && (v3 = *(*entry + 32)) != 0)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0;
  }
}

void GTMTLIndirectResources_optimizeByKey(uint64_t *a1, uint64_t *a2, int a3, apr_pool_t *pool)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = apr_hash_make(pool);
  a1[1] = v7;
  v8 = apr_hash_make(pool);
  a1[2] = v8;
  v9 = apr_hash_make(pool);
  a1[3] = v9;
  v10 = apr_hash_make(pool);
  a1[4] = v10;
  v11 = apr_hash_make(pool);
  a1[5] = v11;
  v12 = apr_hash_make(pool);
  a1[6] = v12;
  v13 = apr_hash_make(pool);
  a1[7] = v13;
  v62 = apr_hash_make(pool);
  a1[8] = v62;
  v63 = apr_hash_make(pool);
  a1[9] = v63;
  ht = apr_hash_make(pool);
  a1[10] = ht;
  v65 = apr_hash_make(pool);
  a1[11] = v65;
  a1[12] = 0;
  qsort(*(v6 + 24), *(v6 + 12), *(v6 + 8), GTMTLGPUAddressResource_compare);
  v14 = a2[2];
  v15 = *(v14 + 12);
  if (v15 >= 1)
  {
    v16 = *(v14 + 24);
    v17 = &v16[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v7, v17, 8, v16);
      v17 += 32;
      v16 += 32;
      --v15;
    }

    while (v15);
  }

  v18 = a2[1];
  v19 = *(v18 + 12);
  if (v19 >= 1)
  {
    v20 = *(v18 + 24);
    v21 = &v20[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v8, v21, 8, v20);
      v21 += 32;
      v20 += 32;
      --v19;
    }

    while (v19);
  }

  v22 = a2[10];
  v23 = *(v22 + 12);
  if (v23 >= 1)
  {
    v24 = *(v22 + 24);
    v25 = &v24[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v9, v25, 8, v24);
      v25 += 32;
      v24 += 32;
      --v23;
    }

    while (v23);
  }

  v26 = a2[3];
  v27 = *(v26 + 12);
  if (v27 >= 1)
  {
    v28 = *(v26 + 24);
    v29 = &v28[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v10, v29, 8, v28);
      v29 += 32;
      v28 += 32;
      --v27;
    }

    while (v27);
  }

  v30 = a2[4];
  v31 = *(v30 + 12);
  if (v31 >= 1)
  {
    v32 = *(v30 + 24);
    v33 = &v32[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v11, v33, 8, v32);
      v33 += 32;
      v32 += 32;
      --v31;
    }

    while (v31);
  }

  v34 = a2[5];
  v35 = *(v34 + 12);
  if (v35 >= 1)
  {
    v36 = *(v34 + 24);
    v37 = &v36[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v12, v37, 8, v36);
      v37 += 32;
      v36 += 32;
      --v35;
    }

    while (v35);
  }

  v38 = a2[6];
  v39 = *(v38 + 12);
  if (v39 >= 1)
  {
    v40 = *(v38 + 24);
    v41 = &v40[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v13, v41, 8, v40);
      v41 += 32;
      v40 += 32;
      --v39;
    }

    while (v39);
  }

  v42 = a2[7];
  v43 = *(v42 + 12);
  if (v43 >= 1)
  {
    v44 = *(v42 + 24);
    v45 = &v44[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v62, v45, 8, v44);
      v45 += 32;
      v44 += 32;
      --v43;
    }

    while (v43);
  }

  v46 = a2[8];
  v47 = *(v46 + 12);
  if (v47 >= 1)
  {
    v48 = *(v46 + 24);
    v49 = &v48[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v63, v49, 8, v48);
      v49 += 32;
      v48 += 32;
      --v47;
    }

    while (v47);
  }

  v50 = a2[9];
  v51 = *(v50 + 12);
  if (v51 >= 1)
  {
    v52 = *(v50 + 24);
    v53 = &v52[16 * (a3 == 1)];
    do
    {
      apr_hash_set(ht, v53, 8, v52);
      v53 += 32;
      v52 += 32;
      --v51;
    }

    while (v51);
  }

  v54 = a2[11];
  v55 = *(v54 + 24);
  v56 = *(v54 + 12);
  if (a3 == 1)
  {
    if (v56 >= 1)
    {
      v57 = v55 + 16;
      do
      {
        v58 = *find_entry(v65, v57, 8uLL, 0);
        if (!v58 || (v59 = *(v58 + 32)) == 0)
        {
          v59 = apr_array_make(*v65, 4, 24);
          apr_hash_set(v65, v57, 8, v59);
        }

        v60 = apr_array_push(v59);
        v61 = *v57;
        *v60 = *(v57 - 1);
        v60[2] = v61;
        v57 += 24;
        --v56;
      }

      while (v56);
    }
  }

  else if (v56 >= 1)
  {
    do
    {
      apr_hash_set(v65, v55 + 8, 8, v55);
      v55 += 24;
      --v56;
    }

    while (v56);
  }
}