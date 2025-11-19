void sub_255BCB8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255BCA8D8(va);
  _Unwind_Resume(a1);
}

void sub_255BCB8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255BCA8D8(va);
  _Unwind_Resume(a1);
}

void sub_255BCB910(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_26;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_255BCBB78(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_26;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_255BCBDE0(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    free(*(result + 48));
    result = v1;
  }

  *(result + 48) = 0;
  return result;
}

void sub_255BCBE1C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 48) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BCBF20(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD98, 0);
  if (!v6)
  {
    (*(v4 + 9))(v41, lpsrc, 4);
    v19 = *(v41[0] + 2);
    *v42 = *v41[0];
    *&v42[16] = v19;
    v41[0] = 0;
    MEMORY[0x259C49320]();
    v20 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v21 = *(a1 + 8) == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = *(a1 + 16);
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a1 + 8);
    }

    if (HIDWORD(v23) * HIDWORD(v22) != -1)
    {
      goto LABEL_29;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v24 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_28:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
        v41[0] = v20;
        v41[1] = v23;
        v41[2] = v22;
        sub_255AF74DC(v42, v41);
        return;
      }
    }

    else
    {
      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_55;
      }
    }

    do
    {
      v27 = *v24;
      v26 = *(v24 + 8);
      v24 += 16;
      v27(v26, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v24 != v25);
    if (byte_27F7DD630)
    {
      goto LABEL_28;
    }

LABEL_55:
    abort();
  }

  v7 = *(a1 + 48);
  if (!v7 || (v8 = *(v6 + 2), v8 != *(a1 + 8)) || (v9 = *(v6 + 3), v9 != *(a1 + 12)) || (v10 = *(v6 + 4), v10 != *(a1 + 16)) || (v11 = *(v6 + 5), v11 != *(a1 + 20)))
  {
    v16 = *(v6 + 8);
    *&v42[12] = *(v6 + 20);
    *v42 = v16;
    sub_255BE9178(v43, (v6 + 40));
    *(a1 + 8) = *v42;
    *(a1 + 20) = *&v42[12];
    *(a1 + 64) = v44;
    *(a1 + 40) = v43[0];
    v17 = *(a1 + 48);
    if (v17)
    {
      free(v17);
    }

    v18 = v43[2];
    *(a1 + 48) = v43[1];
    *(a1 + 56) = v18;
    return;
  }

  if (v10 != 1)
  {
    if (!v8 || !v9)
    {
      return;
    }

    v28 = v8 - 1;
    v29 = *(v6 + 6);
    v30 = 4 * v10;
    v31 = v9 - 1;
    if (v31)
    {
      if (!v28)
      {
        v40 = 4 * v11;
        do
        {
          *v7 = *v29;
          v29 = (v29 + v40);
          v7 = (v7 + v40);
          --v31;
        }

        while (v31);
        goto LABEL_54;
      }

      v32 = 0;
      v33 = 4 * v11;
      do
      {
        v34 = 0;
        v35 = v28;
        do
        {
          *(v7 + v34) = *(v29 + v34);
          v34 += v30;
          --v35;
        }

        while (v35);
        *(v7 + v34) = *(v29 + v34);
        v29 = (v29 + v33);
        v7 = (v7 + v33);
        ++v32;
      }

      while (v32 != v31);
    }

    else if (!v28)
    {
LABEL_54:
      *v7 = *v29;
      return;
    }

    do
    {
      *v7 = *v29;
      v29 = (v29 + v30);
      v7 = (v7 + v30);
      --v28;
    }

    while (v28);
    goto LABEL_54;
  }

  if (v11 == v8)
  {
    v12 = v9 * v8;
    if (!v12)
    {
      return;
    }

    v13 = 4 * v12;
    v14 = *(v6 + 6);
    v15 = *(a1 + 48);
  }

  else
  {
    if (!v8 || !v9)
    {
      return;
    }

    v36 = *(v6 + 6);
    v37 = 4 * v8;
    v38 = v9 - 1;
    if (v9 != 1)
    {
      v39 = 4 * v11;
      do
      {
        memmove(v7, v36, v37);
        v36 += v39;
        v7 = (v7 + v39);
        --v38;
      }

      while (v38);
    }

    v15 = v7;
    v14 = v36;
    v13 = v37;
  }

  memmove(v15, v14, v13);
}

void sub_255BCC310(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_26;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_255BCC578(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_26;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_255BCC7E0(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BCC81C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BCC930(uint64_t a1, char **lpsrc)
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD80, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v86, lpsrc, 5);
    v17 = *(v86 + 16);
    v16 = *(v86 + 32);
    v79 = *v86;
    v80 = v17;
    v81 = v16;
    *&v86 = 0;
    MEMORY[0x259C49320]();
    v18 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v19 = *(a1 + 32) == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    if (v19)
    {
      v20 = 0;
    }

    LODWORD(v86) = 2;
    *(&v86 + 4) = v20;
    v22 = v20;
    v23 = v86;
    v24 = HIDWORD(v20);
    LODWORD(v86) = 1;
    *(&v86 + 4) = v21;
    v25 = v86;
    if (HIDWORD(v21) * HIDWORD(v20) != -1)
    {
      goto LABEL_22;
    }

    v77 = v18;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v27 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_21:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v77;
LABEL_22:
        *&v86 = v18;
        *(&v86 + 1) = v23;
        v87 = v24;
        v88 = v25;
        v89 = HIDWORD(v21);
        v90 = v22;
        v91 = v21;
        sub_255AF26F0(&v79, &v86);
LABEL_23:
        v28 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v27 = qword_27F7DD608;
      v26 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_79;
      }
    }

    do
    {
      (*v27)(*(v27 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v27 += 16;
    }

    while (v27 != v26);
    if (byte_27F7DD630)
    {
      goto LABEL_21;
    }

LABEL_79:
    abort();
  }

  v7 = *(a1 + 72);
  if (!v7 || *(v6 + 12) != *(a1 + 12) || *(v6 + 3) != *(a1 + 24))
  {
    v8 = *(v6 + 8);
    v9 = *(v6 + 24);
    v10 = *(v6 + 40);
    v82 = *(v6 + 7);
    v80 = v9;
    v81 = v10;
    v79 = v8;
    sub_255BE9608(v83, (v6 + 64));
    v11 = v80;
    *(a1 + 8) = v79;
    *(a1 + 24) = v11;
    *(a1 + 40) = v81;
    *(a1 + 104) = v85;
    v12 = v82;
    *(a1 + 88) = v84;
    v13 = v83[0];
    *(a1 + 56) = v12;
    *(a1 + 64) = v13;
    v14 = *(a1 + 72);
    if (v14)
    {
      free(v14);
    }

    v15 = v83[2];
    *(a1 + 72) = v83[1];
    *(a1 + 80) = v15;
    goto LABEL_23;
  }

  if (*(v6 + 5) != 1 || *(a1 + 20) != 1)
  {
    if (!*(v6 + 2))
    {
      goto LABEL_23;
    }

    v30 = *(v6 + 3);
    if (!v30)
    {
      goto LABEL_23;
    }

    v31 = *(v6 + 4);
    if (!v31)
    {
      goto LABEL_23;
    }

    v32 = v30 - 1;
    v33 = *(v6 + 6);
    v34 = *(a1 + 24);
    v35 = *(v6 + 9);
    v36 = v31 - 1;
    if (v36)
    {
      v37 = *(a1 + 28);
      v38 = *(v6 + 7);
      if (v32)
      {
        v39 = 0;
        v40 = v35 + 1;
        v41 = v7 + 1;
        do
        {
          v42 = v41;
          v43 = v40;
          v44 = v32;
          do
          {
            *(v42 - 1) = *(v43 - 1);
            *v42 = *v43;
            v43 += v33;
            v42 += v34;
            --v44;
          }

          while (v44);
          *(v42 - 1) = *(v43 - 1);
          *v42 = *v43;
          v35 += v38;
          v7 += v37;
          ++v39;
          v40 += v38;
          v41 += v37;
        }

        while (v39 != v36);
        goto LABEL_40;
      }

      do
      {
        *v7 = *v35;
        v7[1] = v35[1];
        v35 += v38;
        v7 += v37;
        --v36;
      }

      while (v36);
    }

    if (!v32)
    {
LABEL_41:
      *v7 = *v35;
      v7[1] = v35[1];
      goto LABEL_23;
    }

    do
    {
LABEL_40:
      *v7 = *v35;
      v7[1] = v35[1];
      v35 += v33;
      v7 += v34;
      --v32;
    }

    while (v32);
    goto LABEL_41;
  }

  v45 = *(v6 + 6);
  v46 = *(a1 + 24);
  v47 = *(v6 + 2);
  if (v45 == v46 && v45 == v47)
  {
    v66 = *(v6 + 7);
    v67 = *(a1 + 28);
    v68 = *(v6 + 3);
    v69 = (v68 * v45);
    if (v66 == v67 && v66 == v69)
    {
      v65 = (*(v6 + 4) * v66);
      if (!v65)
      {
        goto LABEL_23;
      }

      v64 = *(v6 + 9);
      v70 = *MEMORY[0x277D85DE8];
      v63 = v7;
    }

    else
    {
      if (!v45)
      {
        goto LABEL_23;
      }

      if (!v68)
      {
        goto LABEL_23;
      }

      v71 = *(v6 + 4);
      if (!v71)
      {
        goto LABEL_23;
      }

      v72 = *(v6 + 9);
      v73 = v71 - 1;
      if (v71 != 1)
      {
        if (!v69)
        {
          goto LABEL_23;
        }

        do
        {
          memmove(v7, v72, v69);
          v72 += v66;
          v7 += v67;
          --v73;
        }

        while (v73);
      }

      if (!v69)
      {
        goto LABEL_23;
      }

      v74 = *MEMORY[0x277D85DE8];
      v63 = v7;
      v64 = v72;
      v65 = v69;
    }
  }

  else
  {
    v50 = *(v6 + 3);
    v49 = *(v6 + 4);
    if (v47)
    {
      v51 = v50 == 0;
    }

    else
    {
      v51 = 1;
    }

    if (v51 || v49 == 0)
    {
      goto LABEL_23;
    }

    v53 = v50 - 1;
    v54 = *(v6 + 9);
    v55 = v49 - 1;
    if (v49 != 1)
    {
      v56 = *(a1 + 28);
      v57 = *(v6 + 7);
      if (v50 == 1)
      {
        do
        {
          memmove(v7, v54, v47);
          v54 += v57;
          v7 += v56;
          --v55;
        }

        while (v55);
      }

      else
      {
        v58 = 0;
        v78 = v49 - 1;
        v75 = *(v6 + 7);
        v76 = v56;
        do
        {
          v59 = v53;
          v60 = v54;
          v61 = v7;
          do
          {
            memmove(v61, v60, v47);
            v60 += v45;
            v61 += v46;
            --v59;
          }

          while (v59);
          memmove(v61, v60, v47);
          v54 += v75;
          v7 += v76;
          ++v58;
        }

        while (v58 != v78);
      }
    }

    for (; v53; --v53)
    {
      memmove(v7, v54, v47);
      v54 += v45;
      v7 += v46;
    }

    v62 = *MEMORY[0x277D85DE8];
    v63 = v7;
    v64 = v54;
    v65 = v47;
  }

  memmove(v63, v64, v65);
}

void sub_255BCCF78(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 5)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BCD278(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 5)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BCD578(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BCD5B4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BCD6C8(uint64_t a1, char **lpsrc)
{
  v126 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD68, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v119, lpsrc, 6);
    v17 = *v119;
    v18 = *(v119 + 8);
    v116 = *(v119 + 12);
    v19 = *(v119 + 16);
    v20 = *(v119 + 20);
    v21 = *(v119 + 24);
    v22 = *(v119 + 28);
    *&v119 = 0;
    MEMORY[0x259C49320]();
    v23 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v24 = *(a1 + 32) == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = *(a1 + 32);
    if (v24)
    {
      HIDWORD(v25) = 0;
    }

    LODWORD(v119) = 1;
    *(&v119 + 4) = *(a1 + 40);
    v26 = v119;
    v27 = HIDWORD(*(&v119 + 4));
    if (DWORD2(v119) * HIDWORD(v25) != -1)
    {
      if (v20 != 1)
      {
        goto LABEL_32;
      }

LABEL_25:
      if (v26 == 1)
      {
        if (v21 != HIDWORD(v26) || v21 != v18)
        {
          if (v18 && v116 && v19)
          {
            v41 = v22;
            v42 = 2 * v18;
            v43 = v116 - 1;
            v44 = 2 * v21;
            v45 = 2 * HIDWORD(v26);
            v46 = v19 - 1;
            if (v19 != 1)
            {
              if (v116 == 1)
              {
                v98 = 2 * v41;
                v99 = 2 * v27;
                do
                {
                  memmove(v23, v17, v42);
                  v17 = (v17 + v98);
                  v23 = (v23 + v99);
                  --v46;
                }

                while (v46);
              }

              else
              {
                v47 = 0;
                v111 = 2 * v27;
                v114 = 2 * v41;
                v117 = v46;
                do
                {
                  v48 = v23;
                  v49 = v17;
                  v50 = v43;
                  do
                  {
                    memmove(v48, v49, v42);
                    v49 += v44;
                    v48 += v45;
                    --v50;
                  }

                  while (v50);
                  memmove(v48, v49, v42);
                  v17 = (v17 + v114);
                  v23 = (v23 + v111);
                  ++v47;
                }

                while (v47 != v117);
              }
            }

            for (; v43; --v43)
            {
              memmove(v23, v17, v42);
              v17 = (v17 + v44);
              v23 = (v23 + v45);
            }

            memmove(v23, v17, v42);
          }

          goto LABEL_8;
        }

        v30 = (v116 * v18);
        if (v22 == v27 && v22 == v30)
        {
          if (!(v22 * v19))
          {
            goto LABEL_8;
          }

          v31 = 2 * (v22 * v19);
        }

        else
        {
          if (!v18 || !v116 || !v19)
          {
            goto LABEL_8;
          }

          v67 = v19 - 1;
          if (v67)
          {
            if (!v30)
            {
              goto LABEL_8;
            }

            v68 = 2 * v27;
            do
            {
              memmove(v23, v17, 2 * v30);
              v17 += v22;
              v23 = (v23 + v68);
              --v67;
            }

            while (v67);
          }

          if (!v30)
          {
            goto LABEL_8;
          }

          v31 = 2 * v30;
        }

        memmove(v23, v17, v31);
        goto LABEL_8;
      }

LABEL_32:
      if (!v18 || !v116 || !v19)
      {
        goto LABEL_8;
      }

      v32 = v116 - 1;
      v33 = 2 * HIDWORD(v26);
      v34 = v19 - 1;
      if (v19 == 1)
      {
        if (v116 == 1)
        {
LABEL_98:
          *v23 = *v17;
          v23[1] = v17[1];
          goto LABEL_8;
        }
      }

      else
      {
        if (v116 == 1)
        {
          do
          {
            *v23 = *v17;
            v23[1] = v17[1];
            v17 += v22;
            v23 += v27;
            --v34;
          }

          while (v34);
          goto LABEL_98;
        }

        v35 = 0;
        v36 = v17 + 1;
        v37 = v23 + 1;
        do
        {
          v38 = v37;
          v39 = v36;
          v40 = v116 - 1;
          do
          {
            *(v38 - 1) = *(v39 - 1);
            *v38 = *v39;
            v39 += v21;
            v38 = (v38 + v33);
            --v40;
          }

          while (v40);
          *(v38 - 1) = *(v39 - 1);
          *v38 = *v39;
          v17 += v22;
          v23 += v27;
          ++v35;
          v36 += v22;
          v37 += v27;
        }

        while (v35 != v34);
      }

      do
      {
        *v23 = *v17;
        v23[1] = v17[1];
        v17 += v21;
        v23 = (v23 + v33);
        --v32;
      }

      while (v32);
      goto LABEL_98;
    }

    v109 = v19;
    v113 = v22;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_24;
      }

      v28 = qword_27F7DD608;
      v29 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v28 = qword_27F7DD608;
      v29 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_130;
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
LABEL_24:
      qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v22 = v113;
      v19 = v109;
      if (v20 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

LABEL_130:
    abort();
  }

  v7 = *(a1 + 72);
  if (!v7 || *(v6 + 12) != *(a1 + 12) || *(v6 + 3) != *(a1 + 24))
  {
    v8 = *(v6 + 8);
    v9 = *(v6 + 24);
    v10 = *(v6 + 40);
    v122 = *(v6 + 7);
    v120 = v9;
    v121 = v10;
    v119 = v8;
    sub_255BE9CD0(v123, (v6 + 64));
    v11 = v120;
    *(a1 + 8) = v119;
    *(a1 + 24) = v11;
    *(a1 + 40) = v121;
    *(a1 + 104) = v125;
    v12 = v122;
    *(a1 + 88) = v124;
    v13 = v123[0];
    *(a1 + 56) = v12;
    *(a1 + 64) = v13;
    v14 = *(a1 + 72);
    if (v14)
    {
      free(v14);
    }

    v15 = v123[2];
    *(a1 + 72) = v123[1];
    *(a1 + 80) = v15;
    goto LABEL_8;
  }

  if (*(v6 + 5) != 1 || *(a1 + 20) != 1)
  {
    if (!*(v6 + 2))
    {
      goto LABEL_8;
    }

    v52 = *(v6 + 3);
    if (!v52)
    {
      goto LABEL_8;
    }

    v53 = *(v6 + 4);
    if (!v53)
    {
      goto LABEL_8;
    }

    v54 = v52 - 1;
    v55 = *(v6 + 9);
    v56 = 2 * *(v6 + 6);
    v57 = 2 * *(a1 + 24);
    v58 = v53 - 1;
    if (v58)
    {
      v59 = *(a1 + 28);
      v60 = *(v6 + 7);
      if (!v54)
      {
        do
        {
          *v7 = *v55;
          v7[1] = v55[1];
          v55 += v60;
          v7 += v59;
          --v58;
        }

        while (v58);
        goto LABEL_121;
      }

      v61 = 0;
      v62 = v55 + 1;
      v63 = v7 + 1;
      do
      {
        v64 = v63;
        v65 = v62;
        v66 = v54;
        do
        {
          *(v64 - 1) = *(v65 - 1);
          *v64 = *v65;
          v65 = (v65 + v56);
          v64 = (v64 + v57);
          --v66;
        }

        while (v66);
        *(v64 - 1) = *(v65 - 1);
        *v64 = *v65;
        v55 += v60;
        v7 += v59;
        ++v61;
        v62 += v60;
        v63 += v59;
      }

      while (v61 != v58);
    }

    else if (!v54)
    {
LABEL_121:
      *v7 = *v55;
      v7[1] = v55[1];
      goto LABEL_8;
    }

    do
    {
      *v7 = *v55;
      v7[1] = v55[1];
      v55 = (v55 + v56);
      v7 = (v7 + v57);
      --v54;
    }

    while (v54);
    goto LABEL_121;
  }

  v69 = *(v6 + 6);
  v70 = *(a1 + 24);
  v71 = *(v6 + 2);
  if (v69 == v70 && v69 == v71)
  {
    v89 = *(v6 + 7);
    v90 = *(a1 + 28);
    v91 = *(v6 + 3);
    v92 = (v91 * v69);
    if (v89 == v90 && v89 == v92)
    {
      v93 = *(v6 + 4) * v89;
      if (v93)
      {
        v94 = *(v6 + 9);
        v95 = *MEMORY[0x277D85DE8];
        v96 = 2 * v93;
        v97 = *(a1 + 72);
        goto LABEL_127;
      }
    }

    else
    {
      if (!v69)
      {
        goto LABEL_8;
      }

      if (!v91)
      {
        goto LABEL_8;
      }

      v100 = *(v6 + 4);
      if (!v100)
      {
        goto LABEL_8;
      }

      v101 = *(v6 + 9);
      v102 = v100 - 1;
      if (v100 != 1)
      {
        if (!v92)
        {
          goto LABEL_8;
        }

        v103 = 2 * v89;
        v104 = 2 * v90;
        do
        {
          memmove(v7, v101, 2 * v92);
          v101 += v103;
          v7 = (v7 + v104);
          --v102;
        }

        while (v102);
      }

      if (v92)
      {
        v105 = *MEMORY[0x277D85DE8];
        v96 = 2 * v92;
        v97 = v7;
        v94 = v101;
        goto LABEL_127;
      }
    }

LABEL_8:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v74 = *(v6 + 3);
  v73 = *(v6 + 4);
  if (v71)
  {
    v75 = v74 == 0;
  }

  else
  {
    v75 = 1;
  }

  if (v75 || v73 == 0)
  {
    goto LABEL_8;
  }

  v77 = v74 - 1;
  v78 = *(v6 + 9);
  v79 = 2 * v71;
  v80 = 2 * v70;
  v81 = v73 - 1;
  v110 = *(v6 + 6);
  if (v73 != 1)
  {
    v82 = *(a1 + 28);
    v83 = *(v6 + 7);
    if (v74 == 1)
    {
      v106 = 2 * v83;
      v107 = 2 * v82;
      do
      {
        memmove(v7, v78, v79);
        v78 += v106;
        v7 = (v7 + v107);
        --v81;
      }

      while (v81);
    }

    else
    {
      v84 = 0;
      v85 = 2 * v69;
      v112 = 2 * v82;
      v115 = 2 * v83;
      v118 = v73 - 1;
      do
      {
        v86 = v7;
        v87 = v78;
        v88 = v77;
        do
        {
          memmove(v86, v87, v79);
          v87 += v85;
          v86 += v80;
          --v88;
        }

        while (v88);
        memmove(v86, v87, v79);
        v78 += v115;
        v7 = (v7 + v112);
        ++v84;
      }

      while (v84 != v118);
    }
  }

  for (; v77; --v77)
  {
    memmove(v7, v78, v79);
    v78 += 2 * v110;
    v7 = (v7 + v80);
  }

  v108 = *MEMORY[0x277D85DE8];
  v97 = v7;
  v94 = v78;
  v96 = v79;
LABEL_127:

  memmove(v97, v94, v96);
}

void sub_255BCDFDC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 6)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BCE2DC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 6)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BCE5DC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_255BCE744(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_255BCE8AC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

void sub_255BCEAF0(uint64_t a1, char **lpsrc)
{
  v240 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD50, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v234, lpsrc, 7);
    v16 = *(v234 + 16);
    v15 = *(v234 + 32);
    v227 = *v234;
    v228 = v16;
    v229 = v15;
    *&v234 = 0;
    MEMORY[0x259C49320]();
    v17 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v18 = *(a1 + 32) == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    if (v18)
    {
      v19 = 0;
    }

    *(&v234 + 4) = v19;
    v21 = v19;
    LODWORD(v234) = 2;
    v22 = v234;
    v23 = HIDWORD(v19);
    LODWORD(v234) = 1;
    *(&v234 + 4) = v20;
    v24 = v234;
    if (HIDWORD(v20) * HIDWORD(v19) != -1)
    {
      goto LABEL_32;
    }

    v224 = v17;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v26 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_31:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v224;
LABEL_32:
        *&v234 = v17;
        *(&v234 + 1) = v22;
        v235 = v23;
        v236 = v24;
        v237 = HIDWORD(v20);
        v238 = v21;
        v239 = v20;
        v226[0] = &v227;
        v226[1] = &v234;
        sub_255AF5898(v226);
        goto LABEL_39;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_236;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v26 += 16;
    }

    while (v26 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_31;
  }

  v7 = *(a1 + 72);
  if (!v7 || *(v6 + 12) != *(a1 + 12) || *(v6 + 3) != *(a1 + 24))
  {
    v8 = *(v6 + 8);
    v9 = *(v6 + 24);
    v10 = *(v6 + 40);
    v230 = *(v6 + 7);
    v228 = v9;
    v229 = v10;
    v227 = v8;
    sub_255BEA5D4(v231, (v6 + 64));
    v11 = v228;
    *(a1 + 8) = v227;
    *(a1 + 24) = v11;
    *(a1 + 40) = v229;
    *(a1 + 56) = v230;
    *(a1 + 88) = v232;
    *(a1 + 104) = v233;
    v12 = *(a1 + 72);
    if (!v12)
    {
      *(a1 + 64) = v231[0];
      goto LABEL_38;
    }

    if (*(a1 + 92))
    {
      v13 = *(a1 + 88) == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 96);
    if (v13)
    {
      v14 = 0;
    }

    if (v14 * (*(a1 + 108) >> 1) != -1)
    {
      *(a1 + 64) = v231[0];
LABEL_37:
      free(v12);
      goto LABEL_38;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_36;
      }

      v27 = qword_27F7DD608;
      v28 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = qword_27F7DD608;
      v28 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_236;
      }
    }

    do
    {
      (*v27)(*(v27 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v27 += 16;
    }

    while (v27 != v28);
    if (byte_27F7DD630)
    {
LABEL_36:
      qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 = *(a1 + 72);
      *(a1 + 64) = v231[0];
      if (v12)
      {
        goto LABEL_37;
      }

LABEL_38:
      v29 = v231[2];
      *(a1 + 72) = v231[1];
      *(a1 + 80) = v29;
      goto LABEL_39;
    }

LABEL_236:
    abort();
  }

  if (*(v6 + 5) == 1 && *(a1 + 20) == 1)
  {
    v47 = *(v6 + 6);
    v48 = *(a1 + 24);
    v49 = *(v6 + 2);
    if (v47 != v48 || v47 != v49)
    {
      v51 = *(v6 + 3);
      v52 = *(v6 + 4);
      if (v49)
      {
        v53 = v51 == 0;
      }

      else
      {
        v53 = 1;
      }

      if (v53 || v52 == 0)
      {
        goto LABEL_39;
      }

      v55 = v51 - 1;
      v56 = *(v6 + 9);
      v57 = 2 * v48;
      v58 = v52 - 1;
      v220 = *(a1 + 24);
      v221 = *(v6 + 6);
      v219 = *(v6 + 3);
      if (v52 != 1)
      {
        v59 = *(a1 + 28);
        v60 = *(v6 + 7);
        if (v51 != 1)
        {
          v61 = 0;
          v62 = 2 * v47;
          v225 = &v7[v57 / 2] - v56 + -2 * v47;
          v223 = 2 * (v59 - v60);
          v222 = v57 - 2 * v47;
          v63 = (v49 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v64 = v63 + 1;
          v65 = 2 * v59;
          v66 = 2 * v60;
          v67 = &v7[v49 + v48 * (v51 - 2)];
          v68 = (v63 + 1) & 0xFFFFFFFFFFFFFFF0;
          v69 = v68;
          v70 = (v63 + 1) & 0xC;
          v71 = (v63 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v72 = v71;
          v73 = v56 + 2 * (v49 + v47 * (v51 - 2));
          while (1)
          {
            v74 = 0;
            v76 = v7 < v73 + v66 * v61 && v56 < v67 + v65 * v61;
            v77 = v7;
            v78 = v56;
            do
            {
              v79 = v74;
              v80 = v77;
              v81 = v78;
              if (v63 < 3 || v76)
              {
                goto LABEL_89;
              }

              if (v63 >= 0xF)
              {
                v83 = 0;
                v84 = (v63 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v85 = &v77[v83];
                  v86 = *&v78[v83 + 8];
                  *v85 = *&v78[v83];
                  v85[1] = v86;
                  v83 += 16;
                  v84 -= 16;
                }

                while (v84);
                if (v64 == v68)
                {
                  goto LABEL_76;
                }

                v82 = (v63 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v70)
                {
                  v81 = &v78[v69];
                  v80 = &v77[v69];
                  do
                  {
LABEL_89:
                    v89 = *v81++;
                    *v80++ = v89;
                  }

                  while (v81 != &v78[v49]);
                  goto LABEL_76;
                }
              }

              else
              {
                v82 = 0;
              }

              v80 = &v77[v72];
              v81 = &v78[v72];
              v87 = v82;
              v88 = v82 - v71;
              do
              {
                *&v77[v87] = *&v78[v87];
                v87 += 4;
                v88 += 4;
              }

              while (v88);
              if (v64 != v71)
              {
                goto LABEL_89;
              }

LABEL_76:
              v78 = (v78 + v62);
              v77 = (v77 + v57);
              v74 = v79 + 1;
            }

            while (v79 + 1 != v55);
            if (v63 < 3 || (v225 + v223 * v61 + v222 * v79) < 0x20)
            {
              v90 = v77;
              v91 = v78;
              goto LABEL_94;
            }

            if (v63 >= 0xF)
            {
              v94 = 0;
              v95 = (v63 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v96 = &v77[v94];
                v97 = *&v78[v94 + 8];
                *v96 = *&v78[v94];
                v96[1] = v97;
                v94 += 16;
                v95 -= 16;
              }

              while (v95);
              if (v64 != v68)
              {
                v93 = (v63 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v70)
                {
                  v91 = &v78[v69];
                  v90 = &v77[v69];
                  goto LABEL_94;
                }

                goto LABEL_102;
              }
            }

            else
            {
              v93 = 0;
LABEL_102:
              v90 = &v77[v72];
              v91 = &v78[v72];
              v98 = v93;
              v99 = v93 - v71;
              do
              {
                *&v77[v98] = *&v78[v98];
                v98 += 4;
                v99 += 4;
              }

              while (v99);
              if (v64 != v71)
              {
                do
                {
LABEL_94:
                  v92 = *v91++;
                  *v90++ = v92;
                }

                while (v91 != &v78[v49]);
              }
            }

            v56 += v66;
            v7 = (v7 + v65);
            if (++v61 == v58)
            {
              goto LABEL_173;
            }
          }
        }

        v138 = 0;
        v139 = v52 - 2;
        v140 = &v7[v49 + v59 * v139];
        v141 = v56 + 2 * (v49 + v60 * v139);
        v142 = (v49 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v143 = v142 + 1;
        v144 = v7 >= v141 || v56 >= v140;
        v145 = v143 & 0xFFFFFFFFFFFFFFF0;
        v146 = v143 & 0xFFFFFFFFFFFFFFFCLL;
        v147 = v143 & 0xFFFFFFFFFFFFFFFCLL;
        v148 = !v144;
        v149 = 2 * v60;
        v150 = 2 * v59;
        do
        {
          v151 = v7;
          v152 = v56;
          if (!((v142 < 3) | v148 & 1))
          {
            if (v142 < 0xF)
            {
              v153 = 0;
LABEL_166:
              v151 = &v7[v147];
              v152 = (v56 + v147 * 2);
              v158 = v153;
              v159 = v153 - v146;
              do
              {
                *&v7[v158] = *(v56 + v158 * 2);
                v158 += 4;
                v159 += 4;
              }

              while (v159);
              if (v143 == v146)
              {
                goto LABEL_158;
              }

              goto LABEL_171;
            }

            v154 = 0;
            v155 = v143 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v156 = &v7[v154];
              v157 = *(v56 + v154 * 2 + 16);
              *v156 = *(v56 + v154 * 2);
              v156[1] = v157;
              v154 += 16;
              v155 -= 16;
            }

            while (v155);
            if (v143 == (v143 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_158;
            }

            v153 = v143 & 0xFFFFFFFFFFFFFFF0;
            if ((v143 & 0xC) != 0)
            {
              goto LABEL_166;
            }

            v152 = (v56 + v145 * 2);
            v151 = &v7[v145];
          }

          do
          {
LABEL_171:
            v160 = *v152++;
            *v151++ = v160;
          }

          while (v152 != (v56 + 2 * v49));
LABEL_158:
          v56 += v149;
          v7 = (v7 + v150);
          ++v138;
        }

        while (v138 != v58);
      }

LABEL_173:
      if (v55)
      {
        v161 = 0;
        v162 = (v49 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v163 = v162 + 1;
        v165 = v7 < v56 + 2 * (v49 + v221 * (v219 - 2)) && v56 < &v7[v49 + v220 * (v219 - 2)];
        v166 = v163 & 0xFFFFFFFFFFFFFFF0;
        v167 = v163 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v168 = v7;
          v169 = v56;
          if (v162 >= 3 && !v165)
          {
            if (v162 < 0xF)
            {
              v170 = 0;
LABEL_189:
              v168 = &v7[v167];
              v169 = (v56 + v167 * 2);
              v175 = v170;
              v176 = v170 - (v163 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v7[v175] = *(v56 + v175 * 2);
                v175 += 4;
                v176 += 4;
              }

              while (v176);
              if (v163 == (v163 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_181;
              }

              goto LABEL_194;
            }

            v171 = 0;
            v172 = v163 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v173 = &v7[v171];
              v174 = *(v56 + v171 * 2 + 16);
              *v173 = *(v56 + v171 * 2);
              v173[1] = v174;
              v171 += 16;
              v172 -= 16;
            }

            while (v172);
            if (v163 == (v163 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_181;
            }

            v170 = v163 & 0xFFFFFFFFFFFFFFF0;
            if ((v163 & 0xC) != 0)
            {
              goto LABEL_189;
            }

            v169 = (v56 + v166 * 2);
            v168 = &v7[v166];
          }

          do
          {
LABEL_194:
            v177 = *v169++;
            *v168++ = v177;
          }

          while (v169 != (v56 + 2 * v49));
LABEL_181:
          v56 += 2 * v221;
          v7 = (v7 + v57);
          ++v161;
        }

        while (v161 != v55);
      }

      v178 = (v49 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v178 < 3 || v7 - v56 < 0x20)
      {
        v181 = v7;
        v182 = v56;
        goto LABEL_228;
      }

      v179 = v178 + 1;
      if (v178 >= 0xF)
      {
        v180 = v179 & 0xFFFFFFFFFFFFFFF0;
        v183 = (v56 + 16);
        v184 = v7 + 8;
        v185 = v179 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v186 = *v183;
          *(v184 - 1) = *(v183 - 1);
          *v184 = v186;
          v183 += 2;
          v184 += 2;
          v185 -= 16;
        }

        while (v185);
        if (v179 == v180)
        {
          goto LABEL_39;
        }

        if ((v179 & 0xC) == 0)
        {
          v213 = v180;
          v182 = (v56 + v213 * 2);
          v181 = &v7[v213];
          goto LABEL_228;
        }
      }

      else
      {
        v180 = 0;
      }

      v187 = v179 & 0xFFFFFFFFFFFFFFFCLL;
      v181 = &v7[v187];
      v182 = (v56 + v187 * 2);
      v188 = (v56 + 2 * v180);
      v189 = &v7[v180];
      v190 = v180 - (v179 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v191 = *v188++;
        *v189++ = v191;
        v190 += 4;
      }

      while (v190);
      if (v179 == (v179 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_39;
      }

      do
      {
LABEL_228:
        v214 = *v182++;
        *v181++ = v214;
      }

      while (v182 != (v56 + 2 * v49));
      goto LABEL_39;
    }

    v100 = *(v6 + 7);
    v101 = *(a1 + 28);
    v102 = *(v6 + 3);
    v103 = (v102 * v47);
    if (v100 == v101 && v100 == v103)
    {
      v104 = (*(v6 + 4) * v100);
      if (!v104)
      {
        goto LABEL_39;
      }

      v105 = *(v6 + 9);
      v106 = (v104 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v106 < 3)
      {
        v107 = *(v6 + 9);
        goto LABEL_231;
      }

      v107 = *(v6 + 9);
      if (v7 - v105 < 0x20)
      {
        goto LABEL_231;
      }

      v108 = v106 + 1;
      if (v106 >= 0xF)
      {
        v109 = v108 & 0xFFFFFFFFFFFFFFF0;
        v192 = (v105 + 16);
        v193 = v7 + 8;
        v194 = v108 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v195 = *v192;
          *(v193 - 1) = *(v192 - 1);
          *v193 = v195;
          v192 += 2;
          v193 += 2;
          v194 -= 16;
        }

        while (v194);
        if (v108 == v109)
        {
          goto LABEL_39;
        }

        if ((v108 & 0xC) == 0)
        {
          v215 = 2 * v109;
          v107 = (v105 + v215);
          v7 = (v7 + v215);
          goto LABEL_231;
        }
      }

      else
      {
        v109 = 0;
      }

      v196 = v108 & 0xFFFFFFFFFFFFFFFCLL;
      v197 = &v7[v196];
      v107 = (v105 + v196 * 2);
      v198 = (v105 + 2 * v109);
      v199 = &v7[v109];
      v200 = v109 - (v108 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v201 = *v198++;
        *v199++ = v201;
        v200 += 4;
      }

      while (v200);
      v7 = v197;
      if (v108 == (v108 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_39;
      }

      do
      {
LABEL_231:
        v216 = *v107++;
        *v7++ = v216;
      }

      while (v107 != (v105 + 2 * v104));
      goto LABEL_39;
    }

    if (!v47)
    {
      goto LABEL_39;
    }

    if (!v102)
    {
      goto LABEL_39;
    }

    v110 = *(v6 + 4);
    if (!v110)
    {
      goto LABEL_39;
    }

    v111 = *(v6 + 9);
    if (v110 == 1)
    {
LABEL_118:
      if (!v103)
      {
        goto LABEL_39;
      }

      v112 = (v103 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v112 < 3 || v7 - v111 < 0x20)
      {
        v202 = v7;
        v203 = v111;
        goto LABEL_234;
      }

      v113 = v112 + 1;
      if (v112 >= 0xF)
      {
        v114 = v113 & 0xFFFFFFFFFFFFFFF0;
        v204 = (v111 + 16);
        v205 = v7 + 8;
        v206 = v113 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v207 = *v204;
          *(v205 - 1) = *(v204 - 1);
          *v205 = v207;
          v204 += 2;
          v205 += 2;
          v206 -= 16;
        }

        while (v206);
        if (v113 == v114)
        {
          goto LABEL_39;
        }

        if ((v113 & 0xC) == 0)
        {
          v217 = v114;
          v203 = (v111 + v217 * 2);
          v202 = &v7[v217];
          goto LABEL_234;
        }
      }

      else
      {
        v114 = 0;
      }

      v208 = v113 & 0xFFFFFFFFFFFFFFFCLL;
      v202 = &v7[v208];
      v203 = (v111 + v208 * 2);
      v209 = (v111 + 2 * v114);
      v210 = &v7[v114];
      v211 = v114 - (v113 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v212 = *v209++;
        *v210++ = v212;
        v211 += 4;
      }

      while (v211);
      if (v113 == (v113 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_39;
      }

      do
      {
LABEL_234:
        v218 = *v203++;
        *v202++ = v218;
      }

      while (v203 != (v111 + 2 * v103));
      goto LABEL_39;
    }

    if (!v103)
    {
      goto LABEL_39;
    }

    v116 = 0;
    v117 = v110 - 2;
    v118 = &v7[v103 + v101 * (v110 - 2)];
    v119 = (v103 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    v120 = v119 + 1;
    v121 = v7 >= v111 + 2 * (v103 + v100 * v117) || v111 >= v118;
    v122 = v120 & 0xFFFFFFFFFFFFFFF0;
    v123 = v120 & 0xFFFFFFFFFFFFFFFCLL;
    v124 = v120 & 0xFFFFFFFFFFFFFFFCLL;
    v125 = !v121;
    v126 = 2 * v100;
    v127 = 2 * v101;
    while (1)
    {
      v128 = v7;
      v129 = v111;
      if (!((v119 < 3) | v125 & 1))
      {
        if (v119 < 0xF)
        {
          v130 = 0;
LABEL_144:
          v128 = &v7[v124];
          v129 = (v111 + v124 * 2);
          v135 = v130;
          v136 = v130 - v123;
          do
          {
            *&v7[v135] = *(v111 + v135 * 2);
            v135 += 4;
            v136 += 4;
          }

          while (v136);
          if (v120 == v123)
          {
            goto LABEL_136;
          }

          goto LABEL_149;
        }

        v131 = 0;
        v132 = v120 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v133 = &v7[v131];
          v134 = *(v111 + v131 * 2 + 16);
          *v133 = *(v111 + v131 * 2);
          v133[1] = v134;
          v131 += 16;
          v132 -= 16;
        }

        while (v132);
        if (v120 == (v120 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_136;
        }

        v130 = v120 & 0xFFFFFFFFFFFFFFF0;
        if ((v120 & 0xC) != 0)
        {
          goto LABEL_144;
        }

        v129 = (v111 + v122 * 2);
        v128 = &v7[v122];
      }

      do
      {
LABEL_149:
        v137 = *v129++;
        *v128++ = v137;
      }

      while (v129 != (v111 + 2 * v103));
LABEL_136:
      v111 += v126;
      v7 = (v7 + v127);
      v13 = v116++ == v117;
      if (v13)
      {
        goto LABEL_118;
      }
    }
  }

  if (*(v6 + 2))
  {
    v32 = *(v6 + 3);
    if (v32)
    {
      v33 = *(v6 + 4);
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(v6 + 9);
        v36 = 2 * *(v6 + 6);
        v37 = 2 * *(a1 + 24);
        v38 = v33 - 1;
        if (v33 != 1)
        {
          v39 = *(a1 + 28);
          v40 = *(v6 + 7);
          if (v34)
          {
            v41 = 0;
            v42 = v35 + 1;
            v43 = v7 + 1;
            do
            {
              v44 = v43;
              v45 = v42;
              v46 = v34;
              do
              {
                *(v44 - 1) = *(v45 - 1);
                *v44 = *v45;
                v45 = (v45 + v36);
                v44 = (v44 + v37);
                --v46;
              }

              while (v46);
              *(v44 - 1) = *(v45 - 1);
              *v44 = *v45;
              v35 += v40;
              v7 += v39;
              ++v41;
              v42 += v40;
              v43 += v39;
            }

            while (v41 != v38);
            goto LABEL_126;
          }

          v115 = 2 * v39;
          do
          {
            *v7 = *v35;
            v7[1] = v35[1];
            v35 += v40;
            v7 = (v7 + v115);
            --v38;
          }

          while (v38);
        }

        if (!v34)
        {
LABEL_127:
          *v7 = *v35;
          v7[1] = v35[1];
          goto LABEL_39;
        }

        do
        {
LABEL_126:
          *v7 = *v35;
          v7[1] = v35[1];
          v35 = (v35 + v36);
          v7 = (v7 + v37);
          --v34;
        }

        while (v34);
        goto LABEL_127;
      }
    }
  }

LABEL_39:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_255BCF918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255BCE5DC(va);
  _Unwind_Resume(a1);
}

void sub_255BCF92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255BCE5DC(va);
  _Unwind_Resume(a1);
}

void sub_255BCF94C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 7)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BCFC4C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 7)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BCFF4C(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BCFF88(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD009C(uint64_t a1, char **lpsrc)
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD38, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v95, lpsrc, 8);
    v17 = *(v95 + 16);
    v16 = *(v95 + 32);
    v88 = *v95;
    v89 = v17;
    v90 = v16;
    *&v95 = 0;
    MEMORY[0x259C49320]();
    v18 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v19 = *(a1 + 32) == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    if (v19)
    {
      v20 = 0;
    }

    LODWORD(v95) = 2;
    *(&v95 + 4) = v20;
    v22 = v20;
    v23 = v95;
    v24 = HIDWORD(v20);
    LODWORD(v95) = 1;
    *(&v95 + 4) = v21;
    v25 = v95;
    if (HIDWORD(v21) * HIDWORD(v20) != -1)
    {
      goto LABEL_22;
    }

    v86 = v18;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v27 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_21:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v86;
LABEL_22:
        *&v95 = v18;
        *(&v95 + 1) = v23;
        v96 = v24;
        v97 = v25;
        v98 = HIDWORD(v21);
        v99 = v22;
        v100 = v21;
        sub_255AF7C3C(&v88, &v95);
        goto LABEL_23;
      }
    }

    else
    {
      v27 = qword_27F7DD608;
      v26 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v27)(*(v27 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v27 += 16;
    }

    while (v27 != v26);
    if (byte_27F7DD630)
    {
      goto LABEL_21;
    }

LABEL_82:
    abort();
  }

  v7 = *(a1 + 72);
  if (!v7 || *(v6 + 12) != *(a1 + 12) || *(v6 + 3) != *(a1 + 24))
  {
    v8 = *(v6 + 8);
    v9 = *(v6 + 24);
    v10 = *(v6 + 40);
    v91 = *(v6 + 7);
    v89 = v9;
    v90 = v10;
    v88 = v8;
    sub_255BEAB68(v92, (v6 + 64));
    v11 = v89;
    *(a1 + 8) = v88;
    *(a1 + 24) = v11;
    *(a1 + 40) = v90;
    *(a1 + 104) = v94;
    v12 = v91;
    *(a1 + 88) = v93;
    v13 = v92[0];
    *(a1 + 56) = v12;
    *(a1 + 64) = v13;
    v14 = *(a1 + 72);
    if (v14)
    {
      free(v14);
    }

    v15 = v92[2];
    *(a1 + 72) = v92[1];
    *(a1 + 80) = v15;
    goto LABEL_23;
  }

  if (*(v6 + 5) != 1 || *(a1 + 20) != 1)
  {
    if (!*(v6 + 2))
    {
      goto LABEL_23;
    }

    v30 = *(v6 + 3);
    if (!v30)
    {
      goto LABEL_23;
    }

    v31 = *(v6 + 4);
    if (!v31)
    {
      goto LABEL_23;
    }

    v32 = v30 - 1;
    v33 = *(v6 + 9);
    v34 = 4 * *(v6 + 6);
    v35 = 4 * *(a1 + 24);
    v36 = v31 - 1;
    if (v36)
    {
      v37 = *(a1 + 28);
      v38 = *(v6 + 7);
      if (!v32)
      {
        do
        {
          *v7 = *v33;
          v7[1] = v33[1];
          v33 += v38;
          v7 += v37;
          --v36;
        }

        while (v36);
        goto LABEL_73;
      }

      v39 = 0;
      v40 = v33 + 1;
      v41 = v7 + 1;
      do
      {
        v42 = v41;
        v43 = v40;
        v44 = v32;
        do
        {
          *(v42 - 1) = *(v43 - 1);
          *v42 = *v43;
          v43 = (v43 + v34);
          v42 = (v42 + v35);
          --v44;
        }

        while (v44);
        *(v42 - 1) = *(v43 - 1);
        *v42 = *v43;
        v33 += v38;
        v7 += v37;
        ++v39;
        v40 += v38;
        v41 += v37;
      }

      while (v39 != v36);
    }

    else if (!v32)
    {
LABEL_73:
      *v7 = *v33;
      v7[1] = v33[1];
      goto LABEL_23;
    }

    do
    {
      *v7 = *v33;
      v7[1] = v33[1];
      v33 = (v33 + v34);
      v7 = (v7 + v35);
      --v32;
    }

    while (v32);
    goto LABEL_73;
  }

  v45 = *(v6 + 6);
  v46 = *(a1 + 24);
  v47 = *(v6 + 2);
  if (v45 == v46 && v45 == v47)
  {
    v65 = *(v6 + 7);
    v66 = *(a1 + 28);
    v67 = *(v6 + 3);
    v68 = (v67 * v45);
    if (v65 == v66 && v65 == v68)
    {
      v69 = *(v6 + 4) * v65;
      if (v69)
      {
        v70 = *(v6 + 9);
        v71 = *MEMORY[0x277D85DE8];
        v72 = 4 * v69;
        v73 = *(a1 + 72);
        goto LABEL_79;
      }
    }

    else
    {
      if (!v45)
      {
        goto LABEL_23;
      }

      if (!v67)
      {
        goto LABEL_23;
      }

      v74 = *(v6 + 4);
      if (!v74)
      {
        goto LABEL_23;
      }

      v75 = *(v6 + 9);
      v76 = v74 - 1;
      if (v74 != 1)
      {
        if (!v68)
        {
          goto LABEL_23;
        }

        v77 = 4 * v65;
        v78 = 4 * v66;
        do
        {
          memmove(v7, v75, 4 * v68);
          v75 += v77;
          v7 = (v7 + v78);
          --v76;
        }

        while (v76);
      }

      if (v68)
      {
        v79 = *MEMORY[0x277D85DE8];
        v72 = 4 * v68;
        v73 = v7;
        v70 = v75;
        goto LABEL_79;
      }
    }

LABEL_23:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

  v50 = *(v6 + 3);
  v49 = *(v6 + 4);
  if (v47)
  {
    v51 = v50 == 0;
  }

  else
  {
    v51 = 1;
  }

  if (v51 || v49 == 0)
  {
    goto LABEL_23;
  }

  v53 = v50 - 1;
  v54 = *(v6 + 9);
  v55 = 4 * v47;
  v56 = 4 * v46;
  v57 = v49 - 1;
  v83 = *(v6 + 6);
  if (v49 != 1)
  {
    v58 = *(a1 + 28);
    v59 = *(v6 + 7);
    if (v50 == 1)
    {
      v80 = 4 * v59;
      v81 = 4 * v58;
      do
      {
        memmove(v7, v54, v55);
        v54 += v80;
        v7 = (v7 + v81);
        --v57;
      }

      while (v57);
    }

    else
    {
      v60 = 0;
      v61 = 4 * v45;
      v84 = 4 * v58;
      v85 = 4 * v59;
      v87 = v49 - 1;
      do
      {
        v62 = v7;
        v63 = v54;
        v64 = v53;
        do
        {
          memmove(v62, v63, v55);
          v63 += v61;
          v62 += v56;
          --v64;
        }

        while (v64);
        memmove(v62, v63, v55);
        v54 += v85;
        v7 = (v7 + v84);
        ++v60;
      }

      while (v60 != v87);
    }
  }

  for (; v53; --v53)
  {
    memmove(v7, v54, v55);
    v54 += 4 * v83;
    v7 = (v7 + v56);
  }

  v82 = *MEMORY[0x277D85DE8];
  v73 = v7;
  v70 = v54;
  v72 = v55;
LABEL_79:

  memmove(v73, v70, v72);
}

void sub_255BD0738(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 8)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD0A38(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 8)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD0D38(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD0D74(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD0E88(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD20, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 9);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AF2C3C(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF46D4(a1 + 8, v6 + 2);
}

void sub_255BD1170(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 9)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD1470(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 9)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD1770(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD17AC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD18C0(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC0C8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 10);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AF42D4(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF4A7C(a1 + 8, v6 + 2);
}

void sub_255BD1BA8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 10)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD1EA8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 10)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD21A8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_255BD2310(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_255BD2478(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

void sub_255BD26BC(uint64_t a1, char **lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC0B0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v22, lpsrc, 11);
    v8 = *(v22 + 16);
    v21[0] = *v22;
    v21[1] = v8;
    v21[2] = *(v22 + 32);
    *&v22 = 0;
    MEMORY[0x259C49320]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 3;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v20 = v9;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v18 = qword_27F7DD608, v17 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v20;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        sub_255BF5AB4(v21, &v22);
        v19 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v18 = qword_27F7DD608;
      v17 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF4E80(a1 + 8, v6 + 2);
}

void sub_255BD29A4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 11)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD2CA4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 11)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD2FA4(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD2FE0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BD30F4(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC098, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 12);
    v9 = *(v23 + 16);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = *(v23 + 32);
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        result = sub_255BF68F4(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  return sub_255BF64F0(a1 + 8, v6 + 2);
}

void sub_255BD33DC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 12)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD36DC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 12)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD39DC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD3A18(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD3B2C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC080, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 13);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AF328C(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF6C84(a1 + 8, v6 + 2);
}

void sub_255BD3E14(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 13)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD4114(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 13)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD4414(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD4450(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD4564(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC068, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 14);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AC5844(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF7054(a1 + 8, v6 + 2);
}

void sub_255BD484C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 14)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD4B4C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 14)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD4E4C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_255BD4FB4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_255BD511C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

void sub_255BD5360(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC050, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 15);
    v9 = *(v24 + 16);
    v8 = *(v24 + 32);
    v22[0] = *v24;
    v22[1] = v9;
    v22[2] = v8;
    *&v24 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v24) = 4;
    *(&v24 + 4) = v12;
    v14 = v12;
    v15 = v24;
    v16 = HIDWORD(v12);
    LODWORD(v24) = 1;
    *(&v24 + 4) = v13;
    v17 = v24;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v24 = v10;
        *(&v24 + 1) = v15;
        v25 = v16;
        v26 = v17;
        v27 = HIDWORD(v13);
        v28 = v14;
        v29 = v13;
        v23[0] = v22;
        v23[1] = &v24;
        sub_255AF67EC(v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF7480(a1 + 8, v6 + 2);
}

void sub_255BD5650(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 15)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD5950(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 15)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD5C50(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD5C8C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD5DA0(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC038, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 16);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255ACE404(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF80DC(a1 + 8, v6 + 2);
}

void sub_255BD6088(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 16)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD6388(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 16)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD6688(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD66C4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD67D8(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC020, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 17);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AF2C3C(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF46D4(a1 + 8, v6 + 2);
}

void sub_255BD6AC0(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 17)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD6DC0(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 17)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD70C0(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD70FC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD7210(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC008, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 18);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AF42D4(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF4A7C(a1 + 8, v6 + 2);
}

void sub_255BD74F8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 18)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD77F8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 18)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD7AF8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_255BD7C60(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

void sub_255BD7EA4(uint64_t a1, char **lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBFF0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v22, lpsrc, 19);
    v8 = *(v22 + 16);
    v21[0] = *v22;
    v21[1] = v8;
    v21[2] = *(v22 + 32);
    *&v22 = 0;
    MEMORY[0x259C49320]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 3;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v20 = v9;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v18 = qword_27F7DD608, v17 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v20;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        sub_255BF5AB4(v21, &v22);
        v19 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v18 = qword_27F7DD608;
      v17 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF4E80(a1 + 8, v6 + 2);
}

void sub_255BD818C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 19)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD848C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 19)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD878C(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD87C8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BD88DC(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBFC0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 20);
    v9 = *(v23 + 16);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = *(v23 + 32);
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        result = sub_255BF68F4(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  return sub_255BF64F0(a1 + 8, v6 + 2);
}

void sub_255BD8BC4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 20)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD8EC4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 20)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD91C4(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD9200(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD9314(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBFA8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 21);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AF2C3C(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF46D4(a1 + 8, v6 + 2);
}

void sub_255BD95FC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 21)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD98FC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 21)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD9BFC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_255BD9C38(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD9D4C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBF90, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 22);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x259C49320]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 3;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_255AF42D4(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_255BF4A7C(a1 + 8, v6 + 2);
}

void sub_255BDA034(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 22)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BDA334(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 22)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
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
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
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
      goto LABEL_25;
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
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BDA634(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_255BDA79C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}