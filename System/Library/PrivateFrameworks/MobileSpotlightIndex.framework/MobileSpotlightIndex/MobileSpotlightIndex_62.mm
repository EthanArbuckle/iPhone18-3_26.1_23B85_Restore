void ___ZNK22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke()
{
  v0 = __si_assert_copy_extra_332();
  v1 = v0;
  v2 = "";
  if (v0)
  {
    v2 = v0;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2544, "0", v2);
  free(v1);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE17mergeIndexForTestEP22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeIndexForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10enumeratorEv(a2 + 48);
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
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

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE21mergeUpdateSetForTestEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeUpdateSetForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
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

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfojy(_DWORD *result, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (result[2] != *(a2 + 8) || (v5 = result, *(result + 10) != *(a2 + 20)) || result[3] != *(a2 + 12) || result[4] != *(a2 + 16))
  {
    v17 = __si_assert_copy_extra_332();
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v19);
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

  if (dword_1EBF46B0C >= 5)
  {
    v21 = a2;
    v28 = a4;
    v22 = *__error();
    v23 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = (*(*v5 + 16))(v5);
      v25 = (*(*v5 + 24))(v5);
      v26 = (*(*v21 + 16))(v21);
      v27 = (*(*v21 + 24))(v21);
      __dst[0] = 67109888;
      __dst[1] = v24;
      LOWORD(__dst[2]) = 1024;
      *(&__dst[2] + 2) = v25;
      HIWORD(__dst[3]) = 1024;
      __dst[4] = v26;
      LOWORD(__dst[5]) = 1024;
      *(&__dst[5] + 2) = v27;
      _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "mergeUpdateSet(DocID) %u vectors in %u partitions and %u vectors in %u partitions", __dst, 0x1Au);
    }

    result = __error();
    *result = v22;
    a4 = v28;
    a2 = v21;
  }

  v7 = 0;
  v8 = *(a2 + 80);
  v9 = a4;
  while (v7 != *(v8 + 24))
  {
    v13 = *(_ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7) + 1040);
    v14 = _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    memcpy(__dst, v14, sizeof(__dst));
    v15 = _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    if (*(v15 + 1024))
    {
      if (*(v15 + 1028))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = a5;
    }

    else
    {
      v10 = 0;
      v11 = v9;
    }

    inserted = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((v5 + 12), v13, __dst, 0xFFFFFFFF, 3.4028e38);
    result = vi_memory_postings::push_posting(a3, v10, inserted + 256, v11);
    ++v7;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfoP17TermIdContainer_s(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v15 = v7;
      v16[0] = 1024;
      *&v16[1] = v8;
      v16[3] = 1024;
      __src = v9;
      __src_4 = 1024;
      __src_6 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeUpdateSet(termIds) %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE5trainERKNSt3__16vectorIP22AnyVectorIndexInstanceNS5_9allocatorIS8_EEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == *a2)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3350, "vi.size() > 0", v4);
  }

  else
  {
    if (**a2 == a1)
    {
      operator new();
    }

    v5 = __si_assert_copy_extra_332();
    v3 = v5;
    v6 = "";
    if (v5)
    {
      v6 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3351, "this == vi[0]", v6);
  }

  free(v3);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE13insertForTestEjjPKv14vec_dimensions15vec_data_formatj(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  result = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38);
  if (result[258])
  {
    v9 = result[257] + 1;
  }

  else
  {
    result[258] = a7;
    v9 = 1;
  }

  result[257] = v9;
  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE14insertForMergeEjtjPKv14vec_dimensions15vec_data_formatyjf(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a7 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a6] || vector_size_elem_sizes_15423[a7] != *(a1 + 16))
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return 1;
}

char *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE12insertVectorEjjPKv14vec_dimensions15vec_data_format14docInvertStateyP15PostingBaseInfo(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7, uint64_t a8, char *a9)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v15);
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

  v11 = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38) + 256;

  return vi_memory_postings::push_posting(a9, a7, v11, a8);
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE17bulkInsertForTestEPKvPKjjS8_(_DWORD *result, char *a2, int *a3, unsigned int a4, unsigned int *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = result;
    if (a4 <= 0x3E8)
    {
      v18 = a4;
      do
      {
        v21 = *a5++;
        v20 = v21;
        v23 = *a3++;
        v22 = v23;
        result = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((v8 + 12), v20, a2, 0xFFFFFFFF, 3.4028e38);
        if (result[258])
        {
          v19 = result[257] + 1;
        }

        else
        {
          result[258] = v22;
          v19 = 1;
        }

        result[257] = v19;
        a2 += 1024;
        --v18;
      }

      while (v18);
    }

    else
    {
      v9 = 0;
      v10 = a4 / 0xA;
      v11 = a4;
      v12 = 1.0 / a4;
      do
      {
        v14 = v9 + 1;
        if (!((v9 + 1) % v10))
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v26 = ((v9 * 100.0) * v12);
            _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "bulkInsertForTest: %.0f%%", buf, 0xCu);
          }

          *__error() = v15;
        }

        v17 = a3[v9];
        result = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((v8 + 12), a5[v9], a2, 0xFFFFFFFF, 3.4028e38);
        if (result[258])
        {
          v13 = result[257] + 1;
        }

        else
        {
          result[258] = v17;
          v13 = 1;
        }

        result[257] = v13;
        a2 += 1024;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE6shadowEbPVi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 144));
  v6 = *(a1 + 120);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v8 + 168))(v8, a2, a3);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return 0;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE12validAddressEPKv(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 144));
  v5 = *(a1 + 112);
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (*(a1 + 80) || v7 && ((*(*v7 + 144))(v7, a2) & 1) != 0 || v5 && ((*(*v5 + 56))(v5, a2) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      v8 = _ZNK16QuantizerManagerIDF16_Li256EE12validAddressEPKv(v10, a2);
    }

    else
    {
      v8 = 0;
    }
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return v8;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE8allExistEPKvj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= 0x3E8)
    {
      v12 = a3;
      while (_ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE(a1 + 48, a2))
      {
        a2 += 1024;
        if (!--v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = a3 / 0xA;
      v8 = 1.0 / a3;
      while (1)
      {
        v9 = v6 + 1;
        if (!((v6 + 1) % v7))
        {
          v10 = *__error();
          v11 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v19 = ((v6 * 100.0) * v8);
            _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "allExist: %.0f%%", buf, 0xCu);
          }

          *__error() = v10;
        }

        if (!_ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE(a1 + 48, a2))
        {
          break;
        }

        a2 += 1024;
        ++v6;
        if (a3 == v9)
        {
          goto LABEL_14;
        }
      }
    }

    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3331, "false", v17);
    free(v16);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return a3;
}

BOOL _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 3.4028e38;
  v25 = -1;
  v4 = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li512EERjRfj(a1, a2, &v25, &v24, 0);
  if (v4 == -1)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "exists";
      *&buf[12] = 1024;
      *&buf[14] = 2804;
      *&buf[18] = 1024;
      *&buf[20] = v25;
      LOWORD(v27[0]) = 2048;
      *(v27 + 2) = v24;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v7;
    os_unfair_lock_lock((a1 + 96));
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 80);
    v11 = *(a1 + 88);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 96));
    *buf = 0;
    *&buf[8] = buf;
    v27[0] = -1;
    *&buf[16] = 0x2000000000;
    v13 = v25;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke;
    v21[3] = &unk_1E8194FD8;
    v21[5] = a1;
    v21[6] = a2;
    v22 = v25;
    v23 = v24;
    v21[4] = buf;
    (*(*v12 + 80))(v12, v25, v21);
    if (*(*&buf[8] + 24) == -1)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1174405120;
      v16[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke_498;
      v16[3] = &unk_1F427E688;
      v16[5] = a1;
      v16[6] = a2;
      v16[7] = v10;
      v17 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v12;
      v19 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v13;
      v16[4] = buf;
      (*(*v12 + 64))(v12, v16);
      v14 = v19;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v15 = v17;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    _Block_object_dispose(buf, 8);
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  result = v4 != -1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

int *___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(*(a1 + 40) + 32) + 16), *a3, 1044);
  result = memcmp(v8, Ptr, 0x400uLL);
  if (!result)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = a3[1];
      v28 = 136315906;
      v29 = "exists_block_invoke";
      v30 = 1024;
      v31 = 2809;
      v32 = 1024;
      *v33 = a2;
      *&v33[4] = 2048;
      *&v33[6] = v18;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", &v28, 0x22u);
    }

    *__error() = v11;
    v13 = *__error();
    v14 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 56);
      v20 = *(a1 + 60);
      v28 = 136315906;
      v29 = "exists_block_invoke";
      v30 = 1024;
      v31 = 2810;
      v32 = 1024;
      *v33 = v19;
      *&v33[4] = 2048;
      *&v33[6] = v20;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", &v28, 0x22u);
    }

    *__error() = v13;
    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 60);
      v22 = a3[1];
      v23 = vabds_f32(v21, v22);
      if (v21 == v22)
      {
        v24 = 1;
        v25 = 1;
      }

      else
      {
        v26 = fabsf(v21);
        v27 = fabsf(v22);
        v24 = v23 <= fmaxf(fminf(v27, v26) * 0.000015259, 0.000015259);
        v25 = v23 <= (fmaxf(v26, v27) * 0.000015259);
      }

      v28 = 136317186;
      v29 = "exists_block_invoke";
      v30 = 1024;
      v31 = 2811;
      v32 = 2048;
      *v33 = v23;
      *&v33[8] = 2048;
      *&v33[10] = 0x3810000000000000;
      v34 = 2048;
      v35 = 0x3E80000000000000;
      v36 = 1024;
      v37 = v23 < 1.1755e-38;
      v38 = 1024;
      v39 = v23 < 0.00000011921;
      v40 = 1024;
      v41 = v24;
      v42 = 1024;
      v43 = v25;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: |distancesq - ve.distsq|=%e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &v28, 0x48u);
    }

    result = __error();
    *result = v15;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke_498(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v143 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 1044);
  if (!memcmp(v8, Ptr, 0x400uLL))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v47 = a3[1];
      *buf = 136315906;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2819;
      v127 = 1024;
      v128 = a2;
      v129 = 2048;
      *v130 = v47;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v11;
    v13 = *(a1 + 48);
    v14 = (*(**(a1 + 56) + 72))(*(a1 + 56), *(a1 + 88));
    v15 = 0uLL;
    v16 = -8;
    do
    {
      v17 = *v13++;
      v18 = v17;
      v19 = *v14++;
      v20 = vsubq_f16(v18, v19);
      v15 = vmlaq_f16(v15, v20, v20);
      v16 += 8;
    }

    while (v16 < 0x1F8);
    v116 = v15;
    v21 = *__error();
    v22 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      _H3 = v116.i16[0];
      __asm { FCVT            S0, H3 }

      _H1 = v116.i16[1];
      __asm { FCVT            S1, H1 }

      v56 = _S0 + _S1;
      LOWORD(_S1) = v116.i16[2];
      __asm { FCVT            S1, H1 }

      _H2 = v116.i16[3];
      __asm { FCVT            S2, H2 }

      v60 = v56 + (_S1 + _S2);
      LOWORD(_S1) = v116.i16[4];
      __asm { FCVT            S1, H1 }

      LOWORD(_S2) = v116.i16[5];
      __asm { FCVT            S2, H2 }

      _S1 = _S1 + _S2;
      LOWORD(_S2) = v116.i16[6];
      __asm { FCVT            S2, H2 }

      v65 = v60 + (_S1 + _S2);
      LOWORD(_S1) = v116.i16[7];
      __asm { FCVT            S1, H1 }

      v67 = *(a1 + 88);
      *buf = 136315906;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2821;
      v127 = 1024;
      v128 = v67;
      v129 = 2048;
      *v130 = (v65 + _S1);
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", buf, 0x22u);
    }

    *__error() = v21;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v23 = *(a1 + 48);
    (*(**(a1 + 56) + 80))(&v120);
    v24 = *__error();
    v25 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v68 = *v120;
      v69 = *(v120 + 1);
      v70 = *(v120 + 2);
      v71 = *(v120 + 3);
      v72 = v69 == v71 || vabds_f32(v69, v71) <= fmaxf(fminf(fabsf(v71), fabsf(v69)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2823;
      v127 = 1024;
      v128 = v68;
      v129 = 2048;
      *v130 = v69;
      *&v130[8] = 1024;
      *&v130[10] = v70;
      v131 = 2048;
      v132 = v71;
      v133 = 1024;
      LODWORD(v134) = v72;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v24;
    v26 = *__error();
    v27 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v73 = *v120;
      v74 = *(v120 + 2);
      v75 = *(v120 + 1) == *(v120 + 3);
      *buf = 136316162;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2824;
      v127 = 1024;
      v128 = v73;
      v129 = 1024;
      *v130 = v74;
      *&v130[4] = 1024;
      *&v130[6] = v75;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v26;
    v28 = *__error();
    v29 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v76 = *v120;
      v77 = *(v120 + 2);
      v78 = *(v120 + 1) < *(v120 + 3);
      *buf = 136316162;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2825;
      v127 = 1024;
      v128 = v76;
      v129 = 1024;
      *v130 = v77;
      *&v130[4] = 1024;
      *&v130[6] = v78;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v28;
    v30 = *__error();
    v31 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v79 = *v120;
      v80 = *(v120 + 2);
      v81 = *(v120 + 1) > *(v120 + 3);
      *buf = 136316162;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2826;
      v127 = 1024;
      v128 = v79;
      v129 = 1024;
      *v130 = v80;
      *&v130[4] = 1024;
      *&v130[6] = v81;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v30;
    v32 = *__error();
    v33 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v82 = *v120;
      v83 = *(v120 + 2);
      v84 = *(v120 + 1);
      v85 = *(v120 + 3);
      v86 = (v84 - v85);
      v87 = vabds_f32(v84, v85);
      if (v84 == v85)
      {
        v88 = 1;
        v89 = 1;
      }

      else
      {
        v112 = fabsf(v84);
        v113 = fabsf(v85);
        v88 = v87 <= fmaxf(fminf(v113, v112) * 0.000015259, 0.000015259);
        v89 = v87 <= (fmaxf(v112, v113) * 0.000015259);
      }

      *buf = 136317698;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2827;
      v127 = 1024;
      v128 = v82;
      v129 = 1024;
      *v130 = v83;
      *&v130[4] = 2048;
      *&v130[6] = v86;
      v131 = 2048;
      v132 = 1.17549435e-38;
      v133 = 2048;
      v134 = 0x3E80000000000000;
      v135 = 1024;
      v136 = v87 < 1.1755e-38;
      v137 = 1024;
      v138 = v87 < 0.00000011921;
      v139 = 1024;
      v140 = v88;
      v141 = 1024;
      v142 = v89;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v32;
    v118 = 0;
    v119 = 0;
    __p = 0;
    v34 = *(a1 + 56);
    v35 = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 1044);
    (*(*v34 + 80))(&__p, v34, v35, 2);
    v36 = *__error();
    v37 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v90 = *__p;
      v91 = *(__p + 1);
      v92 = *(__p + 2);
      v93 = *(__p + 3);
      v94 = v91 == v93 || vabds_f32(v91, v93) <= fmaxf(fminf(fabsf(v93), fabsf(v91)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2830;
      v127 = 1024;
      v128 = v90;
      v129 = 2048;
      *v130 = v91;
      *&v130[8] = 1024;
      *&v130[10] = v92;
      v131 = 2048;
      v132 = v93;
      v133 = 1024;
      LODWORD(v134) = v94;
      _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(entry->vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v36;
    v38 = *__error();
    v39 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v95 = *__p;
      v96 = *(__p + 2);
      v97 = *(__p + 1) == *(__p + 3);
      *buf = 136316162;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2831;
      v127 = 1024;
      v128 = v95;
      v129 = 1024;
      *v130 = v96;
      *&v130[4] = 1024;
      *&v130[6] = v97;
      _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v38;
    v40 = *__error();
    v41 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v98 = *__p;
      v99 = *(__p + 2);
      v100 = *(__p + 1) < *(__p + 3);
      *buf = 136316162;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2832;
      v127 = 1024;
      v128 = v98;
      v129 = 1024;
      *v130 = v99;
      *&v130[4] = 1024;
      *&v130[6] = v100;
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v40;
    v42 = *__error();
    v43 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v101 = *__p;
      v102 = *(__p + 2);
      v103 = *(__p + 1) > *(__p + 3);
      *buf = 136316162;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2833;
      v127 = 1024;
      v128 = v101;
      v129 = 1024;
      *v130 = v102;
      *&v130[4] = 1024;
      *&v130[6] = v103;
      _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v42;
    v44 = *__error();
    v45 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v104 = *__p;
      v105 = *(__p + 2);
      v106 = *(__p + 1);
      v107 = *(__p + 3);
      v108 = vabds_f32(v106, v107);
      v109 = (v106 - v107) < 1.1755e-38;
      if (v106 == v107)
      {
        v110 = 1;
        v111 = 1;
      }

      else
      {
        v114 = fabsf(v106);
        v115 = fabsf(v107);
        v110 = v108 <= fmaxf(fminf(v115, v114) * 0.000015259, 0.000015259);
        v111 = v108 <= (fmaxf(v114, v115) * 0.000015259);
      }

      *buf = 136317698;
      v124 = "exists_block_invoke";
      v125 = 1024;
      v126 = 2834;
      v127 = 1024;
      v128 = v104;
      v129 = 1024;
      *v130 = v105;
      *&v130[4] = 2048;
      *&v130[6] = v108;
      v131 = 2048;
      v132 = 1.17549435e-38;
      v133 = 2048;
      v134 = 0x3E80000000000000;
      v135 = 1024;
      v136 = v109;
      v137 = 1024;
      v138 = v108 < 0.00000011921;
      v139 = 1024;
      v140 = v110;
      v141 = 1024;
      v142 = v111;
      _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v44;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
    if (__p)
    {
      v118 = __p;
      operator delete(__p);
    }

    if (v120)
    {
      v121 = v120;
      operator delete(v120);
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F427E340;
  _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F427E340;
  _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void _ZNSt3__120__shared_ptr_emplaceIN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsEENS_9allocatorIS6_EEE16__on_zero_sharedEv(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    malloc_zone_free(*v2, *(v2 + 8));

    JUMPOUT(0x1C691FEF0);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsEENS_9allocatorIS6_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427DCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16replaceQuantizerENSt3__110shared_ptrI9QuantizerIDF16_Li256EEEENS6_I17AnyPartitionStoreEE(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_lock((a1 + 96));
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v10 = (*(**a2 + 24))();
  v11 = *a3;
  if (v10 != *(*a3 + 68))
  {
    v28 = __si_assert_copy_extra_332();
    v29 = v28;
    v30 = "";
    if (v28)
    {
      v30 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2559, "newQuantizer->count() == newPartitions->nPartitions()", v30);
    free(v29);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(*(a1 + 32) + 24) != v11[18])
  {
    v31 = __si_assert_copy_extra_332();
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2560, "vectors->count() == newPartitions->nVectors()", v33);
    free(v32);
    if (__valid_fs(-1))
    {
      v34 = 2989;
    }

    else
    {
      v34 = 3072;
    }

    *v34 = -559038737;
    abort();
  }

  if (v7 && v9)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v7 + 8;
      if (v7[31] < 0)
      {
        v14 = *v14;
      }

      v40 = v14;
      v15 = (*(*v7 + 16))(v7);
      v16 = (*a2 + 8);
      v37 = v15;
      v38 = v12;
      if (*(*a2 + 31) < 0)
      {
        v16 = *v16;
      }

      v39 = v16;
      v36 = (*(**a2 + 16))(*a2);
      v17 = v46;
      (*(*v9 + 152))(v46, v9);
      if (v47 < 0)
      {
        v17 = v46[0];
      }

      v18 = v9[18];
      v35 = v9[17];
      (*(**a3 + 152))(__p);
      v19 = __p;
      if (v45 < 0)
      {
        v19 = __p[0];
      }

      v20 = *(*a3 + 68);
      v21 = *(*a3 + 72);
      *buf = 136317442;
      v49 = v40;
      v50 = 1024;
      v51 = v37;
      v52 = 2080;
      v53 = v39;
      v54 = 1024;
      v55 = v36;
      v56 = 2080;
      v57 = v17;
      v58 = 1024;
      v59 = v18;
      v60 = 1024;
      v61 = v35;
      v62 = 2080;
      v63 = v19;
      v64 = 1024;
      v65 = v21;
      v66 = 1024;
      v67 = v20;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Replace quantizer %s(%u) -> %s(%u), partitions %s(%u/%u) -> %s(%u/%u)", buf, 0x4Eu);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v38;
      if (v47 < 0)
      {
        operator delete(v46[0]);
      }
    }

    *__error() = v12;
    v11 = *a3;
  }

  if ((*(*v11 + 24))(v11))
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22 && (*(*v9 + 24))(v9))
  {
    (*(**a3 + 176))(*a3, v9);
  }

  v23 = a2[1];
  *&v41 = *a2;
  *(&v41 + 1) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a3[1];
  v42 = *a3;
  v43 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 96));
  _ZNSt3__14swapB8nn200100IN22IVFVectorIndexTemplateIDF16_Li256EE19QuantizerPartitionsEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_((a1 + 64), &v41);
  os_unfair_lock_unlock((a1 + 96));
  v25 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  os_unfair_lock_unlock((a1 + 136));
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIDF16_Li256EEEE(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v5 = ".partitions";
  if (v4 && (*(*v4 + 24))(v4))
  {
    v5 = ".tmp.partitions";
  }

  v6 = strlen(v5);
  if (v6 < 0x7FFFFFFFFFFFFFF8)
  {
    v7 = v6;
    if (v6 < 0x17)
    {
      v9 = v6;
      if (v6)
      {
        memcpy(&__dst, v5, v6);
      }

      *(&__dst + v7) = 0;
      malloc_default_zone();
      if (v9 < 0)
      {
        operator delete(__dst);
      }

      operator new();
    }

    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

int *___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIDF16_Li256EEEE_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (*(v3 + 24))
  {
    v4 = 0;
    do
    {
      memset(__p, 0, sizeof(__p));
      v5 = *(a1 + 40);
      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v3 + 16), v4, 532);
      (*(*v5 + 80))(__p, v5, Ptr, 1);
      (*(**(a1 + 56) + 56))(*(a1 + 56), *__p[0], v4, *(__p[0] + 1));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v4;
      v3 = *(v2 + 32);
    }

    while (v4 < *(v3 + 24));
  }

  result = (*(**(a1 + 56) + 112))(*(a1 + 56), 0);
  v8 = *(*(v2 + 32) + 24);
  if (v8)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(**(a1 + 56) + 152))(v22);
      if (v23 >= 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = v22[0];
      }

      v12 = *(a1 + 56);
      v13 = *(v12 + 68);
      v14 = *(v12 + 72);
      v15 = *(a1 + 40);
      v16 = v15 + 8;
      if (v15[31] < 0)
      {
        v16 = *v16;
      }

      v17 = (*(*v15 + 16))(v15);
      LODWORD(__p[0]) = 136316162;
      *(__p + 4) = v11;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v14;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v13;
      v25 = 2080;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Create new partitions %s(%u/%u) for new quantizer %s(%u)", __p, 0x28u);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    result = __error();
    *result = v9;
    v8 = *(*(v2 + 32) + 24);
  }

  if (*(*(a1 + 56) + 72) != v8)
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2538, "newPartitions->nVectors() == vectors->count()", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 96));
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  if (!v5)
  {
    os_unfair_lock_unlock((a1 + 96));
    *a2 = v6;
    a2[1] = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 96));
  *a2 = v6;
  a2[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
LABEL_9:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12getQuantizerEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 96));
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED0Ev(void *a1)
{
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev(a1);

  JUMPOUT(0x1C691FEF0);
}

void *_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev(void *a1)
{
  *a1 = &unk_1F427DC98;
  v2 = a1[11];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12diagnoseDumpERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS5_13basic_ostreamIcS8_EEi(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, a2, v8);
  v10 = *(a1 + 47);
  if (v10 >= 0)
  {
    v11 = a1 + 24;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ": ", 2);
  v14 = (*(*a1 + 16))(a1);
  v15 = MEMORY[0x1C691FC90](a3, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " vectors ", 9);
  v16 = (*(*a1 + 24))(a1);
  v17 = MEMORY[0x1C691FC90](v15, v16);
  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " partitions.", 12);
  if (*(a1 + 192))
  {
    v19 = "(readOnly)";
  }

  else
  {
    v19 = "(readWrite)";
  }

  if (*(a1 + 192))
  {
    v20 = 10;
  }

  else
  {
    v20 = 11;
  }

  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v19, v20);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v78);
  std::ostream::put();
  std::ostream::flush();
  v75 = 0;
  v76 = 0;
  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12getQuantizerEv(a1 + 48, &v75);
  v23 = v75;
  if (v75)
  {
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "Quantizer: ", 11);
    v25 = *(v23 + 31);
    if (v25 >= 0)
    {
      v26 = v23 + 8;
    }

    else
    {
      v26 = *(v23 + 8);
    }

    if (v25 >= 0)
    {
      v27 = *(v23 + 31);
    }

    else
    {
      v27 = *(v23 + 16);
    }

    v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, v26, v27);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "(", 1);
    v29 = (*(*v23 + 16))(v23);
    v30 = MEMORY[0x1C691FC80](a3, v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, ") ", 2);
    v31 = (*(*v23 + 24))(v23);
    v32 = MEMORY[0x1C691FC90](v30, v31);
    v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, " centroids.", 11);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
  }

  v73 = 0;
  v74 = 0;
  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(a1 + 48, &v73);
  v35 = v73;
  if (v73)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "Partition: ", 11);
    (*(*v35 + 152))(&v78, v35);
    v36 = (v80 & 0x80u) == 0 ? &v78 : v78.__locale_;
    v37 = (v80 & 0x80u) == 0 ? v80 : v79;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, v36, v37);
    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v38 = std::locale::use_facet(&v77, MEMORY[0x1E69E5318]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v77);
    std::ostream::put();
    std::ostream::flush();
    if (v80 < 0)
    {
      operator delete(v78.__locale_);
    }
  }

  if (a4)
  {
    v71 = v35;
    v39 = *(a1 + 80);
    v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "offset,vid", 10);
    v72 = a4;
    if (a4 <= 1)
    {
      v41 = ",";
    }

    else
    {
      v41 = ",vector";
    }

    if (a4 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = 7;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, v41, v42);
    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v43 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
    if (*(v39 + 24))
    {
      if (a4 <= 1)
      {
        v58 = 0;
        v59 = MEMORY[0x1E69E5318];
        do
        {
          Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v58, 532);
          v61 = MEMORY[0x1C691FC90](a3, v58);
          v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, ",", 1);
          v63 = MEMORY[0x1C691FC90](v62, *(Ptr + 528));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, ",", 1);
          std::ios_base::getloc((a3 + *(*a3 - 24)));
          v64 = std::locale::use_facet(&v78, v59);
          (v64->__vftable[2].~facet_0)(v64, 10);
          std::locale::~locale(&v78);
          std::ostream::put();
          std::ostream::flush();
          ++v58;
        }

        while (v58 < *(v39 + 24));
      }

      else
      {
        v44 = 0;
        v45 = MEMORY[0x1E69E5318];
        do
        {
          v47 = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v44, 532);
          v48 = MEMORY[0x1C691FC90](a3, v44);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ",", 1);
          v50 = MEMORY[0x1C691FC90](v49, *(v47 + 528));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, ",", 1);
          v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "{length = ", 10);
          v52 = MEMORY[0x1C691FCA0](v51, 512);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, ", bytes = 0x", 12);
          data2hexString(&v78, v47, 16);
          if ((v80 & 0x80u) == 0)
          {
            locale = &v78;
          }

          else
          {
            locale = v78.__locale_;
          }

          if ((v80 & 0x80u) == 0)
          {
            v54 = v80;
          }

          else
          {
            v54 = v79;
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, locale, v54);
          if (v80 < 0)
          {
            operator delete(v78.__locale_);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, " ... ", 5);
          data2hexString(&v78, v47 + 504, 8);
          if ((v80 & 0x80u) == 0)
          {
            v55 = &v78;
          }

          else
          {
            v55 = v78.__locale_;
          }

          if ((v80 & 0x80u) == 0)
          {
            v56 = v80;
          }

          else
          {
            v56 = v79;
          }

          v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, v55, v56);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, " }", 2);
          if (v80 < 0)
          {
            operator delete(v78.__locale_);
          }

          std::ios_base::getloc((a3 + *(*a3 - 24)));
          v46 = std::locale::use_facet(&v78, v45);
          (v46->__vftable[2].~facet_0)(v46, 10);
          std::locale::~locale(&v78);
          std::ostream::put();
          std::ostream::flush();
          ++v44;
        }

        while (v44 < *(v39 + 24));
      }
    }

    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v65 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v65->__vftable[2].~facet_0)(v65, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
    if (v71)
    {
      (*(*v71 + 104))(v71, a3, v72);
    }
  }

  result = (*(*a1 + 16))(a1);
  v67 = v74;
  if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v68 = result;
    (v67->__on_zero_shared)(v67);
    std::__shared_weak_count::__release_weak(v67);
    result = v68;
  }

  v69 = v76;
  if (v76)
  {
    if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v70 = result;
      (v69->__on_zero_shared)(v69);
      std::__shared_weak_count::__release_weak(v69);
      return v70;
    }
  }

  return result;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6statusERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v37 = 0;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  *__p = 0u;
  v34 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v30);
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

  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, v5, v6);
  v8 = *(a1 + 47);
  if (v8 >= 0)
  {
    v9 = a1 + 24;
  }

  else
  {
    v9 = *(a1 + 24);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 47);
  }

  else
  {
    v10 = *(a1 + 32);
  }

  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v9, v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "(", 1);
  v12 = (*(*a1 + 16))(a1);
  v13 = MEMORY[0x1C691FC90](&v31, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "/", 1);
  v14 = (*(*a1 + 24))(a1);
  v15 = MEMORY[0x1C691FC90](v13, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "v", 1);
  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(a1 + 48, &v28);
  if (v28)
  {
    _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(a1 + 48, &v26);
    v16 = MEMORY[0x1C691FC80](v15, *(v26 + 76));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ")", 1);
    v17 = v27;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  else
  {
    v18 = MEMORY[0x1C691FC80](v15, 0);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ")", 1);
  }

  v19 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "[", 1);
  MEMORY[0x1C691FC90](v20, *(*(a1 + 80) + 36));
  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, ",", 1);
  v22 = MEMORY[0x1C691FC90](v21, *(*(a1 + 80) + 40));
  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "] indexId: ", 11);
  MEMORY[0x1C691FCB0](v23, *(a1 + 152));
  std::stringbuf::str();
  *&v30 = *MEMORY[0x1E69E54D8];
  v24 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v31 = v24;
  *(&v31 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v31 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v36);
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE26updateVectorStorageOffsetsEP13__SIUINT64Set(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    for (i = 0; ; ++i)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1 + 48);
      if (i >= result)
      {
        break;
      }

      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), i, 532);
      if ((*(v2 + 184) & 1) == 0)
      {
        v7 = *(Ptr + 528);
        v8 = *(v2 + 24);
        if (!v8 || !((*(v2 + 16) ^ v7) >> (-4 * v8)))
        {
          v9 = *(v2 + 56 + 8 * ((v7 >> (60 - 4 * v8)) & 0xF));
          if (v9)
          {
            v10 = v8 + 2;
            do
            {
              v9 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v7 >> (64 - 4 * v10++)) & 0xF));
            }

            while ((v9 & 1) != 0);
          }

          if (v9)
          {
            (*(*v9 + 16))(v9);
          }
        }
      }
    }
  }

  else
  {
    while (1)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1 + 48);
      if (v2 >= result)
      {
        break;
      }

      vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), v2++, 532);
    }
  }

  return result;
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (!v3)
  {
    os_unfair_lock_unlock((a1 + 96));
    if (v4)
    {
      v5 = *(v4 + 72);
      goto LABEL_9;
    }

LABEL_13:
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2476, "cur.partitions != nullptr", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 96));
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 72);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_9:
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return v5;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16getDataForOffsetEjPj(void *a1, uint64_t a2, int *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 16))(a1) <= a2)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = (*(*a1 + 16))(a1);
      v13 = 136315906;
      v14 = "getDataForOffset";
      v15 = 1024;
      v16 = 3635;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = v12;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: offset out of range: %u >= %u", &v13, 0x1Eu);
    }

    v10 = __error();
    v7 = 0;
    result = 0;
    *v10 = v8;
  }

  else
  {
    result = (*(a1[6] + 32))(a1 + 6, a2);
    v7 = 512;
  }

  *a3 = v7;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE11storageSizeEv(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  v5 = *(*(*(a1 + 80) + 16) + 24);
  v6 = (*(*v4 + 192))(v4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return v6 + v5;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE24aNNForDebugProcessResultEPvU13block_pointerFvjjfE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "search return %zu results", buf, 0xCu);
  }

  *__error() = v5;
  buf[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFANNLogQueryResult", @"com.apple.Spotlight", buf);
  v9 = buf[0];
  v51 = 0;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  *buf = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v34 = a2;
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v36, *(a2 + 8), *(a2 + 16));
  v10 = v37;
  v35 = v36;
  if (v36 != v37)
  {
    if (AppIntegerValue)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v24 = v36;
      do
      {
        (*(a3 + 16))(a3, *(v24 + 2), *(v24 + 4), v24[5]);
        v24 += 6;
      }

      while (v24 != v10);
    }

    else
    {
      v12 = 0;
      v13 = ",";
      v14 = v36;
      do
      {
        (*(a3 + 16))(a3, *(v14 + 2), *(v14 + 4), v14[5]);
        v15 = MEMORY[0x1C691FC90](&v45, *(v14 + 4));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v13, 1);
        v16 = *(v14 + 5);
        v17 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ";", 1);
        v18 = &v46[-2] + *(v45 - 24);
        if ((v18[32] & 5) == 0 && ((*(**(v18 + 5) + 32))(__p), v43 > 1000) || (++v12, HIDWORD(v19) = -1030792151 * v12 + 85899344, LODWORD(v19) = HIDWORD(v19), (v19 >> 1) < 0x51EB851))
        {
          v20 = v13;
          v21 = *__error();
          v22 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v23 = __p;
            if (v42 < 0)
            {
              v23 = __p[0];
            }

            *v39 = 136315138;
            v40 = v23;
            _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "%s", v39, 0xCu);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v21;
          __p[0] = 0;
          __p[1] = 0;
          v42 = 0;
          std::stringbuf::str();
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p[0]);
          }

          v13 = v20;
        }

        v14 += 6;
      }

      while (v14 != v10);
    }
  }

  v25 = &v46[-2] + *(v45 - 24);
  if ((v25[32] & 5) != 0)
  {
    v26 = v34;
  }

  else
  {
    (*(**(v25 + 5) + 32))(__p);
    v26 = v34;
    if (v43 > 0)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v29 = v42 >= 0 ? __p : __p[0];
        *v39 = 136315138;
        v40 = v29;
        _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "%s", v39, 0xCu);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v27;
    }
  }

  if (v26)
  {
    v30 = *(v26 + 8);
    if (v30)
    {
      *(v26 + 16) = v30;
      operator delete(v30);
    }

    MEMORY[0x1C691FEF0](v26, 0x1020C403EC25235);
  }

  if (v35)
  {
    operator delete(v35);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v45 = v31;
  *(&v45 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  *(&v45 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1C691FE80](v50);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void *_ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE23aNNForTestProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvjfE(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "search return %zu results", buf, 0xCu);
  }

  *__error() = v4;
  buf[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFANNLogQueryResult", @"com.apple.Spotlight", buf);
  v8 = buf[0];
  v50 = 0;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  *buf = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v33 = a1;
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v35, *(a1 + 8), *(a1 + 16));
  v9 = v36;
  v34 = v35;
  if (v35 != v36)
  {
    if (AppIntegerValue)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v23 = v35;
      do
      {
        (*(a2 + 16))(a2, *(v23 + 2), v23[5]);
        v23 += 6;
      }

      while (v23 != v9);
    }

    else
    {
      v11 = 0;
      v12 = ",";
      v13 = v35;
      do
      {
        (*(a2 + 16))(a2, *(v13 + 2), v13[5]);
        v14 = MEMORY[0x1C691FC90](&v44, *(v13 + 4));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, v12, 1);
        v15 = *(v13 + 5);
        v16 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ";", 1);
        v17 = &v45[-2] + *(v44 - 24);
        if ((v17[32] & 5) == 0 && ((*(**(v17 + 5) + 32))(__p), v42 > 1000) || (++v11, HIDWORD(v18) = -1030792151 * v11 + 85899344, LODWORD(v18) = HIDWORD(v18), (v18 >> 1) < 0x51EB851))
        {
          v19 = v12;
          v20 = *__error();
          v21 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v22 = __p;
            if (v41 < 0)
            {
              v22 = __p[0];
            }

            *v38 = 136315138;
            v39 = v22;
            _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "%s", v38, 0xCu);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v20;
          __p[0] = 0;
          __p[1] = 0;
          v41 = 0;
          std::stringbuf::str();
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          v12 = v19;
        }

        v13 += 6;
      }

      while (v13 != v9);
    }
  }

  v24 = &v45[-2] + *(v44 - 24);
  if ((v24[32] & 5) != 0)
  {
    v25 = v33;
  }

  else
  {
    (*(**(v24 + 5) + 32))(__p);
    v25 = v33;
    if (v42 > 0)
    {
      v26 = *__error();
      v27 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v28 = v41 >= 0 ? __p : __p[0];
        *v38 = 136315138;
        v39 = v28;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "%s", v38, 0xCu);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v26;
    }
  }

  if (v25)
  {
    v29 = *(v25 + 8);
    if (v29)
    {
      *(v25 + 16) = v29;
      operator delete(v29);
    }

    MEMORY[0x1C691FEF0](v25, 0x1020C403EC25235);
  }

  if (v34)
  {
    operator delete(v34);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v44 = v30;
  *(&v44 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(*(&v46 + 1));
  }

  *(&v44 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v45);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1C691FE80](v49);
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16aNNProcessResultEPvU13block_pointerFvS5_fjE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16aNNProcessResultEPvU13block_pointerFvS5_fjE_block_invoke;
  v4[3] = &unk_1E8194F70;
  v4[4] = a3;
  return _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPNS3_12storage_formEfjE(a2, v4);
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPNS3_12storage_formEfjE(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "search return %zu results", buf, 0xCu);
  }

  *__error() = v4;
  buf[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFANNLogQueryResult", @"com.apple.Spotlight", buf);
  v8 = buf[0];
  v53 = 0;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  *buf = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v35 = a1;
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v37, *(a1 + 8), *(a1 + 16));
  v9 = v38;
  v36 = v37;
  if (v37 != v38)
  {
    if (AppIntegerValue)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v25 = v37;
      do
      {
        v45 = *v25;
        (*(a2 + 16))(a2, &v45, *(v25 + 4), v25[5]);
        v25 += 6;
      }

      while (v25 != v9);
    }

    else
    {
      v11 = 0;
      v12 = ",";
      v13 = ";";
      v14 = v37;
      do
      {
        v45 = *v14;
        (*(a2 + 16))(a2, &v45, *(v14 + 4), v14[5]);
        v15 = MEMORY[0x1C691FC90](&v47, *(v14 + 4));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v12, 1);
        v16 = *(v14 + 5);
        v17 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, v13, 1);
        v18 = &v48[-2] + *(v47 - 24);
        if ((v18[32] & 5) == 0 && ((*(**(v18 + 5) + 32))(__p), v44 > 1000) || (++v11, HIDWORD(v19) = -1030792151 * v11 + 85899344, LODWORD(v19) = HIDWORD(v19), (v19 >> 1) < 0x51EB851))
        {
          v20 = v13;
          v21 = v12;
          v22 = *__error();
          v23 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v24 = __p;
            if (v43 < 0)
            {
              v24 = __p[0];
            }

            *v40 = 136315138;
            v41 = v24;
            _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "%s", v40, 0xCu);
            if (SHIBYTE(v43) < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v22;
          __p[0] = 0;
          __p[1] = 0;
          v43 = 0;
          std::stringbuf::str();
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          v12 = v21;
          v13 = v20;
        }

        v14 += 6;
      }

      while (v14 != v9);
    }
  }

  v26 = &v48[-2] + *(v47 - 24);
  if ((v26[32] & 5) != 0)
  {
    v27 = v35;
  }

  else
  {
    (*(**(v26 + 5) + 32))(__p);
    v27 = v35;
    if (v44 > 0)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v30 = v43 >= 0 ? __p : __p[0];
        LODWORD(v45) = 136315138;
        *(&v45 + 4) = v30;
        _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "%s", &v45, 0xCu);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v28;
    }
  }

  if (v27)
  {
    v31 = *(v27 + 8);
    if (v31)
    {
      *(v27 + 16) = v31;
      operator delete(v31);
    }

    MEMORY[0x1C691FEF0](v27, 0x1020C403EC25235);
  }

  if (v36)
  {
    operator delete(v36);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v32 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v47 = v32;
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(*(&v49 + 1));
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v48);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1C691FE80](v52);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE3aNNEjtPKv14vec_dimensions15vec_data_formatfbPv(uint64_t a1, int a2, int a3, float16x8_t *a4, int a5, int a6, char a7, void *a8, float a9)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a6 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(a1 + 16))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  v9 = a1 + 48;

  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj(v9, a4, a7, a8, 0, a9);
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj(uint64_t a1, float16x8_t *a2, char a3, void *a4, CFIndex AppIntegerValue, float a6)
{
  v126 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  *__str = 0u;
  v125 = 0u;
  snprintf(__str, 0x20uLL, "%02x%02x%02x%02x...%02x%02x%02x%02x", a2->u8[0], a2->u8[1], a2->u8[2], a2->u8[3], a2[31].u8[12], a2[31].u8[13], a2[31].u8[14], a2[31].u8[15]);
  if (!AppIntegerValue)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFNumberOfParitionsProbe", @"com.apple.Spotlight", 0);
  }

  keyExistsAndHasValidFormat[0] = 0;
  v12 = CFPreferencesGetAppIntegerValue(@"IVFMinVectorsUseANN", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v13 = v12;
  }

  else
  {
    v13 = 10000;
  }

  if (10 * v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 10 * v11;
  }

  v15 = v14 * _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
  v16 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
  keyExistsAndHasValidFormat[0] = 0;
  v17 = v15 / v16;
  v18 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMin", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v19 = v18;
  }

  else
  {
    v19 = 7;
  }

  v111 = 0;
  v112 = &v111;
  if (v17 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v114 = 0;
  v113 = 0x2000000000;
  v107 = 0;
  v108 = &v107;
  v110 = 0;
  v109 = 0x2000000000;
  v106 = 0;
  *v104 = 0u;
  *__p = 0u;
  _ZN16QuantizerManagerIDF16_Li256EE17aNNLogQueryVecIdsEv(v104);
  Current = CFAbsoluteTimeGetCurrent();
  v92 = v11;
  if ((a3 & 1) != 0 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1) <= v20 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1) <= v14)
  {
    v49 = *__error();
    v50 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v52 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v53 = a6;
      *keyExistsAndHasValidFormat = 136316162;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v51;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = v52;
      *&keyExistsAndHasValidFormat[30] = 2048;
      *&keyExistsAndHasValidFormat[32] = a6;
      _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "brute force search %s top %u of %u vectors in %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x28u);
    }

    else
    {
      v53 = a6;
    }

    *__error() = v49;
    v91 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v54 = 0;
    v55 = *(a1 + 32);
    v56 = v55;
    while (1)
    {
      if (v54 == *(v56 + 24))
      {
        v71 = v92;
        goto LABEL_91;
      }

      ++*(v112 + 6);
      v57 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(v55, v54);
      v58 = *(v57 + 528);
      v59 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(a2, v57);
      if (!v104[1])
      {
        goto LABEL_80;
      }

      v60 = vcnt_s8(v104[1]);
      v60.i16[0] = vaddlv_u8(v60);
      if (v60.u32[0] > 1uLL)
      {
        v61 = v58;
        if (v104[1] <= v58)
        {
          v61 = v58 % LODWORD(v104[1]);
        }
      }

      else
      {
        v61 = (LODWORD(v104[1]) - 1) & v58;
      }

      v62 = *(v104[0] + v61);
      if (!v62 || (v63 = *v62) == 0)
      {
LABEL_80:
        v65 = 1;
        if (a6 == 0.0)
        {
          goto LABEL_87;
        }

        goto LABEL_81;
      }

      if (v60.u32[0] < 2uLL)
      {
        while (1)
        {
          v64 = v63[1];
          if (v64 == v58)
          {
            if (*(v63 + 4) == v58)
            {
              goto LABEL_71;
            }
          }

          else if ((v64 & (v104[1] - 1)) != v61)
          {
            goto LABEL_80;
          }

          v63 = *v63;
          if (!v63)
          {
            goto LABEL_80;
          }
        }
      }

      while (1)
      {
        v66 = v63[1];
        if (v66 == v58)
        {
          break;
        }

        if (v66 >= v104[1])
        {
          v66 %= v104[1];
        }

        if (v66 != v61)
        {
          goto LABEL_80;
        }

LABEL_74:
        v63 = *v63;
        if (!v63)
        {
          goto LABEL_80;
        }
      }

      if (*(v63 + 4) != v58)
      {
        goto LABEL_74;
      }

LABEL_71:
      v65 = 0;
      if (a6 == 0.0)
      {
LABEL_87:
        if ((v65 & 1) == 0)
        {
          v69 = *__error();
          v70 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109376;
            *&keyExistsAndHasValidFormat[4] = v58;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v59;
            _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", keyExistsAndHasValidFormat, 0x12u);
          }

          *__error() = v69;
        }

        *keyExistsAndHasValidFormat = *(v57 + 512);
        *&keyExistsAndHasValidFormat[16] = v58;
        *&keyExistsAndHasValidFormat[20] = v59;
        _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(a4, keyExistsAndHasValidFormat);
        goto LABEL_56;
      }

LABEL_81:
      if (v59 <= a6)
      {
        goto LABEL_87;
      }

      if ((v65 & 1) == 0)
      {
        v67 = *__error();
        v68 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *keyExistsAndHasValidFormat = 67109632;
          *&keyExistsAndHasValidFormat[4] = v58;
          *&keyExistsAndHasValidFormat[8] = 2048;
          *&keyExistsAndHasValidFormat[10] = v59;
          *&keyExistsAndHasValidFormat[18] = 2048;
          *&keyExistsAndHasValidFormat[20] = v53;
          _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", keyExistsAndHasValidFormat, 0x1Cu);
        }

        *__error() = v67;
      }

      ++*(v108 + 6);
LABEL_56:
      ++v54;
      v56 = *(a1 + 32);
      if (v55 != v56)
      {
        v87 = __si_assert_copy_extra_332();
        v88 = v87;
        v89 = "";
        if (v87)
        {
          v89 = v87;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1953, "store == other.store", v89);
        free(v88);
        if (__valid_fs(-1))
        {
          v90 = 2989;
        }

        else
        {
          v90 = 3072;
        }

        *v90 = -559038737;
        abort();
      }
    }
  }

  if (!AppIntegerValue)
  {
    keyExistsAndHasValidFormat[0] = 0;
    v22 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMax", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      v23 = v22;
    }

    else
    {
      v23 = 40;
    }

    keyExistsAndHasValidFormat[0] = 0;
    v24 = CFPreferencesGetAppIntegerValue(@"IVFPartitionSizeFactor", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      v25 = v24;
    }

    else
    {
      v25 = 45;
    }

    keyExistsAndHasValidFormat[0] = 0;
    v26 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeNumerator", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    v27 = keyExistsAndHasValidFormat[0];
    v28 = 8 * v26;
    v29 = v25 * v25;
    keyExistsAndHasValidFormat[0] = 0;
    v30 = CFPreferencesGetAppIntegerValue(@"IVFpartitionProbeDecayExponent", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    v31 = keyExistsAndHasValidFormat[0];
    if (v30 <= 0x12)
    {
      v32 = 18;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 - 3;
    v34 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
    if (v31)
    {
      v35 = v33;
    }

    else
    {
      v35 = 17;
    }

    v36 = v34 >> v35;
    if (v36 <= 8)
    {
      v37 = 8;
    }

    else
    {
      v37 = v36;
    }

    v38 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    if (v27)
    {
      v39 = v28;
    }

    else
    {
      v39 = 800;
    }

    v40 = v39 * v38 / (v29 * v37);
    if (v23 < v40)
    {
      v40 = v23;
    }

    if (v40 <= v20)
    {
      AppIntegerValue = v20;
    }

    else
    {
      AppIntegerValue = v40;
    }
  }

  v41 = *__error();
  v42 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
    v44 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    *keyExistsAndHasValidFormat = 136316418;
    *&keyExistsAndHasValidFormat[4] = __str;
    *&keyExistsAndHasValidFormat[12] = 1024;
    *&keyExistsAndHasValidFormat[14] = v11;
    *&keyExistsAndHasValidFormat[18] = 1024;
    *&keyExistsAndHasValidFormat[20] = v43;
    *&keyExistsAndHasValidFormat[24] = 1024;
    *&keyExistsAndHasValidFormat[26] = AppIntegerValue;
    *&keyExistsAndHasValidFormat[30] = 1024;
    *&keyExistsAndHasValidFormat[32] = v44;
    *&keyExistsAndHasValidFormat[36] = 2048;
    *&keyExistsAndHasValidFormat[38] = a6;
    _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "aNN search %s top %u of %u vectors in %u of %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x2Eu);
  }

  *__error() = v41;
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_lock((a1 + 96));
  v46 = *(a1 + 64);
  v45 = *(a1 + 72);
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = *(a1 + 80);
  v47 = *(a1 + 88);
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v94 = v47;
  os_unfair_lock_unlock((a1 + 96));
  memset(keyExistsAndHasValidFormat, 0, 24);
  (*(*v46 + 80))(keyExistsAndHasValidFormat, v46, a2, AppIntegerValue);
  v93 = *&keyExistsAndHasValidFormat[8] - *keyExistsAndHasValidFormat;
  if (*&keyExistsAndHasValidFormat[8] != *keyExistsAndHasValidFormat)
  {
    operator new();
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v71 = v11;
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 1174405120;
  v96[2] = ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke;
  v96[3] = &unk_1F427E300;
  v96[6] = a1;
  v96[7] = a2;
  v96[4] = &v111;
  std::unordered_set<unsigned int>::unordered_set(&v97, v104);
  v100 = a6;
  v96[5] = &v107;
  v99 = a4;
  (*(*v48 + 72))(v48, &v101, v96);
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  os_unfair_lock_unlock((a1 + 136));
  v84 = v98;
  if (v98)
  {
    do
    {
      v85 = *v84;
      operator delete(v84);
      v84 = v85;
    }

    while (v85);
  }

  v86 = v97;
  v97 = 0;
  if (v86)
  {
    operator delete(v86);
  }

  if (*keyExistsAndHasValidFormat)
  {
    *&keyExistsAndHasValidFormat[8] = *keyExistsAndHasValidFormat;
    operator delete(*keyExistsAndHasValidFormat);
  }

  if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
  }

  v91 = v93 >> 3;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

LABEL_91:
  v72 = *__error();
  v73 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
    v75 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v76 = *(v108 + 6);
    v77 = *(v112 + 6);
    v78 = 0xAAAAAAAAAAAAAAABLL * ((a4[2] - a4[1]) >> 3);
    v79 = CFAbsoluteTimeGetCurrent();
    *keyExistsAndHasValidFormat = 136317442;
    *&keyExistsAndHasValidFormat[4] = __str;
    *&keyExistsAndHasValidFormat[12] = 1024;
    *&keyExistsAndHasValidFormat[14] = v71;
    *&keyExistsAndHasValidFormat[18] = 1024;
    *&keyExistsAndHasValidFormat[20] = v74;
    *&keyExistsAndHasValidFormat[24] = 2048;
    *&keyExistsAndHasValidFormat[26] = a6;
    *&keyExistsAndHasValidFormat[34] = 1024;
    *&keyExistsAndHasValidFormat[36] = v91;
    *&keyExistsAndHasValidFormat[40] = 1024;
    *&keyExistsAndHasValidFormat[42] = v75;
    v116 = 1024;
    v117 = v76;
    v118 = 1024;
    v119 = v77;
    v120 = 2048;
    v121 = v78;
    v122 = 2048;
    v123 = v79 - Current;
    _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "search %s top %u of %u vectors max_distance=%f in %u of %u partitions skip %u of %u populate %zu results in duration: %f", keyExistsAndHasValidFormat, 0x4Eu);
  }

  *__error() = v72;
  v80 = __p[0];
  if (__p[0])
  {
    do
    {
      v81 = *v80;
      operator delete(v80);
      v80 = v81;
    }

    while (v81);
  }

  v82 = v104[0];
  v104[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  v83 = *MEMORY[0x1E69E9840];
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (!v3)
  {
    os_unfair_lock_unlock((a1 + 96));
    if (v4)
    {
      v5 = *(v4 + 68);
      goto LABEL_9;
    }

LABEL_13:
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2470, "cur.partitions != nullptr", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 96));
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 68);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_9:
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return v5;
}

unint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) <= a2)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1937, "offset < store->endOffset()", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = *(a1 + 16);

  return vi_onefixedsize_memory_allocator::getPtr(v2, a2, 532);
}

void _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
  if (v5 >= *a1)
  {
    if (*(a2 + 5) < v4[5])
    {
      if ((v3 - v4) >= 25)
      {
        v9 = 0;
        v42 = *v4;
        v44 = *(v4 + 2);
        v10 = a1[1];
        do
        {
          v12 = v10;
          v10 += 6 * v9 + 6;
          v13 = 2 * v9;
          v9 = (2 * v9) | 1;
          v14 = v13 + 2;
          if (v14 < v5 && v10[5] < v10[11])
          {
            v10 += 6;
            v9 = v14;
          }

          v11 = *v10;
          *(v12 + 2) = *(v10 + 2);
          *v12 = v11;
        }

        while (v9 <= ((v5 - 2) >> 1));
        v18 = (v3 - 24);
        if (v10 == v18)
        {
          *(v10 + 2) = v44;
          *v10 = v42;
        }

        else
        {
          v19 = *v18;
          *(v10 + 2) = *(v18 + 2);
          *v10 = v19;
          *v18 = v42;
          *(v18 + 2) = v44;
          v20 = v10 - v4 + 24;
          if (v20 >= 25)
          {
            v21 = (0xAAAAAAAAAAAAAAABLL * (v20 >> 3) - 2) >> 1;
            v22 = &v4[6 * v21];
            v23 = v10[5];
            if (v22[5] < v23)
            {
              v47 = *(v10 + 4);
              v46 = *v10;
              do
              {
                v24 = v22;
                v25 = *v22;
                *(v10 + 2) = *(v22 + 2);
                *v10 = v25;
                if (!v21)
                {
                  break;
                }

                v21 = (v21 - 1) >> 1;
                v22 = &v4[6 * v21];
                v10 = v24;
              }

              while (v22[5] < v23);
              *v24 = v46;
              *(v24 + 4) = v47;
              v24[5] = v23;
            }
          }
        }

        v3 = a1[2];
      }

      v35 = *a2;
      *(v3 - 8) = *(a2 + 2);
      *(v3 - 24) = v35;
      v36 = a1[1];
      v37 = a1[2];
      if (v37 - v36 >= 25)
      {
        v38 = (0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3) - 2) >> 1;
        v39 = (v36 + 24 * v38);
        v31 = *(v37 - 4);
        if (*(v39 + 5) < v31)
        {
          v40 = v37 - 24;
          v43 = *(v37 - 24);
          v45 = *(v37 - 8);
          do
          {
            v33 = v39;
            v41 = *v39;
            *(v40 + 16) = *(v39 + 2);
            *v40 = v41;
            if (!v38)
            {
              break;
            }

            v38 = (v38 - 1) >> 1;
            v39 = (v36 + 24 * v38);
            v40 = v33;
          }

          while (*(v39 + 5) < v31);
          goto LABEL_42;
        }
      }
    }
  }

  else
  {
    v6 = a1[3];
    if (v3 >= v6)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v4) >> 3);
      if (2 * v15 <= v5 + 1)
      {
        v16 = v5 + 1;
      }

      else
      {
        v16 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v26 = 8 * ((v3 - v4) >> 3);
      *v26 = *a2;
      *(v26 + 16) = *(a2 + 2);
      v8 = v26 + 24;
      v27 = (v26 - (v3 - v4));
      memcpy(v27, v4, v3 - v4);
      a1[1] = v27;
      a1[2] = v8;
      a1[3] = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v7 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v7;
      v8 = v3 + 24;
    }

    a1[2] = v8;
    v28 = a1[1];
    if (v8 - v28 >= 25)
    {
      v29 = (0xAAAAAAAAAAAAAAABLL * ((v8 - v28) >> 3) - 2) >> 1;
      v30 = (v28 + 24 * v29);
      v31 = *(v8 - 4);
      if (*(v30 + 5) < v31)
      {
        v32 = v8 - 24;
        v45 = *(v8 - 8);
        v43 = *(v8 - 24);
        do
        {
          v33 = v30;
          v34 = *v30;
          *(v32 + 16) = *(v30 + 2);
          *v32 = v34;
          if (!v29)
          {
            break;
          }

          v29 = (v29 - 1) >> 1;
          v30 = (v28 + 24 * v29);
          v32 = v33;
        }

        while (*(v30 + 5) < v31);
LABEL_42:
        *v33 = v43;
        *(v33 + 16) = v45;
        *(v33 + 20) = v31;
      }
    }
  }
}

void ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  ++*(*(*(a1 + 32) + 8) + 24);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), *a3, 532);
  v6 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(*(a1 + 56), Ptr);
  v7 = *(Ptr + 528);
  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *(Ptr + 528);
      if (*&v8 <= v7)
      {
        v10 = v7 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v7;
    }

    v11 = *(*(a1 + 64) + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (v12)
      {
        if (v9.u32[0] < 2uLL)
        {
          v13 = *&v8 - 1;
          while (1)
          {
            v15 = v12[1];
            if (v15 == v7)
            {
              if (*(v12 + 4) == v7)
              {
                goto LABEL_21;
              }
            }

            else if ((v15 & v13) != v10)
            {
              goto LABEL_22;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v14 = v12[1];
          if (v14 == v7)
          {
            if (*(v12 + 4) == v7)
            {
LABEL_21:
              v16 = 0;
              goto LABEL_23;
            }
          }

          else
          {
            if (v14 >= *&v8)
            {
              v14 %= *&v8;
            }

            if (v14 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_22:
  v16 = 1;
LABEL_23:
  v17 = *(a1 + 112);
  if (v17 == 0.0 || v6 <= v17)
  {
    if ((v16 & 1) == 0)
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 67109376;
        *&v25[4] = v7;
        *&v25[8] = 2048;
        *&v25[10] = v6;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", v25, 0x12u);
      }

      *__error() = v19;
    }

    *v25 = *(Ptr + 512);
    *&v25[16] = v7;
    *&v26 = v6;
    _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(*(a1 + 104), v25);
  }

  else
  {
    if ((v16 & 1) == 0)
    {
      v21 = *__error();
      v22 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 112);
        *v25 = 67109632;
        *&v25[4] = v7;
        *&v25[8] = 2048;
        *&v25[10] = v6;
        *&v25[18] = 2048;
        v26 = v23;
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", v25, 0x1Cu);
      }

      *__error() = v21;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE10aNNForTestEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvjfEj(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    operator new();
  }

  v6 = __si_assert_copy_extra_332();
  v7 = v6;
  v8 = "";
  if (v6)
  {
    v8 = v6;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v8);
  free(v7);
  if (__valid_fs(-1))
  {
    v9 = 2989;
  }

  else
  {
    v9 = 3072;
  }

  *v9 = -559038737;
  abort();
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 0x40000000;
    v15 = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE_block_invoke;
    v16 = &unk_1E8194F48;
    v17 = a9;
    operator new();
  }

  v9 = __si_assert_copy_extra_332();
  v10 = v9;
  v11 = "";
  if (v9)
  {
    v11 = v9;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v11);
  free(v10);
  if (__valid_fs(-1))
  {
    v12 = 2989;
  }

  else
  {
    v12 = 3072;
  }

  *v12 = -559038737;
  abort();
}

BOOL _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16restoreUpdateSetEP15PostingBaseInfoP14store_stream_t(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  vint32 = store_stream_read_vint32(a3);
  if (!vint32)
  {
LABEL_29:
    v5 = 1;
    goto LABEL_33;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v44 = 0;
    v43 = 0;
    memset(__dst, 0, sizeof(__dst));
    v41 = 0;
    CIReadPostings(a3, a2, &v43, &v41);
    v9 = *(a3 + 4);
    v10 = *(a3 + 5);
    if (v10 + 512 <= v9)
    {
      v11 = __dst;
      v12 = 512;
LABEL_6:
      memcpy(v11, (*(a3 + 6) + v10), v12);
      *(a3 + 5) = v10 + v12;
      goto LABEL_7;
    }

    v21 = *(a3 + 6);
    v22 = v9 - v10;
    if (v9 != v10)
    {
      memcpy(__dst, &v21[v10], v9 - v10);
      *(a3 + 5) = v9;
      v10 = v9;
    }

    v23 = prot_pread(*a3, v21, v10, *(a3 + 3));
    if (v23 != -1)
    {
      v24 = v23;
      *(a3 + 4) = v23;
      *(a3 + 5) = 0;
      v25 = *(a3 + 3) + v23;
      *(a3 + 3) = v25;
      if (!v23)
      {
        goto LABEL_7;
      }

      v11 = __dst + v22;
      v12 = 512 - v22;
      if (512 - v22 <= v24)
      {
        v10 = 0;
        goto LABEL_6;
      }

      __offseta = v25;
      v26 = v24;
      while (1)
      {
        v27 = *(a3 + 6);
        v28 = v11;
        v29 = v26;
        memcpy(v11, v27, v26);
        *(a3 + 5) = v29;
        v30 = prot_pread(*a3, v27, v29, __offseta);
        if (v30 == -1)
        {
          break;
        }

        v31 = v30;
        *(a3 + 4) = v30;
        *(a3 + 5) = 0;
        v32 = *(a3 + 3) + v30;
        *(a3 + 3) = v32;
        if (!v30)
        {
          goto LABEL_7;
        }

        v33 = v29;
        __offseta = v32;
        v10 = 0;
        v11 = &v28[v33];
        v12 -= v33;
        v26 = v31;
        if (v12 <= v31)
        {
          goto LABEL_6;
        }
      }
    }

    a3[4] = *__error();
LABEL_7:
    v13 = store_stream_read_vint32(a3);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = v43;
    v16 = v44;
    os_unfair_lock_lock((a1 + 144));
    v17 = *(a1 + 120);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(a1 + 136);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock((a1 + 144));
      inserted = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(inserted + 64) = v15;
      *(inserted + 65) = v16;
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 144));
      v20 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v20 + 64) = v15;
      *(v20 + 65) = v16;
    }

    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v7 = *(a1 + 76);
    v8 = *(a1 + 156);
    buf[0] = *(a1 + 160);
    buf[1] = v8;
    *&buf[2] = v7;
    data_map_restore_data(*(a1 + 176), v14, __dst, 0x200uLL, buf);
    v5 = ++v6 >= vint32;
    if (v6 == vint32)
    {
      goto LABEL_29;
    }
  }

  v34 = *__error();
  v35 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v46 = "restoreUpdateSet";
    v47 = 1024;
    v48 = 3162;
    _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: IVF restoreUpdateSet bad vectorID", buf, 0x12u);
  }

  *__error() = v34;
LABEL_33:
  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

_DWORD *_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, float a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v75 = a4;
  v74 = a5;
  if (*(a1 + 144) == 1)
  {
    v53 = __si_assert_copy_extra_332();
    v54 = v53;
    v55 = "";
    if (v53)
    {
      v55 = v53;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2608, "!readOnly", v55);
    goto LABEL_102;
  }

  if (!a2)
  {
    v56 = __si_assert_copy_extra_332();
    v57 = v56;
    v58 = "";
    if (v56)
    {
      v58 = v56;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2609, "vectorId > 0", v58);
    goto LABEL_95;
  }

  v8 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj(a1, a3, &v75, &v74, a2);
  v9 = v75;
  if (v75 == -1)
  {
    v59 = __si_assert_copy_extra_332();
    v54 = v59;
    v60 = "";
    if (v59)
    {
      v60 = v59;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2614, "partID != VECTOR_NOT_FOUND", v60);
    goto LABEL_102;
  }

  if (v8 != -1)
  {
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 32) + 16), v8, 532);
    if (Ptr[132] == a2)
    {
      goto LABEL_73;
    }

    v73 = 0;
    data = data_map_get_data(*(a1 + 128), a2, &v73);
    v12 = *__error();
    v13 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *__p = 136316162;
      *&__p[4] = "lookupForInsert";
      v79 = 1024;
      v80 = 2633;
      v81 = 1024;
      *v82 = a2;
      *&v82[4] = 2048;
      *&v82[6] = data;
      v83 = 2048;
      v84 = v73;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
    }

    *__error() = v12;
    if (v73 < 1)
    {
      v19 = *__error();
      v32 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v79 = 1024;
        v80 = 2642;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: vectorId is invalid", __p, 0x12u);
      }

      goto LABEL_45;
    }

    if (v73 == 512)
    {
      if (!data || !memcmp(data, a3, 0x200uLL))
      {
LABEL_46:
        v33 = data_map_get_data(*(a1 + 128), Ptr[132], &v73);
        v34 = *__error();
        v35 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v50 = Ptr[132];
          *__p = 136316162;
          *&__p[4] = "lookupForInsert";
          v79 = 1024;
          v80 = 2645;
          v81 = 1024;
          *v82 = v50;
          *&v82[4] = 2048;
          *&v82[6] = v33;
          v83 = 2048;
          v84 = v73;
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
        }

        *__error() = v34;
        if (v73 < 1)
        {
          v42 = *__error();
          v45 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v79 = 1024;
            v80 = 2654;
            _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId is invalid", __p, 0x12u);
          }
        }

        else
        {
          if (v73 != 512)
          {
            v70 = __si_assert_copy_extra_332();
            v54 = v70;
            v71 = "";
            if (v70)
            {
              v71 = v70;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2647, "size == D * sizeof(ELEM_TYPE)", v71);
            goto LABEL_102;
          }

          v36 = 512;
          if (!v33 || !memcmp(v33, Ptr, 0x200uLL))
          {
            goto LABEL_69;
          }

          v37 = *__error();
          v38 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v79 = 1024;
            v80 = 2649;
            _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
          }

          *__error() = v37;
          v39 = *__error();
          v40 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, v33, v73);
            v41 = v82[3] >= 0 ? __p : *__p;
            *buf = 136315138;
            v77 = v41;
            _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
            if ((v82[3] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          *__error() = v39;
          v42 = *__error();
          v43 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, Ptr, v73);
            v44 = v82[3] >= 0 ? __p : *__p;
            *buf = 136315138;
            v77 = v44;
            _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "vector in vector store: %s", buf, 0xCu);
            if ((v82[3] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }

        *__error() = v42;
        v36 = v73;
LABEL_69:
        if (!memcmp(a3, Ptr, v36))
        {
          v46 = *__error();
          v47 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            v51 = Ptr[132];
            *__p = 136315906;
            *&__p[4] = "lookupForInsert";
            v79 = 1024;
            v80 = 2657;
            v81 = 1024;
            *v82 = a2;
            *&v82[4] = 1024;
            *&v82[6] = v51;
            _os_log_fault_impl(&dword_1C278D000, v47, OS_LOG_TYPE_FAULT, "%s:%d: Dup vector with new vectorId=%u old=%u", __p, 0x1Eu);
          }

          *__error() = v46;
          goto LABEL_73;
        }

        v65 = __si_assert_copy_extra_332();
        v54 = v65;
        v66 = "";
        if (v65)
        {
          v66 = v65;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2656, "memcmp(vec.vec, entry->vec.vec, size) == 0", v66);
LABEL_102:
        free(v54);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v14 = *__error();
      v15 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v79 = 1024;
        v80 = 2637;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
      }

      *__error() = v14;
      v16 = *__error();
      v17 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, data, v73);
        v18 = v82[3] >= 0 ? __p : *__p;
        *buf = 136315138;
        v77 = v18;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
        if ((v82[3] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      *__error() = v16;
      v19 = *__error();
      v20 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, a3, v73);
        v21 = v82[3] >= 0 ? __p : *__p;
        *buf = 136315138;
        v77 = v21;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "vector passed in: %s", buf, 0xCu);
        if ((v82[3] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

LABEL_45:
      *__error() = v19;
      goto LABEL_46;
    }

    v67 = __si_assert_copy_extra_332();
    v57 = v67;
    v68 = "";
    if (v67)
    {
      v68 = v67;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2635, "size == D * sizeof(ELEM_TYPE)", v68);
LABEL_95:
    free(v57);
    if (__valid_fs(-1))
    {
      v69 = 2989;
    }

    else
    {
      v69 = 3072;
    }

    *v69 = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 96));
  v22 = *(a1 + 72);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = a3;
  v25 = *(a1 + 80);
  v24 = *(a1 + 88);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v26 = *(a1 + 32);
  OffsetFromEnd = vi_onefixedsize_memory_allocator::allocateOffsetFromEnd(*(v26 + 16), 0x214u);
  v28 = *(v26 + 24);
  if (OffsetFromEnd != v28)
  {
    v72 = *__error();
    v29 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v52 = *(v26 + 24);
      *__p = 136315906;
      *&__p[4] = "newEntry";
      v79 = 1024;
      v80 = 1909;
      v81 = 2048;
      *v82 = OffsetFromEnd;
      *&v82[8] = 1024;
      *&v82[10] = v52;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: offset: %llu, nVectors: %u", __p, 0x22u);
    }

    *__error() = v72;
    v28 = *(v26 + 24);
    if (OffsetFromEnd != v28)
    {
      v61 = __si_assert_copy_extra_332();
      v57 = v61;
      v62 = "";
      if (v61)
      {
        v62 = v61;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1912, "offset == nVectors", v62);
      goto LABEL_95;
    }
  }

  *(v26 + 24) = v28 + 1;
  v30 = vi_onefixedsize_memory_allocator::getPtr(*(v26 + 16), OffsetFromEnd, 532);
  memcpy(v30, v23, 0x200uLL);
  *(v30 + 512) = 0u;
  *(v30 + 528) = a2;
  if (*(v26 + 24) == 1)
  {
    *(v26 + 36) = a2;
  }

  *(v26 + 40) = a2;
  (*(*v25 + 56))(v25, v9, OffsetFromEnd, v74);
  v31 = *(a1 + 32);
  if (v25[18] != *(v31 + 24))
  {
    v63 = __si_assert_copy_extra_332();
    v54 = v63;
    v64 = "";
    if (v63)
    {
      v64 = v63;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2619, "cur.partitions->nVectors() == vectors->count()", v64);
    goto LABEL_102;
  }

  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v31 + 16), OffsetFromEnd, 532);
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_73:
  v48 = *MEMORY[0x1E69E9840];
  return Ptr;
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, int a5)
{
  os_unfair_lock_lock((a1 + 96));
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v14 = *a3;
  if (v14 == -1)
  {
    if (*(a1 + 140) != -1)
    {
      v19 = __si_assert_copy_extra_332();
      v20 = v19;
      v21 = "";
      if (v19)
      {
        v21 = v19;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2574, "mergeBeginVectorOffset == VECTOR_NOT_FOUND", v21);
      free(v20);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    (*(*v11 + 80))(&v35, v11, a2, 1);
    v15 = v35;
    if (v36 - v35 != 8)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2576, "topPartition.size() == 1", v24);
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

    v16 = *v35;
    *a3 = *v35;
    *a4 = v15[1];
    if (v16 >= _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1))
    {
      v26 = __si_assert_copy_extra_332();
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = "";
      }

      v29 = *a3;
      v30 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v31 = v13[19];
      v32 = (*(*v11 + 16))(v11);
      __message_assert("%s:%u: failed assertion '%s' %s Invalid partId %u >= %u (partitions: v%u quantizer v%u", "IVFVectorIndex.hh", 2581, "partID < nPartitions()", v28, v29, v30, v31, v32);
      free(v27);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v14 = *a3;
  }

  v35 = 0;
  v36 = &v35;
  v38 = -1;
  v37 = 0x2000000000;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 0x40000000;
  v33[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj_block_invoke;
  v33[3] = &unk_1E8194E68;
  v34 = a5;
  v33[6] = a4;
  v33[7] = a2;
  v33[4] = &v35;
  v33[5] = a1;
  (*(*v13 + 80))(v13, v14, v33);
  v17 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return v17;
}

unint64_t ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj_block_invoke(unint64_t result, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(result + 40);
  v5 = *a3;
  if (v5 >= *(v4 + 140))
  {
    goto LABEL_12;
  }

  v7 = result;
  v8 = **(result + 48);
  v9 = a3[1];
  v10 = v8 == v9;
  v11 = vabds_f32(v8, v9);
  v12 = fmaxf(fminf(fabsf(v9), fabsf(v8)) * 0.000015259, 0.000015259);
  if (v10 || v11 <= v12)
  {
    v14 = a4;
    v15 = *(result + 64);
    if (v15)
    {
      result = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 532);
      if (v15 != *(result + 528))
      {
        return result;
      }

      *&v5 = *a3;
    }

    v16 = *(v7 + 56);
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 532);
    result = memcmp(v16, Ptr, 0x200uLL);
    if (!result)
    {
      *(*(*(v7 + 32) + 8) + 24) = *a3;
      a4 = v14;
LABEL_12:
      *a4 = 1;
    }
  }

  return result;
}

void *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14storeUpdateSetEP15RelativePostingP14store_stream_t(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = store_stream_write_vint32(a3, *(*(a1 + 80) + 24));
  v7 = 0;
  v8 = *(a1 + 80);
  v9 = v8;
  while (v7 != *(v9 + 24))
  {
    v10 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(v8, v7);
    CIWritePostings(a3, a2, 0, (v10 + 512), 0, 0);
    v12 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 512 >= v12)
    {
      v14 = 512;
      v13 = v10;
      while (1)
      {
        v15 = v12 - v11;
        v16 = v13;
        memcpy((*(a3 + 6) + v11), v13, v12 - v11);
        *(a3 + 5) += v15;
        if (store_stream_flush(a3, 0))
        {
          break;
        }

        v13 = &v16[v15];
        v14 -= v15;
        v12 = *(a3 + 4);
        v11 = *(a3 + 5);
        if (v11 + v14 < v12)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      v13 = v10;
      v14 = 512;
LABEL_5:
      memcpy((*(a3 + 6) + v11), v13, v14);
      *(a3 + 5) += v14;
    }

    result = store_stream_write_vint32(a3, *(v10 + 528));
    ++v7;
    v9 = *(a1 + 80);
    if (v8 != v9)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1953, "store == other.store", v19);
      free(v18);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6renameEPKc(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = a2;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "rename: %s", &buf, 0xCu);
  }

  *__error() = v4;
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&buf, a2, v6);
  }

  buf.__r_.__value_.__s.__data_[v7] = 0;
  v21 = 11;
  strcpy(__s, ".partitions");
  memset(&__p, 0, sizeof(__p));
  v8 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = buf;
  }

  std::string::append(&__p, __s, 0xBuLL);
  if (v21 < 0)
  {
    operator delete(*__s);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_14:
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*v11 + 160))(v11, p_p);
  v13 = *(a1 + 80);
  memset(&buf, 0, sizeof(buf));
  if (*(v13 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *(v13 + 48), *(v13 + 56));
  }

  else
  {
    buf = *(v13 + 48);
  }

  MEMORY[0x1C691FAE0](v13 + 48, a2);
  v14 = *__error();
  v15 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__s, v13);
    v17 = v21 >= 0 ? __s : *__s;
    *v22 = 136315394;
    v23 = v16;
    v24 = 2080;
    v25 = v17;
    _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "rename VectorStore %s -> %s", v22, 0x16u);
    if (v21 < 0)
    {
      operator delete(*__s);
    }
  }

  *__error() = v14;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_43:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_44:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v18);
  v5 = *(a2 + 48);
  v4 = a2 + 48;
  v3 = v5;
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v6 >= 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = *(v4 + 8);
  }

  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, v7, v8);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "(", 1);
  v11 = MEMORY[0x1C691FC90](v10, *(v4 - 24));
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ")[", 2);
  v13 = MEMORY[0x1C691FC90](v12, *(v4 - 12));
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ",", 1);
  v15 = MEMORY[0x1C691FC90](v14, *(v4 - 8));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "]", 1);
  std::stringbuf::str();
  *&v18 = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v19 = v16;
  *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v24);
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE13makePurgeableEv(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *__error();
  v4 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v2);
    v5 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v5;
    _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "makePurgeable VectorStore %s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v3;
  os_unfair_lock_lock((a1 + 144));
  v6 = *(a1 + 120);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v8 + 128))(v8);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else if (!v6)
  {
LABEL_15:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

  (v6->__on_zero_shared)(v6);
  v10 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v6);
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12makeReadOnlyEv(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 192))
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(16);
    v3 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v2, (dword_1EBF46B0C < 3)))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* call makeReadOnly on readOnly index.", __p, 2u);
    }

    *__error() = v1;
    goto LABEL_19;
  }

  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(a1 + 48, 0);
  v5 = *(a1 + 80);
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(v5);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v5);
    v8 = v15 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v17 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "makeReadOnly VectorStore %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v11 + 120))(v11);
  *(a1 + 192) = 1;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else if (!v9)
  {
LABEL_19:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v9->__on_zero_shared)(v9);
  v13 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v9);
}

void _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(16);
    v4 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v3, (dword_1EBF46B0C < 3)))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C278D000, v3, v4, "*warn* call flush on readOnly index.", v10, 2u);
    }

    *__error() = v2;
  }

  else
  {
    *(*(*(a1 + 32) + 16) + 40) = 0;
    os_unfair_lock_lock((a1 + 96));
    v7 = *(a1 + 72);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 80);
    v8 = *(a1 + 88);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 96));
    (*(*v9 + 112))(v9, a2);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

int *_ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, a1);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "truncate VectorStore %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = __error();
  *result = v2;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE8truncateEv(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(16);
    v3 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v2, (dword_1EBF46B0C < 3)))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* call truncate on readOnly index.", v8, 2u);
    }

    *__error() = v1;
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(a1 + 48, 0);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(*(a1 + 80));
    os_unfair_lock_lock((a1 + 144));
    v5 = *(a1 + 120);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 128);
    v6 = *(a1 + 136);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 144));
    (*(*v7 + 136))(v7);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (!v5)
      {
        return;
      }
    }

    else if (!v5)
    {
      return;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6unlinkEv(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v4 + 184))(v4);
  v5 = *(a1 + 80);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v5);
    v8 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "unlink VectorStore %s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE7subvertEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 144));
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  os_unfair_lock_lock((a2 + 144));
  v7 = *(a2 + 120);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 128);
  v8 = *(a2 + 136);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a2 + 144));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  (*(*v6 + 176))(v6, v9);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14compactForTestEP22AnyVectorIndexInstancePVi(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "compactForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE14compactForTestIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_PVi(a1 + 48, a2 + 48);
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

int *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE7compactEP22AnyVectorIndexInstanceP12uint32_map_tP11TermIdStore18CICompactCallbacksPVi(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  v6 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = (*(*a1 + 24))(a1);
    v9 = (*(*a2 + 16))(a2);
    v10 = (*(*a2 + 24))(a2);
    *buf = 67109888;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "compact %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
  }

  result = __error();
  *result = v4;
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE4dumpEbbPViPvU13block_pointerFbjPKvybjfE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v22[0] = v12;
  v22[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
  }

  v14 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E8194E90;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; (v18)(v17, &v31, &i))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_s4nextEv(&v28, &v25);
    v31 = v28;
    v32 = v29;
    if (!v29)
    {
      break;
    }
  }

  std::queue<std::shared_ptr<AnyPartitionStore::Enumerator>>::~queue(v27);
  v15 = *(&v26 + 1);
  if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke()
{
  v0 = __si_assert_copy_extra_332();
  v1 = v0;
  v2 = "";
  if (v0)
  {
    v2 = v0;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2544, "0", v2);
  free(v1);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE17mergeIndexForTestEP22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeIndexForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10enumeratorEv(a2 + 48);
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
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

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10beginMergeEv(uint64_t a1)
{
  if (*(a1 + 140) != -1)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2846, "mergeBeginVectorOffset == VECTOR_NOT_FOUND", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
  *(a1 + 140) = result;
  return result;
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8endMergeEv(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 140) == -1)
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2851, "mergeBeginVectorOffset < VECTOR_NOT_FOUND", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  *(a1 + 140) = -1;
  v24 = 0;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  *v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v17);
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  (*(*v4 + 104))(v4, &v18, 0);
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  v7 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v6, v7))
  {
    std::stringbuf::str();
    v8 = v16 >= 0 ? &__p : __p;
    *buf = 136315138;
    v26 = v8;
    _os_log_impl(&dword_1C278D000, v6, v7, "%s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  *__error() = v5;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *&v17 = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v18 = v9;
  *(&v18 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  *(&v18 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1C691FE80](v23);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE21mergeUpdateSetForTestEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeUpdateSetForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
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

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfojy(_DWORD *result, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (result[2] != *(a2 + 8) || (v5 = result, *(result + 10) != *(a2 + 20)) || result[3] != *(a2 + 12) || result[4] != *(a2 + 16))
  {
    v17 = __si_assert_copy_extra_332();
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v19);
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

  if (dword_1EBF46B0C >= 5)
  {
    v21 = a2;
    v28 = a4;
    v22 = *__error();
    v23 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = (*(*v5 + 16))(v5);
      v25 = (*(*v5 + 24))(v5);
      v26 = (*(*v21 + 16))(v21);
      v27 = (*(*v21 + 24))(v21);
      __dst[0] = 67109888;
      __dst[1] = v24;
      LOWORD(__dst[2]) = 1024;
      *(&__dst[2] + 2) = v25;
      HIWORD(__dst[3]) = 1024;
      __dst[4] = v26;
      LOWORD(__dst[5]) = 1024;
      *(&__dst[5] + 2) = v27;
      _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "mergeUpdateSet(DocID) %u vectors in %u partitions and %u vectors in %u partitions", __dst, 0x1Au);
    }

    result = __error();
    *result = v22;
    a4 = v28;
    a2 = v21;
  }

  v7 = 0;
  v8 = *(a2 + 80);
  v9 = a4;
  while (v7 != *(v8 + 24))
  {
    v13 = *(_ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7) + 528);
    v14 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    memcpy(__dst, v14, sizeof(__dst));
    v15 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    if (*(v15 + 512))
    {
      if (*(v15 + 516))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = a5;
    }

    else
    {
      v10 = 0;
      v11 = v9;
    }

    inserted = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((v5 + 12), v13, __dst, 0xFFFFFFFF, 3.4028e38);
    result = vi_memory_postings::push_posting(a3, v10, inserted + 128, v11);
    ++v7;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfoP17TermIdContainer_s(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v15 = v7;
      v16[0] = 1024;
      *&v16[1] = v8;
      v16[3] = 1024;
      __src = v9;
      __src_4 = 1024;
      __src_6 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeUpdateSet(termIds) %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE5trainERKNSt3__16vectorIP22AnyVectorIndexInstanceNS5_9allocatorIS8_EEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == *a2)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3350, "vi.size() > 0", v4);
  }

  else
  {
    if (**a2 == a1)
    {
      operator new();
    }

    v5 = __si_assert_copy_extra_332();
    v3 = v5;
    v6 = "";
    if (v5)
    {
      v6 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3351, "this == vi[0]", v6);
  }

  free(v3);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE13insertForTestEjjPKv14vec_dimensions15vec_data_formatj(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  result = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38);
  if (result[130])
  {
    v9 = result[129] + 1;
  }

  else
  {
    result[130] = a7;
    v9 = 1;
  }

  result[129] = v9;
  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14insertForMergeEjtjPKv14vec_dimensions15vec_data_formatyjf(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a7 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a6] || vector_size_elem_sizes_15423[a7] != *(a1 + 16))
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return 1;
}

char *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12insertVectorEjjPKv14vec_dimensions15vec_data_format14docInvertStateyP15PostingBaseInfo(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7, uint64_t a8, char *a9)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v15);
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

  v11 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38) + 128;

  return vi_memory_postings::push_posting(a9, a7, v11, a8);
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE17bulkInsertForTestEPKvPKjjS8_(_DWORD *result, char *a2, int *a3, unsigned int a4, unsigned int *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = result;
    if (a4 <= 0x3E8)
    {
      v18 = a4;
      do
      {
        v21 = *a5++;
        v20 = v21;
        v23 = *a3++;
        v22 = v23;
        result = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((v8 + 12), v20, a2, 0xFFFFFFFF, 3.4028e38);
        if (result[130])
        {
          v19 = result[129] + 1;
        }

        else
        {
          result[130] = v22;
          v19 = 1;
        }

        result[129] = v19;
        a2 += 512;
        --v18;
      }

      while (v18);
    }

    else
    {
      v9 = 0;
      v10 = a4 / 0xA;
      v11 = a4;
      v12 = 1.0 / a4;
      do
      {
        v14 = v9 + 1;
        if (!((v9 + 1) % v10))
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v26 = ((v9 * 100.0) * v12);
            _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "bulkInsertForTest: %.0f%%", buf, 0xCu);
          }

          *__error() = v15;
        }

        v17 = a3[v9];
        result = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((v8 + 12), a5[v9], a2, 0xFFFFFFFF, 3.4028e38);
        if (result[130])
        {
          v13 = result[129] + 1;
        }

        else
        {
          result[130] = v17;
          v13 = 1;
        }

        result[129] = v13;
        a2 += 512;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6shadowEbPVi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 144));
  v6 = *(a1 + 120);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v8 + 168))(v8, a2, a3);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return 0;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12validAddressEPKv(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 144));
  v5 = *(a1 + 112);
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (*(a1 + 80) || v7 && ((*(*v7 + 144))(v7, a2) & 1) != 0 || v5 && ((*(*v5 + 56))(v5, a2) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      v8 = _ZNK16QuantizerManagerIDF16_Li256EE12validAddressEPKv(v10, a2);
    }

    else
    {
      v8 = 0;
    }
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return v8;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE8allExistEPKvj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= 0x3E8)
    {
      v12 = a3;
      while (_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE(a1 + 48, a2))
      {
        a2 += 512;
        if (!--v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = a3 / 0xA;
      v8 = 1.0 / a3;
      while (1)
      {
        v9 = v6 + 1;
        if (!((v6 + 1) % v7))
        {
          v10 = *__error();
          v11 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v19 = ((v6 * 100.0) * v8);
            _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "allExist: %.0f%%", buf, 0xCu);
          }

          *__error() = v10;
        }

        if (!_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE(a1 + 48, a2))
        {
          break;
        }

        a2 += 512;
        ++v6;
        if (a3 == v9)
        {
          goto LABEL_14;
        }
      }
    }

    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3331, "false", v17);
    free(v16);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return a3;
}

BOOL _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 3.4028e38;
  v25 = -1;
  v4 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj(a1, a2, &v25, &v24, 0);
  if (v4 == -1)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "exists";
      *&buf[12] = 1024;
      *&buf[14] = 2804;
      *&buf[18] = 1024;
      *&buf[20] = v25;
      LOWORD(v27[0]) = 2048;
      *(v27 + 2) = v24;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v7;
    os_unfair_lock_lock((a1 + 96));
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 80);
    v11 = *(a1 + 88);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 96));
    *buf = 0;
    *&buf[8] = buf;
    v27[0] = -1;
    *&buf[16] = 0x2000000000;
    v13 = v25;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke;
    v21[3] = &unk_1E8194E40;
    v21[5] = a1;
    v21[6] = a2;
    v22 = v25;
    v23 = v24;
    v21[4] = buf;
    (*(*v12 + 80))(v12, v25, v21);
    if (*(*&buf[8] + 24) == -1)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1174405120;
      v16[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke_303;
      v16[3] = &unk_1F427E158;
      v16[5] = a1;
      v16[6] = a2;
      v16[7] = v10;
      v17 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v12;
      v19 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v13;
      v16[4] = buf;
      (*(*v12 + 64))(v12, v16);
      v14 = v19;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v15 = v17;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    _Block_object_dispose(buf, 8);
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  result = v4 != -1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

int *___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(*(a1 + 40) + 32) + 16), *a3, 532);
  result = memcmp(v8, Ptr, 0x200uLL);
  if (!result)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = a3[1];
      v28 = 136315906;
      v29 = "exists_block_invoke";
      v30 = 1024;
      v31 = 2809;
      v32 = 1024;
      *v33 = a2;
      *&v33[4] = 2048;
      *&v33[6] = v18;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", &v28, 0x22u);
    }

    *__error() = v11;
    v13 = *__error();
    v14 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 56);
      v20 = *(a1 + 60);
      v28 = 136315906;
      v29 = "exists_block_invoke";
      v30 = 1024;
      v31 = 2810;
      v32 = 1024;
      *v33 = v19;
      *&v33[4] = 2048;
      *&v33[6] = v20;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", &v28, 0x22u);
    }

    *__error() = v13;
    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 60);
      v22 = a3[1];
      v23 = vabds_f32(v21, v22);
      if (v21 == v22)
      {
        v24 = 1;
        v25 = 1;
      }

      else
      {
        v26 = fabsf(v21);
        v27 = fabsf(v22);
        v24 = v23 <= fmaxf(fminf(v27, v26) * 0.000015259, 0.000015259);
        v25 = v23 <= (fmaxf(v26, v27) * 0.000015259);
      }

      v28 = 136317186;
      v29 = "exists_block_invoke";
      v30 = 1024;
      v31 = 2811;
      v32 = 2048;
      *v33 = v23;
      *&v33[8] = 2048;
      *&v33[10] = 0x3810000000000000;
      v34 = 2048;
      v35 = 0x3E80000000000000;
      v36 = 1024;
      v37 = v23 < 1.1755e-38;
      v38 = 1024;
      v39 = v23 < 0.00000011921;
      v40 = 1024;
      v41 = v24;
      v42 = 1024;
      v43 = v25;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: |distancesq - ve.distsq|=%e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &v28, 0x48u);
    }

    result = __error();
    *result = v15;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke_303(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 532);
  if (!memcmp(v8, Ptr, 0x200uLL))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v42 = a3[1];
      *buf = 136315906;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2819;
      v102 = 1024;
      v103 = a2;
      v104 = 2048;
      *v105 = v42;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v11;
    v13 = *(a1 + 48);
    v14 = (*(**(a1 + 56) + 72))(*(a1 + 56), *(a1 + 88));
    v15 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(v13, v14);
    v16 = *__error();
    v17 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 88);
      *buf = 136315906;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2821;
      v102 = 1024;
      v103 = v43;
      v104 = 2048;
      *v105 = v15;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", buf, 0x22u);
    }

    *__error() = v16;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v18 = *(a1 + 48);
    (*(**(a1 + 56) + 80))(&v95);
    v19 = *__error();
    v20 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v44 = *v95;
      v45 = *(v95 + 1);
      v46 = *(v95 + 2);
      v47 = *(v95 + 3);
      v48 = v45 == v47 || vabds_f32(v45, v47) <= fmaxf(fminf(fabsf(v47), fabsf(v45)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2823;
      v102 = 1024;
      v103 = v44;
      v104 = 2048;
      *v105 = v45;
      *&v105[8] = 1024;
      *&v105[10] = v46;
      v106 = 2048;
      v107 = v47;
      v108 = 1024;
      LODWORD(v109) = v48;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v19;
    v21 = *__error();
    v22 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v49 = *v95;
      v50 = *(v95 + 2);
      v51 = *(v95 + 1) == *(v95 + 3);
      *buf = 136316162;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2824;
      v102 = 1024;
      v103 = v49;
      v104 = 1024;
      *v105 = v50;
      *&v105[4] = 1024;
      *&v105[6] = v51;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v21;
    v23 = *__error();
    v24 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v52 = *v95;
      v53 = *(v95 + 2);
      v54 = *(v95 + 1) < *(v95 + 3);
      *buf = 136316162;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2825;
      v102 = 1024;
      v103 = v52;
      v104 = 1024;
      *v105 = v53;
      *&v105[4] = 1024;
      *&v105[6] = v54;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v23;
    v25 = *__error();
    v26 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v55 = *v95;
      v56 = *(v95 + 2);
      v57 = *(v95 + 1) > *(v95 + 3);
      *buf = 136316162;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2826;
      v102 = 1024;
      v103 = v55;
      v104 = 1024;
      *v105 = v56;
      *&v105[4] = 1024;
      *&v105[6] = v57;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v25;
    v27 = *__error();
    v28 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v58 = *v95;
      v59 = *(v95 + 2);
      v60 = *(v95 + 1);
      v61 = *(v95 + 3);
      v62 = (v60 - v61);
      v63 = vabds_f32(v60, v61);
      if (v60 == v61)
      {
        v64 = 1;
        v65 = 1;
      }

      else
      {
        v88 = fabsf(v60);
        v89 = fabsf(v61);
        v64 = v63 <= fmaxf(fminf(v89, v88) * 0.000015259, 0.000015259);
        v65 = v63 <= (fmaxf(v88, v89) * 0.000015259);
      }

      *buf = 136317698;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2827;
      v102 = 1024;
      v103 = v58;
      v104 = 1024;
      *v105 = v59;
      *&v105[4] = 2048;
      *&v105[6] = v62;
      v106 = 2048;
      v107 = 1.17549435e-38;
      v108 = 2048;
      v109 = 0x3E80000000000000;
      v110 = 1024;
      v111 = v63 < 1.1755e-38;
      v112 = 1024;
      v113 = v63 < 0.00000011921;
      v114 = 1024;
      v115 = v64;
      v116 = 1024;
      v117 = v65;
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v27;
    v93 = 0;
    v94 = 0;
    __p = 0;
    v29 = *(a1 + 56);
    v30 = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 532);
    (*(*v29 + 80))(&__p, v29, v30, 2);
    v31 = *__error();
    v32 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v66 = *__p;
      v67 = *(__p + 1);
      v68 = *(__p + 2);
      v69 = *(__p + 3);
      v70 = v67 == v69 || vabds_f32(v67, v69) <= fmaxf(fminf(fabsf(v69), fabsf(v67)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2830;
      v102 = 1024;
      v103 = v66;
      v104 = 2048;
      *v105 = v67;
      *&v105[8] = 1024;
      *&v105[10] = v68;
      v106 = 2048;
      v107 = v69;
      v108 = 1024;
      LODWORD(v109) = v70;
      _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(entry->vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v31;
    v33 = *__error();
    v34 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v71 = *__p;
      v72 = *(__p + 2);
      v73 = *(__p + 1) == *(__p + 3);
      *buf = 136316162;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2831;
      v102 = 1024;
      v103 = v71;
      v104 = 1024;
      *v105 = v72;
      *&v105[4] = 1024;
      *&v105[6] = v73;
      _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v33;
    v35 = *__error();
    v36 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v74 = *__p;
      v75 = *(__p + 2);
      v76 = *(__p + 1) < *(__p + 3);
      *buf = 136316162;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2832;
      v102 = 1024;
      v103 = v74;
      v104 = 1024;
      *v105 = v75;
      *&v105[4] = 1024;
      *&v105[6] = v76;
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v35;
    v37 = *__error();
    v38 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v77 = *__p;
      v78 = *(__p + 2);
      v79 = *(__p + 1) > *(__p + 3);
      *buf = 136316162;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2833;
      v102 = 1024;
      v103 = v77;
      v104 = 1024;
      *v105 = v78;
      *&v105[4] = 1024;
      *&v105[6] = v79;
      _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v37;
    v39 = *__error();
    v40 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v80 = *__p;
      v81 = *(__p + 2);
      v82 = *(__p + 1);
      v83 = *(__p + 3);
      v84 = vabds_f32(v82, v83);
      v85 = (v82 - v83) < 1.1755e-38;
      if (v82 == v83)
      {
        v86 = 1;
        v87 = 1;
      }

      else
      {
        v90 = fabsf(v82);
        v91 = fabsf(v83);
        v86 = v84 <= fmaxf(fminf(v91, v90) * 0.000015259, 0.000015259);
        v87 = v84 <= (fmaxf(v90, v91) * 0.000015259);
      }

      *buf = 136317698;
      v99 = "exists_block_invoke";
      v100 = 1024;
      v101 = 2834;
      v102 = 1024;
      v103 = v80;
      v104 = 1024;
      *v105 = v81;
      *&v105[4] = 2048;
      *&v105[6] = v84;
      v106 = 2048;
      v107 = 1.17549435e-38;
      v108 = 2048;
      v109 = 0x3E80000000000000;
      v110 = 1024;
      v111 = v85;
      v112 = 1024;
      v113 = v84 < 0.00000011921;
      v114 = 1024;
      v115 = v86;
      v116 = 1024;
      v117 = v87;
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v39;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
    if (__p)
    {
      v93 = __p;
      operator delete(__p);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F427D9E8;
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F427D9E8;
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void IVFVectorIndexUpdateSet::~IVFVectorIndexUpdateSet(IVFVectorIndexUpdateSet *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B0C >= 5)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = this;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "Delete <UpdateSet> %p", &v5, 0xCu);
    }

    *__error() = v3;
  }

  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>>>::destroy(*(this + 1));
  v2 = *MEMORY[0x1E69E9840];
}

void *IVFVectorIndexUpdateSet::getVectorIndex(void *result, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v9 = *(a2 + 8);
  v7 = (a2 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = a7 | (2 * (((a5 & 3) << 50) | ((a6 & 3) << 48) | (a4 << 32) | a3));
  v11 = v7;
  do
  {
    v12 = v8[4];
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v8;
    }

    v8 = v8[v14];
  }

  while (v8);
  if (v11 != v7 && v10 >= v11[4])
  {
    v15 = v11[5];
    if (*(v15 + 8) != a3 || *(v15 + 20) != a4 || a6 > 2 || *(v15 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(v15 + 16) || *(v15 + 22) != a7)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3807, "it->second->isCompatible(propertyId, vecVersion, dim, form, purgeable)", v19);
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

    v16 = v11[6];
    *result = v15;
    result[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void __vectorIndexANN_block_invoke(uint64_t a1, uint64_t *a2, size_t size, float a4)
{
  v4 = *(a1 + 32);
  if ((*v4 & 1) == 0)
  {
    v22 = __si_assert_copy_extra_332();
    v23 = v22;
    v24 = "";
    if (v22)
    {
      v24 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 338, "oqueue->has_meta", v24);
    free(v23);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v6 = *a2;
  if (*(v4 + 56))
  {
    if (*(v4 + 64) < (v6 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v25 = __si_assert_copy_extra_332();
      v9 = v25;
      v10 = "";
      if (v25)
      {
        v10 = v25;
      }

      v11 = "!queue->split || queue->splitPoint >= offset_with_meta_t_GET_VALUE(value)";
LABEL_26:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 250, v11, v10);
      free(v9);
      if (__valid_fs(-1))
      {
        v26 = 2989;
      }

      else
      {
        v26 = 3072;
      }

      *v26 = -559038737;
      abort();
    }

    v7 = *(v4 + 32);
    if (v7 >= *(v4 + 24))
    {
      v8 = __si_assert_copy_extra_332();
      v9 = v8;
      v10 = "";
      if (v8)
      {
        v10 = v8;
      }

      v11 = "!queue->split";
      goto LABEL_26;
    }
  }

  else
  {
    v12 = *(v4 + 24);
    v7 = *(v4 + 32);
    if (v7 >= v12)
    {
      v13 = a4;
      v14 = 2 * v12;
      if (!v12)
      {
        v14 = 4;
      }

      *(v4 + 24) = v14;
      v15 = *(v4 + 16);
      v16 = 16 * v14;
      if (v15)
      {
        v17 = malloc_type_zone_realloc(queryZone, v15, v16, 0xA1A7ADA0uLL);
      }

      else
      {
        v17 = malloc_type_zone_malloc(queryZone, v16, 0x566E289CuLL);
      }

      v18 = v17;
      a4 = v13;
      if (!v17)
      {
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
        a4 = v13;
        if (v19)
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          a4 = v13;
        }
      }

      *(v4 + 16) = v18;
      v7 = *(v4 + 32);
    }
  }

  v20 = *(v4 + 16);
  *(v4 + 32) = v7 + 1;
  v21 = (v20 + 16 * v7);
  *v21 = v6;
  v21[1] = LODWORD(a4) | (size << 32);
}

unint64_t dumpVectorIndex(void *a1, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (__THREAD_SLOT_KEY)
  {
    v8 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    makeThreadId();
    v8 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v8)
    {
LABEL_47:
      makeThreadId();
      v8 = pthread_getspecific(__THREAD_SLOT_KEY);
      v30 = 0;
      if (!v8)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v8 >= 0x801)
  {
    goto LABEL_47;
  }

  v30 = 0;
LABEL_5:
  if (v8 <= 0x800)
  {
    v9 = &threadData[9 * v8];
    v30 = *(v9 - 11);
    *(v9 - 11) = 1;
  }

LABEL_7:
  v10 = a1[19];
  v34 = a1;
  v37 = a1 + 20;
  if (v10 != a1 + 20)
  {
    v35 = a1 + 16;
    v11 = "centroids";
    if (!a2)
    {
      v11 = "";
    }

    v31 = v11;
    v32 = a1 + 1;
    v36 = a3;
    v33 = a5;
    do
    {
      if (*a3)
      {
        break;
      }

      v12 = v10[5];
      v13 = *(v12 + 12);
      switch(v13)
      {
        case 256:
          v14 = 0;
          break;
        case 768:
          v14 = 2;
          break;
        case 512:
          v14 = 1;
          break;
        default:
          v14 = 3;
          break;
      }

      v15 = *(v12 + 8);
      v16 = *(v12 + 20);
      v17 = *(v12 + 16);
      if (v17 == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }

      if (v17 == 4)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      v20 = *(v12 + 22);
      v21 = *__error();
      v22 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v35;
        if (*(v34 + 151) < 0)
        {
          v23 = *v35;
        }

        (*(*v12 + 312))(__p, v12, v34 + 13);
        v24 = __p;
        if (v47 < 0)
        {
          v24 = __p[0];
        }

        *buf = 136316162;
        v49 = v23;
        v50 = 2048;
        v51 = v32;
        v52 = 2080;
        v53 = v24;
        v54 = 2080;
        v55 = "";
        v56 = 2080;
        v57 = v31;
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "[%s] dump %p %s %s %s", buf, 0x34u);
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        a5 = v33;
      }

      a3 = v36;
      *__error() = v21;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 0x40000000;
      v40[2] = ___ZN16IVFVectorIndex_s4dumpEbbPViPvU13block_pointerFbjtjPKv14vec_dimensions15vec_data_formatybjfbE_block_invoke;
      v40[3] = &unk_1E8194D78;
      v40[4] = a5;
      v44 = v16;
      v41 = v15;
      v42 = v14;
      v43 = v19;
      v45 = v20;
      (*(*v12 + 128))(v12, 0, a2, v36, a4, v40);
      v25 = v10[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v10[2];
          v27 = *v26 == v10;
          v10 = v26;
        }

        while (!v27);
      }

      v10 = v26;
    }

    while (v26 != v37);
  }

  if (__THREAD_SLOT_KEY)
  {
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
      goto LABEL_50;
    }
  }

  else
  {
    makeThreadId();
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
LABEL_50:
      makeThreadId();
      result = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!result)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }
  }

  if (result >= 0x801)
  {
    goto LABEL_50;
  }

LABEL_43:
  if (result <= 0x800)
  {
    *(&threadData[9 * result - 5] - 1) = v30;
  }

LABEL_45:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN16IVFVectorIndex_s4dumpEbbPViPvU13block_pointerFbjtjPKv14vec_dimensions15vec_data_formatybjfbE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v8 = *(a1 + 54);
  HIDWORD(v7) = a6;
  LOBYTE(v7) = a5;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 40), *(a1 + 52), a2, a3, *(a1 + 44), *(a1 + 48), a4, v7, v8);
}

void ___ZN16IVFVectorIndex_s20completeChangePrefixEiPKcS1_S1__block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, const void **a7, uint64_t a8, char a9)
{
  v9 = *(a7 + 23);
  if (v9 >= 0)
  {
    v10 = *(a7 + 23);
  }

  else
  {
    v10 = a7[1];
  }

  if (v10 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_46;
  }

  if (v10 + 7 >= 0x17)
  {
    operator new();
  }

  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  HIBYTE(v39) = v10 + 7;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v15 = a7;
    }

    else
    {
      v15 = *a7;
    }

    memmove(v38, v15, v10);
  }

  strcpy(v38 + v10, ".shadow");
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  v16 = *(a1 + 32);
  v17 = strlen(v16);
  if (v17 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_46:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  v34 = v17;
  if (v17)
  {
    memmove(__dst, v16, v17);
  }

  *(__dst + v18) = 0;
  IVFIndexName(&v40, a2, a3, a4, a5, a6);
  if ((v34 & 0x80u) == 0)
  {
    v19 = __dst;
  }

  else
  {
    v19 = __dst[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v20 = v34;
  }

  else
  {
    v20 = __dst[1];
  }

  v21 = std::string::insert(&v40, 0, v19, v20);
  v22 = v21->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (a9)
  {
    v23 = ".partitions.shadow";
  }

  else
  {
    v23 = ".shadow";
  }

  v24 = std::string::append(&v35, v23);
  v25 = v24->__r_.__value_.__r.__words[2];
  *__p = *&v24->__r_.__value_.__l.__data_;
  v37 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__dst[0]);
LABEL_31:
  if (v39 >= 0)
  {
    v26 = v38;
  }

  else
  {
    v26 = v38[0];
  }

  LODWORD(v27) = SHIBYTE(v37);
  v28 = __p[0];
  v29 = fd_create_protected(*(a1 + 40), v26, 0, 0);
  if (v29)
  {
    if (v27 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = v28;
    }

    v27 = v29;
    fd_rename(v29, v30);
    fd_release(v27);
    LOBYTE(v27) = HIBYTE(v37);
  }

  if ((v27 & 0x80) == 0)
  {
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(v38[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_45;
  }
}

void ___ZN16IVFVectorIndex_s20completeChangePrefixEiPKcS1_S1__block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, const void **a7, uint64_t a8, char a9)
{
  v9 = *(a7 + 23);
  if (v9 >= 0)
  {
    v10 = *(a7 + 23);
  }

  else
  {
    v10 = a7[1];
  }

  if (v10 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_46;
  }

  if (v10 + 7 >= 0x17)
  {
    operator new();
  }

  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  HIBYTE(v39) = v10 + 7;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v15 = a7;
    }

    else
    {
      v15 = *a7;
    }

    memmove(v38, v15, v10);
  }

  strcpy(v38 + v10, ".shadow");
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  v16 = *(a1 + 32);
  v17 = strlen(v16);
  if (v17 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_46:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  v34 = v17;
  if (v17)
  {
    memmove(__dst, v16, v17);
  }

  *(__dst + v18) = 0;
  IVFIndexName(&v40, a2, a3, a4, a5, a6);
  if ((v34 & 0x80u) == 0)
  {
    v19 = __dst;
  }

  else
  {
    v19 = __dst[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v20 = v34;
  }

  else
  {
    v20 = __dst[1];
  }

  v21 = std::string::insert(&v40, 0, v19, v20);
  v22 = v21->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (a9)
  {
    v23 = ".partitions.shadow";
  }

  else
  {
    v23 = ".shadow";
  }

  v24 = std::string::append(&v35, v23);
  v25 = v24->__r_.__value_.__r.__words[2];
  *__p = *&v24->__r_.__value_.__l.__data_;
  v37 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__dst[0]);
LABEL_31:
  if (v39 >= 0)
  {
    v26 = v38;
  }

  else
  {
    v26 = v38[0];
  }

  LODWORD(v27) = SHIBYTE(v37);
  v28 = __p[0];
  v29 = fd_create_protected(*(a1 + 40), v26, 0, 0);
  if (v29)
  {
    if (v27 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = v28;
    }

    v27 = v29;
    fd_rename(v29, v30);
    fd_release(v27);
    LOBYTE(v27) = HIBYTE(v37);
  }

  if ((v27 & 0x80) == 0)
  {
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(v38[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_45;
  }
}

void ___ZN16IVFVectorIndex_s12changePrefixEPKc_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, const void **a7, uint64_t a8, char a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = *(a7 + 23);
  if (v9 >= 0)
  {
    v10 = *(a7 + 23);
  }

  else
  {
    v10 = a7[1];
  }

  if (v10 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_52;
  }

  v15 = *(a1 + 32);
  if (v10 + 7 >= 0x17)
  {
    operator new();
  }

  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  HIBYTE(v44) = v10 + 7;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v16 = a7;
    }

    else
    {
      v16 = *a7;
    }

    memmove(v43, v16, v10);
  }

  strcpy(v43 + v10, ".shadow");
  __p[0] = 0;
  __p[1] = 0;
  v42 = 0;
  v17 = *(a1 + 40);
  v18 = strlen(v17);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_52:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v39 = v18;
  if (v18)
  {
    memmove(__dst, v17, v18);
  }

  *(__dst + v19) = 0;
  IVFIndexName(&v45, a2, a3, a4, a5, a6);
  if ((v39 & 0x80u) == 0)
  {
    v20 = __dst;
  }

  else
  {
    v20 = __dst[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v21 = v39;
  }

  else
  {
    v21 = __dst[1];
  }

  v22 = std::string::insert(&v45, 0, v20, v21);
  v23 = v22->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (a9)
  {
    v24 = ".partitions.shadow";
  }

  else
  {
    v24 = ".shadow";
  }

  v25 = std::string::append(&v40, v24);
  v26 = v25->__r_.__value_.__r.__words[2];
  *__p = *&v25->__r_.__value_.__l.__data_;
  v42 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__dst[0]);
LABEL_31:
  v27 = *__error();
  v28 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v15 + 30;
    if (*(v15 + 143) < 0)
    {
      v29 = *v29;
    }

    v30 = v43;
    if (v44 < 0)
    {
      v30 = v43[0];
    }

    v31 = __p;
    if (v42 < 0)
    {
      v31 = __p[0];
    }

    LODWORD(v45.__r_.__value_.__l.__data_) = 136315650;
    *(v45.__r_.__value_.__r.__words + 4) = v29;
    WORD2(v45.__r_.__value_.__r.__words[1]) = 2080;
    *(&v45.__r_.__value_.__r.__words[1] + 6) = v30;
    HIWORD(v45.__r_.__value_.__r.__words[2]) = 2080;
    v46 = v31;
    _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "[%s] rename file: %s to %s", &v45, 0x20u);
  }

  *__error() = v27;
  if (v44 >= 0)
  {
    v33 = v43;
  }

  else
  {
    v33 = v43[0];
  }

  if (v42 >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  IVFVectorIndex_s::rename(*v15, v33, v34, v32);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_51:
    operator delete(v43[0]);
    goto LABEL_47;
  }

  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_51;
  }

LABEL_47:
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t truncateVectorIndex(uint64_t result)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(result + 152);
  v2 = (result + 160);
  if (v1 != (result + 160))
  {
    v3 = result;
    v4 = (result + 128);
    do
    {
      v5 = v1[5];
      v6 = *__error();
      v7 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v4;
        if (*(v3 + 151) < 0)
        {
          v8 = *v4;
        }

        (*(*v5 + 312))(__p, v5, v3 + 104);
        v9 = __p;
        if (v15 < 0)
        {
          v9 = __p[0];
        }

        *buf = 136315394;
        v17 = v8;
        v18 = 2080;
        v19 = v9;
        _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "[%s] truncate %s", buf, 0x16u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v6;
      result = (*(*v5 + 176))(v5);
      v10 = v1[1];
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
          v11 = v1[2];
          v12 = *v11 == v1;
          v1 = v11;
        }

        while (!v12);
      }

      v1 = v11;
    }

    while (v11 != v2);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void indexFileName(std::string *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7)
{
  IVFIndexName(&v13, a3, a4, a5, a6, a7);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::insert(&v13, 0, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t vectorIndexValidAddress(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = (a1 + 160);
  if (v2 == (a1 + 160))
  {
    return 0;
  }

  do
  {
    result = (*(*v2[5] + 40))(v2[5], a2);
    if (result)
    {
      break;
    }

    v6 = v2[1];
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
        v7 = v2[2];
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v2 = v7;
  }

  while (v7 != v3);
  return result;
}

uint64_t processVectorIndexDumpContexts(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    goto LABEL_32;
  }

  v7 = result;
  v53 = 0;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  *__p = 0u;
  v50 = 0u;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  v46 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v46);
  if (a3 >= 1)
  {
    v8 = *a4;
    if (*a4)
    {
      v11 = *(v8 + 96);
      v9 = v8 + 96;
      v10 = v11;
      v12 = *(v9 + 23);
      v13 = (v12 >= 0 ? v9 : v10);
      v14 = v12 >= 0 ? *(v9 + 23) : *(v9 + 8);
    }

    else
    {
      v13 = "<null>";
      v14 = 6;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, v13, v14);
    v15 = a3 - 1;
    if (a3 != 1)
    {
      v33 = a4 + 1;
      do
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, ", ", 2);
        v36 = *v33;
        if (*v33)
        {
          v39 = *(v36 + 96);
          v37 = v36 + 96;
          v38 = v39;
          v40 = *(v37 + 23);
          if (v40 >= 0)
          {
            v34 = v37;
          }

          else
          {
            v34 = v38;
          }

          if (v40 >= 0)
          {
            v35 = *(v37 + 23);
          }

          else
          {
            v35 = *(v37 + 8);
          }
        }

        else
        {
          v34 = "<null>";
          v35 = 6;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, v34, v35);
        ++v33;
        --v15;
      }

      while (v15);
    }
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v7 + 8;
    v19 = (v7 + 128);
    if (*(v7 + 151) < 0)
    {
      v19 = *v19;
    }

    v20 = &v45;
    IVFVectorIndex_s::name(&v45, v18);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v45.__r_.__value_.__r.__words[0];
    }

    std::stringbuf::str();
    if (v44 >= 0)
    {
      v21 = &v43;
    }

    else
    {
      v21 = v43;
    }

    *buf = 136316162;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    *&buf[22] = 2080;
    v55 = v20;
    v56 = 2048;
    v57 = a2;
    v58 = 2080;
    v59 = v21;
    _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "[%s] processVectorIndexDumpContexts: %p %s %lu [%s]", buf, 0x34u);
    if (v44 < 0)
    {
      operator delete(v43);
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v45.__r_.__value_.__l.__data_);
  }

LABEL_22:
  *__error() = v16;
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  if (a3 >= 1)
  {
    v22 = 0;
    do
    {
      v42 = v22;
      v23 = a4[v22];
      if (v23)
      {
        v24 = *(v23 + 144);
        if (v24 != v23 + 152)
        {
          v25 = *(v24 + 32) & 0xFFFFFFFFFFFFFFFELL;
          operator new();
        }
      }

      ++v22;
    }

    while (v42 + 1 != a3);
    v26 = *buf;
    if (*buf != &buf[8])
    {
      do
      {
        v29 = v26[5];
        if (v26[6] != v29)
        {
          (*(**v29 + 88))(*v29, v26 + 5);
        }

        v30 = v26[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v26[2];
            v32 = *v31 == v26;
            v26 = v31;
          }

          while (!v32);
        }

        v26 = v31;
      }

      while (v31 != &buf[8]);
    }
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(*&buf[8]);
  *&v46 = *MEMORY[0x1E69E54D8];
  v27 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v46 + *(v46 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v47 = v27;
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v48);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1C691FE80](v52);
LABEL_32:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

unint64_t vectorIndexFinalizeMerge()
{
  if (__THREAD_SLOT_KEY)
  {
    v0 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    makeThreadId();
    v0 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v0)
    {
LABEL_14:
      makeThreadId();
      v0 = pthread_getspecific(__THREAD_SLOT_KEY);
      v1 = 0;
      if (!v0)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v0 >= 0x801)
  {
    goto LABEL_14;
  }

  v1 = 0;
LABEL_5:
  if (v0 <= 0x800)
  {
    v2 = &threadData[9 * v0];
    v1 = *(v2 - 11);
    *(v2 - 11) = 1;
  }

LABEL_7:
  if (__THREAD_SLOT_KEY)
  {
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    makeThreadId();
    result = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!result)
    {
LABEL_17:
      makeThreadId();
      result = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!result)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if (result >= 0x801)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (result <= 0x800)
  {
    *(&threadData[9 * result - 5] - 1) = v1;
  }

  return result;
}

char *__vectorIndexDiagnoseDump_block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = db_get_field_name_for_id(*(a1 + 32), a2);
  if (!result)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 32);
      v9 = 136315906;
      v10 = "vectorIndexDiagnoseDump_block_invoke";
      v11 = 1024;
      v12 = 482;
      v13 = 2048;
      v14 = v8;
      v15 = 1024;
      v16 = a2;
      _os_log_fault_impl(&dword_1C278D000, v6, OS_LOG_TYPE_FAULT, "%s:%d: db_get_field_name_for_id(%p, %u) return NULL", &v9, 0x22u);
    }

    *__error() = v5;
    result = "<NULL>";
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL processContext(CFDictionaryRef theDict, uint64_t *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = theDict;
    v3 = *(a2 + 7);
    if ((v3 & 0x10000) != 0)
    {
      if (theDict && CFDictionaryGetCount(theDict))
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v7 = getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr;
        v41 = getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr;
        if (!getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL44getkQPQueryParserOptionU2EnabledKeySymbolLocv_block_invoke;
          v48 = &unk_1E8199698;
          *v49 = &v38;
          ParserLibrary = QueryParserLibrary();
          v9 = dlsym(ParserLibrary, "kQPQueryParserOptionU2EnabledKey");
          *(*(*v49 + 8) + 24) = v9;
          getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr = *(*(*v49 + 8) + 24);
          v7 = *(v39 + 24);
        }

        _Block_object_dispose(&v38, 8);
        if (!v7)
        {
          v34 = [MEMORY[0x1E696AAA8] currentHandler];
          [v34 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQueryParserOptionU2EnabledKey()") description:{@"PRQUUtils.mm", 16, @"%s", dlerror()}];
          goto LABEL_47;
        }

        if ([CFDictionaryGetValue(v2 *v7)])
        {
          v4 = 0x10000;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }

      v5 = a2;
      v3 = *(a2 + 7);
    }

    else
    {
      v4 = 0;
      v5 = a2;
    }

    *(v5 + 7) = v3 & 0xFFFEFFFF | v4;
    if ((v3 & 0x20000) == 0)
    {
      result = 1;
      goto LABEL_44;
    }

    if (!v2)
    {
      goto LABEL_42;
    }

    if (!CFDictionaryGetCount(v2))
    {
LABEL_37:
      v2 = 0;
      v28 = a2;
      *(a2 + 7) &= ~0x20000u;
LABEL_43:
      v28[2] = v2;
      result = *(v28 + 12) != 0;
      goto LABEL_44;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v10 = getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr;
    v41 = getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr;
    if (!getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL46getkQPQueryParserOptionUseLLMParseKeySymbolLocv_block_invoke;
      v48 = &unk_1E8199698;
      *v49 = &v38;
      v11 = QueryParserLibrary();
      v12 = dlsym(v11, "kQPQueryParserOptionUseLLMParseKey");
      *(*(*v49 + 8) + 24) = v12;
      getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr = *(*(*v49 + 8) + 24);
      v10 = *(v39 + 24);
    }

    _Block_object_dispose(&v38, 8);
    if (v10)
    {
      if ([CFDictionaryGetValue(v2 *v10)])
      {
        TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(v2);
        if (TokensInfoFromQueryUnderstanding)
        {
          v14 = TokensInfoFromQueryUnderstanding;
          if (CFArrayGetCount(TokensInfoFromQueryUnderstanding) >= 1)
          {
            LLMParseFromQueryUnderstanding = getLLMParseFromQueryUnderstanding(v2);
            if (LLMParseFromQueryUnderstanding)
            {
              v15 = 0;
              v17 = *a2;
              v16 = a2[1];
              while (v15 < CFArrayGetCount(v14))
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
                TopTokenIDFromTokenInfo = getTopTokenIDFromTokenInfo(ValueAtIndex);
                TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(ValueAtIndex);
                v22 = v20;
                if (TokenRangeFromTokenInfo == 0x7FFFFFFFFFFFFFFFLL || TokenRangeFromTokenInfo + v20 > [(NSAttributedString *)LLMParseFromQueryUnderstanding length])
                {
                  v23 = *__error();
                  v24 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    v25 = "Unknown";
                    if (TopTokenIDFromTokenInfo <= 0xD2)
                    {
                      v25 = off_1E8196D10[TopTokenIDFromTokenInfo];
                    }

                    v58.location = TokenRangeFromTokenInfo;
                    v58.length = v22;
                    v26 = NSStringFromRange(v58);
                    v27 = [(NSAttributedString *)LLMParseFromQueryUnderstanding length];
                    *buf = 134219778;
                    *&buf[4] = v17;
                    *&buf[12] = 2080;
                    *&buf[14] = v16;
                    *&buf[22] = 2048;
                    v48 = v15;
                    *v49 = 2080;
                    *&v49[2] = v25;
                    v50 = 2112;
                    v51 = v26;
                    v52 = 2112;
                    v53 = @"Use LLM for query with llmParse:";
                    v54 = 2112;
                    v55 = @"Invalid range provided for llmParse of length";
                    v56[0] = 2048;
                    *&v56[1] = v27;
                    _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "[qid=%lld][%s][POMMES][QU][%ld][%s][%@] %@ %@ %lu", buf, 0x52u);
                  }

                  *__error() = v23;
                }

                else
                {
                  v38 = MEMORY[0x1E69E9820];
                  v39 = 3221225472;
                  v40 = ___Z19logAttributedStringyPKcP8NSStringP18NSAttributedStringPK9__CFArray_block_invoke;
                  v41 = &unk_1E8190B48;
                  v44 = v16;
                  v45 = v15;
                  v46 = TopTokenIDFromTokenInfo;
                  v42 = @"Use LLM for query with llmParse:";
                  v43 = v17;
                  [(NSAttributedString *)LLMParseFromQueryUnderstanding enumerateAttributesInRange:TokenRangeFromTokenInfo options:v22 usingBlock:0, &v38];
                }

                ++v15;
              }

              operator new();
            }
          }
        }

        v29 = *__error();
        v30 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *a2;
          v32 = a2[1];
          *buf = 134218498;
          *&buf[4] = v31;
          *&buf[12] = 2080;
          *&buf[14] = v32;
          *&buf[22] = 2112;
          v48 = 0;
          _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] No LLM parse is provided (using ALWAYS_FALSE_NODE) with llmParse:'%@'", buf, 0x20u);
        }

        v2 = 0;
        *__error() = v29;
LABEL_42:
        v28 = a2;
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQueryParserOptionUseLLMParseKey()") description:{@"PRLLMParse.mm", 14, @"%s", dlerror()}];
LABEL_47:
    __break(1u);
  }

  result = 0;
LABEL_44:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C2B1E0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  a48 = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a48);
  _Unwind_Resume(a1);
}

query_node *pommesCustomTrees(query_node *a1, __CFString *a2, __CFAttributedString *a3, __CFDictionary *a4, PRContext *a5)
{
  v8 = a2;
  v756 = *MEMORY[0x1E69E9840];
  v709 = a5;
  var3 = a5->var3;
  v10 = *(a5 + 7);
  if (var3 == 16)
  {
    if ((v10 & 0x28) == 0)
    {
      goto LABEL_31;
    }

    if (![objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] || (objc_msgSend(objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), "BOOLForKey:", @"EnableLegacyMessagesTree") & 1) == 0)
    {
      v25 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = @"en";
      }

      v27 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = @"en";
      }

      v29 = logHeader(a5, &v28->isa);
      v30 = *__error();
      v31 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = redactedString(&v8->isa);
        _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "%@ Processing AST query: %@", buf, 0x16u);
      }

      *__error() = v30;
      v32 = [[PRAstBuilder alloc] initWithLanguageCode:v26 context:a5 logHeader:v29];
      v33 = [(PRAstBuilder *)v32 buildASTFromQuery:v8 queryUnderstanding:a4];
      v34 = v33;
      if (v33)
      {
        LogASTIfDebuggingEnabled(v33, v8, a5);
        Node = convertASTNodeToQueryNode(v34, a5);

        if ((*(a5 + 28) & 2) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = MessagesSemanticNode(a5->var23, v26, v29, v36);
        }

        FalseNode = makeOrNode(v37, Node);
        if (FalseNode)
        {
          goto LABEL_103;
        }

        v83 = *__error();
        v84 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&dword_1C278D000, v84, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata search (ERROR: metadata node is null)", buf, 0xCu);
        }

        *__error() = v83;
        FalseNode = makeFalseNode();
        if (FalseNode)
        {
LABEL_103:
          v24 = FalseNode;
          goto LABEL_615;
        }
      }

      else
      {
        v65 = *__error();
        v66 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "%@ Failed to build AST from query", buf, 0xCu);
        }

        *__error() = v65;
      }
    }

    v67 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = @"en";
    }

    v705 = logHeader(a5, &v68->isa);
    v69 = *__error();
    v70 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = redactedString(&v8->isa);
      *buf = 138412546;
      *&buf[4] = v705;
      *&buf[12] = 2112;
      *&buf[14] = v71;
      _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "%@ Processing query: %@", buf, 0x16u);
    }

    *__error() = v69;
    v721[0] = 0;
    v719 = 0u;
    v720 = 0u;
    std::string::basic_string[abi:nn200100]<0>(buf, "kMDItemAttachmentNames");
    LODWORD(v723[0]) = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(&v723[1], "kMDItemAuthors");
    LODWORD(v724) = 1053609165;
    std::string::basic_string[abi:nn200100]<0>(&v725, "kMDItemAuthorAddresses");
    v726 = 1053609165;
    std::string::basic_string[abi:nn200100]<0>(v727, "kMDItemDescription");
    v728 = 1053609165;
    std::string::basic_string[abi:nn200100]<0>(v729, "kMDItemDisplayName");
    v730 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v731, "kMDItemFilename");
    v732 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v733, "kMDItemPhotosPeopleNames ");
    v734 = 1061997773;
    std::string::basic_string[abi:nn200100]<0>(v735, "kMDItemPhotosPeopleNamesAlternatives");
    v736 = 1061997773;
    std::string::basic_string[abi:nn200100]<0>(v737, "kMDItemPhotosSceneClassificationLabels");
    v738 = 1058642330;
    std::string::basic_string[abi:nn200100]<0>(v739, "kMDItemPhotosSceneClassificationSynonyms");
    v740 = 1058642330;
    std::string::basic_string[abi:nn200100]<0>(v741, "kMDItemRecipients");
    v742 = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(v743, "kMDItemRecipientAddresses");
    v744 = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(v745, "kMDItemTextContent");
    v746 = 1058642330;
    std::string::basic_string[abi:nn200100]<0>(v747, "kMDItemTitle");
    v748 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v749, "kMDItemURL");
    v750 = 1036831949;
    std::unordered_map<std::string,float>::unordered_map(&v719, buf, 15);
    v72 = 60;
    do
    {
      if (SHIBYTE(v721[v72]) < 0)
      {
        operator delete(v721[v72 - 2]);
      }

      v72 -= 4;
    }

    while (v72 * 8);
    QueryTokens = CreateQueryTokens(v8, 1);
    if (QueryTokens)
    {
      v682 = QueryTokens;
      v74 = *QueryTokens;
      if (v74)
      {
        Count = CFArrayGetCount(v74);
        if (Count)
        {
          theArray = v682->super.isa;
          alloc = v682[1].super.isa;
          isa = v682[2].super.isa;
          v680 = [MEMORY[0x1E695DF70] array];
          v671 = [MEMORY[0x1E695DF70] array];
          if (a4 && CFDictionaryContainsKey(a4, @"attributedParses"))
          {
            Value = CFDictionaryGetValue(a4, @"attributedParses");
            if ([Value count])
            {
              v77 = [Value objectAtIndexedSubscript:0];
            }

            else
            {
              v77 = 0;
            }

            *v751 = 0;
            *&v751[8] = v751;
            *&v751[16] = 0x3052000000;
            *&v751[24] = __Block_byref_object_copy_;
            *&v752 = __Block_byref_object_dispose_;
            *(&v752 + 1) = 0;
            v141 = [v77 length];
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL31MessagePopulateFiltersFromParsePK14__CFDictionaryP14NSMutableArrayIP8NSStringEPS2_IP7NSValueES4__block_invoke;
            *&v723[0] = &unk_1E8197980;
            *&v723[1] = v680;
            *&v723[2] = v671;
            *&v723[3] = v751;
            [v77 enumerateAttributesInRange:0 options:v141 usingBlock:{0, buf}];
            _Block_object_dispose(v751, 8);
          }

          else
          {
            v97 = *__error();
            v98 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v705;
              _os_log_impl(&dword_1C278D000, v98, OS_LOG_TYPE_DEFAULT, "%@ Skipping QP filters (Reason: QP output not present)", buf, 0xCu);
            }

            *__error() = v97;
          }

          if ([v680 count])
          {
            v142 = *__error();
            v143 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              v144 = [v680 count];
              *buf = 138412546;
              *&buf[4] = v705;
              *&buf[12] = 2048;
              *&buf[14] = v144;
              _os_log_impl(&dword_1C278D000, v143, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu QP filters", buf, 0x16u);
            }

            *__error() = v142;
          }

          v665 = [MEMORY[0x1E695DF70] array];
          v664 = [MEMORY[0x1E695DF70] array];
          if (a4 && CFDictionaryContainsKey(a4, @"kQPQUOutputTokenInfo"))
          {
            v145 = [(__CFDictionary *)a4 objectForKeyedSubscript:@"kQPQUOutputTokenInfo"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v145 count])
              {
                v146 = 0;
                while (1)
                {
                  v147 = [v145 objectAtIndexedSubscript:v146];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v147 objectForKeyedSubscript:@"kQPQUOutputTokenRange"] && objc_msgSend(v147, "objectForKeyedSubscript:", @"kQPQUOutputTokenArgIds") && objc_msgSend(v147, "objectForKeyedSubscript:", @"kQPQUOutputTokenArgScores") && objc_msgSend(v147, "objectForKeyedSubscript:", @"kQPQUOutputToken"))
                  {
                    v148 = [v147 objectForKeyedSubscript:@"kQPQUOutputTokenRange"];
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v148 rangeValue] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v152 = [v147 objectForKeyedSubscript:@"kQPQUOutputTokenArgIds"];
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && [v152 count])
                      {
                        [(query_node *)v665 addObject:v148];
                        [v664 addObject:{objc_msgSend(v152, "objectAtIndexedSubscript:", 0)}];
                      }

                      goto LABEL_203;
                    }

                    v149 = *__error();
                    v150 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v705;
                      *&buf[12] = 2048;
                      *&buf[14] = v146;
                      _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "%@ Skip U2 label for token %lu (ERROR: invalid range)", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v149 = *__error();
                    v151 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v705;
                      *&buf[12] = 2048;
                      *&buf[14] = v146;
                      _os_log_impl(&dword_1C278D000, v151, OS_LOG_TYPE_DEFAULT, "%@ Skip U2 label for token %lu (ERROR: it is missing essential keys)", buf, 0x16u);
                    }
                  }

                  *__error() = v149;
LABEL_203:
                  if (++v146 >= [v145 count])
                  {
                    goto LABEL_214;
                  }
                }
              }

              goto LABEL_214;
            }

            v153 = *__error();
            v154 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v705;
              v155 = "%@ Skipping populating U2 labels (ERROR: U2 token info not present or invalid)";
              goto LABEL_212;
            }
          }

          else
          {
            v153 = *__error();
            v154 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v705;
              v155 = "%@ Skipping populating U2 labels (ERROR: U2 output not present)";
LABEL_212:
              _os_log_impl(&dword_1C278D000, v154, OS_LOG_TYPE_DEFAULT, v155, buf, 0xCu);
            }
          }

          *__error() = v153;
LABEL_214:
          v156 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
          if (v156)
          {
            v157 = v156;
          }

          else
          {
            v157 = @"en";
          }

          v158 = [MEMORY[0x1E695DF90] dictionary];
          if ([(__CFString *)v157 isEqualToString:@"en"])
          {
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"about"];
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"with"];
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"and"];
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"by"];
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"in"];
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"on"];
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"sent"];
            [(query_node *)v158 setObject:&unk_1F428F350 forKeyedSubscript:@"shared"];
            [(query_node *)v158 setObject:&unk_1F428F368 forKeyedSubscript:@"from"];
            [(query_node *)v158 setObject:&unk_1F428F380 forKeyedSubscript:@"to"];
            [(query_node *)v158 setObject:&unk_1F428F398 forKeyedSubscript:@"address"];
            [(query_node *)v158 setObject:&unk_1F428F398 forKeyedSubscript:@"addresses"];
            [(query_node *)v158 setObject:&unk_1F428F3B0 forKeyedSubscript:@"link"];
            [(query_node *)v158 setObject:&unk_1F428F3B0 forKeyedSubscript:@"links"];
            [(query_node *)v158 setObject:&unk_1F428F3C8 forKeyedSubscript:@"message"];
            [(query_node *)v158 setObject:&unk_1F428F3C8 forKeyedSubscript:@"messages"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"photo"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"photos"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"pic"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"pics"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"picture"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"pictures"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"image"];
            [(query_node *)v158 setObject:&unk_1F428F3E0 forKeyedSubscript:@"images"];
          }

          v662 = v157;
          memset(v754, 0, 24);
          v687 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
          if (Count < 1)
          {
            goto LABEL_344;
          }

          v668 = v158;
          v159 = 0;
          v160 = 0;
          v677 = -1;
          while (1)
          {
            RangeAtIndex = getRangeAtIndex(alloc, isa, v160);
            v163 = v162;
            if (RangeAtIndex == -1)
            {
              v168 = *__error();
              v169 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                *&buf[4] = v705;
                *&buf[12] = 2048;
                *&buf[14] = v160;
                *&buf[22] = 2048;
                v723[0] = NAN;
                LOWORD(v723[1]) = 2048;
                *(&v723[1] + 2) = v163;
                _os_log_impl(&dword_1C278D000, v169, OS_LOG_TYPE_DEFAULT, "%@ Skipping query token %lu (ERROR: invalid range: (%ld, %ld))", buf, 0x2Au);
              }

              *__error() = v168;
              goto LABEL_255;
            }

            v164 = RangeAtIndex;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v160);
            if (!CFStringGetLength(ValueAtIndex))
            {
              break;
            }

            if (![(__CFString *)ValueAtIndex UTF8String])
            {
              v170 = *__error();
              v172 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v705;
                *&buf[12] = 2048;
                *&buf[14] = v160;
                _os_log_impl(&dword_1C278D000, v172, OS_LOG_TYPE_DEFAULT, "%@ Skipping query token %lu (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
              }

LABEL_238:
              *__error() = v170;
              goto LABEL_255;
            }

            if ((v159 & 1) == 0)
            {
              if (![v687 characterIsMember:{-[__CFString characterAtIndex:](ValueAtIndex, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](ValueAtIndex, "rangeOfComposedCharacterSequenceAtIndex:", 0))}])
              {
                *buf = v164;
                *&buf[8] = v163;
                *&buf[16] = _rangeIntersection(v164, v163, v671);
                v177 = [(__CFString *)ValueAtIndex lowercaseString];
                if ([(query_node *)v668 objectForKeyedSubscript:v177])
                {
                  v178 = [-[query_node objectForKeyedSubscript:](v668 objectForKeyedSubscript:{v177), "intValue"}];
                }

                else
                {
                  v178 = -1;
                }

                LODWORD(v723[0]) = v178;
                v179 = _rangeIntersection(v164, v163, v665);
                if (v179 == -1)
                {
                  v180 = -1;
                }

                else
                {
                  v180 = [objc_msgSend(v664 objectAtIndexedSubscript:{v179), "intValue"}];
                }

                HIDWORD(v723[0]) = v180;
                std::vector<MessageTokenInfo>::push_back[abi:nn200100](v754, buf);
LABEL_254:
                v159 = 0;
                goto LABEL_255;
              }

              v173 = *__error();
              v174 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v705;
                *&buf[12] = 2048;
                *&buf[14] = v160;
                _os_log_impl(&dword_1C278D000, v174, OS_LOG_TYPE_DEFAULT, "%@ Query token %lu started double quote mode", buf, 0x16u);
              }

              *__error() = v173;
              v175 = [(__CFString *)ValueAtIndex length];
              [(__CFString *)ValueAtIndex rangeOfComposedCharacterSequenceAtIndex:0];
              if (v175 == v176 || ![v687 characterIsMember:{-[__CFString characterAtIndex:](ValueAtIndex, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](ValueAtIndex, "rangeOfComposedCharacterSequenceAtIndex:", -[__CFString length](ValueAtIndex, "length") - 1))}])
              {
                v159 = 1;
                v677 = v164;
                goto LABEL_255;
              }

              v677 = v164;
            }

            if (Count - 1 == v160 || [v687 characterIsMember:{-[__CFString characterAtIndex:](ValueAtIndex, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](ValueAtIndex, "rangeOfComposedCharacterSequenceAtIndex:", -[__CFString length](ValueAtIndex, "length") - 1))}])
            {
              v166 = *__error();
              v167 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v705;
                *&buf[12] = 2048;
                *&buf[14] = v160;
                _os_log_impl(&dword_1C278D000, v167, OS_LOG_TYPE_DEFAULT, "%@ Query token %lu ended double quote mode", buf, 0x16u);
              }

              *__error() = v166;
              *&buf[16] = -1;
              v723[0] = NAN;
              *buf = v677;
              *&buf[8] = v164 + v163 - v677;
              std::vector<MessageTokenInfo>::push_back[abi:nn200100](v754, buf);
              goto LABEL_254;
            }

            v159 = 1;
LABEL_255:
            if (Count == ++v160)
            {
              v181 = *v754;
              if (*&v754[8] != *v754)
              {
                v678 = 0;
                v699 = 0;
                theArrayb = 0;
                v182 = 0;
                allocb = *MEMORY[0x1E695E480];
                while (1)
                {
                  v183 = (v181 + 32 * v182);
                  v184 = *__error();
                  v185 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                  {
                    v186 = *(v183 + 2);
                    v187 = *(v183 + 6);
                    *buf = 138413058;
                    *&buf[4] = v705;
                    *&buf[12] = 2048;
                    *&buf[14] = v182;
                    *&buf[22] = 2048;
                    v723[0] = v186;
                    LOWORD(v723[1]) = 1024;
                    *(&v723[1] + 2) = v187;
                    _os_log_impl(&dword_1C278D000, v185, OS_LOG_TYPE_DEFAULT, "%@ Processing Search Token %lu (QP parse = %lu, tokType = %d)", buf, 0x26u);
                  }

                  *__error() = v184;
                  if (*(v183 + 6) == 10)
                  {
                    v188 = *__error();
                    v189 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v705;
                      *&buf[12] = 2048;
                      *&buf[14] = v182;
                      _os_log_impl(&dword_1C278D000, v189, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld has double quote", buf, 0x16u);
                    }

                    *__error() = v188;
                    v190 = CFStringCreateWithSubstring(allocb, v8, *v183);
                    v191 = v190;
                    if (!v190)
                    {
LABEL_281:
                      v198 = *__error();
                      v200 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *&buf[4] = v705;
                        *&buf[12] = 2048;
                        *&buf[14] = v182;
                        _os_log_impl(&dword_1C278D000, v200, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld skipped (ERROR: Its nil)", buf, 0x16u);
                      }

                      goto LABEL_291;
                    }

                    if (![(__CFString *)v190 length])
                    {
                      goto LABEL_271;
                    }

                    v192 = [(__CFString *)v191 rangeOfComposedCharacterSequenceAtIndex:0];
                    v194 = v193;
                    v195 = v191;
                    if ([v687 characterIsMember:{-[__CFString characterAtIndex:](v191, "characterAtIndex:", v192)}])
                    {
                      v195 = [(__CFString *)v191 substringFromIndex:v192 + v194];
                    }

                    if ([(__CFString *)v195 length])
                    {
                      v196 = [(__CFString *)v195 rangeOfComposedCharacterSequenceAtIndex:[(__CFString *)v195 length]- 1];
                      if ([v687 characterIsMember:{-[__CFString characterAtIndex:](v195, "characterAtIndex:", v196)}])
                      {
                        v195 = [(__CFString *)v195 substringToIndex:v196];
                      }
                    }

                    else
                    {
LABEL_271:
                      v195 = 0;
                    }

                    CFRelease(v191);
                  }

                  else
                  {
                    v195 = [(__CFString *)v8 substringWithRange:*v183, v183[1]];
                  }

                  if (!v195)
                  {
                    goto LABEL_281;
                  }

                  v197 = [(__CFString *)v195 UTF8String];
                  if (v197)
                  {
                    if ((*(v183 + 6) - 3) < 0xFFFFFFFE || v182 == ((*&v754[8] - *v754) >> 5) - 1 || *(*v754 + 32 * v182 + 48) == -1)
                    {
                      v201 = v183[2];
                      if (v201 != -1)
                      {
                        v202 = [objc_msgSend(v680 objectAtIndexedSubscript:{v183[2]), "UTF8String"}];
                        if (v202)
                        {
                          query_node_with_ann = db_make_query_node_with_ann(v202, 0);
                          v204 = query_node_with_ann;
                          if ((*(a5 + 28) & 2) != 0)
                          {
                            *v751 = MEMORY[0x1E69E9820];
                            *&v751[8] = 3221225472;
                            *&v751[16] = ___ZL18MessageNodeFromStrP9PRContextPKcf_block_invoke;
                            *&v751[24] = &__block_descriptor_36_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
                            LODWORD(v752) = 1065353216;
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 0x40000000;
                            *&buf[16] = __db_query_tree_apply_block_block_invoke;
                            *&v723[0] = &unk_1E8198ED0;
                            *&v723[1] = v751;
                            db_query_tree_apply_block_with_meta(query_node_with_ann, buf, 0);
                          }

                          theArrayb = makeAndNode(theArrayb, v204);
                        }

                        else
                        {
                          v206 = *__error();
                          v207 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            *&buf[4] = v705;
                            *&buf[12] = 2048;
                            *&buf[14] = v182;
                            _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld QP parse skipped (ERROR: UTF8 encoding failed)", buf, 0x16u);
                          }

                          *__error() = v206;
                        }
                      }

                      if ((*(a5 + 28) & 2) != 0)
                      {
                        v208 = 0.3;
                      }

                      else
                      {
                        v208 = 0.0;
                      }

                      if (v201 != -1 || (v209 = *(v183 + 6)) == 0 || (v210 = *(v183 + 7), v210 <= 0x24) && ((1 << v210) & 0x1000C00000) != 0)
                      {
                        v211 = *__error();
                        v212 = _SILogForLogForCategory(19);
                        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *&buf[4] = v705;
                          *&buf[12] = 2048;
                          *&buf[14] = v182;
                          _os_log_impl(&dword_1C278D000, v212, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is a regular word", buf, 0x16u);
                        }

                        *__error() = v211;
                        QueryNode = createQueryNode("kMDItemTextContent", v197, 112, 1, 0, v208, 0.0);
                        v699 = makeAndNode(v699, QueryNode);
                        goto LABEL_292;
                      }

                      v214 = *__error();
                      v215 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *&buf[4] = v705;
                        *&buf[12] = 2048;
                        *&buf[14] = v182;
                        _os_log_impl(&dword_1C278D000, v215, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is a keyword", buf, 0x16u);
                      }

                      *__error() = v214;
                      v216 = v720;
                      if ((*(a5 + 28) & 2) == 0)
                      {
                        if (v720)
                        {
                          v217 = 0;
                          do
                          {
                            v218 = (v216 + 2);
                            if (*(v216 + 39) < 0)
                            {
                              v218 = *v218;
                            }

                            v219 = createQueryNode(v218, v197, 112, 1, -1, 0.0, 0.0);
                            v217 = makeOrNode(v217, v219);
                            v216 = *v216;
                          }

                          while (v216);
                          goto LABEL_325;
                        }

LABEL_324:
                        v217 = 0;
                        goto LABEL_325;
                      }

                      if (!v720)
                      {
                        goto LABEL_324;
                      }

                      v217 = 0;
                      do
                      {
                        v220 = *(v216 + 10);
                        if (v220 != 0.0)
                        {
                          v221 = (v216 + 2);
                          if (*(v216 + 39) < 0)
                          {
                            v221 = *v221;
                          }

                          v222 = createQueryNode(v221, v197, 112, 1, -1, v220, 0.0);
                          v217 = makeOrNode(v217, v222);
                        }

                        v216 = *v216;
                      }

                      while (v216);
LABEL_325:
                      if (v209 > 4)
                      {
                        if (v209 == 5)
                        {
                          v231 = *__error();
                          v232 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            *&buf[4] = v705;
                            *&buf[12] = 2048;
                            *&buf[14] = v182;
                            _os_log_impl(&dword_1C278D000, v232, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is message", buf, 0x16u);
                          }

                          *__error() = v231;
                          v225 = "kMDItemContentTypeTree";
                          v226 = "public.message";
                        }

                        else
                        {
                          if (v209 != 6)
                          {
                            goto LABEL_343;
                          }

                          v227 = *__error();
                          v228 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            *&buf[4] = v705;
                            *&buf[12] = 2048;
                            *&buf[14] = v182;
                            _os_log_impl(&dword_1C278D000, v228, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is photo", buf, 0x16u);
                          }

                          *__error() = v227;
                          v225 = "kMDItemContentTypeTree";
                          v226 = "public.image";
                        }
                      }

                      else
                      {
                        if (v209 != 3)
                        {
                          if (v209 == 4)
                          {
                            v223 = *__error();
                            v224 = _SILogForLogForCategory(19);
                            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412546;
                              *&buf[4] = v705;
                              *&buf[12] = 2048;
                              *&buf[14] = v182;
                              _os_log_impl(&dword_1C278D000, v224, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is link", buf, 0x16u);
                            }

                            *__error() = v223;
                            v225 = "kMDItemURL";
                            v226 = "*";
                            goto LABEL_342;
                          }

LABEL_343:
                          v678 = makeAndNode(v678, v217);
                          goto LABEL_292;
                        }

                        v229 = *__error();
                        v230 = _SILogForLogForCategory(19);
                        if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *&buf[4] = v705;
                          *&buf[12] = 2048;
                          *&buf[14] = v182;
                          _os_log_impl(&dword_1C278D000, v230, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is address", buf, 0x16u);
                        }

                        *__error() = v229;
                        v225 = "kMDItemExtractedAddressesLabels";
                        v226 = "*";
                      }

LABEL_342:
                      v233 = createQueryNode(v225, v226, 112, 1, 0, v208, 0.0);
                      v217 = makeOrNode(v217, v233);
                      goto LABEL_343;
                    }

                    v198 = *__error();
                    v199 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v705;
                      *&buf[12] = 2048;
                      *&buf[14] = v182;
                      _os_log_impl(&dword_1C278D000, v199, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld skipped (Reason: It is optional and subsequent token has QP parse)", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v198 = *__error();
                    v205 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v705;
                      *&buf[12] = 2048;
                      *&buf[14] = v182;
                      _os_log_impl(&dword_1C278D000, v205, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld skipped (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
                    }
                  }

LABEL_291:
                  *__error() = v198;
LABEL_292:
                  ++v182;
                  v181 = *v754;
                  if (v182 >= (*&v754[8] - *v754) >> 5)
                  {
                    freeQueryTokensContext(&v682->super.isa);
                    if (v678)
                    {
                      if ((*(a5 + 28) & 2) != 0)
                      {
                        v241 = 0;
                        if (!theArrayb)
                        {
                          goto LABEL_361;
                        }
                      }

                      else
                      {
                        v240 = MessagesSemanticNode(a5->var23, v662, v705, v239);
                        v241 = v240;
                        if (!theArrayb)
                        {
                          if (v240)
                          {
                            v242 = *__error();
                            v243 = _SILogForLogForCategory(19);
                            if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *&buf[4] = v705;
                              _os_log_impl(&dword_1C278D000, v243, OS_LOG_TYPE_DEFAULT, "%@ Running ANN search with no filters (Reason: QP node is empty)", buf, 0xCu);
                            }

                            *__error() = v242;
                          }

LABEL_361:
                          v247 = makeAndNode(v678, v699);
                          v246 = makeOrNode(v241, v247);
LABEL_362:
                          v24 = v246;
                          if (!v246)
                          {
                            v248 = *__error();
                            v249 = _SILogForLogForCategory(19);
                            if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *&buf[4] = v705;
                              _os_log_impl(&dword_1C278D000, v249, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata search (ERROR: metadata node is null)", buf, 0xCu);
                            }

                            *__error() = v248;
                            v238 = makeFalseNode();
                            goto LABEL_348;
                          }

                          goto LABEL_349;
                        }
                      }

                      v244 = makeOrNode(v241, v678);
                      v245 = makeOrNode(theArrayb, v699);
                      v246 = makeAndNode(v244, v245);
                      goto LABEL_362;
                    }

                    v234 = v699;
                    v235 = theArrayb;
LABEL_345:
                    v236 = *__error();
                    v237 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *&buf[4] = v705;
                      _os_log_impl(&dword_1C278D000, v237, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (Reason: no keywords in the query)", buf, 0xCu);
                    }

                    *__error() = v236;
                    v238 = makeOrNode(v235, v234);
LABEL_348:
                    v24 = v238;
LABEL_349:
                    if (*v754)
                    {
                      operator delete(*v754);
                    }

LABEL_96:
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v720);
                    v81 = v719;
                    *&v719 = 0;
                    if (v81)
                    {
                      operator delete(v81);
                    }

                    goto LABEL_615;
                  }
                }
              }

LABEL_344:
              freeQueryTokensContext(&v682->super.isa);
              v234 = 0;
              v235 = 0;
              goto LABEL_345;
            }
          }

          v170 = *__error();
          v171 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v705;
            *&buf[12] = 2048;
            *&buf[14] = v160;
            _os_log_impl(&dword_1C278D000, v171, OS_LOG_TYPE_DEFAULT, "%@ Skipping query token %lu (Reason: Its zero-length)", buf, 0x16u);
          }

          goto LABEL_238;
        }
      }

      freeQueryTokensContext(&v682->super.isa);
      v78 = *__error();
      v79 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v705;
        _os_log_impl(&dword_1C278D000, v79, OS_LOG_TYPE_DEFAULT, "%@ Return no results (ERROR: zero tokens found from the userQuery)", buf, 0xCu);
      }
    }

    else
    {
      v78 = *__error();
      v80 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v705;
        _os_log_impl(&dword_1C278D000, v80, OS_LOG_TYPE_DEFAULT, "%@ Return no results (ERROR: missing tokenization context on userQuery)", buf, 0xCu);
      }
    }

    v24 = 0;
    *__error() = v78;
    goto LABEL_96;
  }

  if (var3 == 1 && (*(a5 + 7) & 0x18) != 0)
  {
    v12 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"en";
    }

    v14 = logHeader(a5, &v13->isa);
    if (!a4)
    {
      goto LABEL_38;
    }

    if (!CFDictionaryContainsKey(a4, @"suggestionFilter"))
    {
      goto LABEL_38;
    }

    v15 = CFDictionaryGetValue(a4, @"suggestionFilter");
    if (!v15)
    {
      goto LABEL_38;
    }

    v16 = v15;
    v17 = *__error();
    v18 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "%@ Query has suggestions", buf, 0xCu);
    }

    *__error() = v17;
    v19 = [v16 UTF8String];
    v20 = *(a5 + 7);
    v21 = db_make_query_node_with_ann(v19, 0);
    if (v21)
    {
      v22 = v21;
      processNode(v21, (v20 >> 1) & 1);
      v24 = v23;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&v723[0] = &unk_1E8198ED0;
      *&v723[1] = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v22, buf, 0);
      if (!v8)
      {
LABEL_61:
        v58 = *__error();
        v59 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v14;
          _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "%@ Skipping query (Reason: it is empty)", buf, 0xCu);
        }

LABEL_172:
        *__error() = v58;
        goto LABEL_615;
      }
    }

    else
    {
LABEL_38:
      v24 = 0;
      if (!v8)
      {
        goto LABEL_61;
      }
    }

    if (!CFStringGetLength(v8))
    {
      goto LABEL_61;
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
    v41 = CFLocaleCopyCurrent();
    CFStringLowercase(MutableCopy, v41);
    if (v41)
    {
      CFRelease(v41);
    }

    v42 = redactedString(&MutableCopy->isa);
    v43 = *__error();
    v44 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v42;
      _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "%@ Processing query: %@", buf, 0x16u);
    }

    *__error() = v43;
    v45 = [[PRAstBuilder alloc] initWithLanguageCode:v13 context:a5 logHeader:v14];
    v46 = [(PRAstBuilder *)v45 buildASTFromQuery:MutableCopy queryUnderstanding:a4];
    CFRelease(MutableCopy);
    if (!v46)
    {
      v94 = *__error();
      v95 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v95, OS_LOG_TYPE_DEFAULT, "%@ Failed to build AST from query", buf, 0xCu);
      }

      *__error() = v94;

      goto LABEL_615;
    }

    LogASTIfDebuggingEnabled(v46, v8, a5);
    v47 = convertASTNodeToQueryNode(v46, a5);

    if (!v47)
    {
      v58 = *__error();
      v99 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v99, OS_LOG_TYPE_DEFAULT, "%@ Failed to convert AST to query tree", buf, 0xCu);
      }

      goto LABEL_172;
    }

    v48 = *(a5 + 7);
    if ((v48 & 2) != 0)
    {
      v100 = makeAndNode(v47, v24);
      v101 = [MEMORY[0x1E695DF00] date];
      v102 = 0;
      v103 = &dword_1C2BFF12C;
      v104 = 4;
      do
      {
        v105 = *v103;
        [objc_msgSend(v101 dateByAddingTimeInterval:{(-86400 * *(v103 - 1))), "timeIntervalSinceReferenceDate"}];
        if (v104 == 4)
        {
          v107 = 0.01;
        }

        else
        {
          v107 = 0.0;
        }

        v108 = createQueryNode("kMDItemInterestingDate_Ranking", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v106), "UTF8String"], 0, 4, 0, v105, v107);
        v102 = makeOrNode(v102, v108);
        v103 += 2;
        --v104;
      }

      while (v104);
      v109 = v100;
      v110 = v102;
      goto LABEL_170;
    }

    if ((v48 & 0x800) != 0)
    {
LABEL_169:
      v109 = v47;
      v110 = v24;
LABEL_170:
      v24 = makeAndNode(v109, v110);
      v58 = *__error();
      v137 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v137, OS_LOG_TYPE_DEFAULT, "%@ AST conversion completed successfully", buf, 0xCu);
      }

      goto LABEL_172;
    }

    var23 = a5->var23;
    if (!var23 || !CFDictionaryContainsKey(a5->var23, @"vec_dimensions") || !CFDictionaryContainsKey(var23, @"vec_data_format") || !CFDictionaryContainsKey(var23, @"vec_version"))
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        v56 = "%@ Skipping ANN node (ERROR: missing essential ann params)";
        goto LABEL_167;
      }

LABEL_168:
      *__error() = v54;
      goto LABEL_169;
    }

    if (!CFDictionaryContainsKey(var23, @"vectors"))
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_168;
      }

      *buf = 138412290;
      *&buf[4] = v14;
      v56 = "%@ Skipping ANN node (ERROR: missing vectors in ann params)";
      goto LABEL_167;
    }

    v50 = CFDictionaryGetValue(var23, @"vectors");
    v51 = v50;
    if (!v50 || ![v50 count])
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_168;
      }

      *buf = 138412290;
      *&buf[4] = v14;
      v56 = "%@ Skipping ANN node (ERROR: missing query embedding)";
      goto LABEL_167;
    }

    v52 = [v51 objectAtIndexedSubscript:0];
    v53 = v52;
    if (!v52 || [v52 length] <= 1)
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        v56 = "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)";
LABEL_167:
        _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);
        goto LABEL_168;
      }

      goto LABEL_168;
    }

    v632 = CFDictionaryGetValue(var23, @"vec_dimensions");
    v633 = CFDictionaryGetValue(var23, @"vec_data_format");
    v634 = CFDictionaryGetValue(var23, @"vec_version");
    if ([(__CFString *)v13 isEqualToString:@"en"])
    {
      v635 = 1.2;
    }

    else
    {
      v635 = 1.4;
    }

    v636 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v636)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v636 floatValue];
        v635 = v637;
        v638 = *__error();
        v639 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v639, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2048;
          *&buf[14] = v635;
          _os_log_impl(&dword_1C278D000, v639, OS_LOG_TYPE_DEFAULT, "%@ Using user specified ann threshold: %f", buf, 0x16u);
        }

        *__error() = v638;
      }
    }

    v640 = [v634 intValue];
    v641 = [v632 intValue];
    v642 = [v633 intValue];
    v643 = [v53 length];
    if (v643 > 1)
    {
      v646 = [v53 bytes];
      if (v646)
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
        {
          ++sTotal;
        }

        v647 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
        if (!v647)
        {
          _log_fault_for_malloc_failure();
        }

        *v647 = strdup("_kMDItemPrimaryTextEmbedding");
        *(v647 + 6) = 15;
        v647[16] = v635;
        *(v647 + 15) = v641 & 3 | (4 * (v642 & 3)) | (v640 << 25) | 0x50;
        *(v647 + 10) = 5;
        *(v647 + 40) |= 0x10000u;
        v648 = malloc_type_zone_malloc(queryZone, v643 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
        v649 = v643 >> 1;
        if (!v648)
        {
          _log_fault_for_malloc_failure();
        }

        v650 = 0;
        *(v647 + 37) = v648;
        if (v649 <= 1)
        {
          v651 = 1;
        }

        else
        {
          v651 = v649;
        }

        do
        {
          *(*(v647 + 37) + 2 * v650) = *(v646 + 2 * v650);
          ++v650;
        }

        while (v651 != v650);
        if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
        {
          ++sTotal;
        }

        v652 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        v653 = v652;
        if (v652)
        {
          v652->var6 = 4;
          v652->var2 = v647;
          v654 = *__error();
          v655 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v655, OS_LOG_TYPE_DEFAULT))
          {
            v656 = [v53 length];
            *buf = 138413058;
            *&buf[4] = v14;
            *&buf[12] = 2048;
            *&buf[14] = v656 >> 1;
            *&buf[22] = 2048;
            v723[0] = v635;
            LOWORD(v723[1]) = 1024;
            *(&v723[1] + 2) = 5;
            _os_log_impl(&dword_1C278D000, v655, OS_LOG_TYPE_DEFAULT, "%@ Adding ANN node (dim: %lu, thresh: %f, num results: %d)", buf, 0x26u);
          }

          *__error() = v654;
          v47 = makeOrNode(v47, v653);
          goto LABEL_169;
        }

        _log_fault_for_malloc_failure();
        MEMORY[0x30] = 4;
        MEMORY[0x10] = v647;
        goto LABEL_877;
      }

      v644 = *__error();
      v657 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v657, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v657, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: Failed to get bytes from embedding)", buf, 0xCu);
      }
    }

    else
    {
      v644 = *__error();
      v645 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v645, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v645, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)", buf, 0xCu);
      }
    }

    *__error() = v644;
LABEL_877:
    v54 = *__error();
    v55 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_168;
    }

    *buf = 138412290;
    *&buf[4] = v14;
    v56 = "%@ Skipping ANN node (ERROR: failed to create it)";
    goto LABEL_167;
  }

LABEL_31:
  if ((v10 & 0x80) != 0)
  {
    v38 = *MEMORY[0x1E69E9840];

    return pommesDefaultTree(a1, a5, 1);
  }

  if ((v10 & 0x2000) != 0)
  {
    if ((v10 & 0x20000) == 0)
    {
      Tree = PhotosQueryTree(a2, a3, a4, a5);
LABEL_70:
      v24 = Tree;
LABEL_487:
      v321 = a5->var3;
      if (v321 == 4 && (*(a5 + 28) & 0x48) != 0)
      {
        goto LABEL_615;
      }

      if (!v24)
      {
        v10 = *(a5 + 7);
        goto LABEL_493;
      }

      v10 = *(a5 + 7);
      if (v24->var6 == 16)
      {
        v322 = 0;
        goto LABEL_494;
      }

      if ((v10 & 0x8000) != 0 || v321 != 4)
      {
        if ((v10 & 0x200) != 0)
        {
          operator new();
        }

        v344 = 1;
        QueryNodeForPhotosMediaType = createQueryNodeForPhotosMediaType(1, a5);
        v24 = makeAndNode(v24, QueryNodeForPhotosMediaType);
      }

      else
      {
        v344 = 0;
      }

      v436 = (*(v709 + 7) & 2) == 0;
      v60 = *__error();
      if (v436)
      {
        v437 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v437, OS_LOG_TYPE_DEFAULT))
        {
          var0 = v709->var0;
          var1 = v709->var1;
          *buf = 134218754;
          *&buf[4] = var0;
          *&buf[12] = 2080;
          *&buf[14] = var1;
          *&buf[22] = 1024;
          LODWORD(v723[0]) = v24 == 0;
          WORD2(v723[0]) = 1024;
          *(v723 + 6) = v344;
          _os_log_impl(&dword_1C278D000, v437, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added Photos query node to the POMMES query tree (empty: %d) (filter: %d)", buf, 0x22u);
        }
      }

      else
      {
        v440 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v440, OS_LOG_TYPE_DEFAULT))
        {
          v442 = v709->var0;
          v441 = v709->var1;
          *buf = 134218754;
          *&buf[4] = v442;
          *&buf[12] = 2080;
          *&buf[14] = v441;
          *&buf[22] = 1024;
          LODWORD(v723[0]) = v24 == 0;
          WORD2(v723[0]) = 1024;
          *(v723 + 6) = v344;
          _os_log_impl(&dword_1C278D000, v440, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added Photos query node to the POMMES query tree (empty: %d) (filter: %d)", buf, 0x22u);
        }
      }

      v89 = __error();
LABEL_107:
      *v89 = v60;
      goto LABEL_500;
    }

    if ((v10 & 2) == 0)
    {
      Tree = PhotosLLMRetrievalTree(a2, a3, a4, a5);
      goto LABEL_70;
    }

    theArraya = [MEMORY[0x1E696AEC0] stringWithFormat:@"[qid=%llu][%s][POMMES][LLM][Ph]", a5->var0, a5->var1];
    v90 = a5->var23;
    if (v90)
    {
      v91 = CFDictionaryGetValue(v90, @"disableMetadataSearch");
      buf[0] = 0;
      if (v91)
      {
        CFNumberGetValue(v91, kCFNumberSInt8Type, buf);
        if (buf[0])
        {
          v92 = *__error();
          v93 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = theArraya;
            _os_log_impl(&dword_1C278D000, v93, OS_LOG_TYPE_DEFAULT, "%@ Skipping ranking nodes (Reason: metadata search is disabled)", buf, 0xCu);
          }

          *__error() = v92;
          Tree = makeFalseNode();
          goto LABEL_70;
        }
      }
    }

    v667 = mach_absolute_time();
    v706 = [MEMORY[0x1E695DF70] array];
    *&v714 = 0;
    if (a3 && CFAttributedStringGetLength(a3) >= 1)
    {
      *buf = 0;
      PhPopulateFiltersFromQuery(a3, buf, &v714, v706, [MEMORY[0x1E695DF70] array], 1, theArraya, (*(a5 + 7) >> 9) & 1);
      db_free_query_node(*buf);
    }

    -[NSCharacterSet formUnionWithCharacterSet:](v683, "formUnionWithCharacterSet:", [MEMORY[0x1E696AB08] whitespaceCharacterSet]);
    if (isValidQueryUnderstanding(a4))
    {
      v96 = PhRankingTreeFromLLMParse(a4, v706, v683, theArraya);
      goto LABEL_472;
    }

    RuleBasedQPParseFromQueryUnderstanding = getRuleBasedQPParseFromQueryUnderstanding(a4);
    v112 = *__error();
    v113 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = theArraya;
      _os_log_impl(&dword_1C278D000, v113, OS_LOG_TYPE_DEFAULT, "%@ {QP} Processing rule-based query parse output to create ranking tree", buf, 0xCu);
    }

    *__error() = v112;
    v663 = [MEMORY[0x1E695DF70] array];
    alloca = [MEMORY[0x1E695DF70] array];
    v698 = [MEMORY[0x1E695DF70] array];
    v686 = [MEMORY[0x1E695DF70] array];
    v688 = [MEMORY[0x1E695DF70] array];
    v114 = [RuleBasedQPParseFromQueryUnderstanding length];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke;
    *&v723[0] = &unk_1E8199768;
    *&v723[1] = v698;
    *&v723[2] = v686;
    *&v723[3] = v688;
    v724 = v663;
    v725 = alloca;
    [RuleBasedQPParseFromQueryUnderstanding enumerateAttributesInRange:0 options:v114 usingBlock:{0, buf}];
    if ([alloca count] || objc_msgSend(v698, "count") || objc_msgSend(v688, "count") || objc_msgSend(v686, "count"))
    {
      v115 = *__error();
      v116 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = [alloca count];
        v118 = [v698 count];
        v119 = [v688 count];
        v120 = [v686 count];
        *buf = 138413314;
        *&buf[4] = theArraya;
        *&buf[12] = 2048;
        *&buf[14] = v117;
        *&buf[22] = 2048;
        *&v723[0] = v118;
        LOWORD(v723[1]) = 2048;
        *(&v723[1] + 2) = v119;
        WORD1(v723[2]) = 2048;
        *(&v723[2] + 4) = v120;
        _os_log_impl(&dword_1C278D000, v116, OS_LOG_TYPE_DEFAULT, "%@ {QP} Populated filters: time = %lu, fav = %lu, person = %lu, mediatype = %lu", buf, 0x34u);
      }

      *__error() = v115;
    }

    v661 = [MEMORY[0x1E695DFA8] set];
    v121 = CreateQueryTokens(v8, 1);
    if (v121)
    {
      v122 = v121;
      v123 = *v121;
      if (v123)
      {
        v676 = v122;
        v681 = CFArrayGetCount(v123);
        v122 = v676;
        if (v681)
        {
          v660 = *v676;
          v124 = v676[2];
          v672 = v124;
          v674 = v676[1];
          if ([(__CFString *)v8 length])
          {
            if (![(NSString *)v706 count])
            {
              goto LABEL_882;
            }

            v8 = [(__CFString *)v8 mutableCopy];
            v752 = 0u;
            v753 = 0u;
            memset(v751, 0, sizeof(v751));
            v125 = [(NSString *)v706 reverseObjectEnumerator];
            v126 = [v125 countByEnumeratingWithState:v751 objects:buf count:16];
            if (v126)
            {
              v127 = **&v751[16];
              do
              {
                for (i = 0; i != v126; ++i)
                {
                  if (**&v751[16] != v127)
                  {
                    objc_enumerationMutation(v125);
                  }

                  v129 = [*(*&v751[8] + 8 * i) rangeValue];
                  [(__CFString *)v8 replaceCharactersInRange:v129 withString:v130, &stru_1F4284FD0];
                }

                v126 = [v125 countByEnumeratingWithState:v751 objects:buf count:16];
              }

              while (v126);
            }

            if (![(__CFString *)v8 length])
            {
              v134 = *__error();
              v135 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
              {
                *v754 = 138412290;
                *&v754[4] = theArraya;
                v136 = "%@ {Exact Match} Skipping query (Reason: empty query after suggestion filtering)";
                goto LABEL_378;
              }
            }

            else
            {
LABEL_882:
              if ([(__CFString *)v8 length])
              {
                v8 = [(__CFString *)v8 stringByTrimmingCharactersInSet:v683];
              }

              if ([(__CFString *)v8 length])
              {
                v131 = [(__CFString *)v8 UTF8String];
                if (v131)
                {
                  v132 = std::string::basic_string[abi:nn200100]<0>(v754, v131);
                  v133 = isOptionalWord(v132);
                  if (v754[23] < 0)
                  {
                    operator delete(*v754);
                  }

                  if (!v133)
                  {
                    PhExactMatchRankingAttribs();
                    v626 = qword_1EBF483C0;
                    if (qword_1EBF483C0)
                    {
                      v627 = 0;
                      v628 = 0;
                      do
                      {
                        v629 = (v626 + 16);
                        if (*(v626 + 39) < 0)
                        {
                          v629 = *v629;
                        }

                        v630 = createQueryNode(v629, v131, 48, 1, 0, *(v626 + 40) + 100.0, 0.0);
                        v627 = makeOrNode(v627, v630);
                        ++v628;
                        v626 = *v626;
                      }

                      while (v626);
                    }

                    else
                    {
                      v628 = 0;
                      v627 = 0;
                    }

                    v659 = v627;
                    if (v681 == 1)
                    {
                      v658 = createQueryNode("kMDItemTextContent", v131, 112, 1, 0, 100.0, 0.0);
                      ++v628;
                    }

                    else
                    {
                      v658 = 0;
                    }

                    v134 = *__error();
                    v631 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v631, OS_LOG_TYPE_DEFAULT))
                    {
                      *v754 = 138412546;
                      *&v754[4] = theArraya;
                      *&v754[12] = 1024;
                      *&v754[14] = v628;
                      _os_log_impl(&dword_1C278D000, v631, OS_LOG_TYPE_DEFAULT, "%@ {Exact Match} Added %d nodes", v754, 0x12u);
                    }

                    goto LABEL_381;
                  }

                  v134 = *__error();
                  v135 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                  {
                    *v754 = 138412290;
                    *&v754[4] = theArraya;
                    v136 = "%@ {Exact Match} Skipping query (Reason: query is optional word)";
LABEL_378:
                    v250 = v754;
                    goto LABEL_379;
                  }
                }

                else
                {
                  v134 = *__error();
                  v135 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                  {
                    *v754 = 138412290;
                    *&v754[4] = theArraya;
                    v136 = "%@ {Exact Match} Skipping query (ERROR: UTF8 encoding of trimmed query failed)";
                    goto LABEL_378;
                  }
                }
              }

              else
              {
                v134 = *__error();
                v135 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                {
                  *v754 = 138412290;
                  *&v754[4] = theArraya;
                  v136 = "%@ {Exact Match} Skipping query (Reason: empty query after removing special chars)";
                  goto LABEL_378;
                }
              }
            }
          }

          else
          {
            v134 = *__error();
            v135 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = theArraya;
              v136 = "%@ {Exact Match} Skipping query (Reason: empty query)";
              v250 = buf;
LABEL_379:
              _os_log_impl(&dword_1C278D000, v135, OS_LOG_TYPE_DEFAULT, v136, v250, 0xCu);
            }
          }

          v658 = 0;
          v659 = 0;
LABEL_381:
          *__error() = v134;
          *v754 = 0;
          if (v681 >= 1)
          {
            v666 = 0;
            v251 = 0;
            while (1)
            {
              v252 = getRangeAtIndex(v674, v672, v251);
              v254 = v253;
              if (v252 == -1)
              {
                break;
              }

              v255 = v252;
              if ([(NSString *)v706 count])
              {
                v256 = 0;
                while (1)
                {
                  v765.location = [-[NSString objectAtIndexedSubscript:](v706 objectAtIndexedSubscript:{v256), "rangeValue"}];
                  v765.length = v257;
                  v758.location = v255;
                  v758.length = v254;
                  if (NSIntersectionRange(v758, v765).length)
                  {
                    break;
                  }

                  if (++v256 >= [(NSString *)v706 count])
                  {
                    goto LABEL_388;
                  }
                }

                v263 = *__error();
                v266 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  _os_log_impl(&dword_1C278D000, v266, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: It is a suggestion token)", buf, 0x16u);
                }

                goto LABEL_405;
              }

LABEL_388:
              if ([alloca count])
              {
                v258 = 0.0;
                while (1)
                {
                  v766.location = [objc_msgSend(alloca objectAtIndexedSubscript:{*&v258), "rangeValue"}];
                  v766.length = v259;
                  v759.location = v255;
                  v759.length = v254;
                  if (NSIntersectionRange(v759, v766).length)
                  {
                    break;
                  }

                  if (++*&v258 >= [alloca count])
                  {
                    goto LABEL_392;
                  }
                }

                v268 = *__error();
                v269 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  *&buf[22] = 2048;
                  v723[0] = v258;
                  _os_log_impl(&dword_1C278D000, v269, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a date parse (Date parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v268;
                if (([v661 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", *&v258)}] & 1) == 0)
                {
                  [v661 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", *&v258)}];
                  v270 = PhRankingTreeFromStr([objc_msgSend(v663 objectAtIndexedSubscript:{*&v258), "UTF8String"}], 0.13, v754);
                  v666 = makeAndNode(v666, v270);
                }

                goto LABEL_406;
              }

LABEL_392:
              if ([v698 count])
              {
                v260 = 0.0;
                while (1)
                {
                  v767.location = [objc_msgSend(v698 objectAtIndexedSubscript:{*&v260), "rangeValue"}];
                  v767.length = v261;
                  v760.location = v255;
                  v760.length = v254;
                  if (NSIntersectionRange(v760, v767).length)
                  {
                    break;
                  }

                  if (++*&v260 >= [v698 count])
                  {
                    goto LABEL_396;
                  }
                }

                v278 = *__error();
                v279 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v279, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  *&buf[22] = 2048;
                  v723[0] = v260;
                  _os_log_impl(&dword_1C278D000, v279, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a fav parse (Fav parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v278;
                v280 = "kMDItemPhotosFavorited";
                v281 = "1";
                v282 = 0;
                v283 = 0.18;
                goto LABEL_431;
              }

LABEL_396:
              v262 = CFArrayGetValueAtIndex(v660, v251);
              if (_containsOnlyCharsInCharset(v262, v683))
              {
                v263 = *__error();
                v264 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  _os_log_impl(&dword_1C278D000, v264, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu is skipped (Reason: It has only trimmable chars)", buf, 0x16u);
                }

                goto LABEL_405;
              }

              v271 = [(NSString *)v262 UTF8String];
              if (!v271)
              {
                v263 = *__error();
                v286 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  _os_log_impl(&dword_1C278D000, v286, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu is skipped (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
                }

                goto LABEL_405;
              }

              if ([v688 count])
              {
                v272 = 0.0;
                while (1)
                {
                  v768.location = [objc_msgSend(v688 objectAtIndexedSubscript:{*&v272), "rangeValue"}];
                  v768.length = v273;
                  v761.location = v255;
                  v761.length = v254;
                  if (NSIntersectionRange(v761, v768).length)
                  {
                    break;
                  }

                  if (++*&v272 >= [v688 count])
                  {
                    goto LABEL_418;
                  }
                }

                v287 = *__error();
                v288 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  *&buf[22] = 2048;
                  v723[0] = v272;
                  _os_log_impl(&dword_1C278D000, v288, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a person parse (Person parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v287;
                v289 = createQueryNode("kMDItemPhotosPeopleNames", v271, 112, 1, 0, 0.17, 0.0);
                v290 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", v271, 112, 1, 0, 0.17, 0.0);
                v291 = makeOrNode(v289, v290);
                v666 = makeAndNode(v666, v291);
                v285 = *v754 + 2;
LABEL_432:
                *v754 = v285;
LABEL_406:
                v267 = v676;
                goto LABEL_407;
              }

LABEL_418:
              if ([v686 count])
              {
                v274 = 0.0;
                while (1)
                {
                  v769.location = [objc_msgSend(v686 objectAtIndexedSubscript:{*&v274), "rangeValue"}];
                  v769.length = v275;
                  v762.location = v255;
                  v762.length = v254;
                  if (NSIntersectionRange(v762, v769).length)
                  {
                    break;
                  }

                  if (++*&v274 >= [v686 count])
                  {
                    goto LABEL_422;
                  }
                }

                v295 = *__error();
                v296 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  *&buf[22] = 2048;
                  v723[0] = v274;
                  _os_log_impl(&dword_1C278D000, v296, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a media parse (Media parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v295;
                v280 = "kMDItemPhotosMediaTypes";
                v281 = v271;
                v282 = 112;
                v283 = 0.1;
LABEL_431:
                v284 = createQueryNode(v280, v281, v282, 1, 0, v283, 0.0);
                v666 = makeAndNode(v666, v284);
                v285 = *v754 + 1;
                goto LABEL_432;
              }

LABEL_422:
              std::string::basic_string[abi:nn200100]<0>(buf, v271);
              v276 = isOptionalWord(buf);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v276)
              {
                v263 = *__error();
                v277 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v251;
                  _os_log_impl(&dword_1C278D000, v277, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu is skipped (Reason: It is optional as per optional dictionary)", buf, 0x16u);
                }

                goto LABEL_405;
              }

              memset(buf, 0, sizeof(buf));
              std::string::basic_string[abi:nn200100]<0>(v751, v271);
              getSynonym(buf, v751);
              if (v751[23] < 0)
              {
                operator delete(*v751);
              }

              if (v251 == v681 - 1)
              {
                v292 = PhImpAttributesPrefixRankingNode(v271);
                v293 = makeAndNode(v666, v292);
                if (buf[23] < 0)
                {
                  if (!*&buf[8])
                  {
                    goto LABEL_464;
                  }

                  v294 = *buf;
                }

                else
                {
                  if (!buf[23])
                  {
                    goto LABEL_451;
                  }

                  v294 = buf;
                }

                v299 = PhImpAttributesPrefixRankingNode(v294);
                v666 = makeOrNode(v293, v299);
                v300 = *v754;
                v301 = *__error();
                v302 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                {
                  *v751 = 138412546;
                  *&v751[4] = theArraya;
                  *&v751[12] = 2048;
                  *&v751[14] = v681 - 1;
                  _os_log_impl(&dword_1C278D000, v302, OS_LOG_TYPE_DEFAULT, "%@ {QP} Adding synonym for token %lu", v751, 0x16u);
                }

                v303 = __error();
                v304 = v300 + 5;
              }

              else
              {
                v297 = PhImpAttributesRankingNode(v271);
                v293 = makeAndNode(v666, v297);
                if (buf[23] < 0)
                {
                  if (!*&buf[8])
                  {
LABEL_464:
                    v666 = v293;
                    v267 = v676;
                    *v754 += 5;
LABEL_465:
                    operator delete(*buf);
                    goto LABEL_407;
                  }

                  v298 = *buf;
                }

                else
                {
                  if (!buf[23])
                  {
LABEL_451:
                    v666 = v293;
                    v267 = v676;
                    *v754 += 5;
                    goto LABEL_407;
                  }

                  v298 = buf;
                }

                v305 = PhImpAttributesRankingNode(v298);
                v666 = makeOrNode(v293, v305);
                v304 = *v754 + 5;
                *v754 += 5;
                v301 = *__error();
                v306 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                {
                  *v751 = 138412546;
                  *&v751[4] = theArraya;
                  *&v751[12] = 2048;
                  *&v751[14] = v251;
                  _os_log_impl(&dword_1C278D000, v306, OS_LOG_TYPE_DEFAULT, "%@ {QP} Adding synonym for token %lu", v751, 0x16u);
                }

                v303 = __error();
              }

              *v303 = v301;
              *v754 = v304 + 5;
              v267 = v676;
              if (buf[23] < 0)
              {
                goto LABEL_465;
              }

LABEL_407:
              if (++v251 == v681)
              {
                goto LABEL_467;
              }
            }

            v263 = *__error();
            v265 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              *&buf[4] = theArraya;
              *&buf[12] = 2048;
              *&buf[14] = v251;
              *&buf[22] = 2048;
              v723[0] = NAN;
              LOWORD(v723[1]) = 2048;
              *(&v723[1] + 2) = v254;
              _os_log_impl(&dword_1C278D000, v265, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (ERROR: invalid range: (%ld, %ld))", buf, 0x2Au);
            }

LABEL_405:
            *__error() = v263;
            goto LABEL_406;
          }

          v666 = 0;
          v267 = v676;
LABEL_467:
          freeQueryTokensContext(v267);
          v307 = *__error();
          v308 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = theArraya;
            *&buf[12] = 1024;
            *&buf[14] = *v754;
            _os_log_impl(&dword_1C278D000, v308, OS_LOG_TYPE_DEFAULT, "%@ {QP} Added %d nodes", buf, 0x12u);
          }

          *__error() = v307;
          v309 = makeOrNode(v659, v666);
          if (v309)
          {
            v310 = v309;
            v311 = PhRankingBoostTree();
            v309 = makeAndNode(v310, v311);
          }

          v96 = makeOrNode(v309, v658);
LABEL_472:
          v24 = v96;
          if (v714)
          {
            if (v96)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __db_query_tree_apply_block_block_invoke;
              *&v723[0] = &unk_1E8198ED0;
              *&v723[1] = &__block_literal_global_174;
              db_query_tree_apply_block_with_meta(v714, buf, 0);
LABEL_482:
              v318 = *__error();
              v319 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v319, OS_LOG_TYPE_DEFAULT))
              {
                v320 = mach_absolute_time();
                if (NanoSecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
                {
                  dispatch_once(&NanoSecondsSinceAbsoluteTime(unsigned long long)::onceToken, &__block_literal_global_225);
                }

                *buf = 138412546;
                *&buf[4] = theArraya;
                *&buf[12] = 2048;
                *&buf[14] = ((v320 - v667) * NanoSecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / *algn_1EBF482A4) / 1000.0;
                _os_log_impl(&dword_1C278D000, v319, OS_LOG_TYPE_DEFAULT, "%@ Created ranking tree in %f micro seconds", buf, 0x16u);
              }

              *__error() = v318;
              goto LABEL_487;
            }

            v312 = *__error();
            v313 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = theArraya;
              *&buf[12] = 2048;
              *&buf[14] = 0x4059066660000000;
              _os_log_impl(&dword_1C278D000, v313, OS_LOG_TYPE_DEFAULT, "%@ Assigning weight: %f to metadata filter as there are no free tokens in the query", buf, 0x16u);
            }

            *__error() = v312;
            *&v719 = MEMORY[0x1E69E9820];
            *(&v719 + 1) = 3221225472;
            *&v720 = ___ZL20PhotosLLMRankingTreePK10__CFStringPK20__CFAttributedStringPK14__CFDictionaryP9PRContext_block_invoke;
            *(&v720 + 1) = &__block_descriptor_36_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
            LODWORD(v721[0]) = 1120416563;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            *&v723[0] = &unk_1E8198ED0;
            *&v723[1] = &v719;
            db_query_tree_apply_block_with_meta(v714, buf, 0);
            v314 = v714;
            v315 = PhRankingBoostTree();
            v24 = makeAndNode(v314, v315);
          }

          if (!v24)
          {
            v316 = *__error();
            v317 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = theArraya;
              _os_log_impl(&dword_1C278D000, v317, OS_LOG_TYPE_DEFAULT, "%@ Returning false tree (Reason: query tree is empty)", buf, 0xCu);
            }

            *__error() = v316;
            v24 = makeFalseNode();
          }

          goto LABEL_482;
        }
      }

      freeQueryTokensContext(v122);
      v138 = *__error();
      v139 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = theArraya;
        _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: zero tokens found from the userQuery)", buf, 0xCu);
      }
    }

    else
    {
      v138 = *__error();
      v140 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = theArraya;
        _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: missing tokenization context on userQuery)", buf, 0xCu);
      }
    }

    *__error() = v138;
    v96 = makeFalseNode();
    goto LABEL_472;
  }

  if ((var3 & 4) != 0)
  {
    v60 = *__error();
    if ((v10 & 2) != 0)
    {
      v85 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = a5->var0;
        v87 = a5->var1;
        v88 = *(a5 + 7);
        *buf = 134218754;
        *&buf[4] = v86;
        *&buf[12] = 2080;
        *&buf[14] = v87;
        *&buf[22] = 1024;
        LODWORD(v723[0]) = HIWORD(v88) & 1;
        WORD2(v723[0]) = 1024;
        *(v723 + 6) = (v88 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding photos query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    else
    {
      v61 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = a5->var0;
        v63 = a5->var1;
        v64 = *(a5 + 7);
        *buf = 134218754;
        *&buf[4] = v62;
        *&buf[12] = 2080;
        *&buf[14] = v63;
        *&buf[22] = 1024;
        LODWORD(v723[0]) = HIWORD(v64) & 1;
        WORD2(v723[0]) = 1024;
        *(v723 + 6) = (v64 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding photos query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    v89 = __error();
    v24 = 0;
    goto LABEL_107;
  }

  v24 = 0;
LABEL_493:
  v322 = 1;
LABEL_494:
  v323 = *__error();
  if ((v10 & 2) != 0)
  {
    v324 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
    {
LABEL_498:
      v325 = a5->var0;
      v326 = a5->var1;
      *buf = 134218498;
      *&buf[4] = v325;
      *&buf[12] = 2080;
      *&buf[14] = v326;
      *&buf[22] = 1024;
      LODWORD(v723[0]) = v322;
      _os_log_impl(&dword_1C278D000, v324, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Photos query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
    }
  }

  else
  {
    v324 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_498;
    }
  }

  *__error() = v323;
  db_free_query_node(v24);
  v24 = 0;
LABEL_500:
  v327 = v709;
  v328 = *(v709 + 7);
  if ((v328 & 0x8000) == 0)
  {
    v329 = (*(v709 + 7) & 2) == 0;
    v330 = *__error();
    if (v329)
    {
      v331 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v331, OS_LOG_TYPE_DEFAULT))
      {
        v332 = v709->var0;
        v333 = v709->var1;
        v334 = *(v709 + 7);
        *buf = 134218754;
        *&buf[4] = v332;
        *&buf[12] = 2080;
        *&buf[14] = v333;
        *&buf[22] = 1024;
        LODWORD(v723[0]) = HIWORD(v334) & 1;
        WORD2(v723[0]) = 1024;
        *(v723 + 6) = (v334 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v331, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding non-photos QU query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    else
    {
      v340 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
      {
        v341 = v709->var0;
        v342 = v709->var1;
        v343 = *(v709 + 7);
        *buf = 134218754;
        *&buf[4] = v341;
        *&buf[12] = 2080;
        *&buf[14] = v342;
        *&buf[22] = 1024;
        LODWORD(v723[0]) = HIWORD(v343) & 1;
        WORD2(v723[0]) = 1024;
        *(v723 + 6) = (v343 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v340, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding non-photos QU query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    v335 = __error();
    goto LABEL_614;
  }

  v708 = (*(v709 + 7) & 2) != 0;
  v707 = v24;
  if ((v328 & 0x20000) != 0)
  {
    v339 = pommesLLMQueryTree(a4, v709, &v708);
LABEL_534:
    v357 = v339;
    goto LABEL_535;
  }

  if ((v328 & 0x10000) == 0)
  {
LABEL_538:
    v358 = 0;
    v359 = 1;
LABEL_539:
    v360 = (*(v709 + 7) & 2) == 0;
    v361 = *__error();
    if (v360)
    {
      v362 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_543;
      }
    }

    else
    {
      v362 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
      {
LABEL_543:
        v364 = v709->var0;
        v363 = v709->var1;
        *buf = 134218498;
        *&buf[4] = v364;
        *&buf[12] = 2080;
        *&buf[14] = v363;
        *&buf[22] = 1024;
        LODWORD(v723[0]) = v359;
        _os_log_impl(&dword_1C278D000, v362, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Non-photos QU query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
      }
    }

    *__error() = v361;
    db_free_query_node(v358);
    v365 = 0;
    v366 = v709;
    goto LABEL_545;
  }

  allocc = getTokensInfoFromQueryUnderstanding(a4);
  if (!a4 || !CFDictionaryGetCount(a4) || (v689 = CFDictionaryGetValue(a4, @"attributedParse")) == 0)
  {
    v345 = getRuleBasedQPParseFromQueryUnderstanding(a4);
    v346 = (*(v709 + 7) & 2) == 0;
    v347 = *__error();
    if (v346)
    {
      v348 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v348, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_526;
      }
    }

    else
    {
      v348 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v348, OS_LOG_TYPE_DEFAULT))
      {
LABEL_526:
        v350 = v709->var0;
        v351 = v709->var1;
        *buf = 134218498;
        *&buf[4] = v350;
        *&buf[12] = 2080;
        *&buf[14] = v351;
        *&buf[22] = 2112;
        *&v723[0] = v345;
        _os_log_impl(&dword_1C278D000, v348, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU] Not using U2 for non-photos but rule based QP for query with QPParse:'%@'.", buf, 0x20u);
      }
    }

    *__error() = v347;
    goto LABEL_528;
  }

  v336 = (*(v709 + 7) & 2) == 0;
  v337 = *__error();
  if (v336)
  {
    v338 = _SILogForLogForCategory(17);
    if (!os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_636;
    }
  }

  else
  {
    v338 = _SILogForLogForCategory(18);
    if (!os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_636;
    }
  }

  v450 = v709->var0;
  v451 = v709->var1;
  *buf = 134218498;
  *&buf[4] = v450;
  *&buf[12] = 2080;
  *&buf[14] = v451;
  *&buf[22] = 2112;
  *&v723[0] = v689;
  _os_log_impl(&dword_1C278D000, v338, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU] Use U2 for non-photos query with QPParse:'%@'", buf, 0x20u);
LABEL_636:
  *__error() = v337;
  if (!allocc)
  {
LABEL_528:
    v352 = (*(v327 + 7) & 2) == 0;
    v353 = *__error();
    if (v352)
    {
      v354 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_532;
      }
    }

    else
    {
      v354 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
      {
LABEL_532:
        v355 = v327->var0;
        v356 = v327->var1;
        *buf = 134218242;
        *&buf[4] = v355;
        *&buf[12] = 2080;
        *&buf[14] = v356;
        _os_log_impl(&dword_1C278D000, v354, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU] Skip adding non-photos tree, Got no U2 parse (using ALWAYS_FALSE_NODE)", buf, 0x16u);
      }
    }

    *__error() = v353;
    v339 = makeFalseNode();
    goto LABEL_534;
  }

  if ((*(v327 + 28) & 2) != 0)
  {
    v721[0] = 1065353216;
    v719 = 0u;
    v720 = 0u;
    RankingAttributeScores = getRankingAttributeScores(v327);
    v755 = 1065353216;
    memset(v754, 0, sizeof(v754));
    v532 = CFArrayGetCount(allocc);
    *&v751[24] = 0;
    v752 = 0uLL;
    v533 = 112;
    if (v532 == 1)
    {
      v533 = 1073741936;
    }

    *v751 = v533;
    *&v751[8] = 1065353216;
    std::string::basic_string[abi:nn200100]<0>(v717, "");
    *&v751[16] = v717;
    *&v751[24] = 1;
    v751[28] = 0;
    *&v752 = getWildCardAllowedFields(v327->var4);
    DWORD2(v752) = 0;
    *(&v752 + 11) = 0;
    if (v532 < 1)
    {
      v609 = 0;
      v553 = 0;
      v535 = 0.0;
      LOBYTE(v685) = 1;
LABEL_822:
      v618 = *__error();
      v619 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v619, OS_LOG_TYPE_DEFAULT))
      {
        v620 = v327->var0;
        v621 = v327->var1;
        *buf = 134219010;
        *&buf[4] = v620;
        *&buf[12] = 2080;
        *&buf[14] = v621;
        *&buf[22] = 2048;
        v723[0] = v535;
        LOWORD(v723[1]) = 1024;
        *(&v723[1] + 2) = v553;
        HIWORD(v723[1]) = 1024;
        LODWORD(v723[2]) = v685 & 1;
        _os_log_impl(&dword_1C278D000, v619, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][lastIdx=%lu] Skipping non-Photos QU tree: {malformed=%d, allKeyword=%d}", buf, 0x2Cu);
      }

      *__error() = v618;
      db_free_query_node(v609);
      goto LABEL_825;
    }

    theArrayd = v532;
    v700 = 0;
    v675 = RankingAttributeScores;
    v534 = 1;
    v685 = 1;
    while (1)
    {
      v535 = *&v534;
      *&v536 = v534 - 1;
      v537 = CFArrayGetValueAtIndex(allocc, v534 - 1);
      v538 = getkQPQUOutputTokenRangeKey();
      if (!CFDictionaryContainsKey(v537, v538) || (v539 = getkQPQUOutputTokenArgIdsKey(), !CFDictionaryContainsKey(v537, v539)) || (v540 = getkQPQUOutputTokenArgScoresKey(), !CFDictionaryContainsKey(v537, v540)) || (v541 = getkQPQUOutputTokenKey(), !CFDictionaryContainsKey(v537, v541)))
      {
        v545 = *__error();
        v550 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v550, OS_LOG_TYPE_DEFAULT))
        {
          v551 = v327->var0;
          v552 = v327->var1;
          *buf = 134218498;
          *&buf[4] = v551;
          *&buf[12] = 2080;
          *&buf[14] = v552;
          *&buf[22] = 2048;
          v723[0] = v536;
          _os_log_impl(&dword_1C278D000, v550, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping token (ERROR: token info is missing essential keys)", buf, 0x20u);
        }

        goto LABEL_739;
      }

      v542 = getkQPQUOutputTokenRangeKey();
      if ([CFDictionaryGetValue(v537 v542)] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v544 = v543;
        v545 = *__error();
        v546 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v546, OS_LOG_TYPE_DEFAULT))
        {
          v548 = v327->var0;
          v547 = v327->var1;
          v764.location = 0x7FFFFFFFFFFFFFFFLL;
          v764.length = v544;
          v549 = NSStringFromRange(v764);
          *buf = 134218754;
          *&buf[4] = v548;
          *&buf[12] = 2080;
          *&buf[14] = v547;
          *&buf[22] = 2048;
          v723[0] = v536;
          LOWORD(v723[1]) = 2112;
          *(&v723[1] + 2) = v549;
          _os_log_impl(&dword_1C278D000, v546, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping token (ERROR: invalid range: %@)", buf, 0x2Au);
        }

LABEL_739:
        v553 = 0;
        *__error() = v545;
        goto LABEL_740;
      }

      v714 = 0u;
      v715 = 0u;
      v716 = 1065353216;
      v713 = -1;
      v554 = getkQPQUOutputTokenKey();
      v555 = CFDictionaryGetValue(v537, v554);
      v556 = v555;
      v712 = v555;
      if (!v555 || !CFStringGetLength(v555))
      {
        v561 = *__error();
        v562 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v562, OS_LOG_TYPE_DEFAULT))
        {
          v563 = v327->var0;
          v564 = v327->var1;
          *buf = 134218754;
          *&buf[4] = v563;
          *&buf[12] = 2080;
          *&buf[14] = v564;
          *&buf[22] = 2048;
          v723[0] = v536;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = -1;
          _os_log_impl(&dword_1C278D000, v562, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (ERROR: nil / empty token length)", buf, 0x26u);
        }

        goto LABEL_750;
      }

      v557 = populateU2LabelsAndDescriptions(&v713, &v714, v537, v689);
      if (theArrayd != 1 && std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&v714, 0) && !v557)
      {
        v561 = *__error();
        v566 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v566, OS_LOG_TYPE_DEFAULT))
        {
          v567 = v327->var0;
          v568 = v327->var1;
          *buf = 134218754;
          *&buf[4] = v567;
          *&buf[12] = 2080;
          *&buf[14] = v568;
          *&buf[22] = 2048;
          v723[0] = v536;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = v713;
          _os_log_impl(&dword_1C278D000, v566, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (it is optional)", buf, 0x26u);
        }

        v565 = __error();
        v553 = 0;
        v685 = 0;
        goto LABEL_751;
      }

      v558 = v713;
      v559 = isKeywordArgId(v713);
      if ([v557 length] == 0 && !v559)
      {
        break;
      }

      if ([v557 length] != 0 && v559)
      {
        v560 = 0x800000;
      }

      else
      {
        v560 = 0;
        if (!v559 && (v685 & 1) != 0)
        {
          v573 = *__error();
          v574 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v574, OS_LOG_TYPE_DEFAULT))
          {
            v575 = v327->var0;
            v576 = v327->var1;
            *buf = 134218498;
            *&buf[4] = v575;
            *&buf[12] = 2080;
            *&buf[14] = v576;
            *&buf[22] = 2048;
            v723[0] = v536;
            _os_log_impl(&dword_1C278D000, v574, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Non-photos QU tree is not *all* keywords.", buf, 0x20u);
          }

          v685 = 0;
          *__error() = v573;
        }
      }

      if (*(&v715 + 1) == 0 && !v559)
      {
        v569 = *__error();
        v581 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v581, OS_LOG_TYPE_DEFAULT))
        {
          v582 = v327->var0;
          v583 = v327->var1;
          *buf = 134218754;
          *&buf[4] = v582;
          *&buf[12] = 2080;
          *&buf[14] = v583;
          *&buf[22] = 2048;
          v723[0] = v536;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = v558;
          _os_log_impl(&dword_1C278D000, v581, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: no IDs or scores found)", buf, 0x26u);
        }

LABEL_771:
        *__error() = v569;
        v553 = 1;
        goto LABEL_772;
      }

      if (hasOnlyOptionalSpecialChar(v556))
      {
        v561 = *__error();
        v577 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v577, OS_LOG_TYPE_DEFAULT))
        {
          v579 = v327->var0;
          v578 = v327->var1;
          Length = CFStringGetLength(v556);
          *buf = 134219010;
          *&buf[4] = v579;
          *&buf[12] = 2080;
          *&buf[14] = v578;
          *&buf[22] = 2048;
          v723[0] = v536;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = v558;
          HIWORD(v723[1]) = 2048;
          *&v723[2] = Length;
          _os_log_impl(&dword_1C278D000, v577, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping all special chars tokenID %d with length: %ld", buf, 0x30u);
        }

LABEL_750:
        v565 = __error();
        v553 = 0;
LABEL_751:
        *v565 = v561;
        goto LABEL_772;
      }

      memset(&__p, 0, sizeof(__p));
      utf8QueryString(&__p, &v712, 1, 0);
      v584 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*v754, *&v754[8], &__p);
      if (!v584 || *(v584 + 10) != v558)
      {
        v585 = v558;
        if (v559)
        {
          *&v751[12] = v560;
          memset(&v710, 0, sizeof(v710));
          BYTE13(v752) = theArrayd == *&v535;
          if (theArrayd == *&v535)
          {
            std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v710, &__p.__r_.__value_.__l.__data_, "*");
          }

          else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v710, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v710 = __p;
          }

          if ((v710.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v586 = &v710;
          }

          else
          {
            v586 = v710.__r_.__value_.__r.__words[0];
          }

          NodeForToken = queryNodeForToken(v586, v675, v751, v327);
          v587 = *__error();
          v588 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v588, OS_LOG_TYPE_DEFAULT))
          {
            v589 = v327->var0;
            v590 = v327->var1;
            *buf = 134219010;
            *&buf[4] = v589;
            *&buf[12] = 2080;
            *&buf[14] = v590;
            *&buf[22] = 2048;
            v723[0] = v536;
            LOWORD(v723[1]) = 1024;
            *(&v723[1] + 2) = v558;
            HIWORD(v723[1]) = 1024;
            LODWORD(v723[2]) = NodeForToken == 0;
            _os_log_impl(&dword_1C278D000, v588, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Including keyword match for ranking for tokenID %d (invalid: %d)", buf, 0x2Cu);
          }

          *__error() = v587;
          if (SHIBYTE(v710.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v710.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          NodeForToken = 0;
        }

        if ([v557 length])
        {
          v591 = [v557 UTF8String];
          v592 = *&v751[8];
          v593 = db_make_query_node_with_ann(v591, 0);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL13QURankingNodePKcRKNSt3__113unordered_mapIifNS1_4hashIiEENS1_8equal_toIiEENS1_9allocatorINS1_4pairIKifEEEEEEffRKNS2_INS1_12basic_stringIcNS1_11char_traitsIcEENS7_IcEEEEfNS3_ISJ_EENS5_ISJ_EENS7_INS8_IKSJ_fEEEEEE_block_invoke;
          *&v723[0] = &__block_descriptor_56_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
          v723[3] = v592;
          *&v723[1] = v675;
          *&v723[2] = &v714;
          db_query_tree_apply_block(v593, buf, 0);
          NodeForToken = makeAndNode(NodeForToken, v593);
          v594 = *__error();
          v595 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v595, OS_LOG_TYPE_DEFAULT))
          {
            v596 = v327->var0;
            v597 = v327->var1;
            *buf = 134219010;
            *&buf[4] = v596;
            *&buf[12] = 2080;
            *&buf[14] = v597;
            *&buf[22] = 2048;
            v723[0] = v536;
            LOWORD(v723[1]) = 1024;
            *(&v723[1] + 2) = v585;
            HIWORD(v723[1]) = 1024;
            LODWORD(v723[2]) = v593 == 0;
            _os_log_impl(&dword_1C278D000, v595, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for tokenID %d (invalid: %d)", buf, 0x2Cu);
          }

          *__error() = v594;
          v598 = v593 != 0;
        }

        else
        {
          v599 = *__error();
          v600 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v600, OS_LOG_TYPE_DEFAULT))
          {
            v601 = v327->var0;
            v602 = v327->var1;
            *buf = 134218754;
            *&buf[4] = v601;
            *&buf[12] = 2080;
            *&buf[14] = v602;
            *&buf[22] = 2048;
            v723[0] = v536;
            LOWORD(v723[1]) = 1024;
            *(&v723[1] + 2) = v558;
            _os_log_impl(&dword_1C278D000, v600, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Not adding parsed query tree for tokenID %d because tokenDescription is empty", buf, 0x26u);
          }

          v598 = 0;
          *__error() = v599;
        }

        if (NodeForToken)
        {
          *buf = &__p;
          v603 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v754, &__p);
          v604 = v685;
          if ((v598 & v685) != 0)
          {
            v604 = 0;
          }

          v685 = v604;
          *(v603 + 10) = v585;
          v700 = makeAndNode(v700, NodeForToken);
        }

        else
        {
          v605 = *__error();
          v606 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v606, OS_LOG_TYPE_DEFAULT))
          {
            v607 = v327->var0;
            v608 = v327->var1;
            *buf = 134218754;
            *&buf[4] = v607;
            *&buf[12] = 2080;
            *&buf[14] = v608;
            *&buf[22] = 2048;
            v723[0] = v536;
            LOWORD(v723[1]) = 1024;
            *(&v723[1] + 2) = v585;
            _os_log_impl(&dword_1C278D000, v606, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Got an empty ranking tree for tokenID %d", buf, 0x26u);
          }

          *__error() = v605;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v553 = 0;
LABEL_772:
      std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v714);
      if (v553)
      {
LABEL_810:
        if ((v553 | v685))
        {
          v609 = v700;
          goto LABEL_822;
        }

        v357 = v700;
        if (!v700)
        {
LABEL_825:
          v622 = *__error();
          v623 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v623, OS_LOG_TYPE_DEFAULT))
          {
            v624 = v327->var0;
            v625 = v327->var1;
            *buf = 134218242;
            *&buf[4] = v624;
            *&buf[12] = 2080;
            *&buf[14] = v625;
            _os_log_impl(&dword_1C278D000, v623, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]Got an empty ranking query tree (using ALWAYS_FALSE_NODE)", buf, 0x16u);
          }

          *__error() = v622;
          v357 = makeFalseNode();
        }

        if (v718 < 0)
        {
          operator delete(v717[0]);
        }

        std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(v754);
        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v719);
        goto LABEL_535;
      }

LABEL_740:
      v534 = *&v535 + 1;
      if (*&v535 >= theArrayd)
      {
        goto LABEL_810;
      }
    }

    v569 = *__error();
    v570 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v570, OS_LOG_TYPE_DEFAULT))
    {
      v571 = v327->var0;
      v572 = v327->var1;
      *buf = 134218754;
      *&buf[4] = v571;
      *&buf[12] = 2080;
      *&buf[14] = v572;
      *&buf[22] = 2048;
      v723[0] = v536;
      LOWORD(v723[1]) = 1024;
      *(&v723[1] + 2) = v558;
      _os_log_impl(&dword_1C278D000, v570, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: nil / empty token description length)", buf, 0x26u);
    }

    goto LABEL_771;
  }

  *&v752 = 1065353216;
  memset(v751, 0, sizeof(v751));
  v452 = CFArrayGetCount(allocc);
  v453 = 112;
  if (v452 == 1)
  {
    v453 = 1073741936;
  }

  v684 = v453;
  IndexAttributeScores = getIndexAttributeScores(v327->var4);
  if (v452 < 1)
  {
    v357 = 0;
    v473 = 0;
    v455 = 0;
    LOBYTE(theArrayc) = 1;
    goto LABEL_813;
  }

  v679 = IndexAttributeScores;
  v357 = 0;
  v455 = 0;
  theArrayc = 1;
  do
  {
    v456 = CFArrayGetValueAtIndex(allocc, v455);
    v457 = getkQPQUOutputTokenRangeKey();
    if (!CFDictionaryContainsKey(v456, v457) || (v458 = getkQPQUOutputTokenArgIdsKey(), !CFDictionaryContainsKey(v456, v458)) || (v459 = getkQPQUOutputTokenArgScoresKey(), !CFDictionaryContainsKey(v456, v459)) || (v460 = getkQPQUOutputTokenKey(), !CFDictionaryContainsKey(v456, v460)))
    {
      v464 = *__error();
      v470 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v470, OS_LOG_TYPE_DEFAULT))
      {
        v471 = v327->var0;
        v472 = v327->var1;
        *buf = 134218498;
        *&buf[4] = v471;
        *&buf[12] = 2080;
        *&buf[14] = v472;
        *&buf[22] = 2048;
        *&v723[0] = v455;
        _os_log_impl(&dword_1C278D000, v470, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping token (ERROR: token info is missing essential keys)", buf, 0x20u);
      }

      goto LABEL_652;
    }

    v461 = getkQPQUOutputTokenRangeKey();
    if ([CFDictionaryGetValue(v456 v461)] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v721[0] = 1065353216;
      v719 = 0u;
      v720 = 0u;
      *v754 = -1;
      v474 = getkQPQUOutputTokenKey();
      v475 = CFDictionaryGetValue(v456, v474);
      if (hasOnlyOptionalSpecialChar(v475))
      {
        v473 = 0;
LABEL_688:
        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v719);
        goto LABEL_653;
      }

      if (![(__CFString *)v475 length])
      {
        v490 = *__error();
        v491 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v491, OS_LOG_TYPE_DEFAULT))
        {
          v492 = v327->var0;
          v493 = v327->var1;
          *buf = 134218754;
          *&buf[4] = v492;
          *&buf[12] = 2080;
          *&buf[14] = v493;
          *&buf[22] = 2048;
          *&v723[0] = v455;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = -1;
          _os_log_impl(&dword_1C278D000, v491, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (ERROR: nil / empty token length)", buf, 0x26u);
        }

        goto LABEL_675;
      }

      v476 = populateU2LabelsAndDescriptions(v754, &v719, v456, v689);
      if (v452 != 1 && std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&v719, 0) && !v476)
      {
        v490 = *__error();
        v495 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v495, OS_LOG_TYPE_DEFAULT))
        {
          v496 = v327->var0;
          v497 = v327->var1;
          *buf = 134218754;
          *&buf[4] = v496;
          *&buf[12] = 2080;
          *&buf[14] = v497;
          *&buf[22] = 2048;
          *&v723[0] = v455;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = *v754;
          _os_log_impl(&dword_1C278D000, v495, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (it is optional)", buf, 0x26u);
        }

        v494 = __error();
        v473 = 0;
        theArrayc = 0;
        goto LABEL_681;
      }

      v477 = *v754;
      v478 = isKeywordArgId(*v754);
      if ([v476 length] != 0 || v478)
      {
        v479 = theArrayc;
        if (v478)
        {
          v480 = theArrayc;
        }

        else
        {
          v480 = 0;
        }

        if (theArrayc)
        {
          v479 = v480;
        }

        theArrayc = v479;
        if (*(&v720 + 1) != 0 || v478)
        {
          v669 = v477;
          if (v477 - 51 > 1)
          {
            if (v478)
            {
              v505 = [(__CFString *)v475 UTF8String];
              v506 = *(v679 + 2);
              if (v506)
              {
                v507 = v505;
                v489 = 0;
                if (v455 == v452 - 1)
                {
                  v508 = -1;
                }

                else
                {
                  v508 = 0;
                }

                v673 = v508;
                do
                {
                  v509 = (v506 + 2);
                  if (*(v506 + 39) < 0)
                  {
                    v509 = *v509;
                  }

                  v510 = createQueryNode(v509, v507, v684, 1, v673, *(v506 + 10), *(v506 + 10));
                  if ((*(v327 + 29) & 0x40) != 0 && !strcmp(v509, "kMDItemTextContent"))
                  {
                    v511 = createQueryNode("_kMDItemBundleID", "com.apple.mobilesafari", 0, 5, 0, 0.0, 0.0);
                    v510 = makeAndNode(v510, v511);
                  }

                  v489 = makeOrNode(v489, v510);
                  v506 = *v506;
                }

                while (v506);
              }

              else
              {
                v489 = 0;
              }

              v520 = *__error();
              v521 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v521, OS_LOG_TYPE_DEFAULT))
              {
                v522 = v327->var0;
                v523 = v327->var1;
                *buf = 134219010;
                *&buf[4] = v522;
                *&buf[12] = 2080;
                *&buf[14] = v523;
                *&buf[22] = 2048;
                *&v723[0] = v455;
                LOWORD(v723[1]) = 1024;
                *(&v723[1] + 2) = v669;
                HIWORD(v723[1]) = 1024;
                LODWORD(v723[2]) = v489 == 0;
                _os_log_impl(&dword_1C278D000, v521, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Including keyword match for retrieval for tokenID %d (invalid: %d)", buf, 0x2Cu);
              }

              *__error() = v520;
              RetrievalNodeFromQueryString = 0;
              if (!v476 || v669 > 9 || ((1 << v669) & 0x302) == 0)
              {
                goto LABEL_718;
              }

              RetrievalNodeFromQueryString = makeRetrievalNodeFromQueryString([v476 UTF8String]);
              v489 = makeOrNode(v489, RetrievalNodeFromQueryString);
              v512 = *__error();
              v524 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v524, OS_LOG_TYPE_DEFAULT))
              {
                v525 = v327->var0;
                v526 = v327->var1;
                *buf = 134219010;
                *&buf[4] = v525;
                *&buf[12] = 2080;
                *&buf[14] = v526;
                *&buf[22] = 2048;
                *&v723[0] = v455;
                LOWORD(v723[1]) = 1024;
                *(&v723[1] + 2) = v669;
                HIWORD(v723[1]) = 1024;
                LODWORD(v723[2]) = RetrievalNodeFromQueryString == 0;
                _os_log_impl(&dword_1C278D000, v524, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for tokenID %d (invalid: %d)", buf, 0x2Cu);
              }

              v516 = __error();
            }

            else
            {
              v489 = makeRetrievalNodeFromQueryString([v476 UTF8String]);
              v512 = *__error();
              v513 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v513, OS_LOG_TYPE_DEFAULT))
              {
                v514 = v327->var0;
                v515 = v327->var1;
                *buf = 134219010;
                *&buf[4] = v514;
                *&buf[12] = 2080;
                *&buf[14] = v515;
                *&buf[22] = 2048;
                *&v723[0] = v455;
                LOWORD(v723[1]) = 1024;
                *(&v723[1] + 2) = v669;
                HIWORD(v723[1]) = 1024;
                LODWORD(v723[2]) = v489 == 0;
                _os_log_impl(&dword_1C278D000, v513, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for tokenID %d (invalid: %d)", buf, 0x2Cu);
              }

              v516 = __error();
              RetrievalNodeFromQueryString = 0;
            }

            *v516 = v512;
            goto LABEL_718;
          }

          if (v476)
          {
            v481 = makeRetrievalNodeFromQueryString([v476 UTF8String]);
            v482 = *__error();
            v483 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v483, OS_LOG_TYPE_DEFAULT))
            {
              v484 = v327->var0;
              v485 = v327->var1;
              *buf = 134219010;
              *&buf[4] = v484;
              *&buf[12] = 2080;
              *&buf[14] = v485;
              *&buf[22] = 2048;
              *&v723[0] = v455;
              LOWORD(v723[1]) = 1024;
              *(&v723[1] + 2) = v477;
              HIWORD(v723[1]) = 1024;
              LODWORD(v723[2]) = v481 == 0;
              _os_log_impl(&dword_1C278D000, v483, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for earliest/latest tokenID %d (invalid: %d)", buf, 0x2Cu);
            }

            *__error() = v482;
            if (!v481)
            {
LABEL_722:
              v490 = *__error();
              v528 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
              {
                v529 = v327->var0;
                v530 = v327->var1;
                *buf = 134218754;
                *&buf[4] = v529;
                *&buf[12] = 2080;
                *&buf[14] = v530;
                *&buf[22] = 2048;
                *&v723[0] = v455;
                LOWORD(v723[1]) = 1024;
                *(&v723[1] + 2) = v669;
                _os_log_impl(&dword_1C278D000, v528, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Got an empty retrieval tree for tokenID %d", buf, 0x26u);
              }

LABEL_675:
              v494 = __error();
              v473 = 0;
LABEL_681:
              *v494 = v490;
              goto LABEL_688;
            }

            v486 = createQueryNode("_kMDItemBundleID", "com.apple.mobilecal", 0, 1, 0, 0.0, 0.0);
            RetrievalNodeFromQueryString = makeAndNode(v481, v486);
            v488 = createQueryNode("_kMDItemBundleID", "com.apple.mobilecal", 0, 5, 0, 0.0, 0.0);
            v489 = makeOrNode(RetrievalNodeFromQueryString, v488);
LABEL_718:
            if (v489)
            {
              v357 = makeAndNode(v357, v489);
              v473 = 0;
              v527 = theArrayc;
              if (((RetrievalNodeFromQueryString != 0) & theArrayc) != 0)
              {
                v527 = 0;
              }

              theArrayc = v527;
              goto LABEL_688;
            }

            goto LABEL_722;
          }

          v498 = *__error();
          v517 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v517, OS_LOG_TYPE_DEFAULT))
          {
            v518 = v327->var0;
            v519 = v327->var1;
            *buf = 134218754;
            *&buf[4] = v518;
            *&buf[12] = 2080;
            *&buf[14] = v519;
            *&buf[22] = 2048;
            *&v723[0] = v455;
            LOWORD(v723[1]) = 1024;
            *(&v723[1] + 2) = v477;
            _os_log_impl(&dword_1C278D000, v517, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping earliest/latest tokenID %d (ERROR: no IDs or scores found)", buf, 0x26u);
          }
        }

        else
        {
          v498 = *__error();
          v502 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v502, OS_LOG_TYPE_DEFAULT))
          {
            v503 = v327->var0;
            v504 = v327->var1;
            *buf = 134218754;
            *&buf[4] = v503;
            *&buf[12] = 2080;
            *&buf[14] = v504;
            *&buf[22] = 2048;
            *&v723[0] = v455;
            LOWORD(v723[1]) = 1024;
            *(&v723[1] + 2) = v477;
            _os_log_impl(&dword_1C278D000, v502, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: no IDs or scores found)", buf, 0x26u);
          }
        }
      }

      else
      {
        v498 = *__error();
        v499 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v499, OS_LOG_TYPE_DEFAULT))
        {
          v500 = v327->var0;
          v501 = v327->var1;
          *buf = 134218754;
          *&buf[4] = v500;
          *&buf[12] = 2080;
          *&buf[14] = v501;
          *&buf[22] = 2048;
          *&v723[0] = v455;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = v477;
          _os_log_impl(&dword_1C278D000, v499, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: nil / empty token description length)", buf, 0x26u);
        }
      }

      *__error() = v498;
      v473 = 1;
      goto LABEL_688;
    }

    v463 = v462;
    v464 = *__error();
    v465 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v465, OS_LOG_TYPE_DEFAULT))
    {
      v466 = v357;
      v468 = v327->var0;
      v467 = v327->var1;
      v763.location = 0x7FFFFFFFFFFFFFFFLL;
      v763.length = v463;
      v469 = NSStringFromRange(v763);
      *buf = 134218754;
      *&buf[4] = v468;
      *&buf[12] = 2080;
      *&buf[14] = v467;
      *&buf[22] = 2048;
      *&v723[0] = v455;
      LOWORD(v723[1]) = 2112;
      *(&v723[1] + 2) = v469;
      _os_log_impl(&dword_1C278D000, v465, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID (ERROR: invalid range: %@)", buf, 0x2Au);
      v357 = v466;
    }

LABEL_652:
    v473 = 0;
    *__error() = v464;
LABEL_653:
    ++v455;
  }

  while ((v473 & 1) == 0 && v455 < v452);
  if (((v473 | theArrayc) & 1) == 0)
  {
    if (!v357)
    {
      goto LABEL_816;
    }

    goto LABEL_819;
  }

LABEL_813:
  v610 = *__error();
  v611 = _SILogForLogForCategory(17);
  if (os_log_type_enabled(v611, OS_LOG_TYPE_DEFAULT))
  {
    v612 = v327->var0;
    v613 = v327->var1;
    *buf = 134219010;
    *&buf[4] = v612;
    *&buf[12] = 2080;
    *&buf[14] = v613;
    *&buf[22] = 2048;
    *&v723[0] = v455;
    LOWORD(v723[1]) = 1024;
    *(&v723[1] + 2) = v473;
    HIWORD(v723[1]) = 1024;
    LODWORD(v723[2]) = theArrayc & 1;
    _os_log_impl(&dword_1C278D000, v611, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][lastIdx=%lu] Skipping non-Photos QU tree: {malformed=%d, allKeyword=%d}", buf, 0x2Cu);
  }

  *__error() = v610;
  db_free_query_node(v357);
LABEL_816:
  v614 = *__error();
  v615 = _SILogForLogForCategory(17);
  if (os_log_type_enabled(v615, OS_LOG_TYPE_DEFAULT))
  {
    v616 = v327->var0;
    v617 = v327->var1;
    *buf = 134218242;
    *&buf[4] = v616;
    *&buf[12] = 2080;
    *&buf[14] = v617;
    _os_log_impl(&dword_1C278D000, v615, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]Got an empty retrieval query tree (using ALWAYS_FALSE_NODE)", buf, 0x16u);
  }

  *__error() = v614;
  v357 = makeFalseNode();
LABEL_819:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v751[16]);
  if (*v751)
  {
    operator delete(*v751);
  }

LABEL_535:
  if (!v357)
  {
    goto LABEL_538;
  }

  if (v357->var6 == 16)
  {
    v358 = v357;
    v359 = 0;
    goto LABEL_539;
  }

  if (v708)
  {
    v378 = *(v709 + 7);
    if ((v378 & 0x20000) != 0)
    {
      db_dump_pommes_query_node_with_prefix(v709->var0, &v709, v709->var1, "[QU][base]", v357, (v378 >> 9) & 1);
    }

    v379 = normalizeQueryNode(v357, 1.0);
    v380 = (*(v709 + 7) & 2) == 0;
    v381 = *__error();
    if (v380)
    {
      v382 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v382, OS_LOG_TYPE_DEFAULT))
      {
LABEL_625:
        v444 = v709->var0;
        v443 = v709->var1;
        *buf = 134218498;
        *&buf[4] = v444;
        *&buf[12] = 2080;
        *&buf[14] = v443;
        *&buf[22] = 2048;
        v723[0] = v379;
        _os_log_impl(&dword_1C278D000, v382, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] QU node maxScore = %f", buf, 0x20u);
      }
    }

    else
    {
      v382 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v382, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_625;
      }
    }

    *__error() = v381;
  }

  v445 = (*(v709 + 7) & 2) == 0;
  v446 = *__error();
  if (v445)
  {
    v447 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
    {
LABEL_631:
      v449 = v709->var0;
      v448 = v709->var1;
      *buf = 134218242;
      *&buf[4] = v449;
      *&buf[12] = 2080;
      *&buf[14] = v448;
      _os_log_impl(&dword_1C278D000, v447, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added non-photos QU query node to the non-Photos query tree", buf, 0x16u);
    }
  }

  else
  {
    v447 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_631;
    }
  }

  *__error() = v446;
  v366 = v709;
  v365 = v357;
  if ((~*(v709 + 7) & 0x20200) != 0)
  {
LABEL_545:
    v367 = pommesDefaultTree(a1, v366, v708);
    v368 = v367;
    if (!v367 || v367->var6 == 16)
    {
      v369 = (*(v709 + 7) & 2) == 0;
      v370 = *__error();
      if (v369)
      {
        v371 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_551;
        }
      }

      else
      {
        v371 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
        {
LABEL_551:
          v373 = v709->var0;
          v372 = v709->var1;
          *buf = 134218498;
          *&buf[4] = v373;
          *&buf[12] = 2080;
          *&buf[14] = v372;
          *&buf[22] = 1024;
          LODWORD(v723[0]) = v368 == 0;
          _os_log_impl(&dword_1C278D000, v371, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Default query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
        }
      }

      *__error() = v370;
      db_free_query_node(v368);
LABEL_573:
      v366 = v709;
      if (v365)
      {
        goto LABEL_574;
      }

      v395 = 1;
LABEL_580:
      v396 = (*(v366 + 7) & 2) == 0;
      v397 = *__error();
      if (v396)
      {
        v398 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v398, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_584;
        }
      }

      else
      {
        v398 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v398, OS_LOG_TYPE_DEFAULT))
        {
LABEL_584:
          v400 = v709->var0;
          v399 = v709->var1;
          *buf = 134218498;
          *&buf[4] = v400;
          *&buf[12] = 2080;
          *&buf[14] = v399;
          *&buf[22] = 1024;
          LODWORD(v723[0]) = v395;
          _os_log_impl(&dword_1C278D000, v398, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Non-photos query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
        }
      }

      *__error() = v397;
      db_free_query_node(v365);
      v24 = v707;
      goto LABEL_615;
    }

    if (!v708)
    {
LABEL_566:
      v365 = makeOrNode(v365, v368);
      v385 = (*(v709 + 7) & 2) == 0;
      v386 = *__error();
      if (v385)
      {
        v387 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v387, OS_LOG_TYPE_DEFAULT))
        {
          v389 = v709->var0;
          v388 = v709->var1;
          var6 = v368->var6;
          *buf = 134218498;
          *&buf[4] = v389;
          *&buf[12] = 2080;
          *&buf[14] = v388;
          *&buf[22] = 1024;
          LODWORD(v723[0]) = var6;
          _os_log_impl(&dword_1C278D000, v387, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added default query node to the non-Photos tree (type: %d)", buf, 0x1Cu);
        }
      }

      else
      {
        v391 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v391, OS_LOG_TYPE_DEFAULT))
        {
          v393 = v709->var0;
          v392 = v709->var1;
          v394 = v368->var6;
          *buf = 134218498;
          *&buf[4] = v393;
          *&buf[12] = 2080;
          *&buf[14] = v392;
          *&buf[22] = 1024;
          LODWORD(v723[0]) = v394;
          _os_log_impl(&dword_1C278D000, v391, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added default query node to the non-Photos tree (type: %d)", buf, 0x1Cu);
        }
      }

      *__error() = v386;
      goto LABEL_573;
    }

    v374 = normalizeQueryNode(v367, 1.0);
    v375 = (*(v709 + 7) & 2) == 0;
    v376 = *__error();
    if (v375)
    {
      v377 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v377, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_564;
      }
    }

    else
    {
      v377 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v377, OS_LOG_TYPE_DEFAULT))
      {
LABEL_564:
        v384 = v709->var0;
        v383 = v709->var1;
        *buf = 134218498;
        *&buf[4] = v384;
        *&buf[12] = 2080;
        *&buf[14] = v383;
        *&buf[22] = 2048;
        v723[0] = v374;
        _os_log_impl(&dword_1C278D000, v377, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Default node maxScore = %f", buf, 0x20u);
      }
    }

    *__error() = v376;
    goto LABEL_566;
  }

LABEL_574:
  if (v365->var6 == 16)
  {
    v395 = 0;
    goto LABEL_580;
  }

  if ((*(v366 + 29) & 0x20) != 0 || (v366->var3 & 4) != 0)
  {
    v401 = createQueryNodeForPhotosMediaType(0, v366);
    v402 = makeAndNode(v365, v401);
    v365 = v402;
    if (v708)
    {
      normalizeQueryNode(v402, 1.0);
    }

    v696 = 1;
  }

  else
  {
    v696 = 0;
  }

  v403 = *(v709 + 7);
  if ((~v403 & 0x402) == 0)
  {
    if ([objc_msgSend(objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      v403 = *(v709 + 7);
      goto LABEL_592;
    }

    v413 = [MEMORY[0x1E695DF00] date];
    v414 = 0;
    v415 = &dword_1C2BFF940;
    v416 = 5;
    while (2)
    {
      v417 = *(v415 - 1);
      v418 = *v415;
      [objc_msgSend(v413 dateByAddingTimeInterval:{(-86400 * v417)), "timeIntervalSinceReferenceDate"}];
      v420 = createQueryNode("kMDItemInterestingDate_Ranking", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v419), "UTF8String"], 0, 4, 0, v418, 0.05);
      v414 = makeOrNode(v414, v420);
      v421 = (*(v709 + 7) & 2) == 0;
      v422 = *__error();
      if (v421)
      {
        v423 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v423, OS_LOG_TYPE_DEFAULT))
        {
LABEL_604:
          v425 = v709->var0;
          v424 = v709->var1;
          *buf = 134218754;
          *&buf[4] = v425;
          *&buf[12] = 2080;
          *&buf[14] = v424;
          *&buf[22] = 2048;
          v723[0] = v418;
          LOWORD(v723[1]) = 1024;
          *(&v723[1] + 2) = v417;
          _os_log_impl(&dword_1C278D000, v423, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Adding recency nodes weight=%f, dayold=%d", buf, 0x26u);
        }
      }

      else
      {
        v423 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v423, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_604;
        }
      }

      *__error() = v422;
      v415 += 2;
      if (!--v416)
      {
        v412 = makeAndNode(v365, v414);
        goto LABEL_607;
      }

      continue;
    }
  }

LABEL_592:
  v404 = (v403 & 2) == 0;
  v405 = *__error();
  if (v404)
  {
    v406 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v406, OS_LOG_TYPE_DEFAULT))
    {
      v408 = v709->var0;
      v407 = v709->var1;
      *buf = 134218242;
      *&buf[4] = v408;
      *&buf[12] = 2080;
      *&buf[14] = v407;
      _os_log_impl(&dword_1C278D000, v406, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Not Adding recency nodes", buf, 0x16u);
    }
  }

  else
  {
    v409 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v409, OS_LOG_TYPE_DEFAULT))
    {
      v411 = v709->var0;
      v410 = v709->var1;
      *buf = 134218242;
      *&buf[4] = v411;
      *&buf[12] = 2080;
      *&buf[14] = v410;
      _os_log_impl(&dword_1C278D000, v409, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Not Adding recency nodes", buf, 0x16u);
    }
  }

  *__error() = v405;
  v412 = v365;
LABEL_607:
  v24 = makeOrNode(v707, v412);
  v426 = (*(v709 + 7) & 2) == 0;
  v330 = *__error();
  if (v426)
  {
    v427 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
    {
      v428 = v709->var0;
      v429 = v709->var1;
      v430 = *(v709 + 7);
      *buf = 134219010;
      *&buf[4] = v428;
      *&buf[12] = 2080;
      *&buf[14] = v429;
      *&buf[22] = 1024;
      LODWORD(v723[0]) = HIWORD(v430) & 1;
      WORD2(v723[0]) = 1024;
      *(v723 + 6) = (v430 >> 17) & 1;
      WORD1(v723[1]) = 1024;
      HIDWORD(v723[1]) = v696;
      _os_log_impl(&dword_1C278D000, v427, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added non-photos query node to the POMMES query tree (useQU: %d) (useLLM: %d) (filter: %d)", buf, 0x28u);
    }
  }

  else
  {
    v431 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v431, OS_LOG_TYPE_DEFAULT))
    {
      v432 = v709->var0;
      v433 = v709->var1;
      v434 = *(v709 + 7);
      *buf = 134219010;
      *&buf[4] = v432;
      *&buf[12] = 2080;
      *&buf[14] = v433;
      *&buf[22] = 1024;
      LODWORD(v723[0]) = HIWORD(v434) & 1;
      WORD2(v723[0]) = 1024;
      *(v723 + 6) = (v434 >> 17) & 1;
      WORD1(v723[1]) = 1024;
      HIDWORD(v723[1]) = v696;
      _os_log_impl(&dword_1C278D000, v431, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added non-photos query node to the POMMES query tree (useQU: %d) (useLLM: %d) (filter: %d)", buf, 0x28u);
    }
  }

  v335 = __error();
LABEL_614:
  *v335 = v330;
LABEL_615:
  v435 = *MEMORY[0x1E69E9840];
  return v24;
}