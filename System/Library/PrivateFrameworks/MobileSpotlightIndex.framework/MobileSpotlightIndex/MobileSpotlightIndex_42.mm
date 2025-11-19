int *PayloadWritePulseHeader(int *result, void *a2, uint64_t a3, int a4)
{
  if (a3 && !*(result + 4))
  {
    v4 = a2[1];
    if ((v4 - *a2) <= 0x13)
    {
      v8 = __si_assert_copy_extra_332();
      v9 = v8;
      v10 = "";
      if (v8)
      {
        v10 = v8;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 279, "pd->payloadIndex - pd->payloadLimit >= sizeof(PulseHeaderDisk)", v10);
      free(v9);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    LODWORD(v13) = -1;
    *(&v13 + 4) = a3;
    HIDWORD(v13) = a4;
    v14 = -1;
    v5 = *(result + 3);
    if (v5 < 21)
    {
      v11 = a2;
      v12 = result;
      _PayloadWriteData_3709(result, a2, &v13, 20);
      a2 = v11;
      result = v12;
    }

    else
    {
      a2[1] = v4 - 20;
      *(result + 3) = v5 - 20;
      v6 = *result + v5 - 20;
      v7 = v13;
      *(v6 + 16) = v14;
      *v6 = v7;
    }

    return PayloadWriteBufferWrite(result, a2);
  }

  return result;
}

int *_PayloadWriteData_3709(int *result, void *a2, char *a3, int64_t a4)
{
  v5 = result;
  v6 = &a3[a4];
  if (a4)
  {
    v7 = a4;
    do
    {
      if (*(v5 + 4))
      {
        break;
      }

      v9 = *(v5 + 3);
      if (v7 >= v9)
      {
        v10 = *(v5 + 3);
      }

      else
      {
        v10 = v7;
      }

      a2[1] -= v10;
      v11 = v9 - v10;
      *(v5 + 3) = v11;
      v6 -= v10;
      result = memcpy((*v5 + v11), v6, v10);
      if (!*(v5 + 3))
      {
        result = PayloadWriteBufferWrite(v5, a2);
      }

      v7 -= v10;
    }

    while (v7);
  }

  if (v6 != a3 && !*(v5 + 4))
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.h", 146, "src == ptr || wb->err", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

uint64_t growPayloadData(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v21 = v2;
  v22 = v3;
  v4 = v1;
  v25 = *MEMORY[0x1E69E9840];
  bzero(v24, 0x1000uLL);
  v5 = *v4;
  v6 = v4[1] - *v4;
  for (i = _fd_acquire_fd(v4[561], v4 + 563); v6; v6 -= v23)
  {
    if (v6 >= 0x1000)
    {
      v8 = 4096;
    }

    else
    {
      v8 = v6;
    }

    v9 = v24;
    v23 = v8;
    v10 = v5;
    do
    {
      while (1)
      {
        v11 = guarded_pwrite_np();
        if ((v11 & 0x8000000000000000) != 0)
        {
          break;
        }

        v14 = v8 > v11;
        v8 -= v11;
        if (!v14)
        {
          goto LABEL_3;
        }

        v9 += v11;
        v10 += v11;
      }

      v12 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v13 = __error();
    }

    while (((*(v12 + 16))(v12, i, *v13, 5) & 1) != 0);
LABEL_3:
    v5 += v23;
  }

  _fd_release_fd(v4[561], i, 0, v4[563]);
  if (v5 != v4[1])
  {
    v17 = __si_assert_copy_extra_332();
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.c", 380, "pos == pd->payloadIndex", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      v20 = 2989;
    }

    else
    {
      v20 = 3072;
    }

    *v20 = -559038737;
    abort();
  }

  result = expandPayload(v4, v21, v22);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t compressPostings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v152 = v11;
  v153 = v10;
  v140 = v12;
  v14 = v13;
  v16 = v15;
  v150 = v17;
  v19 = v18;
  v20 = v9;
  v171 = *MEMORY[0x1E69E9840];
  v166 = 0;
  *v164 = 0u;
  v165 = 0u;
  v168 = 0uLL;
  v167[1] = 0x8000;
  v21 = malloc_type_malloc(0x8000uLL, 0x82ECAA0EuLL);
  v167[0] = v21;
  PayloadWriteBufferInit(v164, v20);
  v22 = *(v20 + 8);
  Current = CFAbsoluteTimeGetCurrent();
  v149 = v14;
  v24 = 0;
  if (v16)
  {
    v25 = *(v20 + 4456);
    v26 = (v14 + 24 * v16 - 8);
    v27 = v16;
    do
    {
      v29 = *(v26 - 4);
      if (v25 <= v29)
      {
        v28 = 0;
        ++v24;
      }

      else
      {
        v28 = *storageResolvePtr(v20 + 40, 8 * v29, 8, 1);
      }

      *v26 = v28;
      v26 -= 3;
      --v27;
    }

    while (v27);
  }

  v30 = *__error();
  v31 = _SILogForLogForCategory(10);
  v32 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 134217984;
    *&buf[4] = v33;
    _os_log_impl(&dword_1C278D000, v31, v32, "resolve term id offsets: %f", buf, 0xCu);
  }

  v34 = __error();
  *v34 = v30;
  if (v24)
  {
    si_analytics_log_3718(v34, v35, v36, v37, v38, v39, v40, v41, v24);
  }

  v42 = CFAbsoluteTimeGetCurrent();
  madvise(v153, 12 * v19, 3);
  v43 = *__error();
  v44 = _SILogForLogForCategory(10);
  v45 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v44, v45))
  {
    v46 = CFAbsoluteTimeGetCurrent() - v42;
    *buf = 134217984;
    *&buf[4] = v46;
    _os_log_impl(&dword_1C278D000, v44, v45, "make hot: %f", buf, 0xCu);
  }

  *__error() = v43;
  v47 = CFAbsoluteTimeGetCurrent();
  v163 = 0;
  *v161 = 0u;
  *v162 = 0u;
  v159 = 0u;
  *v160 = 0u;
  *v158 = 0u;
  LODWORD(v160[1]) = 16;
  v160[0] = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  LODWORD(v161[1]) = 16;
  v161[0] = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  LODWORD(v162[1]) = 16;
  v48 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v49 = 0;
  v148 = 0;
  v162[0] = v48;
  *v156 = 0u;
  v157 = 0u;
  v50 = v16 - 1;
  if (v16)
  {
    v51 = v149;
    v52 = v21;
    if (!v166)
    {
      v49 = 0;
      v53 = 0;
      while (1)
      {
        v54 = v51 + 24 * v49;
        v55 = *v54;
        v151 = *v54;
        if (v49 == v50)
        {
          break;
        }

        v55 = *(v54 + 24);
        if (v151 > v55)
        {
          break;
        }

        v148 = *(v54 + 24);
        v75 = 1;
        v76 = v22;
LABEL_114:
        if (++v49 < v16)
        {
          v22 = v76;
          if (v75)
          {
            continue;
          }
        }

        goto LABEL_122;
      }

      v148 = v55;
      v168 = xmmword_1C2BFA3F0;
      v56 = *(v54 + 8);
      v57 = *(v54 + 16);
      LODWORD(v158[1]) = 0;
      *&v159 = 0;
      v163 = 0;
      DWORD2(v159) = -1;
      v143 = v51 + 24 * v49;
      v144 = v49;
      if (*v56 >= 2u)
      {
        do
        {
          v65 = &v153[12 * (*v56 >> 1)];
          if (*v56 >= 2u)
          {
            _X28 = &v153[12 * (*v56 >> 1)];
          }

          else
          {
            _X28 = 0;
          }

          __asm { PRFM            #0, [X28] }

          if (*v56)
          {
            v73 = *(v56 + 1);
            if (*(v56 + 1) == 2)
            {
              v74 = 1;
            }

            else
            {
              v74 = 2;
            }

            checkChangeHolderIntegrity(v156);
            changesHandleUpdate(v156, v73, v74);
            if (v156[1] && !*(&v157 + 1))
            {
              *v156[0] = *(v156[0] + v157 - v156[1]);
              *(&v157 + 1) = 1;
            }

            checkChangeHolderIntegrity(v156);
          }

          else if (!v156[1] || (v72 = *(v56 + 2), (v72 + v150) > *v156[0]) || (merge_checkAgainstUpdates(v158, v156, v72, v150) & 1) == 0)
          {
            packContextAppend(v158, *(v56 + 2));
          }

          v56 = v65;
        }

        while (_X28);
        merge_checkAgainstUpdates1(v158, v156, v140, v150);
        v77 = packContextFinalize(v167);
        goto LABEL_70;
      }

      v58 = *(v56 + 4);
      if (*v56 == 1)
      {
        *&v168 = packUpdateLink(v52, v57, *(v56 + 4), *(v56 + 3));
        goto LABEL_69;
      }

      v59 = writeVInt64(v52, 20, 2 * v57);
      v60 = v58 >> 31;
      if (v58 == 1)
      {
        v61 = v60 | 1;
        v62 = v60 >> 28;
        if (v60 >> 28)
        {
          v83 = (v52 + v59);
          *v83 = v60 | 0x81;
          v83[1] = (v58 >> 38) | 0x80;
          v83[2] = (v58 >> 45) | 0x80;
          v83[3] = (v58 >> 52) | 0x80;
          v64 = v59 + 5;
          v83[4] = v62;
        }

        else if (v60 >= 0x200000)
        {
          v85 = (v52 + v59);
          *v85 = v60 | 0x81;
          v85[1] = (v58 >> 38) | 0x80;
          v85[2] = (v58 >> 45) | 0x80;
          v64 = v59 + 4;
          v85[3] = v58 >> 52;
        }

        else
        {
          v63 = (v52 + v59);
          if (v60 >= 0x4000)
          {
            *v63 = v60 | 0x81;
            v63[1] = (v58 >> 38) | 0x80;
            v64 = v59 + 3;
            v63[2] = v58 >> 45;
          }

          else if (v60 >= 0x80)
          {
            *v63 = v60 | 0x81;
            v64 = v59 + 2;
            v63[1] = v58 >> 38;
          }

          else
          {
            v64 = v59 + 1;
            *v63 = v61;
          }
        }

        goto LABEL_68;
      }

      v78 = v60 & 0xFE;
      v79 = v60 >> 28;
      if (!(v60 >> 28))
      {
        if (v60 >= 0x200000)
        {
          v86 = (v52 + v59);
          *v86 = v60 & 0x7E | 0x80;
          v86[1] = (v58 >> 38) | 0x80;
          v86[2] = (v58 >> 45) | 0x80;
          v81 = v59 + 4;
          v86[3] = v58 >> 52;
          v82 = v58 >> 28;
          if (v58 >> 28)
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        v80 = (v52 + v59);
        if (v60 >= 0x4000)
        {
          *v80 = v60 & 0x7E | 0x80;
          v80[1] = (v58 >> 38) | 0x80;
          v81 = v59 + 3;
          v80[2] = v58 >> 45;
          v82 = v58 >> 28;
          if (!(v58 >> 28))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v60 < 0x80)
          {
            v81 = v59 + 1;
            *v80 = v78;
            v82 = v58 >> 28;
            if (v58 >> 28)
            {
              goto LABEL_67;
            }

LABEL_59:
            if (v58 >= 0x200000)
            {
              v88 = (v52 + v81);
              *v88 = v58 | 0x80;
              v88[1] = (v58 >> 7) | 0x80;
              v88[2] = (v58 >> 14) | 0x80;
              v64 = v81 + 4;
              v88[3] = v58 >> 21;
            }

            else
            {
              v87 = (v52 + v81);
              if (v58 >= 0x4000)
              {
                *v87 = v58 | 0x80;
                v87[1] = (v58 >> 7) | 0x80;
                v64 = v81 + 3;
                v87[2] = v58 >> 14;
              }

              else if (v58 >= 0x80)
              {
                *v87 = v58 | 0x80;
                v64 = v81 + 2;
                v87[1] = v58 >> 7;
              }

              else
              {
                v64 = v81 + 1;
                *v87 = v58;
              }
            }

            goto LABEL_68;
          }

          *v80 = v60 & 0x7E | 0x80;
          v81 = v59 + 2;
          v80[1] = v58 >> 38;
          v82 = v58 >> 28;
          if (!(v58 >> 28))
          {
            goto LABEL_59;
          }
        }

LABEL_67:
        v89 = (v52 + v81);
        *v89 = v58 | 0x80;
        v89[1] = (v58 >> 7) | 0x80;
        v89[2] = (v58 >> 14) | 0x80;
        v89[3] = (v58 >> 21) | 0x80;
        v64 = v81 + 5;
        v89[4] = v82;
LABEL_68:
        *&v168 = v64;
LABEL_69:
        v77 = 20;
LABEL_70:
        v90 = v151 - v148;
        v91 = v167[0];
        if ((v151 - v148) >> 28)
        {
          *(v167[0] + v77 - 4) = v90;
          LOBYTE(v90) = -16;
          v92 = -5;
        }

        else if (v90 >= 0x200000)
        {
          v93 = v167[0] + v77;
          *(v93 - 2) = bswap32(v90) >> 16;
          *(v93 - 3) = BYTE2(v90);
          v90 = HIBYTE(v90) | 0xFFFFFFE0;
          v92 = -4;
        }

        else if (v90 >= 0x4000)
        {
          *(v167[0] + v77 - 2) = bswap32(v90) >> 16;
          v90 = HIWORD(v90) | 0xFFFFFFC0;
          v92 = -3;
        }

        else if (v90 >= 0x80)
        {
          *(v167[0] + v77 - 1) = v90;
          v90 = (v90 >> 8) | 0xFFFFFF80;
          v92 = -2;
        }

        else
        {
          v92 = -1;
        }

        v142 = v92;
        v145 = v92 + v77;
        v146 = v91;
        v91[v92 + v77] = v90;
        __n = v168 - (v92 + v77);
        v95 = *v20;
        v94 = *(v20 + 8);
        v96 = v94 - *v20;
        if (__n + 20 <= v96)
        {
          v104 = *(&v165 + 1);
          ++v53;
          v76 = v22;
        }

        else
        {
          LOBYTE(v53) = v53 == 0;
          v76 = *(v20 + 8);
          while (1)
          {
            if ((v53 & 1) != 0 || v22 == v76)
            {
              goto LABEL_88;
            }

            if (v96 <= 0x13)
            {
              goto LABEL_147;
            }

            *&buf[4] = v22 - v76;
            v170 = -1;
            *buf = -1;
            *&buf[12] = v151;
            v97 = *(&v165 + 1);
            if (*(&v165 + 1) < 21)
            {
              _PayloadWriteData_3709(v164, v20, buf, 20);
            }

            else
            {
              *(v20 + 8) = v76 - 20;
              *(&v165 + 1) = v97 - 20;
              v98 = v164[0] + v97 - 20;
              v99 = v170;
              *v98 = *buf;
              *(v98 + 4) = v99;
            }

            PayloadWriteBufferWrite(v164, v20);
            v95 = *v20;
            v76 = *(v20 + 8);
            if (!v166)
            {
LABEL_88:
              bzero(buf, 0x1000uLL);
              v101 = v76 - v95;
              v102 = _fd_acquire_fd(*(v20 + 4488), (v20 + 4504));
              if (v76 != v95)
              {
                do
                {
                  if (v101 >= 0x1000)
                  {
                    v105 = 4096;
                  }

                  else
                  {
                    v105 = v101;
                  }

                  v106 = buf;
                  v107 = v105;
                  v108 = v95;
                  do
                  {
                    while (1)
                    {
                      v109 = guarded_pwrite_np();
                      if ((v109 & 0x8000000000000000) != 0)
                      {
                        break;
                      }

                      v112 = v107 > v109;
                      v107 -= v109;
                      if (!v112)
                      {
                        goto LABEL_96;
                      }

                      v106 += v109;
                      v108 += v109;
                    }

                    v110 = g_prot_error_callback;
                    if (!g_prot_error_callback)
                    {
                      break;
                    }

                    v111 = __error();
                  }

                  while (((*(v110 + 16))(v110, v102, *v111, 5) & 1) != 0);
LABEL_96:
                  v95 += v105;
                  v101 -= v105;
                }

                while (v101);
              }

              _fd_release_fd(*(v20 + 4488), v102, 0, *(v20 + 4504));
              if (v95 != *(v20 + 8))
              {
LABEL_147:
                v139 = __si_assert_copy_extra_332();
                __message_assert("%s:%u: failed assertion '%s' %s ");
                goto LABEL_148;
              }

              v103 = expandPayload(v20, v152, a9);
              v166 = v103;
              v95 = *v20;
              v76 = *(v20 + 8);
              v100 = v103 != 0;
            }

            else
            {
              v100 = 1;
            }

            v96 = v76 - v95;
            v104 = v164[1];
            if ((v76 - v95) < v164[1])
            {
              v104 = (v76 - v95);
            }

            *&v165 = v104;
            *(&v165 + 1) = v104;
            v53 = 1;
            if (__n + 20 <= v96)
            {
              break;
            }

            v22 = v76;
            v94 = v76;
            if (v100)
            {
              goto LABEL_111;
            }
          }

          v94 = v76;
        }

LABEL_111:
        if (v104 <= __n)
        {
          v52 = v146;
          _PayloadWriteData_3709(v164, v20, &v146[v145], __n);
        }

        else
        {
          *(v20 + 8) = v94 - __n;
          *(&v165 + 1) = v104 - __n;
          v52 = v146;
          memcpy(v164[0] + v104 - __n, &v146[v145], __n);
        }

        v51 = v149;
        *(v143 + 16) = *(v20 + 8) - v142;
        v75 = v166 == 0;
        v49 = v144;
        v50 = v16 - 1;
        goto LABEL_114;
      }

      v84 = (v52 + v59);
      *v84 = v60 & 0x7E | 0x80;
      v84[1] = (v58 >> 38) | 0x80;
      v84[2] = (v58 >> 45) | 0x80;
      v84[3] = (v58 >> 52) | 0x80;
      v81 = v59 + 5;
      v84[4] = v79;
      v82 = v58 >> 28;
      if (v58 >> 28)
      {
        goto LABEL_67;
      }

      goto LABEL_59;
    }

    v76 = v22;
  }

  else
  {
    v76 = v22;
    v52 = v21;
  }

LABEL_122:
  v147 = v52;
  v113 = v49;
  free(v158[0]);
  free(v160[0]);
  free(v161[0]);
  free(v162[0]);
  free(v156[0]);
  PayloadWritePulseHeader(v164, v20, v76 - *(v20 + 8), v148);
  v114 = *__error();
  v115 = _SILogForLogForCategory(10);
  v116 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v115, v116))
  {
    v117 = CFAbsoluteTimeGetCurrent() - v47;
    *buf = 134217984;
    *&buf[4] = v117;
    _os_log_impl(&dword_1C278D000, v115, v116, "write postings: %f", buf, 0xCu);
  }

  *__error() = v114;
  v118 = CFAbsoluteTimeGetCurrent();
  if (v113)
  {
    v119 = 0;
    v120 = 0;
    v121 = *MEMORY[0x1E695E480];
    v122 = MEMORY[0x1E69E9AC8];
    while (1)
    {
      v123 = (v149 + 24 * v119);
      v124 = *(v123 + 2);
      if (v124 >> 62)
      {
        break;
      }

      v125 = 8 * *v123;
      v126 = v125 / *v122;
      v127 = *(v20 + 4472);
      if (v127 <= v126)
      {
        if (v127)
        {
          v128 = *(v20 + 4472);
        }

        else
        {
          v128 = 32;
        }

        while (1)
        {
          v128 *= 2;
          if (v128 > v126)
          {
            break;
          }

          if (v128 <= v127)
          {
            goto LABEL_147;
          }
        }

        v155 = v125 / *v122;
        v129 = *(v20 + 4480);
        if (v129)
        {
          MutableCopy = CFBitVectorCreateMutableCopy(v121, v128, v129);
        }

        else
        {
          MutableCopy = CFBitVectorCreateMutable(v121, v128);
        }

        if (!MutableCopy)
        {
          goto LABEL_147;
        }

        v154 = MutableCopy;
        CFBitVectorSetCount(MutableCopy, v128);
        v131 = *(v20 + 4480);
        if (v131)
        {
          CFRelease(v131);
        }

        v126 = v155;
        *(v20 + 4480) = v154;
        *(v20 + 4472) = v128;
      }

      if (*(v20 + 4464) <= v126)
      {
        *(v20 + 4464) = v126 + 1;
      }

      CFBitVectorSetBitAtIndex(*(v20 + 4480), v126, 1u);
      *storageResolvePtr(v20 + 40, v125, 8, 1) = v124;
      v119 = ++v120;
      if (v113 <= v120)
      {
        goto LABEL_144;
      }
    }

    v139 = __si_assert_copy_extra_332();
    __message_assert("%s:%u: failed assertion '%s' %s write invalid offset %llu");
LABEL_148:
    free(v139);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_144:
  v132 = *__error();
  v133 = _SILogForLogForCategory(10);
  v134 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v133, v134))
  {
    v135 = CFAbsoluteTimeGetCurrent() - v118;
    *buf = 134217984;
    *&buf[4] = v135;
    _os_log_impl(&dword_1C278D000, v133, v134, "update term id offsets: %f", buf, 0xCu);
  }

  *__error() = v132;
  v136 = v166;
  free(v164[0]);
  free(v147);
  v137 = *MEMORY[0x1E69E9840];
  return v136;
}

void si_analytics_log_3718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%u term ids out of range", &a9);
  SISetCrashCStr(v10[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v12 = v10[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v10[0]);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t packUpdateLink(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = writeVInt64(a1, 20, 2 * a2);
  v8 = writeVInt64(a1, v7, 2 * __PAIR64__(a4, HIDWORD(a3)));
  *(a1 + v8) = 0;
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + v8 + 1) = v9;
  return v8 + 2;
}

xpc_object_t __analytics_log_large_index_find_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "NodeCount", v1);
  if (*v2)
  {
    Length = CFStringGetLength(*v2);
    xpc_dictionary_set_uint64(empty, "UserQueryLength", Length);
  }

  if (*(v2 + 8))
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(empty, "ClientBundleIdentifier", v5);
    xpc_release(v5);
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    string = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    if (_db_render_query_tree(&v8))
    {
      xpc_dictionary_set_string(empty, "QueryNodes", string);
    }

    free(string);
  }

  return empty;
}

unint64_t compareDMs(uint64_t a1)
{
  result = data_map_double_count(a1);
  if (result)
  {
    v3 = result;
    for (i = 1; i <= v3; ++i)
    {
      v5 = 0;
      result = data_map_double_get_data(a1, i, &v5);
    }
  }

  return result;
}

unint64_t data_map_double_count(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  v2 = data_map_count(*(a1 + 440));
  v3 = (*(**(a1 + 448) + 96))(*(a1 + 448));
  pthread_rwlock_unlock((a1 + 224));
  if (*(a1 + 432) == 1)
  {
    if (v2 != v3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v19 = 1024;
        *v20 = 281;
        *&v20[4] = 2080;
        *&v20[6] = "data_map_double_count";
        v21 = 2080;
        v22 = "output == output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v18 = v2;
        v19 = 2048;
        *v20 = v3;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      }

      v4 = __si_assert_copy_extra_332();
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      __message_assert(v4, "data_map_double.m", 281, "output == output_new", v6);
      goto LABEL_13;
    }
  }

  else if (v2 != v3)
  {
    v8 = (a1 + 224);
    if (v2 >= v3)
    {
      pthread_rwlock_wrlock(v8);
      v11 = (*(**(a1 + 448) + 96))(*(a1 + 448));
      if (v2 <= v11)
      {
        pthread_rwlock_unlock((a1 + 224));
        goto LABEL_27;
      }

      v14 = v11;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v19 = 1024;
        *v20 = 291;
        *&v20[4] = 2080;
        *&v20[6] = "data_map_double_count";
        v21 = 2080;
        v22 = "output <= output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v18 = v2;
        v19 = 2048;
        *v20 = v14;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu > %llu\n", buf, 0x16u);
      }

      v15 = __si_assert_copy_extra_332();
      v5 = v15;
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }

      __message_assert(v15, "data_map_double.m", 291, "output <= output_new", v16);
    }

    else
    {
      pthread_rwlock_rdlock(v8);
      v2 = data_map_count(*(a1 + 440));
      pthread_rwlock_unlock((a1 + 224));
      if (v2 >= v3)
      {
        goto LABEL_27;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v19 = 1024;
        *v20 = 287;
        *&v20[4] = 2080;
        *&v20[6] = "data_map_double_count";
        v21 = 2080;
        v22 = "output >= output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v18 = v2;
        v19 = 2048;
        *v20 = v3;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu < %llu\n", buf, 0x16u);
      }

      v9 = __si_assert_copy_extra_332();
      v5 = v9;
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }

      __message_assert(v9, "data_map_double.m", 287, "output >= output_new", v10);
    }

LABEL_13:
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

LABEL_27:
  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

const void *data_map_double_get_data(uint64_t a1, uint64_t a2, size_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  data = data_map_get_data(*(a1 + 440), a2, a3);
  v19 = 0;
  v7 = (*(**(a1 + 448) + 192))(*(a1 + 448), a2, &v19);
  pthread_rwlock_unlock((a1 + 224));
  v8 = *a3;
  v9 = v19;
  if (*a3 != v19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      v22 = 1024;
      *v23 = 452;
      *&v23[4] = 2080;
      *&v23[6] = "data_map_double_get_data";
      v24 = 2080;
      v25 = "*out_data_size == size_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      v8 = *a3;
      v9 = v19;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = v8;
      v22 = 2048;
      *v23 = v9;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      v8 = *a3;
      v9 = v19;
    }

    v10 = v8 == v9;
    v8 = v9;
    if (!v10)
    {
      v16 = __si_assert_copy_extra_332();
      v14 = v16;
      v17 = "";
      if (v16)
      {
        v17 = v16;
      }

      __message_assert(v16, "data_map_double.m", 452, "*out_data_size == size_new", v17);
      goto LABEL_23;
    }
  }

  if (v8 >= 1)
  {
    if (memcmp(data, v7, v8) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
      v8 = *a3;
    }

    if (memcmp(data, v7, v8))
    {
      v13 = __si_assert_copy_extra_332();
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert(v13, "data_map_double.m", 454, "memcmp(output, output_new, *out_data_size) == 0", v15);
LABEL_23:
      free(v14);
      if (__valid_fs(-1))
      {
        v18 = 2989;
      }

      else
      {
        v18 = 3072;
      }

      *v18 = -559038737;
      abort();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return data;
}

uint64_t validate_ids(unsigned int *a1, int a2, unsigned int *a3, int a4)
{
  LODWORD(v4) = a4;
  LODWORD(v6) = a2;
  v25 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = result;
  if (v6)
  {
    v6 = v6;
    do
    {
      v10 = *a1++;
      result = [v9 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v10)}];
      --v6;
    }

    while (v6);
  }

  if (v4)
  {
    v4 = v4;
    do
    {
      v11 = *a3++;
      result = [v9 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
      if ((result & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v18 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v19 = 1024;
          v20 = 356;
          v21 = 2080;
          v22 = "validate_ids";
          v23 = 2080;
          v24 = "0";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: missing id\n", buf, 2u);
        }

        v13 = __si_assert_copy_extra_332();
        v14 = v13;
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        __message_assert(v13, "data_map_double.m", 356, "0", v15);
        free(v14);
        if (__valid_fs(-1))
        {
          v16 = 2989;
        }

        else
        {
          v16 = 3072;
        }

        *v16 = -559038737;
        abort();
      }

      --v4;
    }

    while (v4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SIStringContainsNewlineCharacters(UniChar *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 < 1)
    {
      return 0;
    }

    else
    {
      v5 = 1;
      v6 = a2;
      v7 = 1;
      do
      {
        v8 = *a1;
        if (v8 == 9 || v8 == 8200)
        {
          break;
        }

        if (v8 == 12288)
        {
          break;
        }

        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
        if (CFCharacterSetIsCharacterMember(Predefined, *a1))
        {
          break;
        }

        v7 = v5 < a2;
        ++a1;
        ++v5;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  return result;
}

__int128 *L1RankQueuePop(__int128 *result, void *a2)
{
  v120 = *MEMORY[0x1E69E9840];
  v2 = a2[2];
  if (v2 != 1)
  {
    v4 = *a2;
    v71 = *(*a2 + 112);
    v72 = *(*a2 + 128);
    v73 = *(*a2 + 144);
    v69 = *(*a2 + 80);
    v70 = *(*a2 + 96);
    v5 = *a2 + 80 * v2;
    v6 = *(v5 - 80);
    v7 = *(v5 - 72);
    v78 = *(v5 - 64);
    v80 = *(v5 - 48);
    v8 = *(v5 - 32);
    v9 = *(v5 - 28);
    v10 = *(v5 - 24);
    v11 = *(v5 - 20);
    v12 = *(v5 - 16);
    v13 = *(v5 - 12);
    v14 = *(v5 - 11);
    v15 = *(v5 - 10);
    LOWORD(v5) = *(v5 - 2);
    *(v4 + 96) = v78;
    *(v4 + 112) = v80;
    v74 = v12;
    v76 = v13;
    v114 = v15;
    v115 = v5;
    *(v4 + 80) = v6;
    *(v4 + 88) = v7;
    *(v4 + 128) = v8;
    *(v4 + 132) = v9;
    *(v4 + 136) = v10;
    *(v4 + 140) = v11;
    *(v4 + 148) = v13;
    *(v4 + 144) = v12;
    *(v4 + 149) = v14;
    *(v4 + 158) = v115;
    *(v4 + 150) = v15;
    v16 = a2[1];
    v17 = a2[2];
    a2[2] = v17 - 1;
    v68 = v16 >> 1;
    v110 = v12;
    v111 = v13;
    v118 = v15;
    v18 = 3;
    v119 = v115;
    v19 = 2;
    v20 = 1;
    v112 = v78;
    v113 = v80;
    while (1)
    {
      v21 = *a2;
      v22 = *a2 + 80 * v19;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 48);
      v26 = *(v22 + 52);
      v27 = *(v22 + 56);
      v28 = *(v22 + 60);
      v29 = *(v22 + 69);
      v30 = *a2 + 80 * v18;
      v32 = *v30;
      v31 = *(v30 + 8);
      v33 = *(v30 + 32);
      v108 = *(v30 + 16);
      v109 = v33;
      v34 = *(v30 + 48);
      v35 = *(v30 + 52);
      v36 = *(v30 + 56);
      v37 = *(v30 + 60);
      v106 = *(v30 + 64);
      v107 = *(v30 + 68);
      v38 = *(v30 + 69);
      v39 = *(v30 + 70);
      v117 = *(v30 + 78);
      v116 = v39;
      if (v18 >= v17)
      {
        v108 = xmmword_1C2BF6D40;
        v109 = unk_1C2BF6D50;
        v106 = 0;
        v107 = 0;
        v116 = 0;
        v117 = 0;
        if (v19 >= v17)
        {
          goto LABEL_3;
        }

        v34 = 0;
        v36 = 0;
        v38 = 0;
        v32 = -1;
        v37 = 0.0;
        v35 = 3.4028e38;
        v31 = -1;
      }

      v94[0] = v6;
      v94[1] = v7;
      v95 = v78;
      v96 = v80;
      v97 = v8;
      v98 = v9;
      v99 = v10;
      v100 = v11;
      v101 = v74;
      v102 = v76;
      v103 = v14;
      v104 = v114;
      v105 = v115;
      v82[0] = v32;
      v82[1] = v31;
      v83 = v108;
      v84 = v109;
      v85 = v34;
      v86 = v35;
      v87 = v36;
      v88 = v37;
      v89 = v106;
      v90 = v107;
      v91 = v38;
      v93 = v117;
      v92 = v116;
      if (v29)
      {
        if (v28 < v11)
        {
          goto LABEL_19;
        }

        if (v28 != v11)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (__PAIR128__(v24, v23) < __PAIR128__(v7, v6))
        {
          goto LABEL_19;
        }

        if (v24 != v7 || v23 != v6)
        {
LABEL_38:
          v61 = v14;
          v62 = v10;
          v63 = v8;
          v64 = v7;
          v65 = v6;
          v66 = a2;
          v67 = result;
          if (!ci_rankingbits_wrapped_s::operator<(v82, v94))
          {
            _X8 = v21 + 160 * v20;
            __asm { PRFM            #1, [X8] }

            result = v67;
            goto LABEL_3;
          }

          v43 = &v116;
          v42 = &v106;
          v41 = &v108;
          v29 = v38;
          v28 = v37;
          v27 = v36;
          v26 = v35;
          v25 = v34;
          v23 = v32;
          v24 = v31;
          v19 = v18;
          a2 = v66;
          result = v67;
          v7 = v64;
          v6 = v65;
          v10 = v62;
          v8 = v63;
          v14 = v61;
          goto LABEL_33;
        }
      }

      if (v26 >= v9 && (v26 != v9 || v25 <= v8))
      {
        goto LABEL_38;
      }

LABEL_19:
      v41 = (v22 + 16);
      v42 = (v22 + 64);
      v43 = (v22 + 70);
      if ((v38 & 1) == 0)
      {
        if (__PAIR128__(v31, v32) >= __PAIR128__(v24, v23))
        {
          if (v31 != v24 || v32 != v23)
          {
            goto LABEL_33;
          }

LABEL_29:
          if (v35 >= v26 && (v35 != v26 || v34 <= v25))
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        v43 = &v116;
        v42 = &v106;
        v41 = &v108;
        v29 = v38;
        v28 = v37;
        v27 = v36;
        v26 = v35;
        v25 = v34;
        v23 = v32;
        v24 = v31;
        v19 = v18;
        goto LABEL_33;
      }

      if (v37 < v28)
      {
        goto LABEL_32;
      }

      if (v37 == v28)
      {
        goto LABEL_29;
      }

LABEL_33:
      v79 = *v41;
      v81 = v41[1];
      v75 = *v42;
      v77 = *(v42 + 4);
      v114 = *v43;
      v115 = *(v43 + 4);
      _X14 = v21 + 160 * v19;
      __asm { PRFM            #1, [X14] }

      if (v19 != v20)
      {
        v50 = v21 + 80 * v19;
        *v50 = v6;
        *(v50 + 8) = v7;
        v51 = v113;
        v52 = v112;
        v53 = v113;
        *(v50 + 16) = v112;
        *(v50 + 32) = v51;
        *(v50 + 48) = v8;
        *(v50 + 52) = v9;
        *(v50 + 56) = v10;
        *(v50 + 60) = v11;
        v54 = v110;
        *(v50 + 64) = v110;
        *(v50 + 68) = v111;
        *(v50 + 69) = v14;
        *(v50 + 78) = v119;
        v55 = v118;
        *(v50 + 70) = v118;
        v56 = *a2 + 80 * v20;
        *(v56 + 16) = v79;
        *(v56 + 32) = v81;
        *(v56 + 52) = v26;
        v20 = v19;
        v18 = (2 * v19) | 1;
        *v56 = v23;
        *(v56 + 8) = v24;
        *(v56 + 48) = v25;
        *(v56 + 56) = v27;
        *(v56 + 60) = v28;
        *(v56 + 64) = v75;
        *(v56 + 68) = v77;
        *(v56 + 69) = v29;
        v57 = v114;
        *(v56 + 78) = v115;
        *(v56 + 70) = v57;
        v78 = v52;
        v80 = v53;
        v76 = v111;
        v74 = v54;
        v115 = v119;
        v114 = v55;
        v58 = v19 < v68;
        v19 *= 2;
        if (v58)
        {
          continue;
        }
      }

      goto LABEL_3;
    }
  }

  v71 = xmmword_1C2BF6DA0;
  v72 = unk_1C2BF6DB0;
  v73 = xmmword_1C2BF6DC0;
  v69 = ZERO_RANKING_WRAPPED_BITS;
  v70 = *algn_1C2BF6D90;
LABEL_3:
  result[2] = v71;
  result[3] = v72;
  result[4] = v73;
  *result = v69;
  result[1] = v70;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL ci_rankingbits_wrapped_s::operator<(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 69) != 1)
  {
    if (*a1 >= *a2)
    {
      if (*(a1 + 8) != *(a2 + 8) || *a1 != *a2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    return 1;
  }

  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

LABEL_11:
  v5 = *(a1 + 52);
  v6 = *(a2 + 52);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 == v6)
  {
    return *(a1 + 48) > *(a2 + 48);
  }

  return 0;
}

_DWORD *container_table_create(unsigned int a1)
{
  v2 = malloc_type_zone_malloc(queryZone, 80 * a1 + 16, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *v2 = a1;
  if (a1)
  {
    v3 = a1;
    v4 = v2 + 4;
    do
    {
      v4[2] = xmmword_1C2C00670;
      v4[3] = unk_1C2C00680;
      v4[4] = xmmword_1C2C00690;
      *v4 = ZERO_RANKING_BITS;
      v4[1] = unk_1C2C00660;
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t container_fetch_table_check_and_insert(_DWORD *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = &a1[40 * ((*(a2 + 56) - 1) % *a1)];
  v5 = *(v2 + 2);
  v3 = (v2 + 4);
  v4 = v5;
  v6 = *(v3 + 12);
  v7 = v3[13];
  v8 = v3[15];
  v9 = *(a2 + 48);
  v10 = *(a2 + 52);
  v11 = *(a2 + 60);
  if (*(v3 + 69) & 1) != 0 || (*(a2 + 69))
  {
    if (v11 == v8)
    {
      if (v10 > v7)
      {
        goto LABEL_29;
      }

      if (v10 == v7 && v9 < v6)
      {
        goto LABEL_29;
      }
    }

    v13 = v11 != 100.0;
    if (v11 <= v8)
    {
      v13 = v8 == 100.0;
    }

    if (v13)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v14 = *(v3 + 1);
    if (__PAIR128__(v14, v4) < *a2)
    {
      goto LABEL_29;
    }

    if (*(a2 + 8) == v14 && *a2 == v4)
    {
      if (v10 > v7)
      {
        goto LABEL_29;
      }

      if (v10 == v7 && v9 < v6)
      {
        goto LABEL_29;
      }
    }
  }

  if (*(v3 + 14))
  {
    return 0;
  }

LABEL_29:
  v18 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 1) = v18;
  v19 = *(a2 + 32);
  v20 = *(a2 + 48);
  v21 = *(a2 + 80);
  *(v3 + 4) = *(a2 + 64);
  *(v3 + 5) = v21;
  *(v3 + 2) = v19;
  *(v3 + 3) = v20;
  v22 = *(a2 + 96);
  v23 = *(a2 + 112);
  v24 = *(a2 + 144);
  *(v3 + 8) = *(a2 + 128);
  *(v3 + 9) = v24;
  *(v3 + 6) = v22;
  *(v3 + 7) = v23;
  return 1;
}

_DWORD *container_fetch_table_create(unsigned int a1)
{
  v2 = malloc_type_zone_malloc(queryZone, (160 * a1) | 0x10, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *v2 = a1;
  if (a1)
  {
    v3 = a1;
    v4 = v2 + 4;
    do
    {
      v4[6] = xmmword_1C2BFF380;
      v4[7] = unk_1C2BFF390;
      v4[8] = xmmword_1C2BFF3A0;
      v4[9] = unk_1C2BFF3B0;
      v4[2] = xmmword_1C2BFF340;
      v4[3] = unk_1C2BFF350;
      v4[4] = xmmword_1C2BFF360;
      v4[5] = unk_1C2BFF370;
      *v4 = ZERO_FETCHINFO;
      v4[1] = *algn_1C2BFF330;
      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t container_fetch_table_q2_check_and_insert(_DWORD *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = &a1[40 * ((*(a2 + 56) - 1) % *a1)];
  v3 = (v2 + 4);
  v6 = v2 + 8;
  v5 = *(v2 + 4);
  v4 = *(v6 + 1);
  if (__PAIR128__(v4, v5) >= *(a2 + 16))
  {
    v7 = v4 == *(a2 + 24) && v5 == *(a2 + 16);
    if ((!v7 || v3[13] != *(a2 + 52) || *(v3 + 12) <= *(a2 + 48)) && *(v3 + 14))
    {
      return 0;
    }
  }

  v9 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 1) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v3 + 4) = *(a2 + 64);
  *(v3 + 5) = v12;
  *(v3 + 2) = v10;
  *(v3 + 3) = v11;
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v3 + 144) = *(a2 + 144);
  *(v3 + 7) = v14;
  *(v3 + 8) = v15;
  *(v3 + 6) = v13;
  return 1;
}

_DWORD *container_fetch_table_q2_create(unsigned int a1)
{
  v2 = malloc_type_zone_malloc(queryZone, (160 * a1) | 0x10, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *v2 = a1;
  if (a1)
  {
    v3 = a1;
    v4 = v2 + 4;
    do
    {
      *(v4 + 144) = 0;
      *(v4 + 6) = xmmword_1C2BF6C10;
      *(v4 + 7) = unk_1C2BF6C20;
      *(v4 + 8) = xmmword_1C2BF6C30;
      *(v4 + 2) = xmmword_1C2BF6BD0;
      *(v4 + 3) = unk_1C2BF6BE0;
      *(v4 + 4) = xmmword_1C2BF6BF0;
      *(v4 + 5) = unk_1C2BF6C00;
      *v4 = ZERO_FETCHINFO_Q2;
      *(v4 + 1) = unk_1C2BF6BC0;
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return v2;
}

void *closeMF(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  fd_release(*(a1 + 96));
  *(a1 + 96) = 0;
  v2 = *__error();
  v3 = _SILogForLogForCategory(10);
  v4 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16) * 100.0 / v5;
    v9 = 134218240;
    v10 = v5 >> 10;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1C278D000, v3, v4, "Memsize: %luKB %f%% used", &v9, 0x16u);
  }

  *__error() = v2;
  result = *a1;
  if ((*a1 + 1) >= 2)
  {
    result = munmap(result, *(a1 + 24));
    *a1 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mfree(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v3 = *(a3 + 2);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    v6 = ((v5 ^ (v5 - 1)) <= v5 - 1) - __clz(v5) + 28;
  }

  else
  {
    v6 = 0;
  }

  if ((8 << v6) + result == a3[2])
  {
    a3[2] = result;
  }

  else
  {
    v7 = *a3;
    if (*(a3 + 28) < v6)
    {
      *(a3 + 28) = v6;
    }

    v8 = a3 + 4 * v6;
    *(v7 + result) = *(v8 + 32);
    *(v8 + 32) = result;
  }

  return result;
}

uint64_t mmalloc(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = *(a2 + 8);
  if (a1 <= v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = (((a1 - v7) ^ (a1 - v7 - 1)) <= a1 - v7 - 1) - __clz(a1 - v7);
    if (v8 <= -31)
    {
      v9 = 31;
    }

    else
    {
      v9 = 28;
    }

    v10 = v9 + v8;
  }

  v11 = *(a2 + 32 + 4 * v10);
  if (v11)
  {
    v12 = *(*a2 + v11);
    *(a2 + 32 + 4 * v10) = v12;
    v22[0] = v12;
    v22[1] = 0x2000;
    fd_read_advise(*(a2 + 96), v22);
  }

  else
  {
    v13 = takeBuddyPage(a2, v10);
    if (v13)
    {
      return v13;
    }

    else
    {
      if (!*(a2 + 96))
      {
        v18 = __si_assert_copy_extra_332();
        v19 = v18;
        v20 = "";
        if (v18)
        {
          v20 = v18;
        }

        __message_assert("%s:%u: failed assertion '%s' %s NULL file reference", "MFMalloc.c", 311, "m->fdPtr", v20);
        free(v19);
        if (__valid_fs(-1))
        {
          v21 = 2989;
        }

        else
        {
          v21 = 3072;
        }

        *v21 = -559038737;
        abort();
      }

      v11 = *(a2 + 16);
      v14 = *(a2 + 24);
      if (v11 + v7 + (16 << v10) + 8 >= v14)
      {
        while (1)
        {
          v22[0] = 0;
          v16 = expandUnsafeMapNew(a2, *(a2 + 96), v14, 1uLL, v22, a3, a4);
          if (v16)
          {
            break;
          }

          v17 = v22[0];
          *(a2 + 24) = v22[0];
          madvise(*a2, v17, *(a2 + 104));
          v11 = *(a2 + 16);
          v14 = *(a2 + 24);
          if (v11 + v7 + (16 << v10) + 8 < v14)
          {
            goto LABEL_13;
          }
        }

        v11 = 0;
        *__error() = v16;
      }

      else
      {
LABEL_13:
        *(a2 + 16) = v7 + (8 << v10) + v11;
      }
    }
  }

  return v11;
}

uint64_t takeBuddyPage(uint64_t *a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    return 0;
  }

  if (*(a1 + 2) || *(a1 + 28) <= a2)
  {
    return 0;
  }

  v5 = a1 + 4;
  v6 = a2 + 1;
  result = *(a1 + v6 + 8);
  v7 = 8 << a2;
  if (result)
  {
    v8 = *a1;
    *(v5 + v6) = *(*a1 + result);
    *(v5 + a2) = result + v7;
    *(v8 + (result + v7)) = 0;
  }

  else
  {
    result = takeBuddyPage(a1);
    if (result)
    {
      *(v5 + a2) = result + v7;
      *(*a1 + (result + v7)) = 0;
    }

    else
    {
      *(a1 + 28) = a2;
    }
  }

  return result;
}

uint64_t restoreVInt32_3928(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((**a1 & 0x80000000) == 0)
  {
    v3 = 1;
    goto LABEL_10;
  }

  v4 = v1[1];
  if ((v1[1] & 0x80000000) == 0)
  {
    v2 = v2 & 0x7F | (v4 << 7);
    v3 = 2;
    goto LABEL_10;
  }

  v5 = v1[2];
  if ((v1[2] & 0x80000000) == 0)
  {
    v6 = ((v4 & 0x7F) << 7) | (v5 << 14) | (v2 & 0x7F);
    v3 = 3;
LABEL_9:
    v2 = v6;
    goto LABEL_10;
  }

  v7 = v1[3];
  if ((v1[3] & 0x80000000) == 0)
  {
    v6 = ((v5 & 0x7F) << 14) | (v7 << 21) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
    v3 = 4;
    goto LABEL_9;
  }

  v9 = v1[4];
  if (v9 < 0)
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  v10 = ((v7 & 0x7F) << 21) | (v9 << 28) | ((v5 & 0x7F) << 14) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
  v3 = 5;
  v2 = v10;
LABEL_10:
  *a1 = &v1[v3];
  return v2;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1C691FE80](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__emplace_unique_key_args<long,long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

int *logLLMContext(int *result, unsigned __int16 *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = *__error();
    v5 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v3;
      v6 = *(v3 + 1);
      v8 = *a2;
      v9 = v8 & 1;
      v10 = (v8 >> 1) & 1;
      v11 = (v8 >> 2) & 1;
      v12 = (v8 >> 3) & 1;
      v13 = (v8 >> 4) & 1;
      v14 = (v8 >> 5) & 1;
      v15 = (v8 >> 6) & 1;
      v16 = (v8 >> 7) & 1;
      v17 = (v8 >> 8) & 1;
      v18 = (v8 >> 9) & 1;
      v19 = (v8 >> 10) & 1;
      v20 = *(a2 + 31);
      if (v20 < 0)
      {
        v20 = *(a2 + 2);
      }

      v21 = *(a2 + 7);
      v23 = 134221570;
      v24 = v7;
      v25 = 2080;
      v26 = v6;
      v27 = 1024;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      v31 = 1024;
      v32 = v11;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v13;
      v37 = 1024;
      v38 = v14;
      v39 = 1024;
      v40 = v15;
      v41 = 1024;
      v42 = v16;
      v43 = 1024;
      v44 = v17;
      v45 = 1024;
      v46 = v18;
      v47 = 1024;
      v48 = v19;
      v49 = 2048;
      v50 = v20;
      v51 = 2048;
      v52 = v21;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Context:\n\thasAllOptionalArgs=%d,\n\thasAllTemporalArgs=%d,\n\thasSearchTerm=%d,\n\thasNonOptionalSearchTerm=%d,\n\thasOnlyOptionalSearchTerms=%d,\n\thasContactEntityType=%d,\n\thasStrictContactEntityType=%d,\n\trevisedTimeFilter=%d,\n\tskipSelf=%d,\n\thasPersonOrSelfArg=%d,\n\thasEntityTypeDocument=%d,\n\textraDescription=%ld\n\t#eligibleIdx=%ld,", &v23, 0x6Cu);
    }

    result = __error();
    *result = v4;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void __si_indexingWatchdogInit_block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 105) & 1) != 0 || (*(v1 + 16))
  {
    goto LABEL_22;
  }

  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v3 = getpid();
    bzero(buf, 0x288uLL);
    *v40 = 0xE00000001;
    v41 = 1;
    v42 = v3;
    v39 = 648;
    if (!sysctl(v40, 4u, buf, &v39, 0, 0) && (v50 & 0x8000000) != 0)
    {
      goto LABEL_22;
    }
  }

  v4 = MEMORY[0x1C6920BC0]();
  v5 = v4;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = __si_indexingWatchdogInit_block_invoke_2;
  v38[3] = &__block_descriptor_tmp_3955;
  v38[4] = *(a1 + 40);
  v6 = _SISuspendThreadIfLocked(v4, v38);
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
  v7 = *(a1 + 32);
  if (*(v7 + 105) & 1) != 0 || (*(v7 + 16))
  {
    goto LABEL_22;
  }

  if (pthread_mutex_trylock((*(a1 + 40) + 1712)))
  {
    v8 = 4;
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 1776);
    v8 = 4;
    if (v10)
    {
      if (CFSetGetCount(v10))
      {
        v8 = 40;
      }

      else
      {
        v8 = 4;
      }

      v9 = *(a1 + 40);
    }

    pthread_mutex_unlock((v9 + 1712));
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 84);
  v13 = _gSystemStatusBool;
  *(v11 + 84) = _gSystemStatusBool;
  if ((v6 | v13))
  {
LABEL_21:
    v16 = *v11;
    v17 = dispatch_time(0, 1000000000 * *(*(*(a1 + 40) + 64) + 40));
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_22:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = v8 + v12;
  v15 = *(v11 + 80);
  if (v15 < v14)
  {
    *(v11 + 80) = v15 + 1;
    logPLIndexingWatchdogEvent();
    v11 = *(a1 + 32);
    goto LABEL_21;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v20 = *__error();
  v21 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 96);
    v24 = *(v22 + 40);
    v25 = *(v22 + 48);
    v26 = *(v22 + 72);
    v27 = *(v22 + 76);
    v28 = *(v22 + 112);
    LODWORD(v22) = *(v22 + 88);
    *buf = 136317442;
    v44 = "si_indexingWatchdogInit_block_invoke";
    v45 = 1024;
    v46 = 191;
    v47 = 2048;
    v48 = v23;
    v49 = 2048;
    v50 = v24;
    v51 = 2048;
    v52 = v25;
    v53 = 2048;
    v54 = v26;
    v55 = 2048;
    v56 = v27;
    v57 = 2048;
    v58 = v28;
    v59 = 2048;
    v60 = Current;
    v61 = 1024;
    v62 = v22;
    _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: Indexing watchdog fired, thread:%p delta:%llus, startTime:%.3f, itemCount:%lu, perItemCost:%lu resumeTime:%.3f endtime:%lld protectionClass:%u", buf, 0x5Eu);
  }

  *__error() = v20;
  logPLIndexingWatchdogEvent();
  tailSpinCollect(*(a1 + 32), Current);
  v29 = *(a1 + 32);
  v37 = *(v29 + 88);
  v35 = *(v29 + 56);
  v36 = *(v29 + 112);
  v33 = *(v29 + 48);
  v34 = *(v29 + 72);
  v32 = *(v29 + 40);
  v30 = abort_report_np();
  __si_indexingWatchdogInit_block_invoke_2(v30, v31);
}

int *__si_indexingWatchdogInit_block_invoke_2(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  bzero(v17, 0x400uLL);
  v4 = *__error();
  v5 = _SILogForLogForCategory(10);
  v6 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    if (a2)
    {
      v7 = "Suspend";
    }

    else
    {
      v7 = "Resume";
    }

    v8 = fcntl(*(*(a1 + 32) + 32), 50, v17);
    if (v17[0])
    {
      v9 = v8 < 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v17;
    }

    *buf = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "%s watchdog for %s", buf, 0x16u);
  }

  result = __error();
  *result = v4;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void logPLIndexingWatchdogEvent()
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (PLShouldLogRegisteredEvent())
  {
    values = @"1";
    keys[0] = @"indexingWatchdogFired";
    v0 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    PLLogRegisteredEvent();
    CFRelease(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void tailSpinCollect(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = a1 + 48;
  valuePtr = (a2 - *(a1 + 48)) * 1000.0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v13 = *&off_1E8193700;
  v14 = xmmword_1E8193710;
  v15 = *&off_1E8193720;
  v16 = xmmword_1E8193730;
  *keys = xmmword_1E81936F0;
  values[0] = CFNumberCreate(v3, kCFNumberDoubleType, &valuePtr);
  values[1] = CFNumberCreate(v3, kCFNumberSInt32Type, (v2 + 24));
  values[2] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 28));
  values[3] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 32));
  values[4] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 - 8));
  if (*(v2 - 16))
  {
    v5 = *(v2 - 16);
  }

  else
  {
    v5 = @"unknown";
  }

  values[5] = CFRetain(v5);
  values[6] = CFNumberCreate(v3, kCFNumberDoubleType, v2);
  values[7] = CFNumberCreate(v3, kCFNumberDoubleType, (v2 + 8));
  values[8] = CFNumberCreate(v3, kCFNumberDoubleType, (v2 + 64));
  values[9] = CFNumberCreate(v3, kCFNumberDoubleType, &v8);
  CFRelease(v4);
  CFDictionaryCreate(v3, keys, values, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (DRTailspinRequest())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "DiagnosticPipeline tailspin request successful.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "DiagnosticPipeline tailspin request failed with error: %@.", buf, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void processNode(query_node *a1, int a2)
{
  v62 = *MEMORY[0x1E69E9840];
  var0 = a1->var0;
  var1 = a1->var1;
  if (!(var0 | var1))
  {
    if (a1->var6 != 4 || (var2 = a1->var2) == 0 || (v11 = *var2) == 0 || (v12 = *v11) == 0 || (v13 = *(var2 + 9)) == 0 || !*v13)
    {
      *buf = MEMORY[0x1E69E9820];
      v58 = 0x40000000;
      v59 = __db_query_tree_apply_block_block_invoke;
      v60 = &unk_1E8198ED0;
      v61 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(a1, buf, &__block_literal_global_25_15416);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17 && a2 != 0)
        {
          *(v17 + 52) = 1036831949;
        }
      }

      goto LABEL_27;
    }

    is_double_star = query_node_is_double_star(a1);
    v15 = v12 == 42 && v11[1] == 0;
    if ((*(var2 + 32) & 4) == 0)
    {
      v24 = *MEMORY[0x1E69E9840];
      v25 = a1;
      v26 = v13;
LABEL_31:

      MailSuggestionNode(v25, v26, v15, is_double_star, a2);
      return;
    }

    v27 = strlen(v13);
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], v27);
    CFStringAppendCString(Mutable, *(a1->var2 + 9), 0x8000100u);
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1->var2 + 9)];
    v30 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
    if (-[__CFString length](v29, "length") < 2 || ![v30 characterIsMember:{-[__CFString characterAtIndex:](v29, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](v29, "rangeOfComposedCharacterSequenceAtIndex:", 0))}])
    {
      QueryTokens = CreateQueryTokens(v29, 1);
      if (QueryTokens)
      {
        v40 = QueryTokens;
        v41 = *QueryTokens;
        if (v41)
        {
          Count = CFArrayGetCount(v41);
          if (Count > 0)
          {
            v43 = Count;
            v56 = v15;
            v44 = is_double_star;
            v45 = 0;
            v46 = 0;
            v47 = *v40;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v47, v45);
              if (CFStringGetLength(ValueAtIndex) >= 1)
              {
                v49 = [(__CFString *)ValueAtIndex UTF8String];
                if (v49)
                {
                  v50 = v49;
                  if ([(__CFString *)ValueAtIndex length])
                  {
                    v51 = MailSuggestionNode(a1, v50, v56, v44, a2);
                    v46 = makeAndNode(v46, v51);
                  }
                }
              }

              ++v45;
            }

            while (v43 != v45);
            freeQueryTokensContext(v40);
            goto LABEL_27;
          }
        }

        freeQueryTokensContext(v40);
      }

      v52 = *MEMORY[0x1E69E9840];

      db_clone_query_node(a1);
      return;
    }

    [(__CFString *)v29 rangeOfComposedCharacterSequenceAtIndex:0];
    v32 = [(__CFString *)v29 substringFromIndex:v31];
    v33 = [v32 length];
    [(__CFString *)v29 rangeOfComposedCharacterSequenceAtIndex:0];
    if (v33 >= 2)
    {
      v35 = v33 - v34;
      v36 = [v32 characterAtIndex:v33 - v34];
      if (v36 == 42)
      {
        v37 = v35 - 1;
        if (v37 >= v33 || ![v30 characterIsMember:{objc_msgSend(v32, "characterAtIndex:", v37)}])
        {
          goto LABEL_58;
        }

        v38 = [objc_msgSend(v32 substringToIndex:{v37), "stringByAppendingString:", @"*"}];
        goto LABEL_57;
      }

      if ([v30 characterIsMember:v36])
      {
        v38 = [v32 substringToIndex:v35];
LABEL_57:
        v32 = v38;
      }
    }

LABEL_58:
    v53 = [v32 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
    if (![v53 length])
    {
      goto LABEL_27;
    }

    v54 = [v53 UTF8String];
    v55 = *MEMORY[0x1E69E9840];
    v26 = v54;
    v25 = a1;
    goto LABEL_31;
  }

  v6 = processNode(var0, a2);
  v7 = processNode(var1, a2);
  var6 = a1->var6;
  if (var6 != 2)
  {
    if (var6 == 1)
    {
      v9 = *MEMORY[0x1E69E9840];

      makeOrNode(v6, v7);
      return;
    }

    v20 = *__error();
    v21 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = a1->var6;
      *buf = 67109120;
      *&buf[4] = v22;
      _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "(ERROR) Failed to convert suggestion node properly: %hu", buf, 8u);
    }

    *__error() = v20;
    db_free_query_node(v6);
    db_free_query_node(v7);
LABEL_27:
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  v19 = *MEMORY[0x1E69E9840];

  makeAndNode(v6, v7);
}

query_node *convertASTNodeToQueryNode(void *a1, uint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_64;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 value])
    {
      if (([a1 isIgnored] & 1) == 0)
      {
        v4 = [objc_msgSend(a1 "value")];
        if (v4)
        {
          v5 = v4;
          *&v94 = 0;
          v92 = 0u;
          v93 = 0u;
          Attribs(&v92);
          v88[0] = 0;
          *v86 = 0u;
          *v87 = 0u;
          std::string::basic_string[abi:nn200100]<0>(v78, "kMDItemAuthors");
          DWORD2(v79) = 1041865114;
          std::string::basic_string[abi:nn200100]<0>(v80, "kMDItemSubject");
          v81 = 1041865114;
          std::string::basic_string[abi:nn200100]<0>(v82, "kMDItemTextContent");
          v83 = 1028443341;
          std::unordered_map<std::string,float>::unordered_map(v86, v78, 3);
          for (i = 0; i != -96; i -= 32)
          {
            if (v82[i + 23] < 0)
            {
              operator delete(*&v82[i]);
            }
          }

          v77 = 0;
          *v75 = 0u;
          *v76 = 0u;
          std::string::basic_string[abi:nn200100]<0>(v78, "*");
          DWORD2(v79) = 1041865114;
          std::string::basic_string[abi:nn200100]<0>(v80, "kMDItemTextContent");
          v81 = 1028443341;
          std::unordered_map<std::string,float>::unordered_map(v75, v78, 2);
          for (j = 0; j != -8; j -= 4)
          {
            if (SHIBYTE(v80[j + 2]) < 0)
            {
              operator delete(v80[j]);
            }
          }

          if ([a1 isNegated])
          {
            v8 = ([a1 isLastToken] << 31) >> 31;
            v9 = v76[0];
            if ((*(a2 + 28) & 2) != 0)
            {
              if (v76[0])
              {
                v10 = 0;
                do
                {
                  v42 = *(v9 + 10);
                  if (v42 != 0.0)
                  {
                    v43 = v9 + 16;
                    if (v9[39] < 0)
                    {
                      v43 = *v43;
                    }

                    QueryNode = createQueryNode(v43, v5, 112, 5, v8, v42, 0.0);
                    v10 = makeAndNode(v10, QueryNode);
                  }

                  v9 = *v9;
                }

                while (v9);
                goto LABEL_142;
              }
            }

            else if (v76[0])
            {
              v10 = 0;
              do
              {
                v11 = v9 + 16;
                if (v9[39] < 0)
                {
                  v11 = *v11;
                }

                v12 = createQueryNode(v11, v5, 112, 5, v8, 0.0, 0.0);
                v10 = makeAndNode(v10, v12);
                v9 = *v9;
              }

              while (v9);
              goto LABEL_142;
            }

            v10 = 0;
LABEL_142:
            if (([a1 isNegated] & 1) == 0 && (*(a2 + 29) & 8) != 0 && objc_msgSend(objc_msgSend(a1, "value"), "length") >= 3)
            {
              v67 = MailTokenRewriteNode([a1 value], a2, &v92);
              if (v67)
              {
                v10 = makeOrNode(v10, v67);
              }
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v76[0]);
            v68 = v75[0];
            v75[0] = 0;
            if (v68)
            {
              operator delete(v68);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v87[0]);
            v69 = v86[0];
            v86[0] = 0;
            if (v69)
            {
              operator delete(v69);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v93);
            v70 = v92;
            *&v92 = 0;
            if (v70)
            {
              operator delete(v70);
            }

            goto LABEL_65;
          }

          v31 = ([a1 isLastToken] << 31) >> 31;
          v32 = v93;
          if ((*(a2 + 28) & 2) != 0)
          {
            if (v93)
            {
              v10 = 0;
              v45 = 0;
              do
              {
                v46 = *(v32 + 10);
                if (v46 > 0.01)
                {
                  v47 = (v32 + 2);
                  if (v45)
                  {
                    v48 = 0.0;
                  }

                  else
                  {
                    v48 = 0.01;
                  }

                  if (*(v32 + 39) < 0)
                  {
                    v47 = *v47;
                  }

                  v45 = 1;
                  v49 = createQueryNode(v47, v5, 112, 1, v31, v46 + 0.0, v48);
                  v10 = makeOrNode(v10, v49);
                }

                v32 = *v32;
              }

              while (v32);
LABEL_105:
              if ((*(a2 + 28) & 2) == 0 || ![a1 isLastToken])
              {
                goto LABEL_142;
              }

              v50 = v87[0];
              if ((*(a2 + 28) & 2) != 0)
              {
                if (v87[0])
                {
                  v51 = 0;
                  v62 = 0;
                  do
                  {
                    v63 = *(v50 + 10) + 0.1;
                    if (v63 > 0.01)
                    {
                      v64 = v50 + 16;
                      if (v62)
                      {
                        v65 = 0.0;
                      }

                      else
                      {
                        v65 = 0.01;
                      }

                      if (v50[39] < 0)
                      {
                        v64 = *v64;
                      }

                      v62 = 1;
                      v66 = createQueryNode(v64, v5, 112, 1, 0, v63, v65);
                      v51 = makeOrNode(v51, v66);
                    }

                    v50 = *v50;
                  }

                  while (v50);
                  goto LABEL_141;
                }
              }

              else if (v87[0])
              {
                v51 = 0;
                do
                {
                  v52 = v50 + 16;
                  if (v50[39] < 0)
                  {
                    v52 = *v52;
                  }

                  v53 = createQueryNode(v52, v5, 112, 1, 0, 0.0, 0.0);
                  v51 = makeOrNode(v51, v53);
                  v50 = *v50;
                }

                while (v50);
                goto LABEL_141;
              }

              v51 = 0;
LABEL_141:
              v10 = makeOrNode(v10, v51);
              goto LABEL_142;
            }
          }

          else if (v93)
          {
            v10 = 0;
            do
            {
              v33 = (v32 + 2);
              if (*(v32 + 39) < 0)
              {
                v33 = *v33;
              }

              v34 = createQueryNode(v33, v5, 112, 1, v31, 0.0, 0.0);
              v10 = makeOrNode(v10, v34);
              v32 = *v32;
            }

            while (v32);
            goto LABEL_105;
          }

          v10 = 0;
          goto LABEL_105;
        }
      }
    }

LABEL_64:
    v10 = 0;
    goto LABEL_65;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_64;
      }

      if (![a1 children])
      {
        goto LABEL_64;
      }

      if (![objc_msgSend(a1 "children")])
      {
        goto LABEL_64;
      }

      v22 = [objc_msgSend(a1 "nodeType")];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v23 = [a1 children];
      v24 = [v23 countByEnumeratingWithState:&v92 objects:v78 count:16];
      if (!v24)
      {
        goto LABEL_64;
      }

      v10 = 0;
      v25 = *v93;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v93 != v25)
          {
            objc_enumerationMutation(v23);
          }

          Node = convertASTNodeToQueryNode(*(*(&v92 + 1) + 8 * k), a2);
          if (Node)
          {
            if (v22)
            {
              v28 = makeAndNode(v10, Node);
            }

            else
            {
              v28 = makeOrNode(v10, Node);
            }

            v10 = v28;
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v92 objects:v78 count:16];
      }

      while (v24);
      goto LABEL_65;
    }

    if (![a1 expression])
    {
      goto LABEL_64;
    }

    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    std::string::basic_string[abi:nn200100]<0>(v86, "kMDItemAuthors");
    LODWORD(v87[1]) = 1041865114;
    std::string::basic_string[abi:nn200100]<0>(v88, "_kMDItemAuthorEmailAddressesLocalParts");
    v89 = 1036831950;
    std::string::basic_string[abi:nn200100]<0>(v90, "kMDItemAuthorEmailAddresses");
    v91 = 0;
    std::unordered_map<std::string,float>::unordered_map(v75, v86, 3);
    LODWORD(v92) = 0;
    std::unordered_map<std::string,float>::unordered_map(&v92 + 8, v75);
    std::string::basic_string[abi:nn200100]<0>(v78, "kMDItemRecipients");
    DWORD2(v79) = 1028443341;
    std::string::basic_string[abi:nn200100]<0>(v80, "_kMDItemPrimaryRecipientEmailAddressesLocalParts");
    v81 = 1028443341;
    std::string::basic_string[abi:nn200100]<0>(v82, "kMDItemRecipientEmailAddresses");
    v83 = 0;
    std::string::basic_string[abi:nn200100]<0>(v84, "kMDItemPrimaryRecipientEmailAddresses");
    v85 = 0;
    std::unordered_map<std::string,float>::unordered_map(__p, v78, 4);
    LODWORD(v95) = 1;
    std::unordered_map<std::string,float>::unordered_map(&v95 + 8, __p);
    std::unordered_map<int,std::unordered_map<std::string,float>>::unordered_map(&v71, &v92, 2);
    for (m = 56; m != -40; m -= 48)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v92 + m);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
    v16 = __p[0];
    __p[0] = 0;
    if (v16)
    {
      operator delete(v16);
    }

    for (n = 0; n != -128; n -= 32)
    {
      if (v84[n + 23] < 0)
      {
        operator delete(*&v84[n]);
      }
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v76[0]);
    v18 = v75[0];
    v75[0] = 0;
    if (v18)
    {
      operator delete(v18);
    }

    for (ii = 0; ii != -96; ii -= 32)
    {
      if (v90[ii + 23] < 0)
      {
        operator delete(*&v90[ii]);
      }
    }

    *v78 = 0u;
    v79 = 0u;
    v80[0] = 1065353216;
    v20 = [a1 fieldType];
    if (v20)
    {
      if (v20 != 1)
      {
        Attribs(&v92);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v78, &v92);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v92);
        goto LABEL_78;
      }

      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v71, *(&v71 + 1), 1))
      {
        goto LABEL_78;
      }

      *&v92 = &TOK_ID_TO;
      v21 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v71, 1);
    }

    else
    {
      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v71, *(&v71 + 1), 0))
      {
        goto LABEL_78;
      }

      *&v92 = &TOK_ID_FROM;
      v21 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v71, 0);
    }

    if (v78 != (v21 + 3))
    {
      LODWORD(v80[0]) = *(v21 + 14);
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(v78, v21[5]);
    }

LABEL_78:
    [a1 expression];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = convertASTNodeToQueryNode([a1 expression], a2);
LABEL_83:
      v10 = v41;
LABEL_124:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v79);
      v57 = v78[0];
      v78[0] = 0;
      if (v57)
      {
        operator delete(v57);
      }

      std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&v71);
      goto LABEL_65;
    }

    v35 = [a1 expression];
    v36 = [objc_msgSend(v35 "value")];
    if (!v36)
    {
      v10 = 0;
      goto LABEL_124;
    }

    v37 = [v35 isLastToken];
    v38 = [v35 isLastToken];
    v10 = MailAttribNode(*(a2 + 28), v79, v36, v38, 0.0);
    if ((*(a2 + 28) & 2) != 0)
    {
      if (![v35 isLastToken])
      {
        goto LABEL_118;
      }

      v54 = MailAttribNode(*(a2 + 28), v79, v36, 0, 0.1);
      v40 = makeOrNode(v10, v54);
    }

    else
    {
      v39 = createQueryNode("kMDItemContentTypeTree", "public.email-message", 112, 1, 0, 0.0, 0.0);
      v40 = makeAndNode(v10, v39);
    }

    v10 = v40;
LABEL_118:
    if ((*(a2 + 29) & 8) != 0 && [objc_msgSend(v35 "value")] >= 3)
    {
      v55 = MailTokenRewriteNode([v35 value], a2, v78);
      if (v55)
      {
        v10 = makeOrNode(v10, v55);
      }
    }

    v56 = [objc_msgSend(a1 "originalKeyword")];
    if (!v56 || ([a1 isIgnored] & 1) != 0)
    {
      goto LABEL_124;
    }

    if ((*(a2 + 28) & 2) != 0)
    {
      v61 = createQueryNode("kMDItemSubject", v36, 112, 1, v37 << 31 >> 31, 0.15, 0.0);
    }

    else
    {
      *&v94 = 0;
      v92 = 0u;
      v93 = 0u;
      ContentAttribs(&v92);
      v58 = MailAttribNode(*(a2 + 28), v93, v56, 0, 0.0);
      v59 = [v35 isLastToken];
      v60 = MailAttribNode(*(a2 + 28), v93, v36, v59, 0.0);
      v61 = makeAndNode(v58, v60);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v92);
    }

    v41 = makeOrNode(v10, v61);
    goto LABEL_83;
  }

  if (![a1 filterString])
  {
    goto LABEL_64;
  }

  v13 = [objc_msgSend(a1 "filterString")];
  if (!v13)
  {
    goto LABEL_64;
  }

  query_node_with_ann = db_make_query_node_with_ann(v13, 0);
  v10 = query_node_with_ann;
  if (query_node_with_ann && (*(a2 + 28) & 2) != 0)
  {
    db_query_tree_apply_block(query_node_with_ann, __block_literal_global_4078, 0);
  }

LABEL_65:
  v29 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1C29B0210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v44 - 208);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&__p);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void sub_1C29B0670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 343);
  v13 = -352;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

query_node *MailTokenRewriteNode(void *key, uint64_t a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a2 + 40), key);
  if (Value)
  {
    v5 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        if (!ValueAtIndex)
        {
          goto LABEL_32;
        }

        v11 = ValueAtIndex;
        v12 = [ValueAtIndex variation];
        if (!v12)
        {
          goto LABEL_32;
        }

        v13 = v12;
        if (!CFStringGetLength(v12))
        {
          goto LABEL_32;
        }

        if (![(__CFString *)v13 length])
        {
          goto LABEL_32;
        }

        v14 = [(__CFString *)v13 UTF8String];
        if (!v14)
        {
          goto LABEL_32;
        }

        v15 = v14;
        if ([v11 type] == 1)
        {
          v16 = 2155872368;
        }

        else
        {
          v16 = 2147483760;
        }

        v17 = *(a3 + 16);
        if ((*(a2 + 28) & 2) != 0)
        {
          if (v17)
          {
            v18 = 0;
            v21 = 0;
            do
            {
              v22 = *(v17 + 10);
              if (v22 > 0.01)
              {
                v23 = (v17 + 2);
                if (v21)
                {
                  v24 = 0.0;
                }

                else
                {
                  v24 = 0.01;
                }

                if (*(v17 + 39) < 0)
                {
                  v23 = *v23;
                }

                v21 = 1;
                QueryNode = createQueryNode(v23, v15, v16, 1, 0, v22 + 0.0, v24);
                v18 = makeOrNode(v18, QueryNode);
              }

              v17 = *v17;
            }

            while (v17);
            goto LABEL_31;
          }
        }

        else if (v17)
        {
          v18 = 0;
          do
          {
            v19 = (v17 + 2);
            if (*(v17 + 39) < 0)
            {
              v19 = *v19;
            }

            v20 = createQueryNode(v19, v15, v16, 1, 0, 0.0, 0.0);
            v18 = makeOrNode(v18, v20);
            v17 = *v17;
          }

          while (v17);
          goto LABEL_31;
        }

        v18 = 0;
LABEL_31:
        v8 = makeOrNode(v8, v18);
LABEL_32:
        if (++v9 == v7)
        {
          return v8;
        }
      }
    }
  }

  return 0;
}

query_node *MailAttribNode(char a1, uint64_t *a2, char *__s, int a4, float a5)
{
  v6 = a2;
  v7 = a4 << 31 >> 31;
  if ((a1 & 2) == 0)
  {
    if (a2)
    {
      v8 = 0;
      do
      {
        v9 = (v6 + 2);
        if (*(v6 + 39) < 0)
        {
          v9 = *v9;
        }

        QueryNode = createQueryNode(v9, __s, 112, 1, v7, 0.0, 0.0);
        v8 = makeOrNode(v8, QueryNode);
        v6 = *v6;
      }

      while (v6);
      return v8;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v12 = 0;
  do
  {
    v13 = *(v6 + 10) + a5;
    if (v13 > 0.01)
    {
      v14 = (v6 + 2);
      if (v12)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 0.01;
      }

      if (*(v6 + 39) < 0)
      {
        v14 = *v14;
      }

      v12 = 1;
      v16 = createQueryNode(v14, __s, 112, 1, v7, v13, v15);
      v8 = makeOrNode(v8, v16);
    }

    v6 = *v6;
  }

  while (v6);
  return v8;
}

void ContentAttribs(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemSubject");
  v5 = 1041865114;
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemTextContent");
  v7 = 1028443341;
  std::unordered_map<std::string,float>::unordered_map(a1, v4, 2);
  for (i = 0; i != -64; i -= 32)
  {
    if (v6[i + 23] < 0)
    {
      operator delete(*&v6[i]);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1C29B0AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 55);
  v18 = -64;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 32;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 32;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

double ___ZL19convertQPFilterNodeP17PRAstQPFilterNodeP9PRContext_block_invoke_4092(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *&result = 1045220557;
      *(v2 + 52) = 1045220557;
    }
  }

  return result;
}

query_node *MailSuggestionNode(query_node *a1, char *__s, int a3, int a4, char a5)
{
  if (a5)
  {
    if (a4)
    {
      QueryNode = createQueryNode("kMDItemTextContent", __s, 48, 1, 0, 0.05, 0.0);
LABEL_8:
      v8 = createQueryNode("kMDItemSubject", __s, 112, 1, 0, 0.15, 0.0);
      v9 = createQueryNode("kMDItemAuthors", __s, 48, 1, 0, 0.15, 0.0);
      v7 = makeOrNode(v8, v9);
      goto LABEL_9;
    }

    if (a3)
    {
      QueryNode = 0;
      goto LABEL_8;
    }

    var2 = a1->var2;
    v12 = *var2;
    v13 = *(var2 + 4);
    v14 = *(var2 + 6);
    v15 = 0.1;
  }

  else
  {
    if (a4)
    {
      QueryNode = createQueryNode("*", __s, 112, 1, 0, 0.0, 0.0);
      v7 = createQueryNode("kMDItemTextContent", __s, 112, 1, 0, 0.0, 0.0);
LABEL_9:

      return makeOrNode(QueryNode, v7);
    }

    v11 = a1->var2;
    v12 = *v11;
    v13 = *(v11 + 4);
    v14 = *(v11 + 6);
    v15 = 0.0;
  }

  return createQueryNode(v12, __s, v13, v14, 0, v15, 0.0);
}

void oqsort_offset_with_meta_t(uint64_t a1)
{
  if (*(a1 + 24) >= 2)
  {
    v2 = qos_class_self();
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    if (v2 < 0x12)
    {
      _qsort_offset_with_meta_t(v3, 0, v4 - 1);
    }

    else
    {
      parallel_qsort_offset_with_meta_t(v3, v4);
    }
  }

  if (*(a1 + 48))
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert(v5, "OQueue.c", 13, "!queue->split", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }
}

void parallel_qsort_offset_with_meta_t(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v5 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v5)
    {
      v5 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
    }

    v6 = dispatch_group_create();
    v5[3] = v6;
    v5[4] = 0;
    v5[1] = 0;
    v5[2] = a2 - 1;
    *v5 = a1;
    v7 = thread_count;
    if (!thread_count)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    *(v5 + 14) = v7;
    v5[5] = sqrt(a2) / 2;
    if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    v8 = a2 / (2 * v7);
    if (v8 <= 0x8000)
    {
      v8 = 0x8000;
    }

    else if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v8 = a2 / (2 * thread_count);
    }

    v5[6] = v8;
    if (v5[5] <= 2047)
    {
      v5[5] = 2048;
    }

    _qsort_big_offset_with_meta_t(v5);
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];

    _qsort_offset_with_meta_t(a1, 0, a2 - 1);
  }
}

void _qsort_offset_with_meta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  v6[1] = 0;
  *v6 = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v9 = 128;
      }

      else
      {
        v9 = v7;
      }

      v10 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v11 = _partition_offset_with_meta_t(a1, a2, a3);
        if (v11 < a2)
        {
          v21 = __si_assert_copy_extra_332();
          v22 = v21;
          v23 = "";
          if (v21)
          {
            v23 = v21;
          }

          __message_assert(v21, "OQueue.c", 13, "q>=left", v23);
          free(v22);
          if (__valid_fs(-1))
          {
            v24 = 2989;
          }

          else
          {
            v24 = 3072;
          }

          *v24 = -559038737;
          abort();
        }

        if (v9 == v7)
        {
          heapsort_b((a1 + 16 * a2), a3 - a2 + 1, 0x10uLL, &__block_literal_global_4124);
          v7 = v9;
          goto LABEL_3;
        }

        if (v11 - a2 <= a3 - v11)
        {
          *(v10 - 1) = a2;
          *v10 = v11 - 1;
          a2 = v11;
        }

        else
        {
          *(v10 - 1) = v11;
          *v10 = a3;
          a3 = v11 - 1;
        }

        ++v7;
        v10 += 2;
        if (a3 <= a2)
        {
          goto LABEL_3;
        }
      }

      v12 = a1 + 8 + 16 * a2;
      v13 = a2;
      do
      {
        v14 = v13++;
        v15 = *(a1 + 16 * v13);
        v16 = *(a1 + 16 * v13) & 0x3FFFFFFFFFFFFFFFLL;
        v17 = *(a1 + 16 * v14);
        v18 = v13;
        if ((v17 & 0x3FFFFFFFFFFFFFFFuLL) > v16)
        {
          v19 = v12;
          do
          {
            v18 = v14;
            v20 = *v19;
            v19[1] = v17;
            v19[2] = v20;
            if (v18 <= a2)
            {
              break;
            }

            v17 = *(v19 - 3);
            v14 = v18 - 1;
            v19 -= 2;
          }

          while ((v17 & 0x3FFFFFFFFFFFFFFFuLL) > v16);
        }

        *(a1 + 16 * v18) = v15;
        v12 += 16;
      }

      while (v13 != a3);
    }

LABEL_3:
    --v7;
    v8 = &v6[2 * v7];
    a2 = *v8;
    a3 = v8[1];
  }

  while (v7);

  free(v6);
}

uint64_t _partition_offset_with_meta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 16 * a2);
  v5 = v4;
  v6 = &v4[2 * ((v3 + (v3 >> 63)) >> 1)];
  v7 = (a1 + 16 * a3);
  if (a3 - a2 < 1024)
  {
    v22 = &v4[2 * ((v3 + (v3 >> 63)) >> 1)];
    v25 = (a1 + 16 * a3);
  }

  else
  {
    v8 = v3 >> 3;
    v9 = &v4[2 * v8];
    v10 = *v4 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *v9 & 0x3FFFFFFFFFFFFFFFLL;
    if (v10 != v11)
    {
      v5 = &v4[4 * v8];
      v12 = *v5 & 0x3FFFFFFFFFFFFFFFLL;
      if (v10 >= v12)
      {
        v13 = &v4[4 * v8];
      }

      else
      {
        v13 = (a1 + 16 * a2);
      }

      if (v11 > v12)
      {
        v13 = &v4[2 * v8];
      }

      if (v10 >= v12)
      {
        v14 = (a1 + 16 * a2);
      }

      else
      {
        v14 = &v4[4 * v8];
      }

      if (v11 >= v12)
      {
        v9 = v14;
      }

      if (v10 >= v11)
      {
        v9 = v13;
      }

      if (v12 != v10 && v12 != v11)
      {
        v5 = v9;
      }
    }

    v16 = 2 * v8;
    v17 = -v8;
    v18 = 16 * v8;
    v19 = &v6[v18 / 0xFFFFFFFFFFFFFFF8];
    v20 = v6[v18 / 0xFFFFFFFFFFFFFFF8] & 0x3FFFFFFFFFFFFFFFLL;
    v21 = *v6 & 0x3FFFFFFFFFFFFFFFLL;
    if (v20 == v21)
    {
      v22 = &v6[v18 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v22 = &v6[v18 / 8];
      v23 = *v22 & 0x3FFFFFFFFFFFFFFFLL;
      if (v23 != v20 && v23 != v21)
      {
        if (v20 >= v21)
        {
          if (v20 < v23)
          {
            v22 = v19;
          }

          if (v21 > v23)
          {
            v22 = v6;
          }
        }

        else
        {
          if (v20 >= v23)
          {
            v22 = v19;
          }

          if (v21 < v23)
          {
            v22 = v6;
          }
        }
      }
    }

    v25 = &v7[-2 * v16];
    v26 = &v7[2 * v17];
    v27 = *v25 & 0x3FFFFFFFFFFFFFFFLL;
    v28 = *v26 & 0x3FFFFFFFFFFFFFFFLL;
    if (v27 != v28)
    {
      v29 = *v7 & 0x3FFFFFFFFFFFFFFFLL;
      if (v27 >= v29)
      {
        v30 = (a1 + 16 * a3);
      }

      else
      {
        v30 = v25;
      }

      if (v28 > v29)
      {
        v30 = v26;
      }

      if (v27 < v29)
      {
        v25 = (a1 + 16 * a3);
      }

      if (v28 < v29)
      {
        v25 = v26;
      }

      if (v27 >= v28)
      {
        v25 = v30;
      }

      if (v29 == v28)
      {
        v25 = (a1 + 16 * a3);
      }

      if (v29 == v27)
      {
        v25 = (a1 + 16 * a3);
      }
    }
  }

  v31 = *v5 & 0x3FFFFFFFFFFFFFFFLL;
  v32 = *v22 & 0x3FFFFFFFFFFFFFFFLL;
  if (v31 == v32)
  {
    v22 = v5;
  }

  else
  {
    v33 = *v25 & 0x3FFFFFFFFFFFFFFFLL;
    if (v33 == v31 || v33 == v32)
    {
      v22 = v25;
    }

    else if (v31 >= v32)
    {
      if (v32 <= v33)
      {
        if (v31 >= v33)
        {
          v22 = v25;
        }

        else
        {
          v22 = v5;
        }
      }
    }

    else if (v32 >= v33)
    {
      if (v31 >= v33)
      {
        v22 = v5;
      }

      else
      {
        v22 = v25;
      }
    }
  }

  v35 = *v22;
  *v22 = *v7;
  *v7 = v35;
  v36 = a3 - a2;
  if (a3 > a2)
  {
    v38 = *v4;
    v37 = (v4 + 2);
    v39 = v38;
    v40 = v35 & 0x3FFFFFFFFFFFFFFFLL;
    do
    {
      v41 = *v37;
      if ((v39 & 0x3FFFFFFFFFFFFFFFLL) <= v40)
      {
        *(v37 - 1) = *(a1 + 16 * a2);
        *(a1 + 16 * a2++) = v39;
      }

      ++v37;
      v39 = v41;
      --v36;
    }

    while (v36);
  }

  v42 = *(a1 + 16 * a2);
  *(a1 + 16 * a2) = *v7;
  *v7 = v42;
  return a2;
}

uint64_t ___qsort_offset_with_meta_t_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *a2 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *a3 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = v3 > v4;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void _qsort_big_offset_with_meta_t(void *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v35 = *(a1 + 6);
  v36 = *a1;
  v6 = *(a1 + 14);
  v34 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v10 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v12 = getSize_memSize;
      if (!getSize_memSize)
      {
        v41 = 0u;
        v42 = 0u;
        *host_info_out = 0u;
        v13 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v14 = host_info(v13, 1, host_info_out, &host_info_outCnt);
        if (v14)
        {
          mach_error("flushsize", v14);
          exit(1);
        }

        v12 = *(&v42 + 1);
        getSize_memSize = *(&v42 + 1);
      }

      v15 = 3 * v12 / 5uLL;
      v16 = v3;
      if (16 * v10 > v15)
      {
        v16 = dispatch_group_create();
      }

      if (v10 <= v35 || 16 * v10 >= v15)
      {
        v19 = _partition_offset_with_meta_t(v36, v1, v2);
      }

      else
      {
        v17 = qos_class_self();
        global_queue = dispatch_get_global_queue(v17, 2uLL);
        v19 = _big_partition_offset_with_meta_t(v36, v1, v2, global_queue, v6);
      }

      v20 = v19;
      v21 = v19 - v1;
      if (v19 < v1)
      {
        v31 = __si_assert_copy_extra_332();
        v32 = v31;
        v33 = "";
        if (v31)
        {
          v33 = v31;
        }

        __message_assert(v31, "OQueue.c", 13, "q>=left", v33, v38);
        free(v32);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v22 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v22)
      {
        v22 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v22 + 4) = i;
      *(v22 + 5) = v5;
      *(v22 + 6) = v35;
      v23 = v2 - v20;
      if (v21 <= v2 - v20)
      {
        v24 = v20 - 1;
      }

      else
      {
        v23 = v20 - 1 - v1;
        v24 = v2;
      }

      if (v21 > v2 - v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v1;
      }

      if (v21 > v2 - v20)
      {
        v2 = v20 - 1;
      }

      else
      {
        v1 = v20;
      }

      *v22 = v36;
      *(v22 + 1) = v25;
      v26 = (((v23 + 1) * v6) / (v24 - v25 + 1));
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      if (v6 >= v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v22[14] = v6 - v28;
      v22[15] = v34;
      *(v22 + 2) = v24;
      *(v22 + 3) = v16;
      if (v16 == v3)
      {
        if (v6 >= v26)
        {
          v6 = v27;
        }

        v8 = qos_class_self();
        v9 = dispatch_get_global_queue(v8, 2uLL);
        dispatch_group_async_f(v16, v9, v22, _qsort_big_offset_with_meta_t);
      }

      else
      {
        v22[14] = v6;
        _qsort_big_offset_with_meta_t(v22);
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v16);
        v29 = qos_class_self();
        v30 = dispatch_get_global_queue(v29, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v38[0] = ___qsort_big_offset_with_meta_t_block_invoke;
        v38[1] = &__block_descriptor_tmp_4129;
        v38[2] = v22;
        dispatch_async(v30, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_offset_with_meta_t(v36, v1, v2);
  }
}

uint64_t _big_partition_offset_with_meta_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 16 * a2);
  v10 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
  v11 = (a1 + 16 * a3);
  if (v7 < 64)
  {
    v27 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
    v16 = v9;
  }

  else
  {
    v12 = v8 >> 3;
    v13 = &v9[2 * (v8 >> 3)];
    v14 = *v9 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *v13 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = v9;
    if (v14 != v15)
    {
      v16 = &v9[4 * v12];
      v17 = *v16 & 0x3FFFFFFFFFFFFFFFLL;
      if (v14 >= v17)
      {
        v18 = &v9[4 * v12];
      }

      else
      {
        v18 = v9;
      }

      if (v15 > v17)
      {
        v18 = &v9[2 * (v8 >> 3)];
      }

      if (v14 >= v17)
      {
        v19 = v9;
      }

      else
      {
        v19 = &v9[4 * v12];
      }

      if (v15 >= v17)
      {
        v13 = v19;
      }

      if (v14 >= v15)
      {
        v13 = v18;
      }

      if (v17 != v14 && v17 != v15)
      {
        v16 = v13;
      }
    }

    v21 = 2 * v12;
    v22 = -v12;
    v23 = 16 * v12;
    v24 = &v10[v23 / 0xFFFFFFFFFFFFFFF8];
    v25 = v10[v23 / 0xFFFFFFFFFFFFFFF8] & 0x3FFFFFFFFFFFFFFFLL;
    v26 = *v10 & 0x3FFFFFFFFFFFFFFFLL;
    if (v25 == v26)
    {
      v27 = &v10[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v27 = &v10[v23 / 8];
      v28 = *v27 & 0x3FFFFFFFFFFFFFFFLL;
      if (v28 != v25 && v28 != v26)
      {
        if (v25 >= v26)
        {
          if (v25 < v28)
          {
            v27 = v24;
          }

          if (v26 > v28)
          {
            v27 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
          }
        }

        else
        {
          if (v25 >= v28)
          {
            v27 = v24;
          }

          if (v26 < v28)
          {
            v27 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
          }
        }
      }
    }

    v30 = &v11[-2 * v21];
    v31 = &v11[2 * v22];
    v32 = *v30 & 0x3FFFFFFFFFFFFFFFLL;
    v33 = *v31 & 0x3FFFFFFFFFFFFFFFLL;
    if (v32 == v33)
    {
      v11 = v30;
    }

    else
    {
      v34 = *v11 & 0x3FFFFFFFFFFFFFFFLL;
      if (v32 >= v34)
      {
        v35 = v11;
      }

      else
      {
        v35 = v30;
      }

      if (v33 > v34)
      {
        v35 = v31;
      }

      if (v32 < v34)
      {
        v30 = v11;
      }

      if (v33 < v34)
      {
        v30 = v31;
      }

      if (v32 >= v33)
      {
        v30 = v35;
      }

      if (v34 == v33)
      {
        v30 = v11;
      }

      if (v34 != v32)
      {
        v11 = v30;
      }
    }
  }

  v36 = *v16 & 0x3FFFFFFFFFFFFFFFLL;
  v37 = *v27 & 0x3FFFFFFFFFFFFFFFLL;
  if (v36 == v37)
  {
    v27 = v16;
  }

  else
  {
    v38 = *v11 & 0x3FFFFFFFFFFFFFFFLL;
    if (v38 == v36 || v38 == v37)
    {
      v27 = v11;
    }

    else if (v36 >= v37)
    {
      if (v37 <= v38)
      {
        if (v36 >= v38)
        {
          v27 = v11;
        }

        else
        {
          v27 = v16;
        }
      }
    }

    else if (v37 >= v38)
    {
      if (v36 >= v38)
      {
        v27 = v16;
      }

      else
      {
        v27 = v11;
      }
    }
  }

  return parallel_partition_offset_with_meta_t(v9, v8, *v27 & 0x3FFFFFFFFFFFFFFFLL, a4, a5) + a2;
}

void ___qsort_big_offset_with_meta_t_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 16 * *(*(a1 + 32) + 8)), 16 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations, v2, 0);
}

uint64_t parallel_partition_offset_with_meta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - v11;
  bzero(v18 - v11, v10);
  v13 = (a2 / 0x4000) << 13;
  context[1] = v13;
  context[2] = a2;
  v14 = a2 - v13;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v12;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v15 = v13 + 0x2000;
  if (v14 > v13 + 0x2000)
  {
    v15 = a2 - v13;
  }

  context[3] = v14 + ((v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (16 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 16 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_offset_with_meta_t);
  result = sequential_fixup_offset_with_meta_t(context, a2, v5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sequential_fixup_offset_with_meta_t(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = a3 - 1;
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_111;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (v9 >= 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_111:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 >= v8)
    {
      goto LABEL_46;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v13 + 16 * *(v7 + 8 * v9);
    v15 = v13 + 16 * *(v7 + 8 * v8);
    while (1)
    {
      if (v10 < 0x2000)
      {
        v16 = (v14 + 16 * v10);
        while (1)
        {
          v17 = *v16;
          v16 += 2;
          if ((v17 & 0x3FFFFFFFFFFFFFFFuLL) > v12)
          {
            break;
          }

          if (++v10 == 0x2000)
          {
            v18 = 0x2000;
            if (v11 < 0x2000)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }
      }

      v18 = v10;
      if (v11 < 0x2000)
      {
LABEL_20:
        v19 = (v15 + 16 * v11);
        while (1)
        {
          v20 = *v19;
          v19 += 2;
          if ((v20 & 0x3FFFFFFFFFFFFFFFuLL) < v12)
          {
            break;
          }

          if (++v11 == 0x2000)
          {
            v10 = v18;
            goto LABEL_28;
          }
        }
      }

LABEL_24:
      v21 = v11;
      if (v18 == 0x2000 || v11 == 0x2000)
      {
        break;
      }

      v22 = *(v15 + 16 * v11);
      *(v15 + 16 * v11) = *(v14 + 16 * v18);
      *(v14 + 16 * v18) = v22;
      v10 = v18 + 1;
      ++v11;
      if (v18 > 8190 || v21 >= 0x1FFF)
      {
        goto LABEL_28;
      }
    }

    v10 = v18;
LABEL_28:
    if (v11 == 0x2000 && v10 == 0x2000)
    {
      v24 = 2;
    }

    else
    {
      v24 = v10 != 0x2000;
    }

    v7 = *(a1 + 64);
    if ((v24 & 1) == 0)
    {
      v25 = *(v7 + 8 * v9);
      if ((v25 & 0x8000000000000000) == 0 && v25 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      v10 = 0;
      ++v9;
      if ((v24 - 1) > 1)
      {
        continue;
      }
    }

    v26 = *(v7 + 8 * v8);
    v27 = v26 >= a2 || v26 < a2 - *(a1 + 40);
    if (!v27)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    v11 = 0;
    --v8;
  }

  while (v9 < v8);
LABEL_46:
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v30 = malloc_type_malloc(0x20000uLL, 0x1000040451B5BE8uLL);
  if (a3 < 1)
  {
    v48 = *a1;
    v47 = *(a1 + 16) - 1;
  }

  else
  {
    v31 = 0;
    v32 = ~v28 + a2;
    v33 = a3;
    v34 = *(a1 + 64);
    v35 = 8 * a3;
    do
    {
      v36 = v34[v31];
      if (v36 != -1 && v32 <= v36)
      {
        break;
      }

      if (v36 != -1)
      {
        if (v29 <= v36)
        {
          break;
        }

        v38 = *(a1 + 32);
        if (v38 > v36)
        {
          v39 = 0;
          do
          {
            if (v34[v39 / 8] == v38)
            {
              v38 += 0x2000;
              *(a1 + 32) = v38;
            }

            v39 += 8;
          }

          while (v35 != v39);
          if (v38 >= *a1)
          {
            break;
          }

          memcpy(v30, (*(a1 + 48) + 16 * v34[v31]), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v31)), (*(a1 + 48) + 16 * *(a1 + 32)), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(a1 + 32)), v30, 0x20000uLL);
          v40 = *(a1 + 32);
          v34 = *(a1 + 64);
          v34[v31] = v40;
          *(a1 + 32) = v40 + 0x2000;
        }
      }

      ++v31;
    }

    while (v31 != v33);
    v41 = v33;
    do
    {
      v42 = v41 - 1;
      v43 = v34[v41 - 1];
      if (v29 > v43)
      {
        break;
      }

      if (v43 != -1)
      {
        if (v32 > v43)
        {
          break;
        }

        v44 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v44;
        v45 = v33 - 1;
        do
        {
          if (v34[v45] == a2 - v44)
          {
            v44 += 0x2000;
            *(a1 + 40) = v44;
          }

          v46 = v45-- + 1;
        }

        while (v46 > 1);
        if ((a2 - v44) < *(a1 + 16))
        {
          break;
        }

        memcpy(v30, (*(a1 + 48) + 16 * v34[v42]), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v42)), (*(a1 + 48) + 16 * (a2 - *(a1 + 40))), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * (a2 - *(a1 + 40))), v30, 0x20000uLL);
        v34 = *(a1 + 64);
        v34[v42] = a2 - *(a1 + 40);
      }

      v27 = v41-- <= 1;
    }

    while (!v27);
    v47 = *(a1 + 16) - 1;
    v48 = *a1;
    do
    {
      v50 = *v34++;
      v49 = v50;
      if (v50 != -1)
      {
        if (v49 < v48)
        {
          v48 = v49;
        }

        v51 = v49 + 0x2000;
        v52 = v49 + 0x1FFF;
        if (v51 > v47)
        {
          v47 = v52;
        }

        if (v47 >= a2)
        {
          v53 = __si_assert_copy_extra_332();
          v54 = v53;
          v55 = "";
          if (v53)
          {
            v55 = v53;
          }

          __message_assert(v53, "OQueue.c", 13, "right < count", v55);
          free(v54);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v33;
    }

    while (v33);
  }

  free(v30);
  if (v48 >= v47)
  {
    v56 = v48;
  }

  else
  {
    v56 = v48;
    do
    {
      v57 = *(a1 + 48);
      v58 = *(a1 + 56);
      v59 = (v57 + 16 * v48);
      while (1)
      {
        v60 = *v59;
        v59 += 2;
        if ((v60 & 0x3FFFFFFFFFFFFFFFuLL) >= v58)
        {
          break;
        }

        if (++v56 >= v47)
        {
          if (v47 <= v48 + 1)
          {
            v56 = v48 + 1;
          }

          else
          {
            v56 = v47;
          }

          goto LABEL_105;
        }
      }

      if (v56 < v47)
      {
        v61 = (v57 + 16 * v47);
        while (1)
        {
          v62 = *v61;
          v61 -= 2;
          if ((v62 & 0x3FFFFFFFFFFFFFFFuLL) <= v58)
          {
            break;
          }

          if (v56 >= --v47)
          {
            goto LABEL_105;
          }
        }

        v63 = *(v57 + 16 * v47);
        *(v57 + 16 * v47) = *(v57 + 16 * v56);
        *(*(a1 + 48) + 16 * v56++) = v63;
        --v47;
      }

      v48 = v56;
    }

    while (v56 < v47);
  }

LABEL_105:
  if ((*(*(a1 + 48) + 16 * v56) & 0x3FFFFFFFFFFFFFFFuLL) >= *(a1 + 56))
  {
    return v56;
  }

  else
  {
    return v56 + 1;
  }
}

uint64_t index_comp(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

atomic_ullong *partition_phase_offset_with_meta_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 16 * add_explicit;
    v15 = result[7];
    v16 = v2 + 16 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        v17 = (v14 + 16 * v13);
        while (1)
        {
          v18 = *v17;
          v17 += 2;
          if ((v18 & 0x3FFFFFFFFFFFFFFFuLL) > v15)
          {
            break;
          }

          if (++v13 == 0x2000)
          {
            v19 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }
      }

      v19 = v13;
      if (v12 < 0x2000)
      {
LABEL_28:
        v20 = (v16 + 16 * v12);
        while (1)
        {
          v21 = *v20;
          v20 += 2;
          if ((v21 & 0x3FFFFFFFFFFFFFFFuLL) < v15)
          {
            break;
          }

          if (++v12 == 0x2000)
          {
            v13 = v19;
            goto LABEL_36;
          }
        }
      }

LABEL_32:
      v22 = v12;
      if (v19 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v23 = *(v16 + 16 * v12);
      *(v16 + 16 * v12) = *(v14 + 16 * v19);
      *(v14 + 16 * v19) = v23;
      v13 = v19 + 1;
      ++v12;
      if (v19 > 8190 || v22 >= 0x1FFF)
      {
        goto LABEL_36;
      }
    }

    v13 = v19;
LABEL_36:
    v24 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v24 = 2;
    }

    if (v24)
    {
LABEL_47:
      v27 = result[3];
      if (result[2] > v27)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v27)
        {
LABEL_51:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_51;
    }

    v26 = result[1];
    if (*result < v26)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v26)
      {
        goto LABEL_46;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_46:
    v13 = 0;
    ++v11;
    if ((v24 - 1) <= 1)
    {
      goto LABEL_47;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_offset_with_meta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5)
{
  v5 = a2 + 1;
  if (a5 >= 3)
  {
    while (v5 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_offset_with_meta_t(a1, v5, a3, a4, a5);
      }
    }
  }

  return parallel_partition_offset_with_meta_t(a1, v5, a3, a4, a5);
}

void *oqinit_offset_t(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a2;
  if (!a2)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = malloc_type_zone_malloc(queryZone, 8 * a2, 0xA4971684uLL);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v4, 2u);
    }

    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 8) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *a1 = 0;
  return result;
}

uint64_t ___qsort_offset_t_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *a2 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *a3 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = v3 > v4;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void _qsort_big_offset_t(void *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v35 = *(a1 + 6);
  v36 = *a1;
  v6 = *(a1 + 14);
  v34 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v10 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v12 = getSize_memSize;
      if (!getSize_memSize)
      {
        v41 = 0u;
        v42 = 0u;
        *host_info_out = 0u;
        v13 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v14 = host_info(v13, 1, host_info_out, &host_info_outCnt);
        if (v14)
        {
          mach_error("flushsize", v14);
          exit(1);
        }

        v12 = *(&v42 + 1);
        getSize_memSize = *(&v42 + 1);
      }

      v15 = 3 * v12 / 5uLL;
      v16 = v3;
      if (8 * v10 > v15)
      {
        v16 = dispatch_group_create();
      }

      if (v10 <= v35 || 8 * v10 >= v15)
      {
        v19 = _partition_offset_t(v36, v1, v2);
      }

      else
      {
        v17 = qos_class_self();
        global_queue = dispatch_get_global_queue(v17, 2uLL);
        v19 = _big_partition_offset_t(v36, v1, v2, global_queue, v6);
      }

      v20 = v19;
      v21 = v19 - v1;
      if (v19 < v1)
      {
        v31 = __si_assert_copy_extra_332();
        v32 = v31;
        v33 = "";
        if (v31)
        {
          v33 = v31;
        }

        __message_assert(v31, "OQueue.c", 14, "q>=left", v33, v38);
        free(v32);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v22 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v22)
      {
        v22 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
      }

      *(v22 + 4) = i;
      *(v22 + 5) = v5;
      *(v22 + 6) = v35;
      v23 = v2 - v20;
      if (v21 <= v2 - v20)
      {
        v24 = v20 - 1;
      }

      else
      {
        v23 = v20 - 1 - v1;
        v24 = v2;
      }

      if (v21 > v2 - v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v1;
      }

      if (v21 > v2 - v20)
      {
        v2 = v20 - 1;
      }

      else
      {
        v1 = v20;
      }

      *v22 = v36;
      *(v22 + 1) = v25;
      v26 = (((v23 + 1) * v6) / (v24 - v25 + 1));
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      if (v6 >= v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v22[14] = v6 - v28;
      v22[15] = v34;
      *(v22 + 2) = v24;
      *(v22 + 3) = v16;
      if (v16 == v3)
      {
        if (v6 >= v26)
        {
          v6 = v27;
        }

        v8 = qos_class_self();
        v9 = dispatch_get_global_queue(v8, 2uLL);
        dispatch_group_async_f(v16, v9, v22, _qsort_big_offset_t);
      }

      else
      {
        v22[14] = v6;
        _qsort_big_offset_t(v22);
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v16);
        v29 = qos_class_self();
        v30 = dispatch_get_global_queue(v29, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v38[0] = ___qsort_big_offset_t_block_invoke;
        v38[1] = &__block_descriptor_tmp_23_4148;
        v38[2] = v22;
        dispatch_async(v30, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_offset_t(v36, v1, v2);
  }
}

uint64_t _big_partition_offset_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 8 * a2);
  v10 = &v9[(v8 + (v8 >> 63)) >> 1];
  v11 = (a1 + 8 * a3);
  if (v7 < 64)
  {
    v27 = &v9[(v8 + (v8 >> 63)) >> 1];
    v16 = v9;
  }

  else
  {
    v12 = v8 >> 3;
    v13 = &v9[v8 >> 3];
    v14 = *v9 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *v13 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = v9;
    if (v14 != v15)
    {
      v16 = &v9[2 * v12];
      v17 = *v16 & 0x3FFFFFFFFFFFFFFFLL;
      if (v14 >= v17)
      {
        v18 = &v9[2 * v12];
      }

      else
      {
        v18 = v9;
      }

      if (v15 > v17)
      {
        v18 = &v9[v8 >> 3];
      }

      if (v14 >= v17)
      {
        v19 = v9;
      }

      else
      {
        v19 = &v9[2 * v12];
      }

      if (v15 >= v17)
      {
        v13 = v19;
      }

      if (v14 >= v15)
      {
        v13 = v18;
      }

      if (v17 != v14 && v17 != v15)
      {
        v16 = v13;
      }
    }

    v21 = 2 * v12;
    v22 = -v12;
    v23 = 8 * v12;
    v24 = &v10[v23 / 0xFFFFFFFFFFFFFFF8];
    v25 = v10[v23 / 0xFFFFFFFFFFFFFFF8] & 0x3FFFFFFFFFFFFFFFLL;
    v26 = *v10 & 0x3FFFFFFFFFFFFFFFLL;
    if (v25 == v26)
    {
      v27 = &v10[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v27 = &v10[v23 / 8];
      v28 = *v27 & 0x3FFFFFFFFFFFFFFFLL;
      if (v28 != v25 && v28 != v26)
      {
        if (v25 >= v26)
        {
          if (v25 < v28)
          {
            v27 = v24;
          }

          if (v26 > v28)
          {
            v27 = &v9[(v8 + (v8 >> 63)) >> 1];
          }
        }

        else
        {
          if (v25 >= v28)
          {
            v27 = v24;
          }

          if (v26 < v28)
          {
            v27 = &v9[(v8 + (v8 >> 63)) >> 1];
          }
        }
      }
    }

    v30 = &v11[-v21];
    v31 = &v11[v22];
    v32 = *v30 & 0x3FFFFFFFFFFFFFFFLL;
    v33 = *v31 & 0x3FFFFFFFFFFFFFFFLL;
    if (v32 == v33)
    {
      v11 = v30;
    }

    else
    {
      v34 = *v11 & 0x3FFFFFFFFFFFFFFFLL;
      if (v32 >= v34)
      {
        v35 = v11;
      }

      else
      {
        v35 = v30;
      }

      if (v33 > v34)
      {
        v35 = v31;
      }

      if (v32 < v34)
      {
        v30 = v11;
      }

      if (v33 < v34)
      {
        v30 = v31;
      }

      if (v32 >= v33)
      {
        v30 = v35;
      }

      if (v34 == v33)
      {
        v30 = v11;
      }

      if (v34 != v32)
      {
        v11 = v30;
      }
    }
  }

  v36 = *v16 & 0x3FFFFFFFFFFFFFFFLL;
  v37 = *v27 & 0x3FFFFFFFFFFFFFFFLL;
  if (v36 == v37)
  {
    v27 = v16;
  }

  else
  {
    v38 = *v11 & 0x3FFFFFFFFFFFFFFFLL;
    if (v38 == v36 || v38 == v37)
    {
      v27 = v11;
    }

    else if (v36 >= v37)
    {
      if (v37 <= v38)
      {
        if (v36 >= v38)
        {
          v27 = v11;
        }

        else
        {
          v27 = v16;
        }
      }
    }

    else if (v37 >= v38)
    {
      if (v36 >= v38)
      {
        v27 = v16;
      }

      else
      {
        v27 = v11;
      }
    }
  }

  return parallel_partition_offset_t(v9, v8, *v27 & 0x3FFFFFFFFFFFFFFFLL, a4, a5) + a2;
}

void ___qsort_big_offset_t_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 8 * *(*(a1 + 32) + 8)), 8 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations, v2, 0);
}

uint64_t parallel_partition_offset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - v11;
  bzero(v18 - v11, v10);
  v13 = (a2 / 0x4000) << 13;
  context[1] = v13;
  context[2] = a2;
  v14 = a2 - v13;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v12;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v15 = v13 + 0x2000;
  if (v14 > v13 + 0x2000)
  {
    v15 = a2 - v13;
  }

  context[3] = v14 + ((v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (8 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 8 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_offset_t);
  result = sequential_fixup_offset_t(context, a2, v5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sequential_fixup_offset_t(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = a3 - 1;
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_107;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (v9 < 0)
    {
LABEL_9:
      v10 = 0;
      v11 = 0;
      v12 = *(a1 + 48);
      while (1)
      {
        v13 = *(v7 + 8 * v9);
        v14 = v12 + 8 * v13;
        v15 = *(v7 + 8 * v8);
        v16 = v12 + 8 * v15;
        v17 = *(a1 + 56);
        while (1)
        {
          if (v10 < 0x2000)
          {
            while ((*(v14 + 8 * v10) & 0x3FFFFFFFFFFFFFFFuLL) <= v17)
            {
              if (++v10 == 0x2000)
              {
                v18 = 0x2000;
                if (v11 < 0x2000)
                {
                  goto LABEL_18;
                }

                goto LABEL_21;
              }
            }
          }

          v18 = v10;
          if (v11 < 0x2000)
          {
LABEL_18:
            while ((*(v16 + 8 * v11) & 0x3FFFFFFFFFFFFFFFuLL) >= v17)
            {
              if (++v11 == 0x2000)
              {
                v10 = v18;
                goto LABEL_25;
              }
            }
          }

LABEL_21:
          v19 = v11;
          if (v18 == 0x2000 || v11 == 0x2000)
          {
            break;
          }

          v20 = *(v16 + 8 * v11);
          *(v16 + 8 * v19) = *(v14 + 8 * v18);
          *(v14 + 8 * v18) = v20;
          v10 = v18 + 1;
          v11 = v19 + 1;
          if (v18 > 8190 || v19 >= 0x1FFF)
          {
            goto LABEL_25;
          }
        }

        v10 = v18;
LABEL_25:
        v21 = v10 != 0x2000;
        if (v11 == 0x2000 && v10 == 0x2000)
        {
          v21 = 2;
        }

        if (v21)
        {
          goto LABEL_36;
        }

        if ((v13 & 0x8000000000000000) == 0 && v13 < *(a1 + 32))
        {
          *(v7 + 8 * v9) = -1;
          *(a1 + 32) += 0x2000;
        }

        ++v9;
        if ((v21 - 1) > 1)
        {
          v10 = 0;
          if (v9 >= v8)
          {
            break;
          }
        }

        else
        {
          v10 = 0;
          v15 = *(v7 + 8 * v8);
LABEL_36:
          if (v15 < a2 && v15 >= a2 - *(a1 + 40))
          {
            *(v7 + 8 * v8) = -1;
            *(a1 + 40) += 0x2000;
          }

          v11 = 0;
          if (v9 >= --v8)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
LABEL_107:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 < v8)
    {
      goto LABEL_9;
    }
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = malloc_type_malloc(0x10000uLL, 0x100004000313F17uLL);
  if (a3 < 1)
  {
    v43 = *a1;
    v42 = *(a1 + 16) - 1;
  }

  else
  {
    v26 = 0;
    v27 = ~v23 + a2;
    v28 = a3;
    v29 = *(a1 + 64);
    v30 = 8 * a3;
    do
    {
      v31 = v29[v26];
      v32 = v31 == -1 || v27 > v31;
      if (!v32)
      {
        break;
      }

      if (v31 != -1)
      {
        if (v24 <= v31)
        {
          break;
        }

        v33 = *(a1 + 32);
        if (v33 > v31)
        {
          v34 = 0;
          do
          {
            if (v29[v34 / 8] == v33)
            {
              v33 += 0x2000;
              *(a1 + 32) = v33;
            }

            v34 += 8;
          }

          while (v30 != v34);
          if (v33 >= *a1)
          {
            break;
          }

          memcpy(v25, (*(a1 + 48) + 8 * v29[v26]), 0x10000uLL);
          memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v26)), (*(a1 + 48) + 8 * *(a1 + 32)), 0x10000uLL);
          memcpy((*(a1 + 48) + 8 * *(a1 + 32)), v25, 0x10000uLL);
          v35 = *(a1 + 32);
          v29 = *(a1 + 64);
          v29[v26] = v35;
          *(a1 + 32) = v35 + 0x2000;
        }
      }

      ++v26;
    }

    while (v26 != v28);
    v36 = v28;
    do
    {
      v37 = v36 - 1;
      v38 = v29[v36 - 1];
      if (v24 > v38)
      {
        break;
      }

      if (v38 != -1)
      {
        if (v27 > v38)
        {
          break;
        }

        v39 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v39;
        v40 = v28 - 1;
        do
        {
          if (v29[v40] == a2 - v39)
          {
            v39 += 0x2000;
            *(a1 + 40) = v39;
          }

          v41 = v40-- + 1;
        }

        while (v41 > 1);
        if ((a2 - v39) < *(a1 + 16))
        {
          break;
        }

        memcpy(v25, (*(a1 + 48) + 8 * v29[v37]), 0x10000uLL);
        memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v37)), (*(a1 + 48) + 8 * (a2 - *(a1 + 40))), 0x10000uLL);
        memcpy((*(a1 + 48) + 8 * (a2 - *(a1 + 40))), v25, 0x10000uLL);
        v29 = *(a1 + 64);
        v29[v37] = a2 - *(a1 + 40);
      }

      v32 = v36-- <= 1;
    }

    while (!v32);
    v42 = *(a1 + 16) - 1;
    v43 = *a1;
    do
    {
      v45 = *v29++;
      v44 = v45;
      if (v45 != -1)
      {
        if (v44 < v43)
        {
          v43 = v44;
        }

        v46 = v44 + 0x2000;
        v47 = v44 + 0x1FFF;
        if (v46 > v42)
        {
          v42 = v47;
        }

        if (v42 >= a2)
        {
          v48 = __si_assert_copy_extra_332();
          v49 = v48;
          v50 = "";
          if (v48)
          {
            v50 = v48;
          }

          __message_assert(v48, "OQueue.c", 14, "right < count", v50);
          free(v49);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v28;
    }

    while (v28);
  }

  free(v25);
  v51 = *(a1 + 48);
  if (v43 >= v42)
  {
    v52 = v43;
  }

  else
  {
    v52 = v43;
    do
    {
      v53 = *(a1 + 56);
      while (1)
      {
        v54 = *(v51 + 8 * v52);
        if ((v54 & 0x3FFFFFFFFFFFFFFFuLL) >= v53)
        {
          break;
        }

        if (++v52 >= v42)
        {
          if (v42 <= v43 + 1)
          {
            v52 = v43 + 1;
          }

          else
          {
            v52 = v42;
          }

          goto LABEL_101;
        }
      }

      if (v52 < v42)
      {
        while (1)
        {
          v55 = *(v51 + 8 * v42);
          if ((v55 & 0x3FFFFFFFFFFFFFFFuLL) <= v53)
          {
            break;
          }

          if (v52 >= --v42)
          {
            goto LABEL_101;
          }
        }

        *(v51 + 8 * v42) = v54;
        *(v51 + 8 * v52++) = v55;
        --v42;
      }

      v43 = v52;
    }

    while (v52 < v42);
  }

LABEL_101:
  if ((*(v51 + 8 * v52) & 0x3FFFFFFFFFFFFFFFuLL) >= *(a1 + 56))
  {
    return v52;
  }

  else
  {
    return v52 + 1;
  }
}

atomic_ullong *partition_phase_offset_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 8 * add_explicit;
    v15 = result[7];
    v16 = v2 + 8 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        while ((*(v14 + 8 * v13) & 0x3FFFFFFFFFFFFFFFuLL) <= v15)
        {
          if (++v13 == 0x2000)
          {
            v17 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_27;
            }

            goto LABEL_30;
          }
        }
      }

      v17 = v13;
      if (v12 < 0x2000)
      {
LABEL_27:
        while ((*(v16 + 8 * v12) & 0x3FFFFFFFFFFFFFFFuLL) >= v15)
        {
          if (++v12 == 0x2000)
          {
            v13 = v17;
            goto LABEL_34;
          }
        }
      }

LABEL_30:
      v18 = v12;
      if (v17 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v19 = *(v16 + 8 * v12);
      *(v16 + 8 * v18) = *(v14 + 8 * v17);
      *(v14 + 8 * v17) = v19;
      v13 = v17 + 1;
      v12 = v18 + 1;
      if (v17 > 8190 || v18 >= 0x1FFF)
      {
        goto LABEL_34;
      }
    }

    v13 = v17;
LABEL_34:
    v20 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v20 = 2;
    }

    if (v20)
    {
LABEL_45:
      if (result[2] > v5)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v5)
        {
LABEL_49:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_49;
    }

    if (*result < v3)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v3)
      {
        goto LABEL_44;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_44:
    v13 = 0;
    ++v11;
    if ((v20 - 1) <= 1)
    {
      goto LABEL_45;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_offset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5)
{
  v5 = a2 + 1;
  if (a5 >= 3)
  {
    while (v5 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_offset_t(a1, v5, a3, a4, a5);
      }
    }
  }

  return parallel_partition_offset_t(a1, v5, a3, a4, a5);
}

void oqdispose_JustPositionOffset_t(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      CFRelease(*(*(a1 + 8) + v3));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 24));
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    if (v4 < *(a1 + 40))
    {
      v5 = (16 * v4) | 8;
      do
      {
        CFRelease(*(*(a1 + 8) + v5));
        ++v4;
        v5 += 16;
      }

      while (v4 < *(a1 + 40));
    }
  }

  v6 = *(a1 + 8);

  free(v6);
}

void parallel_qsort_JustPositionOffset_t(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v5 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v5)
    {
      v5 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
    }

    v6 = dispatch_group_create();
    v5[3] = v6;
    v5[4] = 0;
    v5[1] = 0;
    v5[2] = a2 - 1;
    *v5 = a1;
    v7 = thread_count;
    if (!thread_count)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    *(v5 + 14) = v7;
    v5[5] = sqrt(a2) / 2;
    if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    v8 = a2 / (2 * v7);
    if (v8 <= 0x8000)
    {
      v8 = 0x8000;
    }

    else if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v8 = a2 / (2 * thread_count);
    }

    v5[6] = v8;
    if (v5[5] <= 2047)
    {
      v5[5] = 2048;
    }

    _qsort_big_JustPositionOffset_t(v5);
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];

    _qsort_JustPositionOffset_t(a1, 0, a2 - 1);
  }
}

void _qsort_JustPositionOffset_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  *v6 = 0;
  v6[1] = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v10 = 128;
      }

      else
      {
        v10 = v7;
      }

      while (1)
      {
        v11 = a3 - a2;
        if (a3 - a2 <= 16)
        {
          break;
        }

        v12 = v11 + 1;
        v13 = (a1 + 16 * a2);
        v14 = &v13[(v11 + 1) >> 1];
        v15 = (a1 + 16 * a3);
        if (v11 < 0x400)
        {
          v23 = &v13[(v11 + 1) >> 1];
          v24 = (a1 + 16 * a3);
          v20 = (a1 + 16 * a2);
        }

        else
        {
          v16 = v12 >> 3;
          v17 = &v13[v12 >> 3];
          v18 = v13->i64[0];
          v19 = v17->i64[0];
          v20 = (a1 + 16 * a2);
          if (v13->i64[0] != v17->i64[0])
          {
            v21 = v13[2 * v16].u64[0];
            v22 = v21 == v18 || v21 == v19;
            v20 = &v13[2 * v16];
            if (!v22)
            {
              v20 = &v13[v12 >> 3];
              if (v18 >= v19)
              {
                if (v19 <= v21)
                {
                  if (v18 >= v21)
                  {
                    v20 = &v13[2 * v16];
                  }

                  else
                  {
                    v20 = (a1 + 16 * a2);
                  }
                }
              }

              else if (v19 >= v21)
              {
                if (v18 >= v21)
                {
                  v20 = (a1 + 16 * a2);
                }

                else
                {
                  v20 = &v13[2 * v16];
                }
              }
            }
          }

          v36 = &v14[-v16];
          v37 = *v36;
          v38 = v14->i64[0];
          if (*v36 == v14->i64[0])
          {
            v23 = &v14[-v16];
          }

          else
          {
            v23 = &v14[v16];
            v39 = v23->i64[0];
            if (v23->i64[0] != v37 && v39 != v38)
            {
              if (v37 >= v39)
              {
                v41 = &v14[v16];
              }

              else
              {
                v41 = &v14[-v16];
              }

              if (v38 > v39)
              {
                v41 = &v13[(v11 + 1) >> 1];
              }

              if (v37 >= v39)
              {
                v23 = &v14[-v16];
              }

              if (v38 < v39)
              {
                v23 = &v13[(v11 + 1) >> 1];
              }

              if (v37 >= v38)
              {
                v23 = v41;
              }
            }
          }

          v42 = &v15[-4 * v16];
          v24 = &v15[-2 * v16];
          v43 = *v42;
          v44 = v24->i64[0];
          if (*v42 == v24->i64[0])
          {
            v24 = v42;
          }

          else
          {
            v45 = *v15;
            if (*v15 == v43 || v45 == v44)
            {
              v24 = (a1 + 16 * a3);
            }

            else if (v43 >= v44)
            {
              if (v44 <= v45)
              {
                if (v43 >= v45)
                {
                  v24 = (a1 + 16 * a3);
                }

                else
                {
                  v24 = v42;
                }
              }
            }

            else if (v44 >= v45)
            {
              if (v43 >= v45)
              {
                v24 = v42;
              }

              else
              {
                v24 = (a1 + 16 * a3);
              }
            }
          }
        }

        v25 = v20->i64[0];
        v26 = v23->i64[0];
        if (v20->i64[0] == v23->i64[0])
        {
          v23 = v20;
        }

        else
        {
          v27 = v24->i64[0];
          if (v24->i64[0] == v25 || v27 == v26)
          {
            v23 = v24;
          }

          else if (v25 >= v26)
          {
            if (v26 <= v27)
            {
              if (v25 >= v27)
              {
                v23 = v24;
              }

              else
              {
                v23 = v20;
              }
            }
          }

          else if (v26 >= v27)
          {
            if (v25 >= v27)
            {
              v23 = v20;
            }

            else
            {
              v23 = v24;
            }
          }
        }

        v29 = *v23;
        *v23 = *v15;
        *v15 = v29;
        v30 = *v13;
        v31 = (a1 + 16 + 16 * a2);
        v32 = a2;
        do
        {
          v33 = *v31;
          if ((vmovn_s64(vcgtq_u64(v30, v29)).u8[0] & 1) == 0)
          {
            v31[-1] = *(a1 + 16 * v32);
            *(a1 + 16 * v32++) = v30;
          }

          ++v31;
          v30 = v33;
          --v11;
        }

        while (v11);
        v34 = *(a1 + 16 * v32);
        *(a1 + 16 * v32) = *v15;
        *v15 = v34;
        if (v32 < a2)
        {
          v56 = __si_assert_copy_extra_332();
          v57 = v56;
          v58 = "";
          if (v56)
          {
            v58 = v56;
          }

          __message_assert(v56, "OQueue.c", 16, "q>=left", v58);
          free(v57);
          if (__valid_fs(-1))
          {
            v59 = 2989;
          }

          else
          {
            v59 = 3072;
          }

          *v59 = -559038737;
          abort();
        }

        if (v7 == v10)
        {
          v8 = v6;
          heapsort_b(v13, v12, 0x10uLL, &__block_literal_global_31_4150);
          v6 = v8;
          v7 = v10;
          goto LABEL_3;
        }

        v35 = &v6[2 * v7];
        if (v32 - a2 <= a3 - v32)
        {
          *v35 = a2;
          v35[1] = v32 - 1;
          a2 = v32;
        }

        else
        {
          *v35 = v32;
          v35[1] = a3;
          a3 = v32 - 1;
        }

        ++v7;
        if (a3 <= a2)
        {
          goto LABEL_3;
        }
      }

      v47 = a1 + 8 + 16 * a2;
      v48 = a2;
      do
      {
        v49 = v48++;
        v50 = *(a1 + 16 * v48);
        v51 = *(a1 + 16 * v49);
        v52 = *(a1 + 16 * v48);
        v53 = v48;
        if (v51 > v52)
        {
          v54 = v47;
          do
          {
            v53 = v49;
            v55 = *v54;
            v54[1] = v51;
            v54[2] = v55;
            if (v53 <= a2)
            {
              break;
            }

            v51 = *(v54 - 3);
            v49 = v53 - 1;
            v54 -= 2;
          }

          while (v51 > v52);
        }

        *(a1 + 16 * v53) = v50;
        v47 += 16;
      }

      while (v48 != a3);
    }

LABEL_3:
    --v7;
    v9 = &v6[2 * v7];
    a2 = *v9;
    a3 = v9[1];
  }

  while (v7);

  free(v6);
}

void _qsort_big_JustPositionOffset_t(void *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v63 = *(a1 + 6);
  v64 = *(a1 + 3);
  v6 = *(a1 + 14);
  v62 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v3 > v2)
  {
    while (1)
    {
      ++v5;
      v9 = v3 - v2;
      if (v3 - v2 <= v4 || v5 > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v11 = getSize_memSize;
      if (!getSize_memSize)
      {
        v68 = 0u;
        v69 = 0u;
        *host_info_out = 0u;
        v12 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v13 = host_info(v12, 1, host_info_out, &host_info_outCnt);
        if (v13)
        {
          mach_error("flushsize", v13);
          exit(1);
        }

        v11 = *(&v69 + 1);
        getSize_memSize = *(&v69 + 1);
      }

      v14 = 3 * v11 / 5uLL;
      v15 = v64;
      if (16 * v9 > v14)
      {
        v15 = dispatch_group_create();
      }

      if (v9 <= v63 || 16 * v9 >= v14)
      {
        v19 = v9 + 1;
        v20 = (v1 + 16 * v2);
        v21 = &v20[(v9 + 1 + ((v9 + 1) >> 63)) >> 1];
        v22 = (v1 + 16 * v3);
        if (v9 < 1024)
        {
          v29 = &v20[(v9 + 1 + ((v9 + 1) >> 63)) >> 1];
          v30 = (v1 + 16 * v3);
          v27 = (v1 + 16 * v2);
        }

        else
        {
          v23 = v19 >> 3;
          v24 = &v20[v19 >> 3];
          v25 = v20->i64[0];
          v26 = v24->i64[0];
          v27 = (v1 + 16 * v2);
          if (v20->i64[0] != v24->i64[0])
          {
            v27 = &v20[2 * v23];
            v28 = v27->i64[0];
            if (v27->i64[0] != v25 && v28 != v26)
            {
              if (v25 >= v26)
              {
                if (v25 < v28)
                {
                  v27 = (v1 + 16 * v2);
                }

                if (v26 > v28)
                {
                  v27 = v24;
                }
              }

              else
              {
                if (v25 >= v28)
                {
                  v27 = (v1 + 16 * v2);
                }

                if (v26 < v28)
                {
                  v27 = v24;
                }
              }
            }
          }

          v49 = v23;
          v50 = &v21[-v23];
          v51 = *v50;
          v52 = v21->i64[0];
          if (*v50 == v21->i64[0])
          {
            v29 = &v21[-v23];
          }

          else
          {
            v53 = &v21[v49];
            v54 = v21[v23].u64[0];
            if (v54 == v51)
            {
              v29 = &v21[v49];
            }

            else
            {
              v29 = &v21[v49];
              if (v54 != v52)
              {
                v29 = &v20[(v9 + 1 + ((v9 + 1) >> 63)) >> 1];
                if (v51 >= v52)
                {
                  if (v52 <= v54)
                  {
                    if (v51 >= v54)
                    {
                      v29 = v53;
                    }

                    else
                    {
                      v29 = &v21[-v23];
                    }
                  }
                }

                else if (v52 >= v54)
                {
                  if (v51 >= v54)
                  {
                    v29 = &v21[-v23];
                  }

                  else
                  {
                    v29 = v53;
                  }
                }
              }
            }
          }

          v55 = &v22[-4 * v23];
          v30 = &v22[-2 * v23];
          v56 = *v55;
          v57 = v30->i64[0];
          if (*v55 == v30->i64[0])
          {
            v30 = v55;
          }

          else
          {
            v58 = *v22;
            if (*v22 == v56 || v58 == v57)
            {
              v30 = (v1 + 16 * v3);
            }

            else if (v56 >= v57)
            {
              if (v57 <= v58)
              {
                if (v56 >= v58)
                {
                  v30 = (v1 + 16 * v3);
                }

                else
                {
                  v30 = v55;
                }
              }
            }

            else if (v57 >= v58)
            {
              if (v56 >= v58)
              {
                v30 = v55;
              }

              else
              {
                v30 = (v1 + 16 * v3);
              }
            }
          }
        }

        v31 = v27->i64[0];
        v32 = v29->i64[0];
        if (v27->i64[0] == v29->i64[0])
        {
          v29 = v27;
        }

        else
        {
          v33 = v30->i64[0];
          if (v30->i64[0] == v31 || v33 == v32)
          {
            v29 = v30;
          }

          else if (v31 >= v32)
          {
            if (v32 <= v33)
            {
              if (v31 >= v33)
              {
                v29 = v30;
              }

              else
              {
                v29 = v27;
              }
            }
          }

          else if (v32 >= v33)
          {
            if (v31 >= v33)
            {
              v29 = v27;
            }

            else
            {
              v29 = v30;
            }
          }
        }

        v34 = *v29;
        *v29 = *v22;
        *v22 = v34;
        v35 = *v20;
        v36 = (v1 + 16 + 16 * v2);
        v18 = v2;
        do
        {
          v37 = *v36;
          if ((vmovn_s64(vcgtq_u64(v35, v34)).u8[0] & 1) == 0)
          {
            v36[-1] = *(v1 + 16 * v18);
            *(v1 + 16 * v18++) = v35;
          }

          ++v36;
          v35 = v37;
          --v9;
        }

        while (v9);
        v38 = *(v1 + 16 * v18);
        *(v1 + 16 * v18) = *v22;
        *v22 = v38;
      }

      else
      {
        v16 = qos_class_self();
        global_queue = dispatch_get_global_queue(v16, 2uLL);
        v18 = _big_partition_JustPositionOffset_t(v1, v2, v3, global_queue, v6);
      }

      v39 = v18 - v2;
      if (v18 < v2)
      {
        v59 = __si_assert_copy_extra_332();
        v60 = v59;
        v61 = "";
        if (v59)
        {
          v61 = v59;
        }

        __message_assert(v59, "OQueue.c", 16, "q>=left", v61);
        free(v60);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v40 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v40)
      {
        v40 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v40 + 4) = v5;
      *(v40 + 5) = v4;
      *(v40 + 6) = v63;
      v41 = v3 - v18;
      if (v39 <= v3 - v18)
      {
        v42 = v18 - 1;
      }

      else
      {
        v41 = v18 - 1 - v2;
        v42 = v3;
      }

      if (v39 > v3 - v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v2;
      }

      if (v39 > v3 - v18)
      {
        v3 = v18 - 1;
      }

      else
      {
        v2 = v18;
      }

      *v40 = v1;
      *(v40 + 1) = v43;
      v44 = (((v41 + 1) * v6) / (v42 - v43 + 1));
      if (v44 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v44;
      }

      if (v6 >= v44)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      v40[14] = v6 - v46;
      v40[15] = v62;
      *(v40 + 2) = v42;
      *(v40 + 3) = v15;
      if (v15 == v64)
      {
        if (v6 >= v44)
        {
          v6 = v45;
        }

        v7 = qos_class_self();
        v8 = dispatch_get_global_queue(v7, 2uLL);
        dispatch_group_async_f(v15, v8, v40, _qsort_big_JustPositionOffset_t);
        if (v3 <= v2)
        {
          return;
        }
      }

      else
      {
        v40[14] = v6;
        _qsort_big_JustPositionOffset_t(v40);
        dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v15);
        v47 = qos_class_self();
        v48 = dispatch_get_global_queue(v47, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___qsort_big_JustPositionOffset_t_block_invoke;
        block[3] = &__block_descriptor_tmp_28_4153;
        block[4] = v40;
        dispatch_async(v48, block);
        if (v3 <= v2)
        {
          return;
        }
      }
    }

    _qsort_JustPositionOffset_t(v1, v2, v3);
  }
}

uint64_t _big_partition_JustPositionOffset_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 16 * a2);
  v10 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
  v11 = (a1 + 16 * a3);
  if (v7 < 64)
  {
    v27 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
    v16 = v9;
  }

  else
  {
    v12 = v8 >> 3;
    v13 = &v9[2 * (v8 >> 3)];
    v14 = *v9;
    v15 = *v13;
    v16 = v9;
    if (*v9 != *v13)
    {
      v16 = &v9[4 * v12];
      v17 = *v16;
      if (v14 >= *v16)
      {
        v18 = &v9[4 * v12];
      }

      else
      {
        v18 = v9;
      }

      if (v15 > v17)
      {
        v18 = &v9[2 * (v8 >> 3)];
      }

      if (v14 >= v17)
      {
        v19 = v9;
      }

      else
      {
        v19 = &v9[4 * v12];
      }

      if (v15 >= v17)
      {
        v13 = v19;
      }

      if (v14 >= v15)
      {
        v13 = v18;
      }

      if (v17 != v14 && v17 != v15)
      {
        v16 = v13;
      }
    }

    v21 = 2 * v12;
    v22 = -v12;
    v23 = 16 * v12;
    v24 = &v10[v23 / 0xFFFFFFFFFFFFFFF8];
    v25 = v10[v23 / 0xFFFFFFFFFFFFFFF8];
    v26 = *v10;
    if (v25 == *v10)
    {
      v27 = &v10[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v27 = &v10[v23 / 8];
      v28 = *v27;
      if (*v27 != v25 && v28 != v26)
      {
        if (v25 >= v28)
        {
          v30 = v27;
        }

        else
        {
          v30 = v24;
        }

        if (v26 > v28)
        {
          v30 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
        }

        if (v25 >= v28)
        {
          v27 = v24;
        }

        if (v26 < v28)
        {
          v27 = &v9[2 * ((v8 + (v8 >> 63)) >> 1)];
        }

        if (v25 >= v26)
        {
          v27 = v30;
        }
      }
    }

    v31 = &v11[-2 * v21];
    v32 = &v11[2 * v22];
    v33 = *v31;
    v34 = *v32;
    if (*v31 == *v32)
    {
      v11 = v31;
    }

    else
    {
      v35 = *v11;
      if (v33 >= *v11)
      {
        v36 = v11;
      }

      else
      {
        v36 = v31;
      }

      if (v34 > v35)
      {
        v36 = v32;
      }

      if (v33 < v35)
      {
        v31 = v11;
      }

      if (v34 >= v35)
      {
        v32 = v31;
      }

      if (v33 >= v34)
      {
        v32 = v36;
      }

      if (v35 != v33 && v35 != v34)
      {
        v11 = v32;
      }
    }
  }

  v38 = *v16;
  v39 = *v27;
  if (*v16 == *v27)
  {
    v27 = v16;
  }

  else
  {
    v40 = *v11;
    if (*v11 == v38 || v40 == v39)
    {
      v27 = v11;
    }

    else if (v38 >= v39)
    {
      if (v39 <= v40)
      {
        if (v38 >= v40)
        {
          v27 = v11;
        }

        else
        {
          v27 = v16;
        }
      }
    }

    else if (v39 >= v40)
    {
      if (v38 >= v40)
      {
        v27 = v16;
      }

      else
      {
        v27 = v11;
      }
    }
  }

  return parallel_partition_JustPositionOffset_t(v9, v8, *v27, a4, a5) + a2;
}

uint64_t parallel_partition_JustPositionOffset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - v11;
  bzero(v18 - v11, v10);
  v13 = (a2 / 0x4000) << 13;
  context[1] = v13;
  context[2] = a2;
  v14 = a2 - v13;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v12;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v15 = v13 + 0x2000;
  if (v14 > v13 + 0x2000)
  {
    v15 = a2 - v13;
  }

  context[3] = v14 + ((v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (16 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 16 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_JustPositionOffset_t);
  result = sequential_fixup_JustPositionOffset_t(context, a2, v5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sequential_fixup_JustPositionOffset_t(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = a3 - 1;
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_111;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (v9 >= 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_111:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 >= v8)
    {
      goto LABEL_46;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v13 + 16 * *(v7 + 8 * v9);
    v15 = v13 + 16 * *(v7 + 8 * v8);
    while (1)
    {
      if (v10 < 0x2000)
      {
        v16 = (v14 + 16 * v10);
        while (1)
        {
          v17 = *v16;
          v16 += 2;
          if (v17 > v12)
          {
            break;
          }

          if (++v10 == 0x2000)
          {
            v18 = 0x2000;
            if (v11 < 0x2000)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }
      }

      v18 = v10;
      if (v11 < 0x2000)
      {
LABEL_20:
        v19 = (v15 + 16 * v11);
        while (1)
        {
          v20 = *v19;
          v19 += 2;
          if (v20 < v12)
          {
            break;
          }

          if (++v11 == 0x2000)
          {
            v10 = v18;
            goto LABEL_28;
          }
        }
      }

LABEL_24:
      v21 = v11;
      if (v18 == 0x2000 || v11 == 0x2000)
      {
        break;
      }

      v22 = *(v15 + 16 * v11);
      *(v15 + 16 * v11) = *(v14 + 16 * v18);
      *(v14 + 16 * v18) = v22;
      v10 = v18 + 1;
      ++v11;
      if (v18 > 8190 || v21 >= 0x1FFF)
      {
        goto LABEL_28;
      }
    }

    v10 = v18;
LABEL_28:
    if (v11 == 0x2000 && v10 == 0x2000)
    {
      v24 = 2;
    }

    else
    {
      v24 = v10 != 0x2000;
    }

    v7 = *(a1 + 64);
    if ((v24 & 1) == 0)
    {
      v25 = *(v7 + 8 * v9);
      if ((v25 & 0x8000000000000000) == 0 && v25 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      v10 = 0;
      ++v9;
      if ((v24 - 1) > 1)
      {
        continue;
      }
    }

    v26 = *(v7 + 8 * v8);
    v27 = v26 >= a2 || v26 < a2 - *(a1 + 40);
    if (!v27)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    v11 = 0;
    --v8;
  }

  while (v9 < v8);
LABEL_46:
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v30 = malloc_type_malloc(0x20000uLL, 0x108004057E67DB5uLL);
  if (a3 < 1)
  {
    v48 = *a1;
    v47 = *(a1 + 16) - 1;
  }

  else
  {
    v31 = 0;
    v32 = ~v28 + a2;
    v33 = a3;
    v34 = *(a1 + 64);
    v35 = 8 * a3;
    do
    {
      v36 = v34[v31];
      if (v36 != -1 && v32 <= v36)
      {
        break;
      }

      if (v36 != -1)
      {
        if (v29 <= v36)
        {
          break;
        }

        v38 = *(a1 + 32);
        if (v38 > v36)
        {
          v39 = 0;
          do
          {
            if (v34[v39 / 8] == v38)
            {
              v38 += 0x2000;
              *(a1 + 32) = v38;
            }

            v39 += 8;
          }

          while (v35 != v39);
          if (v38 >= *a1)
          {
            break;
          }

          memcpy(v30, (*(a1 + 48) + 16 * v34[v31]), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v31)), (*(a1 + 48) + 16 * *(a1 + 32)), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(a1 + 32)), v30, 0x20000uLL);
          v40 = *(a1 + 32);
          v34 = *(a1 + 64);
          v34[v31] = v40;
          *(a1 + 32) = v40 + 0x2000;
        }
      }

      ++v31;
    }

    while (v31 != v33);
    v41 = v33;
    do
    {
      v42 = v41 - 1;
      v43 = v34[v41 - 1];
      if (v29 > v43)
      {
        break;
      }

      if (v43 != -1)
      {
        if (v32 > v43)
        {
          break;
        }

        v44 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v44;
        v45 = v33 - 1;
        do
        {
          if (v34[v45] == a2 - v44)
          {
            v44 += 0x2000;
            *(a1 + 40) = v44;
          }

          v46 = v45-- + 1;
        }

        while (v46 > 1);
        if ((a2 - v44) < *(a1 + 16))
        {
          break;
        }

        memcpy(v30, (*(a1 + 48) + 16 * v34[v42]), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v42)), (*(a1 + 48) + 16 * (a2 - *(a1 + 40))), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * (a2 - *(a1 + 40))), v30, 0x20000uLL);
        v34 = *(a1 + 64);
        v34[v42] = a2 - *(a1 + 40);
      }

      v27 = v41-- <= 1;
    }

    while (!v27);
    v47 = *(a1 + 16) - 1;
    v48 = *a1;
    do
    {
      v50 = *v34++;
      v49 = v50;
      if (v50 != -1)
      {
        if (v49 < v48)
        {
          v48 = v49;
        }

        v51 = v49 + 0x2000;
        v52 = v49 + 0x1FFF;
        if (v51 > v47)
        {
          v47 = v52;
        }

        if (v47 >= a2)
        {
          v53 = __si_assert_copy_extra_332();
          v54 = v53;
          v55 = "";
          if (v53)
          {
            v55 = v53;
          }

          __message_assert(v53, "OQueue.c", 16, "right < count", v55);
          free(v54);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v33;
    }

    while (v33);
  }

  free(v30);
  if (v48 >= v47)
  {
    v56 = v48;
  }

  else
  {
    v56 = v48;
    do
    {
      v57 = *(a1 + 48);
      v58 = *(a1 + 56);
      v59 = (v57 + 16 * v48);
      while (1)
      {
        v60 = *v59;
        v59 += 2;
        if (v60 >= v58)
        {
          break;
        }

        if (++v56 >= v47)
        {
          if (v47 <= v48 + 1)
          {
            v56 = v48 + 1;
          }

          else
          {
            v56 = v47;
          }

          goto LABEL_105;
        }
      }

      if (v56 < v47)
      {
        v61 = (v57 + 16 * v47);
        while (1)
        {
          v62 = *v61;
          v61 -= 2;
          if (v62 <= v58)
          {
            break;
          }

          if (v56 >= --v47)
          {
            goto LABEL_105;
          }
        }

        v63 = *(v57 + 16 * v47);
        *(v57 + 16 * v47) = *(v57 + 16 * v56);
        *(*(a1 + 48) + 16 * v56++) = v63;
        --v47;
      }

      v48 = v56;
    }

    while (v56 < v47);
  }

LABEL_105:
  if (*(*(a1 + 48) + 16 * v56) >= *(a1 + 56))
  {
    return v56;
  }

  else
  {
    return v56 + 1;
  }
}

atomic_ullong *partition_phase_JustPositionOffset_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 16 * add_explicit;
    v15 = result[7];
    v16 = v2 + 16 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        v17 = (v14 + 16 * v13);
        while (1)
        {
          v18 = *v17;
          v17 += 2;
          if (v18 > v15)
          {
            break;
          }

          if (++v13 == 0x2000)
          {
            v19 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }
      }

      v19 = v13;
      if (v12 < 0x2000)
      {
LABEL_28:
        v20 = (v16 + 16 * v12);
        while (1)
        {
          v21 = *v20;
          v20 += 2;
          if (v21 < v15)
          {
            break;
          }

          if (++v12 == 0x2000)
          {
            v13 = v19;
            goto LABEL_36;
          }
        }
      }

LABEL_32:
      v22 = v12;
      if (v19 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v23 = *(v16 + 16 * v12);
      *(v16 + 16 * v12) = *(v14 + 16 * v19);
      *(v14 + 16 * v19) = v23;
      v13 = v19 + 1;
      ++v12;
      if (v19 > 8190 || v22 >= 0x1FFF)
      {
        goto LABEL_36;
      }
    }

    v13 = v19;
LABEL_36:
    v24 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v24 = 2;
    }

    if (v24)
    {
LABEL_47:
      v27 = result[3];
      if (result[2] > v27)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v27)
        {
LABEL_51:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_51;
    }

    v26 = result[1];
    if (*result < v26)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v26)
      {
        goto LABEL_46;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_46:
    v13 = 0;
    ++v11;
    if ((v24 - 1) <= 1)
    {
      goto LABEL_47;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_JustPositionOffset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5)
{
  v5 = a2 + 1;
  if (a5 >= 3)
  {
    while (v5 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_JustPositionOffset_t(a1, v5, a3, a4, a5);
      }
    }
  }

  return parallel_partition_JustPositionOffset_t(a1, v5, a3, a4, a5);
}

void oqdispose_PositionOffsetWithMeta_t(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      CFRelease(*(*(a1 + 8) + v3));
      ++v2;
      v3 += 24;
    }

    while (v2 < *(a1 + 24));
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    if (v4 < *(a1 + 40))
    {
      v5 = 24 * v4 + 8;
      do
      {
        CFRelease(*(*(a1 + 8) + v5));
        ++v4;
        v5 += 24;
      }

      while (v4 < *(a1 + 40));
    }
  }

  v6 = *(a1 + 8);

  free(v6);
}

void parallel_qsort_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v5 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v5)
    {
      v5 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
    }

    v6 = dispatch_group_create();
    v5[3] = v6;
    v5[4] = 0;
    v5[1] = 0;
    v5[2] = a2 - 1;
    *v5 = a1;
    v7 = thread_count;
    if (!thread_count)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    *(v5 + 14) = v7;
    v5[5] = sqrt(a2) / 2;
    if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    v8 = a2 / (2 * v7);
    if (v8 <= 0x8000)
    {
      v8 = 0x8000;
    }

    else if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v8 = a2 / (2 * thread_count);
    }

    v5[6] = v8;
    if (v5[5] <= 2047)
    {
      v5[5] = 2048;
    }

    _qsort_big_PositionOffsetWithMeta_t(v5);
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];

    _qsort_PositionOffsetWithMeta_t(a1, 0, a2 - 1);
  }
}

void _qsort_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  *v6 = 0;
  v6[1] = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v9 = 128;
      }

      else
      {
        v9 = v7;
      }

      v10 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v11 = _partition_PositionOffsetWithMeta_t(a1, a2, a3);
        if (v11 < a2)
        {
          v22 = __si_assert_copy_extra_332();
          v23 = v22;
          v24 = "";
          if (v22)
          {
            v24 = v22;
          }

          __message_assert(v22, "OQueue.c", 17, "q>=left", v24);
          free(v23);
          if (__valid_fs(-1))
          {
            v25 = 2989;
          }

          else
          {
            v25 = 3072;
          }

          *v25 = -559038737;
          abort();
        }

        if (v9 == v7)
        {
          heapsort_b((a1 + 24 * a2), a3 - a2 + 1, 0x18uLL, &__block_literal_global_36);
          v7 = v9;
          goto LABEL_3;
        }

        if (v11 - a2 <= a3 - v11)
        {
          *(v10 - 1) = a2;
          *v10 = v11 - 1;
          a2 = v11;
        }

        else
        {
          *(v10 - 1) = v11;
          *v10 = a3;
          a3 = v11 - 1;
        }

        ++v7;
        v10 += 2;
        if (a3 <= a2)
        {
          goto LABEL_3;
        }
      }

      v12 = a1 + 32 + 24 * a2;
      v13 = a2;
      do
      {
        v15 = v13++;
        v16 = a1 + 24 * v15;
        v17 = *(v16 + 24);
        v18 = *v16;
        v19 = *(v16 + 8);
        v26 = v19;
        v27 = *(v16 + 32);
        v20 = v13;
        if (v18 > v17)
        {
          v21 = v12;
          do
          {
            v20 = v15;
            *(v21 - 1) = v18;
            *v21 = v26;
            if (v15 <= a2)
            {
              break;
            }

            v18 = *(v21 - 7);
            v26 = *(v21 - 3);
            --v15;
            v21 = (v21 - 24);
          }

          while (v18 > v17);
        }

        v14 = a1 + 24 * v20;
        *v14 = v17;
        *(v14 + 8) = v27;
        v12 += 24;
      }

      while (v13 != a3);
    }

LABEL_3:
    --v7;
    v8 = &v6[2 * v7];
    a2 = *v8;
    a3 = v8[1];
  }

  while (v7);

  free(v6);
}

uint64_t _partition_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 24 * a2);
  v5 = &v4[3 * ((v3 + (v3 >> 63)) >> 1)];
  v6 = (a1 + 24 * a3);
  if (a3 - a2 < 1024)
  {
    v24 = &v4[3 * ((v3 + (v3 >> 63)) >> 1)];
    v25 = (a1 + 24 * a3);
    v11 = (a1 + 24 * a2);
  }

  else
  {
    v7 = v3 >> 3;
    v8 = &v4[3 * (v3 >> 3)];
    v9 = *v4;
    v10 = *v8;
    v11 = (a1 + 24 * a2);
    if (*v4 != *v8)
    {
      v11 = &v4[6 * v7];
      v12 = *v11;
      if (v9 >= *v11)
      {
        v13 = &v4[6 * v7];
      }

      else
      {
        v13 = (a1 + 24 * a2);
      }

      if (v10 > v12)
      {
        v13 = v8;
      }

      if (v9 >= v12)
      {
        v14 = (a1 + 24 * a2);
      }

      else
      {
        v14 = &v4[6 * v7];
      }

      if (v10 >= v12)
      {
        v8 = v14;
      }

      if (v9 >= v10)
      {
        v8 = v13;
      }

      if (v12 != v9 && v12 != v10)
      {
        v11 = v8;
      }
    }

    v16 = 2 * v7;
    v17 = -v7;
    v18 = &v5[-3 * v7];
    v19 = *v18;
    v20 = *v5;
    if (*v18 == *v5)
    {
      v24 = &v5[-3 * v7];
    }

    else
    {
      v21 = &v5[3 * v7];
      v22 = *v21;
      v23 = *v21 == v19 || v22 == v20;
      v24 = &v5[3 * v7];
      if (!v23)
      {
        v24 = v5;
        if (v19 >= v20)
        {
          if (v20 <= v22)
          {
            if (v19 >= v22)
            {
              v24 = v21;
            }

            else
            {
              v24 = v18;
            }
          }
        }

        else if (v20 >= v22)
        {
          if (v19 >= v22)
          {
            v24 = v18;
          }

          else
          {
            v24 = v21;
          }
        }
      }
    }

    v25 = &v6[-3 * v16];
    v26 = &v6[3 * v17];
    v27 = *v25;
    v28 = *v26;
    if (*v25 != *v26)
    {
      v29 = *v6;
      if (v27 >= *v6)
      {
        v30 = (a1 + 24 * a3);
      }

      else
      {
        v30 = v25;
      }

      if (v28 > v29)
      {
        v30 = v26;
      }

      if (v27 < v29)
      {
        v25 = (a1 + 24 * a3);
      }

      if (v28 < v29)
      {
        v25 = v26;
      }

      if (v27 >= v28)
      {
        v25 = v30;
      }

      if (v29 == v27 || v29 == v28)
      {
        v25 = (a1 + 24 * a3);
      }
    }
  }

  v32 = *v11;
  v33 = *v24;
  if (*v11 == *v24)
  {
    v24 = v11;
  }

  else
  {
    v34 = *v25;
    if (*v25 == v32 || v34 == v33)
    {
      v24 = v25;
    }

    else if (v32 >= v33)
    {
      if (v33 <= v34)
      {
        if (v32 >= v34)
        {
          v24 = v25;
        }

        else
        {
          v24 = v11;
        }
      }
    }

    else if (v33 >= v34)
    {
      if (v32 >= v34)
      {
        v24 = v11;
      }

      else
      {
        v24 = v25;
      }
    }
  }

  v36 = *v24;
  v51 = *(v24 + 1);
  v37 = *v6;
  v24[2] = v6[2];
  *v24 = v37;
  *v6 = v36;
  *(v6 + 1) = v51;
  v38 = *v4;
  v50 = *(v4 + 1);
  v39 = a3 - a2;
  if (a3 > a2)
  {
    v40 = (a1 + 24 * a2 + 32);
    do
    {
      v41 = *(v40 - 1);
      v49 = v50;
      v50 = *v40;
      if (v38 <= v36)
      {
        v42 = (a1 + 24 * a2);
        v43 = *v42;
        *(v40 - 2) = *(v42 + 2);
        *(v40 - 2) = v43;
        *v42 = v38;
        *(v42 + 8) = v49;
        ++a2;
      }

      v40 = (v40 + 24);
      v38 = v41;
      --v39;
    }

    while (v39);
  }

  v44 = (a1 + 24 * a2);
  v45 = *(v44 + 2);
  v46 = *v44;
  v47 = v6[2];
  *v44 = *v6;
  *(v44 + 2) = v47;
  *v6 = v46;
  v6[2] = v45;
  return a2;
}

void _qsort_big_PositionOffsetWithMeta_t(void *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v35 = *(a1 + 6);
  v36 = *a1;
  v6 = *(a1 + 14);
  v34 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v10 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v12 = getSize_memSize;
      if (!getSize_memSize)
      {
        v41 = 0u;
        v42 = 0u;
        *host_info_out = 0u;
        v13 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v14 = host_info(v13, 1, host_info_out, &host_info_outCnt);
        if (v14)
        {
          mach_error("flushsize", v14);
          exit(1);
        }

        v12 = *(&v42 + 1);
        getSize_memSize = *(&v42 + 1);
      }

      v15 = 3 * v12 / 5uLL;
      v16 = v3;
      if (24 * v10 > v15)
      {
        v16 = dispatch_group_create();
      }

      if (v10 <= v35 || 24 * v10 >= v15)
      {
        v19 = _partition_PositionOffsetWithMeta_t(v36, v1, v2);
      }

      else
      {
        v17 = qos_class_self();
        global_queue = dispatch_get_global_queue(v17, 2uLL);
        v19 = _big_partition_PositionOffsetWithMeta_t(v36, v1, v2, global_queue, v6);
      }

      v20 = v19;
      v21 = v19 - v1;
      if (v19 < v1)
      {
        v31 = __si_assert_copy_extra_332();
        v32 = v31;
        v33 = "";
        if (v31)
        {
          v33 = v31;
        }

        __message_assert(v31, "OQueue.c", 17, "q>=left", v33, v38);
        free(v32);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v22 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v22)
      {
        v22 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v22 + 4) = i;
      *(v22 + 5) = v5;
      *(v22 + 6) = v35;
      v23 = v2 - v20;
      if (v21 <= v2 - v20)
      {
        v24 = v20 - 1;
      }

      else
      {
        v23 = v20 - 1 - v1;
        v24 = v2;
      }

      if (v21 > v2 - v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v1;
      }

      if (v21 > v2 - v20)
      {
        v2 = v20 - 1;
      }

      else
      {
        v1 = v20;
      }

      *v22 = v36;
      *(v22 + 1) = v25;
      v26 = (((v23 + 1) * v6) / (v24 - v25 + 1));
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      if (v6 >= v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v22[14] = v6 - v28;
      v22[15] = v34;
      *(v22 + 2) = v24;
      *(v22 + 3) = v16;
      if (v16 == v3)
      {
        if (v6 >= v26)
        {
          v6 = v27;
        }

        v8 = qos_class_self();
        v9 = dispatch_get_global_queue(v8, 2uLL);
        dispatch_group_async_f(v16, v9, v22, _qsort_big_PositionOffsetWithMeta_t);
      }

      else
      {
        v22[14] = v6;
        _qsort_big_PositionOffsetWithMeta_t(v22);
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v16);
        v29 = qos_class_self();
        v30 = dispatch_get_global_queue(v29, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v38[0] = ___qsort_big_PositionOffsetWithMeta_t_block_invoke;
        v38[1] = &__block_descriptor_tmp_33_4156;
        v38[2] = v22;
        dispatch_async(v30, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_PositionOffsetWithMeta_t(v36, v1, v2);
  }
}

uint64_t _big_partition_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 24 * a2);
  v10 = &v9[3 * ((v8 + (v8 >> 63)) >> 1)];
  v11 = (a1 + 24 * a3);
  if (v7 < 64)
  {
    v28 = &v9[3 * ((v8 + (v8 >> 63)) >> 1)];
    v16 = v9;
  }

  else
  {
    v12 = v8 >> 3;
    v13 = &v9[3 * (v8 >> 3)];
    v14 = *v9;
    v15 = *v13;
    v16 = v9;
    if (*v9 != *v13)
    {
      v16 = &v9[6 * v12];
      v17 = *v16;
      if (*v16 != v14 && v17 != v15)
      {
        if (v14 >= v17)
        {
          v19 = &v9[6 * v12];
        }

        else
        {
          v19 = v9;
        }

        if (v15 > v17)
        {
          v19 = &v9[3 * (v8 >> 3)];
        }

        if (v14 >= v17)
        {
          v16 = v9;
        }

        if (v15 < v17)
        {
          v16 = &v9[3 * (v8 >> 3)];
        }

        if (v14 >= v15)
        {
          v16 = v19;
        }
      }
    }

    v20 = 2 * v12;
    v21 = -v12;
    v22 = &v10[-3 * v12];
    v23 = *v22;
    v24 = *v10;
    if (*v22 == *v10)
    {
      v28 = &v10[-3 * v12];
    }

    else
    {
      v25 = &v10[3 * v12];
      v26 = *v25;
      v27 = *v25 == v23 || v26 == v24;
      v28 = &v10[3 * v12];
      if (!v27)
      {
        v28 = &v9[3 * ((v8 + (v8 >> 63)) >> 1)];
        if (v23 >= v24)
        {
          if (v24 <= v26)
          {
            if (v23 >= v26)
            {
              v28 = v25;
            }

            else
            {
              v28 = v22;
            }
          }
        }

        else if (v24 >= v26)
        {
          if (v23 >= v26)
          {
            v28 = v22;
          }

          else
          {
            v28 = v25;
          }
        }
      }
    }

    v29 = &v11[-3 * v20];
    v30 = &v11[3 * v21];
    v31 = *v29;
    v32 = *v30;
    if (*v29 == *v30)
    {
      v11 = v29;
    }

    else
    {
      v33 = *v11;
      if (v31 >= *v11)
      {
        v34 = v11;
      }

      else
      {
        v34 = v29;
      }

      if (v32 > v33)
      {
        v34 = v30;
      }

      if (v31 < v33)
      {
        v29 = v11;
      }

      if (v32 >= v33)
      {
        v30 = v29;
      }

      if (v31 >= v32)
      {
        v30 = v34;
      }

      if (v33 != v31 && v33 != v32)
      {
        v11 = v30;
      }
    }
  }

  v36 = *v16;
  v37 = *v28;
  if (*v16 == *v28)
  {
    v28 = v16;
  }

  else
  {
    v38 = *v11;
    if (*v11 == v36 || v38 == v37)
    {
      v28 = v11;
    }

    else if (v36 >= v37)
    {
      if (v37 <= v38)
      {
        if (v36 >= v38)
        {
          v28 = v11;
        }

        else
        {
          v28 = v16;
        }
      }
    }

    else if (v37 >= v38)
    {
      if (v36 >= v38)
      {
        v28 = v16;
      }

      else
      {
        v28 = v11;
      }
    }
  }

  return parallel_partition_PositionOffsetWithMeta_t(v9, v8, *v28, a4, a5) + a2;
}

uint64_t parallel_partition_PositionOffsetWithMeta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - v11;
  bzero(v18 - v11, v10);
  v13 = (a2 / 0x4000) << 13;
  context[1] = v13;
  context[2] = a2;
  v14 = a2 - v13;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v12;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v15 = v13 + 0x2000;
  if (v14 > v13 + 0x2000)
  {
    v15 = a2 - v13;
  }

  context[3] = v14 + ((v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (24 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 24 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_PositionOffsetWithMeta_t);
  result = sequential_fixup_PositionOffsetWithMeta_t(context, a2, v5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sequential_fixup_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = a3 - 1;
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_111;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (v9 >= 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_111:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 >= v8)
    {
      goto LABEL_46;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v13 + 24 * *(v7 + 8 * v9);
    v15 = v13 + 24 * *(v7 + 8 * v8);
    while (1)
    {
      if (v11 < 0x2000)
      {
        v16 = (v14 + 24 * v11);
        while (1)
        {
          v17 = *v16;
          v16 += 3;
          if (v17 > v12)
          {
            break;
          }

          if (++v11 == 0x2000)
          {
            v18 = 0x2000;
            if (v10 < 0x2000)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }
      }

      v18 = v11;
      if (v10 < 0x2000)
      {
LABEL_20:
        v19 = (v15 + 24 * v10);
        while (1)
        {
          v20 = *v19;
          v19 += 3;
          if (v20 < v12)
          {
            break;
          }

          if (++v10 == 0x2000)
          {
            v11 = v18;
            goto LABEL_28;
          }
        }
      }

LABEL_24:
      v21 = v10;
      if (v18 == 0x2000 || v10 == 0x2000)
      {
        break;
      }

      v22 = (v15 + 24 * v10);
      v23 = *(v22 + 2);
      v24 = *v22;
      v25 = (v14 + 24 * v18);
      v26 = *(v25 + 2);
      *v22 = *v25;
      *(v22 + 2) = v26;
      *v25 = v24;
      *(v25 + 2) = v23;
      v11 = v18 + 1;
      v10 = v21 + 1;
      if (v18 > 8190 || v21 >= 0x1FFF)
      {
        goto LABEL_28;
      }
    }

    v11 = v18;
LABEL_28:
    if (v10 == 0x2000 && v11 == 0x2000)
    {
      v28 = 2;
    }

    else
    {
      v28 = v11 != 0x2000;
    }

    v7 = *(a1 + 64);
    if ((v28 & 1) == 0)
    {
      v29 = *(v7 + 8 * v9);
      if ((v29 & 0x8000000000000000) == 0 && v29 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      v11 = 0;
      ++v9;
      if ((v28 - 1) > 1)
      {
        continue;
      }
    }

    v30 = *(v7 + 8 * v8);
    v31 = v30 >= a2 || v30 < a2 - *(a1 + 40);
    if (!v31)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    v10 = 0;
    --v8;
  }

  while (v9 < v8);
LABEL_46:
  v33 = *(a1 + 32);
  v32 = *(a1 + 40);
  v34 = malloc_type_malloc(0x30000uLL, 0x10800401842DC26uLL);
  if (a3 < 1)
  {
    v52 = *a1;
    v51 = *(a1 + 16) - 1;
  }

  else
  {
    v35 = 0;
    v36 = ~v32 + a2;
    v37 = a3;
    v38 = *(a1 + 64);
    v39 = 8 * a3;
    do
    {
      v40 = v38[v35];
      if (v40 != -1 && v36 <= v40)
      {
        break;
      }

      if (v40 != -1)
      {
        if (v33 <= v40)
        {
          break;
        }

        v42 = *(a1 + 32);
        if (v42 > v40)
        {
          v43 = 0;
          do
          {
            if (v38[v43 / 8] == v42)
            {
              v42 += 0x2000;
              *(a1 + 32) = v42;
            }

            v43 += 8;
          }

          while (v39 != v43);
          if (v42 >= *a1)
          {
            break;
          }

          memcpy(v34, (*(a1 + 48) + 24 * v38[v35]), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v35)), (*(a1 + 48) + 24 * *(a1 + 32)), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(a1 + 32)), v34, 0x30000uLL);
          v44 = *(a1 + 32);
          v38 = *(a1 + 64);
          v38[v35] = v44;
          *(a1 + 32) = v44 + 0x2000;
        }
      }

      ++v35;
    }

    while (v35 != v37);
    v45 = v37;
    do
    {
      v46 = v45 - 1;
      v47 = v38[v45 - 1];
      if (v33 > v47)
      {
        break;
      }

      if (v47 != -1)
      {
        if (v36 > v47)
        {
          break;
        }

        v48 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v48;
        v49 = v37 - 1;
        do
        {
          if (v38[v49] == a2 - v48)
          {
            v48 += 0x2000;
            *(a1 + 40) = v48;
          }

          v50 = v49-- + 1;
        }

        while (v50 > 1);
        if ((a2 - v48) < *(a1 + 16))
        {
          break;
        }

        memcpy(v34, (*(a1 + 48) + 24 * v38[v46]), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v46)), (*(a1 + 48) + 24 * (a2 - *(a1 + 40))), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * (a2 - *(a1 + 40))), v34, 0x30000uLL);
        v38 = *(a1 + 64);
        v38[v46] = a2 - *(a1 + 40);
      }

      v31 = v45-- <= 1;
    }

    while (!v31);
    v51 = *(a1 + 16) - 1;
    v52 = *a1;
    do
    {
      v54 = *v38++;
      v53 = v54;
      if (v54 != -1)
      {
        if (v53 < v52)
        {
          v52 = v53;
        }

        v55 = v53 + 0x2000;
        v56 = v53 + 0x1FFF;
        if (v55 > v51)
        {
          v51 = v56;
        }

        if (v51 >= a2)
        {
          v57 = __si_assert_copy_extra_332();
          v58 = v57;
          v59 = "";
          if (v57)
          {
            v59 = v57;
          }

          __message_assert(v57, "OQueue.c", 17, "right < count", v59);
          free(v58);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v37;
    }

    while (v37);
  }

  free(v34);
  if (v52 >= v51)
  {
    v60 = v52;
  }

  else
  {
    v60 = v52;
    do
    {
      v62 = *(a1 + 48);
      v61 = *(a1 + 56);
      v63 = (v62 + 24 * v52);
      while (*v63 < v61)
      {
        ++v60;
        v63 += 3;
        if (v60 >= v51)
        {
          if (v51 <= v52 + 1)
          {
            v60 = v52 + 1;
          }

          else
          {
            v60 = v51;
          }

          goto LABEL_105;
        }
      }

      if (v60 < v51)
      {
        v64 = (v62 + 24 * v51);
        while (*v64 > v61)
        {
          --v51;
          v64 -= 3;
          if (v60 >= v51)
          {
            goto LABEL_105;
          }
        }

        v65 = v64[2];
        v66 = *v64;
        v67 = v63[2];
        *v64 = *v63;
        v64[2] = v67;
        v68 = *(a1 + 48) + 24 * v60;
        *v68 = v66;
        *(v68 + 16) = v65;
        ++v60;
        --v51;
      }

      v52 = v60;
    }

    while (v60 < v51);
  }

LABEL_105:
  if (*(*(a1 + 48) + 24 * v60) >= *(a1 + 56))
  {
    return v60;
  }

  else
  {
    return v60 + 1;
  }
}