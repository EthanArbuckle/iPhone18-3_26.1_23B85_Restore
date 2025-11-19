void sub_25633AE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633AEC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 30;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633B3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633B494(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 31;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633B9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633BA68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 32;
  sub_25632C5AC(a1, v36);
  v6 = v37;
  if (v37)
  {
    do
    {
      v8 = (v6 + 16);
      if (v6[39] < 0)
      {
        if (*(v6 + 3) == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
        {
          goto LABEL_8;
        }

        if (*(v6 + 3) == 7)
        {
          v9 = *v8;
LABEL_20:
          v11 = *v9;
          v12 = *(v9 + 3);
          if (v11 == 1886680431 && v12 == 1937012080)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v6[39] == 6)
      {
        if (*v8 == 1970302569 && *(v6 + 10) == 29556)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = (v6 + 16);
        if (v6[39] == 7)
        {
          goto LABEL_20;
        }
      }

      sub_25632EE74((a3 + 64), v8);
LABEL_8:
      v6 = *v6;
    }

    while (v6);
  }

  v29 = 6;
  strcpy(v28, "inputs");
  v14 = sub_25633F16C(v36, v28);
  LOBYTE(v30[0]) = 0;
  v31 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v38 = v30, (off_286854B38[v15])(&v38, v14 + 5), v31 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v30);
  sub_25632C98C(&__p, a2, &v34);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v34;
  *(a3 + 32) = v35;
  v35 = 0;
  v34 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v33;
    v22 = __p;
    if (v33 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v33 = v20;
    operator delete(v22);
  }

  if (v31 != -1)
  {
    (off_286854B10[v31])(&v38, v30);
  }

  v31 = -1;
  if (v29 < 0)
  {
    operator delete(v28[0]);
    v24 = v37;
    if (!v37)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v24 = v37;
    if (!v37)
    {
      goto LABEL_57;
    }
  }

  do
  {
    v25 = *v24;
    v26 = *(v24 + 16);
    if (v26 != -1)
    {
      (off_286854B10[v26])(&v34, v24 + 5);
    }

    *(v24 + 16) = -1;
    if (*(v24 + 39) < 0)
    {
      operator delete(v24[2]);
    }

    operator delete(v24);
    v24 = v25;
  }

  while (v25);
LABEL_57:
  v27 = v36[0];
  v36[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

void sub_25633BDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_256330084(&a19);
  sub_2563300F8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a26);
  sub_25633077C(v26);
  _Unwind_Resume(a1);
}

void sub_25633BE54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 33;
  sub_25632C5AC(a1, v35);
  v5 = v36;
  if (v36)
  {
    do
    {
      v7 = (v5 + 16);
      if (v5[39] < 0)
      {
        if (*(v5 + 3) == 6 && **v7 == 1970302569 && *(*v7 + 4) == 29556)
        {
          goto LABEL_8;
        }

        if (*(v5 + 3) == 7)
        {
          v8 = *v7;
LABEL_20:
          v10 = *v8;
          v11 = *(v8 + 3);
          if (v10 == 1886680431 && v11 == 1937012080)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v5[39] == 6)
      {
        if (*v7 == 1970302569 && *(v5 + 10) == 29556)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = (v5 + 16);
        if (v5[39] == 7)
        {
          goto LABEL_20;
        }
      }

      sub_25632EE74((a3 + 64), v7);
LABEL_8:
      v5 = *v5;
    }

    while (v5);
  }

  v28 = 7;
  strcpy(v27, "outputs");
  v13 = sub_25633F16C(v35, v27);
  LOBYTE(v29[0]) = 0;
  v30 = -1;
  v14 = *(v13 + 16);
  if (v14 == -1 || (v37 = v29, (off_286854B38[v14])(&v37, v13 + 5), v30 = v14, v14 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v29);
  sub_25632C98C(&__p, a2, &v33);
  v15 = *(a3 + 40);
  if (v15)
  {
    v16 = *(a3 + 48);
    v17 = *(a3 + 40);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v16 -= 16;
      }

      while (v16 != v15);
      v17 = *(a3 + 40);
    }

    *(a3 + 48) = v15;
    operator delete(v17);
  }

  *(a3 + 40) = v33;
  *(a3 + 56) = v34;
  v34 = 0;
  v33 = 0uLL;
  v19 = __p;
  if (__p)
  {
    v20 = v32;
    v21 = __p;
    if (v32 != __p)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = __p;
    }

    v32 = v19;
    operator delete(v21);
  }

  if (v30 != -1)
  {
    (off_286854B10[v30])(&v37, v29);
  }

  v30 = -1;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  do
  {
    v24 = *v23;
    v25 = *(v23 + 16);
    if (v25 != -1)
    {
      (off_286854B10[v25])(&v33, v23 + 5);
    }

    *(v23 + 16) = -1;
    if (*(v23 + 39) < 0)
    {
      operator delete(v23[2]);
    }

    operator delete(v23);
    v23 = v24;
  }

  while (v24);
LABEL_57:
  v26 = v35[0];
  v35[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

void sub_25633C1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_256330084(&a19);
  sub_2563300F8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a26);
  sub_25633077C(v26);
  _Unwind_Resume(a1);
}

void sub_25633C240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 34;
  sub_25632C5AC(a1, v36);
  v6 = v37;
  if (v37)
  {
    do
    {
      v8 = (v6 + 16);
      if (v6[39] < 0)
      {
        if (*(v6 + 3) == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
        {
          goto LABEL_8;
        }

        if (*(v6 + 3) == 7)
        {
          v9 = *v8;
LABEL_20:
          v11 = *v9;
          v12 = *(v9 + 3);
          if (v11 == 1886680431 && v12 == 1937012080)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v6[39] == 6)
      {
        if (*v8 == 1970302569 && *(v6 + 10) == 29556)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = (v6 + 16);
        if (v6[39] == 7)
        {
          goto LABEL_20;
        }
      }

      sub_25632EE74((a3 + 64), v8);
LABEL_8:
      v6 = *v6;
    }

    while (v6);
  }

  v29 = 6;
  strcpy(v28, "inputs");
  v14 = sub_25633F16C(v36, v28);
  LOBYTE(v30[0]) = 0;
  v31 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v38 = v30, (off_286854B38[v15])(&v38, v14 + 5), v31 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v30);
  sub_25632C98C(&__p, a2, &v34);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v34;
  *(a3 + 32) = v35;
  v35 = 0;
  v34 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v33;
    v22 = __p;
    if (v33 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v33 = v20;
    operator delete(v22);
  }

  if (v31 != -1)
  {
    (off_286854B10[v31])(&v38, v30);
  }

  v31 = -1;
  if (v29 < 0)
  {
    operator delete(v28[0]);
    v24 = v37;
    if (!v37)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v24 = v37;
    if (!v37)
    {
      goto LABEL_57;
    }
  }

  do
  {
    v25 = *v24;
    v26 = *(v24 + 16);
    if (v26 != -1)
    {
      (off_286854B10[v26])(&v34, v24 + 5);
    }

    *(v24 + 16) = -1;
    if (*(v24 + 39) < 0)
    {
      operator delete(v24[2]);
    }

    operator delete(v24);
    v24 = v25;
  }

  while (v25);
LABEL_57:
  v27 = v36[0];
  v36[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

void sub_25633C5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_256330084(&a19);
  sub_2563300F8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a26);
  sub_25633077C(v26);
  _Unwind_Resume(a1);
}

void sub_25633C62C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2868549D8;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  *(a2 + 8) = 35;
  sub_25632C5AC(a1, &v15);
  v3 = __p;
  if (!__p)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = (v3 + 16);
    if (v3[39] < 0)
    {
      if (*(v3 + 3) == 6 && **v5 == 1970302569 && *(*v5 + 4) == 29556)
      {
        goto LABEL_8;
      }

      if (*(v3 + 3) != 7)
      {
        goto LABEL_7;
      }

      v6 = *v5;
      goto LABEL_20;
    }

    if (v3[39] != 6)
    {
      v6 = (v3 + 16);
      if (v3[39] != 7)
      {
        goto LABEL_7;
      }

LABEL_20:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 1886680431 || v9 != 1937012080)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    if (*v5 != 1970302569 || *(v3 + 10) != 29556)
    {
LABEL_7:
      sub_25632EE74((a2 + 64), v5);
    }

LABEL_8:
    v3 = *v3;
  }

  while (v3);
  v11 = __p;
  if (__p)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      if (v13 != -1)
      {
        (off_286854B10[v13])(&v17, v11 + 5);
      }

      *(v11 + 16) = -1;
      if (*(v11 + 39) < 0)
      {
        operator delete(v11[2]);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_33:
  v14 = v15;
  v15 = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_25633C804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 36;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633CD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633CDD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 38;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633D308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633D3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 39;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633D8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633D980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 40;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633DEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633DF54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 41;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633E484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633E528(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 43;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633EA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_25633EAFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 44;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633F02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_25633F0D0(uint64_t a1)
{
  v2 = a1 + 24;
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_7:
    operator delete(*a1);
    return a1;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_7;
  }

  return a1;
}

uint64_t **sub_25633F16C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v16 == v8)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t sub_25633F340(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854B70;
  a2[1] = v2;
  return result;
}

uint64_t **sub_25633F37C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25633F76C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25633F7A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_25633F7A0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 != v2 + 40)
      {
        if (v3)
        {
          (*(*v3 + 40))(v3);
        }

        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_10;
      }

      (*(*v3 + 32))(v3);
      if (*(v2 + 39) < 0)
      {
LABEL_10:
        operator delete(*(v2 + 16));
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_25633F85C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v5 = *v2;
      v6 = v2[8];
      if (v6 != (v2 + 5))
      {
        break;
      }

      (*(*v6 + 32))(v6);
      if (*(v2 + 39) < 0)
      {
        goto LABEL_12;
      }

LABEL_5:
      operator delete(v2);
      v2 = v5;
      if (!v5)
      {
        goto LABEL_2;
      }
    }

    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    if ((*(v2 + 39) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    operator delete(v2[2]);
    goto LABEL_5;
  }

LABEL_2:
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_25633F930(uint64_t a1)
{
  *a1 = &unk_286854A08;
  if (*(a1 + 127) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 104));
    a1 = v3;
  }

  return sub_25633077C(a1);
}

uint64_t **sub_25633F9A4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

void sub_25633FB08()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, &unk_286854BA8, MEMORY[0x277D82660]);
}

void sub_25633FB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 16))(a2) == 10)
  {
    sub_25632C5AC(a2, v29);
    HIBYTE(v25) = 6;
    strcpy(__p, "kindex");
    sub_256368D5C(v29, __p, &v26);
    if (v28)
    {
      sub_256330378();
    }

    v5 = v26;
    v28 = -1;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(a3 + 176);
    v8 = *(a3 + 184);
    v7 = (a3 + 176);
    v9 = (v8 - v6) >> 3;
    if (v5 >= v9)
    {
      v10 = v5 + 1 - v9;
      if (v5 + 1 <= v9)
      {
        if (v5 + 1 < v9)
        {
          v11 = (v6 + 8 * (v5 + 1));
          while (v8 != v11)
          {
            v13 = *--v8;
            v12 = v13;
            *v8 = 0;
            if (v13)
            {
              (*(*v12 + 8))(v12, v10);
            }
          }

          *(a3 + 184) = v11;
        }
      }

      else
      {
        sub_25633FFA0(a3 + 176, v10);
      }
    }

    v23 = 5;
    strcpy(v22, "kname");
    sub_256368D5C(v29, v22, &v26);
    if (v28 != 2)
    {
      sub_256330378();
    }

    *__p = v26;
    v25 = v27;
    v26 = 0uLL;
    v27 = 0;
    v28 = -1;
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v14 = sub_256379F80(0x60uLL);
    sub_2563688FC(v14, __p, *(a3 + 384));
    v15 = *(*v7 + 8 * v5);
    *(*v7 + 8 * v5) = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v23 = 9;
    strcpy(v22, "arguments");
    sub_256368D5C(v29, v22, &v26);
    if (v28)
    {
      sub_256330378();
    }

    v16 = v26;
    v28 = -1;
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    sub_2563689C4(*(*v7 + 8 * v5), v16);
    v23 = 13;
    strcpy(v22, "scratchbuffer");
    sub_256368D5C(v29, v22, &v26);
    if (v28)
    {
      sub_256330378();
    }

    v17 = v26;
    v28 = -1;
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    sub_256368A40(*(*v7 + 8 * v5), v17 != 0);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
      v18 = v30;
      if (!v30)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v18 = v30;
      if (!v30)
      {
LABEL_35:
        v21 = v29[0];
        v29[0] = 0;
        if (v21)
        {
          operator delete(v21);
        }

        return;
      }
    }

    do
    {
      v19 = *v18;
      v20 = *(v18 + 16);
      if (v20 != -1)
      {
        (off_286854BE8[v20])(&v26, v18 + 5);
      }

      *(v18 + 16) = -1;
      if (*(v18 + 39) < 0)
      {
        operator delete(v18[2]);
      }

      operator delete(v18);
      v18 = v19;
    }

    while (v19);
    goto LABEL_35;
  }
}

void sub_25633FF78()
{
  v0 = nullsub_34();

  j__free(v0);
}

void sub_25633FFA0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_25632CE68();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_25632CCA0();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_2563400F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(*a2 + 16))(a2) != 14)
  {
    return;
  }

  sub_25632C5AC(a2, v38);
  __dst = 0uLL;
  v36 = 0;
  memset(v37 + 8, 0, 48);
  if (&__dst != (a2 + 48))
  {
    if (*(a2 + 71) < 0)
    {
      sub_256330180(&__dst, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      __dst = *(a2 + 48);
      v36 = *(a2 + 64);
    }
  }

  v34 = 5;
  strcpy(__p, "place");
  *&v40 = __p;
  v5 = sub_256330D58(v38, __p);
  if (*(v5 + 16) != 2)
  {
    sub_256330378();
  }

  if (*(v5 + 63) < 0)
  {
    sub_25632CB5C(&v40, v5[5], v5[6]);
  }

  else
  {
    v40 = *(v5 + 5);
    v41 = v5[7];
  }

  v6 = HIBYTE(v41);
  if (SHIBYTE(v41) >= 0)
  {
    v7 = &v40 + HIBYTE(v41);
  }

  else
  {
    v7 = (v40 + *(&v40 + 1));
  }

  if (SHIBYTE(v41) >= 0)
  {
    v8 = &v40;
  }

  else
  {
    v8 = v40;
  }

  if (v8 != v7)
  {
    do
    {
      *v8 = __tolower(*v8);
      ++v8;
    }

    while (v8 != v7);
    v6 = HIBYTE(v41);
  }

  if ((v6 & 0x80) == 0)
  {
    if (v6 == 3)
    {
      v13 = bswap32(v40 | (BYTE2(v40) << 16));
      v14 = v13 >= 0x67707500;
      v15 = v13 > 0x67707500;
      v16 = !v14;
      v10 = v15 == v16;
    }

    else if (v6 == 4)
    {
      v10 = 0;
      if (v40 == 1953722216)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      if (v6 == 6 && v40 == 1769366884 && WORD2(v40) == 25955)
      {
        v10 = 1;
      }
    }

    goto LABEL_50;
  }

  if (*(&v40 + 1) == 4)
  {
    v10 = 0;
    v11 = v40;
    v17 = *v40;
  }

  else
  {
    if (*(&v40 + 1) != 6)
    {
      v11 = v40;
      if (*(&v40 + 1) == 3)
      {
        v18 = bswap32(*v40 | (*(v40 + 2) << 16));
        v14 = v18 >= 0x67707500;
        v19 = v18 > 0x67707500;
        v20 = !v14;
        v10 = v19 == v20;
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v11 = v40;
    if (*v40 != 1769366884 || *(v40 + 4) != 25955)
    {
LABEL_48:
      v10 = 0;
      goto LABEL_49;
    }

    v10 = 1;
  }

LABEL_49:
  operator delete(v11);
LABEL_50:
  LODWORD(v37[0]) = v10;
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v41) = 9;
  strcpy(&v40, "alignment");
  __p[0] = &v40;
  v21 = sub_256330D58(v38, &v40);
  if (*(v21 + 16))
  {
    sub_256330378();
  }

  *&v37[2] = v21[5];
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  HIBYTE(v41) = 4;
  strcpy(&v40, "size");
  __p[0] = &v40;
  v22 = sub_256330D58(v38, &v40);
  if (*(v22 + 16))
  {
    sub_256330378();
  }

  *(&v37[1] + 1) = v22[5];
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  *&v37[1] = 0;
  v23 = a3[11];
  if (v23 >= a3[12])
  {
    v25 = sub_25634062C(a3 + 10, &__dst);
  }

  else
  {
    if (SHIBYTE(v36) < 0)
    {
      sub_25632CB5C(a3[11], __dst, *(&__dst + 1));
    }

    else
    {
      v24 = __dst;
      *(v23 + 16) = v36;
      *v23 = v24;
    }

    v26 = v37[0];
    v27 = v37[1];
    v28 = v37[2];
    *(v23 + 72) = *&v37[3];
    *(v23 + 56) = v28;
    *(v23 + 40) = v27;
    *(v23 + 24) = v26;
    v25 = v23 + 80;
    a3[11] = v23 + 80;
  }

  a3[11] = v25;
  sub_256368E30(&__dst);
  v29 = v39;
  if (v39)
  {
    do
    {
      v30 = *v29;
      v31 = *(v29 + 16);
      if (v31 != -1)
      {
        (off_286854C38[v31])(&__dst, v29 + 5);
      }

      *(v29 + 16) = -1;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v32 = v38[0];
  v38[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }
}

void sub_256340588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v8 = v6;
  *(v5 + 88) = v8;
  sub_256368E30(va);
  sub_25632D0E0(v7 - 104);
  _Unwind_Resume(a1);
}

void sub_256340604()
{
  v0 = nullsub_34();

  j__free(v0);
}

uint64_t sub_25634062C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_25632CE68();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_25632CCA0();
  }

  v7 = 80 * v2;
  __p = 0;
  v13 = v7;
  v14 = v7;
  v15 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_25632CB5C(v7, *a2, *(a2 + 8));
    v8 = v14;
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
    v8 = v7;
  }

  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  v14 = v8 + 80;
  sub_2563407B4(a1, &__p);
  v9 = a1[1];
  v10 = v13;
  while (v14 != v10)
  {
    v14 -= 80;
    sub_256368E30(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_2563407A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2563408E4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2563407B4(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = 0;
    do
    {
      v13 = v6 + v7;
      v14 = (v4 + v7);
      if (*(v4 + v7 + 23) < 0)
      {
        sub_25632CB5C(v13, *v14, *(v14 + 1));
      }

      else
      {
        v8 = *v14;
        *(v13 + 16) = *(v14 + 2);
        *v13 = v8;
      }

      v9 = v6 + v7;
      v10 = *(v4 + v7 + 24);
      v11 = *(v4 + v7 + 40);
      v12 = *(v4 + v7 + 56);
      *(v9 + 72) = *(v4 + v7 + 72);
      *(v9 + 56) = v12;
      *(v9 + 40) = v11;
      *(v9 + 24) = v10;
      v7 += 80;
    }

    while (v4 + v7 != v5);
    do
    {
      result = sub_256368E30(v4);
      v4 += 80;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v15 = *v3;
  *v3 = v6;
  v3[1] = v15;
  a2[1] = v15;
  v16 = v3[1];
  v3[1] = a2[2];
  a2[2] = v16;
  v17 = v3[2];
  v3[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

void sub_2563408B8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      v4 = sub_256368E30(v4) - 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2563408E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_256368E30(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_256340938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 16))(a2) == 15 || (result = (*(*a2 + 16))(a2), result == 9))
  {
    sub_25632C5AC(a2, &v8);
    v6 = sub_256379F80(0xA8uLL);
    (*(*a2 + 16))(a2);
    v7 = *(a3 + 32);
    sub_256368E70(v6);
  }

  return result;
}

void sub_256341B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_25632EA30(&a36);
  sub_25632D0E0(&a38);
  _Unwind_Resume(a1);
}

BOOL sub_256341CC0(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_256341D70();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_256341D48()
{
  v0 = nullsub_34();

  j__free(v0);
}

void sub_256341D88(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_256341DE4(exception, a1);
  __cxa_throw(exception, &unk_286854C88, MEMORY[0x277D825F8]);
}

std::logic_error *sub_256341DE4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_256341E1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t sub_256341E54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void mlc_binary_create()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = sub_256379F80(0xC8uLL);
  sub_256344528(v0);
}

void sub_2563425FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_256346A70(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_256342684@<X0>(void *a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  a1[3] = 0;
  a1[7] = 0;
  a1[11] = 0;
  a1[15] = 0;
  a1[19] = 0;
  a1[23] = 0;
  a1[27] = 0;
  a1[31] = 0;
  a1[35] = 0;
  a1[39] = 0;
  a1[43] = 0;
  a1[47] = 0;
  a1[51] = 0;
  a1[55] = 0;
  a1[59] = 0;
  a1[63] = 0;
  a1[67] = 0;
  a1[71] = 0;
  a1[75] = 0;
  v8 = &unk_286854E08;
  v9 = sub_256346CA8;
  v10 = &v8;
  sub_256347D6C(&v8, a1);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854E50;
  v9 = sub_256346CD0;
  v10 = &v8;
  sub_256348078(&v8, a1 + 4);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854E98;
  v9 = sub_256346CFC;
  v10 = &v8;
  sub_256348384(&v8, a1 + 8);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854EE0;
  v9 = sub_256346D24;
  v10 = &v8;
  sub_256348690(&v8, a1 + 12);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854F28;
  v9 = sub_256346D2C;
  v10 = &v8;
  sub_2563489A0(&v8, a1 + 16);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854F28;
  v9 = sub_256346D7C;
  v10 = &v8;
  sub_2563489A0(&v8, a1 + 20);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854F70;
  v9 = sub_256346DCC;
  v10 = &v8;
  sub_256348CAC(&v8, a1 + 24);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854EE0;
  v9 = sub_256346DF4;
  v10 = &v8;
  sub_256348690(&v8, a1 + 28);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854FB8;
  v9 = sub_256346E1C;
  v10 = &v8;
  sub_256348FB8(&v8, a1 + 32);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286854E08;
  v9 = sub_256346E44;
  v10 = &v8;
  sub_256347D6C(&v8, a1 + 36);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v2 = a1[43];
  a1[43] = 0;
  if (v2 == a1 + 40)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = a1[47];
  a1[47] = 0;
  if (v3 == a1 + 44)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[51];
  a1[51] = 0;
  if (v4 == a1 + 48)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v8 = &unk_286855000;
  v9 = sub_256346E4C;
  v10 = &v8;
  sub_25634A274(&v8, a1 + 52);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286855000;
  v9 = sub_2563470D8;
  v10 = &v8;
  sub_25634A274(&v8, a1 + 56);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v5 = a1[63];
  a1[63] = 0;
  if (v5 == a1 + 60)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v8 = &unk_286855048;
  v9 = sub_256347364;
  v10 = &v8;
  sub_25634A588(&v8, a1 + 64);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v8 = &unk_286855090;
  v9 = nullsub_7;
  v10 = &v8;
  sub_25634A894(&v8, a1 + 68);
  if (v10 == &v8)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  result = a1[75];
  a1[75] = 0;
  if (result == a1 + 72)
  {
    result = (*(*result + 32))(result);
  }

  else if (result)
  {
    result = (*(*result + 40))(result);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2563431A0(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v6 = a2 + 3;
  v7 = a2[3];
  if (!v7)
  {
    v6 = v5;
    goto LABEL_9;
  }

  if (v7 != a2)
  {
    *v5 = v7;
LABEL_9:
    *v6 = 0;
    goto LABEL_11;
  }

  a1[3] = a1;
  (*(**v6 + 24))(*v6, a1);
LABEL_11:
  v9 = a1 + 7;
  v8 = a1[7];
  a1[7] = 0;
  if (v8 == a1 + 4)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v10 = a2 + 7;
  v11 = a2[7];
  if (!v11)
  {
    v10 = a1 + 7;
    goto LABEL_19;
  }

  if (v11 != a2 + 4)
  {
    *v9 = v11;
LABEL_19:
    *v10 = 0;
    goto LABEL_21;
  }

  *v9 = a1 + 4;
  (*(**v10 + 24))(*v10, a1 + 4);
LABEL_21:
  v13 = a1 + 11;
  v12 = a1[11];
  a1[11] = 0;
  if (v12 == a1 + 8)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  v14 = a2 + 11;
  v15 = a2[11];
  if (!v15)
  {
    v14 = a1 + 11;
    goto LABEL_29;
  }

  if (v15 != a2 + 8)
  {
    *v13 = v15;
LABEL_29:
    *v14 = 0;
    goto LABEL_31;
  }

  *v13 = a1 + 8;
  (*(**v14 + 24))(*v14, a1 + 8);
LABEL_31:
  v17 = a1 + 15;
  v16 = a1[15];
  a1[15] = 0;
  if (v16 == a1 + 12)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  v18 = a2 + 15;
  v19 = a2[15];
  if (!v19)
  {
    v18 = a1 + 15;
    goto LABEL_39;
  }

  if (v19 != a2 + 12)
  {
    *v17 = v19;
LABEL_39:
    *v18 = 0;
    goto LABEL_41;
  }

  *v17 = a1 + 12;
  (*(**v18 + 24))(*v18, a1 + 12);
LABEL_41:
  v21 = a1 + 19;
  v20 = a1[19];
  a1[19] = 0;
  if (v20 == a1 + 16)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  v22 = a2 + 19;
  v23 = a2[19];
  if (!v23)
  {
    v22 = a1 + 19;
    goto LABEL_49;
  }

  if (v23 != a2 + 16)
  {
    *v21 = v23;
LABEL_49:
    *v22 = 0;
    goto LABEL_51;
  }

  *v21 = a1 + 16;
  (*(**v22 + 24))(*v22, a1 + 16);
LABEL_51:
  v25 = a1 + 23;
  v24 = a1[23];
  a1[23] = 0;
  if (v24 == a1 + 20)
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  v26 = a2 + 23;
  v27 = a2[23];
  if (!v27)
  {
    v26 = a1 + 23;
    goto LABEL_59;
  }

  if (v27 != a2 + 20)
  {
    *v25 = v27;
LABEL_59:
    *v26 = 0;
    goto LABEL_61;
  }

  *v25 = a1 + 20;
  (*(**v26 + 24))(*v26, a1 + 20);
LABEL_61:
  v29 = a1 + 27;
  v28 = a1[27];
  a1[27] = 0;
  if (v28 == a1 + 24)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))(v28);
  }

  v30 = a2 + 27;
  v31 = a2[27];
  if (!v31)
  {
    v30 = a1 + 27;
    goto LABEL_69;
  }

  if (v31 != a2 + 24)
  {
    *v29 = v31;
LABEL_69:
    *v30 = 0;
    goto LABEL_71;
  }

  *v29 = a1 + 24;
  (*(**v30 + 24))(*v30, a1 + 24);
LABEL_71:
  v33 = a1 + 31;
  v32 = a1[31];
  a1[31] = 0;
  if (v32 == a1 + 28)
  {
    (*(*v32 + 32))(v32);
  }

  else if (v32)
  {
    (*(*v32 + 40))(v32);
  }

  v34 = a2 + 31;
  v35 = a2[31];
  if (!v35)
  {
    v34 = a1 + 31;
    goto LABEL_79;
  }

  if (v35 != a2 + 28)
  {
    *v33 = v35;
LABEL_79:
    *v34 = 0;
    goto LABEL_81;
  }

  *v33 = a1 + 28;
  (*(**v34 + 24))(*v34, a1 + 28);
LABEL_81:
  v36 = a1[35];
  a1[35] = 0;
  if (v36 == a1 + 32)
  {
    (*(*v36 + 32))(v36);
  }

  else if (v36)
  {
    (*(*v36 + 40))(v36);
  }

  v37 = a1 + 35;
  v38 = a2[35];
  if (!v38)
  {
    v39 = a1 + 35;
    goto LABEL_89;
  }

  v39 = a2 + 35;
  if (v38 != a2 + 32)
  {
    *v37 = v38;
LABEL_89:
    *v39 = 0;
    goto LABEL_91;
  }

  *v37 = a1 + 32;
  (*(**v39 + 24))(*v39, a1 + 32);
LABEL_91:
  v40 = a1[39];
  a1[39] = 0;
  if (v40 == a1 + 36)
  {
    (*(*v40 + 32))(v40);
  }

  else if (v40)
  {
    (*(*v40 + 40))(v40);
  }

  v41 = a1 + 39;
  v42 = a2[39];
  if (!v42)
  {
    v43 = a1 + 39;
    goto LABEL_99;
  }

  v43 = a2 + 39;
  if (v42 != a2 + 36)
  {
    *v41 = v42;
LABEL_99:
    *v43 = 0;
    goto LABEL_101;
  }

  *v41 = a1 + 36;
  (*(**v43 + 24))(*v43, a1 + 36);
LABEL_101:
  v44 = a1[43];
  a1[43] = 0;
  if (v44 == a1 + 40)
  {
    (*(*v44 + 32))(v44);
  }

  else if (v44)
  {
    (*(*v44 + 40))(v44);
  }

  v45 = a1 + 43;
  v46 = a2[43];
  if (!v46)
  {
    v47 = a1 + 43;
    goto LABEL_109;
  }

  v47 = a2 + 43;
  if (v46 != a2 + 40)
  {
    *v45 = v46;
LABEL_109:
    *v47 = 0;
    goto LABEL_111;
  }

  *v45 = a1 + 40;
  (*(**v47 + 24))(*v47, a1 + 40);
LABEL_111:
  v48 = a1[47];
  a1[47] = 0;
  if (v48 == a1 + 44)
  {
    (*(*v48 + 32))(v48);
  }

  else if (v48)
  {
    (*(*v48 + 40))(v48);
  }

  v49 = a1 + 47;
  v50 = a2[47];
  if (!v50)
  {
    v51 = a1 + 47;
    goto LABEL_119;
  }

  v51 = a2 + 47;
  if (v50 != a2 + 44)
  {
    *v49 = v50;
LABEL_119:
    *v51 = 0;
    goto LABEL_121;
  }

  *v49 = a1 + 44;
  (*(**v51 + 24))(*v51, a1 + 44);
LABEL_121:
  v52 = a1[51];
  a1[51] = 0;
  if (v52 == a1 + 48)
  {
    (*(*v52 + 32))(v52);
  }

  else if (v52)
  {
    (*(*v52 + 40))(v52);
  }

  v53 = a1 + 51;
  v54 = a2[51];
  if (!v54)
  {
    v55 = a1 + 51;
    goto LABEL_129;
  }

  v55 = a2 + 51;
  if (v54 != a2 + 48)
  {
    *v53 = v54;
LABEL_129:
    *v55 = 0;
    goto LABEL_131;
  }

  *v53 = a1 + 48;
  (*(**v55 + 24))(*v55, a1 + 48);
LABEL_131:
  v56 = a1[55];
  a1[55] = 0;
  if (v56 == a1 + 52)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))(v56);
  }

  v57 = a1 + 55;
  v58 = a2[55];
  if (!v58)
  {
    v59 = a1 + 55;
    goto LABEL_139;
  }

  v59 = a2 + 55;
  if (v58 != a2 + 52)
  {
    *v57 = v58;
LABEL_139:
    *v59 = 0;
    goto LABEL_141;
  }

  *v57 = a1 + 52;
  (*(**v59 + 24))(*v59, a1 + 52);
LABEL_141:
  v60 = a1[59];
  a1[59] = 0;
  if (v60 == a1 + 56)
  {
    (*(*v60 + 32))(v60);
  }

  else if (v60)
  {
    (*(*v60 + 40))(v60);
  }

  v61 = a1 + 59;
  v62 = a2[59];
  if (!v62)
  {
    v63 = a1 + 59;
    goto LABEL_149;
  }

  v63 = a2 + 59;
  if (v62 != a2 + 56)
  {
    *v61 = v62;
LABEL_149:
    *v63 = 0;
    goto LABEL_151;
  }

  *v61 = a1 + 56;
  (*(**v63 + 24))(*v63, a1 + 56);
LABEL_151:
  v64 = a1[63];
  a1[63] = 0;
  if (v64 == a1 + 60)
  {
    (*(*v64 + 32))(v64);
  }

  else if (v64)
  {
    (*(*v64 + 40))(v64);
  }

  v65 = a1 + 63;
  v66 = a2[63];
  if (!v66)
  {
    v67 = a1 + 63;
    goto LABEL_159;
  }

  v67 = a2 + 63;
  if (v66 != a2 + 60)
  {
    *v65 = v66;
LABEL_159:
    *v67 = 0;
    goto LABEL_161;
  }

  *v65 = a1 + 60;
  (*(**v67 + 24))(*v67, a1 + 60);
LABEL_161:
  v68 = a1[67];
  a1[67] = 0;
  if (v68 == a1 + 64)
  {
    (*(*v68 + 32))(v68);
  }

  else if (v68)
  {
    (*(*v68 + 40))(v68);
  }

  v69 = a1 + 67;
  v70 = a2[67];
  if (!v70)
  {
    v71 = a1 + 67;
    goto LABEL_169;
  }

  v71 = a2 + 67;
  if (v70 != a2 + 64)
  {
    *v69 = v70;
LABEL_169:
    *v71 = 0;
    goto LABEL_171;
  }

  *v69 = a1 + 64;
  (*(**v71 + 24))(*v71, a1 + 64);
LABEL_171:
  v72 = a1[71];
  a1[71] = 0;
  if (v72 == a1 + 68)
  {
    (*(*v72 + 32))(v72);
  }

  else if (v72)
  {
    (*(*v72 + 40))(v72);
  }

  v73 = a1 + 71;
  v74 = a2[71];
  if (!v74)
  {
    v75 = a1 + 71;
    goto LABEL_179;
  }

  v75 = a2 + 71;
  if (v74 != a2 + 68)
  {
    *v73 = v74;
LABEL_179:
    *v75 = 0;
    goto LABEL_181;
  }

  *v73 = a1 + 68;
  (*(**v75 + 24))(*v75, a1 + 68);
LABEL_181:
  v76 = a1[75];
  a1[75] = 0;
  if (v76 == a1 + 72)
  {
    (*(*v76 + 32))(v76);
  }

  else if (v76)
  {
    (*(*v76 + 40))(v76);
  }

  v77 = a1 + 75;
  v78 = a2[75];
  if (v78)
  {
    v79 = a2 + 75;
    if (v78 == a2 + 72)
    {
      *v77 = a1 + 72;
      (*(**v79 + 24))(*v79, a1 + 72);
      return a1;
    }

    *v77 = v78;
  }

  else
  {
    v79 = a1 + 75;
  }

  *v79 = 0;
  return a1;
}

uint64_t mlc_binary_destroy(void *context)
{
  v2 = *(context + 10);
  if (v2)
  {
    dispatch_async_and_wait_f(v2, context, sub_256344128);
    mlc_event_record(*(context + 13));
    dispatch_release(*(context + 10));
  }

  v3 = *(*context + 8);

  return v3(context);
}

uint64_t mlc_binary_error@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = sub_25637979C(result + 16);
    v5 = *(v4 + 31);
    LODWORD(v3) = *v4;
    v7 = *(v4 + 8);
    result = v4 + 8;
    v6 = v7;
    if (v5 >= 0)
    {
      v8 = result;
    }

    else
    {
      v8 = v6;
    }

    *a2 = 0;
    a2[1] = v8;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *(a2 + 4) = v3;
  return result;
}

uint64_t mlc_binary_drop_error(uint64_t a1)
{
  sub_2563797BC(a1 + 16, &v3);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return *(a1 + 56);
}

NSObject *mlc_binary_load(void *context)
{
  result = context[10];
  if (result)
  {
    dispatch_async_f(result, context, sub_256344218);
    return context[11];
  }

  return result;
}

uint64_t sub_256344218(uint64_t a1)
{
  sub_25636CA1C(*(a1 + 64));
  v2 = *(a1 + 88);

  return mlc_event_record(v2);
}

uint64_t mlc_binary_load_sync(uint64_t a1)
{
  sub_25636CA1C(*(a1 + 64));
  v2 = *(a1 + 88);

  return mlc_event_record(v2);
}

uint64_t mlc_binary_execute(uint64_t a1)
{
  mlc_event_reset(*(a1 + 136));
  dispatch_async_f(*(a1 + 80), a1, sub_256344310);
  return *(a1 + 136);
}

uint64_t sub_256344310(uint64_t a1)
{
  sub_25636D7A4(*(a1 + 64));
  v2 = *(a1 + 136);

  return mlc_event_record(v2);
}

uint64_t mlc_binary_reshape(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    return 0;
  }

  mlc_event_reset(*(a1 + 120));
  dispatch_async_f(*(a1 + 80), a1, sub_2563443BC);
  return *(a1 + 120);
}

uint64_t sub_2563443BC(uint64_t a1)
{
  sub_25636D914(*(a1 + 64));
  v2 = *(a1 + 120);

  return mlc_event_record(v2);
}

BOOL mlc_binary_reshape_sync(void *a1)
{
  sub_25636D914(a1[8]);
  mlc_event_record(a1[15]);
  return a1[7] == 0;
}

void mlc_binary_set_kernel_dylib(uint64_t a1, char *__s)
{
  v3 = *(a1 + 64);
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v7 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  sub_25636DBB8(v3, &__dst);
  if (v7 < 0)
  {
    operator delete(__dst);
  }
}

void sub_25634450C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_256344528(uint64_t a1)
{
  *a1 = &unk_286854D10;
  *(a1 + 8) = -1168773808;
  *(a1 + 16) = 0u;
  v2 = a1 + 16;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = sub_256379F80(0x30uLL);
  sub_25636C314(v3, v2);
  *(a1 + 64) = v3;
  operator new();
}

void sub_256344740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v11 = *(v9 - 88);
  *(v9 - 88) = 0;
  if (v11)
  {
    sub_25637C0AC(v11);
  }

  sub_256345B6C(va);
  sub_25632D02C(v7);
  sub_25632D02C(v7 - 3);
  sub_25632EA30(v8);
  sub_25632EA30(v6);
  sub_25632EA30(v5);
  sub_25632EA30(v4);
  sub_25632EA30(v2 + 64);
  sub_256345C64(v3);
  nullsub_34(v2);
  _Unwind_Resume(a1);
}

void sub_256344814(void *a1)
{
  v1 = sub_256345DD8(a1);

  j__free(v1);
}

void sub_256344840(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t sub_256344878(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2563448AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_286854D68;
  *(a1 + 24) = 0u;
  *(a1 + 40) = *(a2 + 40);
  prime = *(a2 + 16);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_25632DA8C(v4, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 16));
    v6 = *(a1 + 16);
    v7 = prime >= *&v6;
    if (prime > *&v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(*(a1 + 32) / *(a1 + 40));
    if (*&v6 < 3uLL || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v8);
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }
    }

    if (prime <= v8)
    {
      prime = v8;
    }

    if (prime < *&v6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 24); i; i = *i)
  {
    sub_256344B00(v4, (i + 2));
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 64) = 0;
  v12 = *(a2 + 48);
  v13 = (a2 + 56);
  if (v12 != v13)
  {
    do
    {
      sub_256345164((a1 + 48), (a1 + 56), v12 + 4);
      v15 = v12[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v12[2];
          v17 = *v16 == v12;
          v12 = v16;
        }

        while (!v17);
      }

      v12 = v16;
    }

    while (v16 != v13);
  }

  return a1;
}

void sub_256344A68(_Unwind_Exception *a1)
{
  sub_2563450B4(v2);
  nullsub_34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_256344A9C(uint64_t a1)
{
  *a1 = &unk_286854D68;
  sub_256345814(a1 + 48, *(a1 + 56));
  sub_2563450B4(a1 + 8);

  return nullsub_34(a1);
}

uint64_t **sub_256344B00(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    sub_256344E58();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_256344E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256344F64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_256344F64(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 != -1)
      {
        (off_286854D88[v3])(&v5, v2 + 40);
      }

      *(v2 + 64) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_256344FF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void *sub_25634502C(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_25632CB5C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_256345058(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_286854D88[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_2563450B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 16);
      if (v4 != -1)
      {
        (off_286854D88[v4])(&v7, v2 + 5);
      }

      *(v2 + 16) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_256345164(uint64_t **a1, uint64_t *a2, const void **a3)
{
  result = *sub_25634526C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_256345258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2563457AC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_25634526C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

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

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
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
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_256345610(uint64_t *result, uint64_t *a2)
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
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
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
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
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

void *sub_2563457AC(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_256345814(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_256345814(a1, *a2);
    sub_256345814(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *sub_256345878(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_25632CE68();
  }

  return result;
}

void sub_2563459E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256345AB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_256345A14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 56)
    {
      v6 = *(v4 - 16);
      if (v6 != -1)
      {
        (off_286854D88[v6])(&v8, v4 - 40);
      }

      *(v4 - 16) = -1;
    }
  }

  return a1;
}

void ***sub_256345AB4(void ***a1)
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
          v6 = *(v4 - 4);
          if (v6 != -1)
          {
            (off_286854D88[v6])(&v8, v4 - 10);
          }

          *(v4 - 4) = -1;
          v4 -= 14;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_256345B6C(uint64_t a1)
{
  *a1 = &unk_286855640;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 16);
        if (v5 != -1)
        {
          (off_286854D88[v5])(&v7, v3 - 40);
        }

        *(v3 - 16) = -1;
        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_286854D68;
  sub_256345814(a1 + 48, *(a1 + 56));
  sub_2563450B4(a1 + 8);
  return nullsub_34(a1);
}

uint64_t sub_256345C64(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v2 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v11 = v3;
  }

  *v4 = 0;
  v12 = v11 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 64;
    goto LABEL_18;
  }

  if (v12 == 2)
  {
    v13 = 128;
LABEL_18:
    *(a1 + 32) = v13;
  }

  if (v2 != v3)
  {
    do
    {
      v14 = *v2++;
      operator delete(v14);
    }

    while (v2 != v3);
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v15 != v16)
    {
      *(a1 + 16) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_256345DD8(void *a1)
{
  *a1 = &unk_286854D10;
  v2 = a1[22];
  if (v2)
  {
    v3 = a1[23];
    v4 = a1[22];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[22];
    }

    a1[23] = v2;
    operator delete(v4);
  }

  v6 = a1[19];
  if (v6)
  {
    v7 = a1[20];
    v8 = a1[19];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 8);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 16;
      }

      while (v7 != v6);
      v8 = a1[19];
    }

    a1[20] = v6;
    operator delete(v8);
  }

  v10 = a1[18];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[16];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[14];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[12];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = a1[9];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  sub_256345C64((a1 + 2));

  return nullsub_34(a1);
}

void sub_2563460A8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_25632CE68();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_25632CCA0();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_2563461FC(void *a1)
{
  *a1 = &unk_286854DC8;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  return nullsub_34(a1);
}

void sub_256346294(void *a1)
{
  *a1 = &unk_286854DC8;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = nullsub_34(a1);

  j__free(v3);
}

void *sub_256346330(void *a1)
{
  v2 = a1 + 72;
  v3 = a1[75];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[71];
  if (v4 == a1 + 68)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[67];
  if (v5 == a1 + 64)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = a1[63];
  if (v6 == a1 + 60)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a1[59];
  if (v7 == a1 + 56)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v8 = a1[55];
  if (v8 == a1 + 52)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v9 = a1[51];
  if (v9 == a1 + 48)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  v10 = a1[47];
  if (v10 == a1 + 44)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v11 = a1[43];
  if (v11 == a1 + 40)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  v12 = a1[39];
  if (v12 == a1 + 36)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  v13 = a1[35];
  if (v13 == a1 + 32)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  v14 = a1[31];
  if (v14 == a1 + 28)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v15 = a1[27];
  if (v15 == a1 + 24)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  v16 = a1[23];
  if (v16 == a1 + 20)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  v17 = a1[19];
  if (v17 == a1 + 16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  v18 = a1[15];
  if (v18 == a1 + 12)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  v19 = a1[11];
  if (v19 == a1 + 8)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  v20 = a1[7];
  if (v20 == a1 + 4)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  v21 = a1[3];
  if (v21 == a1)
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  return a1;
}

uint64_t sub_256346A70(void *a1)
{
  *a1 = &unk_286854DE8;
  sub_256346BE4((a1 + 8));
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      v5 = a1[6];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v8 = a1[2];
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  return nullsub_34(a1);
}

void sub_256346B28(void *a1)
{
  *a1 = &unk_286854DE8;
  sub_256346BE4((a1 + 8));
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      v5 = a1[6];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v8 = a1[2];
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  v9 = nullsub_34(a1);

  j__free(v9);
}

uint64_t sub_256346BE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

char *sub_256346CD0(uint64_t a1)
{
  result = sub_256368A38(*(a1 + 16));
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void sub_256346E4C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v7 = sub_256369D20(*(a1 + 16));
  if (a2 >= (v6[1] - *v6) >> 3)
  {
    v12 = *(a1 + 32);
    v13 = sub_256368A38(*(a1 + 16));
    if (*(v13 + 23) < 0)
    {
      sub_25632CB5C(&v20, *v13, *(v13 + 8));
    }

    else
    {
      v14 = *v13;
      v21 = *(v13 + 16);
      v20 = v14;
    }

    v16 = sub_25637BC84(*(a1 + 16));
    sub_25634921C("set dimension on tensor '", &v20, "' cannot change dimension ", a2, " of rank ", v16, " tensor.", __p);
    sub_25637969C(v12, 5, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return;
    }

    v17 = v20;
LABEL_22:
    operator delete(v17);
    return;
  }

  if (*(*v7 + 8 * a2) < a3)
  {
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = sub_256368A38(*(a1 + 16));
    if (*(v10 + 23) < 0)
    {
      sub_25632CB5C(v18, *v10, *(v10 + 8));
    }

    else
    {
      v11 = *v10;
      v19 = *(v10 + 16);
      *v18 = v11;
    }

    sub_256349538("set dimension on tensor '", v18, "' cannot exceed the maximum size (", *(*v8 + 8 * a2), ") of dimension ", __p);
    sub_25637969C(v9, 5, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

    v17 = v18[0];
    goto LABEL_22;
  }

  v15 = *(**(a1 + 16) + 192);

  v15();
}

void sub_256347078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2563470D8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = (*(**(a1 + 16) + 48))(*(a1 + 16));
  v7 = sub_256369D4C(*(a1 + 16));
  if (a2 >= (v6[1] - *v6) >> 3)
  {
    v12 = *(a1 + 32);
    v13 = sub_256368A38(*(a1 + 16));
    if (*(v13 + 23) < 0)
    {
      sub_25632CB5C(&v20, *v13, *(v13 + 8));
    }

    else
    {
      v14 = *v13;
      v21 = *(v13 + 16);
      v20 = v14;
    }

    v16 = sub_25637BC84(*(a1 + 16));
    sub_25634921C("set stride on tensor '", &v20, "' cannot change stride ", a2, " of rank ", v16, " tensor.", __p);
    sub_25637969C(v12, 5, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return;
    }

    v17 = v20;
LABEL_22:
    operator delete(v17);
    return;
  }

  if (*(*v7 + 8 * a2) < a3)
  {
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = sub_256368A38(*(a1 + 16));
    if (*(v10 + 23) < 0)
    {
      sub_25632CB5C(v18, *v10, *(v10 + 8));
    }

    else
    {
      v11 = *v10;
      v19 = *(v10 + 16);
      *v18 = v11;
    }

    sub_256349538("set stride on tensor '", v18, "' cannot exceed the maximum stride (", *(*v8 + 8 * a2), ") of dimension ", __p);
    sub_25637969C(v9, 5, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

    v17 = v18[0];
    goto LABEL_22;
  }

  v15 = *(**(a1 + 16) + 200);

  v15();
}

void sub_256347304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_256347364(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((*(**(a1 + 16) + 16))(*(a1 + 16)) != 11 || (*(**(a1 + 16) + 104))(*(a1 + 16)) == 1)
  {
    goto LABEL_27;
  }

  sub_25634984C(&v58);
  v6 = sub_256349D6C(&v58, "tensor_set_data", 15);
  v7 = sub_256349D6C(v6, ": Tensor ", 9);
  v8 = sub_256368A38(*(a1 + 16));
  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = sub_256349D6C(v7, v10, v11);
  sub_256349D6C(v12, " is OPAQUE and not user allocated.", 34);
  v13 = *(a1 + 32);
  if ((v68 & 0x10) != 0)
  {
    v15 = v67;
    if (v67 < v64)
    {
      v67 = v64;
      v15 = v64;
    }

    v16 = &v63;
    goto LABEL_16;
  }

  if ((v68 & 8) != 0)
  {
    v16 = v61;
    v15 = v62;
LABEL_16:
    v17 = *v16;
    v14 = v15 - *v16;
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_25632CBF8();
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v57 = v15 - *v16;
    if (v14)
    {
      memmove(&__p, v17, v14);
    }

    goto LABEL_22;
  }

  v14 = 0;
  v57 = 0;
LABEL_22:
  *(&__p + v14) = 0;
  sub_25637969C(v13, 5, &__p);
  if (v57 < 0)
  {
    operator delete(__p);
  }

  v58 = *MEMORY[0x277D82828];
  *(&v58 + *(v58 - 24)) = *(MEMORY[0x277D82828] + 24);
  v59 = MEMORY[0x277D82878] + 16;
  if (v66 < 0)
  {
    operator delete(v65);
  }

  v59 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v60);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](v69);
LABEL_27:
  if ((*(**(a1 + 16) + 16))(*(a1 + 16)) == 11)
  {
LABEL_28:
    result = (*(**(a1 + 16) + 104))(*(a1 + 16));
    if (result)
    {
      v19 = result == 2;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = (*(**(a1 + 16) + 128))(*(a1 + 16));
      v21 = (*(**(a1 + 16) + 168))(*(a1 + 16));
      return memcpy(v21, a2, v20);
    }

    else if (result == 1)
    {
      return (*(**(a1 + 16) + 224))(*(a1 + 16), a2);
    }

    return result;
  }

  v22 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  if (((v22 - 1) & a2) == 0)
  {
    if ((*(**(a1 + 16) + 128))(*(a1 + 16)) <= a3)
    {
      goto LABEL_28;
    }

    sub_25634984C(&v58);
    v37 = sub_256349D6C(&v58, "tensor_set_data", 15);
    v38 = sub_256349D6C(v37, ": memory block is ", 18);
    v39 = MEMORY[0x259C60DF0](v38, a3);
    v40 = sub_256349D6C(v39, " bytes, but ", 12);
    v41 = sub_256349D6C(v40, "tensor ", 7);
    v42 = sub_256368A38(*(a1 + 16));
    v43 = *(v42 + 23);
    if (v43 >= 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *v42;
    }

    if (v43 >= 0)
    {
      v45 = *(v42 + 23);
    }

    else
    {
      v45 = *(v42 + 8);
    }

    v46 = sub_256349D6C(v41, v44, v45);
    v47 = sub_256349D6C(v46, " is ", 4);
    v48 = (*(**(a1 + 16) + 128))(*(a1 + 16));
    v49 = MEMORY[0x259C60DF0](v47, v48);
    v50 = sub_256349D6C(v49, " ", 1);
    sub_256349D6C(v50, "bytes.", 6);
    v35 = *(a1 + 32);
    if ((v68 & 0x10) != 0)
    {
      v54 = v67;
      if (v67 < v64)
      {
        v67 = v64;
        v54 = v64;
      }

      v55 = &v63;
    }

    else
    {
      if ((v68 & 8) == 0)
      {
        v36 = 0;
        v57 = 0;
        goto LABEL_76;
      }

      v55 = v61;
      v54 = v62;
    }

    v53 = *v55;
    v36 = v54 - *v55;
    if (v36 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_25632CBF8();
    }

    if (v36 >= 0x17)
    {
      operator new();
    }

    v57 = v54 - *v55;
    if (!v36)
    {
      goto LABEL_76;
    }

LABEL_75:
    memmove(&__p, v53, v36);
    goto LABEL_76;
  }

  v23 = v22;
  sub_25634984C(&v58);
  v24 = sub_256349D6C(&v58, "tensor_set_data", 15);
  v25 = sub_256349D6C(v24, ": pointer 0x", 12);
  *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
  v26 = MEMORY[0x259C60DC0]();
  *(v26 + *(*v26 - 24) + 8) = *(v26 + *(*v26 - 24) + 8) & 0xFFFFFFB5 | 2;
  v27 = sub_256349D6C(v26, " does not satisfy tensor ", 25);
  v28 = sub_256368A38(*(a1 + 16));
  v29 = *(v28 + 23);
  if (v29 >= 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = *v28;
  }

  if (v29 >= 0)
  {
    v31 = *(v28 + 23);
  }

  else
  {
    v31 = *(v28 + 8);
  }

  v32 = sub_256349D6C(v27, v30, v31);
  v33 = sub_256349D6C(v32, "'s ", 3);
  v34 = MEMORY[0x259C60DF0](v33, v23);
  sub_256349D6C(v34, "-byte alignment requirement.", 28);
  v35 = *(a1 + 32);
  if ((v68 & 0x10) != 0)
  {
    v51 = v67;
    if (v67 < v64)
    {
      v67 = v64;
      v51 = v64;
    }

    v52 = &v63;
LABEL_60:
    v53 = *v52;
    v36 = v51 - *v52;
    if (v36 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_25632CBF8();
    }

    if (v36 >= 0x17)
    {
      operator new();
    }

    v57 = v51 - *v52;
    if (!v36)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if ((v68 & 8) != 0)
  {
    v52 = v61;
    v51 = v62;
    goto LABEL_60;
  }

  v36 = 0;
  v57 = 0;
LABEL_76:
  *(&__p + v36) = 0;
  sub_25637969C(v35, 5, &__p);
  if (v57 < 0)
  {
    operator delete(__p);
  }

  v58 = *MEMORY[0x277D82828];
  *(&v58 + *(v58 - 24)) = *(MEMORY[0x277D82828] + 24);
  v59 = MEMORY[0x277D82878] + 16;
  if (v66 < 0)
  {
    operator delete(v65);
  }

  v59 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v60);
  std::ostream::~ostream();
  return MEMORY[0x259C60E90](v69);
}

void sub_256347C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_256347D34(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854E08;
  a2[1] = v2;
  return result;
}

void *sub_256347D6C(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256347FC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_256348040(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854E50;
  a2[1] = v2;
  return result;
}

void *sub_256348078(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2563482D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_25634834C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854E98;
  a2[1] = v2;
  return result;
}

void *sub_256348384(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2563485DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_256348658(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854EE0;
  a2[1] = v2;
  return result;
}

void *sub_256348690(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2563488E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_256348964(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854F28;
  a2[1] = v2;
  return result;
}

void *sub_2563489A0(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256348BF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_256348C74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854F70;
  a2[1] = v2;
  return result;
}

void *sub_256348CAC(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256348F04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_256348F80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286854FB8;
  a2[1] = v2;
  return result;
}

void *sub_256348FB8(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256349210(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_25634921C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, _BYTE *a8@<X8>)
{
  v40[2] = *MEMORY[0x277D85DE8];
  sub_25634984C(&v26);
  v15 = *a2;
  v40[0] = *(a2 + 8);
  *(v40 + 7) = *(a2 + 15);
  v16 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v17 = strlen(a1);
  sub_256349D6C(&v26, a1, v17);
  v37 = v15;
  *v38 = v40[0];
  *&v38[7] = *(v40 + 7);
  v39 = v16;
  sub_256349CA0(&v26, &v37, a3, a4, a5, a6, a7);
  if (v39 < 0)
  {
    operator delete(v37);
    v18 = v35;
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v20 = v31;
    }

    v21 = &v30;
    goto LABEL_10;
  }

  v18 = v35;
  if ((v35 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v18 & 8) == 0)
  {
    v19 = 0;
    a8[23] = 0;
    goto LABEL_16;
  }

  v21 = v29;
  v20 = v29[2];
LABEL_10:
  v22 = *v21;
  v19 = v20 - *v21;
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a8[23] = v19;
  if (v19)
  {
    memmove(a8, v22, v19);
  }

LABEL_16:
  a8[v19] = 0;
  v26 = *MEMORY[0x277D82828];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82828] + 24);
  v27 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v27 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v28);
  std::ostream::~ostream();
  result = MEMORY[0x259C60E90](&v36);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2563494F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 113) < 0)
  {
    operator delete(*(v3 - 136));
  }

  sub_256349A38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_256349538@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  v36[2] = *MEMORY[0x277D85DE8];
  sub_25634984C(&v22);
  v12 = *a2;
  v36[0] = *(a2 + 8);
  *(v36 + 7) = *(a2 + 15);
  v13 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = strlen(a1);
  sub_256349D6C(&v22, a1, v14);
  v33 = v12;
  *v34 = v36[0];
  *&v34[7] = *(v36 + 7);
  v35 = v13;
  sub_25634A114(&v22, &v33, a3, a4, a5);
  if (v35 < 0)
  {
    operator delete(v33);
    v15 = v31;
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v17 = v27;
    }

    v18 = &v26;
    goto LABEL_10;
  }

  v15 = v31;
  if ((v31 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v15 & 8) == 0)
  {
    v16 = 0;
    a6[23] = 0;
    goto LABEL_16;
  }

  v18 = v25;
  v17 = v25[2];
LABEL_10:
  v19 = *v18;
  v16 = v17 - *v18;
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a6[23] = v16;
  if (v16)
  {
    memmove(a6, v19, v16);
  }

LABEL_16:
  a6[v16] = 0;
  v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  v23 = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v24);
  std::ostream::~ostream();
  result = MEMORY[0x259C60E90](&v32);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256349808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 113) < 0)
  {
    operator delete(*(v9 - 136));
  }

  sub_256349A38(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_25634984C(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x277D82828] + 16);
  v5 = *(MEMORY[0x277D82828] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C60E40](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_256349B58(v3);
  return a1;
}

void sub_2563499F4(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x259C60E90](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_256349A38(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x259C60E90](a1 + 112);
  return a1;
}

uint64_t sub_256349B58(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *sub_256349CA0(void *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, const char *a7)
{
  v13 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v14 = v13;
  }

  sub_256349D6C(a1, a2, v14);
  v15 = strlen(a3);
  sub_256349D6C(a1, a3, v15);
  MEMORY[0x259C60DF0](a1, a4);
  v16 = strlen(a5);
  sub_256349D6C(a1, a5, v16);
  MEMORY[0x259C60DF0](a1, a6);
  v17 = strlen(a7);

  return sub_256349D6C(a1, a7, v17);
}

void *sub_256349D6C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C60D90](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_256349F18(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C60DA0](v14);
  return a1;
}

void sub_256349EB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C60DA0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x256349E90);
}

uint64_t sub_256349F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_25632CBF8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_25634A0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25634A114(void *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5)
{
  v9 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  sub_256349D6C(a1, a2, v10);
  v11 = strlen(a3);
  sub_256349D6C(a1, a3, v11);
  MEMORY[0x259C60E00](a1, a4);
  v12 = strlen(a5);
  sub_256349D6C(a1, a5, v12);

  JUMPOUT(0x259C60DF0);
}

uint64_t sub_25634A234(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286855000;
  a2[1] = v2;
  return result;
}

void *sub_25634A274(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25634A4CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_25634A548(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286855048;
  a2[1] = v2;
  return result;
}

void *sub_25634A588(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25634A7E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

uint64_t sub_25634A85C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286855090;
  a2[1] = v2;
  return result;
}

void *sub_25634A894(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25634AAEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

void sub_25634AAFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t sub_25634AB34(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    sub_256346330((v1 + 8));

    JUMPOUT(0x259C60EF0);
  }

  return result;
}

void *sub_25634AB94(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_256346330((v1 + 8));
    MEMORY[0x259C60EF0](v1, 0x10A0C409724566ELL);
    return v2;
  }

  return result;
}

uint64_t sub_25634ABE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *v98 = 0u;
  *&v98[16] = 0x100000001;
  v99 = *&v98[8];
  v94[0] = 0;
  v97 = 0xFFFFFFFE00000000;
  v103 = 200;
  v6 = malloc_type_malloc(0x3840uLL, 0x10F2040C712DE25uLL);
  v101 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v104 = 0;
  i = 0;
  v102 = v6;
  __len = xmmword_25637D250;
  v7 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  v106 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  *v7 = 0;
  v8 = malloc_type_malloc(*(&__len + 1), 0x100004077774924uLL);
  __b = v8;
  if (!v8)
  {
    free(v106);
    goto LABEL_10;
  }

  bzero(v8, *(&__len + 1));
  v9 = setjmp(v100);
  if (v9 == 2)
  {
LABEL_10:
    sub_25634C690(&v98[8], a1, "memory exhausted");
    v15 = 2;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_148;
  }

  v10 = v102;
  v102 += 72;
  --v103;
  *v10 = 1;
  *(v10 + 1) = 0;
  v10[1] = 1;
  *(v10 + 1) = *v106;
  *(v10 + 2) = 0;
  *(v10 + 3) = *v98;
  v11 = v99;
  *(v10 + 2) = *&v98[8];
  *(v10 + 3) = v11;
  v12 = v103;
  *v106 = v10;
  if (v12 <= 1)
  {
    sub_25634C9BC(v94);
  }

  result = 0;
  v14 = byte_25637D3BB;
  while (1)
  {
    while (1)
    {
LABEL_31:
      v23 = v14;
      v24 = *(*v106 + 4);
      if (v24 == 6)
      {
LABEL_151:
        v15 = 0;
        goto LABEL_11;
      }

      v25 = result;
      v26 = byte_25637D36A[v24];
      if (v26 == -55)
      {
        v27 = v23[v24];
        v14 = v23;
        if (!v27)
        {
          goto LABEL_45;
        }

        v28 = sub_25634BCE8(v94, 0, v27, 1, a1, a3);
        if (v28 <= 1)
        {
          if (!v28)
          {
            goto LABEL_59;
          }

          if (v28 == 1)
          {
LABEL_49:
            v28 = 14;
            goto LABEL_59;
          }

          goto LABEL_134;
        }

        if (v28 == 2)
        {
          goto LABEL_130;
        }

        if (v28 == 3)
        {
          goto LABEL_129;
        }

        goto LABEL_37;
      }

      v29 = HIDWORD(v97);
      if (HIDWORD(v97) == -2)
      {
        HIDWORD(v97) = sub_25632B460(v98, &v98[8], a2);
        v29 = HIDWORD(v97);
      }

      if (v29 <= 0)
      {
        v30 = 0;
        HIDWORD(v97) = 0;
LABEL_53:
        v33 = v30;
        v32 = v30 + v26;
        if (v32 > 0x44)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (v29 >= 0x10A)
      {
        v30 = 2;
        goto LABEL_53;
      }

      if (v29 == 256)
      {
        v95 = *&v98[8];
        v96 = v99;
        v28 = 15;
        v14 = v23;
        goto LABEL_59;
      }

      v31 = byte_25637D260[v29];
      v32 = v31 + v26;
      v33 = v31;
      if ((v31 + v26) > 0x44)
      {
        goto LABEL_56;
      }

LABEL_54:
      if (v33 == byte_25637D40C[v32])
      {
        v34 = &word_25637D564[byte_25637D56E[v32]];
        v35 = byte_25637D4A6[v32];
        v14 = v23;
        goto LABEL_57;
      }

LABEL_56:
      v36 = v23[v24];
      v14 = v23;
      v35 = -v36;
      v34 = word_25637D564;
LABEL_57:
      if (*v34)
      {
        v28 = 11;
        goto LABEL_59;
      }

      if (v35 >= 1)
      {
        HIDWORD(v97) = -2;
        v66 = v102;
        v102 += 72;
        --v103;
        *v66 = 1;
        *(v66 + 1) = v35;
        v66[1] = 1;
        *(v66 + 1) = *v106;
        *(v66 + 2) = v25 + 1;
        *(v66 + 3) = *v98;
        v67 = v99;
        *(v66 + 2) = *&v98[8];
        *(v66 + 3) = v67;
        v68 = v103;
        *v106 = v66;
        if (v68 <= 1)
        {
          sub_25634C9BC(v94);
        }

        if (v94[0] >= 1)
        {
          --v94[0];
        }

        v37 = 0;
        result = v25 + 1;
        goto LABEL_123;
      }

      if (!v35)
      {
LABEL_45:
        v95 = *&v98[8];
        v96 = v99;
        sub_25634B8C8(v94, a1);
        v28 = 15;
        goto LABEL_59;
      }

      v28 = sub_25634BCE8(v94, 0, -v35, 1, a1, a3);
      if (v28 > 1)
      {
        if (v28 == 2)
        {
LABEL_130:
          v28 = 6;
          goto LABEL_59;
        }

        if (v28 == 3)
        {
LABEL_129:
          v28 = 15;
          goto LABEL_59;
        }

LABEL_37:
        if (v28 == 4)
        {
          goto LABEL_59;
        }

        goto LABEL_134;
      }

      if (!v28)
      {
        goto LABEL_59;
      }

      if (v28 == 1)
      {
        goto LABEL_49;
      }

LABEL_134:
      v28 = 7;
LABEL_59:
      v37 = v28;
      result = v25;
      if (v37 > 10)
      {
        break;
      }

LABEL_123:
      if (v37)
      {
        if ((v37 - 6) < 2)
        {
          goto LABEL_148;
        }

        if (v37 != 4)
        {
          return result;
        }

        goto LABEL_10;
      }
    }

    if (v37 == 11)
    {
      break;
    }

    if (v37 != 15)
    {
      goto LABEL_151;
    }

LABEL_62:
    if (v94[0] != 3)
    {
      v69 = __len;
      if (__len >= 1)
      {
        v70 = 0;
        while (1)
        {
          v71 = v70 + 1;
          if (*(v106 + v70))
          {
            break;
          }

          ++v70;
          if (__len == v71)
          {
            goto LABEL_178;
          }
        }

        if (v71 < __len)
        {
          do
          {
            if (*(v106 + v71))
            {
              i = *(v106 + v71);
            }

            *(v106 + v71++) = 0;
          }

          while (v69 != v71);
        }

        v72 = 0;
        v73 = 0;
        v74 = v69;
        do
        {
          v76 = v72;
          v75 = v73;
          v77 = *(v106 + v72);
          if (v77)
          {
            *(v106 + v73) = v77;
            *(__b + v73) = *(__b + v76);
            v75 = v73 + 1;
          }

          else
          {
            *&__len = --v74;
          }

          v72 = v76 + 1;
          v73 = v75;
        }

        while (v75 < v74);
        if (v74 == 1)
        {
          v78 = v104;
          if (v104)
          {
            if (*v106 == v104)
            {
              v79 = 0;
            }

            else
            {
              v80 = *v106;
              v81 = 0;
              do
              {
                v82 = *(v80 + 1);
                *(v80 + 1) = v81;
                v79 = v80;
                v81 = v80;
                v80 = v82;
              }

              while (v82 != v78);
            }

            v83 = (v78 + 72);
            v84 = v103 - 0x71C71C71C71C71C7 * ((v102 - v101) >> 3) + 0x71C71C71C71C71C7 * ((v83 - v101) >> 3);
            v102 = v83;
            v103 = v84;
            v104 = 0;
            for (i = 0; v79; v103 = v89 - 1)
            {
              v85 = *v79;
              v86 = v79[1];
              v87 = v79[3];
              *(v83 + 2) = v79[2];
              *(v83 + 3) = v87;
              *v83 = v85;
              *(v83 + 1) = v86;
              v79 = *(v79 + 1);
              *(v102 + 1) = v102 - 72;
              v88 = v102;
              v89 = v103;
              *v106 = v102;
              v83 = v88 + 72;
              v102 = v88 + 72;
            }
          }
        }

        v94[0] = 3;
        v90 = *v106;
        if (*v106)
        {
          v91 = v106;
          do
          {
            v92 = *(v90 + 48);
            v95 = *(v90 + 32);
            v96 = v92;
            v93 = *(v90 + 8);
            if (v93)
            {
              sub_25634C8E0(v90);
              v93 = *(v90 + 8);
              v91 = v106;
            }

            *v91 = v93;
            v102 -= 72;
            ++v103;
            v90 = *v106;
            v91 = v106;
          }

          while (*v106);
        }
      }

LABEL_178:
      longjmp(v100, 1);
    }

    v38 = HIDWORD(v97);
    do
    {
      if (v38 != -2)
      {
        if (!v38)
        {
          goto LABEL_178;
        }

        *(*v106 + 48) = v99;
        if (HIDWORD(v97) > 0x109)
        {
          v39 = 2;
        }

        else
        {
          v39 = byte_25637D260[HIDWORD(v97)];
        }

        sub_25634C7AC(v39, v98);
        HIDWORD(v97) = -2;
      }

      v38 = sub_25632B460(v98, &v98[8], a2);
      HIDWORD(v97) = v38;
      if (v38 <= 0)
      {
        HIDWORD(v97) = 0;
        v40 = 0;
        v38 = 0;
      }

      else if (v38 > 0x109)
      {
        v40 = 2;
      }

      else
      {
        v40 = byte_25637D260[v38];
      }

      v41 = *(*v106 + 4);
      v42 = byte_25637D36A[v41];
      if (v42 == -55)
      {
        break;
      }

      v43 = v40 + v42;
      if (v43 <= 0x44 && v40 == byte_25637D40C[v43])
      {
        break;
      }
    }

    while (!v14[v41]);
    result = *(*v106 + 16);
  }

  v44 = __len;
  do
  {
    v45 = result;
    if (v44 >= 1)
    {
      memset(__b, HIDWORD(v97) != -2, v44);
      v46 = 0;
      while (1)
      {
        v47 = sub_25634C150(v94, v46, a1, a2, a3);
        if (v47)
        {
          break;
        }

        ++v46;
        v48 = __len;
        if (v46 >= __len)
        {
          if (__len >= 1)
          {
            v49 = 0;
            v50 = __len;
            v51 = 0;
            v52 = __len;
            do
            {
              v54 = v51;
              v53 = v49;
              v55 = *(v106 + v51);
              if (v55)
              {
                *(v106 + v49) = v55;
                *(__b + v49) = *(__b + v54);
                v53 = v49 + 1;
              }

              else
              {
                *&__len = --v52;
                v50 = v52;
              }

              v51 = v54 + 1;
              v48 = v50;
              v49 = v53;
              v44 = v52;
            }

            while (v53 < v52);
            goto LABEL_92;
          }

          if (__len)
          {
            goto LABEL_93;
          }

          goto LABEL_112;
        }
      }

      if (v47 == 1)
      {
        goto LABEL_151;
      }

      v14 = v23;
      if (v47 != 3)
      {
        goto LABEL_145;
      }

      goto LABEL_62;
    }

    v48 = v44;
LABEL_92:
    if (!v44)
    {
LABEL_112:
      if (i)
      {
        *v106 = i;
        *&__len = 1;
        i = 0;
        v14 = v23;
      }

      else
      {
        v14 = v23;
        if (!v48)
        {
          sub_25634C518(v94, &v98[8], a1, "syntax error");
        }
      }

      v47 = sub_25634C54C(v94, a1, a3);
      if (v47 <= 2)
      {
        if (!v47)
        {
          v95 = *&v98[8];
          v96 = v99;
          sub_25634B8C8(v94, a1);
          goto LABEL_62;
        }

        goto LABEL_152;
      }

      if (v47 == 3)
      {
        goto LABEL_62;
      }

LABEL_145:
      if (v47 == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_148;
    }

LABEL_93:
    if (HIDWORD(v97) > 0x109)
    {
      v56 = 2;
    }

    else
    {
      v56 = byte_25637D260[HIDWORD(v97)];
    }

    HIDWORD(v97) = -2;
    v57 = v45 + 1;
    v58 = v48;
    if (v48 >= 1)
    {
      v59 = 0;
      do
      {
        if (v56 == 1)
        {
          v60 = 0;
        }

        else
        {
          v61 = *(*(v106 + v59) + 4);
          if (byte_25637D36A[v61] == 201 || (v62 = v56 + byte_25637D36A[v61], v62 > 0x44) || v56 != byte_25637D40C[v62])
          {
            v60 = -v23[v61];
          }

          else
          {
            v60 = byte_25637D4A6[v62];
          }
        }

        v63 = v102;
        v102 += 72;
        --v103;
        *v63 = 1;
        *(v63 + 1) = v60;
        v63[1] = 1;
        *(v63 + 1) = *(v106 + v59);
        *(v63 + 2) = v57;
        *(v63 + 3) = *v98;
        v64 = v99;
        *(v63 + 2) = *&v98[8];
        *(v63 + 3) = v64;
        v65 = v103;
        *(v106 + v59) = v63;
        if (v65 <= 1)
        {
          sub_25634C9BC(v94);
        }

        ++v59;
      }

      while (v59 < __len);
      v58 = __len;
    }

    v44 = v58;
    result = v57;
  }

  while (v58 != 1);
  v47 = sub_25634C54C(v94, a1, a3);
  if (v47 > 2)
  {
    v14 = v23;
    if (v47 == 3)
    {
      goto LABEL_62;
    }

    goto LABEL_145;
  }

  if (!v47)
  {
    sub_25634C5B8(v94);
    result = v57;
    v14 = v23;
    goto LABEL_31;
  }

LABEL_152:
  if (v47 == 1)
  {
    goto LABEL_151;
  }

LABEL_148:
  v15 = 1;
LABEL_11:
  if (HIDWORD(v97) != -2)
  {
    if (HIDWORD(v97) > 0x109)
    {
      v16 = 2;
    }

    else
    {
      v16 = byte_25637D260[HIDWORD(v97)];
    }

    sub_25634C7AC(v16, v98);
  }

  v17 = v101;
  if (v101)
  {
    if (v106 && __len >= 1)
    {
      v18 = v106;
      v19 = __len;
      while (1)
      {
        v20 = *v18;
        if (*v18)
        {
          break;
        }

        ++v18;
        if (!--v19)
        {
          goto LABEL_28;
        }
      }

      do
      {
        v21 = *(v20 + 48);
        v95 = *(v20 + 32);
        v96 = v21;
        v22 = *(v20 + 8);
        if (v22)
        {
          sub_25634C8E0(v20);
          v22 = *(v20 + 8);
        }

        *v18 = v22;
        v102 -= 72;
        ++v103;
        v20 = *v18;
      }

      while (*v18);
      v17 = v101;
    }

LABEL_28:
    free(v17);
    free(v106);
    free(__b);
  }

  return v15;
}