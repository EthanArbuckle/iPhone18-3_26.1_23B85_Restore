void GTMTLIndirectResources_allResourcesByKey(uint64_t *a1, _DWORD **a2, unint64_t a3, int a4, apr_pool_t *p)
{
  v120 = *MEMORY[0x277D85DE8];
  v8 = apr_array_make(p, 32, 8);
  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[1], a3, v8);
  v9 = apr_array_make(p, v8->nelts, 32);
  v115[0] = v9;
  if (v8->nelts >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *&v8->elts[8 * v10];
      v12 = apr_array_push(v9);
      v13 = v11->i64[1];
      *v12 = vextq_s8(v11[7], v11[7], 8uLL);
      ++v10;
      v12[1].i64[0] = v13;
      v12[1].i64[1] = 0;
    }

    while (v10 < v8->nelts);
  }

  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[3], a3, v8);
  v14 = apr_array_make(p, v8->nelts, 32);
  v115[2] = v14;
  if (v8->nelts >= 1)
  {
    v15 = v14;
    v16 = 0;
    do
    {
      v17 = *&v8->elts[8 * v16];
      v18 = apr_array_push(v15);
      v19 = v17[1];
      *v18 = v17[22];
      v18[1] = v19;
      v18[2] = v17[26];
      v20 = apr_array_push(v9);
      v21 = v17[8];
      v22 = v17[1];
      *v20 = v17[27];
      *(v20 + 1) = v21;
      *(v20 + 2) = v22;
      v20[24] = 2;
      *(v20 + 25) = 0;
      *(v20 + 7) = 0;
      ++v16;
    }

    while (v16 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[2], a3, v8);
  v23 = apr_array_make(p, v8->nelts, 32);
  v115[1] = v23;
  if (v8->nelts >= 1)
  {
    v24 = v23;
    v25 = 0;
    do
    {
      v26 = *&v8->elts[8 * v25];
      v27 = apr_array_push(v24);
      v28 = v26[1];
      *v27 = v26[39];
      v27[1] = v28;
      v27[2] = v26[37];
      ++v25;
    }

    while (v25 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[4], a3, v8);
  v29 = apr_array_make(p, v8->nelts, 32);
  v115[3] = v29;
  if (v8->nelts >= 1)
  {
    v30 = v29;
    v31 = 0;
    do
    {
      v32 = *&v8->elts[8 * v31];
      v33 = apr_array_push(v30);
      v34 = v32[1];
      v35 = v32[9];
      *v33 = v32[8];
      v33[1] = v34;
      v33[2] = v35;
      ++v31;
    }

    while (v31 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[11], a3, v8);
  v36 = apr_array_make(p, v8->nelts, 32);
  *&v119 = v36;
  nelts = v8->nelts;
  if (nelts >= 1)
  {
    v38 = v36;
    for (i = 0; i < nelts; ++i)
    {
      v40 = *&v8->elts[8 * i];
      if (v40[6])
      {
        v41 = apr_array_push(v38);
        v42 = v40[1];
        v43 = v40[9];
        *v41 = v40[8];
        v41[1] = v42;
        v41[2] = v43;
        nelts = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[5], a3, v8);
  v44 = apr_array_make(p, v8->nelts, 32);
  *&v116 = v44;
  v45 = v8->nelts;
  if (v45 >= 1)
  {
    v46 = v44;
    for (j = 0; j < v45; ++j)
    {
      v48 = *&v8->elts[8 * j];
      if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(v48))
      {
        v49 = apr_array_push(v46);
        v50 = v48[1];
        *v49 = v48[15];
        v49[1] = v50;
        v49[2] = v48[17];
        v45 = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[6], a3, v8);
  v51 = apr_array_make(p, v8->nelts, 32);
  *(&v116 + 1) = v51;
  v52 = v8->nelts;
  if (v52 >= 1)
  {
    v53 = v51;
    for (k = 0; k < v52; ++k)
    {
      v55 = *&v8->elts[8 * k];
      if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(v55))
      {
        v56 = apr_array_push(v53);
        v57 = v55[1];
        *v56 = v55[15];
        v56[1] = v57;
        v56[2] = v55[17];
        v52 = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[7], a3, v8);
  v58 = apr_array_make(p, v8->nelts, 32);
  *&v117 = v58;
  if (v8->nelts >= 1)
  {
    v59 = v58;
    v60 = 0;
    do
    {
      v61 = *&v8->elts[8 * v60];
      v62 = apr_array_push(v59);
      v63 = v61[1];
      v64 = v61[17];
      *v62 = v61[16];
      v62[1] = v63;
      v62[2] = v64;
      ++v60;
    }

    while (v60 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[8], a3, v8);
  v65 = apr_array_make(p, v8->nelts, 32);
  *(&v117 + 1) = v65;
  if (v8->nelts >= 1)
  {
    v66 = v65;
    v67 = 0;
    do
    {
      v68 = *&v8->elts[8 * v67];
      v69 = apr_array_push(v66);
      v70 = *(v68 + 8);
      *v69 = *(v68 + 144);
      v69[1] = v70;
      *(v69 + 1) = *(v68 + 160);
      v71 = apr_array_push(v9);
      v72 = *(v68 + 8);
      *v71 = *(v68 + 168);
      *(v71 + 1) = 8;
      *(v71 + 2) = v72;
      v71[24] = 7;
      *(v71 + 25) = 0;
      *(v71 + 7) = 0;
      ++v67;
    }

    while (v67 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[9], a3, v8);
  v73 = apr_array_make(p, v8->nelts, 32);
  *&v118 = v73;
  if (v8->nelts >= 1)
  {
    v74 = v73;
    v75 = 0;
    do
    {
      v76 = *&v8->elts[8 * v75];
      v77 = apr_array_push(v74);
      v78 = v76[1];
      v79 = v76[20];
      *v77 = v76[19];
      v77[1] = v78;
      v77[2] = v79;
      ++v75;
    }

    while (v75 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[10], a3, v8);
  v80 = apr_array_make(p, v8->nelts, 32);
  *(&v118 + 1) = v80;
  if (v8->nelts >= 1)
  {
    v81 = v80;
    v82 = 0;
    do
    {
      v83 = *&v8->elts[8 * v82];
      v84 = apr_array_push(v81);
      v85 = v83[1];
      v86 = v83[18];
      *v84 = v83[17];
      v84[1] = v85;
      v84[2] = v86;
      v87 = apr_array_push(v9);
      v88 = v83[8];
      v89 = v83[1];
      *v87 = v83[21];
      *(v87 + 1) = v88;
      *(v87 + 2) = v89;
      v87[24] = 9;
      *(v87 + 25) = 0;
      *(v87 + 7) = 0;
      ++v82;
    }

    while (v82 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[12], a3, v8);
  v90 = v8->nelts;
  if (v90 < 1)
  {
    LODWORD(v92) = 0;
    v93 = a4;
    v94 = a1;
  }

  else
  {
    v91 = 0;
    v92 = 0;
    v93 = a4;
    v94 = a1;
    do
    {
      v95 = *&v8->elts[8 * v91];
      v96 = *(v95 + 64);
      if (v96 >= 1)
      {
        do
        {
          v92 += *(v95 + 80);
          v95 = *(v95 + 32);
          --v96;
        }

        while (v96);
      }

      ++v91;
    }

    while (v91 != v90);
  }

  v97 = apr_array_make(p, v92, 24);
  *(&v119 + 1) = v97;
  if (v8->nelts >= 1)
  {
    v98 = 0;
    elts = v8->elts;
    do
    {
      v100 = *&elts[8 * v98];
      v101 = *(v100 + 64);
      if (v101 >= 1)
      {
        v102 = 0;
        v103 = *(v100 + 64);
        v104 = *&elts[8 * v98];
        do
        {
          v102 += *(v104 + 80);
          v104 = *(v104 + 32);
          --v103;
        }

        while (v103);
        v97->nelts += v102;
        do
        {
          v105 = *(v100 + 80);
          if (v105)
          {
            v106 = 0;
            v107 = *(v100 + 72);
            v108 = *(v100 + 32);
            v109 = &v97->elts[24 * v102 - 24 * v105 + 8];
            do
            {
              v110 = *(v108 + 24);
              v111 = v106 + *(v100 + 96);
              *(v109 - 1) = *(v107 + 8 * v106);
              *v109 = v110;
              *(v109 + 1) = v111;
              ++v106;
              v109 += 24;
            }

            while (*(v100 + 80) > v106);
          }

          else
          {
            v108 = *(v100 + 32);
          }

          v102 -= v105;
          ++v103;
          v100 = v108;
        }

        while (v103 != v101);
      }

      ++v98;
    }

    while (v98 < v8->nelts);
  }

  GTMTLIndirectResources_optimizeByKey(v94, v115, v93, p);
  v112 = *MEMORY[0x277D85DE8];
}

apr_hash_index_t *GTMTLIndirectResources_rehash(apr_hash_index_t *result, uint64_t a2, int a3, apr_pool_t *p)
{
  v5 = result;
  if (*(a2 + 96) == a3)
  {
    v6 = *(a2 + 80);
    *(result + 4) = *(a2 + 64);
    *(result + 5) = v6;
    *(result + 12) = *(a2 + 96);
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 1) = v7;
    v8 = *(a2 + 48);
    *(result + 2) = *(a2 + 32);
    *(result + 3) = v8;
  }

  else
  {
    *result = apr_array_copy(p, *a2);
    v11 = apr_hash_make(p);
    *(v5 + 1) = v11;
    v12 = apr_hash_make(p);
    *(v5 + 2) = v12;
    v13 = apr_hash_make(p);
    *(v5 + 3) = v13;
    v14 = apr_hash_make(p);
    *(v5 + 4) = v14;
    v15 = apr_hash_make(p);
    *(v5 + 5) = v15;
    v16 = apr_hash_make(p);
    *(v5 + 6) = v16;
    v38 = apr_hash_make(p);
    *(v5 + 7) = v38;
    v39 = apr_hash_make(p);
    *(v5 + 8) = v39;
    v40 = apr_hash_make(p);
    *(v5 + 9) = v40;
    v41 = apr_hash_make(p);
    *(v5 + 10) = v41;
    v17 = apr_hash_make(p);
    *(v5 + 11) = v17;
    *(v5 + 96) = a3;
    *(v5 + 97) = 0;
    *(v5 + 25) = 0;
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 8), a3, v11);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 16), a3, v12);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 24), a3, v13);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 32), a3, v14);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 40), a3, v15);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 48), a3, v16);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 56), a3, v38);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 64), a3, v39);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 72), a3, v40);
    result = GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 80), a3, v41);
    v18 = *(a2 + 96);
    if (a3 == 1)
    {
      if (v18 != 1)
      {
        v19 = *(a2 + 88);
        v20 = *v17;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *(v19 + 16) = v19;
        *(v19 + 40) = 0;
        result = apr_hash_next((v19 + 16));
        if (result)
        {
          v21 = result;
          do
          {
            v22 = *(*(v21 + 1) + 32);
            v23 = *find_entry(v17, (v22 + 16), 8uLL, 0);
            if (!v23 || (v24 = *(v23 + 32)) == 0)
            {
              v24 = apr_array_make(v20, 4, 24);
              v25 = apr_palloc(v20, 8uLL);
              *v25 = *(v22 + 16);
              apr_hash_set(v17, v25, 8, v24);
            }

            v26 = apr_array_push(v24);
            v27 = *(v22 + 16);
            *v26 = *v22;
            v26[2] = v27;
            result = apr_hash_next(v21);
            v21 = result;
          }

          while (result);
        }
      }
    }

    else
    {
      v28 = *(a2 + 88);
      if (v18 == 1)
      {
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *(v28 + 16) = v28;
        *(v28 + 40) = 0;
        result = apr_hash_next((v28 + 16));
        if (result)
        {
          v29 = result;
          do
          {
            v30 = *(*(v29 + 1) + 32);
            v31 = *(v30 + 12);
            if (v31 >= 1)
            {
              v32 = *(v30 + 24);
              do
              {
                apr_hash_set(v17, (v32 + 8), 8, v32);
                v32 += 24;
                --v31;
              }

              while (v31);
            }

            result = apr_hash_next(v29);
            v29 = result;
          }

          while (result);
        }
      }

      else
      {
        v33 = *v17;
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *(v28 + 16) = v28;
        *(v28 + 40) = 0;
        result = apr_hash_next((v28 + 16));
        if (result)
        {
          v34 = result;
          do
          {
            v35 = *(*(v34 + 1) + 32);
            v36 = apr_palloc(v33, 0x20uLL);
            v37 = *(v35 + 16);
            *v36 = *v35;
            v36[2] = v37;
            apr_hash_set(v17, v36 + 1, 8, v36);
            result = apr_hash_next(v34);
            v34 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

apr_hash_index_t *GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(uint64_t a1, int a2, apr_hash_t *a3)
{
  v5 = *a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  result = apr_hash_next((a1 + 16));
  if (result)
  {
    v7 = result;
    v8 = a2 == 1;
    do
    {
      v9 = *(*(v7 + 1) + 32);
      v10 = apr_palloc(v5, 0x20uLL);
      v11 = v9[1];
      *v10 = *v9;
      v10[1] = v11;
      apr_hash_set(a3, &v10[v8], 8, v10);
      result = apr_hash_next(v7);
      v7 = result;
    }

    while (result);
  }

  return result;
}

void GetUUIDFromMetadata(CFUUIDBytes *a1, const char *a2, apr_pool_t *parent, apr_allocator_t *a4)
{
  newpool = 0;
  if (!apr_pool_create_ex(&newpool, parent, 0, a4))
  {
    v6 = newpool;
    v7 = gt_filepath_merge(a2, "metadata", newpool);
    v8 = open(v7, 0);
    if (v8 < 0)
    {
      *&a1->byte0 = 0;
      *&a1->byte8 = 0;

      apr_pool_destroy(v6);
    }

    else
    {
      v9 = v8;
      memset(&v23, 0, sizeof(v23));
      fstat(v8, &v23);
      v10 = apr_palloc(v6, v23.st_size);
      v11 = 0;
      st_size = v23.st_size;
      do
      {
        if ((st_size - v11) >= 0x100000)
        {
          v13 = 0x100000;
        }

        else
        {
          v13 = st_size - v11;
        }

        v14 = read(v9, &v10[v11], v13);
        if (v14 == -1)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v11 += v15;
      }

      while (v14 != -1 && v11 != st_size);
      close(v9);
      v17 = *MEMORY[0x277CBECE8];
      v18 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v10, v23.st_size, *MEMORY[0x277CBED00]);
      error = 0;
      v19 = CFPropertyListCreateWithData(v17, v18, 0, 0, &error);
      CFRelease(v18);
      if (error || (Value = CFDictionaryGetValue(v19, @"(uuid)")) == 0)
      {
        *&a1->byte0 = 0;
        *&a1->byte8 = 0;
      }

      else
      {
        v21 = CFUUIDCreateFromString(v17, Value);
        *a1 = CFUUIDGetUUIDBytes(v21);
        CFRelease(v21);
      }

      CFRelease(v19);
      apr_pool_destroy(v6);
    }
  }
}

uint64_t GTCaptureArchive_cleanup(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    munmap(*(a1 + 96), v2);
  }

  if (*(a1 + 128) != 1 || *(a1 + 112) <= *(a1 + 104))
  {
    goto LABEL_7;
  }

  v3 = gt_filepath_merge(*a1, "store0", *(a1 + 8));
  v4 = open(v3, 513, 438);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    ftruncate(v4, *(a1 + 104));
    close(v5);
LABEL_7:
    pthread_mutex_destroy((a1 + 16));
    return 0;
  }

  return 20014;
}

uint64_t GTCaptureArchive_getFileWithFilename(uint64_t a1, char *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 136);
  if (!v4 || (v5 = *find_entry(v4, a2, 0xFFFFFFFFFFFFFFFFLL, 0)) == 0 || (v6 = *(v5 + 32)) == 0)
  {
    v7 = strlen(a2);
    v8 = *find_entry(*(a1 + 88), a2, v7, 0);
    if (v8 && (v9 = *(v8 + 32)) != 0)
    {
      v6 = *(*(a1 + 80) + 24) + 32 * *v9;
    }

    else
    {
      v6 = 0;
    }
  }

  pthread_mutex_unlock((a1 + 16));
  return v6;
}

unint64_t GTCaptureArchive_fileBackingStore(uint64_t a1, uint64_t a2, int *a3)
{
  if ((*(a2 + 24) & 2) != 0)
  {
    if (a3)
    {
      v6 = *a3;
      v7 = 502;
      v4 = "!(entry->flags & DY_CAPTURE_FILE_FLAG_SEPARATE_FILE)";
      goto LABEL_7;
    }

    return 0;
  }

  v3 = *(a2 + 16);
  if (v3 > *(a1 + 104))
  {
    if (a3)
    {
      v6 = *a3;
      v7 = 502;
      v4 = "entry->storage_offset <= archive->backingStore.length";
LABEL_7:
      v8 = 0;
      v9 = v4;
      v10 = 0;
      GTError_addError(a3, &v6);
      return 0;
    }

    return 0;
  }

  return *(a1 + 96) + v3;
}

void *GTCaptureArchive_mapDataSeparateFile(uint64_t a1, uint64_t a2, apr_pool_t *a3, int *a4)
{
  if (*(a2 + 16) > *(a1 + 104))
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "entry->storage_offset <= self->backingStore.length";
LABEL_14:
      v18 = v6;
      v19 = v7;
      v20 = 0;
      GTError_addError(a4, &v16);
      return 0;
    }

    return 0;
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "entry->flags & DY_CAPTURE_FILE_FLAG_SEPARATE_FILE";
      goto LABEL_14;
    }

    return 0;
  }

  v9 = gt_filepath_merge(*a1, *a2, a3);
  v10 = open(v9, 0);
  if (v10 <= 0)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "fd > 0";
      goto LABEL_14;
    }

    return 0;
  }

  v11 = v10;
  v12 = mmap(0, *(a2 + 8), 1, 2, v10, 0);
  close(v11);
  if (v12 == -1)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "bytes != MAP_FAILED";
      goto LABEL_14;
    }

    return 0;
  }

  v13 = *(a2 + 8);
  v14 = apr_palloc(a3, 0x10uLL);
  *v14 = v12;
  v14[1] = v13;
  apr_pool_cleanup_register(a3, v14, GTData_munmap, apr_pool_cleanup_null);
  return v12;
}

void GTCaptureArchive_fillBufferCompressedDeflate(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *a4, size_t a5, int *a6)
{
  if (a4)
  {
    if (a2)
    {
      if (*(a3 + 12) > 5u)
      {
        v11 = GTCaptureArchive_fileBackingStore(a1, a3, a6);
        if (!v11)
        {
          goto LABEL_16;
        }

        if (compression_decode_buffer(a4, a5, (v11 + 2), (*(a3 + 12) - 6), *(a2 + 8), COMPRESSION_ZLIB) == a5)
        {
          return;
        }

        if (!a6)
        {
          goto LABEL_16;
        }

        v13 = *a6;
        v14 = 502;
        v12 = "total_out == destSize";
        goto LABEL_15;
      }

      if (a6)
      {
        v13 = *a6;
        v14 = 502;
        v12 = "ZLIB_HEADER_SIZE + ZLIB_ADLER_SIZE <= entry->storage_size";
        goto LABEL_15;
      }
    }

    else if (a6)
    {
      v13 = *a6;
      v14 = 502;
      v12 = "decompressor != NULL";
LABEL_15:
      v15 = 0;
      v16 = v12;
      v17 = 0;
      GTError_addError(a6, &v13);
    }

LABEL_16:

    bzero(a4, a5);
    return;
  }

  if (a6)
  {
    v13 = *a6;
    v14 = 502;
    v15 = 0;
    v16 = "dest != NULL";
    v17 = 0;
    GTError_addError(a6, &v13);
  }
}

void *GTCaptureArchiveDecompressor_create(apr_pool_t *a1)
{
  v2 = apr_palloc(a1, 0x10uLL);
  v4 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  apr_pool_create_ex(v2, a1, 0, v3);
  v5 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
  v4[1] = apr_palloc(a1, v5);
  return v4;
}

void GTCaptureArchive_fillBuffer(const char **a1, apr_pool_t **a2, char *a3, char *a4, size_t a5, int *a6)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (*(FileWithFilename + 8) >= a5)
  {
    if ((*(FileWithFilename + 24) & 2) != 0)
    {
      v12 = *FileWithFilename;
      v13 = *a2;
      v14 = *a1;

      GTCaptureArchive_fillBufferSeparateFile(v14, v12, a4, a5, v13, a6);
    }

    else
    {

      GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, FileWithFilename, a4, a5, a6);
    }
  }

  else
  {
    if (a6)
    {
      v15[0] = *a6;
      v15[1] = 502;
      v16 = 0;
      v17 = "destSize <= entry->size";
      v18 = 0;
      GTError_addError(a6, v15);
    }

    bzero(a4, a5);
  }
}

void GTCaptureArchive_fillBufferSeparateFile(const char *a1, const char *a2, char *a3, size_t a4, apr_pool_t *a5, int *a6)
{
  v10 = gt_filepath_merge(a1, a2, a5);
  v11 = open(v10, 0, 0);
  if (v11 < 0)
  {
LABEL_12:
    if (a6)
    {
      v16[0] = *a6;
      v16[1] = 502;
      v17 = a2;
      v18 = "mapped";
      v19 = 0;
      GTError_addError(a6, v16);
    }

    bzero(a3, a4);
  }

  else
  {
    v12 = v11;
    v13 = 0;
    do
    {
      if (a4 - v13 >= 0x100000)
      {
        v14 = 0x100000;
      }

      else
      {
        v14 = a4 - v13;
      }

      v15 = read(v12, &a3[v13], v14);
      if ((v15 + 1) < 2)
      {
        close(v12);
        goto LABEL_12;
      }

      v13 += v15;
    }

    while (v13 != a4);

    close(v12);
  }
}

char *GTCaptureArchive_readData(const char **a1, apr_pool_t **a2, char *a3, apr_pool_t *a4, int *a5)
{
  if (!a3)
  {
    return 0;
  }

  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (!FileWithFilename)
  {
    return 0;
  }

  v11 = FileWithFilename;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (a5)
  {
    v12 = *a5 & 0xFFFFFFFD;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v18) = v12;
  v13 = *(FileWithFilename + 24);
  v14 = *(FileWithFilename + 8);
  v15 = apr_palloc(a4, v14);
  if ((v13 & 2) != 0)
  {
    GTCaptureArchive_fillBufferSeparateFile(*a1, a3, v15, v14, *a2, &v18);
  }

  else
  {
    GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, v11, v15, v14, &v18);
  }

  if (DWORD1(v18) == 502)
  {
    if (!*(&v18 + 1))
    {
      *(&v18 + 1) = a3;
    }

    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    GTError_addError(a5, v17);
    return 0;
  }

  return v15;
}

uint8_t *GTCaptureArchive_mapData(uint64_t a1, uint64_t a2, char *a3, apr_pool_t *a4, int *a5)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (!FileWithFilename)
  {
    return 0;
  }

  v11 = FileWithFilename;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if ((*(FileWithFilename + 24) & 2) != 0)
  {
    v13 = GTCaptureArchive_mapDataSeparateFile(a1, FileWithFilename, a4, &v16);
  }

  else
  {
    v12 = *(FileWithFilename + 8);
    v13 = apr_palloc(a4, v12);
    GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, v11, v13, v12, &v16);
  }

  if (DWORD1(v16) == 502)
  {
    if (!*(&v16 + 1))
    {
      *(&v16 + 1) = a3;
    }

    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    GTError_addError(a5, v15);
    return 0;
  }

  return v13;
}

uint64_t GTCaptureArchive_filenamesWithPrefix(int a1, const char **a2, char *__s, apr_array_header_t *a4)
{
  result = strlen(__s);
  v9 = result;
  v10 = &a2[a1];
  if (a1 >= 1)
  {
    v11 = a1;
    do
    {
      v12 = &a2[v11 >> 1];
      v14 = *v12;
      v13 = v12 + 1;
      result = strncmp(v14, __s, v9);
      if (result >= 0)
      {
        v11 >>= 1;
      }

      else
      {
        v11 += ~(v11 >> 1);
      }

      if (result < 0)
      {
        a2 = v13;
      }
    }

    while (v11 > 0);
  }

  while (a2 != v10)
  {
    v15 = *a2;
    result = strncmp(*a2, __s, v9);
    if (result)
    {
      break;
    }

    result = apr_array_push(a4);
    *result = v15;
    ++a2;
  }

  return result;
}

__n128 DYTraceDecode_CALayer_setAnchorPoint(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if ((*(a2 + 36) | 4) != 0x74)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BC90;
      v12 = "*(const char*)bytes == 'p' || *(const char*)bytes == 't'";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    if (*(a2 + 37) != 6566464)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BC90;
      v12 = "(memcmp((const char*)bytes + offset + 1, (p@2d) + 1, sizeof(p@2d) - 1) == 0)";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BC90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_CALayer_setTransform(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if ((*(a2 + 36) | 4) != 0x74)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BCA0;
      v18 = "*(const char*)bytes == 'p' || *(const char*)bytes == 't'";
      v19 = 0;
      GTError_addError(a4, &v15);
    }

    if (*(a2 + 37) != 1681273152 || *(a2 + 40) != 6579300)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BCA0;
      v18 = "(memcmp((const char*)bytes + offset + 1, (p@16ddd) + 1, sizeof(p@16ddd) - 1) == 0)";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }

  *a1 = *(a2 + 44);
  v9 = *(a2 + 52);
  v10 = *(a2 + 68);
  v11 = *(a2 + 84);
  *(a1 + 56) = *(a2 + 100);
  *(a1 + 40) = v11;
  *(a1 + 24) = v10;
  *(a1 + 8) = v9;
  v12 = *(a2 + 116);
  v13 = *(a2 + 132);
  v14 = *(a2 + 148);
  *(a1 + 120) = *(a2 + 164);
  *(a1 + 104) = v14;
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 136) = *(a2 + 180);
  *(a1 + 144) = *(a2 + 188);
  if (a4)
  {
    if (a3 <= 0x9F)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BCA0;
      v18 = "offset <= length";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }
}

void DYTraceDecode_CAMetalLayer_setBounds_contentsScale_windowBounds_windowProperties(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strcmp((a2 + 36), "C@4dd@4dulil");
  if (v8)
  {
    if (a4)
    {
      if (*v7 != 0x6434406464344043 || *(v7 + 8) != 7105653)
      {
        v16 = *a4;
        v17 = 501;
        v18 = xmmword_24DA8BCB0;
        v19 = "memcmp((const char*)bytes + offset, (C@4dd@4dull), sizeof(C@4dd@4dull)) == 0";
        v20 = 0;
        GTError_addError(a4, &v16);
      }
    }

    v10 = 12;
  }

  else
  {
    if (a4)
    {
      if (*v7 != 0x6434406464344043 || *(v7 + 5) != 0x6C696C75643440)
      {
        v16 = *a4;
        v17 = 501;
        v18 = xmmword_24DA8BCB0;
        v19 = "memcmp((const char*)bytes + offset, (C@4dd@4dulil), sizeof(C@4dd@4dulil)) == 0";
        v20 = 0;
        GTError_addError(a4, &v16);
      }
    }

    v10 = 16;
  }

  v12 = v7 + v10;
  *a1 = *(v7 + v10);
  v13 = *(v7 + v10 + 8);
  *(a1 + 24) = *(v7 + v10 + 24);
  *(a1 + 8) = v13;
  *(a1 + 40) = *(v7 + v10 + 40);
  v14 = *(v7 + v10 + 64);
  *(a1 + 48) = *(v7 + v10 + 48);
  *(a1 + 64) = v14;
  *(a1 + 80) = *(v7 + v10 + 80);
  if (v8)
  {
    v15 = v10 | 0x60;
    *(a1 + 96) = *(v12 + 88);
    if (!a4)
    {
      return;
    }
  }

  else
  {
    *(a1 + 96) = *(v12 + 88);
    *(a1 + 88) = *(v12 + 92);
    v15 = v10 + 100;
    if (!a4)
    {
      return;
    }
  }

  if (v15 > a3)
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA8BCB0;
    v19 = "offset <= length";
    v20 = 0;
    GTError_addError(a4, &v16);
  }
}

const char *AppendString_13794(const char **a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (*(a2 + *a3) == g_null_string_token_13795)
  {
    v5 = 0;
  }

  else
  {
    v5 = (a2 + *a3);
  }

  *a1 = v5;
  if (v5)
  {
    v6 = strlen(v5) + 1;
  }

  else
  {
    v6 = 8;
  }

  *a3 = v6 + v4;
  return v5;
}

void DYTraceDecode_InternalData(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = a2 + 36 + (strlen((a2 + 36)) & 0xFFFFFFFFFFFFFFFCLL);
  *a1 = *(v9 + 4);
  v10 = *(v9 + 12);
  *(a1 + 8) = v10;
  v31 = 0;
  switch(v10)
  {
    case 101:
      v21 = strcmp(v8, "CiulSlS");
      *(a1 + 40) = 0;
      if (v21)
      {
        if (!a4)
        {
          goto LABEL_94;
        }

        if (*v8 == 1819633987 && *(v8 + 3) == 7099244)
        {
          goto LABEL_94;
        }

        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v23 = "memcmp((const char*)bytes + offset, (CiulSl), sizeof(CiulSl)) == 0";
      }

      else
      {
        if (!a4 || *v8 == 0x536C536C756943)
        {
          goto LABEL_94;
        }

        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v23 = "memcmp((const char*)bytes + offset, (CiulSlS), sizeof(CiulSlS)) == 0";
      }

      v29 = v23;
      v30 = 0;
      GTError_addError(a4, &v26);
LABEL_94:
      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      v31 = 28;
      *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v31);
      v25 = (v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      *(a1 + 24) = *(v8 + v25);
      v24 = v25 + 8;
      v31 = v24;
      if (v21)
      {
        goto LABEL_79;
      }

      *(a1 + 40) = AppendString_13794((a1 + 40), v8, &v31);
      goto LABEL_78;
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 112:
    case 113:
    case 114:
    case 115:
    case 121:
    case 122:
    case 123:
    case 124:
    case 130:
    case 131:
    case 133:
    case 134:
    case 136:
      goto LABEL_25;
    case 107:
    case 137:
      if (a4)
      {
        if (*v8 != 1819633987 || *(v8 + 3) != 7107948)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (Ciulul), sizeof(Ciulul)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      *(a1 + 24) = *(a2 + 64);
      v13 = 36;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 108:
      if (a4 && *v8 ^ 0x53746943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CitS), sizeof(CitS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      v17 = 28;
      goto LABEL_76;
    case 109:
    case 120:
      if (a4 && *v8 ^ 0x626C756C75536943 | *(v8 + 8))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiSululb), sizeof(CiSululb)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 48);
      *(a1 + 8) = *(a2 + 56);
      v31 = 24;
      *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v31);
      v14 = v31;
      v15 = v8 + ((v31 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      *(a1 + 16) = *v15;
      *(a1 + 24) = *(v15 + 1);
      *(a1 + 40) = v15[16];
      v16 = v14 + 23;
      goto LABEL_80;
    case 110:
      if (a4)
      {
        if (*v8 != 1819633987 || v8[2] != 105)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (Ciuli), sizeof(Ciuli)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      *(a1 + 24) = *(a2 + 64);
      v13 = 32;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 111:
      if (!a4 || *v8 == 5597507)
      {
        goto LABEL_6;
      }

      v26 = *a4;
      v27 = 501;
      v28 = xmmword_24DA8BCC0;
      v11 = "memcmp((const char*)bytes + offset, (CiU), sizeof(CiU)) == 0";
      goto LABEL_5;
    case 116:
      if (a4)
      {
        if (*v8 != 1968531779 || v8[2] != 108)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (CiUul), sizeof(CiUul)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      v31 = 20;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      v19 = (v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      *(a1 + 24) = *(v8 + v19);
      v13 = v19 + 8;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 117:
    case 127:
    case 128:
    case 129:
    case 132:
      if (!a4 || *v8 == 5466435)
      {
        goto LABEL_6;
      }

      v26 = *a4;
      v27 = 501;
      v28 = xmmword_24DA8BCC0;
      v11 = "memcmp((const char*)bytes + offset, (CiS), sizeof(CiS)) == 0";
LABEL_5:
      v29 = v11;
      v30 = 0;
      GTError_addError(a4, &v26);
LABEL_6:
      *a1 = *(a2 + 40);
      *(a1 + 8) = *(a2 + 48);
      v31 = 16;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      goto LABEL_78;
    case 118:
      if (a4 && *v8 ^ 0x6C756943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (Ciul), sizeof(Ciul)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      goto LABEL_88;
    case 119:
      if (a4 && *v8 != 0x53535369756943)
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiuiSSS), sizeof(CiuiSSS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 40) = *(a2 + 56);
      v31 = 24;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v31);
      *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v31);
      goto LABEL_78;
    case 125:
      if (a4 && *v8 ^ 0x6C756943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (Ciul), sizeof(Ciul)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 24) = *(a2 + 56);
LABEL_88:
      v13 = 28;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 126:
      if (a4 && *v8 ^ 0x53536943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiSS), sizeof(CiSS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      v31 = 20;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      goto LABEL_77;
    case 135:
      if (a4 && *v8 ^ 0x53536943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiSS), sizeof(CiSS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      v31 = 20;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      v17 = (v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_76:
      v31 = v17;
LABEL_77:
      *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v31);
LABEL_78:
      v24 = v31;
LABEL_79:
      v16 = v24 + 3;
LABEL_80:
      v13 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      if (a4)
      {
        goto LABEL_81;
      }

      return;
    default:
      if (v10 != 7)
      {
LABEL_25:
        if (a4 && *v8 ^ 0x6943 | *(v8 + 2))
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }

        *a1 = *(a2 + 40);
        *(a1 + 8) = *(a2 + 48);
        v13 = 16;
        if (!a4)
        {
          return;
        }

LABEL_81:
        if (v13 > a3)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "offset <= length";
          v30 = 0;
          GTError_addError(a4, &v26);
        }

        return;
      }

      if (a4 && *v8 ^ 0x69756943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (Ciui), sizeof(Ciui)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      v13 = 24;
      if (a4)
      {
        goto LABEL_81;
      }

      return;
  }
}

void DYTraceDecode_MTLAccelerationStructure_allocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (strcmp((a2 + 36), "Cui"))
  {
    if (a4 && *(a2 + 36) != 7107907)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCD0;
      v12 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    v8 = 20;
    if (!a4)
    {
      return;
    }

LABEL_11:
    if (v8 > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    return;
  }

  if (a4 && *(a2 + 36) != 6911299)
  {
    v9 = *a4;
    v10 = 501;
    v11 = xmmword_24DA8BCD0;
    v12 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
    v13 = 0;
    GTError_addError(a4, &v9);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  v8 = 16;
  if (a4)
  {
    goto LABEL_11;
  }
}

void DYTraceDecode_MTLBuffer_allocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (strcmp((a2 + 36), "Cui"))
  {
    if (a4 && *(a2 + 36) != 7107907)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCE0;
      v12 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    v8 = 20;
    if (!a4)
    {
      return;
    }

LABEL_11:
    if (v8 > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCE0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    return;
  }

  if (a4 && *(a2 + 36) != 6911299)
  {
    v9 = *a4;
    v10 = 501;
    v11 = xmmword_24DA8BCE0;
    v12 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
    v13 = 0;
    GTError_addError(a4, &v9);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  v8 = 16;
  if (a4)
  {
    goto LABEL_11;
  }
}

void DYTraceDecode_MTLBuffer_newTextureWithDescriptor_offset_bytesPerRow(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  if (!strcmp((a2 + 36), "CUululul"))
  {
    if (a4 && *v7 ^ 0x6C756C756C755543 | *(v7 + 8))
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA8BCF0;
      v17 = "memcmp((const char*)bytes + offset, (CUululul), sizeof(CUululul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    v9 = 12;
    v10 = 24;
  }

  else
  {
    if (a4)
    {
      if (*v7 != 1819628867 || *(v7 + 3) != 7107948)
      {
        v14 = *a4;
        v15 = 501;
        v16 = xmmword_24DA8BCF0;
        v17 = "memcmp((const char*)bytes + offset, (CUulul), sizeof(CUulul)) == 0";
        v18 = 0;
        GTError_addError(a4, &v14);
      }
    }

    v9 = 8;
    v10 = 16;
  }

  *a1 = *(v7 + v9);
  v19 = v9 + 8;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v19);
  v11 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v7 + v11);
  *(a1 + 32) = *(v7 + v11 + 8);
  v12 = v11 + v10;
  if (a4 && *(v7 + v12) != 116)
  {
    v14 = *a4;
    v15 = 501;
    v16 = xmmword_24DA8BCF0;
    v17 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v18 = 0;
    GTError_addError(a4, &v14);
  }

  v13 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v7 + v13);
  if (a4)
  {
    if (v13 + 8 > a3)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA8BCF0;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }
}

void DYTraceDecode_MTLBuffer_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD00;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLCommandQueue_continueCommandBuffer_retainReferences(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911043)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD10;
      v11 = "memcmp((const char*)bytes + offset, (Cti), sizeof(Cti)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    if (*(a2 + 60) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD10;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 64);
    if (a3 <= 0x23)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    *(a1 + 8) = *(a2 + 64);
  }
}

void DYTraceDecode_MTLIOCommandQueue_continueCommandBuffer_retainReferences(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911043)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD20;
      v11 = "memcmp((const char*)bytes + offset, (Cti), sizeof(Cti)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    if (*(a2 + 60) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD20;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 64);
    if (a3 <= 0x23)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    *(a1 + 8) = *(a2 + 64);
  }
}

void DYTraceDecode_MTLComputePipelineState_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BD30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLComputePipelineState_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BD40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLDevice_newArgumentEncoderWithArguments(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD50;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD50;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLDevice_newBufferWithLength_options(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  v9 = strcmp((a2 + 36), "Culult");
  a1[4] = 0;
  v10 = a1 + 4;
  if (v9)
  {
    if (a4)
    {
      if (*v8 != 1970042179 || *(v8 + 4) != 108)
      {
        v15 = *a4;
        v16 = 501;
        v17 = xmmword_24DA8BD60;
        v18 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
        v19 = 0;
        GTError_addError(a4, &v15);
      }
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    v10 = a1 + 3;
    v12 = 32;
    v13 = 60;
  }

  else
  {
    if (a4)
    {
      if (*v8 != 1970042179 || *(v8 + 3) != 7629941)
      {
        v15 = *a4;
        v16 = 501;
        v17 = xmmword_24DA8BD60;
        v18 = "memcmp((const char*)bytes + offset, (Culult), sizeof(Culult)) == 0";
        v19 = 0;
        GTError_addError(a4, &v15);
      }
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    v12 = 40;
    v13 = 68;
  }

  *v10 = *(a2 + v13);
  if (a4)
  {
    if (*(v8 + v12) != 116)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BD60;
      v18 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v19 = 0;
      GTError_addError(a4, &v15);
    }

    a1[1] = *(v8 + v12 + 4);
    if (v12 + 12 > a3)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BD60;
      v18 = "offset <= length";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }

  else
  {
    a1[1] = *(v8 + v12 + 4);
  }
}

void DYTraceDecode_MTLDevice_newBufferWithBytes_length_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  v9 = strcmp((a2 + 36), "CU<b>ulult");
  *(a1 + 40) = 0;
  if (v9)
  {
    if (a4)
    {
      if (*v8 != 0x756C753E623C5543 || *(v8 + 8) != 108)
      {
        v16 = *a4;
        v17 = 501;
        v18 = xmmword_24DA8BD70;
        v11 = "memcmp((const char*)bytes + offset, (CU<b>ulul), sizeof(CU<b>ulul)) == 0";
LABEL_14:
        v19 = v11;
        v20 = 0;
        GTError_addError(a4, &v16);
      }
    }
  }

  else if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(v8 + 3) != 0x746C756C753E62)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA8BD70;
      v11 = "memcmp((const char*)bytes + offset, (CU<b>ulult), sizeof(CU<b>ulult)) == 0";
      goto LABEL_14;
    }
  }

  *a1 = *(a2 + 48);
  v21 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v21);
  v13 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v13);
  *(a1 + 32) = *(v8 + v13 + 8);
  v14 = v13 + 16;
  if (!v9)
  {
    *(a1 + 40) = *(v8 + v14);
    v14 = v13 + 24;
  }

  if (a4 && *(v8 + v14) != 116)
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA8BD70;
    v19 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v20 = 0;
    GTError_addError(a4, &v16);
  }

  v15 = (v14 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v15);
  if (a4)
  {
    if (v15 + 8 > a3)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA8BD70;
      v19 = "offset <= length";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7631980)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BD80;
      v15 = "memcmp((const char*)bytes + offset, (CUultt), sizeof(CUultt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BD80;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BD80;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_options_reflection_error(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  a1[4] = 0;
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7631980)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BD90;
      v12 = "memcmp((const char*)bytes + offset, (Ctultt), sizeof(Ctultt)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[2] = *(a2 + 52);
  a1[3] = *(a2 + 60);
  a1[5] = *(a2 + 76);
  if (a4)
  {
    if (*(a2 + 84) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BD90;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 88);
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BD90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    a1[1] = *(a2 + 88);
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  if (!strcmp((a2 + 36), "CUUt"))
  {
    if (a4 && *v7 ^ 0x74555543 | *(v7 + 4))
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDA0;
      v15 = "memcmp((const char*)bytes + offset, (CUUt), sizeof(CUUt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }

    v9 = 8;
  }

  else
  {
    if (a4)
    {
      if (*v7 != 0x623C553E623C5543 || *(v7 + 3) != 0x743E623C553E62)
      {
        v12 = *a4;
        v13 = 501;
        v14 = xmmword_24DA8BDA0;
        v15 = "memcmp((const char*)bytes + offset, (CU<b>U<b>t), sizeof(CU<b>U<b>t)) == 0";
        v16 = 0;
        GTError_addError(a4, &v12);
      }
    }

    v9 = 12;
  }

  *a1 = *(v7 + v9);
  v17 = v9 + 8;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v7, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v7 + v10);
  if (a4 && *(v7 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BDA0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v7 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDA0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 108)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDB0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>ulul), sizeof(CU<b>ulul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BDB0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDB0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "C@%llutU<b>t", a1 + 24);
  v8 = strlen(v7);
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *(a1 + 16) = &v7[v9];
  v17 = v9 + 8 * *(a1 + 24);
  *(a1 + 32) = AppendString_13794((a1 + 32), v7, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *&v7[v10];
  if (a4 && *&v7[v10 + 8] != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BDC0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v11];
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDC0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithFile_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BDD0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BDD0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BDD0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithSource_options_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = strcmp((a2 + 36), "CU<b>tt");
  *(a1 + 24) = 0;
  if (v9)
  {
    if (!a4 || *v8 == 0x74553E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDE0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>Ut), sizeof(CU<b>Ut)) == 0";
  }

  else
  {
    if (!a4 || *v8 == 0x74743E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDE0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>tt), sizeof(CU<b>tt)) == 0";
  }

  v16 = v10;
  v17 = 0;
  GTError_addError(a4, &v13);
LABEL_9:
  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  if (v9)
  {
    *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v18);
    v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v11 = ((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 8;
  }

  *(a1 + 32) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDE0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BDE0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithSource_options_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = strcmp((a2 + 36), "CU<b>tt");
  *(a1 + 24) = 0;
  if (v9)
  {
    if (!a4 || *v8 == 0x74553E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDF0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>Ut), sizeof(CU<b>Ut)) == 0";
  }

  else
  {
    if (!a4 || *v8 == 0x74743E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDF0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>tt), sizeof(CU<b>tt)) == 0";
  }

  v16 = v10;
  v17 = 0;
  GTError_addError(a4, &v13);
LABEL_9:
  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  if (v9)
  {
    *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v18);
    v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v11 = ((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 8;
  }

  *(a1 + 32) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDF0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BDF0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_newPipelineLibraryWithFilePath_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE00;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE00;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BE00;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7631980)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE10;
      v15 = "memcmp((const char*)bytes + offset, (CUultt), sizeof(CUultt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BE10;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE10;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7631980)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE20;
      v15 = "memcmp((const char*)bytes + offset, (CUultt), sizeof(CUultt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BE20;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE20;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newTextureWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = strcmp((a2 + 36), "CUt");
  *(a1 + 24) = 0;
  if (v9)
  {
    if (a4 && *v8 ^ 0x5543 | *(v8 + 2))
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BE30;
      v10 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
LABEL_8:
      v16 = v10;
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  else if (a4 && *v8 != 7624003)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BE30;
    v10 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    goto LABEL_8;
  }

  *a1 = *(a2 + 40);
  v18 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (!v9)
  {
    *(a1 + 24) = *(v8 + v11);
    v11 += 8;
  }

  if (a4 && *(v8 + v11) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BE30;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BE30;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  a1[3] = 0;
  if (a4)
  {
    if (*(a2 + 36) ^ 0x746C7543 | *(a2 + 40))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE40;
      v11 = "memcmp((const char*)bytes + offset, (Cult), sizeof(Cult)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 41);
    a1[2] = *(a2 + 49);
    if (*(a2 + 65) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE40;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 41);
    a1[2] = *(a2 + 49);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTLHeap_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE50;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_allocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BE60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE70;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setVertexAmplificationCount_viewMappings(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = strcmp((a2 + 36), "Cult");
  *(a1 + 16) = 0;
  if (v8)
  {
    if (a4 && *(a2 + 36) != 0x3E623C556C7543)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BE80;
      v13 = "memcmp((const char*)bytes + offset, (CulU<b>), sizeof(CulU<b>)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    v15 = 24;
    *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v15);
    v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a4)
    {
      return;
    }

LABEL_11:
    if (v9 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BE80;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    return;
  }

  if (a4 && *(a2 + 36) ^ 0x746C7543 | *(a2 + 40))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8BE80;
    v13 = "memcmp((const char*)bytes + offset, (Cult), sizeof(Cult)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  gt_error_assert_add_error(a4, *(a2 + 60) == 0, "viewMappings == 0");
  v9 = 32;
  if (a4)
  {
    goto LABEL_11;
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x74555343 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE90;
    v14 = "memcmp((const char*)bytes + offset, (CSUt), sizeof(CSUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE90;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BE90;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1953781059 || *(a2 + 40) != 116)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BEA0;
      v14 = "memcmp((const char*)bytes + offset, (CUttt), sizeof(CUttt)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 42);
  v16 = 14;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  *(a1 + 24) = *(v8 + v10 + 8);
  *(a1 + 32) = *(v8 + v10 + 16);
  if (a4)
  {
    if (v10 + 24 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BEA0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628355 || *(a2 + 39) != 7631980)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEB0;
      v16 = "memcmp((const char*)bytes + offset, (CSultt), sizeof(CSultt)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  v11 = (v10 + 19) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BEB0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEB0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628355 || *(a2 + 39) != 7631980)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEC0;
      v16 = "memcmp((const char*)bytes + offset, (CSultt), sizeof(CSultt)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  v11 = (v10 + 19) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BEC0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEC0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

__n128 DYTraceDecode_MTLRenderCommandEncoder_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6C344043 | *(a2 + 40))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BED0;
      v12 = "memcmp((const char*)bytes + offset, (C@4l), sizeof(C@4l)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
    if (a3 <= 0x2F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BED0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLRenderCommandEncoder_setScissorRects_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8BEE0;
    v13 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BEE0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setViewports_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8BEF0;
    v13 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BEF0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLRenderPipelineState_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BF00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLTexture_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  if (!strcmp((a2 + 36), "CU<b>ulul@6ulululul"))
  {
    if (a4)
    {
      v12 = *v8 == 0x756C753E623C5543 && *(v8 + 8) == 0x756C756C7536406CLL;
      if (!v12 || *(v8 + 16) != 7107948)
      {
        v17 = *a4;
        v18 = 501;
        v19 = xmmword_24DA8BF10;
        v20 = "memcmp((const char*)bytes + offset, (CU<b>ulul@6ulululul), sizeof(CU<b>ulul@6ulululul)) == 0";
        v21 = 0;
        GTError_addError(a4, &v17);
      }
    }

    v11 = 88;
  }

  else
  {
    if (a4)
    {
      v9 = *v8 == 0x756C753E623C5543 && *(v8 + 8) == 0x756C756C7536406CLL;
      if (!v9 || *(v8 + 16) != 108)
      {
        v17 = *a4;
        v18 = 501;
        v19 = xmmword_24DA8BF10;
        v20 = "memcmp((const char*)bytes + offset, (CU<b>ulul@6ululul), sizeof(CU<b>ulul@6ululul)) == 0";
        v21 = 0;
        GTError_addError(a4, &v17);
      }
    }

    v11 = 80;
  }

  *a1 = *(a2 + 56);
  v22 = 28;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v22);
  v14 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v14);
  *(a1 + 24) = *(v8 + v14 + 8);
  v15 = *(v8 + v14 + 16);
  v16 = *(v8 + v14 + 48);
  *(a1 + 48) = *(v8 + v14 + 32);
  *(a1 + 64) = v16;
  *(a1 + 32) = v15;
  *(a1 + 80) = *(v8 + v14 + 64);
  *(a1 + 88) = *(v8 + v14 + 72);
  if (a4)
  {
    if (v14 + v11 > a3)
    {
      v17 = *a4;
      v18 = 501;
      v19 = xmmword_24DA8BF10;
      v20 = "offset <= length";
      v21 = 0;
      GTError_addError(a4, &v17);
    }
  }
}

void DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  v9 = strcmp((a2 + 36), "C@6ulululU<b>ulul");
  if (v9)
  {
    if (a4)
    {
      v10 = *v8 == 0x756C756C75364043 && *(v8 + 8) == 0x756C753E623C556CLL;
      if (!v10 || *(v8 + 16) != 7107948)
      {
        v19 = *a4;
        v20 = 501;
        v21 = xmmword_24DA8BF20;
        v12 = "memcmp((const char*)bytes + offset, (C@6ulululU<b>ululul), sizeof(C@6ulululU<b>ululul)) == 0";
LABEL_20:
        v22 = v12;
        v23 = 0;
        GTError_addError(a4, &v19);
      }
    }
  }

  else if (a4)
  {
    v13 = *v8 == 0x756C756C75364043 && *(v8 + 8) == 0x756C753E623C556CLL;
    if (!v13 || *(v8 + 16) != 108)
    {
      v19 = *a4;
      v20 = 501;
      v21 = xmmword_24DA8BF20;
      v12 = "memcmp((const char*)bytes + offset, (C@6ulululU<b>ulul), sizeof(C@6ulululU<b>ulul)) == 0";
      goto LABEL_20;
    }
  }

  *a1 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  *(a1 + 40) = *(a2 + 96);
  *(a1 + 24) = v16;
  *(a1 + 8) = v15;
  *(a1 + 56) = *(a2 + 112);
  *(a1 + 64) = *(a2 + 120);
  v24 = 92;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v24);
  v17 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v17);
  *(a1 + 88) = *(v8 + v17 + 8);
  v18 = v17 + 16;
  if (v9)
  {
    *(a1 + 96) = *(v8 + v18);
    v18 = v17 + 24;
    if (!a4)
    {
      return;
    }
  }

  else
  {
    *(a1 + 96) = 0;
    if (!a4)
    {
      return;
    }
  }

  if (v18 > a3)
  {
    v19 = *a4;
    v20 = 501;
    v21 = xmmword_24DA8BF20;
    v22 = "offset <= length";
    v23 = 0;
    GTError_addError(a4, &v19);
  }
}

void DYTraceDecode_MTLTexture_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF30;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF40;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF40;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 5600323)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BF50;
    v14 = "memcmp((const char*)bytes + offset, (CtU), sizeof(CtU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  *(a1 + 16) = *(a2 + 48);
  v16 = 20;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BF50;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BF50;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLTextureViewPool_setTextureView_descriptor_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1968534595 || *(a2 + 39) != 7629941)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF60;
      v15 = "memcmp((const char*)bytes + offset, (CtUult), sizeof(CtUult)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  v17 = 24;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) ^ 0x7775 | *(v8 + v10 + 18))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BF60;
    v15 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 22) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF60;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C756C75557443 || *(a2 + 39) != 0x746C756C756C75)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF70;
      v15 = "memcmp((const char*)bytes + offset, (CtUululult), sizeof(CtUululult)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = a2[6];
  *(a1 + 16) = a2[7];
  v17 = 28;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 8);
  *(a1 + 48) = *(v8 + v10 + 16);
  *(a1 + 56) = *(v8 + v10 + 24);
  if (a4 && *(v8 + v10 + 32) ^ 0x7775 | *(v8 + v10 + 34))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BF70;
    v15 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 38) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF70;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLTextureViewPool_copyResourceViewsFromPool_sourceRange_destinationIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "Ct@2ulul@%llut", a1 + 56);
  v8 = strlen(v7);
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFFCLL];
  *a1 = *(v9 + 4);
  *(a1 + 16) = *(v9 + 12);
  *(a1 + 24) = *(v9 + 20);
  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 44;
  *(a1 + 40) = *(v9 + 36);
  *(a1 + 48) = &v7[v10];
  v11 = v10 + 8 * *(a1 + 56);
  if (a4 && *&v7[v11] ^ 0x7775 | v7[v11 + 2])
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BF80;
    v16 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v12];
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BF80;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_Boundary_Frame(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x74747474747443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8BF90;
    v11 = "memcmp((const char*)bytes + offset, (Ctttttt), sizeof(Ctttttt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  a1[4] = *(a2 + 76);
  a1[5] = *(a2 + 84);
  a1[6] = *(a2 + 92);
  if (a4)
  {
    if (a3 <= 0x3F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_CAMetalDrawable_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFA0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_CAMetalDrawable_present(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFB0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_CAMetalDrawable_presentAfterMinimumDuration(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFC0;
      v11 = "memcmp((const char*)bytes + offset, (Cd), sizeof(Cd)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalDrawable_presentAtTime(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFD0;
      v11 = "memcmp((const char*)bytes + offset, (Cd), sizeof(Cd)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalDrawable_texture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFE0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFE0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_CAMetalLayer_nextDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFF0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFF0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_CAMetalLayer_setBounds_contentsScale(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1681145923 || *(a2 + 40) != 100)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C000;
      v13 = "memcmp((const char*)bytes + offset, (C@4dd), sizeof(C@4dd)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 44);
  v9 = *(a2 + 52);
  *(a1 + 24) = *(a2 + 68);
  *(a1 + 8) = v9;
  *(a1 + 40) = *(a2 + 84);
  if (a4)
  {
    if (a3 <= 0x37)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C000;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_CAMetalLayer_setColorspace(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C010;
    v11 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C010;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_CAMetalLayer_setDevice(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 5600323)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C020;
    v11 = "memcmp((const char*)bytes + offset, (CtU), sizeof(CtU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  v13 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C020;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

__n128 DYTraceDecode_CAMetalLayer_setDrawableSize(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x64324043 | *(a2 + 40))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C030;
      v12 = "memcmp((const char*)bytes + offset, (C@2d), sizeof(C@2d)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C030;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_CAMetalLayer_setFramebufferOnly(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C040;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C040;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalLayer_setPixelFormat(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C050;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C050;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalLayer_setWantsExtendedDynamicRangeContent(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C060;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C060;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ArgumentTable_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C070;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C070;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4ArgumentTable_setAddress_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C080;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C080;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setAddress_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C75777543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C090;
    v11 = "memcmp((const char*)bytes + offset, (Cuwulul), sizeof(Cuwulul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C090;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setResource_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0A0;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0A0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0B0;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0B0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0C0;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4CommandAllocator_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0D0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandAllocator_reset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C0F0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_computeCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C100;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C100;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C100;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTL4CommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C110;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C110;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_endCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C120;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C120;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_machineLearningCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C130;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C130;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C130;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTL4CommandBuffer_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C140;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C140;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C150;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C150;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C160;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C160;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C160;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C170;
    v14 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C170;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C170;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_useResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C180;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C180;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandBuffer_useResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C190;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_addResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C1A0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C1A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_addResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C1B0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_commit_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C1C0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_commit_count_options(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutult", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  a1[3] = *&v7[v10 + 8];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C1D0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_copyBufferMappingsFromBuffer_toBuffer_operations_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x753E623C55747443 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1E0;
      v14 = "memcmp((const char*)bytes + offset, (CttU<b>ul), sizeof(CttU<b>ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  v16 = 36;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_copyTextureMappingsFromTexture_toTexture_operations_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x753E623C55747443 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1F0;
      v14 = "memcmp((const char*)bytes + offset, (CttU<b>ul), sizeof(CttU<b>ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  v16 = 36;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C200;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C200;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandQueue_removeResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C210;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C210;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_removeResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C220;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_signalDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C230;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C230;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_signalEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C240;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C240;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_waitForDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C250;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C250;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_waitForEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C260;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C260;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C270;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C270;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C270;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C280;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C280;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C280;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C290;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C290;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C290;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C2A0;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C2A0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C2A0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newDynamicLibrary_completionHandler(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7631939)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2B0;
      v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2B0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTL4Compiler_newDynamicLibrary_error(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7631939)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2C0;
      v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2C0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2D0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>t), sizeof(CU<b>t)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8C2D0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2D0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2E0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>t), sizeof(CU<b>t)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8C2E0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2E0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C2F0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C2F0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C2F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C300;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C300;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C300;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C310;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C310;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C310;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C320;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C320;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C320;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C330;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C330;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C330;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C340;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C340;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C340;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C350;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C350;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C350;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C360;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C360;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C360;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setAccelerationStructureDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 5600323)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C370;
    v11 = "memcmp((const char*)bytes + offset, (CtU), sizeof(CtU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  v13 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C370;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setAccelerationStructureState(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6975697569757443 || *(a2 + 39) != 0x69756975697569)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C380;
      v12 = "memcmp((const char*)bytes + offset, (Ctuiuiuiui), sizeof(Ctuiuiuiui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 20) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 28) = *(a2 + 76);
  if (a4)
  {
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C380;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C390;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C390;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3A0;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C3A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3B0;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C3B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3C0;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C3C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753240557443)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8C3D0;
    v13 = "memcmp((const char*)bytes + offset, (CtU@2ul), sizeof(CtU@2ul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v15 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 16 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C3D0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3E0;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C3E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3F0;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C3F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x6C756C756C757443 && *(a2 + 44) == 0x756C75746C753340;
    if (!v8 || *(a2 + 50) != 0x6C7533406C756CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C400;
      v15 = "memcmp((const char*)bytes + offset, (Ctululul@3ultulul@3ul), sizeof(Ctululul@3ultulul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 92);
  v10 = *(a2 + 100);
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 40) = v10;
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 140);
  v11 = *(a2 + 148);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 88) = v11;
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C400;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x6C756C756C757443 && *(a2 + 44) == 0x756C75746C753340;
    if (!v8 || *(a2 + 52) != 0x6C756C7533406CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C410;
      v15 = "memcmp((const char*)bytes + offset, (Ctululul@3ultulul@3ulul), sizeof(Ctululul@3ultulul@3ulul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 92);
  v10 = *(a2 + 100);
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 40) = v10;
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 140);
  v11 = *(a2 + 148);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 88) = v11;
  *(a1 + 112) = *(a2 + 172);
  if (a4)
  {
    if (a3 <= 0x8F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C410;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C75746C757443 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C420;
      v12 = "memcmp((const char*)bytes + offset, (Ctultulul), sizeof(Ctultulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C420;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x406C753731407443 && *(a2 + 44) == 0x373140746C753731;
    if (!v8 || *(a2 + 52) != 0x6C753731406C75)
    {
      v34 = *a4;
      v35 = 501;
      v36 = xmmword_24DA8C430;
      v37 = "memcmp((const char*)bytes + offset, (Ct@17ul@17ult@17ul@17ul), sizeof(Ct@17ul@17ult@17ul@17ul)) == 0";
      v38 = 0;
      GTError_addError(a4, &v34);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  v10 = *(a2 + 92);
  v11 = *(a2 + 108);
  v12 = *(a2 + 140);
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 80) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  v13 = *(a2 + 156);
  v14 = *(a2 + 172);
  v15 = *(a2 + 188);
  *(a1 + 144) = *(a2 + 204);
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  *(a1 + 96) = v13;
  *(a1 + 152) = *(a2 + 212);
  v16 = *(a2 + 228);
  v17 = *(a2 + 244);
  v18 = *(a2 + 260);
  *(a1 + 216) = *(a2 + 276);
  *(a1 + 200) = v18;
  *(a1 + 184) = v17;
  *(a1 + 168) = v16;
  v19 = *(a2 + 292);
  v20 = *(a2 + 308);
  v21 = *(a2 + 324);
  *(a1 + 280) = *(a2 + 340);
  *(a1 + 264) = v21;
  *(a1 + 248) = v20;
  *(a1 + 232) = v19;
  *(a1 + 288) = *(a2 + 348);
  *(a1 + 296) = *(a2 + 356);
  v22 = *(a2 + 372);
  v23 = *(a2 + 388);
  v24 = *(a2 + 420);
  *(a1 + 344) = *(a2 + 404);
  *(a1 + 360) = v24;
  *(a1 + 312) = v22;
  *(a1 + 328) = v23;
  v25 = *(a2 + 436);
  v26 = *(a2 + 452);
  v27 = *(a2 + 468);
  *(a1 + 424) = *(a2 + 484);
  *(a1 + 392) = v26;
  *(a1 + 408) = v27;
  *(a1 + 376) = v25;
  *(a1 + 432) = *(a2 + 492);
  v28 = *(a2 + 508);
  v29 = *(a2 + 524);
  v30 = *(a2 + 556);
  *(a1 + 480) = *(a2 + 540);
  *(a1 + 496) = v30;
  *(a1 + 448) = v28;
  *(a1 + 464) = v29;
  v31 = *(a2 + 572);
  v32 = *(a2 + 588);
  v33 = *(a2 + 604);
  *(a1 + 560) = *(a2 + 620);
  *(a1 + 528) = v32;
  *(a1 + 544) = v33;
  *(a1 + 512) = v31;
  if (a4)
  {
    if (a3 <= 0x24F)
    {
      v34 = *a4;
      v35 = 501;
      v36 = xmmword_24DA8C430;
      v37 = "offset <= length";
      v38 = 0;
      GTError_addError(a4, &v34);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 50) != 0x6C756C756C7574)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C440;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultululul), sizeof(Ctulul@3ul@3ultululul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  v10 = *(a2 + 92);
  *(a1 + 48) = *(a2 + 108);
  *(a1 + 32) = v10;
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 104) = *(a2 + 164);
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C440;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 52) != 0x6C756C756C756CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C450;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultulululul), sizeof(Ctulul@3ul@3ultulululul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  v10 = *(a2 + 92);
  *(a1 + 48) = *(a2 + 108);
  *(a1 + 32) = v10;
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 112) = *(a2 + 172);
  if (a4)
  {
    if (a3 <= 0x8F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C450;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 52) != 0x6C7533406C756CLL)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8C460;
      v16 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultulul@3ul), sizeof(Ctulul@3ul@3ultulul@3ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  v10 = *(a2 + 92);
  *(a1 + 48) = *(a2 + 108);
  *(a1 + 32) = v10;
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  v12 = *(a2 + 164);
  *(a1 + 120) = *(a2 + 180);
  *(a1 + 104) = v12;
  if (a4)
  {
    if (a3 <= 0x97)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8C460;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C756C757443 || *(a2 + 44) != 0x6C756C756C756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C470;
      v12 = "memcmp((const char*)bytes + offset, (Ctulultulululul), sizeof(Ctulultulululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[1] = *(a2 + 60);
  a1[2] = *(a2 + 68);
  a1[3] = *(a2 + 76);
  a1[4] = *(a2 + 84);
  a1[5] = *(a2 + 92);
  a1[6] = *(a2 + 100);
  a1[7] = *(a2 + 108);
  a1[8] = *(a2 + 116);
  if (a4)
  {
    if (a3 <= 0x57)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C470;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_toTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C480;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C480;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C490;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C490;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C4A0;
      v14 = "memcmp((const char*)bytes + offset, (C@3ul@3ul), sizeof(C@3ul@3ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 8) = v9;
  v10 = *(a2 + 80);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 32) = v10;
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C4A0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C753340777543)
  {
    v9 = *a4;
    v10 = 501;
    v11 = xmmword_24DA8C4B0;
    v12 = "memcmp((const char*)bytes + offset, (Cuw@3ul), sizeof(Cuw@3ul)) == 0";
    v13 = 0;
    GTError_addError(a4, &v9);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v8 = *(a2 + 60);
  *(a1 + 32) = *(a2 + 76);
  *(a1 + 16) = v8;
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C4B0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C4C0;
      v14 = "memcmp((const char*)bytes + offset, (C@3ul@3ul), sizeof(C@3ul@3ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 8) = v9;
  v10 = *(a2 + 80);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 32) = v10;
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C4C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreadsWithIndirectBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4D0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_fillBuffer_range_value(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x62756C7532407443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C4F0;
    v11 = "memcmp((const char*)bytes + offset, (Ct@2ulub), sizeof(Ct@2ulub)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_generateMipmapsForTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C500;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C500;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C510;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C510;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForCPUAccess(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C520;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C520;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForCPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C530;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C530;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForGPUAccess(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C540;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C540;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForGPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C550;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C550;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C560;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C560;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C570;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C570;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C75324074557443 | *(a2 + 44))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8C580;
    v13 = "memcmp((const char*)bytes + offset, (CtUt@2ul), sizeof(CtUt@2ul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  v15 = 28;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  if (a4)
  {
    if (v9 + 24 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C580;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_options(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x6C75324074557443 || *(a2 + 39) != 0x6C756C75324074)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C590;
      v14 = "memcmp((const char*)bytes + offset, (CtUt@2ulul), sizeof(CtUt@2ulul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = a2[6];
  *(a1 + 8) = a2[7];
  v16 = 28;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  *(a1 + 48) = *(v8 + v10 + 24);
  if (a4)
  {
    if (v10 + 32 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C590;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setArgumentTable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5A0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setComputePipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5B0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setImageblockWidth_height(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C5C0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C5C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C5D0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C5D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C5E0;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C5F0;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 843084867 || *(a2 + 39) != 7107890)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C600;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ul), sizeof(Ct@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C600;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 843084867 || *(a2 + 39) != 7107890)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C610;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ul), sizeof(Ct@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C610;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C620;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C620;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C630;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C630;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C640;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C640;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C650;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C650;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C660;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C660;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_dispatchNetworkWithIntermediatesHeap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C670;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C670;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C680;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C680;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C690;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C690;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C6B0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_setArgumentTable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6C0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_setPipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6D0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C6E0;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C6F0;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningPipelineState_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C700;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C700;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C710;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C710;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C720;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C720;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C730;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C730;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C740;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C740;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C750;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C750;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

__n128 DYTraceDecode_MTL4RenderCommandEncoder_dispatchThreadsPerTile(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966293059 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C760;
      v13 = "memcmp((const char*)bytes + offset, (C@3ul), sizeof(C@3ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
    if (a3 <= 0x27)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C760;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 7107959)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C770;
      v12 = "memcmp((const char*)bytes + offset, (Culululuwul), sizeof(Culululuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C770;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 42) != 0x6C756C7577756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C780;
      v12 = "memcmp((const char*)bytes + offset, (Culululuwulul), sizeof(Culululuwulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[1] = *(a2 + 60);
  a1[2] = *(a2 + 68);
  a1[3] = *(a2 + 76);
  a1[4] = *(a2 + 84);
  a1[5] = *(a2 + 92);
  a1[6] = *(a2 + 100);
  if (a4)
  {
    if (a3 <= 0x47)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C780;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount_baseVertex_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x756C756C756C7543 | *(a2 + 44) ^ 0x6C756C6C756C7577 | *(a2 + 52))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C790;
    v11 = "memcmp((const char*)bytes + offset, (Culululuwulullul), sizeof(Culululuwulullul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 56);
  a1[1] = *(a2 + 64);
  a1[2] = *(a2 + 72);
  a1[3] = *(a2 + 80);
  a1[4] = *(a2 + 88);
  a1[5] = *(a2 + 96);
  a1[6] = *(a2 + 104);
  a1[7] = *(a2 + 112);
  a1[8] = *(a2 + 120);
  if (a4)
  {
    if (a3 <= 0x5B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C790;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferLength_indirectBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7577756C756C7543 || *(a2 + 44) != 7828844)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C7A0;
      v12 = "memcmp((const char*)bytes + offset, (Cululuwuluw), sizeof(Cululuwuluw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C7A0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C7B0;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@3ul@3ul), sizeof(C@3ul@3ul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  v9 = *(a2 + 60);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 8) = v9;
  v10 = *(a2 + 84);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 32) = v10;
  v11 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v11;
  if (a4)
  {
    if (a3 <= 0x5F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C7B0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x406C753340777543 || *(a2 + 44) != 7107891)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C7C0;
      v14 = "memcmp((const char*)bytes + offset, (Cuw@3ul@3ul), sizeof(Cuw@3ul@3ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  v9 = *(a2 + 64);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 16) = v9;
  v10 = *(a2 + 88);
  *(a1 + 56) = *(a2 + 104);
  *(a1 + 40) = v10;
  if (a4)
  {
    if (a3 <= 0x4B)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C7C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C7D0;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@3ul@3ul), sizeof(C@3ul@3ul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  v9 = *(a2 + 60);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 8) = v9;
  v10 = *(a2 + 84);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 32) = v10;
  v11 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v11;
  if (a4)
  {
    if (a3 <= 0x5F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C7D0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_indirectBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C7E0;
      v12 = "memcmp((const char*)bytes + offset, (Culuw), sizeof(Culuw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C7E0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C7F0;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C7F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C800;
      v12 = "memcmp((const char*)bytes + offset, (Culululul), sizeof(Culululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x33)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C800;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C810;
      v12 = "memcmp((const char*)bytes + offset, (Cululululul), sizeof(Cululululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C810;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C820;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C820;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C830;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C830;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C840;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C840;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C850;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C850;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setArgumentTable_atStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C860;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C860;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setBlendColorRed_green_blue_alpha(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717986883 || *(a2 + 40) != 102)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C870;
      v12 = "memcmp((const char*)bytes + offset, (Cffff), sizeof(Cffff)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 20) = *(a2 + 64);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C870;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setColorAttachmentMap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966620739 || *(a2 + 40) != 98)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C880;
      v12 = "memcmp((const char*)bytes + offset, (C@8ub), sizeof(C@8ub)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C880;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setColorStoreAction_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C890;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C890;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setCullMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8A0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthBias_slopeScale_clamp(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x66666643 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C8B0;
    v11 = "memcmp((const char*)bytes + offset, (Cfff), sizeof(Cfff)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthClipMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8C0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthStencilState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8D0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthStoreAction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8E0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthTestMinBound_maxBound(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 6710851)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C8F0;
    v11 = "memcmp((const char*)bytes + offset, (Cff), sizeof(Cff)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 12) = *(a2 + 52);
  if (a4)
  {
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setFrontFacingWinding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C900;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C900;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setLineWidth(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C910;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C910;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C920;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C920;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setRenderPipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C930;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C930;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

__n128 DYTraceDecode_MTL4RenderCommandEncoder_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966358595 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C940;
      v13 = "memcmp((const char*)bytes + offset, (C@4ul), sizeof(C@4ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
    if (a3 <= 0x2F)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C940;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTL4RenderCommandEncoder_setScissorRects_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8C950;
    v13 = "memcmp((const char*)bytes + offset, (CU<b>ul), sizeof(CU<b>ul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C950;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1969845571 || *(a2 + 40) != 105)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C960;
      v12 = "memcmp((const char*)bytes + offset, (Cuiui), sizeof(Cuiui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x17)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C960;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setStencilReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C970;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C970;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setStencilStoreAction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C980;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C980;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C990;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C990;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setTriangleFillMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C9A0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C9A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}