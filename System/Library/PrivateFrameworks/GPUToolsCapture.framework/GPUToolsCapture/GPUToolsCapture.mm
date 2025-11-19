mach_timebase_info *GTMTLCaptureState_createLocalCapture(uint64_t a1)
{
  v2 = GTMTLCaptureState_create();
  v3 = objc_autoreleasePoolPush();
  v2[26] = apr_pstrdup(*&v2[11], *(a1 + 56));
  *&v2->numer = *a1;
  v4 = *(a1 + 64);
  v6 = *(a1 + 16);
  v5 = *(a1 + 32);
  *&v2[6].numer = *(a1 + 48);
  *&v2[8].numer = v4;
  *&v2[2].numer = v6;
  *&v2[4].numer = v5;
  v7 = objc_retainBlock(*(a1 + 80));
  v8 = v2[10];
  v2[10] = v7;

  memset(v10, 0, sizeof(v10));
  apr_pool_create_ex(&v2[12], 0, 0, 0);
  v2[24] = GTCaptureArchive_create(*&v2[26], *&v2[12], v10);
  objc_autoreleasePoolPop(v3);
  return v2;
}

mach_timebase_info *GTMTLCaptureState_create()
{
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v0 = newpool;
  v1 = apr_palloc(newpool, 0xF8uLL);
  v2 = v1;
  if (v1)
  {
    v1[30] = 0;
    *&v1[26].numer = 0u;
    *&v1[28].numer = 0u;
    *&v1[22].numer = 0u;
    *&v1[24].numer = 0u;
    *&v1[18].numer = 0u;
    *&v1[20].numer = 0u;
    *&v1[14].numer = 0u;
    *&v1[16].numer = 0u;
    *&v1[10].numer = 0u;
    *&v1[12].numer = 0u;
    *&v1[6].numer = 0u;
    *&v1[8].numer = 0u;
    *&v1[2].numer = 0u;
    *&v1[4].numer = 0u;
    *&v1->numer = 0u;
  }

  v1[11] = v0;
  mach_timebase_info(v1 + 29);
  pthread_mutex_init(&v2[13], 0);
  v2[21] = apr_array_make(v0, 0, 456);
  v2[22] = apr_hash_make(v0);
  v2[23] = apr_hash_make(v0);
  LOBYTE(v2[30].numer) = 1;
  return v2;
}

mach_timebase_info *GTMTLCaptureState_createRemoteCapture(uint64_t a1)
{
  v2 = GTMTLCaptureState_create();
  *&v2->numer = *a1;
  v3 = *(a1 + 64);
  v5 = *(a1 + 16);
  v4 = *(a1 + 32);
  *&v2[6].numer = *(a1 + 48);
  *&v2[8].numer = v3;
  *&v2[2].numer = v5;
  *&v2[4].numer = v4;
  v6 = objc_retainBlock(*(a1 + 80));
  v7 = v2[10];
  v2[10] = v6;

  v2[7] = 0;
  return v2;
}

void GTMTLCaptureState_close(uint64_t a1)
{
  GTCaptureArchive_save(*(a1 + 192));
  pthread_mutex_destroy((a1 + 104));
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;

  v3 = *(a1 + 96);
  if (v3)
  {
    apr_pool_destroy(v3);
  }

  v4 = *(a1 + 88);

  apr_pool_destroy(v4);
}

uint64_t GTMTLCaptureState_appendDownloadRequests(uint64_t a1, const apr_array_header_t *a2)
{
  pthread_mutex_lock((a1 + 104));
  apr_array_cat(*(a1 + 168), a2);

  return pthread_mutex_unlock((a1 + 104));
}

uint64_t GTMTLCaptureState_getFileSize(uint64_t a1, char *a2)
{
  result = GTCaptureArchive_getFileWithFilename(*(a1 + 192), a2);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void GTMTLCaptureState_storePointer(uint64_t a1, char *__s, uint64_t *a3, const void *a4)
{
  if (a1 && a4)
  {
    v8 = strlen(__s);
    pthread_mutex_lock((a1 + 104));
    v9 = *find_entry(*(a1 + 176), __s, v8, 0);
    if (v9 && *(v9 + 32))
    {

      pthread_mutex_unlock((a1 + 104));
    }

    else
    {
      if (__s)
      {
        v10 = apr_palloc(**(a1 + 176), v8 + 1);
        memcpy(v10, __s, v8);
        *(v10 + v8) = 0;
      }

      else
      {
        v10 = 0;
      }

      apr_hash_set(*(a1 + 176), v10, v8, a4);
      pthread_mutex_unlock((a1 + 104));
      if (*(a1 + 240) == 1)
      {
        v11 = GTHash_data(a3, a4);
        sprintf(__sa, "%llX", v11);
        pthread_mutex_lock((a1 + 104));
        v12 = *find_entry(*(a1 + 184), __sa, 0xFFFFFFFFFFFFFFFFLL, 0);
        if (v12 && (v13 = *(v12 + 32)) != 0)
        {
          pthread_mutex_unlock((a1 + 104));
          if (strcmp(v13, v10))
          {
            memset(v23, 0, sizeof(v23));
            LODWORD(v23[0]) = 4;
            GTCaptureArchive_linkFile(*(a1 + 192), v13, v10, v23);
          }
        }

        else
        {
          v17 = strlen(__sa);
          v18 = apr_palloc(**(a1 + 184), v17 + 1);
          memcpy(v18, __sa, v17 + 1);
          v19 = apr_pstrdup(**(a1 + 184), v10);
          apr_hash_set(*(a1 + 184), v18, -1, v19);
          pthread_mutex_unlock((a1 + 104));
          v20 = objc_autoreleasePoolPush();
          v21 = [NSString stringWithUTF8String:v10];
          v22 = [NSData dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
          GTMTLCaptureState_storeData(a1, v21, v22);

          objc_autoreleasePoolPop(v20);
        }
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [NSString stringWithUTF8String:v10];
        v16 = [NSData dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
        GTMTLCaptureState_storeData(a1, v15, v16);

        objc_autoreleasePoolPop(v14);
      }
    }
  }
}

uint64_t GTMTLCaptureState_storeData(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 length] < 0x8000;
  memset(v13, 0, sizeof(v13));
  v8 = *(a1 + 192);
  v9 = [v6 UTF8String];

  v10 = [v5 bytes];
  v11 = [v5 length];

  return GTCaptureArchive_addFile(v8, v9, v10, v11, v7, v13);
}

uint64_t GTMTLCaptureState_setStartAbsoluteTime(uint64_t result, uint64_t a2, void *a3)
{
  *(result + 224) = a2;
  *(result + 232) = *a3;
  return result;
}

void GTMTLCaptureState_copyDeviceFilesLocal(uint64_t a1, const char **a2, apr_pool_t **a3)
{
  v6 = *a3;
  Data = GTCaptureArchive_readData(a2, a3, "(device info)", *a3, 0);
  v9 = [NSData dataWithBytesNoCopy:Data length:v8 freeWhenDone:0];
  GTMTLCaptureState_storeData(a1, @"(device info)", v9);

  v10 = GTCaptureArchive_readData(a2, a3, "(control device info)", v6, 0);
  v12 = [NSData dataWithBytesNoCopy:v10 length:v11 freeWhenDone:0];
  GTMTLCaptureState_storeData(a1, @"(control device info)", v12);

  v13 = GTCaptureArchive_readData(a2, a3, "(device profile)", v6, 0);
  v15 = [NSData dataWithBytesNoCopy:v13 length:v14 freeWhenDone:0];
  GTMTLCaptureState_storeData(a1, @"(device profile)", v15);

  v16 = [NSString stringWithUTF8String:*a2];
  v17 = +[NSFileManager defaultManager];
  v18 = [v16 stringByAppendingPathComponent:@"metadata"];
  v19 = [NSString stringWithUTF8String:*(a1 + 208)];
  v20 = [v19 stringByAppendingPathComponent:@"metadata"];
  v21 = 0;
  [v17 copyItemAtPath:v18 toPath:v20 error:&v21];
}

const char *GTMTLCaptureModeAsString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "DeviceManual";
  }

  else
  {
    return off_2F13E8[(a1 - 1)];
  }
}

uint64_t GTMTLCaptureManager_prepareForSerialization(uint64_t a1)
{
  v2 = g_signpostLog;
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TraceContextDumpStart", &unk_2E94FB, buf, 2u);
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  p = 0;
  v3 = newpool;
  apr_pool_create_ex(&p, newpool, 0, 0);
  v223 = *(a1 + 16);
  v218 = *(a1 + 24);
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = apr_palloc(v3, 0x310uLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x310uLL);
  }

  *v7 = v3;
  *(v7 + 40) = v223;
  *(v7 + 48) = v218;
  *(v7 + 712) = GTTraceContext_buildBacktraceMap(v5, v3);
  *(v7 + 8) = v5;
  *(v7 + 668) = 0;
  *(v7 + 32) = v4;
  *(v7 + 664) = 1;
  *(v7 + 669) = *(a1 + 32);
  v224 = 0;
  v8 = GTTraceContext_copyStreamMapAndBuildDispatchArray(v5, v223, v218, v3, &v224);
  v9 = v224;
  *(v7 + 16) = v224;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 2) = v9;
  *(v9 + 10) = 0;
  v10 = (v9 + 16);
  while (1)
  {
    v10 = apr_hash_next(v10);
    if (!v10)
    {
      break;
    }

    v11 = *(*(v10 + 1) + 32);
    if (v11)
    {
      v12 = (v11 + 56);
      v13 = atomic_load(v12);
      v14 = v13;
      do
      {
        atomic_compare_exchange_strong(v12, &v14, v13 | 0x10);
        v47 = v14 == v13;
        v13 = v14;
      }

      while (!v47);
    }
  }

  atomic_store(2u, (v5 + 112));
  GTTraceContext_filterDispatchArray(v8);
  v15 = newpool;
  *(v7 + 24) = apr_hash_make(newpool);
  v16 = *(v7 + 16);
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v16;
  *(v16 + 40) = 0;
  for (i = (v16 + 16); ; i = v19)
  {
    v18 = apr_hash_next(i);
    v19 = v18;
    if (!v18)
    {
      break;
    }

    GTTraceMemPool_buildMemoryMap(*(*(*(v18 + 1) + 32) + 24), *(v7 + 24));
  }

  v219 = v4;
  v220 = v7;
  v21 = *(v7 + 16);
  v20 = *(v7 + 24);
  if (v8->nelts >= 1)
  {
    v22 = 0;
    v23 = -64;
    while (1)
    {
      if (v22 >= 8)
      {
        v24 = 8;
      }

      else
      {
        v24 = v22;
      }

      v25 = &v8->elts[64 * v22];
      if (*(v25 + 2) == -7161)
      {
        FuncStreamRef = GTTraceFunc_getFuncStreamRef(&v8->elts[64 * v22], v20);
        elts = v8->elts;
        *buf = FuncStreamRef;
        entry = find_entry(v21, buf, 8uLL, 0);
        if (*entry && (v29 = *(*entry + 32)) != 0)
        {
          v30 = atomic_load((v29 + 56));
          v31 = (v29 + (~(v30 >> 2) & 8));
          if (v22)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v31 = &dword_8;
          if (v22)
          {
LABEL_26:
            v32 = v24 + 1;
            v33 = *v31;
            v34 = &elts[v23];
            while (1)
            {
              if (*(v34 + 8) == -7166)
              {
                *buf = GTTraceFunc_getFuncStreamRef(v34, v20);
                v35 = find_entry(v21, buf, 8uLL, 0);
                if (*v35 && (v36 = *(*v35 + 32)) != 0)
                {
                  v37 = atomic_load((v36 + 56));
                  v38 = (v36 + (~(v37 >> 2) & 8));
                }

                else
                {
                  v38 = &dword_8;
                }

                if (*v38 == v33)
                {
                  break;
                }
              }

              --v32;
              v34 -= 64;
              if (v32 < 2)
              {
                goto LABEL_36;
              }
            }

            *buf = *v34;
            v229 = *(v34 + 16);
            v230 = *(v34 + 32);
            v231 = *(v34 + 48);
            memmove(v34, (v34 + 64), ((&v25[-v34] << 26) >> 26) & 0xFFFFFFFFFFFFFFC0);
            *v25 = *buf;
            *(v25 + 1) = v229;
            *(v25 + 2) = v230;
            *(v25 + 3) = v231;
          }
        }
      }

LABEL_36:
      ++v22;
      v23 += 64;
      if (v22 >= v8->nelts)
      {
        v7 = v220;
        v21 = v220[2];
        v20 = v220[3];
        v15 = newpool;
        break;
      }
    }
  }

  *(v7 + 720) = v8;
  *(v7 + 744) = GTTraceDump_buildCommandBufferInfo(v21, v20, v8, v15);
  v39 = *(v7 + 16);
  v40 = *(v7 + 24);
  v41 = *(v7 + 720);
  pool = 0;
  apr_pool_create_ex(&pool, v15, 0, 0);
  v42 = pool;
  arr = apr_hash_make(pool);
  v43 = apr_array_make(v15, 8, 8);
  if (*(v41 + 12) < 1)
  {
    goto LABEL_103;
  }

  v44 = 0;
  do
  {
    v45 = *(v41 + 24) + (v44 << 6);
    v46 = *(v45 + 8);
    if (v46 > -15317)
    {
      if (v46 > -14848)
      {
        v54 = v46 + 14847;
        v127 = v54 > 0xE;
        v55 = (1 << v54) & 0x4003;
        if (v127 || v55 == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_67;
      }

      if (v46 == -15316)
      {
        goto LABEL_58;
      }

      if (v46 != -15312)
      {
        if (v46 != -15158)
        {
          goto LABEL_96;
        }

LABEL_67:
        *buf = 0;
        Mtl4Commits = GTTraceFuncArgs_getMtl4Commits(v45, v40, buf);
        if (Mtl4Commits)
        {
          v58 = Mtl4Commits;
          v59 = *buf;
          do
          {
            v60 = *v59++;
            *apr_array_push(v43) = v60;
            --v58;
          }

          while (v58);
        }

        goto LABEL_96;
      }

LABEL_80:
      *buf = GTTraceFunc_targetContext(*(v41 + 24) + (v44 << 6), v40);
      v69 = *find_entry(v39, buf, 8uLL, 0);
      if (v69)
      {
        v70 = *(v69 + 32);
        if (v70)
        {
          v71 = *(v70 + 32);
          if (v71)
          {
            v72 = v71 + 64;
          }

          else
          {
            v72 = 0;
          }

LABEL_87:
          v73 = GTTraceFunc_argumentBytesWithMap(v72, *(v72 + 14), v40);
          if (v73 && *v73)
          {
            v74 = *(v70 + 24);
            v75 = CommandQueueForCommandBuffer(v74, v72);
            QueueForRef = GetQueueForRef(&arr->pool, v75);
            v77 = v74;
            v7 = v220;
            v78 = *GTTraceFunc_argumentBytesWithPool(v45, *(v45 + 13), v77);
            *apr_array_push(QueueForRef) = v78;
          }

          goto LABEL_96;
        }
      }

      else
      {
        v70 = 0;
      }

      v72 = 0;
      goto LABEL_87;
    }

    if (v46 > -15909)
    {
      v47 = v46 == -15908 || v46 == -15343;
      v48 = -15318;
    }

    else
    {
      if (v46 == -16362)
      {
        goto LABEL_80;
      }

      v47 = v46 == -16361;
      v48 = -16202;
    }

    if (!v47 && v46 != v48)
    {
      goto LABEL_96;
    }

LABEL_58:
    *buf = GTTraceFunc_targetContext(*(v41 + 24) + (v44 << 6), v40);
    v50 = *find_entry(v39, buf, 8uLL, 0);
    if (!v50)
    {
      v51 = 0;
LABEL_72:
      v53 = 0;
      goto LABEL_73;
    }

    v51 = *(v50 + 32);
    if (!v51)
    {
      goto LABEL_72;
    }

    v52 = *(v51 + 32);
    if (v52)
    {
      v53 = v52 + 64;
    }

    else
    {
      v53 = 0;
    }

LABEL_73:
    v61 = GTTraceFunc_argumentBytesWithMap(v53, *(v53 + 14), v40);
    if (v61 && *v61)
    {
      v62 = *(v51 + 24);
      v63 = CommandQueueForCommandBuffer(v62, v53);
      v64 = GetQueueForRef(&arr->pool, v63);
      v65 = *GTTraceFunc_argumentBytesWithPool(v45, *(v45 + 13), v62);
      nelts = v64->nelts;
      if (nelts < 1)
      {
        goto LABEL_91;
      }

      v67 = 0;
      v68 = v64->elts;
      while (*&v68[8 * v67] != v65)
      {
        if (nelts == ++v67)
        {
          goto LABEL_91;
        }
      }

      if (nelts == v67)
      {
LABEL_91:
        *apr_array_push(v64) = v65;
        v68 = v64->elts;
        LODWORD(v79) = v64->nelts;
      }

      else
      {
        LODWORD(v79) = v64->nelts;
        LODWORD(nelts) = v67;
      }

      *&v68[8 * nelts] |= 0x8000000000000000;
      v7 = v220;
      if (v79 >= 1 && (v80 = *v68, (*v68 & 0x8000000000000000) != 0))
      {
        v83 = 1;
        do
        {
          v81 = v83;
          *apr_array_push(v43) = v80 & 0x7FFFFFFFFFFFFFFFLL;
          v79 = v64->nelts;
          v68 = v64->elts;
          if (v81 >= v79)
          {
            break;
          }

          v80 = *&v68[8 * v81];
          v83 = v81 + 1;
        }

        while (v80 < 0);
      }

      else
      {
        LODWORD(v81) = 0;
      }

      v82 = v79 - v81;
      v64->nelts = v82;
      memmove(v68, &v68[8 * v81], v64->elt_size * v82);
    }

LABEL_96:
    ++v44;
  }

  while (v44 < *(v41 + 12));
  v15 = newpool;
  v42 = pool;
LABEL_103:
  apr_pool_destroy(v42);
  *(v7 + 728) = v43;
  v85 = *(v7 + 16);
  v84 = *(v7 + 24);
  v86 = apr_array_make(v15, 1, 8);
  if (v43->nelts >= 1)
  {
    for (j = 0; j < v43->nelts; ++j)
    {
      *buf = *&v43->elts[8 * j];
      v88 = *find_entry(v85, buf, 8uLL, 0);
      if (v88)
      {
        v89 = *(v88 + 32);
        if (v89)
        {
          v90 = *(v89 + 32);
          if (v90)
          {
            v91 = v90 + 64;
          }

          else
          {
            v91 = 0;
          }

          goto LABEL_112;
        }
      }

      else
      {
        v89 = 0;
      }

      v91 = 0;
LABEL_112:
      ConstructorType = GTFenum_getConstructorType(*(v91 + 8));
      if (ConstructorType == 51 || ConstructorType == 25)
      {
        v94 = CommandQueueForCommandBuffer(*(v89 + 24), v91);
        v95 = v86->nelts;
        if (v95 < 1)
        {
          goto LABEL_123;
        }

        v96 = 0;
        while (*&v86->elts[8 * v96] != v94)
        {
          if (v95 == ++v96)
          {
            goto LABEL_123;
          }
        }

        if (v95 <= v96)
        {
LABEL_123:
          *apr_array_push(v86) = v94;
        }
      }
    }
  }

  arra = v86;
  v97 = *(v7 + 720);
  if (*(v97 + 12) >= 1)
  {
    v98 = 0;
    do
    {
      v99 = *(v97 + 24) + (v98 << 6);
      v100 = *(v99 + 8);
      if ((v100 + 14847) <= 0xE && ((1 << (v100 - 1)) & 0x4003) != 0 || v100 == -15158)
      {
        v103 = GTTraceFunc_getFuncStreamRef(v99, v84);
        v104 = v86->nelts;
        if (v104 < 1)
        {
          goto LABEL_141;
        }

        v105 = 0;
        while (*&v86->elts[8 * v105] != v103)
        {
          if (v104 == ++v105)
          {
            goto LABEL_141;
          }
        }

        if (v104 <= v105)
        {
LABEL_141:
          *apr_array_push(v86) = v103;
        }
      }

      ++v98;
      v97 = *(v7 + 720);
    }

    while (v98 < *(v97 + 12));
  }

  v106 = *(v7 + 16);
  v107 = *(v7 + 24);
  v108 = apr_array_make(newpool, 2, 8);
  v109 = v86;
  LODWORD(v110) = v86->nelts;
  if (v110 >= 1)
  {
    v111 = 0;
    while (1)
    {
      *buf = *&arra->elts[8 * v111];
      v112 = find_entry(v106, buf, 8uLL, 0);
      if (*v112 && (v113 = *(*v112 + 32)) != 0)
      {
        v114 = *(v113 + 32);
        if (v114)
        {
          v115 = v114 + 64;
        }

        else
        {
          v115 = 0;
        }
      }

      else
      {
        v115 = 0;
      }

      v116 = *(v115 + 8);
      if (v116 > -15351)
      {
        if (v116 == -15350)
        {
          *buf = 0u;
          *&v229 = 0;
          v230 = 0u;
          v231 = 0u;
          *buf = 52;
          *(&v229 + 1) = -1;
          GTMTLSMIOCommandQueue_processTraceFuncWithMap(buf, v107, v115);
          v118 = *(&v230 + 1);
          v119 = v108->nelts;
          if (v119 < 1)
          {
            goto LABEL_176;
          }

          v120 = 0;
          while (*&v108->elts[8 * v120] != *(&v230 + 1))
          {
            if (v119 == ++v120)
            {
              goto LABEL_176;
            }
          }
        }

        else
        {
          if (v116 != -15190 && v116 != -14834)
          {
            goto LABEL_177;
          }

          *buf = 0u;
          *&v229 = 0;
          *&v231 = 0;
          v230 = 0u;
          *buf = 92;
          *(&v229 + 1) = -1;
          GTMTL4SMCommandQueue_processTraceFuncWithMap(buf, v107, v115);
          v118 = *(&v230 + 1);
          v119 = v108->nelts;
          if (v119 < 1)
          {
LABEL_176:
            *apr_array_push(v108) = v118;
            goto LABEL_177;
          }

          v120 = 0;
          while (*&v108->elts[8 * v120] != *(&v230 + 1))
          {
            if (v119 == ++v120)
            {
              goto LABEL_176;
            }
          }
        }
      }

      else
      {
        if ((v116 + 16316) >= 2 && v116 != -16165)
        {
          goto LABEL_177;
        }

        *buf = 0u;
        *&v229 = 0;
        v231 = 0u;
        v232 = 0u;
        v230 = 0u;
        *buf = 27;
        *(&v229 + 1) = -1;
        BYTE12(v232) = 1;
        WORD4(v232) = 769;
        GTMTLSMCommandQueue_processTraceFuncWithMap(buf, v107, v115);
        v118 = *(&v230 + 1);
        v119 = v108->nelts;
        if (v119 < 1)
        {
          goto LABEL_176;
        }

        v120 = 0;
        while (*&v108->elts[8 * v120] != *(&v230 + 1))
        {
          if (v119 == ++v120)
          {
            goto LABEL_176;
          }
        }
      }

      if (v119 <= v120)
      {
        goto LABEL_176;
      }

LABEL_177:
      ++v111;
      v110 = arra->nelts;
      if (v111 >= v110)
      {
        v7 = v220;
        break;
      }
    }
  }

  v121 = v108->nelts;
  if (!v121)
  {
    *(v7 + 56) = 0;
    goto LABEL_316;
  }

  v122 = *(v7 + 16);
  v123 = *(v7 + 24);
  if (v121 < 1)
  {
    goto LABEL_188;
  }

  v124 = *v219;
  if (!*v219)
  {
    goto LABEL_188;
  }

  v125 = 0;
  while (*&v108->elts[8 * v125] != v124)
  {
    if (v121 == ++v125)
    {
      goto LABEL_188;
    }
  }

  if (v121 <= v125)
  {
LABEL_188:
    v126 = v219[1];
    if (v126)
    {
      v127 = v110 < 1;
    }

    else
    {
      v127 = 1;
    }

    if (v127)
    {
      goto LABEL_203;
    }

    v128 = 0;
    while (*&arra->elts[8 * v128] != v126)
    {
      if (v110 == ++v128)
      {
        goto LABEL_203;
      }
    }

    if (v110 <= v128)
    {
LABEL_203:
      v124 = *v108->elts;
    }

    else
    {
      *buf = v219[1];
      v129 = *find_entry(v122, buf, 8uLL, 0);
      if (v129 && (v130 = *(v129 + 32)) != 0 && (v131 = *(v130 + 32)) != 0 && (*(v131 + 79) & 8) != 0)
      {
        v132 = v131 + 64;
      }

      else
      {
        v132 = 0;
      }

      v124 = DeviceForCommandQueue(v123, v132);
    }
  }

  *(v7 + 56) = v124;
  if (!v124)
  {
    goto LABEL_316;
  }

  if (arra->nelts < 1)
  {
    v134 = 0;
  }

  else
  {
    v133 = 0;
    v134 = 0;
    do
    {
      v135 = *&v109->elts[8 * v133];
      v136 = *(v7 + 16);
      *buf = v135;
      v137 = *find_entry(v136, buf, 8uLL, 0);
      if (v137 && (v138 = *(v137 + 32)) != 0)
      {
        v139 = *(v138 + 32);
        if (v139)
        {
          v140 = v139 + 64;
        }

        else
        {
          v140 = 0;
        }
      }

      else
      {
        v140 = 0;
      }

      v141 = GTFenum_getConstructorType(*(v140 + 8));
      if (v141 == 27 || v141 == 92 || v141 == 52)
      {
        v142 = *(v7 + 56);
        if (v142 == DeviceForCommandQueue(*(v7 + 24), v140))
        {
          v109 = arra;
          *&arra->elts[8 * v134++] = v135;
        }

        else
        {
          v109 = arra;
        }
      }

      ++v133;
    }

    while (v133 < v109->nelts);
  }

  v109->nelts = v134;
  if (v43->nelts < 1)
  {
    v144 = 0;
  }

  else
  {
    v143 = 0;
    v144 = 0;
    v145 = *(v7 + 744);
    do
    {
      v146 = *&v43->elts[8 * v143];
      CommandBufferQueue = GTTraceDump_getCommandBufferQueue(v145, v146);
      v148 = v109->nelts;
      if (v148 >= 1)
      {
        v149 = 0;
        while (*&v109->elts[8 * v149] != CommandBufferQueue)
        {
          if (v148 == ++v149)
          {
            goto LABEL_231;
          }
        }

        if (v148 > v149)
        {
          *&v43->elts[8 * v144++] = v146;
        }
      }

LABEL_231:
      ++v143;
    }

    while (v143 < v43->nelts);
  }

  v43->nelts = v144;
  v150 = newpool;
  *(v7 + 752) = GTMTLSMContext_buildDeviceMirrorWithIgnoreFlags(*(v7 + 16), *(v7 + 24), *(v7 + 720), *(v7 + 56), v223, v218, newpool, 0, 0);
  *buf = *(v7 + 16);
  *&v229 = v150;
  BYTE8(v229) = *(v7 + 669);
  *(&v229 + 9) = 0;
  HIDWORD(v229) = 0;
  v151 = GTResourceTrackerMakeWithDescriptor(buf);
  v152 = p;
  ResourceTracker_addFunctionHandles(v151, *(v7 + 752), v223, p);
  ResourceTracker_addAccelerationStructures(v151, *(v7 + 752), v223, v152);
  ResourceTracker_addResourceGroups(v151, *(v7 + 752), v223, v152);
  ResourceTracker_addTextureViewPools(v151, *(v7 + 752));
  if (v43->nelts >= 1)
  {
    v153 = 0;
    do
    {
      v155 = *(v7 + 744);
      pool = *&v43->elts[8 * v153];
      v154 = pool;
      v156 = *(*find_entry(v155, &pool, 8uLL, 0) + 32);
      v157 = *v156;
      GTResourceTrackerProcessCommandBufferAndResidencySets(v151, v154, *(v156 + 8), *v156);
      ResourceTracker_addChainedResources(v151, *(v7 + 752), v157, v152);
      v158 = *(v7 + 752);
      v159 = apr_array_make(v152, 4, 8);
      GTMTLSMContext_getObjects(*(v158 + 256), v157, v159);
      if (v159->nelts >= 1)
      {
        v160 = 0;
        do
        {
          v161 = *&v159->elts[8 * v160];
          pool = *(v161 + 48);
          v162 = find_entry(v151[3], &pool, 8uLL, 0);
          if (*v162 && *(*v162 + 32))
          {
            GTResourceTrackerUsingResource(v151[3], 2, *(v161 + 8), *v151, v151[1]);
          }

          ++v160;
        }

        while (v160 < v159->nelts);
      }

      ResourceTracker_addIndirectResources(v151, *(v7 + 752), v157, v152);
      ResourceTracker_addLibraries(v151, *(v7 + 752), v157, v152);
      ResourceTracker_addFunctionHandles(v151, *(v7 + 752), v157, v152);
      ResourceTracker_addAccelerationStructures(v151, *(v7 + 752), v157, v152);
      ResourceTracker_addResourceGroups(v151, *(v7 + 752), v157, v152);
      ++v153;
    }

    while (v153 < v43->nelts);
  }

  v163 = *(v7 + 720);
  if (*(v163 + 12) >= 1)
  {
    v164 = 0;
    v165 = 0;
    do
    {
      GTResourceTrackerProcessIndirectCommandResourceUse(v151, *(v163 + 24) + v164);
      ++v165;
      v164 += 64;
    }

    while (v165 < *(v163 + 12));
  }

  LODWORD(v166) = v109->nelts;
  if (v166 >= 1)
  {
    v167 = 0;
    v168 = v109;
    while (1)
    {
      v169 = *&v168->elts[8 * v167];
      v170 = v220[2];
      pool = v169;
      v171 = *(*(*(*find_entry(v170, &pool, 8uLL, 0) + 32) + 32) + 72);
      if (v171 > -15351)
      {
        if (v171 == -15350)
        {
          v173 = 52;
        }

        else
        {
          if (v171 != -14834 && v171 != -15190)
          {
            goto LABEL_264;
          }

          v173 = 92;
        }
      }

      else
      {
        if ((v171 + 16316) >= 2 && v171 != -16165)
        {
          goto LABEL_264;
        }

        v173 = 27;
      }

      GTResourceTrackerUsingResource(v151[3], v173, v169, *v151, v151[1]);
LABEL_264:
      ++v167;
      v168 = arra;
      v166 = arra->nelts;
      if (v167 >= v166)
      {
        v7 = v220;
        v109 = arra;
        break;
      }
    }
  }

  v175 = v219;
  if (v43->nelts >= 1)
  {
    v176 = 0;
    do
    {
      v177 = *&v43->elts[8 * v176];
      v178 = *(v7 + 16);
      pool = v177;
      v179 = *find_entry(v178, &pool, 8uLL, 0);
      if (v179 && (v180 = *(v179 + 32)) != 0 && (v181 = *(v180 + 32)) != 0 && (*(v181 + 79) & 8) != 0)
      {
        v182 = v181 + 64;
      }

      else
      {
        v182 = 0;
      }

      v183 = GTFenum_getConstructorType(*(v182 + 8));
      if (v183 != 25 && v183 != 51)
      {
        v184 = *(v7 + 744);
        pool = v177;
        v185 = find_entry(v184, &pool, 8uLL, 0);
        GTResourceTrackerProcessCommandBufferAndResidencySets(v151, v177, *(*(*v185 + 32) + 8), **(*v185 + 32));
        if ((*(v182 + 8) + 15173) <= 1)
        {
          v186 = GTTraceFunc_targetContext(v182, *(v7 + 24));
          GTResourceTrackerUsingResource(v151[3], 91, v186, *v151, v151[1]);
        }
      }

      ++v176;
    }

    while (v176 < v43->nelts);
    LODWORD(v166) = v109->nelts;
    v152 = p;
  }

  if (v166 >= 1)
  {
    v187 = 0;
    while (1)
    {
      v188 = *(v7 + 16);
      pool = *&v109->elts[8 * v187];
      v189 = *(*find_entry(v188, &pool, 8uLL, 0) + 32);
      v190 = *(v189 + 32);
      if (GTFenum_getConstructorType(*(v190 + 72)) == 92)
      {
        break;
      }

LABEL_304:
      ++v187;
      v7 = v220;
      v109 = arra;
      if (v187 >= arra->nelts)
      {
        v152 = p;
        v175 = v219;
        goto LABEL_306;
      }
    }

    v191 = 0;
    while (1)
    {
      v192 = atomic_load((v190 + 4));
      v193 = v191 + (v192 >> 6) - 1;
      if (v193 > 0)
      {
        break;
      }

      v190 = *(v190 + 40);
      v191 = v193;
      if (!v190)
      {
        v191 = v193;
        goto LABEL_288;
      }
    }

    v193 = 0;
LABEL_288:
    v194 = v191 | (v193 << 32);
    while (2)
    {
      if (!v190)
      {
        goto LABEL_304;
      }

      v195 = v190 + 64 + ((HIDWORD(v194) - v194) << 6);
      if ((*(v195 + 15) & 8) == 0)
      {
        goto LABEL_304;
      }

      v196 = *v195;
      if (v223 > *v195 || v218 + v223 <= v196)
      {
LABEL_302:
        v201 = atomic_load((v190 + 4));
        v202 = v194 + (v201 >> 6);
        v203 = (HIDWORD(v194) + 1);
        v194 = (v203 << 32) | v194;
        if (v203 == v202 - 1)
        {
          v194 = (v203 << 32) | v203;
          v190 = *(v190 + 40);
        }

        continue;
      }

      break;
    }

    v198 = *(v195 + 8);
    if ((v198 + 14847) > 0xE)
    {
LABEL_300:
      if (v198 != -15158)
      {
        goto LABEL_302;
      }
    }

    else
    {
      v199 = 1 << (v198 - 1);
      if ((v199 & 0x4003) == 0)
      {
        if ((v199 & 0x28) != 0)
        {
          v200 = GTTraceFunc_argumentBytesWithPool((v190 + 64 + ((HIDWORD(v194) - v194) << 6)), *(v195 + 13), *(v189 + 24));
          GTResourceTrackerUsingResource(v151[3], 76, *(v200 + 1), *v151, v151[1]);
          goto LABEL_302;
        }

        goto LABEL_300;
      }
    }

    ResourceTracker_addLibraries(v151, v220[94], v196, v152);
    ResourceTracker_processUsedResidencySets(v151, *v195, v189, v152);
    goto LABEL_302;
  }

LABEL_306:
  apr_pool_clear(v152);
  ResourceTracker_postAccumulateHeapReads(v151);
  ResourceTracker_processAccelerationStructureReads(v151);
  ResourceTracker_processUsedDrawables(v151);
  v204 = 0;
  *(v7 + 704) = v151[3];
  *(v7 + 760) = v151;
  v205 = newpool;
  while (2)
  {
    v206 = apr_array_make(v205, 16, 8);
    v207 = v7 + 8 * v204;
    *(v207 + 64) = v206;
    if ((v204 + 1) > 0x33u)
    {
      v208 = 0;
    }

    else
    {
      v208 = dword_29BBBC[(v204 + 1)] - 2;
      if (v208 > 0x6C)
      {
LABEL_313:
        v210 = 0;
        goto LABEL_314;
      }
    }

    v209 = byte_29BC8C[v208];
    if (v209 < 0)
    {
      goto LABEL_313;
    }

    v210 = *(*(v7 + 752) + 8 * v209 + 8);
LABEL_314:
    GTMTLSMContext_getObjects(v210, v223, v206);
    *(v7 + 4 * v204++ + 464) = GTMTLSMObject_sortUsedResources(*(*(v207 + 64) + 24), *(*(v207 + 64) + 12), *(v7 + 704));
    if (v204 != 50)
    {
      continue;
    }

    break;
  }

  v211 = apr_hash_make(v205);
  *(v7 + 696) = v211;
  GTMTLSMContext_buildResourceChildrenMap(*(v7 + 752), v223, v211);
  GTMTLSMContext_buildLibraryFunctionsMap(*(v7 + 752), v223, *(v7 + 696));
  v212 = apr_array_copy(v205, v175[21]);
  v213 = apr_hash_make(v205);
  *(v7 + 672) = v213;
  DownloadsByResource(v212, v213);
  *(v7 + 688) = DownloadsByCommandBuffer(v151, v212, v205);
  BoundDownloadRequest = GTTraceContextDumpGetBoundDownloadRequest(v7, *(v7 + 672));
  v215 = GTResourceDownloaderProcessRequest(*v7, BoundDownloadRequest);
  DownloadFromDevice(*(v7 + 16), *(v7 + 56), v215);
  DownloadsByResource(v215, *(v7 + 672));
  *(v7 + 680) = DownloadsByResourceDelta(v151, *(v7 + 672), v205);
LABEL_316:
  v216 = g_signpostLog;
  if (os_signpost_enabled(v216))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v216, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TraceContextDumpStart", &unk_2E94FB, buf, 2u);
  }

  apr_pool_destroy(p);
  return v7;
}

apr_array_header_t *GetQueueForRef(apr_pool_t **a1, uint64_t a2)
{
  v8 = a2;
  v3 = *find_entry(a1, &v8, 8uLL, 0);
  if (!v3 || (v4 = *(v3 + 32)) == 0)
  {
    v5 = *a1;
    v4 = apr_array_make(*a1, 4, 8);
    v6 = apr_palloc(v5, 8uLL);
    *v6 = v8;
    apr_hash_set(a1, v6, 8, v4);
  }

  return v4;
}

uint64_t DeviceForCommandQueue(uint64_t a1, uint64_t a2)
{
  ConstructorType = GTFenum_getConstructorType(*(a2 + 8));
  switch(ConstructorType)
  {
    case 92:
      *&v9 = 0;
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      GTMTL4SMCommandQueue_processTraceFuncWithMap(&v6, a1, a2);
      return *(&v8 + 1);
    case 52:
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      GTMTLSMIOCommandQueue_processTraceFuncWithMap(&v6, a1, a2);
      return *(&v8 + 1);
    case 27:
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      GTMTLSMCommandQueue_processTraceFuncWithMap(&v6, a1, a2);
      return *(&v8 + 1);
  }

  return -1;
}

const __CFString *_StringForError(uint64_t a1)
{
  if (a1 > 255)
  {
    if (a1 > 1535)
    {
      if (a1 > 4351)
      {
        if (a1 <= 4609)
        {
          if (a1 > 4607)
          {
            if (a1 == 4608)
            {
              return [NSString stringWithFormat:@"Cannot find the specified username and host (%ld)", 4608];
            }

            else
            {
              return [NSString stringWithFormat:@"Specified remote machine is not available. Please make sure to login with specified user (%ld)", 4609];
            }
          }

          if (a1 == 4352)
          {
            return [NSString stringWithFormat:@"Shader profiler failed due to an internal error (%ld)", 4352];
          }

          if (a1 == 4353)
          {
            return [NSString stringWithFormat:@"Shader profiler does not support multi-context captures (%ld)", 4353];
          }
        }

        else
        {
          if (a1 <= 4611)
          {
            if (a1 == 4610)
            {
              return [NSString stringWithFormat:@"Cannot find the target path provided (%ld)", 4610];
            }

            else
            {
              return [NSString stringWithFormat:@"Cannot authenticate SSH, make sure the authentication is done right (%ld)", 4611];
            }
          }

          switch(a1)
          {
            case 4612:
              return [NSString stringWithFormat:@"Cannot find Xcode.app on the remote machine. Please make sure that Xcode.app is in the Applications folder (%ld)", 4612];
            case 4613:
              return [NSString stringWithFormat:@"Metal.framework is not available on the remote machine (%ld)", 4613];
            case 4614:
              return [NSString stringWithFormat:@"Missing environment variables, please make sure all the required environment variables are enabled (%ld)", 4614];
          }
        }
      }

      else if (a1 <= 2048)
      {
        if (a1 > 1792)
        {
          if (a1 == 1793)
          {
            return [NSString stringWithFormat:@"guest app session error (%ld)", 1793];
          }

          if (a1 == 2048)
          {
            return [NSString stringWithFormat:@"already replaying (%ld)", 2048];
          }
        }

        else
        {
          if (a1 == 1536)
          {
            return [NSString stringWithFormat:@"position does not exist in archive (%ld)", 1536];
          }

          if (a1 == 1792)
          {
            return [NSString stringWithFormat:@"no data (%ld)", 1792];
          }
        }
      }

      else if (a1 <= 2304)
      {
        if (a1 == 2049)
        {
          return [NSString stringWithFormat:@"no loaded archives (%ld)", 2049];
        }

        if (a1 == 2304)
        {
          return [NSString stringWithFormat:@"no resource streamer (%ld)", 2304];
        }
      }

      else
      {
        switch(a1)
        {
          case 2305:
            return [NSString stringWithFormat:@"no archive data (%ld)", 2305];
          case 2306:
            return [NSString stringWithFormat:@"no thumbnail support (%ld)", 2306];
          case 4096:
            return [NSString stringWithFormat:@"failed to create core symbolicator (%ld)", 4096];
        }
      }
    }

    else if (a1 > 514)
    {
      if (a1 <= 518)
      {
        if (a1 > 516)
        {
          if (a1 == 517)
          {
            return [NSString stringWithFormat:@"GL dispatch table mismatch (%ld)", 517];
          }

          else
          {
            return [NSString stringWithFormat:@"inferior and host session ids mismatch (%ld)", 518];
          }
        }

        else if (a1 == 515)
        {
          return [NSString stringWithFormat:@"capture session activation failed (%ld)", 515];
        }

        else
        {
          return [NSString stringWithFormat:@"inferior already running (%ld)", 516];
        }
      }

      if (a1 <= 1024)
      {
        if (a1 == 519)
        {
          return @"Device connection lost.";
        }

        if (a1 == 1024)
        {
          return [NSString stringWithFormat:@"truncated data (%ld)", 1024];
        }
      }

      else
      {
        switch(a1)
        {
          case 1025:
            return [NSString stringWithFormat:@"invalid transport message payload (%ld)", 1025];
          case 1026:
            return [NSString stringWithFormat:@"unexpected transport message (%ld)", 1026];
          case 1280:
            return [NSString stringWithFormat:@"invalid function stream header (%ld)", 1280];
        }
      }
    }

    else
    {
      if (a1 <= 259)
      {
        if (a1 > 257)
        {
          if (a1 == 258)
          {
            return [NSString stringWithFormat:@"transport source cancelled (%ld)", 258];
          }

          else
          {
            return [NSString stringWithFormat:@"corrupt transport message header (%ld)", 259];
          }
        }

        else if (a1 == 256)
        {
          return [NSString stringWithFormat:@"invalid socket descriptor (%ld)", 256];
        }

        else
        {
          return [NSString stringWithFormat:@"invalid socket url (%ld)", 257];
        }
      }

      if (a1 > 511)
      {
        if (a1 == 512)
        {
          return [NSString stringWithFormat:@"guest app crashed (%ld)", 512];
        }

        if (a1 == 513)
        {
          return [NSString stringWithFormat:@"another capture session is active (%ld)", 513];
        }

        return [NSString stringWithFormat:@"capture session is already active (%ld)", 514];
      }

      if (a1 == 260)
      {
        return [NSString stringWithFormat:@"corrupt transport message attributes (%ld)", 260];
      }

      if (a1 == 261)
      {
        return [NSString stringWithFormat:@"message too large (%ld)", 261];
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      return [NSString stringWithFormat:@"invalid filename (%ld)", 1];
    case 2:
      return [NSString stringWithFormat:@"data is too large (%ld)", 2];
    case 3:
      return [NSString stringWithFormat:@"IO failure (%ld)", 3];
    case 4:
      return [NSString stringWithFormat:@"out of memory (%ld)", 4];
    case 5:
      v2 = 5;
      goto LABEL_90;
    case 6:
      v2 = 6;
LABEL_90:
      result = [NSString stringWithFormat:@"Unable to connect to the device. (%ld)", v2];
      break;
    case 7:
      result = [NSString stringWithFormat:@"read-only capture archive (%ld)", 7];
      break;
    case 8:
      result = [NSString stringWithFormat:@"truncated capture archive store (%ld)", 8];
      break;
    case 9:
      result = [NSString stringWithFormat:@"truncated capture archive index (%ld)", 9];
      break;
    case 10:
      result = [NSString stringWithFormat:@"invalid capture archive index (%ld)", 10];
      break;
    case 11:
      result = [NSString stringWithFormat:@"unknown capture archive index version (%ld)", 11];
      break;
    case 12:
      result = [NSString stringWithFormat:@"file exists in capture archive (%ld)", 12];
      break;
    case 13:
      result = [NSString stringWithFormat:@"file does not exists in capture archive (%ld)", 13];
      break;
    case 14:
      result = [NSString stringWithFormat:@"capture archive does not exist (%ld)", 14];
      break;
    case 15:
      result = [NSString stringWithFormat:@"missing capture archive index (%ld)", 15];
      break;
    case 16:
      result = [NSString stringWithFormat:@"invalid capture archive metadata (%ld)", 16];
      break;
    case 18:
      result = [NSString stringWithFormat:@"corrupted capture archive store (%ld)", 18];
      break;
    case 19:
      result = [NSString stringWithFormat:@"could not write capture archive metadata (%ld)", 19];
      break;
    case 20:
      result = [NSString stringWithFormat:@"capture archive has been closed (%ld)", 20];
      break;
    case 21:
      result = [NSString stringWithFormat:@"already tried to launch guest app (%ld)", 21];
      break;
    case 22:
      result = [NSString stringWithFormat:@"invalid launch dictionary (%ld)", 22];
      break;
    case 23:
      result = [NSString stringWithFormat:@"guest app not found (%ld)", 23];
      break;
    case 24:
      result = [NSString stringWithFormat:@"guest app launch timed out (%ld)", 24];
      break;
    case 25:
      result = [NSString stringWithFormat:@"invalid guest app session (%ld)", 25];
      break;
    case 26:
      result = [NSString stringWithFormat:@"guest app has not been launched yet (%ld)", 26];
      break;
    case 28:
      result = [NSString stringWithFormat:@"did not find interpose dylib (%ld)", 28];
      break;
    case 29:
      result = [NSString stringWithFormat:@"failed to launch guest app (%ld)", 29];
      break;
    case 30:
      result = [NSString stringWithFormat:@"guest app terminated (%ld)", 30];
      break;
    case 31:
      result = [NSString stringWithFormat:@"lost transport connection (%ld)", 31];
      break;
    case 32:
      result = [NSString stringWithFormat:@"invalid transport (%ld)", 32];
      break;
    case 33:
      result = [NSString stringWithFormat:@"transport is not connected (%ld)", 33];
      break;
    case 34:
      result = [NSString stringWithFormat:@"message has already been sent (%ld)", 34];
      break;
    case 35:
      result = [NSString stringWithFormat:@"in-reply-to message has not been sent (%ld)", 35];
      break;
    case 36:
      result = [NSString stringWithFormat:@"failed to encode message attributes (%ld)", 36];
      break;
    case 37:
      result = [NSString stringWithFormat:@"connect timed out (%ld)", 37];
      break;
    case 38:
      result = [NSString stringWithFormat:@"undefined socket path (%ld)", 38];
      break;
    case 39:
      result = [NSString stringWithFormat:@"socket path is too long (%ld)", 39];
      break;
    case 40:
      result = [NSString stringWithFormat:@"message originated from this transport (%ld)", 40];
      break;
    case 41:
      result = [NSString stringWithFormat:@"initialized function stream with immutable data but swapping is required (%ld)", 41];
      break;
    case 42:
      result = [NSString stringWithFormat:@"transfer refused (%ld)", 42];
      break;
    case 43:
      result = [NSString stringWithFormat:@"protocol error (%ld)", 43];
      break;
    case 44:
      result = [NSString stringWithFormat:@"path outside destination root (%ld)", 44];
      break;
    case 45:
      result = [NSString stringWithFormat:@"transfer aborted (%ld)", 45];
      break;
    case 46:
      result = [NSString stringWithFormat:@"unknown item type (%ld)", 46];
      break;
    default:
      return 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::find<long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
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
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void sub_6FF8(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      *(v2 + 40) = 0;
      objc_end_catch();
    }

    JUMPOUT(0x6F54);
  }

  JUMPOUT(0x6FE8);
}

void sub_99EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::VMBuffer::resize(GPUTools::VMBuffer *this, vm_size_t a2)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = *(this + 2);
  result = GPUTools::VMBuffer::_alloc(this, a2, v5);
  if (result)
  {
    if (v4 >= *(this + 1))
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = v4;
    }

    if (vm_copy(mach_task_self_, v3, v7, *this))
    {
      GPUTools::VMBuffer::_dealloc(this);
      return 0;
    }

    else
    {
      vm_deallocate(mach_task_self_, v3, vm_page_size + v4 + v4 * v5);
      return 1;
    }
  }

  return result;
}

uint64_t GPUTools::VMBuffer::_alloc(GPUTools::VMBuffer *this, vm_size_t a2, uint64_t a3)
{
  v3 = 0;
  address = 0;
  if (3 * vm_page_size <= a2)
  {
    v4 = (a2 + vm_page_size - 1) & -vm_page_size;
  }

  else
  {
    v4 = 3 * vm_page_size;
  }

  v5 = v4 + v4 * a3;
  do
  {
    v6 = mach_task_self_;
    v7 = vm_page_size + v5;
    if (!vm_allocate(mach_task_self_, &address, vm_page_size + v5, 1))
    {
      v8 = address;
      v9 = address + v4;
      target_address = address + v4;
      v10 = a3;
      if (a3)
      {
        while (!vm_deallocate(v6, v9, v4))
        {
          cur_protection = 0;
          if (vm_remap(v6, &target_address, v4, 0, 0, v6, address, 0, &cur_protection + 1, &cur_protection, 2u))
          {
            break;
          }

          v9 = target_address + v4;
          target_address += v4;
          if (!--v10)
          {
            v8 = address;
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if (!vm_protect(v6, v8 + v7 - vm_page_size, vm_page_size, 0, 0))
        {
          *this = address;
          *(this + 1) = v4;
          *(this + 2) = a3;
          return 1;
        }
      }
    }

    vm_deallocate(mach_task_self_, address, vm_page_size + v5);
    ++v3;
  }

  while (v3 != 5);
  return 0;
}

vm_address_t *GPUTools::VMBuffer::_dealloc(vm_address_t *this)
{
  if (*this)
  {
    v1 = this;
    this = vm_deallocate(mach_task_self_, *this, vm_page_size + this[1] + this[1] * this[2]);
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
  }

  return this;
}

void sub_C8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t smt_poll_thread_entry(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  snprintf(__str, 0x40uLL, "gputools.smt_poll.%p", a1);
  pthread_setname_np(__str);
  if ((a1[3] & 1) == 0)
  {
    do
    {
      dispatch_sync(v2, v3);
      usleep(0x1F40u);
    }

    while (*(a1 + 24) != 1);
  }

  return 0;
}

void sub_D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DYErrorFromDictionary(NSDictionary *a1)
{
  result = [(NSDictionary *)a1 objectForKey:@"error domain"];
  if (result)
  {
    v3 = result;
    v4 = [-[NSDictionary objectForKey:](a1 objectForKey:{@"error code", "integerValue"}];
    v5 = [NSDictionary dictionaryWithObject:[(NSDictionary *)a1 objectForKey:@"error description"] forKey:NSLocalizedDescriptionKey];

    return [GTError_capture errorWithDomain:v3 code:v4 userInfo:v5];
  }

  return result;
}

NSDictionary *DYDictionaryFromError(NSDictionary *result)
{
  if (result)
  {
    return [NSDictionary dictionaryWithObjectsAndKeys:[(NSDictionary *)result domain], @"error domain", [NSNumber numberWithInteger:[(NSDictionary *)result code]], @"error code", [(NSDictionary *)result localizedDescription], @"error description", 0];
  }

  return result;
}

unint64_t GPUTools::VMBuffer::round_size(unint64_t this)
{
  if (3 * vm_page_size <= this)
  {
    return (this + vm_page_size - 1) & -vm_page_size;
  }

  else
  {
    return 3 * vm_page_size;
  }
}

GPUTools::VMBuffer *GPUTools::VMBuffer::VMBuffer(GPUTools::VMBuffer *this, vm_size_t a2, uint64_t a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 5) = 1;
  GPUTools::VMBuffer::_dealloc(this);
  GPUTools::VMBuffer::_alloc(this, a2, a3);
  return this;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 5) = 1;
  GPUTools::VMBuffer::_dealloc(this);
  GPUTools::VMBuffer::_alloc(this, a2, a3);
  return this;
}

uint64_t GPUTools::VMBuffer::alloc(vm_address_t *this, vm_size_t a2, uint64_t a3)
{
  GPUTools::VMBuffer::_dealloc(this);

  return GPUTools::VMBuffer::_alloc(this, a2, a3);
}

void GPUTools::VMBuffer::~VMBuffer(vm_address_t *this)
{
  GPUTools::VMBuffer::_dealloc(this);
}

{
  GPUTools::VMBuffer::_dealloc(this);
}

vm_address_t *GPUTools::VMBuffer::operator=(vm_address_t *this, uint64_t a2)
{
  if (this != a2)
  {
    GPUTools::VMBuffer::_dealloc(this);
    *this = *a2;
    *(this + 1) = *(a2 + 16);
    *(this + 2) = *(a2 + 32);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

GTBaseSocketTransport_capture *DYCreateTransportSocket(uint64_t a1)
{
  v2 = objc_alloc_init(GTBaseSocketTransport_capture);
  [(GTBaseSocketTransport_capture *)v2 runWithSocket:a1];
  return v2;
}

id DYCreateTransportC(uint64_t a1)
{
  if (!a1)
  {
    if (s_logUsingOsLog == 1)
    {
      v9 = gt_tagged_log(16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v10 = "fail: [create_transport] GT_HOST_URL environment not set";
        v11 = v9;
        v12 = 2;
        goto LABEL_24;
      }
    }

    else
    {
      v14 = __stderrp;
      [[NSString stringWithFormat:?]];
      fprintf(v14, "%s\n");
    }

    goto LABEL_29;
  }

  v2 = [NSString stringWithCString:a1 encoding:4];
  if (!v2)
  {
    __assert_rtn("GTTransport *DYCreateTransportC(const char *)", "", 0, "url_str");
  }

  v3 = [NSURL URLWithString:v2];
  if (!v3)
  {
    if (s_logUsingOsLog == 1)
    {
      v13 = gt_tagged_log(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v18 = a1;
        v10 = "fail: [create_transport] failed to parse GT_HOST_URL: %s";
LABEL_23:
        v11 = v13;
        v12 = 12;
LABEL_24:
        _os_log_fault_impl(&dword_0, v11, OS_LOG_TYPE_FAULT, v10, buf, v12);
        abort();
      }

LABEL_29:
      abort();
    }

    v15 = __stderrp;
    v16 = [NSString stringWithFormat:@"fail: [create_transport] failed to parse GT_HOST_URL: %s", a1];
LABEL_28:
    [(NSString *)v16 UTF8String];
    fprintf(v15, "%s\n");
    goto LABEL_29;
  }

  v4 = v3;
  v5 = [(NSURL *)v3 scheme];
  if (![(NSString *)v5 isEqualToString:@"null"])
  {
    if ([(NSString *)v5 isEqualToString:@"file"])
    {
      v7 = off_2F0BE0;
    }

    else
    {
      if (![(NSString *)v5 isEqualToString:@"dysmt"]&& ![(NSString *)v5 isEqualToString:@"dysmtdeferred"])
      {
LABEL_20:
        if (s_logUsingOsLog == 1)
        {
          v13 = gt_tagged_log(16);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v18 = a1;
            v10 = "fail: [create_transport] failed to create transport; GT_HOST_URL: %s";
            goto LABEL_23;
          }

          goto LABEL_29;
        }

        v15 = __stderrp;
        v16 = [NSString stringWithFormat:@"fail: [create_transport] failed to create transport; GT_HOST_URL: %s", a1];
        goto LABEL_28;
      }

      v7 = off_2F0BD8;
    }

    v6 = [objc_alloc(*v7) initWithMode:1];
    [v6 setUrl:v4];
    if (v6)
    {
      return v6;
    }

    goto LABEL_20;
  }

  return 0;
}

void *GTTraceDispatch_create(apr_pool_t *parent, uint64_t a2)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, parent, 0, 0);
  v3 = newpool;
  result = apr_palloc(newpool, 0x28uLL);
  if (result)
  {
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
  }

  *result = v3;
  result[1] = a2;
  return result;
}

void GTTraceDispatch_sort()
{
  v0 = __chkstk_darwin();
  v1 = *v0;
  v2 = *(v0 + 8);
  v289 = v2[90];
  v3 = v2[2];
  ht = v2[3];
  v298 = v2[94];
  v265 = v2[93];
  newpool = 0;
  apr_pool_create_ex(&newpool, v1, 0, 0);
  v4 = newpool;
  v292 = apr_array_copy(newpool, *(*(v0 + 8) + 728));
  v284 = apr_hash_make(v4);
  v5 = *(v0 + 8);
  v271 = v0;
  v264 = v3;
  if (*(v5 + 620) >= 1)
  {
    v6 = 0;
    v7 = *(v5 + 376);
    do
    {
      v8 = *find_entry(v3, (*(*(v7 + 24) + 8 * v6) + 8), 8uLL, 0);
      if (v8)
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = apr_palloc(*v284, 8uLL);
      *v10 = v9;
      apr_hash_set(v284, v10, 8, &dword_0 + 1);
      ++v6;
      v5 = *(v0 + 8);
    }

    while (v6 < *(v5 + 620));
  }

  v11 = *(v5 + 16);
  v12 = *(v5 + 752);
  v13 = apr_array_make(v4, 4, 8);
  v14 = *(v5 + 40) + *(v5 + 48) - 1;
  GTMTLSMContext_getObjects(*(v12 + 152), v14, v13);
  GTMTLSMContext_getObjects(*(v12 + 160), v14, v13);
  dst = *(v5 + 720);
  v15 = apr_array_make(v4, 4, 64);
  v16 = v265;
  if (v13->nelts >= 1)
  {
    v17 = 0;
    v301 = v11;
    do
    {
      v18 = *&v13->elts[8 * v17];
      if (v18)
      {
        v18 = *(v18 + 8);
      }

      v316[0] = v18;
      entry = find_entry(v11, v316, 8uLL, 0);
      if (*entry)
      {
        v20 = *(*entry + 32);
        if (v20)
        {
          v21 = *(v20 + 32);
          if (v21)
          {
            v22 = 0;
            while (1)
            {
              v23 = atomic_load((v21 + 4));
              v24 = v22 + (v23 >> 6) - 1;
              if (v24 > 0)
              {
                break;
              }

              v21 = *(v21 + 40);
              v22 = v24;
              if (!v21)
              {
                v22 = v24;
                goto LABEL_20;
              }
            }

            v24 = 0;
LABEL_20:
            v25 = v22 | (v24 << 32);
          }

          else
          {
            v25 = 0;
          }

          while (v21)
          {
            v26 = v21 + 64 + ((HIDWORD(v25) - v25) << 6);
            if ((*(v26 + 15) & 8) == 0)
            {
              break;
            }

            if (*v26 > v14)
            {
              v27 = *(v26 + 8);
              if (v27 == -15490 || v27 == -15975)
              {
                v29 = apr_array_push(v15);
                v30 = *v26;
                v31 = *(v26 + 16);
                v32 = *(v26 + 48);
                v29[2] = *(v26 + 32);
                v29[3] = v32;
                *v29 = v30;
                v29[1] = v31;
                if (v14 <= *v26)
                {
                  v14 = *v26;
                }
              }
            }

            v33 = atomic_load((v21 + 4));
            v34 = v25 + (v33 >> 6);
            v35 = (HIDWORD(v25) + 1);
            v25 = (v35 << 32) | v25;
            if (v35 == v34 - 1)
            {
              v25 = (v35 << 32) | v35;
              v21 = *(v21 + 40);
            }
          }

          v16 = v265;
          v11 = v301;
        }
      }

      ++v17;
    }

    while (v17 < v13->nelts);
    v4 = newpool;
  }

  qsort(v15->elts, v15->nelts, v15->elt_size, CompareGTTraceFunc);
  apr_array_cat(dst, v15);
  *(v5 + 48) = v14 - *(v5 + 40) + 1;
  v282 = apr_array_make(*v271, *(v289 + 12), *(v289 + 8));
  v305 = *(*(v271 + 8) + 40);
  v36 = apr_array_make(v4, v292->nelts, 16);
  nelts = v292->nelts;
  if (nelts >= 1)
  {
    v38 = nelts - 1;
    do
    {
      *apr_array_push(v36) = *&v292->elts[8 * v38];
      v39 = v38-- + 1;
    }

    while (v39 > 1);
  }

  v285 = v36;
  v40 = *(*(v271 + 8) + 728);
  arr = apr_array_make(v4, 1, 16);
  if (*(v40 + 12) >= 1)
  {
    v41 = 0;
    do
    {
      v316[0] = GTTraceDump_getCommandBufferQueue(v16, *(*(v40 + 24) + 8 * v41));
      v42 = find_entry(v264, v316, 8uLL, 0);
      if (GTFenum_getConstructorType(*(*(*(*v42 + 32) + 32) + 72)) == 92)
      {
        v43 = v316[0];
        v44 = arr->nelts;
        if (v44 < 1)
        {
LABEL_46:
          *apr_array_push(arr) = v43;
        }

        else
        {
          elts = arr->elts;
          while (1)
          {
            v46 = *elts;
            elts += 16;
            if (v46 == v316[0])
            {
              break;
            }

            if (!--v44)
            {
              goto LABEL_46;
            }
          }
        }
      }

      ++v41;
    }

    while (v41 < *(v40 + 12));
  }

  v47 = GTEventTracker_make(v264, ht, v16, v298, v4);
  v48 = *(*(v271 + 8) + 728);
  if (*(v48 + 12) >= 1)
  {
    v49 = 0;
    do
    {
      v316[0] = *(*(v48 + 24) + 8 * v49);
      v50 = *(*find_entry(v264, v316, 8uLL, 0) + 32);
      ConstructorType = GTFenum_getConstructorType(*(*(v50 + 32) + 72));
      if (ConstructorType == 51 || ConstructorType == 25)
      {
        v53 = *(v50 + 32);
        if (v53)
        {
          v54 = 0;
          while (1)
          {
            v55 = atomic_load((v53 + 4));
            v56 = v54 + (v55 >> 6) - 1;
            if (v56 > 0)
            {
              break;
            }

            v53 = *(v53 + 40);
            v54 = v56;
            if (!v53)
            {
              v54 = v56;
              goto LABEL_62;
            }
          }

          v56 = 0;
LABEL_62:
          v57 = v54 | (v56 << 32);
        }

        else
        {
          v57 = 0;
        }

        while (v53)
        {
          v58 = v53 + 64 + ((HIDWORD(v57) - v57) << 6);
          if ((*(v58 + 15) & 8) == 0)
          {
            break;
          }

          GTEventTracker_processFunction(v47, v58);
          v59 = atomic_load((v53 + 4));
          v60 = v57 + (v59 >> 6);
          v61 = (HIDWORD(v57) + 1);
          v57 = (v61 << 32) | v57;
          if (v61 == v60 - 1)
          {
            v57 = (v61 << 32) | v61;
            v53 = *(v53 + 40);
          }
        }
      }

      ++v49;
      v48 = *(*(v271 + 8) + 728);
    }

    while (v49 < *(v48 + 12));
  }

  v62 = arr;
  if (arr->nelts >= 1)
  {
    v63 = 0;
    do
    {
      v64 = *(*(*find_entry(v264, &v62->elts[16 * v63], 8uLL, 0) + 32) + 32);
      if (v64)
      {
        v65 = 0;
        while (1)
        {
          v66 = atomic_load((v64 + 4));
          v67 = v65 + (v66 >> 6) - 1;
          if (v67 > 0)
          {
            break;
          }

          v64 = *(v64 + 40);
          v65 = v67;
          if (!v64)
          {
            v65 = v67;
            goto LABEL_77;
          }
        }

        v67 = 0;
LABEL_77:
        v68 = v65 | (v67 << 32);
      }

      else
      {
        v68 = 0;
      }

      while (v64)
      {
        v69 = v64 + 64 + ((HIDWORD(v68) - v68) << 6);
        if ((*(v69 + 15) & 8) == 0)
        {
          break;
        }

        v70 = *(v271 + 8);
        v71 = *(v70 + 40);
        v72 = *(v70 + 48) + v71;
        if (v71 <= *v69 && v72 > *v69)
        {
          GTEventTracker_processFunction(v47, v69);
        }

        v74 = atomic_load((v64 + 4));
        v75 = v68 + (v74 >> 6);
        v76 = (HIDWORD(v68) + 1);
        v68 = (v76 << 32) | v68;
        if (v76 == v75 - 1)
        {
          v68 = (v76 << 32) | v76;
          v64 = *(v64 + 40);
        }
      }

      ++v63;
      v62 = arr;
    }

    while (v63 < arr->nelts);
  }

  v77 = GTEventTracker_makeFrom(v47);
  LogForTag = GTCoreLog_getLogForTag(7u);
  GTCoreLog_enabled(LogForTag);
  v79 = *(v271 + 8);
  pool = 0;
  apr_pool_create_ex(&pool, *v79, 0, 0);
  v80 = *(v79 + 24);
  v81 = pool;
  v299 = apr_hash_make(pool);
  hta = apr_hash_make(v81);
  v82 = apr_hash_make(*v79);
  v83 = *(v79 + 720);
  v84 = v265;
  v85 = v285;
  v283 = v82;
  if (*(v83 + 12) <= 0)
  {
    v88 = v282;
  }

  else
  {
    v86 = v82;
    v87 = 0;
    v88 = v282;
    v290 = v79;
    v293 = v80;
    do
    {
      v89 = *(v83 + 24) + (v87 << 6);
      v90 = *(v89 + 8);
      ReceiverType = GTFenum_getReceiverType(v90);
      if (ReceiverType == 88)
      {
        if ((v90 + 15181) < 4 || v90 == -14848)
        {
          v302 = v89;
          v307 = GTTraceFunc_targetContext(v89, v80);
          v93 = *find_entry(v299, &v307, 8uLL, 0);
          if (!v93 || (v94 = *(v93 + 32)) == 0)
          {
            v94 = apr_palloc(*v299, 0x6B8uLL);
            v95 = v307;
            v96 = *v302;
            v97 = *(v79 + 16);
            v98 = *(v79 + 24);
            bzero(v94 + 4, 0x6B4uLL);
            *v94 = 88;
            *(v94 + 3) = -1;
            v316[0] = v95;
            v99 = *(*(*find_entry(v97, v316, 8uLL, 0) + 32) + 32);
            if (v99)
            {
              v100 = 0;
              while (1)
              {
                v101 = atomic_load((v99 + 4));
                v102 = v100 + (v101 >> 6) - 1;
                if (v102 > 0)
                {
                  break;
                }

                v99 = *(v99 + 40);
                v100 = v102;
                if (!v99)
                {
                  v100 = v102;
                  goto LABEL_133;
                }
              }

              v102 = 0;
LABEL_133:
              v121 = v100 | (v102 << 32);
            }

            else
            {
              v121 = 0;
            }

            while (v99)
            {
              v123 = v99 + 64 + ((HIDWORD(v121) - v121) << 6);
              if ((*(v123 + 15) & 8) == 0 || *v123 >= v96)
              {
                break;
              }

              GTMTL4SMArgumentTable_processTraceFuncWithMap(v94, v98, v123);
              v124 = atomic_load((v99 + 4));
              v125 = v121 + (v124 >> 6);
              v126 = (HIDWORD(v121) + 1);
              v121 = (v126 << 32) | v121;
              if (v126 == v125 - 1)
              {
                v121 = (v126 << 32) | v126;
                v99 = *(v99 + 40);
              }
            }

            v127 = apr_palloc(*v299, 8uLL);
            *v127 = v307;
            apr_hash_set(v299, v127, 8, v94);
            v84 = v265;
            v85 = v285;
            v86 = v283;
            v79 = v290;
            v80 = v293;
          }

          GTMTL4SMArgumentTable_processTraceFuncWithMap(v94, v80, v302);
        }
      }

      else if (v90 == -15086 || v90 == -14888 || v90 == -15041)
      {
        v105 = GTTraceFunc_argumentBytesWithMap(v89, *(v89 + 13), v80);
        v106 = *find_entry(hta, v105, 8uLL, 0);
        if (!v106 || (v107 = *(v106 + 32)) == 0)
        {
          v107 = apr_palloc(*hta, 0x790uLL);
          dsta = v105;
          v108 = *v105;
          v303 = v89;
          v109 = *v89;
          v110 = *(v79 + 16);
          v111 = *(v79 + 24);
          bzero(v107, 0x790uLL);
          v316[0] = v108;
          v112 = *(*(*find_entry(v110, v316, 8uLL, 0) + 32) + 32);
          if (v112)
          {
            v113 = 0;
            while (1)
            {
              v114 = atomic_load((v112 + 4));
              v115 = v113 + (v114 >> 6) - 1;
              if (v115 > 0)
              {
                break;
              }

              v112 = *(v112 + 40);
              v113 = v115;
              if (!v112)
              {
                v113 = v115;
                goto LABEL_142;
              }
            }

            v115 = 0;
LABEL_142:
            v122 = v113 | (v115 << 32);
          }

          else
          {
            v122 = 0;
          }

          while (v112)
          {
            v128 = v112 + 64 + ((HIDWORD(v122) - v122) << 6);
            if ((*(v128 + 15) & 8) == 0 || *v128 >= v109)
            {
              break;
            }

            GTMTL4SMCommandEncoder_processTraceFunc(v107, v128, v111);
            v129 = atomic_load((v112 + 4));
            v130 = v122 + (v129 >> 6);
            v131 = (HIDWORD(v122) + 1);
            v122 = (v131 << 32) | v122;
            if (v131 == v130 - 1)
            {
              v122 = (v131 << 32) | v131;
              v112 = *(v112 + 40);
            }
          }

          apr_hash_set(hta, dsta, 8, v107);
          v84 = v265;
          v86 = v283;
          v79 = v290;
          v80 = v293;
          v89 = v303;
        }

        GTMTL4SMCommandEncoder_processTraceFunc(v107, v89, v80);
        v85 = v285;
      }

      else if ((ReceiverType - 95) <= 0xA && ((0x409u >> (ReceiverType - 95)) & 1) != 0 && GTFenum_isArgumentTableSnapshotCall(v90))
      {
        v316[0] = GTTraceFunc_targetContext(v89, v80);
        v116 = find_entry(hta, v316, 8uLL, 0);
        if (*v116)
        {
          v117 = *(*v116 + 32);
          if (v117)
          {
            v118 = *v117;
            if (*v117 == 95 || v118 == 105)
            {
              GTTraceDispatch_setArgumentTableStateForGPUCommandStage(v86, v299, *v89, *(v117 + 8), 0);
            }

            else if (v118 == 98)
            {
              v119 = 0;
              v120 = v117 + 16;
              do
              {
                GTTraceDispatch_setArgumentTableStateForGPUCommandStage(v86, v299, *v89, *&v120[2 * v119], v119);
                ++v119;
              }

              while (v119 != 5);
            }
          }
        }

        v80 = v293;
      }

      ++v87;
      v83 = *(v79 + 720);
    }

    while (v87 < *(v83 + 12));
    v81 = pool;
  }

  apr_pool_destroy(v81);
  v132 = apr_hash_make(newpool);
  v262 = *(*(v271 + 8) + 48) + *(*(v271 + 8) + 40);
  v263 = v262 - 1;
  if (*(v85 + 12))
  {
    dstb = v77;
    v281 = v132;
    while (1)
    {
      NextBufferToProcess = FindNextBufferToProcess(v85, v77, *(v271 + 8));
      if (!NextBufferToProcess)
      {
        v134 = *(v85 + 12);
        v135 = v134 + 1;
        v136 = 16 * v134 - 16;
        while (--v135 >= 1)
        {
          CommandBufferCommitIndex = GTTraceDump_getCommandBufferCommitIndex(v84, *(*(v285 + 24) + v136));
          if (CommandBufferCommitIndex > v305)
          {
            v138 = CommandBufferCommitIndex;
            ProcessResourceAPIs(v88, v305, CommandBufferCommitIndex - v305, v77, *(v271 + 8));
            v305 = v138;
          }

          v136 -= 16;
          NextBufferToProcess = FindNextBufferToProcess(v285, v77, *(v271 + 8));
          if (NextBufferToProcess)
          {
            goto LABEL_167;
          }
        }

        if (v305 < v263)
        {
          ProcessResourceAPIs(v88, v305, v262 - v305, v77, *(v271 + 8));
        }

        v305 = v262 - 1;
        NextBufferToProcess = FindNextBufferToProcess(v285, v77, *(v271 + 8));
        if (!NextBufferToProcess)
        {
          goto LABEL_312;
        }
      }

LABEL_167:
      v316[0] = *NextBufferToProcess;
      v139 = NextBufferToProcess;
      v140 = *(*find_entry(v84, v316, 8uLL, 0) + 32);
      v141 = *v140;
      v267 = v139;
      v142 = *find_entry(v264, v139, 8uLL, 0);
      if (!v142)
      {
        break;
      }

      v143 = *(v142 + 32);
      if (!v143)
      {
        goto LABEL_173;
      }

      v144 = *(v143 + 32);
      if (v144)
      {
        v145 = (v144 + 64);
      }

      else
      {
        v145 = 0;
      }

LABEL_174:
      if (GTFenum_getReceiverType(*(v145 + 2)) == 91)
      {
        v146 = arr->nelts;
        if (v146 < 1)
        {
LABEL_179:
          v150 = 0;
        }

        else
        {
          v147 = 0;
          v148 = arr->elts;
          while (1)
          {
            v149 = *v148;
            v148 += 16;
            if (v149 == v140[1])
            {
              break;
            }

            if (v146 == ++v147)
            {
              goto LABEL_179;
            }
          }

          v150 = &arr->elts[16 * v147];
        }

        v161 = *(v271 + 8);
        v162 = v150;
        v163 = *(*(*find_entry(v161[2], v150, 8uLL, 0) + 32) + 32);
        v270 = v162;
        if (v163)
        {
          v164 = 0;
          v165 = *(v162 + 2);
          while (1)
          {
            v166 = atomic_load((v163 + 4));
            v167 = v164 + (v166 >> 6) - 1;
            if (v167 > v165)
            {
              break;
            }

            v163 = *(v163 + 40);
            v164 = v167;
            if (!v163)
            {
              v165 = v167;
              goto LABEL_219;
            }
          }

          LODWORD(v167) = v164;
LABEL_219:
          v273 = v167 | (v165 << 32);
        }

        else
        {
          v273 = 0;
        }

        v291 = v161;
LABEL_221:
        v268 = v163;
        v269 = v163 + 64;
        while (1)
        {
          if (!v163)
          {
            goto LABEL_311;
          }

          v274 = v269 + ((HIDWORD(v273) - v273) << 6);
          if ((*(v274 + 15) & 8) == 0)
          {
            goto LABEL_311;
          }

          v185 = v161[5];
          if (v185 <= *v274 && v161[6] + v185 > *v274)
          {
            break;
          }

LABEL_305:
          ++v270[1];
          v163 = v268;
          v255 = atomic_load((v268 + 4));
          v256 = v273 + (v255 >> 6);
          v257 = (HIDWORD(v273) + 1);
          v273 = (v257 << 32) | v273;
          if (v257 == v256 - 1)
          {
            v273 = (v257 << 32) | v257;
            v163 = *(v268 + 40);
            goto LABEL_221;
          }
        }

        v187 = v269 + ((HIDWORD(v273) - v273) << 6);
        GTEventTracker_processFunction(v77, v274);
        if (GTEventTracker_isBlocked(v77, *v270))
        {
          v270[1] = v273 >> 32;
        }

        else
        {
          if (*v274 > v305)
          {
            ProcessResourceAPIs(v88, v305, *v274 - v305, v77, v161);
            v187 = v269 + ((HIDWORD(v273) - v273) << 6);
            v305 = *v274;
          }

          v188 = *(v187 + 8);
          v190 = (v188 + 14847) <= 0xE && ((1 << (v188 - 1)) & 0x4003) != 0 || v188 == -15158;
          if (!v190 || !*(GTTraceFunc_argumentBytesWithMap(v274, *(v274 + 13), v161[3]) + 1))
          {
            goto LABEL_304;
          }

          v275 = GTTraceDump_getCommandBufferCommitIndex(v161[93], *v267);
          if (*v274 == v275)
          {
            v191 = *(v285 + 12);
            if (v191 < 1)
            {
LABEL_304:
              v251 = apr_array_push(v88);
              v252 = *(v274 + 48);
              v254 = *v274;
              v253 = *(v274 + 16);
              v251[2] = *(v274 + 32);
              v251[3] = v252;
              *v251 = v254;
              v251[1] = v253;
              goto LABEL_305;
            }

            while (2)
            {
              while (1)
              {
                v276 = v191 - 1;
                v192 = (*(v285 + 24) + 16 * (v191 - 1));
                v193 = v191;
                v194 = GTTraceDump_getCommandBufferCommitIndex(v161[93], *v192);
                if (v194 == v275)
                {
                  break;
                }

                if (v193 >= 2)
                {
                  v191 = v276;
                  if (v194 <= v275)
                  {
                    continue;
                  }
                }

                goto LABEL_304;
              }

              v272 = v193;
              v195 = v161[2];
              v316[0] = GetCommandBufferParentStreamRef(v195, v161[3], *v192);
              v196 = *find_entry(v195, v316, 8uLL, 0);
              if (v196)
              {
                v197 = *(v196 + 32);
              }

              else
              {
                v197 = 0;
              }

              v198 = apr_palloc(*v284, 8uLL);
              *v198 = v197;
              v199 = *find_entry(v284, v198, 8uLL, 0);
              if (!v199 || !*(v199 + 32))
              {
                apr_hash_set(v284, v198, 8, &dword_0 + 1);
                if (v197)
                {
                  v200 = *(v197 + 4);
                  if (v200 && (*(v200 + 79) & 8) != 0)
                  {
                    v197 = (v200 + 64);
                  }

                  else
                  {
                    v197 = 0;
                  }
                }

                v201 = apr_array_push(v88);
                v202 = v197[3];
                v204 = *v197;
                v203 = v197[1];
                v201[2] = v197[2];
                v201[3] = v202;
                *v201 = v204;
                v201[1] = v203;
              }

              v205 = *find_entry(v161[2], v192, 8uLL, 0);
              if (v205)
              {
                v206 = *(v205 + 32);
                if (v206)
                {
                  v207 = *(v206 + 32);
                  if (v207)
                  {
                    if ((*(v207 + 79) & 8) != 0)
                    {
                      v208 = (v207 + 64);
                      goto LABEL_265;
                    }
                  }
                }
              }

              else
              {
                v206 = 0;
              }

              v208 = 0;
LABEL_265:
              v209 = apr_array_push(v88);
              v210 = *v208;
              v211 = v208[1];
              v212 = v208[3];
              v209[2] = v208[2];
              v209[3] = v212;
              *v209 = v210;
              v209[1] = v211;
              v213 = *(v206 + 32);
              if (v213)
              {
                v214 = 0;
                while (1)
                {
                  v215 = atomic_load((v213 + 4));
                  v216 = v214 + (v215 >> 6) - 1;
                  if (v216 > 1)
                  {
                    break;
                  }

                  v213 = *(v213 + 40);
                  v214 = v216;
                  if (!v213)
                  {
                    v214 = v216;
                    goto LABEL_272;
                  }
                }

                v216 = 1;
LABEL_272:
                v217 = v214 | (v216 << 32);
              }

              else
              {
                v217 = 0;
              }

              v277 = v192;
LABEL_274:
              v278 = v213;
              v279 = v213 + 64;
              while (v213)
              {
                v218 = v279 + ((0xFFFFFFFF00000001 * v217) >> 32 << 6);
                v219 = *(v218 + 15);
                if ((*(v218 + 15) & 8) == 0)
                {
                  break;
                }

                v280 = v217;
                GTEventTracker_processFunction(v77, v218);
                v220 = apr_array_push(v88);
                v221 = *(v218 + 48);
                v223 = *v218;
                v222 = *(v218 + 16);
                v220[2] = *(v218 + 32);
                v220[3] = v221;
                *v220 = v223;
                v220[1] = v222;
                v224 = GTFenum_getConstructorType(*(v218 + 8)) - 95;
                if (v224 <= 0xA && ((0x409u >> v224) & 1) != 0)
                {
                  bzero(v316, 0x790uLL);
                  GTMTL4SMCommandEncoder_processTraceFunc(v316, v218, v161[3]);
                  v225 = v161[2];
                  pool = v316[1];
                  v226 = *(*(*find_entry(v225, &pool, 8uLL, 0) + 32) + 32);
                  if (v226)
                  {
                    v227 = 0;
                    while (1)
                    {
                      v228 = atomic_load((v226 + 4));
                      v229 = v227 + (v228 >> 6) - 1;
                      if (v229 > 1)
                      {
                        break;
                      }

                      v226 = *(v226 + 40);
                      v227 = v229;
                      if (!v226)
                      {
                        v227 = v229;
                        goto LABEL_286;
                      }
                    }

                    v229 = 1;
LABEL_286:
                    v230 = v227 | (v229 << 32);
                  }

                  else
                  {
                    v230 = 0;
                  }

LABEL_287:
                  v294 = v226;
                  htb = (v226 + 64);
                  while (v226)
                  {
                    v231 = htb + 64 * (HIDWORD(v230) - v230);
                    if ((v231[15] & 8) == 0)
                    {
                      break;
                    }

                    v300 = HIDWORD(v230);
                    v304 = v230;
                    v232 = *(v231 + 2);
                    v233 = v88;
                    if (GTFenum_isArgumentTableSnapshotCall(v232))
                    {
                      if (GTFenum_getReceiverType(v232) == 98)
                      {
                        v234 = 0;
                        v233 = v282;
                        do
                        {
                          v235 = *v231;
                          pool = v282;
                          v309 = v285;
                          v310 = dstb;
                          v311 = v291;
                          v312 = v284;
                          v313 = &v305;
                          v314 = v283;
                          v315 = v281;
                          v236 = v234;
                          WriteArgumentTableForGPUCommandStage(&pool, v235, v234++);
                        }

                        while (v236 < 4);
                      }

                      else
                      {
                        v237 = *v231;
                        v233 = v282;
                        pool = v282;
                        v309 = v285;
                        v310 = dstb;
                        v311 = v291;
                        v312 = v284;
                        v313 = &v305;
                        v314 = v283;
                        v315 = v281;
                        WriteArgumentTableForGPUCommandStage(&pool, v237, 0);
                      }
                    }

                    v238 = apr_array_push(v233);
                    v239 = *(v231 + 3);
                    v241 = *v231;
                    v240 = *(v231 + 1);
                    v238[2] = *(v231 + 2);
                    v238[3] = v239;
                    *v238 = v241;
                    v238[1] = v240;
                    v226 = v294;
                    v242 = atomic_load((v294 + 4));
                    v243 = v304 + (v242 >> 6);
                    v244 = (v300 + 1);
                    v230 = (v244 << 32) | v304;
                    v88 = v233;
                    if (v244 == v243 - 1)
                    {
                      v230 = (v244 << 32) | v244;
                      v226 = *(v294 + 40);
                      goto LABEL_287;
                    }
                  }

                  v77 = dstb;
                  v161 = v291;
                  v192 = v277;
                }

                v213 = v278;
                v245 = atomic_load((v278 + 4));
                v246 = v280 + (v245 >> 6);
                v247 = (HIDWORD(v280) + 1);
                v217 = (v247 << 32) | v280;
                if (v247 == v246 - 1)
                {
                  v217 = (v247 << 32) | v247;
                  v213 = *(v278 + 40);
                  goto LABEL_274;
                }
              }

              v248 = *(v285 + 24);
              v249 = *(v285 + 8);
              v250 = *(v285 + 12) - 1;
              *(v285 + 12) = v250;
              memmove((v248 + v249 * ((v192 - v248) >> 4)), (v248 + v249 + v249 * ((v192 - v248) >> 4)), v249 * (v250 - ((v192 - v248) >> 4)));
              v191 = v276;
              if (v272 <= 1)
              {
                goto LABEL_304;
              }

              continue;
            }
          }

          if (*v274 <= v267[1])
          {
            goto LABEL_304;
          }
        }
      }

      else
      {
        v151 = v267[1];
        if (!v151)
        {
          if (v141 > v305)
          {
            ProcessResourceAPIs(v88, v305, v141 - v305, v77, *(v271 + 8));
            v305 = v141;
          }

          v152 = apr_array_push(v88);
          v153 = v145[3];
          v155 = *v145;
          v154 = v145[1];
          v152[2] = v145[2];
          v152[3] = v153;
          *v152 = v155;
          v152[1] = v154;
          v151 = v267[1] + 1;
          v267[1] = v151;
        }

        v156 = *(v143 + 32);
        if (v156)
        {
          v157 = 0;
          while (1)
          {
            v158 = atomic_load((v156 + 4));
            v159 = v157 + (v158 >> 6) - 1;
            if (v159 > v151)
            {
              break;
            }

            v156 = *(v156 + 40);
            v157 = v159;
            if (!v156)
            {
              v151 = v159;
              goto LABEL_198;
            }
          }

          LODWORD(v159) = v157;
LABEL_198:
          v160 = v159 | (v151 << 32);
        }

        else
        {
          v160 = 0;
        }

LABEL_199:
        v168 = v156 + 64;
        while (v156)
        {
          v169 = (v168 + ((HIDWORD(v160) - v160) << 6));
          if ((*(v169 + 15) & 8) == 0)
          {
            goto LABEL_308;
          }

          GTEventTracker_processFunction(v77, v168 + ((HIDWORD(v160) - v160) << 6));
          v170 = *(v169 + 2);
          if (v170 <= -15340)
          {
            v171 = v170 == -15991;
            v172 = -15749;
          }

          else
          {
            v171 = v170 == -15339 || v170 == -14842;
            v172 = -15308;
          }

          v173 = v171 || v170 == v172;
          if (v173 && GTEventTracker_isBlocked(v77, v140[1]))
          {
            v267[1] = v160 >> 32;
LABEL_308:
            if ((*(v168 + ((0xFFFFFFFF00000001 * v160) >> 32 << 6) + 15) & 8) != 0)
            {
              goto LABEL_311;
            }

            break;
          }

          v174 = apr_array_push(v88);
          v175 = v169[3];
          v177 = *v169;
          v176 = v169[1];
          v174[2] = v169[2];
          v174[3] = v175;
          *v174 = v177;
          v174[1] = v176;
          v178 = GTFenum_getConstructorType(*(v169 + 2));
          if (GTFenum_isMTLCommandEncoder(v178))
          {
            v179 = *(v271 + 8);
            v180 = *(v179 + 16);
            v181 = *(v179 + 24);
            bzero(v316, 0x2BA0uLL);
            GTMTLSMCommandEncoder_processTraceFunc(v316, (v168 + ((HIDWORD(v160) - v160) << 6)), v181);
            WriteCommandEncoder();
          }

          v182 = atomic_load((v156 + 4));
          v183 = v160 + (v182 >> 6);
          v184 = (HIDWORD(v160) + 1);
          v160 = (v184 << 32) | v160;
          if (v184 == v183 - 1)
          {
            v160 = (v184 << 32) | v184;
            v156 = *(v156 + 40);
            goto LABEL_199;
          }
        }

        v258 = *(v285 + 24);
        v259 = *(v285 + 8);
        v260 = *(v285 + 12) - 1;
        *(v285 + 12) = v260;
        memmove((v258 + v259 * ((v267 - v258) >> 4)), (v258 + v259 + v259 * ((v267 - v258) >> 4)), v259 * (v260 - ((v267 - v258) >> 4)));
      }

LABEL_311:
      v85 = v285;
      v84 = v265;
      if (!*(v285 + 12))
      {
        goto LABEL_312;
      }
    }

    v143 = 0;
LABEL_173:
    v145 = 0;
    goto LABEL_174;
  }

LABEL_312:
  v261 = GTCoreLog_getLogForTag(7u);
  GTCoreLog_enabled(v261);
  if (v305 < v263)
  {
    ProcessResourceAPIs(v88, v305, v262 - v305, v77, *(v271 + 8));
  }

  apr_pool_destroy(newpool);
  *(v271 + 16) = v88;
}

void GTTraceDispatch_setArgumentTableStateForGPUCommandStage(apr_pool_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = a4;
  if (a4)
  {
    v8 = *find_entry(a2, &v12, 8uLL, 0);
    if (v8 && (v9 = *(v8 + 32)) != 0)
    {
      v10 = apr_palloc(*a1, 0x6B8uLL);
      memcpy(v10, v9, 0x6B8uLL);
    }

    else
    {
      v10 = 0;
    }

    v11 = apr_palloc(*a1, 0x10uLL);
    *v11 = a3;
    v11[8] = a5;
    apr_hash_set(a1, v11, 9, v10);
  }
}

uint64_t FindNextBufferToProcess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 12);
  v7 = 16 * v6 - 16;
  while (v6 >= 1)
  {
    --v6;
    v8 = *(a1 + 24);
    CommandBufferQueue = GTTraceDump_getCommandBufferQueue(*(a3 + 744), *(v8 + v7));
    v7 -= 16;
    if (!GTEventTracker_isBlocked(a2, CommandBufferQueue))
    {
      return v8 + 16 * v6;
    }
  }

  return 0;
}

uint64_t ProcessResourceAPIs(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  arr = result;
  v7 = a5[3];
  v8 = a5[90];
  v9 = *(v8 + 12);
  if (v9 < 1)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 24);
    while (1)
    {
      v12 = *v11;
      v11 += 8;
      if (a2 <= v12)
      {
        break;
      }

      if (v9 == ++v10)
      {
        return result;
      }
    }
  }

  if (v10 < v9)
  {
    v13 = a2 + a3;
    for (i = v10 << 6; ; i += 64)
    {
      v15 = *(v8 + 24);
      v16 = v15 + i;
      if (v13 <= *(v15 + i))
      {
        return result;
      }

      FuncStreamRef = GTTraceFunc_getFuncStreamRef(v15 + i, a5[3]);
      v18 = a5[2];
      v31 = FuncStreamRef;
      result = find_entry(v18, &v31, 8uLL, 0);
      if (*result)
      {
        v19 = *(*result + 32);
        if (v19)
        {
          v20 = *(v19 + 32);
          if (v20)
          {
            if ((*(v20 + 79) & 8) != 0)
            {
              v21 = v20 + 64;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v15 + i;
          v23 = *(v15 + i + 8);
          if (v23 != -15490 && v23 != -15975)
          {
            goto LABEL_25;
          }

          v25 = *(v22 + 15);
          v26 = GTTraceFunc_argumentBytesWithMap(v16, *(v22 + 13), v7);
          if ((v25 & 0x40) == 0)
          {
            break;
          }

          result = GTEventTracker_isValueSignaled(a4, *v26, v26[1]);
          if ((result & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_28:
      v8 = a5[90];
      LODWORD(v10) = v10 + 1;
      if (*(v8 + 12) <= v10)
      {
        return result;
      }
    }

    GTEventTracker_processFunction(a4, v16);
    v23 = *(v22 + 8);
LABEL_25:
    result = GTFenum_getConstructorType(v23);
    if (result != 25 && ((v23 + 6144) > 0x29 || ((0x3806C9D5295uLL >> v23) & 1) == 0) && (((v23 + 15345) < 0x39) & (0x17C40BE00017E7FuLL >> (v23 - 15))) == 0 && result != 51 && ((v23 + 20474) > 0x36 || ((0x40000020020001uLL >> (v23 - 6)) & 1) == 0))
    {
      result = GTFenum_getReceiverType(v23);
      if (result != 88)
      {
        if (v21 && (result = GTFenum_isCreateResource(*(v21 + 8)), (result & 1) != 0) || v23 == -10168)
        {
          result = apr_array_push(arr);
          v27 = *(v16 + 48);
          v29 = *v16;
          v28 = *(v16 + 16);
          *(result + 32) = *(v16 + 32);
          *(result + 48) = v27;
          *result = v29;
          *(result + 16) = v28;
        }
      }
    }

    goto LABEL_28;
  }

  return result;
}

char *GetCommandBufferParentStreamRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v4 = *find_entry(a1, &v9, 8uLL, 0);
  if (v4 && (v5 = *(v4 + 32)) != 0 && (v6 = *(v5 + 32)) != 0 && (*(v6 + 79) & 8) != 0)
  {
    v7 = v6 + 64;
  }

  else
  {
    v7 = 0;
  }

  return GTTraceFunc_targetContext(v7, a2);
}

void WriteArgumentTableForGPUCommandStage(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 48);
  v29 = a2;
  v30 = a3;
  memset(v31, 0, sizeof(v31));
  entry = find_entry(v5, &v29, 9uLL, 0);
  if (*entry)
  {
    v7 = *(*entry + 32);
    if (v7)
    {
      v29 = *(v7 + 8);
      v8 = find_entry(*(a1 + 56), &v29, 8uLL, 0);
      if (*v8)
      {
        v9 = *(*v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v7 + 48);
      if (v10[1])
      {
        for (i = 0; i < v10[1]; ++i)
        {
          v12 = *(v7 + 56 + 8 * (i >> 6)) & (1 << i);
          if (v12 && (*(v7 + 312 + 8 * (i >> 6)) & (1 << i)) != 0)
          {
            if (!GTMTL4SMArgumentTable_bufferBindingsMatch(v7, v9, i))
            {
              v13 = v7 + 8 * i;
              v14 = *(v13 + 320);
              v15 = *(v13 + 64);
              v16 = v29;
              v17 = apr_array_push(*a1);
              *v17 = a2;
              v17[1] = 0x1000FFFFC600;
              v17[2] = v16;
              v17[3] = v15;
              v17[4] = v14;
              v17[5] = i;
LABEL_17:
              v17[6] = 0;
              v17[7] = 0;
            }
          }

          else if (!GTMTL4SMArgumentTable_bufferBindingsMatch(v7, v9, i))
          {
            v18 = *(v7 + 8 * i + 64);
            v19 = v29;
            if (v12)
            {
              v20 = -15181;
            }

            else
            {
              v20 = -15180;
            }

            v17 = apr_array_push(*a1);
            *v17 = a2;
            *(v17 + 2) = v20;
            *(v17 + 3) = 4096;
            v17[2] = v19;
            v17[3] = v18;
            v17[4] = i;
            v17[5] = 0;
            goto LABEL_17;
          }

          v10 = *(v7 + 48);
        }
      }

      if (v10[3])
      {
        v21 = 0;
        do
        {
          v22 = *(v7 + 568 + 8 * v21);
          if (!v9 || *(v9 + 568 + 8 * v21) != v22)
          {
            v23 = v29;
            v24 = apr_array_push(*a1);
            *v24 = a2;
            v24[1] = 0x1000FFFFC4B6;
            v24[2] = v23;
            v24[3] = v22;
            v24[4] = v21;
            v24[5] = 0;
            v24[6] = 0;
            v24[7] = 0;
            v10 = *(v7 + 48);
          }

          ++v21;
        }

        while (v21 < v10[3]);
      }

      if (v10[2])
      {
        v25 = 0;
        do
        {
          v26 = *(v7 + 1592 + 8 * v25);
          if (!v9 || *(v9 + 1592 + 8 * v25) != v26)
          {
            v27 = v29;
            v28 = apr_array_push(*a1);
            *v28 = a2;
            v28[1] = 0x1000FFFFC4B5;
            v28[2] = v27;
            v28[3] = v26;
            v28[4] = v25;
            v28[5] = 0;
            v28[6] = 0;
            v28[7] = 0;
            v10 = *(v7 + 48);
          }

          ++v25;
        }

        while (v25 < v10[2]);
      }

      apr_hash_set(*(a1 + 56), (v7 + 8), 8, v7);
    }
  }
}

void WriteCommandEncoder()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v24[0] = v6;
  entry = find_entry(v0, v24, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
  }

  else
  {
    v8 = 0;
  }

  nelts = v2->nelts;
  v10 = *(v8 + 32);
  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = atomic_load((v10 + 4));
      v13 = v11 + (v12 >> 6) - 1;
      if (v13 > 1)
      {
        break;
      }

      v10 = *(v10 + 40);
      v11 = v13;
      if (!v10)
      {
        v11 = v13;
        goto LABEL_11;
      }
    }

    v13 = 1;
LABEL_11:
    v14 = v11 | (v13 << 32);
  }

  else
  {
    v14 = 0;
  }

  while (v10)
  {
    v15 = v10 + 64 + ((HIDWORD(v14) - v14) << 6);
    if ((*(v15 + 15) & 8) == 0)
    {
      break;
    }

    v16 = apr_array_push(v2);
    v17 = *(v15 + 48);
    v19 = *v15;
    v18 = *(v15 + 16);
    v16[2] = *(v15 + 32);
    v16[3] = v17;
    *v16 = v19;
    v16[1] = v18;
    ConstructorType = GTFenum_getConstructorType(*(v15 + 8));
    if (GTFenum_isMTLCommandEncoder(ConstructorType))
    {
      bzero(v24, 0x2BA0uLL);
      GTMTLSMCommandEncoder_processTraceFunc(v24, (v10 + 64 + ((HIDWORD(v14) - v14) << 6)), v4);
      WriteCommandEncoder(v5, v4, v2, v24[1]);
    }

    v21 = atomic_load((v10 + 4));
    v22 = v14 + (v21 >> 6);
    v23 = (HIDWORD(v14) + 1);
    v14 = (v23 << 32) | v14;
    if (v23 == v22 - 1)
    {
      v14 = (v23 << 32) | v23;
      v10 = *(v10 + 40);
    }
  }

  if (GTFenum_getConstructorType(*(*(v8 + 32) + 72)) == 17)
  {
    qsort(&v2->elts[v2->elt_size * nelts], v2->nelts - nelts, v2->elt_size, CompareGTTraceFunc);
  }
}

uint64_t CompareGTTraceFunc(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

unint64_t MapPresentToBoundary(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, *a2, 0, 0);
  v8 = *(a2 + 24) + (a1 << 6);
  if (GTFenum_getReceiverType(*(v8 + 8)) == 25)
  {
    v9 = GTTraceFunc_targetContext(v8, a4);
    v10 = *(a2 + 12);
    if (a1 + 1 < v10)
    {
      v11 = v9;
      v12 = (a1++ << 6) + 72;
      while (1)
      {
        v13 = (*(a2 + 24) + v12);
        v16 = *v13;
        v14 = (v13 - 2);
        v15 = v16;
        if (v16 <= -15909)
        {
          if (v15 == -16361 || v15 == -16202)
          {
LABEL_18:
            if (GTTraceFunc_targetContext(v14, a4) == v11)
            {
              goto LABEL_29;
            }

            LODWORD(v10) = *(a2 + 12);
          }
        }

        else if (v15 == -15908 || v15 == -15316 || v15 == -15318)
        {
          goto LABEL_18;
        }

        ++a1;
        v12 += 64;
        if (a1 >= v10)
        {
          goto LABEL_29;
        }
      }
    }

    ++a1;
  }

  else if (*(v8 + 12))
  {
    v22 = *GTTraceFunc_argumentBytesWithMap(v8, *(v8 + 12), a4);
    v20 = *find_entry(a3, &v22, 8uLL, 0);
    if (v20)
    {
      v20 = *(v20 + 32);
    }

    if (v20)
    {
      a1 = v20;
    }

    else
    {
      a1 = -1;
    }
  }

LABEL_29:
  apr_pool_destroy(newpool);
  return a1;
}

void GTTraceDispatch_boundaries(apr_pool_t **a1, uint64_t a2)
{
  v3 = a1;
  newpool = 0;
  apr_pool_create_ex(&newpool, *a1, 0, 0);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = v4[3];
  v83 = v4[2];
  v7 = v4[90];
  v8 = apr_array_make(*v3, v5->nelts, v5->elt_size);
  IndexOfFirstCommandBufferInQueue = 0;
  v10 = *(a2 + 48);
  nelts = v5->nelts;
  v12 = *(a2 + 72);
  if (v12 > 3)
  {
    if (v12 - 5 >= 2)
    {
      if (v12 == 4)
      {
        IndexOfFirstCommandBufferInQueue = FindIndexOfFirstCommandBufferInQueue(v3, *(a2 + 8));
        nelts = v5->nelts - IndexOfFirstCommandBufferInQueue;
        v8 = apr_array_copy(*v3, v5);
      }

      goto LABEL_123;
    }

    v29 = *(v7 + 24);
    v30 = *(v29 + 8);
    v32 = GTFenum_getReceiverType(v30) == 2 || v30 == -10168 || v30 == -16341;
    v81 = v3;
    if (v32)
    {
      ++v10;
      isPresent = GTFenum_isPresent(v30);
      v82 = *(a2 + 24);
      if (!isPresent || *(a2 + 24) != 0)
      {
        v35 = -1;
LABEL_72:
        v50 = apr_hash_make(newpool);
        v51 = v5->nelts;
        if (v51 <= 0)
        {
LABEL_108:
          if (v35 == -1)
          {
            v67 = 0;
          }

          else
          {
            v67 = v35;
          }

          v8 = apr_array_copy(*v81, v5);
          v68 = *(v8->elts + 2);
          v69 = GTFenum_isPresent(v68);
          v71 = v68 == -10168 || v68 == -16341 || v69;
          IndexOfFirstCommandBufferInQueue = v67 + v71;
          v72 = v51 - (v67 + v71);
          v3 = v81;
          nelts = v72 + 1;
          goto LABEL_123;
        }

        v52 = v50;
        v53 = 0;
        v54 = 0;
        while (1)
        {
          elts = v5->elts;
          v56 = *&elts[v53 + 8];
          if (v56 <= -15909)
          {
            v57 = v56 == -16361;
            v58 = -16202;
          }

          else
          {
            v57 = v56 == -15908 || v56 == -15316;
            v58 = -15318;
          }

          if (v57 || v56 == v58)
          {
            apr_hash_set(v52, &elts[v53], 8, v54);
            v56 = *&elts[v53 + 8];
          }

          if (GTFenum_isPresent(v56))
          {
            if (GTFenum_getReceiverType(v56) == 25)
            {
              v60 = *(GTTraceFunc_argumentBytesWithMap(&elts[v53], elts[v53 + 13], v6) + 1);
            }

            else
            {
              v60 = GTTraceFunc_targetContext(&elts[v53], v6);
            }

            v85 = v60;
            v62 = *find_entry(v83, &v85, 8uLL, 0);
            if (v62 && (v63 = *(v62 + 32)) != 0 && (v64 = *(v63 + 32)) != 0 && (*(v64 + 79) & 8) != 0)
            {
              v65 = v64 + 64;
            }

            else
            {
              v65 = 0;
            }

            if (v82 != GTTraceFunc_targetContext(v65, v6))
            {
              goto LABEL_105;
            }
          }

          else if (v56 != -16341 && v56 != -10168)
          {
            goto LABEL_105;
          }

          v66 = MapPresentToBoundary(v54, v5, v52, v6);
          if (v66 != -1)
          {
            v51 = v66;
            if (v35 == -1)
            {
              v35 = v66;
            }

            if (!--v10)
            {
              goto LABEL_108;
            }
          }

LABEL_105:
          ++v54;
          v51 = v5->nelts;
          v53 += 64;
          if (v54 >= v51)
          {
            goto LABEL_108;
          }
        }
      }

      v45 = GTTraceFunc_targetContext(v29, v6);
      v35 = -1;
    }

    else
    {
      v82 = *(a2 + 24);
      if (v82)
      {
        v35 = 0;
        goto LABEL_72;
      }

      v85 = GTTraceFunc_targetContext(v29, v6);
      v35 = *(*(*find_entry(v83, &v85, 8uLL, 0) + 32) + 32);
      if (v35)
      {
        v73 = 0;
        while (1)
        {
          v74 = atomic_load((v35 + 4));
          v75 = v73 + (v74 >> 6) - 1;
          if (v75 > 0)
          {
            break;
          }

          v35 = *(v35 + 40);
          v73 = v75;
          if (!v35)
          {
            v73 = v75;
            goto LABEL_132;
          }
        }

        v75 = 0;
LABEL_132:
        v76 = v73 | (v75 << 32);
      }

      else
      {
        v76 = 0;
      }

      v45 = 0;
      while (v35)
      {
        v77 = v35 + 64 + ((HIDWORD(v76) - v76) << 6);
        if ((*(v77 + 15) & 8) == 0)
        {
          v35 = 0;
          break;
        }

        if (GTFenum_isPresent(*(v77 + 8)))
        {
          v45 = *(GTTraceFunc_argumentBytesWithMap((v35 + 64 + ((HIDWORD(v76) - v76) << 6)), *(v77 + 13), v6) + 1);
        }

        v78 = atomic_load((v35 + 4));
        v79 = v76 + (v78 >> 6);
        v80 = (HIDWORD(v76) + 1);
        v76 = (v80 << 32) | v76;
        if (v80 == v79 - 1)
        {
          v76 = (v80 << 32) | v80;
          v35 = *(v35 + 40);
        }
      }
    }

    v85 = v45;
    v46 = *find_entry(v83, &v85, 8uLL, 0);
    if (v46 && (v47 = *(v46 + 32)) != 0 && (v48 = *(v47 + 32)) != 0 && (*(v48 + 79) & 8) != 0)
    {
      v49 = v48 + 64;
    }

    else
    {
      v49 = 0;
    }

    v82 = GTTraceFunc_targetContext(v49, v6);
    goto LABEL_72;
  }

  v13 = v12 >= 2;
  v14 = v12 - 2;
  if (v13)
  {
    if (v14 < 2)
    {
      IndexOfFirstCommandBufferInQueue = FindIndexOfFirstCommandBufferInQueue(v3, *(a2 + 8));
      nelts = v5->nelts - IndexOfFirstCommandBufferInQueue;
      v15 = apr_array_copy(*v3, v5);
      v8 = v15;
      if (*(a2 + 72) == 3 && v15->nelts >= 1)
      {
        v16 = v3;
        v17 = 0;
        v18 = 0;
        v19 = *(a2 + 8);
        while (1)
        {
          v20 = &v8->elts[v17];
          v21 = *(v20 + 8);
          if (v21 <= -15909)
          {
            v22 = v21 == -16361;
            v23 = -16202;
          }

          else
          {
            v22 = v21 == -15908 || v21 == -15316;
            v23 = -15318;
          }

          if (v22 || v21 == v23)
          {
            v85 = GTTraceFunc_targetContext(v20, v6);
            v25 = *find_entry(v83, &v85, 8uLL, 0);
            if (v25 && (v26 = *(v25 + 32)) != 0 && (v27 = *(v26 + 32)) != 0 && (*(v27 + 79) & 8) != 0)
            {
              v28 = v27 + 64;
            }

            else
            {
              v28 = 0;
            }

            if (v19 == GTTraceFunc_targetContext(v28, v6) && !--v10)
            {
              break;
            }
          }

          ++v18;
          v17 += 64;
          if (v18 >= v8->nelts)
          {
            goto LABEL_122;
          }
        }

        nelts = v18 - IndexOfFirstCommandBufferInQueue + 1;
LABEL_122:
        v3 = v16;
      }
    }
  }

  else
  {
    v36 = apr_array_copy(*v3, v5);
    v8 = v36;
    if (*(a2 + 72) == 1)
    {
      v37 = v36->nelts;
      if (v37 >= 1)
      {
        v38 = 0;
        v39 = (v36->elts + 8);
        do
        {
          v41 = *v39;
          v39 += 16;
          v40 = v41;
          if (v41 <= -15909)
          {
            if (v40 != -16361 && v40 != -16202)
            {
              goto LABEL_61;
            }
          }

          else if (v40 != -15908 && v40 != -15316 && v40 != -15318)
          {
            goto LABEL_61;
          }

          if (!--v10)
          {
            IndexOfFirstCommandBufferInQueue = 0;
            nelts = (v38 + 1);
            goto LABEL_123;
          }

LABEL_61:
          ++v38;
        }

        while (v37 != v38);
      }
    }

    IndexOfFirstCommandBufferInQueue = 0;
  }

LABEL_123:
  *(v3 + 16) = v8;
  *(v3 + 24) = IndexOfFirstCommandBufferInQueue;
  *(v3 + 32) = nelts;
  apr_pool_destroy(newpool);
}

uint64_t FindIndexOfFirstCommandBufferInQueue(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    if (*(v3 + 12) >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = *(*(a1 + 8) + 24);
      while (1)
      {
        v8 = *(v3 + 24) + v5;
        v9 = *(v8 + 8);
        ReceiverType = GTFenum_getReceiverType(v9);
        if (ReceiverType == 91)
        {
          if (GTFenum_isBeginCommandBuffer(v9))
          {
            FuncStreamRef = GTTraceFunc_getFuncStreamRef(v8, v7);
            CommandBufferQueue = GTTraceDump_getCommandBufferQueue(*(*(a1 + 8) + 744), FuncStreamRef);
LABEL_10:
            if (CommandBufferQueue == a2)
            {
              return v6;
            }
          }
        }

        else if (ReceiverType == 27 && GTFenum_getConstructorType(v9))
        {
          CommandBufferQueue = GTTraceFunc_targetContext(v8, v7);
          goto LABEL_10;
        }

        ++v6;
        v3 = *(a1 + 16);
        v5 += 64;
        if (v6 >= *(v3 + 12))
        {
          return v6;
        }
      }
    }
  }

  return 0;
}

void *GTTraceDispatch_serialize(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  newpool[0] = 0;
  apr_pool_create_ex(newpool, *a1, 0, 0);
  v4 = *(a1 + 16);
  v463 = *(*(a1 + 8) + 24);
  v466 = a1;
  v5 = newpool[0];
  v6 = apr_hash_make(newpool[0]);
  v7 = apr_hash_make(v5);
  p = v5;
  arr = apr_array_make(v5, 8, 16);
  if (*(v4 + 12))
  {
    v8 = 0;
    for (i = 0; i < *(v4 + 12); ++i)
    {
      v10 = *(v4 + 24) + v8;
      v11 = *(v10 + 8);
      if (v11 <= -15909)
      {
        if (v11 != -16361 && v11 != -16202)
        {
          goto LABEL_13;
        }
      }

      else if (v11 != -15908 && v11 != -15316 && v11 != -15318)
      {
        goto LABEL_13;
      }

      apr_hash_set(v6, (*(v4 + 24) + v8), 8, i);
      v11 = *(v10 + 8);
LABEL_13:
      if (GTFenum_isPresent(v11) && GTFenum_getReceiverType(v11) == 2)
      {
        v14 = MapPresentToBoundary(i, v4, v6, v463);
        if (v14 == -1)
        {
          v18 = apr_palloc(p, 8uLL);
          *v18 = i;
          apr_hash_set(v7, v18, 8, &dword_0 + 1);
        }

        else
        {
          v15 = v14;
          v16 = apr_array_push(arr);
          *v16 = v15;
          v16[1] = i;
        }
      }

      v8 += 64;
    }
  }

  nelts = arr->nelts;
  if (nelts <= 0)
  {
    v20 = v466;
  }

  else
  {
    qsort(arr->elts, nelts, arr->elt_size, CompareCommandBufferIndex);
    v20 = v466;
    v21 = apr_array_make(*v466, *(*(v466 + 16) + 12), *(*(v466 + 16) + 8));
    v479 = 0;
    pool[0] = 0;
    elts = arr->elts;
    key[0] = 0;
    if (*(v4 + 12))
    {
      v23 = 0;
      v24 = 1;
      while (1)
      {
        v25 = (*(v4 + 24) + (v23 << 6));
        if (v23 == *elts)
        {
          v26 = *(v466 + 24);
          v27 = *(v466 + 32);
          v28 = apr_array_push(v21);
          v29 = v25[3];
          v31 = *v25;
          v30 = v25[1];
          v28[2] = v25[2];
          v28[3] = v29;
          *v28 = v31;
          v28[1] = v30;
          if (v26 > v23)
          {
            v32 = &v479;
            goto LABEL_38;
          }

          if (v27 + v26 > v23)
          {
            v32 = pool;
LABEL_38:
            *v32 = (*v32 + 1);
          }

          v42 = *elts;
          v45 = *(elts + 1);
          v44 = elts + 8;
          v43 = v45;
          if (v42 != v45)
          {
            v46 = (*(v4 + 24) + (v43 << 6));
            v47 = key[0];
            v48 = *(v466 + 24);
            v49 = *(v466 + 32);
            v50 = apr_array_push(v21);
            v51 = v46[3];
            v53 = *v46;
            v52 = v46[1];
            v50[2] = v46[2];
            v50[3] = v51;
            *v50 = v53;
            v50[1] = v52;
            if (v48 > v47)
            {
              v54 = &v479;
              goto LABEL_47;
            }

            if (v49 + v48 > v47)
            {
              v54 = pool;
LABEL_47:
              *v54 = (*v54 + 1);
            }
          }

          apr_hash_set(v7, v44, 8, &dword_0 + 1);
          elts = &arr->elts[16 * v24++];
          goto LABEL_49;
        }

        if (*(v7 + 12) && (v33 = *find_entry(v7, key, 8uLL, 0)) != 0 && *(v33 + 32))
        {
          apr_hash_set(v7, key, 8, 0);
        }

        else
        {
          v34 = key[0];
          v35 = *(v466 + 24);
          v36 = *(v466 + 32);
          v37 = apr_array_push(v21);
          v38 = v25[3];
          v40 = *v25;
          v39 = v25[1];
          v37[2] = v25[2];
          v37[3] = v38;
          *v37 = v40;
          v37[1] = v39;
          if (v35 > v34)
          {
            v41 = &v479;
LABEL_44:
            *v41 = (*v41 + 1);
            goto LABEL_49;
          }

          if (v36 + v35 > v34)
          {
            v41 = pool;
            goto LABEL_44;
          }
        }

LABEL_49:
        v23 = (key[0] + 1);
        key[0] = v23;
        if (v23 >= *(v4 + 12))
        {
          v55 = v479;
          v56 = pool[0];
          p = newpool[0];
          goto LABEL_53;
        }
      }
    }

    v56 = 0;
    v55 = 0;
LABEL_53:
    *(v466 + 16) = v21;
    *(v466 + 24) = v55;
    *(v466 + 32) = v56;
  }

  apr_pool_destroy(p);
  key[0] = 0;
  apr_pool_create_ex(key, *v20, 0, 0);
  v452 = key[0];
  v57 = apr_array_make(key[0], *(*(v20 + 16) + 12), *(*(v20 + 16) + 8));
  v58 = *(v20 + 8);
  if (*(v58 + 608) >= 1)
  {
    pa = *(v58 + 352);
    s();
    v60 = v59;
    v61 = 0;
    v458 = 8 * v62;
    second = v57;
    do
    {
      v63 = *(*(pa + 3) + v61);
      if (v63)
      {
        v64 = *(v63 + 8);
      }

      else
      {
        v64 = 0;
      }

      v65 = *(v20 + 8);
      v66 = *(v65 + 16);
      v67 = *(v65 + 40);
      newpool[0] = v64;
      v68 = *find_entry(v66, newpool, 8uLL, 0);
      arra = v66;
      if (v68)
      {
        v69 = *(v68 + 32);
      }

      else
      {
        v69 = 0;
      }

      pool[0] = 0;
      apr_pool_create_ex(pool, 0, 0, 0);
      v70 = pool[0];
      v480 = apr_hash_make(pool[0]);
      v479 = apr_hash_make(v70);
      GatherResidencySetAllocationsUpToIndex(&v479, v69, *(*(v20 + 8) + 24), v67, 0xFFFFFFFFFFFFFFFFLL, 0);
      if (ResidencySetAllocationsContainDrawableTexture(*(*(v20 + 8) + 752), v67, &v479))
      {
        v71 = apr_array_make(v70, 16, 8);
        v72 = *(*(v20 + 8) + 8);
        *(v60 + 8) |= 0x40u;
        v73 = v480;
        FillArrayFromHash(v71, v480);
        v464 = v72;
        if (v71->nelts >= 1)
        {
          v482 = 0u;
          v483 = 0u;
          *newpool = 0u;
          GTTraceContext_pushEncoderWithStream(v72, newpool);
          v74 = v482;
          *(v482 + 8) = -15211;
          v75 = BYTE9(v483);
          if (BYTE9(v483) > 0x28uLL)
          {
            v77 = *(newpool[1] + 3);
            v78 = BYTE10(v483);
            ++BYTE10(v483);
            v76 = GTTraceMemPool_allocateBytes(v77, *(&v482 + 1), v78 | 0x1800000000) + 16;
            v75 = v78;
          }

          else
          {
            v76 = (v74 + BYTE9(v483));
            BYTE9(v483) += 24;
          }

          *(v74 + 13) = v75;
          v79 = *(v63 + 8);
          v80 = v71->nelts;
          v81 = GTTraceEncoder_storeBytes(newpool, v71->elts, 8 * v80);
          *v76 = v79;
          *(v76 + 1) = v80;
          v76[16] = v81;
          *(v76 + 17) = 0;
          *(v76 + 5) = 0;
          v82 = v482;
          *v60 = v483;
          *(v60 + 8) = BYTE8(v483);
          *(v82 + 15) |= 8u;
          v57 = second;
          v83 = apr_array_push(second);
          v85 = *(v482 + 32);
          v84 = *(v482 + 48);
          v86 = *(v482 + 16);
          *v83 = *v482;
          v83[1] = v86;
          v83[2] = v85;
          v83[3] = v84;
          v482 = 0u;
          v483 = 0u;
          *newpool = 0u;
          v72 = v464;
          GTTraceContext_pushEncoderWithStream(v464, newpool);
          v87 = v482;
          *(v482 + 8) = -15220;
          v88 = BYTE9(v483);
          if (BYTE9(v483) > 0x38uLL)
          {
            v91 = *(newpool[1] + 3);
            v92 = BYTE10(v483);
            ++BYTE10(v483);
            v89 = GTTraceMemPool_allocateBytes(v91, *(&v482 + 1), v92 | 0x800000000) + 16;
            v90 = v482;
            v88 = v92;
            v72 = v464;
          }

          else
          {
            v89 = (v87 + BYTE9(v483));
            BYTE9(v483) += 8;
            v90 = v87;
          }

          *(v87 + 13) = v88;
          *v89 = *(v63 + 8);
          *v60 = v483;
          *(v60 + 8) = BYTE8(v483);
          *(v90 + 15) |= 8u;
          v93 = apr_array_push(second);
          v95 = *(v482 + 32);
          v94 = *(v482 + 48);
          v96 = *(v482 + 16);
          *v93 = *v482;
          v93[1] = v96;
          v93[2] = v95;
          v93[3] = v94;
        }

        v97 = v479;
        FillArrayFromHashDifference(v71, v479, v73);
        if (v71->nelts >= 1)
        {
          v482 = 0u;
          v483 = 0u;
          *newpool = 0u;
          GTTraceContext_pushEncoderWithStream(v72, newpool);
          v98 = v482;
          *(v482 + 8) = -15211;
          v99 = BYTE9(v483);
          if (BYTE9(v483) > 0x28uLL)
          {
            v101 = *(newpool[1] + 3);
            v102 = BYTE10(v483);
            ++BYTE10(v483);
            v100 = GTTraceMemPool_allocateBytes(v101, *(&v482 + 1), v102 | 0x1800000000) + 16;
            v99 = v102;
          }

          else
          {
            v100 = (v98 + BYTE9(v483));
            BYTE9(v483) += 24;
          }

          *(v98 + 13) = v99;
          v103 = *(v63 + 8);
          v104 = v71->nelts;
          v105 = GTTraceEncoder_storeBytes(newpool, v71->elts, 8 * v104);
          *v100 = v103;
          *(v100 + 1) = v104;
          v100[16] = v105;
          *(v100 + 17) = 0;
          *(v100 + 5) = 0;
          v106 = v482;
          *v60 = v483;
          *(v60 + 8) = BYTE8(v483);
          *(v106 + 15) |= 8u;
          v57 = second;
          v107 = apr_array_push(second);
          v109 = *(v482 + 32);
          v108 = *(v482 + 48);
          v110 = *(v482 + 16);
          *v107 = *v482;
          v107[1] = v110;
          v107[2] = v109;
          v107[3] = v108;
          v72 = v464;
        }

        FillArrayFromHashDifference(v71, v73, v97);
        v20 = v466;
        if (v71->nelts >= 1)
        {
          v482 = 0u;
          v483 = 0u;
          *newpool = 0u;
          GTTraceContext_pushEncoderWithStream(v72, newpool);
          v111 = v482;
          *(v482 + 8) = -15206;
          v112 = BYTE9(v483);
          if (BYTE9(v483) > 0x28uLL)
          {
            v114 = *(newpool[1] + 3);
            v115 = BYTE10(v483);
            ++BYTE10(v483);
            v113 = GTTraceMemPool_allocateBytes(v114, *(&v482 + 1), v115 | 0x1800000000) + 16;
            v112 = v115;
            v57 = second;
          }

          else
          {
            v113 = (v111 + BYTE9(v483));
            BYTE9(v483) += 24;
          }

          *(v111 + 13) = v112;
          v116 = *(v63 + 8);
          v117 = v71->nelts;
          v118 = GTTraceEncoder_storeBytes(newpool, v71->elts, 8 * v117);
          *v113 = v116;
          *(v113 + 1) = v117;
          v113[16] = v118;
          *(v113 + 17) = 0;
          *(v113 + 5) = 0;
          v119 = v482;
          *v60 = v483;
          *(v60 + 8) = BYTE8(v483);
          *(v119 + 15) |= 8u;
          v120 = apr_array_push(v57);
          v122 = *(v482 + 32);
          v121 = *(v482 + 48);
          v123 = *(v482 + 16);
          *v120 = *v482;
          v120[1] = v123;
          v120[2] = v122;
          v120[3] = v121;
        }

        newpool[0] = 0;
        entry = find_entry(arra, newpool, 8uLL, 0);
        GTTraceMemPool_buildMemoryMap(*(*(*entry + 32) + 24), *(*(v466 + 8) + 24));
        *(v60 + 8) &= ~0x40u;
      }

      apr_pool_destroy(v70);
      v61 += 8;
    }

    while (v458 != v61);
  }

  v126 = (v20 + 24);
  v125 = *(v20 + 24);
  pb = (v20 + 24);
  if (!v125)
  {
    v126 = (v20 + 32);
    v125 = *(v20 + 32);
  }

  *v126 = v125 + v57->nelts;
  *(v20 + 16) = apr_array_append(*v20, v57, *(v20 + 16));
  apr_pool_destroy(v452);
  v127 = *(v20 + 8);
  *newpool = *(v127 + 16);
  *&v482 = *v127;
  BYTE8(v482) = *(v127 + 669);
  *(&v482 + 9) = 0;
  HIDWORD(v482) = 0;
  v128 = GTResourceTrackerMakeWithDescriptor(newpool);
  if (*(v127 + 608) >= 1)
  {
    v129 = 0;
    v130 = *(v127 + 352);
    do
    {
      GTResourceTrackerUsingResidencySet(v128, *(*(*(v130 + 24) + 8 * v129++) + 8));
    }

    while (v129 < *(v127 + 608));
  }

  v459 = (v20 + 32);
  if (*(v20 + 32) + *(v20 + 24))
  {
    v131 = 0;
    v132 = 0;
    do
    {
      v133 = *(*(v20 + 16) + 24);
      GTResourceTrackerProcessFunction();
      ++v132;
      v131 += 64;
    }

    while (*(v20 + 32) + *(v20 + 24) > v132);
  }

  ResourceTracker_processUsedResidencySets(v128, *(*(v20 + 8) + 48) + *(*(v20 + 8) + 40), 0, *v127);
  ResourceTracker_processUsedDrawables(v128);
  v465 = v128[3];
  v479 = 0;
  apr_pool_create_ex(&v479, *v20, 0, 0);
  v134 = *(v20 + 8);
  v135 = v134[2];
  v136 = v134[94];
  v138 = v134[5];
  v137 = v134[6];
  v139 = v479;
  seconda = *(v20 + 16);
  v140 = apr_array_make(v479, seconda->nelts, seconda->elt_size);
  v141 = apr_array_make(v139, 4, 8);
  GTMTLSMContext_getObjects(*(v136 + 256), v138, v141);
  v142 = v141->nelts;
  if (v142 >= 1)
  {
    do
    {
      v143 = *&v141->elts[8 * v142 - 8];
      v144 = find_entry(v465, (v143 + 8), 8uLL, 0);
      if (*v144 && *(*v144 + 32))
      {
        newpool[0] = *(v143 + 8);
        v145 = *find_entry(v135, newpool, 8uLL, 0);
        if (!v145)
        {
          result = apr_array_push(v140);
          __break(1u);
          return result;
        }

        v146 = *(v145 + 32);
        v147 = apr_array_push(v140);
        v148 = *(v146 + 32);
        v149 = v148[4];
        v150 = v148[5];
        v151 = v148[7];
        v147[2] = v148[6];
        v147[3] = v151;
        *v147 = v149;
        v147[1] = v150;
        v140->elts[64 * v140->nelts - 49] = 64;
        v152 = find_entry(v465, (v143 + 48), 8uLL, 0);
        if (*v152)
        {
          if (*(*v152 + 32))
          {
            v153 = *(v146 + 32);
            if (v153)
            {
              v154 = 0;
              while (1)
              {
                v155 = atomic_load((v153 + 4));
                v156 = v154 + (v155 >> 6) - 1;
                if (v156 > 0)
                {
                  break;
                }

                v153 = *(v153 + 40);
                v154 = v156;
                if (!v153)
                {
                  v154 = v156;
                  goto LABEL_104;
                }
              }

              v156 = 0;
LABEL_104:
              v157 = v154 | (v156 << 32);
            }

            else
            {
              v157 = 0;
            }

            while (1)
            {
              v158 = v153 + 64 + ((0xFFFFFFFF00000001 * v157) >> 32 << 6);
              if (*(v158 + 8) == -7167)
              {
                break;
              }

              v159 = atomic_load((v153 + 4));
              v160 = v157 + (v159 >> 6);
              v161 = (HIDWORD(v157) + 1);
              v157 = (v161 << 32) | v157;
              if (v161 == v160 - 1)
              {
                v157 = (v161 << 32) | v161;
                v153 = *(v153 + 40);
              }
            }

            v162 = v138 <= *v158 && v137 + v138 > *v158;
            if (!v162)
            {
              v163 = apr_array_push(v140);
              v164 = *v158;
              v165 = *(v158 + 16);
              v166 = *(v158 + 48);
              v163[2] = *(v158 + 32);
              v163[3] = v166;
              *v163 = v164;
              v163[1] = v165;
              v140->elts[64 * v140->nelts - 49] = 64;
            }
          }
        }
      }

      v162 = v142-- <= 1;
    }

    while (!v162);
  }

  v167 = (v20 + 24);
  v168 = *pb;
  if (!*pb)
  {
    v167 = (v20 + 32);
    v168 = *v459;
  }

  *v167 = v168 + v140->nelts;
  *(v466 + 16) = apr_array_append(*v466, v140, seconda);
  apr_pool_destroy(v479);
  newpool[0] = 0;
  apr_pool_create_ex(newpool, *v466, 0, 0);
  if (*(v466 + 32) + *(v466 + 24))
  {
    v427 = 0;
    v428 = 0;
    v429 = *(v466 + 8);
    v430 = *(v466 + 16);
    v431 = *(v429 + 24);
    v432 = *(v429 + 752);
    do
    {
      v433 = *(v430 + 24);
      v434 = *(v433 + v427 + 8);
      if (v434 != -7167 && (GTFenum_getReceiverType(*(v433 + v427 + 8)) == 80 || GTFenum_getConstructorType(v434) == 80))
      {
        FuncStreamRef = GTTraceFunc_getFuncStreamRef(v433 + v427, v431);
        Texture = GTMTLSMContext_getTexture(v432, FuncStreamRef, *(v433 + v427));
        if (Texture)
        {
          if (Texture[25] || (v437 = Texture[14]) != 0 && *(v437 + 44))
          {
            *(v433 + v427 + 15) |= 3u;
          }
        }
      }

      ++v428;
      v427 += 64;
    }

    while (*v459 + *pb > v428);
  }

  apr_pool_destroy(newpool[0]);
  v169 = a2;
  if (!*(*(v466 + 16) + 12))
  {
    goto LABEL_420;
  }

  v475 = 0;
  apr_pool_create_ex(&v475, *v466, 0, 0);
  v170 = *(v466 + 8);
  v447 = v170[86];
  v171 = v170[84];
  v172 = v170[2];
  v173 = v170[3];
  v174 = v170[93];
  v175 = v170[88];
  v176 = v170[94];
  v449 = v170[4];
  v177 = v475;
  v443 = apr_hash_make(v475);
  ht = apr_hash_make(v177);
  v451 = v172;
  v450 = GTEventTracker_make(v172, v173, v174, v176, v177);
  v453 = *(v466 + 16);
  v178 = apr_array_push(v453);
  *v178 = 0u;
  v178[1] = 0u;
  v178[2] = 0u;
  v178[3] = 0u;
  v179 = *(v466 + 24);
  if (!(*(v466 + 32) + v179))
  {
    goto LABEL_419;
  }

  v440 = v175;
  v441 = v171;
  v180 = v176;
  v181 = 0;
  v446 = 0;
  v444 = 0;
  v448 = v180;
  arrb = (v180 + 8);
  v182 = v172;
  secondb = v173;
  do
  {
    v183 = v179 > v181;
    v184 = &v453->elts[64 * v181];
    if (*(v184 + 15) < 0)
    {
      goto LABEL_374;
    }

    v185 = (4 * v183);
    GTEventTracker_processFunction(v450, &v453->elts[64 * v181]);
    v186 = *(v184 + 8);
    ReceiverType = GTFenum_getReceiverType(v186);
    if (ReceiverType != 52 && ReceiverType != 27 || !GTFenum_getConstructorType(v186))
    {
      v211 = 1;
      goto LABEL_160;
    }

    v474 = GTTraceFunc_getFuncStreamRef(v184, v173);
    v188 = *(*(v466 + 8) + 744);
    newpool[0] = v474;
    v189 = *(*find_entry(v188, newpool, 8uLL, 0) + 32);
    v191 = *v189;
    v190 = v189[1];
    v471[0] = v182;
    v471[1] = v173;
    v192 = v475;
    v471[2] = v475;
    v472 = *(*(v466 + 8) + 669);
    memset(v473, 0, sizeof(v473));
    v193 = GTResourceTrackerMakeWithDescriptor(v471);
    GTResourceTrackerProcessCommandBufferAndResidencySets(v193, v474, v190, v191);
    ResourceTracker_addChainedResources(v193, v448, v191, v192);
    ResourceTracker_addIndirectResources(v193, v448, v191, v192);
    v194 = 0;
    v485 = 0u;
    v486 = 0u;
    v483 = 0u;
    v484 = 0u;
    *newpool = 0u;
    v482 = 0u;
    do
    {
      v195 = apr_array_make(v192, 16, 8);
      newpool[v194] = v195;
      if ((v194 + 1) > 0x33u)
      {
        v196 = 0;
      }

      else
      {
        v196 = dword_29BBBC[(v194 + 1)] - 2;
        if (v196 > 0x6C)
        {
          goto LABEL_132;
        }
      }

      v197 = byte_29BC8C[v196];
      if ((v197 & 0x8000000000000000) == 0)
      {
        v198 = *(&arrb->pool + v197);
        goto LABEL_133;
      }

LABEL_132:
      v198 = 0;
LABEL_133:
      GTMTLSMContext_getObjects(v198, v191, v195);
      v195->nelts = GTMTLSMObject_sortUsedResources(v195->elts, v195->nelts, v193[3]);
      ++v194;
    }

    while (v194 != 12);
    GTResourceTrackerBuildArgumentBuffers();
    v200 = v199;
    v201 = SaveDYMTLMutableBufferAncestorMaps(v199[2], *(v169 + 8), *(v169 + 16), v182);
    if (v201 > *(v169 + 16))
    {
      v202 = apr_palloc(*(v169 + 40), v201);
      *(v169 + 8) = v202;
      *(v169 + 16) = v201;
      SaveDYMTLMutableBufferAncestorMaps(v200[2], v202, v201, v182);
    }

    SavePointer(v449, *(v169 + 8), v201, &v479);
    v203 = SaveDYMTLIndirectArgumentBufferInfos(v200[1], *v200, *(v169 + 8), *(v169 + 16), v182);
    if (v203 > *(v169 + 16))
    {
      v204 = apr_palloc(*(v169 + 40), v203);
      *(v169 + 8) = v204;
      *(v169 + 16) = v203;
      SaveDYMTLIndirectArgumentBufferInfos(v200[1], *v200, v204, v203, v182);
    }

    SavePointer(v449, *(v169 + 8), v203, pool);
    v205 = SaveResourceMapsData(newpool, *(v169 + 8), *(v169 + 16), v182);
    if (v205 > *(v169 + 16))
    {
      v206 = apr_palloc(*(v169 + 40), v205);
      *(v169 + 8) = v206;
      *(v169 + 16) = v205;
      SaveResourceMapsData(newpool, v206, v205, v182);
    }

    SavePointer(v449, *(v169 + 8), v205, key);
    v476[0] = v191;
    v476[1] = 255;
    v207 = find_entry(secondb, v476, 9uLL, 0);
    if (*v207 && (v208 = *(*v207 + 32)) != 0)
    {
      v209 = (v208 + 16);
      v210 = *(v208 + 12);
    }

    else
    {
      v209 = 0;
      v210 = 0;
    }

    v476[0] = v474;
    v212 = find_entry(v182, v476, 8uLL, 0);
    if (*v212 && (v213 = *(*v212 + 32)) != 0)
    {
      v214 = atomic_load((v213 + 56));
      v215 = (v213 + (~(v214 >> 2) & 8));
    }

    else
    {
      v215 = &dword_8;
    }

    v470[0] = *v215;
    v470[1] = &v479;
    v470[2] = pool;
    v470[3] = key;
    if (v209)
    {
      v216 = v476;
      SavePointer(v449, v209, v210, v476);
    }

    else
    {
      v216 = 0;
    }

    v470[4] = v216;
    DYTraceEncode_MTLCommandBuffer_indirectArgumentBufferData(v470, *(v169 + 8), *(v169 + 16), 0, 0);
    v217 = *(v169 + 24);
    v218 = *(v169 + 8);
    v219 = *v218;
    if ((*(v218 + 33) & 0x10) != 0)
    {
      v221 = *(v169 + 8);
      v220 = *v218;
      do
      {
        v221 = (v221 + v219);
        v219 = *v221;
        v220 += v219;
      }

      while ((*(v221 + 33) & 0x20) == 0);
    }

    else
    {
      v220 = *v218;
    }

    v222 = objc_autoreleasePoolPush();
    [*(v217 + 8) appendBytes:v218 length:v220];
    objc_autoreleasePoolPop(v222);
    GTTraceFuncToFbuf(v169, *(v466 + 8), v184, v185);
    v223 = *find_entry(v447, &v474, 8uLL, 0);
    if (v223)
    {
      v224 = *(v223 + 32);
    }

    else
    {
      v224 = 0;
    }

    v182 = v451;
    WriteRestores(v169, v224, v185, v451);
    v211 = 0;
    v186 = *(v184 + 8);
LABEL_160:
    if (v186 <= -15340)
    {
      v225 = v186 == -15991;
      v226 = -15749;
    }

    else
    {
      v225 = v186 == -15339 || v186 == -14842;
      v226 = -15308;
    }

    v227 = v225 || v186 == v226;
    v228 = v185;
    if (v227)
    {
      if (!GTEventTracker_wasWaitSignaled(v450, v184))
      {
        v228 = v185 | 2;
        goto LABEL_188;
      }

      pool[0] = GTTraceFunc_targetContext(v184, secondb);
      v229 = v453->elts;
      v230 = *find_entry(v182, pool, 8uLL, 0);
      if (v230)
      {
        v231 = *(v230 + 32);
        if (v231)
        {
          v232 = *(v231 + 32);
          if (v232)
          {
            if ((*(v232 + 79) & 8) != 0)
            {
              v233 = v232 + 64;
              goto LABEL_180;
            }
          }
        }
      }

      else
      {
        v231 = 0;
      }

      v233 = 0;
LABEL_180:
      v234 = &v229[64 * v181];
      v235 = *(v233 + 8);
      if (GTFenum_getConstructorType(v235) == 25)
      {
        if (!GTFenum_isCommandBufferRelated(*(v234 - 14)) || (v236 = pool[0], v236 != GetCommandBufferRef((v234 - 64), v451, secondb)))
        {
          v246 = GTTraceFunc_targetContext(v233, secondb);
          v484 = 0u;
          v485 = 0u;
          v482 = 0u;
          v483 = 0u;
          *newpool = 0u;
          GTMTLSMCommandBuffer_processTraceFunc(newpool, v233, secondb);
          v479 = v246;
          v247 = find_entry(v451, &v479, 8uLL, 0);
          if (*v247 && (v248 = *(*v247 + 32)) != 0)
          {
            v249 = atomic_load((v248 + 56));
            v250 = (v248 + (~(v249 >> 2) & 8));
          }

          else
          {
            v250 = &dword_8;
          }

          v281 = *v250;
          v479 = pool[0];
          v282 = find_entry(v451, &v479, 8uLL, 0);
          if (*v282 && (v283 = *(*v282 + 32)) != 0)
          {
            v284 = atomic_load((v283 + 56));
            v285 = (v283 + (~(v284 >> 2) & 8));
          }

          else
          {
            v285 = &dword_8;
          }

          v286 = *v285;
          v479 = pool[0];
          v287 = find_entry(v451, &v479, 8uLL, 0);
          if (*v287 && (v288 = *(*v287 + 32)) != 0)
          {
            v289 = atomic_load((v288 + 56));
            v290 = (v288 + (~(v289 >> 2) & 8));
          }

          else
          {
            v290 = &dword_8;
          }

          v291 = *v290;
          v292 = BYTE9(v485);
          v293 = *(a2 + 8);
          *(v293 + 8) = 0;
          *(v293 + 16) = 0u;
          *(v293 + 32) = 0x69744300008005;
          *v293 = 0xFFFFCF0000000028;
          *(v293 + 40) = v281;
          *(v293 + 48) = v291;
          *(v293 + 56) = v292;
          *(v293 + 60) = 116;
          *(v293 + 64) = v286;
          *v293 = 72;
          v294 = *(a2 + 24);
          v295 = *(a2 + 8);
          v296 = *v295;
          if ((*(v295 + 33) & 0x10) != 0)
          {
            v297 = *v295;
            v298 = *(a2 + 8);
            do
            {
              v298 = (v298 + v297);
              v297 = *v298;
              v296 += v297;
            }

            while ((*(v298 + 33) & 0x20) == 0);
          }

          goto LABEL_302;
        }

        v235 = *(v233 + 8);
      }

      if (GTFenum_getConstructorType(v235) != 51 || GTFenum_isMIOCommandBufferRelated(*(v234 - 14)) && (v237 = pool[0], v237 == GetIOCommandBufferRef((v234 - 64), v451, secondb)))
      {
LABEL_187:
        v228 = v185;
        v182 = v451;
        goto LABEL_188;
      }

      v276 = GTTraceFunc_targetContext(v233, secondb);
      v484 = 0u;
      v485 = 0u;
      v482 = 0u;
      v483 = 0u;
      *newpool = 0u;
      GTMTLSMIOCommandBuffer_processTraceFunc(newpool, v233, secondb);
      v479 = v276;
      v277 = find_entry(v451, &v479, 8uLL, 0);
      if (*v277 && (v278 = *(*v277 + 32)) != 0)
      {
        v279 = atomic_load((v278 + 56));
        v280 = (v278 + (~(v279 >> 2) & 8));
      }

      else
      {
        v280 = &dword_8;
      }

      v329 = *v280;
      v479 = pool[0];
      v330 = find_entry(v451, &v479, 8uLL, 0);
      if (*v330 && (v331 = *(*v330 + 32)) != 0)
      {
        v332 = atomic_load((v331 + 56));
        v333 = (v331 + (~(v332 >> 2) & 8));
      }

      else
      {
        v333 = &dword_8;
      }

      v334 = *v333;
      v479 = pool[0];
      v335 = find_entry(v451, &v479, 8uLL, 0);
      if (*v335 && (v336 = *(*v335 + 32)) != 0)
      {
        v337 = atomic_load((v336 + 56));
        v338 = (v336 + (~(v337 >> 2) & 8));
      }

      else
      {
        v338 = &dword_8;
      }

      v339 = *v338;
      v340 = BYTE9(v485);
      v341 = *(a2 + 8);
      *(v341 + 8) = 0;
      *(v341 + 16) = 0u;
      *(v341 + 32) = 0x69744300008005;
      *v341 = 0xFFFFCF0100000028;
      *(v341 + 40) = v329;
      *(v341 + 48) = v339;
      *(v341 + 56) = v340;
      *(v341 + 60) = 116;
      *(v341 + 64) = v334;
      *v341 = 72;
      v294 = *(a2 + 24);
      v295 = *(a2 + 8);
      v296 = *v295;
      if ((*(v295 + 33) & 0x10) != 0)
      {
        v342 = *v295;
        v343 = *(a2 + 8);
        do
        {
          v343 = (v343 + v342);
          v342 = *v343;
          v296 += v342;
        }

        while ((*(v343 + 33) & 0x20) == 0);
      }

LABEL_302:
      v344 = objc_autoreleasePoolPush();
      [*(v294 + 8) appendBytes:v295 length:v296];
      objc_autoreleasePoolPop(v344);
      v345 = *(v231 + 32);
      if (v345)
      {
        v346 = 0;
        while (1)
        {
          v347 = atomic_load((v345 + 4));
          v348 = v346 + (v347 >> 6) - 1;
          if (v348 > 0)
          {
            break;
          }

          v345 = *(v345 + 40);
          v346 = v348;
          if (!v345)
          {
            v346 = v348;
            goto LABEL_309;
          }
        }

        v348 = 0;
LABEL_309:
        v349 = v346 | (v348 << 32);
      }

      else
      {
        v349 = 0;
      }

      while (v345)
      {
        v350 = v345 + 64 + ((HIDWORD(v349) - v349) << 6);
        if ((*(v350 + 15) & 8) == 0 || *v350 == *v184)
        {
          break;
        }

        v351 = *(v350 + 8);
        if ((v351 + 16065) < 2 || v351 == -15313 || v351 == -16365)
        {
          GTTraceFuncToFbuf(a2, *(v466 + 8), v350, 32772);
        }

        v354 = atomic_load((v345 + 4));
        v355 = v349 + (v354 >> 6);
        v356 = (HIDWORD(v349) + 1);
        v349 = (v356 << 32) | v349;
        if (v356 == v355 - 1)
        {
          v349 = (v356 << 32) | v356;
          v345 = *(v345 + 40);
        }
      }

      goto LABEL_187;
    }

LABEL_188:
    v238 = *(v184 + 8);
    isCommandBufferRelated = GTFenum_isCommandBufferRelated(v238);
    isMTL4CommandBufferRelated = GTFenum_isMTL4CommandBufferRelated(v238);
    isMIOCommandBufferRelated = GTFenum_isMIOCommandBufferRelated(v238);
    if ((isCommandBufferRelated & 1) == 0)
    {
      v242 = isMIOCommandBufferRelated;
      if (v211 & (isMIOCommandBufferRelated || isMTL4CommandBufferRelated))
      {
        v169 = a2;
        GTTraceFuncToFbuf(a2, *(v466 + 8), v184, v228);
        if (isMTL4CommandBufferRelated)
        {
          v238 = *(v184 + 8);
          goto LABEL_201;
        }

        LODWORD(v228) = v185;
      }

      else
      {
        LODWORD(v185) = v228;
        v169 = a2;
        if (isMTL4CommandBufferRelated)
        {
          goto LABEL_201;
        }
      }

      if (v242)
      {
        v173 = secondb;
        if (*(v184 + 8) == -15343)
        {
          v444 = GTTraceFunc_targetContext(v184, secondb);
        }

        IOCommandBufferRef = GetIOCommandBufferRef(v184, v182, secondb);
        v252 = &v453->elts[64 * v181];
        v253 = *(v252 + 18);
        v254 = GTFenum_isCommandBufferRelated(v253);
        v255 = GTFenum_isMIOCommandBufferRelated(v253);
        if ((v254 & 1) == 0 && !v255)
        {
          goto LABEL_373;
        }

        v256 = (v252 + 64);
        v182 = v451;
        if (IOCommandBufferRef == GetIOCommandBufferRef(v256, v451, secondb) || v444 == IOCommandBufferRef)
        {
          goto LABEL_374;
        }

        newpool[0] = IOCommandBufferRef;
        v257 = find_entry(v451, newpool, 8uLL, 0);
        if (*v257 && (v258 = *(*v257 + 32)) != 0)
        {
          v259 = atomic_load((v258 + 56));
          v260 = (v258 + (~(v259 >> 2) & 8));
        }

        else
        {
          v260 = &dword_8;
        }

        v383 = *v260;
        v384 = *(v169 + 8);
        *(v384 + 16) = 0;
        *(v384 + 24) = 0;
        *(v384 + 32) = 0;
        *(v384 + 36) = 67;
        *(v384 + 40) = v383;
        *v384 = 0xFFFFC41100000030;
        *(v384 + 8) = 0;
        v359 = v228 | 0x8004;
        v385 = *(v169 + 8);
        v385[8] = v228 | 0x8004;
        v386 = *v385;
        v387 = *(v169 + 24);
        v388 = objc_autoreleasePoolPush();
        [*(v387 + 8) appendBytes:v385 length:v386];
        objc_autoreleasePoolPop(v388);
        newpool[0] = IOCommandBufferRef;
        v389 = find_entry(v451, newpool, 8uLL, 0);
        if (*v389)
        {
          v390 = *(*v389 + 32);
          v173 = secondb;
          if (v390)
          {
            v391 = atomic_load((v390 + 56));
            v392 = (v390 + (~(v391 >> 2) & 8));
          }

          else
          {
            v392 = &dword_8;
          }
        }

        else
        {
          v392 = &dword_8;
          v173 = secondb;
        }

        v399 = *v392;
        v394 = *(v169 + 8);
        *(v394 + 16) = 0;
        *(v394 + 24) = 0;
        *(v394 + 32) = 0;
        *(v394 + 36) = 67;
        *(v394 + 40) = v399;
        *(v394 + 8) = 0;
        v395 = 0xC41300000030;
LABEL_372:
        *v394 = v395 & 0xFFFFFFFFFFFFLL | 0xFFFF000000000000;
        v400 = *(v169 + 8);
        v400[8] = v359;
        v401 = *v400;
        v402 = *(v169 + 24);
        v403 = objc_autoreleasePoolPush();
        [*(v402 + 8) appendBytes:v400 length:v401];
        objc_autoreleasePoolPop(v403);
LABEL_373:
        v182 = v451;
        goto LABEL_374;
      }

      v173 = secondb;
      v479 = GTTraceFunc_getFuncStreamRef(v184, secondb);
      newpool[0] = v479;
      v261 = find_entry(v182, newpool, 8uLL, 0);
      if (!*v261)
      {
        goto LABEL_374;
      }

      v262 = *(*v261 + 32);
      if (!v262)
      {
        goto LABEL_374;
      }

      v263 = *(v184 + 8);
      if ((v263 + 7158) >= 3)
      {
        if (v263 == -7167)
        {
          v368 = GTTraceFunc_argumentBytesWithPool(v184, *(v184 + 13), *(v262 + 24));
          pool[0] = *v368;
          v182 = v451;
          if (GTMTLSMContext_getDrawable(v448, pool[0], *v184))
          {
            v369 = *find_entry(v465, &v479, 8uLL, 0);
            if (!v369 || !*(v369 + 32))
            {
              LODWORD(v228) = v228 | 6;
            }

            v370 = *(v184 + 15);
            v371 = v228 | 4;
            v372 = find_entry(ht, pool, 8uLL, 0);
            if (!*v372 || !*(*v372 + 32))
            {
              if ((v370 & 0x40) != 0)
              {
                v373 = v371;
              }

              else
              {
                v373 = v228;
              }

              GTTraceFuncToFbuf(v169, *(v466 + 8), v184, v373);
              apr_hash_set(ht, pool, 8, *(v368 + 1));
            }

            v374 = *find_entry(v443, v368 + 8, 8uLL, 0);
            if (!v374 || !*(v374 + 32))
            {
              v375 = GTMTLSMContext_lastTexture(v448, *(v368 + 1), 0xFFFFFFFFFFFFFFFFLL);
              v376 = v375;
              if (*(v375 + 120))
              {
                newpool[0] = *(v375 + 8);
                v377 = find_entry(v451, newpool, 8uLL, 0);
                if (*v377 && (v378 = *(*v377 + 32)) != 0)
                {
                  v379 = atomic_load((v378 + 56));
                  v380 = (v378 + (~(v379 >> 2) & 8));
                }

                else
                {
                  v380 = &dword_8;
                }

                v404 = *v380;
                WriteTextureInfo(v169, v376, v451, v371);
                v405 = *(v376 + 88);
                if (!v405)
                {
                  v405 = "";
                }

                newpool[0] = v404;
                newpool[1] = v405;
                DYTraceEncode_MTLTexture_setLabel(newpool, *(v169 + 8), *(v169 + 16), 0, 0);
                v406 = *(v169 + 8);
                v407 = v406[8] | v371;
                v406[8] = v407;
                v408 = *v406;
                if ((v407 & 0x1000) != 0)
                {
                  v409 = *v406;
                  v410 = v406;
                  do
                  {
                    v410 = (v410 + v409);
                    v409 = *v410;
                    v408 += v409;
                  }

                  while ((*(v410 + 33) & 0x20) == 0);
                }

                fbstream_write(*(v169 + 24), v406, v408);
                if (!*(v376 + 48) && !*(v376 + 144) && !*(v376 + 152))
                {
                  v411 = *(v376 + 106);
                  v412 = *(v169 + 8);
                  *(v412 + 24) = 0;
                  *(v412 + 8) = 0u;
                  *(v412 + 32) = 0x6C754300000000;
                  *v412 = 0xFFFFC09800000028;
                  *(v412 + 40) = v404;
                  *(v412 + 48) = v411;
                  *v412 = 56;
                  v413 = *(v169 + 8);
                  LODWORD(v411) = v413[8] | v371;
                  v413[8] = v411;
                  v414 = *v413;
                  if ((v411 & 0x1000) != 0)
                  {
                    v415 = *v413;
                    v416 = v413;
                    do
                    {
                      v416 = (v416 + v415);
                      v415 = *v416;
                      v414 += v415;
                    }

                    while ((*(v416 + 33) & 0x20) == 0);
                  }

                  fbstream_write(*(v169 + 24), v413, v414);
                }

                v417 = *(v169 + 8);
                *(v417 + 24) = 0;
                *(v417 + 8) = 0u;
                *(v417 + 32) = 0x69754300000006;
                *v417 = 0xFFFFD80600000028;
                *(v417 + 40) = v404;
                *(v417 + 48) = 0;
                *v417 = 52;
                v418 = *(v169 + 8);
                LODWORD(v417) = v418[8] | v371;
                v418[8] = v417;
                v419 = *v418;
                if ((v417 & 0x1000) != 0)
                {
                  v420 = *v418;
                  v421 = v418;
                  do
                  {
                    v421 = (v421 + v420);
                    v420 = *v421;
                    v419 += v420;
                  }

                  while ((*(v421 + 33) & 0x20) == 0);
                }

                fbstream_write(*(v169 + 24), v418, v419);
              }

              apr_hash_set(v443, v368 + 8, 8, v376);
            }
          }

          goto LABEL_374;
        }
      }

      else if (*a3 == 1)
      {
        v264 = GTTraceFunc_argumentBytesWithPool(v184, *(v184 + 13), *(v262 + 24));
        Drawable = GTMTLSMContext_getDrawable(v448, *v264, *v184);
        if (Drawable)
        {
          v266 = *find_entry(v441, Drawable + 48, 8uLL, 0);
          if (v266)
          {
            v267 = *(v266 + 32);
            if (v267)
            {
              v268 = apr_array_make(v475, 1, 8);
              *apr_array_push(v268) = v267;
              WriteRestores(v169, v268, v228 | 6, v451);
            }
          }
        }
      }

      v381 = *(v262 + 32);
      if (v381)
      {
        v182 = v451;
        if ((*(v381 + 79) & 8) != 0)
        {
          v382 = v381 + 64;
        }

        else
        {
          v382 = 0;
        }
      }

      else
      {
        v382 = 0;
        v182 = v451;
      }

      v396 = *(v184 + 8);
      ConstructorType = GTFenum_getConstructorType(v396);
      if (ConstructorType == 25 || (v396 + 6144) <= 0x29 && ((0x3806C9D5295uLL >> v396) & 1) != 0 || (v396 + 15345) <= 0x38 && ((0x17C40BE00017E7FuLL >> (v396 - 15)) & 1) != 0 || ConstructorType == 51 || !v382 || !GTFenum_isCreateResource(*(v382 + 8)))
      {
        goto LABEL_374;
      }

      if (*(v184 + 15))
      {
        goto LABEL_396;
      }

      v398 = *find_entry(v440, &v479, 8uLL, 0);
      if (v398)
      {
        v396 = *(v184 + 8);
        if (*(v398 + 32))
        {
          goto LABEL_397;
        }
      }

      else
      {
        v396 = *(v184 + 8);
      }

      if (!NeverIgnoreFenum(v396))
      {
LABEL_396:
        LODWORD(v228) = v228 | 6;
      }

LABEL_397:
      v422 = (*(v184 + 15) >> 4) & 4;
      if (GTFenum_isDestructor(v396))
      {
        v423 = 6;
      }

      else
      {
        v423 = v422;
      }

      v424 = v423 | v228;
      if (GTMTLSMContext_getObject(v448, v479, *v184))
      {
        v425 = v424;
      }

      else
      {
        v425 = v424 | 0x200;
      }

      v426 = find_entry(v440, &v479, 8uLL, 0);
      if (!*v426 || !*(*v426 + 32))
      {
        v425 = v425 | 6;
      }

      GTTraceFuncToFbuf(v169, *(v466 + 8), v184, v425);
      goto LABEL_374;
    }

    if (!v211)
    {
      LODWORD(v185) = v228;
      v169 = a2;
      if (isMTL4CommandBufferRelated)
      {
        goto LABEL_201;
      }

LABEL_196:
      if (v238 <= -15909)
      {
        v173 = secondb;
        if (v238 == -16361)
        {
          goto LABEL_229;
        }

        v243 = -16202;
      }

      else
      {
        v173 = secondb;
        if (v238 == -15908 || v238 == -15316)
        {
          goto LABEL_229;
        }

        v243 = -15318;
      }

      if (v238 != v243)
      {
LABEL_230:
        CommandBufferRef = GetCommandBufferRef(v184, v182, v173);
        v270 = &v453->elts[64 * v181];
        v271 = *(v270 + 18);
        if (GTFenum_isCommandBufferRelated(v271))
        {
          if (CommandBufferRef == GetCommandBufferRef((v270 + 64), v182, v173) || v446 == CommandBufferRef)
          {
            goto LABEL_374;
          }

          v271 = *(v270 + 18);
        }

        else if (v446 == CommandBufferRef)
        {
          goto LABEL_374;
        }

        if (!v271)
        {
          goto LABEL_374;
        }

        newpool[0] = CommandBufferRef;
        v272 = find_entry(v182, newpool, 8uLL, 0);
        if (*v272 && (v273 = *(*v272 + 32)) != 0)
        {
          v274 = atomic_load((v273 + 56));
          v275 = (v273 + (~(v274 >> 2) & 8));
        }

        else
        {
          v275 = &dword_8;
        }

        v357 = *v275;
        v358 = *(v169 + 8);
        *(v358 + 16) = 0;
        *(v358 + 24) = 0;
        *(v358 + 32) = 0;
        *(v358 + 36) = 67;
        *(v358 + 40) = v357;
        *v358 = 0xFFFFC01700000030;
        *(v358 + 8) = 0;
        v359 = v185 | 0x8004;
        v360 = *(v169 + 8);
        v360[8] = v185 | 0x8004;
        v361 = *v360;
        v362 = *(v169 + 24);
        v363 = objc_autoreleasePoolPush();
        [*(v362 + 8) appendBytes:v360 length:v361];
        objc_autoreleasePoolPop(v363);
        newpool[0] = CommandBufferRef;
        v364 = find_entry(v451, newpool, 8uLL, 0);
        if (*v364)
        {
          v365 = *(*v364 + 32);
          v173 = secondb;
          if (v365)
          {
            v366 = atomic_load((v365 + 56));
            v367 = (v365 + (~(v366 >> 2) & 8));
          }

          else
          {
            v367 = &dword_8;
          }
        }

        else
        {
          v367 = &dword_8;
          v173 = secondb;
        }

        v393 = *v367;
        v394 = *(v169 + 8);
        *(v394 + 16) = 0;
        *(v394 + 24) = 0;
        *(v394 + 32) = 0;
        *(v394 + 36) = 67;
        *(v394 + 40) = v393;
        *(v394 + 8) = 0;
        v395 = 0xC01500000030;
        goto LABEL_372;
      }

LABEL_229:
      v446 = GTTraceFunc_targetContext(v184, v173);
      goto LABEL_230;
    }

    v169 = a2;
    GTTraceFuncToFbuf(a2, *(v466 + 8), v184, v228);
    v238 = *(v184 + 8);
    if (!isMTL4CommandBufferRelated)
    {
      goto LABEL_196;
    }

LABEL_201:
    if (GTFenum_isBeginCommandBuffer(v238))
    {
      pool[0] = GTTraceFunc_getFuncStreamRef(v184, secondb);
      v244 = *find_entry(v447, pool, 8uLL, 0);
      if (v244)
      {
        v245 = *(v244 + 32);
      }

      else
      {
        v245 = 0;
      }

      WriteRestores(v169, v245, v185, v182);
      v299 = *(v466 + 8);
      v300 = pool[0];
      v301 = *(v299 + 16);
      v302 = *(v299 + 24);
      newpool[0] = GetCommandBufferParentStreamRef(v301, v302, pool[0]);
      v303 = *find_entry(v301, newpool, 8uLL, 0);
      if (v303)
      {
        v304 = *(v303 + 32);
      }

      else
      {
        v304 = 0;
      }

      newpool[0] = v300;
      v305 = *find_entry(v301, newpool, 8uLL, 0);
      if (v305)
      {
        v306 = *(v305 + 32);
      }

      else
      {
        v306 = 0;
      }

      Func = GTTraceStream_lastFunc(v306);
      if (Func)
      {
        v308 = *Func;
      }

      else
      {
        v308 = -1;
      }

      v309 = *(v304 + 32);
      if (v309)
      {
        v310 = 0;
        while (1)
        {
          v311 = atomic_load((v309 + 4));
          v312 = v310 + (v311 >> 6) - 1;
          if (v312 > 0)
          {
            break;
          }

          v309 = *(v309 + 40);
          v310 = v312;
          if (!v309)
          {
            v310 = v312;
            goto LABEL_272;
          }
        }

        v312 = 0;
LABEL_272:
        v313 = v310 | (v312 << 32);
      }

      else
      {
        v313 = 0;
      }

      v314 = 0;
LABEL_274:
      v315 = v309 + 64;
      while (v309)
      {
        v316 = v315 + ((HIDWORD(v313) - v313) << 6);
        if ((*(v316 + 15) & 8) == 0 || *v316 >= v308)
        {
          break;
        }

        if (GTFenum_isSetLabel(*(v316 + 8)))
        {
          v317 = GTTraceFunc_argumentBytesWithMap((v315 + ((HIDWORD(v313) - v313) << 6)), *(v316 + 13), v302);
          v314 = GTTraceFunc_argumentBytesWithMap((v315 + ((HIDWORD(v313) - v313) << 6)), v317[8], v302);
        }

        v318 = atomic_load((v309 + 4));
        v319 = v313 + (v318 >> 6);
        v320 = (HIDWORD(v313) + 1);
        v313 = (v320 << 32) | v313;
        if (v320 == v319 - 1)
        {
          v313 = (v320 << 32) | v320;
          v309 = *(v309 + 40);
          goto LABEL_274;
        }
      }

      v169 = a2;
      if (v314)
      {
        newpool[1] = 0;
        newpool[0] = 0;
        v479 = pool[0];
        v321 = find_entry(v451, &v479, 8uLL, 0);
        if (*v321 && (v322 = *(*v321 + 32)) != 0)
        {
          v323 = atomic_load((v322 + 56));
          v324 = (v322 + (~(v323 >> 2) & 8));
        }

        else
        {
          v324 = &dword_8;
        }

        newpool[0] = *v324;
        newpool[1] = v314;
        DYTraceEncode_MTL4CommandBuffer_setLabel(newpool, *(a2 + 8), *(a2 + 16), 0, 0);
        v325 = *(a2 + 8);
        v325[8] = v185 | 4;
        v326 = *v325;
        v327 = *(a2 + 24);
        v328 = objc_autoreleasePoolPush();
        [*(v327 + 8) appendBytes:v325 length:v326];
        objc_autoreleasePoolPop(v328);
      }

      v182 = v451;
    }

    v173 = secondb;
LABEL_374:
    ++v181;
    v179 = *pb;
  }

  while (*v459 + *pb > v181);
  v177 = v475;
LABEL_419:
  apr_pool_destroy(v177);
LABEL_420:
  v438 = *(v169 + 24);
  apr_pool_cleanup_kill(*v438, v438, fbstream_cleanup);
  return fbstream_cleanup(v438);
}

void WriteRestores(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2 && *(a2 + 12) >= 1)
  {
    for (i = 0; i < *(a2 + 12); ++i)
    {
      v9 = *(*(a2 + 24) + 8 * i);
      v10 = *(v9 + 46);
      if (v10 > 0x4F)
      {
        switch(v10)
        {
          case 'P':
            v77 = 0;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            *__str = *(v9 + 8);
            entry = find_entry(a4, __str, 8uLL, 0);
            if (*entry && (v34 = *(*entry + 32)) != 0)
            {
              v35 = atomic_load((v34 + 56));
              v36 = (v34 + (~(v35 >> 2) & 8));
            }

            else
            {
              v36 = &dword_8;
            }

            v41 = *v36;
            v72 = 0uLL;
            v42 = *(v9 + 60);
            v71 = v41;
            *&v73 = v42;
            v43 = *(v9 + 66);
            *(&v73 + 1) = *(v9 + 64);
            *&v74 = v43;
            v44 = *(v9 + 48);
            *(&v74 + 1) = *(v9 + 50);
            *&v75 = v44;
            GTResourceDownloaderGetResourceFilename(v9, 0, __str, 0x80uLL);
            *(&v75 + 1) = __str;
            v45 = *(v9 + 68);
            *&v46 = v45;
            *(&v46 + 1) = HIDWORD(v45);
            v76 = v46;
            v77 = *(v9 + 76);
            DYTraceEncode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(&v71, *(a1 + 8), *(a1 + 16), 0, 0);
            v47 = *(a1 + 8);
            v47[1] = -10236;
            v48 = v47[8] | a3;
            v49 = v48 | 4;
            v47[8] = v48 | 4;
            if ((*(v9 + 47) & 4) != 0)
            {
              v49 = v48 | 6;
              v47[8] = v48 | 6;
            }

            v50 = *(a1 + 24);
            v51 = *v47;
            if ((v49 & 0x1000) != 0)
            {
              v66 = v47;
              v52 = *v47;
              do
              {
                v66 = (v66 + v51);
                v51 = *v66;
                v52 += v51;
              }

              while ((*(v66 + 33) & 0x20) == 0);
            }

            else
            {
              v52 = *v47;
            }

            v62 = objc_autoreleasePoolPush();
            v63 = *(v50 + 8);
            v64 = v47;
            v65 = v52;
            goto LABEL_55;
          case 'S':
            *__str = *(v9 + 8);
            v37 = find_entry(a4, __str, 8uLL, 0);
            if (*v37 && (v38 = *(*v37 + 32)) != 0)
            {
              v39 = atomic_load((v38 + 56));
              v40 = (v38 + (~(v39 >> 2) & 8));
            }

            else
            {
              v40 = &dword_8;
            }

            v68[0] = *v40;
            GTResourceDownloaderGetResourceFilename(v9, 0, __str, 0x80uLL);
            v68[1] = __str;
            v68[2] = 0;
            v68[3] = *(v9 + 48);
            DYTraceEncode_MTLVisibleFunctionTable_setFunctions_withRange(v68, *(a1 + 8), *(a1 + 16), 0, 0);
            v27 = *(a1 + 8);
            v59 = v27[8];
            v27[8] = v59 | 4;
            v29 = *(a1 + 24);
            v30 = *v27;
            if ((v59 & 0x1000) != 0)
            {
              v60 = *v27;
              v61 = v27;
              do
              {
                v61 = (v61 + v60);
                v60 = *v61;
                v30 += v60;
              }

              while ((*(v61 + 33) & 0x20) == 0);
            }

LABEL_54:
            v62 = objc_autoreleasePoolPush();
            v63 = *(v29 + 8);
            v64 = v27;
            v65 = v30;
LABEL_55:
            [v63 appendBytes:v64 length:v65];
            objc_autoreleasePoolPop(v62);
            break;
          case 'V':
            *__str = *(v9 + 8);
            v15 = find_entry(a4, __str, 8uLL, 0);
            if (*v15 && (v16 = *(*v15 + 32)) != 0)
            {
              v17 = atomic_load((v16 + 56));
              v18 = (v16 + (~(v17 >> 2) & 8));
            }

            else
            {
              v18 = &dword_8;
            }

            v69[0] = *v18;
            GTResourceDownloaderGetResourceFilename(v9, *(v9 + 56), __str, 0x80uLL);
            v69[1] = __str;
            v70 = *(v9 + 48);
            DYTraceEncode_MTLTexture_restoreIOSurfaceData_length_forPlane(v69, *(a1 + 8), *(a1 + 16), 0, 0);
            v27 = *(a1 + 8);
            v56 = v27[8];
            v27[8] = v56 | 4;
            v29 = *(a1 + 24);
            v30 = *v27;
            if ((v56 & 0x1000) != 0)
            {
              v57 = *v27;
              v58 = v27;
              do
              {
                v58 = (v58 + v57);
                v57 = *v58;
                v30 += v57;
              }

              while ((*(v58 + 33) & 0x20) == 0);
            }

            goto LABEL_54;
        }
      }

      else
      {
        if (v10 == 22 || v10 == 50)
        {
          *__str = *(v9 + 16);
          v19 = find_entry(a4, __str, 8uLL, 0);
          if (*v19 && (v20 = *(*v19 + 32)) != 0)
          {
            v21 = atomic_load((v20 + 56));
            v22 = (v20 + (~(v21 >> 2) & 8));
          }

          else
          {
            v22 = &dword_8;
          }

          v78[0] = *v22;
          *__str = *(v9 + 8);
          v23 = find_entry(a4, __str, 8uLL, 0);
          if (*v23 && (v24 = *(*v23 + 32)) != 0)
          {
            v25 = atomic_load((v24 + 56));
            v26 = (v24 + (~(v25 >> 2) & 8));
          }

          else
          {
            v26 = &dword_8;
          }

          v78[1] = *v26;
          GTResourceDownloaderGetResourceFilename(v9, 0, __str, 0x80uLL);
          v78[2] = __str;
          v79 = *(v9 + 48);
          DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v78, *(a1 + 8), *(a1 + 16), 0, 0);
          v27 = *(a1 + 8);
          v28 = v27[8] | a3;
          v27[8] = v28;
          v29 = *(a1 + 24);
          v30 = *v27;
          if ((v28 & 0x1000) != 0)
          {
            v31 = *v27;
            v32 = v27;
            do
            {
              v32 = (v32 + v31);
              v31 = *v32;
              v30 += v31;
            }

            while ((*(v32 + 33) & 0x20) == 0);
          }

          goto LABEL_54;
        }

        if (v10 == 60)
        {
          *__str = *(v9 + 8);
          v11 = find_entry(a4, __str, 8uLL, 0);
          if (*v11 && (v12 = *(*v11 + 32)) != 0)
          {
            v13 = atomic_load((v12 + 56));
            v14 = (v12 + (~(v13 >> 2) & 8));
          }

          else
          {
            v14 = &dword_8;
          }

          v67[0] = *v14;
          GTResourceDownloaderGetResourceFilename(v9, 1, __str, 0x80uLL);
          v67[1] = __str;
          DYTraceEncode_MTLIntersectionFunctionTable_setBuffers(v67, *(a1 + 8), *(a1 + 16), 0, 0);
          v27 = *(a1 + 8);
          v53 = v27[8];
          v27[8] = v53 | 4;
          v29 = *(a1 + 24);
          v30 = *v27;
          if ((v53 & 0x1000) != 0)
          {
            v54 = *v27;
            v55 = v27;
            do
            {
              v55 = (v55 + v54);
              v54 = *v55;
              v30 += v54;
            }

            while ((*(v55 + 33) & 0x20) == 0);
          }

          goto LABEL_54;
        }
      }
    }
  }
}

char *GetCommandBufferRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = GTTraceFunc_targetContext(a1, a3);
  v7 = *(a1 + 8);
  ReceiverType = GTFenum_getReceiverType(v7);
  if (ReceiverType == 25)
  {
    return v6;
  }

  v9 = ReceiverType;
  if (ReceiverType == 51)
  {
    return v6;
  }

  ConstructorType = GTFenum_getConstructorType(v7);
  if (v9 == 27 && ConstructorType != 0)
  {

    return GTTraceFunc_getFuncStreamRef(a1, a3);
  }

  if (v7 + 20474) <= 0x36 && ((0x40000020020001uLL >> (v7 - 6)))
  {
    return *(GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a3) + 1);
  }

  v20 = v6;
  v13 = *(*(*find_entry(a2, &v20, 8uLL, 0) + 32) + 32);
  v14 = *(v13 + 72);
  v15 = GTTraceFunc_targetContext(v13 + 64, a3);
  v6 = v15;
  if (v14 != -16286)
  {
    return v6;
  }

  v20 = v15;
  v16 = *find_entry(a2, &v20, 8uLL, 0);
  if (v16 && (v17 = *(v16 + 32)) != 0 && (v18 = *(v17 + 32)) != 0 && (*(v18 + 79) & 8) != 0)
  {
    v19 = v18 + 64;
  }

  else
  {
    v19 = 0;
  }

  return GTTraceFunc_targetContext(v19, a3);
}

char *GetIOCommandBufferRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = GTTraceFunc_targetContext(a1, a3);
  v7 = *(a1 + 8);
  ReceiverType = GTFenum_getReceiverType(v7);
  if (ReceiverType == 25)
  {
    return v6;
  }

  v9 = ReceiverType;
  if (ReceiverType == 51)
  {
    return v6;
  }

  ConstructorType = GTFenum_getConstructorType(v7);
  if (v9 != 52 || ConstructorType == 0)
  {
    v17 = v6;
    v13 = *find_entry(a2, &v17, 8uLL, 0);
    if (v13 && (v14 = *(v13 + 32)) != 0 && (v15 = *(v14 + 32)) != 0 && (*(v15 + 79) & 8) != 0)
    {
      v16 = v15 + 64;
    }

    else
    {
      v16 = 0;
    }

    return GTTraceFunc_targetContext(v16, a3);
  }

  else
  {

    return GTTraceFunc_getFuncStreamRef(a1, a3);
  }
}

uint64_t CompareCommandBufferIndex(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a1 > *a2;
  if (*a2 == -1)
  {
    v3 = 1;
  }

  if (v2 < *a2 || v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

pthread_mutex_t *GTResourceHarvesterMake(apr_pool_t *a1)
{
  v2 = apr_palloc(a1, 0x48uLL);
  pthread_mutex_init(v2, 0);
  v2[1].__sig = apr_hash_make(a1);
  return v2;
}

apr_array_header_t *GTResourceHarvesterGetDownloadRequests(pthread_mutex_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1[1].__sig;
  pthread_mutex_lock(a1);
  v7 = apr_array_make(v6, 0, 456);
  if (*(a3 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    v28 = v6;
    do
    {
      v10 = *(a3 + 24);
      v11 = v10 + v8;
      if (*(v10 + v8 + 24) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = *find_entry(a1[1].__sig, (v11 + 8), 8uLL, 0);
        if (v12 && (v13 = *(v12 + 32)) != 0)
        {
          if (*(v10 + v8 + 32) != *v13 && *(v10 + v8 + 48) == 1)
          {
            v14 = v10 + v8;
            v15 = *(v10 + v8);
            v16 = *(v13 + 8);
            v17 = *(v13 + 16);
            *(v13 + 16) = v17 + 1;
            v18 = *(v14 + 40);
            v19 = apr_array_push(v7);
            *v19 = v15;
            *(v19 + 1) = v16;
            *(v19 + 3) = 0;
            *(v19 + 4) = 0;
            *(v19 + 2) = a2;
            *(v19 + 10) = v17;
            *(v19 + 22) = 0;
            v19[46] = v18;
            v6 = v28;
            *(v19 + 63) = 0u;
            *(v19 + 79) = 0u;
            *(v19 + 95) = 0u;
            *(v19 + 111) = 0u;
            *(v19 + 127) = 0u;
            *(v19 + 143) = 0u;
            *(v19 + 159) = 0u;
            *(v19 + 175) = 0u;
            *(v19 + 191) = 0u;
            *(v19 + 207) = 0u;
            *(v19 + 223) = 0u;
            *(v19 + 239) = 0u;
            *(v19 + 255) = 0u;
            v20 = v19 + 440;
            *(v19 + 47) = 0u;
            v19 += 47;
            *(v19 + 14) = 0u;
            *(v19 + 15) = 0u;
            *(v19 + 16) = 0u;
            *(v19 + 17) = 0u;
            *(v19 + 18) = 0u;
            *(v19 + 19) = 0u;
            *(v19 + 20) = 0u;
            *(v19 + 21) = 0u;
            *(v19 + 22) = 0u;
            *(v19 + 23) = 0u;
            *(v19 + 24) = 0u;
            *v20 = 0u;
          }
        }

        else
        {
          v21 = apr_palloc(v6, 0x18uLL);
          v22 = v21;
          if (v21)
          {
            *v21 = 0;
            v21[1] = 0;
            v21[2] = 0;
          }

          v29 = *(v11 + 8);
          *v21 = vextq_s8(v29, v29, 8uLL);
          v23 = *(v10 + v8);
          *(v21 + 4) = 1;
          v24 = *(v10 + v8 + 40);
          v25 = apr_array_push(v7);
          *v25 = v23;
          *(v25 + 1) = v29.i64[0];
          *(v25 + 3) = 0;
          *(v25 + 4) = 0;
          *(v25 + 2) = a2;
          *(v25 + 38) = 0;
          v25[46] = v24;
          *(v25 + 63) = 0u;
          *(v25 + 79) = 0u;
          *(v25 + 95) = 0u;
          *(v25 + 111) = 0u;
          *(v25 + 127) = 0u;
          *(v25 + 143) = 0u;
          *(v25 + 159) = 0u;
          *(v25 + 175) = 0u;
          *(v25 + 191) = 0u;
          *(v25 + 207) = 0u;
          *(v25 + 223) = 0u;
          *(v25 + 239) = 0u;
          *(v25 + 255) = 0u;
          v26 = v25 + 440;
          *(v25 + 47) = 0u;
          v25 += 47;
          *(v25 + 14) = 0u;
          *(v25 + 15) = 0u;
          *(v25 + 16) = 0u;
          *(v25 + 17) = 0u;
          *(v25 + 18) = 0u;
          *(v25 + 19) = 0u;
          *(v25 + 20) = 0u;
          *(v25 + 21) = 0u;
          *(v25 + 22) = 0u;
          *(v25 + 23) = 0u;
          *(v25 + 24) = 0u;
          *v26 = 0u;
          apr_hash_set(a1[1].__sig, v22 + 1, 8, v22);
        }
      }

      ++v9;
      v8 += 56;
    }

    while (v9 < *(a3 + 12));
  }

  pthread_mutex_unlock(a1);
  return v7;
}

void TranslateGTMTLArgument(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v60 = a2;
  v7 = [v60 name];
  v8 = [v7 UTF8String];
  v9 = [v60 name];
  if ([v9 UTF8String])
  {
    v10 = [v60 name];
    v11 = strlen([v10 UTF8String]);
    v12 = v11 + 1;
    if (v11 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3[29];
    }

    a3[29] += v12;
    if (a4)
    {
      memcpy(v13, v8, v12);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [v60 access];
  v15 = [v60 isActive];
  v16 = [v60 index];
  v17 = [v60 type];
  v18 = [v60 type];
  v19 = 0;
  v20 = 0;
  v58 = v14;
  v59 = v13;
  v57 = v16;
  v56 = v15;
  v55 = v17;
  if (v18 > 15)
  {
    if (v18 == &dword_10)
    {
      v41 = v60;
      v42 = [v41 imageBlockDataSize];
      v43 = v42 & 0xFFFFFF00FFFFFFFFLL | ([v41 aliasImplicitImageBlockRenderTarget] << 32);
      v44 = [v41 aliasImplicitImageBlock];
      v45 = 0x10000000000;
      if (!v44)
      {
        v45 = 0;
      }

      v23 = v43 | v45;
      v46 = [v41 imageBlockMasterStructMembers];
      if (!v46)
      {
LABEL_39:
        v47 = [v41 dataTypeDescription];
        v25 = TranslateGTMTLType(v47, a3, a4);
        v24 = 0;
LABEL_40:

        v20 = 0;
        v21 = 0;
        v22 = 0;
        v19 = 0;
        if (!a4)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v18 != (&dword_10 + 1))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        if (v18 != (&stru_20.cmd + 3))
        {
          goto LABEL_31;
        }

        v31 = v60;
        v32 = [v31 meshVertexStruct];
        v23 = TranslateGTMTLStructType(v32, a3, a4);

        v33 = [v31 meshPrimitiveStruct];
        v19 = TranslateGTMTLStructType(v33, a3, a4);

        v20 = [v31 meshVertexCount];
        v21 = [v31 meshPrimitiveCount];
        v22 = [v31 meshTopologyType];
        v34 = [v31 builtInType];
        v35 = [v31 builtInDataType];

        v25 = 0;
        v24 = v34 & 0xFFFFFFFFFFFF00FFLL | (v35 << 8);
        if (!a4)
        {
          goto LABEL_33;
        }

LABEL_32:
        *a1 = v59;
        *(a1 + 8) = v25;
        *(a1 + 16) = v55;
        *(a1 + 17) = v58;
        *(a1 + 18) = v57;
        *(a1 + 19) = v56 | 2;
        *(a1 + 20) = 0;
        *(a1 + 24) = v24;
        *(a1 + 32) = v23;
        *(a1 + 40) = v19;
        *(a1 + 48) = v20;
        *(a1 + 50) = v21;
        *(a1 + 52) = v22;
        *(a1 + 53) = 0;
        *(a1 + 55) = 0;
        goto LABEL_33;
      }

      v41 = v60;
      v50 = [v41 imageBlockKind];
      v51 = [v41 imageBlockDataSize] | (v50 << 48);
      v52 = v51 & 0xFFFFFF00FFFFFFFFLL | ([v41 aliasImplicitImageBlockRenderTarget] << 32);
      v53 = [v41 aliasImplicitImageBlock];
      v54 = 0x10000000000;
      if (!v53)
      {
        v54 = 0;
      }

      v23 = v52 | v54;
      v46 = [v41 dataTypeDescription];
      if (v46)
      {
        goto LABEL_39;
      }
    }

    v47 = [v41 imageBlockMasterStructMembers];
    v24 = TranslateGTMTLStructType(v47, a3, a4);
    v25 = 0;
    goto LABEL_40;
  }

  if (!v18)
  {
    v36 = [v60 bufferAlignment];
    v37 = [v60 bufferDataSize] | (v36 << 32);
    v38 = v37 & 0xFF00FFFFFFFFFFFFLL | ([v60 bufferDataType] << 48);
    v39 = [v60 isVertexDescriptorBuffer];
    v40 = 0x100000000000000;
    if (!v39)
    {
      v40 = 0;
    }

    v24 = v38 | v40;
    goto LABEL_30;
  }

  if (v18 == (&dword_0 + 1))
  {
    v48 = [v60 threadgroupMemoryAlignment];
    v24 = [v60 threadgroupMemoryDataSize] | (v48 << 32);
LABEL_30:
    v49 = [v60 dataTypeDescription];
    v25 = TranslateGTMTLType(v49, a3, a4);

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v23 = 0;
LABEL_31:
    if (!a4)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v18 != (&dword_0 + 2))
  {
    goto LABEL_31;
  }

  v26 = [v60 textureDataType];
  v27 = [v60 textureType] | (v26 << 8);
  v28 = v27 & 0xFFFFFFFFFF00FFFFLL | ([v60 arrayLength] << 16);
  v29 = [v60 isDepthTexture];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v23 = 0;
  v25 = 0;
  v30 = 0x1000000;
  if (!v29)
  {
    v30 = 0;
  }

  v24 = v28 | v30;
  if (a4)
  {
    goto LABEL_32;
  }

LABEL_33:
}

uint64_t TranslateGTMTLType(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v7 = [v5 dataType];
  v8 = 0;
  if (v7 <= 57)
  {
    if (v7 == &dword_0 + 1)
    {
      v8 = TranslateGTMTLStructType(v6, a2, a3);
      goto LABEL_20;
    }

    if (v7 == &dword_0 + 2)
    {
      v15 = v6;
      v8 = a2[23];
      a2[23] = v8 + 32;
      v16 = [v15 elementTypeDescription];
      v17 = TranslateGTMTLType(v16, a2, a3);

      if (a3)
      {
        *v8 = 2;
        *(v8 + 20) = [v15 arrayLength];
        *(v8 + 24) = [v15 elementType];
        *(v8 + 16) = [v15 stride];
        *(v8 + 22) = [v15 argumentIndexStride];
        *(v8 + 8) = v17;
        if (objc_opt_respondsToSelector())
        {
          *(v8 + 25) = [v15 aluType];
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (v7 != &stru_20.vmaddr + 2)
    {
      if (v7 != &stru_20.vmaddr + 4)
      {
        if (v7 == &stru_68.addr + 4)
        {
          v8 = a2[25];
          a2[25] = v8 + 152;
          if (a3)
          {
            *v8 = -116;
            v9 = v6;
            v10 = [v9 dimensions];
            MakeGTMTLTensorExtents(v10, v23);
            v11 = v23[4];
            *(v8 + 88) = v23[5];
            v12 = v23[7];
            *(v8 + 104) = v23[6];
            *(v8 + 120) = v12;
            v13 = v23[0];
            *(v8 + 24) = v23[1];
            v14 = v23[3];
            *(v8 + 40) = v23[2];
            *(v8 + 56) = v14;
            *(v8 + 72) = v11;
            *(v8 + 136) = v24;
            *(v8 + 8) = v13;

            *(v8 + 146) = [v9 access];
            *(v8 + 145) = [v9 indexType];
            LOBYTE(v10) = [v9 tensorDataType];

            *(v8 + 144) = v10;
          }
        }

        goto LABEL_20;
      }

      v15 = v6;
      v8 = a2[20];
      a2[20] = v8 + 24;
      v20 = [v15 elementTypeDescription];
      v21 = TranslateGTMTLType(v20, a2, a3);

      if (a3)
      {
        *v8 = 60;
        *(v8 + 23) = [v15 access];
        *(v8 + 20) = [v15 alignment];
        *(v8 + 16) = [v15 dataSize];
        *(v8 + 22) = [v15 elementType];
        *(v8 + 8) = v21;
      }

LABEL_18:

      goto LABEL_20;
    }

    v8 = a2[24];
    a2[24] = v8 + 16;
    if (a3)
    {
      *v8 = 58;
      v18 = v6;
      *(v8 + 10) = [v18 access];
      *(v8 + 8) = [v18 textureDataType];
      v19 = [v18 textureType];

      *(v8 + 9) = v19;
    }
  }

LABEL_20:

  return v8;
}

uint64_t TranslateGTMTLStructType(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  v5 = v4;
  if (v4)
  {
    v6 = *(a2 + 168);
    v7 = *(a2 + 176);
    *(a2 + 168) = v6 + 24;
    v8 = [v4 members];
    *(a2 + 176) += 32 * [v8 count];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v5 members];
    v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v29 = v6;
      v30 = v5;
      v11 = 0;
      v34 = *v37;
      v28 = v7;
      v31 = v7 + 25;
      do
      {
        v12 = 0;
        v13 = (v31 + 32 * v11);
        v32 = v10 + v11;
        do
        {
          v14 = a2;
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + v12);
          v16 = [v15 name];
          v17 = [v16 UTF8String];
          v18 = [v15 name];
          if ([v18 UTF8String])
          {
            v19 = [v15 name];
            v20 = strlen([v19 UTF8String]);
            v21 = v20 + 1;
            if (v20 == -1)
            {
              v22 = 0;
            }

            else
            {
              v22 = *(v14 + 232);
            }

            *(v14 + 232) += v21;
            if (a3)
            {
              memcpy(v22, v17, v21);
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = [v15 dataTypeDescription];
          a2 = v14;
          v24 = TranslateGTMTLType(v23, v14, a3);

          if (a3)
          {
            *(v13 - 25) = v22;
            *(v13 - 9) = [v15 offset];
            *(v13 - 1) = [v15 dataType];
            *(v13 - 5) = [v15 argumentIndex];
            *(v13 - 3) = [v15 indirectArgumentIndex];
            *(v13 - 17) = v24;
            if (objc_opt_respondsToSelector())
            {
              v25 = v15;
              *v13 = [v25 aluType];
            }
          }

          v13 += 32;
          v12 += 8;
          --v10;
        }

        while (v10);
        v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        v11 = v32;
      }

      while (v10);
      v6 = v29;
      v5 = v30;
      v7 = v28;
    }

    else
    {
      v11 = 0;
    }

    if (a3)
    {
      *v6 = 1;
      if (v11)
      {
        v26 = v7;
      }

      else
      {
        v26 = 0;
      }

      *(v6 + 8) = v26;
      *(v6 + 16) = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void TranslateGTMTLBinding(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 name];
  v9 = [v8 UTF8String];
  v10 = [v7 name];
  if ([v10 UTF8String])
  {
    v11 = [v7 name];
    v12 = strlen([v11 UTF8String]);
    v13 = v12 + 1;
    if (v12 == -1)
    {
      v14 = 0;
    }

    else
    {
      v14 = a3[29];
    }

    a3[29] += v13;
    if (a4)
    {
      memcpy(v14, v9, v13);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 access];
  v16 = [v7 isUsed];
  if ([v7 isArgument])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v7 index];
  v53 = [v7 type];
  v59 = v7;
  v19 = [v59 type];
  v20 = 0;
  v21 = 0;
  v57 = v15;
  v58 = v14;
  v56 = v16;
  v55 = v18;
  v54 = v17;
  if (v19 <= 15)
  {
    if (v19)
    {
      if (v19 != (&dword_0 + 1))
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        if (v19 == (&dword_0 + 2))
        {
          v27 = [v59 textureDataType];
          v28 = [v59 textureType] | (v27 << 8);
          v29 = v28 & 0xFFFFFFFFFF00FFFFLL | ([v59 arrayLength] << 16);
          v30 = [v59 isDepthTexture];
          v21 = 0;
          v22 = 0;
          v20 = 0;
          v23 = 0;
          v24 = 0;
          v26 = 0;
          v31 = 0x1000000;
          if (!v30)
          {
            v31 = 0;
          }

          v25 = v29 | v31;
        }

        goto LABEL_38;
      }

      v46 = [v59 threadgroupMemoryAlignment];
      v25 = [v59 threadgroupMemoryDataSize] | (v46 << 32);
    }

    else
    {
      v35 = [v59 bufferAlignment];
      v36 = [v59 bufferDataSize] | (v35 << 32);
      v37 = v36 & 0xFF00FFFFFFFFFFFFLL | ([v59 bufferDataType] << 48);
      v38 = [v59 isVertexDescriptorBuffer];
      v39 = 0x100000000000000;
      if (!v38)
      {
        v39 = 0;
      }

      v25 = v37 | v39;
    }

    v47 = [v59 dataTypeDescription];
    v26 = TranslateGTMTLType(v47, a3, a4);

    v21 = 0;
LABEL_37:
    v22 = 0;
    v20 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_38;
  }

  if (v19 == &dword_10)
  {
    v40 = [v59 imageBlockDataSize];
    v41 = v40 & 0xFFFFFF00FFFFFFFFLL | ([v59 aliasImplicitImageBlockRenderTarget] << 32);
    v42 = [v59 aliasImplicitImageBlock];
    v43 = 0x10000000000;
    if (!v42)
    {
      v43 = 0;
    }

    v21 = v41 | v43;
    v44 = [v59 imageBlockMasterStructMembers];
    if (!v44)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (v19 == (&dword_10 + 1))
  {
    v48 = [v59 imageBlockKind];
    v49 = [v59 imageBlockDataSize] | (v48 << 48);
    v50 = v49 & 0xFFFFFF00FFFFFFFFLL | ([v59 aliasImplicitImageBlockRenderTarget] << 32);
    v51 = [v59 aliasImplicitImageBlock];
    v52 = 0x10000000000;
    if (!v51)
    {
      v52 = 0;
    }

    v21 = v50 | v52;
    v44 = [v59 dataTypeDescription];
    if (v44)
    {
LABEL_35:
      v45 = [v59 dataTypeDescription];
      v26 = TranslateGTMTLType(v45, a3, a4);
      v25 = 0;
      goto LABEL_36;
    }

LABEL_29:
    v45 = [v59 imageBlockMasterStructMembers];
    v25 = TranslateGTMTLStructType(v45, a3, a4);
    v26 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v19 == (&stru_20.cmd + 3))
  {
    v32 = [v59 meshVertexStruct];
    v21 = TranslateGTMTLStructType(v32, a3, a4);

    v33 = [v59 meshPrimitiveStruct];
    v22 = TranslateGTMTLStructType(v33, a3, a4);

    v20 = [v59 meshVertexCount];
    v23 = [v59 meshPrimitiveCount];
    v24 = [v59 meshTopologyType];
    v34 = [v59 builtInType];
    v26 = 0;
    v25 = v34 & 0xFFFFFFFFFFFF00FFLL | ([v59 builtInDataType] << 8);
  }

LABEL_38:
  if (a4)
  {
    *a1 = v58;
    *(a1 + 8) = v26;
    *(a1 + 16) = v53;
    *(a1 + 17) = v57;
    *(a1 + 18) = v55;
    *(a1 + 19) = v54 | v56;
    *(a1 + 20) = 0;
    *(a1 + 24) = v25;
    *(a1 + 32) = v21;
    *(a1 + 40) = v22;
    *(a1 + 48) = v20;
    *(a1 + 50) = v23;
    *(a1 + 52) = v24;
    *(a1 + 53) = 0;
    *(a1 + 55) = 0;
  }
}

uint64_t TranslateGTMTLRenderPipelineReflection(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v43 = a2[19];
  v6 = [v5 vertexBindings];
  v45 = TranslateBindings(v6, a2, a3);

  v41 = a2[19];
  v7 = [v5 fragmentBindings];
  v44 = TranslateBindings(v7, a2, a3);

  v40 = a2[19];
  v8 = [v5 vertexBuiltInArguments];
  v42 = TranslateArguments(v8, a2, a3);

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v5 imageBlockDataReturn], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = a2[19];
    a2[19] = v10 + 56;
    v11 = [v5 imageBlockDataReturn];
    v39 = v10;
    TranslateGTMTLArgument(v10, v11, a2, a3);
  }

  else
  {
    v39 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v5 tileBindings];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  v37 = a2[19];
  v49 = v12;
  v38 = TranslateBindings(v12, a2, a3);
  if (objc_opt_respondsToSelector())
  {
    v13 = [v5 objectBindings];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v5 objectBuiltInArguments];
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v5 meshBindings];
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [v5 meshBuiltInArguments];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  v36 = a2[19];
  v48 = v13;
  v17 = TranslateBindings(v13, a2, a3);
  v18 = a2[19];
  v47 = v14;
  v19 = TranslateArguments(v14, a2, a3);
  v20 = a2[19];
  v46 = v15;
  v21 = TranslateBindings(v15, a2, a3);
  v22 = a2[19];
  v23 = TranslateArguments(v16, a2, a3);
  if (a3)
  {
    v24 = a2[15];
    v25 = v43;
    if (!v45)
    {
      v25 = 0;
    }

    v26 = v40;
    v27 = v41;
    if (!v42)
    {
      v26 = 0;
    }

    *v24 = 0;
    *(v24 + 8) = 0;
    if (!v44)
    {
      v27 = 0;
    }

    v28 = v37;
    if (!v38)
    {
      v28 = 0;
    }

    *(v24 + 16) = 0;
    *(v24 + 24) = v25;
    v29 = v36;
    if (!v17)
    {
      v29 = 0;
    }

    if (v19)
    {
      v30 = v18;
    }

    else
    {
      v30 = 0;
    }

    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    if (v21)
    {
      v31 = v20;
    }

    else
    {
      v31 = 0;
    }

    if (v23)
    {
      v32 = v22;
    }

    else
    {
      v32 = 0;
    }

    *(v24 + 48) = v31;
    *(v24 + 56) = v28;
    *(v24 + 64) = v39;
    *(v24 + 72) = v26;
    *(v24 + 80) = v30;
    *(v24 + 88) = v32;
    *(v24 + 96) = 0u;
    *(v24 + 112) = 0u;
    *(v24 + 128) = 0u;
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
    *(v24 + 176) = 0u;
    *(v24 + 190) = 0;
    *(v24 + 214) = 0u;
    v33 = v24 + 214;
    *(v33 - 16) = v45;
    *(v33 - 14) = v44;
    *(v33 - 12) = v38;
    *(v33 - 10) = v17;
    *(v33 - 8) = v21;
    *(v33 - 6) = v42;
    *(v33 - 4) = v19;
    *(v33 - 2) = v23;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0u;
    *(v33 + 80) = 0u;
    *(v33 + 96) = 0u;
    *(v33 + 112) = 0u;
    *(v33 + 128) = 0u;
    *(v33 + 144) = 0u;
    *(v33 + 160) = 0u;
    *(v33 + 176) = 0u;
    *(v33 + 192) = 0u;
    *(v33 + 208) = 0u;
    *(v33 + 224) = 0u;
    *(v33 + 240) = 0u;
    *(v33 + 256) = 0u;
    *(v33 + 272) = 0u;
    *(v33 + 288) = 0u;
    *(v33 + 304) = 0u;
    *(v33 + 320) = 0;
  }

  v34 = a2[15];
  a2[15] = v34 + 536;

  return v34;
}

uint64_t TranslateBindings(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2[19];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12 <= 0x25 && ((1 << v12) & 0x280F03000FLL) != 0)
        {
          v14 = a2[19];
          a2[19] = v14 + 56;
          TranslateGTMTLBinding(v14, v11, a2, a3);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = a2[19];

  return -1227133513 * ((v15 - v6) >> 3);
}

uint64_t TranslateArguments(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2[19];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12 <= 0x23 && ((1 << v12) & 0x80F03000FLL) != 0)
        {
          v14 = a2[19];
          a2[19] = v14 + 56;
          TranslateGTMTLArgument(v14, v11, a2, a3);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = a2[19];

  return -1227133513 * ((v15 - v6) >> 3);
}

uint64_t TranslateGTMTLComputePipelineReflection(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[19];
  v6 = a1;
  v7 = [v6 builtInArguments];
  v8 = TranslateArguments(v7, a2, a3);

  v9 = a2[19];
  v10 = [v6 bindings];

  v11 = TranslateBindings(v10, a2, a3);
  if (a3)
  {
    v12 = a2[14];
    if (v8)
    {
      v13 = v5;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = v13;
    *(v12 + 32) = v14;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0;
    *(v12 + 92) = v8;
    *(v12 + 94) = v11;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0;
  }

  result = a2[14];
  a2[14] = result + 168;
  return result;
}

uint64_t TranslateGTMTL4MachineLearningPipelineReflection(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[19];
  v6 = [a1 bindings];
  v7 = TranslateBindings(v6, a2, a3);

  if (a3)
  {
    v8 = a2[16];
    if (v7)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    *(v8 + 8) = v7;
    *(v8 + 10) = 0;
    *(v8 + 14) = 0;
  }

  result = a2[16];
  a2[16] = result + 16;
  return result;
}

void TranslateGTMTLFunctionInfo(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (!v10)
  {
    goto LABEL_77;
  }

  v104 = 0;
  v103 = 0;
  v15 = [v13 UTF8String];
  if (![v14 UTF8String])
  {
    v20 = 0;
    v17 = a5 + 29;
    v18 = a5[29];
    goto LABEL_6;
  }

  v16 = strlen([v14 UTF8String]);
  v17 = a5 + 29;
  v18 = a5[29];
  v19 = v18;
  v20 = v16 + 1;
  if (v16 == -1)
  {
LABEL_6:
    v19 = 0;
  }

  *v17 = &v18[v20];
  if (a6)
  {
    memcpy(v19, v15, v20);
  }

  v21 = [v11 filePath];
  v22 = [v21 UTF8String];
  v23 = [v11 filePath];
  obj = [v23 UTF8String];
  if (!obj)
  {
    v28 = 0;
    v25 = a5 + 29;
    v26 = a5[29];
    goto LABEL_13;
  }

  v89 = [v11 filePath];
  v24 = strlen([v89 UTF8String]);
  v25 = a5 + 29;
  v26 = a5[29];
  v27 = v26;
  v28 = v24 + 1;
  if (v24 == -1)
  {
LABEL_13:
    v27 = 0;
  }

  v84 = v19;
  v85 = v14;
  v86 = v12;
  *v25 = &v26[v28];
  if (a6)
  {
    memcpy(v27, v22, v28);
  }

  v83 = v27;
  v29 = [v11 unpackedFilePath];
  v30 = [v29 UTF8String];
  v31 = [v11 unpackedFilePath];
  v32 = [v31 UTF8String];
  v87 = v11;
  if (v32)
  {
    v11 = [v11 unpackedFilePath];
    v33 = strlen([v11 UTF8String]);
    v34 = a5 + 29;
    v35 = a5[29];
    __dst = v35;
    v36 = v33 + 1;
    if (v33 != -1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v36 = 0;
    v34 = a5 + 29;
    v35 = a5[29];
  }

  __dst = 0;
LABEL_21:
  *v34 = &v35[v36];
  if (a6)
  {
    memcpy(__dst, v30, v36);
  }

  v82 = [v10 functionType];
  v81 = [v10 lineNumber];
  v80 = [v10 patchControlPointCount];
  v79 = [v10 patchType];
  v103 = 0;
  v104 = 0;
  if (v32)
  {
  }

  if (obj)
  {
  }

  v37 = [v10 vertexAttributes];
  v38 = [v37 count];

  v78 = v38;
  if (v38)
  {
    v77 = a5[26];
  }

  else
  {
    v77 = 0;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v90 = v10;
  obja = [v10 vertexAttributes];
  v39 = [obja countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v100;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v100 != v41)
        {
          objc_enumerationMutation(obja);
        }

        v43 = *(*(&v99 + 1) + 8 * i);
        v44 = [v43 name];
        v45 = [v44 UTF8String];
        v46 = [v43 name];
        if ([v46 UTF8String])
        {
          v47 = [v43 name];
          v48 = strlen([v47 UTF8String]);
          v49 = v48 + 1;
          if (v48 == -1)
          {
            v50 = 0;
          }

          else
          {
            v50 = a5[29];
          }

          a5[29] += v49;
          if (a6)
          {
            memcpy(v50, v45, v49);
          }
        }

        else
        {
          v50 = 0;
        }

        v51 = a5[26];
        if (a6)
        {
          *v51 = v50;
          *(a5[26] + 8) = [v43 attributeIndex];
          *(a5[26] + 12) = [v43 attributeType];
          *(a5[26] + 13) = [v43 isActive];
          *(a5[26] + 14) = [v43 isPatchData];
          v52 = [v43 isPatchControlPointData];
          v51 = a5[26];
          *(v51 + 15) = v52;
        }

        a5[26] = v51 + 16;
      }

      v40 = [obja countByEnumeratingWithState:&v99 objects:v106 count:16];
    }

    while (v40);
  }

  v53 = [v90 stageInputAttributes];
  v54 = [v53 count];

  v76 = v54;
  if (v54)
  {
    v75 = a5[27];
  }

  else
  {
    v75 = 0;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  objb = [v90 stageInputAttributes];
  v55 = [objb countByEnumeratingWithState:&v95 objects:v105 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v96;
    do
    {
      for (j = 0; j != v56; j = j + 1)
      {
        if (*v96 != v57)
        {
          objc_enumerationMutation(objb);
        }

        v59 = *(*(&v95 + 1) + 8 * j);
        v60 = [v59 name];
        v61 = [v60 UTF8String];
        v62 = [v59 name];
        if ([v62 UTF8String])
        {
          v63 = [v59 name];
          v64 = strlen([v63 UTF8String]);
          v65 = v64 + 1;
          if (v64 == -1)
          {
            v66 = 0;
          }

          else
          {
            v66 = a5[29];
          }

          a5[29] += v65;
          if (a6)
          {
            memcpy(v66, v61, v65);
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = a5[27];
        if (a6)
        {
          *v67 = v66;
          *(a5[27] + 8) = [v59 attributeIndex];
          *(a5[27] + 12) = [v59 attributeType];
          *(a5[27] + 13) = [v59 isActive];
          *(a5[27] + 14) = [v59 isPatchData];
          v68 = [v59 isPatchControlPointData];
          v67 = a5[27];
          *(v67 + 15) = v68;
        }

        a5[27] = v67 + 16;
      }

      v56 = [objb countByEnumeratingWithState:&v95 objects:v105 count:16];
    }

    while (v56);
  }

  v12 = v86;
  if (v86)
  {
    v11 = v87;
    v69 = v84;
    v14 = v85;
    v70 = v83;
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v86 returnType], v71 = objc_claimAutoreleasedReturnValue(), v71, v71))
    {
      v72 = [v86 returnType];
      v73 = [v72 dataType];
    }

    else
    {
      v73 = -1;
    }

    v10 = v90;
  }

  else
  {
    v73 = -1;
    v10 = v90;
    v11 = v87;
    v69 = v84;
    v14 = v85;
    v70 = v83;
  }

  if (a6)
  {
    v74 = a5[3];
    *v74 = v69;
    *(v74 + 8) = v70;
    *(v74 + 16) = __dst;
    *(v74 + 24) = v77;
    *(v74 + 32) = v75;
    *(v74 + 40) = v82;
    *(v74 + 42) = v81;
    *(v74 + 44) = v80;
    *(v74 + 46) = v78;
    *(v74 + 47) = v76;
    *(v74 + 48) = v79;
    *(v74 + 49) = v73;
    *(v74 + 50) = v103;
    *(v74 + 54) = v104;
  }

  a5[3] += 56;
LABEL_77:
}

void TranslateGTMTLFunctionHandleInfo(void *a1, uint64_t a2, int a3)
{
  v8 = a1;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v8 resourceIndex];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v8 gpuResourceID];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 32);
  if (a3)
  {
    *v7 = v5;
    v7[1] = v6;
  }

  *(a2 + 32) = v7 + 2;
}

void TranslateGTMTLDynamicLibraryInfo(void *a1, void *a2, int a3)
{
  v5 = a1;
  if (v5)
  {
    v41 = v5;
    v6 = v5;
    v7 = [v6 exportedFunctions];
    v8 = [v7 count];
    v38 = v8;
    if (v8)
    {
      v9 = a2[28];
    }

    else
    {
      v9 = 0;
    }

    a2[28] += 8 * v8;
    v10 = [v6 installName];
    v11 = [v10 UTF8String];
    v12 = [v6 installName];
    if ([v12 UTF8String])
    {
      v13 = [v6 installName];
      v14 = strlen([v13 UTF8String]);
      v15 = v14 + 1;
      if (v14 == -1)
      {
        v16 = 0;
      }

      else
      {
        v16 = a2[29];
      }

      __dst = v16;
      a2[29] += v15;
      if (a3)
      {
        memcpy(v16, v11, v15);
      }
    }

    else
    {
      __dst = 0;
    }

    v17 = [v6 libraryPath];
    v18 = [v17 UTF8String];
    v19 = [v6 libraryPath];
    v40 = v6;
    if ([v19 UTF8String])
    {
      v20 = [v6 libraryPath];
      v21 = strlen([v20 UTF8String]);
      v22 = v21 + 1;
      if (v21 == -1)
      {
        v23 = 0;
      }

      else
      {
        v23 = a2[29];
      }

      a2[29] += v22;
      if (a3)
      {
        memcpy(v23, v18, v22);
      }

      v37 = v23;
    }

    else
    {
      v37 = 0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = v7;
    v25 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v43;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v42 + 1) + 8 * i);
          v31 = [v30 UTF8String];
          if (![v30 UTF8String])
          {
            v35 = 0;
            v33 = a2[29];
LABEL_30:
            v34 = 0;
            goto LABEL_31;
          }

          v32 = strlen([v30 UTF8String]);
          v33 = a2[29];
          v34 = v33;
          v35 = v32 + 1;
          if (v32 == -1)
          {
            goto LABEL_30;
          }

LABEL_31:
          a2[29] = &v33[v35];
          if (a3)
          {
            memcpy(v34, v31, v35);
            *(v9 + 8 * v27++) = v34;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v26);
    }

    if (a3)
    {
      v36 = a2[2];
      *v36 = __dst;
      *(v36 + 8) = v37;
      *(v36 + 16) = v9;
      *(v36 + 24) = v38;
      *(v36 + 26) = 0;
      *(v36 + 30) = 0;
    }

    a2[2] += 32;

    v5 = v41;
  }
}

void TranslateGTMTLBufferInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 8);
  *(a2 + 8) = v6 + 48;
  if (!a3)
  {
    goto LABEL_13;
  }

  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v10 = v5;
  v7 = v5;
  TranslateGTMTLResourceInfo(v7, v6);
  if (objc_opt_respondsToSelector())
  {
    *(v6 + 24) = [v7 gpuAddress];
  }

  v8 = [v7 heap];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [v8 gpuAddress];
LABEL_9:
    *(v6 + 32) = v9;
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 parentGPUAddress];
    goto LABEL_9;
  }

LABEL_10:
  if (objc_opt_respondsToSelector())
  {
    *(v6 + 40) = [v7 parentGPUSize];
  }

  v5 = v10;
LABEL_13:
}

void TranslateGTMTLResourceInfo(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    *(a2 + 8) = [v3 allocatedSize];
  }

  if (objc_opt_respondsToSelector())
  {
    *a2 = [v3 allocationID];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a2 + 16) = [v3 responsibleProcess];
  }
}

void TranslateGTMTLTensorInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 88);
  *(a2 + 88) = v6 + 48;
  if (a3)
  {
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
    v8 = v5;
    v7 = v5;
    TranslateGTMTLResourceInfo(v7, v6);
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 32) = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 24) = [v7 gpuResourceID];
    }

    v5 = v8;
  }
}

uint64_t CanHarvestTextureAsIOSurfaceUsingCPU(void *a1)
{
  v1 = a1;
  if (![v1 iosurface] || (objc_msgSend(v1, "isDrawable") & 1) != 0 || (objc_msgSend(v1, "isFramebufferOnly") & 1) != 0 || (objc_msgSend(v1, "pixelFormat") & 0xFFFFFFFFFFFFFFFELL) == 0x226)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isShareable] ^ 1;
  }

  return v2;
}

void TranslateGTMTLTextureMipmapLevels(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  buffer = [v5 iosurface];
  v6 = [v5 width];
  v7 = [v5 height];
  v8 = [v5 depth];
  v9 = [v5 pixelFormat];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v10 = [v5 device];
  v33 = v9;
  GTMTLPixelFormatGetInfoForDevice(v9, &v36);

  v30 = [v5 sampleCount];
  v34 = v5;
  v35 = CanHarvestTextureAsIOSurfaceUsingCPU(v5);
  if (a3)
  {
    v11 = (a2 + 8);
    v12 = (v9 - 40);
    v13 = v9 - 550;
    v14 = 1 << (v9 + 96);
    v31 = v9 - 550;
    do
    {
      if (v35)
      {
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffer, [v34 iosurfacePlane]);
        v16 = IOSurfaceGetHeightOfPlane(buffer, [v34 iosurfacePlane]) * BytesPerRowOfPlane;
        v17 = [v34 isFramebufferOnly];
        v13 = v31;
        if (v17)
        {
          v18 = BytesPerRowOfPlane * v7;
        }

        else
        {
          v18 = v16;
        }

        v19 = v6;
        LODWORD(v20) = v7;
      }

      else
      {
        v19 = v6;
        v20 = v7;
        v21 = 5 * v30;
        if (v33 != &stru_B8.reserved3)
        {
          if ((BYTE9(v36) & 4) != 0)
          {
            v19 = (v6 + v38 - 1) / v38;
            v21 = *(&v37 + 1) * v30;
            v20 = (v7 + *(&v38 + 1) - 1) / *(&v38 + 1);
          }

          else
          {
            v21 = *(&v37 + 1) * v30;
            v19 = v6;
            v20 = v7;
          }
        }

        BytesPerRowOfPlane = v21 * v19;
        v16 = v21 * v19 * v20;
        v18 = v16 * v8;
      }

      v22 = v20 * v19;
      v23 = 5 * v22;
      v24 = 4 * v22;
      v25 = BytesPerRowOfPlane >= 4 * v19;
      if (BytesPerRowOfPlane <= 4 * v19)
      {
        v26 = 4 * v19;
      }

      else
      {
        v26 = BytesPerRowOfPlane;
      }

      if (v25)
      {
        v24 = v16;
      }

      if (v13 >= 2)
      {
        v26 = BytesPerRowOfPlane;
        v24 = v16;
        v23 = v18;
      }

      if (v18 <= 0x10)
      {
        v27 = 16;
      }

      else
      {
        v27 = v18;
      }

      if (v18 <= 0x20)
      {
        LODWORD(v18) = 32;
      }

      if ((v14 & 0x33) == 0)
      {
        v27 = v18;
      }

      if (v12 <= 7)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      if (v12 > 7)
      {
        v29 = v23;
      }

      else
      {
        v24 = 0;
        v29 = v27;
      }

      *(v11 - 2) = v28;
      *(v11 - 1) = v24;
      *v11 = v29;
      v11 += 4;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 >>= 1;
      }

      if (v7 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 >>= 1;
      }

      if (v8 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 >>= 1;
      }

      --a3;
    }

    while (a3);
  }
}

void TranslateGTMTLTextureInfo(void *a1, uint64_t a2, int a3)
{
  v11 = a1;
  v5 = *(a2 + 96);
  *(a2 + 96) = v5 + 88;
  v6 = [v11 mipmapLevelCount];
  v7 = v11;
  if (a3)
  {
    *(v5 + 80) = 0;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    v8 = v11;
    TranslateGTMTLResourceInfo(v8, v5);
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 40) = [v8 uniqueIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 56) = [v8 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 64) = [v8 gpuAddress];
    }

    v9 = [v8 heap];
    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        *(v5 + 72) = [v9 gpuAddress];
        if ((~[v8 resourceOptions] & 0x30) == 0)
        {
          *(v5 + 64) = *(v5 + 72);
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 80) = [v8 compressionFeedback];
    }

    TranslateGTMTLTextureMipmapLevels(v8, *(a2 + 144), v6);
    if (v6)
    {
      v10 = *(a2 + 144);
    }

    else
    {
      v10 = 0;
    }

    *(v5 + 24) = v10;
    *(v5 + 32) = v6;
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 48) = [v8 gpuResourceID];
    }

    v7 = v11;
  }

  *(a2 + 144) += 16 * v6;
}

void TranslateGTMTLIndirectCommandBufferInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 40);
  *(a2 + 40) = v6 + 56;
  if (a3)
  {
    *(v6 + 48) = 0;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
    v8 = v5;
    v7 = v5;
    TranslateGTMTLResourceInfo(v7, v6);
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 24) = [v7 uniqueIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 40) = [v7 gpuAddress];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 32) = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 48) = [v7 gpuResourceID];
    }

    v5 = v8;
  }
}

void TranslateGTMTLVisibleFunctionTableInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 104);
  *(a2 + 104) = v6 + 56;
  if (a3)
  {
    *(v6 + 48) = 0;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
    v8 = v5;
    v7 = v5;
    TranslateGTMTLResourceInfo(v7, v6);
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 24) = [v7 uniqueIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 32) = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 40) = [v7 gpuResourceID];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 48) = [v7 gpuAddress];
    }

    v5 = v8;
  }
}

void TranslateGTMTLIntersectionFunctionTableInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 48);
  *(a2 + 48) = v6 + 48;
  if (a3)
  {
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
    v8 = v5;
    v7 = v5;
    TranslateGTMTLResourceInfo(v7, v6);
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 24) = [v7 uniqueIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 32) = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 40) = [v7 gpuResourceID];
    }

    v5 = v8;
  }
}

void TranslateGTMTLAccelerationStructureInfo(void *a1, uint64_t *a2, int a3)
{
  v5 = a1;
  v6 = *a2;
  *a2 += 112;
  if (!a3)
  {
    goto LABEL_30;
  }

  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v13 = v5;
  v7 = v5;
  TranslateGTMTLResourceInfo(v7, v6);
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 accelerationStructureUniqueIdentifier];
    v9 = 24;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = [v7 bufferOffset];
    v9 = 48;
  }

  *(v6 + v9) = v8;
LABEL_7:
  if (objc_opt_respondsToSelector())
  {
    *(v6 + 32) = [v7 size];
  }

  if (objc_opt_respondsToSelector())
  {
    *(v6 + 40) = [v7 resourceIndex];
  }

  if (objc_opt_respondsToSelector())
  {
    *(v6 + 64) = [v7 resourceOptions];
  }

  v10 = [v7 buffer];
  v11 = [v7 heap];
  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [v11 gpuAddress];
LABEL_18:
    *(v6 + 80) = v12;
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 parentGPUAddress];
    goto LABEL_18;
  }

LABEL_19:
  if (objc_opt_respondsToSelector())
  {
    *(v6 + 72) = [v10 gpuAddress];
  }

  if (objc_opt_respondsToSelector())
  {
    *(v6 + 88) = [v10 parentGPUSize];
  }

  if (objc_opt_respondsToSelector())
  {
    *(v6 + 96) = [v10 length];
  }

  if (objc_opt_respondsToSelector())
  {
    *(v6 + 104) = [v10 resourceOptions];
  }

  if (objc_opt_respondsToSelector())
  {
    *(v6 + 56) = [v7 gpuResourceID];
  }

  v5 = v13;
LABEL_30:
}

void TranslateGTMTLSamplerStateInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 72);
  *(a2 + 72) = v6 + 3;
  if (a3)
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v8 = v5;
    v7 = v5;
    if (objc_opt_respondsToSelector())
    {
      *v6 = [v7 uniqueIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      v6[2] = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      v6[1] = [v7 gpuResourceID];
    }

    v5 = v8;
  }
}

void TranslateGTMTLDepthStencilStateInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 80);
  *(a2 + 80) = v6 + 2;
  if (a3)
  {
    *v6 = 0;
    v6[1] = 0;
    v10 = v5;
    v7 = v5;
    v8 = [v7 device];
    v9 = [v8 supportsFamily:1010];

    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        *v6 = [v7 uniqueIdentifier];
      }

      if (objc_opt_respondsToSelector())
      {
        v6[1] = [v7 gpuResourceID];
      }
    }

    v5 = v10;
  }
}

void TranslateGTMTLLibraryInfo(void *a1, uint64_t a2, int a3, const char *a4)
{
  v28 = a1;
  v7 = *(a2 + 56);
  *(a2 + 56) = v7 + 3;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v28 libraryIdentifier];
    v9 = [v8 UUIDString];
    v10 = [v9 UTF8String];
    v11 = [v28 libraryIdentifier];
    v12 = [v11 UUIDString];
    if ([v12 UTF8String])
    {
      __src = v10;
      v27 = a4;
      v13 = [v28 libraryIdentifier];
      [v13 UUIDString];
      v15 = v14 = a3;
      v16 = strlen([v15 UTF8String]);
      v17 = v16 + 1;
      if (v16 == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a2 + 232);
      }

      *(a2 + 232) += v17;
      if (v14)
      {
        memcpy(v18, __src, v17);
      }

      a3 = v14;
      a4 = v27;
    }

    else
    {
      v18 = 0;
    }

    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    if (!a4)
    {
LABEL_14:
      v24 = 0;
      v25 = *(a2 + 232);
      v21 = (a2 + 232);
      v20 = v25;
      goto LABEL_15;
    }
  }

  v19 = strlen(a4);
  v22 = *(a2 + 232);
  v21 = (a2 + 232);
  v20 = v22;
  v23 = v22;
  v24 = v19 + 1;
  if (v19 == -1)
  {
LABEL_15:
    v23 = 0;
  }

  *v21 = &v20[v24];
  if (a3)
  {
    memcpy(v23, a4, v24);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    if (objc_opt_respondsToSelector())
    {
      *(v7 + 16) = [v28 type];
    }

    *v7 = v23;
    v7[1] = v18;
  }
}

void TranslateGTMTLPipelineLibraryInfo(void *a1, void *a2, int a3, const char *a4)
{
  v6 = a1;
  v65 = 0;
  v64 = 0;
  if (!a4)
  {
    obj = 0;
    v11 = 0;
    v8 = a2 + 29;
    v9 = a2[29];
    goto LABEL_5;
  }

  v7 = strlen(a4);
  v8 = a2 + 29;
  v9 = a2[29];
  obj = a4;
  v10 = v9;
  v11 = v7 + 1;
  if (v7 == -1)
  {
LABEL_5:
    v10 = 0;
  }

  *v8 = &v9[v11];
  if (a3)
  {
    memcpy(v10, a4, v11);
  }

  v45 = v10;
  v12 = objc_alloc_init(NSMutableArray);
  v46 = v6;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v6 metallibPaths];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v54 = [v13 countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v54)
    {
      v14 = *v61;
      do
      {
        for (i = 0; i != v54; i = i + 1)
        {
          if (*v61 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v60 + 1) + 8 * i);
          v17 = [NSString stringWithUTF8String:a4];
          v18 = [v17 stringByDeletingLastPathComponent];

          v19 = [v16 stringByDeletingLastPathComponent];
          if ([v18 isEqualToString:v19])
          {
            [v12 addObject:v16];
          }

          else if (s_logUsingOsLog == 1)
          {
            v20 = gt_tagged_log(3);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v22 = [v16 UTF8String];
              *buf = 136315394;
              v68 = obj;
              v69 = 2080;
              v70 = v22;
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "warning: .pipelinelib %s and .metallib %s must be in the same directory", buf, 0x16u);
            }
          }

          else
          {
            v52 = __stderrp;
            v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"warning: .pipelinelib %s and .metallib %s must be in the same directory", a4, [v16 UTF8String]);
            fprintf(v52, "%s\n", [v21 UTF8String]);
          }
        }

        v54 = [v13 countByEnumeratingWithState:&v60 objects:v71 count:16];
      }

      while (v54);
    }
  }

  v23 = [v12 count];
  v24 = a2[28];
  v44 = v23;
  a2[28] = v24 + 8 * v23 + 8 * v23;
  v56 = 0u;
  v57 = 0u;
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v23)
  {
    v26 = v24 + 8 * v23;
  }

  else
  {
    v26 = 0;
  }

  v47 = v26;
  v48 = v25;
  v58 = 0uLL;
  v59 = 0uLL;
  obja = v12;
  v27 = a3;
  v55 = [obja countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v55)
  {
    v28 = 0;
    v53 = *v57;
    do
    {
      for (j = 0; j != v55; j = j + 1)
      {
        if (*v57 != v53)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v56 + 1) + 8 * j);
        v31 = [v30 UTF8String];
        if (![v30 UTF8String])
        {
          v35 = 0;
          v33 = a2[29];
LABEL_39:
          v34 = 0;
          goto LABEL_40;
        }

        v32 = strlen([v30 UTF8String]);
        v33 = a2[29];
        v34 = v33;
        v35 = v32 + 1;
        if (v32 == -1)
        {
          goto LABEL_39;
        }

LABEL_40:
        a2[29] = &v33[v35];
        if (v27)
        {
          memcpy(v34, v31, v35);
        }

        v36 = [v30 lastPathComponent];
        v37 = [v36 UTF8String];
        v38 = [v30 lastPathComponent];
        if ([v38 UTF8String])
        {
          v39 = [v30 lastPathComponent];
          v40 = strlen([v39 UTF8String]);
          v41 = v40 + 1;
          if (v40 == -1)
          {
            v42 = 0;
          }

          else
          {
            v42 = a2[29];
          }

          a2[29] += v41;
          if (v27)
          {
            memcpy(v42, v37, v41);
          }

          v27 = a3;
        }

        else
        {
          v42 = 0;
        }

        if (v27)
        {
          *(v48 + 8 * v28) = v34;
          *(v47 + 8 * v28++) = v42;
        }
      }

      v55 = [obja countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v55);
  }

  if (v27)
  {
    v43 = a2[8];
    *v43 = v45;
    *(v43 + 8) = v48;
    *(v43 + 16) = v47;
    *(v43 + 24) = v44;
    *(v43 + 26) = v64;
    *(v43 + 30) = v65;
  }

  a2[8] += 32;
}