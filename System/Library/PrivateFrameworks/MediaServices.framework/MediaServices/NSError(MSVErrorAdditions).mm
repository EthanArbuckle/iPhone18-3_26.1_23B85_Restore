@interface NSError(MSVErrorAdditions)
+ (id)_msv_errorWithDomain:()MSVErrorAdditions code:underlyingError:underlyingErrors:userInfo:debugDescriptionFormat:arguments:;
+ (id)msv_errorWithDomain:()MSVErrorAdditions code:debugDescription:;
+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingError:debugDescription:;
+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingError:userInfo:debugDescription:;
+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingErrors:debugDescription:;
+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingErrors:userInfo:debugDescription:;
+ (id)msv_errorWithDomain:()MSVErrorAdditions code:userInfo:debugDescription:;
- (__CFString)msv_codeDescription;
- (id)msv_analyticSignature;
- (id)msv_description;
- (id)msv_errorByRemovingUnsafeUserInfo;
- (id)msv_errorByUnwrappingDomain:()MSVErrorAdditions;
- (id)msv_errorByUnwrappingDomain:()MSVErrorAdditions code:;
- (id)msv_errorByWrappingWithDomain:()MSVErrorAdditions code:debugDescription:;
- (id)msv_errorByWrappingWithDomain:()MSVErrorAdditions code:userInfo:debugDescription:;
- (id)msv_firstValueForUserInfoKey:()MSVErrorAdditions;
- (id)msv_signature;
- (id)msv_underlyingError;
@end

@implementation NSError(MSVErrorAdditions)

- (id)msv_signature
{
  v155 = *MEMORY[0x1E69E9840];
  v146 = 0;
  memset(v145, 0, sizeof(v145));
  v141 = xmmword_1AC881C10;
  v142.i64[0] = 0x85EBCA7724234428;
  v142.i64[1] = 0x61C8864F00000000;
  v4 = &v143;
  v143 = 0;
  v144 = 0;
  LODWORD(v145[0]) = 0;
  v5 = [a1 domain];
  v6 = [v5 UTF8String];
  v7 = [v5 length];
  if (v6)
  {
    v8 = v7;
    DWORD2(v141) = v7;
    HIDWORD(v141) = v7 > 0xF;
    if (v7 <= 0xF)
    {
      memcpy(&v143, v6, v7);
      v9 = LODWORD(v145[0]) + v8;
LABEL_10:
      LODWORD(v145[0]) = v9;
      goto LABEL_11;
    }

    v10 = &v6[v7];
    v11 = &v6[v7 - 16];
    if (v6 <= v11)
    {
      v12 = 0;
      v13 = 1640531535;
      v14 = 606290984;
      v15 = -2048144777;
      do
      {
        HIDWORD(v16) = v14 - 2048144777 * *v6;
        LODWORD(v16) = HIDWORD(v16);
        v14 = -1640531535 * (v16 >> 19);
        HIDWORD(v16) = v15 - 2048144777 * *(v6 + 1);
        LODWORD(v16) = HIDWORD(v16);
        v15 = -1640531535 * (v16 >> 19);
        HIDWORD(v16) = v12 - 2048144777 * *(v6 + 2);
        LODWORD(v16) = HIDWORD(v16);
        v12 = -1640531535 * (v16 >> 19);
        HIDWORD(v16) = v13 - 2048144777 * *(v6 + 3);
        LODWORD(v16) = HIDWORD(v16);
        v13 = -1640531535 * (v16 >> 19);
        v6 += 16;
      }

      while (v6 <= v11);
      v142.i64[0] = __PAIR64__(v15, v14);
      v142.i64[1] = __PAIR64__(v13, v12);
    }

    if (v6 < v10)
    {
      v9 = v10 - v6;
      __memcpy_chk();
      goto LABEL_10;
    }
  }

LABEL_11:

  memset(&v150[8], 0, 64);
  *v150 = v141;
  if (v141 <= 3000)
  {
    if (v141 <= 1999)
    {
      if (!v141)
      {
        v49 = [MEMORY[0x1E696AAA8] currentHandler];
        v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
        [v49 handleFailureInFunction:v50 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

        goto LABEL_58;
      }

      if (v141 != 1000)
      {
        goto LABEL_58;
      }

      v17 = (*(&v141 + 1) + v142.i64[0]) ^ __ROR8__(v142.i64[0], 51);
      v18 = v142.i64[1] + (v143 ^ v144);
      v19 = __ROR8__(v143 ^ v144, 48);
      v20 = (v18 ^ v19) + __ROR8__(*(&v141 + 1) + v142.i64[0], 32);
      v21 = v20 ^ __ROR8__(v18 ^ v19, 43);
      v22 = v18 + v17;
      v23 = v22 ^ __ROR8__(v17, 47);
      v24 = (v20 ^ v144) + v23;
      v25 = v24 ^ __ROR8__(v23, 51);
      v26 = (__ROR8__(v22, 32) ^ 0xFFLL) + v21;
      v27 = __ROR8__(v21, 48);
      v28 = __ROR8__(v24, 32) + (v26 ^ v27);
      v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
      v30 = v25 + v26;
      v31 = v30 ^ __ROR8__(v25, 47);
      v32 = v31 + v28;
      v33 = v32 ^ __ROR8__(v31, 51);
      v34 = __ROR8__(v30, 32) + v29;
      v35 = __ROR8__(v29, 48);
      v36 = __ROR8__(v32, 32) + (v34 ^ v35);
      v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
      v38 = v33 + v34;
      v39 = v38 ^ __ROR8__(v33, 47);
      v40 = v39 + v36;
      v41 = v40 ^ __ROR8__(v39, 51);
      v42 = __ROR8__(v38, 32) + v37;
      v43 = __ROR8__(v37, 48);
      v44 = __ROR8__(v40, 32) + (v42 ^ v43);
      v45 = v44 ^ __ROR8__(v42 ^ v43, 43);
      v46 = v41 + v42;
      *(&v141 + 1) = v44;
      v142.i64[0] = v46 ^ __ROR8__(v41, 47);
      v142.i64[1] = __ROR8__(v46, 32);
      v143 = v45;
      v47 = v142.i64[0] ^ v44 ^ v142.i64[1] ^ v45;
      goto LABEL_45;
    }

    if (v141 != 2000)
    {
      if (v141 != 3000)
      {
        goto LABEL_58;
      }

      if (HIDWORD(v141))
      {
        v48 = vaddvq_s32(vorrq_s8(vshlq_u32(v142, xmmword_1AC881C30), vshlq_u32(v142, xmmword_1AC881C20)));
      }

      else
      {
        v48 = v142.i32[2] + 374761393;
      }

      v60 = DWORD2(v141) + v48;
      v61 = v145[0] & 0xF;
      if (v61 >= 4)
      {
        do
        {
          v62 = *v4++;
          HIDWORD(v63) = v60 - 1028477379 * v62;
          LODWORD(v63) = HIDWORD(v63);
          v60 = 668265263 * (v63 >> 15);
          v61 -= 4;
        }

        while (v61 > 3);
      }

      for (; v61; --v61)
      {
        v64 = *v4;
        v4 = (v4 + 1);
        HIDWORD(v65) = v60 + 374761393 * v64;
        LODWORD(v65) = HIDWORD(v65);
        v60 = -1640531535 * (v65 >> 21);
      }

      v66 = -1028477379 * ((-2048144777 * (v60 ^ (v60 >> 15))) ^ ((-2048144777 * (v60 ^ (v60 >> 15))) >> 13));
      v67 = v66 ^ HIWORD(v66);
      goto LABEL_57;
    }

    switch(v142.u8[3])
    {
      case 1u:
        v51 = v142.u8[0];
        break;
      case 2u:
        v51 = v142.u16[0];
        break;
      case 3u:
        v51 = v142.u16[0] | (v142.u8[2] << 16);
        break;
      default:
        v68 = DWORD2(v141);
        goto LABEL_56;
    }

    v68 = (461845907 * ((380141568 * v51) | ((-862048943 * v51) >> 17))) ^ DWORD2(v141);
LABEL_56:
    v69 = -2048144789 * (v68 ^ HIDWORD(v141) ^ ((v68 ^ HIDWORD(v141)) >> 16));
    v67 = (-1028477387 * (v69 ^ (v69 >> 13))) ^ ((-1028477387 * (v69 ^ (v69 >> 13))) >> 16);
    DWORD2(v141) = v67;
LABEL_57:
    *&v150[8] = v67;
    goto LABEL_58;
  }

  if (v141 > 4000)
  {
    switch(v141)
    {
      case 0xFA1:
        CC_SHA1_Final(&v150[8], (&v141 + 8));
        break;
      case 0x10A0:
        CC_SHA256_Final(&v150[8], (&v141 + 8));
        break;
      case 0x11A0:
        CC_SHA512_Final(&v150[8], (&v141 + 8));
        break;
    }

    goto LABEL_58;
  }

  if (v141 == 3001)
  {
    v52 = v145;
    if (*(&v141 + 1) < 0x20uLL)
    {
      v53 = v143 + 0x27D4EB2F165667C5;
    }

    else
    {
      v53 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v142.i64[1], 57) + __ROR8__(v142.i64[0], 63) + __ROR8__(v143, 52) + __ROR8__(v144, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v142.i64[0], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v142.i64[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v143, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v144, 33))) - 0x7A1435883D4D519DLL;
    }

    v54 = v53 + *(&v141 + 1);
    v55 = BYTE8(v141) & 0x1F;
    if (v55 >= 8)
    {
      do
      {
        v56 = *v52++;
        v54 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v56, 33)) ^ v54, 37);
        v55 -= 8;
      }

      while (v55 > 7);
    }

    if (v55 >= 4)
    {
      v57 = *v52;
      v52 = (v52 + 4);
      v54 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v57) ^ v54, 41);
      v55 -= 4;
    }

    for (; v55; --v55)
    {
      v58 = *v52;
      v52 = (v52 + 1);
      v54 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v58) ^ v54, 53);
    }

    v59 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v54 ^ (v54 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v54 ^ (v54 >> 33))) >> 29));
    v47 = v59 ^ HIDWORD(v59);
LABEL_45:
    *&v150[8] = v47;
    goto LABEL_58;
  }

  if (v141 == 4000)
  {
    CC_MD5_Final(&v150[8], (&v141 + 8));
  }

LABEL_58:
  v151 = *v150;
  v152[0] = *&v150[16];
  v152[1] = *&v150[32];
  v152[2] = *&v150[48];
  v153 = *&v150[64];
  if (*v150 > 3999)
  {
    if (*v150 > 4255)
    {
      if (*v150 == 4256)
      {
        v111 = &v151 + 8;
        v112 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v113 = v112;
        for (i = 0; i != 64; i += 2)
        {
          v115 = *v111++;
          v116 = &v112[i];
          *v116 = MSVFastHexStringFromBytes_hexCharacters_4916[v115 >> 4];
          v116[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v115 & 0xF];
        }

        v82 = objc_alloc(MEMORY[0x1E696AEC0]);
        v83 = v113;
        v84 = 64;
      }

      else
      {
        if (*v150 != 4512)
        {
          goto LABEL_124;
        }

        v89 = &v151 + 8;
        v90 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v91 = v90;
        for (j = 0; j != 128; j += 2)
        {
          v93 = *v89++;
          v94 = &v90[j];
          *v94 = MSVFastHexStringFromBytes_hexCharacters_4916[v93 >> 4];
          v94[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v93 & 0xF];
        }

        v82 = objc_alloc(MEMORY[0x1E696AEC0]);
        v83 = v91;
        v84 = 128;
      }
    }

    else if (*v150 == 4000)
    {
      v101 = &v151 + 8;
      v102 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v103 = v102;
      for (k = 0; k != 32; k += 2)
      {
        v105 = *v101++;
        v106 = &v102[k];
        *v106 = MSVFastHexStringFromBytes_hexCharacters_4916[v105 >> 4];
        v106[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v105 & 0xF];
      }

      v82 = objc_alloc(MEMORY[0x1E696AEC0]);
      v83 = v103;
      v84 = 32;
    }

    else
    {
      if (*v150 != 4001)
      {
        goto LABEL_124;
      }

      v76 = &v151 + 8;
      v77 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v78 = v77;
      for (m = 0; m != 40; m += 2)
      {
        v80 = *v76++;
        v81 = &v77[m];
        *v81 = MSVFastHexStringFromBytes_hexCharacters_4916[v80 >> 4];
        v81[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v80 & 0xF];
      }

      v82 = objc_alloc(MEMORY[0x1E696AEC0]);
      v83 = v78;
      v84 = 40;
    }

LABEL_104:
    v100 = [v82 initWithBytesNoCopy:v83 length:v84 encoding:4 freeWhenDone:1];
    goto LABEL_105;
  }

  if (*v150 > 2999)
  {
    if (*v150 == 3000)
    {
      LODWORD(v154[0]) = bswap32(DWORD2(v151));
      v107 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v108 = 0;
      v109 = v107 + 1;
      do
      {
        v110 = *(v154 + v108);
        *(v109 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v110 >> 4];
        *v109 = MSVFastHexStringFromBytes_hexCharacters_4916[v110 & 0xF];
        v109 += 2;
        ++v108;
      }

      while (v108 != 4);
      v82 = objc_alloc(MEMORY[0x1E696AEC0]);
      v83 = v107;
      v84 = 8;
    }

    else
    {
      if (*v150 != 3001)
      {
        goto LABEL_124;
      }

      v154[0] = bswap64(*(&v151 + 1));
      v85 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v86 = 0;
      v87 = v85 + 1;
      do
      {
        v88 = *(v154 + v86);
        *(v87 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v88 >> 4];
        *v87 = MSVFastHexStringFromBytes_hexCharacters_4916[v88 & 0xF];
        v87 += 2;
        ++v86;
      }

      while (v86 != 8);
      v82 = objc_alloc(MEMORY[0x1E696AEC0]);
      v83 = v85;
      v84 = 16;
    }

    goto LABEL_104;
  }

  if (*v150 == 1000)
  {
    v95 = *(&v151 + 1);
    if (*(&v151 + 1))
    {
      v96 = &v155 + 1;
      quot = *(&v151 + 1);
      do
      {
        v98 = lldiv(quot, 10);
        quot = v98.quot;
        if (v98.rem >= 0)
        {
          LOBYTE(v99) = v98.rem;
        }

        else
        {
          v99 = -v98.rem;
        }

        *(v96 - 2) = v99 + 48;
        v75 = (v96 - 2);
        --v96;
      }

      while (v98.quot);
      if (v95 < 0)
      {
        *(v96 - 2) = 45;
        v75 = (v96 - 2);
      }

      v74 = (&v155 - v75);
      goto LABEL_94;
    }

    goto LABEL_125;
  }

  if (*v150 != 2000)
  {
LABEL_124:
    v138 = [MEMORY[0x1E696AAA8] currentHandler];
    v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v138 handleFailureInFunction:v139 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v117 = &stru_1F214F018;
    goto LABEL_106;
  }

  v70 = DWORD2(v151);
  if (DWORD2(v151))
  {
    v71 = &v155;
    do
    {
      v72 = ldiv(v70, 10);
      v70 = v72.quot;
      if (v72.rem >= 0)
      {
        LOBYTE(v73) = v72.rem;
      }

      else
      {
        v73 = -v72.rem;
      }

      *(v71 - 1) = v73 + 48;
      v71 = (v71 - 1);
    }

    while (v72.quot);
    v74 = (&v155 - v71);
    v75 = v71;
LABEL_94:
    v100 = CFStringCreateWithBytes(0, v75, v74, 0x8000100u, 0);
LABEL_105:
    v117 = v100;
    goto LABEL_106;
  }

LABEL_125:
  v117 = @"0";
LABEL_106:
  v149[0] = v117;
  v118 = [a1 code];
  if (v118)
  {
    v119 = v118;
    v120 = v152 + 9;
    do
    {
      v121 = ldiv(v118, 10);
      v118 = v121.quot;
      if (v121.rem >= 0)
      {
        LOBYTE(v122) = v121.rem;
      }

      else
      {
        v122 = -v121.rem;
      }

      *(v120 - 2) = v122 + 48;
      v123 = (v120 - 2);
      --v120;
    }

    while (v121.quot);
    if (v119 < 0)
    {
      *(v120 - 2) = 45;
      v123 = (v120 - 2);
    }

    v124 = CFStringCreateWithBytes(0, v123, v152 + 8 - v123, 0x8000100u, 0);
  }

  else
  {
    v124 = @"0";
  }

  v149[1] = v124;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:2];
  v126 = [v125 componentsJoinedByString:@":"];

  v127 = [a1 underlyingErrors];
  v140[0] = MEMORY[0x1E69E9820];
  v140[1] = 3221225472;
  v140[2] = __43__NSError_MSVErrorAdditions__msv_signature__block_invoke;
  v140[3] = &unk_1E7981DD0;
  v140[4] = a1;
  v140[5] = a2;
  v128 = [v127 msv_map:v140];

  if ([v128 count] == 1)
  {
    v148[0] = v126;
    v129 = [v128 firstObject];
    v148[1] = v129;
    v130 = v148;
  }

  else
  {
    if ([v128 count] < 2)
    {
      goto LABEL_121;
    }

    v131 = MEMORY[0x1E696AEC0];
    v132 = [v128 componentsJoinedByString:{@", "}];
    v129 = [v131 stringWithFormat:@"[%@]", v132];

    v147[0] = v126;
    v147[1] = v129;
    v130 = v147;
  }

  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
  v134 = [v133 componentsJoinedByString:@"/"];

  v126 = v134;
LABEL_121:
  v135 = v126;

  v136 = *MEMORY[0x1E69E9840];

  return v135;
}

- (id)msv_analyticSignature
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x1E696A750];
    v15 = v18;
    v16 = *MEMORY[0x1E696AA08];
    while (1)
    {
      v6 = [v4 domain];
      [v2 appendFormat:@"%@-%lld", v6, objc_msgSend(v4, "code"), v15];

      v7 = [v4 userInfo];
      v8 = [v7 objectForKeyedSubscript:v5];

      if ((_NSIsNSArray() & 1) == 0)
      {

        v8 = 0;
      }

      if ([v8 count] >= 2)
      {
        break;
      }

      v9 = [v8 firstObject];
      v10 = v9;
      if (v9)
      {
        v11 = v4;
        v4 = v9;
      }

      else
      {
        v11 = [v4 userInfo];
        v12 = [v11 objectForKeyedSubscript:v16];

        v4 = v12;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      [v2 appendString:@">"];

      if (!v4)
      {
        goto LABEL_14;
      }
    }

    [v2 appendString:@"["];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18[0] = __51__NSError_MSVErrorAdditions__msv_analyticSignature__block_invoke;
    v18[1] = &unk_1E7981DA8;
    v13 = v2;
    v19 = v13;
    v8 = v8;
    v20 = v8;
    [v8 enumerateObjectsUsingBlock:v17];
    [v13 appendString:@"]"];

    v4 = v19;
LABEL_13:
  }

LABEL_14:

  return v2;
}

- (id)msv_underlyingError
{
  v1 = [a1 underlyingErrors];
  v2 = [v1 firstObject];

  return v2;
}

- (id)msv_description
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = [a1 userInfo];
  v4 = *MEMORY[0x1E696A278];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 localizedDescription];
  }

  v8 = v7;

  v9 = [a1 domain];
  v10 = [a1 msv_codeDescription];
  [v2 appendFormat:@"<%@.%@ %@ {\n", v9, v10, v8];

  v11 = [a1 userInfo];
  v12 = [v11 mutableCopy];

  [v12 setObject:0 forKeyedSubscript:v4];
  [v12 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A578]];
  [v12 setObject:0 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  [v12 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A750]];
  v13 = [v12 count];
  if (v13)
  {
    v14 = [v12 msv_compactDescription];
    [v2 appendFormat:@"    userInfo: %@;\n", v14];
  }

  v15 = [a1 underlyingErrors];
  v16 = [v15 count];

  if (v16)
  {
    v30 = v16;
    v31 = v13;
    v32 = v12;
    v33 = v8;
    [v2 appendString:@"    underlyingErrors: ["];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [a1 underlyingErrors];
    v17 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [*(*(&v39 + 1) + 8 * i) msv_description];
          v22 = [v21 componentsSeparatedByString:@"\n"];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v36;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v36 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [v2 appendFormat:@"\n        %@", *(*(&v35 + 1) + 8 * j)];
              }

              v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v24);
          }

          [v2 appendString:{@", "}];
        }

        v18 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v18);
    }

    [v2 appendString:@"\n    ];\n"];
    v12 = v32;
    v8 = v33;
    v16 = v30;
    v13 = v31;
  }

  [v2 appendString:@"}>"];
  if (!(v13 | v16))
  {
    [v2 replaceOccurrencesOfString:@"\n" withString:&stru_1F214F018 options:0 range:{0, objc_msgSend(v2, "length")}];
  }

  v27 = [v2 copy];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (__CFString)msv_codeDescription
{
  v18 = *MEMORY[0x1E69E9840];
  quot = [a1 code];
  if (quot)
  {
    v3 = quot;
    v4 = &v18 + 1;
    do
    {
      v5 = ldiv(quot, 10);
      quot = v5.quot;
      if (v5.rem >= 0)
      {
        LOBYTE(v6) = v5.rem;
      }

      else
      {
        v6 = -v5.rem;
      }

      *(v4 - 2) = v6 + 48;
      v7 = (v4 - 2);
      --v4;
    }

    while (v5.quot);
    if (v3 < 0)
    {
      *(v4 - 2) = 45;
      v7 = (v4 - 2);
    }

    v8 = CFStringCreateWithBytes(0, v7, &v18 - v7, 0x8000100u, 0);
  }

  else
  {
    v8 = @"0";
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [a1 domain];
  v11 = [v9 stringWithFormat:@"NSStringFrom%@Code", v10];

  v12 = dlsym(0xFFFFFFFFFFFFFFFELL, [v11 UTF8String]);
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = v12([a1 code]);
    v15 = [v13 stringWithFormat:@"%@ (%@)", v14, v8];

    v8 = v15;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)msv_firstValueForUserInfoKey:()MSVErrorAdditions
{
  v4 = a3;
  v5 = [a1 userInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [a1 underlyingErrors];
    v9 = [v8 mutableCopy];

    v10 = [v9 firstObject];
    if (v10)
    {
      v11 = v10;
      while (1)
      {
        v12 = [v11 userInfo];
        v7 = [v12 objectForKeyedSubscript:v4];

        if (v7)
        {
          break;
        }

        v13 = [v9 msv_removeFirstObject];
        v14 = [v11 underlyingErrors];
        [v9 addObjectsFromArray:v14];

        v7 = [v9 firstObject];

        v11 = v7;
        if (!v7)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_10:
  }

  return v7;
}

- (id)msv_errorByUnwrappingDomain:()MSVErrorAdditions code:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([a1 code] != a4)
  {
    goto LABEL_4;
  }

  v7 = [a1 domain];
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_15;
  }

  v9 = [v7 isEqual:v6];

  if (v9)
  {
LABEL_15:
    v16 = a1;
    goto LABEL_16;
  }

LABEL_4:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [a1 underlyingErrors];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) msv_errorByUnwrappingDomain:v6 code:a4];
        if (v15)
        {
          v16 = v15;

          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_16:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)msv_errorByUnwrappingDomain:()MSVErrorAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 domain];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_13;
  }

  v7 = [v5 isEqual:v4];

  if (v7)
  {
LABEL_13:
    v14 = a1;
    goto LABEL_15;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a1 underlyingErrors];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) msv_errorByUnwrappingDomain:v4];
        if (v13)
        {
          v14 = v13;

          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)msv_errorByWrappingWithDomain:()MSVErrorAdditions code:userInfo:debugDescription:
{
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [objc_opt_class() _msv_errorWithDomain:v15 code:a4 underlyingError:a1 underlyingErrors:0 userInfo:v14 debugDescriptionFormat:v13 arguments:&a9];

  return v16;
}

- (id)msv_errorByWrappingWithDomain:()MSVErrorAdditions code:debugDescription:
{
  v12 = a5;
  v13 = a3;
  v14 = [objc_opt_class() _msv_errorWithDomain:v13 code:a4 underlyingError:a1 underlyingErrors:0 userInfo:0 debugDescriptionFormat:v12 arguments:&a9];

  return v14;
}

- (id)msv_errorByRemovingUnsafeUserInfo
{
  v2 = [a1 userInfo];
  if ([v2 count])
  {
    v3 = [v2 msv_filter:&__block_literal_global_2242];
    v4 = [v3 mutableCopy];

    v5 = *MEMORY[0x1E696AA08];
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 msv_errorByRemovingUnsafeUserInfo];
    [v4 setObject:v7 forKeyedSubscript:v5];

    v8 = *MEMORY[0x1E696A750];
    v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A750]];
    v10 = [v9 msv_map:&__block_literal_global_5];
    [v4 setObject:v10 forKeyedSubscript:v8];

    v11 = [v4 msv_compactMapValues:&__block_literal_global_8];
    if (v2 == v11 || [v2 isEqual:v11])
    {
      v12 = a1;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = [a1 domain];
      v12 = [v13 errorWithDomain:v14 code:objc_msgSend(a1 userInfo:{"code"), v11}];
    }
  }

  else
  {
    v12 = a1;
  }

  return v12;
}

+ (id)_msv_errorWithDomain:()MSVErrorAdditions code:underlyingError:underlyingErrors:userInfo:debugDescriptionFormat:arguments:
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [a7 mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  }

  v21 = v20;

  if (v17)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v17 arguments:a9];
    [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  if (v15)
  {
    [v21 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  if ([v16 count])
  {
    v23 = [v16 copy];
    [v21 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A750]];
  }

  v24 = [MEMORY[0x1E696ABC0] errorWithDomain:v14 code:a4 userInfo:v21];

  return v24;
}

+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingErrors:userInfo:debugDescription:
{
  v9 = [a1 _msv_errorWithDomain:a3 code:a4 underlyingError:0 underlyingErrors:a5 userInfo:a6 debugDescriptionFormat:a7 arguments:&a9, &a9];

  return v9;
}

+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingErrors:debugDescription:
{
  v9 = [a1 _msv_errorWithDomain:a3 code:a4 underlyingError:0 underlyingErrors:a5 userInfo:0 debugDescriptionFormat:a6 arguments:&a9, &a9];

  return v9;
}

+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingError:userInfo:debugDescription:
{
  v9 = [a1 _msv_errorWithDomain:a3 code:a4 underlyingError:a5 underlyingErrors:0 userInfo:a6 debugDescriptionFormat:a7 arguments:&a9, &a9];

  return v9;
}

+ (id)msv_errorWithDomain:()MSVErrorAdditions code:userInfo:debugDescription:
{
  v9 = [a1 _msv_errorWithDomain:a3 code:a4 underlyingError:0 underlyingErrors:0 userInfo:a5 debugDescriptionFormat:a6 arguments:&a9, &a9];

  return v9;
}

+ (id)msv_errorWithDomain:()MSVErrorAdditions code:underlyingError:debugDescription:
{
  v9 = [a1 _msv_errorWithDomain:a3 code:a4 underlyingError:a5 underlyingErrors:0 userInfo:0 debugDescriptionFormat:a6 arguments:&a9, &a9];

  return v9;
}

+ (id)msv_errorWithDomain:()MSVErrorAdditions code:debugDescription:
{
  v9 = [a1 _msv_errorWithDomain:a3 code:a4 underlyingError:0 underlyingErrors:0 userInfo:0 debugDescriptionFormat:a5 arguments:&a9, &a9];

  return v9;
}

@end