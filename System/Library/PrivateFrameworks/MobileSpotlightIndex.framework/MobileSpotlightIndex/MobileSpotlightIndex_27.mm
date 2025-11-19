uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 != -1 && v9 >= a6)
  {
    if (a5)
    {
      v23 = v6;
      v24 = v7;
      v14 = *(result + 120);
      v13 = *(result + 128);
      v15 = *(result + 136);
      v16 = *(result + 144);
      v17 = *(result + 152);
      v18 = *(result + 160);
      v19 = *(result + 184);
      v20 = *(result + 80);
      v22[2] = *(result + 64);
      v22[3] = v20;
      v22[4] = *(result + 96);
      v21 = *(result + 48);
      v22[0] = *(result + 32);
      v22[1] = v21;
      *&v21 = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v14 + 264, v13, v15, v16, v17, a4, a5, 0, 0, v18, v19, 0, 21, v22, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v8 + 24) = a6;
  }

  return result;
}

int *SIPommesDBOScoredTopicFieldIterator(int *result, uint64_t *a2, int *a3, int *a4, int *a5, int *a6, uint64_t a7, int a8, uint64_t a9)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_7;
  }

  v11 = *a3;
  if (v11 > a8)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(14);
    v14 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_6:
      result = __error();
      *result = v12;
      goto LABEL_7;
    }

    v15 = *a3;
    *buf = 67109376;
    v78 = v15;
    v79 = 1024;
    LODWORD(v80) = a8;
LABEL_5:
    _os_log_impl(&dword_1C278D000, v13, v14, "%d index greater than fetched attribute count %d", buf, 0xEu);
    goto LABEL_6;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  v19 = *(a7 + 8 * v11);
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = *a4;
  if (v20 > a8)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(14);
    v14 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_6;
    }

    v21 = *a4;
    *buf = 67109376;
    v78 = v21;
    v79 = 1024;
    LODWORD(v80) = a8;
    goto LABEL_5;
  }

  if (!*(a7 + 8 * v20))
  {
    goto LABEL_7;
  }

  v25 = result;
  if (a5)
  {
    v26 = *a5;
    if (v26 > a8)
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(14);
      v14 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_6;
      }

      v27 = *a5;
      *buf = 67109376;
      v78 = v27;
      v79 = 1024;
      LODWORD(v80) = a8;
      goto LABEL_5;
    }

    if (!*(a7 + 8 * v26))
    {
      goto LABEL_7;
    }
  }

  if (a6)
  {
    v28 = *a6;
    if (v28 > a8)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(14);
      v31 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v30, v31))
      {
LABEL_24:
        result = __error();
        *result = v29;
        goto LABEL_7;
      }

      v32 = *a6;
      *buf = 67109376;
      v78 = v32;
      v79 = 1024;
      LODWORD(v80) = a8;
      v33 = "%d index greater than fetched attribute count %d";
      v34 = v30;
      v35 = v31;
      v36 = 14;
LABEL_23:
      _os_log_impl(&dword_1C278D000, v34, v35, v33, buf, v36);
      goto LABEL_24;
    }

    if (!*(a7 + 8 * v28))
    {
      goto LABEL_7;
    }
  }

  v75 = 0;
  __s = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  if (db_get_field_by_id(result, a2, v19, &v75, &__s) || a3[2] != *v75)
  {
    v41 = *__error();
    v42 = _SILogForLogForCategory(14);
    v43 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v42, v43))
    {
LABEL_52:
      result = __error();
      *result = v41;
      goto LABEL_7;
    }

    v44 = *a3;
    v45 = *a2;
    *buf = 67109376;
    v78 = v44;
    v79 = 2048;
    v80 = v45;
LABEL_51:
    _os_log_impl(&dword_1C278D000, v42, v43, "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.", buf, 0x12u);
    goto LABEL_52;
  }

  result = db_get_field_by_id(v25, a2, *(a7 + 8 * *a4), &v73, &v74);
  if (result || a4[2] != *v73)
  {
    v41 = *__error();
    v42 = _SILogForLogForCategory(14);
    v43 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_52;
    }

    v46 = *a4;
    v47 = *a2;
    *buf = 67109376;
    v78 = v46;
    v79 = 2048;
    v80 = v47;
    goto LABEL_51;
  }

  if (a5)
  {
    result = db_get_field_by_id(v25, a2, *(a7 + 8 * *a5), &v71, &v72);
    if (result || a5[2] != *v71)
    {
      v41 = *__error();
      v42 = _SILogForLogForCategory(14);
      v43 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_52;
      }

      v48 = *a5;
      v49 = *a2;
      *buf = 67109376;
      v78 = v48;
      v79 = 2048;
      v80 = v49;
      goto LABEL_51;
    }
  }

  if (a6)
  {
    result = db_get_field_by_id(v25, a2, *(a7 + 8 * *a6), &v69, &v70);
    if (result || a6[2] != *v69)
    {
      v29 = *__error();
      v50 = _SILogForLogForCategory(14);
      v51 = 2 * (dword_1EBF46B04 < 4);
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_24;
      }

      v52 = *a6;
      v53 = *a2;
      *buf = 67109376;
      v78 = v52;
      v79 = 2048;
      v80 = v53;
      v33 = "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.";
      v34 = v50;
      v35 = v51;
      v36 = 18;
      goto LABEL_23;
    }
  }

  if (v75)
  {
    if ((v75[1] & 0x20) != 0)
    {
      if (v73)
      {
        if ((v73[1] & 0x20) != 0)
        {
          v37 = v72;
          if (!v72 || (v71[1] & 0x20) != 0)
          {
            v67 = v70;
            if (!v70 || (v69[1] & 0x20) != 0)
            {
              buf[0] = 0;
              v38 = *(v75 + 2);
              if (v38)
              {
                if (*v75 == 11 && *v73 == 10)
                {
                  v39 = __s;
                  v40 = v74;
                  v65 = v72 ? v72 + *(v71 + 2) : 0;
                  v66 = 0;
                  v68 = &__s[v38];
                  while (2)
                  {
                    v54 = !v37 || v67 == 0;
                    v55 = v54 || v37 >= v65;
                    v56 = !v55;
                    if (v39 < v68)
                    {
                      v40 += 8;
                      v57 = v66;
                      while (1)
                      {
                        v58 = *(v40 - 8);
                        if ((v75[1] & 0x10) != 0)
                        {
                          result = db_get_string_for_id_locked(v25, *v39);
                          if (!result)
                          {
                            goto LABEL_7;
                          }

                          v61 = result;
                          v59 = strlen(result);
                          v60 = 4;
                        }

                        else
                        {
                          v59 = strlen(v39);
                          v60 = v59 + 1;
                          v61 = v39;
                        }

                        result = (*(a9 + 16))(a9, v61, v59, 0, 0, v57, buf, v58);
                        if (buf[0])
                        {
                          goto LABEL_7;
                        }

                        v39 = (v39 + v60);
                        if (v56)
                        {
                          break;
                        }

                        ++v57;
                        v40 += 8;
                        if (v39 >= v68)
                        {
                          goto LABEL_7;
                        }
                      }

                      if (*v67 >= 1)
                      {
                        if ((v71[1] & 0x10) != 0)
                        {
                          result = db_get_string_for_id_locked(v25, *v37);
                          if (!result)
                          {
                            goto LABEL_86;
                          }

                          v64 = result;
                          v62 = strlen(result);
                          v63 = 4;
                        }

                        else
                        {
                          v62 = strlen(v37);
                          v63 = v62 + 1;
                          v64 = v37;
                        }

                        v37 = (v37 + v63);
                        result = (*(a9 + 16))(a9, v61, v59, v64, v62, v66, buf, v58);
                      }

LABEL_86:
                      ++v66;
                      ++v67;
                      if ((buf[0] & 1) == 0)
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 != -1 && v9 >= a6)
  {
    if (a5)
    {
      v23 = v6;
      v24 = v7;
      v14 = *(result + 120);
      v13 = *(result + 128);
      v15 = *(result + 136);
      v16 = *(result + 144);
      v17 = *(result + 152);
      v18 = *(result + 160);
      v19 = *(result + 184);
      v20 = *(result + 80);
      v22[2] = *(result + 64);
      v22[3] = v20;
      v22[4] = *(result + 96);
      v21 = *(result + 48);
      v22[0] = *(result + 32);
      v22[1] = v21;
      *&v21 = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v14 + 264, v13, v15, v16, v17, a4, a5, 0, 0, v18, v19, 0, 22, v22, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v8 + 24) = a6;
  }

  return result;
}

int *SIPommesDBOGetIntValue(int *result, uint64_t *a2, int *a3, uint64_t a4, int a5, _DWORD *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3 || (v8 = *a3, v8 > a5))
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(14);
    v11 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v10, v11))
    {
LABEL_6:
      result = __error();
      *result = v9;
      goto LABEL_7;
    }

    v12 = *a3;
    *buf = 67109376;
    v28 = v12;
    v29 = 1024;
    LODWORD(v30) = a5;
    v13 = "%d index greater than fetched attribute count %d";
    v14 = v10;
    v15 = v11;
    v16 = 14;
LABEL_5:
    _os_log_impl(&dword_1C278D000, v14, v15, v13, buf, v16);
    goto LABEL_6;
  }

  v18 = *(a4 + 8 * v8);
  if (!v18)
  {
    goto LABEL_7;
  }

  v25 = 0;
  v26 = 0;
  result = db_get_field_by_id(result, a2, v18, &v25, &v26);
  if (result || *v25 != 7)
  {
    v9 = *__error();
    v21 = _SILogForLogForCategory(14);
    v22 = 2 * (dword_1EBF46B04 < 4);
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_6;
    }

    v23 = *a3;
    v24 = *a2;
    *buf = 67109376;
    v28 = v23;
    v29 = 2048;
    v30 = v24;
    v13 = "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.";
    v14 = v21;
    v15 = v22;
    v16 = 18;
    goto LABEL_5;
  }

  if (a6)
  {
    *a6 = *v26;
  }

LABEL_7:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 == -1 || v9 < a6)
  {
    v24 = v6;
    v25 = v7;
    *(v8 + 24) = a6;
    v15 = *(result + 120);
    v14 = *(result + 128);
    v16 = *(result + 136);
    v17 = *(result + 144);
    v18 = *(result + 152);
    v19 = *(result + 160);
    v20 = *(result + 184);
    v21 = *(result + 80);
    v23[2] = *(result + 64);
    v23[3] = v21;
    v23[4] = *(result + 96);
    v22 = *(result + 48);
    v23[0] = *(result + 32);
    v23[1] = v22;
    *&v22 = *(result + 168);
    return _SIPommesSuggestionsProcessTopicAttribute(v15 + 304, v14, v16, v17, v18, a2, a3, a4, a5, v19, v20, 0, 23, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
  }

  return result;
}

uint64_t ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (!a4)
  {
    v24 = v7;
    v25 = v8;
    v11 = result;
    if (a3 * 0.3 <= *(result + 120))
    {
      v14 = *(result + 128);
      v13 = *(result + 136);
      v15 = *(result + 144);
      v16 = *(result + 152);
      v17 = *(result + 160);
      v18 = *(result + 168);
      v19 = *(result + 192);
      v20 = *(result + 80);
      v23[2] = *(result + 64);
      v23[3] = v20;
      v23[4] = *(result + 96);
      v21 = *(result + 48);
      v23[0] = *(result + 32);
      v23[1] = v21;
      *&v21 = *(result + 176);
      result = _SIPommesSuggestionsProcessTopicAttribute(v14 + 224, v13, v15, v16, v17, a2, a3, 0, a5, v18, v19, 0, 8, v23, *(result + 188), *(result + 193), HIBYTE(*(result + 193)));
    }

    if ((*(v11 + 195) & 1) == 0)
    {
      v22 = *(v11 + 120);
      if (v22 <= 5 && v22 == *(*(*(v11 + 112) + 8) + 24) + 1)
      {
        *a7 = 1;
      }
    }
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 != -1 && v9 >= a6)
  {
    if (a5)
    {
      v23 = v6;
      v24 = v7;
      v14 = *(result + 120);
      v13 = *(result + 128);
      v15 = *(result + 136);
      v16 = *(result + 144);
      v17 = *(result + 152);
      v18 = *(result + 160);
      v19 = *(result + 184);
      v20 = *(result + 80);
      v22[2] = *(result + 64);
      v22[3] = v20;
      v22[4] = *(result + 96);
      v21 = *(result + 48);
      v22[0] = *(result + 32);
      v22[1] = v21;
      *&v21 = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v14 + 264, v13, v15, v16, v17, a4, a5, 0, 0, v18, v19, 0, 21, v22, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v8 + 24) = a6;
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 != -1 && v9 >= a6)
  {
    if (a5)
    {
      v23 = v6;
      v24 = v7;
      v14 = *(result + 120);
      v13 = *(result + 128);
      v15 = *(result + 136);
      v16 = *(result + 144);
      v17 = *(result + 152);
      v18 = *(result + 160);
      v19 = *(result + 184);
      v20 = *(result + 80);
      v22[2] = *(result + 64);
      v22[3] = v20;
      v22[4] = *(result + 96);
      v21 = *(result + 48);
      v22[0] = *(result + 32);
      v22[1] = v21;
      *&v21 = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v14 + 264, v13, v15, v16, v17, a4, a5, 0, 0, v18, v19, 0, 22, v22, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v8 + 24) = a6;
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 == -1 || v9 < a6)
  {
    v24 = v6;
    v25 = v7;
    *(v8 + 24) = a6;
    v15 = *(result + 120);
    v14 = *(result + 128);
    v16 = *(result + 136);
    v17 = *(result + 144);
    v18 = *(result + 152);
    v19 = *(result + 160);
    v20 = *(result + 184);
    v21 = *(result + 80);
    v23[2] = *(result + 64);
    v23[3] = v21;
    v23[4] = *(result + 96);
    v22 = *(result + 48);
    v23[0] = *(result + 32);
    v23[1] = v22;
    *&v22 = *(result + 168);
    return _SIPommesSuggestionsProcessTopicAttribute(v15 + 304, v14, v16, v17, v18, a2, a3, a4, a5, v19, v20, 0, 23, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
  }

  return result;
}

void SIPommesDBOFieldIterator(uint64_t a1, unsigned int a2, const void *a3, int *a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  v72 = a4;
  v73 = a8;
  v75 = a3;
  v76 = a5;
  v69[1] = v69;
  v84 = *MEMORY[0x1E69E9840];
  __s = 0;
  v80 = 0;
  bzero(v81, 0x3E8uLL);
  v12 = 0;
  v13 = 0;
  v77 = a2;
  *&v14 = 67109376;
  v74 = v14;
  *&v14 = 134217984;
  v70 = v14;
  v71 = a1;
  do
  {
    v15 = (a1 + 16 * v12);
    v16 = *v15;
    if (*v15 > a7)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(14);
      v19 = 2 * (dword_1EBF46B04 < 4);
      if (os_log_type_enabled(v18, v19))
      {
        *buf = v74;
        *v83 = v16;
        *&v83[4] = 1024;
        *&v83[6] = a7;
        _os_log_impl(&dword_1C278D000, v18, v19, "%d index greater than fetched attribute count %d", buf, 0xEu);
      }

      *__error() = v17;
      goto LABEL_26;
    }

    v20 = v16;
    v21 = *(a6 + 8 * v16);
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = v15[2];
    v23 = *(v15 + 12);
    if (!v75 || (v15[1] & 1) == 0)
    {
      goto LABEL_11;
    }

    v78 = 0;
    __s = v81;
    if (!doc_store_get_document(v75, *v76, v81, &v78))
    {
      if (!v78 || (v81[v78 - 1] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      v42 = v81[v78 - 1];
      if (v42 - 194 > 0x32)
      {
        if (v42 > 0xBF)
        {
          goto LABEL_60;
        }

        v57 = v81[v78 - 2];
        if ((v57 - 224) > 0x14)
        {
          if (v57 > -65)
          {
            goto LABEL_60;
          }

          v43 = v78 - 3;
          v63 = v81[v78 - 3];
          if ((v63 - 240) > 4 || ((byte_1C2BFF1EA[v57 >> 4] >> (v63 & 7)) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v56 = v57 > 0xEF;
          v58 = v57 & 7;
          v59 = &a00000000000000[v57 & 0xF];
          v60 = v42 >> 5;
          if (v56)
          {
            LOBYTE(v60) = v58;
            v59 = &byte_1C2BFF1EA[v81[v78 - 1] >> 4];
          }

          if (((*v59 >> v60) & 1) == 0)
          {
            goto LABEL_60;
          }

          v43 = v78 - 2;
        }
      }

      else
      {
        v43 = v78 - 1;
      }

      v78 = v43;
LABEL_60:
      v64 = *__error();
      v65 = _SILogForLogForCategory(8);
      v66 = 2 * (dword_1EBF46AEC < 4);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = *v76;
        *buf = v70;
        *v83 = v67;
        _os_log_impl(&dword_1C278D000, v65, v66, "Get snippet from doc store for oid %lld", buf, 0xCu);
      }

      *__error() = v64;
      std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(*(v73 + 24), __s, v78, v20, 0);
      goto LABEL_26;
    }

    v21 = *(a6 + 8 * v16);
LABEL_11:
    v24 = a6;
    if (db_get_field_by_id(v72, v76, v21, &v80, &__s) || (v25 = v80, v22 != *v80))
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(14);
      v34 = 2 * (dword_1EBF46B04 < 4);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *v76;
        *buf = v74;
        *v83 = v16;
        *&v83[4] = 2048;
        *&v83[6] = v35;
        v36 = v33;
        v37 = v34;
        v38 = "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.";
        goto LABEL_21;
      }

LABEL_22:
      *__error() = v32;
      if (v23)
      {
        v39 = *(v73 + 24);
        v40 = v13;
        v41 = 0;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v26 = strlen(__s);
    if (!v26)
    {
      v32 = *__error();
      v44 = _SILogForLogForCategory(14);
      v45 = 2 * (dword_1EBF46B04 < 4);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = *v76;
        *buf = v74;
        *v83 = v16;
        *&v83[4] = 2048;
        *&v83[6] = v46;
        v36 = v44;
        v37 = v45;
        v38 = "[Pommes_Suggestions]debug: Cannot get attribute %d for oid %lld.";
LABEL_21:
        _os_log_impl(&dword_1C278D000, v36, v37, v38, buf, 0x12u);
      }

      goto LABEL_22;
    }

    v27 = v26;
    if (v16 == 5)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(8);
      v30 = 2 * (dword_1EBF46AEC < 4);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *v76;
        *buf = v70;
        *v83 = v31;
        _os_log_impl(&dword_1C278D000, v29, v30, "Get snippet from SDB for oid %lld", buf, 0xCu);
      }

      *__error() = v28;
      v13 = __s;
      v25 = v80;
      if (!v80)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v13 = __s;
    }

    v47 = v25[1];
    if ((v47 & 0x20) == 0)
    {
      if ((v47 & 0x10) == 0)
      {
LABEL_38:
        v39 = *(v73 + 24);
        v40 = v13;
        v41 = v27;
        goto LABEL_24;
      }

      string_for_id_locked = db_get_string_for_id_locked(v72, *(v25 + 13));
      if (string_for_id_locked)
      {
        v62 = string_for_id_locked;
        v41 = strlen(string_for_id_locked);
        v39 = *(v73 + 24);
        v40 = v62;
LABEL_24:
        std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(v39, v40, v41, v20, 0);
      }

LABEL_25:
      a6 = v24;
      a1 = v71;
      goto LABEL_26;
    }

    v48 = *(v25 + 2);
    if (!v48)
    {
      goto LABEL_25;
    }

    v49 = 0;
    v50 = (v13 + v48);
    a6 = v24;
    a1 = v71;
    do
    {
      if ((v80[1] & 0x10) != 0)
      {
        v53 = db_get_string_for_id_locked(v72, *v13);
        if (!v53)
        {
          break;
        }

        v54 = v53;
        v55 = strlen(v53);
        std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(*(v73 + 24), v54, v55, v20, v49);
        v52 = 4;
      }

      else
      {
        v51 = strlen(v13);
        std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(*(v73 + 24), v13, v51, v20, v49);
        v52 = v51 + 1;
      }

      v13 = (v13 + v52);
      if (v13 >= v50)
      {
        break;
      }

      v56 = v49++ > 0x63;
    }

    while (!v56);
LABEL_26:
    ++v12;
  }

  while (v12 != v77);
  v68 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _SIPommesSuggestionsAddPeopleCandidate(uint64_t a1, os_unfair_lock_t lock, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a3)
  {
    v8 = a5;
    if (a6 != a5)
    {
      v13 = *(a3 + 32);
      do
      {
        v14 = *(v8 + 47);
        if (v14 < 0)
        {
          if (*(v8 + 32))
          {
            goto LABEL_16;
          }
        }

        else if (*(v8 + 47))
        {
          goto LABEL_16;
        }

        if ((*(v8 + 71) & 0x8000000000000000) != 0)
        {
          if (*(v8 + 56))
          {
            goto LABEL_16;
          }
        }

        else if (*(v8 + 71))
        {
          goto LABEL_16;
        }

        if ((*(v8 + 95) & 0x8000000000000000) != 0)
        {
          if (!*(v8 + 80))
          {
            goto LABEL_56;
          }
        }

        else if (!*(v8 + 95))
        {
          goto LABEL_56;
        }

LABEL_16:
        *(v8 + 176) = 0;
        *(v8 + 171) = 0;
        v15 = 0;
        if (v13)
        {
          v16 = (*(v8 + 128) + 8);
          v17 = (*(v8 + 104) + 8);
          while (1)
          {
            v19 = *v17;
            v17 += 2;
            v18 = v19;
            v20 = *v16;
            v16 += 2;
            if (v20 <= 0 && v18 < 1)
            {
              break;
            }

            if (v13 == ++v15)
            {
              v15 = v13;
              goto LABEL_26;
            }
          }

          *(v8 + 176) = v15;
          if (v15)
          {
            *(v8 + 171) = 1;
          }
        }

LABEL_26:
        v22 = *(v8 + 96);
        v23 = v22 >= 1.0 || v15 >= v13;
        if (!v23 || (a4 & 1) != 0)
        {
          goto LABEL_56;
        }

        v24 = v22;
        v25 = *(v8 + 100);
        if (a7)
        {
          v26 = v25 + v24 * 0.9;
          if (v26 < 0.1)
          {
            return;
          }
        }

        else
        {
          v26 = v25 * 0.05 + v24 * 0.1;
          if (v26 < 0.05)
          {
            return;
          }
        }

        if (v26 == 0.0)
        {
          goto LABEL_56;
        }

        if (v14 < 0)
        {
          v14 = *(v8 + 32);
        }

        if (v14)
        {
          v27 = *(a1 + 88);
        }

        else
        {
          if (*(v8 + 71) >= 0)
          {
            v28 = *(v8 + 71);
          }

          else
          {
            v28 = *(v8 + 56);
          }

          v27 = *(a1 + 88);
          if (!v28)
          {
            v29 = *(v8 + 95);
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(v8 + 80);
            }

            if (!v29)
            {
              goto LABEL_56;
            }
          }
        }

        if (v27 <= 0x3E8)
        {
          os_unfair_lock_lock(lock);
          if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>((a1 + 64), v8 + 72))
          {
            operator new();
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>((a1 + 64), v8 + 24))
          {
            operator new();
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>((a1 + 64), v8 + 48))
          {
            operator new();
          }

          os_unfair_lock_unlock(lock);
        }

LABEL_56:
        v8 += 184;
      }

      while (v8 != a6);
    }
  }
}

void std::vector<_peopleMatchInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 184;
        std::allocator_traits<std::allocator<_peopleMatchInfo>>::destroy[abi:nn200100]<_peopleMatchInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void SIPommesSpotlightMailSuggestionsProcessDBO(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned __int8 **a8, int a9, __int128 *a10, uint64_t a11)
{
  if (!a7 || !a4 || !*(a7 + 24))
  {
    return;
  }

  if (a8)
  {
    v18 = *a8;
    if (*a8)
    {
      v19 = *v18;
      if (v19 == 106)
      {
        v19 = v18[1];
        v20 = 97;
      }

      else
      {
        v20 = 106;
      }

      v21 = v20 == v19;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = 0;
LABEL_12:
  if (*(a7 + 16))
  {
    v22 = icu_search_context_create();
    if (v22)
    {
      v30 = v22;
      v82[0] = 0;
      v81 = 0;
      v23 = (*(a11 + 16))(a11, v82, &v81, &v81 + 1);
      v77 = 0;
      v78 = &v77;
      v79 = 0x2000000000;
      v80 = -1;
      v75 = xmmword_1C2BFA850;
      v76 = xmmword_1C2BFA840;
      v73 = xmmword_1C2BFA870;
      v74 = xmmword_1C2BFA860;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 0x40000000;
      v54[2] = ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
      v54[3] = &unk_1E8190D70;
      v60 = &v77;
      v61 = a3;
      v62 = a3 + 4;
      v63 = a4;
      v64 = a7;
      v65 = v30;
      v66 = v18;
      v70 = v21;
      v24 = *a10;
      v25 = a10[1];
      v26 = a10[4];
      v58 = a10[3];
      v59 = v26;
      v27 = a10[2];
      v56 = v25;
      v57 = v27;
      v55 = v24;
      v68 = a9;
      v69 = v82[0];
      v71 = HIBYTE(v81);
      v72 = v81;
      v67 = v23;
      SIPommesDBOScoredTopicFieldIterator(a1, a2, &v76, &v75, &v74, &v73, a5, a6, v54);
      v52 = xmmword_1C2BFA890;
      v53 = xmmword_1C2BFA880;
      v50 = xmmword_1C2BFA8B0;
      v51 = xmmword_1C2BFA8A0;
      v78[3] = -1;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2;
      v31[3] = &unk_1E8190D98;
      v37 = &v77;
      v38 = a3;
      v39 = a3 + 4;
      v40 = a4;
      v41 = a7;
      v42 = v30;
      v43 = v18;
      v47 = v21;
      v28 = a10[3];
      v34 = a10[2];
      v35 = v28;
      v36 = a10[4];
      v29 = a10[1];
      v32 = *a10;
      v33 = v29;
      v45 = a9;
      v46 = v82[0];
      v48 = HIBYTE(v81);
      v49 = v81;
      v44 = v23;
      SIPommesDBOScoredTopicFieldIterator(a1, a2, &v53, &v52, &v51, &v50, a5, a6, v31);
      icu_ctx_release();
      _Block_object_dispose(&v77, 8);
    }
  }
}

uint64_t ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 != -1 && v9 >= a6)
  {
    if (a5)
    {
      v23 = v6;
      v24 = v7;
      v14 = *(result + 120);
      v13 = *(result + 128);
      v15 = *(result + 136);
      v16 = *(result + 144);
      v17 = *(result + 152);
      v18 = *(result + 160);
      v19 = *(result + 184);
      v20 = *(result + 80);
      v22[2] = *(result + 64);
      v22[3] = v20;
      v22[4] = *(result + 96);
      v21 = *(result + 48);
      v22[0] = *(result + 32);
      v22[1] = v21;
      *&v21 = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v14 + 264, v13, v15, v16, v17, a4, a5, 0, 0, v18, v19, 0, 21, v22, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v8 + 24) = a6;
  }

  return result;
}

uint64_t ___ZL42SIPommesSpotlightMailSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 != -1 && v9 >= a6)
  {
    if (a5)
    {
      v23 = v6;
      v24 = v7;
      v14 = *(result + 120);
      v13 = *(result + 128);
      v15 = *(result + 136);
      v16 = *(result + 144);
      v17 = *(result + 152);
      v18 = *(result + 160);
      v19 = *(result + 184);
      v20 = *(result + 80);
      v22[2] = *(result + 64);
      v22[3] = v20;
      v22[4] = *(result + 96);
      v21 = *(result + 48);
      v22[0] = *(result + 32);
      v22[1] = v21;
      *&v21 = *(result + 168);
      return _SIPommesSuggestionsProcessTopicAttribute(v14 + 264, v13, v15, v16, v17, a4, a5, 0, 0, v18, v19, 0, 22, v22, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
    }
  }

  else
  {
    *(v8 + 24) = a6;
  }

  return result;
}

uint64_t _SIPommesSuggestionsProcessTopicAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12, int a13, __int128 *a14, unsigned int a15, char a16, char a17)
{
  v25 = MEMORY[0x1EEE9AC00](a1);
  v26 = v24;
  v27 = v23;
  v28 = v22;
  v29 = v20;
  v31 = v30;
  v32 = v25;
  v33 = v18;
  v79 = *MEMORY[0x1E69E9840];
  if ((a12 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      v38 = v21;
      v39 = v19;
      v51 = v24;
      v52 = v18;
      v50 = v17;
      v72[0] = 0;
      bzero(&v74 + 8, 0xF278uLL);
      *&v73 = *(v29 + 88);
      *(&v73 + 1) = a10;
      *&v74 = 0;
      v78 = a11;
      pommesSuggestionsTokenizeString(v39, v28, v27, v72 + 1, v72, &v73, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
      if (HIWORD(v72[0]))
      {
        *&v64 = 0;
        *&v72[1] = 0;
        if (v38 && icu_search_match())
        {
          std::string::basic_string[abi:nn200100]<0>(v71, v28);
          std::string::basic_string[abi:nn200100]<0>(v69, "");
          v40 = a14[3];
          v66 = a14[2];
          v67 = v40;
          v68 = a14[4];
          v41 = a14[1];
          v64 = *a14;
          v65 = v41;
          _AccumulateTopicCandidates(v50, v52, v71, v69, a13, &v64, *(v29 + 24), a15, v32, v31, a16, a17, HIWORD(v72[0]));
          if (v70 < 0)
          {
            operator delete(v69[0]);
          }

          if ((v71[23] & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          v42 = v71;
          goto LABEL_16;
        }

        if (v51)
        {
          if (a9)
          {
            pommesSuggestionsTokenizeString(v39, v51, a9, v72 + 1, v72, &v73, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
            if (HIWORD(v72[0]))
            {
              *&v64 = 0;
              *&v72[1] = 0;
              if (v38)
              {
                if (icu_search_match())
                {
                  std::string::basic_string[abi:nn200100]<0>(v63, v28);
                  std::string::basic_string[abi:nn200100]<0>(v61, v51);
                  v47 = a14[3];
                  v66 = a14[2];
                  v67 = v47;
                  v68 = a14[4];
                  v48 = a14[1];
                  v64 = *a14;
                  v65 = v48;
                  _AccumulateTopicCandidates(v50, v52, v63, v61, a13, &v64, *(v29 + 24), a15, v32, v31, a16, a17, HIWORD(v72[0]));
                  if (v62 < 0)
                  {
                    operator delete(v61[0]);
                  }

                  if ((v63[23] & 0x80000000) == 0)
                  {
                    goto LABEL_23;
                  }

                  v42 = v63;
LABEL_16:
                  v37 = *v42;
                  goto LABEL_22;
                }
              }
            }
          }
        }
      }
    }

    result = 0;
    goto LABEL_34;
  }

  if (v23 && a9)
  {
    v34 = v17;
    std::string::basic_string[abi:nn200100]<0>(v59, v22);
    std::string::basic_string[abi:nn200100]<0>(__p, v26);
    v35 = a14[3];
    v75 = a14[2];
    v76 = v35;
    v77 = a14[4];
    v36 = a14[1];
    v73 = *a14;
    v74 = v36;
    _AccumulateTopicCandidates(v34, v33, v59, __p, a13, &v73, *(v29 + 24), a15, v32, v31, a16, a17, 1);
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v37 = v59[0];
  }

  else
  {
    if (!v23)
    {
      goto LABEL_23;
    }

    v43 = v17;
    std::string::basic_string[abi:nn200100]<0>(v55, v22);
    std::string::basic_string[abi:nn200100]<0>(v53, "");
    v44 = a14[3];
    v75 = a14[2];
    v76 = v44;
    v77 = a14[4];
    v45 = a14[1];
    v73 = *a14;
    v74 = v45;
    _AccumulateTopicCandidates(v43, v33, v55, v53, a13, &v73, *(v29 + 24), a15, v32, v31, a16, a17, 1);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if ((v56 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v37 = v55[0];
  }

LABEL_22:
  operator delete(v37);
LABEL_23:
  result = 1;
LABEL_34:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void _AccumulateTopicCandidates(uint64_t *a1, os_unfair_lock_t lock, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, unsigned int a8, float64_t a9, float64_t a10, char a11, char a12, uint64_t a13)
{
  os_unfair_lock_lock(lock);
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, v17);
  v19 = a1[1];
  if (!*&v19)
  {
    goto LABEL_24;
  }

  v20 = v18;
  v21 = vcnt_s8(v19);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v18;
    if (v18 >= *&v19)
    {
      v23 = v18 % *&v19;
    }
  }

  else
  {
    v23 = (*&v19 - 1) & v18;
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v23);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_24:
    operator new();
  }

  v43 = *&v19 - 1;
  while (1)
  {
    v27 = v26[1];
    if (v27 == v20)
    {
      break;
    }

    if (v22 > 1)
    {
      if (v27 >= *&v19)
      {
        v27 %= *&v19;
      }
    }

    else
    {
      v27 &= v43;
    }

    if (v27 != v23)
    {
      goto LABEL_24;
    }

LABEL_23:
    v26 = *v26;
    if (!v26)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v26 + 2, a3))
  {
    goto LABEL_23;
  }

  v28 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, v17);
  v29 = v28;
  if (v22 > 1)
  {
    v30 = v28;
    if (v28 >= *&v19)
    {
      v30 = v28 % *&v19;
    }
  }

  else
  {
    v30 = v43 & v28;
  }

  v31 = *(v24 + 8 * v30);
  if (!v31 || (v32 = *v31) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v33 = v32[1];
    if (v33 != v29)
    {
      if (v22 > 1)
      {
        if (v33 >= *&v19)
        {
          v33 %= *&v19;
        }
      }

      else
      {
        v33 &= v43;
      }

      if (v33 != v30)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v32 + 2, a3))
    {
LABEL_39:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v34 = v32[5];
  ++*(v34 + 112);
  v35.f64[0] = a9;
  v35.f64[1] = a10;
  *(v34 + 88) = vbslq_s8(vcgtq_f64(v35, *(v34 + 88)), v35, *(v34 + 88));
  if (a11)
  {
    *(v34 + 80) = a11;
  }

  if (a12)
  {
    *(v34 + 81) = a12;
  }

  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v34 + 144, a8);
  v36 = *(a4 + 23);
  if (v36 < 0)
  {
    v36 = *(a4 + 8);
  }

  if (v36)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v34 + 168, a4);
  }

  if (*(v34 + 136) != a5)
  {
    *(v34 + 136) = 1;
  }

  v37 = log(*(a6 + 8));
  v38 = log(*(v34 + 8));
  if (v38 + log(*v34) >= 2 * v37)
  {
    v39 = v34;
  }

  else
  {
    v39 = a6;
  }

  v40 = v39[4];
  v42 = v39[1];
  v41 = v39[2];
  *(v34 + 48) = v39[3];
  *(v34 + 64) = v40;
  *(v34 + 16) = v42;
  *(v34 + 32) = v41;
  *v34 = *v39;
  os_unfair_lock_unlock(lock);
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
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
      v4 = *(v2 + 28);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    result = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (result)
    {
      v17 = result < 0;
    }

    if (!v17)
    {
      return result;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_topicCandidate>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *(a1 + 8);
  if (!(*a4 | *a3) && v10[1] == *v10)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    *__p = 0u;
    v44 = 0u;
    *v45 = 0u;
    *v42 = 0u;
    *v43 = 0u;
    *v40 = 0u;
    v41 = 0u;
    *buf = 0u;
    _peopleMatchInfo::_peopleMatchInfo(buf, *(**(a1 + 16) + 32));
    MEMORY[0x1C691FAE0](buf, "");
    v26 = *(a1 + 8);
    v27 = v26[1];
    if (v27 >= v26[2])
    {
      matched = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(v26, buf);
    }

    else
    {
      _peopleMatchInfo::_peopleMatchInfo(v27, buf);
      matched = v28 + 184;
    }

    v26[1] = matched;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v45[1])
    {
      *&v46 = v45[1];
      operator delete(v45[1]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[1]);
    }

    if (SHIBYTE(v43[0]) < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[1]);
    }

    if (SHIBYTE(v40[0]) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_37;
  }

  v11 = **(a1 + 40);
  v12 = *(**(a1 + 88) + 8 * v8);
  v13 = **(a1 + 16);
  v14 = **(a1 + 96);
  v15 = **(a1 + 112);
  v16 = **(a1 + 128);
  v17 = **(a1 + 136);
  v18 = **(a1 + 152);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v30 = **(a1 + 112);
      _SIPommesSuggestionsProcessEmailAddress(**(a1 + 40), **(a1 + 16), v6, v7, v9, *(a1 + 120));
    }

    else
    {
      v20 = **(a1 + 24);
      v21 = **(a1 + 32);
      v22 = **(a1 + 48);
      v23 = **(a1 + 56);
      v24 = ***(a1 + 72);
      v25 = **(a1 + 144);
      if (v8 == 4)
      {
        _SIPommesSuggestionsProcessRawText(v20, v21, v11, v13, v22, v23, v6, v7, v24, v14, 0, v25, v10, 0, **(a1 + 152));
      }

      else
      {
        if (v8 != 5)
        {
LABEL_16:
          if (dword_1EBF46B04 >= 5)
          {
            v37 = *__error();
            v38 = _SILogForLogForCategory(14);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = v12;
              _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "Pommes Suggestions cannot handle field %s.", buf, 0xCu);
            }

            *__error() = v37;
          }

          goto LABEL_22;
        }

        _SIPommesSuggestionsProcessRawText(v20, v21, v11, v13, v22, v23, v6, v7, v24, v14, v7 > 0x118, v25, v10, 0, **(a1 + 152));
      }
    }

LABEL_22:
    if ((**(a1 + 160) & 1) == 0)
    {
      _SIPommesSuggestionsAddMailPeopleCandidate(**(a1 + 24), **(a1 + 32), **(a1 + 16), **(a1 + 112), **(a1 + 8), *(*(a1 + 8) + 8), 1);
      _SIPommesSuggestionsAddMailPeopleCandidate(**(a1 + 24), **(a1 + 32), **(a1 + 16), **(a1 + 112), **(a1 + 120), *(*(a1 + 120) + 8), 0);
      **(a1 + 160) = 1;
    }

    goto LABEL_37;
  }

  v19 = **(a1 + 104);
  if (!v8)
  {
    _SIPommesSuggestionsProcessName(v11, v13, v6, v7, v14, v19, v15, v10, v17, **(a1 + 152));
    goto LABEL_37;
  }

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      _SIPommesSuggestionsProcessName(v11, v13, v6, v7, v14, v19, v15, *(a1 + 120), v17, **(a1 + 152));
LABEL_37:
      v36 = *MEMORY[0x1E69E9840];
      return;
    }

    goto LABEL_16;
  }

  v31 = *MEMORY[0x1E69E9840];
  v32 = **(a1 + 40);
  v33 = **(a1 + 16);
  v34 = v10;
  v35 = **(a1 + 112);

  _SIPommesSuggestionsProcessEmailAddress(v32, v33, v6, v7, v9, v34);
}

void _peopleMatchInfo::_peopleMatchInfo(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  this[4].__r_.__value_.__r.__words[0] = *(a2 + 12);
  std::vector<CFRange>::vector[abi:nn200100](&this[4].__r_.__value_.__l.__size_, a2 + 13);
  std::vector<CFRange>::vector[abi:nn200100](&this[5].__r_.__value_.__l.__size_, a2 + 16);
  v8 = *(a2 + 152);
  *&this[7].__r_.__value_.__l.__data_ = *(a2 + 168);
  *&this[6].__r_.__value_.__r.__words[1] = v8;
}

uint64_t std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v5 = 0x1642C8590B21642;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1642C8590B21642)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  _peopleMatchInfo::_peopleMatchInfo(v6, a2);
  v7 = 184 * v2 + 184;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 16);
      *v12 = v13;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 5) = *(v11 + 40);
      *(v12 + 24) = v14;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = 0;
      v15 = *(v11 + 48);
      *(v12 + 8) = *(v11 + 64);
      *(v12 + 3) = v15;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 48) = 0;
      v16 = *(v11 + 72);
      *(v12 + 11) = *(v11 + 88);
      *(v12 + 72) = v16;
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      v17 = *(v11 + 96);
      *(v12 + 14) = 0;
      *(v12 + 15) = 0;
      *(v12 + 12) = v17;
      *(v12 + 13) = 0;
      *(v12 + 104) = *(v11 + 104);
      *(v12 + 15) = *(v11 + 120);
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      *(v11 + 120) = 0;
      *(v12 + 16) = 0;
      *(v12 + 17) = 0;
      *(v12 + 18) = 0;
      *(v12 + 8) = *(v11 + 128);
      *(v12 + 18) = *(v11 + 144);
      *(v11 + 128) = 0;
      *(v11 + 136) = 0;
      *(v11 + 144) = 0;
      v18 = *(v11 + 152);
      *(v12 + 168) = *(v11 + 168);
      *(v12 + 152) = v18;
      v11 += 184;
      v12 += 184;
    }

    while (v11 != v9);
    do
    {
      std::allocator_traits<std::allocator<_peopleMatchInfo>>::destroy[abi:nn200100]<_peopleMatchInfo,0>(v8);
      v8 += 184;
    }

    while (v8 != v9);
  }

  v19 = *a1;
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v7;
}

void _SIPommesSuggestionsProcessName(int a1, uint64_t a2, char *a3, int a4, int a5, int a6, int a7, uint64_t *a8, char a9, CFArrayRef theArray)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  *v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  *__p = 0u;
  _peopleMatchInfo::_peopleMatchInfo(__p, *(a2 + 32));
  if (a3 && *a3)
  {
    std::string::basic_string[abi:nn200100]<0>(&v17, a3);
    if (SHIBYTE(v20[0]) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v17;
    v20[0] = v18;
    if (*(a2 + 32))
    {
      v16 = *(a2 + 32);
      operator new();
    }
  }

  else
  {
    MEMORY[0x1C691FAE0](__p, "");
  }

  v13 = a8[1];
  if (v13 >= a8[2])
  {
    matched = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(a8, __p);
  }

  else
  {
    _peopleMatchInfo::_peopleMatchInfo(v13, __p);
    matched = v14 + 184;
  }

  a8[1] = matched;
  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (*(&v25 + 1))
  {
    *&v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void _SIPommesSuggestionsProcessEmailAddress(int a1, uint64_t a2, char *__s, uint64_t a4, unint64_t a5, void *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (0xD37A6F4DE9BD37A7 * ((a6[1] - *a6) >> 3) <= a5)
  {
    if (dword_1EBF46B04 >= 5)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a5;
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Invalid index %ld for matchInfoArray.", buf, 0xCu);
      }

      *__error() = v11;
    }
  }

  else if (__s && *__s)
  {
    std::string::basic_string[abi:nn200100]<0>(buf, __s);
    v9 = *a6 + 184 * a5;
    if (*(v9 + 47) < 0)
    {
      operator delete(*(v9 + 24));
    }

    v10 = *buf;
    *(v9 + 40) = v17;
    *(v9 + 24) = v10;
    *(*a6 + 184 * a5 + 100) = 0;
    if (a2 && *(a2 + 32))
    {
      v15 = *(a2 + 32);
      CFStringCreateWithCString(*MEMORY[0x1E695E480], "en-US", 0x8000100u);
      operator new();
    }
  }

  else
  {
    v13 = 184 * a5;
    MEMORY[0x1C691FAE0](*a6 + 184 * a5 + 24, "");
    *(*a6 + v13 + 100) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void _SIPommesSuggestionsAddMailPeopleCandidate(int8x8_t *a1, os_unfair_lock_t lock, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a3)
  {
    return;
  }

  v8 = a5;
  if (a5 == a6)
  {
    return;
  }

  v9 = a7;
  v10 = a4;
  v11 = lock;
  v12 = a1;
  v13 = *(a3 + 32);
  v59 = a1 + 8;
  do
  {
    v14 = *(v8 + 47);
    if (v14 < 0)
    {
      if (!*(v8 + 32))
      {
        goto LABEL_91;
      }
    }

    else if (!*(v8 + 47))
    {
      goto LABEL_91;
    }

    *(v8 + 176) = 0;
    *(v8 + 171) = 0;
    v15 = 0;
    if (v13)
    {
      v16 = (*(v8 + 128) + 8);
      v17 = (*(v8 + 104) + 8);
      while (1)
      {
        v19 = *v17;
        v17 += 2;
        v18 = v19;
        v20 = *v16;
        v16 += 2;
        if (v20 <= 0 && v18 < 1)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v22 = *(v8 + 96);
          goto LABEL_20;
        }
      }

      *(v8 + 176) = v15;
      if (v15)
      {
        *(v8 + 171) = 1;
      }
    }

    v22 = *(v8 + 96);
    if (v15 < v13 && v22 < 1.0)
    {
      goto LABEL_91;
    }

LABEL_20:
    v23 = 0.0;
    if ((v10 & 1) == 0)
    {
      v24 = v22;
      v25 = *(v8 + 100);
      if (v9)
      {
        v23 = v25 + v24 * 0.9;
        if (v23 < 0.1)
        {
          return;
        }
      }

      else
      {
        v23 = v25 * 0.05 + v24 * 0.1;
        if (v23 < 0.05)
        {
          return;
        }
      }
    }

    if (v14 < 0)
    {
      v14 = *(v8 + 32);
    }

    if (!v14 || *&v12[11] > 0x3E8uLL)
    {
      goto LABEL_91;
    }

    os_unfair_lock_lock(v11);
    if (!std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>(v59, v8 + 24))
    {
      operator new();
    }

    v26 = *(v8 + 47);
    if (v26 >= 0)
    {
      v27 = (v8 + 24);
    }

    else
    {
      v27 = *(v8 + 24);
    }

    if (v26 >= 0)
    {
      v28 = *(v8 + 47);
    }

    else
    {
      v28 = *(v8 + 32);
    }

    v29 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v27, v28);
    v30 = v29;
    v31 = v12[9];
    if (!*&v31)
    {
      goto LABEL_54;
    }

    v32 = vcnt_s8(v31);
    v32.i16[0] = vaddlv_u8(v32);
    v33 = v32.u32[0];
    if (v32.u32[0] > 1uLL)
    {
      v34 = v29;
      if (v29 >= *&v31)
      {
        v34 = v29 % *&v31;
      }
    }

    else
    {
      v34 = (*&v31 - 1) & v29;
    }

    v35 = *(*v59 + 8 * v34);
    if (!v35 || (v36 = *v35) == 0)
    {
LABEL_54:
      operator new();
    }

    while (1)
    {
      v37 = v36[1];
      if (v37 == v30)
      {
        break;
      }

      if (v33 > 1)
      {
        if (v37 >= *&v31)
        {
          v37 %= *&v31;
        }
      }

      else
      {
        v37 &= *&v31 - 1;
      }

      if (v37 != v34)
      {
        goto LABEL_54;
      }

LABEL_53:
      v36 = *v36;
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v36 + 2, (v8 + 24)))
    {
      goto LABEL_53;
    }

    v38 = v36[5];
    v39 = *(v8 + 23);
    if (v39 >= 0)
    {
      v40 = v8;
    }

    else
    {
      v40 = *v8;
    }

    if (v39 >= 0)
    {
      v41 = *(v8 + 23);
    }

    else
    {
      v41 = *(v8 + 8);
    }

    v42 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v40, v41);
    v43 = *(v38 + 120);
    if (v43)
    {
      v44 = v42;
      v45 = vcnt_s8(v43);
      v45.i16[0] = vaddlv_u8(v45);
      v46 = v45.u32[0];
      if (v45.u32[0] > 1uLL)
      {
        v47 = v42;
        if (v42 >= *&v43)
        {
          v47 = v42 % *&v43;
        }
      }

      else
      {
        v47 = (*&v43 - 1) & v42;
      }

      v48 = *(*(v38 + 112) + 8 * v47);
      if (v48)
      {
        v49 = *v48;
        if (*v48)
        {
          do
          {
            v50 = v49[1];
            if (v50 == v44)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](v49 + 2, v8))
              {
                v54 = *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v38 + 112), v8) + 10) + v23;
                *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v38 + 112), v8) + 10) = v54;
                v10 = a4;
                v9 = a7;
                v11 = lock;
                v12 = a1;
                if (v54 > *(v38 + 8))
                {
                  *(v38 + 8) = v54;
                  *v38 = *(v8 + 96);
                  std::string::operator=((v38 + 64), v8);
LABEL_79:
                  *(v38 + 26) = 0;
                }

                goto LABEL_80;
              }
            }

            else
            {
              if (v46 > 1)
              {
                if (v50 >= *&v43)
                {
                  v50 %= *&v43;
                }
              }

              else
              {
                v50 &= *&v43 - 1;
              }

              if (v50 != v47)
              {
                break;
              }
            }

            v49 = *v49;
          }

          while (v49);
        }
      }
    }

    *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v38 + 112), v8) + 10) = v23;
    v10 = a4;
    v9 = a7;
    v11 = lock;
    v12 = a1;
    if (*(v38 + 8) < v23)
    {
      *(v38 + 8) = v23;
      *v38 = *(v8 + 96);
      goto LABEL_79;
    }

LABEL_80:
    v51 = *(v8 + 152);
    if (v51 > 0.000000100000001)
    {
      v52 = *(v38 + 16);
      if (v52 <= 0.000000100000001 || v51 < v52)
      {
        *(v38 + 16) = v51;
        std::string::operator=((v38 + 64), v8);
      }
    }

    *(v38 + 24) = (*(v38 + 24) | *(v8 + 168)) & 1;
    *(v38 + 25) = (*(v38 + 25) | *(v8 + 170)) & 1;
    if (v9)
    {
      *(v38 + 27) = 1;
    }

    else
    {
      *(v38 + 28) = 1;
    }

    os_unfair_lock_unlock(v11);
LABEL_91:
    v8 += 184;
  }

  while (v8 != a6);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::find<std::string>(void *a1, uint64_t a2)
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
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>>>::__emplace_unique_key_args<std::string,std::string&,std::unique_ptr<_peopleCandidate>>(void *a1, uint64_t a2)
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

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_peopleCandidate>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_peopleCandidate>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _matchOnce(int a1, char *__s, int a3, void *a4)
{
  if (a3)
  {
    *a4 = 0;
    v5 = strlen(__s);
    result = 1;
  }

  else
  {
    result = icu_search_match();
    v5 = 0;
    *a4 = 0;
  }

  a4[1] = v5;
  return result;
}

void std::allocator_traits<std::allocator<_peopleMatchInfo>>::destroy[abi:nn200100]<_peopleMatchInfo,0>(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

void *std::vector<CFRange>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CFRange>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

__n128 std::__function::__func<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesMailSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,unsigned long const*,ci_rankingbits_s,unsigned int,char const*,char const**,__CFArray const*,BOOL,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427ADF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  result = *(a1 + 104);
  v7 = *(a1 + 120);
  v8 = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 136) = v8;
  *(a2 + 120) = v7;
  *(a2 + 104) = result;
  return result;
}

void std::__function::__func<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0,std::allocator<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, unsigned int **a2, uint64_t *a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(**(a1 + 72) + 8 * *a4);
  v5 = *a2;
  v6 = *a3;
  v7 = **(a1 + 8);
  v8 = **(a1 + 16);
  v9 = **(a1 + 24);
  v10 = **(a1 + 32);
  v11 = **(a1 + 40);
  v12 = **(a1 + 80);
  v13 = **(a1 + 88);
  switch(*a4)
  {
    case 5:
      v22 = ***(a1 + 56);
      memset(buffer, 0, 24);
      _SIPommesSuggestionsProcessRawText(v7, v8, v9, v10, 0, v11, v5, v6, v22, v12, 0, 0, buffer, 1, 0);
      *at = buffer;
      std::vector<_peopleMatchInfo>::__destroy_vector::operator()[abi:nn200100](at);
      goto LABEL_18;
    case 0xALL:
      v15 = 11;
      goto LABEL_14;
    case 0xBLL:
      v15 = 12;
LABEL_14:
      v48 = v15;
      v47 = **(a1 + 88);
      goto LABEL_17;
    case 0xCLL:
      v48 = 16;
      v47 = **(a1 + 88);
      goto LABEL_17;
    case 0xELL:
      v14 = 17;
      goto LABEL_3;
    case 0x11:
      v48 = 18;
      v47 = **(a1 + 88);
      goto LABEL_17;
    case 0x15:
      v14 = 13;
      goto LABEL_3;
    case 0x16:
      v48 = 15;
      v47 = **(a1 + 88);
      goto LABEL_17;
    case 0x17:
    case 0x19:
    case 0x1ALL:
      v48 = 9;
      v47 = **(a1 + 88);
      goto LABEL_17;
    case 0x18:
      v14 = 14;
      goto LABEL_3;
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
      v14 = 9;
LABEL_3:
      v48 = v14;
      v47 = **(a1 + 88);
LABEL_17:
      _SIPommesSuggestionsProcessPhotoAttribute(v7, v8, v9, v10, v11, v5, v6, v12, v47, v48);
      goto LABEL_18;
    case 0x29:
      bzero(buffer, 0x3E8uLL);
      v32 = *v5;
      v33 = CFLocaleCopyCurrent();
      if (!v33)
      {
        goto LABEL_47;
      }

      v34 = v33;
      v35 = CFDateFormatterCreate(0, v33, kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
      if (v35)
      {
        v36 = v35;
        v37 = CFDateFormatterCopyProperty(v35, *MEMORY[0x1E695E5C0]);
        if (v37)
        {
          theArraya = v37;
          Count = CFArrayGetCount(v37);
          v53 = 0;
          if (v32 && Count >= v32)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArraya, (v32 - 1));
            if (ValueAtIndex)
            {
              v40 = ValueAtIndex;
              CString = CFStringGetCString(ValueAtIndex, buffer, 1000, 0x8000100u);
              v42 = buffer;
              if (!CString)
              {
                v42 = 0;
              }

              v53 = v42;
              CFRelease(v40);
            }

            else
            {
              v53 = 0;
            }
          }

          CFRelease(theArraya);
          v28 = v53;
        }

        else
        {
          v28 = 0;
        }

        CFRelease(v36);
        CFRelease(v34);
        if (v28)
        {
          v43 = strlen(v28);
          v44 = 19;
          goto LABEL_55;
        }
      }

      else
      {
        CFRelease(v34);
      }

LABEL_47:
      v16 = *__error();
      v45 = _SILogForLogForCategory(14);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *at = 136315394;
      *&at[4] = "_SIPommesSuggestionsProcessPhotosAttribute";
      v57 = 1024;
      v58 = 1910;
      v18 = "%s:%d: converting month to string returned null";
      v19 = at;
      v20 = v45;
      v21 = 18;
      goto LABEL_59;
    case 0x2ALL:
      bzero(buffer, 0x3E8uLL);
      theArray = *v5;
      v24 = CFLocaleCopyCurrent();
      if (!v24)
      {
        goto LABEL_56;
      }

      v25 = v24;
      v26 = CFDateFormatterCreate(0, v24, kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
      if (v26)
      {
        v27 = v26;
        v28 = CFStringCreateWithCString(0, "y", 0x8000100u);
        CFDateFormatterSetFormat(v27, v28);
        if (v28)
        {
          *at = 0;
          v29 = CFCalendarCopyCurrent();
          v52 = v28;
          if (v29)
          {
            v51 = v29;
            if (CFCalendarComposeAbsoluteTime(v29, at, "y", theArray) && (v30 = CFDateCreate(0, *at)) != 0)
            {
              v50 = v30;
              StringWithDate = CFDateFormatterCreateStringWithDate(0, v27, v30);
              if (StringWithDate)
              {
                v28 = buffer;
                cf = StringWithDate;
                if (!CFStringGetCString(StringWithDate, buffer, 1000, 0x8000100u))
                {
                  v28 = 0;
                }

                CFRelease(cf);
              }

              else
              {
                v28 = 0;
              }

              CFRelease(v50);
            }

            else
            {
              v28 = 0;
            }

            CFRelease(v51);
          }

          else
          {
            v28 = 0;
          }

          CFRelease(v52);
        }

        CFRelease(v27);
        CFRelease(v25);
        if (v28)
        {
          v43 = strlen(v28);
          v44 = 20;
LABEL_55:
          _SIPommesSuggestionsProcessPhotoAttribute(v7, v8, v9, v10, v11, v28, v43, v12, v13, v44);
          goto LABEL_18;
        }
      }

      else
      {
        CFRelease(v25);
      }

LABEL_56:
      v16 = *__error();
      v46 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *at = 136315650;
        *&at[4] = "_SIPommesSuggestionsProcessPhotosAttribute";
        v57 = 1024;
        v58 = 1920;
        v59 = 1024;
        v60 = theArray;
        v18 = "%s:%d: converting year to string returned null for %d";
        v19 = at;
        v20 = v46;
        v21 = 24;
LABEL_59:
        _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v18, v19, v21);
      }

LABEL_57:
      *__error() = v16;
LABEL_18:
      v23 = *MEMORY[0x1E69E9840];
      return;
    default:
      v16 = *__error();
      v17 = _SILogForLogForCategory(14);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buffer = 136315650;
      *&buffer[4] = "_SIPommesSuggestionsProcessPhotosAttribute";
      *&buffer[12] = 1024;
      *&buffer[14] = 1945;
      *&buffer[18] = 2080;
      *&buffer[20] = v4;
      v18 = "%s:%d: Pommes Photos Suggestions cannot handle field %s";
      v19 = buffer;
      v20 = v17;
      v21 = 28;
      goto LABEL_59;
  }
}

void _SIPommesSuggestionsProcessPhotoAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10)
{
  v18 = MEMORY[0x1EEE9AC00](a1);
  v36 = *MEMORY[0x1E69E9840];
  if (*(v13 + 32))
  {
    v19 = *&v18;
    v20 = v17;
    v21 = v16;
    v22 = v15;
    v23 = v14;
    v24 = v13;
    v25 = v12;
    v26 = v11;
    v27 = v10;
    v31 = 0;
    bzero(v35, 0xF278uLL);
    v34[0] = *(v24 + 88);
    v34[1] = v20;
    v34[2] = 0;
    v35[62064] = a9;
    pommesSuggestionsTokenizeString(v25, v22, v21, &v31 + 1, &v31, v34, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
    if (HIWORD(v31))
    {
      v32 = 0;
      v33 = 0;
      if (v23)
      {
        if (icu_search_match())
        {
          std::string::basic_string[abi:nn200100]<0>(__p, v22);
          _AccumulatePhotosCandidates((v27 + 104), v26, __p, a10, v19);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

__n128 std::__function::__func<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0,std::allocator<SIPommesPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,unsigned int const**,int,char const**,_SuggestionsModel *,CITokenizer *,si_completion_pattern_s *,ci_rankingbits_s,unsigned int,char const*,char const**)::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427ADB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = *a2;
    v8 = *a5;
    v9 = *a4;
    if (*a4 > 20)
    {
      if (v9 == 21)
      {
        v17 = **(a1 + 40);
        v18 = **(a1 + 112);
        v19 = *(a1 + 16);
        v20 = **(a1 + 104);
        v21 = **(a1 + 128);
        v22 = **(a1 + 32);
        v23 = *a5;

        _SIPommesSuggestionsProcessEmailAddress(v22, v17, v7, v6, v23, v19);
      }

      else if (v9 == 22)
      {
        v13 = *(a1 + 16);
        v14 = *a2;
        v15 = *a5;

        _SIPommesSuggestionsProcessContactIdentifier(v14, v15, v13);
      }
    }

    else if (v9 == 19)
    {
      v16 = **(a1 + 112);
      _SIPommesSuggestionsProcessContactAttribute(*(a1 + 16), **(a1 + 32), **(a1 + 40), **(a1 + 48), v7, v6, **(a1 + 56), **(a1 + 64), **(a1 + 104));
    }

    else if (v9 == 20)
    {
      v10 = *(a1 + 16);
      v11 = *a2;
      v12 = *a5;

      _SIPommesSuggestionsProcessPhoneNumber(v11, v12, v10);
    }
  }
}

void _SIPommesSuggestionsProcessContactAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v9;
  v24 = v23;
  v26 = v25;
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  *v46 = 0u;
  v43 = 0u;
  *v44 = 0u;
  *v41 = 0u;
  *v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  *__p = 0u;
  _peopleMatchInfo::_peopleMatchInfo(__p, *(v20 + 32));
  if (v17 && *v17)
  {
    v27 = *(v21 + 32);
    if (v27)
    {
      v37 = 0;
      bzero(&v52, 0xF278uLL);
      v51[0] = *(v21 + 88);
      v51[1] = v13;
      v51[2] = 0;
      v53[20022] = v11;
      pommesSuggestionsTokenizeString(v24, v17, v15, &v37 + 1, &v37, v51, 1, 1, 0, pommesSuggestionsGetTokenCallback, 0, 4u);
      if (!HIWORD(v37))
      {
        goto LABEL_19;
      }

      *&v35 = 0;
      v50 = 0;
      if (!v19 || !icu_search_match())
      {
        goto LABEL_19;
      }

      std::string::basic_string[abi:nn200100]<0>(&v35, v17);
      if (SHIBYTE(v39[0]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v35;
      v39[0] = v36;
      if (!HIWORD(v37))
      {
        std::vector<_peopleMatchInfo>::emplace_back<_peopleMatchInfo const&>(v26, __p);
        goto LABEL_19;
      }

      v28 = unigramsMatch(v21, v13, v53, 0, 0, &v44[1], 0, 0, 0);
      *&v35 = 0;
      v50 = 0;
      if (icu_search_match())
      {
        v30 = 1.0;
        if (v27 == HIWORD(v37))
        {
          v30 = 2.0;
        }

        *v44 = v30;
      }

      else
      {
        LOWORD(v29) = HIWORD(v37);
        *v44 = v28 / fmaxf(v27, v29);
        if (*v44 < 1.0)
        {
LABEL_35:
          *(&v47 + 1) = v22;
          BYTE8(v48) = a9;
          goto LABEL_15;
        }
      }

      BYTE10(v48) = 1;
      goto LABEL_35;
    }
  }

  else
  {
    MEMORY[0x1C691FAE0](__p, "");
  }

LABEL_15:
  v31 = v26[1];
  if (v31 >= v26[2])
  {
    matched = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(v26, __p);
  }

  else
  {
    _peopleMatchInfo::_peopleMatchInfo(v31, __p);
    matched = v32 + 184;
  }

  v26[1] = matched;
LABEL_19:
  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44[1])
  {
    *&v45 = v44[1];
    operator delete(v44[1]);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  if (SHIBYTE(v42[0]) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  if (SHIBYTE(v39[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void _SIPommesSuggestionsProcessPhoneNumber(char *__s, unint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3) <= a2)
  {
    if (dword_1EBF46B04 >= 5)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v11) = 134217984;
        *(&v11 + 4) = a2;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Invalid index %ld for matchInfoArray.", &v11, 0xCu);
      }

      *__error() = v9;
    }
  }

  else
  {
    if (!__s || !*__s)
    {
      v8 = *MEMORY[0x1E69E9840];

      JUMPOUT(0x1C691FAE0);
    }

    std::string::basic_string[abi:nn200100]<0>(&v11, __s);
    v5 = *a3 + 184 * a2;
    if (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 48));
    }

    v6 = v11;
    *(v5 + 64) = v12;
    *(v5 + 48) = v6;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void _SIPommesSuggestionsProcessContactIdentifier(char *__s, unint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3) <= a2)
  {
    if (dword_1EBF46B04 >= 5)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v11) = 134217984;
        *(&v11 + 4) = a2;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Invalid index %ld for matchInfoArray.", &v11, 0xCu);
      }

      *__error() = v9;
    }
  }

  else
  {
    if (!__s || !*__s)
    {
      v8 = *MEMORY[0x1E69E9840];

      JUMPOUT(0x1C691FAE0);
    }

    std::string::basic_string[abi:nn200100]<0>(&v11, __s);
    v5 = *a3 + 184 * a2;
    if (*(v5 + 95) < 0)
    {
      operator delete(*(v5 + 72));
    }

    v6 = v11;
    *(v5 + 88) = v12;
    *(v5 + 72) = v6;
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<_peopleMatchInfo>::emplace_back<_peopleMatchInfo const&>(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<_peopleMatchInfo>::__emplace_back_slow_path<_peopleMatchInfo const&>(a1, a2);
  }

  else
  {
    _peopleMatchInfo::_peopleMatchInfo(v3, a2);
    result = v4 + 184;
  }

  a1[1] = result;
  return result;
}

__n128 std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_2>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427AD68;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

void std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = *a2;
    v8 = *a5;
    v9 = *a4;
    if (*a4 > 16)
    {
      if (v9 == 17)
      {
        v17 = **(a1 + 40);
        v18 = **(a1 + 112);
        v19 = *(a1 + 16);
        v20 = **(a1 + 104);
        v21 = **(a1 + 128);
        v22 = **(a1 + 32);
        v23 = *a5;

        _SIPommesSuggestionsProcessEmailAddress(v22, v17, v7, v6, v23, v19);
      }

      else if (v9 == 18)
      {
        v13 = *(a1 + 16);
        v14 = *a2;
        v15 = *a5;

        _SIPommesSuggestionsProcessContactIdentifier(v14, v15, v13);
      }
    }

    else if (v9 == 15)
    {
      v16 = **(a1 + 112);
      _SIPommesSuggestionsProcessContactAttribute(*(a1 + 16), **(a1 + 32), **(a1 + 40), **(a1 + 48), v7, v6, **(a1 + 56), **(a1 + 64), **(a1 + 104));
    }

    else if (v9 == 16)
    {
      v10 = *(a1 + 16);
      v11 = *a2;
      v12 = *a5;

      _SIPommesSuggestionsProcessPhoneNumber(v11, v12, v10);
    }
  }
}

__n128 std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_1>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427AD20;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

uint64_t std::function<void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v7 = a4;
  v8 = a3;
  v6 = a5;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v9, &v8, &v7, &v6);
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return std::__throw_bad_function_call[abi:nn200100]();
}

void std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t a1, char **a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = *a2;
    v8 = *a5;
    v9 = *a4;
    if (*a4 > 12)
    {
      if (v9 == 13)
      {
        v17 = **(a1 + 40);
        v18 = **(a1 + 112);
        v19 = *(a1 + 16);
        v20 = **(a1 + 104);
        v21 = **(a1 + 128);
        v22 = **(a1 + 32);
        v23 = *a5;

        _SIPommesSuggestionsProcessEmailAddress(v22, v17, v7, v6, v23, v19);
      }

      else if (v9 == 14)
      {
        v13 = *(a1 + 16);
        v14 = *a2;
        v15 = *a5;

        _SIPommesSuggestionsProcessContactIdentifier(v14, v15, v13);
      }
    }

    else if (v9 == 11)
    {
      v16 = **(a1 + 112);
      _SIPommesSuggestionsProcessContactAttribute(*(a1 + 16), **(a1 + 32), **(a1 + 40), **(a1 + 48), v7, v6, **(a1 + 56), **(a1 + 64), **(a1 + 104));
    }

    else if (v9 == 12)
    {
      v10 = *(a1 + 16);
      v11 = *a2;
      v12 = *a5;

      _SIPommesSuggestionsProcessPhoneNumber(v11, v12, v10);
    }
  }
}

__n128 std::__function::__func<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightSearchSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427ACD8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

uint64_t ___ZL44SIPommesSpotlightPhotosSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, double a7)
{
  v10 = result;
  v11 = *(result + 200) * 0.25 + *(result + 128) * 0.25 + a7 * 0.5;
  v12 = *(*(result + 112) + 8);
  v13 = *(v12 + 24);
  if (v13 != -1 && v13 >= a6)
  {
    if (a5 && (*(*(*(result + 120) + 8) + 24) & 1) != 0)
    {
      v25 = *(result + 144);
      v24 = *(result + 152);
      v26 = *(result + 160);
      v27 = *(result + 168);
      v28 = *(result + 176);
      v29 = *(result + 184);
      v30 = *(result + 212);
      v31 = *(result + 80);
      v35 = *(result + 64);
      v36 = v31;
      v37 = *(result + 96);
      v32 = *(result + 48);
      v33 = *(result + 32);
      v34 = v32;
      *&v32 = *(result + 192);
      return _SIPommesSuggestionsProcessTopicAttribute(v25 + 144, v24, v26, v27, v28, a2, a3, a4, a5, v29, v30, 1, 6, &v33, *(result + 208), *(result + 213), HIBYTE(*(result + 213)));
    }
  }

  else
  {
    *(v12 + 24) = a6;
    if (a3 * 0.3 <= *(result + 136))
    {
      v16 = *(result + 144);
      v15 = *(result + 152);
      v17 = *(result + 160);
      v18 = *(result + 168);
      v19 = *(result + 176);
      v20 = *(result + 184);
      v21 = *(result + 212);
      v22 = *(result + 80);
      v35 = *(result + 64);
      v36 = v22;
      v37 = *(result + 96);
      v23 = *(result + 48);
      v33 = *(result + 32);
      v34 = v23;
      *&v23 = *(result + 192);
      result = _SIPommesSuggestionsProcessTopicAttribute(v16 + 144, v15, v17, v18, v19, a2, a3, a4, a5, v20, v21, 0, 6, &v33, *(result + 208), *(result + 213), HIBYTE(*(result + 213)));
      *(*(*(v10 + 120) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t ___ZL44SIPommesSpotlightPhotosSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(*(result + 112) + 8);
  v9 = *(v8 + 24);
  if (v9 == -1 || v9 < a6)
  {
    v24 = v6;
    v25 = v7;
    *(v8 + 24) = a6;
    v15 = *(result + 120);
    v14 = *(result + 128);
    v16 = *(result + 136);
    v17 = *(result + 144);
    v18 = *(result + 152);
    v19 = *(result + 160);
    v20 = *(result + 184);
    v21 = *(result + 80);
    v23[2] = *(result + 64);
    v23[3] = v21;
    v23[4] = *(result + 96);
    v22 = *(result + 48);
    v23[0] = *(result + 32);
    v23[1] = v22;
    *&v22 = *(result + 168);
    return _SIPommesSuggestionsProcessTopicAttribute(v15 + 304, v14, v16, v17, v18, a2, a3, a4, a5, v19, v20, 0, 23, v23, *(result + 180), *(result + 185), HIBYTE(*(result + 185)));
  }

  return result;
}

uint64_t std::__function::__func<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = **(result + 8);
  if (v5 >= 5)
  {
    v6 = *a3;
    if (*a3 * 0.3 <= v5)
    {
      v20 = v3;
      v21 = v4;
      v7 = *a2;
      v8 = **(result + 24) * 0.25 + **(result + 16) * 0.25;
      v9 = **(result + 32);
      v10 = **(result + 40);
      v11 = **(result + 48);
      v12 = **(result + 56);
      v13 = **(result + 64);
      v14 = **(result + 72);
      v15 = *(result + 88);
      v16 = **(result + 80);
      v17 = v15[3];
      v19[2] = v15[2];
      v19[3] = v17;
      v19[4] = v15[4];
      v18 = v15[1];
      v19[0] = *v15;
      v19[1] = v18;
      *&v18 = **(result + 128);
      return _SIPommesSuggestionsProcessTopicAttribute(v9 + 184, v10, v11, v12, v13, v7, v6, 0, 0, v14, v16, 0, 6, v19, **(result + 104), **(result + 112), **(result + 120));
    }
  }

  return result;
}

__n128 std::__function::__func<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0,std::allocator<SIPommesSpotlightPhotosSuggestionsProcessDBO(DocStore *,datastore_info *,db_obj *,_SuggestionsModel *,CITokenizer *,unsigned int const**,int,char const**,si_completion_pattern_s *,char const**,unsigned int,ci_rankingbits_s,double({block_pointer})(unsigned int *,BOOL *,BOOL *))::$_0>,void ()(unsigned char const*,unsigned long,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F427AC90;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t a2)
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

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

void *std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = 0;
  MEMORY[0x1C691FBF0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    ++v6;
    std::string::push_back(a2, v7);
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void joinStringArrayWithDelim(uint64_t *a1, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    std::string::append(this, v7, v8);
    v4 = a1[1];
    if (v5 != v4 - 24)
    {
      std::string::push_back(this, 32);
      v4 = a1[1];
    }

    v5 += 24;
  }
}

BOOL std::__includes[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__less<void,void> &,std::__identity,std::__identity>(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  if (a3 != a4 && a1 != a2)
  {
    while (1)
    {
      v5 = a3[4];
      v6 = a1[4];
      if (v5 < v6)
      {
        break;
      }

      if (v6 >= v5)
      {
        v8 = a3[1];
        if (v8)
        {
          do
          {
            v7 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v7 = a3[2];
            v9 = *v7 == a3;
            a3 = v7;
          }

          while (!v9);
        }
      }

      else
      {
        v7 = a3;
      }

      v10 = a1[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = a1[2];
          v9 = *v11 == a1;
          a1 = v11;
        }

        while (!v9);
      }

      v4 = v7 == a4;
      if (v7 != a4)
      {
        a1 = v11;
        a3 = v7;
        if (v11 != a2)
        {
          continue;
        }
      }

      return v4;
    }

    return 0;
  }

  return v4;
}

double std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a4;
  *(&v12 + 1) = a5;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](&v12, v7 + 4);
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != a3);
  }

  *a1 = a3;
  result = *&v12;
  *(a1 + 8) = v12;
  return result;
}

void **std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](void **a1, uint64_t *a2)
{
  v3 = std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(*a1, a1[1], *a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void dedupSuggestions(uint64_t *a1, uint64_t a2)
{
  v170 = *MEMORY[0x1E69E9840];
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    do
    {
      std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v151, v2);
      std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(*a1, a1[1], (a1[1] - *a1) >> 5);
      v4 = a1[1];
      v5 = (v4 - 32);
      if (*(v4 - 9) < 0)
      {
        operator delete(*v5);
      }

      a1[1] = v5;
      v2 = *a1;
    }

    while (*a1 != v5);
    v6 = v151;
    v7 = v152;
    v8 = (v152 - 2);
    if (v151 != v152 && v8 > v151)
    {
      do
      {
        v10 = *(v6 + 2);
        v11 = *v6;
        v12 = *(v8 + 16);
        *v6 = *v8;
        *(v6 + 2) = v12;
        *v8 = v11;
        *(v8 + 16) = v10;
        v13 = *(v6 + 3);
        *(v6 + 3) = *(v8 + 24);
        *(v8 + 24) = v13;
        v6 += 2;
        v8 -= 32;
      }

      while (v6 < v8);
      v6 = v151;
      v7 = v152;
    }
  }

  v148 = 0;
  v149 = 0;
  v150 = 0;
  v14 = 0uLL;
  v145 = 0u;
  v146 = 0u;
  v147 = 1065353216;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  if (v7 == v6)
  {
    memset(&v155, 0, 32);
    v155.__end_cap_.__value_ = 1065353216;
    goto LABEL_187;
  }

  v15 = 0;
  v121 = MEMORY[0x1E69E5568] + 24;
  v120 = MEMORY[0x1E69E5568] + 64;
  v117 = *MEMORY[0x1E69E54E0];
  v116 = *(MEMORY[0x1E69E54E0] + 24);
  v118 = *(MEMORY[0x1E69E54E0] + 16);
  v119 = *(MEMORY[0x1E69E54E0] + 8);
  do
  {
    v16 = *(&v6[2 * v15 + 1] + 1);
    memset(&v138, 0, sizeof(v138));
    v123 = v16;
    v124 = v15;
    v17 = (v16 + 16);
    memset(&v137, 0, sizeof(v137));
    v169 = 0;
    v168 = v14;
    v167 = v14;
    v166 = v14;
    v165 = v14;
    v164 = v14;
    v163 = v14;
    v162 = v14;
    v161 = v14;
    v160[1] = *(&v14 + 1);
    *&v159[80] = v14;
    *&v159[64] = v14;
    *&v159[48] = v14;
    *&v159[32] = v14;
    *&v159[16] = v14;
    *v159 = v14;
    *&buf.__r_.__value_.__r.__words[1] = v14;
    v160[0] = v120;
    buf.__r_.__value_.__r.__words[0] = v119;
    *(buf.__r_.__value_.__r.__words + *(v119 - 24)) = v118;
    buf.__r_.__value_.__l.__size_ = 0;
    v18 = (&buf + *(buf.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v18, &buf.__r_.__value_.__r.__words[2]);
    v18[1].__vftable = 0;
    v18[1].__fmtflags_ = -1;
    buf.__r_.__value_.__r.__words[0] = v121;
    v160[0] = v120;
    v19 = MEMORY[0x1E69E5538] + 16;
    buf.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
    MEMORY[0x1C691FE40](v159);
    memset(&v159[8], 0, 80);
    v20 = MEMORY[0x1E69E5548] + 16;
    buf.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    *&v159[88] = 8;
    std::string::operator=(&v159[56], v17);
    std::stringbuf::__init_buf_ptrs[abi:nn200100](&buf.__r_.__value_.__r.__words[2]);
    v156 = 0uLL;
    v157 = 0;
    while (1)
    {
      std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, &v156, 0x20u);
      if ((v159[*(buf.__r_.__value_.__r.__words[0] - 24) + 8] & 5) != 0)
      {
        break;
      }

      if (v157 >= 0)
      {
        v21 = &v156;
      }

      else
      {
        v21 = v156;
      }

      v22 = PRPommesStemWordWithCString(v21, 100, 1);
      if (v22)
      {
        v23 = v22;
        std::string::basic_string[abi:nn200100]<0>(&__p, v22);
        size = v137.__r_.__value_.__l.__size_;
        if (v137.__r_.__value_.__l.__size_ >= v137.__r_.__value_.__r.__words[2])
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v137.__r_.__value_.__l.__size_ - v137.__r_.__value_.__r.__words[0]) >> 3);
          v27 = v26 + 1;
          if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_197;
          }

          if (0x5555555555555556 * ((v137.__r_.__value_.__r.__words[2] - v137.__r_.__value_.__r.__words[0]) >> 3) > v27)
          {
            v27 = 0x5555555555555556 * ((v137.__r_.__value_.__r.__words[2] - v137.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v137.__r_.__value_.__r.__words[2] - v137.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v28 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v28 = v27;
          }

          v155.__end_cap_.__value_ = &v137;
          if (v28)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v28);
          }

          v29 = 8 * ((v137.__r_.__value_.__l.__size_ - v137.__r_.__value_.__r.__words[0]) >> 3);
          v30 = *&__p.__r_.__value_.__l.__data_;
          *(v29 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v29 = v30;
          memset(&__p, 0, sizeof(__p));
          v31 = (24 * v26 - (v137.__r_.__value_.__l.__size_ - v137.__r_.__value_.__r.__words[0]));
          memcpy(v31, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_ - v137.__r_.__value_.__r.__words[0]);
          v32 = v137.__r_.__value_.__r.__words[0];
          v33 = v137.__r_.__value_.__r.__words[2];
          v137.__r_.__value_.__r.__words[0] = v31;
          *&v137.__r_.__value_.__r.__words[1] = 24 * v26 + 24;
          v155.__end_ = v32;
          v155.__end_cap_.__value_ = v33;
          v155.__begin_ = v32;
          v155.__first_ = v32;
          std::__split_buffer<std::string>::~__split_buffer(&v155);
          v137.__r_.__value_.__l.__size_ = 24 * v26 + 24;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v25 = *&__p.__r_.__value_.__l.__data_;
          *(v137.__r_.__value_.__l.__size_ + 16) = *(&__p.__r_.__value_.__l + 2);
          *size = v25;
          v137.__r_.__value_.__l.__size_ = size + 24;
        }

        free(v23);
      }

      else
      {
        std::vector<std::string>::push_back[abi:nn200100](&v137, &v156);
      }
    }

    if (SHIBYTE(v157) < 0)
    {
      operator delete(v156);
    }

    buf.__r_.__value_.__r.__words[0] = v117;
    *(buf.__r_.__value_.__r.__words + *(v117 - 24)) = v116;
    buf.__r_.__value_.__r.__words[2] = v20;
    if ((v159[79] & 0x80000000) != 0)
    {
      operator delete(*&v159[56]);
    }

    buf.__r_.__value_.__r.__words[2] = v19;
    std::locale::~locale(v159);
    std::istream::~istream();
    MEMORY[0x1C691FE80](v160);
    joinStringArrayWithDelim(&v137, &v138);
    v34 = *__error();
    v35 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v123 + 39) < 0)
      {
        v17 = v17->__r_.__value_.__r.__words[0];
      }

      v36 = &v138;
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v138.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v17;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v36;
      _os_log_impl(&dword_1C278D000, v35, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: stemmed '%s' -> '%s'", &buf, 0x16u);
    }

    *__error() = v34;
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v138;
    }

    else
    {
      v37 = v138.__r_.__value_.__r.__words[0];
    }

    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v138.__r_.__value_.__l.__size_;
    }

    v39 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v37, v38);
    v40 = *(&v145 + 1);
    if (*(&v145 + 1))
    {
      v41 = v39;
      v42 = vcnt_s8(*(&v145 + 8));
      v42.i16[0] = vaddlv_u8(v42);
      v43 = v42.u32[0];
      if (v42.u32[0] > 1uLL)
      {
        v44 = v39;
        if (v39 >= *(&v145 + 1))
        {
          v44 = v39 % *(&v145 + 1);
        }
      }

      else
      {
        v44 = (*(&v145 + 1) - 1) & v39;
      }

      v115 = v145;
      v45 = *(v145 + 8 * v44);
      if (v45)
      {
        v46 = *v45;
        if (*v45)
        {
          v122 = *(&v145 + 1) - 1;
          do
          {
            v47 = v46[1];
            if (v47 == v41)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](v46 + 2, &v138))
              {
                v51 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v37, v38);
                v52 = v51;
                if (v43 > 1)
                {
                  v53 = v51;
                  if (v51 >= v40)
                  {
                    v53 = v51 % v40;
                  }
                }

                else
                {
                  v53 = v122 & v51;
                }

                v54 = *(v115 + 8 * v53);
                if (!v54 || (v55 = *v54) == 0)
                {
LABEL_92:
                  operator new();
                }

                while (1)
                {
                  v56 = v55[1];
                  if (v56 == v52)
                  {
                    if (std::equal_to<std::string>::operator()[abi:nn200100](v55 + 2, &v138))
                    {
                      v57 = v55[5];
                      v58 = *(v123 + 39);
                      v48 = v124;
                      if ((v58 & 0x8000000000000000) != 0)
                      {
                        v58 = *(v123 + 24);
                      }

                      v59 = v148[4 * v57 + 3];
                      v60 = *(v59 + 39);
                      if ((v60 & 0x8000000000000000) != 0)
                      {
                        v60 = v59[3];
                      }

                      if (v58 < v60)
                      {
                        std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v148, &v151[2 * v124]);
                        std::vector<std::vector<std::string>>::push_back[abi:nn200100](&v142, &v137);
                        std::vector<std::string>::push_back[abi:nn200100](&v139, &v138);
                        v62 = v148;
                        v61 = v149;
                        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&buf, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          buf = v138;
                        }

                        *v159 = ((v61 - v62) >> 5) - 1;
                        std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned long>>(&v145, &buf);
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(buf.__r_.__value_.__l.__data_);
                        }

                        v63 = v149;
                        v64 = &v148[4 * v57];
                        if (v64 + 4 != v149)
                        {
                          do
                          {
                            if (*(v64 + 23) < 0)
                            {
                              operator delete(*v64);
                            }

                            *v64 = *(v64 + 2);
                            v65 = v64[6];
                            v66 = v64[7];
                            *(v64 + 32) = 0;
                            v67 = v64 + 4;
                            *(v64 + 55) = 0;
                            v64[2] = v65;
                            v64[3] = v66;
                            v68 = v64 + 8;
                            v64 += 4;
                          }

                          while (v68 != v63);
                          v63 = v149;
                          v64 = v67;
                        }

                        while (v63 != v64)
                        {
                          v69 = *(v63 - 9);
                          v63 -= 4;
                          if (v69 < 0)
                          {
                            operator delete(*v63);
                          }
                        }

                        v149 = v64;
                        v70 = 3 * v57;
                        v71 = v143;
                        v72 = (v142 + 24 * v57);
                        if (&v72[1] != v143)
                        {
                          v73 = v72;
                          do
                          {
                            std::vector<std::string>::__vdeallocate(v72);
                            v74 = *&v73[1].__begin_;
                            ++v73;
                            *&v72->__begin_ = v74;
                            v72->__end_cap_.__value_ = v72[1].__end_cap_.__value_;
                            v72[1].__end_ = 0;
                            v72[1].__end_cap_.__value_ = 0;
                            v73->__begin_ = 0;
                            v75 = v72 + 2;
                            v72 = v73;
                          }

                          while (v75 != v71);
                          v72 = v73;
                          v48 = v124;
                        }

                        while (v71 != v72)
                        {
                          v71 -= 24;
                          buf.__r_.__value_.__r.__words[0] = v71;
                          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
                        }

                        v76 = 8 * v70;
                        v143 = v72;
                        v77 = v140;
                        v78 = v139 + v76;
                        if ((v139 + v76 + 24) != v140)
                        {
                          do
                          {
                            if (*(v78 + 23) < 0)
                            {
                              operator delete(*v78);
                            }

                            *v78 = *(v78 + 24);
                            *(v78 + 16) = *(v78 + 40);
                            *(v78 + 47) = 0;
                            v79 = (v78 + 48);
                            *(v78 + 24) = 0;
                            v78 += 24;
                          }

                          while (v79 != v77);
                          v77 = v140;
                        }

                        while (v77 != v78)
                        {
                          v80 = *(v77 - 1);
                          v77 -= 3;
                          if (v80 < 0)
                          {
                            operator delete(*v77);
                          }
                        }

                        v140 = v78;
                      }

                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    if (v43 > 1)
                    {
                      if (v56 >= v40)
                      {
                        v56 %= v40;
                      }
                    }

                    else
                    {
                      v56 &= v122;
                    }

                    if (v56 != v53)
                    {
                      goto LABEL_92;
                    }
                  }

                  v55 = *v55;
                  if (!v55)
                  {
                    goto LABEL_92;
                  }
                }
              }
            }

            else
            {
              if (v43 > 1)
              {
                if (v47 >= v40)
                {
                  v47 %= v40;
                }
              }

              else
              {
                v47 &= v122;
              }

              if (v47 != v44)
              {
                break;
              }
            }

            v46 = *v46;
          }

          while (v46);
        }
      }
    }

    v48 = v124;
    std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v148, &v151[2 * v124]);
    std::vector<std::vector<std::string>>::push_back[abi:nn200100](&v142, &v137);
    std::vector<std::string>::push_back[abi:nn200100](&v139, &v138);
    v50 = v148;
    v49 = v149;
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v138;
    }

    *v159 = ((v49 - v50) >> 5) - 1;
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned long>>(&v145, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_73:
    buf.__r_.__value_.__r.__words[0] = &v137;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    v15 = v48 + 1;
    v6 = v151;
    v14 = 0uLL;
  }

  while (v15 < (v152 - v151) >> 5);
  v81 = v148;
  memset(&v155, 0, 32);
  v155.__end_cap_.__value_ = 1065353216;
  if (v149 == v148)
  {
    goto LABEL_187;
  }

  v82 = 0;
  do
  {
    v83 = v81[4 * v82 + 3];
    memset(&__p, 0, sizeof(__p));
    v84 = (v139 + 24 * v82);
    if (*(v84 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v84, *(v84 + 1));
    }

    else
    {
      v85 = *v84;
      __p.__r_.__value_.__r.__words[2] = *(v84 + 2);
      *&__p.__r_.__value_.__l.__data_ = v85;
    }

    memset(&v138, 0, sizeof(v138));
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v138, *(v142 + 24 * v82), *(v142 + 24 * v82 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v142 + 24 * v82 + 8) - *(v142 + 24 * v82)) >> 3));
    if (std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v155.__first_, v155.__begin_, &__p))
    {
      v134[0] = 0;
      v134[1] = 0;
      v133 = v134;
      std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v133, v83[5], v83 + 6);
      buf.__r_.__value_.__r.__words[0] = &__p;
      v86 = std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v155, &__p);
      v132[0] = 0;
      v132[1] = 0;
      v131 = v132;
      std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v131, v86[5], v86 + 6);
      v87 = v131;
      v88 = v133;
      if (std::__includes[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__less<void,void> &,std::__identity,std::__identity>(v131, v132, v133, v134) || std::__includes[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__less<void,void> &,std::__identity,std::__identity>(v88, v134, v87, v132))
      {
        std::__tree<unsigned int>::destroy(v132[0]);
        std::__tree<unsigned int>::destroy(v134[0]);
      }

      else
      {
        v91 = &v156;
        v129 = 0;
        v130 = 0;
        v128 = &v129;
        std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v128, v83[5], v83 + 6);
        buf.__r_.__value_.__r.__words[0] = &__p;
        v92 = std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v155, &__p);
        v126 = 0;
        v127 = 0;
        v125 = &v126;
        std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v125, v92[5], v92 + 6);
        *(&v156 + 1) = 0;
        v157 = 0;
        *&v156 = &v156 + 8;
        v93 = v128;
        v94 = v125;
        v137.__r_.__value_.__r.__words[0] = &v156;
        v137.__r_.__value_.__l.__size_ = &v156 + 8;
        if (v128 == &v129)
        {
          v104 = &v156 + 8;
LABEL_171:
          std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(&buf, v94, &v126, v91, v104);
        }

        else
        {
          while (v94 != &v126)
          {
            v95 = v93[4];
            v96 = v94[4];
            if (v95 >= v96)
            {
              if (v96 >= v95)
              {
                v100 = v93[1];
                if (v100)
                {
                  do
                  {
                    v99 = v100;
                    v100 = *v100;
                  }

                  while (v100);
                }

                else
                {
                  do
                  {
                    v99 = v93[2];
                    v101 = *v99 == v93;
                    v93 = v99;
                  }

                  while (!v101);
                }
              }

              else
              {
                std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](&v137, v94 + 4);
                v99 = v93;
              }

              v102 = v94[1];
              if (v102)
              {
                do
                {
                  v94 = v102;
                  v102 = *v102;
                }

                while (v102);
              }

              else
              {
                do
                {
                  v103 = v94;
                  v94 = v94[2];
                }

                while (*v94 != v103);
              }

              v93 = v99;
            }

            else
            {
              std::insert_iterator<std::set<long long>>::operator=[abi:nn200100](&v137, v93 + 4);
              v97 = v93[1];
              if (v97)
              {
                do
                {
                  v93 = v97;
                  v97 = *v97;
                }

                while (v97);
              }

              else
              {
                do
                {
                  v98 = v93;
                  v93 = v93[2];
                }

                while (*v93 != v98);
              }
            }

            if (v93 == &v129)
            {
              v104 = v137.__r_.__value_.__l.__size_;
              v91 = v137.__r_.__value_.__r.__words[0];
              goto LABEL_171;
            }
          }

          std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(&buf, v93, &v129, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
        }

        if (v130 + v127)
        {
          v106 = v157 / (v127 + v130);
          v105 = v106 > 0.3;
        }

        else
        {
          v105 = 1;
        }

        std::__tree<unsigned int>::destroy(*(&v156 + 1));
        std::__tree<unsigned int>::destroy(v126);
        std::__tree<unsigned int>::destroy(v129);
        std::__tree<unsigned int>::destroy(v132[0]);
        std::__tree<unsigned int>::destroy(v134[0]);
        if (v105)
        {
          std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](a2, &v148[4 * v82]);
        }
      }
    }

    else
    {
      *(&v156 + 1) = 0;
      v157 = 0;
      *&v156 = &v156 + 8;
      std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v156, v83[5], v83 + 6);
      std::pair<std::string,std::set<long long>>::pair[abi:nn200100]<std::string&,std::set<long long>,0>(&buf, &__p, &v156);
      std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<long long>>>(&v155, &buf);
      std::__tree<unsigned int>::destroy(*&v159[8]);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      std::__tree<unsigned int>::destroy(*(&v156 + 1));
      std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](a2, &v148[4 * v82]);
      if (0xAAAAAAAAAAAAAAABLL * ((v138.__r_.__value_.__l.__size_ - v138.__r_.__value_.__r.__words[0]) >> 3) >= 3)
      {
        v156 = 0uLL;
        v157 = 0;
        v89 = v138.__r_.__value_.__l.__size_ - 24 - v138.__r_.__value_.__r.__words[0];
        if (v89)
        {
          v90 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
          if (v90 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v90);
          }

LABEL_197:
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        memset(&v137, 0, sizeof(v137));
        joinStringArrayWithDelim(&v156, &v137);
        if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v155.__first_, v155.__begin_, &v137))
        {
          v136[0] = 0;
          v136[1] = 0;
          v135 = v136;
          std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v135, v83[5], v83 + 6);
          std::pair<std::string,std::set<long long>>::pair[abi:nn200100]<std::string&,std::set<long long>,0>(&buf, &v137, &v135);
          std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<long long>>>(&v155, &buf);
          std::__tree<unsigned int>::destroy(*&v159[8]);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::__tree<unsigned int>::destroy(v136[0]);
        }

        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        buf.__r_.__value_.__r.__words[0] = &v156;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
      }
    }

    buf.__r_.__value_.__r.__words[0] = &v138;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v82;
    v81 = v148;
  }

  while (v82 < (v149 - v148) >> 5);
  if (v155.__end_cap_.__value_)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__deallocate_node(v155.__end_->__r_.__value_.__r.__words);
    v155.__end_ = 0;
    begin = v155.__begin_;
    if (v155.__begin_)
    {
      v108 = 0;
      do
      {
        v155.__first_->__r_.__value_.__r.__words[v108] = 0;
        v108 = (v108 + 1);
      }

      while (begin != v108);
    }

    v155.__end_cap_.__value_ = 0;
  }

LABEL_187:
  if (*(&v146 + 1))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v146);
    *&v146 = 0;
    v109 = *(&v145 + 1);
    if (*(&v145 + 1))
    {
      v110 = 0;
      do
      {
        *(v145 + 8 * v110++) = 0;
      }

      while (v109 != v110);
    }

    *(&v146 + 1) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__deallocate_node(v155.__end_->__r_.__value_.__r.__words);
  first = v155.__first_;
  v155.__first_ = 0;
  if (first)
  {
    operator delete(first);
  }

  buf.__r_.__value_.__r.__words[0] = &v139;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
  buf.__r_.__value_.__r.__words[0] = &v142;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](&buf);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v146);
  v112 = v145;
  *&v145 = 0;
  if (v112)
  {
    operator delete(v112);
  }

  buf.__r_.__value_.__r.__words[0] = &v148;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](&buf);
  buf.__r_.__value_.__r.__words[0] = &v151;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](&buf);
  v113 = *MEMORY[0x1E69E9840];
}

void std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v18[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v10);
    }

    v12 = (32 * v7);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v12, *a2, *(a2 + 1));
    }

    else
    {
      v13 = *a2;
      v12->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v12->__r_.__value_.__l.__data_ = v13;
    }

    v12[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
    v11 = &v12[1].__r_.__value_.__s.__data_[8];
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12 + 32;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(v18);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    *(v5 + 24) = *(a2 + 3);
    v11 = (v5 + 32);
  }

  *(a1 + 8) = v11;
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v6 = 0;
    v7 = *a1;
    *v20 = *(a1 + 8);
    *&v20[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v9 = *(a1 + 24);
    v10 = (a3 - 2) >> 1;
    v11 = a1;
    do
    {
      v12 = v11 + 32 * v6 + 32;
      v13 = 2 * v6;
      v6 = (2 * v6) | 1;
      v14 = v13 + 2;
      if (v14 < a3 && *(*(v12 + 24) + 4) > *(*(v12 + 56) + 4))
      {
        v12 += 32;
        v6 = v14;
      }

      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v15 = *v12;
      *(v11 + 16) = *(v12 + 16);
      *v11 = v15;
      *(v12 + 23) = 0;
      *v12 = 0;
      *(v11 + 24) = *(v12 + 24);
      v11 = v12;
    }

    while (v6 <= v10);
    v16 = (a2 - 32);
    v17 = *(v12 + 23);
    if (a2 - 32 == v12)
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      *v12 = v7;
      *(v12 + 8) = *v20;
      *(v12 + 15) = *&v20[7];
      *(v12 + 23) = v8;
      *(v12 + 24) = v9;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      v18 = *v16;
      *(v12 + 16) = *(a2 - 16);
      *v12 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v12 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v7;
      *(a2 - 24) = *v20;
      *(a2 - 17) = *&v20[7];
      *(a2 - 9) = v8;
      *(a2 - 8) = v9;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText &,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(a1, v12 + 32, (v12 + 32 - a1) >> 5);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void std::vector<std::vector<std::string>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v5 = (v10 + 24);
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = (v10 - v12);
    memcpy(v13, *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v5 = v4 + 3;
  }

  *(a1 + 8) = v5;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned long>>(void *a1, uint64_t a2)
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

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::set<long long>::insert[abi:nn200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(v5, v5 + 1, v4[4]);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

std::string *std::pair<std::string,std::set<long long>>::pair[abi:nn200100]<std::string&,std::set<long long>,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = *a3;
  v6 = a3 + 1;
  v7 = a3[1];
  this[1].__r_.__value_.__l.__size_ = v7;
  v8 = &this[1].__r_.__value_.__s.__data_[8];
  v9 = a3[2];
  this[1].__r_.__value_.__r.__words[2] = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *a3 = v6;
    *v6 = 0;
    a3[2] = 0;
  }

  else
  {
    this[1].__r_.__value_.__r.__words[0] = v8;
  }

  return this;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<long long>>>(void *a1, uint64_t a2)
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

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<long long>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::set<long long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::set<long long>>,0>(uint64_t a1)
{
  std::__tree<unsigned int>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::set<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<long long>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::set<long long>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText &,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 32 * (v3 >> 1));
    v7 = *(a2 - 8);
    if (*(*(v6 + 3) + 4) > *(v7 + 4))
    {
      v9 = *(a2 - 32);
      v8 = (a2 - 32);
      *v14 = *(a2 - 24);
      *&v14[7] = *(a2 - 17);
      v10 = *(a2 - 9);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      do
      {
        v11 = v6;
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v12 = *v11;
        *(v8 + 2) = *(v11 + 2);
        *v8 = v12;
        *(v11 + 23) = 0;
        *v11 = 0;
        *(v8 + 3) = *(v11 + 3);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 32 * v5);
        v8 = v11;
      }

      while (*(*(v6 + 3) + 4) > *(v7 + 4));
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      *v11 = v9;
      *(v11 + 1) = *v14;
      *(v11 + 15) = *&v14[7];
      *(v11 + 23) = v10;
      *(v11 + 3) = v7;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void SIPommesEnumerateSuggestions(uint64_t a1, uint64_t a2, int a3, char a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v364 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !*(a2 + 16))
  {
    goto LABEL_115;
  }

  if (!*(a1 + 128))
  {
    v72 = *(a1 + 168);
    if (v72 || *(a1 + 208) || *(a1 + 248) || *(a1 + 288) || *(a1 + 328))
    {
      v73 = a6;
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 160), v72);
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 200), *(a1 + 208));
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 240), *(a1 + 248));
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 280), *(a1 + 288));
      _SIPommesSpotlightEnumerateTopicSuggestions(*(a1 + 320), *(a1 + 328));
      a6 = v73;
    }

    if ((*(a1 + 9) & 0x10) == 0)
    {
      allocator = a3;
      v304 = a4;
      v303 = a6;
      memset(v329, 0, 24);
      std::string::basic_string[abi:nn200100]<0>(v329, *(a2 + 16));
      memset(&v328, 0, sizeof(v328));
      if ((SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v329[0].__r_.__value_.__l.__size_ < 2)
        {
          goto LABEL_176;
        }

        v75 = v329[0].__r_.__value_.__r.__words[0];
        if (*(v329[0].__r_.__value_.__r.__words[0] + v329[0].__r_.__value_.__l.__size_ - 1) != 42)
        {
          goto LABEL_176;
        }

        v74 = --v329[0].__r_.__value_.__l.__size_;
      }

      else
      {
        if (SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) < 2 || v329[0].__r_.__value_.__s.__data_[SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) - 1] != 42)
        {
          goto LABEL_176;
        }

        v74 = SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) - 1;
        *(&v329[0].__r_.__value_.__s + 23) = (*(&v329[0].__r_.__value_.__s + 23) - 1) & 0x7F;
        v75 = v329;
      }

      v75->__r_.__value_.__s.__data_[v74] = 0;
      if (SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v327, v329[0].__r_.__value_.__l.__data_, v329[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v327 = v329[0];
      }

      v121 = stringToLowerCase(&v327, &v328, 1);
      if (SHIBYTE(v327.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v327.__r_.__value_.__l.__data_);
      }

      if (!v121)
      {
        goto LABEL_477;
      }

LABEL_176:
      v122 = *__error();
      v123 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v123, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]----------New Request----------", buf, 2u);
      }

      *__error() = v122;
      v124 = *__error();
      v125 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        size = HIBYTE(v329[0].__r_.__value_.__r.__words[2]);
        if ((v329[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v329[0].__r_.__value_.__l.__size_;
        }

        v127 = *(a2 + 32);
        *buf = 134218498;
        *&buf[4] = size;
        *&buf[12] = 2048;
        *&buf[14] = v127;
        *&buf[22] = 2080;
        *&buf[24] = a7;
        _os_log_impl(&dword_1C278D000, v125, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_query_info: ss_len:%ld sc_qf_count:%ld lang:%s ", buf, 0x20u);
      }

      *__error() = v124;
      v324 = 0;
      v325 = 0;
      v326 = 0;
      memset(v322, 0, sizeof(v322));
      v323 = 1065353216;
      *v319 = 0u;
      *__p = 0u;
      v321 = 1065353216;
      if (!*(a1 + 88))
      {
        v312 = 0;
        v313 = 0;
        v314 = 0;
LABEL_353:
        *buf = &v312;
        std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
        v206 = *__error();
        v207 = _SILogForLogForCategory(14);
        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 0;
          _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: intent_is_people: %d.", buf, 8u);
        }

        *__error() = v206;
        v208 = *__error();
        v209 = _SILogForLogForCategory(14);
        if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
        {
          v210 = *(a1 + 48);
          *buf = 134217984;
          *&buf[4] = v210;
          _os_log_impl(&dword_1C278D000, v209, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: FT candidates size: %ld.", buf, 0xCu);
        }

        *__error() = v208;
        v309 = 0;
        v310 = 0;
        v311 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_427;
        }

        memset(__src, 0, sizeof(__src));
        if ((a5 ^ 1) == 1)
        {
          v211 = *__error();
          v212 = _SILogForLogForCategory(14);
          if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
          {
            v213 = *(a1 + 48);
            *buf = 134218242;
            *&buf[4] = v213;
            *&buf[12] = 2080;
            *&buf[14] = "free-text are not included";
            _os_log_impl(&dword_1C278D000, v212, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: %ld FT suggestion candidates are thresholded. Reason: %s.", buf, 0x16u);
          }

          *__error() = v211;
LABEL_426:
          *buf = __src;
          std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_427:
          __str.__r_.__value_.__s.__data_[0] = 0;
          v254 = v324;
          v255 = v325;
          if (v324 != v325)
          {
            v256 = 0;
            while (1)
            {
              v257 = v254;
              if (SHIBYTE(v254->__r_.__value_.__r.__words[2]) < 0)
              {
                v257 = v254->__r_.__value_.__r.__words[0];
              }

              data = v254[1].__r_.__value_.__l.__data_;
              v260 = *(data + 19);
              v259 = *(data + 20);
              v261 = 0xAAAAAAAAAAAAAAABLL * ((v259 - v260) >> 3);
              v262 = CFStringCreateWithCString(0, v257, 0x8000100u);
              Mutable = CFArrayCreateMutable(0, v261, MEMORY[0x1E695E9C0]);
              if (v259 != v260)
              {
                v264 = 0;
                if (v261 <= 1)
                {
                  v265 = 1;
                }

                else
                {
                  v265 = v261;
                }

                do
                {
                  v266 = (*(v254[1].__r_.__value_.__r.__words[0] + 152) + v264);
                  if (v266[23] < 0)
                  {
                    v266 = *v266;
                  }

                  v267 = CFStringCreateWithCString(0, v266, 0x8000100u);
                  if (v267)
                  {
                    v268 = v267;
                    CFArrayAppendValue(Mutable, v267);
                    CFRelease(v268);
                  }

                  v264 += 24;
                  --v265;
                }

                while (v265);
              }

              v269 = v254[1].__r_.__value_.__l.__data_;
              if ((v269[27] & 1) == 0)
              {
                break;
              }

              *(v269 + 8) = 0;
              if (v262)
              {
                goto LABEL_446;
              }

LABEL_453:
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              v254 = (v254 + 32);
              if (v254 == v255)
              {
                goto LABEL_458;
              }
            }

            v270 = v269[28];
            if (v270 != 1)
            {
              v270 = 2;
            }

            *(v269 + 8) = v270;
            if (!v262)
            {
              goto LABEL_453;
            }

LABEL_446:
            if (Mutable)
            {
              v362 = 0u;
              v363 = 0u;
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v356 = 0u;
              v357 = 0u;
              v354 = 0u;
              v355 = 0u;
              v352 = 0u;
              v353 = 0u;
              v351 = 0u;
              memset(buf, 0, sizeof(buf));
              v271 = v254[1].__r_.__value_.__l.__data_;
              *(&v351 + 1) = *(v271 + 2);
              *&v358 = v262;
              *(&v360 + 1) = Mutable;
              *&v362 = *(v271 + 2);
              HIDWORD(v362) = 10;
              BYTE2(v363) = v271[24];
              BYTE3(v363) = v271[26];
              DWORD1(v363) = *(v271 + 8);
              v272 = *__error();
              v273 = _SILogForLogForCategory(14);
              if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
              {
                v274 = v254[1].__r_.__value_.__l.__data_;
                v275 = v274[87];
                if (v275 < 0)
                {
                  v275 = *(v274 + 9);
                }

                v276 = *(v274 + 2);
                v277 = *v274;
                v278 = *(v274 + 1);
                v279 = *(v274 + 17);
                v280 = 0xAAAAAAAAAAAAAAABLL * ((*(v274 + 20) - *(v274 + 19)) >> 3);
                v281 = *(v274 + 2);
                v282 = v274[24];
                v283 = v274[25];
                v284 = v274[26];
                v285 = *(v274 + 8);
                LODWORD(__src[0]) = 134220800;
                *(__src + 4) = v256;
                WORD2(__src[1]) = 2048;
                *(&__src[1] + 6) = *&v276;
                HIWORD(__src[2]) = 2048;
                __src[3] = *&v277;
                v332 = 2048;
                v333 = v278;
                v334 = 2048;
                v335 = v279;
                v336 = 2048;
                v337 = v280;
                v338 = 2048;
                v339 = v281;
                v340 = 1024;
                v341 = v282;
                v342 = 1024;
                v343 = v283;
                v344 = 2048;
                v345 = v275;
                v346 = 1024;
                v347 = v284;
                v348 = 1024;
                v349 = v285;
                _os_log_impl(&dword_1C278D000, v273, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_sugg_ppl: pos:%ld sc_final:%f sc_best_name:%f sc_email_address:%f n_names:%ld n_emailaddresses:%ld t_since_use_creation:%f item_used:%d strong_name:%d len_best_name:%ld missing_name:%d default_scope:%d ", __src, 0x6Au);
              }

              *__error() = v272;
              (*(a8 + 16))(a8, buf, &__str);
              ++v256;
            }

            CFRelease(v262);
            goto LABEL_453;
          }

          v256 = 0;
LABEL_458:
          v286 = v309;
          for (i = v310; v286 != i; v286 += 2)
          {
            v288 = v286;
            if (*(v286 + 23) < 0)
            {
              v288 = *v286;
            }

            v289 = CFStringCreateWithCString(0, v288, 0x8000100u);
            if (v289)
            {
              v290 = v289;
              v362 = 0u;
              v363 = 0u;
              v360 = 0u;
              v361 = 0u;
              v359 = 0u;
              v356 = 0u;
              v357 = 0u;
              v354 = 0u;
              v355 = 0u;
              v352 = 0u;
              v353 = 0u;
              v351 = 0u;
              memset(buf, 0, sizeof(buf));
              v358 = v289;
              *&v362 = *(*(v286 + 3) + 4);
              HIDWORD(v362) = 9;
              v291 = *__error();
              v292 = _SILogForLogForCategory(14);
              if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
              {
                *&v293 = *(v286 + 23);
                if ((*&v293 & 0x8000000000000000) != 0)
                {
                  v293 = *(v286 + 1);
                }

                v294 = *(v286 + 3);
                v295 = *(v294 + 4);
                v296 = *v294;
                v297 = *(v294 + 8);
                LODWORD(__src[0]) = 134219008;
                *(__src + 4) = v256;
                WORD2(__src[1]) = 2048;
                *(&__src[1] + 6) = *&v295;
                HIWORD(__src[2]) = 2048;
                __src[3] = *&v296;
                v332 = 2048;
                v333 = v293;
                v334 = 2048;
                v335 = v297;
                _os_log_impl(&dword_1C278D000, v292, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_sugg_ft: pos:%ld sc_final:%f sc_topicality:%f len_ft:%ld match_type:%ld ", __src, 0x34u);
              }

              *__error() = v291;
              (*(a8 + 16))(a8, buf, &__str);
              ++v256;
              CFRelease(v290);
            }
          }

          *buf = &v309;
          std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
          v298 = __p[0];
          if (__p[0])
          {
            do
            {
              v299 = *v298;
              if (*(v298 + 39) < 0)
              {
                operator delete(v298[2]);
              }

              operator delete(v298);
              v298 = v299;
            }

            while (v299);
          }

          v300 = v319[0];
          v319[0] = 0;
          if (v300)
          {
            operator delete(v300);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v322[16]);
          v301 = *v322;
          *v322 = 0;
          if (v301)
          {
            operator delete(v301);
          }

          *buf = &v324;
          std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_477:
          if (SHIBYTE(v328.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v328.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v329[0].__r_.__value_.__l.__data_);
          }

          goto LABEL_115;
        }

        v214 = *(a1 + 40);
        if (!v214)
        {
LABEL_413:
          if (!_os_feature_enabled_impl() || v303)
          {
            v245 = __src[0];
            if (__src[0] != __src[1])
            {
              do
              {
                std::vector<std::pair<std::string,_freeTextCandidate *>>::push_back[abi:nn200100](&v309, v245);
                std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(__src[0], __src[1], (__src[1] - __src[0]) >> 5);
                v246 = (__src[1] - 32);
                if (*(__src[1] - 9) < 0)
                {
                  operator delete(*v246);
                }

                __src[1] = v246;
                v245 = __src[0];
              }

              while (__src[0] != v246);
            }

            v247 = v309;
            v248 = (v310 - 2);
            if (v309 != v310 && v248 > v309)
            {
              do
              {
                v250 = *(v247 + 2);
                v251 = *v247;
                v252 = *(v248 + 16);
                *v247 = *v248;
                *(v247 + 2) = v252;
                *v248 = v251;
                *(v248 + 16) = v250;
                v253 = *(v247 + 3);
                *(v247 + 3) = *(v248 + 24);
                *(v248 + 24) = v253;
                v247 += 2;
                v248 -= 32;
              }

              while (v247 < v248);
            }
          }

          else
          {
            memset(v330, 0, 24);
            std::vector<std::pair<std::string,_freeTextCandidate *>>::__init_with_size[abi:nn200100]<std::pair<std::string,_freeTextCandidate *>*,std::pair<std::string,_freeTextCandidate *>*>(v330, __src[0], __src[1], (__src[1] - __src[0]) >> 5);
            dedupSuggestions(v330, &v309);
            *buf = v330;
            std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
          }

          goto LABEL_426;
        }

        while (1)
        {
          v215 = (v214 + 2);
          if ((v328.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v216 = HIBYTE(v328.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v216 = v328.__r_.__value_.__l.__size_;
          }

          v217 = *(v214 + 39);
          v218 = v217;
          v219 = v214[3];
          if ((v217 & 0x80u) != 0)
          {
            v217 = v214[3];
          }

          if (v216 == v217)
          {
            v220 = (v328.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v328 : v328.__r_.__value_.__r.__words[0];
            v221 = *v215;
            v222 = v218 >= 0 ? (v214 + 2) : *v215;
            if (!memcmp(v220, v222, v216))
            {
              break;
            }
          }

          v223 = __src[1];
          v224 = __src[0];
          if ((__src[1] - __src[0]) != 96)
          {
            if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*v322, *&v322[8], (v214 + 2)))
            {
              v230 = v214[5];
              if (v218 < 0)
              {
                std::string::__init_copy_ctor_external(&__str, *v215, v219);
                v223 = __src[1];
              }

              else
              {
                *&__str.__r_.__value_.__l.__data_ = *v215;
                __str.__r_.__value_.__r.__words[2] = v214[4];
              }

              v317 = v230;
              v232 = __src[2];
              if (v223 < __src[2])
              {
                *v223 = __str;
                v223[1].__r_.__value_.__r.__words[0] = v230;
                memset(&__str, 0, sizeof(__str));
                p_size = &v223[1].__r_.__value_.__l.__size_;
LABEL_411:
                __src[1] = p_size;
                std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText &,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(__src[0], p_size, (p_size - __src[0]) >> 5);
                goto LABEL_412;
              }

              v234 = __src[0];
              v235 = v223 - __src[0];
LABEL_402:
              v236 = v235 >> 5;
              v237 = (v235 >> 5) + 1;
              if (v237 >> 59)
              {
                std::vector<long long>::__throw_length_error[abi:nn200100]();
              }

              v238 = v232 - v234;
              v239 = v238 >> 4;
              if (v238 >> 4 <= v237)
              {
                v239 = v237;
              }

              if (v238 >= 0x7FFFFFFFFFFFFFE0)
              {
                v240 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v240 = v239;
              }

              *&v351 = __src;
              if (v240)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v240);
              }

              v241 = (32 * v236);
              *v241 = __str;
              memset(&__str, 0, sizeof(__str));
              v241[1].__r_.__value_.__r.__words[0] = v230;
              p_size = (32 * v236 + 32);
              v242 = (32 * v236 - (__src[1] - __src[0]));
              memcpy(v242, __src[0], __src[1] - __src[0]);
              v243 = __src[0];
              v244 = __src[2];
              __src[0] = v242;
              __src[1] = p_size;
              __src[2] = 0;
              *&buf[16] = v243;
              *&buf[24] = v244;
              *&buf[8] = v243;
              *buf = v243;
              std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
              goto LABEL_411;
            }

            v225 = *__error();
            v226 = _SILogForLogForCategory(14);
            if (!os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_387;
            }

LABEL_380:
            *buf = 0;
            v227 = v226;
            v228 = "[Pommes_Suggestions]mail_debug: 1 FT suggestion thresholded. Reason: same as people candidate.";
            goto LABEL_386;
          }

          if (*(*(__src[0] + 3) + 4) <= *(v214[5] + 4))
          {
            if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*v322, *&v322[8], (v214 + 2)))
            {
              std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareFreeText,std::__wrap_iter<std::pair<std::string,_freeTextCandidate *> *>>(v224, v223, 3);
              v231 = (__src[1] - 32);
              if (*(__src[1] - 9) < 0)
              {
                operator delete(*v231);
              }

              __src[1] = v231;
              v230 = v214[5];
              if (*(v214 + 39) < 0)
              {
                std::string::__init_copy_ctor_external(&__str, v214[2], v214[3]);
                v231 = __src[1];
              }

              else
              {
                *&__str.__r_.__value_.__l.__data_ = *v215;
                __str.__r_.__value_.__r.__words[2] = v214[4];
              }

              v317 = v230;
              v232 = __src[2];
              if (v231 < __src[2])
              {
                *v231 = __str;
                v231[3] = v230;
                memset(&__str, 0, sizeof(__str));
                p_size = (v231 + 4);
                goto LABEL_411;
              }

              v234 = __src[0];
              v235 = v231 - __src[0];
              goto LABEL_402;
            }

            v225 = *__error();
            v226 = _SILogForLogForCategory(14);
            if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_380;
            }

LABEL_387:
            *__error() = v225;
          }

LABEL_412:
          v214 = *v214;
          if (!v214)
          {
            goto LABEL_413;
          }
        }

        v225 = *__error();
        v229 = _SILogForLogForCategory(14);
        if (!os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_387;
        }

        *buf = 0;
        v227 = v229;
        v228 = "[Pommes_Suggestions]mail_debug: 1 FT suggestion thresholded. Reason: same as query.";
LABEL_386:
        _os_log_impl(&dword_1C278D000, v227, OS_LOG_TYPE_DEFAULT, v228, buf, 2u);
        goto LABEL_387;
      }

      v302 = a5;
      v128 = *(a1 + 80);
      if (v128)
      {
        while (1)
        {
          v129 = *(v128 + 5);
          if (v129)
          {
            break;
          }

LABEL_221:
          v128 = *v128;
          if (!v128)
          {
            goto LABEL_243;
          }
        }

        v130 = *(v129 + 87);
        if (v130 < 0)
        {
          if (*(v129 + 72))
          {
            goto LABEL_188;
          }
        }

        else if (*(v129 + 87))
        {
LABEL_188:
          memset(buf, 0, 24);
          if ((v130 & 0x80) != 0)
          {
            std::string::__init_copy_ctor_external(&v318, *(v129 + 64), *(v129 + 72));
          }

          else
          {
            v318 = *(v129 + 64);
          }

          v131 = stringToLowerCase(&v318, buf, 0);
          if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v318.__r_.__value_.__l.__data_);
          }

          if (v131)
          {
            if (buf[23] >= 0)
            {
              v132 = buf;
            }

            else
            {
              v132 = *buf;
            }

            if (buf[23] >= 0)
            {
              v133 = buf[23];
            }

            else
            {
              v133 = *&buf[8];
            }

            v134 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v132, v133);
            v135 = v319[1];
            if (!v319[1])
            {
              goto LABEL_218;
            }

            v136 = v134;
            v137 = vcnt_s8(v319[1]);
            v137.i16[0] = vaddlv_u8(v137);
            v138 = v137.u32[0];
            if (v137.u32[0] > 1uLL)
            {
              v139 = v134;
              if (v134 >= v319[1])
              {
                v139 = v134 % v319[1];
              }
            }

            else
            {
              v139 = (v319[1] - 1) & v134;
            }

            v140 = *(v319[0] + v139);
            if (!v140 || (v141 = *v140) == 0)
            {
LABEL_218:
              std::vector<std::string>::push_back[abi:nn200100](v129 + 152, v128 + 1);
              __src[0] = buf;
              std::__hash_table<std::__hash_value_type<std::string,_peopleCandidate *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,_peopleCandidate *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v319, buf)[5] = v129;
              goto LABEL_219;
            }

            while (1)
            {
              v142 = v141[1];
              if (v142 == v136)
              {
                if (std::equal_to<std::string>::operator()[abi:nn200100](v141 + 2, buf))
                {
                  __src[0] = buf;
                  v143 = std::__hash_table<std::__hash_value_type<std::string,_peopleCandidate *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,_peopleCandidate *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v319, buf)[5];
                  if (v143)
                  {
                    std::vector<std::string>::push_back[abi:nn200100](v143 + 152, v128 + 1);
                    v144 = *(v129 + 8);
                    if (v144 > *(v143 + 8))
                    {
                      *(v143 + 8) = v144;
                      std::string::operator=((v143 + 88), (v129 + 88));
                    }

                    v145 = *(v129 + 16);
                    if (v145 > 0.000000100000001)
                    {
                      v146 = *(v143 + 16);
                      if (v146 <= 0.000000100000001 || v145 < v146)
                      {
                        *(v143 + 16) = v145;
                        std::string::operator=((v143 + 64), (v129 + 64));
                      }
                    }

                    if (*(v143 + 24))
                    {
                      v148 = 1;
                    }

                    else
                    {
                      v148 = *(v129 + 24);
                    }

                    *(v143 + 24) = v148 & 1;
                    if (*(v143 + 27))
                    {
                      v149 = 1;
                    }

                    else
                    {
                      v149 = *(v129 + 27);
                    }

                    *(v143 + 27) = v149 & 1;
                    if (*(v143 + 28))
                    {
                      v150 = 1;
                    }

                    else
                    {
                      v150 = *(v129 + 28);
                    }

                    *(v143 + 28) = v150 & 1;
                  }

                  break;
                }
              }

              else
              {
                if (v138 > 1)
                {
                  if (v142 >= v135)
                  {
                    v142 %= v135;
                  }
                }

                else
                {
                  v142 &= v135 - 1;
                }

                if (v142 != v139)
                {
                  goto LABEL_218;
                }
              }

              v141 = *v141;
              if (!v141)
              {
                goto LABEL_218;
              }
            }
          }

LABEL_219:
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          goto LABEL_221;
        }

        std::string::operator=((v129 + 64), (v128 + 1));
        *(v129 + 26) = 1;
        LOBYTE(v130) = *(v129 + 87);
        goto LABEL_188;
      }

LABEL_243:
      v151 = *__error();
      v152 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = __p[1];
        _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_debug: PPL candidates size: %ld.", buf, 0xCu);
      }

      v153 = 0;
      *__error() = v151;
      memset(__src, 0, sizeof(__src));
      if (allocator)
      {
        v154 = 0;
        if (__p[1] >= 3)
        {
          v155 = __p[0];
          if (__p[0])
          {
            do
            {
              memset(buf, 0, sizeof(buf));
              if (v155[39] < 0)
              {
                std::string::__init_copy_ctor_external(buf, *(v155 + 2), *(v155 + 3));
              }

              else
              {
                *buf = *(v155 + 1);
                *&buf[16] = *(v155 + 4);
              }

              v153 = *(*(v155 + 5) + 27);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v153)
              {
                break;
              }

              v155 = *v155;
            }

            while (v155);
            v156 = __p[0];
            if (__p[0])
            {
              v154 = 0;
              do
              {
                memset(buf, 0, sizeof(buf));
                if (v156[39] < 0)
                {
                  std::string::__init_copy_ctor_external(buf, *(v156 + 2), *(v156 + 3));
                }

                else
                {
                  *buf = *(v156 + 1);
                  *&buf[16] = *(v156 + 4);
                }

                v157 = *(v156 + 5);
                if (*(v157 + 24) == 1 && *(v157 + 16) <= 47304000.0)
                {
                  v158 = 0;
                  v154 = 1;
                }

                else
                {
                  v158 = 1;
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (!v158)
                {
                  break;
                }

                v156 = *v156;
              }

              while (v156);
              goto LABEL_273;
            }
          }

          else
          {
            v153 = 0;
          }

          v154 = 0;
        }
      }

      else
      {
        v154 = 0;
      }

LABEL_273:
      v159 = __p[0];
      if (__p[0])
      {
        v160 = v304 ^ 1 | allocator;
        v161 = allocator ^ 1 | v304;
        allocatorb = v154;
        while (1)
        {
          if (v153)
          {
            v162 = v159[5];
            if (*(v162 + 28) == 1 && (*(v162 + 27) & 1) == 0)
            {
              v164 = *__error();
              v174 = _SILogForLogForCategory(14);
              if (!os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_302;
              }

              *buf = 0;
              v167 = v174;
              v168 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion thresholded. Reason: is recipient and we have author candidates.";
              goto LABEL_300;
            }
          }

          if ((v160 & 1) == 0 && (*(v159[5] + 28) & 1) == 0)
          {
            v164 = *__error();
            v172 = _SILogForLogForCategory(14);
            if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v167 = v172;
              v168 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion skipped. Reason: scope is recipientOnly and candidate is not a recipient.";
              goto LABEL_300;
            }

LABEL_302:
            *__error() = v164;
            goto LABEL_316;
          }

          if ((v161 & 1) == 0 && (*(v159[5] + 27) & 1) == 0)
          {
            break;
          }

          if ((v154 & (__p[1] > 2)) == 1)
          {
            v163 = v159[5];
            if ((*(v163 + 24) & 1) == 0 && *(v163 + 16) > 47304000.0)
            {
              v164 = *__error();
              v165 = _SILogForLogForCategory(14);
              if (!os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_302;
              }

              v166 = *(v159[5] + 16);
              *buf = 134217984;
              *&buf[4] = v166;
              v167 = v165;
              v168 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion thresholded. Reason: not used and age %f.";
              v169 = 12;
              goto LABEL_301;
            }
          }

          v170 = __src[1];
          if ((__src[1] - __src[0]) != 160)
          {
            goto LABEL_292;
          }

          if (*(*(__src[0] + 3) + 8) <= *(v159[5] + 8))
          {
            std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(__src[0], __src[1], 5);
            v170 = (__src[1] - 32);
            if (*(__src[1] - 9) < 0)
            {
              operator delete(*v170);
            }

            __src[1] = v170;
LABEL_292:
            v171 = v159[5];
            if (*(v171 + 87) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, *(v171 + 64), *(v171 + 72));
              v171 = v159[5];
              v170 = __src[1];
            }

            else
            {
              __str = *(v171 + 64);
            }

            v317 = v171;
            if (v170 >= __src[2])
            {
              v177 = (v170 - __src[0]) >> 5;
              if ((v177 + 1) >> 59)
              {
                goto LABEL_482;
              }

              v178 = (__src[2] - __src[0]) >> 4;
              if (v178 <= v177 + 1)
              {
                v178 = v177 + 1;
              }

              if ((__src[2] - __src[0]) >= 0x7FFFFFFFFFFFFFE0)
              {
                v179 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v179 = v178;
              }

              *&v351 = __src;
              if (v179)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v179);
              }

              v180 = (32 * v177);
              *v180 = __str;
              memset(&__str, 0, sizeof(__str));
              v180[1].__r_.__value_.__r.__words[0] = v171;
              v176 = (32 * v177 + 32);
              v181 = (32 * v177 - (__src[1] - __src[0]));
              memcpy(v180 - (__src[1] - __src[0]), __src[0], __src[1] - __src[0]);
              v182 = __src[0];
              v183 = __src[2];
              __src[0] = v181;
              __src[1] = v176;
              __src[2] = 0;
              *&buf[16] = v182;
              *&buf[24] = v183;
              *&buf[8] = v182;
              *buf = v182;
              std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
              v154 = allocatorb;
            }

            else
            {
              v175 = *&__str.__r_.__value_.__l.__data_;
              v170[2] = __str.__r_.__value_.__r.__words[2];
              *v170 = v175;
              memset(&__str, 0, sizeof(__str));
              v170[3] = v317;
              v176 = v170 + 4;
            }

            __src[1] = v176;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople &,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(__src[0], v176, (v176 - __src[0]) >> 5);
          }

LABEL_316:
          v159 = *v159;
          if (!v159)
          {
            goto LABEL_317;
          }
        }

        v164 = *__error();
        v173 = _SILogForLogForCategory(14);
        if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_302;
        }

        *buf = 0;
        v167 = v173;
        v168 = "[Pommes_Suggestions]mail_debug: 1 PPL suggestion skipped. Reason: scope is authorsOnly and candidate is not an author.";
LABEL_300:
        v169 = 2;
LABEL_301:
        _os_log_impl(&dword_1C278D000, v167, OS_LOG_TYPE_DEFAULT, v168, buf, v169);
        goto LABEL_302;
      }

LABEL_317:
      v184 = __src[0];
      if (__src[0] != __src[1])
      {
        do
        {
          v185 = v325;
          if (v325 >= v326)
          {
            v187 = (v325 - v324) >> 5;
            if ((v187 + 1) >> 59)
            {
              goto LABEL_482;
            }

            v188 = (v326 - v324) >> 4;
            if (v188 <= v187 + 1)
            {
              v188 = v187 + 1;
            }

            if (v326 - v324 >= 0x7FFFFFFFFFFFFFE0)
            {
              v189 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v189 = v188;
            }

            *&v351 = &v324;
            if (v189)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v189);
            }

            v191 = 32 * v187;
            if (v184[23] < 0)
            {
              std::string::__init_copy_ctor_external((32 * v187), *v184, *(v184 + 1));
            }

            else
            {
              v192 = *v184;
              *(32 * v187 + 0x10) = *(v184 + 2);
              *v191 = v192;
            }

            *(32 * v187 + 0x18) = *(v184 + 3);
            v190 = (v191 + 32);
            v193 = (v191 - (v325 - v324));
            memcpy(v193, v324, v325 - v324);
            v194 = v324;
            v195 = v326;
            v324 = v193;
            v325 = (v191 + 32);
            v326 = 0;
            *&buf[16] = v194;
            *&buf[24] = v195;
            *&buf[8] = v194;
            *buf = v194;
            std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
          }

          else
          {
            if (v184[23] < 0)
            {
              std::string::__init_copy_ctor_external(v325, *v184, *(v184 + 1));
            }

            else
            {
              v186 = *v184;
              v325->__r_.__value_.__r.__words[2] = *(v184 + 2);
              *&v185->__r_.__value_.__l.__data_ = v186;
            }

            v185[1].__r_.__value_.__r.__words[0] = *(v184 + 3);
            v190 = (v185 + 32);
          }

          v325 = v190;
          memset(buf, 0, 24);
          if (*(__src[0] + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v315, *__src[0], *(__src[0] + 1));
          }

          else
          {
            v196 = *__src[0];
            v315.__r_.__value_.__r.__words[2] = *(__src[0] + 2);
            *&v315.__r_.__value_.__l.__data_ = v196;
          }

          v197 = stringToLowerCase(&v315, buf, 0);
          if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v315.__r_.__value_.__l.__data_);
          }

          if (v197)
          {
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v322, buf);
          }

          std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(__src[0], __src[1], (__src[1] - __src[0]) >> 5);
          v198 = (__src[1] - 32);
          if (*(__src[1] - 9) < 0)
          {
            operator delete(*v198);
          }

          __src[1] = v198;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
            v198 = __src[1];
          }

          v184 = __src[0];
        }

        while (__src[0] != v198);
      }

      v199 = v324;
      if (v324 != v325)
      {
        v200 = (v325 - 32);
        if (&v325[-2].__r_.__value_.__r.__words[2] > v324)
        {
          do
          {
            v201 = v199->__r_.__value_.__r.__words[2];
            v202 = *&v199->__r_.__value_.__l.__data_;
            v203 = v200->__r_.__value_.__r.__words[2];
            *&v199->__r_.__value_.__l.__data_ = *&v200->__r_.__value_.__l.__data_;
            v199->__r_.__value_.__r.__words[2] = v203;
            *&v200->__r_.__value_.__l.__data_ = v202;
            v200->__r_.__value_.__r.__words[2] = v201;
            v204 = v199[1].__r_.__value_.__l.__data_;
            v199[1].__r_.__value_.__r.__words[0] = v200[1].__r_.__value_.__r.__words[0];
            v200[1].__r_.__value_.__r.__words[0] = v204;
            v199 = (v199 + 32);
            v200 = (v200 - 32);
          }

          while (v199 < v200);
        }
      }

      *buf = __src;
      std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
      v313 = 0;
      v314 = 0;
      v312 = 0;
      v205 = v325 - v324;
      a5 = v302;
      if (v325 != v324)
      {
        if (!((v205 >> 5) >> 59))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v205 >> 5);
        }

LABEL_482:
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      goto LABEL_353;
    }

    if (!*(a1 + 88))
    {
      goto LABEL_115;
    }

    v322[0] = 0;
    v77 = *(a1 + 80);
    if (!v77)
    {
      goto LABEL_115;
    }

    v78 = 0;
    allocatora = *MEMORY[0x1E695E480];
    v79 = MEMORY[0x1E695E9C0];
    while (1)
    {
      v80 = v77[5];
      v81 = (v80 + 64);
      if (*(v80 + 87) < 0)
      {
        if (!*(v80 + 72))
        {
          goto LABEL_165;
        }

        v81 = *v81;
      }

      else if (!*(v80 + 87))
      {
        goto LABEL_165;
      }

      v82 = (v77 + 2);
      v83 = CFStringCreateWithCString(0, v81, 0x8000100u);
      if (*(v77 + 39) < 0)
      {
        v82 = *v82;
      }

      v84 = CFStringCreateWithCString(0, v82, 0x8000100u);
      v85 = CFArrayCreateMutable(allocatora, 0, v79);
      CFArrayAppendValue(v85, v84);
      v86 = *(v77[5] + 160) - *(v77[5] + 152);
      if (v86)
      {
        v87 = 0xAAAAAAAAAAAAAAABLL * (v86 >> 3);
        v88 = CFArrayCreateMutable(0, v87, v79);
        if (v88)
        {
          v89 = v88;
          v90 = 0;
          if (v87 <= 1)
          {
            v91 = 1;
          }

          else
          {
            v91 = v87;
          }

          do
          {
            v92 = (*(v77[5] + 152) + v90);
            if (v92[23] < 0)
            {
              v92 = *v92;
            }

            v93 = CFStringCreateWithCString(0, v92, 0x8000100u);
            if (v93)
            {
              v94 = v93;
              CFArrayAppendValue(v85, v93);
              CFRelease(v94);
            }

            v90 += 24;
            --v91;
          }

          while (v91);
          CFRelease(v89);
          v79 = MEMORY[0x1E695E9C0];
        }
      }

      v95 = *(v77[5] + 184) - *(v77[5] + 176);
      if (v95)
      {
        v96 = 0xAAAAAAAAAAAAAAABLL * (v95 >> 3);
        v97 = CFArrayCreateMutable(0, v96, v79);
        if (v97)
        {
          v98 = v97;
          v99 = 0;
          if (v96 <= 1)
          {
            v100 = 1;
          }

          else
          {
            v100 = v96;
          }

          do
          {
            v101 = (*(v77[5] + 176) + v99);
            if (v101[23] < 0)
            {
              v101 = *v101;
            }

            v102 = CFStringCreateWithCString(0, v101, 0x8000100u);
            if (v102)
            {
              v103 = v102;
              CFArrayAppendValue(v85, v102);
              CFRelease(v103);
            }

            v99 += 24;
            --v100;
          }

          while (v100);
          CFRelease(v98);
          v79 = MEMORY[0x1E695E9C0];
        }
      }

      v104 = v77[5];
      if (*(v104 + 27) == 1)
      {
        *(v104 + 32) = 0;
      }

      else
      {
        v105 = *(v104 + 28);
        if (v105 != 1)
        {
          v105 = 2;
        }

        *(v104 + 32) = v105;
      }

      v362 = 0u;
      v363 = 0u;
      v360 = 0u;
      v361 = 0u;
      v358 = 0u;
      v359 = 0u;
      v356 = 0u;
      v357 = 0u;
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v351 = 0u;
      memset(buf, 0, sizeof(buf));
      v106 = v77[5];
      *(&v351 + 1) = *(v106 + 16);
      *&v358 = v83;
      *(&v360 + 1) = v85;
      *&v362 = *(v106 + 8);
      HIDWORD(v362) = 24;
      BYTE2(v363) = *(v106 + 24);
      BYTE3(v363) = *(v106 + 26);
      DWORD1(v363) = *(v106 + 32);
      v107 = *__error();
      v108 = _SILogForLogForCategory(14);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = v77[5];
        v110 = *(v109 + 87);
        if (v110 < 0)
        {
          v110 = *(v109 + 72);
        }

        v111 = *(v109 + 8);
        v112 = *v109;
        v113 = *(v109 + 4);
        v114 = *(v109 + 136);
        v115 = 0xAAAAAAAAAAAAAAABLL * ((*(v109 + 160) - *(v109 + 152)) >> 3);
        v116 = *(v109 + 16);
        v117 = *(v109 + 24);
        v118 = *(v109 + 25);
        v119 = *(v109 + 26);
        v120 = *(v109 + 32);
        LODWORD(__src[0]) = 134220800;
        *(__src + 4) = v78;
        WORD2(__src[1]) = 2048;
        *(&__src[1] + 6) = *&v111;
        HIWORD(__src[2]) = 2048;
        __src[3] = *&v112;
        v332 = 2048;
        v333 = v113;
        v334 = 2048;
        v335 = v114;
        v336 = 2048;
        v337 = v115;
        v338 = 2048;
        v339 = v116;
        v340 = 1024;
        v341 = v117;
        v342 = 1024;
        v343 = v118;
        v344 = 2048;
        v345 = v110;
        v346 = 1024;
        v347 = v119;
        v348 = 1024;
        v349 = v120;
        _os_log_impl(&dword_1C278D000, v108, OS_LOG_TYPE_DEFAULT, "[Pommes_Suggestions]mail_sugg_ppl: pos:%ld sc_final:%f sc_best_name:%f sc_email_address:%f n_names:%ld n_emailaddresses:%ld t_since_use_creation:%f item_used:%d strong_name:%d len_best_name:%ld missing_name:%d default_scope:%d ", __src, 0x6Au);
      }

      *__error() = v107;
      (*(a8 + 16))(a8, buf, v322);
      if (v83)
      {
        CFRelease(v83);
      }

      if (v84)
      {
        CFRelease(v84);
      }

      if (v85)
      {
        CFRelease(v85);
      }

      if (v322[0])
      {
        goto LABEL_115;
      }

      ++v78;
LABEL_165:
      v77 = *v77;
      if (!v77)
      {
        goto LABEL_115;
      }
    }
  }

  memset(__src, 0, sizeof(__src));
  v10 = *(a1 + 120);
  if (!v10)
  {
    memset(v322, 0, 24);
    goto LABEL_114;
  }

  do
  {
    v11 = __src[1];
    if ((__src[1] - __src[0]) == 320)
    {
      if (**(__src[0] + 3) > *v10[5])
      {
        goto LABEL_26;
      }

      std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(__src[0], __src[1], 10);
      v11 = (__src[1] - 32);
      if (*(__src[1] - 9) < 0)
      {
        operator delete(*v11);
      }

      __src[1] = v11;
    }

    v12 = v10[5];
    if (*(v10 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(v322, v10[2], v10[3]);
      v11 = __src[1];
    }

    else
    {
      *v322 = *(v10 + 1);
      *&v322[16] = v10[4];
    }

    *&v322[24] = v12;
    if (v11 >= __src[2])
    {
      v15 = (v11 - __src[0]) >> 5;
      if ((v15 + 1) >> 59)
      {
LABEL_481:
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = (__src[2] - __src[0]) >> 4;
      if (v16 <= v15 + 1)
      {
        v16 = v15 + 1;
      }

      if ((__src[2] - __src[0]) >= 0x7FFFFFFFFFFFFFE0)
      {
        v17 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      *&v351 = __src;
      if (v17)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v17);
      }

      v18 = 32 * v15;
      *v18 = *v322;
      *(v18 + 16) = *&v322[16];
      memset(v322, 0, 24);
      *(v18 + 24) = v12;
      v14 = (32 * v15 + 32);
      v19 = (v18 - (__src[1] - __src[0]));
      memcpy(v19, __src[0], __src[1] - __src[0]);
      v20 = __src[0];
      v21 = __src[2];
      __src[0] = v19;
      __src[1] = v14;
      __src[2] = 0;
      *&buf[16] = v20;
      *&buf[24] = v21;
      *&buf[8] = v20;
      *buf = v20;
      std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
    }

    else
    {
      v13 = *v322;
      v11[2] = *&v322[16];
      *v11 = v13;
      memset(v322, 0, 24);
      v11[3] = *&v322[24];
      v14 = v11 + 4;
    }

    __src[1] = v14;
    std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto &,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(__src[0], v14, (v14 - __src[0]) >> 5);
LABEL_26:
    v10 = *v10;
  }

  while (v10);
  v22 = __src[0];
  memset(v322, 0, 24);
  if (__src[0] != __src[1])
  {
    do
    {
      v23 = *&v322[8];
      if (*&v322[8] >= *&v322[16])
      {
        v25 = (*&v322[8] - *v322) >> 5;
        if ((v25 + 1) >> 59)
        {
          goto LABEL_481;
        }

        v26 = (*&v322[16] - *v322) >> 4;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (*&v322[16] - *v322 >= 0x7FFFFFFFFFFFFFE0uLL)
        {
          v27 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        *&v351 = v322;
        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(v27);
        }

        v29 = (32 * v25);
        if (v22[23] < 0)
        {
          std::string::__init_copy_ctor_external((32 * v25), *v22, *(v22 + 1));
        }

        else
        {
          v30 = *v22;
          *(32 * v25 + 0x10) = *(v22 + 2);
          *v29 = v30;
        }

        *(32 * v25 + 0x18) = *(v22 + 3);
        v28 = v29 + 2;
        v31 = v29 - (*&v322[8] - *v322);
        memcpy(v31, *v322, *&v322[8] - *v322);
        v32 = *v322;
        v33 = *&v322[16];
        *v322 = v31;
        *&v322[8] = (v29 + 2);
        *&buf[16] = v32;
        *&buf[24] = v33;
        *&buf[8] = v32;
        *buf = v32;
        std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(buf);
      }

      else
      {
        if (v22[23] < 0)
        {
          std::string::__init_copy_ctor_external(*&v322[8], *v22, *(v22 + 1));
        }

        else
        {
          v24 = *v22;
          *(*&v322[8] + 16) = *(v22 + 2);
          *v23 = v24;
        }

        *(v23 + 24) = *(v22 + 3);
        v28 = (v23 + 32);
      }

      *&v322[8] = v28;
      std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(__src[0], __src[1], (__src[1] - __src[0]) >> 5);
      v34 = (__src[1] - 32);
      if (*(__src[1] - 9) < 0)
      {
        operator delete(*v34);
      }

      __src[1] = v34;
      v22 = __src[0];
    }

    while (__src[0] != v34);
    v36 = *&v322[8];
    v35 = *v322;
    if (*v322 != *&v322[8])
    {
      v37 = *&v322[8] - 32;
      if ((*&v322[8] - 32) > *v322)
      {
        do
        {
          v38 = *(v35 + 16);
          v39 = *v35;
          v40 = *(v37 + 16);
          *v35 = *v37;
          *(v35 + 16) = v40;
          *v37 = v39;
          *(v37 + 16) = v38;
          v41 = *(v35 + 24);
          *(v35 + 24) = *(v37 + 24);
          *(v37 + 24) = v41;
          v35 += 32;
          v37 -= 32;
        }

        while (v35 < v37);
        v36 = *&v322[8];
        v35 = *v322;
      }
    }

    LOBYTE(v319[0]) = 0;
    if (v35 != v36)
    {
      v42 = 0;
      v43 = 0;
      while (1)
      {
        v44 = v35;
        if (*(v35 + 23) < 0)
        {
          v44 = *v35;
        }

        v45 = CFStringCreateWithCString(0, v44, 0x8000100u);
        if (v45)
        {
          v46 = v45;
          v47 = *v322;
          v48 = *(*(*v322 + 32 * v42 + 24) + 8);
          if ((v48 == 18 || v48 == 9) && v42 != 0)
          {
            for (j = 0; j != v42; ++j)
            {
              v52 = v47 + 32 * v42;
              v53 = *(v52 + 23);
              if ((v53 & 0x8000000000000000) != 0)
              {
                v54 = *(v52 + 8);
              }

              else
              {
                v54 = *(v52 + 23);
              }

              v55 = v47 + 32 * j;
              v56 = *(v55 + 23);
              if ((v56 & 0x8000000000000000) != 0)
              {
                v57 = *(v55 + 8);
              }

              else
              {
                v57 = *(v55 + 23);
              }

              if (v57 >= v54)
              {
                v58 = v54;
              }

              else
              {
                v58 = v57;
              }

              if ((v53 & 0x80000000) != 0)
              {
                v53 = *(v52 + 8);
                if ((v56 & 0x80000000) == 0)
                {
                  goto LABEL_76;
                }
              }

              else if ((v56 & 0x80000000) == 0)
              {
                goto LABEL_76;
              }

              v56 = *(v55 + 8);
LABEL_76:
              if (v53 <= v56)
              {
                v59 = v56;
              }

              else
              {
                v59 = v53;
              }

              if (v58)
              {
                v60 = 0;
                v61 = 0.0;
                do
                {
                  v62 = *v322 + 32 * v42;
                  if (*(v62 + 23) < 0)
                  {
                    v62 = *v62;
                  }

                  v63 = __tolower(*(v62 + v60));
                  v64 = *v322 + 32 * j;
                  if (*(v64 + 23) < 0)
                  {
                    v64 = *v64;
                  }

                  if (v63 != __tolower(*(v64 + v60)))
                  {
                    break;
                  }

                  v61 = v61 + 1.0;
                  ++v60;
                }

                while (v58 != v60);
                v47 = *v322;
              }

              else
              {
                v61 = 0.0;
              }

              if (*(*(v47 + 32 * v42 + 24) + 4) == *(*(v47 + 32 * j + 24) + 4))
              {
                v65 = v58;
              }

              else
              {
                v65 = v59;
              }

              if ((v61 / v65) >= 0.75)
              {
                goto LABEL_99;
              }
            }
          }

          v66 = *(v35 + 24);
          if ((*(v66 + 8) - 17) <= 1)
          {
            *(v66 + 8) = 9;
          }

          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v351 = 0u;
          memset(buf, 0, sizeof(buf));
          v358 = v46;
          v67 = *(v35 + 24);
          *&v362 = *v67;
          HIDWORD(v362) = *(v67 + 8);
          (*(a8 + 16))(a8, buf, v319);
          CFRelease(v46);
          ++v43;
        }

LABEL_99:
        v35 += 32;
        if (v35 != v36)
        {
          ++v42;
          if (v43 < 7)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_114:
  *buf = v322;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = __src;
  std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_115:
  v76 = *MEMORY[0x1E69E9840];
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v6 = 0;
    v7 = *a1;
    *v20 = *(a1 + 8);
    *&v20[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v9 = *(a1 + 24);
    v10 = (a3 - 2) >> 1;
    v11 = a1;
    do
    {
      v12 = v11 + 32 * v6 + 32;
      v13 = 2 * v6;
      v6 = (2 * v6) | 1;
      v14 = v13 + 2;
      if (v14 < a3 && **(v12 + 24) > **(v12 + 56))
      {
        v12 += 32;
        v6 = v14;
      }

      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v15 = *v12;
      *(v11 + 16) = *(v12 + 16);
      *v11 = v15;
      *(v12 + 23) = 0;
      *v12 = 0;
      *(v11 + 24) = *(v12 + 24);
      v11 = v12;
    }

    while (v6 <= v10);
    v16 = (a2 - 32);
    v17 = *(v12 + 23);
    if (a2 - 32 == v12)
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      *v12 = v7;
      *(v12 + 8) = *v20;
      *(v12 + 15) = *&v20[7];
      *(v12 + 23) = v8;
      *(v12 + 24) = v9;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      v18 = *v16;
      *(v12 + 16) = *(a2 - 16);
      *v12 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v12 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v7;
      *(a2 - 24) = *v20;
      *(a2 - 17) = *&v20[7];
      *(a2 - 9) = v8;
      *(a2 - 8) = v9;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto &,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(a1, v12 + 32, (v12 + 32 - a1) >> 5);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void std::vector<std::pair<std::string,_photosCandidate *>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _SIPommesSpotlightEnumerateTopicSuggestions(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    if (a1)
    {
      v2 = *(a1 + 40);
      if (*(a1 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v4, *(a1 + 16), *(a1 + 24));
      }

      else
      {
        v4 = *(a1 + 16);
      }

      v5 = v2;
      operator new();
    }

    allocator = *MEMORY[0x1E695E480];
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,_peopleCandidate *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,_peopleCandidate *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,_peopleCandidate *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
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

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v6 = 0;
    v20 = *a1;
    *v22 = *(a1 + 8);
    *&v22[7] = *(a1 + 15);
    v21 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v7 = *(a1 + 24);
    v8 = (a3 - 2) >> 1;
    v9 = a1;
    do
    {
      v10 = v9 + 32 * v6 + 32;
      v11 = 2 * v6;
      v6 = (2 * v6) | 1;
      v12 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v13 = _comparePeople::operator()(v10, (v10 + 32));
        v14 = v13 ? 32 : 0;
        v10 += v14;
        if (v13)
        {
          v6 = v12;
        }
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v15 = *v10;
      *(v9 + 16) = *(v10 + 16);
      *v9 = v15;
      *(v10 + 23) = 0;
      *v10 = 0;
      *(v9 + 24) = *(v10 + 24);
      v9 = v10;
    }

    while (v6 <= v8);
    v16 = (a2 - 32);
    v17 = *(v10 + 23);
    if (a2 - 32 == v10)
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      *v10 = v20;
      *(v10 + 8) = *v22;
      *(v10 + 15) = *&v22[7];
      *(v10 + 23) = v21;
      *(v10 + 24) = v7;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      v18 = *v16;
      *(v10 + 16) = *(a2 - 16);
      *v10 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v10 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v20;
      *(a2 - 24) = *v22;
      *(a2 - 17) = *&v22[7];
      *(a2 - 9) = v21;
      *(a2 - 8) = v7;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople &,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(a1, v10 + 32, (v10 + 32 - a1) >> 5);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void std::vector<std::pair<std::string,_freeTextCandidate *>>::__init_with_size[abi:nn200100]<std::pair<std::string,_freeTextCandidate *>*,std::pair<std::string,_freeTextCandidate *>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(a4);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }
}

double std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePeople &,std::__wrap_iter<std::pair<std::string,_peopleCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v3;
    v21 = v4;
    v8 = v5 >> 1;
    v9 = (a1 + 32 * (v5 >> 1));
    v10 = (a2 - 32);
    if (_comparePeople::operator()(v9, (a2 - 32)))
    {
      v17 = *v10;
      v12 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      v13 = *(a2 - 8);
      v18 = v12;
      v19 = v13;
      do
      {
        v14 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v15 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v15;
        *(v9 + 23) = 0;
        *v9 = 0;
        *(v10 + 3) = *(v9 + 3);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 32 * v8);
        v10 = v14;
      }

      while (_comparePeople::operator()(v9, &v17));
      if (*(v14 + 23) < 0)
      {
        operator delete(*v14);
      }

      result = *&v17;
      *v14 = v17;
      v16 = v19;
      *(v14 + 2) = v18;
      *(v14 + 3) = v16;
    }
  }

  return result;
}

BOOL _comparePeople::operator()(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = *(v2 + 8);
  v4 = a2[3];
  v5 = *(v4 + 8);
  if (v3 != v5)
  {
    return v3 > v5;
  }

  v7 = *(v2 + 24);
  v8 = *(v4 + 24);
  if (v7 != v8)
  {
    return v7 > v8;
  }

  v9 = *(v2 + 16);
  if (v9 > 0.000000100000001)
  {
    v10 = *(v4 + 16);
    if (v10 > 0.000000100000001)
    {
      return v9 < v10;
    }
  }

  v11 = *(a2 + 23);
  v12 = *(a1 + 23);
  if (v12 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  if (v12 < 0)
  {
    a1 = *a1;
  }

  if (v11 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  if (v11 < 0)
  {
    a2 = *a2;
  }

  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = memcmp(a1, a2, v15);
  if (v16)
  {
    return v16 < 0;
  }

  else
  {
    return v13 < v14;
  }
}

double _topicCandidate::computedScore(_topicCandidate *this)
{
  v3 = *this;
  v2 = *(this + 1);
  v4 = 0.0;
  v5 = 0.0;
  if (v2)
  {
    v5 = log(v2) * 18.9648897;
  }

  if (v3)
  {
    v4 = log(v3);
  }

  v6 = *(this + 29);
  v7 = 0.0;
  v8 = *(this + 13);
  v9 = (v5 + v4) * 0.25 + 0.0 + *(this + 28) * 2.5 + v6 * 2.5 + *(this + 12) * 0.25;
  if (v8 != 0.0)
  {
    v10 = fabs(v8);
    v11 = v9 - v10 * 0.25;
    v9 = v9 + v10 * 0.25;
    if (v10 < 5.0)
    {
      v9 = v11;
    }

    v12 = *(this + 15);
    if ((v6 - v12) < 4 && v6 != v12)
    {
      v9 = v9 + (v6 - v12) * 5.0;
    }
  }

  v14 = *(this + 11);
  if (v14 > 40996800.0)
  {
    v9 = v9 + v14;
  }

  v15 = v9 - *(this + 20);
  v16 = 0.5;
  if (!*(this + 80))
  {
    v16 = 0.0;
  }

  v17 = v15 + v16;
  if (*(this + 81))
  {
    v7 = 2.0;
  }

  return -(v17 + v7);
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,_compareTopic,std::__wrap_iter<std::pair<std::string,_topicCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v6 = 0;
    v20 = *a1;
    *v22 = *(a1 + 8);
    *&v22[7] = *(a1 + 15);
    v21 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v7 = *(a1 + 24);
    v8 = (a3 - 2) >> 1;
    v9 = a1;
    do
    {
      v10 = v9 + 32 * v6 + 32;
      v11 = 2 * v6;
      v6 = (2 * v6) | 1;
      v12 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v13 = _compareTopic::operator()(*(v10 + 24), *(v10 + 56));
        v14 = v13 ? 32 : 0;
        v10 += v14;
        if (v13)
        {
          v6 = v12;
        }
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v15 = *v10;
      *(v9 + 16) = *(v10 + 16);
      *v9 = v15;
      *(v10 + 23) = 0;
      *v10 = 0;
      *(v9 + 24) = *(v10 + 24);
      v9 = v10;
    }

    while (v6 <= v8);
    v16 = (a2 - 32);
    v17 = *(v10 + 23);
    if (a2 - 32 == v10)
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      *v10 = v20;
      *(v10 + 8) = *v22;
      *(v10 + 15) = *&v22[7];
      *(v10 + 23) = v21;
      *(v10 + 24) = v7;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v10);
      }

      v18 = *v16;
      *(v10 + 16) = *(a2 - 16);
      *v10 = v18;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v10 + 24) = *(a2 - 8);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 32) = v20;
      *(a2 - 24) = *v22;
      *(a2 - 17) = *&v22[7];
      *(a2 - 9) = v21;
      *(a2 - 8) = v7;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareTopic &,std::__wrap_iter<std::pair<std::string,_topicCandidate *> *>>(a1, v10 + 32, (v10 + 32 - a1) >> 5);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

__n128 std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_compareTopic &,std::__wrap_iter<std::pair<std::string,_topicCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = v3 >> 1;
    v7 = (a1 + 32 * (v3 >> 1));
    v8 = *(a2 - 8);
    if (_compareTopic::operator()(*(v7 + 3), v8))
    {
      v10 = (a2 - 32);
      v13 = *(a2 - 32);
      v14 = *(a2 - 16);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 32) = 0;
      do
      {
        v11 = v7;
        if (v10[1].n128_i8[7] < 0)
        {
          operator delete(v10->n128_u64[0]);
        }

        v12 = *v7;
        v10[1].n128_u64[0] = *(v7 + 2);
        *v10 = v12;
        *(v7 + 23) = 0;
        *v7 = 0;
        v10[1].n128_u64[1] = *(v7 + 3);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 32 * v6);
        v10 = v11;
      }

      while (_compareTopic::operator()(*(v7 + 3), v8));
      if (v11[1].n128_i8[7] < 0)
      {
        operator delete(v11->n128_u64[0]);
      }

      result = v13;
      *v11 = v13;
      v11[1].n128_u64[0] = v14;
      v11[1].n128_u64[1] = v8;
    }
  }

  return result;
}

BOOL _compareTopic::operator()(_topicCandidate *a1, _topicCandidate *a2)
{
  v2 = *(a1 + 34);
  v3 = *(a2 + 34);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v5 = _topicCandidate::computedScore(a1);
  return v5 > _topicCandidate::computedScore(a2);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,_photosCandidate *>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,_photosCandidate *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_comparePhoto &,std::__wrap_iter<std::pair<std::string,_photosCandidate *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 32 * (v3 >> 1));
    v7 = *(a2 - 8);
    if (*v6[3] > *v7)
    {
      v9 = *(a2 - 32);
      v8 = (a2 - 32);
      *v14 = *(a2 - 24);
      *&v14[7] = *(a2 - 17);
      v10 = *(a2 - 9);
      v8[1] = 0;
      v8[2] = 0;
      *v8 = 0;
      do
      {
        v11 = v6;
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v12 = *v11;
        v8[2] = v11[2];
        *v8 = v12;
        *(v11 + 23) = 0;
        *v11 = 0;
        v8[3] = v11[3];
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 32 * v5);
        v8 = v11;
      }

      while (*v6[3] > *v7);
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      *v11 = v9;
      v11[1] = *v14;
      *(v11 + 15) = *&v14[7];
      *(v11 + 23) = v10;
      v11[3] = v7;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

__int16 *normalizePunctuations(__int16 *result, int a2)
{
  if (result && a2 >= 1)
  {
    v2 = a2;
    while (1)
    {
      v3 = *result;
      v4 = 39;
      if (v3 <= 0x200F)
      {
        if (v3 - 697 <= 0xF && ((1 << (v3 + 71)) & 0x8009) != 0)
        {
          goto LABEL_17;
        }

        if (v3 != 173)
        {
          if (v3 != 180)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        goto LABEL_7;
      }

      v5 = v3 - 16;
      if (v3 - 8208 > 0x22)
      {
        goto LABEL_20;
      }

      if (((1 << v5) & 0x1F) == 0)
      {
        break;
      }

LABEL_7:
      v4 = 45;
LABEL_17:
      *result = v4;
LABEL_18:
      ++result;
      if (!--v2)
      {
        return result;
      }
    }

    if (((1 << v5) & 0x400000B00) != 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    if (v3 != 8722)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  return result;
}

void pommesSuggestionsTokenizeString(uint64_t a1, const char *a2, int32_t a3, _WORD *a4, unsigned __int16 *a5, uint64_t a6, char a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v71 = *MEMORY[0x1E69E9840];
  v19 = *(a6 + 62088);
  if (_normalizeUnicodeString_onceToken != -1)
  {
    dispatch_once(&_normalizeUnicodeString_onceToken, &__block_literal_global_320);
  }

  pErrorCode[0] = U_ZERO_ERROR;
  *(a6 + 16) = 0;
  bzero(dest, 0x7D0uLL);
  pDestLength = 0;
  v20 = 1000;
  u_strFromUTF8(dest, 1000, &pDestLength, a2, a3, pErrorCode);
  if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
  {
    pDestLength = 1000;
    pErrorCode[0] = U_ZERO_ERROR;
  }

  else
  {
    v20 = pDestLength;
    if (!pDestLength)
    {
      goto LABEL_17;
    }
  }

  if (_normalizeUnicodeString_norm2 && ((v19 & 1) != 0 || (v21 = unorm2_quickCheck(), v20 = pDestLength, v21 != 1)))
  {
    v25 = unorm2_normalize();
    if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
    {
      v23 = 1000;
    }

    else
    {
      v23 = v25;
    }
  }

  else
  {
    v22 = u_strToLower((a6 + 40064), 1000, dest, v20, 0, pErrorCode);
    v23 = v22;
    pDestLength = v22;
    v24 = v22;
    if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
    {
      memcpy((a6 + 40064), dest, 2 * v22);
    }

    *(a6 + 40064 + 2 * v24) = 0;
  }

  *(a6 + 16) = v23;
  if (a8)
  {
    normalizePunctuations((a6 + 40064), pDestLength);
  }

LABEL_17:
  v26 = *(a6 + 16);
  if (v26 && (v27 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], (a6 + 40064), v26, *MEMORY[0x1E695E498])) != 0)
  {
    v69 = 0u;
    v70 = 0u;
    *dest = a1;
    v65 = a6 + 40064;
    v28 = *(a6 + 16);
    v29 = v27;
    v66 = a6 + 40064 + 2 * v28;
    v67 = a6 + 16040;
    v68 = a6 + 32056;
    LOWORD(v69) = 1000;
    *&v70 = a6 + 24;
    BYTE10(v70) = a7;
    v30 = SIStringContainsNewlineCharacters((a6 + 40064), v28);
    if (v30)
    {
      a10 = 0;
    }

    if (v30)
    {
      v32 = a11;
    }

    else
    {
      v32 = 0;
    }

    cf = v29;
    CITokenizerGetTokensNew(a1, v29, *a6, a12, 0, a10, 0, v32, dest);
    v33 = WORD1(v69);
    v58 = a5;
    if (a10)
    {
      v34 = WORD4(v70);
      if (*(&v69 + 1) < WORD1(v69))
      {
        v35 = WORD2(v69);
        if (WORD2(v69))
        {
          v36 = (v70 + 16 * WORD4(v70));
          *v36 = *(&v69 + 1);
          v36[1] = v35;
          WORD4(v70) = ++v34;
        }
      }
    }

    else
    {
      v34 = WORD4(v70);
    }

    v38 = a6 + 42066;
    if (v33 > 1u)
    {
      v39 = a9;
    }

    else
    {
      v39 = 0;
    }

    v37 = v33 - v39;
    if (v34 < 2u)
    {
      v40 = 1;
    }

    else
    {
      v40 = a7;
    }

    if (v40)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(v70 + 8) - 1;
    }

    if (v33 == v39)
    {
      v47 = (a6 + 42066);
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v55 = v33 - v39;
      v56 = v34;
      v59 = v34;
      v61 = (v33 - v39);
      v44 = (a6 + 46080);
      v45 = 4001;
      v46 = a6;
      v47 = (a6 + 42066);
      do
      {
        v48 = *(v46 + 16048);
        if (v45 <= 4 * v48)
        {
          break;
        }

        v49 = (a6 + 40064 + 2 * *(v46 + 16040));
        *pErrorCode = 0;
        if (utf8_encodestr(v49, 2 * v48, v47, pErrorCode, v45))
        {
          v50 = 0;
        }

        else
        {
          v50 = *pErrorCode;
        }

        *(v44 - 1) = &v47[-v38];
        *v44 = v50;
        v51 = v45 - v50;
        v52 = &v47[v50];
        if (v51 < 2)
        {
          v47 = v52;
          break;
        }

        *v52 = 32;
        v47 = v52 + 1;
        v45 = v51 - 1;
        if (v42 == v41)
        {
          v53 = v40;
        }

        else
        {
          v53 = 1;
        }

        if ((v53 & 1) == 0)
        {
          if (v45 < 3)
          {
            break;
          }

          *(v52 + 1) = 8238;
          v47 = v52 + 3;
          v45 = v51 - 3;
          if (++v43 >= v59)
          {
            v41 = v42;
          }

          else
          {
            v41 = *(v70 + 16 * v43 + 8) + v42;
          }
        }

        ++v42;
        v44 += 2;
        v46 += 16;
      }

      while (v61 != v42);
      v37 = v55;
      v34 = v56;
    }

    *v47 = 0;
    *(a6 + 20) = v47 - v38;
    CFRelease(cf);
    a5 = v58;
  }

  else
  {
    v34 = 0;
    v37 = 0;
  }

  if (a4)
  {
    *a4 = v37;
  }

  if (a5)
  {
    *a5 = v34;
  }

  v54 = *MEMORY[0x1E69E9840];
}

uint64_t ___normalizeUnicodeString_block_invoke()
{
  result = unorm2_getNFCInstance();
  _normalizeUnicodeString_norm2 = result;
  return result;
}

BOOL pommesSuggestionsGetTokenCallback(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 <= a1 && a1 + 2 * a2 <= *(a4 + 16))
  {
    if ((a3 & 0x10) != 0)
    {
      if (a2 >= 1)
      {
        v6 = 0;
        v5 = (a1 - v4) >> 1;
        do
        {
          v7 = 0;
          while (*(a1 + 2 * v6 + 2 * v7) != 45)
          {
            ++v7;
            if (!(v6 - a2 + v7))
            {
              a3 = 0;
              a2 -= v6;
              goto LABEL_16;
            }
          }

          v8 = *(a4 + 42);
          v10 = *(a4 + 24);
          v9 = *(a4 + 32);
          v11 = *(a4 + 44);
          if (v7)
          {
            v12 = (v10 + 16 * v8);
            *v12 = v5;
            v12[1] = v7;
            *(v9 + 8 * v8) = 0;
            LOWORD(v8) = v8 + 1;
            ++v11;
          }

          v13 = v6 + v7;
          v14 = v5 + v7;
          v15 = (v10 + 16 * v8);
          *v15 = v14;
          v15[1] = 1;
          *(v9 + 8 * v8) = 32;
          *(a4 + 42) = v8 + 1;
          *(a4 + 44) = v11 + 1;
          v5 = v14 + 1;
          v6 = v13 + 1;
        }

        while (v6 != a2);
      }
    }

    else if ((a3 & 0x20000800) == 0)
    {
      v5 = (a1 - v4) >> 1;
LABEL_16:
      v16 = *(a4 + 42);
      v17 = *(a4 + 32);
      v18 = (*(a4 + 24) + 16 * v16);
      *v18 = v5;
      v18[1] = a2;
      *(v17 + 8 * v16) = a3;
      *(a4 + 42) = v16 + 1;
      ++*(a4 + 44);
    }
  }

  return *(a4 + 42) >= *(a4 + 40) || *(a4 + 64) > 0x3E7u;
}

BOOL pommesSuggestionsEmailAddressGetTokenCallback(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 > a1 || &a1[a2] > *(a4 + 16))
  {
    return *(a4 + 42) >= *(a4 + 40);
  }

  v5 = (a1 - v4) >> 1;
  if ((a3 & 0x30) != 0)
  {
    if (a2 < 1)
    {
      return *(a4 + 42) >= *(a4 + 40);
    }

    v6 = 0;
    while (1)
    {
      v8 = *a1++;
      v7 = v8;
      v9 = (v8 - 33);
      if (v9 <= 0x3F)
      {
        if (((1 << v9) & 0xE00000005000767DLL) != 0)
        {
          goto LABEL_8;
        }

        if (v9 == 31)
        {
          v14 = *(a4 + 42);
          v16 = *(a4 + 24);
          v15 = *(a4 + 32);
          v17 = *(a4 + 44);
          if (v6)
          {
            v18 = (v16 + 16 * v14);
            *v18 = v5;
            v18[1] = v6;
            *(v15 + 8 * v14) = 0;
            LOWORD(v14) = v14 + 1;
            ++v17;
          }

          v19 = v5 + v6;
          v20 = (v16 + 16 * v14);
          *v20 = v19;
          v20[1] = 1;
          *(v15 + 8 * v14) = 32;
          *(a4 + 42) = v14 + 1;
          *(a4 + 44) = v17 + 1;
          v5 = v19 + 1;
          v6 = 0;
          goto LABEL_11;
        }
      }

      if ((v7 - 123) < 4)
      {
LABEL_8:
        if (v6)
        {
          v10 = *(a4 + 42);
          v11 = *(a4 + 32);
          v12 = (*(a4 + 24) + 16 * v10);
          *v12 = v5;
          v12[1] = v6;
          *(v11 + 8 * v10) = 0;
          *(a4 + 42) = v10 + 1;
          ++*(a4 + 44);
        }

        v13 = v6 + v5;
        v6 = 0;
        v5 = v13 + 1;
        goto LABEL_11;
      }

      ++v6;
LABEL_11:
      if (!--a2)
      {
        if (v6)
        {
          a3 = 0;
          goto LABEL_22;
        }

        return *(a4 + 42) >= *(a4 + 40);
      }
    }
  }

  v6 = a2;
LABEL_22:
  v21 = *(a4 + 42);
  v22 = *(a4 + 32);
  v23 = (*(a4 + 24) + 16 * v21);
  *v23 = v5;
  v23[1] = v6;
  *(v22 + 8 * v21) = a3;
  *(a4 + 42) = v21 + 1;
  ++*(a4 + 44);
  return *(a4 + 42) >= *(a4 + 40);
}

BOOL pommesSuggestionsLiteralGetTokenCallback(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 <= a1 && a1 + 2 * a2 <= *(a4 + 16))
  {
    v5 = *(a4 + 42);
    v6 = *(a4 + 32);
    v7 = (*(a4 + 24) + 16 * v5);
    *v7 = (a1 - v4) >> 1;
    v7[1] = a2;
    *(v6 + 8 * v5) = a3;
    *(a4 + 42) = v5 + 1;
    ++*(a4 + 44);
  }

  return *(a4 + 42) >= *(a4 + 40);
}

BOOL pommesSuggestionsGetSentenceCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 1)
  {
LABEL_18:
    if ((*(a5 + 66) & 1) == 0)
    {
      v23 = *(a5 + 44);
      if (*(a5 + 44))
      {
        v24 = *(a5 + 64);
        v25 = (*(a5 + 56) + 16 * v24);
        *v25 = *(a5 + 48);
        v25[1] = v23;
        *(a5 + 64) = v24 + 1;
        *(a5 + 48) = *(a5 + 42);
        *(a5 + 44) = 0;
      }
    }

    if (*(a5 + 42) < *(a5 + 40))
    {
      return *(a5 + 64) > 0x3E7u;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(a5 + 40);
    v7 = *(a5 + 42);
    while (1)
    {
      v8 = (a2 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a3 + 8 * v5);
      if ((v11 & 0x10) != 0)
      {
        if (v9 >= 1)
        {
          v12 = 0;
          do
          {
            v13 = 0;
            v14 = v12;
            while (*(a1 + 2 * v14) != 45)
            {
              ++v13;
              if (v9 == ++v14)
              {
                v11 = 0;
                v9 -= v12;
                goto LABEL_14;
              }
            }

            v16 = *(a5 + 24);
            v15 = *(a5 + 32);
            v17 = *(a5 + 44);
            if (v13)
            {
              v18 = (v16 + 16 * v7);
              *v18 = v10;
              v18[1] = v13;
              *(v15 + 8 * v7++) = 0;
              ++v17;
            }

            v19 = v13 + v10;
            v20 = (v16 + 16 * v7);
            *v20 = v19;
            v20[1] = 1;
            *(v15 + 8 * v7++) = 32;
            *(a5 + 42) = v7;
            *(a5 + 44) = v17 + 1;
            v10 = v19 + 1;
            v12 = v14 + 1;
          }

          while (v14 + 1 != v9);
        }
      }

      else
      {
LABEL_14:
        v21 = *(a5 + 32);
        v22 = (*(a5 + 24) + 16 * v7);
        *v22 = v10;
        v22[1] = v9;
        *(v21 + 8 * v7++) = v11;
        *(a5 + 42) = v7;
        ++*(a5 + 44);
      }

      if (v6 <= v7 || *(a5 + 64) >= 0x3E8u)
      {
        break;
      }

      if (++v5 == a4)
      {
        goto LABEL_18;
      }
    }
  }

  return 1;
}