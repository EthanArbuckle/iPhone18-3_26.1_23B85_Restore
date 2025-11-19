uint64_t IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::findVector(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, int a5)
{
  os_unfair_lock_lock((a1 + 112));
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  v14 = *a3;
  if (v14 == -1)
  {
    if (*(a1 + 156) != -1)
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
    if (v16 >= _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1))
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
      v30 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
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
  v33[2] = ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10findVectorERK10CIVector_sIfLi256EERjRfj_block_invoke;
  v33[3] = &unk_1E81953E8;
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

unint64_t ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10findVectorERK10CIVector_sIfLi256EERjRfj_block_invoke(unint64_t result, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(result + 40);
  v5 = *a3;
  if (v5 >= *(v4 + 156))
  {
    goto LABEL_19;
  }

  v7 = result;
  v8 = **(result + 48);
  v9 = a3[1];
  v10 = v8 == v9;
  v11 = vabds_f32(v8, v9);
  v12 = fmaxf(fminf(fabsf(v9), fabsf(v8)) * 0.000015259, 0.000015259);
  if (!v10 && v11 > v12)
  {
    return result;
  }

  v14 = *(result + 64);
  if (v14)
  {
    v28 = a4;
    v15 = *(*(v4 + 48) + 32);
    v16 = v15[3] + v15[2] * v5;
    bit_vector_set_13535(v15 + 525, (v16 >> 20));
    v17 = (v16 + 1040) >> 20;
    if (v17 > (v16 >> 20))
    {
      v18 = (v16 >> 20) + 1;
      do
      {
        v19 = v18;
        bit_vector_set_13535(v15 + 525, v18++);
      }

      while (v17 > v19);
    }

    result = _windowsResolvePtr((v15 + 5), v15[3] + v15[2] * v5, 1040);
    v20 = v28;
    if (v14 != *(result + 1032))
    {
      return result;
    }

    *&v5 = *a3;
  }

  else
  {
    v20 = a4;
  }

  v21 = *(v7 + 56);
  v22 = *(*(v4 + 48) + 32);
  v23 = v22[3] + v22[2] * v5;
  bit_vector_set_13535(v22 + 525, (v23 >> 20));
  v24 = (v23 + 1040) >> 20;
  if (v24 > (v23 >> 20))
  {
    v25 = (v23 >> 20) + 1;
    do
    {
      v26 = v25;
      bit_vector_set_13535(v22 + 525, v25++);
    }

    while (v24 > v26);
  }

  v27 = _windowsResolvePtr((v22 + 5), v22[3] + v22[2] * v5, 1040);
  result = memcmp(v21, v27, 0x400uLL);
  if (!result)
  {
    a4 = v20;
    *(*(*(v7 + 32) + 8) + 24) = *a3;
LABEL_19:
    *a4 = 1;
  }

  return result;
}

uint64_t IVFVectorIndexTemplate<float,256>::IVFVectorIndexRootBase::trainOnce(uint64_t *a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  v52 = 0;
  v53 = 0;
  QuantizerManager<float,256>::lastTrainedQuantizer(&v52, *a1);
  v48 = a2;
  v45 = *a2;
  v46 = a2[1];
  v4 = v46 - *a2;
  v44 = v4 >> 3;
  if (v4)
  {
    if (!((v4 >> 3) >> 62))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v47 = (*(*v52 + 24))(v52);
  if (v46 != v45)
  {
    v5 = 0;
    if (v44 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v44;
    }

    while (1)
    {
      (*(**(*v48 + 8 * v5) + 16))(v55);
      v7 = v52;
      v9 = *v55;
      v8 = *&v55[8];
      if (*&v55[8] && !atomic_fetch_add((*&v55[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v9 != v7)
      {
        break;
      }

      (*(**(*v48 + 8 * v5) + 24))(v55);
      v10 = *&v55[8];
      *(4 * v5) = *(*v55 + 72);
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      (*(**(*v48 + 8 * v5) + 24))(v55);
      v11 = *&v55[8];
      v12 = *(*v55 + 68);
      if (*&v55[8] && !atomic_fetch_add((*&v55[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v12 != v47)
      {
        v38 = __si_assert_copy_extra_332();
        v39 = v38;
        v40 = "";
        if (v38)
        {
          v40 = v38;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2113, "vectorIndexes[i]->getPartitions()->nPartitions() == nPartitions", v40);
        free(v39);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v6 == ++v5)
      {
        goto LABEL_20;
      }
    }

    v35 = __si_assert_copy_extra_332();
    v36 = v35;
    v37 = "";
    if (v35)
    {
      v37 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2111, "vectorIndexes[i]->getQuantizer() == quantizer", v37);
LABEL_72:
    free(v36);
    if (__valid_fs(-1))
    {
      v41 = 2989;
    }

    else
    {
      v41 = 3072;
    }

    *v41 = -559038737;
    abort();
  }

LABEL_20:
  v13 = *a1;
  v14 = atomic_load((v13 + 72));
  if ((v14 & 1) == 0)
  {
    v42 = __si_assert_copy_extra_332();
    v36 = v42;
    v43 = "";
    if (v42)
    {
      v43 = v42;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 774, "_training.test()", v43);
    goto LABEL_72;
  }

  if (*(v13 + 96))
  {
    v15 = *(v13 + 16);
    *v55 = MEMORY[0x1E69E9820];
    *&v55[8] = 0x40000000;
    *&v55[16] = ___ZN16QuantizerManagerIfLi256EE23commitTrainingQuantizerEv_block_invoke;
    *&v55[24] = &__block_descriptor_tmp_878;
    *&v55[32] = v13;
    dispatch_sync(v15, v55);
  }

  v16 = *(v13 + 80);
  if (v16)
  {
    v17 = (*(*v16 + 16))(v16) + 1;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(v13 + 71);
  if (v18 >= 0)
  {
    v19 = *(v13 + 71);
  }

  else
  {
    v19 = *(v13 + 56);
  }

  if (v19 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v19 + 1 >= 0x17)
  {
    operator new();
  }

  memset(v49, 0, 24);
  *(&v49[0].__r_.__value_.__s + 23) = v19 + 1;
  if (v19)
  {
    if ((v18 & 0x80u) == 0)
    {
      v20 = (v13 + 48);
    }

    else
    {
      v20 = *(v13 + 48);
    }

    memmove(v49, v20, v19);
  }

  *(&v49[0].__r_.__value_.__l.__data_ + v19) = 46;
  std::to_string(&v54, v17);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v54;
  }

  else
  {
    v21 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v54.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(v49, v21, size);
  v24 = v23->__r_.__value_.__r.__words[2];
  *v55 = *&v23->__r_.__value_.__l.__data_;
  *&v55[16] = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(v55, ".quantizer");
  v26 = v25->__r_.__value_.__r.__words[2];
  v50 = *&v25->__r_.__value_.__l.__data_;
  v51 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((v55[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_52:
    operator delete(v54.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v49[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  operator delete(*v55);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  if ((SHIBYTE(v49[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_53:
  operator delete(v49[0].__r_.__value_.__l.__data_);
LABEL_46:
  if (v51 >= 0)
  {
    v27 = &v50;
  }

  else
  {
    v27 = v50;
  }

  if (_ZN16QuantizerManagerIDF16_Li256EE18createFdPtrForFileEPKc(v13, v27))
  {
    operator new();
  }

  v28 = *__error();
  v29 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    v33 = &v50;
    if (v51 < 0)
    {
      v33 = v50;
    }

    v34 = *v13;
    *v55 = 136315906;
    *&v55[4] = "newQuantizer";
    *&v55[12] = 1024;
    *&v55[14] = 794;
    *&v55[18] = 2080;
    *&v55[20] = v33;
    *&v55[28] = 1024;
    *&v55[30] = v34;
    _os_log_fault_impl(&dword_1C278D000, v29, OS_LOG_TYPE_FAULT, "%s:%d: Failed to create %s in parentFd: %i", v55, 0x22u);
  }

  *__error() = v28;
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  v30 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *MEMORY[0x1E69E9840];
  return 0;
}

void *QuantizerManager<float,256>::lastTrainedQuantizer(void *result, uint64_t a2)
{
  v2 = atomic_load((a2 + 72));
  if ((v2 & 1) == 0)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 752, "_training.test()", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = *(a2 + 104);
    *result = v3;
    result[1] = v4;
    if (!v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 80);
  if (v5)
  {
    v4 = *(a2 + 88);
    *result = v5;
    result[1] = v4;
    if (!v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (ZeroVectorQuantizer<float,256>::sharedInstance(void)::onceToken != -1)
  {
    v9 = result;
    dispatch_once(&ZeroVectorQuantizer<float,256>::sharedInstance(void)::onceToken, &__block_literal_global_779);
    result = v9;
  }

  v4 = *(ZeroVectorQuantizer<float,256>::sharedInstance(void)::zvq + 8);
  *result = *ZeroVectorQuantizer<float,256>::sharedInstance(void)::zvq;
  result[1] = v4;
  if (v4)
  {
LABEL_7:
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN16QuantizerManagerIfLi256EE23commitTrainingQuantizerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 80))
  {
    goto LABEL_63;
  }

  v2 = *(v1 + 71);
  if (v2 >= 0)
  {
    v3 = *(v1 + 71);
  }

  else
  {
    v3 = *(v1 + 56);
  }

  if (v3 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_95;
  }

  if (v3 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v47, 0, sizeof(v47));
  *(&v47.__r_.__value_.__s + 23) = v3 + 1;
  if (v3)
  {
    if ((v2 & 0x80u) == 0)
    {
      v4 = (v1 + 48);
    }

    else
    {
      v4 = *(v1 + 48);
    }

    memmove(&v47, v4, v3);
  }

  *(&v47.__r_.__value_.__l.__data_ + v3) = 46;
  v5 = (*(**(v1 + 80) + 16))(*(v1 + 80));
  std::to_string(&__p, v5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v47, p_p, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v48, ".quantizer");
  v11 = v10->__r_.__value_.__r.__words[2];
  *v49 = *&v10->__r_.__value_.__l.__data_;
  v50 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_32:
    operator delete(v47.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  v12 = *(v1 + 80);
  if (v50 >= 0)
  {
    v13 = v49;
  }

  else
  {
    v13 = v49[0];
  }

  fd_rename(*(*(v12 + 40) + 40), v13);
  MEMORY[0x1C691FAE0](v12 + 8, v13);
  atomic_store(1u, (*(v1 + 80) + 57));
  v15 = *(v1 + 80);
  v14 = *(v1 + 88);
  v16 = v15;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16 = *(v1 + 80);
  }

  v17 = (*(*v16 + 16))(v16);
  v18 = *(v1 + 120);
  if (!v18)
  {
    goto LABEL_51;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = v17;
    if (v18 <= v17)
    {
      v20 = v17 % v18;
    }
  }

  else
  {
    v20 = (v18 - 1) & v17;
  }

  v21 = *(*(v1 + 112) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_51:
    operator new();
  }

  if (v19.u32[0] < 2uLL)
  {
    while (1)
    {
      v24 = v22[1];
      if (v24 == v17)
      {
        if (*(v22 + 4) == v17)
        {
          goto LABEL_52;
        }
      }

      else if ((v24 & (v18 - 1)) != v20)
      {
        goto LABEL_51;
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v17)
    {
      break;
    }

    if (v23 >= v18)
    {
      v23 %= v18;
    }

    if (v23 != v20)
    {
      goto LABEL_51;
    }

LABEL_41:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_51;
    }
  }

  if (*(v22 + 4) != v17)
  {
    goto LABEL_41;
  }

LABEL_52:
  if (v14)
  {
    v25 = std::__shared_weak_count::lock(v14);
    v26 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v14);
      if (!atomic_fetch_add(v26 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v26 + 16))(v26);
        v14 = v26;
        goto LABEL_58;
      }
    }

    else
    {
      v15 = 0;
LABEL_58:
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    v15 = 0;
    v26 = 0;
  }

  v27 = v22[4];
  v22[3] = v15;
  v22[4] = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

LABEL_63:
  v28 = *(v1 + 71);
  if (v28 >= 0)
  {
    v29 = *(v1 + 71);
  }

  else
  {
    v29 = *(v1 + 56);
  }

  if (v29 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_95:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v29 + 10 >= 0x17)
  {
    operator new();
  }

  v49[1] = 0;
  v50 = 0;
  v49[0] = 0;
  HIBYTE(v50) = v29 + 10;
  if (v29)
  {
    if ((v28 & 0x80u) == 0)
    {
      v30 = (v1 + 48);
    }

    else
    {
      v30 = *(v1 + 48);
    }

    memmove(v49, v30, v29);
  }

  strcpy(v49 + v29, ".quantizer");
  v32 = *(v1 + 96);
  v31 = *(v1 + 104);
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = *(v1 + 88);
  *(v1 + 80) = v32;
  *(v1 + 88) = v31;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(v1 + 80);
  if (v50 >= 0)
  {
    v35 = v49;
  }

  else
  {
    v35 = v49[0];
  }

  fd_rename(*(*(v34 + 40) + 40), v35);
  MEMORY[0x1C691FAE0](v34 + 8, v35);
  v36 = *(v1 + 80);
  v37 = *(v36 + 40);
  *v37 = 0;
  vi_onefixedsize_disk_allocator::storeHeader(v37);
  storage_array_SyncPages(*(v36 + 40) + 8, *(v36 + 40) + 4200);
  storage_array_Truncate((*(v36 + 40) + 8));
  v38 = *(v36 + 40);
  fd_make_readonly(*(v38 + 40));
  v39 = *(v38 + 40);
  if (v39)
  {
    do
    {
      v40 = fchmodat(*(v39 + 44), *(v39 + 72), 0x100u, 2048);
      v41 = g_prot_error_callback;
      if (v40 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v43 = *(v39 + 40);
      v44 = __error();
    }

    while (((*(v41 + 16))(v41, v43, *v44, 19) & 1) != 0);
  }

  *(v36 + 56) = 1;
  v45 = *(v1 + 104);
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
    if (SHIBYTE(v50) < 0)
    {
LABEL_91:
      operator delete(v49[0]);
    }
  }

  else if (SHIBYTE(v50) < 0)
  {
    goto LABEL_91;
  }
}

float ___ZN22IVFVectorIndexTemplateIfLi256EE22IVFVectorIndexRootBase9trainOnceENSt3__110shared_ptrI16QuantizerManagerIfLi256EEEENS2_6vectorIPS1_NS2_9allocatorIS8_EEEEjj_block_invoke(uint64_t a1, unsigned int a2, float *a3)
{
  v6 = (*(**(a1 + 32) + 32))(*(a1 + 32), *a3);
  if (*(a1 + 64))
  {
    __p = 0;
    v11 = 0;
    v12 = 0;
    (*(**(a1 + 40) + 80))(&__p);
    if (*(__p + 1) < a3[1])
    {
      a2 = *(a1 + 68) + *__p;
    }

    v11 = __p;
    operator delete(__p);
  }

  v7 = (*(a1 + 48) + 1028 * a2);
  v8 = v7[256];
  if (v8 == 0.0)
  {
    memcpy(v7, v6, 0x400uLL);
  }

  else
  {
    vDSP_vavlin(v6, 1, v7 + 256, v7, 1, 0x100uLL);
    v8 = v7[256];
  }

  result = v8 + 1.0;
  v7[256] = v8 + 1.0;
  return result;
}

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRootBase::trainOnce(std::shared_ptr<QuantizerManager<float,256>>,std::vector<IVFVectorIndexTemplate<float,256>::IVFVectorIndexRootBase*,std::allocator<IVFVectorIndexTemplate<float,256>::IVFVectorIndexRootBase*>>,unsigned int,unsigned int)::{lambda(void *,unsigned long)#1}::__invoke(void *a1, uint64_t a2)
{
  makeThreadId();
  v4 = *(a1[1] + 8 * a2);
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 40))(&v13);
  v6 = (*a1 + 16 * a2);
  v8 = v13;
  v7 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v6[1];
  *v6 = v8;
  v6[1] = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void __destroy_helper_block_8_48c61_ZTSNSt3__110shared_ptrIA_23IVFVectorMeanCalculatorILi256EEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_8_48c61_ZTSNSt3__110shared_ptrIA_23IVFVectorMeanCalculatorILi256EEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<IVFVectorMeanCalculator<256> *,std::shared_ptr<IVFVectorMeanCalculator<256>[]>::__shared_ptr_default_delete<IVFVectorMeanCalculator<256>[],IVFVectorMeanCalculator<256>>,std::allocator<IVFVectorMeanCalculator<256>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FED0);
  }

  return result;
}

void std::__shared_ptr_pointer<IVFVectorMeanCalculator<256> *,std::shared_ptr<IVFVectorMeanCalculator<256>[]>::__shared_ptr_default_delete<IVFVectorMeanCalculator<256>[],IVFVectorMeanCalculator<256>>,std::allocator<IVFVectorMeanCalculator<256>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t ArrayVectorQuantizer<float,256>::getCentroid(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (a2 >= ((*(a1 + 48) - v2) >> 10))
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 452, "i < centroids.size()", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v2 + (a2 << 10);
}

void ArrayVectorQuantizer<float,256>::~ArrayVectorQuantizer(uint64_t a1)
{
  *a1 = &unk_1F427F1F8;
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t ArrayVectorQuantizer<float,256>::~ArrayVectorQuantizer(uint64_t a1)
{
  *a1 = &unk_1F427F1F8;
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::compact(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *__error();
  v9 = _SILogForLogForCategory(16);
  v10 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v9, v10))
  {
    v19 = (*(*a1 + 16))(a1);
    v11 = (*(*a1 + 24))(a1);
    v12 = (*(*a2 + 16))(a2);
    v13 = (*(*a2 + 24))(a2);
    *buf = 67109888;
    *&buf[4] = v19;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 1024;
    v28 = v13;
    _os_log_impl(&dword_1C278D000, v9, v10, "compact %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
  }

  *__error() = v8;
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v20 = *a5;
    v21 = a5[1];
    if (!_ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a2 + 48))
    {
      operator new();
    }

    v17 = __si_assert_copy_extra_332();
    v15 = v17;
    v18 = "";
    if (v17)
    {
      v18 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2738, "target->nVectors() == 0", v18);
  }

  else
  {
    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v16);
  }

  free(v15);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

uint64_t ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE7compactIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_P12uint32_map_tP11TermIdStore18CICompactCallbacksPVi_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v5 = *(a2 + 3);
  v6 = *(a1 + 40);
  v7 = *v5;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (v7)
    {
      v9 = *(a1 + 48);
      v10 = a2;
      v11 = uint32_map_get(v6, *v5);
      v12 = storageResolvePtr(v9, 8 * v11, 8, 1);
      a2 = v10;
      v7 = *v12;
    }

    else
    {
      v7 = 0;
    }
  }

  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::insertForCompact(*(a1 + 56), a2[2], *(a2 + 2), v7, *a2, *(a2 + 1));
  result = 1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*(*(*(a1 + 32) + 8) + 24) == 1 && !**(a1 + 64))
  {
    result = (*(a1 + 88))(*(a1 + 96));
  }

  *a3 = result;
  return result;
}

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::insertForCompact(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, float a6)
{
  os_unfair_lock_lock((a1 + 112));
  v12 = *(a1 + 88);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 96);
  v13 = *(a1 + 104);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  if (a5 == -1)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = 0xFFFFFFFFLL;
    v19 = a6;
    v20 = 0;
  }

  else
  {
    if (*(v14 + 68) <= a5)
    {
      v21 = __si_assert_copy_extra_332();
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2777, "partID == VECTOR_NOT_FOUND || partID < cur.partitions->nPartitions()", v23);
      free(v22);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a5;
    v19 = a6;
    v20 = 1;
  }

  *(IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::lookupForInsert(v15, v16, v17, v18, v20, v19) + 128) = a4;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v12)
    {
      return;
    }
  }

  else if (!v12)
  {
    return;
  }

  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);

    std::__shared_weak_count::__release_weak(v12);
  }
}

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::dump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock((a1 + 160));
  v9 = *(a1 + 136);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 144);
  v10 = *(a1 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v22[0] = v12;
  v22[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
  }

  v14 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZNK22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E8195AD8;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; v18(v17, &v31, &i))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12enumerator_s4nextEv(&v28, &v25);
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

uint64_t ___ZNK22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke(uint64_t a1, unsigned int *a2, BOOL *a3)
{
  v5 = a2[2];
  v6 = *(a2 + 2);
  v7 = **(a2 + 3);
  v8 = *a2;
  result = (*(*(a1 + 32) + 16))(*(a2 + 1));
  *a3 = **(a1 + 40) != 0;
  return result;
}

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::mergeIndexForTest(uint64_t a1, uint64_t a2)
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

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::mergeUpdateSetForTest(uint64_t a1, uint64_t a2)
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
      *&buf[4] = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
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

int *IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::mergeUpdateSet(int *result, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (result[2] != *(a2 + 8) || *(result + 10) != *(a2 + 20) || result[3] != *(a2 + 12) || result[4] != *(a2 + 16))
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (dword_1EBF46B0C >= 5)
  {
    v7 = result;
    v8 = a2;
    v9 = *__error();
    v10 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (*(*v7 + 16))(v7);
      v12 = (*(*v7 + 24))(v7);
      v13 = (*(*v8 + 16))(v8);
      v14 = (*(*v8 + 24))(v8);
      *buf = 67109888;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "mergeUpdateSet(DocID) %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    result = __error();
    *result = v9;
    a2 = v8;
  }

  v2 = *(a2 + 80);
  if (*(v2 + 24))
  {
    _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(*(a2 + 80), 0);
    _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v2, 0);
    _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v2, 0);
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2447, "0", v17);
    free(v16);
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

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::mergeUpdateSet(uint64_t a1, uint64_t a2)
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
      *&buf[4] = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
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

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::train(uint64_t a1, uint64_t a2)
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

unsigned int *IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::insertForTest(_DWORD *a1, int a2, unsigned int a3, void *a4, int a5, int a6, unsigned int a7)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
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

  v7 = a7;
  result = IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::lookupForInsert((a1 + 12), a3, a4, 0xFFFFFFFFLL, 0, 3.4028e38);
  *(result + 128) = v7;
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::insertForMerge(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, int a6, int a7, uint64_t a8, float a9, unsigned int a10)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a7 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a6] || vector_size_elem_sizes_15423[a7] != *(a1 + 16))
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v13);
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

  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::insertForCompact(a1 + 48, a4, a5, a8, a10, a9);
  return 1;
}

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::insertVector(_DWORD *a1, int a2, unsigned int a3, void *a4, int a5, int a6)
{
  if (a1[2] == a2 && a6 <= 2 && a1[3] == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == a1[4])
  {
    IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::lookupForInsert((a1 + 12), a3, a4, 0xFFFFFFFFLL, 0, 3.4028e38);
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2636, "0", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
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

unsigned int *IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::bulkInsertForTest(unsigned int *result, char *a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = result;
    if (a4 <= 0x3E8)
    {
      v17 = a4;
      do
      {
        v19 = *a5++;
        v18 = v19;
        v20 = *a3++;
        result = IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::lookupForInsert((v8 + 12), v18, a2, 0xFFFFFFFFLL, 0, 3.4028e38);
        *(result + 128) = v20;
        a2 += 1024;
        --v17;
      }

      while (v17);
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
            v23 = ((v9 * 100.0) * v12);
            _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "bulkInsertForTest: %.0f%%", buf, 0xCu);
          }

          *__error() = v15;
        }

        v13 = a3[v9];
        result = IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::lookupForInsert((v8 + 12), a5[v9], a2, 0xFFFFFFFFLL, 0, 3.4028e38);
        *(result + 128) = v13;
        a2 += 1024;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::shadow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  os_unfair_lock_lock((a1 + 160));
  v6 = *(a1 + 136);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 144);
  v7 = *(a1 + 152);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  (*(*v8 + 168))(v8, a2, a3);
  result = vi_onefixedsize_disk_allocator::shadow(*(*(a1 + 96) + 32), a2, a3);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = result;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    result = v10;
  }

  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v11;
    }
  }

  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::validAddress(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_lock((a1 + 160));
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 144);
  v6 = *(a1 + 152);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  v8 = *(a1 + 96);
  if (!v8 || (v9 = *(v8 + 32), v10 = *(v9 + 72), v10 < 1))
  {
LABEL_17:
    if (v7 && ((*(*v7 + 144))(v7, a2) & 1) != 0 || v5 && ((*(*v5 + 56))(v5, a2) & 1) != 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 112);
    if (v18)
    {
      v17 = _ZNK16QuantizerManagerIDF16_Li256EE12validAddressEPKv(v18, a2);
      if (!v6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = 0;
      if (!v6)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

  v11 = (v9 + 96);
  v12 = 1;
  do
  {
    v13 = *v11;
    if (!*v11 || (v14 = v13[1], v14 + 1 < 2) || v14 > a2 || (v16 = v13[2], v14 - v16 + v13[3] <= a2))
    {
      v15 = 1;
      if (v12 >= v10)
      {
        break;
      }

      goto LABEL_11;
    }

    v15 = a2 - v14 + v16 == -1;
    if (v12 >= v10)
    {
      break;
    }

LABEL_11:
    ++v12;
    ++v11;
  }

  while (v15);
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_21:
  v17 = 1;
  if (v6)
  {
LABEL_27:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_29:
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return v17;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::allExist(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= 0x3E8)
    {
      v12 = a3;
      while (IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::exists(a1 + 48, a2))
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

        if (!IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::exists(a1 + 48, a2))
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

BOOL IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::exists(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 3.4028e38;
  v25 = -1;
  Vector = IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::findVector(a1, a2, &v25, &v24, 0);
  if (Vector == -1)
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
    os_unfair_lock_lock((a1 + 112));
    v10 = *(a1 + 80);
    v9 = *(a1 + 88);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 96);
    v11 = *(a1 + 104);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 112));
    *buf = 0;
    *&buf[8] = buf;
    v27[0] = -1;
    *&buf[16] = 0x2000000000;
    v13 = v25;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6existsERK10CIVector_sIfLi256EE_block_invoke;
    v21[3] = &unk_1E8195AB0;
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
      v16[2] = ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6existsERK10CIVector_sIfLi256EE_block_invoke_1560;
      v16[3] = &unk_1F4280930;
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

  result = Vector != -1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

int *___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6existsERK10CIVector_sIfLi256EE_block_invoke(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  v8 = *a3;
  v9 = *(*(*(a1 + 40) + 48) + 32);
  v10 = v9[3] + v9[2] * v8;
  bit_vector_set_13535(v9 + 525, (v10 >> 20));
  v11 = (v10 + 1040) >> 20;
  if (v11 > (v10 >> 20))
  {
    v12 = (v10 >> 20) + 1;
    do
    {
      v13 = v12;
      bit_vector_set_13535(v9 + 525, v12++);
    }

    while (v11 > v13);
  }

  v14 = _windowsResolvePtr((v9 + 5), v9[3] + v9[2] * v8, 1040);
  result = memcmp(v7, v14, 0x400uLL);
  if (!result)
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = a3[1];
      *buf = 136315906;
      v35 = "exists_block_invoke";
      v36 = 1024;
      v37 = 2809;
      v38 = 1024;
      *v39 = a2;
      *&v39[4] = 2048;
      *&v39[6] = v23;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v16;
    v18 = *__error();
    v19 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 56);
      v25 = *(a1 + 60);
      *buf = 136315906;
      v35 = "exists_block_invoke";
      v36 = 1024;
      v37 = 2810;
      v38 = 1024;
      *v39 = v24;
      *&v39[4] = 2048;
      *&v39[6] = v25;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", buf, 0x22u);
    }

    *__error() = v18;
    v20 = *__error();
    v21 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 60);
      v27 = a3[1];
      v28 = vabds_f32(v26, v27);
      if (v26 == v27)
      {
        v29 = 1;
        v30 = 1;
      }

      else
      {
        v31 = fabsf(v26);
        v32 = fabsf(v27);
        v29 = v28 <= fmaxf(fminf(v32, v31) * 0.000015259, 0.000015259);
        v30 = v28 <= (fmaxf(v31, v32) * 0.000015259);
      }

      *buf = 136317186;
      v35 = "exists_block_invoke";
      v36 = 1024;
      v37 = 2811;
      v38 = 2048;
      *v39 = v28;
      *&v39[8] = 2048;
      *&v39[10] = 0x3810000000000000;
      v40 = 2048;
      v41 = 0x3E80000000000000;
      v42 = 1024;
      v43 = v28 < 1.1755e-38;
      v44 = 1024;
      v45 = v28 < 0.00000011921;
      v46 = 1024;
      v47 = v29;
      v48 = 1024;
      v49 = v30;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: |distancesq - ve.distsq|=%e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x48u);
    }

    result = __error();
    *result = v20;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6existsERK10CIVector_sIfLi256EE_block_invoke_1560(uint64_t a1, int a2, unsigned int *a3, _BYTE *a4)
{
  v133 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  v105 = *(a1 + 40);
  v8 = *a3;
  v9 = *(*(v105 + 48) + 32);
  v10 = v9[3] + v9[2] * v8;
  bit_vector_set_13535(v9 + 525, (v10 >> 20));
  v11 = (v10 + 1040) >> 20;
  if (v11 > (v10 >> 20))
  {
    v12 = (v10 >> 20) + 1;
    do
    {
      v13 = v12;
      bit_vector_set_13535(v9 + 525, v12++);
    }

    while (v11 > v13);
  }

  v14 = _windowsResolvePtr((v9 + 5), v9[3] + v9[2] * v8, 1040);
  if (!memcmp(v6, v14, 0x400uLL))
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    v17 = a3;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v54 = *(a3 + 1);
      __C = 4.8153e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2819;
      v117 = 1024;
      v118 = *&a2;
      v119 = 2048;
      *v120 = v54;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", &__C, 0x22u);
    }

    *__error() = v15;
    v18 = *(a1 + 48);
    v19 = (*(**(a1 + 56) + 72))(*(a1 + 56), *(a1 + 88));
    __C = 3.4028e38;
    vDSP_distancesq(v18, 1, v19, 1, &__C, 0x100uLL);
    v20 = __C;
    v21 = *__error();
    v22 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v55 = *(a1 + 88);
      __C = 4.8153e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2821;
      v117 = 1024;
      v118 = v55;
      v119 = 2048;
      *v120 = v20;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", &__C, 0x22u);
    }

    *__error() = v21;
    __p = 0;
    v111 = 0;
    v112 = 0;
    v23 = *(a1 + 48);
    (*(**(a1 + 56) + 80))(&__p);
    v24 = *__error();
    v25 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v56 = *__p;
      v57 = *(__p + 1);
      v58 = *(__p + 2);
      v59 = *(__p + 3);
      v60 = v57 == v59 || vabds_f32(v57, v59) <= fmaxf(fminf(fabsf(v59), fabsf(v57)) * 0.000015259, 0.000015259);
      __C = 4.8156e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2823;
      v117 = 1024;
      v118 = v56;
      v119 = 2048;
      *v120 = v57;
      *&v120[8] = 1024;
      *&v120[10] = v58;
      v121 = 2048;
      v122 = v59;
      v123 = 1024;
      LODWORD(v124) = v60;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(vec, 2) <%u, %e>, <%u, %e>, %d", &__C, 0x38u);
    }

    *__error() = v24;
    v26 = *__error();
    v27 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v61 = *__p;
      v62 = *(__p + 2);
      v63 = *(__p + 1) == *(__p + 3);
      __C = 4.8154e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2824;
      v117 = 1024;
      v118 = v61;
      v119 = 1024;
      *v120 = v62;
      *&v120[4] = 1024;
      *&v120[6] = v63;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v26;
    v28 = *__error();
    v29 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v64 = *__p;
      v65 = *(__p + 2);
      v66 = *(__p + 1) < *(__p + 3);
      __C = 4.8154e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2825;
      v117 = 1024;
      v118 = v64;
      v119 = 1024;
      *v120 = v65;
      *&v120[4] = 1024;
      *&v120[6] = v66;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v28;
    v30 = *__error();
    v31 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v67 = *__p;
      v68 = *(__p + 2);
      v69 = *(__p + 1) > *(__p + 3);
      __C = 4.8154e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2826;
      v117 = 1024;
      v118 = v67;
      v119 = 1024;
      *v120 = v68;
      *&v120[4] = 1024;
      *&v120[6] = v69;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v30;
    v32 = *__error();
    v33 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v70 = *__p;
      v71 = *(__p + 2);
      v72 = *(__p + 1);
      v73 = *(__p + 3);
      v74 = (v72 - v73);
      v75 = vabds_f32(v72, v73);
      if (v72 == v73)
      {
        v76 = 1;
        v77 = 1;
      }

      else
      {
        v101 = fabsf(v72);
        v102 = fabsf(v73);
        v76 = v75 <= fmaxf(fminf(v102, v101) * 0.000015259, 0.000015259);
        v77 = v75 <= (fmaxf(v101, v102) * 0.000015259);
      }

      __C = 4.8161e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2827;
      v117 = 1024;
      v118 = v70;
      v119 = 1024;
      *v120 = v71;
      *&v120[4] = 2048;
      *&v120[6] = v74;
      v121 = 2048;
      v122 = 1.17549435e-38;
      v123 = 2048;
      v124 = 0x3E80000000000000;
      v125 = 1024;
      v126 = v75 < 1.1755e-38;
      v127 = 1024;
      v128 = v75 < 0.00000011921;
      v129 = 1024;
      v130 = v76;
      v131 = 1024;
      v132 = v77;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &__C, 0x54u);
    }

    *__error() = v32;
    v108 = 0;
    v109 = 0;
    v107 = 0;
    v34 = *(a1 + 56);
    v35 = *a3;
    v36 = *(*(v105 + 48) + 32);
    v37 = v36[3] + v36[2] * v35;
    bit_vector_set_13535(v36 + 525, (v37 >> 20));
    v38 = (v37 + 1040) >> 20;
    if (v38 > (v37 >> 20))
    {
      v39 = (v37 >> 20) + 1;
      do
      {
        v40 = v39;
        bit_vector_set_13535(v36 + 525, v39++);
      }

      while (v38 > v40);
    }

    v41 = _windowsResolvePtr((v36 + 5), v36[3] + v36[2] * v35, 1040);
    (*(*v34 + 80))(&v107, v34, v41, 2);
    v42 = *__error();
    v43 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v78 = *v107;
      v79 = v107[1];
      v80 = *(v107 + 2);
      v81 = v107[3];
      __C = 4.8156e-34;
      v114 = "exists_block_invoke";
      v82 = vabds_f32(v79, v81) <= fmaxf(fminf(fabsf(v81), fabsf(v79)) * 0.000015259, 0.000015259);
      v116 = 2830;
      v115 = 1024;
      v83 = v79 == v81 || v82;
      v117 = 1024;
      v118 = v78;
      v119 = 2048;
      *v120 = v79;
      *&v120[8] = 1024;
      *&v120[10] = v80;
      v121 = 2048;
      v122 = v81;
      v123 = 1024;
      LODWORD(v124) = v83;
      _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(entry->vec, 2) <%u, %e>, <%u, %e>, %d", &__C, 0x38u);
    }

    *__error() = v42;
    v44 = *__error();
    v45 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v84 = *v107;
      v85 = *(v107 + 2);
      v86 = v107[1] == v107[3];
      __C = 4.8154e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2831;
      v117 = 1024;
      v118 = v84;
      v119 = 1024;
      *v120 = v85;
      *&v120[4] = 1024;
      *&v120[6] = v86;
      _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v44;
    v46 = *__error();
    v47 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v87 = *v107;
      v88 = *(v107 + 2);
      v89 = v107[1] < v107[3];
      __C = 4.8154e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2832;
      v117 = 1024;
      v118 = v87;
      v119 = 1024;
      *v120 = v88;
      *&v120[4] = 1024;
      *&v120[6] = v89;
      _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v46;
    v48 = *__error();
    v49 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v90 = *v107;
      v91 = *(v107 + 2);
      v92 = v107[1] > v107[3];
      __C = 4.8154e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2833;
      v117 = 1024;
      v118 = v90;
      v119 = 1024;
      *v120 = v91;
      *&v120[4] = 1024;
      *&v120[6] = v92;
      _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v48;
    v50 = *__error();
    v51 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v93 = *v107;
      v94 = *(v107 + 2);
      v95 = v107[1];
      v96 = v107[3];
      v97 = vabds_f32(v95, v96);
      v98 = (v95 - v96) < 1.1755e-38;
      if (v95 == v96)
      {
        v99 = 1;
        v100 = 1;
      }

      else
      {
        v103 = fabsf(v95);
        v104 = fabsf(v96);
        v99 = v97 <= fmaxf(fminf(v104, v103) * 0.000015259, 0.000015259);
        v100 = v97 <= (fmaxf(v103, v104) * 0.000015259);
      }

      __C = 4.8161e-34;
      v114 = "exists_block_invoke";
      v115 = 1024;
      v116 = 2834;
      v117 = 1024;
      v118 = v93;
      v119 = 1024;
      *v120 = v94;
      *&v120[4] = 2048;
      *&v120[6] = v97;
      v121 = 2048;
      v122 = 1.17549435e-38;
      v123 = 2048;
      v124 = 0x3E80000000000000;
      v125 = 1024;
      v126 = v98;
      v127 = 1024;
      v128 = v97 < 0.00000011921;
      v129 = 1024;
      v130 = v99;
      v131 = 1024;
      v132 = v100;
      _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &__C, 0x54u);
    }

    *__error() = v50;
    *(*(*(a1 + 32) + 8) + 24) = *v17;
    v52 = v107;
    *a4 = 1;
    if (v52)
    {
      v108 = v52;
      operator delete(v52);
    }

    if (__p)
    {
      v111 = __p;
      operator delete(__p);
    }
  }

  v53 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_8_56c60_ZTSN22IVFVectorIndexTemplateIfLi256EE19QuantizerPartitionsE(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 64);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 64);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *__copy_helper_block_8_56c60_ZTSN22IVFVectorIndexTemplateIfLi256EE19QuantizerPartitionsE(void *result, void *a2)
{
  v2 = a2[8];
  result[7] = a2[7];
  result[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[10];
  result[9] = a2[9];
  result[10] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::~IVFVectorIndexInstance(uint64_t a1)
{
  *a1 = &unk_1F42806D8;
  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::~IVFVectorIndexRoot_s((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t IVFVectorIndexen<vi_onefixedsize_disk_allocator,vi_disk_postings>::IVFVectorIndexInstance<float,256>::~IVFVectorIndexInstance(uint64_t a1)
{
  *a1 = &unk_1F42806D8;
  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::~IVFVectorIndexRoot_s((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsEC2IS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueES8_E4type11meta_info_sEP16vector_storage_s(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  bzero(v6, 0x400uLL);
  v5 = fd_name(*a2, v6, 0x400uLL);
  MEMORY[0x1C691FAE0](v4, v5);
  operator new();
}

void _ZN16QuantizerManagerIDF16_Li768EE15sharedQuantizerEi(void *a1, uint64_t a2, int a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3802000000;
  v15 = __Block_byref_object_copy__703;
  v17 = 0;
  v18 = 0;
  v16 = __Block_byref_object_dispose__704;
  if (_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE9onceToken != -1)
  {
    v8 = a2;
    v9 = a3;
    dispatch_once(&_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE9onceToken, &__block_literal_global_621);
    a3 = v9;
    a2 = v8;
  }

  v4 = *(_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE3zvq + 8);
  v17 = *_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE3zvq;
  v18 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN16QuantizerManagerIDF16_Li768EE15sharedQuantizerEi_block_invoke;
  v10[3] = &unk_1E8195208;
  v11 = a3;
  v10[4] = &v12;
  v10[5] = a2;
  dispatch_sync(v5, v10);
  v6 = v13[6];
  *a1 = v13[5];
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v12, 8);
  v7 = v18;
  if (v18)
  {
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE16replaceQuantizerENSt3__110shared_ptrI9QuantizerIDF16_Li768EEEE(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 112));
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  v7 = *a2;
  if (v5 != *a2)
  {
    v8 = a2[1];
    v17 = *a2;
    v18 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[1];
      v13 = *a2;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v13 = v7;
      v14 = 0;
    }

    (*(*a1 + 40))(&v15, a1, &v13);
    (*(*a1 + 48))(a1, &v17, &v15);
    v10 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

__n128 __Block_byref_object_copy__703(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__704(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN16QuantizerManagerIDF16_Li768EE15sharedQuantizerEi_block_invoke(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_52;
  }

  v5 = *(v4 + 120);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(a1 + 48);
    if (*&v5 <= v2)
    {
      v7 = v2 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v2;
  }

  v8 = *(*(v4 + 112) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    v43[0] = 0;
    v43[1] = 0;
    v44 = 0;
    v13 = *(v4 + 71);
    if (v13 >= 0)
    {
      v14 = *(v4 + 71);
    }

    else
    {
      v14 = *(v4 + 56);
    }

    if (v14 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_93;
    }

    if (v14 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&v42, 0, sizeof(v42));
    *(&v42.__r_.__value_.__s + 23) = v14 + 1;
    if (v14)
    {
      if ((v13 & 0x80u) == 0)
      {
        v15 = (v4 + 48);
      }

      else
      {
        v15 = *(v4 + 48);
      }

      memmove(&v42, v15, v14);
    }

    *(&v42.__r_.__value_.__l.__data_ + v14) = 46;
    std::to_string(&v41, *v3);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v41;
    }

    else
    {
      v16 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v42, v16, size);
    v19 = v18->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&__p, ".quantizer");
    v21 = v20->__r_.__value_.__r.__words[2];
    *v43 = *&v20->__r_.__value_.__l.__data_;
    v44 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_41:
        if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (v44 >= 0)
          {
            v22 = v43;
          }

          else
          {
            v22 = v43[0];
          }

          if (fd_create_protected(*v4, v22, 0, 3u))
          {
            operator new();
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43[0]);
          }

          goto LABEL_52;
        }

LABEL_49:
        operator delete(v42.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = *&v5 - 1;
    while (1)
    {
      v11 = v9[1];
      if (v11 == v2)
      {
        if (*(v9 + 4) == v2)
        {
          goto LABEL_86;
        }
      }

      else if ((v11 & v10) != v7)
      {
        goto LABEL_22;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v12 = v9[1];
    if (v12 == v2)
    {
      break;
    }

    if (v12 >= *&v5)
    {
      v12 %= *&v5;
    }

    if (v12 != v7)
    {
      goto LABEL_22;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2)
  {
    goto LABEL_17;
  }

LABEL_86:
  __p.__r_.__value_.__r.__words[0] = a1 + 48;
  v35 = _ZNSt3__112__hash_tableINS_17__hash_value_typeIiNS_8weak_ptrI9QuantizerIDF16_Li256EEEEEENS_22__unordered_map_hasherIiS6_NS_4hashIiEENS_8equal_toIiEELb1EEENS_21__unordered_map_equalIiS6_SB_S9_Lb1EEENS_9allocatorIS6_EEE25__emplace_unique_key_argsIiJRKNS_21piecewise_construct_tENS_5tupleIJRKiEEENSM_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_((v4 + 112), v2);
  v36 = v35[4];
  if (v36 && (v36 = std::__shared_weak_count::lock(v36)) != 0)
  {
    v37 = v35[3];
  }

  else
  {
    v37 = 0;
  }

  v38 = *(*(a1 + 32) + 8);
  v39 = *(v38 + 48);
  *(v38 + 40) = v37;
  *(v38 + 48) = v36;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_52:
  v23 = *(*(a1 + 32) + 8);
  if (_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE9onceToken != -1)
  {
    dispatch_once(&_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE9onceToken, &__block_literal_global_621);
  }

  v25 = *_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE3zvq;
  v24 = *(_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE3zvq + 8);
  if (!v24)
  {
    if (*(v23 + 40) != v25)
    {
      return;
    }

LABEL_61:
    v27 = *(v4 + 80);
    if (v27)
    {
      v28 = *(v4 + 88);
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = *(*(a1 + 32) + 8);
      v30 = *(v29 + 48);
      *(v29 + 40) = v27;
      *(v29 + 48) = v28;
      if (v30)
      {
        if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v30->__on_zero_shared)(v30);
          std::__shared_weak_count::__release_weak(v30);
        }
      }

      return;
    }

    v31 = *(v4 + 71);
    if (v31 >= 0)
    {
      v32 = *(v4 + 71);
    }

    else
    {
      v32 = *(v4 + 56);
    }

    if (v32 + 10 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 + 10 >= 0x17)
      {
        operator new();
      }

      v43[1] = 0;
      v44 = 0;
      v43[0] = 0;
      HIBYTE(v44) = v32 + 10;
      if (v32)
      {
        if ((v31 & 0x80u) == 0)
        {
          v33 = (v4 + 48);
        }

        else
        {
          v33 = *(v4 + 48);
        }

        memmove(v43, v33, v32);
      }

      strcpy(v43 + v32, ".quantizer");
      if (v44 >= 0)
      {
        v34 = v43;
      }

      else
      {
        v34 = v43[0];
      }

      if (fd_create_protected(*v4, v34, 0, 3u))
      {
        operator new();
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }

      return;
    }

LABEL_93:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  v26 = *(v23 + 40);
  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v26 == v25)
    {
      goto LABEL_61;
    }
  }

  else
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    if (v26 == v25)
    {
      goto LABEL_61;
    }
  }
}

void _ZN24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EEC2EN19vi_ondisk_allocator11meta_info_sE(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *a1 = &unk_1F427EBF8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 20);
  *(a1 + 64) = fd_dup(*a2);
  bzero(v9, 0x400uLL);
  v5 = fd_name(*a2, v9, 0x400uLL);
  MEMORY[0x1C691FAE0](v4, v5);
  if (*(a1 + 64))
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

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 487, "fdPtr != nullptr", v8);
  free(v7);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

uint64_t _ZNSt3__120__shared_ptr_pointerIP24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EENS_10shared_ptrIS3_E27__shared_ptr_default_deleteIS3_S3_EENS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void _ZNSt3__120__shared_ptr_pointerIP24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EENS_10shared_ptrIS3_E27__shared_ptr_default_deleteIS3_S3_EENS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void _ZNK9QuantizerIDF16_Li768EE14topKPartitionsERK10CIVector_sIDF16_Li768EEi(uint64_t a1@<X0>, float16x8_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if ((*(*a1 + 24))(a1))
  {
    v8 = 0;
    do
    {
      v9 = (*(*a1 + 72))(a1, v8);
      v10 = 0uLL;
      v11 = -8;
      v12 = a2;
      do
      {
        v13 = *v9++;
        v14 = v13;
        v15 = *v12++;
        v16 = vsubq_f16(v14, v15);
        v10 = vmlaq_f16(v10, v16, v16);
        v11 += 8;
      }

      while (v11 < 0x2F8);
      v17 = vaddq_f32(vcvtq_f32_f16(*v10.i8), vcvt_hight_f32_f16(v10));
      LODWORD(v18) = HIDWORD(v8) | COERCE_UNSIGNED_INT(vaddv_f32(*&vpaddq_f32(v17, v17)));
      if (a3)
      {
        operator new();
      }

      v19 = MEMORY[0] > v8;
      if (MEMORY[4] != v18)
      {
        v19 = MEMORY[4] > v18;
      }

      if (v19)
      {
        MEMORY[0xFFFFFFFFFFFFFFF8] = v8;
        MEMORY[0xFFFFFFFFFFFFFFFC] = LODWORD(v18);
      }

      ++v8;
    }

    while (v8 < (*(*a1 + 24))(a1));
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

unint64_t _ZNK24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EE11getCentroidEj(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 48) <= a2)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 524, "i < nCentroids", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = *(a1 + 40);
  v3 = *(v2 + 24) + *(v2 + 16) * a2;

  return _windowsResolvePtr(v2 + 40, v3, 1536);
}

BOOL _ZNK9QuantizerIDF16_Li768EE12isPersistentEv(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 31);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 != 8)
    {
      return 1;
    }

    return *v1 != 0x3E79726F6D656D3CLL;
  }

  if (*(a1 + 16) == 8)
  {
    v1 = *v1;
    return *v1 != 0x3E79726F6D656D3CLL;
  }

  return 1;
}

BOOL _ZNK24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EE12validAddressEPKv(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 72);
  if (v3 >= 1)
  {
    v4 = (v2 + 96);
    for (i = 1; ; ++i)
    {
      v6 = *v4;
      if (*v4 && (v7 = v6[1], v7 + 1 >= 2) && v7 <= a2 && (v9 = v6[2], v7 - v9 + v6[3] > a2))
      {
        v8 = a2 - v7 + v9;
        if (i >= v3)
        {
          return v8 != -1;
        }
      }

      else
      {
        v8 = -1;
        if (i >= v3)
        {
          return v8 != -1;
        }
      }

      ++v4;
      if (v8 != -1)
      {
        return v8 != -1;
      }
    }
  }

  return 0;
}

BOOL _ZNK9QuantizerIDF16_Li768EEeqERK12AnyQuantizer(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 32))(a2) != 768)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 291, "D == other.dimension()", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if ((*(*a2 + 40))(a2) != 2)
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 292, "sizeof(ELEM_TYPE) == other.elementSize()", v10);
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

  return _ZNK9QuantizerIDF16_Li768EEeqERKS0_(a1, a2);
}

BOOL _ZNK9QuantizerIDF16_Li768EEeqERKS0_(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4 != (*(*a2 + 24))(a2))
  {
    return 0;
  }

  if (!(*(*a1 + 24))(a1))
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    v6 = (*(*a1 + 72))(a1, v5);
    v7 = (*(*a2 + 72))(a2, v5);
    v8 = memcmp(v6, v7, 0x600uLL);
    result = v8 == 0;
    if (v8)
    {
      break;
    }

    v5 = (v5 + 1);
    if (v5 >= (*(*a1 + 24))(a1))
    {
      return 1;
    }
  }

  return result;
}

void _ZN24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EED0Ev(uint64_t a1)
{
  _ZN24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EED2Ev(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN24AllocatedVectorQuantizerI30vi_onefixedsize_disk_allocatorDF16_Li768EED2Ev(uint64_t a1)
{
  *a1 = &unk_1F427EBF8;
  v2 = atomic_load((a1 + 57));
  if (v2)
  {
    vi_onefixedsize_disk_allocator::unlinkStorage(*(a1 + 40));
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    storage_array_Close(v3 + 8);
    v4 = *(v3 + 4216);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 4216) = 0;
    }

    *(v3 + 4200) = 0u;
    MEMORY[0x1C691FEF0](v3, 0x10A0C40112AF241);
  }

  fd_release(*(a1 + 64));
  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    storage_array_Close(v5 + 8);
    v6 = *(v5 + 4216);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 4216) = 0;
    }

    *(v5 + 4200) = 0u;
    MEMORY[0x1C691FEF0](v5, 0x10A0C40112AF241);
  }

  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t _ZNSt3__120__shared_ptr_pointerIP19ZeroVectorQuantizerIDF16_Li768EENS_10shared_ptrI9QuantizerIDF16_Li768EEE27__shared_ptr_default_deleteIS6_S2_EENS_9allocatorIS2_EEE16__on_zero_sharedEv(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void _ZNSt3__120__shared_ptr_pointerIP19ZeroVectorQuantizerIDF16_Li768EENS_10shared_ptrI9QuantizerIDF16_Li768EEE27__shared_ptr_default_deleteIS6_S2_EENS_9allocatorIS2_EEED0Ev(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void _ZNK21SingleVectorQuantizerIDF16_Li768EE14topKPartitionsERK10CIVector_sIDF16_Li768EEi(uint64_t a1, float16x8_t *a2)
{
  v2 = (a1 + 33);
  _Q0 = 0uLL;
  v4 = -8;
  do
  {
    v5 = *a2++;
    v6 = v5;
    v7 = *v2++;
    v8 = vsubq_f16(v6, v7);
    _Q0 = vmlaq_f16(_Q0, v8, v8);
    v4 += 8;
  }

  while (v4 < 0x2F8);
  __asm { FCVT            S1, H0 }

  _H2 = _Q0.i16[1];
  __asm { FCVT            S2, H2 }

  LOWORD(_S2) = _Q0.i16[2];
  __asm { FCVT            S2, H2 }

  _H3 = _Q0.i16[3];
  __asm { FCVT            S3, H3 }

  LOWORD(_S2) = _Q0.i16[4];
  __asm { FCVT            S2, H2 }

  LOWORD(_S3) = _Q0.i16[5];
  __asm { FCVT            S3, H3 }

  LOWORD(_S3) = _Q0.i16[6];
  __asm { FCVT            S3, H3 }

  _H0 = _Q0.i16[7];
  __asm { FCVT            S0, H0 }

  operator new();
}

uint64_t _ZNK21SingleVectorQuantizerIDF16_Li768EE11getCentroidEj(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 396, "i < 1", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return a1 + 33;
}

void _ZN19ZeroVectorQuantizerIDF16_Li768EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v1 = vars8;
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN19ZeroVectorQuantizerIDF16_Li768EED1Ev(uint64_t result)
{
  *result = &unk_1F427DE28;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void _ZN21SingleVectorQuantizerIDF16_Li768EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v1 = vars8;
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN21SingleVectorQuantizerIDF16_Li768EED1Ev(uint64_t result)
{
  *result = &unk_1F427DE28;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

__int16 ___ZN19ZeroVectorQuantizerIDF16_Li768EE8centroidEv_block_invoke@<H0>()
{
  bzero(&_ZZN19ZeroVectorQuantizerIDF16_Li768EE8centroidEvE8centroid + 2, 0x5FEuLL);
  result = COERCE_UNSIGNED_INT(1.0);
  LOWORD(_ZZN19ZeroVectorQuantizerIDF16_Li768EE8centroidEvE8centroid) = COERCE_UNSIGNED_INT(1.0);
  return result;
}

uint64_t _ZNSt3__120__shared_ptr_pointerIP16QuantizerManagerIDF16_Li768EENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE16__on_zero_sharedEv(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *__error();
    v4 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (v1 + 24);
      if (*(v1 + 47) < 0)
      {
        v5 = *v5;
      }

      v6 = (v1 + 48);
      if (*(v1 + 71) < 0)
      {
        v6 = *v6;
      }

      v15 = 136315394;
      v16 = v5;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "QuantizerManager %s/%s destroyed", &v15, 0x16u);
    }

    *__error() = v3;
    v7 = *(v1 + 128);
    if (v7)
    {
      do
      {
        v12 = *v7;
        v13 = v7[4];
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        operator delete(v7);
        v7 = v12;
      }

      while (v12);
    }

    v8 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = *(v1 + 104);
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(v1 + 88);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
LABEL_19:
        if ((*(v1 + 47) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_29:
        operator delete(*(v1 + 24));
LABEL_20:
        v11 = *MEMORY[0x1E69E9840];

        JUMPOUT(0x1C691FEF0);
      }
    }

    else if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZNSt3__120__shared_ptr_pointerIP16QuantizerManagerIDF16_Li768EENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEED0Ev(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void _ZNSt3__120__shared_ptr_emplaceIN22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsEENS_9allocatorIS6_EEE16__on_zero_sharedEv(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    storage_array_Close(v2 + 8);
    v3 = *(v2 + 4216);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 4216) = 0;
    }

    *(v2 + 4200) = 0u;

    JUMPOUT(0x1C691FEF0);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsEENS_9allocatorIS6_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42805A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE16replaceQuantizerENSt3__110shared_ptrI9QuantizerIDF16_Li768EEEENS6_I17AnyPartitionStoreEE(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 152));
  os_unfair_lock_lock((a1 + 112));
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 96);
  v8 = *(a1 + 104);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
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

  if (*(*(a1 + 48) + 40) != v11[18])
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

  os_unfair_lock_lock((a1 + 112));
  _ZNSt3__14swapB8nn200100IN22IVFVectorIndexTemplateIDF16_Li256EE19QuantizerPartitionsEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_((a1 + 80), &v41);
  os_unfair_lock_unlock((a1 + 112));
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

  os_unfair_lock_unlock((a1 + 152));
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

void _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIDF16_Li768EEEE(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 112));
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  v5 = ".partitions";
  if (v4 && (*(*v4 + 24))(v4))
  {
    v5 = ".tmp.partitions";
  }

  memset(v12, 0, sizeof(v12));
  v6 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v6;
  v7 = strlen(v5);
  if (v7 < 0x7FFFFFFFFFFFFFF8)
  {
    v8 = v7;
    if (v7 < 0x17)
    {
      v10 = v7;
      if (v7)
      {
        memcpy(&__dst, v5, v7);
      }

      *(&__dst + v8) = 0;
      _ZN22IVFVectorIndexTemplateIDF16_Li256EE13childMetaInfoEN19vi_ondisk_allocator11meta_info_sENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEb(v12, v11, &__dst, 1);
      if (v10 < 0)
      {
        operator delete(__dst);
      }

      operator new();
    }

    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

int *___ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIDF16_Li768EEEE_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (*(v3 + 40))
  {
    v4 = 0;
    do
    {
      memset(__p, 0, sizeof(__p));
      v5 = *(a1 + 40);
      v6 = *(v3 + 32);
      v7 = v6[3] + v6[2] * v4;
      bit_vector_set_13535(v6 + 525, (v7 >> 20));
      v8 = (v7 + 1552) >> 20;
      if (v8 > (v7 >> 20))
      {
        v9 = (v7 >> 20) + 1;
        do
        {
          v10 = v9;
          bit_vector_set_13535(v6 + 525, v9++);
        }

        while (v8 > v10);
      }

      v11 = _windowsResolvePtr((v6 + 5), v6[3] + v6[2] * v4, 1552);
      (*(*v5 + 80))(__p, v5, v11, 1);
      (*(**(a1 + 56) + 56))(*(a1 + 56), *__p[0], v4, *(__p[0] + 1));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v4;
      v3 = *(v2 + 48);
    }

    while (v4 < *(v3 + 40));
  }

  result = (*(**(a1 + 56) + 112))(*(a1 + 56), 0);
  v13 = *(*(v2 + 48) + 40);
  if (v13)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      (*(**(a1 + 56) + 152))(v27);
      if (v28 >= 0)
      {
        v16 = v27;
      }

      else
      {
        v16 = v27[0];
      }

      v17 = *(a1 + 56);
      v18 = *(v17 + 68);
      v19 = *(v17 + 72);
      v20 = *(a1 + 40);
      v21 = v20 + 8;
      if (v20[31] < 0)
      {
        v21 = *v21;
      }

      v22 = (*(*v20 + 16))(v20);
      LODWORD(__p[0]) = 136316162;
      *(__p + 4) = v16;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v19;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v18;
      v30 = 2080;
      v31 = v21;
      v32 = 1024;
      v33 = v22;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Create new partitions %s(%u/%u) for new quantizer %s(%u)", __p, 0x28u);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    result = __error();
    *result = v14;
    v13 = *(*(v2 + 48) + 40);
  }

  if (*(*(a1 + 56) + 72) != v13)
  {
    v24 = __si_assert_copy_extra_332();
    v25 = v24;
    v26 = "";
    if (v24)
    {
      v26 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2538, "newPartitions->nVectors() == vectors->count()", v26);
    free(v25);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void __destroy_helper_block_8_40c49_ZTSNSt3__110shared_ptrI9QuantizerIDF16_Li768EEEE56c45_ZTSNSt3__110shared_ptrI17AnyPartitionStoreEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *__copy_helper_block_8_40c49_ZTSNSt3__110shared_ptrI9QuantizerIDF16_Li768EEEE56c45_ZTSNSt3__110shared_ptrI17AnyPartitionStoreEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

unint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE17getVectorAtOffsetEj(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 48) + 32);
  v3 = a2;
  v4 = v2[3] + v2[2] * a2;
  bit_vector_set_13535(v2 + 525, (v4 >> 20));
  v5 = (v4 + 1552) >> 20;
  if (v5 > (v4 >> 20))
  {
    v6 = (v4 >> 20) + 1;
    do
    {
      v7 = v6;
      bit_vector_set_13535(v2 + 525, v6++);
    }

    while (v5 > v7);
  }

  v8 = v2[3] + v2[2] * v3;

  return _windowsResolvePtr((v2 + 5), v8, 1552);
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE13getPartitionsEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 112));
  v4 = *(a1 + 88);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (!v5)
  {
    os_unfair_lock_unlock((a1 + 112));
    *a2 = v6;
    a2[1] = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 112));
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

void _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12getQuantizerEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 112));
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
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

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsED0Ev(void *a1)
{
  _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsED2Ev(a1);

  JUMPOUT(0x1C691FEF0);
}

void *_ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsED2Ev(void *a1)
{
  *a1 = &unk_1F4280560;
  v2 = a1[13];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[11];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[9];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[7];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE12diagnoseDumpERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS5_13basic_ostreamIcS8_EEi(uint64_t a1, uint64_t a2, void *a3, int a4)
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
  if (*(a1 + 208))
  {
    v19 = "(readOnly)";
  }

  else
  {
    v19 = "(readWrite)";
  }

  if (*(a1 + 208))
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
  _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12getQuantizerEv(a1 + 48, &v75);
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
  _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE13getPartitionsEv(a1 + 48, &v73);
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
    v39 = *(a1 + 96);
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
    if (*(v39 + 40))
    {
      if (a4 <= 1)
      {
        v58 = 0;
        v59 = MEMORY[0x1E69E5318];
        do
        {
          v60 = _windowsResolvePtr(*(v39 + 32) + 40, *(*(v39 + 32) + 24) + *(*(v39 + 32) + 16) * v58, 1552);
          v61 = MEMORY[0x1C691FC90](a3, v58);
          v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, ",", 1);
          v63 = MEMORY[0x1C691FC90](v62, *(v60 + 1544));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, ",", 1);
          std::ios_base::getloc((a3 + *(*a3 - 24)));
          v64 = std::locale::use_facet(&v78, v59);
          (v64->__vftable[2].~facet_0)(v64, 10);
          std::locale::~locale(&v78);
          std::ostream::put();
          std::ostream::flush();
          ++v58;
        }

        while (v58 < *(v39 + 40));
      }

      else
      {
        v44 = 0;
        v45 = MEMORY[0x1E69E5318];
        do
        {
          v47 = _windowsResolvePtr(*(v39 + 32) + 40, *(*(v39 + 32) + 24) + *(*(v39 + 32) + 16) * v44, 1552);
          v48 = MEMORY[0x1C691FC90](a3, v44);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ",", 1);
          v50 = MEMORY[0x1C691FC90](v49, *(v47 + 1544));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, ",", 1);
          v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "{length = ", 10);
          v52 = MEMORY[0x1C691FCA0](v51, 1536);
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
          data2hexString(&v78, v47 + 1528, 8);
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

        while (v44 < *(v39 + 40));
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

uint64_t _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE6statusERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
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
  _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE13getPartitionsEv(a1 + 48, &v28);
  if (v28)
  {
    _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE13getPartitionsEv(a1 + 48, &v26);
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
  MEMORY[0x1C691FC90](v20, *(*(a1 + 96) + 52));
  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, ",", 1);
  v22 = MEMORY[0x1C691FC90](v21, *(*(a1 + 96) + 56));
  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "] indexId: ", 11);
  MEMORY[0x1C691FCB0](v23, *(a1 + 168));
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

uint64_t _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE26updateVectorStorageOffsetsEP13__SIUINT64Set(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2 + 56;
    while (1)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1 + 48);
      if (v4 >= result)
      {
        break;
      }

      v7 = *(*(a1 + 96) + 32);
      v8 = v7[3] + v7[2] * v4;
      bit_vector_set_13535(v7 + 525, (v8 >> 20));
      v9 = (v8 + 1552) >> 20;
      if (v9 > (v8 >> 20))
      {
        v10 = (v8 >> 20) + 1;
        do
        {
          v11 = v10;
          bit_vector_set_13535(v7 + 525, v10++);
        }

        while (v9 > v11);
      }

      v12 = _windowsResolvePtr((v7 + 5), v7[3] + v7[2] * v4, 1552);
      if ((*(a2 + 184) & 1) == 0)
      {
        v13 = *(v12 + 1544);
        v14 = *(a2 + 24);
        if (!v14 || !((*(a2 + 16) ^ v13) >> (-4 * v14)))
        {
          v15 = 60 - 4 * v14;
          v16 = *(v5 + 8 * ((v13 >> v15) & 0xF));
          if (v16)
          {
            v17 = v14 + 2;
            do
            {
              v15 = 64 - 4 * v17;
              v16 = *((v16 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v13 >> v15) & 0xF));
              ++v17;
            }

            while ((v16 & 1) != 0);
          }

          if (v16)
          {
            if ((*(*v16 + 16))(v16, v13, ~(-1 << v15)))
            {
              data_map_set_offset_for_id(*(a1 + 192), v13, (*(a1 + 88) << 36) | (16 * v4) | (4 * (*(a1 + 176) & 3)) | *(a1 + 172) & 3, *(a1 + 168) | (*(a1 + 180) << 32), *(a1 + 184));
            }
          }
        }
      }

      ++v4;
    }
  }

  else
  {
    for (i = 0; ; ++i)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1 + 48);
      if (i >= result)
      {
        break;
      }

      v20 = *(*(a1 + 96) + 32);
      v21 = v20[3] + v20[2] * i;
      bit_vector_set_13535(v20 + 525, (v21 >> 20));
      v22 = (v21 + 1552) >> 20;
      if (v22 > (v21 >> 20))
      {
        v23 = (v21 >> 20) + 1;
        do
        {
          v24 = v23;
          bit_vector_set_13535(v20 + 525, v23++);
        }

        while (v22 > v24);
      }

      v19 = _windowsResolvePtr((v20 + 5), v20[3] + v20[2] * i, 1552);
      data_map_set_offset_for_id(*(a1 + 192), *(v19 + 1544), (*(a1 + 88) << 36) | (16 * i) | (4 * (*(a1 + 176) & 3)) | *(a1 + 172) & 3, *(a1 + 168) | (*(a1 + 180) << 32), *(a1 + 184));
    }
  }

  return result;
}

uint64_t _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE16getDataForOffsetEjPj(void *a1, uint64_t a2, int *a3)
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
    v7 = 1536;
  }

  *a3 = v7;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE11storageSizeEv(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 160));
  v2 = *(a1 + 136);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  v5 = *(*(*(a1 + 96) + 32) + 48);
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

uint64_t _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE24aNNForDebugProcessResultEPvU13block_pointerFvjjfE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(a2 + 16) - *(a2 + 8)) >> 4;
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
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI16vi_disk_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v36, *(a2 + 8), *(a2 + 16));
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
        (*(a3 + 16))(a3, *v24, *(v24 + 2), v24[3]);
        v24 += 4;
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
        (*(a3 + 16))(a3, *v14, *(v14 + 2), v14[3]);
        v15 = MEMORY[0x1C691FC90](&v45, *(v14 + 2));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v13, 1);
        v16 = *(v14 + 3);
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

        v14 += 4;
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

uint64_t _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE16aNNProcessResultEPvU13block_pointerFvS5_fjE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE16aNNProcessResultEPvU13block_pointerFvS5_fjE_block_invoke;
  v4[3] = &unk_1E8195A68;
  v4[4] = a3;
  return _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPyfjE(a2, v4);
}

void _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE3aNNEjtPKv14vec_dimensions15vec_data_formatfbPv(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, int a6, char a7, _DWORD *a8, float a9)
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

  _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE3aNNERK10CIVector_sIDF16_Li768EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj(v9, a4, a7, a8, 0, a9);
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE3aNNERK10CIVector_sIDF16_Li768EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj(uint64_t a1, unsigned __int8 *a2, char a3, _DWORD *a4, CFIndex AppIntegerValue, float a6)
{
  v7 = a4;
  v159 = *MEMORY[0x1E69E9840];
  v12 = *a4;
  *__str = 0u;
  v158 = 0u;
  snprintf(__str, 0x20uLL, "%02x%02x%02x%02x...%02x%02x%02x%02x", *a2, a2[1], a2[2], a2[3], a2[1532], a2[1533], a2[1534], a2[1535]);
  if (!AppIntegerValue)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFNumberOfParitionsProbe", @"com.apple.Spotlight", 0);
  }

  v126 = v12;
  v13 = 10 * v12;
  keyExistsAndHasValidFormat[0] = 0;
  v14 = CFPreferencesGetAppIntegerValue(@"IVFMinVectorsUseANN", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v15 = v14;
  }

  else
  {
    v15 = 10000;
  }

  if (v13 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16 * _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
  v18 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1);
  keyExistsAndHasValidFormat[0] = 0;
  v19 = v17 / v18;
  v20 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMin", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v21 = v20;
  }

  else
  {
    v21 = 7;
  }

  v144 = 0;
  v145 = &v144;
  if (v19 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  v147 = 0;
  v146 = 0x2000000000;
  v140 = 0;
  v141 = &v140;
  v143 = 0;
  v142 = 0x2000000000;
  v139 = 0;
  *v137 = 0u;
  *v138 = 0u;
  _ZN16QuantizerManagerIDF16_Li256EE17aNNLogQueryVecIdsEv(v137);
  Current = CFAbsoluteTimeGetCurrent();
  if ((a3 & 1) != 0 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1) <= v22 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1) <= v16)
  {
    v52 = *__error();
    v53 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1);
      v55 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
      v56 = a6;
      *keyExistsAndHasValidFormat = 136316162;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v126;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v54;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = v55;
      *&keyExistsAndHasValidFormat[30] = 2048;
      *&keyExistsAndHasValidFormat[32] = a6;
      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "brute force search %s top %u of %u vectors in %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x28u);
    }

    else
    {
      v56 = a6;
    }

    *__error() = v52;
    LODWORD(v125) = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
    v57 = 0;
    v58 = 0;
    v59 = *(a1 + 48);
    v60 = v59;
    while (1)
    {
      if (v58 == *(v60 + 40))
      {
        goto LABEL_110;
      }

      ++*(v145 + 6);
      if (*(v59 + 40) <= v57)
      {
        break;
      }

      v61 = _windowsResolvePtr(*(v59 + 32) + 40, *(*(v59 + 32) + 24) + *(*(v59 + 32) + 16) * v57, 1552);
      v62 = *(v61 + 1544);
      _Q0 = 0uLL;
      v64 = -8;
      v65 = a2;
      v66 = v61;
      do
      {
        v67 = *v65++;
        v68 = v67;
        v69 = *v66++;
        v70 = vsubq_f16(v68, v69);
        _Q0 = vmlaq_f16(_Q0, v70, v70);
        v64 += 8;
      }

      while (v64 < 0x2F8);
      if (v137[1])
      {
        v71 = vcnt_s8(v137[1]);
        v71.i16[0] = vaddlv_u8(v71);
        if (v71.u32[0] > 1uLL)
        {
          v72 = v62 % LODWORD(v137[1]);
          if (v137[1] > v62)
          {
            v72 = *(v61 + 1544);
          }
        }

        else
        {
          v72 = (LODWORD(v137[1]) - 1) & v62;
        }

        v73 = *(v137[0] + v72);
        if (v73)
        {
          v74 = *v73;
          if (v74)
          {
            if (v71.u32[0] < 2uLL)
            {
              while (1)
              {
                v76 = v74[1];
                if (v76 == v62)
                {
                  if (*(v74 + 4) == v62)
                  {
                    goto LABEL_81;
                  }
                }

                else if ((v76 & (v137[1] - 1)) != v72)
                {
                  goto LABEL_82;
                }

                v74 = *v74;
                if (!v74)
                {
                  goto LABEL_82;
                }
              }
            }

            do
            {
              v75 = v74[1];
              if (v75 == v62)
              {
                if (*(v74 + 4) == v62)
                {
LABEL_81:
                  v77 = 0;
                  goto LABEL_83;
                }
              }

              else
              {
                if (v75 >= v137[1])
                {
                  v75 %= v137[1];
                }

                if (v75 != v72)
                {
                  break;
                }
              }

              v74 = *v74;
            }

            while (v74);
          }
        }
      }

LABEL_82:
      v77 = 1;
LABEL_83:
      __asm { FCVT            S1, H0 }

      _H2 = _Q0.i16[1];
      __asm { FCVT            S2, H2 }

      v85 = _S1 + _S2;
      LOWORD(_S2) = _Q0.i16[2];
      __asm { FCVT            S2, H2 }

      _H3 = _Q0.i16[3];
      __asm { FCVT            S3, H3 }

      v89 = v85 + (_S2 + _S3);
      LOWORD(_S2) = _Q0.i16[4];
      __asm { FCVT            S2, H2 }

      LOWORD(_S3) = _Q0.i16[5];
      __asm { FCVT            S3, H3 }

      v92 = _S2 + _S3;
      LOWORD(_S3) = _Q0.i16[6];
      __asm { FCVT            S3, H3 }

      _H0 = _Q0.i16[7];
      __asm { FCVT            S0, H0 }

      v96 = (v89 + (v92 + _S3)) + _S0;
      if (a6 == 0.0 || v96 <= a6)
      {
        if ((v77 & 1) == 0)
        {
          v98 = v7;
          v99 = v61;
          v100 = *__error();
          v101 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109376;
            *&keyExistsAndHasValidFormat[4] = v62;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v96;
            _os_log_impl(&dword_1C278D000, v101, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", keyExistsAndHasValidFormat, 0x12u);
          }

          *__error() = v100;
          v61 = v99;
          v7 = v98;
        }

        *keyExistsAndHasValidFormat = *(v61 + 1536);
        *&keyExistsAndHasValidFormat[8] = v62;
        *&keyExistsAndHasValidFormat[12] = v96;
        _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI16vi_disk_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(v7, keyExistsAndHasValidFormat);
      }

      else
      {
        if ((v77 & 1) == 0)
        {
          v102 = *__error();
          v103 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109632;
            *&keyExistsAndHasValidFormat[4] = v62;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v96;
            *&keyExistsAndHasValidFormat[18] = 2048;
            *&keyExistsAndHasValidFormat[20] = v56;
            _os_log_impl(&dword_1C278D000, v103, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", keyExistsAndHasValidFormat, 0x1Cu);
          }

          *__error() = v102;
        }

        ++*(v141 + 6);
      }

      v57 = (v57 + 1);
      v60 = *(a1 + 48);
      v58 = v57;
      if (v59 != v60)
      {
        v122 = __si_assert_copy_extra_332();
        v120 = v122;
        v123 = "";
        if (v122)
        {
          v123 = v122;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1953, "store == other.store", v123);
        goto LABEL_123;
      }
    }

    v119 = __si_assert_copy_extra_332();
    v120 = v119;
    v121 = "";
    if (v119)
    {
      v121 = v119;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1937, "offset < store->endOffset()", v121);
LABEL_123:
    free(v120);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v128 = v7;
  if (!AppIntegerValue)
  {
    keyExistsAndHasValidFormat[0] = 0;
    v24 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMax", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      v25 = v24;
    }

    else
    {
      v25 = 40;
    }

    keyExistsAndHasValidFormat[0] = 0;
    v26 = CFPreferencesGetAppIntegerValue(@"IVFPartitionSizeFactor", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      v27 = v26;
    }

    else
    {
      v27 = 45;
    }

    keyExistsAndHasValidFormat[0] = 0;
    v28 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeNumerator", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    v29 = keyExistsAndHasValidFormat[0];
    v30 = 8 * v28;
    v31 = v27 * v27;
    keyExistsAndHasValidFormat[0] = 0;
    v32 = CFPreferencesGetAppIntegerValue(@"IVFpartitionProbeDecayExponent", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    v33 = keyExistsAndHasValidFormat[0];
    if (v32 <= 0x12)
    {
      v34 = 18;
    }

    else
    {
      v34 = v32;
    }

    v35 = v34 - 3;
    v36 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1);
    if (v33)
    {
      v37 = v35;
    }

    else
    {
      v37 = 17;
    }

    v38 = v36 >> v37;
    if (v38 <= 8)
    {
      v39 = 8;
    }

    else
    {
      v39 = v38;
    }

    v40 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
    if (v29)
    {
      v41 = v30;
    }

    else
    {
      v41 = 800;
    }

    v42 = v41 * v40 / (v31 * v39);
    if (v25 < v42)
    {
      v42 = v25;
    }

    if (v42 <= v22)
    {
      AppIntegerValue = v22;
    }

    else
    {
      AppIntegerValue = v42;
    }
  }

  v43 = *__error();
  v44 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1);
    v46 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
    *keyExistsAndHasValidFormat = 136316418;
    *&keyExistsAndHasValidFormat[4] = __str;
    *&keyExistsAndHasValidFormat[12] = 1024;
    *&keyExistsAndHasValidFormat[14] = v126;
    *&keyExistsAndHasValidFormat[18] = 1024;
    *&keyExistsAndHasValidFormat[20] = v45;
    *&keyExistsAndHasValidFormat[24] = 1024;
    *&keyExistsAndHasValidFormat[26] = AppIntegerValue;
    *&keyExistsAndHasValidFormat[30] = 1024;
    *&keyExistsAndHasValidFormat[32] = v46;
    *&keyExistsAndHasValidFormat[36] = 2048;
    *&keyExistsAndHasValidFormat[38] = a6;
    _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "aNN search %s top %u of %u vectors in %u of %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x2Eu);
  }

  *__error() = v43;
  os_unfair_lock_lock((a1 + 152));
  os_unfair_lock_lock((a1 + 112));
  v48 = *(a1 + 80);
  v47 = *(a1 + 88);
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v127 = v47;
  v50 = *(a1 + 96);
  v49 = *(a1 + 104);
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v124 = v49;
  os_unfair_lock_unlock((a1 + 112));
  memset(keyExistsAndHasValidFormat, 0, 24);
  (*(*v48 + 80))(keyExistsAndHasValidFormat, v48, a2, AppIntegerValue);
  v51 = *&keyExistsAndHasValidFormat[8] - *keyExistsAndHasValidFormat;
  if (*&keyExistsAndHasValidFormat[8] != *keyExistsAndHasValidFormat)
  {
    operator new();
  }

  __p = 0;
  v135 = 0;
  v136 = 0;
  v7 = v128;
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 1174405120;
  v129[2] = ___ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE3aNNERK10CIVector_sIDF16_Li768EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke;
  v129[3] = &unk_1F4280698;
  v129[6] = a1;
  v129[7] = a2;
  v129[4] = &v144;
  std::unordered_set<unsigned int>::unordered_set(&v130, v137);
  v133 = a6;
  v129[5] = &v140;
  v132 = v128;
  (*(*v50 + 72))(v50, &__p, v129);
  if (__p)
  {
    v135 = __p;
    operator delete(__p);
  }

  os_unfair_lock_unlock((a1 + 152));
  v104 = v131;
  if (v131)
  {
    do
    {
      v105 = *v104;
      operator delete(v104);
      v104 = v105;
    }

    while (v105);
  }

  v106 = v130;
  v130 = 0;
  if (v106)
  {
    operator delete(v106);
  }

  if (*keyExistsAndHasValidFormat)
  {
    *&keyExistsAndHasValidFormat[8] = *keyExistsAndHasValidFormat;
    operator delete(*keyExistsAndHasValidFormat);
  }

  if (v124 && !atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v124->__on_zero_shared)(v124);
    std::__shared_weak_count::__release_weak(v124);
  }

  v125 = v51 >> 3;
  if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v127->__on_zero_shared)(v127);
    std::__shared_weak_count::__release_weak(v127);
  }

LABEL_110:
  v107 = *__error();
  v108 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    v109 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a1);
    v110 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
    v111 = *(v141 + 6);
    v112 = *(v145 + 6);
    v113 = (v7[2] - v7[1]) >> 4;
    v114 = CFAbsoluteTimeGetCurrent();
    *keyExistsAndHasValidFormat = 136317442;
    *&keyExistsAndHasValidFormat[4] = __str;
    *&keyExistsAndHasValidFormat[12] = 1024;
    *&keyExistsAndHasValidFormat[14] = v126;
    *&keyExistsAndHasValidFormat[18] = 1024;
    *&keyExistsAndHasValidFormat[20] = v109;
    *&keyExistsAndHasValidFormat[24] = 2048;
    *&keyExistsAndHasValidFormat[26] = a6;
    *&keyExistsAndHasValidFormat[34] = 1024;
    *&keyExistsAndHasValidFormat[36] = v125;
    *&keyExistsAndHasValidFormat[40] = 1024;
    *&keyExistsAndHasValidFormat[42] = v110;
    v149 = 1024;
    v150 = v111;
    v151 = 1024;
    v152 = v112;
    v153 = 2048;
    v154 = v113;
    v155 = 2048;
    v156 = v114 - Current;
    _os_log_impl(&dword_1C278D000, v108, OS_LOG_TYPE_DEFAULT, "search %s top %u of %u vectors max_distance=%f in %u of %u partitions skip %u of %u populate %zu results in duration: %f", keyExistsAndHasValidFormat, 0x4Eu);
  }

  *__error() = v107;
  v115 = v138[0];
  if (v138[0])
  {
    do
    {
      v116 = *v115;
      operator delete(v115);
      v115 = v116;
    }

    while (v116);
  }

  v117 = v137[0];
  v137[0] = 0;
  if (v117)
  {
    operator delete(v117);
  }

  _Block_object_dispose(&v140, 8);
  _Block_object_dispose(&v144, 8);
  v118 = *MEMORY[0x1E69E9840];
}

void ___ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE3aNNERK10CIVector_sIDF16_Li768EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  ++*(*(*(a1 + 32) + 8) + 24);
  v5 = *a3;
  v6 = *(*(v4 + 48) + 32);
  v7 = v6[3] + v6[2] * v5;
  bit_vector_set_13535(v6 + 525, (v7 >> 20));
  v8 = (v7 + 1552) >> 20;
  if (v8 > (v7 >> 20))
  {
    v9 = (v7 >> 20) + 1;
    do
    {
      v10 = v9;
      bit_vector_set_13535(v6 + 525, v9++);
    }

    while (v8 > v10);
  }

  v11 = _windowsResolvePtr((v6 + 5), v6[3] + v6[2] * v5, 1552);
  v12 = *(a1 + 56);
  _Q0 = 0uLL;
  v14 = -8;
  v15 = v11;
  do
  {
    v16 = *v12++;
    v17 = v16;
    v18 = *v15++;
    v19 = vsubq_f16(v17, v18);
    _Q0 = vmlaq_f16(_Q0, v19, v19);
    v14 += 8;
  }

  while (v14 < 0x2F8);
  __asm { FCVT            S1, H0 }

  _H2 = _Q0.i16[1];
  __asm { FCVT            S2, H2 }

  v27 = _S1 + _S2;
  LOWORD(_S2) = _Q0.i16[2];
  __asm { FCVT            S2, H2 }

  _H3 = _Q0.i16[3];
  __asm { FCVT            S3, H3 }

  v31 = v27 + (_S2 + _S3);
  LOWORD(_S2) = _Q0.i16[4];
  __asm { FCVT            S2, H2 }

  LOWORD(_S3) = _Q0.i16[5];
  __asm { FCVT            S3, H3 }

  v34 = _S2 + _S3;
  LOWORD(_S3) = _Q0.i16[6];
  __asm { FCVT            S3, H3 }

  _H0 = _Q0.i16[7];
  __asm { FCVT            S0, H0 }

  v38 = (v31 + (v34 + _S3)) + _S0;
  v39 = *(v11 + 1544);
  v40 = *(a1 + 72);
  if (v40)
  {
    v41 = vcnt_s8(v40);
    v41.i16[0] = vaddlv_u8(v41);
    if (v41.u32[0] > 1uLL)
    {
      v42 = v39 % v40.i32[0];
      if (*&v40 > v39)
      {
        v42 = *(v11 + 1544);
      }
    }

    else
    {
      v42 = (v40.i32[0] - 1) & v39;
    }

    v43 = *(*(a1 + 64) + 8 * v42);
    if (v43)
    {
      v44 = *v43;
      if (v44)
      {
        if (v41.u32[0] < 2uLL)
        {
          v45 = *&v40 - 1;
          while (1)
          {
            v47 = v44[1];
            if (v47 == v39)
            {
              if (*(v44 + 4) == v39)
              {
                goto LABEL_26;
              }
            }

            else if ((v47 & v45) != v42)
            {
              goto LABEL_27;
            }

            v44 = *v44;
            if (!v44)
            {
              goto LABEL_27;
            }
          }
        }

        do
        {
          v46 = v44[1];
          if (v46 == v39)
          {
            if (*(v44 + 4) == v39)
            {
LABEL_26:
              v48 = 0;
              goto LABEL_28;
            }
          }

          else
          {
            if (v46 >= *&v40)
            {
              v46 %= *&v40;
            }

            if (v46 != v42)
            {
              break;
            }
          }

          v44 = *v44;
        }

        while (v44);
      }
    }
  }

LABEL_27:
  v48 = 1;
LABEL_28:
  v49 = *(a1 + 112);
  if (v49 == 0.0 || v38 <= v49)
  {
    if ((v48 & 1) == 0)
    {
      v51 = v11;
      v52 = *__error();
      v53 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v58) = 67109376;
        HIDWORD(v58) = v39;
        *v59 = 2048;
        *&v59[2] = v38;
        _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", &v58, 0x12u);
      }

      *__error() = v52;
      v11 = v51;
    }

    v58 = *(v11 + 1536);
    *v59 = v39;
    *&v59[4] = v38;
    _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI16vi_disk_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(*(a1 + 104), &v58);
  }

  else
  {
    if ((v48 & 1) == 0)
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(a1 + 112);
        LODWORD(v58) = 67109632;
        HIDWORD(v58) = v39;
        *v59 = 2048;
        *&v59[2] = v38;
        v60 = 2048;
        v61 = v56;
        _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", &v58, 0x1Cu);
      }

      *__error() = v54;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v57 = *MEMORY[0x1E69E9840];
}

void _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE10aNNForTestEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvjfEj(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6)
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

void _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 0x40000000;
    v15 = ___ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE_block_invoke;
    v16 = &unk_1E8195A40;
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

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE16restoreUpdateSetEP15PostingBaseInfoP14store_stream_t()
{
  v0 = __si_assert_copy_extra_332();
  v1 = v0;
  v2 = "";
  if (v0)
  {
    v2 = v0;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3183, "false", v2);
  free(v1);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE14storeUpdateSetEP15RelativePostingP14store_stream_t()
{
  v0 = __si_assert_copy_extra_332();
  v1 = v0;
  v2 = "";
  if (v0)
  {
    v2 = v0;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3178, "false", v2);
  free(v1);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE6renameEPKc(uint64_t a1, const char *a2)
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
  os_unfair_lock_lock((a1 + 160));
  v9 = *(a1 + 136);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 144);
  v10 = *(a1 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*v11 + 160))(v11, p_p);
  v13 = *(a1 + 96);
  memset(&buf, 0, sizeof(buf));
  if (*(v13 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *(v13 + 64), *(v13 + 72));
  }

  else
  {
    buf = *(v13 + 64);
  }

  MEMORY[0x1C691FAE0](v13 + 64, a2);
  v14 = *__error();
  v15 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6statusEv(__s, v13);
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
  fd_rename(*(*(v13 + 32) + 40), a2);
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

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE13makePurgeableEv(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  v3 = *__error();
  v4 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6statusEv(__p, v2);
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
  fd_mark_purgable(*(*(v2 + 32) + 40));
  os_unfair_lock_lock((a1 + 160));
  v6 = *(a1 + 136);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 144);
  v7 = *(a1 + 152);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
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

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE12makeReadOnlyEv(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 208))
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
    goto LABEL_25;
  }

  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE5flushEy(a1 + 48, 0);
  v5 = *(a1 + 96);
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8truncateEv(v5);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6statusEv(__p, v5);
    v8 = v22 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v24 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "makeReadOnly VectorStore %s", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  v9 = *(v5 + 32);
  fd_make_readonly(*(v9 + 40));
  v10 = *(v9 + 40);
  if (v10)
  {
    do
    {
      v11 = fchmodat(*(v10 + 44), *(v10 + 72), 0x100u, 2048);
      v12 = g_prot_error_callback;
      if (v11 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v14 = *(v10 + 40);
      v15 = __error();
    }

    while (((*(v12 + 16))(v12, v14, *v15, 19) & 1) != 0);
  }

  os_unfair_lock_lock((a1 + 160));
  v16 = *(a1 + 136);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 144);
  v17 = *(a1 + 152);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  (*(*v18 + 120))(v18);
  *(a1 + 208) = 1;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else if (!v16)
  {
LABEL_25:
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_25;
  }

  (v16->__on_zero_shared)(v16);
  v20 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v16);
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE8truncateEv(uint64_t a1)
{
  if (*(a1 + 208))
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
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE5flushEy(a1 + 48, 0);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8truncateEv(*(a1 + 96));
    os_unfair_lock_lock((a1 + 160));
    v5 = *(a1 + 136);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 144);
    v6 = *(a1 + 152);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 160));
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

BOOL _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE6unlinkEv(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 160));
  v2 = *(a1 + 136);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  (*(*v4 + 184))(v4);
  v5 = *(a1 + 96);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI30vi_onefixedsize_disk_allocator16vi_disk_postingsE6statusEv(__p, v5);
    v8 = v14 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v16 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "unlink VectorStore %s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  result = vi_onefixedsize_disk_allocator::unlinkStorage(*(v5 + 32));
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v10;
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = result;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    result = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE7subvertEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
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

  os_unfair_lock_lock((a1 + 160));
  v4 = *(a1 + 136);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 144);
  v5 = *(a1 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  os_unfair_lock_lock((a2 + 160));
  v7 = *(a2 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 144);
  v8 = *(a2 + 152);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a2 + 160));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  (*(*v6 + 176))(v6, v9);
  vi_onefixedsize_disk_allocator::subvert(*(*(a2 + 96) + 32), *(*(a1 + 96) + 32));
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

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE14compactForTestEP22AnyVectorIndexInstancePVi(uint64_t a1, uint64_t a2)
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
    _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE14compactForTestIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_PVi(a1 + 48, a2 + 48);
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

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE14compactForTestIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_PVi(uint64_t a1, uint64_t a2)
{
  if (!_ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a2))
  {
    operator new();
  }

  v2 = __si_assert_copy_extra_332();
  v3 = v2;
  v4 = "";
  if (v2)
  {
    v4 = v2;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2761, "target->nVectors() == 0", v4);
  free(v3);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE5trainIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEvE4typeERKNS6_6vectorIPNS0_22IVFVectorIndexRootBaseENS6_9allocatorISD_EEEE(uint64_t a1, std::__shared_weak_count *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = a3[1];
  if (v3 != *a3)
  {
    if (((v3 - *a3) & 0x8000000000000000) == 0)
    {
      v4 = v3 - *a3;
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v9 = 0;
  v10 = 0;
  _ZN16QuantizerManagerIDF16_Li768EE15sharedQuantizerEi(&v9, a1, 0);
  (*(*v9 + 24))(v9);
  keyExistsAndHasValidFormat[0] = 0;
  CFPreferencesGetAppIntegerValue(@"IVFPartitionSizeFactor", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  keyExistsAndHasValidFormat[0] = 0;
  CFPreferencesGetAppIntegerValue(@"IVFTrainingTimeBudget", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a2->__on_zero_shared)(a2);
    std::__shared_weak_count::__release_weak(a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

unsigned int *___ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE14compactForTestIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_PVi_block_invoke(uint64_t a1, unsigned int *a2, BOOL *a3)
{
  v5 = **(a2 + 3);
  result = _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li768EEjfb(*(a1 + 32), a2[2], *(a2 + 2), *a2, 0, *(a2 + 1));
  *(result + 192) = v5;
  *a3 = **(a1 + 40) != 0;
  return result;
}

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12enumerator_s4nextEv(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 72))
  {
    v4 = *(*(*(a2 + 40) + ((*(a2 + 64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a2 + 64));
    *a1 = (*(*v4 + 16))(v4);
    if (*(a2 + 72))
    {
      while (1)
      {
        v5 = *(*(*(a2 + 40) + ((*(a2 + 64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a2 + 64));
        v6 = (*(*v5 + 24))(v5);
        if (v6)
        {
          break;
        }

        v7 = *(*(*(a2 + 40) + ((*(a2 + 64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a2 + 64) + 8);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        v8 = vaddq_s64(*(a2 + 64), xmmword_1C2BFA590);
        *(a2 + 64) = v8;
        v9 = v8.i64[0];
        if (v8.i64[0] >= 0x200uLL)
        {
          operator delete(**(a2 + 40));
          *(a2 + 40) += 8;
          v10 = *(a2 + 72);
          v9 = *(a2 + 64) - 256;
          *(a2 + 64) = v9;
          if (!v10)
          {
            return;
          }
        }

        else if (!v8.i64[1])
        {
          return;
        }

        v11 = *(*(*(a2 + 40) + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
        *a1 = (*(*v11 + 16))(v11);
        if (!*(a2 + 72))
        {
          return;
        }
      }

      *(a1 + 4) = v6[1];
      v12 = *v6;
      v13 = *(*(a2 + 16) + 32);
      v14 = v13[3] + v13[2] * v12;
      bit_vector_set_13535(v13 + 525, (v14 >> 20));
      v15 = (v14 + 1552) >> 20;
      if (v15 > (v14 >> 20))
      {
        v16 = (v14 >> 20) + 1;
        do
        {
          v17 = v16;
          bit_vector_set_13535(v13 + 525, v16++);
        }

        while (v15 > v17);
      }

      v18 = _windowsResolvePtr((v13 + 5), v13[3] + v13[2] * v12, 1552);
      *(a1 + 8) = *(v18 + 1544);
      *(a1 + 16) = v18;
      *(a1 + 24) = v18 + 1536;
    }
  }
}

unsigned int *_ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li768EEjfb(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, char a5, float a6)
{
  v134 = *MEMORY[0x1E69E9840];
  v126 = a4;
  v125 = a6;
  if (*(a1 + 160) == 1)
  {
    v100 = __si_assert_copy_extra_332();
    v101 = v100;
    v102 = "";
    if (v100)
    {
      v102 = v100;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2608, "!readOnly", v102);
    goto LABEL_128;
  }

  if (!a2)
  {
    v103 = __si_assert_copy_extra_332();
    v104 = v103;
    v105 = "";
    if (v103)
    {
      v105 = v103;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2609, "vectorId > 0", v105);
    goto LABEL_136;
  }

  if (a5)
  {
    v9 = a4;
    if (a4 == -1)
    {
      goto LABEL_120;
    }

    goto LABEL_32;
  }

  v10 = _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10findVectorERK10CIVector_sIDF16_Li768EERjRfj(a1, a3, &v126, &v125, a2);
  v9 = v126;
  if (v126 == -1)
  {
LABEL_120:
    v106 = __si_assert_copy_extra_332();
    v101 = v106;
    v107 = "";
    if (v106)
    {
      v107 = v106;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2614, "partID != VECTOR_NOT_FOUND", v107);
    goto LABEL_128;
  }

  if (v10 == -1)
  {
LABEL_32:
    os_unfair_lock_lock((a1 + 112));
    v29 = *(a1 + 88);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __src = a3;
    v123 = a2;
    v31 = *(a1 + 96);
    v30 = *(a1 + 104);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 112));
    v32 = *(a1 + 48);
    v33 = *(v32 + 32);
    v34 = *(v33 + 16);
    v35 = *(v33 + 48);
    v36 = *(v33 + 56);
    v119 = v30;
    v120 = v29;
    v121 = v31;
    if (v36 + v34 >= v35)
    {
      if (!_storage_array_Expand(v33 + 8))
      {
        v42 = 0;
LABEL_43:
        v43 = *(v33 + 16);
        if (v34 <= 0x60F && v43 <= 0x60F)
        {
          LODWORD(v44) = 1552;
          while (1)
          {
            v46 = *(v33 + 48);
            v45 = *(v33 + 56);
            if (v45 + v43 < v46)
            {
              goto LABEL_48;
            }

            if (_storage_array_Expand(v33 + 8))
            {
              break;
            }

LABEL_46:
            v43 = *(v33 + 16);
            v44 = (v44 - v43);
            if (v43 >= v44)
            {
              goto LABEL_58;
            }
          }

          v46 = *(v33 + 48);
          v45 = *(v33 + 56);
LABEL_48:
          v47 = v45 + v43;
          if (v47 >= v46)
          {
            if (!_storageWindowsExpandBacking((v33 + 40), v43))
            {
LABEL_50:
              v48 = *(v33 + 24);
              bit_vector_set_13535((v33 + 4200), 0);
              if (v48 >= 0x100000)
              {
                v49 = v48 >> 20;
                v50 = 1;
                do
                {
                  v51 = v50;
                  bit_vector_set_13535((v33 + 4200), v50++);
                }

                while (v49 > v51);
              }

              goto LABEL_46;
            }

            v47 = *(v33 + 56) + v43;
          }

          *(v33 + 56) = v47;
          goto LABEL_50;
        }

LABEL_58:
        v52 = *(v33 + 24) + v43 * v42;
        bit_vector_set_13535((v33 + 4200), (v52 >> 20));
        v53 = (v52 + 1552) >> 20;
        if (v53 > (v52 >> 20))
        {
          v54 = (v52 >> 20) + 1;
          do
          {
            v55 = v54;
            bit_vector_set_13535((v33 + 4200), v54++);
          }

          while (v53 > v55);
        }

        v56 = *(v32 + 40);
        v57 = v42;
        if (v42 != v56)
        {
          v58 = *__error();
          v59 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v97 = *(v32 + 40);
            *__p = 136315906;
            *&__p[4] = "newEntry";
            v130 = 1024;
            *v131 = 1909;
            *&v131[4] = 2048;
            *&v131[6] = v42;
            *&v131[14] = 1024;
            *&v131[16] = v97;
            _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: offset: %llu, nVectors: %u", __p, 0x22u);
          }

          *__error() = v58;
          v60 = *(v32 + 32);
          v61 = *__error();
          v62 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v63 = v60[6];
            v64 = v60[7];
            v66 = v60[2];
            v65 = v60[3];
            *__p = 134219008;
            *&__p[4] = v60;
            v130 = 2048;
            *v131 = v63;
            *&v131[8] = 2048;
            *&v131[10] = v64;
            *&v131[18] = 2048;
            *v132 = v65;
            *&v132[8] = 2048;
            v133 = v66;
            _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "vi_onefixedsize_disk_allocator %p size: %llu, freeRegion: %llu, header: %llu, elemSize: %lu", __p, 0x34u);
          }

          *__error() = v61;
          v57 = *(v32 + 40);
          LODWORD(v56) = *(v32 + 40);
        }

        if (v42 == v57)
        {
          *(v32 + 40) = v56 + 1;
          v67 = *(v32 + 32);
          v68 = v67[3] + v67[2] * v42;
          bit_vector_set_13535(v67 + 525, (v68 >> 20));
          v69 = (v68 + 1552) >> 20;
          if (v69 > (v68 >> 20))
          {
            v70 = (v68 >> 20) + 1;
            do
            {
              v71 = v70;
              bit_vector_set_13535(v67 + 525, v70++);
            }

            while (v69 > v71);
          }

          v72 = _windowsResolvePtr((v67 + 5), v67[3] + v67[2] * v42, 1552);
          memcpy(v72, __src, 0x600uLL);
          *(v72 + 1536) = 0;
          *(v72 + 1544) = v123;
          if (*(v32 + 40) == 1)
          {
            *(v32 + 52) = v123;
          }

          *(v32 + 56) = v123;
          (*(*v121 + 56))(v121, v9, v42, v125);
          v73 = *(a1 + 48);
          if (v121[18] == *(v73 + 40))
          {
            v74 = *(v73 + 32);
            v75 = v74[3] + v74[2] * v42;
            bit_vector_set_13535(v74 + 525, (v75 >> 20));
            v76 = (v75 + 1552) >> 20;
            if (v76 > (v75 >> 20))
            {
              v77 = (v75 >> 20) + 1;
              do
              {
                v78 = v77;
                bit_vector_set_13535(v74 + 525, v77++);
              }

              while (v76 > v78);
            }

            v17 = _windowsResolvePtr((v74 + 5), v74[3] + v74[2] * v42, 1552);
            data_map_set_offset_for_id(*(a1 + 144), v123, (16 * v42) | (*(a1 + 40) << 36) | (4 * (*(a1 + 128) & 3)) | *(a1 + 124) & 3, *(a1 + 120) | (*(a1 + 132) << 32), *(a1 + 136));
            if (v119 && !atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v119->__on_zero_shared)(v119);
              std::__shared_weak_count::__release_weak(v119);
            }

            if (v120 && !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v120->__on_zero_shared)(v120);
              std::__shared_weak_count::__release_weak(v120);
            }

            goto LABEL_113;
          }

          v110 = __si_assert_copy_extra_332();
          v104 = v110;
          v111 = "";
          if (v110)
          {
            v111 = v110;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2619, "cur.partitions->nVectors() == vectors->count()", v111);
LABEL_136:
          free(v104);
          if (__valid_fs(-1))
          {
            v112 = 2989;
          }

          else
          {
            v112 = 3072;
          }

          *v112 = -559038737;
          abort();
        }

        v108 = __si_assert_copy_extra_332();
        v101 = v108;
        v109 = "";
        if (v108)
        {
          v109 = v108;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1912, "offset == nVectors", v109);
LABEL_128:
        free(v101);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v35 = *(v33 + 48);
      v36 = *(v33 + 56);
    }

    v37 = v36 + v34;
    if (v37 >= v35)
    {
      if (!_storageWindowsExpandBacking((v33 + 40), v34))
      {
        v36 = 0;
        goto LABEL_39;
      }

      v36 = *(v33 + 56);
      v37 = v36 + v34;
    }

    *(v33 + 56) = v37;
LABEL_39:
    v38 = *(v33 + 24);
    bit_vector_set_13535((v33 + 4200), 0);
    if (v38 >= 0x100000)
    {
      v39 = v38 >> 20;
      v40 = 1;
      do
      {
        v41 = v40;
        bit_vector_set_13535((v33 + 4200), v40++);
      }

      while (v39 > v41);
    }

    v42 = (v36 - *(v33 + 24)) / v34;
    goto LABEL_43;
  }

  v11 = *(*(a1 + 48) + 32);
  v12 = v10;
  v13 = v11[3] + v11[2] * v10;
  bit_vector_set_13535(v11 + 525, (v13 >> 20));
  v14 = (v13 + 1552) >> 20;
  if (v14 > (v13 >> 20))
  {
    v15 = (v13 >> 20) + 1;
    do
    {
      v16 = v15;
      bit_vector_set_13535(v11 + 525, v15++);
    }

    while (v14 > v16);
  }

  v17 = _windowsResolvePtr((v11 + 5), v11[3] + v11[2] * v12, 1552);
  if (v17[386] != a2)
  {
    v124 = 0;
    data = data_map_get_data(*(a1 + 144), a2, &v124);
    v19 = *__error();
    v20 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *__p = 136316162;
      *&__p[4] = "lookupForInsert";
      v130 = 1024;
      *v131 = 2633;
      *&v131[4] = 1024;
      *&v131[6] = a2;
      *&v131[10] = 2048;
      *&v131[12] = data;
      *v132 = 2048;
      *&v132[2] = v124;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
    }

    *__error() = v19;
    if (v124 < 1)
    {
      v26 = *__error();
      v79 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v130 = 1024;
        *v131 = 2642;
        _os_log_error_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, "%s:%d: vectorId is invalid", __p, 0x12u);
      }
    }

    else
    {
      if (v124 != 1536)
      {
        v115 = __si_assert_copy_extra_332();
        v101 = v115;
        v116 = "";
        if (v115)
        {
          v116 = v115;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2635, "size == D * sizeof(ELEM_TYPE)", v116);
        goto LABEL_128;
      }

      if (!data || !memcmp(data, a3, 0x600uLL))
      {
LABEL_86:
        v80 = data_map_get_data(*(a1 + 144), v17[386], &v124);
        v81 = *__error();
        v82 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v98 = v17[386];
          *__p = 136316162;
          *&__p[4] = "lookupForInsert";
          v130 = 1024;
          *v131 = 2645;
          *&v131[4] = 1024;
          *&v131[6] = v98;
          *&v131[10] = 2048;
          *&v131[12] = v80;
          *v132 = 2048;
          *&v132[2] = v124;
          _os_log_error_impl(&dword_1C278D000, v82, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
        }

        *__error() = v81;
        if (v124 < 1)
        {
          v89 = *__error();
          v92 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v130 = 1024;
            *v131 = 2654;
            _os_log_error_impl(&dword_1C278D000, v92, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId is invalid", __p, 0x12u);
          }
        }

        else
        {
          if (v124 != 1536)
          {
            v117 = __si_assert_copy_extra_332();
            v104 = v117;
            v118 = "";
            if (v117)
            {
              v118 = v117;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2647, "size == D * sizeof(ELEM_TYPE)", v118);
            goto LABEL_136;
          }

          v83 = 1536;
          if (!v80 || !memcmp(v80, v17, 0x600uLL))
          {
            goto LABEL_109;
          }

          v84 = *__error();
          v85 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v130 = 1024;
            *v131 = 2649;
            _os_log_error_impl(&dword_1C278D000, v85, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
          }

          *__error() = v84;
          v86 = *__error();
          v87 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, v80, v124);
            v88 = v131[9] >= 0 ? __p : *__p;
            *buf = 136315138;
            v128 = v88;
            _os_log_impl(&dword_1C278D000, v87, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
            if ((v131[9] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          *__error() = v86;
          v89 = *__error();
          v90 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, v17, v124);
            v91 = v131[9] >= 0 ? __p : *__p;
            *buf = 136315138;
            v128 = v91;
            _os_log_impl(&dword_1C278D000, v90, OS_LOG_TYPE_DEFAULT, "vector in vector store: %s", buf, 0xCu);
            if ((v131[9] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }

        *__error() = v89;
        v83 = v124;
LABEL_109:
        if (memcmp(a3, v17, v83))
        {
          v113 = __si_assert_copy_extra_332();
          v101 = v113;
          v114 = "";
          if (v113)
          {
            v114 = v113;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2656, "memcmp(vec.vec, entry->vec.vec, size) == 0", v114);
          goto LABEL_128;
        }

        v93 = *__error();
        v94 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          v99 = v17[386];
          *__p = 136315906;
          *&__p[4] = "lookupForInsert";
          v130 = 1024;
          *v131 = 2657;
          *&v131[4] = 1024;
          *&v131[6] = a2;
          *&v131[10] = 1024;
          *&v131[12] = v99;
          _os_log_fault_impl(&dword_1C278D000, v94, OS_LOG_TYPE_FAULT, "%s:%d: Dup vector with new vectorId=%u old=%u", __p, 0x1Eu);
        }

        *__error() = v93;
        goto LABEL_113;
      }

      v21 = *__error();
      v22 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v130 = 1024;
        *v131 = 2637;
        _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
      }

      *__error() = v21;
      v23 = *__error();
      v24 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, data, v124);
        v25 = v131[9] >= 0 ? __p : *__p;
        *buf = 136315138;
        v128 = v25;
        _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
        if ((v131[9] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      *__error() = v23;
      v26 = *__error();
      v27 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, a3, v124);
        v28 = v131[9] >= 0 ? __p : *__p;
        *buf = 136315138;
        v128 = v28;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "vector passed in: %s", buf, 0xCu);
        if ((v131[9] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    *__error() = v26;
    goto LABEL_86;
  }

LABEL_113:
  v95 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10findVectorERK10CIVector_sIDF16_Li768EERjRfj(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, int a5)
{
  os_unfair_lock_lock((a1 + 112));
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  v14 = *a3;
  if (v14 == -1)
  {
    if (*(a1 + 156) != -1)
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
    if (v16 >= _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1))
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
      v30 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE11nPartitionsEv(a1);
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
  v33[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10findVectorERK10CIVector_sIDF16_Li768EERjRfj_block_invoke;
  v33[3] = &unk_1E8195250;
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

unint64_t ___ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10findVectorERK10CIVector_sIDF16_Li768EERjRfj_block_invoke(unint64_t result, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(result + 40);
  v5 = *a3;
  if (v5 >= *(v4 + 156))
  {
    goto LABEL_19;
  }

  v7 = result;
  v8 = **(result + 48);
  v9 = a3[1];
  v10 = v8 == v9;
  v11 = vabds_f32(v8, v9);
  v12 = fmaxf(fminf(fabsf(v9), fabsf(v8)) * 0.000015259, 0.000015259);
  if (!v10 && v11 > v12)
  {
    return result;
  }

  v14 = *(result + 64);
  if (v14)
  {
    v28 = a4;
    v15 = *(*(v4 + 48) + 32);
    v16 = v15[3] + v15[2] * v5;
    bit_vector_set_13535(v15 + 525, (v16 >> 20));
    v17 = (v16 + 1552) >> 20;
    if (v17 > (v16 >> 20))
    {
      v18 = (v16 >> 20) + 1;
      do
      {
        v19 = v18;
        bit_vector_set_13535(v15 + 525, v18++);
      }

      while (v17 > v19);
    }

    result = _windowsResolvePtr((v15 + 5), v15[3] + v15[2] * v5, 1552);
    v20 = v28;
    if (v14 != *(result + 1544))
    {
      return result;
    }

    *&v5 = *a3;
  }

  else
  {
    v20 = a4;
  }

  v21 = *(v7 + 56);
  v22 = *(*(v4 + 48) + 32);
  v23 = v22[3] + v22[2] * v5;
  bit_vector_set_13535(v22 + 525, (v23 >> 20));
  v24 = (v23 + 1552) >> 20;
  if (v24 > (v23 >> 20))
  {
    v25 = (v23 >> 20) + 1;
    do
    {
      v26 = v25;
      bit_vector_set_13535(v22 + 525, v25++);
    }

    while (v24 > v26);
  }

  v27 = _windowsResolvePtr((v22 + 5), v22[3] + v22[2] * v5, 1552);
  result = memcmp(v21, v27, 0x600uLL);
  if (!result)
  {
    a4 = v20;
    *(*(*(v7 + 32) + 8) + 24) = *a3;
LABEL_19:
    *a4 = 1;
  }

  return result;
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li768EE22IVFVectorIndexRootBase9trainOnceENSt3__110shared_ptrI16QuantizerManagerIDF16_Li768EEEENS2_6vectorIPS1_NS2_9allocatorIS8_EEEEjj(uint64_t *a1, uint64_t *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  v50 = 0;
  v51 = 0;
  _ZN16QuantizerManagerIDF16_Li768EE20lastTrainedQuantizerEv(&v50, *a1);
  v44 = *a2;
  v45 = a2[1];
  v43 = (v45 - *a2) >> 3;
  if (v45 != *a2)
  {
    if (!(((v45 - *a2) >> 3) >> 62))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v46 = (*(*v50 + 24))(v50);
  if (v45 != v44)
  {
    v4 = 0;
    if (v43 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v43;
    }

    while (1)
    {
      (*(**(*a2 + 8 * v4) + 16))(v53);
      v6 = v50;
      v8 = *v53;
      v7 = *&v53[8];
      if (*&v53[8] && !atomic_fetch_add((*&v53[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      if (v8 != v6)
      {
        break;
      }

      (*(**(*a2 + 8 * v4) + 24))(v53);
      v9 = *&v53[8];
      *(4 * v4) = *(*v53 + 72);
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      (*(**(*a2 + 8 * v4) + 24))(v53);
      v10 = *&v53[8];
      v11 = *(*v53 + 68);
      if (*&v53[8] && !atomic_fetch_add((*&v53[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v11 != v46)
      {
        v37 = __si_assert_copy_extra_332();
        v38 = v37;
        v39 = "";
        if (v37)
        {
          v39 = v37;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2113, "vectorIndexes[i]->getPartitions()->nPartitions() == nPartitions", v39);
        free(v38);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v5 == ++v4)
      {
        goto LABEL_20;
      }
    }

    v34 = __si_assert_copy_extra_332();
    v35 = v34;
    v36 = "";
    if (v34)
    {
      v36 = v34;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2111, "vectorIndexes[i]->getQuantizer() == quantizer", v36);
LABEL_72:
    free(v35);
    if (__valid_fs(-1))
    {
      v40 = 2989;
    }

    else
    {
      v40 = 3072;
    }

    *v40 = -559038737;
    abort();
  }

LABEL_20:
  v12 = *a1;
  v13 = atomic_load((*a1 + 72));
  if ((v13 & 1) == 0)
  {
    v41 = __si_assert_copy_extra_332();
    v35 = v41;
    v42 = "";
    if (v41)
    {
      v42 = v41;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 774, "_training.test()", v42);
    goto LABEL_72;
  }

  if (*(v12 + 96))
  {
    v14 = *(v12 + 16);
    *v53 = MEMORY[0x1E69E9820];
    *&v53[8] = 0x40000000;
    *&v53[16] = ___ZN16QuantizerManagerIDF16_Li768EE23commitTrainingQuantizerEv_block_invoke;
    *&v53[24] = &__block_descriptor_tmp_718;
    *&v53[32] = v12;
    dispatch_sync(v14, v53);
  }

  v15 = *(v12 + 80);
  if (v15)
  {
    v16 = (*(*v15 + 16))(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v12 + 71);
  if (v17 >= 0)
  {
    v18 = *(v12 + 71);
  }

  else
  {
    v18 = *(v12 + 56);
  }

  if (v18 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v18 + 1 >= 0x17)
  {
    operator new();
  }

  memset(v47, 0, 24);
  *(&v47[0].__r_.__value_.__s + 23) = v18 + 1;
  if (v18)
  {
    if ((v17 & 0x80u) == 0)
    {
      v19 = (v12 + 48);
    }

    else
    {
      v19 = *(v12 + 48);
    }

    memmove(v47, v19, v18);
  }

  *(&v47[0].__r_.__value_.__l.__data_ + v18) = 46;
  std::to_string(&v52, v16);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v52;
  }

  else
  {
    v20 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v52.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(v47, v20, size);
  v23 = v22->__r_.__value_.__r.__words[2];
  *v53 = *&v22->__r_.__value_.__l.__data_;
  *&v53[16] = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(v53, ".quantizer");
  v25 = v24->__r_.__value_.__r.__words[2];
  v48 = *&v24->__r_.__value_.__l.__data_;
  v49 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if ((v53[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_52:
    operator delete(v52.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  operator delete(*v53);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  if ((SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_53:
  operator delete(v47[0].__r_.__value_.__l.__data_);
LABEL_46:
  if (v49 >= 0)
  {
    v26 = &v48;
  }

  else
  {
    v26 = v48;
  }

  if (_ZN16QuantizerManagerIDF16_Li256EE18createFdPtrForFileEPKc(v12, v26))
  {
    operator new();
  }

  v27 = *__error();
  v28 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    v32 = &v48;
    if (v49 < 0)
    {
      v32 = v48;
    }

    v33 = *v12;
    *v53 = 136315906;
    *&v53[4] = "newQuantizer";
    *&v53[12] = 1024;
    *&v53[14] = 794;
    *&v53[18] = 2080;
    *&v53[20] = v32;
    *&v53[28] = 1024;
    *&v53[30] = v33;
    _os_log_fault_impl(&dword_1C278D000, v28, OS_LOG_TYPE_FAULT, "%s:%d: Failed to create %s in parentFd: %i", v53, 0x22u);
  }

  *__error() = v27;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  v29 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *MEMORY[0x1E69E9840];
  return 0;
}

void *_ZN16QuantizerManagerIDF16_Li768EE20lastTrainedQuantizerEv(void *result, uint64_t a2)
{
  v2 = atomic_load((a2 + 72));
  if ((v2 & 1) == 0)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 752, "_training.test()", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = *(a2 + 104);
    *result = v3;
    result[1] = v4;
    if (!v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 80);
  if (v5)
  {
    v4 = *(a2 + 88);
    *result = v5;
    result[1] = v4;
    if (!v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE9onceToken != -1)
  {
    v9 = result;
    dispatch_once(&_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE9onceToken, &__block_literal_global_621);
    result = v9;
  }

  v4 = *(_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE3zvq + 8);
  *result = *_ZZN19ZeroVectorQuantizerIDF16_Li768EE14sharedInstanceEvE3zvq;
  result[1] = v4;
  if (v4)
  {
LABEL_7:
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN16QuantizerManagerIDF16_Li768EE23commitTrainingQuantizerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 80))
  {
    goto LABEL_63;
  }

  v2 = *(v1 + 71);
  if (v2 >= 0)
  {
    v3 = *(v1 + 71);
  }

  else
  {
    v3 = *(v1 + 56);
  }

  if (v3 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_95;
  }

  if (v3 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v47, 0, sizeof(v47));
  *(&v47.__r_.__value_.__s + 23) = v3 + 1;
  if (v3)
  {
    if ((v2 & 0x80u) == 0)
    {
      v4 = (v1 + 48);
    }

    else
    {
      v4 = *(v1 + 48);
    }

    memmove(&v47, v4, v3);
  }

  *(&v47.__r_.__value_.__l.__data_ + v3) = 46;
  v5 = (*(**(v1 + 80) + 16))(*(v1 + 80));
  std::to_string(&__p, v5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v47, p_p, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v48, ".quantizer");
  v11 = v10->__r_.__value_.__r.__words[2];
  *v49 = *&v10->__r_.__value_.__l.__data_;
  v50 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_32:
    operator delete(v47.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  v12 = *(v1 + 80);
  if (v50 >= 0)
  {
    v13 = v49;
  }

  else
  {
    v13 = v49[0];
  }

  fd_rename(*(*(v12 + 40) + 40), v13);
  MEMORY[0x1C691FAE0](v12 + 8, v13);
  atomic_store(1u, (*(v1 + 80) + 57));
  v15 = *(v1 + 80);
  v14 = *(v1 + 88);
  v16 = v15;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16 = *(v1 + 80);
  }

  v17 = (*(*v16 + 16))(v16);
  v18 = *(v1 + 120);
  if (!v18)
  {
    goto LABEL_51;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = v17;
    if (v18 <= v17)
    {
      v20 = v17 % v18;
    }
  }

  else
  {
    v20 = (v18 - 1) & v17;
  }

  v21 = *(*(v1 + 112) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_51:
    operator new();
  }

  if (v19.u32[0] < 2uLL)
  {
    while (1)
    {
      v24 = v22[1];
      if (v24 == v17)
      {
        if (*(v22 + 4) == v17)
        {
          goto LABEL_52;
        }
      }

      else if ((v24 & (v18 - 1)) != v20)
      {
        goto LABEL_51;
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v17)
    {
      break;
    }

    if (v23 >= v18)
    {
      v23 %= v18;
    }

    if (v23 != v20)
    {
      goto LABEL_51;
    }

LABEL_41:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_51;
    }
  }

  if (*(v22 + 4) != v17)
  {
    goto LABEL_41;
  }

LABEL_52:
  if (v14)
  {
    v25 = std::__shared_weak_count::lock(v14);
    v26 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v14);
      if (!atomic_fetch_add(v26 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v26 + 16))(v26);
        v14 = v26;
        goto LABEL_58;
      }
    }

    else
    {
      v15 = 0;
LABEL_58:
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    v15 = 0;
    v26 = 0;
  }

  v27 = v22[4];
  v22[3] = v15;
  v22[4] = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

LABEL_63:
  v28 = *(v1 + 71);
  if (v28 >= 0)
  {
    v29 = *(v1 + 71);
  }

  else
  {
    v29 = *(v1 + 56);
  }

  if (v29 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_95:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (v29 + 10 >= 0x17)
  {
    operator new();
  }

  v49[1] = 0;
  v50 = 0;
  v49[0] = 0;
  HIBYTE(v50) = v29 + 10;
  if (v29)
  {
    if ((v28 & 0x80u) == 0)
    {
      v30 = (v1 + 48);
    }

    else
    {
      v30 = *(v1 + 48);
    }

    memmove(v49, v30, v29);
  }

  strcpy(v49 + v29, ".quantizer");
  v32 = *(v1 + 96);
  v31 = *(v1 + 104);
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = *(v1 + 88);
  *(v1 + 80) = v32;
  *(v1 + 88) = v31;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(v1 + 80);
  if (v50 >= 0)
  {
    v35 = v49;
  }

  else
  {
    v35 = v49[0];
  }

  fd_rename(*(*(v34 + 40) + 40), v35);
  MEMORY[0x1C691FAE0](v34 + 8, v35);
  v36 = *(v1 + 80);
  v37 = *(v36 + 40);
  *v37 = 0;
  vi_onefixedsize_disk_allocator::storeHeader(v37);
  storage_array_SyncPages(*(v36 + 40) + 8, *(v36 + 40) + 4200);
  storage_array_Truncate((*(v36 + 40) + 8));
  v38 = *(v36 + 40);
  fd_make_readonly(*(v38 + 40));
  v39 = *(v38 + 40);
  if (v39)
  {
    do
    {
      v40 = fchmodat(*(v39 + 44), *(v39 + 72), 0x100u, 2048);
      v41 = g_prot_error_callback;
      if (v40 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v43 = *(v39 + 40);
      v44 = __error();
    }

    while (((*(v41 + 16))(v41, v43, *v44, 19) & 1) != 0);
  }

  *(v36 + 56) = 1;
  v45 = *(v1 + 104);
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
    if (SHIBYTE(v50) < 0)
    {
LABEL_91:
      operator delete(v49[0]);
    }
  }

  else if (SHIBYTE(v50) < 0)
  {
    goto LABEL_91;
  }
}

float ___ZN22IVFVectorIndexTemplateIDF16_Li768EE22IVFVectorIndexRootBase9trainOnceENSt3__110shared_ptrI16QuantizerManagerIDF16_Li768EEEENS2_6vectorIPS1_NS2_9allocatorIS8_EEEEjj_block_invoke(uint64_t a1, unsigned int a2, float *a3)
{
  v6 = (*(**(a1 + 32) + 32))(*(a1 + 32), *a3);
  if (*(a1 + 64))
  {
    memset(__p, 0, 24);
    (*(**(a1 + 40) + 80))(__p);
    if (*(__p[0] + 1) < a3[1])
    {
      a2 = *(a1 + 68) + *__p[0];
    }

    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v7 = *(a1 + 48);
  bzero(__p, 0xC00uLL);
  v8 = 0;
  v9 = (v6 + 16);
  do
  {
    v10 = *v9[-2].i8;
    v11 = vcvtq_f32_f16(*v9);
    v12 = vcvt_hight_f32_f16(*v9->i8);
    v13 = &__p[v8];
    *v13 = vcvtq_f32_f16(*v10.i8);
    *(v13 + 1) = vcvt_hight_f32_f16(v10);
    *(v13 + 2) = v11;
    *(v13 + 3) = v12;
    v8 += 8;
    v9 += 4;
  }

  while (v8 != 384);
  v14 = (v7 + 3076 * a2);
  v15 = v14[768];
  if (v15 == 0.0)
  {
    memcpy(v14, __p, 0xC00uLL);
  }

  else
  {
    vDSP_vavlin(__p, 1, v14 + 768, v14, 1, 0x300uLL);
    v15 = v14[768];
  }

  result = v15 + 1.0;
  v14[768] = v15 + 1.0;
  return result;
}

void _ZZN22IVFVectorIndexTemplateIDF16_Li768EE22IVFVectorIndexRootBase9trainOnceENSt3__110shared_ptrI16QuantizerManagerIDF16_Li768EEEENS2_6vectorIPS1_NS2_9allocatorIS8_EEEEjjENUlPvmE_8__invokeESC_m(void *a1, uint64_t a2)
{
  makeThreadId();
  v4 = *(a1[1] + 8 * a2);
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 40))(&v13);
  v6 = (*a1 + 16 * a2);
  v8 = v13;
  v7 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v6[1];
  *v6 = v8;
  v6[1] = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

uint64_t _ZNK20ArrayVectorQuantizerIDF16_Li768EE11getCentroidEj(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - v2) >> 9) <= a2)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 452, "i < centroids.size()", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v2 + 1536 * a2;
}

void _ZN20ArrayVectorQuantizerIDF16_Li768EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F427ECC8;
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN20ArrayVectorQuantizerIDF16_Li768EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F427ECC8;
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F427DE28;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE7compactEP22AnyVectorIndexInstanceP12uint32_map_tP11TermIdStore18CICompactCallbacksPVi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *__error();
  v9 = _SILogForLogForCategory(16);
  v10 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v9, v10))
  {
    v19 = (*(*a1 + 16))(a1);
    v11 = (*(*a1 + 24))(a1);
    v12 = (*(*a2 + 16))(a2);
    v13 = (*(*a2 + 24))(a2);
    *buf = 67109888;
    *&buf[4] = v19;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 1024;
    v28 = v13;
    _os_log_impl(&dword_1C278D000, v9, v10, "compact %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
  }

  *__error() = v8;
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v20 = *a5;
    v21 = a5[1];
    if (!_ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE8nVectorsEv(a2 + 48))
    {
      operator new();
    }

    v17 = __si_assert_copy_extra_332();
    v15 = v17;
    v18 = "";
    if (v17)
    {
      v18 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2738, "target->nVectors() == 0", v18);
  }

  else
  {
    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v16);
  }

  free(v15);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

uint64_t ___ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE7compactIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_P12uint32_map_tP11TermIdStore18CICompactCallbacksPVi_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v5 = *(a2 + 3);
  v6 = *(a1 + 40);
  v7 = *v5;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (v7)
    {
      v9 = *(a1 + 48);
      v10 = a2;
      v11 = uint32_map_get(v6, *v5);
      v12 = storageResolvePtr(v9, 8 * v11, 8, 1);
      a2 = v10;
      v7 = *v12;
    }

    else
    {
      v7 = 0;
    }
  }

  _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE16insertForCompactEjPK10CIVector_sIDF16_Li768EEyjf(*(a1 + 56), a2[2], *(a2 + 2), v7, *a2, *(a2 + 1));
  result = 1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*(*(*(a1 + 32) + 8) + 24) == 1 && !**(a1 + 64))
  {
    result = (*(a1 + 88))(*(a1 + 96));
  }

  *a3 = result;
  return result;
}

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE16insertForCompactEjPK10CIVector_sIDF16_Li768EEyjf(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, float a6)
{
  os_unfair_lock_lock((a1 + 112));
  v12 = *(a1 + 88);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 96);
  v13 = *(a1 + 104);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 112));
  if (a5 == -1)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = 0xFFFFFFFFLL;
    v19 = a6;
    v20 = 0;
  }

  else
  {
    if (*(v14 + 68) <= a5)
    {
      v21 = __si_assert_copy_extra_332();
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2777, "partID == VECTOR_NOT_FOUND || partID < cur.partitions->nPartitions()", v23);
      free(v22);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a5;
    v19 = a6;
    v20 = 1;
  }

  *(_ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li768EEjfb(v15, v16, v17, v18, v20, v19) + 192) = a4;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v12)
    {
      return;
    }
  }

  else if (!v12)
  {
    return;
  }

  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);

    std::__shared_weak_count::__release_weak(v12);
  }
}

void _ZNK16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE4dumpEbbPViPvU13block_pointerFbjPKvybjfE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock((a1 + 160));
  v9 = *(a1 + 136);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 144);
  v10 = *(a1 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 160));
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v22[0] = v12;
  v22[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
  }

  v14 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E81959F0;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; v18(v17, &v31, &i))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE12enumerator_s4nextEv(&v28, &v25);
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

uint64_t ___ZNK22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke(uint64_t a1, unsigned int *a2, BOOL *a3)
{
  v5 = a2[2];
  v6 = *(a2 + 2);
  v7 = **(a2 + 3);
  v8 = *a2;
  result = (*(*(a1 + 32) + 16))(*(a2 + 1));
  *a3 = **(a1 + 40) != 0;
  return result;
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE17mergeIndexForTestEP22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
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

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE21mergeUpdateSetForTestEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
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
      *&buf[4] = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
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

void _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_s4nextEv(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 72))
  {
    v4 = *(*(*(a2 + 40) + ((*(a2 + 64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a2 + 64));
    *a1 = (*(*v4 + 16))(v4);
    if (*(a2 + 72))
    {
      while (1)
      {
        v5 = *(*(*(a2 + 40) + ((*(a2 + 64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a2 + 64));
        v6 = (*(*v5 + 24))(v5);
        if (v6)
        {
          break;
        }

        v7 = *(*(*(a2 + 40) + ((*(a2 + 64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a2 + 64) + 8);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        v8 = vaddq_s64(*(a2 + 64), xmmword_1C2BFA590);
        *(a2 + 64) = v8;
        v9 = v8.i64[0];
        if (v8.i64[0] >= 0x200uLL)
        {
          operator delete(**(a2 + 40));
          *(a2 + 40) += 8;
          v10 = *(a2 + 72);
          v9 = *(a2 + 64) - 256;
          *(a2 + 64) = v9;
          if (!v10)
          {
            return;
          }
        }

        else if (!v8.i64[1])
        {
          return;
        }

        v11 = *(*(*(a2 + 40) + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
        *a1 = (*(*v11 + 16))(v11);
        if (!*(a2 + 72))
        {
          return;
        }
      }

      *(a1 + 4) = v6[1];
      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a2 + 16) + 16), *v6, 1556);
      *(a1 + 8) = *(Ptr + 1552);
      *(a1 + 16) = Ptr;
      *(a1 + 24) = Ptr + 1536;
    }
  }
}

int *_ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfojy(int *result, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (result[2] != *(a2 + 8) || *(result + 10) != *(a2 + 20) || result[3] != *(a2 + 12) || result[4] != *(a2 + 16))
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (dword_1EBF46B0C >= 5)
  {
    v7 = result;
    v8 = a2;
    v9 = *__error();
    v10 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (*(*v7 + 16))(v7);
      v12 = (*(*v7 + 24))(v7);
      v13 = (*(*v8 + 16))(v8);
      v14 = (*(*v8 + 24))(v8);
      *buf = 67109888;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "mergeUpdateSet(DocID) %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    result = __error();
    *result = v9;
    a2 = v8;
  }

  v2 = *(a2 + 80);
  if (*(v2 + 24))
  {
    _ZNK22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(*(a2 + 80), 0);
    _ZNK22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v2, 0);
    _ZNK22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v2, 0);
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2447, "0", v17);
    free(v16);
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

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li768EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(uint64_t a1, unsigned int a2)
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

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1941, "offset < store->endOffset()", v6);
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

  return vi_onefixedsize_memory_allocator::getPtr(v2, a2, 1556);
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfoP17TermIdContainer_s(uint64_t a1, uint64_t a2)
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
      *&buf[4] = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
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

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE5trainERKNSt3__16vectorIP22AnyVectorIndexInstanceNS5_9allocatorIS8_EEEE(uint64_t a1, uint64_t a2)
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

unsigned int *_ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE13insertForTestEjjPKv14vec_dimensions15vec_data_formatj(_DWORD *a1, int a2, unsigned int a3, void *a4, int a5, int a6, unsigned int a7)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
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

  v7 = a7;
  result = _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li768EEjfb((a1 + 12), a3, a4, 0xFFFFFFFFLL, 0, 3.4028e38);
  *(result + 192) = v7;
  return result;
}

uint64_t _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE14insertForMergeEjtjPKv14vec_dimensions15vec_data_formatyjf(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, int a6, int a7, uint64_t a8, float a9, unsigned int a10)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a7 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a6] || vector_size_elem_sizes_15423[a7] != *(a1 + 16))
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v13);
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

  _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE16insertForCompactEjPK10CIVector_sIDF16_Li768EEyjf(a1 + 48, a4, a5, a8, a10, a9);
  return 1;
}

void _ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE12insertVectorEjjPKv14vec_dimensions15vec_data_format14docInvertStateyP15PostingBaseInfo(_DWORD *a1, int a2, unsigned int a3, void *a4, int a5, int a6)
{
  if (a1[2] == a2 && a6 <= 2 && a1[3] == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == a1[4])
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li768EEjfb((a1 + 12), a3, a4, 0xFFFFFFFFLL, 0, 3.4028e38);
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2636, "0", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
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

unsigned int *_ZN16IVFVectorIndexenI30vi_onefixedsize_disk_allocator16vi_disk_postingsE22IVFVectorIndexInstanceIDF16_Li768EE17bulkInsertForTestEPKvPKjjS8_(unsigned int *result, char *a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = result;
    if (a4 <= 0x3E8)
    {
      v17 = a4;
      do
      {
        v19 = *a5++;
        v18 = v19;
        v20 = *a3++;
        result = _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li768EEjfb((v8 + 12), v18, a2, 0xFFFFFFFFLL, 0, 3.4028e38);
        *(result + 192) = v20;
        a2 += 1536;
        --v17;
      }

      while (v17);
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
            v23 = ((v9 * 100.0) * v12);
            _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "bulkInsertForTest: %.0f%%", buf, 0xCu);
          }

          *__error() = v15;
        }

        v13 = a3[v9];
        result = _ZN22IVFVectorIndexTemplateIDF16_Li768EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li768EEjfb((v8 + 12), a5[v9], a2, 0xFFFFFFFFLL, 0, 3.4028e38);
        *(result + 192) = v13;
        a2 += 1536;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}