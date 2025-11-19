uint64_t sub_255B054CC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 334, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_29;
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
  v11 = a2;
  v19 = *(a1 + 8);
  v12 = v19;
  if (atomic_load_explicit((v19 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v19 + 104), &v20, sub_255B07AD4);
  }

  if (v11 >= (*(v12 + 120) - *(v12 + 112)) >> 3)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 335, "idx < p_->GetCachedBaseAddress().size()", 0x27uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_255C2500B, 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      v13 += 16;
      v16(v15, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_255C2500B, 0);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_29:
    abort();
  }

LABEL_24:
  v17 = *(a1 + 8);
  v19 = v17;
  if (atomic_load_explicit((v17 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v17 + 104), &v20, sub_255B07AD4);
  }

  return *(*(v17 + 112) + 8 * v11);
}

_DWORD *sub_255B057D0(_DWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v6 = (a1 + 2);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  sub_255B06474();
  v7 = qword_27F7DD1E8;
  if (!qword_27F7DD1E8)
  {
    goto LABEL_8;
  }

  v8 = &qword_27F7DD1E8;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 != &qword_27F7DD1E8 && *(v8 + 8) <= a2)
  {
    sub_255B06474();
    v18 = v15;
    v19 = ": ";
    v20 = 2;
    v11 = v8[5];
    v10 = v8 + 5;
    v9 = v11;
    v12 = *(v10 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = v10[1];
    }

    else
    {
      v9 = v10;
    }

    v21 = v9;
    v22 = v12;
    sub_255A7F250(&v18, v23, 0, 0, v6);
  }

  else
  {
LABEL_8:
    sub_255B06474();
    LODWORD(v20) = 0;
    sub_255B07308(&v17, &v18, &v15);
    if (v20 == -1)
    {
      sub_255A7C284();
    }

    v17 = &v16;
    (off_2867CFB80[v20])(&v17, &v18);
    if (v20 != -1)
    {
      (off_2867CFB38[v20])(&v17, &v18);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B0595C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_255A7B4D4(exception_object);
}

void sub_255B05974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255B05988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void *sub_255B0599C(void *a1, int *a2)
{
  v11 = 0;
  v14 = v10;
  v15 = "{";
  v16 = v10;
  v17 = "{";
  v18 = "{";
  v12.__r_.__value_.__r.__words[0] = &v14;
  sub_255A802D0(&v12);
  std::to_string(&v12, *a2);
  v14 = v10;
  v15 = &v12;
  v16 = v10;
  v17 = &v12;
  v18 = &v12;
  if (v11 == -1)
  {
    sub_255A7C284();
  }

  v13 = &v14;
  (off_2867CFB68[v11])(&v13, v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v14 = v10;
  v15 = ",";
  v16 = v10;
  v17 = ",";
  v18 = ",";
  if (v11 == -1)
  {
    goto LABEL_18;
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2867CFC40 + v11))(&v12, v10);
  v14 = v10;
  v15 = (a2 + 2);
  v16 = v10;
  v17 = (a2 + 2);
  v18 = (a2 + 2);
  if (v11 == -1 || (v12.__r_.__value_.__r.__words[0] = &v14, (off_2867CFC70[v11])(&v12, v10), v14 = v10, v15 = "}", v16 = v10, v17 = "}", v18 = "}", v11 == -1))
  {
LABEL_18:
    sub_255A7C284();
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2867CFC40 + v11))(&v12, v10);
  if (v11 == -1)
  {
    sub_255A7C284();
  }

  v14 = &v12;
  (off_2867CFB80[v11])(__p, &v14, v10);
  if (v11 != -1)
  {
    (off_2867CFB38[v11])(&v14, v10);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_255A7F9C8(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_255B05BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B05C38(int a1)
{
  result = 1;
  if (a1 <= 1278226487)
  {
    if (a1 > 875704421)
    {
      if (a1 > 875836533)
      {
        if (a1 == 875836534)
        {
          return result;
        }

        if (a1 != 1094862674)
        {
          v6 = 1111970369;
          goto LABEL_37;
        }

        return 4;
      }

      if (a1 == 875704422 || a1 == 875704438)
      {
        return result;
      }

      v4 = 875836518;
LABEL_41:
      if (a1 != v4)
      {
        goto LABEL_43;
      }

      return result;
    }

    if (a1 > 843264055)
    {
      v7 = a1 - 843264056;
      if (v7 <= 0x30 && ((1 << v7) & 0x1400000000001) != 0)
      {
        return 2;
      }

      goto LABEL_43;
    }

    if (a1 != 24)
    {
      if (a1 == 32)
      {
        return 4;
      }

      if (a1 != 842285639)
      {
        goto LABEL_43;
      }
    }

    return 3;
  }

  if (a1 > 1647392358)
  {
    if (a1 > 1717855599)
    {
      if (a1 > 1751410031)
      {
        if (a1 == 1751410032)
        {
          return result;
        }

        v4 = 1751411059;
      }

      else
      {
        if (a1 == 1717855600)
        {
          return result;
        }

        v4 = 1717856627;
      }

      goto LABEL_41;
    }

    if (a1 == 1647392359)
    {
      return result;
    }

    if (a1 != 1647589490)
    {
      v6 = 1647719521;
      goto LABEL_37;
    }

    return 3;
  }

  if (a1 <= 1278226741)
  {
    v5 = a1 - 1278226488;
    if (v5 > 0x30 || ((1 << v5) & 0x1400000000001) == 0)
    {
      goto LABEL_43;
    }

    return result;
  }

  if (a1 > 1380410944)
  {
    if (a1 != 1380410945)
    {
      v3 = 26689;
      goto LABEL_36;
    }

    return 4;
  }

  if (a1 != 1278226742)
  {
    v3 = 16961;
LABEL_36:
    v6 = v3 | 0x52470000;
LABEL_37:
    if (a1 == v6)
    {
      return 4;
    }

LABEL_43:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 420, &unk_255C2500B, 0, "not yet implemented", 0x13uLL, sub_255C101E0);
    abort();
  }

  return result;
}

uint64_t sub_255B05EB4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 40));
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255B05F3C()
{
  v0[6] = 0;
  v1[0] = v0;
  v1[1] = "Failed to create CVPixelBuffer: ";
  v1[2] = v0;
  v1[3] = "Failed to create CVPixelBuffer: ";
  v1[4] = "Failed to create CVPixelBuffer: ";
  v2 = v1;
  sub_255AA9164(&v2);
  sub_255AEDD88();
}

void *sub_255B06044(void *result)
{
  *result = &unk_2867CFBA8;
  result[1] = &unk_2867C8750;
  v1 = result[3];
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

void sub_255B060F8(void *a1)
{
  *a1 = &unk_2867CFBA8;
  a1[1] = &unk_2867C8750;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B0624C(uint64_t result, void *a2)
{
  v3 = *(result + 16);
  v2 = *(result + 24);
  *a2 = &unk_2867CFBA8;
  a2[1] = &unk_2867C8750;
  a2[2] = v3;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_255B062A4(uint64_t a1)
{
  *(a1 + 8) = &unk_2867C8750;
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_255B06340(void *a1)
{
  a1[1] = &unk_2867C8750;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t sub_255B063FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit2cv14PixelBufferRef17CreateChildBufferEmE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit2cv14PixelBufferRef17CreateChildBufferEmE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit2cv14PixelBufferRef17CreateChildBufferEmE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit2cv14PixelBufferRef17CreateChildBufferEmE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_255B06474()
{
  v2 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DD1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD1D8))
  {
    v1 = 0;
    operator new();
  }

  v0 = *MEMORY[0x277D85DE8];
}

void sub_255B06D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a84 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a85);
  if ((a84 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a82 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a83);
  if ((a82 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a80 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a81);
  if ((a80 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a78 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a79);
  if ((a78 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a77);
  if ((a76 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a67);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_16:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_17:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a16 & 0x80000000) == 0)
    {
LABEL_38:
      __cxa_guard_abort(&qword_27F7DD1D8);
      _Unwind_Resume(a1);
    }

LABEL_37:
    operator delete(a11);
    __cxa_guard_abort(&qword_27F7DD1D8);
    _Unwind_Resume(a1);
  }

LABEL_36:
  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  goto LABEL_37;
}

uint64_t sub_255B06F70(uint64_t a1, int a2, char *__s)
{
  *a1 = a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  return a1;
}

void sub_255B0702C(uint64_t a1, uint64_t a2)
{
  qword_27F7DD1F0 = 0;
  qword_27F7DD1E8 = 0;
  qword_27F7DD1E0 = &qword_27F7DD1E8;
  if (a2)
  {
    operator new();
  }
}

void sub_255B071EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B07224(va);
  sub_255B0728C(qword_27F7DD1E8);
  _Unwind_Resume(a1);
}

void *sub_255B07224(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_255B0728C(char *a1)
{
  if (a1)
  {
    sub_255B0728C(*a1);
    sub_255B0728C(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_255B07308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = *a3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v8 = *(a3 + 8);
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

  *(&__dst + v3) = 0;
  v9[0] = a2;
  v9[1] = &__dst;
  v9[2] = a2;
  v9[3] = &__dst;
  v9[4] = &__dst;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_255A7C284();
  }

  v10 = v9;
  (off_2867CFB68[v6])(&v10, a2);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_255B07428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B07444(int a1)
{
  if (a1 <= 1278226533)
  {
    if (a1 > 875704421)
    {
      if (a1 <= 875836533)
      {
        if (a1 == 875704422 || a1 == 875704438)
        {
          return 0;
        }

        v1 = 875836518;
      }

      else
      {
        if (a1 <= 1111970368)
        {
          if (a1 != 875836534)
          {
            v1 = 1094862674;
            goto LABEL_38;
          }

          return 0;
        }

        if (a1 == 1111970369)
        {
          return 0;
        }

        v1 = 1278226488;
      }

LABEL_38:
      if (a1 == v1)
      {
        return 0;
      }

LABEL_44:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 303, &unk_255C2500B, 0, "not yet implemented", 0x13uLL, sub_255C101E0);
      abort();
    }

    if (a1 <= 843264055)
    {
      if (a1 == 24 || a1 == 32)
      {
        return 0;
      }

      v1 = 842285639;
      goto LABEL_38;
    }

    if (a1 == 843264056)
    {
      return 0;
    }

    if (a1 != 843264102)
    {
      v4 = 843264104;
      goto LABEL_42;
    }

    return 3;
  }

  if (a1 > 1647392358)
  {
    if (a1 > 1717855599)
    {
      if (a1 > 1751410031)
      {
        if (a1 == 1751410032)
        {
          return 2;
        }

        v4 = 1751411059;
        goto LABEL_42;
      }

      if (a1 != 1717855600 && a1 != 1717856627)
      {
        goto LABEL_44;
      }

      return 3;
    }

    if (a1 == 1647392359 || a1 == 1647589490)
    {
      return 1;
    }

    v2 = 1647719521;
LABEL_27:
    if (a1 != v2)
    {
      goto LABEL_44;
    }

    return 1;
  }

  if (a1 <= 1380401728)
  {
    if (a1 == 1278226534)
    {
      return 3;
    }

    if (a1 == 1278226536)
    {
      return 2;
    }

    v2 = 1278226742;
    goto LABEL_27;
  }

  if (a1 == 1380401729)
  {
    return 0;
  }

  if (a1 == 1380410945)
  {
    return 3;
  }

  v4 = 1380411457;
LABEL_42:
  if (a1 != v4)
  {
    goto LABEL_44;
  }

  return 2;
}

uint64_t sub_255B076C0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_255A93CCC();
  }

  (*(*v3 + 48))(v3, &v6);
  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return MEMORY[0x259C49320](a1, 0x1020C40A5B76CDFLL);
}

void sub_255B07998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255B07A18(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B07A50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255B07A74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255B07AD4(CVPixelBufferRef ****a1)
{
  IOSurface = CVPixelBufferGetIOSurface(****a1);
  v2 = IOSurface;
  if (IOSurface)
  {
    CFRetain(IOSurface);
  }

  sub_255B07794(&buffer, v2);
}

void sub_255B07D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v11);
  sub_255A7A508(&a11);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255B07D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255B07D98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867C39A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B07DEC(uint64_t a1)
{
  *(a1 + 160) = &unk_2867C4068;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 64));
  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

size_t sub_255B07EF0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CFB38[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255B07FE4(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CFB38[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255B081A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B08200(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255B08440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

size_t sub_255B0845C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CFB38[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255B08550(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CFB38[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255B08714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B0876C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255B089AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

size_t sub_255B089C8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CFB38[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255B08ABC(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CFB38[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255B08C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B08CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255B08F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_255B08F44(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255B09344(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255B09044(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CFB38[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255B09138(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CFB38[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255B092F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255B09344(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255B094E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_255B09504(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255B09810(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_255B09604(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CFB38[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255B097C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255B09810(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255B099AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

size_t sub_255B099C0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CFB38[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255B09AB4(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CFB38[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255B09C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B09CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255B09F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255B0A130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255B0A1B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B0A1E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255B0A20C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255B0A26C(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_255B0A2E4(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) + 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_255B0A3E8(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_255B0A4E8(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_255B0A5EC(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) - 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

uint64_t sub_255B0A8DC(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_255B0A954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

void sub_255B0AA50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867CFD60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

std::locale *sub_255B0AACC(std::locale *a1)
{
  v2 = std::istream::~istream();
  MEMORY[0x259C49250](v2 + 88);
  a1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 4);
  return a1;
}

void sub_255B0AB2C(std::locale *a1)
{
  v2 = std::istream::~istream();
  MEMORY[0x259C49250](v2 + 88);
  a1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 4);

  JUMPOUT(0x259C49320);
}

void sub_255B0ABB0(std::locale *a1)
{
  std::istream::~istream();
  MEMORY[0x259C49250](&a1[9]);
  a1[1].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(a1 + 2);
}

void sub_255B0AC1C(std::locale *a1)
{
  std::istream::~istream();
  MEMORY[0x259C49250](&a1[9]);
  a1[1].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 2);

  JUMPOUT(0x259C49320);
}

void sub_255B0ACAC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C49250](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(v1 + 4);
}

void sub_255B0AD2C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C49250](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 4);

  JUMPOUT(0x259C49320);
}

void sub_255B0ADC4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C49250](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(v1 + 4);
}

void sub_255B0AE44(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C49250](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 4);

  JUMPOUT(0x259C49320);
}

void sub_255B0AEDC(uint64_t *a1, uint64_t a2)
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
        goto LABEL_51;
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
      goto LABEL_51;
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
  v39[0] = &unk_2867C4068;
  v39[1] = v12;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B4E9C8(v39);
  v39[0] = &unk_2867C4068;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v37 = *(a2 + 8);
    v38 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v36 = &unk_2867C4068;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v37 = *(a2 + 8);
  v38 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_2867C4068;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v33 = &unk_2867C4068;
  v34 = v16;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_255BF9468(&v33, 0);
  v41[0] = &unk_2867C4068;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_255BFAAA8(v41);
  v19 = sub_255BFAEEC(v41);
  v20 = sub_255BFB330(v41);
  v21 = sub_255BFB774(v41);
  v22 = v18;
  v41[0] = &unk_2867C4068;
  v23 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v33 = &unk_2867C4068;
  v26 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *a1 = v17;
  a1[1] = v28;
  a1[2] = v25;
  if (v21 * HIDWORD(v28) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v29 = qword_27F7DD608, v30 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_47:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v29 = qword_27F7DD608;
      v30 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v32 = *v29;
      v31 = *(v29 + 8);
      v29 += 16;
      v32(v31, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v29 != v30);
    if (byte_27F7DD630)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }
}

void sub_255B0B42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B0B440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_255BFA730(&a18);
  sub_255BFA730(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255B0B45C(uint64_t a1, _DWORD *a2)
{
  *a1 = &unk_2867C43E8;
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
    sub_255B0AEDC(&v8, &v10);
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

void sub_255B0B6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_255BFA660(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B0B720(uint64_t a1)
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

uint64_t sub_255B0B798(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_255B0B7F4(uint64_t a1, _DWORD *a2)
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
        sub_255B0BBBC(v20, a1);
        sub_255AF2374(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B0BAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0BAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0BAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0BAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B0BB18(uint64_t a1, uint64_t a2)
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

void sub_255B0BBBC(uint64_t *a1, uint64_t a2)
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

void sub_255B0BEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B0BF18(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
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
        goto LABEL_51;
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
      goto LABEL_51;
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
  v40[0] = &unk_2867C4068;
  v40[1] = v12;
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B4E9C8(v40);
  v40[0] = &unk_2867C4068;
  v13 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v38 = *(a2 + 8);
    v39 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v37 = &unk_2867C4068;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v38 = *(a2 + 8);
  v39 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_2867C4068;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v34 = &unk_2867C4068;
  v35 = v16;
  v36 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_255BF9468(&v34, 0);
  *&v42 = &unk_2867C4068;
  *(&v42 + 1) = v35;
  v43 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_255BFAAA8(&v42);
  v19 = sub_255BFAEEC(&v42);
  v20 = sub_255BFB330(&v42);
  v21 = sub_255BFB774(&v42);
  v22 = v18;
  *&v42 = &unk_2867C4068;
  v23 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v34 = &unk_2867C4068;
  v26 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v42 + 4) = v28;
  LODWORD(v42) = 2;
  v29 = v42;
  LODWORD(v42) = 1;
  *(&v42 + 4) = v25;
  v30 = v42;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v31 = qword_27F7DD608, v32 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_47:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_48;
      }
    }

    else
    {
      v31 = qword_27F7DD608;
      v32 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_27F7DD630)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }

LABEL_48:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_255B0C4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B0C4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B0C4F4(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_255B0C514(uint64_t result, __int128 *a2)
{
  v2 = result;
  *result = &unk_2867C4358;
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
    sub_255B0BF18(&v8, &v12);
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

void sub_255B0C7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B0C814(uint64_t a1)
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

void sub_255B0C88C(uint64_t a1, size_t *a2)
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
        sub_255B0CC54(v20, a1);
        sub_255AF26F0(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B0CB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0CB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0CB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B0CBB0(uint64_t a1, uint64_t a2)
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

void sub_255B0CC54(uint64_t a1, uint64_t a2)
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

void sub_255B0CEDC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_255B0CEF8(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
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
        goto LABEL_51;
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
      goto LABEL_51;
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
  v40[0] = &unk_2867C4068;
  v40[1] = v12;
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B4E9C8(v40);
  v40[0] = &unk_2867C4068;
  v13 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v38 = *(a2 + 8);
    v39 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v37 = &unk_2867C4068;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v38 = *(a2 + 8);
  v39 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_2867C4068;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v34 = &unk_2867C4068;
  v35 = v16;
  v36 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_255BF9468(&v34, 0);
  *&v42 = &unk_2867C4068;
  *(&v42 + 1) = v35;
  v43 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_255BFAAA8(&v42);
  v19 = sub_255BFAEEC(&v42);
  v20 = sub_255BFB330(&v42);
  v21 = sub_255BFB774(&v42);
  v22 = v18;
  *&v42 = &unk_2867C4068;
  v23 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v34 = &unk_2867C4068;
  v26 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v42 + 4) = v28;
  LODWORD(v42) = 3;
  v29 = v42;
  LODWORD(v42) = 1;
  *(&v42 + 4) = v25;
  v30 = v42;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v31 = qword_27F7DD608, v32 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_47:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_48;
      }
    }

    else
    {
      v31 = qword_27F7DD608;
      v32 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_27F7DD630)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }

LABEL_48:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_255B0D4AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B0D4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B0D4D4(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_255B0D4F4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_2867C42C8;
  *(a1 + 8) = 0;
  if (*(a3 + 6))
  {
    v4 = *(a3 + 7) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = &unk_2867C4068;
  *(a1 + 40) = 0;
  if (*(a3 + 6) && *(a3 + 7))
  {
    v14 = &unk_2867C4068;
    v15 = 0uLL;
    sub_255B0CEF8(&v10, &v14);
    v5 = v12;
    *(a1 + 48) = v11;
    *(a1 + 64) = v5;
    *(a1 + 80) = v13;
    v14 = &unk_2867C4068;
    v6 = *(&v15 + 1);
    if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    v7 = *a3;
    v8 = a3[1];
    *(a1 + 80) = *(a3 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  return a1;
}

void sub_255B0D7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255B0D7F4(uint64_t a1, uint64_t a2)
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
        sub_255B0E71C(v20, a1);
        v24[0] = v20;
        v24[1] = a2;
        sub_255AF2B3C(v24);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B0DAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0DAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0DAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0DB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B0DB14(uint64_t a1)
{
  *a1 = &unk_2867C42C8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B0DB8C(uint64_t a1, uint64_t a2)
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
        sub_255B0E71C(v20, a1);
        sub_255AF2C3C(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B0DE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0DE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0DE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0DE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B0DEA8(uint64_t a1, uint64_t a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C42C8;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_2867C4068;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v32 = v4;
  v33 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v11 = qword_27F7DD608, v12 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "ref.IsValid()", 13, &unk_255C2500B, 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, &unk_255C2500B, 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v39[0] = &unk_2867C4068;
  v39[1] = v32;
  v40 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B4E9C8(v39);
  v39[0] = &unk_2867C4068;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v33;
    v37 = v32;
    v38 = v33;
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_33:
    v36 = &unk_2867C4068;
    goto LABEL_34;
  }

  v14 = v33;
  v37 = v32;
  v38 = v33;
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_2867C4068;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_34:
  v34[0] = &unk_2867C4068;
  v34[1] = v32;
  v35 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_255BFAAA8(v34);
  v16 = sub_255BFAEEC(v34);
  v17 = sub_255BFB330(v34);
  v18 = sub_255BFB774(v34);
  v34[0] = &unk_2867C4068;
  v19 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v41[0]) = 3;
  HIDWORD(v41[0]) = v22;
  *(a1 + 48) = v41[0];
  *(a1 + 56) = v16;
  LODWORD(v41[0]) = 1;
  *(v41 + 4) = v21;
  *(a1 + 60) = v41[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_67;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_66:
        qword_27F7DD620(*algn_27F7DD628, "(buffer == nullptr) == extent.IsEmpty()", 39, &unk_255C2500B, 0);
        goto LABEL_67;
      }
    }

    else
    {
      v28 = qword_27F7DD608;
      v29 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, &unk_255C2500B, 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_27F7DD630)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

LABEL_67:
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B0E5F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_255BFA730(va1);
  sub_255BFA730(va);
  sub_255B0B798(v2);
  _Unwind_Resume(a1);
}

void sub_255B0E678(uint64_t a1, uint64_t a2)
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

void sub_255B0E71C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v13 = &unk_2867C4068;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_2867C4068;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0CEF8(a1, v11);
          v11[0] = &unk_2867C4068;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_2867C4068;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B0E92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B0E948(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
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
        goto LABEL_51;
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
      goto LABEL_51;
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
  v40[0] = &unk_2867C4068;
  v40[1] = v12;
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B4E9C8(v40);
  v40[0] = &unk_2867C4068;
  v13 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v38 = *(a2 + 8);
    v39 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v37 = &unk_2867C4068;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v38 = *(a2 + 8);
  v39 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_2867C4068;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v34 = &unk_2867C4068;
  v35 = v16;
  v36 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_255BF9468(&v34, 0);
  *&v42 = &unk_2867C4068;
  *(&v42 + 1) = v35;
  v43 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_255BFAAA8(&v42);
  v19 = sub_255BFAEEC(&v42);
  v20 = sub_255BFB330(&v42);
  v21 = sub_255BFB774(&v42);
  v22 = v18;
  *&v42 = &unk_2867C4068;
  v23 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v34 = &unk_2867C4068;
  v26 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v42 + 4) = v28;
  LODWORD(v42) = 4;
  v29 = v42;
  LODWORD(v42) = 1;
  *(&v42 + 4) = v25;
  v30 = v42;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v31 = qword_27F7DD608, v32 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_47:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_48;
      }
    }

    else
    {
      v31 = qword_27F7DD608;
      v32 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_27F7DD630)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }

LABEL_48:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_255B0EEFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B0EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B0EF24(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_255B0EF44(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = &unk_2867C4238;
  *(a1 + 8) = 0;
  if (*(a3 + 6))
  {
    v4 = *(a3 + 7) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((a2 - 25) <= 0xC)
    {
      v5 = (dword_255C3DCCC[a2 - 25] | dword_255C3DC98[a2 - 25]);
    }

    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = &unk_2867C4068;
  *(a1 + 40) = 0;
  if (*(a3 + 6) && *(a3 + 7))
  {
    v15 = &unk_2867C4068;
    v16 = 0uLL;
    sub_255B0E948(&v11, &v15);
    v6 = v13;
    *(a1 + 48) = v12;
    *(a1 + 64) = v6;
    *(a1 + 80) = v14;
    v15 = &unk_2867C4068;
    v7 = *(&v16 + 1);
    if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v8 = *a3;
    v9 = a3[1];
    *(a1 + 80) = *(a3 + 4);
    *(a1 + 48) = v8;
    *(a1 + 64) = v9;
  }

  return a1;
}

void sub_255B0F204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255B0F24C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_42;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return;
  }

  v6 = *v3;
  v5 = v3[1];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v7 = *(a1 + 40);
  switch(v7)
  {
    case 2:
      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      v26 = v16;
      v27 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        v16 = v26;
      }

      v25 = &unk_2867C4028;
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
      v26 = v12;
      v27 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        v12 = v26;
      }

      v25 = &unk_2867C4028;
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
      v26 = v8;
      v27 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v26;
      }

      v25 = &unk_2867C4028;
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
LABEL_42:
      sub_255A7C284();
  }

  sub_255C010CC(v26);
LABEL_35:
  sub_255B101B4(v20, a1);
  v28[0] = v20;
  v28[1] = a2;
  if (v24 == 1)
  {
    sub_255AF2530(v28);
  }

  else
  {
    v29 = a2;
    if (v21 && v22)
    {
      if (v23)
      {
        v30 = &v29;
        sub_255AF30C4(&v30, v20);
      }
    }
  }

  sub_255BF973C(&v25);
}

void sub_255B0F55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0F570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0F584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0F598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B0F5AC(uint64_t a1)
{
  *a1 = &unk_2867C4238;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B0F624(uint64_t a1, uint64_t a2)
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
        sub_255B101B4(v20, a1);
        sub_255AF328C(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B0F8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0F904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0F918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B0F92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B0F940(uint64_t a1, uint64_t a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C4238;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_2867C4068;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v32 = v4;
  v33 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v11 = qword_27F7DD608, v12 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "ref.IsValid()", 13, &unk_255C2500B, 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, &unk_255C2500B, 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v39[0] = &unk_2867C4068;
  v39[1] = v32;
  v40 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B4E9C8(v39);
  v39[0] = &unk_2867C4068;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v33;
    v37 = v32;
    v38 = v33;
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_33:
    v36 = &unk_2867C4068;
    goto LABEL_34;
  }

  v14 = v33;
  v37 = v32;
  v38 = v33;
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_2867C4068;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_34:
  v34[0] = &unk_2867C4068;
  v34[1] = v32;
  v35 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_255BFAAA8(v34);
  v16 = sub_255BFAEEC(v34);
  v17 = sub_255BFB330(v34);
  v18 = sub_255BFB774(v34);
  v34[0] = &unk_2867C4068;
  v19 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v41[0]) = 4;
  HIDWORD(v41[0]) = v22;
  *(a1 + 48) = v41[0];
  *(a1 + 56) = v16;
  LODWORD(v41[0]) = 1;
  *(v41 + 4) = v21;
  *(a1 + 60) = v41[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_67;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_66:
        qword_27F7DD620(*algn_27F7DD628, "(buffer == nullptr) == extent.IsEmpty()", 39, &unk_255C2500B, 0);
        goto LABEL_67;
      }
    }

    else
    {
      v28 = qword_27F7DD608;
      v29 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, &unk_255C2500B, 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_27F7DD630)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

LABEL_67:
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B10090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_255BFA730(va1);
  sub_255BFA730(va);
  sub_255B0B798(v2);
  _Unwind_Resume(a1);
}

void sub_255B10110(uint64_t a1, uint64_t a2)
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

void sub_255B101B4(uint64_t a1, uint64_t a2)
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

          sub_255B0E948(a1, v19);
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

void sub_255B1043C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_255B10458(uint64_t *a1, uint64_t a2)
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
        goto LABEL_65;
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
      goto LABEL_65;
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
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_30:
          qword_27F7DD620(*algn_27F7DD628, "Contains(pf::formats::U16(), ref.Format())", 42, &unk_255C2500B, 0);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, &unk_255C2500B, 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
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
      goto LABEL_34;
    }

LABEL_38:
    v38 = &unk_2867C4068;
    goto LABEL_39;
  }

  v17 = *(a2 + 16);
  v39 = *(a2 + 8);
  v40 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_2867C4068;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_39:
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
  v25 = sub_255BFB774(v43) << 31;
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
  a1[2] = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v25) * HIDWORD(v30) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v31 = qword_27F7DD608, v32 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_63:
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
        goto LABEL_65;
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
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }
}

void sub_255B10B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B10B24(uint64_t a1, _DWORD *a2)
{
  *a1 = &unk_2867C41A8;
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
    sub_255B10458(&v8, &v10);
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

void sub_255B10DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_255BFA660(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B10DE8(uint64_t a1)
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

void sub_255B10E60(uint64_t a1, unint64_t a2)
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
        sub_255B11228(v20, a1);
        sub_255AF38B0(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B1112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B11140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B11154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B11168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B11184(uint64_t a1, uint64_t a2)
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

void sub_255B11228(uint64_t *a1, uint64_t a2)
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

void sub_255B11568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B11584(uint64_t a1, uint64_t a2)
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
        goto LABEL_65;
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
      goto LABEL_65;
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
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_30:
          qword_27F7DD620(*algn_27F7DD628, "Contains(pf::formats::U16(), ref.Format())", 42, &unk_255C2500B, 0);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, &unk_255C2500B, 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
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
      goto LABEL_34;
    }

LABEL_38:
    v39 = &unk_2867C4068;
    goto LABEL_39;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_2867C4068;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_39:
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
  LODWORD(v44) = 3;
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
LABEL_63:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_64;
      }
    }

    else
    {
      v33 = qword_27F7DD608;
      v34 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_65;
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
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }

LABEL_64:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_255B11C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B11C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B11CA4(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_255B11CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B11CD8(uint64_t result, __int128 *a2)
{
  v2 = result;
  *result = &unk_2867C4118;
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
    sub_255B11584(&v8, &v12);
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

void sub_255B11F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B11FD8(uint64_t a1)
{
  *a1 = &unk_2867C4118;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B12050(uint64_t a1, uint64_t a2)
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
        sub_255B12418(v20, a1);
        sub_255AF42D4(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B1231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B12330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B12344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B12358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B12374(uint64_t a1, uint64_t a2)
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

void sub_255B12418(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v13 = &unk_2867C4068;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_2867C4068;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B11584(a1, v11);
          v11[0] = &unk_2867C4068;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_2867C4068;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B12628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B12644(uint64_t a1, uint64_t a2)
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
        goto LABEL_65;
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
      goto LABEL_65;
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
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_30:
          qword_27F7DD620(*algn_27F7DD628, "Contains(pf::formats::U16(), ref.Format())", 42, &unk_255C2500B, 0);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, &unk_255C2500B, 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
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
      goto LABEL_34;
    }

LABEL_38:
    v39 = &unk_2867C4068;
    goto LABEL_39;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_2867C4068;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_39:
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
LABEL_63:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_64;
      }
    }

    else
    {
      v33 = qword_27F7DD608;
      v34 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_65;
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
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }

LABEL_64:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_255B12D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B12D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B12D64(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_255B12D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B12D98(uint64_t result, __int128 *a2)
{
  v2 = result;
  *result = &unk_2867C4088;
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
    sub_255B12644(&v8, &v12);
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

void sub_255B13050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_255BFA660(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B13098(uint64_t a1)
{
  *a1 = &unk_2867C4088;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B13110(uint64_t a1, uint64_t a2)
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
        sub_255B134D8(v20, a1);
        sub_255AC5844(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B133DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B133F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B13404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B13418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B13434(uint64_t a1, uint64_t a2)
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

void sub_255B134D8(uint64_t a1, uint64_t a2)
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

          sub_255B12644(a1, v19);
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

void sub_255B13760(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_255B1377C(uint64_t *a1, uint64_t a2)
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
  v25 = sub_255BFB774(v43) << 31;
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
  a1[2] = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
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

void sub_255B13E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B13E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_255BFA730(&a18);
  sub_255BFA730(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255B13E54(uint64_t a1, _DWORD *a2)
{
  *a1 = &unk_2867C4748;
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
    sub_255B1377C(&v8, &v10);
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

void sub_255B140D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_255BFA660(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B14118(uint64_t a1)
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

void sub_255B14190(uint64_t a1, uint64_t a2)
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
        sub_255B14558(v20, a1);
        sub_255AC7334(a2, v20);
        sub_255BF973C(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_255B1445C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B14470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B14484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B14498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255BF973C(va);
  _Unwind_Resume(a1);
}

void sub_255B144B4(uint64_t a1, uint64_t a2)
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

void sub_255B14558(uint64_t *a1, uint64_t a2)
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

void sub_255B14898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255BFA730(&a9);
  sub_255BFA730(&a12);
  _Unwind_Resume(a1);
}

void sub_255B148B4(uint64_t a1, uint64_t a2)
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
  LODWORD(v44) = 2;
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