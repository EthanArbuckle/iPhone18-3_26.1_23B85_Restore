void DDSourceMatchCacheFree(uint64_t *a1)
{
  if (!a1)
  {
    return;
  }

  if (a1[1] > 0)
  {
    v2 = 14;
    goto LABEL_6;
  }

  v2 = *a1;
  if ((*a1 & 0x8000000000000000) == 0)
  {
LABEL_6:
    v3 = v2 + 1;
    v4 = (a1 + 5);
    do
    {
      if (*v4)
      {
        free(*v4);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

void DDCachingStringTokenizerDestroy(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (!*(a1 + 121))
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = a1[9];
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 16;
      do
      {
        v7 = *(a1[6] + v6);
        if (v7)
        {
          free(v7);
          v4 = a1[9];
        }

        ++v5;
        v6 += 32;
      }

      while (v4 > v5);
      v3 = a1[6];
    }

    goto LABEL_13;
  }

  if (v3)
  {
LABEL_13:
    free(v3);
  }

LABEL_14:
  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
}

void DDTokenCacheDestroy(void **a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = a1[4][i];
        if (v4)
        {
          if (*(v4 + 6) != 1)
          {
            free(*(v4 + 8));
          }

          free(v4);
          v2 = a1[6];
        }
      }
    }

    free(a1[4]);
    a1[4] = 0;
    if (*a1)
    {
      DDCachingStringTokenizerDestroy(*a1);
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t DDLookupTableRefLookupCurrentWord(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v131 = *MEMORY[0x1E69E9840];
  if ((a3 ^ a5) >> 16)
  {
    goto LABEL_177;
  }

  v8 = a2;
  v9 = 24;
  if (!a8)
  {
    v9 = 16;
  }

  v10 = *(a2 + v9);
  if (!v10)
  {
    goto LABEL_177;
  }

  v122 = v10;
  v11 = v10[1];
  if (!v11 || (*v11 & 0x7FF) == 0)
  {
    goto LABEL_177;
  }

  v14 = a5;
  v16 = a3;
  v123 = *(*(a2 + 32) + 2);
  if (!*(a2 + 112))
  {
    v18 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
    *(v8 + 120) = v18;
    *(v8 + 112) = CFStringCreateMutableWithExternalCharactersNoCopy(0, v18, 64, 64, *MEMORY[0x1E695E498]);
  }

  if (DDLookupTableRefLookupCurrentWord_sOnce != -1)
  {
    dispatch_once(&DDLookupTableRefLookupCurrentWord_sOnce, &__block_literal_global_514);
  }

  result = 0;
  if (a7 >= 1)
  {
    v20 = v122[1];
    if (v20)
    {
      v117 = a6;
      v120 = v14;
      v21 = (a4 - (v16 & 0xFFFFFFFF00000000)) >> 32;
      if ((v21 - 1) <= 0x30)
      {
        v22 = 0;
        result = 0;
        v23 = 4294901760;
        v118 = a1;
        v119 = v8;
        while (1)
        {
          v124 = result;
          v121 = a4;
          v24 = v16 >> 32;
          v25 = v16 >> 16;
          v132.location = v16 >> 32;
          v132.length = v21;
          CFStringGetCharacters(*(*(*(a1 + 56) + 16) + 48 * v25), v132, *(v8 + 120));
          CFStringSetExternalCharactersNoCopy(*(v8 + 112), *(v8 + 120), v21, 64);
          CFStringFold(*(v8 + 112), 0x81uLL, 0);
          v128 = 0;
          v26 = *(v8 + 120);
          if (unorm2_quickCheck() != 1 || v128 >= 1)
          {
            CFStringNormalize(*(v8 + 112), kCFStringNormalizationFormKC);
          }

          if ((~v23 & 0xFFFF0000) == 0)
          {
LABEL_21:
            Length = CFStringGetLength(*(v8 + 112));
            v29 = *(v8 + 120);
            v30 = v122;
            goto LABEL_47;
          }

          v31 = v23 >> 16;
          if (v31 >= v25)
          {
            if (v31 > v25)
            {
              goto LABEL_21;
            }

            Length = CFStringGetLength(*(v8 + 112));
            v29 = *(v8 + 120);
            if (SHIDWORD(v23) >= SHIDWORD(v16))
            {
              v30 = v122;
              goto LABEL_47;
            }
          }

          else
          {
            Length = CFStringGetLength(*(v8 + 112));
            v29 = *(v8 + 120);
          }

          v30 = v122;
          if ((*v20 & 0x800) == 0)
          {
            break;
          }

          v39 = v20 + 1;
          v40 = v20 + 2 * v22 + 4;
          v41 = *(v40 + 4);
          if (!*(v40 + 4))
          {
            goto LABEL_42;
          }

          if (v41 != 32)
          {
            goto LABEL_40;
          }

          v42 = *(v40 + 6);
          v41 = 1;
          v43 = v20;
          if (!v42)
          {
            goto LABEL_42;
          }

LABEL_43:
          v44 = v41 + v22;
          if (v43 == v20)
          {
            v22 = v44;
          }

          else
          {
            v22 = 0;
          }

          v20 = v43;
LABEL_47:
          v45 = 0;
          if (v20 && Length >= 1)
          {
            v46 = 0;
            v47 = 0;
            v45 = 0;
            v48 = v20;
            while (1)
            {
              v49 = &v29[v46];
              if ((*v48 & 0x800) != 0)
              {
                v60 = Length - v46;
                if (v60 > 0)
                {
                  v61 = 0;
                  v62 = v48 + 1;
                  v63 = v22 + 2;
                  v64 = v48 + 2 * v22 + 8;
                  while (*(v64 + 2 * v61))
                  {
                    v65 = v49[v61];
                    if (v65 == 45)
                    {
                      v66 = 32;
                    }

                    else
                    {
                      v66 = v49[v61];
                    }

                    if (v65 == 8217)
                    {
                      v67 = 39;
                    }

                    else
                    {
                      v67 = v66;
                    }

                    if (v67 != *(v64 + 2 * v61))
                    {
                      goto LABEL_64;
                    }

                    if (v60 == ++v61)
                    {
                      goto LABEL_78;
                    }
                  }

                  v60 = v61;
                  goto LABEL_82;
                }

                v60 = 0;
                v63 = v22 + 2;
LABEL_78:
                v62 = v48 + 1;
                if (!*(v48 + v60 + v63 + 2))
                {
                  goto LABEL_82;
                }

                v20 = v48;
              }

              else
              {
                v50 = *v49;
                if (v50 == 45)
                {
                  v51 = 32;
                }

                else
                {
                  v51 = *v49;
                }

                if (v50 == 8217)
                {
                  v52 = 39;
                }

                else
                {
                  v52 = v51;
                }

                v53 = *v48 & 0x7FF;
                if (v53)
                {
                  v54 = 0;
                  v55 = v48 + 1;
                  v56 = *v48 & 0x7FFLL;
                  while (1)
                  {
                    v57 = v54 + (v56 >> 1);
                    v58 = *(v55 + v57);
                    if (v58 == v52)
                    {
                      break;
                    }

                    v59 = v56 >> 1;
                    v56 += v54 + ~v57;
                    if (v58 >= v52)
                    {
                      v56 = v59;
                    }

                    else
                    {
                      v54 = v57 + 1;
                    }

                    if (v56 <= 0)
                    {
                      goto LABEL_64;
                    }
                  }

                  v62 = &v55[((v53 + 1) >> 1) + v57];
                  v60 = 1;
LABEL_82:
                  v20 = (v30[2] + *v62);
                  goto LABEL_83;
                }

LABEL_64:
                v60 = 0;
                v20 = 0;
              }

LABEL_83:
              v46 += v60;
              if (v20)
              {
                v45 = v20;
                v47 = v46;
              }

              v68 = v60 + v22;
              if (v20 == v48)
              {
                v22 = v68;
              }

              else
              {
                v22 = 0;
              }

              if (v20)
              {
                v48 = v20;
                if (v46 < Length)
                {
                  continue;
                }
              }

              goto LABEL_92;
            }
          }

          v47 = 0;
LABEL_92:
          if (v47 == ((Length << 32) - 0x100000000) >> 32 && (v29[v47] & 0xFFFE) == 0x200E)
          {
            v47 = Length;
          }

          if (!v45)
          {
            result = v124;
            goto LABEL_178;
          }

          if (v47 < 1)
          {
            a1 = v118;
            v8 = v119;
            result = v124;
            v69 = a7;
            goto LABEL_160;
          }

          if (v21 == Length)
          {
            v69 = a7;
          }

          else
          {
            v115 = v16 >> 32;
            v133.location = v16 >> 32;
            v133.length = v21;
            CFStringGetCharacters(*(*(*(v118 + 56) + 16) + 48 * v25), v133, v29);
            CFStringSetExternalCharactersNoCopy(*(v119 + 112), *(v119 + 120), v21, 64);
            memset(&iter, 0, sizeof(iter));
            v116 = v21;
            uiter_setString(&iter, *(v119 + 120), v21);
            v70 = 0;
            v71 = 0;
            pErrorCode = U_ZERO_ERROR;
            v72 = 24;
            v73 = v130;
            while (1)
            {
              v74 = unorm_next();
              if (v74 < 1)
              {
                break;
              }

              v75 = v74;
              v76 = pErrorCode;
              if (pErrorCode != U_BUFFER_OVERFLOW_ERROR || v74 <= v72)
              {
                v78 = v74;
                v75 = v72;
              }

              else
              {
                if (v130 != v73)
                {
                  free(v73);
                }

                v73 = malloc_type_malloc((2 * v75), 0x1000040BDFB0063uLL);
                v78 = v75;
                if (v73)
                {
                  iter.index = v71;
                  pErrorCode = U_ZERO_ERROR;
                  v78 = unorm_next();
                }

                v76 = pErrorCode;
              }

              if (v76 > U_ZERO_ERROR)
              {
                break;
              }

              v79 = u_strFoldCase(dest, 24, v73, v78, 0, &pErrorCode);
              if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
              {
                break;
              }

              v70 += v79;
              memset(&v125, 0, sizeof(v125));
              uiter_setString(&v125, dest, v79);
              while (1)
              {
                v80 = uiter_next32(&v125);
                if (v80 == -1)
                {
                  break;
                }

                v81 = v80;
                if (u_charType(v80) == 6)
                {
                  v70 -= u_getIntPropertyValue(v81, UCHAR_DIACRITIC) != 0;
                }
              }

              v71 = (iter.getIndex)(&iter, 1);
              if (v47 <= v70)
              {
                if (v47 >= v70)
                {
                  v47 = v71;
                }

                else
                {
                  v47 = 0;
                }

                break;
              }

              v72 = v75;
            }

            v69 = a7;
            LODWORD(v24) = v115;
            if (v130 != v73 && v73)
            {
              free(v73);
            }

            if (v47 > v116)
            {
              if (DDLookupTableRefLookupCurrentWord_sOnce_11 != -1)
              {
                dispatch_once(&DDLookupTableRefLookupCurrentWord_sOnce_11, &__block_literal_global_14);
              }

LABEL_177:
              result = 0;
              goto LABEL_178;
            }

            v30 = v122;
            if (v47 < 1)
            {
              a1 = v118;
              v8 = v119;
              result = v124;
              goto LABEL_160;
            }
          }

          v82 = v120 & 0xFFFF0000 | ((v47 + v24) << 32);
          v83 = (v117 + 32 * v124);
          v84 = v69 - v124;
          v85 = *v45;
          if ((v85 & 0x1000) != 0)
          {
            v88 = 0;
            if (v84 < 1)
            {
              a1 = v118;
              v8 = v119;
            }

            else
            {
              a1 = v118;
              v8 = v119;
              if (v85 >= 0x2000)
              {
                *v83 = v82 | (v85 >> 13);
                v83[1] = 0;
                v83[2] = 0;
                v83[3] = 0;
                v88 = 1;
              }
            }
          }

          else
          {
            v86 = v85 >> 13;
            if (v30[9])
            {
              v87 = (v30[3] + 2 * v86);
            }

            else
            {
              v87 = 0;
            }

            a1 = v118;
            v8 = v119;
            v89 = v30[10];
            if (v89)
            {
              v89 = v30[4] + 4 * v86;
            }

            if (v30[11])
            {
              v90 = v30[5] + 4 * v86;
            }

            else
            {
              v90 = 0;
            }

            v88 = 0;
            v91 = *v87;
            v92 = __OFSUB__(v91, 1);
            v93 = v91 - 1;
            if (v93 < 0 == v92)
            {
              v94 = v84 - 1;
              if (v84 >= 1)
              {
                v95 = 0;
                v96 = v93;
                if (v94 < v93)
                {
                  v96 = v94;
                }

                v97 = (v90 + 4);
                v98 = (v89 + 4);
                v99 = (v87 + 1);
                do
                {
                  if (v90 && (v100 = *v97, v100) && v30[14] > v100)
                  {
                    v101 = v30[8] + v100;
                  }

                  else
                  {
                    v101 = 0;
                  }

                  v102 = *v99;
                  if (v89 | v101)
                  {
                    v105 = *v98;
                    v106 = &v83[v95 / 8];
                    *(v106 + 2) = *v98;
                    *v106 = v82 | v102;
                    if (v123 >= 7)
                    {
                      v107 = (v105 << 22) & 0x3000000 | ((v105 & 3) << 26) | 0x10000;
                    }

                    else
                    {
                      v107 = 0x10000;
                    }

                    *(v106 + 3) = v107;
                    v106[2] = 0;
                    v106[3] = v101;
                  }

                  else
                  {
                    v103 = v82 | v102;
                    v104 = &v83[v95 / 8];
                    *v104 = v103;
                    v104[1] = 0;
                    v104[2] = 0;
                    v104[3] = 0;
                  }

                  v95 += 32;
                  ++v97;
                  ++v98;
                  ++v99;
                }

                while (32 * v96 + 32 != v95);
                v88 = v96 + 1;
              }
            }
          }

          result = v88 + v124;
LABEL_160:
          if (!v20)
          {
            goto LABEL_178;
          }

          v108 = result;
          v23 = v121;
          if ((~DDTokenCacheGetTokenOrSubtokenAfterPosition(*(a1 + 40), *(a1 + 56), v121) & 0xFFFF0000) == 0)
          {
            result = v108;
            goto LABEL_178;
          }

          a4 = v109;
          v110 = v121 >> 16;
          result = v108;
          if (v110 != v109 >> 16)
          {
            v111 = *(*(a1 + 56) + 16);
            v112 = *(v111 + 48 * v110 + 24);
            if (v112 == v121 >> 32)
            {
              v113 = v110 + 1;
              v16 = v113 << 16;
              if (v113 != v109 >> 16)
              {
                a4 = v16 | (*(v111 + 48 * v113 + 24) << 32);
              }

              goto LABEL_168;
            }

            a4 = (WORD1(v121) << 16) | (v112 << 32);
          }

          v16 = v121;
LABEL_168:
          if (v108 < v69)
          {
            v21 = (a4 - (v16 & 0xFFFFFFFF00000000)) >> 32;
            v120 = v16;
            if ((v21 - 1) < 0x31)
            {
              continue;
            }
          }

          goto LABEL_178;
        }

        v32 = *v20 & 0x7FF;
        if (v32)
        {
          v33 = 0;
          v34 = v20 + 1;
          v35 = *v20 & 0x7FFLL;
          while (1)
          {
            v36 = v33 + (v35 >> 1);
            v37 = *(v34 + v36);
            if (v37 == 32)
            {
              break;
            }

            v38 = v35 >> 1;
            v35 += v33 + ~v36;
            if (v37 >= 0x20)
            {
              v35 = v38;
            }

            else
            {
              v33 = v36 + 1;
            }

            if (v35 <= 0)
            {
              goto LABEL_40;
            }
          }

          v39 = &v34[((v32 + 1) >> 1) + v36];
          v41 = 1;
LABEL_42:
          v43 = (v122[2] + *v39);
          goto LABEL_43;
        }

LABEL_40:
        v41 = 0;
        v43 = 0;
        goto LABEL_43;
      }
    }
  }

LABEL_178:
  v114 = *MEMORY[0x1E69E9840];
  return result;
}

void DDResultSetContent(uint64_t *a1, void *a2)
{
  a1[9] = DDScanQueryCopyRange(a2, a1[2], a1[3]);
  a1[4] = DDScanQueryComputeCFRangeForQueryRange(a2, a1[2], a1[3]);
  a1[5] = v4;
  v5 = a1[7];
  if (v5)
  {
    v6.length = CFArrayGetCount(v5);
    v6.location = 0;

    CFArrayApplyFunction(v5, v6, DDResultSetContent, a2);
  }
}

void DDTokenCacheMoveStreamOffset(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48 * (a3 >> 16) + 32) + (a3 >> 32) - *(a2 + 48 * (a3 >> 16) + 16);
  if (a3 >= 0x10000 || a3 >> 32 > *(a2 + 16))
  {
    --v5;
  }

  v39 = v3;
  v40 = v4;
  v6 = a1[2];
  v7 = v5 - v6;
  if (v5 - v6 < 0)
  {
    if ((DDTokenCacheMoveStreamOffset_alreadyLogged & 1) == 0)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v34 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BCFDD000, v34, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", buf, 2u);
      }

      DDLogAssertionFailure("delta >= 0", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v35, 407, @"Bad shift in DDTokenCacheMoveStreamOffset, aborting");
      DDTokenCacheMoveStreamOffset_alreadyLogged = 1;
    }
  }

  else
  {
    if (!v7)
    {
      return;
    }

    v8 = a1[5];
    if (v7 >= v8)
    {
      v21 = a1[5];
      if (v8 < 1)
      {
LABEL_29:
        v30 = a1[6];
        v31 = a1[7] + v7;
        a1[7] = v31;
        v32 = v31 < v30;
        v33 = v31 - v30;
        if (!v32)
        {
          a1[7] = v33;
        }

        a1[5] = v21 - v8;
        a1[2] += v7;
        return;
      }
    }

    else
    {
      v10 = a1[6];
      v9 = a1[7];
      if (v9 + v7 >= v10)
      {
        v11 = a1[6];
      }

      else
      {
        v11 = 0;
      }

      v12 = v9 + v7 - v11;
      v13 = a1[4];
      v14 = *(v13 + 8 * v12);
      v15 = *v14;
      if ((*v14 & 0x80000000) == 0 && v15 < v5)
      {
        v16 = v15 - v6;
        if (v15 < v6)
        {
          v16 = 0;
        }

        v17 = v16 + v9;
        if (v17 >= v10)
        {
          v18 = a1[6];
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v13 + 8 * (v17 - v18));
        if (*(v19 + 6) == 1)
        {
          v20 = *(v14 + 1);
          *(v14 + 1) = *(v19 + 8);
          *(v19 + 8) = v20;
        }

        else
        {
          v22 = v14[1];
          v14[1] = *(v19 + 8);
          *(v19 + 8) = v22;
        }

        v23 = *(v14 + 3);
        *(v14 + 3) = *(v19 + 6);
        v24 = *(v19 + 4);
        *(v19 + 6) = v23;
        v25 = *(v14 + 1);
        *(v14 + 2) = v24;
        *(v19 + 4) = v25;
      }

      v8 = v7;
    }

    for (i = 0; i != v8; ++i)
    {
      v28 = a1[6];
      v27 = a1[7];
      if (i + v27 < v28)
      {
        v28 = 0;
      }

      v29 = *(a1[4] + 8 * (i + v27 - v28));
      *v29 = (*(v29 + 6) << 48) | 0xFFFFFFFF;
    }

    v21 = a1[5];
    if (v8 <= v21)
    {
      goto LABEL_29;
    }

    if ((DDTokenCacheMoveStreamOffset_alreadyLogged_3 & 1) == 0)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v36 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BCFDD000, v36, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", buf, 2u);
      }

      DDLogAssertionFailure("maxIndexToClean <= tokenCache->_tokenCacheTableNumberOfItems", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v37, 451, @"Bad shift, delta too big");
      DDTokenCacheMoveStreamOffset_alreadyLogged_3 = 1;
    }
  }
}

uint64_t _tokenEntryAtRealIndex(uint64_t result, uint64_t a2)
{
  if (a2 < 0 || *(result + 72) <= a2)
  {
    return 0;
  }

  v2 = *(result + 48);
  if (!*(result + 121))
  {
    return v2 + 32 * a2;
  }

  v3 = v2 + 16 * a2;
  v4 = *v3 << 32;
  v5 = (*(v3 + 8) + *v3) << 32;
  *result = v4;
  *(result + 8) = v5;
  *(result + 16) = 0;
  *(result + 24) = 256;
  return result;
}

BOOL _DDTriePathForSource(int a1, const char *a2, int a3, int a4, int a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a1 - 1;
  if ((a1 - 1) > 5 || ((0x2Fu >> v6) & 1) == 0)
  {
    goto LABEL_34;
  }

  v10 = a1;
  v11 = off_1E8002088[v6];
  v12 = __stpcpy_chk();
  if ((v10 & 5) == 4)
  {
    snprintf(v12, 0xEuLL, "/%d/", a5);
  }

  else
  {
    strcpy(v12, "/sys/");
  }

  v13 = strlen(a2);
  if (v13 < 1)
  {
    goto LABEL_34;
  }

  if (a4)
  {
    v14 = ".lexicon";
    v15 = ".ddsource";
    goto LABEL_16;
  }

  *__error() = 0;
  if (!mkdir(a2, 0x1C1u))
  {
LABEL_15:
    v14 = ".lexicon.XXXXX";
    v15 = ".ddsource.XXXXX";
LABEL_16:
    if (a3)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    v18 = strlen(v11);
    v19 = strlen(v17);
    v20 = v18 + v13 + v19;
    if (v20 <= 254)
    {
      if (v18 >= 1)
      {
        memcpy(&a2[v13 & 0x7FFFFFFF], v11, v18 & 0x7FFFFFFF);
      }

      if (v19 >= 1)
      {
        memcpy(&a2[v18 + v13], v17, v19 & 0x7FFFFFFF);
      }

      a2 += v20;
      result = 1;
    }

    else
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v21 = DDLogHandle_error_log_handle;
      result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v23 = "basePath is too long";
        v24 = v21;
        v25 = 2;
LABEL_33:
        _os_log_error_impl(&dword_1BCFDD000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
LABEL_34:
        result = 0;
        goto LABEL_35;
      }
    }

    goto LABEL_35;
  }

  if (*__error() == 17)
  {
    chmod(a2, 0x1C1u);
    if (altPath)
    {
      v16 = altPath;
    }

    else
    {
      v16 = "/var/db/datadetectors";
    }

    chmod(v16, 0x1C1u);
    goto LABEL_15;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v26 = DDLogHandle_error_log_handle;
  result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v27 = __error();
    v28 = strerror(*v27);
    *buf = 136315394;
    v31 = a2;
    v32 = 2080;
    v33 = v28;
    v23 = "DD Failed creating folder %s (error: %s)";
    v24 = v26;
    v25 = 22;
    goto LABEL_33;
  }

LABEL_35:
  *a2 = 0;
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DDautommap(const char *a1, void *a2, size_t *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  if (stat(a1, &v17))
  {
    if (*__error() != 2)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v8 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        v9 = __error();
        v10 = strerror(*v9);
        *buf = 136315394;
        v19 = a1;
        v20 = 2080;
        v21 = v10;
        _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Could not stat %s: %s, aborting", buf, 0x16u);
      }
    }

    goto LABEL_13;
  }

  if (*&v17.st_mtimespec == *a4)
  {
    result = 0;
LABEL_14:
    *a2 = 0;
    *a4 = 0;
    a4[1] = 0;
    *a3 = 0;
    goto LABEL_15;
  }

  st_size = v17.st_size;
  if (!v17.st_size || (v13 = open(a1, 0), v13 == -1) || (v14 = v13, v15 = _DDmmap(a1, v13, st_size), close(v14), !v15))
  {
LABEL_13:
    result = 1;
    goto LABEL_14;
  }

  *a2 = v15;
  *a4 = vextq_s8(v17.st_mtimespec, v17.st_mtimespec, 8uLL);
  *a3 = st_size;
  result = 1;
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DDLookupTableRefLookupCurrentWord_block_invoke()
{
  v1 = 0;
  result = MEMORY[0x1BFB353D0](0, "nfkc", 0, &v1);
  DDLookupTableRefLookupCurrentWord_sQuickCheckNormalizerNFKC = result;
  return result;
}

void *DDScannerSetMLSupportedTypes(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[34];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      if (cf)
      {
        result = CFRetain(cf);
      }

      else
      {
        result = 0;
      }

      v3[34] = result;
    }
  }

  return result;
}

CFMutableArrayRef DDScannerSetMockMLResults(uint64_t a1, CFArrayRef theArray)
{
  result = *(a1 + 264);
  if (result != theArray)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theArray)
    {
      result = CFArrayCreateMutableCopy(0, 0, theArray);
    }

    *(a1 + 264) = result;
  }

  return result;
}

uint64_t DDResultGetRangeForURLification(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v9 = 0;
  v2 = _DDGetRelevantResultsForUrlificationRange(a1, &v9);
  if (!v2)
  {
    return -1;
  }

  v3 = v2[4];
  if (v9)
  {
    v4 = v9[5] + v9[4] - v3;
  }

  else
  {
    v5 = v2[5];
  }

  if (DDResultGetCategory(a1) == 4)
  {
    v6 = *(a1 + 64);
    if (v6 && (_typesAreEqual(*(a1 + 64), @"Date") || _typesAreEqual(v6, @"Time") || _typesAreEqual(v6, @"DateTime")))
    {
      v7 = _DDGetRelevantSubResultRangeForResult(a1);
    }

    else
    {
      v7 = -1;
    }

    if (v7 != -1)
    {
      return v7;
    }
  }

  return v3;
}

uint64_t DDResultGetCategory(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (DDResultGetCategory_sOnce != -1)
  {
    dispatch_once(&DDResultGetCategory_sOnce, &__block_literal_global_453);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(a1 + 64);
  if (DDResultGetCategory_sOnce_68 != -1)
  {
    dispatch_once(&DDResultGetCategory_sOnce_68, &__block_literal_global_71);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __DDResultGetCategory_block_invoke_3;
  block[3] = &unk_1E8001F60;
  block[4] = &v7;
  block[5] = v2;
  dispatch_sync(DDResultGetCategory_sQueue, block);
  v3 = *(v8 + 6);
  if (!v3)
  {
    if (_DDResultTypeIsAnyPhoneKind(v2))
    {
      v3 = 2;
    }

    else if (CFEqual(v2, @"FullAddress"))
    {
      v3 = 3;
    }

    else
    {
      if (DDResultGetCategory_sOnce_74 != -1)
      {
        dispatch_once(&DDResultGetCategory_sOnce_74, &__block_literal_global_78);
      }

      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __DDResultGetCategory_block_invoke_5;
      v5[3] = &unk_1E8001FA8;
      v5[4] = &v7;
      v5[5] = v2;
      dispatch_sync(DDResultGetCategory_sQueue_75, v5);
      v3 = *(v8 + 6);
      if (!v3)
      {
        if (CFEqual(v2, @"TrackingNumber") || CFEqual(v2, @"ItemNumber") || CFEqual(v2, @"FlightInformation") || CFEqual(v2, @"Parsec") || CFEqual(v2, @"AuthCode") || CFEqual(v2, @"PhysicalAmount") || CFEqual(v2, @"GameCenter") || CFEqual(v2, @"DomesticIdentifier") || CFEqual(v2, @"UPIIdentifier") || CFEqual(v2, @"evts"))
        {
          v3 = 5;
        }

        else if (CFEqual(v2, @"Money"))
        {
          v3 = 6;
        }

        else if (CFEqual(v2, @"Contact"))
        {
          v3 = 7;
        }

        else
        {
          v3 = 0;
        }
      }
    }
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __DDResultGetCategory_block_invoke_3(uint64_t a1)
{
  result = CFSetContainsValue(DDResultGetCategory_urlSet, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void _DDResultCFFinalize(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[11];
  if (v6)
  {

    CFRelease(v6);
  }
}

void DDResultDisableURLSchemeChecking()
{
  if ((_schemeCheckingDisabled & 1) == 0)
  {
    _schemeCheckingDisabled = 1;
  }
}

const __CFString *DDGetDataValueForMatchingTagToData(uint64_t a1, const __CFString **a2, int a3, _BYTE *a4)
{
  if (a2)
  {
    v7 = a2[10];
    if (!v7)
    {
      v7 = a2[9];
    }
  }

  else
  {
    v7 = 0;
  }

  SubresultWithType = DDResultGetSubresultWithType(a1, a2[8]);
  if (a3 && SubresultWithType)
  {
    goto LABEL_27;
  }

  if (SubresultWithType)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_26:
    v7 = 0;
LABEL_27:
    *a4 = 0;
    return v7;
  }

  v10 = SubresultWithType[10];
  if (!v10)
  {
    v10 = SubresultWithType[9];
  }

  v11 = CFStringFind(v7, @"-", 0).location == -1 && CFStringFind(v7, @"Generic", 0).location == -1;
  v12 = CFStringCompare(v10, @"Generic", 0);
  v13 = v12 != kCFCompareEqualTo;
  *a4 = v13;
  if (v11 && v12)
  {
    if (CFStringCompare(v7, v10, 0) == kCFCompareEqualTo)
    {
      return v7;
    }

    v13 = *a4;
  }

  if (v11)
  {
    if (!v13)
    {
      return v7;
    }

    goto LABEL_26;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

  if (CFStringCompare(v7, @"Generic", 0) == kCFCompareEqualTo)
  {
    return v10;
  }

  v7 = v10;
  if (!DDResultValueContains(a2, v10))
  {
    goto LABEL_26;
  }

  return v7;
}

__CFString *DDResultGetTagTypeForDataType(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if (_typesAreEqual(result[2].isa, @"TrackingInformation"))
    {
      return @"Carrier";
    }

    else if (_typesAreEqual(v1[2].isa, @"FlightInformation"))
    {
      return @"AirlineCode";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void DDInsertResultsFromTopLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v12 = a6;
  if (!a6)
  {
    ScannerResult = DDLRResultCreateScannerResult(a2, *(a1 + 16), 0);
    v12 = ScannerResult;
    if (*(a1 + 234) == -1 && ScannerResult && _typesAreEqual(*(ScannerResult + 8), @"Compatibility") && (*(a2 + 14) & 0x8000000000000000) == 0)
    {
      *(a1 + 234) = *(*(*(a1 + 16) + 16) + 12 * *(a2 + 14));
    }
  }

  v12[14] = a4;
  v12[15] = a5;
  DDResultSetContent(v12, *(a1 + 56));
  if (a3 >= 1)
  {
    v12[6] = a3;
  }

  Count = CFArrayGetCount(*(a1 + 168));
  if (Count < 1)
  {
LABEL_13:
    v15 = 0;
  }

  else
  {
    v15 = Count;
    v16 = a5 >> 16;
    v17 = HIDWORD(a5);
    while (1)
    {
      v18 = v15 - 1;
      v19 = *(CFArrayGetValueAtIndex(*(a1 + 168), v15 - 1) + 3);
      v20 = v19 >> 16;
      if (v20 < v16)
      {
        break;
      }

      v21 = HIDWORD(v19);
      if (v20 <= v16 && v21 < v17)
      {
        break;
      }

      --v15;
      if ((v18 + 1) <= 1)
      {
        goto LABEL_13;
      }
    }
  }

  if (*(a1 + 192) >> 31)
  {
    v23 = DDLRResultCreateScannerResult(a2, *(a1 + 16), 1);
    DDResultSetContent(v23, *(a1 + 56));
    if (a3 >= 1)
    {
      v23[6] = a3;
    }

    CFArrayInsertValueAtIndex(*(a1 + 160), v15, v23);
    CFRelease(v23);
  }

  CFArrayInsertValueAtIndex(*(a1 + 168), v15, v12);
  if (!a6 && v12)
  {

    CFRelease(v12);
  }
}

void collectSubResultsInResult(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if ((*(a1 + 14) & 0x8000000000000000) != 0)
  {
    if (!a5)
    {
      v17 = a2;
      goto LABEL_22;
    }

LABEL_7:
    v11 = 0;
    v13 = @"terminal";
LABEL_8:
    v14 = (*a1 << 32) | (*(a1 + 8) << 16);
    v15 = ((*(a1 + 8) + (*(a1 + 8) >> 24)) << 16) | *a1 & 0xFFFFFFFF00000000;
    if (a4)
    {
      v16 = DDRootResultCreate(v13, v14, v15);
    }

    else
    {
      v16 = DDResultCreate(v13, v14, v15);
    }

    v17 = v16;
    DDResultAddSubresult(a2, v16);
    CFRelease(v17);
    if (!v11)
    {
      goto LABEL_22;
    }

LABEL_14:
    v12 = *v11;
    if (v12 == 0xFFFF)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v10 = *(a3 + 16);
  v11 = (v10 + 12 * *(a1 + 14));
  if (!a5)
  {
    v17 = a2;
    if (!v11)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = *v11;
  if (v12 == 0xFFFF)
  {
    v13 = @"internal";
    goto LABEL_8;
  }

LABEL_15:
  UniqueSymbolStringAtOffset = DDLRTableGetUniqueSymbolStringAtOffset(a3, v12);
  v19 = (*a1 << 32) | (*(a1 + 8) << 16);
  v20 = ((*(a1 + 8) + (*(a1 + 8) >> 24)) << 16) | *a1 & 0xFFFFFFFF00000000;
  if (a4)
  {
    v21 = DDRootResultCreate(UniqueSymbolStringAtOffset, v19, v20);
  }

  else
  {
    v21 = DDResultCreate(UniqueSymbolStringAtOffset, v19, v20);
  }

  v17 = v21;
  DDResultAddSubresult(a2, v21);
  CFRelease(v17);
LABEL_19:
  v22 = v11[1];
  if (v22 != 0xFFFF)
  {
    v23 = DDLRTableGetUniqueSymbolStringAtOffset(a3, v22);
    DDResultSetValue(v17, v23);
  }

LABEL_22:
  v24 = *(a1 + 12);
  if ((v24 & 2) != 0 && v17)
  {
    *(v17 + 108) = *(a1 + 24);
    *(v17 + 104) = 1;
    v24 = *(a1 + 12);
  }

  if ((v24 & 8) != 0)
  {
    v25 = CFStringCreateWithCString(0, *(a1 + 32), 0x8000100u);
    if (v25)
    {
      v26 = v25;
      DDResultAppendContextualData(v17, v25, @"D");
      CFRelease(v26);
    }
  }

  if ((*(a1 + 12) & 4) != 0)
  {
    v27 = CFStringCreateWithCString(0, *(a1 + 40), 0x8000100u);
    if (v27)
    {
      v28 = v27;
      DDResultAppendContextualData(v17, v27, @"U");
      CFRelease(v28);
    }
  }

  v29 = 48;
  if ((*(a1 + 12) & 1) == 0)
  {
    v29 = 24;
  }

  v30 = *(a1 + 13);
  if (*(a1 + 13))
  {
    v31 = v30 + 1;
    v32 = (v29 + 8 * v30 + a1 - 8);
    do
    {
      v33 = *v32--;
      collectSubResultsInResult(v33, v17, a3, 0, a5);
      --v31;
    }

    while (v31 > 1);
  }
}

CFTypeRef DDLRResultCreateScannerResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = DDTypeRegister(&DDResultGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v6, 0x60uLL);
  collectSubResultsInResult(a1, Instance, a2, 1, a3);
  ValueAtIndex = CFArrayGetValueAtIndex(Instance[7], 0);
  v9 = CFRetain(ValueAtIndex);
  CFRelease(Instance);
  return v9;
}

void *DDResultCreate(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = DDTypeRegister(&DDResultGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v6, 0x60uLL);
  Instance[2] = a2;
  Instance[3] = a3;
  if (a1)
  {
    Instance[8] = CFRetain(a1);
  }

  Instance[12] = 1;
  return Instance;
}

void *DDRootResultCreate(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = DDTypeRegister(&DDResultGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v6, 0x70uLL);
  Instance[2] = a2;
  Instance[3] = a3;
  if (a1)
  {
    Instance[8] = CFRetain(a1);
  }

  Instance[12] = 262145;
  return Instance;
}

void DDInsertResultsFromTopLevelRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 && _typesAreEqual(*(a6 + 64), @"Compatibility"))
  {
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    v17 = a6;
LABEL_7:

    DDInsertResultsFromTopLevel(v12, v13, v14, v15, v16, v17);
    return;
  }

  if ((*(a2 + 14) & 0x8000000000000000) == 0 && *(*(*(a1 + 16) + 16) + 12 * *(a2 + 14)) != -1)
  {
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    v17 = 0;
    goto LABEL_7;
  }

  v18 = *(a2 + 13);
  if (*(a2 + 13))
  {
    v19 = 48;
    if ((*(a2 + 12) & 1) == 0)
    {
      v19 = 24;
    }

    v20 = (a2 + v19);
    do
    {
      v21 = *v20++;
      DDInsertResultsFromTopLevelRec(a1, v21, a3, a4, a5, 0);
      --v18;
    }

    while (v18);
  }
}

const void *DDLRTableGetUniqueSymbolStringAtOffset(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (!Value)
  {
    Value = CFStringCreateWithPascalString(0, a2 + *(a1 + 40), 0x8000100u);
    CFDictionarySetValue(*(a1 + 72), a2, Value);
    CFRelease(Value);
  }

  return Value;
}

const void *DDResultGetUnwrappedResultOfType(uint64_t a1, const __CFString *a2)
{
  if (!a1 || !a2 || !_typesAreEqual(*(a1 + 64), a2))
  {
    return a1;
  }

  v3 = *(a1 + 56);

  return CFArrayGetValueAtIndex(v3, 0);
}

void DDResultAddSubresult(uint64_t a1, void *value)
{
  Mutable = *(a1 + 56);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(a1 + 56) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
}

uint64_t DDScanQueryComputeCFRangeForQueryRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    return a2 >> 32;
  }

  v4 = *(a1 + 16);
  result = *(v4 + 48 * (a2 >> 16) + 32) + (a2 >> 32) - *(v4 + 48 * (a2 >> 16) + 16);
  v5 = *(v4 + 48 * (a3 >> 16) + 32) + (a3 >> 32) - (result + *(v4 + 48 * (a3 >> 16) + 16));
  return result;
}

uint64_t DDResultGetVirtualDistance(uint64_t a1, uint64_t a2)
{
  result = -1;
  if (a1 && a2)
  {
    v4 = *(a2 + 32);
    v5 = *(a1 + 32);
    v6 = v5 + *(a1 + 40);
    v7 = v4 + *(a2 + 40);
    if (v6 >= v7)
    {
      v8 = v4 + *(a2 + 40);
    }

    else
    {
      v8 = v6;
    }

    v9 = 20;
    if (v4 < v5)
    {
      v9 = 0;
    }

    v10 = v4 <= v5 && v5 < v7;
    v11 = v5;
    if (v10 || v5 <= v4 && (v11 = *(a2 + 32), v4 < v6))
    {
      if (v8 != v11)
      {
        return 0;
      }
    }

    v12 = v5 - v7;
    v13 = v4 - v6;
    if (v4 < v5)
    {
      v13 = v12;
    }

    if (v13)
    {
      return v13 + v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL DDShouldPauseSearchForTag(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return 1;
  }

  if (a3 && _typesAreEqual(*(a3 + 64), @"Tag"))
  {
    return 1;
  }

  return _typesAreEqual(*(a2 + 64), *(a3 + 64));
}

__CFString *DDScanQueryCopyRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 16;
  if (v5 != a3 >> 16 || (v6 = *(a1 + 16) + 48 * v5, *result = 0, *&result[8] = 0, (*(v6 + 43) & 0x60) != 0) && (v7 = *v6, Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline), v38.location = a2 >> 32, v38.length = (a3 - (a2 & 0xFFFFFFFF00000000)) >> 32, CFStringFindCharacterFromSet(v7, Predefined, v38, 0, result)))
  {
    v9 = a3 >> 16;
    theString = CFStringCreateMutable(0, 0);
    if (v5 <= v9)
    {
      v11 = 0;
      v28 = a3 >> 32;
      v29 = a2 >> 32;
      v12 = 48 * v5 + 40;
      v27 = v9 + 1;
      v10 = theString;
      v30 = v9;
      do
      {
        v13 = *(a1 + 16);
        v14 = v13 + v12;
        v15 = v29;
        if (v11)
        {
          v15 = *(v14 - 24);
        }

        v16 = v28;
        if (v9 != v5)
        {
          v16 = *(v13 + v12 - 16) + *(v13 + v12 - 24);
        }

        v17 = *(v14 - 40);
        if (v17)
        {
          Length = CFStringGetLength(v17);
        }

        else
        {
          Length = 0;
        }

        v19 = v16 - v15;
        if (v16 <= Length)
        {
          goto LABEL_32;
        }

        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v20 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_DEFAULT))
        {
          *result = 134218752;
          *&result[4] = v15;
          *&result[12] = 2048;
          *&result[14] = v16 - v15;
          v33 = 2048;
          v34 = v16;
          v35 = 2048;
          v36 = Length;
          _os_log_impl(&dword_1BCFDD000, v20, OS_LOG_TYPE_DEFAULT, "Inconsistent range {%ld, %ld} (i.e. max=%ld) for string of length %ld, trying to recover by truncating the string.", result, 0x2Au);
        }

        v19 = Length - v15;
        v10 = theString;
        if (Length >= v15)
        {
LABEL_32:
          if (v19 >= 1)
          {
            v39.location = v15;
            v39.length = v19;
            v21 = CFStringCreateWithSubstring(0, *(v14 - 40), v39);
            v22 = CFStringGetLength(v10);
            CFStringAppend(v10, v21);
            CFRelease(v21);
            if ((*(v13 + v12 + 3) & 0x40) != 0)
            {
              v41.length = CFStringGetLength(v10) - v22;
              v41.location = v22;
              CFStringFindAndReplace(v10, @"\r\n", @" ", v41, 0);
              v42.length = CFStringGetLength(v10) - v22;
              v42.location = v22;
              CFStringFindAndReplace(v10, @"\n\r", @" ", v42, 0);
              v43.length = CFStringGetLength(v10) - v22;
              v43.location = v22;
              CFStringFindAndReplace(v10, @"\n", @" ", v43, 0);
            }
          }
        }

        v9 = v30;
        if (v5 < v30)
        {
          v23 = ((*(v13 + v12) >> 26) & 7) - 1;
          if (v23 <= 3)
          {
            CFStringAppend(v10, *(&off_1E8002158 + v23));
          }
        }

        ++v5;
        --v11;
        v12 += 48;
      }

      while (v27 != v5);
    }

    else
    {
      v10 = theString;
    }
  }

  else
  {
    v40.location = a2 >> 32;
    v40.length = (a3 - (a2 & 0xFFFFFFFF00000000)) >> 32;
    v10 = CFStringCreateWithSubstring(0, *v6, v40);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

void DDScannerThreadDebug(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v4 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    v6 = "in use";
    v7 = 134218498;
    v8 = a1;
    v9 = 2080;
    if (!a2)
    {
      v6 = "unused";
    }

    v10 = v6;
    v11 = 2080;
    v12 = v6;
    _os_log_error_impl(&dword_1BCFDD000, v4, OS_LOG_TYPE_ERROR, "Scanner %p was declared %s while already %s, this is likely a Data Detectors scanner being used in an unsafe manner (this object is NOT thread safe, a crash is likely to happen). Break on DDScannerThreadDebug() to debug.", &v7, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __DDResultGetCategory_block_invoke_5(uint64_t a1)
{
  result = CFSetContainsValue(DDResultGetCategory_eventSet, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 4;
  }

  return result;
}

void DDResultSetValue(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 80);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 80) = 0;
    }

    if (cf)
    {
      *(a1 + 80) = CFRetain(cf);
    }
  }
}

const void *DDTypeForLRResult(unsigned __int16 a1, uint64_t a2)
{
  if ((a1 & 0x8000) != 0)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 12 * a1);
  if (v3 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return DDLRTableGetUniqueSymbolStringAtOffset(a2, v3);
  }
}

uint64_t DDScannerCreateWithCacheFile(const __CFURL *a1, CFErrorRef *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    if (a2)
    {
      v10 = 0;
      *a2 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E640], 2, 0);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  memset(&v13, 0, sizeof(v13));
  v3 = stat(buffer, &v13);
  if ((v3 & 0x80000000) != 0)
  {
    DDLogErrD(v3, v4, v5, v6, v7, @"could not stat file: %s", buffer);
    goto LABEL_8;
  }

  v8 = DDCacheCreateFromFileAtPathWithExtraChecks(buffer, 0, v13.st_size, 1);
  if (!v8)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = v8;
  v10 = DDScannerCreateFromCacheSupportingMLScan(v8);
  CFRelease(v9);
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void DDScannerSetLocale(uint64_t a1, CFTypeRef cf)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      *(a1 + 40) = DDTokenCacheCreate(cf);
      *(a1 + 236) = 0;
      goto LABEL_32;
    }

    v5 = *(v4 + 8);
    if (cf)
    {
      if (v5)
      {
        if (v5 == cf || CFEqual(cf, v5))
        {
          goto LABEL_32;
        }

        v6 = *(v4 + 8);
        if (v6)
        {
          CFRelease(v6);
        }
      }

      *(v4 + 8) = cf;
      CFRetain(cf);
      v7 = *(v4 + 8);
    }

    else
    {
      if (!v5)
      {
        goto LABEL_32;
      }

      CFRelease(*(v4 + 8));
      v7 = 0;
      *(v4 + 8) = 0;
    }

    v8 = *v4;
    if (*v4 && !*(v8 + 121))
    {
      v9 = NLStringTokenizerCreate();
      v10 = v9;
      if (!v7 || v9)
      {
        if (!v9)
        {
LABEL_30:
          v14 = 1;
LABEL_31:
          DDCachingStringTokenizerResetStringWithOptions(v8, 64, v14);
          goto LABEL_32;
        }
      }

      else
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v11 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          v16 = 138412290;
          v17 = v7;
          _os_log_error_impl(&dword_1BCFDD000, v11, OS_LOG_TYPE_ERROR, "Tokenizer update failed with locale %@, trying to fallback to default", &v16, 0xCu);
        }

        v10 = NLStringTokenizerCreate();
        if (!v10)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v12 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v16) = 0;
            _os_log_error_impl(&dword_1BCFDD000, v12, OS_LOG_TYPE_ERROR, "Tokenizer creation failed again with the default one, giving up and reusing the original one", &v16, 2u);
          }

          goto LABEL_30;
        }
      }

      v13 = *(v8 + 40);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = 0;
      *(v8 + 40) = v10;
      goto LABEL_31;
    }
  }

LABEL_32:
  v15 = *MEMORY[0x1E69E9840];
}

BOOL DDScannerScanString(uint64_t a1, CFStringRef theString)
{
  v2 = a1;
  if (!theString)
  {
    if (a1)
    {
      if (*(a1 + 233) == 1)
      {
        v6 = 1;
LABEL_11:
        DDScannerThreadDebug(a1, v6);
        return 0;
      }

      *(a1 + 233) = 1;
      DDScannerReset(a1);
      if (!*(v2 + 233))
      {
        a1 = v2;
        v6 = 0;
        goto LABEL_11;
      }

      *(v2 + 233) = 0;
    }

    return 0;
  }

  Length = CFStringGetLength(theString);

  return DDScannerScanStringWithRangeAndContextOffset(v2, theString, 0, Length, 0);
}

NSUInteger validateRangeOfString(NSUInteger a1, NSRange range)
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  location = range.location;
  if (range.location + range.length > a1)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695DA20];
    v6 = NSStringFromRange(range);
    [v4 raise:v5 format:{@"Range for detection %@ is out of bounds (0, %lu)", v6, a1}];
  }

  return location;
}

uint64_t DDComputeDominantScriptOrLanguage(const __CFString *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v21 = 12;
LABEL_139:
    result = v21;
    goto LABEL_140;
  }

  Length = CFStringGetLength(a1);
  if (Length >= 150)
  {
    v3 = 150;
  }

  else
  {
    v3 = Length;
  }

  v43 = 0u;
  v44 = 0u;
  if (Length <= 0)
  {
    goto LABEL_120;
  }

  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v4 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v9);
    if (((CharacterAtIndex & 0xFFDF) - 65) <= 0x19u)
    {
LABEL_8:
      ++v4;
      goto LABEL_13;
    }

    if (CharacterAtIndex <= 0x2E && ((1 << CharacterAtIndex) & 0x708000000000) != 0 || CharacterAtIndex == 173 || CharacterAtIndex - 48 < 0xA || (CharacterAtIndex - 188) <= 2u || CharacterAtIndex < 0x20 || (CharacterAtIndex - 127) <= 0x20u || CharacterAtIndex < 0xC0 || (CharacterAtIndex & 0xFFDF) == 0xD7)
    {
      goto LABEL_12;
    }

    if (CharacterAtIndex <= 0x2AF)
    {
      goto LABEL_8;
    }

    if (CharacterAtIndex <= 0x36F)
    {
LABEL_12:
      ++v8;
      goto LABEL_13;
    }

    if (CharacterAtIndex <= 0x3FF)
    {
      ++HIDWORD(v42);
      goto LABEL_13;
    }

    if (CharacterAtIndex < 0x530 || CharacterAtIndex == 7467)
    {
      LOBYTE(v42) = v42 + 1;
      goto LABEL_13;
    }

    if (CharacterAtIndex < 0x590 || (CharacterAtIndex + 1261) <= 4u)
    {
      ++BYTE4(v41);
      goto LABEL_13;
    }

    if (CharacterAtIndex < 0x600 || (CharacterAtIndex + 1251) <= 0x32u)
    {
      LOBYTE(v41) = v41 + 1;
      goto LABEL_13;
    }

    if ((CharacterAtIndex + 400) < 0x8Fu || CharacterAtIndex < 0x700 || (CharacterAtIndex + 1200) <= 0x2AFu)
    {
      ++v40;
      goto LABEL_13;
    }

    v11 = (CharacterAtIndex - 2304) >> 7;
    if (v11 > 5)
    {
      if (((CharacterAtIndex - 2304) >> 7) > 8u)
      {
        switch(v11)
        {
          case 9u:
            ++v5;
            goto LABEL_13;
          case 0xAu:
            ++v6;
            goto LABEL_13;
          case 0xBu:
            ++v7;
            goto LABEL_13;
        }
      }

      else
      {
        switch(v11)
        {
          case 6u:
            ++BYTE4(v38);
            goto LABEL_13;
          case 7u:
            LOBYTE(v38) = v38 + 1;
            goto LABEL_13;
          case 8u:
            ++v39;
            goto LABEL_13;
        }
      }

LABEL_65:
      v28 = v6;
      if (((CharacterAtIndex + 21504) >> 10) < 0xBu || (v12 = CharacterAtIndex & 0xFF00, v12 == 4352))
      {
        LOBYTE(v35) = v35 + 1;
      }

      else
      {
        v13 = CharacterAtIndex;
        if (CharacterAtIndex - 12352 > 0xBF)
        {
          v14 = vdup_n_s16(CharacterAtIndex);
          if (vmaxv_u16(vcgt_u16(0xFC006002007180, vadd_s16(v14, 0x10001F00700D180))))
          {
            HIDWORD(v32) = v29 + 1;
            LODWORD(v29) = v29 + 1;
          }

          else
          {
            if (CharacterAtIndex - 8204 >= 6 && CharacterAtIndex != 8217 && CharacterAtIndex - 8234 >= 5 && (CharacterAtIndex & 0xFFF0) != 0x2060 && CharacterAtIndex != 65279 && (CharacterAtIndex & 0xFFF0) != 0xFE00)
            {
              if ((vmaxv_u16(vcgt_u16(0x700E000300026, vadd_s16(v14, 0x50058E0E295E300))) & 1) != 0 || v12 == 7680 || (CharacterAtIndex & 0xFFE0) == 0x2C60)
              {
                ++v4;
                goto LABEL_74;
              }

              if (CharacterAtIndex - 7462 < 5 || v12 == 7936)
              {
                ++HIDWORD(v42);
                goto LABEL_74;
              }

              if ((vmaxv_u16(vcgt_u16(0x3000300065003FLL, vadd_s16(v14, 0xDF30DF90E265E2D4))) & 1) == 0 && (CharacterAtIndex & 0xFFE0) != 0xA700 && CharacterAtIndex - 0x2000 >= 0xC00 && CharacterAtIndex <= 0xFFFB && (CharacterAtIndex & 0xFF80) != 0x2E00)
              {
                if (v12 == 3840)
                {
                  ++BYTE4(v34);
                }

                else if (CharacterAtIndex - 4096 > 0x9F)
                {
                  if (CharacterAtIndex - 4256 > 0x5F)
                  {
                    if (CharacterAtIndex - 4608 > 0x19F)
                    {
                      if (CharacterAtIndex - 5024 > 0x5F)
                      {
                        if (CharacterAtIndex - 5120 > 0x27F)
                        {
                          if ((CharacterAtIndex & 0xFF80) == 0x1780)
                          {
                            LOBYTE(v32) = v32 + 1;
                          }

                          else if (CharacterAtIndex - 6144 > 0xAF)
                          {
                            if (CharacterAtIndex >> 10 == 54 && v9 + 1 < v3 && CFStringGetCharacterAtIndex(a1, v9 + 1) >> 10 >= 0x37u && CFStringGetCharacterAtIndex(a1, v9 + 1) >> 13 <= 6u)
                            {
                              v15 = CFStringGetCharacterAtIndex(a1, v9) + (v13 << 10);
                              if (((v15 + 2106368) & 0x3F0000) == 0x10000)
                              {
                                ++v8;
                              }

                              else
                              {
                                v16 = (v15 - 56744960) >= 0x10000;
                                v17 = v29;
                                v18 = HIDWORD(v32);
                                if (!v16)
                                {
                                  v18 = v29 + 1;
                                }

                                HIDWORD(v32) = v18;
                                if (!v16)
                                {
                                  v17 = v29 + 1;
                                }

                                LODWORD(v29) = v17;
                              }

                              ++v9;
                            }
                          }

                          else
                          {
                            ++BYTE4(v31);
                          }
                        }

                        else
                        {
                          ++BYTE4(v30);
                        }
                      }

                      else
                      {
                        LOBYTE(v31) = v31 + 1;
                      }
                    }

                    else
                    {
                      LOBYTE(v30) = v30 + 1;
                    }
                  }

                  else
                  {
                    LOBYTE(v34) = v34 + 1;
                  }
                }

                else
                {
                  ++BYTE4(v29);
                }

                goto LABEL_74;
              }
            }

            ++v8;
          }
        }

        else
        {
          LOBYTE(v33) = v33 + 1;
        }
      }

LABEL_74:
      v6 = v28;
      goto LABEL_13;
    }

    if (((CharacterAtIndex - 2304) >> 7) > 2u)
    {
      switch(v11)
      {
        case 3u:
          LOBYTE(v36) = v36 + 1;
          goto LABEL_13;
        case 4u:
          ++BYTE4(v37);
          goto LABEL_13;
        case 5u:
          LOBYTE(v37) = v37 + 1;
          goto LABEL_13;
      }

      goto LABEL_65;
    }

    if ((CharacterAtIndex - 2304) >> 7)
    {
      if (v11 == 1)
      {
        ++BYTE4(v35);
      }

      else
      {
        ++BYTE4(v36);
      }
    }

    else
    {
      if ((CharacterAtIndex & 0x97E) == 0x964)
      {
        goto LABEL_12;
      }

      ++BYTE4(v33);
    }

LABEL_13:
    ++v9;
  }

  while (v9 < v3);
  HIBYTE(v44) = v8;
  BYTE9(v44) = v7;
  BYTE4(v43) = v6;
  BYTE8(v44) = v5;
  BYTE7(v44) = v39;
  BYTE6(v44) = v38;
  BYTE5(v44) = BYTE4(v38);
  BYTE4(v44) = v37;
  BYTE3(v44) = BYTE4(v37);
  BYTE2(v44) = v36;
  BYTE1(v44) = BYTE4(v36);
  LOBYTE(v44) = BYTE4(v35);
  HIBYTE(v43) = BYTE4(v33);
  BYTE13(v43) = BYTE4(v32);
  BYTE11(v43) = BYTE4(v31);
  BYTE10(v44) = v32;
  BYTE10(v43) = BYTE4(v30);
  BYTE9(v43) = v31;
  BYTE11(v44) = v30;
  BYTE8(v43) = v34;
  BYTE12(v44) = BYTE4(v29);
  BYTE13(v44) = BYTE4(v34);
  BYTE3(v43) = BYTE4(v42);
  BYTE14(v44) = v4;
  BYTE6(v43) = v33;
  BYTE5(v43) = v35;
  BYTE1(v43) = v40;
  BYTE2(v43) = v41;
  BYTE7(v43) = BYTE4(v41);
  BYTE14(v43) = v42;
LABEL_120:
  v19 = 0;
  LOBYTE(v20) = 0;
  LODWORD(v21) = 12;
  do
  {
    v22 = *(&v43 + v19);
    if (v22 <= v20)
    {
      v21 = v21;
    }

    else
    {
      v21 = v19;
    }

    if (v22 <= v20)
    {
      v20 = v20;
    }

    else
    {
      v20 = *(&v43 + v19);
    }

    ++v19;
  }

  while (v19 != 12);
  LOBYTE(v23) = 0;
  LODWORD(result) = 31;
  for (i = 13; i != 31; ++i)
  {
    v26 = *(&v43 + i);
    if (v26 <= v23)
    {
      result = result;
    }

    else
    {
      result = i;
    }

    if (v26 <= v23)
    {
      v23 = v23;
    }

    else
    {
      v23 = *(&v43 + i);
    }
  }

  if (v20 >= 2 * v23)
  {
    goto LABEL_139;
  }

LABEL_140:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BCFF0530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCFF0738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCFF0B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DDScannerServiceScanStringSync(uint64_t a1)
{
  v2 = [[DDScannerServiceConfiguration alloc] initWithScannerType:0 passiveIntent:0];
  [(DDScannerServiceConfiguration *)v2 setNoObjC:1];
  v3 = [DDScannerService scanString:a1 range:0x7FFFFFFFFFFFFFFFLL configuration:0, v2];

  return v3;
}

id DDScannerServiceScanStringSyncWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v10 = [[DDScannerServiceConfiguration alloc] initWithScannerType:a4 passiveIntent:a5 != 0];
  v11 = v10;
  if (a6)
  {
    [(DDScannerServiceConfiguration *)v10 setSpotlightSuggestionsEnabled:1];
  }

  [(DDScannerServiceConfiguration *)v11 setNoObjC:1];
  v12 = [DDScannerService scanString:a1 range:a2 configuration:a3, v11];

  return v12;
}

int64_t DDScannerServiceScanStringAsync(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[DDScannerServiceConfiguration alloc] initWithScannerType:0 passiveIntent:1];
  [(DDScannerServiceConfiguration *)v4 setNoObjC:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __DDScannerServiceScanStringAsync_block_invoke;
  v8[3] = &unk_1E8001D38;
  v9 = v3;
  v5 = v3;
  v6 = [DDScannerService scanString:a1 range:0x7FFFFFFFFFFFFFFFLL configuration:0 completionBlock:v4, v8];

  return v6;
}

int64_t DDScannerServiceScanStringAsyncWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7)
{
  v13 = a7;
  v14 = [[DDScannerServiceConfiguration alloc] initWithScannerType:a4 passiveIntent:a5 != 0];
  v15 = v14;
  if (a6)
  {
    [(DDScannerServiceConfiguration *)v14 setSpotlightSuggestionsEnabled:1];
  }

  [(DDScannerServiceConfiguration *)v15 setNoObjC:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __DDScannerServiceScanStringAsyncWithOptions_block_invoke;
  v19[3] = &unk_1E8001D38;
  v20 = v13;
  v16 = v13;
  v17 = [DDScannerService scanString:a1 range:a2 configuration:a3 completionBlock:v15, v19];

  return v17;
}

void printExceptionHandler(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v2 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_error_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_ERROR, "EXCEPTION: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void DDCrash(CFStringRef format, ...)
{
  va_start(va, format);
  if (format)
  {
    v1 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
    DDLogErrD(v1, v2, v3, v4, v5, @"%@", v1);
    printExceptionHandler(v1);
    if (v1)
    {
      CFRelease(v1);
    }
  }

  else
  {
    printExceptionHandler(0);
  }
}

BOOL _get_BOOL_entitlement(const __CFString *a1, int a2)
{
  if (!a2 && !_xpc_runtime_is_app_sandboxed())
  {
    return 0;
  }

  v3 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopyValueForEntitlement(v3, a1, 0);
  if (v5)
  {
    v6 = v5;
    TypeID = CFBooleanGetTypeID();
    v8 = TypeID == CFGetTypeID(v6) && CFEqual(v6, *MEMORY[0x1E695E4D0]) != 0;
    CFRelease(v4);
  }

  else
  {
    v8 = 0;
    v6 = v4;
  }

  CFRelease(v6);
  return v8;
}

BOOL __DDTelephonyWillPrompt_block_invoke()
{
  result = _get_BOOL_entitlement(@"com.apple.springboard.allowallcallurls", 0);
  DDTelephonyWillPrompt_sandbox_result = !result;
  return result;
}

void __DDUserSourcesReadAllowed_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  BOOL_entitlement = _get_BOOL_entitlement(@"com.apple.datadetectors.source-read.user", 1);
  DDUserSourcesReadAllowed_sandbox_result = BOOL_entitlement;
  if (!BOOL_entitlement)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v1 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v3 = 138412290;
      v4 = @"com.apple.datadetectors.source-read.user";
      _os_log_error_impl(&dword_1BCFDD000, v1, OS_LOG_TYPE_ERROR, "DD: This process tried to read a user data source without the proper entitlement (%@)", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __DDUserSourcesWriteAllowed_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  BOOL_entitlement = _get_BOOL_entitlement(@"com.apple.datadetectors.source-write.user", 1);
  DDUserSourcesWriteAllowed_sandbox_result = BOOL_entitlement;
  if (!BOOL_entitlement)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v1 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v3 = 138412290;
      v4 = @"com.apple.datadetectors.source-write.user";
      _os_log_error_impl(&dword_1BCFDD000, v1, OS_LOG_TYPE_ERROR, "DD: This process tried to write a user data source without the proper entitlement (%@)", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __DDSystemSourcesWriteAllowed_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  BOOL_entitlement = _get_BOOL_entitlement(@"com.apple.datadetectors.source-write.system", 1);
  DDSystemSourcesWriteAllowed_sandbox_result = BOOL_entitlement;
  if (!BOOL_entitlement)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v1 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v3 = 138412290;
      v4 = @"com.apple.datadetectors.source-write.system";
      _os_log_error_impl(&dword_1BCFDD000, v1, OS_LOG_TYPE_ERROR, "DD: This process tried to write a system data source without the proper entitlement (%@)", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

CFDataRef DDCreateDataFromFileAtUrl(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyAbsoluteURL(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = DDCreateDataFromFileAtPath(v3);
  CFRelease(v3);
  return v4;
}

CFDataRef DDCreateDataFromFileAtPath(const __CFString *a1)
{
  if (!a1)
  {
    v12 = *MEMORY[0x1E69E9848];
    v13 = "Error : Invalid file path !\n";
LABEL_12:
    v14 = 28;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
  if (!MaximumSizeOfFileSystemRepresentation)
  {
    v12 = *MEMORY[0x1E69E9848];
    v13 = "Error : Invalid file size !\n";
    goto LABEL_12;
  }

  v3 = MaximumSizeOfFileSystemRepresentation;
  v4 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  if (!v4)
  {
    v12 = *MEMORY[0x1E69E9848];
    v13 = "Error : Invalid file path malloc !\n";
    v14 = 35;
    goto LABEL_13;
  }

  v5 = v4;
  if (!CFStringGetFileSystemRepresentation(a1, v4, v3))
  {
    free(v5);
    v12 = *MEMORY[0x1E69E9848];
    v13 = "Error : Invalid file path system rep !\n";
    v14 = 39;
    goto LABEL_13;
  }

  v6 = fopen(v5, "r");
  free(v5);
  if (v6)
  {
    v7 = fileno(v6);
    memset(&v15, 0, sizeof(v15));
    fstat(v7, &v15);
    st_size = v15.st_size;
    if (v15.st_size)
    {
      v9 = malloc_type_malloc(v15.st_size, 0xDECE4579uLL);
      if (v9)
      {
        v10 = v9;
        if (fread(v9, st_size, 1uLL, v6))
        {
          fclose(v6);
          return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, st_size, *MEMORY[0x1E695E488]);
        }

        free(v10);
      }
    }

    fclose(v6);
  }

  return 0;
}

uint64_t __DDMLEnhancementEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  DDMLEnhancementEnabled__isDDMLEnabled = result;
  return result;
}

void DDScannerPurgeCaches(uint64_t a1, const void *a2)
{
  DDTokenCacheDestroy(*(a1 + 40));
  *(a1 + 40) = DDTokenCacheCreate(a2);
  DDLexemCacheDestroy(*(a1 + 48));
  *(a1 + 48) = DDLexemCacheCreate();
  DDSourceMatchCacheFree(*(a1 + 152));
  *(a1 + 152) = 0;
}

uint64_t DDScannerGetLocale(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if (v1)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DDScannerGetMemoryUsed(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2 < 1)
    {
      v7 = 8680;
    }

    else
    {
      v3 = *(v1 + 32);
      v4 = 400;
      do
      {
        v5 = *v3;
        if (*v3)
        {
          v6 = *(v5 + 6);
          if (v6 == 1)
          {
            v5 = 24;
          }

          else
          {
            v5 = 16 * v6 + 24;
          }
        }

        v4 += v5;
        ++v3;
        --v2;
      }

      while (v2);
      v7 = v4 + 8280;
    }
  }

  else
  {
    v7 = 8280;
  }

  v8 = *(a1 + 48);
  v9 = v8[3];
  if (v9 < 1)
  {
    v11 = 80;
  }

  else
  {
    v10 = v8[1];
    v11 = 80;
    do
    {
      v12 = *v10;
      if (*v10)
      {
        v12 = (*(v12 + 8) >> 27) & 0xFFFFFFFFFFFFFFE0 | 0x10;
      }

      v11 += v12;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v13 = v8[8];
  if (v13)
  {
    v11 += 32 * (*(v13 + 8) >> 32) + 16;
  }

  v14 = v8[7];
  if (v14 >= 1)
  {
    v15 = v8[5];
    do
    {
      v16 = *v15;
      if (*v15)
      {
        v16 = (*(v16 + 8) >> 27) & 0xFFFFFFFFFFFFFFE0 | 0x10;
      }

      v11 += v16;
      ++v15;
      --v14;
    }

    while (v14);
  }

  return v7 + v11;
}

CFIndex _offsetResultsInArray(const __CFArray *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v8 = ValueAtIndex;
      v9 = ValueAtIndex[4];
      if (v9 >= a2)
      {
        ValueAtIndex[4] = v9 - a2;
      }

      else
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v10 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v13 = a2;
          v14 = 2048;
          v15 = v9;
          _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "incorrect context offset %ld for range location %ld", buf, 0x16u);
        }
      }

      result = v8[7];
      if (result)
      {
        result = _offsetResultsInArray(result, a2);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __computeLexemsAtPosition_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  v8 = result;
  v43[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(*(*(*(result + 40) + 8) + 24) + 8 * (15 - ++*(*(*(result + 56) + 8) + 24))) = a2;
    *(*(*(*(result + 48) + 8) + 24) + 8 * (15 - *(*(*(result + 56) + 8) + 24))) = a3;
    v9 = a3 >> 16;
    if (v9 != *(result + 88) >> 16)
    {
      v10 = *(*(result + 96) + 16) + 48 * v9;
      v11 = a3 | ((*(v10 + 24) + *(v10 + 16)) << 32);
    }
  }

  else
  {
    *(*(*(*(result + 40) + 8) + 24) + 8 * ++*(*(*(result + 32) + 8) + 24) + 120) = a2;
    *(*(*(*(result + 48) + 8) + 24) + 8 * *(*(*(result + 32) + 8) + 24) + 120) = a3;
  }

  v12 = *(*(*(result + 64) + 8) + 24);
  if (v12 > 29)
  {
    goto LABEL_34;
  }

  v13 = 30 - v12;
  MEMORY[0x1EEE9AC00]();
  v14 = &v43[-4 * v13];
  result = DDLookupTableRefLookupCurrentWord(v8[13], v8[14], a2, v15, a2, v14, v13, 1);
  if (!a4)
  {
    goto LABEL_28;
  }

  v16 = *(v8[13] + 152);
  if (!v16)
  {
    goto LABEL_28;
  }

  if (result >= v13)
  {
    goto LABEL_28;
  }

  v17 = *v16;
  if (*v16 < 0)
  {
    goto LABEL_28;
  }

  v18 = *(v8[12] + 16) + 48 * (a2 >> 16);
  v19 = *(v18 + 32) + (a2 >> 32) - *(v18 + 16);
  v20 = v16[1];
  v21 = v16 + 2;
  v22 = v17;
  while (1)
  {
    v23 = v21[8 * v22];
    if (v23 == v19)
    {
      break;
    }

    if (v23 >= v19 && v22 != v20)
    {
      if (v22-- < 1)
      {
        v22 = 14;
      }

      if (v22 != v17)
      {
        continue;
      }
    }

    goto LABEL_28;
  }

  v26 = &v21[8 * v22];
  v27 = v26[1];
  if (v27 <= 1)
  {
    if (v27 < 1)
    {
      goto LABEL_28;
    }

    v28 = v26 + 4;
  }

  else
  {
    v28 = v26[3];
  }

  v29 = &v14[2 * result] + 12;
  v30 = 1;
  do
  {
    v31 = v28[1];
    *(v29 - 12) = *v28;
    *(v29 + 4) = v31;
    v32 = (*v29 >> 17) & 0x7F;
    *v29 = *v29 & 0xE0FFFFFF | 0x17000000;
    v33 = v32 / 100.0;
    *(v29 - 4) = v33;
    v34 = v30 + 1;
    if (v30 >= v27)
    {
      break;
    }

    v35 = result + v30;
    v28 += 2;
    v29 += 32;
    ++v30;
  }

  while (v35 < v13);
  result = result + v34 - 1;
LABEL_28:
  if (result >= v13)
  {
    v36 = v13;
  }

  else
  {
    v36 = result;
  }

  if (v36 >= 1)
  {
    do
    {
      v37 = (*(*(v8[9] + 8) + 24) + 32 * *(*(v8[8] + 8) + 24));
      v38 = v14[1];
      *v37 = *v14;
      v37[1] = v38;
      v39 = *v14;
      v14 += 2;
      v40 = *(*(v8[8] + 8) + 24);
      v41 = *(*(v8[10] + 8) + 24) + 40 * v40;
      *v41 = a2;
      *(v41 + 8) = v39;
      *(v41 + 16) = v39;
      *(v41 + 24) = v40;
      *(v41 + 32) = a4;
      *(v41 + 36) = 0;
      *(v41 + 33) = 0;
      ++*(*(v8[8] + 8) + 24);
      --v36;
    }

    while (v36);
  }

  if (*(*(v8[8] + 8) + 24) >= 30)
  {
LABEL_34:
    *a5 = 1;
    *(*(v8[8] + 8) + 24) = 30;
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t keywordSort(void *a1, unint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a1 << 32) >> 48;
  if (v6 < (*a2 << 32) >> 48)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5 >> 16;
  v8 = HIDWORD(*a1);
  v9 = HIDWORD(v5);
  v10 = v8 < v9;
  v11 = v8 > v9;
  if (v10)
  {
    v11 = -1;
  }

  if (v6 <= v7)
  {
    return v11;
  }

  else
  {
    return 1;
  }
}

BOOL DDScannerScanStringWithContextOffset(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);

    return DDScannerScanStringWithRangeAndContextOffset(a1, theString, 0, Length, a3);
  }

  else
  {

    return DDScannerScanString(a1, 0);
  }
}

BOOL DDScannerOverrideTokensForNextScan(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (v8)
  {
    DDTokenCacheDestroy(v8);
  }

  v9 = malloc_type_calloc(1uLL, 0x80uLL, 0x1020040DB4D2780uLL);
  if (v9)
  {
    v10 = v9;
    v9[8] = a4;
    v11 = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
    v10[6] = v11;
    memcpy(v11, a3, 16 * a4);
    v10[9] = a4;
    v10[10] = -1;
    if (a4)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    v10[11] = a4 - 1;
    v10[12] = v12;
    v10[13] = a4;
    v10[14] = -1;
    *(v10 + 60) = 257;
    v13 = malloc_type_calloc(1uLL, 0x190uLL, 0x10E00409D72FF36uLL);
    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    *v13 = v10;
    v13[1] = v14;
    v13[4] = malloc_type_calloc(0x5AuLL, 8uLL, 0x2004093837F09uLL);
    v13[6] = 90;
    DDTokenCacheClear(v13);
  }

  else
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v15 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1BCFDD000, v15, OS_LOG_TYPE_ERROR, "DD custom tokenizer creation failed", v17, 2u);
    }

    v13 = 0;
  }

  *(a1 + 40) = v13;
  result = v13 != 0;
  *(a1 + 236) = result;
  return result;
}

CFArrayRef DDScannerCopyResultsCheckOverlap(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1989;
  }

  else
  {
    v2 = 0;
  }

  return DDScannerCopyResultsWithOptions(a1, v2);
}

uint64_t DDScannerIsCancelled(uint64_t result)
{
  if (result)
  {
    return *(result + 232) & 1;
  }

  return result;
}

void DDScannerSetProgressReportingBlock(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 216);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 216) = 0;
  }

  if (aBlock)
  {
    *(a1 + 216) = _Block_copy(aBlock);
  }
}

void DDScannerSetQOS(uint64_t a1, int a2)
{
  if (DDScannerSetQOS_onceToken != -1)
  {
    dispatch_once(&DDScannerSetQOS_onceToken, &__block_literal_global_327);
  }

  if (!DDScannerSetQOS_inWebProcess)
  {
    *(a1 + 248) = a2;
  }
}

BOOL DDScannerHasCapabilities(int a1, CFArrayRef theArray)
{
  v12 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (CFStringCompare(ValueAtIndex, @"dynamicLookup", 0))
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v7 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v11 = ValueAtIndex;
            _os_log_error_impl(&dword_1BCFDD000, v7, OS_LOG_TYPE_ERROR, "Capability not known: %@", buf, 0xCu);
          }
        }

        else
        {
          ++v4;
        }
      }
    }

    result = Count == v4;
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void DDScannerEnableOptionalSource(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2 != 8)
  {
    v4 = *(a1 + 200);
    v5 = a3 ? v4 | a2 : v4 & ~a2;
    if (v5 != v4)
    {
      if (!a3)
      {
        if (a2 > 3)
        {
          if (a2 == 4)
          {
            goto LABEL_15;
          }

          if (a2 == 128)
          {
            LODWORD(a2) = 6;
            goto LABEL_15;
          }
        }

        else
        {
          if (a2 == 1)
          {
LABEL_15:
            _DDScannerDestroyOptionalLookupTable(a1, a2);
            goto LABEL_16;
          }

          if (a2 == 2)
          {
            _DDScannerDestroyOptionalLookupTable(a1, 2);
            LODWORD(a2) = 3;
            goto LABEL_15;
          }
        }
      }

LABEL_16:
      *(a1 + 200) = v5;
      *(a1 + 136) = 0;
    }
  }
}

void DDScannerSetClientTables(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  if (a1)
  {
    if (*(a1 + 128))
    {
      DDScannerSetPrebuiltClientTable(a1, 0);
    }

    else
    {
      _DDScannerDestroyOptionalLookupTable(a1, 4);
    }

    DDValidateOptionalSourceTableCount(5, &v16);
    if (a2)
    {
      if (v16)
      {
        if ((*(a1 + 200) & 4) != 0)
        {
          v17 = v16;
          DDValidateOptionalSourceTableCount(5, &v17);
          v9 = v17;
          if (v17)
          {
            v10 = DDLookupTableCreate();
            if (v10)
            {
              v11 = v10;
              _DDSourceUpdateSourceWithContent(v10, a2, a3, a4, v9);
              FinalizedSourceContent = DDSourceCreateFinalizedSourceContent(v11);
              CFRelease(v11);
              if (FinalizedSourceContent)
              {
                BytePtr = CFDataGetBytePtr(FinalizedSourceContent);
                Length = CFDataGetLength(FinalizedSourceContent);
                v15 = DDLookupTableCreateFromCacheData(BytePtr, Length, 0, 0);
                *(a1 + 144) = FinalizedSourceContent;
                *(a1 + 104) = v15;
              }
            }
          }
        }
      }
    }
  }
}

const __CFString *DDScannerSetPrebuiltClientTable(const __CFString *result, CFStringRef theString2)
{
  if (result)
  {
    v3 = result;
    result = result[4].isa;
    if (theString2)
    {
      if (result)
      {
        result = CFStringCompare(result, theString2, 0);
        if (!result)
        {
LABEL_13:
          *(v3 + 136) = 0;
          return result;
        }
      }
    }

    else if (!result)
    {
      return result;
    }

    _DDScannerDestroyOptionalLookupTable(v3, 4);
    v4 = *(v3 + 128);
    if (v4)
    {
      CFRelease(v4);
    }

    if (theString2)
    {
      result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString2);
    }

    else
    {
      result = 0;
    }

    *(v3 + 128) = result;
    goto LABEL_13;
  }

  return result;
}

CFHashCode _DDResultCFHash(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return CFHash(v1);
  }

  else
  {
    return 1;
  }
}

uint64_t _DDResultCFEqual(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = DDTypeRegister(&DDResultGetTypeID_typeID);
  if (CFGetTypeID(a1) == v4 && CFGetTypeID(a2) == v4)
  {
    if ((*(a2 + 16) ^ *(a1 + 16)) >> 16 || (*(a1 + 24) ^ *(a2 + 24)) >> 16)
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 64);
    v6 = *(a2 + 64);
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      result = CFEqual(v5, v6);
    }

    else
    {
      result = v6 == 0;
    }

    if (!result)
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 80);
    v11 = *(a2 + 80);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_12;
      }

      result = CFEqual(v10, v11);
    }

    else
    {
      result = v11 == 0;
    }

    if (!result)
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      Count = CFArrayGetCount(v12);
    }

    else
    {
      Count = 0;
    }

    v14 = *(a2 + 56);
    if (v14)
    {
      v14 = CFArrayGetCount(v14);
    }

    if (v14 == Count)
    {
      if (Count < 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 0;
        for (i = 0; i != Count; v15 = i >= Count)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
          v18 = CFArrayGetValueAtIndex(*(a2 + 56), i);
          if (!CFEqual(ValueAtIndex, v18))
          {
            break;
          }

          ++i;
        }
      }

      result = v15;
      goto LABEL_13;
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v8 = DDLogHandle_error_log_handle;
  result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v19 = 138412546;
    v20 = a1;
    v21 = 2112;
    v22 = a2;
    _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "type mismatch when calling _DDResultCFEqual on %@ and %@", &v19, 0x16u);
    goto LABEL_12;
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DDResultCreateEmpty()
{
  v0 = DDTypeRegister(&DDResultGetTypeID_typeID);

  return DDTypeCreateInstance_(0, v0, 0x60uLL);
}

void DDResultSetType(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 64);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 64) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

CFMutableArrayRef DDResultSetSubResults(uint64_t a1, CFArrayRef theArray)
{
  result = *(a1 + 56);
  if (result != theArray)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theArray)
    {
      result = CFArrayCreateMutableCopy(0, 0, theArray);
    }

    *(a1 + 56) = result;
  }

  return result;
}

void DDResultRemoveSubresultWithType(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 56);
  Count = CFArrayGetCount(v3);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      if (a2)
      {
        if (ValueAtIndex && _typesAreEqual(ValueAtIndex[8], a2))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(v3, v6);
  }
}

void DDResultAddSubresultSorted(uint64_t a1, void *a2)
{
  Mutable = *(a1 + 56);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
    *(a1 + 56) = Mutable;
  }

  v5 = a2[4];
  Count = CFArrayGetCount(Mutable);
  if (Count < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    while (*(CFArrayGetValueAtIndex(*(a1 + 56), v7) + 4) <= v5)
    {
      if (Count == ++v7)
      {
        goto LABEL_10;
      }
    }
  }

  if (v7 == Count)
  {
LABEL_10:
    v8 = *(a1 + 56);

    CFArrayAppendValue(v8, a2);
  }

  else
  {
    v9 = *(a1 + 56);

    CFArrayInsertValueAtIndex(v9, v7, a2);
  }
}

uint64_t DDResultGetValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 80);
    if (!result)
    {
      return *(v1 + 72);
    }
  }

  return result;
}

uint64_t DDResultGetMatchedString(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void DDResultSetContextualData(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 88);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 88) = 0;
      }

      if (cf)
      {
        v5 = CFGetTypeID(cf);
        if (v5 == CFDictionaryGetTypeID())
        {
          *(a1 + 88) = CFDictionaryCreateMutableCopy(0, 0, cf);
        }
      }
    }
  }
}

void DDResultSetTestUrlificationRange(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2;
    if (a2 != -1)
    {
      if (!*(a1 + 88))
      {
        *(a1 + 88) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v9 = a3;
      valuePtr = v3;
      v6 = *MEMORY[0x1E695E480];
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v8 = CFNumberCreate(v6, kCFNumberIntType, &v9);
      CFDictionarySetValue(*(a1 + 88), @"urlificationBegin", v7);
      CFDictionarySetValue(*(a1 + 88), @"urlificationLength", v8);
      CFRelease(v7);
      CFRelease(v8);
    }
  }
}

uint64_t DDResultGetTestUrlificationRange(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 88);
  if (v2 && ((Value = CFDictionaryGetValue(v2, @"urlificationBegin"), v4 = CFDictionaryGetValue(*(a1 + 88), @"urlificationLength"), Value) ? (v5 = v4 == 0) : (v5 = 1), !v5 && (v6 = v4, valuePtr = 0, CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4)) && CFNumberGetValue(v6, kCFNumberIntType, &valuePtr)))
  {
    return SHIDWORD(valuePtr);
  }

  else
  {
    return -1;
  }
}

void DDResultAppendContextualData(uint64_t a1, void *value, void *key)
{
  if (a1 && key)
  {
    Mutable = *(a1 + 88);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(a1 + 88) = Mutable;
    }

    CFDictionarySetValue(Mutable, key, value);
  }
}

const void *DDResultGetContextualDataForKey(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 88)) != 0)
  {
    return CFDictionaryGetValue(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t DDResultGetContextualData(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

float DDResultGetContextualFloat(uint64_t a1)
{
  ValueAtIndex = a1;
  if (*(a1 + 104))
  {
    return *(ValueAtIndex + 27);
  }

  v3 = *(a1 + 56);
  if (v3 && CFArrayGetCount(v3) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(*(ValueAtIndex + 7), 0), *(ValueAtIndex + 104)))
  {
    return *(ValueAtIndex + 27);
  }

  else
  {
    return NAN;
  }
}

uint64_t DDResultHasContextualFloat(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 104))
    {
      return 1;
    }

    else
    {
      result = *(result + 56);
      if (result)
      {
        if (CFArrayGetCount(result) == 1)
        {
          result = CFArrayGetValueAtIndex(*(v1 + 56), 0);
          if (result)
          {
            return *(result + 104) != 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const __CFString **DDResultGetCountryCode(const __CFString **result)
{
  if (result)
  {
    v1 = result;
    if (_typesAreEqual(result[8], @"FullAddress"))
    {
      result = _DDResultGetCountryCodeForSubresult(v1, @"Country");
      if (!result)
      {
        result = _DDResultGetCountryCodeForSubresult(v1, @"State");
        if (!result)
        {
          result = _DDResultGetCountryCodeForSubresult(v1, @"ZipCode");
          if (!result)
          {
            return _DDResultGetCountryCodeForSubresult(v1, @"City");
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFString **_DDResultGetCountryCodeForSubresult(uint64_t a1, const __CFString *a2)
{
  result = DDResultGetSubresultWithType(a1, a2);
  if (result)
  {
    result = DDResultGetSubresultWithType(result, @"CountryCode");
    if (result)
    {
      v3 = result;
      result = result[10];
      if (!result)
      {
        return v3[9];
      }
    }
  }

  return result;
}

uint64_t _DDGetRelevantSubResultRangeForResult(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return -1;
  }

  Count = CFArrayGetCount(*(a1 + 56));
  if (Count < 1)
  {
    return -1;
  }

  v3 = Count;
  v4 = 0;
  v5 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    v7 = *(ValueAtIndex + 8);
    if (v7)
    {
      v8 = ValueAtIndex;
      if (_typesAreEqual(*(ValueAtIndex + 8), @"RelativeDay"))
      {
        return -1;
      }

      v10 = v8[4];
      v9 = v8[5];
      if (_typesAreEqual(v7, @"Date") || _typesAreEqual(v7, @"AbsoluteDate") || _typesAreEqual(v7, @"RelativeDayOfWeek"))
      {
        v11 = _DDGetRelevantSubResultRangeForResult(v8);
        if (v11 == -1)
        {
          return -1;
        }

        v10 = v11;
      }

      if (v5 == -1)
      {
        v5 = v10;
      }
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

dispatch_queue_t __DDResultGetCategory_block_invoke_4()
{
  result = dispatch_queue_create("com.apple.datadetectors.Classify.Events", 0);
  DDResultGetCategory_sQueue_75 = result;
  return result;
}

dispatch_queue_t __DDResultGetCategory_block_invoke_2()
{
  result = dispatch_queue_create("com.apple.datadetectors.Classify.Links", 0);
  DDResultGetCategory_sQueue = result;
  return result;
}

CFSetRef __DDResultGetCategory_block_invoke()
{
  values[11] = *MEMORY[0x1E69E9840];
  values[0] = @"BonjourAddress";
  values[1] = @"Email";
  values[2] = @"IPAddress";
  values[3] = @"HttpURL";
  values[4] = @"WebURL";
  values[5] = @"MapsURL";
  values[6] = @"MailURL";
  values[7] = @"FileURL";
  values[8] = @"DirtyFileURL";
  values[9] = @"GenericURL";
  values[10] = @"IMScreenName";
  v0 = MEMORY[0x1E695E9F8];
  DDResultGetCategory_urlSet = CFSetCreate(0, values, 11, MEMORY[0x1E695E9F8]);
  v3[0] = @"Date";
  v3[1] = @"DateTime";
  v3[2] = @"Time";
  v3[3] = @"DateDuration";
  v3[4] = @"TimeDuration";
  result = CFSetCreate(0, v3, 5, v0);
  DDResultGetCategory_eventSet = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFString *DDResultGetQueryRangeForURLification(uint64_t a1)
{
  v5 = 0;
  v1 = _DDGetRelevantResultsForUrlificationRange(a1, &v5);
  v2 = v5;
  if (!v5)
  {
    v2 = v1;
  }

  v3 = v2[3];
  return v1[2];
}

uint64_t DDResultSetAbsoluteRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

CFIndex DDResultOffsetAbsoluteRange(CFIndex result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = *(result + 32);
    if (v2 + a2 < 0 != __OFADD__(v2, a2))
    {
      a2 = -v2;
    }

    *(result + 32) = a2 + v2;
    return DDResultOffsetAbsoluteRangesNoCheck(*(result + 56), a2);
  }

  return result;
}

CFIndex DDResultOffsetAbsoluteRangesNoCheck(CFIndex result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v4 = result;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        ValueAtIndex[4] += a2;
        result = DDResultOffsetAbsoluteRangesNoCheck(ValueAtIndex[7], a2);
      }
    }
  }

  return result;
}

void DDResultSetMatchedString(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 72);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 72) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

const __CFArray *DDResultGetSubresultWithTypePath(uint64_t a1, const __CFString *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @".");
      if (result)
      {
        v4 = result;
        Count = CFArrayGetCount(result);
        if (Count >= 1)
        {
          v6 = Count;
          v7 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, v7 - 1);
            SubresultWithType = DDResultGetSubresultWithType(a1, ValueAtIndex);
            a1 = SubresultWithType;
            if (v7 >= v6)
            {
              break;
            }

            ++v7;
          }

          while (SubresultWithType);
        }

        CFRelease(v4);
        return a1;
      }
    }
  }

  return result;
}

CFArrayRef DDResultValueContains(CFArrayRef result, const __CFString *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = *(result + 10);
  if (!v3)
  {
    v3 = *(result + 9);
    if (!v3)
    {
      return 0;
    }
  }

  if (CFStringFind(v3, @"-", 0).location == -1)
  {
    return (CFStringCompare(v3, a2, 0) == kCFCompareEqualTo);
  }

  result = CFStringCreateArrayBySeparatingStrings(0, v3, @"-");
  if (!result)
  {
    return result;
  }

  v4 = result;
  Count = CFArrayGetCount(result);
  if (Count < 1)
  {
LABEL_10:
    CFRelease(v4);
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    if (CFStringCompare(ValueAtIndex, a2, 0) == kCFCompareEqualTo)
    {
      break;
    }

    if (v6 == ++v7)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v4);
  return 1;
}

uint64_t DDMLClassificationForType(uint64_t a1)
{
  if (CFStringHasPrefix(*(a1 + 64), @"FullAddress"))
  {
    return 0;
  }

  if (_typesAreEqual(*(a1 + 64), @"FlightInformation"))
  {
    return 3;
  }

  if (_typesAreEqual(*(a1 + 64), @"Money"))
  {
    return 4;
  }

  if (_typesAreEqual(*(a1 + 64), @"PhysicalAmount"))
  {
    return 6;
  }

  if (_typesAreEqual(*(a1 + 64), @"Email"))
  {
    return 9;
  }

  if (_typesAreEqual(*(a1 + 64), @"PhoneNumber"))
  {
    return 8;
  }

  if (_typesAreEqual(*(a1 + 64), @"Location"))
  {
    return 1;
  }

  if (DDResultGetCategory(a1) == 4)
  {
    return 5;
  }

  return 10;
}

uint64_t DDResultTypeIsMLSupported(uint64_t a1, const __CFArray *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    valuePtr = DDMLClassificationForType(a1);
    if (valuePtr == 10)
    {
      return 0;
    }

    v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v4)
    {
      return 0;
    }

    else
    {
      v5 = v4;
      v8.length = CFArrayGetCount(a2);
      v8.location = 0;
      v2 = CFArrayContainsValue(a2, v8, v5);
      CFRelease(v5);
    }
  }

  return v2;
}

uint64_t DDResultGetOptionalSourceTableIndex(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 64);
  if (CFEqual(v2, @"GameCenter"))
  {
    return 0;
  }

  if (CFEqual(v2, @"Parsec") || CFEqual(v2, @"Client"))
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      if (CFArrayGetCount(v4) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
        if (ValueAtIndex)
        {
          v6 = *(ValueAtIndex + 8);
          Length = CFStringGetLength(v6);
          if (Length >= 1)
          {
            CharacterAtIndex = CFStringGetCharacterAtIndex(v6, Length - 1);
            if ((CharacterAtIndex - 58) > 0xFFFFFFF5)
            {
              return CharacterAtIndex & 0xF;
            }
          }
        }
      }
    }
  }

  return -1;
}

BOOL DDResultHasProperties(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    return (a2 & ~*(result + 96)) == 0;
  }

  return result;
}

uint64_t DDResultSetProperties(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(result + 96) | a2;
  }

  else
  {
    v3 = *(result + 96) & ~a2;
  }

  *(result + 96) = v3;
  return result;
}

uint64_t DDResultProximitySort(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  v5 = *(a3 + 32);
  v6 = v5;
  v7 = v5 + *(a3 + 40);
  v8 = v3 + *(a1 + 40);
  if (v7 >= v8)
  {
    v9 = v3 + *(a1 + 40);
  }

  else
  {
    v9 = v5 + *(a3 + 40);
  }

  v10 = v3 <= v5 && v5 < v8;
  v11 = *(a3 + 32);
  if ((v10 || (v5 <= v3 ? (v12 = v3 < v7) : (v12 = 0), v11 = *(a1 + 32), v12)) && v9 != v11)
  {
    v14 = 0;
  }

  else
  {
    v13 = v5 - v8;
    if (v5 > v3)
    {
      v14 = v13;
    }

    else
    {
      v14 = v3 - v7;
    }
  }

  v15 = v4 + *(a2 + 40);
  if (v7 >= v15)
  {
    v16 = v4 + *(a2 + 40);
  }

  else
  {
    v16 = v5 + *(a3 + 40);
  }

  v17 = v4 <= v5 && v5 < v15;
  if ((v17 || v5 <= v4 && (v6 = *(a2 + 32), v4 < v7)) && v16 != v6)
  {
    v19 = 0;
  }

  else
  {
    v18 = v4 - v7;
    if (v5 > v4)
    {
      v19 = v5 - v15;
    }

    else
    {
      v19 = v18;
    }
  }

  v20 = v14 <= v19;
  v21 = v14 < v19 || a1 == a3;
  v22 = !v20 || a2 == a3;
  v23 = v21 << 63 >> 63;
  if (v22)
  {
    return 1;
  }

  else
  {
    return v23;
  }
}

uint64_t DDResultRangeCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = v3 == v5;
  if (v3 < v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  v8 = v2 < v4;
  if (v2 == v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1;
  }

  if (v8)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

void *DDResultCreateFromXMLNode(const xmlNode *a1)
{
  if (!xmlHasProp(a1, "begin") || !xmlHasProp(a1, "end"))
  {
    return 0;
  }

  if (xmlHasProp(a1, "begin") && (Prop = xmlGetProp(a1, "begin")) != 0)
  {
    v3 = Prop;
    v26 = 0;
    sscanf(Prop, "%d", &v26);
    free(v3);
    v4 = v26;
  }

  else
  {
    v4 = 0;
  }

  if (xmlHasProp(a1, "end") && (v5 = xmlGetProp(a1, "end")) != 0)
  {
    v6 = v5;
    v26 = 0;
    sscanf(v5, "%d", &v26);
    free(v6);
    v7 = v26;
  }

  else
  {
    v7 = 0;
  }

  v8 = CFStringCreateWithCString(0, a1->name, 0x8000100u);
  v9 = DDResultCreate(v8, v4 << 32, v7 << 32);
  CFRelease(v8);
  v9[4] = v4;
  v9[5] = v7 - v4;
  if (xmlHasProp(a1, "urlificationBegin") && xmlHasProp(a1, "urlificationEnd"))
  {
    if (xmlHasProp(a1, "urlificationBegin"))
    {
      v10 = xmlGetProp(a1, "urlificationBegin");
      v11 = v10;
      if (v10)
      {
        v26 = 0;
        sscanf(v10, "%d", &v26);
        free(v11);
        v11 = v26;
      }
    }

    else
    {
      v11 = 0;
    }

    if (xmlHasProp(a1, "urlificationEnd") && (v12 = xmlGetProp(a1, "urlificationEnd")) != 0)
    {
      v13 = v12;
      v26 = 0;
      sscanf(v12, "%d", &v26);
      free(v13);
      v14 = v26;
    }

    else
    {
      v14 = 0;
    }

    DDResultSetTestUrlificationRange(v9, v11, v14 - v11);
  }

  if (xmlHasProp(a1, "score"))
  {
    if (xmlHasProp(a1, "score") && (v15 = xmlGetProp(a1, "score")) != 0)
    {
      v16 = v15;
      v26 = 0;
      sscanf(v15, "%d", &v26);
      free(v16);
      v17 = v26;
    }

    else
    {
      v17 = 0;
    }

    v9[6] = v17;
  }

  if (xmlHasProp(a1, "value"))
  {
    v18 = xmlGetProp(a1, "value");
    v19 = CFStringCreateWithCString(0, v18, 0x8000100u);
    free(v18);
    if (v19)
    {
      DDResultSetValue(v9, v19);
      CFRelease(v19);
    }
  }

  if (xmlHasProp(a1, "id"))
  {
    v20 = xmlGetProp(a1, "id");
    v21 = CFStringCreateWithCString(0, v20, 0x8000100u);
    free(v20);
    if (v21)
    {
      DDResultAppendContextualData(v9, v21, @"C");
      CFRelease(v21);
    }
  }

  for (i = a1->children; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v23 = DDResultCreateFromXMLNode(i);
      if (!v23)
      {
        CFRelease(v9);
        return 0;
      }

      v24 = v23;
      DDResultAddSubresult(v9, v23);
      CFRelease(v24);
    }
  }

  return v9;
}

xmlNode *DDResultCreateVerboseXMLRepresentation(uint64_t a1, const __CFString *a2, int a3)
{
  Length = CFStringGetLength(*(a1 + 64));
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = CFStringGetLength(v8);
    v10 = CFStringGetMaximumSizeForEncoding(v9, 0x8000100u) + 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a1 + 88);
  if (!v11)
  {
    v54 = 0;
    theString = 0;
    v53 = 0;
    v17 = 1;
    v58 = 1;
    v15 = 1;
    v16 = 1;
LABEL_18:
    v57 = 1;
    v24 = 1;
    goto LABEL_19;
  }

  Value = CFDictionaryGetValue(v11, @"C");
  v13 = Value;
  if (Value)
  {
    v14 = CFStringGetLength(Value);
    v15 = 0;
    v16 = CFStringGetMaximumSizeForEncoding(v14, 0x8000100u) + 1;
  }

  else
  {
    v15 = 1;
    v16 = 1;
  }

  v18 = *(a1 + 88);
  theString = v13;
  if (!v18)
  {
    v53 = 0;
    v54 = 0;
    v17 = 1;
    v58 = 1;
    goto LABEL_18;
  }

  v19 = CFDictionaryGetValue(v18, @"U");
  if (v19)
  {
    v54 = v19;
    v20 = CFStringGetLength(v19);
    v58 = 0;
    v17 = CFStringGetMaximumSizeForEncoding(v20, 0x8000100u) + 1;
  }

  else
  {
    v54 = 0;
    v58 = 1;
    v17 = 1;
  }

  v21 = *(a1 + 88);
  if (!v21)
  {
    v53 = 0;
    goto LABEL_18;
  }

  v22 = CFDictionaryGetValue(v21, @"D");
  if (v22)
  {
    v53 = v22;
    v23 = CFStringGetLength(v22);
    v57 = 0;
    v24 = CFStringGetMaximumSizeForEncoding(v23, 0x8000100u) + 1;
  }

  else
  {
    v53 = 0;
    v24 = 1;
    v57 = 1;
  }

LABEL_19:
  v25 = 128;
  if (MaximumSizeForEncoding >= 128)
  {
    v25 = MaximumSizeForEncoding + 1;
  }

  if (v25 <= v10)
  {
    v25 = v10;
  }

  if (v25 <= v16)
  {
    v25 = v16;
  }

  if (v25 <= v17)
  {
    v25 = v17;
  }

  if (v25 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = malloc_type_malloc(v26, 0x100004077774924uLL);
  if (!CFStringGetCString(*(a1 + 64), v27, v26, 0x8000100u))
  {
    free(v27);
    return 0;
  }

  v56 = v15;
  v28 = xmlNewNode(0, v27);
  snprintf(v27, v26, "%d", *(a1 + 20));
  xmlNewProp(v28, "begin", v27);
  snprintf(v27, v26, "%d", *(a1 + 28));
  xmlNewProp(v28, "end", v27);
  if (a3)
  {
    v30 = *(a1 + 32);
    v29 = *(a1 + 40);
    RangeForURLification = DDResultGetRangeForURLification(a1);
    v33 = RangeForURLification;
    v34 = v32;
    if (v30 != RangeForURLification || v29 != v32)
    {
      usedBufLen = 0;
      v35 = *MEMORY[0x1E695E480];
      v36 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%ld", RangeForURLification);
      v61.length = CFStringGetLength(v36);
      v61.location = 0;
      CFStringGetBytes(v36, v61, 0x8000100u, 0x2Du, 0, v27, v26, &usedBufLen);
      *(v27 + usedBufLen) = 0;
      CFRelease(v36);
      xmlNewProp(v28, "urlificationBegin", v27);
      v37 = CFStringCreateWithFormat(v35, 0, @"%ld", v33 + v34);
      v62.length = CFStringGetLength(v37);
      v62.location = 0;
      CFStringGetBytes(v37, v62, 0x8000100u, 0x2Du, 0, v27, v26, &usedBufLen);
      *(v27 + usedBufLen) = 0;
      CFRelease(v37);
      xmlNewProp(v28, "urlificationEnd", v27);
    }
  }

  if (*(a1 + 48))
  {
    snprintf(v27, v26, "%ld", *(a1 + 48));
    xmlNewProp(v28, "score", v27);
  }

  v38 = *(a1 + 80);
  if (v38)
  {
    if (!CFStringGetCString(v38, v27, v26, 0x8000100u))
    {
      goto LABEL_69;
    }

    xmlNewProp(v28, "value", v27);
  }

  if (*(a1 + 104))
  {
    v39 = CFStringCreateWithFormat(0, 0, @"%f", *(a1 + 108));
    if (v39)
    {
      v40 = v39;
      if (!CFStringGetCString(v39, v27, v26, 0x8000100u))
      {
        CFRelease(v40);
        goto LABEL_69;
      }

      xmlNewProp(v28, "floatMeta", v27);
      CFRelease(v40);
    }
  }

  if ((v56 & 1) == 0)
  {
    if (!CFStringGetCString(theString, v27, v26, 0x8000100u))
    {
      goto LABEL_69;
    }

    xmlNewProp(v28, "ABUID", v27);
  }

  if (v58)
  {
    goto LABEL_50;
  }

  if (!CFStringGetCString(v54, v27, v26, 0x8000100u))
  {
LABEL_69:
    free(v27);
    xmlFreeNode(v28);
    return 0;
  }

  xmlNewProp(v28, "UUID", v27);
LABEL_50:
  if (v57)
  {
    goto LABEL_53;
  }

  if (!CFStringGetCString(v53, v27, v26, 0x8000100u))
  {
    goto LABEL_69;
  }

  xmlNewProp(v28, "Domain", v27);
LABEL_53:
  free(v27);
  v42 = *(a1 + 32);
  v41 = *(a1 + 40);
  v43 = *(a1 + 56);
  if (v43)
  {
    v59 = v41;
    v44 = 0;
    v45 = v42;
    while (v44 < CFArrayGetCount(v43))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v43, v44);
      v47 = ValueAtIndex[4];
      VerboseXMLRepresentation = DDResultCreateVerboseXMLRepresentation();
      if (a2)
      {
        if (v47 > v45)
        {
          _DDResultAppendXMLTextNode(v28, a2, v45, v47 - v45);
        }
      }

      xmlAddChild(v28, VerboseXMLRepresentation);
      v45 = ValueAtIndex[5] + ValueAtIndex[4];
      ++v44;
    }

    if (a2)
    {
      v41 = v59 + v42 - v45;
      if (v59 + v42 > v45)
      {
        v49 = v28;
        v50 = a2;
        v51 = v45;
LABEL_67:
        _DDResultAppendXMLTextNode(v49, v50, v51, v41);
      }
    }
  }

  else if (a2)
  {
    v49 = v28;
    v50 = a2;
    v51 = v42;
    goto LABEL_67;
  }

  return v28;
}

void _DDResultAppendXMLTextNode(xmlNode *a1, CFStringRef theString, CFIndex a3, CFIndex a4)
{
  if (CFStringGetLength(theString) >= a3 + a4)
  {
    v14.location = a3;
    v14.length = a4;
    v8 = CFStringCreateWithSubstring(0, theString, v14);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v8);
    CFRelease(v8);
    CFStringTrimWhitespace(MutableCopy);
    if (CFStringGetLength(MutableCopy))
    {
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(a4, 0x8000100u);
      v11 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      CFStringGetCString(MutableCopy, v11, MaximumSizeForEncoding + 1, 0x8000100u);
      v12 = xmlNewText(v11);
      xmlAddChild(a1, v12);
      free(v11);
    }

    CFRelease(MutableCopy);
  }
}

CFStringRef DDResultCreateVerboseXMLDescription(uint64_t a1, const __CFString *a2, int a3)
{
  VerboseXMLRepresentation = DDResultCreateVerboseXMLRepresentation(a1, a2, a3);
  DescriptionOfXMLNode = _DDResultCreateDescriptionOfXMLNode(VerboseXMLRepresentation);
  xmlFreeNode(VerboseXMLRepresentation);
  return DescriptionOfXMLNode;
}

CFStringRef _DDResultCreateDescriptionOfXMLNode(xmlNode *a1)
{
  v2 = xmlBufferCreate();
  xmlNodeDump(v2, a1->doc, a1, 0, 1);
  v3 = xmlBufferContent(v2);
  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  xmlBufferFree(v2);
  return v4;
}

CFStringRef DDResultCreateVerboseXMLDescriptionFromResults(const __CFArray *a1, const __CFString *a2, int a3)
{
  v6 = xmlNewNode(0, "results");
  for (i = 0; i < CFArrayGetCount(a1); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    VerboseXMLRepresentation = DDResultCreateVerboseXMLRepresentation(ValueAtIndex, a2, a3);
    xmlAddChild(v6, VerboseXMLRepresentation);
  }

  DescriptionOfXMLNode = _DDResultCreateDescriptionOfXMLNode(v6);
  xmlFreeNode(v6);
  return DescriptionOfXMLNode;
}

uint64_t DDResultIsEqualToUnitTestResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 16) ^ *(a1 + 16)) >> 16)
  {
    return 0;
  }

  if ((*(a1 + 24) ^ *(a2 + 24)) >> 16)
  {
    return 0;
  }

  v7 = *(a1 + 64);
  v8 = *(a2 + 64);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    result = CFEqual(v7, v8);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = v8 == 0;
    if (v8)
    {
      return result;
    }
  }

  v9 = *(a1 + 80);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = *(a2 + 80);
  if (!v10)
  {
    v10 = *(a2 + 72);
    if (!v10)
    {
      return 0;
    }
  }

  result = CFEqual(v9, v10);
  if (!result)
  {
    return result;
  }

LABEL_15:
  v11 = *(a1 + 56);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
  }

  else
  {
    Count = 0;
  }

  v13 = *(a2 + 56);
  if (v13)
  {
    v13 = CFArrayGetCount(v13);
  }

  if (v13 != Count)
  {
    return 0;
  }

  if (!a3 || ((TestUrlificationRange = DDResultGetTestUrlificationRange(a1), TestUrlificationRange == -1) ? (v16 = *(a1 + 32), v17 = *(a1 + 40)) : (v16 = TestUrlificationRange, v17 = v15), (RangeForURLification = DDResultGetRangeForURLification(a2), result = 0, v16 == RangeForURLification) && v17 == v18))
  {
    v20 = Count - 1;
    if (Count < 1)
    {
      return 1;
    }

    else
    {
      v21 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v21);
        v23 = CFArrayGetValueAtIndex(*(a2 + 56), v21);
        result = DDResultIsEqualToUnitTestResult(ValueAtIndex, v23, a3);
        if (result)
        {
          v24 = v20 == v21;
        }

        else
        {
          v24 = 1;
        }

        ++v21;
      }

      while (!v24);
    }
  }

  return result;
}

CFStringRef *DDResultGetSignatureContainingResult(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = Count;
    v5 = 0;
    do
    {
      v7 = *(a2 + 32);
      if (*(CFArrayGetValueAtIndex(a1, v5 + v6 / 2) + 4) > v7)
      {
        v6 /= 2;
      }

      else
      {
        v5 += v6 / 2;
        v6 -= v6 / 2;
      }
    }

    while (v6 != 1);
  }

  result = CFArrayGetValueAtIndex(a1, v5);
  if (result)
  {
    v9 = result;
    if (_typesAreEqual(result[8], @"SignatureBlock"))
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DDResultCreateCopy(uint64_t a1)
{
  v2 = DDTypeRegister(&DDResultGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v2, 0x60uLL);
  *(Instance + 96) = *(a1 + 96);
  *(Instance + 16) = *(a1 + 16);
  *(Instance + 32) = *(a1 + 32);
  v4 = *(a1 + 56);
  *(Instance + 48) = *(a1 + 48);
  if (v4)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    for (i = 0; i < CFArrayGetCount(*(a1 + 56)); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
      Copy = DDResultCreateCopy(ValueAtIndex);
      CFArrayAppendValue(Mutable, Copy);
      CFRelease(Copy);
    }

    *(Instance + 56) = Mutable;
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    *(Instance + 72) = CFRetain(v9);
  }

  *(Instance + 64) = CFRetain(*(a1 + 64));
  DDResultSetValue(Instance, *(a1 + 80));
  DDResultSetContextualData(Instance, *(a1 + 88));
  return Instance;
}

void *DDResultGetParsecUUID(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (!_typesAreEqual(*(a1 + 64), @"Parsec"))
    {
      return 0;
    }

    v1 = v1[11];
    if (v1)
    {
      v2 = CFGetTypeID(v1);
      if (v2 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      Value = CFDictionaryGetValue(v1, @"U");
      if (!Value)
      {
        return 0;
      }

      v1 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 != CFStringGetTypeID())
      {
        return 0;
      }
    }
  }

  return v1;
}

void *DDResultGetParsecRawDomain(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (!_typesAreEqual(*(a1 + 64), @"Parsec"))
    {
      return 0;
    }

    v1 = v1[11];
    if (v1)
    {
      v2 = CFGetTypeID(v1);
      if (v2 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      Value = CFDictionaryGetValue(v1, @"D");
      if (!Value)
      {
        return 0;
      }

      v1 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 != CFStringGetTypeID())
      {
        return 0;
      }
    }
  }

  return v1;
}

uint64_t DDResultGetParsecDomain(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (!_typesAreEqual(*(a1 + 64), @"Parsec"))
  {
    return 4294967294;
  }

  ParsecRawDomain = DDResultGetParsecRawDomain(a1);
  if (!ParsecRawDomain)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = ParsecRawDomain;
  if (CFEqual(ParsecRawDomain, @"ondemandmovies"))
  {
    return 0;
  }

  if (CFEqual(v3, @"tv"))
  {
    return 9;
  }

  if (CFEqual(v3, @"food"))
  {
    return 8;
  }

  if (CFEqual(v3, @"activities"))
  {
    return 7;
  }

  if (CFEqual(v3, @"apps"))
  {
    return 2;
  }

  if (CFEqual(v3, @"artists"))
  {
    return 3;
  }

  if (CFEqual(v3, @"sports"))
  {
    return 4;
  }

  if (CFEqual(v3, @"stocks"))
  {
    return 5;
  }

  if (CFEqual(v3, @"wiki"))
  {
    return 6;
  }

  if (CFEqual(v3, @"maps"))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DDLookupTableCreate()
{
  v0 = DDTypeRegister(&DDLookupTableGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v0, 0x88uLL);
  Mutable = CFDataCreateMutable(0, 0);
  *(Instance + 96) = Mutable;
  CFDataIncreaseLength(Mutable, 24);
  v3 = malloc_type_calloc(1uLL, 0x38uLL, 0x1022040E9E2EC27uLL);
  *v3 |= 0x1000u;
  v3[2] = 0;
  v3[4] = 0;
  *(Instance + 56) = v3;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  return Instance;
}

void DDLookupTableSetContextThresholds(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
  }

  if (a3 && a4 >= 1)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 8 * a4);
    v10 = 0;
    do
    {
      v11 = DDDynamicSourceTokenID(a2, v10);
      if (v11 != 1)
      {
        v12 = *(a3 + 4 * v10) & 0xFFFFFFF0;
        *&bytes[6] = 257;
        *bytes = v12;
        *&bytes[4] = v11;
        CFDataAppendBytes(Mutable, bytes, 8);
      }

      ++v10;
    }

    while (a4 != v10);
    *(a1 + 72) = Mutable;
    if (!*(a1 + 64))
    {
      v13 = malloc_type_calloc(1uLL, 0x38uLL, 0x1022040E9E2EC27uLL);
      *v13 |= 0x1000u;
      v13[2] = 0;
      v13[4] = 0;
      *(a1 + 64) = v13;
    }
  }

  else
  {
    *(a1 + 72) = 0;
  }
}

void __DDLookupTableUpdateFromExternalFile_block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = DDLookupTableCreateFromCacheData(a2, a3, 0, 0);
  }

  else
  {
    v4 = 0;
  }

  **(a1 + 32) = v4;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = v5 + 4;
    v6 = v5[4];
    if (v6)
    {
      munmap(v5[4], v6[1]);
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      v5 = *(a1 + 40);
    }

    CFRelease(v5);
  }
}

const __CFString *DDStaticLookupTableAppendString(const __CFData **a1, CFStringRef theString, int a3)
{
  Length = theString;
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1)
  {
    if (!theString)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  Mutable = CFDataCreateMutable(0, 0);
  v4 = Mutable;
  *a1 = Mutable;
  if (Length && a3 || (bytes[0] = 0, CFDataAppendBytes(Mutable, bytes, 1), Length))
  {
LABEL_7:
    if (CFStringGetCString(Length, bytes, 128, 0x8000100u) && (v8 = strlen(bytes), v8 >= 1))
    {
      v9 = v8;
      Length = CFDataGetLength(v4);
      CFDataAppendBytes(v4, bytes, v9 + 1);
    }

    else
    {
      Length = 0;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return Length;
}

void DDValidateOptionalSourceTableCount(int a1, unint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*a2 & 0x8000000000000000) != 0)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v5 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = a1;
      _os_log_error_impl(&dword_1BCFDD000, v5, OS_LOG_TYPE_ERROR, "DDCore: Bogus table count for source %d", &v9, 8u);
    }

    v4 = 0;
    goto LABEL_15;
  }

  if ((a1 - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1BD018C28[a1 - 1];
  }

  if (*a2 > v4)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v6 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v8 = *a2;
      v9 = 67109632;
      v10 = a1;
      v11 = 2048;
      v12 = v8;
      v13 = 2048;
      v14 = v4;
      _os_log_error_impl(&dword_1BCFDD000, v6, OS_LOG_TYPE_ERROR, "DDCore: Too many tables for source %d, will truncate %ld to %ld tables", &v9, 0x1Cu);
    }

LABEL_15:
    *a2 = v4;
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t DDDynamicSourceTokenID(int a1, unint64_t a2)
{
  if (a1 <= 3)
  {
    if ((a1 - 2) < 2)
    {
      v2 = a2 + 10;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v2 = a2 + 38;
      goto LABEL_13;
    }

    return 1;
  }

  if (a1 == 4)
  {
    return 28;
  }

  if (a1 != 5)
  {
    if (a1 == 6)
    {
      v2 = a2 + 20;
      goto LABEL_13;
    }

    return 1;
  }

  v2 = a2 + 30;
LABEL_13:
  if (a2 >= 0xA)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void DDSourceSetStoragePath(char *__s)
{
  v7 = *MEMORY[0x1E69E9840];
  if (altPath)
  {
    free(altPath);
    altPath = 0;
  }

  if (__s && strlen(__s) <= 0xE0)
  {
    altPath = strndup(__s, 0xE1uLL);
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v2 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = altPath;
      v3 = "Setting new source base path: %s";
LABEL_14:
      _os_log_debug_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_DEBUG, v3, &v5, 0xCu);
    }
  }

  else
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v2 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "/var/db/datadetectors";
      v3 = "Using default source base path: %s";
      goto LABEL_14;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

const UInt8 *DDSourceCreateFinalizedSourceContent(uint64_t a1)
{
  DDLookupTablePrepareToScan(a1);
  if (!*(a1 + 104))
  {
    v2 = *(a1 + 16);
    Length = CFDataGetLength(*(v2 + 120));
    BytePtr = CFDataGetBytePtr(*(v2 + 120));
    *(a1 + 136) = Length;
    CFDataAppendBytes(*(a1 + 96), BytePtr, Length);
    v5 = *(a1 + 136) + *(a1 + 140);
    if (*(a1 + 24))
    {
      v6 = CFDataGetLength(*(a1 + 96)) & 3;
      if (v6)
      {
        v7 = 4 - v6;
        CFDataIncreaseLength(*(a1 + 96), (4 - v6));
      }

      else
      {
        v7 = 0;
      }

      v9 = *(a1 + 24);
      v8 = CFDataGetLength(*(v9 + 120));
      v10 = CFDataGetBytePtr(*(v9 + 120));
      CFDataAppendBytes(*(a1 + 96), v10, v8);
    }

    else
    {
      LODWORD(v8) = 0;
      v7 = 0;
    }

    *(a1 + 144) = v8;
    *(a1 + 148) = v5 + v7;
    v11 = CFDataGetLength(*(a1 + 96));
    *(a1 + 128) = 515806;
    *(a1 + 132) = v11;
    v15.location = 0;
    v15.length = 24;
    CFDataReplaceBytes(*(a1 + 96), v15, (a1 + 128), 24);
    *(a1 + 104) = 1;
  }

  result = CFDataGetBytePtr(*(a1 + 96));
  if (result)
  {
    v13 = *(result + 1);

    return CFDataCreate(0, result, v13);
  }

  return result;
}

void _DDSourceUpdateSourceWithContent(void (*a1)(void, void, void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a5;
  if (a1 && a2)
  {
    DDValidateOptionalSourceTableCount(5, &v13);
    v9 = v13;
    if (v13 >= 1)
    {
      v10 = 0;
      do
      {
        if (a3)
        {
          v11 = *(a3 + 8 * v10);
        }

        else
        {
          v11 = 0;
        }

        v12 = *(a2 + 8 * v10);
        if (v12)
        {
          DDSourceAddDomainContent(a1, 5, v10, v12, v11);
        }

        ++v10;
      }

      while (v9 != v10);
    }

    DDLookupTableSetContextThresholds(a1, 5, a4, v9);
  }
}

void DDSourceAddDomainContent(void (*a1)(void, void, void, void), int a2, unint64_t a3, void *a4, void *a5)
{
  v11 = a3;
  if ((a2 - 1) <= 5)
  {
    DDValidateOptionalSourceTableCount(a2, &v11);
    v9 = DDDynamicSourceTokenID(a2, v11);
    if (v9 != 1)
    {
      v10 = v9;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___DDSourceAppendSourceContent_block_invoke;
      v13[3] = &unk_1E8002048;
      v13[5] = a1;
      v13[6] = v9;
      v13[4] = 0;
      _DDSourceApplyBlockOnEntryList(a4, v13);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = ___DDSourceAppendSourceContent_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_20;
      v12[4] = a1;
      v12[5] = v10;
      _DDSourceApplyBlockOnEntryList(a5, v12);
    }
  }
}

void _DDSourceApplyBlockOnEntryList(void *cf, void (**a2)(void, void, void, void))
{
  v27 = *MEMORY[0x1E69E9840];
  if (!cf || (v3 = *MEMORY[0x1E695E738], *MEMORY[0x1E695E738] == cf))
  {
LABEL_41:
    v22 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFArrayGetTypeID())
  {
    v23 = v4;
    Count = CFArrayGetCount(cf);
    if (Count >= 1)
    {
      v6 = Count + 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v6 - 2);
        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 != CFDictionaryGetTypeID())
        {
          break;
        }

        Value = CFDictionaryGetValue(ValueAtIndex, @"t");
        if (!Value)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"title");
        }

        v10 = CFDictionaryGetValue(ValueAtIndex, @"u");
        if (!v10)
        {
          v10 = CFDictionaryGetValue(ValueAtIndex, @"uuid");
        }

        v11 = CFDictionaryGetValue(ValueAtIndex, @"s");
        if (!v11)
        {
          v11 = CFDictionaryGetValue(ValueAtIndex, @"score");
        }

        v12 = CFDictionaryGetValue(ValueAtIndex, @"f");
        if (!Value)
        {
          goto LABEL_31;
        }

        v13 = v12;
        v14 = CFGetTypeID(Value);
        if (v14 != CFStringGetTypeID())
        {
          goto LABEL_31;
        }

        if (v11)
        {
          v15 = CFGetTypeID(v11);
          if (v15 == CFNumberGetTypeID())
          {
            if (v10 | v13)
            {
              v16 = ValueAtIndex;
            }

            else
            {
              v16 = v11;
            }

            (a2)[2](a2, Value, v16, 0);
          }

          goto LABEL_31;
        }

        if (v10)
        {
          v17 = a2[2];
LABEL_21:
          v17();
        }

LABEL_31:
        CFArraySetValueAtIndex(cf, v6 - 2, v3);
        if (--v6 <= 1)
        {
          goto LABEL_41;
        }
      }

      if (v8 != CFStringGetTypeID())
      {
        if (ValueAtIndex != v3)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v18 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v26 = v23;
            _os_log_error_impl(&dword_1BCFDD000, v18, OS_LOG_TYPE_ERROR, "Unexpected table entry list type %ld (should be either strings or dictionaries)", buf, 0xCu);
          }
        }

        goto LABEL_31;
      }

      v17 = a2[2];
      goto LABEL_21;
    }

    goto LABEL_41;
  }

  if (v4 != CFDictionaryGetTypeID())
  {
    v20 = v4;
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v21 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v26 = v20;
      _os_log_error_impl(&dword_1BCFDD000, v21, OS_LOG_TYPE_ERROR, "Unexpected table entry list type %ld (should be either dictionaries{string:number(float)} or arrays[string])", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v19 = *MEMORY[0x1E69E9840];

  CFDictionaryApplyFunction(cf, _dictEntryApplier, a2);
}

void DDSourceAddDomainsNames(uint64_t a1, int a2, CFArrayRef theArray, const __CFString *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v9 = Count;
      v30 = a4;
      v31 = a1;
      v32 = &v29;
      v10 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count);
      v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v10 >= 0x200)
      {
        v12 = 512;
      }

      else
      {
        v12 = v10;
      }

      bzero(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      v13 = 0;
      v14 = *MEMORY[0x1E695E738];
      v15 = 1;
      do
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          if (ValueAtIndex == v14)
          {
            break;
          }

          v17 = ValueAtIndex;
          v18 = CFGetTypeID(ValueAtIndex);
          if (v18 != CFStringGetTypeID())
          {
            break;
          }

          v15 = 0;
          *&v11[8 * v13++] = v17;
          if (v13 == v9)
          {
            goto LABEL_14;
          }
        }

        *&v11[8 * v13++] = 0;
      }

      while (v9 != v13);
      if (v15)
      {
        goto LABEL_26;
      }

LABEL_14:
      v19 = v31;
      v20 = *(v31 + 80);
      if (v20)
      {
        CFRelease(v20);
        *(v19 + 80) = 0;
      }

      v21 = *(v19 + 88);
      v22 = v30;
      if (v21)
      {
        CFRelease(v21);
        *(v19 + 88) = 0;
      }

      if (v22)
      {
        DDStaticLookupTableAppendString((v19 + 88), v22, 1);
      }

      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v10);
      for (i = 0; i != v9; ++i)
      {
        appended = DDStaticLookupTableAppendString((v19 + 88), *&v11[8 * i], 0);
        v26 = DDDynamicSourceTokenID(a2, i);
        if (v26 != 1)
        {
          *&bytes[6] = 257;
          *bytes = appended;
          *&bytes[4] = v26;
          CFDataAppendBytes(Mutable, bytes, 8);
        }
      }

      *(v19 + 80) = Mutable;
      if (!*(v19 + 64))
      {
        v27 = malloc_type_calloc(1uLL, 0x38uLL, 0x1022040E9E2EC27uLL);
        *v27 |= 0x1000u;
        v27[2] = 0;
        v27[4] = 0;
        *(v31 + 64) = v27;
      }
    }
  }

LABEL_26:
  v28 = *MEMORY[0x1E69E9840];
}

BOOL DDSourceRemoveFile(int a1, int a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!_DDTriePathForSource(a1, v16, a3, 1, a2))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v4 = DDLogHandle_error_log_handle;
    result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_12;
    }

    v12 = 136315138;
    v13 = v16;
    v5 = "DDCore: Could not remove file %s";
    v6 = v4;
    v7 = 12;
LABEL_14:
    _os_log_error_impl(&dword_1BCFDD000, v6, OS_LOG_TYPE_ERROR, v5, &v12, v7);
    result = 0;
    goto LABEL_12;
  }

  if (!unlink(v16) || *__error() == 2)
  {
    result = 1;
    goto LABEL_12;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v8 = DDLogHandle_error_log_handle;
  result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v10 = __error();
    v11 = strerror(*v10);
    v12 = 136315394;
    v13 = v11;
    v14 = 2080;
    v15 = v16;
    v5 = "DDCore: Could not remove file (%s) %s";
    v6 = v8;
    v7 = 22;
    goto LABEL_14;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *DDStaticLookupCreateWithDynamicTrie(uint64_t a1, const __CFData *a2, const __CFData *a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10B004003C429ACuLL);
  v9 = *(a1 + 24);
  if (v9 < 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *(a1 + 16);
    do
    {
      v12 = *v11;
      v11 += 4;
      v10 += v12 + 1;
      --v9;
    }

    while (v9);
    v13 = v10;
  }

  *(v8 + 16) = CFDataCreateMutable(0, 2 * v13);
  v14 = 4 * v13;
  *(v8 + 17) = CFDataCreateMutable(0, v14);
  *(v8 + 18) = CFDataCreateMutable(0, v14);
  if (a4)
  {
    v15 = CFRetain(a4);
  }

  else
  {
    v15 = 0;
  }

  *(v8 + 19) = v15;
  Mutable = CFDataCreateMutable(0, 0);
  CFDataIncreaseLength(Mutable, 60);
  *(v8 + 15) = Mutable;
  v38 = 0;
  visitDynTrie(v8, a1, a1, &v38 + 1, &v38);
  memset(&v37[4], 0, 56);
  *&v37[8] = CFDataGetLength(Mutable) - 60;
  appendArraySectionInData(Mutable, a2, 4, &v37[28], &v37[32]);
  appendArraySectionInData(Mutable, a3, 4, &v37[36], &v37[40]);
  if (HIBYTE(v38))
  {
    v17 = *(v8 + 17);
  }

  else
  {
    v17 = 0;
  }

  appendArraySectionInData(Mutable, v17, 4, &v37[20], &v37[24]);
  CFRelease(*(v8 + 17));
  *(v8 + 17) = 0;
  appendArraySectionInData(Mutable, *(v8 + 16), 2, &v37[12], &v37[16]);
  CFRelease(*(v8 + 16));
  *(v8 + 16) = 0;
  if (v38)
  {
    v18 = *(v8 + 18);
  }

  else
  {
    v18 = 0;
  }

  appendArraySectionInData(Mutable, v18, 4, &v37[44], &v37[48]);
  CFRelease(*(v8 + 18));
  *(v8 + 18) = 0;
  appendArraySectionInData(Mutable, *(v8 + 19), 1, &v37[52], &v37[56]);
  v19 = *(v8 + 19);
  if (v19)
  {
    CFRelease(v19);
    *(v8 + 19) = 0;
  }

  *v37 = CFDataGetLength(Mutable);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *(MutableBytePtr + 2) = *&v37[32];
  *(MutableBytePtr + 44) = *&v37[44];
  v21 = *&v37[16];
  *MutableBytePtr = *v37;
  *(MutableBytePtr + 1) = v21;
  v22 = MutableBytePtr + 60;
  v23 = &MutableBytePtr[*(MutableBytePtr + 1) + 60];
  *v8 = MutableBytePtr;
  *(v8 + 1) = v23;
  *(v8 + 2) = v23;
  v24 = *(MutableBytePtr + 4);
  *(v8 + 9) = v24 >> 1;
  if (v24 >= 2)
  {
    v25 = &v22[*(MutableBytePtr + 3)];
  }

  else
  {
    v25 = 0;
  }

  *(v8 + 3) = v25;
  v26 = *(MutableBytePtr + 6);
  *(v8 + 10) = v26 >> 2;
  if (v26 >= 4)
  {
    v27 = &v22[*(MutableBytePtr + 5)];
  }

  else
  {
    v27 = 0;
  }

  *(v8 + 4) = v27;
  v28 = *(MutableBytePtr + 8);
  *(v8 + 12) = v28 >> 3;
  if (v28 >= 8)
  {
    v29 = &v22[*(MutableBytePtr + 7)];
  }

  else
  {
    v29 = 0;
  }

  *(v8 + 6) = v29;
  v30 = *(MutableBytePtr + 12);
  *(v8 + 11) = v30 >> 2;
  if (v30 >= 4)
  {
    v31 = &v22[*(MutableBytePtr + 11)];
  }

  else
  {
    v31 = 0;
  }

  *(v8 + 5) = v31;
  v32 = *(MutableBytePtr + 10);
  *(v8 + 13) = v32 >> 3;
  if (v32 >= 8)
  {
    v33 = &v22[*(MutableBytePtr + 9)];
  }

  else
  {
    v33 = 0;
  }

  *(v8 + 7) = v33;
  v34 = *(MutableBytePtr + 14);
  *(v8 + 14) = v34;
  if (v34 < 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = &v22[*(MutableBytePtr + 13)];
  }

  *(v8 + 8) = v35;
  return v8;
}

CFIndex visitDynTrie(CFMutableDataRef *a1, uint64_t a2, _DWORD *a3, _BYTE *a4, _BYTE *a5)
{
  v7 = a3;
  v8 = a1;
  v103 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v84 = *a3;
  if (*a3 == 4098)
  {
    v10 = 0;
    v11 = a3;
    do
    {
      v12 = v11;
      v11 = *(v11 + 1);
      ++v10;
    }

    while (*v11 == 4098);
    v13 = *v12;
  }

  else
  {
    if (v9)
    {
      v10 = (((v9 >> 1) & 0x7FF) - 1);
    }

    else
    {
      v10 = 1;
    }

    v13 = *a3;
    v12 = a3;
  }

  v14 = v13 >> 13;
  if ((v13 & 0x1000) != 0)
  {
    goto LABEL_73;
  }

  v15 = (*(a2 + 16) + 16 * v14);
  v16 = *v15;
  v17 = CFDataGetLength(a1[16]) >> 1;
  CFDataIncreaseLength(v8[16], 2 * v16 + 2);
  v82 = v17;
  v96 = &CFDataGetMutableBytePtr(v8[16])[2 * v17];
  *v96 = v16;
  Length = CFDataGetLength(v8[17]);
  CFDataIncreaseLength(v8[17], 4 * v16 + 4);
  v95 = &CFDataGetMutableBytePtr(v8[17])[Length & 0xFFFFFFFFFFFFFFFCLL];
  *v95 = v16;
  v19 = CFDataGetLength(v8[18]);
  CFDataIncreaseLength(v8[18], 4 * v16 + 4);
  v94 = &CFDataGetMutableBytePtr(v8[18])[v19 & 0xFFFFFFFFFFFFFFFCLL];
  *v94 = v16;
  v87 = v16;
  if (v16 < 1)
  {
    goto LABEL_72;
  }

  v88 = a4;
  v89 = v8;
  v81 = v7;
  v20 = 0;
  v21 = (v15 + 2);
  v85 = v15;
  v86 = a5;
  v22 = v16;
  v91 = (v15 + 2);
  do
  {
    v23 = v20 + 1;
    if (v22 == 1)
    {
      *&v96[2 * v20 + 2] = v15[1];
      v24 = &v95[v20 + 1];
      *v24 = 0.0;
      v25 = &v94[4 * v20 + 4];
      *v25 = 0;
      v26 = v21;
    }

    else
    {
      *&v96[2 * v20 + 2] = *(*v21 + 8 * v20 + 4);
      v24 = &v95[v20 + 1];
      *v24 = 0.0;
      v25 = &v94[4 * v20 + 4];
      *v25 = 0;
      v26 = (*v21 + 16 * v20);
    }

    v27 = *v26;
    if (!*v26)
    {
      goto LABEL_70;
    }

    v93 = v25;
    v28 = CFGetTypeID(v27);
    if (v28 != CFDictionaryGetTypeID())
    {
      if (v28 == CFNumberGetTypeID())
      {
        v92 = v24;
        valuePtr[0] = 0;
        CFNumberGetValue(v27, kCFNumberFloat32Type, valuePtr);
        v37 = 0;
        v38 = valuePtr[0] & 0xFFFFFFF0;
        goto LABEL_65;
      }

      v37 = v27;
      if (v28 != CFStringGetTypeID())
      {
        goto LABEL_67;
      }

LABEL_66:
      *v93 = DDStaticLookupTableAppendString(v89 + 19, v37, 0);
      *a5 = 1;
      goto LABEL_67;
    }

    v92 = v24;
    Value = CFDictionaryGetValue(v27, @"s");
    if (!Value)
    {
      Value = CFDictionaryGetValue(v27, @"score");
    }

    v30 = CFDictionaryGetValue(v27, @"f");
    if (v30 && (v31 = v30, v32 = CFGetTypeID(v30), v32 == CFStringGetTypeID()) && (v33 = CFStringGetLength(v31), (v33 - 1) <= 1))
    {
      v34 = v33;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v31, 0);
      if (v34 == 2)
      {
        v36 = CFStringGetCharacterAtIndex(v31, 1);
        if (!Value)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v36 = 0;
        if (!Value)
        {
LABEL_34:
          v40 = 0;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v36 = 0;
      CharacterAtIndex = 0;
      if (!Value)
      {
        goto LABEL_34;
      }
    }

    v39 = CFGetTypeID(Value);
    if (v39 == CFNumberGetTypeID())
    {
      v40 = Value;
    }

    else
    {
      v40 = 0;
    }

LABEL_35:
    v41 = CFDictionaryGetValue(v27, @"u");
    if (v41)
    {
      v37 = v41;
    }

    else
    {
      v37 = CFDictionaryGetValue(v27, @"uuid");
      if (!v37)
      {
        goto LABEL_41;
      }
    }

    v42 = CFGetTypeID(v37);
    if (v42 != CFStringGetTypeID())
    {
      v37 = 0;
    }

    v15 = v85;
LABEL_41:
    if (!v40)
    {
      a5 = v86;
      v22 = v87;
      if (!v37)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    valuePtr[0] = 0;
    CFNumberGetValue(v40, kCFNumberFloat32Type, valuePtr);
    v38 = valuePtr[0] & 0xFFFFFFF0;
    if (CharacterAtIndex > 79)
    {
      if (CharacterAtIndex == 90)
      {
        v43 = 4;
        goto LABEL_54;
      }

      if (CharacterAtIndex != 80)
      {
LABEL_51:
        v43 = 0;
        goto LABEL_54;
      }

      v43 = 12;
    }

    else
    {
      if (!CharacterAtIndex)
      {
        a5 = v86;
        v22 = v87;
        goto LABEL_65;
      }

      if (CharacterAtIndex != 76)
      {
        goto LABEL_51;
      }

      v43 = 8;
    }

LABEL_54:
    if (v36)
    {
      v44 = v36;
    }

    else
    {
      v44 = CharacterAtIndex;
    }

    if (v44 == 76)
    {
      v45 = 2;
      a5 = v86;
      v22 = v87;
    }

    else
    {
      a5 = v86;
      if (v44 == 90)
      {
        v45 = 1;
        v22 = v87;
      }

      else
      {
        v22 = v87;
        if (v44 == 80)
        {
          v45 = 3;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    v38 |= v43 | v45;
LABEL_65:
    *v92 = v38;
    *v88 = 1;
    if (v37)
    {
      goto LABEL_66;
    }

LABEL_67:
    CFRelease(v27);
    v21 = v91;
    v46 = v91;
    if (v22 != 1)
    {
      v46 = (*v91 + 16 * v20);
    }

    *v46 = 0;
LABEL_70:
    ++v20;
  }

  while (v23 < v22);
  a4 = v88;
  v8 = v89;
  v7 = v81;
LABEL_72:
  v14 = v82;
LABEL_73:
  if (v84)
  {
    CellWithNumberOfSons = allocateCellWithNumberOfSons(v8, 1, v10, 1, 0);
    if (v10 >= 2)
    {
      v83 = v14;
      v90 = v8;
      v60 = 0;
      v61 = &CFDataGetMutableBytePtr(v8[15])[CellWithNumberOfSons];
      v62 = v61 + 64;
      v63 = v7;
      v64 = (v7 + 1);
      v65 = v10;
      do
      {
        v66 = v64;
        if (*v63)
        {
          v67 = v60 + 1;
          if (v60 < 1 || (*v63 & 0xFFEu) <= 0xD)
          {
            v66 = &v64[v67];
          }

          else
          {
            v66 = (*(v63 + 1) + 2 * v67 - 4);
          }
        }

        v68 = *v66;
        if (!*v66)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v69 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            v70 = *v63 & 1;
            v71 = (*v63 >> 1) & 0x7FF;
            valuePtr[0] = 67109632;
            valuePtr[1] = v70;
            v99 = 2048;
            v100 = v60 + 1;
            v101 = 1024;
            v102 = v71;
            _os_log_error_impl(&dword_1BCFDD000, v69, OS_LOG_TYPE_ERROR, "trying to insert NULL in a substring leaf (%d) i+1=%ld, count=%d", valuePtr, 0x18u);
          }
        }

        *&v62[4 * ((*(v61 + 15) >> 11) & 1)] = v68;
        ++v60;
        v62 += 2;
        --v65;
      }

      while (v65);
      *&v61[2 * v10 + 64 + 2 * ((*(v61 + 15) >> 10) & 2)] = 0;
      v8 = v90;
      v7 = v63;
      v14 = v83;
    }

    v72 = allocateCellWithNumberOfSons(v8, 0, 1, (*v7 >> 12) & 1, v14);
    if (*v7)
    {
      if (v10 < 2 || (*v7 & 0xFFEu) <= 0xD)
      {
        v73 = v7 + v10 + 2;
      }

      else
      {
        v73 = (*(v7 + 1) + 2 * (v10 & 0x7FFFFFFF) - 4);
      }
    }

    else
    {
      v73 = (v7 + 1);
    }

    v74 = *v73;
    MutableBytePtr = CFDataGetMutableBytePtr(v8[15]);
    v76 = *&MutableBytePtr[CellWithNumberOfSons + 60];
    v77 = &MutableBytePtr[CellWithNumberOfSons + 64];
    v78 = ((v76 & 0x7FFu) + 1) >> 1;
    if ((v76 & 0x800) != 0)
    {
      v78 = 0;
    }

    *&v77[4 * v78] = v72;
    if ((v76 & 0x800) == 0)
    {
      *v77 = v74;
    }
  }

  else
  {
    CellWithNumberOfSons = allocateCellWithNumberOfSons(v8, (*v12 >> 1) & 0x7FF, v10, (*v12 >> 12) & 1, v14);
    if (v10 >= 2)
    {
      v48 = CFDataGetMutableBytePtr(v8[15]);
      v49 = &v48[CellWithNumberOfSons];
      v50 = &v48[CellWithNumberOfSons + 64];
      v51 = v10;
      do
      {
        v7 = *(v7 + 1);
        *(v50 + 4 * ((*(v49 + 15) >> 11) & 1)) = *(v7 + 2);
        v50 += 2;
        --v51;
      }

      while (v51);
      *&v48[2 * v10 + 64 + 2 * ((*(v49 + 15) >> 10) & 2) + CellWithNumberOfSons] = 0;
    }

    if ((*v12 & 0xFFE) != 0)
    {
      v52 = 0;
      v53 = CellWithNumberOfSons + 64;
      v54 = 4;
      do
      {
        v55 = visitDynTrie(v8, a2, *(v12 + 1) + v54 - 4, a4, a5);
        v56 = *(*(v12 + 1) + v54);
        v57 = CFDataGetMutableBytePtr(v8[15]);
        v58 = *&v57[CellWithNumberOfSons + 60];
        if ((v58 & 0x800) != 0)
        {
          v59 = 0;
        }

        else
        {
          v59 = ((*&v57[CellWithNumberOfSons + 60] & 0x7FFu) + 1) >> 1;
        }

        *&v57[4 * v59 + 4 * v52 + v53] = v55;
        if ((v58 & 0x800) == 0)
        {
          *&v57[2 * v52 + v53] = v56;
        }

        ++v52;
        v54 += 16;
      }

      while (v52 < ((*v12 >> 1) & 0x7FF));
    }
  }

  v79 = *MEMORY[0x1E69E9840];
  return CellWithNumberOfSons;
}

void appendArraySectionInData(const __CFData *a1, const __CFData *a2, int a3, _DWORD *a4, int *a5)
{
  v10 = CFDataGetLength(a1) - 60;
  if (a2 && (Length = CFDataGetLength(a2), Length >= 1))
  {
    if (v10 % a3 >= 1)
    {
      v12 = a3 - v10 % a3;
      CFDataIncreaseLength(a1, v12);
      v10 += v12;
    }

    BytePtr = CFDataGetBytePtr(a2);
    CFDataAppendBytes(a1, BytePtr, Length & 0x7FFFFFFF);
  }

  else
  {
    Length = 0;
  }

  *a4 = v10;
  *a5 = Length;
}

CFIndex allocateCellWithNumberOfSons(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *bytes = a2 & 0x7FF | ((a3 > 1) << 11) | ((a4 != 0) << 12) | (a5 << 13);
  Length = CFDataGetLength(*(a1 + 120));
  CFDataAppendBytes(*(a1 + 120), bytes, 4);
  v9 = (a3 + 1) & 1;
  if (a3 < -1)
  {
    v9 = -v9;
  }

  if ((bytes[1] & 8) != 0)
  {
    v10 = 2 * (v9 + a3 + 1) + 4;
  }

  else
  {
    v10 = 2 * ((a2 & 1) + a2) + 4 * a2;
  }

  if (v10)
  {
    CFDataIncreaseLength(*(a1 + 120), v10);
  }

  return Length - 60;
}

int **assignFromHeaderV4(int **result, int *a2)
{
  v2 = a2 + 9;
  v3 = a2 + a2[1] + 36;
  *result = a2;
  result[1] = v3;
  result[2] = v3;
  v4 = a2[4];
  result[9] = (v4 >> 1);
  if (v4 >= 2)
  {
    v5 = (v2 + a2[3]);
  }

  else
  {
    v5 = 0;
  }

  result[3] = v5;
  v6 = a2[6];
  result[10] = (v6 >> 2);
  if (v6 >= 4)
  {
    v7 = (v2 + a2[5]);
  }

  else
  {
    v7 = 0;
  }

  result[4] = v7;
  v8 = a2[8];
  result[12] = (v8 >> 3);
  if (v8 >= 8)
  {
    v9 = (v2 + a2[7]);
  }

  else
  {
    v9 = 0;
  }

  result[11] = 0;
  result[5] = 0;
  result[6] = v9;
  result[7] = 0;
  result[8] = 0;
  result[13] = 0;
  result[14] = 0;
  return result;
}

uint64_t DDScannerCreateWithLocaleHint(int a1, unint64_t a2, const __CFLocale *a3, CFErrorRef *a4)
{
  v6 = DDScannerCreateWithTypeAndLocale(a1, a3, a4);
  v7 = v6;
  if (v6)
  {
    DDScannerSetOptions(v6, a2);
    if (a3)
    {
      *(v7 + 240) = CFRetain(a3);
    }
  }

  return v7;
}

uint64_t DDScannerLoaderGetIdentifierStringForScannerType(int a1)
{
  if (__DDScannerLoaderInitScannerIdentifierMappings_sOnce != -1)
  {
    dispatch_once(&__DDScannerLoaderInitScannerIdentifierMappings_sOnce, &__block_literal_global_643);
  }

  return *(scannerTypesToScannerIdentifiers + 8 * a1);
}

uint64_t DDScannerLoaderScannerGetTypeWithIdentifierString(void *key)
{
  if (__DDScannerLoaderInitScannerIdentifierMappings_sOnce != -1)
  {
    dispatch_once(&__DDScannerLoaderInitScannerIdentifierMappings_sOnce, &__block_literal_global_643);
  }

  value = -1;
  if (CFDictionaryGetValueIfPresent(scannerIdentifiersToScannerTypes, key, &value))
  {
    return value;
  }

  else
  {
    return -1;
  }
}

uint64_t matchingTokenRealIndexForQueryOffset(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    return -1;
  }

  v6 = *(a1 + 96);
  v7 = (*(a1 + 88) + v3 - v6) % v3;
  if (v7)
  {
    if (v7 <= 32)
    {
      v9 = v7 >> (v7 >= 0);
    }

    else
    {
      v9 = v7 - 16;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = a2 >> 16;
      v12 = HIDWORD(a2);
      while (1)
      {
        v13 = v9 < 0 ? -1 : (*(a1 + 96) + v9) % *(a1 + 72);
        v14 = _tokenEntryAtRealIndex(a1, v13);
        v15 = *v14;
        if (v11 >= (*v14 << 32) >> 48)
        {
          v16 = v15 >> 16;
          v17 = HIDWORD(v15);
          if (v11 != v16 || v12 >= v17)
          {
            v19 = v14[1];
            if (v11 <= v19 >> 16)
            {
              v20 = v19 >> 16;
              v21 = HIDWORD(v19);
              if (v11 != v20 || v12 < v21)
              {
                goto LABEL_47;
              }
            }
          }

          if (v11 > v16)
          {
            goto LABEL_25;
          }

          if (v12 >= v17)
          {
            break;
          }
        }

        v7 = v9 - 1;
LABEL_26:
        v9 = v10 + (v7 - v10) / 2;
        if (v7 < v10)
        {
          goto LABEL_27;
        }
      }

      if (v12 <= v17)
      {
        goto LABEL_47;
      }

LABEL_25:
      v10 = v9 + 1;
      goto LABEL_26;
    }

LABEL_27:
    if (!a3)
    {
      return -1;
    }

    v23 = *(a1 + 72);
    v24 = v23 ? (*(a1 + 88) + v23 - *(a1 + 96)) % v23 : -1;
    if (v9 >= v24)
    {
      return -1;
    }

    v30 = v9 < 0 ? -1 : (*(a1 + 96) + v9) % v23;
    v31 = _tokenEntryAtRealIndex(a1, v30);
    if (!v31)
    {
      return -1;
    }

    v32 = *v31;
    v33 = a2 >> 16;
    if (v33 >= *v31 << 32 >> 48 && (v33 > v32 >> 16 || SHIDWORD(a2) >= SHIDWORD(v32)))
    {
      return -1;
    }

LABEL_47:
    if ((v9 & 0x8000000000000000) == 0)
    {
      v6 = *(a1 + 96);
      v3 = *(a1 + 72);
      return (v6 + v9) % v3;
    }
  }

  else
  {
    v26 = *(a1 + 48);
    v27 = *v26;
    if (*(a1 + 121))
    {
      v34 = (*(v26 + 2) + v27);
      v27 <<= 32;
      v28 = v34 << 32;
    }

    else
    {
      v28 = v26[1];
    }

    v29 = a2 >> 16;
    if (v29 >= v27 >> 16 && (v29 != v27 >> 16 || SHIDWORD(a2) >= SHIDWORD(v27)) && v29 <= v28 >> 16 && (v29 != v28 >> 16 || SHIDWORD(a2) < SHIDWORD(v28)))
    {
      v9 = 0;
      return (v6 + v9) % v3;
    }
  }

  return -1;
}

uint64_t DDCachingStringTokenizerEnumerateTokens(uint64_t result, CFTypeRef cf, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    if (!*(result + 32))
    {
      *(result + 32) = CFRetain(cf);
    }

    Offset = matchingTokenRealIndexForQueryOffset(v8, a4, 0);
    result = _realToAbsoluteIndex(v8, Offset);
    if ((result & 0x8000000000000000) == 0)
    {
      v10 = result;
      v49 = 0;
      if (a3 && (v8[13] <= result || (v11 = v8[9]) == 0 ? (v12 = -1) : (v12 = result % v11), (result = _tokenEntryAtRealIndex(v8, v12)) != 0 && (v13 = result, v14 = *(result + 24), *(result + 24))))
      {
        v46 = a3;
        v15 = 0;
        v16 = 0;
        v17 = a4 >> 16;
        v48 = HIDWORD(a4);
        v18 = 32 * v14;
        do
        {
          v19 = *(v13 + 16) + v18;
          v20 = *(v19 - 32);
          v21 = *(v19 - 24);
          v22 = v21 >> 16;
          if (v22 < v17 || (v22 <= v17 ? (v23 = SHIDWORD(v21) <= v48) : (v23 = 0), v23))
          {
            ++v16;
            result = (*(a5 + 16))(a5, v20);
            v15 = v49;
            v24 = v49 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (v14 < 2)
          {
            break;
          }

          if (!v24)
          {
            break;
          }

          v18 -= 32;
          --v14;
        }

        while (v16 < 15);
        a3 = v46;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      if (v16 <= 14)
      {
        v47 = v8;
        do
        {
          if (a3)
          {
            v25 = v10 - 1;
            if (v10 >= 1 && v8[13] >= v10 && (v26 = v8[9]) != 0)
            {
              v27 = v25 % v26;
            }

            else
            {
              v27 = -1;
            }

            result = _tokenEntryAtRealIndex(v8, v27);
            v28 = result;
            if (!result)
            {
              return result;
            }
          }

          else
          {
            v25 = v10 + 1;
            if (v10 >= -1 && v8[13] > v25 && (v35 = v8[9]) != 0)
            {
              v36 = v25 % v35;
            }

            else
            {
              v36 = -1;
            }

            result = _tokenEntryAtRealIndex(v8, v36);
            if (result)
            {
              v28 = result;
              v29 = (result + 24);
              if (*(result + 24))
              {
LABEL_51:
                if (v15)
                {
                  return result;
                }

                v37 = 0;
                v38 = 1;
                do
                {
                  result = (*(a5 + 16))(a5, *(*(v28 + 16) + v37), *(*(v28 + 16) + v37 + 8), 0, &v49);
                  v33 = v49;
                  v39 = v38 + 1;
                  v37 += 32;
                  v41 = v38 < *v29 && v49 == 0 && (v16 + v38 - 1) < 14;
                  ++v38;
                }

                while (v41);
                v32 = v16 + v39 - 1;
                v8 = v47;
                goto LABEL_62;
              }

LABEL_61:
              v32 = v16 + 1;
              result = (*(a5 + 16))(a5, *v28, *(v28 + 8), a3, &v49);
              v33 = v49;
              goto LABEL_62;
            }

            result = _fetchNextToken(v8);
            if (result < 0)
            {
              return result;
            }

            v43 = v8[12] + result;
            v44 = v8[9];
            v45 = v43 % v44;
            if (v43 % v44 < 0)
            {
              return result;
            }

            v28 = _tokenEntryAtRealIndex(v8, v43 % v44);
            result = _realToAbsoluteIndex(v8, v45);
            v25 = result;
            if (!v28)
            {
              return result;
            }
          }

          v29 = (v28 + 24);
          v30 = *(v28 + 24);
          if (!*(v28 + 24))
          {
            goto LABEL_61;
          }

          v15 = v49;
          if (!a3)
          {
            goto LABEL_51;
          }

          if (v49)
          {
            return result;
          }

          v31 = 32 * v30;
          do
          {
            v32 = v16 + 1;
            result = (*(a5 + 16))(a5, *(*(v28 + 16) + v31 - 32), *(*(v28 + 16) + v31 - 24), 1, &v49);
            v33 = v49;
            if (v30 < 2)
            {
              break;
            }

            --v30;
            v31 -= 32;
          }

          while (!v49 && v16++ < 14);
LABEL_62:
          v15 = 0;
          if (v33)
          {
            v42 = 0;
          }

          else
          {
            v42 = v32 < 15;
          }

          v10 = v25;
          v16 = v32;
        }

        while (v42);
      }
    }
  }

  return result;
}

uint64_t _realToAbsoluteIndex(void *a1, uint64_t a2)
{
  if (a2 < 0 || a1[9] <= a2)
  {
    return -1;
  }

  v2 = a1[13];
  v3 = a1[8];
  if (v2 > v3)
  {
    v4 = a1[11];
    v5 = v2 + a2;
    v6 = v5 + ~v3 - v4;
    v7 = v5 + ~v4;
    if (v4 >= a2)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return a2;
}

uint64_t DDLogHandle()
{
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  return DDLogHandle_error_log_handle;
}

os_log_t __DDLogHandle_block_invoke()
{
  result = os_log_create("com.apple.DataDetectorsCore", "Data Detectors Engine");
  DDLogHandle_error_log_handle = result;
  return result;
}

void DDError(CFStringRef format, ...)
{
  va_start(va, format);
  v6 = *MEMORY[0x1E69E9840];
  v1 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v2 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v5 = v1;
    _os_log_error_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  CFRelease(v1);
  v3 = *MEMORY[0x1E69E9840];
}

void DDLogErrD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFStringRef format, ...)
{
  va_start(va, format);
  v11 = *MEMORY[0x1E69E9840];
  v6 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v7 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_error_impl(&dword_1BCFDD000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  CFRelease(v6);
  v8 = *MEMORY[0x1E69E9840];
}

void DDLogAssertionFailure(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFStringRef format, ...)
{
  va_start(va, format);
  v19 = *MEMORY[0x1E69E9840];
  v8 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v9 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v12 = a2;
    v13 = 1024;
    v14 = a4;
    v15 = 2080;
    v16 = a1;
    v17 = 2112;
    v18 = v8;
    _os_log_error_impl(&dword_1BCFDD000, v9, OS_LOG_TYPE_ERROR, "assertion on %s:%d %s failed :%@", buf, 0x26u);
  }

  CFRelease(v8);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t DDScanQueryCreate(uint64_t a1)
{
  v2 = DDTypeRegister(&DDScanQueryGetTypeID_typeID);

  return DDTypeCreateInstance_(a1, v2, 0x28uLL);
}

__CFString *_DDScanQueryCFCopyFormatDescription(uint64_t a1, const __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, a2, @"<DDScanQuery:%p\n", a1);
  v5 = *(a1 + 32);
  if (v5 >= 1)
  {
    v6 = *(a1 + 16);
    *(&v7 + 1) = (*(v6 + 48 * v5 - 24) + *(v6 + 48 * v5 - 32));
    *&v7 = (v5 << 48) - 0x1000000000000;
    CopyRange = DDScanQueryCopyRange(a1, *(v6 + 16) << 32, v7 >> 32);
    CFStringAppend(Mutable, CopyRange);
    CFRelease(CopyRange);
  }

  CFStringAppendFormat(Mutable, a2, @"\n>");
  return Mutable;
}

uint64_t DDScanQueryAddLineBreak(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(result + 16) + 48 * v1;
    v3 = *(v2 - 8);
    v4 = v3 & 0xE3FFFFFF;
    if (((v3 >> 26) & 7) >= 3)
    {
      v5 = 0x10000000;
    }

    else
    {
      v5 = 201326592;
    }

    *(v2 - 8) = v4 | v5 | 0x80000000;
  }

  return result;
}

unint64_t DDScanQueryGetOffsetOfAbsolutePosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 1)
  {
    v6 = -1;
  }

  else
  {
    v3 = 0;
    v4 = (a1 + 32);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 > a3)
      {
        break;
      }

      if (a2 == ++v3)
      {
        v3 = a2;
        break;
      }
    }

    v6 = v3 - 1;
  }

  return (v6 << 16) | ((a3 - *(a1 + 48 * v6 + 32) + *(a1 + 48 * v6 + 16)) << 32);
}

__CFString *DDScanQueryCopyFullStringExcludingContext(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    return &stru_1F3B75AB8;
  }

  else
  {
    return DDScanQueryCopyRange(a1, ((*(*(a1 + 16) + 40) << 6) >> 6) << 32, ((v1 << 16) - 0x10000) | (*(*(a1 + 16) + 48 * v1 - 24) << 32));
  }
}

__CFString *DDScanQueryCopySubStringFromPos(uint64_t a1, uint64_t a2)
{
  v4 = a2 >> 16;
  v5 = *(a1 + 16);
  v6 = *(v5 + 48 * v4 + 32) + (a2 >> 32) - *(v5 + 48 * v4 + 16) + 20;
  v7 = *(a1 + 32);
  if (v6 >= *(v5 + 48 * v7 - 24) + *(v5 + 48 * v7 - 16))
  {
    v8 = *(v5 + 48 * v7 - 24) + *(v5 + 48 * v7 - 16);
  }

  else
  {
    v8 = v6;
  }

  v9 = DDScanQueryGetOffsetOfAbsolutePosition(v5, v7, v8) & 0xFFFFFFFFFFFF0000;

  return DDScanQueryCopyRange(a1, a2 & 0xFFFFFFFF00000000 | (v4 << 16), v9);
}

uint64_t DDScanQueryGetFragmentMetaData(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 32) > a2 && (v4 = *(a1 + 16)) != 0)
    {
      return *(v4 + 48 * a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DDScanQueryGetFragmentRange(uint64_t a1, uint64_t a2)
{
  result = -1;
  if (a1 && (a2 & 0x8000000000000000) == 0 && *(a1 + 32) > a2)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = v4 + 48 * a2;
      result = *(v5 + 16);
      v6 = *(v5 + 24);
    }
  }

  return result;
}

uint64_t _DDScanQueryCountNewlinesInFragment(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4)
{
  if (!a1 || !*a1 || (*(a1 + 43) & 0x40) != 0)
  {
    return 0;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  Length = CFStringGetLength(*a1);
  v10 = 0;
  if (a4 >= 1 && a3 >= 1 && a2 >= 1)
  {
    v11 = Length;
    if (a3 + a2 <= Length)
    {
      v10 = 0;
      do
      {
        v16.location = 0;
        v16.length = 0;
        v17.location = a2;
        v17.length = a3;
        if (!CFStringFindCharacterFromSet(*a1, Predefined, v17, 0, &v16))
        {
          break;
        }

        if (++v10 >= a4)
        {
          break;
        }

        v12 = a3 + a2;
        a2 = v16.length + v16.location;
        a3 = v12 - (v16.length + v16.location);
        v13 = a3 < 1 || a2 < 1;
      }

      while (!v13 && v12 <= v11);
    }
  }

  return v10;
}

void **DDLexemCacheItemCreate(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  DDLexemCacheItemReset(v4);
  DDLexemCacheItemSet(v4, a1, a2);
  return v4;
}

void *DDLexemCacheItemResetForCapacity(void *result, uint64_t a2)
{
  v2 = result[1];
  result[1] = v2 | 0xFFFFFFFFLL;
  v3 = v2 >> 32;
  if (v3 >= 1)
  {
    v5 = result;
    if (v3 < a2)
    {
      result = malloc_type_realloc(*result, 32 * a2, 0x1010040F32E1FD2uLL);
      *v5 = result;
      v6 = a2 << 32;
LABEL_7:
      v5[1] = *(v5 + 2) | v6;
      return result;
    }

    if (a2 <= 23 && v3 > a2)
    {
      result = malloc_type_realloc(*result, 0x300uLL, 0x1010040F32E1FD2uLL);
      *v5 = result;
      v6 = 0x1800000000;
      goto LABEL_7;
    }
  }

  return result;
}

void DDDataDetectorSetUsesDebugSource(int a1)
{
  if (_workDir_sOnce != -1)
  {
    dispatch_once(&_workDir_sOnce, &__block_literal_global_938);
  }

  v2 = _workDir_dir_name;
  if (a1)
  {
    v3 = _workDir_dir_name;
  }

  else
  {
    v3 = 0;
  }

  DDSourceSetStoragePath(v3);
  if (v2)
  {
    DDSourcePushSharedDataOrFile(1, 0, 0, 1, 0);
    DDSourcePushSharedDataOrFile(2, 0, 0, 1, 0);

    DDSourcePushSharedDataOrFile(3, 0, 0, 1, 0);
  }
}

void ___workDir_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [(NSString *)NSTemporaryDirectory() cStringUsingEncoding:4];
  _workDir_dir_name = strdup(v0);
  if (_workDir_dir_name)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v1 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = _workDir_dir_name;
      _os_log_impl(&dword_1BCFDD000, v1, OS_LOG_TYPE_DEFAULT, "Using temp work directory %s", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t DDResultBufferIsValidForPhoneNumber(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  result = 1;
  if (!a1 || a3 < 1)
  {
    goto LABEL_90;
  }

  v8 = a2;
  if (a4 || a3 > 8)
  {
    if ((a3 - 10) > 0xE)
    {
      goto LABEL_79;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = a2 + a3;
    v21 = 1;
    while (1)
    {
      v22 = *(a1 + 2 * a2 + 2 * v12);
      if (v13 >= 14 && a2 + v12 == v13 && v19 <= 1)
      {
        result = 0;
        if (v13 > 0x10 || v19 != 1)
        {
          goto LABEL_90;
        }

        if (*(a1 + 2) != 49 || *(a1 + 4) != 49)
        {
          goto LABEL_76;
        }
      }

      if (v22 == 45)
      {
        v15 |= v18;
        if (v15)
        {
          goto LABEL_89;
        }

        v18 = 0;
        v21 = 0;
        ++v14;
        LOBYTE(result) = 1;
        v17 = v13;
      }

      else if ((v22 - 48) > 9)
      {
        switch(v22)
        {
          case ' ':
            v21 = 0;
            v16 |= (v13 - 1) < 4;
            break;
          case '/':
            if (v18 > 0)
            {
              goto LABEL_76;
            }

            v18 = 1;
            break;
          case '.':
            result = 1;
            if (v14 || v18 || v13 != 10)
            {
              goto LABEL_90;
            }

            v18 = 0;
            v14 = 0;
            ++v15;
            goto LABEL_48;
          default:
            goto LABEL_89;
        }

        LOBYTE(result) = 1;
      }

      else
      {
        LODWORD(result) = v22 - 48;
        if (v13 <= 12)
        {
          v47[v13] = result;
        }

        ++v13;
        if (v12 == v19 && v22 == 48)
        {
          ++v19;
        }

        LOBYTE(result) = result > 9;
      }

LABEL_48:
      ++v12;
      if (a2 + v12 >= v20)
      {
        v24 = v14 == 1;
        if (v15 != 1)
        {
          if (v15 || (v13 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
          {
            goto LABEL_78;
          }

          v25 = v13 == 12 && v19 == 1;
          v26 = v25 ? 1 : result;
          if (v26)
          {
            goto LABEL_78;
          }

          v27 = v14 == 1 && v13 == 13;
          v28 = v27;
          if (*(a1 + 2 * v20 - 4) != 45 && v13 != a3 && !v28 || !DDIsValidEAN13OrUPCA(v47, v13))
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        }

        if (v21)
        {
          goto LABEL_76;
        }

        if (a5)
        {
          goto LABEL_79;
        }

LABEL_78:
        v46 = v24 & ~v16;
        if (v13 != 9)
        {
          v46 = 0;
        }

        if (v20 <= 12 && v46 && v17 == 5)
        {
LABEL_76:
          result = 0;
        }

        else
        {
LABEL_79:
          if (v8 >= 4)
          {
LABEL_80:
            if (v8 >= 0xA)
            {
              v31 = v8 - 10;
            }

            else
            {
              v31 = 0;
            }

            if (v8 > v31)
            {
              do
              {
                v32 = v8 - 1;
                v33 = *(a1 - 2 + 2 * v8);
                v34 = v33 > 0x3A;
                v35 = (1 << v33) & 0x400000100000200;
                if (v34 || v35 == 0)
                {
                  v38 = 0;
                  while (1)
                  {
                    v39 = strlen(DDResultBufferIsValidForPhoneNumber_labelsSuffixes[v38]);
                    if (v32 - v31 >= v39)
                    {
                      v40 = v39;
                      result = 0;
                      if (v8 <= v31 || v40 < 2)
                      {
                        goto LABEL_90;
                      }

                      v41 = v8 - 1;
                      while (1)
                      {
                        v42 = *(a1 + 2 * v41);
                        v43 = DDResultBufferIsValidForPhoneNumber_labelsSuffixes[v38][v40 - 1];
                        if (v43 != v42 && v43 + 32 != v42)
                        {
                          break;
                        }

                        result = 0;
                        if (v41 > v31)
                        {
                          --v41;
                          if (v40-- >= 3)
                          {
                            continue;
                          }
                        }

                        goto LABEL_90;
                      }
                    }

                    ++v38;
                    result = 1;
                    if (v38 == 14)
                    {
                      goto LABEL_90;
                    }
                  }
                }

                --v8;
              }

              while (v32 > v31);
            }
          }

LABEL_89:
          result = 1;
        }

        goto LABEL_90;
      }
    }
  }

  v9 = *(a1 + 2 * a2);
  if (v9 == 48 && a3 != 3)
  {
    if (a3 < 2)
    {
      goto LABEL_76;
    }

    v29 = a2 + 1;
    while (1)
    {
      v30 = *(a1 + 2 * v29);
      if ((v30 - 58) <= 0xFFFFFFF5 && v30 != 42 && v30 != 35)
      {
        goto LABEL_89;
      }

      if (++v29 >= a2 + a3)
      {
        goto LABEL_76;
      }
    }
  }

  v11 = a3 == 3 && v9 == 48;
  if (!v11 && a2 >= 4)
  {
    goto LABEL_80;
  }

LABEL_90:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL DDIsValidEAN13OrUPCA(uint64_t a1, uint64_t a2)
{
  if ((a2 - 14) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 - 1;
  do
  {
    v6 = 3 * *(a1 + v4);
    if ((v4 ^ a2))
    {
      v6 = *(a1 + v4);
    }

    v3 += v6;
    ++v4;
  }

  while (v5 != v4);
  return 10 * ((v3 + 9) / 10) - v3 == *(a1 + v5);
}

void DDResultExpandRange(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 | a3)
  {
    v4 = a4;
    v5 = a3;
    do
    {
      v9 = a1[4];
      v8 = a1[5];
      v10 = v9 - v5;
      v11 = v4 + v5 + v8;
      _setResultRangesAndMatchedString(a1, a2, v9 - v5, v11);
      v12 = a1[7];
      if (!v12)
      {
        return;
      }

      v33 = v8;
      Count = CFArrayGetCount(v12);
      v14 = Count;
      if (v5 < 1)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          a1 = 0;
          v5 = 0;
          goto LABEL_26;
        }

        if (Count < 1)
        {
LABEL_25:
          a1 = 0;
          goto LABEL_26;
        }

        a1 = 0;
        v18 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v18 - 2);
          v20 = ValueAtIndex[4];
          if (v20 < v10)
          {
            if (a1 || v10 >= v20 + ValueAtIndex[5])
            {
              CFArrayRemoveValueAtIndex(v12, v18 - 2);
              --v14;
            }

            else
            {
              a1 = ValueAtIndex;
              v5 = v20 - v10;
            }
          }

          --v18;
        }

        while (v18 > 1);
      }

      else
      {
        if (Count < 1)
        {
          goto LABEL_25;
        }

        v15 = 0;
        while (1)
        {
          v16 = CFArrayGetValueAtIndex(v12, v15);
          v17 = v16[4];
          if (v16[5])
          {
            break;
          }

          _setResultRangesAndMatchedString(v16, a2, v17 - v5, 0);
          if (v14 == ++v15)
          {
            goto LABEL_25;
          }
        }

        if (v17 != v9)
        {
          goto LABEL_25;
        }

        if (v16[10])
        {
          a1 = 0;
        }

        else
        {
          a1 = v16;
        }
      }

LABEL_26:
      if (v4 < 1)
      {
        if ((v4 & 0x8000000000000000) == 0)
        {
          v25 = 0;
          v4 = 0;
          goto LABEL_49;
        }

        if (v14 < 1)
        {
LABEL_48:
          v25 = 0;
          goto LABEL_49;
        }

        v26 = 0;
        v25 = 0;
        v27 = v10 + v11;
        do
        {
          v28 = CFArrayGetValueAtIndex(v12, v26);
          v29 = v28[4];
          v30 = v29 + v28[5];
          v31 = __OFSUB__(v27, v30);
          v32 = v27 - v30;
          if (v32 < 0 != v31)
          {
            if (v25 || v27 <= v29)
            {
              CFArrayRemoveValueAtIndex(v12, v26--);
              --v14;
            }

            else
            {
              v25 = v28;
              v4 = v32;
            }
          }

          ++v26;
        }

        while (v26 < v14);
      }

      else
      {
        if (v14 < 1)
        {
          goto LABEL_48;
        }

        v21 = v14 + 1;
        while (1)
        {
          v22 = CFArrayGetValueAtIndex(v12, v21 - 2);
          v23 = v22[4];
          v24 = v22[5];
          if (v24)
          {
            break;
          }

          _setResultRangesAndMatchedString(v22, a2, v23 + v4, 0);
          if (--v21 <= 1)
          {
            goto LABEL_48;
          }
        }

        if (v23 + v24 != v9 + v33)
        {
          goto LABEL_48;
        }

        if (v22[10])
        {
          v25 = 0;
        }

        else
        {
          v25 = v22;
        }
      }

LABEL_49:
      if (a1 == v25)
      {
        if (!a1)
        {
          return;
        }
      }

      else
      {
        if (a1)
        {
          DDResultExpandRange(a1, a2, v5, 0);
        }

        if (!v25)
        {
          return;
        }

        v5 = 0;
        a1 = v25;
      }
    }

    while (v4 | v5);
  }
}

void _setResultRangesAndMatchedString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[4] = a3;
  a1[5] = a4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  OffsetOfAbsolutePosition = DDScanQueryGetOffsetOfAbsolutePosition(v8, v9, a3);
  v11 = DDScanQueryGetOffsetOfAbsolutePosition(v8, v9, a3 + a4);
  a1[2] = OffsetOfAbsolutePosition & 0xFFFFFFFFFFFF0000;
  a1[3] = v11 & 0xFFFFFFFFFFFF0000;
  if (*(a2 + 32) < 1)
  {
    CopyRange = &stru_1F3B75AB8;
LABEL_8:
    DDResultSetMatchedString(a1, CopyRange);

    CFRelease(CopyRange);
    return;
  }

  v12 = ((*(*(a2 + 16) + 40) << 6) >> 6);
  if (v12 <= 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 << 32;
  }

  CopyRange = DDScanQueryCopyRange(a2, v13 + (OffsetOfAbsolutePosition & 0xFFFFFFFFFFFF0000), v13 + (v11 & 0xFFFFFFFFFFFF0000));
  if (CopyRange)
  {
    goto LABEL_8;
  }
}

BOOL __DDMLRelevantSubstringsAroundRanges_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  return v6 < v5;
}

const void *DDMLScannerScanStringAroundResults(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v366 = *MEMORY[0x1E69E9840];
  if (*(a1 + 264))
  {
    v5 = *(a1 + 272);
  }

  else
  {
    v5 = &unk_1F3B7DCC0;
  }

  v285 = a2;
  v6 = a3;
  if (-[__CFArray count](v5, "count") && [v6 count])
  {
    spid = objc_opt_new();
    v308 = 0u;
    v309 = 0u;
    v310 = 0u;
    v311 = 0u;
    v260 = v6;
    v7 = v6;
    v8 = [(Class *)v7 countByEnumeratingWithState:&v308 objects:&v325 count:16];
    if (v8)
    {
      v9 = *v309;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v309 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v308 + 1) + 8 * i);
          if (_ddResultTypeHasMLEquivalent(v11, v5))
          {
            v12 = [MEMORY[0x1E696B098] valueWithRange:{*(v11 + 32), *(v11 + 40)}];
            [spid addObject:v12];
          }
        }

        v8 = [(Class *)v7 countByEnumeratingWithState:&v308 objects:&v325 count:16];
      }

      while (v8);
    }

    if ([spid count])
    {
      v265 = v285;
      v271 = spid;
      gotLoadHelper_x20__OBJC_CLASS___NLTokenizer(v13);
      v263 = [objc_alloc(v7[338]) initWithUnit:1];
      [v263 setString:v265];
      v14 = [v263 tokensForRange:{0, -[__CFString length](v265, "length")}];
      v261 = [objc_alloc(v7[338]) initWithUnit:0];
      [v261 setString:v265];
      v15 = [v261 tokensForRange:{0, -[__CFString length](v265, "length")}];
      v300 = [v15 mutableCopy];

      v297 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
      v348 = 0u;
      v347 = 0u;
      v346 = 0u;
      *v345 = 0u;
      obj = v14;
      v279 = [obj countByEnumeratingWithState:v345 objects:&block count:16];
      if (v279)
      {
        LODWORD(v287) = 0;
        LODWORD(v16) = 0;
        v276 = *v346;
        do
        {
          v17 = 0;
          v287 = v287;
          do
          {
            if (*v346 != v276)
            {
              v18 = v17;
              objc_enumerationMutation(obj);
              v17 = v18;
            }

            v282 = v17;
            v19 = [*(*&v345[8] + 8 * v17) rangeValue];
            v21 = v20;
            if (v16 < [v300 count])
            {
              v293 = 0;
              v16 = v16;
              v22 = 0x7FFFFFFFFFFFFFFFLL;
              while (1)
              {
                v23 = [v300 objectAtIndexedSubscript:v16];
                v24 = [v23 rangeValue];
                v26 = v25;

                v367.location = v19;
                v367.length = v21;
                v378.location = v24;
                v378.length = v26;
                if (NSIntersectionRange(v367, v378).length)
                {
                  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v22 = v16;
                  }

                  ++v293;
                  if ((v19 + v21 - (v26 + v24)) <= 3)
                  {
                    if ([v300 count] <= v16 + 1)
                    {
                      goto LABEL_29;
                    }

                    v27 = [v300 objectAtIndexedSubscript:?];
                    v28 = [v27 rangeValue];
                    v30 = v29;

                    v368.location = v28;
                    v368.length = v30;
                    v379.location = v19;
                    v379.length = v21;
                    if (!NSIntersectionRange(v368, v379).length)
                    {
LABEL_29:
                      v31 = [MEMORY[0x1E696B098] valueWithRange:{v24, v19 + v21 - v24}];
                      [v300 setObject:v31 atIndexedSubscript:v16];
                    }
                  }
                }

                else if (v22 != 0x7FFFFFFFFFFFFFFFLL || (v22 = 0x7FFFFFFFFFFFFFFFLL, v24 + v26 >= v19))
                {
LABEL_33:
                  v32 = v293;
                  goto LABEL_35;
                }

                if (++v16 >= [v300 count])
                {
                  goto LABEL_33;
                }
              }
            }

            v32 = 0;
            v22 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_35:
            if (v16 <= 1)
            {
              v33 = 1;
            }

            else
            {
              v33 = v16;
            }

            v34 = (v33 - 1);
            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v35 = 0;
            }

            else
            {
              v35 = v32;
            }

            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = v34;
            }

            else
            {
              v36 = v22;
            }

            v37 = [MEMORY[0x1E696B098] valueWithRange:{v36, v35}];
            [v297 setObject:v37 atIndexedSubscript:v287];

            v287 = v287 + 1;
            v17 = v282 + 1;
          }

          while (v282 + 1 != v279);
          v279 = [obj countByEnumeratingWithState:v345 objects:&block count:16];
        }

        while (v279);
      }

      v280 = objc_opt_new();
      v318 = 0u;
      v319 = 0u;
      v316 = 0u;
      v317 = 0u;
      v288 = v271;
      v294 = [v288 countByEnumeratingWithState:&v316 objects:v349 count:16];
      if (v294)
      {
        v290 = *v317;
        do
        {
          for (j = 0; j != v294; ++j)
          {
            if (*v317 != v290)
            {
              objc_enumerationMutation(v288);
            }

            v39 = [*(*(&v316 + 1) + 8 * j) rangeValue];
            v41 = v40;
            if ([obj count] >= 1)
            {
              v42 = 0;
              v43 = 0x7FFFFFFFFFFFFFFFLL;
              v44 = 0x7FFFFFFFFFFFFFFFLL;
              do
              {
                v45 = [obj objectAtIndexedSubscript:v42];
                v46 = [v45 rangeValue];
                v48 = v47;

                v369.location = v39;
                v369.length = v41;
                v380.location = v46;
                v380.length = v48;
                if (NSIntersectionRange(v369, v380).length)
                {
                  if (v44 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v49 = v42;
                  }

                  else
                  {
                    v49 = v44;
                  }

                  v43 = v42;
                }

                else
                {
                  v49 = 0x7FFFFFFFFFFFFFFFLL;
                  if (v44 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_61;
                  }
                }

                ++v42;
                v44 = v49;
              }

              while (v42 < [obj count]);
              v44 = v49;
              if (v49 == 0x7FFFFFFFFFFFFFFFLL)
              {
                continue;
              }

LABEL_61:
              v50 = [v297 objectAtIndexedSubscript:v44];
              v51 = [v50 rangeValue];
              v53 = v52;

              v54 = [v297 objectAtIndexedSubscript:v43];
              v55 = [v54 rangeValue];
              v57 = v56;

              v370.location = v51;
              v370.length = v53;
              v381.location = v55;
              v381.length = v57;
              v58 = NSUnionRange(v370, v381);
              location = v58.location;
              length = v58.length;
LABEL_62:
              ++v43;
              while (length <= 0x27)
              {
                v61 = v44-- < 1;
                if (v61 || ([v297 objectAtIndexedSubscript:v44], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "rangeValue"), v65 = v64, v62, v63 == 0x7FFFFFFFFFFFFFFFLL))
                {
                  v66 = 0;
                }

                else
                {
                  v371.location = v63;
                  v371.length = v65;
                  v382.location = location;
                  v382.length = length;
                  v67 = NSUnionRange(v371, v382);
                  if (v67.length <= 0x96)
                  {
                    location = v67.location;
                  }

                  else
                  {
                    location = location + length - 150;
                  }

                  if (v67.length >= 0x96)
                  {
                    length = 150;
                  }

                  else
                  {
                    length = v67.length;
                  }

                  v66 = 1;
                }

                if (v43 < [v297 count])
                {
                  v68 = [v297 objectAtIndexedSubscript:v43];
                  v69 = [v68 rangeValue];
                  v71 = v70;

                  if (v69 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v372.location = v69;
                    v372.length = v71;
                    v383.location = location;
                    v383.length = length;
                    v72 = NSUnionRange(v372, v383);
                    location = v72.location;
                    if (v72.length >= 0x96)
                    {
                      length = 150;
                    }

                    else
                    {
                      length = v72.length;
                    }

                    goto LABEL_62;
                  }
                }

                ++v43;
                if ((v66 & 1) == 0)
                {
                  break;
                }
              }

              v73 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
              [v280 addObject:v73];
            }
          }

          v294 = [v288 countByEnumeratingWithState:&v316 objects:v349 count:16];
        }

        while (v294);
      }

      v258 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:0 ascending:1 comparator:&__block_literal_global_1020];
      v357 = v258;
      v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v357 count:1];
      v75 = [v280 sortedArrayUsingDescriptors:v74];

      v76 = objc_opt_new();
      v314 = 0u;
      v315 = 0u;
      v312 = 0u;
      v313 = 0u;
      v283 = v75;
      v77 = [v283 countByEnumeratingWithState:&v312 objects:&aBlock count:16];
      if (v77)
      {
        v295 = 0;
        v78 = *v313;
        do
        {
          for (k = 0; k != v77; ++k)
          {
            if (*v313 != v78)
            {
              objc_enumerationMutation(v283);
            }

            v80 = *(*(&v312 + 1) + 8 * k);
            if (!v295)
            {
              goto LABEL_97;
            }

            v81 = [*(*(&v312 + 1) + 8 * k) rangeValue];
            v83 = v82;
            v373.location = [v295 rangeValue];
            v84 = v373.location;
            v85 = v373.length;
            v384.location = v81;
            v384.length = v83;
            v86 = NSIntersectionRange(v373, v384).length || v84 + v85 == v81;
            if (v86 && (v374.location = v81, v374.length = v83, v385.location = v84, v385.length = v85, v87 = NSUnionRange(v374, v385), v87.length <= 0x96))
            {
              v88 = [MEMORY[0x1E696B098] valueWithRange:{v87.location, v87.length}];

              [v76 replaceObjectAtIndex:objc_msgSend(v76 withObject:{"count") - 1, v88}];
            }

            else
            {
LABEL_97:
              v88 = v80;

              [v76 addObject:v88];
            }

            v295 = v88;
          }

          v77 = [v283 countByEnumeratingWithState:&v312 objects:&aBlock count:16];
        }

        while (v77);
      }

      else
      {
        v295 = 0;
      }

      v272 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v76, "count")}];
      v335 = 0u;
      v336 = 0u;
      v333 = 0u;
      v334 = 0u;
      v267 = v76;
      v277 = [v267 countByEnumeratingWithState:&v333 objects:&v329 count:16];
      if (v277)
      {
        v269 = *v334;
        do
        {
          v90 = 0;
          do
          {
            if (*v334 != v269)
            {
              v91 = v90;
              objc_enumerationMutation(v267);
              v90 = v91;
            }

            v291 = v90;
            v92 = [*(*(&v333 + 1) + 8 * v90) rangeValue];
            v94 = v93;
            v95 = [v300 objectAtIndexedSubscript:v92];
            v96 = [v95 rangeValue];
            v98 = v97;

            v99 = [v300 objectAtIndexedSubscript:v94 + v92 - 1];
            v100 = [v99 rangeValue];
            v102 = v101;

            v375.location = v96;
            v375.length = v98;
            v386.location = v100;
            v386.length = v102;
            v103 = NSUnionRange(v375, v386);
            v104 = v288;
            v320 = 0u;
            v321 = 0u;
            v322 = 0u;
            v323 = 0u;
            v105 = [v104 countByEnumeratingWithState:&v320 objects:&buf count:16];
            if (v105)
            {
              v106 = *v321;
              v107 = v103.length;
              v108 = v103.location;
              do
              {
                for (m = 0; m != v105; ++m)
                {
                  if (*v321 != v106)
                  {
                    objc_enumerationMutation(v104);
                  }

                  v376.location = [*(*(&v320 + 1) + 8 * m) rangeValue];
                  v110 = v376.location;
                  v111 = v376.length;
                  v112 = NSIntersectionRange(v376, v103);
                  if (v112.length)
                  {
                    v113 = v112.length >= v111;
                  }

                  else
                  {
                    v113 = 1;
                  }

                  if (!v113)
                  {
                    v377.location = v110;
                    v377.length = v111;
                    v114 = NSUnionRange(v377, v103);
                    v108 = v114.location;
                    v107 = v114.length;
                  }
                }

                v105 = [v104 countByEnumeratingWithState:&v320 objects:&buf count:16];
              }

              while (v105);
            }

            else
            {
              v107 = v103.length;
              v108 = v103.location;
            }

            v115 = [MEMORY[0x1E696B098] valueWithRange:{v108, v107}];
            [v272 addObject:v115];

            v90 = v291 + 1;
          }

          while (v291 + 1 != v277);
          v277 = [v267 countByEnumeratingWithState:&v333 objects:&v329 count:16];
        }

        while (v277);
      }

      v89 = [MEMORY[0x1E695DFD8] setWithArray:v272];
    }

    else
    {
      v89 = 0;
    }

    v6 = v260;
  }

  else
  {
    v89 = 0;
  }

  v304 = 0u;
  v305 = 0u;
  v306 = 0u;
  v307 = 0u;
  v254 = v89;
  v259 = [v254 countByEnumeratingWithState:&v304 objects:v324 count:16];
  if (v259)
  {
    v278 = 0;
    v256 = *v305;
    *&v116 = 138412290;
    v251 = v116;
    while (1)
    {
      for (n = 0; n != v259; n = n + 1)
      {
        if (*v305 != v256)
        {
          objc_enumerationMutation(v254);
        }

        v117 = [*(*(&v304 + 1) + 8 * n) rangeValue];
        v119 = v118;
        os_unfair_lock_lock(&__DDMLCooldownLock);
        os_unfair_lock_unlock(&__DDMLCooldownLock);
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v120 = DDLogHandle_error_log_handle;
        spida = os_signpost_id_generate(v120);

        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v121 = DDLogHandle_error_log_handle;
        v122 = v121;
        if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v121))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v122, OS_SIGNPOST_INTERVAL_BEGIN, spida, "datadetectors.scanString.mlScan", &unk_1BD01C96D, &buf, 2u);
        }

        if (*(a1 + 264))
        {
          v123 = 1;
          *a4 = 1;
          v124 = *(a1 + 264);
          goto LABEL_307;
        }

        v125 = *(a1 + 252);
        if (!v125)
        {
          v125 = DDComputeDominantScriptOrLanguage(v285);
        }

        v262 = 0;
        if (v125 == 30)
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v359 = 0x3032000000;
          v360 = __Block_byref_object_copy__1028;
          v361 = __Block_byref_object_dispose__1029;
          v362 = 0;
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v126 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(aBlock) = 0;
            _os_log_debug_impl(&dword_1BCFDD000, v126, OS_LOG_TYPE_DEBUG, ">>> Will dispatch model update", &aBlock, 2u);
          }

          v127 = _ddmlModelQueue();
          block = MEMORY[0x1E69E9820];
          v352 = 3221225472;
          v353 = __DDMLScannerGetEmbeddingAndAssetsForScriptWithCompletionHandler_block_invoke;
          v354 = &unk_1E8002238;
          p_buf = &buf;
          dispatch_sync(v127, &block);

          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v128 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(aBlock) = 0;
            _os_log_debug_impl(&dword_1BCFDD000, v128, OS_LOG_TYPE_DEBUG, ">>> Did dispatch model update", &aBlock, 2u);
          }

          v129 = *(*(&buf + 1) + 40);
          if (v129 && ([v129 hasAvailableAssets] & 1) == 0)
          {
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v130 = DDLogHandle_error_log_handle;
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(aBlock) = 0;
              _os_log_debug_impl(&dword_1BCFDD000, v130, OS_LOG_TYPE_DEBUG, ">>> no embedding assets, trying to fetch them", &aBlock, 2u);
            }

            v131 = *(*(&buf + 1) + 40);
            v349[0] = MEMORY[0x1E69E9820];
            v349[1] = 3221225472;
            v349[2] = __DDMLScannerGetEmbeddingAndAssetsForScriptWithCompletionHandler_block_invoke_190;
            v349[3] = &unk_1E8002260;
            v350 = 0;
            [v131 requestEmbeddingAssetsWithCompletionHandler:v349];
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v132 = DDLogHandle_error_log_handle;
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(aBlock) = 0;
              _os_log_debug_impl(&dword_1BCFDD000, v132, OS_LOG_TYPE_DEBUG, ">>> embedding assets fetch done", &aBlock, 2u);
            }
          }

          v262 = *(*(&buf + 1) + 40);
          _Block_object_dispose(&buf, 8);
        }

        if (![v262 hasAvailableAssets])
        {
          v136 = *(a1 + 272);
          if (v136)
          {
            CFRelease(v136);
            v289 = 0;
            *(a1 + 272) = 0;
          }

          else
          {
            v289 = 0;
          }

          goto LABEL_301;
        }

        v133 = v262;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v359 = 0x3032000000;
        v360 = __Block_byref_object_copy__1028;
        v361 = __Block_byref_object_dispose__1029;
        v362 = 0;
        v134 = _ddmlModelQueue();
        block = MEMORY[0x1E69E9820];
        v352 = 3221225472;
        v353 = __DDMLGetTaggerModel_block_invoke;
        v354 = &unk_1E8002338;
        v264 = v133;
        p_buf = v264;
        v356 = &buf;
        dispatch_sync(v134, &block);

        if ([*(*(&buf + 1) + 40) taggerModel])
        {
          v135 = 0;
        }

        else
        {
          v135 = [*(*(&buf + 1) + 40) error];
          v137 = v135;
        }

        v138 = [*(*(&buf + 1) + 40) supportedTypes];
        v139 = v138;
        v266 = [*(*(&buf + 1) + 40) taggerModel];

        _Block_object_dispose(&buf, 8);
        v253 = v135;
        v252 = v138;
        DDScannerSetMLSupportedTypes(a1, v252);
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v140 = DDLogHandle_error_log_handle;
        v141 = v140;
        if (!v266)
        {
          v273 = v140;
          if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v251;
            *(&buf + 4) = v253;
            _os_log_error_impl(&dword_1BCFDD000, v273, OS_LOG_TYPE_ERROR, "Failed to acquire DDML model with error %@", &buf, 0xCu);
          }

          v289 = 0;
          goto LABEL_300;
        }

        v142 = os_signpost_id_generate(v140);

        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v143 = DDLogHandle_error_log_handle;
        v144 = v143;
        if (v142 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v143))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v144, OS_SIGNPOST_INTERVAL_BEGIN, v142, "datadetectors.scanString.sentenceTokenization", &unk_1BD01C96D, &buf, 2u);
        }

        v145 = [MEMORY[0x1E696B098] valueWithRange:{v117, v119}];
        v357 = v145;
        v146 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v357 count:1];

        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v147 = DDLogHandle_error_log_handle;
        v148 = v147;
        if (v142 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v147))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v148, OS_SIGNPOST_INTERVAL_END, v142, "datadetectors.scanString.sentenceTokenization", &unk_1BD01C96D, &buf, 2u);
        }

        v327 = 0u;
        v328 = 0u;
        v325 = 0u;
        v326 = 0u;
        v273 = v146;
        v296 = [v273 countByEnumeratingWithState:&v325 objects:&block count:16];
        if (v296)
        {
          v289 = 0;
          v292 = *v326;
          do
          {
            for (obja = 0; obja != v296; obja = obja + 1)
            {
              if (*v326 != v292)
              {
                objc_enumerationMutation(v273);
              }

              if (a1 && (*(a1 + 232) & 1) != 0)
              {
                goto LABEL_297;
              }

              v149 = [*(*(&v325 + 1) + 8 * obja) rangeValue];
              v151 = [(__CFString *)v285 substringWithRange:v149, v150];
              v301 = v151;
              if (v151)
              {
                if ([v151 length])
                {
                  v152 = v264;
                  v153 = MEMORY[0x1E695DF70];
                  v154 = v301;
                  v281 = [v153 array];
                  v155 = [v154 lowercaseString];

                  v156 = [v152 dimension];
                  if (DDLogHandle_onceToken != -1)
                  {
                    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                  }

                  v157 = DDLogHandle_error_log_handle;
                  v158 = os_signpost_id_generate(v157);

                  if (DDLogHandle_onceToken != -1)
                  {
                    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                  }

                  v159 = DDLogHandle_error_log_handle;
                  v160 = v159;
                  v161 = v158 - 1;
                  if (v158 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v159))
                  {
                    LOWORD(aBlock) = 0;
                    _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v160, OS_SIGNPOST_INTERVAL_BEGIN, v158, "datadetectors.scanString.embedding", &unk_1BD01C96D, &aBlock, 2u);
                  }

                  *&v316 = 0;
                  [v152 requestBackgroundModelLoadingWithTimeout:&v316 error:1.0];
                  v298 = v316;
                  if (v298)
                  {
                    if (DDLogHandle_onceToken != -1)
                    {
                      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                    }

                    v162 = DDLogHandle_error_log_handle;
                    v163 = v162;
                    if (v161 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v162))
                    {
                      LOWORD(aBlock) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v163, OS_SIGNPOST_INTERVAL_END, v158, "datadetectors.scanString.embedding", &unk_1BD01C96D, &aBlock, 2u);
                    }

                    v164 = [v298 domain];
                    Helper_x8__NLNaturalLanguageErrorDomain = gotLoadHelper_x8__NLNaturalLanguageErrorDomain(v165);
                    if ([v168 isEqualToString:{**(v167 + 2248), Helper_x8__NLNaturalLanguageErrorDomain}])
                    {
                      v169 = [v298 code] == 12;

                      if (v169)
                      {
                        if (DDLogHandle_onceToken != -1)
                        {
                          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                        }

                        v170 = DDLogHandle_error_log_handle;
                        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(aBlock) = v251;
                          *(&aBlock + 4) = v298;
                          _os_log_error_impl(&dword_1BCFDD000, v170, OS_LOG_TYPE_ERROR, "Loading embedding model timed out: %@", &aBlock, 0xCu);
                        }

                        os_unfair_lock_lock(&__DDMLCooldownLock);
                        v171 = dispatch_time(0, 15000000000);
                        v172 = _ddmlModelQueue();
                        dispatch_after(v171, v172, &__block_literal_global_246);

                        os_unfair_lock_unlock(&__DDMLCooldownLock);
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                    *&v312 = 0;
                    v173 = [v152 requestBackgroundEmbeddingResultForString:v155 language:0 error:&v312];
                    v298 = v312;
                    if (DDLogHandle_onceToken != -1)
                    {
                      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                    }

                    v174 = DDLogHandle_error_log_handle;
                    v175 = v174;
                    if (v161 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v174))
                    {
                      LOWORD(aBlock) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v175, OS_SIGNPOST_INTERVAL_END, v158, "datadetectors.scanString.embedding", &unk_1BD01C96D, &aBlock, 2u);
                    }

                    *&aBlock = 0;
                    *(&aBlock + 1) = &aBlock;
                    v338 = 0x3032000000;
                    v339 = __Block_byref_object_copy__1028;
                    v340 = __Block_byref_object_dispose__1029;
                    v341 = 0;
                    v176 = _ddmlModelQueue();
                    *&v329 = MEMORY[0x1E69E9820];
                    *(&v329 + 1) = 3221225472;
                    *&v330 = ___DDMLScannerRunEmbeddingAndModelWithString_block_invoke;
                    *(&v330 + 1) = &unk_1E8002238;
                    *&v331 = &aBlock;
                    dispatch_sync(v176, &v329);

                    v177 = [MEMORY[0x1E695DF88] data];
                    gotLoadHelper_x8__OBJC_CLASS___NLTagger(v178);
                    v180 = objc_alloc(*(v179 + 2680));
                    Helper_x8__NLTagSchemeTokenType = gotLoadHelper_x8__NLTagSchemeTokenType(v181);
                    *&v333 = **(v183 + 2552);
                    v184 = v333;
                    v185 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v333 count:{1, Helper_x8__NLTagSchemeTokenType}];
                    v270 = [v180 initWithTagSchemes:v185];

                    [v270 setString:v155];
                    v186 = [v155 length];
                    *&buf = MEMORY[0x1E69E9820];
                    *(&buf + 1) = 3221225472;
                    v359 = ___DDMLScannerRunEmbeddingAndModelWithString_block_invoke_2;
                    v360 = &unk_1E80022E0;
                    v361 = v155;
                    v187 = v281;
                    v362 = v187;
                    v255 = v173;
                    v363 = v255;
                    v365 = v156;
                    v268 = v177;
                    v364 = v268;
                    [v270 enumerateTagsInRange:0 unit:v186 scheme:0 options:v184 usingBlock:{36, &buf}];
                    if (DDLogHandle_onceToken != -1)
                    {
                      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                    }

                    v188 = DDLogHandle_error_log_handle;
                    v189 = os_signpost_id_generate(v188);

                    if (DDLogHandle_onceToken != -1)
                    {
                      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                    }

                    v190 = DDLogHandle_error_log_handle;
                    v191 = v190;
                    if (v189 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v190))
                    {
                      *v345 = 0;
                      _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v191, OS_SIGNPOST_INTERVAL_BEGIN, v189, "datadetectors.scanString.runHeadModel", &unk_1BD01C96D, v345, 2u);
                    }

                    *&v308 = 0;
                    [v187 count];
                    v192 = v268;
                    [v268 bytes];
                    MRLNeuralNetworkSetInput_delayInitStub(v193);
                    if (v308)
                    {
                      if (DDLogHandle_onceToken != -1)
                      {
                        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                      }

                      v195 = DDLogHandle_error_log_handle;
                      if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
                      {
                        *v345 = v251;
                        *&v345[4] = v308;
                        _os_log_error_impl(&dword_1BCFDD000, v195, OS_LOG_TYPE_ERROR, "failed to set input to tagger model %@", v345, 0xCu);
                      }
                    }

                    MRLNeuralNetworkPredict_delayInitStub(v194);
                    if (v308)
                    {
                      if (DDLogHandle_onceToken != -1)
                      {
                        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                      }

                      v197 = DDLogHandle_error_log_handle;
                      if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
                      {
                        *v345 = v251;
                        *&v345[4] = v308;
                        _os_log_error_impl(&dword_1BCFDD000, v197, OS_LOG_TYPE_ERROR, "failed to get prediction from tagger model %@", v345, 0xCu);
                      }
                    }

                    Output_delayInitStub = MRLNeuralNetworkGetOutput_delayInitStub(v196);
                    if (DDLogHandle_onceToken != -1)
                    {
                      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                    }

                    v199 = DDLogHandle_error_log_handle;
                    v200 = v199;
                    if (v189 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v199))
                    {
                      *v345 = 0;
                      _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v200, OS_SIGNPOST_INTERVAL_END, v189, "datadetectors.scanString.runHeadModel", &unk_1BD01C96D, v345, 2u);
                    }

                    if (Output_delayInitStub)
                    {
                      v201 = [*(*(&aBlock + 1) + 40) tokenLabelMap];
                      v202 = [v201 count];

                      for (ii = 0; ii < [v187 count]; ++ii)
                      {
                        if (v202)
                        {
                          v204 = 0;
                          v205 = 0;
                          v206 = 0.0;
                          do
                          {
                            if (*(Output_delayInitStub + 4 * v204) > v206)
                            {
                              v206 = *(Output_delayInitStub + 4 * v204);
                              v205 = v204;
                            }

                            ++v204;
                          }

                          while (v202 != v204);
                        }

                        else
                        {
                          v205 = 0;
                          v206 = 0.0;
                        }

                        v207 = [*(*(&aBlock + 1) + 40) tokenTypeForValue:v205];
                        v208 = [v187 objectAtIndexedSubscript:ii];
                        [v208 setTokenType:v207];

                        v209 = [v187 objectAtIndexedSubscript:ii];
                        *&v210 = v206;
                        [v209 setConfidence:v210];

                        Output_delayInitStub += 4 * v202;
                      }
                    }

                    else
                    {
                      if (DDLogHandle_onceToken != -1)
                      {
                        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                      }

                      v211 = DDLogHandle_error_log_handle;
                      if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
                      {
                        *v345 = v251;
                        *&v345[4] = v308;
                        _os_log_error_impl(&dword_1BCFDD000, v211, OS_LOG_TYPE_ERROR, "failed to get output from tagger model %@", v345, 0xCu);
                      }

                      [v187 removeAllObjects];
                    }

                    _Block_object_dispose(&aBlock, 8);
                  }

                  v320 = 0u;
                  v321 = 0u;
                  v322 = 0u;
                  v323 = 0u;
                  v212 = v281;
                  v213 = [v212 countByEnumeratingWithState:&v320 objects:v349 count:16];
                  if (v213)
                  {
                    v214 = *v321;
                    do
                    {
                      for (jj = 0; jj != v213; ++jj)
                      {
                        if (*v321 != v214)
                        {
                          objc_enumerationMutation(v212);
                        }

                        v216 = *(*(&v320 + 1) + 8 * jj);
                        v217 = [v216 range];
                        [v216 setRange:{v217 + v149, v218}];
                      }

                      v213 = [v212 countByEnumeratingWithState:&v320 objects:v349 count:16];
                    }

                    while (v213);
                  }

                  v219 = v285;
                  v220 = v212;
                  v221 = [MEMORY[0x1E695DF70] array];
                  *&v316 = 0;
                  *(&v316 + 1) = &v316;
                  *&v317 = 0x2020000000;
                  DWORD2(v317) = 10;
                  *v345 = 0;
                  *&v345[8] = v345;
                  *&v346 = 0x3010000000;
                  *(&v346 + 1) = &unk_1BD01F1A6;
                  v347 = 0uLL;
                  *&v312 = 0;
                  *(&v312 + 1) = &v312;
                  v313 = 0x2020000000uLL;
                  *&aBlock = MEMORY[0x1E69E9820];
                  *(&aBlock + 1) = 3221225472;
                  v338 = __DDMLScannerBuildResultsFromTokens_block_invoke;
                  v339 = &unk_1E8002308;
                  v342 = v345;
                  v299 = v219;
                  v340 = v299;
                  v343 = &v312;
                  v344 = &v316;
                  v222 = v221;
                  v341 = v222;
                  v223 = _Block_copy(&aBlock);
                  v331 = 0u;
                  v332 = 0u;
                  v329 = 0u;
                  v330 = 0u;
                  v224 = v220;
                  v225 = [v224 countByEnumeratingWithState:&v329 objects:&buf count:16];
                  if (v225)
                  {
                    v226 = *v330;
                    do
                    {
                      for (kk = 0; kk != v225; ++kk)
                      {
                        if (*v330 != v226)
                        {
                          objc_enumerationMutation(v224);
                        }

                        v228 = *(*(&v329 + 1) + 8 * kk);
                        v229 = [v228 tokenType];
                        if ([v229 classification] != 10)
                        {
                          if ([v229 beginning])
                          {
                            v223[2](v223);
                            v230 = [v229 classification];
                            *(*(&v316 + 1) + 24) = v230;
                            v231 = [v228 range];
                            [v228 range];
                            v232 = *&v345[8];
                            *(*&v345[8] + 32) = v231;
                            *(v232 + 40) = v233;
                            [v228 confidence];
                            v235 = v234;
LABEL_280:
                            *(*(&v312 + 1) + 24) = v235;
                            goto LABEL_282;
                          }

                          v236 = *(*(&v316 + 1) + 24);
                          if (v236 == [v229 classification])
                          {
                            v237 = [v228 range];
                            [v228 range];
                            *(*&v345[8] + 40) = v238 + v237 - *(*&v345[8] + 32);
                            v239 = *(*(&v312 + 1) + 24);
                            [v228 confidence];
                            v235 = v240;
                            if (v239 < v235)
                            {
                              v235 = v239;
                            }

                            goto LABEL_280;
                          }

LABEL_281:
                          v223[2](v223);
                          goto LABEL_282;
                        }

                        if (*(*(&v316 + 1) + 24) != 10)
                        {
                          goto LABEL_281;
                        }

LABEL_282:
                      }

                      v225 = [v224 countByEnumeratingWithState:&v329 objects:&buf count:16];
                    }

                    while (v225);
                  }

                  v223[2](v223);
                  v241 = v222;

                  _Block_object_dispose(&v312, 8);
                  _Block_object_dispose(v345, 8);
                  _Block_object_dispose(&v316, 8);

                  v242 = v289;
                  if (!v289)
                  {
                    v242 = [v241 count];
                    if (v242)
                    {
                      v242 = [MEMORY[0x1E695DF70] array];
                    }
                  }

                  v289 = v242;
                  [v242 addObjectsFromArray:v241];
                }

                v151 = v301;
              }
            }

            v296 = [v273 countByEnumeratingWithState:&v325 objects:&block count:16];
          }

          while (v296);

          if (!a1)
          {
LABEL_299:
            *a4 = 1;
            goto LABEL_300;
          }
        }

        else
        {
          v289 = 0;
LABEL_297:
        }

        if ((*(a1 + 232) & 1) == 0)
        {
          goto LABEL_299;
        }

LABEL_300:

LABEL_301:
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v243 = DDLogHandle_error_log_handle;
        v244 = v243;
        if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v243))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v244, OS_SIGNPOST_INTERVAL_END, spida, "datadetectors.scanString.mlScan", &unk_1BD01C96D, &buf, 2u);
        }

        v123 = *a4 != 0;
        v124 = v289;
LABEL_307:
        v245 = v278;
        if (v123 && v124)
        {
          v246 = v124;
          if (CFArrayGetCount(v124) < 1)
          {
            goto LABEL_312;
          }

          if (v278)
          {
            [v278 addObjectsFromArray:v246];
LABEL_312:
            v245 = v278;
            goto LABEL_314;
          }

          v245 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v246];
        }

LABEL_314:
        v278 = v245;
      }

      v259 = [v254 countByEnumeratingWithState:&v304 objects:v324 count:16];
      if (!v259)
      {
        goto LABEL_318;
      }
    }
  }

  v278 = 0;
LABEL_318:

  v247 = [v278 array];
  v248 = [v247 mutableCopy];

  if (v248)
  {
    CFAutorelease(v248);
  }

  v249 = *MEMORY[0x1E69E9840];
  return v248;
}