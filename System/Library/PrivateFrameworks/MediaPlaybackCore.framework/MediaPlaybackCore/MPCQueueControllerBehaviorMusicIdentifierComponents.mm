@interface MPCQueueControllerBehaviorMusicIdentifierComponents
+ (id)itemComponentsWithSectionID:(id)a3 itemID:(id)a4;
+ (id)placeholderComponentsWithLoadingSectionID:(id)a3;
- (NSString)description;
- (id)_copy;
- (id)_initWithContentItemID:(id)a3 sectionID:(id)a4 itemID:(id)a5 repeatIteration:(int64_t)a6 type:(int64_t)a7 loadingSectionID:(id)a8 itemSpecificContentItemID:(id)a9 deferredNextContentItemID:(id)a10;
- (id)copyAsDeferredWithLoadingSectionID:(id)a3;
- (id)copyAsPlaceholder;
- (id)copyWithBehaviorFlags:(unsigned __int16)a3;
- (id)copyWithRepeatIteration:(int64_t)a3;
- (unint64_t)uid;
@end

@implementation MPCQueueControllerBehaviorMusicIdentifierComponents

- (unint64_t)uid
{
  v188 = *MEMORY[0x1E69E9840];
  if (self->_type <= 1uLL)
  {
    itemID = self->_itemID;
    *&v170 = self->_sectionID;
    *(&v170 + 1) = &stru_1F454A698;
    v171.i64[0] = itemID;
    v4 = MEMORY[0x1E695DEC8];
    v5 = itemID;
    v6 = v170;
    v7 = [v4 arrayWithObjects:&v170 count:3];

    v8 = [v7 componentsJoinedByString:{@":", v170, v171.i64[0]}];

    v9 = *MEMORY[0x1E69B1360];
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    v181 = 0u;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v170 = xmmword_1C6045200;
    v171 = vaddq_s64(vdupq_n_s64(v9), xmmword_1C6045210);
    v10 = &v172;
    v172 = v9;
    v173 = v9 + 0x61C8864E7A143579;
    v11 = &v174;
    v174 = 0u;
    v175 = 0u;
    v176 = 0;
    v12 = v8;
    v13 = [v12 UTF8String];
    v14 = [v12 length];
    v15 = v14;
    if (v170 > 3000)
    {
      if (v170 > 4000)
      {
        switch(v170)
        {
          case 0xFA1:
            CC_SHA1_Update((&v170 + 8), v13, v14);
            break;
          case 0x10A0:
            CC_SHA256_Update((&v170 + 8), v13, v14);
            break;
          case 0x11A0:
            CC_SHA512_Update((&v170 + 8), v13, v14);
            break;
        }

        goto LABEL_99;
      }

      if (v170 != 3001)
      {
        if (v170 == 4000)
        {
          CC_MD5_Update((&v170 + 8), v13, v14);
        }

        goto LABEL_99;
      }

      if (!v13)
      {
        goto LABEL_99;
      }

      *(&v170 + 1) += v14;
      if (v14 + v176 <= 0x1F)
      {
        memcpy(&v174 + v176, v13, v14);
        v57 = v176 + v15;
LABEL_73:
        LODWORD(v176) = v57;
        goto LABEL_99;
      }

      v70 = &v13[v14];
      if (v176)
      {
        memcpy(&v174 + v176, v13, (32 - v176));
        v171.i64[0] = 0x9E3779B185EBCA87 * __ROR8__(v171.i64[0] - 0x3D4D51C2D82B14B1 * v174, 33);
        v171.i64[1] = 0x9E3779B185EBCA87 * __ROR8__(v171.i64[1] - 0x3D4D51C2D82B14B1 * *(&v174 + 1), 33);
        v172 = 0x9E3779B185EBCA87 * __ROR8__(v172 - 0x3D4D51C2D82B14B1 * v175, 33);
        v173 = 0x9E3779B185EBCA87 * __ROR8__(v173 - 0x3D4D51C2D82B14B1 * *(&v175 + 1), 33);
        v13 += (32 - v176);
        LODWORD(v176) = 0;
      }

      if ((v13 + 32) <= v70)
      {
        v72 = v171.u64[1];
        v71 = v171.i64[0];
        v74 = v172;
        v73 = v173;
        do
        {
          v71 = 0x9E3779B185EBCA87 * __ROR8__(v71 - 0x3D4D51C2D82B14B1 * *v13, 33);
          v72 = 0x9E3779B185EBCA87 * __ROR8__(v72 - 0x3D4D51C2D82B14B1 * *(v13 + 1), 33);
          v74 = 0x9E3779B185EBCA87 * __ROR8__(v74 - 0x3D4D51C2D82B14B1 * *(v13 + 2), 33);
          v73 = 0x9E3779B185EBCA87 * __ROR8__(v73 - 0x3D4D51C2D82B14B1 * *(v13 + 3), 33);
          v13 += 32;
        }

        while (v13 <= v70 - 32);
        v171.i64[0] = v71;
        v171.i64[1] = v72;
        v172 = v74;
        v173 = v73;
      }

      if (v13 < v70)
      {
        v57 = v70 - v13;
        __memcpy_chk();
        goto LABEL_73;
      }

LABEL_99:

      memset(&v185[8], 0, 64);
      *v185 = v170;
      if (v170 > 3000)
      {
        if (v170 > 4000)
        {
          switch(v170)
          {
            case 0xFA1:
              CC_SHA1_Final(&v185[8], (&v170 + 8));
              break;
            case 0x10A0:
              CC_SHA256_Final(&v185[8], (&v170 + 8));
              break;
            case 0x11A0:
              CC_SHA512_Final(&v185[8], (&v170 + 8));
              break;
          }

          goto LABEL_146;
        }

        if (v170 != 3001)
        {
          if (v170 == 4000)
          {
            CC_MD5_Final(&v185[8], (&v170 + 8));
          }

LABEL_146:
          v186[0] = *v185;
          v186[1] = *&v185[16];
          v186[2] = *&v185[32];
          v186[3] = *&v185[48];
          v187 = *&v185[64];
          if (*v185 <= 3999)
          {
            if (*v185 <= 2999)
            {
              if (*v185 != 1000)
              {
                if (*v185 != 2000)
                {
                  goto LABEL_175;
                }

                goto LABEL_165;
              }

              goto LABEL_159;
            }

            if (*v185 == 3000)
            {
LABEL_165:
              v147 = DWORD2(v186[0]);
              goto LABEL_173;
            }

            if (*v185 == 3001)
            {
LABEL_159:
              v147 = *(&v186[0] + 1);
LABEL_173:
              v16 = LOBYTE(self->_repeatIteration) | v147 & 0xFFFFFFFFFFFFFF00;

              return v16;
            }

LABEL_175:
            v168 = [MEMORY[0x1E696AAA8] currentHandler];
            v169 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t _MSVHashGetUInt64Hash(MSVHash)"];
            [v168 handleFailureInFunction:v169 file:@"MSVHasher+Algorithms.h" lineNumber:327 description:@"Cannot obtain hash from unknown hasher algorithm"];

            v147 = 0;
            goto LABEL_173;
          }

          if (*v185 > 4255)
          {
            if (*v185 == 4256)
            {
              v160 = v186 + 8;
              v161 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
              v162 = v161;
              for (i = 0; i != 64; i += 2)
              {
                v164 = *v160++;
                v165 = &v161[i];
                *v165 = MSVFastHexStringFromBytes_hexCharacters_30108[v164 >> 4];
                v165[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v164 & 0xF];
              }

              v144 = objc_alloc(MEMORY[0x1E696AEC0]);
              v145 = v162;
              v146 = 64;
            }

            else
            {
              if (*v185 != 4512)
              {
                goto LABEL_175;
              }

              v148 = v186 + 8;
              v149 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
              v150 = v149;
              for (j = 0; j != 128; j += 2)
              {
                v152 = *v148++;
                v153 = &v149[j];
                *v153 = MSVFastHexStringFromBytes_hexCharacters_30108[v152 >> 4];
                v153[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v152 & 0xF];
              }

              v144 = objc_alloc(MEMORY[0x1E696AEC0]);
              v145 = v150;
              v146 = 128;
            }
          }

          else if (*v185 == 4000)
          {
            v154 = v186 + 8;
            v155 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
            v156 = v155;
            for (k = 0; k != 32; k += 2)
            {
              v158 = *v154++;
              v159 = &v155[k];
              *v159 = MSVFastHexStringFromBytes_hexCharacters_30108[v158 >> 4];
              v159[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v158 & 0xF];
            }

            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
            v145 = v156;
            v146 = 32;
          }

          else
          {
            if (*v185 != 4001)
            {
              goto LABEL_175;
            }

            v138 = v186 + 8;
            v139 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
            v140 = v139;
            for (m = 0; m != 40; m += 2)
            {
              v142 = *v138++;
              v143 = &v139[m];
              *v143 = MSVFastHexStringFromBytes_hexCharacters_30108[v142 >> 4];
              v143[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v142 & 0xF];
            }

            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
            v145 = v140;
            v146 = 40;
          }

          v166 = [v144 initWithBytesNoCopy:v145 length:v146 encoding:4 freeWhenDone:1];
          v147 = [v166 hash];

          goto LABEL_173;
        }

        if (*(&v170 + 1) < 0x20uLL)
        {
          v121 = v172 + 0x27D4EB2F165667C5;
        }

        else
        {
          v121 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(v171.i64[1], 57) + __ROR8__(v171.i64[0], 63) + __ROR8__(v172, 52) + __ROR8__(v173, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v171.i64[0], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v171.i64[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v172, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v173, 33)));
        }

        v122 = v121 + *(&v170 + 1);
        v123 = BYTE8(v170) & 0x1F;
        if (v123 >= 8)
        {
          do
          {
            v124 = *v11++;
            v122 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v124, 33)) ^ v122, 37);
            v123 -= 8;
          }

          while (v123 > 7);
        }

        if (v123 >= 4)
        {
          v125 = *v11;
          v11 = (v11 + 4);
          v122 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v125) ^ v122, 41);
          v123 -= 4;
        }

        for (; v123; --v123)
        {
          v126 = *v11;
          v11 = (v11 + 1);
          v122 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v126) ^ v122, 53);
        }

        v127 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v122 ^ (v122 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v122 ^ (v122 >> 33))) >> 29));
        v116 = v127 ^ HIDWORD(v127);
LABEL_133:
        *&v185[8] = v116;
        goto LABEL_146;
      }

      if (v170 <= 1999)
      {
        if (!v170)
        {
          v118 = [MEMORY[0x1E696AAA8] currentHandler];
          v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
          [v118 handleFailureInFunction:v119 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

          goto LABEL_146;
        }

        if (v170 != 1000)
        {
          goto LABEL_146;
        }

        v86 = (*(&v170 + 1) + v171.i64[0]) ^ __ROR8__(v171.i64[0], 51);
        v87 = v171.i64[1] + (v172 ^ v173);
        v88 = __ROR8__(v172 ^ v173, 48);
        v89 = (v87 ^ v88) + __ROR8__(*(&v170 + 1) + v171.i64[0], 32);
        v90 = v89 ^ __ROR8__(v87 ^ v88, 43);
        v91 = v87 + v86;
        v92 = v91 ^ __ROR8__(v86, 47);
        v93 = (v89 ^ v173) + v92;
        v94 = v93 ^ __ROR8__(v92, 51);
        v95 = (__ROR8__(v91, 32) ^ 0xFFLL) + v90;
        v96 = __ROR8__(v90, 48);
        v97 = __ROR8__(v93, 32) + (v95 ^ v96);
        v98 = v97 ^ __ROR8__(v95 ^ v96, 43);
        v99 = v94 + v95;
        v100 = v99 ^ __ROR8__(v94, 47);
        v101 = v100 + v97;
        v102 = v101 ^ __ROR8__(v100, 51);
        v103 = __ROR8__(v99, 32) + v98;
        v104 = __ROR8__(v98, 48);
        v105 = __ROR8__(v101, 32) + (v103 ^ v104);
        v106 = v105 ^ __ROR8__(v103 ^ v104, 43);
        v107 = v102 + v103;
        v108 = v107 ^ __ROR8__(v102, 47);
        v109 = v108 + v105;
        v110 = v109 ^ __ROR8__(v108, 51);
        v111 = __ROR8__(v107, 32) + v106;
        v112 = __ROR8__(v106, 48);
        v113 = __ROR8__(v109, 32) + (v111 ^ v112);
        v114 = v113 ^ __ROR8__(v111 ^ v112, 43);
        v115 = v110 + v111;
        *(&v170 + 1) = v113;
        v171.i64[0] = v115 ^ __ROR8__(v110, 47);
        v171.i64[1] = __ROR8__(v115, 32);
        v172 = v114;
        v116 = v171.i64[0] ^ v113 ^ v171.i64[1] ^ v114;
        goto LABEL_133;
      }

      if (v170 != 2000)
      {
        if (v170 != 3000)
        {
          goto LABEL_146;
        }

        if (HIDWORD(v170))
        {
          v117 = vaddvq_s32(vorrq_s8(vshlq_u32(v171, xmmword_1C60451B0), vshlq_u32(v171, xmmword_1C60451A0)));
        }

        else
        {
          v117 = v171.i32[2] + 374761393;
        }

        v128 = DWORD2(v170) + v117;
        v129 = v174 & 0xF;
        if (v129 >= 4)
        {
          do
          {
            v130 = *v10;
            v10 = (v10 + 4);
            HIDWORD(v131) = v128 - 1028477379 * v130;
            LODWORD(v131) = HIDWORD(v131);
            v128 = 668265263 * (v131 >> 15);
            v129 -= 4;
          }

          while (v129 > 3);
        }

        for (; v129; --v129)
        {
          v132 = *v10;
          v10 = (v10 + 1);
          HIDWORD(v133) = v128 + 374761393 * v132;
          LODWORD(v133) = HIDWORD(v133);
          v128 = -1640531535 * (v133 >> 21);
        }

        v134 = (-2048144777 * (v128 ^ (v128 >> 15))) ^ ((-2048144777 * (v128 ^ (v128 >> 15))) >> 13);
        v135 = (-1028477379 * v134) ^ ((-1028477379 * v134) >> 16);
        goto LABEL_145;
      }

      switch(v171.u8[3])
      {
        case 1u:
          v120 = v171.u8[0];
          break;
        case 2u:
          v120 = v171.u16[0];
          break;
        case 3u:
          v120 = v171.u16[0] | (v171.u8[2] << 16);
          break;
        default:
          v136 = DWORD2(v170);
          goto LABEL_144;
      }

      v136 = (461845907 * ((380141568 * v120) | ((-862048943 * v120) >> 17))) ^ DWORD2(v170);
LABEL_144:
      v137 = -2048144789 * (v136 ^ HIDWORD(v170) ^ ((v136 ^ HIDWORD(v170)) >> 16));
      v135 = (-1028477387 * (v137 ^ (v137 >> 13))) ^ ((-1028477387 * (v137 ^ (v137 >> 13))) >> 16);
      DWORD2(v170) = v135;
LABEL_145:
      *&v185[8] = v135;
      goto LABEL_146;
    }

    if (v170 <= 1999)
    {
      if (!v170)
      {
        v52 = [MEMORY[0x1E696AAA8] currentHandler];
        v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
        [v52 handleFailureInFunction:v53 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

        goto LABEL_99;
      }

      if (v170 != 1000)
      {
        goto LABEL_99;
      }

      v17 = HIBYTE(v173);
      v18 = v173 & 0xFFFFFFFFFFFFFFLL;
      v19 = HIBYTE(v173) & 7;
      if (v19)
      {
        v20 = 8 - v19;
        v21 = v14 - (8 - v19);
        if (v14 < 8 - v19)
        {
LABEL_21:
          if (v15)
          {
            v44 = 0;
            v45 = 0;
            v46 = v15;
            do
            {
              v47 = *v13++;
              v45 |= v47 << v44;
              v44 += 8;
              --v46;
            }

            while (v46);
            if (v19)
            {
              v48 = (v45 << (8 * v19)) | ((v15 + v17) << 56) | v18;
            }

            else
            {
              v48 = v45 | ((v15 + v17) << 56);
            }
          }

          else
          {
            if (v19)
            {
              goto LABEL_99;
            }

            v48 = v17 << 56;
          }

          v173 = v48;
          goto LABEL_99;
        }

        v22 = 8 * v19;
        v23 = v13;
        v24 = v173 & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v25 = *v23++;
          v24 |= v25 << v22;
          v22 += 8;
        }

        while (v22 != 64);
        v26 = (*(&v170 + 1) + v171.i64[0]) ^ __ROR8__(v171.i64[0], 51);
        v27 = v171.i64[1] + (v172 ^ v24);
        v28 = __ROR8__(v172 ^ v24, 48);
        v29 = (v27 ^ v28) + __ROR8__(*(&v170 + 1) + v171.i64[0], 32);
        v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
        v31 = v27 + v26;
        v171.i64[1] = __ROR8__(v31, 32);
        v172 = v30;
        *(&v170 + 1) = v29 ^ v24;
        v171.i64[0] = v31 ^ __ROR8__(v26, 47);
        v13 += v20;
        v173 = (v20 + v17) << 56;
        v15 = v21;
      }

      if (v15 >= 8)
      {
        v32 = *(&v170 + 1);
        v35 = v171.i64[1];
        v34 = v171.i64[0];
        v33 = v172;
        do
        {
          v36 = *v13;
          v13 += 8;
          v37 = v33 ^ v36;
          v38 = v32 + v34;
          v39 = v38 ^ __ROR8__(v34, 51);
          v40 = v35 + v37;
          v41 = __ROR8__(v37, 48);
          v42 = (v40 ^ v41) + __ROR8__(v38, 32);
          v33 = v42 ^ __ROR8__(v40 ^ v41, 43);
          v43 = v40 + v39;
          v34 = v43 ^ __ROR8__(v39, 47);
          v35 = __ROR8__(v43, 32);
          v171.i64[1] = v35;
          v172 = v33;
          v32 = v42 ^ v36;
          *(&v170 + 1) = v32;
          v171.i64[0] = v34;
          v15 -= 8;
          v17 += 8;
        }

        while (v15 > 7);
      }

      v19 = 0;
      goto LABEL_21;
    }

    if (v170 != 2000)
    {
      if (v170 != 3000 || !v13)
      {
        goto LABEL_99;
      }

      v50 = v14 > 0xF || (DWORD2(v170) + v14) > 0xF;
      DWORD2(v170) += v14;
      HIDWORD(v170) |= v50;
      if (v14 + v174 > 0xF)
      {
        v62 = &v13[v14];
        if (v174)
        {
          memcpy(&v172 + v174, v13, (16 - v174));
          HIDWORD(v63) = v171.i32[0] - 2048144777 * v172;
          LODWORD(v63) = HIDWORD(v63);
          v64 = -1640531535 * (v63 >> 19);
          HIDWORD(v63) = v171.i32[1] - 2048144777 * HIDWORD(v172);
          LODWORD(v63) = HIDWORD(v63);
          v171.i32[0] = v64;
          v171.i32[1] = -1640531535 * (v63 >> 19);
          HIDWORD(v63) = v171.i32[2] - 2048144777 * v173;
          LODWORD(v63) = HIDWORD(v63);
          v171.i32[2] = -1640531535 * (v63 >> 19);
          HIDWORD(v63) = v171.i32[3] - 2048144777 * HIDWORD(v173);
          LODWORD(v63) = HIDWORD(v63);
          v13 += (16 - v174);
          v171.i32[3] = -1640531535 * (v63 >> 19);
          LODWORD(v174) = 0;
        }

        if (v13 <= v62 - 16)
        {
          v65 = v171.i32[0];
          v66 = v171.i32[1];
          v67 = v171.i32[2];
          v68 = v171.i32[3];
          do
          {
            HIDWORD(v69) = v65 - 2048144777 * *v13;
            LODWORD(v69) = HIDWORD(v69);
            v65 = -1640531535 * (v69 >> 19);
            HIDWORD(v69) = v66 - 2048144777 * *(v13 + 1);
            LODWORD(v69) = HIDWORD(v69);
            v66 = -1640531535 * (v69 >> 19);
            HIDWORD(v69) = v67 - 2048144777 * *(v13 + 2);
            LODWORD(v69) = HIDWORD(v69);
            v67 = -1640531535 * (v69 >> 19);
            HIDWORD(v69) = v68 - 2048144777 * *(v13 + 3);
            LODWORD(v69) = HIDWORD(v69);
            v68 = -1640531535 * (v69 >> 19);
            v13 += 16;
          }

          while (v13 <= v62 - 16);
          v171.i64[0] = __PAIR64__(v66, v65);
          v171.i64[1] = __PAIR64__(v68, v67);
        }

        if (v13 >= v62)
        {
          goto LABEL_99;
        }

        v51 = v62 - v13;
        __memcpy_chk();
      }

      else
      {
        memcpy(&v172 + v174, v13, v14);
        v51 = v174 + v15;
      }

      LODWORD(v174) = v51;
      goto LABEL_99;
    }

    v54 = v14 + v171.u8[3];
    if (v54 < 4)
    {
      v55 = &v171.i8[v171.u8[3]];
      v56 = (v54 - v171.i8[3]);
      if (v56 <= 1)
      {
        if (v54 == v171.i8[3])
        {
LABEL_98:
          HIDWORD(v170) += v15;
          goto LABEL_99;
        }

        if (v56 == 1)
        {
          *v55 = *v13;
          goto LABEL_98;
        }

LABEL_82:
        memcpy(v55, v13, (v54 - v171.i8[3]));
        goto LABEL_98;
      }

      if (v56 == 2)
      {
        v75 = *v13;
      }

      else
      {
        if (v56 != 3)
        {
          goto LABEL_82;
        }

        v75 = *v13;
        v55[2] = v13[2];
      }

      *v55 = v75;
      goto LABEL_98;
    }

    LOBYTE(v58) = 0;
    v59 = v54 & 0xFFFFFFFFFFFFFFFCLL;
    if (v171.u8[3] > 1u)
    {
      if (v171.u8[3] != 2)
      {
        LOBYTE(v60) = 0;
        LOBYTE(v61) = 0;
        v76 = 0;
        if (v171.u8[3] == 3)
        {
          LOBYTE(v60) = v171.i8[0];
          v58 = HIBYTE(v171.u16[0]);
          LOBYTE(v61) = v171.i8[2];
          v76 = *v13;
        }

        goto LABEL_88;
      }

      LOBYTE(v60) = v171.i8[0];
      v58 = HIBYTE(v171.u16[0]);
      v61 = *v13;
    }

    else
    {
      if (!v171.i8[3])
      {
        v60 = *v13;
        v58 = *v13 >> 8;
        v61 = HIWORD(*v13);
        v76 = HIBYTE(*v13);
        goto LABEL_88;
      }

      LOBYTE(v60) = v171.i8[0];
      LOBYTE(v58) = *v13;
      v61 = *(v13 + 1);
    }

    v76 = v61 >> 8;
LABEL_88:
    v77 = v54 & 3;
    v78 = (v61 << 16) | (v76 << 24) | v60 | (v58 << 8);
    HIDWORD(v79) = (461845907 * ((380141568 * v78) | ((-862048943 * v78) >> 17))) ^ DWORD2(v170);
    LODWORD(v79) = HIDWORD(v79);
    v80 = 5 * (v79 >> 19) - 430675100;
    DWORD2(v170) = v80;
    v81 = &v13[-v171.u8[3] + 4];
    v82 = &v13[v59 - v171.u8[3]];
    while (v81 < v82)
    {
      v83 = *v81;
      v81 += 4;
      HIDWORD(v84) = (461845907 * ((380141568 * v83) | ((-862048943 * v83) >> 17))) ^ v80;
      LODWORD(v84) = HIDWORD(v84);
      v80 = 5 * (v84 >> 19) - 430675100;
      DWORD2(v170) = v80;
    }

    if (v77 > 1)
    {
      if (v77 == 2)
      {
        v171.i16[0] = *v82;
      }

      else
      {
        v85 = *v82;
        v171.i8[2] = v82[2];
        v171.i16[0] = v85;
      }
    }

    else if (v77)
    {
      v171.i8[0] = *v82;
    }

    v171.i8[3] = v77;
    goto LABEL_98;
  }

  return 0;
}

- (id)copyWithRepeatIteration:(int64_t)a3
{
  v49 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type > 1)
  {
    if (type == 2)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = v17;
      v19 = @"Cannot change repeatIteration for SectionPlaceholder";
      v20 = a2;
      v21 = self;
      v22 = 201;
    }

    else
    {
      if (type != 3)
      {
        return v3;
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = v17;
      v19 = @"Cannot change repeatIteration for EndOfQueuePlaceholder";
      v20 = a2;
      v21 = self;
      v22 = 198;
    }

    [v17 handleFailureInMethod:v20 object:v21 file:@"MPCQueueControllerBehaviorMusicIdentifierComponents.m" lineNumber:v22 description:v19];

    return 0;
  }

  if (type)
  {
    if (type == 1)
    {
      itemID = self->_itemID;
      v8 = self->_sectionID;
      v9 = itemID;
      v45 = v8;
      if (a3)
      {
        v10 = &v49 + 1;
        quot = a3;
        do
        {
          v12 = ldiv(quot, 10);
          quot = v12.quot;
          if (v12.rem >= 0)
          {
            LOBYTE(v13) = v12.rem;
          }

          else
          {
            v13 = -v12.rem;
          }

          *(v10 - 2) = v13 + 48;
          v14 = (v10 - 2);
          --v10;
        }

        while (v12.quot);
        if (a3 < 0)
        {
          *(v10 - 2) = 45;
          v14 = (v10 - 2);
        }

        v15 = CFStringCreateWithBytes(0, v14, &v49 - v14, 0x8000100u, 0);
      }

      else
      {
        v15 = &stru_1F454A698;
      }

      v46 = v15;
      v47 = v9;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:3];
      v33 = [v32 componentsJoinedByString:@":"];

      if (a3)
      {
      }

      v48[0] = @"PLACEHOLDER";
      v48[1] = v33;
      v34 = MEMORY[0x1E695DEC8];
      v35 = v33;
      v36 = [v34 arrayWithObjects:v48 count:2];

      v37 = [v36 componentsJoinedByString:@"="];

      v3 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)self _copy];
      v38 = v3[2];
      v3[2] = v37;
      v39 = v37;

      v3[9] = a3;
      v40 = v3[7];
      v3[7] = v35;
    }
  }

  else
  {
    v23 = self->_itemID;
    v24 = self->_sectionID;
    v25 = v23;
    v45 = v24;
    if (a3)
    {
      v26 = &v49 + 1;
      v27 = a3;
      do
      {
        v28 = ldiv(v27, 10);
        v27 = v28.quot;
        if (v28.rem >= 0)
        {
          LOBYTE(v29) = v28.rem;
        }

        else
        {
          v29 = -v28.rem;
        }

        *(v26 - 2) = v29 + 48;
        v30 = (v26 - 2);
        --v26;
      }

      while (v28.quot);
      if (a3 < 0)
      {
        *(v26 - 2) = 45;
        v30 = (v26 - 2);
      }

      v31 = CFStringCreateWithBytes(0, v30, &v49 - v30, 0x8000100u, 0);
    }

    else
    {
      v31 = &stru_1F454A698;
    }

    v46 = v31;
    v47 = v25;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:3];
    v42 = [v41 componentsJoinedByString:@":"];

    if (a3)
    {
    }

    v3 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)self _copy];
    v43 = v3[2];
    v3[2] = v42;

    v3[9] = a3;
  }

  return v3;
}

- (id)copyAsDeferredWithLoadingSectionID:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  type = self->_type;
  if ((type - 1) >= 3)
  {
    if (!type)
    {
      itemID = self->_itemID;
      repeatIteration = self->_repeatIteration;
      v11 = self->_sectionID;
      v12 = itemID;
      v28[0] = v11;
      if (repeatIteration)
      {
        v13 = &v29 + 1;
        quot = repeatIteration;
        do
        {
          v15 = ldiv(quot, 10);
          quot = v15.quot;
          if (v15.rem >= 0)
          {
            LOBYTE(v16) = v15.rem;
          }

          else
          {
            v16 = -v15.rem;
          }

          *(v13 - 2) = v16 + 48;
          v17 = (v13 - 2);
          --v13;
        }

        while (v15.quot);
        if (repeatIteration < 0)
        {
          *(v13 - 2) = 45;
          v17 = (v13 - 2);
        }

        v18 = CFStringCreateWithBytes(0, v17, &v29 - v17, 0x8000100u, 0);
      }

      else
      {
        v18 = &stru_1F454A698;
      }

      v28[1] = v18;
      v28[2] = v12;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
      v20 = [v19 componentsJoinedByString:@":"];

      if (repeatIteration)
      {
      }

      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"PLACEHOLDER", v6, v20, 0, v28[0]}];
      v22 = [v21 componentsJoinedByString:@"@"];

      a2 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)self _copy];
      v23 = *(a2 + 2);
      *(a2 + 2) = v22;
      v24 = v22;

      objc_storeStrong(a2 + 3, a3);
      v25 = *(a2 + 4);
      *(a2 + 4) = @"PLACEHOLDER_DEFERRED_NEXT_ITEM";

      *(a2 + 5) = 3;
      objc_storeStrong(a2 + 6, a3);
      v26 = *(a2 + 8);
      *(a2 + 8) = v20;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPCQueueControllerBehaviorMusicIdentifierComponents.m" lineNumber:174 description:@"Cannot copy a placeholder as deferred"];

    a2 = 0;
  }

  return a2;
}

- (id)copyAsPlaceholder
{
  v28 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if ((type - 1) >= 3)
  {
    if (!type)
    {
      itemID = self->_itemID;
      repeatIteration = self->_repeatIteration;
      v7 = self->_sectionID;
      v8 = itemID;
      v26[0] = v7;
      if (repeatIteration)
      {
        v9 = &v28 + 1;
        quot = repeatIteration;
        do
        {
          v11 = ldiv(quot, 10);
          quot = v11.quot;
          if (v11.rem >= 0)
          {
            LOBYTE(v12) = v11.rem;
          }

          else
          {
            v12 = -v11.rem;
          }

          *(v9 - 2) = v12 + 48;
          v13 = (v9 - 2);
          --v9;
        }

        while (v11.quot);
        if (repeatIteration < 0)
        {
          *(v9 - 2) = 45;
          v13 = (v9 - 2);
        }

        v14 = CFStringCreateWithBytes(0, v13, &v28 - v13, 0x8000100u, 0);
      }

      else
      {
        v14 = &stru_1F454A698;
      }

      v26[1] = v14;
      v26[2] = v8;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:{3, self}];
      v16 = [v15 componentsJoinedByString:@":"];

      if (repeatIteration)
      {
      }

      v27[0] = @"PLACEHOLDER";
      v27[1] = v16;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v16;
      v19 = [v17 arrayWithObjects:v27 count:2];

      v20 = [v19 componentsJoinedByString:@"="];

      v2 = [v25 _copy];
      v21 = v2[2];
      v2[2] = v20;
      v22 = v20;

      v2[5] = 1;
      v23 = v2[7];
      v2[7] = v18;
    }

    return v2;
  }

  else
  {

    return self;
  }
}

- (id)copyWithBehaviorFlags:(unsigned __int16)a3
{
  if (self->_behaviorFlags == a3)
  {

    return self;
  }

  else
  {
    result = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)self _copy];
    *(result + 4) = a3;
  }

  return result;
}

- (id)_copy
{
  v3 = objc_alloc_init(MPCQueueControllerBehaviorMusicIdentifierComponents);
  objc_storeStrong(&v3->_contentItemID, self->_contentItemID);
  objc_storeStrong(&v3->_sectionID, self->_sectionID);
  objc_storeStrong(&v3->_itemID, self->_itemID);
  v3->_repeatIteration = self->_repeatIteration;
  v3->_type = self->_type;
  objc_storeStrong(&v3->_loadingSectionID, self->_loadingSectionID);
  objc_storeStrong(&v3->_itemSpecificContentItemID, self->_itemSpecificContentItemID);
  objc_storeStrong(&v3->_deferredNextContentItemID, self->_deferredNextContentItemID);
  v3->_behaviorFlags = self->_behaviorFlags;
  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"section=%@", self->_sectionID];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item=%@", self->_itemID];
  [v3 addObject:v5];

  if (self->_repeatIteration >= 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"repeatIteration=%ld", self->_repeatIteration];
    [v3 addObject:v6];
  }

  if ([(NSString *)self->_loadingSectionID length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"loadingSection=%@", self->_loadingSectionID];
    [v3 addObject:v7];
  }

  if ([(NSString *)self->_itemSpecificContentItemID length])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"itemSpecificContentItemID=%@", self->_itemSpecificContentItemID];
    [v3 addObject:v8];
  }

  if ([(NSString *)self->_deferredNextContentItemID length])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deferredNextContentItemID=%@", self->_deferredNextContentItemID];
    [v3 addObject:v9];
  }

  type = self->_type;
  if (type <= 3)
  {
    [v3 addObject:off_1E8233268[type]];
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:@" "];
  v13 = [v11 stringWithFormat:@"<MPCQueueControllerBehaviorMusicIdentifierComponents: %p %@>", self, v12];

  return v13;
}

- (id)_initWithContentItemID:(id)a3 sectionID:(id)a4 itemID:(id)a5 repeatIteration:(int64_t)a6 type:(int64_t)a7 loadingSectionID:(id)a8 itemSpecificContentItemID:(id)a9 deferredNextContentItemID:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = MPCQueueControllerBehaviorMusicIdentifierComponents;
  v22 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    contentItemID = v22->_contentItemID;
    v22->_contentItemID = v23;

    v25 = [v17 copy];
    sectionID = v22->_sectionID;
    v22->_sectionID = v25;

    v27 = [v18 copy];
    itemID = v22->_itemID;
    v22->_itemID = v27;

    v22->_repeatIteration = a6;
    v22->_type = a7;
    v29 = [v19 copy];
    loadingSectionID = v22->_loadingSectionID;
    v22->_loadingSectionID = v29;

    v31 = [v20 copy];
    itemSpecificContentItemID = v22->_itemSpecificContentItemID;
    v22->_itemSpecificContentItemID = v31;

    v33 = [v21 copy];
    deferredNextContentItemID = v22->_deferredNextContentItemID;
    v22->_deferredNextContentItemID = v33;
  }

  return v22;
}

+ (id)placeholderComponentsWithLoadingSectionID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"PLACEHOLDER", v3, 0, 0}];
  v5 = [v4 componentsJoinedByString:@"@"];

  v6 = [[MPCQueueControllerBehaviorMusicIdentifierComponents alloc] _initWithContentItemID:v5 sectionID:v3 itemID:@"PLACEHOLDER_HEAD" repeatIteration:0 type:2 loadingSectionID:v3 itemSpecificContentItemID:0 deferredNextContentItemID:0];

  return v6;
}

+ (id)itemComponentsWithSectionID:(id)a3 itemID:(id)a4
{
  v11[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v11[0] = v5;
  v11[1] = &stru_1F454A698;
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v7 componentsJoinedByString:@":"];

  v9 = [[MPCQueueControllerBehaviorMusicIdentifierComponents alloc] _initWithContentItemID:v8 sectionID:v5 itemID:v6 repeatIteration:0 type:0 loadingSectionID:0 itemSpecificContentItemID:0 deferredNextContentItemID:0];

  return v9;
}

@end