void _qsort_oid_t(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v8 = 128;
      }

      else
      {
        v8 = v7;
      }

      v9 = &v6[2 * v7 + 1];
      while (a3 - a2 > 32)
      {
        v10 = _partition_oid_t(a1, a2, a3);
        if (v10 < a2)
        {
          v20 = __si_assert_copy_extra_332();
          v21 = v20;
          v22 = "";
          if (v20)
          {
            v22 = v20;
          }

          __message_assert(v20, "qsort_oids.c", 24, "q>=left", v22);
          free(v21);
          if (__valid_fs(-1))
          {
            v23 = 2989;
          }

          else
          {
            v23 = 3072;
          }

          *v23 = -559038737;
          abort();
        }

        if (v8 == v7)
        {
          heapsort_b((a1 + 8 * a2), a3 - a2 + 1, 8uLL, &__block_literal_global_11840);
          v7 = v8;
          goto LABEL_21;
        }

        if (v10 - a2 <= a3 - v10)
        {
          *(v9 - 1) = a2;
          *v9 = v10 - 1;
          a2 = v10;
        }

        else
        {
          *(v9 - 1) = v10;
          *v9 = a3;
          a3 = v10 - 1;
        }

        ++v7;
        v9 += 2;
        if (a3 <= a2)
        {
          goto LABEL_21;
        }
      }

      v11 = a2 - 1;
      v12 = a1 + 8 + 8 * a2;
      v13 = a2;
      do
      {
        v14 = *(a1 + 8 * v13++);
        v15 = *(a1 + 8 * v13);
        v16 = v12;
        v17 = v11;
        v18 = v13;
        while (v14 > v15)
        {
          *v16 = v14;
          v18 = v17 + 1;
          if (v17 + 1 <= a2)
          {
            break;
          }

          v14 = *(v16 - 2);
          --v17;
          --v16;
        }

        *(a1 + 8 * v18) = v15;
        ++v11;
        v12 += 8;
      }

      while (v13 != a3);
    }

LABEL_21:
    --v7;
    v19 = &v6[2 * v7];
    a2 = *v19;
    a3 = v19[1];
  }

  while (v7);

  free(v6);
}

void db_obj_iter_return_page(uint64_t a1, uint64_t a2)
{
  if (*a1 != 3506)
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 705, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (a2)
  {
    v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = a2 + 24;
    if (v3)
    {
      v4 = MEMORY[0x1E69E9AC8];
      do
      {
        while (1)
        {
          v5 = v3;
          v3 = *v3;
          v6 = v5[2] - v5;
          if (v6 == 0x100000)
          {
            break;
          }

          if (*v4 == v6)
          {
            v9 = node_alloc();
            v9[1] = v5;
            madvise(v5, *v4, 5);
            atomic_fetch_add_explicit(qword_1EDD78CE0, -v6, memory_order_relaxed);
            v8 = &stru_1EDD78D30;
            v7 = v9;
            goto LABEL_10;
          }

LABEL_13:
          atomic_fetch_add_explicit(qword_1EDD78CE0, -v6, memory_order_relaxed);
          munmap(v5, v6);
          if (!v3)
          {
            goto LABEL_14;
          }
        }

        madvise(v5, 0x100000uLL, 5);
        atomic_fetch_add_explicit(qword_1EDD78CE0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
        if (atomic_fetch_add(qword_1EDD78D50, 1uLL) > 4)
        {
          atomic_fetch_add(qword_1EDD78D50, 0xFFFFFFFFFFFFFFFFLL);
          goto LABEL_13;
        }

        v7 = node_alloc();
        v7[1] = v5;
        v8 = &stru_1EDD78D40;
LABEL_10:
        OSAtomicEnqueue(v8, v7, 0);
      }

      while (v3);
    }
  }

LABEL_14:
  os_unfair_lock_lock(&slabQueueLock);
  *(a2 + 24) = *(a1 + 64);
  *(a1 + 64) = a2;

  os_unfair_lock_unlock(&slabQueueLock);
}

void *node_alloc()
{
  v0 = OSAtomicDequeue(&slab_cache, 0);
  if (!v0)
  {
    os_unfair_lock_lock(&node_alloc_node_lock);
    v0 = OSAtomicDequeue(&slab_cache, 0);
    if (!v0)
    {
      v1 = *MEMORY[0x1E69E9AC8];
      v2 = malloc_type_malloc(*MEMORY[0x1E69E9AC8], 0x970D17D9uLL);
      v0 = v2;
      if (v1 >= 0x20)
      {
        v3 = (v1 >> 4) - 1;
        v4 = v2 + 16;
        do
        {
          OSAtomicEnqueue(&slab_cache, v4, 0);
          v4 += 16;
          --v3;
        }

        while (v3);
      }
    }

    os_unfair_lock_unlock(&node_alloc_node_lock);
  }

  return v0;
}

uint64_t _partition_oid_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 8 * a2);
  v5 = &v4[(v3 + (v3 >> 63)) >> 1];
  v6 = (a1 + 8 * a3);
  if (a3 - a2 < 1024)
  {
    v25 = (a1 + 8 * a3);
    v21 = &v4[(v3 + (v3 >> 63)) >> 1];
    v11 = (a1 + 8 * a2);
  }

  else
  {
    v7 = v3 >> 3;
    v8 = &v4[v3 >> 3];
    v9 = *v4;
    v10 = *v8;
    v11 = (a1 + 8 * a2);
    if (*v4 != *v8)
    {
      v11 = &v4[2 * v7];
      v12 = *v11;
      if (v9 >= *v11)
      {
        v13 = &v4[2 * v7];
      }

      else
      {
        v13 = (a1 + 8 * a2);
      }

      if (v10 > v12)
      {
        v13 = v8;
      }

      if (v9 >= v12)
      {
        v14 = (a1 + 8 * a2);
      }

      else
      {
        v14 = &v4[2 * v7];
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
    v18 = &v5[-v7];
    v19 = *v18;
    v20 = *v5;
    if (*v18 == *v5)
    {
      v21 = &v5[-v7];
    }

    else
    {
      v21 = &v5[v7];
      v22 = *v21;
      if (*v21 != v19 && v22 != v20)
      {
        if (v19 >= v22)
        {
          v24 = v21;
        }

        else
        {
          v24 = v18;
        }

        if (v20 > v22)
        {
          v24 = v5;
        }

        if (v19 >= v22)
        {
          v21 = v18;
        }

        if (v20 < v22)
        {
          v21 = v5;
        }

        if (v19 >= v20)
        {
          v21 = v24;
        }
      }
    }

    v25 = &v6[-v16];
    v26 = &v6[v17];
    v27 = *v25;
    v28 = *v26;
    if (*v25 != *v26)
    {
      v29 = *v6;
      if (v27 >= *v6)
      {
        v30 = (a1 + 8 * a3);
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
        v25 = (a1 + 8 * a3);
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
        v25 = (a1 + 8 * a3);
      }

      if (v29 == v27)
      {
        v25 = (a1 + 8 * a3);
      }
    }
  }

  v31 = *v11;
  v32 = *v21;
  if (*v11 == *v21)
  {
    v21 = v11;
  }

  else
  {
    v33 = *v25;
    if (*v25 == v31 || v33 == v32)
    {
      v21 = v25;
    }

    else if (v31 >= v32)
    {
      if (v32 <= v33)
      {
        if (v31 >= v33)
        {
          v21 = v25;
        }

        else
        {
          v21 = v11;
        }
      }
    }

    else if (v32 >= v33)
    {
      if (v31 >= v33)
      {
        v21 = v11;
      }

      else
      {
        v21 = v25;
      }
    }
  }

  v35 = *v21;
  *v21 = *v6;
  *v6 = v35;
  v36 = *v4;
  v37 = a3 - a2;
  if (a3 > a2)
  {
    v38 = v4 + 1;
    do
    {
      v39 = *v38;
      if (v36 <= v35)
      {
        *(v38 - 1) = *(a1 + 8 * a2);
        *(a1 + 8 * a2++) = v36;
      }

      ++v38;
      v36 = v39;
      --v37;
    }

    while (v37);
    v36 = *(a1 + 8 * a2);
    v35 = *v6;
  }

  *(a1 + 8 * a2) = v35;
  *v6 = v36;
  return a2;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetAddSortedValues(unint64_t *a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a4;
  v36 = a2;
  v37 = &a2[a3];
  v38 = 0;
  v39 = 0;
  if (a3 >= 1 && (a1[21] & 1) != 0)
  {
    v6 = *a2;
    v7 = 12;
    *(a1 + 2) = 12;
    *a1 = v6 & 0xFFFFFFFFFFFF0000;
    *(a1 + 168) = 0;
LABEL_6:
    v8 = 0;
    v9 = a1 + 5;
    while (1)
    {
      v10 = *a1;
      if (!v7)
      {
        goto LABEL_23;
      }

      v11 = *a2;
      v12 = 4 * v7;
      v13 = -1 << (-4 * v7);
      if (((v10 ^ *a2) & v13) != 0)
      {
        do
        {
          v23 = *(a1 + 2);
          *(a1 + 2) = v23 - 1;
          if (v23 <= 0)
          {
            v29 = __si_assert_copy_extra_332();
            v30 = v29;
            v31 = "";
            if (v29)
            {
              v31 = v29;
            }

            __message_assert(v29, "SIValueSetInternals.h", 2014, "s->sharedDepth>=0", v31);
            free(v30);
            if (__valid_fs(-1))
            {
              v32 = 2989;
            }

            else
            {
              v32 = 3072;
            }

            *v32 = -559038737;
            abort();
          }

          if (v23 == 1)
          {
            v13 = 0;
          }

          else
          {
            v13 = -1 << (-4 * (v23 - 1));
          }

          v15 = a1[3];
          if (v15 == 63 || (v14 = a1[2]) == 0)
          {
            v14 = MEMORY[0x1C691E420](a1[4], 8072, 0xA00408091C53FLL, 0);
            *v14 = a1[2];
            bzero(v14 + 1, 0x1F80uLL);
            v15 = 0;
            a1[2] = v14;
          }

          v16 = &v14[16 * v15];
          a1[3] = v15 + 1;
          v17 = *v9;
          v18 = *(a1 + 7);
          v19 = *(a1 + 9);
          *(v16 + 7) = *(a1 + 11);
          *(v16 + 5) = v19;
          *(v16 + 3) = v18;
          *(v16 + 1) = v17;
          v20 = *(a1 + 13);
          v21 = *(a1 + 15);
          v22 = *(a1 + 17);
          *(v16 + 15) = *(a1 + 19);
          *(v16 + 13) = v22;
          *(v16 + 11) = v21;
          *(v16 + 9) = v20;
          *(a1 + 9) = 0u;
          *(a1 + 11) = 0u;
          *(a1 + 13) = 0u;
          *(a1 + 15) = 0u;
          *(a1 + 17) = 0u;
          *(a1 + 19) = 0u;
          *v9 = 0u;
          *(a1 + 7) = 0u;
          *(v9 + ((v10 >> (64 - 4 * v23)) & 0xF)) = (v16 + 1) | 1;
          v10 = *a1;
        }

        while (((*a1 ^ v11) & v13) != 0);
        v7 = *(a1 + 2);
        v12 = 4 * v7;
        v4 = a4;
      }

      v10 &= v13;
      *a1 = v10;
      if ((v12 - 61) <= 0xFFFFFFBE)
      {
        v33 = __si_assert_copy_extra_332();
        v26 = v33;
        v34 = "";
        if (v33)
        {
          v34 = v33;
        }

        __message_assert(v33, "SIValueSetInternals.h", 2026, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", v34);
LABEL_40:
        free(v26);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v7)
      {
        v24 = -1 << (-4 * v7);
      }

      else
      {
LABEL_23:
        v7 = 0;
        v24 = 0;
      }

      v38 = v10;
      v39 = v24;
      v8 += SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk((a1 + 5), &v36, v7, (a1 + 2), v4);
      v38 = 0;
      v39 = 0;
      a2 = v36;
      if (v36 >= v37)
      {
        return v8;
      }

      v7 = *(a1 + 2);
      if (!v7)
      {
        v25 = __si_assert_copy_extra_332();
        v26 = v25;
        v27 = "";
        if (v25)
        {
          v27 = v25;
        }

        __message_assert(v25, "SIValueSetInternals.h", 2039, "s->sharedDepth", v27);
        goto LABEL_40;
      }
    }
  }

  if (a3 >= 1)
  {
    v7 = *(a1 + 2);
    goto LABEL_6;
  }

  return 0;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v37 = a3 + 1;
  if (a3 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1 << (-4 * (a3 + 1));
  }

  v10 = (64 - 4 * (a3 + 1));
  v11 = v7 & v8;
  if (v10 > 12)
  {
    v12 = 0;
    while (1)
    {
      v13 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
      v14 = v10;
      v15 = (v13 >> v10) & 0xF;
      v16 = *(a1 + 8 * v15);
      v17 = (v13 | v8) & v9;
      *(a2 + 16) = v17;
      *(a2 + 24) = v9;
      if (a5)
      {
        *a5 = v17;
      }

      if ((v16 & 1) == 0)
      {
        if (v16)
        {
          v18 = *v16;
        }

        else
        {
          v19 = *(a4 + 16);
          if (v14 <= 0x1F)
          {
            if (v14 <= 0xF)
            {
              v16 = MEMORY[0x1C691E420](v19, 136, 0x1081040C0A9C235, 0);
              v18 = &unk_1F4281128;
              *v16 = &unk_1F4281128;
              *(v16 + 8) = 0u;
              *(v16 + 24) = 0u;
              *(v16 + 40) = 0u;
              *(v16 + 56) = 0u;
              *(v16 + 72) = 0u;
              *(v16 + 88) = 0u;
              *(v16 + 104) = 0u;
              *(v16 + 120) = 0u;
            }

            else
            {
              v16 = MEMORY[0x1C691E420](v19, 264, 0x10810409D866994, 0);
              v18 = &unk_1F4281088;
              *v16 = &unk_1F4281088;
              *(v16 + 8) = 0u;
              *(v16 + 24) = 0u;
              *(v16 + 40) = 0u;
              *(v16 + 56) = 0u;
              *(v16 + 72) = 0u;
              *(v16 + 88) = 0u;
              *(v16 + 104) = 0u;
              *(v16 + 120) = 0u;
              *(v16 + 136) = 0u;
              *(v16 + 152) = 0u;
              *(v16 + 168) = 0u;
              *(v16 + 184) = 0u;
              *(v16 + 200) = 0u;
              *(v16 + 216) = 0u;
              *(v16 + 232) = 0u;
              *(v16 + 248) = 0u;
            }
          }

          else
          {
            v16 = MEMORY[0x1C691E420](v19, 520, 0x1081040CC9A75ECLL, 0);
            v18 = &unk_1F4280FE8;
            *v16 = &unk_1F4280FE8;
            *(v16 + 24) = 0u;
            *(v16 + 40) = 0u;
            *(v16 + 56) = 0u;
            *(v16 + 72) = 0u;
            *(v16 + 88) = 0u;
            *(v16 + 104) = 0u;
            *(v16 + 120) = 0u;
            *(v16 + 136) = 0u;
            *(v16 + 152) = 0u;
            *(v16 + 168) = 0u;
            *(v16 + 184) = 0u;
            *(v16 + 200) = 0u;
            *(v16 + 216) = 0u;
            *(v16 + 232) = 0u;
            *(v16 + 248) = 0u;
            *(v16 + 8) = 0u;
            *(v16 + 264) = 0u;
            *(v16 + 280) = 0u;
            *(v16 + 296) = 0u;
            *(v16 + 312) = 0u;
            *(v16 + 328) = 0u;
            *(v16 + 344) = 0u;
            *(v16 + 360) = 0u;
            *(v16 + 376) = 0u;
            *(v16 + 392) = 0u;
            *(v16 + 408) = 0u;
            *(v16 + 424) = 0u;
            *(v16 + 440) = 0u;
            *(v16 + 456) = 0u;
            *(v16 + 472) = 0u;
            *(v16 + 488) = 0u;
            *(v16 + 504) = 0u;
          }

          *(a1 + 8 * v15) = v16;
        }

        v12 += v18[1](v16, a2, a5);
        if ((*(*v16 + 56))(v16) < 0x3E)
        {
          goto LABEL_23;
        }

        if ((*(*v16 + 56))(v16) > 0x3F)
        {
          v32 = __si_assert_copy_extra_332();
          v33 = v32;
          v34 = "";
          if (v32)
          {
            v34 = v32;
          }

          __message_assert(v32, "SIValueSetInternals.h", 1331, "holder->GetRawCount() <= (63)", v34);
          free(v33);
          if (__valid_fs(-1))
          {
            v35 = 2989;
          }

          else
          {
            v35 = 3072;
          }

          *v35 = -559038737;
          abort();
        }

        v20 = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v16, a3, a4);
        *(a1 + 8 * v15) = v20 | 1;
        if (*a2 >= *(a2 + 8) || (*(a2 + 24) & **a2) != *(a2 + 16))
        {
          goto LABEL_23;
        }

        v16 = v20;
      }

      v12 += SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk(v16 & 0xFFFFFFFFFFFFFFFELL, a2, v37, a4, a5);
LABEL_23:
      if (v8 != v11)
      {
        goto LABEL_40;
      }

      *(a2 + 16) = v8;
      *(a2 + 24) = v7;
      if (*a2 < *(a2 + 8))
      {
        v10 = v14;
        if ((**a2 & v7) == v8)
        {
          continue;
        }
      }

      return v12;
    }
  }

  v12 = 0;
  do
  {
    v21 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
    v22 = (v21 >> v10) & 0xF;
    v23 = *(a1 + 8 * v22);
    v24 = (v21 | v8) & v9;
    *(a2 + 16) = v24;
    *(a2 + 24) = v9;
    if (a5)
    {
      *a5 = v24;
    }

    if (v23)
    {
      inserted = SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk(v23 & 0xFFFFFFFFFFFFFFFELL, a2, v37, a4, a5);
    }

    else
    {
      if (v23)
      {
        v25 = *v23;
      }

      else
      {
        v27 = MEMORY[0x1C691E420](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
        v25 = &unk_1F42811C8;
        *v27 = &unk_1F42811C8;
        *(v27 + 24) = 0u;
        *(v27 + 40) = 0u;
        *(v27 + 56) = 0u;
        *(v27 + 72) = 0u;
        *(v27 + 88) = 0u;
        *(v27 + 104) = 0u;
        *(v27 + 120) = 0u;
        *(v27 + 136) = 0u;
        *(v27 + 152) = 0u;
        *(v27 + 168) = 0u;
        *(v27 + 184) = 0u;
        *(v27 + 200) = 0u;
        *(v27 + 216) = 0u;
        *(v27 + 232) = 0u;
        *(v27 + 248) = 0u;
        *(v27 + 8) = 0u;
        *(v27 + 264) = 0u;
        *(v27 + 280) = 0u;
        *(v27 + 296) = 0u;
        *(v27 + 312) = 0u;
        *(v27 + 328) = 0u;
        *(v27 + 344) = 0u;
        *(v27 + 360) = 0u;
        *(v27 + 376) = 0u;
        *(v27 + 392) = 0u;
        *(v27 + 408) = 0u;
        *(v27 + 424) = 0u;
        *(v27 + 440) = 0u;
        *(v27 + 456) = 0u;
        *(v27 + 472) = 0u;
        *(v27 + 488) = 0u;
        *(v27 + 504) = 0u;
        *(a1 + 8 * v22) = v27;
      }

      inserted = v25[1]();
    }

    if (v8 != v11)
    {
LABEL_40:
      v29 = __si_assert_copy_extra_332();
      v30 = v29;
      v31 = "";
      if (v29)
      {
        v31 = v29;
      }

      __message_assert(v29, "SIValueSetInternals.h", 1380, "startPrefix == (startPrefix & startMask)", v31);
      free(v30);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v12 += inserted;
    *(a2 + 16) = v8;
    *(a2 + 24) = v7;
  }

  while (*a2 < *(a2 + 8) && (**a2 & v7) == v8);
  return v12;
}

uint64_t SIValueSet<unsigned long long>::FlatContextWithPfx::peek(uint64_t **a1)
{
  v1 = **a1;
  v2 = a1[3];
  if ((v2 & v1) != a1[2])
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 164, "(key & fMask) == fPfx", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v1 & ~v2;
}

unsigned int *dboi_inflateDBO(uint64_t a1, void **a2, unsigned int *a3, char a4)
{
  v7 = 0;
  v8 = *(a1 + 72);
  v18 = 0;
  v9 = *(a1 + 24);
  if ((a4 & 1) == 0)
  {
    v7 = *(a1 + 56);
  }

  if (v8)
  {
    v10 = 98304;
  }

  else
  {
    v10 = 0x10000;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __dboi_inflateDBO_block_invoke;
  v17[3] = &__block_descriptor_tmp_184;
  v17[4] = a2;
  _inflateDBO(v9, a3, &v18, v7, v10, v17);
  result = v18;
  v12 = v18[3];
  if (v12 <= 0x2F)
  {
    v13 = __si_assert_copy_extra_3233(0, -1);
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v18 + v12 > (*a2)[2])
  {
    v16 = v18;
    slab_new(a2, v12, 0xFAu);
    result = v16;
  }

  else
  {
    (*a2)[1] = v18 + v12;
  }

  result[2] = result[3];
  return result;
}

void processItems(uint64_t a1, uint64_t a2, unint64_t a3, CFMutableDictionaryRef *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, unint64_t a17, char a18, NSObject *a19, uint64_t a20, int a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, SISearchCtx_METADATA **a28, int a29, unsigned __int8 *a30, char *a31, OSQueueHead *a32, uint64_t a33, uint64_t a34)
{
  v37 = *a28;
  v38 = *(*a28 + 120);
  if (v38)
  {
    v39 = 0;
    v40 = 0;
    v41 = *(v37 + 121);
    v42 = *(v37 + 122);
    do
    {
      v43 = *v41++;
      v39 += v43;
      v44 = *v42++;
      v40 += v44;
      --v38;
    }

    while (v38);
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  if (a3 < 0x800)
  {
    v45 = &a31[160 * a3];
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 4) = xmmword_1C2C00670;
    *(v45 + 5) = unk_1C2C00680;
    *(v45 + 6) = xmmword_1C2C00690;
    *(v45 + 2) = ZERO_RANKING_BITS;
    *(v45 + 3) = unk_1C2C00660;
    *(v45 + 28) = 0;
    v45[116] = 0;
    *(v45 + 16) = 0;
    *(v45 + 17) = 0;
    *(v45 + 15) = 0;
    *(v45 + 36) = 0;
  }

  if (a15)
  {
    v46 = 2;
  }

  else
  {
    v46 = 4;
  }

  if (v46 >= gCPUCount)
  {
    v47 = gCPUCount;
  }

  else
  {
    v47 = v46;
  }

  do
  {
    v48 = v47;
    v49 = (a3 - 1 + v47) / v47;
    if (v47 < 2)
    {
      break;
    }

    v47 >>= 1;
  }

  while (v49 < 0x80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZL12processItemsP14datastore_infommP24si_localized_value_cachePmbU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmS4_ES4_ooPtmPhbjmbP16dispatch_queue_sS4_jP14__MDPlistBytes14ranking_mode_sP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tP19PartialQueryResultsRP20SISearchCtx_METADATAiRbP10ReadData_sPV3__0P22ci_combobits_wrapped_sP20dispatch_semaphore_s_block_invoke;
  block[3] = &__block_descriptor_tmp_154;
  block[4] = a28;
  block[5] = v49;
  block[6] = a3;
  block[7] = a31;
  block[8] = a30;
  block[9] = a14;
  v65 = a18;
  block[10] = a1;
  block[11] = a24;
  block[12] = a17;
  block[13] = a5;
  block[14] = v40;
  block[15] = v39;
  v62 = a16;
  v63 = a23;
  v66 = a6;
  v64 = a29;
  block[16] = a25;
  block[17] = a26;
  dispatch_apply(v48, 0, block);
  if (a15)
  {
    v51 = *(*a28 + 212);
    if (v51)
    {
      v52 = *(*(*a28 + 105) + 48 * v51);
    }

    else
    {
      v52 = 0;
    }

    packItems(a2, a3, a4, a7, a8, a9, a10, v50, a11, a12, a13, a17, a20, a22, a27, a28, *a30, a31, a32, v52, a6);
  }

  else
  {
    v53 = *a28;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 0x40000000;
    v58[2] = ___ZL12processItemsP14datastore_infommP24si_localized_value_cachePmbU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmS4_ES4_ooPtmPhbjmbP16dispatch_queue_sS4_jP14__MDPlistBytes14ranking_mode_sP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tP19PartialQueryResultsRP20SISearchCtx_METADATAiRbP10ReadData_sPV3__0P22ci_combobits_wrapped_sP20dispatch_semaphore_s_block_invoke_155;
    v58[3] = &unk_1E8194460;
    v58[10] = a3;
    v58[11] = a4;
    v58[8] = a7;
    v58[9] = a2;
    v58[12] = a5;
    v58[13] = a8;
    v58[4] = a9;
    v58[5] = a10;
    v58[6] = a11;
    v58[7] = a12;
    v58[14] = a13;
    v58[15] = a14;
    v58[16] = a17;
    v58[17] = a20;
    v59 = a21;
    v58[18] = a22;
    v58[19] = a27;
    v58[20] = v53;
    v58[21] = a30;
    v58[22] = a31;
    v58[23] = a32;
    v60 = a6;
    v58[24] = a33;
    v58[25] = a34;
    dispatch_async(a19, v58);
  }
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::AddSortedKeysWithContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= *(a2 + 8))
  {
    return 0;
  }

  v6 = a1 + 8;
  if (a3)
  {
    do
    {
      if ((*(a2 + 24) & *v3) != *(a2 + 16))
      {
        break;
      }

      Key = SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2);
      v8 = 1 << Key;
      v9 = *(v6 + 8 * (Key >> 6));
      if (((1 << Key) & v9) == 0)
      {
        goto LABEL_12;
      }

      SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | Key);
      v3 = *a2;
    }

    while (*a2 < *(a2 + 8));
  }

  else
  {
    while ((*(a2 + 24) & *v3) == *(a2 + 16))
    {
      LODWORD(Key) = SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2);
      v8 = 1 << Key;
      v9 = *(v6 + 8 * (Key >> 6));
      if (((1 << Key) & v9) == 0)
      {
LABEL_12:
        *(v6 + 8 * ((Key << 16) >> 22)) = v9 | v8;
        return 1;
      }

      v3 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        return 0;
      }
    }
  }

  return 0;
}

void QueryFunctionCallbackContext_METADATA::~QueryFunctionCallbackContext_METADATA(QueryFunctionCallbackContext_METADATA *this)
{
  *this = &unk_1F427CB68;
  v2 = *(this + 5);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, deleteValue, 0);
    CFRelease(*(this + 5));
  }
}

{
  QueryFunctionCallbackContext_METADATA::~QueryFunctionCallbackContext_METADATA(this);

  JUMPOUT(0x1C691FEF0);
}

uint64_t SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(uint64_t **a1)
{
  v1 = *(*a1)++;
  v2 = a1[3];
  if ((v2 & v1) != a1[2])
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v1 & ~v2;
}

uint64_t writeDBOToPlistBytes(uint64_t a1, uint64_t a2, PartialQueryResults *a3, char **a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, float *a10, int a11, char a12, uint64_t a13, const __CFDictionary *a14, unsigned int a15, void *a16, uint64_t a17, void *a18)
{
  v173 = a7;
  v174 = a8;
  v177 = a6;
  v217 = *MEMORY[0x1E69E9840];
  v199 = a11;
  v200 = a12;
  v176 = a1;
  v22 = *(a1 + 1192);
  v23 = (*(*a5 + 32))(a5);
  if (!v23)
  {
    v139 = __si_assert_copy_extra_332();
    v140 = v139;
    v141 = "";
    if (v139)
    {
      v141 = v139;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6724, "oid", v141);
    free(v140);
    if (__valid_fs(-1))
    {
      v142 = 2989;
    }

    else
    {
      v142 = 3072;
    }

    *v142 = -559038737;
    abort();
  }

  v186 = a4;
  v25 = a5[2];
  v26 = a3 + 8 * a15;
  ++*(v26 + 314);
  v27 = *(v26 + 443);
  v179 = v23;
  *v27 = v23;
  *(v26 + 443) = v27 + 1;
  v28 = (a3 + 232);
  v29 = *(a3 + 29);
  v187 = a3;
  if ((v25 & 8) != 0)
  {
    v30 = 0;
    if (v29)
    {
      goto LABEL_6;
    }

LABEL_13:
    v175 = 0;
LABEL_23:
    v35 = 0;
    goto LABEL_24;
  }

  v30 = *(a3 + 31);
  if (v30)
  {
    v218.location = 0;
    v218.length = v29;
    CFBitVectorGetCountOfBit(*(a3 + 31), v218, 1u);
    a3 = v187;
  }

  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_6:
  v31 = *(a3 + 29);
  if (*a3 == 1)
  {
    if (v31)
    {
      v24 = (a3 + 104);
      if (!*(a3 + 13))
      {
        v32 = *(a3 + 16);
        if (v32)
        {
          *buf = 0;
          SIFlattenArrayToCStringVector(v32, v24, buf, v198);
          a3 = v187;
        }
      }
    }

    v33 = *(a3 + 13);
  }

  else
  {
    v24 = (a3 + 96);
    if (v31)
    {
      v33 = *(a3 + 12);
      if (!v33)
      {
        v34 = *(a3 + 15);
        if (v34)
        {
          SIFlattenArrayToCStringVector(v34, v24, a3 + 30, v28);
          a3 = v187;
          v33 = *(v187 + 12);
          if (!v33)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v33 = 0;
        }
      }
    }

    else
    {
      v33 = *(a3 + 12);
    }
  }

  v175 = v33;
  if (!v22)
  {
    goto LABEL_23;
  }

  v35 = (*(*a5 + 16))(a5, v24);
  a3 = v187;
LABEL_24:
  v185 = v35;
  v36 = *v28;
  v178 = a5;
  if (v36)
  {
    v37 = (a3 + 224);
    if (!*(a3 + 28))
    {
      v170 = v30;
      if (*a3 == 1)
      {
        v39 = (a3 + 104);
        v38 = *(a3 + 13);
        if (v38)
        {
LABEL_35:
          PartialQueryResults::setupFixedFunctionVector(a3, v38, v37);
          a3 = v187;
          v30 = v170;
          goto LABEL_36;
        }

        v40 = *(a3 + 16);
        if (v40)
        {
          *buf = 0;
          SIFlattenArrayToCStringVector(v40, a3 + 13, buf, v198);
          a3 = v187;
          v38 = *v39;
          goto LABEL_35;
        }

LABEL_34:
        v38 = 0;
        goto LABEL_35;
      }

      v38 = *(a3 + 12);
      if (v38)
      {
        goto LABEL_35;
      }

      v41 = *(a3 + 15);
      if (!v41)
      {
        goto LABEL_34;
      }

      SIFlattenArrayToCStringVector(v41, a3 + 12, a3 + 30, v28);
      a3 = v187;
      v38 = *(v187 + 12);
      if (v38)
      {
        goto LABEL_35;
      }

LABEL_33:
      v42 = __si_assert_copy_extra_332();
      __message_assert_336(v42, v43, v44, v45, v46, v47, v48, v49, "SISearchCtx.h");
      goto LABEL_197;
    }
  }

LABEL_36:
  v181 = *(a3 + 28);
  MEMORY[0x1EEE9AC00](v35);
  v190 = &v162 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v190, v50);
  v188 = v22;
  v51 = v185;
  if (!v185)
  {
    goto LABEL_50;
  }

  if (*v28)
  {
    v52 = v187;
    v53 = (v187 + 144);
    if (*(v187 + 18))
    {
      v54 = 144;
      if ((v25 & 8) == 0)
      {
        v54 = 160;
      }

      v55 = *(v187 + v54);
LABEL_42:
      v22 = v188;
      goto LABEL_46;
    }

    v123 = PartialQueryResults::attributeIdVector(v187, v188);
    PartialQueryResults::setupFieldIdVector(v187, v123, v187 + 19, v53, 0);
    PartialQueryResults::setupFieldIdVector(v187, v123, v187 + 21, v187 + 20, 1);
    v52 = v187;
    v124 = 144;
    if ((v25 & 8) == 0)
    {
      v124 = 160;
    }

    v55 = *(v187 + v124);
    if (!*(v187 + 29) || *v53)
    {
      goto LABEL_42;
    }

    v171 = v29;
    v169 = v28;
    v125 = v30;
    v126 = v188;
    v127 = PartialQueryResults::attributeIdVector(v187, v188);
    v128 = v53;
    v22 = v126;
    v30 = v125;
    v28 = v169;
    v29 = v171;
    PartialQueryResults::setupFieldIdVector(v187, v127, v187 + 19, v128, 0);
    PartialQueryResults::setupFieldIdVector(v187, v127, v187 + 21, v187 + 20, 1);
    v52 = v187;
  }

  else
  {
    v56 = 144;
    if ((v25 & 8) == 0)
    {
      v56 = 160;
    }

    v52 = v187;
    v55 = *(v187 + v56);
  }

LABEL_46:
  v57 = 152;
  if ((v25 & 8) == 0)
  {
    v57 = 168;
  }

  db_get_offsets_for_fields(v22, v185, v55, *(v52 + v57), v190);
  v51 = v185;
  if (*v185 && *v185 != v179)
  {
    v143 = __si_assert_copy_extra_332();
    v42 = v143;
    v144 = "";
    if (v143)
    {
      v144 = v143;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6755, "!dbo || !dbo->oid || dbo->oid == oid", v144);
LABEL_197:
    free(v42);
    if (__valid_fs(-1))
    {
LABEL_198:
      v145 = 2989;
    }

    else
    {
      v145 = 3072;
    }

    *v145 = -559038737;
    abort();
  }

LABEL_50:
  v184 = v25;
  v172 = a10;
  v198[1] = 0;
  v198[2] = 0;
  v198[0] = v51;
  if (a17)
  {
    ++*(a17 + 520);
  }

  v182 = a16;
  if (!a16 || !v51 || !v182[3])
  {
    goto LABEL_70;
  }

  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    v51 = v185;
  }

  if (!SIIsAppleInternal_internal || !*(a17 + 152))
  {
    if (isDebugVerboseMode_onceToken != -1)
    {
      dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
      v51 = v185;
    }

    if (isDebugVerboseMode_debugEnabled != 1)
    {
      goto LABEL_70;
    }
  }

  v171 = v29;
  v58 = v182[3];
  if (*(v58 + 2072) != 1)
  {
    goto LABEL_61;
  }

  *buf = *(v58 + 2060);
  v201 = 0;
  v197 = 0;
  if (db_get_field_by_id(v188, v51, buf, &v201, &v197))
  {
    goto LABEL_61;
  }

  v137 = _decodeSDBField(*(v58 + 1192), v201, v201 + 13, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
  v59 = v137;
  if (v137)
  {
    v138 = CFGetTypeID(v137);
    if (v138 != CFStringGetTypeID())
    {
      CFRelease(v59);
LABEL_61:
      *&v59 = 0.0;
    }
  }

  if (*(v58 + 60))
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v169 = v28;
      v170 = v30;
      v146 = *&v179;
      v147 = *__error();
      v148 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        v150 = *(v58 + 60);
        if (v150 == 1)
        {
          v151 = "cs_priority";
        }

        else if (v150 == 3)
        {
          v151 = "cs_mail";
        }

        else
        {
          if (v150)
          {
            v152 = 2;
          }

          else
          {
            v152 = (v150 >> 1) - 1;
          }

          if (v152 >= 7)
          {
            v151 = "cs_default";
          }

          else
          {
            v151 = off_1E8196C28[v152];
          }
        }

        v153 = *(a17 + 608);
        v154 = *(a17 + 616);
        *&v155 = COERCE_DOUBLE(&stru_1F4284FD0);
        v156 = *(a17 + 152);
        if (*&v59 != 0.0)
        {
          v155 = v59;
        }

        v157 = v172[16];
        v158 = v172[15];
        *buf = 136317186;
        *&buf[4] = v151;
        v203 = 2048;
        v204 = v153;
        v205 = 2048;
        *v206 = v154;
        *&v206[8] = 1024;
        *&v206[10] = v156;
        v207 = 2048;
        v208 = v146;
        v209 = 2048;
        v210 = v146;
        v211 = 2112;
        v212 = *&v155;
        v213 = 2048;
        v214 = v157;
        v215 = 2048;
        v216 = v158;
        _os_log_impl(&dword_1C278D000, v148, OS_LOG_TYPE_DEFAULT, "##### [writeDBOToPlistBytes] (%s qid: (%lld,%lld) kind:%d oid:0x%llx(%lld) externalID:%@ sparseScoreL1:%.04f scoreL1:%.04f)", buf, 0x58u);
      }

      *__error() = v147;
      v28 = v169;
      v30 = v170;
    }

    v29 = v171;
    if (*&v59 != 0.0)
    {
      CFRelease(v59);
    }
  }

  else
  {
    v29 = v171;
    if (dword_1EBF46AD0 >= 5)
    {
      v170 = v30;
      v129 = v179;
      v130 = *__error();
      v131 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        v132 = *(a17 + 608);
        v133 = *(a17 + 616);
        v134 = *(a17 + 152);
        v135 = v172[16];
        v136 = v172[15];
        *buf = 134219520;
        *&buf[4] = v132;
        v203 = 2048;
        v204 = v133;
        v205 = 1024;
        *v206 = v134;
        *&v206[4] = 2048;
        *&v206[6] = v129;
        v207 = 2048;
        v208 = *&v129;
        v209 = 2048;
        v210 = v135;
        v211 = 2048;
        v212 = v136;
        _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, "##### [writeDBOToPlistBytes] (qid: (%lld,%lld) kind:%d oid:0x%llx(%lld) sparseScoreL1:%.04f scoreL1:%.04f)", buf, 0x44u);
      }

      *__error() = v130;
      v30 = v170;
      v29 = v171;
    }
  }

LABEL_70:
  if (!v29)
  {
    result = _MDPlistBytesAddNull();
    goto LABEL_177;
  }

  v183 = a14;
  v189 = a13;
  v168 = a9;
  _MDPlistBytesBeginArray();
  v62 = 0;
  v163 = v194;
  v164 = v192;
  if (v182)
  {
    v63 = a18 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = v63;
  v167 = v64;
  v165 = v196;
  v166 = a18;
  *&v61 = 134217984;
  v162 = v61;
  v65 = &__block_descriptor_tmp_70;
  do
  {
    if (v30 && !CFBitVectorGetBitAtIndex(v30, v62))
    {
      goto LABEL_166;
    }

    v66 = v65;
    v67 = *&v190[8 * v62];
    if (v67)
    {
      v68 = *v28 > v62 && PartialQueryResults::VectorIdAttribute(*(*(v187 + 12) + 8 * v62), v60) != 0;
      MDPlistBytesAddSDBFieldLocalized(a2, v188, v67, (v67 + 13), v186, v183, (v184 >> 1) & 1, v68);
LABEL_93:
      v65 = v66;
      goto LABEL_167;
    }

    v69 = v185;
    v65 = v66;
    if (v185)
    {
      switch(*(v181 + 4 * v62))
      {
        case 0:
          goto LABEL_85;
        case 1:
          dateScaled(v185, v188, v187);
          goto LABEL_152;
        case 2:
          if (dword_1EBF46AD0 >= 5)
          {
            v115 = *__error();
            v116 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
            {
              v117 = *v172;
              *buf = v162;
              *&buf[4] = v117;
              _os_log_impl(&dword_1C278D000, v116, OS_LOG_TYPE_DEFAULT, "Pack match bits %llx", buf, 0xCu);
            }

            *__error() = v115;
            v65 = v66;
          }

          v98 = *v172;
          goto LABEL_142;
        case 3:
          if (v168)
          {
            goto LABEL_142;
          }

          if (v174 >= 1)
          {
            v99 = 0;
            do
            {
              v100 = *(v173 + 8 * v99++);
            }

            while (!grouping_db_eval_obj_with_options(v188) && v174 != v99);
          }

          _MDPlistBytesAddInteger();
          goto LABEL_93;
        case 4:
          v85 = v187;
          v84 = v188;
          PartialQueryResults::messageAttrIds(buf, v187, v188);
          si_fancyMailRelevance(v69, buf);
          v86 = v84;
          v65 = v66;
          dateScaled(v69, v86, v85);
          goto LABEL_152;
        case 5:
          if (dword_1EBF46AD0 >= 5)
          {
            v118 = *__error();
            v119 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              v120 = *v172;
              *buf = v162;
              *&buf[4] = v120;
              _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "Pack match bits %llx", buf, 0xCu);
            }

            *__error() = v118;
            v65 = v66;
          }

          __MDPlistBytesAddUInt64Array();
          goto LABEL_167;
        case 6:
          _MDPlistBytesBeginArray();
          for (i = 0; i != 5; ++i)
          {
            v105 = *(&v199 + i);
            _MDPlistBytesAddInteger();
          }

          _MDPlistBytesEndArray();
          goto LABEL_157;
        case 7:
          v101 = v178[2] & 1;
          goto LABEL_142;
        case 8:
          v112 = v172[16];
LABEL_152:
          _MDPlistBytesAddReal();
          goto LABEL_167;
        case 9:
          if (v167)
          {
            goto LABEL_166;
          }

          v171 = v29;
          v169 = v28;
          matched = TokenMatchNew(kCIQueryZoneAllocator);
          v195[0] = MEMORY[0x1E69E9820];
          v195[1] = 0x40000000;
          v196[0] = __writeDBOToPlistBytes_block_invoke;
          v196[1] = &__block_descriptor_tmp_66_5741;
          v196[2] = matched;
          enumerate_matching_query_pieces(v182, v188, v185, v186, 0, v166, v195);
          TokenMatchConvertToSnippetHints(matched);
          _MDPlistBytesBeginArray();
          v180 = matched;
          v90 = matched[2];
          v91 = matched[3];
          while (v90 != v91)
          {
            _MDPlistBytesBeginArray();
            v92 = *(v90 + 8);
            v93 = *(v90 + 16);
            _MDPlistBytesAddInternedCString();
            v94 = *(v90 + 24);
            v95 = *(v90 + 32);
            while (v94 != v95)
            {
              v96 = *v94;
              v97 = *(v94 + 2);
              _MDPlistBytesAddInternedCString();
              v94 += 3;
            }

            _MDPlistBytesEndArray();
            v90 += 56;
          }

          _MDPlistBytesEndArray();
          TokenMatchFree(v180);
          v28 = v169;
          goto LABEL_156;
        case 0xA:
          if (!v182)
          {
            goto LABEL_153;
          }

          v170 = v30;
          v171 = v29;
          v169 = v28;
          *buf = 0;
          v180 = (*(*v182 + 72))(v182, buf);
          _MDPlistBytesBeginArray();
          v107 = v185;
          v106 = v186;
          v108 = v188;
          if (*buf >= 1)
          {
            v109 = 0;
            v110 = MEMORY[0x1E69E9820];
            do
            {
              v111 = *(v180 + v109);
              v193[0] = v110;
              v193[1] = 0x40000000;
              v194[0] = __writeDBOToPlistBytes_block_invoke_67;
              v194[1] = &__block_descriptor_tmp_68_5744;
              v194[2] = a2;
              enumerate_matching_query_pieces(v182, v108, v107, v106, 0, v111, v193);
              ++v109;
            }

            while (v109 < *buf);
          }

          goto LABEL_150;
        case 0xB:
          if (v182)
          {
            v170 = v30;
            v171 = v29;
            v169 = v28;
            *buf = 0;
            v180 = (*(*v182 + 80))(v182, buf);
            _MDPlistBytesBeginArray();
            v79 = v185;
            v78 = v186;
            v80 = v188;
            if (*buf >= 1)
            {
              v81 = 0;
              v82 = MEMORY[0x1E69E9820];
              do
              {
                v83 = *(v180 + v81);
                v191[0] = v82;
                v191[1] = 0x40000000;
                v192[0] = __writeDBOToPlistBytes_block_invoke_2;
                v192[1] = v66;
                v192[2] = v62;
                v192[3] = a2;
                enumerate_matching_query_pieces(v182, v80, v79, v78, 1, v83, v191);
                ++v81;
              }

              while (v81 < *buf);
            }

LABEL_150:
            _MDPlistBytesEndArray();
            v28 = v169;
            v30 = v170;
LABEL_156:
            v29 = v171;
LABEL_157:
            v65 = v66;
            goto LABEL_167;
          }

LABEL_153:
          _MDPlistBytesBeginArray();
LABEL_154:
          _MDPlistBytesEndArray();
          break;
        case 0xC:
          _MDPlistBytesBeginArray();
          for (j = 0; j != 3; ++j)
          {
            if (*(v189 + j) == 1)
            {
              v88 = *(v189 + 4 * j + 4);
            }

            _MDPlistBytesAddReal();
          }

          goto LABEL_154;
        case 0xD:
          v102 = 0;
          v103 = 0;
          do
          {
            if (*(v189 + v102))
            {
              v103 |= 2u;
            }

            if (v102 > 1)
            {
              break;
            }

            ++v102;
          }

          while ((v103 & 2) == 0);
          if (v103)
          {
            v172[16];
          }

LABEL_142:
          _MDPlistBytesAddInteger();
          goto LABEL_167;
        case 0xE:
          _MDPlistBytesBeginArray();
          for (k = 0; k != 3; ++k)
          {
            if (*(v189 + k) == 1)
            {
              v77 = *(v189 + 4 * k + 16);
            }

            _MDPlistBytesAddInteger();
          }

          goto LABEL_154;
        default:
          v159 = __si_assert_copy_extra_332();
          v160 = v159;
          if (v159)
          {
            v161 = v159;
          }

          else
          {
            v161 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SISearchCtx_METADATA.cpp", 6830, v161);
          free(v160);
          goto LABEL_198;
      }

      goto LABEL_93;
    }

LABEL_85:
    v70 = v187;
    v71 = *(v187 + 29);
    if (*v187 == 1)
    {
      if (v71 && !*(v187 + 25))
      {
        v72 = *(v187 + 13);
        if (!v72)
        {
          v73 = *(v187 + 16);
          if (v73)
          {
            *buf = 0;
            SIFlattenArrayToCStringVector(v73, v187 + 13, buf, &v201);
            v70 = v187;
            v72 = *(v187 + 13);
          }

          else
          {
            v72 = 0;
          }
        }

        PartialQueryResults::setupCannedAttributeVector(v70, v72, v70 + 25, buf);
        v70 = v187;
      }

      v113 = 200;
    }

    else
    {
      if (v71 && !*(v187 + 24))
      {
        v74 = *(v187 + 12);
        if (!v74)
        {
          v75 = *(v187 + 15);
          if (v75)
          {
            SIFlattenArrayToCStringVector(v75, v187 + 12, v187 + 30, v28);
            v70 = v187;
            v74 = *(v187 + 12);
            if (!v74)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v74 = 0;
          }
        }

        PartialQueryResults::setupCannedAttributeVector(v70, v74, v70 + 24, v70 + 1);
        v70 = v187;
      }

      v113 = 192;
    }

    v114 = *(*(v70 + v113) + 8 * v62);
    if (!v114 || (v114(v176, *(v175 + 8 * v62), v177, v179, v185, 0, 0, v178, &__block_literal_global_74, a2) & 1) == 0)
    {
LABEL_166:
      _MDPlistBytesAddNull();
    }

LABEL_167:
    ++v62;
  }

  while (v62 != v29);
  result = _MDPlistBytesEndArray();
LABEL_177:
  v122 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _partition_offset_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 8 * a2);
  v5 = v4;
  v6 = &v4[(v3 + (v3 >> 63)) >> 1];
  v7 = (a1 + 8 * a3);
  if (a3 - a2 < 1024)
  {
    v25 = (a1 + 8 * a3);
    v22 = &v4[(v3 + (v3 >> 63)) >> 1];
  }

  else
  {
    v8 = v3 >> 3;
    v9 = &v4[v8];
    v10 = *v4 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *v9 & 0x3FFFFFFFFFFFFFFFLL;
    if (v10 != v11)
    {
      v5 = &v4[2 * v8];
      v12 = *v5 & 0x3FFFFFFFFFFFFFFFLL;
      if (v10 >= v12)
      {
        v13 = &v4[2 * v8];
      }

      else
      {
        v13 = (a1 + 8 * a2);
      }

      if (v11 > v12)
      {
        v13 = &v4[v8];
      }

      if (v10 >= v12)
      {
        v14 = (a1 + 8 * a2);
      }

      else
      {
        v14 = &v4[2 * v8];
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
    v18 = 8 * v8;
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

    v25 = &v7[-v16];
    v26 = &v7[v17];
    v27 = *v25 & 0x3FFFFFFFFFFFFFFFLL;
    v28 = *v26 & 0x3FFFFFFFFFFFFFFFLL;
    if (v27 != v28)
    {
      v29 = *v7 & 0x3FFFFFFFFFFFFFFFLL;
      if (v27 >= v29)
      {
        v30 = (a1 + 8 * a3);
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
        v25 = (a1 + 8 * a3);
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
        v25 = (a1 + 8 * a3);
      }

      if (v29 == v27)
      {
        v25 = (a1 + 8 * a3);
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
    v39 = *v4;
    v37 = v4 + 1;
    v38 = v39;
    v40 = v35 & 0x3FFFFFFFFFFFFFFFLL;
    do
    {
      v41 = *v37;
      if ((v38 & 0x3FFFFFFFFFFFFFFFuLL) <= v40)
      {
        *(v37 - 1) = *(a1 + 8 * a2);
        *(a1 + 8 * a2++) = v38;
      }

      ++v37;
      v38 = v41;
      --v36;
    }

    while (v36);
    v35 = *v7;
  }

  v42 = *(a1 + 8 * a2);
  *(a1 + 8 * a2) = v35;
  *v7 = v42;
  return a2;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddSortedKeysWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (*a2 >= a2[1] || (a2[3] & **a2) != a2[2])
  {
    return 0;
  }

  v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v7 = v6;
  v8 = a1;
  v9 = *(a1 + 8);
  v10 = 4 * v9 + 12;
  if (v9 >= 3)
  {
    v13 = (a1 + v10);
    v11 = (a1 + 12);
    do
    {
      v14 = &v11[4 * (v9 >> 1)];
      v15 = *v14;
      if ((*v14 & 0x80000000) != 0)
      {
        v16 = *(v14 - 1);
        v14 -= 4;
        v15 = v16;
      }

      if (v14 <= v11)
      {
        break;
      }

      if (v15 == v6)
      {
        v11 = v14;
        break;
      }

      if (v15 > v6)
      {
        v13 = v14;
      }

      else
      {
        v11 = v14;
      }

      v9 = (v13 - v11) >> 2;
    }

    while (v13 > v11 && v9 > 2);
  }

  else
  {
    v11 = (a1 + 12);
  }

  v70 = a1 + 12;
  v71 = a1;
  v18 = 0;
  result = 0;
  v72 = a1 + 264;
  v19 = v11;
  v20 = 1;
  v77 = a3;
  while (2)
  {
    v73 = v10;
    v76 = v19;
    v23 = 0;
    v24 = 0;
    v21 = v8 + v10;
    v25 = v11;
    while (1)
    {
      v27 = v24;
      v28 = v23;
      if (v25 >= v21)
      {
        break;
      }

LABEL_33:
      v23 = *v25;
      if (v7 < *v25)
      {
        break;
      }

      v30 = 1;
LABEL_62:
      if ((v25 + 4) >= v21)
      {
        v45 = 1;
        v24 = 1;
        if (v27)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v42 = *(v25 + 1);
        v43 = v42 & 0x7FFFFFFF;
        v44 = v42 >= 0;
        v45 = 2;
        if (v44)
        {
          v45 = 1;
          v24 = 1;
        }

        else
        {
          v24 = v43 + 1;
        }

        if (v27)
        {
LABEL_69:
          v46 = v24 + v23;
          if (v27 + v28 < v23 || v46 < v28)
          {
            goto LABEL_82;
          }

          v48 = v27 - v24 + v28;
          v49 = v48 + v23;
          v50 = v28 > v23;
          if (v28 < v23)
          {
            v23 = v28;
          }

          if (!v50)
          {
            v48 = v27;
            v49 = v27 + v28;
          }

          if (v46 > v49)
          {
            v24 = v48 + v46 - v49;
          }

          else
          {
            v24 = v48;
          }
        }
      }

      v25 += 4 * v45;
      if (v24 + v23 >= v7)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    while (2)
    {
      if (v27)
      {
        v29 = v27 + v28;
        v30 = 1;
        if (v29 < v7 || v7 + 1 < v28)
        {
          goto LABEL_60;
        }

        v31 = v27 + v28 - 1;
        v32 = v28 > v7;
        v33 = v28 > v7;
        if (v28 >= v7)
        {
          v28 = v7;
        }

        if (v32)
        {
          v29 = v31 + v7;
        }

        else
        {
          v31 = v27;
        }

        if (v29 <= v7)
        {
          v27 = v31 + v7 + 1 - v29;
        }

        else
        {
          v27 = v31;
        }

        v34 = v29 <= v7 || v33;
      }

      else
      {
        v27 = 1;
        v28 = v7;
        v34 = 1;
      }

      v35 = *a2 + 1;
      v36 = **a2;
      *a2 = v35;
      v37 = a2[3];
      if ((v37 & v36) != a2[2])
      {
        v53 = __si_assert_copy_extra_332();
        v54 = v53;
        v55 = "";
        if (v53)
        {
          v55 = v53;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v55);
        goto LABEL_100;
      }

      if (v7 != (v36 & ~v37))
      {
        v56 = __si_assert_copy_extra_332();
        v57 = v56;
        v58 = "";
        if (v56)
        {
          v58 = v56;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v58);
        free(v57);
        if (!__valid_fs(-1))
        {
          v59 = 3072;
LABEL_108:
          *v59 = -559038737;
          abort();
        }

LABEL_105:
        v59 = 2989;
        goto LABEL_108;
      }

      if (v34)
      {
        ++result;
      }

      else if (v77)
      {
        v38 = result;
        v39 = v21;
        SIValueSet<unsigned long long>::SIValueSetInsert(*(v77 + 8), *v77 | v7);
        v21 = v39;
        result = v38;
        v35 = *a2;
      }

      if (v35 < a2[1])
      {
        v40 = *v35;
        v41 = a2[3];
        if ((v41 & v40) == a2[2])
        {
          v7 = v40 & ~v41;
          ++v20;
          ++v18;
          if (v25 < v21)
          {
            goto LABEL_33;
          }

          continue;
        }
      }

      break;
    }

    v30 = 0;
    ++v18;
LABEL_60:
    if (v25 < v21)
    {
      v23 = *v25;
      goto LABEL_62;
    }

LABEL_82:
    v23 = v28;
    v24 = v27;
LABEL_83:
    if (v24 == 1)
    {
      if (v76 < v25)
      {
        v11 = v25;
        v8 = v71;
        v10 = v73;
LABEL_22:
        *v76 = v23;
        v19 = v76 + 4;
        goto LABEL_23;
      }

      if (v73 < 257)
      {
        v11 = (v72 - (v21 - v25));
        if (v21 != v25)
        {
          v74 = result;
          v51 = (v72 - (v21 - v25));
          memmove(v51, v25, v21 - v25);
          v11 = v51;
          result = v74;
        }

        v10 = 264;
        v8 = v71;
        goto LABEL_22;
      }

LABEL_123:
      v67 = __si_assert_copy_extra_332();
      v68 = v67;
      if (v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v69);
      free(v68);
      goto LABEL_105;
    }

    v19 = v76;
    if (v24)
    {
      if (v76 + 4 < v25)
      {
        v11 = v25;
        v8 = v71;
        v10 = v73;
        goto LABEL_96;
      }

      if (v73 >= 257)
      {
        goto LABEL_123;
      }

      v11 = (v72 - (v21 - v25));
      if (v21 != v25)
      {
        v75 = result;
        v52 = (v72 - (v21 - v25));
        memmove(v52, v25, v21 - v25);
        v11 = v52;
        result = v75;
      }

      v10 = 264;
      v8 = v71;
LABEL_96:
      *v76 = v23;
      *(v76 + 1) = (v24 - 1) | 0x80000000;
      v19 = v76 + 8;
LABEL_23:
      v21 = v8 + v10;
      if (&v19[v8 + v10 - v11 + 8] <= v72)
      {
        v22 = v30;
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  v11 = v25;
  v8 = v71;
LABEL_110:
  if (!v30)
  {
    if (v18 == v20)
    {
      goto LABEL_117;
    }

    v65 = __si_assert_copy_extra_332();
    v54 = v65;
    v66 = "";
    if (v65)
    {
      v66 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v66);
LABEL_100:
    free(v54);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v18 >= v20)
  {
    v60 = __si_assert_copy_extra_332();
    v54 = v60;
    v61 = "";
    if (v60)
    {
      v61 = v60;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v61);
    goto LABEL_100;
  }

LABEL_117:
  v62 = v21 - v11;
  if (v21 > v11)
  {
    v63 = v8;
    v64 = result;
    memmove(v19, v11, v21 - v11);
    result = v64;
    v8 = v63;
    v19 += v62;
  }

  *(v8 + 8) = &v19[-v70] >> 2;
  return result;
}

void PartialQueryResults::removeDupsInPlace(PartialQueryResults *this, const __RLEOIDArray *a2)
{
  if (*(this + 884))
  {
    v3 = 0;
    v4 = this + 464;
    do
    {
      Mutable = RLEOIDArrayCreateMutable(kCIQueryZoneAllocator);
      if (*&v4[8 * v3])
      {
        v6 = *&v4[8 * v3];
        _MDStoreOIDArrayGetVectorCount();
        _MDStoreOIDArrayApplyBlock();
      }

      CFRelease(Mutable);
      ++v3;
    }

    while (v3 < *(this + 884));
  }
}

uint64_t CatInfoGotten_SDB::oid(CatInfoGotten_SDB *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZN19PartialQueryResults17removeDupsInPlaceEPK13__RLEOIDArray_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = (a5 - 1);
  pthread_rwlock_rdlock((v7 + 16));
  pthread_rwlock_rdlock((v6 + 16));
  if (v8 && (*(v7 + 384) & 1) == 0)
  {
    v9 = 0;
    v10 = a4 + 8;
    do
    {
      if ((*(v7 + 384) & 1) == 0)
      {
        v11 = *(v10 + 8 * v9);
        v12 = *(v7 + 224);
        if (!v12 || !((*(v7 + 216) ^ v11) >> (-4 * v12)))
        {
          v13 = 60 - 4 * v12;
          v14 = *(v7 + 256 + 8 * ((v11 >> v13) & 0xF));
          if (v14)
          {
            v15 = v12 + 2;
            do
            {
              v13 = 64 - 4 * v15;
              v14 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v11 >> v13) & 0xF));
              ++v15;
            }

            while ((v14 & 1) != 0);
          }

          if (v14 && (*(*v14 + 16))(v14, *(v10 + 8 * v9), ~(-1 << v13)))
          {
            if (*(v6 + 384))
            {
              goto LABEL_21;
            }

            v16 = *(v6 + 224);
            if (v16)
            {
              if ((*(v6 + 216) ^ v11) >> (-4 * v16))
              {
                goto LABEL_21;
              }
            }

            v17 = 60 - 4 * v16;
            v18 = *(v6 + 256 + 8 * ((v11 >> v17) & 0xF));
            if (v18)
            {
              v19 = v16 + 2;
              do
              {
                v17 = 64 - 4 * v19;
                v18 = *((v18 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v11 >> v17) & 0xF));
                ++v19;
              }

              while ((v18 & 1) != 0);
            }

            if (!v18 || !(*(*v18 + 16))(v18, v11, ~(-1 << v17)))
            {
LABEL_21:
              SIValueSet<unsigned long long>::SIValueSetInsert((v6 + 216), v11);
            }

            else
            {
              *(v10 + 8 * v9) = 0;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  pthread_rwlock_unlock((v7 + 16));

  return pthread_rwlock_unlock((v6 + 16));
}

char *db_get_offsets_for_fields(char *result, uint64_t a2, char *__base, size_t __nel, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v21 = result;
    v22 = *__error();
    v23 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *v21;
      *buf = 136315650;
      v29 = "db_get_offsets_for_fields";
      v30 = 1024;
      v31 = 382;
      v32 = 1024;
      v33 = v24;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v22;
    v25 = __si_assert_copy_extra_332();
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 382, v27);
    free(v26);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v9 = *(a2 + 12);
  if (*(a2 + 41))
  {
    if (v9 >= 0x31)
    {
      v14 = 0;
      v15 = a2 + v9;
      v16 = a2 + 48;
      do
      {
        if (v14 < __nel)
        {
          v17 = *(v16 + 4);
          v18 = &__base[8 * v14 + 4];
          while (1)
          {
            v19 = *(v18 - 1);
            if (v19 > v17)
            {
              break;
            }

            if (v19 == v17)
            {
              *(a5 + 8 * *v18) = v16;
            }

            ++v14;
            v18 += 8;
            if (__nel == v14)
            {
              goto LABEL_25;
            }
          }
        }

        if (v14 == __nel)
        {
          break;
        }

        v16 += *(v16 + 8) + 13;
      }

      while (v16 < v15);
    }
  }

  else if (v9 >= 0x31)
  {
    v10 = a2 + 48;
    v11 = &__base[8 * __nel];
    do
    {
      result = bsearch_b(*(v10 + 4), __base, __nel, 8uLL, &__block_literal_global_108);
      if (result)
      {
        do
        {
          v12 = result;
          result -= 8;
        }

        while (result > __base && *(v12 - 2) == *v12);
        if (v12 < v11)
        {
          v13 = *(v10 + 4);
          do
          {
            if (*v12 != v13)
            {
              break;
            }

            *(a5 + 8 * *(v12 + 1)) = v10;
            v12 += 8;
          }

          while (v12 < v11);
        }
      }

      v10 += *(v10 + 8) + 13;
    }

    while (v10 < a2 + *(a2 + 12));
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t addValue(uint64_t a1, int *a2, int a3, __int16 a4, const char *a5)
{
  v23 = a5;
  if (a3 <= 6)
  {
    if (a3 <= 3)
    {
      switch(a3)
      {
        case 1:
          v11 = *a5;
          if ((a4 & 0x400) == 0)
          {
            goto LABEL_23;
          }

          break;
        case 2:
          v13 = *a5;
          if ((a4 & 0x400) == 0)
          {
            goto LABEL_23;
          }

          break;
        case 3:
LABEL_22:
          v9 = *a5;
          if ((a4 & 0x400) == 0)
          {
            goto LABEL_23;
          }

          break;
        default:
LABEL_38:
          v14 = __si_assert_copy_extra_332();
          __message_assert_336(v14, v15, v16, v17, v18, v19, v20, v21, "MDPlistBytesAdditions.c");
          free(v14);
          if (__valid_fs(-1))
          {
            v22 = 2989;
          }

          else
          {
            v22 = 3072;
          }

          *v22 = -559038737;
          abort();
      }

LABEL_10:

      return _MDPlistBytesAddBoolean();
    }

    if (a3 == 4)
    {
      goto LABEL_22;
    }

    v7 = *a5;
    if ((a4 & 0x400) != 0)
    {
      goto LABEL_10;
    }

LABEL_23:

    return _MDPlistBytesAddInteger();
  }

  if (a3 <= 9)
  {
    if ((a3 - 7) < 2)
    {
      v5 = *a5;
      if ((a4 & 0x400) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

    if (a3 != 9)
    {
      goto LABEL_38;
    }

    v10 = *a5;
    if ((a4 & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

  if (a3 == 10)
  {
    v12 = *a5;
    if ((a4 & 0x400) != 0)
    {
      goto LABEL_10;
    }

LABEL_32:

    return _MDPlistBytesAddReal();
  }

  if (a3 == 11)
  {
    return addString(a1, a2, a4, &v23);
  }

  if (a3 != 12)
  {
    goto LABEL_38;
  }

  v8 = *a5;

  return _MDPlistBytesAddDate();
}

void MDPlistBytesAddSDBFieldLocalized(uint64_t a1, int *a2, unsigned int *key, unsigned int *a4, char **a5, CFDictionaryRef theDict, int a7, int a8)
{
  v75 = *MEMORY[0x1E69E9840];
  v9 = *key;
  if (v9 - 1 > 0xF)
  {
    v27 = *MEMORY[0x1E69E9840];

    _MDPlistBytesAddNull();
  }

  else
  {
    v12 = key[2];
    v13 = *(key + 1);
    if (v9 == 14)
    {
      if ((~v13 & 0x5020) == 0)
      {
        v15 = v12;
        v16 = _os_feature_enabled_impl();
        v17 = v15;
        if (v16)
        {
          v18 = *(key + 1);
          if ((v18 & 8) == 0)
          {
            if ((v18 & 0x10) == 0)
            {
              if (v15 >= 3)
              {
                v19 = key + 15;
                v20 = *(key + 13);
                if (v20 <= 2)
                {
                  v21 = *(key + 14);
                  if (v21 <= 2)
                  {
                    v22 = (vector_dimension_vec_sizes_15424[v21] * vector_size_elem_sizes_15423[v20]);
                    if (&v19[v22] <= key + v17 + 13)
                    {
                      v23 = *(key + 15) + (*(key + 16) << 8);
                      if ((v18 & 0x20) != 0)
                      {
                        _MDPlistBytesBeginArray();
                        while (1)
                        {
                          recodeVector(a1, v20, v21, v23, 0, v19, v22);
                        }
                      }

                      v24 = *MEMORY[0x1E69E9840];
                      v25 = *(v19 - 1);
                      v26 = (vector_dimension_vec_sizes_15424[v21] * vector_size_elem_sizes_15423[v20]);

                      recodeVector(a1, v20, v25, v23, 0, v19, v26);
                      return;
                    }
                  }
                }
              }

LABEL_31:
              v35 = *MEMORY[0x1E69E9840];
              return;
            }

            _MDPlistBytesBeginArray();
            v50 = v15;
            if (v15 >= 8)
            {
              v51 = (key + 13);
              v52 = v50 >> 3;
              while (1)
              {
                v54 = *v51++;
                v53 = v54;
                if (a8)
                {
                  _MDPlistBytesAddInteger();
                }

                else
                {
                  LODWORD(value[0]) = 0;
                  *buf = 0;
                  vector_for_id_locked = db_get_vector_for_id_locked(a2, v53, value, buf);
                  if (vector_for_id_locked)
                  {
                    v56 = vector_for_id_locked;
                    v57 = buf[0];
                    v58 = buf[1];
                    v59 = *&buf[2];
                    v60 = LODWORD(value[0]);
                    v61 = a1;
                    v62 = v53;
LABEL_63:
                    recodeVector(v61, v57, v58, v59, v62, v56, v60);
                    goto LABEL_64;
                  }

                  if (v53)
                  {
                    v61 = a1;
                    v57 = 3;
                    v58 = 3;
                    v59 = 0;
                    v62 = v53;
                    v56 = 0;
                    v60 = 0;
                    goto LABEL_63;
                  }
                }

LABEL_64:
                if (!--v52)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_65;
          }

          LODWORD(value[0]) = 0;
          *buf = 0;
          if ((v18 & 0x10) != 0)
          {
            if (v15 == 4)
            {
              v40 = *(key + 13);
            }

            else
            {
              if (v15 != 8)
              {
                goto LABEL_31;
              }

              v40 = *(key + 13);
            }

            if (!v40)
            {
              goto LABEL_31;
            }

            v41 = db_get_vector_for_id_locked(a2, v40, value, buf);
            v42 = value[0];
          }

          else
          {
            v40 = 0;
            v41 = key + 13;
            *buf = *(key + 13);
            v42 = key[2] - 2;
          }

          if (!v41)
          {
            goto LABEL_31;
          }

          if (!v42)
          {
            goto LABEL_31;
          }

          v64 = buf[0];
          if (buf[0] > 2uLL)
          {
            goto LABEL_31;
          }

          v65 = buf[1];
          if (buf[1] > 2u)
          {
            goto LABEL_31;
          }

          v66 = (vector_dimension_vec_sizes_15424[buf[1]] * vector_size_elem_sizes_15423[buf[0]]);
          if (v66 > v42)
          {
            goto LABEL_31;
          }

          v67 = *&buf[2];
          if ((*(key + 1) & 0x20) == 0)
          {
            recodeVector(a1, buf[0], buf[1], *&buf[2], v40, v41, (vector_dimension_vec_sizes_15424[buf[1]] * vector_size_elem_sizes_15423[buf[0]]));
            goto LABEL_31;
          }

          v68 = &v41[v42];
          _MDPlistBytesBeginArray();
          do
          {
            recodeVector(a1, v64, v65, v67, v40, v41, v66);
            v41 += v66;
          }

          while (&v41[v66] <= v68);
LABEL_75:
          _MDPlistBytesEndArray();
          goto LABEL_31;
        }
      }

      v31 = *MEMORY[0x1E69E9840];

      _MDPlistBytesAddData();
    }

    else
    {
      v28 = a4;
      if ((v13 & 0x80) != 0)
      {
        value[0] = a4;
        *buf = 0;
        if (theDict && (v13 & 0x10) != 0 && CFDictionaryGetValue(theDict, key) || db_get_localized_string(a2, key, a5, value, buf, a7))
        {
          _MDPlistBytesAddInternedCString();
        }

        else if ((*(key + 1) & 0x10) != 0)
        {
          v46 = _MDPlistBytesAddInternedCString();
          if (theDict && v46)
          {
            v47 = malloc_type_malloc(key[2] + 13, 0x1000040FDE4285EuLL);
            memcpy(v47, key, key[2] + 13);
            CFDictionarySetValue(theDict, v47, value[0]);
          }
        }

        else
        {
          _MDPlistBytesAddCString();
        }

        goto LABEL_31;
      }

      if ((v13 & 0x20) != 0)
      {
        if (v9 == 11)
        {
          if ((v13 & 0x8000) != 0 && (v13 & 0x10) != 0)
          {
            v36 = *a4;
            _MDPlistBytesBeginArray();
            v72 = 0u;
            v73 = 0u;
            *value = 0u;
            v71 = 0u;
            v69 = 64;
            v37 = copyDataForUniquedValue(a2, v36, value, &v69);
            v38 = v37;
            if (v37)
            {
              *buf = v37;
              if (v69)
              {
                v39 = v37 + v69;
                do
                {
                  addString(a1, a2, v13, buf);
                }

                while (*buf < v39);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 67109120;
              *&buf[4] = v36;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No data for uniqued array %u", buf, 8u);
            }

            if (v38 != value)
            {
              free(v38);
            }

            goto LABEL_75;
          }

          v48 = v12;
          _MDPlistBytesBeginArray();
          value[0] = v28;
          if (v48)
          {
            v49 = v28 + v48;
            do
            {
              addString(a1, a2, v13, value);
            }

            while (value[0] < v49);
          }
        }

        else
        {
          v43 = kSDBTypeSizes[v9];
          v44 = v12;
          _MDPlistBytesBeginArray();
          if (v43 <= v44)
          {
            v45 = v44 / v43;
            do
            {
              addValue(a1, 0, v9, v13, v28);
              v28 = (v28 + v43);
              LODWORD(v45) = v45 - 1;
            }

            while (v45);
          }
        }

LABEL_65:
        v63 = *MEMORY[0x1E69E9840];

        _MDPlistBytesEndArray();
        return;
      }

      v29 = *MEMORY[0x1E69E9840];
      v30 = *(key + 1);

      addValue(a1, a2, v9, v30, v28);
    }
  }
}

void _si_querypipe_addoids(uint64_t a1, int a2, const void *a3, uint64_t a4, const void *a5, int a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
  {
    ++sTotal;
  }

  v14 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
  if (!v14)
  {
    _log_fault_for_malloc_failure();
  }

  v15 = a1;
  do
  {
    v16 = v15;
    v15 = *(v15 + 80);
  }

  while (v15);
  v17 = *(v16 + 8);
  v14[1] = *(a1 + 48);
  *(v14 + 1) = si_querypipe_copy_jobid(a1);
  if (*(a1 + 99) == 1)
  {
    if (a2)
    {
      *v14 = 7;
      *(v14 + 4) = a3;
      *(v14 + 5) = a5;
      *(v14 + 14) = a2;
    }

    else
    {
      *v14 = 1;
      *(v14 + 4) = a3;
      *(v14 + 5) = a5;
    }

    if (*(a1 + 98) == 1)
    {
      *(v14 + 6) = a4;
    }

    else
    {
      *(v14 + 6) = 0;
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        VectorCount = _MDStoreOIDArrayGetVectorCount();
        v25 = 1024;
        v26 = a2;
        v27 = 2048;
        v28 = _MDStoreOIDArrayGetVectorCount() - a4;
        _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "Passing up %ld results for mode %d (removed %ld duplicates)", buf, 0x1Cu);
      }

      *__error() = v18;
      if (a6)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (a5)
  {
    CFRelease(a5);
  }

  if (*(a1 + 98) != 1)
  {
LABEL_22:
    if (a6)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  *v14 = 6;
  *(v14 + 4) = a4;
  if (a6)
  {
LABEL_23:
    si_querypipe_remove_process(a1, a7, v14, 0);
    goto LABEL_30;
  }

LABEL_27:
  if (!si_resultqueue_enqueue(v17, v14))
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v21 = *__error();
      v22 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
      }

      *__error() = v21;
    }

    SIResultBatchFree(v14);
  }

LABEL_30:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t addString(uint64_t a1, int *a2, char a3, const char **a4)
{
  v5 = *a4;
  if ((a3 & 0x10) != 0)
  {
    v10 = *v5;
    result = _MDPlistBytesAddRawInternedCStringKey();
    if (!result)
    {
      db_get_string_for_id_locked(a2, v10);
      result = _MDPlistBytesAddRawInternedCStringKeyWithString();
    }

    v8 = (v5 + 4);
  }

  else
  {
    v6 = strlen(*a4);
    result = _MDPlistBytesAddCString();
    v8 = &v5[v6 + 1];
  }

  *a4 = v8;
  return result;
}

char *db_get_string_for_id_locked(int *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_get_string_for_id_locked";
      v13 = 1024;
      v14 = 387;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 387, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E69E9840];

  return get_string_and_length_for_id_15021(a1, 1u, a2, 0, 1);
}

uint64_t ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(*(a1 + 40) + 2 * a2);
    if (*(v5 + 650) == 1)
    {
      if (v6 <= v7)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        LOWORD(v6) = *(*(a1 + 40) + 2 * a2);
      }
    }

    else
    {
      v8 = v7 & 0xFFFFFFDF;
      if (v6 <= v8)
      {
        LOWORD(v6) = 18;
      }

      else
      {
        LOWORD(v6) = v8;
      }
    }
  }

  v9 = *(a1 + 56);
  if (*(*(a1 + 48) + 8 * v6) < v9)
  {
    return 1;
  }

  v11 = *(a1 + 72);
  v12 = *(a1 + 64) + 240 * v6;
  v13 = (v11 + 80 * a2);
  v14 = *v13;
  v15 = v13[1];
  if ((*(v5 + 400) & *v13) != 0)
  {
    v15 &= *(v5 + 424);
    v14 &= *(v5 + 416);
  }

  v16 = v11 + 80 * a2;
  v17 = *(v16 + 60);
  v18 = *(v16 + 64);
  if (*(v16 + 69) == 1)
  {
    if (v18 != 0.0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v12 += 160;
    goto LABEL_19;
  }

  if (!(v14 | v15))
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v17 == v18)
  {
    v12 += 80;
  }

LABEL_19:
  v19 = *(v16 + 48);
  v20 = *(v16 + 52);
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  if ((*(v12 + 69) & 1) == 0)
  {
    v26 = v12;
    v24 = *v12;
    v25 = *(v26 + 8);
    if (__PAIR128__(v25, v24) < __PAIR128__(v15, v14))
    {
      return 1;
    }

    if (v25 != v15 || v24 != v14)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v23 = *(v12 + 60);
  if (v23 < v17)
  {
    return 1;
  }

  if (v23 == v17)
  {
LABEL_29:
    if (v22 >= v20 && (v22 != v20 || v21 < v19))
    {
      goto LABEL_34;
    }

    return 1;
  }

LABEL_34:
  v34 = v2;
  v35 = v3;
  v29 = *(v5 + 928);
  v30 = *(v5 + 176);
  v31 = *(v13 + 3);
  v33[2] = *(v13 + 2);
  v33[3] = v31;
  v33[4] = *(v13 + 4);
  v32 = *(v13 + 1);
  v33[0] = *v13;
  v33[1] = v32;
  return ci_donebits_check(v29, v9, v30, v6, v33);
}

void CatInfoGotten_SDB::~CatInfoGotten_SDB(CatInfoGotten_SDB *this)
{
  *this = &unk_1F42826A0;
  if (*(this + 90))
  {
    v2 = *(this + 5);
    if (v2)
    {
      free(v2);
    }
  }

  CatInfoGotten::~CatInfoGotten(this);
}

{
  CatInfoGotten_SDB::~CatInfoGotten_SDB(this);

  JUMPOUT(0x1C691FEF0);
}

uint64_t si_resultqueue_start(uint64_t a1)
{
  pthread_mutex_lock((*a1 + 8));
  v2 = *(a1 + 84) - 1;
  *(a1 + 84) = v2;
  if (v2 || (*(a1 + 12) & 1) != 0 || !*(a1 + 72) || (v3 = *(a1 + 48)) == 0)
  {
    v6 = (*a1 + 8);

    return pthread_mutex_unlock(v6);
  }

  else
  {
    v4 = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v7 = v3;
    pthread_mutex_unlock((*a1 + 8));

    return v7(v4, 0);
  }
}

void CatInfoGotten::~CatInfoGotten(CatInfoGotten *this)
{
  *this = &unk_1F4282660;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
    *(this + 8) = 0;
  }

  v3 = *(this + 10);
  if (v3)
  {
    free(v3);
    *(this + 10) = 0;
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
    *(this + 9) = 0;
  }

  if (*(this + 89) == 1)
  {
    free(*(this + 6));
    *(this + 6) = 0;
  }
}

void db_obj_subiter_release(unint64_t *a1, char a2, __n128 a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if ((*a1 + 80) != a1)
  {
    v5 = a1[12];
    if (v5)
    {
      v37 = a2;
      v6 = *v5;
      *v5 = 0;
      *(a1[12] + 8) = a1[12] + 24;
      if (v6)
      {
        v7 = MEMORY[0x1E69E9AC8];
        do
        {
          while (1)
          {
            v8 = v6;
            v6 = *v6;
            v9 = v8[2] - v8;
            if (v9 == 0x100000)
            {
              break;
            }

            if (*v7 == v9)
            {
              v12 = node_alloc();
              v12[1] = v8;
              madvise(v8, *v7, 5);
              atomic_fetch_add_explicit(qword_1EDD78CE0, -v9, memory_order_relaxed);
              v11 = &stru_1EDD78D30;
              v10 = v12;
              goto LABEL_10;
            }

LABEL_13:
            atomic_fetch_add_explicit(qword_1EDD78CE0, -v9, memory_order_relaxed);
            munmap(v8, v9);
            if (!v6)
            {
              goto LABEL_14;
            }
          }

          madvise(v8, 0x100000uLL, 5);
          atomic_fetch_add_explicit(qword_1EDD78CE0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
          if (atomic_fetch_add(qword_1EDD78D50, 1uLL) > 4)
          {
            atomic_fetch_add(qword_1EDD78D50, 0xFFFFFFFFFFFFFFFFLL);
            goto LABEL_13;
          }

          v10 = node_alloc();
          v10[1] = v8;
          v11 = &stru_1EDD78D40;
LABEL_10:
          OSAtomicEnqueue(v11, v10, 0);
        }

        while (v6);
      }

LABEL_14:
      os_unfair_lock_lock(&slabQueueLock);
      *(a1[12] + 24) = *(v3 + 64);
      *(v3 + 64) = a1[12];
      os_unfair_lock_unlock(&slabQueueLock);
      a1[12] = 0;
      a2 = v37;
    }

    if ((a2 & 1) == 0 && a1[10] < a1[7])
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v33 = *__error();
        v34 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = a1[7];
          v36 = a1[10];
          *buf = 134218240;
          v40 = v35;
          v41 = 2048;
          *v42 = v36;
          _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "Expected %ld, found %ld", buf, 0x16u);
        }

        *__error() = v33;
      }

      if (atomic_load(a1 + 8))
      {
        v14 = 0;
        v15 = 0;
        a3.n128_u64[0] = 134219520;
        do
        {
          if ((*(*(*a1 + 32) + 32 * a1[1] + v14 + 24) & 1) == 0 && dword_1EBF46AD0 >= 5)
          {
            v38 = a3;
            v17 = *__error();
            v18 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = a1[1];
              v20 = (*(*a1 + 32) + 32 * v19 + v14);
              v21 = *v20;
              v22 = v20[2];
              v23 = a1[7];
              v24 = *(*a1 + 136);
              *buf = v38.n128_u32[0];
              v40 = v21;
              v41 = 1024;
              *v42 = v22 >> 2;
              *&v42[4] = 1024;
              *&v42[6] = v22 & 3;
              v43 = 2048;
              v44 = v15;
              v45 = 2048;
              v46 = v23;
              v47 = 2048;
              v48 = v19;
              v49 = 2048;
              v50 = v24;
              _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "Missing item: %lld page:%d type %d. Lookup %ld of %ld. startIndex %ld of %ld", buf, 0x40u);
            }

            *__error() = v17;
            a3 = v38;
          }

          ++v15;
          v16 = atomic_load(a1 + 8);
          v14 += 32;
        }

        while (v15 < v16);
      }
    }

    v25 = a1[11];
    if (v25)
    {
      dispatch_sync(v25, &__block_literal_global_98_15191);
    }

    v26 = a1[2];
    if (v26)
    {
      page_release(*(*a1 + 24), v26, *(a1 + 10), 0x18u, 0);
      *(a1 + 10) = -1;
      a1[2] = 0;
      a1[3] = 0;
    }

    v27 = a1[12];
    if (v27)
    {
      v28 = *v27;
      *v27 = 0;
      *(a1[12] + 8) = a1[12] + 24;
      if (v28)
      {
        do
        {
          v29 = *v28;
          munmap(v28, v28[2] - v28);
          v28 = v29;
        }

        while (v29);
      }
    }

    v30 = a1[4];
    if (v30)
    {
      page_release(*(*a1 + 24), v30, *(a1 + 11), 0x18u, 0);
      *(a1 + 11) = -1;
      a1[4] = 0;
    }

    v31 = a1[11];
    if (v31)
    {
      dispatch_release(v31);
    }

    free(a1);
  }

  v32 = *MEMORY[0x1E69E9840];
}

_DWORD *db2_obj_iter_suspend(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 74) & 1) == 0)
    {
      v2 = *(result + 3);
      if ((result[19] & 1) == 0)
      {
        db2_string_table_unlock(*(result + 3));
      }

      dispatch_sync(*(v1 + 21), &__block_literal_global_95);
      v3 = *(v1 + 12);
      if (v3)
      {
        if (*(v1 + 73))
        {
          v4 = 24;
        }

        else
        {
          v4 = 16;
        }

        page_release(*(*(v1 + 10) + 24), v3, v1[30], v4, 0);
        v1[30] = -1;
        *(v1 + 12) = 0;
        *(v1 + 13) = 0;
      }

      v5 = *(v1 + 22);
      if (v5)
      {
        v6 = *v5;
        *v5 = 0;
        *(*(v1 + 22) + 8) = *(v1 + 22) + 24;
        if (v6)
        {
          do
          {
            v7 = *v6;
            munmap(v6, v6[2] - v6);
            v6 = v7;
          }

          while (v7);
        }
      }

      v8 = *(v1 + 14);
      if (v8)
      {
        if (*(v1 + 73))
        {
          v9 = 24;
        }

        else
        {
          v9 = 16;
        }

        page_release(*(*(v1 + 10) + 24), v8, v1[31], v9, 0);
        v1[31] = -1;
        *(v1 + 14) = 0;
      }

      *(v1 + 37) = 257;
      if ((v1[19] & 1) == 0)
      {
        v10 = pthread_mutex_lock((v2 + 584));
        v11 = *(v2 + 780) - 1;
        *(v2 + 780) = v11;
        if (!v11)
        {
          db_rwlock_wakeup(v2 + 584, 0, 0);
        }

        pthread_mutex_unlock((v2 + 584));
        if (v10)
        {
          sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13142);
        }
      }

      result = _fd_release_fd(*(v1 + 1), v1[1], 0, *(v1 + 2));
      v1[1] = -1;
    }
  }

  return result;
}

unsigned int *ContentIndexDocSetNotLazy(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    a2 = 1.0;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 48);
  if (v3 == 1)
  {
    if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
    {
      ++sTotal_6326;
    }

    v9 = *(a1 + 56);
    v6 = *(a1 + 16);
    result = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
    if (!result)
    {
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      result = 0;
      if (v10)
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        result = 0;
      }
    }

    atomic_store(1u, result);
    result[1] = -1073627135;
    *(result + 7) = v9;
    result[12] = 0;
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_6:
    v4 = *(a1 + 20) * *(a1 + 12);
    if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
    {
      ++sTotal_6326;
    }

    v5 = *(a1 + 56);
    v6 = v4 * a2;
    result = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
    if (!result)
    {
      v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      result = 0;
      if (v8)
      {
        v17[0] = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v17, 2u);
        result = 0;
      }
    }

    atomic_store(1u, result);
    result[1] = -1073627135;
    *(result + 7) = v5;
    result[12] = 1;
LABEL_18:
    *(result + 5) = -1;
    *(result + 5) = v6;
    return result;
  }

  v11 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
  {
    ++sTotal_6326;
  }

  v12 = *(a1 + 56);
  v13 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
  if (!v13)
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    v13 = 0;
    if (v14)
    {
      *v19 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v19, 2u);
      v13 = 0;
    }
  }

  atomic_store(1u, v13);
  v13[1] = -1073627135;
  *(v13 + 7) = v12;
  v13[12] = 6;
  *(v13 + 5) = -1;
  v13[13] = *(a1 + 52);
  v15 = v13;
  v13[24] = 1;
  if (*v11 <= 7uLL)
  {
    ++sTotal_6326;
  }

  v16 = malloc_type_zone_calloc(queryZone, 1uLL, 8uLL, 0x5BAF1CEAuLL);
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v20 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v20, 2u);
  }

  result = v15;
  *(v15 + 9) = v16;
  atomic_fetch_add(a1, 1u);
  **(v15 + 9) = a1;
  return result;
}

unsigned int *ContentIndexDocSetCreateAllWithPrototype(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
  {
    ++sTotal_6326;
  }

  result = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
  if (!result)
  {
    v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    result = 0;
    if (v5)
    {
      v8[0] = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v8, 2u);
      result = 0;
    }
  }

  atomic_store(1u, result);
  result[1] = -1073627135;
  *(result + 7) = a1;
  result[12] = 1;
  *(result + 5) = -1;
  if (a2)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = *(v6 + 52);
    }

    else
    {
      v7 = *(a2 + 72);
    }
  }

  else
  {
    v7 = 0;
  }

  result[5] = v7;
  return result;
}

uint64_t SIDeleteCSItems(uint64_t a1, const __CFString *a2, Bytef *a3, uint64_t a4, const void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1288) == 1)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Cannot delete in SIDeleteCSItems because the index is read-only", buf, 2u);
    }

    v7 = __error();
    result = 0;
    *v7 = v5;
    goto LABEL_61;
  }

  pthread_mutex_lock((a1 + 1632));
  JournalFd = getJournalFd(a1, 0, 0);
  if (!JournalFd)
  {
    v16 = 0;
    goto LABEL_57;
  }

  v15 = JournalFd;
  v16 = *(a1 + 2104);
  if (v16)
  {
    if (*(v16 + 8) == JournalFd)
    {
LABEL_16:
      atomic_fetch_add(v16, 1u);
      goto LABEL_17;
    }

    if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v16, 1);
    }

    *(a1 + 2104) = 0;
  }

  v17 = *(a1 + 60);
  if (*(a1 + 2072) == 1 && (*(a1 + 829) & 0x10) == 0 && _os_feature_enabled_impl())
  {
    _os_feature_enabled_impl();
  }

  v16 = si_mobile_journal_create(a1);
  *(a1 + 2104) = v16;
  if (v16)
  {
    goto LABEL_16;
  }

LABEL_17:
  add_explicit = atomic_fetch_add_explicit((a1 + 2128), 1uLL, memory_order_relaxed);
  if (si_clientstatesandmeta_update(a1, add_explicit + 1, 0))
  {
    bzero(buf, 0x400uLL);
    if (a2)
    {
      if (!CFStringGetCString(a2, buf, 1024, 0x8000100u))
      {
        goto LABEL_52;
      }

      v35 = strlen(buf) + 1;
    }

    else
    {
      LOWORD(v35) = 0;
    }

    v19 = -262209811;
    *v41 = 0u;
    v42 = 0u;
    v33 = a5;
    v34 = a3;
    if (add_explicit)
    {
      if (add_explicit > 0x7F)
      {
        if (add_explicit >> 14)
        {
          if (add_explicit >> 21)
          {
            if (add_explicit >> 28)
            {
              if (add_explicit >> 35)
              {
                if (add_explicit >> 42)
                {
                  if (add_explicit >> 49)
                  {
                    if (HIBYTE(add_explicit))
                    {
                      v41[0] = -1;
                      *&v41[1] = add_explicit;
                      v20 = 9;
                    }

                    else
                    {
                      v41[0] = -2;
                      v41[1] = BYTE6(add_explicit);
                      v41[2] = BYTE5(add_explicit);
                      v41[3] = BYTE4(add_explicit);
                      v41[4] = BYTE3(add_explicit);
                      v41[5] = BYTE2(add_explicit);
                      v41[6] = BYTE1(add_explicit);
                      v20 = 8;
                      v41[7] = add_explicit;
                    }
                  }

                  else
                  {
                    v41[0] = BYTE6(add_explicit) | 0xFC;
                    v41[1] = BYTE5(add_explicit);
                    v41[2] = BYTE4(add_explicit);
                    v41[3] = BYTE3(add_explicit);
                    v41[4] = BYTE2(add_explicit);
                    v41[5] = BYTE1(add_explicit);
                    v20 = 7;
                    v41[6] = add_explicit;
                  }
                }

                else
                {
                  v41[0] = BYTE5(add_explicit) | 0xF8;
                  v41[1] = BYTE4(add_explicit);
                  v41[2] = BYTE3(add_explicit);
                  v41[3] = BYTE2(add_explicit);
                  v41[4] = BYTE1(add_explicit);
                  v41[5] = add_explicit;
                  v20 = 6;
                }
              }

              else
              {
                v41[0] = BYTE4(add_explicit) | 0xF0;
                v41[1] = BYTE3(add_explicit);
                v41[2] = BYTE2(add_explicit);
                v41[3] = BYTE1(add_explicit);
                v41[4] = add_explicit;
                v20 = 5;
              }
            }

            else
            {
              v41[0] = BYTE3(add_explicit) | 0xE0;
              v41[1] = BYTE2(add_explicit);
              v41[2] = BYTE1(add_explicit);
              v41[3] = add_explicit;
              v20 = 4;
            }
          }

          else
          {
            v41[0] = BYTE2(add_explicit) | 0xC0;
            v41[1] = BYTE1(add_explicit);
            v41[2] = add_explicit;
            v20 = 3;
          }
        }

        else
        {
          v41[0] = BYTE1(add_explicit) | 0x80;
          v41[1] = add_explicit;
          v20 = 2;
        }
      }

      else
      {
        v41[0] = add_explicit;
        v20 = 1;
      }

      v21 = adler32(0, v41, v20);
    }

    else
    {
      v21 = 0;
      v20 = 0;
      v19 = -261161235;
    }

    v22 = adler32(v21, buf, v35);
    v37 = v35;
    v38 = a4;
    v36[0] = v19;
    v36[1] = 8 * a4 + v35 + v20 + 6;
    v36[2] = adler32(v22, v34, 8 * a4);
    v23 = fd_lseek(v15, 0, 2);
    if (v23 != -1)
    {
      v24 = v23;
      if (fd_write(v15, v36, 0x12uLL) != -1 && (!v20 || fd_write(v15, v41, v20) != -1) && (!v35 || fd_write(v15, buf, v35) != -1) && (!a4 || fd_write(v15, v34, (8 * a4) & 0x7FFFFFFF8) != -1))
      {
        v25 = 8 * a4 + v35 + v20 + 6 + 12;
        pthread_mutex_unlock((a1 + 1632));
        v26 = add_explicit != 0;
        v27 = si_mobile_delete_attr_ctx_create(a1, a2, v33);
        v27[1] = v16;
        v27[2] = v24;
        v27[3] = v25;
        *(v27 + 32) = v26;
        *(v27 + 33) = 0;
        *(v27 + 9) = 0;
        atomic_fetch_add_explicit(&gEnqueuedSize, v25, memory_order_relaxed);
        *(v27 + 6) = CFAbsoluteTimeGetCurrent();
        si_enqueue_barrier_with_qos(*(a1 + 1048), 9, deleteCSAttributes, v27);
        result = 1;
        goto LABEL_61;
      }

      v28 = *__error();
      fd_truncate(v15, v24);
      *__error() = v28;
      goto LABEL_54;
    }

LABEL_52:
    v28 = 22;
LABEL_54:
    v29 = *__error();
    v30 = _SILogForLogForCategory(4);
    v31 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v30, v31))
    {
      *v39 = 67109120;
      v40 = v28;
      _os_log_impl(&dword_1C278D000, v30, v31, "Error writing to log file: %d", v39, 8u);
    }

    *__error() = v29;
  }

LABEL_57:
  pthread_mutex_unlock((a1 + 1632));
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v16, 1);
  }

  result = 0;
LABEL_61:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void *si_mobile_delete_attr_ctx_create(uint64_t a1, const void *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040A35325E4uLL);
  *v6 = a1;
  if (a2)
  {
    v6[7] = CFRetain(a2);
  }

  if (a3)
  {
    v6[8] = _Block_copy(a3);
  }

  return v6;
}

void CIIndexSetInvertRange(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (CFGetTypeID(a1) == __kCIIndexSetInvertedTypeID)
  {
    _CIIndexSetForceBitmap(a1, 0, 0);
  }

  v7 = *(a1 + 20);
  v6 = *(a1 + 24);
  if (v6 >= a3)
  {
    if (v7 > a2)
    {
      v8 = a2 <= 1 ? 1 : a2;
      if (v8 <= v6)
      {
        v9 = a1;
LABEL_21:
        _CIIndexSetSetIndexRangeWithCache(v9, v8, v6, 0, 0);
      }
    }
  }

  else
  {
    if (v7 > a2)
    {
      if (a2 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = a2;
      }

      if (v8 > a3)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(a1 + 20);
    }

    if (v8 <= a3)
    {
LABEL_20:
      v9 = a1;
      v6 = a3;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (*(a1 + 16) >= -9)
  {
    _CIIndexSetForceBitmap(a1, 0, 0);
  }

  v10 = *(a1 + 24);
  v11 = (v10 - a3) >> 5;
  v12 = (v10 - a3) & 0x1F;
  v13 = v10 - a2;
  v14 = (v10 - a2) >> 5;
  v15 = v13 & 0x1F;
  v16 = (*(a1 + 40) + 4 * v11);
  v17 = *v16;
  if (v11 == v14)
  {
    v18 = v15 + 1;
    v19 = masks[v12];
    if (v12 != v18)
    {
      v19 = masks[v18] & ~v19;
    }
  }

  else
  {
    v20 = masks[v12];
    *v16 = v20 & v17;
    *(*(a1 + 40) + 4 * v11) |= ~(v20 | v17);
    v21 = (v11 + 1);
    if (v21 < v14)
    {
      do
      {
        *(*(a1 + 40) + 4 * v21) = ~*(*(a1 + 40) + 4 * v21);
        ++v21;
      }

      while (v14 != v21);
    }

    v16 = (*(a1 + 40) + 4 * v14);
    v17 = *v16;
    v19 = masks[v15 + 1];
    v11 = v14;
  }

  *v16 = v17 & ~v19;
  *(*(a1 + 40) + 4 * v11) |= v19 & ~v17;
}

uint64_t ci_donebits_check(os_unfair_lock_s *a1, unint64_t a2, unint64_t a3, uint32_t a4, unint64_t *a5)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);
    if (a1[1]._os_unfair_lock_opaque <= a4)
    {
      v15 = (a3 | a2) == 0;
LABEL_107:
      os_unfair_lock_unlock(a1);
      return v15;
    }

    if (a3 && a3 < a2)
    {
      v10 = *&a1[8 * a4 + 12]._os_unfair_lock_opaque;
      v11 = *(a5 + 15);
      v12 = *(a5 + 16);
      v13 = *(a5 + 69);
      if (v13)
      {
        v14 = v10 + 1;
        if (v11 != v12)
        {
          v10 += 2;
        }

        if (v12 == 0.0)
        {
          v10 = v14;
        }
      }

      else
      {
        v19 = v10 + 1;
        if (v11 != v12)
        {
          v10 += 2;
        }

        if (*a5 == 0)
        {
          v10 = v19;
        }
      }

      v20 = *v10;
      if (v20)
      {
        v21 = v20[2] - 1;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < a3)
      {
        goto LABEL_52;
      }

      v22 = *v20;
      if (v22)
      {
        v23 = (v22 + 80);
      }

      else
      {
        v23 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v24 = *(v23 + 12);
      v25 = *(v23 + 13);
      v26 = *(v23 + 15);
      v28 = *a5;
      v27 = a5[1];
      v29 = *(a5 + 12);
      v30 = *(a5 + 13);
      if (*(a5 + 69) & 1) != 0 || (*(v23 + 69))
      {
        if (v26 != v11 || v25 <= v30 && (v25 == v30 ? (v31 = v24 >= v29) : (v31 = 1), v31))
        {
          v32 = v26 != 100.0;
          if (v26 <= v11)
          {
            v32 = v11 == 100.0;
          }

          if (!v32)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_52;
      }

      v16 = *&a1[8 * a4 + 10]._os_unfair_lock_opaque;
      v11 = *(a5 + 15);
      v17 = *(a5 + 16);
      v13 = *(a5 + 69);
      if (v13)
      {
        v18 = v16 + 1;
        if (v11 != v17)
        {
          v16 += 2;
        }

        if (v17 == 0.0)
        {
          v16 = v18;
        }
      }

      else
      {
        v33 = v16 + 1;
        if (v11 != v17)
        {
          v16 += 2;
        }

        if (*a5 == 0)
        {
          v16 = v33;
        }
      }

      v34 = *v16;
      v35 = v34 ? v34[2] - 1 : 0;
      if (v35 < a2)
      {
        goto LABEL_52;
      }

      v36 = *v34;
      if (v36)
      {
        v23 = (v36 + 80);
      }

      else
      {
        v23 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v24 = *(v23 + 12);
      v25 = *(v23 + 13);
      v37 = *(v23 + 15);
      v28 = *a5;
      v27 = a5[1];
      v29 = *(a5 + 12);
      v30 = *(a5 + 13);
      if (*(a5 + 69) & 1) != 0 || (*(v23 + 69))
      {
        if (v37 != v11 || v25 <= v30 && (v25 == v30 ? (v38 = v24 >= v29) : (v38 = 1), v38))
        {
          v39 = v37 != 100.0;
          if (v37 <= v11)
          {
            v39 = v11 == 100.0;
          }

          if (!v39)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_71;
      }
    }

    v42 = v23;
    v41 = *v23;
    v40 = *(v42 + 1);
    if (__PAIR128__(v27, v28) >= __PAIR128__(v40, v41))
    {
      if (v40 != v27 || v41 != v28)
      {
        goto LABEL_52;
      }

      if (v25 <= v30 && (v25 != v30 || v24 >= v29))
      {
        goto LABEL_52;
      }
    }

    v13 = 0;
LABEL_71:
    v43 = *(a5 + 14);
    if (!v43)
    {
LABEL_106:
      v15 = 0;
      goto LABEL_107;
    }

    v44 = &a1[8 * a4 + 10];
    v45 = *(v44 + 16);
    if (!v45)
    {
      if (a3)
      {
        v46 = a3;
      }

      else
      {
        v46 = a2;
      }

      if (v46 >= 0x19)
      {
        v47 = 25;
      }

      else
      {
        v47 = v46;
      }

      v45 = container_table_create(v47);
      *(v44 + 16) = v45;
      v28 = *a5;
      v27 = a5[1];
      v29 = *(a5 + 12);
      v30 = *(a5 + 13);
      v43 = *(a5 + 14);
      v11 = *(a5 + 15);
      v13 = *(a5 + 69);
    }

    if (!*v45)
    {
      goto LABEL_94;
    }

    v48 = &v45[20 * ((v43 - 1) % *v45) + 4];
    if (v13)
    {
      v49 = *&v45[20 * ((v43 - 1) % *v45) + 19];
      v50 = v11 == v49;
      if (v11 < v49)
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (__PAIR128__(v27, v28) < *v48)
      {
        goto LABEL_93;
      }

      v50 = v27 == *&v45[20 * ((v43 - 1) % *v45) + 6] && v28 == *v48;
    }

    if (v50)
    {
      v51 = *&v45[20 * ((v43 - 1) % *v45) + 17];
      if (v30 < v51 || v30 == v51 && v29 > v45[20 * ((v43 - 1) % *v45) + 16])
      {
LABEL_93:
        if (!v45[20 * ((v43 - 1) % *v45) + 18])
        {
          goto LABEL_129;
        }

LABEL_94:
        if (!v43)
        {
          goto LABEL_106;
        }

        v54 = *(v44 + 24);
        v53 = (v44 + 24);
        v52 = v54;
        if (!v54)
        {
          if (a3)
          {
            v55 = a3;
          }

          else
          {
            v55 = a2;
          }

          if (v55 >= 0x19)
          {
            v56 = 25;
          }

          else
          {
            v56 = v55;
          }

          v52 = container_table_create(v56);
          *v53 = v52;
          v29 = *(a5 + 12);
          v30 = *(a5 + 13);
          v43 = *(a5 + 14);
        }

        if (!*v52)
        {
          goto LABEL_106;
        }

        v58 = a5[2];
        v57 = a5[3];
        v59 = &v52[20 * ((v43 - 1) % *v52)];
        v60 = (v59 + 4);
        v63 = v59 + 8;
        v62 = *(v59 + 4);
        v61 = *(v63 + 1);
        if (__PAIR128__(v57, v58) < __PAIR128__(v61, v62) || (v57 == v61 ? (v67 = v58 == v62) : (v67 = 0), v67 && ((v68 = v60[13], v30 < v68) || v30 == v68 && v29 > *(v60 + 12))))
        {
          if (*(v60 + 14))
          {
            goto LABEL_106;
          }

LABEL_129:
          v69 = __si_assert_copy_extra_332();
          __message_assert_336(v69, v70, v71, v72, v73, v74, v75, v76, "HashPriorityTable.h");
          free(v69);
          if (__valid_fs(-1))
          {
            v77 = 2989;
          }

          else
          {
            v77 = 3072;
          }

          *v77 = -559038737;
          abort();
        }
      }
    }

LABEL_52:
    v15 = 1;
    goto LABEL_107;
  }

  return 1;
}

void db_obj_iter_release(_DWORD *a1)
{
  if (*a1 != 3506)
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 703, v21);
    free(v20);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = a1;
  db2_obj_iter_suspend(a1);
  v2 = v1[1];
  if (v2)
  {
    fd_release(v2);
  }

  v3 = v1[4];
  if (v3)
  {
    free(v3);
    v1[4] = 0;
  }

  v4 = v1[6];
  if (v4)
  {
    _Block_release(v4);
    v1[6] = 0;
  }

  v5 = v1[5];
  if (v5)
  {
    _Block_release(v5);
    v1[5] = 0;
  }

  v6 = v1[8];
  v7 = MEMORY[0x1E69E9AC8];
  for (i = v1; v6; v6 = i[8])
  {
    v1[8] = v6[3];
    do
    {
      while (1)
      {
        v8 = v6;
        v6 = *v6;
        v9 = v8[2] - v8;
        if (v9 != 0x100000)
        {
          break;
        }

        madvise(v8, 0x100000uLL, 5);
        atomic_fetch_add_explicit(qword_1EDD78CE0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
        if (atomic_fetch_add(qword_1EDD78D50, 1uLL) > 4)
        {
          atomic_fetch_add(qword_1EDD78D50, 0xFFFFFFFFFFFFFFFFLL);
          goto LABEL_20;
        }

        v10 = node_alloc();
        v10[1] = v8;
        v11 = &stru_1EDD78D40;
LABEL_17:
        OSAtomicEnqueue(v11, v10, 0);
        if (!v6)
        {
          goto LABEL_21;
        }
      }

      if (*v7 == v9)
      {
        v12 = node_alloc();
        v12[1] = v8;
        madvise(v8, *v7, 5);
        atomic_fetch_add_explicit(qword_1EDD78CE0, -v9, memory_order_relaxed);
        v11 = &stru_1EDD78D30;
        v10 = v12;
        goto LABEL_17;
      }

LABEL_20:
      atomic_fetch_add_explicit(qword_1EDD78CE0, -v9, memory_order_relaxed);
      munmap(v8, v9);
    }

    while (v6);
LABEL_21:
    v1 = i;
  }

  v13 = v1[22];
  while (v13)
  {
    while (1)
    {
      v14 = v13;
      v13 = *v13;
      v15 = v14[2] - v14;
      if (v15 == 0x100000)
      {
        break;
      }

      if (*v7 == v15)
      {
        v18 = node_alloc();
        v18[1] = v14;
        madvise(v14, *v7, 5);
        atomic_fetch_add_explicit(qword_1EDD78CE0, -v15, memory_order_relaxed);
        v17 = &stru_1EDD78D30;
        v16 = v18;
        goto LABEL_28;
      }

LABEL_31:
      atomic_fetch_add_explicit(qword_1EDD78CE0, -v15, memory_order_relaxed);
      munmap(v14, v15);
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    madvise(v14, 0x100000uLL, 5);
    atomic_fetch_add_explicit(qword_1EDD78CE0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
    if (atomic_fetch_add(qword_1EDD78D50, 1uLL) > 4)
    {
      atomic_fetch_add(qword_1EDD78D50, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_31;
    }

    v16 = node_alloc();
    v16[1] = v14;
    v17 = &stru_1EDD78D40;
LABEL_28:
    OSAtomicEnqueue(v17, v16, 0);
  }

LABEL_32:
  dispatch_release(i[21]);

  free(i);
}

void deleteCSAttributes(uint64_t a1, int a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  Current = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    goto LABEL_52;
  }

  v7 = Current;
  v8 = gSIBadThermals;
  v9 = *a1;
  v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
  v82 = HIDWORD(v12);
  v83 = v12;
  v80 = v14;
  v81 = v13;
  v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  *(v15 + 216) = 0;
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  v18 = v15;
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v79 = v83;
  v78 = v82;
  v77 = __PAIR64__(v81, v80);
  if (!_setjmp(v18))
  {
    base = si_mobile_journal_get_base(*(a1 + 8), v4, v5);
    v20 = base;
    if (!base || v5 <= 0x11)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "deleteCSAttributes";
        v85 = 1024;
        v86 = 33017;
        v87 = 2048;
        v88 = v20;
        v89 = 2048;
        v90 = v4;
        v91 = 2048;
        v92 = v5;
        _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, diskRecord:%p, journalEntryOffset:%lld, journalEntrySize:%ld", buf, 0x30u);
      }

      *__error() = v28;
      goto LABEL_47;
    }

    v71 = v9;
    v21 = *base;
    if (v21 != -262209811 && v21 != -261161235)
    {
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "deleteCSAttributes";
        v85 = 1024;
        v86 = 33023;
        v87 = 2048;
        v88 = v21;
        v89 = 2048;
        v90 = v4;
        v91 = 2048;
        v92 = v5;
        _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, journalEntryOffset:%lld, journalEntrySize:%ld", buf, 0x30u);
      }

      *__error() = v33;
      v9 = v71;
      goto LABEL_47;
    }

    v22 = *(base + 1);
    if (v22 > 0xFFFFFFF3 || v5 < v22 + 12)
    {
      v30 = *(base + 1);
      v31 = *__error();
      v32 = _SILogForLogForCategory(0);
      v9 = v71;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "deleteCSAttributes";
        v85 = 1024;
        v86 = 33032;
        v87 = 2048;
        v88 = v30;
        v89 = 2048;
        v90 = v4;
        v91 = 2048;
        v92 = v5;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, size:%ld, journalEntryOffset:%lld, journalEntrySize:%ld", buf, 0x30u);
      }

      *__error() = v31;
      goto LABEL_47;
    }

    v68 = base + 18;
    v69 = *(base + 1);
    v23 = *(base + 6);
    v65 = *(base + 14);
    v24 = v65;
    v9 = v71;
    v66 = v23;
    v64 = base + 18;
    if (*(a1 + 32) == 1)
    {
      *buf = 0;
      VInt64 = v2_readVInt64(base + 18, buf);
      v23 = v66;
      v22 = v69;
      v24 = v65;
      v26 = *buf;
      v27 = VInt64;
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v70 = v27;
    v35 = v26 + v23 + 8 * v24;
    if (v22 == v35 + 6)
    {
      v62 = v26;
      v63 = v26 + v23;
      v67 = *(v20 + 2);
      v36 = *(v20 + 2);
      v37 = adler32(0, v64, v22 - 6);
      if (v36 != v37)
      {
        v45 = *__error();
        v46 = _SILogForLogForCategory(0);
        v9 = v71;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "deleteCSAttributes";
          v85 = 1024;
          v86 = 33065;
          v87 = 2048;
          v88 = v37;
          v89 = 2048;
          v90 = v67;
          v91 = 2048;
          v92 = v4;
          v93 = 2048;
          v94 = v5;
          _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, checkSum:0x%08lx, storedCheckSum:0x%08lx, journalEntryOffset:%lld, journalEntrySize:%ld", buf, 0x3Au);
        }

        *__error() = v45;
        goto LABEL_45;
      }

      v38 = v65;
      v9 = v71;
      if (!v66)
      {
        if (!v65)
        {
          goto LABEL_45;
        }

        v41 = 0;
        v40 = v62;
LABEL_39:
        v47 = *(a1 + 40);
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 0x40000000;
        v72[2] = __deleteCSAttributes_block_invoke;
        v72[3] = &__block_descriptor_tmp_2104;
        v73 = (v47 & 0x10) != 0;
        v72[4] = a1;
        v72[5] = v71;
        v74 = v8;
        v75 = v66;
        v76 = v38;
        v72[6] = &v68[v40];
        si_indexingWatchdogPerform(v71, v41, v38, 1u, v72);
        if (!v41)
        {
          v53 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          logDeleteEventInCoreAnalyticsWithBundleId(0, v65, 0, v53 - v10);
LABEL_45:
          if (v70)
          {
            *(v9 + 2136) = v70;
          }

LABEL_47:
          v54 = threadData[9 * v79 + 1] + 320 * v78;
          *(v54 + 312) = v16;
          v55 = *(v54 + 232);
          if (v55)
          {
            v55(*(v54 + 288));
          }

          dropThreadId(v79, 0, add_explicit + 1);
          goto LABEL_50;
        }

        SIGetAccumulatedSizeForGroup(v71, v41, 0);
        v48 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        logDeleteEventInCoreAnalyticsWithBundleId(v41, v65, 0, v48 - v10);
        v39 = v41;
LABEL_41:
        CFRelease(v39);
        goto LABEL_45;
      }

      v39 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &v68[v62], 0x8000100u);
      if (v39)
      {
        v40 = v63;
        v41 = v39;
        v38 = v65;
        if (!v65)
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

      v43 = *__error();
      v49 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "deleteCSAttributes";
        v85 = 1024;
        v86 = 33074;
        v87 = 2048;
        v88 = 0;
        v89 = 2048;
        v90 = v4;
        v91 = 2048;
        v92 = v5;
        v50 = "%s:%d: Invalid journal entry, bundleID:%p, journalEntryOffset:%lld, journalEntrySize:%ld";
        v51 = v49;
        v52 = 48;
LABEL_63:
        _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);
      }
    }

    else
    {
      v42 = v35 + 6;
      v43 = *__error();
      v44 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "deleteCSAttributes";
        v85 = 1024;
        v86 = 33054;
        v87 = 2048;
        v88 = v69;
        v89 = 2048;
        v90 = v42;
        v91 = 2048;
        v92 = v4;
        v93 = 2048;
        v94 = v5;
        v50 = "%s:%d: Invalid journal entry, size:%ld, extraSize:%ld, journalEntryOffset:%lld, journalEntrySize:%ld";
        v51 = v44;
        v52 = 58;
        goto LABEL_63;
      }
    }

    *__error() = v43;
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  v18[78] = v16;
  CIOnThreadCleanUpReset(v77);
  dropThreadId(v79, 1, add_explicit + 1);
  CICleanUpReset(v79, HIDWORD(v77));
LABEL_50:
  bumpWorkTime(v9, v7);
  v56 = *(a1 + 64);
  if (v56)
  {
    v57 = CFAbsoluteTimeGetCurrent();
    (*(v56 + 16))(v56, v57 - v7);
    _Block_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

LABEL_52:
  if (v5)
  {
    atomic_fetch_add_explicit(&gEnqueuedSize, -v5, memory_order_relaxed);
  }

  v58 = *(a1 + 8);
  if (v58 && atomic_fetch_add(v58, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v58, 1);
  }

  v59 = *(a1 + 56);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(a1 + 64);
  if (v60)
  {
    (*(v60 + 16))(0.0);
    _Block_release(*(a1 + 64));
  }

  free(a1);
  v61 = *MEMORY[0x1E69E9840];
}

void __deleteCSAttributes_block_invoke(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, add_explicit + 1);
  v41 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v39 = v5;
  v40 = HIDWORD(v3);
  v38 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v37 = v41;
  v36 = v40;
  v35 = v39;
  v34 = v38;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v34);
    dropThreadId(v37, 1, add_explicit + 1);
    CICleanUpReset(v37, v35);
    goto LABEL_24;
  }

  v9 = *(a1 + 56) ^ 1;
  if (*(a1 + 56))
  {
    v10 = 0;
  }

  else
  {
    v11 = *(a1 + 40);
    v10 = *(v11 + 288);
    if (!v10)
    {
      v12 = *(v11 + 296);
      if (v12)
      {
        *(v11 + 288) = v12;
        v13 = 296;
        v14 = 0;
      }

      else
      {
        Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
        v13 = 288;
        v14 = Mutable;
      }

      *(*(a1 + 40) + v13) = v14;
      v10 = *(*(a1 + 40) + 288);
    }
  }

  *buf = 0;
  if (*(a1 + 57))
  {
    v16 = 1;
  }

  else
  {
    v17 = *(a1 + 60);
    if (gCPUCount >= v17)
    {
      v16 = v17;
    }

    else
    {
      v16 = gCPUCount;
    }

    if (!v16)
    {
      v18 = 0;
      v19 = *(a1 + 32);
      v20 = -1;
      goto LABEL_21;
    }
  }

  v18 = v16;
  v19 = *(a1 + 32);
  v20 = *(*v19 + 32);
LABEL_21:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __deleteCSAttributes_block_invoke_2;
  block[3] = &__block_descriptor_tmp_2103;
  block[4] = v19;
  block[5] = buf;
  v21 = *(a1 + 58);
  v27 = v20;
  v28 = v21;
  v29 = *(a1 + 62);
  v25 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v30 = *(a1 + 56);
  v26 = v10;
  v31 = 0;
  v32 = v9;
  dispatch_apply(v18, 0, block);
  v22 = threadData[9 * v37 + 1] + 320 * v36;
  *(v22 + 312) = v7;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v37, 0, add_explicit + 1);
LABEL_24:
  si_finish_text_store_deletions(*(a1 + 40));
}

uint64_t __deleteCSAttributes_block_invoke_2(uint64_t a1)
{
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 72), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v34 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v33 = HIDWORD(v3);
  v32 = __PAIR64__(v5, v6);
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v31 = v34;
  v30 = v33;
  v29 = v32;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v29);
    dropThreadId(v31, 1, add_explicit + 1);
    return CICleanUpReset(v31, HIDWORD(v29));
  }

  else
  {
    v10 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, v10 + 1);
    v27 = HIDWORD(v11);
    *buf = v11;
    v26 = __PAIR64__(v12, v13);
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    *(v14 + 216) = 0;
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v25 = *buf;
    v24 = v27;
    v23 = v26;
    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v22, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v23);
      dropThreadId(v25, 1, v10 + 1);
      CICleanUpReset(v25, HIDWORD(v23));
    }

    else
    {
      for (i = atomic_fetch_add_explicit(*(a1 + 40), 1uLL, memory_order_relaxed); i < *(a1 + 78); i = atomic_fetch_add_explicit(*(a1 + 40), 1uLL, memory_order_relaxed))
      {
        _si_delete_attributes_inner(*(a1 + 56), *(*(a1 + 48) + 8 * i), *(a1 + 82), 1u, 1u, *(a1 + 64), (a1 + 83));
      }

      if (*(a1 + 84))
      {
        si_indexDeleteDeferredItemsIfReady(*(a1 + 56));
      }

      v18 = threadData[9 * v25 + 1] + 320 * v24;
      *(v18 + 312) = v15;
      v19 = *(v18 + 232);
      if (v19)
      {
        v19(*(v18 + 288));
      }

      dropThreadId(v25, 0, v10 + 1);
    }

    v20 = threadData[9 * v31 + 1] + 320 * v30;
    *(v20 + 312) = v7;
    v21 = *(v20 + 232);
    if (v21)
    {
      v21(*(v20 + 288));
    }

    return dropThreadId(v31, 0, add_explicit + 1);
  }
}

uint64_t si_getOID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v9 = *a5;
  }

  (*(a9 + 16))();
  return 1;
}

uint64_t _si_delete_attributes_inner(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, _BYTE *a7)
{
  v150 = *MEMORY[0x1E69E9840];
  v146 = 0;
  v12 = *(a1 + 2072);
  v128 = *(a1 + 828);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v14 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v145 = v14;
  v15 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
  v143 = v16;
  v144 = HIDWORD(v14);
  v142 = v17;
  *(v15 + 216) = 0;
  v18 = *(v15 + 312);
  v19 = *(v15 + 224);
  if (v19)
  {
    v19(*(v15 + 288));
  }

  v141 = v145;
  v140 = v144;
  v139 = v143;
  v138 = v142;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v15 + 312) = v18;
    CIOnThreadCleanUpReset(v138);
    dropThreadId(v141, 1, add_explicit + 1);
    result = CICleanUpReset(v141, v139);
    goto LABEL_127;
  }

  if (!db_get_obj_callback(*(a1 + 1192), a2, &v146, 0, si_docIdRewriteCallback, *(a1 + 2368), 0))
  {
    v135 = v18;
    if (dword_1EBF46ADC >= 5)
    {
      v107 = *__error();
      v108 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_impl(&dword_1C278D000, v108, OS_LOG_TYPE_DEFAULT, "si_delete_attributes_inner oid: %lld", buf, 0xCu);
      }

      *__error() = v107;
    }

    v21 = v146;
    v126 = si_indexForDocId(a1, v146[4]);
    if (a7 && isSyndicatedContent(a1, v21))
    {
      *a7 = 1;
    }

    v130 = a3;
    v131 = a5;
    v129 = a4;
    v134 = v12;
    if (!v12)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      goto LABEL_55;
    }

    v22 = 0;
    v148 = 0;
    v137 = 0;
    if (db_get_field(*(a1 + 1192), v146, "_kMDItemBundleID", &v148, &v137))
    {
      v23 = 0;
      v24 = 17;
      v25 = 1;
      LODWORD(string_for_id) = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_35;
    }

    if ((*(v148 + 2) & 0x10) != 0)
    {
      string_for_id = db_get_string_for_id(*(a1 + 1192), *(v148 + 13));
      if (!string_for_id)
      {
        v22 = 0;
        v23 = 0;
        v35 = 17;
        v25 = 1;
        v27 = 0;
        goto LABEL_33;
      }

      v22 = string_for_id;
      v33 = strlen(string_for_id) + 1;
    }

    else
    {
      v22 = (v148 + 13);
      v33 = *(v148 + 8);
    }

    if (v33)
    {
      if (!strcmp(v22, "com.apple.MobileSMS"))
      {
        goto LABEL_30;
      }

      v34 = *(a1 + 1192);
      *buf = 0;
      v147 = 0;
      if (db_get_field(v34, v146, "_kMDItemEligibleForPhotosProcessing", &v147, buf) || !**buf)
      {
        v28 = 0;
        LODWORD(string_for_id) = 0;
        v24 = 17;
        v23 = 1;
        v25 = 1;
        v27 = v33;
        goto LABEL_35;
      }

      if (!strcmp(v22, "com.apple.mobilenotes"))
      {
LABEL_30:
        v36 = 0;
      }

      else
      {
        v36 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v22, v33 - 1, 0x8000100u, 0);
        if (!v36)
        {
          v28 = 0;
          v24 = 17;
          v23 = 1;
          v25 = 1;
          v27 = v33;
          LODWORD(string_for_id) = 0;
LABEL_35:
          v119 = string_for_id;
          v120 = v24;
          v121 = v25;
          bytes = v22;
          *buf = 0;
          v147 = 0;
          if (db_get_field(*(a1 + 1192), v146, "_kMDItemExternalID", buf, &v147))
          {
            v37 = 0;
            v38 = 0;
          }

          else if ((*(*buf + 2) & 0x10) != 0)
          {
            v39 = db_get_string_for_id(*(a1 + 1192), *(*buf + 13));
            if (v39)
            {
              v38 = v39;
              v37 = strlen(v39) + 1;
            }

            else
            {
              v37 = 0;
              v38 = 0;
            }
          }

          else
          {
            v38 = (*buf + 13);
            v37 = *(*buf + 8);
          }

          v40 = v23 ^ 1;
          if (v28)
          {
            v40 = 1;
          }

          v41 = v28;
          if ((v40 & 1) == 0)
          {
            v41 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, v27 - 1, 0x8000100u, 0);
          }

          if (v37)
          {
            v42 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v38, v37 - 1, 0x8000100u, 0);
          }

          else
          {
            v42 = 0;
          }

          if (_os_feature_enabled_impl() && *(a1 + 2072) == 1 && v41 && SpotlightCacheBundleID())
          {
            v43 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040149E097CuLL);
            v44 = v146;
            *v43 = a1;
            v43[1] = v44;
            si_deleteCacheEntry(v43, 0);
          }

          v29 = v41;
          v30 = v42;
          v45 = bytes;
          v31 = bytes;
          v32 = v27;
          v47 = v119;
          v46 = v120;
          if (!v121)
          {
            goto LABEL_64;
          }

LABEL_55:
          v48 = v32;
          v49 = v31;
          if (v126 && _CIGetOIDForDocId(v126, v146[4], 1) == a2)
          {
            v50 = v146[4];
            _CIDelete(v126);
            v51 = v134;
          }

          else
          {
            v51 = v134;
            if (a6)
            {
              pthread_rwlock_wrlock((a6 + 16));
              SIValueSet<unsigned long long>::SIValueSetInsert((a6 + 216), a2);
              pthread_rwlock_unlock((a6 + 16));
            }
          }

          v52 = *(a1 + 1192);
          if (*v52 != 1685287992)
          {
            v109 = *__error();
            v110 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              v111 = *v52;
              *buf = 136315650;
              *&buf[4] = "db_delete_obj_with_flags";
              *&buf[12] = 1024;
              *&buf[14] = 331;
              *&buf[18] = 1024;
              *&buf[20] = v111;
              _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
            }

            *__error() = v109;
            v112 = __si_assert_copy_extra_332();
            v113 = v112;
            if (v112)
            {
              v114 = v112;
            }

            else
            {
              v114 = "";
            }

            __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 331, v114);
            free(v113);
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          v47 = db2_delete_obj_with_flags(*(a1 + 1192), v146, v129);
          if (v47)
          {
            if (v51)
            {
LABEL_63:
              v46 = 17;
              v27 = v48;
              v45 = v49;
              v42 = v30;
              v41 = v29;
LABEL_64:
              v124 = v45;
              v123 = v27;
              if (v47)
              {
                v53 = 19;
              }

              else
              {
                v53 = v46;
              }

              os_unfair_lock_lock((a1 + 2224));
              if (*(a1 + 2229) != a3)
              {
                *(a1 + 2229) = a3;
                if (a3)
                {
                  v54 = 26;
                }

                else
                {
                  v54 = 27;
                }

                activityJournalWrite(a1 + 2192, v54, 0, 0);
              }

              v55 = v42;
              if (*(a1 + 2208) != HIDWORD(a2))
              {
                *(a1 + 2208) = HIDWORD(a2);
                memset(buf, 0, sizeof(buf));
                if (a2 >> 39)
                {
                  if (a2 >> 46)
                  {
                    if (a2 >> 53)
                    {
                      if (a2 >> 60)
                      {
                        buf[0] = -16;
                        *&buf[1] = HIDWORD(a2);
                        v56 = 5;
                      }

                      else
                      {
                        buf[0] = HIBYTE(a2) | 0xE0;
                        buf[1] = BYTE6(a2);
                        buf[2] = BYTE5(a2);
                        buf[3] = BYTE4(a2);
                        v56 = 4;
                      }
                    }

                    else
                    {
                      buf[0] = BYTE6(a2) | 0xC0;
                      buf[1] = BYTE5(a2);
                      buf[2] = BYTE4(a2);
                      v56 = 3;
                    }
                  }

                  else
                  {
                    buf[0] = BYTE5(a2) | 0x80;
                    buf[1] = BYTE4(a2);
                    v56 = 2;
                  }
                }

                else
                {
                  buf[0] = BYTE4(a2);
                  v56 = 1;
                }

                activityJournalWrite(a1 + 2192, 16, buf, v56);
              }

              v59 = v53;
              memset(buf, 0, sizeof(buf));
              if (a2 > 0x7F)
              {
                v29 = v41;
                v58 = v124;
                v57 = v123;
                if (a2 >> 14)
                {
                  if (a2 >> 21)
                  {
                    if (a2 >> 28)
                    {
                      buf[0] = -16;
                      *&buf[1] = a2;
                      v60 = 5;
                    }

                    else
                    {
                      buf[0] = BYTE3(a2) | 0xE0;
                      buf[1] = BYTE2(a2);
                      buf[2] = BYTE1(a2);
                      buf[3] = a2;
                      v60 = 4;
                    }
                  }

                  else
                  {
                    buf[0] = BYTE2(a2) | 0xC0;
                    buf[1] = BYTE1(a2);
                    buf[2] = a2;
                    v60 = 3;
                  }
                }

                else
                {
                  buf[0] = BYTE1(a2) | 0x80;
                  buf[1] = a2;
                  v60 = 2;
                }
              }

              else
              {
                buf[0] = a2;
                v60 = 1;
                v29 = v41;
                v58 = v124;
                v57 = v123;
              }

              activityJournalWrite(a1 + 2192, v59, buf, v60);
              os_unfair_lock_unlock((a1 + 2224));
              if (v57 && !strcmp(v58, "com.apple.mobilemail") && objectHasContent(*(a1 + 1192), v146))
              {
                si_enqueue_text_store_doc_for_deletion(a1, a2);
              }

              if (_os_feature_enabled_impl())
              {
                if ((v128 & 0x1000) == 0)
                {
                  if (v29)
                  {
                    if (v55)
                    {
                      v61 = *MEMORY[0x1E695E480];
                      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
                      if (Mutable)
                      {
                        v63 = v61;
                        v64 = Mutable;
                        v65 = CFDictionaryCreateMutable(v63, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (v65)
                        {
                          v66 = v65;
                          CFDictionarySetValue(v65, @"_kMDItemBundleID", v29);
                          CFDictionarySetValue(v66, @"_kMDItemExternalID", v55);
                          CFArrayAppendValue(v64, v66);
                          si_delete_journal_add_cs_deleted(a1, v29, v64);
                          CFRelease(v66);
                        }

                        CFRelease(v64);
                      }
                    }
                  }
                }
              }

LABEL_110:
              if (v47)
              {
                v67 = v47;
                v68 = *__error();
                v69 = _SILogForLogForCategory(7);
                LOBYTE(v70) = v134;
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "_si_delete_attributes_inner";
                  *&buf[12] = 1024;
                  *&buf[14] = 3332;
                  *&buf[18] = 1024;
                  *&buf[20] = v67;
                  _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: Deleting item failed with error %d", buf, 0x18u);
                }

                *__error() = v68;
LABEL_114:
                v71 = v29;
LABEL_115:
                free(v146);
                si_perform_livequeries_deletions(a1);
                if (v70)
                {
                  si_remove_icon_cache_for_oid(a1, a2);
                  if (v71)
                  {
                    CFRelease(v71);
                  }

                  v18 = v135;
                  if (v55)
                  {
                    CFRelease(v55);
                  }
                }

                else
                {
                  v72 = *(a1 + 1416);
                  v18 = v135;
                  if (v72)
                  {
                    v73 = *(v72 + 104);
                    if (v73)
                    {
                      if (!*(v72 + 240))
                      {
                        v73();
                      }
                    }
                  }
                }

                goto LABEL_124;
              }

              *buf = 0;
              v147 = 0;
              v148 = *(a1 + 2008);
              v70 = v134;
              v77 = v131;
              if (!db_get_field_by_id(*(a1 + 1192), v146, &v148, buf, &v147))
              {
                if ((v134 & 1) == 0 && *v147 > 0x15u)
                {
LABEL_148:
                  if (objectCanHaveTextCache(*(a1 + 1192), v146, 0))
                  {
                    si_remove_text_content_cache_for_oid(a1, a2);
                  }

                  goto LABEL_114;
                }

                v137 = 0;
                LODWORD(v148) = *(a1 + 2012);
                field_by_id = db_get_field_by_id(*(a1 + 1192), v146, &v148, buf, &v137);
                pthread_mutex_lock((a1 + 6976));
                if (field_by_id)
                {
                  v79 = v147;
                }

                else
                {
                  v80 = v147;
                  *(a1 + 8 * *v147 + 7040) -= *v137;
                  v79 = v80;
                }

                --*(a1 + 4 * *v79 + 9088);
                pthread_mutex_unlock((a1 + 6976));
                v77 = v131;
                v70 = v134;
              }

              if (v57 && v70)
              {
                v137 = 0;
                v127 = v55;
                v125 = v58;
                if (!db_get_field(*(a1 + 1192), v146, "_kMDItemRelatedObjects", buf, &v137))
                {
                  v136 = 0;
                  if ((*(*buf + 2) & 0x20) != 0)
                  {
                    v117 = *buf + *(*buf + 8) + 13;
                    if (v137 < v117)
                    {
                      v122 = v57;
                      v115 = v57 - 1;
                      alloc = *MEMORY[0x1E695E480];
                      v87 = v137;
                      v88 = v29;
                      do
                      {
                        v89 = strlen(v87);
                        v90 = v89 + 1;
                        if (!_si_get_object_for_identifier_createParentDBO(a1, v89 + 1, v87, v122, v125, 0, 0, 0, &v136, 0, 0))
                        {
                          _si_delete_attributes_inner(a1, v136, v130, v129, v131, a6, a7);
                          v91 = v88;
                          if (!v88)
                          {
                            v91 = CFStringCreateWithBytes(alloc, v125, v115, 0x8000100u, 0);
                          }

                          v92 = CFStringCreateWithBytes(alloc, v137, v89, 0x8000100u, 0);
                          if (v92)
                          {
                            v93 = v92;
                            if (v91)
                            {
                              v94 = *(a1 + 2360);
                              v95 = *(v94 + 112);
                              if (v95)
                              {
                                if (*(a1 + 2072) == 1)
                                {
                                  v95(*(v94 + 144), 0, v91, v92, 0);
                                }
                              }
                            }

                            CFRelease(v93);
                          }

                          v88 = v91;
                        }

                        v137 += v90;
                        v87 = v137;
                        v29 = v88;
                      }

                      while (v137 < v117);
                    }
                  }

                  else if (!_si_get_object_for_identifier_createParentDBO(a1, *(*buf + 8), v137, v57, v58, 0, 0, 0, &v136, 0, 0))
                  {
                    _si_delete_attributes_inner(a1, v136, v130, v129, v77, a6, a7);
                    v81 = *MEMORY[0x1E695E480];
                    v82 = v29;
                    if (!v29)
                    {
                      v82 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v58, v57 - 1, 0x8000100u, 0);
                    }

                    v29 = v82;
                    v83 = CFStringCreateWithBytes(v81, v137, *(*buf + 8), 0x8000100u, 0);
                    if (v83)
                    {
                      v84 = v83;
                      if (v29)
                      {
                        v85 = *(a1 + 2360);
                        v86 = *(v85 + 112);
                        if (v86)
                        {
                          if (*(a1 + 2072) == 1)
                          {
                            v86(*(v85 + 144), 0, v29, v83, 0);
                          }
                        }
                      }

                      CFRelease(v84);
                    }
                  }

                  v77 = v131;
                }

                v96 = v29;
                if (!db_get_field(*(a1 + 1192), v146, "_kMDItemRelatedObjectsWithBundle", buf, &v137))
                {
                  v97 = (*buf + 13);
                  v98 = *(*buf + 8);
                  if ((*(*buf + 2) & 0x20) != 0)
                  {
                    v99 = &v97[v98];
                    v100 = v137;
                    if (v137 < &v97[v98])
                    {
                      v101 = v77;
                      do
                      {
                        v102 = strlen(v100) + 1;
                        cleanupRelatedItemWithBundle(v100, v102, v130, v101, a1, a6);
                        v137 += v102;
                        v100 = v137;
                      }

                      while (v137 < v99);
                    }
                  }

                  else
                  {
                    cleanupRelatedItemWithBundle(v97, *(*buf + 8), v130, v77, a1, a6);
                  }
                }

                v103 = strcmp(v125, "com.apple.searchstressattr") == 0;
                if (objectCanHaveTextCache(*(a1 + 1192), v146, v103))
                {
                  si_remove_text_content_cache_for_oid(a1, a2);
                }

                v71 = v96;
                v55 = v127;
                LOBYTE(v70) = v134;
                goto LABEL_115;
              }

              goto LABEL_148;
            }
          }

          else
          {
            si_set_obj_state(a1, *(a1 + 1192));
            if (v51)
            {
              goto LABEL_63;
            }
          }

          v57 = v48;
          v55 = v30;
          v58 = v49;
          goto LABEL_110;
        }
      }

      v28 = v36;
      LODWORD(string_for_id) = si_zombifyItem(a1);
      v35 = 54;
      v23 = 1;
      v27 = v33;
      v25 = 0;
LABEL_34:
      v24 = v35;
      goto LABEL_35;
    }

    v27 = 0;
    v35 = 17;
    v25 = 1;
    LODWORD(string_for_id) = 0;
    v23 = 0;
LABEL_33:
    v28 = 0;
    goto LABEL_34;
  }

  if (a6)
  {
    pthread_rwlock_wrlock((a6 + 16));
    SIValueSet<unsigned long long>::SIValueSetInsert((a6 + 216), a2);
    pthread_rwlock_unlock((a6 + 16));
  }

  if (gSILogLevels[0] >= 5)
  {
    v104 = v18;
    v105 = *__error();
    v106 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_1C278D000, v106, OS_LOG_TYPE_DEFAULT, "couldn't get dbo for oid: %lld", buf, 0xCu);
    }

    *__error() = v105;
    v18 = v104;
    if (!v12)
    {
      goto LABEL_124;
    }

    goto LABEL_12;
  }

  if (v12)
  {
LABEL_12:
    si_remove_icon_cache_for_oid(a1, a2);
  }

LABEL_124:
  v74 = threadData[9 * v141 + 1] + 320 * v140;
  *(v74 + 312) = v18;
  v75 = *(v74 + 232);
  if (v75)
  {
    v75(*(v74 + 288));
  }

  result = dropThreadId(v141, 0, add_explicit + 1);
LABEL_127:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL plistBlock(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  switch(a1)
  {
    case 6:
    case 8:
    case 12:
      _MDPlistBytesBeginArray();
      return a4;
    case 7:
    case 9:
    case 13:
      _MDPlistBytesEndArray();
      goto LABEL_15;
    case 10:
      _MDPlistBytesBeginDictionary();
      return a4;
    case 11:
      _MDPlistBytesEndDictionary();
      goto LABEL_15;
    case 14:
    case 28:
    case 29:
      _MDPlistBytesAddCString();
      goto LABEL_15;
    case 15:
      _MDPlistBytesAddBoolean();
      goto LABEL_15;
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      _MDPlistBytesAddInteger();
      goto LABEL_15;
    case 25:
      _MDPlistBytesAddDate();
      goto LABEL_15;
    case 26:
    case 27:
      _MDPlistBytesAddReal();
      goto LABEL_15;
    case 30:
      return _MDPlistBytesAddRawInternedCStringKey() != 0;
    case 31:
      _MDPlistBytesAddRawInternedCStringKeyWithString();
      goto LABEL_15;
    case 33:
      _MDPlistBytesAddData();
      goto LABEL_15;
    case 34:
      __MDPlistBytesAddObject();
LABEL_15:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t isSyndicatedContent(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if (db_get_field(*(a1 + 1192), a2, "_kMDItemBundleID", &v8, &v7))
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (!v4)
  {
    if ((*(v8 + 2) & 0x10) != 0)
    {
      result = db_get_string_for_id(*(a1 + 1192), *(v8 + 13));
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = v8 + 13;
    }

    if (!strcmp(result, "com.apple.MobileSMS"))
    {
      if (!db_get_field(*(a1 + 1192), a2, "com_apple_mobilesms_isHighlightedContent", &v8, &v6) && v6 && *v6)
      {
        return 1;
      }

      v6 = 0;
      if (!db_get_field(*(a1 + 1192), a2, "kMDItemSyndicationStatus", &v8, &v6) && v6 && *v6)
      {
        return 1;
      }

      v6 = 0;
      if (!db_get_field(*(a1 + 1192), a2, "com_apple_mobilesms_isChatAutoDonating", &v8, &v6) && v6 && *v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _CIGetOIDForDocId(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 - *(a1 + 80);
  if (v3 >= *(a1 + 68))
  {
    return 0;
  }

  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v7;
  v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v26 = HIDWORD(v7);
  v25 = __PAIR64__(v9, v10);
  *(v8 + 216) = 0;
  v11 = *(v8 + 312);
  v12 = *(v8 + 224);
  if (v12)
  {
    v12(*(v8 + 288));
  }

  v24 = *buf;
  v23 = v26;
  v22 = v25;
  if (_setjmp(v8))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
    }

    *(v8 + 312) = v11;
    if ((~*(v8 + 212) & 0xA0000000) == 0)
    {
      v13 = *(v8 + 288);
      if (v13)
      {
        _CIMakeInvalid(v13);
      }
    }

    CIOnThreadCleanUpReset(v22);
    dropThreadId(v24, 1, add_explicit + 1);
    CICleanUpReset(v24, HIDWORD(v22));
    return 0;
  }

  if (a3)
  {
    v15 = CICleanUpThreadLoc();
    db_read_lock(a1 + 14504);
    CIOnThreadCleanUpPush(v15, si_rwlock_rdunlock, a1 + 14504);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 45) == 1)
  {
    v17 = *(*(a1 + 14432) + v3);
  }

  else
  {
    v17 = (*(*(a1 + 14432) + 4 * (v3 / 5uLL)) >> (6 * (v3 % 5))) & 0x3F;
  }

  if ((v17 & 0xFFFFFFDF) == 0)
  {
    v18 = 0;
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v18 = *(*(a1 + 14408) + 8 * v3);
  if (a3)
  {
LABEL_23:
    CIOnThreadCleanUpPop(v16);
  }

LABEL_24:
  v19 = threadData[9 * v24 + 1] + 320 * v23;
  *(v19 + 312) = v11;
  v20 = *(v19 + 232);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  dropThreadId(v24, 0, add_explicit + 1);
  return v18;
}

uint64_t _CIDelete(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v120 = *MEMORY[0x1E69E9840];
  if (*(v1 + 8) == 1)
  {
    v5 = v4;
    v6 = v3;
    v7 = v2;
    v8 = v1;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v10 = setThreadIdAndInfo(*(v1 + 64), sIndexExceptionCallbacks, v1, 0x20000000, add_explicit + 1);
    v109 = v10;
    v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    v107 = v12;
    v108 = HIDWORD(v10);
    v106 = v13;
    *(v11 + 216) = 0;
    v14 = *(v11 + 312);
    v15 = *(v11 + 224);
    if (v15)
    {
      v15(*(v11 + 288));
    }

    if (_setjmp(v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v11 + 312) = v14;
      if ((~*(v11 + 212) & 0xA0000000) == 0)
      {
        v16 = *(v11 + 288);
        if (v16)
        {
          _CIMakeInvalid(v16);
        }
      }

      CIOnThreadCleanUpReset(v106);
      dropThreadId(v109, 1, add_explicit + 1);
      CICleanUpReset(v109, v107);
      goto LABEL_13;
    }

    if (dword_1EBF46AF4 >= 5)
    {
      v93 = *__error();
      v94 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v119 = v7;
        *&v119[4] = 2048;
        *&v119[6] = v6;
        _os_log_impl(&dword_1C278D000, v94, OS_LOG_TYPE_DEFAULT, "delete docId: %d oid: %lld", buf, 0x12u);
      }

      *__error() = v93;
    }

    if ((*(v8 + 8) & 1) == 0)
    {
      bzero(buf, 0x400uLL);
      if ((deleteDocument__COUNT_ & 1) == 0)
      {
        deleteDocument__COUNT_ = 1;
        v18 = *__error();
        v19 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v56 = fcntl(*(v8 + 64), 50, buf);
          if (buf[0])
          {
            v57 = v56 < 0;
          }

          else
          {
            v57 = 1;
          }

          *v110 = 136315906;
          v111 = "deleteDocument";
          v58 = "";
          if (!v57)
          {
            v58 = buf;
          }

          v112 = 1024;
          v113 = 4914;
          v114 = 2080;
          v115 = v58;
          v116 = 2080;
          v117 = v8 + 15208;
          v23 = "%s:%d: trying to delete from invalid index %s/%s";
          goto LABEL_79;
        }

LABEL_27:
        *__error() = v18;
      }

LABEL_28:
      v17 = 0;
LABEL_59:
      v44 = threadData[9 * v109 + 1] + 320 * v108;
      *(v44 + 312) = v14;
      v45 = *(v44 + 232);
      if (v45)
      {
        v45(*(v44 + 288));
      }

      dropThreadId(v109, 0, add_explicit + 1);
      goto LABEL_62;
    }

    if (*(v8 + 15203) == 1)
    {
      bzero(buf, 0x400uLL);
      if ((deleteDocument__COUNT__53 & 1) == 0)
      {
        deleteDocument__COUNT__53 = 1;
        v18 = *__error();
        v19 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = fcntl(*(v8 + 64), 50, buf);
          if (buf[0])
          {
            v21 = v20 < 0;
          }

          else
          {
            v21 = 1;
          }

          *v110 = 136315906;
          v111 = "deleteDocument";
          v22 = "";
          if (!v21)
          {
            v22 = buf;
          }

          v112 = 1024;
          v113 = 4920;
          v114 = 2080;
          v115 = v22;
          v116 = 2080;
          v117 = v8 + 15208;
          v23 = "%s:%d: trying to modify read only index %s/%s";
LABEL_79:
          _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v23, v110, 0x26u);
          goto LABEL_27;
        }

        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v24 = __THREAD_SLOT_KEY;
    if (!__THREAD_SLOT_KEY)
    {
      makeThreadId();
      v24 = __THREAD_SLOT_KEY;
    }

    v25 = pthread_getspecific(v24);
    if (!v25 || (v26 = v25, v25 >= 0x801))
    {
      makeThreadId();
      v26 = pthread_getspecific(__THREAD_SLOT_KEY);
    }

    v27 = v26 - 1;
    HIDWORD(v29) = qos_class_self() - 9;
    LODWORD(v29) = HIDWORD(v29);
    v28 = v29 >> 2;
    if (v28 > 6)
    {
      v30 = 0;
    }

    else
    {
      v30 = dword_1C2BFF8F0[v28];
    }

    pthread_mutex_lock((v8 + 14504));
    if (!*(v8 + 14688) && !*(v8 + 14700) && (*(v8 + 14716) & 1) == 0)
    {
      if (v30 > 5)
      {
LABEL_72:
        *(v8 + 14688) = pthread_self();
        goto LABEL_40;
      }

      v53 = v30 - 6;
      v54 = (v8 + 16 * v30 + 14568);
      while (!*v54)
      {
        v54 += 2;
        v55 = __CFADD__(v53++, 1);
        if (v55)
        {
          goto LABEL_72;
        }
      }
    }

    db_rwlock_wait(v8 + 14504, v30, 2);
LABEL_40:
    pthread_mutex_unlock((v8 + 14504));
    v31 = v27;
    CIOnThreadCleanUpPush(v27, si_rwlock_wrunlock_3589, v8 + 14504);
    v32 = v7 - *(v8 + 80);
    v33 = v32;
    if (v32 && v32 >= *(v8 + 68))
    {
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v59 = *(v8 + 68);
        *buf = 136315906;
        *v119 = "deleteDocument";
        *&v119[8] = 1024;
        *&v119[10] = 4934;
        *&v119[14] = 2048;
        *&v119[16] = v33;
        *&v119[24] = 1024;
        *&v119[26] = v59;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: deleteDocument error - docId (%lld) >= max (%d) ", buf, 0x22u);
      }

      *__error() = v34;
      v31 = v27;
    }

    if (!v33 || *(v8 + 68) <= v33)
    {
      goto LABEL_57;
    }

    v36 = *(*(v8 + 14408) + 8 * v33);
    if (v36 != v6)
    {
      if (v36)
      {
        v40 = *(*(v8 + 14408) + 8 * v33);
        v38 = *__error();
        v41 = _SILogForLogForCategory(0);
        v42 = gSILogLevels[0] < 3;
        if (os_log_type_enabled(v41, (gSILogLevels[0] < 3)))
        {
          *buf = 134218496;
          *v119 = v6;
          *&v119[8] = 2048;
          *&v119[10] = v33;
          *&v119[18] = 2048;
          *&v119[20] = v40;
          _os_log_impl(&dword_1C278D000, v41, v42, "*warn* deleteDocument error: mismatch oid: %ld docId: %ld idxOid: %ld", buf, 0x20u);
        }

        goto LABEL_55;
      }

LABEL_57:
      LOBYTE(v43) = 0;
      goto LABEL_58;
    }

    v37 = v8 + 12288;
    if (*(v8 + 15203) == 1)
    {
      if ((indexMarkDirtyForce__COUNT_ & 1) == 0)
      {
        indexMarkDirtyForce__COUNT_ = 1;
        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *v119 = "indexMarkDirtyForce";
          *&v119[8] = 1024;
          *&v119[10] = 2650;
          *&v119[14] = 2080;
          *&v119[16] = v8 + 15208;
          _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: trying to modify read only index %s", buf, 0x1Cu);
        }

LABEL_55:
        *__error() = v38;
LABEL_56:
        LOBYTE(v43) = 0;
        v31 = v27;
LABEL_58:
        v17 = v43;
        CIOnThreadCleanUpPop(v31);
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    v48 = v8 + 12288;
    if (*(v8 + 8) != 1 || (v49 = atomic_load((v8 + 32))) == 0)
    {
LABEL_96:
      if (*(v8 + 45) == 1)
      {
        v67 = *(v8 + 14432);
        if ((*(v67 + v33) & 0xDF) == 0)
        {
          LOBYTE(v43) = 0;
          v70 = *(v8 + 14432);
          v71 = v33;
          v31 = v27;
LABEL_105:
          *(v70 + v71) = 0;
          v75 = *(v8 + 14440);
          if (v75)
          {
            *(v75 + v71 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v71 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
          }

          goto LABEL_117;
        }

        LOBYTE(v43) = *(v67 + v33) & 0xDF;
      }

      else
      {
        v68 = v33 / 5uLL;
        v69 = *(v8 + 14432);
        if (((*(v69 + 4 * v68) >> (6 * (v33 % 5))) & 0x1F) == 0)
        {
          LOBYTE(v43) = 0;
          v74 = *(v8 + 14432);
          v72 = v33 / 5uLL;
          v73 = 6 * (v33 % 5);
          v31 = v27;
          goto LABEL_108;
        }

        v43 = (*(v69 + 4 * v68) >> (6 * (v33 % 5))) & 0x1F;
      }

      v31 = v27;
      atomic_fetch_add((v8 + 16), 1u);
      v70 = *(v8 + 14432);
      if (*(v8 + 45))
      {
        v71 = v33;
        goto LABEL_105;
      }

      v72 = v33 / 5uLL;
      v73 = 6 * (v33 % 5);
      v74 = *(v8 + 14432);
LABEL_108:
      v76 = *(v74 + 4 * v72) & ~(63 << v73);
      if (*(v8 + 14440))
      {
        v77 = MEMORY[0x1E69E9AC8];
        v78 = v72 / (8 * *MEMORY[0x1E69E9AC8]);
        v79 = (v72 / *MEMORY[0x1E69E9AC8]) & 7;
        *(*(v8 + 14440) + v78) |= 1 << v79;
        if (!*(*(v8 + 14440) + v78))
        {
          v102 = __si_assert_copy_extra_3233(0, -1);
          v99 = v102;
          v100 = "";
          if (v102)
          {
            v100 = v102;
          }

          v101 = "(cindex)->groupMap[gslot]";
          goto LABEL_152;
        }

        v80 = *v77;
        v81 = v79 | (8 * v78);
        if (v80 * v81 > v72)
        {
          v103 = __si_assert_copy_extra_3233(0, -1);
          v99 = v103;
          v100 = "";
          if (v103)
          {
            v100 = v103;
          }

          v101 = "vm_page_size*(gslot*8+bslot) <=slot";
          goto LABEL_152;
        }

        if (v80 * (v81 + 1) <= v72)
        {
          v104 = __si_assert_copy_extra_3233(0, -1);
          v99 = v104;
          v100 = "";
          if (v104)
          {
            v100 = v104;
          }

          v101 = "vm_page_size*(gslot*8+bslot+1) >slot";
          goto LABEL_152;
        }

        v82 = *(v8 + 14432);
        v83 = *(v8 + 45);
        *(v82 + 4 * v72) = v76;
        if (v83)
        {
          v84 = *(v82 + v33);
LABEL_116:
          if (!v84)
          {
LABEL_117:
            if ((*(v37 + 2915) & 1) == 0 && (*(v48 + 2912) & 6) == 0 && *(v8 + 68) >= 0x2711u)
            {
              v85 = atomic_load((v8 + 16));
              if (*(v8 + 68) < 4 * v85)
              {
                *(v48 + 2912) |= 2u;
              }
            }

            goto LABEL_58;
          }

          v98 = __si_assert_copy_extra_3233(0, -1);
          v99 = v98;
          v100 = "";
          if (v98)
          {
            v100 = v98;
          }

          v101 = "((cindex)->coreSpotlight?({ ((uint8_t *)(cindex)->groups)[(payloadIndex)]; }):({ uint32_t __where=(uint32_t)(payloadIndex); uint32_t __slot = __where/5; uint32_t __shift= (__where-(__slot*5))*6; uint32_t __word = ((uint32_t)((cindex)->groups[__slot])); (__word >> __shift) & 0x3F ; }))==(inval&0x3F)";
LABEL_152:
          __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 4951, v101, v100);
          free(v99);
          if (__valid_fs(-1))
          {
            v105 = 2989;
          }

          else
          {
            v105 = 3072;
          }

          *v105 = -559038737;
          abort();
        }
      }

      else
      {
        *(v74 + 4 * v72) = v76;
      }

      v84 = (v76 >> v73) & 0x3F;
      goto LABEL_116;
    }

    HIDWORD(v51) = qos_class_self() - 9;
    LODWORD(v51) = HIDWORD(v51);
    v50 = v51 >> 2;
    if (v50 > 6)
    {
      v52 = 0;
    }

    else
    {
      v52 = dword_1C2BFF8F0[v50];
    }

    pthread_mutex_lock((v8 + 14720));
    if (!*(v8 + 14904) && !*(v8 + 14916) && (*(v8 + 14932) & 1) == 0)
    {
      if (v52 > 5)
      {
LABEL_136:
        *(v8 + 14904) = pthread_self();
        goto LABEL_85;
      }

      v95 = v52 - 6;
      v96 = (v8 + 16 * v52 + 14784);
      while (!*v96)
      {
        v96 += 2;
        v55 = __CFADD__(v95++, 1);
        if (v55)
        {
          goto LABEL_136;
        }
      }
    }

    db_rwlock_wait(v8 + 14720, v52, 2);
LABEL_85:
    pthread_mutex_unlock((v8 + 14720));
    v60 = atomic_load((v8 + 32));
    if (v60 == -804450864 || (v61 = atomic_load((v8 + 15192))) != 0 && (v5 & 1) == 0)
    {
      v62 = *__error();
      v63 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v97 = atomic_load((v8 + 15192));
        *buf = 136315906;
        *v119 = "indexMarkDirtyForce";
        *&v119[8] = 1024;
        *&v119[10] = 2663;
        *&v119[14] = 1024;
        *&v119[16] = v60;
        *&v119[20] = 1024;
        *&v119[22] = v97;
        _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: indexMarkDirty failed - state:%x closing:%d", buf, 0x1Eu);
      }

      *__error() = v62;
    }

    else
    {
      v86 = *(v8 + 15184);
      if (!v86 || !(*(v86 + 16))())
      {
        bzero(buf, 0x1000uLL);
        atomic_store(0, (v8 + 32));
        v87 = *(v8 + 4);
        v88 = atomic_load((v8 + 32));
        *buf = v87;
        *v119 = v88;
        v89 = atomic_load((v8 + 36));
        v90 = *(v8 + 48);
        *&v119[4] = v89;
        *&v119[8] = v90;
        pthread_mutex_lock((v8 + 14720));
        v48 = v8 + 12288;
        *(v8 + 14932) = 1;
        db_rwlock_wakeup(v8 + 14720, 1, 1);
        pthread_mutex_unlock((v8 + 14720));
        v91 = *(v8 + 14480);
        if (v91)
        {
          v92 = fd_pwrite(*(v8 + 14480), buf, 0x10uLL, 0);
          if (v92 == 16)
          {
            fd_sync(v91, 1);
          }

          else if (v92 == -1)
          {
            __error();
          }
        }

        v64 = 1;
LABEL_92:
        pthread_mutex_lock((v8 + 14720));
        *(v8 + 14924) = 0;
        v65 = *(v8 + 14896);
        *(v8 + 14896) = 0u;
        v66 = *(v8 + 14916) != 0;
        *(v48 + 2644) = 0;
        db_rwlock_wakeup(v8 + 14720, v66, 0);
        pthread_mutex_unlock((v8 + 14720));
        if (v65)
        {
          pthread_override_qos_class_end_np(v65);
          v37 = v8 + 12288;
          if ((v64 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v37 = v8 + 12288;
          if (!v64)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_96;
      }
    }

    v64 = 0;
    v48 = v8 + 12288;
    goto LABEL_92;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
LABEL_13:
    v17 = 0;
    goto LABEL_62;
  }

  v17 = 0;
  *buf = 0;
  _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
LABEL_62:
  v46 = *MEMORY[0x1E69E9840];
  return v17;
}

void si_delete_journal_add_cs_deleted(uint64_t a1, const __CFDictionary *a2, CFArrayRef theArray)
{
  v46 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  v7 = *(a1 + 32);
  if (v7 == -1)
  {
    v30 = __si_assert_copy_extra_661(-1);
    v31 = v30;
    v32 = "";
    if (v30)
    {
      v32 = v30;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4167, "indexFd != -1", v32);
    free(v31);
    if (__valid_fs(-1))
    {
      v33 = 2989;
    }

    else
    {
      v33 = 3072;
    }

    *v33 = -559038737;
    abort();
  }

  v8 = Count;
  bzero(__s, 0x400uLL);
  if (fcntl(v7, 50, __s) < 0 || !__s[0] || (v9 = strlen(__s), snprintf(&__s[v9], 1024 - v9, "/%s", "skg_"), v10 = open(__s, 0), v10 < 0))
  {
    if (v8)
    {
      TypeID = CFDictionaryGetTypeID();
      v12 = CFStringGetTypeID();
      if (v8 < 1)
      {
LABEL_14:
        v18 = CFStringGetTypeID();
        if (v18 == CFGetTypeID(a2))
        {
          v19 = *MEMORY[0x1E695E480];
          Mutable = _MDPlistContainerCreateMutable();
          _MDPlistContainerBeginContainer();
          _MDPlistContainerBeginArray();
          _MDPlistContainerAddObject();
          _MDPlistContainerAddObject();
          _MDPlistContainerEndArray();
          _MDPlistContainerEndContainer();
          pthread_mutex_lock((a1 + 1632));
          v21 = getDeleteJournalFd(a1);
          if (v21)
          {
            v22 = *(a1 + 2120);
            if (v22 || (v23 = *(a1 + 60), v22 = si_mobile_journal_create(a1), (*(a1 + 2120) = v22) != 0))
            {
              atomic_fetch_add(v22, 1u);
            }

            add_explicit = atomic_fetch_add_explicit((a1 + 2144), 1uLL, memory_order_relaxed);
            v34 = 0;
            v35 = 0;
            mobile_journal_plist(v21, add_explicit, 0x8000, Mutable, &v35, &v34);
          }

          else
          {
            v22 = 0;
          }

          pthread_mutex_unlock((a1 + 1632));
          CFRelease(Mutable);
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            _si_mobile_journal_finalize(v22, 1);
          }
        }

        else
        {
          v27 = *__error();
          v28 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *__s = 136316162;
            v37 = "mobile_delete_journal";
            v38 = 1024;
            v39 = 20494;
            v40 = 2048;
            v41 = a2;
            v42 = 1024;
            v43 = 0x8000;
            v44 = 2112;
            v45 = theArray;
            _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: missing bundle %p 0x%x %@", __s, 0x2Cu);
          }

          *__error() = v27;
        }
      }

      else
      {
        v13 = v12;
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
          v16 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            break;
          }

          if (CFGetTypeID(ValueAtIndex) != TypeID)
          {
            break;
          }

          Value = CFDictionaryGetValue(v16, @"_kMDItemExternalID");
          if (!Value || CFGetTypeID(Value) != v13)
          {
            break;
          }

          if (v8 == ++v14)
          {
            goto LABEL_14;
          }
        }

        v25 = *__error();
        v26 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *__s = 136315650;
          v37 = "si_delete_journal_add_cs_deleted";
          v38 = 1024;
          v39 = 21036;
          v40 = 2112;
          v41 = v16;
          _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: bad object %@", __s, 0x1Cu);
        }

        *__error() = v25;
      }
    }
  }

  else
  {
    close(v10);
  }

  v29 = *MEMORY[0x1E69E9840];
}

_DWORD *createFetchInfo(int a1, uint64_t a2)
{
  v4 = malloc_type_zone_malloc(queryZone, 40 * a1 + 8, 0xA4971684uLL);
  if (!v4)
  {
    _log_fault_for_malloc_failure();
  }

  if (a1 >= 1)
  {
    v5 = a1;
    v6 = v4 + 8;
    do
    {
      pqinit_rankAndFetchInfo_t(v6 - 3, a2);
      *v6 = 0;
      v6[1] = 0;
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  *v4 = a1;
  return v4;
}

void pqinit_rankAndFetchInfo_t(void *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[2] = 1;
  if (a2)
  {
    v3 = malloc_type_zone_malloc(queryZone, 160 * a2 + 320, 0xA4971684uLL);
    if (!v3)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v3;
    v3[6] = xmmword_1C2BFF380;
    v3[7] = unk_1C2BFF390;
    v3[8] = xmmword_1C2BFF3A0;
    v3[9] = unk_1C2BFF3B0;
    v3[2] = xmmword_1C2BFF340;
    v3[3] = unk_1C2BFF350;
    v3[4] = xmmword_1C2BFF360;
    v3[5] = unk_1C2BFF370;
    *v3 = ZERO_FETCHINFO;
    v3[1] = *algn_1C2BFF330;
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t RLEOIDArrayContainsOid_locked(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 384))
  {
    return 0;
  }

  v2 = *(a1 + 224);
  if (v2)
  {
    if ((*(a1 + 216) ^ a2) >> (-4 * v2))
    {
      return 0;
    }
  }

  result = *(a1 + 8 * ((a2 >> (60 - 4 * v2)) & 0xF) + 256);
  if (result)
  {
    v4 = v2 + 2;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFFELL) + 8 * ((a2 >> (64 - 4 * v4++)) & 0xF));
    }

    while ((result & 1) != 0);
  }

  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void executeSearchCtx2(double *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v21) = qos_class_self();
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "QOS executeSearchCtx2: %d", buf, 8u);
    }

    *__error() = v7;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    v4 = *__error();
    v5 = _SILogForLogForCategory(1);
    v6 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v5, v6, "Search canceled while waiting on scheduler\n", buf, 2u);
    }

    *__error() = v4;
    si_querypipe_remove_process(*(*a1 + 104), *(*a1 + 8), 0, 1);
    (*(**a1 + 48))(*a1, 1);
    search_ctx_destroy(a1, a2);
    goto LABEL_11;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = Current - a1[1];
  *(*(*a1 + 8) + 448) = *(*(*a1 + 8) + 448) + v10;
  if (dword_1EBF46AD0 >= 5)
  {
    v19 = v10;
    v12 = *__error();
    v13 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = qos_class_self();
      *buf = 134218240;
      v21 = v19;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Search waited %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v12;
  }

  executeSearchContextCracked_2(*a1, a1);
  if (dword_1EBF46AD0 >= 5)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = CFAbsoluteTimeGetCurrent() - Current;
      v18 = qos_class_self();
      *buf = 134218240;
      v21 = v17;
      v22 = 1024;
      v23 = v18;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Search was active for %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v15;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::ContainsKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFFFFFF;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = a1 + 12 + 4 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 12 + 4 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        if (v8 < v6)
        {
          goto LABEL_15;
        }

        return 0;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 2;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

LABEL_15:
  v12 = *v4;
  if (v3 != v12)
  {
    v14 = v4 + 1;
    do
    {
      if ((v12 & 0x80000000) != 0)
      {
        v16 = *(v14 - 2);
        v17 = v16 + (v12 & 0x7FFFFFFF);
        if (v3 >= v16 && v3 <= v17)
        {
          return 1;
        }

        if (v14 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v14 >= v6)
        {
          return result;
        }
      }

      v15 = *v14++;
      v12 = v15;
    }

    while (v3 != v15);
  }

  return 1;
}

BOOL db_compare_val(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v67 = *MEMORY[0x1E69E9840];
  if (((*(v2 + 160) >> v1) & 1) == 0)
  {
    result = (*(v2 + 24) - 5) < 2;
    goto LABEL_105;
  }

  v8 = (v2 + 8 * v1 + 168);
  if (v1 <= 6)
  {
    if (v1 > 3)
    {
      if (v1 != 4)
      {
        v14 = *v3 - *v8;
        v15 = 4;
        goto LABEL_84;
      }

      v9 = *v3;
      v10 = *v8;
      goto LABEL_47;
    }

    switch(v1)
    {
      case 1:
        v28 = *v3;
        v29 = *v8;
        break;
      case 2:
        v28 = *v3;
        v29 = *v8;
        break;
      case 3:
        v9 = *v3;
        v10 = *v8;
LABEL_47:
        v14 = v9 - v10;
        v15 = 2;
        goto LABEL_84;
      default:
        goto LABEL_50;
    }

    v14 = v28 - v29;
    v15 = 1;
    goto LABEL_84;
  }

  if (v1 <= 9)
  {
    if (v1 == 7 || v1 == 8)
    {
      if ((*v3 - *v8) < 0)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      if (*v3 == *v8)
      {
        v14 = 0;
      }

      else
      {
        v14 = v25;
      }

      v15 = 8;
    }

    else
    {
      v12 = *v3 - *v8;
      if (v12 >= 0.0)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v12 == 0.0)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      v15 = 4;
    }

    goto LABEL_84;
  }

  if (v1 != 10 && v1 != 12)
  {
    if (v1 != 11)
    {
LABEL_50:
      v30 = *v4;
      v31 = v4;
      v32 = v2;
      v33 = v3;
      v34 = strlen(*v8);
      if (v30 >= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v30;
      }

      v14 = memcmp(v33, v8, v35);
      v2 = v32;
      v4 = v31;
      v15 = 0;
      goto LABEL_84;
    }

    v16 = v7;
    v17 = v5;
    v18 = v6;
    v19 = v2;
    v56 = v4;
    v20 = v3;
    v21 = strlen(v3);
    v22 = *v8;
    if (!v22)
    {
      v36 = *__error();
      v37 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v50 = *(v19 + 160);
        v51 = *v19;
        if (!*v19)
        {
          v51 = "<NULL>";
        }

        v52 = *(v19 + 72);
        if (!v52)
        {
          v52 = "<NULL>";
        }

        *buf = 136316162;
        v58 = "db_compare_val";
        v59 = 1024;
        v60 = 3379;
        v61 = 1024;
        v62 = v50;
        v63 = 2080;
        v64 = v51;
        v65 = 2080;
        v66 = v52;
        _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: nil str_val converted_bits: 0x%x field: %s string: %s", buf, 0x2Cu);
      }

      v38 = __error();
      v14 = 0;
      *v38 = v36;
      goto LABEL_83;
    }

    v23 = *(v19 + 32);
    v24 = (v23 >> 4) & 3;
    if ((v23 & 0x800000) != 0)
    {
      v24 = (v23 >> 4) & 3 | ((*(v19 + 28) & 0x7F) << 8) | 0x10;
    }

    if ((v23 & 2) != 0)
    {
      if (*(v19 + 104))
      {
        goto LABEL_60;
      }

      os_unfair_lock_lock(&s_search_reg_ex_unfair_lock);
      v39 = v19;
      if (!*(v19 + 104))
      {
        v40 = *(v19 + 32) >> 3;
        v41 = icu_regex_create();
        v39 = v19;
        __dmb(0xBu);
        *(v19 + 104) = v41;
      }

      v42 = v39;
      os_unfair_lock_unlock(&s_search_reg_ex_unfair_lock);
      if (*(v42 + 104))
      {
LABEL_60:
        icu_regex_find();
        v43 = 0;
LABEL_82:
        v14 = v43 != 1;
LABEL_83:
        v4 = v56;
        v2 = v19;
        v15 = v21 + 1;
        goto LABEL_84;
      }
    }

    else
    {
      os_unfair_lock_lock(&s_search_ctx_unfair_lock);
      if (*(v19 + 104))
      {
        goto LABEL_65;
      }

      if ((*(v19 + 32) & 0x800000) != 0)
      {
        v44 = *(v19 + 28);
      }

      if (v16)
      {
        v45 = *v16;
      }

      v46 = *(v19 + 60);
      v47 = icu_search_context_create_with_wildcard_limit();
      *(v19 + 104) = v47;
      if (v47)
      {
LABEL_65:
        v48 = icu_ctx_retain();
        os_unfair_lock_unlock(&s_search_ctx_unfair_lock);
        if (v48)
        {
          if (icu_search_match())
          {
            v43 = 1;
          }

          else
          {
            if (!checkTranscriptions(v22, v20))
            {
              goto LABEL_80;
            }

            bzero(buf, 0x1000uLL);
            if (v16)
            {
              v49 = *v16;
            }

            if (CIStringTokenizerResolveTranscriptions(v20))
            {
              v43 = icu_search_match();
            }

            else
            {
LABEL_80:
              v43 = 0;
            }
          }

          icu_ctx_release();
          goto LABEL_82;
        }
      }

      else
      {
        os_unfair_lock_unlock(&s_search_ctx_unfair_lock);
      }
    }

    v43 = matche(v22, v20, v24 | (v23 >> 4) & 4, v17, v18);
    goto LABEL_82;
  }

  v26 = *v3 - *v8;
  if (v26 >= 0.0)
  {
    v27 = 1;
  }

  else
  {
    v27 = -1;
  }

  if (v26 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v27;
  }

  v15 = 8;
LABEL_84:
  v53 = *(v2 + 24);
  if (v53 == 1)
  {
    if (v14)
    {
LABEL_86:
      result = v53 == 4 && v14 >= 0;
      goto LABEL_103;
    }
  }

  else if ((v53 != 2 || v14) && ((v53 - 5) > 1 || !v14) && (v53 != 7 || (v14 & 0x80000000) == 0) && (v53 != 3 || v14 >= 1) && (v53 != 8 || v14 <= 0))
  {
    goto LABEL_86;
  }

  result = 1;
LABEL_103:
  if (*v4 == -1)
  {
    *v4 = v15;
  }

LABEL_105:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t checkTranscriptions(_BYTE *a1, _BYTE *a2)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  v4 = a2;
  if (!a2)
  {
    return result;
  }

  result = *a1;
  if (!*a1)
  {
    return result;
  }

  v5 = MEMORY[0x1E69E9830];
  v6 = a1;
  while (1)
  {
    if ((result & 0x80) == 0)
    {
LABEL_13:
      if ((*(v5 + 4 * result + 60) & 0x100) != 0)
      {
        break;
      }

      goto LABEL_14;
    }

    v7 = result >> 4;
    v8 = ~v7;
    v9 = utf8_byte_length(unsigned char)::utf8_len_table[v7];
    v10 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v9] & result);
    if ((v8 & 0xC) != 0)
    {
      LODWORD(result) = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v9] & result);
      if (v10 <= 0x7F)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v9 <= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = v9;
      }

      v11 = v9 - 1;
      v12 = v6 + 1;
      do
      {
        v13 = *v12++;
        LODWORD(result) = v13 & 0x3F | (v10 << 6);
        v10 = result;
        --v11;
      }

      while (v11);
      if (result <= 0x7F)
      {
        goto LABEL_13;
      }
    }

    if (__maskrune(result, 0x100uLL))
    {
      break;
    }

LABEL_14:
    v6 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v6 >> 4];
    LODWORD(result) = *v6;
    if (!*v6)
    {
      goto LABEL_33;
    }
  }

  v14 = *v4;
  if (!*v4)
  {
LABEL_33:
    v24 = *a1;
    if (!*a1)
    {
      return 0;
    }

    while (1)
    {
      v25 = v24;
      if ((v24 & 0x80) != 0)
      {
        v26 = v24 >> 4;
        v27 = ~v26;
        v28 = utf8_byte_length(unsigned char)::utf8_len_table[v26];
        v29 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v28] & v24;
        if ((v27 & 0xC) != 0)
        {
          v25 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v28] & v24;
        }

        else
        {
          if (v28 <= 2)
          {
            v28 = 2;
          }

          else
          {
            v28 = v28;
          }

          v30 = v28 - 1;
          v31 = a1 + 1;
          do
          {
            v32 = *v31++;
            v25 = v32 & 0x3F | (v29 << 6);
            v29 = v25;
            --v30;
          }

          while (v30);
        }
      }

      if ((v25 - 12352) <= 0x5F)
      {
        break;
      }

      a1 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[v24 >> 4];
      v24 = *a1;
      if (!*a1)
      {
        return 0;
      }
    }

    v33 = *v4;
    if (!*v4)
    {
      return 0;
    }

    result = 1;
    while (1)
    {
      v34 = v33 >> 4;
      if ((v33 & 0x80) != 0 && ((v33 >> 4) & 0xC) == 0xC)
      {
        v35 = utf8_byte_length(unsigned char)::utf8_len_table[v34];
        v36 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v35] & v33;
        v37 = v35 <= 2 ? 2 : utf8_byte_length(unsigned char)::utf8_len_table[v34];
        v38 = v37 - 1;
        v39 = v4 + 1;
        do
        {
          v40 = v36;
          v41 = *v39++;
          v36 = v41 & 0x3F | (v36 << 6);
          --v38;
        }

        while (v38);
        if ((v40 << 6) >> 8 >= 0x11 && ((v40 & 0x3FFFFFC) == 0x44 || ((v40 << 6) - 11904) >> 7 < 0x197 || (v36 - 65376) < 0x50))
        {
          break;
        }
      }

      v4 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[v34];
      v33 = *v4;
      if (!*v4)
      {
        return 0;
      }
    }

    return result;
  }

  v15 = v4;
  result = 1;
  while (1)
  {
    v16 = v14 >> 4;
    if ((v14 & 0x80) != 0 && ((v14 >> 4) & 0xC) == 0xC)
    {
      v17 = utf8_byte_length(unsigned char)::utf8_len_table[v16];
      v18 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v17] & v14;
      v19 = v17 <= 2 ? 2 : utf8_byte_length(unsigned char)::utf8_len_table[v16];
      v20 = v19 - 1;
      v21 = v15 + 1;
      do
      {
        v22 = v18;
        v23 = *v21++;
        v18 = v23 & 0x3F | (v18 << 6);
        --v20;
      }

      while (v20);
      if ((v22 << 6) >> 8 >= 0x11 && ((v22 & 0x3FFFFFC) == 0x44 || ((v22 << 6) - 11904) >> 7 < 0x197 || (v18 - 65376) < 0x50))
      {
        return result;
      }
    }

    v15 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[v16];
    v14 = *v15;
    if (!*v15)
    {
      goto LABEL_33;
    }
  }
}

uint64_t SIUINT32SetCreate()
{
  if (!__kSIUINT32SetTypeID)
  {
    __kSIUINT32SetTypeID = _CFRuntimeRegisterClass();
  }

  return _CFRuntimeCreateInstance();
}

double __SIUINT32SetInit(const void *a1)
{
  v2 = CFGetAllocator(a1);
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = v2;
  v3 = MEMORY[0x1C691E420]();
  bzero(v3, 0x1F88uLL);
  *(a1 + 3) = v3;
  result = 0.0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 176) = 1;
  return result;
}

uint64_t SIValueSet<unsigned int>::SIValueSetInsert(unsigned int *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = 4 * v4;
    v6 = *a1;
    if ((*a1 ^ a2) >> (-4 * v4))
    {
      v7 = a1 + 8;
      do
      {
        v17 = a1[1];
        v18 = v17 - 1;
        a1[1] = v17 - 1;
        if (v17 <= 0)
        {
          v26 = __si_assert_copy_extra_332();
          v27 = v26;
          v28 = "";
          if (v26)
          {
            v28 = v26;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1650, "s->sharedDepth>=0", v28);
          free(v27);
          if (__valid_fs(-1))
          {
            v29 = 2989;
          }

          else
          {
            v29 = 3072;
          }

          *v29 = -559038737;
          abort();
        }

        v19 = 32 - 4 * v17;
        if (v18)
        {
          v20 = -1 << (-4 * v18);
        }

        else
        {
          v20 = 0;
        }

        v21 = (v6 >> (v19 & 0xFC)) & 0xF;
        *a1 = v6 & v20;
        v9 = *(a1 + 2);
        if (v9 == 63 || (v8 = *(a1 + 1)) == 0)
        {
          v8 = MEMORY[0x1C691E420](*(a1 + 3), 8072, 0xA00408091C53FLL, 0);
          *v8 = *(a1 + 1);
          bzero(v8 + 1, 0x1F80uLL);
          v9 = 0;
          *(a1 + 1) = v8;
        }

        v10 = &v8[16 * v9];
        *(a1 + 2) = v9 + 1;
        v11 = *v7;
        v12 = *(a1 + 3);
        v13 = *(a1 + 4);
        *(v10 + 7) = *(a1 + 5);
        *(v10 + 5) = v13;
        *(v10 + 3) = v12;
        *(v10 + 1) = v11;
        v14 = *(a1 + 6);
        v15 = *(a1 + 7);
        v16 = *(a1 + 8);
        *(v10 + 15) = *(a1 + 9);
        *(v10 + 13) = v16;
        *(v10 + 11) = v15;
        *(v10 + 9) = v14;
        *(a1 + 4) = 0u;
        *(a1 + 5) = 0u;
        *(a1 + 6) = 0u;
        *(a1 + 7) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 9) = 0u;
        *v7 = 0u;
        *(a1 + 3) = 0u;
        *(v7 + v21) = (v10 + 1) | 1;
        v6 = *a1;
      }

      while (*a1 != (v20 & a2));
      v4 = a1[1];
      v5 = 4 * v4;
    }

    if ((v5 - 29) <= 0xFFFFFFDE)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1670, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", v24);
      free(v23);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  else if (*(a1 + 160) == 1)
  {
    v4 = 4;
    *a1 = a2 & 0xFFFF0000;
    a1[1] = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 160) = 0;

  return SIValueSet<unsigned int>::_SIValueSetInnerInsert((a1 + 8), a2, v4, (a1 + 2));
}

uint64_t SIValueSet<unsigned int>::_SIValueSetInnerInsert(unint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = 28 - 4 * a3;
  v6 = 28 - 4 * a3;
  v7 = (a2 >> v6) & 0xF;
  v8 = *(a1 + 8 * v7);
  if (v8)
  {
    do
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      v5 = 24 - 4 * a3;
      v6 = 24 - 4 * a3;
      v7 = (a2 >> v6) & 0xF;
      v8 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 8 * v7);
      ++a3;
    }

    while ((v8 & 1) != 0);
  }

  else
  {
    v9 = a1;
  }

  if (v5 < 13)
  {
    if (!v8)
    {
      v12 = a2;
      v13 = MEMORY[0x1C691E420](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
      LODWORD(a2) = v12;
      v8 = v13;
      *v13 = &unk_1F427B238;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *(v13 + 56) = 0u;
      *(v13 + 72) = 0u;
      *(v13 + 88) = 0u;
      *(v13 + 104) = 0u;
      *(v13 + 120) = 0u;
      *(v13 + 136) = 0u;
      *(v13 + 152) = 0u;
      *(v13 + 168) = 0u;
      *(v13 + 184) = 0u;
      *(v13 + 200) = 0u;
      *(v13 + 216) = 0u;
      *(v13 + 232) = 0u;
      *(v13 + 248) = 0u;
      *(v13 + 8) = 0u;
      *(v13 + 264) = 0u;
      *(v13 + 280) = 0u;
      *(v13 + 296) = 0u;
      *(v13 + 312) = 0u;
      *(v13 + 328) = 0u;
      *(v13 + 344) = 0u;
      *(v13 + 360) = 0u;
      *(v13 + 376) = 0u;
      *(v13 + 392) = 0u;
      *(v13 + 408) = 0u;
      *(v13 + 424) = 0u;
      *(v13 + 440) = 0u;
      *(v13 + 456) = 0u;
      *(v13 + 472) = 0u;
      *(v13 + 488) = 0u;
      *(v13 + 504) = 0u;
      *(v9 + 8 * v7) = v13;
    }

    v14 = 1 << (a2 & ~(-1 << v6));
    v15 = *(v8 + 8 + 8 * ((a2 & ~(-1 << v6)) >> 6));
    if ((v15 & v14) != 0)
    {
      result = 0;
    }

    else
    {
      *(v8 + 8 + 8 * (((a2 & ~(-1 << v6)) << 16) >> 22)) = v15 | v14;
      result = 1;
    }

    goto LABEL_87;
  }

  if (v8)
  {
    v10 = a3;
    v11 = *v8;
  }

  else
  {
    v17 = a2;
    v10 = a3;
    if (v5 < 0x20u)
    {
      v18 = *(a4 + 16);
      if (v5 < 0x10u)
      {
        v8 = MEMORY[0x1C691E420](v18, 136, 0x1081040C0A9C235, 0);
        v11 = &unk_1F427B198;
        *v8 = &unk_1F427B198;
        *(v8 + 8) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0u;
        *(v8 + 120) = 0u;
      }

      else
      {
        v8 = MEMORY[0x1C691E420](v18, 264, 0x10810409D866994, 0);
        v11 = &unk_1F427B0F8;
        *v8 = &unk_1F427B0F8;
        *(v8 + 8) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0u;
        *(v8 + 120) = 0u;
        *(v8 + 136) = 0u;
        *(v8 + 152) = 0u;
        *(v8 + 168) = 0u;
        *(v8 + 184) = 0u;
        *(v8 + 200) = 0u;
        *(v8 + 216) = 0u;
        *(v8 + 232) = 0u;
        *(v8 + 248) = 0u;
      }
    }

    else
    {
      v8 = MEMORY[0x1C691E420](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
      v11 = &unk_1F427B058;
      *v8 = &unk_1F427B058;
      *(v8 + 24) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 168) = 0u;
      *(v8 + 184) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 216) = 0u;
      *(v8 + 232) = 0u;
      *(v8 + 248) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 264) = 0u;
      *(v8 + 280) = 0u;
      *(v8 + 296) = 0u;
      *(v8 + 312) = 0u;
      *(v8 + 328) = 0u;
      *(v8 + 344) = 0u;
      *(v8 + 360) = 0u;
      *(v8 + 376) = 0u;
      *(v8 + 392) = 0u;
      *(v8 + 408) = 0u;
      *(v8 + 424) = 0u;
      *(v8 + 440) = 0u;
      *(v8 + 456) = 0u;
      *(v8 + 472) = 0u;
      *(v8 + 488) = 0u;
      *(v8 + 504) = 0u;
    }

    *(v9 + 8 * v7) = v8;
    a2 = v17;
  }

  v56 = (*v11)(v8, a2, ~(-1 << v6));
  if ((*(*v8 + 56))(v8) < 0x3E)
  {
    goto LABEL_86;
  }

  v19 = *(a4 + 8);
  if (v19 == 63 || (v20 = *a4) == 0)
  {
    v20 = MEMORY[0x1C691E420](*(a4 + 16), 8072, 0xA00408091C53FLL, 0);
    *v20 = *a4;
    bzero(v20 + 1, 0x1F80uLL);
    v19 = 0;
    *a4 = v20;
  }

  *(a4 + 8) = v19 + 1;
  v21 = &v20[16 * v19];
  *(v21 + 1) = 0u;
  v22 = (v21 + 1);
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  v23 = (v10 + 1);
  v24 = 32 - 4 * v23;
  *(v22 + 16) = 0u;
  if (v24 >= 32)
  {
    v25 = *(v8 + 8);
    if (v25 > 0x3F)
    {
      goto LABEL_85;
    }

    v55 = &v55;
    LODWORD(v26) = 0;
    v27 = 0;
    v28 = 0;
    v89 = 0uLL;
    v90 = 0uLL;
    v57 = v8 + 16 + 8 * v25;
    v58 = (v8 + 16);
    v87 = 0uLL;
    v88 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    while (1)
    {
      if (v27)
      {
        --v27;
        LODWORD(v26) = v26 + 1;
      }

      else
      {
        if (v58 >= v57)
        {
          if (v28)
          {
            v41 = &v59;
            do
            {
              v42 = *v41++;
              SIValueSet<unsigned int>::_SIValueSetInnerInsert(v22, v42, v23, a4);
              --v28;
            }

            while (v28);
          }

          goto LABEL_85;
        }

        v29 = v58 + 1;
        v26 = *v58;
        if ((v58 + 1) >= v57)
        {
          v27 = 0;
          ++v58;
        }

        else
        {
          v30 = *v29 & 0x7FFFFFFFFFFFFFFFLL;
          v31 = *v29 >= 0;
          if (*v29 < 0)
          {
            v29 = v58 + 2;
          }

          v58 = v29;
          if (v31)
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }
        }
      }

      *(&v59 + v28++) = v26;
      if (v28 == 128)
      {
        for (i = 0; i != 512; i += 4)
        {
          SIValueSet<unsigned int>::_SIValueSetInnerInsert(v22, *(&v59 + i), v23, a4);
        }

        v28 = 0;
      }
    }
  }

  if (v24 >= 16)
  {
    v33 = *(v8 + 8);
    if (v33 > 0x3F)
    {
      goto LABEL_85;
    }

    v55 = &v55;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v89 = 0uLL;
    v90 = 0uLL;
    v57 = v8 + 12 + 4 * v33;
    v58 = (v8 + 12);
    v87 = 0uLL;
    v88 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    while (1)
    {
      if (v35)
      {
        --v35;
        ++v34;
      }

      else
      {
        if (v58 >= v57)
        {
          if (v36)
          {
            v50 = &v59;
            do
            {
              v51 = *v50++;
              SIValueSet<unsigned int>::_SIValueSetInnerInsert(v22, v51, v23, a4);
              --v36;
            }

            while (v36);
          }

          goto LABEL_85;
        }

        v37 = v58 + 1;
        v34 = *v58;
        if (v58 + 4 >= v57)
        {
          v35 = 0;
          v58 = (v58 + 4);
        }

        else
        {
          v38 = *v37;
          v39 = *v37 & 0x7FFFFFFF;
          if (*v37 < 0)
          {
            v37 = (v58 + 1);
          }

          v58 = v37;
          if (v38 < 0)
          {
            v35 = v39;
          }

          else
          {
            v35 = 0;
          }
        }
      }

      *(&v59 + v36++) = v34;
      if (v36 == 128)
      {
        for (j = 0; j != 512; j += 4)
        {
          SIValueSet<unsigned int>::_SIValueSetInnerInsert(v22, *(&v59 + j), v23, a4);
        }

        v36 = 0;
      }
    }
  }

  v43 = *(v8 + 8);
  if (v43 > 0x3F)
  {
    goto LABEL_85;
  }

  v55 = &v55;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v89 = 0uLL;
  v90 = 0uLL;
  v57 = v8 + 10 + 2 * v43;
  v58 = (v8 + 10);
  v87 = 0uLL;
  v88 = 0uLL;
  v85 = 0uLL;
  v86 = 0uLL;
  v83 = 0uLL;
  v84 = 0uLL;
  v81 = 0uLL;
  v82 = 0uLL;
  v79 = 0uLL;
  v80 = 0uLL;
  v77 = 0uLL;
  v78 = 0uLL;
  v75 = 0uLL;
  v76 = 0uLL;
  v73 = 0uLL;
  v74 = 0uLL;
  v71 = 0uLL;
  v72 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v63 = 0uLL;
  v64 = 0uLL;
  v61 = 0uLL;
  v62 = 0uLL;
  v59 = 0uLL;
  v60 = 0uLL;
  while (1)
  {
    if (v45)
    {
      --v45;
      ++v44;
      goto LABEL_74;
    }

    if (v58 >= v57)
    {
      break;
    }

    v47 = v58 + 1;
    v44 = *v58;
    if (v58 + 2 >= v57)
    {
      v45 = 0;
    }

    else
    {
      v48 = *v47;
      if (v48 < 0)
      {
        v45 = v48 & 0x7FFF;
      }

      else
      {
        v45 = 0;
      }

      if (v48 < 0)
      {
        v47 = v58 + 2;
      }
    }

    v58 = v47;
LABEL_74:
    *(&v59 + v46++) = v44;
    if (v46 == 128)
    {
      for (k = 0; k != 512; k += 4)
      {
        SIValueSet<unsigned int>::_SIValueSetInnerInsert(v22, *(&v59 + k), v23, a4);
      }

      v46 = 0;
    }
  }

  if (v46)
  {
    v52 = &v59;
    do
    {
      v53 = *v52++;
      SIValueSet<unsigned int>::_SIValueSetInnerInsert(v22, v53, v23, a4);
      --v46;
    }

    while (v46);
  }

LABEL_85:
  (*(*v8 + 72))(v8);
  CFAllocatorDeallocate(*(a4 + 16), v8);
  *(v9 + 8 * v7) = v22 | 1;
LABEL_86:
  result = v56;
LABEL_87:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ci_donebits_push(os_unfair_lock_s *a1, unint64_t a2, unint64_t a3, uint32_t a4, __n128 *a5)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock(a1);
    if (!a2)
    {
      goto LABEL_39;
    }

    if (a1[1]._os_unfair_lock_opaque <= a4)
    {
      goto LABEL_61;
    }

    v10 = *&a1[8 * a4 + 10]._os_unfair_lock_opaque;
    if (!v10)
    {
      goto LABEL_61;
    }

    v11 = a5[3].n128_f32[3];
    v12 = a5[4].n128_f32[0];
    v13 = a5[4].n128_u8[5];
    if (v13)
    {
      v14 = v10 + 1;
      if (v11 != v12)
      {
        v10 += 2;
      }

      if (v12 == 0.0)
      {
        v10 = v14;
      }
    }

    else
    {
      v16 = v10 + 1;
      if (v11 != v12)
      {
        v10 += 2;
      }

      if (*a5 == 0)
      {
        v10 = v16;
      }
    }

    v17 = *v10;
    if (*v10)
    {
      v18 = v17[2] - 1;
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= a2)
    {
      v19 = &ZERO_RANKING_WRAPPED_BITS;
      if (*v17)
      {
        v19 = (*v17 + 80);
      }

      v20 = *(v19 + 12);
      v21 = *(v19 + 13);
      v22 = a5[3].n128_u32[0];
      v23 = a5[3].n128_f32[1];
      if ((*(v19 + 69) | v13))
      {
        v24 = *(v19 + 15);
        if (v11 != v24 || v23 <= v21 && (v23 == v21 ? (v25 = v22 >= v20) : (v25 = 1), v25))
        {
          v26 = v11 != 100.0;
          if (v11 <= v24)
          {
            v26 = v24 == 100.0;
          }

          if (!v26)
          {
            v27 = v11 == v24 && v12 == *(v19 + 16);
LABEL_55:
            v37 = v27 && v22 == v20;
            if (!v37 || v23 != v21)
            {
LABEL_61:
              v15 = 0;
              if (!a3)
              {
                goto LABEL_98;
              }

              goto LABEL_62;
            }

LABEL_39:
            v15 = 1;
            if (!a3)
            {
              goto LABEL_98;
            }

LABEL_62:
            if (a3 >= a2)
            {
              goto LABEL_98;
            }

            if (a1[1]._os_unfair_lock_opaque > a4)
            {
              v38 = *&a1[8 * a4 + 12]._os_unfair_lock_opaque;
              if (v38)
              {
                v39 = a5[3].n128_f32[3];
                v40 = a5[4].n128_f32[0];
                v41 = a5[4].n128_u8[5];
                if (v41)
                {
                  v42 = v38 + 1;
                  if (v39 != v40)
                  {
                    v38 += 2;
                  }

                  if (v40 == 0.0)
                  {
                    v38 = v42;
                  }
                }

                else
                {
                  v43 = v38 + 1;
                  if (v39 != v40)
                  {
                    v38 += 2;
                  }

                  if (*a5 == 0)
                  {
                    v38 = v43;
                  }
                }

                v44 = *v38;
                if (*v38)
                {
                  v45 = v44[2] - 1;
                }

                else
                {
                  v45 = 0;
                }

                if (v45 < a3)
                {
                  goto LABEL_79;
                }

                if (*v44)
                {
                  v48 = (*v44 + 80);
                }

                else
                {
                  v48 = &ZERO_RANKING_WRAPPED_BITS;
                }

                v50 = *v48;
                v49 = *(v48 + 1);
                v51 = *(v48 + 12);
                v52 = *(v48 + 13);
                v53 = *(v48 + 15);
                v54 = *(v48 + 16);
                v55 = *(v48 + 69);
                v57 = a5->n128_u64[0];
                v56 = a5->n128_u64[1];
                v58 = a5[3].n128_u32[0];
                v59 = a5[3].n128_f32[1];
                if (v41 & 1) != 0 || (v55)
                {
                  if (v53 != v39 || v52 <= v59 && (v52 == v59 ? (v60 = v51 >= v58) : (v60 = 1), v60))
                  {
                    v61 = v53 != 100.0;
                    if (v53 <= v39)
                    {
                      v61 = v39 == 100.0;
                    }

                    if (!v61)
                    {
LABEL_163:
                      if ((v55 | v41))
                      {
                        v110 = v39 == v53 && v40 == v54;
                      }

                      else
                      {
                        v110 = v56 == v49 && v57 == v50;
                      }

                      if (!v110 || v58 != v51 || v59 != v52)
                      {
                        L1RankQueuePop(&v113, v44);
LABEL_79:
                        v46 = a5[3];
                        v115 = a5[2];
                        v116 = v46;
                        v117 = a5[4];
                        v47 = a5[1];
                        v113 = *a5;
                        v114 = v47;
                        L1RankQueuePush(v44, &v113);
                      }

LABEL_98:
                      if (!(a3 | a2))
                      {
LABEL_150:
                        os_unfair_lock_unlock(a1);
                        goto LABEL_151;
                      }

                      os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
                      if (os_unfair_lock_opaque <= a4 || (v63 = a5[3].n128_u32[2]) == 0)
                      {
LABEL_126:
                        if (os_unfair_lock_opaque > a4)
                        {
                          v83 = a5[3].n128_i32[2];
                          if (v83)
                          {
                            v84 = &a1[8 * a4];
                            v87 = *&v84[16]._os_unfair_lock_opaque;
                            v86 = v84 + 16;
                            v85 = v87;
                            if (!v87)
                            {
                              if (a3)
                              {
                                v88 = a3;
                              }

                              else
                              {
                                v88 = a2;
                              }

                              if (v88 >= 0x19)
                              {
                                v89 = 25;
                              }

                              else
                              {
                                v89 = v88;
                              }

                              v85 = container_table_create(v89);
                              *&v86->_os_unfair_lock_opaque = v85;
                              v83 = a5[3].n128_i32[2];
                            }

                            v91 = a5->n128_u64[0];
                            v90 = a5->n128_u64[1];
                            v93 = a5[1].n128_u64[0];
                            v92 = a5[1].n128_u64[1];
                            v95 = a5[2].n128_u64[0];
                            v94 = a5[2].n128_u64[1];
                            v96 = a5[3].n128_u32[0];
                            v97 = a5[3].n128_f32[1];
                            v113 = *(a5 + 60);
                            v114.n128_u32[0] = a5[4].n128_u32[3];
                            if (*v85 && ((v98 = &v85[20 * ((v83 - 1) % *v85)], v99 = v98 + 4, v102 = v98 + 8, v100 = *(v98 + 4), v101 = *(v102 + 1), __PAIR128__(v101, v100) < __PAIR128__(v92, v93)) || (v101 == v92 ? (v103 = v100 == v93) : (v103 = 0), v103 && ((v104 = *(v99 + 13), v104 < v97) || v104 == v97 && v99[12] > v96) || !v99[14])))
                            {
                              *v99 = v91;
                              *(v99 + 1) = v90;
                              *(v99 + 2) = v93;
                              *(v99 + 3) = v92;
                              *(v99 + 4) = v95;
                              *(v99 + 5) = v94;
                              v99[12] = v96;
                              *(v99 + 13) = v97;
                              v99[14] = v83;
                              *(v99 + 15) = v113;
                              v105 = 1;
                              v99[19] = v114.n128_u32[0];
                            }

                            else
                            {
                              v105 = 0;
                            }

                            v15 = v15 | v105;
                          }
                        }

                        goto LABEL_150;
                      }

                      v64 = &a1[8 * a4];
                      v67 = *&v64[14]._os_unfair_lock_opaque;
                      v66 = v64 + 14;
                      v65 = v67;
                      if (!v67)
                      {
                        if (a3)
                        {
                          v68 = a3;
                        }

                        else
                        {
                          v68 = a2;
                        }

                        if (v68 >= 0x19)
                        {
                          v69 = 25;
                        }

                        else
                        {
                          v69 = v68;
                        }

                        v65 = container_table_create(v69);
                        *&v66->_os_unfair_lock_opaque = v65;
                        v63 = a5[3].n128_u32[2];
                      }

                      v71 = a5->n128_u64[0];
                      v70 = a5->n128_u64[1];
                      v72 = a5[2];
                      v113 = a5[1];
                      v114 = v72;
                      v73 = a5[3].n128_u32[0];
                      v74 = a5[3].n128_f32[1];
                      v75 = a5[3].n128_f32[3];
                      v118 = a5[4];
                      if (*v65)
                      {
                        v76 = &v65[20 * ((v63 - 1) % *v65)];
                        v77 = v76 + 1;
                        if (v76[5].n128_u8[5] == 1)
                        {
                          v78 = v76[4].n128_f32[3];
                          v79 = v78 == v75;
                          if (v78 < v75)
                          {
                            goto LABEL_124;
                          }
                        }

                        else
                        {
                          if (*v77 < __PAIR128__(v70, v71))
                          {
LABEL_124:
                            v77->n128_u64[0] = v71;
                            v76[1].n128_u64[1] = v70;
                            v82 = v114;
                            v76[2] = v113;
                            v76[3] = v82;
                            v76[4].n128_u32[0] = v73;
                            v76[4].n128_f32[1] = v74;
                            v76[4].n128_u32[2] = v63;
                            v76[4].n128_f32[3] = v75;
                            v81 = 1;
                            v76[5] = v118;
                            goto LABEL_125;
                          }

                          v79 = v76[1].n128_u64[1] == v70 && v77->n128_u64[0] == v71;
                        }

                        if (v79)
                        {
                          v80 = v76[4].n128_f32[1];
                          if (v80 < v74 || v80 == v74 && v76[4].n128_u32[0] > v73)
                          {
                            goto LABEL_124;
                          }
                        }

                        if (!v76[4].n128_u32[2])
                        {
                          goto LABEL_124;
                        }
                      }

                      v81 = 0;
LABEL_125:
                      v15 = v15 | v81;
                      os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
                      goto LABEL_126;
                    }
                  }
                }

                else if (__PAIR128__(v56, v57) >= __PAIR128__(v49, v50))
                {
                  if (v49 != v56 || v50 != v57)
                  {
                    goto LABEL_163;
                  }

                  if (v52 <= v59 && (v52 != v59 || v51 >= v58))
                  {
                    goto LABEL_163;
                  }
                }
              }
            }

            v15 = 0;
            goto LABEL_98;
          }
        }
      }

      else
      {
        v30 = v19;
        v29 = *v19;
        v28 = *(v30 + 1);
        v32 = a5->n128_u64[0];
        v31 = a5->n128_u64[1];
        if (__PAIR128__(v28, v29) >= *a5)
        {
          v35 = v31 == v28 && v32 == v29;
          if (!v35 || v23 <= v21 && (v23 == v21 ? (v36 = v22 >= v20) : (v36 = 1), v36))
          {
            v27 = v31 == v28 && v32 == v29;
            goto LABEL_55;
          }
        }
      }

      L1RankQueuePop(&v113, v17);
    }

    v33 = a5[3];
    v115 = a5[2];
    v116 = v33;
    v117 = a5[4];
    v34 = a5[1];
    v113 = *a5;
    v114 = v34;
    L1RankQueuePush(v17, &v113);
    goto LABEL_39;
  }

  v15 = 1;
LABEL_151:
  v106 = *MEMORY[0x1E69E9840];
  return v15;
}