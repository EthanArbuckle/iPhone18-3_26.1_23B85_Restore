void sub_255ACE114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B016E0(v2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ACE16C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255ACD404(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255ACE404(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v27 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      sub_255AF83D4(&v27, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v28 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_255AF7EB0(&v28, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v26 = *(a1 + 16) * v12;
    if (!v26)
    {
      return;
    }

    v23 = 4 * v26;
    v24 = *a2;
    v25 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          v21 = 4 * v12;
          v22 = 4 * v13;
          do
          {
            memmove(v19, v18, 4 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 4 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

void sub_255ACE58C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_255B0A2E4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_255A7C284();
    }

    sub_255ACD794(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_2867C8750;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_255B0A2E4(a1[1]);
      }
    }

    v21[0] = &unk_2867C8750;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_255B0A2E4(a1[1]);
      }
    }
  }
}

void sub_255ACE940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B016E0(v2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255ACE998(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2867C8EC0;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_2867C8360;
  *(a1 + 8) = 0;
  sub_255ABAF8C(0, 1, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_255A7C284();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2867C7FE0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_255B0A2E4(v14);
    }
  }

LABEL_14:
  sub_255ABB690(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_255B01870(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_2867C8EC0;
  return a1;
}

void sub_255ACEB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(va);
  sub_255ABBCA4(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_255ACEB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B01870(va);
  sub_255ABBCA4(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_255ACEB78(uint64_t a1)
{
  *a1 = &unk_2867C8360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255ACEBF0(uint64_t *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v20 = &unk_2867C8750;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v20 = &unk_2867C8750;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255ABB690(a1, &v20);
  v20 = &unk_2867C8750;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255ACEF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ACEF48(void *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_2867C8750;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_2867C8750;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255ABB690(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_2867C8750;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255ACF29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ACF2B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  if (v2 <= 1)
  {
    if (v2 >= 2)
    {
LABEL_28:
      sub_255A7C284();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
LABEL_10:
    v6 = *(a1 + 32);
    v11 = *(a1 + 24);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v2 != 3)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v4 = a2;
  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5)
  {
    a2 = v4;
    v11 = 0;
    v12 = 0;
    goto LABEL_12;
  }

  a2 = v4;
  if (!*(a1 + 16))
  {
LABEL_23:
    v11 = 0;
    v12 = 0;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v11 = *(a1 + 16);
  v12 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_26:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v5;
    v10 = a2;
    (v5->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v9);
    a2 = v10;
  }

LABEL_12:
  if (!v11)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v7 = *v11;
  v8 = v11[1];
  if (!v8)
  {
LABEL_17:
    *a2 = v7;
    a2[1] = 0;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  *a2 = v7;
  a2[1] = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_18:
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_255ACF538(uint64_t a1)
{
  sub_255ABCBF0(v4, a1);
  sub_255ACEF48(&v3, a1);
  sub_255ACEF48(&v2, a1);
  operator new();
}

void sub_255ACF614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x259C49320](v8, 0x10A3C40A1F8E8FFLL);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ACF640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ACF654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255ACF674(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8360;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

double sub_255ACF710(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC898, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 1);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v13);
    sub_255ACEBF0(&v23, a1);
    sub_255AF2374(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_255ABCBF0(v22, v6);
  sub_255ACEF48(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_2867C8EC0;
  if (HIDWORD(v21) <= 0x20)
  {
    v8 = 32;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_255ABBD00(&v16, v25, &v23);
  *&v16 = &unk_2867C8EC0;
  sub_255B01870(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2867CF0E0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2867CF120[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_2867C8360;
  if (v15 != -1)
  {
    (off_2867CF0E0[v15])(&v23, v17);
  }

  return result;
}

void sub_255ACF964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ACF9A4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_255ACEBF0(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255ACFB10(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_255ACEF48(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255ACFC7C()
{
  if ((atomic_load_explicit(&qword_27F7DD018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD018))
  {
    sub_255AFCFE8();
  }

  if (byte_27F7DD09F >= 0)
  {
    return &qword_27F7DD088;
  }

  else
  {
    return qword_27F7DD088;
  }
}

void sub_255ACFD4C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255ABC490(a1, &v2);
    operator new();
  }

  sub_255ABCBF0(&v2, a1);
  operator new();
}

void sub_255AD0014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD0050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD00C4(uint64_t a1)
{
  *a1 = &unk_2867C8120;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD013C(uint64_t *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v20 = &unk_2867C8750;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v20 = &unk_2867C8750;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255AC1BB8(a1, &v20);
  v20 = &unk_2867C8750;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255AD0480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD0494(void *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_2867C8750;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_2867C8750;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255AC1BB8(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_2867C8750;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255AD07E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD0810(uint64_t a1)
{
  sub_255AC2BD8(v4, a1);
  sub_255AD0494(&v3, a1);
  sub_255AD0494(&v2, a1);
  operator new();
}

void sub_255AD08EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x259C49320](v8, 0x10A3C40A1F8E8FFLL);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD0918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD094C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8120;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

double sub_255AD09E8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC838, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 2);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v13);
    sub_255AD013C(&v23, a1);
    sub_255AF38B0(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_255AC2BD8(v22, v6);
  sub_255AD0494(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_2867C8C80;
  if (HIDWORD(v21) <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_255AC20AC(&v16, v25, &v23);
  *&v16 = &unk_2867C8C80;
  sub_255B01870(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2867CF0E0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2867CF120[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_2867C8120;
  if (v15 != -1)
  {
    (off_2867CF0E0[v15])(&v23, v17);
  }

  return result;
}

void sub_255AD0C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD0C7C(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_255AD013C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD0DE8(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_255AD0494(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD0F54()
{
  if ((atomic_load_explicit(&qword_27F7DD020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD020))
  {
    sub_255AFD208();
  }

  if (byte_27F7DD0B7 >= 0)
  {
    return &qword_27F7DD0A0;
  }

  else
  {
    return qword_27F7DD0A0;
  }
}

void sub_255AD1024(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC2474(&v2, a1);
    operator new();
  }

  sub_255AC2BD8(&v2, a1);
  operator new();
}

void sub_255AD12F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD13A8(uint64_t a1)
{
  *a1 = &unk_2867C86C0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD1420(uint64_t *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v20 = &unk_2867C8750;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v20 = &unk_2867C8750;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255AC1BB8(a1, &v20);
  v20 = &unk_2867C8750;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255AD1764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD1778(void *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_2867C8750;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_2867C8750;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255AC1BB8(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_2867C8750;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255AD1ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD1AF4(uint64_t a1)
{
  sub_255AC7734(v4, a1);
  sub_255AD1778(&v3, a1);
  sub_255AD1778(&v2, a1);
  operator new();
}

void sub_255AD1BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x259C49320](v8, 0x10A3C40A1F8E8FFLL);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD1BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD1C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD1C30(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C86C0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

double sub_255AD1CCC(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC7C0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 3);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v13);
    sub_255AD1420(&v23, a1);
    *&result = sub_255AC7334(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_255AC7734(v22, v6);
  sub_255AD1778(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_2867C89B0;
  if (HIDWORD(v21) <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_255AC67FC(&v16, v25, &v23);
  *&v16 = &unk_2867C89B0;
  sub_255B01870(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2867CF0E0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2867CF120[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_2867C86C0;
  if (v15 != -1)
  {
    (off_2867CF0E0[v15])(&v23, v17);
  }

  return result;
}

void sub_255AD1F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD1F60(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_255AD1420(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD20CC(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_255AD1778(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD2238()
{
  if ((atomic_load_explicit(&qword_27F7DD028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD028))
  {
    sub_255AFD428();
  }

  if (byte_27F7DD0CF >= 0)
  {
    return &qword_27F7DD0B8;
  }

  else
  {
    return qword_27F7DD0B8;
  }
}

void sub_255AD2308(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC6BD4(a1, &v2);
    operator new();
  }

  sub_255AC7734(&v2, a1);
  operator new();
}

void sub_255AD25D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD2680(uint64_t a1)
{
  *a1 = &unk_2867C8510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD26F8(uint64_t *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v20 = &unk_2867C8750;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v20 = &unk_2867C8750;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255ACA6FC(a1, &v20);
  v20 = &unk_2867C8750;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255AD2A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD2A50(void *a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_2867C8750;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_2867C8750;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255ACA6FC(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_2867C8750;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255AD2DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD2DCC(uint64_t a1)
{
  sub_255ACB71C(v4, a1);
  sub_255AD2A50(&v3, a1);
  sub_255AD2A50(&v2, a1);
  operator new();
}

void sub_255AD2EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x259C49320](v8, 0x10A3C40A1F8E8FFLL);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD2ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD2EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD2F08(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8510;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

double sub_255AD2FA4(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC7A8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 4);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v13);
    sub_255AD26F8(&v23, a1);
    *&result = sub_255AF74DC(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_255ACB71C(v22, v6);
  sub_255AD2A50(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_2867C8920;
  if (HIDWORD(v21) <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_255ACABF0(&v16, v25, &v23);
  *&v16 = &unk_2867C8920;
  sub_255B01870(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2867CF0E0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2867CF120[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_2867C8510;
  if (v15 != -1)
  {
    (off_2867CF0E0[v15])(&v23, v17);
  }

  return result;
}

void sub_255AD31F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD3238(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_255AD26F8(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD33A4(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_255AD2A50(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD3510()
{
  if ((atomic_load_explicit(&qword_27F7DD030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD030))
  {
    sub_255AFD648();
  }

  if (byte_27F7DD0E7 >= 0)
  {
    return &qword_27F7DD0D0;
  }

  else
  {
    return qword_27F7DD0D0;
  }
}

void sub_255AD35E0(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255ACAFB8(&v2, a1);
    operator new();
  }

  sub_255ACB71C(&v2, a1);
  operator new();
}

void sub_255AD38AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD38E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD3964(uint64_t a1)
{
  *a1 = &unk_2867C82D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD39DC(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v20), 2);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255ABD264(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255AD3C74(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 2;
    *&v24[4] = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(*&v24[4], 2);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255ABD264(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255AD3F3C(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255ABE25C(v4, a1);
  sub_255AD3C74(v3, a1);
  sub_255AD3C74(&v2, a1);
  operator new();
}

void sub_255AD4080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD40AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD40E4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C82D0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255AD4180(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC790, 0);
  if (v6)
  {
    v7 = v6;
    sub_255ABE25C(v32, v6);
    sub_255AD3C74(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8890;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 2;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255ABD7E8(&v24, v34, v33);
    *&v24 = &unk_2867C8890;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C82D0;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 5);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255AD39DC(v33, a1);
  sub_255AF26F0(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AD443C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AD44B0(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_255AD39DC(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD461C(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_255AD3C74(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD4788()
{
  if ((atomic_load_explicit(&qword_27F7DD038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD038))
  {
    sub_255AFD868();
  }

  if (byte_27F7DD0FF >= 0)
  {
    return &qword_27F7DD0E8;
  }

  else
  {
    return qword_27F7DD0E8;
  }
}

void sub_255AD4858(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255ABDBB8(&v2, a1);
    operator new();
  }

  sub_255ABE25C(&v2, a1);
  operator new();
}

void sub_255AD4B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD4B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD4BDC(uint64_t a1)
{
  *a1 = &unk_2867C8630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD4C54(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v20), 2);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255AC7DA8(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255AD4EEC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 2;
    *&v24[4] = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(*&v24[4], 2);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255AC7DA8(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255AD51B4(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255AC8DB0(v4, a1);
  sub_255AD4EEC(v3, a1);
  sub_255AD4EEC(&v2, a1);
  operator new();
}

void sub_255AD52F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD5324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD535C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8630;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255AD53F8(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC778, 0);
  if (v6)
  {
    v7 = v6;
    sub_255AC8DB0(v32, v6);
    sub_255AD4EEC(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8800;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 2;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255AC8334(&v24, v34, v33);
    *&v24 = &unk_2867C8800;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C8630;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 7);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255AD4C54(v33, a1);
  *&v30[0] = &v24;
  *(&v30[0] + 1) = v33;
  *&result = sub_255AF5898(v30);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AD56BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AD5730(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_255AD4C54(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD589C(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_255AD4EEC(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD5A08()
{
  if ((atomic_load_explicit(&qword_27F7DD040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD040))
  {
    sub_255AFDA88();
  }

  if (byte_27F7DD117 >= 0)
  {
    return &qword_27F7DD100;
  }

  else
  {
    return qword_27F7DD100;
  }
}

void sub_255AD5AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC870C(&v2, a1);
    operator new();
  }

  sub_255AC8DB0(&v2, a1);
  operator new();
}

void sub_255AD5DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD5DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD5E5C(uint64_t a1)
{
  *a1 = &unk_2867C8480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD5ED4(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v20), 2);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255ACBD90(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255AD616C(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 2;
    *&v24[4] = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(*&v24[4], 2);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255ACBD90(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255AD6434(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255ACCD90(v4, a1);
  sub_255AD616C(v3, a1);
  sub_255AD616C(&v2, a1);
  operator new();
}

void sub_255AD6578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD65A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD65BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD65DC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8480;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255AD6678(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC760, 0);
  if (v6)
  {
    v7 = v6;
    sub_255ACCD90(v32, v6);
    sub_255AD616C(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8770;
    if (HIDWORD(v31) <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 2;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255ACC31C(&v24, v34, v33);
    *&v24 = &unk_2867C8770;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C8480;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 8);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255AD5ED4(v33, a1);
  *&result = sub_255AF7C3C(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AD6934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AD69A8(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_255AD5ED4(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD6B14(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_255AD616C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD6C80()
{
  if ((atomic_load_explicit(&qword_27F7DD048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD048))
  {
    sub_255AFDCA8();
  }

  if (byte_27F7DD12F >= 0)
  {
    return &qword_27F7DD118;
  }

  else
  {
    return qword_27F7DD118;
  }
}

void sub_255AD6D50(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255ACC6EC(&v2, a1);
    operator new();
  }

  sub_255ACCD90(&v2, a1);
  operator new();
}

void sub_255AD701C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD7058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD70D4(uint64_t a1)
{
  *a1 = &unk_2867C8240;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD714C(uint64_t a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {

    sub_255AF2EE8(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_255A7C284();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v11 = &unk_2867C8750;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v11 = &unk_2867C8750;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_2867C8750;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_255ABE8CC(a1, &v11);
  v11 = &unk_2867C8750;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_255AD7354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD7368(uint64_t a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {

    sub_255AF2EE8(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_255A7C284();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_2867C8750;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_2867C8750;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_2867C8750;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_255ABE8CC(&v12, &v16);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_2867C8750;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_255AD75B4(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255ABF848(v4, a1);
  sub_255AD7368(v3, a1);
  sub_255AD7368(&v2, a1);
  operator new();
}

void sub_255AD76F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD7724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD775C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8240;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255AD77F8(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC880, 0);
  if (v6)
  {
    v7 = v6;
    sub_255ABF848(v32, v6);
    sub_255AD7368(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8E30;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 3;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255ABEE50(&v24, v34, v33);
    *&v24 = &unk_2867C8E30;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C8240;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 21);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255AD714C(v33, a1);
  sub_255AF2C3C(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AD7AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AD7B28(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_255AD714C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD7C94(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_255AD7368(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD7E00()
{
  if ((atomic_load_explicit(&qword_27F7DD050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD050))
  {
    sub_255AFDEC8();
  }

  if (byte_27F7DD147 >= 0)
  {
    return &qword_27F7DD130;
  }

  else
  {
    return qword_27F7DD130;
  }
}

void sub_255AD7ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255ABF220(&v2, a1);
    operator new();
  }

  sub_255ABF848(&v2, a1);
  operator new();
}

void sub_255AD819C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD81D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD8254(uint64_t a1)
{
  *a1 = &unk_2867C8090;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD82CC(uint64_t a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {

    sub_255AF2EE8(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_255A7C284();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v11 = &unk_2867C8750;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v11 = &unk_2867C8750;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_2867C8750;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_255AC324C(a1, &v11);
  v11 = &unk_2867C8750;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_255AD84D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255AD84E8(uint64_t a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {

    sub_255AF2EE8(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_255A7C284();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_2867C8750;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_2867C8750;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_2867C8750;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_255AC324C(&v12, &v16);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_2867C8750;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_255AD8734(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255AC41D0(v4, a1);
  sub_255AD84E8(v3, a1);
  sub_255AD84E8(&v2, a1);
  operator new();
}

void sub_255AD8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD88A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD88DC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8090;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255AD8978(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC868, 0);
  if (v6)
  {
    v7 = v6;
    sub_255AC41D0(v32, v6);
    sub_255AD84E8(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8DA0;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 3;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255AC37D8(&v24, v34, v33);
    *&v24 = &unk_2867C8DA0;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C8090;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 22);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255AD82CC(v33, a1);
  sub_255AF42D4(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AD8C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AD8CA8(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_255AD82CC(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255AD8E14(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_255AD84E8(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255AD8F80()
{
  if ((atomic_load_explicit(&qword_27F7DD058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD058))
  {
    sub_255AFE0E8();
  }

  if (byte_27F7DD15F >= 0)
  {
    return &qword_27F7DD148;
  }

  else
  {
    return qword_27F7DD148;
  }
}

void sub_255AD9050(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC3BA8(&v2, a1);
    operator new();
  }

  sub_255AC41D0(&v2, a1);
  operator new();
}

void sub_255AD931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255AD9358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AD93D4(uint64_t a1)
{
  *a1 = &unk_2867C81B0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255AD944C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255ABFEF0(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255AD96E4(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255ABFEF0(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255AD99AC(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255AC1558(v4, a1);
  sub_255AD96E4(v3, a1);
  sub_255AD96E4(&v2, a1);
  operator new();
}

void sub_255AD9AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD9B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255AD9B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255AD9B58(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C81B0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255AD9BF4(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC850, 0);
  if (v6)
  {
    v7 = v6;
    sub_255AC1558(v32, v6);
    sub_255AD96E4(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8D10;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255AC05C4(&v24, 25, v34, v33);
    *&v24 = &unk_2867C8D10;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C81B0;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 25);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255AD944C(v33, a1);
  sub_255AF328C(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AD9EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AD9F28(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_255AD944C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255ADA094(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_255AD96E4(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255ADA200()
{
  if ((atomic_load_explicit(&qword_27F7DD060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD060))
  {
    sub_255AFE308();
  }

  if (byte_27F7DD177 >= 0)
  {
    return &qword_27F7DD160;
  }

  else
  {
    return qword_27F7DD160;
  }
}

void sub_255ADA2D0(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC0EB4(&v2, a1);
    operator new();
  }

  sub_255AC1558(&v2, a1);
  operator new();
}

void sub_255ADA59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255ADA5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255ADA654(uint64_t a1)
{
  *a1 = &unk_2867C85A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255ADA6CC(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255AC4844(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255ADA964(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255AC4844(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255ADAC2C(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255ACA09C(v4, a1);
  sub_255ADA964(v3, a1);
  sub_255ADA964(&v2, a1);
  operator new();
}

void sub_255ADAD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADAD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADADB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255ADADD4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C85A0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255ADAE70(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC820, 0);
  if (v6)
  {
    v7 = v6;
    sub_255ACA09C(v32, v6);
    sub_255ADA964(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8BF0;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255AC9620(&v24, v34, v33);
    *&v24 = &unk_2867C8BF0;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C85A0;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 31);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255ADA6CC(v33, a1);
  *&v30[0] = &v24;
  *(&v30[0] + 1) = v33;
  *&result = sub_255AF67EC(v30);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255ADB134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255ADB1A8(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_255ADA6CC(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255ADB314(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_255ADA964(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255ADB480()
{
  if ((atomic_load_explicit(&qword_27F7DD068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD068))
  {
    sub_255AFE528();
  }

  if (byte_27F7DD18F >= 0)
  {
    return &qword_27F7DD178;
  }

  else
  {
    return qword_27F7DD178;
  }
}

void sub_255ADB550(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC99F8(&v2, a1);
    operator new();
  }

  sub_255ACA09C(&v2, a1);
  operator new();
}

void sub_255ADB81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255ADB858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255ADB8D4(uint64_t a1)
{
  *a1 = &unk_2867C83F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255ADB94C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255ACD404(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255ADBBE4(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255ACD404(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255ADBEAC(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255ACE58C(v4, a1);
  sub_255ADBBE4(v3, a1);
  sub_255ADBBE4(&v2, a1);
  operator new();
}

void sub_255ADBFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADC01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADC034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255ADC054(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C83F0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255ADC0F0(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC808, 0);
  if (v6)
  {
    v7 = v6;
    sub_255ACE58C(v32, v6);
    sub_255ADBBE4(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8B60;
    if (HIDWORD(v31) <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255ACD990(&v24, v34, v33);
    *&v24 = &unk_2867C8B60;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C83F0;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 32);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255ADB94C(v33, a1);
  sub_255ACE404(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255ADC3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255ADC420(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_255ADB94C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255ADC58C(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_255ADBBE4(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255ADC6F8()
{
  if ((atomic_load_explicit(&qword_27F7DD070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD070))
  {
    sub_255AFE748();
  }

  if (byte_27F7DD1A7 >= 0)
  {
    return &qword_27F7DD190;
  }

  else
  {
    return qword_27F7DD190;
  }
}

void sub_255ADC7C8(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255ACDD60(&v2, a1);
    operator new();
  }

  sub_255ACE58C(&v2, a1);
  operator new();
}

void sub_255ADCA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255ADCAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255ADCB4C(uint64_t a1)
{
  *a1 = &unk_2867C81B0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255ADCBC4(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255ABFEF0(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255ADCE5C(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255ABFEF0(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255ADD124(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255AC1558(v4, a1);
  sub_255ADCE5C(v3, a1);
  sub_255ADCE5C(&v2, a1);
  operator new();
}

void sub_255ADD26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADD298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADD2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255ADD2D0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C81B0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255ADD36C(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC7F0, 0);
  if (v6)
  {
    v7 = v6;
    sub_255AC1558(v32, v6);
    sub_255ADCE5C(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8AD0;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255AC05C4(&v24, 37, v34, v33);
    *&v24 = &unk_2867C8AD0;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C81B0;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 37);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255ADCBC4(v33, a1);
  sub_255AF328C(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255ADD62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255ADD6A0(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_255ADCBC4(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255ADD80C(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_255ADCE5C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255ADD978()
{
  if ((atomic_load_explicit(&qword_27F7DD078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD078))
  {
    sub_255AFE968();
  }

  if (byte_27F7DD1BF >= 0)
  {
    return &qword_27F7DD1A8;
  }

  else
  {
    return qword_27F7DD1A8;
  }
}

void sub_255ADDA48(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC0EB4(&v2, a1);
    operator new();
  }

  sub_255AC1558(&v2, a1);
  operator new();
}

void sub_255ADDD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255ADDD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255ADDDCC(uint64_t a1)
{
  *a1 = &unk_2867C8000;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255ADDE44(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v20 = &unk_2867C8750;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v20 = &unk_2867C8750;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_255AC4844(a1, &v20);
  *&v20 = &unk_2867C8750;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255ADE0DC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_2867C8750;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_2867C8750;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_255AC4844(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_2867C8750;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255ADE3A4(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_255AC59CC(v4, a1);
  sub_255ADE0DC(v3, a1);
  sub_255ADE0DC(&v2, a1);
  operator new();
}

void sub_255ADE4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x259C49320](v14, 0x10A3C40ED729E16);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADE514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ADE52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void *sub_255ADE54C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C8000;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CF0E0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

double sub_255ADE5E8(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC7D8, 0);
  if (v6)
  {
    v7 = v6;
    sub_255AC59CC(v32, v6);
    sub_255ADE0DC(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_2867C8A40;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_255AC4DD0(&v24, v34, v33);
    *&v24 = &unk_2867C8A40;
    sub_255B01870(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2867CF0E0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2867CF120[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2867C8000;
    if (v19 != -1)
    {
      (off_2867CF0E0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 38);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x259C49320](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_255ADDE44(v33, a1);
  sub_255AC5844(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255ADE8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255ADE918(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_255ADDE44(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255ADEA84(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_255ADE0DC(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255ADEBF0()
{
  if ((atomic_load_explicit(&qword_27F7DD080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD080))
  {
    sub_255AFEB88();
  }

  if (byte_27F7DD1D7 >= 0)
  {
    return &qword_27F7DD1C0;
  }

  else
  {
    return qword_27F7DD1C0;
  }
}

void sub_255ADECC0(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_255AC51A0(&v2, a1);
    operator new();
  }

  sub_255AC59CC(&v2, a1);
  operator new();
}

void sub_255ADEF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01870(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01870(&a9);
  _Unwind_Resume(a1);
}

void sub_255ADEFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B016E0(v13);
  sub_255B01ABC(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255B01ABC(&a9);
  _Unwind_Resume(a1);
}

void *sub_255ADF044(void *a1)
{
  *a1 = &unk_2867C8F70;
  sub_255B01870(a1 + 1);
  return a1;
}

void sub_255ADF088(void *a1)
{
  *a1 = &unk_2867C8F70;
  sub_255B01870(a1 + 1);

  JUMPOUT(0x259C49320);
}

void *sub_255ADF0EC(void *a1)
{
  *a1 = &unk_2867C8F50;
  sub_255B01ABC(a1 + 1);
  return a1;
}

void sub_255ADF130(void *a1)
{
  *a1 = &unk_2867C8F50;
  sub_255B01ABC(a1 + 1);

  JUMPOUT(0x259C49320);
}

void sub_255ADF194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255B00FAC(a1);
  v5 = sub_255ADF2A4(v4);
  if (HIDWORD(v5))
  {

    sub_255AE2108(a2, v5);
  }

  __cxa_allocate_exception(0x10uLL);
  sub_255B00FAC(a1);
  sub_255ADF570();
}

void sub_255ADF26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_255ADF2A4(int a1)
{
  if (a1 > 1278226535)
  {
    if (a1 <= 1647589489)
    {
      if (a1 > 1380410944)
      {
        switch(a1)
        {
          case 1380410945:
            return 0x100000020;
          case 1380411457:
            return 0x10000001FLL;
          case 1647392359:
            return 0x100000002;
        }

        return 0;
      }

      if (a1 != 1278226536)
      {
        if (a1 == 1380401729)
        {
          return 0x10000001DLL;
        }

        return 0;
      }
    }

    else
    {
      if (a1 <= 1717856626)
      {
        if (a1 == 1647589490)
        {
          return 0x100000016;
        }

        if (a1 == 1647719521)
        {
          return 0x100000026;
        }

        v1 = 1717855600;
LABEL_22:
        if (a1 != v1)
        {
          return 0;
        }

        return 0x100000004;
      }

      if (a1 == 1717856627)
      {
        return 0x100000004;
      }

      if (a1 != 1751410032 && a1 != 1751411059)
      {
        return 0;
      }
    }

    return 0x100000003;
  }

  if (a1 <= 843264103)
  {
    if (a1 <= 842285638)
    {
      if (a1 == 24)
      {
        return 0x100000015;
      }

      if (a1 == 32)
      {
        return 0x100000025;
      }
    }

    else
    {
      switch(a1)
      {
        case 842285639:
          return 0x100000011;
        case 843264056:
          return 0x100000005;
        case 843264102:
          return 0x100000008;
      }
    }

    return 0;
  }

  if (a1 > 1111970368)
  {
    if (a1 == 1111970369)
    {
      return 0x100000019;
    }

    if (a1 == 1278226488)
    {
      return 0x100000001;
    }

    v1 = 1278226534;
    goto LABEL_22;
  }

  if (a1 == 843264104)
  {
    return 0x100000007;
  }

  if (a1 == 1094862674)
  {
    return 0x100000021;
  }

  return 0;
}

void sub_255ADF570()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "Attempting to map pixel buffer of format ";
  v2[2] = v0;
  v2[3] = "Attempting to map pixel buffer of format ";
  v2[4] = "Attempting to map pixel buffer of format ";
  v3 = v2;
  sub_255A9A020(&v3);
  sub_255AECA68();
}

void sub_255ADF690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255ADF6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255ADF6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255ADF6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255ADF6E0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = a2;
  if (!sub_255B011E8(a1))
  {
    if (!v3)
    {

      sub_255ADF194(a1, a3);
    }

    __cxa_allocate_exception(0x10uLL);
    LODWORD(v12) = sub_255B00FAC(a1);
    sub_255ADFCA0(&v15, &v14);
  }

  sub_255B044C0(a1, &v12);
  if (v13)
  {
    v7 = *v13;
    v6 = v13[1];
    if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v3 = v14;
      if (v7)
      {
LABEL_6:
        sub_255BFC448(&v12, v3, v11);
        sub_255B3CEB8(v11, &v15);
      }
    }

    else
    {
      v3 = v14;
      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

  sub_255B02EC4(a1, v3, &v15);
  if (BYTE8(v16) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255B00FAC(a1);
    sub_255AE00F8(&v15);
    sub_255ADFEC0(&v10, &v14);
  }

  if (!sub_255B011E8(&v15))
  {
LABEL_22:
    sub_255ADF194(&v15, a3);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 612, "!ex_child_buffer->IsPlanar()", 0x1CuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v8 = qword_27F7DD608, v9 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_21:
      qword_27F7DD620(*algn_27F7DD628, "!ex_child_buffer->IsPlanar()", 28, &unk_255C2500B, 0);
      goto LABEL_22;
    }
  }

  else
  {
    v8 = qword_27F7DD608;
    v9 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    (*v8)(*(v8 + 8), "!ex_child_buffer->IsPlanar()", 28, &unk_255C2500B, 0);
    v8 += 16;
  }

  while (v8 != v9);
  if (byte_27F7DD630)
  {
    goto LABEL_21;
  }

LABEL_25:
  abort();
}

void sub_255ADFBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      sub_255AEC9E0(&a23);
      sub_255BFA730(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void sub_255ADFCA0(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v7 = v3;
  v8 = "Attempting to map plane ";
  v9 = v3;
  v10 = "Attempting to map plane ";
  v11 = "Attempting to map plane ";
  v5.__r_.__value_.__r.__words[0] = &v7;
  sub_255A99438(&v5);
  std::to_string(&v5, *a2);
  v7 = v3;
  v8 = &v5;
  v9 = v3;
  v10 = &v5;
  v11 = &v5;
  if (v4 != -1)
  {
    v6 = &v7;
    (off_2867CF158[v4])(&v6, v3);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    v7 = v3;
    v8 = " of nonplanar pixel buffer of format ";
    v9 = v3;
    v10 = " of nonplanar pixel buffer of format ";
    v11 = " of nonplanar pixel buffer of format ";
    if (v4 != -1)
    {
      v5.__r_.__value_.__r.__words[0] = &v7;
      (off_2867CF1A0[v4])(&v5, v3);
      sub_255AECA68();
    }

    sub_255A7C284();
  }

  sub_255A7C284();
}

void sub_255ADFE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255ADFE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A993DC(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255ADFE8CLL);
}

void sub_255ADFEC0(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v7 = v3;
  v8 = "Attempting to map plane ";
  v9 = v3;
  v10 = "Attempting to map plane ";
  v11 = "Attempting to map plane ";
  v5.__r_.__value_.__r.__words[0] = &v7;
  sub_255A99438(&v5);
  std::to_string(&v5, *a2);
  v7 = v3;
  v8 = &v5;
  v9 = v3;
  v10 = &v5;
  v11 = &v5;
  if (v4 != -1)
  {
    v6 = &v7;
    (off_2867CF158[v4])(&v6, v3);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    v7 = v3;
    v8 = " of pixel buffer of format ";
    v9 = v3;
    v10 = " of pixel buffer of format ";
    v11 = " of pixel buffer of format ";
    if (v4 != -1)
    {
      v5.__r_.__value_.__r.__words[0] = &v7;
      (off_2867CF1D0[v4])(&v5, v3);
      sub_255AECA68();
    }

    sub_255A7C284();
  }

  sub_255A7C284();
}

void sub_255AE00A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255AE00D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A993DC(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255AE00C4);
}

uint64_t sub_255AE00F8(uint64_t result)
{
  if (*(result + 32))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C4000;
    __cxa_throw(exception, &unk_2867C9F48, std::exception::~exception);
  }

  return result;
}

void sub_255AE0150(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_255B011E8(a2);
  if (a3 && !v6)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 642, "buffer.IsPlanar() || (plane_index == 0)", 0x27uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_20:
        qword_27F7DD620(*algn_27F7DD628, "buffer.IsPlanar() || (plane_index == 0)", 39, &unk_255C2500B, 0);
        sub_255B011E8(a2);
        goto LABEL_21;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_137;
      }
    }

    do
    {
      v16 = *v7;
      v15 = *(v7 + 8);
      v7 += 16;
      v16(v15, "buffer.IsPlanar() || (plane_index == 0)", 39, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_20;
  }

  v9 = sub_255B011E8(a2);
  if (a3 || v9)
  {
LABEL_21:
    v17 = sub_255B00FAC(a2);
    if (sub_255AF1D38(v17) > a3)
    {
      goto LABEL_30;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 649, "plane_index < num_planes", 0x18uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v18 = qword_27F7DD608, v19 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_29:
        qword_27F7DD620(*algn_27F7DD628, "plane_index < num_planes", 24, &unk_255C2500B, 0);
LABEL_30:
        if (sub_255B00FAC(a2) != 875704438 && sub_255B00FAC(a2) != 875704422)
        {
          sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 660, &unk_255C2500B, 0, "Can't view the given planar format", 0x22uLL, sub_255C101E0);
          abort();
        }

        v22 = sub_255B054CC(a2, a3);
        v23 = sub_255B04988(a2, a3);
        v72 = v23;
        v24 = sub_255B052C4(a2, a3);
        v71 = v24;
        if (a3)
        {
          sub_255AF1F80(&v75, v22, &v72, &v71);
          *a1 = &unk_2867C56D0;
          sub_255AEFF2C(&v75, a1 + 8);
LABEL_54:
          v31 = v75.__r_.__value_.__r.__words[2];
          if (v75.__r_.__value_.__r.__words[2])
          {
            if (!atomic_fetch_add((v75.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v31->__on_zero_shared)(v31);
              std::__shared_weak_count::__release_weak(v31);
            }
          }

          return;
        }

        v74 = 0;
        v75.__r_.__value_.__r.__words[0] = &unk_2867C55D0;
        v25 = HIDWORD(v23) == 0;
        v26 = v23;
        if (!v23)
        {
          v25 = 1;
        }

        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24 << 32;
        }

        v73 = 0;
        if (v25)
        {
          v23 = 0;
        }

        if (HIDWORD(v27) * HIDWORD(v23) != -1)
        {
LABEL_50:
          if (v26)
          {
            v30 = v27 + 1;
          }

          else
          {
            v30 = v27;
          }

          *&v75.__r_.__value_.__r.__words[1] = 0uLL;
          v76[0] = v22;
          v76[1] = v23;
          v76[2] = v30;
          v77 = 0;
          *a1 = &unk_2867C56D0;
          sub_255AEF26C(&v75, a1 + 8);
          goto LABEL_54;
        }

        sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
        if (byte_27F7DD630 == 1)
        {
          if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
          {
LABEL_49:
            qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
            goto LABEL_50;
          }
        }

        else
        {
          v28 = qword_27F7DD608;
          v29 = *algn_27F7DD610;
          if (qword_27F7DD608 == *algn_27F7DD610)
          {
            goto LABEL_137;
          }
        }

        do
        {
          (*v28)(*(v28 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          v28 += 16;
        }

        while (v28 != v29);
        if (byte_27F7DD630)
        {
          goto LABEL_49;
        }

LABEL_137:
        abort();
      }
    }

    else
    {
      v18 = qword_27F7DD608;
      v19 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_137;
      }
    }

    do
    {
      v21 = *v18;
      v20 = *(v18 + 8);
      v18 += 16;
      v21(v20, "plane_index < num_planes", 24, &unk_255C2500B, 0);
    }

    while (v18 != v19);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_29;
  }

  v10 = sub_255B00FAC(a2);
  v11 = sub_255ADF2A4(v10);
  if (!HIDWORD(v11))
  {
    __cxa_allocate_exception(0x10uLL);
    LODWORD(v73) = sub_255B00FAC(a2);
    sub_255AEE9BC();
  }

  switch(v11)
  {
    case 1:
      v12 = *(a2 + 8);
      if (!v12)
      {
        goto LABEL_135;
      }

      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }

      if (!v14)
      {
        goto LABEL_135;
      }

      sub_255ABB690(v76, a2);
      v77 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867C55D0;
      *a1 = &unk_2867C56D0;
      sub_255AEF26C(&v75, a1 + 8);
      goto LABEL_54;
    case 2:
      v59 = *(a2 + 8);
      if (!v59)
      {
        goto LABEL_135;
      }

      v61 = *v59;
      v60 = v59[1];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v60->__on_zero_shared)(v60);
          std::__shared_weak_count::__release_weak(v60);
        }
      }

      if (!v61)
      {
        goto LABEL_135;
      }

      sub_255AC1BB8(v76, a2);
      v77 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF228;
      *a1 = &unk_2867C56D0;
      sub_255AEF59C(&v75, a1 + 8);
      goto LABEL_54;
    case 3:
      v47 = *(a2 + 8);
      if (!v47)
      {
        goto LABEL_135;
      }

      v49 = *v47;
      v48 = v47[1];
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }
      }

      if (!v49)
      {
        goto LABEL_135;
      }

      sub_255AC1BB8(v76, a2);
      v77 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867C5390;
      *a1 = &unk_2867C56D0;
      sub_255AEF8CC(&v75, a1 + 8);
      goto LABEL_54;
    case 4:
      v56 = *(a2 + 8);
      if (!v56)
      {
        goto LABEL_135;
      }

      v58 = *v56;
      v57 = v56[1];
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v57->__on_zero_shared)(v57);
          std::__shared_weak_count::__release_weak(v57);
        }
      }

      if (!v58)
      {
        goto LABEL_135;
      }

      sub_255ACA6FC(v76, a2);
      v77 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867C5310;
      *a1 = &unk_2867C56D0;
      sub_255AEFBFC(&v75, a1 + 8);
      goto LABEL_54;
    case 5:
      v38 = *(a2 + 8);
      if (!v38)
      {
        goto LABEL_135;
      }

      v40 = *v38;
      v39 = v38[1];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }
      }

      if (!v40)
      {
        goto LABEL_135;
      }

      sub_255ABD264(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867C5250;
      *a1 = &unk_2867C56D0;
      sub_255AEFF2C(&v75, a1 + 8);
      goto LABEL_54;
    case 7:
      v62 = *(a2 + 8);
      if (!v62)
      {
        goto LABEL_135;
      }

      v64 = *v62;
      v63 = v62[1];
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v63->__on_zero_shared)(v63);
          std::__shared_weak_count::__release_weak(v63);
        }
      }

      if (!v64)
      {
        goto LABEL_135;
      }

      sub_255AC7DA8(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF320;
      *a1 = &unk_2867C56D0;
      sub_255AF025C(&v75, a1 + 8);
      goto LABEL_54;
    case 8:
      v50 = *(a2 + 8);
      if (!v50)
      {
        goto LABEL_135;
      }

      v52 = *v50;
      v51 = v50[1];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v51->__on_zero_shared)(v51);
          std::__shared_weak_count::__release_weak(v51);
        }
      }

      if (!v52)
      {
        goto LABEL_135;
      }

      sub_255ACBD90(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867C51D0;
      *a1 = &unk_2867C56D0;
      sub_255AF058C(&v75, a1 + 8);
      goto LABEL_54;
    case 21:
      v35 = *(a2 + 8);
      if (!v35)
      {
        goto LABEL_135;
      }

      v37 = *v35;
      v36 = v35[1];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }
      }

      if (!v37)
      {
        goto LABEL_135;
      }

      sub_255ABE8CC(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF418;
      *a1 = &unk_2867C56D0;
      sub_255AF08BC(&v75, a1 + 8);
      goto LABEL_54;
    case 22:
      v41 = *(a2 + 8);
      if (!v41)
      {
        goto LABEL_135;
      }

      v43 = *v41;
      v42 = v41[1];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v42->__on_zero_shared)(v42);
          std::__shared_weak_count::__release_weak(v42);
        }
      }

      if (!v43)
      {
        goto LABEL_135;
      }

      sub_255AC324C(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF510;
      *a1 = &unk_2867C56D0;
      sub_255AF0BEC(&v75, a1 + 8);
      goto LABEL_54;
    case 25:
      v44 = *(a2 + 8);
      if (!v44)
      {
        goto LABEL_135;
      }

      v46 = *v44;
      v45 = v44[1];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v45->__on_zero_shared)(v45);
          std::__shared_weak_count::__release_weak(v45);
        }
      }

      if (!v46)
      {
        goto LABEL_135;
      }

      sub_255ABFEF0(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF608;
      *a1 = &unk_2867C56D0;
      sub_255AF0F1C(&v75, a1 + 8);
      goto LABEL_54;
    case 31:
      v53 = *(a2 + 8);
      if (!v53)
      {
        goto LABEL_135;
      }

      v55 = *v53;
      v54 = v53[1];
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v54->__on_zero_shared)(v54);
          std::__shared_weak_count::__release_weak(v54);
        }
      }

      if (!v55)
      {
        goto LABEL_135;
      }

      sub_255AC4844(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF700;
      *a1 = &unk_2867C56D0;
      sub_255AF124C(&v75, a1 + 8);
      goto LABEL_54;
    case 32:
      v68 = *(a2 + 8);
      if (!v68)
      {
        goto LABEL_135;
      }

      v70 = *v68;
      v69 = v68[1];
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v69->__on_zero_shared)(v69);
          std::__shared_weak_count::__release_weak(v69);
        }
      }

      if (!v70)
      {
        goto LABEL_135;
      }

      sub_255ACD404(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF7F8;
      *a1 = &unk_2867C56D0;
      sub_255AF157C(&v75, a1 + 8);
      goto LABEL_54;
    case 37:
      v65 = *(a2 + 8);
      if (!v65)
      {
        goto LABEL_135;
      }

      v67 = *v65;
      v66 = v65[1];
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v66->__on_zero_shared)(v66);
          std::__shared_weak_count::__release_weak(v66);
        }
      }

      if (!v67)
      {
        goto LABEL_135;
      }

      sub_255ABFEF0(v76, a2);
      v78 = 0;
      *&v75.__r_.__value_.__r.__words[1] = 0uLL;
      v75.__r_.__value_.__r.__words[0] = &unk_2867CF8F0;
      *a1 = &unk_2867C56D0;
      sub_255AF18AC(&v75, a1 + 8);
      goto LABEL_54;
    case 38:
      v32 = *(a2 + 8);
      if (v32)
      {
        v34 = *v32;
        v33 = v32[1];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }
        }

        if (v34)
        {
          sub_255AC4844(v76, a2);
          v78 = 0;
          *&v75.__r_.__value_.__r.__words[1] = 0uLL;
          v75.__r_.__value_.__r.__words[0] = &unk_2867CF9E8;
          *a1 = &unk_2867C56D0;
          sub_255AF1BDC(&v75, a1 + 8);
          goto LABEL_54;
        }
      }

LABEL_135:
      *(a1 + 40) = 0;
      *a1 = &unk_2867C56D0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 48) = 1;
      *(a1 + 52) = 0;
      break;
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}