uint64_t GCLSourceFromData(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_2500F09CC("GCLSourceFromData");
  if (v6)
  {
    return v6(a1, a2, a3);
  }

  if (!a3)
  {
    return 0x8000000000000000;
  }

  *a3 = 0;
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v8 = operator new(0x30uLL);
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v8 + 3;
  v9 = operator new(0x10uLL);
  result = 0;
  v8[5] = v9;
  *v9 = &unk_286298630;
  v9[1] = v8 + 5;
  *v8 = a1;
  v8[1] = a2;
  *a3 = v8;
  return result;
}

void GCLSourceRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    sub_2500E5D88(a1 + 16, *(a1 + 24));

    operator delete(a1);
  }
}

uint64_t GCLSourceOptionSet(uint64_t a1, char *__s, int a3)
{
  result = 0x8000000000000000;
  if (!a1 || !__s)
  {
    return result;
  }

  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst[1] = v8;
    v14 = v10 | 0x8000000000000000;
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(v14) = v7;
    v9 = __dst;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  memcpy(v9, __s, v8);
LABEL_12:
  *(v8 + v9) = 0;
  v15 = __dst;
  v11 = sub_2500E5E34((a1 + 16), __dst, &unk_25010FF31, &v15);
  v12 = v11;
  if (*(v11 + 20))
  {
    sub_2500E5D18(v11 + 56);
    *(v12 + 20) = 0;
  }

  *(v12 + 14) = a3;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return 0;
}

void sub_2500E5AA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500E5A88);
}

uint64_t GCLDecodeMeshFromSource(uint64_t a1, uint64_t a2)
{
  sub_2500E6250(&log);
  v4 = log;
  v10[0] = log;
  v5 = os_signpost_id_generate(log);
  v10[1] = v5;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2500E5000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "GCLDecodeMeshFromSource", "", buf, 2u);
    }
  }

  v7 = 0x8000000000000000;
  if (a1)
  {
    if (a2)
    {
      if (*(a2 + 16) || (v7 = (*(**(a1 + 40) + 16))(*(a1 + 40), a1, a2)) == 0)
      {
        v7 = (*(**(a1 + 40) + 24))(*(a1 + 40), a1, a2);
      }
    }
  }

  sub_2500E62E4(v10);
  return v7;
}

void sub_2500E5C08(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2500E62E4(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500E5BF0);
}

void sub_2500E5C4C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500E5C44);
}

void sub_2500E5C74(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2500E5CD0(exception, a1);
  __cxa_throw(exception, &unk_286298358, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2500E5CD0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2500E5D18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_286298370[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_2500E5D74(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_2500E5D88(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2500E5D88(a1, *a2);
    sub_2500E5D88(a1, a2[1]);
    sub_2500E5DE4((a2 + 4));

    operator delete(a2);
  }
}

void sub_2500E5DE4(uint64_t a1)
{
  sub_2500E5D18(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

_OWORD *sub_2500E5E34(uint64_t **a1, void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_2500E5EF0(a1, &v13, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x58uLL);
    v12[1] = a1;
    v12[2] = 1;
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *(v7 + 14) = 0;
    *(v7 + 20) = 0;
    sub_2500E5F78(a1, v13, v8, v7);
    v12[0] = 0;
    sub_2500E5FD0(v12);
  }

  return v7;
}

void *sub_2500E5EF0(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_2500E601C(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_2500E601C(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *sub_2500E5F78(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2500E60B4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_2500E5FD0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2500E5DE4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2500E601C(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

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
    v6 = a2[1];
  }

  return sub_2500E6054(a1, v2, v5, v6);
}

uint64_t sub_2500E6054(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *sub_2500E60B4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_2500E6250(void *result)
{
  v1 = 0x27F3C0000uLL;
  if ((atomic_load_explicit(&qword_27F3C08B8, memory_order_acquire) & 1) == 0)
  {
    v4 = result;
    v2 = __cxa_guard_acquire(&qword_27F3C08B8);
    v1 = 0x27F3C0000;
    v3 = v2;
    result = v4;
    if (v3)
    {
      qword_27F3C08B0 = os_log_create("com.apple.GeometryCompression", "gcl");
      __cxa_guard_release(&qword_27F3C08B8);
      v1 = 0x27F3C0000;
      result = v4;
    }
  }

  *result = *(v1 + 2224);
  return result;
}

uint64_t sub_2500E62E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = *a1;
    if (os_signpost_enabled(*a1))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_2500E5000, v3, OS_SIGNPOST_INTERVAL_END, v2, "GCLDecodeMeshFromSource", "", v5, 2u);
    }
  }

  return a1;
}

unint64_t sub_2500E636C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v3 = *(a2 + 8);
  sub_2500E76A4((a1 + 8));
  __p[0] = 0xEEB6CC7FFAA28E71;
  if (sub_2500EA484(v4, v3 & ~(v3 >> 63), __p, 2) || (LOBYTE(v98) = 0, *__p = 0u, v97 = 0u, !sub_2500F1000(v4, v3 & ~(v3 >> 63), __p)) || v7 < 0)
  {
LABEL_2:
    result = 0x8000000000000000;
  }

  else
  {
    v8 = LODWORD(__p[1]);
    v9 = SHIDWORD(__p[1]);
    v11 = v97;
    v10 = DWORD1(v97);
    v12 = HIDWORD(v97);
    v84 = DWORD2(v97);
    v13 = v98;
    __p[0] = "vtxs";
    __p[1] = 4;
    v95 = 260;
    *&__dst = v9;
    v87 = 3;
    v94 = a3[2];
    v14 = sub_2500E71FC(a3, 0, 0, &v94, __p, &v95, &__dst, &v87);
    v14[1] = a3;
    v15 = *a3;
    *v14 = *a3;
    *(v15 + 8) = v14;
    *a3 = v14;
    v16 = a3[2] + 1;
    a3[2] = v16;
    __p[0] = "idxs";
    __p[1] = 4;
    v95 = 260;
    *&__dst = v10;
    v87 = 1;
    v94 = v16;
    v17 = sub_2500E71FC(a3, 0, 0, &v94, __p, &v95, &__dst, &v87);
    v17[1] = a3;
    v18 = *a3;
    *v17 = *a3;
    *(v18 + 8) = v17;
    *a3 = v17;
    v19 = a3[2] + 1;
    a3[2] = v19;
    v20 = v11;
    __p[0] = "topo";
    __p[1] = 4;
    v95 = 260;
    *&__dst = v11;
    v87 = 1;
    v94 = v19;
    v21 = sub_2500E71FC(a3, 0, 0, &v94, __p, &v95, &__dst, &v87);
    v21[1] = a3;
    v22 = *a3;
    *v21 = *a3;
    *(v22 + 8) = v21;
    *a3 = v21;
    v23 = a3[2] + 1;
    a3[2] = v23;
    if (v13)
    {
      __p[0] = "fgrp";
      __p[1] = 4;
      v95 = 260;
      *&__dst = v20;
      v87 = 1;
      v94 = v23;
      v24 = sub_2500E71FC(a3, 0, 0, &v94, __p, &v95, &__dst, &v87);
      v24[1] = a3;
      v25 = *a3;
      *v24 = *a3;
      *(v25 + 8) = v24;
      *a3 = v24;
      ++a3[2];
      v26 = v24 + 2;
    }

    else
    {
      v26 = 0;
    }

    if (v12 == 1)
    {
      v27 = 4 * v20;
    }

    else if (v12)
    {
      v27 = 0;
    }

    else
    {
      v27 = 3 * v20;
    }

    if (v17[5] == v27)
    {
      v17[5] = v20;
      if (v12 > 3)
      {
        v28 = 0;
      }

      else
      {
        v28 = qword_25010FFB0[v12];
      }

      v17[6] = v28;
      v17[7] = v28;
    }

    sub_2500E6F30(__p, "faceType");
    *&__dst = __p;
    v29 = sub_2500E5E34(v17 + 12, __p, &unk_25010FF31, &__dst);
    v30 = v29;
    if (*(v29 + 20))
    {
      sub_2500E5D18(v29 + 56);
      *(v30 + 20) = 0;
    }

    *(v30 + 14) = v12;
    if (SBYTE7(v97) < 0)
    {
      operator delete(__p[0]);
    }

    v31 = *(v17 + 30);
    sub_2500E6F30(__p, "idxdby");
    *&__dst = __p;
    v32 = sub_2500E5E34(v14 + 12, __p, &unk_25010FF31, &__dst);
    v33 = v32;
    if (*(v32 + 20))
    {
      sub_2500E5D18(v32 + 56);
      *(v33 + 20) = 0;
    }

    *(v33 + 14) = v31;
    if (SBYTE7(v97) < 0)
    {
      operator delete(__p[0]);
    }

    sub_2500E6F30(__p, "bitdepth");
    *&__dst = __p;
    v34 = sub_2500E5E34(v14 + 12, __p, &unk_25010FF31, &__dst);
    v35 = v34;
    if (*(v34 + 20))
    {
      sub_2500E5D18(v34 + 56);
      *(v35 + 20) = 0;
    }

    *(v35 + 14) = v84;
    if (SBYTE7(v97) < 0)
    {
      operator delete(__p[0]);
    }

    v36 = operator new(0x38uLL);
    *v36 = &unk_2862983B0;
    v36[1] = v14 + 2;
    v36[2] = v17 + 2;
    v36[3] = v21 + 2;
    v36[4] = v26;
    v36[5] = v4;
    v36[6] = v3;
    *(&v97 + 1) = v36;
    sub_2500E6FD8((a1 + 8), __p);
    sub_2500E795C(__p);
    result = 0;
    if (v8)
    {
      v37 = v3 - v8;
      if (v3 - v8 >= 1)
      {
        if (v4)
        {
          v38 = (v8 + v4);
        }

        else
        {
          v38 = v8;
        }

        do
        {
          __p[0] = 0xEEB6CC7FFAA28E71;
          if (sub_2500EA484(v38, v37, __p, 2))
          {
            goto LABEL_2;
          }

          v99 = 0;
          v97 = 0u;
          v98 = 0u;
          *__p = 0u;
          if (!sub_2500F27D0(v38, v37, __p) || v39 < 0)
          {
            goto LABEL_2;
          }

          v82 = v38;
          v85 = DWORD1(v98);
          v40 = "attr";
          if ((v98 - 1) <= 4)
          {
            v40 = (&off_27969C868)[(v98 - 1)];
          }

          v41 = LODWORD(__p[1]);
          v83 = SHIDWORD(__p[1]);
          v42 = v97;
          v76 = SDWORD1(v97);
          v43 = HIDWORD(v97);
          v79 = HIDWORD(v98);
          v80 = DWORD2(v98);
          v44 = strlen(v40);
          sub_2500E6F30(__p, "attrScope");
          v78 = v41;
          DWORD2(v97) = v85;
          v99 = 0;
          if (v85 >= 5)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x25305EAE0](exception, "Unknown scope");
            __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
          }

          v45 = dword_25010FFD0[v85];
          sub_2500E6F30(v100, "attrScopeM");
          v101 = v45;
          v102 = 0;
          sub_2500E6F30(v103, "bitdepth");
          v46 = 0;
          v104[0] = v43;
          v104[6] = 0;
          v88 = 0;
          v89 = 0;
          v87 = &v88;
          do
          {
            sub_2500E73C8(&v87, &v88, &__p[v46], &__p[v46]);
            v46 += 7;
          }

          while (v46 != 21);
          if (v44 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_2500E5C5C();
          }

          if (v44 >= 0x17)
          {
            if ((v44 | 7) == 0x17)
            {
              v48 = 25;
            }

            else
            {
              v48 = (v44 | 7) + 1;
            }

            p_dst = operator new(v48);
            *(&__dst + 1) = v44;
            v91 = v48 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v91) = v44;
            p_dst = &__dst;
            if (!v44)
            {
              goto LABEL_53;
            }
          }

          memcpy(p_dst, v40, v44);
LABEL_53:
          *(p_dst + v44) = 0;
          v92 = v87;
          v93[0] = v88;
          v93[1] = v89;
          if (v89)
          {
            v88[2] = v93;
            v87 = &v88;
            v88 = 0;
            v89 = 0;
          }

          else
          {
            v92 = v93;
          }

          v49 = a3[2];
          v50 = operator new(0x80uLL);
          v51 = v50;
          *(v50 + 1) = 0u;
          *v50 = 0u;
          *(v50 + 8) = 260;
          *(v50 + 5) = v83;
          *(v50 + 6) = v42;
          *(v50 + 7) = v42;
          v50[64] = 0;
          v77 = v50 + 16;
          if (SHIBYTE(v91) < 0)
          {
            sub_2500E7334(v50 + 72, __dst, *(&__dst + 1));
          }

          else
          {
            *(v50 + 72) = __dst;
            *(v50 + 11) = v91;
          }

          v51[13] = 0;
          v51[12] = (v51 + 13);
          v52 = (v51 + 12);
          v51[14] = 0;
          v53 = v92;
          if (v92 != v93)
          {
            do
            {
              sub_2500E73C8((v51 + 12), (v51 + 13), v53 + 4, (v53 + 4));
              v54 = v53[1];
              if (v54)
              {
                do
                {
                  v55 = v54;
                  v54 = *v54;
                }

                while (v54);
              }

              else
              {
                do
                {
                  v55 = v53[2];
                  v56 = *v55 == v53;
                  v53 = v55;
                }

                while (!v56);
              }

              v53 = v55;
            }

            while (v55 != v93);
          }

          v51[15] = v49;
          v57 = a3;
          v58 = *a3;
          *v51 = *a3;
          v51[1] = a3;
          *(v58 + 8) = v51;
          *a3 = v51;
          ++a3[2];
          sub_2500E5D88(&v92, v93[0]);
          if (SHIBYTE(v91) < 0)
          {
            operator delete(__dst);
          }

          sub_2500E5D88(&v87, v88);
          v59 = 0;
          v60 = v82;
          do
          {
            sub_2500E5D18(&v104[v59 / 4]);
            if (SHIBYTE(v103[v59 / 8 + 2]) < 0)
            {
              operator delete(v103[v59 / 8]);
            }

            v59 -= 56;
          }

          while (v59 != -168);
          if (v80 == 1)
          {
            __p[0] = "cond";
            __p[1] = 4;
            v95 = 1;
            *&__dst = v83;
            v87 = 1;
            v94 = a3[2];
            v61 = sub_2500E71FC(a3, 0, 0, &v94, __p, &v95, &__dst, &v87);
            v61[1] = a3;
            v62 = *a3;
            *v61 = *a3;
            *(v62 + 8) = v61;
            *a3 = v61;
            ++a3[2];
            v63 = *(v61 + 30);
            sub_2500E6F30(__p, "condby");
            *&__dst = __p;
            v64 = sub_2500E5E34(v52, __p, &unk_25010FF31, &__dst);
            v65 = v64;
            if (*(v64 + 20))
            {
              sub_2500E5D18(v64 + 56);
              *(v65 + 20) = 0;
            }

            *(v65 + 14) = v63;
            if (SBYTE7(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v66 = v61 + 2;
            v57 = a3;
            v60 = v82;
          }

          else
          {
            v66 = 0;
          }

          if (v79)
          {
            __p[0] = "idxs";
            __p[1] = 4;
            v95 = 4;
            *&__dst = v76;
            v87 = 1;
            v67 = (v57 + 16);
            v94 = *(v57 + 16);
            v68 = sub_2500E71FC(v57, 0, 0, &v94, __p, &v95, &__dst, &v87);
            v68[1] = a3;
            v69 = *a3;
            *v68 = *a3;
            *(v69 + 8) = v68;
            *a3 = v68;
            ++*v67;
            v70 = *(v68 + 30);
            sub_2500E6F30(__p, "idxdby");
            *&__dst = __p;
            v71 = sub_2500E5E34(v52, __p, &unk_25010FF31, &__dst);
            v72 = v71;
            if (*(v71 + 20))
            {
              sub_2500E5D18(v71 + 56);
              *(v72 + 20) = 0;
            }

            *(v72 + 14) = v70;
            if (SBYTE7(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v73 = v68 + 2;
          }

          else
          {
            v73 = 0;
          }

          v74 = operator new(0x38uLL);
          *v74 = &unk_2862983F8;
          v74[1] = v77;
          v74[2] = v66;
          v74[3] = v73;
          *(v74 + 8) = v85;
          v74[5] = v60;
          v74[6] = v37;
          *(&v97 + 1) = v74;
          sub_2500E6FD8((a1 + 8), __p);
          sub_2500E795C(__p);
          result = 0;
          if (v60)
          {
            v38 = (v78 + v60);
          }

          else
          {
            v38 = v78;
          }

          v37 -= v78;
        }

        while (v37 >= 1 && v78);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2500E6F30(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t sub_2500E6FD8(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(0x30uLL);
  *v4 = 0;
  v4[1] = 0;
  v6 = (a2 + 24);
  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      v4[5] = v4 + 2;
      result = (*(*result + 24))(result);
      goto LABEL_7;
    }

    v4[5] = result;
  }

  else
  {
    v6 = v4 + 5;
  }

  *v6 = 0;
LABEL_7:
  v7 = *a1;
  *v4 = *a1;
  v4[1] = a1;
  *(v7 + 8) = v4;
  *a1 = v4;
  ++a1[2];
  return result;
}

uint64_t sub_2500E7088(uint64_t a1)
{
  sub_2500E5D18(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2500E70C4(uint64_t a1)
{
  sub_2500FBCFC(&v9);
  v2 = a1 + 8;
  for (i = *(a1 + 16); i != v2; i = *(i + 8))
  {
    v4 = *(i + 40);
    if (!v4)
    {
      sub_2500E7BF0();
    }

    v5 = (*(*v4 + 48))(v4, &v9);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    v7 = sub_2500FD840(v6);
    operator delete(v7);
  }

  return v5;
}

void sub_2500E7170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    v11 = sub_2500FD840(a10);
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500E71C0(uint64_t *a1)
{
  sub_2500E76A4(a1 + 1);

  operator delete(a1);
}

void *sub_2500E71FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6, uint64_t *a7, uint64_t *a8)
{
  v15 = operator new(0x80uLL);
  v16 = v15;
  *v15 = a2;
  v15[1] = a3;
  v15[2] = 0;
  v17 = *a4;
  v19 = *a5;
  v18 = *(a5 + 8);
  v20 = *a6;
  v21 = *a7;
  v22 = *a8;
  v15[3] = 0;
  *(v15 + 8) = v20;
  v15[5] = v21;
  v15[6] = v22;
  v15[7] = v22;
  *(v15 + 64) = 0;
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v18 | 7) + 1;
    }

    v23 = operator new(v24);
    v16[10] = v18;
    v16[11] = v24 | 0x8000000000000000;
    v16[9] = v23;
  }

  else
  {
    v23 = v15 + 9;
    *(v15 + 95) = v18;
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  memmove(v23, v19, v18);
LABEL_10:
  *(v23 + v18) = 0;
  v16[13] = 0;
  v16[12] = v16 + 13;
  v16[14] = 0;
  v16[15] = v17;
  return v16;
}

void sub_2500E7308(_Unwind_Exception *a1)
{
  if (v1[64] == 1)
  {
    if (*v2)
    {
      operator delete[](*v2);
    }
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_2500E7334(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2500E5C5C();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = operator new(v6);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

uint64_t sub_2500E73C8(uint64_t result, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = result;
  v8 = result + 8;
  if (result + 8 == a2 || (result = sub_2500E601C(a3, (a2 + 32)), (result & 0x80) != 0))
  {
    if (*v7 == a2)
    {
      v11 = a2;
    }

    else
    {
      v10 = *a2;
      if (*a2)
      {
        do
        {
          v11 = v10;
          v10 = v10[1];
        }

        while (v10);
      }

      else
      {
        v15 = a2;
        do
        {
          v11 = v15[2];
          v16 = *v11 == v15;
          v15 = v11;
        }

        while (v16);
      }

      result = sub_2500E601C(v11 + 4, a3);
      if ((result & 0x80) == 0)
      {
        goto LABEL_18;
      }
    }

    if (*a2)
    {
      v24 = v11;
      v9 = (v11 + 1);
    }

    else
    {
      v24 = a2;
      v9 = a2;
    }

LABEL_31:
    if (*v9)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = sub_2500E601C((a2 + 32), a3);
  if ((result & 0x80) != 0)
  {
    v9 = (a2 + 8);
    v12 = *(a2 + 8);
    if (v12)
    {
      v13 = *(a2 + 8);
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      v17 = a2;
      do
      {
        v14 = *(v17 + 16);
        v16 = *v14 == v17;
        v17 = v14;
      }

      while (!v16);
    }

    if (v14 == v8)
    {
      goto LABEL_28;
    }

    result = sub_2500E601C(a3, (v14 + 32));
    if ((result & 0x80) != 0)
    {
      v12 = *v9;
LABEL_28:
      if (v12)
      {
        v24 = v14;
        v9 = v14;
      }

      else
      {
        v24 = a2;
      }

      goto LABEL_31;
    }

LABEL_18:
    result = sub_2500E5EF0(v7, &v24, a3);
    v9 = result;
    goto LABEL_31;
  }

  v23 = a2;
  v24 = a2;
  v9 = &v23;
  if (a2)
  {
    return result;
  }

LABEL_32:
  v18 = operator new(0x58uLL);
  v19 = v18;
  v21[0] = v18;
  v21[1] = v7;
  v22 = 0;
  if (*(a4 + 23) < 0)
  {
    sub_2500E7334(v18 + 32, *a4, *(a4 + 8));
  }

  else
  {
    *(v18 + 2) = *a4;
    v18[6] = *(a4 + 16);
  }

  *(v19 + 56) = 0;
  *(v19 + 20) = -1;
  sub_2500E5D18((v19 + 7));
  v20 = *(a4 + 48);
  if (v20 != -1)
  {
    v25 = v19 + 7;
    (off_286298390[v20])(&v25, a4 + 24);
    *(v19 + 20) = v20;
  }

  LOBYTE(v22) = 1;
  sub_2500E5F78(v7, v24, v9, v21[0]);
  v21[0] = 0;
  return sub_2500E5FD0(v21);
}

void *sub_2500E7638(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_2500E7334(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_2500E7664(uint64_t a1)
{
  sub_2500E5D88(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2500E76A4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_2500E795C((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__n128 sub_2500E7720(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2862983B0;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 sub_2500E777C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862983B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_2500E77BC(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v19[0] = *(a1 + 8);
  v19[1] = v4;
  sub_2500E78E4(v19, 4);
  *&v19[0] = 0;
  v5 = *(a1 + 8);
  if (!v5 || (v6 = *v5) == 0)
  {
    v6 = 0;
    v5 = &qword_250110420;
  }

  v7 = *(a1 + 24);
  if (!v7 || (v8 = *v7) == 0)
  {
    v8 = 0;
    v7 = &qword_250110420;
  }

  v9 = *(a1 + 16);
  if (!v9 || (v10 = *v9) == 0)
  {
    v10 = 0;
    v9 = &qword_250110420;
  }

  v11 = v5[1];
  v12 = v7[1];
  v13 = v9[1];
  v14 = *(a1 + 32);
  if (!v14 || (v15 = *v14) == 0)
  {
    v15 = 0;
    v14 = &qword_250110420;
  }

  v16 = sub_2500F0C28(*a2, *(a1 + 40), *(a1 + 48) & ~(*(a1 + 48) >> 63), v19, (v6 + 4 * v11), (v8 + 4 * v12), (v10 + 4 * v13), (v15 + 4 * v14[1]));
  v17 = *MEMORY[0x277D85DE8];
  return (v16 != 0) << 63;
}

uint64_t *sub_2500E78E4(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = 8 * a2;
    do
    {
      v4 = *v2;
      if (*v2)
      {
        if (!*v4)
        {
          v5 = *(v4 + 24) * *(v4 + 16) * *(v4 + 40);
          *(v4 + 8) = 0;
          result = operator new[](v5);
          *v4 = result;
          *(v4 + 48) = 1;
        }
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2500E795C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2500E79E4(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2862983F8;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 sub_2500E7A40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862983F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_2500E7A80(uint64_t a1, uint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 8) + 24))
  {
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    sub_2500E78E4(&v21, 3);
    v21 = 0;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48) & ~(*(a1 + 48) >> 63);
    v6 = *(a1 + 8);
    if (*(a1 + 32))
    {
      if (!v6 || (v7 = *v6) == 0)
      {
        v7 = 0;
        v6 = &qword_250110420;
      }

      v8 = v7 + 4 * v6[1];
      v9 = *(a1 + 24);
      if (!v9 || (v10 = *v9) == 0)
      {
        v10 = 0;
        v9 = &qword_250110420;
      }

      v11 = (v10 + 4 * v9[1]);
      v12 = *(a1 + 16);
      if (!v12 || (v13 = *v12) == 0)
      {
        v13 = 0;
        v12 = &qword_250110420;
      }

      v14 = sub_2500F7358(*a2, v4, v5, &v21, v8, v13 + v12[1], v11);
    }

    else
    {
      if (!v6 || (v16 = *v6) == 0)
      {
        v16 = 0;
        v6 = &qword_250110420;
      }

      v17 = v16 + 4 * v6[1];
      v18 = *(a1 + 16);
      if (!v18 || (v19 = *v18) == 0)
      {
        v19 = 0;
        v18 = &qword_250110420;
      }

      v14 = sub_2500F24AC(*a2, v4, v5, &v21, v17, v19 + v18[1]);
    }

    result = (v14 != 0) << 63;
  }

  else
  {
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2500E7BF0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, &unk_286298430, MEMORY[0x277D82660]);
}

void sub_2500E7C3C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2500E9A94();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 >> 61)
      {
        sub_2500E9AAC();
      }

      v12 = operator new(8 * v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * (v8 >> 3)];
    *v13 = a2;
    v6 = v13 + 8;
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[8 * v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_2500E7D20(uint64_t a1)
{
  v2 = *(a1 + 344);
  if (!v2)
  {
    sub_2500E7BF0();
  }

  (*(*v2 + 48))(v8);
  if (*(a1 + 144) == 1)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = v8[1];
  *(a1 + 96) = v8[0];
  *(a1 + 104) = v4;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 136) = v11;
  *(a1 + 144) = v12;
  v12 = 0;
  if (*(a1 + 256) == 1)
  {
    v5 = *(a1 + 208);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  v6 = v14;
  *(a1 + 208) = v13;
  *(a1 + 216) = v6;
  *(a1 + 224) = v15;
  *(a1 + 232) = v16;
  *(a1 + 248) = v17;
  *(a1 + 256) = v18;
  v18 = 0;
  if (*(a1 + 152))
  {
    if (v24)
    {
      if (__p)
      {
        operator delete[](__p);
        if (v18)
        {
          if (v13)
          {
            operator delete[](v13);
          }
        }
      }
    }
  }

  else
  {
    v7 = v20;
    *(a1 + 152) = __p;
    *(a1 + 160) = v7;
    *(a1 + 168) = v21;
    *(a1 + 176) = v22;
    *(a1 + 192) = v23;
    *(a1 + 200) = v24;
    v24 = 0;
  }

  if (v12 == 1)
  {
    if (v8[0])
    {
      operator delete[](v8[0]);
    }
  }
}

uint64_t sub_2500E7E7C(uint64_t a1)
{
  v1 = *(a1 + 232);
  v2 = 12 * *(a1 + 64) + 4 * v1;
  v3 = 4 * v1;
  v4 = v2 + 4 * *(a1 + 128) * *(a1 + 120);
  if (!*(a1 + 24))
  {
    v3 = 0;
  }

  return v4 + v3 + 1024;
}

unint64_t sub_2500E7EB8(uint64_t a1, int **a2, uint64_t *a3)
{
  if ((*(a1 + 32) & 0x80000000) == 0 && sub_2501007B0(a1, *(a1 + 40) + 4 * *(a1 + 48), *(a1 + 64), *(a1 + 208) + 4 * *(a1 + 216), *(a1 + 232), *(a1 + 96) + 4 * *(a1 + 104), *(a1 + 120) * *(a1 + 128), *(a1 + 152) + 4 * *(a1 + 160), (a1 + 32), a1 + 8))
  {
    return 0x8000000000000000;
  }

  v36 = 0;
  if (sub_2500FDBEC(*a2, (*(a1 + 40) + 4 * *(a1 + 48)), *(a1 + 64), (*(a1 + 208) + 4 * *(a1 + 216)), *(a1 + 232), (*(a1 + 96) + 4 * *(a1 + 104)), *(a1 + 120) * *(a1 + 128), (*(a1 + 152) + 4 * *(a1 + 160)), *a3, a3[1] & ~(a3[1] >> 63), &v36, 0, 0, 0, a1 + 8))
  {
    return 0x8000000000000000;
  }

  v7 = *(a1 + 264);
  if (v7)
  {
    v8 = v7[3];
    if (v8)
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = v7[1];
      }

      else
      {
        v11 = v7[5] * v8 * *(v7 + 16);
        v7[1] = 0;
        v9 = operator new[](v11);
        v10 = 0;
        *v7 = v9;
        *(v7 + 48) = 1;
      }

      memmove(&v9[4 * v10], *(*a2 + 8), 4 * v8);
    }
  }

  v12 = *(a1 + 272);
  v13 = *(a1 + 280);
  v14 = *(a1 + 272);
  if (v14 != v13)
  {
    v15 = 0;
    v16 = *(*a2 + 5);
    do
    {
      v17 = *v14;
      v18 = **v14;
      if (!v18)
      {
        v19 = v17[3];
        if (v19)
        {
          v20 = v17[5] * v19 * *(v17 + 16);
          v17[1] = 0;
          v18 = operator new[](v20);
          *v17 = v18;
          *(v17 + 48) = 1;
        }

        else
        {
          v18 = 0;
        }
      }

      v21 = v17[3];
      if (v21)
      {
        v22 = &v18[4 * v17[1]];
        v23 = 4 * v21;
        v24 = v16;
        do
        {
          v25 = *v24++;
          *v22 = v25 - v15;
          v22 += 4;
          v23 -= 4;
        }

        while (v23);
      }

      v16 += v21;
      v15 += v21;
      ++v14;
    }

    while (v14 != v13);
  }

  v27 = *(a1 + 296);
  v26 = *(a1 + 304);
  if (v27 != v26)
  {
    v28 = *(*a2 + 32);
    do
    {
      v29 = *v27;
      v30 = **v27;
      if (!v30)
      {
        v31 = v29[3];
        if (v31)
        {
          v32 = v29[5] * v31 * *(v29 + 16);
          v29[1] = 0;
          v30 = operator new[](v32);
          *v29 = v30;
          *(v29 + 48) = 1;
        }

        else
        {
          v30 = 0;
        }
      }

      v33 = v29[3];
      if (v33)
      {
        memmove(&v30[4 * v29[1]], v28, 4 * v33);
        v33 = v29[3];
      }

      v28 += 4 * v33;
      ++v27;
    }

    while (v27 != v26);
  }

  result = 0;
  if (*a3)
  {
    v34 = *a3 + v36;
  }

  else
  {
    v34 = v36;
  }

  v35 = a3[1] - v36;
  *a3 = v34;
  a3[1] = v35;
  return result;
}

double sub_2500E815C(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    sub_2500E7BF0();
  }

  (*(*v2 + 48))(v6);
  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = v6[1];
  *(a1 + 104) = v6[0];
  *(a1 + 112) = v4;
  *(a1 + 120) = v7;
  result = *&v8;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 152) = v10;
  return result;
}

uint64_t sub_2500E81F8(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (*(a1 + 44))
  {
    v3 = v1 * v2;
    if (!*(a1 + 24))
    {
      v1 = 0;
    }

    v4 = 4 * *(a1 + 136) * *(a1 + 128);
    if (!*(a1 + 28))
    {
      v4 = 0;
    }

    v5 = v1 + 4 * v3 + v4;
  }

  else
  {
    v6 = v1 * v2;
    if (!*(a1 + 24))
    {
      v1 = 0;
    }

    v5 = v1 + 4 * v6;
  }

  return v5 + 1024;
}

unint64_t sub_2500E8250(uint64_t a1, int **a2, uint64_t *a3)
{
  v6 = *(a1 + 36);
  if (!*(a1 + 44))
  {
    if ((v6 & 0x80000000) == 0 && sub_250100894(*a2, *(a1 + 48) + 4 * *(a1 + 56), *(a1 + 160) + *(a1 + 168), *(a1 + 40), *(a1 + 80), (a1 + 36), a1 + 8))
    {
      return 0x8000000000000000;
    }

    v22 = 0;
    if (sub_2500FFFD4(*a2, *(a1 + 48) + 4 * *(a1 + 56), (*(a1 + 160) + *(a1 + 168)), *(a1 + 40), 0, *(a1 + 80), *a3, a3[1] & ~(a3[1] >> 63), &v22, a1 + 8))
    {
      return 0x8000000000000000;
    }

    goto LABEL_31;
  }

  v7 = *(a1 + 160);
  v8 = *(a1 + 40);
  v9 = *(a1 + 104);
  v10 = *a2;
  if ((v6 & 0x80000000) == 0)
  {
    *(a1 + 24) = v7 != 0;
    *(a1 + 28) = v9 != 0;
    if (v8 == 1 && *v10 <= 79)
    {
      v11 = 2;
    }

    else
    {
      v11 = 4;
    }

    *(a1 + 16) = v11;
    if (v6 - 3 < 4)
    {
      v12 = 0;
      if (v8 == 1)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }
    }

    else if (v6 >= 3)
    {
      if (v6 == 11)
      {
        goto LABEL_18;
      }

      if (v8 == 1)
      {
        v13 = 4;
      }

      else
      {
        v13 = 2;
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
    }

    *(a1 + 20) = v13;
    *(a1 + 32) = v12;
  }

LABEL_18:
  v22 = 0;
  if (sub_250107B34(v10, (*(a1 + 48) + 4 * *(a1 + 56)), (v7 + *(a1 + 168)), v8, 0, *(a1 + 72), *(a1 + 80), (v9 + 4 * *(a1 + 112)), *a3, a3[1] & ~(a3[1] >> 63), &v22, a1 + 8))
  {
    return 0x8000000000000000;
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    v16 = v15[3];
    if (v16)
    {
      v17 = *v15;
      if (*v15)
      {
        v18 = v15[1];
      }

      else
      {
        v19 = v15[5] * v16 * *(v15 + 16);
        v15[1] = 0;
        v17 = operator new[](v19);
        v18 = 0;
        *v15 = v17;
        *(v15 + 48) = 1;
      }

      memmove(&v17[4 * v18], *(*a2 + 410), 4 * v16);
    }
  }

LABEL_31:
  result = 0;
  if (*a3)
  {
    v20 = *a3 + v22;
  }

  else
  {
    v20 = v22;
  }

  v21 = a3[1] - v22;
  *a3 = v20;
  a3[1] = v21;
  return result;
}

void sub_2500E84A0(uint64_t *a1)
{
  sub_2500E9B44(a1 + 2);

  operator delete(a1);
}

unint64_t sub_2500E84DC(void *a1, void *a2, uint64_t a3)
{
  v175 = *MEMORY[0x277D85DE8];
  __p = 0;
  v154 = 0;
  v156 = 0;
  v155 = 0;
  v6 = operator new(0x160uLL);
  *(v6 + 1) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = &unk_2862984A0;
  *(v6 + 1) = 0;
  v6[16] = 4;
  *(v6 + 5) = 2;
  *(v6 + 25) = 16843009;
  v6[29] = 1;
  *(v6 + 8) = 9;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  v152 = v6;
  v7 = a2[1];
  if (v7 == a2)
  {
    goto LABEL_65;
  }

  v8 = a2[1];
  while (1)
  {
    v9 = (v8 + 72);
    v10 = *(v8 + 95);
    if ((v10 & 0x80000000) == 0)
    {
      break;
    }

    if (*(v8 + 80) == 4)
    {
      v9 = *v9;
      goto LABEL_8;
    }

LABEL_9:
    v8 = *(v8 + 8);
    if (v8 == a2)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  if (v10 != 4)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (*v9 != 1937273974)
  {
    goto LABEL_9;
  }

  v11 = v8 + 16;
  do
  {
LABEL_12:
    v12 = (v7 + 72);
    v13 = *(v7 + 95);
    if (v13 < 0)
    {
      if (*(v7 + 80) != 4)
      {
        goto LABEL_18;
      }

      v12 = *v12;
LABEL_17:
      if (*v12 != 1886545766)
      {
        goto LABEL_18;
      }

      v14 = v7 + 16;
      if (!v11)
      {
        goto LABEL_65;
      }

LABEL_20:
      v15 = 0x8000000000000000;
      if (!*v11 || *(v11 + 16) != 260 || *(v11 + 32) != 3 || v14 && (!*v14 || *(v14 + 16) != 260 || *(v14 + 32) != 1))
      {
        goto LABEL_66;
      }

      sub_2500EBB28(a2, v11, &off_27969C890, &v171);
      sub_2500EB5F4(a2, "topo", &v157);
      v16 = v171;
      if (v171 == v172)
      {
        v18 = 0;
      }

      else
      {
        do
        {
          v17 = *v16;
          if (!*v16)
          {
            goto LABEL_71;
          }

          v18 = 0;
          if (!*v17 || *(v17 + 16) != 260)
          {
            goto LABEL_124;
          }

          v16 += 8;
        }

        while (v16 != v172);
        v19 = v157;
        if (v157 != v158)
        {
          v15 = 0x8000000000000000;
          while (1)
          {
            v20 = *v19;
            if (!*v19)
            {
              break;
            }

            v18 = 0;
            if (!*v20 || *(v20 + 16) != 260)
            {
              goto LABEL_124;
            }

            if (*(v20 + 32) != 1)
            {
              break;
            }

            if (++v19 == v158)
            {
              goto LABEL_39;
            }
          }

LABEL_71:
          v18 = 0;
          v15 = 0x8000000000000000;
          goto LABEL_124;
        }

LABEL_39:
        v150 = a3;
        sub_2500ED0B8(&__p, &v171, &v157, v14, &v161);
        v21 = *v11;
        v22 = *(v11 + 8);
        v23 = *(v11 + 16);
        v24 = *(v11 + 24);
        v25 = *(v11 + 40);
        if (v6[88] == 1)
        {
          v26 = *(v6 + 5);
          if (v26)
          {
            v146 = *(v11 + 24);
            v143 = *(v11 + 40);
            operator delete[](v26);
            v25 = v143;
            v24 = v146;
          }
        }

        *(v6 + 5) = v21;
        *(v6 + 6) = v22;
        *(v6 + 14) = v23;
        *(v6 + 4) = v24;
        *(v6 + 10) = v25;
        v6[88] = 0;
        if (v14)
        {
          v27 = *v14;
          v28 = *(v14 + 8);
          v29 = *(v14 + 16);
          v30 = *(v14 + 24);
          v31 = *(v14 + 40);
          if (v6[200] == 1)
          {
            v32 = *(v6 + 19);
            if (v32)
            {
              v147 = *(v14 + 24);
              v144 = *(v14 + 40);
              operator delete[](v32);
              v31 = v144;
              v30 = v147;
            }
          }

          *(v6 + 19) = v27;
          *(v6 + 20) = v28;
          *(v6 + 42) = v29;
          *(v6 + 11) = v30;
          *(v6 + 24) = v31;
          v6[200] = 0;
        }

        v159 = "genreorder";
        v160 = 10;
        v33 = sub_2500E9BDC(v150, &v159);
        if (v150 + 8 != v33 && !*(v33 + 80) && *(v33 + 56) == 1)
        {
          *(v6 + 33) = sub_2500EC90C(a2, v11, "reorderdby", *(v6 + 8));
          v34 = v162;
          if (v163 != v162)
          {
            v35 = 0;
            do
            {
              v36 = sub_2500EC90C(a2, *(v167 + v35), "reorderdby", v34[v35]);
              sub_2500E7C3C((v6 + 272), v36);
              v37 = sub_2500EC90C(a2, *(v167 + v35), "permutedby", *(v162 + v35));
              sub_2500E7C3C((v6 + 296), v37);
              ++v35;
              v34 = v162;
            }

            while (v35 < (v163 - v162) >> 3);
          }
        }

        v38 = 0;
        v39 = v172 - v171;
        *(v6 + 8) = -1;
        v40 = v14 || v39 > 8;
        v41 = v40;
        v6[24] = v41;
        v148 = v11 + 80;
        v173 = v11 + 80;
        v174 = v150;
        while (1)
        {
          v42 = *(&v173 + v38);
          v159 = "compression-level";
          v160 = 17;
          v43 = sub_2500E9BDC(v42, &v159);
          if (v42 + 8 != v43 && !*(v43 + 80))
          {
            break;
          }

          v38 += 8;
          if (v38 == 16)
          {
            goto LABEL_73;
          }
        }

        *(v6 + 8) = *(v43 + 56);
LABEL_73:
        v46 = 0;
        v173 = v148;
        v174 = v150;
        while (1)
        {
          v47 = *(&v173 + v46);
          v159 = "mode-bin";
          v160 = 8;
          v48 = sub_2500E9BDC(v47, &v159);
          if (v47 + 8 != v48 && !*(v48 + 80))
          {
            break;
          }

          v46 += 8;
          if (v46 == 16)
          {
            goto LABEL_79;
          }
        }

        v6[16] = *(v48 + 56);
LABEL_79:
        v49 = 0;
        v173 = v148;
        v174 = v150;
        while (1)
        {
          v50 = *(&v173 + v49);
          v159 = "mode-pred";
          v160 = 9;
          v51 = sub_2500E9BDC(v50, &v159);
          if (v50 + 8 != v51 && !*(v51 + 80))
          {
            break;
          }

          v49 += 8;
          if (v49 == 16)
          {
            goto LABEL_85;
          }
        }

        *(v6 + 5) = *(v51 + 56);
LABEL_85:
        v52 = 0;
        v173 = v148;
        v174 = v150;
        while (1)
        {
          v53 = *(&v173 + v52);
          v159 = "pmesh-act";
          v160 = 9;
          v54 = sub_2500E9BDC(v53, &v159);
          if (v53 + 8 != v54 && !*(v54 + 80))
          {
            break;
          }

          v52 += 8;
          if (v52 == 16)
          {
            goto LABEL_91;
          }
        }

        v6[25] = *(v54 + 56);
LABEL_91:
        v55 = 0;
        v173 = v148;
        v174 = v150;
        while (1)
        {
          v56 = *(&v173 + v55);
          v159 = "pmesh-tfsc";
          v160 = 10;
          v57 = sub_2500E9BDC(v56, &v159);
          if (v56 + 8 != v57 && !*(v57 + 80))
          {
            break;
          }

          v55 += 8;
          if (v55 == 16)
          {
            goto LABEL_97;
          }
        }

        v6[26] = *(v57 + 56);
LABEL_97:
        v58 = 0;
        v173 = v148;
        v174 = v150;
        while (1)
        {
          v59 = *(&v173 + v58);
          v159 = "pmesh-gbt";
          v160 = 9;
          v60 = sub_2500E9BDC(v59, &v159);
          if (v59 + 8 != v60 && !*(v60 + 80))
          {
            break;
          }

          v58 += 8;
          if (v58 == 16)
          {
            goto LABEL_103;
          }
        }

        v6[27] = *(v60 + 56);
LABEL_103:
        v61 = 0;
        v173 = v148;
        v174 = v150;
        while (1)
        {
          v62 = *(&v173 + v61);
          v159 = "mode-abe";
          v160 = 8;
          v63 = sub_2500E9BDC(v62, &v159);
          if (v62 + 8 != v63 && !*(v63 + 80))
          {
            break;
          }

          v61 += 8;
          if (v61 == 16)
          {
            goto LABEL_109;
          }
        }

        v6[28] = *(v63 + 56);
LABEL_109:
        v64 = 0;
        v173 = v148;
        v174 = v150;
        while (1)
        {
          v65 = *(&v173 + v64);
          v159 = "pmesh-dlpp";
          v160 = 10;
          v66 = sub_2500E9BDC(v65, &v159);
          if (v65 + 8 != v66 && !*(v66 + 80))
          {
            break;
          }

          v64 += 8;
          if (v64 == 16)
          {
            goto LABEL_115;
          }
        }

        v6[29] = *(v66 + 56);
LABEL_115:
        sub_2500EDBA0(&__p, &v161, &v159);
        sub_2500E9D4C((v6 + 320), &v159);
        a3 = v150;
        sub_2500E9CCC(&v159);
        if (v169)
        {
          v170 = v169;
          operator delete(v169);
        }

        if (v167)
        {
          v168 = v167;
          operator delete(v167);
        }

        if (v165)
        {
          v166 = v165;
          operator delete(v165);
        }

        if (v162)
        {
          v163 = v162;
          operator delete(v162);
        }

        v15 = 0;
        v18 = 1;
      }

LABEL_124:
      if (v157)
      {
        v158 = v157;
        operator delete(v157);
      }

      if (v171)
      {
        v172 = v171;
        operator delete(v171);
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_66;
      }

      v67 = v152;
      v151 = a3;
      v152 = 0;
      v68 = operator new(0x18uLL);
      v69 = a1 + 2;
      v68[1] = a1 + 2;
      v68[2] = v67;
      v70 = a1[2];
      *v68 = v70;
      *(v70 + 8) = v68;
      a1[2] = v68;
      ++a1[4];
      sub_2500E9EA8(&v152);
      v71 = a2[1];
      if (v71 == a2)
      {
LABEL_254:
        v135 = a1[3];
        if (v135 == v69)
        {
          v15 = 0;
        }

        else
        {
          do
          {
            (***(v135 + 16))(*(v135 + 16));
            v15 = 0;
            a1[1] += (*(**(v135 + 16) + 8))(*(v135 + 16));
            v135 = *(v135 + 8);
          }

          while (v135 != v69);
        }

        goto LABEL_67;
      }

      v145 = a3 + 8;
      while (1)
      {
        v72 = *(v71 + 95);
        if (v72 < 0)
        {
          v73 = *(v71 + 72);
          v72 = *(v71 + 80);
        }

        else
        {
          v73 = (v71 + 72);
        }

        if (v72 >= 4)
        {
          break;
        }

LABEL_253:
        v71 = *(v71 + 8);
        if (v71 == a2)
        {
          goto LABEL_254;
        }
      }

      v74 = &v73[v72];
      v75 = v73;
      while (1)
      {
        v76 = memchr(v75, 97, v72 - 3);
        if (!v76)
        {
          goto LABEL_253;
        }

        if (*v76 == 1920234593)
        {
          break;
        }

        v75 = v76 + 1;
        v72 = v74 - v75;
        if (v74 - v75 < 4)
        {
          goto LABEL_253;
        }
      }

      if (v76 != v73)
      {
        goto LABEL_253;
      }

      v77 = operator new(0x100uLL);
      *(v77 + 1) = 0u;
      *(v77 + 14) = 0u;
      *(v77 + 15) = 0u;
      *(v77 + 12) = 0u;
      *(v77 + 13) = 0u;
      *(v77 + 10) = 0u;
      *(v77 + 11) = 0u;
      *(v77 + 8) = 0u;
      *(v77 + 9) = 0u;
      *(v77 + 6) = 0u;
      *(v77 + 7) = 0u;
      *(v77 + 4) = 0u;
      *(v77 + 5) = 0u;
      *(v77 + 2) = 0u;
      *(v77 + 3) = 0u;
      *v77 = &unk_2862984D8;
      *(v77 + 1) = 0;
      v77[16] = 4;
      *(v77 + 5) = 2;
      v77[32] = 1;
      *(v77 + 9) = 9;
      v157 = v77;
      sub_2500EBB28(a2, v71 + 16, &off_27969C890, &v159);
      v149 = sub_2500EBCB8(a2, v71 + 16, &off_27969C8A8);
      v78 = 0;
      v15 = 0x8000000000000000;
      v79 = v159;
      if (*(v71 + 16) && *(v71 + 32) == 260)
      {
        v80 = v159;
        if (v159 != v160)
        {
          while (1)
          {
            v81 = *v80;
            if (!*v80)
            {
              break;
            }

            v15 = 0x8000000000000000;
            if (!*v81 || *(v81 + 16) != 260 || *(v81 + 32) != 1)
            {
              goto LABEL_156;
            }

            v80 += 8;
            if (v80 == v160)
            {
              goto LABEL_149;
            }
          }

          v78 = 0;
          v15 = 0x8000000000000000;
          goto LABEL_249;
        }

LABEL_149:
        if (!v149)
        {
LABEL_153:
          v82 = sub_2500EDD80(&__p, &v159, &v161);
          v84 = (v77 + 248);
          v83 = *(v77 + 31);
          *(v77 + 31) = 0;
          if (v83 == v77 + 224)
          {
            (*(*v83 + 32))(v83, v82);
          }

          else if (v83)
          {
            (*(*v83 + 40))(v83, v82);
          }

          v85 = v164;
          if (v164)
          {
            if (v164 == &v161)
            {
              *v84 = (v77 + 224);
              (*(*v85 + 24))(v85, v77 + 224, v82);
              goto LABEL_164;
            }

            *v84 = v164;
            v84 = &v164;
          }

          *v84 = 0;
LABEL_164:
          sub_2500E9E28(&v161);
          v86 = *(v71 + 16);
          v87 = *(v71 + 24);
          v88 = *(v71 + 32);
          v89 = *(v71 + 40);
          v90 = *(v71 + 56);
          if (v77[96] == 1)
          {
            v91 = *(v77 + 6);
            if (v91)
            {
              v141 = *(v71 + 40);
              v139 = *(v71 + 32);
              v137 = *(v71 + 56);
              operator delete[](v91);
              v90 = v137;
              v88 = v139;
              v89 = v141;
            }
          }

          *(v77 + 6) = v86;
          *(v77 + 7) = v87;
          *(v77 + 16) = v88;
          *(v77 + 72) = v89;
          *(v77 + 11) = v90;
          v77[96] = 0;
          if (v149)
          {
            v92 = *v149;
            v93 = *(v149 + 8);
            v94 = *(v149 + 16);
            v95 = *(v149 + 24);
            v96 = *(v149 + 40);
          }

          else
          {
            v92 = 0;
            v93 = 0;
            v94 = 0;
            v96 = 0;
            v95 = 0uLL;
          }

          if (v77[208] == 1)
          {
            v97 = *(v77 + 20);
            if (v97)
            {
              v140 = v93;
              v142 = v92;
              v138 = v95;
              operator delete[](v97);
              v95 = v138;
              v93 = v140;
              v92 = v142;
            }
          }

          *(v77 + 20) = v92;
          *(v77 + 21) = v93;
          *(v77 + 44) = v94;
          *(v77 + 184) = v95;
          *(v77 + 25) = v96;
          v77[208] = 0;
          v98 = *(v71 + 95);
          if (v98 >= 0)
          {
            v99 = (v71 + 72);
          }

          else
          {
            v99 = *(v71 + 72);
          }

          if (v98 >= 0)
          {
            v100 = *(v71 + 95);
          }

          else
          {
            v100 = *(v71 + 80);
          }

          if (v100 >= 8)
          {
            v101 = 8;
          }

          else
          {
            v101 = v100;
          }

          v102 = memcmp(v99, "attrTCrd", v101);
          if (v100 != 8 || v102)
          {
            v104 = memcmp(v99, "attrNorm", v101);
            if (v100 != 8 || v104)
            {
              v105 = memcmp(v99, "attrTgnt", v101);
              if (v100 != 8 || v105)
              {
                v106 = memcmp(v99, "attrBgnt", v101);
                if (v100 != 8 || v106)
                {
                  if (!memcmp(v99, "attrColr", v101) && v100 == 8)
                  {
                    v103 = 5;
                  }

                  else
                  {
                    v103 = 0;
                  }
                }

                else
                {
                  v103 = 4;
                }
              }

              else
              {
                v103 = 3;
              }
            }

            else
            {
              v103 = 2;
            }
          }

          else
          {
            v103 = 1;
          }

          *(v77 + 10) = v103;
          *(v77 + 11) = 0;
          v161 = "genreorder";
          v162 = 10;
          v108 = sub_2500E9BDC(v151, &v161);
          if (v145 != v108 && !*(v108 + 80) && *(v108 + 56) == 1 && v159 != v160)
          {
            *(v77 + 27) = sub_2500EC90C(a2, v71 + 16, "reorderdby", *(v71 + 40));
          }

          v109 = 0;
          *(v77 + 9) = -1;
          v171 = (v71 + 96);
          v172 = v151;
          while (1)
          {
            v110 = (&v171)[v109];
            v161 = "compression-level";
            v162 = 17;
            v111 = sub_2500E9BDC(v110, &v161);
            if (v110 + 8 != v111 && !*(v111 + 80))
            {
              break;
            }

            if (++v109 == 2)
            {
              goto LABEL_211;
            }
          }

          *(v77 + 9) = *(v111 + 56);
LABEL_211:
          v112 = 0;
          v171 = (v71 + 96);
          v172 = v151;
          while (1)
          {
            v113 = (&v171)[v112];
            v161 = "mode-bin";
            v162 = 8;
            v114 = sub_2500E9BDC(v113, &v161);
            if (v113 + 8 != v114 && !*(v114 + 80))
            {
              break;
            }

            if (++v112 == 2)
            {
              goto LABEL_217;
            }
          }

          v77[16] = *(v114 + 56);
LABEL_217:
          v115 = 0;
          v171 = (v71 + 96);
          v172 = v151;
          while (1)
          {
            v116 = (&v171)[v115];
            v161 = "mode-pred";
            v162 = 9;
            v117 = sub_2500E9BDC(v116, &v161);
            if (v116 + 8 != v117 && !*(v117 + 80))
            {
              break;
            }

            if (++v115 == 2)
            {
              goto LABEL_223;
            }
          }

          *(v77 + 5) = *(v117 + 56);
LABEL_223:
          v118 = 0;
          v171 = (v71 + 96);
          v172 = v151;
          while (1)
          {
            v119 = (&v171)[v118];
            v161 = "mode-abe";
            v162 = 8;
            v120 = sub_2500E9BDC(v119, &v161);
            if (v119 + 8 != v120 && !*(v120 + 80))
            {
              break;
            }

            if (++v118 == 2)
            {
              goto LABEL_229;
            }
          }

          v77[32] = *(v120 + 56);
LABEL_229:
          v121 = 0;
          v171 = (v71 + 96);
          v172 = v151;
          while (1)
          {
            v122 = (&v171)[v121];
            v161 = "bitdepth";
            v162 = 8;
            v123 = sub_2500E9BDC(v122, &v161);
            if (v122 + 8 != v123 && !*(v123 + 80))
            {
              break;
            }

            if (++v121 == 2)
            {
              goto LABEL_235;
            }
          }

          *(v77 + 3) = *(v123 + 56);
LABEL_235:
          v124 = 0;
          v171 = (v71 + 96);
          v172 = v151;
          while (1)
          {
            v125 = (&v171)[v124];
            v161 = "attrScope";
            v162 = 9;
            v126 = sub_2500E9BDC(v125, &v161);
            if (v125 + 8 != v126 && !*(v126 + 80))
            {
              break;
            }

            if (++v124 == 2)
            {
              goto LABEL_241;
            }
          }

          *(v77 + 11) = *(v126 + 56);
LABEL_241:
          v127 = 0;
          v171 = (v71 + 96);
          v172 = v151;
          while (1)
          {
            v128 = (&v171)[v127];
            v161 = "attrScopeM";
            v162 = 10;
            v129 = sub_2500E9BDC(v128, &v161);
            if (v128 + 8 != v129 && !*(v129 + 80))
            {
              break;
            }

            if (++v127 == 2)
            {
              goto LABEL_248;
            }
          }

          v130 = *(v129 + 56);
          if (v130 >= 4)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x25305EAE0](exception, "Unknown scope");
            __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
          }

          *(v77 + 11) = dword_250110010[v130];
LABEL_248:
          v15 = 0;
          v79 = v159;
          v131 = v159 != v160;
          *(v77 + 6) = v149 != 0;
          *(v77 + 7) = v131;
          v78 = 1;
          goto LABEL_249;
        }

        v78 = 0;
        if (*v149 && *(v149 + 16) == 1)
        {
          if (*(v149 + 32) == 1)
          {
            goto LABEL_153;
          }

LABEL_156:
          v78 = 0;
        }
      }

LABEL_249:
      if (v79)
      {
        v160 = v79;
        operator delete(v79);
      }

      if (v78)
      {
        v132 = v157;
        v157 = 0;
        v133 = operator new(0x18uLL);
        v133[1] = v69;
        v133[2] = v132;
        v134 = a1[2];
        *v133 = v134;
        *(v134 + 8) = v133;
        a1[2] = v133;
        ++a1[4];
        sub_2500E9F78(&v157);
        goto LABEL_253;
      }

      sub_2500E9F78(&v157);
      goto LABEL_67;
    }

    if (v13 == 4)
    {
      goto LABEL_17;
    }

LABEL_18:
    v7 = *(v7 + 8);
  }

  while (v7 != a2);
  v14 = 0;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_65:
  v15 = 0x8000000000000000;
LABEL_66:
  sub_2500E9EA8(&v152);
LABEL_67:
  if (__p)
  {
    v154 = __p;
    operator delete(__p);
  }

  v44 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_2500E95EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_2500E9AE0(&a33);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 136);
  if (v35)
  {
    *(v33 - 128) = v35;
    operator delete(v35);
  }

  sub_2500E9EA8(&a21);
  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2500E976C(uint64_t a1, uint64_t a2)
{
  sub_25010EB08(&v10);
  v4 = a1 + 16;
  for (i = *(a1 + 24); i != v4; i = *(i + 8))
  {
    v6 = (*(**(i + 16) + 16))(*(i + 16), &v10, a2);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    v8 = sub_25010F040(v7);
    operator delete(v8);
  }

  return v6;
}

void sub_2500E9814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v11 = sub_25010F040(a10);
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500E9834(uint64_t a1)
{
  sub_2500E9CCC(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  if (*(a1 + 256) == 1)
  {
    v4 = *(a1 + 208);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  if (*(a1 + 200) == 1)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  if (*(a1 + 144) == 1)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      operator delete[](v6);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      operator delete[](v7);
    }
  }

  return a1;
}

void sub_2500E98E0(uint64_t a1)
{
  sub_2500E9CCC(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  if (*(a1 + 256) == 1)
  {
    v4 = *(a1 + 208);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  if (*(a1 + 200) == 1)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  if (*(a1 + 144) == 1)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      operator delete[](v6);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      operator delete[](v7);
    }
  }

  operator delete(a1);
}

uint64_t sub_2500E999C(uint64_t a1)
{
  sub_2500E9E28(a1 + 224);
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  return a1;
}

void sub_2500E9A10(uint64_t a1)
{
  sub_2500E9E28(a1 + 224);
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  operator delete(a1);
}

void sub_2500E9AAC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_286298548, MEMORY[0x277D82620]);
}

void *sub_2500E9AE0(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_2500E9B44(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = v2[1];
        v5 = v2[2];
        v2[2] = 0;
        if (v5)
        {
          (*(*v5 + 32))(v5);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }
}

uint64_t sub_2500E9BDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = sub_2500E9C54(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(v4 + 55);
  v7 = v6 >= 0 ? (v4 + 32) : *(v4 + 32);
  v8 = v6 >= 0 ? *(v4 + 55) : *(v4 + 40);
  if ((sub_2500E6054(*a2, *(a2 + 8), v7, v8) & 0x80) != 0)
  {
    return v3;
  }

  return v5;
}

uint64_t sub_2500E9C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = *(v5 + 55);
      if (v7 >= 0)
      {
        v8 = (v5 + 32);
      }

      else
      {
        v8 = *(v5 + 32);
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 55);
      }

      else
      {
        v9 = *(v5 + 40);
      }

      v10 = sub_2500E6054(*a2, *(a2 + 8), v8, v9);
      if (v10 <= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + 8 * (v10 > 0));
    }

    while (v5);
  }

  return a4;
}

uint64_t sub_2500E9CCC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2500E9D4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2500E9E28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2500E9EA8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_2500E9CCC(v1 + 320);
    v2 = *(v1 + 296);
    if (v2)
    {
      *(v1 + 304) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 272);
    if (v3)
    {
      *(v1 + 280) = v3;
      operator delete(v3);
    }

    if (*(v1 + 256) == 1)
    {
      v4 = *(v1 + 208);
      if (v4)
      {
        operator delete[](v4);
      }
    }

    if (*(v1 + 200) == 1)
    {
      v5 = *(v1 + 152);
      if (v5)
      {
        operator delete[](v5);
      }
    }

    if (*(v1 + 144) == 1)
    {
      v6 = *(v1 + 96);
      if (v6)
      {
        operator delete[](v6);
      }
    }

    if (*(v1 + 88) == 1)
    {
      v7 = *(v1 + 40);
      if (v7)
      {
        operator delete[](v7);
      }
    }

    operator delete(v1);
  }
}

void sub_2500E9F78(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_2500E9E28(v1 + 224);
    if (*(v1 + 208) == 1)
    {
      v2 = *(v1 + 160);
      if (v2)
      {
        operator delete[](v2);
      }
    }

    if (*(v1 + 152) == 1)
    {
      v3 = *(v1 + 104);
      if (v3)
      {
        operator delete[](v3);
      }
    }

    if (*(v1 + 96) == 1)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        operator delete[](v4);
      }
    }

    operator delete(v1);
  }
}

char *sub_2500EA010(void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    sub_2500E9A94();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

uint64_t GCLBufferSemanticName(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result += 56;
    if (*(v1 + 79) < 0)
    {
      return *result;
    }
  }

  return result;
}

uint64_t GCLBufferProperty(uint64_t a1, char *__s, _DWORD *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v8[0] = __s;
    v8[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1 + 80, v8);
    v7 = v6;
    if (a1 + 88 == v6 || *(v6 + 80))
    {
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      *a3 = *(v7 + 56);
    }
  }

  return result;
}

void sub_2500EA0FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EA0D4);
}

uint64_t GCLBufferPropertyString(uint64_t a1, char *__s, uint64_t *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v11[0] = __s;
    v11[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1 + 80, v11);
    v7 = v6;
    if (a1 + 88 == v6 || *(v6 + 80) != 1)
    {
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      v10 = *(v7 + 56);
      v8 = v7 + 56;
      v9 = v10;
      if (*(v8 + 23) < 0)
      {
        v8 = v9;
      }

      *a3 = v8;
    }
  }

  return result;
}

unint64_t GCLBufferSetProperty(uint64_t a1, char *a2, int a3)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(__p, a2);
    v10 = __p;
    v6 = sub_2500E5E34((a1 + 80), __p, &unk_25010FF31, &v10);
    v7 = v6;
    if (*(v6 + 20))
    {
      sub_2500E5D18(v6 + 56);
      *(v7 + 20) = 0;
    }

    *(v7 + 14) = a3;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2500EA248(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EA234);
}

unint64_t GCLBufferSetPropertyString(uint64_t a1, char *a2, char *a3)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(__p, a2);
    *&v10 = __p;
    v6 = sub_2500E5E34((a1 + 80), __p, &unk_25010FF31, &v10);
    v7 = v6;
    if (*(v6 + 20) == 1)
    {
      sub_2500EA43C((v6 + 56), a3);
    }

    else
    {
      sub_2500E6F30(&v10, a3);
      sub_2500E5D18(v7 + 56);
      *(v7 + 56) = v10;
      *(v7 + 9) = v11;
      *(v7 + 20) = 1;
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2500EA344(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EA330);
}

uint64_t GCLBufferId(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

std::string *sub_2500EA380(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_2500EA43C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2500EA380(a1, __s, v4);
}

uint64_t sub_2500EA484(_DWORD *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = 3;
  if (a1 && a2 >= 4)
  {
    if ((a2 & 0x7FFFFFFFFFFFFFFCLL) == 4 || (a2 & 0x7FFFFFFFFFFFFFF8) == 8 || a1 == -16 || !a4)
    {
      return 3;
    }

    else
    {
      v5 = (a1 + 2);
      v6 = 4 * a4;
      v7 = a1[3];
      while (*a3 != *a1)
      {
        ++a3;
        v4 = 3;
        v6 -= 4;
        if (!v6)
        {
          return v4;
        }
      }

      v4 = 3;
      if (v7 >= 0x10 && a2 >= v7 && a1 != -8 && (a1 + a2) >= a1 && (a1 + v7) >= v5)
      {
        v9 = -1;
        for (i = v7 - 8; i; --i)
        {
          v11 = *v5++;
          v9 = dword_250110020[v11 ^ HIBYTE(v9)] ^ (v9 << 8);
        }

        if (a1[1] == v9)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v4;
}

uint64_t GCLBufferListBegin(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t GCLBufferListIterNext(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t GCLBufferForBufferListIter(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2500EA58C(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_2500EA980((a1 + 3), 24);
  return a1;
}

void sub_2500EA808(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25305EC00](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2500EA830(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_2500EA980(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25305EBB0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2500EAA3C(a1);
  return a1;
}

void sub_2500EAA14(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2500EAA3C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_2500EAB44(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25305EB40](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_2500EACEC(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25305EB50](v13);
  return a1;
}

void sub_2500EAC84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25305EB50](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2500EAC64);
}

uint64_t sub_2500EACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2500E5C5C();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2500EAEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t GCLOptionsNew(void *a1)
{
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v2 = operator new(0x18uLL);
  result = 0;
  v2[2] = 0;
  v2[1] = 0;
  *v2 = v2 + 1;
  *a1 = v2;
  return result;
}

void sub_2500EAF18(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EAF00);
}

void GCLOptionsRelease(void **a1)
{
  if (a1)
  {
    sub_2500E5D88(a1, a1[1]);

    operator delete(a1);
  }
}

uint64_t GCLOptionsGet(uint64_t a1, char *__s, _DWORD *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v8[0] = __s;
    v8[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1, v8);
    v7 = v6;
    if (a1 + 8 == v6 || *(v6 + 80))
    {
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      *a3 = *(v7 + 56);
    }
  }

  return result;
}

void sub_2500EAFF8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EAFD0);
}

unint64_t GCLOptionsSet(uint64_t **a1, char *a2, int a3)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(__p, a2);
    v10 = __p;
    v6 = sub_2500E5E34(a1, __p, &unk_25010FF31, &v10);
    v7 = v6;
    if (*(v6 + 20))
    {
      sub_2500E5D18(v6 + 56);
      *(v7 + 20) = 0;
    }

    *(v7 + 14) = a3;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2500EB0A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB08CLL);
}

uint64_t GCLOptionsGetString(uint64_t a1, char *__s, uint64_t *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v11[0] = __s;
    v11[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1, v11);
    v7 = v6;
    if (a1 + 8 == v6 || *(v6 + 80) != 1)
    {
      *a3 = 0;
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      v10 = *(v7 + 56);
      v8 = v7 + 56;
      v9 = v10;
      if (*(v8 + 23) < 0)
      {
        v8 = v9;
      }

      *a3 = v8;
    }
  }

  return result;
}

void sub_2500EB170(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB158);
}

uint64_t GCLOptionsSetString(uint64_t **a1, char *a2, char *__s)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(v10, __s);
    sub_2500E6F30(__p, a2);
    v12 = __p;
    v6 = sub_2500E5E34(a1, __p, &unk_25010FF31, &v12);
    v7 = v6;
    if (*(v6 + 20) == 1)
    {
      if (*(v6 + 79) < 0)
      {
        operator delete(v6[7]);
      }

      *(v7 + 7) = *v10;
      v7[9] = v11;
      HIBYTE(v11) = 0;
      LOBYTE(v10[0]) = 0;
    }

    else
    {
      sub_2500E5D18((v6 + 7));
      *(v7 + 7) = *v10;
      v7[9] = v11;
      v10[1] = 0;
      v11 = 0;
      v10[0] = 0;
      *(v7 + 20) = 1;
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }
    }

    return 0;
  }

  return result;
}

void sub_2500EB280(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB26CLL);
}

unint64_t GCLBufferListFromSource(uint64_t a1, char **a2)
{
  if (!a2)
  {
    return 0x8000000000000000;
  }

  *a2 = 0;
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v4 = operator new(0x18uLL);
  *v4 = v4;
  *(v4 + 1) = v4;
  *(v4 + 2) = 0;
  v5 = (*(**(a1 + 40) + 16))(*(a1 + 40), a1, v4);
  if (v5)
  {
    sub_2500EBD14(v4);
    operator delete(v4);
  }

  else
  {
    *a2 = v4;
  }

  return v5;
}

unint64_t GCLBufferListNew(void *a1)
{
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v2 = operator new(0x18uLL);
  result = 0;
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  *a1 = v2;
  return result;
}

void sub_2500EB3E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB3CCLL);
}

void GCLBufferListRelease(char *a1)
{
  if (a1)
  {
    sub_2500EBD14(a1);

    operator delete(a1);
  }
}

uint64_t GCLBufferListGetBuffer(uint64_t a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    v5 = *(a1 + 8);
    if (v5 == a1)
    {
      return 0;
    }

    v6 = strlen(__s);
    while (1)
    {
      v7 = (v5 + 72);
      v8 = *(v5 + 95);
      if (v8 < 0)
      {
        if (v6 != *(v5 + 80))
        {
          goto LABEL_12;
        }

        if (v6 == -1)
        {
          sub_2500EBE04();
        }

        v7 = *v7;
      }

      else if (v6 != v8)
      {
        goto LABEL_12;
      }

      if (!memcmp(v7, __s, v6))
      {
        return v5 + 16;
      }

LABEL_12:
      v5 = *(v5 + 8);
      if (v5 == a1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t GCLBufferListGetBufferById(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    while (1)
    {
      v2 = *(v2 + 8);
      if (v2 == result)
      {
        break;
      }

      if (*(v2 + 120) == a2)
      {
        return v2 + 16;
      }
    }

    return 0;
  }

  return result;
}

uint64_t GCLBufferListAppendNew(uint64_t *a1, char *__s, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = 0x8000000000000000;
  if (a1 && __s)
  {
    v18[0] = __s;
    v18[1] = strlen(__s);
    v17 = a3;
    v15 = a5;
    v16 = a4;
    v14 = a1[2];
    v12 = sub_2500E71FC(a1, 0, 0, &v14, v18, &v17, &v16, &v15);
    v13 = *a1;
    *v12 = *a1;
    v12[1] = a1;
    *(v13 + 8) = v12;
    *a1 = v12;
    ++a1[2];
    result = 0;
    if (a6)
    {
      *a6 = v12 + 2;
    }
  }

  return result;
}

void sub_2500EB5E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB5CCLL);
}

void sub_2500EB5F4(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2500EB6EC(a3, *(a1 + 16));
  for (i = *(a1 + 8); i != a1; i = *(i + 8))
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v7 = (i + 72);
    v8 = strlen(a2);
    v9 = *(i + 95);
    if (v9 < 0)
    {
      if (v8 != *(i + 80))
      {
        continue;
      }

      if (v8 == -1)
      {
        sub_2500EBE04();
      }

      v7 = *v7;
LABEL_10:
      if (memcmp(v7, a2, v8))
      {
        continue;
      }

LABEL_11:
      v10 = i + 16;
      sub_2500EB78C(a3, &v10);
      continue;
    }

    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }
}

void sub_2500EB6C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500EB6EC(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 3)
  {
    if (a2 >> 61)
    {
      sub_2500EBDB4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_2500EBDCC(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[8 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void sub_2500EB78C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2500EBDB4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_2500EBDCC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_2500EB860(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_2500EB6EC(a4, *(a1 + 16));
  for (i = *(a1 + 8); i != a1; i = *(i + 8))
  {
    if (a2)
    {
      v9 = (i + 72);
      v10 = strlen(a2);
      v11 = *(i + 95);
      if (v11 < 0)
      {
        if (v10 != *(i + 80))
        {
          continue;
        }

        if (v10 == -1)
        {
          sub_2500EBE04();
        }

        v9 = *v9;
      }

      else if (v10 != v11)
      {
        continue;
      }

      if (memcmp(v9, a2, v10))
      {
        continue;
      }
    }

    v16[0] = "tag";
    v16[1] = 3;
    v12 = sub_2500E9BDC(i + 96, v16);
    if (i + 104 == v12 || *(v12 + 80))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v13 = *(v12 + 56) & 0xFFFFFF00;
      v15 = *(v12 + 56);
      v14 = 1;
    }

    if (v14 == BYTE4(a3) && (a3 & 0x100000000) != 0)
    {
      if ((v15 | v13) != a3)
      {
        continue;
      }

LABEL_19:
      v16[0] = i + 16;
      sub_2500EB78C(a4, v16);
      continue;
    }

    if (v14 == BYTE4(a3))
    {
      goto LABEL_19;
    }
  }
}

void sub_2500EB9C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500EB9F0(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2500EB6EC(a3, *(a1 + 16));
  for (i = *(a1 + 8); i != a1; i = *(i + 8))
  {
    if (!a2)
    {
LABEL_10:
      v11[0] = "tag";
      v11[1] = 3;
      v10 = sub_2500E9BDC(i + 96, v11);
      if (i + 104 == v10 || *(v10 + 80))
      {
        v11[0] = i + 16;
        sub_2500EB78C(a3, v11);
      }

      continue;
    }

    v7 = (i + 72);
    v8 = strlen(a2);
    v9 = *(i + 95);
    if (v9 < 0)
    {
      if (v8 != *(i + 80))
      {
        continue;
      }

      if (v8 == -1)
      {
        sub_2500EBE04();
      }

      v7 = *v7;
    }

    else if (v8 != v9)
    {
      continue;
    }

    if (!memcmp(v7, a2, v8))
    {
      goto LABEL_10;
    }
  }
}

void sub_2500EBB00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500EBB28(uint64_t a1@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3[1];
  v16 = v8;
  v17[0] = strlen(v8);
  v9 = sub_2500E9BDC(a2 + 80, &v16);
  if (a2 + 88 != v9 && !*(v9 + 80))
  {
    v14 = a1;
    while (1)
    {
      v14 = *(v14 + 8);
      if (v14 == a1)
      {
        goto LABEL_15;
      }

      if (*(v14 + 120) == *(v9 + 56))
      {
        v16 = (v14 + 16);
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *a4 = 0;
        sub_2500EBEAC(a4, &v16, v17, 1uLL);
        goto LABEL_18;
      }
    }
  }

  v10 = strlen(a3[2]);
  v16 = a3[2];
  v17[0] = v10;
  v11 = sub_2500E9BDC(a2 + 80, &v16);
  if (a2 + 88 != v11 && !*(v11 + 80))
  {
    sub_2500EB860(a1, *a3, *(v11 + 56) | 0x100000000, a4);
    goto LABEL_18;
  }

  v12 = (a2 + 56);
  v13 = *(a2 + 79);
  if ((v13 & 0x80000000) == 0)
  {
    if (v13 != 4)
    {
      goto LABEL_15;
    }

LABEL_14:
    if (*v12 == 1937273974)
    {
      sub_2500EB9F0(a1, *a3, a4);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (*(a2 + 64) == 4)
  {
    v12 = *v12;
    goto LABEL_14;
  }

LABEL_15:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2500EBCB8(uint64_t a1, uint64_t a2, const char **a3)
{
  sub_2500EBB28(a1, a2, a3, &v6);
  if (v6 != v7)
  {
    v3 = *v6;
LABEL_4:
    v7 = v6;
    operator delete(v6);
    return v3;
  }

  v3 = 0;
  v4 = 0;
  if (v6)
  {
    goto LABEL_4;
  }

  return v4;
}

void sub_2500EBD14(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        sub_2500E5D88((v2 + 96), *(v2 + 13));
        if (v2[95] < 0)
        {
          operator delete(*(v2 + 9));
        }

        if (v2[64] == 1)
        {
          v6 = *(v2 + 2);
          if (v6)
          {
            operator delete[](v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *sub_2500EBDCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500E9AAC();
  }

  return operator new(8 * a2);
}

void sub_2500EBE1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2500EBE78(exception, a1);
  __cxa_throw(exception, &unk_286298560, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2500EBE78(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

char *sub_2500EBEAC(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_2500EBF20(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_2500EBF04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2500EBF20(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500EBDB4();
  }

  result = sub_2500EBDCC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

uint64_t GCLBufferElementType(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t GCLBufferSetElementType(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t GCLBufferNumRows(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t GCLBufferTupleWidth(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void *GCLBufferData(void *result)
{
  if (result)
  {
    return (*result + result[1]);
  }

  return result;
}

uint64_t GCLBufferBase(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void *GCLBufferSetBase(void *result, uint64_t a2)
{
  if (result)
  {
    *result = a2;
  }

  return result;
}

uint64_t GCLBufferOffset(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t GCLBufferSetOffset(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t GCLBufferStrideBytes(uint64_t result)
{
  if (result)
  {
    return *(result + 40) * *(result + 16);
  }

  return result;
}

uint64_t GCLBufferStrideElements(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t GCLBufferSetStrideElements(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

int *sub_2500EBFF8(int *result, int *a2, int *a3, int a4, int *a5, int *a6, int *a7, int *a8, _DWORD *a9)
{
  v10 = *a7;
  v11 = a7[1];
  v12 = *a5 - v10;
  v13 = a5[1] - v11;
  v14 = a7[2];
  v15 = a5[2] - v14;
  v16 = *a6 - v10;
  v17 = a6[1] - v11;
  v18 = a6[2] - v14;
  v19 = *a8 - v10;
  v20 = a8[1] - v11;
  v21 = a8[2] - v14;
  v22 = v12 * v12 + v13 * v13 + v15 * v15;
  v23 = v16 * v16 + v17 * v17 + v18 * v18;
  if (v22 >> 30)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 >> 30 == 0;
  }

  if (v24 && (v19 * v19 + v20 * v20 + v21 * v21) >> 30 == 0)
  {
    v32 = v16 * v12 + v17 * v13 + v18 * v15;
    v33 = v23 * v22 - v32 * v32;
    if (v33)
    {
      v34 = v19 * v12 + v20 * v13 + v21 * v15;
      v35 = v19 * v16 + v20 * v17 + v21 * v18;
      if (v33 >= 0x80)
      {
        v44 = __clz(v33);
        v45 = 57 - v44;
        v46 = 1 << (56 - v44);
        v33 = (v46 + v33) >> v45;
        v47 = v34 * v23 - v35 * v32;
        if (v47 < 0)
        {
          v36 = -((v46 - v47) >> v45);
        }

        else
        {
          v36 = (v46 + v47) >> v45;
        }

        if (v36 >= 0x3FFFFFFFFFFFLL)
        {
          v36 = 0x3FFFFFFFFFFFLL;
        }

        if (v36 <= 0xFFFFC00000000001)
        {
          v36 = 0xFFFFC00000000001;
        }

        v48 = v35 * v22 - v34 * v32;
        if (v48 < 0)
        {
          v37 = -((v46 - v48) >> v45);
        }

        else
        {
          v37 = (v46 + v48) >> v45;
        }
      }

      else
      {
        v36 = v34 * v23 - v35 * v32;
        if (v36 >= 0x3FFFFFFFFFFFLL)
        {
          v36 = 0x3FFFFFFFFFFFLL;
        }

        if (v36 <= 0xFFFFC00000000001)
        {
          v36 = 0xFFFFC00000000001;
        }

        v37 = v35 * v22 - v34 * v32;
      }

      if (v37 >= 0x3FFFFFFFFFFFLL)
      {
        v37 = 0x3FFFFFFFFFFFLL;
      }

      v49 = 0xFFFFC00000000001;
      if (v37 > 0xFFFFC00000000001)
      {
        v49 = v37;
      }

      v50 = word_2501104A2[v33 - 1];
      if (v36 * v50 >= 0x3FFFFFFF)
      {
        v51 = 0x3FFFFFFFLL;
      }

      else
      {
        v51 = v36 * v50;
      }

      if (v51 <= -1073741823)
      {
        v51 = -1073741823;
      }

      v52 = v49 * v50;
      if (v52 >= 0x3FFFFFFF)
      {
        v52 = 0x3FFFFFFFLL;
      }

      if (v52 <= -1073741823)
      {
        v52 = -1073741823;
      }

      if (a4 >= 1)
      {
        v53 = a4;
        do
        {
          v55 = *result++;
          v54 = v55;
          v56 = *a2++;
          v57 = v51 * v54 + v52 * v56;
          v58 = *a3++;
          v59 = v57 + (0x10000 - (v51 + v52)) * v58;
          if (v59 >= 0)
          {
            v60 = (v59 + 0x8000) >> 16;
          }

          else
          {
            v60 = -((0x8000 - v59) >> 16);
          }

          if (v60 >= 0x3FFFFFFF)
          {
            v60 = 0x3FFFFFFFLL;
          }

          if (v60 <= -1073741823)
          {
            LODWORD(v60) = -1073741823;
          }

          *a9++ = v60;
          --v53;
        }

        while (v53);
      }
    }

    else if (a4 >= 1)
    {
      v38 = a4;
      do
      {
        v40 = *result++;
        v39 = v40;
        v42 = *a2++;
        v41 = v42;
        v43 = *a3++;
        *a9++ = v41 + v39 - v43;
        --v38;
      }

      while (v38);
    }
  }

  else if (a4 >= 1)
  {
    v26 = a4;
    do
    {
      v28 = *result++;
      v27 = v28;
      v30 = *a2++;
      v29 = v30;
      v31 = *a3++;
      *a9++ = v29 + v27 - v31;
      --v26;
    }

    while (v26);
  }

  return result;
}

int *sub_2500EC288(int *result, int *a2, int *a3, _DWORD *a4, _DWORD *a5, int *a6, int *a7, _DWORD *a8)
{
  *a8 = 0;
  v8 = a5[1];
  v9 = a4[1];
  v10 = a5[2];
  v11 = a4[2];
  v12 = (v8 - v9) * (v8 - v9) + (*a5 - *a4) * (*a5 - *a4) + (v10 - v11) * (v10 - v11);
  v13 = *a6;
  v14 = a6[1];
  v15 = a6[2];
  v16 = (v14 - v9) * (v14 - v9) + (v13 - *a4) * (v13 - *a4) + (v15 - v11) * (v15 - v11);
  v17 = (v14 - v8) * (v14 - v8) + (v13 - *a5) * (v13 - *a5) + (v15 - v10) * (v15 - v10);
  if (v12 >> 28)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 >> 28 == 0;
  }

  if (!v18 || v17 >> 28 != 0 || v12 == 0)
  {
    *a7 = (*a2 + *result) / 2;
    LODWORD(v21) = (a2[1] + result[1]) / 2;
  }

  else
  {
    v22 = __clz(v12);
    v23 = 1 << (56 - v22);
    if (v12 >= 0x80)
    {
      v17 = (v23 + v17) >> (57 - v22);
      v16 = (v23 + v16) >> (57 - v22);
      v12 = (v23 + v12) >> (57 - v22);
    }

    v24 = word_2501104A2[v12 - 1];
    v25 = (v16 - v17) * v24;
    v26 = 1073676288;
    if (v25 < 1073676288)
    {
      v26 = v25;
    }

    v27 = v26 + 0x10000;
    v28 = v25 < -1073807360;
    v29 = -1073741824;
    if (!v28)
    {
      v29 = v27;
    }

    v30 = ((v16 * v24) << 18) - v29 * v29;
    v31 = 0xFFFFFFFFLL;
    if (v30 < 0xFFFFFFFFLL)
    {
      v31 = v30;
    }

    v32 = v31 & ~(v31 >> 63);
    v33 = *result;
    v34 = result[1];
    v35 = *a2 - v33;
    v36 = a2[1] - v34;
    v37 = a3[1] - v34;
    v38 = (32 - __clz(v32)) >> 1;
    v39 = ((v32 >> v38) + (1 << v38)) >> 1;
    if (v30 >= 2)
    {
      v40 = v39;
    }

    else
    {
      v40 = v32;
    }

    if ((*a3 - v33) * v36 < v37 * v35)
    {
      v40 = -v40;
      *a8 = 1;
      LODWORD(v33) = *result;
    }

    v41 = v33;
    v42 = v29 * v35 + v40 * v36;
    if (v42 >= 0)
    {
      v43 = (v42 + 0x10000) >> 17;
    }

    else
    {
      v43 = -((0x10000 - v42) >> 17);
    }

    v44 = v43 + v41;
    v45 = v29 * v36 - v40 * v35;
    if (v45 >= 0)
    {
      v46 = (v45 + 0x10000) >> 17;
    }

    else
    {
      v46 = -((0x10000 - v45) >> 17);
    }

    v47 = v46 + result[1];
    if (v44 >= 0x3FFFFFFF)
    {
      v44 = 0x3FFFFFFFLL;
    }

    if (v44 <= -1073741823)
    {
      LODWORD(v44) = -1073741823;
    }

    *a7 = v44;
    if (v47 >= 0x3FFFFFFF)
    {
      v21 = 0x3FFFFFFFLL;
    }

    else
    {
      v21 = v47;
    }

    if (v21 <= -1073741823)
    {
      LODWORD(v21) = -1073741823;
    }
  }

  a7[1] = v21;
  return result;
}

unint64_t sub_2500EC4C8(unint64_t result, int *a2, _DWORD *a3, _DWORD *a4, int *a5, int a6, int *a7)
{
  v7 = a4[1];
  v8 = a3[1];
  v9 = a4[2];
  v10 = a3[2];
  v11 = (v7 - v8) * (v7 - v8) + (*a4 - *a3) * (*a4 - *a3) + (v9 - v10) * (v9 - v10);
  v12 = *a5;
  v13 = a5[1];
  v14 = a5[2];
  v15 = (v13 - v8) * (v13 - v8) + (v12 - *a3) * (v12 - *a3) + (v14 - v10) * (v14 - v10);
  v16 = (v13 - v7) * (v13 - v7) + (v12 - *a4) * (v12 - *a4) + (v14 - v9) * (v14 - v9);
  if (v11 >> 28)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15 >> 28 == 0;
  }

  if (!v17 || v16 >> 28 != 0 || v11 == 0)
  {
    *a7 = (*a2 + *result) / 2;
    LODWORD(v20) = (a2[1] + *(result + 4)) / 2;
  }

  else
  {
    v21 = __clz(v11);
    v22 = 57 - v21;
    v23 = 1 << (56 - v21);
    v24 = (v23 + v11) >> v22;
    v25 = (v23 + v15) >> v22;
    v26 = (v23 + v16) >> v22;
    if (v11 >= 0x80)
    {
      v16 = v26;
      v15 = v25;
      v11 = v24;
    }

    v27 = word_2501104A2[v11 - 1];
    v28 = (v15 - v16) * v27;
    v29 = 1073676288;
    if (v28 < 1073676288)
    {
      v29 = v28;
    }

    v30 = v29 + 0x10000;
    v31 = v28 < -1073807360;
    v32 = -1073741824;
    if (!v31)
    {
      v32 = v30;
    }

    v33 = ((v15 * v27) << 18) - v32 * v32;
    v34 = 0xFFFFFFFFLL;
    if (v33 < 0xFFFFFFFFLL)
    {
      v34 = v33;
    }

    v35 = v34 & ~(v34 >> 63);
    v36 = *result;
    v37 = *(result + 4);
    v38 = *a2 - v36;
    v39 = a2[1] - v37;
    v40 = (32 - __clz(v35)) >> 1;
    result = v35 >> v40;
    if (v33 >= 2)
    {
      v41 = (result + (1 << v40)) >> 1;
    }

    else
    {
      v41 = v35;
    }

    v42 = v41 * *(&unk_2501105A8 + a6);
    v43 = v32 * v38 + v42 * v39;
    if (v43 >= 0)
    {
      v44 = (v43 + 0x10000) >> 17;
    }

    else
    {
      v44 = -((0x10000 - v43) >> 17);
    }

    v45 = v44 + v36;
    v46 = v32 * v39 - v42 * v38;
    if (v46 >= 0)
    {
      v47 = (v46 + 0x10000) >> 17;
    }

    else
    {
      v47 = -((0x10000 - v46) >> 17);
    }

    v20 = v47 + v37;
    if (v45 >= 0x3FFFFFFF)
    {
      v45 = 0x3FFFFFFFLL;
    }

    if (v45 <= -1073741823)
    {
      LODWORD(v45) = -1073741823;
    }

    *a7 = v45;
    if (v20 >= 0x3FFFFFFF)
    {
      v20 = 0x3FFFFFFFLL;
    }

    if (v20 <= -1073741823)
    {
      LODWORD(v20) = -1073741823;
    }
  }

  a7[1] = v20;
  return result;
}

int *sub_2500EC6E4(int *result, int *a2, int *a3, _DWORD *a4, _DWORD *a5, int *a6, int *a7)
{
  v7 = a5[1];
  v8 = a4[1];
  v9 = a5[2];
  v10 = a4[2];
  v11 = (v7 - v8) * (v7 - v8) + (*a5 - *a4) * (*a5 - *a4) + (v9 - v10) * (v9 - v10);
  v12 = *a6;
  v13 = a6[1];
  v14 = a6[2];
  v15 = (v13 - v8) * (v13 - v8) + (v12 - *a4) * (v12 - *a4) + (v14 - v10) * (v14 - v10);
  v16 = (v13 - v7) * (v13 - v7) + (v12 - *a5) * (v12 - *a5) + (v14 - v9) * (v14 - v9);
  if (v11 >> 28)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15 >> 28 == 0;
  }

  if (!v17 || v16 >> 28 != 0 || v11 == 0)
  {
    *a7 = (*a2 + *result) / 2;
    LODWORD(v20) = (a2[1] + result[1]) / 2;
  }

  else
  {
    v21 = __clz(v11);
    v22 = 57 - v21;
    v23 = 1 << (56 - v21);
    v24 = (v23 + v11) >> v22;
    v25 = (v23 + v15) >> v22;
    v26 = (v23 + v16) >> v22;
    if (v11 >= 0x80)
    {
      v16 = v26;
      v15 = v25;
      v11 = v24;
    }

    v27 = word_2501104A2[v11 - 1];
    v28 = (v15 - v16) * v27;
    v29 = 1073676288;
    if (v28 < 1073676288)
    {
      v29 = v28;
    }

    v30 = v29 + 0x10000;
    v31 = v28 < -1073807360;
    v32 = -1073741824;
    if (!v31)
    {
      v32 = v30;
    }

    v33 = ((v15 * v27) << 18) - v32 * v32;
    v34 = 0xFFFFFFFFLL;
    if (v33 < 0xFFFFFFFFLL)
    {
      v34 = v33;
    }

    v35 = v34 & ~(v34 >> 63);
    v36 = *result;
    v37 = result[1];
    v38 = *a2 - v36;
    v39 = a2[1] - v37;
    result = ((32 - __clz(v35)) >> 1);
    if (v33 >= 2)
    {
      v40 = ((v35 >> result) + (1 << result)) >> 1;
    }

    else
    {
      v40 = v35;
    }

    if ((v37 - a3[1]) * v38 < (v36 - *a3) * v39)
    {
      v40 = -v40;
    }

    v41 = v32 * v38 - v40 * v39;
    if (v41 >= 0)
    {
      v42 = (v41 + 0x10000) >> 17;
    }

    else
    {
      v42 = -((0x10000 - v41) >> 17);
    }

    v43 = v42 + v36;
    v44 = v32 * v39 + v40 * v38;
    if (v44 >= 0)
    {
      v45 = (v44 + 0x10000) >> 17;
    }

    else
    {
      v45 = -((0x10000 - v44) >> 17);
    }

    v20 = v45 + v37;
    if (v43 >= 0x3FFFFFFF)
    {
      v43 = 0x3FFFFFFFLL;
    }

    if (v43 <= -1073741823)
    {
      LODWORD(v43) = -1073741823;
    }

    *a7 = v43;
    if (v20 >= 0x3FFFFFFF)
    {
      v20 = 0x3FFFFFFFLL;
    }

    if (v20 <= -1073741823)
    {
      LODWORD(v20) = -1073741823;
    }
  }

  a7[1] = v20;
  return result;
}

void *sub_2500EC90C(void *a1, uint64_t a2, char *__s, char **a4)
{
  __dst = __s;
  v22 = strlen(__s);
  v8 = sub_2500E9BDC(a2 + 80, &__dst);
  if (a2 + 88 != v8 && !*(v8 + 80))
  {
    v20 = a1;
    while (1)
    {
      v20 = v20[1];
      if (v20 == a1)
      {
        break;
      }

      if (v20[15] == *(v8 + 56))
      {
        v18 = v20 + 2;
        if (!v20[2] || *(v20 + 8) != 260 || v20[6] != 1 || v20[5] != a4)
        {
          break;
        }

        return v18;
      }
    }
  }

  __dst = "rord";
  v22 = 4;
  v26 = 260;
  v27 = a4;
  v25 = 1;
  v24 = a1[2];
  v9 = sub_2500E71FC(a1, 0, 0, &v24, &__dst, &v26, &v27, &v25);
  v9[1] = a1;
  v10 = *a1;
  *v9 = *a1;
  *(v10 + 8) = v9;
  *a1 = v9;
  ++a1[2];
  v11 = *(v9 + 30);
  v12 = strlen(__s);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    p_dst = operator new(v15);
    v22 = v13;
    v23 = v15 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v23) = v12;
    p_dst = &__dst;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v13);
LABEL_12:
  *(p_dst + v13) = 0;
  v27 = &__dst;
  v16 = sub_2500E5E34((a2 + 80), &__dst, &unk_25010FF31, &v27);
  v17 = v16;
  if (*(v16 + 20))
  {
    sub_2500E5D18(v16 + 56);
    *(v17 + 20) = 0;
  }

  v18 = v9 + 2;
  *(v17 + 14) = v11;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst);
  }

  return v18;
}

void sub_2500ECB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500ECB34(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v18 = 0;
    v19 = 0;
    result = 0;
    v8 = 0;
    v10 = 1;
  }

  else
  {
    sub_2500EE2DC(a1, v5 >> 3);
    v7 = a1[1];
    bzero(v7, v3 - v4);
    v8 = &v7[v5];
    a1[1] = &v7[v5];
    result = *a1;
    v10 = *a1 == &v7[v5];
    if (*a1 == &v7[v5])
    {
      v10 = 1;
    }

    else
    {
      v11 = 0;
      v12 = &v7[v3 - result - v4 - 8] >> 3;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v15 = xmmword_2501105B0;
      v16 = vdupq_n_s64(2uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v13, v15));
        if (v17.i8[0])
        {
          *(result + 8 * v11) = v11;
        }

        if (v17.i8[4])
        {
          *(result + 8 * v11 + 8) = v11 + 1;
        }

        v11 += 2;
        v15 = vaddq_s64(v15, v16);
      }

      while (v14 != v11);
    }

    v18 = &v7[v5];
    v19 = result;
  }

  if (a2[1] != *a2 && *(*a2 + 4) == 1)
  {
    v22 = a2;
    v20 = 126 - 2 * __clz(&v18[-v19] >> 3);
    if (v10)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    return sub_2500EE354(result, v8, &v22, v21, 1);
  }

  return result;
}

void sub_2500ECC8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500ECCA8(void **a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 == *a2)
  {
    v7 = 0;
  }

  else
  {
    if ((v5 >> 3) >> 61)
    {
      sub_2500E9A94();
    }

    v7 = sub_2500EE31C(v5 >> 3);
    *a1 = v7;
    a1[1] = v7;
    a1[2] = &v7[v8];
    v3 = *a2;
    v4 = a2[1];
  }

  for (; v3 != v4; ++v3)
  {
    v9 = *v3;
    v25[0] = "meshid";
    v25[1] = 6;
    v10 = sub_2500E9BDC(v9 + 80, v25);
    if (v9 + 88 == v10 || *(v10 + 80))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v11 = *(v10 + 56) & 0xFFFFFF00;
      v13 = *(v10 + 56);
      v12 = 0x100000000;
    }

    v14 = v12 | v13 | v11;
    v15 = a1[2];
    if (v7 >= v15)
    {
      v16 = *a1;
      v17 = v7 - *a1;
      v18 = (v17 >> 3) + 1;
      if (v18 >> 61)
      {
        sub_2500E9A94();
      }

      v19 = v15 - v16;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        v22 = sub_2500EE31C(v20);
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      v23 = &v22[8 * (v17 >> 3)];
      v24 = &v22[8 * v21];
      *v23 = v14;
      v7 = v23 + 1;
      memcpy(v22, v16, v17);
      *a1 = v22;
      a1[2] = v24;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7++ = v14;
    }

    a1[1] = v7;
  }
}

void sub_2500ECE4C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500ECE74(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2500ECEB8(void *a1, uint64_t **a2, uint64_t *a3)
{
  sub_2500ECCA8(__p, a2);
  v6 = __p[1];
  v7 = __p[0];
  if (__p[0] != __p[1])
  {
    v8 = 0;
    v9 = __p[0];
    do
    {
      v8 += v9[4];
      v9 += 8;
    }

    while (v9 != __p[1]);
    if (!v8)
    {
      do
      {
        if ((v7[4] & 1) == 0)
        {
          v7[4] = 1;
        }

        *v7 = v8;
        v7 += 8;
        LODWORD(v8) = v8 + 1;
      }

      while (v7 != v6);
    }
  }

  sub_2500ECB34(&v25, __p);
  v11 = *a3;
  v10 = a3[1];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v12 = v10 - v11;
  if (v10 != v11)
  {
    sub_2500EBF20(a1, v12 >> 2);
    v13 = a1[1];
    bzero(v13, 2 * v12);
    a1[1] = &v13[2 * v12];
  }

  v14 = v25;
  if (v26 == v25)
  {
    if (!v25)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = (v26 - v25) >> 3;
    do
    {
      if (v15 == (a1[1] - *a1) >> 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25305EAE0](exception, "unexpected submeshed topology buffer id");
        __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
      }

      v18 = v14[v16];
      v19 = __p[0] + 8 * v18;
      v20 = v19[4];
      v21 = *v19;
      if (v20 == 1 && *(*a3 + 4 * v16) == v21)
      {
        v23 = (*a2)[v18];
        ++v16;
      }

      else
      {
        v23 = 0;
      }

      *(*a1 + 8 * v15++) = v23;
    }

    while (v16 < v17);
  }

  operator delete(v14);
LABEL_23:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2500ED064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

double sub_2500ED0B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](exception, "idx buffer missing");
    goto LABEL_212;
  }

  v8 = *(a3 + 8);
  v9 = v6 - *a2;
  if (v8 != *a3 && v9 < v8 - *a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](exception, "topology and submeshed index buffer mismatch");
    goto LABEL_212;
  }

  if (a4 && v9 >= 9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](exception, "facegroup and submeshed buffers conflict");
LABEL_212:
    __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
  }

  sub_2500ECCA8(&v141, a2);
  v13 = *(&v141 + 1);
  v14 = v141;
  if (*(&v141 + 1) != v141)
  {
    v15 = 0;
    v16 = v141;
    do
    {
      v15 += *(v16 + 4);
      v16 += 8;
    }

    while (v16 != *(&v141 + 1));
    if (v15)
    {
      if (v15 != (*(&v141 + 1) - v141) >> 3)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25305EAE0](v17, "submeshed index buffer ids incomplete");
        __cxa_throw(v17, &unk_286298448, MEMORY[0x277D82600]);
      }
    }

    else
    {
      do
      {
        if ((*(v14 + 4) & 1) == 0)
        {
          *(v14 + 4) = 1;
        }

        *v14 = v15;
        v14 += 8;
        LODWORD(v15) = v15 + 1;
      }

      while (v14 != v13);
    }
  }

  sub_2500ECB34(&v139, &v141);
  memset(v138, 0, sizeof(v138));
  v18 = *(a2 + 8);
  v19 = v18 - *a2;
  if (v18 != *a2)
  {
    if ((v19 >> 3) >> 62)
    {
      sub_2500E9A94();
    }

    v20 = sub_2500EF8F4(v19 >> 3);
    v22 = &v20[4 * v21];
    bzero(v20, v19 >> 1);
    *&v138[0] = v20;
    *(&v138[0] + 1) = &v20[v19 >> 1];
    *&v138[1] = v22;
    v23 = *(a2 + 8);
    v24 = v23 - *a2;
    if (v23 != *a2)
    {
      if ((v24 >> 3) >> 61)
      {
        sub_2500EBDB4();
      }

      v25 = sub_2500EBDCC(&v138[1] + 8, v24 >> 3);
      v27 = &v25[8 * v26];
      bzero(v25, v24);
      v28 = &v25[v24];
      v29 = &v25[-(*&v138[2] - *(&v138[1] + 1))];
      memcpy(v29, *(&v138[1] + 1), *&v138[2] - *(&v138[1] + 1));
      v30 = *(&v138[1] + 1);
      *(&v138[1] + 1) = v29;
      *&v138[2] = v28;
      *(&v138[2] + 1) = v27;
      if (v30)
      {
        operator delete(v30);
      }
    }
  }

  v31 = v139;
  v32 = v140;
  if (v139 != v140)
  {
    v33 = *&v138[0];
    v34 = v141;
    v35 = v139;
    do
    {
      v36 = v34 + 8 * *v35;
      if ((*(v36 + 4) & 1) == 0)
      {
        sub_2500EF8A8();
      }

      *v33++ = *v36;
      v35 += 8;
    }

    while (v35 != v32);
    v37 = *(&v138[1] + 1);
    v38 = v31;
    do
    {
      v39 = *v38;
      v38 += 8;
      *v37++ = *(*a2 + 8 * v39);
    }

    while (v38 != v32);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (v141)
  {
    *(&v141 + 1) = v141;
    operator delete(v141);
  }

  sub_2500ECEB8(&v141, a3, v138);
  v132 = a1;
  v133 = a5;
  if (*(&v138[0] + 1) == *&v138[0])
  {
LABEL_213:
    v131 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](v131, "no faces?");
    __cxa_throw(v131, &unk_286298448, MEMORY[0x277D82600]);
  }

  v134 = 0;
  __src = 0;
  v137 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  do
  {
    v45 = *(v141 + 8 * v42);
    if (!v45 || !*v45)
    {
      v45 = &qword_250110420;
    }

    v46 = *(*(&v138[1] + 1) + 8 * v42);
    v47 = *(v46 + 32);
    if (v47 == 3)
    {
      v49 = 1;
      v48 = 1;
    }

    else if (v47 == 4)
    {
      v48 = 1;
      v49 = 2;
    }

    else
    {
      v49 = 0;
      v48 = 0;
    }

    v50 = *v45;
    v136 = v41;
    if (*v45 && (v51 = v45[3]) != 0)
    {
      v52 = v45[2] & 0x7FFFFEFF;
      if (v52 == 4)
      {
        v61 = (v50 + 4 * v45[1]);
        if (v51 == 1)
        {
          v62 = (v50 + 4 * v45[1]);
          v63 = v62;
        }

        else
        {
          v63 = v61 + 1;
          v64 = v61[1];
          v65 = *v61;
          if (v64 >= *v61)
          {
            v62 = v61;
          }

          else
          {
            v62 = v61 + 1;
          }

          if (v64 < v65)
          {
            v63 = v61;
          }

          if (v51 != 2)
          {
            v66 = 0;
            v67 = 4 * v51;
            if (v64 <= v65)
            {
              v68 = *v61;
            }

            else
            {
              v68 = v61[1];
            }

            if (v64 < v65)
            {
              v65 = v61[1];
            }

            v69 = v67 - 8;
            v70 = v67 - 12;
            while (1)
            {
              v71 = &v61[v66 / 4];
              if (v70 == v66)
              {
                break;
              }

              v72 = v71 + 2;
              v75 = v71[3];
              v74 = v71 + 3;
              v73 = v75;
              v76 = *v72;
              if (v75 >= *v72)
              {
                if (v76 < v65)
                {
                  v65 = *v72;
                  v62 = v72;
                }

                v77 = v73 >= v68;
                if (v73 > v68)
                {
                  v68 = v73;
                }

                if (v77)
                {
                  v63 = v74;
                }
              }

              else
              {
                v65 = *v62;
                if (v73 < *v62)
                {
                  v65 = v73;
                  v62 = v74;
                }

                v68 = *v63;
                if (v76 > *v63)
                {
                  v68 = *v72;
                }

                if (v76 >= *v63)
                {
                  v63 = v72;
                }
              }

              v66 += 8;
              if (v69 == v66)
              {
                goto LABEL_118;
              }
            }

            v95 = v71[2];
            v94 = v71 + 2;
            v93 = v95;
            if (v95 >= *v62)
            {
              if (v93 >= *v63)
              {
                v63 = v94;
              }
            }

            else
            {
              v62 = v94;
            }
          }
        }

LABEL_118:
        v56 = v40;
        v99 = *v62;
        v100 = *v63;
      }

      else
      {
        if (v52 != 2)
        {
          v129 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x25305EAE0](v129, "unsupported index type");
          goto LABEL_208;
        }

        v53 = (v50 + 2 * v45[1]);
        if (v51 == 1)
        {
          v54 = (v50 + 2 * v45[1]);
          v55 = v54;
        }

        else
        {
          v55 = v53 + 1;
          v78 = v53[1];
          v79 = *v53;
          if (v78 >= v79)
          {
            v54 = v53;
          }

          else
          {
            v54 = v53 + 1;
          }

          if (v78 < v79)
          {
            v55 = v53;
          }

          if (v51 != 2)
          {
            v80 = 0;
            v81 = 2 * v51;
            if (v78 <= v79)
            {
              LOWORD(v82) = *v53;
            }

            else
            {
              LOWORD(v82) = v53[1];
            }

            if (v78 < v79)
            {
              LOWORD(v79) = v53[1];
            }

            v83 = v81 - 4;
            v84 = v81 - 6;
            while (1)
            {
              v85 = &v53[v80 / 2];
              if (v84 == v80)
              {
                break;
              }

              v86 = v85 + 2;
              v89 = v85[3];
              v88 = v85 + 3;
              v87 = v89;
              v90 = *v86;
              if (v89 >= v90)
              {
                if (v90 < v79)
                {
                  LOWORD(v79) = *v86;
                  v54 = v86;
                }

                v92 = v87 >= v82;
                if (v87 > v82)
                {
                  LOWORD(v82) = v87;
                }

                if (v92)
                {
                  v55 = v88;
                }
              }

              else
              {
                v79 = *v54;
                if (v87 < v79)
                {
                  LOWORD(v79) = v87;
                  v54 = v88;
                }

                v82 = *v55;
                v91 = v90 >= v82;
                if (v90 > v82)
                {
                  LOWORD(v82) = *v86;
                }

                if (v91)
                {
                  v55 = v86;
                }
              }

              v80 += 4;
              if (v83 == v80)
              {
                goto LABEL_121;
              }
            }

            v98 = v85[2];
            v97 = v85 + 2;
            v96 = v98;
            if (v98 >= *v54)
            {
              if (v96 >= *v55)
              {
                v55 = v97;
              }
            }

            else
            {
              v54 = v97;
            }
          }
        }

LABEL_121:
        v56 = v40;
        v99 = *v54;
        v100 = *v55;
      }

      v57 = v43;
      v58 = v44;
      if (v100 == v99 && v99 == 3)
      {
        v59 = 1;
      }

      else
      {
        if (v100 == v99 && v99 == 4)
        {
          v60 = 1;
          v59 = 2;
          goto LABEL_139;
        }

        if (v99 == 3 && v100 == 4)
        {
          v59 = 3;
        }

        else
        {
          v59 = 4;
        }
      }

      v60 = 1;
    }

    else
    {
      v56 = v40;
      v57 = v43;
      v58 = v44;
      v59 = 0;
      v60 = 0;
    }

LABEL_139:
    v139 = "faceType";
    v140 = 8;
    v104 = sub_2500E9BDC(v46 + 80, &v139);
    if (v46 + 88 == v104 || *(v104 + 80))
    {
      v105 = 0;
      v106 = 0;
      if (!v48)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v105 = *(v104 + 56) + 1;
      v106 = 1;
      if (!v48)
      {
LABEL_149:
        LOBYTE(v49) = v105 | v59;
        v44 = v58;
        v107 = v57;
        if (!(v105 | v59))
        {
          v129 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x25305EAE0](v129, "cannot determine mesh face type");
          goto LABEL_208;
        }

        goto LABEL_150;
      }
    }

    if (v60 && v49 != v59)
    {
LABEL_206:
      v129 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25305EAE0](v129, "mesh face type disagreement");
      goto LABEL_208;
    }

    v44 = v58;
    if (v106)
    {
      v107 = v57;
      if (v49 != v105)
      {
        goto LABEL_206;
      }
    }

    else
    {
      v107 = v57;
    }

LABEL_150:
    v108 = *(v46 + 32);
    v40 = v56;
    if (v108 > 1)
    {
      if (!v45[3])
      {
        v109 = *(v46 + 24);
        goto LABEL_168;
      }

      v129 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25305EAE0](v129, "index buffer width > 1 when topology buffer present");
LABEL_208:
      __cxa_throw(v129, &unk_286298448, MEMORY[0x277D82600]);
    }

    if (v108)
    {
      if (v49 == 2)
      {
        v112 = *(v46 + 24);
        v110 = v112 >> 2;
        v111 = v112 >> 10;
        goto LABEL_159;
      }

      if (v49 == 1)
      {
        v110 = *(v46 + 24) / 3uLL;
        v111 = *(v46 + 24) / 0x300uLL;
LABEL_159:
        LODWORD(v108) = 1;
        goto LABEL_162;
      }

      LOBYTE(v110) = 0;
      LODWORD(v108) = 0;
    }

    else
    {
      LOBYTE(v110) = 0;
    }

    v111 = 0;
LABEL_162:
    v109 = v110 | (v111 << 8);
    v113 = v45[3];
    if (v113)
    {
      if (v109 == v113)
      {
        LODWORD(v108) = 0;
      }

      v109 = v45[3];
      if (v108 == 1)
      {
        v129 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25305EAE0](v129, "index and topology buffers conflict");
        goto LABEL_208;
      }
    }

    else if ((v108 & 1) == 0)
    {
      sub_2500EF8A8();
    }

LABEL_168:
    if (v107 >= v44)
    {
      v114 = v107 - __src;
      v115 = v107 - __src + 1;
      if (v115 < 0)
      {
        sub_2500E9A94();
      }

      v116 = v44 - __src;
      if (2 * (v44 - __src) > v115)
      {
        v115 = 2 * v116;
      }

      if (v116 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v117 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v117 = v115;
      }

      if (v117)
      {
        v118 = operator new(v117);
      }

      else
      {
        v118 = 0;
      }

      v44 = &v118[v117];
      v118[v114] = v49;
      v43 = &v118[v114 + 1];
      memcpy(v118, __src, v114);
      if (__src)
      {
        operator delete(__src);
      }

      __src = v118;
    }

    else
    {
      *v107 = v49;
      v43 = (v107 + 1);
    }

    if (v137 >= v40)
    {
      v119 = v137 - v134;
      v120 = (v137 - v134) >> 3;
      v121 = v120 + 1;
      if ((v120 + 1) >> 61)
      {
        sub_2500E9A94();
      }

      if ((v40 - v134) >> 2 > v121)
      {
        v121 = (v40 - v134) >> 2;
      }

      if ((v40 - v134) >= 0x7FFFFFFFFFFFFFF8)
      {
        v122 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v122 = v121;
      }

      if (v122)
      {
        v124 = sub_2500EE31C(v122);
      }

      else
      {
        v124 = 0;
        v123 = 0;
      }

      v125 = &v124[8 * v120];
      v40 = &v124[8 * v123];
      *v125 = v109;
      v137 = (v125 + 1);
      memcpy(v124, v134, v119);
      if (v134)
      {
        operator delete(v134);
      }

      v134 = v124;
    }

    else
    {
      *v137 = v109;
      v137 += 8;
    }

    v41 = v109 + v136;
    ++v42;
    v126 = v138[0];
  }

  while (v42 < (*(&v138[0] + 1) - *&v138[0]) >> 2);
  if (!v41)
  {
    goto LABEL_213;
  }

  v127 = *v132;
  if (*v132)
  {
    *(v132 + 8) = v127;
    operator delete(v127);
    *v132 = 0;
    *(v132 + 8) = 0;
    *(v132 + 16) = 0;
    v126 = v138[0];
  }

  *v132 = v126;
  *(v132 + 16) = *&v138[1];
  *v133 = v41;
  *(v133 + 8) = v134;
  *(v133 + 16) = v137;
  *(v133 + 24) = v40;
  *(v133 + 32) = __src;
  *(v133 + 40) = v43;
  *(v133 + 48) = v44;
  *(v133 + 56) = *(&v138[1] + 8);
  *(v133 + 72) = *(&v138[2] + 1);
  result = *&v141;
  *(v133 + 80) = v141;
  *(v133 + 96) = v142;
  return result;
}

void sub_2500EDAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2500EDBA0@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v20 = *a2;
  v21 = *(a2 + 7);
  *v22 = a2[9];
  a2[7] = 0;
  a2[8] = 0;
  *&v22[8] = *(a2 + 5);
  v6 = a2[12];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  a2[12] = 0;
  *&v22[24] = v6;
  v23 = 0uLL;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (v8 - *a1) >> 2;
  v24 = 0;
  sub_2500EF92C(&v23, v7, v8, v9);
  v10 = *(a2 + 1);
  v12 = a2[3];
  v11 = a2[4];
  a2[3] = 0;
  a2[4] = 0;
  a2[1] = 0;
  a2[2] = 0;
  *&v13 = v12;
  *(&v13 + 1) = v11;
  v19 = v10;
  v27 = *(a2 + 5);
  v18 = v27;
  v25 = v10;
  v26 = v13;
  a2[5] = 0;
  a2[6] = 0;
  LOBYTE(v4) = *(v4 + 24);
  v28 = v4;
  *(a3 + 24) = 0;
  v14 = operator new(0x90uLL);
  *v14 = &unk_2862985A0;
  *(v14 + 1) = v20;
  *(v14 + 1) = v21;
  *(v14 + 2) = *v22;
  v15 = v23;
  *(v14 + 3) = *&v22[16];
  *(v14 + 4) = v15;
  *(v14 + 10) = v24;
  *&v16 = v12;
  *(&v16 + 1) = v11;
  *(v14 + 88) = v19;
  *(v14 + 104) = v16;
  result = v18;
  *(v14 + 120) = v18;
  v14[136] = v4;
  *(v14 + 137) = 0;
  *(v14 + 35) = 0;
  *(a3 + 24) = v14;
  return result;
}

void *sub_2500EDD0C(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

__n128 sub_2500EDD80@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  if (*a2 == v4)
  {
    v5 = 0;
    v9 = 0u;
  }

  else
  {
    if ((v4 - *a2) >> 3 != (a1[1] - *a1) >> 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25305EAE0](exception, "mismatched submeshed attribute index buffers");
      __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
    }

    sub_2500ECEB8(&v10, a2, a1);
    v9 = v10;
    v5 = v11;
  }

  v10 = 0uLL;
  v11 = 0;
  *(a3 + 24) = 0;
  v6 = operator new(0x20uLL);
  *v6 = &unk_2862985E8;
  result = v9;
  *(v6 + 8) = v9;
  *(v6 + 3) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t GCLEncodeMeshFromBufferList(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_2500F08A4("GCLEncodeMeshFromBufferList");
  if (v6)
  {
    return v6(a1, a2, a3);
  }

  sub_2500E6250(&log);
  v23[0] = log;
  v8 = os_signpost_id_generate(log);
  v23[1] = v8;
  if (&v8[-1].isa + 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    v10 = v23[0];
    if (os_signpost_enabled(v23[0]))
    {
      LOWORD(v20[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_2500E5000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "GCLEncodeMeshFromBufferList", byte_2501106A1, v20, 2u);
    }
  }

  v7 = 0x8000000000000000;
  if (a1 && a2 && *a2)
  {
    if ((atomic_load_explicit(&qword_27F3C0EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F3C0EE0))
    {
      qword_27F3C0EF8 = 0;
      qword_27F3C0EF0 = 0;
      qword_27F3C0EE8 = &qword_27F3C0EF0;
      __cxa_atexit(sub_2500EE204, &qword_27F3C0EE8, &dword_2500E5000);
      __cxa_guard_release(&qword_27F3C0EE0);
    }

    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = &qword_27F3C0EE8;
    }

    log = "codec";
    v22 = 5;
    v12 = sub_2500E9BDC(v11, &log);
    if (v11 + 1 == v12 || *(v12 + 80) != 1 || ((v15 = *(v12 + 56), v13 = v12 + 56, v14 = v15, v16 = *(v13 + 8), *(v13 + 23) >= 0) ? (v17 = *(v13 + 23)) : (v13 = v14, v17 = v16), sub_2500EE230(v13, v17, "pmesh", 5)))
    {
      v7 = 0x8000000000000000;
    }

    else
    {
      v19 = operator new(0x28uLL);
      *v19 = &unk_286298510;
      v19[1] = 0;
      v19[2] = (v19 + 2);
      v19[3] = (v19 + 2);
      v19[4] = 0;
      if (off_286298520(v19, a1, v11))
      {
        v7 = 0x8000000000000000;
      }

      else
      {
        sub_2500EF9C4(&log, v19[1]);
        v20[0] = log;
        v20[1] = v22 - log;
        if ((*(*v19 + 24))(v19, v20))
        {
          v7 = 0x8000000000000000;
        }

        else
        {
          (*a2)(*(a2 + 8));
          v7 = 0;
        }

        if (log)
        {
          v22 = log;
          operator delete(log);
        }
      }

      (*(*v19 + 8))(v19);
    }
  }

  sub_2500F0524(v23);
  return v7;
}

void sub_2500EE184(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v15 + 8))(v15);
  sub_2500F0524(&a15);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EE00CLL);
}

uint64_t sub_2500EE230(char *__s, int64_t a2, char *a3, int64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = __s;
  v6 = &__s[a2];
  if (a4 <= a2)
  {
    v10 = *a3;
    do
    {
      if (a2 - a4 == -1)
      {
        break;
      }

      v11 = memchr(__s, v10, a2 - a4 + 1);
      if (!v11)
      {
        break;
      }

      v7 = v11;
      if (!memcmp(v11, a3, a4))
      {
        goto LABEL_4;
      }

      __s = v7 + 1;
      a2 = v6 - (v7 + 1);
    }

    while (a2 >= a4);
  }

  v7 = v6;
LABEL_4:
  if (v7 == v6)
  {
    return -1;
  }

  else
  {
    return v7 - v5;
  }
}

char *sub_2500EE2DC(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500E9A94();
  }

  result = sub_2500EE31C(a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *sub_2500EE31C(unint64_t a1)
{
  if (a1 >> 61)
  {
    sub_2500E9AAC();
  }

  return operator new(8 * a1);
}

uint64_t sub_2500EE354(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v239 = a2 - 1;
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v122 = **a3;

          return sub_2500EF0B8(v10, v10 + 1, v239, v122);
        case 4:

          return sub_2500EF298(v10, v10 + 1, v10 + 2, v239, a3);
        case 5:

          return sub_2500EF430(v10, v10 + 1, v10 + 2, v10 + 3, v239, a3);
      }

      goto LABEL_10;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 == a2)
        {
          return result;
        }

        v123 = v10 + 1;
        if (v10 + 1 == a2)
        {
          return result;
        }

        v124 = **a3;
        v125 = 8;
        v126 = v10;
        while (1)
        {
          v128 = *v126;
          v127 = v126[1];
          v126 = v123;
          v129 = v124 + 8 * v127;
          v130 = v124 + 8 * v128;
          v131 = *(v129 + 4);
          v132 = *(v130 + 4);
          if (v131 == 1 && (v132 & 1) != 0)
          {
            v133 = *v130;
            if (*v129 >= v133)
            {
              v134 = 1;
            }

            else
            {
              v134 = -1;
            }

            if (*v129 == v133)
            {
              v134 = 0;
            }

            if (v134 < 0)
            {
LABEL_266:
              v137 = v131 ^ 1;
              v138 = v125;
              while (1)
              {
                *(v10 + v138) = v128;
                v139 = v138 - 8;
                if (v138 == 8)
                {
                  break;
                }

                v128 = *(v10 + v138 - 16);
                v140 = v124 + 8 * v128;
                v141 = *(v140 + 4);
                if (v131 && (v141 & 1) != 0)
                {
                  v142 = *v140;
                  v143 = *v129 == v142;
                  if (*v129 >= v142)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = 255;
                  }

                  if (v143)
                  {
                    result = 0;
                  }
                }

                else
                {
                  v144 = v137 & v141;
                  if ((v137 & v141) != 0)
                  {
                    v145 = 255;
                  }

                  else
                  {
                    v145 = 1;
                  }

                  if (v144 != v131)
                  {
                    result = v145;
                  }

                  else
                  {
                    result = 0;
                  }
                }

                v138 = v139;
                if ((result & 0x80) == 0)
                {
                  v146 = (v10 + v139);
                  goto LABEL_285;
                }
              }

              v146 = v10;
LABEL_285:
              *v146 = v127;
            }
          }

          else
          {
            if (((v131 ^ 1) & v132) != 0)
            {
              v135 = -1;
            }

            else
            {
              v135 = 1;
            }

            if ((v132 | v131))
            {
              v136 = v135;
            }

            else
            {
              v136 = 0;
            }

            if (v136 < 0)
            {
              goto LABEL_266;
            }
          }

          v123 = v126 + 1;
          v125 += 8;
          if (v126 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v10 == a2)
      {
        return result;
      }

      v218 = v10 + 1;
      if (v10 + 1 == a2)
      {
        return result;
      }

      v219 = **a3;
      while (1)
      {
        v221 = *v9;
        v220 = v9[1];
        v9 = v218;
        v222 = v219 + 8 * v220;
        v223 = v219 + 8 * v221;
        v224 = *(v222 + 4);
        v225 = *(v223 + 4);
        if (v224 == 1 && (v225 & 1) != 0)
        {
          break;
        }

        if (((v224 ^ 1) & v225) != 0)
        {
          v228 = -1;
        }

        else
        {
          v228 = 1;
        }

        if ((v225 | v224))
        {
          v229 = v228;
        }

        else
        {
          v229 = 0;
        }

        if (v229 < 0)
        {
          goto LABEL_443;
        }

LABEL_460:
        v218 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      v226 = *v223;
      if (*v222 >= v226)
      {
        v227 = 1;
      }

      else
      {
        v227 = -1;
      }

      if (*v222 == v226)
      {
        v227 = 0;
      }

      if ((v227 & 0x80) == 0)
      {
        goto LABEL_460;
      }

LABEL_443:
      v230 = v224 ^ 1;
      v231 = v9;
      do
      {
        *v231 = v221;
        v221 = *(v231 - 2);
        v232 = v219 + 8 * v221;
        v233 = *(v232 + 4);
        if (v224 && (v233 & 1) != 0)
        {
          v234 = *v232;
          v235 = *v222 == v234;
          if (*v222 >= v234)
          {
            v236 = 1;
          }

          else
          {
            v236 = -1;
          }

          if (v235)
          {
            v236 = 0;
          }
        }

        else
        {
          v237 = v230 & v233;
          if ((v230 & v233) != 0)
          {
            v238 = -1;
          }

          else
          {
            v238 = 1;
          }

          if (v237 != v224)
          {
            v236 = v238;
          }

          else
          {
            v236 = 0;
          }
        }

        --v231;
      }

      while (v236 < 0);
      *v231 = v220;
      goto LABEL_460;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v147 = (v11 - 2) >> 1;
      v148 = *a3;
      v149 = v147;
      while (1)
      {
        v150 = v149;
        if (v147 >= v149)
        {
          v151 = (2 * v149) | 1;
          v152 = &v10[v151];
          v153 = 2 * v149 + 2;
          v154 = *v148;
          if (v153 < v11)
          {
            v155 = v154 + 8 * *v152;
            v156 = v154 + 8 * v152[1];
            v157 = *(v155 + 4);
            v158 = *(v156 + 4);
            if (v157 == 1 && (v158 & 1) != 0)
            {
              if (*v155 >= *v156)
              {
                v159 = 1;
              }

              else
              {
                v159 = -1;
              }

              if (*v155 == *v156)
              {
                v159 = 0;
              }
            }

            else
            {
              if (((v157 ^ 1) & v158) != 0)
              {
                v160 = -1;
              }

              else
              {
                v160 = 1;
              }

              if ((v158 | v157))
              {
                v159 = v160;
              }

              else
              {
                v159 = 0;
              }
            }

            if (v159 < 0)
            {
              ++v152;
              v151 = 2 * v150 + 2;
            }
          }

          v161 = &v10[v150];
          v162 = *v152;
          v163 = *v161;
          v164 = v154 + 8 * *v152;
          v165 = v154 + 8 * *v161;
          v166 = *(v164 + 4);
          v167 = *(v165 + 4);
          if (v166 == 1 && (v167 & 1) != 0)
          {
            v168 = *v164;
            v169 = v168 == *v165;
            if (v168 >= *v165)
            {
              v170 = 1;
            }

            else
            {
              v170 = -1;
            }

            if (v169)
            {
              v170 = 0;
            }

            if (v170 < 0)
            {
              goto LABEL_358;
            }
          }

          else
          {
            if (((v166 ^ 1) & v167) != 0)
            {
              v171 = -1;
            }

            else
            {
              v171 = 1;
            }

            if (((v167 | v166) & 1) == 0)
            {
              v171 = 0;
            }

            if (v171 < 0)
            {
              goto LABEL_358;
            }
          }

          do
          {
            v172 = v152;
            *v161 = v162;
            if (v147 < v151)
            {
              break;
            }

            v173 = (2 * v151) | 1;
            v152 = &v10[v173];
            v151 = 2 * v151 + 2;
            if (v151 >= v11)
            {
              v151 = v173;
            }

            else
            {
              v174 = v154 + 8 * *v152;
              v175 = v154 + 8 * v152[1];
              v176 = *(v174 + 4);
              v177 = *(v175 + 4);
              if (v176 == 1 && (v177 & 1) != 0)
              {
                if (*v174 >= *v175)
                {
                  v178 = 1;
                }

                else
                {
                  v178 = -1;
                }

                if (*v174 == *v175)
                {
                  v178 = 0;
                }
              }

              else
              {
                v179 = ((v176 ^ 1) & v177) != 0 ? -1 : 1;
                v178 = ((v177 | v176) & 1) != 0 ? v179 : 0;
              }

              if (v178 < 0)
              {
                ++v152;
              }

              else
              {
                v151 = v173;
              }
            }

            v162 = *v152;
            v180 = v154 + 8 * *v152;
            v181 = *(v180 + 4);
            if (v181 == 1 && (v167 & 1) != 0)
            {
              v182 = *v180 >= *v165 ? 1 : -1;
              v183 = *v180 == *v165 ? 0 : v182;
            }

            else
            {
              if (((v181 ^ 1) & v167) != 0)
              {
                v183 = -1;
              }

              else
              {
                v183 = 1;
              }

              if (((v167 | v181) & 1) == 0)
              {
                v183 = 0;
              }
            }

            v161 = v172;
          }

          while ((v183 & 0x80) == 0);
          *v172 = v163;
        }

LABEL_358:
        v149 = v150 - 1;
        if (!v150)
        {
          while (1)
          {
            v184 = 0;
            v185 = *v10;
            v186 = *a3;
            v187 = v10;
            do
            {
              v188 = &v187[v184];
              v189 = v188 + 1;
              result = 2 * v184;
              v190 = (2 * v184) | 1;
              v184 = 2 * v184 + 2;
              if (v184 >= v11)
              {
                v184 = v190;
              }

              else
              {
                v192 = v188[2];
                v191 = v188 + 2;
                v193 = *v186 + 8 * *(v191 - 1);
                v194 = *v186 + 8 * v192;
                v195 = *(v193 + 4);
                v196 = *(v194 + 4);
                if (v195 == 1 && (v196 & 1) != 0)
                {
                  if (*v193 >= *v194)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = 255;
                  }

                  if (*v193 == *v194)
                  {
                    result = 0;
                  }
                }

                else
                {
                  if (((v195 ^ 1) & v196) != 0)
                  {
                    v197 = 255;
                  }

                  else
                  {
                    v197 = 1;
                  }

                  if ((v196 | v195))
                  {
                    result = v197;
                  }

                  else
                  {
                    result = 0;
                  }
                }

                if ((result & 0x80) != 0)
                {
                  v189 = v191;
                }

                else
                {
                  v184 = v190;
                }
              }

              *v187 = *v189;
              v187 = v189;
            }

            while (v184 <= ((v11 - 2) >> 1));
            if (v189 == --a2)
            {
              *v189 = v185;
            }

            else
            {
              *v189 = *a2;
              *a2 = v185;
              v198 = (v189 - v10 + 8) >> 3;
              v199 = v198 < 2;
              v200 = v198 - 2;
              if (!v199)
              {
                v201 = v200 >> 1;
                v202 = &v10[v201];
                v203 = *v202;
                v204 = *v189;
                v205 = *v186;
                v206 = v205 + 8 * *v202;
                v207 = v205 + 8 * *v189;
                v208 = *(v206 + 4);
                v209 = *(v207 + 4);
                if (v208 == 1 && (v209 & 1) != 0)
                {
                  v210 = *v206;
                  v211 = v210 == *v207;
                  if (v210 >= *v207)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = 255;
                  }

                  if (v211)
                  {
                    result = 0;
                  }

                  if ((result & 0x80) == 0)
                  {
                    goto LABEL_414;
                  }
                }

                else
                {
                  if (((v208 ^ 1) & v209) != 0)
                  {
                    result = 255;
                  }

                  else
                  {
                    result = 1;
                  }

                  if (((v209 | v208) & 1) == 0)
                  {
                    result = 0;
                  }

                  if ((result & 0x80) == 0)
                  {
                    goto LABEL_414;
                  }
                }

                do
                {
                  result = v202;
                  *v189 = v203;
                  if (!v201)
                  {
                    break;
                  }

                  v201 = (v201 - 1) >> 1;
                  v202 = &v10[v201];
                  v203 = *v202;
                  v212 = v205 + 8 * *v202;
                  v213 = *(v212 + 4);
                  if (v213 == 1 && (v209 & 1) != 0)
                  {
                    v214 = *v212 >= *v207 ? 1 : -1;
                    v215 = *v212 == *v207 ? 0 : v214;
                  }

                  else
                  {
                    if (((v213 ^ 1) & v209) != 0)
                    {
                      v215 = -1;
                    }

                    else
                    {
                      v215 = 1;
                    }

                    if (((v209 | v213) & 1) == 0)
                    {
                      v215 = 0;
                    }
                  }

                  v189 = result;
                }

                while (v215 < 0);
                *result = v204;
              }
            }

LABEL_414:
            v199 = v11-- <= 2;
            if (v199)
            {
              return result;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v14 = **a3;
    if (v11 < 0x81)
    {
      result = sub_2500EF0B8(&v9[v11 >> 1], v9, v239, v14);
    }

    else
    {
      sub_2500EF0B8(v9, &v9[v11 >> 1], v239, v14);
      sub_2500EF0B8(v9 + 1, v13 - 1, a2 - 2, **a3);
      sub_2500EF0B8(v9 + 2, &v9[v12 + 1], a2 - 3, **a3);
      result = sub_2500EF0B8(v13 - 1, v13, &v9[v12 + 1], **a3);
      v15 = *v9;
      *v9 = *v13;
      *v13 = v15;
    }

    --a4;
    v16 = *v9;
    v17 = **a3;
    v18 = v17 + 8 * *v9;
    if (a5)
    {
      v19 = *(v18 + 4);
      goto LABEL_40;
    }

    v20 = v17 + 8 * *(v9 - 1);
    v21 = *(v20 + 4);
    v19 = *(v18 + 4);
    if (v21 == 1 && (v19 & 1) != 0)
    {
      if (*v20 >= *v18)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }

      if (*v20 == *v18)
      {
        v22 = 0;
      }

      if ((v22 & 0x80) == 0)
      {
        goto LABEL_25;
      }

LABEL_40:
      v30 = 0;
      do
      {
        v31 = v9[v30 + 1];
        v32 = v17 + 8 * v31;
        v33 = *(v32 + 4);
        if ((v33 & v19) == 1)
        {
          if (*v32 >= *v18)
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          if (*v32 == *v18)
          {
            v34 = 0;
          }
        }

        else
        {
          if (((v33 ^ 1) & v19) != 0)
          {
            v35 = -1;
          }

          else
          {
            v35 = 1;
          }

          if ((v19 | v33))
          {
            v34 = v35;
          }

          else
          {
            v34 = 0;
          }
        }

        ++v30;
      }

      while (v34 < 0);
      v36 = &v9[v30];
      v37 = a2;
      if (v30 == 1)
      {
        v37 = a2;
        do
        {
          if (v36 >= v37)
          {
            break;
          }

          v44 = *--v37;
          v45 = v17 + 8 * v44;
          v46 = *(v45 + 4);
          if ((v46 & v19) == 1)
          {
            if (*v45 >= *v18)
            {
              v47 = 1;
            }

            else
            {
              v47 = -1;
            }

            if (*v45 == *v18)
            {
              v47 = 0;
            }
          }

          else
          {
            v48 = ((v46 ^ 1) & v19) != 0 ? -1 : 1;
            v47 = ((v19 | v46) & 1) != 0 ? v48 : 0;
          }
        }

        while ((v47 & 0x80) == 0);
      }

      else
      {
        do
        {
          while (1)
          {
            v38 = *--v37;
            v39 = v17 + 8 * v38;
            v40 = *(v39 + 4);
            if ((v40 & v19) == 1)
            {
              break;
            }

            if (((v40 ^ 1) & v19) != 0)
            {
              v42 = -1;
            }

            else
            {
              v42 = 1;
            }

            if ((v19 | v40))
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }

            if (v43 < 0)
            {
              goto LABEL_88;
            }
          }

          if (*v39 >= *v18)
          {
            v41 = 1;
          }

          else
          {
            v41 = -1;
          }

          if (*v39 == *v18)
          {
            v41 = 0;
          }
        }

        while ((v41 & 0x80) == 0);
      }

LABEL_88:
      if (v36 >= v37)
      {
        v64 = v36 - 1;
      }

      else
      {
        v49 = *v37;
        v50 = v36;
        v51 = v37;
        do
        {
          *v50 = v49;
          *v51 = v31;
          do
          {
            while (1)
            {
              v52 = v50[1];
              ++v50;
              v31 = v52;
              v53 = v17 + 8 * v52;
              v54 = *(v53 + 4);
              if ((v54 & v19) == 1)
              {
                break;
              }

              if (((v54 ^ 1) & v19) != 0)
              {
                v56 = -1;
              }

              else
              {
                v56 = 1;
              }

              if ((v19 | v54))
              {
                v57 = v56;
              }

              else
              {
                v57 = 0;
              }

              if ((v57 & 0x80) == 0)
              {
                goto LABEL_106;
              }
            }

            if (*v53 >= *v18)
            {
              v55 = 1;
            }

            else
            {
              v55 = -1;
            }

            if (*v53 == *v18)
            {
              v55 = 0;
            }
          }

          while (v55 < 0);
          do
          {
LABEL_106:
            while (1)
            {
              v58 = *--v51;
              v49 = v58;
              v59 = v17 + 8 * v58;
              v60 = *(v59 + 4);
              if ((v60 & v19) == 1)
              {
                break;
              }

              if (((v60 ^ 1) & v19) != 0)
              {
                v62 = -1;
              }

              else
              {
                v62 = 1;
              }

              if ((v19 | v60))
              {
                v63 = v62;
              }

              else
              {
                v63 = 0;
              }

              if (v63 < 0)
              {
                goto LABEL_121;
              }
            }

            if (*v59 >= *v18)
            {
              v61 = 1;
            }

            else
            {
              v61 = -1;
            }

            if (*v59 == *v18)
            {
              v61 = 0;
            }
          }

          while ((v61 & 0x80) == 0);
LABEL_121:
          ;
        }

        while (v50 < v51);
        v64 = v50 - 1;
      }

      if (v64 != v9)
      {
        *v9 = *v64;
      }

      *v64 = v16;
      if (v36 < v37)
      {
LABEL_129:
        result = sub_2500EE354(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v64 + 1;
      }

      else
      {
        v65 = sub_2500EF634(v9, v64, a3);
        v10 = v64 + 1;
        result = sub_2500EF634(v64 + 1, a2, a3);
        if (result)
        {
          a2 = v64;
          if (v65)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v65)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      if (((v21 ^ 1) & v19) != 0)
      {
        v28 = -1;
      }

      else
      {
        v28 = 1;
      }

      if ((v19 | v21))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if (v29 < 0)
      {
        goto LABEL_40;
      }

LABEL_25:
      v23 = v17 + 8 * *v239;
      v24 = *(v23 + 4);
      if (v19 & 1) != 0 && (*(v23 + 4))
      {
        v25 = 0;
        v26 = *v23;
        if (*v18 >= v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (*v18 == v26)
        {
          v27 = 0;
        }
      }

      else
      {
        v25 = v19 ^ 1;
        if ((v19 ^ 1) & v24)
        {
          v66 = -1;
        }

        else
        {
          v66 = 1;
        }

        if ((v24 | v19))
        {
          v27 = v66;
        }

        else
        {
          v27 = 0;
        }
      }

      v10 = v9;
      if (v27 < 0)
      {
        do
        {
          v75 = v10[1];
          ++v10;
          v76 = v17 + 8 * v75;
          v77 = *(v76 + 4);
          if (v19 & 1) != 0 && (v77)
          {
            v78 = *v76;
            v79 = *v18 == v78;
            if (*v18 >= v78)
            {
              v80 = 1;
            }

            else
            {
              v80 = -1;
            }

            if (v79)
            {
              v80 = 0;
            }
          }

          else
          {
            v81 = v25 & v77;
            if (v25 & v77)
            {
              v82 = -1;
            }

            else
            {
              v82 = 1;
            }

            if ((v81 ^ v19))
            {
              v80 = v82;
            }

            else
            {
              v80 = 0;
            }
          }
        }

        while ((v80 & 0x80) == 0);
      }

      else
      {
        v67 = v9 + 1;
        do
        {
          v10 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v68 = v17 + 8 * *v67;
          v69 = *(v68 + 4);
          if (v19 & 1) != 0 && (v69)
          {
            v70 = *v68;
            v71 = *v18 == v70;
            if (*v18 >= v70)
            {
              v72 = 1;
            }

            else
            {
              v72 = -1;
            }

            if (v71)
            {
              v72 = 0;
            }
          }

          else
          {
            v73 = v25 & v69;
            v74 = (v25 & v69 & 1) != 0 ? -1 : 1;
            v72 = ((v73 ^ v19) & 1) != 0 ? v74 : 0;
          }

          v67 = v10 + 1;
        }

        while ((v72 & 0x80) == 0);
      }

      v83 = a2;
      if (v10 < a2)
      {
        v83 = a2;
        do
        {
          while (1)
          {
            v84 = *--v83;
            v85 = v17 + 8 * v84;
            v86 = *(v85 + 4);
            if (v19 & 1) != 0 && (v86)
            {
              break;
            }

            v90 = v25 & v86;
            if (v25 & v86)
            {
              v91 = -1;
            }

            else
            {
              v91 = 1;
            }

            if ((v90 ^ v19))
            {
              v92 = v91;
            }

            else
            {
              v92 = 0;
            }

            if ((v92 & 0x80) == 0)
            {
              goto LABEL_188;
            }
          }

          v87 = *v85;
          v88 = *v18 == v87;
          if (*v18 >= v87)
          {
            v89 = 1;
          }

          else
          {
            v89 = -1;
          }

          if (v88)
          {
            v89 = 0;
          }
        }

        while (v89 < 0);
      }

LABEL_188:
      if (v10 < v83)
      {
        v93 = *v10;
        v94 = *v83;
        do
        {
          *v10 = v94;
          *v83 = v93;
          do
          {
            while (1)
            {
              v95 = v10[1];
              ++v10;
              v93 = v95;
              v96 = v17 + 8 * v95;
              v97 = *(v96 + 4);
              if (v19 & 1) != 0 && (v97)
              {
                break;
              }

              v101 = v25 & v97;
              if (v25 & v97)
              {
                v102 = -1;
              }

              else
              {
                v102 = 1;
              }

              if ((v101 ^ v19))
              {
                v103 = v102;
              }

              else
              {
                v103 = 0;
              }

              if (v103 < 0)
              {
                goto LABEL_207;
              }
            }

            v98 = *v96;
            v99 = *v18 == v98;
            if (*v18 >= v98)
            {
              v100 = 1;
            }

            else
            {
              v100 = -1;
            }

            if (v99)
            {
              v100 = 0;
            }
          }

          while ((v100 & 0x80) == 0);
          do
          {
LABEL_207:
            while (1)
            {
              v104 = *--v83;
              v94 = v104;
              v105 = v17 + 8 * v104;
              v106 = *(v105 + 4);
              if (v19 & 1) != 0 && (v106)
              {
                break;
              }

              v110 = v25 & v106;
              if (v25 & v106)
              {
                v111 = -1;
              }

              else
              {
                v111 = 1;
              }

              if ((v110 ^ v19))
              {
                v112 = v111;
              }

              else
              {
                v112 = 0;
              }

              if ((v112 & 0x80) == 0)
              {
                goto LABEL_223;
              }
            }

            v107 = *v105;
            v108 = *v18 == v107;
            if (*v18 >= v107)
            {
              v109 = 1;
            }

            else
            {
              v109 = -1;
            }

            if (v108)
            {
              v109 = 0;
            }
          }

          while (v109 < 0);
LABEL_223:
          ;
        }

        while (v10 < v83);
      }

      v113 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v113;
      }

      a5 = 0;
      *v113 = v16;
    }
  }

  v114 = *(a2 - 1);
  v115 = *v10;
  v116 = **a3;
  v117 = v116 + 8 * v114;
  v118 = v116 + 8 * *v10;
  v119 = *(v117 + 4);
  v120 = *(v118 + 4);
  if (v119 == 1 && (v120 & 1) != 0)
  {
    v121 = -1;
    if (*v117 >= *v118)
    {
      v121 = 1;
    }

    if (*v117 == *v118)
    {
      v121 = 0;
    }

    if ((v121 & 0x80) == 0)
    {
      return result;
    }

LABEL_423:
    *v10 = v114;
    *(a2 - 1) = v115;
    return result;
  }

  v216 = -1;
  if (((v119 ^ 1) & v120) == 0)
  {
    v216 = 1;
  }

  if ((v120 | v119))
  {
    v217 = v216;
  }

  else
  {
    v217 = 0;
  }

  if (v217 < 0)
  {
    goto LABEL_423;
  }

  return result;
}

uint64_t *sub_2500EF0B8(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = (a4 + 8 * *a2);
  v7 = (a4 + 8 * *result);
  v8 = *(v6 + 4);
  v9 = *(v7 + 4);
  if (v8 == 1 && (v9 & 1) != 0)
  {
    v10 = -1;
    if (*v6 >= *v7)
    {
      v10 = 1;
    }

    if (*v6 == *v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v12 = -1;
    if (((v8 ^ 1) & v9) == 0)
    {
      v12 = 1;
    }

    if ((v9 | v8))
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = *a3;
  v14 = a4 + 8 * *a3;
  v15 = *(v14 + 4);
  v16 = v8 & v15;
  if (v11 < 0)
  {
    if (v16)
    {
      v18 = *v6;
      v19 = -1;
      if (*v14 >= v18)
      {
        v19 = 1;
      }

      if (*v14 == v18)
      {
        v19 = 0;
      }

      if (v19 < 0)
      {
LABEL_27:
        *result = v13;
        goto LABEL_69;
      }
    }

    else
    {
      v27 = -1;
      if ((v8 & (v15 ^ 1)) == 0)
      {
        v27 = 1;
      }

      if (v8 | v15)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v28 < 0)
      {
        goto LABEL_27;
      }
    }

    *result = v4;
    *a2 = v5;
    v29 = a4 + 8 * *a3;
    v30 = *(v29 + 4);
    if (v30 == 1 && (v9 & 1) != 0)
    {
      v31 = *v7;
      v32 = *v29 >= v31;
      v33 = *v29 == v31;
      v34 = -1;
      if (v32)
      {
        v34 = 1;
      }

      if (v33)
      {
        v34 = 0;
      }

      if ((v34 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v37 = -1;
      if (((v30 ^ 1) & v9) == 0)
      {
        v37 = 1;
      }

      if (((v9 | v30) & 1) == 0)
      {
        v37 = 0;
      }

      if ((v37 & 0x80) == 0)
      {
        return result;
      }
    }

    *a2 = *a3;
LABEL_69:
    *a3 = v5;
    return result;
  }

  if (v16)
  {
    v17 = -1;
    if (*v14 >= *v6)
    {
      v17 = 1;
    }

    if (*v14 == *v6)
    {
      v17 = 0;
    }

    if ((v17 & 0x80) == 0)
    {
      return result;
    }

LABEL_33:
    *a2 = v13;
    *a3 = v4;
    v21 = *result;
    v22 = a4 + 8 * *a2;
    v23 = a4 + 8 * *result;
    v24 = *(v22 + 4);
    v25 = *(v23 + 4);
    if (v24 == 1 && (v25 & 1) != 0)
    {
      v26 = -1;
      if (*v22 >= *v23)
      {
        v26 = 1;
      }

      if (*v22 == *v23)
      {
        v26 = 0;
      }

      if ((v26 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v35 = -1;
      if (((v24 ^ 1) & v25) == 0)
      {
        v35 = 1;
      }

      if ((v25 | v24))
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if ((v36 & 0x80) == 0)
      {
        return result;
      }
    }

    *result = *a2;
    *a2 = v21;
    return result;
  }

  v20 = -1;
  if ((v8 & (v15 ^ 1)) == 0)
  {
    v20 = 1;
  }

  if (!(v8 | v15))
  {
    v20 = 0;
  }

  if (v20 < 0)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t *sub_2500EF298(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = sub_2500EF0B8(a1, a2, a3, **a5);
  v11 = *a3;
  v12 = **a5;
  v13 = v12 + 8 * *a4;
  v14 = v12 + 8 * *a3;
  v15 = *(v13 + 4);
  v16 = *(v14 + 4);
  if (v15 == 1 && (v16 & 1) != 0)
  {
    v17 = -1;
    if (*v13 >= *v14)
    {
      v17 = 1;
    }

    if (*v13 == *v14)
    {
      v17 = 0;
    }

    if ((v17 & 0x80) == 0)
    {
      return result;
    }

LABEL_15:
    *a3 = *a4;
    *a4 = v11;
    v20 = *a2;
    v21 = v12 + 8 * *a3;
    v22 = v12 + 8 * *a2;
    v23 = *(v21 + 4);
    v24 = *(v22 + 4);
    if (v23 == 1 && (v24 & 1) != 0)
    {
      v25 = -1;
      if (*v21 >= *v22)
      {
        v25 = 1;
      }

      if (*v21 == *v22)
      {
        v25 = 0;
      }

      if ((v25 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v26 = -1;
      if (((v23 ^ 1) & v24) == 0)
      {
        v26 = 1;
      }

      if ((v24 | v23))
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if ((v27 & 0x80) == 0)
      {
        return result;
      }
    }

    *a2 = *a3;
    *a3 = v20;
    v28 = *a1;
    v29 = v12 + 8 * *a2;
    v30 = v12 + 8 * *a1;
    v31 = *(v29 + 4);
    v32 = *(v30 + 4);
    if (v31 == 1 && (v32 & 1) != 0)
    {
      v33 = -1;
      if (*v29 >= *v30)
      {
        v33 = 1;
      }

      if (*v29 == *v30)
      {
        v33 = 0;
      }

      if ((v33 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v34 = -1;
      if (((v31 ^ 1) & v32) == 0)
      {
        v34 = 1;
      }

      if ((v32 | v31))
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 0x80) == 0)
      {
        return result;
      }
    }

    *a1 = *a2;
    *a2 = v28;
    return result;
  }

  v18 = -1;
  if (((v15 ^ 1) & v16) == 0)
  {
    v18 = 1;
  }

  if ((v16 | v15))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < 0)
  {
    goto LABEL_15;
  }

  return result;
}