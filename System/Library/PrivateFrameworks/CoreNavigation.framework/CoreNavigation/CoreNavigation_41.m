uint64_t *sub_1D0E058AC(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_1D0C5663C();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_1D0D46B30(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1D0D46B78(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void *sub_1D0E05A1C(uint64_t a1, void *a2)
{
  v4 = a2 + 1;
  v5 = *(a1 + 8);
  if (a2 + 1 == v5)
  {
    v7 = a2;
  }

  else
  {
    do
    {
      v6 = *(v4 - 1);
      *(v4 - 1) = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ++v4;
    }

    while (v4 != v5);
    v5 = *(a1 + 8);
    v7 = v4 - 1;
  }

  while (v5 != v7)
  {
    v9 = *--v5;
    v8 = v9;
    *v5 = 0;
    if (v9)
    {
      (*(*v8 + 8))(v8);
    }
  }

  *(a1 + 8) = v7;
  return a2;
}

void raven::RavenNLOSEngine::FindApproximatePathsUsingRayTracing(cnprint::CNPrinter *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  *a9 = a9;
  a9[1] = a9;
  a9[2] = 0;
  if (*(a1 + 8))
  {
    if (a6)
    {
      v14 = *a1;
      v15 = *(*a1 + 3576);
      v16 = *a5 - *a4;
      v17 = a5[1] - a4[1];
      v18 = a5[2] - a4[2];
      v19 = hypot(v16, v17);
      v20 = atan2(v18, v19);
      if (v20 >= 0.0)
      {
        *&v75[0] = &unk_1F4CEC5C8;
        memset(v75 + 8, 0, 56);
        v76 = 2;
        v77 = 0;
        v35 = sqrt(v17 * v17 + v16 * v16 + v18 * v18);
        if (fabs(v35) >= 2.22044605e-16)
        {
          v43 = *(v14 + 3560);
          v44 = 1.0 / v35;
          v45 = v16 * v44;
          v46 = v18 * v44;
          v78 = *a4;
          v79 = *(a4 + 2);
          v75[1] = v78;
          *&v75[2] = v79;
          v65 = v17 * v44;
          v66 = v45;
          *(&v75[2] + 1) = v45;
          *&v75[3] = v17 * v44;
          *(&v75[3] + 1) = v18 * v44;
          *(&v75[0] + 1) = a6;
          v76 = 0;
          v77 = 0;
          (*(*a6 + 16))(a6, v75);
          if ((v77 & 1) == 0)
          {
            v67 = v78;
            v68 = v79;
            v69 = v66;
            v70 = v65;
            v71 = v46;
            v72 = &v72;
            v73 = &v72;
            v74 = 0;
            sub_1D0E0CEC8();
          }

          v47 = __sincos_stret(v20);
          v48 = 0.0;
          do
          {
            v49 = __sincos_stret(v48);
            v78 = *a4;
            v79 = *(a4 + 2);
            v80 = v47.__cosval * v49.__sinval;
            v81 = v47.__cosval * v49.__cosval;
            sinval = v47.__sinval;
            sub_1D0E08D78(&v67, &v78, a6, v43, 0);
            v50 = v74;
            if (v74)
            {
              v51 = v72;
              v52 = *(v72 + 56);
              v53 = *(v72 + 64);
              v54 = sqrt((v65 * v65 + v66 * v66) * (v53 * v53 + v52 * v52));
              if (fabs(v54) >= 2.22044605e-16)
              {
                v55 = (v65 * v53 + v66 * v52) / v54;
                v56 = -3.14159265;
                if (fabs(v55 + 1.0) >= 2.22044605e-16)
                {
                  v56 = 0.0;
                  if (fabs(v55 + -1.0) >= 2.22044605e-16)
                  {
                    v56 = acos(v55);
                  }
                }

                if (v15 * 0.0174532925 * 0.5 >= v56)
                {
                  for (i = a9[1]; i != a9; i = i[1])
                  {
                    if (v50 == i[10])
                    {
                      if (v73 == &v72)
                      {
                        goto LABEL_30;
                      }

                      v58 = i + 9;
                      v59 = v73;
                      while (1)
                      {
                        v60 = *v58;
                        if (v59[2] != *(v60 + 16))
                        {
                          break;
                        }

                        v58 = (v60 + 8);
                        v59 = v59[1];
                        if (v59 == &v72)
                        {
                          goto LABEL_30;
                        }
                      }
                    }
                  }

                  if (v50 != v43)
                  {
                    goto LABEL_29;
                  }

                  v61 = v51[3];
                  v75[1] = v51[2];
                  v75[2] = v61;
                  v75[3] = v51[4];
                  *(&v75[0] + 1) = a6;
                  v76 = 0;
                  v77 = 0;
                  (*(*a6 + 16))(a6, v75);
                  if ((v77 & 1) == 0)
                  {
LABEL_29:
                    operator new();
                  }
                }
              }
            }

LABEL_30:
            sub_1D0BCC0B4(&v72);
            v48 = v15 * 0.0174532925 + v48;
          }

          while (v48 <= 6.28318531);
        }

        else
        {
          LOWORD(v67) = 12;
          LOBYTE(v78) = 4;
          v36 = *a2;
          v37 = *(a2 + 8);
          sub_1D0BCFAB8(a3);
          v64 = v37 + v36;
          cnprint::CNPrinter::Print(&v67, &v78, "#nlos,time,%.3lf,zero distance to %s", v38, v39, v40, v41, v42, SLOBYTE(v64));
        }
      }

      else
      {
        LOWORD(v75[0]) = 12;
        LOBYTE(v67) = 4;
        v21 = *a2;
        v22 = *(a2 + 8);
        sub_1D0BCFAB8(a3);
        v63 = v22 + v21;
        cnprint::CNPrinter::Print(v75, &v67, "#nlos,time,%.3lf,%s satellite below horizon; elevation = %.1f deg", v23, v24, v25, v26, v27, SLOBYTE(v63));
      }
    }

    else
    {
      LOWORD(v75[0]) = 12;
      LOBYTE(v67) = 4;
      v34 = *(a2 + 8) + *a2;
      cnprint::CNPrinter::Print(v75, &v67, "#nlos,time,%.3lf,building data pointer is null in %s", a4, a5, 0, a7, a8, SLOBYTE(v34));
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v75[0]) = 12;
    LOBYTE(v67) = 1;
    v33 = *(a2 + 8) + *a2;
    cnprint::CNPrinter::Print(v75, &v67, "#nlos,time,%.3lf,object not configured in %s", v28, v29, v30, v31, v32, SLOBYTE(v33));
  }

  v62 = *MEMORY[0x1E69E9840];
}

void sub_1D0E06190(_Unwind_Exception *a1)
{
  sub_1D0BCC0B4(v2);
  sub_1D0E09C08(v1);
  _Unwind_Resume(a1);
}

void raven::RavenNLOSEngine::RefineApproximatePath(cnprint::CNPrinter *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  *(a6 + 232) = 0;
  if (*(a1 + 8))
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 64);
    if (v9)
    {
      memset(v37, 0, sizeof(v37));
      sub_1D0E090D8(v37, v9 + 2);
      if (!(v9 >> 61))
      {
        sub_1D0D46998(v9);
      }

      sub_1D0C5663C();
    }

    v16 = *a5 - *a2;
    v17 = a5[1] - v7;
    v18 = a5[2] - v8;
    v19 = sqrt(v17 * v17 + v16 * v16 + v18 * v18);
    if (fabs(v19) >= 2.22044605e-16)
    {
      *&v38 = *a2;
      *(&v38 + 1) = v7;
      v27 = v16 * (1.0 / v19);
      v39 = v8;
      v40 = v27;
      v28 = v17 * (1.0 / v19);
      v29 = v18 * (1.0 / v19);
      v41 = v28;
      v42 = v29;
      v43[0] = v43;
      v43[1] = v43;
      v44 = *a5;
      v30 = *(a5 + 2);
      v43[2] = 0;
      v45 = v30;
      v46 = 0x7FF8000000000000;
      v49 = 0x300000001;
      v48 = xmmword_1D0E7F310;
      v47 = &unk_1F4CDF248;
      v50 = &v51;
      v54 = 0x300000001;
      v53 = xmmword_1D0E7F310;
      v52 = &unk_1F4CDF248;
      v55 = &v56;
      v57 = 1;
      sub_1D0E0A5AC(a6, &v38);
      if (v57 == 1)
      {
        v52 = &unk_1F4CD5E28;
        v47 = &unk_1F4CD5E28;
        sub_1D0BCC0B4(v43);
      }

      *(a6 + 96) = v19;
      *(a6 + 112) = xmmword_1D0E7F310;
      v31 = *(a6 + 136);
      *v31 = -v27;
      v31[1] = -v28;
      v31[2] = -v29;
      *(a6 + 176) = xmmword_1D0E7F310;
      v32 = *(a6 + 200);
      *v32 = v27;
      v32[1] = v28;
      v32[2] = v29;
    }

    else
    {
      LOWORD(v38) = 12;
      LOBYTE(v36) = 4;
      v20 = *a3;
      v21 = *(a3 + 8);
      sub_1D0BCFAB8(a4);
      v34 = v21 + v20;
      cnprint::CNPrinter::Print(&v38, &v36, "#nlos,time,%.3lf,zero distance to %s", v22, v23, v24, v25, v26, SLOBYTE(v34));
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v38) = 12;
    LOBYTE(v36) = 1;
    v15 = *(a3 + 8) + *a3;
    cnprint::CNPrinter::Print(&v38, &v36, "#nlos,time,%.3lf,object not configured in %s", v10, v11, v12, v13, v14, SLOBYTE(v15));
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1D0E089F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (LOBYTE(STACK[0x7E8]) == 1)
  {
    STACK[0x7A8] = &unk_1F4CD5E28;
    STACK[0x768] = &unk_1F4CD5E28;
    sub_1D0BCC0B4(&STACK[0x730]);
  }

  sub_1D0BCC0B4(v64);
  STACK[0x700] = &STACK[0x498];
  sub_1D0E0B0D8(&STACK[0x700]);
  STACK[0x700] = &STACK[0x4B0];
  sub_1D0E0B0D8(&STACK[0x700]);
  STACK[0x700] = &STACK[0x640];
  sub_1D0E0B0D8(&STACK[0x700]);
  STACK[0x5E8] = &STACK[0x658];
  sub_1D0E0B198(&STACK[0x5E8]);
  STACK[0x5E8] = &STACK[0x670];
  sub_1D0E0B0D8(&STACK[0x5E8]);
  if (STACK[0x688])
  {
    operator delete(STACK[0x688]);
  }

  if (STACK[0x6A0])
  {
    operator delete(STACK[0x6A0]);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (STACK[0x6B8])
  {
    operator delete(STACK[0x6B8]);
  }

  if (STACK[0x6D0])
  {
    operator delete(STACK[0x6D0]);
  }

  if (a64)
  {
    operator delete(a64);
  }

  if (STACK[0x6E8])
  {
    operator delete(STACK[0x6E8]);
  }

  if (*(a22 + 232) == 1)
  {
    *(a22 + 168) = &unk_1F4CD5E28;
    *(a22 + 104) = &unk_1F4CD5E28;
    sub_1D0BCC0B4((a22 + 48));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0E08D78(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2[1];
  *result = *a2;
  *(result + 16) = v5;
  *(result + 32) = a2[2];
  *(result + 48) = result + 48;
  *(result + 56) = result + 48;
  *(result + 64) = 0;
  if (a4)
  {
    v11[0] = &unk_1F4CECAA8;
    v7 = a2[1];
    v12 = *a2;
    v13 = v7;
    v14 = a2[2];
    v11[1] = a3;
    v18 = a5;
    v19 = &unk_1F4CEC730;
    v15 = 0;
    v16 = 0x7FF0000000000000;
    v17 = 0;
    v23 = -1;
    v24 = &unk_1F4CEC730;
    *v25 = a3;
    *&v25[8] = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v29 = -1;
    v22 = 0u;
    v20 = *v25;
    memset(v21, 0, sizeof(v21));
    sub_1D0E0BBF4(v21, &v25[16]);
    v23 = v29;
    v24 = &unk_1F4CEC730;
    sub_1D0E0BA98(&v25[16]);
    sub_1D0E0B780(&v19);
    while (*(&v22 + 1))
    {
      (*(**(&v20 + 1) + 16))(*(&v20 + 1), v11);
      sub_1D0E0B884(&v19);
    }

    if (v17)
    {
      (*(*v17 + 88))(v17);
      v8 = *(a2 + 3);
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      operator new();
    }

    v11[0] = &unk_1F4CECAA8;
    v19 = &unk_1F4CEC730;
    return sub_1D0E0BA98(v21);
  }

  return result;
}

void sub_1D0E090A0(_Unwind_Exception *a1)
{
  sub_1D0E0BA98(v2 + 120);
  sub_1D0BCC0B4(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0E090D8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_1D0E0AE9C(a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0E0919C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 24 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D0E0AE9C(v10);
      }

      sub_1D0C5663C();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

void *sub_1D0E09310(void *result, unint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  v6 = 0x8E38E38E38E38E39 * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = (v4 + 72 * a2);
      if (v3 != v12)
      {
        v13 = v3 - 9;
        v14 = v13;
        v15 = v13;
        do
        {
          v16 = *v15;
          v15 -= 9;
          result = (*v16)(v14);
          v13 -= 9;
          v17 = v14 == v12;
          v14 = v15;
        }

        while (!v17);
      }

      v2[1] = v12;
    }
  }

  else
  {
    v8 = result[2];
    if (0x8E38E38E38E38E39 * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x38E38E38E38E38ELL)
      {
        v9 = 0x8E38E38E38E38E39 * ((v8 - v4) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x1C71C71C71C71C7)
        {
          v11 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v11 = v10;
        }

        if (v11 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        sub_1D0C54BE8();
      }

      sub_1D0C5663C();
    }

    v18 = &v3[9 * v7];
    v19 = 72 * a2 - 8 * (v5 >> 3);
    v20 = v3 + 5;
    do
    {
      *(v20 - 2) = 0x200000002;
      *(v20 - 5) = &unk_1F4CE0268;
      *(v20 - 2) = xmmword_1D0E83F70;
      *(v20 - 1) = v20;
      v20 += 9;
      v3 += 9;
      v19 -= 72;
    }

    while (v19);
    result[1] = v18;
  }

  return result;
}

uint64_t sub_1D0E0966C(uint64_t a1)
{
  *(a1 + 24) = 0x200000001;
  *a1 = &unk_1F4CECB50;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84500;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0E096D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000001;
  *a1 = &unk_1F4CDF248;
  *(a1 + 8) = xmmword_1D0E7F310;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void *sub_1D0E0977C(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 56) != a2 + 48)
  {
    operator new();
  }

  return result;
}

void sub_1D0E0981C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 192);
  *(a1 + 184) = v3;
  *(a1 + 192) = v4;
  if (v5)
  {
    sub_1D0B7CAB8(v5);
  }

  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  *(a1 + 168) = vdupq_n_s64(0x7FF8000000000000uLL);
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
  }

  if (*(a1 + 160) == 1)
  {
    *(a1 + 32) = &unk_1F4CD5D18;
    *(a1 + 48) = &unk_1F4CD5E28;
    *(a1 + 160) = 0;
  }
}

void *sub_1D0E098DC(void *a1)
{
  *a1 = &unk_1F4CEC6D0;
  a1[7] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 10));
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0E09954(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 7;
        sub_1D0E0B2FC((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1D0E099E0(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  if (*(a1 + 160) == 1)
  {
    *(a1 + 32) = &unk_1F4CD5D18;
    *(a1 + 48) = &unk_1F4CD5E28;
  }

  return a1;
}

void sub_1D0E09A7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E09AD8(uint64_t a1)
{
  *a1 = &unk_1F4CEC558;
  sub_1D0B99218(*(a1 + 48));

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E09B40(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09B64(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09B88(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09BAC(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09BD0(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 88);
  *(result + 16) = 1;
  v2 = *(a2 + 96);
  if (v2)
  {
    *(result + 24) = v2;
    *(result + 32) = 1;
  }

  else if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

void sub_1D0E09C08(uint64_t *a1)
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
        sub_1D0BCC0B4(v2 + 8);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_1D0E09C7C(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a2 && *(result + 64) < *(result + 72))
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0E0A420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_1D0BCC0B4(v26);
  v29 = *(v27 - 200);
  if (v29)
  {
    *(v27 - 192) = v29;
    operator delete(v29);
  }

  if (a26 == 1)
  {
    sub_1D0BCC0B4(&a23);
  }

  _Unwind_Resume(a1);
}

void *sub_1D0E0A498(uint64_t *a1, void *a2)
{
  result = sub_1D0BCC0B4(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

void *sub_1D0E0A500(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void sub_1D0E0A5AC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 232) == *(a2 + 232))
  {
    if (*(a1 + 232))
    {
      v4 = *a2;
      v5 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v5;
      *a1 = v4;
      sub_1D0E0A498((a1 + 48), a2 + 6);
      v6 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v6;
      sub_1D0B894B0(a1 + 104, a2 + 104);

      sub_1D0B894B0(a1 + 168, a2 + 168);
    }
  }

  else if (*(a1 + 232))
  {
    *(a1 + 168) = &unk_1F4CD5E28;
    *(a1 + 104) = &unk_1F4CD5E28;
    sub_1D0BCC0B4((a1 + 48));
    *(a1 + 232) = 0;
  }

  else
  {
    v7 = *a2;
    v8 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v8;
    *a1 = v7;
    *(a1 + 48) = a1 + 48;
    *(a1 + 56) = a1 + 48;
    *(a1 + 64) = 0;
    v9 = *(a2 + 8);
    if (v9)
    {
      v11 = *(a2 + 6);
      v10 = *(a2 + 7);
      v12 = *(v11 + 8);
      v13 = *v10;
      *(v13 + 8) = v12;
      *v12 = v13;
      v14 = *(a1 + 48);
      *(v14 + 8) = v10;
      *v10 = v14;
      *(a1 + 48) = v11;
      *(v11 + 8) = a1 + 48;
      *(a1 + 64) = v9;
      *(a2 + 8) = 0;
    }

    v15 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v15;
    sub_1D0E0A760(a1 + 104, a2 + 104);
    sub_1D0E0A760(a1 + 168, a2 + 168);
    *(a1 + 232) = 1;
  }
}

void sub_1D0E0A728(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  sub_1D0BCC0B4(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E0A760(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000001;
  *(a1 + 24) = 0x300000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDF248;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 1)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 4)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1D0E0A8A8(uint64_t *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  sub_1D0BCC0B4(a1 + 6);
  sub_1D0E09C08(a1);
  return a1;
}

BOOL sub_1D0E0A904(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(&v4, a2);
  result = sub_1D0E0AB5C(&v4, (a1 + 16));
  if (result)
  {
    sub_1D0E0ACDC();
  }

  *(a1 + 68) = 0;
  return result;
}

void sub_1D0E0AA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E0AA88(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 112))(a2, a1 + 16, *(a1 + 64));
  *(a1 + 68) = result;
  return result;
}

uint64_t sub_1D0E0AAE0(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 112))(a2, a1 + 16, *(a1 + 64));
  *(a1 + 68) = result;
  return result;
}

BOOL sub_1D0E0AB5C(double *a1, double *a2)
{
  v2 = a2[3];
  v3 = *a2;
  if (*a2 >= a1[3] && v3 <= *a1)
  {
    v4 = a2[1];
    if (v4 >= a1[4] && v4 <= a1[1])
    {
      v5 = a2[2];
      if (v5 >= a1[5] && v5 <= a1[2])
      {
        return 1;
      }
    }
  }

  v6 = 1.0 / v2;
  if (1.0 / v2 >= 0.0)
  {
    v7 = a1[3];
  }

  else
  {
    v7 = *a1;
  }

  if (1.0 / v2 >= 0.0)
  {
    v8 = *a1;
  }

  else
  {
    v8 = a1[3];
  }

  v9 = v6 * (v8 - v3);
  v10 = v6 * (v7 - v3);
  if (v10 < 0.0 && v9 < 0.0)
  {
    return 0;
  }

  v11 = 1.0 / a2[4];
  v12 = a2[1];
  v13 = 4;
  if (v11 >= 0.0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  if (v11 >= 0.0)
  {
    v13 = 1;
  }

  v15 = a1[v14] - v12;
  v16 = v11 * (a1[v13] - v12);
  v17 = v11 * v15;
  if (v17 < 0.0 && v16 < 0.0)
  {
    return 0;
  }

  if (v10 > v16 || v17 > v9)
  {
    return 0;
  }

  v19 = 1.0 / a2[5];
  if (v17 <= v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = v17;
  }

  if (v16 >= v9)
  {
    v16 = v9;
  }

  v21 = a2[2];
  v22 = 5;
  if (v19 >= 0.0)
  {
    v23 = 5;
  }

  else
  {
    v23 = 2;
  }

  if (v19 >= 0.0)
  {
    v22 = 2;
  }

  v24 = a1[v23] - v21;
  v25 = v19 * (a1[v22] - v21);
  v26 = v19 * v24;
  if (v26 < 0.0 && v25 < 0.0)
  {
    return 0;
  }

  if (v20 > v25 || v26 > v16)
  {
    return 0;
  }

  if (v26 > v20)
  {
    v20 = v26;
  }

  if (v25 < v16)
  {
    v16 = v25;
  }

  return fmax(v20, v16) >= 0.0;
}

void sub_1D0E0ADCC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0AE9C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E0AEF4(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E0AF3C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0E0AFA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0E0B014(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v6;
  *a1 = v5;
  sub_1D0E0A500((a1 + 48), (a2 + 3));
  v7 = *(a3 + 16);
  *(a1 + 72) = *a3;
  *(a1 + 88) = v7;
  *(a1 + 96) = 0x7FF8000000000000;
  *(a1 + 128) = 0x300000001;
  *(a1 + 104) = &unk_1F4CDF248;
  *(a1 + 112) = xmmword_1D0E7F310;
  *(a1 + 136) = a1 + 144;
  *(a1 + 192) = 0x300000001;
  *(a1 + 168) = &unk_1F4CDF248;
  *(a1 + 176) = xmmword_1D0E7F310;
  *(a1 + 200) = a1 + 208;
  return a1;
}

void sub_1D0E0B0D8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 72;
      v7 = v4 - 72;
      v8 = v4 - 72;
      do
      {
        v9 = *v8;
        v8 -= 72;
        (*v9)(v7);
        v6 -= 72;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E0B198(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 56;
      v7 = v4 - 56;
      v8 = v4 - 56;
      do
      {
        v9 = *v8;
        v8 -= 56;
        (*v9)(v7);
        v6 -= 56;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_1D0E0B258(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void sub_1D0E0B2FC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D0E0B2FC(a1, *a2);
    sub_1D0E0B2FC(a1, *(a2 + 1));
    *(a2 + 29) = &unk_1F4CD5E28;
    *(a2 + 21) = &unk_1F4CD5E28;
    sub_1D0BCC0B4(a2 + 14);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1D0E0B3A8(void *a1)
{
  *a1 = &unk_1F4CEC6D0;
  a1[7] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 10));
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0B440(uint64_t a1, void *a2)
{
  sub_1D0E0C46C(a1);
  if ((*(a1 + 48) & 1) == 0)
  {
    (*(*a2 + 24))(v8, a2);
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v7 = v5 < v8[3] || v5 > v8[0] || v4 < v8[4];
    if (v7 || v4 > v8[1])
    {
      sub_1D0E0C398((a1 + 56));
    }

    else
    {
      sub_1D0E0C6A4((a1 + 24), ((a2[3] - a2[2]) >> 3) + 1);
    }
  }
}

void sub_1D0E0B4F4(void *a1, uint64_t a2)
{
  v3 = **(a2 + 16);
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    if ((v8 + 1) >> 60)
    {
      sub_1D0C5663C();
    }

    v9 = v4 - v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_1D0BC40DC((a1 + 3), v11);
    }

    *(16 * v8) = v3;
    v6 = 16 * v8 + 16;
    v12 = a1[3];
    v13 = a1[4] - v12;
    v14 = (16 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = a1[3];
    a1[3] = v14;
    a1[4] = v6;
    a1[5] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
}

void sub_1D0E0B5D4(void *a1, uint64_t a2)
{
  v3 = **(a2 + 16);
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    if ((v8 + 1) >> 60)
    {
      sub_1D0C5663C();
    }

    v9 = v4 - v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_1D0BC40DC((a1 + 3), v11);
    }

    *(16 * v8) = v3;
    v6 = 16 * v8 + 16;
    v12 = a1[3];
    v13 = a1[4] - v12;
    v14 = (16 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = a1[3];
    a1[3] = v14;
    a1[4] = v6;
    a1[5] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
}

void *sub_1D0E0B6D8(void *a1)
{
  *a1 = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 3));
  return a1;
}

void sub_1D0E0B71C(void *a1)
{
  *a1 = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 3));

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E0B780(void *a1)
{
  a1[2] = a1[1];
  memset(&v5, 0, 48);
  sub_1D0E0BBF4(a1 + 3, &v5);
  sub_1D0E0BA98(&v5);
  result = a1[2];
  if (result && a1[9])
  {
    (*(*(result + 8) + 16))(&v5);
    v3 = sub_1D0E0BF10(a1 + 3, &v5);
    if (v5.n128_u64[1])
    {
      sub_1D0B7CAB8(v5.n128_u64[1]);
    }

    v4 = *(*(a1[4] + (((a1[8] + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + *(a1 + 56) - 1));
    return (*(*v4 + 16))(v4, v3);
  }

  return result;
}

void sub_1D0E0B86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E0B884(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    while (1)
    {
      v3 = *(*(a1[4] + (((v1 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v1 + *(a1 + 56) - 1));
      if (!(*(*v3 + 32))(v3))
      {
        break;
      }

      sub_1D0E0C398(a1);
      v1 = a1[8];
      if (!v1)
      {
        return;
      }
    }

    v4 = *(*(a1[4] + (((a1[8] + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + *(a1 + 56) - 1));
    v5 = (*(*v4 + 40))(v4);
    a1[2] = v5;
    v6 = a1[8];
    if (v6 >= a1[9])
    {
      v9 = *(**(*(a1[4] + (((v6 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v6 + *(a1 + 56) - 1)) + 24);

      v9();
    }

    else
    {
      (*(*(v5 + 8) + 16))(&v10);
      v7 = sub_1D0E0BF10(a1 + 3, &v10);
      if (v10.n128_u64[1])
      {
        sub_1D0B7CAB8(v10.n128_u64[1]);
      }

      v8 = *(*(a1[4] + (((a1[8] + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + *(a1 + 56) - 1));
      (*(*v8 + 16))(v8, v7);
    }
  }
}

void sub_1D0E0BA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E0BA98(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_1D0B7CAB8(v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1D0E0BBF4(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = a1 + 5;
    v14 = a1[1];
  }

  else
  {
    v6 = a1 + 5;
    v7 = a1[4];
    v8 = &v5[v7 >> 8];
    v9 = *v8;
    v10 = *v8 + 16 * v7;
    v11 = *(v5 + (((a1[5] + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v10 != v11)
    {
      do
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          sub_1D0B7CAB8(v12);
          v9 = *v8;
        }

        v10 += 16;
        if (v10 - v9 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
          v10 = v13;
        }
      }

      while (v10 != v11);
      v5 = a1[1];
      v4 = a1[2];
    }

    v14 = v4;
  }

  *v6 = 0;
  v15 = (v14 - v5) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v5);
      v4 = a1[2];
      v5 = (a1[1] + 8);
      a1[1] = v5;
      v15 = (v4 - v5) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 128;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_18;
    }

    v16 = 256;
  }

  a1[4] = v16;
LABEL_18:
  if (a1[5])
  {
    if (a1[4] >= 0x100uLL)
    {
      operator delete(*v5);
      a1[1] += 8;
      a1[4] -= 256;
    }

    sub_1D0E0BDC8(a1, 0);
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = a1[1];
      v4 = a1[2] - 8;
      a1[2] = v4;
    }

    a1[4] = 0;
  }

  sub_1D0E0BE34(a1);
  v18 = a1[1];
  v17 = a1[2];
  if (v17 != v18)
  {
    a1[2] = v17 + ((v18 - v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1D0E0BE34(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1D0E0BDC8(void *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 32 * (v3 - v4) - 1;
  }

  v6 = v5 - (a1[5] + a1[4]);
  if (v6 < 0x100)
  {
    a2 = 1;
  }

  if (v6 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void sub_1D0E0BE34(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_1D0C4E87C((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

__n128 sub_1D0E0BF10(void *a1, __n128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x100)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1D0C4E87C(v12);
    }

    a1[4] = v7 - 256;
    v14 = *v4;
    a1[1] = v4 + 8;
    sub_1D0C149C4(a1, &v14);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  result = *a2;
  *(*&v4[(v8 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[5];
  return result;
}

void sub_1D0E0C36C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1D0E0C398(void *a1)
{
  v2 = a1[8] - 1;
  v3 = *(*(a1[4] + (((v2 + a1[7]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v2 + *(a1 + 56)) + 8);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
    v2 = a1[8] - 1;
  }

  a1[8] = v2;
  sub_1D0E0BDC8(a1 + 3, 1);
  v4 = a1[8];
  if (v4)
  {
    v5 = *(**(*(a1[4] + (((v4 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + *(a1 + 56) - 1)) + 24);

    v5();
  }

  else
  {
    a1[2] = 0;
  }
}

void sub_1D0E0C46C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v1 = (a1 + 24);
  if (v2 != v3)
  {
    v5 = *v2;
    v6 = *(v3 - 2);
    if (*v2 != v6)
    {
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v28 = fabs(v5);
      v29 = fabs(v6);
      v30 = vabdd_f64(v5, v6);
      if (v28 < v29)
      {
        v28 = v29;
      }

      if (v28 < 1.0)
      {
        v28 = 1.0;
      }

      if (v30 > v28 * 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }

    v7 = v2[1];
    v8 = *(v3 - 1);
    if (v7 != v8)
    {
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v10 = fabs(v7);
      v11 = fabs(v8);
      v12 = vabdd_f64(v7, v8);
      if (v10 >= v11)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      if (v13 < 1.0)
      {
        v13 = 1.0;
      }

      if (v12 > v13 * 2.22044605e-16)
      {
LABEL_20:
        v15 = *(v2 + 1);
        v16 = *(a1 + 40);
        if (v3 >= v16)
        {
          v17 = (v3 - v2) >> 4;
          v18 = v17 + 1;
          if ((v17 + 1) >> 60)
          {
            sub_1D0C5663C();
          }

          v19 = v16 - v2;
          if (v19 >> 3 > v18)
          {
            v18 = v19 >> 3;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            sub_1D0BC40DC(a1 + 24, v20);
          }

          v21 = (16 * v17);
          *v21 = v5;
          *(v21 + 1) = v15;
          v3 = (16 * v17 + 16);
          v22 = *(a1 + 24);
          v23 = *(a1 + 32) - v22;
          v24 = (16 * v17 - v23);
          memcpy(v24, v22, v23);
          v25 = *(a1 + 24);
          *(a1 + 24) = v24;
          *(a1 + 32) = v3;
          *(a1 + 40) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v3 = v5;
          *(v3 + 1) = v15;
          v3 += 2;
        }

        *(a1 + 32) = v3;
        v2 = *(a1 + 24);
      }
    }

    if ((v3 - v2) < 0x40 || (v31 = 0, v32 = 0, v2 + 2 == v3))
    {
      v27 = 0;
    }

    else
    {
      do
      {
        if (!sub_1D0B85B94((a1 + 8), v2, v2 + 2, &v31))
        {
          break;
        }

        v26 = v2 + 4;
        v2 += 2;
      }

      while (v26 != v3);
      v27 = (v31 != 0) & ~v32;
      v2 = *v1;
    }

    *(a1 + 48) = v27;
    *(a1 + 32) = v2;
  }
}

void *sub_1D0E0C6A4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_1D0BC40DC(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

double sub_1D0E0C744(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  v14 = 0;
  a8[1] = -(*a8 - *a4 * *a5);
  v15 = *a9;
  v16 = -(*a9 - *a6 * *a7);
  a9[1] = v16;
  v17 = a8[1];
  v18 = v17 - v16;
  v19 = v17 - (v17 - v16) - v16 + v17 - (v17 - v16 + v17 - (v17 - v16));
  v20 = *a8 + v18;
  v21 = v18 - (v20 - *a8) + *a8 - (v20 - (v20 - *a8));
  v67[0] = v19;
  v67[1] = v21 - (v21 - v15) - v15 + v21 - (v21 - v15 + v21 - (v21 - v15));
  v67[2] = v21 - v15 - (v20 + v21 - v15 - v20) + v20 - (v20 + v21 - v15 - (v20 + v21 - v15 - v20));
  v67[3] = v20 + v21 - v15;
  result = 0.0;
  do
  {
    result = result + v67[v14] + v67[v14 + 1];
    v14 += 2;
  }

  while (v14 != 4);
  v23 = fabs(result);
  if (v23 < *a10 * 2.22044605e-16)
  {
    a4[1] = *a1 - *a4 - *a3 + *a1 - (*a4 + *a1 - *a4);
    a5[1] = a2[1] - *a5 - a3[1] + a2[1] - (*a5 + a2[1] - *a5);
    a6[1] = a1[1] - *a6 - a3[1] + a1[1] - (*a6 + a1[1] - *a6);
    v24 = *a7;
    v25 = *a2 - *a7 - *a3 + *a2 - (*a7 + *a2 - *a7);
    a7[1] = v25;
    v26 = a4[1];
    v27 = a6[1];
    v28 = a5[1];
    if (v26 != 0.0 || v27 != 0.0 || v28 != 0.0 || v25 != 0.0)
    {
      v29 = v23 * 3.33066907e-16 + *a10 * 1.10933565e-31;
      v30 = v26 * *a5;
      v31 = v24 * v27;
      result = result + v30 + *a4 * v28 - (v24 * v27 + *a6 * v25);
      if (fabs(result) < v29)
      {
        v32 = -(v30 - v26 * *a5);
        v33 = -(v31 - v27 * v24);
        v34 = v32 - v33;
        v35 = v32 - (v32 - v33) - v33 + v32 - (v32 - v33 + v32 - (v32 - v33));
        v36 = v30 + v34;
        v37 = v34 - (v30 + v34 - v30) + v30 - (v30 + v34 - (v30 + v34 - v30));
        v60 = v35;
        v61 = v37 - (v37 - v31) - v31 + v37 - (v37 - v31 + v37 - (v37 - v31));
        v62 = v37 - v31 - (v36 + v37 - v31 - v36) + v36 - (v36 + v37 - v31 - (v36 + v37 - v31 - v36));
        v63 = v36 + v37 - v31;
        v38 = sub_1D0E0CB34(v67, &v60, v66, 4, 4);
        v39 = a5[1];
        v40 = a4[1];
        v41 = *a4 * v39;
        v42 = -(v41 - v41);
        v43 = a7[1];
        v44 = a6[1];
        v45 = *a6 * v43;
        v46 = -(v45 - v45);
        v47 = v42 - v46;
        v48 = v42 - (v42 - v46) - v46 + v42 - (v42 - v46 + v42 - (v42 - v46));
        v49 = v41 + v47;
        v50 = v47 - (v41 + v47 - v41) + v41 - (v41 + v47 - (v41 + v47 - v41));
        v60 = v48;
        v61 = v50 - (v50 - v45) - v45 + v50 - (v50 - v45 + v50 - (v50 - v45));
        v62 = v50 - v45 - (v49 + v50 - v45 - v49) + v49 - (v49 + v50 - v45 - (v49 + v50 - v45 - v49));
        v63 = v49 + v50 - v45;
        v51 = v39 * v40;
        v52 = -(v39 * v40 - v40 * v39);
        v53 = v43 * v44;
        v54 = -(v43 * v44 - v44 * v43);
        v55 = v52 - v54;
        v56 = v52 - (v52 - v54) - v54 + v52 - (v52 - v54 + v52 - (v52 - v54));
        v57 = v51 + v55;
        v58 = v55 - (v51 + v55 - v51) + v51 - (v51 + v55 - (v51 + v55 - v51));
        v64[0] = v56;
        v64[1] = v58 - (v58 - v53) - v53 + v58 - (v58 - v53 + v58 - (v58 - v53));
        v64[2] = v58 - v53 - (v57 + v58 - v53 - v57) + v57 - (v57 + v58 - v53 - (v57 + v58 - v53 - v57));
        v64[3] = v57 + v58 - v53;
        v59 = sub_1D0E0CB34(&v60, v64, v65, 4, 4);
        return *(&v60 + sub_1D0E0CB34(v66, v65, &v60, v38, v59) - 1);
      }
    }
  }

  return result;
}

uint64_t sub_1D0E0CB34(double *a1, double *a2, double *a3, int a4, int a5)
{
  v6 = *a2;
  v7 = fabs(*a2);
  v8 = fabs(*a1);
  v9 = v7 <= v8;
  v10 = v7 > v8;
  if (v7 > v8)
  {
    v6 = *a1;
  }

  if (v10 < a4 && v9 < a5)
  {
    v13 = v7 <= v8;
    v14 = a2[v7 <= v8];
    v15 = fabs(v14);
    v16 = fabs(a1[v10]);
    if (v13)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = v15 <= v16;
    if (v15 <= v16)
    {
      v20 = v14;
    }

    else
    {
      v20 = a1[v10];
    }

    if (v19)
    {
      v9 = v17;
    }

    if (!v19)
    {
      v10 = v18;
    }

    v21 = v6 + v20;
    v22 = v6 - (v6 + v20 - v20);
    if (v22 == 0.0)
    {
      result = 0;
    }

    else
    {
      *a3 = v22;
      result = 1;
    }

    v6 = v21;
    if (v10 < a4 && v9 < a5)
    {
      do
      {
        v24 = v6;
        v25 = fabs(a2[v9]);
        v26 = fabs(a1[v10]);
        v27 = v25 <= v26;
        if (v25 > v26)
        {
          v28 = a1[v10];
        }

        else
        {
          v28 = a2[v9];
        }

        if (v27)
        {
          ++v9;
        }

        else
        {
          ++v10;
        }

        v6 = v6 + v28;
        v29 = v28 - (v24 + v28 - v24) + v24 - (v24 + v28 - (v24 + v28 - v24));
        if (v29 != 0.0)
        {
          a3[result] = v29;
          result = (result + 1);
        }
      }

      while (v10 < a4 && v9 < a5);
    }
  }

  else
  {
    result = 0;
  }

  if (v10 < a4)
  {
    v31 = &a1[v10];
    v32 = a4 - v10;
    do
    {
      v33 = v6;
      v6 = v6 + *v31;
      v34 = *v31 - (v6 - v33) + v33 - (v6 - (v6 - v33));
      if (v34 != 0.0)
      {
        a3[result] = v34;
        result = (result + 1);
      }

      ++v31;
      --v32;
    }

    while (v32);
  }

  if (v9 < a5)
  {
    v35 = &a2[v9];
    v36 = a5 - v9;
    do
    {
      v37 = v6;
      v6 = v6 + *v35;
      v38 = *v35 - (v6 - v37) + v37 - (v6 - (v6 - v37));
      if (v38 != 0.0)
      {
        a3[result] = v38;
        result = (result + 1);
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  if (v6 != 0.0 || result == 0)
  {
    a3[result] = v6;
    return (result + 1);
  }

  return result;
}

double sub_1D0E0CCE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  result = *v1;
  v4 = *(v1 + 8);
  return result;
}

void sub_1D0E0CCF4(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E0CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = 0;
    do
    {
      v5 = a3 + v4;
      v6 = *(a1 + v4 + 16);
      *v5 = *(a1 + v4);
      *(v5 + 16) = v6;
      *(v5 + 32) = *(a1 + v4 + 32);
      v7 = (a1 + v4 + 40);
      v8 = *v7;
      *(a3 + v4 + 40) = *v7;
      v9 = a3 + v4 + 40;
      v10 = *(a1 + v4 + 48);
      *(v5 + 48) = v10;
      if (v10)
      {
        *(v8 + 16) = v9;
        *(a1 + v4 + 32) = v7;
        *v7 = 0;
        *(a1 + v4 + 48) = 0;
      }

      else
      {
        *(v5 + 32) = v9;
      }

      v4 += 56;
    }

    while (a1 + v4 != a2);
    v11 = a1 + 32;
    do
    {
      sub_1D0E0B2FC(v11, *(v11 + 8));
      v12 = v11 + 24;
      v11 += 56;
    }

    while (v12 != a2);
  }
}

uint64_t sub_1D0E0CDF8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1D0E0B2FC(i - 24, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1D0E0CE50(void *a1)
{
  *a1 = &unk_1F4CEC6D0;
  a1[7] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 10));
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0E0CF5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t **sub_1D0E0CFF8(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_19:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = v2[4];
      if (v3 == v7)
      {
        break;
      }

      if (v3 <= v7)
      {
        goto LABEL_15;
      }

LABEL_18:
      v2 = v6[1];
      if (!v2)
      {
        goto LABEL_19;
      }
    }

    v8 = *(v6 + 20);
    v9 = *(v6 + 21);
    if (v4 == v8 && v5 == v9)
    {
      return v6;
    }

    v11 = v4 <= v8;
    if (v5 != v9)
    {
      v11 = v5 <= v9;
    }

    if (!v11)
    {
      if (v5 == v9)
      {
        if (v8 > v4)
        {
          return v6;
        }
      }

      else if (v9 > v5)
      {
        return v6;
      }

      goto LABEL_18;
    }

LABEL_15:
    v2 = *v6;
    if (!*v6)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_1D0E0D12C(uint64_t a1)
{
  *a1 = &unk_1F4CEC828;
  *(a1 + 8) = &unk_1F4CEC868;
  v3 = (a1 + 16);
  sub_1D0E0D3F0(&v3);
  return a1;
}

void sub_1D0E0D1A4(uint64_t a1)
{
  *a1 = &unk_1F4CEC828;
  *(a1 + 8) = &unk_1F4CEC868;
  v1 = (a1 + 16);
  sub_1D0E0D3F0(&v1);

  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0E0D26C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 16) = v2;
  result = *(a1 + 72);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1D0E0D284(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  for (i = *(result + 24); v3 != i; result = (*(*v7 + 32))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

void sub_1D0E0D2F4(uint64_t a1)
{
  *(a1 - 8) = &unk_1F4CEC828;
  *a1 = &unk_1F4CEC868;
  v1 = (a1 + 8);
  sub_1D0E0D3F0(&v1);
}

void sub_1D0E0D35C(uint64_t a1)
{
  *(a1 - 8) = &unk_1F4CEC828;
  *a1 = &unk_1F4CEC868;
  v1 = (a1 + 8);
  sub_1D0E0D3F0(&v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0D3F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E0D49C(void *a1)
{
  sub_1D0E0E3B4(a1);

  JUMPOUT(0x1D387ECA0);
}

double *sub_1D0E0D504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = vdupq_n_s64(0xFFF0000000000000);
  *(a2 + 16) = xmmword_1D0EA0B90;
  *(a2 + 32) = vdupq_n_s64(0x7FF0000000000000uLL);
  v4 = a1[6];
  v7 = *a1[2];
  v8 = v4;
  sub_1D0E0E1C4(a2, &v7);
  v5 = a1[7];
  v7 = *a1[4];
  v8 = v5;
  return sub_1D0E0E1C4(a2, &v7);
}

void *sub_1D0E0D590(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = *a2;
  v6 = a2 + *(*a2 - 24);
  v7 = *(v6 + 2);
  v8 = *(v6 + 2);
  *(v6 + 2) = v8 & 0xFFFFFEFB | 4;
  *(a2 + *(v5 - 24) + 8) |= 0x400u;
  *(a2 + *(v5 - 24) + 16) = a3;
  v9 = a3 + 6;
  *(a2 + *(v5 - 24) + 24) = v9;
  v10 = MEMORY[0x1D387E990](a2, **(a1 + 16));
  v11 = sub_1D0BCD7C4(v10, " ", 1);
  *(v11 + *(*v11 - 24) + 24) = v9;
  v12 = MEMORY[0x1D387E990](*(*(a1 + 16) + 8));
  v13 = sub_1D0BCD7C4(v12, " ", 1);
  *(v13 + *(*v13 - 24) + 24) = v9;
  v14 = MEMORY[0x1D387E990](*(a1 + 48));
  sub_1D0BCD7C4(v14, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v15 = MEMORY[0x1D387E990](a2, **(a1 + 32));
  v16 = sub_1D0BCD7C4(v15, " ", 1);
  *(v16 + *(*v16 - 24) + 24) = v9;
  v17 = MEMORY[0x1D387E990](*(*(a1 + 32) + 8));
  v18 = sub_1D0BCD7C4(v17, " ", 1);
  *(v18 + *(*v18 - 24) + 24) = v9;
  v19 = MEMORY[0x1D387E990](*(a1 + 48));
  sub_1D0BCD7C4(v19, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v20 = MEMORY[0x1D387E990](a2, **(a1 + 32));
  v21 = sub_1D0BCD7C4(v20, " ", 1);
  *(v21 + *(*v21 - 24) + 24) = v9;
  v22 = MEMORY[0x1D387E990](*(*(a1 + 32) + 8));
  v23 = sub_1D0BCD7C4(v22, " ", 1);
  *(v23 + *(*v23 - 24) + 24) = v9;
  v24 = MEMORY[0x1D387E990](*(a1 + 56));
  sub_1D0BCD7C4(v24, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v25 = MEMORY[0x1D387E990](a2, **(a1 + 16));
  v26 = sub_1D0BCD7C4(v25, " ", 1);
  *(v26 + *(*v26 - 24) + 24) = v9;
  v27 = MEMORY[0x1D387E990](*(*(a1 + 16) + 8));
  v28 = sub_1D0BCD7C4(v27, " ", 1);
  *(v28 + *(*v28 - 24) + 24) = v9;
  v29 = MEMORY[0x1D387E990](*(a1 + 56));
  sub_1D0BCD7C4(v29, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v30 = MEMORY[0x1D387E990](a2, *(a1 + 64));
  v31 = sub_1D0BCD7C4(v30, " ", 1);
  *(v31 + *(*v31 - 24) + 24) = v9;
  v32 = MEMORY[0x1D387E990](*(a1 + 72));
  v33 = sub_1D0BCD7C4(v32, " ", 1);
  *(v33 + *(*v33 - 24) + 24) = v9;
  v34 = MEMORY[0x1D387E990](*(a1 + 80));
  result = sub_1D0BCD7C4(v34, "\n", 1);
  v36 = *a2;
  *(a2 + *(*a2 - 24) + 16) = v7;
  *(a2 + *(v36 - 24) + 8) = v8;
  return result;
}

BOOL sub_1D0E0D99C(uint64_t a1, double *a2)
{
  if (*a2 < 0.0)
  {
    return 0;
  }

  v2 = a2[1];
  if (v2 < 0.0 || v2 > *(a1 + 56) - *(a1 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  return *a2 <= sqrt((*(*(a1 + 32) + 8) - v4[1]) * (*(*(a1 + 32) + 8) - v4[1]) + (**(a1 + 32) - *v4) * (**(a1 + 32) - *v4));
}

double sub_1D0E0DA0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3 = v1[1] - v2[1];
  return (*v1 - *v2) * (1.0 / sqrt(v3 * v3 + (*v1 - *v2) * (*v1 - *v2)));
}

double sub_1D0E0DA5C(uint64_t a1)
{
  result = *(a1 + 64);
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  return result;
}

void sub_1D0E0DA68(void *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1D0E090D8(a2, 4uLL);
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v5 >= v6)
  {
    v9 = *a2;
    v10 = v5 - *a2;
    v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    if (0x5555555555555556 * ((v6 - v9) >> 3) > v11)
    {
      v11 = 0x5555555555555556 * ((v6 - v9) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3) >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_1D0E0AE9C(v12);
    }

    v13 = (8 * (v10 >> 3));
    v14 = a1[6];
    *v13 = *v4;
    v6 = 0;
    v13[1] = v4[1];
    v13[2] = v14;
    v8 = v13 + 3;
    v15 = v13 - v10;
    memcpy(v13 - v10, v9, v10);
    *a2 = v15;
    a2[1] = v8;
    a2[2] = 0;
    if (v9)
    {
      operator delete(v9);
      v6 = a2[2];
    }
  }

  else
  {
    v7 = a1[6];
    *v5 = *v4;
    v5[1] = v4[1];
    v5[2] = v7;
    v8 = v5 + 3;
  }

  a2[1] = v8;
  v16 = a1[4];
  if (v8 >= v6)
  {
    v19 = *a2;
    v20 = v8 - *a2;
    v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3) + 1;
    if (v21 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    if (0x5555555555555556 * ((v6 - v19) >> 3) > v21)
    {
      v21 = 0x5555555555555556 * ((v6 - v19) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v19) >> 3) >= 0x555555555555555)
    {
      v22 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      sub_1D0E0AE9C(v22);
    }

    v23 = (8 * (v20 >> 3));
    v24 = a1[6];
    *v23 = *v16;
    v6 = 0;
    v23[1] = v16[1];
    v23[2] = v24;
    v18 = v23 + 3;
    v25 = v23 - v20;
    memcpy(v23 - v20, v19, v20);
    *a2 = v25;
    a2[1] = v18;
    a2[2] = 0;
    if (v19)
    {
      operator delete(v19);
      v6 = a2[2];
    }
  }

  else
  {
    v17 = a1[6];
    *v8 = *v16;
    v8[1] = v16[1];
    v8[2] = v17;
    v18 = v8 + 3;
  }

  a2[1] = v18;
  v26 = a1[4];
  if (v18 >= v6)
  {
    v29 = *a2;
    v30 = v18 - *a2;
    v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3) + 1;
    if (v31 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    if (0x5555555555555556 * ((v6 - v29) >> 3) > v31)
    {
      v31 = 0x5555555555555556 * ((v6 - v29) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v29) >> 3) >= 0x555555555555555)
    {
      v32 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      sub_1D0E0AE9C(v32);
    }

    v33 = (8 * (v30 >> 3));
    v34 = a1[7];
    *v33 = *v26;
    v6 = 0;
    v33[1] = v26[1];
    v33[2] = v34;
    v28 = v33 + 3;
    v35 = v33 - v30;
    memcpy(v33 - v30, v29, v30);
    *a2 = v35;
    a2[1] = v28;
    a2[2] = 0;
    if (v29)
    {
      operator delete(v29);
      v6 = a2[2];
    }
  }

  else
  {
    v27 = a1[7];
    *v18 = *v26;
    v18[1] = v26[1];
    v18[2] = v27;
    v28 = v18 + 3;
  }

  a2[1] = v28;
  v36 = a1[2];
  if (v28 < v6)
  {
    v37 = a1[7];
    *v28 = *v36;
    v28[1] = v36[1];
    v28[2] = v37;
    v38 = v28 + 3;
    goto LABEL_49;
  }

  v39 = *a2;
  v40 = v28 - *a2;
  v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3) + 1;
  if (v41 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_50:
    sub_1D0C5663C();
  }

  if (0x5555555555555556 * ((v6 - v39) >> 3) > v41)
  {
    v41 = 0x5555555555555556 * ((v6 - v39) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v39) >> 3) >= 0x555555555555555)
  {
    v42 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v42 = v41;
  }

  if (v42)
  {
    sub_1D0E0AE9C(v42);
  }

  v43 = (8 * (v40 >> 3));
  v44 = a1[7];
  *v43 = *v36;
  v43[1] = v36[1];
  v43[2] = v44;
  v38 = v43 + 3;
  v45 = v43 - v40;
  memcpy(v43 - v40, v39, v40);
  *a2 = v45;
  a2[1] = v38;
  a2[2] = 0;
  if (v39)
  {
    operator delete(v39);
  }

LABEL_49:
  a2[1] = v38;
}

void sub_1D0E0DE18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1D0E0DE34(uint64_t a1, double *a2, int a3)
{
  v6 = (*(*a1 + 88))(a1);
  v7 = a2[3];
  v8 = a2[4];
  v10 = v8 * v9 + v7 * v6;
  v11 = a2[5];
  v13 = v10 + v11 * v12;
  if (a3)
  {
    if (a3 == 2)
    {
      if (fabs(v13) < 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }

    else if (a3 == 1 && v13 <= 0.0)
    {
      goto LABEL_20;
    }
  }

  else if (v13 >= 0.0)
  {
    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = v14[1];
  v17 = *v15 - *v14;
  v18 = v15[1] - v16;
  v19 = v7 * v18 - v8 * v17;
  if (fabs(v19) >= 2.22044605e-16)
  {
    v20 = *v14 - *a2;
    v21 = v16 - a2[1];
    v22 = (v20 * v8 - v21 * v7) / v19;
    if (v22 >= 0.0 && v22 <= 1.0)
    {
      v24 = (v17 * -v21 + v20 * v18) / v19;
      if (v24 >= 0.0)
      {
        v25 = a2[2] + v24 * v11;
        if (v25 >= *(a1 + 48) && v25 <= *(a1 + 56))
        {
          v28 = *&v24 & 0xFFFFFFFFFFFFFF00;
          v27 = LOBYTE(v24);
          return v28 | v27;
        }
      }
    }
  }

LABEL_20:
  v27 = 0;
  v28 = 0;
  return v28 | v27;
}

double sub_1D0E0DFC8(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = *a2 - *v2;
  v6 = a2[1] - v4;
  v7 = *(a1 + 32);
  v8 = *v7 - v3;
  v9 = v7[1] - v4;
  v10 = 1.0 / sqrt(v9 * v9 + v8 * v8);
  return v6 * (v9 * v10) + v5 * (v8 * v10) + (a2[2] - *(a1 + 48)) * (v10 * 0.0);
}

void sub_1D0E0E0E4(uint64_t a1)
{
  sub_1D0E0E3B4((a1 - 8));

  JUMPOUT(0x1D387ECA0);
}

double *sub_1D0E0E1C4(double *result, double *a2)
{
  v2 = result[3];
  if (v2 >= *a2)
  {
    v2 = *a2;
  }

  result[3] = v2;
  v3 = result[4];
  if (v3 >= a2[1])
  {
    v3 = a2[1];
  }

  result[4] = v3;
  v4 = result[5];
  if (v4 >= a2[2])
  {
    v4 = a2[2];
  }

  result[5] = v4;
  v5 = *a2;
  v6 = result[1];
  if (*result > *a2)
  {
    v5 = *result;
  }

  *result = v5;
  v7 = a2[1];
  if (v6 > v7)
  {
    v7 = v6;
  }

  result[1] = v7;
  v8 = result[2];
  if (v8 <= a2[2])
  {
    v8 = a2[2];
  }

  result[2] = v8;
  return result;
}

void sub_1D0E0E30C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E0E3B4(void *a1)
{
  *a1 = &unk_1F4CEC8A8;
  a1[1] = &unk_1F4CEC940;
  v2 = a1[5];
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  return a1;
}

uint64_t sub_1D0E0E42C(uint64_t a1)
{
  *a1 = &unk_1F4CEC828;
  *(a1 + 8) = &unk_1F4CEC868;
  v3 = (a1 + 16);
  sub_1D0E0D3F0(&v3);
  return a1;
}

void sub_1D0E0E4A4(uint64_t a1)
{
  *a1 = &unk_1F4CEC828;
  *(a1 + 8) = &unk_1F4CEC868;
  v1 = (a1 + 16);
  sub_1D0E0D3F0(&v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0E56C(uint64_t a1)
{
  *(a1 - 8) = &unk_1F4CEC828;
  *a1 = &unk_1F4CEC868;
  v1 = (a1 + 8);
  sub_1D0E0D3F0(&v1);
}

void sub_1D0E0E5DC(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_1D0D4B3C4(v3, v5);

      operator delete(v5);
    }
  }
}

void *sub_1D0E0E6B0(void *a1)
{
  *a1 = &unk_1F4CECAA8;
  a1[12] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 15));
  return a1;
}

void sub_1D0E0E718(void *a1)
{
  *a1 = &unk_1F4CECAA8;
  a1[12] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 15));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0E7A0(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(v3, a2);
  if (!sub_1D0E0AB5C(v3, (a1 + 16)))
  {
    sub_1D0E0C398((a1 + 96));
  }
}

uint64_t sub_1D0E0E810(uint64_t a1, uint64_t a2)
{
  *&result = COERCE_DOUBLE((*(*a2 + 104))(a2, a1 + 16, *(a1 + 64)));
  if ((v5 & 1) != 0 && *(a1 + 72) > *&result && *(a1 + 88) != a2)
  {
    *(a1 + 72) = *&result;
    *(a1 + 80) = a2;
  }

  return result;
}

uint64_t sub_1D0E0E888(uint64_t a1, uint64_t a2)
{
  *&result = COERCE_DOUBLE((*(*a2 + 104))(a2, a1 + 16, *(a1 + 64)));
  if ((v5 & 1) != 0 && *(a1 + 72) > *&result && *(a1 + 88) != a2)
  {
    *(a1 + 72) = *&result;
    *(a1 + 80) = a2;
  }

  return result;
}

__n128 sub_1D0E0E924(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x200000002;
  *(a1 + 24) = 0x200000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0268;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 2)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 3)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0E0EAA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

__n128 sub_1D0E0EBD0(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x200000001;
  *(a1 + 24) = 0x200000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECB50;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 1)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 3)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0E0ED18(void *a1)
{
  if (a1)
  {
    sub_1D0E0ED18(*a1);
    sub_1D0E0ED18(a1[1]);
    sub_1D0BCC0B4(a1 + 4);

    operator delete(a1);
  }
}

uint64_t sub_1D0E0ED6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  for (i = *(a2 + 8); v2 != a1 && i != a2; i = *(i + 8))
  {
    v5 = *(v2 + 16);
    v6 = *(i + 16);
    if (v5 != v6)
    {
      if (v5 < v6)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    v2 = *(v2 + 8);
  }

  if (v2 == a1)
  {
    return (i == a2) - 1;
  }

  else
  {
    return 1;
  }
}

void sub_1D0E0EDE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CECB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E0EE38(uint64_t result)
{
  *(result + 96) = &unk_1F4CD5E28;
  *(result + 32) = &unk_1F4CD5E28;
  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    v29 = 12;
    v28 = 3;
    cnprint::CNPrinter::Print(&v29, &v28, "#gmp,configured more than once", a4, a5, a6, a7, a8, v21);
  }

  *a1 = 0;
  v10 = *a2;
  if (!*a2)
  {
    v27 = 12;
    v26 = 4;
    v13 = "#gmp,configured with null raven parameters";
    v14 = &v27;
    v15 = &v26;
LABEL_14:
    cnprint::CNPrinter::Print(v14, v15, v13, a4, a5, a6, a7, a8, v21);
    return 0xFFFFFFFFLL;
  }

  if ((*(v10 + 33) & 1) == 0)
  {
    v25 = 12;
    v24 = 4;
    v13 = "#gmp,configured with uninitialized raven parameters";
    v14 = &v25;
    v15 = &v24;
    goto LABEL_14;
  }

  v11 = *(v10 + 3128);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v11 <= 90.0 ? (v12 = v11 < -10.0) : (v12 = 1), v12))
  {
    v23 = 12;
    v22 = 4;
    cnprint::CNPrinter::Print(&v23, &v22, "#gmp,Configure() failed. Invalid local ionosphere model minimum satellite elevation threshold,thresh,%.2lf", a4, a5, a6, a7, a8, SLOBYTE(v11));
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2328) = v11;
  v17 = raven::GnssReceiverBandCorrectionsManager::Configure((a1 + 1280), v10);
  v18 = *a2;
  if (*(*a2 + 578) == 1)
  {
    if (*(a1 + 2600) == 1)
    {
      v17 = sub_1D0BCB594(a1 + 2560);
      v18 = *a2;
    }

    *(a1 + 2552) = v18;
    *(a1 + 2560) = 0u;
    *(a1 + 2576) = 0u;
    *(a1 + 2592) = 1065353216;
    *(a1 + 2600) = 1;
    v18 = *a2;
  }

  v19 = *(v18 + 552);
  if (v19 <= 2)
  {
    switch(v19)
    {
      case 0:
        v20 = 0;
        goto LABEL_36;
      case 1:
        v20 = raven::GNSSUncertaintyScaling::KarooGNSSUncertaintyWrapper::Instance(v17);
        goto LABEL_36;
      case 2:
        v20 = raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::Instance(v17);
        goto LABEL_36;
    }

LABEL_32:
    *(a1 + 8) = v18;
LABEL_37:
    *(a1 + 1056) = *(v18 + 588);
    *(a1 + 1057) = *(v18 + 597);
    goto LABEL_38;
  }

  if (v19 > 4)
  {
    if (v19 == 5)
    {
      v20 = raven::GNSSUncertaintyScaling::Fire7orNewerWatchGNSSUncertaintyWrapper::Instance(v17);
      goto LABEL_36;
    }

    if (v19 == 6)
    {
      v20 = raven::GNSSUncertaintyScaling::Indus25GNSSUncertaintyWrapper::Instance(v17);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v19 == 3)
  {
    v20 = raven::GNSSUncertaintyScaling::Fire6orOlderGNSSUncertaintyWrapper::Instance(v17);
  }

  else
  {
    v20 = raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper::Instance(v17);
  }

LABEL_36:
  *(a1 + 2608) = v20;
  v18 = *a2;
  *(a1 + 8) = *a2;
  if (v18)
  {
    goto LABEL_37;
  }

LABEL_38:
  result = 0;
  *a1 = 1;
  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::GetTimeEstimateNoBitSync@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == *result)
  {
    v3 = 0;
    v2 = a2;
  }

  else
  {
    *a2 = **result;
    v2 = a2 + 16;
    v3 = 1;
  }

  *v2 = 0;
  a2[24] = v3;
  return result;
}

BOOL raven::GnssMeasurementPreprocessor::IsSvIdPermitted(uint64_t a1)
{
  if (*(a1 + 24) != 4)
  {
    return 1;
  }

  v1 = *(a1 + 28) - 1;
  return (v1 >= 0x3F || ((0x7C0000000000001FuLL >> v1) & 1) == 0) && v1 < 0x3F;
}

void raven::GnssMeasurementPreprocessor::UpdateMeasurementPropagationTimeUsingDwellEndTimes(raven::GnssMeasurementPreprocessor *this, const raven::GnssMeasurementDataEvent *a2)
{
  if ((*this & 1) == 0 || (v41 = (*(*a2 + 16))(a2), v42 = v4, v7 = CNTimeSpan::operator-(this + 274, &v41, v5, v6), v9 = v8 + v7, v9 <= 0.0))
  {
    *(this + 288) = 0;
    return;
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  LOBYTE(v41) = 0;
  v42 = 0.0;
  v43 = 1;
  sub_1D0BC3E34(&__p);
  v47 = 1;
  v19 = *(a2 + 23);
  v20 = *(a2 + 24);
  if (v19 == v20)
  {
    goto LABEL_27;
  }

  v21 = -1;
  do
  {
    v22 = *(v19 + 8);
    v23 = v22 > 9;
    v24 = (1 << v22) & 0x2BB;
    if (v23 || v24 == 0)
    {
      v33 = *(v19 + 197);
      if ((*(*(this + 1) + 3808) & 1) != 0 || !*(v19 + 197))
      {
        if (!*(v19 + 197))
        {
          goto LABEL_22;
        }
      }

      else if (*(v19 + 196) == 1)
      {
        goto LABEL_22;
      }
    }

    else if ((*(v19 + 197) & 1) == 0)
    {
      goto LABEL_22;
    }

    v26 = *(v19 + 24) - *(v19 + 32);
    if (v26 >= 0)
    {
      v39[0] = (*(*a2 + 16))(a2);
      v39[1] = v27;
      *v28.i64 = v26 * 0.000000001;
      v38[0] = 0;
      v38[1] = 0;
      *v30.i64 = CNTimeSpan::SetTimeSpan(v38, 0, v28, v29);
      *&v40[0] = CNTimeSpan::operator+(v39, v38, v30, v31);
      v40[1] = v32;
      if (!sub_1D0B7C8AC(this + 274, v40))
      {
        if (*(*(this + 1) + 841) == 1)
        {
          if (v21 <= v26)
          {
            v21 = v26;
          }
        }

        else
        {
          *v39 = v26;
          sub_1D0BC3F08(&v41, v39, 1.0);
        }
      }
    }

LABEL_22:
    v19 += 200;
  }

  while (v19 != v20);
  if (v21 > 0)
  {
    v34 = (v21 * 0x431BDE82D7B634DBuLL) >> 64;
    goto LABEL_32;
  }

LABEL_27:
  if (v42 <= 0.0)
  {
    LOWORD(v40[0]) = 12;
    LOBYTE(v39[0]) = 3;
    cnprint::CNPrinter::Print(v40, v39, "#gmp,Measurement propagation time offset is not based off dwell end-times", v10, v11, v12, v13, v14, v37);
    v36 = (v9 * 1000.0);
  }

  else
  {
    v15.i64[0] = 0x4049000000000000;
    sub_1D0BC4124(&v41, v15, v16, v17, v18);
    if (v35 >= 0.0)
    {
      v34 = (v35 * 0x431BDE82D7B634DBuLL) >> 64;
LABEL_32:
      v36 = v34 >> 18;
    }

    else
    {
      v36 = 0;
    }
  }

  *(this + 288) = 1000000 * v36;
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }
}

void sub_1D0E0F3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(int8x8_t **this, const raven::RavenGnssAssistanceFileEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v37) = 12;
      LOBYTE(v36) = 1;
      v23 = "#gmp,#rof,GNSS pre-processor not configured,failed to handle RavenGnssAssistanceFileEvent";
LABEL_22:
      cnprint::CNPrinter::Print(&v37, &v36, v23, a4, a5, a6, a7, a8, v32);
    }

    return 0;
  }

  v9 = this[318];
  if (!v9)
  {
    if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
    {
      LOWORD(v37) = 12;
      LOBYTE(v36) = 1;
      v23 = "#gmp,#rof,ionosphere model not configured,failed to handle RavenGnssAssistanceFileEvent";
      goto LABEL_22;
    }

    return 0;
  }

  if (*(a2 + 16) == *(a2 + 15))
  {
    LOWORD(v37) = 12;
    LOBYTE(v36) = 4;
    v23 = "#gmp,#rof,Handle RavenGnssAssistanceFileEvent,iono parameters empty";
    goto LABEL_22;
  }

  v11 = (*(*v9 + 32))(v9);
  v18 = *(a2 + 15);
  v19 = *(a2 + 16);
  if (v11 && *&this[318][4] != 0x80FE03F80FE03F81 * ((v19 - v18) >> 6))
  {
    LOWORD(v37) = 12;
    LOBYTE(v36) = 2;
    cnprint::CNPrinter::Print(&v37, &v36, "#gmp,#rof,Handle RavenGnssAssistanceFileEvent,received number of iono layers %zu mismatch %zu,resetting", v13, v14, v15, v16, v17, -127 * ((v19 - v18) >> 6));
    v20 = this[318];
    if (v20[4])
    {
      sub_1D0C672C8(v20 + 8, *&v20[3]);
      v20[3] = 0;
      v21 = v20[2];
      if (v21)
      {
        v22 = 0;
        do
        {
          *(*&v20[1] + 8 * v22++) = 0;
        }

        while (*&v21 != v22);
      }

      v20[4] = 0;
    }

    v18 = *(a2 + 15);
    v19 = *(a2 + 16);
  }

  if (v18 != v19)
  {
    while (!cnnavigation::SphericalHarmonicsIonosphereModel::UpdateParameters(this[318], v18, v12, v13, v14, v15, v16, v17))
    {
      v18 = (v18 + 8256);
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_15:
  if (*(this + 2296) == 1)
  {
    v37 = *(this + 139);
  }

  else
  {
    *&v37 = 0;
    *(&v37 + 1) = 0x7FF8000000000000;
  }

  cnnavigation::SphericalHarmonicsIonosphereModel::GetApplicabilityTime(this[318]);
  v36 = 12;
  v35 = 3;
  IsValid = cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(this[318], &v37);
  v26 = this[318];
  v34 = *&v26[7] + v26[6];
  v33 = v26[4];
  cnprint::CNPrinter::Print(&v36, &v35, "#gmp,#rof,Updated SH ionosphere model parameters,is_valid,%d,num_layers,%zu,iono_applicability_time,%.3lf,iono_age_sec,%.3lf,age_thld_sec,%.1f", v27, v28, v29, v30, v31, IsValid);
  return 1;
}

double raven::GnssMeasurementPreprocessor::Reset(raven::GnssMeasurementPreprocessor *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOWORD(v44) = 12;
  LOBYTE(v49) = 3;
  cnprint::CNPrinter::Print(&v44, &v49, "#gmp,Reset invoked", a4, a5, a6, a7, a8, v43);
  *(this + 16) = 0;
  memset(v45, 0, 112);
  v44 = &unk_1F4CEF598;
  *(this + 2) = 0uLL;
  *(this + 3) = 0u;
  v9 = *&v45[32];
  v10 = *&v45[48];
  v11 = *&v45[64];
  *(this + 14) = *&v45[80];
  *(this + 5) = v10;
  *(this + 6) = v11;
  *(this + 4) = v9;
  if ((this + 24) != &v44)
  {
    sub_1D0BBD668(this + 15, 0, 0, 0);
  }

  v44 = &unk_1F4CEF598;
  v49 = &v45[88];
  sub_1D0BBBD80(&v49);
  memset(&v45[96], 0, 64);
  memset(&v45[48], 0, 40);
  *&v45[88] = 0x7FF8000000000000;
  *(this + 184) = 0uLL;
  *(this + 168) = 0uLL;
  *(this + 152) = 0uLL;
  v12 = *&v45[48];
  v13 = *&v45[64];
  v14 = *&v45[80];
  *(this + 248) = *&v45[96];
  *(this + 232) = v14;
  *(this + 216) = v13;
  *(this + 200) = v12;
  v15 = *&v45[112];
  v16 = *&v45[128];
  v17 = *&v45[144];
  *(this + 78) = 0;
  *(this + 280) = v16;
  *(this + 296) = v17;
  *(this + 264) = v15;
  *&v45[272] = 0;
  *&v45[192] = 0;
  memset(v45, 0, 88);
  v44 = &unk_1F4CEF748;
  memset(&v45[96], 0, 88);
  *&v45[88] = 0x7FF8000000000000;
  *&v45[184] = 0x7FF8000000000000;
  *&v45[200] = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v45[216] = *&v45[200];
  *&v45[232] = *&v45[200];
  *&v45[248] = *&v45[200];
  *&v45[264] = 0x7FF8000000000000;
  *&v45[280] = *&v45[200];
  *&v45[296] = *&v45[200];
  *&v45[312] = *&v45[200];
  *&v45[328] = *&v45[200];
  *&v45[344] = 0x7FF8000000000000;
  memcpy(this + 536, v45, 0x160uLL);
  *(this + 111) = 0;
  *(this + 112) = 0x3FF0000000000000;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 121) = 0;
  *(this + 977) = 0;
  v18 = *(this + 1);
  v44 = v45;
  *v45 = 0uLL;
  *&v45[32] = 0;
  *&v45[16] = &v45[24];
  memset(&v45[48], 0, 18);
  *&v45[40] = &v45[48];
  v45[72] = 0;
  v45[104] = 0;
  v45[112] = 0;
  v45[136] = 0;
  v45[144] = 0;
  v45[160] = 0;
  v45[168] = 0;
  v45[184] = 0;
  v45[192] = 0;
  v45[216] = 0;
  v45[224] = 0;
  v45[248] = 0;
  v45[256] = 0;
  v45[280] = 0;
  if (v18)
  {
    v45[64] = *(v18 + 588);
    v45[65] = *(v18 + 597);
  }

  v19 = this + 992;
  sub_1D0DC5F04(this + 984, *(this + 124));
  v20 = *v45;
  *(this + 123) = v44;
  *(this + 124) = v20;
  v21 = *&v45[8];
  *(this + 125) = *&v45[8];
  if (v21)
  {
    *(v20 + 16) = v19;
    v44 = v45;
    *v45 = 0uLL;
  }

  else
  {
    *(this + 123) = v19;
  }

  v22 = this + 1016;
  sub_1D0BCB540(this + 1008, *(this + 127));
  v23 = *&v45[24];
  *(this + 126) = *&v45[16];
  *(this + 127) = v23;
  v24 = *&v45[32];
  *(this + 128) = *&v45[32];
  if (v24)
  {
    *(v23 + 16) = v22;
    *&v45[16] = &v45[24];
    *&v45[24] = 0;
    *&v45[32] = 0;
  }

  else
  {
    *(this + 126) = v22;
  }

  v25 = this + 1040;
  sub_1D0BCB540(this + 1032, *(this + 130));
  v26 = *&v45[48];
  *(this + 129) = *&v45[40];
  *(this + 130) = v26;
  v27 = *&v45[56];
  *(this + 131) = *&v45[56];
  if (v27)
  {
    v26[2] = v25;
    v26 = 0;
    *&v45[40] = &v45[48];
    *&v45[48] = 0uLL;
  }

  else
  {
    *(this + 129) = v25;
  }

  v28 = *&v45[240];
  *(this + 76) = *&v45[224];
  *(this + 77) = v28;
  *(this + 78) = *&v45[256];
  *(this + 1257) = *&v45[265];
  v29 = *&v45[176];
  *(this + 72) = *&v45[160];
  *(this + 73) = v29;
  v30 = *&v45[208];
  *(this + 74) = *&v45[192];
  *(this + 75) = v30;
  v31 = *&v45[112];
  *(this + 68) = *&v45[96];
  *(this + 69) = v31;
  v32 = *&v45[144];
  *(this + 70) = *&v45[128];
  *(this + 71) = v32;
  v33 = *&v45[80];
  *(this + 66) = *&v45[64];
  *(this + 67) = v33;
  sub_1D0BCB540(&v45[40], v26);
  sub_1D0BCB540(&v45[16], *&v45[24]);
  sub_1D0DC5F04(&v44, *v45);
  *(this + 2208) = 0;
  *(this + 553) = -1;
  *(this + 2216) = 0;
  *(this + 555) = -1;
  *(this + 137) = 0u;
  if (*(this + 520) == 1)
  {
    *(this + 40) = &unk_1F4CEE030;
    *(this + 520) = 0;
  }

  *(this + 288) = 0;
  if (*(this + 2296) == 1)
  {
    *(this + 2296) = 0;
  }

  *(this + 2312) = 0uLL;
  *(this + 2336) = 1;
  raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(&v44, *(this + 1));
  *(this + 160) = v44;
  v34 = this + 1296;
  sub_1D0BCB540(this + 1288, *(this + 162));
  v35 = *&v45[8];
  *(this + 161) = *v45;
  *(this + 162) = v35;
  v36 = *&v45[16];
  *(this + 163) = *&v45[16];
  if (v36)
  {
    *(v35 + 16) = v34;
    *v45 = &v45[8];
    *&v45[8] = 0;
    *&v45[16] = 0;
  }

  else
  {
    *(this + 161) = v34;
  }

  v37 = *&v45[24];
  *&v45[24] = 0;
  sub_1D0DE2F74(this + 164, v37);
  v38 = *&v45[32];
  *&v45[32] = 0;
  sub_1D0DE2FC0(this + 165, v38);
  if (*(this + 2160) == v46)
  {
    if (*(this + 2160))
    {
      memcpy(this + 1336, &v45[48], 0x334uLL);
    }
  }

  else if (*(this + 2160))
  {
    *(this + 2160) = 0;
  }

  else
  {
    *(this + 166) = &unk_1F4CEE948;
    memcpy(this + 1336, &v45[48], 0x334uLL);
    *(this + 2160) = 1;
  }

  *(this + 273) = v48;
  *(this + 2168) = v47;
  sub_1D0DE2FC0(&v45[32], 0);
  v39 = *&v45[24];
  *&v45[24] = 0;
  if (v39)
  {
    v40 = sub_1D0BCB594(v39);
    MEMORY[0x1D387ECA0](v40, 0x10E0C401B4558CBLL);
  }

  sub_1D0BCB540(v45, *&v45[8]);
  v42 = *(this + 1);
  if (v42)
  {
    if (*(v42 + 578) == 1)
    {
      if (*(this + 2600))
      {
        sub_1D0BCB594(this + 2560);
        v42 = *(this + 1);
        *(this + 319) = v42;
        result = 0.0;
        *(this + 160) = 0u;
        *(this + 161) = 0u;
        *(this + 648) = 1065353216;
        *(this + 2600) = 1;
        if (!v42)
        {
          return result;
        }
      }

      else
      {
        *(this + 319) = v42;
        result = 0.0;
        *(this + 160) = 0u;
        *(this + 161) = 0u;
        *(this + 648) = 1065353216;
        *(this + 2600) = 1;
      }
    }

    if (*(v42 + 2544) == 1)
    {
      operator new();
    }
  }

  return result;
}

void sub_1D0E0FDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v22 - 88) = &a22;
  sub_1D0BBBD80((v22 - 88));
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0E0FE10(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = sub_1D0C5112C(a1, a2, a3, **a5);
  v11 = **a5;
  v12 = *a3;
  v13 = *(v11 + 16 * *a4);
  if (v13)
  {
    v14 = *(v13 + 328);
    v15 = v14 == *(v13 + 336) || *(v14 + 189) != 1;
  }

  else
  {
    v15 = -1;
  }

  v16 = *(v11 + 16 * *a3);
  if (v16)
  {
    v17 = *(v16 + 328);
    v18 = v17 == *(v16 + 336) || *(v17 + 189) != 1;
  }

  else
  {
    v18 = -1;
  }

  v19 = v15 <= v18;
  if (v15 == v18)
  {
    if (v13)
    {
      v20 = v16 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return result;
    }

    v19 = *(v13 + 264) <= *(v16 + 264);
  }

  if (v19)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v12;
  v21 = *a2;
  v22 = *(v11 + 16 * *a3);
  if (v22)
  {
    v23 = *(v22 + 328);
    v24 = v23 == *(v22 + 336) || *(v23 + 189) != 1;
  }

  else
  {
    v24 = -1;
  }

  v25 = *(v11 + 16 * *a2);
  if (v25)
  {
    v26 = *(v25 + 328);
    v27 = v26 == *(v25 + 336) || *(v26 + 189) != 1;
  }

  else
  {
    v27 = -1;
  }

  v28 = v24 <= v27;
  if (v24 == v27)
  {
    if (v22)
    {
      v29 = v25 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return result;
    }

    v28 = *(v22 + 264) <= *(v25 + 264);
  }

  if (v28)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v21;
  v30 = *a1;
  v31 = (v11 + 16 * *a1);
  v32 = *(v11 + 16 * *a2);
  if (v32)
  {
    v33 = *(v32 + 328);
    v34 = v33 == *(v32 + 336) || *(v33 + 189) != 1;
  }

  else
  {
    v34 = -1;
  }

  v35 = *v31;
  if (v35)
  {
    v36 = *(v35 + 328);
    v37 = v36 == *(v35 + 336) || *(v36 + 189) != 1;
  }

  else
  {
    v37 = -1;
  }

  v38 = v34 <= v37;
  if (v34 != v37)
  {
    goto LABEL_49;
  }

  if (v32 && v35)
  {
    v38 = *(v32 + 264) <= *(v35 + 264);
LABEL_49:
    if (!v38)
    {
      *a1 = *a2;
      *a2 = v30;
    }
  }

  return result;
}

uint64_t *sub_1D0E10034(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = sub_1D0E0FE10(a1, a2, a3, a4, a6);
  v13 = **a6;
  v14 = *a4;
  v15 = *(v13 + 16 * *a5);
  if (v15)
  {
    v16 = *(v15 + 328);
    v17 = v16 == *(v15 + 336) || *(v16 + 189) != 1;
  }

  else
  {
    v17 = -1;
  }

  v18 = *(v13 + 16 * *a4);
  if (v18)
  {
    v19 = *(v18 + 328);
    v20 = v19 == *(v18 + 336) || *(v19 + 189) != 1;
  }

  else
  {
    v20 = -1;
  }

  v21 = v17 <= v20;
  if (v17 == v20)
  {
    if (v15)
    {
      v22 = v18 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return result;
    }

    v21 = *(v15 + 264) <= *(v18 + 264);
  }

  if (v21)
  {
    return result;
  }

  *a4 = *a5;
  *a5 = v14;
  v23 = *a3;
  v24 = *(v13 + 16 * *a4);
  if (v24)
  {
    v25 = *(v24 + 328);
    v26 = v25 == *(v24 + 336) || *(v25 + 189) != 1;
  }

  else
  {
    v26 = -1;
  }

  v27 = *(v13 + 16 * *a3);
  if (v27)
  {
    v28 = *(v27 + 328);
    v29 = v28 == *(v27 + 336) || *(v28 + 189) != 1;
  }

  else
  {
    v29 = -1;
  }

  v30 = v26 <= v29;
  if (v26 == v29)
  {
    if (v24)
    {
      v31 = v27 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return result;
    }

    v30 = *(v24 + 264) <= *(v27 + 264);
  }

  if (v30)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v23;
  v32 = *a2;
  v33 = *(v13 + 16 * *a3);
  if (v33)
  {
    v34 = *(v33 + 328);
    v35 = v34 == *(v33 + 336) || *(v34 + 189) != 1;
  }

  else
  {
    v35 = -1;
  }

  v36 = *(v13 + 16 * *a2);
  if (v36)
  {
    v37 = *(v36 + 328);
    v38 = v37 == *(v36 + 336) || *(v37 + 189) != 1;
  }

  else
  {
    v38 = -1;
  }

  v39 = v35 <= v38;
  if (v35 == v38)
  {
    if (!v33 || !v36)
    {
      return result;
    }

    v39 = *(v33 + 264) <= *(v36 + 264);
  }

  if (v39)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v32;
  v40 = *a1;
  v41 = (v13 + 16 * *a1);
  v42 = *(v13 + 16 * *a2);
  if (v42)
  {
    v43 = *(v42 + 328);
    v44 = v43 == *(v42 + 336) || *(v43 + 189) != 1;
  }

  else
  {
    v44 = -1;
  }

  v45 = *v41;
  if (v45)
  {
    v46 = *(v45 + 328);
    v47 = v46 == *(v45 + 336) || *(v46 + 189) != 1;
  }

  else
  {
    v47 = -1;
  }

  v48 = v44 <= v47;
  if (v44 != v47)
  {
    goto LABEL_64;
  }

  if (v42 && v45)
  {
    v48 = *(v42 + 264) <= *(v45 + 264);
LABEL_64:
    if (!v48)
    {
      *a1 = *a2;
      *a2 = v40;
    }
  }

  return result;
}

BOOL sub_1D0E102F0(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_1D0C5112C(a1, a1 + 1, a2 - 1, **a3);
        return 1;
      case 4:
        sub_1D0E0FE10(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_1D0E10034(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = **a3;
      v9 = *a1;
      v10 = (v8 + 16 * *a1);
      v11 = *(v8 + 16 * v7);
      if (v11)
      {
        v12 = *(v11 + 328);
        v13 = v12 == *(v11 + 336) || *(v12 + 189) != 1;
      }

      else
      {
        v13 = -1;
      }

      v36 = *v10;
      if (v36)
      {
        v37 = *(v36 + 328);
        v38 = v37 == *(v36 + 336) || *(v37 + 189) != 1;
      }

      else
      {
        v38 = -1;
      }

      v39 = v13 <= v38;
      if (v13 == v38)
      {
        if (v11)
        {
          v40 = v36 == 0;
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          return 1;
        }

        v39 = *(v11 + 264) <= *(v36 + 264);
      }

      if (!v39)
      {
        *a1 = v7;
        *(a2 - 1) = v9;
      }

      return 1;
    }
  }

  v14 = a1 + 2;
  sub_1D0C5112C(a1, a1 + 1, a1 + 2, **a3);
  v15 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v18 = **a3;
  while (2)
  {
    v19 = *v15;
    v20 = *(v18 + 16 * *v15);
    if (v20)
    {
      v21 = *(v20 + 328);
      v22 = v21 == *(v20 + 336) || *(v21 + 189) != 1;
    }

    else
    {
      v22 = -1;
    }

    v23 = *(v18 + 16 * *v14);
    if (v23)
    {
      v24 = *(v23 + 328);
      v25 = v24 == *(v23 + 336) || *(v24 + 189) != 1;
    }

    else
    {
      v25 = -1;
    }

    v26 = v22 <= v25;
    if (v22 == v25)
    {
      if (v20)
      {
        v27 = v23 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        goto LABEL_51;
      }

      v26 = *(v20 + 264) <= *(v23 + 264);
    }

    if (v26)
    {
      goto LABEL_51;
    }

    *v15 = *v14;
    v28 = v16;
    while (1)
    {
      v29 = *(a1 + v28 + 8);
      if (v20)
      {
        v30 = *(v20 + 328);
        v31 = v30 == *(v20 + 336) || *(v30 + 189) != 1;
      }

      else
      {
        v31 = -1;
      }

      v32 = *(v18 + 16 * v29);
      if (v32)
      {
        v33 = *(v32 + 328);
        v34 = v33 == *(v32 + 336) || *(v33 + 189) != 1;
      }

      else
      {
        v34 = -1;
      }

      v35 = v31 <= v34;
      if (v31 != v34)
      {
        goto LABEL_46;
      }

      if (!v20 || !v32)
      {
        break;
      }

      v35 = *(v20 + 264) <= *(v32 + 264);
LABEL_46:
      if (v35)
      {
        goto LABEL_50;
      }

      --v14;
      *(a1 + v28 + 16) = v29;
      v28 -= 8;
      if (v28 == -16)
      {
        v14 = a1;
        goto LABEL_50;
      }
    }

    v14 = (a1 + v28 + 16);
LABEL_50:
    *v14 = v19;
    if (++v17 != 8)
    {
LABEL_51:
      v14 = v15;
      v16 += 8;
      if (++v15 == a2)
      {
        return 1;
      }

      continue;
    }

    return v15 + 1 == a2;
  }
}

uint64_t raven::RavenIntegrityEstimator::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = *a2;
  if (*a2 && (*(v8 + 33) & 1) != 0)
  {
    *(a1 + 8) = v8;
    operator new();
  }

  LOWORD(v12) = 12;
  LOBYTE(v11) = 4;
  cnprint::CNPrinter::Print(&v12, &v11, "RavenIntegrityEstimator could not be configured.", a4, a5, a6, a7, a8, v10);
  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::ARSessionStatusEvent *a2)
{
  v3 = this;
  if (*(this + 288) != 1)
  {
    goto LABEL_28;
  }

  v4 = this + 296;
  v5 = (*(*(this + 37) + 16))(this + 296);
  v7 = v6;
  v8 = v6;
  this = (*(*a2 + 16))(a2);
  v10.n128_f64[0] = v9;
  if (v5)
  {
    v11 = 1;
  }

  else
  {
    v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v11 || (!this ? (v12 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v12 = 1), !v12 || (v13 = v5 <= this, v5 == this)))
  {
    v13 = v8 <= v9;
  }

  if (v13)
  {
    goto LABEL_28;
  }

  if ((*(v3 + 288) & 1) == 0)
  {
    __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
  }

  if (*(v3 + 400) == *(a2 + 104))
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v44) = 2;
    v14 = (*(*v4 + 16))(v3 + 296, v10);
    v16 = v15 + v14;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(__p, &v44, "RavenIntegrityEstimator: Warning, AR Session Status out of order,t_curr,%.3lf,t_new,%.3lf", v17, v18, v19, v20, v21, SLOBYTE(v16));
  }

  else
  {
LABEL_28:
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      v44 = 12;
      v43 = 0;
      v22 = (*(*a2 + 16))(a2);
      v24 = v23 + v22;
      sub_1D0E115B4(a2, __p);
      cnprint::CNPrinter::Print(&v44, &v43, "RavenIntegrityEstimator: t,%.3lf Latest AR Session Status %s", v25, v26, v27, v28, v29, SLOBYTE(v24));
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(v3 + 288) == 1)
    {
      v30 = *(a2 + 8);
      v31 = *(a2 + 40);
      *(v3 + 20) = *(a2 + 24);
      *(v3 + 21) = v31;
      *(v3 + 19) = v30;
      v32 = *(a2 + 56);
      v33 = *(a2 + 72);
      v34 = *(a2 + 88);
      *(v3 + 400) = *(a2 + 104);
      *(v3 + 23) = v33;
      *(v3 + 24) = v34;
      *(v3 + 22) = v32;
    }

    else
    {
      *(v3 + 37) = &unk_1F4CEEF40;
      v35 = *(a2 + 8);
      v36 = *(a2 + 40);
      *(v3 + 20) = *(a2 + 24);
      *(v3 + 21) = v36;
      *(v3 + 19) = v35;
      v37 = *(a2 + 56);
      v38 = *(a2 + 72);
      v39 = *(a2 + 88);
      *(v3 + 400) = *(a2 + 104);
      *(v3 + 23) = v38;
      *(v3 + 24) = v39;
      *(v3 + 22) = v37;
      *(v3 + 288) = 1;
    }
  }

  return 0;
}

void sub_1D0E11598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::ActivityStateEvent *a2, raven::ActivityStateEvent *a3)
{
  if (!raven::ActivityStateChecker::HandleEvent(*(this + 199), a2, a3))
  {
    v6 = *(a3 + 104);
    *(this + 88) = *(a3 + 120);
    *(this + 72) = v6;
    result = *(a3 + 136);
    v7 = *(a3 + 152);
    v8 = *(a3 + 168);
    *(this + 19) = *(a3 + 23);
    *(this + 136) = v8;
    *(this + 120) = v7;
    *(this + 104) = result;
  }

  return result;
}

__n128 raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::AltitudeEvent *a2, raven::AltitudeEvent *a3)
{
  if (!raven::AltitudeChecker::HandleEvent(*(this + 202), a2, a3))
  {
    if (*(this + 160) == 1)
    {
      v6 = *(a3 + 8);
      v7 = *(a3 + 40);
      *(this + 12) = *(a3 + 24);
      *(this + 13) = v7;
      *(this + 11) = v6;
      result = *(a3 + 56);
      v8 = *(a3 + 72);
      v9 = *(a3 + 104);
      *(this + 16) = *(a3 + 88);
      *(this + 17) = v9;
      *(this + 14) = result;
      *(this + 15) = v8;
    }

    else
    {
      *(this + 21) = &unk_1F4CEEAB0;
      v10 = *(a3 + 8);
      v11 = *(a3 + 40);
      *(this + 12) = *(a3 + 24);
      *(this + 13) = v11;
      *(this + 11) = v10;
      result = *(a3 + 56);
      v12 = *(a3 + 72);
      v13 = *(a3 + 104);
      *(this + 16) = *(a3 + 88);
      *(this + 17) = v13;
      *(this + 14) = result;
      *(this + 15) = v12;
      *(this + 160) = 1;
    }
  }

  return result;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::GNSSPreprocessedMeasurementsChecker **this, const raven::GnssPreprocessedMeasurementsEvent *a2, uint64_t **a3)
{
  v5 = raven::GNSSPreprocessedMeasurementsChecker::HandleEvent(this[204], a2, a3);
  if (!v5)
  {
    v6 = a3[12];
    v7 = a3[13];
    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        if (*v6)
        {
          v8 += sub_1D0E117CC(*v6);
        }

        v6 += 2;
      }

      while (v6 != v7);
    }

    v9 = ((*a3)[2])(a3);
    v10 = *(this + 1584);
    this[195] = v9;
    this[196] = v11;
    *(this + 394) = v8;
    if ((v10 & 1) == 0)
    {
      *(this + 1584) = 1;
    }
  }

  return v5;
}

uint64_t sub_1D0E117CC(uint64_t a1)
{
  v1 = *(a1 + 328);
  v2 = *(a1 + 336);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(v1 + 100);
      if (v7 <= 0xA)
      {
        if (((1 << v7) & 0x544) != 0)
        {
          v8 = *(v1 + 96);
          if ((v8 - 2) < 4 || v8 == 0)
          {
            if ((v8 - 2) <= 2)
            {
              v4 = 1;
              if (v5)
              {
                return v4 & 1;
              }

              v5 = 0;
            }
          }

          else
          {
            v5 = 1;
            if (v4)
            {
              goto LABEL_30;
            }

            v4 = 0;
          }

          goto LABEL_24;
        }

        if (!*(v1 + 100))
        {
          goto LABEL_24;
        }
      }

      v10 = *(v1 + 96);
      if ((v10 - 2) < 4 || v10 == 0)
      {
        if ((v10 - 2) <= 2)
        {
          v6 = 1;
          if (v3)
          {
            goto LABEL_30;
          }

          v3 = 0;
        }
      }

      else
      {
        v3 = 1;
        if (v6)
        {
LABEL_30:
          v4 = 1;
          return v4 & 1;
        }

        v6 = 0;
      }

LABEL_24:
      v1 += 208;
      if (v1 == v2)
      {
        v4 = v3 & v6 | v5 & v4;
        return v4 & 1;
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

__n128 raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::TunnelBridgeNotificationEvent *a2, raven::TunnelBridgeNotificationEvent *a3, __n128 a4)
{
  result = raven::TunnelBridgeNotificationChecker::HandleEvent(*(this + 215), a2, a3, a4);
  if (!v7)
  {
    v23[0] = (*(*a3 + 16))(a3, result);
    v23[1] = v8;
    v22 = *(this + 456);
    v10 = CNTimeSpan::operator-(v23, &v22, v22, v9);
    if (*(this + 674) == 1 && (*(a3 + 226) & 1) == 0 && v11 + v10 <= 600.0)
    {
      v12 = *(this + 1536);
      *(this + 1544) = *(a3 + 8);
      if ((v12 & 1) == 0)
      {
        *(this + 1536) = 1;
      }
    }

    v13 = *(a3 + 24);
    *(this + 456) = *(a3 + 8);
    *(this + 472) = v13;
    v14 = *(a3 + 40);
    v15 = *(a3 + 56);
    v16 = *(a3 + 88);
    *(this + 520) = *(a3 + 72);
    *(this + 536) = v16;
    *(this + 488) = v14;
    *(this + 504) = v15;
    v17 = *(a3 + 104);
    v18 = *(a3 + 120);
    v19 = *(a3 + 152);
    *(this + 584) = *(a3 + 136);
    *(this + 600) = v19;
    *(this + 552) = v17;
    *(this + 568) = v18;
    result = *(a3 + 168);
    v20 = *(a3 + 184);
    v21 = *(a3 + 200);
    *(this + 660) = *(a3 + 212);
    *(this + 632) = v20;
    *(this + 648) = v21;
    *(this + 616) = result;
  }

  return result;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::TunnelEndPointAssistanceChecker **this, const raven::TunnelEndPointAssistanceEvent *a2, raven::TunnelEndPointAssistanceEvent *a3)
{
  if (raven::TunnelEndPointAssistanceChecker::HandleEvent(this[216], a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::RavenIntegrityEstimator::Reset(uint64_t this)
{
  v109 = *MEMORY[0x1E69E9840];
  if (*this != 1)
  {
    goto LABEL_68;
  }

  v1 = this;
  v100 = 0;
  if (*(this + 288) == 1)
  {
    v101 = &unk_1F4CEEF40;
    v2 = *(this + 384);
    v106 = *(this + 368);
    v107 = v2;
    v108 = *(this + 400);
    v3 = *(this + 320);
    v102 = *(this + 304);
    v103 = v3;
    v4 = *(this + 352);
    v104 = *(this + 336);
    v105 = v4;
    v100 = 1;
  }

  bzero(&v48, 0x628uLL);
  v53 = 1065353216;
  *(&v54 + 1) = 0x3FF0000000000000;
  LOBYTE(v74) = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  memset(v58, 0, 25);
  *(&v74 + 1) = 0x3FF0000000000000;
  memset(v75, 0, sizeof(v75));
  v76 = &unk_1F4CEF7D8;
  v77 = 0u;
  v78[0] = 0;
  memset(&v78[8], 0, 17);
  v79 = 0u;
  v80[0] = 0;
  *&v80[8] = 0u;
  *&v80[24] = 0x7FF8000000000000;
  v81 = 0u;
  v82[0] = 0;
  memset(&v82[8], 0, 17);
  v83 = 0u;
  LOBYTE(v84[0]) = 0;
  *(v84 + 8) = 0u;
  *(&v84[1] + 8) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(&v84[2] + 8) = *(&v84[1] + 8);
  v85 = 0;
  v95 = 0;
  LOBYTE(v99[0]) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1D0D30898((v1 + 32));
  v5 = v49;
  v49 = 0;
  v6 = *(v1 + 32);
  *(v1 + 32) = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v50;
  v8 = v51;
  *(v1 + 48) = v51;
  *(v1 + 40) = v7;
  v50 = 0;
  v9 = v52;
  *(v1 + 56) = v52;
  *(v1 + 64) = v53;
  if (v9)
  {
    v10 = *(v8 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v10 >= v7)
      {
        v10 %= v7;
      }
    }

    else
    {
      v10 &= v7 - 1;
    }

    *(*(v1 + 32) + 8 * v10) = v1 + 48;
    v51 = 0;
    v52 = 0;
  }

  *(v1 + 104) = v56;
  *(v1 + 120) = v57;
  *(v1 + 136) = v58[0];
  *(v1 + 152) = *&v58[1];
  *(v1 + 72) = v54;
  *(v1 + 88) = v55;
  v11 = BYTE8(v58[1]);
  if (*(v1 + 160) == 1)
  {
    if (BYTE8(v58[1]))
    {
      v12 = v64;
      *(v1 + 240) = v63;
      *(v1 + 256) = v12;
      *(v1 + 272) = v65;
      v13 = v60;
      *(v1 + 176) = v59;
      *(v1 + 192) = v13;
      v14 = v62;
      *(v1 + 208) = v61;
      *(v1 + 224) = v14;
    }

    else
    {
      *(v1 + 160) = 0;
    }
  }

  else if (BYTE8(v58[1]))
  {
    *(v1 + 168) = &unk_1F4CEEAB0;
    v15 = v64;
    *(v1 + 240) = v63;
    *(v1 + 256) = v15;
    *(v1 + 272) = v65;
    v16 = v60;
    *(v1 + 176) = v59;
    *(v1 + 192) = v16;
    v17 = v62;
    *(v1 + 208) = v61;
    *(v1 + 224) = v17;
    *(v1 + 160) = 1;
  }

  v18 = v66;
  if (*(v1 + 288) == 1)
  {
    if (v66)
    {
      v19 = v72;
      *(v1 + 368) = v71;
      *(v1 + 384) = v19;
      *(v1 + 400) = v73;
      v20 = v68;
      *(v1 + 304) = v67;
      *(v1 + 320) = v20;
      v21 = v70;
      *(v1 + 336) = v69;
      *(v1 + 352) = v21;
    }

    else
    {
      *(v1 + 288) = 0;
    }
  }

  else if (v66)
  {
    *(v1 + 296) = &unk_1F4CEEF40;
    v22 = v72;
    *(v1 + 368) = v71;
    *(v1 + 384) = v22;
    *(v1 + 400) = v73;
    v23 = v68;
    *(v1 + 304) = v67;
    *(v1 + 320) = v23;
    v24 = v70;
    *(v1 + 336) = v69;
    *(v1 + 352) = v24;
    *(v1 + 288) = 1;
  }

  v25 = *v75;
  *(v1 + 408) = v74;
  *(v1 + 424) = v25;
  *(v1 + 440) = *&v75[16];
  v26 = v84[1];
  *(v1 + 616) = v84[0];
  *(v1 + 632) = v26;
  *(v1 + 648) = v84[2];
  *(v1 + 660) = *(&v84[2] + 12);
  v27 = *v82;
  *(v1 + 552) = v81;
  *(v1 + 568) = v27;
  v28 = v83;
  *(v1 + 584) = *&v82[16];
  *(v1 + 600) = v28;
  v29 = v79;
  *(v1 + 488) = *&v78[16];
  *(v1 + 504) = v29;
  v30 = *&v80[16];
  *(v1 + 520) = *v80;
  *(v1 + 536) = v30;
  v31 = *v78;
  *(v1 + 456) = v77;
  *(v1 + 472) = v31;
  v32 = v85;
  if (*(v1 + 680) == 1)
  {
    if (v85)
    {
      *(v1 + 792) = v92;
      v33 = v91;
      *(v1 + 760) = v90;
      *(v1 + 776) = v33;
      v34 = v87;
      *(v1 + 696) = v86;
      *(v1 + 712) = v34;
      v35 = v89;
      *(v1 + 728) = v88;
      *(v1 + 744) = v35;
    }

    else
    {
      *(v1 + 680) = 0;
    }
  }

  else if (v85)
  {
    *(v1 + 688) = &unk_1F4CEF5C8;
    *(v1 + 792) = v92;
    v36 = v91;
    *(v1 + 760) = v90;
    *(v1 + 776) = v36;
    v37 = v87;
    *(v1 + 696) = v86;
    *(v1 + 712) = v37;
    v38 = v89;
    *(v1 + 728) = v88;
    *(v1 + 744) = v38;
    *(v1 + 680) = 1;
  }

  v39 = v93;
  if (*(v1 + 800) == 1)
  {
    if (v93)
    {
      memcpy((v1 + 816), v94, 0x160uLL);
    }

    else
    {
      *(v1 + 800) = 0;
    }
  }

  else if (v93)
  {
    *(v1 + 808) = &unk_1F4CEF748;
    memcpy((v1 + 816), v94, 0x160uLL);
    *(v1 + 800) = 1;
  }

  v40 = v95;
  if (*(v1 + 1168) == 1)
  {
    if (v95)
    {
      memcpy((v1 + 1184), v96, 0x160uLL);
    }

    else
    {
      *(v1 + 1168) = 0;
    }
  }

  else if (v95)
  {
    *(v1 + 1176) = &unk_1F4CEF748;
    memcpy((v1 + 1184), v96, 0x160uLL);
    *(v1 + 1168) = 1;
  }

  if (*(v1 + 1536) == 1)
  {
    if (v97)
    {
      *(v1 + 1544) = v98;
      goto LABEL_47;
    }

    *(v1 + 1536) = 0;
LABEL_50:
    *(v1 + 1560) = v99[0];
    *(v1 + 1569) = *(v99 + 9);
    if (!v40)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (!v97)
  {
    goto LABEL_50;
  }

  *(v1 + 1544) = v98;
  *(v1 + 1536) = 1;
LABEL_47:
  *(v1 + 1560) = v99[0];
  *(v1 + 1569) = *(v99 + 9);
  v97 = 0;
  if (v40)
  {
LABEL_51:
    v95 = 0;
  }

LABEL_52:
  if (v39)
  {
    v93 = 0;
    if (!v32)
    {
LABEL_54:
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_62:
      v66 = 0;
      if (!v11)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if (!v32)
  {
    goto LABEL_54;
  }

  v85 = 0;
  if (v18)
  {
    goto LABEL_62;
  }

LABEL_55:
  if (v11)
  {
LABEL_56:
    BYTE8(v58[1]) = 0;
  }

LABEL_57:
  sub_1D0BCB594(&v49);
  if (*(v1 + 288) == 1)
  {
    if (v100)
    {
      v41 = v107;
      *(v1 + 368) = v106;
      *(v1 + 384) = v41;
      *(v1 + 400) = v108;
      v42 = v103;
      *(v1 + 304) = v102;
      *(v1 + 320) = v42;
      v43 = v105;
      *(v1 + 336) = v104;
      *(v1 + 352) = v43;
    }

    else
    {
      *(v1 + 288) = 0;
    }
  }

  else if (v100)
  {
    *(v1 + 296) = &unk_1F4CEEF40;
    v44 = v107;
    *(v1 + 368) = v106;
    *(v1 + 384) = v44;
    *(v1 + 400) = v108;
    v45 = v103;
    *(v1 + 304) = v102;
    *(v1 + 320) = v45;
    v46 = v105;
    *(v1 + 336) = v104;
    *(v1 + 352) = v46;
    *(v1 + 288) = 1;
  }

  (*(**(v1 + 1592) + 32))(*(v1 + 1592));
  (*(**(v1 + 1608) + 32))(*(v1 + 1608));
  (*(**(v1 + 1616) + 32))(*(v1 + 1616));
  (*(**(v1 + 1624) + 32))(*(v1 + 1624));
  (*(**(v1 + 1632) + 32))(*(v1 + 1632));
  (*(**(v1 + 1640) + 32))(*(v1 + 1640));
  (*(**(v1 + 1648) + 32))(*(v1 + 1648));
  (*(**(v1 + 1656) + 32))(*(v1 + 1656));
  (*(**(v1 + 1664) + 32))(*(v1 + 1664));
  (*(**(v1 + 1672) + 32))(*(v1 + 1672));
  (*(**(v1 + 1680) + 32))(*(v1 + 1680));
  (*(**(v1 + 1688) + 32))(*(v1 + 1688));
  (*(**(v1 + 1720) + 32))(*(v1 + 1720));
  (*(**(v1 + 1728) + 32))(*(v1 + 1728));
  this = (*(**(v1 + 1712) + 32))(*(v1 + 1712));
LABEL_68:
  v47 = *MEMORY[0x1E69E9840];
  return this;
}

__n128 raven::RavenIntegrityEstimator::UpdateCurrentTime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1] = *a2;
  return result;
}

uint64_t raven::MapVectorChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = a3;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(*a2 + 2512);
  *(a1 + 24) = v12;
  if ((v12 <= -1 || ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v12 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v20 = v8;
    v21 = v9;
    v16 = v11 + v10;
    v19 = 12;
    v18 = 4;
    cnprint::CNPrinter::Print(&v19, &v18, "t,%.3lf,Map vector checker, Cannot configure. Invalid estimator_sigma_tolerance: %.2lf", a4, a5, a6, a7, a8, SLOBYTE(v16));
    return 0xFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
    *(a1 + 8) = 1;
  }

  return v15;
}

BOOL raven::MapVectorChecker::isCoordinateValid(raven::MapVectorChecker *this, double a2, double a3)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a2 <= 90.0 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a2 >= -90.0;
  if (a3 > 180.0)
  {
    v5 = 0;
  }

  return a3 >= -180.0 && v5;
}

uint64_t raven::MapVectorChecker::HandleEvent(raven::MapVectorChecker *this, const raven::MapVectorEvent *a2, raven::MapVectorEvent *a3)
{
  v210 = *MEMORY[0x1E69E9840];
  if (*(this + 8))
  {
    v4 = *(a2 + 25);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v21 = *(a2 + 26), v21 < -180.0) || v21 > 180.0 || v4 < -90.0 || v4 > 90.0 || (*(a2 + 26) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        LOWORD(v198) = 12;
        LOBYTE(v192) = 1;
        v5 = (*(*a2 + 16))(a2);
        v168 = v6 + v5;
        cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, map vector has invalid predicted point coordinates, do not use map vector", v7, v8, v9, v10, v11, SLOBYTE(v168));
      }

      goto LABEL_6;
    }

    v22 = *(a2 + 28);
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v30 = *(a2 + 29), v30 < -180.0) || v30 > 180.0 || v22 < -90.0 || v22 > 90.0 || (*(a2 + 29) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        LOWORD(v198) = 12;
        LOBYTE(v192) = 1;
        v23 = (*(*a2 + 16))(a2);
        v170 = v24 + v23;
        cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, map vector has invalid start point coordinates, do not use map vector", v25, v26, v27, v28, v29, SLOBYTE(v170));
      }

      goto LABEL_6;
    }

    v31 = *(a2 + 32);
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v31 < 0.0 || v31 >= 360.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        LOWORD(v198) = 12;
        LOBYTE(v192) = 1;
        v32 = (*(*a2 + 16))(a2);
        v171 = v33 + v32;
        cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, map vector course is not set, too large, or negative, do not use map vector", v34, v35, v36, v37, v38, SLOBYTE(v171));
      }

      goto LABEL_6;
    }

    v39 = *(a2 + 33);
    v40 = (v39 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v41 = ((v39 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v39 >= 0)
    {
      v41 = 0;
      v40 = 0;
    }

    v42 = (v39 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v40;
    if ((v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v42 = 1;
    }

    if ((v42 | v41) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        LOWORD(v198) = 12;
        LOBYTE(v192) = 1;
        v43 = (*(*a2 + 16))(a2);
        v172 = v44 + v43;
        cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, map vector course uncertainty is not set, or negative, do not use map vector", v45, v46, v47, v48, v49, SLOBYTE(v172));
      }
    }

    else
    {
      v50 = *(a2 + 30);
      v51 = (v50 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v52 = ((v50 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v50 >= 0)
      {
        v52 = 0;
        v51 = 0;
      }

      if ((v50 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
      {
        v51 = 1;
      }

      if ((v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v51 = 1;
      }

      if (v51 || v52)
      {
        if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
        {
          LOWORD(v198) = 12;
          LOBYTE(v192) = 1;
          v53 = (*(*a2 + 16))(a2);
          v173 = v54 + v53;
          cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, road width is not set or negative, do not use map vector", v55, v56, v57, v58, v59, SLOBYTE(v173));
        }
      }

      else
      {
        v60 = *(a2 + 31);
        v61 = v60 & 0x7FFFFFFFFFFFFFFFLL;
        v62 = (v60 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v63 = v60 < 0;
        v64 = v60 < 0 && ((v60 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (!v63)
        {
          v62 = 0;
        }

        v65 = v61 <= 0x7FF0000000000000;
        v66 = v61 == 0x7FF0000000000000 || v62;
        if (!v65)
        {
          v66 = 1;
        }

        if ((v66 | v64) != 1)
        {
          memcpy(a3 + 8, a2 + 8, 0x10CuLL);
          if (*(this + 9) == 1)
          {
            if (!sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA1170))
            {
              if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
              {
                LOWORD(v198) = 12;
                LOBYTE(v192) = 1;
                v84 = (*(*a2 + 16))(a2);
                v176 = v85 + v84;
                cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, no valid fix, thus cannot conduct further check, to be safe, do not use map vector", v86, v87, v88, v89, v90, SLOBYTE(v176));
              }

              goto LABEL_6;
            }

            v75 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170);
            if ((v75[183] & 1) == 0)
            {
              if (cnprint::CNPrinter::GetLogLevel(v75) <= 1)
              {
                LOWORD(v198) = 12;
                LOBYTE(v192) = 1;
                v91 = (*(*a2 + 16))(a2);
                v177 = v92 + v91;
                cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, no valid raven position fix, cannot conduct further check, to be safe, do not use map vector", v93, v94, v95, v96, v97, SLOBYTE(v177));
              }

              goto LABEL_6;
            }

            v207 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170) + 92);
            v208 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170)[186];
            v76 = cnnavigation::ECEFToLLA(&v207, 1, &v209, 0, &v198);
            if (v76)
            {
              if (cnprint::CNPrinter::GetLogLevel(v76) <= 1)
              {
                LOWORD(v198) = 12;
                LOBYTE(v192) = 1;
                v77 = (*(*a2 + 16))(a2);
                v175 = v78 + v77;
                cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, cannot derive receiver lla position, do not use map vector", v79, v80, v81, v82, v83, SLOBYTE(v175));
              }

              goto LABEL_6;
            }

            v185 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
            v209 = vmulq_f64(*(a2 + 14), v185);
            v199 = 0;
            v202 = 0x300000003;
            v200 = &unk_1F4CD5DD0;
            v201 = xmmword_1D0E76C10;
            v203 = &v204;
            v198 = &unk_1F4CD5D50;
            v98 = cnnavigation::ECEFToENU(&v207, 1, 1, &v209, 0, &v205, &v198);
            if (v98)
            {
              if (cnprint::CNPrinter::GetLogLevel(v98) <= 1)
              {
                LOWORD(v192) = 12;
                LOBYTE(v187) = 1;
                v99 = (*(*a2 + 16))(a2);
                v178 = v100 + v99;
                cnprint::CNPrinter::Print(&v192, &v187, "t,%.3lf,WARNING: Map vector checker, cannot derive ENU of user position wrt segment start point, do not use map vector", v101, v102, v103, v104, v105, SLOBYTE(v178));
              }

              goto LABEL_6;
            }

            v106 = __sincos_stret(*(a2 + 32) * 0.0174532925);
            v107 = v206 * v106.__cosval + v205 * v106.__sinval;
            v108 = *(a2 + 31);
            if (v107 > v108 * 1.5 || v107 < v108 * -0.5)
            {
              v117 = *(this + 2);
              v187 = (*(*a2 + 16))(a2);
              *&v188 = v118;
              v197[0] = (*(*(v117 + 432) + 16))(v117 + 432);
              v197[1] = v119;
              v122 = CNTimeSpan::operator-(&v187, v197, v120, v121);
              v192 = v122;
              *&v193 = v123;
              if (*(v117 + 658) != 1)
              {
                goto LABEL_81;
              }

              if (v122 < 0 || (*v124.i64 = v123, v123 < 0.0))
              {
                v122 = CNTimeSpan::operator-(&v192, v124, v125);
                v124.i64[0] = v126;
              }

              if (*v124.i64 + v122 > 5.0)
              {
LABEL_81:
                if (cnprint::CNPrinter::GetLogLevel(v122) <= 1)
                {
                  LOWORD(v187) = 12;
                  LOBYTE(v197[0]) = 1;
                  v127 = (*(*a2 + 16))(a2);
                  v180 = v128 + v127;
                  cnprint::CNPrinter::Print(&v187, v197, "t,%.3lf,WARNING: Map vector checker, along road component of current solution is far away from the given road segment, do not use map vector", v129, v130, v131, v132, v133, SLOBYTE(v180));
                }

                goto LABEL_6;
              }

              if (cnprint::CNPrinter::GetLogLevel(v122) <= 1)
              {
                LOWORD(v187) = 12;
                LOBYTE(v197[0]) = 1;
                v147 = (*(*a2 + 16))(a2);
                v182 = v148 + v147;
                cnprint::CNPrinter::Print(&v187, v197, "t,%.3lf,WARNING: Map vector checker, along road component of current solution is far away from the given road segment. However, position is currently inside tunnel. So do not fail the map vector.", v149, v150, v151, v152, v153, SLOBYTE(v182));
              }
            }

            v209 = vmulq_f64(*(a2 + 200), v185);
            v109 = cnnavigation::ECEFToENU(&v207, 1, 1, &v209, 0, &v205, &v198);
            if (v109)
            {
              if (cnprint::CNPrinter::GetLogLevel(v109) <= 1)
              {
                LOWORD(v192) = 12;
                LOBYTE(v187) = 1;
                v110 = (*(*a2 + 16))(a2);
                v179 = v111 + v110;
                cnprint::CNPrinter::Print(&v192, &v187, "t,%.3lf,WARNING: Map vector checker, cannot derive ENU of user position wrt expected position, do not use map vector", v112, v113, v114, v115, v116, SLOBYTE(v179));
              }

              goto LABEL_6;
            }

            v134 = v205;
            v135 = v206;
            v194 = 0x300000003;
            v192 = &unk_1F4CD5DD0;
            v193 = xmmword_1D0E76C10;
            v195 = &v196;
            v189 = 0x300000003;
            v187 = &unk_1F4CD5DD0;
            v188 = xmmword_1D0E76C10;
            v190 = &v191;
            v136 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170);
            v137 = sub_1D0DF5384((v136 + 146), &v187);
            if (v138)
            {
              v139 = sub_1D0BFE654(&v198, &v187, &v192);
              if (fabs(fabs(v106.__sinval * v135 - v134 * v106.__cosval) / sqrt(*v195 + v195[SHIDWORD(v193) + 1])) > *(this + 3) || (*(this + 8) & 1) == 0)
              {
                if (cnprint::CNPrinter::GetLogLevel(v139) <= 1)
                {
                  LOWORD(v197[0]) = 12;
                  v186 = 1;
                  v161 = (*(*a2 + 16))(a2);
                  v184 = v162 + v161;
                  cnprint::CNPrinter::Print(v197, &v186, "t,%.3lf,WARNING: Map vector checker, IsSigmaSane check failed, do not use map vector", v163, v164, v165, v166, v167, SLOBYTE(v184));
                }

                goto LABEL_6;
              }

              if (!cnprint::CNPrinter::GetLogLevel(v139))
              {
                LOWORD(v197[0]) = 12;
                v186 = 0;
                v140 = (*(*a2 + 16))(a2);
                v181 = v141 + v140;
                cnprint::CNPrinter::Print(v197, &v186, "t,%.3lf,Map vector checker, passed", v142, v143, v144, v145, v146, SLOBYTE(v181));
              }
            }

            else
            {
              LOWORD(v197[0]) = 12;
              v186 = 2;
              v154 = (*(*a2 + 16))(a2, v137);
              v183 = v155 + v154;
              cnprint::CNPrinter::Print(v197, &v186, "t,%.3lf,WARNING: Map vector checker, difference with current solution not checked, can't get position covariance", v156, v157, v158, v159, v160, SLOBYTE(v183));
            }
          }

          result = 0;
          goto LABEL_7;
        }

        if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
        {
          LOWORD(v198) = 12;
          LOBYTE(v192) = 1;
          v67 = (*(*a2 + 16))(a2);
          v174 = v68 + v67;
          cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,WARNING: Map vector checker, road length is not set or negative, do not use map vector", v69, v70, v71, v72, v73, SLOBYTE(v174));
        }
      }
    }
  }

  else
  {
    LOWORD(v198) = 12;
    LOBYTE(v192) = 4;
    v12 = (*(*a2 + 16))(a2, a2, a3);
    v169 = v13 + v12;
    cnprint::CNPrinter::Print(&v198, &v192, "t,%.3lf,MapVectorChecker, not configured", v14, v15, v16, v17, v18, SLOBYTE(v169));
  }

LABEL_6:
  result = 0xFFFFFFFFLL;
LABEL_7:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t raven::AltitudeChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = *(*a2 + 2512);
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::AltitudeChecker::HandleEvent(raven::AltitudeChecker *this, const raven::AltitudeEvent *a2, raven::AltitudeEvent *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v57) = 12;
    LOBYTE(v52) = 4;
    v26 = (*(*a2 + 16))(a2, a2, a3);
    v45 = v27 + v26;
    cnprint::CNPrinter::Print(&v57, &v52, "t,%.3lf,AltitudeChecker, not configured", v28, v29, v30, v31, v32, SLOBYTE(v45));
    goto LABEL_20;
  }

  if ((*(a2 + 13) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 14);
  v5 = v4 < 0 || ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v5 && (v4 - 1) > 0xFFFFFFFFFFFFELL)
  {
    goto LABEL_20;
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  *(a3 + 40) = *(a2 + 40);
  *(a3 + 24) = v9;
  *(a3 + 8) = v8;
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  *(a3 + 104) = *(a2 + 104);
  *(a3 + 88) = v12;
  *(a3 + 72) = v11;
  *(a3 + 56) = v10;
  if (*(this + 9) != 1)
  {
    goto LABEL_25;
  }

  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
  if (result)
  {
    v14 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
    if (!v14)
    {
      goto LABEL_26;
    }

    if (!*(v14 + 1488))
    {
      goto LABEL_25;
    }

    v15 = *(a2 + 14);
    v16 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
    if (!v16 || (*&v65.f64[0] = v16[187], (v17 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6)) == 0) || (*&v65.f64[1] = v17[188], (v18 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6)) == 0))
    {
LABEL_26:
      sub_1D0C543A8("unordered_map::at: key not found");
    }

    v66 = v18[189];
    v63[0] = 0;
    v63[1] = 0;
    v64 = 0.0;
    if (cnnavigation::ECEFToLLA(&v65, 1, v63, 1, v62))
    {
      LOWORD(v57) = 12;
      LOBYTE(v52) = 4;
      v19 = (*(*a2 + 16))(a2);
      v44 = v20 + v19;
      cnprint::CNPrinter::Print(&v57, &v52, "t,%.3lf,WARNING: Altitude checker, conversion of current position from ECEF to LLA failed", v21, v22, v23, v24, v25, SLOBYTE(v44));
LABEL_20:
      result = 0xFFFFFFFFLL;
      goto LABEL_21;
    }

    v59 = 0x300000003;
    v61[0] = v62[0];
    v61[1] = v62[3];
    v61[6] = v62[2];
    v61[7] = v62[5];
    v61[3] = v62[1];
    v61[2] = v62[6];
    v58 = xmmword_1D0E76C10;
    v57 = &unk_1F4CD5DD0;
    v60 = v61;
    v61[4] = v62[4];
    v61[5] = v62[7];
    v61[8] = v62[8];
    v54 = 0x300000003;
    v53 = xmmword_1D0E76C10;
    v52 = &unk_1F4CD5DD0;
    v55 = &v56;
    v34 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA11E6);
    v35 = sub_1D0DF5384((v34 + 146), &v52);
    if (v36)
    {
      sub_1D0C1B688(&v57, &v52, v48);
      sub_1D0C1B708(&v57, v47);
      sub_1D0C1B688(v48, v47, v49);
      result = (((fabs(sqrt((*(a2 + 13) - v64) * (*(a2 + 13) - v64) / (v15 * v15 + *(v51 + 16 * v50 + 16)))) > *(this + 3)) | ~*(this + 8)) << 31 >> 31);
      goto LABEL_21;
    }

    v49[0] = 12;
    v48[0] = 2;
    v37 = (*(*a2 + 16))(a2, v35);
    v46 = v38 + v37;
    cnprint::CNPrinter::Print(v49, v48, "t,%.3lf,WARNING: Altitude checker, difference with current solution not checked, can't get position covariance", v39, v40, v41, v42, v43, SLOBYTE(v46));
LABEL_25:
    result = 0;
  }

LABEL_21:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

double raven::RavenIonosphereEstimatorInitArgs::Fill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, float64_t a19)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 48) = a9;
  *(a1 + 56) = a11;
  *(a1 + 64) = a10;
  *(a1 + 72) = a12;
  *(a1 + 80) = a17;
  *(a1 + 88) = a18;
  v24 = 0xA0000000ALL;
  v22 = &unk_1F4CE2180;
  *&v20.f64[1] = 0xA00000064;
  v23 = xmmword_1D0E84630;
  v25 = &v26;
  v20.f64[0] = a19;
  sub_1D0B8930C(a4, &v22, v20);
  *&result = sub_1D0B894B0(a1 + 96, &v22).n128_u64[0];
  return result;
}

void raven::RavenIonosphereEstimator::RavenIonosphereEstimator(raven::RavenIonosphereEstimator *this)
{
  *this = 0x3FF0000000000000;
  *(this + 2) = 0u;
  *(this + 4) = 0;
  *(this + 80) = 0;
  *(this + 248) = 0;
  *(this + 448) = 0;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  *(this + 57) = &unk_1F4CEF4D8;
  *(this + 29) = 0u;
  *(this + 480) = 0;
  *(this + 504) = 0;
  *(this + 488) = 0u;
  *(this + 528) = 0;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 69) = 0x7FF8000000000000;
  sub_1D0BAD0C8(this + 560);
  *(this + 404) = 0;
  *(this + 201) = 0u;
  *(this + 252) = 0u;
  *(this + 253) = 0u;
  *(this + 254) = 0u;
  *(this + 510) = 0;
  *(this + 515) = 0x10000000ALL;
  *(this + 512) = &unk_1F4CEAE48;
  *(this + 516) = this + 4136;
  *(this + 530) = 0xA0000000ALL;
  *(this + 527) = &unk_1F4CE2180;
  *(this + 531) = this + 4256;
  *(this + 635) = 0x10000000ALL;
  *(this + 632) = &unk_1F4CEAE48;
  *(this + 636) = this + 5096;
  *(this + 650) = 0x10000000ALL;
  *(this + 647) = &unk_1F4CEAE48;
  *(this + 651) = this + 5216;
  *(this + 665) = 0xA0000000ALL;
  *(this + 662) = &unk_1F4CE2180;
  *(this + 666) = this + 5336;
  *(this + 770) = 0x10000000ALL;
  *(this + 767) = &unk_1F4CEAE48;
  *(this + 771) = this + 6176;
  *(this + 784) = 0x100000000;
  *(this + 1570) = 0x7FFFFFFF;
  *(this + 393) = vdupq_n_s64(0x3E45798EE2308C3AuLL);
  *(this + 3152) = 0;
  *(this + 789) = 0x3FEE666666666666;
  *(this + 395) = 0u;
  *(this + 792) = 0x4197D78400000000;
  *(this + 782) = 0;
  *(this + 4104) = 0u;
  *(this + 6264) = 0;
  *(this + 264) = 0u;
  *(this + 5064) = 0u;
  *(this + 324) = 0u;
  *(this + 5304) = 0u;
  *(this + 384) = 0u;
  *(this + 809) = 0;
  *(this + 6440) = 0u;
  *(this + 6456) = 0u;
  *(this + 6408) = 0u;
  *(this + 6424) = 0u;
  *(this + 6376) = 0u;
  *(this + 6392) = 0u;
  *(this + 6344) = 0u;
  *(this + 6360) = 0u;
  *(this + 1567) = 1;
  *(this + 511) = &unk_1F4CED088;
  *(this + 813) = 0xA0000000ALL;
  *(this + 810) = &unk_1F4CE2180;
  *(this + 814) = this + 6520;
  *(this + 918) = 0x10000000ALL;
  *(this + 915) = &unk_1F4CEAE48;
  *(this + 919) = this + 7360;
  *(this + 933) = 0xA0000000ALL;
  *(this + 930) = &unk_1F4CE2180;
  *(this + 934) = this + 7480;
  *(this + 1035) = 0x100000000;
  *(this + 2072) = 0x7FFFFFFF;
  *(this + 1037) = 0x3E45798EE2308C3ALL;
  *(this + 1038) = 0x3E45798EE2308C3ALL;
  *(this + 4156) = 0;
  *(this + 1040) = 0x3FEE666666666666;
  *(this + 8328) = 0u;
  *(this + 1043) = 0x4197D78400000000;
  *(this + 522) = 0u;
  *(this + 4184) = 1;
  *(this + 6488) = 0u;
  *(this + 1047) = 0;
  *(this + 458) = 0u;
  *(this + 7448) = 0u;
  *(this + 1049) = 0x3FE0000000000000;
  *(this + 1050) = 0x3FE0000000000000;
  *(this + 2102) = 0;
  *(this + 1048) = &unk_1F4CE3930;
  __asm { FMOV            V0.2D, #0.5 }

  *(this + 526) = _Q0;
  *(this + 527) = xmmword_1D0E843D0;
  *(this + 1056) = 0x3FE0000000000000;
  *(this + 4228) = 0;
  *(this + 530) = 0u;
  *(this + 529) = 0u;
  *(this + 1062) = this + 8496;
  *(this + 1063) = this + 8496;
  *(this + 1064) = 0;
  sub_1D0BF162C(this + 8520);
  *(this + 1249) = 0x100000058;
  *(this + 1246) = &unk_1F4CECFB0;
  *(this + 9976) = xmmword_1D0EA1260;
  *(this + 1250) = this + 10008;
  *(this + 1298) = 0x100000058;
  *(this + 1295) = &unk_1F4CECFF8;
  *(this + 648) = xmmword_1D0EA1260;
  *(this + 1299) = this + 10400;
  sub_1D0BF1B4C(this + 11104);
}

void sub_1D0E13F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, _Unwind_Exception *exception_object)
{
  sub_1D0E18B14((v26 + 2192));
  *a21 = a20;
  sub_1D0E1A0D8(a22);
  sub_1D0D41E0C(a24);
  if (*(v25 + 448) == 1)
  {
    *a18 = &unk_1F4CEE030;
  }

  _Unwind_Resume(a1);
}

void raven::RavenIonosphereEstimator::Reset(raven::RavenIonosphereEstimator *this)
{
  LOWORD(v12) = 12;
  v14 = 2;
  v2 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 32, "Resetting estimator");
  if (*(this + 4063) >= 0)
  {
    LOBYTE(v8) = v2;
  }

  else
  {
    v8 = *(this + 505);
  }

  cnprint::CNPrinter::Print(&v12, &v14, "%s", v3, v4, v5, v6, v7, v8);
  v12 = 0x3FE0000000000000;
  sub_1D0D87CD8(this + 8392, &v12);
  sub_1D0E15A54(this + 8456);
  *(this + 9) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  if (*(this + 448) == 1)
  {
    *(this + 31) = &unk_1F4CEE030;
    *(this + 448) = 0;
  }

  if (*(this + 80) == 1)
  {
    *(this + 80) = 0;
  }

  memset(v13, 0, 88);
  v12 = &unk_1F4CEF4D8;
  *&v13[88] = 0x7FF8000000000000;
  *(this + 29) = 0uLL;
  *(this + 30) = 0uLL;
  v9 = *&v13[32];
  v10 = *&v13[48];
  v11 = *&v13[80];
  *(this + 33) = *&v13[64];
  *(this + 34) = v11;
  *(this + 31) = v9;
  *(this + 32) = v10;
  sub_1D0BAD0C8(&v12);
  memcpy(this + 568, v13, 0xA51uLL);
  bzero(this + 3216, 0x330uLL);
}

uint64_t sub_1D0E143F8(uint64_t a1)
{
  *a1 = &unk_1F4CED088;
  *(a1 + 3352) = &unk_1F4CD5E28;
  *(a1 + 3232) = &unk_1F4CD5E28;
  *(a1 + 2392) = &unk_1F4CD5E28;
  return sub_1D0E1A158(a1);
}

uint64_t raven::RavenIonosphereEstimator::Configure(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    LOWORD(v44) = 12;
    LOBYTE(v39) = 2;
    v3 = cnprint::CNLogFormatter::FormatWarning((a1 + 4040), "Configure() called more than once");
  }

  else
  {
    v10 = *a2;
    if (*a2)
    {
      if (*(v10 + 33))
      {
        v11 = *(v10 + 114);
        v12 = *(v10 + 115);
        *(a1 + 8280) = 0x100000000;
        *(a1 + 8288) = 0x7FFFFFFF;
        *(a1 + 8296) = 0x3E45798EE2308C3ALL;
        *(a1 + 8304) = 0x3E45798EE2308C3ALL;
        *(a1 + 8312) = 257;
        *(a1 + 8328) = 0u;
        *(a1 + 8320) = v11;
        *(a1 + 8344) = v12;
        *(a1 + 8352) = 0u;
        *(a1 + 8368) = 1;
        *(a1 + 8376) = 0;
        *(a1 + 6272) = 0x100000000;
        *(a1 + 6280) = 0x7FFFFFFF;
        *(a1 + 6288) = vdupq_n_s64(0x3E45798EE2308C3AuLL);
        *(a1 + 6304) = 257;
        *(a1 + 6312) = v11;
        *(a1 + 6320) = 0u;
        *(a1 + 6336) = v12;
        *(a1 + 6344) = 0u;
        *(a1 + 6264) = 0;
        v41 = 0x10000000ALL;
        v39 = &unk_1F4CEAE48;
        v42 = v43;
        v40 = xmmword_1D0E87BE0;
        memset(v43, 0, sizeof(v43));
        sub_1D0B94CA4(&v44, &v39);
        v45 = xmmword_1D0E87BE0;
        sub_1D0B894B0(a1 + 4096, &v44);
        v46 = 0xA0000000ALL;
        v44 = &unk_1F4CE2180;
        v47 = v48;
        v45 = xmmword_1D0E84630;
        bzero(v48, 0x320uLL);
        sub_1D0B894B0(a1 + 4216, &v44);
        v46 = 0x10000000ALL;
        v45 = xmmword_1D0E87BE0;
        v44 = &unk_1F4CEAE48;
        v47 = v48;
        sub_1D0B89390(a1 + 4216, a1 + 4096, &v44);
        sub_1D0B894B0(a1 + 5056, &v44);
        sub_1D0B894B0(a1 + 5176, a1 + 4096);
        sub_1D0B894B0(a1 + 5296, a1 + 4216);
        sub_1D0B894B0(a1 + 6136, a1 + 5056);
        *(a1 + 6256) = 0x3FF0000000000000;
        *(a1 + 6264) = 0;
        *(a1 + 6268) = 1;
        v44 = 0x3FE0000000000000;
        v13 = sub_1D0D87CD8(a1 + 8392, &v44);
        v14 = *(v10 + 385);
        if (v14 >= 0.0 && v14 <= 1.0 && (v15 = *(v10 + 386), v15 >= 0.0) && v15 <= 1.0 && (v16 = *(v10 + 384), v16 >= 0.0))
        {
          *(a1 + 8432) = v16;
          *(a1 + 8416) = *(v10 + 385);
          *(a1 + 8424) = *(v10 + 386);
          v19 = 1.0 - fabs(cnstatistics::InverseNormal(v13, (1.0 - *(v10 + 114)) * 0.5, 0.0, 1.0)) / *(v10 + 387);
          v20 = v19 >= 0.0 && v19 <= 1.0;
          if (v20 && (v21 = 1.0 - *(v10 + 114), v21 >= 0.0) && v21 <= 1.0)
          {
            v22 = 0;
            *(a1 + 8440) = v19;
            *(a1 + 8448) = v21;
            do
            {
              v23 = *(v10 + v22 + 2824);
              v24 = (v23 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
              v25 = ((v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
              if (v23 >= 0)
              {
                v25 = 0;
                v24 = 0;
              }

              v26 = v23 & 0x7FFFFFFFFFFFFFFFLL;
              if (!v26)
              {
                v24 = 1;
              }

              v27 = v26 <= 0x7FF0000000000000;
              v28 = v26 == 0x7FF0000000000000 || v24;
              if (!v27)
              {
                v28 = 1;
              }

              if ((v28 | v25) == 1)
              {
                LOWORD(v44) = 12;
                LOBYTE(v39) = 4;
                v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed, non-positive correlation time constant specified.");
                goto LABEL_13;
              }

              v22 += 8;
            }

            while (v22 != 80);
            v29 = *a2;
            v30 = *(*a2 + 3104);
            if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v30 <= 90.0 && v30 >= -10.0)
            {
              result = 0;
              *a1 = v30;
              *(a1 + 88) = v29[161];
              v32 = v29[162];
              v33 = v29[163];
              v34 = v29[164];
              *(a1 + 152) = v29[165];
              *(a1 + 136) = v34;
              *(a1 + 120) = v33;
              *(a1 + 104) = v32;
              v35 = (*a2 + 2904);
              v36 = *(*a2 + 2920);
              v37 = *(*a2 + 2936);
              v38 = *(*a2 + 2952);
              *(a1 + 232) = *(*a2 + 2968);
              *(a1 + 216) = v38;
              *(a1 + 200) = v37;
              *(a1 + 184) = v36;
              *(a1 + 168) = *v35;
              *(a1 + 4032) = *a2;
              *(a1 + 8) = 1;
              return result;
            }

            LOWORD(v44) = 12;
            LOBYTE(v39) = 4;
            v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed, invalid satellite elevation mask specified,.%.2lf");
          }

          else
          {
            LOWORD(v44) = 12;
            LOBYTE(v39) = 4;
            v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed to set consistency monitor update parameters");
          }
        }

        else
        {
          LOWORD(v44) = 12;
          LOBYTE(v39) = 4;
          v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed to set consistency monitor prediction parameters");
        }
      }

      else
      {
        LOWORD(v44) = 12;
        LOBYTE(v39) = 4;
        v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() called with uninitialized raven parameters");
      }
    }

    else
    {
      LOWORD(v44) = 12;
      LOBYTE(v39) = 4;
      v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() called with null raven parameters");
    }
  }

LABEL_13:
  if (*(a1 + 4063) >= 0)
  {
    LOBYTE(v17) = v3;
  }

  else
  {
    v17 = *(a1 + 4040);
  }

  cnprint::CNPrinter::Print(&v44, &v39, "%s", v4, v5, v6, v7, v8, v17);
  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenIonosphereEstimator::UpdateEstimatorParametersViaPolyfitToKlobucharModel(raven::RavenIonosphereEstimator *this)
{
  v116 = *MEMORY[0x1E69E9840];
  if (!*(this + 2024) || *(this + 448) != 1 || !*(this + 440))
  {
LABEL_19:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v108 = 0uLL;
  if (*(this + 632))
  {
    v2 = 640;
  }

  else
  {
    if (*(this + 608) != 1)
    {
      goto LABEL_9;
    }

    v2 = 616;
  }

  v108 = *(this + v2);
LABEL_9:
  v101 = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v3 = cnnavigation::TAITime::ToGPSTime(&v108, &v101);
  v5 = v4;
  v6 = v4;
  if (!cnprint::CNPrinter::GetLogLevel(v3))
  {
    v101 = 12;
    LOBYTE(v109[0]) = 0;
    v7 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),gps_week, gps_secofweek,%d,%.3lf", v3, v5);
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v13) = v7;
    }

    else
    {
      v13 = *v7;
    }

    cnprint::CNPrinter::Print(&v101, v109, "%s", v8, v9, v10, v11, v12, v13);
  }

  cnnavigation::KlobucharIonosphereModel::KlobucharIonosphereModel(&v101, (this + 368));
  v114 = *(this + 127);
  v115 = *(this + 256);
  if (cnnavigation::ECEFToLLA(&v114, 1, v113, 0, v109))
  {
    LOWORD(v109[0]) = 12;
    LOBYTE(__src) = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),conversion of receiver position from ECEF to LLA failed");
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v20) = v14;
    }

    else
    {
      v20 = *v14;
    }

    cnprint::CNPrinter::Print(v109, &__src, "%s", v15, v16, v17, v18, v19, v20);
    goto LABEL_19;
  }

  __src = 0;
  v99 = 0;
  v100 = 0;
  __p = 0;
  v96 = 0;
  v97 = 0;
  if ((atomic_load_explicit(&qword_1EE054C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C28))
  {
    dword_1EE054C20 = 7;
    __cxa_guard_release(&qword_1EE054C28);
  }

  if ((atomic_load_explicit(&qword_1EE054C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C30))
  {
    dword_1EE054C24 = (dword_1EE054C20 - 1) / 2;
    __cxa_guard_release(&qword_1EE054C30);
  }

  v24 = dword_1EE054C24;
  if (dword_1EE054C24 < 0)
  {
LABEL_59:
    v63 = sub_1D0DEA260(v109, 6uLL);
    raven::RavenIonosphereEstimator::FitAnchorPointsToPoly(v63, &__src, &__p, v109);
    if (cnprint::CNPrinter::GetLogLevel(v64) <= 1)
    {
      LOWORD(v112[0]) = 12;
      LOBYTE(v111[0]) = 1;
      v65 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator,poly[0],%.3lf,poly[1],%.3lf,poly[2],%.3lf,poly[3],%.3lf,poly[4],%.3lf,poly[5],%.3lf", *v109[0], *(v109[0] + 8), *(v109[0] + 16), *(v109[0] + 24), *(v109[0] + 32), *(v109[0] + 40));
      if (*(this + 4063) >= 0)
      {
        LOBYTE(v71) = v65;
      }

      else
      {
        v71 = *(this + 505);
      }

      cnprint::CNPrinter::Print(v112, v111, "%s", v66, v67, v68, v69, v70, v71);
    }

    v72 = v109[0];
    *(this + 12) = *v109[0];
    *(this + 13) = v72[1];
    *(this + 14) = v72[2];
    *(this + 15) = v72[3];
    *(this + 16) = v72[4];
    *(this + 17) = v72[5];
    *(this + 22) = *v72;
    *(this + 23) = v72[1];
    *(this + 24) = v72[2];
    *(this + 25) = v72[3];
    *(this + 26) = v72[4];
    *(this + 27) = v72[5];
    v73 = *(this + 80);
    *(this + 4) = *(this + 29);
    if ((v73 & 1) == 0)
    {
      *(this + 80) = 1;
    }

    v109[1] = v72;
    operator delete(v72);
    v21 = 0;
  }

  else
  {
    v25 = -dword_1EE054C24;
    v26 = v113[1];
    v92 = v113[0];
    v27 = v113[2];
    while (v24 < 0)
    {
LABEL_58:
      v62 = v25++ < v24;
      if (!v62)
      {
        goto LABEL_59;
      }
    }

    v28 = -v24;
    while (1)
    {
      v29 = v25 * 0.261799388 / v24;
      v30 = v28 * 0.261799388 / v24;
      v112[0] = v29 + v92;
      v112[1] = v30 + v26;
      v112[2] = v27;
      v31 = v99;
      if (v99 >= v100)
      {
        v33 = __src;
        v34 = v99 - __src;
        v35 = (v99 - __src) >> 4;
        v36 = v35 + 1;
        if ((v35 + 1) >> 60)
        {
          sub_1D0C5663C();
        }

        v37 = v100 - __src;
        if ((v100 - __src) >> 3 > v36)
        {
          v36 = v37 >> 3;
        }

        v38 = v37 >= 0x7FFFFFFFFFFFFFF0;
        v39 = 0xFFFFFFFFFFFFFFFLL;
        if (!v38)
        {
          v39 = v36;
        }

        if (v39)
        {
          sub_1D0BC40DC(&__src, v39);
        }

        v40 = (v99 - __src) >> 4;
        v41 = (16 * v35);
        *v41 = v29;
        v41[1] = v30;
        v32 = 16 * v35 + 16;
        v42 = (16 * v35 - 16 * v40);
        memcpy(&v41[-2 * v40], v33, v34);
        v43 = __src;
        __src = v42;
        v99 = v32;
        v100 = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v99 = v29;
        v31[1] = v30;
        v32 = (v31 + 2);
      }

      v99 = v32;
      if (cnnavigation::LLAToECEF(v112, 1, v111, 0, v109))
      {
        LOWORD(v109[0]) = 12;
        LOBYTE(v110.f64[0]) = 4;
        cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),LLAToECEF failed");
        if (*(this + 4063) >= 0)
        {
          LOBYTE(v79) = this - 56;
        }

        else
        {
          v79 = *(this + 505);
        }

        cnprint::CNPrinter::Print(v109, &v110, "%s", v74, v75, v76, v77, v78, v79);
        goto LABEL_80;
      }

      if (cnnavigation::ENUToECEF(xmmword_1D0EA1410, 1, 0, v111, 0, &v110))
      {
        LOWORD(v109[0]) = 12;
        LOBYTE(v94) = 4;
        cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),ENUToECEF failed");
        if (*(this + 4063) >= 0)
        {
          LOBYTE(v85) = this - 56;
        }

        else
        {
          v85 = *(this + 505);
        }

        cnprint::CNPrinter::Print(v109, &v94, "%s", v80, v81, v82, v83, v84, v85);
        goto LABEL_80;
      }

      v94 = 0.0;
      IonosphericDelay = cnnavigation::KlobucharIonosphereModel::GetIonosphericDelay(&v101, v6, 1575420000.0, v44, v111, &v110, &v94, 0, v109);
      if (IonosphericDelay)
      {
        break;
      }

      v46 = v94 * 1845950630.0;
      if (cnprint::CNPrinter::GetLogLevel(IonosphericDelay) <= 1)
      {
        LOWORD(v109[0]) = 12;
        v93 = 1;
        cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator, delta_lat_rad,%.3lf,delta_on_rad,%.3lf,vtec_tecu_anchor,%.3lf", v29, v30, v46);
        if (*(this + 4063) >= 0)
        {
          LOBYTE(v52) = this - 56;
        }

        else
        {
          v52 = *(this + 505);
        }

        cnprint::CNPrinter::Print(v109, &v93, "%s", v47, v48, v49, v50, v51, v52);
      }

      v53 = v96;
      if (v96 >= v97)
      {
        v55 = __p;
        v56 = v96 - __p;
        v57 = (v96 - __p) >> 3;
        v58 = v57 + 1;
        if ((v57 + 1) >> 61)
        {
          sub_1D0C5663C();
        }

        v59 = v97 - __p;
        if ((v97 - __p) >> 2 > v58)
        {
          v58 = v59 >> 2;
        }

        v38 = v59 >= 0x7FFFFFFFFFFFFFF8;
        v60 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v38)
        {
          v60 = v58;
        }

        if (v60)
        {
          sub_1D0C3994C(&__p, v60);
        }

        *(8 * v57) = v46;
        v54 = 8 * v57 + 8;
        memcpy(0, v55, v56);
        v61 = __p;
        __p = 0;
        v96 = v54;
        v97 = 0;
        if (v61)
        {
          operator delete(v61);
        }
      }

      else
      {
        *v96 = v46;
        v54 = (v53 + 1);
      }

      v96 = v54;
      v24 = dword_1EE054C24;
      v62 = v28++ < dword_1EE054C24;
      if (!v62)
      {
        goto LABEL_58;
      }
    }

    LOWORD(v109[0]) = 12;
    v93 = 4;
    cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),GetIonosphericDelay failed");
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v91) = this - 56;
    }

    else
    {
      v91 = *(this + 505);
    }

    cnprint::CNPrinter::Print(v109, &v93, "%s", v86, v87, v88, v89, v90, v91);
    if (*(this + 448) == 1)
    {
      *(this + 31) = &unk_1F4CEE030;
      *(this + 448) = 0;
    }

LABEL_80:
    v21 = 0xFFFFFFFFLL;
  }

  if (__p)
  {
    v96 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v99 = __src;
    operator delete(__src);
  }

LABEL_20:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1D0E151C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenIonosphereEstimator::FitAnchorPointsToPoly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = v8[1] - *v8;
  v11 = v10 >> 3;
  v65 = 0x100000031;
  v60 = &unk_1F4CE30B0;
  v66 = v67;
  v61 = v10 >> 3;
  v62 = 1;
  v63 = v61;
  v64 = v61;
  if (v61 > 3)
  {
    v12 = &v67[v10 & 0x3FFFFFFF8];
    bzero(v67, (v10 + 0x7FFFFFFF8) & 0x7FFFFFFF0);
    *(v12 - 2) = 0;
    *(v12 - 1) = 0;
  }

  else if (v11 >= 1)
  {
    bzero(v67, v10 & 0x3FFFFFFF8);
  }

  v57 = 0x600000031;
  v52 = &unk_1F4CEDEB0;
  v13 = v59;
  v58 = v59;
  v14 = 6 * v11;
  v53 = v10 >> 3;
  v54 = 6;
  v55 = 6 * v11;
  v56 = v53;
  if (6 * v11 > 3)
  {
    v20 = &v59[v14];
    bzero(v59, 16 * ((v14 - 1) >> 1));
    *(v20 - 2) = 0;
    *(v20 - 1) = 0;
    v13 = v58;
    if (v11)
    {
LABEL_9:
      v15 = 0;
      v16 = v66;
      v17 = (*v7 + 8);
      do
      {
        *&v16[8 * v15] = *(v9 + 8 * v15);
        v13[v15] = 0x3FF0000000000000;
        v13[v11 + v15] = *(v17 - 1);
        v13[(2 * (v10 >> 3) + v15)] = *v17;
        *&v13[3 * v11 + v15] = *(v17 - 1) * *(v17 - 1);
        *&v13[(4 * (v10 >> 3) + v15)] = *(v17 - 1) * 0.5 * *v17;
        v18 = *v17;
        v17 += 2;
        *&v13[5 * v11 + v15++] = v18 * v18;
      }

      while (v11 != v15);
      v19 = v56;
      v13 = v58;
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 >= 1)
    {
      bzero(v59, 8 * (6 * v11));
    }

    if (v11)
    {
      goto LABEL_9;
    }
  }

  v19 = 0;
LABEL_14:
  v21 = 0;
  v22 = 0;
  v49 = 49;
  v44 = &unk_1F4CEDEF8;
  v50 = v51;
  v45 = 6;
  v46 = v10 >> 3;
  v47 = 6 * v11;
  v48 = 0x600000006;
  do
  {
    v23 = v21;
    v24 = v22;
    v25 = v10 >> 3;
    if (v11)
    {
      do
      {
        v51[v24] = v13[v23];
        v24 += 6;
        ++v23;
        LODWORD(v25) = v25 - 1;
      }

      while (v25);
    }

    ++v22;
    v21 += v19;
  }

  while (v22 != 6);
  v36 = 0x600000006;
  v34 = &unk_1F4CDF278;
  v35 = xmmword_1D0E7F320;
  v37 = &v38;
  sub_1D0B89390(&v44, &v52, &v34);
  v41 = 0x600000006;
  v39 = &unk_1F4CDF278;
  v40 = xmmword_1D0E7F320;
  v42 = &v43;
  v31 = 0x100000006;
  v29 = &unk_1F4CE1400;
  v30 = xmmword_1D0E84530;
  v32 = v33;
  v70 = 0x100000018;
  v69 = xmmword_1D0E84770;
  v68 = &unk_1F4CE2408;
  v71 = v72;
  sub_1D0B9F868(&v34, &v29, &v68, &v39);
  v31 = 0x100000006;
  v29 = &unk_1F4CE0BF8;
  v30 = xmmword_1D0E84530;
  v32 = v33;
  sub_1D0B89390(&v44, &v60, &v29);
  v70 = 0x100000006;
  v69 = xmmword_1D0E84530;
  v68 = &unk_1F4CE0BF8;
  v71 = v72;
  sub_1D0B89390(&v39, &v29, &v68);
  v5[1] = *v5;
  sub_1D0C4D030(v5, 6uLL);
  v26 = 0;
  v27 = v71;
  v28 = *v5;
  do
  {
    *(v28 + v26) = *&v27[v26];
    v26 += 8;
  }

  while (v26 != 48);
}

uint64_t sub_1D0E156DC(uint64_t a1)
{
  *(a1 + 24) = 0xA0000000ALL;
  *a1 = &unk_1F4CE2180;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84630;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t raven::RavenIonosphereEstimator::Initialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v45 = v5;
  v46 = v4;
  v47 = v2;
  v48 = v3;
  if (*(a1 + 9) == 1)
  {
    v30[0] = 12;
    LOBYTE(v40) = 4;
    v8 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, a1 + 32, "Attempting to initialize an already initialized estimator");
    if (*(a1 + 4063) >= 0)
    {
      LOBYTE(v14) = v8;
    }

    else
    {
      v14 = *(a1 + 4040);
    }

    cnprint::CNPrinter::Print(v30, &v40, "%s", v9, v10, v11, v12, v13, v14);
  }

  *(a1 + 16) = *a2;
  *(a1 + 32) = *a2;
  *(a1 + 48) = *a2;
  sub_1D0E15A54(a1 + 8456);
  sub_1D0BADC18(a1 + 8456, a2, v15, v16, v17, v18, v19, v20);
  bzero((a1 + 3216), 0x330uLL);
  v33 = 0x10000000ALL;
  v31 = &unk_1F4CEAE48;
  v34 = v35;
  v32 = xmmword_1D0E87BE0;
  v21 = *(a2 + 32);
  v35[0] = *(a2 + 16);
  v35[1] = v21;
  v36 = *(a2 + 48);
  v22 = *(a2 + 72);
  v37 = vextq_s8(*(a2 + 56), *(a2 + 56), 8uLL);
  v38 = v22;
  v39 = *(a2 + 88);
  sub_1D0E1A968(v30, a2 + 96);
  v27 = 0x10000000ALL;
  v25 = &unk_1F4CEAE48;
  v26 = xmmword_1D0E87BE0;
  v28 = &v29;
  sub_1D0B89390(v30, &v31, &v25);
  v23 = DWORD2(v32);
  sub_1D0B94CA4(&v40, &v31);
  v41 = v23;
  v42 = 1;
  v43 = v23;
  v44 = v23;
  sub_1D0B894B0(a1 + 4096, &v40);
  sub_1D0B894B0(a1 + 4216, v30);
  sub_1D0B94CA4(&v40, &v25);
  v41 = v23;
  v42 = 1;
  v43 = v23;
  v44 = v23;
  sub_1D0B894B0(a1 + 5056, &v40);
  sub_1D0B894B0(a1 + 5176, a1 + 4096);
  sub_1D0B894B0(a1 + 5296, a1 + 4216);
  sub_1D0B894B0(a1 + 6136, a1 + 5056);
  *(a1 + 6256) = 0x3FF0000000000000;
  *(a1 + 6264) = 0;
  *(a1 + 6268) = 1;
  v40 = 0.5;
  result = sub_1D0D87CD8(a1 + 8392, &v40);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 9) = 1;
  return result;
}

double raven::RavenIonosphereEstimator::ResetMeasurementCounts(raven::RavenIonosphereEstimator *this)
{
  result = 0.0;
  *(this + 3620) = 0u;
  *(this + 3592) = 0u;
  *(this + 3608) = 0u;
  *(this + 3560) = 0u;
  *(this + 3576) = 0u;
  *(this + 3528) = 0u;
  *(this + 3544) = 0u;
  *(this + 3496) = 0u;
  *(this + 3512) = 0u;
  *(this + 3464) = 0u;
  *(this + 3480) = 0u;
  *(this + 3432) = 0u;
  *(this + 3448) = 0u;
  *(this + 3400) = 0u;
  *(this + 3416) = 0u;
  *(this + 3368) = 0u;
  *(this + 3384) = 0u;
  *(this + 3336) = 0u;
  *(this + 3352) = 0u;
  *(this + 3304) = 0u;
  *(this + 3320) = 0u;
  *(this + 3272) = 0u;
  *(this + 3288) = 0u;
  *(this + 3240) = 0u;
  *(this + 3256) = 0u;
  return result;
}

uint64_t raven::RavenIonosphereEstimator::IsObservable(raven::RavenIonosphereEstimator *this)
{
  if (*(this + 9))
  {
    return sub_1D0BF656C(this + 4088);
  }

  else
  {
    return 0;
  }
}

double sub_1D0E159F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000000ALL;
  *a2 = &unk_1F4CEAE48;
  *(a2 + 8) = xmmword_1D0E87BE0;
  *(a2 + 32) = a2 + 40;
  v2 = 1088;
  if (!*(a1 + 2180))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0E15A54(uint64_t a1)
{
  *a1 = 0;
  sub_1D0BAAF58((a1 + 40));
  *(a1 + 3184) = 0;
  *(a1 + 12704) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 2656) = 0u;
  *(a1 + 2704) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3200) = 0u;
  *(a1 + 3944) = 0u;
  *(a1 + 4688) = 0u;
  *(a1 + 5432) = 0u;
  *(a1 + 5648) = 0u;
  *(a1 + 6040) = 0u;
  *(a1 + 8408) = 0u;
  *(a1 + 0x2000) = 0u;
  *(a1 + 10560) = 0u;
  *(a1 + 12720) = 0u;
  *(a1 + 13112) = 0u;
  return result;
}

uint64_t sub_1D0E15AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v264 = v6;
  v266 = v5;
  v271 = v7;
  v9 = v8;
  v10 = v4;
  if (!*(v4 + 2180))
  {
    sub_1D0B894B0(v4 + 1088, v4 + 8);
    sub_1D0B894B0(v10 + 1208, v10 + 128);
    sub_1D0B894B0(v10 + 2048, v10 + 968);
  }

  v11 = *(v9 + 8);
  if ((v11 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v12 = *(v10 + 1096);
  v13 = *(v10 + 1100);
  v277 = 0x10000000ALL;
  v272 = &unk_1F4CEAE48;
  v278 = v279;
  v273 = v11;
  v274 = 1;
  v275 = v11;
  v276 = v11;
  if (v11 > 3)
  {
    v14 = &v279[v11];
    bzero(v279, 16 * ((v11 - 1) >> 1));
    *(v14 - 2) = 0;
    *(v14 - 1) = 0;
  }

  else if (v11)
  {
    bzero(v279, 8 * v11);
  }

  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (v12 <= v13)
  {
    LODWORD(v17) = v13;
  }

  else
  {
    LODWORD(v17) = v12;
  }

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v17;
  }

  v270 = v17;
  v18 = *(v266 + 8);
  v19 = *(v266 + 12);
  if (v18 <= v19)
  {
    v20 = *(v266 + 12);
  }

  else
  {
    v20 = *(v266 + 8);
  }

  if (v19)
  {
    v21 = v18 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v23 = *(v10 + 4256);
  v261 = *(v10 + 4281);
  sub_1D0BEB970(&v316, v271, 0);
  *&v377[20] = 1;
  v378 = v379;
  v24 = DWORD1(v317);
  *v377 = 1;
  *&v377[4] = DWORD1(v317);
  *&v377[8] = DWORD1(v317);
  *&v377[12] = 0x100000001;
  if (DWORD1(v317))
  {
    v25 = 0;
    v26 = v319;
    v27 = v317;
    v28 = v317 - 1;
    v29 = 1;
    do
    {
      v30 = v26[v27 * v25];
      v31 = v29;
      v32 = v28;
      if (v27 >= 2)
      {
        do
        {
          v30 += v26[v31++];
          --v32;
        }

        while (v32);
      }

      v379[v25++] = v30;
      v29 += v27;
    }

    while (v25 != v24);
  }

  sub_1D0BEB970(&v316, v271, 1);
  *&v377[20] = 1;
  v378 = v379;
  v33 = DWORD1(v317);
  *v377 = 1;
  *&v377[4] = DWORD1(v317);
  *&v377[8] = DWORD1(v317);
  *&v377[12] = 0x100000001;
  if (DWORD1(v317))
  {
    v34 = 0;
    v35 = v319;
    v36 = v317;
    v37 = v317 - 1;
    v38 = 1;
    do
    {
      v39 = v35[v36 * v34];
      v40 = v38;
      v41 = v37;
      if (v36 >= 2)
      {
        do
        {
          v39 += v35[v40++];
          --v41;
        }

        while (v41);
      }

      v379[v34++] = v39;
      v38 += v36;
    }

    while (v34 != v33);
  }

  if (v16)
  {
    *&v377[16] = 0x10000000ALL;
    v376 = &unk_1F4CEAE48;
    v378 = v379;
    *v377 = xmmword_1D0E7F490;
    sub_1D0B894B0(v10 + 1088, &v376);
  }

  v42 = v270;
  if (!*(v10 + 1216) || !*(v10 + 1220))
  {
    if ((v270 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    *&v377[16] = 0xA0000000ALL;
    v376 = &unk_1F4CE2180;
    v378 = v379;
    v43 = v270 * v270;
    *v377 = v270;
    *&v377[4] = v270;
    *&v377[8] = v270 * v270;
    *&v377[12] = v270;
    if (v270 * v270 > 3)
    {
      v44 = &v379[2 * v43];
      bzero(v379, 16 * ((v43 - 1) >> 1));
      *(v44 - 2) = 0;
      *(v44 - 1) = 0;
    }

    else if (v43 >= 1)
    {
      bzero(v379, 8 * (v270 * v270));
    }

    sub_1D0B894B0(v10 + 1208, &v376);
    v42 = v270;
  }

  if (!*(v10 + 2056) || !*(v10 + 2060))
  {
    *&v377[16] = 0x10000000ALL;
    *v377 = xmmword_1D0E87BE0;
    v376 = &unk_1F4CEAE48;
    v378 = v379;
    sub_1D0B89390(v10 + 1208, v10 + 1088, &v376);
    sub_1D0B894B0(v10 + 2048, &v376);
    v42 = v270;
  }

  if (v42 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *&v377[16] = 0xA0000000ALL;
  v376 = &unk_1F4CE2180;
  v378 = v379;
  v45 = v270 * v11;
  *v377 = v11;
  *&v377[4] = v270;
  *&v377[8] = v270 * v11;
  *&v377[12] = v11;
  v260 = v270 * v11;
  if (v270 * v11 > 3)
  {
    v46 = &v379[2 * v45];
    bzero(v379, 16 * ((v45 - 1) >> 1));
    *(v46 - 2) = 0;
    *(v46 - 1) = 0;
  }

  else if (v45 >= 1)
  {
    bzero(v379, 8 * (v270 * v11));
  }

  sub_1D0B894B0(v10 + 2392, &v376);
  *&v377[16] = 0x10000000ALL;
  v376 = &unk_1F4CEAE48;
  v378 = v379;
  *v377 = v11;
  *&v377[4] = 1;
  *&v377[8] = v11;
  *&v377[12] = v11;
  if (v11 > 3)
  {
    v47 = &v379[2 * v11];
    bzero(v379, 16 * ((v11 - 1) >> 1));
    *(v47 - 2) = 0;
    *(v47 - 1) = 0;
  }

  else if (v11)
  {
    bzero(v379, 8 * v11);
  }

  sub_1D0B894B0(v10 + 3232, &v376);
  sub_1D0B894B0(v10 + 3352, v9);
  v369 = 0x100000001;
  *(v10 + 2180) = 1;
  *(v10 + 16) = v270;
  *(v10 + 20) = 1;
  *(v10 + 24) = v270;
  *(v10 + 28) = v270;
  v370 = 0;
  v368 = 0u;
  v367 = &unk_1F4CEDB60;
  v373 = 0x10000000ALL;
  v372 = xmmword_1D0E87BE0;
  v371 = &unk_1F4CEAE48;
  v374 = &v375;
  if ((v22 & 0x80000000) != 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *&v368 = v22 | 0x100000000;
  DWORD2(v368) = v22;
  HIDWORD(v368) = v22;
  v370 = &v371;
  sub_1D0E1E8C8(&v365, v22);
  sub_1D0E1E8C8(&v363, v22);
  v360 = 0x10000000ALL;
  v359 = xmmword_1D0E87BE0;
  v358 = &unk_1F4CED1E8;
  v361 = &v362;
  v355 = 0x10000000ALL;
  v354 = xmmword_1D0E87BE0;
  v353 = &unk_1F4CED1E8;
  v356 = &v357;
  v262 = v10;
  v269 = v22;
  if (v22)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = *(v271 + 32);
    v52 = 1;
    v257 = vdupq_n_s64(4uLL);
    do
    {
      v53 = *(v51 + 4 * v48);
      v282 = 0xA00000001;
      v280 = &unk_1F4CED418;
      v283 = v284;
      if (v53 == 1)
      {
        v54 = 0;
        *&v55 = 0x100000001;
        *(&v55 + 1) = 0x100000001;
        v281 = v55;
        v284[0] = 0;
        v56 = 1;
        LODWORD(v53) = 1;
      }

      else if (v53 <= 0)
      {
        v56 = 0;
        LODWORD(v53) = 0;
        v281 = 0uLL;
        v54 = 1;
      }

      else
      {
        v57 = 0;
        LODWORD(v281) = 1;
        DWORD1(v281) = v53;
        *(&v281 + 1) = v53 | 0x100000000;
        v58 = v285;
        v59 = xmmword_1D0E7DD30;
        v60 = xmmword_1D0E84440;
        v61 = vdupq_n_s64(v53 - 1);
        do
        {
          v62 = vmovn_s64(vcgeq_u64(v61, v59));
          if (vuzp1_s16(v62, *v59.i8).u8[0])
          {
            *(v58 - 3) = v57;
          }

          if (vuzp1_s16(v62, *&v59).i8[2])
          {
            *(v58 - 2) = v57 + 1;
          }

          if (vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v61, *&v60))).i32[1])
          {
            *(v58 - 1) = v57 + 2;
            *v58 = v57 + 3;
          }

          v57 += 4;
          v63 = vdupq_n_s64(4uLL);
          v60 = vaddq_s64(v60, v63);
          v59 = vaddq_s64(v59, v63);
          v58 += 4;
        }

        while (((v53 + 3) & 0xFFFFFFFC) != v57);
        v54 = 0;
        v56 = 1;
      }

      v318 = 0x10000000ALL;
      v316 = &unk_1F4CED1E8;
      v319 = v320;
      *&v317 = __PAIR64__(v56, v53);
      DWORD2(v317) = v53 * v56;
      HIDWORD(v317) = v53;
      if (v53)
      {
        v64 = 0;
        v65 = 0;
        do
        {
          if ((v54 & 1) == 0)
          {
            v66 = 0;
            do
            {
              v320[v65 + HIDWORD(v317) * v66] = v284[v64 + v66];
              ++v66;
            }

            while (v56 != v66);
          }

          ++v65;
          v64 += v56;
        }

        while (v65 != v53);
        v67 = v317;
        v56 = DWORD1(v317);
      }

      else
      {
        v67 = 0;
      }

      *&v377[16] = 0x10000000ALL;
      v376 = &unk_1F4CED1E8;
      v378 = v379;
      *v377 = v67;
      *&v377[4] = v56;
      v68 = (v67 * v56);
      *&v377[8] = v68;
      *&v377[12] = v67;
      if (v68 >= 1)
      {
        v69 = v320;
        v70 = v379;
        do
        {
          v71 = *v69++;
          *v70++ = v71 + v50;
          --v68;
        }

        while (v68);
      }

      sub_1D0B9F5D4(&v358, &v376);
      v72 = *(*(v271 + 32) + 4 * (*(v271 + 20) + v48));
      v282 = 0xA00000001;
      v280 = &unk_1F4CED418;
      v283 = v284;
      if (v72 == 1)
      {
        v73 = 0;
        *&v74 = 0x100000001;
        *(&v74 + 1) = 0x100000001;
        v281 = v74;
        v284[0] = 0;
        v75 = 1;
        LODWORD(v72) = 1;
      }

      else if (v72 <= 0)
      {
        v75 = 0;
        LODWORD(v72) = 0;
        v281 = 0uLL;
        v73 = 1;
      }

      else
      {
        v76 = 0;
        LODWORD(v281) = 1;
        DWORD1(v281) = v72;
        *(&v281 + 1) = v72 | 0x100000000;
        v77 = v285;
        v78 = xmmword_1D0E7DD30;
        v79 = xmmword_1D0E84440;
        v80 = vdupq_n_s64(v72 - 1);
        do
        {
          v81 = vmovn_s64(vcgeq_u64(v80, v78));
          if (vuzp1_s16(v81, *v78.i8).u8[0])
          {
            *(v77 - 3) = v76;
          }

          if (vuzp1_s16(v81, *&v78).i8[2])
          {
            *(v77 - 2) = v76 + 1;
          }

          if (vuzp1_s16(*&v78, vmovn_s64(vcgeq_u64(v80, *&v79))).i32[1])
          {
            *(v77 - 1) = v76 + 2;
            *v77 = v76 + 3;
          }

          v76 += 4;
          v79 = vaddq_s64(v79, v257);
          v78 = vaddq_s64(v78, v257);
          v77 += 4;
        }

        while (((v72 + 3) & 0xFFFFFFFC) != v76);
        v73 = 0;
        v75 = 1;
      }

      v318 = 0x10000000ALL;
      v316 = &unk_1F4CED1E8;
      v319 = v320;
      *&v317 = __PAIR64__(v75, v72);
      DWORD2(v317) = v72 * v75;
      HIDWORD(v317) = v72;
      if (v72)
      {
        v82 = 0;
        v83 = 0;
        do
        {
          if ((v73 & 1) == 0)
          {
            v84 = 0;
            do
            {
              v320[v83 + HIDWORD(v317) * v84] = v284[v82 + v84];
              ++v84;
            }

            while (v75 != v84);
          }

          ++v83;
          v82 += v75;
        }

        while (v83 != v72);
        v85 = v317;
        v75 = DWORD1(v317);
      }

      else
      {
        v85 = 0;
      }

      *&v377[16] = 0x10000000ALL;
      v376 = &unk_1F4CED1E8;
      v378 = v379;
      *v377 = v85;
      *&v377[4] = v75;
      v86 = (v85 * v75);
      *&v377[8] = v86;
      *&v377[12] = v85;
      if (v86 >= 1)
      {
        v87 = v320;
        v88 = v379;
        do
        {
          v89 = *v87++;
          *v88++ = v89 + v49;
          --v86;
        }

        while (v86);
      }

      sub_1D0B9F5D4(&v353, &v376);
      v343 = 0x10000000ALL;
      v342 = xmmword_1D0E87BE0;
      v341 = &unk_1F4CEAE48;
      v344 = v345;
      *&v377[16] = 0xA0000000ALL;
      *v377 = xmmword_1D0E84630;
      v376 = &unk_1F4CE2180;
      v378 = v379;
      v318 = 0xA0000000ALL;
      v317 = xmmword_1D0E84630;
      v316 = &unk_1F4CE2180;
      v319 = v320;
      v90 = *(*(v266 + 32) + 8 * v48);
      sub_1D0BEB9D4(&v280, v262 + 1088, &v358);
      v91 = sub_1D0E1E670(&v347, v278, &v353);
      if (v90(&v280, &v347, *(*(v264 + 32) + 8 * v48), &v341, &v376, &v316, v91))
      {
        *(v262 + 2176) = 0;
        return 20;
      }

      sub_1D0BEB9D4(&v280, v262 + 8, &v358);
      sub_1D0BEC078(&v280, SDWORD2(v342), v344);
      sub_1D0B894B0(&v370[15 * v48], &v341);
      v282 = 0xA0000000ALL;
      v281 = xmmword_1D0E84630;
      v280 = &unk_1F4CE2180;
      v283 = v284;
      v338 = 0x10000000ALL;
      v336 = &unk_1F4CED1E8;
      v337 = xmmword_1D0E87BE0;
      v339 = v340;
      v333 = 0x10000000ALL;
      v332 = xmmword_1D0E87BE0;
      v331 = &unk_1F4CED1E8;
      v334 = v335;
      v349 = 0x100000028;
      v347 = &unk_1F4CED230;
      v348 = xmmword_1D0EA1280;
      v350 = &v351;
      v92 = sub_1D0BA5174(&v376, &v336, &v331, &v347, &v280);
      sub_1D0B894B0(v366 + 840 * v48, &v280);
      *&v93 = sub_1D0B894B0(v364 + 840 * v48, &v316).n128_u64[0];
      v52 &= v92 <= v23;
      v51 = *(v271 + 32);
      v50 += *(v51 + 4 * v48);
      v49 += *(v51 + 4 * (*(v271 + 20) + v48++));
    }

    while (v48 != v22);
    v10 = v262;
    if (v52)
    {
      goto LABEL_115;
    }

    LOWORD(v376) = 2;
    LOBYTE(v316) = 2;
    v245 = cnprint::CNLogFormatter::FormatWarning((v262 + 2344), "Predict state Jacobian matrix is not invertible.", v93);
    if (*(v262 + 2367) >= 0)
    {
      LOBYTE(v251) = v245;
    }

    else
    {
      v251 = *(v262 + 2344);
    }

    cnprint::CNPrinter::Print(&v376, &v316, "%s", v246, v247, v248, v249, v250, v251);
    sub_1D0B894B0(v262 + 128, v262 + 1208);
    *&v377[16] = 0x10000000ALL;
    *v377 = xmmword_1D0E87BE0;
    v376 = &unk_1F4CEAE48;
    v378 = v379;
    sub_1D0B89390(v262 + 128, v262 + 8, &v376);
    sub_1D0B894B0(v262 + 968, &v376);
    *&v377[16] = 0xA0000000ALL;
    v376 = &unk_1F4CE2180;
    v378 = v379;
    *v377 = v11;
    *&v377[4] = v270;
    *&v377[8] = v270 * v11;
    *&v377[12] = v11;
    if (v260 > 3)
    {
      v252 = &v379[2 * v260];
      bzero(v379, 16 * ((v260 - 1) >> 1));
      *(v252 - 2) = 0;
      *(v252 - 1) = 0;
    }

    else if (v260 >= 1)
    {
      bzero(v379, 8 * (v270 * v11));
    }

    sub_1D0B894B0(v262 + 2392, &v376);
    *&v377[16] = 0x10000000ALL;
    v376 = &unk_1F4CEAE48;
    v378 = v379;
    *v377 = v11;
    *&v377[4] = 1;
    *&v377[8] = v11;
    *&v377[12] = v11;
    if (v11 > 3)
    {
      v253 = &v379[2 * v11];
      bzero(v379, 16 * ((v11 - 1) >> 1));
      *(v253 - 2) = 0;
      *(v253 - 1) = 0;
    }

    else if (v11)
    {
      bzero(v379, 8 * v11);
    }

    sub_1D0B894B0(v262 + 3232, &v376);
    sub_1D0B894B0(v262 + 3352, v9);
    *(v262 + 2180) = 0;
    *(v262 + 2176) = 0;
    return 21;
  }

  else
  {
LABEL_115:
    if (v261)
    {
      v94 = v22;
    }

    else
    {
      v94 = 1;
    }

    v259 = v94;
    sub_1D0B94CA4(v352, v10 + 1088);
    sub_1D0E1A968(&v347, v10 + 1208);
    sub_1D0B94CA4(v346, v10 + 2048);
    *(v10 + 2400) = 0u;
    *(v10 + 3240) = 0u;
    *(v10 + 3360) = 0u;
    v343 = 0xA0000000ALL;
    v95 = xmmword_1D0E84630;
    v342 = xmmword_1D0E84630;
    v341 = &unk_1F4CE2180;
    v344 = v345;
    v338 = 0xA0000000ALL;
    v336 = &unk_1F4CE2180;
    v96 = v270;
    v97 = v96 * v96;
    v339 = v340;
    LODWORD(v337) = v270;
    DWORD1(v337) = v270;
    DWORD2(v337) = v96 * v96;
    HIDWORD(v337) = v270;
    if (v96 * v96 > 3)
    {
      v99 = &v340[v97];
      bzero(v340, 16 * ((v97 - 1) >> 1));
      v95 = xmmword_1D0E84630;
      v96 = v270;
      *(v99 - 2) = 0;
      *(v99 - 1) = 0;
    }

    else if (v97 >= 1)
    {
      bzero(v340, 8 * (v270 * v270));
      v95 = xmmword_1D0E84630;
      v96 = v270;
    }

    if (v96)
    {
      v100 = 0;
      v101 = v96 + 1;
      v102 = v339;
      do
      {
        v102[v100] = 0x3FF0000000000000;
        v100 += v101;
        --v96;
      }

      while (v96);
    }

    v333 = 0xA0000000ALL;
    v332 = v95;
    v331 = &unk_1F4CE2180;
    v334 = v335;
    v328 = 0x10000000ALL;
    v327 = xmmword_1D0E87BE0;
    v326 = &unk_1F4CEAE48;
    v329 = &v330;
    v323 = 0x10000000ALL;
    v103 = v270;
    v322 = xmmword_1D0E87BE0;
    v321 = &unk_1F4CEAE48;
    v324 = &v325;
    if (v259 >= 1)
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v258 = vdupq_n_s64(v270 - 1);
      v255 = vdupq_n_s64(v11 - 1);
      v256 = vdupq_n_s64(4uLL);
      v265 = v270;
      v254 = &v379[2 * v260];
      do
      {
        v263 = v104;
        if (v261)
        {
          if (v104)
          {
            v107 = v265;
            if (v265 < 0)
            {
              __assert_rtn("Eye", "cnmatrix.h", 2094, "n >= 0");
            }

            v318 = 0xA0000000ALL;
            v316 = &unk_1F4CE2180;
            v108 = v265 * v265;
            v319 = v320;
            LODWORD(v317) = v265;
            DWORD1(v317) = v265;
            DWORD2(v317) = v265 * v265;
            HIDWORD(v317) = v265;
            if (v265 * v265 > 3)
            {
              bzero(v320, 16 * ((v108 - 1) >> 1));
              v107 = v265;
              v155 = &v318 + v108;
              *v155 = 0;
              v155[1] = 0;
            }

            else if (v108 >= 1)
            {
              bzero(v320, 8 * (v265 * v265));
              v107 = v265;
            }

            if (v107)
            {
              v156 = 0;
              LODWORD(v159) = v107;
              v157 = v107 + 1;
              v158 = v319;
              v159 = v159;
              do
              {
                *&v158[2 * v156] = 0x3FF0000000000000;
                v156 += v157;
                --v159;
              }

              while (v159);
            }

            sub_1D0BEBF0C(&v376, &v336, &v358, &v358);
            sub_1D0BEC0EC(&v376, &v316);
            v104 = v263;
          }

          v160 = *(*(v271 + 32) + 4 * v104);
          v282 = 0xA00000001;
          v280 = &unk_1F4CED418;
          v283 = v284;
          if (v160 == 1)
          {
            v161 = 0;
            *&v162 = 0x100000001;
            *(&v162 + 1) = 0x100000001;
            v281 = v162;
            v284[0] = 0;
            v163 = 1;
            LODWORD(v160) = 1;
          }

          else if (v160 <= 0)
          {
            v163 = 0;
            LODWORD(v160) = 0;
            v281 = 0uLL;
            v161 = 1;
          }

          else
          {
            v164 = 0;
            LODWORD(v281) = 1;
            DWORD1(v281) = v160;
            *(&v281 + 1) = v160 | 0x100000000;
            v165 = v285;
            v166 = xmmword_1D0E7DD30;
            v167 = xmmword_1D0E84440;
            v168 = vdupq_n_s64(v160 - 1);
            do
            {
              v169 = vmovn_s64(vcgeq_u64(v168, v166));
              if (vuzp1_s16(v169, *v166.i8).u8[0])
              {
                *(v165 - 3) = v164;
              }

              if (vuzp1_s16(v169, *&v166).i8[2])
              {
                *(v165 - 2) = v164 + 1;
              }

              if (vuzp1_s16(*&v166, vmovn_s64(vcgeq_u64(v168, *&v167))).i32[1])
              {
                *(v165 - 1) = v164 + 2;
                *v165 = v164 + 3;
              }

              v164 += 4;
              v170 = vdupq_n_s64(4uLL);
              v167 = vaddq_s64(v167, v170);
              v166 = vaddq_s64(v166, v170);
              v165 += 4;
            }

            while (((v160 + 3) & 0xFFFFFFFC) != v164);
            v161 = 0;
            v163 = 1;
          }

          v318 = 0x10000000ALL;
          v316 = &unk_1F4CED1E8;
          v319 = v320;
          *&v317 = __PAIR64__(v163, v160);
          DWORD2(v317) = v160 * v163;
          HIDWORD(v317) = v160;
          if (v160)
          {
            v171 = 0;
            v172 = 0;
            do
            {
              if ((v161 & 1) == 0)
              {
                v173 = 0;
                do
                {
                  v320[v172 + HIDWORD(v317) * v173] = v284[v171 + v173];
                  ++v173;
                }

                while (v163 != v173);
              }

              ++v172;
              v171 += v163;
            }

            while (v172 != v160);
            v174 = v317;
            v163 = DWORD1(v317);
          }

          else
          {
            v174 = 0;
          }

          *&v377[16] = 0x10000000ALL;
          v376 = &unk_1F4CED1E8;
          v378 = v379;
          *v377 = v174;
          *&v377[4] = v163;
          v175 = (v174 * v163);
          *&v377[8] = v175;
          *&v377[12] = v174;
          if (v175 >= 1)
          {
            v176 = v320;
            v177 = v379;
            do
            {
              v178 = *v176++;
              *v177++ = v178 + v106;
              --v175;
            }

            while (v175);
          }

          sub_1D0B9F5D4(&v358, &v376);
          v179 = *(*(v271 + 32) + 4 * (*(v271 + 20) + v104));
          v282 = 0xA00000001;
          v280 = &unk_1F4CED418;
          v283 = v284;
          if (v179 == 1)
          {
            v180 = 0;
            *&v181 = 0x100000001;
            *(&v181 + 1) = 0x100000001;
            v281 = v181;
            v284[0] = 0;
            v182 = 1;
            LODWORD(v179) = 1;
          }

          else if (v179 <= 0)
          {
            v182 = 0;
            LODWORD(v179) = 0;
            v281 = 0uLL;
            v180 = 1;
          }

          else
          {
            v183 = 0;
            LODWORD(v281) = 1;
            DWORD1(v281) = v179;
            *(&v281 + 1) = v179 | 0x100000000;
            v184 = v285;
            v185 = xmmword_1D0E7DD30;
            v186 = xmmword_1D0E84440;
            v187 = vdupq_n_s64(v179 - 1);
            do
            {
              v188 = vmovn_s64(vcgeq_u64(v187, v185));
              if (vuzp1_s16(v188, *v185.i8).u8[0])
              {
                *(v184 - 3) = v183;
              }

              if (vuzp1_s16(v188, *&v185).i8[2])
              {
                *(v184 - 2) = v183 + 1;
              }

              if (vuzp1_s16(*&v185, vmovn_s64(vcgeq_u64(v187, *&v186))).i32[1])
              {
                *(v184 - 1) = v183 + 2;
                *v184 = v183 + 3;
              }

              v183 += 4;
              v189 = vdupq_n_s64(4uLL);
              v186 = vaddq_s64(v186, v189);
              v185 = vaddq_s64(v185, v189);
              v184 += 4;
            }

            while (((v179 + 3) & 0xFFFFFFFC) != v183);
            v180 = 0;
            v182 = 1;
          }

          v318 = 0x10000000ALL;
          v316 = &unk_1F4CED1E8;
          v319 = v320;
          *&v317 = __PAIR64__(v182, v179);
          DWORD2(v317) = v179 * v182;
          HIDWORD(v317) = v179;
          if (v179)
          {
            v190 = 0;
            v191 = 0;
            do
            {
              if ((v180 & 1) == 0)
              {
                v192 = 0;
                do
                {
                  v320[v191 + HIDWORD(v317) * v192] = v284[v190 + v192];
                  ++v192;
                }

                while (v182 != v192);
              }

              ++v191;
              v190 += v182;
            }

            while (v191 != v179);
            v193 = v317;
            v182 = DWORD1(v317);
          }

          else
          {
            v193 = 0;
          }

          *&v377[16] = 0x10000000ALL;
          v376 = &unk_1F4CED1E8;
          v378 = v379;
          *v377 = v193;
          *&v377[4] = v182;
          v194 = (v193 * v182);
          *&v377[8] = v194;
          *&v377[12] = v193;
          if (v194 >= 1)
          {
            v195 = v320;
            v196 = v379;
            do
            {
              v197 = *v195++;
              *v196++ = v197 + v105;
              --v194;
            }

            while (v194);
          }

          sub_1D0B9F5D4(&v353, &v376);
          v198 = *(v9 + 20);
          v199 = *(v9 + 32);
          v200 = DWORD2(v354);
          v201 = v356;
          *&v377[16] = 0xA0000000ALL;
          *v377 = DWORD2(v354);
          *&v377[4] = DWORD2(v354);
          *&v377[8] = *&v377[4] * *&v377[4];
          *&v377[12] = DWORD2(v354);
          v376 = &unk_1F4CE2180;
          v378 = v379;
          if (DWORD2(v354))
          {
            v202 = 0;
            v203 = 0;
            do
            {
              v204 = 0;
              v205 = *(v201 + v203) * v198;
              do
              {
                *&v379[2 * (v202 + v204)] = *(v199 + 8 * (*(v201 + v204) + v205));
                ++v204;
              }

              while (v200 != v204);
              ++v203;
              v202 += v200;
            }

            while (v203 != v200);
          }

          sub_1D0B894B0(&v341, &v376);
          v206 = *(v271 + 32);
          v153 = *(v206 + 4 * (*(v271 + 20) + v104));
          v265 = *(v206 + 4 * v104);
          v207 = v366;
          sub_1D0BEBF0C(&v376, &v336, &v358, &v358);
          sub_1D0BEC0EC(&v376, v207 + 840 * v263);
          if ((v153 & 0x80000000) != 0)
          {
            __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
          }

          *&v377[16] = 0xA0000000ALL;
          v208 = v153 * v270;
          v376 = &unk_1F4CE2180;
          v378 = v379;
          *v377 = v270;
          *&v377[4] = v153;
          *&v377[8] = v153 * v270;
          *&v377[12] = v270;
          if ((v153 * v270) > 3)
          {
            bzero(v379, 16 * ((v208 - 1) >> 1));
            v209 = &v377[8 * v153 * v270 + 16];
            *v209 = 0;
            v209[1] = 0;
          }

          else if (v208 >= 1)
          {
            bzero(v379, 8 * v153 * v270);
          }

          sub_1D0B894B0(&v331, &v376);
          v267 = v364;
          v210 = DWORD1(v332);
          sub_1D0BEDD40(&v316, SDWORD1(v332));
          if (v210 >= 1)
          {
            v211 = 0;
            v212 = vdupq_n_s64(v210 - 1);
            v213 = v319 + 2;
            v214 = xmmword_1D0E7DD30;
            v215 = xmmword_1D0E84440;
            do
            {
              v216 = vmovn_s64(vcgeq_u64(v212, v214));
              if (vuzp1_s16(v216, *v212.i8).u8[0])
              {
                *(v213 - 2) = v211;
              }

              if (vuzp1_s16(v216, *&v212).i8[2])
              {
                *(v213 - 1) = v211 + 1;
              }

              if (vuzp1_s16(*&v212, vmovn_s64(vcgeq_u64(v212, *&v215))).i32[1])
              {
                *v213 = v211 + 2;
                v213[1] = v211 + 3;
              }

              v211 += 4;
              v215 = vaddq_s64(v215, v256);
              v214 = vaddq_s64(v214, v256);
              v213 += 4;
            }

            while (((v210 + 3) & 0xFFFFFFFC) != v211);
          }

          sub_1D0BEBF0C(&v376, &v331, &v358, &v316);
          sub_1D0BEC0EC(&v376, v267 + 840 * v263);
          sub_1D0B894B0(&v326, v352);
          v268 = v370;
          sub_1D0BEB9D4(&v376, &v326, &v358);
          sub_1D0BEC078(&v376, v268[15 * v263 + 2], v268[15 * v263 + 4]);
          sub_1D0E1E670(&v376, v278, &v353);
          sub_1D0B894B0(&v321, &v376);
          v217 = *(v271 + 32);
          v106 += *(v217 + 4 * v263);
          v105 += *(v217 + 4 * (*(v271 + 20) + v263));
          v154 = v270;
          v152 = v153 * v270;
        }

        else
        {
          v109 = v103;
          sub_1D0B894B0(&v341, v9);
          *&v377[16] = 0xA0000000ALL;
          v376 = &unk_1F4CE2180;
          v378 = v379;
          *v377 = v109;
          *&v377[4] = v11;
          *&v377[8] = v270 * v11;
          *&v377[12] = v109;
          if (v260 >= 4)
          {
            bzero(v379, 16 * ((v260 - 1) >> 1));
            *(v254 - 2) = 0;
            *(v254 - 1) = 0;
          }

          else if (v260 >= 1)
          {
            bzero(v379, 8 * (v270 * v11));
          }

          sub_1D0B894B0(&v331, &v376);
          sub_1D0B894B0(&v326, v262 + 8);
          sub_1D0B894B0(&v321, &v272);
          if (v269)
          {
            v110 = 0;
            v111 = *(v271 + 32);
            do
            {
              v112 = *(v111 + 4 * v110);
              v282 = 0xA00000001;
              v280 = &unk_1F4CED418;
              v283 = v284;
              if (v112 == 1)
              {
                v113 = 0;
                *&v114 = 0x100000001;
                *(&v114 + 1) = 0x100000001;
                v281 = v114;
                v284[0] = 0;
                v115 = 1;
                LODWORD(v112) = 1;
              }

              else if (v112 <= 0)
              {
                v115 = 0;
                LODWORD(v112) = 0;
                v281 = 0uLL;
                v113 = 1;
              }

              else
              {
                v116 = 0;
                LODWORD(v281) = 1;
                DWORD1(v281) = v112;
                *(&v281 + 1) = v112 | 0x100000000;
                v117 = xmmword_1D0E84440;
                v118 = xmmword_1D0E7DD30;
                v119 = v285;
                v120 = vdupq_n_s64(v112 - 1);
                do
                {
                  v121 = vmovn_s64(vcgeq_u64(v120, v118));
                  if (vuzp1_s16(v121, *v117.i8).u8[0])
                  {
                    *(v119 - 3) = v116;
                  }

                  if (vuzp1_s16(v121, *&v117).i8[2])
                  {
                    *(v119 - 2) = v116 + 1;
                  }

                  if (vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v120, *&v117))).i32[1])
                  {
                    *(v119 - 1) = v116 + 2;
                    *v119 = v116 + 3;
                  }

                  v116 += 4;
                  v122 = vdupq_n_s64(4uLL);
                  v117 = vaddq_s64(v117, v122);
                  v118 = vaddq_s64(v118, v122);
                  v119 += 4;
                }

                while (((v112 + 3) & 0xFFFFFFFC) != v116);
                v113 = 0;
                v115 = 1;
              }

              v318 = 0x10000000ALL;
              v316 = &unk_1F4CED1E8;
              v319 = v320;
              *&v317 = __PAIR64__(v115, v112);
              DWORD2(v317) = v112 * v115;
              HIDWORD(v317) = v112;
              if (v112)
              {
                v123 = 0;
                v124 = 0;
                do
                {
                  if ((v113 & 1) == 0)
                  {
                    v125 = 0;
                    do
                    {
                      v320[v124 + HIDWORD(v317) * v125] = v284[v123 + v125];
                      ++v125;
                    }

                    while (v115 != v125);
                  }

                  ++v124;
                  v123 += v115;
                }

                while (v124 != v112);
                v126 = v317;
                v115 = DWORD1(v317);
              }

              else
              {
                v126 = 0;
              }

              *&v377[16] = 0x10000000ALL;
              v376 = &unk_1F4CED1E8;
              v378 = v379;
              *v377 = v126;
              *&v377[4] = v115;
              v127 = (v126 * v115);
              *&v377[8] = v127;
              *&v377[12] = v126;
              if (v127 >= 1)
              {
                v128 = v320;
                v129 = v379;
                do
                {
                  v130 = *v128++;
                  *v129++ = v130 + v106;
                  --v127;
                }

                while (v127);
              }

              sub_1D0B9F5D4(&v358, &v376);
              v131 = *(*(v271 + 32) + 4 * (*(v271 + 20) + v110));
              v282 = 0xA00000001;
              v280 = &unk_1F4CED418;
              v283 = v284;
              if (v131 == 1)
              {
                v132 = 0;
                *&v133 = 0x100000001;
                *(&v133 + 1) = 0x100000001;
                v281 = v133;
                v284[0] = 0;
                v134 = 1;
                LODWORD(v131) = 1;
              }

              else if (v131 <= 0)
              {
                v134 = 0;
                LODWORD(v131) = 0;
                v281 = 0uLL;
                v132 = 1;
              }

              else
              {
                v135 = 0;
                LODWORD(v281) = 1;
                DWORD1(v281) = v131;
                *(&v281 + 1) = v131 | 0x100000000;
                v136 = xmmword_1D0E84440;
                v137 = xmmword_1D0E7DD30;
                v138 = v285;
                v139 = vdupq_n_s64(v131 - 1);
                do
                {
                  v140 = vmovn_s64(vcgeq_u64(v139, v137));
                  if (vuzp1_s16(v140, *v136.i8).u8[0])
                  {
                    *(v138 - 3) = v135;
                  }

                  if (vuzp1_s16(v140, *&v136).i8[2])
                  {
                    *(v138 - 2) = v135 + 1;
                  }

                  if (vuzp1_s16(*&v136, vmovn_s64(vcgeq_u64(v139, *&v136))).i32[1])
                  {
                    *(v138 - 1) = v135 + 2;
                    *v138 = v135 + 3;
                  }

                  v135 += 4;
                  v141 = vdupq_n_s64(4uLL);
                  v136 = vaddq_s64(v136, v141);
                  v137 = vaddq_s64(v137, v141);
                  v138 += 4;
                }

                while (((v131 + 3) & 0xFFFFFFFC) != v135);
                v132 = 0;
                v134 = 1;
              }

              v318 = 0x10000000ALL;
              v316 = &unk_1F4CED1E8;
              v319 = v320;
              *&v317 = __PAIR64__(v134, v131);
              DWORD2(v317) = v131 * v134;
              HIDWORD(v317) = v131;
              if (v131)
              {
                v142 = 0;
                v143 = 0;
                do
                {
                  if ((v132 & 1) == 0)
                  {
                    v144 = 0;
                    do
                    {
                      v320[v143 + HIDWORD(v317) * v144] = v284[v142 + v144];
                      ++v144;
                    }

                    while (v134 != v144);
                  }

                  ++v143;
                  v142 += v134;
                }

                while (v143 != v131);
                v145 = v317;
                v134 = DWORD1(v317);
              }

              else
              {
                v145 = 0;
              }

              *&v377[16] = 0x10000000ALL;
              v376 = &unk_1F4CED1E8;
              v378 = v379;
              *v377 = v145;
              *&v377[4] = v134;
              v146 = (v145 * v134);
              *&v377[8] = v146;
              *&v377[12] = v145;
              if (v146 >= 1)
              {
                v147 = v320;
                v148 = v379;
                do
                {
                  v149 = *v147++;
                  *v148++ = v149 + v105;
                  --v146;
                }

                while (v146);
              }

              sub_1D0B9F5D4(&v353, &v376);
              v150 = v366;
              sub_1D0BEBF0C(&v376, &v336, &v358, &v358);
              sub_1D0BEC0EC(&v376, v150 + 840 * v110);
              v151 = v364;
              sub_1D0BEBF0C(&v376, &v331, &v358, &v353);
              sub_1D0BEC0EC(&v376, v151 + 840 * v110);
              v111 = *(v271 + 32);
              v106 += *(v111 + 4 * v110);
              v105 += *(v111 + 4 * (*(v271 + 20) + v110++));
            }

            while (v110 != v269);
            v152 = v270 * v11;
            v153 = v11;
            v265 = v270;
            v154 = v270;
          }

          else
          {
            v152 = v270 * v11;
            v153 = v11;
            v154 = v270;
            v265 = v270;
          }
        }

        v313 = 0xA0000000ALL;
        v311 = &unk_1F4CE2180;
        v314 = v315;
        *&v312 = __PAIR64__(v154, v153);
        *(&v312 + 1) = __PAIR64__(v153, v152);
        if (v152 > 3)
        {
          v218 = v152;
          bzero(v315, 16 * ((v152 - 1) >> 1));
          v219 = &v313 + v218;
          *v219 = 0;
          v219[1] = 0;
        }

        else if (v152 >= 1)
        {
          bzero(v315, 8 * v152);
        }

        *&v377[16] = 0x140000000ALL;
        *v377 = xmmword_1D0EA12A0;
        v376 = &unk_1F4CEDC70;
        v378 = v379;
        sub_1D0B8876C(&v341, &v311, &v376);
        v303 = 0xA0000000ALL;
        v302 = xmmword_1D0E84630;
        v301 = &unk_1F4CE2180;
        v304 = v305;
        sub_1D0BA5940(&v347, &v301);
        v298 = 0xA0000000ALL;
        v297 = xmmword_1D0E84630;
        v296 = &unk_1F4CE2180;
        v299 = v300;
        sub_1D0B89390(&v336, &v331, &v296);
        v308 = 0xA0000000ALL;
        v307 = xmmword_1D0E84630;
        v306 = &unk_1F4CE2180;
        v309 = v310;
        sub_1D0B89390(&v301, &v296, &v306);
        v293 = 0xA0000000ALL;
        v292 = xmmword_1D0E84630;
        v291 = &unk_1F4CE2180;
        v294 = v295;
        sub_1D0B89390(&v347, &v336, &v291);
        v282 = 0x140000000ALL;
        v281 = xmmword_1D0EA12A0;
        v280 = &unk_1F4CEDC70;
        v283 = v284;
        sub_1D0B8876C(&v306, &v291, &v280);
        v318 = 0x1400000014;
        v317 = xmmword_1D0EA12B0;
        v316 = &unk_1F4CEDA40;
        v319 = v320;
        sub_1D0BA59C4(&v376, &v280, &v316);
        *&v377[16] = 0x10000000ALL;
        *v377 = xmmword_1D0E87BE0;
        v376 = &unk_1F4CEAE48;
        v378 = v379;
        sub_1D0B89390(&v341, &v321, &v376);
        v288 = 0x10000000ALL;
        v287 = xmmword_1D0E87BE0;
        v286 = &unk_1F4CEAE48;
        v289 = &v290;
        sub_1D0B89390(&v331, &v321, &v286);
        v293 = 0x10000000ALL;
        v292 = xmmword_1D0E87BE0;
        v291 = &unk_1F4CEAE48;
        v294 = v295;
        sub_1D0BA5A78(&v326, &v286, &v291);
        v298 = 0x10000000ALL;
        v297 = xmmword_1D0E87BE0;
        v296 = &unk_1F4CEAE48;
        v299 = v300;
        sub_1D0B89390(&v336, &v291, &v296);
        v303 = 0x10000000ALL;
        v302 = xmmword_1D0E87BE0;
        v301 = &unk_1F4CEAE48;
        v304 = v305;
        sub_1D0BA5A78(&v296, v352, &v301);
        v313 = 0x10000000ALL;
        v312 = xmmword_1D0E87BE0;
        v311 = &unk_1F4CEAE48;
        v314 = v315;
        sub_1D0B89390(&v347, &v301, &v311);
        v282 = 0x10000000ALL;
        v281 = xmmword_1D0E87BE0;
        v280 = &unk_1F4CEAE48;
        v283 = v284;
        sub_1D0B88838(&v311, v346, &v280);
        v308 = 0x100000014;
        v307 = xmmword_1D0EA12C0;
        v306 = &unk_1F4CEDB30;
        v309 = v310;
        sub_1D0BA59C4(&v376, &v280, &v306);
        v282 = 0x1400000014;
        v281 = xmmword_1D0EA12B0;
        v280 = &unk_1F4CEDA40;
        v283 = v284;
        v303 = 0x100000014;
        v302 = xmmword_1D0EA12C0;
        v301 = &unk_1F4CEDB30;
        v304 = v305;
        v313 = 0x100000014;
        v312 = xmmword_1D0EA12C0;
        v311 = &unk_1F4CEDB30;
        v314 = v315;
        *&v377[16] = 0x1400000014;
        *v377 = xmmword_1D0EA12B0;
        v376 = &unk_1F4CEDA40;
        v378 = v379;
        sub_1D0BA5B14(&v316, &v306, &v311, &v376, &v301, &v280);
        *&v377[16] = 0xA00000001;
        v376 = &unk_1F4CED418;
        v378 = v379;
        v220 = v263;
        if (v270 == 1)
        {
          v221 = 0;
          *&v222 = 0x100000001;
          *(&v222 + 1) = 0x100000001;
          *v377 = v222;
          v379[0] = v153;
          v223 = 1;
        }

        else if (v270)
        {
          *v377 = 1;
          *&v377[4] = v270;
          *&v377[8] = v270;
          *&v377[12] = 1;
          v224 = xmmword_1D0E84440;
          v225 = (v270 + 3) & 0xFFFFFFFC;
          v226 = v380;
          v227 = xmmword_1D0E7DD30;
          do
          {
            v228 = vmovn_s64(vcgeq_u64(v258, v227));
            if (vuzp1_s16(v228, *v224.i8).u8[0])
            {
              *(v226 - 3) = v153;
            }

            if (vuzp1_s16(v228, *&v224).i8[2])
            {
              *(v226 - 2) = v153 + 1;
            }

            if (vuzp1_s16(*&v224, vmovn_s64(vcgeq_u64(v258, *&v224))).i32[1])
            {
              *(v226 - 1) = v153 + 2;
              *v226 = v153 + 3;
            }

            v229 = vdupq_n_s64(4uLL);
            v224 = vaddq_s64(v224, v229);
            v227 = vaddq_s64(v227, v229);
            v153 += 4;
            v226 += 4;
            v225 -= 4;
          }

          while (v225);
          v221 = 0;
          v223 = 1;
        }

        else
        {
          v223 = 0;
          *v377 = 0;
          *&v377[8] = 0;
          v221 = 1;
        }

        v313 = 0x10000000ALL;
        v311 = &unk_1F4CED1E8;
        v314 = v315;
        *&v312 = __PAIR64__(v223, v270);
        DWORD2(v312) = v223 * v270;
        HIDWORD(v312) = v270;
        if (v270)
        {
          v230 = 0;
          v231 = 0;
          do
          {
            if ((v221 & 1) == 0)
            {
              v232 = 0;
              do
              {
                v315[v231 + HIDWORD(v312) * v232] = v379[v230 + v232];
                ++v232;
              }

              while (v223 != v232);
            }

            ++v231;
            v230 += v223;
          }

          while (v231 != v270);
        }

        sub_1D0B894B0(v352, &v326);
        sub_1D0BEBF0C(&v376, &v280, &v311, &v311);
        sub_1D0B894B0(&v347, &v376);
        sub_1D0BEB9D4(&v376, &v301, &v311);
        sub_1D0B894B0(v346, &v376);
        if (!v261)
        {
          *&v377[16] = 0xA00000001;
          v376 = &unk_1F4CED418;
          v378 = v379;
          if (v11)
          {
            if (v11 == 1)
            {
              v233 = 0;
              *&v234 = 0x100000001;
              *(&v234 + 1) = 0x100000001;
              *v377 = v234;
              v379[0] = 0;
            }

            else
            {
              v236 = 0;
              *v377 = 1;
              *&v377[4] = v11;
              *&v377[8] = v11;
              *&v377[12] = 1;
              v237 = xmmword_1D0E84440;
              v238 = v380;
              v239 = xmmword_1D0E7DD30;
              do
              {
                v240 = vmovn_s64(vcgeq_u64(v255, v239));
                if (vuzp1_s16(v240, *v237.i8).u8[0])
                {
                  *(v238 - 3) = v236;
                }

                if (vuzp1_s16(v240, *&v237).i8[2])
                {
                  *(v238 - 2) = v236 + 1;
                }

                if (vuzp1_s16(*&v237, vmovn_s64(vcgeq_u64(v255, *&v237))).i32[1])
                {
                  *(v238 - 1) = v236 + 2;
                  *v238 = v236 + 3;
                }

                v236 += 4;
                v241 = vdupq_n_s64(4uLL);
                v237 = vaddq_s64(v237, v241);
                v239 = vaddq_s64(v239, v241);
                v238 += 4;
              }

              while (((v11 + 3) & 0xFFFFFFFC) != v236);
              v233 = 0;
            }

            v235 = 1;
          }

          else
          {
            v235 = 0;
            *v377 = 0;
            *&v377[8] = 0;
            v233 = 1;
          }

          v298 = 0x10000000ALL;
          v296 = &unk_1F4CED1E8;
          v299 = v300;
          *&v297 = __PAIR64__(v235, v11);
          DWORD2(v297) = v235 * v11;
          HIDWORD(v297) = v11;
          if (v11)
          {
            v242 = 0;
            v243 = 0;
            do
            {
              if ((v233 & 1) == 0)
              {
                v244 = 0;
                do
                {
                  v300[v243 + HIDWORD(v297) * v244] = v379[v242 + v244];
                  ++v244;
                }

                while (v235 != v244);
              }

              ++v243;
              v242 += v235;
            }

            while (v243 != v11);
          }

          sub_1D0BEBF0C(&v376, &v280, &v296, &v311);
          sub_1D0B894B0(v262 + 2392, &v376);
          sub_1D0BEB9D4(&v376, &v301, &v296);
          sub_1D0B894B0(v262 + 3232, &v376);
          sub_1D0BEBF0C(&v376, &v280, &v296, &v296);
          sub_1D0B894B0(v262 + 3352, &v376);
          v220 = v263;
        }

        v104 = v220 + 1;
        v103 = v270;
      }

      while (v104 != v259);
    }

    sub_1D0B894B0(v262 + 128, &v347);
    sub_1D0B894B0(v262 + 968, v346);
    result = 0;
    *(v262 + 2180) = 0;
  }

  return result;
}

std::string *raven::RavenIonosphereEstimator::SetLogPrefix(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 4064), a2);

  return std::string::operator=((a1 + 6456), a2);
}

uint64_t *sub_1D0E18B14(uint64_t *a1)
{
  v2 = 0;
  a1[1638] = &unk_1F4CE3720;
  a1[1589] = &unk_1F4CECD48;
  do
  {
    a1[v2 + 1582] = &unk_1F4CD5E28;
    v2 -= 6;
  }

  while (v2 != -264);
  v3 = 0;
  a1[1319] = &unk_1F4CECDD0;
  do
  {
    a1[v3 + 1313] = &unk_1F4CD5E28;
    v3 -= 6;
  }

  while (v3 != -264);
  v4 = 0;
  a1[1050] = &unk_1F4CECDD0;
  a1[1023] = &unk_1F4CDEAF8;
  do
  {
    a1[v4 + 1017] = &unk_1F4CD5E28;
    v4 -= 6;
  }

  while (v4 != -264);
  a1[754] = &unk_1F4CECDD0;
  a1[705] = &unk_1F4CD5E28;
  a1[678] = &unk_1F4CDEAF8;
  a1[585] = &unk_1F4CE3870;
  a1[492] = &unk_1F4CE3720;
  a1[399] = &unk_1F4CECD48;
  a1[392] = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 397);
  a1[392] = &unk_1F4CECDD0;
  a1[386] = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 391);
  a1[386] = &unk_1F4CECDD0;
  a1[337] = &unk_1F4CDEAF8;
  a1[331] = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 336);
  a1[331] = &unk_1F4CECDD0;
  a1[238] = &unk_1F4CD5E28;
  a1[189] = &unk_1F4CDEAF8;
  a1[8] = &unk_1F4CE3870;
  sub_1D0BAAF58(a1 + 5);
  return a1;
}

void *sub_1D0E18F04(void *result)
{
  for (i = 263; i != -1; i -= 6)
  {
    result[i] = &unk_1F4CD5E28;
  }

  *result = &unk_1F4CECDD0;
  return result;
}

void *sub_1D0E18FF4(void *a1)
{
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;
  return a1;
}

void sub_1D0E190F0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v14[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0E19228(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v14[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0E1932C(void *a1)
{
  for (i = 263; i != -1; i -= 6)
  {
    a1[i] = &unk_1F4CD5E28;
  }

  *a1 = &unk_1F4CECDD0;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1938C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = v3 + v1 - v5;
        v7 = (v4 - 1);
        v8 = 1;
        do
        {
          sub_1D0BE520C(v13, *(a1 + 32) + 48 * v8);
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = v8;
            do
            {
              v10 = v10 * v6 % v7;
              sub_1D0BE520C(v12, *(a1 + 32) + 48 * v10);
              sub_1D0B894B0(*(a1 + 32) + 48 * v10, v13);
              *v9 = 1;
              sub_1D0B894B0(v13, v12);
              v9 = &v14[v10];
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v7);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1D0E19514(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0E19648(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0E19770(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v13 = *(*(a1 + 32) + 16 * v7);
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
          {
            v9 = v7;
            do
            {
              v9 = (v9 * (v3 + v1 - v5)) % v6;
              v10 = *(a1 + 32);
              v11 = *(v10 + 16 * v9);
              *(v10 + 16 * v9) = v13;
              *v8 = 1;
              v13 = v11;
              v8 = &v14[v9];
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}