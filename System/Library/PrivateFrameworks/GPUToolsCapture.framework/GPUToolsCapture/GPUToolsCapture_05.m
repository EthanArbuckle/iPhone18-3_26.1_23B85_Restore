void apr_allocator_destroy(apr_allocator_t *allocator)
{
  v2 = 0;
  v3 = allocator + 40;
  do
  {
    while (1)
    {
      v4 = *&v3[8 * v2];
      if (!v4)
      {
        break;
      }

      *&v3[8 * v2] = *v4;
      vm_deallocate(mach_task_self_, v4, ((*(v4 + 16) << 12) + 4096));
    }

    ++v2;
  }

  while (v2 != 20);
  v5 = mach_task_self_;

  vm_deallocate(v5, allocator, 0xC8uLL);
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
    do
    {
      v16 = *v5;
      vm_deallocate(mach_task_self_, v5, ((*(v5 + 16) << 12) + 4096));
      v5 = v16;
    }

    while (v16);
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
    v14 = (v8 + 5);
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
      do
      {
        v22 = *v11;
        vm_deallocate(mach_task_self_, v11, ((*(v11 + 16) << 12) + 4096));
        v11 = v22;
      }

      while (v22);
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
  v49 = 0;
  address = 0;
  v47 = *(p + 11);
  v48 = p;
  v6 = *(v47 + 32);
  v46.curpos = *(v47 + 24);
  v46.endpos = v6 - 1;
  if (v46.curpos == v6 && psprintf_flush(&v46) == -1 || apr_vformatter(psprintf_flush, &v46, fmt, ap) == -1)
  {
    v30 = *(p + 8);
    if (v30)
    {
      v30(12);
    }

    if (v49)
    {
      v31 = v47;
      *v47 = address;
      v32 = *(p + 6);
      v33 = v32[3];
      if (v33)
      {
        pthread_mutex_lock((v33 + 8));
      }

      v34 = 0;
      v35 = *v32;
      v36 = v32[1];
      v37 = (v32 + 5);
      v38 = v32[2];
      do
      {
        while (1)
        {
          v39 = v31;
          v31 = *v31;
          v40 = *(v39 + 4);
          if (!v36 || v38 > v40)
          {
            break;
          }

          *v39 = v34;
          v34 = v39;
          if (!v31)
          {
            goto LABEL_53;
          }
        }

        if (v40 > 0x13)
        {
          *v39 = *v37;
          *v37 = v39;
        }

        else
        {
          v41 = v37[v40];
          *v39 = v41;
          if (v35 <= v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = v35;
          }

          if (!v41)
          {
            v35 = v42;
          }

          v37[v40] = v39;
        }

        v21 = v38 > v40;
        v38 += ~v40;
        if (!v21)
        {
          v38 = 0;
        }
      }

      while (v31);
LABEL_53:
      *v32 = v35;
      v32[2] = v38;
      v43 = v32[3];
      if (v43)
      {
        pthread_mutex_unlock((v43 + 8));
      }

      if (v34)
      {
        do
        {
          v44 = *v34;
          vm_deallocate(mach_task_self_, v34, ((*(v34 + 16) << 12) + 4096));
          v34 = v44;
        }

        while (v44);
      }
    }

    return 0;
  }

  else
  {
    v7 = v46.curpos++;
    *v7 = 0;
    v8 = *(v47 + 24);
    *(v47 + 24) = &v8[(v46.curpos - v8 + 7) & 0xFFFFFFFFFFFFFFF8];
    v9 = address;
    if (address)
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
      v15 = (v10 + 5);
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
        do
        {
          v23 = *v12;
          vm_deallocate(mach_task_self_, v12, ((*(v12 + 16) << 12) + 4096));
          v12 = v23;
        }

        while (v23);
      }
    }

    if (v49)
    {
      v24 = *(p + 11);
      v25 = v47;
      *(v47 + 20) = 0;
      v26 = v24[1];
      v25[1] = v26;
      *v26 = v25;
      *v25 = v24;
      v24[1] = v25;
      *(p + 11) = v25;
      v27 = (v24[4] - v24[3]) >> 12;
      *(v24 + 5) = v27;
      if (v27 < *(*v24 + 20))
      {
        v28 = *v24;
        do
        {
          v28 = *v28;
        }

        while (*(v28 + 5) > v27);
        *v25 = *v24;
        *(*v24 + 8) = v24[1];
        v29 = v28[1];
        v24[1] = v29;
        *v29 = v24;
        *v24 = v28;
        v28[1] = v24;
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

apr_status_t apr_proc_mutex_destroy(apr_proc_mutex_t *mutex)
{
  apr_pool_cleanup_kill(*mutex, mutex, apr_proc_mutex_cleanup);

  return apr_proc_mutex_cleanup(mutex);
}

void apr_proc_mutex_unix_setup_lock()
{
  proc_mutex_op_on = -65536;
  word_31F724 = 4096;
  proc_mutex_op_try = -65536;
  word_31F72A = 6144;
  proc_mutex_op_off = 0x10000;
  word_31F730 = 4096;
  proc_mutex_lock_it = 0;
  unk_31F740 = 0;
  qword_31F748 = 0x300000000;
  proc_mutex_unlock_it = 0;
  *algn_31F758 = 0;
  qword_31F760 = 0x200000000;
}

uint64_t proc_mutex_sysv_cleanup(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 != -1)
  {
    semctl(v1, 0, 0, 0);
  }

  return 0;
}

uint64_t proc_mutex_sysv_release(uint64_t a1)
{
  *(a1 + 16) = 0;
  while (semop(*(a1 + 32), &proc_mutex_op_off, 1uLL) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  return 0;
}

uint64_t proc_mutex_sysv_tryacquire(uint64_t a1)
{
  do
  {
    if ((semop(*(a1 + 32), &proc_mutex_op_try, 1uLL) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 16) = 1;
      return result;
    }
  }

  while (*__error() == 4);
  if (*__error() == 35)
  {
    return 70025;
  }

  else
  {
    return *__error();
  }
}

uint64_t proc_mutex_sysv_acquire(uint64_t a1)
{
  while (semop(*(a1 + 32), &proc_mutex_op_on, 1uLL) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  result = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t proc_mutex_sysv_create(uint64_t a1)
{
  v2 = semget(0, 1, 896);
  *(a1 + 32) = v2;
  if (v2 == -1)
  {
    v3 = *__error();
    v4 = *(a1 + 32);
    if (v4 != -1)
    {
      semctl(v4, 0, 0, 0);
    }
  }

  else if (semctl(v2, 0, 8, 1) < 0)
  {
    v3 = *__error();
    v5 = *(a1 + 32);
    if (v5 != -1)
    {
      semctl(v5, 0, 0, 0);
    }

    *(a1 + 32) = -1;
  }

  else
  {
    *(a1 + 16) = 0;
    apr_pool_cleanup_register(*a1, a1, apr_proc_mutex_cleanup, apr_pool_cleanup_null);
    return 0;
  }

  return v3;
}

apr_status_t apr_proc_mutex_create(apr_proc_mutex_t **mutex, const char *fname, apr_lockmech_e mech, apr_pool_t *pool)
{
  v8 = apr_palloc(pool, 0x40uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 7) = 0;
    *(v8 + 40) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
  }

  result = 70023;
  *v9 = pool;
  *(v9 + 8) = -1;
  *(v9 + 6) = 0;
  *(v9 + 14) = 0;
  if (mech <= APR_LOCK_DEFAULT && ((0x27u >> mech) & 1) != 0)
  {
    v11 = *(&off_2F2BD0 + mech);
    *(v9 + 1) = v11;
    result = (*(v11 + 8))(v9, fname);
    if (!result)
    {
      *mutex = v9;
    }
  }

  return result;
}

uint64_t proc_mutex_flock_perms_set(uint64_t a1, __int16 a2, uid_t a3, gid_t a4)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  if ((a2 & 0x4000) == 0)
  {
    a4 = -1;
  }

  if (fchown(*(a1 + 32), a3, a4) < 0)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t proc_mutex_flock_release(uint64_t a1)
{
  *(a1 + 16) = 0;
  while (flock(*(a1 + 32), 8) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  return 0;
}

uint64_t proc_mutex_flock_tryacquire(uint64_t a1)
{
  do
  {
    if ((flock(*(a1 + 32), 6) & 0x80000000) == 0)
    {
      v2 = 0;
      *(a1 + 16) = 1;
      return v2;
    }
  }

  while (*__error() == 4);
  v2 = 70025;
  if (*__error() != 35 && *__error() != 35)
  {
    return *__error();
  }

  return v2;
}

uint64_t proc_mutex_flock_acquire(uint64_t a1)
{
  while (flock(*(a1 + 32), 2) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  result = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t proc_mutex_fcntl_perms_set(uint64_t a1, __int16 a2, uid_t a3, gid_t a4)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  if ((a2 & 0x4000) == 0)
  {
    a4 = -1;
  }

  if (fchown(*(a1 + 32), a3, a4) < 0)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t proc_mutex_fcntl_release(uint64_t a1)
{
  *(a1 + 16) = 0;
  while (fcntl(*(a1 + 32), 9, &proc_mutex_unlock_it) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  return 0;
}

uint64_t proc_mutex_fcntl_tryacquire(uint64_t a1)
{
  do
  {
    if ((fcntl(*(a1 + 32), 8, &proc_mutex_lock_it) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 16) = 1;
      return result;
    }
  }

  while (*__error() == 4);
  if (*__error() == 35)
  {
    return 70025;
  }

  else
  {
    return *__error();
  }
}

uint64_t proc_mutex_fcntl_acquire(uint64_t a1)
{
  while (fcntl(*(a1 + 32), 9, &proc_mutex_lock_it) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  result = 0;
  *(a1 + 16) = 1;
  return result;
}

const char *__cdecl apr_proc_mutex_lockfile(apr_proc_mutex_t *mutex)
{
  v1 = *(mutex + 1);
  if (v1 == &mutex_flock_methods || v1 == &mutex_fcntl_methods)
  {
    return *(mutex + 3);
  }

  else
  {
    return 0;
  }
}

uint64_t apr_os_proc_mutex_get_ex(_OWORD *a1, uint64_t a2, _DWORD *a3)
{
  *a1 = *(a2 + 32);
  if (a3)
  {
    *a3 = *(*(a2 + 8) + 64);
  }

  return 0;
}

__n128 GTMTLTensorExtentsFromArgs@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  result = *(a1 + 56);
  *(a2 + 56) = result;
  return result;
}

void *GTMTLTensorExtentsToArgs(uint64_t *a1, void *a2)
{
  v2 = 0;
  v4 = *a1;
  result = a1 + 1;
  *a2 = v4;
  v5 = a2 + 1;
  do
  {
    v5[v2] = result[v2];
    ++v2;
  }

  while (v2 != 16);
  return result;
}

unint64_t *GTMTLTensorExtents_computeStrides@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  v2 = *result;
  *a2 = *result;
  *(a2 + 8) = 1;
  if (v2 >= 2)
  {
    v3 = (result + 1);
    v4 = v2 - 1;
    v5 = (a2 + 16);
    v6 = 1;
    do
    {
      v7 = *v3++;
      v6 *= v7;
      *v5++ = v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

__n128 GTMTLTensorSliceFromArgs@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 72) = *(a1 + 9);
  *(a2 + 88) = *(a1 + 11);
  *(a2 + 104) = *(a1 + 13);
  *(a2 + 120) = *(a1 + 15);
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = *(a1 + 5);
  *(a2 + 56) = *(a1 + 7);
  *a2 = v2;
  v3 = a1[17];
  v4 = *(a1 + 16);
  *(a2 + 240) = *(a1 + 15);
  *(a2 + 256) = v4;
  v5 = *(a1 + 14);
  *(a2 + 208) = *(a1 + 13);
  *(a2 + 224) = v5;
  v6 = *(a1 + 12);
  *(a2 + 176) = *(a1 + 11);
  *(a2 + 192) = v6;
  result = *(a1 + 10);
  *(a2 + 144) = *(a1 + 9);
  *(a2 + 160) = result;
  *(a2 + 136) = v3;
  return result;
}

__n128 GTMTLTensorSliceToArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 120);
  v7 = *(a1 + 104);
  v8 = *(a1 + 88);
  v9 = *(a1 + 72);
  *a2 = *a1;
  *(a2 + 72) = v9;
  *(a2 + 88) = v8;
  *(a2 + 104) = v7;
  *(a2 + 120) = v6;
  *(a2 + 8) = v5;
  *(a2 + 24) = v4;
  *(a2 + 40) = v3;
  *(a2 + 56) = v2;
  v11 = *(a1 + 176);
  result = *(a1 + 192);
  v13 = *(a1 + 144);
  v12 = *(a1 + 160);
  v15 = *(a1 + 240);
  v14 = *(a1 + 256);
  v17 = *(a1 + 208);
  v16 = *(a1 + 224);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 208) = v17;
  *(a2 + 224) = v16;
  *(a2 + 240) = v15;
  *(a2 + 256) = v14;
  *(a2 + 144) = v13;
  *(a2 + 160) = v12;
  *(a2 + 176) = v11;
  *(a2 + 192) = result;
  return result;
}

__n128 GTMTLTensorSlice_wholeSlice@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v2 = a1[4];
  *(a2 + 216) = a1[5];
  v3 = a1[7];
  *(a2 + 232) = a1[6];
  *(a2 + 248) = v3;
  v4 = *a1;
  *(a2 + 152) = a1[1];
  result = a1[2];
  v6 = a1[3];
  *(a2 + 168) = result;
  *(a2 + 184) = v6;
  *(a2 + 200) = v2;
  *a2 = *a1;
  *(a2 + 264) = *(a1 + 16);
  *(a2 + 136) = v4;
  return result;
}

BOOL GTMTLLogicalToPhysicalColorAttachmentMapEqual(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = a1;
  if (a1 != a2)
  {
    return 0;
  }

  v2 = 1;
  v3 = 7;
  while (v2 != 8)
  {
    v4 = *(&v8 + v2);
    v5 = *(&v7 + v2++);
    if (v4 != v5)
    {
      v3 = v2 - 2;
      return v3 > 6;
    }
  }

  return v3 > 6;
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
    return sys_siglist[signum];
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

int apr_vformatter(int (__cdecl *flush_func)(apr_vformatter_buff_t *), apr_vformatter_buff_t *c, const char *fmt, va_list ap)
{
  v5 = c;
  v6 = flush_func;
  v165 = 0;
  v166 = 0;
  v7 = 0;
  p_n_4 = 0;
  v9 = 0;
  v173 = 0;
  v174 = ap;
  v171 = 0;
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
      return v9;
    }

    if (curpos)
    {
      v40 = endpos;
      if (curpos >= endpos)
      {
        v5->curpos = curpos;
        if ((v6)(v5))
        {
          return -1;
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
      v169 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      v18 = 32;
      v19 = 1;
      goto LABEL_39;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v12] & 0x1000) != 0)
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
      v23 = v174;
      v174 += 8;
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

    v169 = 0;
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
    v169 = 1;
  }

  if (v20 == 46)
  {
    v26 = *(fmt + 1);
    if ((v26 - 48) > 9)
    {
      v17 = 0;
      if (v26 == 42)
      {
        v36 = v174;
        v174 += 8;
        fmt += 2;
        v166 = *v36 & ~(*v36 >> 31);
      }

      else
      {
        v166 = 0;
        ++fmt;
      }
    }

    else
    {
      v28 = *(fmt + 2);
      fmt += 2;
      v27 = v28;
      v166 = v26 - 48;
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
        v166 = v29;
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

  v170 = v19;
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
        v172[0] = 37;
        v172[1] = *fmt;
        v93 = 2;
LABEL_212:
        v173 = v93;
        p_n_4 = v172;
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
      v44 = v174;
      v174 += 8;
      v45 = *v44;
      if (fabs(*v44) == INFINITY)
      {
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        v173 = (&dword_0 + 3);
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
        v47 = v166;
      }

      __n = 0;
      v162 = v46;
      v164 = v5;
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

      apr_cvt(v48, &__n, &v171, v49, buf, v45);
      v104 = buf[0];
      if ((buf[0] & 0x8000000000000000) != 0)
      {
        if (!__maskrune(buf[0], 0x100uLL))
        {
          goto LABEL_253;
        }

LABEL_218:
        v173 = strlen(buf);
        p_n_4 = __n_5;
        __memcpy_chk();
        v171 = 0;
        v19 = v170;
      }

      else
      {
        if ((_DefaultRuneLocale.__runetype[buf[0]] & 0x100) != 0)
        {
          goto LABEL_218;
        }

LABEL_253:
        v126 = v162;
        if (v162 == 102)
        {
          v127 = __n;
          if (__n < 1)
          {
            __n_5[0] = 48;
            if (v47 < 1)
            {
              v19 = v170;
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
              v19 = v170;
              if (__n < 0)
              {
                v147 = ~__n;
                memset(__n_7, 48, v147 + 1);
                v126 = 102;
                v19 = v170;
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

            v19 = v170;
            v126 = 102;
          }
        }

        else
        {
          __n_5[0] = v104;
          v19 = v170;
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
            v155 = v181;
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
            if (v181 - v155 == 1)
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
              *p_n_6++ = v181[v156];
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

        v173 = (p_n_6 - __n_5);
        p_n_4 = __n_5;
        if (v171)
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
      v101 = v174;
      v174 += 8;
      v92 = *v101;
LABEL_211:
      v172[0] = v92;
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
      v41 = v174;
      v174 += 8;
      v42 = v17;
      v43 = conv_10_quad(*v41, 0, &v171, &v180[3], &v173);
      v19 = v170;
      p_n_4 = v43;
      if (v42)
      {
        goto LABEL_208;
      }

LABEL_204:
      v100 = 511;
      if (v166 + 1 < 0x200)
      {
        v100 = v166;
      }

      for (; v173 < v100; ++v173)
      {
        *--p_n_4 = 48;
      }
    }

    else
    {
      v97 = v174;
      v174 += 8;
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

      v171 = v99;
      p_n_4 = &v180[3];
      do
      {
        *--p_n_4 = v98 % 0xA + 48;
        v61 = v98 > 9;
        v98 /= 0xAu;
      }

      while (v61);
      v173 = (&v180[3] - p_n_4);
      if ((v17 & 1) == 0)
      {
        goto LABEL_204;
      }
    }

LABEL_208:
    v164 = v5;
    if (v171)
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
        v95 = v174;
        v174 += 8;
        p_n_4 = *v95;
        if (*v95)
        {
          if (v17)
          {
            v96 = strlen(*v95);
            v19 = v170;
            LOBYTE(v73) = 0;
            LOBYTE(v16) = 0;
            v173 = v96;
          }

          else
          {
            v173 = 0;
            LOBYTE(v73) = v166;
            if (v166)
            {
              v145 = 0;
              while (p_n_4[v145])
              {
                v173 = ++v145;
                v18 = 32;
                if (v166 == v145)
                {
                  goto LABEL_327;
                }
              }

              LOBYTE(v73) = 0;
            }

            else
            {
              v166 = 0;
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
          v50 = v174;
          v174 += 8;
          v51 = v17;
          v52 = conv_10_quad(*v50, 1, &v171, &v180[3], &v173);
          v19 = v170;
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

        v135 = v174;
        v174 += 8;
        v136 = *v135;
        if (v33)
        {
          v136 = v136;
        }

        v171 = 0;
        p_n_4 = &v180[3];
        do
        {
          *--p_n_4 = v136 % 0xA + 48;
          v61 = v136 > 9;
          v136 /= 0xAu;
        }

        while (v61);
        v173 = (&v180[3] - p_n_4);
        if (v17)
        {
          goto LABEL_273;
        }

LABEL_102:
        v53 = 511;
        if (v166 + 1 < 0x200)
        {
          v53 = v166;
        }

        for (; v173 < v53; ++v173)
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
        v66 = v174;
        v174 += 8;
        v67 = *v66;
        v68 = "0123456789abcdef";
        if (*fmt == 88)
        {
          v68 = "0123456789ABCDEF";
        }

        if (HIDWORD(v67))
        {
          p_n_4 = &v180[3];
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
          p_n_4 = &v180[3];
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
        v88 = v174;
        v174 += 8;
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

        p_n_4 = &v180[3];
        v165 = v90;
        do
        {
          *--p_n_4 = v91[v90 & 0xF];
          v61 = v90 > 0xF;
          v90 >>= 4;
        }

        while (v61);
      }

      v173 = (&v180[3] - p_n_4);
      if ((v17 & 1) == 0)
      {
        v123 = 511;
        if (v166 + 1 < 0x200)
        {
          v123 = v166;
        }

        if (&v180[3] - p_n_4 < v123)
        {
          do
          {
            *--p_n_4 = 48;
            ++v173;
          }

          while (v173 < v123);
        }
      }

      LOBYTE(v73) = 0;
      if (!v16 || !v165)
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
      v125 = v173 + 2;
LABEL_250:
      v173 = v125;
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

          v72 = v174;
          v174 += 8;
          v73 = *v72;
          if (!v73)
          {
            goto LABEL_305;
          }

          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          p_n_4 = 0;
          v74 = v173;
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

          v106 = v174;
          v174 += 8;
          v73 = *v106;
          if (!v73)
          {
            goto LABEL_305;
          }

          v107 = bswap32(*v73);
          v108 = v107;
          v109 = v180;
          v110 = &v180[2];
          v111 = &v180[4];
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
          v74 = (&v180[3] - p_n_4);
        }

        v78 = v166;
        if (v166 >= v74)
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
          v118 = v174;
          v174 += 8;
          v119 = *v118;
          if (v119)
          {
            p_n_4 = &__n_4;
            apr_strerror(*v119, &__n_4, 0x1FFuLL);
            v120 = strlen(&__n_4);
            v19 = v170;
          }

          else
          {
            v120 = 6;
            p_n_4 = "(null)";
          }

          v103 = endpos;
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v173 = v120;
          v18 = 32;
          goto LABEL_378;
        }

        if (v11 != 116)
        {
          if (v11 == 112)
          {
            v37 = v174;
            v174 += 8;
            v38 = *v37;
            if (HIDWORD(v38))
            {
              p_n_4 = &v180[3];
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
              p_n_4 = &v180[3];
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
            v74 = (&v180[3] - p_n_4);
LABEL_339:
            v173 = v74;
            goto LABEL_340;
          }

LABEL_239:
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v173 = &dword_8;
          v174 += 8;
          p_n_4 = "bogus %p";
          goto LABEL_377;
        }

        v121 = v174;
        v174 += 8;
        v73 = *v121;
        if (v73)
        {
          v122 = *v73;
          if (HIDWORD(v122))
          {
            p_n_4 = &v180[3];
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
            p_n_4 = &v180[3];
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
        v173 = (&dword_4 + 2);
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

        v75 = v174;
        v174 += 8;
        v73 = *v75;
        if (!v73)
        {
          goto LABEL_305;
        }

        v76 = v17;
        v77 = conv_10_quad(*v73, 1, buf, &v180[3], &v173);
        v19 = v170;
        p_n_4 = v77;
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        v74 = v173;
        v78 = v166;
        if (v166 >= v173)
        {
          v78 = v173;
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
      v80 = v174;
      v174 += 8;
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
          v173 = v102;
          v18 = 32;
          v103 = endpos;
          v19 = v170;
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
        v94 = v174;
        v174 += 8;
        **v94 = v9;
      }

      else
      {
        v130 = v174;
        v174 += 8;
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
      v69 = v174;
      v174 += 8;
      v70 = *v69;
      v71 = "0123456789abcdef";
      if (*fmt == 88)
      {
        v71 = "0123456789ABCDEF";
      }

      if (HIDWORD(v70))
      {
        p_n_4 = &v180[3];
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
        p_n_4 = &v180[3];
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
      v131 = v174;
      v174 += 8;
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

      p_n_4 = &v180[3];
      v165 = v133;
      do
      {
        *--p_n_4 = v134[v133 & 7];
        v61 = v133 > 7;
        v133 >>= 3;
      }

      while (v61);
    }

    v173 = (&v180[3] - p_n_4);
    if ((v17 & 1) == 0)
    {
      v146 = 511;
      if (v166 + 1 < 0x200)
      {
        v146 = v166;
      }

      if (&v180[3] - p_n_4 < v146)
      {
        do
        {
          *--p_n_4 = 48;
          ++v173;
        }

        while (v173 < v146);
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
    v125 = v173 + 1;
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
  v164 = v5;
  v54 = v166;
  if (v166 <= 1)
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

  v56 = v174;
  v174 += 8;
  v57 = *v56;
  *&v180[3] = 0;
  __n = 0;
  v166 = v55;
  apr_cvt(v55, &__n, &v180[3], 1, buf, v57);
  v58 = __n_5;
  if (*&v180[3])
  {
    __n_5[0] = 45;
    v58 = &__n_6;
  }

  LODWORD(v59) = v166;
  if (v166 >= 2)
  {
    v59 = v166 & 0x7FFFFFFF;
    while (v181[v59 + 1] == 48)
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
      v163 = v60;
      memcpy(v64, &buf[1], (v59 - 1));
      v60 = v163;
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
  v173 = v142;
  if (v16)
  {
    v143 = v142;
    if (!strchr(p_n_4, 46))
    {
      v173 = (v143 + 1);
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
  v19 = v170;
LABEL_373:
  LOBYTE(v16) = 0;
  LOBYTE(v73) = v105 != 0;
  if (v105)
  {
    if (p_n_4 != "(null)")
    {
      LOBYTE(v16) = 0;
      *--p_n_4 = v105;
      ++v173;
      LOBYTE(v73) = 1;
    }

    v5 = v164;
    goto LABEL_377;
  }

  v5 = v164;
LABEL_378:
  v158 = v173;
  if (!v169 || v19 != 1)
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
              return -1;
            }

            curpos = v5->curpos;
            v103 = v5->endpos;
            v19 = v170;
          }

          *curpos++ = *p_n_4;
        }

        ++p_n_4;
        --v158;
      }

      while (v158);
      v158 = v173;
    }

    if (v169 && !v19)
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
              return -1;
            }

            curpos = v5->curpos;
            v103 = v5->endpos;
          }

          *curpos++ = v18;
          v158 = v173;
        }

        ++v9;
        --v7;
      }
    }

    endpos = v103;
    goto LABEL_420;
  }

  v6 = flush_func;
  if (v7 <= v173)
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
            return -1;
          }

          curpos = v5->curpos;
          v103 = v5->endpos;
          v19 = v170;
        }

        *curpos++ = v18;
        v158 = v173;
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
    v19 = v170;
LABEL_388:
    *curpos++ = *p_n_4;
    v158 = v173;
LABEL_389:
    ++v9;
    ++p_n_4;
    v173 = --v158;
    --v7;
    goto LABEL_390;
  }

  return -1;
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

apr_status_t apr_initialize(void)
{
  if (shared_initialized)
  {
    return 0;
  }

  if (initialized++)
  {
    return 0;
  }

  newpool[1] = v0;
  newpool[2] = v1;
  proc_mutex_op_on = -65536;
  word_31F724 = 4096;
  proc_mutex_op_try = -65536;
  word_31F72A = 6144;
  proc_mutex_op_off = 0x10000;
  word_31F730 = 4096;
  proc_mutex_lock_it = 0;
  unk_31F740 = 0;
  qword_31F748 = 0x300000000;
  proc_mutex_unlock_it = 0;
  *algn_31F758 = 0;
  qword_31F760 = 0x200000000;
  result = apr_pool_initialize();
  if (!result)
  {
    newpool[0] = 0;
    result = apr_pool_create_ex(newpool, 0, 0, 0);
    if (result)
    {
      return 20002;
    }

    else
    {
      *(newpool[0] + 10) = "apr_initialize";
    }
  }

  return result;
}

uint64_t apr_shared_initialize(uint64_t a1)
{
  if (!a1)
  {
    return 20002;
  }

  if (initialized)
  {
    return 20014;
  }

  result = 0;
  shared_initialized = 1;
  apr_pools_initialized = 1;
  apr_pools_shared_initialized = 1;
  global_pool = a1;
  global_allocator = *(a1 + 48);
  return result;
}

void apr_terminate(void)
{
  if ((shared_initialized & 1) == 0 && !--initialized)
  {
    apr_pool_terminate();
  }
}

void apr_terminate2(void)
{
  if ((shared_initialized & 1) == 0 && !--initialized)
  {
    apr_pool_terminate();
  }
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
  memset(v18, 0, sizeof(v18));
  va_copy(v16, va);
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
        *(v18 + v4++) = v6;
      }

      v3 += v6;
      v7 = va_arg(v16, const char *);
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
  va_copy(v17, va);
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
        v13 = *(v18 + v12++);
      }

      memcpy(v11, v2, v13);
      v11 += v13;
      v14 = v17;
      v17 += 8;
      v2 = *v14;
    }

    while (*v14);
  }

  *v11 = 0;
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

apr_array_header_t *__cdecl apr_array_make(apr_pool_t *p, int nelts, int elt_size)
{
  v6 = apr_palloc(p, 0x20uLL);
  if (nelts <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = nelts;
  }

  v8 = apr_palloc(p, v7 * elt_size);
  v9 = v8;
  if (v8)
  {
    bzero(v8, v7 * elt_size);
  }

  v6->elts = v9;
  v6->pool = p;
  v6->elt_size = elt_size;
  v6->nelts = 0;
  v6->nalloc = v7;
  return v6;
}

void *apr_array_remove(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12) - 1;
  *(a1 + 12) = v3;
  return memmove((*(a1 + 24) + v2 * a2), (*(a1 + 24) + v2 + v2 * a2), v2 * (v3 - a2));
}

void *__cdecl apr_array_pop(void *arr)
{
  if (arr)
  {
    v1 = *(arr + 3);
    if (v1)
    {
      v2 = *(arr + 3);
      v3 = *(arr + 2);
      v4 = v1 - 1;
      *(arr + 3) = v4;
      return (v2 + v4 * v3);
    }

    else
    {
      return 0;
    }
  }

  return arr;
}

void *__cdecl apr_array_push(apr_array_header_t *arr)
{
  nelts = arr->nelts;
  if (nelts == arr->nalloc)
  {
    if (nelts < 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * nelts;
    }

    elts = apr_palloc(arr->pool, arr->elt_size * v3);
    memcpy(elts, arr->elts, arr->elt_size * arr->nalloc);
    bzero(&elts[arr->elt_size * arr->nalloc], arr->elt_size * (v3 - arr->nalloc));
    arr->elts = elts;
    arr->nalloc = v3;
    nelts = arr->nelts;
  }

  else
  {
    elts = arr->elts;
  }

  arr->nelts = nelts + 1;
  return &elts[arr->elt_size * nelts];
}

void apr_array_cat(apr_array_header_t *dst, const apr_array_header_t *src)
{
  nelts = dst->nelts;
  elt_size = dst->elt_size;
  v6 = src->nelts;
  v7 = v6 + nelts;
  nalloc = dst->nalloc;
  if (v6 + nelts <= nalloc)
  {
    elts = dst->elts;
  }

  else
  {
    v9 = 2 * nalloc;
    if (nalloc < 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = v9;
      v9 *= 2;
    }

    while (v7 > v10);
    v11 = apr_palloc(dst->pool, v10 * elt_size);
    elts = v11;
    if (v11)
    {
      bzero(v11, v10 * elt_size);
    }

    memcpy(elts, dst->elts, dst->nalloc * elt_size);
    dst->elts = elts;
    dst->nalloc = v10;
    nelts = dst->nelts;
    v6 = src->nelts;
  }

  memcpy(&elts[elt_size * nelts], src->elts, v6 * elt_size);
  dst->nelts += src->nelts;
}

apr_array_header_t *__cdecl apr_array_copy(apr_pool_t *p, const apr_array_header_t *arr)
{
  v4 = apr_palloc(p, 0x20uLL);
  elt_size = arr->elt_size;
  if (arr->nalloc <= 1)
  {
    nalloc = 1;
  }

  else
  {
    nalloc = arr->nalloc;
  }

  v7 = apr_palloc(p, nalloc * elt_size);
  v4->elts = v7;
  v4->pool = p;
  v4->elt_size = elt_size;
  v4->nelts = 0;
  v4->nalloc = nalloc;
  memcpy(v7, arr->elts, arr->nelts * arr->elt_size);
  nelts = arr->nelts;
  v4->nelts = nelts;
  bzero(&v4->elts[v4->elt_size * nelts], (v4->nalloc - nelts) * v4->elt_size);
  return v4;
}

apr_array_header_t *__cdecl apr_array_copy_hdr(apr_pool_t *p, const apr_array_header_t *arr)
{
  result = apr_palloc(p, 0x20uLL);
  result->pool = p;
  result->elts = arr->elts;
  nelts = arr->nelts;
  result->elt_size = arr->elt_size;
  result->nelts = nelts;
  result->nalloc = nelts;
  return result;
}

apr_array_header_t *__cdecl apr_array_append(apr_pool_t *p, const apr_array_header_t *first, const apr_array_header_t *second)
{
  v6 = apr_palloc(p, 0x20uLL);
  v6->pool = p;
  v6->elts = first->elts;
  nelts = first->nelts;
  v6->elt_size = first->elt_size;
  v6->nelts = nelts;
  v6->nalloc = nelts;
  apr_array_cat(v6, second);
  return v6;
}

char *__cdecl apr_array_pstrcat(apr_pool_t *p, const apr_array_header_t *arr, const char sep)
{
  nelts = arr->nelts;
  v5 = nelts - 1;
  if (nelts >= 1)
  {
    elts = arr->elts;
    if (elts)
    {
      v8 = sep;
      v9 = 0;
      v10 = sep != 0;
      while (1)
      {
        if (*elts)
        {
          v9 += strlen(*elts);
        }

        if (!v5)
        {
          break;
        }

        v9 += v10;
        elts += 8;
        --v5;
      }

      v12 = apr_palloc(p, v9 + 1);
      v14 = arr->elts;
      v15 = 1;
      v11 = v12;
      if (v14)
      {
LABEL_12:
        if (*v14)
        {
          v16 = strlen(*v14);
          memcpy(v11, *v14, v16);
          v11 += v16;
        }
      }

      while (v15 < arr->nelts)
      {
        if (v8)
        {
          *v11++ = v8;
        }

        v14 += 8;
        ++v15;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = apr_palloc(p, 1uLL);
  v12 = v11;
  if (v11)
  {
LABEL_9:
    *v11 = 0;
  }

  return v12;
}

apr_table_t *__cdecl apr_table_make(apr_pool_t *p, int nelts)
{
  v4 = apr_palloc(p, 0x128uLL);
  if (nelts <= 1)
  {
    nelts = 1;
  }

  v4[3] = apr_palloc(p, (24 * nelts));
  *v4 = p;
  v4[1] = 24;
  *(v4 + 4) = nelts;
  *(v4 + 8) = 0;
  return v4;
}

apr_table_t *__cdecl apr_table_copy(apr_pool_t *p, const apr_table_t *t)
{
  v4 = apr_palloc(p, 0x128uLL);
  if (*(t + 4) <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(t + 4);
  }

  v6 = apr_palloc(p, (24 * v5));
  *(v4 + 3) = v6;
  *v4 = p;
  *(v4 + 1) = 24;
  *(v4 + 4) = v5;
  memcpy(v6, *(t + 3), 24 * *(t + 3));
  *(v4 + 3) = *(t + 3);
  v7 = *(t + 100);
  v8 = *(t + 116);
  v9 = *(t + 132);
  *(v4 + 148) = *(t + 148);
  *(v4 + 132) = v9;
  *(v4 + 116) = v8;
  *(v4 + 100) = v7;
  v10 = *(t + 36);
  v11 = *(t + 52);
  v12 = *(t + 68);
  *(v4 + 84) = *(t + 84);
  *(v4 + 68) = v12;
  *(v4 + 52) = v11;
  *(v4 + 36) = v10;
  v13 = *(t + 180);
  v14 = *(t + 196);
  v15 = *(t + 212);
  *(v4 + 164) = *(t + 164);
  *(v4 + 212) = v15;
  *(v4 + 196) = v14;
  *(v4 + 180) = v13;
  v16 = *(t + 244);
  v17 = *(t + 260);
  v18 = *(t + 276);
  *(v4 + 228) = *(t + 228);
  *(v4 + 260) = v17;
  *(v4 + 276) = v18;
  *(v4 + 244) = v16;
  *(v4 + 8) = *(t + 8);
  return v4;
}

apr_table_t *__cdecl apr_table_clone(apr_pool_t *p, const apr_table_t *t)
{
  v3 = *(t + 3);
  v4 = apr_table_make(p, *(t + 3));
  if (*(t + 3) >= 1)
  {
    v5 = 0;
    v6 = (v3 + 8);
    do
    {
      apr_table_add(v4, *(v6 - 1), *v6);
      ++v5;
      v6 += 3;
    }

    while (v5 < *(t + 3));
  }

  return v4;
}

void apr_table_add(apr_table_t *t, const char *key, const char *val)
{
  v6 = *key;
  v7 = *(t + 3);
  v8 = t + 4 * (*key & 0x1F);
  *(v8 + 41) = v7;
  v9 = *(t + 8);
  v10 = 1 << v6;
  if ((v9 & v10) == 0)
  {
    *(v8 + 9) = v7;
    *(t + 8) = v9 | v10;
  }

  v11 = *key;
  if (*key && (v11 = (v11 << 16) | (key[1] << 8), key[1]))
  {
    v12 = (v11 | key[2]) << 8;
    if (key[2])
    {
      v12 |= key[3];
    }
  }

  else
  {
    v12 = v11 << 8;
  }

  v13 = apr_array_push_noclear(t);
  v14 = strlen(key);
  v15 = apr_palloc(*t, v14 + 1);
  memcpy(v15, key, v14 + 1);
  *v13 = v15;
  *(v13 + 1) = apr_pstrdup(*t, val);
  *(v13 + 4) = v12 & 0xDFDFDFDF;
}

char *apr_array_push_noclear(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 == *(a1 + 16))
  {
    if (v2 < 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * v2;
    }

    v4 = apr_palloc(*a1, *(a1 + 8) * v3);
    memcpy(v4, *(a1 + 24), *(a1 + 8) * *(a1 + 16));
    *(a1 + 24) = v4;
    *(a1 + 16) = v3;
    v2 = *(a1 + 12);
  }

  else
  {
    v4 = *(a1 + 24);
  }

  *(a1 + 12) = v2 + 1;
  return &v4[*(a1 + 8) * v2];
}

const char *__cdecl apr_table_get(const apr_table_t *t, const char *key)
{
  if (!key)
  {
    return 0;
  }

  v3 = *key;
  if (((*(t + 8) >> *key) & 1) == 0)
  {
    return 0;
  }

  v4 = v3;
  v5 = v3 & 0x1F;
  if (v4 && (v4 = (v4 << 16) | (key[1] << 8), key[1]))
  {
    v6 = (v4 | key[2]) << 8;
    if (key[2])
    {
      v6 |= key[3];
    }
  }

  else
  {
    v6 = v4 << 8;
  }

  v8 = t + 4 * v5;
  v9 = *(v8 + 9);
  v10 = *(v8 + 41);
  if (v9 > v10)
  {
    return 0;
  }

  v11 = v6 & 0xDFDFDFDF;
  v12 = *(t + 3);
  v13 = v12 + 24 * v10;
  v14 = v12 + 24 * v9;
  while (v11 != *(v14 + 16) || strcasecmp(*v14, key))
  {
    v14 += 24;
    if (v14 > v13)
    {
      return 0;
    }
  }

  return *(v14 + 8);
}

void apr_table_set(apr_table_t *t, const char *key, const char *val)
{
  v6 = *key;
  if (!*key)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = (v6 << 16) | (key[1] << 8);
  if (!key[1])
  {
LABEL_6:
    v8 = v7 << 8;
    goto LABEL_7;
  }

  v8 = (v7 | key[2]) << 8;
  if (key[2])
  {
    v8 |= key[3];
  }

LABEL_7:
  v9 = v8 & 0xDFDFDFDF;
  v10 = *(t + 8);
  v11 = *key & 0x1F;
  v12 = 1 << v6;
  v13 = t + 36;
  v14 = t + 4 * v11;
  if ((v10 & v12) == 0)
  {
    v17 = *(t + 3);
    *&v13[4 * v11] = v17;
    *(t + 8) = v10 | v12;
    goto LABEL_15;
  }

  v15 = *&v13[4 * v11];
  v16 = *(v14 + 41);
  v17 = *(t + 3);
  if (v15 > v16)
  {
LABEL_15:
    *(v14 + 41) = v17;
    v22 = apr_array_push_noclear(t);
    v23 = strlen(key);
    v24 = apr_palloc(*t, v23 + 1);
    memcpy(v24, key, v23 + 1);
    *v22 = v24;
    *(v22 + 1) = apr_pstrdup(*t, val);
    *(v22 + 4) = v9;
    return;
  }

  v18 = *(t + 3);
  v19 = v18 + 24 * v16;
  v20 = v18 + 24 * v17;
  v21 = v18 + 24 * v15;
  while (v9 != *(v21 + 16) || strcasecmp(*v21, key))
  {
    v21 += 24;
    if (v21 > v19)
    {
      goto LABEL_15;
    }
  }

  *(v21 + 8) = apr_pstrdup(*t, val);
  v25 = v21 + 24;
  if (v21 + 24 > v19)
  {
    return;
  }

  v26 = 0;
  v27 = 0;
  do
  {
    while (1)
    {
      v28 = *(v21 + 40);
      v21 = v25;
      if (v9 == v28 && !strcasecmp(*v25, key))
      {
        --*(t + 3);
        if (!v26)
        {
          v26 = v21;
        }

        goto LABEL_27;
      }

      if (!v26)
      {
        break;
      }

      v29 = *v21;
      *(v26 + 16) = *(v21 + 16);
      *v26 = v29;
      v26 += 24;
      v27 = 1;
LABEL_27:
      v25 = v21 + 24;
      if (v21 + 24 > v19)
      {
        while (v25 < v20)
        {
          v30 = *v25;
          *(v26 + 16) = *(v25 + 16);
          *v26 = v30;
          v26 += 24;
          v25 += 24;
        }

        goto LABEL_30;
      }
    }

    v25 = v21 + 24;
  }

  while (v21 + 24 <= v19);
  if (!v27)
  {
    return;
  }

LABEL_30:

  table_reindex(t);
}

uint64_t table_reindex(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 32) = 0;
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    for (i = 0; i != v2; ++i)
    {
      v5 = **v1;
      v6 = v5 & 0x1F;
      *(result + 164 + 4 * v6) = i;
      v7 = 1 << v5;
      if ((v7 & v3) == 0)
      {
        *(result + 36 + 4 * v6) = i;
        v3 |= v7;
        *(result + 32) = v3;
      }

      v1 += 3;
    }
  }

  return result;
}

void apr_table_setn(apr_table_t *t, const char *key, const char *val)
{
  v6 = *key;
  if (!*key)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = (v6 << 16) | (key[1] << 8);
  if (!key[1])
  {
LABEL_6:
    v8 = v7 << 8;
    goto LABEL_7;
  }

  v8 = (v7 | key[2]) << 8;
  if (key[2])
  {
    v8 |= key[3];
  }

LABEL_7:
  v9 = v8 & 0xDFDFDFDF;
  v10 = *(t + 8);
  v11 = *key & 0x1F;
  v12 = 1 << v6;
  v13 = t + 36;
  v14 = t + 4 * v11;
  if ((v10 & v12) == 0)
  {
    v17 = *(t + 3);
    *&v13[4 * v11] = v17;
    *(t + 8) = v10 | v12;
    goto LABEL_15;
  }

  v15 = *&v13[4 * v11];
  v16 = *(v14 + 41);
  v17 = *(t + 3);
  if (v15 > v16)
  {
LABEL_15:
    *(v14 + 41) = v17;
    v22 = apr_array_push_noclear(t);
    *v22 = key;
    *(v22 + 1) = val;
    *(v22 + 4) = v9;
    return;
  }

  v18 = *(t + 3);
  v19 = v18 + 24 * v16;
  v20 = v18 + 24 * v17;
  v21 = v18 + 24 * v15;
  while (v9 != *(v21 + 16) || strcasecmp(*v21, key))
  {
    v21 += 24;
    if (v21 > v19)
    {
      goto LABEL_15;
    }
  }

  *(v21 + 8) = val;
  v23 = v21 + 24;
  if (v21 + 24 > v19)
  {
    return;
  }

  v24 = 0;
  v25 = 0;
  do
  {
    while (1)
    {
      v26 = *(v21 + 40);
      v21 = v23;
      if (v9 == v26 && !strcasecmp(*v23, key))
      {
        --*(t + 3);
        if (!v24)
        {
          v24 = v21;
        }

        goto LABEL_27;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21;
      *(v24 + 16) = *(v21 + 16);
      *v24 = v27;
      v24 += 24;
      v25 = 1;
LABEL_27:
      v23 = v21 + 24;
      if (v21 + 24 > v19)
      {
        while (v23 < v20)
        {
          v28 = *v23;
          *(v24 + 16) = *(v23 + 16);
          *v24 = v28;
          v24 += 24;
          v23 += 24;
        }

        goto LABEL_30;
      }
    }

    v23 = v21 + 24;
  }

  while (v21 + 24 <= v19);
  if (!v25)
  {
    return;
  }

LABEL_30:

  table_reindex(t);
}

void apr_table_unset(apr_table_t *t, const char *key)
{
  v2 = *key;
  if ((*(t + 8) >> *key))
  {
    v5 = v2;
    v6 = v2 & 0x1F;
    if (v5 && (v5 = (v5 << 16) | (key[1] << 8), key[1]))
    {
      v7 = (v5 | key[2]) << 8;
      if (key[2])
      {
        v7 |= key[3];
      }
    }

    else
    {
      v7 = v5 << 8;
    }

    v8 = t + 4 * v6;
    v9 = *(v8 + 9);
    v10 = *(v8 + 41);
    if (v9 <= v10)
    {
      v11 = v7 & 0xDFDFDFDF;
      v12 = *(t + 3);
      v13 = v12 + 24 * v10;
      v14 = v12 + 24 * v9;
      while (v11 != *(v14 + 16) || strcasecmp(*v14, key))
      {
        v14 += 24;
        if (v14 > v13)
        {
          return;
        }
      }

      v15 = *(t + 3);
      v16 = v12 + 24 * v15;
      *(t + 3) = v15 - 1;
      for (i = (v14 + 24); i <= v13; i = (i + 24))
      {
        if (v11 == *(i + 4) && !strcasecmp(*i, key))
        {
          --*(t + 3);
        }

        else
        {
          v18 = *i;
          *(v14 + 16) = *(i + 2);
          *v14 = v18;
          v14 += 24;
        }
      }

      while (i < v16)
      {
        v19 = *i;
        *(v14 + 16) = *(i + 2);
        *v14 = v19;
        v14 += 24;
        i = (i + 24);
      }

      table_reindex(t);
    }
  }
}

void apr_table_merge(apr_table_t *t, const char *key, const char *val)
{
  v6 = *key;
  if (!*key)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = (v6 << 16) | (key[1] << 8);
  if (!key[1])
  {
LABEL_6:
    v8 = v7 << 8;
    goto LABEL_7;
  }

  v8 = (v7 | key[2]) << 8;
  if (key[2])
  {
    v8 |= key[3];
  }

LABEL_7:
  v9 = v8 & 0xDFDFDFDF;
  v10 = *(t + 8);
  v11 = *key & 0x1F;
  v12 = 1 << v6;
  v13 = t + 36;
  v14 = t + 4 * v11;
  if ((v10 & v12) == 0)
  {
    *&v13[4 * v11] = *(t + 3);
    *(t + 8) = v10 | v12;
    goto LABEL_15;
  }

  v15 = *&v13[4 * v11];
  v16 = *(v14 + 41);
  if (v15 > v16)
  {
LABEL_15:
    *(v14 + 41) = *(t + 3);
    v20 = apr_array_push_noclear(t);
    v21 = strlen(key);
    v22 = apr_palloc(*t, v21 + 1);
    memcpy(v22, key, v21 + 1);
    *v20 = v22;
    *(v20 + 1) = apr_pstrdup(*t, val);
    *(v20 + 4) = v9;
    return;
  }

  v17 = *(t + 3);
  v18 = v17 + 24 * v16;
  v19 = v17 + 24 * v15;
  while (v9 != *(v19 + 16) || strcasecmp(*v19, key))
  {
    v19 += 24;
    if (v19 > v18)
    {
      goto LABEL_15;
    }
  }

  *(v19 + 8) = apr_pstrcat(*t, *(v19 + 8), ", ", val, 0);
}

void apr_table_mergen(apr_table_t *t, const char *key, const char *val)
{
  v6 = *key;
  if (!*key)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = (v6 << 16) | (key[1] << 8);
  if (!key[1])
  {
LABEL_6:
    v8 = v7 << 8;
    goto LABEL_7;
  }

  v8 = (v7 | key[2]) << 8;
  if (key[2])
  {
    v8 |= key[3];
  }

LABEL_7:
  v9 = v8 & 0xDFDFDFDF;
  v10 = *(t + 8);
  v11 = *key & 0x1F;
  v12 = 1 << v6;
  v13 = t + 36;
  v14 = t + 4 * v11;
  if ((v10 & v12) == 0)
  {
    *&v13[4 * v11] = *(t + 3);
    *(t + 8) = v10 | v12;
    goto LABEL_15;
  }

  v15 = *&v13[4 * v11];
  v16 = *(v14 + 41);
  if (v15 > v16)
  {
LABEL_15:
    *(v14 + 41) = *(t + 3);
    v20 = apr_array_push_noclear(t);
    *v20 = key;
    *(v20 + 1) = val;
    *(v20 + 4) = v9;
    return;
  }

  v17 = *(t + 3);
  v18 = v17 + 24 * v16;
  v19 = v17 + 24 * v15;
  while (v9 != *(v19 + 16) || strcasecmp(*v19, key))
  {
    v19 += 24;
    if (v19 > v18)
    {
      goto LABEL_15;
    }
  }

  *(v19 + 8) = apr_pstrcat(*t, *(v19 + 8), ", ", val, 0);
}

void apr_table_addn(apr_table_t *t, const char *key, const char *val)
{
  v5 = *key;
  v6 = *(t + 3);
  v7 = t + 4 * (*key & 0x1F);
  *(v7 + 41) = v6;
  v8 = *(t + 8);
  v9 = 1 << v5;
  if ((v8 & v9) == 0)
  {
    *(v7 + 9) = v6;
    *(t + 8) = v8 | v9;
  }

  v10 = *key;
  if (*key && (v10 = (v10 << 16) | (key[1] << 8), key[1]))
  {
    v11 = (v10 | key[2]) << 8;
    if (key[2])
    {
      v11 |= key[3];
    }
  }

  else
  {
    v11 = v10 << 8;
  }

  v12 = v11 & 0xDFDFDFDF;
  v13 = apr_array_push_noclear(t);
  *v13 = key;
  *(v13 + 1) = val;
  *(v13 + 4) = v12;
}

apr_table_t *__cdecl apr_table_overlay(apr_pool_t *p, const apr_table_t *overlay, const apr_table_t *base)
{
  v6 = apr_palloc(p, 0x128uLL);
  v6->pool = p;
  v6->elts = *(overlay + 3);
  v7 = *(overlay + 3);
  v6->elt_size = *(overlay + 2);
  v6->nelts = v7;
  v6->nalloc = v7;
  apr_array_cat(v6, base);
  table_reindex(v6);
  return v6;
}

int apr_table_vdo(apr_table_do_callback_fn_t *comp, void *rec, const apr_table_t *t, va_list vp)
{
  v5 = rec;
  v30 = vp + 8;
  v27 = t + 36;
  v7 = *vp;
  v8 = t + 164;
  v9 = *(t + 3) + 8;
  v28 = 1;
  v26 = v9;
  do
  {
    if (v7)
    {
      v10 = *v7;
      if (((*(t + 8) >> *v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10;
      if (v10 && (v11 = (v10 << 16) | (v7[1] << 8), v7[1]))
      {
        v12 = (v11 | v7[2]) << 8;
        if (v7[2])
        {
          v12 |= v7[3];
        }
      }

      else
      {
        v12 = v11 << 8;
      }

      v17 = v10 & 0x1F;
      v18 = v12 & 0xDFDFDFDF;
      v19 = *&v27[4 * v17];
      v20 = v9 + 24 * v19;
      v21 = v19 - 1;
      v22 = 1;
      while (++v21 <= *&v8[4 * v17])
      {
        v23 = *(v20 - 8);
        if (v23 && v18 == *(v20 + 8) && !strcasecmp(*(v20 - 8), v7))
        {
          v22 = (comp)(rec, v23, *v20);
        }

        v20 += 24;
        if (!v22)
        {
          v28 = 0;
          break;
        }
      }

      v5 = rec;
      v9 = v26;
    }

    else
    {
      v13 = 1;
      v14 = -1;
      v15 = v9;
      while (++v14 < *(t + 3))
      {
        v16 = *(v15 - 1);
        if (v16)
        {
          v13 = (comp)(v5, v16, *v15);
        }

        v15 += 3;
        if (!v13)
        {
          v28 = 0;
          break;
        }
      }
    }

    if (!v7)
    {
      return v28;
    }

LABEL_25:
    v24 = v30;
    v30 += 8;
    v7 = *v24;
  }

  while (*v24);
  return v28;
}

void apr_table_compress(apr_table_t *t, unsigned int flags)
{
  if (flags == 2)
  {
    return;
  }

  v3 = *(t + 3);
  if (v3 < 2)
  {
    return;
  }

  v4 = apr_palloc(*t, 8 * v3);
  v5 = v4;
  v6 = 0;
  v7 = *(t + 3);
  v8 = (v7 - 1);
  v9 = *(t + 3);
  v10 = vdupq_n_s64(v8);
  do
  {
    v11 = vaddq_s64(vdupq_n_s64(v9), xmmword_2975F0);
    v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2975C0)));
    if (v12.i8[0])
    {
      *&v4[8 * v6] = v11.i64[0];
    }

    if (v12.i8[4])
    {
      *&v4[8 * v6 + 8] = v11.i64[1];
    }

    v6 += 2;
    v9 += 48;
  }

  while (((v8 + 2) & 0x1FFFFFFFELL) != v6);
  v13 = apr_palloc(*t, 8 * v7);
  v72 = t;
  if (v7 < 2)
  {
    goto LABEL_16;
  }

  v14 = v13;
  v15 = 0;
  do
  {
    v16 = &v5[8 * v15];
    v17 = *v16;
    v18 = v16[1];
    if (strcasecmp(**v16, *v18) >= 1)
    {
      *v16 = v18;
      v16[1] = v17;
    }

    v19 = v15 + 3;
    v15 += 2;
  }

  while (v19 < v7);
  if (v7 == 2)
  {
LABEL_16:
    v20 = v5;
    goto LABEL_50;
  }

  v21 = 2;
  v74 = v7;
  do
  {
    v22 = 0;
    v23 = v21;
    v24 = v14;
    v14 = v5;
    v25 = 2 * v21;
    v73 = v24;
    v75 = v21;
    v76 = 2 * v21;
    do
    {
      if (v25 >= v7)
      {
        v26 = v7;
      }

      else
      {
        v26 = v25;
      }

      v77 = v26;
      v27 = v22 + v23;
      if (v22 + v23 + v23 >= v7)
      {
        v28 = v7;
      }

      else
      {
        v28 = v22 + v23 + v23;
      }

      v29 = v22 + v23;
      v30 = v22;
      if (v23)
      {
        while (v29 != v28)
        {
          v31 = v14[v30];
          v32 = v14[v29];
          v33 = strcasecmp(*v31, *v32);
          if (v33 >= 1)
          {
            v34 = v32;
          }

          else
          {
            v34 = v31;
          }

          if (v33 < 1)
          {
            ++v30;
          }

          if (v33 > 0)
          {
            ++v29;
          }

          *v24++ = v34;
          if (v30 == v27)
          {
            goto LABEL_35;
          }
        }

        v21 = v76;
        if (v30 >= v27)
        {
          goto LABEL_44;
        }

        v23 = v75;
        do
        {
          *v24++ = v14[v30++];
        }

        while (v30 < v27);
      }

      else
      {
LABEL_35:
        if (v29 >= v28)
        {
          v21 = v76;
LABEL_44:
          v23 = v75;
          goto LABEL_45;
        }

        v21 = v76;
        v35 = v77 - v29;
        v36 = &v14[v29];
        v23 = v75;
        do
        {
          v37 = *v36++;
          *v24++ = v37;
          --v35;
        }

        while (v35);
      }

LABEL_45:
      v22 += v21;
      v25 += v21;
      v7 = v74;
    }

    while (v22 + v23 < v74);
    v38 = v24 - v73;
    v20 = v73;
    if (v74 > v38 >> 3)
    {
      v39 = v38 >> 3;
      v40 = v74 - (v38 >> 3);
      v41 = &v73[8 * v39];
      v42 = &v14[v39];
      do
      {
        v43 = *v42++;
        *v41 = v43;
        v41 += 8;
        --v40;
      }

      while (v40);
    }

    v5 = v73;
  }

  while (v21 < v74);
LABEL_50:
  v44 = v72;
  v45 = *(v72 + 3);
  if (v45 >= 2)
  {
    v46 = v20 + 1;
    v47 = 1;
    v48 = &v20[v45];
    while (2)
    {
      v49 = v20;
      v50 = *v20;
      v51 = *(*v20 + 4);
      v52 = v46 + 1;
      while (1)
      {
        v53 = *v46;
        v54 = *(*v46 + 4);
        if (v54 == v51)
        {
          v55 = *v50;
          if (!strcasecmp(*v53, *v50))
          {
            break;
          }
        }

        v49 = v46;
        ++v52;
        v51 = v54;
        v50 = v53;
        if (++v46 >= v48)
        {
          v44 = v72;
          if (v47)
          {
            goto LABEL_78;
          }

          goto LABEL_73;
        }
      }

      do
      {
        v56 = v52;
        if (v52 >= v48)
        {
          break;
        }

        v57 = *v52;
        if (*(*v52 + 4) != v51)
        {
          break;
        }

        ++v52;
      }

      while (!strcasecmp(*v57, v55));
      v58 = (v56 - 1);
      v44 = v72;
      v20 = v49;
      if (flags == 1)
      {
        v59 = 0;
        v60 = v49;
        do
        {
          v61 = *v60++;
          v59 += strlen(*(v61 + 8)) + 2;
        }

        while (v60 <= v58);
        v62 = apr_palloc(*v72, v59);
        v63 = v49 + 1;
        v64 = v62;
        while (1)
        {
          strcpy(v64, *(*(v63 - 1) + 8));
          v65 = &v64[strlen(*(*(v63 - 1) + 8))];
          if (v63 > v58)
          {
            break;
          }

          *v65 = 8236;
          v64 = v65 + 2;
          ++v63;
        }

        *v65 = 0;
        v50 = *v49;
      }

      else
      {
        v62 = (*(v56 - 1))[1];
      }

      v50[1] = v62;
      do
      {
        v66 = *v46++;
        *v66 = 0;
      }

      while (v46 <= v58);
      v47 = 0;
      if (v46 < v48)
      {
        continue;
      }

      break;
    }

LABEL_73:
    v67 = *(v44 + 24);
    v68 = v67 + 24 * *(v44 + 12);
    v69 = v67;
    do
    {
      if (*v67)
      {
        v70 = *v67;
        *(v69 + 2) = *(v67 + 2);
        *v69 = v70;
        v69 = (v69 + 24);
      }

      v67 = (v67 + 24);
    }

    while (v67 < v68);
    *(v44 + 12) += 1431655765 * ((v68 - v69) >> 3);
  }

LABEL_78:

  table_reindex(v44);
}

void apr_table_overlap(apr_table_t *a, const apr_table_t *b, unsigned int flags)
{
  v3 = *(a + 3);
  if (v3 + *(b + 3))
  {
    apr_array_cat(a, b);
    if (v3)
    {
      v7 = 0;
      v8 = (b + 164);
      v9 = (a + 164);
      do
      {
        if (((1 << v7) & *(b + 8)) != 0)
        {
          *v9 = *v8 + v3;
          if ((*(a + 8) & (1 << v7)) == 0)
          {
            *(v9 - 32) = *(v8 - 32) + v3;
          }
        }

        ++v7;
        ++v8;
        ++v9;
      }

      while (v7 != 32);
      v10 = *(a + 8) | *(b + 8);
    }

    else
    {
      v11 = *(b + 36);
      v12 = *(b + 52);
      v13 = *(b + 68);
      *(a + 84) = *(b + 84);
      *(a + 68) = v13;
      *(a + 52) = v12;
      *(a + 36) = v11;
      v14 = *(b + 100);
      v15 = *(b + 116);
      v16 = *(b + 132);
      *(a + 148) = *(b + 148);
      *(a + 132) = v16;
      *(a + 116) = v15;
      *(a + 100) = v14;
      v17 = *(b + 244);
      v18 = *(b + 260);
      v19 = *(b + 276);
      *(a + 228) = *(b + 228);
      *(a + 260) = v18;
      *(a + 276) = v19;
      *(a + 244) = v17;
      v20 = *(b + 164);
      v21 = *(b + 180);
      v22 = *(b + 196);
      *(a + 212) = *(b + 212);
      *(a + 196) = v22;
      *(a + 180) = v21;
      *(a + 164) = v20;
      v10 = *(b + 8);
    }

    *(a + 8) = v10;

    apr_table_compress(a, flags);
  }
}

const char *__cdecl apr_table_getm(apr_pool_t *p, const apr_table_t *t, const char *key)
{
  v6 = 0;
  arr = 0;
  rec = p;
  apr_table_do(table_getm_do, &rec, t, key, 0);
  result = v6;
  if (v6)
  {
    if (arr)
    {
      return apr_array_pstrcat(p, arr, 44);
    }
  }

  return result;
}

uint64_t table_getm_do(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v8 = *a1;
      v9 = apr_palloc(*a1, 0x20uLL);
      v10 = apr_palloc(v8, 0x50uLL);
      if (v10)
      {
        *(v10 + 3) = 0u;
        *(v10 + 4) = 0u;
        *(v10 + 1) = 0u;
        *(v10 + 2) = 0u;
        *v10 = 0u;
      }

      v9->elts = v10;
      v9->pool = v8;
      *&v9->elt_size = 8;
      v9->nalloc = 10;
      *(a1 + 16) = v9;
      *apr_array_push(v9) = *(a1 + 8);
      v7 = *(a1 + 16);
    }

    v5 = apr_array_push(v7);
  }

  *v5 = a3;
  return 1;
}

apr_status_t apr_thread_mutex_create(apr_thread_mutex_t **mutex, unsigned int flags, apr_pool_t *pool)
{
  v4 = flags;
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
    v11.__sig = 0;
    *v11.__opaque = 0;
    v8 = pthread_mutexattr_init(&v11);
    if (v8)
    {
      return v8;
    }

    v9 = pthread_mutexattr_settype(&v11, 2);
    if (v9)
    {
      v8 = v9;
      pthread_mutexattr_destroy(&v11);
      return v8;
    }

    v8 = pthread_mutex_init((v7 + 8), &v11);
    pthread_mutexattr_destroy(&v11);
    if (v8)
    {
      return v8;
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

uint64_t TranslateNestedGTMTLRenderPassAttachmentDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 texture];
    *(a2 + 8) = [v8 streamReference];

    *(a2 + 24) = [v7 level];
    *(a2 + 22) = [v7 slice];
    *(a2 + 16) = [v7 depthPlane];
    v9 = [v7 resolveTexture];
    *a2 = [v9 streamReference];

    *(a2 + 26) = [v7 resolveLevel];
    *(a2 + 20) = [v7 resolveSlice];
    *(a2 + 18) = [v7 resolveDepthPlane];
    *(a2 + 25) = [v7 loadAction];
    *(a2 + 27) = [v7 storeAction];
    *(a2 + 28) = [v7 storeActionOptions];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 29) = [v7 yInvert];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeNestedMTLRenderPassAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = *(a2 + 8);
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];
  [v5 setTexture:v9];

  [v5 setLevel:*(a2 + 24)];
  [v5 setSlice:*(a2 + 22)];
  [v5 setDepthPlane:*(a2 + 16)];
  v10 = [NSNumber numberWithUnsignedLongLong:*a2];
  v11 = [v7 objectForKeyedSubscript:v10];

  [v5 setResolveTexture:v11];
  [v5 setResolveLevel:*(a2 + 26)];
  [v5 setResolveSlice:*(a2 + 20)];
  [v5 setResolveDepthPlane:*(a2 + 18)];
  [v5 setLoadAction:*(a2 + 25)];
  [v5 setStoreAction:*(a2 + 27)];
  [v5 setStoreActionOptions:*(a2 + 28)];
  if (objc_opt_respondsToSelector())
  {
    [v5 setYInvert:*(a2 + 29) != 0];
  }

  return v5;
}

void *TranslateNestedGTMTLRenderPassColorAttachmentDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  v6 = a1;
  TranslateNestedGTMTLRenderPassAttachmentDescriptor(v6, a2, v7, a4);
  if (a4)
  {
    [v6 clearColor];
    a2[4] = v8;
    a2[5] = v9;
    a2[6] = v10;
    a2[7] = v11;
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeNestedMTLRenderPassColorAttachmentDescriptor(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];

  return v5;
}

uint64_t TranslateNestedGTMTLRenderPassDepthAttachmentDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  TranslateNestedGTMTLRenderPassAttachmentDescriptor(v6, a2, v7, a4);
  if (a4)
  {
    [v6 clearDepth];
    *(a2 + 32) = v8;
    *(a2 + 40) = [v6 depthResolveFilter];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeNestedMTLRenderPassDepthAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];
  [v5 setDepthResolveFilter:*(a2 + 40)];

  return v5;
}

uint64_t TranslateNestedGTMTLRenderPassStencilAttachmentDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  TranslateNestedGTMTLRenderPassAttachmentDescriptor(v6, a2, v7, a4);
  if (a4)
  {
    *(a2 + 32) = [v6 clearStencil];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 36) = [v6 stencilResolveFilter];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeNestedMTLRenderPassStencilAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];
  if (objc_opt_respondsToSelector())
  {
    [v5 setStencilResolveFilter:*(a2 + 36)];
  }

  return v5;
}

void *TranslateNestedGTMTLRenderPassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  v6 = [v5 sampleBuffer];
  a2[2] = [v6 streamReference];

  a2[4] = [v5 startOfVertexSampleIndex];
  a2[1] = [v5 endOfVertexSampleIndex];
  a2[3] = [v5 startOfFragmentSampleIndex];
  v7 = [v5 endOfFragmentSampleIndex];

  *a2 = v7;
  return a2;
}

id MakeNestedMTLRenderPassSampleBufferAttachmentDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2[2];
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  [v5 setSampleBuffer:v9];
  [v5 setStartOfVertexSampleIndex:a2[4]];
  [v5 setEndOfVertexSampleIndex:a2[1]];
  [v5 setStartOfFragmentSampleIndex:a2[3]];
  [v5 setEndOfFragmentSampleIndex:*a2];

  return v5;
}

uint64_t TranslateGTMTLRenderPassDescriptorAuto(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 296);
  *(a2 + 296) = v6 + 824;
  if (a3)
  {
    memcpy(v6, &GTMTLRenderPassDescriptorDefaults, 0x338uLL);
  }

  v7 = v5;
  v8 = 0;
  v9 = v6;
  do
  {
    v10 = [v7 colorAttachments];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v12 = [v11 texture];

    if (v12)
    {
      v13 = [v7 colorAttachments];
      v14 = [v13 objectAtIndexedSubscript:v8];
      v16 = v14;
      if (a3)
      {
        v17 = v9;
      }

      else
      {
        v17 = 0;
      }

      TranslateNestedGTMTLRenderPassColorAttachmentDescriptor(v14, v17, v15, a3);
    }

    ++v8;
    v9 += 8;
  }

  while (v8 != 8);
  v18 = [v7 depthAttachment];
  TranslateNestedGTMTLRenderPassDepthAttachmentDescriptor(v18, v6 + 672, v19, a3);

  v20 = [v7 stencilAttachment];
  TranslateNestedGTMTLRenderPassStencilAttachmentDescriptor(v20, v6 + 720, v21, a3);

  v22 = 0;
  v23 = (v6 + 512);
  do
  {
    v24 = [v7 sampleBufferAttachments];
    v25 = [v24 objectAtIndexedSubscript:v22];
    v26 = [v25 sampleBuffer];

    if (v26)
    {
      v27 = [v7 sampleBufferAttachments];
      v28 = [v27 objectAtIndexedSubscript:v22];
      v30 = v28;
      if (a3)
      {
        v31 = v23;
      }

      else
      {
        v31 = 0;
      }

      TranslateNestedGTMTLRenderPassSampleBufferAttachmentDescriptor(v28, v31, v29, a3);
    }

    ++v22;
    v23 += 5;
  }

  while (v22 != 4);
  if (a3)
  {
    v32 = [v7 visibilityResultBuffer];
    *(v6 + 792) = [v32 streamReference];

    *(v6 + 806) = [v7 renderTargetArrayLength];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 804) = [v7 imageblockSampleLength];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 800) = [v7 threadgroupMemoryLength];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 814) = [v7 tileWidth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 812) = [v7 tileHeight];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 810) = [v7 renderTargetWidth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 808) = [v7 renderTargetHeight];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 816) = [v7 defaultRasterSampleCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 818) = [v7 openGLModeEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      v33 = [v7 rasterizationRateMap];
      *(v6 + 784) = [v33 streamReference];
    }

    v34 = v7;
    v35 = NSSelectorFromString(@"isDitherEnabled");
    if (objc_opt_respondsToSelector())
    {
      v36 = ([v34 methodForSelector:v35])(v34, v35);
    }

    else
    {
      v36 = [v34 ditherEnabled];
    }

    v37 = v36;

    *(v6 + 817) = v37;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 776) = [v34 defaultColorSampleCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 819) = [v34 pointCoordYFlipEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 820) = [v34 skipEmptyTilesOnClearEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 822) = [v34 visibilityResultType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 821) = [v34 supportColorAttachmentMapping];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTLRenderPassDescriptorAuto(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLRenderPassDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 792)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setVisibilityResultBuffer:v6];

  v7 = 0;
  v8 = a1;
  do
  {
    if (*(v8 + 8))
    {
      v9 = [v4 colorAttachments];
      v10 = [v9 objectAtIndexedSubscript:v7];
    }

    ++v7;
    v8 += 64;
  }

  while (v7 != 8);
  v11 = [v4 depthAttachment];

  v12 = [v4 stencilAttachment];

  [v4 setRenderTargetArrayLength:*(a1 + 806)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setImageblockSampleLength:*(a1 + 804)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setThreadgroupMemoryLength:*(a1 + 800)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTileWidth:*(a1 + 814)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTileHeight:*(a1 + 812)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setRenderTargetWidth:*(a1 + 810)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setRenderTargetHeight:*(a1 + 808)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDefaultRasterSampleCount:*(a1 + 816)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 818) != 0];
  }

  v13 = [NSNumber numberWithUnsignedLongLong:*(a1 + 784)];
  v14 = [v3 objectForKeyedSubscript:v13];
  [v4 setRasterizationRateMap:v14];

  if (objc_opt_respondsToSelector())
  {
    [v4 setDitherEnabled:*(a1 + 817) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDefaultColorSampleCount:*(a1 + 776)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointCoordYFlipEnabled:*(a1 + 819) != 0];
  }

  v15 = 0;
  v16 = (a1 + 512);
  do
  {
    if (v16[2])
    {
      v17 = [v4 sampleBufferAttachments];
      v18 = [v17 objectAtIndexedSubscript:v15];
    }

    ++v15;
    v16 += 5;
  }

  while (v15 != 4);
  if (objc_opt_respondsToSelector())
  {
    [v4 setSkipEmptyTilesOnClearEnabled:*(a1 + 820) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setVisibilityResultType:*(a1 + 822)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportColorAttachmentMapping:*(a1 + 821) != 0];
  }

  return v4;
}

uint64_t TranslateGTMTLTextureDescriptor(void *a1, uint64_t *a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *a2;
  *a2 += 56;
  if (a3)
  {
    *v7 = GTMTLTextureDescriptorDefaults;
    *(v7 + 16) = unk_29CCD8;
    *(v7 + 32) = xmmword_29CCE8;
    *(v7 + 48) = 512;
    TranslateGTMTLTextureDescriptorDirectly(v5, v7);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t TranslateGTMTLTextureDescriptorDirectly(void *a1, uint64_t a2)
{
  v3 = a1;
  *(a2 + 49) = [v3 textureType];
  *(a2 + 34) = [v3 pixelFormat];
  *(a2 + 24) = [v3 width];
  *(a2 + 32) = [v3 height];
  *(a2 + 30) = [v3 depth];
  *(a2 + 45) = [v3 mipmapLevelCount];
  *(a2 + 47) = [v3 sampleCount];
  *(a2 + 28) = [v3 arrayLength];
  *(a2 + 43) = [v3 framebufferOnly];
  *(a2 + 44) = [v3 isDrawable];
  *(a2 + 20) = [v3 usage];
  if (objc_opt_respondsToSelector())
  {
    *(a2 + 46) = [v3 rotation];
  }

  *(a2 + 36) = [v3 resourceOptions];
  *(a2 + 38) = [v3 allowGPUOptimizedContents];
  if (objc_opt_respondsToSelector())
  {
    *(a2 + 8) = [v3 resourceIndex];
  }

  *(a2 + 42) = [v3 forceResourceIndex];
  if (objc_opt_respondsToSelector())
  {
    *(a2 + 16) = [v3 swizzleKey];
  }

  *a2 = [v3 protectionOptions];
  if (objc_opt_respondsToSelector())
  {
    *(a2 + 48) = [v3 sparseSurfaceDefaultValue];
  }

  *(a2 + 50) = [v3 writeSwizzleEnabled];
  if (objc_opt_respondsToSelector())
  {
    *(a2 + 41) = [v3 compressionType];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a2 + 39) = [v3 compressionFootprint];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a2 + 40) = [v3 compressionMode];
  }

  return a2;
}

id MakeMTLTextureDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLTextureDescriptor);
  [v2 setTextureType:*(a1 + 49)];
  [v2 setPixelFormat:*(a1 + 34)];
  [v2 setWidth:*(a1 + 24)];
  [v2 setHeight:*(a1 + 32)];
  [v2 setDepth:*(a1 + 30)];
  [v2 setMipmapLevelCount:*(a1 + 45)];
  [v2 setSampleCount:*(a1 + 47)];
  [v2 setArrayLength:*(a1 + 28)];
  [v2 setFramebufferOnly:*(a1 + 43) != 0];
  [v2 setIsDrawable:*(a1 + 44) != 0];
  [v2 setUsage:*(a1 + 20)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setRotation:*(a1 + 46)];
  }

  [v2 setResourceOptions:*(a1 + 36)];
  [v2 setAllowGPUOptimizedContents:*(a1 + 38) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setSwizzleKey:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSparseSurfaceDefaultValue:*(a1 + 48)];
  }

  [v2 setWriteSwizzleEnabled:*(a1 + 50) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionType:*(a1 + 41)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionFootprint:*(a1 + 39)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionMode:*(a1 + 40)];
  }

  return v2;
}

id MakeMTLTextureDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLTextureDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 8) != 0];
  [v2 setResourceIndex:*(a1 + 8)];

  return v2;
}

uint64_t TranslateGTMTLBufferDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a2 + 8);
  *(a2 + 8) = v7 + 40;
  if (a3)
  {
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *v7 = [v5 length];
    *(v7 + 32) = [v6 resourceOptions];
    *(v7 + 34) = [v6 noCopy];
    *(v7 + 24) = [v6 pinnedGPUAddress];
    *(v7 + 8) = [v6 parentGPUAddress];
    *(v7 + 16) = [v6 parentGPUSize];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id MakeMTLBufferDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTLBufferDescriptor);
  [v2 setLength:*a1];
  [v2 setResourceOptions:*(a1 + 32)];
  [v2 setNoCopy:*(a1 + 34) != 0];

  return v2;
}

id MakeMTLBufferDescriptorWithBufferPinning(void *a1)
{
  v2 = MakeMTLBufferDescriptor(a1);
  [v2 setPinnedGPUAddress:a1[3]];
  [v2 setParentGPUAddress:a1[1]];
  [v2 setParentGPUSize:a1[2]];

  return v2;
}

uint64_t TranslateNestedGTMTLVertexBufferLayoutDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *a2 = [v5 stride];
  *(a2 + 8) = [v5 stepRate];
  v6 = [v5 stepFunction];

  *(a2 + 10) = v6;
  return a2;
}

id MakeNestedMTLVertexBufferLayoutDescriptor(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 setStride:*a2];
  [v3 setStepRate:*(a2 + 8)];
  [v3 setStepFunction:*(a2 + 10)];

  return v3;
}

uint64_t TranslateNestedGTMTLVertexAttributeDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *(a2 + 5) = [v5 format];
  *a2 = [v5 offset];
  v6 = [v5 bufferIndex];

  *(a2 + 4) = v6;
  return a2;
}

id MakeNestedMTLVertexAttributeDescriptor(void *a1, unsigned int *a2)
{
  v3 = a1;
  [v3 setFormat:*(a2 + 5)];
  [v3 setOffset:*a2];
  [v3 setBufferIndex:*(a2 + 4)];

  return v3;
}

uint64_t TranslateNestedGTMTLVertexDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = 0;
  v8 = a2;
  do
  {
    v9 = [v6 layouts];
    v10 = [v9 objectAtIndexedSubscript:v7];
    v12 = v10;
    if (a4)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    TranslateNestedGTMTLVertexBufferLayoutDescriptor(v10, v13, v11, a4);

    ++v7;
    v8 += 16;
  }

  while (v7 != 31);
  v14 = 0;
  v15 = a2 + 496;
  do
  {
    v16 = [v6 attributes];
    v17 = [v16 objectAtIndexedSubscript:v14];
    v19 = v17;
    if (a4)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0;
    }

    TranslateNestedGTMTLVertexAttributeDescriptor(v17, v20, v18, a4);

    ++v14;
    v15 += 8;
  }

  while (v14 != 31);
  if (!a4)
  {
    a2 = 0;
  }

  return a2;
}

id MakeNestedMTLVertexDescriptor(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = a2;
  do
  {
    v6 = [v3 layouts];
    v7 = [v6 objectAtIndexedSubscript:v4];

    ++v4;
    v5 += 16;
  }

  while (v4 != 31);
  v8 = 0;
  v9 = (a2 + 496);
  do
  {
    v10 = [v3 attributes];
    v11 = [v10 objectAtIndexedSubscript:v8];

    ++v8;
    v9 += 2;
  }

  while (v8 != 31);

  return v3;
}

uint64_t TranslateNestedGTMTLRenderPipelineColorAttachmentDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *(a2 + 3) = [v5 isBlendingEnabled];
  *(a2 + 8) = [v5 sourceRGBBlendFactor];
  *(a2 + 5) = [v5 destinationRGBBlendFactor];
  *(a2 + 6) = [v5 rgbBlendOperation];
  *(a2 + 7) = [v5 sourceAlphaBlendFactor];
  *(a2 + 4) = [v5 destinationAlphaBlendFactor];
  *(a2 + 2) = [v5 alphaBlendOperation];
  *(a2 + 9) = [v5 writeMask];
  v6 = [v5 pixelFormat];

  *a2 = v6;
  return a2;
}

id MakeNestedMTLRenderPipelineColorAttachmentDescriptor(void *a1, unsigned __int16 *a2)
{
  v3 = a1;
  [v3 setBlendingEnabled:*(a2 + 3) != 0];
  [v3 setSourceRGBBlendFactor:*(a2 + 8)];
  [v3 setDestinationRGBBlendFactor:*(a2 + 5)];
  [v3 setRgbBlendOperation:*(a2 + 6)];
  [v3 setSourceAlphaBlendFactor:*(a2 + 7)];
  [v3 setDestinationAlphaBlendFactor:*(a2 + 4)];
  [v3 setAlphaBlendOperation:*(a2 + 2)];
  [v3 setWriteMask:*(a2 + 9)];
  [v3 setPixelFormat:*a2];

  return v3;
}

uint64_t *TranslateNestedGTMTLLinkedFunctionsAuto(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [v7 functions];
  v9 = TranslateNSArray(v8, a3, a4);

  v10 = [v7 binaryFunctions];
  v11 = TranslateNSArray(v10, a3, a4);

  v12 = [v7 privateFunctions];
  v13 = TranslateNSArray(v12, a3, a4);

  if (a4)
  {
    v14 = [v7 functions];
    a2[3] = [v14 count];

    if (a2[3])
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    a2[2] = v15;
    v16 = [v7 binaryFunctions];
    a2[1] = [v16 count];

    if (a2[1])
    {
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    *a2 = v17;
    v18 = [v7 privateFunctions];
    a2[7] = [v18 count];

    if (a2[7])
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    a2[6] = v19;
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateNSArray(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(a2 + 576);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (a3)
        {
          v11 = [*(*(&v14 + 1) + 8 * v10) streamReference];
          v12 = *(a2 + 576);
          *v12 = v11;
        }

        else
        {
          v12 = *(a2 + 576);
        }

        *(a2 + 576) = v12 + 1;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v6;
}

id MakeNestedMTLLinkedFunctionsAuto(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*(a2 + 16), v7, v6);
    [v5 setFunctions:v8];
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = CreateObjectArrayWithMap(*a2, v9, v6);
    [v5 setBinaryFunctions:v10];
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = CreateObjectArrayWithMap(*(a2 + 48), v11, v6);
    [v5 setPrivateFunctions:v12];
  }

  return v5;
}

id CreateObjectArrayWithMap(uint64_t *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [[NSMutableArray alloc] initWithCapacity:a2];
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *a1++;
      v9 = [NSNumber numberWithUnsignedLongLong:v8];
      v10 = [v5 objectForKeyedSubscript:v9];

      if (v10)
      {
        [v6 addObject:v10];
      }

      --v7;
    }

    while (v7);
  }

  v11 = [v6 copy];

  return v11;
}

_BYTE *TranslateNestedGTMTLPipelineBufferDescriptor(void *a1, _BYTE *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a2;
  *a2 = [a1 mutability];
  return v4;
}

id MakeNestedMTLPipelineBufferDescriptor(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  [v3 setMutability:*a2];

  return v3;
}

uint64_t TranslateGTMTLRenderPipelineDescriptor(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2[38];
  a2[38] = v6 + 1512;
  if (a3)
  {
    memcpy(v6, &GTMTLRenderPipelineDescriptorDefaults, 0x5E8uLL);
  }

  v7 = v5;
  v8 = [v7 vertexDescriptor];
  TranslateNestedGTMTLVertexDescriptor(v8, v6, v9, a3);

  v10 = 0;
  v11 = v6 + 744;
  do
  {
    v12 = [v7 colorAttachments];
    v13 = [v12 objectAtIndexedSubscript:v10];
    v15 = v13;
    if (a3)
    {
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }

    TranslateNestedGTMTLRenderPipelineColorAttachmentDescriptor(v13, v16, v14, a3);

    ++v10;
    v11 += 16;
  }

  while (v10 != 8);
  v17 = [v7 label];
  v18 = [v17 UTF8String];
  v19 = v18;
  if (v18)
  {
    v20 = strlen(v18);
    v21 = a2 + 74;
    v22 = a2[74];
    v23 = v20 + 1;
    if (v20 != -1)
    {
      v24 = a2[74];
      goto LABEL_13;
    }
  }

  else
  {
    v21 = a2 + 74;
    v22 = a2[74];
  }

  v23 = 0;
  v24 = 0;
LABEL_13:
  *v21 = v22 + v23;
  if (a3)
  {
    memcpy(v24, v19, v23);
  }

  for (i = 0; i != 31; ++i)
  {
    v26 = [v7 vertexBuffers];
    v27 = [v26 objectAtIndexedSubscript:i];
    v28 = v27;
    if (a3)
    {
      *(v6 + i + 1447) = [v27 mutability];
    }
  }

  for (j = 0; j != 31; ++j)
  {
    v30 = [v7 fragmentBuffers];
    v31 = [v30 objectAtIndexedSubscript:j];
    v32 = v31;
    if (a3)
    {
      *(v6 + j + 1354) = [v31 mutability];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v33 = [v7 pluginData];
    v34 = GTMTLDescriptorAllocator_copyDictionary(a2, v33, a3);
    v76 = v35;
    v77 = v34;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v36 = [v7 driverCompilerOptions];
    v37 = GTMTLDescriptorAllocator_copyDictionary(a2, v36, a3);
    v74 = v38;
    v75 = v37;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  v39 = [v7 vertexPreloadedLibraries];
  v40 = TranslateNSArray(v39, a2, a3);

  v41 = [v7 fragmentPreloadedLibraries];
  v73 = TranslateNSArray(v41, a2, a3);

  v42 = [v7 vertexLinkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v42, (v6 + 1064), a2, a3);

  v43 = [v7 fragmentLinkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v43, (v6 + 872), a2, a3);

  for (k = 0; k != 31; ++k)
  {
    v45 = [v7 objectBuffers];
    v46 = [v45 objectAtIndexedSubscript:k];
    v47 = v46;
    if (a3)
    {
      *(v6 + k + 1416) = [v46 mutability];
    }
  }

  for (m = 0; m != 31; ++m)
  {
    v49 = [v7 meshBuffers];
    v50 = [v49 objectAtIndexedSubscript:m];
    v51 = v50;
    if (a3)
    {
      *(v6 + m + 1385) = [v50 mutability];
    }
  }

  v52 = [v7 objectPreloadedLibraries];
  v53 = TranslateNSArray(v52, a2, a3);

  v54 = [v7 meshPreloadedLibraries];
  v55 = TranslateNSArray(v54, a2, a3);

  v56 = [v7 objectLinkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v56, (v6 + 1000), a2, a3);

  v57 = [v7 meshLinkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v57, (v6 + 936), a2, a3);

  if (a3)
  {
    v58 = [v7 vertexFunction];
    *(v6 + 1296) = [v58 streamReference];

    v59 = [v7 fragmentFunction];
    *(v6 + 1176) = [v59 streamReference];

    *(v6 + 1272) = [v7 rasterSampleCount];
    *(v6 + 1288) = [v7 sampleMask];
    [v7 sampleCoverage];
    *(v6 + 1332) = v60;
    *(v6 + 1480) = [v7 isAlphaToCoverageEnabled];
    *(v6 + 1481) = [v7 isAlphaToOneEnabled];
    *(v6 + 1494) = [v7 isRasterizationEnabled];
    *(v6 + 1340) = [v7 depthAttachmentPixelFormat];
    *(v6 + 1352) = [v7 stencilAttachmentPixelFormat];
    *(v6 + 1200) = v24;
    *(v6 + 1486) = [v7 inputPrimitiveTopology];
    *(v6 + 1506) = [v7 tessellationPartitionMode];
    *(v6 + 1208) = [v7 maxTessellationFactor];
    *(v6 + 1503) = [v7 isTessellationFactorScaleEnabled];
    *(v6 + 1502) = [v7 tessellationFactorFormat];
    *(v6 + 1501) = [v7 tessellationControlPointIndexType];
    *(v6 + 1504) = [v7 tessellationFactorStepFunction];
    *(v6 + 1505) = [v7 tessellationOutputWindingOrder];
    *(v6 + 1500) = [v7 supportIndirectCommandBuffers];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1508) = [v7 vertexAmplificationMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1328) = [v7 maxVertexAmplificationCount];
    }

    if (objc_opt_respondsToSelector())
    {
      v61 = [v7 pipelineLibrary];
      *(v6 + 1264) = [v61 streamReference];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1487) = [v7 logicOperation];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1479) = [v7 alphaTestFunction];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1336) = [v7 vertexDepthCompareClampMask];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1324) = [v7 fragmentDepthCompareClampMask];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1488) = [v7 isLogicOperationEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1490) = [v7 openGLModeEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1491) = [v7 isPointCoordLowerLeft];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1492) = [v7 isPointSizeOutputVS];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1507) = [v7 isTwoSideEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1478) = [v7 isAlphaTestEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1493) = [v7 isPointSmoothEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1482) = [v7 clipDistanceEnableMask];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1280) = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1160) = [v7 colorSampleCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1495) = [v7 sampleCoverageInvert];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1489) = [v7 needsCustomBorderColorSamplers];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1484) = [v7 isDepthStencilWriteDisabled];
    }

    *(v6 + 1485) = [v7 forceSoftwareVertexFetch];
    *(v6 + 1144) = v77;
    *(v6 + 1152) = v76;
    *(v6 + 1128) = v75;
    *(v6 + 1136) = v74;
    v62 = [v7 vertexPreloadedLibraries];
    *(v6 + 1312) = [v62 count];

    if (*(v6 + 1312))
    {
      v63 = v40;
    }

    else
    {
      v63 = 0;
    }

    *(v6 + 1304) = v63;
    v64 = [v7 fragmentPreloadedLibraries];
    *(v6 + 1192) = [v64 count];

    v65 = v73;
    if (!*(v6 + 1192))
    {
      v65 = 0;
    }

    *(v6 + 1184) = v65;
    if (objc_opt_respondsToSelector())
    {
      v66 = [v7 objectFunction];
      *(v6 + 1240) = [v66 streamReference];
    }

    if (objc_opt_respondsToSelector())
    {
      v67 = [v7 meshFunction];
      *(v6 + 1216) = [v67 streamReference];
    }

    v68 = [v7 objectPreloadedLibraries];
    *(v6 + 1256) = [v68 count];

    if (*(v6 + 1256))
    {
      v69 = v53;
    }

    else
    {
      v69 = 0;
    }

    *(v6 + 1248) = v69;
    v70 = [v7 meshPreloadedLibraries];
    *(v6 + 1232) = [v70 count];

    if (*(v6 + 1232))
    {
      v71 = v55;
    }

    else
    {
      v71 = 0;
    }

    *(v6 + 1224) = v71;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1499) = [v7 supportAddingVertexBinaryFunctions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1496) = [v7 supportAddingFragmentBinaryFunctions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1498) = [v7 supportAddingObjectBinaryFunctions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1497) = [v7 supportAddingMeshBinaryFunctions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1320) = [v7 explicitVisibilityGroupID];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1350) = [v7 maxVertexCallStackDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1344) = [v7 maxFragmentCallStackDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1348) = [v7 maxObjectCallStackDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1346) = [v7 maxMeshCallStackDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1342) = [v7 maxAccelerationStructureTraversalDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 1483) = [v7 colorAttachmentMappingState];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *GTMTLDescriptorAllocator_copyDictionary(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v13 = 0;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
    v8 = v13;
    v9 = [v7 bytes];
    v10 = [v7 length];

    if (v10)
    {
      v11 = *(a1 + 592);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 592) += v10;
    if (a3)
    {
      memcpy(v11, v9, v10);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t *TranslateNestedGTMTLLinkedFunctions(void *a1, uint64_t *a2, void *a3, int a4)
{
  v7 = a1;
  v29 = a2;
  TranslateNestedGTMTLLinkedFunctionsAuto(v7, a2, a3, a4);
  v28 = a3[63];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v7 groups];
  v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = *v32;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v31 + 1) + 8 * i);
      v13 = [v12 UTF8String];
      v14 = v13;
      if (v13)
      {
        v15 = strlen(v13);
        v16 = a3[74];
        v17 = v15 + 1;
        if (v15 != -1)
        {
          v18 = a3[74];
          goto LABEL_11;
        }
      }

      else
      {
        v16 = a3[74];
      }

      v17 = 0;
      v18 = 0;
LABEL_11:
      a3[74] = v16 + v17;
      if (a4)
      {
        memcpy(v18, v14, v17);
      }

      v19 = [v7 groups];
      v20 = [v19 objectForKeyedSubscript:v12];
      v21 = TranslateNSArray(v20, a3, a4);

      v22 = a3[63];
      a3[63] = v22 + 24;
      if (a4)
      {
        v23 = (a3[72] - v21) >> 3;
        *(v22 + 16) = v23;
        if (v23)
        {
          v24 = v21;
        }

        else
        {
          v24 = 0;
        }

        *v22 = v18;
        *(v22 + 8) = v24;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v9);
LABEL_20:

  if (a4)
  {
    v25 = v29;
    v26 = 0xAAAAAAAAAAAAAAABLL * ((a3[63] - v28) >> 3);
    v29[4] = v28;
    v29[5] = v26;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id MakeMTLRenderPipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLRenderPipelineDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 1296)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setVertexFunction:v6];

  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 1176)];
  v8 = [v3 objectForKeyedSubscript:v7];
  [v4 setFragmentFunction:v8];

  v9 = [v4 vertexDescriptor];

  [v4 setRasterSampleCount:*(a1 + 1272)];
  [v4 setSampleMask:*(a1 + 1288)];
  LODWORD(v10) = *(a1 + 1332);
  [v4 setSampleCoverage:v10];
  [v4 setAlphaToCoverageEnabled:*(a1 + 1480) != 0];
  [v4 setAlphaToOneEnabled:*(a1 + 1481) != 0];
  [v4 setRasterizationEnabled:*(a1 + 1494) != 0];
  [v4 setDepthAttachmentPixelFormat:*(a1 + 1340)];
  [v4 setStencilAttachmentPixelFormat:*(a1 + 1352)];
  v11 = 0;
  v12 = (a1 + 744);
  do
  {
    v13 = [v4 colorAttachments];
    v14 = [v13 objectAtIndexedSubscript:v11];

    ++v11;
    v12 += 8;
  }

  while (v11 != 8);
  if (*(a1 + 1200))
  {
    v15 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v15];
  }

  [v4 setInputPrimitiveTopology:*(a1 + 1486)];
  [v4 setTessellationPartitionMode:*(a1 + 1506)];
  [v4 setMaxTessellationFactor:*(a1 + 1208)];
  [v4 setTessellationFactorScaleEnabled:*(a1 + 1503) != 0];
  [v4 setTessellationFactorFormat:*(a1 + 1502)];
  [v4 setTessellationControlPointIndexType:*(a1 + 1501)];
  [v4 setTessellationFactorStepFunction:*(a1 + 1504)];
  [v4 setTessellationOutputWindingOrder:*(a1 + 1505)];
  for (i = 0; i != 31; ++i)
  {
    v17 = [v4 vertexBuffers];
    v18 = [v17 objectAtIndexedSubscript:i];
    [v18 setMutability:*(a1 + 1447 + i)];
  }

  for (j = 0; j != 31; ++j)
  {
    v20 = [v4 fragmentBuffers];
    v21 = [v20 objectAtIndexedSubscript:j];
    [v21 setMutability:*(a1 + 1354 + j)];
  }

  [v4 setSupportIndirectCommandBuffers:*(a1 + 1500) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexAmplificationMode:*(a1 + 1508)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 1328)];
  }

  v22 = [NSNumber numberWithUnsignedLongLong:*(a1 + 1264)];
  v23 = [v3 objectForKeyedSubscript:v22];
  [v4 setPipelineLibrary:v23];

  if (objc_opt_respondsToSelector())
  {
    [v4 setLogicOperation:*(a1 + 1487)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAlphaTestFunction:*(a1 + 1479)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexDepthCompareClampMask:*(a1 + 1336)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setFragmentDepthCompareClampMask:*(a1 + 1324)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setLogicOperationEnabled:*(a1 + 1488) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 1490) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointCoordLowerLeft:*(a1 + 1491) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointSizeOutputVS:*(a1 + 1492) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTwoSideEnabled:*(a1 + 1507) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAlphaTestEnabled:*(a1 + 1478) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointSmoothEnabled:*(a1 + 1493) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setClipDistanceEnableMask:*(a1 + 1482)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 1160)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSampleCoverageInvert:*(a1 + 1495) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setNeedsCustomBorderColorSamplers:*(a1 + 1489) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDepthStencilWriteDisabled:*(a1 + 1484) != 0];
  }

  [v4 setForceSoftwareVertexFetch:*(a1 + 1485) != 0];
  if (objc_opt_respondsToSelector())
  {
    v24 = GTData_MakeDictionary(*(a1 + 1144), *(a1 + 1152));
    [v4 setPluginData:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = GTData_MakeDictionary(*(a1 + 1128), *(a1 + 1136));
    [v4 setDriverCompilerOptions:v25];
  }

  v26 = *(a1 + 1312);
  if (v26)
  {
    v27 = CreateObjectArrayWithMap(*(a1 + 1304), v26, v3);
    [v4 setVertexPreloadedLibraries:v27];
  }

  v28 = *(a1 + 1192);
  if (v28)
  {
    v29 = CreateObjectArrayWithMap(*(a1 + 1184), v28, v3);
    [v4 setFragmentPreloadedLibraries:v29];
  }

  v30 = [v4 vertexLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v30, (a1 + 1064), v3);

  v31 = [v4 fragmentLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v31, (a1 + 872), v3);

  v32 = [NSNumber numberWithUnsignedLongLong:*(a1 + 1240)];
  v33 = [v3 objectForKeyedSubscript:v32];
  [v4 setObjectFunction:v33];

  v34 = [NSNumber numberWithUnsignedLongLong:*(a1 + 1216)];
  v35 = [v3 objectForKeyedSubscript:v34];
  [v4 setMeshFunction:v35];

  for (k = 0; k != 31; ++k)
  {
    v37 = [v4 objectBuffers];
    v38 = [v37 objectAtIndexedSubscript:k];
    [v38 setMutability:*(a1 + 1416 + k)];
  }

  for (m = 0; m != 31; ++m)
  {
    v40 = [v4 meshBuffers];
    v41 = [v40 objectAtIndexedSubscript:m];
    [v41 setMutability:*(a1 + 1385 + m)];
  }

  v42 = *(a1 + 1256);
  if (v42)
  {
    v43 = CreateObjectArrayWithMap(*(a1 + 1248), v42, v3);
    [v4 setObjectPreloadedLibraries:v43];
  }

  v44 = *(a1 + 1232);
  if (v44)
  {
    v45 = CreateObjectArrayWithMap(*(a1 + 1224), v44, v3);
    [v4 setMeshPreloadedLibraries:v45];
  }

  v46 = [v4 objectLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v46, (a1 + 1000), v3);

  v47 = [v4 meshLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v47, (a1 + 936), v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingVertexBinaryFunctions:*(a1 + 1499) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingFragmentBinaryFunctions:*(a1 + 1496) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingObjectBinaryFunctions:*(a1 + 1498) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingMeshBinaryFunctions:*(a1 + 1497) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setExplicitVisibilityGroupID:*(a1 + 1320)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexCallStackDepth:*(a1 + 1350)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxFragmentCallStackDepth:*(a1 + 1344)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxObjectCallStackDepth:*(a1 + 1348)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxMeshCallStackDepth:*(a1 + 1346)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 1342)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorAttachmentMappingState:*(a1 + 1483)];
  }

  v48 = v4;

  return v4;
}

id GTData_MakeDictionary(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v4, v5, v6, v7, objc_opt_class(), 0];
    v9 = [NSData dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v18 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v9 error:&v18];
    v11 = v18;

    if (v11)
    {
      if (s_logUsingOsLog == 1)
      {
        v12 = gt_tagged_log(3);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [v11 localizedDescription];
          v14 = [v13 UTF8String];
          *buf = 136315138;
          v20 = v14;
          _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "warning: %s", buf, 0xCu);
        }
      }

      else
      {
        v15 = __stderrp;
        v12 = [v11 localizedDescription];
        v16 = [NSString stringWithFormat:@"warning: %s", [v12 UTF8String]];
        fprintf(v15, "%s\n", [v16 UTF8String]);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void MakeNestedMTLLinkedFunctions(void *a1, void *a2, void *a3)
{
  v13 = a1;
  v5 = a3;
  if (a2[7] + a2[3] + a2[1] + a2[5])
  {
    v6 = MakeNestedMTLLinkedFunctionsAuto(v13, a2, v5);
    if (a2[5])
    {
      v7 = [[NSMutableDictionary alloc] initWithCapacity:a2[5]];
      if (a2[5])
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = [NSString stringWithUTF8String:*(a2[4] + v8)];
          v11 = CreateObjectArrayWithMap(*(a2[4] + v8 + 8), *(a2[4] + v8 + 16), v5);
          [v7 setObject:v11 forKeyedSubscript:v10];

          ++v9;
          v8 += 24;
        }

        while (a2[5] > v9);
      }

      v12 = [v7 copy];
      [v13 setGroups:v12];
    }
  }
}

id MakeMTLRenderPipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 1500))
  {
    [v3 setResourceIndex:*(a1 + 1280)];
  }

  return v4;
}

uint64_t TranslateGTMTLMeshRenderPipelineDescriptor(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2[27];
  a2[27] = v6 + 512;
  if (a3)
  {
    memcpy(v6, &GTMTLMeshRenderPipelineDescriptorDefaults, 0x200uLL);
  }

  v7 = v5;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = a2 + 74;
    v13 = a2[74];
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = a2[74];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = a2 + 74;
    v13 = a2[74];
  }

  v14 = 0;
  v15 = 0;
LABEL_8:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);
  }

  for (i = 0; i != 31; ++i)
  {
    v17 = [v7 objectBuffers];
    v18 = [v17 objectAtIndexedSubscript:i];
    v19 = v18;
    if (a3)
    {
      *(v6 + i + 472) = [v18 mutability];
    }
  }

  for (j = 0; j != 31; ++j)
  {
    v21 = [v7 meshBuffers];
    v22 = [v21 objectAtIndexedSubscript:j];
    v23 = v22;
    if (a3)
    {
      *(v6 + j + 441) = [v22 mutability];
    }
  }

  for (k = 0; k != 31; ++k)
  {
    v25 = [v7 fragmentBuffers];
    v26 = [v25 objectAtIndexedSubscript:k];
    v27 = v26;
    if (a3)
    {
      *(v6 + k + 410) = [v26 mutability];
    }
  }

  v28 = 0;
  v29 = v6;
  do
  {
    v30 = [v7 colorAttachments];
    v31 = [v30 objectAtIndexedSubscript:v28];
    v33 = v31;
    if (a3)
    {
      v34 = v29;
    }

    else
    {
      v34 = 0;
    }

    TranslateNestedGTMTLRenderPipelineColorAttachmentDescriptor(v31, v34, v32, a3);

    ++v28;
    v29 += 16;
  }

  while (v28 != 8);
  v35 = [v7 objectLinkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v35, (v6 + 256), a2, a3);

  v36 = [v7 meshLinkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v36, (v6 + 192), a2, a3);

  v37 = [v7 fragmentLinkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v37, (v6 + 128), a2, a3);

  if (a3)
  {
    *(v6 + 352) = v15;
    v38 = [v7 objectFunction];
    *(v6 + 368) = [v38 streamReference];

    v39 = [v7 meshFunction];
    *(v6 + 360) = [v39 streamReference];

    v40 = [v7 fragmentFunction];
    *(v6 + 344) = [v40 streamReference];

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 406) = [v7 maxTotalThreadsPerObjectThreadgroup];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 404) = [v7 maxTotalThreadsPerMeshThreadgroup];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 508) = [v7 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 507) = [v7 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    }

    *(v6 + 376) = [v7 payloadMemoryLength];
    if (objc_opt_respondsToSelector())
    {
      if (v7)
      {
        [v7 maxThreadgroupsPerMeshGrid];
        v41 = v44;
        v42 = v45;
      }

      else
      {
        v42 = 0;
        v41 = 0uLL;
      }

      *(v6 + 320) = v41;
      *(v6 + 336) = v42;
    }

    *(v6 + 509) = [v7 rasterSampleCount];
    *(v6 + 503) = [v7 isAlphaToCoverageEnabled];
    *(v6 + 504) = [v7 isAlphaToOneEnabled];
    *(v6 + 510) = [v7 isRasterizationEnabled];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 396) = [v7 maxVertexAmplificationCount];
    }

    *(v6 + 400) = [v7 depthAttachmentPixelFormat];
    *(v6 + 408) = [v7 stencilAttachmentPixelFormat];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 511) = [v7 supportIndirectCommandBuffers];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 392) = [v7 explicitVisibilityGroupID];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 402) = [v7 maxAccelerationStructureTraversalDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 384) = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 505) = [v7 colorAttachmentMappingState];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLMeshRenderPipelineDescriptor);
  if (*(a1 + 352))
  {
    v5 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v5];
  }

  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 368)];
  v7 = [v3 objectForKeyedSubscript:v6];
  [v4 setObjectFunction:v7];

  v8 = [NSNumber numberWithUnsignedLongLong:*(a1 + 360)];
  v9 = [v3 objectForKeyedSubscript:v8];
  [v4 setMeshFunction:v9];

  v10 = [NSNumber numberWithUnsignedLongLong:*(a1 + 344)];
  v11 = [v3 objectForKeyedSubscript:v10];
  [v4 setFragmentFunction:v11];

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerObjectThreadgroup:*(a1 + 406)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerMeshThreadgroup:*(a1 + 404)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 508) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 507) != 0];
  }

  [v4 setPayloadMemoryLength:*(a1 + 376)];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 336);
    v30 = *(a1 + 320);
    v31 = v12;
    [v4 setMaxThreadgroupsPerMeshGrid:&v30];
  }

  for (i = 0; i != 31; ++i)
  {
    v14 = [v4 objectBuffers];
    v15 = [v14 objectAtIndexedSubscript:i];
    [v15 setMutability:*(a1 + 472 + i)];
  }

  for (j = 0; j != 31; ++j)
  {
    v17 = [v4 meshBuffers];
    v18 = [v17 objectAtIndexedSubscript:j];
    [v18 setMutability:*(a1 + 441 + j)];
  }

  for (k = 0; k != 31; ++k)
  {
    v20 = [v4 fragmentBuffers];
    v21 = [v20 objectAtIndexedSubscript:k];
    [v21 setMutability:*(a1 + 410 + k)];
  }

  [v4 setRasterSampleCount:*(a1 + 509)];
  [v4 setAlphaToCoverageEnabled:*(a1 + 503) != 0];
  [v4 setAlphaToOneEnabled:*(a1 + 504) != 0];
  [v4 setRasterizationEnabled:*(a1 + 510) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 396)];
  }

  v22 = 0;
  v23 = a1;
  do
  {
    v24 = [v4 colorAttachments];
    v25 = [v24 objectAtIndexedSubscript:v22];

    ++v22;
    v23 += 8;
  }

  while (v22 != 8);
  [v4 setDepthAttachmentPixelFormat:*(a1 + 400)];
  [v4 setStencilAttachmentPixelFormat:*(a1 + 408)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportIndirectCommandBuffers:*(a1 + 511) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setExplicitVisibilityGroupID:*(a1 + 392)];
  }

  v26 = [v4 objectLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v26, (a1 + 256), v3);

  v27 = [v4 meshLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v27, (a1 + 192), v3);

  v28 = [v4 fragmentLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v28, (a1 + 128), v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 402)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorAttachmentMappingState:*(a1 + 505)];
  }

  return v4;
}

id MakeMTLMeshRenderPipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 511))
  {
    [v3 setResourceIndex:*(a1 + 384)];
  }

  return v4;
}

uint64_t TranslateNestedGTMTLStencilDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *(a2 + 10) = [v5 stencilCompareFunction];
  *(a2 + 11) = [v5 stencilFailureOperation];
  *(a2 + 8) = [v5 depthFailureOperation];
  *(a2 + 9) = [v5 depthStencilPassOperation];
  *a2 = [v5 readMask];
  v6 = [v5 writeMask];

  *(a2 + 4) = v6;
  return a2;
}

id MakeNestedMTLStencilDescriptor(void *a1, unsigned int *a2)
{
  v3 = a1;
  [v3 setStencilCompareFunction:*(a2 + 10)];
  [v3 setStencilFailureOperation:*(a2 + 11)];
  [v3 setDepthFailureOperation:*(a2 + 8)];
  [v3 setDepthStencilPassOperation:*(a2 + 9)];
  [v3 setReadMask:*a2];
  [v3 setWriteMask:a2[1]];

  return v3;
}

uint64_t TranslateGTMTLDepthStencilDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a2 + 224);
  *(a2 + 224) = v7 + 48;
  if (a3)
  {
    *v7 = GTMTLDepthStencilDescriptorDefaults;
    *(v7 + 16) = unk_29BF30;
    *(v7 + 32) = xmmword_29BF40;
  }

  v8 = [v5 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = *(a2 + 592);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_8:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);

    v16 = [v6 frontFaceStencil];
    TranslateNestedGTMTLStencilDescriptor(v16, v7 + 16, v17, a3);

    v18 = [v6 backFaceStencil];
    TranslateNestedGTMTLStencilDescriptor(v18, v7, v19, a3);

    *(v7 + 40) = [v6 depthCompareFunction];
    *(v7 + 41) = [v6 isDepthWriteEnabled];
    *(v7 + 32) = v15;
  }

  else
  {

    v20 = [v6 frontFaceStencil];
    TranslateNestedGTMTLStencilDescriptor(v20, v7 + 16, v21, 0);

    v22 = [v6 backFaceStencil];
    TranslateNestedGTMTLStencilDescriptor(v22, v7, v23, 0);

    v7 = 0;
  }

  return v7;
}

id MakeMTLDepthStencilDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTLDepthStencilDescriptor);
  [v2 setDepthCompareFunction:*(a1 + 40)];
  [v2 setDepthWriteEnabled:*(a1 + 41) != 0];
  if (*(a1 + 32))
  {
    v3 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  v4 = [v2 frontFaceStencil];

  v5 = [v2 backFaceStencil];

  return v2;
}

uint64_t TranslateGTMTLSamplerDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 16);
  *(a2 + 16) = v6 + 72;
  if (a3)
  {
    *(v6 + 32) = xmmword_29CCA0;
    *(v6 + 48) = unk_29CCB0;
    *(v6 + 64) = 0;
    *v6 = GTMTLSamplerDescriptorDefaults;
    *(v6 + 16) = *algn_29CC90;
  }

  v7 = v5;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = *(a2 + 592);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_8:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);

    *(v6 + 60) = [v7 minFilter];
    *(v6 + 59) = [v7 magFilter];
    *(v6 + 61) = [v7 mipFilter];
    *(v6 + 8) = [v7 maxAnisotropy];
    *(v6 + 65) = [v7 sAddressMode];
    *(v6 + 67) = [v7 tAddressMode];
    *(v6 + 63) = [v7 rAddressMode];
    *(v6 + 62) = [v7 normalizedCoordinates];
    [v7 lodMinClamp];
    *(v6 + 48) = v16;
    [v7 lodMaxClamp];
    *(v6 + 44) = v17;
    *v6 = v15;
    *(v6 + 58) = [v7 lodAverage];
    *(v6 + 55) = [v7 compareFunction];
    *(v6 + 54) = [v7 borderColor];
    *(v6 + 66) = [v7 supportArgumentBuffers];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 16) = [v7 resourceIndex];
    }

    *(v6 + 56) = [v7 forceResourceIndex];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 64) = [v7 reductionMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 24) = [v7 customBorderColorValue];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 28) = [v7 customBorderColorValue];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 32) = [v7 customBorderColorValue];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 36) = [v7 customBorderColorValue];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 57) = [v7 forceSeamsOnCubemapFiltering];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 52) = [v7 pixelFormat];
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 lodBias];
      *(v6 + 40) = v18;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id MakeMTLSamplerDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLSamplerDescriptor);
  [v2 setMinFilter:*(a1 + 60)];
  [v2 setMagFilter:*(a1 + 59)];
  [v2 setMipFilter:*(a1 + 61)];
  [v2 setMaxAnisotropy:*(a1 + 8)];
  [v2 setSAddressMode:*(a1 + 65)];
  [v2 setTAddressMode:*(a1 + 67)];
  [v2 setRAddressMode:*(a1 + 63)];
  [v2 setNormalizedCoordinates:*(a1 + 62) != 0];
  LODWORD(v3) = *(a1 + 48);
  [v2 setLodMinClamp:v3];
  LODWORD(v4) = *(a1 + 44);
  [v2 setLodMaxClamp:v4];
  if (*a1)
  {
    v5 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v5];
  }

  [v2 setLodAverage:*(a1 + 58) != 0];
  [v2 setCompareFunction:*(a1 + 55)];
  [v2 setBorderColor:*(a1 + 54)];
  [v2 setSupportArgumentBuffers:*(a1 + 66) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setReductionMode:*(a1 + 64)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_0:*(a1 + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_1:*(a1 + 28)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_2:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_3:*(a1 + 36)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setForceSeamsOnCubemapFiltering:*(a1 + 57) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setPixelFormat:*(a1 + 52)];
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v6) = *(a1 + 40);
    [v2 setLodBias:v6];
  }

  return v2;
}

id MakeMTLSamplerDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLSamplerDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 16) != 0];
  [v2 setResourceIndex:*(a1 + 16)];

  return v2;
}

uint64_t TranslateGTMTLHeapDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a2 + 24);
  *(a2 + 24) = v7 + 24;
  if (a3)
  {
    *v7 = GTMTLHeapDescriptorDefaults;
    *(v7 + 16) = 32;
    v8 = v5;
    *(v7 + 8) = [v8 size];
    if (objc_opt_respondsToSelector())
    {
      *(v7 + 20) = [v8 type];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 16) = [v8 resourceOptions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 19) = [v8 sparsePageSize];
    }

    if (objc_opt_respondsToSelector())
    {
      *v7 = [v8 pinnedGPUAddress];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 18) = [v8 maxCompatiblePlacementSparsePageSize];
    }
  }

  else
  {
    v9 = v5;
    v7 = 0;
  }

  return v7;
}