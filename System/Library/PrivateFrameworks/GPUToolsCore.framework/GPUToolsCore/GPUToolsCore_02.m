apr_hash_t *__cdecl apr_hash_make(apr_pool_t *pool)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  gettimeofday(&v6, 0);
  v6.tv_sec = v6.tv_usec + 1000000 * v6.tv_sec;
  tv_sec = v6.tv_sec;
  v3 = apr_palloc(pool, 0x50uLL);
  *v3 = pool;
  v3[9] = 0;
  v3[6] = 0xF00000000;
  *(v3 + 14) = (&v6 ^ pool ^ v3 ^ tv_sec ^ HIDWORD(tv_sec)) - 1;
  v4 = apr_palloc(pool, 0x80uLL);
  if (v4)
  {
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  v3[1] = v4;
  v3[8] = 0;
  return v3;
}

apr_hash_t *__cdecl apr_hash_make_custom(apr_pool_t *pool, apr_hashfunc_t hash_func)
{
  result = apr_hash_make(pool);
  *(result + 8) = hash_func;
  return result;
}

apr_hash_index_t *__cdecl apr_hash_next(apr_hash_index_t *hi)
{
  v1 = *(hi + 2);
  *(hi + 1) = v1;
  if (v1)
  {
LABEL_5:
    *(hi + 2) = *v1;
  }

  else
  {
    v2 = *hi;
    v3 = *(*hi + 52);
    v4 = *(hi + 6);
    while (v4 <= v3)
    {
      v1 = *(*(v2 + 8) + 8 * v4++);
      *(hi + 6) = v4;
      *(hi + 1) = v1;
      if (v1)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return hi;
}

apr_hash_index_t *__cdecl apr_hash_first(apr_pool_t *p, apr_hash_t *ht)
{
  if (p)
  {
    v3 = apr_palloc(p, 0x20uLL);
  }

  else
  {
    v3 = ht + 16;
  }

  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = ht;
  *(v3 + 6) = 0;

  return apr_hash_next(v3);
}

void apr_hash_this(apr_hash_index_t *hi, const void **key, apr_ssize_t *klen, void **val)
{
  if (key)
  {
    *key = *(*(hi + 1) + 16);
  }

  if (klen)
  {
    *klen = *(*(hi + 1) + 24);
  }

  if (val)
  {
    *val = *(*(hi + 1) + 32);
  }
}

uint64_t hashfunc_default(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == -1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = a1;
      do
      {
        a3 = (33 * a3 + v5);
        v7 = *++v6;
        v5 = v7;
      }

      while (v7);
    }

    else
    {
      v6 = a1;
    }

    *a2 = v6 - a1;
  }

  else
  {
    for (; v3; --v3)
    {
      v4 = *a1++;
      a3 = (33 * a3 + v4);
    }
  }

  return a3;
}

apr_hash_t *__cdecl apr_hash_copy(apr_pool_t *pool, const apr_hash_t *h)
{
  result = apr_palloc(pool, 40 * *(h + 12) + 8 * (*(h + 13) + 1) + 80);
  v5 = 0;
  v6 = 0;
  *(result + 12) = *(h + 12);
  v7 = *(h + 52);
  *(result + 52) = v7;
  *(result + 8) = *(h + 8);
  *(result + 9) = 0;
  *result = pool;
  *(result + 1) = result + 80;
  if ((v7 + 1) > 1)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 1;
  }

  do
  {
    v9 = (*(result + 1) + 8 * v5);
    v10 = *(*(h + 1) + 8 * v5);
    if (v10)
    {
      do
      {
        v11 = (v6 + 1);
        v12 = result + 40 * v6 + 8 * (v7 + 1) + 80;
        *v9 = v12;
        *(v12 + 2) = *(v10 + 2);
        v13 = v10[3];
        *(v12 + 2) = v10[2];
        v6 = *v9;
        v14 = v10[4];
        v6[3] = v13;
        v6[4] = v14;
        v9 = *v9;
        v10 = *v10;
        LODWORD(v6) = v11;
      }

      while (v10);
    }

    else
    {
      v11 = v6;
    }

    *v9 = 0;
    ++v5;
    v6 = v11;
  }

  while (v5 != v8);
  return result;
}

void *__cdecl apr_hash_get(apr_hash_t *ht, const void *key, apr_ssize_t klen)
{
  entry = find_entry(ht, key, klen, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

void *find_entry(uint64_t a1, _BYTE *a2, size_t a3, uint64_t a4)
{
  __n = a3;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = v7(a2, &__n);
  }

  else
  {
    v8 = hashfunc_default(a2, &__n, *(a1 + 56));
  }

  v9 = v8;
  v10 = (*(a1 + 8) + 8 * (*(a1 + 52) & v8));
  v11 = *v10;
  if (*v10)
  {
    v12 = __n;
    while (1)
    {
      v13 = v10;
      v10 = v11;
      if (*(v11 + 8) == v9 && *(v11 + 24) == v12 && !memcmp(*(v11 + 16), a2, v12))
      {
        break;
      }

      v11 = *v10;
      if (!*v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (a4)
    {
      v14 = *(a1 + 72);
      if (v14)
      {
        *(a1 + 72) = *v14;
      }

      else
      {
        v14 = apr_palloc(*a1, 0x28uLL);
      }

      *v14 = 0;
      v14[2] = v9;
      v15 = __n;
      *(v14 + 2) = a2;
      *(v14 + 3) = v15;
      *(v14 + 4) = a4;
      *v10 = v14;
      ++*(a1 + 48);
    }

    return v10;
  }

  return v13;
}

void apr_hash_set(apr_hash_t *ht, const void *key, apr_ssize_t klen, const void *val)
{
  entry = find_entry(ht, key, klen, val);
  v7 = *entry;
  if (*entry)
  {
    if (val)
    {
      v7[4] = val;
      v8 = *(ht + 13);
      if (*(ht + 12) > v8)
      {
        v9 = (2 * v8) | 1;
        v10 = 8 * (2 * v8 + 2);
        v11 = apr_palloc(*ht, v10);
        v12 = v11;
        if (v11)
        {
          bzero(v11, v10);
        }

        *(ht + 3) = 0;
        *(ht + 4) = 0;
        *(ht + 2) = ht;
        *(ht + 10) = 0;
        v13 = (ht + 16);
        while (1)
        {
          v13 = apr_hash_next(v13);
          if (!v13)
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v14 + 8) & v9;
          *v14 = v12[v15];
          v12[v15] = v14;
        }

        *(ht + 1) = v12;
        *(ht + 13) = v9;
      }
    }

    else
    {
      *entry = *v7;
      *v7 = *(ht + 9);
      *(ht + 9) = v7;
      --*(ht + 12);
    }
  }
}

void apr_hash_clear(apr_hash_t *ht)
{
  *(ht + 3) = 0;
  *(ht + 4) = 0;
  *(ht + 2) = ht;
  *(ht + 10) = 0;
  v2 = apr_hash_next((ht + 16));
  if (v2)
  {
    v3 = v2;
    do
    {
      apr_hash_set(ht, *(*(v3 + 1) + 16), *(*(v3 + 1) + 24), 0);
      v3 = apr_hash_next(v3);
    }

    while (v3);
  }
}

apr_hash_t *__cdecl apr_hash_merge(apr_pool_t *p, const apr_hash_t *h1, const apr_hash_t *h2, void *(__cdecl *merger)(apr_pool_t *, const void *, apr_ssize_t, const void *, const void *, const void *), const void *data)
{
  v8 = apr_palloc(p, 0x50uLL);
  v9 = v8;
  v8[8] = *(h2 + 8);
  v8[9] = 0;
  v11 = *(h2 + 12);
  v10 = *(h2 + 13);
  *(v8 + 12) = v11;
  v12 = *(h1 + 12);
  if (*(h1 + 13) > v10)
  {
    v10 = *(h1 + 13);
  }

  pa = p;
  *v8 = p;
  *(v8 + 13) = v10;
  if (v12 + v11 > v10)
  {
    v10 = (2 * v10) | 1;
    *(v8 + 13) = v10;
  }

  *(v8 + 14) = *(h2 + 14);
  v13 = 8 * (v10 + 1);
  v14 = apr_palloc(p, v13);
  v15 = v14;
  if (v14)
  {
    bzero(v14, v13);
  }

  v9[1] = v15;
  v16 = *(h1 + 12) + *(h2 + 12);
  if (v16)
  {
    v17 = apr_palloc(p, 40 * v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
  v19 = 0;
  v20 = *(h2 + 13);
  if ((v20 + 1) > 1)
  {
    v21 = (v20 + 1);
  }

  else
  {
    v21 = 1;
  }

  do
  {
    v22 = *(*(h2 + 1) + 8 * v18);
    if (v22)
    {
      v23 = *(v9 + 13);
      do
      {
        v24 = *(v22 + 2);
        v25 = &v17[40 * v19];
        *(v25 + 1) = *(v22 + 1);
        *(v25 + 4) = v22[4];
        v26 = v9[1];
        v27 = *(v26 + 8 * (v23 & v24));
        *(v25 + 2) = v24;
        *v25 = v27;
        *(v26 + 8 * (v23 & v24)) = v25;
        ++v19;
        v22 = *v22;
      }

      while (v22);
    }

    ++v18;
  }

  while (v18 != v21);
  v28 = 0;
  v42 = h1;
  do
  {
    v43 = v28;
    for (i = *(*(h1 + 1) + 8 * v28); i; i = *i)
    {
      v31 = v9[8];
      v32 = i[2];
      if (v31)
      {
        v33 = v31(v32, i + 3);
      }

      else
      {
        v33 = hashfunc_default(v32, i + 3, *(v9 + 14));
      }

      v34 = v33;
      v35 = *(v9 + 13) & v33;
      v36 = v9[1];
      v37 = *(v36 + 8 * v35);
      v38 = i[3];
      if (v37)
      {
        while (1)
        {
          if (v37[3] == v38)
          {
            v39 = i[2];
            if (!memcmp(v37[2], v39, v38))
            {
              break;
            }
          }

          v37 = *v37;
          if (!v37)
          {
            goto LABEL_30;
          }
        }

        v30 = i[4];
        if (merger)
        {
          v37[4] = (merger)(pa, v39, v38, v30, v37[4], data);
        }

        else
        {
          v37[4] = v30;
        }
      }

      else
      {
LABEL_30:
        v40 = &v17[40 * v19];
        *(v40 + 2) = i[2];
        *(v40 + 3) = v38;
        *(v40 + 4) = i[4];
        *(v40 + 2) = v34;
        *v40 = *(v36 + 8 * v35);
        *(v36 + 8 * v35) = v40;
        ++*(v9 + 12);
        ++v19;
      }
    }

    v28 = v43 + 1;
    h1 = v42;
  }

  while (v43 + 1 <= *(v42 + 13));
  return v9;
}

int apr_hash_do(apr_hash_do_callback_fn_t *comp, void *rec, const apr_hash_t *ht)
{
  v5 = 0;
  v12 = 0;
  v11[0] = ht;
  v6 = *(ht + 13);
  v7 = *(ht + 1);
  while (1)
  {
    v8 = *(v7 + 8 * v5++);
    v11[1] = v8;
    if (v8)
    {
      break;
    }

    if (v5 > v6)
    {
      return 1;
    }
  }

  LODWORD(v12) = v5;
  v11[2] = *v8;
  v9 = v11;
  while (1)
  {
    result = (comp)(rec, *(*(v9 + 1) + 16), *(*(v9 + 1) + 24), *(*(v9 + 1) + 32));
    if (!result)
    {
      break;
    }

    v9 = apr_hash_next(v9);
    if (!v9)
    {
      return 1;
    }
  }

  return result;
}

vm_address_t GTCoreAlloc(uint64_t a1, memory_object_size_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  address = 0;
  object_handle = 0;
  size = a2;
  v3 = MEMORY[0x277D85F48];
  memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x277D85F48], &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v5 = memory_entry_64;
    if (s_logUsingOsLog != 1)
    {
      v12 = *MEMORY[0x277D85DF8];
      mach_error_string(memory_entry_64);
      fprintf(v12, "warning: failed to create memory entry error 0x%x (%s)\n");
      goto LABEL_17;
    }

    v6 = gt_tagged_log(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = mach_error_string(v5);
      *buf = 67109378;
      v23 = v5;
      v24 = 2080;
      v25 = v7;
      v8 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_9:
      _os_log_error_impl(&dword_24D66C000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v9 = vm_map(*v3, &address, a2, 0, 1, object_handle, 0, 0, 3, 3, 1u);
  if (v9)
  {
    v10 = v9;
    if (s_logUsingOsLog != 1)
    {
      v15 = *MEMORY[0x277D85DF8];
      mach_error_string(v9);
      fprintf(v15, "warning: failed to map memory error 0x%x (%s)\n");
      goto LABEL_17;
    }

    v6 = gt_tagged_log(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = mach_error_string(v10);
      *buf = 67109378;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      v8 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_9;
    }

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  if (hideMemory == 1)
  {
    v13 = mach_memory_entry_ownership(object_handle, *v3, 4, 1);
    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __GTCoreAlloc_block_invoke;
      block[3] = &__block_descriptor_tmp_5;
      v18 = v13;
      if (GTCoreAlloc_onceToken != -1)
      {
        dispatch_once(&GTCoreAlloc_onceToken, block);
      }
    }
  }

  mach_port_deallocate(*v3, object_handle);
  result = address;
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void __GTCoreAlloc_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (s_logUsingOsLog == 1)
  {
    v2 = gt_tagged_log(3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 67109378;
      v9 = v3;
      v10 = 2080;
      v11 = mach_error_string(v3);
      _os_log_error_impl(&dword_24D66C000, v2, OS_LOG_TYPE_ERROR, "warning: failed to mark memory(GRAPHICS) error 0x%x (%s)", buf, 0x12u);
    }
  }

  else
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = *(a1 + 32);
    v6 = mach_error_string(v5);
    fprintf(v4, "warning: failed to mark memory(GRAPHICS) error 0x%x (%s)\n", v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void *GTCoreFree(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = MEMORY[0x253031720](*MEMORY[0x277D85F48], *result, a2);
    *v2 = 0;
  }

  return result;
}

apr_status_t apr_atomic_init(apr_pool_t *p)
{
  if (hash_mutex)
  {
    return 0;
  }

  v2 = apr_palloc(p, 0x38uLL);
  hash_mutex = v2;
  v3 = *(p + 5);
  if (v3)
  {
    *(p + 5) = *v3;
  }

  else
  {
    v3 = apr_palloc(p, 0x20uLL);
  }

  v4 = 0;
  v3[1] = v2;
  v3[2] = atomic_cleanup;
  v3[3] = apr_pool_cleanup_null;
  *v3 = *(p + 4);
  *(p + 4) = v3;
  while (1)
  {
    result = apr_thread_mutex_create((hash_mutex + v4), 0, p);
    if (result)
    {
      break;
    }

    v4 += 8;
    if (v4 == 56)
    {
      return 0;
    }
  }

  return result;
}

uint64_t atomic_cleanup(uint64_t a1)
{
  if (hash_mutex == a1)
  {
    hash_mutex = 0;
  }

  return 0;
}

void apr_atomic_set32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (*mem = val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }
}

apr_uint32_t apr_atomic_add32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (v5 = *mem, *mem += val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }

  return v5;
}

void apr_atomic_sub32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (*mem -= val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }
}

int apr_atomic_dec32(apr_uint32_t *mem)
{
  v2 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v2 + 8)) || (--*mem, v3 = *mem, pthread_mutex_unlock((v2 + 8))))
  {
    abort();
  }

  return v3;
}

apr_uint32_t apr_atomic_cas32(apr_uint32_t *mem, apr_uint32_t with, apr_uint32_t cmp)
{
  v6 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v6 + 8)))
  {
    goto LABEL_6;
  }

  v7 = *mem;
  if (*mem == cmp)
  {
    *mem = with;
  }

  if (pthread_mutex_unlock((v6 + 8)))
  {
LABEL_6:
    abort();
  }

  return v7;
}

apr_uint32_t apr_atomic_xchg32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (v5 = *mem, *mem = val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }

  return v5;
}

void *__cdecl apr_atomic_casptr(void **mem, void *with, const void *cmp)
{
  v6 = *(hash_mutex + 8 * (-7 * (*mem / 0x1C) + (*mem >> 2)));
  if (pthread_mutex_lock((v6 + 8)))
  {
    goto LABEL_6;
  }

  v7 = *mem;
  if (*mem == cmp)
  {
    *mem = with;
  }

  if (pthread_mutex_unlock((v6 + 8)))
  {
LABEL_6:
    abort();
  }

  return v7;
}

void *__cdecl apr_atomic_xchgptr(void **mem, void *with)
{
  v4 = *(hash_mutex + 8 * (-7 * (*mem / 0x1C) + (*mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (v5 = *mem, *mem = with, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }

  return v5;
}

void apr_pool_destroy(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v3 = *(p + 1);
    if (!v3)
    {
      break;
    }

    apr_pool_destroy(v3);
  }

  while (1)
  {
    v4 = *(p + 4);
    if (!v4)
    {
      break;
    }

    *(p + 4) = *v4;
    (*(v4 + 16))(*(v4 + 8));
  }

  free_proc_chain(*(p + 7));
  if (*p)
  {
    v5 = *(*(*p + 48) + 24);
    if (v5)
    {
      pthread_mutex_lock((v5 + 8));
    }

    v6 = *(p + 2);
    **(p + 3) = v6;
    if (v6)
    {
      *(v6 + 24) = *(p + 3);
    }

    if (v5)
    {
      pthread_mutex_unlock((v5 + 8));
    }
  }

  v7 = *(p + 6);
  v8 = *(p + 12);
  *v8[1] = 0;
  if (v7[4] == p)
  {
    v7[3] = 0;
  }

  else
  {
    v9 = v7[3];
    if (v9)
    {
      pthread_mutex_lock((v9 + 8));
    }
  }

  v10 = 0;
  v11 = *v7;
  v12 = v7[1];
  v13 = (v7 + 5);
  v14 = v7[2];
  do
  {
    while (1)
    {
      v15 = v8;
      v8 = *v8;
      v16 = *(v15 + 4);
      if (!v12 || v14 > v16)
      {
        break;
      }

      *v15 = v10;
      v10 = v15;
      if (!v8)
      {
        goto LABEL_35;
      }
    }

    if (v16 > 0x13)
    {
      *v15 = *v13;
      *v13 = v15;
    }

    else
    {
      v17 = v13[v16];
      *v15 = v17;
      if (v11 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v11;
      }

      if (!v17)
      {
        v11 = v18;
      }

      v13[v16] = v15;
    }

    v19 = v14 > v16;
    v14 += ~v16;
    if (!v19)
    {
      v14 = 0;
    }
  }

  while (v8);
LABEL_35:
  *v7 = v11;
  v7[2] = v14;
  v20 = v7[3];
  if (v20)
  {
    pthread_mutex_unlock((v20 + 8));
  }

  if (v10)
  {
    v21 = MEMORY[0x277D85F48];
    do
    {
      v22 = *v10;
      MEMORY[0x253031720](*v21, v10, ((*(v10 + 4) << 12) + 4096));
      v10 = v22;
    }

    while (v22);
  }

  if (v7[4] == p)
  {

    apr_allocator_destroy(v7);
  }
}

uint64_t free_proc_chain(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = result;
  do
  {
    result = apr_proc_wait(*v2, 0, 0, APR_NOWAIT);
    if (result != 70006)
    {
      *(v2 + 8) = 0;
    }

    v2 = *(v2 + 16);
  }

  while (v2);
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if (v4 == 1)
    {
      result = apr_proc_kill(*v3, 9);
    }

    else if (v4 == 4 || v4 == 2)
    {
      result = apr_proc_kill(*v3, 15);
      if (!result)
      {
        LODWORD(v2) = 1;
      }
    }

    v3 = *(v3 + 16);
  }

  while (v3);
  v6 = v1;
  if (!v2)
  {
    goto LABEL_29;
  }

  v11 = xmmword_24D6A93F0;
  result = select(0, 0, 0, 0, &v11);
  v7 = 46875;
  while (2)
  {
    v8 = 0;
    v9 = v1;
    do
    {
      v10 = v8;
      if (*(v9 + 8) == 2)
      {
        v8 = 1;
        result = apr_proc_wait(*v9, 0, 0, APR_NOWAIT);
        if (result == 70006)
        {
          goto LABEL_24;
        }

        *(v9 + 8) = 0;
      }

      v8 = v10;
LABEL_24:
      v9 = *(v9 + 16);
    }

    while (v9);
    if (v8 && v7 <= 0x2DC6BF)
    {
      *&v11 = v7 / 0xF4240;
      *(&v11 + 1) = v7 % 0xF4240;
      result = select(0, 0, 0, 0, &v11);
      v7 *= 2;
      continue;
    }

    break;
  }

  v6 = v1;
  do
  {
LABEL_29:
    if (*(v6 + 8) == 2)
    {
      result = apr_proc_kill(*v6, 9);
    }

    v6 = *(v6 + 16);
  }

  while (v6);
  do
  {
    if (*(v1 + 8))
    {
      result = apr_proc_wait(*v1, 0, 0, APR_WAIT);
    }

    v1 = *(v1 + 16);
  }

  while (v1);
  return result;
}

void apr_allocator_destroy(apr_allocator_t *allocator)
{
  v1 = 0;
  v2 = allocator + 40;
  v3 = MEMORY[0x277D85F48];
  do
  {
    while (1)
    {
      v4 = *&v2[8 * v1];
      if (!v4)
      {
        break;
      }

      *&v2[8 * v1] = *v4;
      v5 = (*(v4 + 16) << 12);
      MEMORY[0x253031720](*v3);
    }

    ++v1;
  }

  while (v1 != 20);
  v6 = *v3;

  JUMPOUT(0x253031720);
}

apr_status_t apr_allocator_create(apr_allocator_t **allocator)
{
  *allocator = 0;
  v2 = GTCoreAlloc(allocator, 0xC8uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  *(v3 + 192) = 0;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *allocator = v3;
  return result;
}

void apr_allocator_max_free_set(apr_allocator_t *allocator, apr_size_t size)
{
  v4 = *(allocator + 3);
  if (v4)
  {
    pthread_mutex_lock((v4 + 8));
  }

  v5 = (size + 4095) >> 12;
  v6 = *(allocator + 2) + v5 - *(allocator + 1);
  *(allocator + 1) = v5;
  *(allocator + 2) = v6;
  if (v6 > v5)
  {
    *(allocator + 2) = v5;
  }

  if (v4)
  {

    pthread_mutex_unlock((v4 + 8));
  }
}

unint64_t apr_allocator_align(uint64_t a1, unint64_t a2)
{
  v2 = 0x2000;
  if (a2 + 4135 >= 0x2000)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) >= a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t **allocator_alloc(uint64_t a1, unint64_t a2)
{
  if (a2 + 4135 >= 0x2000)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v2 = 0x2000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) < a2 || v2 == 0)
  {
    return 0;
  }

  v4 = v2 >> 12;
  v5 = (v2 >> 12) - 1;
  if (HIDWORD(v5))
  {
    return 0;
  }

  v7 = a1;
  v8 = *(a1 + 24);
  if (v8)
  {
    a1 = pthread_mutex_lock((v8 + 8));
  }

  v10 = (v7 + 5);
  v9 = *v7;
  if (v5 <= *v7)
  {
    v13 = &v10[v5];
    v6 = *v13;
    v14 = *v13 == 0;
    v15 = v5 < v9;
    if (*v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 >= v9;
    }

    if (!v16)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v6 = v17;
        v14 = v17 == 0;
        v15 = v4 < v9;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4 >= v9;
        }

        ++v4;
      }

      while (!v18);
    }

    if (v14)
    {
      goto LABEL_28;
    }

    v21 = *v6;
    *v13 = *v6;
    if (v21 == 0 && !v15)
    {
      v22 = v13 - 1;
      do
      {
        if (*v22--)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 == 1;
        }

        --v9;
      }

      while (!v24);
      *v7 = v9;
    }

    v12 = (*(v6 + 4) + 1);
LABEL_41:
    v25 = v7[2] + v12;
    if (v25 >= v7[1])
    {
      v25 = v7[1];
    }

    v7[2] = v25;
    v26 = v7[3];
    if (v26)
    {
      pthread_mutex_unlock((v26 + 8));
    }

    goto LABEL_45;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_28;
  }

  v11 = *(v6 + 4);
  if (v5 <= v11)
  {
LABEL_17:
    *v10 = *v6;
    v12 = (v11 + 1);
    goto LABEL_41;
  }

  while (1)
  {
    v10 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v11 = *(v6 + 4);
    if (v5 <= v11)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  v19 = v7[3];
  if (v19)
  {
    a1 = pthread_mutex_unlock((v19 + 8));
  }

  v20 = GTCoreAlloc(a1, v2);
  v6 = v20;
  if (v20)
  {
    *(v20 + 16) = v5;
    *(v20 + 32) = v20 + v2;
LABEL_45:
    *v6 = 0;
    v6[3] = (v6 + 5);
  }

  return v6;
}

void apr_allocator_free(apr_allocator_t *allocator, apr_memnode_t *memnode)
{
  v4 = *(allocator + 3);
  if (v4)
  {
    pthread_mutex_lock((v4 + 8));
  }

  v5 = 0;
  v6 = *allocator;
  v7 = *(allocator + 1);
  v8 = (allocator + 40);
  v9 = *(allocator + 2);
  do
  {
    while (1)
    {
      v10 = memnode;
      memnode = memnode->next;
      index = v10->index;
      if (!v7 || v9 > index)
      {
        break;
      }

      v10->next = v5;
      v5 = v10;
      if (!memnode)
      {
        goto LABEL_19;
      }
    }

    if (index > 0x13)
    {
      v10->next = *v8;
      *v8 = v10;
    }

    else
    {
      v12 = v8[index];
      v10->next = v12;
      if (v6 <= index)
      {
        v13 = index;
      }

      else
      {
        v13 = v6;
      }

      if (!v12)
      {
        v6 = v13;
      }

      v8[index] = v10;
    }

    v14 = v9 > index;
    v9 += ~index;
    if (!v14)
    {
      v9 = 0;
    }
  }

  while (memnode);
LABEL_19:
  *allocator = v6;
  *(allocator + 2) = v9;
  v15 = *(allocator + 3);
  if (v15)
  {
    pthread_mutex_unlock((v15 + 8));
  }

  if (v5)
  {
    v16 = MEMORY[0x277D85F48];
    do
    {
      next = v5->next;
      MEMORY[0x253031720](*v16, v5, (v5->index << 12) + 4096);
      v5 = next;
    }

    while (next);
  }
}

apr_status_t apr_pool_initialize(void)
{
  if (apr_pools_shared_initialized)
  {
    return 0;
  }

  if (apr_pools_initialized++)
  {
    return 0;
  }

  global_allocator = 0;
  v4 = GTCoreAlloc(v0, 0xC8uLL);
  if (v4)
  {
    *(v4 + 192) = 0;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    global_allocator = v4;
    apr_allocator_max_free_set(v4, 0x8000000uLL);
    v5 = apr_pool_create_ex(&global_pool, 0, 0, global_allocator);
    if (v5)
    {
      v2 = v5;
      apr_allocator_destroy(global_allocator);
      global_allocator = 0;
      apr_pools_initialized = 0;
    }

    else
    {
      v6 = global_pool;
      *(global_pool + 80) = "apr_global_pool";
      v2 = apr_atomic_init(v6);
      if (!v2)
      {
        mutex = 0;
        v2 = apr_thread_mutex_create(&mutex, 0, global_pool);
        if (!v2)
        {
          v7 = global_allocator;
          v8 = global_pool;
          *(global_allocator + 24) = mutex;
          *(v7 + 32) = v8;
        }
      }
    }
  }

  else
  {
    apr_pools_initialized = 0;
    return 12;
  }

  return v2;
}

apr_status_t apr_pool_create_ex(apr_pool_t **newpool, apr_pool_t *parent, apr_abortfunc_t abort_fn, apr_allocator_t *allocator)
{
  v4 = allocator;
  v5 = abort_fn;
  *newpool = 0;
  if (parent)
  {
    v7 = parent;
  }

  else
  {
    v7 = global_pool;
  }

  if (!abort_fn && v7)
  {
    v5 = *(v7 + 8);
  }

  if (!allocator)
  {
    v4 = *(v7 + 6);
  }

  v8 = allocator_alloc(v4, 0x1FD8uLL);
  if (v8)
  {
    *v8 = v8;
    v8[1] = v8;
    v9 = v8[3];
    v8[3] = v9 + 15;
    v9[12] = v8;
    v9[13] = (v9 + 15);
    v9[14] = 0;
    v9[6] = v4;
    v9[7] = 0;
    v9[4] = 0;
    v9[5] = 0;
    v9[10] = 0;
    v9[11] = v8;
    v9[8] = v5;
    v9[9] = 0;
    *v9 = v7;
    v9[1] = 0;
    if (v7)
    {
      v10 = *(*(v7 + 6) + 24);
      if (v10)
      {
        pthread_mutex_lock((v10 + 8));
      }

      v13 = *(v7 + 1);
      v12 = (v7 + 8);
      v11 = v13;
      v9[2] = v13;
      if (v13)
      {
        *(v11 + 24) = v9 + 2;
      }

      *v12 = v9;
      v9[3] = v12;
      if (v10)
      {
        pthread_mutex_unlock((v10 + 8));
      }
    }

    else
    {
      v9[2] = 0;
      v9[3] = 0;
    }

    v14 = 0;
    *newpool = v9;
  }

  else
  {
    v14 = 12;
    if (v5)
    {
      (v5)(12);
    }
  }

  return v14;
}

uint64_t apr_pool_shared_initialize(uint64_t a1)
{
  apr_pools_initialized = 1;
  apr_pools_shared_initialized = 1;
  global_pool = a1;
  global_allocator = *(a1 + 48);
  return 0;
}

void apr_pool_terminate(void)
{
  if ((apr_pools_shared_initialized & 1) == 0 && apr_pools_initialized && !--apr_pools_initialized)
  {
    apr_pool_destroy(global_pool);
    global_pool = 0;
    global_allocator = 0;
  }
}

void *__cdecl apr_palloc(apr_pool_t *p, apr_size_t size)
{
  v3 = (size + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 < size)
  {
LABEL_2:
    v4 = *(p + 8);
    if (v4)
    {
      v4(12);
    }

    return 0;
  }

  v6 = *(p + 11);
  result = v6[3];
  if (v3 <= v6[4] - result)
  {
    v6[3] = (result + v3);
    return result;
  }

  v7 = *v6;
  if (v3 <= (*v6)[4] - (*v6)[3])
  {
    v8 = *v7;
    *v7[1] = *v7;
    v8[1] = v7[1];
  }

  else
  {
    v7 = allocator_alloc(*(p + 6), (size + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  *(v7 + 5) = 0;
  result = v7[3];
  v7[3] = (result + v3);
  v9 = v6[1];
  v7[1] = v9;
  *v9 = v7;
  *v7 = v6;
  v6[1] = v7;
  *(p + 11) = v7;
  v10 = (v6[4] - v6[3]) >> 12;
  *(v6 + 5) = v10;
  if (v10 < *(*v6 + 5))
  {
    v11 = *v6;
    do
    {
      v11 = *v11;
    }

    while (*(v11 + 5) > v10);
    *v7 = *v6;
    (*v6)[1] = v6[1];
    v12 = v11[1];
    v6[1] = v12;
    *v12 = v6;
    *v6 = v11;
    v11[1] = v6;
  }

  return result;
}

void *apr_pcalloc(apr_pool_t *a1, apr_size_t a2)
{
  v3 = apr_palloc(a1, a2);
  v4 = v3;
  if (v3)
  {
    bzero(v3, a2);
  }

  return v4;
}

void apr_pool_clear(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v3 = *(p + 1);
    if (!v3)
    {
      break;
    }

    apr_pool_destroy(v3);
  }

  v5 = (p + 32);
  v4 = *(p + 4);
  if (v4)
  {
    do
    {
      *v5 = *v4;
      (*(v4 + 16))(*(v4 + 8));
      v4 = *v5;
    }

    while (*v5);
  }

  *v5 = 0;
  *(p + 5) = 0;
  free_proc_chain(*(p + 7));
  *(p + 7) = 0;
  *(p + 9) = 0;
  v7 = *(p + 12);
  v6 = *(p + 13);
  *(p + 11) = v7;
  *(v7 + 24) = v6;
  if (*v7 != v7)
  {
    **(v7 + 8) = 0;
    v8 = *(p + 6);
    v9 = *v7;
    v10 = v8[3];
    if (v10)
    {
      pthread_mutex_lock((v10 + 8));
    }

    v11 = 0;
    v12 = *v8;
    v13 = v8[1];
    v14 = v8 + 5;
    v15 = v8[2];
    do
    {
      while (1)
      {
        v16 = v9;
        v9 = *v9;
        v17 = *(v16 + 4);
        if (!v13 || v15 > v17)
        {
          break;
        }

        *v16 = v11;
        v11 = v16;
        if (!v9)
        {
          goto LABEL_27;
        }
      }

      if (v17 > 0x13)
      {
        *v16 = *v14;
        *v14 = v16;
      }

      else
      {
        v18 = v14[v17];
        *v16 = v18;
        if (v12 <= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v12;
        }

        if (!v18)
        {
          v12 = v19;
        }

        v14[v17] = v16;
      }

      v20 = v15 > v17;
      v15 += ~v17;
      if (!v20)
      {
        v15 = 0;
      }
    }

    while (v9);
LABEL_27:
    *v8 = v12;
    v8[2] = v15;
    v21 = v8[3];
    if (v21)
    {
      pthread_mutex_unlock((v21 + 8));
    }

    if (v11)
    {
      v22 = MEMORY[0x277D85F48];
      do
      {
        v23 = *v11;
        MEMORY[0x253031720](*v22, v11, ((*(v11 + 4) << 12) + 4096));
        v11 = v23;
      }

      while (v23);
    }

    *v7 = v7;
    *(v7 + 8) = v7;
  }
}

apr_status_t apr_pool_create_unmanaged_ex(apr_pool_t **newpool, apr_abortfunc_t abort_fn, apr_allocator_t *allocator)
{
  *newpool = 0;
  if (!apr_pools_initialized)
  {
    return 20002;
  }

  v6 = allocator;
  if (!allocator)
  {
    v7 = GTCoreAlloc(newpool, 0xC8uLL);
    if (!v7)
    {
      goto LABEL_10;
    }

    v6 = v7;
    *(v7 + 192) = 0;
    *(v7 + 160) = 0u;
    *(v7 + 176) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  v8 = allocator_alloc(v6, 0x1FD8uLL);
  if (v8)
  {
    *v8 = v8;
    v8[1] = v8;
    v9 = v8[3];
    v8[3] = v9 + 15;
    v9[12] = v8;
    v9[13] = (v9 + 15);
    v9[14] = 0;
    v9[6] = v6;
    v9[7] = 0;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    v9[10] = 0;
    v9[11] = v8;
    v9[8] = abort_fn;
    v9[9] = 0;
    if (!allocator)
    {
      *(v6 + 4) = v9;
    }

    v10 = 0;
    *newpool = v9;
    return v10;
  }

LABEL_10:
  v10 = 12;
  if (abort_fn)
  {
    (abort_fn)(12);
  }

  return v10;
}

char *__cdecl apr_pvsprintf(apr_pool_t *p, const char *fmt, va_list ap)
{
  v51 = 0;
  v52 = 0;
  v49 = *(p + 11);
  v50 = p;
  v6 = *(v49 + 32);
  v48.curpos = *(v49 + 24);
  v48.endpos = v6 - 1;
  if (v48.curpos == v6 && psprintf_flush(&v48) == -1 || apr_vformatter(psprintf_flush, &v48, fmt, ap) == -1)
  {
    v31 = *(p + 8);
    if (v31)
    {
      v31(12);
    }

    if (v51)
    {
      v32 = v49;
      *v49 = v52;
      v33 = *(p + 6);
      v34 = v33[3];
      if (v34)
      {
        pthread_mutex_lock((v34 + 8));
      }

      v35 = 0;
      v36 = *v33;
      v37 = v33[1];
      v38 = v33 + 5;
      v39 = v33[2];
      do
      {
        while (1)
        {
          v40 = v32;
          v32 = *v32;
          v41 = *(v40 + 4);
          if (!v37 || v39 > v41)
          {
            break;
          }

          *v40 = v35;
          v35 = v40;
          if (!v32)
          {
            goto LABEL_54;
          }
        }

        if (v41 > 0x13)
        {
          *v40 = *v38;
          *v38 = v40;
        }

        else
        {
          v42 = v38[v41];
          *v40 = v42;
          if (v36 <= v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v36;
          }

          if (!v42)
          {
            v36 = v43;
          }

          v38[v41] = v40;
        }

        v21 = v39 > v41;
        v39 += ~v41;
        if (!v21)
        {
          v39 = 0;
        }
      }

      while (v32);
LABEL_54:
      *v33 = v36;
      v33[2] = v39;
      v44 = v33[3];
      if (v44)
      {
        pthread_mutex_unlock((v44 + 8));
      }

      if (v35)
      {
        v45 = MEMORY[0x277D85F48];
        do
        {
          v46 = *v35;
          MEMORY[0x253031720](*v45, v35, ((*(v35 + 4) << 12) + 4096));
          v35 = v46;
        }

        while (v46);
      }
    }

    return 0;
  }

  else
  {
    v7 = v48.curpos++;
    *v7 = 0;
    v8 = *(v49 + 24);
    *(v49 + 24) = &v8[(v48.curpos - v8 + 7) & 0xFFFFFFFFFFFFFFF8];
    v9 = v52;
    if (v52)
    {
      v10 = *(p + 6);
      v11 = v10[3];
      if (v11)
      {
        pthread_mutex_lock((v11 + 8));
      }

      v12 = 0;
      v13 = *v10;
      v14 = v10[1];
      v15 = v10 + 5;
      v16 = v10[2];
      do
      {
        while (1)
        {
          v17 = v9;
          v9 = *v9;
          v18 = *(v17 + 4);
          if (!v14 || v16 > v18)
          {
            break;
          }

          *v17 = v12;
          v12 = v17;
          if (!v9)
          {
            goto LABEL_23;
          }
        }

        if (v18 > 0x13)
        {
          *v17 = *v15;
          *v15 = v17;
        }

        else
        {
          v19 = v15[v18];
          *v17 = v19;
          if (v13 <= v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = v13;
          }

          if (!v19)
          {
            v13 = v20;
          }

          v15[v18] = v17;
        }

        v21 = v16 > v18;
        v16 += ~v18;
        if (!v21)
        {
          v16 = 0;
        }
      }

      while (v9);
LABEL_23:
      *v10 = v13;
      v10[2] = v16;
      v22 = v10[3];
      if (v22)
      {
        pthread_mutex_unlock((v22 + 8));
      }

      if (v12)
      {
        v23 = MEMORY[0x277D85F48];
        do
        {
          v24 = *v12;
          MEMORY[0x253031720](*v23, v12, ((*(v12 + 4) << 12) + 4096));
          v12 = v24;
        }

        while (v24);
      }
    }

    if (v51)
    {
      v25 = *(p + 11);
      v26 = v49;
      *(v49 + 20) = 0;
      v27 = v25[1];
      v26[1] = v27;
      *v27 = v26;
      *v26 = v25;
      v25[1] = v26;
      *(p + 11) = v26;
      v28 = (v25[4] - v25[3]) >> 12;
      *(v25 + 5) = v28;
      if (v28 < *(*v25 + 20))
      {
        v29 = *v25;
        do
        {
          v29 = *v29;
        }

        while (*(v29 + 5) > v28);
        *v26 = *v25;
        *(*v25 + 8) = v25[1];
        v30 = v29[1];
        v25[1] = v30;
        *v30 = v25;
        *v25 = v29;
        v29[1] = v25;
      }
    }
  }

  return v8;
}

uint64_t psprintf_flush(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1 - *(v3 + 24);
  if (2 * v4 <= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = 2 * v4;
  }

  if (!*(a1 + 32))
  {
    v6 = *v3;
    if (v5 <= *(*v3 + 32) - *(*v3 + 24))
    {
      v10 = *v6;
      *v6[1] = *v6;
      v10[1] = v6[1];
      v11 = *(v3 + 8);
      v6[1] = v11;
      *v11 = v6;
      *v6 = v3;
      *(v3 + 8) = v6;
      *(v6 + 5) = 0;
      *(v2 + 88) = v6;
      v12 = (*(v3 + 32) - *(v3 + 24)) >> 12;
      *(v3 + 20) = v12;
      if (v12 < *(*v3 + 20))
      {
        v13 = *v3;
        do
        {
          v13 = *v13;
        }

        while (*(v13 + 5) > v12);
        *v6 = *v3;
        *(*v3 + 8) = *(v3 + 8);
        v14 = v13[1];
        *(v3 + 8) = v14;
        *v14 = v3;
        *v3 = v13;
        v13[1] = v3;
        v6 = *(v2 + 88);
      }

      goto LABEL_10;
    }
  }

  v7 = allocator_alloc(*(v2 + 48), v5);
  if (v7)
  {
    v6 = v7;
    if (*(a1 + 32))
    {
      *v3 = *(a1 + 40);
      *(a1 + 40) = v3;
    }

    *(a1 + 32) = 1;
LABEL_10:
    memcpy(v6[3], *(v3 + 24), v4);
    result = 0;
    *(a1 + 16) = v6;
    v9 = v6[4] - 1;
    *a1 = v6[3] + v4;
    *(a1 + 8) = v9;
    return result;
  }

  return 0xFFFFFFFFLL;
}

int apr_pool_is_ancestor(apr_pool_t *a, apr_pool_t *b)
{
  if (a)
  {
    if (!b)
    {
      return 0;
    }

    while (b != a)
    {
      b = *b;
      if (!b)
      {
        return 0;
      }
    }
  }

  return 1;
}

apr_status_t apr_pool_userdata_set(const void *data, const char *key, apr_status_t (__cdecl *cleanup)(void *), apr_pool_t *pool)
{
  v8 = *(pool + 9);
  if (!v8)
  {
    v8 = apr_hash_make(pool);
    *(pool + 9) = v8;
  }

  v9 = *find_entry(v8, key, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (v9 && *(v9 + 32))
  {
    v10 = *(pool + 9);
    v11 = key;
  }

  else
  {
    v12 = strlen(key);
    v13 = apr_palloc(pool, v12 + 1);
    memcpy(v13, key, v12 + 1);
    v10 = *(pool + 9);
    v11 = v13;
  }

  apr_hash_set(v10, v11, -1, data);
  if (cleanup)
  {
    v14 = *(pool + 5);
    if (v14)
    {
      *(pool + 5) = *v14;
    }

    else
    {
      v14 = apr_palloc(pool, 0x20uLL);
    }

    v14[2] = cleanup;
    v14[3] = cleanup;
    *v14 = *(pool + 4);
    v14[1] = data;
    *(pool + 4) = v14;
  }

  return 0;
}

void apr_pool_cleanup_register(apr_pool_t *p, const void *data, apr_status_t (__cdecl *plain_cleanup)(void *), apr_status_t (__cdecl *child_cleanup)(void *))
{
  if (p)
  {
    v8 = *(p + 5);
    if (v8)
    {
      *(p + 5) = *v8;
    }

    else
    {
      v8 = apr_palloc(p, 0x20uLL);
    }

    v8[2] = plain_cleanup;
    v8[3] = child_cleanup;
    *v8 = *(p + 4);
    v8[1] = data;
    *(p + 4) = v8;
  }
}

apr_status_t apr_pool_userdata_setn(const void *data, const char *key, apr_status_t (__cdecl *cleanup)(void *), apr_pool_t *pool)
{
  v8 = *(pool + 9);
  if (!v8)
  {
    v8 = apr_hash_make(pool);
    *(pool + 9) = v8;
  }

  apr_hash_set(v8, key, -1, data);
  if (cleanup)
  {
    v9 = *(pool + 5);
    if (v9)
    {
      *(pool + 5) = *v9;
    }

    else
    {
      v9 = apr_palloc(pool, 0x20uLL);
    }

    v9[2] = cleanup;
    v9[3] = cleanup;
    *v9 = *(pool + 4);
    v9[1] = data;
    *(pool + 4) = v9;
  }

  return 0;
}

apr_status_t apr_pool_userdata_get(void **data, const char *key, apr_pool_t *pool)
{
  v4 = *(pool + 9);
  if (v4)
  {
    v5 = *find_entry(v4, key, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (v5)
    {
      v5 = v5[4];
    }
  }

  else
  {
    v5 = 0;
  }

  *data = v5;
  return 0;
}

void apr_pool_pre_cleanup_register(apr_pool_t *p, const void *data, apr_status_t (__cdecl *plain_cleanup)(void *))
{
  if (p)
  {
    v6 = *(p + 5);
    if (v6)
    {
      *(p + 5) = *v6;
    }

    else
    {
      v6 = apr_palloc(p, 0x20uLL);
    }

    v6[2] = plain_cleanup;
    *v6 = *(p + 14);
    v6[1] = data;
    *(p + 14) = v6;
  }
}

void apr_pool_cleanup_kill(apr_pool_t *p, const void *data, apr_status_t (__cdecl *cleanup)(void *))
{
  if (p)
  {
    v3 = (p + 32);
    v4 = *(p + 4);
    if (v4)
    {
      while (1)
      {
        v5 = v4;
        if (v4[1] == data && v4[2] == cleanup)
        {
          break;
        }

        v4 = *v4;
        v3 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      *v3 = *v4;
      *v4 = *(p + 5);
      *(p + 5) = v4;
    }

LABEL_8:
    v6 = (p + 112);
    v7 = *(p + 14);
    if (v7)
    {
      while (1)
      {
        v8 = v7;
        if (v7[1] == data && v7[2] == cleanup)
        {
          break;
        }

        v7 = *v7;
        v6 = v8;
        if (!*v8)
        {
          return;
        }
      }

      *v6 = *v7;
      *v7 = *(p + 5);
      *(p + 5) = v7;
    }
  }
}

void apr_pool_child_cleanup_set(apr_pool_t *p, const void *data, apr_status_t (__cdecl *plain_cleanup)(void *), apr_status_t (__cdecl *child_cleanup)(void *))
{
  if (p)
  {
    v4 = *(p + 4);
    if (v4)
    {
      while (v4[1] != data || v4[2] != plain_cleanup)
      {
        v4 = *v4;
        if (!v4)
        {
          return;
        }
      }

      v4[3] = child_cleanup;
    }
  }
}

apr_status_t apr_pool_cleanup_run(apr_pool_t *p, void *data, apr_status_t (__cdecl *cleanup)(void *))
{
  apr_pool_cleanup_kill(p, data, cleanup);

  return (cleanup)(data);
}

uint64_t cleanup_pool_for_exec(uint64_t result)
{
  v1 = result;
  for (i = *(result + 32); i; i = *(v1 + 32))
  {
    *(v1 + 32) = *i;
    result = (*(i + 24))(*(i + 8));
  }

  for (j = *(v1 + 8); j; j = *(j + 16))
  {
    result = cleanup_pool_for_exec(j);
  }

  return result;
}

void apr_pool_note_subprocess(apr_pool_t *a, apr_proc_t *proc, apr_kill_conditions_e how)
{
  v6 = apr_palloc(a, 0x18uLL);
  *v6 = proc;
  v6[2] = how;
  *(v6 + 2) = *(a + 7);
  *(a + 7) = v6;
}

void *__cdecl apr_pcalloc_debug(apr_pool_t *p, apr_size_t size, const char *file_line)
{
  v4 = apr_palloc(p, size);
  v5 = v4;
  if (v4)
  {
    bzero(v4, size);
  }

  return v5;
}

apr_status_t apr_procattr_create(apr_procattr_t **new_attr, apr_pool_t *cont)
{
  v4 = apr_palloc(cont, 0x88uLL);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *(v5 + 120) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 8) = 0u;
    *new_attr = v5;
    *v5 = cont;
    v7 = *new_attr;
    *(v7 + 16) = 1;
    *(v7 + 116) = -1;
  }

  else
  {
    *new_attr = 0;
    return 12;
  }

  return result;
}

apr_status_t apr_procattr_dir_set(apr_procattr_t *attr, const char *dir)
{
  v3 = apr_pstrdup(*attr, dir);
  *(attr + 7) = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

apr_status_t apr_proc_fork(apr_proc_t *proc, apr_pool_t *cont)
{
  *&proc->pid = 0u;
  *&proc->out = 0u;
  v3 = fork();
  if (v3 < 0)
  {
    return *__error();
  }

  v4 = 70001;
  if (v3)
  {
    proc->pid = v3;
    return 70002;
  }

  else
  {
    proc->pid = getpid();
    apr_random_after_fork(proc);
  }

  return v4;
}

apr_status_t apr_proc_wait(apr_proc_t *proc, int *exitcode, apr_exit_why_e *exitwhy, apr_wait_how_e waithow)
{
  v14 = 0;
  if (waithow)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  while (1)
  {
    v8 = waitpid(proc->pid, &v14, v7);
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return *__error();
    }
  }

  v10 = v8;
  result = 70005;
  if (!v10)
  {
    return 70006;
  }

  proc->pid = v10;
  v11 = BYTE1(v14);
  v12 = v14 & 0x7F;
  if (v12 == 127)
  {
    return 20014;
  }

  if ((v14 & 0x7F) != 0)
  {
    if (exitwhy)
    {
      if ((v14 & 0x80) != 0)
      {
        v13 = APR_PROC_SIGNAL_CORE|APR_PROC_SIGNAL;
      }

      else
      {
        v13 = APR_PROC_SIGNAL;
      }

      *exitwhy = v13;
    }
  }

  else
  {
    if (exitwhy)
    {
      *exitwhy = APR_PROC_EXIT;
    }

    v12 = v11;
  }

  if (exitcode)
  {
    *exitcode = v12;
  }

  return result;
}

uint64_t apr_procattr_perms_set_register(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = apr_palloc(*a1, 0x20uLL);
  v8[3] = a3;
  *(v8 + 4) = a4;
  *v8 = *(a1 + 128);
  v8[1] = a2;
  *(a1 + 128) = v8;
  return 0;
}

void apr_random_init(apr_random_t *g, apr_pool_t *p, apr_crypto_hash_t *pool_hash, apr_crypto_hash_t *key_hash, apr_crypto_hash_t *prng_hash)
{
  *g = p;
  *(g + 1) = pool_hash;
  *(g + 7) = key_hash;
  *(g + 8) = prng_hash;
  *(g + 4) = 32;
  v7 = apr_palloc(p, 0x200uLL);
  *(g + 3) = v7;
  v8 = *(g + 4);
  if (v8)
  {
    bzero(v7, 16 * v8);
  }

  *(g + 4) = 0;
  *(g + 5) = 2 * *(*(g + 1) + 24) * (((2 * *(*(g + 1) + 24) + 1023) / *(*(g + 1) + 24)) >> 1);
  *(g + 6) = 32;
  v9 = *(*(g + 8) + 24);
  v10 = *(*(g + 7) + 24);
  v11 = apr_palloc(p, v10 + v9);
  v12 = v11;
  if (v11)
  {
    bzero(v11, v10 + v9);
  }

  *(g + 9) = v12;
  v13 = *(*(g + 8) + 24);
  v14 = *(*(g + 7) + 24);
  v15 = apr_palloc(p, v14 + v13);
  v16 = v15;
  if (v15)
  {
    bzero(v15, v14 + v13);
  }

  *(g + 10) = v16;
  *(g + 11) = apr_palloc(p, *(*(g + 8) + 24));
  *(g + 12) = 0;
  *(g + 28) = 0;
  *(g + 13) = 0x14000000020;
  *(g + 116) &= 0xFCu;
  *(g + 15) = all_random;
  all_random = g;
  v17 = *(p + 5);
  if (v17)
  {
    *(p + 5) = *v17;
  }

  else
  {
    v17 = apr_palloc(p, 0x20uLL);
  }

  v17[1] = g;
  v17[2] = random_cleanup;
  v17[3] = apr_pool_cleanup_null;
  *v17 = *(p + 4);
  *(p + 4) = v17;
}

uint64_t random_cleanup(uint64_t a1)
{
  v1 = all_random;
  if (all_random)
  {
    if (all_random == a1)
    {
      v3 = &all_random;
LABEL_7:
      *v3 = *(v1 + 120);
    }

    else
    {
      while (1)
      {
        v2 = v1;
        v1 = *(v1 + 120);
        if (!v1)
        {
          break;
        }

        if (v1 == a1)
        {
          v3 = (v2 + 120);
          goto LABEL_7;
        }
      }
    }
  }

  return 0;
}

void apr_random_after_fork(apr_proc_t *proc)
{
  for (i = all_random; i; i = *(i + 120))
  {
    pid = proc->pid;
    if ((*(i + 116) & 3) == 1)
    {
      v4 = 80;
    }

    else
    {
      v4 = 72;
    }

    v5 = *(i + v4);
    v6 = proc->pid;
    mix_pid(i);
    if (v5 != *(i + 72))
    {
      mix_pid(i);
    }

    --*(i + 36);
    *(i + 96) = 0;
  }
}

uint64_t mix_pid(uint64_t a1)
{
  (**(a1 + 56))();
  v2 = *(a1 + 56);
  v3 = *(v2 + 24) + *(*(a1 + 64) + 24);
  (*(v2 + 8))();
  (*(*(a1 + 56) + 8))();
  return (*(*(a1 + 56) + 16))();
}

void apr_random_add_entropy(apr_random_t *g, const void *entropy_, apr_size_t bytes)
{
  if (bytes)
  {
    v6 = 0;
    for (i = 0; i < bytes; v6 = ++i)
    {
      v8 = *(g + 8);
      v9 = *(g + 3) + 16 * v8;
      if (v8 + 1 == *(g + 4))
      {
        v10 = 0;
      }

      else
      {
        v10 = v8 + 1;
      }

      *(g + 8) = v10;
      v11 = *(v9 + 8);
      v12 = v11 + 1;
      if (*(v9 + 12) >= v11 + 1)
      {
        v13 = *v9;
      }

      else
      {
        v13 = apr_palloc(*g, 2 * v12);
        memcpy(v13, *v9, *(v9 + 8));
        *v9 = v13;
        v11 = *(v9 + 8);
        *(v9 + 12) = 2 * v11 + 2;
        v12 = v11 + 1;
      }

      v14 = *(entropy_ + v6);
      *(v9 + 8) = v12;
      *(v13 + v11) = v14;
      v15 = *(v9 + 8);
      if (*(g + 5) == v15)
      {
        if (v15 >= 2)
        {
          v16 = 0;
          v17 = *(g + 1);
          do
          {
            (*v17)();
            v18 = *(g + 1);
            v19 = *v9 + 2 * v16;
            v20 = 2 * *(v18 + 24);
            (*(v18 + 8))();
            v21 = *v9 + v16;
            (*(*(g + 1) + 16))();
            v17 = *(g + 1);
            v16 += *(v17 + 24);
            v22 = *(v9 + 8);
          }

          while (v16 < v22 >> 1);
          v15 = v22 >> 1;
        }

        else
        {
          LODWORD(v15) = v15 >> 1;
        }

        *(v9 + 8) = v15;
      }
    }
  }

  if (*(g + 6) <= *(*(g + 3) + 8))
  {
    v23 = 72;
    if ((*(g + 116) & 3) == 1)
    {
      v23 = 80;
    }

    v24 = *(g + v23);
    (**(g + 7))();
    v25 = *(g + 7);
    v26 = *(v25 + 24) + *(*(g + 8) + 24);
    (*(v25 + 8))();
    if (*(g + 4))
    {
      v27 = 0;
      v28 = 0;
      v29 = -1;
      do
      {
        if (v28 && ((*(g + 9) >> v29) & 1) == 0)
        {
          break;
        }

        v30 = (*(g + 3) + v27);
        v31 = *v30;
        v32 = *(v30 + 2);
        (*(*(g + 7) + 8))();
        *(*(g + 3) + v27 + 8) = 0;
        ++v28;
        ++v29;
        v27 += 16;
      }

      while (v28 < *(g + 4));
    }

    v33 = *(*(g + 8) + 24);
    (*(*(g + 7) + 16))();
    v34 = *(g + 9) + 1;
    *(g + 9) = v34;
    v35 = *(g + 116);
    if ((v35 & 1) != 0 || v34 <= *(g + 26))
    {
      v36 = *(g + 116);
      if ((v36 & 2) != 0)
      {
        return;
      }
    }

    else
    {
      v36 = v35 | 1;
      *(g + 116) = v35 | 1;
      if ((v35 & 2) == 0)
      {
        memcpy(*(g + 10), *(g + 9), *(*(g + 7) + 24) + *(*(g + 8) + 24));
        v34 = *(g + 9);
        *(g + 28) = v34;
        v36 = *(g + 116);
      }

      if ((v36 & 2) != 0)
      {
        return;
      }
    }

    if (v34 > *(g + 27) + *(g + 28))
    {
      *(g + 116) = v36 | 2;
      v37 = *(g + 9);
      v38 = *(g + 10);
      v39 = *(*(g + 7) + 24) + *(*(g + 8) + 24);

      memcpy(v37, v38, v39);
    }
  }
}

apr_status_t apr_random_secure_bytes(apr_random_t *g, void *random, apr_size_t bytes)
{
  if ((*(g + 116) & 2) == 0)
  {
    return 20028;
  }

  apr_random_bytes(g, random, bytes);
  return 0;
}

void *apr_random_bytes(void *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = 0;
    v7 = result[12];
    do
    {
      v8 = v5[8];
      if (v7)
      {
        v9 = *(v8 + 24);
      }

      else
      {
        v10 = v5[11];
        (*v8)();
        v11 = v5[8];
        v12 = v5[9];
        v13 = *(v5[7] + 24) + *(v11 + 24);
        (*(v11 + 8))();
        v14 = v5[9];
        (*(v5[8] + 16))();
        (*v5[8])();
        (*(v5[8] + 8))(v5[8], v5[9], *(v5[8] + 24));
        (*(v5[8] + 16))();
        v9 = *(v5[8] + 24);
        v5[12] = v9;
        v7 = v9;
      }

      if (a3 - v6 >= v7)
      {
        v15 = v7;
      }

      else
      {
        v15 = a3 - v6;
      }

      result = memcpy((a2 + v6), (v5[11] + v9 - v7), v15);
      v7 = v5[12] - v15;
      v5[12] = v7;
      v6 += v15;
    }

    while (v6 < a3);
  }

  return result;
}

apr_status_t apr_random_insecure_bytes(apr_random_t *g, void *random, apr_size_t bytes)
{
  if ((*(g + 116) & 1) == 0)
  {
    return 20028;
  }

  apr_random_bytes(g, random, bytes);
  return 0;
}

apr_status_t apr_random_secure_ready(apr_random_t *r)
{
  if ((*(r + 116) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return 20028;
  }
}

apr_status_t apr_random_insecure_ready(apr_random_t *r)
{
  if (*(r + 116))
  {
    return 0;
  }

  else
  {
    return 20028;
  }
}

int apr_vformatter(int (__cdecl *flush_func)(apr_vformatter_buff_t *), apr_vformatter_buff_t *c, const char *fmt, va_list ap)
{
  v5 = c;
  v6 = flush_func;
  v166 = 0;
  v167 = 0;
  v7 = 0;
  p_n_4 = 0;
  v9 = 0;
  v184 = *MEMORY[0x277D85DE8];
  v174 = 0;
  v175 = ap;
  v172 = 0;
  curpos = c->curpos;
  endpos = c->endpos;
  while (1)
  {
    LOBYTE(v11) = *fmt;
LABEL_3:
    if (v11 == 37)
    {
      break;
    }

    if (!v11)
    {
      v5->curpos = curpos;
      goto LABEL_424;
    }

    if (curpos)
    {
      v40 = endpos;
      if (curpos >= endpos)
      {
        v5->curpos = curpos;
        if ((v6)(v5))
        {
          goto LABEL_422;
        }

        curpos = v5->curpos;
        v40 = v5->endpos;
        LOBYTE(v11) = *fmt;
      }

      *curpos++ = v11;
    }

    else
    {
      v40 = endpos;
    }

    endpos = v40;
    ++v9;
LABEL_420:
    ++fmt;
  }

  v13 = *++fmt;
  v12 = v13;
  if (v13 < 0)
  {
    if (__maskrune(v12, 0x1000uLL))
    {
LABEL_6:
      v170 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      v18 = 32;
      v19 = 1;
      goto LABEL_39;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x1000) != 0)
  {
    goto LABEL_6;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v19 = 1;
  v18 = 32;
  while (1)
  {
    v20 = *fmt;
    if (v20 <= 0x2A)
    {
      break;
    }

    switch(v20)
    {
      case '0':
        v18 = 48;
        break;
      case '-':
        v19 = 0;
        break;
      case '+':
        v15 = 1;
        break;
      default:
        goto LABEL_21;
    }

LABEL_20:
    ++fmt;
  }

  if (v20 == 32)
  {
    v14 = 1;
    goto LABEL_20;
  }

  if (v20 == 35)
  {
    v16 = 1;
    goto LABEL_20;
  }

LABEL_21:
  if (v20 - 48 > 9)
  {
    if (v20 == 42)
    {
      v23 = v175;
      v175 += 8;
      v24 = *v23;
      v25 = *++fmt;
      v20 = v25;
      if (v24 >= 0)
      {
        v7 = v24;
      }

      else
      {
        v19 = 0;
        v7 = -v24;
      }

      goto LABEL_29;
    }

    v170 = 0;
  }

  else
  {
    v7 = *fmt - 48;
    v21 = *++fmt;
    v20 = v21;
    if (v21 - 48 <= 9)
    {
      do
      {
        v7 = 10 * v7 + v20 - 48;
        v22 = *++fmt;
        v20 = v22;
      }

      while (v22 - 48 < 0xA);
    }

LABEL_29:
    v170 = 1;
  }

  if (v20 == 46)
  {
    v26 = *(fmt + 1);
    if ((v26 - 48) > 9)
    {
      v17 = 0;
      if (v26 == 42)
      {
        v36 = v175;
        v175 += 8;
        fmt += 2;
        v167 = *v36 & ~(*v36 >> 31);
      }

      else
      {
        v167 = 0;
        ++fmt;
      }
    }

    else
    {
      v28 = *(fmt + 2);
      fmt += 2;
      v27 = v28;
      v167 = v26 - 48;
      if ((v28 - 48) <= 9)
      {
        v29 = v26 - 48;
        do
        {
          v30 = *++fmt;
          v29 = 10 * v29 + v27 - 48;
          v27 = v30;
        }

        while ((v30 - 48) < 0xA);
        v167 = v29;
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_39:
  v31 = 0;
  v11 = *fmt;
  v32 = 1;
  if (v11 == 113 || v11 == 108)
  {
LABEL_43:
    v33 = v31;
    v34 = *++fmt;
    v11 = v34;
    v31 = v32;
  }

  else
  {
    if (v11 == 104)
    {
      v32 = 0;
      v31 = 1;
      goto LABEL_43;
    }

    v33 = 0;
  }

  v171 = v19;
  if (v11 <= 102)
  {
    if (v11 <= 68)
    {
      v6 = flush_func;
      if (v11)
      {
        if (v11 == 37)
        {
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          LOBYTE(v92) = 37;
          goto LABEL_211;
        }

LABEL_189:
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        v173[0] = 37;
        v173[1] = *fmt;
        v93 = 2;
LABEL_212:
        v174 = v93;
        p_n_4 = v173;
LABEL_340:
        v18 = 32;
LABEL_377:
        v103 = endpos;
        goto LABEL_378;
      }

      goto LABEL_3;
    }

    if (v11 <= 98)
    {
      if (v11 != 69)
      {
        if (v11 != 71)
        {
          if (v11 != 88)
          {
            goto LABEL_189;
          }

          goto LABEL_133;
        }

        goto LABEL_107;
      }

LABEL_91:
      v44 = v175;
      v175 += 8;
      v45 = *v44;
      if (fabs(*v44) == INFINITY)
      {
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        v174 = 3;
        p_n_4 = "inf";
        goto LABEL_377;
      }

      v46 = *fmt;
      if (v17)
      {
        v47 = 6;
      }

      else
      {
        v47 = v167;
      }

      __n = 0;
      v163 = v46;
      v165 = v5;
      if (v46 == 102)
      {
        v48 = v47;
        v49 = 0;
      }

      else
      {
        v48 = v47 + 1;
        v49 = 1;
      }

      apr_cvt(v48, &__n, &v172, v49, buf, v45);
      v104 = buf[0];
      if ((buf[0] & 0x8000000000000000) != 0)
      {
        if (!__maskrune(buf[0], 0x100uLL))
        {
          goto LABEL_253;
        }

LABEL_218:
        v174 = strlen(buf);
        p_n_4 = __n_5;
        __memcpy_chk();
        v172 = 0;
        v19 = v171;
      }

      else
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * buf[0] + 60) & 0x100) != 0)
        {
          goto LABEL_218;
        }

LABEL_253:
        v126 = v163;
        if (v163 == 102)
        {
          v127 = __n;
          if (__n < 1)
          {
            __n_5[0] = 48;
            if (v47 < 1)
            {
              v19 = v171;
              if (v16)
              {
                __n_6 = 46;
                v128 = buf;
                p_n_6 = __n_7;
              }

              else
              {
                v128 = buf;
                p_n_6 = &__n_6;
              }
            }

            else
            {
              __n_6 = 46;
              p_n_6 = __n_7;
              v19 = v171;
              if (__n < 0)
              {
                v147 = ~__n;
                memset(__n_7, 48, v147 + 1);
                v126 = 102;
                v19 = v171;
                p_n_6 = &__n_7[v147 + 1];
              }

              __n = 1;
              v128 = buf;
            }
          }

          else
          {
            memcpy(__n_5, buf, __n);
            v128 = &buf[v127];
            p_n_6 = &__n_5[v127];
            __n = -1;
            if (v16 || v47 > 0)
            {
              *p_n_6++ = 46;
            }

            v19 = v171;
            v126 = 102;
          }
        }

        else
        {
          __n_5[0] = v104;
          v19 = v171;
          if (v16 || (p_n_6 = &__n_6, v128 = &buf[1], v47 >= 1))
          {
            __n_6 = 46;
            p_n_6 = __n_7;
            v128 = &buf[1];
          }
        }

        v148 = *v128;
        if (*v128)
        {
          v149 = (v128 + 1);
          do
          {
            *p_n_6++ = v148;
            v150 = *v149++;
            v148 = v150;
          }

          while (v150);
        }

        if (v126 != 102)
        {
          *p_n_6 = v126;
          v151 = __n;
          v152 = --__n;
          if (__n)
          {
            if (v152 >= 0)
            {
              v153 = v152;
            }

            else
            {
              v153 = -v152;
            }

            v154 = -1;
            v155 = v182;
            do
            {
              v156 = v154;
              *--v155 = v153 % 0xA + 48;
              --v154;
              v61 = v153 > 9;
              v153 /= 0xAu;
            }

            while (v61);
            if (v151 <= 0)
            {
              v157 = 45;
            }

            else
            {
              v157 = 43;
            }

            p_n_6[1] = v157;
            if (v182 - v155 == 1)
            {
              p_n_6[2] = 48;
              p_n_6 += 3;
            }

            else
            {
              p_n_6 += 2;
            }

            do
            {
              *p_n_6++ = v182[v156];
              v39 = __CFADD__(v156++, 1);
            }

            while (!v39);
          }

          else
          {
            *(p_n_6 + 1) = 12331;
            p_n_6[3] = 48;
            p_n_6 += 4;
          }
        }

        v174 = p_n_6 - __n_5;
        p_n_4 = __n_5;
        if (v172)
        {
LABEL_371:
          v105 = 45;
LABEL_372:
          v103 = endpos;
          goto LABEL_373;
        }
      }

LABEL_219:
      if (v15)
      {
        v105 = 43;
      }

      else
      {
        v105 = 32 * (v14 != 0);
      }

      goto LABEL_372;
    }

    if ((v11 - 101) < 2)
    {
      goto LABEL_91;
    }

    if (v11 == 99)
    {
      LOBYTE(v73) = 0;
      LOBYTE(v16) = 0;
      v101 = v175;
      v175 += 8;
      v92 = *v101;
LABEL_211:
      v173[0] = v92;
      v93 = 1;
      goto LABEL_212;
    }

    if (v11 != 100)
    {
      goto LABEL_189;
    }

LABEL_84:
    if (v31)
    {
      v41 = v175;
      v175 += 8;
      v42 = v17;
      v43 = conv_10_quad(*v41, 0, &v172, &v181[3], &v174);
      v19 = v171;
      p_n_4 = v43;
      if (v42)
      {
        goto LABEL_208;
      }

LABEL_204:
      v100 = 511;
      if (v167 + 1 < 0x200)
      {
        v100 = v167;
      }

      for (; v174 < v100; ++v174)
      {
        *--p_n_4 = 48;
      }
    }

    else
    {
      v97 = v175;
      v175 += 8;
      v98 = *v97;
      if (v33)
      {
        v98 = v98;
      }

      v99 = v98 >> 31;
      if ((v98 & 0x80000000) != 0)
      {
        v98 = -v98;
      }

      v172 = v99;
      p_n_4 = &v181[3];
      do
      {
        *--p_n_4 = v98 % 0xA + 48;
        v61 = v98 > 9;
        v98 /= 0xAu;
      }

      while (v61);
      v174 = &v181[3] - p_n_4;
      if ((v17 & 1) == 0)
      {
        goto LABEL_204;
      }
    }

LABEL_208:
    v165 = v5;
    if (v172)
    {
      goto LABEL_371;
    }

    goto LABEL_219;
  }

  if (v11 > 111)
  {
    if (v11 > 114)
    {
      if (v11 == 115)
      {
        v95 = v175;
        v175 += 8;
        p_n_4 = *v95;
        if (*v95)
        {
          if (v17)
          {
            v96 = strlen(*v95);
            v19 = v171;
            LOBYTE(v73) = 0;
            LOBYTE(v16) = 0;
            v174 = v96;
          }

          else
          {
            v174 = 0;
            LOBYTE(v73) = v167;
            if (v167)
            {
              v145 = 0;
              while (p_n_4[v145])
              {
                v174 = ++v145;
                v18 = 32;
                if (v167 == v145)
                {
                  goto LABEL_327;
                }
              }

              LOBYTE(v73) = 0;
            }

            else
            {
              v167 = 0;
            }

            LOBYTE(v16) = 0;
          }

          goto LABEL_340;
        }

        LOBYTE(v73) = 0;
        goto LABEL_305;
      }

      if (v11 != 120)
      {
        if (v11 != 117)
        {
          goto LABEL_189;
        }

        if (v31)
        {
          v50 = v175;
          v175 += 8;
          v51 = v17;
          v52 = conv_10_quad(*v50, 1, &v172, &v181[3], &v174);
          v19 = v171;
          p_n_4 = v52;
          if ((v51 & 1) == 0)
          {
            goto LABEL_102;
          }

LABEL_273:
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          goto LABEL_377;
        }

        v135 = v175;
        v175 += 8;
        v136 = *v135;
        if (v33)
        {
          v136 = v136;
        }

        v172 = 0;
        p_n_4 = &v181[3];
        do
        {
          *--p_n_4 = v136 % 0xA + 48;
          v61 = v136 > 9;
          v136 /= 0xAu;
        }

        while (v61);
        v174 = &v181[3] - p_n_4;
        if (v17)
        {
          goto LABEL_273;
        }

LABEL_102:
        v53 = 511;
        if (v167 + 1 < 0x200)
        {
          v53 = v167;
        }

        for (; v174 < v53; ++v174)
        {
          *--p_n_4 = 48;
        }

LABEL_327:
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        goto LABEL_377;
      }

LABEL_133:
      if (v31)
      {
        v66 = v175;
        v175 += 8;
        v67 = *v66;
        v68 = "0123456789abcdef";
        if (*fmt == 88)
        {
          v68 = "0123456789ABCDEF";
        }

        if (HIDWORD(v67))
        {
          p_n_4 = &v181[3];
          do
          {
            *--p_n_4 = v68[v67 & 0xF];
            v39 = v67 >= 0x10;
            v67 >>= 4;
          }

          while (v39);
        }

        else
        {
          p_n_4 = &v181[3];
          do
          {
            *--p_n_4 = v68[v67 & 0xF];
            v39 = v67 >= 0x10;
            LODWORD(v67) = v67 >> 4;
          }

          while (v39);
        }
      }

      else
      {
        v88 = v175;
        v175 += 8;
        v89 = *v88;
        v90 = v89;
        if (!v33)
        {
          v90 = v89;
        }

        v91 = "0123456789abcdef";
        if (*fmt == 88)
        {
          v91 = "0123456789ABCDEF";
        }

        p_n_4 = &v181[3];
        v166 = v90;
        do
        {
          *--p_n_4 = v91[v90 & 0xF];
          v61 = v90 > 0xF;
          v90 >>= 4;
        }

        while (v61);
      }

      v174 = &v181[3] - p_n_4;
      if ((v17 & 1) == 0)
      {
        v123 = 511;
        if (v167 + 1 < 0x200)
        {
          v123 = v167;
        }

        if (&v181[3] - p_n_4 < v123)
        {
          do
          {
            *--p_n_4 = 48;
            ++v174;
          }

          while (v174 < v123);
        }
      }

      LOBYTE(v73) = 0;
      if (!v16 || !v166)
      {
        LOBYTE(v16) = 0;
        goto LABEL_377;
      }

      LOBYTE(v73) = 0;
      LOBYTE(v16) = 0;
      v124 = *fmt;
      *(p_n_4 - 2) = 48;
      p_n_4 -= 2;
      p_n_4[1] = v124;
      v125 = v174 + 2;
LABEL_250:
      v174 = v125;
      goto LABEL_377;
    }

    if (v11 != 112)
    {
      goto LABEL_189;
    }

    v35 = *++fmt;
    v11 = v35;
    v6 = flush_func;
    if (v35)
    {
      if (v11 <= 82)
      {
        if (v11 > 69)
        {
          if (v11 == 70)
          {
            goto LABEL_158;
          }

          if (v11 != 73)
          {
            goto LABEL_239;
          }

          v72 = v175;
          v175 += 8;
          v73 = *v72;
          if (!v73)
          {
            goto LABEL_305;
          }

          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          p_n_4 = 0;
          v74 = v174;
        }

        else
        {
          if (v11 != 65)
          {
            if (v11 != 66)
            {
              goto LABEL_239;
            }

            goto LABEL_158;
          }

          v106 = v175;
          v175 += 8;
          v73 = *v106;
          if (!v73)
          {
            goto LABEL_305;
          }

          v107 = bswap32(*v73);
          v108 = v107;
          v109 = v181;
          v110 = &v181[2];
          v111 = &v181[4];
          do
          {
            v112 = v110;
            v113 = v109;
            *(v111 - 2) = v108 % 0xA + 48;
            --v111;
            --v110;
            --v109;
            v61 = v108 > 9;
            v108 /= 0xAu;
          }

          while (v61);
          *(v111 - 2) = 46;
          v114 = BYTE1(v107);
          do
          {
            v115 = v113;
            *(v112 - 2) = v114 % 0xA + 48;
            --v112;
            --v113;
            v61 = v114 > 9;
            v114 /= 0xAu;
          }

          while (v61);
          *(v112 - 2) = 46;
          v116 = BYTE2(v107);
          do
          {
            *(v115 - 2) = v116 % 0xA + 48;
            --v115;
            v61 = v116 > 9;
            v116 /= 0xAu;
          }

          while (v61);
          *(v115 - 2) = 46;
          p_n_4 = v115 - 2;
          v117 = HIBYTE(v107);
          do
          {
            *--p_n_4 = v117 % 0xA + 48;
            v61 = v117 > 9;
            v117 /= 0xAu;
          }

          while (v61);
LABEL_332:
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v74 = (&v181[3] - p_n_4);
        }

        v78 = v167;
        if (v167 >= v74)
        {
          v78 = v74;
        }

        v79 = v17 == 0;
        goto LABEL_336;
      }

      if (v11 > 108)
      {
        if (v11 == 109)
        {
          v118 = v175;
          v175 += 8;
          v119 = *v118;
          if (v119)
          {
            p_n_4 = &__n_4;
            apr_strerror(*v119, &__n_4, 0x1FFuLL);
            v120 = strlen(&__n_4);
            v19 = v171;
          }

          else
          {
            v120 = 6;
            p_n_4 = "(null)";
          }

          v103 = endpos;
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v174 = v120;
          v18 = 32;
          goto LABEL_378;
        }

        if (v11 != 116)
        {
          if (v11 == 112)
          {
            v37 = v175;
            v175 += 8;
            v38 = *v37;
            if (HIDWORD(v38))
            {
              p_n_4 = &v181[3];
              do
              {
                *--p_n_4 = conv_p2_low_digits[v38 & 0xF];
                v61 = v38 > 0xF;
                v38 >>= 4;
              }

              while (v61);
            }

            else
            {
              p_n_4 = &v181[3];
              do
              {
                *--p_n_4 = conv_p2_low_digits[v38 & 0xF];
                v39 = v38 >= 0x10;
                LODWORD(v38) = v38 >> 4;
              }

              while (v39);
            }

            LOBYTE(v73) = 0;
            LOBYTE(v16) = 0;
            v74 = (&v181[3] - p_n_4);
LABEL_339:
            v174 = v74;
            goto LABEL_340;
          }

LABEL_239:
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v174 = 8;
          v175 += 8;
          p_n_4 = "bogus %p";
          goto LABEL_377;
        }

        v121 = v175;
        v175 += 8;
        v73 = *v121;
        if (v73)
        {
          v122 = *v73;
          if (HIDWORD(v122))
          {
            p_n_4 = &v181[3];
            do
            {
              *--p_n_4 = conv_p2_low_digits[v122 & 0xF];
              v61 = v122 > 0xF;
              v122 >>= 4;
            }

            while (v61);
          }

          else
          {
            p_n_4 = &v181[3];
            do
            {
              *--p_n_4 = conv_p2_low_digits[v122 & 0xF];
              v39 = v122 >= 0x10;
              LODWORD(v122) = v122 >> 4;
            }

            while (v39);
          }

          goto LABEL_332;
        }

LABEL_305:
        LOBYTE(v16) = 0;
        v174 = 6;
        v18 = 32;
        p_n_4 = "(null)";
        goto LABEL_377;
      }

      if (v11 != 83)
      {
        if (v11 != 84)
        {
          goto LABEL_239;
        }

        v75 = v175;
        v175 += 8;
        v73 = *v75;
        if (!v73)
        {
          goto LABEL_305;
        }

        v76 = v17;
        v77 = conv_10_quad(*v73, 1, buf, &v181[3], &v174);
        v19 = v171;
        p_n_4 = v77;
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        v74 = v174;
        v78 = v167;
        if (v167 >= v174)
        {
          v78 = v174;
        }

        v79 = v76 == 0;
LABEL_336:
        if (v79)
        {
          v74 = v78;
        }

        goto LABEL_339;
      }

LABEL_158:
      v80 = v175;
      v175 += 8;
      v81 = *v80;
      if (v11 == 66)
      {
        if (v81)
        {
          v82 = *v81;
LABEL_214:
          p_n_4 = buf;
          apr_strfsize(v82, buf);
          v102 = strlen(buf);
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v174 = v102;
          v18 = 32;
          v103 = endpos;
          v19 = v171;
          goto LABEL_378;
        }
      }

      else if (v81)
      {
        v82 = *v81;
        goto LABEL_214;
      }

      v82 = 0;
      goto LABEL_214;
    }

    goto LABEL_3;
  }

  if (v11 > 109)
  {
    if (v11 == 110)
    {
      LOBYTE(v73) = 0;
      if (v31)
      {
        v94 = v175;
        v175 += 8;
        **v94 = v9;
      }

      else
      {
        v130 = v175;
        v175 += 8;
        if (v33)
        {
          **v130 = v9;
        }

        else
        {
          **v130 = v9;
        }
      }

      LOBYTE(v16) = 1;
      goto LABEL_377;
    }

    if (v31)
    {
      v69 = v175;
      v175 += 8;
      v70 = *v69;
      v71 = "0123456789abcdef";
      if (*fmt == 88)
      {
        v71 = "0123456789ABCDEF";
      }

      if (HIDWORD(v70))
      {
        p_n_4 = &v181[3];
        do
        {
          *--p_n_4 = v71[v70 & 7];
          v39 = v70 >= 8;
          v70 >>= 3;
        }

        while (v39);
      }

      else
      {
        p_n_4 = &v181[3];
        do
        {
          *--p_n_4 = v71[v70 & 7];
          v39 = v70 >= 8;
          LODWORD(v70) = v70 >> 3;
        }

        while (v39);
      }
    }

    else
    {
      v131 = v175;
      v175 += 8;
      v132 = *v131;
      v133 = v132;
      if (!v33)
      {
        v133 = v132;
      }

      v134 = "0123456789abcdef";
      if (*fmt == 88)
      {
        v134 = "0123456789ABCDEF";
      }

      p_n_4 = &v181[3];
      v166 = v133;
      do
      {
        *--p_n_4 = v134[v133 & 7];
        v61 = v133 > 7;
        v133 >>= 3;
      }

      while (v61);
    }

    v174 = &v181[3] - p_n_4;
    if ((v17 & 1) == 0)
    {
      v146 = 511;
      if (v167 + 1 < 0x200)
      {
        v146 = v167;
      }

      if (&v181[3] - p_n_4 < v146)
      {
        do
        {
          *--p_n_4 = 48;
          ++v174;
        }

        while (v174 < v146);
      }
    }

    if (!v16)
    {
      LOBYTE(v73) = 0;
      goto LABEL_377;
    }

    if (*p_n_4 == 48)
    {
      goto LABEL_327;
    }

    LOBYTE(v73) = 0;
    LOBYTE(v16) = 0;
    *--p_n_4 = 48;
    v125 = v174 + 1;
    goto LABEL_250;
  }

  if (v11 != 103)
  {
    if (v11 != 105)
    {
      goto LABEL_189;
    }

    goto LABEL_84;
  }

LABEL_107:
  v165 = v5;
  v54 = v167;
  if (v167 <= 1)
  {
    v54 = 1;
  }

  if (v17)
  {
    v55 = 6;
  }

  else
  {
    v55 = v54;
  }

  v56 = v175;
  v175 += 8;
  v57 = *v56;
  *&v181[3] = 0;
  __n = 0;
  v167 = v55;
  apr_cvt(v55, &__n, &v181[3], 1, buf, v57);
  v58 = __n_5;
  if (*&v181[3])
  {
    __n_5[0] = 45;
    v58 = &__n_6;
  }

  LODWORD(v59) = v167;
  if (v167 >= 2)
  {
    v59 = v167 & 0x7FFFFFFF;
    while (v182[v59 + 1] == 48)
    {
      if (v59-- <= 2)
      {
        LODWORD(v59) = 1;
        break;
      }
    }
  }

  v60 = __n;
  v61 = __n < 0 || __n - v59 <= 4;
  v62 = !v61;
  if (__n >= -3 && v62 == 0)
  {
    if (__n <= 0)
    {
      if (buf[0] != 48)
      {
        *v58++ = 46;
      }

      if (v60 < 0)
      {
        do
        {
          __n = v60 + 1;
          *v58++ = 48;
          v60 = __n;
        }

        while (__n < 0);
      }

      else
      {
        v60 = 0;
      }
    }

    if (v59 >= 1)
    {
      v83 = v59;
      v84 = buf;
      v85 = 1;
      do
      {
        v86 = *v84++;
        *v58 = v86;
        if (v85 == __n)
        {
          v58[1] = 46;
          v58 += 2;
        }

        else
        {
          ++v58;
        }

        ++v85;
        --v83;
      }

      while (v83);
      v60 = __n;
    }

    if (v59 < v60)
    {
      do
      {
        v87 = v58;
        LODWORD(v59) = v59 + 1;
        *v58++ = 48;
      }

      while (v59 < __n);
      *v58 = 46;
      v58 = v87 + 2;
    }
  }

  else
  {
    --__n;
    *v58 = buf[0];
    v64 = v58 + 2;
    v58[1] = 46;
    if (v59 > 1)
    {
      v164 = v60;
      memcpy(v64, &buf[1], (v59 - 1));
      v60 = v164;
      v64 = &v58[(v59 + 1)];
    }

    *v64 = 101;
    if (v60 < 1)
    {
      __n = 1 - v60;
      v65 = 45;
    }

    else
    {
      v65 = 43;
    }

    v64[1] = v65;
    v137 = __n;
    if (__n < 100)
    {
      v138 = v64 + 2;
    }

    else
    {
      v138 = v64 + 3;
      v64[2] = __n / 0x64u + 48;
      v137 = __n;
    }

    if (v137 >= 10)
    {
      *v138++ = ((103 * (v137 % 0x64u)) >> 10) | 0x30;
      v137 = __n;
    }

    *v138 = v137 % 10 + 48;
    v58 = v138 + 1;
  }

  v139 = v58 - 1;
  if (*(v58 - 1) != 46 || v16 != 0)
  {
    v139 = v58;
  }

  *v139 = 0;
  v141 = 32 * (v14 != 0);
  if (v15)
  {
    v141 = 43;
  }

  if (__n_5[0] == 45)
  {
    v105 = 45;
  }

  else
  {
    v105 = v141;
  }

  if (__n_5[0] == 45)
  {
    p_n_4 = &__n_6;
  }

  else
  {
    p_n_4 = __n_5;
  }

  v142 = strlen(p_n_4);
  v174 = v142;
  if (v16)
  {
    v143 = v142;
    if (!strchr(p_n_4, 46))
    {
      v174 = v143 + 1;
      *&p_n_4[v143] = 46;
    }
  }

  if (*fmt == 71)
  {
    v144 = strchr(p_n_4, 101);
    if (v144)
    {
      *v144 = 69;
    }
  }

  v103 = endpos;
  v19 = v171;
LABEL_373:
  LOBYTE(v16) = 0;
  LOBYTE(v73) = v105 != 0;
  if (v105)
  {
    if (p_n_4 != "(null)")
    {
      LOBYTE(v16) = 0;
      *--p_n_4 = v105;
      ++v174;
      LOBYTE(v73) = 1;
    }

    v5 = v165;
    goto LABEL_377;
  }

  v5 = v165;
LABEL_378:
  v158 = v174;
  if (!v170 || v19 != 1)
  {
    v6 = flush_func;
LABEL_398:
    if (v158)
    {
      v160 = v16;
    }

    else
    {
      v160 = 1;
    }

    if ((v160 & 1) == 0)
    {
      v9 += v158;
      do
      {
        if (curpos)
        {
          if (curpos >= v103)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              goto LABEL_422;
            }

            curpos = v5->curpos;
            v103 = v5->endpos;
            v19 = v171;
          }

          *curpos++ = *p_n_4;
        }

        ++p_n_4;
        --v158;
      }

      while (v158);
      v158 = v174;
    }

    if (v170 && !v19)
    {
      while (v7 > v158)
      {
        if (curpos)
        {
          if (curpos >= v103)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              goto LABEL_422;
            }

            curpos = v5->curpos;
            v103 = v5->endpos;
          }

          *curpos++ = v18;
          v158 = v174;
        }

        ++v9;
        --v7;
      }
    }

    endpos = v103;
    goto LABEL_420;
  }

  v6 = flush_func;
  if (v7 <= v174)
  {
    goto LABEL_398;
  }

  v159 = v73 ^ 1;
  if (v18 != 48)
  {
    v159 = 1;
  }

  if (v159)
  {
    do
    {
LABEL_390:
      if (curpos)
      {
        if (curpos >= v103)
        {
          v5->curpos = curpos;
          if ((flush_func)(v5))
          {
            goto LABEL_422;
          }

          curpos = v5->curpos;
          v103 = v5->endpos;
          v19 = v171;
        }

        *curpos++ = v18;
        v158 = v174;
      }

      ++v9;
      --v7;
    }

    while (v7 > v158);
    goto LABEL_398;
  }

  if (!curpos)
  {
    goto LABEL_389;
  }

  if (curpos < v103)
  {
    goto LABEL_388;
  }

  v5->curpos = curpos;
  if (!(flush_func)(v5))
  {
    curpos = v5->curpos;
    v103 = v5->endpos;
    v19 = v171;
LABEL_388:
    *curpos++ = *p_n_4;
    v158 = v174;
LABEL_389:
    ++v9;
    ++p_n_4;
    v174 = --v158;
    --v7;
    goto LABEL_390;
  }

LABEL_422:
  v9 = -1;
LABEL_424:
  v161 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t conv_10_quad(unint64_t a1, int a2, _DWORD *a3, uint64_t a4, void *a5)
{
  if ((HIDWORD(a1) || !a2) && (a1 != a1 || a2))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = -a1;
    }

    if (a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = a1 >> 63;
    }

    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = v10;
    }

    *a3 = v11;
    result = a4;
    do
    {
      *--result = v12 % 0xA + 48;
      v13 = v12 > 9;
      v12 /= 0xAuLL;
    }

    while (v13);
  }

  else
  {
    if ((a1 & 0x80000000) == 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = -a1;
    }

    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = (a1 >> 31) & 1;
    }

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5;
    }

    *a3 = v6;
    result = a4;
    do
    {
      *--result = v7 % 0xA + 48;
      v9 = v7 >= 0xA;
      v7 /= 0xAu;
    }

    while (v9);
  }

  *a5 = a4 - result;
  return result;
}

char *apr_cvt(int a1, int *a2, _DWORD *a3, int a4, char *a5, long double a6)
{
  if (a1 >= 78)
  {
    v9 = 78;
  }

  else
  {
    v9 = a1;
  }

  *a3 = 0;
  if (a6 < 0.0)
  {
    *a3 = 1;
    a6 = -a6;
  }

  v31 = 0.0;
  __y = 0.0;
  v10 = modf(a6, &__y);
  v11 = v10;
  v12 = __y;
  if (__y == 0.0)
  {
    if (v10 > 0.0)
    {
      v13 = 1;
      do
      {
        v21 = v11;
        v11 = v11 * 10.0;
        --v13;
      }

      while (v11 < 1.0);
      v19 = 0;
      v31 = v11;
      v11 = v21;
      goto LABEL_20;
    }

    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 80;
    v15 = 1;
    do
    {
      v16 = v14;
      v17 = v15;
      v18 = modf(v12 / 10.0, &__y);
      ++v13;
      v14 = v16 - 1;
      a5[v16 - 1] = ((v18 + 0.03) * 10.0) + 48;
      if (v16 == 1)
      {
        break;
      }

      v12 = __y;
      v15 = v17 + 1;
    }

    while (__y != 0.0);
    v31 = v18;
    if (v16 <= 80)
    {
      v19 = 81 - v16;
      v20 = a5;
      do
      {
        *v20 = v20[v14];
        ++v20;
        --v17;
      }

      while (v17);
      goto LABEL_20;
    }
  }

  v19 = 0;
LABEL_20:
  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22 + v9;
  if (v23 < 0)
  {
    *a2 = -v9;
    v27 = a5;
  }

  else
  {
    *a2 = v13;
    if (v19 <= v23 && v19 <= 0x4F)
    {
      do
      {
        v11 = modf(v11 * 10.0, &v31);
        a5[v19] = v31 + 48;
        if (v19 >= v23)
        {
          break;
        }
      }

      while (v19++ < 0x4F);
    }

    if (v23 >= 80)
    {
      v27 = a5 + 79;
    }

    else
    {
      v25 = &a5[v23];
      v26 = (a5[v23] + 5);
      a5[v23] += 5;
      if (v26 < 58)
      {
        v27 = &a5[v23];
      }

      else
      {
        v27 = &a5[v23];
        do
        {
          *v25 = 48;
          if (v25 <= a5)
          {
            *v25 = 49;
            ++*a2;
            if (!a4)
            {
              if (v27 > a5)
              {
                *v27 = 48;
              }

              ++v27;
            }

            v29 = *v25;
          }

          else
          {
            v28 = *--v25;
            v29 = v28 + 1;
            *v25 = v28 + 1;
          }
        }

        while (v29 > 57);
      }
    }
  }

  *v27 = 0;
  return a5;
}

int apr_snprintf(char *buf, apr_size_t len, const char *format, ...)
{
  va_start(va, format);
  v4 = &buf[len - 1];
  if (len)
  {
    v5 = buf;
  }

  else
  {
    v5 = 0;
  }

  if (!len)
  {
    v4 = 0;
  }

  c.curpos = v5;
  c.endpos = v4;
  va_copy(v8, va);
  result = apr_vformatter(snprintf_flush, &c, format, va);
  if (len)
  {
    *c.curpos = 0;
  }

  if (result == -1)
  {
    return len - 1;
  }

  return result;
}

int apr_vsnprintf(char *buf, apr_size_t len, const char *format, va_list ap)
{
  v4 = len;
  if (len)
  {
    v6.curpos = buf;
    v6.endpos = &buf[len - 1];
    result = apr_vformatter(snprintf_flush, &v6, format, ap);
    *v6.curpos = 0;
  }

  else
  {
    v6.curpos = 0;
    v6.endpos = 0;
    result = apr_vformatter(snprintf_flush, &v6, format, ap);
  }

  if (result == -1)
  {
    return v4 - 1;
  }

  return result;
}

char *__cdecl apr_pstrdup(apr_pool_t *p, const char *s)
{
  if (!s)
  {
    return 0;
  }

  v4 = strlen(s);
  v5 = apr_palloc(p, v4 + 1);

  return memcpy(v5, s, v4 + 1);
}

void *__cdecl apr_pmemdup(apr_pool_t *p, const void *m, apr_size_t n)
{
  if (!m)
  {
    return 0;
  }

  v5 = apr_palloc(p, n);

  return memcpy(v5, m, n);
}

char *__cdecl apr_pstrndup(apr_pool_t *p, const char *s, apr_size_t n)
{
  if (!s)
  {
    return 0;
  }

  v3 = n;
  v6 = memchr(s, 0, n);
  if (v6)
  {
    v3 = v6 - s;
  }

  v7 = apr_palloc(p, v3 + 1);
  memcpy(v7, s, v3);
  *(v7 + v3) = 0;
  return v7;
}

char *__cdecl apr_pstrmemdup(apr_pool_t *p, const char *s, apr_size_t n)
{
  if (!s)
  {
    return 0;
  }

  v5 = apr_palloc(p, n + 1);
  memcpy(v5, s, n);
  *(v5 + n) = 0;
  return v5;
}

char *apr_pstrcat(apr_pool_t *p, ...)
{
  va_start(va, p);
  __s = va_arg(va, char *);
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  va_copy(v17, va);
  v2 = __s;
  if (__s)
  {
    v3 = 0;
    v4 = 0;
    v5 = __s;
    do
    {
      v6 = strlen(v5);
      if (v4 <= 5)
      {
        *(v19 + v4++) = v6;
      }

      v3 += v6;
      v7 = va_arg(v17, const char *);
      v5 = v7;
    }

    while (v7);
    v8 = v3 + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = apr_palloc(p, v8);
  v10 = v9;
  va_copy(v18, va);
  v11 = v9;
  if (__s)
  {
    v12 = 0;
    v11 = v9;
    do
    {
      if (v12 > 5)
      {
        v13 = strlen(v2);
      }

      else
      {
        v13 = *(v19 + v12++);
      }

      memcpy(v11, v2, v13);
      v11 += v13;
      v14 = v18;
      v18 += 8;
      v2 = *v14;
    }

    while (*v14);
  }

  *v11 = 0;
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

char *__cdecl apr_pstrcatv(apr_pool_t *p, const iovec *vec, apr_size_t nvec, apr_size_t *nbytes)
{
  v4 = nvec;
  v5 = vec;
  v6 = 0;
  if (nvec)
  {
    p_iov_len = &vec->iov_len;
    v8 = nvec;
    do
    {
      v9 = *p_iov_len;
      p_iov_len += 2;
      v6 += v9;
      --v8;
    }

    while (v8);
  }

  if (nbytes)
  {
    *nbytes = v6;
  }

  v10 = apr_palloc(p, v6 + 1);
  v11 = v10;
  v12 = v10;
  if (v4)
  {
    v12 = v10;
    do
    {
      memcpy(v12, v5->iov_base, v5->iov_len);
      v12 += v5->iov_len;
      ++v5;
      --v4;
    }

    while (v4);
  }

  *v12 = 0;
  return v11;
}

apr_status_t apr_strtoff(apr_off_t *offset, const char *buf, char **end, int base)
{
  *__error() = 0;
  *offset = strtol(buf, end, base);
  return *__error();
}

apr_int64_t apr_strtoi64(const char *buf, char **end, int base)
{
  *__error() = 0;

  return strtol(buf, end, base);
}

apr_int64_t apr_atoi64(const char *buf)
{
  *__error() = 0;

  return strtol(buf, 0, 10);
}

char *__cdecl apr_itoa(apr_pool_t *p, int n)
{
  v3 = apr_palloc(p, 0xEuLL);
  if (n >= 0)
  {
    v4 = n;
  }

  else
  {
    v4 = -n;
  }

  v3[13] = 0;
  v5 = v3 + 14;
  do
  {
    *(v5 - 2) = (v4 % 0xA) | 0x30;
    result = v5 - 2;
    --v5;
    v7 = v4 > 9;
    v4 /= 0xAu;
  }

  while (v7);
  if (n < 0)
  {
    *(v5 - 2) = 45;
    return v5 - 2;
  }

  return result;
}

char *__cdecl apr_ltoa(apr_pool_t *p, uint64_t n)
{
  v3 = apr_palloc(p, 0x1AuLL);
  if (n >= 0)
  {
    v4 = n;
  }

  else
  {
    v4 = -n;
  }

  v3[25] = 0;
  v5 = v3 + 26;
  do
  {
    *(v5 - 2) = (v4 % 0xA) | 0x30;
    result = v5 - 2;
    --v5;
    v7 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v7);
  if (n < 0)
  {
    *(v5 - 2) = 45;
    return v5 - 2;
  }

  return result;
}

char *__cdecl apr_off_t_toa(apr_pool_t *p, apr_off_t n)
{
  v3 = apr_palloc(p, 0x1AuLL);
  if (n >= 0)
  {
    v4 = n;
  }

  else
  {
    v4 = -n;
  }

  v3[25] = 0;
  v5 = v3 + 26;
  do
  {
    *(v5 - 2) = (v4 % 0xA) | 0x30;
    result = v5 - 2;
    --v5;
    v7 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v7);
  if (n < 0)
  {
    *(v5 - 2) = 45;
    return v5 - 2;
  }

  return result;
}

char *__cdecl apr_strfsize(apr_off_t size, char *buf)
{
  if (size < 0)
  {
    v4 = "  - ";
LABEL_14:
    *buf = *v4;
    buf[4] = v4[4];
    return buf;
  }

  if (size >= 0x3CD)
  {
    v5 = "";
    do
    {
      v6 = size;
      size = size >> 10;
      ++v5;
    }

    while (size > 0x3CC);
    v7 = v6 & 0x3FF;
    if (size < 9 || size == 9 && v7 <= 0x3CC)
    {
      v10 = *v5;
      v3 = apr_snprintf(buf, 5uLL, "%d.%d%c");
    }

    else
    {
      v9 = *v5;
      v3 = apr_snprintf(buf, 5uLL, "%3d%c");
    }
  }

  else
  {
    v3 = apr_snprintf(buf, 5uLL, "%3d ");
  }

  if (v3 < 0)
  {
    v4 = "****";
    goto LABEL_14;
  }

  return buf;
}

apr_status_t apr_proc_kill(apr_proc_t *proc, int sig)
{
  if (kill(proc->pid, sig) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

apr_sigfunc_t *__cdecl apr_signal(int signo, apr_sigfunc_t *func)
{
  v3.__sigaction_u.__sa_handler = 0;
  *&v3.sa_mask = 0;
  v4.__sigaction_u.__sa_handler = func;
  *&v4.sa_mask = 0;
  if (sigaction(signo, &v4, &v3) < 0)
  {
    return -1;
  }

  else
  {
    return v3.__sigaction_u.__sa_handler;
  }
}

const char *__cdecl apr_signal_description_get(int signum)
{
  if (signum < 0)
  {
    return "unknown signal (number)";
  }

  else
  {
    return *(MEMORY[0x277D85EB8] + 8 * signum);
  }
}

apr_status_t apr_signal_thread(int (__cdecl *signal_handler)(int))
{
  v4 = -1074077689;
  do
  {
    v3 = 0;
    sigwait(&v4, &v3);
  }

  while ((signal_handler)(v3) != 1);
  return 0;
}

apr_status_t apr_signal_block(int signum)
{
  v1 = 1 << (signum - 1);
  if (signum > 32)
  {
    v1 = 0;
  }

  v3 = v1;
  return pthread_sigmask(1, &v3, 0);
}

apr_status_t apr_signal_unblock(int signum)
{
  v1 = 1 << (signum - 1);
  if (signum > 32)
  {
    v1 = 0;
  }

  v3 = v1;
  return pthread_sigmask(2, &v3, 0);
}

apr_status_t apr_thread_mutex_create(apr_thread_mutex_t **mutex, unsigned int flags, apr_pool_t *pool)
{
  v4 = flags;
  v13 = *MEMORY[0x277D85DE8];
  v6 = apr_palloc(pool, 0x48uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 8) = 0u;
  }

  *v6 = pool;
  if (v4)
  {
    v12.__sig = 0;
    *v12.__opaque = 0;
    v8 = pthread_mutexattr_init(&v12);
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = pthread_mutexattr_settype(&v12, 2);
    if (v9)
    {
      v8 = v9;
      pthread_mutexattr_destroy(&v12);
      goto LABEL_10;
    }

    v8 = pthread_mutex_init((v7 + 8), &v12);
    pthread_mutexattr_destroy(&v12);
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v8 = pthread_mutex_init((v6 + 8), 0);
  if (!v8)
  {
LABEL_5:
    apr_pool_cleanup_register(*v7, v7, thread_mutex_cleanup, apr_pool_cleanup_null);
    *mutex = v7;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

apr_status_t apr_thread_mutex_trylock(apr_thread_mutex_t *mutex)
{
  result = pthread_mutex_trylock((mutex + 8));
  if (result == 16)
  {
    return 70025;
  }

  return result;
}

apr_status_t apr_thread_mutex_destroy(apr_thread_mutex_t *mutex)
{
  apr_pool_cleanup_kill(*mutex, mutex, thread_mutex_cleanup);

  return thread_mutex_cleanup(mutex);
}

apr_time_t apr_time_now(void)
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_usec + 1000000 * v1.tv_sec;
}

apr_status_t apr_time_exp_tz(apr_time_exp_t *result, apr_time_t input, apr_int32_t offs)
{
  explode_time(result, input, offs, 0);
  result->tm_gmtoff = offs;
  return 0;
}

double explode_time(uint64_t a1, uint64_t a2, int a3, int a4)
{
  memset(&v9, 0, sizeof(v9));
  v8 = a2 / 1000000 + a3;
  *a1 = a2 % 1000000;
  if (a4)
  {
    localtime_r(&v8, &v9);
  }

  else
  {
    gmtime_r(&v8, &v9);
  }

  result = *&v9.tm_sec;
  v6 = *&v9.tm_mon;
  *(a1 + 4) = *&v9.tm_sec;
  *(a1 + 20) = v6;
  tm_gmtoff = v9.tm_gmtoff;
  *(a1 + 36) = v9.tm_isdst;
  *(a1 + 40) = tm_gmtoff;
  return result;
}

apr_status_t apr_time_exp_gmt(apr_time_exp_t *result, apr_time_t input)
{
  memset(&v6, 0, sizeof(v6));
  v5 = input / 1000000;
  result->tm_usec = input % 1000000;
  gmtime_r(&v5, &v6);
  v3 = *&v6.tm_mon;
  *&result->tm_sec = *&v6.tm_sec;
  *&result->tm_mon = v3;
  *&result->tm_isdst = v6.tm_isdst;
  return 0;
}

apr_status_t apr_time_exp_lt(apr_time_exp_t *result, apr_time_t input)
{
  memset(&v7, 0, sizeof(v7));
  v6 = input / 1000000;
  result->tm_usec = input % 1000000;
  localtime_r(&v6, &v7);
  v3 = *&v7.tm_mon;
  *&result->tm_sec = *&v7.tm_sec;
  *&result->tm_mon = v3;
  tm_gmtoff = v7.tm_gmtoff;
  result->tm_isdst = v7.tm_isdst;
  result->tm_gmtoff = tm_gmtoff;
  return 0;
}

apr_status_t apr_time_exp_get(apr_time_t *result, apr_time_exp_t *input)
{
  tm_mon = input->tm_mon;
  if (tm_mon > 0xB)
  {
    return 20004;
  }

  v3 = input->tm_year - (tm_mon < 2);
  v4 = v3 + 3;
  if (v3 >= 0)
  {
    v4 = input->tm_year - (tm_mon < 2);
  }

  v5 = 365 * v3 + (v4 >> 2) - v3 / 100;
  v6 = v3 / 100 + 3;
  v7 = v3 / 100 + 6;
  if (((input->tm_year - (tm_mon < 2)) / 100) >= -3)
  {
    v7 = v6;
  }

  v8 = input->tm_sec + 60 * (input->tm_min + 60 * (input->tm_hour + 24 * (v5 + apr_time_exp_get_dayoffset[tm_mon] + input->tm_mday - 1 + (v7 >> 2)))) - 2203891200;
  if (v8 < 0)
  {
    return 20004;
  }

  v9 = 0;
  *result = input->tm_usec + 1000000 * v8;
  return v9;
}

apr_status_t apr_time_exp_gmt_get(apr_time_t *result, apr_time_exp_t *input)
{
  v4 = apr_time_exp_get(result, input);
  if (!v4)
  {
    *result -= 1000000 * input->tm_gmtoff;
  }

  return v4;
}

apr_status_t apr_os_imp_time_get(apr_os_imp_time_t **ostime, apr_time_t *aprtime)
{
  v2 = *aprtime / 1000000;
  v3 = *ostime;
  v3->tv_usec = *aprtime % 1000000;
  v3->tv_sec = v2;
  return 0;
}

apr_status_t apr_os_exp_time_get(apr_os_exp_time_t **ostime, apr_time_exp_t *aprtime)
{
  v2 = *ostime;
  *&v2->tm_sec = *&aprtime->tm_sec;
  *&v2->tm_mon = *&aprtime->tm_mon;
  tm_gmtoff = aprtime->tm_gmtoff;
  v2->tm_isdst = aprtime->tm_isdst;
  v2->tm_gmtoff = tm_gmtoff;
  return 0;
}

apr_status_t apr_os_exp_time_put(apr_time_exp_t *aprtime, apr_os_exp_time_t **ostime, apr_pool_t *cont)
{
  v3 = *ostime;
  *&aprtime->tm_sec = *&(*ostime)->tm_sec;
  *&aprtime->tm_mon = *&v3->tm_mon;
  tm_isdst = v3->tm_isdst;
  tm_gmtoff = v3->tm_gmtoff;
  aprtime->tm_isdst = tm_isdst;
  aprtime->tm_gmtoff = tm_gmtoff;
  return 0;
}

void apr_sleep(apr_interval_time_t t)
{
  v1.tv_sec = t / 1000000;
  *&v1.tv_usec = (t % 1000000);
  select(0, 0, 0, 0, &v1);
}

id gt_tagged_log(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 != 17)
  {
    v3 = a1;
    if (a1 < 0x10)
    {
      LogForTag = GTCoreLog_getLogForTag(a1);
      if (GTCoreLog_enabled(LogForTag))
      {
        v5 = LogForTag[2];
      }

      else
      {
        v5 = MEMORY[0x277D86228];
      }

      v1 = v5;
      goto LABEL_12;
    }

    if (s_logUsingOsLog == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v11 = v3;
        _os_log_fault_impl(&dword_24D66C000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "fail: Invalid log tag: %u", buf, 8u);
      }
    }

    else
    {
      v6 = *MEMORY[0x277D85DF8];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: Invalid log tag: %u", a1];
      fprintf(v6, "%s\n", [v7 UTF8String]);
    }
  }

  v1 = MEMORY[0x277D86220];
  v2 = MEMORY[0x277D86220];
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];

  return v1;
}

dispatch_once_t *GTCoreLog_getLogForTag(unsigned int a1)
{
  v1 = &GTCoreLog_getLogForTag_s_logs[3 * a1];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __GTCoreLog_getLogForTag_block_invoke;
  v3[3] = &__block_descriptor_44_e5_v8__0l;
  v4 = a1;
  v3[4] = v1;
  if (*v1 != -1)
  {
    dispatch_once(&GTCoreLog_getLogForTag_s_logs[3 * a1], v3);
  }

  return v1;
}

uint64_t GTCoreLog_enabled(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:*(a1 + 8)];

  return v3;
}

void GTCoreLogInit()
{
  if (GTCoreLogInit_once != -1)
  {
    dispatch_once(&GTCoreLogInit_once, &__block_literal_global_13);
  }
}

void __GTCoreLogInit_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"GPUToolsPerfLogging"];

  if (v1)
  {
    g_signpostLog = os_log_create("com.apple.gputools.perf", "");

    MEMORY[0x2821F96F8]();
  }
}

uint64_t GTCoreLogTagEnabled(unsigned int a1)
{
  if (a1 == 17)
  {
    return 1;
  }

  if (a1 > 0xF)
  {
    return 0;
  }

  LogForTag = GTCoreLog_getLogForTag(a1);

  return GTCoreLog_enabled(LogForTag);
}

void GPUTools::Interpose::DYFlushFbufStream(GPUTools::Interpose *this, DYGuestAppClient *a2, GPUTools::FB::Stream *a3)
{
  v4 = this;
  transport = a2->_transport;
  if (BYTE4(a2->_stopCaptureQueue))
  {
    v7 = (a2->_source - transport - 8);
  }

  else
  {
    v7 = (a2->_source - transport);
  }

  if (v7)
  {
    if (BYTE4(a2->_stopCaptureQueue))
    {
      p_url = &transport->_url;
    }

    else
    {
      p_url = a2->_transport;
    }

    GPUTools::Interpose::sDispatcher(this, a2, p_url, v7, v5);
  }
}

void GPUTools::Interpose::DYInterposeCommonInit()
{
  dispatch_once(&GPUTools::Interpose::DYInterposeCommonInit(DYGuestAppClient * (*)(void),int)::onceToken, &__block_literal_global);
}

{
  __assert_rtn("void GPUTools::Interpose::DYInterposeCommonInit(initializePlatform_fn, int)", "", 0, "executablePath");
}

{
  __assert_rtn("void GPUTools::Interpose::DYInterposeCommonInit(initializePlatform_fn, int)", "", 0, "bundlePath");
}

void *GPUTools::FB::Stream::Writev_nopartial(const void **a1, void **a2, uint64_t a3)
{
  do
  {
    v6 = **a1;
    result = memcpy(*a2, *a1, v6);
    *a2 = *a2 + v6;
    v8 = *a1;
    a1[1] = *a1;
    if (*(a1 + 4) >= 0x24u)
    {
      v8[8] = 0;
      *v8 = 0u;
      *(v8 + 1) = 0u;
    }

    a1 += 3;
    --a3;
  }

  while (a3);
  return result;
}

void init_interpose_api()
{
  __assert_rtn("void init_interpose_api(void *)", "", 0, "g_interpose_api.disable_buffer_swaps != nullptr");
}

{
  __assert_rtn("void init_interpose_api(void *)", "", 0, "g_interpose_api.get_all_per_function_profiling_data != nullptr");
}

{
  __assert_rtn("void init_interpose_api(void *)", "", 0, "g_interpose_api.get_profiling_data != nullptr");
}

{
  __assert_rtn("void init_interpose_api(void *)", "", 0, "g_interpose_api.get_graphics_timing != nullptr");
}

{
  __assert_rtn("void init_interpose_api(void *)", "", 0, "g_interpose_api.reset_graphics_timing != nullptr");
}

void GPUTools::FB::Decoder::DecodeArguments()
{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeArguments(DecodeJob &, const char *, uint32_t, Argument *) const", "", 0, "array_to_decode_count <= std::numeric_limits<decltype(arguments[argument_count].length)>::max()");
}

{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeArguments(DecodeJob &, const char *, uint32_t, Argument *) const", "", 0, "array_lengths[0] <= std::numeric_limits<decltype(arguments[argument_count].length)>::max()");
}

{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeArguments(DecodeJob &, const char *, uint32_t, Argument *) const", "", 0, "argument_count <= FBUF_MAX_ARGUMENTS");
}

{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeArguments(DecodeJob &, const char *, uint32_t, Argument *) const", "", 0, "job.capacity >= BUFFER_DELTA(job.read_ptr, read_ptr)");
}

int8x16_t GPUTools::FB::Decoder::DecodeHeader(uint64_t a1)
{
  *a1 = vrev32_s8(*a1);
  result = vrev64q_s8(*(a1 + 8));
  *(a1 + 8) = result;
  *(a1 + 24) = bswap64(*(a1 + 24));
  *(a1 + 32) = bswap32(*(a1 + 32));
  return result;
}

void GPUTools::FB::Decoder::DecodeHeader()
{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_fbuf_header_v4_t)");
}

{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_fbuf_header_v2_t)");
}

{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_fbuf_header_v1_t)");
}

{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= job.header.length");
}

{
  __assert_rtn("void GPUTools::FB::Decoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_fbuf_header_v0_t)");
}

void GPUTools::FB::Decoder::Decode()
{
  __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::CoreFunction &) const", "", 0, "fbuf");
}

{
  __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "fbuf");
}

uint64_t GPUTools::FB::EncodeCurrentBacktrace(GPUTools::FB::Fbuf *this, uint64_t a2, _DWORD *a3)
{
  v6 = 32;
  do
  {
    GPUTools::FB::Fbuf::grow(this, (16 * ((2 * v6) >> 1)) | 8);
    result = backtrace((*a2 + 8), 2 * v6);
    *a3 = result;
    v8 = v6 >= 0x80000 || result < 2 * v6;
    v6 *= 2;
  }

  while (!v8);
  return result;
}

void GPUTools::FD::Function::~Function(GPUTools::FD::Function *a1)
{
  GPUTools::FD::Function::~Function(a1);
  OUTLINED_FUNCTION_0_1();

  JUMPOUT(0x253030980);
}

GPUTools::VMBuffer *GPUTools::VMBuffer::operator=(GPUTools::VMBuffer *this, uint64_t a2)
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

const char *dy_fenum_to_function_name_nsstring(int a1, __int16 a2, int a3)
{
  result = dy_fenum_to_function_name(a1, a2, a3);
  if (result)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:result length:strlen(result) encoding:1 freeWhenDone:0];

    return v4;
  }

  return result;
}

void _log_assert_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_24D66C000, a2, OS_LOG_TYPE_ERROR, "Error: %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void GPUTools::AlignmentBuffer::CopyAndAlign()
{
  dy_abort("failed to reallocate misaligned values buffer");
}

{
  dy_abort("failed to allocate misaligned values buffer");
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}