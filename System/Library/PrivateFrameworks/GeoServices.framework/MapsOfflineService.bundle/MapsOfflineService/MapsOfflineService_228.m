void sub_DE6F30()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B8F50 = 0u;
  unk_27B8F60 = 0u;
  dword_27B8F70 = 1065353216;
  sub_3A9A34(&xmmword_27B8F50, v0);
  sub_3A9A34(&xmmword_27B8F50, v3);
  sub_3A9A34(&xmmword_27B8F50, __p);
  sub_3A9A34(&xmmword_27B8F50, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B8F28 = 0;
    qword_27B8F30 = 0;
    qword_27B8F20 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_DE7178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B8F38)
  {
    qword_27B8F40 = qword_27B8F38;
    operator delete(qword_27B8F38);
  }

  _Unwind_Resume(exception_object);
}

void sub_DE7224(int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = 91;
  v67 = 93;
  sub_DE82A8(&v68, &unk_22AC860, &v67, &__p);
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 14;
      strcpy(a2, "Unknown error.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 1:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v24 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v24 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v24;
      if ((v71 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(a2, p_p, v23);
      v56 = " Input resolving failed.";
      goto LABEL_193;
    case 2:
      if ((v71 & 0x80u) == 0)
      {
        v16 = v71;
      }

      else
      {
        v16 = v70;
      }

      v17 = v16 + 27;
      if (v16 + 27 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v17 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v17;
      if ((v71 & 0x80u) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p;
      }

      memmove(a2, v47, v16);
      strcpy((a2 + v16), " Request validation failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 3:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v21 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v21 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v21;
      if ((v71 & 0x80u) == 0)
      {
        v50 = &__p;
      }

      else
      {
        v50 = __p;
      }

      memmove(a2, v50, v20);
      v51 = " Path decoder module failed.";
      goto LABEL_169;
    case 4:
      if ((v71 & 0x80u) == 0)
      {
        v10 = v71;
      }

      else
      {
        v10 = v70;
      }

      v11 = v10 + 39;
      if (v10 + 39 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v11 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v11;
      if ((v71 & 0x80u) == 0)
      {
        v43 = &__p;
      }

      else
      {
        v43 = __p;
      }

      memmove(a2, v43, v10);
      strcpy((a2 + v10), " Input point transformer module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 5:
      if ((v71 & 0x80u) == 0)
      {
        v26 = v71;
      }

      else
      {
        v26 = v70;
      }

      v27 = v26 + 30;
      if (v26 + 30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v27 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v27;
      if ((v71 & 0x80u) == 0)
      {
        v58 = &__p;
      }

      else
      {
        v58 = __p;
      }

      memmove(a2, v58, v26);
      strcpy((a2 + v26), " Coverage check module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 6:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v30 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v30 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v30;
      if ((v71 & 0x80u) == 0)
      {
        v60 = &__p;
      }

      else
      {
        v60 = __p;
      }

      memmove(a2, v60, v23);
      v56 = " Snapping module failed.";
      goto LABEL_193;
    case 7:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v22 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v22 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v22;
      if ((v71 & 0x80u) == 0)
      {
        v52 = &__p;
      }

      else
      {
        v52 = __p;
      }

      memmove(a2, v52, v20);
      v51 = " Path finding module failed.";
LABEL_169:
      v53 = (v49 + v20);
      *v53 = *v51;
      *(v53 + 12) = *(v51 + 12);
      *(v49 + v20 + 28) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 8:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v35 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v35 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v35;
      if ((v71 & 0x80u) == 0)
      {
        v64 = &__p;
      }

      else
      {
        v64 = __p;
      }

      memmove(a2, v64, v6);
      v41 = " Journey planner module failed.";
      goto LABEL_209;
    case 9:
      if ((v71 & 0x80u) == 0)
      {
        v14 = v71;
      }

      else
      {
        v14 = v70;
      }

      v15 = v14 + 19;
      if (v14 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v15;
      if (v14)
      {
        if ((v71 & 0x80u) == 0)
        {
          v45 = &__p;
        }

        else
        {
          v45 = __p;
        }

        memmove(a2, v45, v14);
      }

      v46 = a2 + v14;
      *v46 = *" ETA module failed.";
      *(v46 + 15) = 778331500;
      *(a2 + v14 + 19) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 10:
      if ((v71 & 0x80u) == 0)
      {
        v33 = v71;
      }

      else
      {
        v33 = v70;
      }

      v34 = v33 + 34;
      if (v33 + 34 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v34 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v34;
      if ((v71 & 0x80u) == 0)
      {
        v63 = &__p;
      }

      else
      {
        v63 = __p;
      }

      memmove(a2, v63, v33);
      strcpy((a2 + v33), " ETA module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 11:
      if ((v71 & 0x80u) == 0)
      {
        v8 = v71;
      }

      else
      {
        v8 = v70;
      }

      v9 = v8 + 41;
      if (v8 + 41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v9 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v9;
      if ((v71 & 0x80u) == 0)
      {
        v42 = &__p;
      }

      else
      {
        v42 = __p;
      }

      memmove(a2, v42, v8);
      strcpy((a2 + v8), " Traversal time prediction module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 12:
      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70;
      }

      v13 = v12 + 29;
      if (v12 + 29 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v13 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v13;
      if ((v71 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      memmove(a2, v44, v12);
      strcpy((a2 + v12), " Route builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 13:
      if ((v71 & 0x80u) == 0)
      {
        v28 = v71;
      }

      else
      {
        v28 = v70;
      }

      v29 = v28 + 44;
      if (v28 + 44 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v29 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v29;
      if ((v71 & 0x80u) == 0)
      {
        v59 = &__p;
      }

      else
      {
        v59 = __p;
      }

      memmove(a2, v59, v28);
      strcpy((a2 + v28), " Route builder module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 14:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v7 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v7 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v7;
      if ((v71 & 0x80u) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p;
      }

      memmove(a2, v40, v6);
      v41 = " Route selection module failed.";
LABEL_209:
      v65 = (v39 + v6);
      *v65 = *v41;
      *(v65 + 15) = *(v41 + 15);
      *(v39 + v6 + 31) = 0;
      if ((v71 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_215;
    case 15:
      if ((v71 & 0x80u) == 0)
      {
        v18 = v71;
      }

      else
      {
        v18 = v70;
      }

      v19 = v18 + 45;
      if (v18 + 45 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v19 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v19;
      if ((v71 & 0x80u) == 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p;
      }

      memmove(a2, v48, v18);
      strcpy((a2 + v18), " Driving to walking transition module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 16:
      if ((v71 & 0x80u) == 0)
      {
        v4 = v71;
      }

      else
      {
        v4 = v70;
      }

      v5 = v4 + 35;
      if (v4 + 35 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v5 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v5;
      if ((v71 & 0x80u) == 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      memmove(a2, v38, v4);
      strcpy((a2 + v4), " Route line geometry module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 17:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v25 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v25 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v25;
      if ((v71 & 0x80u) == 0)
      {
        v57 = &__p;
      }

      else
      {
        v57 = __p;
      }

      memmove(a2, v57, v23);
      v56 = " Guidance module failed.";
LABEL_193:
      v61 = v54 + v23;
      *v61 = *v56;
      *(v61 + 16) = *(v56 + 2);
      *(v54 + v23 + 24) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 18:
      if ((v71 & 0x80u) == 0)
      {
        v31 = v71;
      }

      else
      {
        v31 = v70;
      }

      v32 = v31 + 25;
      if (v31 + 25 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v32 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v32;
      if ((v71 & 0x80u) == 0)
      {
        v62 = &__p;
      }

      else
      {
        v62 = __p;
      }

      memmove(a2, v62, v31);
      strcpy((a2 + v31), " Analytics module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 19:
      if ((v71 & 0x80u) == 0)
      {
        v36 = v71;
      }

      else
      {
        v36 = v70;
      }

      v37 = v36 + 32;
      if (v36 + 32 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_216:
        sub_3244();
      }

      if (v37 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v37;
      if ((v71 & 0x80u) == 0)
      {
        v66 = &__p;
      }

      else
      {
        v66 = __p;
      }

      memmove(a2, v66, v36);
      strcpy((a2 + v36), " Response builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      if (v71 < 0)
      {
LABEL_215:
        operator delete(__p);
      }

      return;
  }
}

void sub_DE823C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DE82A8@<X0>(char *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v15);
  v27 = *a1;
  v8 = sub_4A5C(&v16, &v27, 1);
  v9 = sub_8996C(v8, *a2);
  v27 = *a3;
  sub_4A5C(v9, &v27, 1);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = __src;
    v10 = v11 - __src;
    if (v11 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_12:
  a4[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_DE8530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_DE8554(int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = 91;
  v67 = 93;
  sub_DE82A8(&v68, &unk_22AC861, &v67, &__p);
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 14;
      strcpy(a2, "Unknown error.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 1:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v24 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v24 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v24;
      if ((v71 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(a2, p_p, v23);
      v56 = " Input resolving failed.";
      goto LABEL_193;
    case 2:
      if ((v71 & 0x80u) == 0)
      {
        v16 = v71;
      }

      else
      {
        v16 = v70;
      }

      v17 = v16 + 27;
      if (v16 + 27 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v17 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v17;
      if ((v71 & 0x80u) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p;
      }

      memmove(a2, v47, v16);
      strcpy((a2 + v16), " Request validation failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 3:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v21 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v21 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v21;
      if ((v71 & 0x80u) == 0)
      {
        v50 = &__p;
      }

      else
      {
        v50 = __p;
      }

      memmove(a2, v50, v20);
      v51 = " Path decoder module failed.";
      goto LABEL_169;
    case 4:
      if ((v71 & 0x80u) == 0)
      {
        v10 = v71;
      }

      else
      {
        v10 = v70;
      }

      v11 = v10 + 39;
      if (v10 + 39 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v11 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v11;
      if ((v71 & 0x80u) == 0)
      {
        v43 = &__p;
      }

      else
      {
        v43 = __p;
      }

      memmove(a2, v43, v10);
      strcpy((a2 + v10), " Input point transformer module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 5:
      if ((v71 & 0x80u) == 0)
      {
        v26 = v71;
      }

      else
      {
        v26 = v70;
      }

      v27 = v26 + 30;
      if (v26 + 30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v27 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v27;
      if ((v71 & 0x80u) == 0)
      {
        v58 = &__p;
      }

      else
      {
        v58 = __p;
      }

      memmove(a2, v58, v26);
      strcpy((a2 + v26), " Coverage check module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 6:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v30 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v30 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v30;
      if ((v71 & 0x80u) == 0)
      {
        v60 = &__p;
      }

      else
      {
        v60 = __p;
      }

      memmove(a2, v60, v23);
      v56 = " Snapping module failed.";
      goto LABEL_193;
    case 7:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v22 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v22 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v22;
      if ((v71 & 0x80u) == 0)
      {
        v52 = &__p;
      }

      else
      {
        v52 = __p;
      }

      memmove(a2, v52, v20);
      v51 = " Path finding module failed.";
LABEL_169:
      v53 = (v49 + v20);
      *v53 = *v51;
      *(v53 + 12) = *(v51 + 12);
      *(v49 + v20 + 28) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 8:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v35 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v35 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v35;
      if ((v71 & 0x80u) == 0)
      {
        v64 = &__p;
      }

      else
      {
        v64 = __p;
      }

      memmove(a2, v64, v6);
      v41 = " Journey planner module failed.";
      goto LABEL_209;
    case 9:
      if ((v71 & 0x80u) == 0)
      {
        v14 = v71;
      }

      else
      {
        v14 = v70;
      }

      v15 = v14 + 19;
      if (v14 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v15;
      if (v14)
      {
        if ((v71 & 0x80u) == 0)
        {
          v45 = &__p;
        }

        else
        {
          v45 = __p;
        }

        memmove(a2, v45, v14);
      }

      v46 = a2 + v14;
      *v46 = *" ETA module failed.";
      *(v46 + 15) = 778331500;
      *(a2 + v14 + 19) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 10:
      if ((v71 & 0x80u) == 0)
      {
        v33 = v71;
      }

      else
      {
        v33 = v70;
      }

      v34 = v33 + 34;
      if (v33 + 34 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v34 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v34;
      if ((v71 & 0x80u) == 0)
      {
        v63 = &__p;
      }

      else
      {
        v63 = __p;
      }

      memmove(a2, v63, v33);
      strcpy((a2 + v33), " ETA module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 11:
      if ((v71 & 0x80u) == 0)
      {
        v8 = v71;
      }

      else
      {
        v8 = v70;
      }

      v9 = v8 + 41;
      if (v8 + 41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v9 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v9;
      if ((v71 & 0x80u) == 0)
      {
        v42 = &__p;
      }

      else
      {
        v42 = __p;
      }

      memmove(a2, v42, v8);
      strcpy((a2 + v8), " Traversal time prediction module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 12:
      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70;
      }

      v13 = v12 + 29;
      if (v12 + 29 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v13 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v13;
      if ((v71 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      memmove(a2, v44, v12);
      strcpy((a2 + v12), " Route builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 13:
      if ((v71 & 0x80u) == 0)
      {
        v28 = v71;
      }

      else
      {
        v28 = v70;
      }

      v29 = v28 + 44;
      if (v28 + 44 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v29 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v29;
      if ((v71 & 0x80u) == 0)
      {
        v59 = &__p;
      }

      else
      {
        v59 = __p;
      }

      memmove(a2, v59, v28);
      strcpy((a2 + v28), " Route builder module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 14:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v7 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v7 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v7;
      if ((v71 & 0x80u) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p;
      }

      memmove(a2, v40, v6);
      v41 = " Route selection module failed.";
LABEL_209:
      v65 = (v39 + v6);
      *v65 = *v41;
      *(v65 + 15) = *(v41 + 15);
      *(v39 + v6 + 31) = 0;
      if ((v71 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_215;
    case 15:
      if ((v71 & 0x80u) == 0)
      {
        v18 = v71;
      }

      else
      {
        v18 = v70;
      }

      v19 = v18 + 45;
      if (v18 + 45 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v19 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v19;
      if ((v71 & 0x80u) == 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p;
      }

      memmove(a2, v48, v18);
      strcpy((a2 + v18), " Driving to walking transition module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 16:
      if ((v71 & 0x80u) == 0)
      {
        v4 = v71;
      }

      else
      {
        v4 = v70;
      }

      v5 = v4 + 35;
      if (v4 + 35 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v5 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v5;
      if ((v71 & 0x80u) == 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      memmove(a2, v38, v4);
      strcpy((a2 + v4), " Route line geometry module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 17:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v25 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v25 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v25;
      if ((v71 & 0x80u) == 0)
      {
        v57 = &__p;
      }

      else
      {
        v57 = __p;
      }

      memmove(a2, v57, v23);
      v56 = " Guidance module failed.";
LABEL_193:
      v61 = v54 + v23;
      *v61 = *v56;
      *(v61 + 16) = *(v56 + 2);
      *(v54 + v23 + 24) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 18:
      if ((v71 & 0x80u) == 0)
      {
        v31 = v71;
      }

      else
      {
        v31 = v70;
      }

      v32 = v31 + 25;
      if (v31 + 25 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v32 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v32;
      if ((v71 & 0x80u) == 0)
      {
        v62 = &__p;
      }

      else
      {
        v62 = __p;
      }

      memmove(a2, v62, v31);
      strcpy((a2 + v31), " Analytics module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 19:
      if ((v71 & 0x80u) == 0)
      {
        v36 = v71;
      }

      else
      {
        v36 = v70;
      }

      v37 = v36 + 32;
      if (v36 + 32 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_216:
        sub_3244();
      }

      if (v37 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v37;
      if ((v71 & 0x80u) == 0)
      {
        v66 = &__p;
      }

      else
      {
        v66 = __p;
      }

      memmove(a2, v66, v36);
      strcpy((a2 + v36), " Response builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      if (v71 < 0)
      {
LABEL_215:
        operator delete(__p);
      }

      return;
  }
}

void sub_DE956C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DE95D8(int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = 91;
  v67 = 93;
  sub_DE82A8(&v68, &unk_22AC862, &v67, &__p);
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 14;
      strcpy(a2, "Unknown error.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 1:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v24 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v24 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v24;
      if ((v71 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(a2, p_p, v23);
      v56 = " Input resolving failed.";
      goto LABEL_193;
    case 2:
      if ((v71 & 0x80u) == 0)
      {
        v16 = v71;
      }

      else
      {
        v16 = v70;
      }

      v17 = v16 + 27;
      if (v16 + 27 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v17 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v17;
      if ((v71 & 0x80u) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p;
      }

      memmove(a2, v47, v16);
      strcpy((a2 + v16), " Request validation failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 3:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v21 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v21 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v21;
      if ((v71 & 0x80u) == 0)
      {
        v50 = &__p;
      }

      else
      {
        v50 = __p;
      }

      memmove(a2, v50, v20);
      v51 = " Path decoder module failed.";
      goto LABEL_169;
    case 4:
      if ((v71 & 0x80u) == 0)
      {
        v10 = v71;
      }

      else
      {
        v10 = v70;
      }

      v11 = v10 + 39;
      if (v10 + 39 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v11 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v11;
      if ((v71 & 0x80u) == 0)
      {
        v43 = &__p;
      }

      else
      {
        v43 = __p;
      }

      memmove(a2, v43, v10);
      strcpy((a2 + v10), " Input point transformer module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 5:
      if ((v71 & 0x80u) == 0)
      {
        v26 = v71;
      }

      else
      {
        v26 = v70;
      }

      v27 = v26 + 30;
      if (v26 + 30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v27 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v27;
      if ((v71 & 0x80u) == 0)
      {
        v58 = &__p;
      }

      else
      {
        v58 = __p;
      }

      memmove(a2, v58, v26);
      strcpy((a2 + v26), " Coverage check module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 6:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v30 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v30 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v30;
      if ((v71 & 0x80u) == 0)
      {
        v60 = &__p;
      }

      else
      {
        v60 = __p;
      }

      memmove(a2, v60, v23);
      v56 = " Snapping module failed.";
      goto LABEL_193;
    case 7:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v22 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v22 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v22;
      if ((v71 & 0x80u) == 0)
      {
        v52 = &__p;
      }

      else
      {
        v52 = __p;
      }

      memmove(a2, v52, v20);
      v51 = " Path finding module failed.";
LABEL_169:
      v53 = (v49 + v20);
      *v53 = *v51;
      *(v53 + 12) = *(v51 + 12);
      *(v49 + v20 + 28) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 8:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v35 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v35 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v35;
      if ((v71 & 0x80u) == 0)
      {
        v64 = &__p;
      }

      else
      {
        v64 = __p;
      }

      memmove(a2, v64, v6);
      v41 = " Journey planner module failed.";
      goto LABEL_209;
    case 9:
      if ((v71 & 0x80u) == 0)
      {
        v14 = v71;
      }

      else
      {
        v14 = v70;
      }

      v15 = v14 + 19;
      if (v14 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v15;
      if (v14)
      {
        if ((v71 & 0x80u) == 0)
        {
          v45 = &__p;
        }

        else
        {
          v45 = __p;
        }

        memmove(a2, v45, v14);
      }

      v46 = a2 + v14;
      *v46 = *" ETA module failed.";
      *(v46 + 15) = 778331500;
      *(a2 + v14 + 19) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 10:
      if ((v71 & 0x80u) == 0)
      {
        v33 = v71;
      }

      else
      {
        v33 = v70;
      }

      v34 = v33 + 34;
      if (v33 + 34 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v34 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v34;
      if ((v71 & 0x80u) == 0)
      {
        v63 = &__p;
      }

      else
      {
        v63 = __p;
      }

      memmove(a2, v63, v33);
      strcpy((a2 + v33), " ETA module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 11:
      if ((v71 & 0x80u) == 0)
      {
        v8 = v71;
      }

      else
      {
        v8 = v70;
      }

      v9 = v8 + 41;
      if (v8 + 41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v9 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v9;
      if ((v71 & 0x80u) == 0)
      {
        v42 = &__p;
      }

      else
      {
        v42 = __p;
      }

      memmove(a2, v42, v8);
      strcpy((a2 + v8), " Traversal time prediction module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 12:
      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70;
      }

      v13 = v12 + 29;
      if (v12 + 29 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v13 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v13;
      if ((v71 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      memmove(a2, v44, v12);
      strcpy((a2 + v12), " Route builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 13:
      if ((v71 & 0x80u) == 0)
      {
        v28 = v71;
      }

      else
      {
        v28 = v70;
      }

      v29 = v28 + 44;
      if (v28 + 44 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v29 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v29;
      if ((v71 & 0x80u) == 0)
      {
        v59 = &__p;
      }

      else
      {
        v59 = __p;
      }

      memmove(a2, v59, v28);
      strcpy((a2 + v28), " Route builder module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 14:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v7 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v7 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v7;
      if ((v71 & 0x80u) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p;
      }

      memmove(a2, v40, v6);
      v41 = " Route selection module failed.";
LABEL_209:
      v65 = (v39 + v6);
      *v65 = *v41;
      *(v65 + 15) = *(v41 + 15);
      *(v39 + v6 + 31) = 0;
      if ((v71 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_215;
    case 15:
      if ((v71 & 0x80u) == 0)
      {
        v18 = v71;
      }

      else
      {
        v18 = v70;
      }

      v19 = v18 + 45;
      if (v18 + 45 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v19 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v19;
      if ((v71 & 0x80u) == 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p;
      }

      memmove(a2, v48, v18);
      strcpy((a2 + v18), " Driving to walking transition module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 16:
      if ((v71 & 0x80u) == 0)
      {
        v4 = v71;
      }

      else
      {
        v4 = v70;
      }

      v5 = v4 + 35;
      if (v4 + 35 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v5 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v5;
      if ((v71 & 0x80u) == 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      memmove(a2, v38, v4);
      strcpy((a2 + v4), " Route line geometry module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 17:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v25 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v25 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v25;
      if ((v71 & 0x80u) == 0)
      {
        v57 = &__p;
      }

      else
      {
        v57 = __p;
      }

      memmove(a2, v57, v23);
      v56 = " Guidance module failed.";
LABEL_193:
      v61 = v54 + v23;
      *v61 = *v56;
      *(v61 + 16) = *(v56 + 2);
      *(v54 + v23 + 24) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 18:
      if ((v71 & 0x80u) == 0)
      {
        v31 = v71;
      }

      else
      {
        v31 = v70;
      }

      v32 = v31 + 25;
      if (v31 + 25 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v32 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v32;
      if ((v71 & 0x80u) == 0)
      {
        v62 = &__p;
      }

      else
      {
        v62 = __p;
      }

      memmove(a2, v62, v31);
      strcpy((a2 + v31), " Analytics module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 19:
      if ((v71 & 0x80u) == 0)
      {
        v36 = v71;
      }

      else
      {
        v36 = v70;
      }

      v37 = v36 + 32;
      if (v36 + 32 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_216:
        sub_3244();
      }

      if (v37 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v37;
      if ((v71 & 0x80u) == 0)
      {
        v66 = &__p;
      }

      else
      {
        v66 = __p;
      }

      memmove(a2, v66, v36);
      strcpy((a2 + v36), " Response builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      if (v71 < 0)
      {
LABEL_215:
        operator delete(__p);
      }

      return;
  }
}

void sub_DEA5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DEA65C(int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = 91;
  v67 = 93;
  sub_DE82A8(&v68, byte_22AC863, &v67, &__p);
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 14;
      strcpy(a2, "Unknown error.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 1:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v24 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v24 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v24;
      if ((v71 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(a2, p_p, v23);
      v56 = " Input resolving failed.";
      goto LABEL_193;
    case 2:
      if ((v71 & 0x80u) == 0)
      {
        v16 = v71;
      }

      else
      {
        v16 = v70;
      }

      v17 = v16 + 27;
      if (v16 + 27 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v17 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v17;
      if ((v71 & 0x80u) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p;
      }

      memmove(a2, v47, v16);
      strcpy((a2 + v16), " Request validation failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 3:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v21 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v21 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v21;
      if ((v71 & 0x80u) == 0)
      {
        v50 = &__p;
      }

      else
      {
        v50 = __p;
      }

      memmove(a2, v50, v20);
      v51 = " Path decoder module failed.";
      goto LABEL_169;
    case 4:
      if ((v71 & 0x80u) == 0)
      {
        v10 = v71;
      }

      else
      {
        v10 = v70;
      }

      v11 = v10 + 39;
      if (v10 + 39 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v11 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v11;
      if ((v71 & 0x80u) == 0)
      {
        v43 = &__p;
      }

      else
      {
        v43 = __p;
      }

      memmove(a2, v43, v10);
      strcpy((a2 + v10), " Input point transformer module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 5:
      if ((v71 & 0x80u) == 0)
      {
        v26 = v71;
      }

      else
      {
        v26 = v70;
      }

      v27 = v26 + 30;
      if (v26 + 30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v27 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v27;
      if ((v71 & 0x80u) == 0)
      {
        v58 = &__p;
      }

      else
      {
        v58 = __p;
      }

      memmove(a2, v58, v26);
      strcpy((a2 + v26), " Coverage check module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 6:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v30 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v30 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v30;
      if ((v71 & 0x80u) == 0)
      {
        v60 = &__p;
      }

      else
      {
        v60 = __p;
      }

      memmove(a2, v60, v23);
      v56 = " Snapping module failed.";
      goto LABEL_193;
    case 7:
      if ((v71 & 0x80u) == 0)
      {
        v20 = v71;
      }

      else
      {
        v20 = v70;
      }

      v22 = v20 + 28;
      if (v20 + 28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v22 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v49 = a2;
      *(a2 + 23) = v22;
      if ((v71 & 0x80u) == 0)
      {
        v52 = &__p;
      }

      else
      {
        v52 = __p;
      }

      memmove(a2, v52, v20);
      v51 = " Path finding module failed.";
LABEL_169:
      v53 = (v49 + v20);
      *v53 = *v51;
      *(v53 + 12) = *(v51 + 12);
      *(v49 + v20 + 28) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 8:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v35 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v35 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v35;
      if ((v71 & 0x80u) == 0)
      {
        v64 = &__p;
      }

      else
      {
        v64 = __p;
      }

      memmove(a2, v64, v6);
      v41 = " Journey planner module failed.";
      goto LABEL_209;
    case 9:
      if ((v71 & 0x80u) == 0)
      {
        v14 = v71;
      }

      else
      {
        v14 = v70;
      }

      v15 = v14 + 19;
      if (v14 + 19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v15;
      if (v14)
      {
        if ((v71 & 0x80u) == 0)
        {
          v45 = &__p;
        }

        else
        {
          v45 = __p;
        }

        memmove(a2, v45, v14);
      }

      v46 = a2 + v14;
      *v46 = *" ETA module failed.";
      *(v46 + 15) = 778331500;
      *(a2 + v14 + 19) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 10:
      if ((v71 & 0x80u) == 0)
      {
        v33 = v71;
      }

      else
      {
        v33 = v70;
      }

      v34 = v33 + 34;
      if (v33 + 34 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v34 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v34;
      if ((v71 & 0x80u) == 0)
      {
        v63 = &__p;
      }

      else
      {
        v63 = __p;
      }

      memmove(a2, v63, v33);
      strcpy((a2 + v33), " ETA module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 11:
      if ((v71 & 0x80u) == 0)
      {
        v8 = v71;
      }

      else
      {
        v8 = v70;
      }

      v9 = v8 + 41;
      if (v8 + 41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v9 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v9;
      if ((v71 & 0x80u) == 0)
      {
        v42 = &__p;
      }

      else
      {
        v42 = __p;
      }

      memmove(a2, v42, v8);
      strcpy((a2 + v8), " Traversal time prediction module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 12:
      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70;
      }

      v13 = v12 + 29;
      if (v12 + 29 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v13 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v13;
      if ((v71 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      memmove(a2, v44, v12);
      strcpy((a2 + v12), " Route builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 13:
      if ((v71 & 0x80u) == 0)
      {
        v28 = v71;
      }

      else
      {
        v28 = v70;
      }

      v29 = v28 + 44;
      if (v28 + 44 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v29 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v29;
      if ((v71 & 0x80u) == 0)
      {
        v59 = &__p;
      }

      else
      {
        v59 = __p;
      }

      memmove(a2, v59, v28);
      strcpy((a2 + v28), " Route builder module failed for user route.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 14:
      if ((v71 & 0x80u) == 0)
      {
        v6 = v71;
      }

      else
      {
        v6 = v70;
      }

      v7 = v6 + 31;
      if (v6 + 31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v7 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v39 = a2;
      *(a2 + 23) = v7;
      if ((v71 & 0x80u) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p;
      }

      memmove(a2, v40, v6);
      v41 = " Route selection module failed.";
LABEL_209:
      v65 = (v39 + v6);
      *v65 = *v41;
      *(v65 + 15) = *(v41 + 15);
      *(v39 + v6 + 31) = 0;
      if ((v71 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_215;
    case 15:
      if ((v71 & 0x80u) == 0)
      {
        v18 = v71;
      }

      else
      {
        v18 = v70;
      }

      v19 = v18 + 45;
      if (v18 + 45 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v19 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v19;
      if ((v71 & 0x80u) == 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p;
      }

      memmove(a2, v48, v18);
      strcpy((a2 + v18), " Driving to walking transition module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 16:
      if ((v71 & 0x80u) == 0)
      {
        v4 = v71;
      }

      else
      {
        v4 = v70;
      }

      v5 = v4 + 35;
      if (v4 + 35 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v5 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v5;
      if ((v71 & 0x80u) == 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      memmove(a2, v38, v4);
      strcpy((a2 + v4), " Route line geometry module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 17:
      if ((v71 & 0x80u) == 0)
      {
        v23 = v71;
      }

      else
      {
        v23 = v70;
      }

      v25 = v23 + 24;
      if (v23 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v25 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v54 = a2;
      *(a2 + 23) = v25;
      if ((v71 & 0x80u) == 0)
      {
        v57 = &__p;
      }

      else
      {
        v57 = __p;
      }

      memmove(a2, v57, v23);
      v56 = " Guidance module failed.";
LABEL_193:
      v61 = v54 + v23;
      *v61 = *v56;
      *(v61 + 16) = *(v56 + 2);
      *(v54 + v23 + 24) = 0;
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 18:
      if ((v71 & 0x80u) == 0)
      {
        v31 = v71;
      }

      else
      {
        v31 = v70;
      }

      v32 = v31 + 25;
      if (v31 + 25 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_216;
      }

      if (v32 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v32;
      if ((v71 & 0x80u) == 0)
      {
        v62 = &__p;
      }

      else
      {
        v62 = __p;
      }

      memmove(a2, v62, v31);
      strcpy((a2 + v31), " Analytics module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    case 19:
      if ((v71 & 0x80u) == 0)
      {
        v36 = v71;
      }

      else
      {
        v36 = v70;
      }

      v37 = v36 + 32;
      if (v36 + 32 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_216:
        sub_3244();
      }

      if (v37 > 0x16)
      {
        operator new();
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a2 + 23) = v37;
      if ((v71 & 0x80u) == 0)
      {
        v66 = &__p;
      }

      else
      {
        v66 = __p;
      }

      memmove(a2, v66, v36);
      strcpy((a2 + v36), " Response builder module failed.");
      if (v71 < 0)
      {
        goto LABEL_215;
      }

      return;
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      if (v71 < 0)
      {
LABEL_215:
        operator delete(__p);
      }

      return;
  }
}

void sub_DEB674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DEB6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *sub_3B8500(a3);
  v8 = 12;
  strcpy(__p, "Plan.Started");
  sub_7BDA0(a1, __p, v6);
  if (v8 < 0)
  {
    operator delete(*__p);
    if (!sub_E7F33C(a2))
    {
      goto LABEL_7;
    }
  }

  else if (!sub_E7F33C(a2))
  {
    goto LABEL_7;
  }

  if (!sub_3B6984(a3) || (v8 = 16, strcpy(__p, "Plan.Started[EV]"), sub_7BDA0(a1, __p, v6), (v8 & 0x80000000) == 0))
  {
LABEL_7:
    if (!sub_E7A428(a2))
    {
      return;
    }

    goto LABEL_8;
  }

  operator delete(*__p);
  if (!sub_E7A428(a2))
  {
    return;
  }

LABEL_8:
  v8 = 17;
  strcpy(__p, "Plan.Started[MPR]");
  sub_7BDA0(a1, __p, v6);
  if (v8 < 0)
  {
    operator delete(*__p);
  }
}

void sub_DEB84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DEB870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *sub_3B8500(a3);
  v8 = 12;
  strcpy(__p, "Plan.Started");
  sub_7BDA0(a1, __p, v6);
  if (v8 < 0)
  {
    operator delete(*__p);
    if (!sub_E7F8D4(a2))
    {
      goto LABEL_7;
    }
  }

  else if (!sub_E7F8D4(a2))
  {
    goto LABEL_7;
  }

  if (!sub_3B6984(a3) || (v8 = 16, strcpy(__p, "Plan.Started[EV]"), sub_7BDA0(a1, __p, v6), (v8 & 0x80000000) == 0))
  {
LABEL_7:
    if (!sub_E7C46C(a2))
    {
      return;
    }

    goto LABEL_8;
  }

  operator delete(*__p);
  if (!sub_E7C46C(a2))
  {
    return;
  }

LABEL_8:
  v8 = 17;
  strcpy(__p, "Plan.Started[MPR]");
  sub_7BDA0(a1, __p, v6);
  if (v8 < 0)
  {
    operator delete(*__p);
  }
}

void sub_DEB9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DEBA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *sub_3B8500(a3);
  v8 = 12;
  strcpy(__p, "Plan.Started");
  sub_7BDA0(a1, __p, v6);
  if (v8 < 0)
  {
    operator delete(*__p);
    if (!sub_394BD0())
    {
      goto LABEL_7;
    }
  }

  else if (!sub_394BD0())
  {
    goto LABEL_7;
  }

  if (!sub_3B6984(a3) || (v8 = 16, strcpy(__p, "Plan.Started[EV]"), sub_7BDA0(a1, __p, v6), (v8 & 0x80000000) == 0))
  {
LABEL_7:
    if (!sub_E84290(a2))
    {
      return;
    }

    goto LABEL_8;
  }

  operator delete(*__p);
  if (!sub_E84290(a2))
  {
    return;
  }

LABEL_8:
  v8 = 17;
  strcpy(__p, "Plan.Started[MPR]");
  sub_7BDA0(a1, __p, v6);
  if (v8 < 0)
  {
    operator delete(*__p);
  }
}

void sub_DEBB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DEBB90(uint64_t a1, const std::error_condition *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_E7A5E0(a3);
  if (v7 > 3)
  {
    if (v7 <= 0xD)
    {
      if (((1 << v7) & 0x2E80) != 0)
      {
        goto LABEL_8;
      }

      if (v7 == 8)
      {
        v8 = 5;
        HIBYTE(v11) = 5;
        qmemcpy(__p, "[CRC]", 5);
        goto LABEL_19;
      }

      if (v7 == 12)
      {
        operator new();
      }
    }

    if ((v7 - 5) < 2)
    {
      HIBYTE(v11) = 9;
      qmemcpy(__p, "[Biasing]", 9);
      v9 = &__p[9];
      goto LABEL_20;
    }

    if (v7 == 4)
    {
      HIBYTE(v11) = 22;
      qmemcpy(__p, "[LoadAnchorPointRoute]", sizeof(__p));
      v9 = &v11;
      goto LABEL_20;
    }

LABEL_8:
    HIBYTE(v11) = 0;
    v9 = __p;
    goto LABEL_20;
  }

  if (v7 < 2)
  {
    HIBYTE(v11) = 11;
    qmemcpy(__p, "[Rerouting]", 11);
    v9 = &__p[11];
    goto LABEL_20;
  }

  if (v7 == 2)
  {
    operator new();
  }

  if (v7 != 3)
  {
    goto LABEL_8;
  }

  v8 = 11;
  HIBYTE(v11) = 11;
  qmemcpy(__p, "[Retrieval]", 11);
LABEL_19:
  v9 = (__p | v8);
LABEL_20:
  *v9 = 0;
  sub_7C11C(a1, a2, __p, a4);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*__p);
  }
}

void sub_DEBDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DEBDFC(uint64_t a1, const std::error_condition *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_394BD0();
  if (v7 > 3)
  {
    if (v7 <= 0xD)
    {
      if (((1 << v7) & 0x2E80) != 0)
      {
        goto LABEL_8;
      }

      if (v7 == 8)
      {
        v8 = 5;
        HIBYTE(v11) = 5;
        qmemcpy(__p, "[CRC]", 5);
        goto LABEL_19;
      }

      if (v7 == 12)
      {
        operator new();
      }
    }

    if ((v7 - 5) < 2)
    {
      HIBYTE(v11) = 9;
      qmemcpy(__p, "[Biasing]", 9);
      v9 = &__p[9];
      goto LABEL_20;
    }

    if (v7 == 4)
    {
      HIBYTE(v11) = 22;
      qmemcpy(__p, "[LoadAnchorPointRoute]", sizeof(__p));
      v9 = &v11;
      goto LABEL_20;
    }

LABEL_8:
    HIBYTE(v11) = 0;
    v9 = __p;
    goto LABEL_20;
  }

  if (v7 < 2)
  {
    HIBYTE(v11) = 11;
    qmemcpy(__p, "[Rerouting]", 11);
    v9 = &__p[11];
    goto LABEL_20;
  }

  if (v7 == 2)
  {
    operator new();
  }

  if (v7 != 3)
  {
    goto LABEL_8;
  }

  v8 = 11;
  HIBYTE(v11) = 11;
  qmemcpy(__p, "[Retrieval]", 11);
LABEL_19:
  v9 = (__p | v8);
LABEL_20:
  *v9 = 0;
  sub_7C11C(a1, a2, __p, a4);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*__p);
  }
}

void sub_DEC04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DEC068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v24 = a4;
  *&__p = 0.0;
  v22 = 0;
  v23 = 0;
  *a3 = 1851878480;
  *(a3 + 23) = 4;
  sub_D89468((a3 + 24), &__p);
  v7 = __p;
  if (*&__p != 0.0)
  {
    v8 = v22;
    v9 = __p;
    if (v22 != __p)
    {
      do
      {
        v10 = *(v8 - 25);
        v8 -= 6;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v22 = v7;
    operator delete(v9);
  }

  v12 = *(a3 + 32);
  v11 = *(a3 + 40);
  v25 = 1;
  LODWORD(__p) = 0;
  if (v12 >= v11)
  {
    v13 = sub_DEFC2C((a3 + 24), "Runtime", &v25, &v24, &__p);
  }

  else
  {
    sub_DEFDF0(v12, "Runtime", &v25, &v24, &__p);
    v13 = v12 + 48;
  }

  *(a3 + 32) = v13;
  if (sub_E7F33C(a1) && sub_3B6984(a2))
  {
    HIBYTE(v23) = 4;
    strcpy(&__p, "[EV]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E7A428(a1))
  {
    HIBYTE(v23) = 5;
    strcpy(&__p, "[MPR]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E7AAB8(a1))
  {
    HIBYTE(v23) = 4;
    strcpy(&__p, "[LI]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E7A58C(a1))
  {
    HIBYTE(v23) = 7;
    strcpy(&__p, "[DOOM2]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E8166C(a1))
  {
    v25 = 4;
    LODWORD(__p) = 1;
    v14 = *(a3 + 32);
    if (v14 >= *(a3 + 40))
    {
      v15 = sub_D895C0((a3 + 24), "RequestWithTrafficAttached", &v25, &__p);
    }

    else
    {
      sub_D89774(*(a3 + 32), "RequestWithTrafficAttached", &v25, &__p);
      v15 = v14 + 48;
    }

    *(a3 + 32) = v15;
  }

  v16 = sub_74700();
  result = sub_73E7C(v16);
  if (result)
  {
    v25 = 3;
    *&__p = sub_73E18(v16) / 1000000.0;
    v18 = *(a3 + 32);
    if (v18 >= *(a3 + 40))
    {
      v19 = sub_D8B5C8((a3 + 24), "Arena.Used", &v25, &__p);
    }

    else
    {
      sub_D8B77C(*(a3 + 32), "Arena.Used", &v25, &__p);
      v19 = v18 + 48;
    }

    *(a3 + 32) = v19;
    v25 = 3;
    *&__p = sub_73E7C(v16) / 1000000.0;
    v20 = *(a3 + 32);
    if (v20 >= *(a3 + 40))
    {
      result = sub_D8B8D4((a3 + 24), "Arena.Allocated", &v25, &__p);
    }

    else
    {
      sub_D8BA88(*(a3 + 32), "Arena.Allocated", &v25, &__p);
      result = v20 + 48;
    }

    *(a3 + 32) = result;
  }

  return result;
}

void sub_DEC3D0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DEC454(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DEC494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_9E38(va);
  _Unwind_Resume(a1);
}

void sub_DEC4E0(const void **a1, uint64_t *a2, double a3)
{
  v15 = a3;
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  if (v3 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v3 + 7 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v14 = 0;
  HIBYTE(v14) = v3 + 7;
  strcpy(__p, "Runtime");
  if (v3)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    memmove(__p + 7, v6, v3);
  }

  *(__p + v3 + 7) = 0;
  v12 = 1;
  v7 = a2[4];
  if (v7 >= a2[5])
  {
    v10 = sub_DE6A74(a2 + 3, __p, &v12, &v15);
    v11 = HIBYTE(v14);
    a2[4] = v10;
    if ((v11 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

  v8 = HIBYTE(v14);
  if (SHIBYTE(v14) < 0)
  {
    sub_325C(a2[4], __p[0], __p[1]);
  }

  else
  {
    v9 = *__p;
    *(v7 + 16) = v14;
    *v7 = v9;
  }

  *(v7 + 24) = 1;
  *(v7 + 32) = a3;
  *(v7 + 40) = 1;
  a2[4] = v7 + 48;
  a2[4] = v7 + 48;
  if (v8 < 0)
  {
LABEL_19:
    operator delete(__p[0]);
  }
}

void sub_DEC68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 32) = v17;
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_DEC6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v24 = a4;
  *&__p = 0.0;
  v22 = 0;
  v23 = 0;
  *a3 = 1851878480;
  *(a3 + 23) = 4;
  sub_D89468((a3 + 24), &__p);
  v7 = __p;
  if (*&__p != 0.0)
  {
    v8 = v22;
    v9 = __p;
    if (v22 != __p)
    {
      do
      {
        v10 = *(v8 - 25);
        v8 -= 6;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v22 = v7;
    operator delete(v9);
  }

  v12 = *(a3 + 32);
  v11 = *(a3 + 40);
  v25 = 1;
  LODWORD(__p) = 0;
  if (v12 >= v11)
  {
    v13 = sub_DEFC2C((a3 + 24), "Runtime", &v25, &v24, &__p);
  }

  else
  {
    sub_DEFDF0(v12, "Runtime", &v25, &v24, &__p);
    v13 = v12 + 48;
  }

  *(a3 + 32) = v13;
  if (sub_E7F8D4(a1) && sub_3B6984(a2))
  {
    HIBYTE(v23) = 4;
    strcpy(&__p, "[EV]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E7C46C(a1))
  {
    HIBYTE(v23) = 5;
    strcpy(&__p, "[MPR]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_394BD0())
  {
    HIBYTE(v23) = 4;
    strcpy(&__p, "[LI]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_394BD0())
  {
    HIBYTE(v23) = 7;
    strcpy(&__p, "[DOOM2]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E8167C(a1))
  {
    v25 = 4;
    LODWORD(__p) = 1;
    v14 = *(a3 + 32);
    if (v14 >= *(a3 + 40))
    {
      v15 = sub_D895C0((a3 + 24), "RequestWithTrafficAttached", &v25, &__p);
    }

    else
    {
      sub_D89774(*(a3 + 32), "RequestWithTrafficAttached", &v25, &__p);
      v15 = v14 + 48;
    }

    *(a3 + 32) = v15;
  }

  v16 = sub_74700();
  result = sub_73E7C(v16);
  if (result)
  {
    v25 = 3;
    *&__p = sub_73E18(v16) / 1000000.0;
    v18 = *(a3 + 32);
    if (v18 >= *(a3 + 40))
    {
      v19 = sub_D8B5C8((a3 + 24), "Arena.Used", &v25, &__p);
    }

    else
    {
      sub_D8B77C(*(a3 + 32), "Arena.Used", &v25, &__p);
      v19 = v18 + 48;
    }

    *(a3 + 32) = v19;
    v25 = 3;
    *&__p = sub_73E7C(v16) / 1000000.0;
    v20 = *(a3 + 32);
    if (v20 >= *(a3 + 40))
    {
      result = sub_D8B8D4((a3 + 24), "Arena.Allocated", &v25, &__p);
    }

    else
    {
      sub_D8BA88(*(a3 + 32), "Arena.Allocated", &v25, &__p);
      result = v20 + 48;
    }

    *(a3 + 32) = result;
  }

  return result;
}

void sub_DECA1C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DECAA0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DECAE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_9E38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DECB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v24 = a4;
  *&__p = 0.0;
  v22 = 0;
  v23 = 0;
  *a3 = 1851878480;
  *(a3 + 23) = 4;
  sub_D89468((a3 + 24), &__p);
  v7 = __p;
  if (*&__p != 0.0)
  {
    v8 = v22;
    v9 = __p;
    if (v22 != __p)
    {
      do
      {
        v10 = *(v8 - 25);
        v8 -= 6;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v22 = v7;
    operator delete(v9);
  }

  v12 = *(a3 + 32);
  v11 = *(a3 + 40);
  v25 = 1;
  LODWORD(__p) = 0;
  if (v12 >= v11)
  {
    v13 = sub_DEFC2C((a3 + 24), "Runtime", &v25, &v24, &__p);
  }

  else
  {
    sub_DEFDF0(v12, "Runtime", &v25, &v24, &__p);
    v13 = v12 + 48;
  }

  *(a3 + 32) = v13;
  if (sub_394BD0() && sub_3B6984(a2))
  {
    HIBYTE(v23) = 4;
    strcpy(&__p, "[EV]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E84290(a1))
  {
    HIBYTE(v23) = 5;
    strcpy(&__p, "[MPR]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_394BD0())
  {
    HIBYTE(v23) = 4;
    strcpy(&__p, "[LI]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_394BD0())
  {
    HIBYTE(v23) = 7;
    strcpy(&__p, "[DOOM2]");
    sub_DEC4E0(&__p, a3, v24);
  }

  if (sub_E8168C(a1))
  {
    v25 = 4;
    LODWORD(__p) = 1;
    v14 = *(a3 + 32);
    if (v14 >= *(a3 + 40))
    {
      v15 = sub_D895C0((a3 + 24), "RequestWithTrafficAttached", &v25, &__p);
    }

    else
    {
      sub_D89774(*(a3 + 32), "RequestWithTrafficAttached", &v25, &__p);
      v15 = v14 + 48;
    }

    *(a3 + 32) = v15;
  }

  v16 = sub_74700();
  result = sub_73E7C(v16);
  if (result)
  {
    v25 = 3;
    *&__p = sub_73E18(v16) / 1000000.0;
    v18 = *(a3 + 32);
    if (v18 >= *(a3 + 40))
    {
      v19 = sub_D8B5C8((a3 + 24), "Arena.Used", &v25, &__p);
    }

    else
    {
      sub_D8B77C(*(a3 + 32), "Arena.Used", &v25, &__p);
      v19 = v18 + 48;
    }

    *(a3 + 32) = v19;
    v25 = 3;
    *&__p = sub_73E7C(v16) / 1000000.0;
    v20 = *(a3 + 32);
    if (v20 >= *(a3 + 40))
    {
      result = sub_D8B8D4((a3 + 24), "Arena.Allocated", &v25, &__p);
    }

    else
    {
      sub_D8BA88(*(a3 + 32), "Arena.Allocated", &v25, &__p);
      result = v20 + 48;
    }

    *(a3 + 32) = result;
  }

  return result;
}

void sub_DECE94(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DECF18(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DECF58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_9E38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DECFA4(uint64_t result, void *a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    v5 = 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3);
    v8 = v5 + sub_E67BDC(result);
    v7 = 4;
    v6 = a4[4];
    if (v6 >= a4[5])
    {
      result = sub_DEFF34(a4 + 3, "MPR.NumWaypoints", &v7, &v8);
    }

    else
    {
      sub_DF00E8(a4[4], "MPR.NumWaypoints", &v7, &v8);
      result = v6 + 48;
      a4[4] = v6 + 48;
    }

    a4[4] = result;
  }

  return result;
}

void sub_DED058(unsigned int a1, uint64_t *a2, double a3)
{
  v19 = a3;
  if (a1 <= 3)
  {
    if (a1 < 2)
    {
      v5 = 11;
      v18 = 11;
      *&v17[7] = 1567059561;
      v6 = "[Rerouting]";
      goto LABEL_17;
    }

    if (a1 == 2)
    {
      operator new();
    }

    if (a1 == 3)
    {
      v5 = 11;
      v18 = 11;
      *&v17[7] = 1567383926;
      v6 = "[Retrieval]";
LABEL_17:
      *v17 = *v6;
      goto LABEL_18;
    }

LABEL_8:
    v5 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  if (a1 <= 0xD)
  {
    if (((1 << a1) & 0x2E80) != 0)
    {
      goto LABEL_8;
    }

    if (a1 == 8)
    {
      v5 = 5;
      v18 = 5;
      qmemcpy(v17, "[CRC]", 5);
      goto LABEL_18;
    }

    if (a1 == 12)
    {
      operator new();
    }
  }

  if (a1 - 5 < 2)
  {
    v5 = 9;
    v18 = 9;
    v17[8] = 93;
    v6 = "[Biasing]";
    goto LABEL_17;
  }

  if (a1 != 4)
  {
    goto LABEL_8;
  }

  v5 = 22;
  v18 = 22;
  qmemcpy(v17, "[LoadAnchorPointRoute]", sizeof(v17));
LABEL_18:
  v17[v5] = 0;
  if (!v5)
  {
    return;
  }

  v7 = a1 > 1;
  v16 = v7;
  if (v5 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v5 + 7 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v15 = 0;
  __p[0] = 0x656D69746E7552;
  HIBYTE(v15) = v5 + 7;
  memmove(__p + 7, v17, v5);
  *(__p + v5 + 7) = 0;
  v13 = 1;
  v8 = a2[4];
  if (v8 >= a2[5])
  {
    v11 = sub_DF0238(a2 + 3, __p, &v13, &v19, &v16);
    v12 = HIBYTE(v15);
    a2[4] = v11;
    if ((v12 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  v9 = HIBYTE(v15);
  if (SHIBYTE(v15) < 0)
  {
    sub_325C(a2[4], __p[0], __p[1]);
  }

  else
  {
    v10 = *__p;
    *(v8 + 16) = v15;
    *v8 = v10;
  }

  *(v8 + 24) = 1;
  *(v8 + 32) = a3;
  *(v8 + 40) = v7;
  a2[4] = v8 + 48;
  a2[4] = v8 + 48;
  if (v9 < 0)
  {
LABEL_29:
    operator delete(__p[0]);
  }
}

void sub_DED3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18)
{
  v21 = v19;
  *(v18 + 32) = v21;
  operator delete(__p);
  if (v20)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_DED418(int a1, uint64_t a2, uint64_t *a3, double a4)
{
  if (a1 > 9)
  {
    if (a1 == 15)
    {
      v12 = 8;
      strcpy(__dst, "[Widget]");
      goto LABEL_13;
    }

    if (a1 != 10)
    {
      goto LABEL_14;
    }

    v7 = "[LaunchAndGo]";
LABEL_11:
    v12 = 13;
    __dst[0] = *v7;
    *(__dst + 5) = *(v7 + 5);
    BYTE5(__dst[1]) = 0;
LABEL_13:
    sub_DEC4E0(__dst, a3, a4);
    goto LABEL_14;
  }

  if (a1 == 6)
  {
    v7 = "[RouteGenius]";
    goto LABEL_11;
  }

  if (a1 == 9)
  {
    v12 = 13;
    strcpy(__dst, "[TimeToLeave]");
    sub_DEC4E0(__dst, a3, a4);

    sub_E89A2C(a2);
    return;
  }

LABEL_14:
  if (sub_E89A2C(a2))
  {
    v8 = *(sub_3B6890(a2) + 8);
    v9 = v8 == 1 ? "[ArriveBy]" : "[LeaveAt]";
    v10 = v8 == 1 ? 10 : 9;
    v12 = v10;
    memcpy(__dst, v9, v10);
    *(__dst + v10) = 0;
    sub_DEC4E0(__dst, a3, a4);
    if (v12 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_DED5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DED5EC(int a1, int a2, int a3, uint64_t *a4)
{
  v23 = 0;
  LOBYTE(v21) = 0;
  v5 = &v21;
  if (a2)
  {
    v5 = (&v21 + 3);
    LODWORD(v21) = 3036741;
    v23 = 3;
    v6 = 7;
    if (!a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 4;
    if (!a3)
    {
LABEL_3:
      if ((a1 & 0xFE) == 4)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  *v5 = 777146445;
  if (v23 < 0)
  {
    v22 = v6;
  }

  else
  {
    v23 = v6;
  }

  *(&v21 | v6) = 0;
  if ((a1 & 0xFE) == 4)
  {
LABEL_4:
    if (v23 >= 0)
    {
      v7 = v23;
    }

    else
    {
      v7 = v22;
    }

    if (v7 + 13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 + 13 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v20 = 0;
    __p[0] = 0;
    HIBYTE(v20) = v7 + 13;
    if (v7)
    {
      if (v23 >= 0)
      {
        v8 = &v21;
      }

      else
      {
        v8 = v21;
      }

      memmove(__p, v8, v7);
    }

    strcpy(__p + v7, "TripCompleted");
    v18 = 4;
    v16 = 0;
    v17 = 1;
    v9 = a4[4];
    if (v9 < a4[5])
    {
      v10 = HIBYTE(v20);
      if (SHIBYTE(v20) < 0)
      {
LABEL_20:
        sub_325C(a4[4], __p[0], __p[1]);
        goto LABEL_39;
      }

LABEL_38:
      v13 = *__p;
      *(v9 + 16) = v20;
      *v9 = v13;
LABEL_39:
      *(v9 + 24) = 4;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      a4[4] = v9 + 48;
      a4[4] = v9 + 48;
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_43;
  }

LABEL_24:
  if (a1 != 3)
  {
    goto LABEL_41;
  }

  if (v23 >= 0)
  {
    v11 = v23;
  }

  else
  {
    v11 = v22;
  }

  if (v11 + 11 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v11 + 11 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  HIBYTE(v20) = v11 + 11;
  if (v11)
  {
    if (v23 >= 0)
    {
      v12 = &v21;
    }

    else
    {
      v12 = v21;
    }

    memmove(__p, v12, v11);
  }

  strcpy(__p + v11, "TripAborted");
  v18 = 4;
  v16 = 0;
  v17 = 1;
  v9 = a4[4];
  if (v9 < a4[5])
  {
    v10 = HIBYTE(v20);
    if (SHIBYTE(v20) < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_43:
  v14 = sub_DF0434(a4 + 3, __p, &v18, &v17, &v16);
  v15 = HIBYTE(v20);
  a4[4] = v14;
  if (v15 < 0)
  {
LABEL_40:
    operator delete(__p[0]);
  }

LABEL_41:
  if (v23 < 0)
  {
    operator delete(v21);
  }
}

void sub_DED94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = v23;
  *(v22 + 32) = v24;
  operator delete(__p);
  if (a22 < 0)
  {
    operator delete(a17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_DED9C0(uint64_t a1, int a2, int a3, int a4, uint64_t *a5)
{
  v131 = sub_74700();
  v10 = sub_4C4BD8(a1);
  v134 = 0;
  LOBYTE(v132) = 0;
  v11 = &v132;
  if (a3)
  {
    v11 = (&v132 + 3);
    LODWORD(v132) = 3036741;
    v134 = 3;
    v12 = 7;
    if (!a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 4;
    if (!a4)
    {
LABEL_3:
      if (a2 == 3)
      {
        goto LABEL_285;
      }

      goto LABEL_10;
    }
  }

  *v11 = 777146445;
  if (v134 < 0)
  {
    v133 = v12;
    *(&v132 | v12) = 0;
    if (a2 == 3)
    {
      goto LABEL_285;
    }
  }

  else
  {
    v134 = v12;
    *(&v132 | v12) = 0;
    if (a2 == 3)
    {
      goto LABEL_285;
    }
  }

LABEL_10:
  v13 = sub_4E4B18(a1, 0, 0);
  v14 = sub_4E4B18(a1, 2, 0);
  v15 = sub_4E4B18(a1, 1, 0);
  if (v134 >= 0)
  {
    v16 = v134;
  }

  else
  {
    v16 = v133;
  }

  if (v16 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v17 = v15;
  v129 = a3;
  if (v16 + 16 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v138.__locale_ = 0;
  __p[0] = 0;
  HIBYTE(v138.__locale_) = v16 + 16;
  if (v16)
  {
    if (v134 >= 0)
    {
      v18 = &v132;
    }

    else
    {
      v18 = v132;
    }

    memmove(__p, v18, v16);
  }

  strcpy(__p + v16, "MainRoute.Length");
  LOBYTE(v148[0]) = 7;
  if (v10 < 0)
  {
    v19 = -50;
  }

  else
  {
    v19 = 50;
  }

  v20 = (v10 / 100 + (((5243 * (v19 + v10 % 100)) >> 19) + ((5243 * (v19 + v10 % 100)) >> 31)));
  __dst = v20;
  v21 = a5[4];
  if (v21 >= a5[5])
  {
    a5[4] = sub_DF0624(a5 + 3, __p, v148, &__dst);
    if ((SHIBYTE(v138.__locale_) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

  if (SHIBYTE(v138.__locale_) < 0)
  {
    sub_325C(a5[4], __p[0], __p[1]);
    v20 = __dst;
  }

  else
  {
    v22 = *__p;
    *(v21 + 16) = v138;
    *v21 = v22;
  }

  *(v21 + 24) = 7;
  *(v21 + 32) = v20;
  *(v21 + 40) = 1;
  a5[4] = v21 + 48;
  a5[4] = v21 + 48;
  if (SHIBYTE(v138.__locale_) < 0)
  {
LABEL_112:
    operator delete(__p[0]);
  }

LABEL_28:
  if (v134 >= 0)
  {
    v23 = v134;
  }

  else
  {
    v23 = v133;
  }

  if (v23 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v23 + 13 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v138.__locale_ = 0;
  __p[0] = 0;
  HIBYTE(v138.__locale_) = v23 + 13;
  if (v23)
  {
    if (v134 >= 0)
    {
      v24 = &v132;
    }

    else
    {
      v24 = v132;
    }

    memmove(__p, v24, v23);
  }

  strcpy(__p + v23, "MainRoute.ETA");
  LOBYTE(v148[0]) = 0;
  if (v13 < 0)
  {
    v25 = -5;
  }

  else
  {
    v25 = 5;
  }

  v26 = v13 / 10 + (((103 * (v25 + v13 % 10)) >> 15) & 1) + ((103 * (v25 + v13 % 10)) >> 10);
  LODWORD(__dst) = v26;
  v27 = a5[4];
  if (v27 >= a5[5])
  {
    a5[4] = sub_DF0808(a5 + 3, __p, v148, &__dst);
    if ((SHIBYTE(v138.__locale_) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_115;
  }

  if (SHIBYTE(v138.__locale_) < 0)
  {
    sub_325C(a5[4], __p[0], __p[1]);
  }

  else
  {
    v28 = *__p;
    *(v27 + 16) = v138;
    *v27 = v28;
  }

  *(v27 + 24) = 0;
  *(v27 + 32) = v26;
  *(v27 + 40) = 1;
  a5[4] = v27 + 48;
  a5[4] = v27 + 48;
  if (SHIBYTE(v138.__locale_) < 0)
  {
LABEL_115:
    operator delete(__p[0]);
  }

LABEL_46:
  if (v134 >= 0)
  {
    v29 = v134;
  }

  else
  {
    v29 = v133;
  }

  if (v29 + 23 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v29 < 0xFFFFFFFFFFFFFFE9)
  {
    operator new();
  }

  __p[1] = 0;
  v138.__locale_ = 0;
  __p[0] = 0;
  HIBYTE(v138.__locale_) = v29 + 23;
  if (v134 >= 0)
  {
    v30 = &v132;
  }

  else
  {
    v30 = v132;
  }

  memmove(__p, v30, v29);
  strcpy(__p + v29, "MainRoute.HistoricalETA");
  LOBYTE(v148[0]) = 0;
  if (v14 < 0)
  {
    v31 = -5;
  }

  else
  {
    v31 = 5;
  }

  v32 = v14 / 10 + (((103 * (v31 + v14 % 10)) >> 15) & 1) + ((103 * (v31 + v14 % 10)) >> 10);
  LODWORD(__dst) = v32;
  v33 = a5[4];
  if (v33 >= a5[5])
  {
    a5[4] = sub_DF0808(a5 + 3, __p, v148, &__dst);
    if ((SHIBYTE(v138.__locale_) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_118;
  }

  if (SHIBYTE(v138.__locale_) < 0)
  {
    sub_325C(a5[4], __p[0], __p[1]);
  }

  else
  {
    v34 = *__p;
    *(v33 + 16) = v138;
    *v33 = v34;
  }

  *(v33 + 24) = 0;
  *(v33 + 32) = v32;
  *(v33 + 40) = 1;
  a5[4] = v33 + 48;
  a5[4] = v33 + 48;
  if (SHIBYTE(v138.__locale_) < 0)
  {
LABEL_118:
    operator delete(__p[0]);
  }

LABEL_62:
  if (v134 >= 0)
  {
    v35 = v134;
  }

  else
  {
    v35 = v133;
  }

  if (v35 + 21 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v35 + 21 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v138.__locale_ = 0;
  __p[0] = 0;
  HIBYTE(v138.__locale_) = v35 + 21;
  if (v35)
  {
    if (v134 >= 0)
    {
      v36 = &v132;
    }

    else
    {
      v36 = v132;
    }

    memmove(__p, v36, v35);
  }

  strcpy(__p + v35, "MainRoute.FreeflowETA");
  LOBYTE(v148[0]) = 0;
  if (v17 < 0)
  {
    v37 = -5;
  }

  else
  {
    v37 = 5;
  }

  v38 = v17 / 10 + (((103 * (v37 + v17 % 10)) >> 15) & 1) + ((103 * (v37 + v17 % 10)) >> 10);
  LODWORD(__dst) = v38;
  v39 = a5[4];
  if (v39 >= a5[5])
  {
    a5[4] = sub_DF0808(a5 + 3, __p, v148, &__dst);
    if ((SHIBYTE(v138.__locale_) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_121;
  }

  if (SHIBYTE(v138.__locale_) < 0)
  {
    sub_325C(a5[4], __p[0], __p[1]);
  }

  else
  {
    v40 = *__p;
    *(v39 + 16) = v138;
    *v39 = v40;
  }

  *(v39 + 24) = 0;
  *(v39 + 32) = v38;
  *(v39 + 40) = 1;
  a5[4] = v39 + 48;
  a5[4] = v39 + 48;
  if (SHIBYTE(v138.__locale_) < 0)
  {
LABEL_121:
    operator delete(__p[0]);
  }

LABEL_80:
  if (v134 >= 0)
  {
    v41 = v134;
  }

  else
  {
    v41 = v133;
  }

  if (v41 + 24 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v41 + 24 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v138.__locale_ = 0;
  __p[0] = 0;
  HIBYTE(v138.__locale_) = v41 + 24;
  if (v134 >= 0)
  {
    v42 = &v132;
  }

  else
  {
    v42 = v132;
  }

  memmove(__p, v42, v41);
  v43 = v13 - v14;
  strcpy(__p + v41, "MainRoute.ETA-Historical");
  LOBYTE(v148[0]) = 0;
  if (v13 < v14)
  {
    v44 = -5;
  }

  else
  {
    v44 = 5;
  }

  v45 = (v13 - v14) / 10 + (((103 * (v44 + (v13 - v14) % 10)) >> 15) & 1) + ((103 * (v44 + (v13 - v14) % 10)) >> 10);
  LODWORD(__dst) = v45;
  v46 = a5[4];
  if (v46 >= a5[5])
  {
    a5[4] = sub_DF0808(a5 + 3, __p, v148, &__dst);
    if (SHIBYTE(v138.__locale_) < 0)
    {
      goto LABEL_124;
    }

LABEL_96:
    if (v43 < 1)
    {
      goto LABEL_125;
    }

LABEL_97:
    if (v134 >= 0)
    {
      v48 = v134;
    }

    else
    {
      v48 = v133;
    }

    if (v48 + 29 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v48 + 29 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v138.__locale_ = 0;
    __p[0] = 0;
    HIBYTE(v138.__locale_) = v48 + 29;
    if (v134 >= 0)
    {
      v49 = &v132;
    }

    else
    {
      v49 = v132;
    }

    memmove(__p, v49, v48);
    strcpy(__p + v48, "MainRoute.ETA-Historical.Over");
    LOBYTE(v148[0]) = 0;
    LODWORD(__dst) = v45;
    v50 = a5[4];
    if (v50 < a5[5])
    {
      if (SHIBYTE(v138.__locale_) < 0)
      {
        sub_325C(a5[4], __p[0], __p[1]);
      }

      else
      {
        v51 = *__p;
        *(v50 + 16) = v138;
        *v50 = v51;
      }

      v54 = v45;
      goto LABEL_134;
    }

LABEL_109:
    v52 = sub_DF0808(a5 + 3, __p, v148, &__dst);
    goto LABEL_135;
  }

  if (SHIBYTE(v138.__locale_) < 0)
  {
    sub_325C(a5[4], __p[0], __p[1]);
  }

  else
  {
    v47 = *__p;
    *(v46 + 16) = v138;
    *v46 = v47;
  }

  *(v46 + 24) = 0;
  *(v46 + 32) = v45;
  *(v46 + 40) = 1;
  a5[4] = v46 + 48;
  a5[4] = v46 + 48;
  if ((SHIBYTE(v138.__locale_) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

LABEL_124:
  operator delete(__p[0]);
  if (v43 >= 1)
  {
    goto LABEL_97;
  }

LABEL_125:
  if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_136;
  }

  if (v134 >= 0)
  {
    v53 = v134;
  }

  else
  {
    v53 = v133;
  }

  if (v53 + 30 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v53 + 30 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v138.__locale_ = 0;
  __p[0] = 0;
  HIBYTE(v138.__locale_) = v53 + 30;
  if (v134 >= 0)
  {
    v72 = &v132;
  }

  else
  {
    v72 = v132;
  }

  memmove(__p, v72, v53);
  strcpy(__p + v53, "MainRoute.ETA-Historical.Under");
  LOBYTE(v148[0]) = 0;
  LODWORD(__dst) = -v45;
  v50 = a5[4];
  if (v50 >= a5[5])
  {
    goto LABEL_109;
  }

  if (SHIBYTE(v138.__locale_) < 0)
  {
    sub_325C(a5[4], __p[0], __p[1]);
  }

  else
  {
    v73 = *__p;
    *(v50 + 16) = v138;
    *v50 = v73;
  }

  v54 = -v45;
LABEL_134:
  *(v50 + 24) = 0;
  *(v50 + 32) = v54;
  *(v50 + 40) = 1;
  v52 = v50 + 48;
  a5[4] = v50 + 48;
LABEL_135:
  a5[4] = v52;
  if ((SHIBYTE(v138.__locale_) & 0x80000000) == 0)
  {
LABEL_136:
    if (!v129)
    {
      goto LABEL_285;
    }

    goto LABEL_139;
  }

  operator delete(__p[0]);
  if (!v129)
  {
    goto LABEL_285;
  }

LABEL_139:
  v130 = sub_74700();
  v55 = sub_5FC64(a1);
  v56 = sub_445EF4(a1);
  if (v55 == v56)
  {
    v148[0] = 0;
    goto LABEL_166;
  }

  v57 = 0;
  do
  {
    v58 = sub_4D2130(v55);
    v59 = v58;
    if (*v58 != 0x7FFFFFFF && v58[9] != 0x7FFFFFFF && sub_4566B4(v58 + 2))
    {
      v61 = v59[28];
      if (v61)
      {
        if (v61 == 2)
        {
          v62 = *(v59 + 13);
          if (v62)
          {
            v63 = v62 >= 0xFFFFFFFF00000000;
          }

          else
          {
            v63 = 1;
          }

          if (!v63)
          {
            goto LABEL_142;
          }
        }

        else
        {
          if (v61 != 1)
          {
LABEL_328:
            sub_5AF20();
          }

          if (*(v59 + 13) != -1)
          {
LABEL_142:
            ++v57;
          }
        }
      }
    }

    v55 += 1096;
  }

  while (v55 != v56);
  v148[0] = v57;
  if (v57 >= 1)
  {
    if (v134 >= 0)
    {
      v64 = v134;
    }

    else
    {
      v64 = v133;
    }

    if (v64 + 26 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v64 + 26 > 0x16)
      {
        operator new();
      }

      __p[1] = 0;
      v138.__locale_ = 0;
      __p[0] = 0;
      HIBYTE(v138.__locale_) = v64 + 26;
      if (v134 >= 0)
      {
        v70 = &v132;
      }

      else
      {
        v70 = v132;
      }

      memmove(__p, v70, v64);
      strcpy(__p + v64, "MainRoute.NumChargingStops");
      LOBYTE(__dst) = 4;
      v67 = a5[4];
      if (v67 >= a5[5])
      {
        v69 = sub_DF09EC(a5 + 3, __p, &__dst, v148);
      }

      else
      {
        if (SHIBYTE(v138.__locale_) < 0)
        {
          sub_325C(a5[4], __p[0], __p[1]);
        }

        else
        {
          v71 = *__p;
          *(v67 + 16) = v138;
          *v67 = v71;
        }

        *(v67 + 24) = 4;
        *(v67 + 32) = v57;
        *(v67 + 40) = 1;
LABEL_198:
        v69 = v67 + 48;
        a5[4] = v67 + 48;
      }

      goto LABEL_199;
    }

LABEL_335:
    sub_3244();
  }

LABEL_166:
  if (v134 >= 0)
  {
    v65 = v134;
  }

  else
  {
    v65 = v133;
  }

  if (v65 + 25 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_335;
  }

  if (v65 + 25 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v138.__locale_ = 0;
  __p[0] = 0;
  HIBYTE(v138.__locale_) = v65 + 25;
  if (v134 >= 0)
  {
    v66 = &v132;
  }

  else
  {
    v66 = v132;
  }

  memmove(__p, v66, v65);
  strcpy(__p + v65, "MainRoute.NoChargingStops");
  LOBYTE(v147) = 4;
  LODWORD(__dst) = 1;
  v67 = a5[4];
  if (v67 < a5[5])
  {
    if (SHIBYTE(v138.__locale_) < 0)
    {
      sub_325C(a5[4], __p[0], __p[1]);
    }

    else
    {
      v68 = *__p;
      *(v67 + 16) = v138;
      *v67 = v68;
    }

    *(v67 + 24) = 4;
    *(v67 + 32) = 1;
    *(v67 + 40) = 1;
    goto LABEL_198;
  }

  v69 = sub_DF0808(a5 + 3, __p, &v147, &__dst);
LABEL_199:
  a5[4] = v69;
  if (SHIBYTE(v138.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  v147 = 0x7FFFFFFFFFFFFFFFLL;
  v74 = sub_5FC64(a1);
  v75 = sub_445EF4(a1);
  v76 = v75;
  if (v74 == v75 || v74 + 1096 == v75)
  {
    goto LABEL_270;
  }

  v77 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    v80 = sub_3EB950(v74);
    if (*v80 == -1 && *(v80 + 2) == 3)
    {
      v82 = sub_3EB950(v74 + 1096);
      if (*v82 == -1 && *(v82 + 2) == 3)
      {
        v84 = sub_4D2130(v74);
        v85 = v84;
        if (*v84 != 0x7FFFFFFF && v84[9] != 0x7FFFFFFF && sub_4566B4(v84 + 2))
        {
          v86 = v85[28];
          if (v86)
          {
            if (v86 == 2)
            {
              v87 = *(v85 + 13);
              if (v87 > 0xFFFFFFFEFFFFFFFFLL || !v87)
              {
                goto LABEL_207;
              }
            }

            else
            {
              if (v86 != 1)
              {
                goto LABEL_328;
              }

              if (*(v85 + 13) == -1)
              {
                goto LABEL_207;
              }
            }

            v88 = sub_4D2130(v74 + 1096);
            v89 = v88;
            if (*v88 == 0x7FFFFFFF)
            {
              goto LABEL_207;
            }

            if (v88[9] == 0x7FFFFFFF)
            {
              goto LABEL_207;
            }

            if (!sub_4566B4(v88 + 2))
            {
              goto LABEL_207;
            }

            v90 = v89[28];
            switch(v90)
            {
              case 0:
                goto LABEL_207;
              case 2:
                v91 = *(v89 + 13);
                if (v91 > 0xFFFFFFFEFFFFFFFFLL || !v91)
                {
                  goto LABEL_207;
                }

                break;
              case 1:
                if (*(v89 + 13) == -1)
                {
                  goto LABEL_207;
                }

                break;
              default:
                goto LABEL_328;
            }

            v92 = sub_4D1DB8(v74);
            __p[0] = v92;
            if (v77 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v78 = __p;
            }

            else if (v92 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v78 = &v147;
            }

            else if (v92 >= v77)
            {
              v78 = &v147;
            }

            else
            {
              v78 = __p;
            }

            v77 = *v78;
            v147 = *v78;
          }
        }
      }
    }

LABEL_207:
    v79 = v74 + 2192;
    v74 += 1096;
    if (v79 != v76)
    {
      continue;
    }

    break;
  }

  if (v77 <= 1999999 && sub_7E7E4(1u))
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "EV response contains at least 2 charging stops within 20 km (min distance: ", 75);
    v93 = std::ostream::operator<<();
    v94 = sub_4A5C(v93, " km):\n", 6);
    v95 = sub_73F1C(v130);
    v96 = *(v95 + 23);
    if (v96 >= 0)
    {
      v97 = v95;
    }

    else
    {
      v97 = *v95;
    }

    if (v96 >= 0)
    {
      v98 = *(v95 + 23);
    }

    else
    {
      v98 = *(v95 + 8);
    }

    sub_4A5C(v94, v97, v98);
    if ((v146 & 0x10) != 0)
    {
      v100 = v145;
      if (v145 < v142)
      {
        v145 = v142;
        v100 = v142;
      }

      v101 = &v141;
    }

    else
    {
      if ((v146 & 8) == 0)
      {
        v99 = 0;
        v136 = 0;
        goto LABEL_265;
      }

      v101 = v139;
      v100 = v140;
    }

    v102 = *v101;
    v99 = v100 - *v101;
    if (v99 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v99 >= 0x17)
    {
      operator new();
    }

    v136 = v100 - *v101;
    if (v99)
    {
      memmove(&__dst, v102, v99);
    }

LABEL_265:
    *(&__dst + v99) = 0;
    sub_7E854(&__dst, 1u);
    if (v136 < 0)
    {
      operator delete(__dst);
    }

    if (v144 < 0)
    {
      operator delete(v143);
    }

    std::locale::~locale(&v138);
    std::ostream::~ostream();
    std::ios::~ios();
  }

LABEL_270:
  if (!sub_4C49E0(a1))
  {
    goto LABEL_272;
  }

  v103 = sub_5FC64(a1);
  v104 = sub_445EF4(a1);
  v105 = v103 + 1096;
  if (v103 + 1096 == v104)
  {
    goto LABEL_272;
  }

  while (2)
  {
    v114 = sub_4D2130(v105);
    v115 = v114;
    if (*v114 == 0x7FFFFFFF || v114[9] == 0x7FFFFFFF)
    {
      goto LABEL_289;
    }

    if (!sub_4566B4(v114 + 2))
    {
      goto LABEL_289;
    }

    v117 = v115[28];
    if (!v117)
    {
      goto LABEL_289;
    }

    if (v117 == 2)
    {
      v118 = *(v115 + 13);
      if (v118 <= 0xFFFFFFFEFFFFFFFFLL && v118)
      {
        goto LABEL_302;
      }

      goto LABEL_289;
    }

    if (v117 != 1)
    {
      goto LABEL_328;
    }

    if (*(v115 + 13) == -1)
    {
      goto LABEL_289;
    }

LABEL_302:
    v119 = sub_4D2130(v105);
    if (sub_4470E4(v119 + 8) != 100)
    {
LABEL_289:
      v105 += 1096;
      if (v105 == v104)
      {
        goto LABEL_272;
      }

      continue;
    }

    break;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(__p);
    v120 = sub_4A5C(__p, "EV response contains at least one charging stop recommendation for charging to 100% SoC:\n", 89);
    v121 = sub_73F1C(v130);
    v122 = *(v121 + 23);
    if (v122 >= 0)
    {
      v123 = v121;
    }

    else
    {
      v123 = *v121;
    }

    if (v122 >= 0)
    {
      v124 = *(v121 + 23);
    }

    else
    {
      v124 = *(v121 + 8);
    }

    sub_4A5C(v120, v123, v124);
    if ((v146 & 0x10) != 0)
    {
      v126 = v145;
      if (v145 < v142)
      {
        v145 = v142;
        v126 = v142;
      }

      v127 = &v141;
    }

    else
    {
      if ((v146 & 8) == 0)
      {
        v125 = 0;
        v136 = 0;
        goto LABEL_323;
      }

      v127 = v139;
      v126 = v140;
    }

    v128 = *v127;
    v125 = v126 - *v127;
    if (v125 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v125 >= 0x17)
    {
      operator new();
    }

    v136 = v126 - *v127;
    if (v125)
    {
      memmove(&__dst, v128, v125);
    }

LABEL_323:
    *(&__dst + v125) = 0;
    sub_7E854(&__dst, 1u);
    if (v136 < 0)
    {
      operator delete(__dst);
    }

    if (v144 < 0)
    {
      operator delete(v143);
    }

    std::locale::~locale(&v138);
    std::ostream::~ostream();
    std::ios::~ios();
  }

LABEL_272:
  if (sub_4C49E0(a1))
  {
    v106 = sub_58BBC(a1);
    v107 = sub_4D39C4(*(v106 + 8) - 1096);
    __p[0] = sub_4DACB0(v107);
    LODWORD(__p[1]) = v108;
    if (sub_4566B4(__p) && sub_453DEC(a1) < 0.03 && sub_7E7E4(1u))
    {
      sub_19594F8(__p);
      v109 = sub_4A5C(__p, "EV response contains a main route with very low remaining SoC (less than 3%):\n", 78);
      v110 = sub_73F1C(v131);
      v111 = *(v110 + 23);
      if (v111 >= 0)
      {
        v112 = v110;
      }

      else
      {
        v112 = *v110;
      }

      if (v111 >= 0)
      {
        v113 = *(v110 + 23);
      }

      else
      {
        v113 = *(v110 + 8);
      }

      sub_4A5C(v109, v112, v113);
      sub_66B8(&__p[1], &__dst);
      sub_7E854(&__dst, 1u);
      if (v136 < 0)
      {
        operator delete(__dst);
      }

      sub_1959728(__p);
    }
  }

LABEL_285:
  if (v134 < 0)
  {
    operator delete(v132);
  }
}

void sub_DEF10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a23);
  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_DEF23C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t *a5)
{
  v21 = 0;
  LOBYTE(v19) = 0;
  v6 = &v19;
  if (a3)
  {
    v6 = (&v19 + 3);
    LODWORD(v19) = 3036741;
    v21 = 3;
    v7 = 7;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 4;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  *v6 = 777146445;
  if (v21 < 0)
  {
    v20 = v7;
  }

  else
  {
    v21 = v7;
  }

  *(&v19 | v7) = 0;
LABEL_9:
  if (sub_4EF388(a2) != 2)
  {
    goto LABEL_29;
  }

  if (v21 >= 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v20;
  }

  if (v8 + 18 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v8 + 18 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v18 = 0;
  __p[0] = 0;
  HIBYTE(v18) = v8 + 18;
  if (v8)
  {
    if (v21 >= 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19;
    }

    memmove(__p, v9, v8);
  }

  strcpy(__p + v8, "NavSession.started");
  v16 = 4;
  v15 = 1;
  v10 = a5[4];
  if (v10 >= a5[5])
  {
    v13 = sub_DF0808(a5 + 3, __p, &v16, &v15);
    v14 = HIBYTE(v18);
    a5[4] = v13;
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v11 = HIBYTE(v18);
  if (SHIBYTE(v18) < 0)
  {
    sub_325C(a5[4], __p[0], __p[1]);
  }

  else
  {
    v12 = *__p;
    *(v10 + 16) = v18;
    *v10 = v12;
  }

  *(v10 + 24) = 4;
  *(v10 + 32) = 1;
  *(v10 + 40) = 1;
  a5[4] = v10 + 48;
  a5[4] = v10 + 48;
  if (v11 < 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  if (v21 < 0)
  {
    operator delete(v19);
  }
}

void sub_DEF46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = v23;
  *(v22 + 32) = v24;
  operator delete(__p);
  if (a22 < 0)
  {
    operator delete(a17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DEF4CC(uint64_t a1, void *a2, uint64_t *a3)
{
  result = sub_E8166C(a1);
  if ((result & 1) == 0)
  {
    result = sub_3AF11C(a2);
    if (result != 0x7FFFFFFF)
    {
      v6 = result;
      __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v7 = std::chrono::system_clock::to_time_t(&__t) - v6;
      v10 = 0;
      LODWORD(__t.__d_.__rep_) = v7;
      v8 = a3[4];
      if (v8 >= a3[5])
      {
        result = sub_DF0BD0(a3 + 3, "TrafficLatency", &v10, &__t);
        v9 = result;
        a3[4] = result;
        if (v7 < 301)
        {
          return result;
        }
      }

      else
      {
        result = sub_DF0D84(a3[4], "TrafficLatency", &v10, &__t);
        v9 = v8 + 48;
        a3[4] = v9;
        a3[4] = v9;
        if (v7 < 301)
        {
          return result;
        }
      }

      v10 = 4;
      LODWORD(__t.__d_.__rep_) = 1;
      if (v9 >= a3[5])
      {
        result = sub_DF0ED4(a3 + 3, "TrafficLatency.high", &v10, &__t);
        a3[4] = result;
      }

      else
      {
        sub_DF1088(v9, "TrafficLatency.high", &v10, &__t);
        result = v9 + 48;
        a3[4] = v9 + 48;
        a3[4] = v9 + 48;
      }
    }
  }

  return result;
}

void sub_DEF630(unint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v7 = "[2-5]";
  v8 = "[51+]";
  if (a1 < 0x33)
  {
    v8 = "[6-50]";
  }

  if (a1 >= 6)
  {
    v7 = v8;
  }

  if (a1 == 1)
  {
    v9 = "[1]";
  }

  else
  {
    v9 = v7;
  }

  v10 = strlen(v9);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v20 = v10;
  if (v10)
  {
    memcpy(__dst, v9, v10);
  }

  *(__dst + v11) = 0;
  sub_DEC4E0(__dst, a3, a4);
  if (*(sub_3B6890(a2) + 8) == 1)
  {
    v12 = v20;
    if ((v20 & 0x80u) == 0)
    {
      v13 = v20;
    }

    else
    {
      v13 = __dst[1];
    }

    if (v13 + 10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 + 10 >= 0x17)
    {
      operator new();
    }

    v17 = 23929;
    v18 = 0;
    HIBYTE(v18) = v13 + 10;
    __p = *"[ArriveBy]";
    if (v13)
    {
      if ((v20 & 0x80u) == 0)
      {
        v14 = __dst;
      }

      else
      {
        v14 = __dst[0];
      }

      memmove(&v17 + 2, v14, v13);
    }

    *(&v17 + v13 + 2) = 0;
    sub_DEC4E0(&__p, a3, a4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
      if ((v12 & 0x80) == 0)
      {
        return;
      }
    }

    else if ((v12 & 0x80) == 0)
    {
      return;
    }
  }

  else if ((v20 & 0x80) == 0)
  {
    return;
  }

  v15 = __dst[0];

  operator delete(v15);
}

void sub_DEF898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((v20 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_DEF8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 513) == 1)
  {
    LOBYTE(v14[0]) = 4;
    v15[0] = 1;
    v8 = a4[4];
    if (v8 >= a4[5])
    {
      v9 = sub_DF11D8(a4 + 3, "EV.TransitionToNonEVRoute", v14, v15);
    }

    else
    {
      sub_DF138C(a4[4], "EV.TransitionToNonEVRoute", v14, v15);
      v9 = v8 + 48;
      a4[4] = v8 + 48;
    }

    a4[4] = v9;
  }

  result = sub_44F320(a1);
  if (result)
  {
    result = sub_4EF388(a2);
    if (result >= 5)
    {
      result = sub_E6F454(a1);
      if (result <= 0x7FFFFFFE)
      {
        LOBYTE(v14[0]) = 0;
        v11 = result / 0xA;
        if (result % 0xA > 4)
        {
          ++v11;
        }

        v15[0] = v11;
        v12 = a4[4];
        if (v12 >= a4[5])
        {
          v13 = sub_DBC0B8(a4 + 3, "EV.TimeSinceLastVehicleInformationUpdate", v14, v15);
        }

        else
        {
          sub_DBC26C(a4[4], "EV.TimeSinceLastVehicleInformationUpdate", v14, v15);
          v13 = v12 + 48;
          a4[4] = v12 + 48;
        }

        a4[4] = v13;
        v16 = 9;
        strcpy(v15, "EVRouting");
        memset(v14, 0, sizeof(v14));
        sub_3AEC94(a3, v15, v14);
        operator new();
      }
    }
  }

  return result;
}

void sub_DEFBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a16);
  if (a24 < 0)
  {
    operator delete(a19);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DEFC2C(uint64_t *a1, char *a2, char *a3, double *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_DEFDF0(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_DEFDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DEFDF0(uint64_t a1, char *__s, char *a3, double *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  *(&__dst + v11) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
  }

  else
  {
    *a1 = __dst;
    *(a1 + 16) = v18;
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
  }

  return a1;
}

uint64_t sub_DEFF34(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DF00E8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DF00D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF00E8(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DF0238(uint64_t *a1, uint64_t a2, char *a3, double *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((a1[1] - *a1) >> 4);
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v8 + *a1 - v13;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v8 + 48;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 48;
}

void sub_DF0420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF0434(uint64_t *a1, uint64_t a2, char *a3, int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((a1[1] - *a1) >> 4);
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v8 + *a1 - v13;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v8 + 48;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 48;
}

void sub_DF0610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF0624(uint64_t *a1, uint64_t a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((a1[1] - *a1) >> 4);
  v9 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v10 = v8;
  *(v8 + 24) = v9;
  *(v8 + 32) = *a4;
  *(v8 + 40) = 1;
  v11 = v8 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DF07F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF0808(uint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DF09D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF09EC(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DF0BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF0BD0(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DF0D84(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DF0D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF0D84(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DF0ED4(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DF1088(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DF1074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF1088(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DF11D8(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DF138C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DF1378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DF138C(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_DF14DC()
{
  byte_27B8FBF = 3;
  LODWORD(qword_27B8FA8) = 5136193;
  byte_27B8FD7 = 3;
  LODWORD(qword_27B8FC0) = 5136194;
  byte_27B8FEF = 3;
  LODWORD(qword_27B8FD8) = 5136195;
  byte_27B9007 = 15;
  strcpy(&qword_27B8FF0, "vehicle_mass_kg");
  byte_27B901F = 21;
  strcpy(&xmmword_27B9008, "vehicle_cargo_mass_kg");
  byte_27B9037 = 19;
  strcpy(&qword_27B9020, "vehicle_aux_power_w");
  byte_27B904F = 15;
  strcpy(&qword_27B9038, "dcdc_efficiency");
  strcpy(&qword_27B9050, "drive_train_efficiency");
  HIBYTE(word_27B9066) = 22;
  operator new();
}

void sub_DF16B8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B9066) < 0)
  {
    sub_21E4DE8();
  }

  sub_21E4DF4();
  _Unwind_Resume(a1);
}

void sub_DF16D8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_7E9A4(v6);
  v4 = sub_3B8500(v2);
  sub_D72984(&v5, v3, 0x15u, *v4, v2);
}

void sub_DF1F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_1758FB8(&STACK[0x3C0]);
  sub_9DA0(&a57);
  sub_1758FB8(&STACK[0x1100]);
  sub_454784(&STACK[0x1340]);
  sub_44FD90(&STACK[0x1370]);
  sub_5287C0(&STACK[0x1388]);
  sub_CF3C94(v57 - 184);
  _Unwind_Resume(a1);
}

void sub_DF201C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
    sub_CF3C94(v1 - 184);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xDF1FFCLL);
}

uint64_t sub_DF2040(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1758FB8(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_DF20DC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_7E9A4(v6);
  v4 = sub_3B8500(v2);
  sub_D72984(&v5, v3, 0x16u, *v4, v2);
}

void sub_DF290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_1758FB8(&STACK[0x3C0]);
  sub_9DA0(&a57);
  sub_1758FB8(&STACK[0x1100]);
  sub_454784(&STACK[0x1340]);
  sub_44FD90(&STACK[0x1370]);
  sub_5287C0(&STACK[0x1388]);
  sub_CF3C94(v57 - 184);
  _Unwind_Resume(a1);
}

void sub_DF2A20(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
    sub_CF3C94(v1 - 184);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xDF2A00);
}

void sub_DF2A44()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_7E9A4(v6);
  v4 = sub_3B8500(v2);
  sub_D72984(&v5, v3, 0x17u, *v4, v2);
}

void sub_DF3274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_1758FB8(&STACK[0x3C0]);
  sub_9DA0(&a57);
  sub_1758FB8(&STACK[0x1100]);
  sub_454784(&STACK[0x1340]);
  sub_44FD90(&STACK[0x1370]);
  sub_5287C0(&STACK[0x1388]);
  sub_CF3C94(v57 - 184);
  _Unwind_Resume(a1);
}

void sub_DF3388(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
    sub_CF3C94(v1 - 184);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xDF3368);
}

void sub_DF33AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x2B8uLL);
  *(a3 + 456) = 0x3FF0000000000000;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 5;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0x7FFFFFFF;
  *(a3 + 632) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 609) = 0u;
  *(a3 + 648) = -1;
  *(a3 + 656) = 0x7FFFFFFF;
  *(a3 + 660) = 0;
  *(a3 + 668) = 0;
  *(a3 + 672) = -1;
  *(a3 + 680) = -1;
  *(a3 + 704) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v13);
    sub_D4104C(v12, *a2, *(a2 + 8), **(a2 + 16));
  }

  sub_434934(&__dst, a1);
  LOBYTE(v18) = 0;
  v19 = __dst;
  __p = v15;
  v21 = v16;
  v15 = 0uLL;
  v16 = 0;
  v22 = v17;
  sub_D72D60(a3, &v18);
  if (v18 == 1)
  {
    sub_5287C0(&v19);
  }

  else
  {
    v6 = __p;
    if (__p)
    {
      v7 = *(&__p + 1);
      v8 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v8 = __p;
      }

      *(&__p + 1) = v6;
      operator delete(v8);
    }
  }

  v9 = v15;
  if (v15)
  {
    v10 = *(&v15 + 1);
    v11 = v15;
    if (*(&v15 + 1) != v15)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v15;
    }

    *(&v15 + 1) = v9;
    operator delete(v11);
  }
}

void sub_DF3B9C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
    sub_1959728(&STACK[0x2B0]);
    sub_D40D4C(v1);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D40D4C(v1);
  _Unwind_Resume(a1);
}

void sub_DF3CF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x368uLL);
  sub_4E3D18((a3 + 8));
  sub_4E3D18((a3 + 56));
  *(a3 + 104) = -1;
  *(a3 + 288) = 0;
  *(a3 + 296) = 0;
  *(a3 + 424) = 0;
  *(a3 + 556) = 0;
  *(a3 + 544) = 0;
  *(a3 + 552) = 0;
  *(a3 + 560) = 0u;
  *(a3 + 576) = 0u;
  *(a3 + 592) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 524) = 0u;
  *(a3 + 608) = 0x3FF0000000000000;
  *(a3 + 632) = 0;
  *(a3 + 616) = 0u;
  *(a3 + 640) = 5;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0u;
  *(a3 + 680) = 0u;
  *(a3 + 696) = 0x7FFFFFFF;
  *(a3 + 784) = 0u;
  *(a3 + 704) = 0u;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 761) = 0u;
  *(a3 + 800) = -1;
  *(a3 + 808) = 0x7FFFFFFF;
  *(a3 + 812) = 0;
  *(a3 + 820) = 0;
  *(a3 + 824) = -1;
  *(a3 + 832) = -1;
  *(a3 + 840) = 0;
  *(a3 + 848) = 0;
  *(a3 + 872) = 0;
  *(a3 + 880) = 0;
  *(a3 + 888) = 0;
  *(a3 + 896) = 0u;
  *(a3 + 912) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v21);
    sub_D75B84(&v17, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  }

  sub_434934(&v17, a1);
  LOBYTE(v12) = 0;
  v13 = v17;
  __p = v18;
  v15 = v19;
  v18 = 0uLL;
  v19 = 0;
  v16 = v20;
  sub_D1E024(a3, &v12);
  if (v12 == 1)
  {
    sub_D1D6D4(&v13);
  }

  else
  {
    v6 = __p;
    if (__p)
    {
      v7 = *(&__p + 1);
      v8 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v8 = __p;
      }

      *(&__p + 1) = v6;
      operator delete(v8);
    }
  }

  v9 = v18;
  if (v18)
  {
    v10 = *(&v18 + 1);
    v11 = v18;
    if (*(&v18 + 1) != v18)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v18;
    }

    *(&v18 + 1) = v9;
    operator delete(v11);
  }
}

void sub_DF4978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733A08);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D772D8(&STACK[0x608]);
  sub_D1D638(v15);
  _Unwind_Resume(a1);
}

uint64_t *sub_DF4ABC(uint64_t *result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xF128CFC4A33F128DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_4547F0(v10 - 552);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x76B981DAE6076BLL)
    {
      v12 = 0xF128CFC4A33F128DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x3B5CC0ED7303B5)
      {
        v14 = 0x76B981DAE6076BLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x76B981DAE6076BLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xF128CFC4A33F128DLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_DF4D5C(v8, v5);
        v5 += 552;
        v8 += 552;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 552;
      result = sub_4547F0(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &a2[v16];
    if (v15 != v8)
    {
      do
      {
        result = sub_DF4D5C(v8, v5);
        v5 += 552;
        v8 += 552;
        v16 -= 552;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_49D2CC(v15 + v19, &v17[v19]);
        v19 += 552;
      }

      while (&v17[v19] != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_DF4D30(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 552;
    v7 = -v4;
    do
    {
      v6 = sub_4547F0(v6) - 552;
      v7 += 552;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_DF4D5C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (a1 == a2)
  {
    v5 = *(a2 + 3);
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 64) = v6;
    *(a1 + 80) = v7;
    *(a1 + 48) = v5;
    v8 = *(a2 + 11);
    v9 = *(a2 + 12);
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 176) = v8;
    *(a1 + 192) = v9;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      if ((a2[23] & 0x80u) == 0)
      {
        v10 = a2[23];
      }

      else
      {
        a2 = *a2;
        v10 = *(v2 + 1);
      }

      sub_13B38(a1, a2, v10);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      sub_13A68(a1, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
    }

    sub_DF4F58((a1 + 24), *(v2 + 3), *(v2 + 4), 0x2E8BA2E8BA2E8BA3 * ((*(v2 + 4) - *(v2 + 3)) >> 3));
    v11 = *(v2 + 3);
    v12 = *(v2 + 4);
    v13 = *(v2 + 5);
    *(a1 + 96) = *(v2 + 12);
    *(a1 + 64) = v12;
    *(a1 + 80) = v13;
    *(a1 + 48) = v11;
    sub_DF50F8((a1 + 104), *(v2 + 13), *(v2 + 14), 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 14) - *(v2 + 13)) >> 3));
    sub_4D7C64((a1 + 128), *(v2 + 16), *(v2 + 17), 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 17) - *(v2 + 16)) >> 3));
    sub_31F64((a1 + 152), *(v2 + 19), *(v2 + 20), (*(v2 + 20) - *(v2 + 19)) >> 3);
    v14 = *(v2 + 11);
    v15 = *(v2 + 12);
    *(a1 + 208) = *(v2 + 26);
    *(a1 + 176) = v14;
    *(a1 + 192) = v15;
    sub_4D88D0((a1 + 216), *(v2 + 27), *(v2 + 28), (*(v2 + 28) - *(v2 + 27)) >> 4);
    sub_4D88D0((a1 + 240), *(v2 + 30), *(v2 + 31), (*(v2 + 31) - *(v2 + 30)) >> 4);
  }

  v16 = *(v2 + 264);
  v17 = *(v2 + 296);
  *(a1 + 280) = *(v2 + 280);
  *(a1 + 296) = v17;
  *(a1 + 264) = v16;
  v18 = *(v2 + 424);
  v20 = *(v2 + 376);
  v19 = *(v2 + 392);
  *(a1 + 408) = *(v2 + 408);
  *(a1 + 424) = v18;
  *(a1 + 376) = v20;
  *(a1 + 392) = v19;
  v21 = *(v2 + 488);
  v23 = *(v2 + 440);
  v22 = *(v2 + 456);
  *(a1 + 472) = *(v2 + 472);
  *(a1 + 488) = v21;
  *(a1 + 440) = v23;
  *(a1 + 456) = v22;
  v24 = *(v2 + 312);
  v25 = *(v2 + 328);
  v26 = *(v2 + 360);
  *(a1 + 344) = *(v2 + 344);
  *(a1 + 360) = v26;
  *(a1 + 312) = v24;
  *(a1 + 328) = v25;
  sub_3E428((a1 + 504), (v2 + 504));
  if (a1 != v2)
  {
    sub_31F64((a1 + 528), *(v2 + 66), *(v2 + 67), (*(v2 + 67) - *(v2 + 66)) >> 3);
  }

  return a1;
}

char *sub_DF4F58(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v9 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1745D1745D1745DLL)
      {
        v11 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x2E8BA2E8BA2E8BA3 * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_DF50F8(void **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 3);
          if (v12)
          {
            *(v10 - 2) = v12;
            operator delete(v12);
          }

          v10 -= 7;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x492492492492492)
    {
      v19 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x249249249249249)
      {
        v21 = 0x492492492492492;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v18 = v5[1];
        *v8 = *v5;
        *(v8 + 1) = v18;
        if (v5 != v8)
        {
          sub_3865E0(v8 + 4, *(v5 + 4), *(v5 + 5), (*(v5 + 5) - *(v5 + 4)) >> 4);
        }

        v5 = (v5 + 56);
        v8 += 7;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v22 = *(v13 - 24);
      if (v22)
      {
        *(v13 - 16) = v22;
        operator delete(v22);
      }

      v13 -= 56;
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = v13 - v8;
      v16 = a2;
      do
      {
        v17 = v16[1];
        *v8 = *v16;
        *(v8 + 1) = v17;
        if (v16 != v8)
        {
          sub_3865E0(v8 + 4, *(v16 + 4), *(v16 + 5), (*(v16 + 5) - *(v16 + 4)) >> 4);
        }

        v16 = (v16 + 56);
        v8 += 7;
        v15 -= 56;
      }

      while (v15);
      v13 = a1[1];
    }

    a1[1] = sub_49D6D0(a1, (v5 + v14), a3, v13);
  }
}

void sub_DF536C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  bzero((a5 + 8), 0x248uLL);
  sub_1757EA4(a5 + 8, 0, 0);
  *(a5 + 584) = 0;
  if (*(a1 + 8) == &off_2669FE0 && *a1 == 0)
  {
    sub_7E9A4(v82);
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v79 = v12;
    sub_E83114(v11, &__p);
    v14 = __p;
    v15 = v88.n128_u64[0];
    if (__p)
    {
      v16 = __p;
      if (__p != v88.n128_u64[0])
      {
        v17 = v88.n128_u64[0];
        do
        {
          v18 = *(v17 - 1);
          v17 -= 3;
          if (v18 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v14);
        v16 = __p;
      }

      v88.n128_u64[0] = v14;
      operator delete(v16);
    }

    v80 = v14 != v15;
    v81 = v13;
    sub_D2E1F4(&v79, &__p);
    sub_DF61B4(a5, &__p);
    if (__p == 1)
    {
      sub_1758FB8(&v88);
    }

    else
    {
      v22 = v89;
      if (v89)
      {
        v23 = *(&v89 + 1);
        v24 = v89;
        if (*(&v89 + 1) != v89)
        {
          do
          {
            if (*(v23 - 1) < 0)
            {
              operator delete(*(v23 - 24));
            }

            v23 -= 32;
          }

          while (v23 != v22);
          v24 = v89;
        }

        *(&v89 + 1) = v22;
        operator delete(v24);
      }
    }

    v28 = sub_7EAB4(v82);
    v29 = v28;
    v30 = *(a1 + 84);
    v31 = v30 != 0x7FFFFFFF && v30 <= v28;
    if (!v31 || !sub_7E7E4(1u))
    {
LABEL_86:
      v51 = *(a1 + 88);
      if (v51 != 0x7FFFFFFF && v51 <= v29)
      {
        v77.n128_u64[0] = 10;
        v77.n128_u64[1] = &off_2669FE0;
        sub_434934(&__dst, &v77);
        LOBYTE(__p) = 0;
        v88 = __dst;
        v89 = v84;
        v90 = v85;
        v84 = 0uLL;
        v85 = 0;
        LODWORD(v91) = v86;
        sub_DF61B4(a5, &__p);
        if (__p == 1)
        {
          sub_1758FB8(&v88);
        }

        else
        {
          v52 = v89;
          if (v89)
          {
            v53 = *(&v89 + 1);
            v54 = v89;
            if (*(&v89 + 1) != v89)
            {
              do
              {
                if (*(v53 - 1) < 0)
                {
                  operator delete(*(v53 - 24));
                }

                v53 -= 32;
              }

              while (v53 != v52);
              v54 = v89;
            }

            *(&v89 + 1) = v52;
            operator delete(v54);
          }
        }

        v55 = v84;
        if (v84)
        {
          v56 = *(&v84 + 1);
          v57 = v84;
          if (*(&v84 + 1) != v84)
          {
            do
            {
              if (*(v56 - 1) < 0)
              {
                operator delete(*(v56 - 24));
              }

              v56 -= 32;
            }

            while (v56 != v55);
            v57 = v84;
          }

          *(&v84 + 1) = v55;
          operator delete(v57);
        }
      }

      v58 = *(a1 + 64);
      sub_DF608C(a5, &__p);
      sub_7CA38(v58, a3, &__p, *(a1 + 72));
      v59 = v89;
      if (v89)
      {
        v60 = *(&v89 + 1);
        v61 = v89;
        if (*(&v89 + 1) != v89)
        {
          do
          {
            v62 = *(v60 - 25);
            v60 -= 6;
            if (v62 < 0)
            {
              operator delete(*v60);
            }
          }

          while (v60 != v59);
          v61 = v89;
        }

        *(&v89 + 1) = v59;
        operator delete(v61);
      }

      if (v88.n128_i8[15] < 0)
      {
        operator delete(__p);
        if (*a5 == 1)
        {
          goto LABEL_116;
        }
      }

      else if (*a5 == 1)
      {
LABEL_116:
        sub_175C1D0(*a4, a5 + 8);
        return;
      }

      sub_DEBB90(*(a1 + 64), (a5 + 8), *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_150:
        sub_434B40(a1, a5 + 8);
        return;
      }

      sub_19594F8(&__p);
      sub_7B538(*(a1 + 64), &__dst);
      if ((SBYTE7(v84) & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.n128_u64[0];
      }

      if ((SBYTE7(v84) & 0x80u) == 0)
      {
        v64 = BYTE7(v84);
      }

      else
      {
        v64 = __dst.n128_i64[1];
      }

      v65 = sub_4A5C(&__p, p_dst, v64);
      sub_4A5C(v65, " failed in step ", 16);
      v66 = std::ostream::operator<<();
      v67 = sub_4A5C(v66, " (", 2);
      if ((atomic_load_explicit(&qword_2733BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733BA8))
      {
        sub_89C64(3u, "RawPathResponseBuilderModule", 28, &qword_2733B90);
        __cxa_guard_release(&qword_2733BA8);
      }

      if (byte_2733BA7 >= 0)
      {
        v68 = byte_2733BA7;
      }

      else
      {
        v68 = unk_2733B98;
      }

      if (byte_2733BA7 >= 0)
      {
        v69 = &qword_2733B90;
      }

      else
      {
        v69 = qword_2733B90;
      }

      v70 = sub_4A5C(v67, v69, v68);
      v71 = sub_4A5C(v70, ") with error: ", 14);
      sub_D72C3C(v71, a5 + 8);
      if (SBYTE7(v84) < 0)
      {
        operator delete(__dst.n128_u64[0]);
        v72 = v96;
        if ((v96 & 0x10) == 0)
        {
LABEL_134:
          if ((v72 & 8) == 0)
          {
            v73 = 0;
            BYTE7(v84) = 0;
LABEL_145:
            __dst.n128_u8[v73] = 0;
            sub_7E854(&__dst, 3u);
            if (SBYTE7(v84) < 0)
            {
              operator delete(__dst.n128_u64[0]);
            }

            if (v94 < 0)
            {
              operator delete(v93);
            }

            std::locale::~locale(&v88.n128_i8[8]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_150;
          }

          v75 = v89;
          v73 = v90 - v89;
          if ((v90 - v89) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_155:
            sub_3244();
          }

LABEL_140:
          if (v73 >= 0x17)
          {
            operator new();
          }

          BYTE7(v84) = v73;
          if (v73)
          {
            memmove(&__dst, v75, v73);
          }

          goto LABEL_145;
        }
      }

      else
      {
        v72 = v96;
        if ((v96 & 0x10) == 0)
        {
          goto LABEL_134;
        }
      }

      v74 = v95;
      if (v95 < v92)
      {
        v95 = v92;
        v74 = v92;
      }

      v75 = v91;
      v73 = v74 - v91;
      if (v74 - v91 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_155;
      }

      goto LABEL_140;
    }

    sub_19594F8(&__p);
    v32 = sub_4A5C(&__p, "Found long running (", 20);
    v33 = sub_72140(v32, v29);
    v34 = sub_4A5C(v33, ") ", 2);
    if ((atomic_load_explicit(&qword_2733BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733BA8))
    {
      sub_89C64(3u, "RawPathResponseBuilderModule", 28, &qword_2733B90);
      __cxa_guard_release(&qword_2733BA8);
    }

    if (byte_2733BA7 >= 0)
    {
      v35 = byte_2733BA7;
    }

    else
    {
      v35 = unk_2733B98;
    }

    if (byte_2733BA7 >= 0)
    {
      v36 = &qword_2733B90;
    }

    else
    {
      v36 = qword_2733B90;
    }

    v37 = sub_4A5C(v34, v36, v35);
    v38 = sub_4A5C(v37, " in ", 4);
    sub_7B538(*(a1 + 64), &__dst);
    if ((SBYTE7(v84) & 0x80u) == 0)
    {
      v39 = &__dst;
    }

    else
    {
      v39 = __dst.n128_u64[0];
    }

    if ((SBYTE7(v84) & 0x80u) == 0)
    {
      v40 = BYTE7(v84);
    }

    else
    {
      v40 = __dst.n128_i64[1];
    }

    v41 = sub_4A5C(v38, v39, v40);
    sub_4A5C(v41, " step ", 6);
    v42 = std::ostream::operator<<();
    v43 = sub_4A5C(v42, " (request: ", 11);
    sub_17541D0(v76);
    sub_E9209C(v76, *(a1 + 56), &v77);
    if ((v78 & 0x80u) == 0)
    {
      v44 = &v77;
    }

    else
    {
      v44 = v77.n128_u64[0];
    }

    if ((v78 & 0x80u) == 0)
    {
      v45 = v78;
    }

    else
    {
      v45 = v77.n128_i64[1];
    }

    v46 = sub_4A5C(v43, v44, v45);
    sub_4A5C(v46, ")", 1);
    if (v78 < 0)
    {
      operator delete(v77.n128_u64[0]);
      sub_1754598(v76);
      if ((SBYTE7(v84) & 0x80000000) == 0)
      {
LABEL_68:
        v47 = v96;
        if ((v96 & 0x10) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_73;
      }
    }

    else
    {
      sub_1754598(v76);
      if ((SBYTE7(v84) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }
    }

    operator delete(__dst.n128_u64[0]);
    v47 = v96;
    if ((v96 & 0x10) == 0)
    {
LABEL_69:
      if ((v47 & 8) == 0)
      {
        v48 = 0;
        BYTE7(v84) = 0;
LABEL_81:
        __dst.n128_u8[v48] = 0;
        sub_7E854(&__dst, 1u);
        if (SBYTE7(v84) < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (v94 < 0)
        {
          operator delete(v93);
        }

        std::locale::~locale(&v88.n128_i8[8]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_86;
      }

      v50 = v89;
      v48 = v90 - v89;
      if ((v90 - v89) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_153:
        sub_3244();
      }

LABEL_76:
      if (v48 >= 0x17)
      {
        operator new();
      }

      BYTE7(v84) = v48;
      if (v48)
      {
        memmove(&__dst, v50, v48);
      }

      goto LABEL_81;
    }

LABEL_73:
    v49 = v95;
    if (v95 < v92)
    {
      v95 = v92;
      v49 = v92;
    }

    v50 = v91;
    v48 = v49 - v91;
    if (v49 - v91 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_153;
    }

    goto LABEL_76;
  }

  sub_434934(&__dst, a1);
  LOBYTE(__p) = 0;
  v88 = __dst;
  v89 = v84;
  v90 = v85;
  v84 = 0uLL;
  v85 = 0;
  LODWORD(v91) = v86;
  sub_DF61B4(a5, &__p);
  if (__p == 1)
  {
    sub_1758FB8(&v88);
  }

  else
  {
    v19 = v89;
    if (v89)
    {
      v20 = *(&v89 + 1);
      v21 = v89;
      if (*(&v89 + 1) != v89)
      {
        do
        {
          if (*(v20 - 1) < 0)
          {
            operator delete(*(v20 - 24));
          }

          v20 -= 32;
        }

        while (v20 != v19);
        v21 = v89;
      }

      *(&v89 + 1) = v19;
      operator delete(v21);
    }
  }

  v25 = v84;
  if (v84)
  {
    v26 = *(&v84 + 1);
    v27 = v84;
    if (*(&v84 + 1) != v84)
    {
      do
      {
        if (*(v26 - 1) < 0)
        {
          operator delete(*(v26 - 24));
        }

        v26 -= 32;
      }

      while (v26 != v25);
      v27 = v84;
    }

    *(&v84 + 1) = v25;
    operator delete(v27);
  }
}

void sub_DF5EDC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2733BA8);
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  sub_1959728(&STACK[0x2A8]);
  sub_DF2040(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_DF608C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (*result == 1)
  {
    v3 = sub_DF6308(result);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    sub_195A048(a2, "RawPathResponseBuilderModule", 0x1CuLL);
    v5 = 1;
    v4 = *(a2 + 32);
    if (v4 >= *(a2 + 40))
    {
      result = sub_D0ACE4((a2 + 24), "Runtime", &v5, (v3 + 576));
      *(a2 + 32) = result;
    }

    else
    {
      sub_D0AE98(*(a2 + 32), "Runtime", &v5, (v3 + 576));
      result = (v4 + 48);
      *(a2 + 32) = v4 + 48;
    }
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_DF6188(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DF61B4(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      if (a1 != a2)
      {
        v4 = *(a1 + 16);
        if ((v4 & 2) != 0)
        {
          v4 = 0;
        }

        else if (v4)
        {
          v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v8 = *(a2 + 16);
        if ((v8 & 2) != 0)
        {
          v8 = 0;
        }

        else if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v4 == v8)
        {
          sub_175C55C(a1 + 8, a2 + 8);
        }

        else
        {
          sub_175C1D0(a1 + 8, a2 + 8);
        }
      }

LABEL_27:
      *(a1 + 584) = *(a2 + 584);
      goto LABEL_28;
    }

    sub_1758FB8(a1 + 8);
  }

  else if (*a2)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v7 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      operator delete(v7);
    }

    sub_CE25A8(a1 + 8, a2 + 8);
    goto LABEL_27;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_28:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DF6308(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_DF6408(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x2B8uLL);
  *(a3 + 456) = 0x3FF0000000000000;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 5;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0x7FFFFFFF;
  *(a3 + 632) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 609) = 0u;
  *(a3 + 648) = -1;
  *(a3 + 656) = 0x7FFFFFFF;
  *(a3 + 660) = 0;
  *(a3 + 668) = 0;
  *(a3 + 672) = -1;
  *(a3 + 680) = -1;
  *(a3 + 704) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v13);
    sub_D4104C(v12, *a2, *(a2 + 8), **(a2 + 16));
  }

  sub_434934(&__dst, a1);
  LOBYTE(v18) = 0;
  v19 = __dst;
  __p = v15;
  v21 = v16;
  v15 = 0uLL;
  v16 = 0;
  v22 = v17;
  sub_D72D60(a3, &v18);
  if (v18 == 1)
  {
    sub_5287C0(&v19);
  }

  else
  {
    v6 = __p;
    if (__p)
    {
      v7 = *(&__p + 1);
      v8 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v8 = __p;
      }

      *(&__p + 1) = v6;
      operator delete(v8);
    }
  }

  v9 = v15;
  if (v15)
  {
    v10 = *(&v15 + 1);
    v11 = v15;
    if (*(&v15 + 1) != v15)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v15;
    }

    *(&v15 + 1) = v9;
    operator delete(v11);
  }
}

void sub_DF6BF8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
    sub_1959728(&STACK[0x2B0]);
    sub_D40D4C(v1);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D40D4C(v1);
  _Unwind_Resume(a1);
}

void sub_DF6D4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x368uLL);
  sub_4E3D18((a3 + 8));
  sub_4E3D18((a3 + 56));
  *(a3 + 104) = -1;
  *(a3 + 288) = 0;
  *(a3 + 296) = 0;
  *(a3 + 424) = 0;
  *(a3 + 556) = 0;
  *(a3 + 544) = 0;
  *(a3 + 552) = 0;
  *(a3 + 560) = 0u;
  *(a3 + 576) = 0u;
  *(a3 + 592) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 524) = 0u;
  *(a3 + 608) = 0x3FF0000000000000;
  *(a3 + 632) = 0;
  *(a3 + 616) = 0u;
  *(a3 + 640) = 5;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0u;
  *(a3 + 680) = 0u;
  *(a3 + 696) = 0x7FFFFFFF;
  *(a3 + 784) = 0u;
  *(a3 + 704) = 0u;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 761) = 0u;
  *(a3 + 800) = -1;
  *(a3 + 808) = 0x7FFFFFFF;
  *(a3 + 812) = 0;
  *(a3 + 820) = 0;
  *(a3 + 824) = -1;
  *(a3 + 832) = -1;
  *(a3 + 840) = 0;
  *(a3 + 848) = 0;
  *(a3 + 872) = 0;
  *(a3 + 880) = 0;
  *(a3 + 888) = 0;
  *(a3 + 896) = 0u;
  *(a3 + 912) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v21);
    sub_D75B84(&v17, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  }

  sub_434934(&v17, a1);
  LOBYTE(v12) = 0;
  v13 = v17;
  __p = v18;
  v15 = v19;
  v18 = 0uLL;
  v19 = 0;
  v16 = v20;
  sub_D1E024(a3, &v12);
  if (v12 == 1)
  {
    sub_D1D6D4(&v13);
  }

  else
  {
    v6 = __p;
    if (__p)
    {
      v7 = *(&__p + 1);
      v8 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v8 = __p;
      }

      *(&__p + 1) = v6;
      operator delete(v8);
    }
  }

  v9 = v18;
  if (v18)
  {
    v10 = *(&v18 + 1);
    v11 = v18;
    if (*(&v18 + 1) != v18)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v18;
    }

    *(&v18 + 1) = v9;
    operator delete(v11);
  }
}