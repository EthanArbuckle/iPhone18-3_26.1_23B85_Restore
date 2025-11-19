const void **_MDPlistBytesGetMappedByteVector(const void **result)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
LABEL_9:
      result = 0;
      goto LABEL_13;
    }

    if ((~*(result + 34) & 9) != 0)
    {
      result = result[1];
    }

    else
    {
      __dst[0] = 0;
      v2 = *(result + 5);
      v3 = MEMORY[0x1E69E9AC8];
      if (v2)
      {
        v4 = (v2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      else
      {
        v4 = *MEMORY[0x1E69E9AC8];
      }

      if (_fast_vm_allocate(__dst, v4, -251658239))
      {
        goto LABEL_9;
      }

      v5 = *(v1 + 5);
      if (v5 >= 4 * *v3)
      {
        madvise(__dst[0], *(v1 + 5), 3);
        v5 = *(v1 + 5);
      }

      memcpy(__dst[0], v1[1], v5);
      free(v1[1]);
      result = __dst[0];
      v1[1] = __dst[0];
      *(v1 + 34) &= ~8u;
    }
  }

LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void defaultDeallocator_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if ((*(a2 + 40) & 2) != 0)
  {
    v9 = *MEMORY[0x1E69E9840];
    v10 = *MEMORY[0x1E69E9840];

    free(v2);
  }

  else
  {
    v4 = _fast_vm_deallocate(v2, 8 * *(a2 + 36));
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      v6 = mach_error_string(v4);
      v7 = CFStringCreateWithFormat(v5, 0, @"%s: Error while finalizing %@ -- vm_deallocate: %s", "freeStoreArrayMemory", a2, v6);
      CFShow(v7);
      v8 = *MEMORY[0x1E69E9840];

      CFRelease(v7);
    }

    else
    {
      v11 = *MEMORY[0x1E69E9840];
    }
  }
}

void defaultDeallocator_block_invoke_0(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  if ((*(a2 + 34) & 8) != 0)
  {
    v8 = *MEMORY[0x1E69E9840];
    v9 = *MEMORY[0x1E69E9840];

    free(v2);
  }

  else
  {
    v4 = _fast_vm_deallocate(v2, *(a2 + 20));
    if (v4 && (v5 = v4, v6 = _MDLogForCategoryDefault(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
    {
      defaultDeallocator_block_invoke_cold_1(a2, v5, v6);
      v10 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v7 = *MEMORY[0x1E69E9840];
    }
  }
}

void __MDStoreOIDArrayFinalize(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 24) + 16))();
  v2 = *(a1 + 24);
  v3 = *MEMORY[0x1E69E9840];

  _Block_release(v2);
}

uint64_t _fast_vm_deallocate(void *a1, size_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (munmap(a1, a2))
    {
      result = 5;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

_MDPlistBytes *_MDPlistBytesCreateTrusted(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = [_MDPlistBytes alloc];
    if (a4)
    {
      v8 = &__block_literal_global_108;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(_MDPlistBytes *)v7 initWithByteVector:a2 count:a3 trusted:1 deallocator:v8];
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v11 = *MEMORY[0x1E69E9840];
    return v10;
  }

  else
  {
    if (qword_1ED6F3FE0 != -1)
    {
      +[_MDPlistBytes enumerateObjectsFromPlistBytes:count:shouldDeallocate:usingBlock:];
    }

    v13 = qword_1ED6F3FD8;
    v14 = *MEMORY[0x1E69E9840];

    return CFRetain(v13);
  }
}

uint64_t _maybeSwapPlistBytes(uint64_t result, char a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(result + 8);
  if (*v2 == 0x6D64303331323334)
  {
    goto LABEL_27;
  }

  v3 = *(result + 16);
  if (v3 < 0x10)
  {
    goto LABEL_26;
  }

  v4 = v3 >> 3;
  while (1)
  {
    v5 = *v2;
    *v2 = bswap64(*v2);
    if (v5 != 0x343332313330646DLL)
    {
      break;
    }

    v6 = bswap64(v2[1]);
    v2[1] = v6;
    v7 = v6 - 1;
    v4 -= 2;
    if (v7 > v4)
    {
      *(result + 32) = 440;
      v30 = result;
      v31 = a2;
      v32 = _MDLogForCategoryDefault();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      a2 = v31;
      v34 = v33;
      result = v30;
      if (v34)
      {
        _maybeSwapPlistBytes_cold_3(v32);
        a2 = v31;
        result = v30;
      }

      goto LABEL_26;
    }

    v2 += 2;
    if (v7 >= 1)
    {
      do
      {
        v9 = bswap64(*v2);
        *v2 = v9;
        v10 = v9 & 0xFFFFFF;
        v8 = __OFSUB__(v4, v9 & 0xFFFFFF);
        v4 -= v9 & 0xFFFFFF;
        if (v4 < 0 != v8 || v10 == 0)
        {
          *(result + 32) = 450;
          v20 = result;
          v21 = a2;
          v22 = _MDLogForCategoryDefault();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          a2 = v21;
          v24 = v23;
          result = v20;
          if (v24)
          {
            _maybeSwapPlistBytes_cold_2(v10, v22);
            a2 = v21;
            result = v20;
          }

          goto LABEL_26;
        }

        v12 = v9 & 0xFFFFFF;
        if ((v9 & 0x80000000) != 0 && v10 >= 2)
        {
          v13 = v12 - 1;
          if ((v12 - 1) >= 4)
          {
            v14 = v13 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v15 = (v2 + 3);
            v16 = v13 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v17 = vrev64q_s8(*v15);
              v15[-1] = vrev64q_s8(v15[-1]);
              *v15 = v17;
              v15 += 2;
              v16 -= 4;
            }

            while (v16);
            if (v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_9;
            }
          }

          else
          {
            v14 = 1;
          }

          v18 = v12 - v14;
          v19 = &v2[v14];
          do
          {
            *v19 = bswap64(*v19);
            ++v19;
            --v18;
          }

          while (v18);
        }

LABEL_9:
        v2 += v12;
        v8 = __OFSUB__(v7, v10);
        v7 -= v10;
      }

      while (!((v7 < 0) ^ v8 | (v7 == 0)));
    }

    if (v4 <= 1)
    {
      goto LABEL_26;
    }
  }

  v26 = a2;
  v27 = result;
  *(result + 32) = 426;
  if (*v2 != 52)
  {
    *v2 = bswap64(*v2);
  }

  v28 = _MDLogForCategoryDefault();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  result = v27;
  a2 = v26;
  if (v29)
  {
    _maybeSwapPlistBytes_cold_1(v2, v28);
    a2 = v26;
    result = v27;
  }

LABEL_26:
  if (!*(result + 32))
  {
LABEL_27:
    if ((a2 & 1) == 0)
    {
      result = __MDPlistBytesValidate(result);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

_MDPlistBytes *_MDPlistBytesCopyChildPlistBytesAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a2 && (a3 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 32))
    {
      goto LABEL_4;
    }

    if (a4)
    {
      if (*a4 <= a3)
      {
        goto LABEL_4;
      }

      v6 = a4[a3 + 1];
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *(a2 + 16);
      if (v10 < 0x10)
      {
        goto LABEL_4;
      }

      v11 = (v10 >> 3) - 2;
      v6 = (*(a2 + 8) + 8);
      v12 = a3 + 1;
      while (--v12 >= 1)
      {
        result = 0;
        v13 = *v6 + 1;
        v14 = *v6 > 0x7FFFFFFE || v11 <= v13;
        v11 -= v13;
        v6 += 2 * v13;
        if (v14)
        {
          goto LABEL_5;
        }
      }
    }

    if (((*v6 >> 25) & 0xF) > 6)
    {
LABEL_4:
      result = 0;
      goto LABEL_5;
    }

    v7 = *v6;
    v8 = [[_MDPlistBytes alloc] initWithByteVector:v6 - 2 count:(8 * v7 + 8) trusted:1 deallocator:0];
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    result = v9;
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDChildPlistBytesContextDestroy(void *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  free(a1);
}

BOOL _MDPlistBytesAddReal(uint64_t a1, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  result = _MDPlistBytesAddRLETagRoom(a1, 0x85u, 1u);
  if (result)
  {
    v5 = *(a1 + 104);
    *v5 = a2;
    *(a1 + 104) = v5 + 1;
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a2 + 32))
  {
    v8 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a2 + 32);
      *buf = 136315906;
      *&buf[4] = "CFTypeRef _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(CFAllocatorRef, MDPlistBytesRef, CFIndex, const MDPlistBytesDeserializationCallbacks *, void *)";
      *&buf[12] = 1024;
      *&buf[14] = v45;
      *&buf[18] = 2048;
      *&buf[20] = a3;
      *&buf[28] = 2048;
      *&buf[30] = a5;
      _os_log_error_impl(&dword_1B238B000, v8, OS_LOG_TYPE_ERROR, "%s: plist bad (line %d); idx = %ld; ctx = %p", buf, 0x26u);
    }

    v9 = __error();
    result = 0;
    v11 = 94;
LABEL_25:
    *v9 = v11;
    goto LABEL_26;
  }

  v12 = *(a2 + 16);
  if (v12 <= 0xF)
  {
    *(a2 + 40) = 0;
LABEL_22:
    v31 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_3();
    }

    v9 = __error();
    result = 0;
    v11 = 33;
    goto LABEL_25;
  }

  v13 = (v12 >> 3) - 2;
  v14 = (*(a2 + 8) + 8);
  *(a2 + 40) = v14;
  v15 = a3 + 1;
  while (--v15 >= 1)
  {
    v16 = *v14 + 1;
    v17 = *v14 < 0x7FFFFFFF;
    v18 = __OFSUB__(v13, v16);
    v13 -= v16;
    if ((v13 < 0) ^ v18 | (v13 == 0))
    {
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v14 += v16;
    v20 = v17 & v19;
    if (v20)
    {
      v21 = v14;
    }

    else
    {
      v21 = 0;
    }

    *(a2 + 40) = v21;
    if ((v20 & 1) == 0)
    {
      v14 = 0;
      break;
    }
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v24 = *v14;
  if (*(a2 + 60) >= 1)
  {
    *(a2 + 60) = 0;
    os_unfair_lock_lock(&_MergedGlobals);
    v25 = *(a2 + 48);
    *(a2 + 48) = 0;
    os_unfair_lock_unlock(&_MergedGlobals);
    free(v25);
    v14 = *(a2 + 40);
  }

  v26 = &v14[v24 >> 32];
  *(a2 + 48) = v26;
  v27 = *v26;
  *(a2 + 56) = v27 & 0xFFFFFF;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(&buf[16], 0, 32);
  *buf = a2;
  v28 = malloc_type_calloc(v27 & 0xFFFFFF, 8uLL, 0xC0040B8AA526DuLL);
  *&buf[8] = v28;
  *&buf[16] = 0;
  if (*(a4 + 72))
  {
    v29 = malloc_type_malloc(8 * *(a2 + 56), 0xC0040B8AA526DuLL);
    v30 = a4;
  }

  else
  {
    v30 = a4;
    v29 = 0;
  }

  *&buf[24] = v29;
  v33 = v30[2];
  v34 = v30[4];
  v35 = v30[5];
  v62 = v30[3];
  v63 = v34;
  v64 = v35;
  v36 = v30[1];
  *&buf[32] = *v30;
  v60 = v36;
  v61 = v33;
  *&v65 = a5;
  *(&v65 + 1) = a1;
  *&v66 = malloc_default_zone();
  BYTE8(v66) = 0;
  queue = si_create_queue(0x400u);
  if (*(&v64 + 1))
  {
    *&buf[40] = _MDPlistBytesCreateUniquedString;
  }

  if (!v28)
  {
    v44 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_2();
    }

    v9 = __error();
    result = 0;
    v11 = 12;
    goto LABEL_25;
  }

  v48 = 1;
  if (*a4 || *(a4 + 8) || *(a4 + 16) || *(a4 + 24) || *(a4 + 32) || *(a4 + 40) || *(a4 + 48) || *(a4 + 56))
  {
    v37 = 0;
  }

  else
  {
    if (qword_1ED6F3F60 != -1)
    {
      _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_1();
    }

    pthread_setspecific(qword_1ED6F3F68, 1);
    v37 = 1;
    if (*(a4 + 64) == _QueryResultsBeginArray)
    {
      if (*(a4 + 80) == _QueryResultsEndArray)
      {
        if (*(a4 + 72) == _QueryResultsValue)
        {
          v37 = 257;
        }

        else
        {
          v37 = 1;
        }
      }

      else
      {
        v37 = 1;
      }
    }
  }

  v38 = copyObject(buf, &v48, 0, v37);
  pthread_setspecific(qword_1ED6F3F68, 0);
  v39 = *&buf[24];
  if (*&buf[24])
  {
    v40 = *&buf[16];
    if (*&buf[16] >= 1)
    {
      v41 = *&buf[24];
      do
      {
        if (!*v41)
        {
          break;
        }

        CFRelease(*v41++);
        --v40;
      }

      while (v40);
    }

    free(v39);
  }

  free(*&buf[8]);
  si_destroy_queue(queue, MEMORY[0x1E695D7C0]);
  if (*(a2 + 32))
  {
    v42 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v47 = *(a2 + 32);
      *v49 = 136316162;
      v50 = "CFTypeRef _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(CFAllocatorRef, MDPlistBytesRef, CFIndex, const MDPlistBytesDeserializationCallbacks *, void *)";
      v51 = 1024;
      v52 = v47;
      v53 = 2048;
      v54 = a3;
      v55 = 1024;
      v56 = v48;
      v57 = 2048;
      v58 = a5;
      _os_log_error_impl(&dword_1B238B000, v42, OS_LOG_TYPE_ERROR, "%s: plist copy bad (line %d); idx = %ld; quadIdx = %d; ctx = %p", v49, 0x2Cu);
      if (!v38)
      {
        goto LABEL_50;
      }
    }

    else if (!v38)
    {
LABEL_50:
      v43 = __error();
      result = 0;
      *v43 = 94;
      goto LABEL_55;
    }

    CFRelease(v38);
    goto LABEL_50;
  }

  result = v38;
LABEL_55:
  if (result == *MEMORY[0x1E695E738] && sel_enumerateObjectsUsingBlock_ != a5)
  {
    CFRelease(result);
    result = 0;
  }

LABEL_26:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

char *si_create_queue(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x90uLL, 0x1090040E44D38CFuLL);
  *v2 = "simple queue";
  pthread_mutex_init((v2 + 8), 0);
  pthread_cond_init((v2 + 72), 0);
  *(v2 + 31) = 0;
  *(v2 + 32) = 0;
  *(v2 + 30) = a1;
  *(v2 + 17) = malloc_type_calloc(a1, 8uLL, 0x80040B8603338uLL);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

__CFString *copyObject(uint64_t a1, int *a2, unsigned int a3, uint64_t a4)
{
  v196 = a4;
  v236 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a1 + 136);
  v197 = *(a1 + 128);
  v198 = v7;
  if (si_simplequeue_count_locked(*(a1 + 160)))
  {
    v9 = si_dequeue_locked(*(a1 + 160));
    if (v9)
    {
      goto LABEL_280;
    }
  }

  v10 = *a2;
  v11 = *(*(v198 + 40) + 8 * v10);
  bzero(v204, 0x648uLL);
  if (a3 > 0x63)
  {
    copyObject_cold_23();
  }

  v195 = a2;
  v193 = a3;
  v13 = 0;
  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
  v16 = 0;
  allocator = *MEMORY[0x1E695E480];
  v192 = v196;
  v199 = &v204[-134];
  cf = *MEMORY[0x1E695E738];
  v17 = *MEMORY[0x1E695E4D0];
  v189 = *MEMORY[0x1E695E4C0];
  v190 = v17;
  *&v12 = 136315394;
  v188 = v12;
LABEL_5:
  v18 = v14;
  while (2)
  {
    switch(BYTE3(v11))
    {
      case 0:
        v64 = *(a1 + 80);
        if (v64)
        {
          v65 = v64(v8, v197);
        }

        else
        {
          v65 = CFRetain(cf);
        }

        v9 = v65;
        if (!v65)
        {
          copyObject_cold_15();
        }

        if (SHIDWORD(v11) < 2)
        {
          LODWORD(v15) = 2;
        }

        else
        {
          LODWORD(v15) = HIDWORD(v11) + 1;
          v113 = HIDWORD(v11) - 1;
          do
          {
            v115 = *(a1 + 80);
            if (v115)
            {
              v114 = v115(v8, v197);
              if (!v114)
              {
LABEL_288:
                copyObject_cold_14();
              }
            }

            else
            {
              v114 = CFRetain(cf);
              if (!v114)
              {
                goto LABEL_288;
              }
            }

            si_enqueue_locked(*(a1 + 160), v114);
            --v113;
          }

          while (v113);
        }

        goto LABEL_193;
      case 1:
        v78 = *(a1 + 72);
        if (v78)
        {
          v9 = v78(v8, HIDWORD(v11), v197);
        }

        else if (HIDWORD(v11))
        {
          v9 = v190;
        }

        else
        {
          v9 = v189;
        }

        if (!v9)
        {
          copyObject_cold_20();
        }

        goto LABEL_193;
      case 2:
        if ((v11 & 0x8000000000000000) != 0 || (v16 = HIDWORD(v11), *(v198 + 56) <= SHIDWORD(v11)))
        {
          v202 = v10;
          v172 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__dst[0]) = 134217984;
            *(__dst + 4) = (v11 >> 32);
            v173 = "uid is less than zero; malformed MDPlistBytes: %ld";
            goto LABEL_270;
          }

          goto LABEL_273;
        }

        v19 = *(a1 + 8);
        v9 = *(v19 + 8 * v16);
        if (!v9)
        {
          v11 = *(*(v198 + 48) + 8 * v16);
          LODWORD(v10) = v11 & 0xFFFFFF;
          continue;
        }

        CFRetain(*(v19 + 8 * v16));
        v106 = v10 + 1;
LABEL_194:
        v202 = v106;
LABEL_195:
        if (!v13)
        {
          goto LABEL_267;
        }

        goto LABEL_202;
      case 0xA:
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_272;
        }

        v20 = HIDWORD(v11);
        v21 = *(a1 + 96);
        if (v21 && *(a1 + 112) && *(a1 + 104) && v21(HIDWORD(v11), v197))
        {
          v203 = v10;
          if (v20)
          {
            v163 = 0;
            v164 = v192;
            do
            {
              v165 = 0;
              v235 = 0u;
              v234 = 0u;
              v233 = 0u;
              v232 = 0u;
              v231 = 0u;
              v230 = 0u;
              v229 = 0u;
              v228 = 0u;
              v227 = 0u;
              v226 = 0u;
              v225 = 0u;
              v224 = 0u;
              v223 = 0u;
              v222 = 0u;
              v221 = 0u;
              v220 = 0u;
              v219 = 0u;
              v218 = 0u;
              v217 = 0u;
              v216 = 0u;
              v215 = 0u;
              v214 = 0u;
              v213 = 0u;
              v212 = 0u;
              v211 = 0u;
              v210 = 0u;
              v209 = 0u;
              v208 = 0u;
              v207 = 0u;
              v206 = 0u;
              memset(__dst, 0, sizeof(__dst));
              do
              {
                __dst[v165] = copyObject(a1, &v203, v193 + 2, v164);
                if (v165 > 0x3E)
                {
                  break;
                }

                ++v165;
              }

              while (v165 + v163 < v20);
              pthread_setspecific(qword_1ED6F3F68, 0);
              if (v163 >= v20)
              {
                pthread_setspecific(qword_1ED6F3F68, (v196 & 1));
              }

              else
              {
                v166 = 0;
                do
                {
                  v167 = v163 + v166;
                  (*(a1 + 104))(__dst[v166], v163 + v166, *(a1 + 128));
                  if (v166 > 0x3E)
                  {
                    break;
                  }

                  ++v166;
                }

                while (v167 + 1 < v20);
                v168 = v196;
                pthread_setspecific(qword_1ED6F3F68, (v196 & 1));
                v164 = v192;
                if ((v168 & 0x100) == 0)
                {
                  v169 = 0;
                  do
                  {
                    v170 = __dst[v169];
                    if (v170)
                    {
                      CFRelease(v170);
                    }

                    if (v169 > 0x3E)
                    {
                      break;
                    }

                    ++v169;
                  }

                  while (v169 + v163 < v20);
                }
              }

              v163 += 64;
            }

            while (v163 < v20);
            LODWORD(v10) = v203;
          }

          pthread_setspecific(qword_1ED6F3F68, 0);
          v9 = (*(a1 + 112))(*(a1 + 128));
          pthread_setspecific(qword_1ED6F3F68, (v196 & 1));
          v202 = v10;
        }

        else
        {
          if (v20 && SHIDWORD(v11) <= 64 && v18 < 3)
          {
            v13 = &v204[67 * v18++];
            *v13 = v16;
            *(v13 + 1) = v20;
            *(v13 + 2) = 0;
            v11 = *(*(v198 + 40) + 8 * v10);
            continue;
          }

          v202 = v10;
          v185 = v185 & 0xFFFFFFFFFFFF0000 | v192;
          v162 = copyArray(a1, v11, &v202, v193 + 1, v192);
          if (!v162)
          {
            copyObject_cold_22();
          }

          v9 = v162;
        }

        goto LABEL_201;
      case 0xB:
        v202 = v10;
        v66 = *a1;
        v67 = (*(*a1 + 40) + 8 * v10);
        v69 = *v67;
        v68 = (v67 + 1);
        v70 = v69 & 0xFFFFFF;
        v71 = HIDWORD(v69) + 8 * (v69 & 0xFFFFFF) - 16;
        if (SHIDWORD(v69) <= 0)
        {
          v71 = 0;
        }

        v72 = v71;
        v73 = *(v66 + 8);
        if (v68 < v73 || v71 < 0 || (v73 - v68 + *(v66 + 16)) <= v71)
        {
          goto LABEL_281;
        }

        v74 = *(a1 + 32);
        v75 = *(a1 + 136);
        if (v74)
        {
          v76 = *(a1 + 128);
          v77 = v74(v75);
        }

        else
        {
          v77 = CFDataCreate(v75, v68, v71);
        }

        v9 = v77;
        v202 = v70 + v10;
        if (!v77)
        {
          copyObject_cold_21();
        }

        goto LABEL_201;
      case 0xC:
      case 0x1C:
        v202 = v10;
        if ((v11 & 0xFF000000) == 0xC000000)
        {
          v22 = 134217984;
        }

        else
        {
          v22 = 256;
        }

        v23 = *a1;
        v24 = (*(*a1 + 40) + 8 * v10);
        v26 = *v24;
        v25 = (v24 + 1);
        v27 = v26 & 0xFFFFFF;
        v28 = HIDWORD(v26) + 8 * (v26 & 0xFFFFFF) - 16;
        if (SHIDWORD(v26) <= 0)
        {
          v28 = 0;
        }

        v29 = *(v23 + 8);
        if (v25 < v29 || v28 < 0 || (v29 - v25 + *(v23 + 16)) <= v28)
        {
          v183 = v28;
          v184 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__dst[0]) = 134217984;
            *(__dst + 4) = v183;
            v173 = "invalid index; malformed MDPlistBytes: %ld";
            v174 = v184;
            goto LABEL_271;
          }

          goto LABEL_273;
        }

        v30 = *(a1 + 40);
        v31 = *(a1 + 136);
        v187 = v11 & 0xFF000000;
        if (v30)
        {
          if (!*(a1 + 120))
          {
            v32 = *(a1 + 128);
          }

          v33 = v28;
          v9 = v30(v31);
          v202 = v27 + v10;
          if (v9)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v33 = v28;
          v9 = CFStringCreateWithBytes(v31, v25, v28, v22, 1u);
          v202 = v27 + v10;
          if (v9)
          {
            goto LABEL_111;
          }
        }

        v107 = copyString__isMDSInternal;
        if (copyString__isMDSInternal == -1)
        {
          v107 = _MDIsAppleInternal();
          copyString__isMDSInternal = v107;
        }

        if (!v107)
        {
          goto LABEL_110;
        }

        v108 = 16;
        if (v187 == 201326592)
        {
          v108 = 8;
        }

        v9 = CFStringCreateWithFormat(*(a1 + 136), 0, @"<MDPlistBytesEncodingError: Invalid UTF-%i encoding (byteCount = %lu)>", v108, v33);
        v109 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          if (v9)
          {
            goto LABEL_111;
          }

LABEL_110:
          v9 = @"__cfstringcreatewithbytesreturnednull__";
          goto LABEL_111;
        }

        LODWORD(__dst[0]) = v188;
        *(__dst + 4) = "CFStringRef copyString(_MDPlistBytesDeserializationContext *, uint64_t, int *)";
        WORD2(__dst[1]) = 2112;
        *(&__dst[1] + 6) = v9;
        _os_log_error_impl(&dword_1B238B000, v109, OS_LOG_TYPE_ERROR, "%s: %@", __dst, 0x16u);
        if (!v9)
        {
          goto LABEL_110;
        }

LABEL_111:
        *(*(a1 + 8) + 8 * v16) = v9;
        if (!*(a1 + 24))
        {
          goto LABEL_195;
        }

        v110 = CFRetain(v9);
        v111 = *(a1 + 24);
        v112 = *(a1 + 16);
        *(a1 + 16) = v112 + 1;
        *(v111 + 8 * v112) = v110;
        if (!v13)
        {
          goto LABEL_267;
        }

        goto LABEL_202;
      case 0xD:
        v202 = v10;
        v186 = v186 & 0xFFFFFFFFFFFF0000 | v192;
        v9 = copyDictionary(a1, v11, &v202, v193 + 1, v192);
        *(*(a1 + 8) + 8 * v16) = v9;
        if (!v13)
        {
          goto LABEL_267;
        }

        goto LABEL_202;
      case 0xE:
        v187 = v16;
        v202 = v10;
        v92 = *(v198 + 40);
        v93 = v92 + 8 * v10;
        if (v93 + 8 - *(v198 + 8) >= *(v198 + 16) - 16)
        {
          goto LABEL_273;
        }

        v94 = *(a1 + 88);
        if (v94)
        {
          v95 = v94(v8);
        }

        else
        {
          v95 = CFUUIDCreateFromUUIDBytes(v8, *(v93 + 8));
        }

        v9 = v95;
        if (!v95)
        {
          copyObject_cold_11();
        }

        if (SHIDWORD(v11) < 2)
        {
          goto LABEL_191;
        }

        LODWORD(v15) = HIDWORD(v11) + 1;
        v126 = HIDWORD(v11) - 1;
        v127 = v92 + 8 * v10 + 24;
        v128 = v127;
        do
        {
          if (v127 - *(v198 + 8) >= *(v198 + 16) - 16)
          {
            goto LABEL_273;
          }

          v130 = *(a1 + 88);
          if (v130)
          {
            v129 = v130(v8, v128, v197);
            if (!v129)
            {
LABEL_292:
              copyObject_cold_10();
            }
          }

          else
          {
            v129 = CFUUIDCreateFromUUIDBytes(v8, *v128);
            if (!v129)
            {
              goto LABEL_292;
            }
          }

          si_enqueue_locked(*(a1 + 160), v129);
          ++v128;
          v127 += 16;
          --v126;
        }

        while (v126);
        LODWORD(v10) = v202;
        goto LABEL_192;
      case 0x10:
      case 0x11:
        v202 = v10;
        v203 = v10;
        if ((v11 & 0xFF000000) == 0x11000000)
        {
          if (HIDWORD(v11) != 2)
          {
            copyObject_cold_6();
          }

          v34 = copyObject(a1, &v203, v193 + 2, v192);
          v35 = *a1;
          v36 = *(*a1 + 40);
          v37 = v36 + 8 * v203;
          if (*(v37 + 3) << 24 != 0x2000000)
          {
            copyObject_cold_7();
          }

          v38 = *(v37 + 8);
          if ((v38 & 0xFF000000) != 0x7000000)
          {
            copyObject_cold_8();
          }

          v39 = v34;
          LODWORD(v10) = v203 + 1;
          v40 = v203 + 1;
        }

        else
        {
          v39 = 0;
          v35 = *a1;
          v36 = *(*a1 + 40);
          v40 = v10;
          v38 = *(v36 + 8 * v10);
        }

        v99 = v36 + 8 * v40;
        v100 = HIDWORD(v38);
        v101 = v38 & 0xFFFFFF;
        if (v100 <= 0)
        {
          v102 = 0;
        }

        else
        {
          v102 = v100 + 8 * v101 - 16;
        }

        v72 = v102;
        v103 = v101 + v10;
        v203 = v103;
        v104 = (v99 + 8);
        v105 = *(v35 + 8);
        if (v99 + 8 >= v105 && (v102 & 0x80000000) == 0 && (v105 - v104 + *(v35 + 16)) > v102)
        {
          v9 = CFURLCreateWithBytes(allocator, v104, v102, 0x8000100u, v39);
          if ((v11 & 0xFF000000) == 0x11000000)
          {
            CFRelease(v39);
          }

          v202 = v103;
          if (!v9)
          {
            copyObject_cold_9();
          }

LABEL_201:
          *(*(a1 + 8) + 8 * v16) = v9;
          if (!v13)
          {
            goto LABEL_267;
          }

LABEL_202:
          while (1)
          {
            v145 = *(v13 + 2);
            v146 = v145 + 1;
            *(v13 + 2) = v145 + 1;
            *&v13[2 * v145 + 6] = v9;
            LODWORD(v15) = v15 - 2;
            v14 = v18;
            if ((v196 & 1) == 0)
            {
              break;
            }

            v147 = *(v13 + 1);
            if (v15 > 0)
            {
LABEL_204:
              if (v147 <= v146)
              {
LABEL_213:
                v151 = 1;
                if (v146 != v147)
                {
                  goto LABEL_238;
                }

                goto LABEL_218;
              }

              while (1)
              {
                v148 = si_simplequeue_count_locked(*(a1 + 160)) ? si_dequeue_locked(*(a1 + 160)) : 0;
                v149 = *(v13 + 2);
                v146 = v149 + 1;
                *(v13 + 2) = v149 + 1;
                *&v13[2 * v149 + 6] = v148;
                v147 = *(v13 + 1);
                v150 = __OFSUB__(v15, 1);
                LODWORD(v15) = v15 - 1;
                v151 = !((v15 < 0) ^ v150 | (v15 == 0));
                if ((v15 < 0) ^ v150 | (v15 == 0))
                {
                  break;
                }

                if (v147 <= v146)
                {
                  goto LABEL_213;
                }
              }

              LODWORD(v15) = 0;
              if (v146 != v147)
              {
                goto LABEL_238;
              }

              goto LABEL_218;
            }

            while (1)
            {
              v151 = 0;
              if (v146 != v147)
              {
                goto LABEL_238;
              }

LABEL_218:
              v9 = CFArrayCreate(v8, v13 + 3, v147, &kCopyArrayArrayCallbacks);
              *(*(a1 + 8) + 8 * *v13) = v9;
              bzero(v13 + 6, 8 * *(v13 + 2));
              if (v14 < 2)
              {
LABEL_267:
                v171 = v195;
                goto LABEL_279;
              }

              LODWORD(v18) = v14 - 1;
              v13 = &v199[67 * v14];
              if (!v151)
              {
                break;
              }

              v152 = *(v13 + 2);
              v146 = v152 + 1;
              *(v13 + 2) = v152 + 1;
              *&v13[2 * v152 + 6] = v9;
              --v14;
              v147 = *(v13 + 1);
              if (v15 > 0)
              {
                goto LABEL_204;
              }
            }
          }

          while (1)
          {
            if (v15 < 1)
            {
LABEL_230:
              v156 = 0;
            }

            else
            {
              v153 = v13 + 6;
              while (1)
              {
                v155 = *(v13 + 1);
                v156 = v155 <= v146;
                if (v155 <= v146)
                {
                  break;
                }

                if (si_simplequeue_count_locked(*(a1 + 160)))
                {
                  v157 = si_dequeue_locked(*(a1 + 160));
                  v158 = *(v13 + 2);
                  v146 = v158 + 1;
                  *(v13 + 2) = v158 + 1;
                  *&v153[2 * v158] = v157;
                  v150 = __OFSUB__(v15, 1);
                  LODWORD(v15) = v15 - 1;
                  if ((v15 < 0) ^ v150 | (v15 == 0))
                  {
LABEL_229:
                    LODWORD(v15) = 0;
                    goto LABEL_230;
                  }
                }

                else
                {
                  v154 = *(v13 + 2);
                  v146 = v154 + 1;
                  *(v13 + 2) = v154 + 1;
                  *&v153[2 * v154] = 0;
                  v150 = __OFSUB__(v15, 1);
                  LODWORD(v15) = v15 - 1;
                  if ((v15 < 0) ^ v150 | (v15 == 0))
                  {
                    goto LABEL_229;
                  }
                }
              }
            }

            if (v146 != *(v13 + 1))
            {
              break;
            }

            v159 = v13 + 6;
            v9 = CFArrayCreate(v8, v13 + 3, v146, &kCopyArrayArrayCallbacks);
            *(*(a1 + 8) + 8 * *v13) = v9;
            if (*(v13 + 2) >= 1)
            {
              v160 = 0;
              do
              {
                CFRelease(*&v159[2 * v160]);
                *&v159[2 * v160++] = 0;
              }

              while (v160 < *(v13 + 2));
            }

            if (v14 < 2)
            {
              goto LABEL_267;
            }

            LODWORD(v18) = v14 - 1;
            v13 = &v199[67 * v14];
            if (!v156)
            {
              goto LABEL_202;
            }

            v161 = *(v13 + 2);
            v146 = v161 + 1;
            *(v13 + 2) = v161 + 1;
            *&v13[2 * v161 + 6] = v9;
            --v14;
          }

LABEL_238:
          LODWORD(v10) = v202;
          v11 = *(*(v198 + 40) + 8 * v202);
          goto LABEL_5;
        }

LABEL_281:
        v181 = v72;
        v172 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__dst[0]) = 134217984;
          *(__dst + 4) = v181;
          v173 = "invalid index; malformed MDPlistBytes: %ld";
LABEL_270:
          v174 = v172;
LABEL_271:
          _os_log_error_impl(&dword_1B238B000, v174, OS_LOG_TYPE_ERROR, v173, __dst, 0xCu);
        }

LABEL_273:
        *(v198 + 32) = 1565;
        v9 = CFRetain(cf);
        if (v13 && *(v13 + 2) >= 1)
        {
          v175 = 0;
          v176 = v13 + 6;
          do
          {
            CFRelease(*&v176[2 * v175]);
            *&v176[2 * v175++] = 0;
          }

          while (*(v13 + 2) > v175);
        }

        v177 = _MDLogForCategoryDefault();
        v178 = os_log_type_enabled(v177, OS_LOG_TYPE_ERROR);
        v171 = v195;
        if (v178)
        {
          LODWORD(__dst[0]) = v188;
          *(__dst + 4) = "CFTypeRef copyObject(_MDPlistBytesDeserializationContext *, int *, _Bool, unsigned int, copy_object_behavior_t)";
          WORD2(__dst[1]) = 2048;
          *(&__dst[1] + 6) = v11;
          _os_log_error_impl(&dword_1B238B000, v177, OS_LOG_TYPE_ERROR, "%s: Invalid plist bytes descriptor: %#018llx", __dst, 0x16u);
        }

LABEL_279:
        *v171 = v202;
LABEL_280:
        v179 = *MEMORY[0x1E69E9840];
        return v9;
      case 0x1A:
        v202 = v10;
        v49 = (*(v198 + 40) + 8 * v10);
        v51 = *v49;
        v50 = v49 + 1;
        v52 = v51 & 0xFFFFFF;
        v53 = HIDWORD(v51) + 8 * (v51 & 0xFFFFFF) - 16;
        if (SHIDWORD(v51) <= 0)
        {
          v53 = 0;
        }

        v54 = v53;
        v55 = *(v198 + 8);
        if (v50 < v55 || v53 < 0 || (v55 - v50 + *(v198 + 16)) <= v53)
        {
          goto LABEL_283;
        }

        v56 = v52;
        if (v53)
        {
          __dst[0] = 0;
          v57 = _fast_vm_allocate(__dst, v53, -268435455);
          v58 = v54;
          v9 = 0;
          if (v57)
          {
            goto LABEL_163;
          }

          v59 = v58;
          if (v58 >= 4 * *MEMORY[0x1E69E9AC8])
          {
            madvise(__dst[0], v58, 3);
          }

          memcpy(__dst[0], v50, v59);
          v60 = __dst[0];
          v61 = v59 >> 3;
          v62 = v8;
          v63 = 1;
        }

        else
        {
          v62 = v8;
          v60 = 0;
          v61 = 0;
          v63 = 0;
        }

        v9 = _MDStoreOIDArrayCreate(v62, v60, v61, v63);
LABEL_163:
        v202 = v56 + v10;
        if (!v9)
        {
          copyObject_cold_1();
        }

        goto LABEL_201;
      case 0x1B:
        v202 = v10;
        v79 = (*(v198 + 40) + 8 * v10);
        v81 = *v79;
        v80 = v79 + 1;
        v82 = v81 & 0xFFFFFF;
        v83 = HIDWORD(v81) + 8 * (v81 & 0xFFFFFF) - 16;
        if (SHIDWORD(v81) <= 0)
        {
          v84 = 0;
        }

        else
        {
          v84 = v83;
        }

        v54 = v84;
        v85 = *(v198 + 8);
        if (v80 < v85 || v84 < 0 || (v85 - v80 + *(v198 + 16)) <= v84)
        {
LABEL_283:
          v182 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__dst[0]) = 134217984;
            *(__dst + 4) = v54;
            v173 = "invalid index; malformed MDPlistBytes: %ld";
            v174 = v182;
            goto LABEL_271;
          }

          goto LABEL_273;
        }

        v86 = v82 + v10;
        if (!v84)
        {
          if (qword_1ED6F3FE0 == -1)
          {
LABEL_169:
            v9 = CFRetain(qword_1ED6F3FD8);
            goto LABEL_177;
          }

LABEL_265:
          [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
          goto LABEL_169;
        }

        if (v84 < 0x800 || (*(v198 + 34) & 8) != 0)
        {
          v88 = malloc_type_valloc(v84, 0xF2F017C0uLL);
          v89 = v54;
          v90 = v88;
          if (v89 >= 4 * *MEMORY[0x1E69E9AC8])
          {
            madvise(v88, v89, 3);
          }

          memcpy(v90, v80, v89);
          if (v90)
          {
            v91 = [[_MDPlistBytes alloc] initWithByteVector:v90 count:v89 trusted:0 deallocator:&__block_literal_global_108];
            v9 = v91;
            if (v91)
            {
              CFRetain(v91);
            }
          }

          else
          {
            if (qword_1ED6F3FE0 != -1)
            {
              [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
            }

            v9 = CFRetain(qword_1ED6F3FD8);
          }

          BYTE2(v9[1].isa) |= 8u;
          v202 = v86;
          goto LABEL_201;
        }

        __dst[0] = 0;
        v136 = _fast_vm_allocate(__dst, v84, -251658239);
        v137 = v54;
        v9 = 0;
        if (!v136)
        {
          v138 = v137;
          if (v137 >= 4 * *MEMORY[0x1E69E9AC8])
          {
            madvise(__dst[0], v137, 3);
          }

          memcpy(__dst[0], v80, v138);
          if (!__dst[0])
          {
            if (qword_1ED6F3FE0 == -1)
            {
              goto LABEL_169;
            }

            goto LABEL_265;
          }

          v139 = [[_MDPlistBytes alloc] initWithByteVector:__dst[0] count:v138 trusted:0 deallocator:&__block_literal_global_108];
          v9 = v139;
          if (v139)
          {
            CFRetain(v139);
          }
        }

LABEL_177:
        v202 = v86;
        if (!v9)
        {
          copyObject_cold_5();
        }

        goto LABEL_201;
      case 0x84:
        v187 = v16;
        v202 = v10;
        v96 = (*(v198 + 40) + 8 * v10 + 8);
        if (v96 - *(v198 + 8) >= *(v198 + 16) - 8)
        {
          goto LABEL_273;
        }

        valuePtr = *v96;
        v97 = *(a1 + 64);
        if (v97)
        {
          v98 = v97(v8);
        }

        else
        {
          v98 = CFNumberCreate(v8, kCFNumberLongLongType, &valuePtr);
        }

        v9 = v98;
        if (!v98)
        {
          copyObject_cold_17();
        }

        if (SHIDWORD(v11) < 2)
        {
          goto LABEL_191;
        }

        v15 = (HIDWORD(v11) + 1);
        v131 = v15 - 2;
        v132 = 8 * v10 + 16;
        do
        {
          v134 = *(v198 + 40);
          if (v132 + v134 - *(v198 + 8) >= *(v198 + 16) - 8)
          {
            goto LABEL_273;
          }

          valuePtr = *(v134 + v132);
          v135 = *(a1 + 64);
          if (v135)
          {
            v133 = v135(v8);
            if (!v133)
            {
LABEL_291:
              copyObject_cold_16();
            }
          }

          else
          {
            v133 = CFNumberCreate(v8, kCFNumberLongLongType, &valuePtr);
            if (!v133)
            {
              goto LABEL_291;
            }
          }

          si_enqueue_locked(*(a1 + 160), v133);
          v132 += 8;
          --v131;
        }

        while (v131);
        goto LABEL_192;
      case 0x85:
        v187 = v16;
        v202 = v10;
        v41 = (*(v198 + 40) + 8 * v10 + 8);
        if (v41 - *(v198 + 8) >= *(v198 + 16) - 8)
        {
          goto LABEL_273;
        }

        v42 = *v41;
        v200 = *v41;
        v43 = *(a1 + 56);
        if (v43)
        {
          v44 = v43(v8, v197);
        }

        else
        {
          v116 = v42;
          *__dst = v116;
          if (v42 == v116)
          {
            v117 = __dst;
            v118 = v8;
            v119 = kCFNumberFloatType;
          }

          else
          {
            v117 = &v200;
            v118 = v8;
            v119 = kCFNumberDoubleType;
          }

          v44 = CFNumberCreate(v118, v119, v117);
        }

        v9 = v44;
        if (!v44)
        {
          copyObject_cold_13();
        }

        if (SHIDWORD(v11) < 2)
        {
          goto LABEL_191;
        }

        v15 = (HIDWORD(v11) + 1);
        v140 = v15 - 2;
        v141 = 8 * v10 + 16;
        do
        {
          v143 = *(v198 + 40);
          if (v141 + v143 - *(v198 + 8) >= *(v198 + 16) - 8)
          {
            goto LABEL_273;
          }

          v200 = *(v143 + v141);
          v144 = *(a1 + 56);
          if (v144)
          {
            v142 = v144(v8, v197);
            if (!v142)
            {
LABEL_290:
              copyObject_cold_12();
            }
          }

          else
          {
            v142 = CFNumberCreate(v8, kCFNumberDoubleType, &v200);
            if (!v142)
            {
              goto LABEL_290;
            }
          }

          si_enqueue_locked(*(a1 + 160), v142);
          v141 += 8;
          --v140;
        }

        while (v140);
LABEL_192:
        v16 = v187;
LABEL_193:
        v106 = v10 + (v11 & 0xFFFFFF);
        goto LABEL_194;
      case 0x86:
        v187 = v16;
        v202 = v10;
        v45 = (*(v198 + 40) + 8 * v10 + 8);
        if (v45 - *(v198 + 8) >= *(v198 + 16) - 8)
        {
          goto LABEL_273;
        }

        v46 = *v45;
        v47 = *(a1 + 48);
        if (v47)
        {
          v48 = v47(v8, v197, v46);
        }

        else
        {
          v48 = CFDateCreate(v8, v46);
        }

        v9 = v48;
        if (!v48)
        {
          copyObject_cold_19();
        }

        if (SHIDWORD(v11) < 2)
        {
LABEL_191:
          LODWORD(v15) = 2;
        }

        else
        {
          v15 = (HIDWORD(v11) + 1);
          v120 = 8 * v10 + 16;
          v121 = v15 - 2;
          do
          {
            v123 = *(v198 + 40);
            if (v120 + v123 - *(v198 + 8) >= *(v198 + 16) - 8)
            {
              goto LABEL_273;
            }

            v124 = *(v123 + v120);
            v125 = *(a1 + 48);
            if (v125)
            {
              v122 = v125(v8, v197, v124);
              if (!v122)
              {
LABEL_289:
                copyObject_cold_18();
              }
            }

            else
            {
              v122 = CFDateCreate(v8, v124);
              if (!v122)
              {
                goto LABEL_289;
              }
            }

            si_enqueue_locked(*(a1 + 160), v122);
            v120 += 8;
            --v121;
          }

          while (v121);
        }

        goto LABEL_192;
      default:
LABEL_272:
        v202 = v10;
        goto LABEL_273;
    }
  }
}

uint64_t si_simplequeue_count_locked(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = *(a1 + 120);
  if ((-v2 & v1) != 0)
  {
    si_simplequeue_count_locked_cold_1();
  }

  v3 = *(a1 + 124);
  if ((v3 & ~(v2 - 1)) != 0)
  {
    si_simplequeue_count_locked_cold_2();
  }

  if (v3 <= v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 120);
  }

  v5 = v4 - v3 + v1;
  if (!v5)
  {
    if (*(*(a1 + 136) + 8 * v1))
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _QueryResultsBeginArray(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a2[4] & 1) == 0)
  {
    v2 = *a2;
    if (*a2)
    {
      if (v2 != 1)
      {
        result = 0;
        v5 = *MEMORY[0x1E69E9840];
        v6 = *MEMORY[0x1E69E9840];
        return result;
      }

      *(a2 + 33) = 1;
    }

    *a2 = v2 + 1;
  }

  result = 1;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _QueryResultsEndArray(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    v2 = (*a1)--;
    if (v2 == 2)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 24);
      (*(*(a1 + 8) + 16))();
      v5 = *(a1 + 16);
      if (v5)
      {
        for (i = 0; i < v5; ++i)
        {
          v7 = *(*(a1 + 24) + 8 * i);
          if (v7)
          {
            CFRelease(v7);
            *(*(a1 + 24) + 8 * i) = 0;
            v5 = *(a1 + 16);
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

void *si_enqueue_locked(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 128);
  v3 = *(a1 + 120);
  if ((-v3 & v2) != 0)
  {
    si_enqueue_locked_cold_1();
  }

  v5 = v3 - 1;
  if ((*(a1 + 124) & ~(v3 - 1)) != 0)
  {
    si_enqueue_locked_cold_2();
  }

  result = *(a1 + 136);
  if (*(result + v2))
  {
    *(a1 + 120) = 2 * v3;
    v8 = malloc_type_realloc(result, 8 * (2 * v3), 0x80040B8603338uLL);
    *(a1 + 136) = v8;
    memcpy(&v8[8 * v3], v8, 8 * *(a1 + 124));
    v9 = *(a1 + 124);
    *(a1 + 128) = (*(a1 + 120) - 1) & (v9 + v3);
    bzero(*(a1 + 136), 8 * v9);
    bzero((*(a1 + 136) + 8 * *(a1 + 128)), 8 * (*(a1 + 120) - *(a1 + 128)));
    result = *(a1 + 136);
    v2 = *(a1 + 128);
    v5 = *(a1 + 120) - 1;
  }

  *(result + v2) = a2;
  v10 = v5 & (v2 + 1);
  *(a1 + 128) = v10;
  if (*(a1 + 132))
  {
    result = pthread_cond_broadcast((a1 + 72));
    v10 = *(a1 + 128);
    v5 = *(a1 + 120) - 1;
  }

  if ((v10 & ~v5) != 0)
  {
    si_enqueue_locked_cold_3();
  }

  if ((*(a1 + 124) & ~v5) != 0)
  {
    si_enqueue_locked_cold_4();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_dequeue_locked(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 136);
  v3 = *(a1 + 124);
  result = *(v2 + 8 * v3);
  if (result)
  {
    *(v2 + 8 * v3) = 0;
    *(a1 + 124) = (*(a1 + 120) - 1) & (v3 + 1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _QueryResultsValue(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!result || (a3[4] & 1) != 0)
  {
    goto LABEL_14;
  }

  if (*MEMORY[0x1E695E738] != result)
  {
    if (a3[2] > a2)
    {
      *(a3[3] + 8 * a2) = result;
    }

LABEL_14:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = *a3;
  if (!a2 || v3 != 1)
  {
    if (!a2 && v3 == 1)
    {
      *(a3 + 33) = 1;
    }

    goto LABEL_14;
  }

  v4 = a3[3];
  v5 = *(a3[1] + 16);
  v6 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E9840];

  return v5();
}

BOOL _MDPlistBytesGrowCapacityVM(uint64_t a1, unsigned int a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || (v3 = *(a1 + 34), (v3 & 1) == 0))
  {
LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  v8 = *(a1 + 20);
  v9 = MEMORY[0x1E69E9AC8];
  if (v8 <= a2)
  {
    v10 = v8 + ((a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]);
    *(a1 + 20) = v10;
    v11 = a1;
    if (v10 < 0x70000001)
    {
LABEL_7:
      if ((v3 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 2 * v8;
    *(a1 + 20) = 2 * v8;
    v11 = a1;
    if ((2 * v8) < 0x70000001)
    {
      goto LABEL_7;
    }
  }

  v10 = 1879048192;
  if (v8 + a2 > 0x70000000)
  {
    *(a1 + 32) = 2259;
    v16 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_4;
    }

    _MDPlistBytesGrowCapacityVM_cold_1();
    goto LABEL_3;
  }

  *(a1 + 20) = 1879048192;
  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((a3 & 1) == 0)
  {
    v12 = a3;
    v13 = malloc_type_zone_malloc(*(a1 + 64), v10, 0x2A937BB6uLL);
    v14 = v11;
    *(v11 + 8) = v13;
    goto LABEL_21;
  }

LABEL_14:
  v12 = a3;
  if (_fast_vm_allocate((a1 + 8), v10, -251658239))
  {
    if (!*(v11 + 32))
    {
      *(v11 + 32) = 2286;
      v15 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_4;
      }

      _MDPlistBytesGrowCapacityVM_cold_2();
    }

    goto LABEL_3;
  }

  v13 = *v7;
  v14 = v11;
LABEL_21:
  *(v14 + 112) = &v13[*(v14 + 20)];
  v17 = (v6 - v13) >> 3;
  v18 = *(v14 + 40);
  if (v18)
  {
    *(v14 + 40) = v18 - 8 * v17;
  }

  v19 = *(v14 + 104);
  if (v19)
  {
    *(v14 + 104) = v19 - 8 * v17;
  }

  v20 = *(v14 + 120);
  if (v20)
  {
    *(v14 + 120) = v20 - 8 * v17;
  }

  if (v8 >= 4 * *v9)
  {
    madvise(v13, v8, 3);
    v13 = *v7;
  }

  memcpy(v13, v6, v8);
  if ((*(v11 + 34) & 8) != 0)
  {
    free(v6);
  }

  else
  {
    _fast_vm_deallocate(v6, v8);
  }

  if ((*(v11 + 34) & 8) != 0)
  {
    v21 = v12;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 8;
  }

  *(v11 + 34) = v22 | *(v11 + 34) & 0xF7;
  result = 1;
LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDLogForCategoryDefault()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_MDLogForCategoryDefault_onceToken != -1)
  {
    _MDLogForCategoryDefault_cold_1();
  }

  result = _MDLogForCategoryDefault_log;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void si_destroy_queue(char *a1, void (*a2)(uint64_t))
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = "destroyed simple queue";
  pthread_mutex_destroy((a1 + 8));
  pthread_cond_destroy((a1 + 72));
  v4 = *(a1 + 17);
  v5 = *(a1 + 31);
  v6 = &v4[8 * v5];
  for (i = *v6; *v6; i = *v6)
  {
    *v6 = 0;
    *(a1 + 31) = (*(a1 + 30) - 1) & (v5 + 1);
    a2(i);
    v4 = *(a1 + 17);
    v5 = *(a1 + 31);
    v6 = &v4[8 * v5];
  }

  free(v4);
  v8 = *MEMORY[0x1E69E9840];

  free(a1);
}

void __copyCFDictionary_block_invoke(uint64_t a1, const UInt8 *a2, CFIndex a3, __int128 *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = CFStringCreateWithBytes(*(a1 + 40), a2, a3, 0x8000100u, 0);
    v6 = *(a1 + 32);
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v13 = *a4;
  v14 = *(a4 + 2);
  v10 = __MDPlistContainerCopyObjectErrorCode(v8, &v13, (v9 + 1), v6);
  v11 = v10;
  if (v7 && v10)
  {
    CFDictionaryAddValue(*(a1 + 48), v7, v10);
  }

  else if (!v7)
  {
    goto LABEL_9;
  }

  CFRelease(v7);
LABEL_9:
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t parse_mobile_journal(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v213 = *MEMORY[0x1E69E9840];
  if (a2 < 0xC)
  {
LABEL_2:
    result = 1;
    goto LABEL_3;
  }

  v10 = a2;
  v11 = 0;
  v12 = 0;
  v169 = a2 - 20;
  v170 = a2 - 24;
  v175 = a2 - 36;
  v177 = -1;
  v13 = 12;
  while (1)
  {
    v14 = a1 + v12;
    v15 = *(a1 + v12);
    v180 = 0;
    v179 = 0;
    HIDWORD(v17) = v15 + 264306963;
    LODWORD(v17) = v15 + 264306963;
    v16 = v17 >> 20;
    if (v16 > 1)
    {
      switch(v16)
      {
        case 2:
          v35 = v169 + v11;
          v36 = v2_readVInt64_boundschecked(v14 + 20, v169 + v11, &v180, &v179);
          if (v179 == 1)
          {
            v158 = _MDLogForCategoryDefault();
            if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_2;
            }

            *buf = 134218752;
            *&buf[4] = 4033806061;
            *&buf[12] = 2048;
            *&buf[14] = v35;
            *&buf[22] = 2048;
            v206 = v12;
            v207 = 2048;
            v208 = v10;
            v159 = "Invalid journal entry (serial number), magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
            goto LABEL_209;
          }

          v20 = v36;
          goto LABEL_26;
        case 4:
          v46 = v175 + v11;
          v32 = v2_readVInt64_boundschecked(v14 + 36, v175 + v11, &v180, &v179);
          if (v179 != 1)
          {
            v34 = -262275347;
            v33 = 1;
            goto LABEL_61;
          }

          v158 = _MDLogForCategoryDefault();
          if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_2;
          }

          *buf = 134218752;
          *&buf[4] = 4032691949;
          *&buf[12] = 2048;
          *&buf[14] = v46;
          *&buf[22] = 2048;
          v206 = v12;
          v207 = 2048;
          v208 = v10;
          v159 = "Invalid journal entry (serial number) , magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
LABEL_209:
          v161 = v158;
LABEL_210:
          _os_log_error_impl(&dword_1B238B000, v161, OS_LOG_TYPE_ERROR, v159, buf, 0x2Au);
          goto LABEL_2;
        case 5:
          v18 = v170 + v11;
          v19 = v2_readVInt64_boundschecked(v14 + 24, v170 + v11, &v180, &v179);
          if (v179 != 1)
          {
            v20 = v19;
LABEL_11:
            v21 = *(v14 + 4);
            v22 = v21 + 12;
            if ((v21 + 12) < 0x14 || v22 < 0x18 || (v23 = v12 + v22, v23 > v10))
            {
              v158 = _MDLogForCategoryDefault();
              if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_2;
              }

              *buf = 134218752;
              *&buf[4] = 4035903213;
              *&buf[12] = 2048;
              *&buf[14] = v21;
              *&buf[22] = 2048;
              v206 = v12;
              v207 = 2048;
              v208 = v10;
              v159 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
              goto LABEL_209;
            }

            v24 = v21 - 12;
            v25 = *(v14 + 16);
            v26 = *(v14 + 18);
            v27 = v180;
            if (v180 >= v21 - 12)
            {
              v29 = 0;
            }

            else
            {
              v173 = *(v14 + 16);
              if (*(v14 + 16))
              {
                v28 = v24 - v180 - v26;
                v29 = (v14 + v180 + 24);
                v30 = strnlen(v29, v28);
                v80 = v30 == v28;
                v25 = v173;
                if (!v80 && v30 + 1 == v173)
                {
                  if (!v26)
                  {
                    goto LABEL_91;
                  }

LABEL_88:
                  v74 = v27 + v25;
                  v75 = v24 - (v27 + v25);
                  v76 = strnlen((v14 + v74 + 24), v75);
                  v77 = v76;
                  if (v76 == v75 || v76 + 1 != v26)
                  {
                    v79 = _MDLogForCategoryDefault();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134219264;
                      *&buf[4] = 4035903213;
                      *&buf[12] = 2048;
                      *&buf[14] = v21;
                      *&buf[22] = 2048;
                      v206 = v12;
                      v207 = 2048;
                      v208 = a2;
                      v209 = 2048;
                      v210 = v77;
                      v211 = 2048;
                      v212 = v26;
                      _os_log_error_impl(&dword_1B238B000, v79, OS_LOG_TYPE_ERROR, "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x3Eu);
                    }

                    v78 = 1;
                  }

                  else
                  {
                    v78 = 0;
                  }

                  LODWORD(v25) = v173;
                  goto LABEL_96;
                }

                v172 = v30;
                v73 = _MDLogForCategoryDefault();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134219264;
                  *&buf[4] = 4035903213;
                  *&buf[12] = 2048;
                  *&buf[14] = v21;
                  *&buf[22] = 2048;
                  v206 = v12;
                  v207 = 2048;
                  v208 = a2;
                  v209 = 2048;
                  v210 = v172;
                  v211 = 2048;
                  v212 = v173;
                  _os_log_error_impl(&dword_1B238B000, v73, OS_LOG_TYPE_ERROR, "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x3Eu);
                }
              }

              v29 = 0;
              if (v26)
              {
                goto LABEL_88;
              }
            }

LABEL_91:
            v78 = 1;
LABEL_96:
            if (v29)
            {
              v80 = 1;
            }

            else
            {
              v80 = v25 == 0;
            }

            v81 = v78 & (v26 != 0);
            if (!v80)
            {
              v81 = 1;
            }

            v82 = v177;
            if (v177 <= v20)
            {
              v83 = v20;
            }

            else
            {
              v83 = v177;
            }

            if (!v81)
            {
              v82 = v83;
            }

            v177 = v82;
LABEL_107:
            v10 = a2;
            goto LABEL_189;
          }

          v158 = _MDLogForCategoryDefault();
          if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_2;
          }

          *buf = 134218752;
          *&buf[4] = 4035903213;
          *&buf[12] = 2048;
          *&buf[14] = v18;
          *&buf[22] = 2048;
          v206 = v12;
          v207 = 2048;
          v208 = v10;
          v159 = "Invalid journal entry (serial number), magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
          goto LABEL_209;
      }

      goto LABEL_38;
    }

    if (!v16)
    {
      v47 = v10 - v13;
      v48 = v2_readVInt64_boundschecked(v14 + 12, v10 - v13, &v180, &v179);
      if (v179 == 1)
      {
        v160 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_2;
        }

        *buf = 134218752;
        *&buf[4] = 4030594797;
        *&buf[12] = 2048;
        *&buf[14] = v47;
        *&buf[22] = 2048;
        v206 = v12;
        v207 = 2048;
        v208 = v10;
        v159 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
        v161 = v160;
        goto LABEL_210;
      }

      v49 = v48;
      goto LABEL_40;
    }

    if (v16 == 1)
    {
      break;
    }

LABEL_38:
    if (v15 != -264372499)
    {
      if ((v15 & 0xFFEFFFFF) == 0xF04DFEED)
      {
        v33 = 0;
        v32 = 0;
        v34 = v15;
        goto LABEL_61;
      }

      v20 = 0;
      if (v15 == -259064083)
      {
        goto LABEL_11;
      }

      if (v15 != -261161235)
      {
        goto LABEL_2;
      }

LABEL_26:
      v37 = *(v14 + 4);
      if ((v37 + 12) < 0x14 || (v23 = v12 + (v37 + 12), v23 > v10))
      {
        v158 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_2;
        }

        *buf = 134218752;
        *&buf[4] = 4033806061;
        *&buf[12] = 2048;
        *&buf[14] = v37;
        *&buf[22] = 2048;
        v206 = v12;
        v207 = 2048;
        v208 = v10;
        v159 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
        goto LABEL_209;
      }

      v38 = *(v14 + 12);
      v39 = v37 - 8 - v180;
      if (v37 - 8 <= v180)
      {
        if (!*(v14 + 12))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (!*(v14 + 12) || (v40 = strnlen((v14 + v180 + 20), v37 - 8 - v180), v41 = v40, v40 != v39) && v40 + 1 == v38)
        {
LABEL_55:
          v62 = v177;
          if (v177 <= v20)
          {
            v62 = v20;
          }

          goto LABEL_188;
        }

        v42 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219264;
          *&buf[4] = 4033806061;
          *&buf[12] = 2048;
          *&buf[14] = v37;
          *&buf[22] = 2048;
          v206 = v12;
          v207 = 2048;
          v208 = v10;
          v209 = 2048;
          v210 = v41;
          v211 = 2048;
          v212 = v38;
          v43 = v42;
          v44 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)";
          v45 = 62;
LABEL_76:
          _os_log_error_impl(&dword_1B238B000, v43, OS_LOG_TYPE_ERROR, v44, buf, v45);
          goto LABEL_189;
        }
      }

      goto LABEL_189;
    }

    v49 = 0;
LABEL_40:
    v50 = *(v14 + 4);
    if (v50 > 0xFFFFFFF3 || (v23 = v50 + v12 + 12, v23 > v10))
    {
      v158 = _MDLogForCategoryDefault();
      if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      *buf = 134218752;
      *&buf[4] = 4030594797;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      *&buf[22] = 2048;
      v206 = v12;
      v207 = 2048;
      v208 = v10;
      v159 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
      goto LABEL_209;
    }

    v197 = 0uLL;
    v198 = 0;
    v51 = v180;
    v52 = v50 - v180;
    if (v50 > v180)
    {
      v53 = v14 + 12;
      if (!_MDPlistContainerValidateRootObjectFromBytes(v14 + 12 + v180, v50 - v180, a3, a4, a5, a6, a7, a8))
      {
        v71 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_189;
        }

        *buf = 134218752;
        *&buf[4] = 4030594797;
        *&buf[12] = 2048;
        *&buf[14] = v50;
        *&buf[22] = 2048;
        v206 = v12;
        v207 = 2048;
        v208 = v10;
        v43 = v71;
        v44 = "Bad journal plist, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
LABEL_75:
        v45 = 42;
        goto LABEL_76;
      }

      v203 = 0uLL;
      v204 = 0;
      _MDPlistGetRootPlistObjectFromBytes(v53 + v51, v52, v54, v55, v56, v57, v58, &v203);
      *buf = v203;
      *&buf[16] = v204;
      if (_MDPlistArrayGetCount(buf))
      {
        *buf = v203;
        *&buf[16] = v204;
        _MDPlistArrayGetPlistObjectAtIndex(buf, 0, a3, a4, a5, a6, a7, a8, &v197);
        *buf = v197;
        *&buf[16] = v198;
        if (_MDPlistGetPlistObjectType(buf) != 244)
        {
          *buf = v197;
          *&buf[16] = v198;
          if (_MDPlistGetPlistObjectType(buf) != 245)
          {
            v107 = _MDLogForCategoryDefault();
            if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_189;
            }

            *buf = 134218752;
            *&buf[4] = 4030594797;
            *&buf[12] = 2048;
            *&buf[14] = v50;
            *&buf[22] = 2048;
            v206 = v12;
            v207 = 2048;
            v208 = v10;
            v43 = v107;
            v44 = "Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
            goto LABEL_75;
          }
        }

        if (v49 && v177 && v49 < v177)
        {
          goto LABEL_189;
        }

        if (*v14 != -264306963 && *v14 != -264372499)
        {
          goto LABEL_141;
        }

        v60 = *(v14 + 4);
        v59 = *(v14 + 8);
        if (v49)
        {
          *buf = 0;
          v61 = v2_readVInt64_boundschecked(v14 + 12, -1, buf, &v203);
          v53 += *buf;
          v60 -= *buf;
        }

        else
        {
          v61 = 0;
        }

        if (!_MDPlistContainerValidateRootObjectFromBytes(v53, v60, a3, a4, a5, a6, a7, a8))
        {
          goto LABEL_141;
        }

        memset(buf, 0, sizeof(buf));
        _MDPlistGetRootPlistObjectFromBytes(v53, v60, a3, a5, a6, a7, a8, buf);
        v203 = *buf;
        v204 = *&buf[16];
        if (_MDPlistArrayGetCount(&v203) != 2)
        {
          goto LABEL_141;
        }

        v203 = 0uLL;
        v204 = 0;
        v201 = *buf;
        v202 = *&buf[16];
        _MDPlistArrayGetPlistObjectAtIndex(&v201, 0, a3, a4, a5, a6, a7, a8, &v203);
        v201 = 0uLL;
        v202 = 0;
        v199 = *buf;
        v200 = *&buf[16];
        _MDPlistArrayGetPlistObjectAtIndex(&v199, 1, v112, v113, v114, v115, v116, v117, &v201);
        if (!a3)
        {
LABEL_141:
          v62 = v177;
          if (v177 <= v49)
          {
            v62 = v49;
          }

LABEL_188:
          v177 = v62;
          goto LABEL_189;
        }

        if ((v59 & 0x8000) != 0)
        {
          v118 = 2;
        }

        else
        {
          v118 = (v59 >> 17) & 1;
        }

        v199 = v203;
        v200 = v204;
        Value = _MDPlistStringGetValue(&v199, 0, 0);
        v120 = *(a3 + 16);
        v199 = v201;
        v200 = v202;
        LOBYTE(v101) = v120(a3, v61, v118, Value, &v199);
        v121 = v177;
        if (v177 <= v49)
        {
          v121 = v49;
        }

        goto LABEL_168;
      }
    }

LABEL_189:
    v11 = -v23;
    v13 = v23 + 12;
    v12 = v23;
    if (v23 + 12 > v10)
    {
      goto LABEL_2;
    }
  }

  v31 = v175 + v11;
  v32 = v2_readVInt64_boundschecked(v14 + 36, v175 + v11, &v180, &v179);
  if (v179 == 1)
  {
    v158 = _MDLogForCategoryDefault();
    if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    *buf = 134218752;
    *&buf[4] = 4031643373;
    *&buf[12] = 2048;
    *&buf[14] = v31;
    *&buf[22] = 2048;
    v206 = v12;
    v207 = 2048;
    v208 = v10;
    v159 = "Invalid journal entry (serial number), magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
    goto LABEL_209;
  }

  v33 = 1;
  v34 = -263323923;
LABEL_61:
  v63 = *(v14 + 4);
  if ((v63 + 12) < 0x24 || (v23 = v12 + (v63 + 12), v23 > v10))
  {
    v158 = _MDLogForCategoryDefault();
    if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    *buf = 134218752;
    *&buf[4] = v34;
    *&buf[12] = 2048;
    *&buf[14] = v63;
    *&buf[22] = 2048;
    v206 = v12;
    v207 = 2048;
    v208 = v10;
    v159 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
    goto LABEL_209;
  }

  v64 = v63 - 24 - v180;
  if (v63 - 24 <= v180)
  {
    goto LABEL_73;
  }

  v65 = v33;
  v171 = v32;
  v165 = *(v14 + 12);
  v168 = v14 + 36;
  v66 = strnlen((v14 + 36 + v180), v63 - 24 - v180);
  v67 = v66;
  if (v66 == v64 || v66 + 1 != (v165 & 0x3FF))
  {
    v69 = _MDLogForCategoryDefault();
    v10 = a2;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 134219264;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = v63;
      *&buf[22] = 2048;
      v206 = v12;
      v207 = 2048;
      v208 = a2;
      v209 = 2048;
      v210 = v67;
      v211 = 2048;
      v212 = v165 & 0x3FF;
      _os_log_error_impl(&dword_1B238B000, v69, OS_LOG_TYPE_ERROR, "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x3Eu);
    }

LABEL_73:
    v70 = _MDLogForCategoryDefault();
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_189;
    }

    *buf = 134218752;
    *&buf[4] = v34;
    *&buf[12] = 2048;
    *&buf[14] = v63;
    *&buf[22] = 2048;
    v206 = v12;
    v207 = 2048;
    v208 = v10;
    v43 = v70;
    v44 = "Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
    goto LABEL_75;
  }

  if (v171 && v177 && v171 < v177)
  {
    v68 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v171;
      *&buf[12] = 2048;
      *&buf[14] = v177;
      _os_log_error_impl(&dword_1B238B000, v68, OS_LOG_TYPE_ERROR, "Playback skipping sn: %lld mrsn: %lld", buf, 0x16u);
    }

    goto LABEL_107;
  }

  if (v15 <= -262275348)
  {
    if (v15 != -263323923)
    {
      v72 = -263258387;
      goto LABEL_110;
    }

    goto LABEL_111;
  }

  if (v15 != -262275347)
  {
    v72 = -260112659;
LABEL_110:
    if (v15 != v72)
    {
      v108 = _MDLogForCategoryDefault();
      v10 = a2;
      if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_186;
      }

      *buf = 134218496;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      *&buf[22] = 2048;
      v206 = (v63 + 12);
      v104 = v108;
      v105 = "Invalid journal entry, magic:0x%08lx, journalEntryOffset:%zu, journalEntrySize:%ld";
      v106 = 32;
      goto LABEL_127;
    }
  }

LABEL_111:
  if (v15 == -263258387 || v15 == -263323923)
  {
    v84 = 2 * *(v14 + 16);
  }

  else
  {
    v84 = *(v14 + 16);
  }

  v85 = *(v14 + 14);
  v86 = *(v14 + 20);
  v87 = *(v14 + 24);
  v89 = *(v14 + 28);
  v88 = *(v14 + 32);
  if (v65)
  {
    *buf = 0;
    v90 = v89;
    v91 = v87;
    v92 = v86;
    v93 = v84;
    v94 = v88;
    v95 = v85;
    v96 = v2_readVInt64_boundschecked(v168, -1, buf, &v203);
    v85 = v95;
    v88 = v94;
    v84 = v93;
    v86 = v92;
    v87 = v91;
    v89 = v90;
    v97 = *buf;
  }

  else
  {
    v97 = 0;
    v96 = 0;
  }

  v98 = (v85 & 0x7FFF) + (v165 >> 10) + (v165 & 0x3FF);
  v99 = v98 + v97 + v86 + (v84 >> 1) + v87 + v89 + v88 + 24;
  if (v63 != v99)
  {
    v103 = _MDLogForCategoryDefault();
    v10 = a2;
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_186;
    }

    *buf = 134218752;
    *&buf[4] = v63;
    *&buf[12] = 2048;
    *&buf[14] = v99;
    *&buf[22] = 2048;
    v206 = v12;
    v207 = 2048;
    v208 = (v63 + 12);
    v104 = v103;
    v105 = "Invalid journal entry, size:%ld, extraSize:%ld, journalEntryOffset:%zu, journalEntrySize:%ld";
    v106 = 42;
LABEL_127:
    _os_log_error_impl(&dword_1B238B000, v104, OS_LOG_TYPE_ERROR, v105, buf, v106);
    goto LABEL_186;
  }

  v174 = v96;
  v100 = v97 + v98;
  v10 = a2;
  if (v84 >= 2)
  {
    v166 = v86;
    v109 = v97;
    v110 = v84 >> 1;
    v102 = v168;
    if (_MDPlistContainerValidateRootObjectFromBytes(v168 + v100, v110, a3, a4, a5, a6, a7, a8))
    {
      memset(buf, 0, sizeof(buf));
      _MDPlistGetRootPlistObjectFromBytes(v168 + v100, v110, a3, a5, a6, a7, a8, buf);
      if (a3)
      {
        v111 = *(a3 + 16);
        v203 = *buf;
        v204 = *&buf[16];
        v101 = v111();
      }

      else
      {
        v101 = 1;
      }

      v86 = v166;
      v102 = v168;
      v100 += v110;
      v97 = v109;
    }

    else
    {
      v100 += v110;
      v101 = 1;
      v97 = v109;
      v86 = v166;
    }
  }

  else
  {
    v101 = 1;
    v102 = v168;
  }

  if (!v101 || !v86)
  {
LABEL_166:
    v121 = v177;
    if (v177 <= v171)
    {
      v121 = v171;
    }

LABEL_168:
    v177 = v121;
    if ((v101 & 1) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_189;
  }

  v167 = v97;
  memset(buf, 0, sizeof(buf));
  v203 = xmmword_1B23E40B8;
  v204 = 0xEF00000000;
  v122 = v86;
  if (!_MDPlistContainerValidateRootObjectFromBytes(v102 + v100, v86, a3, a4, a5, a6, a7, a8))
  {
    goto LABEL_186;
  }

  _MDPlistGetRootPlistObjectFromBytes(v102 + v100, v122, a3, a5, a6, a7, a8, &v203);
  v129 = v100 + v122;
  v130 = v87;
  if (v87 && _MDPlistContainerValidateRootObjectFromBytes(v102 + v129, v87, v123, v124, v125, v126, v127, v128))
  {
    v201 = 0uLL;
    v202 = 0;
    _MDPlistGetRootPlistObjectFromBytes(v102 + v129, v87, v123, v125, v126, v127, v128, &v201);
    v199 = v201;
    v200 = v202;
    if (_MDPlistGetPlistObjectType(&v199) == 240 && (v199 = v201, v200 = v202, _MDPlistArrayGetCount(&v199) == 2))
    {
      v199 = v201;
      v200 = v202;
      _MDPlistArrayGetPlistObjectAtIndex(&v199, 1, v123, v131, v125, v126, v127, v128, buf);
      v199 = *buf;
      v200 = *&buf[16];
      v132 = _MDPlistGetPlistObjectType(&v199) == 241;
    }

    else
    {
      v132 = 0;
    }

    v130 = v87;
  }

  else
  {
    v132 = 0;
  }

  v201 = 0uLL;
  v202 = 0;
  if (v89)
  {
    v199 = 0uLL;
    v200 = 0;
    _MDPlistGetRootPlistObjectFromBytes(v102 + v129 + v130, v89, v123, v125, v126, v127, v128, &v199);
    v197 = v199;
    v198 = v200;
    if (_MDPlistGetPlistObjectType(&v197) == 240)
    {
      v197 = v199;
      v198 = v200;
      if (_MDPlistArrayGetCount(&v197) == 2)
      {
        v197 = v199;
        v198 = v200;
        _MDPlistArrayGetPlistObjectAtIndex(&v197, 1, v133, v134, v135, v136, v137, v138, &v201);
      }
    }
  }

  v199 = v203;
  v200 = v204;
  if (_MDPlistGetPlistObjectType(&v199) != 240)
  {
    goto LABEL_186;
  }

  v199 = v203;
  v200 = v204;
  Count = _MDPlistArrayGetCount(&v199);
  if (a5)
  {
    if (!Count)
    {
      goto LABEL_186;
    }

    v140 = *(a5 + 16);
    v199 = v203;
    v200 = v204;
    v197 = *buf;
    v198 = *&buf[16];
    v195 = v201;
    v196 = v202;
    LOBYTE(v101) = v140(a5, v174, v102 + v167, &v199, &v197, &v195);
    goto LABEL_166;
  }

  if (!Count)
  {
LABEL_186:
    v62 = v177;
    if (v177 <= v171)
    {
      v62 = v171;
    }

    goto LABEL_188;
  }

  v141 = 0;
  v142 = Count;
  while (1)
  {
    v199 = 0uLL;
    v200 = 0;
    v197 = v203;
    v198 = v204;
    _MDPlistArrayGetPlistObjectAtIndex(&v197, v141, a3, a4, a5, a6, a7, a8, &v199);
    v197 = v199;
    v198 = v200;
    if (_MDPlistGetPlistObjectType(&v197) == 246)
    {
      *&v195 = 0;
      v197 = v199;
      v198 = v200;
      BytePtr = _MDPlistDataGetBytePtr(&v197, &v195);
      if (!_MDPlistContainerValidateRootObjectFromBytes(BytePtr, v195, v144, v145, v146, v147, v148, v149))
      {
        goto LABEL_186;
      }

      _MDPlistGetRootPlistObjectFromBytes(BytePtr, v195, a3, a5, a6, a7, a8, &v197);
      v199 = v197;
      v200 = v198;
    }

    v197 = v199;
    v198 = v200;
    if (_MDPlistGetPlistObjectType(&v197) == 240)
    {
      v197 = v199;
      v198 = v200;
      v150 = _MDPlistArrayGetCount(&v197);
      if ((v150 - 3) <= 1)
      {
        v151 = v150;
        v195 = v199;
        v196 = v200;
        _MDPlistArrayGetPlistObjectAtIndex(&v195, 1, a3, a4, a5, a6, a7, a8, &v197);
        if ((_MDPlistNumberGetIntValue(&v197) & 2) == 0)
        {
          v197 = 0uLL;
          v198 = 0;
          v195 = v199;
          v196 = v200;
          _MDPlistArrayGetPlistObjectAtIndex(&v195, 2, a3, a4, a5, a6, a7, a8, &v197);
          v195 = 0uLL;
          v196 = 0;
          v193 = v197;
          v194 = v198;
          if (_MDPlistDictionaryGetPlistObjectForKey(&v193, "_kMDItemExternalID", 18, &v195, v152, v153, v154, v155))
          {
            v192 = 0;
            v191 = 0;
            v193 = v195;
            v194 = v196;
            v156 = _MDPlistStringGetValue(&v193, &v192, &v191);
            v193 = 0uLL;
            v194 = 0;
            v189 = 0uLL;
            v190 = 0;
            if (v151 == 4)
            {
              v187 = v199;
              v188 = v200;
              _MDPlistArrayGetPlistObjectAtIndex(&v187, 3, a3, a4, a5, a6, a7, a8, &v193);
            }

            if (v132)
            {
              v187 = *buf;
              v188 = *&buf[16];
              _MDPlistDictionaryGetPlistObjectForKey(&v187, v156, -1, &v189, a5, a6, a7, a8);
            }

            if (a4)
            {
              v157 = *(a4 + 16);
              v187 = v195;
              v188 = v196;
              v185 = v197;
              v186 = v198;
              v183 = v193;
              v184 = v194;
              v181 = v189;
              v182 = v190;
              if ((v157() & 1) == 0)
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v142 == ++v141)
    {
      goto LABEL_186;
    }
  }

LABEL_211:
  result = 0;
LABEL_3:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistContainerValidateRootObjectFromBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = 0;
  v19[2] = a1;
  v19[3] = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0uLL;
  MDPlistGetRootPlistObjectFromBuffer(v19, &v18, a3, a5, a6, a7, a8, &v16);
  result = 0;
  if (!v18)
  {
    v14 = v16;
    v15 = v17;
    __MDPlistContainerCopyObjectErrorCode(0, &v14, 0, &v18, v8, v9, v10, v11);
    result = v18 == 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *_MDStoreOIDArrayCreate(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    v4 = &__block_literal_global_1;
  }

  else
  {
    v4 = &__block_literal_global_43;
  }

  v5 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9840];

  return _MDStoreOIDArrayCreateWithDeallocator(a1, a2, a3, v4);
}

void *_MDStoreOIDArrayCreateWithDeallocator(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v7 = __kMDStoreOIDArrayTypeID;
  if (__kMDStoreOIDArrayTypeID)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = _CFRuntimeRegisterClass();
    __kMDStoreOIDArrayTypeID = v7;
    if (a2)
    {
LABEL_3:
      Instance = _CFRuntimeCreateInstance();
      v9 = Instance;
      if (Instance)
      {
        *(Instance + 16) = a2;
        *(Instance + 32) = a3;
        *(Instance + 36) = a3;
        *(Instance + 24) = _Block_copy(a4);
      }

      goto LABEL_9;
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___MDStoreOIDArrayCreateWithDeallocator_block_invoke;
  v12[3] = &__block_descriptor_tmp_1;
  v12[4] = v7;
  if (_MDStoreOIDArrayCreateWithDeallocator_once != -1)
  {
    dispatch_once(&_MDStoreOIDArrayCreateWithDeallocator_once, v12);
  }

  v9 = &_MDStoreOIDArrayCreateWithDeallocator_emptyValue;
  CFRetain(&_MDStoreOIDArrayCreateWithDeallocator_emptyValue);
LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t MDJournalReaderProcessRecordBatchWithBytes(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v14[5] = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3 <= a2)
  {
    if (a5)
    {
      v9 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __MDJournalReaderProcessRecordBatchWithBytes_block_invoke;
      v14[3] = &unk_1E7B25A78;
      v14[4] = a5;
      if (a4)
      {
LABEL_6:
        v10 = v13;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 0x40000000;
        v13[2] = __MDJournalReaderProcessRecordBatchWithBytes_block_invoke_2;
        v13[3] = &unk_1E7B25AA0;
        v13[4] = a4;
LABEL_9:
        v8 = parse_mobile_journal(a1 + a3, a2, v9, 0, v10, 0, a7, a8);
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t v2_readVInt64_boundschecked(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  *a4 = 1;
  v4 = *a3;
  if (*a3 == a2)
  {
    goto LABEL_2;
  }

  v7 = v4 + 1;
  v8 = (a1 + v4);
  v9 = *(a1 + v4);
  result = *(a1 + v4);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_4:
    *a4 = 0;
    *a3 = v7;
    goto LABEL_5;
  }

  v11 = v9;
  v12 = ~v4 + a2;
  if (v11 > 0xBF)
  {
    if (v11 > 0xDF)
    {
      if (v11 > 0xEF)
      {
        if (v11 > 0xF7)
        {
          if (v11 > 0xFB)
          {
            if (v11 > 0xFD)
            {
              if (v11 == 255)
              {
                if (v12 >= 8)
                {
                  result = *(a1 + v7);
                  v7 = v4 + 9;
                  goto LABEL_4;
                }
              }

              else if (v12 >= 7)
              {
                result = (*(a1 + v7) << 48) | (v8[2] << 40) | (v8[3] << 32) | (v8[4] << 24) | (v8[5] << 16) | (v8[6] << 8) | v8[7];
                v7 = v4 + 8;
                goto LABEL_4;
              }
            }

            else if (v12 >= 6)
            {
              result = ((result & 1) << 48) | (*(a1 + v7) << 40) | (v8[2] << 32) | (v8[3] << 24) | (v8[4] << 16) | (v8[5] << 8) | v8[6];
              v7 = v4 + 7;
              goto LABEL_4;
            }
          }

          else if (v12 >= 5)
          {
            result = ((result & 3) << 40) | (*(a1 + v7) << 32) | (v8[2] << 24) | (v8[3] << 16) | (v8[4] << 8) | v8[5];
            v7 = v4 + 6;
            goto LABEL_4;
          }
        }

        else if (v12 >= 4)
        {
          result = ((result & 7) << 32) | (*(a1 + v7) << 24) | (v8[2] << 16) | (v8[3] << 8) | v8[4];
          v7 = v4 + 5;
          goto LABEL_4;
        }
      }

      else if (v12 >= 3)
      {
        result = ((result & 0xF) << 24) | (*(a1 + v7) << 16) | (v8[2] << 8) | v8[3];
        v7 = v4 + 4;
        goto LABEL_4;
      }
    }

    else if (v12 >= 2)
    {
      result = ((result & 0x1F) << 16) | (*(a1 + v7) << 8) | v8[2];
      v7 = v4 + 3;
      goto LABEL_4;
    }
  }

  else if (v12)
  {
    v13 = *(a1 + v7) | ((result & 0x3F) << 8);
    v7 = v4 + 2;
    result = v13;
    goto LABEL_4;
  }

LABEL_2:
  result = 0;
LABEL_5:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void _MDStoreOIDArrayApplyBlockParallel()
{
  OUTLINED_FUNCTION_0_2();
  v16 = *MEMORY[0x1E69E9840];
  v4 = qos_class_self();
  global_queue = dispatch_get_global_queue(v4, 0);
  v6 = dispatch_group_create();
  if (*(v0 + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 16);
  }

  if (v3 < v2)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(v7 + 8 * v3);
      if (WORD1(v9) - 4078 <= 0xFFFFFAEE)
      {
        break;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___MDStoreOIDArrayApplyBlockParallel_block_invoke;
      block[3] = &unk_1E7B25658;
      v10 = v9 + 1;
      v15 = WORD1(v9);
      block[4] = v1;
      block[5] = v7;
      block[6] = v3;
      block[7] = v10;
      v13 = HIDWORD(v9);
      v14 = v8;
      dispatch_group_async(v6, global_queue, block);
      ++v8;
      v3 += v10;
      if (v3 >= v2)
      {
        goto LABEL_9;
      }
    }

    CFShow(@"MDStoreOIDArrayApplyBlock encountered invalid opcode:");
    CFShow(v0);
  }

LABEL_9:
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v6);
  v11 = *MEMORY[0x1E69E9840];
}

CFMutableDictionaryRef copyCFDictionary(CFAllocatorRef allocator, __int128 *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __copyCFDictionary_block_invoke;
  v17[3] = &__block_descriptor_tmp_67;
  v17[4] = a4;
  v17[5] = allocator;
  v18 = a3;
  v17[6] = Mutable;
  v15 = *a2;
  v16 = *(a2 + 2);
  _MDPlistDictionaryIterateWithError(&v15, a4, v17, a4, a5, a6, a7, a8);
  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t __MDJournalReaderProcessRecordBatchWithBytes_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v14 = *a4;
  v15 = *(a4 + 2);
  v12 = *a5;
  v13 = *(a5 + 2);
  v10 = *a6;
  v11 = *(a6 + 2);
  v7(v6, a2, a3);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t _MDPlistNumberGetIntValue(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 20);
  v3 = (a1 + 16);
  if ((v2 & 0xFE) != 0xE2)
  {
    v3 = (*a1 + *(a1 + 16));
  }

  result = 0;
  if (v2 <= 224)
  {
    if (v2 == 35)
    {
      result = *v3;
    }

    else if (v2 == 51)
    {
      result = *v3;
    }
  }

  else
  {
    switch(v2)
    {
      case 227:
        result = *v3;
        break;
      case 226:
        result = *v3;
        break;
      case 225:
        result = *v1 != 0;
        break;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPlistStringGetValue(uint64_t a1, void *a2, int *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = *(*a1 + *(a1 + 16)) - (*(a1 + 20) == 244);
  }

  if (a3)
  {
    if (*(a1 + 20) == 245)
    {
      v3 = 256;
    }

    else
    {
      v3 = 134217984;
    }

    *a3 = v3;
  }

  v4 = *MEMORY[0x1E69E9840];
  return *a1 + *(a1 + 16) + 4;
}

CFStringRef MDPropertyCopyUserTagName(CFStringRef theString, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  if (!theString)
  {
    goto LABEL_7;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    goto LABEL_7;
  }

  v5 = Length;
  location = CFStringFind(theString, @"\n", 0).location;
  if (location != -1)
  {
    v7 = location;
    if (location)
    {
      v15.location = 0;
      v15.length = location;
      v8 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v15);
      if (a2 && v7 + 2 == v5)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v5 - 1);
        if ((CharacterAtIndex - 49) <= 6)
        {
          *a2 = CharacterAtIndex - 48;
        }
      }

      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
LABEL_8:
    v9 = *MEMORY[0x1E69E9840];
    return v8;
  }

  v11 = *MEMORY[0x1E69E9840];

  return CFRetain(theString);
}

void term_expansions_release(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = atomic_load(a1), v2 != -1) && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    if (*(a1 + 4))
    {
      v3 = 0;
      do
      {
        free(*(*(a1 + 16) + 8 * v3++));
      }

      while (v3 < *(a1 + 4));
    }

    free(*(a1 + 16));
    v4 = *MEMORY[0x1E69E9840];

    free(a1);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }
}

void _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&qword_1ED6F3F60, &__block_literal_global_18);
}

CFTypeRef PBCopyCopyObjectCustomRetainCallback(uint64_t a1, const void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (pthread_getspecific(qword_1ED6F3F68))
  {
    v3 = *MEMORY[0x1E69E9840];
    return a2;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return CFRetain(a2);
  }
}

void _MDLogForCategoryDefault_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&_MDLogForCategoryDefault_onceToken, &__block_literal_global_3);
}

BOOL _MDPlistBooleanGetValue(uint64_t a1)
{
  result = *(a1 + 16) != 0;
  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void PBCopyCopyObjectCustomReleaseCallback(uint64_t a1, const void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (pthread_getspecific(qword_1ED6F3F68))
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    CFRelease(a2);
  }
}

uint64_t __tracing_dispatch_sync_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

void tracing_dispatch_sync()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  v1 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __tracing_dispatch_sync_block_invoke;
  block[3] = &unk_1E7B255C8;
  block[4] = v2;
  dispatch_sync(v3, block);
  v4 = *MEMORY[0x1E69E9840];
}

void si_tracing_log_span_begin()
{
  v1 = *MEMORY[0x1E69E9840];
  if (init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }

  v0 = *MEMORY[0x1E69E9840];
}

unint64_t si_tracing_calc_next_spanid()
{
  v3 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&next_spanid, 1uLL, memory_order_relaxed);
  v1 = *MEMORY[0x1E69E9840];
  return add_explicit + 1;
}

void si_tracing_log_span_end(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a1 && init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t _MDPlistContainerCopyRootObject(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0uLL;
  v18 = 0;
  MDPlistGetRootPlistObjectFromBuffer(a2 + 32, 0, a3, a5, a6, a7, a8, &v17);
  v15 = v17;
  v16 = v18;
  result = __MDPlistContainerCopyObjectErrorCode(a1, &v15, 0, 0, v9, v10, v11, v12);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MDPlistBytesAddObject(uint64_t a1, const __CFString *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1ED6F3F70 != -1)
  {
    v32 = a2;
    __MDPlistBytesAddObject_cold_1();
    a2 = v32;
  }

  v3 = *MEMORY[0x1E695E738];
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *MEMORY[0x1E695E738];
  }

  v5 = CFGetTypeID(v4);
  if (v5 == qword_1ED6F3F78)
  {
    v6 = *MEMORY[0x1E69E9840];

    return _MDPlistBytesAddString(a1, v4);
  }

  if (v5 == qword_1ED6F3F80)
  {
    Count = CFArrayGetCount(v4);
    result = _MDPlistBytesBeginContainer(a1, 10);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        while (!result)
        {
          result = 0;
          if (Count == ++i)
          {
            goto LABEL_16;
          }
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        result = __MDPlistBytesAddObject(a1, ValueAtIndex) != 0;
      }
    }

LABEL_16:
    if (!result)
    {
      goto LABEL_22;
    }

    v11 = _MDPlistBytesEndArray(a1);
    goto LABEL_21;
  }

  if (v5 == qword_1ED6F3F88)
  {
    context = *&a1;
    v36 = _MDPlistBytesBeginContainer(a1, 13);
    CFDictionaryApplyFunction(v4, dictionaryApplier, &context);
    if (v36)
    {
      v11 = _MDPlistBytesEndDictionary(a1);
LABEL_21:
      result = v11;
LABEL_22:
      v12 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_47:
    result = 0;
    goto LABEL_22;
  }

  if (v5 == qword_1ED6F3F90)
  {
    v13 = CFEqual(v4, *MEMORY[0x1E695E4D0]);
    v14 = *MEMORY[0x1E69E9840];

    return _MDPlistBytesAddBoolean(a1, v13);
  }

  if (v5 == qword_1ED6F3F98)
  {
    v15 = MEMORY[0x1B2747B00](v4);
    result = _MDPlistBytesAddRLETagRoom(a1, 0x86u, 1u);
    if (!result)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  if (v5 == qword_1ED6F3FA0)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    v20 = *MEMORY[0x1E69E9840];

    return _MDPlistBytesAddData(a1, BytePtr, Length);
  }

  else
  {
    if (v5 == qword_1ED6F3FA8)
    {
      while (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
      {
        if (*(a1 + 80) >= 1)
        {
          v28 = *MEMORY[0x1E69E9840];

          return _MDPlistBytesAddRLETagRoom(a1, 0, 0);
        }

        v21 = *(a1 + 104);
        if (v21 + 8 < *(a1 + 112))
        {
          goto LABEL_42;
        }

        if (_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
        {
          v21 = *(a1 + 104);
LABEL_42:
          v22 = *MEMORY[0x1E69E9AC8];
          v23 = -*MEMORY[0x1E69E9AC8];
          if ((((v21 + 8) ^ v21) & v23) != 0 && (((v21 + 8) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v24 = 16 << *MEMORY[0x1E69E9AC0];
            if (v24 >= 4 * v22)
            {
              madvise(((v22 - 1 + v21) & v23), v24, 3);
              v21 = *(a1 + 104);
            }
          }

          *v21 = 0x100000001;
          v17 = (v21 + 8);
          goto LABEL_30;
        }
      }

      goto LABEL_47;
    }

    if (v5 == qword_1ED6F3FB0)
    {
      if (!CFNumberIsFloatType(v4))
      {
        context = 0.0;
        CFNumberGetValue(v4, kCFNumberSInt64Type, &context);
        v29 = context;
        result = _MDPlistBytesAddRLETagRoom(a1, 0x84u, 1u);
        if (!result)
        {
          goto LABEL_22;
        }

        v30 = *(a1 + 104);
        *v30 = v29;
        v17 = v30 + 1;
        goto LABEL_30;
      }

      context = 0.0;
      CFNumberGetValue(v4, kCFNumberFloat64Type, &context);
      v15 = context;
      result = _MDPlistBytesAddRLETagRoom(a1, 0x85u, 1u);
      if (!result)
      {
        goto LABEL_22;
      }

LABEL_29:
      v16 = *(a1 + 104);
      *v16 = v15;
      v17 = v16 + 1;
LABEL_30:
      *(a1 + 104) = v17;
      result = 1;
      goto LABEL_22;
    }

    if (v5 == qword_1ED6F3FB8)
    {
      v25 = CFUUIDGetUUIDBytes(v4);
      v26 = *MEMORY[0x1E69E9840];

      return _MDPlistBytesAddUUID(a1, *&v25.byte0, *&v25.byte8);
    }

    else if (v5 == qword_1ED6F3FC0)
    {
      v27 = *MEMORY[0x1E69E9840];

      return __MDPlistBytesAddURL(a1, v4);
    }

    else if (v5 == qword_1ED6F3FC8)
    {
      v31 = *MEMORY[0x1E69E9840];

      return _MDPlistBytesAddPlistBytes(a1, v4);
    }

    else
    {
      if (v5 != qword_1ED6F3FD0)
      {
        v34 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __MDPlistBytesAddObject_cold_2();
        }

        result = _MDPlistBytesAddRLETagRoom(a1, 0, 0);
        goto LABEL_22;
      }

      v33 = *MEMORY[0x1E69E9840];

      return _MDPlistBytesAddStoreOIDArray(a1, v4);
    }
  }
}

BOOL _MDPlistBytesAddString(uint64_t a1, CFStringRef theString)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*(a1 + 80) <= 0)
  {
    *(a1 + 32) = 2577;
    v8 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddString_cold_2();
      result = 0;
    }
  }

  else
  {
    Length = CFStringGetLength(theString);
    FastestEncoding = CFStringGetFastestEncoding(theString);
    v10 = 0;
    usedBufLen[0] = 0;
    if (FastestEncoding != 256 && FastestEncoding != 335544576 && FastestEncoding != 268435712)
    {
      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(theString, v14, 0x8000100u, 0x20u, 1u, 0, 0, usedBufLen);
      if (!addStringBytes(a1, 12, &v10, usedBufLen[0]))
      {
        __MDPlistBytesError(a1, "_MDPlistBytesAddString", "Encoding", 2621);
        result = 0;
        goto LABEL_4;
      }

      v15.location = 0;
      v15.length = Length;
      CFStringGetBytes(theString, v15, 0x8000100u, 0x20u, 1u, v10, usedBufLen[0], usedBufLen);
      goto LABEL_18;
    }

    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(theString, v12, 0x100u, 0x20u, 1u, 0, 0, usedBufLen);
    if (addStringBytes(a1, 28, &v10, usedBufLen[0]))
    {
      v13.location = 0;
      v13.length = Length;
      CFStringGetBytes(theString, v13, 0x100u, 0x20u, 1u, v10, usedBufLen[0], usedBufLen);
LABEL_18:
      result = 1;
      goto LABEL_4;
    }

    if (*(a1 + 32))
    {
LABEL_3:
      result = 0;
      goto LABEL_4;
    }

    *(a1 + 32) = 2598;
    v9 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddString_cold_1();
      result = 0;
    }
  }

LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _MDPlistBytesAddInternedCString(uint64_t a1, void *key, int a3)
{
  keya[1] = *MEMORY[0x1E69E9840];
  keya[0] = key;
  while (1)
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2659;
      v13 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (result)
      {
        _MDPlistBytesAddInternedCString_cold_2();
        result = 0;
      }

      goto LABEL_23;
    }

    Value = CFDictionaryGetValue(*(a1 + 96), key);
    if (!Value)
    {
      break;
    }

    v7 = Value;
    v8 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
    *(*(a1 + 48) + 8 * v8) += 0x100000000;
    v9 = *(a1 + 104);
    if ((v9 + 1) < *(a1 + 112))
    {
      goto LABEL_9;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
    {
      v9 = *(a1 + 104);
LABEL_9:
      v10 = *MEMORY[0x1E69E9AC8];
      v11 = -*MEMORY[0x1E69E9AC8];
      if ((((v9 + 1) ^ v9) & v11) != 0 && (((v9 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v12 = 16 << *MEMORY[0x1E69E9AC0];
        if (v12 >= 4 * v10)
        {
          madvise(((v9 + v10 - 1) & v11), v12, 3);
          v9 = *(a1 + 104);
        }
      }

      *v9 = (v7 << 32) | 0x2000001;
      *(a1 + 104) = v9 + 1;
LABEL_19:
      result = 1;
      goto LABEL_23;
    }
  }

  if (a3 == -1)
  {
    v16 = strlen(key);
    v15 = addStringBytes(a1, 12, keya, v16);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = addStringBytes(a1, 12, keya, a3);
    if (v15)
    {
LABEL_18:
      CFDictionarySetValue(*(a1 + 96), keya[0], v15);
      goto LABEL_19;
    }
  }

  if (*(a1 + 32))
  {
LABEL_22:
    result = 0;
  }

  else
  {
    *(a1 + 32) = 2667;
    v18 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddInternedCString_cold_1();
      result = 0;
    }
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

int *_MDPlistContainerAddBoolean(uint64_t a1, CFBooleanRef BOOLean, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  Value = CFBooleanGetValue(BOOLean);
  v10 = *MEMORY[0x1E69E9840];

  return _addInlineData(a1, 225, Value, a3, v6, v7, v8, v9);
}

void _MDPlistContainerAddURL(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  if (v8 <= 1)
  {
    _MDPlistContainerAddURL_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 144) + 24 * v8;
  if (*(v10 - 24) == 241 && (*(v10 - 20) & 1) == 0)
  {
    _MDPlistContainerAddURL_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  ++*(v10 - 20);
  v14 = *(a1 + 32);
  v15 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (!v15)
  {
    v22 = 1;
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v16 = CFURLGetBaseURL(a2);
  v17 = *MEMORY[0x1E695E480];
  if (v16)
  {
    v18 = CFURLCreateData(*MEMORY[0x1E695E480], v16, 0x8000100u, 0);
    v19 = CFURLCreateData(v17, a2, 0x8000100u, 0);
    if (v18)
    {
      v20 = 0;
      v21 = CFDataGetLength(v18) + 8;
      goto LABEL_14;
    }
  }

  else
  {
    v19 = CFURLCreateData(*MEMORY[0x1E695E480], a2, 0x8000100u, 0);
    v18 = 0;
  }

  v20 = 1;
  v21 = 8;
LABEL_14:
  v23 = CFDataGetLength(v19) + v21;
  v24 = MDPlistBufferConsume(a1, a1 + 32, v23 + 4);
  v22 = v24 == 0;
  if (v24)
  {
    v25 = v24;
    *v24 = v23;
    if (v20)
    {
      v24[1] = 0;
      v26 = (v24 + 2);
    }

    else
    {
      v24[1] = CFDataGetLength(v18);
      v27 = (v25 + 2);
      v33.length = CFDataGetLength(v18);
      v33.location = 0;
      CFDataGetBytes(v18, v33, v27);
      v26 = &v27[CFDataGetLength(v18)];
      CFRelease(v18);
    }

    *v26 = CFDataGetLength(v19);
    v34.length = CFDataGetLength(v19);
    v34.location = 0;
    CFDataGetBytes(v19, v34, v26 + 4);
  }

  CFRelease(v19);
  *v15 = v14;
  *(v15 + 4) = -9;
  if (a3)
  {
LABEL_20:
    if (v15)
    {
      v28 = v22;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      v29 = &gNullObjectReference;
    }

    else
    {
      v29 = v15;
    }

    v30 = *v29;
    *(a3 + 4) = *(v29 + 4);
    *a3 = v30;
  }

LABEL_27:
  v31 = *MEMORY[0x1E69E9840];
}

_DWORD *_MDPlistContainerAddDoubleValue(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11[1] = *MEMORY[0x1E69E9840];
  *v11 = a3;
  result = _addGenericData(a1, 1, 51, v11, 8uLL, a2, a8, a9);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFURLRef copyCFURL(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = (*a2 + *(a2 + 16));
  v9 = *v8;
  if (v9 <= 7)
  {
    copyCFURL_cold_3(allocator, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(v8 + 1);
  if (v10 + 8 > v9)
  {
    copyCFURL_cold_2(allocator, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = allocator;
  v12 = v8 + 8;
  if (v10)
  {
    allocator = CFURLCreateWithBytes(allocator, v8 + 8, *(v8 + 1), 0x8000100u, 0);
    v13 = allocator;
    v12 += v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = *v12;
  if (v10 + 8 + v14 > v9)
  {
    copyCFURL_cold_1(allocator, a2, v14, a4, a5, a6, a7, a8);
  }

  v15 = CFURLCreateWithBytes(v11, v12 + 4, v14, 0x8000100u, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t icu_search_context_is_fuzzy(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 69);
  }

  else
  {
    v1 = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  return v1 & 1;
}

_MDPlistBytes *_MDPlistBytesCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = [_MDPlistBytes alloc];
    if (a4)
    {
      v8 = &__block_literal_global_108;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(_MDPlistBytes *)v7 initWithByteVector:a2 count:a3 trusted:0 deallocator:v8];
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v11 = *MEMORY[0x1E69E9840];
    return v10;
  }

  else
  {
    if (qword_1ED6F3FE0 != -1)
    {
      +[_MDPlistBytes enumerateObjectsFromPlistBytes:count:shouldDeallocate:usingBlock:];
    }

    v13 = qword_1ED6F3FD8;
    v14 = *MEMORY[0x1E69E9840];

    return CFRetain(v13);
  }
}

BOOL __MDPlistBytesValidate(uint64_t a1)
{
  *&v30[5] = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) + 8);
  *(a1 + 40) = v2;
  v3 = *(a1 + 16) >> 3;
  while (1)
  {
    v4 = *v2;
    v3 += ~*v2;
    if (v3 < 0)
    {
LABEL_49:
      result = 0;
      *(a1 + 32) = 575;
      v26 = *MEMORY[0x1E69E9840];
      return result;
    }

    v5 = HIDWORD(v4);
    if (SHIDWORD(v4) >= v4 || SHIDWORD(v4) < 2)
    {
      v7 = 474;
LABEL_20:
      *(a1 + 32) = v7;
      goto LABEL_21;
    }

    v8 = v2[v5];
    if ((v8 & 0xFF000000) != 0x88000000)
    {
      v7 = 481;
      goto LABEL_20;
    }

    v9 = v8 & 0xFFFFFF;
    if ((v8 & 0xFFFFFF) + HIDWORD(v4) != v4)
    {
      v7 = 487;
      goto LABEL_20;
    }

    v28 = v2[v5];
    Mutable = CFSetCreateMutable(0, 0, 0);
    v11 = *(a1 + 40);
    v12 = 1;
    do
    {
      v13 = *(v11 + 8 * v12) & 0xFFFFFF;
      if (!v13)
      {
        break;
      }

      CFSetAddValue(Mutable, v12);
      v11 = *(a1 + 40);
      v14 = *(v11 + 8 * v12);
      if ((v14 & 0xFF000000) == 0x2000000)
      {
        v15 = 502;
        if (v14 < 0 || v9 <= SHIDWORD(v14))
        {
          goto LABEL_43;
        }
      }

      v12 += v13;
    }

    while (v12 < SHIDWORD(v4));
    if (v12 == HIDWORD(v4))
    {
      if (v9 >= 2)
      {
        v17 = v28 & 0xFFFFFF;
        v18 = &v2[v5 - 1 + v17];
        for (i = v17 + 1; i > 2; --i)
        {
          v21 = *v18--;
          v20 = v21;
          v22 = v21 & 0xFF000000;
          if (BYTE3(v21) < 3u || v22 == -2013265920)
          {
            v15 = 523;
            goto LABEL_43;
          }

          if ((v20 & 0xFFFFFF) < SHIDWORD(v4))
          {
            if (!CFSetContainsValue(Mutable, (v20 & 0xFFFFFF)))
            {
              v15 = 534;
              goto LABEL_43;
            }
          }

          else
          {
            if (HIDWORD(v20))
            {
              v24 = 0;
            }

            else
            {
              v24 = (v20 & 0xFFFFFF) <= SHIDWORD(v4);
            }

            if (!v24)
            {
              v15 = 540;
              goto LABEL_43;
            }
          }
        }
      }

      CFRelease(Mutable);
      goto LABEL_23;
    }

    v15 = 510;
LABEL_43:
    *(a1 + 32) = v15;
    if (Mutable)
    {
      CFRelease(Mutable);
      if (!*(a1 + 32))
      {
        v7 = 551;
        goto LABEL_20;
      }
    }

LABEL_21:
    v16 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __MDPlistBytesValidate_cold_1(buf, v30, v16);
    }

LABEL_23:
    if (!v3)
    {
      break;
    }

    v2 = (*(a1 + 40) + 8 * v4 + 8);
    *(a1 + 40) = v2;
    if (v2 - *(a1 + 8) >= *(a1 + 16) - 8 || *(a1 + 32))
    {
      goto LABEL_49;
    }
  }

  result = *(a1 + 32) == 0;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_MDPlistBytesCopyPlistAtIndex(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];

  return _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(v5, a1, a2, &_kMDPlistBytesDeserializationCallbacks, 0);
}

_DWORD *_MDPlistContainerAddInt64Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  result = _addGenericData(a1, 1, 35, v10, 8uLL, a3, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

int *_MDPlistContainerAddNullValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];

  return _addInlineData(a1, 224, 0, a2, a5, a6, a7, a8);
}

uint64_t _SILogForLogForCategory(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (_SILogForLogForCategory_onceToken != -1)
  {
    dispatch_once(&_SILogForLogForCategory_onceToken, &__block_literal_global_120);
  }

  result = gSILogArray[a1];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void storageWindowsClose(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    v5 = 2 * (dword_1EB7ABB10 < 4);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16) * 100.0 / v6;
      v10[0] = 67109376;
      v10[1] = v6 >> 10;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_1B238B000, v4, v5, "Memsize: %uKB %f%% used", v10, 0x12u);
    }

    *__error() = v3;
    fd_release(v2);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 40) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void storageWindowsInit(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, char a6, void *aBlock)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 36) = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 1;
  *(a1 + 37) = a6;
  if (aBlock)
  {
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = 26;
  v9 = *MEMORY[0x1E69E9840];

  bzero((a1 + 56), 0x1000uLL);
}

void storageWindowRelease(atomic_uint **a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(v2 + 4);
      if (v3)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __storageWindowDestroy_block_invoke;
        v5[3] = &__block_descriptor_tmp_18;
        v5[4] = v2;
        (*(v3 + 16))(v3, v5);
      }

      else
      {
        storageWindowDestroyImmediate(v2);
      }
    }

    *a1 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
}

void storageWindowsUnmap(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = a1 + 56;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          storageWindowDestroyImmediate(v5);
        }

        *(v4 + 8 * v3) = 0;
        v1 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 < v1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void *storageWindowSync(void *result, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result && (v2 = result, (result = result[1]) != 0) && (v2[5] & 1) == 0)
  {
    v6 = v2 + 2;
    v4 = v2[2];
    v5 = v6[1];
    if (a2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 16;
    }

    v8 = *MEMORY[0x1E69E9840];

    return fd_msync(result, v5 - v4, v7, 1);
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  return result;
}

int *storageWindowsSync(int *result, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result[8] >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 14;
    do
    {
      result = storageWindowSync(v5[v4++], a2);
    }

    while (v4 < v3[8]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _windowsMapInit(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a1 + 56;
  while (1)
  {
    v7 = *(a1 + 8);
    if (v5 >= v7)
    {
      break;
    }

    v8 = *(v6 + 8 * v4);
    v9 = *(a1 + 48);
    v10 = 1 << v9;
    if (v4)
    {
      if (v7 <= (v9 > 1))
      {
        _windowsMapInit_cold_1();
      }

      *(a1 + 32) = v4 + 1;
      if (v7 <= v10)
      {
        _windowsMapInit_cold_2();
      }

      v5 = (v4 + 1) << v9;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v7 >= v10)
      {
        v7 = 1 << v9;
      }

      if (*(a1 + 37))
      {
        v5 = 1 << v9;
      }

      else
      {
        v5 = v7;
      }

      *(a1 + 32) = 1;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v11 = *(a1 + 36);
    v12 = *(a1 + 40);
    v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
    atomic_store(1u, v8);
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 40) = v11;
    *(v8 + 3) = 0;
    *(v8 + 4) = v12;
    *(v6 + 8 * v4) = v8;
    __dmb(0xBu);
LABEL_8:
    if (!*(v8 + 1))
    {
      _initWindow(v8, a1, v4 << v9, v5, a2);
    }

    if (++v4 == 512)
    {
      v7 = *(a1 + 8);
      break;
    }
  }

  if (v7 <= 1 << *(a1 + 48) && *(a1 + 32) >= 2)
  {
    _windowsMapInit_cold_3();
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

BOOL _initWindow(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  if (v5)
  {
    v6 = v5 == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 || a1[1])
  {
    _initWindow_cold_1();
  }

  if (*(a2 + 37) == 1 && !((a4 - a3) >> *(a2 + 48)))
  {
    _initWindow_cold_3();
  }

  a1[2] = a3;
  if (*(a2 + 8) < a3)
  {
    _initWindow_cold_2();
  }

  v10 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= ((*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    v10 = (*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
  }

  a1[3] = v10 + a4;
  *(a2 + 36);
  v11 = fd_mmap(*a2);
  a1[1] = v11;
  if (v11 == -1)
  {
    v12 = *__error();
    a1[1] = 0;
    if (a5)
    {
      if (v12 != 1)
      {
        v13 = mmap(0, 4uLL, 0, 4098, -50331648, 0);
        a1[1] = v13;
        if (v13 == -1)
        {
          __message_assert("%s:%u: failed assertion '%s' %s mmap(%p, offset: %llx, size: %lld) error:%d, fSize:%lld", "storage_window.c", 399, "false", "", a2, 0, a1[3] - a1[2], v12, *(a2 + 16));
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        *(a1 + 1) = xmmword_1B23E0AE0;
        *v13 = 1;
      }
    }
  }

  result = v11 != -1;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void __message_assert(char *a1, ...)
{
  va_start(va, a1);
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  va_copy(&v2[1], va);
  vasprintf(v2, a1, va);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = v2[0];
    _os_log_error_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v2[0]);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t _moveWindowsInner(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, uint64_t a6, char a7)
{
  *(&v91[1] + 4) = *MEMORY[0x1E69E9840];
  v11 = a1 + 56;
  v12 = a3 + a2;
  v13 = MEMORY[0x1E69E9AC8];
  v14 = MEMORY[0x1E69E9AB8];
  a4.n128_u64[0] = 134219520;
  a5.n128_u64[0] = 134217984;
LABEL_2:
  v15 = a2 >> *(a1 + 48);
  if ((a7 & 1) == 0)
  {
    if (a2 && *(a1 + 16) <= a2)
    {
      __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%llx, freeRegion: 0x%llx", a4.n128_f64[0], a5.n128_f64[0]);
      goto LABEL_88;
    }

    if (v15 < *(a1 + 32))
    {
      v16 = *(v11 + 8 * v15);
      if (v16)
      {
        v17 = v16[1];
        if ((v17 + 1) >= 2)
        {
          v18 = v16[2];
          if (v18 <= a2 && v16[3] >= v12)
          {
            goto LABEL_86;
          }
        }
      }
    }
  }

  v81 = (*v13 + *(a1 + 8)) & ~*v14;
  v80 = v15 + 1;
  lock = (&windowLock + 4 * v15);
  v78 = a4;
  v79 = a5;
  while (1)
  {
    if (v15 >= *(a1 + 32))
    {
      v51 = *__error();
      v52 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v79.n128_u32[0];
        *&buf[4] = v15;
        _os_log_impl(&dword_1B238B000, v52, OS_LOG_TYPE_DEFAULT, "3: %lld", buf, 0xCu);
      }

      *__error() = v51;
      v53 = *(a1 + 32);
      if (v15 >= v53)
      {
        v54 = v53;
        do
        {
          os_unfair_lock_lock(&windowLock + v54);
          if (v53 == *(a1 + 32))
          {
            if (!*(v11 + 8 * v54))
            {
              v55 = *(a1 + 36);
              v75 = *(a1 + 40);
              v56 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
              atomic_store(1u, v56);
              *(v56 + 1) = 0;
              *(v56 + 2) = 0;
              *(v56 + 40) = v55;
              *(v56 + 3) = 0;
              *(v56 + 4) = v75;
              v57 = *(a1 + 48);
              v58 = (*MEMORY[0x1E69E9AC8] + ((1 << v57) >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
              v59 = v15 << v57;
              v60 = v80 << v57;
              if (*MEMORY[0x1E69E9AC8] > v58)
              {
                v58 = *MEMORY[0x1E69E9AC8];
              }

              *(v56 + 2) = v59;
              *(v56 + 3) = v58 + v60;
              *(v11 + 8 * v54) = v56;
              v53 = *(a1 + 32);
            }

            *(a1 + 32) = v53 + 1;
          }

          os_unfair_lock_unlock(&windowLock + v54);
          v53 = *(a1 + 32);
          v54 = v53;
        }

        while (v15 >= v53);
      }

      v34 = *(v11 + 8 * v15);
      if (!v34[2])
      {
        v34[2] = v15 << *(a1 + 48);
      }

      v35 = (&windowLock + 4 * v15);
    }

    else
    {
      if (dword_1EB7ABB10 >= 5)
      {
        _moveWindowsInner_cold_1(&v90, v15, v91);
      }

      v19 = *(v11 + 8 * v15);
      if (v19)
      {
        v17 = v19[1];
        if ((v17 + 1) >= 2)
        {
          v18 = v19[2];
          if (v18 <= a2 && v19[3] >= v12 && !((*(a1 + 8) < v12) | a7 & 1))
          {
            goto LABEL_86;
          }
        }

        v20 = v19[3] - v19[2];
      }

      else
      {
        v20 = 0;
        v17 = 0;
      }

      os_unfair_lock_lock(lock);
      v29 = *(v11 + 8 * v15);
      if (v29)
      {
        v30 = v29[1];
        if ((v30 + 1) >= 2)
        {
          v45 = v29[2];
          v44 = v29[3];
          if (v20 != v44 - v45 || v20 >> *(a1 + 48) || v17 != v30 || v45 <= a2 && v44 >= v12 && *(a1 + 8) >= v12)
          {
            os_unfair_lock_unlock(lock);
            a7 = 0;
            v13 = MEMORY[0x1E69E9AC8];
            v14 = MEMORY[0x1E69E9AB8];
            a4 = v78;
            a5 = v79;
            goto LABEL_2;
          }

          if (*(a1 + 37) == 1)
          {
            si_analytics_log(v21, v22, v23, v24, v25, v26, v27, v28, v29);
          }
        }
      }

      v31 = *(a1 + 36);
      v32 = *(a1 + 40);
      v33 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
      v34 = v33;
      atomic_store(1u, v33);
      v33[1] = 0;
      v33[2] = 0;
      *(v33 + 40) = v31;
      v33[3] = 0;
      v33[4] = v32;
      if (v15)
      {
        v33[2] = v15 << *(a1 + 48);
      }

      v35 = (&windowLock + 4 * v15);
      if (v12)
      {
        v36 = *(a1 + 48);
        v37 = 1 << v36;
        v38 = v80 << v36;
        v39 = (*MEMORY[0x1E69E9AC8] + (v37 >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
        if (*MEMORY[0x1E69E9AC8] > v39)
        {
          v39 = *MEMORY[0x1E69E9AC8];
        }

        v40 = v39 + v38;
        v33[3] = v40;
        if (v40 > *(a1 + 8))
        {
          if (dword_1EB7ABB10 >= 5)
          {
            _moveWindowsInner_cold_2(&v88, v33 + 3, &v89);
          }

          if (*(a1 + 37))
          {
            v41 = *(a1 + 48);
            v42 = 1 << v41;
            v43 = v80 << v41;
          }

          else
          {
            v42 = *(a1 + 8);
            v43 = v42;
          }

          v46 = (*MEMORY[0x1E69E9AC8] + (v42 >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
          if (*MEMORY[0x1E69E9AC8] > v46)
          {
            v46 = *MEMORY[0x1E69E9AC8];
          }

          v34[3] = v46 + v43;
        }
      }

      if (!v34[2])
      {
        v34[2] = v15 << *(a1 + 48);
      }

      *buf = *(v11 + 8 * v15);
      *(v11 + 8 * v15) = v34;
      storageWindowRelease(buf);
      os_unfair_lock_unlock(lock);
      a7 = 0;
    }

    os_unfair_lock_lock(v35);
    if (!v34[2])
    {
      v34[2] = v15 << *(a1 + 48);
    }

    if (!v34[3])
    {
      if ((*(a1 + 37) & 1) != 0 || v15)
      {
        v47 = v80 << *(a1 + 48);
      }

      else
      {
        v47 = *(a1 + 8);
      }

      v34[3] = v47;
    }

    *(a1 + 36);
    v34[1] = fd_mmap(*a1);
    v48 = v34 + 1;
    v49 = __error();
    v50 = *v49;
    if (dword_1EB7ABB10 >= 5)
    {
      v77 = *v49;
      v76 = *__error();
      log = _SILogForLogForCategory(10);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v34[1];
        v62 = v34[2];
        v63 = v34[3] - v62;
        *buf = v78.n128_u32[0];
        *&buf[4] = a1;
        v84 = 2048;
        *v85 = v34;
        *&v85[8] = 2048;
        *&v85[10] = v61;
        *&v85[18] = 2048;
        *&v85[20] = v62;
        *&v85[28] = 2048;
        *&v85[30] = v63;
        *&v85[38] = 2048;
        *v86 = a2;
        *&v86[8] = 2048;
        v87 = v12;
        _os_log_impl(&dword_1B238B000, log, OS_LOG_TYPE_DEFAULT, "mmap (%p/%p) %p 0x%llx-0x%llx (0x%llx-0x%llx)", buf, 0x48u);
      }

      *__error() = v76;
      v50 = v77;
    }

    if (*v48 != -1)
    {
      goto LABEL_85;
    }

    *v48 = 0;
    v34[2] = 0;
    v34[3] = 0;
    if (v50 != 12 || v81 < 0x200000)
    {
      break;
    }

    v81 >>= 1;
    os_unfair_lock_unlock(lock);
  }

  if (!v50)
  {
    goto LABEL_85;
  }

  v64 = v50;
  v65 = *__error();
  v66 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    v72 = *(a1 + 16);
    *buf = 136316674;
    *&buf[4] = "_moveWindowsInner";
    v84 = 1024;
    *v85 = 719;
    *&v85[4] = 2048;
    *&v85[6] = a1;
    *&v85[14] = 2048;
    *&v85[16] = a2;
    *&v85[24] = 2048;
    *&v85[26] = a3;
    *&v85[34] = 1024;
    *&v85[36] = v64;
    *v86 = 2048;
    *&v86[2] = v72;
    _os_log_error_impl(&dword_1B238B000, v66, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", buf, 0x40u);
  }

  *__error() = v65;
  v67 = mmap(0, 4uLL, 0, 4098, -50331648, 0);
  *v48 = v67;
  if (v67 == -1)
  {
    v73 = *(a1 + 16);
    __message_assert("%s:%u: failed assertion '%s' %s mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", v68, v69, "storage_window.c", 730);
LABEL_88:
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *(v34 + 1) = xmmword_1B23E0AE0;
  *v67 = 1;
LABEL_85:
  os_unfair_lock_unlock(lock);
  v17 = v34[1];
  v18 = v34[2];
LABEL_86:
  v70 = *MEMORY[0x1E69E9840];
  return v17 + a2 - v18;
}

void si_analytics_log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "Deallocating window for stable mapping %p (%p %lld %lld) (%lld  %zu)", &a9);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    si_analytics_log_cold_1(v10);
  }

  free(v10[0]);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t _storageWindowsExpandBacking(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = 1 << *(a1 + 48);
  if (v3 <= v4 && *(a1 + 32) >= 2)
  {
    _storageWindowsExpandBacking_cold_1();
  }

  v5 = *(a1 + 16) + a2;
  if (v3 >> 30)
  {
    if (v5 + 1 > v3 + 0x40000000)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v3 + 0x40000000;
    }

    v7 = ((v6 + ~v3) & 0xFFFFFFFFC0000000) + 0x40000000;
  }

  else
  {
    v8 = 4096;
    if (v3)
    {
      v8 = *(a1 + 8);
    }

    do
    {
      v7 = v8;
      v9 = v8 + v3;
      v8 *= 2;
    }

    while (v5 >= v9);
  }

  LODWORD(v10) = *(a1 + 32);
  if (v10)
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = *(v11 + 8);
      if (v10 >= 1 && v12 != 0)
      {
        v14 = 0;
        do
        {
          storageWindowSync(*(a1 + 56 + 8 * v14++), 1);
          v10 = *(a1 + 32);
        }

        while (v14 < v10);
        v3 = *(a1 + 8);
        v4 = 1 << *(a1 + 48);
      }
    }

    if (v3 <= v4 && v10 >= 2)
    {
      _storageWindowsExpandBacking_cold_2();
    }
  }

  *__error() = 0;
  if (v7 && (v15 = *(a1 + 8) + v7, v15 >= v5))
  {
    v16 = "unknown";
    while (1)
    {
      v17 = *a1;
      if (fd_truncate(*a1, v15) != -1)
      {
        *(a1 + 8) = v15;
        result = 1;
        goto LABEL_41;
      }

      v18 = *__error();
      v19 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = v16;
        if (v17)
        {
          v16 = fd_name_ptr(v17);
        }

        v23 = *__error();
        *buf = 136316162;
        v30 = "_storageWindowsExpandBacking";
        v31 = 1024;
        v32 = 840;
        v33 = 2080;
        v34 = v16;
        v35 = 2048;
        v36 = v15;
        v37 = 1024;
        v38 = v23;
        _os_log_error_impl(&dword_1B238B000, v19, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate %s (%lld) error:%d", buf, 0x2Cu);
        v16 = v22;
      }

      *__error() = v18;
      if (*__error() != 28)
      {
        break;
      }

      v20 = *__error();
      v21 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "_storageWindowsExpandBacking";
        v31 = 1024;
        v32 = 843;
        v33 = 2048;
        v34 = v7 >> 1;
        _os_log_error_impl(&dword_1B238B000, v21, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%lld) growing size", buf, 0x1Cu);
      }

      *__error() = v20;
      if (v7 >= 2)
      {
        v15 = *(a1 + 8) + (v7 >> 1);
        v7 >>= 1;
        if (v15 >= v5)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    result = 0;
  }

  else
  {
LABEL_36:
    bzero(buf, 0x400uLL);
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      _storageWindowsExpandBacking_cold_3(a1, buf);
    }

    v26 = __error();
    result = 0;
    *v26 = v24;
  }

LABEL_41:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void _release_read_window(OSQueueHead *__list, void *__new)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__new && atomic_fetch_add(__new + 2, 0xFFFFFFFF) == 1)
  {
    for (i = 73; i != 585; ++i)
    {
      v5 = *(__new + i);
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          storageWindowDestroyImmediate(v5);
        }

        *(__new + i) = 0;
      }
    }

    v6 = *MEMORY[0x1E69E9840];

    OSAtomicEnqueue(__list, __new, 0);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

uint64_t storageWindowsAlloc(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  result = *(a1 + 16);
  v4 = result + a2;
  if (v4 >= *(a1 + 8))
  {
    v6 = a2;
    if (!_storageWindowsExpandBacking(a1, a2))
    {
      result = 0;
      goto LABEL_3;
    }

    result = *(a1 + 16);
    v4 = result + v6;
  }

  *(a1 + 16) = v4;
LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t setWindowsFreeRegion(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 16) = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __storageWindowDestroy_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];

  storageWindowDestroyImmediate(v1);
}

void storageWindowDestroyImmediate(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (v2 + 1 >= 2)
  {
    munmap(v2, a1[3] - a1[2]);
  }

  v3 = *MEMORY[0x1E69E9840];

  free(a1);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result, unint64_t a2)
{
  v2 = a2 >> *(result + 48);
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void __message_assert_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%s:%u: failed assertion '%s' %s ", &a9);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = v10[0];
    _os_log_error_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v10[0]);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t storage_array_FdPtr(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *storage_array_HeaderStore(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[5] < a1[6])
  {
    storage_array_HeaderStore_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = a1[1];
  v11 = *a2;
  if (v10 >> 28)
  {
    *v11 = v10 | 0x80;
    v11[1] = (v10 >> 7) | 0x80;
    v11[2] = (v10 >> 14) | 0x80;
    v11[3] = (v10 >> 21) | 0x80;
    v11[4] = v10 >> 28;
    v12 = 5;
  }

  else if (v10 >= 0x200000)
  {
    *v11 = v10 | 0x80;
    v11[1] = (v10 >> 7) | 0x80;
    v11[2] = (v10 >> 14) | 0x80;
    v11[3] = v10 >> 21;
    v12 = 4;
  }

  else if (v10 >= 0x4000)
  {
    *v11 = v10 | 0x80;
    v11[1] = (v10 >> 7) | 0x80;
    v11[2] = v10 >> 14;
    v12 = 3;
  }

  else if (v10 >= 0x80)
  {
    *v11 = v10 | 0x80;
    v11[1] = v10 >> 7;
    v12 = 2;
  }

  else
  {
    *v11 = v10;
    v12 = 1;
  }

  *a2 += v12;
  storeVInt64(a2, a1[6]);
  storeVInt64(a2, a1[5]);
  v13 = a1[2];
  v14 = *MEMORY[0x1E69E9840];

  return storeVInt64(a2, v13);
}

uint64_t *storeVInt64(uint64_t *result, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *result;
  if (HIDWORD(a2))
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      *v2 = a2 | 0x80;
      v5 = vdupq_n_s64(a2);
      v5.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_1B23E0B10), vshlq_u64(v5, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      *(v2 + 9) = 1;
      v3 = 10;
    }

    else if (HIBYTE(a2))
    {
      *v2 = a2 | 0x80;
      v6 = vdupq_n_s64(a2);
      v6.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_1B23E0B10), vshlq_u64(v6, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v6.i8, *v6.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      v3 = 9;
    }

    else if (a2 >> 49)
    {
      *v2 = a2 | 0x80;
      v7 = vdupq_n_s64(a2);
      v7.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_1B23E0B10), vshlq_u64(v7, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = a2 >> 49;
      v3 = 8;
    }

    else
    {
      *v2 = a2 | 0x80;
      v4 = vdupq_n_s64(a2);
      v4.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1B23E0B10), vshlq_u64(v4, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
      if (a2 >> 42)
      {
        *(v2 + 5) = (a2 >> 35) | 0x80;
        *(v2 + 6) = a2 >> 42;
        v3 = 7;
      }

      else
      {
        *(v2 + 5) = a2 >> 35;
        v3 = 6;
      }
    }
  }

  else if (a2 >> 28)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = (a2 >> 21) | 0x80;
    *(v2 + 4) = a2 >> 28;
    v3 = 5;
  }

  else if (a2 >= 0x200000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = a2 >> 21;
    v3 = 4;
  }

  else if (a2 >= 0x4000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = a2 >> 14;
    v3 = 3;
  }

  else if (a2 >= 0x80)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = a2 >> 7;
    v3 = 2;
  }

  else
  {
    *v2 = a2;
    v3 = 1;
  }

  *result += v3;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t storage_array_HeaderRestore(void *a1, char **a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    bzero(a1, 0x1088uLL);
  }

  v5 = *a2;
  v6 = **a2;
  if ((**a2 & 0x80000000) == 0)
  {
    v7 = 1;
LABEL_12:
    v12 = &v5[v7];
    *a2 = v12;
    *(a1 + 1) = v6;
    goto LABEL_13;
  }

  v8 = v5[1];
  if ((v5[1] & 0x80000000) == 0)
  {
    v6 = v6 & 0x7F | (v8 << 7);
    v7 = 2;
    goto LABEL_12;
  }

  v9 = v5[2];
  if ((v5[2] & 0x80000000) == 0)
  {
    v10 = ((v8 & 0x7F) << 7) | (v9 << 14) | v6 & 0x7F;
    v7 = 3;
LABEL_11:
    v6 = v10;
    goto LABEL_12;
  }

  v11 = v5[3];
  if ((v5[3] & 0x80000000) == 0)
  {
    v10 = ((v9 & 0x7F) << 14) | (v11 << 21) | ((v8 & 0x7F) << 7) | v6 & 0x7F;
    v7 = 4;
    goto LABEL_11;
  }

  v34 = v5[4];
  v12 = v5 + 5;
  *a2 = v12;
  *(a1 + 1) = ((v11 & 0x7F) << 21) | (v34 << 28) | ((v9 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | v6 & 0x7F;
  if (v34 < 0)
  {
LABEL_13:
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 |= (v15 & 0x7F) << v13;
      if ((v15 & 0x80) == 0)
      {
        break;
      }

      v16 = v13 == 63;
      v13 += 7;
    }

    while (!v16);
    *a2 = v12;
    v17 = setWindowsFreeRegion(a1 + 32, v14);
    v25 = 0;
    v26 = 0;
    v27 = *a2;
    do
    {
      v28 = *v27++;
      v26 |= (v28 & 0x7F) << v25;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v16 = v25 == 63;
      v25 += 7;
    }

    while (!v16);
    *a2 = v27;
    *(a1 + 5) = v26;
    if (v26 < *(a1 + 6))
    {
      storage_array_HeaderRestore_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *v27++;
      v30 |= (v31 & 0x7F) << v29;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v16 = v29 == 63;
      v29 += 7;
    }

    while (!v16);
    *a2 = v27;
    *(a1 + 2) = v30;
    result = 1;
    goto LABEL_27;
  }

  v35 = *__error();
  v36 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    storage_array_HeaderRestore_cold_1();
  }

  v37 = __error();
  result = 0;
  *v37 = v35;
LABEL_27:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t storage_array_ReadInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = a2;
  v11 = a1 + 32;
  v12 = a1 + 4096;
  v13 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
  *(v11 + 4192) = v13;
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v13[6] = 0u;
  v13[7] = 0u;
  v13[8] = 0u;
  v13[9] = 0u;
  v13[10] = 0u;
  v13[11] = 0u;
  *(v13 + 24) = 0;
  pthread_rwlock_init(*(v11 + 4192), 0);
  *(*(v11 + 4192) + 200) = 0;
  *(v12 + 92) = 1;
  *(v12 + 94) = 0;
  *(v11 - 24) = a5;
  *(v11 - 16) = a3;
  storageWindowsInit(v11, a2, a4, a6, 1, 0, 0);
  v14 = *MEMORY[0x1E69E9840];

  return setWindowsFreeRegion(v11, a4);
}

uint64_t storage_array_Init(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, void *aBlock, uint64_t a12)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    storage_array_Init_cold_4(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  bzero(a1, 0x1088uLL);
  if (a12)
  {
    v20 = (*(a12 + 16))(a12);
  }

  if (a5)
  {
    *a1 = a10;
    if (v14)
    {
      *(a1 + 1) = a4;
      *(a1 + 2) = a2;
      v27 = (a1 + 8);
      storageWindowsInit((a1 + 8), a5, a3 + a2, a3 + a2, v12, 0, aBlock);
      setWindowsFreeRegion((a1 + 8), a2);
    }

    else
    {
      st_size = *(a1 + 5);
      if (st_size)
      {
        if (st_size < *(a1 + 6))
        {
          storage_array_Init_cold_1(v20, v21, st_size, v22, v23, v24, v25, v26);
        }
      }

      else
      {
        memset(&v42, 0, sizeof(v42));
        v33 = fd_stat(a5, &v42);
        if (v33)
        {
          st_size = a3;
        }

        else
        {
          st_size = v42.st_size;
        }

        *(a1 + 1) = a4;
        *(a1 + 2) = a2;
        if (st_size < *(a1 + 6))
        {
          storage_array_Init_cold_2(v33, v34, st_size, v35, v36, v37, v38, v39);
        }
      }

      v27 = (a1 + 8);
      storageWindowsInit((a1 + 8), a5, st_size, st_size, v12, 0, aBlock);
    }

    a1[6] = v13;
    *(a1 + 4) = a5;
    v40 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
    *(a1 + 528) = v40;
    *v40 = 0u;
    v40[1] = 0u;
    v40[2] = 0u;
    v40[3] = 0u;
    v40[4] = 0u;
    v40[5] = 0u;
    v40[6] = 0u;
    v40[7] = 0u;
    v40[8] = 0u;
    v40[9] = 0u;
    v40[10] = 0u;
    v40[11] = 0u;
    v40[12] = 0u;
    pthread_rwlock_init(*(a1 + 528), 0);
    *(a1 + 4188) = v12;
    *(a1 + 4190) = a9 & ~v12;
    a1[1054] = 0;
    result = _windowsMapInit(v27, 0);
    if (result)
    {
      if (v12)
      {
        goto LABEL_24;
      }

      if (v14)
      {
        fd_truncate(a5, 0);
      }

      if (!fd_truncate(a5, *(a1 + 5)))
      {
LABEL_24:
        result = 1;
      }

      else
      {
        result = 0;
      }
    }
  }

  else
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      storage_array_Init_cold_3();
    }

    v30 = __error();
    result = 0;
    *v30 = v28;
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

void storage_array_Close(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  storageWindowsUnmap(a1 + 32);
  storageWindowsClose(a1 + 32);
  v2 = *(a1 + 4224);
  if (v2)
  {
    pthread_rwlock_wrlock(v2);
    _release_read_window(&availableArrayReaders, *(*(a1 + 4224) + 200));
    pthread_rwlock_unlock(*(a1 + 4224));
    pthread_rwlock_destroy(*(a1 + 4224));
    free(*(a1 + 4224));
    *(a1 + 4224) = 0;
  }

  *(a1 + 4189) = 1;
  v3 = *MEMORY[0x1E69E9840];
}

int *storage_array_Sync(int *result, int a2, int a3)
{
  v4 = result;
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    result = storageWindowsSync(result + 8, 0);
  }

  if (a3 && (result = *(v4 + 4)) != 0)
  {
    v5 = *MEMORY[0x1E69E9840];

    return fd_sync(result, 0, 1);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

unint64_t storage_array_AllocOffsetFromEnd(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (a1[6] + v2 < a1[5] || _storage_array_Expand(a1))
  {
    v3 = storageWindowsAlloc((a1 + 4), v2);
    storage_array_dirtyRange(a1, 0, a1[2], v4, v5, v6, v7, v8);
    result = (v3 - a1[2]) / v2;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _storage_array_Expand(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _storageWindowsExpandBacking(a1 + 32, *(a1 + 8));
  if (v2)
  {
    pthread_rwlock_wrlock(*(a1 + 4224));
    v3 = *(a1 + 4224);
    sig = v3[1].__sig;
    v3[1].__sig = 0;
    pthread_rwlock_unlock(v3);
    _release_read_window(&availableArrayReaders, sig);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

void storage_array_dirtyRange(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a2 >> 20;
  bit_vector_set((a1 + 4192), (a2 >> 20), a3, a4, a5, a6, a7, a8);
  v18 = (a3 + a2) >> 20;
  if (v18 > v11)
  {
    v19 = v11 + 1;
    do
    {
      bit_vector_set((a1 + 4192), v19, v12, v13, v14, v15, v16, v17);
    }

    while (v18 > v19++);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void bit_vector_set(void *a1, CFIndex idx, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a1 + 1;
  v10 = a1[1];
  if (v10 <= idx)
  {
    bit_vector_set_cold_1(v10, idx, a1, v11, a5, a6, a7, a8);
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v12 = a1[2];
  v13 = *MEMORY[0x1E69E9840];

  CFBitVectorSetBitAtIndex(v12, idx, 1u);
}

unint64_t storage_array_ResolvePtr(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (a3)
  {
    a2 = *(a1 + 16) + v5 * a2;
  }

  v6 = *MEMORY[0x1E69E9840];
  v7 = a1 + 32;

  return _windowsResolvePtr(v7, a2, v5);
}

BOOL storage_array_ValidPtr(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = v3 * a2;
  v5 = *(a1 + 48);
  v6 = v3 * a2 + v3 <= v5;
  v7 = v4 >= v5;
  v8 = v4 < v5;
  if (v7 || a3 == 0)
  {
    result = v8;
  }

  else
  {
    result = v6;
  }

  v11 = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL isRegisteredForCloning(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v2 = CFSetContainsValue(registeredCloneFds, v1) != 0;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _copyFile(int a1, const char *a2, int a3, const char *a4, _DWORD *a5, off_t a6)
{
  v65 = *MEMORY[0x1E69E9840];
  memset(&v64, 0, sizeof(v64));
  v58 = 0;
  v59 = 0;
  if (*a5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(10);
    v8 = 2 * (dword_1EB7ABB10 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1B238B000, v7, v8, "canceled", buf, 2u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    LODWORD(v13) = -1;
    goto LABEL_39;
  }

  v15 = a5;
  v11 = fd_create(a1, a2, 0);
  v18 = fd_open(v11, &v59);
  v13 = v18;
  if (!v11 || v18 == -1)
  {
    v6 = *__error();
    v37 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_8();
    }

    goto LABEL_33;
  }

  if (fstat(v18, &v64) == -1)
  {
    v6 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_7();
    }

LABEL_33:
    v9 = 0;
    v10 = 0;
    v12 = 0xFFFFFFFFLL;
LABEL_39:
    v41 = 0;
    *__error() = v6;
    goto LABEL_40;
  }

  v10 = fd_create(a3, a4, 536872450);
  v19 = fd_open(v10, &v58);
  v12 = v19;
  if (!v10 || v19 == -1)
  {
    v6 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_6();
    }

    goto LABEL_38;
  }

  ci_preallocate(v19, v64.st_size);
  if (_fd_ftruncate_guarded(v12, &v58, v64.st_size) == -1)
  {
    v6 = *__error();
    v40 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_5();
    }

LABEL_38:
    v9 = 0;
    goto LABEL_39;
  }

  fcntl(v13, 48, 1);
  fcntl(v13, 76, 1);
  fcntl(v12, 48, 1);
  fcntl(v12, 76, 1);
  v56 = a6;
  __buf = malloc_type_malloc(0x100000uLL, 0x8C758051uLL);
  v20 = 0;
  if (v64.st_size > a6)
  {
    v55 = v10;
    v54 = v13;
    v53 = v15;
    while (!*v15)
    {
      v21 = prot_pread(v13, __buf, 0x100000uLL, a6);
      if (v21 == -1)
      {
        v45 = *__error();
        v50 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          _copyFile_cold_3();
        }

        goto LABEL_65;
      }

      if (*v15)
      {
        v45 = *__error();
        v51 = _SILogForLogForCategory(10);
        v52 = 2 * (dword_1EB7ABB10 < 4);
        if (os_log_type_enabled(v51, v52))
        {
          *buf = 0;
          _os_log_impl(&dword_1B238B000, v51, v52, "canceled", buf, 2u);
        }

LABEL_65:
        LODWORD(v13) = v54;
        goto LABEL_50;
      }

      v22 = v21;
      v23 = __buf;
      v24 = prot_pwrite_guarded(v12, &v58, __buf, v21, a6);
      if (v24 == -1)
      {
LABEL_47:
        v45 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          _copyFile_cold_2();
        }

        LODWORD(v13) = v54;
        v15 = v53;
        goto LABEL_50;
      }

      v32 = v24;
      v33 = 1;
      while (1)
      {
        v34 = v22 - v32;
        if (v22 < v32)
        {
          _copyFile_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        v20 += v32;
        if (v22 <= v32)
        {
          break;
        }

        if ((v32 != 0) | v33 & 1)
        {
          v33 &= v32 != 0;
        }

        else
        {
          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v61 = "_copyFile";
            v62 = 1024;
            v63 = 194;
            _os_log_error_impl(&dword_1B238B000, v36, OS_LOG_TYPE_ERROR, "%s:%d: write failed", buf, 0x12u);
          }

          v33 = 0;
          *__error() = v35;
        }

        a6 += v32;
        v23 += v32;
        v24 = prot_pwrite_guarded(v12, &v58, v23, v34, a6);
        v32 = v24;
        v22 = v34;
        if (v24 == -1)
        {
          goto LABEL_47;
        }
      }

      a6 += v22;
      v13 = v54;
      v10 = v55;
      v15 = v53;
      if (a6 >= v64.st_size)
      {
        goto LABEL_51;
      }
    }

    v45 = *__error();
    v48 = _SILogForLogForCategory(10);
    v49 = 2 * (dword_1EB7ABB10 < 4);
    if (os_log_type_enabled(v48, v49))
    {
      *buf = 0;
      _os_log_impl(&dword_1B238B000, v48, v49, "canceled", buf, 2u);
    }

LABEL_50:
    *__error() = v45;
    v10 = v55;
  }

LABEL_51:
  if (v20 + v56 == v64.st_size)
  {
    v41 = 1;
  }

  else
  {
    if (!*v15)
    {
      v6 = *__error();
      v47 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        _copyFile_cold_4(&v64.st_size);
      }

      v9 = __buf;
      goto LABEL_39;
    }

    v41 = 0;
  }

  v9 = __buf;
LABEL_40:
  v42 = *__error();
  free(v9);
  prot_fsync(v12, 0);
  if ((v13 & 0x80000000) == 0)
  {
    fd_close(v11, v13, v59);
  }

  fd_release(v11);
  if ((v12 & 0x80000000) == 0)
  {
    fd_close(v10, v12, v58);
  }

  fd_release(v10);
  if (v42)
  {
    *__error() = v42;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t copyFile(int a1, const char *a2, int a3, const char *a4, _DWORD *a5)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return copyFileFallback(a1, a2, a3, a4, a5, 1, 1);
}

uint64_t copyFileFallback(int a1, const char *a2, int a3, const char *a4, _DWORD *a5, char a6, int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1 != a3 || !isRegisteredForCloning(a1) || !a7)
  {
LABEL_33:
    result = _copyFile(a1, a2, a3, a4, a5, 0);
    goto LABEL_34;
  }

  bzero(v46, 0x400uLL);
  bzero(v45, 0x400uLL);
  v14 = faccurate_realpath(a1, v46);
  if (!v14)
  {
    v28 = *__error();
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      copyFileFallback_cold_3();
    }

    goto LABEL_28;
  }

  v15 = v14;
  v16 = strlen(v14);
  snprintf(&v15[v16], 1024 - v16, "/%s", a2);
  v17 = faccurate_realpath(a1, v45);
  if (!v17)
  {
    v28 = *__error();
    v29 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      copyFileFallback_cold_2();
    }

LABEL_28:
    *__error() = v29;
    v33 = __error();
    result = 0;
    *v33 = v28;
    goto LABEL_34;
  }

  v18 = v17;
  v39 = a6;
  v19 = strlen(v17);
  v38 = a4;
  snprintf(v18 + v19, 1024 - v19, "/%s", a4);
  v20 = *__error();
  v21 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = v15;
    v43 = 2080;
    v44 = v18;
    _os_log_impl(&dword_1B238B000, v21, OS_LOG_TYPE_DEFAULT, "copy file %s to %s", buf, 0x16u);
  }

  *__error() = v20;
  while (1)
  {
    v22 = open(v18, 0);
    to = 0;
    asprintf(&to, "%s.tmp", v18);
    unlink(to);
    v23 = copyfile(v15, to, 0, 0x20C0000u);
    v25 = *__error();
    if (v25 != 45)
    {
      goto LABEL_12;
    }

    v26 = open(v15, 0);
    if (v26 != -1)
    {
      close(v26);
      v25 = 45;
LABEL_12:
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      rename(to, v18, v24);
      v23 = v27;
      v25 = *__error();
      goto LABEL_14;
    }

    v25 = *__error();
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    free(to);
    if (v22 != -1)
    {
      close(v22);
    }

    if (v23 != -1)
    {
      break;
    }

    if ((prot_error_check() & 1) == 0)
    {
      *__error() = v25;
      *__error() = v25;
      if ((prot_error_check() & 1) == 0)
      {
        *__error() = v25;
        goto LABEL_29;
      }
    }
  }

  *__error() = v25;
  if (!v23)
  {
    result = 1;
    goto LABEL_34;
  }

LABEL_29:
  v34 = *__error();
  v35 = *__error();
  v36 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    copyFileFallback_cold_1();
  }

  *__error() = v35;
  *__error() = v34;
  if (v39)
  {
    a4 = v38;
    goto LABEL_33;
  }

  result = 0;
LABEL_34:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void *fd_create_protected(int a1, const char *a2, int a3, unsigned __int8 a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (fd_create_protected_once != -1)
  {
    fd_create_protected_cold_1();
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  v8[1] = 0;
  *(v8 + 1) = 0u;
  v8[4] = 1;
  *(v8 + 10) = -1;
  *(v8 + 11) = a1;
  v9 = (a3 & 3) != 0;
  *(v8 + 12) = a3 | (v9 << 29);
  v10 = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  v11 = v10 & 0xFFF0 | (4 * v9);
  *(v8 + 28) = v11;
  v12 = strdup(a2);
  *(v8 + 52) = 0;
  *(v8 + 17) = 0;
  v8[9] = v12;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  *(v8 + 28) = v11 & 0xF00F | (16 * a4);
  v22 = 0;
  v13 = _fd_acquire_fd(v8, &v22);
  if (v13 == -1)
  {
    v14 = *__error();
    bzero(v34, 0x400uLL);
    v15 = faccurate_realpath(a1, v34);
    if ((a3 & 0x200) != 0)
    {
      v16 = 17;
    }

    else
    {
      v16 = 2;
    }

    if (v14 == v16)
    {
      if (gSILogLevels < 5)
      {
LABEL_15:
        fd_release(v8);
        v8 = 0;
        *__error() = v14;
        goto LABEL_16;
      }

      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v24 = v15;
        v25 = 2080;
        *v26 = a2;
        *&v26[8] = 1024;
        *&v26[10] = a3;
        v27 = 1024;
        *v28 = a1;
        *&v28[4] = 1024;
        *&v28[6] = v14;
        _os_log_impl(&dword_1B238B000, v18, OS_LOG_TYPE_DEFAULT, "fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x28u);
      }
    }

    else
    {
      v17 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v24 = "fd_create_protected";
        v25 = 1024;
        *v26 = 207;
        *&v26[4] = 2080;
        *&v26[6] = v15;
        v27 = 2080;
        *v28 = a2;
        *&v28[8] = 1024;
        v29 = a3;
        v30 = 1024;
        v31 = a1;
        v32 = 1024;
        v33 = v14;
        _os_log_error_impl(&dword_1B238B000, v19, OS_LOG_TYPE_ERROR, "%s:%d: fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x38u);
      }
    }

    *__error() = v17;
    goto LABEL_15;
  }

  *(v8 + 12) &= 0xFFFFF9FF;
  _fd_release_fd(v8, v13, 0, v22);
LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

int *__fd_create_protected_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v8.rlim_cur = 0;
  v8.rlim_max = 0;
  if (getrlimit(8, &v8))
  {
    rlim_cur = 1024;
  }

  else
  {
    rlim_cur = v8.rlim_cur;
  }

  gOpenLimit = rlim_cur;
  v1 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
  g_fd_list = v1;
  v2 = rlim_cur / 4;
  if (rlim_cur >= 512)
  {
    v2 = 128;
  }

  v1[2] = v2;
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels < 4);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 67109120;
    v10 = gOpenLimit;
    _os_log_impl(&dword_1B238B000, v4, v5, "fd limit %d", buf, 8u);
  }

  result = __error();
  *result = v3;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fd_open(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return _fd_acquire_fd(a1, a2);
}

uint64_t fd_close(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return _fd_release_fd(a1, a2, 0, a3);
}

void fd_release(atomic_uint *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1 && atomic_fetch_add_explicit(a1 + 8, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1 != -50529037)
    {
      fd_release_cold_1();
    }

    v6[0] = 0;
    pthread_mutex_lock(&g_fd_lock);
    v2 = _fd_remove_locked(a1, v6);
    pthread_mutex_unlock(&g_fd_lock);
    if (v2 != -1)
    {
      guarded_close_np();
    }

    *a1 = 0;
    free(*(a1 + 9));
    v4 = *(a1 + 10);
    if (v4)
    {
      fd_release(v4, v3);
    }

    free(a1);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void *fd_create(int a1, const char *a2, int a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return fd_create_protected(a1, a2, a3, 0);
}

void *fd_create_read_only(int a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
    *v4 = -50529037;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0x100000001;
    *(v4 + 10) = a1;
    *(v4 + 44) = 0xFFFFFFFFLL;
    v5 = *(v4 + 28);
    *(v4 + 30) &= 0xFC00u;
    *(v4 + 28) = v5 & 0xFFF0;
    v6 = strdup(a2);
    *(v4 + 52) = 0;
    v4[9] = v6;
    v4[10] = 0;
    *(v4 + 17) = 1;
    v4[11] = 0;
    v4[12] = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

char *fd_name(uint64_t a1, char *a2, size_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 != -50529037)
    {
      fd_name_cold_1();
    }

    os_unfair_lock_lock(&g_name_lock);
    if (strlcpy(a2, *(a1 + 72), a3) > a3)
    {
      a2 = 0;
    }

    os_unfair_lock_unlock(&g_name_lock);
  }

  else
  {
    a2 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t close_inactive_fds_if_necessary(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!result || (result = _fd_close_inactive(*(a2 + 44), 0, 1, 1)) != 0 || (result = _fd_close_inactive(0xFFFFFFFFLL, 0, 1, 1)) != 0 || (result = _fd_close_inactive(*(a2 + 44), 0, 1, 0)) != 0)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    return _fd_close_inactive(0xFFFFFFFFLL, 0, 1, 0);
  }

  return result;
}

uint64_t fd_truncate(uint64_t a1, off_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v4 = _fd_acquire_fd(a1, v12);
  if (v4 == -1)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    v6 = _fd_ftruncate_guarded(v4, v12, a2);
    v7 = *__error();
    if (v6 == -1 || a2 == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    *(a1 + 56) = *(a1 + 56) & 0xFFFD | v9;
    _fd_release_fd(a1, v5, 0, v12[0]);
    if (v6 == -1)
    {
      *__error() = v7;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _fd_acquire_fd(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    v10 = 2 * (gSILogLevels < 4);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_1B238B000, v9, v10, "open error NULL obj", buf, 2u);
    }

    *__error() = v8;
    v6 = __error();
    v7 = 2;
    goto LABEL_10;
  }

  if (*a1 != -50529037)
  {
    _fd_acquire_fd_cold_1();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 52) == 1)
  {
    pthread_mutex_unlock(&g_fd_lock);
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _fd_acquire_fd_cold_3(v5);
    }

    *__error() = v4;
    v6 = __error();
    v7 = 22;
LABEL_10:
    *v6 = v7;
LABEL_11:
    updated = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  if (*(a1 + 40) == -1)
  {
    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    updated = _fd_update_locked(a1, 0, a2);
    pthread_mutex_unlock(&g_fd_lock);
    if (updated != -1)
    {
      goto LABEL_12;
    }
  }

  bzero(buf, 0x400uLL);
  v14 = (*(a1 + 56) >> 4);
  v15 = fd_name(a1, buf, 0x400uLL);
  v19 = _fd_open(*(a1 + 44), v15, *(a1 + 48), *(a1 + 56) & 1, v14, v16, v17, v18);
  if (v19 == -1)
  {
    goto LABEL_11;
  }

  v20 = v19;
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v23 = *(a1 + 48);
  v21 = change_fdguard_np();
  __error();
  if (v21 && gSILogLevels >= 5)
  {
    _fd_acquire_fd_cold_2();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 40) == -1)
  {
    *(a1 + 8) = __buf;
    *(a1 + 40) = v20;
    updated = _fd_update_locked(a1, 1, a2);
    v22 = *(g_fd_list + 4) > *(g_fd_list + 8);
    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    updated = _fd_update_locked(a1, 0, a2);
    pthread_mutex_unlock(&g_fd_lock);
    guarded_close_np();
    v22 = 0;
  }

  close_inactive_fds_if_necessary(v22, a1);
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return updated;
}

uint64_t fd_stat(uint64_t a1, stat *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    while (1)
    {
      result = fstatat(*(a1 + 44), *(a1 + 72), a2, 2048);
      v5 = g_prot_error_callback;
      if (result != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v7 = *(a1 + 40);
      v8 = __error();
      if (((*(v5 + 16))(v5, v7, *v8, 8) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *fd_realpath(uint64_t a1, _BYTE *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v4 = _fd_acquire_fd(a1, v10);
  if (v4 == -1)
  {
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = faccurate_realpath(v4, a2);
    _fd_release_fd(a1, v5, 0, v10[0]);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }
}

ssize_t fd_pread(uint64_t a1, void *a2, size_t a3, off_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v8 = _fd_acquire_fd(a1, &v17);
  v9 = v8;
  if (v8 == -1 || (v10 = prot_pread(v8, a2, a3, a4), _fd_release_fd(a1, v9, 0, v17), v10 == -1))
  {
    bzero(v32, 0x400uLL);
    v11 = *__error();
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = fd_realpath(a1, v32);
      if (!v16)
      {
        v16 = fd_name(a1, v32, 0x400uLL);
        if (!v16)
        {
          v16 = "";
        }
      }

      *buf = 136316674;
      v19 = "fd_pread";
      v20 = 1024;
      v21 = 650;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a4;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = v11;
      _os_log_error_impl(&dword_1B238B000, v13, OS_LOG_TYPE_ERROR, "%s:%d: pread(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v12;
    *__error() = v11;
    v10 = -1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t fd_pwrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 2;
LABEL_11:
    v11 = -1;
    goto LABEL_12;
  }

  if (*(a1 + 96))
  {
    fd_pwrite_cold_1();
  }

  v18 = 0;
  v8 = _fd_acquire_fd(a1, &v18);
  v9 = v8;
  if (v8 == -1)
  {
    v12 = *__error();
LABEL_9:
    bzero(v33, 0x400uLL);
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = fd_realpath(a1, v33);
      if (!v17)
      {
        v17 = fd_name(a1, v33, 0x400uLL);
        if (!v17)
        {
          v17 = "";
        }
      }

      *buf = 136316674;
      v20 = "fd_pwrite";
      v21 = 1024;
      v22 = 680;
      v23 = 1024;
      v24 = v9;
      v25 = 2080;
      v26 = v17;
      v27 = 2048;
      v28 = a4;
      v29 = 1024;
      v30 = a3;
      v31 = 1024;
      v32 = v12;
      _os_log_error_impl(&dword_1B238B000, v14, OS_LOG_TYPE_ERROR, "%s:%d: pwrite(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    goto LABEL_11;
  }

  v10 = prot_pwrite_guarded(v8, &v18, a2, a3, a4);
  if (v10 == -1)
  {
    v12 = *__error();
    _fd_release_fd(a1, v9, 0, v18);
    goto LABEL_9;
  }

  v11 = v10;
  _fd_release_fd(a1, v9, 0, v18);
LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t fd_sync(uint64_t a1, int a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    fd_system_status_stall_if_busy();
  }

  v15 = 0;
  v5 = _fd_acquire_fd(a1, &v15);
  v6 = 0xFFFFFFFFLL;
  if (v5 != -1)
  {
    v7 = v5;
    bzero(v17, 0x400uLL);
    v14 = -1;
    v8 = *(a1 + 56);
    if ((v8 & 0xE) == 6 && (*(a1 + 56) = v8 & 0xFFF3, bzero(&v16, 0x878uLL), fstatfs(*(a1 + 44), &v16) != -1) && *v16.f_fstypename ^ 0x73667061 | v16.f_fstypename[4])
    {
      v9 = fd_name(a1, v17, 0x400uLL);
      if (v9)
      {
        if (fd_setDir(*(a1 + 44), &v14))
        {
          v13 = 1;
          if (fsctl(v9, 0x80006817uLL, &v13, 0) != -1)
          {
            *(a1 + 56) |= 0xCu;
          }
        }
      }

      if (a2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
      if (a2)
      {
LABEL_12:
        v10 = (*(a1 + 56) & 8) == 0;
        goto LABEL_15;
      }
    }

    v10 = 0;
LABEL_15:
    v6 = prot_fsync(v7, v10);
    if (v6 != -1 && (*(a1 + 56) & 8) != 0)
    {
      v16.f_bsize = 0;
      fsctl(v9, 0x80006817uLL, &v16, 0);
      *(a1 + 56) &= 0xFFF5u;
    }

    if (v14 != -1)
    {
      fd_resetDir(v14);
    }

    _fd_release_fd(a1, v7, 0, v15);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t fd_mmap(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 22;
LABEL_12:
    v3 = -1;
    goto LABEL_13;
  }

  v9[0] = 0;
  if (*(a1 + 44) == -1)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = _fd_acquire_fd(a1, v9);
  }

  if (v2 == -1)
  {
    goto LABEL_12;
  }

  do
  {
    v3 = __mmap();
    if (v3 != -1)
    {
      break;
    }

    v4 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v5 = *(a1 + 40);
    v6 = __error();
  }

  while (((*(v4 + 16))(v4, v5, *v6, 10) & 1) != 0);
  if (*(a1 + 44) != -1)
  {
    _fd_release_fd(a1, v2, (*(a1 + 56) & 2) == 0, v9[0]);
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t _fd_release_fd(uint64_t result, int a2, int a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (result && a2 != -1)
  {
    v5 = result;
    v12[0] = 0;
    if (*result != -50529037)
    {
      _fd_release_fd_cold_1();
    }

    pthread_mutex_lock(&g_fd_lock);
    v8 = *(v5 + 52);
    if ((v8 & 1) == 0)
    {
      if (*(v5 + 40) != a2)
      {
        _fd_release_fd_cold_2();
      }

      if (*(v5 + 8) != a4)
      {
        _fd_release_fd_cold_3();
      }
    }

    v9 = *(v5 + 36);
    if (!v9)
    {
      _fd_release_fd_cold_4();
    }

    v10 = v9 - 1;
    *(v5 + 36) = v10;
    if (v10 || !a3 || (v8 & 1) != 0 || *(v5 + 68) || _fd_remove_locked(v5, v12) == -1)
    {
      result = pthread_mutex_unlock(&g_fd_lock);
    }

    else
    {
      *(v5 + 56) &= ~8u;
      pthread_mutex_unlock(&g_fd_lock);
      result = guarded_close_np();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *fd_name_ptr(_DWORD *a1)
{
  v1 = a1;
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 != -50529037)
    {
      fd_name_ptr_cold_1();
    }

    os_unfair_lock_lock(&g_name_lock);
    v1 = *(v1 + 9);
    os_unfair_lock_unlock(&g_name_lock);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t _fd_remove_locked(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 16);
  v4 = *(a1 + 16);
  result = *(a1 + 40);
  *a2 = *(v3 - 1);
  v6 = v3[1];
  if (v6)
  {
    if (!v4)
    {
      _fd_remove_locked_cold_4();
    }

    v7 = g_fd_list;
    v8 = *(g_fd_list + 16);
    if (v8 == a1)
    {
      *(g_fd_list + 16) = v6;
      v8 = v6;
    }

    *(v4 + 24) = v6;
    *(*(a1 + 24) + 16) = v4;
    *v3 = 0;
    v3[1] = 0;
    v9 = *v7;
    v10 = *v7 - 1;
    *v7 = v10;
    if (v8 == a1)
    {
      if (v10)
      {
        _fd_remove_locked_cold_3();
      }

      *(v7 + 16) = 0;
      if (result != -1)
      {
        --*(v7 + 4);
      }
    }

    else
    {
      if (!v10)
      {
        _fd_remove_locked_cold_2();
      }

      if (result != -1)
      {
        --*(v7 + 4);
        if (v9 <= 0)
        {
          _fd_remove_locked_cold_1();
        }
      }
    }
  }

  else if (v4)
  {
    _fd_remove_locked_cold_5();
  }

  *(a1 + 40) = -1;
  *(a1 + 8) = 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _fd_close_inactive(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v39 = a1;
  v41 = *MEMORY[0x1E69E9840];
  if (gOpenLimit <= 2047)
  {
    v7 = (gOpenLimit + (gOpenLimit >> 31)) >> 1;
  }

  else
  {
    v7 = 1024;
  }

  MEMORY[0x1EEE9AC00](((gOpenLimit + (gOpenLimit >> 31)) >> 1), a1, 4 * v7, a3, a4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  MEMORY[0x1EEE9AC00](v13, v10, 8 * v7, v11, v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v15, v14);
  pthread_mutex_lock(&g_fd_lock);
  v16 = &unk_1EB7CC000;
  v17 = g_fd_list;
  v18 = *(g_fd_list + 16);
  if (!v18 || ((v19 = *(v18 + 16), !a2) ? (v20 = 0) : (v20 = strlen(a2), v16 = &unk_1EB7CC000), (v21 = *(g_fd_list + 4), v21 < *(g_fd_list + 8)) && (v5 & 1) != 0))
  {
    pthread_mutex_unlock(&g_fd_lock);
    v22 = 0;
    goto LABEL_38;
  }

  v37 = a2;
  v38 = v4;
  v22 = 0;
  v23 = 1;
  v24 = v39;
  while (1)
  {
    v25 = *(v19 + 40);
    if (v25 != -1 && !*(v19 + 36) && v21 && !*(v19 + 68) && (!v38 || (*(v19 + 56) & 2) == 0))
    {
      if (v24 != -1)
      {
        if (*(v19 + 44) != v24)
        {
          goto LABEL_14;
        }

        if (v20)
        {
          v36 = v20;
          v26 = v16;
          bzero(v40, 0x400uLL);
          v27 = fd_name(v19, v40, 0x400uLL);
          if (!v27)
          {
            v16 = v26;
            v17 = v26[369];
LABEL_33:
            v24 = v39;
            v20 = v36;
            goto LABEL_14;
          }

          v28 = strncmp(v37, v27, v36);
          v16 = v26;
          v17 = v26[369];
          if (v28)
          {
            goto LABEL_33;
          }

          v25 = *(v19 + 40);
          v24 = v39;
          v20 = v36;
        }
      }

      v29 = *(v19 + 56);
      *&v15[8 * v22] = *(v19 + 8);
      *&v9[4 * v22] = v25;
      *(v19 + 8) = 0;
      *(v19 + 40) = -1;
      *(v19 + 56) = v29 & 0xFFF5;
      v30 = v17[1];
      v17[1] = v30 - 1;
      if (v30 <= 0)
      {
        _fd_close_inactive_cold_1();
      }

      if (++v22 >= v7)
      {
        goto LABEL_35;
      }
    }

LABEL_14:
    if (v23 - 1 >= *v17)
    {
      _fd_close_inactive_cold_2();
    }

    if (v19 == v18)
    {
      break;
    }

    v19 = *(v19 + 16);
    v21 = v17[1];
    ++v23;
    if (v21 < v17[2] && (v5 & 1) != 0)
    {
      goto LABEL_35;
    }
  }

  if (v23 != *v17)
  {
    _fd_close_inactive_cold_3();
  }

LABEL_35:
  pthread_mutex_unlock(&g_fd_lock);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      v32 = *&v9[4 * i];
      guarded_close_np();
      v15 += 8;
    }
  }

LABEL_38:
  v33 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t _fd_open(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v27 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v13 = a5 ? si_openat_protected(a1, a2, a3, 384, a5) : _safe_open_at(a1, a2, a3, a4, a5, a6, a7, a8, 0x180u);
    v14 = v13;
    if (a4)
    {
      if (v13 != -1)
      {
        break;
      }
    }

    if (v13 != -1 || !g_prot_error_callback)
    {
      goto LABEL_16;
    }

    v15 = *__error();
    if (gSILogLevels >= 5)
    {
      v22 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *__error();
        *buf = 136315394;
        v24 = a2;
        v25 = 1024;
        v26 = v19;
        _os_log_impl(&dword_1B238B000, v18, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v22;
    }

    v16 = g_prot_error_callback;
    v17 = __error();
    if (((*(v16 + 16))(v16, a1, *v17, 15) & 1) == 0)
    {
      *__error() = v15;
      goto LABEL_16;
    }
  }

  fcntl(v13, 48, 1);
  fcntl(v14, 76, 1);
LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t _fd_update_locked(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = *(a1 + 40);
  if (result == -1)
  {
    _fd_update_locked_cold_6();
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    if (!v5)
    {
      _fd_update_locked_cold_2();
    }

    v7 = g_fd_list;
    v8 = *(g_fd_list + 16);
    if (!v8)
    {
      _fd_update_locked_cold_1();
    }

    if (v8 != a1)
    {
      *(v5 + 24) = v6;
      *(*(a1 + 24) + 16) = v5;
      v9 = *(v8 + 16);
      *(a1 + 16) = v9;
      *(a1 + 24) = v8;
      *(v9 + 24) = a1;
      *(v8 + 16) = a1;
    }

    if (a2)
    {
LABEL_8:
      ++*(v7 + 4);
    }
  }

  else
  {
    if (v5)
    {
      _fd_update_locked_cold_3();
    }

    v7 = g_fd_list;
    v11 = *(g_fd_list + 16);
    v12 = *g_fd_list;
    if (v11)
    {
      if (!v12)
      {
        _fd_update_locked_cold_4();
      }

      v13 = *(v11 + 16);
      *(a1 + 16) = v13;
      *(a1 + 24) = v11;
      *(v13 + 24) = a1;
      *(v11 + 16) = a1;
      v14 = v12 + 1;
    }

    else
    {
      if (v12)
      {
        _fd_update_locked_cold_5();
      }

      *(a1 + 16) = a1;
      *(a1 + 24) = a1;
      v14 = 1;
    }

    *v7 = v14;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  *(v7 + 16) = a1;
  ++*(a1 + 36);
  *a3 = *(a1 + 8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _safe_open_at(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  v43 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x200) != 0)
  {
    bzero(buf, 0x400uLL);
    if (faccurate_realpath(a1, buf))
    {
      if (buf[0] && *buf != 47)
      {
        v12 = a9;
        goto LABEL_3;
      }

      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136316162;
        v34 = "_safe_open_at";
        v35 = 1024;
        v36 = 1421;
        v37 = 2080;
        *v38 = buf;
        *&v38[8] = 2080;
        *&v38[10] = a2;
        *&v38[18] = 2048;
        *&v38[20] = a3;
        _os_log_error_impl(&dword_1B238B000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Invalid parent path, currentPath:%s, path:%s, flags:0x%lx\n", v33, 0x30u);
      }

      v28 = 22;
    }

    else
    {
      v28 = *__error();
      v26 = *__error();
      v29 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136316418;
        v34 = "_safe_open_at";
        v35 = 1024;
        v36 = 1417;
        v37 = 1024;
        *v38 = a1;
        *&v38[4] = 2080;
        *&v38[6] = a2;
        *&v38[14] = 2048;
        *&v38[16] = a3;
        *&v38[24] = 1024;
        *&v38[26] = v28;
        _os_log_error_impl(&dword_1B238B000, v29, OS_LOG_TYPE_ERROR, "%s:%d: faccurate_realpath() failed, parent_fd:%d, path:%s, flags:0x%lx, errno:%d\n", v33, 0x32u);
      }
    }

    *__error() = v26;
    *__error() = v28;
    goto LABEL_37;
  }

  v12 = 0;
LABEL_3:
  while (1)
  {
    result = openat(a1, a2, a3, v12);
    if (result != -1)
    {
      break;
    }

    v14 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels >= 5)
    {
      v31 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *__error();
        *buf = 136315394;
        v40 = a2;
        v41 = 1024;
        v42 = v17;
        _os_log_impl(&dword_1B238B000, v16, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v31;
      v14 = g_prot_error_callback;
    }

    v15 = __error();
    if (((*(v14 + 16))(v14, a1, *v15, 13) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (result != -1)
  {
    goto LABEL_38;
  }

LABEL_16:
  v18 = *__error();
  if ((v18 - 23) > 1)
  {
    goto LABEL_35;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  v21 = gSILogLevels < 3;
  if (os_log_type_enabled(v20, (gSILogLevels < 3)))
  {
    *buf = 67109120;
    LODWORD(v40) = v18;
    _os_log_impl(&dword_1B238B000, v20, v21, "*warn* too many open files, err: %d, closing inactive and trying again", buf, 8u);
  }

  *__error() = v19;
  _fd_close_inactive(0xFFFFFFFFLL, 0, 0, 0);
  while (1)
  {
    result = openat(a1, a2, a3, v12);
    if (result != -1)
    {
      break;
    }

    v22 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels >= 5)
    {
      v32 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *__error();
        *buf = 136315394;
        v40 = a2;
        v41 = 1024;
        v42 = v25;
        _os_log_impl(&dword_1B238B000, v24, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v32;
      v22 = g_prot_error_callback;
    }

    v23 = __error();
    if (((*(v22 + 16))(v22, a1, *v23, 14) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (result == -1)
  {
LABEL_35:
    if (v18 == 23)
    {
      _safe_open_at_cold_1();
    }

    if (v18 == 24)
    {
      _safe_open_at_cold_2(buf);
    }

LABEL_37:
    result = 0xFFFFFFFFLL;
  }

LABEL_38:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

atomic_uint *md_deadline_once_retain(atomic_uint *result)
{
  v2 = *MEMORY[0x1E69E9840];
  atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void md_deadline_once_start(atomic_uint *a1, dispatch_queue_t queue)
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (!atomic_fetch_add_explicit(a1 + 4, 1u, memory_order_relaxed))
  {
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __md_deadline_once_start_block_invoke;
    v3[3] = &__block_descriptor_tmp_0;
    v3[4] = a1;
    dispatch_async(queue, v3);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __md_deadline_once_start_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!atomic_load_explicit((*(a1 + 32) + 20), memory_order_acquire))
  {
    (*(*(*(a1 + 32) + 32) + 16))();
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E69E9840];

  md_deadline_once_release(v2);
}

void md_deadline_once_cancel(os_unfair_lock_s *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 6);
  atomic_store(1u, &a1[5]._os_unfair_lock_opaque);
  v2 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(a1 + 6);
}

intptr_t md_deadline_once_wait(uint64_t a1, dispatch_time_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  result = dispatch_semaphore_wait(*(a1 + 8), a2);
  if (result)
  {
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *MEMORY[0x1E69E9840];

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

void md_deadline_once_run_block_with_lock(os_unfair_lock_s *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 6);
  (*(a2 + 16))(a2, a1[5]._os_unfair_lock_opaque);
  v4 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(a1 + 6);
}

void si_tracing_log_span_event()
{
  v1 = *MEMORY[0x1E69E9840];
  if (init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }

  v0 = *MEMORY[0x1E69E9840];
}

void md_tracing_dispatch_async_propagating(NSObject *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v10 = *v2;
  v11 = v3;
  v12 = *(v2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __md_tracing_dispatch_async_propagating_block_invoke;
  block[3] = &unk_1E7B255C8;
  block[4] = v4;
  v5 = qos_class_self();
  if (v5 < 0x1A)
  {
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  }

  else
  {
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, block);
  }

  v7 = v6;
  dispatch_async(a1, v6);
  _Block_release(v7);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __md_tracing_dispatch_async_propagating_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

void tracing_dispatch_apply()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  v1 = *(v0 + 16);
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __tracing_dispatch_apply_block_invoke;
  block[3] = &unk_1E7B255F0;
  block[4] = v2;
  dispatch_apply(v4, v3, block);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __tracing_dispatch_apply_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t __ensure_tracing_initialised_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = MGGetBoolAnswer();
  if (result)
  {
    tracing_enabled = 1;
    result = getenv("SPOTLIGHT_TRACING");
    if (result)
    {
      result = atoi(result);
      if (result <= 0)
      {
        tracing_enabled = 0;
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayGetTypeID()
{
  v2 = *MEMORY[0x1E69E9840];
  result = __kMDStoreOIDArrayTypeID;
  if (!__kMDStoreOIDArrayTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kMDStoreOIDArrayTypeID = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayIsMutable(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return (*(a1 + 40) >> 2) & 1;
}

uint64_t _MDStoreOIDArrayCreateMutableWithOids(uint64_t a1, uint64_t a2, unsigned int a3, int a4, const void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a2;
    *(Instance + 32) = a3;
    *(Instance + 36) = a4;
    v11 = &__block_literal_global_1;
    if (!a2)
    {
      v11 = &__block_literal_global_43;
    }

    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = v11;
    }

    *(v10 + 24) = _Block_copy(v12);
    *(v10 + 40) = *(v10 + 40) & 0xF8 | 4;
    v13 = *(v10 + 16);
    v14 = v13 + 8 * *(v10 + 36);
    *(v10 + 56) = v13 + 8 * a3;
    *(v10 + 64) = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _MDStoreOIDArrayCreateMutableUsingMalloc(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a2)
    {
      v4 = malloc_good_size(8 * a2) >> 3;
    }

    else
    {
      LODWORD(v4) = 8;
    }

    *(Instance + 36) = v4;
    v5 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    *(Instance + 16) = v5;
    *(Instance + 40) = *(Instance + 40) & 0xF8 | 6;
    *(Instance + 48) = 0;
    if (v5)
    {
      *(Instance + 24) = _Block_copy(&__block_literal_global_1);
      v6 = *(Instance + 16);
      v7 = v6 + 8 * *(Instance + 36);
      *(Instance + 56) = v6;
      *(Instance + 64) = v7;
    }

    else
    {
      CFRelease(Instance);
      Instance = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t _MDStoreOIDArrayCreateMutableCopy(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    v7 = MEMORY[0x1E69E9AC8];
    v8 = *(a3 + 32) + a2;
    if (v8)
    {
      v9 = (*MEMORY[0x1E69E9AC8] + 8 * v8 - 1) & -*MEMORY[0x1E69E9AC8];
    }

    else
    {
      v9 = *MEMORY[0x1E69E9AC8];
    }

    *(Instance + 36) = v9 >> 3;
    if (_fast_vm_allocate((Instance + 16), v9 & 0x7FFFFFFF8, -268435455))
    {
      CFRelease(v6);
      v6 = 0;
    }

    else
    {
      *(v6 + 40) = *(v6 + 40) & 0xF9 | 4;
      *(v6 + 24) = _Block_copy(&__block_literal_global_1);
      v10 = *(v6 + 16);
      v11 = &v10[8 * *(v6 + 36)];
      *(v6 + 56) = v10;
      *(v6 + 64) = v11;
      v12 = 8 * *(a3 + 32);
      if (v12 >= 4 * *v7)
      {
        madvise(v10, 8 * *(a3 + 32), 3);
        v10 = *(v6 + 56);
        v12 = 8 * *(a3 + 32);
      }

      memcpy(v10, *(a3 + 16), v12);
      v13 = *(a3 + 32);
      v14 = *(v6 + 56) + 8 * v13;
      *(v6 + 32) = v13;
      *(v6 + 48) = 0;
      *(v6 + 56) = v14;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _MDStoreOIDArrayBeginSequence(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

  if (!*(a1 + 48))
  {
    v9 = *(a1 + 56);
    if (v9 >= *(a1 + 64))
    {
      if (!_mutableMakeRoom(a1, 1, 0))
      {
        v4 = "Overflow";
        goto LABEL_4;
      }

      v9 = *(a1 + 56);
    }

    *v9 = (a2 << 32) | (a3 << 16);
    *(a1 + 48) = v9;
    *(a1 + 56) = v9 + 1;
    result = 1;
    goto LABEL_6;
  }

  v4 = "Sequencing";
LABEL_4:
  __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayBeginSequence", v4);
LABEL_5:
  result = 0;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __MDStoreOIDArrayError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(a1 + 40) |= 1u;
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s: %s error -- %@ marked bad", a2, a3, a1);
    CFShow(v3);
    v4 = *MEMORY[0x1E69E9840];

    CFRelease(v3);
  }
}

uint64_t _MDStoreOIDArrayEndSequence(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    goto LABEL_6;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayEndSequence", "Sequencing");
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v2 = *(a1 + 56) - v1;
  if (v2 >> 3 > 0x10000)
  {
    _MDStoreOIDArrayEndSequence_cold_1();
  }

  *v1 |= ((v2 >> 3) - 1);
  *(a1 + 48) = 0;
  *(a1 + 32) += v2 >> 3;
  result = 1;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayAddOID(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    goto LABEL_10;
  }

  if (!*(a1 + 48))
  {
    v6 = "Sequencing";
LABEL_9:
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAddOID", v6);
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v4 = *(a1 + 56);
  if (v4 >= *(a1 + 64))
  {
    if (_mutableMakeRoom(a1, 1, 0))
    {
      v4 = *(a1 + 56);
      goto LABEL_6;
    }

    v6 = "Overflow";
    goto LABEL_9;
  }

LABEL_6:
  *v4 = a2;
  *(a1 + 56) = v4 + 1;
  result = 1;
LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayBeginBulkAdd(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    goto LABEL_10;
  }

  if (!*(a1 + 48))
  {
    v7 = "Sequencing";
LABEL_9:
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayBeginBulkAdd", v7);
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v5 = *(a1 + 56);
  if ((v5 + 8 * a2) >= *(a1 + 64))
  {
    if (_mutableMakeRoom(a1, a2, 0))
    {
      v5 = *(a1 + 56);
      goto LABEL_6;
    }

    v7 = "Overflow";
    goto LABEL_9;
  }

LABEL_6:
  *a3 = v5;
  result = 1;
LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayEndBulkAdd(uint64_t a1, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 64) >= a2)
      {
        *(a1 + 56) = a2;
        result = 1;
        goto LABEL_8;
      }

      v2 = "Overflow";
    }

    else
    {
      v2 = "Sequencing";
    }

    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayEndBulkAdd", v2);
  }

  result = 0;
LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayRoom(uint64_t a1)
{
  if (*(a1 + 40))
  {
    result = 0;
  }

  else
  {
    result = (*(a1 + 64) - *(a1 + 56)) >> 3;
  }

  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayGetVectorCount(uint64_t a1)
{
  if (*(a1 + 40))
  {
    result = 0;
  }

  else
  {
    result = *(a1 + 32);
  }

  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *_MDStoreOIDArraySetShouldDeallocate(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  _Block_release(*(a1 + 24));
  if (a2)
  {
    v4 = &__block_literal_global_1;
  }

  else
  {
    v4 = &__block_literal_global_43;
  }

  result = _Block_copy(v4);
  *(a1 + 24) = result;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArraySetShouldUseMalloc(uint64_t result, char a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(result + 40) & 0xFD | (2 * (a2 & 1));
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDStoreOIDArrayAppendOIDArray(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

  if (!*(a1 + 48))
  {
    v7 = *(a2 + 32);
    v8 = *(a1 + 56);
    if (v8 + 8 * v7 >= *(a1 + 64))
    {
      if (!_mutableMakeRoom(a1, v7, 0))
      {
        v3 = "Overflow";
        goto LABEL_4;
      }

      v8 = *(a1 + 56);
      v7 = *(a2 + 32);
    }

    memcpy(v8, *(a2 + 16), 8 * v7);
    v9 = *(a2 + 32);
    *(a1 + 56) += 8 * v9;
    *(a1 + 32) += v9;
    result = 1;
    goto LABEL_6;
  }

  v3 = "Sequencing";
LABEL_4:
  __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAppendOIDArray", v3);
LABEL_5:
  result = 0;
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _mutableMakeRoom(uint64_t a1, uint64_t a2, int a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (v3)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 56) + 8 * a2;
  v7 = *(a1 + 16);
  v8 = v6 - v7;
  v25[0] = 0;
  if ((v3 & 2) != 0 && (a3 & 1) == 0)
  {
    if (v6 == v7)
    {
      v9 = 4;
    }

    else if ((v8 >> 3) > 0xFF)
    {
      v9 = ((v8 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) >> 3;
    }

    else
    {
      v13 = ((v8 >> 3) - 1) | (((v8 >> 3) - 1) >> 1);
      v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
      v9 = ((v14 | (v14 >> 8)) + 1);
    }

    v11 = malloc_good_size(8 * v9);
    v15 = malloc_type_malloc(v11, 0xF8970F01uLL);
    v25[0] = v15;
    goto LABEL_16;
  }

  v10 = (v8 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v11 = v6 == v7 ? *MEMORY[0x1E69E9AC8] : v10;
  if (_fast_vm_allocate(v25, v11 & 0xFFFFFFFFFFFFFFF8, -268435455))
  {
LABEL_10:
    result = 0;
    goto LABEL_25;
  }

  v15 = v25[0];
LABEL_16:
  memcpy(v15, *(a1 + 16), *(a1 + 56) - *(a1 + 16));
  (*(*(a1 + 24) + 16))();
  _Block_release(*(a1 + 24));
  v16 = _Block_copy(&__block_literal_global_1);
  if ((*(a1 + 40) & 2) != 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  *(a1 + 40) = v18 | *(a1 + 40) & 0xFD;
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  v21 = v19 - *(a1 + 16);
  *(a1 + 36) = v11 >> 3;
  v22 = v25[0];
  *(a1 + 16) = v25[0];
  *(a1 + 24) = v16;
  v23 = v22 + v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v22 + (v11 & 0x7FFFFFFF8);
  if (v20)
  {
    *(a1 + 48) = v23 + v20 - v19;
  }

  result = 1;
LABEL_25:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __MDStoreOIDArrayEqual(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  if (*(a2 + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a2 + 32);
  }

  if (v2 != v3)
  {
    result = 0;
    goto LABEL_13;
  }

  if (*(a1 + 40))
  {
    v4 = 0;
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v5 = 0;
    goto LABEL_11;
  }

  v4 = *(a1 + 16);
  if (*(a2 + 40))
  {
    goto LABEL_15;
  }

LABEL_10:
  v5 = *(a2 + 16);
LABEL_11:
  result = memcmp(v4, v5, 8 * v2) == 0;
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *__MDStoreOIDArrayCopyDebugDescription(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 52 * gMDStoreOIDArrayDebugDescriptionDumpMaxLines + 52);
  v3 = Mutable;
  if (gMDStoreOIDArrayDebugDescriptionDumpMaxLines <= 0)
  {
    v4 = "";
  }

  else
  {
    v4 = "[";
  }

  CFStringAppendFormat(Mutable, 0, @"<MDStoreOIDArray: %p>%s", a1, v4);
  if (gMDStoreOIDArrayDebugDescriptionDumpMaxLines >= 1)
  {
    v5 = *(a1 + 32);
    v17 = v5;
    if (v5 <= gMDStoreOIDArrayDebugDescriptionDumpMaxLines)
    {
      v6 = v5;
    }

    else
    {
      v6 = (gMDStoreOIDArrayDebugDescriptionDumpMaxLines - 1);
    }

    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 16);
      v9 = MEMORY[0x1E69E9830];
      v10 = v8;
      do
      {
        CFStringAppendFormat(v3, 0, @"\n    0x%016llx, // [0x%06x] - |", *(v8 + 8 * v7), v7 & 0xFFFFFF);
        for (i = 0; i != 8; ++i)
        {
          v12 = *(v10 + i);
          if ((v12 & 0x80000000) != 0)
          {
            v13 = __maskrune(*(v10 + i), 0x40000uLL);
          }

          else
          {
            v13 = *(v9 + 4 * v12 + 60) & 0x40000;
          }

          if (v13)
          {
            v14 = v12;
          }

          else
          {
            v14 = 46;
          }

          CFStringAppendFormat(v3, 0, @"%c", v14);
        }

        CFStringAppendCString(v3, "|", 0x600u);
        ++v7;
        v10 += 8;
      }

      while (v7 != v6);
    }

    if (v17 > v6)
    {
      CFStringAppendFormat(v3, 0, @"\n    // ... %i more lines suppressed ...", (v17 - v6));
    }

    CFStringAppendCString(v3, "\n]", 0x600u);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t _MDPerf_LifeCycleLog()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_MDPerf_LifeCycleLog_onceToken != -1)
  {
    _MDPerf_LifeCycleLog_cold_1();
  }

  result = _MDPerf_LifeCycleLog_sIndexLifeCycle;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPerf_IndexingLog()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_MDPerf_IndexingLog_onceToken != -1)
  {
    _MDPerf_IndexingLog_cold_1();
  }

  result = _MDPerf_IndexingLog_sIndexingLog;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MDPerf_SignpostLog()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_MDPerf_SignpostLog_onceToken != -1)
  {
    _MDPerf_SignpostLog_cold_1();
  }

  result = _MDPerf_SignpostLog_sIndexingLog;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef MDCopyBestAvailableLanguage()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v23 = v1;
  v3 = v2;
  v4 = v0;
  v33 = *MEMORY[0x1E69E9840];
  v24 = v5;
  if (sBestLanguageOnceDictionaryToken != -1)
  {
    MDCopyBestAvailableLanguage_cold_1();
  }

  v25 = &v23;
  v31 = 0;
  MEMORY[0x1EEE9AC00]();
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v26, v6);
  bzero(v32, 0x1000uLL);
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = v4;
    v9 = v3;
    v10 = v26;
    v11 = v32;
    do
    {
      v12 = *v8;
      CStringPtr = CFStringGetCStringPtr(*v8, 0x8000100u);
      if (CStringPtr)
      {
        *v10 = CStringPtr;
      }

      else
      {
        Length = CFStringGetLength(v12);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        if (MaximumSizeForEncoding + v7 > 4095 || !CFStringGetCString(v12, v11, MaximumSizeForEncoding, 0x8000100u))
        {
          goto LABEL_19;
        }

        *v10 = v11;
        v7 += strlen(v11) + 1;
      }

      v11 = &v32[v7];
      ++v10;
      ++v8;
      --v9;
    }

    while (v9);
  }

  *&v29 = 0;
  v16 = v24;
  LOWORD(v29) = CFArrayGetCount(v24);
  WORD1(v29) = v3;
  *(&v29 + 1) = v23;
  v30 = v26;
  pthread_rwlock_rdlock(&sBestLanguageDictionaryLock);
  Value = CFDictionaryGetValue(sBestLanguageDictionary, &v29);
  pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
  if (Value)
  {
    v31 = CFStringCreateWithCStringNoCopy(0, Value, 0x8000100u, *MEMORY[0x1E695E498]);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v3, MEMORY[0x1E695E9C0]);
    if (v3 >= 1)
    {
      do
      {
        v19 = *v4++;
        CFArrayAppendValue(Mutable, v19);
        --v3;
      }

      while (v3);
    }

    v20 = CFBundleCopyLocalizationsForPreferences(Mutable, v16);
    v27 = v29;
    v28 = v30;
    _get_and_cache_best_localization_match(v20, &v27, &v31);
    if (v20)
    {
      CFRelease(v20);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

LABEL_19:
  result = v31;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *_get_and_cache_best_localization_match(CFArrayRef theArray, unsigned __int16 *a2, CFStringRef *a3)
{
  v3 = theArray;
  v23 = *MEMORY[0x1E69E9840];
  if (!theArray)
  {
    goto LABEL_25;
  }

  if (!CFArrayGetCount(theArray))
  {
    v3 = 0;
    goto LABEL_25;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  Length = CFStringGetLength(ValueAtIndex);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v3 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xCB420A60uLL);
  if (!CFStringGetCString(ValueAtIndex, v3, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v3);
    v20 = 0;
    v3 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v9 = malloc_type_malloc(0x18uLL, 0x1080040C4643742uLL);
  v10 = a2[1];
  v9[1] = v10;
  *(v9 + 2) = malloc_type_malloc(8 * v10, 0x10040436913F5uLL);
  if (v9[1])
  {
    v11 = 0;
    v12 = 8 * v9[1];
    do
    {
      *(*(v9 + 2) + v11) = strdup(*(*(a2 + 2) + v11));
      v11 += 8;
    }

    while (v12 != v11);
  }

  v13 = *a2;
  *v9 = v13;
  *(v9 + 1) = malloc_type_malloc(8 * v13, 0x10040436913F5uLL);
  if (*v9)
  {
    v14 = 0;
    v15 = 8 * *v9;
    do
    {
      *(*(v9 + 1) + v14) = strdup(*(*(a2 + 1) + v14));
      v14 += 8;
    }

    while (v15 != v14);
  }

  pthread_rwlock_wrlock(&sBestLanguageDictionaryLock);
  Value = CFDictionaryGetValue(sBestLanguageDictionary, v9);
  if (!Value)
  {
    CFDictionarySetValue(sBestLanguageDictionary, v9, v3);
    pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v17 = Value;
  free(v3);
  pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
  if (v9[1])
  {
    v18 = 0;
    do
    {
      free(*(*(v9 + 2) + 8 * v18++));
    }

    while (v18 < v9[1]);
  }

  free(*(v9 + 2));
  if (*v9)
  {
    v19 = 0;
    do
    {
      free(*(*(v9 + 1) + 8 * v19++));
    }

    while (v19 < *v9);
  }

  free(*(v9 + 1));
  free(v9);
  v3 = v17;
  if (a3)
  {
LABEL_23:
    v20 = CFStringCreateWithCString(0, v3, 0x8000100u);
LABEL_24:
    *a3 = v20;
  }

LABEL_25:
  v21 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL convertToCArray(uint64_t a1, CFArrayRef theArray, char **a3, char *a4, CFIndex a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    v13 = 1;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    Length = CFStringGetLength(ValueAtIndex);
    v12 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
    if (v12 >= a5)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = &a4[a5];
      v15 = 1;
      do
      {
        if (!CFStringGetCString(ValueAtIndex, a4, v12, 0x8000100u))
        {
          break;
        }

        *a3 = a4;
        v13 = v15 >= a1;
        if (a1 == v15)
        {
          break;
        }

        a4 += strlen(a4) + 1;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        v16 = CFStringGetLength(ValueAtIndex);
        v12 = CFStringGetMaximumSizeForEncoding(v16, 0x8000100u) + 1;
        ++a3;
        ++v15;
      }

      while (&a4[v12] < v14);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

CFStringRef MDRetrieveBestAvailableLanguage()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v21 = *MEMORY[0x1E69E9840];
  if (sBestLanguageOnceDictionaryToken != -1)
  {
    MDCopyBestAvailableLanguage_cold_1();
  }

  v18 = 0;
  Count = CFArrayGetCount(v3);
  v5 = CFArrayGetCount(v2);
  MEMORY[0x1EEE9AC00]();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  MEMORY[0x1EEE9AC00]();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  bzero(v20, 0x1000uLL);
  if (convertToCArray(Count, v3, v7, v20, 4096))
  {
    bzero(v19, 0x1000uLL);
    if (convertToCArray(v5, v2, v9, v19, 4096))
    {
      *(&v16 + 1) = v9;
      *&v16 = v5;
      WORD1(v16) = Count;
      v17 = v7;
      pthread_rwlock_rdlock(&sBestLanguageDictionaryLock);
      Value = CFDictionaryGetValue(sBestLanguageDictionary, &v16);
      pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
      if (Value)
      {
        v18 = CFStringCreateWithCStringNoCopy(0, Value, 0x8000100u, *MEMORY[0x1E695E498]);
      }

      else
      {
        v11 = CFBundleCopyLocalizationsForPreferences(v3, v2);
        v14 = v16;
        v15 = v17;
        _get_and_cache_best_localization_match(v11, &v14, &v18);
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  result = v18;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}