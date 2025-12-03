@interface MSVSQLDatabaseTransaction
- (BOOL)_releaseSavepoint:(id)savepoint;
- (BOOL)commit;
- (BOOL)executeStatement:(id)statement error:(id *)error;
- (BOOL)executeStatementString:(id)string error:(id *)error;
- (BOOL)rollback;
- (BOOL)rollbackToSavepoint:(id)savepoint;
- (__CFString)initWithConnection:(void *)connection name:(void *)name error:;
- (id)createSavepoint;
- (id)resultsForStatement:(id)statement;
- (id)statementWithString:(id)string error:(id *)error;
- (void)dealloc;
@end

@implementation MSVSQLDatabaseTransaction

- (BOOL)commit
{
  v187 = *MEMORY[0x1E69E9840];
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:739 description:@"Attempt to use invalidated transaction."];
  }

  v3 = [(MSVSQLDatabaseTransaction *)self statementWithString:@"COMMIT TRANSACTION" error:0];
  v168 = 0;
  [(MSVSQLDatabaseTransaction *)self executeStatement:v3 error:&v168];
  v4 = v168;
  [v3 invalidate];
  if (!v4)
  {
    self->_invalid = 1;
    connection = self->_connection;
    if (connection && !connection->_invalid)
    {
      connection->_invalid = 1;
      sqlite3_close(connection->_connectionHandle);
      connection->_connectionHandle = 0;
    }

    if (self->_assertion)
    {
      v6 = MSVHasherSharedSeed();
      v7 = self->_connection;
      if (v7)
      {
        v7 = v7->_databaseURI;
      }

      v8 = v7;
      v182 = 0u;
      v181 = 0u;
      v180 = 0u;
      v179 = 0u;
      v178 = 0u;
      v177 = 0u;
      v176 = 0u;
      v175 = 0u;
      *buf = xmmword_1AC881C40;
      *&buf[16] = vaddq_s64(vdupq_n_s64(v6), xmmword_1AC881C50);
      v170 = v6;
      v171 = v6 + 0x61C8864E7A143579;
      v172 = 0u;
      v173 = 0u;
      v174 = 0;
      v9 = v8;
      uTF8String = [(_MSVSQLConnection *)v9 UTF8String];
      v11 = [(_MSVSQLConnection *)v9 length];
      v12 = v11;
      if (*buf > 3000)
      {
        if (*buf <= 4000)
        {
          if (*buf == 3001)
          {
            _MSV_XXH_XXH64_update(&buf[8], uTF8String, v11);
          }

          else if (*buf == 4000)
          {
            CC_MD5_Update(&buf[8], uTF8String, v11);
          }
        }

        else
        {
          switch(*buf)
          {
            case 0xFA1:
              CC_SHA1_Update(&buf[8], uTF8String, v11);
              break;
            case 0x10A0:
              CC_SHA256_Update(&buf[8], uTF8String, v11);
              break;
            case 0x11A0:
              CC_SHA512_Update(&buf[8], uTF8String, v11);
              break;
          }
        }

        goto LABEL_78;
      }

      if (*buf <= 1999)
      {
        if (!*buf)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
          [currentHandler2 handleFailureInFunction:v46 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

          goto LABEL_78;
        }

        if (*buf != 1000)
        {
          goto LABEL_78;
        }

        v13 = HIBYTE(v171);
        v14 = v171 & 0xFFFFFFFFFFFFFFLL;
        v15 = HIBYTE(v171) & 7;
        if (v15)
        {
          v16 = 8 - v15;
          v17 = v11 - (8 - v15);
          if (v11 < 8 - v15)
          {
LABEL_28:
            if (v12)
            {
              v40 = 0;
              v41 = 0;
              v42 = v12;
              do
              {
                v43 = *uTF8String++;
                v41 |= v43 << v40;
                v40 += 8;
                --v42;
              }

              while (v42);
              if (v15)
              {
                v44 = (v41 << (8 * v15)) | ((v12 + v13) << 56) | v14;
              }

              else
              {
                v44 = v41 | ((v12 + v13) << 56);
              }
            }

            else
            {
              if (v15)
              {
                goto LABEL_78;
              }

              v44 = v13 << 56;
            }

            v171 = v44;
LABEL_78:

            memset(&v183[8], 0, 64);
            *v183 = *buf;
            if (*buf > 3000)
            {
              if (*buf <= 4000)
              {
                if (*buf == 3001)
                {
                  *&v183[8] = _MSV_XXH_XXH64_digest(&buf[8]);
                }

                else if (*buf == 4000)
                {
                  CC_MD5_Final(&v183[8], &buf[8]);
                }
              }

              else
              {
                switch(*buf)
                {
                  case 0xFA1:
                    CC_SHA1_Final(&v183[8], &buf[8]);
                    break;
                  case 0x10A0:
                    CC_SHA256_Final(&v183[8], &buf[8]);
                    break;
                  case 0x11A0:
                    CC_SHA512_Final(&v183[8], &buf[8]);
                    break;
                }
              }

              goto LABEL_115;
            }

            if (*buf <= 1999)
            {
              if (*buf)
              {
                if (*buf == 1000)
                {
                  v65 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
                  v66 = *&buf[24] + (v170 ^ v171);
                  v67 = __ROR8__(v170 ^ v171, 48);
                  v68 = (v66 ^ v67) + __ROR8__(*&buf[8] + *&buf[16], 32);
                  v69 = v68 ^ __ROR8__(v66 ^ v67, 43);
                  v70 = v66 + v65;
                  v71 = v70 ^ __ROR8__(v65, 47);
                  v72 = (v68 ^ v171) + v71;
                  v73 = v72 ^ __ROR8__(v71, 51);
                  v74 = (__ROR8__(v70, 32) ^ 0xFFLL) + v69;
                  v75 = __ROR8__(v69, 48);
                  v76 = __ROR8__(v72, 32) + (v74 ^ v75);
                  v77 = v76 ^ __ROR8__(v74 ^ v75, 43);
                  v78 = v73 + v74;
                  v79 = v78 ^ __ROR8__(v73, 47);
                  v80 = v79 + v76;
                  v81 = v80 ^ __ROR8__(v79, 51);
                  v82 = __ROR8__(v78, 32) + v77;
                  v83 = __ROR8__(v77, 48);
                  v84 = __ROR8__(v80, 32) + (v82 ^ v83);
                  v85 = v84 ^ __ROR8__(v82 ^ v83, 43);
                  v86 = v81 + v82;
                  v87 = v86 ^ __ROR8__(v81, 47);
                  v88 = v87 + v84;
                  v89 = v88 ^ __ROR8__(v87, 51);
                  v90 = __ROR8__(v86, 32) + v85;
                  v91 = __ROR8__(v85, 48);
                  v92 = __ROR8__(v88, 32) + (v90 ^ v91);
                  v93 = v92 ^ __ROR8__(v90 ^ v91, 43);
                  v94 = v89 + v90;
                  *&buf[8] = v92;
                  *&buf[16] = v94 ^ __ROR8__(v89, 47);
                  *&buf[24] = __ROR8__(v94, 32);
                  v170 = v93;
                  *&v183[8] = *&buf[16] ^ v92 ^ *&buf[24] ^ v93;
                }
              }

              else
              {
                currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
                v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
                [currentHandler3 handleFailureInFunction:v98 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
              }

LABEL_115:
              v184[0] = *v183;
              v184[1] = *&v183[16];
              v184[2] = *&v183[32];
              v184[3] = *&v183[48];
              v185 = *&v183[64];
              if (*v183 > 3999)
              {
                if (*v183 > 4255)
                {
                  if (*v183 == 4256)
                  {
                    v151 = v184 + 8;
                    v152 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                    v153 = v152;
                    for (i = 0; i != 64; i += 2)
                    {
                      v155 = *v151++;
                      v156 = &v152[i];
                      *v156 = MSVFastHexStringFromBytes_hexCharacters_4916[v155 >> 4];
                      v156[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v155 & 0xF];
                    }

                    v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v123 = v153;
                    v124 = 64;
                  }

                  else
                  {
                    if (*v183 != 4512)
                    {
                      goto LABEL_167;
                    }

                    v129 = v184 + 8;
                    v130 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                    v131 = v130;
                    for (j = 0; j != 128; j += 2)
                    {
                      v133 = *v129++;
                      v134 = &v130[j];
                      *v134 = MSVFastHexStringFromBytes_hexCharacters_4916[v133 >> 4];
                      v134[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v133 & 0xF];
                    }

                    v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v123 = v131;
                    v124 = 128;
                  }
                }

                else if (*v183 == 4000)
                {
                  v141 = v184 + 8;
                  v142 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                  v143 = v142;
                  for (k = 0; k != 32; k += 2)
                  {
                    v145 = *v141++;
                    v146 = &v142[k];
                    *v146 = MSVFastHexStringFromBytes_hexCharacters_4916[v145 >> 4];
                    v146[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v145 & 0xF];
                  }

                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v143;
                  v124 = 32;
                }

                else
                {
                  if (*v183 != 4001)
                  {
                    goto LABEL_167;
                  }

                  v116 = v184 + 8;
                  v117 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                  v118 = v117;
                  for (m = 0; m != 40; m += 2)
                  {
                    v120 = *v116++;
                    v121 = &v117[m];
                    *v121 = MSVFastHexStringFromBytes_hexCharacters_4916[v120 >> 4];
                    v121[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v120 & 0xF];
                  }

                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v118;
                  v124 = 40;
                }
              }

              else
              {
                if (*v183 <= 2999)
                {
                  if (*v183 == 1000)
                  {
                    v135 = *(&v184[0] + 1);
                    if (*(&v184[0] + 1))
                    {
                      v136 = &v187 + 1;
                      quot = *(&v184[0] + 1);
                      do
                      {
                        v138 = lldiv(quot, 10);
                        quot = v138.quot;
                        if (v138.rem >= 0)
                        {
                          LOBYTE(v139) = v138.rem;
                        }

                        else
                        {
                          v139 = -v138.rem;
                        }

                        *(v136 - 2) = v139 + 48;
                        v115 = (v136 - 2);
                        --v136;
                      }

                      while (v138.quot);
                      if (v135 < 0)
                      {
                        *(v136 - 2) = 45;
                        v115 = (v136 - 2);
                      }

                      v114 = (&v187 - v115);
                      goto LABEL_151;
                    }

LABEL_168:
                    v157 = @"0";
                    goto LABEL_163;
                  }

                  if (*v183 == 2000)
                  {
                    v110 = DWORD2(v184[0]);
                    if (DWORD2(v184[0]))
                    {
                      v111 = &v187;
                      do
                      {
                        v112 = ldiv(v110, 10);
                        v110 = v112.quot;
                        if (v112.rem >= 0)
                        {
                          LOBYTE(v113) = v112.rem;
                        }

                        else
                        {
                          v113 = -v112.rem;
                        }

                        *(v111 - 1) = v113 + 48;
                        v111 = (v111 - 1);
                      }

                      while (v112.quot);
                      v114 = (&v187 - v111);
                      v115 = v111;
LABEL_151:
                      v140 = CFStringCreateWithBytes(0, v115, v114, 0x8000100u, 0);
LABEL_162:
                      v157 = v140;
LABEL_163:

                      v158 = os_log_create("com.apple.amp.MediaServices", "SQL");
                      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                      {
                        v159 = self->_connection;
                        assertion = self->_assertion;
                        *buf = 138543874;
                        *&buf[4] = v157;
                        *&buf[12] = 2048;
                        *&buf[14] = v159;
                        *&buf[22] = 2114;
                        *&buf[24] = assertion;
                        _os_log_impl(&dword_1AC81F000, v158, OS_LOG_TYPE_DEFAULT, "[SQL:%{public}@:%p] commit | invalidating process assertion [database transaction] assertion=%{public}@", buf, 0x20u);
                      }

                      [(_MSVSQLAssertion *)self->_assertion invalidate];
                      v161 = self->_assertion;
                      self->_assertion = 0;

                      goto LABEL_166;
                    }

                    goto LABEL_168;
                  }

LABEL_167:
                  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
                  v165 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                  [currentHandler4 handleFailureInFunction:v165 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                  v157 = &stru_1F214F018;
                  goto LABEL_163;
                }

                if (*v183 == 3000)
                {
                  LODWORD(v186[0]) = bswap32(DWORD2(v184[0]));
                  v147 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                  v148 = 0;
                  v149 = v147 + 1;
                  do
                  {
                    v150 = *(v186 + v148);
                    *(v149 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v150 >> 4];
                    *v149 = MSVFastHexStringFromBytes_hexCharacters_4916[v150 & 0xF];
                    v149 += 2;
                    ++v148;
                  }

                  while (v148 != 4);
                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v147;
                  v124 = 8;
                }

                else
                {
                  if (*v183 != 3001)
                  {
                    goto LABEL_167;
                  }

                  v186[0] = bswap64(*(&v184[0] + 1));
                  v125 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                  v126 = 0;
                  v127 = v125 + 1;
                  do
                  {
                    v128 = *(v186 + v126);
                    *(v127 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v128 >> 4];
                    *v127 = MSVFastHexStringFromBytes_hexCharacters_4916[v128 & 0xF];
                    v127 += 2;
                    ++v126;
                  }

                  while (v126 != 8);
                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v125;
                  v124 = 16;
                }
              }

              v140 = [v122 initWithBytesNoCopy:v123 length:v124 encoding:4 freeWhenDone:1];
              goto LABEL_162;
            }

            if (*buf != 2000)
            {
              if (*buf != 3000)
              {
                goto LABEL_115;
              }

              v95 = &v170;
              if (*&buf[12])
              {
                v96 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_1AC881C30), vshlq_u32(*&buf[16], xmmword_1AC881C20)));
              }

              else
              {
                v96 = *&buf[24] + 374761393;
              }

              v100 = *&buf[8] + v96;
              v101 = v172 & 0xF;
              if (v101 >= 4)
              {
                do
                {
                  v102 = *v95;
                  v95 = (v95 + 4);
                  HIDWORD(v103) = v100 - 1028477379 * v102;
                  LODWORD(v103) = HIDWORD(v103);
                  v100 = 668265263 * (v103 >> 15);
                  v101 -= 4;
                }

                while (v101 > 3);
              }

              for (; v101; --v101)
              {
                v104 = *v95;
                v95 = (v95 + 1);
                HIDWORD(v105) = v100 + 374761393 * v104;
                LODWORD(v105) = HIDWORD(v105);
                v100 = -1640531535 * (v105 >> 21);
              }

              v106 = -1028477379 * ((-2048144777 * (v100 ^ (v100 >> 15))) ^ ((-2048144777 * (v100 ^ (v100 >> 15))) >> 13));
              v107 = v106 ^ HIWORD(v106);
              goto LABEL_114;
            }

            switch(buf[19])
            {
              case 1:
                v99 = buf[16];
                break;
              case 2:
                v99 = *&buf[16];
                break;
              case 3:
                v99 = *&buf[16] | (buf[18] << 16);
                break;
              default:
                v108 = *&buf[8];
                goto LABEL_113;
            }

            v108 = (461845907 * ((380141568 * v99) | ((-862048943 * v99) >> 17))) ^ *&buf[8];
LABEL_113:
            v109 = -2048144789 * (v108 ^ *&buf[12] ^ ((v108 ^ *&buf[12]) >> 16));
            v107 = (-1028477387 * (v109 ^ (v109 >> 13))) ^ ((-1028477387 * (v109 ^ (v109 >> 13))) >> 16);
            *&buf[8] = v107;
LABEL_114:
            *&v183[8] = v107;
            goto LABEL_115;
          }

          v18 = 8 * v15;
          v19 = uTF8String;
          v20 = v171 & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v21 = *v19++;
            v20 |= v21 << v18;
            v18 += 8;
          }

          while (v18 != 64);
          v22 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
          v23 = *&buf[24] + (v170 ^ v20);
          v24 = __ROR8__(v170 ^ v20, 48);
          v25 = (v23 ^ v24) + __ROR8__(*&buf[8] + *&buf[16], 32);
          v26 = v25 ^ __ROR8__(v23 ^ v24, 43);
          v27 = v23 + v22;
          *&buf[24] = __ROR8__(v27, 32);
          v170 = v26;
          *&buf[8] = v25 ^ v20;
          *&buf[16] = v27 ^ __ROR8__(v22, 47);
          uTF8String += v16;
          v171 = (v16 + v13) << 56;
          v12 = v17;
        }

        if (v12 >= 8)
        {
          v28 = *&buf[8];
          v31 = *&buf[24];
          v30 = *&buf[16];
          v29 = v170;
          do
          {
            v32 = *uTF8String;
            uTF8String += 8;
            v33 = v29 ^ v32;
            v34 = v28 + v30;
            v35 = v34 ^ __ROR8__(v30, 51);
            v36 = v31 + v33;
            v37 = __ROR8__(v33, 48);
            v38 = (v36 ^ v37) + __ROR8__(v34, 32);
            v29 = v38 ^ __ROR8__(v36 ^ v37, 43);
            v39 = v36 + v35;
            v30 = v39 ^ __ROR8__(v35, 47);
            v31 = __ROR8__(v39, 32);
            *&buf[24] = v31;
            v170 = v29;
            v28 = v38 ^ v32;
            *&buf[8] = v28;
            *&buf[16] = v30;
            v12 -= 8;
            v13 += 8;
          }

          while (v12 > 7);
        }

        v15 = 0;
        goto LABEL_28;
      }

      if (*buf != 2000)
      {
        if (*buf == 3000)
        {
          _MSV_XXH_XXH32_update(&buf[8], uTF8String, v11);
        }

        goto LABEL_78;
      }

      v47 = v11 + buf[19];
      if (v47 < 4)
      {
        v48 = &buf[buf[19] + 16];
        v49 = (v47 - buf[19]);
        if (v49 <= 1)
        {
          if (v47 == buf[19])
          {
LABEL_77:
            *&buf[12] += v12;
            goto LABEL_78;
          }

          if (v49 == 1)
          {
            *v48 = *uTF8String;
            goto LABEL_77;
          }

LABEL_61:
          memcpy(v48, uTF8String, (v47 - buf[19]));
          goto LABEL_77;
        }

        if (v49 == 2)
        {
          v54 = *uTF8String;
        }

        else
        {
          if (v49 != 3)
          {
            goto LABEL_61;
          }

          v54 = *uTF8String;
          v48[2] = uTF8String[2];
        }

        *v48 = v54;
        goto LABEL_77;
      }

      LOBYTE(v50) = 0;
      v51 = v47 & 0xFFFFFFFFFFFFFFFCLL;
      if (buf[19] > 1u)
      {
        if (buf[19] != 2)
        {
          LOBYTE(v52) = 0;
          LOBYTE(v53) = 0;
          v55 = 0;
          if (buf[19] == 3)
          {
            LOBYTE(v52) = buf[16];
            v50 = HIBYTE(*&buf[16]);
            LOBYTE(v53) = buf[18];
            v55 = *uTF8String;
          }

          goto LABEL_67;
        }

        LOBYTE(v52) = buf[16];
        v50 = HIBYTE(*&buf[16]);
        v53 = *uTF8String;
      }

      else
      {
        if (!buf[19])
        {
          v52 = *uTF8String;
          v50 = *uTF8String >> 8;
          v53 = HIWORD(*uTF8String);
          v55 = HIBYTE(*uTF8String);
          goto LABEL_67;
        }

        LOBYTE(v52) = buf[16];
        LOBYTE(v50) = *uTF8String;
        v53 = *(uTF8String + 1);
      }

      v55 = v53 >> 8;
LABEL_67:
      v56 = v47 & 3;
      v57 = (v53 << 16) | (v55 << 24) | v52 | (v50 << 8);
      HIDWORD(v58) = (461845907 * ((380141568 * v57) | ((-862048943 * v57) >> 17))) ^ *&buf[8];
      LODWORD(v58) = HIDWORD(v58);
      v59 = 5 * (v58 >> 19) - 430675100;
      *&buf[8] = v59;
      v60 = &uTF8String[-buf[19] + 4];
      v61 = &uTF8String[v51 - buf[19]];
      while (v60 < v61)
      {
        v62 = *v60;
        v60 += 4;
        HIDWORD(v63) = (461845907 * ((380141568 * v62) | ((-862048943 * v62) >> 17))) ^ v59;
        LODWORD(v63) = HIDWORD(v63);
        v59 = 5 * (v63 >> 19) - 430675100;
        *&buf[8] = v59;
      }

      if (v56 > 1)
      {
        if (v56 == 2)
        {
          *&buf[16] = *v61;
        }

        else
        {
          v64 = *v61;
          buf[18] = v61[2];
          *&buf[16] = v64;
        }
      }

      else if (v56)
      {
        buf[16] = *v61;
      }

      buf[19] = v56;
      goto LABEL_77;
    }
  }

LABEL_166:

  v162 = *MEMORY[0x1E69E9840];
  return v4 == 0;
}

- (void)dealloc
{
  if (!self->_invalid)
  {
    [(MSVSQLDatabaseTransaction *)self rollback];
  }

  v3.receiver = self;
  v3.super_class = MSVSQLDatabaseTransaction;
  [(MSVSQLDatabaseTransaction *)&v3 dealloc];
}

- (__CFString)initWithConnection:(void *)connection name:(void *)name error:
{
  v223[0] = *MEMORY[0x1E69E9840];
  v8 = a2;
  connectionCopy = connection;
  if (!self)
  {
    goto LABEL_190;
  }

  v202.receiver = self;
  v202.super_class = MSVSQLDatabaseTransaction;
  v10 = [(__CFString *)&v202 init];
  self = v10;
  if (!v10)
  {
    goto LABEL_190;
  }

  nameCopy = name;
  objc_storeStrong(&v10->data, a2);
  v11 = MSVHasherSharedSeed();
  v12 = v8[7];
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  v208 = 0u;
  *buf = xmmword_1AC881C40;
  *&buf[16] = vaddq_s64(vdupq_n_s64(v11), xmmword_1AC881C50);
  *&v204 = v11;
  *(&v204 + 1) = v11 + 0x61C8864E7A143579;
  v205 = 0u;
  v206 = 0u;
  v207 = 0;
  v13 = v12;
  uTF8String = [v13 UTF8String];
  v15 = [v13 length];
  v16 = v15;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        _MSV_XXH_XXH64_update(&buf[8], uTF8String, v15);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Update(&buf[8], uTF8String, v15);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Update(&buf[8], uTF8String, v15);
          break;
        case 0x10A0:
          CC_SHA256_Update(&buf[8], uTF8String, v15);
          break;
        case 0x11A0:
          CC_SHA512_Update(&buf[8], uTF8String, v15);
          break;
      }
    }

    goto LABEL_71;
  }

  if (*buf > 1999)
  {
    if (*buf != 2000)
    {
      if (*buf == 3000)
      {
        _MSV_XXH_XXH32_update(&buf[8], uTF8String, v15);
      }

      goto LABEL_71;
    }

    v51 = v15 + buf[19];
    if (v51 < 4)
    {
      v52 = &buf[buf[19] + 16];
      v53 = (v51 - buf[19]);
      if (v53 <= 1)
      {
        if (v51 == buf[19])
        {
LABEL_70:
          *&buf[12] += v16;
          goto LABEL_71;
        }

        if (v53 == 1)
        {
          *v52 = *uTF8String;
          goto LABEL_70;
        }

LABEL_54:
        memcpy(v52, uTF8String, (v51 - buf[19]));
        goto LABEL_70;
      }

      if (v53 == 2)
      {
        v58 = *uTF8String;
      }

      else
      {
        if (v53 != 3)
        {
          goto LABEL_54;
        }

        v58 = *uTF8String;
        v52[2] = uTF8String[2];
      }

      *v52 = v58;
      goto LABEL_70;
    }

    LOBYTE(v54) = 0;
    v55 = v51 & 0xFFFFFFFFFFFFFFFCLL;
    if (buf[19] > 1u)
    {
      if (buf[19] != 2)
      {
        LOBYTE(v56) = 0;
        LOBYTE(v57) = 0;
        v59 = 0;
        if (buf[19] == 3)
        {
          LOBYTE(v56) = buf[16];
          v54 = HIBYTE(*&buf[16]);
          LOBYTE(v57) = buf[18];
          v59 = *uTF8String;
        }

        goto LABEL_60;
      }

      LOBYTE(v56) = buf[16];
      v54 = HIBYTE(*&buf[16]);
      v57 = *uTF8String;
    }

    else
    {
      if (!buf[19])
      {
        v56 = *uTF8String;
        v54 = *uTF8String >> 8;
        v57 = HIWORD(*uTF8String);
        v59 = HIBYTE(*uTF8String);
        goto LABEL_60;
      }

      LOBYTE(v56) = buf[16];
      LOBYTE(v54) = *uTF8String;
      v57 = *(uTF8String + 1);
    }

    v59 = v57 >> 8;
LABEL_60:
    v60 = v51 & 3;
    v61 = (v57 << 16) | (v59 << 24) | v56 | (v54 << 8);
    HIDWORD(v62) = (461845907 * ((380141568 * v61) | ((-862048943 * v61) >> 17))) ^ *&buf[8];
    LODWORD(v62) = HIDWORD(v62);
    v63 = 5 * (v62 >> 19) - 430675100;
    *&buf[8] = v63;
    v64 = &uTF8String[-buf[19] + 4];
    v65 = &uTF8String[v55 - buf[19]];
    while (v64 < v65)
    {
      v66 = *v64;
      v64 += 4;
      HIDWORD(v67) = (461845907 * ((380141568 * v66) | ((-862048943 * v66) >> 17))) ^ v63;
      LODWORD(v67) = HIDWORD(v67);
      v63 = 5 * (v67 >> 19) - 430675100;
      *&buf[8] = v63;
    }

    if (v60 > 1)
    {
      if (v60 == 2)
      {
        *&buf[16] = *v65;
      }

      else
      {
        v68 = *v65;
        buf[18] = v65[2];
        *&buf[16] = v68;
      }
    }

    else if (v60)
    {
      buf[16] = *v65;
    }

    buf[19] = v60;
    goto LABEL_70;
  }

  if (!*buf)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [currentHandler handleFailureInFunction:v50 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_71;
  }

  if (*buf != 1000)
  {
    goto LABEL_71;
  }

  v17 = HIBYTE(*(&v204 + 1));
  v18 = *(&v204 + 1) & 0xFFFFFFFFFFFFFFLL;
  v19 = HIBYTE(*(&v204 + 1)) & 7;
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = 8 - v19;
  v21 = v15 - (8 - v19);
  if (v15 >= 8 - v19)
  {
    v22 = 8 * v19;
    v23 = uTF8String;
    v24 = *(&v204 + 1) & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v25 = *v23++;
      v24 |= v25 << v22;
      v22 += 8;
    }

    while (v22 != 64);
    v26 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
    v27 = *&buf[24] + (v204 ^ v24);
    v28 = __ROR8__(v204 ^ v24, 48);
    v29 = (v27 ^ v28) + __ROR8__(*&buf[8] + *&buf[16], 32);
    v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
    v31 = v27 + v26;
    *&buf[24] = __ROR8__(v31, 32);
    *&v204 = v30;
    *&buf[8] = v29 ^ v24;
    *&buf[16] = v31 ^ __ROR8__(v26, 47);
    uTF8String += v20;
    *(&v204 + 1) = (v20 + v17) << 56;
    v16 = v21;
LABEL_17:
    if (v16 >= 8)
    {
      v32 = *&buf[8];
      v35 = *&buf[24];
      v34 = *&buf[16];
      v33 = v204;
      do
      {
        v36 = *uTF8String;
        uTF8String += 8;
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
        *&buf[24] = v35;
        *&v204 = v33;
        v32 = v42 ^ v36;
        *&buf[8] = v32;
        *&buf[16] = v34;
        v16 -= 8;
        v17 += 8;
      }

      while (v16 > 7);
    }

    v19 = 0;
  }

  if (v16)
  {
    v44 = 0;
    v45 = 0;
    v46 = v16;
    do
    {
      v47 = *uTF8String++;
      v45 |= v47 << v44;
      v44 += 8;
      --v46;
    }

    while (v46);
    if (v19)
    {
      v48 = (v45 << (8 * v19)) | ((v16 + v17) << 56) | v18;
    }

    else
    {
      v48 = v45 | ((v16 + v17) << 56);
    }
  }

  else
  {
    if (v19)
    {
      goto LABEL_71;
    }

    v48 = v17 << 56;
  }

  *(&v204 + 1) = v48;
LABEL_71:

  memset(&v216[8], 0, 64);
  *v216 = *buf;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        *&v216[8] = _MSV_XXH_XXH64_digest(&buf[8]);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Final(&v216[8], &buf[8]);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Final(&v216[8], &buf[8]);
          break;
        case 0x10A0:
          CC_SHA256_Final(&v216[8], &buf[8]);
          break;
        case 0x11A0:
          CC_SHA512_Final(&v216[8], &buf[8]);
          break;
      }
    }

    goto LABEL_108;
  }

  if (*buf > 1999)
  {
    if (*buf != 2000)
    {
      if (*buf != 3000)
      {
        goto LABEL_108;
      }

      v99 = &v204;
      if (*&buf[12])
      {
        v100 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_1AC881C30), vshlq_u32(*&buf[16], xmmword_1AC881C20)));
      }

      else
      {
        v100 = *&buf[24] + 374761393;
      }

      v104 = *&buf[8] + v100;
      v105 = v205 & 0xF;
      if (v105 >= 4)
      {
        do
        {
          v106 = *v99++;
          HIDWORD(v107) = v104 - 1028477379 * v106;
          LODWORD(v107) = HIDWORD(v107);
          v104 = 668265263 * (v107 >> 15);
          v105 -= 4;
        }

        while (v105 > 3);
      }

      for (; v105; --v105)
      {
        v108 = *v99;
        v99 = (v99 + 1);
        HIDWORD(v109) = v104 + 374761393 * v108;
        LODWORD(v109) = HIDWORD(v109);
        v104 = -1640531535 * (v109 >> 21);
      }

      v110 = -1028477379 * ((-2048144777 * (v104 ^ (v104 >> 15))) ^ ((-2048144777 * (v104 ^ (v104 >> 15))) >> 13));
      v111 = v110 ^ HIWORD(v110);
      goto LABEL_107;
    }

    switch(buf[19])
    {
      case 1:
        v103 = buf[16];
        break;
      case 2:
        v103 = *&buf[16];
        break;
      case 3:
        v103 = *&buf[16] | (buf[18] << 16);
        break;
      default:
        v112 = *&buf[8];
        goto LABEL_106;
    }

    v112 = (461845907 * ((380141568 * v103) | ((-862048943 * v103) >> 17))) ^ *&buf[8];
LABEL_106:
    v113 = -2048144789 * (v112 ^ *&buf[12] ^ ((v112 ^ *&buf[12]) >> 16));
    v111 = (-1028477387 * (v113 ^ (v113 >> 13))) ^ ((-1028477387 * (v113 ^ (v113 >> 13))) >> 16);
    *&buf[8] = v111;
LABEL_107:
    *&v216[8] = v111;
    goto LABEL_108;
  }

  if (*buf)
  {
    if (*buf == 1000)
    {
      v69 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
      v70 = *&buf[24] + (v204 ^ *(&v204 + 1));
      v71 = __ROR8__(v204 ^ *(&v204 + 1), 48);
      v72 = (v70 ^ v71) + __ROR8__(*&buf[8] + *&buf[16], 32);
      v73 = v72 ^ __ROR8__(v70 ^ v71, 43);
      v74 = v70 + v69;
      v75 = v74 ^ __ROR8__(v69, 47);
      v76 = (v72 ^ *(&v204 + 1)) + v75;
      v77 = v76 ^ __ROR8__(v75, 51);
      v78 = (__ROR8__(v74, 32) ^ 0xFFLL) + v73;
      v79 = __ROR8__(v73, 48);
      v80 = __ROR8__(v76, 32) + (v78 ^ v79);
      v81 = v80 ^ __ROR8__(v78 ^ v79, 43);
      v82 = v77 + v78;
      v83 = v82 ^ __ROR8__(v77, 47);
      v84 = v83 + v80;
      v85 = v84 ^ __ROR8__(v83, 51);
      v86 = __ROR8__(v82, 32) + v81;
      v87 = __ROR8__(v81, 48);
      v88 = __ROR8__(v84, 32) + (v86 ^ v87);
      v89 = v88 ^ __ROR8__(v86 ^ v87, 43);
      v90 = v85 + v86;
      v91 = v90 ^ __ROR8__(v85, 47);
      v92 = v91 + v88;
      v93 = v92 ^ __ROR8__(v91, 51);
      v94 = __ROR8__(v90, 32) + v89;
      v95 = __ROR8__(v89, 48);
      v96 = __ROR8__(v92, 32) + (v94 ^ v95);
      v97 = v96 ^ __ROR8__(v94 ^ v95, 43);
      v98 = v93 + v94;
      *&buf[8] = v96;
      *&buf[16] = v98 ^ __ROR8__(v93, 47);
      *&buf[24] = __ROR8__(v98, 32);
      *&v204 = v97;
      *&v216[8] = *&buf[16] ^ v96 ^ *&buf[24] ^ v97;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [currentHandler2 handleFailureInFunction:v102 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_108:
  *v217 = *v216;
  v218 = *&v216[16];
  v219 = *&v216[32];
  v220 = *&v216[48];
  v221 = *&v216[64];
  if (*v216 > 3999)
  {
    if (*v216 > 4255)
    {
      if (*v216 == 4256)
      {
        v155 = &v217[8];
        v156 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v157 = v156;
        for (i = 0; i != 64; i += 2)
        {
          v159 = *v155++;
          v160 = &v156[i];
          *v160 = MSVFastHexStringFromBytes_hexCharacters_4916[v159 >> 4];
          v160[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v159 & 0xF];
        }

        v126 = objc_alloc(MEMORY[0x1E696AEC0]);
        v127 = v157;
        v128 = 64;
      }

      else
      {
        if (*v216 != 4512)
        {
          goto LABEL_173;
        }

        v133 = &v217[8];
        v134 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v135 = v134;
        for (j = 0; j != 128; j += 2)
        {
          v137 = *v133++;
          v138 = &v134[j];
          *v138 = MSVFastHexStringFromBytes_hexCharacters_4916[v137 >> 4];
          v138[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v137 & 0xF];
        }

        v126 = objc_alloc(MEMORY[0x1E696AEC0]);
        v127 = v135;
        v128 = 128;
      }
    }

    else if (*v216 == 4000)
    {
      v145 = &v217[8];
      v146 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v147 = v146;
      for (k = 0; k != 32; k += 2)
      {
        v149 = *v145++;
        v150 = &v146[k];
        *v150 = MSVFastHexStringFromBytes_hexCharacters_4916[v149 >> 4];
        v150[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v149 & 0xF];
      }

      v126 = objc_alloc(MEMORY[0x1E696AEC0]);
      v127 = v147;
      v128 = 32;
    }

    else
    {
      if (*v216 != 4001)
      {
        goto LABEL_173;
      }

      v120 = &v217[8];
      v121 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v122 = v121;
      for (m = 0; m != 40; m += 2)
      {
        v124 = *v120++;
        v125 = &v121[m];
        *v125 = MSVFastHexStringFromBytes_hexCharacters_4916[v124 >> 4];
        v125[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v124 & 0xF];
      }

      v126 = objc_alloc(MEMORY[0x1E696AEC0]);
      v127 = v122;
      v128 = 40;
    }

LABEL_154:
    v144 = [v126 initWithBytesNoCopy:v127 length:v128 encoding:4 freeWhenDone:1];
    goto LABEL_155;
  }

  if (*v216 > 2999)
  {
    if (*v216 == 3000)
    {
      LODWORD(v222[0]) = bswap32(*&v217[8]);
      v151 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v152 = 0;
      v153 = v151 + 1;
      do
      {
        v154 = *(v222 + v152);
        *(v153 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v154 >> 4];
        *v153 = MSVFastHexStringFromBytes_hexCharacters_4916[v154 & 0xF];
        v153 += 2;
        ++v152;
      }

      while (v152 != 4);
      v126 = objc_alloc(MEMORY[0x1E696AEC0]);
      v127 = v151;
      v128 = 8;
    }

    else
    {
      if (*v216 != 3001)
      {
        goto LABEL_173;
      }

      v222[0] = bswap64(*&v217[8]);
      v129 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v130 = 0;
      v131 = v129 + 1;
      do
      {
        v132 = *(v222 + v130);
        *(v131 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v132 >> 4];
        *v131 = MSVFastHexStringFromBytes_hexCharacters_4916[v132 & 0xF];
        v131 += 2;
        ++v130;
      }

      while (v130 != 8);
      v126 = objc_alloc(MEMORY[0x1E696AEC0]);
      v127 = v129;
      v128 = 16;
    }

    goto LABEL_154;
  }

  if (*v216 == 1000)
  {
    v139 = *&v217[8];
    if (*&v217[8])
    {
      v140 = v223 + 1;
      quot = *&v217[8];
      do
      {
        v142 = lldiv(quot, 10);
        quot = v142.quot;
        if (v142.rem >= 0)
        {
          LOBYTE(v143) = v142.rem;
        }

        else
        {
          v143 = -v142.rem;
        }

        *(v140 - 2) = v143 + 48;
        v119 = (v140 - 2);
        --v140;
      }

      while (v142.quot);
      if (v139 < 0)
      {
        *(v140 - 2) = 45;
        v119 = (v140 - 2);
      }

      v118 = (v223 - v119);
      goto LABEL_144;
    }

    goto LABEL_174;
  }

  if (*v216 != 2000)
  {
LABEL_173:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v180 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [currentHandler3 handleFailureInFunction:v180 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    selfCopy = &stru_1F214F018;
    goto LABEL_156;
  }

  v114 = *&v217[8];
  if (*&v217[8])
  {
    v115 = v223;
    do
    {
      v116 = ldiv(v114, 10);
      v114 = v116.quot;
      if (v116.rem >= 0)
      {
        LOBYTE(v117) = v116.rem;
      }

      else
      {
        v117 = -v116.rem;
      }

      *(v115 - 1) = v117 + 48;
      v115 = (v115 - 1);
    }

    while (v116.quot);
    v118 = (v223 - v115);
    v119 = v115;
LABEL_144:
    v144 = CFStringCreateWithBytes(0, v119, v118, 0x8000100u, 0);
LABEL_155:
    selfCopy = v144;
    goto LABEL_156;
  }

LABEL_174:
  selfCopy = @"0";
LABEL_156:

  v162 = os_log_create("com.apple.amp.MediaServices", "SQL");
  if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = selfCopy;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    *&buf[24] = connectionCopy;
    _os_log_impl(&dword_1AC81F000, v162, OS_LOG_TYPE_DEFAULT, "[SQL:%{public}@:%p] initWithConnection:… name:%{public}@… | taking process assertion [database transaction]", buf, 0x20u);
  }

  v163 = connectionCopy;
  if (+[MSVSonicAssertion hasEntitlement])
  {
    v164 = [[MSVSonicAssertion alloc] initWithName:v163];
    goto LABEL_179;
  }

  v165 = [_MSVSQLProcessAssertion alloc];
  v166 = v163;
  if (!v165)
  {
    v164 = 0;
    goto LABEL_178;
  }

  *buf = v165;
  *&buf[8] = _MSVSQLProcessAssertion;
  v164 = objc_msgSendSuper2(buf, sel_init);
  if (v164)
  {
    v198 = v8;
    v167 = connectionCopy;
    v168 = [v166 copy];
    name = v164->_name;
    v164->_name = v168;

    os_unfair_lock_lock(&__assertionLock);
    v170 = __assertion;
    v171 = v170;
    if (v170 && [(MSVSonicAssertion *)v170 valid]&& (BKSProcessAssertionBackgroundTimeRemaining(), v172 >= 5.0))
    {
      ++__assertionCount;
    }

    else
    {
      v173 = os_log_create("com.apple.amp.MediaServices", "SQL");
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        *v217 = 0;
        _os_log_impl(&dword_1AC81F000, v173, OS_LOG_TYPE_DEFAULT, "[SQL] Taking Process Assertion", v217, 2u);
      }

      v174 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:1 reason:4 name:@"MSVSQLDatabase"];
      v175 = __assertion;
      __assertion = v174;

      acquire = [__assertion acquire];
      if (v171)
      {
        v177 = os_log_create("com.apple.amp.MediaServices", "SQL");
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          *v217 = 0;
          _os_log_impl(&dword_1AC81F000, v177, OS_LOG_TYPE_DEFAULT, "[SQL] Invalidating Existing Process Assertion", v217, 2u);
        }

        [(MSVSonicAssertion *)v171 invalidate];
      }

      ++__assertionCount;
      if ((acquire & 1) == 0)
      {
        __assertionCount = 0;
        v178 = __assertion;
        __assertion = 0;

        os_unfair_lock_unlock(&__assertionLock);
        v171 = v164;
        v164 = 0;
LABEL_177:

        connectionCopy = v167;
        v8 = v198;
        goto LABEL_178;
      }
    }

    os_unfair_lock_unlock(&__assertionLock);
    goto LABEL_177;
  }

LABEL_178:

LABEL_179:
  length = self->length;
  self->length = v164;

  v182 = self->length;
  v183 = os_log_create("com.apple.amp.MediaServices", "SQL");
  v184 = v183;
  if (v182)
  {
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      v185 = self->length;
      *buf = 138544130;
      *&buf[4] = selfCopy;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2114;
      *&buf[24] = v163;
      LOWORD(v204) = 2114;
      *(&v204 + 2) = v185;
      v186 = "[SQL:%{public}@:%p] initWithConnection:… name:%{public}@… | acquired process assertion [database transaction] assertion=%{public}@";
      v187 = v184;
      v188 = OS_LOG_TYPE_DEFAULT;
      v189 = 42;
LABEL_184:
      _os_log_impl(&dword_1AC81F000, v187, v188, v186, buf, v189);
    }
  }

  else if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    *&buf[4] = selfCopy;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    *&buf[24] = v163;
    v186 = "[SQL:%{public}@:%p] initWithConnection:… name:%{public}@… | failed to acquire process assertion [database transaction]";
    v187 = v184;
    v188 = OS_LOG_TYPE_ERROR;
    v189 = 32;
    goto LABEL_184;
  }

  v190 = [v163 copy];
  isa = self[1].isa;
  self[1].isa = v190;

  v201 = 0;
  v192 = [(__CFString *)self statementWithString:@"BEGIN TRANSACTION" error:&v201];
  v193 = v201;
  v200 = v193;
  [(__CFString *)self executeStatement:v192 error:&v200];
  v194 = v200;

  if (v194)
  {
    if (nameCopy)
    {
      v195 = v194;
      *nameCopy = v194;
    }

    v192 = selfCopy;
    selfCopy = self;
    self = 0;
  }

LABEL_190:
  v196 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)_releaseSavepoint:(id)savepoint
{
  savepointCopy = savepoint;
  v5 = [(MSVSQLDatabaseTransaction *)self statementWithString:@"RELEASE SAVEPOINT @name" error:0];
  name = [savepointCopy name];

  [v5 bindStringValue:name toParameterNamed:@"@name"];
  v8 = 0;
  [(MSVSQLDatabaseTransaction *)self executeStatement:v5 error:&v8];
  LOBYTE(self) = v8 == 0;

  return self;
}

- (BOOL)executeStatementString:(id)string error:(id *)error
{
  stringCopy = string;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:824 description:@"Attempt to use invalidated transaction."];
  }

  v8 = [(_MSVSQLConnection *)self->_connection executeStatementString:stringCopy error:error];

  return v8;
}

- (id)resultsForStatement:(id)statement
{
  statementCopy = statement;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:819 description:@"Attempt to use invalidated transaction."];
  }

  v6 = [[MSVSQLRowEnumerator alloc] initWithStatement:statementCopy];

  return v6;
}

- (BOOL)executeStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:814 description:@"Attempt to use invalidated transaction."];
  }

  v8 = [(_MSVSQLConnection *)self->_connection executeStatement:statementCopy error:error];

  return v8;
}

- (id)statementWithString:(id)string error:(id *)error
{
  stringCopy = string;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:809 description:@"Attempt to use invalidated transaction."];
  }

  v8 = [(_MSVSQLConnection *)self->_connection statementWithString:stringCopy error:error];

  return v8;
}

- (BOOL)rollbackToSavepoint:(id)savepoint
{
  savepointCopy = savepoint;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:797 description:@"Attempt to use invalidated transaction."];
  }

  v6 = [(MSVSQLDatabaseTransaction *)self statementWithString:@"ROLLBACK TRANSACTION TO SAVEPOINT @name" error:0];
  name = [savepointCopy name];
  [v6 bindStringValue:name toParameterNamed:@"@name"];

  v11 = 0;
  [(MSVSQLDatabaseTransaction *)self executeStatement:v6 error:&v11];
  v8 = v11 == 0;

  return v8;
}

- (id)createSavepoint
{
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:785 description:@"Attempt to use invalidated transaction."];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v5 = [(MSVSQLDatabaseTransaction *)self statementWithString:@"SAVEPOINT @name" error:0];
  [v5 bindStringValue:uUIDString toParameterNamed:@"@name"];
  [(MSVSQLDatabaseTransaction *)self executeStatement:v5 error:0];
  v6 = [_MSVSQLDatabaseTransactionSavepoint alloc];
  selfCopy = self;
  v8 = uUIDString;
  if (v6)
  {
    v15.receiver = v6;
    v15.super_class = _MSVSQLDatabaseTransactionSavepoint;
    v9 = [(MSVSQLDatabaseTransaction *)&v15 init];
    v6 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_connection, self);
      v10 = [v8 copy];
      name = v6->_name;
      v6->_name = v10;
    }
  }

  return v6;
}

- (BOOL)rollback
{
  v187 = *MEMORY[0x1E69E9840];
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:762 description:@"Attempt to use invalidated transaction."];
  }

  v3 = [(MSVSQLDatabaseTransaction *)self statementWithString:@"ROLLBACK TRANSACTION" error:0];
  v168 = 0;
  [(MSVSQLDatabaseTransaction *)self executeStatement:v3 error:&v168];
  v4 = v168;
  [v3 invalidate];
  if (!v4)
  {
    self->_invalid = 1;
    connection = self->_connection;
    if (connection && !connection->_invalid)
    {
      connection->_invalid = 1;
      sqlite3_close(connection->_connectionHandle);
      connection->_connectionHandle = 0;
    }

    if (self->_assertion)
    {
      v6 = MSVHasherSharedSeed();
      v7 = self->_connection;
      if (v7)
      {
        v7 = v7->_databaseURI;
      }

      v8 = v7;
      v182 = 0u;
      v181 = 0u;
      v180 = 0u;
      v179 = 0u;
      v178 = 0u;
      v177 = 0u;
      v176 = 0u;
      v175 = 0u;
      *buf = xmmword_1AC881C40;
      *&buf[16] = vaddq_s64(vdupq_n_s64(v6), xmmword_1AC881C50);
      v170 = v6;
      v171 = v6 + 0x61C8864E7A143579;
      v172 = 0u;
      v173 = 0u;
      v174 = 0;
      v9 = v8;
      uTF8String = [(_MSVSQLConnection *)v9 UTF8String];
      v11 = [(_MSVSQLConnection *)v9 length];
      v12 = v11;
      if (*buf > 3000)
      {
        if (*buf <= 4000)
        {
          if (*buf == 3001)
          {
            _MSV_XXH_XXH64_update(&buf[8], uTF8String, v11);
          }

          else if (*buf == 4000)
          {
            CC_MD5_Update(&buf[8], uTF8String, v11);
          }
        }

        else
        {
          switch(*buf)
          {
            case 0xFA1:
              CC_SHA1_Update(&buf[8], uTF8String, v11);
              break;
            case 0x10A0:
              CC_SHA256_Update(&buf[8], uTF8String, v11);
              break;
            case 0x11A0:
              CC_SHA512_Update(&buf[8], uTF8String, v11);
              break;
          }
        }

        goto LABEL_78;
      }

      if (*buf <= 1999)
      {
        if (!*buf)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
          [currentHandler2 handleFailureInFunction:v46 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

          goto LABEL_78;
        }

        if (*buf != 1000)
        {
          goto LABEL_78;
        }

        v13 = HIBYTE(v171);
        v14 = v171 & 0xFFFFFFFFFFFFFFLL;
        v15 = HIBYTE(v171) & 7;
        if (v15)
        {
          v16 = 8 - v15;
          v17 = v11 - (8 - v15);
          if (v11 < 8 - v15)
          {
LABEL_28:
            if (v12)
            {
              v40 = 0;
              v41 = 0;
              v42 = v12;
              do
              {
                v43 = *uTF8String++;
                v41 |= v43 << v40;
                v40 += 8;
                --v42;
              }

              while (v42);
              if (v15)
              {
                v44 = (v41 << (8 * v15)) | ((v12 + v13) << 56) | v14;
              }

              else
              {
                v44 = v41 | ((v12 + v13) << 56);
              }
            }

            else
            {
              if (v15)
              {
                goto LABEL_78;
              }

              v44 = v13 << 56;
            }

            v171 = v44;
LABEL_78:

            memset(&v183[8], 0, 64);
            *v183 = *buf;
            if (*buf > 3000)
            {
              if (*buf <= 4000)
              {
                if (*buf == 3001)
                {
                  *&v183[8] = _MSV_XXH_XXH64_digest(&buf[8]);
                }

                else if (*buf == 4000)
                {
                  CC_MD5_Final(&v183[8], &buf[8]);
                }
              }

              else
              {
                switch(*buf)
                {
                  case 0xFA1:
                    CC_SHA1_Final(&v183[8], &buf[8]);
                    break;
                  case 0x10A0:
                    CC_SHA256_Final(&v183[8], &buf[8]);
                    break;
                  case 0x11A0:
                    CC_SHA512_Final(&v183[8], &buf[8]);
                    break;
                }
              }

              goto LABEL_115;
            }

            if (*buf <= 1999)
            {
              if (*buf)
              {
                if (*buf == 1000)
                {
                  v65 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
                  v66 = *&buf[24] + (v170 ^ v171);
                  v67 = __ROR8__(v170 ^ v171, 48);
                  v68 = (v66 ^ v67) + __ROR8__(*&buf[8] + *&buf[16], 32);
                  v69 = v68 ^ __ROR8__(v66 ^ v67, 43);
                  v70 = v66 + v65;
                  v71 = v70 ^ __ROR8__(v65, 47);
                  v72 = (v68 ^ v171) + v71;
                  v73 = v72 ^ __ROR8__(v71, 51);
                  v74 = (__ROR8__(v70, 32) ^ 0xFFLL) + v69;
                  v75 = __ROR8__(v69, 48);
                  v76 = __ROR8__(v72, 32) + (v74 ^ v75);
                  v77 = v76 ^ __ROR8__(v74 ^ v75, 43);
                  v78 = v73 + v74;
                  v79 = v78 ^ __ROR8__(v73, 47);
                  v80 = v79 + v76;
                  v81 = v80 ^ __ROR8__(v79, 51);
                  v82 = __ROR8__(v78, 32) + v77;
                  v83 = __ROR8__(v77, 48);
                  v84 = __ROR8__(v80, 32) + (v82 ^ v83);
                  v85 = v84 ^ __ROR8__(v82 ^ v83, 43);
                  v86 = v81 + v82;
                  v87 = v86 ^ __ROR8__(v81, 47);
                  v88 = v87 + v84;
                  v89 = v88 ^ __ROR8__(v87, 51);
                  v90 = __ROR8__(v86, 32) + v85;
                  v91 = __ROR8__(v85, 48);
                  v92 = __ROR8__(v88, 32) + (v90 ^ v91);
                  v93 = v92 ^ __ROR8__(v90 ^ v91, 43);
                  v94 = v89 + v90;
                  *&buf[8] = v92;
                  *&buf[16] = v94 ^ __ROR8__(v89, 47);
                  *&buf[24] = __ROR8__(v94, 32);
                  v170 = v93;
                  *&v183[8] = *&buf[16] ^ v92 ^ *&buf[24] ^ v93;
                }
              }

              else
              {
                currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
                v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
                [currentHandler3 handleFailureInFunction:v98 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
              }

LABEL_115:
              v184[0] = *v183;
              v184[1] = *&v183[16];
              v184[2] = *&v183[32];
              v184[3] = *&v183[48];
              v185 = *&v183[64];
              if (*v183 > 3999)
              {
                if (*v183 > 4255)
                {
                  if (*v183 == 4256)
                  {
                    v151 = v184 + 8;
                    v152 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                    v153 = v152;
                    for (i = 0; i != 64; i += 2)
                    {
                      v155 = *v151++;
                      v156 = &v152[i];
                      *v156 = MSVFastHexStringFromBytes_hexCharacters_4916[v155 >> 4];
                      v156[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v155 & 0xF];
                    }

                    v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v123 = v153;
                    v124 = 64;
                  }

                  else
                  {
                    if (*v183 != 4512)
                    {
                      goto LABEL_167;
                    }

                    v129 = v184 + 8;
                    v130 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                    v131 = v130;
                    for (j = 0; j != 128; j += 2)
                    {
                      v133 = *v129++;
                      v134 = &v130[j];
                      *v134 = MSVFastHexStringFromBytes_hexCharacters_4916[v133 >> 4];
                      v134[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v133 & 0xF];
                    }

                    v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v123 = v131;
                    v124 = 128;
                  }
                }

                else if (*v183 == 4000)
                {
                  v141 = v184 + 8;
                  v142 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                  v143 = v142;
                  for (k = 0; k != 32; k += 2)
                  {
                    v145 = *v141++;
                    v146 = &v142[k];
                    *v146 = MSVFastHexStringFromBytes_hexCharacters_4916[v145 >> 4];
                    v146[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v145 & 0xF];
                  }

                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v143;
                  v124 = 32;
                }

                else
                {
                  if (*v183 != 4001)
                  {
                    goto LABEL_167;
                  }

                  v116 = v184 + 8;
                  v117 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                  v118 = v117;
                  for (m = 0; m != 40; m += 2)
                  {
                    v120 = *v116++;
                    v121 = &v117[m];
                    *v121 = MSVFastHexStringFromBytes_hexCharacters_4916[v120 >> 4];
                    v121[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v120 & 0xF];
                  }

                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v118;
                  v124 = 40;
                }
              }

              else
              {
                if (*v183 <= 2999)
                {
                  if (*v183 == 1000)
                  {
                    v135 = *(&v184[0] + 1);
                    if (*(&v184[0] + 1))
                    {
                      v136 = &v187 + 1;
                      quot = *(&v184[0] + 1);
                      do
                      {
                        v138 = lldiv(quot, 10);
                        quot = v138.quot;
                        if (v138.rem >= 0)
                        {
                          LOBYTE(v139) = v138.rem;
                        }

                        else
                        {
                          v139 = -v138.rem;
                        }

                        *(v136 - 2) = v139 + 48;
                        v115 = (v136 - 2);
                        --v136;
                      }

                      while (v138.quot);
                      if (v135 < 0)
                      {
                        *(v136 - 2) = 45;
                        v115 = (v136 - 2);
                      }

                      v114 = (&v187 - v115);
                      goto LABEL_151;
                    }

LABEL_168:
                    v157 = @"0";
                    goto LABEL_163;
                  }

                  if (*v183 == 2000)
                  {
                    v110 = DWORD2(v184[0]);
                    if (DWORD2(v184[0]))
                    {
                      v111 = &v187;
                      do
                      {
                        v112 = ldiv(v110, 10);
                        v110 = v112.quot;
                        if (v112.rem >= 0)
                        {
                          LOBYTE(v113) = v112.rem;
                        }

                        else
                        {
                          v113 = -v112.rem;
                        }

                        *(v111 - 1) = v113 + 48;
                        v111 = (v111 - 1);
                      }

                      while (v112.quot);
                      v114 = (&v187 - v111);
                      v115 = v111;
LABEL_151:
                      v140 = CFStringCreateWithBytes(0, v115, v114, 0x8000100u, 0);
LABEL_162:
                      v157 = v140;
LABEL_163:

                      v158 = os_log_create("com.apple.amp.MediaServices", "SQL");
                      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                      {
                        v159 = self->_connection;
                        assertion = self->_assertion;
                        *buf = 138543874;
                        *&buf[4] = v157;
                        *&buf[12] = 2048;
                        *&buf[14] = v159;
                        *&buf[22] = 2114;
                        *&buf[24] = assertion;
                        _os_log_impl(&dword_1AC81F000, v158, OS_LOG_TYPE_DEFAULT, "[SQL:%{public}@:%p] commit | invalidating process assertion [database transaction] assertion=%{public}@", buf, 0x20u);
                      }

                      [(_MSVSQLAssertion *)self->_assertion invalidate];
                      v161 = self->_assertion;
                      self->_assertion = 0;

                      goto LABEL_166;
                    }

                    goto LABEL_168;
                  }

LABEL_167:
                  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
                  v165 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                  [currentHandler4 handleFailureInFunction:v165 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                  v157 = &stru_1F214F018;
                  goto LABEL_163;
                }

                if (*v183 == 3000)
                {
                  LODWORD(v186[0]) = bswap32(DWORD2(v184[0]));
                  v147 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                  v148 = 0;
                  v149 = v147 + 1;
                  do
                  {
                    v150 = *(v186 + v148);
                    *(v149 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v150 >> 4];
                    *v149 = MSVFastHexStringFromBytes_hexCharacters_4916[v150 & 0xF];
                    v149 += 2;
                    ++v148;
                  }

                  while (v148 != 4);
                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v147;
                  v124 = 8;
                }

                else
                {
                  if (*v183 != 3001)
                  {
                    goto LABEL_167;
                  }

                  v186[0] = bswap64(*(&v184[0] + 1));
                  v125 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                  v126 = 0;
                  v127 = v125 + 1;
                  do
                  {
                    v128 = *(v186 + v126);
                    *(v127 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v128 >> 4];
                    *v127 = MSVFastHexStringFromBytes_hexCharacters_4916[v128 & 0xF];
                    v127 += 2;
                    ++v126;
                  }

                  while (v126 != 8);
                  v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v123 = v125;
                  v124 = 16;
                }
              }

              v140 = [v122 initWithBytesNoCopy:v123 length:v124 encoding:4 freeWhenDone:1];
              goto LABEL_162;
            }

            if (*buf != 2000)
            {
              if (*buf != 3000)
              {
                goto LABEL_115;
              }

              v95 = &v170;
              if (*&buf[12])
              {
                v96 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_1AC881C30), vshlq_u32(*&buf[16], xmmword_1AC881C20)));
              }

              else
              {
                v96 = *&buf[24] + 374761393;
              }

              v100 = *&buf[8] + v96;
              v101 = v172 & 0xF;
              if (v101 >= 4)
              {
                do
                {
                  v102 = *v95;
                  v95 = (v95 + 4);
                  HIDWORD(v103) = v100 - 1028477379 * v102;
                  LODWORD(v103) = HIDWORD(v103);
                  v100 = 668265263 * (v103 >> 15);
                  v101 -= 4;
                }

                while (v101 > 3);
              }

              for (; v101; --v101)
              {
                v104 = *v95;
                v95 = (v95 + 1);
                HIDWORD(v105) = v100 + 374761393 * v104;
                LODWORD(v105) = HIDWORD(v105);
                v100 = -1640531535 * (v105 >> 21);
              }

              v106 = -1028477379 * ((-2048144777 * (v100 ^ (v100 >> 15))) ^ ((-2048144777 * (v100 ^ (v100 >> 15))) >> 13));
              v107 = v106 ^ HIWORD(v106);
              goto LABEL_114;
            }

            switch(buf[19])
            {
              case 1:
                v99 = buf[16];
                break;
              case 2:
                v99 = *&buf[16];
                break;
              case 3:
                v99 = *&buf[16] | (buf[18] << 16);
                break;
              default:
                v108 = *&buf[8];
                goto LABEL_113;
            }

            v108 = (461845907 * ((380141568 * v99) | ((-862048943 * v99) >> 17))) ^ *&buf[8];
LABEL_113:
            v109 = -2048144789 * (v108 ^ *&buf[12] ^ ((v108 ^ *&buf[12]) >> 16));
            v107 = (-1028477387 * (v109 ^ (v109 >> 13))) ^ ((-1028477387 * (v109 ^ (v109 >> 13))) >> 16);
            *&buf[8] = v107;
LABEL_114:
            *&v183[8] = v107;
            goto LABEL_115;
          }

          v18 = 8 * v15;
          v19 = uTF8String;
          v20 = v171 & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v21 = *v19++;
            v20 |= v21 << v18;
            v18 += 8;
          }

          while (v18 != 64);
          v22 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
          v23 = *&buf[24] + (v170 ^ v20);
          v24 = __ROR8__(v170 ^ v20, 48);
          v25 = (v23 ^ v24) + __ROR8__(*&buf[8] + *&buf[16], 32);
          v26 = v25 ^ __ROR8__(v23 ^ v24, 43);
          v27 = v23 + v22;
          *&buf[24] = __ROR8__(v27, 32);
          v170 = v26;
          *&buf[8] = v25 ^ v20;
          *&buf[16] = v27 ^ __ROR8__(v22, 47);
          uTF8String += v16;
          v171 = (v16 + v13) << 56;
          v12 = v17;
        }

        if (v12 >= 8)
        {
          v28 = *&buf[8];
          v31 = *&buf[24];
          v30 = *&buf[16];
          v29 = v170;
          do
          {
            v32 = *uTF8String;
            uTF8String += 8;
            v33 = v29 ^ v32;
            v34 = v28 + v30;
            v35 = v34 ^ __ROR8__(v30, 51);
            v36 = v31 + v33;
            v37 = __ROR8__(v33, 48);
            v38 = (v36 ^ v37) + __ROR8__(v34, 32);
            v29 = v38 ^ __ROR8__(v36 ^ v37, 43);
            v39 = v36 + v35;
            v30 = v39 ^ __ROR8__(v35, 47);
            v31 = __ROR8__(v39, 32);
            *&buf[24] = v31;
            v170 = v29;
            v28 = v38 ^ v32;
            *&buf[8] = v28;
            *&buf[16] = v30;
            v12 -= 8;
            v13 += 8;
          }

          while (v12 > 7);
        }

        v15 = 0;
        goto LABEL_28;
      }

      if (*buf != 2000)
      {
        if (*buf == 3000)
        {
          _MSV_XXH_XXH32_update(&buf[8], uTF8String, v11);
        }

        goto LABEL_78;
      }

      v47 = v11 + buf[19];
      if (v47 < 4)
      {
        v48 = &buf[buf[19] + 16];
        v49 = (v47 - buf[19]);
        if (v49 <= 1)
        {
          if (v47 == buf[19])
          {
LABEL_77:
            *&buf[12] += v12;
            goto LABEL_78;
          }

          if (v49 == 1)
          {
            *v48 = *uTF8String;
            goto LABEL_77;
          }

LABEL_61:
          memcpy(v48, uTF8String, (v47 - buf[19]));
          goto LABEL_77;
        }

        if (v49 == 2)
        {
          v54 = *uTF8String;
        }

        else
        {
          if (v49 != 3)
          {
            goto LABEL_61;
          }

          v54 = *uTF8String;
          v48[2] = uTF8String[2];
        }

        *v48 = v54;
        goto LABEL_77;
      }

      LOBYTE(v50) = 0;
      v51 = v47 & 0xFFFFFFFFFFFFFFFCLL;
      if (buf[19] > 1u)
      {
        if (buf[19] != 2)
        {
          LOBYTE(v52) = 0;
          LOBYTE(v53) = 0;
          v55 = 0;
          if (buf[19] == 3)
          {
            LOBYTE(v52) = buf[16];
            v50 = HIBYTE(*&buf[16]);
            LOBYTE(v53) = buf[18];
            v55 = *uTF8String;
          }

          goto LABEL_67;
        }

        LOBYTE(v52) = buf[16];
        v50 = HIBYTE(*&buf[16]);
        v53 = *uTF8String;
      }

      else
      {
        if (!buf[19])
        {
          v52 = *uTF8String;
          v50 = *uTF8String >> 8;
          v53 = HIWORD(*uTF8String);
          v55 = HIBYTE(*uTF8String);
          goto LABEL_67;
        }

        LOBYTE(v52) = buf[16];
        LOBYTE(v50) = *uTF8String;
        v53 = *(uTF8String + 1);
      }

      v55 = v53 >> 8;
LABEL_67:
      v56 = v47 & 3;
      v57 = (v53 << 16) | (v55 << 24) | v52 | (v50 << 8);
      HIDWORD(v58) = (461845907 * ((380141568 * v57) | ((-862048943 * v57) >> 17))) ^ *&buf[8];
      LODWORD(v58) = HIDWORD(v58);
      v59 = 5 * (v58 >> 19) - 430675100;
      *&buf[8] = v59;
      v60 = &uTF8String[-buf[19] + 4];
      v61 = &uTF8String[v51 - buf[19]];
      while (v60 < v61)
      {
        v62 = *v60;
        v60 += 4;
        HIDWORD(v63) = (461845907 * ((380141568 * v62) | ((-862048943 * v62) >> 17))) ^ v59;
        LODWORD(v63) = HIDWORD(v63);
        v59 = 5 * (v63 >> 19) - 430675100;
        *&buf[8] = v59;
      }

      if (v56 > 1)
      {
        if (v56 == 2)
        {
          *&buf[16] = *v61;
        }

        else
        {
          v64 = *v61;
          buf[18] = v61[2];
          *&buf[16] = v64;
        }
      }

      else if (v56)
      {
        buf[16] = *v61;
      }

      buf[19] = v56;
      goto LABEL_77;
    }
  }

LABEL_166:

  v162 = *MEMORY[0x1E69E9840];
  return v4 == 0;
}

@end