void sub_255B8C74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  if (*(v53 - 200) == 1 && *(v53 - 201) < 0)
  {
    operator delete(*(v53 - 224));
  }

  sub_255A7F5A0(&a10);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255B8C7D4(uint64_t a1)
{
  sub_255A81798(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B8C80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x277D85DE8];
  sub_255B8B874(&v21, a2);
  if (*(a3 + 24) != 1)
  {
    a3 = a2 + 80;
    if (*(a2 + 103) < 0)
    {
      v6 = (a2 + 88);
      goto LABEL_7;
    }

LABEL_5:
    v62 = *a3;
    v63 = *(a3 + 16);
    goto LABEL_8;
  }

  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = (a3 + 8);
LABEL_7:
  sub_255A7E018(&v62, *a3, *v6);
LABEL_8:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  __p = v62;
  v30 = v63;
  v7 = v23;
  if (v31)
  {
    v8 = v23;
  }

  else
  {
    v8 = 1;
  }

  if (v31)
  {
    v9 = 17;
  }

  else
  {
    v9 = 65;
  }

  if (v31)
  {
    v10 = v24;
  }

  else
  {
    v10 = v23;
  }

  if (v31)
  {
    v11 = 1;
  }

  else
  {
    v11 = v24;
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_255A7E018(&v62, v25, *(&v25 + 1));
  }

  else
  {
    v62 = v25;
    v63 = v26;
  }

  v65 = v9;
  v64 = 1;
  v66 = 1;
  v67 = 1;
  v68 = 1;
  v69 = v8 * v7;
  v70 = 1;
  v71 = v10;
  v72 = 1;
  v73 = 1;
  v74 = 1;
  v75 = v11;
  v76 = 1;
  v77 = 1;
  v78 = 0;
  v80 = 0;
  v81 = 0;
  v83 = 0;
  sub_255A82028(v40, &v62);
  sub_255B5D5E8(&v37, v40, 1uLL);
  if (v61 != 1)
  {
LABEL_29:
    if (v58 != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (v60 != v59)
  {
    if (v60)
    {
      (*(*v60 + 40))();
    }

    goto LABEL_29;
  }

  (*(*v60 + 32))(v60);
  if (v58 != 1)
  {
    goto LABEL_36;
  }

LABEL_30:
  if (v57 == v56)
  {
    (*(*v57 + 32))(v57);
  }

  else if (v57)
  {
    (*(*v57 + 40))();
  }

LABEL_36:
  if (v42 == 1 && SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (v34 == 1)
  {
    v12 = v24;
    if (SHIBYTE(v33) < 0)
    {
      sub_255A7E018(v40, v32[0], v32[1]);
    }

    else
    {
      *v40 = *v32;
      v41 = v33;
    }

    v42 = 1;
    v43 = 65;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v51 = 2;
    v52 = 1;
    v53 = v12;
    v54 = 1;
    v55 = 1;
    v56[0] = 0;
    v58 = 0;
    v59[0] = 0;
    v61 = 0;
    v13 = v38;
    if (v38 >= v39)
    {
      v14 = sub_255B728B8(&v37, v40);
    }

    else
    {
      sub_255A82028(v38, v40);
      v14 = v13 + 168;
    }

    v38 = v14;
    if (v61 == 1)
    {
      if (v60 == v59)
      {
        (*(*v60 + 32))(v60);
        if (v58 == 1)
        {
LABEL_51:
          if (v57 == v56)
          {
            (*(*v57 + 32))(v57);
          }

          else if (v57)
          {
            (*(*v57 + 40))();
          }
        }

LABEL_57:
        if (v42 == 1 && SHIBYTE(v41) < 0)
        {
          operator delete(v40[0]);
        }

        goto LABEL_60;
      }

      if (v60)
      {
        (*(*v60 + 40))();
      }
    }

    if (v58 == 1)
    {
      goto LABEL_51;
    }

    goto LABEL_57;
  }

LABEL_60:
  if (SHIBYTE(v28) < 0)
  {
    sub_255A7E018(v40, v27, *(&v27 + 1));
  }

  else
  {
    *v40 = v27;
    v41 = v28;
  }

  v42 = 1;
  sub_255B5D898(&v35, v40, 1uLL);
  if (v42 == 1 && SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  *a1 = v21;
  *(a1 + 8) = v22;
  if (SHIBYTE(v30) < 0)
  {
    sub_255A7E018((a1 + 16), __p, *(&__p + 1));
  }

  else
  {
    *(a1 + 16) = __p;
    *(a1 + 32) = v30;
  }

  sub_255B5DB04((a1 + 40), &v37);
  sub_255A826BC((a1 + 64), &v35);
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  v15 = v35;
  if (v35)
  {
    v16 = v36;
    v17 = v35;
    if (v36 != v35)
    {
      do
      {
        v18 = v16;
        v16 -= 4;
        if (*(v18 - 8) == 1 && *(v18 - 9) < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v35;
    }

    v36 = v15;
    operator delete(v17);
  }

  v40[0] = &v37;
  sub_255A8250C(v40);
  if (v83 != 1)
  {
LABEL_82:
    if (v80 != 1)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

  if (v82 != &v81)
  {
    if (v82)
    {
      (*(*v82 + 40))(v82);
    }

    goto LABEL_82;
  }

  (*(*v82 + 32))(v82);
  if (v80 != 1)
  {
    goto LABEL_89;
  }

LABEL_83:
  if (v79 == &v78)
  {
    (*(*v79 + 32))(v79);
  }

  else if (v79)
  {
    (*(*v79 + 40))(v79);
  }

LABEL_89:
  if (v64 == 1 && SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (v34 == 1 && SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_101:
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

LABEL_102:
    operator delete(v25);
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v28) < 0)
  {
    goto LABEL_101;
  }

LABEL_97:
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_102;
  }

LABEL_98:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_255B8CF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void **a33)
{
  a33 = &a30;
  sub_255A8250C(&a33);
  sub_255B5D4B4(v33 - 240);
  sub_255B8AD78(&a9);
  _Unwind_Resume(a1);
}

void sub_255B8CFC4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (a39 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x255B8CF9CLL);
}

void sub_255B8CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_255B5D4B4(&a33);
  sub_255B5D4B4(v33 - 240);
  sub_255B8AD78(&a9);
  _Unwind_Resume(a1);
}

void sub_255B8D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255B5D4B4(v9 - 240);
  sub_255B8AD78(&a9);
  _Unwind_Resume(a1);
}

void sub_255B8D0BC(void *a1, int a2)
{
  *a1 = &unk_2867C9768;
  v2[0] = a2;
  v2[1] = a2;
  a1[1] = &unk_2867C5750;
  sub_255B8DC28(v2);
}

void sub_255B8D3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  sub_255A7A508(v10 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_255B8D3FC(uint64_t result)
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

void sub_255B8D5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255B0A26C(&a9);
  sub_255A7A508(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_255B8D5E0(uint64_t a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (*(a4 + 4))
  {
    v7 = *a4;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = a3[3];
  v9 = __sincosf_stret(a3[2]);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else if (!v11)
  {
LABEL_10:
    v37 = 0;
    goto LABEL_11;
  }

  if (*(a1 + 137) != 1)
  {
    goto LABEL_10;
  }

  (*(**(a1 + 16) + 96))(&v37);
LABEL_11:
  sub_255B8EAB0(a2, &v36);
  if (*(a1 + 96))
  {
    v12 = *(a1 + 100);
    if (v12)
    {
      v13 = *(a1 + 104);
      if (v13)
      {
        v15 = *(a1 + 112);
        v14 = *(a1 + 116);
        v17 = *(a2 + 48);
        v16 = *(a2 + 52);
        v18 = *(a1 + 40);
        if (*(a1 + 136) == 1 && v18)
        {
          (*(**(a1 + 16) + 88))(*(a1 + 16), 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/Image.h:1193");
          v18 = *(a1 + 40);
        }

        v19 = *(a2 + 24);
        if (*(a2 + 72) == 1 && v19)
        {
          v20 = *(a2 + 8);
          v21 = *(a2 + 16);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v35 = v20;
              (v21->__on_zero_shared)(v21);
              std::__shared_weak_count::__release_weak(v21);
              v20 = v35;
            }
          }

          (*(*v20 + 88))(v20, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v19 = *(a2 + 24);
        }

        v22 = v8 * v7;
        v23 = v12 - 1;
        v24 = 4 * v15;
        v25 = 4 * v17;
        v26 = v13 - 1;
        if (v13 == 1)
        {
          if (v12 == 1)
          {
LABEL_34:
            *v19 = *a3 + (v22 * ((v9.__cosval * *v18) - (v9.__sinval * v18[1])));
            v19[1] = a3[1] + (v22 * ((v9.__sinval * *v18) + (v9.__cosval * v18[1])));
            goto LABEL_35;
          }
        }

        else
        {
          if (v12 == 1)
          {
            do
            {
              *v19 = *a3 + (v22 * ((v9.__cosval * *v18) - (v9.__sinval * v18[1])));
              v19[1] = a3[1] + (v22 * ((v9.__sinval * *v18) + (v9.__cosval * v18[1])));
              v18 += v14;
              v19 += v16;
              --v26;
            }

            while (v26);
            goto LABEL_34;
          }

          v27 = 0;
          v28 = v18 + 1;
          v29 = v19 + 1;
          do
          {
            v30 = v29;
            v31 = v28;
            v32 = v12 - 1;
            do
            {
              *(v30 - 1) = *a3 + (v22 * ((v9.__cosval * *(v31 - 1)) - (v9.__sinval * *v31)));
              *v30 = a3[1] + (v22 * ((v9.__sinval * *(v31 - 1)) + (v9.__cosval * *v31)));
              v31 = (v31 + v24);
              v30 = (v30 + v25);
              --v32;
            }

            while (v32);
            *(v30 - 1) = *a3 + (v22 * ((v9.__cosval * *(v31 - 1)) - (v9.__sinval * *v31)));
            *v30 = a3[1] + (v22 * ((v9.__sinval * *(v31 - 1)) + (v9.__cosval * *v31)));
            v18 += v14;
            v19 += v16;
            ++v27;
            v28 += v14;
            v29 += v16;
          }

          while (v27 != v26);
        }

        do
        {
          *v19 = *a3 + (v22 * ((v9.__cosval * *v18) - (v9.__sinval * v18[1])));
          v19[1] = a3[1] + (v22 * ((v9.__sinval * *v18) + (v9.__cosval * v18[1])));
          v18 = (v18 + v24);
          v19 = (v19 + v25);
          --v23;
        }

        while (v23);
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  v33 = v36;
  v36 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  result = v37;
  v37 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B8DA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
    v13 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  (*(*v13 + 8))(v13);
  _Unwind_Resume(exception_object);
}

void *sub_255B8DAEC(void *result)
{
  *result = &unk_2867C9768;
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

void sub_255B8DB80(void *a1)
{
  *a1 = &unk_2867C9768;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

void sub_255B8DC28(_DWORD *a1)
{
  v10 = &unk_2867C5900;
  sub_255BF86D4(v11, a1);
  v2 = v11[0];
  v1 = &unk_2867C6240;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_255B8DEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_255A7A508(v2);
  sub_255A7A508(va1);
  sub_255B8E33C(va);
  _Unwind_Resume(a1);
}

void sub_255B8DF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B8E33C(va);
  _Unwind_Resume(a1);
}

void sub_255B8DF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B8DF3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8DFF4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

uint64_t *sub_255B8E0A4()
{
  if ((atomic_load_explicit(&qword_27F7DC638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC638))
  {
    sub_255B8E140();
  }

  if (byte_27F7DC637 >= 0)
  {
    return &qword_27F7DC620;
  }

  else
  {
    return qword_27F7DC620;
  }
}

void sub_255B8E20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B8E240(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8E278(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255B8E2DC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255B8E33C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 72);
    if (v3)
    {
      free(v3);
    }

    *(v1 + 72) = 0;
    MEMORY[0x259C49320](v1, 0x1091C40A44A61E0);
    return v2;
  }

  return result;
}

void sub_255B8E394(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v10 = v4;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v4;
    v9 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = v4;
    v9 = 0;
  }

  sub_255B8E4AC(a2, &v8);
  v6 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_255B8E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_255A7A508(&a9);
  sub_255A7A508(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_255B8E4AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 64))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x259C49320]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

void sub_255B8E638(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v10 = v4;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v4;
    v9 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = v4;
    v9 = 0;
  }

  sub_255B8E924(a2, &v8);
  v6 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_255B8E734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_255A7A508(&a9);
  sub_255A7A508(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_255B8E750(uint64_t result)
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

void sub_255B8E7C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B8E880(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t *sub_255B8E924(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  (*(*v3 + 72))(&v13);
  v7 = v13[1];
  v6 = v13[2];
  *(a1 + 1) = *v13;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v13 = 0;
  MEMORY[0x259C49320]();
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

  v11 = (*(*v8 + 104))(v8);
  *(a1 + 32) = v11 & ((v11 >> 1) >> 15);
  return a1;
}

void sub_255B8EAB0(uint64_t a1@<X0>, void *a2@<X8>)
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
        if (*(v8 + 73) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 73) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 1);
}

uint64_t sub_255B8EBFC(uint64_t result, uint64_t a2, float a3, float a4)
{
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    sub_255B8EAB0(a2, &v78);
    if (!*(a2 + 32) || (v7 = *(a2 + 36)) == 0 || (v8 = *(a2 + 40)) == 0)
    {
LABEL_105:
      result = v78;
      v78 = 0;
      if (!result)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }

    v10 = *(a2 + 48);
    v9 = *(a2 + 52);
    v11 = *(a2 + 24);
    if (*(a2 + 72) == 1 && v11)
    {
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v12;
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          v12 = v14;
        }
      }

      (*(*v12 + 88))(v12, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v11 = *(a2 + 24);
    }

    v15 = v7 - 1;
    v16 = 4 * v10;
    v17 = v8 - 1;
    if (v8 == 1)
    {
      if (v7 == 1)
      {
LABEL_97:
        v71 = 0.0;
        v72 = a3 + -1.0;
        v73 = v11[1];
        if ((a3 + -1.0) >= *v11)
        {
          v72 = *v11;
        }

        if (*v11 < 0.0)
        {
          v72 = 0.0;
        }

        *v11 = v72;
        if (v73 >= 0.0)
        {
          v71 = a4 + -1.0;
          if ((a4 + -1.0) >= v73)
          {
            v71 = v73;
          }
        }

        v11[1] = v71;
        goto LABEL_105;
      }

      v20 = a3 + -1.0;
      v21 = a4 + -1.0;
    }

    else
    {
      v18 = 4 * v9;
      if (v7 == 1)
      {
        do
        {
          v67 = v11[1];
          if ((a3 + -1.0) >= *v11)
          {
            v68 = *v11;
          }

          else
          {
            v68 = a3 + -1.0;
          }

          if (*v11 >= 0.0)
          {
            v69 = v68;
          }

          else
          {
            v69 = 0.0;
          }

          *v11 = v69;
          v70 = 0.0;
          if (v67 >= 0.0)
          {
            v70 = a4 + -1.0;
            if ((a4 + -1.0) >= v67)
            {
              v70 = v67;
            }
          }

          v11[1] = v70;
          v11 = (v11 + v18);
          --v17;
        }

        while (v17);
        goto LABEL_97;
      }

      v19 = 0;
      v20 = a3 + -1.0;
      v21 = a4 + -1.0;
      v22 = v11 + 1;
      do
      {
        v23 = v22;
        v24 = v7 - 1;
        do
        {
          v26 = *(v23 - 1);
          v25 = *v23;
          if (v20 >= v26)
          {
            v27 = *(v23 - 1);
          }

          else
          {
            v27 = a3 + -1.0;
          }

          if (v26 >= 0.0)
          {
            v28 = v27;
          }

          else
          {
            v28 = 0.0;
          }

          *(v23 - 1) = v28;
          v29 = 0.0;
          if (v25 >= 0.0)
          {
            v29 = a4 + -1.0;
            if (v21 >= v25)
            {
              v29 = v25;
            }
          }

          *v23 = v29;
          v23 = (v23 + v16);
          --v24;
        }

        while (v24);
        v31 = *(v23 - 1);
        v30 = *v23;
        if (v20 >= v31)
        {
          v32 = *(v23 - 1);
        }

        else
        {
          v32 = a3 + -1.0;
        }

        if (v31 >= 0.0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0.0;
        }

        *(v23 - 1) = v33;
        v34 = 0.0;
        if (v30 >= 0.0)
        {
          v34 = a4 + -1.0;
          if (v21 >= v30)
          {
            v34 = v30;
          }
        }

        *v23 = v34;
        v11 += v9;
        ++v19;
        v22 = (v22 + v18);
      }

      while (v19 != v17);
    }

    do
    {
      v61 = v11[1];
      if (v20 >= *v11)
      {
        v62 = *v11;
      }

      else
      {
        v62 = v20;
      }

      if (*v11 >= 0.0)
      {
        v63 = v62;
      }

      else
      {
        v63 = 0.0;
      }

      *v11 = v63;
      v64 = 0.0;
      if (v61 >= 0.0)
      {
        v64 = v21;
        if (v21 >= v61)
        {
          v64 = v61;
        }
      }

      v11[1] = v64;
      v11 = (v11 + v16);
      --v15;
    }

    while (v15);
    goto LABEL_97;
  }

  sub_255B8EAB0(a2, &v78);
  v35 = *(a2 + 36);
  v36 = *(a2 + 40);
  if (*(a2 + 32))
  {
    v37 = v35 == 0;
  }

  else
  {
    v37 = 1;
  }

  if (v37 || v36 == 0)
  {
    goto LABEL_105;
  }

  v40 = *(a2 + 48);
  v39 = *(a2 + 52);
  v41 = *(a2 + 24);
  if (*(a2 + 72) == 1 && v41 != 0)
  {
    v43 = *(a2 + 8);
    v44 = *(a2 + 16);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v45 = v43;
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
        v43 = v45;
      }
    }

    (*(*v43 + 88))(v43, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    v41 = *(a2 + 24);
  }

  v46 = v35 - 1;
  v47 = 4 * v40;
  v48 = v36 - 1;
  if (!v48)
  {
    v50 = a3 + -1.0;
    v51 = v50 + v50;
    v52 = a4 + -1.0;
    v53 = v52 + v52;
    if (!v46)
    {
      goto LABEL_114;
    }

    goto LABEL_80;
  }

  if (v46)
  {
    v49 = 0;
    v50 = a3 + -1.0;
    v51 = v50 + v50;
    v52 = a4 + -1.0;
    v53 = v52 + v52;
    v54 = v41 + 1;
    do
    {
      v55 = v54;
      v56 = v46;
      do
      {
        v57 = fmodf(fabsf(*(v55 - 1)), v50 + v50);
        if (v57 > v50)
        {
          v57 = v51 - v57;
        }

        *(v55 - 1) = v57;
        v58 = fmodf(fabsf(*v55), v52 + v52);
        if (v58 > v52)
        {
          v58 = v53 - v58;
        }

        *v55 = v58;
        v55 = (v55 + v47);
        --v56;
      }

      while (v56);
      v59 = fmodf(fabsf(*(v55 - 1)), v50 + v50);
      if (v59 > v50)
      {
        v59 = v51 - v59;
      }

      *(v55 - 1) = v59;
      v60 = fmodf(fabsf(*v55), v52 + v52);
      if (v60 > v52)
      {
        v60 = v53 - v60;
      }

      *v55 = v60;
      v41 += v39;
      ++v49;
      v54 += v39;
    }

    while (v49 != v48);
    do
    {
LABEL_80:
      v65 = fmodf(fabsf(*v41), v51);
      if (v65 > v50)
      {
        v65 = v51 - v65;
      }

      *v41 = v65;
      v66 = fmodf(fabsf(v41[1]), v53);
      if (v66 > v52)
      {
        v66 = v53 - v66;
      }

      v41[1] = v66;
      v41 = (v41 + v47);
      --v46;
    }

    while (v46);
    goto LABEL_114;
  }

  v50 = a3 + -1.0;
  v51 = v50 + v50;
  v52 = a4 + -1.0;
  v53 = v52 + v52;
  do
  {
    v74 = fmodf(fabsf(*v41), v50 + v50);
    if (v74 > v50)
    {
      v74 = v51 - v74;
    }

    *v41 = v74;
    v75 = fmodf(fabsf(v41[1]), v52 + v52);
    if (v75 > v52)
    {
      v75 = v53 - v75;
    }

    v41[1] = v75;
    v41 += v39;
    --v48;
  }

  while (v48);
LABEL_114:
  v76 = fmodf(fabsf(*v41), v51);
  if (v76 > v50)
  {
    v76 = v51 - v76;
  }

  *v41 = v76;
  v77 = fmodf(fabsf(v41[1]), v53);
  if (v77 > v52)
  {
    v77 = v53 - v77;
  }

  v41[1] = v77;
  result = v78;
  v78 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B8F1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B8F23C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_255B91A70;
  if (*a1 == 1)
  {
    v6 = sub_255B9188C;
  }

  if (!*a1)
  {
    v6 = sub_255B91804;
  }

  v89 = v6;
  if (a1[1])
  {
    sub_255B8FF60(a3, &v94);
    sub_255B7AE2C(a4, v99);
    if (!*(a3 + 32))
    {
      goto LABEL_65;
    }

    v7 = *(a3 + 36);
    if (!v7)
    {
      goto LABEL_65;
    }

    v8 = *(a3 + 40);
    if (!v8)
    {
      goto LABEL_65;
    }

    v9 = *(a3 + 48);
    v10 = *(a4 + 40);
    v85 = *(a3 + 52);
    v87 = *(a4 + 44);
    v11 = *(a3 + 24);
    if (*(a3 + 72) == 1 && v11)
    {
      v12 = *(a3 + 8);
      v13 = *(a3 + 16);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v12;
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          v12 = v14;
        }
      }

      (*(*v12 + 88))(v12, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v11 = *(a3 + 24);
    }

    v15 = *(a4 + 24);
    if (*(a4 + 48) == 1 && v15)
    {
      v16 = *(a4 + 8);
      v17 = *(a4 + 16);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v18 = v16;
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
          v16 = v18;
        }
      }

      (*(*v16 + 88))(v16, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v15 = *(a4 + 24);
    }

    v19 = v7 - 1;
    v20 = 4 * v9;
    v21 = v8 - 1;
    if (v8 != 1)
    {
      if (v19)
      {
        v22 = 0;
        v23 = v11 + 1;
        v83 = v8 - 1;
        do
        {
          v24 = v23;
          v25 = v19;
          v26 = v15;
          do
          {
            *v26 = llroundf((v89)(a2, *(v24 - 1), *v24));
            v26 += v10;
            v24 = (v24 + v20);
            --v25;
          }

          while (v25);
          *v26 = llroundf((v89)(a2, *(v24 - 1), *v24));
          v11 += v85;
          v15 += v87;
          ++v22;
          v23 += v85;
        }

        while (v22 != v83);
        goto LABEL_62;
      }

      do
      {
        *v15 = llroundf((v89)(a2, *v11, v11[1]));
        v15 += v87;
        v11 += v85;
        --v21;
      }

      while (v21);
    }

    if (!v19)
    {
LABEL_63:
      v51 = (v89)(a2, *v11, v11[1]);
LABEL_64:
      *v15 = llroundf(v51);
      goto LABEL_65;
    }

    do
    {
LABEL_62:
      *v15 = llroundf((v89)(a2, *v11, v11[1]));
      v15 += v10;
      v11 = (v11 + v20);
      --v19;
    }

    while (v19);
    goto LABEL_63;
  }

  v27 = *(a3 + 24);
  if (*v27 < 0.0)
  {
    goto LABEL_37;
  }

  v28 = v27[1];
  v29 = *(a2 + 32) + -1.0;
  v30 = v28 < 0.0 || v29 < *v27;
  v31 = *(a2 + 36) + -1.0;
  if (v30 || v31 < v28)
  {
    goto LABEL_37;
  }

  v53 = *(a3 + 64) * (*(a3 + 56) - 1);
  v54 = &v27[v53];
  if (*v54 < 0.0)
  {
    goto LABEL_37;
  }

  v55 = v54[1];
  v56 = v31 < v55 || v29 < *v54;
  if (v56 || v55 < 0.0 || (v57 = *(a3 + 68) * (*(a3 + 60) - 1), v58 = &v27[v57], *v58 < 0.0) || ((v59 = v58[1], v31 >= v59) ? (v60 = v29 < *v58) : (v60 = 1), v60 || v59 < 0.0 || (v61 = &v27[v57 + v53], *v61 < 0.0) || ((v62 = v61[1], v31 >= v62) ? (v63 = v29 < *v61) : (v63 = 1), v63 || v62 < 0.0)))
  {
LABEL_37:
    v91[0] = a2;
    v91[1] = v89;
    sub_255B8FF60(a3, &v93);
    sub_255B7AE2C(a4, &v92);
    if (*(a3 + 32))
    {
      v34 = *(a3 + 36);
      if (v34)
      {
        v35 = *(a3 + 40);
        if (v35)
        {
          v36 = *(a3 + 48);
          v94 = *(a3 + 44);
          v95 = v34 - 1;
          v37 = *(a4 + 44);
          v96 = v36 | (*(a4 + 40) << 32);
          v97 = v35 - 1;
          v98 = *(a3 + 52) | (v37 << 32);
          v38 = *(a3 + 24);
          if (*(a3 + 72) == 1 && v38)
          {
            v39 = *(a3 + 8);
            v40 = *(a3 + 16);
            if (v40)
            {
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v41 = v39;
                (v40->__on_zero_shared)(v40);
                std::__shared_weak_count::__release_weak(v40);
                v39 = v41;
              }
            }

            (*(*v39 + 88))(v39, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v38 = *(a3 + 24);
          }

          v42 = *(a4 + 24);
          if (*(a4 + 48) == 1 && v42)
          {
            v43 = *(a4 + 8);
            v44 = *(a4 + 16);
            if (v44)
            {
              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v45 = v43;
                (v44->__on_zero_shared)(v44);
                std::__shared_weak_count::__release_weak(v44);
                v43 = v45;
              }
            }

            (*(*v43 + 88))(v43, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v42 = *(a4 + 24);
          }

          memset(v99, 0, sizeof(v99));
          v46 = v97;
          if (v97)
          {
            v47 = HIDWORD(v98);
            v48 = 4 * v98;
            do
            {
              sub_255B900AC(&v94, v99, v91, v38, v42, v33);
              v42 += v47;
              v38 += v48;
              --v46;
            }

            while (v46);
          }

          sub_255B900AC(&v94, v99, v91, v38, v42, v33);
        }
      }
    }

    v49 = v92;
    v92 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    result = v93;
    v93 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  sub_255B8FF60(a3, &v94);
  sub_255B7AE2C(a4, v99);
  if (*(a3 + 32))
  {
    v64 = *(a3 + 36);
    if (v64)
    {
      v65 = *(a3 + 40);
      if (v65)
      {
        v66 = *(a3 + 48);
        v67 = *(a4 + 40);
        v86 = *(a3 + 52);
        v88 = *(a4 + 44);
        v68 = *(a3 + 24);
        if (*(a3 + 72) == 1 && v68)
        {
          v69 = *(a3 + 8);
          v70 = *(a3 + 16);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v71 = v69;
              (v70->__on_zero_shared)(v70);
              std::__shared_weak_count::__release_weak(v70);
              v69 = v71;
            }
          }

          (*(*v69 + 88))(v69, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v68 = *(a3 + 24);
        }

        v15 = *(a4 + 24);
        if (*(a4 + 48) == 1 && v15)
        {
          v72 = *(a4 + 8);
          v73 = *(a4 + 16);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v74 = v72;
              (v73->__on_zero_shared)(v73);
              std::__shared_weak_count::__release_weak(v73);
              v72 = v74;
            }
          }

          (*(*v72 + 88))(v72, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v15 = *(a4 + 24);
        }

        v75 = v64 - 1;
        v76 = 4 * v66;
        v77 = v65 - 1;
        if (v65 != 1)
        {
          if (v75)
          {
            v78 = 0;
            v79 = v68 + 1;
            v84 = v77;
            do
            {
              v80 = v79;
              v81 = v75;
              v82 = v15;
              do
              {
                *v82 = llroundf((v89)(a2, *(v80 - 1), *v80));
                v82 += v67;
                v80 = (v80 + v76);
                --v81;
              }

              while (v81);
              *v82 = llroundf((v89)(a2, *(v80 - 1), *v80));
              v68 += v86;
              v15 += v88;
              ++v78;
              v79 += v86;
            }

            while (v78 != v84);
            goto LABEL_112;
          }

          do
          {
            *v15 = llroundf((v89)(a2, *v68, v68[1]));
            v15 += v88;
            v68 += v86;
            --v77;
          }

          while (v77);
        }

        if (!v75)
        {
LABEL_113:
          (v89)(a2, *v68, v68[1]);
          goto LABEL_64;
        }

        do
        {
LABEL_112:
          *v15 = llroundf((v89)(a2, *v68, v68[1]));
          v15 += v67;
          v68 = (v68 + v76);
          --v75;
        }

        while (v75);
        goto LABEL_113;
      }
    }
  }

LABEL_65:
  v52 = v99[0];
  v99[0] = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  result = v94;
  v94 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B8FB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 104);
  *(v20 - 104) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B8FC38@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (a1[2] <= a2)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/PatchCropping/include/LearnedFeatures/PatchCropping/ImagePatches.h", 82, "i < num_allocated_patches", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v6 = qword_27F7DD608, v7 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        qword_27F7DD620(*algn_27F7DD628, "i < num_allocated_patches", 25, &unk_255C2500B, 0);
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_27F7DD608;
      v7 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "i < num_allocated_patches", 25, &unk_255C2500B, 0);
    }

    while (v6 != v7);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_255B7AE2C((a1 + 3), v17);
  v10 = *(a1 + 17);
  v11 = a1[6];
  v12 = *a1;
  *a3 = &unk_2867C55D0;
  v17[1] = 0;
  v17[2] = 0;
  if (v12 * v12 != -1)
  {
    goto LABEL_19;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  v16 = v3;
  if (byte_27F7DD630 != 1)
  {
    v13 = qword_27F7DD608;
    v14 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (byte_27F7DD638 == 1)
  {
    v13 = qword_27F7DD608;
    v14 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      do
      {
LABEL_16:
        (*v13)(*(v13 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v13 += 16;
      }

      while (v13 != v14);
      if (byte_27F7DD630)
      {
        goto LABEL_18;
      }

LABEL_22:
      abort();
    }
  }

LABEL_18:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v3 = v16;
LABEL_19:
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11 + (v10 * v3);
  *(a3 + 32) = v12 | (v12 << 32);
  *(a3 + 40) = (v12 != 0) | (v12 << 32);
  *(a3 + 48) = 0;
  result = v17[0];
  v17[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_255B8FF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  _Unwind_Resume(a1);
}

void sub_255B8FF60(uint64_t a1@<X0>, void *a2@<X8>)
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
        if (*(v8 + 73) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 73) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

void sub_255B900AC(_DWORD *a1, void *a2, float (**a3)(__n128), uint64_t a4, _BYTE *a5, __n128 a6)
{
  v7 = a4;
  *a2 = a4;
  v10 = a1[2];
  if (v10)
  {
    for (i = 0; i < v10; ++i)
    {
      *a2 = v7;
      a2[2] = a5;
      a6.n128_u32[0] = *v7;
      if (*v7 >= 0.0)
      {
        v13 = *a3;
        v14 = *(v7 + 4);
        v15 = v14 < 0.0 || (*(*a3 + 8) + -1.0) < a6.n128_f32[0];
        if (!v15 && (*(*a3 + 9) + -1.0) >= v14)
        {
          *a5 = llroundf(a3[1](a6));
          v10 = a1[2];
        }
      }

      v7 += 4 * a1[3];
      a5 += a1[4];
    }
  }

  *a2 = v7;
  a2[2] = a5;
  a6.n128_u32[0] = *v7;
  if (*v7 >= 0.0)
  {
    v17 = *a3;
    v18 = *(v7 + 4);
    if (v18 >= 0.0 && (*(*a3 + 8) + -1.0) >= a6.n128_f32[0] && (*(*a3 + 9) + -1.0) >= v18)
    {
      *a5 = llroundf(a3[1](a6));
    }
  }
}

void sub_255B901F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v3, 0, 26);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = &unk_2867C55D0;
  *(a1 + 48) = v3[0];
  *(a1 + 64) = *&v3[1];
  *(a1 + 72) = 0;
  operator new();
}

void sub_255B90CAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_255A7A508(v4);
  sub_255A7A508(va);
  sub_255A7A508(va1);
  sub_255ACF674((v5 - 88));
  MEMORY[0x259C49320](v3, 0x10F0C407947B7F5);
  sub_255B0A26C(v2);
  _Unwind_Resume(a1);
}

void sub_255B90D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_255A7A508(v12 + 8);
  sub_255A7A508(va);
  sub_255A7A508(va1);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  v14 = *(v10 + 80);
  *(v10 + 80) = 0;
  if (v14)
  {
    (*(v10 + 88))();
  }

  sub_255B0A26C(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_255B90DB4(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255B90E48(uint64_t result)
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

void sub_255B90EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B90F78(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

uint64_t sub_255B91078(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867C3A80;
  a2[1] = v2;
  return result;
}

uint64_t sub_255B910B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2lf2pc16ImagePatchesPoolIhEC1EmmmNSt3__18optionalIhEEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2lf2pc16ImagePatchesPoolIhEC1EmmmNSt3__18optionalIhEEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2lf2pc16ImagePatchesPoolIhEC1EmmmNSt3__18optionalIhEEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2lf2pc16ImagePatchesPoolIhEC1EmmmNSt3__18optionalIhEEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_255B91130(uint64_t a1)
{
  *a1 = &unk_2867D07E8;
  std::mutex::~mutex((a1 + 80));

  return sub_255B91228(a1);
}

void sub_255B91184(uint64_t a1)
{
  *a1 = &unk_2867D07E8;
  std::mutex::~mutex((a1 + 80));
  sub_255B91228(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B911F0(void *a1)
{
  sub_255B91228(a1);

  JUMPOUT(0x259C49320);
}

void *sub_255B91228(void *a1)
{
  *a1 = &unk_2867D0840;
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 16);
        *(v3 - 16) = 0;
        if (v5)
        {
          (*(v3 - 8))();
        }

        v6 = *(v3 - 56);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v7 = a1[4];
  if (v7 == a1 + 1)
  {
    (*(*v7 + 32))(v7);
    return a1;
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    return a1;
  }
}

void sub_255B91384(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  if (a1[5] == v4)
  {
    v9 = a1[8];
    if (v9 >= a1[9])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Allocated object exceeds max pool size.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    a1[8] = v9 + 1;
    v10 = a1[4];
    if (!v10)
    {
      sub_255A93CCC();
    }

    v11 = *(*v10 + 48);

    v11();
  }

  else
  {
    v13 = *(v4 - 96);
    v14 = *(v4 - 80);
    v15 = *(v4 - 64);
    *(v4 - 64) = 0;
    *(v4 - 56) = 0;
    *&v16[10] = *(v4 - 38);
    *v16 = *(v4 - 48);
    v5 = *(v4 - 16);
    *(v4 - 16) = 0;
    v17 = v5;
    v18 = *(v4 - 8);
    v6 = a1[6];
    v7 = *(v6 - 16);
    *(v6 - 16) = 0;
    if (v7)
    {
      (*(v6 - 8))();
    }

    v8 = *(v6 - 56);
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    a1[6] = v6 - 96;
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = &unk_2867C55D0;
    *(a2 + 32) = v15;
    *(a2 + 48) = *v16;
    *(a2 + 58) = *&v16[10];
    *(a2 + 80) = v17;
    *(a2 + 88) = v18;
  }
}

uint64_t sub_255B91598(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = *(a2 + 32);
  v7 = 32 * ((a1[1] - *a1) >> 5);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 96 * v2 - (v9 - *a1);
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = &unk_2867C55D0;
  v11 = *(a2 + 48);
  *(v7 + 32) = v6;
  *(v7 + 48) = v11;
  *(v7 + 58) = *(a2 + 58);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  *(a2 + 80) = 0;
  *(v7 + 80) = v12;
  *(v7 + 88) = v13;
  if (v9 != v8)
  {
    v14 = 96 * v2 - 32 * ((v9 - v8) >> 5) + 24;
    v15 = v8;
    v16 = v10;
    do
    {
      v17 = *(v15 + 16);
      *v16 = *v15;
      *(v16 + 16) = v17;
      *(v16 + 24) = &unk_2867C55D0;
      *(v16 + 32) = *(v15 + 32);
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      v18 = *(v15 + 48);
      *(v16 + 58) = *(v15 + 58);
      *(v16 + 48) = v18;
      v19 = *(v15 + 80);
      *(v15 + 80) = 0;
      *(v16 + 80) = v19;
      *(v16 + 88) = *(v15 + 88);
      v15 += 96;
      v16 += 96;
      v14 += 96;
    }

    while (v15 != v9);
    do
    {
      v20 = *(v8 + 80);
      *(v8 + 80) = 0;
      if (v20)
      {
        (*(v8 + 88))();
      }

      v21 = *(v8 + 40);
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v8 += 96;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7 + 96;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7 + 96;
}

float sub_255B91804(uint64_t a1, float a2, float a3, double a4, double a5, double a6, float a7)
{
  v7 = a2 - floorf(a2);
  *&v8 = a3 - floorf(a3);
  v9 = *(a1 + 40);
  v10 = (*(a1 + 24) + v9 * a2 + HIDWORD(v9) * a3);
  v11 = &v10[HIDWORD(v9)];
  LOBYTE(a2) = v10[v9];
  LOBYTE(a3) = *v10;
  v12 = LODWORD(a3);
  v13 = LODWORD(a2) - v12;
  LOBYTE(a7) = *v11;
  v14 = LODWORD(a7);
  v15 = ((v7 * v13) + v12) + (*&v8 * (v14 - v12));
  v16 = v7 * *&v8;
  LOBYTE(v8) = v11[v9];
  return v15 + (v16 * ((v8 - v14) - v13));
}

float sub_255B9188C(uint64_t a1, float a2, float a3)
{
  v3 = a2 + 0.5;
  v4 = (a2 + 0.5);
  v5 = (a3 + 0.5);
  v6 = a2 - v4;
  if (v4 > a2)
  {
    v6 = v4 - a2;
  }

  v7 = v4 == a2 || v6 <= 0.000001;
  if (v5 == a3)
  {
    v8 = 1;
  }

  else
  {
    v10 = a3 - v5;
    if (v5 > a3)
    {
      v10 = v5 - a3;
    }

    v8 = v10 <= 0.000001;
    if (!v7 && v10 > 0.000001)
    {
      v18 = a2 - floorf(a2);
      v19 = a3 - floorf(a3);
      v20 = *(a1 + 40);
      v21 = (*(a1 + 24) + v20 * a2 + HIDWORD(v20) * a3);
      v22 = &v21[HIDWORD(v20)];
      LOBYTE(a2) = v21[v20];
      LOBYTE(a3) = *v21;
      v23 = LODWORD(a3);
      v24 = LODWORD(a2) - v23;
      *&v25 = (v18 * v24) + v23;
      LOBYTE(v4) = *v22;
      v26 = LODWORD(v4);
      v27 = *&v25 + (v19 * (v26 - v23));
      LOBYTE(v25) = v22[v20];
      return v27 + ((v18 * v19) * ((v25 - v26) - v24));
    }

    if (v7 && v10 > 0.000001)
    {
      v11 = *(a1 + 44);
      v12 = a3 - floorf(a3);
      v13 = (*(a1 + 24) + *(a1 + 40) * (v4 + 0.5) + v11 * a3);
      LOBYTE(a3) = *v13;
      LOBYTE(v3) = v13[v11];
      return (v12 * (LODWORD(v3) - LODWORD(a3))) + LODWORD(a3);
    }
  }

  if (v7 || !v8)
  {
    LOBYTE(a2) = *(*(a1 + 24) + (*(a1 + 40) * v3 + *(a1 + 44) * (a3 + 0.5)));
    return LODWORD(a2);
  }

  else
  {
    v14 = a2 - floorf(a2);
    *&v15 = v5 + 0.5;
    v16 = *(a1 + 40);
    v17 = (*(a1 + 24) + v16 * a2 + *(a1 + 44) * (v5 + 0.5));
    LOBYTE(a2) = *v17;
    LOBYTE(v15) = v17[v16];
    return (v14 * (v15 - LODWORD(a2))) + LODWORD(a2);
  }
}

float sub_255B91A70(uint64_t a1, float a2, float a3)
{
  v3 = (a2 + 0.5);
  *&v4 = a3 + 0.5;
  LOBYTE(v4) = *(*(a1 + 24) + (*(a1 + 40) * v3 + *(a1 + 44) * (a3 + 0.5)));
  return v4;
}

void sub_255B91D04(_Unwind_Exception *a1)
{
  *v4 = 0;
  MEMORY[0x259C49320](v4, 0x1020C4094298415);
  sub_255B94418(v3);
  v6 = *(v1 + 72);
  *(v1 + 72) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    MEMORY[0x259C49320](v1, v2);
    _Unwind_Resume(a1);
  }

  MEMORY[0x259C49320](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_255B91DC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52[0] = a3;
  v52[1] = a4;
  v9 = *(a2 + 32);
  v10 = *(a2 + 36);
  v11 = *(*a1 + 24);
  kdebug_trace();
  v51[0] = v52;
  v51[1] = a1;
  v51[2] = a2;
  v12 = *a1;
  v13 = *(*a1 + 96);
  if (!v13)
  {
    v16 = *(v12 + 24);
    if (!*(v12 + 4))
    {
      v28 = *(v12 + 9);
      v29 = *(v12 + 8);
    }

    sub_255B901F0(a5, v16, a4);
  }

  if (*(v12 + 56) < a4)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/PatchCropping/src/PatchCropper.cpp", 160, "m().config.max_keypoint_size >= key_points.size()", 0x31uLL, "key_points size must be equal or less than the specified max size.", 0x42uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "m().config.max_keypoint_size >= key_points.size()", 49, "key_points size must be equal or less than the specified max size.", 66);
        v13 = *(*a1 + 96);
        goto LABEL_13;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_80;
      }
    }

    do
    {
      v18 = *v14;
      v17 = *(v14 + 8);
      v14 += 16;
      v18(v17, "m().config.max_keypoint_size >= key_points.size()", 49, "key_points size must be equal or less than the specified max size.", 66);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_12;
    }

LABEL_80:
    abort();
  }

LABEL_13:
  v19 = *v13;
  std::mutex::lock((*v13 + 80));
  sub_255B91384(v19, a5);
  std::mutex::unlock((v19 + 80));
  if (*(*a1 + 4))
  {
    return sub_255B925F4(v51, a5);
  }

  v21 = *(a5 + 32);
  v22 = *(a5 + 40);
  if (v22)
  {
    p_shared_owners = &v22->__shared_owners_;
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = *(a5 + 72);
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    *__len = *(a5 + 48);
    v49 = *(a5 + 64);
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v46 = v21;
    v47 = v22;
    v50 = v24;
    if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_18;
      }
    }

    else
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_18:
        v25 = *a1;
        if (*(*a1 + 9) == 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v26 = 0;
        v27 = v46;
        if (!v46)
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }
    }

    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v25 = *a1;
    if (*(*a1 + 9) != 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v46 = *(a5 + 32);
    v47 = 0;
    *__len = *(a5 + 48);
    v49 = *(a5 + 64);
    v50 = *(a5 + 72);
    v25 = *a1;
    if (*(*a1 + 9) != 1)
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  v26 = *(v25 + 8);
  v27 = v46;
  if (!v46)
  {
    goto LABEL_40;
  }

LABEL_25:
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    v27 = v46;
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
      v27 = v46;
    }
  }

  if (HIBYTE(v50) != 1)
  {
LABEL_40:
    v53 = 0;
    v30 = v49;
    if (v49 != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  (*(*v27 + 96))(&v53);
  v30 = v49;
  if (v49 != 1)
  {
LABEL_41:
    if (!LODWORD(__len[1]) || !HIDWORD(__len[1]))
    {
      goto LABEL_72;
    }

    v35 = __len[0];
    if (v50 == 1 && __len[0])
    {
      v36 = v46;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
          v36 = v46;
        }
      }

      (*(*v36 + 88))(v36, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v35 = __len[0];
    }

    v37 = LODWORD(__len[1]) - 1;
    v38 = HIDWORD(__len[1]) - 1;
    if (HIDWORD(__len[1]) != 1)
    {
      if (LODWORD(__len[1]) != 1)
      {
        v39 = 0;
        do
        {
          v40 = LODWORD(__len[1]) - 1;
          v41 = v35;
          do
          {
            *v41 = v26;
            v41 += v30;
            --v40;
          }

          while (v40);
          *v41 = v26;
          v35 += HIDWORD(v49);
          ++v39;
        }

        while (v39 != v38);
        goto LABEL_58;
      }

      do
      {
        *v35 = v26;
        v35 += HIDWORD(v49);
        --v38;
      }

      while (v38);
    }

    if (LODWORD(__len[1]) == 1)
    {
LABEL_59:
      *v35 = v26;
      goto LABEL_72;
    }

    do
    {
LABEL_58:
      *v35 = v26;
      v35 += v30;
      --v37;
    }

    while (v37);
    goto LABEL_59;
  }

LABEL_32:
  if (HIDWORD(v49) == LODWORD(__len[1]))
  {
    v31 = __len[0];
    if (v50 == 1 && __len[0])
    {
      v32 = v46;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
          v32 = v46;
        }
      }

      (*(*v32 + 88))(v32, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v31 = __len[0];
    }

    v33 = (HIDWORD(__len[1]) * HIDWORD(v49));
    v34 = v26;
  }

  else
  {
    if (!LODWORD(__len[1]) || !HIDWORD(__len[1]))
    {
      goto LABEL_72;
    }

    v42 = __len[0];
    if (v50 == 1 && __len[0])
    {
      v43 = v46;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
          v43 = v46;
        }
      }

      (*(*v43 + 88))(v43, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v42 = __len[0];
    }

    v44 = HIDWORD(__len[1]) - 1;
    if (HIDWORD(__len[1]) != 1)
    {
      do
      {
        memset(v42, v26, LODWORD(__len[1]));
        v42 += HIDWORD(v49);
        --v44;
      }

      while (v44);
    }

    v31 = v42;
    v34 = v26;
    v33 = LODWORD(__len[1]);
  }

  memset(v31, v34, v33);
LABEL_72:
  v45 = v53;
  v53 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  return sub_255B925F4(v51, a5);
}

void sub_255B9254C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v3 - 72);
  *(v3 - 72) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    sub_255AEF098(va);
    sub_255B897A8(v2);
    _Unwind_Resume(a1);
  }

  sub_255AEF098(va);
  sub_255B897A8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_255B925F4(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*a1)[1];
  if (*(a2 + 16) < v5)
  {
    v6 = a2;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/PatchCropping/include/LearnedFeatures/PatchCropping/ImagePatches.h", 103, "_num_used_patches <= num_allocated_patches", 0x2AuLL, "Number of used patches must be equal or less than the number of pathces.", 0x48uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        qword_27F7DD620(*algn_27F7DD628, "_num_used_patches <= num_allocated_patches", 42, "Number of used patches must be equal or less than the number of pathces.", 72);
        v3 = *a1;
        a2 = v6;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "_num_used_patches <= num_allocated_patches", 42, "Number of used patches must be equal or less than the number of pathces.", 72);
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
      goto LABEL_9;
    }

LABEL_18:
    abort();
  }

LABEL_10:
  *(a2 + 8) = v5;
  if (*(*v4 + 40))
  {
    v11 = v3[1];
    if (v11 >= *(*v4 + 32))
    {
      sub_255B893EC(a2, v17);
      v12 = (*a1)[1];
      operator new();
    }
  }

  else
  {
    v11 = v3[1];
  }

  v13 = a1[2];
  v14 = *v3;
  sub_255B86328(&v18, a2);
  sub_255B9385C(v4, v13, v14, v11, &v18);
  v15 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return kdebug_trace();
}

uint64_t sub_255B9385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_255B59A2C(a2, &v22);
  v9 = *a1;
  if (**a1 || (v9[12] & 1) == 0 || (*a5 & 3) != 0)
  {
    v14 = *(a2 + 32);
    v15 = *(a2 + 36);
    v17[0] = v9[6];
    v17[1] = v17[0];
    v18 = &unk_2867C5750;
    sub_255B8DC28(v17);
  }

  v10 = *(v9 + 9);
  v19 = &unk_2867C5210;
  sub_255B8E638(v10 + 8, &v20);
  sub_255B946D0(a2, a3, a4, a5, &v19, *(*a1 + 4), *(*a1 + 12));
  v11 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v22;
  v22 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return 1;
}

void sub_255B93E50(_Unwind_Exception *a1)
{
  sub_255B8E750(v1 - 224);
  v3 = *(v1 - 144);
  *(v1 - 144) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(a1);
}

void **sub_255B93F00(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v5 + 16))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_255B93F9C(uint64_t result)
{
  v1 = *(result + 136);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 40);
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

void sub_255B94068(uint64_t a1)
{
  sub_255B94224(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B940A0(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);
  v2 = a1->~__assoc_sub_state_0;

  return (v2)(a1);
}

void sub_255B940FC(uint64_t a1)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 152);
  v4 = (*(a1 + 168) + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  v5 = v3(v4, a1 + 176, *(a1 + 232), *(a1 + 240), a1 + 248);
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v7.__ptr_ = 0, v6 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v7), v6))
  {
    sub_255B89384(2u);
  }

  *(a1 + 144) = v5;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_255B941B8(void *a1)
{
  std::mutex::unlock(&v1->__mut_);
  __cxa_begin_catch(a1);
  std::current_exception();
  v3.__ptr_ = v4;
  std::__assoc_sub_state::set_exception(v1, v3);
  std::exception_ptr::~exception_ptr(v4);
  __cxa_end_catch();
}

void sub_255B94208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_255B94224(uint64_t a1)
{
  *a1 = &unk_2867D0860;
  v2 = *(a1 + 288);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 192);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

uint64_t sub_255B9433C(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
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

void sub_255B94404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B89C98(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_255B94418(uint64_t **result)
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
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x259C49320](v1, 0x1020C4094298415);
    return v2;
  }

  return result;
}

uint64_t sub_255B94490(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 96);
    *(result + 96) = 0;
    if (v2)
    {
      v3 = *v2;
      *v2 = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      MEMORY[0x259C49320](v2, 0x1020C4094298415);
    }

    v4 = *(v1 + 72);
    *(v1 + 72) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

void sub_255B946D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v41 = a6;
  v13 = *a4;
  sub_255B893EC(a4, &v33);
  sub_255B893EC(a4, v36);
  v16 = v34 == v13 && v37 == v13 && *(a4 + 8) == a3 && *(a5 + 56) == v13;
  v31 = a1;
  if (v16 && *(a5 + 60) == v37)
  {
    goto LABEL_21;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/PatchCropping/src/SIMDCropper.cpp", 44, "IsValidateSIMDCropperInputs( key_points.size(), patches.PatchSize(), {patches.View3D().Shape()[0], patches.View3D().Shape()[1], patches.NumberOfUsedPatches()}, norm.Size())", 0xACuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v17 = qword_27F7DD608;
    v18 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (byte_27F7DD638 == 1)
  {
    v17 = qword_27F7DD608;
    v18 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      do
      {
LABEL_18:
        v20 = *v17;
        v19 = *(v17 + 8);
        v17 += 16;
        v20(v19, "IsValidateSIMDCropperInputs( key_points.size(), patches.PatchSize(), {patches.View3D().Shape()[0], patches.View3D().Shape()[1], patches.NumberOfUsedPatches()}, norm.Size())", 172, &unk_255C2500B, 0);
      }

      while (v17 != v18);
      if (byte_27F7DD630)
      {
        goto LABEL_20;
      }

LABEL_30:
      abort();
    }
  }

LABEL_20:
  qword_27F7DD620(*algn_27F7DD628, "IsValidateSIMDCropperInputs( key_points.size(), patches.PatchSize(), {patches.View3D().Shape()[0], patches.View3D().Shape()[1], patches.NumberOfUsedPatches()}, norm.Size())", 172, &unk_255C2500B, 0);
  a1 = v31;
LABEL_21:
  v21 = *(a1 + 32);
  v22 = *(a1 + 36);
  if (v21 <= v22)
  {
    v23 = *(a1 + 36);
  }

  else
  {
    v23 = *(a1 + 32);
  }

  v24 = v23 - nextafterf(v23, -3.4028e38);
  v40 = 0uLL;
  *v25.i32 = (v21 + -1.0) - v24;
  *v26.i32 = (v22 + -1.0) - v24;
  v38 = vdupq_lane_s32(v26, 0);
  v39 = vdupq_lane_s32(v25, 0);
  if (a3)
  {
    if ((a7 & 0x100000000) != 0)
    {
      v27 = *&a7;
    }

    else
    {
      v27 = 1.0;
    }

    sub_255B8FC38(a4, 0, v36);
    v32 = v27 * *(a2 + 12);
    v28 = __sincosf_stret(*(a2 + 8));
    *v29.i8 = vmul_n_f32(__PAIR64__(LODWORD(v28.__sinval), LODWORD(v28.__cosval)), v32);
    *v30.i32 = -(v28.__sinval * v32);
    v35 = vzip1q_s32(v29, vzip1q_s32(v30, v29));
    sub_255B94560();
  }
}

void sub_255B94C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v34 = *(v32 - 176);
  *(v32 - 176) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
    v35 = *(v32 - 168);
    *(v32 - 168) = 0;
    if (!v35)
    {
LABEL_3:
      sub_255B0A26C(&a32);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v35 = *(v32 - 168);
    *(v32 - 168) = 0;
    if (!v35)
    {
      goto LABEL_3;
    }
  }

  (*(*v35 + 8))(v35);
  sub_255B0A26C(&a32);
  _Unwind_Resume(a1);
}

unint64_t sub_255B94D20(unint64_t result, uint64_t a2, uint64_t a3, int32x4_t a4, float32x4_t a5, int32x4_t a6, float32x4_t a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (**result)
  {
    v13 = result;
    v14 = 0;
    v15 = vdupq_n_s32(0x3F7FFFFFu);
    v66 = v15;
    do
    {
      v53 = *(a2 + 16);
      a4.i64[0] = *(*a2 + 4 * (v53 * v14));
      a5.i64[0] = *(*a2 + 4 * ((v14 + 1) * v53));
      a6.i64[0] = *(*a2 + 4 * ((v14 + 2) * v53));
      a7.i64[0] = *(*a2 + 4 * ((v14 + 3) * v53));
      v54 = vzip1q_s32(a4, a6);
      v55 = vzip1q_s32(a5, a7);
      v56 = vzip1q_s32(v54, v55);
      v57 = vzip2q_s32(v54, v55);
      v58 = *(v13 + 8);
      v59 = *(v13 + 16);
      v60 = vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v58)), v57, *v58, 1);
      v61 = vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*&v58[1])), v57, v58[1], 1);
      v62 = vld1q_dup_f32(v59++);
      v19 = vaddq_f32(v60, v62);
      v63 = vld1q_dup_f32(v59);
      v20 = vaddq_f32(v61, v63);
      if (**(v13 + 24) == 1)
      {
        v64 = **(v13 + 32);
        if (v64 == 2)
        {
          v70 = vaddq_f32(**(v13 + 48), **(v13 + 48));
          x = v20;
          v69 = _simd_fmod_f4(v19, v70);
          v67 = vaddq_f32(**(v13 + 56), **(v13 + 56));
          v16 = _simd_fmod_f4(x, v67);
          v15 = v66;
          v17 = v16;
          v18 = vsubq_f32(v67, v16);
          v19 = vminnmq_f32(v69, vsubq_f32(v70, v69));
        }

        else
        {
          if (v64 != 1)
          {
            goto LABEL_5;
          }

          v65 = **(v13 + 40);
          v19 = vminnmq_f32(vmaxnmq_f32(v19, v65), **(v13 + 48));
          v18 = **(v13 + 56);
          v17 = vmaxnmq_f32(v20, v65);
        }

        v20 = vminnmq_f32(v17, v18);
      }

LABEL_5:
      v21 = vminnmq_f32(vsubq_f32(v19, vrndmq_f32(v19)), v15);
      v22 = vrndmq_f32(v20);
      v23 = vsubq_f32(v20, v22);
      v24 = *(v13 + 64);
      v26 = *(v24 + 40);
      v25 = *(v24 + 44);
      v27 = v26 * v19.f32[0];
      v28 = v25 * v20.f32[0];
      v29 = *(v24 + 24);
      v22.i8[0] = *(v29 + v28 + v27);
      *a6.i32 = v22.u32[0];
      LODWORD(v24) = v26 * v19.f32[1];
      v30 = v25 * v20.f32[1];
      a9.i8[0] = *(v29 + v30 + v24);
      v31 = v26 * v19.f32[2];
      v32 = v25 * v20.f32[2];
      a10.i8[0] = *(v29 + v32 + v31);
      v33 = v26 * v19.f32[3];
      v34 = v25 * v20.f32[3];
      LOBYTE(v10) = *(v29 + v34 + v33);
      v10 = LODWORD(v10);
      *&a6.i32[1] = a9.u32[0];
      a6.i64[1] = __PAIR64__(LODWORD(v10), a10.u32[0]);
      a7 = vminnmq_f32(v23, v15);
      v19.f32[0] = v19.f32[0] + 1.0;
      v35 = v26 * v19.f32[0];
      v19.i8[0] = *(v29 + v28 + v35);
      v19.f32[0] = v19.u32[0];
      *&v36 = v19.f32[1] + 1.0;
      v37 = v26 * (v19.f32[1] + 1.0);
      LOBYTE(v36) = *(v29 + v30 + v37);
      *&v38 = v19.f32[2] + 1.0;
      v39 = v26 * (v19.f32[2] + 1.0);
      LOBYTE(v38) = *(v29 + v32 + v39);
      v40 = v38;
      *&v41 = v19.f32[3] + 1.0;
      v42 = v26 * (v19.f32[3] + 1.0);
      LOBYTE(v41) = *(v29 + v34 + v42);
      v19.f32[1] = v36;
      v19.f32[2] = v40;
      v19.f32[3] = v41;
      *&v43 = v20.f32[0] + 1.0;
      result = v25 * (v20.f32[0] + 1.0);
      LOBYTE(v43) = *(v29 + result + v27);
      v44.f32[0] = v43;
      *&v45 = v20.f32[1] + 1.0;
      v46 = v25 * (v20.f32[1] + 1.0);
      LOBYTE(v45) = *(v29 + v46 + v24);
      *&v47 = v20.f32[2] + 1.0;
      LODWORD(v24) = v25 * (v20.f32[2] + 1.0);
      LOBYTE(v47) = *(v29 + v24 + v31);
      v48 = v47;
      *&v49 = v20.f32[3] + 1.0;
      v50 = v25 * (v20.f32[3] + 1.0);
      LOBYTE(v49) = *(v29 + v50 + v33);
      v44.f32[1] = v45;
      *&v51 = v49;
      v44.f32[2] = v48;
      v44.f32[3] = v49;
      LOBYTE(v51) = *(v29 + result + v35);
      v52.f32[0] = v51;
      LOBYTE(v48) = *(v29 + v46 + v37);
      LOBYTE(v49) = *(v29 + v24 + v39);
      LOBYTE(v40) = *(v29 + v50 + v42);
      v52.f32[1] = LODWORD(v48);
      v52.f32[2] = v49;
      v52.f32[3] = LODWORD(v40);
      a10 = vmulq_f32(a7, vsubq_f32(v44, a6));
      a9 = vaddq_f32(vaddq_f32(a6, vmulq_f32(v21, vsubq_f32(v19, a6))), a10);
      a5 = vmulq_f32(v21, a7);
      a4 = vrndaq_f32(vaddq_f32(a9, vmulq_f32(a5, vaddq_f32(a6, vsubq_f32(vsubq_f32(v52, v19), v44)))));
      *(*a3 + (*(a3 + 8) * v14)) = *a4.i32;
      *(*a3 + (*(a3 + 8) * (v14 + 1))) = *&a4.i32[1];
      *(*a3 + (*(a3 + 8) * (v14 + 2))) = *&a4.i32[2];
      *(*a3 + (*(a3 + 8) * (v14 + 3))) = *&a4.i32[3];
      v14 += 4;
    }

    while (v14 < **v13);
  }

  return result;
}

uint64_t *sub_255B9511C()
{
  if ((atomic_load_explicit(&qword_27F7DD5C8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27F7DD5C8))
  {
    return &qword_27F7DD580;
  }

  category[0] = "tracing";
  category[1] = 7;
  if ((atomic_load_explicit(&qword_27F7DC5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC5F8))
  {
    sub_255AB5AC8(&qword_27F7DC5D8);
    __cxa_guard_release(&qword_27F7DC5F8);
  }

  v1 = byte_27F7DC5EF;
  if (byte_27F7DC5EF >= 0)
  {
    v2 = &qword_27F7DC5D8;
  }

  else
  {
    v1 = unk_27F7DC5E0;
    v2 = qword_27F7DC5D8;
  }

  v4[0] = v2;
  v4[1] = v1;
  qword_27F7DD580 = os_log_create(v2, category[0]);
  sub_255B952B0(&qword_27F7DD588, v4);
  sub_255B952B0(byte_27F7DD5A8, category);
  __cxa_guard_release(&qword_27F7DD5C8);
  return &qword_27F7DD580;
}

void sub_255B95230(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27F7DC5F8);
  __cxa_guard_abort(&qword_27F7DD5C8);
  _Unwind_Resume(a1);
}

void sub_255B95254(_Unwind_Exception *a1)
{
  if (byte_27F7DD5A0 == 1 && byte_27F7DD59F < 0)
  {
    operator delete(qword_27F7DD588);
  }

  if (qword_27F7DD580)
  {
    os_release(qword_27F7DD580);
  }

  __cxa_guard_abort(&qword_27F7DD5C8);
  _Unwind_Resume(a1);
}

_BYTE *sub_255B952B0(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  __dst[24] = 1;
  return __dst;
}

uint64_t sub_255B95368(uint64_t a1, uint64_t a2, void *__src, size_t __len, __int128 *a5, __int128 *a6, void *a7, size_t a8, void *__srca, size_t __lena, uint64_t a11, _OWORD *a12)
{
  *a1 = a2;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  v18 = (a1 + 8);
  if (__len)
  {
    memmove(v18, __src, __len);
  }

  *(v18 + __len) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a5 + 24) == 1)
  {
    if (*(a5 + 23) < 0)
    {
      sub_255A7E018((a1 + 32), *a5, *(a5 + 1));
    }

    else
    {
      v19 = *a5;
      *(a1 + 48) = *(a5 + 2);
      *(a1 + 32) = v19;
    }

    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  if (*(a6 + 24) == 1)
  {
    if (*(a6 + 23) < 0)
    {
      sub_255A7E018((a1 + 64), *a6, *(a6 + 1));
    }

    else
    {
      v20 = *a6;
      *(a1 + 80) = *(a6 + 2);
      *(a1 + 64) = v20;
    }

    *(a1 + 88) = 1;
  }

  if (a8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (a8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 119) = a8;
  v21 = (a1 + 96);
  if (a8)
  {
    memmove(v21, a7, a8);
  }

  *(v21 + a8) = 0;
  if (__lena > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (__lena >= 0x17)
  {
    operator new();
  }

  v22 = (a1 + 120);
  *(a1 + 143) = __lena;
  if (__lena)
  {
    memmove(v22, __srca, __lena);
  }

  *(v22 + __lena) = 0;
  *(a1 + 144) = a11;
  *(a1 + 152) = *a12;
  return a1;
}

void sub_255B955DC(_Unwind_Exception *exception_object)
{
  if (v1[88] == 1 && v1[87] < 0)
  {
    operator delete(*v3);
  }

  if (v1[56] == 1 && v1[55] < 0)
  {
    operator delete(*v2);
  }

  if (v1[31] < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B95654(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 4);
    *v3 = v5;
    v6 = v3 + 20;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
  v9 = v8 + 1;
  if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_255A7B4E8();
  }

  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x666666666666666)
  {
    v11 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v12 = 4 * ((v3 - *a1) >> 2);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 4);
  v6 = 20 * v8 + 20;
  v13 = 20 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_255B957A0(uint64_t a1, char **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a1 != a2)
  {
    sub_255B96400(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
  }

  return a1;
}

void sub_255B957F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char **sub_255B95814@<X0>(char **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a2 != result)
  {
    return sub_255B96400(a2, *result, result[1], 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 2));
  }

  return result;
}

void sub_255B95864(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B95880(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

__n128 sub_255B95898(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

__n128 sub_255B958C8(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = 1;
  return result;
}

__n128 sub_255B95900(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 64;
  *(a1 + 40) = 2;
  return result;
}

__n128 sub_255B95938(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  *(a1 + 24) = 3;
  *(a1 + 32) = 128;
  *(a1 + 40) = 2;
  return result;
}

uint64_t sub_255B95974(uint64_t a1)
{
  v3 = &v4;
  v4 = 0;
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    sub_255A7C284();
  }

  v5 = &v3;
  (off_2867D0898[v1])(&v5, a1);
  return v4;
}

uint64_t sub_255B959CC(uint64_t a1)
{
  v3 = &v4;
  v4 = 0;
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    sub_255A7C284();
  }

  v5 = &v3;
  (off_2867D08B8[v1])(&v5, a1);
  return v4;
}

uint64_t sub_255B95A34(uint64_t a1, unint64_t a2)
{
  v11 = &v12;
  v12 = 0;
  v2 = *(a1 + 24);
  if (v2 == -1)
  {
    sub_255A7C284();
  }

  v13 = &v11;
  (off_2867D08B8[v2])(&v13, a1);
  if (v12 <= a2)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/Common/src/FeaturesData.cpp", 149, "i < Size()", 0xAuLL, "Index is larger than descriptors count", 0x26uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v5 = qword_27F7DD608, v6 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_10:
        qword_27F7DD620(*algn_27F7DD628, "i < Size()", 10, "Index is larger than descriptors count", 38);
        goto LABEL_11;
      }
    }

    else
    {
      v5 = qword_27F7DD608;
      v6 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "i < Size()", 10, "Index is larger than descriptors count", 38);
    }

    while (v5 != v6);
    if (byte_27F7DD630)
    {
      goto LABEL_10;
    }

LABEL_17:
    abort();
  }

LABEL_11:
  v9 = *(a1 + 24);
  if (!v9)
  {
    return 0;
  }

  if (v9 != 1)
  {
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/Common/src/FeaturesData.cpp", 155, &unk_255C2500B, 0, "Not supported", 0xDuLL, sub_255C101E0);
    abort();
  }

  return *a1 + (a2 << 6);
}

uint64_t sub_255B95C08(uint64_t a1, unint64_t a2)
{
  v11 = &v12;
  v12 = 0;
  v2 = *(a1 + 24);
  if (v2 == -1)
  {
    sub_255A7C284();
  }

  v13 = &v11;
  (off_2867D08B8[v2])(&v13, a1);
  if (v12 <= a2)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/Common/src/FeaturesData.cpp", 161, "i < Size()", 0xAuLL, "Index is larger than descriptors count", 0x26uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v5 = qword_27F7DD608, v6 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_10:
        qword_27F7DD620(*algn_27F7DD628, "i < Size()", 10, "Index is larger than descriptors count", 38);
        goto LABEL_11;
      }
    }

    else
    {
      v5 = qword_27F7DD608;
      v6 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "i < Size()", 10, "Index is larger than descriptors count", 38);
    }

    while (v5 != v6);
    if (byte_27F7DD630)
    {
      goto LABEL_10;
    }

LABEL_17:
    abort();
  }

LABEL_11:
  v9 = *(a1 + 24);
  if (v9 == 3)
  {
    return *a1 + (a2 << 9);
  }

  if (v9 != 2)
  {
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/Common/src/FeaturesData.cpp", 167, &unk_255C2500B, 0, "Not supported", 0xDuLL, sub_255C101E0);
    abort();
  }

  return *a1 + (a2 << 8);
}

uint64_t sub_255B95DE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 != *(a2 + 40) || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }

    v5 = *(a1 + 24);
    switch(v5)
    {
      case 3:
        if (*(a2 + 24) == 3)
        {
          v61 = *a2;
          v62 = *(a2 + 8);
          if (*a2 != v62)
          {
            v63 = *(a1 + 8);
            do
            {
              v64 = *(a1 + 16);
              if (v63 < v64)
              {
                memcpy(v63, v61, 0x200uLL);
                v63 += 512;
              }

              else
              {
                v65 = *a1;
                v66 = &v63[-*a1];
                v67 = v66 >> 9;
                v68 = (v66 >> 9) + 1;
                if (v68 >> 55)
                {
                  sub_255A7B4E8();
                }

                v69 = v64 - v65;
                if (v69 >> 8 > v68)
                {
                  v68 = v69 >> 8;
                }

                if (v69 >= 0x7FFFFFFFFFFFFE00)
                {
                  v70 = 0x7FFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  if (!(v70 >> 55))
                  {
                    operator new();
                  }

LABEL_67:
                  sub_255A7B590();
                }

                v71 = v67 << 9;
                memcpy((v67 << 9), v61, 0x200uLL);
                v63 = ((v67 << 9) + 512);
                v72 = (v71 - (v66 >> 9 << 9));
                memcpy(v72, v65, v66);
                *a1 = v72;
                *(a1 + 8) = v63;
                *(a1 + 16) = 0;
                if (v65)
                {
                  operator delete(v65);
                }
              }

              *(a1 + 8) = v63;
              v61 += 32;
            }

            while (v61 != v62);
          }

          return 1;
        }

        break;
      case 2:
        if (*(a2 + 24) == 2)
        {
          v26 = *a2;
          v27 = *(a2 + 8);
          if (*a2 != v27)
          {
            v28 = *(a1 + 8);
            while (1)
            {
              v41 = *(a1 + 16);
              if (v28 < v41)
              {
                v29 = *v26;
                v30 = v26[1];
                v31 = v26[3];
                v28[2] = v26[2];
                v28[3] = v31;
                *v28 = v29;
                v28[1] = v30;
                v32 = v26[4];
                v33 = v26[5];
                v34 = v26[7];
                v28[6] = v26[6];
                v28[7] = v34;
                v28[4] = v32;
                v28[5] = v33;
                v35 = v26[8];
                v36 = v26[9];
                v37 = v26[11];
                v28[10] = v26[10];
                v28[11] = v37;
                v28[8] = v35;
                v28[9] = v36;
                v38 = v26[12];
                v39 = v26[13];
                v40 = v26[15];
                v28[14] = v26[14];
                v28[15] = v40;
                v28[12] = v38;
                v28[13] = v39;
                v28 += 16;
              }

              else
              {
                v42 = *a1;
                v43 = v28 - *a1;
                v44 = v43 >> 8;
                v45 = (v43 >> 8) + 1;
                if (HIBYTE(v45))
                {
                  sub_255A7B4E8();
                }

                v46 = v41 - v42;
                if (v46 >> 7 > v45)
                {
                  v45 = v46 >> 7;
                }

                if (v46 >= 0x7FFFFFFFFFFFFF00)
                {
                  v47 = 0xFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = v45;
                }

                if (v47)
                {
                  if (!HIBYTE(v47))
                  {
                    operator new();
                  }

                  goto LABEL_67;
                }

                v48 = (v44 << 8);
                v49 = *v26;
                v50 = v26[1];
                v51 = v26[3];
                v48[2] = v26[2];
                v48[3] = v51;
                *v48 = v49;
                v48[1] = v50;
                v52 = v26[4];
                v53 = v26[5];
                v54 = v26[7];
                v48[6] = v26[6];
                v48[7] = v54;
                v48[4] = v52;
                v48[5] = v53;
                v55 = v26[8];
                v56 = v26[9];
                v57 = v26[11];
                v48[10] = v26[10];
                v48[11] = v57;
                v48[8] = v55;
                v48[9] = v56;
                v58 = v26[12];
                v59 = v26[13];
                v60 = v26[15];
                v48[14] = v26[14];
                v48[15] = v60;
                v48[12] = v58;
                v48[13] = v59;
                v28 = ((v44 << 8) + 256);
                memcpy(0, v42, v43);
                *a1 = 0;
                *(a1 + 8) = v28;
                *(a1 + 16) = 0;
                if (v42)
                {
                  operator delete(v42);
                }
              }

              *(a1 + 8) = v28;
              v26 += 16;
              if (v26 == v27)
              {
                return 1;
              }
            }
          }

          return 1;
        }

        break;
      case 1:
        if (*(a2 + 24) == 1)
        {
          v6 = *a2;
          v7 = *(a2 + 8);
          if (*a2 != v7)
          {
            v8 = *(a1 + 8);
            while (1)
            {
              v12 = *(a1 + 16);
              if (v8 < v12)
              {
                v9 = *v6;
                v10 = v6[1];
                v11 = v6[3];
                v8[2] = v6[2];
                v8[3] = v11;
                *v8 = v9;
                v8[1] = v10;
                v8 += 4;
              }

              else
              {
                v13 = *a1;
                v14 = v8 - *a1;
                v15 = v14 >> 6;
                v16 = (v14 >> 6) + 1;
                if (v16 >> 58)
                {
                  sub_255A7B4E8();
                }

                v17 = v12 - v13;
                if (v17 >> 5 > v16)
                {
                  v16 = v17 >> 5;
                }

                if (v17 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v18 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v18 = v16;
                }

                if (v18)
                {
                  if (!(v18 >> 58))
                  {
                    operator new();
                  }

                  goto LABEL_67;
                }

                v19 = (v15 << 6);
                v20 = *v6;
                v21 = v6[1];
                v22 = v6[3];
                v19[2] = v6[2];
                v19[3] = v22;
                *v19 = v20;
                v19[1] = v21;
                v8 = ((v15 << 6) + 64);
                memcpy(0, v13, v14);
                *a1 = 0;
                *(a1 + 8) = v8;
                *(a1 + 16) = 0;
                if (v13)
                {
                  operator delete(v13);
                }
              }

              *(a1 + 8) = v8;
              v6 += 4;
              if (v6 == v7)
              {
                return 1;
              }
            }
          }

          return 1;
        }

        break;
      default:
        sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/Common/src/FeaturesData.cpp", 195, &unk_255C2500B, 0, "Not supported", 0xDuLL, sub_255C101E0);
        abort();
    }

    sub_255A7C284();
  }

  v24 = *(a1 + 24);
  v25 = *(a2 + 24);
  if (v24 == -1)
  {
    if (v25 == -1)
    {
      goto LABEL_30;
    }

LABEL_29:
    v73 = a1;
    (off_2867D0918[v25])(&v73, a1, a2);
    goto LABEL_30;
  }

  if (v25 != -1)
  {
    goto LABEL_29;
  }

  (off_2867D08F8[v24])(&v74, a1);
  *(a1 + 24) = -1;
LABEL_30:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return 1;
}

uint64_t sub_255B962C8(uint64_t result, uint64_t a2)
{
  v2 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    *(result + 24) = -1;
  }

  else
  {
    v4 = result;
    (off_2867D0938[v3])(&v4, result, a2);
    return v2;
  }

  return result;
}

uint64_t sub_255B96368@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = *(result + 40);
  *(a2 + 32) = *(result + 32);
  v2 = *(result + 24);
  if (v2 == -1)
  {
    *(a2 + 24) = -1;
  }

  else
  {
    v3 = a2;
    return (off_2867D0938[v2])(&v3, a2, result);
  }

  return result;
}

char *sub_255B96400(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x666666666666666)
      {
        v12 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }
    }

    sub_255A7B4E8();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - result) >> 2) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void ***sub_255B965C0(void ***result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == a2[1])
  {
    v2 = 0;
  }

  ***result = v2;
  return result;
}

void ***sub_255B965DC(void ***result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == a2[1])
  {
    v2 = 0;
  }

  ***result = v2;
  return result;
}

void ***sub_255B965F8(void ***result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == a2[1])
  {
    v2 = 0;
  }

  ***result = v2;
  return result;
}

__n128 sub_255B966F0(uint64_t *a1, void *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    (off_2867D08F8[v5])(&v9, v4);
LABEL_7:
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(v4 + 24) = 0;
    return result;
  }

  v6 = *a2;
  if (*a2)
  {
    a2[1] = v6;
    v7 = a2;
    operator delete(v6);
    a2 = v7;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  result = *a3;
  *a2 = *a3;
  a2[2] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_255B967B4(uint64_t *a1, void *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_2867D08F8[v5])(&v9, v4);
LABEL_7:
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(v4 + 24) = 1;
    return result;
  }

  v6 = *a2;
  if (*a2)
  {
    a2[1] = v6;
    v7 = a2;
    operator delete(v6);
    a2 = v7;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  result = *a3;
  *a2 = *a3;
  a2[2] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_255B96880(uint64_t *a1, void *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    (off_2867D08F8[v5])(&v9, v4);
LABEL_7:
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(v4 + 24) = 2;
    return result;
  }

  v6 = *a2;
  if (*a2)
  {
    a2[1] = v6;
    v7 = a2;
    operator delete(v6);
    a2 = v7;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  result = *a3;
  *a2 = *a3;
  a2[2] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_255B9694C(uint64_t *a1, void *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 3)
  {
    (off_2867D08F8[v5])(&v9, v4);
LABEL_7:
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(v4 + 24) = 3;
    return result;
  }

  v6 = *a2;
  if (*a2)
  {
    a2[1] = v6;
    v7 = a2;
    operator delete(v6);
    a2 = v7;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  result = *a3;
  *a2 = *a3;
  a2[2] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

char *sub_255B96A18(char *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4)
  {
    v5 = a3[1];
    if (v5 != *a3)
    {
      if (((v5 - *a3) & 0x8000000000000000) == 0)
      {
        v6 = v5 - *a3;
        operator new();
      }

      goto LABEL_25;
    }

    if (v4 != -1)
    {
      result = (off_2867D08F8[v4])(&v17, v3);
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
  }

  else if (a2 != a3)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = &v8[-*a3];
    result = *a2;
    v10 = a2;
    if (a2[2] - *a2 < v9)
    {
      if (result)
      {
        a2[1] = result;
        operator delete(result);
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_25:
      sub_255A7B4E8();
    }

    v11 = a2[1];
    v12 = v11 - result;
    if (v11 - result >= v9)
    {
      if (v8 != v7)
      {
        v16 = *a2;
        memmove(result, *a3, &v8[-*a3]);
        result = v16;
        a2 = v10;
      }

      v15 = &result[v9];
    }

    else
    {
      if (v11 != result)
      {
        result = memmove(result, *a3, v11 - result);
        a2 = v10;
        v11 = v10[1];
      }

      v13 = &v7[v12];
      v14 = v8 - &v7[v12];
      if (v14)
      {
        result = memmove(v11, v13, v14);
        a2 = v10;
      }

      v15 = &v11[v14];
    }

    a2[1] = v15;
  }

  return result;
}

char *sub_255B96C34(char *result, char **a2, const void **a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 == 1)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      v7 = a3[1];
      v8 = v7 - *a3;
      v9 = a2[2];
      result = *a2;
      if (v9 - *a2 < v8)
      {
        v10 = v8 >> 6;
        if (result)
        {
          a2[1] = result;
          operator delete(result);
          v9 = 0;
          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;
        }

        if (!(v10 >> 58))
        {
          v11 = v9 >> 5;
          if (v9 >> 5 <= v10)
          {
            v11 = v8 >> 6;
          }

          v12 = v9 >= 0x7FFFFFFFFFFFFFC0;
          v13 = 0x3FFFFFFFFFFFFFFLL;
          if (!v12)
          {
            v13 = v11;
          }

          if (!(v13 >> 58))
          {
            operator new();
          }
        }

        goto LABEL_30;
      }

      v16 = a2[1];
      v17 = v16 - result;
      if (v16 - result >= v8)
      {
        if (v7 != v6)
        {
          v21 = *a2;
          memmove(result, *a3, v7 - *a3);
          result = v21;
        }

        v20 = &result[v8];
      }

      else
      {
        if (v16 != result)
        {
          result = memmove(result, *a3, v16 - result);
          v16 = a2[1];
        }

        v18 = &v6[v17];
        v19 = v7 - &v6[v17];
        if (v19)
        {
          result = memmove(v16, v18, v19);
        }

        v20 = &v16[v19];
      }

      a2[1] = v20;
    }
  }

  else
  {
    v14 = a3[1];
    if (v14 != *a3)
    {
      if (((v14 - *a3) & 0x8000000000000000) == 0)
      {
        v15 = v14 - *a3;
        operator new();
      }

LABEL_30:
      sub_255A7B4E8();
    }

    if (v4 != -1)
    {
      result = (off_2867D08F8[v4])(&v22, v3);
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

char *sub_255B96E5C(char *result, char **a2, const void **a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 == 2)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      v7 = a3[1];
      v8 = v7 - *a3;
      v9 = a2[2];
      result = *a2;
      if (v9 - *a2 < v8)
      {
        v10 = v8 >> 8;
        if (result)
        {
          a2[1] = result;
          operator delete(result);
          v9 = 0;
          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;
        }

        if (!HIBYTE(v10))
        {
          v11 = v9 >> 7;
          if (v9 >> 7 <= v10)
          {
            v11 = v8 >> 8;
          }

          v12 = v9 >= 0x7FFFFFFFFFFFFF00;
          v13 = 0xFFFFFFFFFFFFFFLL;
          if (!v12)
          {
            v13 = v11;
          }

          if (!HIBYTE(v13))
          {
            operator new();
          }
        }

        goto LABEL_30;
      }

      v16 = a2[1];
      v17 = v16 - result;
      if (v16 - result >= v8)
      {
        if (v7 != v6)
        {
          v21 = *a2;
          memmove(result, *a3, v7 - *a3);
          result = v21;
        }

        v20 = &result[v8];
      }

      else
      {
        if (v16 != result)
        {
          result = memmove(result, *a3, v16 - result);
          v16 = a2[1];
        }

        v18 = &v6[v17];
        v19 = v7 - &v6[v17];
        if (v19)
        {
          result = memmove(v16, v18, v19);
        }

        v20 = &v16[v19];
      }

      a2[1] = v20;
    }
  }

  else
  {
    v14 = a3[1];
    if (v14 != *a3)
    {
      if (((v14 - *a3) & 0x8000000000000000) == 0)
      {
        v15 = v14 - *a3;
        operator new();
      }

LABEL_30:
      sub_255A7B4E8();
    }

    if (v4 != -1)
    {
      result = (off_2867D08F8[v4])(&v22, v3);
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 2;
  }

  return result;
}

char *sub_255B97084(char *result, char **a2, const void **a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 == 3)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      v7 = a3[1];
      v8 = v7 - *a3;
      v9 = a2[2];
      result = *a2;
      if (v9 - *a2 < v8)
      {
        v10 = v8 >> 9;
        if (result)
        {
          a2[1] = result;
          operator delete(result);
          v9 = 0;
          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;
        }

        if (!(v10 >> 55))
        {
          v11 = v9 >> 8;
          if (v9 >> 8 <= v10)
          {
            v11 = v8 >> 9;
          }

          v12 = v9 >= 0x7FFFFFFFFFFFFE00;
          v13 = 0x7FFFFFFFFFFFFFLL;
          if (!v12)
          {
            v13 = v11;
          }

          if (!(v13 >> 55))
          {
            operator new();
          }
        }

        goto LABEL_30;
      }

      v16 = a2[1];
      v17 = v16 - result;
      if (v16 - result >= v8)
      {
        if (v7 != v6)
        {
          v21 = *a2;
          memmove(result, *a3, v7 - *a3);
          result = v21;
        }

        v20 = &result[v8];
      }

      else
      {
        if (v16 != result)
        {
          result = memmove(result, *a3, v16 - result);
          v16 = a2[1];
        }

        v18 = &v6[v17];
        v19 = v7 - &v6[v17];
        if (v19)
        {
          result = memmove(v16, v18, v19);
        }

        v20 = &v16[v19];
      }

      a2[1] = v20;
    }
  }

  else
  {
    v14 = a3[1];
    if (v14 != *a3)
    {
      if (((v14 - *a3) & 0x8000000000000000) == 0)
      {
        v15 = v14 - *a3;
        operator new();
      }

LABEL_30:
      sub_255A7B4E8();
    }

    if (v4 != -1)
    {
      result = (off_2867D08F8[v4])(&v22, v3);
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 3;
  }

  return result;
}

uint64_t sub_255B972AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867D08F8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

BOOL sub_255B97308(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2;
  if ((v2 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  if (v3 != v2)
  {
    while (*v3 == *v4 && v3[1] == v4[1] && v3[2] == v4[2] && v3[3] == v4[3] && v3[4] == v4[4])
    {
      v3 += 5;
      v4 += 5;
      if (v3 == v2)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v5 = *(a1 + 48);
  if (v5 != *(a2 + 48) || v5 == 0)
  {
    return v5 == *(a2 + 48);
  }

  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *(a2 + 24);
  if (v8 - v9 != *(a2 + 32) - v10)
  {
    return 0;
  }

  if (v9 != v8)
  {
    while (1)
    {
      v11 = *(v9 + 23);
      if (v11 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = *(v9 + 8);
      }

      v13 = *(v10 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = v10[1];
      }

      if (v12 != v13)
      {
        break;
      }

      v15 = v11 >= 0 ? v9 : *v9;
      v16 = *v10;
      v17 = v14 >= 0 ? v10 : *v10;
      if (memcmp(v15, v17, v12))
      {
        break;
      }

      v9 += 24;
      v10 += 3;
      result = 1;
      if (v9 == v8)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

void sub_255B9748C(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (a1 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  sub_255B9A100(v6, "Needs to be initialized with at least one config.");
  v14 = 1;
  sub_255B998E0(0x16u, v6, &__p);
  *a2 = __p;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v25 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_14;
  }

  *(a2 + 40) = 0;
  v3 = v18;
  if (v18 == 1)
  {
    *(a2 + 16) = v16;
    *(a2 + 32) = v17;
    v17 = 0;
    v16 = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v24 & 1) == 0)
    {
LABEL_7:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v3)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  v5 = v21;
  *(v4 + 16) = v20;
  *v4 = v19;
  v19 = 0uLL;
  *(a2 + 72) = v5;
  *(a2 + 80) = v22;
  *(a2 + 96) = v23;
  v20 = 0;
  v22 = 0uLL;
  v23 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

LABEL_14:
  if (v14 == 1)
  {
    if (v13 == 1)
    {
      if (v12 < 0)
      {
        operator delete(v11);
      }

      if (v10 < 0)
      {
        operator delete(v9);
      }
    }

    if (v8 == 1 && v7 < 0)
    {
      operator delete(v6[0]);
    }
  }
}

void sub_255B99620(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B6286C(v59);
  sub_255B62650((v60 - 128));
  sub_255B60548(&a59);
  sub_255A7B4D4(a1);
}

void sub_255B99658(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255A82960(v61);
  v64 = *v60;
  if (*v60)
  {
    *(v59 + 24) = v64;
    operator delete(v64);
  }

  sub_255B62650((v62 - 128));
  sub_255B60548(&a59);
  sub_255A7B4D4(a1);
}

void sub_255B996C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B6286C(&a59);
  sub_255B99ACC((v59 - 128));
  sub_255A7B4D4(a1);
}

void sub_255B996E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  sub_255A82960(v60 + 24);
  if (__p)
  {
    operator delete(__p);
    sub_255B99ACC((v61 - 128));
    sub_255A7B4D4(a1);
  }

  JUMPOUT(0x255B997ACLL);
}

void sub_255B9970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  sub_255B9C208(v59 - 128);
  sub_255B9C2B8(&a59);
  sub_255B99E74(v59 - 160);
  sub_255A7B4D4(a1);
}

void sub_255B99714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255A82960(v59);
  v64 = *v60;
  if (*v60)
  {
    *(v61 + 24) = v64;
    operator delete(v64);
  }

  sub_255B9C208((v62 - 128));
  sub_255B9C2B8(&a59);
  sub_255B99E74((v62 - 160));
  sub_255A7B4D4(a1);
}

void sub_255B997C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  sub_255A82960(v60 + 24);
  if (__p)
  {
    operator delete(__p);
    sub_255B99E74((v61 - 128));
    sub_255A7B4D4(a1);
  }

  JUMPOUT(0x255B99870);
}

void sub_255B997EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B9C134((v59 - 128));
  sub_255B9C19C(&a59);
  sub_255B59860((v59 - 160));
  sub_255A7B4D4(a1);
}

void sub_255B99880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B9C19C(&a59);
  sub_255B59860((v59 - 160));
  sub_255A7B4D4(a1);
}

void sub_255B9989C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B9C2B8(&a59);
  sub_255B99E74((v59 - 160));
  sub_255A7B4D4(a1);
}

void sub_255B998BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  sub_255B59860((v64 - 128));
  sub_255A7B4D4(a1);
}

void sub_255B998E0(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_255A7DEBC(v8, a2);
    v16 = 1;
  }

  sub_255B99F48(&v17, a1, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void **sub_255B99ACC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_20:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if (*(v3 - 32) == 1)
        {
LABEL_9:
          v5 = *(v3 - 7);
          if (v5)
          {
            v6 = *(v3 - 6);
            v7 = *(v3 - 7);
            if (v6 != v5)
            {
              do
              {
                v8 = *(v6 - 1);
                v6 -= 3;
                if (v8 < 0)
                {
                  operator delete(*v6);
                }
              }

              while (v6 != v5);
              v7 = *(v3 - 7);
            }

            *(v3 - 6) = v5;
            operator delete(v7);
          }
        }
      }

      else if (*(v3 - 32) == 1)
      {
        goto LABEL_9;
      }

      v9 = v3 - 10;
      v10 = *(v3 - 10);
      if (v10)
      {
        *(v3 - 9) = v10;
        operator delete(v10);
      }

      v3 -= 10;
      if (v9 == v2)
      {
        v4 = *a1;
        goto LABEL_20;
      }
    }
  }

  return a1;
}

void sub_255B99BC0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  v17 = 0;
  v16 = 0;
  if (v3)
  {
    if (v3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  v4 = 0;
  v5 = *(a1 + 16);
  v6 = 0;
  if (v5)
  {
    do
    {
      if (*(v5 + 95) < 0)
      {
        sub_255A7E018(__p, v5[9], v5[10]);
      }

      else
      {
        *__p = *(v5 + 9);
        v19 = v5[11];
      }

      v7 = v16;
      v8 = v17 - v16;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3) + 1;
      if (v9 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_255A7B4E8();
      }

      if (0x5555555555555556 * (-v16 >> 3) > v9)
      {
        v9 = 0x5555555555555556 * (-v16 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v16 >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_255A7B590();
      }

      v11 = 8 * ((v17 - v16) >> 3);
      *v11 = *__p;
      *(v11 + 16) = v19;
      __p[1] = 0;
      v19 = 0;
      __p[0] = 0;
      v12 = v11 + 24;
      v13 = v11 - v8;
      memcpy((v11 - v8), v16, v8);
      v16 = v13;
      if (v7)
      {
        operator delete(v7);
        v17 = v12;
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = v12;
      }

      v5 = *v5;
    }

    while (v5);
    v6 = v13;
    v4 = v17;
  }

  v14 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3));
  *a2 = v6;
  a2[1] = v4;
  a2[2] = 0;
  if (v4 == v6)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  sub_255B9A44C(v6, v4, v15, 1);
}

void sub_255B99E24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B59860(va);
  _Unwind_Resume(a1);
}

void sub_255B99E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_255B59860(&a10);
  _Unwind_Resume(a1);
}

void **sub_255B99E74(void **a1)
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
        if (*(v3 - 8) == 1)
        {
          v5 = *(v3 - 4);
          if (v5)
          {
            v6 = *(v3 - 3);
            v7 = *(v3 - 4);
            if (v6 != v5)
            {
              do
              {
                v8 = *(v6 - 1);
                v6 -= 3;
                if (v8 < 0)
                {
                  operator delete(*v6);
                }
              }

              while (v6 != v5);
              v7 = *(v3 - 4);
            }

            *(v3 - 3) = v5;
            operator delete(v7);
          }
        }

        v9 = v3 - 56;
        v10 = *(v3 - 7);
        if (v10)
        {
          *(v3 - 6) = v10;
          operator delete(v10);
        }

        v3 -= 56;
      }

      while (v9 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_255B99F48(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = std::generic_category();
  v7 = v6;
  LOBYTE(v10[0]) = 0;
  v19 = 0;
  if (*(a3 + 96) != 1)
  {
    *a1 = a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    return a1;
  }

  sub_255A7DEBC(v10, a3);
  v19 = 1;
  *a1 = a2;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 40) = 0;
  if (v12 == 1)
  {
    *(a1 + 16) = *v10;
    *(a1 + 32) = v11;
    v10[1] = 0;
    v11 = 0;
    v10[0] = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  if (v18)
  {
    v8 = v15;
    *(a1 + 64) = v14;
    *(a1 + 48) = *v13;
    v13[0] = 0;
    v13[1] = 0;
    *(a1 + 72) = v8;
    *(a1 + 80) = *__p;
    *(a1 + 96) = v17;
    __p[1] = 0;
    v17 = 0;
    v14 = 0;
    __p[0] = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
LABEL_7:
        if (v12 != 1)
        {
          return a1;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v13[0]);
    if (v12 != 1)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 112) = 1;
    if (v12 != 1)
    {
      return a1;
    }
  }

LABEL_14:
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v10[0]);
  return a1;
}

void sub_255B9A0EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7E144(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9A100(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = __dst;
    sub_255A7E018(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 88) = 0;
    operator delete(v6);
    return a1;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_255B9A230(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 3;
    v6 = a3 + 40;
    do
    {
      *(v6 - 40) = 0;
      *(v6 - 32) = 0;
      *(v6 - 24) = 0;
      v8 = v5 - 3;
      *(v6 - 40) = *(v5 - 3);
      *(v6 - 24) = *(v5 - 1);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *(v6 - 16) = 0;
      *(v6 + 8) = 0;
      if (*(v5 + 24) == 1)
      {
        *(v6 - 16) = 0;
        *(v6 - 8) = 0;
        *v6 = 0;
        *(v6 - 16) = *v5;
        *v6 = v5[2];
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
        *(v6 + 8) = 1;
      }

      v7 = *(v5 + 2);
      *(v6 + 32) = v5[6];
      *(v6 + 16) = v7;
      v5[5] = 0;
      v5[6] = 0;
      v5[4] = 0;
      v5 += 10;
      v6 += 80;
    }

    while (v8 + 10 != a2);
    do
    {
      if (*(v4 + 79) < 0)
      {
        operator delete(v4[7]);
        if (*(v4 + 48) == 1)
        {
LABEL_11:
          v9 = v4[3];
          if (v9)
          {
            v10 = v4[4];
            v11 = v4[3];
            if (v10 != v9)
            {
              do
              {
                v12 = *(v10 - 1);
                v10 -= 3;
                if (v12 < 0)
                {
                  operator delete(*v10);
                }
              }

              while (v10 != v9);
              v11 = v4[3];
            }

            v4[4] = v9;
            operator delete(v11);
          }
        }
      }

      else if (*(v4 + 48) == 1)
      {
        goto LABEL_11;
      }

      v13 = *v4;
      if (*v4)
      {
        v4[1] = v13;
        operator delete(v13);
      }

      v4 += 10;
    }

    while (v4 != a2);
  }
}

uint64_t sub_255B9A39C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
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
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

LABEL_13:
  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_255B9A44C(uint64_t a1, const void **a2, uint64_t a3, char a4)
{
  v290 = *MEMORY[0x277D85DE8];
LABEL_2:
  v6 = a2;
  j = a1;
  __s2 = a2 - 3;
  while (1)
  {
    v8 = j;
    v9 = v6 - j;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - j) >> 3);
    v11 = v10 - 2;
    a1 = v8;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v129 = *MEMORY[0x277D85DE8];

          sub_255B9B5B0(v8, (v8 + 24), __s2);
          return;
        case 4:
          v130 = *MEMORY[0x277D85DE8];

          sub_255B9B81C(v8, (v8 + 24), (v8 + 48), __s2);
          return;
        case 5:
          v119 = *MEMORY[0x277D85DE8];

          sub_255B9B9C8(v8, v8 + 24, v8 + 48, (v8 + 72), __s2);
          return;
      }

      goto LABEL_10;
    }

    if (v10 < 2)
    {
      goto LABEL_521;
    }

    v6 = a2;
    if (v10 == 2)
    {
      break;
    }

LABEL_10:
    if (v9 <= 575)
    {
      if ((a4 & 1) == 0)
      {
        if (v8 != v6)
        {
          v253 = (v8 + 24);
          if ((v8 + 24) != a2)
          {
            while (1)
            {
              v255 = v253;
              v256 = *(a1 + 47);
              if (v256 >= 0)
              {
                v257 = v253;
              }

              else
              {
                v257 = *(a1 + 24);
              }

              if (v256 >= 0)
              {
                v258 = *(a1 + 47);
              }

              else
              {
                v258 = *(a1 + 32);
              }

              v259 = *(a1 + 23);
              if (v259 >= 0)
              {
                v260 = a1;
              }

              else
              {
                v260 = *a1;
              }

              if (v259 >= 0)
              {
                v261 = *(a1 + 23);
              }

              else
              {
                v261 = *(a1 + 8);
              }

              if (v261 >= v258)
              {
                v262 = v258;
              }

              else
              {
                v262 = v261;
              }

              v263 = memcmp(v257, v260, v262);
              if (v263)
              {
                if (v263 < 0)
                {
                  goto LABEL_498;
                }
              }

              else if (v258 < v261)
              {
LABEL_498:
                v264 = *v255;
                v287 = *(v255 + 16);
                v286 = v264;
                *(v255 + 8) = 0;
                *(v255 + 16) = 0;
                *v255 = 0;
                if ((v287 & 0x8000000000000000) == 0)
                {
                  v265 = &v286;
                }

                else
                {
                  v265 = v286;
                }

                if ((v287 & 0x8000000000000000) == 0)
                {
                  v266 = HIBYTE(v287);
                }

                else
                {
                  v266 = *(&v286 + 1);
                }

                for (i = v255; ; i -= 24)
                {
                  *i = *(i - 24);
                  *(i + 16) = *(i - 8);
                  *(i - 1) = 0;
                  *(i - 24) = 0;
                  v268 = *(i - 25);
                  if (v268 >= 0)
                  {
                    v269 = (i - 48);
                  }

                  else
                  {
                    v269 = *(i - 48);
                  }

                  if (v268 >= 0)
                  {
                    v270 = *(i - 25);
                  }

                  else
                  {
                    v270 = *(i - 40);
                  }

                  if (v270 >= v266)
                  {
                    v271 = v266;
                  }

                  else
                  {
                    v271 = v270;
                  }

                  v272 = memcmp(v265, v269, v271);
                  if (v272)
                  {
                    if ((v272 & 0x80000000) == 0)
                    {
LABEL_477:
                      v254 = v286;
                      *(i - 8) = v287;
                      *(i - 24) = v254;
                      break;
                    }
                  }

                  else if (v266 >= v270)
                  {
                    goto LABEL_477;
                  }
                }
              }

              a1 = v255;
              v253 = (v255 + 24);
              if ((v255 + 24) == a2)
              {
                goto LABEL_521;
              }
            }
          }
        }

        goto LABEL_521;
      }

      if (v8 == v6)
      {
        goto LABEL_521;
      }

      v131 = (v8 + 24);
      if ((v8 + 24) == a2)
      {
        goto LABEL_521;
      }

      v132 = 0;
      v133 = v8;
      while (1)
      {
        v185 = v133;
        v133 = v131;
        v186 = *(v185 + 47);
        if (v186 >= 0)
        {
          v187 = v131;
        }

        else
        {
          v187 = v185[3];
        }

        if (v186 >= 0)
        {
          v188 = *(v185 + 47);
        }

        else
        {
          v188 = v185[4];
        }

        v189 = *(v185 + 23);
        if (v189 >= 0)
        {
          v190 = v185;
        }

        else
        {
          v190 = *v185;
        }

        if (v189 >= 0)
        {
          v191 = *(v185 + 23);
        }

        else
        {
          v191 = v185[1];
        }

        if (v191 >= v188)
        {
          v192 = v188;
        }

        else
        {
          v192 = v191;
        }

        v193 = memcmp(v187, v190, v192);
        if (v193)
        {
          if (v193 < 0)
          {
            goto LABEL_380;
          }
        }

        else if (v188 < v191)
        {
LABEL_380:
          v194 = *v133;
          v287 = *(v133 + 16);
          v286 = v194;
          if ((v287 & 0x8000000000000000) == 0)
          {
            v195 = &v286;
          }

          else
          {
            v195 = v194;
          }

          if ((v287 & 0x8000000000000000) == 0)
          {
            v196 = HIBYTE(v287);
          }

          else
          {
            v196 = *(&v194 + 1);
          }

          *(v133 + 16) = v185[2];
          *v133 = *v185;
          *(v185 + 23) = 0;
          *v185 = 0;
          v183 = a1;
          if (v185 != a1)
          {
            v197 = v132;
            while (1)
            {
              v198 = a1 + v197;
              v199 = *(a1 + v197 - 24);
              v200 = *(a1 + v197 - 1);
              if (v200 >= 0)
              {
                v201 = (a1 + v197 - 24);
              }

              else
              {
                v201 = *(a1 + v197 - 24);
              }

              if (v200 >= 0)
              {
                v202 = *(a1 + v197 - 1);
              }

              else
              {
                v202 = *(a1 + v197 - 16);
              }

              if (v202 >= v196)
              {
                v203 = v196;
              }

              else
              {
                v203 = v202;
              }

              v204 = memcmp(v195, v201, v203);
              if (v204)
              {
                if ((v204 & 0x80000000) == 0)
                {
                  v183 = a1 + v197;
                  break;
                }
              }

              else if (v196 >= v202)
              {
                v183 = v185;
                break;
              }

              v185 -= 3;
              *v198 = *(a1 + v197 - 24);
              *(v198 + 16) = *(a1 + v197 - 8);
              *(v198 - 1) = 0;
              *(v198 - 24) = 0;
              v197 -= 24;
              if (!v197)
              {
                v183 = a1;
                break;
              }
            }
          }

          v184 = v286;
          *(v183 + 16) = v287;
          *v183 = v184;
        }

        v131 = (v133 + 24);
        v132 += 24;
        if ((v133 + 24) == a2)
        {
          goto LABEL_521;
        }
      }
    }

    if (!a3)
    {
      if (v8 == v6)
      {
        goto LABEL_521;
      }

      v277 = v9;
      v134 = v11 >> 1;
      v135 = v11 >> 1;
      while (1)
      {
        if (v134 < v135)
        {
          goto LABEL_273;
        }

        v279 = v135;
        v139 = (2 * v135) | 1;
        v140 = v8 + 24 * v139;
        v141 = 2 * v135 + 2;
        if (v141 >= v10)
        {
          v143 = (v8 + 24 * v139);
          v141 = (2 * v135) | 1;
          goto LABEL_298;
        }

        v143 = (v140 + 24);
        v142 = *(v140 + 24);
        v144 = *(v140 + 23);
        if (v144 >= 0)
        {
          v145 = (v8 + 24 * v139);
        }

        else
        {
          v145 = *v140;
        }

        if (v144 >= 0)
        {
          v146 = *(v140 + 23);
        }

        else
        {
          v146 = *(v140 + 8);
        }

        v147 = *(v140 + 47);
        if (v147 >= 0)
        {
          v148 = (v140 + 24);
        }

        else
        {
          v148 = *(v140 + 24);
        }

        if (v147 >= 0)
        {
          v149 = *(v140 + 47);
        }

        else
        {
          v149 = *(v140 + 32);
        }

        if (v149 >= v146)
        {
          v150 = v146;
        }

        else
        {
          v150 = v149;
        }

        v151 = memcmp(v145, v148, v150);
        if (v151)
        {
          v8 = a1;
          v135 = v279;
          if ((v151 & 0x80000000) == 0)
          {
            goto LABEL_297;
          }
        }

        else
        {
          v70 = v146 >= v149;
          v8 = a1;
          v135 = v279;
          if (v70)
          {
LABEL_297:
            v143 = v140;
            v141 = v139;
          }
        }

LABEL_298:
        v152 = v8 + 24 * v135;
        v153 = *(v143 + 23);
        if (v153 >= 0)
        {
          v154 = v143;
        }

        else
        {
          v154 = *v143;
        }

        if (v153 >= 0)
        {
          v155 = *(v143 + 23);
        }

        else
        {
          v155 = v143[1];
        }

        v156 = *(v152 + 23);
        if (v156 >= 0)
        {
          v157 = (v8 + 24 * v135);
        }

        else
        {
          v157 = *v152;
        }

        if (v156 >= 0)
        {
          v158 = *(v152 + 23);
        }

        else
        {
          v158 = *(v152 + 8);
        }

        if (v158 >= v155)
        {
          v159 = v155;
        }

        else
        {
          v159 = v158;
        }

        v160 = memcmp(v154, v157, v159);
        if (v160)
        {
          v135 = v279;
          if ((v160 & 0x80000000) == 0)
          {
            goto LABEL_317;
          }
        }

        else
        {
          v135 = v279;
          if (v155 >= v158)
          {
LABEL_317:
            v161 = *v152;
            v287 = *(v152 + 16);
            v286 = v161;
            *(v152 + 8) = 0;
            *(v152 + 16) = 0;
            *v152 = 0;
            v162 = *v143;
            *(v152 + 16) = v143[2];
            *v152 = v162;
            *(v143 + 23) = 0;
            *v143 = 0;
            if (v134 < v141)
            {
LABEL_271:
              v136 = v143;
LABEL_272:
              v137 = v286;
              *(v136 + 16) = v287;
              *v136 = v137;
              v8 = a1;
              v135 = v279;
              goto LABEL_273;
            }

            v163 = &v286;
            if ((v287 & 0x8000000000000000) != 0)
            {
              v163 = v286;
            }

            __s2a = v163;
            if ((v287 & 0x8000000000000000) == 0)
            {
              v164 = HIBYTE(v287);
            }

            else
            {
              v164 = *(&v286 + 1);
            }

            while (2)
            {
              v166 = (2 * v141) | 1;
              v167 = a1 + 24 * v166;
              v141 = 2 * v141 + 2;
              if (v141 < v10)
              {
                v168 = v134;
                v136 = v167 + 24;
                v169 = *(v167 + 24);
                v170 = *(v167 + 23);
                if (v170 >= 0)
                {
                  v171 = (a1 + 24 * v166);
                }

                else
                {
                  v171 = *v167;
                }

                if (v170 >= 0)
                {
                  v172 = *(v167 + 23);
                }

                else
                {
                  v172 = *(v167 + 8);
                }

                v173 = *(v167 + 47);
                if (v173 >= 0)
                {
                  v174 = (v167 + 24);
                }

                else
                {
                  v174 = *(v167 + 24);
                }

                if (v173 >= 0)
                {
                  v175 = *(v167 + 47);
                }

                else
                {
                  v175 = *(v167 + 32);
                }

                if (v175 >= v172)
                {
                  v176 = v172;
                }

                else
                {
                  v176 = v175;
                }

                v177 = memcmp(v171, v174, v176);
                if (v177)
                {
                  v134 = v168;
                  if ((v177 & 0x80000000) == 0)
                  {
                    break;
                  }

LABEL_344:
                  v178 = *(v136 + 23);
                  if (v178 >= 0)
                  {
                    v179 = v136;
                  }

                  else
                  {
                    v179 = *v136;
                  }

                  if (v178 >= 0)
                  {
                    v180 = *(v136 + 23);
                  }

                  else
                  {
                    v180 = *(v136 + 8);
                  }

                  if (v164 >= v180)
                  {
                    v181 = v180;
                  }

                  else
                  {
                    v181 = v164;
                  }

                  v182 = memcmp(v179, __s2a, v181);
                  if (v182)
                  {
                    if (v182 < 0)
                    {
                      goto LABEL_271;
                    }
                  }

                  else if (v180 < v164)
                  {
                    goto LABEL_271;
                  }

                  v165 = *v136;
                  v143[2] = *(v136 + 16);
                  *v143 = v165;
                  *(v136 + 23) = 0;
                  *v136 = 0;
                  v143 = v136;
                  if (v134 < v141)
                  {
                    goto LABEL_272;
                  }

                  continue;
                }

                v70 = v172 >= v175;
                v134 = v168;
                if (!v70)
                {
                  goto LABEL_344;
                }
              }

              break;
            }

            v136 = a1 + 24 * v166;
            v141 = v166;
            goto LABEL_344;
          }
        }

LABEL_273:
        if (!v135--)
        {
          v205 = 0xAAAAAAAAAAAAAAABLL * (v277 >> 3);
          while (1)
          {
            v208 = 0;
            v209 = a1;
            __s2b = a2;
            v278 = *a1;
            *&v288 = *(a1 + 8);
            *(&v288 + 7) = *(a1 + 15);
            v280 = *(a1 + 23);
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            do
            {
              v211 = v209;
              v212 = &v209[3 * v208];
              v209 = v212 + 3;
              v213 = 2 * v208;
              v208 = (2 * v208) | 1;
              v214 = v213 + 2;
              if (v213 + 2 < v205)
              {
                v217 = v212[6];
                v216 = (v212 + 6);
                v215 = v217;
                v218 = *(v216 - 1);
                if (v218 >= 0)
                {
                  v219 = v209;
                }

                else
                {
                  v219 = *(v216 - 3);
                }

                if (v218 >= 0)
                {
                  v220 = *(v216 - 1);
                }

                else
                {
                  v220 = *(v216 - 2);
                }

                v221 = v216[23];
                if (v221 >= 0)
                {
                  v222 = v216;
                }

                else
                {
                  v222 = v215;
                }

                if (v221 >= 0)
                {
                  v223 = v216[23];
                }

                else
                {
                  v223 = *(v216 + 1);
                }

                if (v223 >= v220)
                {
                  v224 = v220;
                }

                else
                {
                  v224 = v223;
                }

                v225 = memcmp(v219, v222, v224);
                if (v225)
                {
                  if (v225 < 0)
                  {
                    goto LABEL_407;
                  }
                }

                else if (v220 < v223)
                {
LABEL_407:
                  v209 = v216;
                  v208 = v214;
                }
              }

              v210 = *v209;
              v211[2] = v209[2];
              *v211 = v210;
              *(v209 + 23) = 0;
              *v209 = 0;
            }

            while (v208 <= ((v205 - 2) >> 1));
            a2 -= 3;
            if (v209 == (__s2b - 3))
            {
              *v209 = v278;
              v206 = *(&v288 + 7);
              v209[1] = v288;
              *(v209 + 15) = v206;
              *(v209 + 23) = v280;
            }

            else
            {
              v226 = *(__s2b - 3);
              v209[2] = *(__s2b - 1);
              *v209 = v226;
              *(__s2b - 3) = v278;
              v227 = v288;
              *(__s2b - 9) = *(&v288 + 7);
              *(__s2b - 2) = v227;
              *(__s2b - 1) = v280;
              v228 = v209 - a1 + 24;
              if (v228 >= 25)
              {
                v229 = -2 - 0x5555555555555555 * (v228 >> 3);
                v230 = v229 >> 1;
                v231 = a1 + 24 * (v229 >> 1);
                v232 = *(v231 + 23);
                if (v232 >= 0)
                {
                  v233 = (a1 + 24 * (v229 >> 1));
                }

                else
                {
                  v233 = *v231;
                }

                if (v232 >= 0)
                {
                  v234 = *(v231 + 23);
                }

                else
                {
                  v234 = *(v231 + 8);
                }

                v235 = *(v209 + 23);
                if (v235 >= 0)
                {
                  v236 = v209;
                }

                else
                {
                  v236 = *v209;
                }

                if (v235 >= 0)
                {
                  v237 = *(v209 + 23);
                }

                else
                {
                  v237 = v209[1];
                }

                if (v237 >= v234)
                {
                  v238 = v234;
                }

                else
                {
                  v238 = v237;
                }

                v239 = memcmp(v233, v236, v238);
                if (v239)
                {
                  if (v239 < 0)
                  {
LABEL_451:
                    v240 = *v209;
                    v287 = v209[2];
                    v286 = v240;
                    v209[1] = 0;
                    v209[2] = 0;
                    *v209 = 0;
                    if ((v287 & 0x8000000000000000) == 0)
                    {
                      v241 = &v286;
                    }

                    else
                    {
                      v241 = v286;
                    }

                    if ((v287 & 0x8000000000000000) == 0)
                    {
                      v242 = HIBYTE(v287);
                    }

                    else
                    {
                      v242 = *(&v286 + 1);
                    }

                    v243 = *v231;
                    v209[2] = *(v231 + 16);
                    *v209 = v243;
                    *(v231 + 23) = 0;
                    *v231 = 0;
                    if (v229 >= 2)
                    {
                      while (1)
                      {
                        v245 = v230 - 1;
                        v230 = (v230 - 1) >> 1;
                        v246 = a1 + 24 * v230;
                        v247 = *(v246 + 23);
                        if (v247 >= 0)
                        {
                          v248 = (a1 + 24 * v230);
                        }

                        else
                        {
                          v248 = *v246;
                        }

                        if (v247 >= 0)
                        {
                          v249 = *(v246 + 23);
                        }

                        else
                        {
                          v249 = *(v246 + 8);
                        }

                        if (v242 >= v249)
                        {
                          v250 = v249;
                        }

                        else
                        {
                          v250 = v242;
                        }

                        v251 = memcmp(v248, v241, v250);
                        if (v251)
                        {
                          if ((v251 & 0x80000000) == 0)
                          {
                            break;
                          }
                        }

                        else if (v249 >= v242)
                        {
                          break;
                        }

                        v244 = *v246;
                        *(v231 + 16) = *(v246 + 16);
                        *v231 = v244;
                        *(v246 + 23) = 0;
                        *v246 = 0;
                        v231 = a1 + 24 * v230;
                        if (v245 <= 1)
                        {
                          goto LABEL_473;
                        }
                      }
                    }

                    v246 = v231;
LABEL_473:
                    v252 = v286;
                    *(v246 + 16) = v287;
                    *v246 = v252;
                  }
                }

                else if (v234 < v237)
                {
                  goto LABEL_451;
                }
              }
            }

            if (v205-- <= 2)
            {
              goto LABEL_521;
            }
          }
        }
      }
    }

    v12 = v10 >> 1;
    v13 = v8 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      sub_255B9B5B0(v13, v8, __s2);
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_33:
      v26 = 0;
      v27 = *v8;
      v289 = *(v8 + 16);
      v288 = v27;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      if (v289 >= 0)
      {
        v28 = &v288;
      }

      else
      {
        v28 = v288;
      }

      if (v289 >= 0)
      {
        v29 = HIBYTE(v289);
      }

      else
      {
        v29 = *(&v288 + 1);
      }

      while (1)
      {
        v30 = *(v8 + v26 + 47);
        v31 = v30 >= 0 ? (v8 + v26 + 24) : *(v8 + v26 + 24);
        v32 = v30 >= 0 ? *(v8 + v26 + 47) : *(v8 + v26 + 32);
        v33 = v29 >= v32 ? v32 : v29;
        v34 = memcmp(v31, v28, v33);
        if (v34)
        {
          break;
        }

        if (v32 >= v29)
        {
          goto LABEL_52;
        }

LABEL_40:
        v26 += 24;
      }

      if (v34 < 0)
      {
        goto LABEL_40;
      }

LABEL_52:
      v35 = v8 + v26 + 24;
      v36 = a2 - 3;
      if (v26)
      {
        do
        {
          while (1)
          {
            v37 = v36;
            v44 = *(v36 + 23);
            v45 = v44 >= 0 ? v37 : *v37;
            v46 = v44 >= 0 ? v44 : v37[1];
            v47 = v29 >= v46 ? v46 : v29;
            v48 = memcmp(v45, v28, v47);
            v36 = v37 - 3;
            if (v48)
            {
              break;
            }

            if (v46 < v29)
            {
              goto LABEL_83;
            }
          }
        }

        while ((v48 & 0x80000000) == 0);
      }

      else
      {
        v37 = a2;
        if (v35 < a2)
        {
          v38 = a2 - 3;
          do
          {
            while (1)
            {
              v37 = v38;
              v39 = *(v38 + 23);
              v40 = v39 >= 0 ? v37 : *v37;
              v41 = v39 >= 0 ? v39 : v37[1];
              v42 = v29 >= v41 ? v41 : v29;
              v43 = memcmp(v40, v28, v42);
              v38 = v37 - 3;
              if (!v43)
              {
                break;
              }

              if (v35 >= v37 || v43 < 0)
              {
                goto LABEL_83;
              }
            }
          }

          while (v35 < v37 && v41 >= v29);
        }
      }

LABEL_83:
      j = v35;
      if (v35 < v37)
      {
        v49 = v37;
        do
        {
          v50 = *j;
          v287 = *(j + 16);
          v286 = v50;
          v51 = *v49;
          *(j + 16) = v49[2];
          *j = v51;
          v52 = v286;
          v49[2] = v287;
          *v49 = v52;
          if (v289 >= 0)
          {
            v53 = &v288;
          }

          else
          {
            v53 = v288;
          }

          if (v289 >= 0)
          {
            v54 = HIBYTE(v289);
          }

          else
          {
            v54 = *(&v288 + 1);
          }

          v55 = j + 24;
          do
          {
            while (1)
            {
              j = v55;
              v56 = *(v55 + 23);
              v57 = (v56 & 0x80u) == 0 ? j : *j;
              v58 = (v56 & 0x80u) == 0 ? v56 : *(j + 8);
              v59 = v54 >= v58 ? v58 : v54;
              v60 = memcmp(v57, v53, v59);
              v55 = j + 24;
              if (v60)
              {
                break;
              }

              if (v58 >= v54)
              {
                goto LABEL_105;
              }
            }
          }

          while (v60 < 0);
LABEL_105:
          v61 = v49 - 3;
          do
          {
            while (1)
            {
              v49 = v61;
              v62 = *(v61 + 23);
              v63 = v62 >= 0 ? v49 : *v49;
              v64 = v62 >= 0 ? v62 : v49[1];
              v65 = v54 >= v64 ? v64 : v54;
              v66 = memcmp(v63, v53, v65);
              v61 = v49 - 3;
              if (v66)
              {
                break;
              }

              if (v64 < v54)
              {
                goto LABEL_85;
              }
            }
          }

          while ((v66 & 0x80000000) == 0);
LABEL_85:
          ;
        }

        while (j < v49);
      }

      v67 = (j - 24);
      if (j - 24 == a1)
      {
        if (*(j - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v68 = *v67;
        *(a1 + 16) = *(j - 8);
        *a1 = v68;
        *(j - 1) = 0;
        *(j - 24) = 0;
      }

      v69 = v288;
      *(j - 8) = v289;
      *v67 = v69;
      v70 = v35 >= v37;
      v6 = a2;
      if (v70)
      {
        v71 = sub_255B9BBDC(a1, (j - 24));
        if (sub_255B9BBDC(j, a2))
        {
          a2 = (j - 24);
          if (v71)
          {
            goto LABEL_521;
          }

          goto LABEL_2;
        }

        if (!v71)
        {
          goto LABEL_129;
        }
      }

      else
      {
LABEL_129:
        sub_255B9A44C(a1, j - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      sub_255B9B5B0(v8, v13, __s2);
      v14 = 24 * v12;
      sub_255B9B5B0((v8 + 24), (v14 + v8 - 24), a2 - 6);
      sub_255B9B5B0((v8 + 48), (v8 + 24 + v14), a2 - 9);
      sub_255B9B5B0((v14 + v8 - 24), v13, (v8 + 24 + v14));
      v15 = *v8;
      v287 = *(v8 + 16);
      v286 = v15;
      v16 = *(v13 + 16);
      *v8 = *v13;
      *(v8 + 16) = v16;
      v17 = v286;
      *(v13 + 16) = v287;
      *v13 = v17;
      --a3;
      if (a4)
      {
        goto LABEL_33;
      }

LABEL_16:
      v18 = *(v8 - 1);
      if (v18 >= 0)
      {
        v19 = (v8 - 24);
      }

      else
      {
        v19 = *(v8 - 24);
      }

      if (v18 >= 0)
      {
        v20 = *(v8 - 1);
      }

      else
      {
        v20 = *(v8 - 16);
      }

      v21 = *(v8 + 23);
      if (v21 >= 0)
      {
        v22 = v8;
      }

      else
      {
        v22 = *v8;
      }

      if (v21 >= 0)
      {
        v23 = *(v8 + 23);
      }

      else
      {
        v23 = *(v8 + 8);
      }

      if (v23 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v23;
      }

      v25 = memcmp(v19, v22, v24);
      if (v25)
      {
        if (v25 < 0)
        {
          goto LABEL_33;
        }
      }

      else if (v20 < v23)
      {
        goto LABEL_33;
      }

      v72 = *v8;
      v289 = *(v8 + 16);
      v288 = v72;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      if (v289 >= 0)
      {
        v73 = &v288;
      }

      else
      {
        v73 = v288;
      }

      if (v289 >= 0)
      {
        v74 = HIBYTE(v289);
      }

      else
      {
        v74 = *(&v288 + 1);
      }

      v75 = *(a2 - 1);
      v77 = *(a2 - 3);
      v76 = *(a2 - 2);
      if ((v75 & 0x80u) == 0)
      {
        v78 = a2 - 3;
      }

      else
      {
        v78 = *(a2 - 3);
      }

      if ((v75 & 0x80u) == 0)
      {
        v79 = *(a2 - 1);
      }

      else
      {
        v79 = *(a2 - 2);
      }

      if (v79 >= v74)
      {
        v80 = v74;
      }

      else
      {
        v80 = v79;
      }

      v81 = memcmp(v73, v78, v80);
      if (v81)
      {
        if ((v81 & 0x80000000) == 0)
        {
          goto LABEL_148;
        }
      }

      else if (v74 >= v79)
      {
LABEL_148:
        for (j = a1 + 24; j < a2; j += 24)
        {
          v82 = *(j + 23);
          if (v82 >= 0)
          {
            v83 = j;
          }

          else
          {
            v83 = *j;
          }

          if (v82 >= 0)
          {
            v84 = *(j + 23);
          }

          else
          {
            v84 = *(j + 8);
          }

          if (v84 >= v74)
          {
            v85 = v74;
          }

          else
          {
            v85 = v84;
          }

          v86 = memcmp(v73, v83, v85);
          if (v86)
          {
            if (v86 < 0)
            {
              goto LABEL_178;
            }
          }

          else if (v74 < v84)
          {
            goto LABEL_178;
          }
        }

        goto LABEL_178;
      }

      v87 = a1 + 24;
      do
      {
        while (1)
        {
          j = v87;
          v88 = *(v87 + 23);
          v89 = (v88 & 0x80u) == 0 ? j : *j;
          v90 = (v88 & 0x80u) == 0 ? v88 : *(j + 8);
          v91 = v90 >= v74 ? v74 : v90;
          v92 = memcmp(v73, v89, v91);
          v87 = j + 24;
          if (v92)
          {
            break;
          }

          if (v74 < v90)
          {
            goto LABEL_178;
          }
        }
      }

      while ((v92 & 0x80000000) == 0);
LABEL_178:
      k = a2;
      if (j < a2)
      {
        for (k = a2 - 3; ; v76 = k[1])
        {
          if ((v75 & 0x80u) == 0)
          {
            v95 = k;
          }

          else
          {
            v95 = v77;
          }

          if ((v75 & 0x80u) == 0)
          {
            v76 = v75;
          }

          if (v76 >= v74)
          {
            v96 = v74;
          }

          else
          {
            v96 = v76;
          }

          v97 = memcmp(v73, v95, v96);
          if (v97)
          {
            if ((v97 & 0x80000000) == 0)
            {
              break;
            }
          }

          else if (v74 >= v76)
          {
            break;
          }

          v94 = *(k - 3);
          k -= 3;
          v77 = v94;
          v75 = *(k + 23);
        }
      }

      if (j >= k)
      {
        v98 = a1;
      }

      else
      {
        v98 = a1;
        do
        {
          v99 = *j;
          v287 = *(j + 16);
          v286 = v99;
          v100 = *k;
          *(j + 16) = k[2];
          *j = v100;
          v101 = v286;
          k[2] = v287;
          *k = v101;
          if (v289 >= 0)
          {
            v102 = &v288;
          }

          else
          {
            v102 = v288;
          }

          if (v289 >= 0)
          {
            v103 = HIBYTE(v289);
          }

          else
          {
            v103 = *(&v288 + 1);
          }

          v104 = j + 24;
          do
          {
            while (1)
            {
              j = v104;
              v105 = *(v104 + 23);
              v106 = (v105 & 0x80u) == 0 ? j : *j;
              v107 = (v105 & 0x80u) == 0 ? v105 : *(j + 8);
              v108 = v107 >= v103 ? v103 : v107;
              v109 = memcmp(v102, v106, v108);
              v104 = j + 24;
              if (v109)
              {
                break;
              }

              if (v103 < v107)
              {
                goto LABEL_214;
              }
            }
          }

          while ((v109 & 0x80000000) == 0);
LABEL_214:
          v110 = k - 3;
          do
          {
            while (1)
            {
              k = v110;
              v111 = *(v110 + 23);
              v112 = v111 >= 0 ? k : *k;
              v113 = v111 >= 0 ? v111 : k[1];
              v114 = v113 >= v103 ? v103 : v113;
              v115 = memcmp(v102, v112, v114);
              v110 = k - 3;
              if (v115)
              {
                break;
              }

              if (v103 >= v113)
              {
                goto LABEL_194;
              }
            }
          }

          while (v115 < 0);
LABEL_194:
          ;
        }

        while (j < k);
      }

      v116 = (j - 24);
      if (j - 24 == v98)
      {
        if (*(j - 1) < 0)
        {
          operator delete(*v116);
        }
      }

      else
      {
        if (*(v98 + 23) < 0)
        {
          operator delete(*v98);
        }

        v117 = *v116;
        *(v98 + 16) = *(j - 8);
        *v98 = v117;
        *(j - 1) = 0;
        *(j - 24) = 0;
      }

      a4 = 0;
      v118 = v288;
      *(j - 8) = v289;
      *v116 = v118;
      v6 = a2;
    }
  }

  v120 = *(a2 - 1);
  v121 = a2 - 3;
  if (v120 >= 0)
  {
    v122 = a2 - 3;
  }

  else
  {
    v122 = *(a2 - 3);
  }

  if (v120 >= 0)
  {
    v123 = *(a2 - 1);
  }

  else
  {
    v123 = *(a2 - 2);
  }

  v124 = *(v8 + 23);
  if (v124 >= 0)
  {
    v125 = v8;
  }

  else
  {
    v125 = *v8;
  }

  if (v124 >= 0)
  {
    v126 = *(v8 + 23);
  }

  else
  {
    v126 = *(v8 + 8);
  }

  if (v126 >= v123)
  {
    v127 = v123;
  }

  else
  {
    v127 = v126;
  }

  v128 = memcmp(v122, v125, v127);
  if (v128)
  {
    if (v128 < 0)
    {
LABEL_520:
      v273 = *v8;
      v287 = *(v8 + 16);
      v286 = v273;
      v274 = *v121;
      *(v8 + 16) = *(a2 - 1);
      *v8 = v274;
      v275 = v286;
      *(a2 - 1) = v287;
      *v121 = v275;
    }
  }

  else if (v123 < v126)
  {
    goto LABEL_520;
  }

LABEL_521:
  v276 = *MEMORY[0x277D85DE8];
}

__n128 sub_255B9B5B0(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (!v13)
  {
    if (v8 >= v11)
    {
      goto LABEL_18;
    }

LABEL_31:
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    if (v8 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v8;
    }

    v24 = memcmp(v21, v7, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
LABEL_42:
        v25 = a1[2];
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        a1[2] = v27;
        *a2 = v26;
        a2[2] = v25;
        v28 = *(a3 + 23);
        if (v28 >= 0)
        {
          v29 = a3;
        }

        else
        {
          v29 = *a3;
        }

        if (v28 >= 0)
        {
          v30 = *(a3 + 23);
        }

        else
        {
          v30 = a3[1];
        }

        v31 = *(a2 + 23);
        if (v31 >= 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        if (v31 >= 0)
        {
          v33 = *(a2 + 23);
        }

        else
        {
          v33 = a2[1];
        }

        if (v33 >= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v33;
        }

        v35 = memcmp(v29, v32, v34);
        if (v35)
        {
          if ((v35 & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (v30 >= v33)
        {
          return result;
        }

        v47 = a2[2];
        result = *a2;
        v49 = a3[2];
        *a2 = *a3;
        a2[2] = v49;
LABEL_83:
        *a3 = result;
        a3[2] = v47;
        return result;
      }
    }

    else if (v22 >= v8)
    {
      goto LABEL_42;
    }

    v47 = a1[2];
    result = *a1;
    v48 = a3[2];
    *a1 = *a3;
    a1[2] = v48;
    goto LABEL_83;
  }

  if (v13 < 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v16 >= v8)
  {
    return result;
  }

  v36 = a2[2];
  v37 = *a2;
  v38 = a3[2];
  *a2 = *a3;
  a2[2] = v38;
  *a3 = v37;
  a3[2] = v36;
  v39 = *(a2 + 23);
  if (v39 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = *a2;
  }

  if (v39 >= 0)
  {
    v41 = *(a2 + 23);
  }

  else
  {
    v41 = a2[1];
  }

  v42 = *(a1 + 23);
  if (v42 >= 0)
  {
    v43 = a1;
  }

  else
  {
    v43 = *a1;
  }

  if (v42 >= 0)
  {
    v44 = *(a1 + 23);
  }

  else
  {
    v44 = a1[1];
  }

  if (v44 >= v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = memcmp(v40, v43, v45);
  if (v46)
  {
    if (v46 < 0)
    {
      goto LABEL_85;
    }
  }

  else if (v41 < v44)
  {
LABEL_85:
    v50 = a1[2];
    result = *a1;
    v51 = a2[2];
    *a1 = *a2;
    a1[2] = v51;
    *a2 = result;
    a2[2] = v50;
  }

  return result;
}

__n128 sub_255B9B81C(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  sub_255B9B5B0(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 1);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 >= v13)
  {
    return result;
  }

  v17 = *(a3 + 2);
  v18 = *a3;
  v19 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v19;
  *a4 = v18;
  a4[2] = v17;
  v20 = *(a3 + 23);
  if (v20 >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (v20 >= 0)
  {
    v22 = *(a3 + 23);
  }

  else
  {
    v22 = *(a3 + 1);
  }

  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = *(a2 + 1);
  }

  if (v25 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  v27 = memcmp(v21, v24, v26);
  if (v27)
  {
    if ((v27 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v25)
  {
    return result;
  }

  v28 = *(a2 + 2);
  v29 = *a2;
  v30 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v30;
  *a3 = v29;
  *(a3 + 2) = v28;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 23);
  }

  else
  {
    v33 = *(a2 + 1);
  }

  v34 = *(a1 + 23);
  if (v34 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  if (v36 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = v36;
  }

  v38 = memcmp(v32, v35, v37);
  if (v38)
  {
    if (v38 < 0)
    {
      goto LABEL_58;
    }
  }

  else if (v33 < v36)
  {
LABEL_58:
    v39 = *(a1 + 16);
    result = *a1;
    v40 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v40;
    *a2 = result;
    *(a2 + 2) = v39;
  }

  return result;
}

__n128 sub_255B9B9C8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  sub_255B9B81C(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v15)
  {
    return result;
  }

  v19 = *(a4 + 2);
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v21;
  *a5 = v20;
  a5[2] = v19;
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 1);
  }

  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v23, v26, v28);
  if (v29)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v24 >= v27)
  {
    return result;
  }

  v30 = *(a3 + 16);
  v31 = *a3;
  v32 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 16) = v32;
  *a4 = v31;
  *(a4 + 2) = v30;
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 8);
  }

  v36 = *(a2 + 23);
  if (v36 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 8);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v35 >= v38)
  {
    return result;
  }

  v41 = *(a2 + 16);
  v42 = *a2;
  v43 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v43;
  *a3 = v42;
  *(a3 + 16) = v41;
  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 8);
  }

  v47 = *(a1 + 23);
  if (v47 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v45, v48, v50);
  if (v51)
  {
    if ((v51 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v46 >= v49)
  {
    return result;
  }

  v52 = *(a1 + 16);
  result = *a1;
  v53 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v53;
  *a2 = result;
  *(a2 + 16) = v52;
  return result;
}

BOOL sub_255B9BBDC(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_255B9B5B0(a1, (a1 + 24), a2 - 3);
        return 1;
      case 4:
        sub_255B9B81C(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        sub_255B9B9C8(a1, a1 + 24, a1 + 48, (a1 + 72), a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      if (v10 >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = *(a1 + 8);
      }

      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      v14 = memcmp(v8, v11, v13);
      if (v14)
      {
        if ((v14 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v9 >= v12)
      {
        return 1;
      }

      v38 = *(a1 + 16);
      v39 = *a1;
      v40 = v6[2];
      *a1 = *v6;
      *(a1 + 16) = v40;
      *v6 = v39;
      v6[2] = v38;
      return 1;
    }
  }

  v15 = a1 + 48;
  sub_255B9B5B0(a1, (a1 + 24), (a1 + 48));
  v16 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  v41 = v2;
  while (2)
  {
    v20 = *(v16 + 23);
    if (v20 >= 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = *v16;
    }

    if (v20 >= 0)
    {
      v22 = *(v16 + 23);
    }

    else
    {
      v22 = v16[1];
    }

    v23 = *(v15 + 23);
    if (v23 >= 0)
    {
      v24 = v15;
    }

    else
    {
      v24 = *v15;
    }

    if (v23 >= 0)
    {
      v25 = *(v15 + 23);
    }

    else
    {
      v25 = *(v15 + 8);
    }

    if (v25 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v25;
    }

    v27 = memcmp(v21, v24, v26);
    if (v27)
    {
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v22 >= v25)
    {
      goto LABEL_32;
    }

    v42 = v18;
    v43 = *v16;
    v44 = v16[2];
    *v16 = *v15;
    v16[2] = *(v15 + 16);
    *(v15 + 23) = 0;
    *v15 = 0;
    v28 = v17;
    while (1)
    {
      v29 = a1 + v28;
      v30 = (a1 + v28 + 24);
      if (SHIBYTE(v44) >= 0)
      {
        v31 = &v43;
      }

      else
      {
        v31 = v43;
      }

      if (SHIBYTE(v44) >= 0)
      {
        v32 = HIBYTE(v44);
      }

      else
      {
        v32 = *(&v43 + 1);
      }

      v33 = *(v29 + 47);
      if (v33 >= 0)
      {
        v34 = (a1 + v28 + 24);
      }

      else
      {
        v34 = *(a1 + v28 + 24);
      }

      if (v33 >= 0)
      {
        v35 = *(v29 + 47);
      }

      else
      {
        v35 = *(v29 + 32);
      }

      if (v35 >= v32)
      {
        v36 = v32;
      }

      else
      {
        v36 = v35;
      }

      v37 = memcmp(v31, v34, v36);
      if (!v37)
      {
        if (v32 >= v35)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if ((v37 & 0x80000000) == 0)
      {
        break;
      }

LABEL_54:
      v15 -= 24;
      *(v29 + 48) = *v30;
      *(v29 + 64) = *(a1 + v28 + 40);
      *(v29 + 47) = 0;
      *v30 = 0;
      v28 -= 24;
      if (v28 == -48)
      {
        v15 = a1;
        goto LABEL_31;
      }
    }

    v15 = a1 + v28 + 48;
LABEL_31:
    v19 = v43;
    *(v15 + 16) = v44;
    *v15 = v19;
    v18 = v42 + 1;
    v2 = v41;
    if (v42 != 7)
    {
LABEL_32:
      v15 = v16;
      v17 += 24;
      v16 += 3;
      if (v16 == v2)
      {
        return 1;
      }

      continue;
    }

    return v16 + 3 == v41;
  }
}

void sub_255B9BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    do
    {
      v6 = a1 + v5;
      v7 = a3 + v5;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = *(a1 + v5);
      *(v7 + 16) = *(a1 + v5 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a3 + v5 + 24) = 0;
      v8 = (a3 + v5 + 24);
      *(v7 + 48) = 0;
      if (*(a1 + v5 + 48) == 1)
      {
        *v8 = 0;
        *(a3 + v5 + 32) = 0;
        *(a3 + v5 + 40) = 0;
        *v8 = *(v6 + 24);
        *(v7 + 40) = *(v6 + 40);
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
        *(v7 + 48) = 1;
      }

      v5 += 56;
    }

    while (v6 + 56 != a2);
    do
    {
      if (*(v4 + 48) == 1)
      {
        v9 = *(v4 + 24);
        if (v9)
        {
          v10 = *(v4 + 32);
          v11 = *(v4 + 24);
          if (v10 != v9)
          {
            do
            {
              v12 = *(v10 - 1);
              v10 -= 3;
              if (v12 < 0)
              {
                operator delete(*v10);
              }
            }

            while (v10 != v9);
            v11 = *(v4 + 24);
          }

          *(v4 + 32) = v9;
          operator delete(v11);
        }
      }

      v13 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v13;
        operator delete(v13);
      }

      v4 += 56;
    }

    while (v4 != a2);
  }
}

void *sub_255B9C000(void *a1, uint64_t a2)
{
  v14[0] = a2;
  v14[1] = a2 + 24;
  v15 = 0;
  sub_255B62710(&v15, v14);
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v5 = v15;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v15;
    if (v15 >= v4)
    {
      v7 = v15 % v4;
    }
  }

  else
  {
    v7 = (v4 - 1) & v15;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = v4 - 1;
      while (1)
      {
        v11 = v9[1];
        if (v5 == v11)
        {
          if (sub_255B97308((v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v12 = v9[1];
      if (v5 == v12)
      {
        if (sub_255B97308((v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v12 >= v4)
        {
          v12 %= v4;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}