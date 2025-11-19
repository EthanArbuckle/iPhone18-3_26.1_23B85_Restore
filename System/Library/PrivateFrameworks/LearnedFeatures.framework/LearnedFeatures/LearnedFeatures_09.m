void sub_255B14FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B14FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B14FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B14FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_255BFA730(va1);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B15018(uint64_t result, __int128 *a2)
{
  v2 = result;
  *result = &unk_2867C46B8;
  *(result + 8) = 0;
  if (*(a2 + 6))
  {
    v3 = *(a2 + 7) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    operator new();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = &unk_2867C4068;
  *(result + 40) = 0;
  if (*(a2 + 6) && *(a2 + 7))
  {
    v12 = &unk_2867C4068;
    v13 = 0uLL;
    sub_255B148B4(&v8, &v12);
    v4 = v10;
    *(v2 + 48) = v9;
    *(v2 + 64) = v4;
    *(v2 + 80) = v11;
    v12 = &unk_2867C4068;
    v5 = *(&v13 + 1);
    if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v2;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(result + 80) = *(a2 + 4);
    *(result + 48) = v6;
    *(result + 64) = v7;
  }

  return result;
}

void sub_255B152D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B15318(uint64_t a1)
{
  *a1 = &unk_2867C46B8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B15390(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_255A7C284();
        }

        sub_255C010CC(v22);
LABEL_35:
        sub_255B1575C(v20, a1);
        v24[0] = a2;
        v24[1] = v20;
        sub_255AF5898(v24);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B15660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B15674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B15688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B156B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_255A7C284();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_255B1575C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_2867C4068;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B148B4(a1, v19);
          v19[0] = &unk_2867C4068;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_2867C4068;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 2;
  *(&v21 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v21), 2);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255B159E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B15A00(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "ref.IsValid()", 13, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_2867C4068;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_255BFBBB8(v42);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_22:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_31:
          qword_27F7DD620(*algn_27F7DD628, "Contains(pf::formats::F16(), ref.Format())", 42, &unk_255C2500B, 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, &unk_255C2500B, 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_2867C4068;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_2867C4068;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_2867C4068;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_2867C4068;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_255BF9468(&v36, 0);
  *&v44 = &unk_2867C4068;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_255BFAAA8(&v44);
  v22 = sub_255BFAEEC(&v44);
  v23 = sub_255BFB330(&v44);
  v24 = v21;
  v25 = sub_255BFB774(&v44) << 31;
  *&v44 = &unk_2867C4068;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_2867C4068;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 4;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v33 = qword_27F7DD608, v34 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_64:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = qword_27F7DD608;
      v34 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_27F7DD630)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }

LABEL_65:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_255B16108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B1611C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B16130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B16144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_255BFA730(va1);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B16164(uint64_t result, __int128 *a2)
{
  v2 = result;
  *result = &unk_2867C4628;
  *(result + 8) = 0;
  if (*(a2 + 6))
  {
    v3 = *(a2 + 7) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    operator new();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = &unk_2867C4068;
  *(result + 40) = 0;
  if (*(a2 + 6) && *(a2 + 7))
  {
    v12 = &unk_2867C4068;
    v13 = 0uLL;
    sub_255B15A00(&v8, &v12);
    v4 = v10;
    *(v2 + 48) = v9;
    *(v2 + 64) = v4;
    *(v2 + 80) = v11;
    v12 = &unk_2867C4068;
    v5 = *(&v13 + 1);
    if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v2;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(result + 80) = *(a2 + 4);
    *(result + 48) = v6;
    *(result + 64) = v7;
  }

  return result;
}

void sub_255B1641C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B16464(uint64_t a1)
{
  *a1 = &unk_2867C4628;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B164DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_255A7C284();
        }

        sub_255C010CC(v22);
LABEL_35:
        sub_255B168A8(v20, a1);
        v24[0] = a2;
        v24[1] = v20;
        sub_255AF67EC(v24);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B167AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B167C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B167D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B167E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B16804(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_255A7C284();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_255B168A8(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_2867C4068;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B15A00(a1, v19);
          v19[0] = &unk_2867C4068;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_2867C4068;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 4;
  *(&v21 + 4) = v12;
  v13 = 4 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
  v16 = __PAIR64__(DWORD1(v21), 4);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255B16B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B16B4C(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "ref.IsValid()", 13, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v41[0] = &unk_2867C4068;
  v41[1] = v12;
  v42 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_255BFBBB8(v41);
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_31:
          qword_27F7DD620(*algn_27F7DD628, "Contains(pf::formats::F32(), ref.Format())", 42, &unk_255C2500B, 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, &unk_255C2500B, 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
  {
    goto LABEL_22;
  }

LABEL_32:
  v41[0] = &unk_2867C4068;
  v16 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v39 = *(a2 + 8);
    v40 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v38 = &unk_2867C4068;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v39 = *(a2 + 8);
  v40 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_2867C4068;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v35 = &unk_2867C4068;
  v36 = v19;
  v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_255BF9468(&v35, 0);
  v43[0] = &unk_2867C4068;
  v43[1] = v36;
  v44 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_255BFAAA8(v43);
  v22 = sub_255BFAEEC(v43);
  v23 = sub_255BFB330(v43);
  v24 = v21;
  v25 = sub_255BFB774(v43) << 30;
  v43[0] = &unk_2867C4068;
  v26 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v35 = &unk_2867C4068;
  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *a1 = v20;
  a1[1] = v30;
  a1[2] = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  if (HIDWORD(v25) * HIDWORD(v30) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v31 = qword_27F7DD608, v32 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_64:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v31 = qword_27F7DD608;
      v32 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v34 = *v31;
      v33 = *(v31 + 8);
      v31 += 16;
      v34(v33, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v31 != v32);
    if (byte_27F7DD630)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }
}

void sub_255B171F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B17208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_255BFA730(&a18);
  sub_255BFA730(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255B17224(uint64_t a1, _DWORD *a2)
{
  *a1 = &unk_2867C4598;
  *(a1 + 8) = 0;
  if (*a2)
  {
    v3 = a2[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = &unk_2867C4068;
  *(a1 + 40) = 0;
  if (*a2 && a2[1])
  {
    v10 = &unk_2867C4068;
    v11 = 0uLL;
    sub_255B16B4C(&v8, &v10);
    v4 = v9;
    v10 = &unk_2867C4068;
    v5 = *(&v11 + 1);
    if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = v4;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = v7;
    }
  }

  else
  {
    v4 = *a2;
  }

  *(a1 + 48) = v4;
  return a1;
}

void sub_255B174A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_255BFA660(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B174E8(uint64_t a1)
{
  *a1 = &unk_2867C4598;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B17560(uint64_t a1, char **a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_255A7C284();
        }

        sub_255C010CC(v22);
LABEL_35:
        sub_255B17928(v20, a1);
        sub_255AF74DC(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B1782C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B17840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B17854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B17868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B17884(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_255A7C284();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_255B17928(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_2867C4068;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B16B4C(a1, v20);
          v20[0] = &unk_2867C4068;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_2867C4068;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B17C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B17C84(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "ref.IsValid()", 13, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_2867C4068;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_255BFBBB8(v42);
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_31:
          qword_27F7DD620(*algn_27F7DD628, "Contains(pf::formats::F32(), ref.Format())", 42, &unk_255C2500B, 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, &unk_255C2500B, 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_2867C4068;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_2867C4068;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_2867C4068;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_2867C4068;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_255BF9468(&v36, 0);
  *&v44 = &unk_2867C4068;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_255BFAAA8(&v44);
  v22 = sub_255BFAEEC(&v44);
  v23 = sub_255BFB330(&v44);
  v24 = v21;
  v25 = sub_255BFB774(&v44) << 30;
  *&v44 = &unk_2867C4068;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_2867C4068;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 2;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v33 = qword_27F7DD608, v34 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_64:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = qword_27F7DD608;
      v34 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_27F7DD630)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }

LABEL_65:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_255B1838C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B183A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B183B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B183C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_255BFA730(va1);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B183E8(uint64_t result, __int128 *a2)
{
  v2 = result;
  *result = &unk_2867C4508;
  *(result + 8) = 0;
  if (*(a2 + 6))
  {
    v3 = *(a2 + 7) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    operator new();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = &unk_2867C4068;
  *(result + 40) = 0;
  if (*(a2 + 6) && *(a2 + 7))
  {
    v12 = &unk_2867C4068;
    v13 = 0uLL;
    sub_255B17C84(&v8, &v12);
    v4 = v10;
    *(v2 + 48) = v9;
    *(v2 + 64) = v4;
    *(v2 + 80) = v11;
    v12 = &unk_2867C4068;
    v5 = *(&v13 + 1);
    if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v2;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(result + 80) = *(a2 + 4);
    *(result + 48) = v6;
    *(result + 64) = v7;
  }

  return result;
}

void sub_255B186A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B186E8(uint64_t a1)
{
  *a1 = &unk_2867C4508;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B18760(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_255A7C284();
        }

        sub_255C010CC(v22);
LABEL_35:
        sub_255B18B28(v20, a1);
        sub_255AF7C3C(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B18A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B18A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B18A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B18A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B18A84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_255A7C284();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_255B18B28(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_2867C4068;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B17C84(a1, v19);
          v19[0] = &unk_2867C4068;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_2867C4068;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 2;
  *(&v21 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v21), 2);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255B18DB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B18DCC(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "ref.IsValid()", 13, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_2867C4068;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_255BFBBB8(v42);
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_31:
          qword_27F7DD620(*algn_27F7DD628, "Contains(pf::formats::F32(), ref.Format())", 42, &unk_255C2500B, 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, &unk_255C2500B, 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_2867C4068;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_2867C4068;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_2867C4068;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_2867C4068;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_255BF9468(&v36, 0);
  *&v44 = &unk_2867C4068;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_255BFAAA8(&v44);
  v22 = sub_255BFAEEC(&v44);
  v23 = sub_255BFB330(&v44);
  v24 = v21;
  v25 = sub_255BFB774(&v44) << 30;
  *&v44 = &unk_2867C4068;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_2867C4068;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 4;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v33 = qword_27F7DD608, v34 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_64:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = qword_27F7DD608;
      v34 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_27F7DD630)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }

LABEL_65:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_255B194D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B194E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B194FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B19510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_255BFA730(va1);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B19530(uint64_t result, __int128 *a2)
{
  v2 = result;
  *result = &unk_2867C4478;
  *(result + 8) = 0;
  if (*(a2 + 6))
  {
    v3 = *(a2 + 7) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    operator new();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = &unk_2867C4068;
  *(result + 40) = 0;
  if (*(a2 + 6) && *(a2 + 7))
  {
    v12 = &unk_2867C4068;
    v13 = 0uLL;
    sub_255B18DCC(&v8, &v12);
    v4 = v10;
    *(v2 + 48) = v9;
    *(v2 + 64) = v4;
    *(v2 + 80) = v11;
    v12 = &unk_2867C4068;
    v5 = *(&v13 + 1);
    if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v2;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(result + 80) = *(a2 + 4);
    *(result + 48) = v6;
    *(result + 64) = v7;
  }

  return result;
}

void sub_255B197E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B19830(uint64_t a1)
{
  *a1 = &unk_2867C4478;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B198A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_2867C4028;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_255A7C284();
        }

        sub_255C010CC(v22);
LABEL_35:
        sub_255B19C70(v20, a1);
        sub_255ACE404(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B19B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B19B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B19B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B19BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B19BCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_255A7C284();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_255B19C70(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_2867C4068;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B18DCC(a1, v19);
          v19[0] = &unk_2867C4068;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_2867C4068;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 4;
  *(&v21 + 4) = v12;
  v13 = 4 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
  v16 = __PAIR64__(DWORD1(v21), 4);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255B19EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_255B19F14(uint64_t a1)
{
  *a1 = &unk_2867C43E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B19F8C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_2867C4068;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0AEDC(a1, v20);
          v20[0] = &unk_2867C4068;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_2867C4068;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B1A2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B1A2E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_2867C4068;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0AEDC(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_2867C4068;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_2867C4068;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B1A638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B1A668(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_255A7C284();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_255B1A2E8(v16, a1);
      sub_255B1A2E8(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v18);
  goto LABEL_25;
}

void sub_255B1A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1A964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1A978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1A98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B0B720(v8);
  MEMORY[0x259C49320](v8, 0x10A3C40EE3858B8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1A9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1A9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1A9F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

void *sub_255B1ACAC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C43E8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

double sub_255B1AD48(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA380, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v39, lpsrc, 1);
    v13 = v39;
    v14 = *(v39 + 16);
    v29 = *v39;
    v30[0] = v14;
    *&v39 = 0;
    MEMORY[0x259C49320](v13, 0xC400A2AC0F1, v15);
    sub_255B19F8C(&v39, a1);
    sub_255AF2374(&v29, &v39);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v36 = v21;
    v37 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v36;
    }

    v35 = &unk_2867C4048;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v36 = v17;
    v37 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v36;
    }

    v35 = &unk_2867C4048;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_255A7C284();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v36 = v9;
    v37 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v36;
    }

    v35 = &unk_2867C4048;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_30:
        sub_255C00FD0(v36);
      }
    }
  }

  sub_255B1A2E8(&v33, v7);
  *&v29 = &unk_2867C5048;
  if (HIDWORD(v34) <= 0x20)
  {
    v25 = 32;
  }

  else
  {
    v25 = HIDWORD(v34);
  }

  v38[0] = *(&v33 + 1);
  v38[1] = v34 | (v25 << 32);
  sub_255B0B45C(&v29, v38);
  v39 = v33;
  v40 = v34;
  sub_255B0B7F4(&v29, &v39);
  *&v29 = &unk_2867C5048;
  sub_255BF9318(&v35);
  v26 = v31;
  *(a1 + 8) = DWORD2(v29);
  v27 = *(a1 + 40);
  if (v27 == -1)
  {
    if (v26 == -1)
    {
      result = *&v32;
      *(a1 + 48) = v32;
      return result;
    }
  }

  else if (v26 == -1)
  {
    (off_2867CFFE8[v27])(&v39, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_39;
  }

  *&v39 = a1 + 16;
  (off_2867D0018[v26])(&v39);
LABEL_39:
  v28 = v31;
  result = *&v32;
  *(a1 + 48) = v32;
  *&v29 = &unk_2867C43E8;
  if (v28 != -1)
  {
    (off_2867CFFE8[v28])(&v39, v30);
  }

  return result;
}

void sub_255B1B178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1B18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1B1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_255B0B720(&a9);
  sub_255BF9318(&a20);
  _Unwind_Resume(a1);
}

void sub_255B1B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1B22C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_255B19F8C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

void sub_255B1B398(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_255B1A2E8(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

uint64_t *sub_255B1B504()
{
  if ((atomic_load_explicit(&qword_27F7DD1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD1F8))
  {
    sub_255B54D04();
  }

  if (byte_27F7DD297 >= 0)
  {
    return &qword_27F7DD280;
  }

  else
  {
    return qword_27F7DD280;
  }
}

void sub_255B1B5D4(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    switch(v2)
    {
      case 2:
        v16 = *(a1 + 24);
        v17 = *(a1 + 32);
        v29 = v16;
        v30 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v16 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v29 = v12;
        v30 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v12 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v3 = *(a1 + 24);
        v4 = *(a1 + 32);
        v29 = v3;
        v30 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          v3 = v29;
        }

        v28 = &unk_2867C4028;
        if (v3)
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }

          if (v6)
          {
LABEL_39:
            sub_255C010CC(v29);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v24)
    {
      goto LABEL_57;
    }

    v27 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_58;
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v29 = v8;
      v30 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v29;
      }

      v28 = &unk_2867C4048;
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
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v29 = v20;
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v20)
    {
      goto LABEL_57;
    }

    v23 = *v20;
    v22 = v20[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    if (!v23)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_255C00FD0(v29);
  goto LABEL_57;
}

void sub_255B1BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF9318(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B1BD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF973C(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B1BD98(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_255B1C054(uint64_t a1)
{
  *a1 = &unk_2867C41A8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B1C0CC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_2867C4068;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B10458(a1, v20);
          v20[0] = &unk_2867C4068;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_2867C4068;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B1C40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B1C428(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_2867C4068;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B10458(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_2867C4068;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_2867C4068;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B1C778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B1C7A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_255A7C284();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_255B1C428(v16, a1);
      sub_255B1C428(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v18);
  goto LABEL_25;
}

void sub_255B1CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1CAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1CAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1CACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B10DE8(v8);
  MEMORY[0x259C49320](v8, 0x10A3C40EE3858B8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1CB30(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

void *sub_255B1CDEC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C41A8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

double sub_255B1CE88(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA308, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v39, lpsrc, 2);
    v13 = v39;
    v14 = *(v39 + 16);
    v29 = *v39;
    v30[0] = v14;
    *&v39 = 0;
    MEMORY[0x259C49320](v13, 0xC400A2AC0F1, v15);
    sub_255B1C0CC(&v39, a1);
    sub_255AF38B0(&v29, &v39);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v36 = v21;
    v37 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v36;
    }

    v35 = &unk_2867C4048;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v36 = v17;
    v37 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v36;
    }

    v35 = &unk_2867C4048;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_255A7C284();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v36 = v9;
    v37 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v36;
    }

    v35 = &unk_2867C4048;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_30:
        sub_255C00FD0(v36);
      }
    }
  }

  sub_255B1C428(&v33, v7);
  *&v29 = &unk_2867C4D78;
  if (HIDWORD(v34) <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = HIDWORD(v34);
  }

  v38[0] = *(&v33 + 1);
  v38[1] = v34 | (v25 << 32);
  sub_255B10B24(&v29, v38);
  v39 = v33;
  v40 = v34;
  sub_255B10E60(&v29, &v39);
  *&v29 = &unk_2867C4D78;
  sub_255BF9318(&v35);
  v26 = v31;
  *(a1 + 8) = DWORD2(v29);
  v27 = *(a1 + 40);
  if (v27 == -1)
  {
    if (v26 == -1)
    {
      result = *&v32;
      *(a1 + 48) = v32;
      return result;
    }
  }

  else if (v26 == -1)
  {
    (off_2867CFFE8[v27])(&v39, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_39;
  }

  *&v39 = a1 + 16;
  (off_2867D0018[v26])(&v39);
LABEL_39:
  v28 = v31;
  result = *&v32;
  *(a1 + 48) = v32;
  *&v29 = &unk_2867C41A8;
  if (v28 != -1)
  {
    (off_2867CFFE8[v28])(&v39, v30);
  }

  return result;
}

void sub_255B1D2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1D2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1D2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_255B10DE8(&a9);
  sub_255BF9318(&a20);
  _Unwind_Resume(a1);
}

void sub_255B1D32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1D36C(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_255B1C0CC(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

void sub_255B1D4D8(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_255B1C428(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

uint64_t *sub_255B1D644()
{
  if ((atomic_load_explicit(&qword_27F7DD200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD200))
  {
    sub_255B54E08();
  }

  if (byte_27F7DD2AF >= 0)
  {
    return &qword_27F7DD298;
  }

  else
  {
    return qword_27F7DD298;
  }
}

void sub_255B1D714(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    switch(v2)
    {
      case 2:
        v16 = *(a1 + 24);
        v17 = *(a1 + 32);
        v29 = v16;
        v30 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v16 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v29 = v12;
        v30 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v12 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v3 = *(a1 + 24);
        v4 = *(a1 + 32);
        v29 = v3;
        v30 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          v3 = v29;
        }

        v28 = &unk_2867C4028;
        if (v3)
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }

          if (v6)
          {
LABEL_39:
            sub_255C010CC(v29);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v24)
    {
      goto LABEL_57;
    }

    v27 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_58;
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v29 = v8;
      v30 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v29;
      }

      v28 = &unk_2867C4048;
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
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v29 = v20;
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v20)
    {
      goto LABEL_57;
    }

    v23 = *v20;
    v22 = v20[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    if (!v23)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_255C00FD0(v29);
  goto LABEL_57;
}

void sub_255B1DE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF9318(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B1DE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF973C(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B1DED8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_255B1E194(uint64_t a1)
{
  *a1 = &unk_2867C4748;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B1E20C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_2867C4068;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B1377C(a1, v20);
          v20[0] = &unk_2867C4068;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_2867C4068;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B1E54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B1E568(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_2867C4068;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B1377C(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_2867C4068;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_2867C4068;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B1E8B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B1E8E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_255A7C284();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_255B1E568(v16, a1);
      sub_255B1E568(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v18);
  goto LABEL_25;
}

void sub_255B1EBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1EBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1EBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1EC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B14118(v8);
  MEMORY[0x259C49320](v8, 0x10A3C40EE3858B8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1EC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1EC70(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

void *sub_255B1EF2C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C4748;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

double sub_255B1EFC8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA278, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v39, lpsrc, 3);
    v13 = v39;
    v14 = *(v39 + 16);
    v29 = *v39;
    v30[0] = v14;
    *&v39 = 0;
    MEMORY[0x259C49320](v13, 0xC400A2AC0F1, v15);
    sub_255B1E20C(&v39, a1);
    *&result = sub_255AC7334(&v29, &v39);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v36 = v21;
    v37 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v36;
    }

    v35 = &unk_2867C4048;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v36 = v17;
    v37 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v36;
    }

    v35 = &unk_2867C4048;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_255A7C284();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v36 = v9;
    v37 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v36;
    }

    v35 = &unk_2867C4048;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_30:
        sub_255C00FD0(v36);
      }
    }
  }

  sub_255B1E568(&v33, v7);
  *&v29 = &unk_2867C4A18;
  if (HIDWORD(v34) <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = HIDWORD(v34);
  }

  v38[0] = *(&v33 + 1);
  v38[1] = v34 | (v25 << 32);
  sub_255B13E54(&v29, v38);
  v39 = v33;
  v40 = v34;
  sub_255B14190(&v29, &v39);
  *&v29 = &unk_2867C4A18;
  sub_255BF9318(&v35);
  v26 = v31;
  *(a1 + 8) = DWORD2(v29);
  v27 = *(a1 + 40);
  if (v27 == -1)
  {
    if (v26 == -1)
    {
      result = *&v32;
      *(a1 + 48) = v32;
      return result;
    }
  }

  else if (v26 == -1)
  {
    (off_2867CFFE8[v27])(&v39, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_39;
  }

  *&v39 = a1 + 16;
  (off_2867D0018[v26])(&v39);
LABEL_39:
  v28 = v31;
  result = *&v32;
  *(a1 + 48) = v32;
  *&v29 = &unk_2867C4748;
  if (v28 != -1)
  {
    (off_2867CFFE8[v28])(&v39, v30);
  }

  return result;
}

void sub_255B1F3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1F40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1F420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B1F450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_255B14118(&a9);
  sub_255BF9318(&a20);
  _Unwind_Resume(a1);
}

void sub_255B1F46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B1F4AC(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_255B1E20C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

void sub_255B1F618(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_255B1E568(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

uint64_t *sub_255B1F784()
{
  if ((atomic_load_explicit(&qword_27F7DD208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD208))
  {
    sub_255B54F0C();
  }

  if (byte_27F7DD2C7 >= 0)
  {
    return &qword_27F7DD2B0;
  }

  else
  {
    return qword_27F7DD2B0;
  }
}

void sub_255B1F854(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    switch(v2)
    {
      case 2:
        v16 = *(a1 + 24);
        v17 = *(a1 + 32);
        v29 = v16;
        v30 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v16 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v29 = v12;
        v30 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v12 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v3 = *(a1 + 24);
        v4 = *(a1 + 32);
        v29 = v3;
        v30 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          v3 = v29;
        }

        v28 = &unk_2867C4028;
        if (v3)
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }

          if (v6)
          {
LABEL_39:
            sub_255C010CC(v29);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v24)
    {
      goto LABEL_57;
    }

    v27 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_58;
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v29 = v8;
      v30 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v29;
      }

      v28 = &unk_2867C4048;
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
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v29 = v20;
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v20)
    {
      goto LABEL_57;
    }

    v23 = *v20;
    v22 = v20[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    if (!v23)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_255C00FD0(v29);
  goto LABEL_57;
}

void sub_255B1FF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF9318(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B1FFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF973C(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B20018(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_255B202D4(uint64_t a1)
{
  *a1 = &unk_2867C4598;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B2034C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_2867C4068;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B16B4C(a1, v20);
          v20[0] = &unk_2867C4068;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_2867C4068;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B2068C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B206A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_2867C4068;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B16B4C(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_2867C4068;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_2867C4068;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_33:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_255B209F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B20A28(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_255A7C284();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_255B206A8(v16, a1);
      sub_255B206A8(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v18);
  goto LABEL_25;
}

void sub_255B20D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B20D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B20D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B20D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255B174E8(v8);
  MEMORY[0x259C49320](v8, 0x10A3C40EE3858B8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B20D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B20D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B20DB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

void *sub_255B2106C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C4598;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C40EE3858B8);
    return v2;
  }

  return result;
}

double sub_255B21108(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA260, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v39, lpsrc, 4);
    v13 = v39;
    v14 = *(v39 + 16);
    v29 = *v39;
    v30[0] = v14;
    *&v39 = 0;
    MEMORY[0x259C49320](v13, 0xC400A2AC0F1, v15);
    sub_255B2034C(&v39, a1);
    *&result = sub_255AF74DC(&v29, &v39);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v36 = v21;
    v37 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v36;
    }

    v35 = &unk_2867C4048;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v36 = v17;
    v37 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v36;
    }

    v35 = &unk_2867C4048;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_255A7C284();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v36 = v9;
    v37 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v36;
    }

    v35 = &unk_2867C4048;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_30:
        sub_255C00FD0(v36);
      }
    }
  }

  sub_255B206A8(&v33, v7);
  *&v29 = &unk_2867C4988;
  if (HIDWORD(v34) <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = HIDWORD(v34);
  }

  v38[0] = *(&v33 + 1);
  v38[1] = v34 | (v25 << 32);
  sub_255B17224(&v29, v38);
  v39 = v33;
  v40 = v34;
  sub_255B17560(&v29, &v39);
  *&v29 = &unk_2867C4988;
  sub_255BF9318(&v35);
  v26 = v31;
  *(a1 + 8) = DWORD2(v29);
  v27 = *(a1 + 40);
  if (v27 == -1)
  {
    if (v26 == -1)
    {
      result = *&v32;
      *(a1 + 48) = v32;
      return result;
    }
  }

  else if (v26 == -1)
  {
    (off_2867CFFE8[v27])(&v39, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_39;
  }

  *&v39 = a1 + 16;
  (off_2867D0018[v26])(&v39);
LABEL_39:
  v28 = v31;
  result = *&v32;
  *(a1 + 48) = v32;
  *&v29 = &unk_2867C4598;
  if (v28 != -1)
  {
    (off_2867CFFE8[v28])(&v39, v30);
  }

  return result;
}

void sub_255B21538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2154C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B21560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B21590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_255B174E8(&a9);
  sub_255BF9318(&a20);
  _Unwind_Resume(a1);
}

void sub_255B215AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B215EC(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_255B2034C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

void sub_255B21758(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_255B206A8(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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

uint64_t *sub_255B218C4()
{
  if ((atomic_load_explicit(&qword_27F7DD210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD210))
  {
    sub_255B55010();
  }

  if (byte_27F7DD2DF >= 0)
  {
    return &qword_27F7DD2C8;
  }

  else
  {
    return qword_27F7DD2C8;
  }
}

void sub_255B21994(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    switch(v2)
    {
      case 2:
        v16 = *(a1 + 24);
        v17 = *(a1 + 32);
        v29 = v16;
        v30 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v16 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v29 = v12;
        v30 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v12 = v29;
        }

        v28 = &unk_2867C4028;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v3 = *(a1 + 24);
        v4 = *(a1 + 32);
        v29 = v3;
        v30 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          v3 = v29;
        }

        v28 = &unk_2867C4028;
        if (v3)
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }

          if (v6)
          {
LABEL_39:
            sub_255C010CC(v29);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v24)
    {
      goto LABEL_57;
    }

    v27 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_58;
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v29 = v8;
      v30 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v29;
      }

      v28 = &unk_2867C4048;
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
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v29 = v20;
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v29;
    }

    v28 = &unk_2867C4048;
    if (!v20)
    {
      goto LABEL_57;
    }

    v23 = *v20;
    v22 = v20[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    if (!v23)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_255C00FD0(v29);
  goto LABEL_57;
}

void sub_255B220AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF9318(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B220E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BF9188(v13);
  sub_255BF973C(&a12);
  MEMORY[0x259C49320](v12, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B22158(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_255B22414(uint64_t a1)
{
  *a1 = &unk_2867C4358;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B2248C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_2867C4068;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0BF18(a1, v19);
          v19[0] = &unk_2867C4068;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_2867C4068;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 2;
  *(&v21 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v21), 2);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_255B22714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B22730(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v22 = &unk_2867C4068;
          v23 = v6;
          v24 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v23;
            v7 = v24;
          }

          v20[0] = &unk_2867C4068;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0BF18(v25, v20);
          *a1 = *v25;
          v8 = v26;
          *(a1 + 8) = *&v25[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v27;
          v20[0] = &unk_2867C4068;
          v9 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v22 = &unk_2867C4068;
          v10 = v24;
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v25 = 2;
  *&v25[4] = v13;
  v14 = 2 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x1FFFFFFFFLL | ((v15 >> 1) << 33);
  v17 = __PAIR64__(*&v25[4], 2);
  *v25 = 1;
  *&v25[4] = v16;
  v18 = *v25;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255B229D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B22A04(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_255A7C284();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_2867C4048;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_255B22730(v16, a1);
      sub_255B22730(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v18);
  goto LABEL_25;
}

void sub_255B22D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B22D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B22D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B22D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255B0C814(v13);
  MEMORY[0x259C49320](v13, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B22DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B22DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B22DF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

void *sub_255B230B4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C4358;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B23150(uint64_t a1, char **lpsrc)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA248, 0);
  if (!v6)
  {
    (*(v4 + 9))(v54, lpsrc, 5);
    v13 = *&v54[0];
    v15 = *(*&v54[0] + 16);
    v14 = *(*&v54[0] + 32);
    v37 = **&v54[0];
    v38 = v15;
    v39 = v14;
    *&v54[0] = 0;
    MEMORY[0x259C49320](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_255B2248C(v54, a1);
    sub_255AF26F0(&v37, v54);
LABEL_40:
    v34 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v25 = *(v6 + 3);
    v26 = *(v6 + 4);
    v46 = v25;
    v47 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      v25 = v46;
    }

    v45 = &unk_2867C4048;
    if (v25)
    {
      v28 = *v25;
      v27 = v25[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }
      }

      if (v28)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v8 == 1)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v46 = v21;
    v47 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v46;
    }

    v45 = &unk_2867C4048;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_255A7C284();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v46 = v9;
    v47 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v46;
    }

    v45 = &unk_2867C4048;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_29:
        sub_255C00FD0(v46);
      }
    }
  }

  sub_255B22730(v43, v7);
  *&v37 = &unk_2867C48F8;
  if (HIDWORD(v44) <= 0x20)
  {
    v29 = 32;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v54[0]) = 2;
  DWORD1(v54[0]) = v44;
  v48 = *&v54[0];
  LODWORD(v54[0]) = 1;
  *(v54 + 4) = DWORD2(v44) | (v29 << 32);
  v50 = *&v54[0];
  v49 = DWORD1(v44);
  v51 = v29;
  v52 = v44;
  v53 = *(v54 + 4);
  sub_255B0C514(&v37, &v48);
  v54[0] = v43[0];
  v54[1] = v43[1];
  v54[2] = v44;
  sub_255B0C88C(&v37, v54);
  *&v37 = &unk_2867C48F8;
  sub_255BF9318(&v45);
  v30 = DWORD2(v39);
  *(a1 + 8) = DWORD2(v37);
  v31 = *(a1 + 40);
  if (v31 != -1)
  {
    if (v30 == -1)
    {
      (off_2867CFFE8[v31])(v54, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_38;
    }

LABEL_37:
    *&v54[0] = a1 + 16;
    (off_2867D0018[v30])(v54);
LABEL_38:
    v32 = DWORD2(v39);
    result = *&v40;
    v33 = v41;
    *(a1 + 48) = v40;
    *(a1 + 64) = v33;
    *(a1 + 80) = v42;
    *&v37 = &unk_2867C4358;
    if (v32 != -1)
    {
      (off_2867CFFE8[v32])(v54, &v38);
    }

    goto LABEL_40;
  }

  if (v30 != -1)
  {
    goto LABEL_37;
  }

  result = *&v40;
  v35 = v41;
  *(a1 + 48) = v40;
  *(a1 + 64) = v35;
  *(a1 + 80) = v42;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255B2363C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B236CC(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_255B2248C(&v7, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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