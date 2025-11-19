@interface _MSVSQLConnection
- (BOOL)executeStatement:(id)a3 error:(id *)a4;
- (BOOL)executeStatementString:(id)a3 error:(id *)a4;
- (id)_cloneWithOptions:(unint64_t)a3 error:(id *)a4;
- (id)initWithDatabaseURI:(uint64_t)a3 options:(void *)a4 error:;
- (id)resultsForStatement:(id)a3;
- (id)statementWithString:(id)a3 error:(id *)a4;
- (sqlite3)lastError;
- (void)_installArraySupport;
- (void)_registerAggregateFunctionDescriptor:(id)a3;
- (void)_registerScalarFunctionDescriptor:(id)a3;
- (void)dealloc;
- (void)mutableCloneWithError:(void *)a1;
- (void)registerAggregateFunctionNamed:(id)a3 arguments:(int64_t)a4 options:(unint64_t)a5 start:(id)a6 add:(id)a7 remove:(id)a8 value:(id)a9;
- (void)registerFunctionNamed:(id)a3 arguments:(int64_t)a4 options:(unint64_t)a5 block:(id)a6;
- (void)unregisterFunctionNamed:(id)a3 arguments:(int64_t)a4;
@end

@implementation _MSVSQLConnection

- (void)dealloc
{
  if (!self->_invalid)
  {
    self->_invalid = 1;
    sqlite3_close(self->_connectionHandle);
    self->_connectionHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = _MSVSQLConnection;
  [(_MSVSQLConnection *)&v3 dealloc];
}

- (id)_cloneWithOptions:(unint64_t)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = [_MSVSQLConnection alloc];
  databaseURI = self->_databaseURI;
  v44 = 0;
  v9 = [(_MSVSQLConnection *)v7 initWithDatabaseURI:a3 options:&v44 error:?];
  v10 = v44;
  v11 = v10;
  if (v10)
  {
    if (a4)
    {
      v12 = v10;
      v13 = 0;
      *a4 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__4910;
    v42 = __Block_byref_object_dispose__4911;
    v43 = 0;
    attachedDatabases = self->_attachedDatabases;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __45___MSVSQLConnection__cloneWithOptions_error___block_invoke;
    v35[3] = &unk_1E79827E0;
    v15 = v9;
    v36 = v15;
    v37 = &v38;
    [(NSMutableDictionary *)attachedDatabases enumerateKeysAndObjectsUsingBlock:v35];
    v16 = v39[5];
    if (v16)
    {
      v13 = 0;
      if (a4)
      {
        *a4 = v16;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = self->_scalarFunctions;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v31 objects:v46 count:16];
      if (v18)
      {
        v19 = *v32;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v17);
            }

            [v15 _registerScalarFunctionDescriptor:*(*(&v31 + 1) + 8 * i)];
          }

          v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v31 objects:v46 count:16];
        }

        while (v18);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = self->_aggregateFunctions;
      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v27 objects:v45 count:16];
      if (v22)
      {
        v23 = *v28;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [v15 _registerAggregateFunctionDescriptor:{*(*(&v27 + 1) + 8 * j), v27}];
          }

          v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v27 objects:v45 count:16];
        }

        while (v22);
      }

      v13 = v15;
    }

    _Block_object_dispose(&v38, 8);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)initWithDatabaseURI:(uint64_t)a3 options:(void *)a4 error:
{
  v202[0] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a1)
  {
    v184.receiver = a1;
    v184.super_class = _MSVSQLConnection;
    a1 = objc_msgSendSuper2(&v184, sel_init);
    if (a1)
    {
      v8 = [v7 copy];
      v9 = *(a1 + 7);
      *(a1 + 7) = v8;

      *(a1 + 5) = a3;
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = *(a1 + 2);
      *(a1 + 2) = v10;

      v12 = [MEMORY[0x1E695DF70] array];
      v13 = *(a1 + 3);
      *(a1 + 3) = v12;

      v14 = [MEMORY[0x1E695DF70] array];
      v15 = *(a1 + 4);
      *(a1 + 4) = v14;

      if (a3)
      {
        v16 = 33554434;
      }

      else
      {
        v16 = 33554433;
      }

      v17 = MSVHasherSharedSeed();
      v18 = v7;
      v197 = 0u;
      v196 = 0u;
      v195 = 0u;
      v194 = 0u;
      v193 = 0u;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      *buf = xmmword_1AC881C40;
      *&buf[16] = vaddq_s64(vdupq_n_s64(v17), xmmword_1AC881C50);
      *&v186 = v17;
      *(&v186 + 1) = v17 + 0x61C8864E7A143579;
      v187 = 0u;
      v188 = 0u;
      v189 = 0;
      v19 = v18;
      v20 = [v19 UTF8String];
      v21 = [v19 length];
      v22 = v21;
      if (*buf > 3000)
      {
        if (*buf <= 4000)
        {
          if (*buf == 3001)
          {
            _MSV_XXH_XXH64_update(&buf[8], v20, v21);
          }

          else if (*buf == 4000)
          {
            CC_MD5_Update(&buf[8], v20, v21);
          }
        }

        else
        {
          switch(*buf)
          {
            case 0xFA1:
              CC_SHA1_Update(&buf[8], v20, v21);
              break;
            case 0x10A0:
              CC_SHA256_Update(&buf[8], v20, v21);
              break;
            case 0x11A0:
              CC_SHA512_Update(&buf[8], v20, v21);
              break;
          }
        }

        goto LABEL_74;
      }

      if (*buf <= 1999)
      {
        if (!*buf)
        {
          v55 = [MEMORY[0x1E696AAA8] currentHandler];
          v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
          [v55 handleFailureInFunction:v56 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

          goto LABEL_74;
        }

        if (*buf != 1000)
        {
          goto LABEL_74;
        }

        v23 = HIBYTE(*(&v186 + 1));
        v24 = *(&v186 + 1) & 0xFFFFFFFFFFFFFFLL;
        v25 = HIBYTE(*(&v186 + 1)) & 7;
        if (v25)
        {
          v26 = 8 - v25;
          v27 = v21 - (8 - v25);
          if (v21 < 8 - v25)
          {
LABEL_24:
            if (v22)
            {
              v50 = 0;
              v51 = 0;
              v52 = v22;
              do
              {
                v53 = *v20++;
                v51 |= v53 << v50;
                v50 += 8;
                --v52;
              }

              while (v52);
              if (v25)
              {
                v54 = (v51 << (8 * v25)) | ((v22 + v23) << 56) | v24;
              }

              else
              {
                v54 = v51 | ((v22 + v23) << 56);
              }
            }

            else
            {
              if (v25)
              {
                goto LABEL_74;
              }

              v54 = v23 << 56;
            }

            *(&v186 + 1) = v54;
LABEL_74:

            memset(&v198[8], 0, 64);
            *v198 = *buf;
            if (*buf > 3000)
            {
              if (*buf <= 4000)
              {
                if (*buf == 3001)
                {
                  *&v198[8] = _MSV_XXH_XXH64_digest(&buf[8]);
                }

                else if (*buf == 4000)
                {
                  CC_MD5_Final(&v198[8], &buf[8]);
                }
              }

              else
              {
                switch(*buf)
                {
                  case 0xFA1:
                    CC_SHA1_Final(&v198[8], &buf[8]);
                    break;
                  case 0x10A0:
                    CC_SHA256_Final(&v198[8], &buf[8]);
                    break;
                  case 0x11A0:
                    CC_SHA512_Final(&v198[8], &buf[8]);
                    break;
                }
              }

              goto LABEL_111;
            }

            if (*buf <= 1999)
            {
              if (*buf)
              {
                if (*buf == 1000)
                {
                  v75 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
                  v76 = *&buf[24] + (v186 ^ *(&v186 + 1));
                  v77 = __ROR8__(v186 ^ *(&v186 + 1), 48);
                  v78 = (v76 ^ v77) + __ROR8__(*&buf[8] + *&buf[16], 32);
                  v79 = v78 ^ __ROR8__(v76 ^ v77, 43);
                  v80 = v76 + v75;
                  v81 = v80 ^ __ROR8__(v75, 47);
                  v82 = (v78 ^ *(&v186 + 1)) + v81;
                  v83 = v82 ^ __ROR8__(v81, 51);
                  v84 = (__ROR8__(v80, 32) ^ 0xFFLL) + v79;
                  v85 = __ROR8__(v79, 48);
                  v86 = __ROR8__(v82, 32) + (v84 ^ v85);
                  v87 = v86 ^ __ROR8__(v84 ^ v85, 43);
                  v88 = v83 + v84;
                  v89 = v88 ^ __ROR8__(v83, 47);
                  v90 = v89 + v86;
                  v91 = v90 ^ __ROR8__(v89, 51);
                  v92 = __ROR8__(v88, 32) + v87;
                  v93 = __ROR8__(v87, 48);
                  v94 = __ROR8__(v90, 32) + (v92 ^ v93);
                  v95 = v94 ^ __ROR8__(v92 ^ v93, 43);
                  v96 = v91 + v92;
                  v97 = v96 ^ __ROR8__(v91, 47);
                  v98 = v97 + v94;
                  v99 = v98 ^ __ROR8__(v97, 51);
                  v100 = __ROR8__(v96, 32) + v95;
                  v101 = __ROR8__(v95, 48);
                  v102 = __ROR8__(v98, 32) + (v100 ^ v101);
                  v103 = v102 ^ __ROR8__(v100 ^ v101, 43);
                  v104 = v99 + v100;
                  *&buf[8] = v102;
                  *&buf[16] = v104 ^ __ROR8__(v99, 47);
                  *&buf[24] = __ROR8__(v104, 32);
                  *&v186 = v103;
                  *&v198[8] = *&buf[16] ^ v102 ^ *&buf[24] ^ v103;
                }
              }

              else
              {
                v107 = [MEMORY[0x1E696AAA8] currentHandler];
                v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
                [v107 handleFailureInFunction:v108 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
              }

LABEL_111:
              v199[0] = *v198;
              v199[1] = *&v198[16];
              v199[2] = *&v198[32];
              v199[3] = *&v198[48];
              v200 = *&v198[64];
              if (*v198 > 3999)
              {
                if (*v198 > 4255)
                {
                  if (*v198 == 4256)
                  {
                    v161 = v199 + 8;
                    v162 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                    v163 = v162;
                    for (i = 0; i != 64; i += 2)
                    {
                      v165 = *v161++;
                      v166 = &v162[i];
                      *v166 = MSVFastHexStringFromBytes_hexCharacters_4916[v165 >> 4];
                      v166[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v165 & 0xF];
                    }

                    v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v133 = v163;
                    v134 = 64;
                  }

                  else
                  {
                    if (*v198 != 4512)
                    {
                      goto LABEL_184;
                    }

                    v139 = v199 + 8;
                    v140 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                    v141 = v140;
                    for (j = 0; j != 128; j += 2)
                    {
                      v143 = *v139++;
                      v144 = &v140[j];
                      *v144 = MSVFastHexStringFromBytes_hexCharacters_4916[v143 >> 4];
                      v144[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v143 & 0xF];
                    }

                    v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v133 = v141;
                    v134 = 128;
                  }
                }

                else if (*v198 == 4000)
                {
                  v151 = v199 + 8;
                  v152 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                  v153 = v152;
                  for (k = 0; k != 32; k += 2)
                  {
                    v155 = *v151++;
                    v156 = &v152[k];
                    *v156 = MSVFastHexStringFromBytes_hexCharacters_4916[v155 >> 4];
                    v156[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v155 & 0xF];
                  }

                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v153;
                  v134 = 32;
                }

                else
                {
                  if (*v198 != 4001)
                  {
                    goto LABEL_184;
                  }

                  v126 = v199 + 8;
                  v127 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                  v128 = v127;
                  for (m = 0; m != 40; m += 2)
                  {
                    v130 = *v126++;
                    v131 = &v127[m];
                    *v131 = MSVFastHexStringFromBytes_hexCharacters_4916[v130 >> 4];
                    v131[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v130 & 0xF];
                  }

                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v128;
                  v134 = 40;
                }
              }

              else
              {
                if (*v198 <= 2999)
                {
                  if (*v198 == 1000)
                  {
                    v145 = *(&v199[0] + 1);
                    if (*(&v199[0] + 1))
                    {
                      v146 = v202 + 1;
                      quot = *(&v199[0] + 1);
                      do
                      {
                        v148 = lldiv(quot, 10);
                        quot = v148.quot;
                        if (v148.rem >= 0)
                        {
                          LOBYTE(v149) = v148.rem;
                        }

                        else
                        {
                          v149 = -v148.rem;
                        }

                        *(v146 - 2) = v149 + 48;
                        v125 = (v146 - 2);
                        --v146;
                      }

                      while (v148.quot);
                      if (v145 < 0)
                      {
                        *(v146 - 2) = 45;
                        v125 = (v146 - 2);
                      }

                      v124 = (v202 - v125);
                      goto LABEL_147;
                    }

                    goto LABEL_185;
                  }

                  if (*v198 == 2000)
                  {
                    v120 = DWORD2(v199[0]);
                    if (DWORD2(v199[0]))
                    {
                      v121 = v202;
                      do
                      {
                        v122 = ldiv(v120, 10);
                        v120 = v122.quot;
                        if (v122.rem >= 0)
                        {
                          LOBYTE(v123) = v122.rem;
                        }

                        else
                        {
                          v123 = -v122.rem;
                        }

                        *(v121 - 1) = v123 + 48;
                        v121 = (v121 - 1);
                      }

                      while (v122.quot);
                      v124 = (v202 - v121);
                      v125 = v121;
LABEL_147:
                      v150 = CFStringCreateWithBytes(0, v125, v124, 0x8000100u, 0);
LABEL_158:
                      v167 = v150;
                      goto LABEL_159;
                    }

LABEL_185:
                    v167 = @"0";
LABEL_159:

                    v168 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138544130;
                      *&buf[4] = v167;
                      *&buf[12] = 2048;
                      *&buf[14] = a1;
                      *&buf[22] = 2114;
                      *&buf[24] = v19;
                      LOWORD(v186) = 2048;
                      *(&v186 + 2) = a3;
                      _os_log_impl(&dword_1AC81F000, v168, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | opening database", buf, 0x2Au);
                    }

                    v169 = OpenSQLiteConnection(v19, a1 + 1, v16);
                    v170 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138544386;
                      *&buf[4] = v167;
                      *&buf[12] = 2048;
                      *&buf[14] = a1;
                      *&buf[22] = 2114;
                      *&buf[24] = v19;
                      LOWORD(v186) = 2048;
                      *(&v186 + 2) = a3;
                      WORD5(v186) = 1024;
                      HIDWORD(v186) = v169;
                      _os_log_impl(&dword_1AC81F000, v170, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | opening database [] result=%d", buf, 0x30u);
                    }

                    if (!v169)
                    {
                      sqlite3_busy_timeout(*(a1 + 1), 1000);
                      sqlite3_exec(*(a1 + 1), "PRAGMA journal_mode=WAL", 0, 0, 0);
LABEL_182:

                      goto LABEL_183;
                    }

                    v171 = OpenSQLiteConnection(v19, a1 + 1, 33554438);
                    v172 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138544386;
                      *&buf[4] = v167;
                      *&buf[12] = 2048;
                      *&buf[14] = a1;
                      *&buf[22] = 2114;
                      *&buf[24] = v19;
                      LOWORD(v186) = 2048;
                      *(&v186 + 2) = a3;
                      WORD5(v186) = 1024;
                      HIDWORD(v186) = v171;
                      _os_log_impl(&dword_1AC81F000, v172, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | opening database for creation [failed readonly open] result=%d", buf, 0x30u);
                    }

                    if (v171)
                    {
                      v173 = [(_MSVSQLConnection *)a1 lastError];
                      v174 = v173;
                      if (a4)
                      {
                        v175 = v173;
                        *a4 = v174;
                      }

                      v176 = os_log_create("com.apple.amp.MediaServices", "SQL");
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138544642;
                        *&buf[4] = v167;
                        *&buf[12] = 2048;
                        *&buf[14] = a1;
                        *&buf[22] = 2114;
                        *&buf[24] = v19;
                        LOWORD(v186) = 2048;
                        *(&v186 + 2) = a3;
                        WORD5(v186) = 1024;
                        HIDWORD(v186) = v171;
                        LOWORD(v187) = 2114;
                        *(&v187 + 2) = v174;
                        _os_log_impl(&dword_1AC81F000, v176, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | failed opening database [failed create open] result=%d error=%{public}@", buf, 0x3Au);
                      }
                    }

                    else
                    {
                      if ((a3 & 1) == 0)
                      {
                        sqlite3_exec(*(a1 + 1), "PRAGMA journal_mode=WAL", 0, 0, 0);
                        sqlite3_close(*(a1 + 1));
                        *(a1 + 1) = 0;
                        v177 = os_log_create("com.apple.amp.MediaServices", "SQL");
                        if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138544130;
                          *&buf[4] = v167;
                          *&buf[12] = 2048;
                          *&buf[14] = a1;
                          *&buf[22] = 2114;
                          *&buf[24] = v19;
                          LOWORD(v186) = 2048;
                          *(&v186 + 2) = a3;
                          _os_log_impl(&dword_1AC81F000, v177, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | re-opening database disallowing creation [need read-only connection]", buf, 0x2Au);
                        }

                        a1 = [(_MSVSQLConnection *)a1 initWithDatabaseURI:v19 options:a3 error:a4];
                        v178 = a1;
                        goto LABEL_181;
                      }

                      v179 = os_log_create("com.apple.amp.MediaServices", "SQL");
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138544130;
                        *&buf[4] = v167;
                        *&buf[12] = 2048;
                        *&buf[14] = a1;
                        *&buf[22] = 2114;
                        *&buf[24] = v19;
                        LOWORD(v186) = 2048;
                        *(&v186 + 2) = a3;
                        _os_log_impl(&dword_1AC81F000, v179, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | using created database [mutation allowed]", buf, 0x2Au);
                      }
                    }

                    v178 = 0;
LABEL_181:

                    v167 = a1;
                    a1 = v178;
                    goto LABEL_182;
                  }

LABEL_184:
                  v182 = [MEMORY[0x1E696AAA8] currentHandler];
                  v183 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                  [v182 handleFailureInFunction:v183 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                  v167 = &stru_1F214F018;
                  goto LABEL_159;
                }

                if (*v198 == 3000)
                {
                  LODWORD(v201[0]) = bswap32(DWORD2(v199[0]));
                  v157 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                  v158 = 0;
                  v159 = v157 + 1;
                  do
                  {
                    v160 = *(v201 + v158);
                    *(v159 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v160 >> 4];
                    *v159 = MSVFastHexStringFromBytes_hexCharacters_4916[v160 & 0xF];
                    v159 += 2;
                    ++v158;
                  }

                  while (v158 != 4);
                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v157;
                  v134 = 8;
                }

                else
                {
                  if (*v198 != 3001)
                  {
                    goto LABEL_184;
                  }

                  v201[0] = bswap64(*(&v199[0] + 1));
                  v135 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                  v136 = 0;
                  v137 = v135 + 1;
                  do
                  {
                    v138 = *(v201 + v136);
                    *(v137 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v138 >> 4];
                    *v137 = MSVFastHexStringFromBytes_hexCharacters_4916[v138 & 0xF];
                    v137 += 2;
                    ++v136;
                  }

                  while (v136 != 8);
                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v135;
                  v134 = 16;
                }
              }

              v150 = [v132 initWithBytesNoCopy:v133 length:v134 encoding:4 freeWhenDone:1];
              goto LABEL_158;
            }

            if (*buf != 2000)
            {
              if (*buf != 3000)
              {
                goto LABEL_111;
              }

              v105 = &v186;
              if (*&buf[12])
              {
                v106 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_1AC881C30), vshlq_u32(*&buf[16], xmmword_1AC881C20)));
              }

              else
              {
                v106 = *&buf[24] + 374761393;
              }

              v110 = *&buf[8] + v106;
              v111 = v187 & 0xF;
              if (v111 >= 4)
              {
                do
                {
                  v112 = *v105++;
                  HIDWORD(v113) = v110 - 1028477379 * v112;
                  LODWORD(v113) = HIDWORD(v113);
                  v110 = 668265263 * (v113 >> 15);
                  v111 -= 4;
                }

                while (v111 > 3);
              }

              for (; v111; --v111)
              {
                v114 = *v105;
                v105 = (v105 + 1);
                HIDWORD(v115) = v110 + 374761393 * v114;
                LODWORD(v115) = HIDWORD(v115);
                v110 = -1640531535 * (v115 >> 21);
              }

              v116 = -1028477379 * ((-2048144777 * (v110 ^ (v110 >> 15))) ^ ((-2048144777 * (v110 ^ (v110 >> 15))) >> 13));
              v117 = v116 ^ HIWORD(v116);
              goto LABEL_110;
            }

            switch(buf[19])
            {
              case 1:
                v109 = buf[16];
                break;
              case 2:
                v109 = *&buf[16];
                break;
              case 3:
                v109 = *&buf[16] | (buf[18] << 16);
                break;
              default:
                v118 = *&buf[8];
                goto LABEL_109;
            }

            v118 = (461845907 * ((380141568 * v109) | ((-862048943 * v109) >> 17))) ^ *&buf[8];
LABEL_109:
            v119 = -2048144789 * (v118 ^ *&buf[12] ^ ((v118 ^ *&buf[12]) >> 16));
            v117 = (-1028477387 * (v119 ^ (v119 >> 13))) ^ ((-1028477387 * (v119 ^ (v119 >> 13))) >> 16);
            *&buf[8] = v117;
LABEL_110:
            *&v198[8] = v117;
            goto LABEL_111;
          }

          v28 = 8 * v25;
          v29 = v20;
          v30 = *(&v186 + 1) & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v31 = *v29++;
            v30 |= v31 << v28;
            v28 += 8;
          }

          while (v28 != 64);
          v32 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
          v33 = *&buf[24] + (v186 ^ v30);
          v34 = __ROR8__(v186 ^ v30, 48);
          v35 = (v33 ^ v34) + __ROR8__(*&buf[8] + *&buf[16], 32);
          v36 = v35 ^ __ROR8__(v33 ^ v34, 43);
          v37 = v33 + v32;
          *&buf[24] = __ROR8__(v37, 32);
          *&v186 = v36;
          *&buf[8] = v35 ^ v30;
          *&buf[16] = v37 ^ __ROR8__(v32, 47);
          v20 += v26;
          *(&v186 + 1) = (v26 + v23) << 56;
          v22 = v27;
        }

        if (v22 >= 8)
        {
          v38 = *&buf[8];
          v41 = *&buf[24];
          v40 = *&buf[16];
          v39 = v186;
          do
          {
            v42 = *v20;
            v20 += 8;
            v43 = v39 ^ v42;
            v44 = v38 + v40;
            v45 = v44 ^ __ROR8__(v40, 51);
            v46 = v41 + v43;
            v47 = __ROR8__(v43, 48);
            v48 = (v46 ^ v47) + __ROR8__(v44, 32);
            v39 = v48 ^ __ROR8__(v46 ^ v47, 43);
            v49 = v46 + v45;
            v40 = v49 ^ __ROR8__(v45, 47);
            v41 = __ROR8__(v49, 32);
            *&buf[24] = v41;
            *&v186 = v39;
            v38 = v48 ^ v42;
            *&buf[8] = v38;
            *&buf[16] = v40;
            v22 -= 8;
            v23 += 8;
          }

          while (v22 > 7);
        }

        v25 = 0;
        goto LABEL_24;
      }

      if (*buf != 2000)
      {
        if (*buf == 3000)
        {
          _MSV_XXH_XXH32_update(&buf[8], v20, v21);
        }

        goto LABEL_74;
      }

      v57 = v21 + buf[19];
      if (v57 < 4)
      {
        v58 = &buf[buf[19] + 16];
        v59 = (v57 - buf[19]);
        if (v59 <= 1)
        {
          if (v57 == buf[19])
          {
LABEL_73:
            *&buf[12] += v22;
            goto LABEL_74;
          }

          if (v59 == 1)
          {
            *v58 = *v20;
            goto LABEL_73;
          }

LABEL_57:
          memcpy(v58, v20, (v57 - buf[19]));
          goto LABEL_73;
        }

        if (v59 == 2)
        {
          v64 = *v20;
        }

        else
        {
          if (v59 != 3)
          {
            goto LABEL_57;
          }

          v64 = *v20;
          v58[2] = v20[2];
        }

        *v58 = v64;
        goto LABEL_73;
      }

      LOBYTE(v60) = 0;
      v61 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      if (buf[19] > 1u)
      {
        if (buf[19] != 2)
        {
          LOBYTE(v62) = 0;
          LOBYTE(v63) = 0;
          v65 = 0;
          if (buf[19] == 3)
          {
            LOBYTE(v62) = buf[16];
            v60 = HIBYTE(*&buf[16]);
            LOBYTE(v63) = buf[18];
            v65 = *v20;
          }

          goto LABEL_63;
        }

        LOBYTE(v62) = buf[16];
        v60 = HIBYTE(*&buf[16]);
        v63 = *v20;
      }

      else
      {
        if (!buf[19])
        {
          v62 = *v20;
          v60 = *v20 >> 8;
          v63 = HIWORD(*v20);
          v65 = HIBYTE(*v20);
          goto LABEL_63;
        }

        LOBYTE(v62) = buf[16];
        LOBYTE(v60) = *v20;
        v63 = *(v20 + 1);
      }

      v65 = v63 >> 8;
LABEL_63:
      v66 = v57 & 3;
      v67 = (v63 << 16) | (v65 << 24) | v62 | (v60 << 8);
      HIDWORD(v68) = (461845907 * ((380141568 * v67) | ((-862048943 * v67) >> 17))) ^ *&buf[8];
      LODWORD(v68) = HIDWORD(v68);
      v69 = 5 * (v68 >> 19) - 430675100;
      *&buf[8] = v69;
      v70 = &v20[-buf[19] + 4];
      v71 = &v20[v61 - buf[19]];
      while (v70 < v71)
      {
        v72 = *v70;
        v70 += 4;
        HIDWORD(v73) = (461845907 * ((380141568 * v72) | ((-862048943 * v72) >> 17))) ^ v69;
        LODWORD(v73) = HIDWORD(v73);
        v69 = 5 * (v73 >> 19) - 430675100;
        *&buf[8] = v69;
      }

      if (v66 > 1)
      {
        if (v66 == 2)
        {
          *&buf[16] = *v71;
        }

        else
        {
          v74 = *v71;
          buf[18] = v71[2];
          *&buf[16] = v74;
        }
      }

      else if (v66)
      {
        buf[16] = *v71;
      }

      buf[19] = v66;
      goto LABEL_73;
    }
  }

LABEL_183:

  v180 = *MEMORY[0x1E69E9840];
  return a1;
}

- (sqlite3)lastError
{
  if (a1)
  {
    v2 = a1;
    v3 = sqlite3_errmsg(a1[1]);
    a1 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVSQLDatabaseError" code:1 debugDescription:{@"[%lld] %s", sqlite3_errcode(v2[1]), v3}];
    v1 = vars8;
  }

  return a1;
}

- (void)_registerAggregateFunctionDescriptor:(id)a3
{
  v4 = a3;
  connectionHandle = self->_connectionHandle;
  pApp = v4;
  if (v4)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 UTF8String];
  if (pApp)
  {
    v9 = pApp[4];
    v10 = *(pApp + 3);
    if (v10)
    {
      v11 = 2049;
    }

    else
    {
      v11 = 1;
    }

    if ((v10 & 2) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 | 0x80000;
    }

    v13 = v12 & 0xFFDFFFFF | (((v10 >> 2) & 1) << 21);
    v14 = pApp;
    v15 = v14[6];
    if (v15)
    {
      v16 = _aggregateFunctionValue;
    }

    else
    {
      v16 = 0;
    }

    v17 = v14[6];
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v9 = 0;
    v13 = 0;
    v17 = 0;
  }

  if (v17)
  {
    xInverse = _aggregateFunctionInverse;
  }

  else
  {
    xInverse = 0;
  }

  sqlite3_create_window_function(connectionHandle, v8, v9, v13, pApp, _aggregateFunctionStep, _aggregateFunctionFinal, v16, xInverse, _MSVSQLBridgeDestroy);

  [(NSMutableArray *)self->_aggregateFunctions addObject:pApp];
}

- (void)registerAggregateFunctionNamed:(id)a3 arguments:(int64_t)a4 options:(unint64_t)a5 start:(id)a6 add:(id)a7 remove:(id)a8 value:(id)a9
{
  newValue = a6;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a3;
  v18 = objc_alloc_init(_MSVSQLDatabaseAggregateFunctionDescriptor);
  v19 = [v17 copy];

  if (v18)
  {
    objc_setProperty_nonatomic_copy(v18, v20, v19, 8);

    v18->super._numberOfArguments = a4;
    objc_setProperty_nonatomic_copy(v18, v21, newValue, 32);
    objc_setProperty_nonatomic_copy(v18, v22, v14, 40);
    objc_setProperty_nonatomic_copy(v18, v23, v15, 48);
    objc_setProperty_nonatomic_copy(v18, v24, v16, 56);
  }

  else
  {
  }

  [(_MSVSQLConnection *)self _registerAggregateFunctionDescriptor:v18];
}

- (void)unregisterFunctionNamed:(id)a3 arguments:(int64_t)a4
{
  v6 = a3;
  sqlite3_create_function_v2(self->_connectionHandle, [v6 UTF8String], a4, 1, 0, 0, 0, 0, 0);
  scalarFunctions = self->_scalarFunctions;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55___MSVSQLConnection_unregisterFunctionNamed_arguments___block_invoke;
  v16[3] = &unk_1E7982790;
  v8 = v6;
  v17 = v8;
  v18 = a4;
  v9 = [(NSMutableArray *)scalarFunctions indexesOfObjectsPassingTest:v16];
  [(NSMutableArray *)self->_scalarFunctions removeObjectsAtIndexes:v9];
  aggregateFunctions = self->_aggregateFunctions;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___MSVSQLConnection_unregisterFunctionNamed_arguments___block_invoke_2;
  v13[3] = &unk_1E79827B8;
  v14 = v8;
  v15 = a4;
  v11 = v8;
  v12 = [(NSMutableArray *)aggregateFunctions indexesOfObjectsPassingTest:v13];
  [(NSMutableArray *)self->_aggregateFunctions removeObjectsAtIndexes:v12];
}

- (void)_registerScalarFunctionDescriptor:(id)a3
{
  v4 = a3;
  connectionHandle = self->_connectionHandle;
  v14 = v4;
  if (v4)
  {
    v4 = v4[1];
  }

  v6 = v4;
  v7 = [v6 UTF8String];
  if (v14)
  {
    v8 = v14[4];
    v9 = *(v14 + 3);
    if (v9)
    {
      v10 = 2049;
    }

    else
    {
      v10 = 1;
    }

    if ((v9 & 2) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 | 0x80000;
    }

    v12 = v11 & 0xFFDFFFFF | (((v9 >> 2) & 1) << 21);
    v13 = *(v14 + 4);
  }

  else
  {
    v12 = 0;
    v8 = 0;
    v13 = 0;
  }

  sqlite3_create_function_v2(connectionHandle, v7, v8, v12, v13, _scalarFunctionImplementation, 0, 0, _MSVSQLBridgeDestroy);

  [(NSMutableArray *)self->_scalarFunctions addObject:v14];
}

- (void)registerFunctionNamed:(id)a3 arguments:(int64_t)a4 options:(unint64_t)a5 block:(id)a6
{
  newValue = a3;
  v9 = a6;
  v10 = objc_alloc_init(_MSVSQLDatabaseScalarFunctionDescriptor);
  v12 = v10;
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v11, newValue, 8);
    v12->super._options = a5;
    objc_setProperty_nonatomic_copy(v12, v13, v9, 32);
  }

  [(_MSVSQLConnection *)self _registerScalarFunctionDescriptor:v12];
}

- (BOOL)executeStatementString:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (self->_invalid)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1364 description:@"Attempt to use invalidated connection."];
  }

  v8 = [(_MSVSQLConnection *)self statementWithString:v7 error:a4];
  if (v8)
  {
    v9 = [(_MSVSQLConnection *)self executeStatement:v8 error:a4];
    [v8 invalidate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)resultsForStatement:(id)a3
{
  v5 = a3;
  if (self->_invalid)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1359 description:@"Attempt to use invalidated connection."];
  }

  v6 = [[MSVSQLRowEnumerator alloc] initWithStatement:v5];

  return v6;
}

- (BOOL)executeStatement:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = v7;
  if (self->_invalid)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1348 description:@"Attempt to use invalidated connection."];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_4;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = v8[1];
LABEL_4:
  v10 = sqlite3_step(v9);
  v11 = v10;
  if (a4 && v10 != 101)
  {
    if (v8)
    {
      v12 = v8[2];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(_MSVSQLConnection *)v13 lastError];
    v15 = v14;

    *a4 = v14;
  }

  return v11 == 101;
}

- (id)statementWithString:(id)a3 error:(id *)a4
{
  v352 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_invalid)
  {
    v327 = [MEMORY[0x1E696AAA8] currentHandler];
    [v327 handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1299 description:@"Attempt to use invalidated connection."];
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_connectionHandle, [v7 UTF8String], -1, &ppStmt, 0))
  {
    v8 = [(_MSVSQLConnection *)&self->super.isa lastError];
    if (!v8)
    {
LABEL_205:
      if (a4)
      {
        v209 = v8;
        *a4 = v8;
      }

      v19 = 0;
      goto LABEL_208;
    }

    v9 = MSVHasherSharedSeed();
    v10 = self->_databaseURI;
    v344 = 0u;
    v343 = 0u;
    v342 = 0u;
    v341 = 0u;
    v340 = 0u;
    v339 = 0u;
    v338 = 0u;
    v337 = 0u;
    *v331 = xmmword_1AC881C40;
    *&v331[16] = vaddq_s64(vdupq_n_s64(v9), xmmword_1AC881C50);
    v332 = v9;
    v333 = v9 + 0x61C8864E7A143579;
    v334 = 0u;
    v335 = 0u;
    v336 = 0;
    v11 = v10;
    v12 = [(NSString *)v11 UTF8String];
    v13 = [(NSString *)v11 length];
    v14 = v13;
    if (*v331 > 3000)
    {
      if (*v331 <= 4000)
      {
        if (*v331 == 3001)
        {
          _MSV_XXH_XXH64_update(&v331[8], v12, v13);
        }

        else if (*v331 == 4000)
        {
          CC_MD5_Update(&v331[8], v12, v13);
        }
      }

      else
      {
        switch(*v331)
        {
          case 0xFA1:
            CC_SHA1_Update(&v331[8], v12, v13);
            break;
          case 0x10A0:
            CC_SHA256_Update(&v331[8], v12, v13);
            break;
          case 0x11A0:
            CC_SHA512_Update(&v331[8], v12, v13);
            break;
        }
      }

      goto LABEL_117;
    }

    if (*v331 <= 1999)
    {
      if (!*v331)
      {
        v58 = [MEMORY[0x1E696AAA8] currentHandler];
        v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
        [v58 handleFailureInFunction:v59 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

        goto LABEL_117;
      }

      if (*v331 != 1000)
      {
        goto LABEL_117;
      }

      v20 = HIBYTE(v333);
      v21 = v333 & 0xFFFFFFFFFFFFFFLL;
      v22 = HIBYTE(v333) & 7;
      if (v22)
      {
        v23 = 8 - v22;
        v24 = v13 - (8 - v22);
        if (v13 < 8 - v22)
        {
LABEL_29:
          if (v14)
          {
            v47 = 0;
            v48 = 0;
            v49 = v14;
            do
            {
              v50 = *v12++;
              v48 |= v50 << v47;
              v47 += 8;
              --v49;
            }

            while (v49);
            if (v22)
            {
              v51 = (v48 << (8 * v22)) | ((v14 + v20) << 56) | v21;
            }

            else
            {
              v51 = v48 | ((v14 + v20) << 56);
            }
          }

          else
          {
            if (v22)
            {
              goto LABEL_117;
            }

            v51 = v20 << 56;
          }

          v333 = v51;
LABEL_117:

          memset(&v345[8], 0, 64);
          *v345 = *v331;
          if (*v331 > 3000)
          {
            if (*v331 <= 4000)
            {
              if (*v331 == 3001)
              {
                *&v345[8] = _MSV_XXH_XXH64_digest(&v331[8]);
              }

              else if (*v331 == 4000)
              {
                CC_MD5_Final(&v345[8], &v331[8]);
              }
            }

            else
            {
              switch(*v331)
              {
                case 0xFA1:
                  CC_SHA1_Final(&v345[8], &v331[8]);
                  break;
                case 0x10A0:
                  CC_SHA256_Final(&v345[8], &v331[8]);
                  break;
                case 0x11A0:
                  CC_SHA512_Final(&v345[8], &v331[8]);
                  break;
              }
            }

            goto LABEL_154;
          }

          if (*v331 <= 1999)
          {
            if (*v331)
            {
              if (*v331 == 1000)
              {
                v115 = (*&v331[8] + *&v331[16]) ^ __ROR8__(*&v331[16], 51);
                v116 = *&v331[24] + (v332 ^ v333);
                v117 = __ROR8__(v332 ^ v333, 48);
                v118 = (v116 ^ v117) + __ROR8__(*&v331[8] + *&v331[16], 32);
                v119 = v118 ^ __ROR8__(v116 ^ v117, 43);
                v120 = v116 + v115;
                v121 = v120 ^ __ROR8__(v115, 47);
                v122 = (v118 ^ v333) + v121;
                v123 = v122 ^ __ROR8__(v121, 51);
                v124 = (__ROR8__(v120, 32) ^ 0xFFLL) + v119;
                v125 = __ROR8__(v119, 48);
                v126 = __ROR8__(v122, 32) + (v124 ^ v125);
                v127 = v126 ^ __ROR8__(v124 ^ v125, 43);
                v128 = v123 + v124;
                v129 = v128 ^ __ROR8__(v123, 47);
                v130 = v129 + v126;
                v131 = v130 ^ __ROR8__(v129, 51);
                v132 = __ROR8__(v128, 32) + v127;
                v133 = __ROR8__(v127, 48);
                v134 = __ROR8__(v130, 32) + (v132 ^ v133);
                v135 = v134 ^ __ROR8__(v132 ^ v133, 43);
                v136 = v131 + v132;
                v137 = v136 ^ __ROR8__(v131, 47);
                v138 = v137 + v134;
                v139 = v138 ^ __ROR8__(v137, 51);
                v140 = __ROR8__(v136, 32) + v135;
                v141 = __ROR8__(v135, 48);
                v142 = __ROR8__(v138, 32) + (v140 ^ v141);
                v143 = v142 ^ __ROR8__(v140 ^ v141, 43);
                v144 = v139 + v140;
                *&v331[8] = v142;
                *&v331[16] = v144 ^ __ROR8__(v139, 47);
                *&v331[24] = __ROR8__(v144, 32);
                v332 = v143;
                *&v345[8] = *&v331[16] ^ v142 ^ *&v331[24] ^ v143;
              }
            }

            else
            {
              v147 = [MEMORY[0x1E696AAA8] currentHandler];
              v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
              [v147 handleFailureInFunction:v148 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
            }

LABEL_154:
            v346 = *v345;
            v347 = *&v345[16];
            v348 = *&v345[32];
            v349 = *&v345[48];
            v350 = *&v345[64];
            if (*v345 > 3999)
            {
              if (*v345 > 4255)
              {
                if (*v345 == 4256)
                {
                  v201 = &v346 + 8;
                  v202 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                  v203 = v202;
                  for (i = 0; i != 64; i += 2)
                  {
                    v205 = *v201++;
                    v206 = &v202[i];
                    *v206 = MSVFastHexStringFromBytes_hexCharacters_4916[v205 >> 4];
                    v206[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v205 & 0xF];
                  }

                  v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v173 = v203;
                  v174 = 64;
                }

                else
                {
                  if (*v345 != 4512)
                  {
                    goto LABEL_211;
                  }

                  v179 = &v346 + 8;
                  v180 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                  v181 = v180;
                  for (j = 0; j != 128; j += 2)
                  {
                    v183 = *v179++;
                    v184 = &v180[j];
                    *v184 = MSVFastHexStringFromBytes_hexCharacters_4916[v183 >> 4];
                    v184[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v183 & 0xF];
                  }

                  v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v173 = v181;
                  v174 = 128;
                }
              }

              else if (*v345 == 4000)
              {
                v191 = &v346 + 8;
                v192 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                v193 = v192;
                for (k = 0; k != 32; k += 2)
                {
                  v195 = *v191++;
                  v196 = &v192[k];
                  *v196 = MSVFastHexStringFromBytes_hexCharacters_4916[v195 >> 4];
                  v196[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v195 & 0xF];
                }

                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v193;
                v174 = 32;
              }

              else
              {
                if (*v345 != 4001)
                {
                  goto LABEL_211;
                }

                v166 = &v346 + 8;
                v167 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                v168 = v167;
                for (m = 0; m != 40; m += 2)
                {
                  v170 = *v166++;
                  v171 = &v167[m];
                  *v171 = MSVFastHexStringFromBytes_hexCharacters_4916[v170 >> 4];
                  v171[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v170 & 0xF];
                }

                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v168;
                v174 = 40;
              }
            }

            else
            {
              if (*v345 <= 2999)
              {
                if (*v345 == 1000)
                {
                  v185 = *(&v346 + 1);
                  if (*(&v346 + 1))
                  {
                    v186 = &v352 + 1;
                    quot = *(&v346 + 1);
                    do
                    {
                      v188 = lldiv(quot, 10);
                      quot = v188.quot;
                      if (v188.rem >= 0)
                      {
                        LOBYTE(v189) = v188.rem;
                      }

                      else
                      {
                        v189 = -v188.rem;
                      }

                      *(v186 - 2) = v189 + 48;
                      v165 = (v186 - 2);
                      --v186;
                    }

                    while (v188.quot);
                    if (v185 < 0)
                    {
                      *(v186 - 2) = 45;
                      v165 = (v186 - 2);
                    }

                    v164 = (&v352 - v165);
                    goto LABEL_190;
                  }

LABEL_212:
                  v207 = @"0";
                  goto LABEL_202;
                }

                if (*v345 == 2000)
                {
                  v160 = DWORD2(v346);
                  if (DWORD2(v346))
                  {
                    v161 = &v352;
                    do
                    {
                      v162 = ldiv(v160, 10);
                      v160 = v162.quot;
                      if (v162.rem >= 0)
                      {
                        LOBYTE(v163) = v162.rem;
                      }

                      else
                      {
                        v163 = -v162.rem;
                      }

                      *(v161 - 1) = v163 + 48;
                      v161 = (v161 - 1);
                    }

                    while (v162.quot);
                    v164 = (&v352 - v161);
                    v165 = v161;
LABEL_190:
                    v190 = CFStringCreateWithBytes(0, v165, v164, 0x8000100u, 0);
LABEL_201:
                    v207 = v190;
LABEL_202:

                    v208 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                    {
                      *v331 = 138543874;
                      *&v331[4] = v207;
                      *&v331[12] = 2048;
                      *&v331[14] = self;
                      *&v331[22] = 2114;
                      *&v331[24] = v8;
                      _os_log_impl(&dword_1AC81F000, v208, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] statementWithString:… | failed to create statement [] error=%{public}@", v331, 0x20u);
                    }

                    goto LABEL_205;
                  }

                  goto LABEL_212;
                }

LABEL_211:
                v212 = [MEMORY[0x1E696AAA8] currentHandler];
                v213 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                [v212 handleFailureInFunction:v213 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                v207 = &stru_1F214F018;
                goto LABEL_202;
              }

              if (*v345 == 3000)
              {
                LODWORD(v351[0]) = bswap32(DWORD2(v346));
                v197 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                v198 = 0;
                v199 = v197 + 1;
                do
                {
                  v200 = *(v351 + v198);
                  *(v199 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v200 >> 4];
                  *v199 = MSVFastHexStringFromBytes_hexCharacters_4916[v200 & 0xF];
                  v199 += 2;
                  ++v198;
                }

                while (v198 != 4);
                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v197;
                v174 = 8;
              }

              else
              {
                if (*v345 != 3001)
                {
                  goto LABEL_211;
                }

                v351[0] = bswap64(*(&v346 + 1));
                v175 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                v176 = 0;
                v177 = v175 + 1;
                do
                {
                  v178 = *(v351 + v176);
                  *(v177 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v178 >> 4];
                  *v177 = MSVFastHexStringFromBytes_hexCharacters_4916[v178 & 0xF];
                  v177 += 2;
                  ++v176;
                }

                while (v176 != 8);
                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v175;
                v174 = 16;
              }
            }

            v190 = [v172 initWithBytesNoCopy:v173 length:v174 encoding:4 freeWhenDone:1];
            goto LABEL_201;
          }

          if (*v331 != 2000)
          {
            if (*v331 != 3000)
            {
              goto LABEL_154;
            }

            v145 = &v332;
            if (*&v331[12])
            {
              v146 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v331[16], xmmword_1AC881C30), vshlq_u32(*&v331[16], xmmword_1AC881C20)));
            }

            else
            {
              v146 = *&v331[24] + 374761393;
            }

            v150 = *&v331[8] + v146;
            v151 = v334 & 0xF;
            if (v151 >= 4)
            {
              do
              {
                v152 = *v145;
                v145 = (v145 + 4);
                HIDWORD(v153) = v150 - 1028477379 * v152;
                LODWORD(v153) = HIDWORD(v153);
                v150 = 668265263 * (v153 >> 15);
                v151 -= 4;
              }

              while (v151 > 3);
            }

            for (; v151; --v151)
            {
              v154 = *v145;
              v145 = (v145 + 1);
              HIDWORD(v155) = v150 + 374761393 * v154;
              LODWORD(v155) = HIDWORD(v155);
              v150 = -1640531535 * (v155 >> 21);
            }

            v156 = -1028477379 * ((-2048144777 * (v150 ^ (v150 >> 15))) ^ ((-2048144777 * (v150 ^ (v150 >> 15))) >> 13));
            v157 = v156 ^ HIWORD(v156);
            goto LABEL_153;
          }

          switch(v331[19])
          {
            case 1:
              v149 = v331[16];
              break;
            case 2:
              v149 = *&v331[16];
              break;
            case 3:
              v149 = *&v331[16] | (v331[18] << 16);
              break;
            default:
              v158 = *&v331[8];
              goto LABEL_152;
          }

          v158 = (461845907 * ((380141568 * v149) | ((-862048943 * v149) >> 17))) ^ *&v331[8];
LABEL_152:
          v159 = -2048144789 * (v158 ^ *&v331[12] ^ ((v158 ^ *&v331[12]) >> 16));
          v157 = (-1028477387 * (v159 ^ (v159 >> 13))) ^ ((-1028477387 * (v159 ^ (v159 >> 13))) >> 16);
          *&v331[8] = v157;
LABEL_153:
          *&v345[8] = v157;
          goto LABEL_154;
        }

        v25 = 8 * v22;
        v26 = v12;
        v27 = v333 & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v28 = *v26++;
          v27 |= v28 << v25;
          v25 += 8;
        }

        while (v25 != 64);
        v29 = (*&v331[8] + *&v331[16]) ^ __ROR8__(*&v331[16], 51);
        v30 = *&v331[24] + (v332 ^ v27);
        v31 = __ROR8__(v332 ^ v27, 48);
        v32 = (v30 ^ v31) + __ROR8__(*&v331[8] + *&v331[16], 32);
        v33 = v32 ^ __ROR8__(v30 ^ v31, 43);
        v34 = v30 + v29;
        *&v331[24] = __ROR8__(v34, 32);
        v332 = v33;
        *&v331[8] = v32 ^ v27;
        *&v331[16] = v34 ^ __ROR8__(v29, 47);
        v12 += v23;
        v333 = (v23 + v20) << 56;
        v14 = v24;
      }

      if (v14 >= 8)
      {
        v35 = *&v331[8];
        v38 = *&v331[24];
        v37 = *&v331[16];
        v36 = v332;
        do
        {
          v39 = *v12;
          v12 += 8;
          v40 = v36 ^ v39;
          v41 = v35 + v37;
          v42 = v41 ^ __ROR8__(v37, 51);
          v43 = v38 + v40;
          v44 = __ROR8__(v40, 48);
          v45 = (v43 ^ v44) + __ROR8__(v41, 32);
          v36 = v45 ^ __ROR8__(v43 ^ v44, 43);
          v46 = v43 + v42;
          v37 = v46 ^ __ROR8__(v42, 47);
          v38 = __ROR8__(v46, 32);
          *&v331[24] = v38;
          v332 = v36;
          v35 = v45 ^ v39;
          *&v331[8] = v35;
          *&v331[16] = v37;
          v14 -= 8;
          v20 += 8;
        }

        while (v14 > 7);
      }

      v22 = 0;
      goto LABEL_29;
    }

    if (*v331 != 2000)
    {
      if (*v331 == 3000)
      {
        _MSV_XXH_XXH32_update(&v331[8], v12, v13);
      }

      goto LABEL_117;
    }

    v60 = v13 + v331[19];
    if (v60 < 4)
    {
      v61 = &v331[v331[19] + 16];
      v62 = (v60 - v331[19]);
      if (v62 <= 1)
      {
        if (v60 == v331[19])
        {
LABEL_116:
          *&v331[12] += v14;
          goto LABEL_117;
        }

        if (v62 == 1)
        {
          *v61 = *v12;
          goto LABEL_116;
        }

LABEL_100:
        memcpy(v61, v12, (v60 - v331[19]));
        goto LABEL_116;
      }

      if (v62 == 2)
      {
        v99 = *v12;
      }

      else
      {
        if (v62 != 3)
        {
          goto LABEL_100;
        }

        v99 = *v12;
        v61[2] = v12[2];
      }

      *v61 = v99;
      goto LABEL_116;
    }

    LOBYTE(v95) = 0;
    v96 = v60 & 0xFFFFFFFFFFFFFFFCLL;
    if (v331[19] > 1u)
    {
      if (v331[19] != 2)
      {
        LOBYTE(v97) = 0;
        LOBYTE(v98) = 0;
        v100 = 0;
        if (v331[19] == 3)
        {
          LOBYTE(v97) = v331[16];
          v95 = HIBYTE(*&v331[16]);
          LOBYTE(v98) = v331[18];
          v100 = *v12;
        }

        goto LABEL_106;
      }

      LOBYTE(v97) = v331[16];
      v95 = HIBYTE(*&v331[16]);
      v98 = *v12;
    }

    else
    {
      if (!v331[19])
      {
        v97 = *v12;
        v95 = *v12 >> 8;
        v98 = HIWORD(*v12);
        v100 = HIBYTE(*v12);
        goto LABEL_106;
      }

      LOBYTE(v97) = v331[16];
      LOBYTE(v95) = *v12;
      v98 = *(v12 + 1);
    }

    v100 = v98 >> 8;
LABEL_106:
    v106 = v60 & 3;
    v107 = (v98 << 16) | (v100 << 24) | v97 | (v95 << 8);
    HIDWORD(v108) = (461845907 * ((380141568 * v107) | ((-862048943 * v107) >> 17))) ^ *&v331[8];
    LODWORD(v108) = HIDWORD(v108);
    v109 = 5 * (v108 >> 19) - 430675100;
    *&v331[8] = v109;
    v110 = &v12[-v331[19] + 4];
    v111 = &v12[v96 - v331[19]];
    while (v110 < v111)
    {
      v112 = *v110;
      v110 += 4;
      HIDWORD(v113) = (461845907 * ((380141568 * v112) | ((-862048943 * v112) >> 17))) ^ v109;
      LODWORD(v113) = HIDWORD(v113);
      v109 = 5 * (v113 >> 19) - 430675100;
      *&v331[8] = v109;
    }

    if (v106 > 1)
    {
      if (v106 == 2)
      {
        *&v331[16] = *v111;
      }

      else
      {
        v114 = *v111;
        v331[18] = v111[2];
        *&v331[16] = v114;
      }
    }

    else if (v106)
    {
      v331[16] = *v111;
    }

    v331[19] = v106;
    goto LABEL_116;
  }

  if ((self->_options & 1) != 0 || sqlite3_stmt_readonly(ppStmt))
  {
    v15 = [MSVSQLStatement alloc];
    v16 = ppStmt;
    v17 = self;
    if (v15)
    {
      *v331 = v15;
      *&v331[8] = MSVSQLStatement;
      v18 = objc_msgSendSuper2(v331, sel_init);
      v19 = v18;
      if (v18)
      {
        v18[1] = v16;
        objc_storeStrong(v18 + 2, self);
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_208;
  }

  v52 = MSVHasherSharedSeed();
  v53 = self->_databaseURI;
  v344 = 0u;
  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  *v331 = xmmword_1AC881C40;
  *&v331[16] = vaddq_s64(vdupq_n_s64(v52), xmmword_1AC881C50);
  v332 = v52;
  v333 = v52 + 0x61C8864E7A143579;
  v334 = 0u;
  v335 = 0u;
  v336 = 0;
  v54 = v53;
  v55 = [(NSString *)v54 UTF8String];
  v56 = [(NSString *)v54 length];
  v57 = v56;
  if (*v331 > 3000)
  {
    if (*v331 <= 4000)
    {
      if (*v331 == 3001)
      {
        _MSV_XXH_XXH64_update(&v331[8], v55, v56);
      }

      else if (*v331 == 4000)
      {
        CC_MD5_Update(&v331[8], v55, v56);
      }
    }

    else
    {
      switch(*v331)
      {
        case 0xFA1:
          CC_SHA1_Update(&v331[8], v55, v56);
          break;
        case 0x10A0:
          CC_SHA256_Update(&v331[8], v55, v56);
          break;
        case 0x11A0:
          CC_SHA512_Update(&v331[8], v55, v56);
          break;
      }
    }

    goto LABEL_243;
  }

  if (*v331 > 1999)
  {
    if (*v331 != 2000)
    {
      if (*v331 == 3000)
      {
        _MSV_XXH_XXH32_update(&v331[8], v55, v56);
      }

      goto LABEL_243;
    }

    v103 = v56 + v331[19];
    if (v103 < 4)
    {
      v104 = &v331[v331[19] + 16];
      v105 = (v103 - v331[19]);
      if (v105 <= 1)
      {
        if (v103 == v331[19])
        {
LABEL_242:
          *&v331[12] += v57;
          goto LABEL_243;
        }

        if (v105 == 1)
        {
          *v104 = *v55;
          goto LABEL_242;
        }

LABEL_226:
        memcpy(v104, v55, (v103 - v331[19]));
        goto LABEL_242;
      }

      if (v105 == 2)
      {
        v218 = *v55;
      }

      else
      {
        if (v105 != 3)
        {
          goto LABEL_226;
        }

        v218 = *v55;
        v104[2] = v55[2];
      }

      *v104 = v218;
      goto LABEL_242;
    }

    LOBYTE(v214) = 0;
    v215 = v103 & 0xFFFFFFFFFFFFFFFCLL;
    if (v331[19] > 1u)
    {
      if (v331[19] != 2)
      {
        LOBYTE(v216) = 0;
        LOBYTE(v217) = 0;
        v219 = 0;
        if (v331[19] == 3)
        {
          LOBYTE(v216) = v331[16];
          v214 = HIBYTE(*&v331[16]);
          LOBYTE(v217) = v331[18];
          v219 = *v55;
        }

        goto LABEL_232;
      }

      LOBYTE(v216) = v331[16];
      v214 = HIBYTE(*&v331[16]);
      v217 = *v55;
    }

    else
    {
      if (!v331[19])
      {
        v216 = *v55;
        v214 = *v55 >> 8;
        v217 = HIWORD(*v55);
        v219 = HIBYTE(*v55);
        goto LABEL_232;
      }

      LOBYTE(v216) = v331[16];
      LOBYTE(v214) = *v55;
      v217 = *(v55 + 1);
    }

    v219 = v217 >> 8;
LABEL_232:
    v220 = v103 & 3;
    v221 = (v217 << 16) | (v219 << 24) | v216 | (v214 << 8);
    HIDWORD(v222) = (461845907 * ((380141568 * v221) | ((-862048943 * v221) >> 17))) ^ *&v331[8];
    LODWORD(v222) = HIDWORD(v222);
    v223 = 5 * (v222 >> 19) - 430675100;
    *&v331[8] = v223;
    v224 = &v55[-v331[19] + 4];
    v225 = &v55[v215 - v331[19]];
    while (v224 < v225)
    {
      v226 = *v224;
      v224 += 4;
      HIDWORD(v227) = (461845907 * ((380141568 * v226) | ((-862048943 * v226) >> 17))) ^ v223;
      LODWORD(v227) = HIDWORD(v227);
      v223 = 5 * (v227 >> 19) - 430675100;
      *&v331[8] = v223;
    }

    if (v220 > 1)
    {
      if (v220 == 2)
      {
        *&v331[16] = *v225;
      }

      else
      {
        v228 = *v225;
        v331[18] = v225[2];
        *&v331[16] = v228;
      }
    }

    else if (v220)
    {
      v331[16] = *v225;
    }

    v331[19] = v220;
    goto LABEL_242;
  }

  if (!*v331)
  {
    v101 = [MEMORY[0x1E696AAA8] currentHandler];
    v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v101 handleFailureInFunction:v102 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_243;
  }

  if (*v331 != 1000)
  {
    goto LABEL_243;
  }

  v63 = HIBYTE(v333);
  v64 = v333 & 0xFFFFFFFFFFFFFFLL;
  v65 = HIBYTE(v333) & 7;
  if (!v65)
  {
    goto LABEL_63;
  }

  v66 = 8 - v65;
  v67 = v56 - (8 - v65);
  if (v56 >= 8 - v65)
  {
    v68 = 8 * v65;
    v69 = v55;
    v70 = v333 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v71 = *v69++;
      v70 |= v71 << v68;
      v68 += 8;
    }

    while (v68 != 64);
    v72 = (*&v331[8] + *&v331[16]) ^ __ROR8__(*&v331[16], 51);
    v73 = *&v331[24] + (v332 ^ v70);
    v74 = __ROR8__(v332 ^ v70, 48);
    v75 = (v73 ^ v74) + __ROR8__(*&v331[8] + *&v331[16], 32);
    v76 = v75 ^ __ROR8__(v73 ^ v74, 43);
    v77 = v73 + v72;
    *&v331[24] = __ROR8__(v77, 32);
    v332 = v76;
    *&v331[8] = v75 ^ v70;
    *&v331[16] = v77 ^ __ROR8__(v72, 47);
    v55 += v66;
    v333 = (v66 + v63) << 56;
    v57 = v67;
LABEL_63:
    if (v57 >= 8)
    {
      v78 = *&v331[8];
      v81 = *&v331[24];
      v80 = *&v331[16];
      v79 = v332;
      do
      {
        v82 = *v55;
        v55 += 8;
        v83 = v79 ^ v82;
        v84 = v78 + v80;
        v85 = v84 ^ __ROR8__(v80, 51);
        v86 = v81 + v83;
        v87 = __ROR8__(v83, 48);
        v88 = (v86 ^ v87) + __ROR8__(v84, 32);
        v79 = v88 ^ __ROR8__(v86 ^ v87, 43);
        v89 = v86 + v85;
        v80 = v89 ^ __ROR8__(v85, 47);
        v81 = __ROR8__(v89, 32);
        *&v331[24] = v81;
        v332 = v79;
        v78 = v88 ^ v82;
        *&v331[8] = v78;
        *&v331[16] = v80;
        v57 -= 8;
        v63 += 8;
      }

      while (v57 > 7);
    }

    v65 = 0;
  }

  if (v57)
  {
    v90 = 0;
    v91 = 0;
    v92 = v57;
    do
    {
      v93 = *v55++;
      v91 |= v93 << v90;
      v90 += 8;
      --v92;
    }

    while (v92);
    if (v65)
    {
      v94 = (v91 << (8 * v65)) | ((v57 + v63) << 56) | v64;
    }

    else
    {
      v94 = v91 | ((v57 + v63) << 56);
    }
  }

  else
  {
    if (v65)
    {
      goto LABEL_243;
    }

    v94 = v63 << 56;
  }

  v333 = v94;
LABEL_243:

  memset(&v345[8], 0, 64);
  *v345 = *v331;
  if (*v331 > 3000)
  {
    if (*v331 <= 4000)
    {
      if (*v331 == 3001)
      {
        *&v345[8] = _MSV_XXH_XXH64_digest(&v331[8]);
      }

      else if (*v331 == 4000)
      {
        CC_MD5_Final(&v345[8], &v331[8]);
      }
    }

    else
    {
      switch(*v331)
      {
        case 0xFA1:
          CC_SHA1_Final(&v345[8], &v331[8]);
          break;
        case 0x10A0:
          CC_SHA256_Final(&v345[8], &v331[8]);
          break;
        case 0x11A0:
          CC_SHA512_Final(&v345[8], &v331[8]);
          break;
      }
    }

    goto LABEL_272;
  }

  if (*v331 <= 1999)
  {
    if (*v331)
    {
      if (*v331 == 1000)
      {
        v229 = (*&v331[8] + *&v331[16]) ^ __ROR8__(*&v331[16], 51);
        v230 = *&v331[24] + (v332 ^ v333);
        v231 = __ROR8__(v332 ^ v333, 48);
        v232 = (v230 ^ v231) + __ROR8__(*&v331[8] + *&v331[16], 32);
        v233 = v232 ^ __ROR8__(v230 ^ v231, 43);
        v234 = v230 + v229;
        v235 = v234 ^ __ROR8__(v229, 47);
        v236 = (v232 ^ v333) + v235;
        v237 = v236 ^ __ROR8__(v235, 51);
        v238 = (__ROR8__(v234, 32) ^ 0xFFLL) + v233;
        v239 = __ROR8__(v233, 48);
        v240 = __ROR8__(v236, 32) + (v238 ^ v239);
        v241 = v240 ^ __ROR8__(v238 ^ v239, 43);
        v242 = v237 + v238;
        v243 = v242 ^ __ROR8__(v237, 47);
        v244 = v243 + v240;
        v245 = v244 ^ __ROR8__(v243, 51);
        v246 = __ROR8__(v242, 32) + v241;
        v247 = __ROR8__(v241, 48);
        v248 = __ROR8__(v244, 32) + (v246 ^ v247);
        v249 = v248 ^ __ROR8__(v246 ^ v247, 43);
        v250 = v245 + v246;
        v251 = v250 ^ __ROR8__(v245, 47);
        v252 = v251 + v248;
        v253 = v252 ^ __ROR8__(v251, 51);
        v254 = __ROR8__(v250, 32) + v249;
        v255 = __ROR8__(v249, 48);
        v256 = __ROR8__(v252, 32) + (v254 ^ v255);
        v257 = v256 ^ __ROR8__(v254 ^ v255, 43);
        v258 = v253 + v254;
        *&v331[8] = v256;
        *&v331[16] = v258 ^ __ROR8__(v253, 47);
        *&v331[24] = __ROR8__(v258, 32);
        v332 = v257;
        *&v345[8] = *&v331[16] ^ v256 ^ *&v331[24] ^ v257;
      }
    }

    else
    {
      v259 = [MEMORY[0x1E696AAA8] currentHandler];
      v260 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
      [v259 handleFailureInFunction:v260 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
    }

    goto LABEL_272;
  }

  if (*v331 == 2000)
  {
    switch(v331[19])
    {
      case 1:
        v261 = v331[16];
        break;
      case 2:
        v261 = *&v331[16];
        break;
      case 3:
        v261 = *&v331[16] | (v331[18] << 16);
        break;
      default:
        v262 = *&v331[8];
        goto LABEL_271;
    }

    v262 = (461845907 * ((380141568 * v261) | ((-862048943 * v261) >> 17))) ^ *&v331[8];
LABEL_271:
    v263 = -2048144789 * (v262 ^ *&v331[12] ^ ((v262 ^ *&v331[12]) >> 16));
    *&v331[8] = (-1028477387 * (v263 ^ (v263 >> 13))) ^ ((-1028477387 * (v263 ^ (v263 >> 13))) >> 16);
    *&v345[8] = *&v331[8];
    goto LABEL_272;
  }

  if (*v331 == 3000)
  {
    *&v345[8] = _MSV_XXH_XXH32_digest(&v331[8]);
  }

LABEL_272:
  v346 = *v345;
  v347 = *&v345[16];
  v348 = *&v345[32];
  v349 = *&v345[48];
  v350 = *&v345[64];
  if (*v345 > 3999)
  {
    if (*v345 > 4255)
    {
      if (*v345 == 4256)
      {
        v305 = &v346 + 8;
        v306 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v307 = v306;
        for (n = 0; n != 64; n += 2)
        {
          v309 = *v305++;
          v310 = &v306[n];
          *v310 = MSVFastHexStringFromBytes_hexCharacters_4916[v309 >> 4];
          v310[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v309 & 0xF];
        }

        v276 = objc_alloc(MEMORY[0x1E696AEC0]);
        v277 = v307;
        v278 = 64;
      }

      else
      {
        if (*v345 != 4512)
        {
          goto LABEL_337;
        }

        v283 = &v346 + 8;
        v284 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v285 = v284;
        for (ii = 0; ii != 128; ii += 2)
        {
          v287 = *v283++;
          v288 = &v284[ii];
          *v288 = MSVFastHexStringFromBytes_hexCharacters_4916[v287 >> 4];
          v288[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v287 & 0xF];
        }

        v276 = objc_alloc(MEMORY[0x1E696AEC0]);
        v277 = v285;
        v278 = 128;
      }
    }

    else if (*v345 == 4000)
    {
      v295 = &v346 + 8;
      v296 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v297 = v296;
      for (jj = 0; jj != 32; jj += 2)
      {
        v299 = *v295++;
        v300 = &v296[jj];
        *v300 = MSVFastHexStringFromBytes_hexCharacters_4916[v299 >> 4];
        v300[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v299 & 0xF];
      }

      v276 = objc_alloc(MEMORY[0x1E696AEC0]);
      v277 = v297;
      v278 = 32;
    }

    else
    {
      if (*v345 != 4001)
      {
        goto LABEL_337;
      }

      v270 = &v346 + 8;
      v271 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v272 = v271;
      for (kk = 0; kk != 40; kk += 2)
      {
        v274 = *v270++;
        v275 = &v271[kk];
        *v275 = MSVFastHexStringFromBytes_hexCharacters_4916[v274 >> 4];
        v275[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v274 & 0xF];
      }

      v276 = objc_alloc(MEMORY[0x1E696AEC0]);
      v277 = v272;
      v278 = 40;
    }

LABEL_318:
    v294 = [v276 initWithBytesNoCopy:v277 length:v278 encoding:4 freeWhenDone:1];
    goto LABEL_319;
  }

  if (*v345 > 2999)
  {
    if (*v345 == 3000)
    {
      LODWORD(v351[0]) = bswap32(DWORD2(v346));
      v301 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v302 = 0;
      v303 = v301 + 1;
      do
      {
        v304 = *(v351 + v302);
        *(v303 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v304 >> 4];
        *v303 = MSVFastHexStringFromBytes_hexCharacters_4916[v304 & 0xF];
        v303 += 2;
        ++v302;
      }

      while (v302 != 4);
      v276 = objc_alloc(MEMORY[0x1E696AEC0]);
      v277 = v301;
      v278 = 8;
    }

    else
    {
      if (*v345 != 3001)
      {
        goto LABEL_337;
      }

      v351[0] = bswap64(*(&v346 + 1));
      v279 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v280 = 0;
      v281 = v279 + 1;
      do
      {
        v282 = *(v351 + v280);
        *(v281 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v282 >> 4];
        *v281 = MSVFastHexStringFromBytes_hexCharacters_4916[v282 & 0xF];
        v281 += 2;
        ++v280;
      }

      while (v280 != 8);
      v276 = objc_alloc(MEMORY[0x1E696AEC0]);
      v277 = v279;
      v278 = 16;
    }

    goto LABEL_318;
  }

  if (*v345 == 1000)
  {
    v289 = *(&v346 + 1);
    if (*(&v346 + 1))
    {
      v290 = &v352 + 1;
      v291 = *(&v346 + 1);
      do
      {
        v292 = lldiv(v291, 10);
        v291 = v292.quot;
        if (v292.rem >= 0)
        {
          LOBYTE(v293) = v292.rem;
        }

        else
        {
          v293 = -v292.rem;
        }

        *(v290 - 2) = v293 + 48;
        v269 = (v290 - 2);
        --v290;
      }

      while (v292.quot);
      if (v289 < 0)
      {
        *(v290 - 2) = 45;
        v269 = (v290 - 2);
      }

      v268 = (&v352 - v269);
      goto LABEL_308;
    }

LABEL_341:
    v311 = @"0";
    goto LABEL_320;
  }

  if (*v345 != 2000)
  {
LABEL_337:
    v325 = [MEMORY[0x1E696AAA8] currentHandler];
    v326 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v325 handleFailureInFunction:v326 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v311 = &stru_1F214F018;
    goto LABEL_320;
  }

  v264 = DWORD2(v346);
  if (!DWORD2(v346))
  {
    goto LABEL_341;
  }

  v265 = &v352;
  do
  {
    v266 = ldiv(v264, 10);
    v264 = v266.quot;
    if (v266.rem >= 0)
    {
      LOBYTE(v267) = v266.rem;
    }

    else
    {
      v267 = -v266.rem;
    }

    *(v265 - 1) = v267 + 48;
    v265 = (v265 - 1);
  }

  while (v266.quot);
  v268 = (&v352 - v265);
  v269 = v265;
LABEL_308:
  v294 = CFStringCreateWithBytes(0, v269, v268, 0x8000100u, 0);
LABEL_319:
  v311 = v294;
LABEL_320:

  v312 = os_log_create("com.apple.amp.MediaServices", "SQL");
  if (os_log_type_enabled(v312, OS_LOG_TYPE_INFO))
  {
    *v331 = 138543874;
    *&v331[4] = v311;
    *&v331[12] = 2048;
    *&v331[14] = self;
    *&v331[22] = 2114;
    *&v331[24] = v7;
    _os_log_impl(&dword_1AC81F000, v312, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] statementWithString:… | creating mutable connection [mutating sql statement] statement=%{public}@", v331, 0x20u);
  }

  v329 = 0;
  v313 = [(_MSVSQLConnection *)self mutableCloneWithError:?];
  v314 = v329;
  v315 = os_log_create("com.apple.amp.MediaServices", "SQL");
  v316 = v315;
  if (v313)
  {
    if (os_log_type_enabled(v315, OS_LOG_TYPE_INFO))
    {
      *v331 = 138543618;
      *&v331[4] = v311;
      *&v331[12] = 2048;
      *&v331[14] = self;
      _os_log_impl(&dword_1AC81F000, v316, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] statementWithString:… | creating implicit transaction [mutating sql statement]", v331, 0x16u);
    }

    v317 = [MSVSQLDatabaseTransaction alloc];
    v318 = [@"Implicit-" stringByAppendingString:v311];
    v328 = 0;
    v319 = [(MSVSQLDatabaseTransaction *)v317 initWithConnection:v313 name:v318 error:&v328];
    v320 = v328;

    if (v319)
    {
      v321 = [(__CFString *)v319 statementWithString:v7 error:a4];
      v19 = v321;
      if (v321)
      {
        objc_storeStrong((v321 + 24), v319);
      }
    }

    else
    {
      v323 = _MSVLogCategorySQL();
      if (os_log_type_enabled(v323, OS_LOG_TYPE_ERROR))
      {
        *v331 = 138543874;
        *&v331[4] = v311;
        *&v331[12] = 2048;
        *&v331[14] = self;
        *&v331[22] = 2114;
        *&v331[24] = v320;
        _os_log_impl(&dword_1AC81F000, v323, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] statementWithString:… | failed to create implicit transaction [] error=%{public}@", v331, 0x20u);
      }

      if (a4)
      {
        v324 = v320;
        v19 = 0;
        *a4 = v320;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
    {
      *v331 = 138543874;
      *&v331[4] = v311;
      *&v331[12] = 2048;
      *&v331[14] = self;
      *&v331[22] = 2114;
      *&v331[24] = v314;
      _os_log_impl(&dword_1AC81F000, v316, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] statementWithString:… | failed to create mutable connection [] error=%{public}@", v331, 0x20u);
    }

    if (a4)
    {
      v322 = v314;
      v19 = 0;
      *a4 = v314;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_208:
  v210 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)mutableCloneWithError:(void *)a1
{
  if (a1)
  {
    a1 = [a1 _cloneWithOptions:a1[5] | 1 error:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)_installArraySupport
{
  if (!self->_arraySupportInstalled)
  {
    self->_arraySupportInstalled = sqlite3_create_module(self->_connectionHandle, "msv_carray", &msv_carrayModule, 0) == 0;
  }
}

@end