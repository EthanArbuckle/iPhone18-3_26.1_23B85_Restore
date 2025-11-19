uint64_t sub_255B7985C(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    v1 = *(result + 72);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

BOOL sub_255B798D8(uint64_t a1)
{
  sub_255AA246C(a1, &v17);
  v2 = *&v18[4];
  if (HIDWORD(*&v18[4]))
  {
    v3 = *&v18[4] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  if (HIDWORD(*&v18[12]))
  {
    v5 = *&v18[12] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  v7 = v4 | v6;
  if ((v4 | v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = *&v18[12];
  }

  if (HIDWORD(v8) * v20 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_32:
    abort();
  }

LABEL_25:
  sub_255AA246C(a1, &v17);
  v13 = 0;
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v18))) & 1) == 0 && *&v18[16])
  {
    v14.i64[0] = -1;
    v14.i64[1] = -1;
    v13 = (vaddvq_s32(vmulq_s32(v19, vaddq_s32(*v18, v14))) + v20 * (*&v18[16] - 1) + 1);
  }

  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v2;
  }

  return v13 == v8 * v15 * HIDWORD(v15) * HIDWORD(v8);
}

void sub_255B79AD0(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 30);
  if (v5 == 2)
  {
    v18 = a1[1];
    v33 = *a1;
    v34 = v18;
    v35 = a1[2];
    v36 = *(a1 + 12);
    LOBYTE(v37) = 0;
    v45 = 0;
    if (*(a1 + 112) == 1)
    {
      v37 = &unk_2867C5710;
      v19 = *(a1 + 8);
      v20 = *(a1 + 9);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *(a1 + 12);
        v22 = *(a1 + 26);
        v23 = *(a1 + 54);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v21 = *(a1 + 12);
        v22 = *(a1 + 26);
        v23 = *(a1 + 54);
      }

      v38 = v19;
      v39 = v20;
      v40 = *(a1 + 10);
      v41 = *(a1 + 22);
      v42 = v21;
      v43 = v22;
      v44 = v23;
      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v45 = 1;
    }

    if (sub_255B798D8(&v33))
    {
      goto LABEL_42;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 55, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v26 = qword_27F7DD608, v27 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_41:
        qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_42:
        sub_255B7CF5C(&v33, a2, &v31);
        goto LABEL_58;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v27 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_64;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
      v26 += 16;
    }

    while (v26 != v27);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_41;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 58, &unk_255C2500B, 0, "OutputDataVariant copy not implemented", 0x26uLL, sub_255C101E0);
    }

    else
    {
      v6 = a1[1];
      v33 = *a1;
      v34 = v6;
      v35 = a1[2];
      v36 = *(a1 + 12);
      LOBYTE(v37) = 0;
      v45 = 0;
      if (*(a1 + 112) == 1)
      {
        v37 = &unk_2867C5710;
        v7 = *(a1 + 8);
        v8 = *(a1 + 9);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = *(a1 + 12);
          v10 = *(a1 + 26);
          v11 = *(a1 + 54);
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v9 = *(a1 + 12);
          v10 = *(a1 + 26);
          v11 = *(a1 + 54);
        }

        v38 = v7;
        v39 = v8;
        v40 = *(a1 + 10);
        v41 = *(a1 + 22);
        v42 = v9;
        v43 = v10;
        v44 = v11;
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v45 = 1;
      }

      if (sub_255B7946C(&v33))
      {
        goto LABEL_57;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 47, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_56:
          qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_57:
          sub_255B7C648(&v33, a2, &v31);
          goto LABEL_58;
        }
      }

      else
      {
        v28 = qword_27F7DD608;
        v29 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_64;
        }
      }

      do
      {
        (*v28)(*(v28 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
        v28 += 16;
      }

      while (v28 != v29);
      if (byte_27F7DD630)
      {
        goto LABEL_56;
      }
    }

LABEL_64:
    abort();
  }

  v12 = a1[1];
  v33 = *a1;
  v34 = v12;
  v35 = a1[2];
  v36 = *(a1 + 12);
  LOBYTE(v37) = 0;
  v45 = 0;
  if (*(a1 + 112) == 1)
  {
    v37 = &unk_2867C5710;
    v13 = *(a1 + 8);
    v14 = *(a1 + 9);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(a1 + 12);
      v16 = *(a1 + 26);
      v17 = *(a1 + 54);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v15 = *(a1 + 12);
      v16 = *(a1 + 26);
      v17 = *(a1 + 54);
    }

    v38 = v13;
    v39 = v14;
    v40 = *(a1 + 10);
    v41 = *(a1 + 22);
    v42 = v15;
    v43 = v16;
    v44 = v17;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v45 = 1;
  }

  if (sub_255B79664(&v33))
  {
    goto LABEL_27;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 51, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v24 = qword_27F7DD608;
    v25 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_64;
    }

    do
    {
LABEL_24:
      (*v24)(*(v24 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
      v24 += 16;
    }

    while (v24 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_26;
  }

  if (byte_27F7DD638 == 1)
  {
    v24 = qword_27F7DD608;
    v25 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_27:
  sub_255B7D434(&v33, a2, &v31);
LABEL_58:
  *a3 = v31;
  *(a3 + 16) = v32;
  *(a3 + 24) = 2;
  *(a3 + 32) = 64;
  *(a3 + 40) = 2;
  if (v45)
  {
    v30 = v39;
    if (v39)
    {
      if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }
    }
  }
}

void sub_255B7A1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

void sub_255B7A1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

void sub_255B7A238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

void sub_255B7A274(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 30);
  if (v5 == 2)
  {
    v18 = a1[1];
    v33 = *a1;
    v34 = v18;
    v35 = a1[2];
    v36 = *(a1 + 12);
    LOBYTE(v37) = 0;
    v45 = 0;
    if (*(a1 + 112) == 1)
    {
      v37 = &unk_2867C5710;
      v19 = *(a1 + 8);
      v20 = *(a1 + 9);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *(a1 + 12);
        v22 = *(a1 + 26);
        v23 = *(a1 + 54);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v21 = *(a1 + 12);
        v22 = *(a1 + 26);
        v23 = *(a1 + 54);
      }

      v38 = v19;
      v39 = v20;
      v40 = *(a1 + 10);
      v41 = *(a1 + 22);
      v42 = v21;
      v43 = v22;
      v44 = v23;
      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v45 = 1;
    }

    if (sub_255B798D8(&v33))
    {
      goto LABEL_42;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 55, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v26 = qword_27F7DD608, v27 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_41:
        qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_42:
        sub_255B7E648(&v33, a2, &v31);
        goto LABEL_58;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v27 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_64;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
      v26 += 16;
    }

    while (v26 != v27);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_41;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 58, &unk_255C2500B, 0, "OutputDataVariant copy not implemented", 0x26uLL, sub_255C101E0);
    }

    else
    {
      v6 = a1[1];
      v33 = *a1;
      v34 = v6;
      v35 = a1[2];
      v36 = *(a1 + 12);
      LOBYTE(v37) = 0;
      v45 = 0;
      if (*(a1 + 112) == 1)
      {
        v37 = &unk_2867C5710;
        v7 = *(a1 + 8);
        v8 = *(a1 + 9);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = *(a1 + 12);
          v10 = *(a1 + 26);
          v11 = *(a1 + 54);
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v9 = *(a1 + 12);
          v10 = *(a1 + 26);
          v11 = *(a1 + 54);
        }

        v38 = v7;
        v39 = v8;
        v40 = *(a1 + 10);
        v41 = *(a1 + 22);
        v42 = v9;
        v43 = v10;
        v44 = v11;
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v45 = 1;
      }

      if (sub_255B7946C(&v33))
      {
        goto LABEL_57;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 47, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_56:
          qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_57:
          sub_255B7DD34(&v33, a2, &v31);
          goto LABEL_58;
        }
      }

      else
      {
        v28 = qword_27F7DD608;
        v29 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_64;
        }
      }

      do
      {
        (*v28)(*(v28 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
        v28 += 16;
      }

      while (v28 != v29);
      if (byte_27F7DD630)
      {
        goto LABEL_56;
      }
    }

LABEL_64:
    abort();
  }

  v12 = a1[1];
  v33 = *a1;
  v34 = v12;
  v35 = a1[2];
  v36 = *(a1 + 12);
  LOBYTE(v37) = 0;
  v45 = 0;
  if (*(a1 + 112) == 1)
  {
    v37 = &unk_2867C5710;
    v13 = *(a1 + 8);
    v14 = *(a1 + 9);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(a1 + 12);
      v16 = *(a1 + 26);
      v17 = *(a1 + 54);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v15 = *(a1 + 12);
      v16 = *(a1 + 26);
      v17 = *(a1 + 54);
    }

    v38 = v13;
    v39 = v14;
    v40 = *(a1 + 10);
    v41 = *(a1 + 22);
    v42 = v15;
    v43 = v16;
    v44 = v17;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v45 = 1;
  }

  if (sub_255B79664(&v33))
  {
    goto LABEL_27;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 51, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v24 = qword_27F7DD608;
    v25 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_64;
    }

    do
    {
LABEL_24:
      (*v24)(*(v24 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
      v24 += 16;
    }

    while (v24 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_26;
  }

  if (byte_27F7DD638 == 1)
  {
    v24 = qword_27F7DD608;
    v25 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_27:
  sub_255B7EB20(&v33, a2, &v31);
LABEL_58:
  *a3 = v31;
  *(a3 + 16) = v32;
  *(a3 + 24) = 3;
  *(a3 + 32) = 128;
  *(a3 + 40) = 2;
  if (v45)
  {
    v30 = v39;
    if (v39)
    {
      if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }
    }
  }
}

void sub_255B7A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

void sub_255B7A9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

void sub_255B7A9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7AA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_255B7AA1C@<X0>(unsigned int *result@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  if (a2)
  {
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v3 = (1.0 / (result[1] + -1.0)) * 12.0;
      v4 = (1.0 / (*result + -1.0)) * 12.0;
      operator new();
    }

    sub_255B7AE14();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_255B7AC84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B7ACA0(unsigned int *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  sub_255B7AE2C(a4, &v31);
  v9 = *(a4 + 36);
  if (a3 < v9)
  {
    v9 = a3;
  }

  if (v9)
  {
    v10 = 0;
    v11 = 1.0 / (v7 + -1.0);
    v12 = 1.0 / (v8 + -1.0);
    v13 = 20 * v9;
    v14 = (a2 + 8);
    do
    {
      v15 = v14[1];
      v16 = (v11 * 12.0) * v15;
      v17 = (v12 * 12.0) * v15;
      v18 = __sincosf_stret(*v14);
      v19 = (*(a4 + 24) + 2 * (*(a4 + 44) * v10));
      _S2 = v16 * v18.__cosval;
      __asm { FCVT            H2, S2 }

      *v19 = LOWORD(_S2);
      _S2 = -(v16 * v18.__sinval);
      __asm { FCVT            H2, S2 }

      v19[1] = LOWORD(_S2);
      _S2 = ((v11 * *(v14 - 2)) + (v11 * *(v14 - 2))) + -1.0;
      __asm { FCVT            H2, S2 }

      v19[2] = LOWORD(_S2);
      _S0 = v17 * v18.__sinval;
      __asm { FCVT            H0, S0 }

      v19[3] = LOWORD(_S0);
      _S0 = v17 * v18.__cosval;
      __asm { FCVT            H0, S0 }

      v19[4] = LOWORD(_S0);
      _S0 = ((v12 * *(v14 - 1)) + (v12 * *(v14 - 1))) + -1.0;
      __asm { FCVT            H0, S0 }

      v19[5] = LOWORD(_S0);
      ++v10;
      v14 += 5;
      v13 -= 20;
    }

    while (v13);
  }

  result = v31;
  v31 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B7AE2C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = a1;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a2 = v9;
        if (*(v8 + 49) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 49) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 1);
}

void *sub_255B7AF78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255AA0880(a1, &v32);
  if (HIDWORD(v33))
  {
    v6 = v33 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v34))
  {
    v8 = v34 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v33;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v34;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v35 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 64)
    {
      goto LABEL_21;
    }

LABEL_39:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_58;
      }
    }

    do
    {
      v26 = *v23;
      v25 = *(v23 + 8);
      v23 += 16;
      v26(v25, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v23 != v24);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    v14 = a2 << 6;
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v18 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v18 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_58;
    }
  }

  do
  {
    v22 = *v18;
    v21 = *(v18 + 8);
    v18 += 16;
    v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v18 != v17);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v12 * v11 * HIDWORD(v11) != 64)
  {
    goto LABEL_39;
  }

LABEL_21:
  v14 = a2 << 6;
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        if (a2 >> 58)
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_58;
      }
    }

    do
    {
      v20 = *v15;
      v19 = *(v15 + 8);
      v15 += 16;
      v20(v19, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_58:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  if (*(a1 + 112) == 1)
  {
    v27 = 96;
    if (*(a1 + 108) == 1 && *(a1 + 96))
    {
      v28 = *(a1 + 64);
      v29 = *(a1 + 72);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v30 = v28;
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
          v28 = v30;
        }
      }

      (*(*v28 + 88))(v28, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v27 = 96;
    }
  }

  else
  {
    v27 = 40;
  }

  return memcpy(0, *(a1 + v27), v14);
}

void sub_255B7B434(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

float sub_255B7B450@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255AA246C(a1, &v34);
  if (HIDWORD(v35))
  {
    v6 = v35 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v36))
  {
    v8 = v36 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v35;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v36;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v37 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 64)
    {
      goto LABEL_21;
    }

LABEL_39:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v25 = *v22;
      v24 = *(v22 + 8);
      v22 += 16;
      v25(v24, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v22 != v23);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_75;
    }
  }

  do
  {
    v21 = *v16;
    v20 = *(v16 + 8);
    v16 += 16;
    v21(v20, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v16 != v17);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v12 * v11 * HIDWORD(v11) != 64)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        *a3 = 0;
        a3[2] = 0;
        if (a2 >> 58)
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v19 = *v14;
      v18 = *(v14 + 8);
      v14 += 16;
      v19(v18, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_75:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  sub_255AA246C(a1, &v34);
  if (HIDWORD(v35))
  {
    v27 = v35 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (HIDWORD(v36))
  {
    v29 = v36 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if ((v28 | v30))
  {
    v31 = 0;
  }

  else
  {
    v31 = HIDWORD(v36);
  }

  if (v31 * v37 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v32 = qword_27F7DD608, v33 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_73:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return result;
      }
    }

    else
    {
      v32 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      (*v32)(*(v32 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v32 += 16;
    }

    while (v32 != v33);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  return result;
}

void sub_255B7BD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    *a10 = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

double sub_255B7BD4C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255B62CB0(a1, &v34);
  if (HIDWORD(v35))
  {
    v6 = v35 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v36))
  {
    v8 = v36 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v35;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v36;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v37 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 64)
    {
      goto LABEL_21;
    }

LABEL_39:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v25 = *v22;
      v24 = *(v22 + 8);
      v22 += 16;
      v25(v24, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v22 != v23);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_75;
    }
  }

  do
  {
    v21 = *v16;
    v20 = *(v16 + 8);
    v16 += 16;
    v21(v20, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v16 != v17);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v12 * v11 * HIDWORD(v11) != 64)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        *a3 = 0;
        a3[2] = 0;
        if (a2 >> 58)
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v19 = *v14;
      v18 = *(v14 + 8);
      v14 += 16;
      v19(v18, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_75:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  sub_255B62CB0(a1, &v34);
  if (HIDWORD(v35))
  {
    v27 = v35 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (HIDWORD(v36))
  {
    v29 = v36 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if ((v28 | v30))
  {
    v31 = 0;
  }

  else
  {
    v31 = HIDWORD(v36);
  }

  if (v31 * v37 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v32 = qword_27F7DD608, v33 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_73:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return result;
      }
    }

    else
    {
      v32 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      (*v32)(*(v32 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v32 += 16;
    }

    while (v32 != v33);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  return result;
}

void sub_255B7C614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    *a10 = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

float sub_255B7C648@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255AA0880(a1, &v36);
  if (HIDWORD(v37))
  {
    v6 = v37 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v38))
  {
    v8 = v38 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v37;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v38;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v39 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 64)
    {
      goto LABEL_21;
    }

LABEL_39:
    v23 = a2;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v27 = *v24;
      v26 = *(v24 + 8);
      v24 += 16;
      v27(v26, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v24 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    a2 = v23;
    if (v13 < v23)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  v16 = a2;
  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v17 = qword_27F7DD608;
    v18 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v17 = qword_27F7DD608;
    v18 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_75;
    }
  }

  do
  {
    v22 = *v17;
    v21 = *(v17 + 8);
    v17 += 16;
    v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v17 != v18);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  a2 = v16;
  if (v12 * v11 * HIDWORD(v11) != 64)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        *a3 = 0;
        a3[2] = 0;
        if (HIBYTE(a2))
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v20 = *v14;
      v19 = *(v14 + 8);
      v14 += 16;
      v20(v19, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_75:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  sub_255AA0880(a1, &v36);
  if (HIDWORD(v37))
  {
    v29 = v37 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (HIDWORD(v38))
  {
    v31 = v38 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if ((v30 | v32))
  {
    v33 = 0;
  }

  else
  {
    v33 = HIDWORD(v38);
  }

  if (v33 * v39 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v34 = qword_27F7DD608, v35 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_73:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return result;
      }
    }

    else
    {
      v34 = qword_27F7DD608;
      v35 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      (*v34)(*(v34 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v34 += 16;
    }

    while (v34 != v35);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  return result;
}

void sub_255B7CF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    *a11 = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255B7CF5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255AA246C(a1, &v32);
  if (HIDWORD(v33))
  {
    v6 = v33 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v34))
  {
    v8 = v34 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v33;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v34;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v35 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 64)
    {
      goto LABEL_21;
    }

LABEL_39:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_58;
      }
    }

    do
    {
      v26 = *v23;
      v25 = *(v23 + 8);
      v23 += 16;
      v26(v25, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v23 != v24);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    v14 = a2 << 8;
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v18 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v18 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_58;
    }
  }

  do
  {
    v22 = *v18;
    v21 = *(v18 + 8);
    v18 += 16;
    v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v18 != v17);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v12 * v11 * HIDWORD(v11) != 64)
  {
    goto LABEL_39;
  }

LABEL_21:
  v14 = a2 << 8;
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        if (HIBYTE(a2))
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_58;
      }
    }

    do
    {
      v20 = *v15;
      v19 = *(v15 + 8);
      v15 += 16;
      v20(v19, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_58:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  if (*(a1 + 112) == 1)
  {
    v27 = 96;
    if (*(a1 + 108) == 1 && *(a1 + 96))
    {
      v28 = *(a1 + 64);
      v29 = *(a1 + 72);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v30 = v28;
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
          v28 = v30;
        }
      }

      (*(*v28 + 88))(v28, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v27 = 96;
    }
  }

  else
  {
    v27 = 40;
  }

  return memcpy(0, *(a1 + v27), v14);
}

void sub_255B7D418(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

float sub_255B7D434@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255B62CB0(a1, &v34);
  if (HIDWORD(v35))
  {
    v6 = v35 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v36))
  {
    v8 = v36 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v35;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v36;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v37 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 64)
    {
      goto LABEL_21;
    }

LABEL_39:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v25 = *v22;
      v24 = *(v22 + 8);
      v22 += 16;
      v25(v24, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v22 != v23);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_75;
    }
  }

  do
  {
    v21 = *v16;
    v20 = *(v16 + 8);
    v16 += 16;
    v21(v20, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v16 != v17);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v12 * v11 * HIDWORD(v11) != 64)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        *a3 = 0;
        a3[2] = 0;
        if (HIBYTE(a2))
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v19 = *v14;
      v18 = *(v14 + 8);
      v14 += 16;
      v19(v18, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_75:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  sub_255B62CB0(a1, &v34);
  if (HIDWORD(v35))
  {
    v27 = v35 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (HIDWORD(v36))
  {
    v29 = v36 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if ((v28 | v30))
  {
    v31 = 0;
  }

  else
  {
    v31 = HIDWORD(v36);
  }

  if (v31 * v37 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v32 = qword_27F7DD608, v33 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_73:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return result;
      }
    }

    else
    {
      v32 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      (*v32)(*(v32 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v32 += 16;
    }

    while (v32 != v33);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  return result;
}

void sub_255B7DD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    *a10 = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

float sub_255B7DD34@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255AA0880(a1, &v36);
  if (HIDWORD(v37))
  {
    v6 = v37 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v38))
  {
    v8 = v38 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v37;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v38;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v39 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 128)
    {
      goto LABEL_21;
    }

LABEL_39:
    v23 = a2;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v27 = *v24;
      v26 = *(v24 + 8);
      v24 += 16;
      v27(v26, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v24 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    a2 = v23;
    if (v13 < v23)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  v16 = a2;
  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v17 = qword_27F7DD608;
    v18 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v17 = qword_27F7DD608;
    v18 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_75;
    }
  }

  do
  {
    v22 = *v17;
    v21 = *(v17 + 8);
    v17 += 16;
    v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v17 != v18);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  a2 = v16;
  if (v12 * v11 * HIDWORD(v11) != 128)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        *a3 = 0;
        a3[2] = 0;
        if (a2 >> 55)
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v20 = *v14;
      v19 = *(v14 + 8);
      v14 += 16;
      v20(v19, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_75:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  sub_255AA0880(a1, &v36);
  if (HIDWORD(v37))
  {
    v29 = v37 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (HIDWORD(v38))
  {
    v31 = v38 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if ((v30 | v32))
  {
    v33 = 0;
  }

  else
  {
    v33 = HIDWORD(v38);
  }

  if (v33 * v39 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v34 = qword_27F7DD608, v35 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_73:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return result;
      }
    }

    else
    {
      v34 = qword_27F7DD608;
      v35 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      (*v34)(*(v34 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v34 += 16;
    }

    while (v34 != v35);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  return result;
}

void sub_255B7E614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    *a11 = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255B7E648@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255AA246C(a1, &v32);
  if (HIDWORD(v33))
  {
    v6 = v33 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v34))
  {
    v8 = v34 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v33;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v34;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v35 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 128)
    {
      goto LABEL_21;
    }

LABEL_39:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_58;
      }
    }

    do
    {
      v26 = *v23;
      v25 = *(v23 + 8);
      v23 += 16;
      v26(v25, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v23 != v24);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    v14 = a2 << 9;
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v18 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v18 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_58;
    }
  }

  do
  {
    v22 = *v18;
    v21 = *(v18 + 8);
    v18 += 16;
    v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v18 != v17);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v12 * v11 * HIDWORD(v11) != 128)
  {
    goto LABEL_39;
  }

LABEL_21:
  v14 = a2 << 9;
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        if (a2 >> 55)
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_58;
      }
    }

    do
    {
      v20 = *v15;
      v19 = *(v15 + 8);
      v15 += 16;
      v20(v19, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_58:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  if (*(a1 + 112) == 1)
  {
    v27 = 96;
    if (*(a1 + 108) == 1 && *(a1 + 96))
    {
      v28 = *(a1 + 64);
      v29 = *(a1 + 72);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v30 = v28;
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
          v28 = v30;
        }
      }

      (*(*v28 + 88))(v28, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v27 = 96;
    }
  }

  else
  {
    v27 = 40;
  }

  return memcpy(0, *(a1 + v27), v14);
}

void sub_255B7EB04(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

float sub_255B7EB20@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_255B62CB0(a1, &v34);
  if (HIDWORD(v35))
  {
    v6 = v35 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (HIDWORD(v36))
  {
    v8 = v36 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = v7 | v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v35;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v36;
  }

  v13 = HIDWORD(v12);
  if (HIDWORD(v12) * v37 != -1)
  {
    if (v12 * v11 * HIDWORD(v11) == 128)
    {
      goto LABEL_21;
    }

LABEL_39:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 47, "w * h * c == N", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_46;
      }

      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = qword_27F7DD608;
      v23 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v25 = *v22;
      v24 = *(v22 + 8);
      v22 += 16;
      v25(v24, "w * h * c == N", 14, &unk_255C2500B, 0);
    }

    while (v22 != v23);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_46:
    qword_27F7DD620(*algn_27F7DD628, "w * h * c == N", 14, &unk_255C2500B, 0);
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_38;
    }

    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_75;
    }
  }

  do
  {
    v21 = *v16;
    v20 = *(v16 + 8);
    v16 += 16;
    v21(v20, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v16 != v17);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_38:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v12 * v11 * HIDWORD(v11) != 128)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v13 < a2)
  {
LABEL_22:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 48, "num_valid_descriptors <= num_of_output_descriptors", 0x32uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        qword_27F7DD620(*algn_27F7DD628, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
        a3[1] = 0;
        *a3 = 0;
        a3[2] = 0;
        if (a2 >> 55)
        {
          sub_255A7B4E8();
        }

LABEL_48:
        operator new();
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v19 = *v14;
      v18 = *(v14 + 8);
      v14 += 16;
      v19(v18, "num_valid_descriptors <= num_of_output_descriptors", 50, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_75:
    abort();
  }

LABEL_47:
  a3[1] = 0;
  *a3 = 0;
  a3[2] = 0;
  if (a2)
  {
    goto LABEL_48;
  }

  sub_255B62CB0(a1, &v34);
  if (HIDWORD(v35))
  {
    v27 = v35 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (HIDWORD(v36))
  {
    v29 = v36 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if ((v28 | v30))
  {
    v31 = 0;
  }

  else
  {
    v31 = HIDWORD(v36);
  }

  if (v31 * v37 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v32 = qword_27F7DD608, v33 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_73:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return result;
      }
    }

    else
    {
      v32 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      (*v32)(*(v32 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v32 += 16;
    }

    while (v32 != v33);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  return result;
}

void sub_255B7F3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    *a10 = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B7F420(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 8);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v36 = &unk_2867C5610;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (!v11)
  {
    v14 = *(a2 + 72);
    v37 = *(a2 + 32);
    v38 = 0;
    v39 = *(a2 + 48);
    v40 = *(a2 + 64);
    v41 = v14;
    goto LABEL_8;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(a2 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = *(a2 + 48);
  v40 = *(a2 + 64);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = v10;
  v38 = v11;
  v41 = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
LABEL_8:
  v42 = &unk_2867C5710;
  sub_255B62A60(&v36, &v43);
  v15 = v43;
  v16 = v44;
  v46[0] = &unk_2867C5710;
  v46[1] = v43;
  v46[2] = v44;
  v43 = 0;
  v44 = 0;
  *v47 = v45[0];
  *&v47[14] = *(v45 + 14);
  v48 = 2;
  v58 = -1;
  v49 = &unk_2867C5710;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *&v47[16];
    v18 = *&v47[24];
    v19 = *&v47[28];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v17 = *&v47[16];
    v18 = *&v47[24];
    v19 = *&v47[28];
  }

  v50 = v15;
  v51 = v16;
  v52 = *v47;
  LODWORD(__p) = *&v47[8];
  v54 = v17;
  v55 = v18;
  v56 = v19;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v58 = 2;
    v20 = v60;
    if (v60 < v61)
    {
      goto LABEL_14;
    }

LABEL_18:
    v22 = sub_255B702A8(&v59, &v49);
    goto LABEL_19;
  }

  v58 = 2;
  v20 = v60;
  if (v60 >= v61)
  {
    goto LABEL_18;
  }

LABEL_14:
  *v20 = 0;
  v20[30] = -1;
  v21 = v58;
  if (v58 != -1)
  {
    v62 = v20;
    (off_2867D04C8[v58])(&v62, &v49);
    v20[30] = v21;
  }

  v22 = (v20 + 32);
LABEL_19:
  v60 = v22;
  if (v58 != -1)
  {
    (off_2867D04A8[v58])(&v62, &v49);
  }

  v58 = -1;
  if (v48 != -1)
  {
    (off_2867D04A8[v48])(&v62, v46);
  }

  v48 = -1;
  v23 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  kdebug_trace();
  sub_255BC3020(*(a1 + 16), &v59, a3, a4, &v49);
  kdebug_trace();
  if (v50)
  {
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 0;
    *(a5 + 24) = 0;
  }

  else
  {
    if ((v57 & 1) == 0)
    {
      sub_255A92214();
    }

    sub_255B78CC8(__p, v9, a5);
  }

  if (v57 == 1)
  {
    v25 = __p;
    if (__p)
    {
      v26 = v54;
      v27 = __p;
      if (v54 != __p)
      {
        do
        {
          v28 = v26 - 128;
          v29 = *(v26 - 2);
          if (v29 != -1)
          {
            (off_2867D0508[v29])(v46, v26 - 128);
          }

          *(v26 - 2) = -1;
          v26 -= 128;
        }

        while (v28 != v25);
        v27 = __p;
      }

      v54 = v25;
      operator delete(v27);
    }
  }

  v49 = &unk_2867C51A8;
  v30 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v31 = v59;
    if (!v59)
    {
      return;
    }
  }

  else
  {
    v31 = v59;
    if (!v59)
    {
      return;
    }
  }

  v32 = v60;
  v33 = v31;
  if (v60 != v31)
  {
    do
    {
      v34 = v32 - 32;
      v35 = *(v32 - 2);
      if (v35 != -1)
      {
        (off_2867D04A8[v35])(&v49, v32 - 32);
      }

      *(v32 - 2) = -1;
      v32 -= 32;
    }

    while (v34 != v31);
    v33 = v59;
  }

  v60 = v31;
  operator delete(v33);
}

void sub_255B7F9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_255B696E4(&a39);
  sub_255B69740(&a23);
  sub_255A92504(&a16);
  sub_255A98B3C(&a9);
  sub_255B7FB8C((v39 - 112));
  _Unwind_Resume(a1);
}

void sub_255B7FA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_255B7FA74(&a39);
  sub_255B7FB8C((v39 - 112));
  _Unwind_Resume(a1);
}

void sub_255B7FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A98B3C(&a9);
  sub_255B7FB8C((v9 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_255B7FA74(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      if (v3 != v2)
      {
        do
        {
          v5 = v3 - 128;
          v6 = *(v3 - 8);
          if (v6 != -1)
          {
            (off_2867D0508[v6])(&v9, v3 - 128);
          }

          *(v3 - 8) = -1;
          v3 -= 128;
        }

        while (v5 != v2);
        v4 = *(a1 + 32);
      }

      *(a1 + 40) = v2;
      operator delete(v4);
    }
  }

  *a1 = &unk_2867C51A8;
  v7 = *(a1 + 24);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void **sub_255B7FB8C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 128;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2867D04A8[v6])(&v8, v3 - 128);
        }

        *(v3 - 2) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_255B7FC34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 8);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v36 = &unk_2867C5610;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (!v11)
  {
    v14 = *(a2 + 72);
    v37 = *(a2 + 32);
    v38 = 0;
    v39 = *(a2 + 48);
    v40 = *(a2 + 64);
    v41 = v14;
    goto LABEL_8;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(a2 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = *(a2 + 48);
  v40 = *(a2 + 64);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = v10;
  v38 = v11;
  v41 = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
LABEL_8:
  v42 = &unk_2867C5710;
  sub_255B62A60(&v36, &v43);
  v15 = v43;
  v16 = v44;
  v46[0] = &unk_2867C5710;
  v46[1] = v43;
  v46[2] = v44;
  v43 = 0;
  v44 = 0;
  *v47 = v45[0];
  *&v47[14] = *(v45 + 14);
  v48 = 2;
  v58 = -1;
  v49 = &unk_2867C5710;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *&v47[16];
    v18 = *&v47[24];
    v19 = *&v47[28];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v17 = *&v47[16];
    v18 = *&v47[24];
    v19 = *&v47[28];
  }

  v50 = v15;
  v51 = v16;
  v52 = *v47;
  LODWORD(__p) = *&v47[8];
  v54 = v17;
  v55 = v18;
  v56 = v19;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v58 = 2;
    v20 = v60;
    if (v60 < v61)
    {
      goto LABEL_14;
    }

LABEL_18:
    v22 = sub_255B702A8(&v59, &v49);
    goto LABEL_19;
  }

  v58 = 2;
  v20 = v60;
  if (v60 >= v61)
  {
    goto LABEL_18;
  }

LABEL_14:
  *v20 = 0;
  v20[30] = -1;
  v21 = v58;
  if (v58 != -1)
  {
    v62 = v20;
    (off_2867D04C8[v58])(&v62, &v49);
    v20[30] = v21;
  }

  v22 = (v20 + 32);
LABEL_19:
  v60 = v22;
  if (v58 != -1)
  {
    (off_2867D04A8[v58])(&v62, &v49);
  }

  v58 = -1;
  if (v48 != -1)
  {
    (off_2867D04A8[v48])(&v62, v46);
  }

  v48 = -1;
  v23 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  kdebug_trace();
  sub_255BC3020(*(a1 + 16), &v59, a3, a4, &v49);
  kdebug_trace();
  if (v50)
  {
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 0;
    *(a5 + 24) = 0;
  }

  else
  {
    if ((v57 & 1) == 0)
    {
      sub_255A92214();
    }

    sub_255B79AD0(__p, v9, a5);
  }

  if (v57 == 1)
  {
    v25 = __p;
    if (__p)
    {
      v26 = v54;
      v27 = __p;
      if (v54 != __p)
      {
        do
        {
          v28 = v26 - 128;
          v29 = *(v26 - 2);
          if (v29 != -1)
          {
            (off_2867D0508[v29])(v46, v26 - 128);
          }

          *(v26 - 2) = -1;
          v26 -= 128;
        }

        while (v28 != v25);
        v27 = __p;
      }

      v54 = v25;
      operator delete(v27);
    }
  }

  v49 = &unk_2867C51A8;
  v30 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v31 = v59;
    if (!v59)
    {
      return;
    }
  }

  else
  {
    v31 = v59;
    if (!v59)
    {
      return;
    }
  }

  v32 = v60;
  v33 = v31;
  if (v60 != v31)
  {
    do
    {
      v34 = v32 - 32;
      v35 = *(v32 - 2);
      if (v35 != -1)
      {
        (off_2867D04A8[v35])(&v49, v32 - 32);
      }

      *(v32 - 2) = -1;
      v32 -= 32;
    }

    while (v34 != v31);
    v33 = v59;
  }

  v60 = v31;
  operator delete(v33);
}

void sub_255B801F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_255B696E4(&a39);
  sub_255B69740(&a23);
  sub_255A92504(&a16);
  sub_255A98B3C(&a9);
  sub_255B7FB8C((v39 - 112));
  _Unwind_Resume(a1);
}

void sub_255B8022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_255B7FA74(&a39);
  sub_255B7FB8C((v39 - 112));
  _Unwind_Resume(a1);
}

void sub_255B80264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A98B3C(&a9);
  sub_255B7FB8C((v9 - 112));
  _Unwind_Resume(a1);
}

void sub_255B80288(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_255B9C380(&__p);
  *a2 = 0x700000003;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_255C3FD60;
  *(a2 + 32) = 0x7475706E69;
  *(a2 + 55) = 5;
  *(a2 + 56) = 0x74757074756FLL;
  *(a2 + 79) = 6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018((a2 + 80), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v4 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a2 + 104) = 256;
    *(a2 + 106) = a1;
    *(a2 + 112) = 0;
    *(a2 + 136) = 0;
    if (v4 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a2 + 80) = __p;
    *(a2 + 104) = 256;
    *(a2 + 106) = a1;
    *(a2 + 112) = 0;
    *(a2 + 136) = 0;
  }
}

void sub_255B80374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
    if ((*(v15 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v15 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v15 + 32));
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_255B803C8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 10;
  strcpy(__p, "lf-640x640");
  v3 = 0;
  v4 = 0;
  v2 = 0;
  operator new();
}

void sub_255B80C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (*(v39 + 119) < 0)
  {
    operator delete(*(v39 + 96));
  }

  if (a39 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 + 95) < 0)
  {
    operator delete(*(v39 + 72));
    if ((*(v39 + 71) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(v39 + 47) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v39 + 71) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(v39 + 48));
  if ((*(v39 + 47) & 0x80000000) == 0)
  {
LABEL_10:
    operator delete(v40);
    sub_255B60548(&a12);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v39 + 24));
  goto LABEL_10;
}

void sub_255B80CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B60548(va);
  _Unwind_Resume(a1);
}

void sub_255B80CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v35 = STACK[0x3F8];
  if (STACK[0x3F8])
  {
    STACK[0x400] = v35;
    operator delete(v35);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*v33);
  }

  do
  {
    v33 -= 10;
    sub_255B629AC(v33);
  }

  while (v33 != &a33);
  _Unwind_Resume(a1);
}

void sub_255B80E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B80E38);
}

void sub_255B80E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_255B854FC(&a17);
  sub_255B629AC(v34);
  sub_255B629AC(v35);
  sub_255B629AC(v39);
  sub_255B629AC(v38);
  sub_255B629AC(a10);
  sub_255B629AC(a11);
  sub_255B629AC(a9);
  sub_255B629AC(v33);
  sub_255B629AC(v37);
  sub_255B629AC(v36);
  sub_255B629AC(&a33);
  _Unwind_Resume(a1);
}

void sub_255B80ED4(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_255A82C84(__p);
  sub_255BAEB68(__p, 0xDu);
  if (v7 == 1 && SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  sub_255B9D430(__p);
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_255C3FD60;
  *(a2 + 32) = 0x7475706E69;
  *(a2 + 55) = 5;
  *(a2 + 56) = 0x74757074756FLL;
  *(a2 + 79) = 6;
  if (SHIBYTE(v6) < 0)
  {
    sub_255A7E018((a2 + 80), __p[0], __p[1]);
    v4 = SHIBYTE(v6);
    *(a2 + 104) = 256;
    *(a2 + 106) = a1;
    *(a2 + 112) = 0;
    *(a2 + 136) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a2 + 80) = *__p;
    *(a2 + 96) = v6;
    *(a2 + 104) = 256;
    *(a2 + 106) = a1;
    *(a2 + 112) = 0;
    *(a2 + 136) = 0;
  }
}

void sub_255B8100C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
  }

  if (*(v15 + 55) < 0)
  {
    operator delete(*(v15 + 32));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B8105C(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_255B9DF4C(__p);
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_255C3FD60;
  strcpy((a2 + 32), "input_patches");
  *(a2 + 46) = 0;
  *(a2 + 55) = 13;
  *(a2 + 56) = 0x74757074756FLL;
  *(a2 + 79) = 6;
  if (SHIBYTE(v6) < 0)
  {
    sub_255A7E018((a2 + 80), __p[0], __p[1]);
    v4 = v6 < 0;
  }

  else
  {
    v4 = 0;
    *(a2 + 80) = *__p;
    *(a2 + 96) = v6;
  }

  *(a2 + 104) = 256;
  *(a2 + 106) = a1;
  strcpy((a2 + 112), "input_keypoints");
  *(a2 + 135) = 271;
  if (v4)
  {
    operator delete(__p[0]);
  }
}

void sub_255B81168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
    if ((*(v15 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v15 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v15 + 32));
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_255B811BC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 80;
  v3 = *(a1 + 103);
  if ((v3 & 0x80u) != 0)
  {
    v2 = *(a1 + 80);
    v3 = *(a1 + 88);
  }

  if (v3 >= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3;
  }

  if (v3 >= v4)
  {
    if (v3 < 7 || memcmp((v2 + v3 - v4), ".bundle", v4))
    {
      LOBYTE(v10) = 0;
      v11 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9[0] = &unk_2867CE598;
      sub_255B8BB34(v15, a1, &v10, v9);
      sub_255BA2344(v15);
    }

    LOBYTE(v13) = 0;
    v14 = 0;
    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    v12[0] = &unk_2867CE598;
    v12[1] = v8;
    v12[2] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    sub_255B8C1E4(v15, a1, &v13, v12);
    sub_255A819C0(v15);
  }

  sub_255A93C3C("string_view::substr");
}

void sub_255B81F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 + 224) == 1 && *(v35 + 223) < 0)
  {
    operator delete(*v38);
  }

  if (*(v35 + 176) == 1 && *(v35 + 175) < 0)
  {
    operator delete(*v37);
  }

  *v39 = v36;
  sub_255A829E0(v35 + 32);
  std::__shared_weak_count::~__shared_weak_count(v35);
  operator delete(v42);
  sub_255B5C724((v40 - 120));
  sub_255A81798(&a33);
  sub_255A7F5A0(&a20);
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255B82184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_255A7F5A0(&a9);
  if (a15 == 1)
  {
    JUMPOUT(0x255B8216CLL);
  }

  JUMPOUT(0x255B8217CLL);
}

uint64_t sub_255B821A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = *MEMORY[0x277D85DE8];
  v72 = a5;
  v11 = *(a2 + 8);
  if (v11 > (*(**a1 + 32))(*a1))
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 255, "patches.NumberOfUsedPatches() <= model->BatchSize()", 0x33uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        qword_27F7DD620(*algn_27F7DD628, "patches.NumberOfUsedPatches() <= model->BatchSize()", 51, &unk_255C2500B, 0);
        goto LABEL_10;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_83;
      }
    }

    do
    {
      v15 = *v12;
      v14 = *(v12 + 8);
      v12 += 16;
      v15(v14, "patches.NumberOfUsedPatches() <= model->BatchSize()", 51, &unk_255C2500B, 0);
    }

    while (v12 != v13);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_255B84098(&v59, a2);
  v16 = v60;
  v17 = v61;
  kdebug_trace();
  v71 = 0;
  v73[0] = &unk_2867D05D0;
  v73[1] = &v71;
  v73[2] = 0;
  v74 = v73;
  v18 = (*(**a1 + 32))();
  v69[0] = a1;
  v69[1] = &v72;
  v70 = v17;
  v19 = *(a2 + 16);
  if (v19 != (*(**a1 + 32))())
  {
    v59 = &unk_2867C5610;
    v21 = *(a2 + 32);
    v22 = *(a2 + 40);
    if (!v22)
    {
      v27 = *(a2 + 72);
      v60 = *(a2 + 32);
      v61 = 0;
      v62 = *(a2 + 48);
      v63 = *(a2 + 64);
      v64 = v27;
      v25 = HIDWORD(v62);
      goto LABEL_22;
    }

    p_shared_owners = &v22->__shared_owners_;
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = *(a2 + 72);
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v62 = *(a2 + 48);
    v63 = *(a2 + 64);
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v60 = v21;
    v61 = v22;
    v64 = v24;
    if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_16:
        v25 = HIDWORD(v62);
        v26 = v61;
        if (!v61)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v25 = HIDWORD(v62);
    v26 = v61;
    if (!v61)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      v53 = v18;
      if (v25 >= v17)
      {
LABEL_31:
        v59 = &unk_2867C5610;
        v30 = *(a2 + 32);
        v31 = *(a2 + 40);
        if (!v31)
        {
          v35 = *(a2 + 72);
          v60 = *(a2 + 32);
          v61 = 0;
          v62 = *(a2 + 48);
          v63 = *(a2 + 64);
          v64 = v35;
          v34 = v60;
          if (!v60)
          {
            goto LABEL_51;
          }

          goto LABEL_42;
        }

        v32 = &v31->__shared_owners_;
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        v33 = *(a2 + 72);
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        v62 = *(a2 + 48);
        v63 = *(a2 + 64);
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        v60 = v30;
        v61 = v31;
        v64 = v33;
        if (atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (atomic_fetch_add(v32, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_34;
          }
        }

        else
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
          if (atomic_fetch_add(v32, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_34:
            v34 = v60;
            if (!v60)
            {
              goto LABEL_51;
            }

            goto LABEL_42;
          }
        }

        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        v34 = v60;
        if (!v60)
        {
          goto LABEL_51;
        }

LABEL_42:
        v36 = v61;
        if (!v61)
        {
          goto LABEL_48;
        }

        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        if (atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v34 = v60;
          v37 = v61;
          if (!v61)
          {
            goto LABEL_48;
          }
        }

        else
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
          v34 = v60;
          v37 = v61;
          if (!v61)
          {
            goto LABEL_48;
          }
        }

        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v38 = v34;
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
          v34 = v38;
          if (HIBYTE(v64) == 1)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        }

LABEL_48:
        if (HIBYTE(v64) == 1)
        {
LABEL_49:
          (*(*v34 + 96))(&v54);
LABEL_52:
          v39 = v17 == 0;
          if (!DWORD2(v62))
          {
            v39 = 1;
          }

          v40 = HIDWORD(v63) << 32;
          if (v39)
          {
            v40 = 0;
          }

          if (DWORD2(v62))
          {
            v41 = v40 + 1;
          }

          else
          {
            v41 = v40;
          }

          v42 = *a2;
          v43 = v62;
          v57[0] = &unk_2867C5610;
          v55 = 0;
          v56 = 0;
          if (v39)
          {
            v44 = 0;
          }

          else
          {
            v44 = DWORD2(v62) | (v17 << 32);
          }

          if (HIDWORD(v40) * HIDWORD(v44) != -1)
          {
LABEL_71:
            v57[1] = 0;
            v57[2] = 0;
            *&v58 = v43;
            *(&v58 + 1) = v44;
            v65[0] = v42;
            v65[1] = v17;
            v65[2] = v17;
            v65[3] = &unk_2867C5610;
            v65[4] = 0;
            v65[5] = 0;
            v67 = v41;
            v66 = v58;
            v68 = 0;
            v47 = v54;
            *&v54 = 0;
            if (v47)
            {
              (*(*v47 + 8))(v47);
            }

            v48 = v61;
            v49 = v53;
            if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v48->__on_zero_shared)(v48);
              std::__shared_weak_count::__release_weak(v48);
              v49 = v53;
            }

            LOWORD(v57[0]) = 0;
            sub_255B901F0(&v59, v16, v49);
          }

          sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
          v52 = v16;
          if (byte_27F7DD630 == 1)
          {
            if (byte_27F7DD638 != 1 || (v46 = qword_27F7DD608, v45 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
            {
LABEL_70:
              qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
              v16 = v52;
              goto LABEL_71;
            }
          }

          else
          {
            v46 = qword_27F7DD608;
            v45 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_83;
            }
          }

          do
          {
            (*v46)(*(v46 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
            v46 += 16;
          }

          while (v46 != v45);
          if (byte_27F7DD630)
          {
            goto LABEL_70;
          }

LABEL_83:
          abort();
        }

LABEL_51:
        *&v54 = 0;
        goto LABEL_52;
      }

LABEL_23:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/PatchCropping/include/LearnedFeatures/PatchCropping/ImagePatches.h", 215, "this->Patches().Height() >= batch_start + num_patches", 0x35uLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_30:
          qword_27F7DD620(*algn_27F7DD628, "this->Patches().Height() >= batch_start + num_patches", 53, &unk_255C2500B, 0);
          goto LABEL_31;
        }
      }

      else
      {
        v28 = qword_27F7DD608;
        v29 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_83;
        }
      }

      do
      {
        (*v28)(*(v28 + 8), "this->Patches().Height() >= batch_start + num_patches", 53, &unk_255C2500B, 0);
        v28 += 16;
      }

      while (v28 != v29);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_30;
    }

LABEL_22:
    v53 = v18;
    if (v25 >= v17)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  sub_255B84324(a6, v69, a2, a3, a4);
  v65[0] = 0;
  v57[0] = v65;
  v20 = *(a6 + 24);
  if (v20 == -1)
  {
    sub_255A7C284();
  }

  v59 = v57;
  (off_2867D08B8[v20])(&v59, a6);
  v71 = v65[0];
  if (!v74)
  {
    sub_255A93CCC();
  }

  (*(*v74 + 48))(v74);
  result = v74;
  if (v74 == v73)
  {
    result = (*(*v74 + 32))(v74);
  }

  else if (v74)
  {
    result = (*(*v74 + 40))();
  }

  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255B83E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_255AEF098(v60 - 192);
  sub_255A98B3C(&a17);
  sub_255B84574(&a27);
  sub_255B84574(&a37);
  sub_255B85658(&a48);
  sub_255B84574(&a60);
  sub_255B856EC(v60 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_255B84098(uint64_t a1, uint64_t a2)
{
  sub_255B59A2C(a2 + 24, &v16);
  if (*(a2 + 72) == 1 && *(a2 + 48))
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v6;
      }
    }

    (*(*v4 + 88))(v4, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
  }

  v7 = *a2;
  v8 = *(a2 + 68);
  v9 = *(a2 + 64) | (v7 << 32);
  if (*a2)
  {
    v10 = *(a2 + 16);
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 16))
  {
    v11 = v7 == 0;
    *a2;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 | (*a2 << 32);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  *(a1 + 20) = v9;
  *(a1 + 28) = v8;
  if (v8 * v10 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_28;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v13 += 16;
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_28:
    abort();
  }

LABEL_25:
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B842E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B84324(uint64_t a1, uint64_t **a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (a5)
  {
    v6 = *(a2 + 4);
    if (a5 == v6)
    {
      v7 = *a2[1];
      v8 = *(***a2 + 64);
      v9 = **a2;

      v8(v9, a3, a4, a5, v7);
    }

    else
    {
      if (v6)
      {
        operator new();
      }

      memmove(0, a4, 8 * a5);
      (*(***a2 + 64))(**a2, a3, 0, 0, *a2[1]);
    }
  }

  else
  {
    v10 = *a2[1];
    v11 = *(***a2 + 56);
    v12 = **a2;

    v11(v12, a3, v10);
  }
}

void sub_255B8455C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B84574(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_255B845EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v129 = *MEMORY[0x277D85DE8];
  sub_255B84098(v83, a2);
  v12 = v84;
  if (a4 != v84)
  {
    v54 = a7;
    v13 = a6;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionUtil.cpp", 334, "keypoints.size() == n", 0x15uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        qword_27F7DD620(*algn_27F7DD628, "keypoints.size() == n", 21, &unk_255C2500B, 0);
        a6 = v13;
        a7 = v54;
        goto LABEL_10;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_81;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "keypoints.size() == n", 21, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_9;
    }

LABEL_81:
    abort();
  }

LABEL_10:
  v18 = *(a2 + 8);
  LODWORD(v97) = 65;
  LOBYTE(v106[0]) = 0;
  v113 = 0;
  v85 = xmmword_255C3FD70;
  *v86 = v12;
  LOBYTE(v93) = 0;
  BYTE4(v94) = 0;
  sub_255B9F2F0(&v71, a3, &v85, &v93, &v97, v106);
  if (v113 == 1)
  {
    v19 = v107;
    if (v107)
    {
      if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }
    }
  }

  kdebug_trace();
  v57 = &unk_2867C5610;
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  if (!v21)
  {
    v24 = *(a2 + 72);
    v58 = *(a2 + 32);
    v59 = 0;
    v60 = *(a2 + 48);
    v61 = *(a2 + 64);
    v62 = v24;
    goto LABEL_21;
  }

  p_shared_owners = &v21->__shared_owners_;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = *(a2 + 72);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v60 = *(a2 + 48);
  v61 = *(a2 + 64);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v58 = v20;
  v59 = v21;
  v62 = v23;
  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }
  }

  else
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
LABEL_21:
  *&v85 = &unk_2867C5710;
  sub_255B62A60(&v57, &v85 + 8);
  v25 = *(&v85 + 1);
  v26 = *v86;
  *&v93 = &unk_2867C5710;
  *(&v93 + 1) = *(&v85 + 1);
  v94 = *v86;
  *v95 = *&v86[8];
  *&v95[14] = *&v86[22];
  v96 = 2;
  v114 = -1;
  v106[0] = &unk_2867C5710;
  if (*v86)
  {
    atomic_fetch_add_explicit((*v86 + 8), 1uLL, memory_order_relaxed);
    v27 = *&v95[16];
    v28 = *&v95[24];
    v29 = *&v95[28];
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v27 = *&v95[16];
    v28 = *&v95[24];
    v29 = *&v95[28];
  }

  v106[1] = v25;
  v107 = v26;
  v108 = *v95;
  v109 = *&v95[8];
  v110 = v27;
  v111 = v28;
  v112 = v29;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v114 = 2;
  v97 = v71;
  v98 = v72;
  v99 = v73;
  v100 = v74;
  v105 = 0;
  if (v82 == 1)
  {
    v101 = &unk_2867C5710;
    v30 = v75;
    v31 = v76;
    if (v76)
    {
      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      v32 = v79;
      v33 = v80;
      v34 = v81;
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v32 = v79;
      v33 = v80;
      v34 = v81;
    }

    v102 = v30;
    v103 = v31;
    *v104 = v77;
    *&v104[8] = v78;
    *&v104[16] = v32;
    *&v104[24] = v33;
    *&v104[28] = v34;
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
    }

    v85 = v97;
    *v86 = v98;
    *&v86[16] = v99;
    *&v86[32] = v100;
    v35 = v102;
    v36 = v103;
    v87 = &unk_2867C5710;
    v88 = v102;
    v89 = v103;
    *v90 = *v104;
    *&v90[14] = *&v104[14];
    v91 = 1;
    v92 = 1;
    v128 = -1;
    v115 = v97;
    v116 = v98;
    v117 = v99;
    v118 = v100;
    v127 = 0;
    v119 = &unk_2867C5710;
    if (v103)
    {
      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *&v90[16];
      v38 = *&v90[24];
      v39 = *&v90[28];
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v37 = *&v90[16];
      v38 = *&v90[24];
      v39 = *&v90[28];
    }

    v120 = v35;
    v121 = v36;
    v122 = *v90;
    v123 = *&v90[8];
    v124 = v37;
    v125 = v38;
    v126 = v39;
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }

    v127 = 1;
  }

  else
  {
    v85 = v71;
    *v86 = v72;
    *&v86[16] = v73;
    *&v86[32] = v74;
    LOBYTE(v87) = 0;
    v91 = 0;
    v92 = 1;
    v128 = -1;
    v115 = v71;
    v116 = v72;
    v117 = v73;
    v118 = v74;
    LOBYTE(v119) = 0;
    v127 = 0;
  }

  v128 = 1;
  sub_255B86BD4(&__p, v106, 2uLL);
  if (v128 != -1)
  {
    (off_2867D04A8[v128])(&v97, &v115);
  }

  v128 = -1;
  if (v114 != -1)
  {
    (off_2867D04A8[v114])(&v97, v106);
  }

  v114 = -1;
  if (v92 != -1)
  {
    (off_2867D04A8[v92])(&v97, &v85);
  }

  if (v96 != -1)
  {
    (off_2867D04A8[v96])(&v85, &v93);
  }

  sub_255BC3020(*(a1 + 16), &__p, a5, a6, &v65);
  v40 = __p;
  if (__p)
  {
    v41 = v64;
    v42 = __p;
    if (v64 != __p)
    {
      do
      {
        v43 = v41 - 128;
        v44 = *(v41 - 2);
        if (v44 != -1)
        {
          (off_2867D04A8[v44])(v106, v41 - 128);
        }

        *(v41 - 2) = -1;
        v41 -= 128;
      }

      while (v43 != v40);
      v42 = __p;
    }

    v64 = v40;
    operator delete(v42);
  }

  v45 = v59;
  if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  kdebug_trace();
  if (v66)
  {
    *(a7 + 32) = 0;
    *(a7 + 40) = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    *a7 = 0;
    *(a7 + 24) = 0;
  }

  else
  {
    sub_255B7A274(v68, v18, a7);
  }

  if (v70 == 1)
  {
    v46 = v68;
    if (v68)
    {
      v47 = v69;
      v48 = v68;
      if (v69 != v68)
      {
        do
        {
          v49 = v47 - 128;
          v50 = *(v47 - 2);
          if (v50 != -1)
          {
            (off_2867D0508[v50])(v106, v47 - 128);
          }

          *(v47 - 2) = -1;
          v47 -= 128;
        }

        while (v49 != v46);
        v48 = v68;
      }

      v69 = v46;
      operator delete(v48);
    }
  }

  v65 = &unk_2867C51A8;
  v51 = v67;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
    if (v82 != 1)
    {
      goto LABEL_80;
    }
  }

  else if (v82 != 1)
  {
    goto LABEL_80;
  }

  v52 = v76;
  if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

LABEL_80:
  v53 = *MEMORY[0x277D85DE8];
}

void sub_255B84FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_255B7FA74(&a22);
  sub_255B7985C(&a30);
  _Unwind_Resume(a1);
}

void sub_255B84FFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_255A7B4D4(a1);
}

uint64_t sub_255B850C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = v4 - 128;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_2867D04A8[v7])(&v9, v4 - 128);
        }

        *(v4 - 8) = -1;
        v4 -= 128;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void sub_255B85160(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 48) = *(a2 + 12);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    v6 = *(a2 + 8);
    v7 = *(a2 + 9);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
    }

    *(v2 + 64) = v6;
    *(v2 + 72) = v7;
    v11 = *(a2 + 10);
    *(v2 + 88) = *(a2 + 22);
    *(v2 + 80) = v11;
    *(v2 + 96) = v8;
    *(v2 + 104) = v9;
    *(v2 + 108) = v10;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    *(v2 + 112) = 1;
  }
}

void sub_255B8526C(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 48) = *(a2 + 12);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    v6 = *(a2 + 8);
    v7 = *(a2 + 9);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
    }

    *(v2 + 64) = v6;
    *(v2 + 72) = v7;
    v11 = *(a2 + 10);
    *(v2 + 88) = *(a2 + 22);
    *(v2 + 80) = v11;
    *(v2 + 96) = v8;
    *(v2 + 104) = v9;
    *(v2 + 108) = v10;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    *(v2 + 112) = 1;
  }
}

void sub_255B85378(void *a1, uint64_t a2)
{
  v2 = *a1;
  **a1 = &unk_2867C5710;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
  }

  v2[1] = v3;
  v2[2] = v4;
  v8 = *(a2 + 24);
  *(v2 + 8) = *(a2 + 32);
  v2[3] = v8;
  v2[5] = v5;
  *(v2 + 12) = v6;
  *(v2 + 26) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void **sub_255B85464(void **result, uint64_t a2)
{
  v2 = *result;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *v2 = &unk_2867C8750;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_255B854A0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867D04A8[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

uint64_t sub_255B854FC(uint64_t a1)
{
  if (*(a1 + 120) != 1)
  {
    if (*(a1 + 112) != 1)
    {
      return a1;
    }

    if (*(a1 + 104) == 1)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }
    }

    if (*(a1 + 40) != 1 || (*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    v3 = *(a1 + 16);
    goto LABEL_29;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (v2[95] < 0)
      {
        operator delete(*(v2 + 9));
        if (v2[64] == 1)
        {
LABEL_10:
          v6 = *(v2 + 5);
          if (v6)
          {
            v7 = *(v2 + 6);
            v8 = *(v2 + 5);
            if (v7 != v6)
            {
              do
              {
                v9 = *(v7 - 1);
                v7 -= 3;
                if (v9 < 0)
                {
                  operator delete(*v7);
                }
              }

              while (v7 != v6);
              v8 = *(v2 + 5);
            }

            *(v2 + 6) = v6;
            operator delete(v8);
          }
        }
      }

      else if (v2[64] == 1)
      {
        goto LABEL_10;
      }

      v10 = *(v2 + 2);
      if (v10)
      {
        *(v2 + 3) = v10;
        operator delete(v10);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (!v3)
  {
    return a1;
  }

LABEL_29:
  operator delete(v3);
  return a1;
}

uint64_t sub_255B85658(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    (*(a1 + 88))();
  }

  v3 = *(a1 + 40);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_255B856EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_255A93CCC();
  }

  (*(*v2 + 48))(v2);
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

float sub_255B857B0(_DWORD *a1, float *a2, _BYTE *a3)
{
  if (a1[8])
  {
    v3 = 0;
    do
    {
      v4 = a2;
      v5 = a3;
      if (a1[5])
      {
        v6 = 0;
        v4 = a2;
        v5 = a3;
        do
        {
          v7 = v5;
          v8 = v4;
          if (a1[2])
          {
            v9 = 0;
            v8 = v4;
            v7 = v5;
            do
            {
              *v7 = *v8;
              v8 += a1[3];
              v7 += a1[4];
              ++v9;
            }

            while (v9 < a1[2]);
          }

          *v7 = *v8;
          v4 += a1[6];
          v5 += a1[7];
          ++v6;
        }

        while (v6 < a1[5]);
      }

      if (a1[2])
      {
        v10 = 0;
        do
        {
          *v5 = *v4;
          v4 += a1[3];
          v5 += a1[4];
          ++v10;
        }

        while (v10 < a1[2]);
      }

      *v5 = *v4;
      a2 += a1[9];
      a3 += a1[10];
      ++v3;
    }

    while (v3 < a1[8]);
  }

  if (a1[5])
  {
    v11 = 0;
    do
    {
      v12 = a3;
      v13 = a2;
      if (a1[2])
      {
        v14 = 0;
        v13 = a2;
        v12 = a3;
        do
        {
          *v12 = *v13;
          v13 += a1[3];
          v12 += a1[4];
          ++v14;
        }

        while (v14 < a1[2]);
      }

      *v12 = *v13;
      a2 += a1[6];
      a3 += a1[7];
      ++v11;
    }

    while (v11 < a1[5]);
  }

  if (a1[2])
  {
    v15 = 0;
    do
    {
      *a3 = *a2;
      a2 += a1[3];
      a3 += a1[4];
      ++v15;
    }

    while (v15 < a1[2]);
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

__int16 sub_255B85974@<H0>(_DWORD *a1@<X0>, short float *a2@<X1>, _BYTE *a3@<X2>)
{
  if (a1[8])
  {
    v3 = 0;
    do
    {
      v4 = a2;
      v5 = a3;
      if (a1[5])
      {
        v6 = 0;
        v4 = a2;
        v5 = a3;
        do
        {
          v7 = v5;
          v8 = v4;
          if (a1[2])
          {
            v9 = 0;
            v8 = v4;
            v7 = v5;
            do
            {
              *v7 = *v8;
              v8 += a1[3];
              v7 += a1[4];
              ++v9;
            }

            while (v9 < a1[2]);
          }

          *v7 = *v8;
          v4 += a1[6];
          v5 += a1[7];
          ++v6;
        }

        while (v6 < a1[5]);
      }

      if (a1[2])
      {
        v10 = 0;
        do
        {
          *v5 = *v4;
          v4 += a1[3];
          v5 += a1[4];
          ++v10;
        }

        while (v10 < a1[2]);
      }

      *v5 = *v4;
      a2 += a1[9];
      a3 += a1[10];
      ++v3;
    }

    while (v3 < a1[8]);
  }

  if (a1[5])
  {
    v11 = 0;
    do
    {
      v12 = a3;
      v13 = a2;
      if (a1[2])
      {
        v14 = 0;
        v13 = a2;
        v12 = a3;
        do
        {
          *v12 = *v13;
          v13 += a1[3];
          v12 += a1[4];
          ++v14;
        }

        while (v14 < a1[2]);
      }

      *v12 = *v13;
      a2 += a1[6];
      a3 += a1[7];
      ++v11;
    }

    while (v11 < a1[5]);
  }

  if (a1[2])
  {
    v15 = 0;
    do
    {
      *a3 = *a2;
      a2 += a1[3];
      a3 += a1[4];
      ++v15;
    }

    while (v15 < a1[2]);
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

float sub_255B85B38(_DWORD *a1, _BYTE *a2, float *a3, float a4)
{
  v4 = a1[8];
  v5 = a1[5];
  if (!v4)
  {
    v6 = a1[2];
    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_35;
      }

      v27 = a1[3];
      v28 = a1[4];
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  v6 = a1[2];
  v7 = a1[9];
  v8 = a1[10];
  if (v5)
  {
    v9 = a1[6];
    v10 = a1[7];
    if (!v6)
    {
      v37 = 4 * v8;
      do
      {
        v38 = a3;
        v39 = v5;
        v40 = a2;
        do
        {
          LOBYTE(a4) = *v40;
          a4 = LODWORD(a4);
          *v38 = a4;
          v40 += v9;
          v38 += v10;
          --v39;
        }

        while (v39);
        LOBYTE(a4) = *v40;
        a4 = LODWORD(a4);
        *v38 = a4;
        a2 += v7;
        a3 = (a3 + v37);
        ++v6;
      }

      while (v6 != v4);
      do
      {
LABEL_32:
        LOBYTE(a4) = *a2;
        a4 = LODWORD(a4);
        *a3 = a4;
        a2 += v9;
        a3 += v10;
        --v5;
      }

      while (v5);
      goto LABEL_35;
    }

    v11 = 0;
    v12 = a1[3];
    v13 = 4 * v8;
    v14 = v10;
    v15 = 4 * a1[4];
    v16 = &a3[v14];
    do
    {
      v17 = 0;
      v18 = v16;
      v19 = a3;
      v20 = a2;
      do
      {
        v21 = v18;
        v22 = v19;
        v23 = v6;
        v24 = v20;
        do
        {
          LOBYTE(a4) = *v24;
          a4 = LODWORD(a4);
          *v22 = a4;
          v24 += v12;
          v22 = (v22 + v15);
          --v23;
        }

        while (v23);
        LOBYTE(a4) = *v24;
        a4 = LODWORD(a4);
        *v22 = a4;
        v20 += v9;
        v19 = (v19 + v14 * 4);
        ++v17;
        v18 = &v21[v14];
      }

      while (v17 != v5);
      v25 = v6;
      do
      {
        LOBYTE(a4) = *v20;
        a4 = LODWORD(a4);
        *v21 = a4;
        v20 += v12;
        v21 = (v21 + v15);
        --v25;
      }

      while (v25);
      LOBYTE(a4) = *v20;
      a4 = LODWORD(a4);
      *v21 = a4;
      a2 += v7;
      a3 = (a3 + v13);
      ++v11;
      v16 = (v16 + v13);
    }

    while (v11 != v4);
LABEL_12:
    v9 = a1[6];
    v10 = a1[7];
    if (v6)
    {
      v26 = 0;
      v27 = a1[3];
      v28 = a1[4];
      v29 = 4 * v10;
      do
      {
        v30 = a3;
        v31 = v6;
        v32 = a2;
        do
        {
          LOBYTE(a4) = *v32;
          a4 = LODWORD(a4);
          *v30 = a4;
          v32 += v27;
          v30 += v28;
          --v31;
        }

        while (v31);
        LOBYTE(a4) = *v32;
        a4 = LODWORD(a4);
        *v30 = a4;
        a2 += v9;
        a3 = (a3 + v29);
        ++v26;
      }

      while (v26 != v5);
      do
      {
LABEL_26:
        LOBYTE(a4) = *a2;
        a4 = LODWORD(a4);
        *a3 = a4;
        a2 += v27;
        a3 += v28;
        --v6;
      }

      while (v6);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (v6)
  {
    v33 = 0;
    v27 = a1[3];
    v28 = a1[4];
    do
    {
      v34 = a3;
      v35 = v6;
      v36 = a2;
      do
      {
        LOBYTE(a4) = *v36;
        a4 = LODWORD(a4);
        *v34 = a4;
        v36 += v27;
        v34 += v28;
        --v35;
      }

      while (v35);
      LOBYTE(a4) = *v36;
      a4 = LODWORD(a4);
      *v34 = a4;
      a2 += v7;
      a3 += v8;
      ++v33;
    }

    while (v33 != v4);
    goto LABEL_26;
  }

  do
  {
    LOBYTE(a4) = *a2;
    a4 = LODWORD(a4);
    *a3 = a4;
    a2 += v7;
    a3 += v8;
    --v4;
  }

  while (v4);
LABEL_35:
  LOBYTE(a4) = *a2;
  result = LODWORD(a4);
  *a3 = result;
  return result;
}

float sub_255B85DC4(_DWORD *a1, __int16 *a2, _DWORD *a3)
{
  v3 = a1[8];
  v4 = a1[5];
  if (!v3)
  {
    v5 = a1[2];
    if (!v4)
    {
      if (!v5)
      {
        goto LABEL_34;
      }

      v44 = a1[3];
      v45 = a1[4];
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  v5 = a1[2];
  v6 = a1[9];
  v7 = a1[10];
  if (v4)
  {
    v8 = a1[6];
    v9 = a1[7];
    if (!v5)
    {
      do
      {
        v65 = a3;
        v66 = a2;
        v67 = v4;
        do
        {
          _H0 = *v66;
          __asm { FCVT            S0, H0 }

          *v65 = _S0;
          v66 += v8;
          v65 += v9;
          --v67;
        }

        while (v67);
        _H0 = *v66;
        __asm { FCVT            S0, H0 }

        *v65 = _S0;
        a2 += v6;
        a3 += v7;
        ++v5;
      }

      while (v5 != v3);
      do
      {
LABEL_31:
        _H0 = *a2;
        __asm { FCVT            S0, H0 }

        *a3 = _S0;
        a2 += v8;
        a3 += v9;
        --v4;
      }

      while (v4);
      goto LABEL_34;
    }

    v10 = 0;
    v11 = 2 * v6;
    v12 = v8;
    v13 = 2 * a1[3];
    v14 = 4 * v7;
    v15 = v9;
    v16 = 4 * a1[4];
    v17 = &a2[v12];
    v18 = &a3[v15];
    do
    {
      v19 = 0;
      v20 = v18;
      v21 = v17;
      v22 = a3;
      v23 = a2;
      do
      {
        v24 = v21;
        v25 = v20;
        v26 = v22;
        v27 = v23;
        v28 = v5;
        do
        {
          _H0 = *v27;
          __asm { FCVT            S0, H0 }

          *v26 = _S0;
          v27 = (v27 + v13);
          v26 = (v26 + v16);
          --v28;
        }

        while (v28);
        _H0 = *v27;
        __asm { FCVT            S0, H0 }

        *v26 = _S0;
        v23 = (v23 + v12 * 2);
        v22 = (v22 + v15 * 4);
        ++v19;
        v21 = &v24[v12];
        v20 = &v25[v15];
      }

      while (v19 != v4);
      v37 = v5;
      do
      {
        _H0 = *v24;
        __asm { FCVT            S0, H0 }

        *v25 = _S0;
        v24 = (v24 + v13);
        v25 = (v25 + v16);
        --v37;
      }

      while (v37);
      _H0 = *v24;
      __asm { FCVT            S0, H0 }

      *v25 = _S0;
      a2 = (a2 + v11);
      a3 = (a3 + v14);
      ++v10;
      v17 = (v17 + v11);
      v18 = (v18 + v14);
    }

    while (v10 != v3);
LABEL_12:
    v8 = a1[6];
    v9 = a1[7];
    if (v5)
    {
      v42 = 0;
      v43 = 2 * v8;
      v44 = a1[3];
      v45 = a1[4];
      do
      {
        v46 = a3;
        v47 = a2;
        v48 = v5;
        do
        {
          _H0 = *v47;
          __asm { FCVT            S0, H0 }

          *v46 = _S0;
          v47 += v44;
          v46 += v45;
          --v48;
        }

        while (v48);
        _H0 = *v47;
        __asm { FCVT            S0, H0 }

        *v46 = _S0;
        a2 = (a2 + v43);
        a3 += v9;
        ++v42;
      }

      while (v42 != v4);
      do
      {
LABEL_26:
        _H0 = *a2;
        __asm { FCVT            S0, H0 }

        *a3 = _S0;
        a2 += v44;
        a3 += v45;
        --v5;
      }

      while (v5);
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v5)
  {
    v53 = 0;
    v54 = 2 * v6;
    v44 = a1[3];
    v45 = a1[4];
    v55 = 4 * v7;
    do
    {
      v56 = a3;
      v57 = a2;
      v58 = v5;
      do
      {
        _H0 = *v57;
        __asm { FCVT            S0, H0 }

        *v56 = _S0;
        v57 += v44;
        v56 += v45;
        --v58;
      }

      while (v58);
      _H0 = *v57;
      __asm { FCVT            S0, H0 }

      *v56 = _S0;
      a2 = (a2 + v54);
      a3 = (a3 + v55);
      ++v53;
    }

    while (v53 != v3);
    goto LABEL_26;
  }

  do
  {
    _H0 = *a2;
    __asm { FCVT            S0, H0 }

    *a3 = _S0;
    a2 += v6;
    a3 += v7;
    --v3;
  }

  while (v3);
LABEL_34:
  _H0 = *a2;
  __asm { FCVT            S0, H0 }

  *a3 = result;
  return result;
}

void sub_255B860BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867D0530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B86158(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867D0580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

__n128 sub_255B86248(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867D05D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255B862B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature21DescriptorsForPatchesENS3_10shared_ptrINS6_16IDescriptorModelEEERKNS5_2pc16ImagePatchesViewIKhEENS3_4spanIKNS0_4math6VectorIfLj2EEELm18446744073709551615EEEPvE3$_0JEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature21DescriptorsForPatchesENS3_10shared_ptrINS6_16IDescriptorModelEEERKNS5_2pc16ImagePatchesViewIKhEENS3_4spanIKNS0_4math6VectorIfLj2EEELm18446744073709551615EEEPvE3$_0JEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature21DescriptorsForPatchesENS3_10shared_ptrINS6_16IDescriptorModelEEERKNS5_2pc16ImagePatchesViewIKhEENS3_4spanIKNS0_4math6VectorIfLj2EEELm18446744073709551615EEEPvE3$_0JEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature21DescriptorsForPatchesENS3_10shared_ptrINS6_16IDescriptorModelEEERKNS5_2pc16ImagePatchesViewIKhEENS3_4spanIKNS0_4math6VectorIfLj2EEELm18446744073709551615EEEPvE3$_0JEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_255B86328(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  if (!v6)
  {
    v15 = *(a2 + 4);
    v17 = a2[3];
    v19 = *(a2 + 8);
    v21 = *(a2 + 36);
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = &unk_2867C55D0;
    *(a1 + 32) = v15;
    *(a1 + 40) = 0;
    *(a1 + 48) = v17;
    *(a1 + 64) = v19;
    *(a1 + 72) = v21;
    return a1;
  }

  p_shared_owners = &v6->__shared_owners_;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = *(a2 + 36);
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = a2[3];
  v18 = *(a2 + 8);
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = v5;
  v20 = v8;
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_4:
      *a1 = v3;
      *(a1 + 16) = v4;
      *(a1 + 24) = &unk_2867C55D0;
      v9 = v14;
      goto LABEL_5;
    }
  }

  else
  {
    v12 = v3;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v3 = v12;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_4;
    }
  }

  v13 = v3;
  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  *a1 = v13;
  *(a1 + 16) = v4;
  *(a1 + 24) = &unk_2867C55D0;
  v9 = v14;
LABEL_5:
  v10 = &v6->__shared_owners_;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a1 + 48) = v16;
  *(a1 + 64) = v18;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a1 + 32) = v9;
  *(a1 + 40) = v6;
  *(a1 + 72) = v20;
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_13;
    }

LABEL_12:
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    goto LABEL_13;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

unsigned int *sub_255B8661C(unsigned int *result, uint64_t a2)
{
  v2 = result[8];
  v3 = result[11];
  if (v3 != *(a2 + 44) || v3 != v2)
  {
    v21 = result[8];
    return sub_255B8683C(result, a2, &v21);
  }

  v5 = result[9];
  v6 = *(result + 3);
  if (*(result + 48) != 1 || v6 == 0)
  {
    v8 = v5 * v2;
    if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
    {
      goto LABEL_27;
    }

LABEL_16:
    if (!v8)
    {
      return result;
    }

    goto LABEL_17;
  }

  v11 = a2;
  v12 = *(result + 1);
  v13 = *(result + 2);
  v14 = result;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v12;
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      v12 = v15;
    }
  }

  result = (*(*v12 + 88))(v12, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
  v6 = *(v14 + 3);
  a2 = v11;
  v8 = v5 * v2;
  if (*(v11 + 48) != 1 || *(v11 + 24) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = a2;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v17;
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v17 = v20;
    }
  }

  result = (*(*v17 + 88))(v17, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
  a2 = v19;
  if (v8)
  {
LABEL_17:
    v10 = *(a2 + 24);

    return memmove(v10, v6, v8);
  }

  return result;
}

uint64_t sub_255B8683C(uint64_t a1, uint64_t a2, size_t *a3)
{
  sub_255B59A2C(a1, &v10);
  sub_255B7AE2C(a2, &v9);
  if (*(a1 + 32))
  {
    v6 = *(a1 + 36) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_255B8699C(a3, a1, a2);
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B86908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
    v11 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v11 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  (*(*v11 + 8))(v11);
  _Unwind_Resume(exception_object);
}

size_t *sub_255B8699C(size_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 36);
  if (*(a2 + 32))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return result;
  }

  v6 = result;
  v7 = *(a2 + 44);
  v8 = *(a3 + 44);
  v9 = *(a2 + 24);
  if (*(a2 + 48) != 1 || v9 == 0)
  {
    v11 = *(a3 + 24);
    if (*(a3 + 48) == 1 && v11 != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v17 = v14;
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v14 = v17;
      }
    }

    result = (*(*v14 + 88))(v14, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    v9 = *(a2 + 24);
    v11 = *(a3 + 24);
    if (*(a3 + 48) == 1 && v11 != 0)
    {
LABEL_25:
      v19 = *(a3 + 8);
      v20 = *(a3 + 16);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v21 = v19;
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
          v19 = v21;
        }
      }

      result = (*(*v19 + 88))(v19, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v11 = *(a3 + 24);
      v13 = *v6;
      if (v3 != 1)
      {
        goto LABEL_29;
      }

LABEL_16:
      if (!v13)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  v13 = *v6;
  if (v3 == 1)
  {
    goto LABEL_16;
  }

LABEL_29:
  if (v13)
  {
    v22 = v3 - 2;
LABEL_31:
    result = memmove(v11, v9, v13);
    while (1)
    {
      v9 += v7;
      v11 += v8;
      if (!v22)
      {
        break;
      }

      v13 = *v6;
      --v22;
      if (*v6)
      {
        goto LABEL_31;
      }
    }

    v13 = *v6;
    if (*v6)
    {
LABEL_36:

      return memmove(v11, v9, v13);
    }
  }

  return result;
}

void *sub_255B86BD4(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 57))
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255B86CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B86D20(va);
  _Unwind_Resume(a1);
}

void sub_255B86CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_255B854A0(v4);
  sub_255B850C0(va1);
  *(v2 + 8) = v3;
  sub_255B86D20(va);
  _Unwind_Resume(a1);
}

void ***sub_255B86D20(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 128;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_2867D04A8[v7])(&v9, v4 - 128);
          }

          *(v4 - 2) = -1;
          v4 -= 128;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_255B87098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_255A7F5A0(va2);
  MEMORY[0x259C49320](v4, 0x10B3C40DF2E34A9);
  sub_255A7F5A0(va1);
  sub_255A7F5A0(va);
  MEMORY[0x259C49320](v3, v2);
  _Unwind_Resume(a1);
}

void sub_255B8718C(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a1 + 8);
  }

  if (a2[1] != *a2)
  {
    (*(*v5 + 32))(v5);
    operator new();
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_255B88304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, std::mutex *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  std::mutex::unlock(v60);
  if (!atomic_fetch_add(v59, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v58 + 16))(v58);
  }

  sub_255A7944C(&a58);
  sub_255A7A508(&a23);
  _Unwind_Resume(a1);
}

void sub_255B88418(int a1@<W0>, void *a2@<X8>)
{
  if (a1 == 2)
  {
    sub_255B8105C(0, __p);
  }

  else if (a1 == 1)
  {
    sub_255B80ED4(0, __p);
  }

  else
  {
    sub_255A82C84(__p);
    v3 = sub_255BAEB68(__p, 0xEu);
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v3)
    {
      sub_255B803C8();
    }

    sub_255B80288(0, __p);
  }

  *v8 = *v17;
  v9 = v18;
  v17[1] = 0;
  *&v18 = 0;
  v17[0] = 0;
  if (v21 != 1 || (v20 & 0x80000000) == 0 || (operator delete(v19), (SBYTE7(v18) & 0x80000000) == 0))
  {
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    operator delete(v15);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  operator delete(v17[0]);
  if (v16 < 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_31:
  operator delete(v13);
LABEL_16:
  v4 = HIBYTE(v9);
  v5 = v8[0];
  v6 = v8[1];
  if (v9 >= 0)
  {
    v5 = v8;
    v6 = HIBYTE(v9);
  }

  if (v6 >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = v6;
  }

  if (v6 < v7)
  {
    sub_255A93C3C("string_view::substr");
  }

  if (v6 < 6 || memcmp(v5 + v6 - v7, "bundle", v7))
  {
    *a2 = 0;
    a2[1] = 0;
    if ((v4 & 0x80) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v8[0]);
    return;
  }

  v11 = 4;
  strcpy(__p, "main");
  sub_255A81CB0(v8, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v9 < 0)
    {
      goto LABEL_33;
    }
  }

  else if (v9 < 0)
  {
    goto LABEL_33;
  }
}

void sub_255B88614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B88668(uint64_t result)
{
  v1 = *(result + 8);
  *result = &unk_2867C9430;
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(result + 16))(v1);
    return v2;
  }

  return result;
}

void sub_255B886C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  *a1 = &unk_2867C9430;
  *(a1 + 8) = 0;
  if (v1)
  {
    (*(a1 + 16))(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B88738(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    (*(a1 + 88))();
  }

  v4 = *(a1 + 40);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_255B88800(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_255B8886C(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B888EC(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return sub_255B88A50(a1);
}

void sub_255B88928(uint64_t a1)
{
  sub_255B88C44(v4, a1 + 264);
  sub_255B88B34(a1, v4);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v7();
  }

  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_255B889E8(void *a1)
{
  sub_255B88738(&v5);
  __cxa_begin_catch(a1);
  std::current_exception();
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v1, v3);
  std::exception_ptr::~exception_ptr(&v4);
  __cxa_end_catch();
}

void sub_255B88A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_255B88A50(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 240);
    if (v1)
    {
      *(a1 + 248) = v1;
      v2 = a1;
      operator delete(v1);
      a1 = v2;
    }

    v3 = *(a1 + 224);
    *(a1 + 224) = 0;
    if (v3)
    {
      v4 = a1;
      (*(a1 + 232))(v3);
      a1 = v4;
    }

    v5 = *(a1 + 184);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      a1 = v6;
    }
  }

  v7 = *(*a1 + 8);

  return v7();
}

void sub_255B88B34(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v8.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v8), v4))
  {
    sub_255B89384(2u);
  }

  v5 = *(a2 + 16);
  *(a1 + 144) = *a2;
  *(a1 + 160) = v5;
  *(a1 + 168) = &unk_2867C55D0;
  *(a1 + 176) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(a2 + 48);
  *(a1 + 202) = *(a2 + 58);
  *(a1 + 192) = v6;
  v7 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 224) = v7;
  *(a1 + 232) = *(a2 + 88);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 96);
  *(a1 + 256) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_255B88C44(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  sub_255B91DC8(*a2, *(a2 + 8), *(a2 + 24), v4, &v30);
  (*(***(a2 + 16) + 40))(v37);
  if (v39 == 1)
  {
    sub_255B893EC(&v30, &v40);
    sub_255B893EC(&v30, &v47);
    v36 = v37;
    if (v41)
    {
      if (v42 && v43)
      {
        *&v21[8] = v41 - 1;
        *&v21[12] = v44 | (v48 << 32);
        *v21 = 0;
        *&v21[20] = v42 - 1;
        v22 = (v45 | (v49 << 32));
        LODWORD(v23) = v43 - 1;
        *(&v23 + 4) = HIDWORD(v45) | (v50 << 32);
        sub_255B8983C(v21, &v36, v40, v47, v5);
      }
    }
  }

  *v21 = v30;
  *&v21[16] = v31;
  v22 = &unk_2867C55D0;
  v6 = v32;
  v32 = 0uLL;
  v23 = v6;
  v24[0] = v33[0];
  *(v24 + 10) = *(v33 + 10);
  v7 = v34;
  v34 = 0;
  v25 = v7;
  v26 = v35;
  __p = 0;
  v28 = 0;
  v29 = 0;
  (*(***(a2 + 16) + 48))(&v40);
  if (v46 == 1)
  {
    if (v45 == &v40)
    {
      (*(*v45 + 4))(v45);
      v19 = a1;
      if (v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v45)
      {
        (*(*v45 + 5))(v45);
      }

      v19 = a1;
      if (v4)
      {
LABEL_11:
        if (!(v4 >> 61))
        {
          v8 = *(a2 + 16);
          v20 = *(a2 + 8);
          operator new();
        }

        sub_255A7B4E8();
      }
    }

    v11 = 0;
    v9 = 0;
    v10 = 0;
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    a1 = v19;
  }

  else
  {
    v10 = __p;
    v9 = v28;
    v11 = v29;
  }

  *a1 = *v21;
  *(a1 + 16) = *&v21[16];
  *(a1 + 24) = &unk_2867C55D0;
  v12 = v23;
  v23 = 0uLL;
  v13 = v24[0];
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 58) = *(v24 + 10);
  v14 = v26;
  *(a1 + 80) = v25;
  *(a1 + 88) = v14;
  *(a1 + 96) = v10;
  *(a1 + 104) = v9;
  *(a1 + 112) = v11;
  if (v39 == 1)
  {
    if (v38 == v37)
    {
      (*(*v38 + 32))(v38);
      v18 = v34;
      v34 = 0;
      if (!v18)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v38)
    {
      (*(*v38 + 40))();
    }
  }

  v15 = v34;
  v34 = 0;
  if (v15)
  {
LABEL_21:
    v35();
  }

LABEL_22:
  v16 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_255B892D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_255B89710(v28 - 224);
  sub_255B897A8(&a28);
  _Unwind_Resume(a1);
}

void sub_255B8932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  sub_255B88738(&a13);
  sub_255B89710(v29 - 224);
  sub_255B897A8(&a28);
  _Unwind_Resume(a1);
}

void sub_255B89384(unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x259C48F30](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

uint64_t sub_255B893EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_255B7AE2C(a1 + 24, &v16);
  if (*(a1 + 72) == 1 && *(a1 + 48))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v6;
      }
    }

    (*(*v4 + 88))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
  }

  v7 = *a1;
  v8 = *(a1 + 68);
  v9 = *(a1 + 64) | (v7 << 32);
  if (*a1)
  {
    v10 = *(a1 + 16);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 16))
  {
    v11 = v7 == 0;
    *a1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 | (*a1 << 32);
  }

  *a2 = *(a1 + 48);
  *(a2 + 8) = v12;
  *(a2 + 16) = v10;
  *(a2 + 20) = v9;
  *(a2 + 28) = v8;
  if (v8 * v10 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_28;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v13 += 16;
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_28:
    abort();
  }

LABEL_25:
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B89634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B89678(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_255B89710(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_255B897A8(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    (*(a1 + 88))();
  }

  v3 = *(a1 + 40);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_255B8983C(_DWORD *a1, uint64_t *a2, _BYTE *a3, _BYTE *a4, float a5)
{
  if (a1[8])
  {
    v9 = 0;
    do
    {
      v21 = v9;
      v10 = a4;
      v11 = a3;
      if (a1[5])
      {
        v12 = 0;
        v11 = a3;
        v10 = a4;
        do
        {
          v13 = v10;
          v14 = v11;
          if (a1[2])
          {
            v15 = 0;
            v14 = v11;
            v13 = v10;
            while (1)
            {
              v16 = *a2;
              LOBYTE(a5) = *v14;
              v23 = LODWORD(a5);
              v17 = *(v16 + 24);
              if (!v17)
              {
                break;
              }

              a5 = (*(*v17 + 48))(v17, &v23);
              *v13 = a5;
              v14 += a1[3];
              v13 += a1[4];
              if (++v15 >= a1[2])
              {
                goto LABEL_10;
              }
            }

LABEL_17:
            sub_255A93CCC();
          }

LABEL_10:
          v18 = *a2;
          LOBYTE(a5) = *v14;
          v22 = LODWORD(a5);
          v19 = *(v18 + 24);
          if (!v19)
          {
            goto LABEL_17;
          }

          a5 = (*(*v19 + 48))(v19, &v22);
          *v13 = a5;
          v11 += a1[6];
          v10 += a1[7];
          ++v12;
        }

        while (v12 < a1[5]);
      }

      sub_255B89A30(a1, a2, v11, v10, a5);
      a3 += a1[9];
      a4 += a1[10];
      v9 = v21 + 1;
    }

    while ((v21 + 1) < a1[8]);
  }

  if (a1[5])
  {
    v20 = 0;
    do
    {
      sub_255B89A30(a1, a2, a3, a4, a5);
      a3 += a1[6];
      a4 += a1[7];
      ++v20;
    }

    while (v20 < a1[5]);
  }

  sub_255B89A30(a1, a2, a3, a4, a5);
}

void sub_255B89A30(_DWORD *a1, uint64_t *a2, _BYTE *a3, _BYTE *a4, float a5)
{
  if (a1[2])
  {
    v9 = 0;
    while (1)
    {
      v10 = *a2;
      LOBYTE(a5) = *a3;
      v15 = LODWORD(a5);
      v11 = *(v10 + 24);
      if (!v11)
      {
        break;
      }

      a5 = (*(*v11 + 48))(v11, &v15);
      *a4 = a5;
      a3 += a1[3];
      a4 += a1[4];
      if (++v9 >= a1[2])
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    sub_255A93CCC();
  }

LABEL_5:
  v12 = *a2;
  LOBYTE(a5) = *a3;
  v14 = LODWORD(a5);
  v13 = *(v12 + 24);
  if (!v13)
  {
    goto LABEL_7;
  }

  *a4 = (*(*v13 + 48))(v13, &v14);
}

uint64_t sub_255B89B30(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_255B89BBC(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24) + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    v8 = MEMORY[0x259C49040]();
    MEMORY[0x259C49320](v8, 0x20C4093837F09);
  }

  MEMORY[0x259C49320](a1, 0xA0C40F20CD8FBLL);
  return 0;
}

void sub_255B89C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B89C98(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_255B89C98(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x259C49040]();
      MEMORY[0x259C49320](v4, 0x20C4093837F09);
    }

    MEMORY[0x259C49320](v1, 0xA0C40F20CD8FBLL);
    return v2;
  }

  return result;
}

void *sub_255B89D04(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x259C49040]();
    MEMORY[0x259C49320](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

void sub_255B89D58(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_255B89DC4(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B89E44(uint64_t a1)
{
  sub_255B88C44(v4, a1 + 264);
  sub_255B88B34(a1, v4);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v7();
  }

  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_255B89F04(void *a1)
{
  sub_255B88738(&v5);
  __cxa_begin_catch(a1);
  std::current_exception();
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v1, v3);
  std::exception_ptr::~exception_ptr(&v4);
  __cxa_end_catch();
}

void sub_255B89F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_255B89F6C(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_255B89FD8(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8A058(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return sub_255B88A50(a1);
}

void sub_255B8A094(uint64_t a1)
{
  sub_255B8A1BC(v4, a1 + 264);
  sub_255B88B34(a1, v4);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v7();
  }

  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_255B8A154(void *a1)
{
  sub_255B88738(&v5);
  __cxa_begin_catch(a1);
  std::current_exception();
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v1, v3);
  std::exception_ptr::~exception_ptr(&v4);
  __cxa_end_catch();
}

void sub_255B8A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_255B8A1BC(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  sub_255B91DC8(*a2, *(a2 + 8), *(a2 + 24), v4, &v30);
  (*(***(a2 + 16) + 40))(v37);
  if (v39 == 1)
  {
    sub_255B893EC(&v30, &v40);
    sub_255B893EC(&v30, &v47);
    v36 = v37;
    if (v41)
    {
      if (v42 && v43)
      {
        *&v21[8] = v41 - 1;
        *&v21[12] = v44 | (v48 << 32);
        *v21 = 0;
        *&v21[20] = v42 - 1;
        v22 = (v45 | (v49 << 32));
        LODWORD(v23) = v43 - 1;
        *(&v23 + 4) = HIDWORD(v45) | (v50 << 32);
        sub_255B8983C(v21, &v36, v40, v47, v5);
      }
    }
  }

  *v21 = v30;
  *&v21[16] = v31;
  v22 = &unk_2867C55D0;
  v6 = v32;
  v32 = 0uLL;
  v23 = v6;
  v24[0] = v33[0];
  *(v24 + 10) = *(v33 + 10);
  v7 = v34;
  v34 = 0;
  v25 = v7;
  v26 = v35;
  __p = 0;
  v28 = 0;
  v29 = 0;
  (*(***(a2 + 16) + 48))(&v40);
  if (v46 == 1)
  {
    if (v45 == &v40)
    {
      (*(*v45 + 4))(v45);
      v19 = a1;
      if (v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v45)
      {
        (*(*v45 + 5))(v45);
      }

      v19 = a1;
      if (v4)
      {
LABEL_11:
        if (!(v4 >> 61))
        {
          v8 = *(a2 + 16);
          v20 = *(a2 + 8);
          operator new();
        }

        sub_255A7B4E8();
      }
    }

    v11 = 0;
    v9 = 0;
    v10 = 0;
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    a1 = v19;
  }

  else
  {
    v10 = __p;
    v9 = v28;
    v11 = v29;
  }

  *a1 = *v21;
  *(a1 + 16) = *&v21[16];
  *(a1 + 24) = &unk_2867C55D0;
  v12 = v23;
  v23 = 0uLL;
  v13 = v24[0];
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 58) = *(v24 + 10);
  v14 = v26;
  *(a1 + 80) = v25;
  *(a1 + 88) = v14;
  *(a1 + 96) = v10;
  *(a1 + 104) = v9;
  *(a1 + 112) = v11;
  if (v39 == 1)
  {
    if (v38 == v37)
    {
      (*(*v38 + 32))(v38);
      v18 = v34;
      v34 = 0;
      if (!v18)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v38)
    {
      (*(*v38 + 40))();
    }
  }

  v15 = v34;
  v34 = 0;
  if (v15)
  {
LABEL_21:
    v35();
  }

LABEL_22:
  v16 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_255B8A84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_255B89710(v28 - 224);
  sub_255B897A8(&a28);
  _Unwind_Resume(a1);
}

void sub_255B8A8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  sub_255B88738(&a13);
  sub_255B89710(v29 - 224);
  sub_255B897A8(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_255B8A8FC(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24) + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    v8 = MEMORY[0x259C49040]();
    MEMORY[0x259C49320](v8, 0x20C4093837F09);
  }

  MEMORY[0x259C49320](a1, 0xA0C40F20CD8FBLL);
  return 0;
}

void sub_255B8A9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B89C98(va);
  _Unwind_Resume(a1);
}

void sub_255B8A9D8(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_255B8AA44(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B8AAC4(uint64_t a1)
{
  sub_255B8A1BC(v4, a1 + 264);
  sub_255B88B34(a1, v4);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v7();
  }

  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_255B8AB84(void *a1)
{
  sub_255B88738(&v5);
  __cxa_begin_catch(a1);
  std::current_exception();
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v1, v3);
  std::exception_ptr::~exception_ptr(&v4);
  __cxa_end_catch();
}

void sub_255B8ABD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_255B8ABF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8AC28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_255B8AC58(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d2lf7feature16IDescriptorModelEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d2lf7feature16IDescriptorModelEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d2lf7feature16IDescriptorModelEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d2lf7feature16IDescriptorModelEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255B8ACB8(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    *(result + 16) = 0;
    if (v1)
    {
      v2 = result;
      (*(result + 24))(v1);
      result = v2;
    }

    v3 = *(result + 8);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255B8AD78(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_4:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_10:
  operator delete(*(a1 + 32));
  return a1;
}

uint64_t sub_255B8AE10(uint64_t a1)
{
  *a1 = &unk_2867C93D8;
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_11:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      operator delete(*(a1 + 64));
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_17:
  operator delete(*(a1 + 40));
  return a1;
}

void sub_255B8AF70(uint64_t a1)
{
  sub_255B8AE10(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8AFA8(uint64_t a1)
{
  sub_255A81DE0(v11, (**(a1 + 152) + 8));
  v1 = v11[0];
  if (v18 == 1)
  {
    v2 = __p;
    if (__p)
    {
      v3 = v17;
      v4 = __p;
      if (v17 != __p)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = __p;
      }

      v17 = v2;
      operator delete(v4);
    }
  }

  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = v14;
    if (v15 != v14)
    {
      do
      {
        v9 = v7;
        v7 -= 4;
        if (*(v9 - 8) == 1 && *(v9 - 9) < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v14;
    }

    v15 = v6;
    operator delete(v8);
  }

  v19 = &v13;
  sub_255A8250C(&v19);
  if (v12 < 0)
  {
    operator delete(v11[2]);
  }

  return v1;
}

void sub_255B8B0C8(void *a1, char a2, uint64_t a3)
{
  sub_255B80288(a2, v8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2867C93D8;
  sub_255B8B874((a1 + 1), v8);
  v9[0] = &unk_2867CE598;
  v9[1] = v6;
  v9[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255B811BC(v8, v9);
}

void sub_255B8B23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7F5A0(v13 - 40);
  sub_255B8AD78(v12);
  sub_255A7F5A0(&a9);
  sub_255B8AD78(&a12);
  _Unwind_Resume(a1);
}

void sub_255B8B268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7F5A0(&a9);
  sub_255B8AD78(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_255B8B284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 152);
  v6[0] = &unk_2867C7EC8;
  v6[1] = a3;
  sub_255B7F420(v4, a2, v6, 1, a4);
  return j_nullsub_87_0(v6);
}

void sub_255B8B2FC(void *a1, char a2)
{
  sub_255B80ED4(a2, v3);
  *a1 = &unk_2867C93D8;
  sub_255B8B874((a1 + 1), v3);
  v4[0] = &unk_2867CE598;
  v4[1] = 0;
  v4[2] = 0;
  sub_255B811BC(v3, v4);
}

void sub_255B8B458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7F5A0(v13 - 40);
  sub_255B8AD78(v12);
  sub_255A7F5A0(&a9);
  sub_255B8AD78(&a12);
  _Unwind_Resume(a1);
}

void sub_255B8B484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7F5A0(&a9);
  sub_255B8AD78(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_255B8B4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 152);
  v6[0] = &unk_2867C7EC8;
  v6[1] = a3;
  sub_255B7FC34(v4, a2, v6, 1, a4);
  return j_nullsub_87_0(v6);
}

void sub_255B8B518(void *a1, char a2)
{
  sub_255B8105C(a2, v3);
  *a1 = &unk_2867C93D8;
  sub_255B8B874((a1 + 1), v3);
  v4[0] = &unk_2867CE598;
  v4[1] = 0;
  v4[2] = 0;
  sub_255B811BC(v3, v4);
}

void sub_255B8B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7F5A0(v13 - 40);
  sub_255B8AD78(v12);
  sub_255A7F5A0(&a9);
  sub_255B8AD78(&a12);
  _Unwind_Resume(a1);
}

void sub_255B8B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7F5A0(&a9);
  sub_255B8AD78(&a12);
  _Unwind_Resume(a1);
}

void sub_255B8B6BC(uint64_t a1@<X8>)
{
  *a1 = &unk_2867C3B30;
  *(a1 + 8) = sub_255B8B6F8;
  *(a1 + 24) = a1;
  *(a1 + 32) = 1;
}

float32x2_t sub_255B8B6F8(float32x2_t *a1, uint32x2_t *a2)
{
  __asm { FMOV            V2.2S, #-1.0 }

  return vadd_f32(vdiv_f32(vadd_f32(*a1, *a1), vadd_f32(vcvt_f32_u32(*a2), _D2)), _D2);
}

uint64_t sub_255B8B720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 152);
  v8[0] = &unk_2867C7EC8;
  v8[1] = a5;
  sub_255B845EC(v6, a2, a3, a4, v8, 1, a6);
  return j_nullsub_87_0(v8);
}

void sub_255B8B7C4(uint64_t a1)
{
  sub_255B8AE10(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B8B800(uint64_t a1)
{
  sub_255B8AE10(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B8B83C(uint64_t a1)
{
  sub_255B8AE10(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8B874(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  if (*(a2 + 55) < 0)
  {
    sub_255A7E018((a1 + 32), *(a2 + 32), *(a2 + 40));
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v6;
      goto LABEL_6;
    }
  }

  sub_255A7E018((a1 + 56), *(a2 + 56), *(a2 + 64));
LABEL_6:
  if (*(a2 + 103) < 0)
  {
    sub_255A7E018((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  v8 = *(a2 + 106);
  v9 = *(a2 + 104);
  *(a1 + 112) = 0;
  *(a1 + 104) = v9;
  *(a1 + 106) = v8;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_255A7E018((a1 + 112), *(a2 + 112), *(a2 + 120));
    }

    else
    {
      v10 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v10;
    }

    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_255B8B980(_Unwind_Exception *exception_object)
{
  if (*(v1 + 136) == 1 && *(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
    if ((*(v1 + 79) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(v1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(v1 + 56));
  if ((*(v1 + 55) & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_10:
  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

uint64_t sub_255B8BA80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867C3B30;
  a2[1] = v2;
  return result;
}

uint64_t sub_255B8BABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "PFN4cv3d3esn4math6VectorIfLj2EEERKNS_2lf8KeypointERKNS0_3arr5SizeTILj2ELNS8_8SizeTypeE0EvEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "PFN4cv3d3esn4math6VectorIfLj2EEERKNS_2lf8KeypointERKNS0_3arr5SizeTILj2ELNS8_8SizeTypeE0EvEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "PFN4cv3d3esn4math6VectorIfLj2EEERKNS_2lf8KeypointERKNS0_3arr5SizeTILj2ELNS8_8SizeTypeE0EvEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("PFN4cv3d3esn4math6VectorIfLj2EEERKNS_2lf8KeypointERKNS0_3arr5SizeTILj2ELNS8_8SizeTypeE0EvEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_255B8BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v30[0]) = 0;
  v32 = 0;
  v6 = *(a3 + 24);
  if (v6 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = a4;
      sub_255A7E018(v30, *a3, *(a3 + 8));
      a4 = v7;
    }

    else
    {
      *v30 = *a3;
      v31 = *(a3 + 16);
    }

    v32 = 1;
  }

  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  v29[0] = &unk_2867CE598;
  v29[1] = v9;
  v29[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    LOBYTE(v54) = 0;
    v56 = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LOBYTE(v54) = 0;
    v56 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (SHIBYTE(v31) < 0)
  {
    sub_255A7E018(&v54, v30[0], v30[1]);
  }

  else
  {
    v54 = *v30;
    v55 = v31;
  }

  v56 = 1;
LABEL_14:
  sub_255B8C80C(v57, a2, &v54);
  if (v56 == 1 && SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  LOBYTE(__p[0]) = 0;
  v51 = 0;
  v53 = 0;
  v52 = 0;
  LOBYTE(v53) = *(a2 + 104);
  LODWORD(v52) = *(a2 + 106);
  v33 = &unk_2867C7F40;
  sub_255A81DE0(&v34, v57);
  v33 = &unk_2867C7EA0;
  sub_255B5C60C(&v45, __p);
  v48 = v52;
  v49 = v53;
  if (v51 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v64 == 1)
  {
    v10 = v62;
    if (v62)
    {
      v11 = v63;
      v12 = v62;
      if (v63 != v62)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v62;
      }

      v63 = v10;
      operator delete(v12);
    }
  }

  v14 = v60;
  if (v60)
  {
    v15 = v61;
    v16 = v60;
    if (v61 != v60)
    {
      do
      {
        v17 = v15;
        v15 -= 4;
        if (*(v17 - 8) == 1 && *(v17 - 9) < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v60;
    }

    v61 = v14;
    operator delete(v16);
  }

  __p[0] = &v59;
  sub_255A8250C(__p);
  if (v58 < 0)
  {
    operator delete(v57[2]);
  }

  v18 = v34;
  *a1 = &unk_2867C7F40;
  *(a1 + 8) = v18;
  *(a1 + 16) = v35;
  *(a1 + 24) = *v36;
  *(a1 + 40) = v37;
  v36[0] = 0;
  v36[1] = 0;
  v19 = v41;
  *(a1 + 64) = v39;
  *(a1 + 48) = v38;
  v39 = 0;
  v37 = 0;
  v38 = 0uLL;
  *(a1 + 72) = v40;
  *(a1 + 88) = v19;
  v40 = 0uLL;
  v41 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  v20 = v44;
  if (v44 == 1)
  {
    *(a1 + 96) = v42;
    *(a1 + 112) = v43;
    v43 = 0;
    v42 = 0uLL;
    *(a1 + 120) = 1;
  }

  *a1 = &unk_2867C7EA0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v47 == 1)
  {
    *(a1 + 128) = v45;
    *(a1 + 144) = v46;
    v46 = 0;
    v45 = 0uLL;
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = v48;
  *(a1 + 168) = v49;
  v33 = &unk_2867C7F40;
  if (v20)
  {
    v21 = v42;
    if (v42)
    {
      v22 = *(&v42 + 1);
      if (*(&v42 + 1) == v42)
      {
        *(&v42 + 1) = v42;
        operator delete(v42);
        v23 = v40;
        if (!v40)
        {
          goto LABEL_48;
        }

LABEL_58:
        v26 = *(&v40 + 1);
        v27 = v23;
        if (*(&v40 + 1) != v23)
        {
          do
          {
            v28 = v26;
            v26 -= 4;
            if (*(v28 - 8) == 1 && *(v28 - 9) < 0)
            {
              operator delete(*v26);
            }
          }

          while (v26 != v23);
          v27 = v40;
        }

        *(&v40 + 1) = v23;
        operator delete(v27);
        v57[0] = &v38;
        sub_255A8250C(v57);
        if (SHIBYTE(v37) < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      do
      {
        v25 = *(v22 - 1);
        v22 -= 3;
        if (v25 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      *(&v42 + 1) = v21;
      operator delete(v42);
      v23 = v40;
      if (v40)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_48:
  v57[0] = &v38;
  sub_255A8250C(v57);
  if (SHIBYTE(v37) < 0)
  {
LABEL_49:
    operator delete(v36[0]);
  }

LABEL_50:
  sub_255A7F5A0(v29);
  if (v32 == 1 && SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  *a1 = &unk_2867C90F8;
  return a1;
}

void sub_255B8C02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char a45)
{
  if (*(v45 - 200) == 1 && *(v45 - 201) < 0)
  {
    operator delete(*(v45 - 224));
  }

  sub_255A7F5A0(&a10);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B8C0C4(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);
  return a1;
}

void sub_255B8C144(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v27[0]) = 0;
  v29 = 0;
  v6 = *(a3 + 24);
  if (v6 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = a4;
      sub_255A7E018(v27, *a3, *(a3 + 8));
      a4 = v7;
    }

    else
    {
      *v27 = *a3;
      v28 = *(a3 + 16);
    }

    v29 = 1;
  }

  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  v24 = &unk_2867CE598;
  v25 = v9;
  v26 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    LOBYTE(v61) = 0;
    v63 = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LOBYTE(v61) = 0;
    v63 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_255A7E018(&v61, v27[0], v27[1]);
  }

  else
  {
    v61 = *v27;
    v62 = v28;
  }

  v63 = 1;
LABEL_14:
  sub_255B8C80C(v64, a2, &v61);
  if (v63 == 1 && SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (*(a2 + 106))
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorModelDefinition.cpp", 91, "param.device == DeviceType::Any", 0x1FuLL, "Only DeviceType::Any supported for EspressoV2", 0x2DuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_25:
        qword_27F7DD620(*algn_27F7DD628, "param.device == DeviceType::Any", 31, "Only DeviceType::Any supported for EspressoV2", 45);
        goto LABEL_26;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_64;
      }
    }

    do
    {
      (*v10)(*(v10 + 8), "param.device == DeviceType::Any", 31, "Only DeviceType::Any supported for EspressoV2", 45);
      v10 += 16;
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_25;
    }

LABEL_64:
    abort();
  }

LABEL_26:
  LOBYTE(v51[0]) = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  LOBYTE(__p) = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v50[0] = &unk_2867CE598;
  v50[1] = v25;
  v50[2] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255A816F0(v30, v64, v51, v50);
  sub_255A7F5A0(v50);
  if (v58 == 1 && v57 < 0)
  {
    operator delete(__p);
  }

  if (v53 == 1 && v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v71 == 1)
  {
    v12 = v69;
    if (v69)
    {
      v13 = v70;
      v14 = v69;
      if (v70 != v69)
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = v69;
      }

      v70 = v12;
      operator delete(v14);
    }
  }

  v16 = v67;
  if (v67)
  {
    v17 = v68;
    v18 = v67;
    if (v68 != v67)
    {
      do
      {
        v19 = v17;
        v17 -= 4;
        if (*(v19 - 8) == 1 && *(v19 - 9) < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v67;
    }

    v68 = v16;
    operator delete(v18);
  }

  v51[0] = &v66;
  sub_255A8250C(v51);
  if (v65 < 0)
  {
    operator delete(v64[2]);
  }

  v20 = v30[1];
  *a1 = &unk_2867C7F40;
  *(a1 + 8) = v20;
  *(a1 + 16) = v31;
  *(a1 + 24) = v32;
  *(a1 + 40) = v33;
  v32 = 0uLL;
  *(a1 + 48) = v34;
  v21 = v37;
  *(a1 + 64) = v35;
  v35 = 0;
  v33 = 0;
  v34 = 0uLL;
  *(a1 + 72) = v36;
  *(a1 + 88) = v21;
  v36 = 0uLL;
  v37 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (v40 == 1)
  {
    *(a1 + 96) = v38;
    *(a1 + 112) = v39;
    v39 = 0;
    v38 = 0uLL;
    *(a1 + 120) = 1;
  }

  *a1 = &unk_2867C7E20;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v43 == 1)
  {
    *(a1 + 128) = v41;
    *(a1 + 144) = v42;
    v42 = 0;
    v41 = 0uLL;
    *(a1 + 152) = 1;
  }

  v22 = v44;
  *(a1 + 176) = 0;
  *(a1 + 160) = v22;
  *(a1 + 200) = 0;
  if (v47 == 1)
  {
    *(a1 + 176) = v45;
    *(a1 + 192) = v46;
    v46 = 0;
    v45 = 0uLL;
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = v48;
  *(a1 + 216) = &unk_2867CE598;
  *(a1 + 224) = v49;
  v49 = 0uLL;
  sub_255A81854(v30);
  sub_255A7F5A0(&v24);
  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  *a1 = &unk_2867C90D0;
  return a1;
}