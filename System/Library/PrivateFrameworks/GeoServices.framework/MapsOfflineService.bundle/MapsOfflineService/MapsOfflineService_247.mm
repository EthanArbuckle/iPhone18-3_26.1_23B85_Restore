void sub_F3DAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v72 + 8) = v73;
  sub_F38730(&a29);
  sub_F38730(&a42);
  sub_F38730(&a55);
  if (__p)
  {
    a70 = __p;
    operator delete(__p);
  }

  sub_F38730(&a72);
  _Unwind_Resume(a1);
}

void sub_F3DBB8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v8 = HIDWORD(a2);
  v9 = sub_3187E8(a1, a2, 1);
  if (a3)
  {
    if (v9 && (v10 = &v9[-*v9], *v10 >= 5u) && (v11 = *(v10 + 2)) != 0 && (v12 = &v9[v11], v13 = *v12, *&v12[v13] > v8) && (v14 = sub_319480(&v12[v13], a2)) != 0 && (v15 = (v14 - *v14), *v15 >= 0xFu) && v15[7])
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v16 = (v14 + *(v14 - *v14 + 14));
      v17 = (v16 + *v16);
      v18 = *v17;
      if (v18)
      {
        v19 = &v17[2 * v18 + 1];
        v20 = v17 + 1;
        do
        {
          v27 = *v20;
          v28 = v20[1];
          v29 = sub_3187E8(a1, *v20, 1);
          if (v29 && (v30 = &v29[-*v29], *v30 >= 9u) && (v31 = *(v30 + 4)) != 0 && (v32 = &v29[v31], v33 = *v32, *&v32[v33] > v28) && (v34 = sub_318690(&v32[v33], v27 | (v28 << 32))) != 0)
          {
            v35 = (v34 + *(v34 - *v34 + 4));
            v36 = *v35;
            v37 = v35[1];
          }

          else
          {
            v36 = 0;
            v37 = 0xFFFFFFFFLL;
          }

          v38 = sub_3187E8(a1, v36, 1);
          if (v38)
          {
            v39 = &v38[-*v38];
            if (*v39 >= 7u)
            {
              v40 = *(v39 + 3);
              if (v40)
              {
                v41 = *&v38[v40];
                v42 = &v38[v40 + v41];
                if (*v42 > v37)
                {
                  v43 = 4 * v37;
                  v44 = &v42[4 * v37];
                  v45 = *(v44 + 1);
                  v46 = &v44[v45 + 4];
                  v47 = &v46[-*v46];
                  if (*v47 >= 5u)
                  {
                    v48 = *(v47 + 2);
                    if (v48)
                    {
                      v49 = &v46[v48];
                      v50 = *&v46[v48];
                      v51 = *&v49[v50];
                      if (v51)
                      {
                        v52 = 0;
                        v53 = 4 * v51;
                        v54 = &v38[v48 + v45 + v41 + v40 + v43 + v50];
                        do
                        {
                          v55 = &v54[v52];
                          v56 = *&v54[v52 + 8];
                          v57 = &v54[v52 + v56 - *&v54[v52 + 8 + v56]];
                          if (*&v54[v52 + 8 + v56 + v57[8]] == a2)
                          {
                            *&v58 = *&v55[v56 + 8 + v57[6]];
                            *(&v58 + 1) = *&v55[v56 + 8 + v57[7]];
                            v59 = v58;
                            v60 = a2;
                            v61 = v8;
                            v62 = *&v55[v56 + 8 + v57[9]];
                            sub_2C3744(a4, &v59);
                          }

                          v52 += 4;
                        }

                        while (v53 != v52);
                      }
                    }
                  }
                }
              }
            }
          }

          v20 += 2;
        }

        while (v20 != v19);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }
  }

  else
  {
    if (v9)
    {
      v21 = &v9[-*v9];
      if (*v21 >= 7u && (v22 = *(v21 + 3)) != 0 && (v23 = &v9[v22 + *&v9[v22]], *v23 > v8) && (v24 = &v23[4 * v8 + 4 + *&v23[4 * v8 + 4]], v25 = &v24[-*v24], *v25 >= 5u) && (v26 = *(v25 + 2)) != 0)
      {
        v9 = &v24[v26 + *&v24[v26]];
      }

      else
      {
        v9 = 0;
      }
    }

    sub_F4A420(v9, a4);
  }
}

void sub_F3DF20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_F3DF40(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = a2[1];
  v27 = *a2;
  v28 = v5;
  v6 = sub_319730(v4, &v27);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v7 = (v6 - *v6);
  if (*v7 < 0x13u)
  {
    if (*(a1 + 128) >= 0)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v8 = v7[9];
  if (!v8)
  {
LABEL_7:
    if (v8 <= *(a1 + 128))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*(v6 + v8) > *(a1 + 128))
  {
    return 0;
  }

LABEL_11:
  v10 = *(a1 + 8);
  v11 = a2[1];
  v27 = *a2;
  v28 = v11;
  v12 = sub_319730(v10, &v27);
  if (!v12)
  {
    LODWORD(v14) = 0;
    goto LABEL_17;
  }

  v13 = (v12 - *v12);
  if (*v13 < 0xFu)
  {
    if (!*(a1 + 144))
    {
      goto LABEL_20;
    }

    return 0;
  }

  v14 = v13[7];
  if (!v14)
  {
LABEL_17:
    if (v14 >= *(a1 + 144))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (*(v12 + v14) < *(a1 + 144))
  {
    return 0;
  }

LABEL_20:
  v15 = *(a1 + 8);
  v16 = a2[1];
  v27 = *a2;
  v28 = v16;
  v17 = sub_319730(v15, &v27);
  v18 = 0.0;
  if (v17)
  {
    v19 = (v17 - *v17);
    if (*v19 >= 0x19u)
    {
      v20 = v19[12];
      if (v20)
      {
        v18 = *(v17 + v20);
      }
    }
  }

  if (v18 > *(a1 + 200))
  {
    return 0;
  }

  v21 = sub_3175DC(*(a1 + 8), *(a2 + 1), *(a2 + 2));
  result = 0;
  if (v21 <= 0xFFFFFFFEFFFFFFFFLL && v21)
  {
    v22 = *(a1 + 8);
    v23 = a2[1];
    v27 = *a2;
    v28 = v23;
    v24 = sub_319730(v22, &v27);
    if (v24 && (v25 = (v24 - *v24), *v25 >= 0x1Bu))
    {
      v26 = v25[13];
      if (v26)
      {
        v26 = *(v24 + v26);
      }
    }

    else
    {
      v26 = 0;
    }

    return v26 <= *(a1 + 136);
  }

  return result;
}

uint64_t sub_F3E128(uint64_t a1, unint64_t *a2, void *a3, unint64_t a4, int a5, int a6)
{
  v10 = *a2;
  v11 = sub_3187E8(*(a1 + 8), *a2, 1);
  if (!v11)
  {
    return 0;
  }

  v12 = &v11[-*v11];
  if (*v12 < 9u)
  {
    return 0;
  }

  v13 = *(v12 + 4);
  if (!v13)
  {
    return 0;
  }

  v14 = &v11[v13];
  v15 = *v14;
  if (*&v14[v15] <= HIDWORD(v10))
  {
    return 0;
  }

  v16 = sub_318690(&v14[v15], v10);
  if (!v16)
  {
    return 0;
  }

  v17 = (v16 - *v16);
  if (*v17 < 9u || (v18 = v17[4]) == 0)
  {
    sub_31859C(0, &__p);
    v19 = __p;
    v20 = v42;
    if (__p == v42)
    {
      goto LABEL_9;
    }

LABEL_13:
    if (a6)
    {
      v23 = (v20 - 8);
      if (v23 > v19)
      {
        v24 = v19 + 8;
        do
        {
          v25 = *(v24 - 1);
          v26 = *v23;
          *(v24 - 5) = *(v23 + 3);
          *(v24 - 2) = v26;
          *v23 = v25;
          *(v23 + 6) = BYTE6(v25);
          *(v23 + 4) = WORD2(v25);
          v23 -= 8;
          v27 = v24 >= v23;
          v24 += 8;
        }

        while (!v27);
        v19 = __p;
      }
    }

    v28 = (v42 - v19) >> 3;
    if (v28)
    {
      if (a5)
      {
        v21 = 0;
        v29 = 0;
        v30 = -1;
        while (1)
        {
          v31 = *(sub_4D1F50(a3, a4) + 32);
          v32 = sub_F3F27C(&__p, v30 + ((v42 - __p) >> 3));
          if (v31 != *v32 || (HIDWORD(v31) & 0xFFFFFF) != (HIDWORD(*v32) & 0xFFFFFF))
          {
            break;
          }

          v21 += sub_4D23F8(a3, a4, v33);
          if (!a4 || a4 == sub_4D1DC0(a3) - 1)
          {
            break;
          }

          ++v29;
          --a4;
          --v30;
          if (v28 == v29)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v35 = 0;
        v21 = 0;
        while (1)
        {
          v36 = a4 + v35;
          v37 = *(sub_4D1F50(a3, a4 + v35) + 32);
          v38 = sub_F3F27C(&__p, v35);
          if (v37 != *v38 || (HIDWORD(v37) & 0xFFFFFF) != (HIDWORD(*v38) & 0xFFFFFF))
          {
            break;
          }

          v21 += sub_4D23F8(a3, a4 + v35, v39);
          if (!v36 || v36 == sub_4D1DC0(a3) - 1)
          {
            break;
          }

          if (v28 == ++v35)
          {
            goto LABEL_40;
          }
        }
      }
    }

    else
    {
LABEL_40:
      v21 = 0;
    }

    v19 = __p;
    goto LABEL_42;
  }

  sub_31859C((v16 + v18 + *(v16 + v18)), &__p);
  v19 = __p;
  v20 = v42;
  if (__p != v42)
  {
    goto LABEL_13;
  }

LABEL_9:
  v21 = 0;
LABEL_42:
  if (v19)
  {
    v42 = v19;
    operator delete(v19);
  }

  return v21;
}

void sub_F3E3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F3E408(unsigned int *a1, void *a2, uint64_t *a3, int a4)
{
  v6 = sub_4A7FF4(a2, 0, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 1, a1, 0, *a3, a4);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 2;
  }

  v8 = sub_41224(a2, v7);
  v9 = sub_41224(a2, v7 + 1);
  v10.i64[0] = *v8;
  v10.i64[1] = HIDWORD(*v8);
  v11 = vcvtq_f64_u64(v10);
  v10.i64[0] = *v9;
  v10.i64[1] = HIDWORD(*v9);
  v12 = vsubq_f64(vcvtq_f64_u64(v10), v11);
  v13 = vmulq_f64(v12, v12);
  v14 = vaddvq_f64(v13);
  if (v14 == 0.0)
  {
    goto LABEL_8;
  }

  if (v14 <= 0.0)
  {
    v14 = -v14;
  }

  if (v14 < 2.22044605e-16)
  {
LABEL_8:
    v15 = 0.0;
  }

  else
  {
    v20.i64[0] = *a1;
    v20.i64[1] = HIDWORD(*a1);
    v21 = vmulq_f64(v12, vsubq_f64(vcvtq_f64_u64(v20), v11));
    *&v15 = *&vdivq_f64(vaddq_f64(v21, vdupq_laneq_s64(v21, 1)), vaddq_f64(v13, vdupq_laneq_s64(v13, 1)));
  }

  v16 = 1.0;
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  v17 = v15 < 0.0;
  v18 = 0.0;
  if (!v17)
  {
    v18 = v16;
  }

  v22 = sub_6EFC0(v8, v9, v18);
  v23 = v19;
  sub_47190(&v22, a2);
}

long double sub_F3E55C(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v10 = *a1;
  sub_F484F0((a2 + 32), *(*a1 + 48), 0, 0, 0, &v80, *&a6, *&a8);
  sub_F484F0((a3 + 32), *(v10 + 48), 1, 0, 0, &__p, v11, v12);
  sub_318AE8(&v80, v81, __p, v79, 0xAAAAAAAAAAAAAAABLL * ((v79 - __p) >> 2));
  if (__p)
  {
    v79 = __p;
    operator delete(__p);
  }

  v13 = v80;
  v14 = v81;
  v15 = *v80;
  v16 = *(v80 + 1);
  v18 = *(v81 - 3);
  v17 = *(v81 - 2);
  v19 = 0.0;
  if (v80 != v81)
  {
    v20 = v80 + 12;
    if (v80 + 12 != v81)
    {
      v72 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v66 = vdupq_n_s64(0xC066800000000000);
      v67 = vdupq_n_s64(0x4076800000000000uLL);
      v65 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      HIDWORD(v21) = 1096306543;
      do
      {
        LODWORD(v21) = *(v20 - 2);
        v22 = exp(3.14159265 - *&v21 * 6.28318531 / 4294967300.0);
        *&v23 = atan((v22 - 1.0 / v22) * 0.5) * 57.2957795;
        LODWORD(v24) = *(v20 - 3);
        HIDWORD(v24) = *v20;
        v75.i64[0] = v24;
        v25 = *&v23 * 0.0174532925;
        LODWORD(v23) = *(v20 + 1);
        v26 = exp(3.14159265 - v23 * 6.28318531 / 4294967300.0);
        v27 = atan((v26 - 1.0 / v26) * 0.5) * 57.2957795 * 0.0174532925;
        v28.i64[0] = v75.u32[0];
        v28.i64[1] = v75.u32[1];
        v29 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v28), v67), v72), v66), v65);
        v76 = vsubq_f64(v29, vdupq_laneq_s64(v29, 1)).f64[0];
        v30 = sin((v25 - v27) * 0.5);
        v31 = v30 * v30;
        v32 = cos(v25);
        v33 = v32 * cos(v27);
        v34 = sin(0.5 * v76);
        v35 = atan2(sqrt(v34 * v34 * v33 + v31), sqrt(1.0 - (v34 * v34 * v33 + v31)));
        v21 = (v35 + v35) * 6372797.56;
        v19 = v19 + v21;
        v20 += 12;
      }

      while (v20 != v14);
    }
  }

  v36.i64[0] = v15;
  v36.i64[1] = v18;
  v77 = vdupq_n_s64(0x4076800000000000uLL);
  v74 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v73 = vdupq_n_s64(0xC066800000000000);
  v71 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v37 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v36), v77), v74), v73), v71);
  v38 = sin(0.5 * vsubq_f64(v37, vdupq_laneq_s64(v37, 1)).f64[0]);
  v69 = v38 * v38;
  v39 = exp(3.14159265 - v16 * 6.28318531 / 4294967300.0);
  v40 = atan((v39 - 1.0 / v39) * 0.5) * 57.2957795 * 0.0174532925;
  v41 = cos(v40);
  v42 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
  v43 = atan((v42 - 1.0 / v42) * 0.5) * 57.2957795 * 0.0174532925;
  v44 = v69 * (v41 * cos(v43));
  v45 = sin((v40 - v43) * 0.5);
  v46 = atan2(sqrt(v44 + v45 * v45), sqrt(1.0 - (v44 + v45 * v45)));
  *&v47 = fmax(v19 - (v46 + v46) * 6372797.56, 0.0);
  v70 = *&v47;
  v48 = *(a2 + 40);
  v49 = *(a3 + 32);
  LODWORD(v47) = *(v48 - 8);
  v50 = exp(3.14159265 - v47 * 6.28318531 / 4294967300.0);
  *&v51 = atan((v50 - 1.0 / v50) * 0.5) * 57.2957795;
  LODWORD(v52) = *(v48 - 12);
  HIDWORD(v52) = *v49;
  v68 = v52;
  v53 = *&v51 * 0.0174532925;
  LODWORD(v51) = v49[1];
  v54 = exp(3.14159265 - v51 * 6.28318531 / 4294967300.0);
  v55 = atan((v54 - 1.0 / v54) * 0.5) * 57.2957795 * 0.0174532925;
  v36.i64[0] = v68;
  v36.i64[1] = HIDWORD(v68);
  v56 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v36), v77), v74), v73), v71);
  v77.f64[0] = vsubq_f64(v56, vdupq_laneq_s64(v56, 1)).f64[0];
  v57 = sin((v53 - v55) * 0.5);
  v58 = v57 * v57;
  v59 = cos(v53);
  v60 = v59 * cos(v55);
  v61 = sin(0.5 * v77.f64[0]);
  v62 = atan2(sqrt(v61 * v61 * v60 + v58), sqrt(1.0 - (v61 * v61 * v60 + v58)));
  v63 = v70 + (v62 + v62) * 6372797.56;
  v81 = v13;
  operator delete(v13);
  return v63;
}

void sub_F3EAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
    v33 = *(v31 - 176);
    if (!v33)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v33 = *(v31 - 176);
    if (!v33)
    {
      goto LABEL_3;
    }
  }

  *(v31 - 168) = v33;
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

void sub_F3EAF4(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_F49E14(a1, 1, a2, &v9, a5);
  if (a5 == 0.0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v10 != v9)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }

  else
  {
    sub_31214(&v9, a2, __p, fmin(a4 / a5, 1.0));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v13 != v12)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void sub_F3EC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F3ECB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (sub_45AC50(a3) == a4)
  {

    return sub_588D8(a3);
  }

  if (!a5)
  {
    return 0;
  }

  v11 = sub_4D1F50(a2, a4);
  v12 = sub_4D1F50(a2, a4 - 1);
  v13 = (*v12 - **v12);
  v14 = *v13;
  if (*(v12 + 38))
  {
    if (v14 < 0x49)
    {
      goto LABEL_17;
    }

    v15 = v13[36];
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  else if (v14 < 0x4B || (v15 = v13[37]) == 0)
  {
LABEL_17:
    v16 = -1;
    v17 = *v11;
    v18 = (*v11 - **v11);
    v19 = *v18;
    if (*(v11 + 38))
    {
      goto LABEL_18;
    }

LABEL_14:
    if (v19 >= 0x49)
    {
      v20 = v18[36];
      if (v18[36])
      {
        goto LABEL_20;
      }
    }

    goto LABEL_21;
  }

  v16 = *(*v12 + v15);
  v17 = *v11;
  v18 = (*v11 - **v11);
  v19 = *v18;
  if (!*(v11 + 38))
  {
    goto LABEL_14;
  }

LABEL_18:
  if (v19 >= 0x4B)
  {
    v20 = v18[37];
    if (v18[37])
    {
LABEL_20:
      v21 = *&v17[v20];
      goto LABEL_22;
    }
  }

LABEL_21:
  v21 = 0xFFFF;
LABEL_22:
  v22 = v16 + 18000;
  v23 = v16 - 18000;
  if ((v22 >> 5) < 0x465u)
  {
    v23 = v22;
  }

  v24 = v21 - v23;
  if (v24 > 18000)
  {
    v24 -= 36000;
  }

  if (v24 < -17999)
  {
    v24 += 36000;
  }

  v25 = v24 / 100.0;
  if (v19 < 0x9B || !v18[77])
  {
    v26 = 0;
    v27 = *(a1 + 104);
    v28 = v25 >= 0.0;
    if (*(a1 + 146) != 1)
    {
      goto LABEL_38;
    }

LABEL_33:
    v29 = fabs(v25);
    if (v28 != v26 && v29 > *(a1 + 152))
    {
      v27 += *(a1 + 112);
    }

    goto LABEL_38;
  }

  v26 = v17[v18[77] + 1] >> 7;
  v27 = *(a1 + 104);
  v28 = v25 >= 0.0;
  if (*(a1 + 146) == 1)
  {
    goto LABEL_33;
  }

LABEL_38:
  if (v19 >= 9 && (v31 = v18[4]) != 0)
  {
    v32 = *&v17[v31];
  }

  else
  {
    v32 = 0;
  }

  if (v27 >= v32)
  {
    return v32;
  }

  else
  {
    return v27;
  }
}

uint64_t sub_F3EEF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_4D1F50(a2, a4);
  v11 = (*v10 - **v10);
  if (*v11 >= 9u && (v12 = v11[4]) != 0)
  {
    v13 = *(*v10 + v12);
    if (sub_588E0(a3) != a4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    if (sub_588E0(a3) != a4)
    {
LABEL_4:
      if (!a5)
      {
        return v13;
      }

      v14 = sub_4D1F50(a2, a4);
      v15 = sub_4D1F50(a2, a4 + 1);
      v16 = *v14;
      v17 = (*v14 - **v14);
      v18 = *v17;
      if (*(v14 + 38))
      {
        if (v18 < 0x49)
        {
          goto LABEL_20;
        }

        v19 = v17[36];
        if (!v17[36])
        {
          goto LABEL_20;
        }
      }

      else if (v18 < 0x4B || (v19 = v17[37]) == 0)
      {
LABEL_20:
        v21 = -1;
        v22 = *v15;
        v23 = (*v15 - **v15);
        v24 = *v23;
        if (*(v15 + 38))
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v21 = *&v16[v19];
      v22 = *v15;
      v23 = (*v15 - **v15);
      v24 = *v23;
      if (*(v15 + 38))
      {
LABEL_21:
        if (v24 >= 0x4B)
        {
          v25 = v23[37];
          if (v25)
          {
LABEL_23:
            v26 = *&v22[v25];
LABEL_25:
            v27 = v21 + 18000;
            v28 = v21 - 18000;
            if ((v27 >> 5) < 0x465u)
            {
              v28 = v27;
            }

            v29 = v26 - v28;
            if (v29 > 18000)
            {
              v29 -= 36000;
            }

            if (v29 < -17999)
            {
              v29 += 36000;
            }

            v30 = v29 / 100.0;
            if (v18 < 0x9B)
            {
              LODWORD(v31) = 0;
            }

            else
            {
              v31 = v17[77];
              if (v31)
              {
                LODWORD(v31) = v16[v31 + 1] >> 7;
              }
            }

            v32 = *(a1 + 104);
            v33 = v30 >= 0.0;
            if (*(a1 + 146) == 1)
            {
              v34 = fabs(v30);
              if (v33 != v31 && v34 > *(a1 + 152))
              {
                v32 += *(a1 + 112);
              }
            }

            return (v13 - v32) & ~((v13 - v32) >> 63);
          }
        }

LABEL_24:
        v26 = 0xFFFF;
        goto LABEL_25;
      }

LABEL_17:
      if (v24 >= 0x49)
      {
        v25 = v23[36];
        if (v25)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_24;
    }
  }

  return sub_5FC64(a3);
}

uint64_t sub_F3F148(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_4D1F50(a2, a3);
  if (*(a1 + 96))
  {
    v5 = *(v4 + 32);
    v6 = sub_2B51D8(*a1, v5 & 0xFFFFFFFFFFFFLL);
    v7 = (v6 - *v6);
    v8 = *v7;
    if ((v5 & 0xFF000000000000) != 0)
    {
      if (v8 >= 0x9B)
      {
        v9 = v7[77];
        if (v9)
        {
          if (*(v6 + v9))
          {
            goto LABEL_6;
          }

          return 0;
        }
      }
    }

    else if (v8 >= 0x9B)
    {
      v17 = v7[77];
      if (v17)
      {
        if ((*(v6 + v17) & 2) != 0)
        {
LABEL_6:
          v10 = sub_2B51D8(*a1, v5 & 0xFFFFFFFFFFFFLL);
          v11 = (v10 - *v10);
          if (*v11 < 0x2Fu || (v12 = v11[23]) == 0 || *(v10 + v12) == 32)
          {
            v13 = sub_2B51D8(*a1, v5 & 0xFFFFFFFFFFFFLL);
            v14 = (v13 - *v13);
            if (*v14 < 0x1Bu)
            {
              return *(a1 + 96);
            }

            v15 = v14[13];
            if (!v15 || *(a1 + 120) >= *(v13 + v15))
            {
              return *(a1 + 96);
            }
          }

          return 0;
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_F3F27C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 8 * a2;
}

void sub_F3F398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_F3F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_F3F5E0(*(a1 + 8), a5, &__p);
  sub_4D0560();
  v8 = v7;
  v10 = v9;
  sub_4D0560();
  v12 = v11;
  v14 = a4 + v13 + 1;
  sub_F4AAA0(__p, v25, v8, v10 + a3, v11, v14, &v26);
  if (v26 != v25)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v16 = v27;
  v17 = v28;
  if (v27)
  {
    v18 = v17 < sub_4D1DC0(v27);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v18 = 0;
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19 = sub_4D1DC0(v12);
  v20 = v14 < v19;
  if (v14 < v19 && v18)
  {
    v22 = sub_4D1F50(v16, v17);
    v15 = v22 == sub_4D1F50(v12, v14);
    goto LABEL_13;
  }

LABEL_12:
  v15 = v18 ^ v20 ^ 1u;
LABEL_13:
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v15;
}

void sub_F3F5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F3F5E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = 1;
  __p = 0;
  v7 = 0;
  v8 = 0;
  v5[0] = a1;
  v5[1] = &v9;
  v5[2] = &__p;
  sub_F4A690(v5, a2, (a2 + 8));
  sub_F4A690(v5, (a2 + 8), (a2 + 16));
  sub_F4A690(v5, (a2 + 16), (a2 + 24));
  if (v9 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v7 != __p)
    {
      if (((v7 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_F3F6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F3F6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *a5;
  v8 = sub_3187E8(*(a1 + 8), *a5, 1);
  if (v8 && (v9 = &v8[-*v8], *v9 >= 9u) && (v10 = *(v9 + 4)) != 0 && (v11 = &v8[v10], v12 = *v11, *&v11[v12] > HIDWORD(v7)) && (v13 = sub_318690(&v11[v12], v7)) != 0)
  {
    v14 = (v13 - *v13);
    if (*v14 >= 9u && (v15 = v14[4]) != 0)
    {
      v16 = (v13 + v15 + *(v13 + v15));
    }

    else
    {
      v16 = 0;
    }

    sub_31859C(v16, &__p);
  }

  else
  {
    __p = 0;
    v35 = 0;
    v36 = 0;
  }

  sub_4D0560();
  v18 = v17;
  v20 = v19;
  sub_4D0560();
  v22 = v21;
  v24 = a4 + v23 + 1;
  sub_F4AAA0(__p, v35, v18, v20 + a3, v21, v24, &v37);
  if (v37 != v35)
  {
    v25 = 0;
    goto LABEL_22;
  }

  v26 = v38;
  v27 = v39;
  if (v38)
  {
    v28 = v27 < sub_4D1DC0(v38);
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  v28 = 0;
  if (!v22)
  {
    goto LABEL_20;
  }

LABEL_14:
  v29 = sub_4D1DC0(v22);
  v30 = v24 < v29;
  if (v24 < v29 && v28)
  {
    v32 = sub_4D1F50(v26, v27);
    v25 = v32 == sub_4D1F50(v22, v24);
    goto LABEL_22;
  }

LABEL_21:
  v25 = v28 ^ v30 ^ 1u;
LABEL_22:
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  return v25;
}

void sub_F3F8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F3F8F8(BOOL *a1, void *a2)
{
  HIBYTE(v2[2]) = 6;
  strcpy(v2, "enable");
  *a1 = sub_5FBE4(a2, v2, a1);
  if (SHIBYTE(v2[2]) < 0)
  {
    operator delete(v2[0]);
  }

  operator new();
}

void sub_F409F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_F40A94(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3AF920(a2);
  a1[2] = a3;
  operator new();
}

void sub_F40E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_5C010(&a24);
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1A104((v24 - 96));
    if ((*(v24 - 49) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104((v24 - 96));
    if ((*(v24 - 49) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v24 - 72));
  _Unwind_Resume(a1);
}

void sub_F40E9C(uint64_t *a1@<X0>, void *a2@<X1>, __int128 **a3@<X8>)
{
  v3 = a2;
  sub_F4185C(a1, a2, &v71);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v60);
  sub_4A5C(&v60, "Checkpoints: ", 13);
  if ((v70 & 0x10) != 0)
  {
    v6 = v69;
    if (v69 < v65)
    {
      v69 = v65;
      v6 = v65;
    }

    v7 = v64;
    v5 = (v6 - v64);
    if ((v6 - v64) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

LABEL_8:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v59 = v5;
    if (v5)
    {
      memmove(&__dst, v7, v5);
    }

    goto LABEL_13;
  }

  if ((v70 & 8) != 0)
  {
    v7 = *(&v61 + 1);
    v5 = v63 - *(&v61 + 1);
    if (v63 - *(&v61 + 1) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_59;
    }

    goto LABEL_8;
  }

  v5 = 0;
  v59 = 0;
LABEL_13:
  *(&__dst.__locale_ + v5) = 0;
  sub_7E854(&__dst, 2u);
  if (v59 < 0)
  {
    operator delete(__dst.__locale_);
  }

  if (SHIBYTE(v68[1]) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v61);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  v8 = v71;
  v9 = v72;
  v57 = v3;
  if (v71 != v72)
  {
    while (!sub_7E7E4(2u))
    {
LABEL_21:
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_43;
      }
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "For segment: ", 13);
    v10 = std::ostream::operator<<();
    v11 = sub_4A5C(v10, " road", 5);
    v12 = *(sub_4D1F50(v3, v8[1]) + 36);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, ".", 1);
    v14 = std::ostream::operator<<();
    v15 = sub_4A5C(v14, " ", 1);
    v16 = sub_7052C(v15, (v12 & 0x20000000) == 0);
    v17 = sub_4A5C(v16, " ", 1);
    if ((v12 & 0x40000000) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v12 >> 31;
    }

    sub_7057C(v17, v18);
    v19 = sub_4A5C(v11, " ", 1);
    v20 = sub_2FF718(v19, __ROR8__(*v8, 32));
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    if ((v70 & 0x10) != 0)
    {
      v23 = v69;
      v24 = &v64;
      if (v69 < v65)
      {
        v69 = v65;
        v23 = v65;
        v24 = &v64;
      }
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v22 = 0;
        v59 = 0;
LABEL_39:
        *(&__dst.__locale_ + v22) = 0;
        sub_7E854(&__dst, 2u);
        if (v59 < 0)
        {
          operator delete(__dst.__locale_);
        }

        *&v60 = v56;
        *(&v60 + *(v56 - 24)) = v55;
        if (SHIBYTE(v68[1]) < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v61);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_21;
      }

      v23 = v63;
      v24 = &v61 + 1;
    }

    v25 = *v24;
    v22 = v23 - *v24;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v59 = v23 - *v24;
    if (v22)
    {
      memmove(&__dst, v25, v22);
    }

    v3 = v57;
    goto LABEL_39;
  }

LABEL_43:
  sub_F41AEC(a1, v3, &v71, a3);
  v27 = *a3;
  v26 = a3[1];
  if (*a3 != v26)
  {
    *&v60 = sub_4E4D94(v3, *a1);
    DWORD2(v60) = v28;
    sub_F47700(v27, &v60);
    v29 = a3[1];
    *&v60 = sub_4E4FC4(v3, *a1);
    DWORD2(v60) = v30;
    sub_F47700(v29 - 104, &v60);
    v27 = *a3;
    v26 = a3[1];
  }

  v31 = sub_F4AC7C(v27, v26);
  v32 = a3[1];
  if (v31 == v32)
  {
    if (*a3 != v32)
    {
      goto LABEL_76;
    }
  }

  else
  {
    sub_F4925C(a3, v31);
    if (*a3 != a3[1])
    {
      goto LABEL_76;
    }
  }

  if (sub_4D1DC0(v3) >= 2)
  {
    v33 = sub_4D1DC0(v3) - 1;
    v34 = sub_4D1F50(v3, v33);
    v35 = (*v34 - **v34);
    if (*v35 >= 9u && (v36 = v35[4]) != 0)
    {
      v37 = *(*v34 + v36);
    }

    else
    {
      v37 = 0;
    }

    sub_F41E40(a1, v3, 0, 0, v33, v37, &v60);
    v38 = a3[1];
    if (v38 >= a3[2])
    {
      sub_F48E14(a3, &v60);
      v46 = v68[0];
      a3[1] = v47;
      if (v46)
      {
        v48 = v68[1];
        v49 = v46;
        if (v68[1] != v46)
        {
          do
          {
            v50 = *(v48 - 8);
            if (v50)
            {
              *(v48 - 7) = v50;
              operator delete(v50);
            }

            v48 -= 80;
          }

          while (v48 != v46);
          v49 = v68[0];
        }

        v68[1] = v46;
        operator delete(v49);
      }
    }

    else
    {
      v39 = v60;
      v40 = v61;
      *(v38 + 8) = v62;
      *v38 = v39;
      v38[1] = v40;
      v41 = v63;
      v42 = v65;
      v63 = 0;
      *(v38 + 7) = v65;
      *(v38 + 5) = v41;
      *(v38 + 6) = v64;
      v64 = 0;
      v43 = v66;
      *(v38 + 8) = v66;
      *(v38 + 18) = __p;
      if (v43)
      {
        v44 = v42[1];
        v45 = *(v38 + 6);
        if ((v45 & (v45 - 1)) != 0)
        {
          if (v44 >= v45)
          {
            v44 %= v45;
          }
        }

        else
        {
          v44 &= v45 - 1;
        }

        v41[v44] = v38 + 56;
        v65 = 0;
        v66 = 0;
      }

      *(v38 + 10) = 0;
      *(v38 + 11) = 0;
      *(v38 + 12) = 0;
      v38[5] = *v68;
      *(v38 + 12) = v69;
      v68[0] = 0;
      v68[1] = 0;
      v69 = 0;
      a3[1] = (v38 + 104);
    }

    v51 = v65;
    if (v65)
    {
      do
      {
        v52 = *v51;
        operator delete(v51);
        v51 = v52;
      }

      while (v52);
    }

    v53 = v63;
    v63 = 0;
    if (v53)
    {
      operator delete(v53);
    }
  }

LABEL_76:
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }
}

void sub_F417B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23)
{
  sub_F42954(&a23);
  sub_F429F0(a12);
  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_F4185C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = sub_4D1F50(a2, v9);
      v11 = *(v10 + 8);
      v12 = (v11 - *v11);
      if (*v12 >= 0x11u && (v13 = v12[8]) != 0)
      {
        v14 = *(v11 + v13);
        v15 = *(a1 + 208);
        v16 = *(*(a1 + 16) + 1567);
        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = 0;
        v15 = *(a1 + 208);
        v16 = *(*(a1 + 16) + 1567);
        if (v15)
        {
          goto LABEL_14;
        }
      }

      if ((v16 & 1) == 0)
      {
        if ((v14 & 0x40) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_5;
      }

LABEL_14:
      if (!v15 || (v16 & 1) != 0)
      {
        if ((v15 & 1) != 0 || !v16)
        {
          if ((v14 & 0x60C0) != 0)
          {
LABEL_23:
            v17 = *(a1 + 8);
            v25 = *(v10 + 32);
            v18 = sub_3172DC(v17, &v25);
            if (v18 <= 0xFFFFFFFEFFFFFFFFLL && v18)
            {
              v19 = a3[2];
              if (v8 < v19)
              {
                *v8 = v18;
                *(v8 + 8) = v9;
                v8 += 16;
              }

              else
              {
                v20 = v8;
                v21 = v8 >> 4;
                v22 = v21 + 1;
                if ((v21 + 1) >> 60)
                {
                  *a3 = 0;
                  sub_1794();
                }

                if (v19 >> 3 > v22)
                {
                  v22 = v19 >> 3;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v23 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v22;
                }

                if (v23)
                {
                  if (!(v23 >> 60))
                  {
                    operator new();
                  }

                  *a3 = 0;
                  sub_1808();
                }

                v24 = (16 * v21);
                *v24 = v18;
                v24[1] = v9;
                v8 = 16 * v21 + 16;
                memcpy(0, 0, v20);
                a3[1] = v8;
                a3[2] = 0;
              }

              a3[1] = v8;
            }
          }
        }

        else if ((v14 & 0x2040) != 0)
        {
          goto LABEL_23;
        }
      }

      else if ((v14 & 0xC0) != 0)
      {
        goto LABEL_23;
      }

LABEL_5:
      if (v7 == ++v9)
      {
        goto LABEL_37;
      }
    }
  }

  v8 = 0;
LABEL_37:
  *a3 = 0;
  *(*(a1 + 296) + 64) += v8 >> 4;
}

void sub_F41AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  *v9 = __p;
  if (__p)
  {
    v9[1] = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F41AEC(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t **a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = sub_4D1DC0(a2);
  if (*a3 == a3[1])
  {
    v12 = v8 - 1;
    v13 = sub_4D1F50(a2, v8 - 1);
    v14 = (*v13 - **v13);
    if (*v14 >= 9u && (v15 = v14[4]) != 0)
    {
      v16 = *(*v13 + v15);
    }

    else
    {
      v16 = 0;
    }

    sub_F41E40(a1, a2, 0, 0, v12, v16, &v33);
    v17 = a4[1];
    if (v17 >= a4[2])
    {
      sub_F48E14(a4, &v33);
      v25 = __p[0];
      a4[1] = v26;
      if (v25)
      {
        v27 = __p[1];
        v28 = v25;
        if (__p[1] != v25)
        {
          do
          {
            v29 = *(v27 - 8);
            if (v29)
            {
              *(v27 - 7) = v29;
              operator delete(v29);
            }

            v27 -= 80;
          }

          while (v27 != v25);
          v28 = __p[0];
        }

        __p[1] = v25;
        operator delete(v28);
      }
    }

    else
    {
      v18 = v33;
      v19 = v34;
      *(v17 + 32) = v35;
      *v17 = v18;
      *(v17 + 16) = v19;
      v20 = v36;
      v21 = v38;
      v36 = 0;
      *(v17 + 56) = v38;
      *(v17 + 40) = v20;
      *(v17 + 48) = v37;
      v37 = 0;
      v22 = v39;
      *(v17 + 64) = v39;
      *(v17 + 72) = v40;
      if (v22)
      {
        v23 = v21[1];
        v24 = *(v17 + 48);
        if ((v24 & (v24 - 1)) != 0)
        {
          if (v23 >= v24)
          {
            v23 %= v24;
          }
        }

        else
        {
          v23 &= v24 - 1;
        }

        v20[v23] = v17 + 56;
        v38 = 0;
        v39 = 0;
      }

      *(v17 + 80) = 0;
      *(v17 + 88) = 0;
      *(v17 + 96) = 0;
      *(v17 + 80) = *__p;
      *(v17 + 96) = v42;
      __p[0] = 0;
      __p[1] = 0;
      v42 = 0;
      a4[1] = v17 + 104;
    }

    v30 = v38;
    if (v38)
    {
      do
      {
        v31 = *v30;
        operator delete(v30);
        v30 = v31;
      }

      while (v31);
    }

    v32 = v36;
    v36 = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    sub_F42A2C(a1, a2, a3, a4);
    v9 = a3[1];
    v10 = *a3 + 2;
    if (*a3 != v9 && v10 != v9)
    {
      v33 = **a3;
      v34 = *v10;
      operator new();
    }

    sub_F446B0(a1, a2, a3, a4);
  }
}

void sub_F41DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_F42954(va);
  sub_F429F0(v5);
  _Unwind_Resume(a1);
}

void sub_F41E24(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_F429F0(v1);
  _Unwind_Resume(a1);
}

void sub_F41E40(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (!sub_7E7E4(2u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v106);
  sub_4A5C(&v106, "Falling back to center-line geometry for segments [", 51);
  v12 = std::ostream::operator<<();
  sub_4A5C(v12, ", ", 2);
  v13 = std::ostream::operator<<();
  sub_4A5C(v13, "].", 2);
  if ((v116 & 0x10) != 0)
  {
    v15 = v115;
    if (v115 < v112)
    {
      v115 = v112;
      v15 = v112;
    }

    v16 = v111;
    v14 = v15 - v111;
    if (v15 - v111 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_98:
      sub_3244();
    }

LABEL_8:
    if (v14 >= 0x17)
    {
      operator new();
    }

    v105 = v14;
    if (v14)
    {
      memmove(&__dst, v16, v14);
    }

    goto LABEL_13;
  }

  if ((v116 & 8) != 0)
  {
    v16 = v109;
    v14 = v110 - v109;
    if ((v110 - v109) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_98;
    }

    goto LABEL_8;
  }

  v14 = 0;
  v105 = 0;
LABEL_13:
  *(&__dst + v14) = 0;
  sub_7E854(&__dst, 2u);
  if (v105 < 0)
  {
    operator delete(__dst);
  }

  if (v114 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v108);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  *(a7 + 32) = 3;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 1065353216;
  *(a7 + 88) = 0;
  *(a7 + 96) = 0;
  *(a7 + 80) = 0;
  sub_68179C(a7, 1);
  v17 = sub_73ECC(a7);
  v18 = v17;
  v19 = v17[1];
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *v17) >> 4);
  if (v19 == *v17)
  {
    sub_F49BC4(v17, 1 - v20);
  }

  else if (v20 >= 2)
  {
    v21 = *v17 + 80;
    while (v19 != v21)
    {
      v22 = *(v19 - 64);
      if (v22)
      {
        *(v19 - 56) = v22;
        operator delete(v22);
      }

      v19 -= 80;
    }

    v18[1] = v21;
  }

  v23 = *sub_73ECC(a7);
  v24 = sub_4D1F50(a2, a3);
  v26 = (*v24 - **v24);
  v27 = 0.0;
  if (*v26 >= 9u)
  {
    v28 = v26[4];
    if (v28)
    {
      LODWORD(v25) = *(*v24 + v28);
      v27 = v25;
    }
  }

  v29 = sub_4D1F50(a2, a5);
  v30 = (*v29 - **v29);
  v31 = 0.0;
  if (*v30 >= 9u)
  {
    v32 = v30[4];
    if (v32)
    {
      LODWORD(v31) = *(*v29 + v32);
      v31 = *&v31;
    }
  }

  if (a3 <= a5 + 1)
  {
    v33 = a5 + 1;
  }

  else
  {
    v33 = a3;
  }

  if (a5 + 1 > a3)
  {
    v34 = 0;
    v35 = a4 / v27;
    v36 = a3 - v33;
    v37 = a6 / v31;
    do
    {
      v38 = sub_4D1F50(a2, a3 + v34);
      sub_2B7A20(*a1, (((*(v38 + 36) & 0x20000000) << 19) | (*(v38 + 36) << 32) | *(v38 + 32)) ^ 0x1000000000000, &v106);
      if (v34)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v35;
      }

      if (a5 - a3 == v34)
      {
        v40 = v37;
      }

      else
      {
        v40 = 1.0;
      }

      sub_F3EAF4(&v106, 0, &__dst, v39, v40);
      sub_318AE8(v23 + 16, *(v23 + 24), __dst, v104, 0xAAAAAAAAAAAAAAABLL * ((v104 - __dst) >> 2));
      if (__dst)
      {
        v104 = __dst;
        operator delete(__dst);
      }

      if (v107)
      {
        v108.__locale_ = v107;
        operator delete(v107);
      }

      ++v34;
    }

    while (v36 + v34);
  }

  v41 = 0xAAAAAAAAAAAAAAABLL * ((*(v23 + 24) - *(v23 + 16)) >> 2);
  v106 = 0;
  v107 = 0;
  v108.__locale_ = 0;
  sub_42058((v23 + 16), v41, 0, 1, &v106, 0.05);
  if (v106)
  {
    operator delete(v106);
  }

  v42 = a1[1];
  v106 = *(sub_4D1F50(a2, a3) + 32);
  v43 = sub_3172DC(v42, &v106);
  v44 = v43;
  v45 = v43;
  v46 = 0x7FFFFFFFFFFFFFFFLL;
  if (v43 > 0xFFFFFFFEFFFFFFFFLL || !v43)
  {
    goto LABEL_65;
  }

  v47 = sub_319180(a1[1], v43, 1);
  if (v47 && (v48 = &v47[-*v47], *v48 >= 5u) && (v49 = *(v48 + 2)) != 0 && (v50 = &v47[v49], v51 = *v50, *&v50[v51] > HIDWORD(v44)) && (v52 = sub_3195D8(&v50[v51], v44)) != 0)
  {
    v53 = (v52 - *v52);
    if (*v53 < 7u)
    {
      if (a4)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    v54 = v53[3];
    if (v54)
    {
      if (*(v52 + v54) == a4)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v54 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v54 == a4)
  {
LABEL_64:
    v46 = sub_F47A68(a1[1], v44, *(v23 + 16), (*(v23 + 16) + 12));
  }

LABEL_65:
  v55 = a1[1];
  v106 = *(sub_4D1F50(a2, a5) + 32);
  v56 = sub_3172DC(v55, &v106);
  v57 = v56;
  v102 = v45;
  v58 = v56;
  v59 = 0x7FFFFFFFFFFFFFFFLL;
  if (v56 > 0xFFFFFFFEFFFFFFFFLL || !v56)
  {
    goto LABEL_79;
  }

  v60 = sub_319180(a1[1], v56, 1);
  if (v60 && (v61 = &v60[-*v60], *v61 >= 5u) && (v62 = *(v61 + 2)) != 0 && (v63 = &v60[v62], v64 = *v63, *&v63[v64] > HIDWORD(v57)) && (v65 = sub_3195D8(&v63[v64], v57)) != 0)
  {
    v66 = (v65 - *v65);
    if (*v66 < 7u)
    {
      if (a6)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    v67 = v66[3];
    if (v67)
    {
      if (*(v65 + v67) == a6)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v67 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v67 == a6)
  {
LABEL_78:
    v59 = -sub_F47A68(a1[1], v57, (*(v23 + 24) - 12), (*(v23 + 24) - 24));
  }

LABEL_79:
  if (v46 != 0x7FFFFFFFFFFFFFFFLL || v59 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v68 = *(v23 + 24);
    v106 = *(v23 + 16);
    __dst = v68;
    sub_F49F68(&v106, &__dst);
    v70 = *(v23 + 16);
    v69 = *(v23 + 24);
    if (v70 == v69)
    {
LABEL_101:
      if (v70 != v69)
      {
        *(v23 + 24) = v70;
      }
    }

    else
    {
      v71 = v70 - 3;
      while (v71 + 6 != v69)
      {
        v72 = v71[3];
        v73 = v71[4];
        v71 += 3;
        if (v72 == v71[3] && v73 == v71[4])
        {
          v75 = v71 + 6;
          if (v71 + 6 != v69)
          {
            do
            {
              if (*v71 != *v75 || v71[1] != v75[1])
              {
                v77 = v75[2];
                *(v71 + 3) = *v75;
                v71 += 3;
                v71[2] = v77;
              }

              v75 += 3;
            }

            while (v75 != v69);
            v69 = *(v23 + 24);
          }

          v70 = v71 + 3;
          goto LABEL_101;
        }
      }
    }

    if (v46 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = sub_319180(a1[1], v102, 1);
      if (v78 && (v79 = &v78[-*v78], *v79 >= 5u) && (v80 = *(v79 + 2)) != 0 && (v81 = &v78[v80], v82 = *v81, *&v81[v82] > HIDWORD(v44)) && (v83 = sub_3195D8(&v81[v82], v44)) != 0)
      {
        v84 = v83 + *(v83 - *v83 + 8);
        v85 = *v84;
        LODWORD(v84) = *(v84 + 4);
        if (v84 >= 0xFFFFFFFE)
        {
          v84 = 4294967294;
        }

        else
        {
          v84 = v84;
        }

        v86 = v84 << 32;
      }

      else
      {
        v86 = 0xFFFFFFFF00000000;
        v85 = 0xFFFFFFFFLL;
      }

      v87 = v86 | v85;
      v88 = *(v23 + 16);
      *v88 = v87;
      *(v88 + 8) = 0x7FFFFFFF;
    }

    if (v59 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v89 = sub_319180(a1[1], v58, 1);
      if (v89 && (v90 = &v89[-*v89], *v90 >= 5u) && (v91 = *(v90 + 2)) != 0 && (v92 = &v89[v91], v93 = *v92, *&v92[v93] > HIDWORD(v57)) && (v94 = sub_3195D8(&v92[v93], v57)) != 0)
      {
        v95 = v94 + *(v94 - *v94 + 8);
        v96 = *v95;
        LODWORD(v95) = *(v95 + 4);
        if (v95 >= 0xFFFFFFFE)
        {
          v95 = 4294967294;
        }

        else
        {
          v95 = v95;
        }

        v97 = v95 << 32;
      }

      else
      {
        v97 = 0xFFFFFFFF00000000;
        v96 = 0xFFFFFFFFLL;
      }

      v98 = v97 | v96;
      v99 = *(v23 + 24);
      *(v99 - 12) = v98;
      *(v99 - 4) = 0x7FFFFFFF;
    }
  }
}

void sub_F427E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_F42918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_F42954(v17);
  _Unwind_Resume(a1);
}

void *sub_F42954(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 64);
        if (v5)
        {
          *(v3 - 56) = v5;
          operator delete(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  v6 = a1[7];
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = a1[5];
  a1[5] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

uint64_t *sub_F429F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_F4925C(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_F42A2C(uint64_t *a1, void *a2, unint64_t **a3, uint64_t a4)
{
  sub_F43240(a1, a2, *a3, 1, &v98);
  if (*(&v98 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v99 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v106;
    if (v106 != *(&v106 + 1))
    {
      while (*(v9 + 16) != *(v9 + 24))
      {
        v9 += 80;
        if (v9 == *(&v106 + 1))
        {
          if (sub_45AC50(&v98))
          {
            v10 = sub_45AC50(&v98);
            v11 = sub_588D8(&v98);
            sub_F41E40(a1, a2, 0, 0, v10, v11, &v88);
            if (*(&v88 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v89 + 1) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v12 = __p[0];
              if (__p[0] != __p[1])
              {
                while (v12[2] != v12[3])
                {
                  v12 += 10;
                  if (v12 == __p[1])
                  {
                    sub_F442DC(a1, &v98, &v88);
                    v13 = *(a4 + 8);
                    if (v13 >= *(a4 + 16))
                    {
                      sub_F48E14(a4, &v88);
                    }

                    else
                    {
                      v14 = v88;
                      v15 = v89;
                      *(v13 + 32) = v90;
                      *v13 = v14;
                      *(v13 + 16) = v15;
                      v16 = v91;
                      v17 = v93;
                      v91 = 0;
                      *(v13 + 56) = v93;
                      *(v13 + 40) = v16;
                      *(v13 + 48) = v92;
                      v92 = 0;
                      v18 = v94;
                      *(v13 + 64) = v94;
                      *(v13 + 72) = v95;
                      if (v18)
                      {
                        v19 = v17[1];
                        v20 = *(v13 + 48);
                        if ((v20 & (v20 - 1)) != 0)
                        {
                          if (v19 >= v20)
                          {
                            v19 %= v20;
                          }
                        }

                        else
                        {
                          v19 &= v20 - 1;
                        }

                        v16[v19] = v13 + 56;
                        v93 = 0;
                        v94 = 0;
                      }

                      *(v13 + 80) = 0;
                      *(v13 + 88) = 0;
                      *(v13 + 96) = 0;
                      *(v13 + 80) = *__p;
                      *(v13 + 96) = v97;
                      __p[0] = 0;
                      __p[1] = 0;
                      v97 = 0;
                      v80 = v13 + 104;
                      *(a4 + 8) = v13 + 104;
                    }

                    *(a4 + 8) = v80;
                    if (v80 < *(a4 + 16))
                    {
                      v81 = v98;
                      v82 = v99;
                      *(v80 + 32) = v100;
                      *v80 = v81;
                      *(v80 + 16) = v82;
                      v83 = v101;
                      v84 = v103;
                      v101 = 0;
                      *(v80 + 56) = v103;
                      *(v80 + 40) = v83;
                      *(v80 + 48) = v102;
                      v102 = 0;
                      v85 = v104;
                      *(v80 + 64) = v104;
                      *(v80 + 72) = v105;
                      if (v85)
                      {
                        v86 = v84[1];
                        v87 = *(v80 + 48);
                        if ((v87 & (v87 - 1)) != 0)
                        {
                          if (v86 >= v87)
                          {
                            v86 %= v87;
                          }
                        }

                        else
                        {
                          v86 &= v87 - 1;
                        }

                        v83[v86] = v80 + 56;
                        v103 = 0;
                        v104 = 0;
                      }

                      *(v80 + 80) = 0;
                      *(v80 + 88) = 0;
                      *(v80 + 96) = 0;
                      *(v80 + 80) = v106;
                      *(v80 + 96) = v107;
                      v106 = 0uLL;
                      v107 = 0;
                      v72 = v80 + 104;
                      goto LABEL_82;
                    }

                    goto LABEL_70;
                  }
                }
              }
            }

            v41 = *(a4 + 8);
            if (v41 >= *(a4 + 16))
            {
LABEL_70:
              sub_F48E14(a4, &v98);
            }

            else
            {
              v42 = v98;
              v43 = v99;
              *(v41 + 32) = v100;
              *v41 = v42;
              *(v41 + 16) = v43;
              v44 = v101;
              v45 = v103;
              v101 = 0;
              *(v41 + 56) = v103;
              *(v41 + 40) = v44;
              *(v41 + 48) = v102;
              v102 = 0;
              v46 = v104;
              *(v41 + 64) = v104;
              *(v41 + 72) = v105;
              if (v46)
              {
                v47 = v45[1];
                v48 = *(v41 + 48);
                if ((v48 & (v48 - 1)) != 0)
                {
                  if (v47 >= v48)
                  {
                    v47 %= v48;
                  }
                }

                else
                {
                  v47 &= v48 - 1;
                }

                v44[v47] = v41 + 56;
                v103 = 0;
                v104 = 0;
              }

              *(v41 + 80) = 0;
              *(v41 + 88) = 0;
              *(v41 + 96) = 0;
              *(v41 + 80) = v106;
              *(v41 + 96) = v107;
              v106 = 0uLL;
              v107 = 0;
              v72 = v41 + 104;
LABEL_82:
              *(a4 + 8) = v72;
            }

            *(a4 + 8) = v72;
            ++*(a1[37] + 48);
            v74 = __p[0];
            if (__p[0])
            {
              v75 = __p[1];
              v76 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v77 = *(v75 - 8);
                  if (v77)
                  {
                    *(v75 - 7) = v77;
                    operator delete(v77);
                  }

                  v75 -= 80;
                }

                while (v75 != v74);
                v76 = __p[0];
              }

              __p[1] = v74;
              operator delete(v76);
            }

            v78 = v93;
            if (v93)
            {
              do
              {
                v79 = *v78;
                operator delete(v78);
                v78 = v79;
              }

              while (v79);
            }

            goto LABEL_51;
          }

          v64 = *(a4 + 8);
          if (v64 >= *(a4 + 16))
          {
            sub_F48E14(a4, &v98);
          }

          else
          {
            v65 = v98;
            v66 = v99;
            *(v64 + 32) = v100;
            *v64 = v65;
            *(v64 + 16) = v66;
            v67 = v101;
            v68 = v103;
            v101 = 0;
            *(v64 + 56) = v103;
            *(v64 + 40) = v67;
            *(v64 + 48) = v102;
            v102 = 0;
            v69 = v104;
            *(v64 + 64) = v104;
            *(v64 + 72) = v105;
            if (v69)
            {
              v70 = v68[1];
              v71 = *(v64 + 48);
              if ((v71 & (v71 - 1)) != 0)
              {
                if (v70 >= v71)
                {
                  v70 %= v71;
                }
              }

              else
              {
                v70 &= v71 - 1;
              }

              v67[v70] = v64 + 56;
              v103 = 0;
              v104 = 0;
            }

            *(v64 + 80) = 0;
            *(v64 + 88) = 0;
            *(v64 + 96) = 0;
            *(v64 + 80) = v106;
            *(v64 + 96) = v107;
            v106 = 0uLL;
            v107 = 0;
            v73 = v64 + 104;
            *(a4 + 8) = v64 + 104;
          }

          *(a4 + 8) = v73;
          ++*(a1[37] + 48);
          v57 = v106;
          if (v106)
          {
            goto LABEL_54;
          }

          goto LABEL_61;
        }
      }
    }
  }

  v22 = **a3;
  v21 = (*a3)[1];
  v23 = sub_319180(a1[1], v22, 1);
  if (v23 && (v24 = &v23[-*v23], *v24 >= 5u) && (v25 = *(v24 + 2)) != 0 && (v26 = &v23[v25], v27 = *v26, *&v26[v27] > HIDWORD(v22)) && (v28 = sub_3195D8(&v26[v27], v22)) != 0)
  {
    v29 = (v28 - *v28);
    if (*v29 >= 7u && (v30 = v29[3]) != 0)
    {
      v31 = *(v28 + v30);
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_F41E40(a1, a2, 0, 0, v21, v31, &v88);
  if (*(&v88 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v89 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = __p[0];
    if (__p[0] != __p[1])
    {
      while (v32[2] != v32[3])
      {
        v32 += 10;
        if (v32 == __p[1])
        {
          v33 = *(a4 + 8);
          if (v33 >= *(a4 + 16))
          {
            sub_F48E14(a4, &v88);
            *(a4 + 8) = v49;
            break;
          }

          v34 = v88;
          v35 = v89;
          *(v33 + 32) = v90;
          *v33 = v34;
          *(v33 + 16) = v35;
          v36 = v91;
          v37 = v93;
          v91 = 0;
          *(v33 + 56) = v93;
          *(v33 + 40) = v36;
          *(v33 + 48) = v92;
          v92 = 0;
          v38 = v94;
          *(v33 + 64) = v94;
          *(v33 + 72) = v95;
          if (v38)
          {
            v39 = v37[1];
            v40 = *(v33 + 48);
            if ((v40 & (v40 - 1)) != 0)
            {
              if (v39 >= v40)
              {
                v39 %= v40;
              }
            }

            else
            {
              v39 &= v40 - 1;
            }

            v36[v39] = v33 + 56;
            v93 = 0;
            v94 = 0;
          }

          *(v33 + 80) = 0;
          *(v33 + 88) = 0;
          *(v33 + 96) = 0;
          *(v33 + 80) = *__p;
          *(v33 + 96) = v97;
          __p[0] = 0;
          __p[1] = 0;
          v97 = 0;
          *(a4 + 8) = v33 + 104;
          *(a4 + 8) = v33 + 104;
          ++*(a1[37] + 68);
          v50 = __p[0];
          if (__p[0])
          {
            goto LABEL_42;
          }

          goto LABEL_49;
        }
      }
    }
  }

  ++*(a1[37] + 68);
  v50 = __p[0];
  if (__p[0])
  {
LABEL_42:
    v51 = __p[1];
    v52 = v50;
    if (__p[1] != v50)
    {
      do
      {
        v53 = *(v51 - 8);
        if (v53)
        {
          *(v51 - 7) = v53;
          operator delete(v53);
        }

        v51 -= 80;
      }

      while (v51 != v50);
      v52 = __p[0];
    }

    __p[1] = v50;
    operator delete(v52);
  }

LABEL_49:
  v54 = v93;
  if (v93)
  {
    do
    {
      v55 = *v54;
      operator delete(v54);
      v54 = v55;
    }

    while (v55);
  }

LABEL_51:
  v56 = v91;
  v91 = 0;
  if (v56)
  {
    operator delete(v56);
  }

  v57 = v106;
  if (v106)
  {
LABEL_54:
    v58 = *(&v106 + 1);
    v59 = v57;
    if (*(&v106 + 1) != v57)
    {
      do
      {
        v60 = *(v58 - 8);
        if (v60)
        {
          *(v58 - 7) = v60;
          operator delete(v60);
        }

        v58 -= 80;
      }

      while (v58 != v57);
      v59 = v106;
    }

    *(&v106 + 1) = v57;
    operator delete(v59);
  }

LABEL_61:
  v61 = v103;
  if (v103)
  {
    do
    {
      v62 = *v61;
      operator delete(v61);
      v61 = v62;
    }

    while (v62);
  }

  v63 = v101;
  v101 = 0;
  if (v63)
  {
    operator delete(v63);
  }
}

void sub_F431E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_F42954(&a9);
  sub_F42954(&a22);
  _Unwind_Resume(a1);
}

void sub_F43204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F42954(va);
  _Unwind_Resume(a1);
}

void sub_F43218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F42954(va);
  _Unwind_Resume(a1);
}

void sub_F4322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F42954(va);
  _Unwind_Resume(a1);
}

void sub_F43240(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  *a5 = xmmword_2297C00;
  *(a5 + 16) = xmmword_2297C00;
  *(a5 + 32) = 3;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 1065353216;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 80) = 0;
  sub_68179C(a5, 4);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3[1];
  }

  sub_501CE8(a5, v9);
  if (a4)
  {
    goto LABEL_5;
  }

  v11 = *a3;
  v12 = sub_319180(*(a1 + 8), *a3, 1);
  if (v12 && (v13 = &v12[-*v12], *v13 >= 5u) && (v14 = *(v13 + 2)) != 0 && (v15 = &v12[v14], v16 = *v15, *&v15[v16] > HIDWORD(v11)) && (v17 = sub_3195D8(&v15[v16], v11)) != 0)
  {
    v18 = (v17 - *v17);
    if (*v18 < 7u || (v19 = v18[3]) == 0)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_15;
    }

    v10 = *(v17 + v19);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_15:
  sub_F5329C(a5, v10);
  if (a4)
  {
    v20 = a3[1];
  }

  else
  {
    v20 = sub_4D1DC0(a2) - 1;
  }

  sub_F53294(a5, v20);
  if (!a4)
  {
    v31 = sub_4D1DC0(a2);
    v27 = *sub_4D1F50(a2, v31 - 1);
    v32 = (v27 - *v27);
    if (*v32 < 9u)
    {
      goto LABEL_31;
    }

    v29 = v32[4];
    if (!v29)
    {
      goto LABEL_31;
    }

LABEL_30:
    v30 = *(v27 + v29);
    goto LABEL_32;
  }

  v21 = *a3;
  v22 = sub_319180(*(a1 + 8), *a3, 1);
  if (v22)
  {
    v23 = &v22[-*v22];
    if (*v23 >= 5u)
    {
      v24 = *(v23 + 2);
      if (v24)
      {
        v25 = &v22[v24];
        v26 = *v25;
        if (*&v25[v26] > HIDWORD(v21))
        {
          v27 = sub_3195D8(&v25[v26], v21);
          if (v27)
          {
            v28 = (v27 - *v27);
            if (*v28 < 7u || (v29 = v28[3]) == 0)
            {
LABEL_31:
              v30 = 0;
              goto LABEL_32;
            }

            goto LABEL_30;
          }
        }
      }
    }
  }

  v30 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:
  sub_F532A4(a5, v30);
  v33 = sub_45AC50(a5);
  v34 = sub_588E0(a5);
  if (v33 <= v34 + 1)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = v33;
  }

  v141 = 0;
  v142 = 0;
  v143 = 0;
  v36 = a5;
  if (v33 < v34 + 1)
  {
    if (!((v35 - v33) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v37 = 0;
  v140 = 256;
  v116 = a3;
  v122 = a1;
  do
  {
    v38 = *(&v140 + v37);
    v39 = sub_317184(*(a1 + 8), *a3);
    v117 = v37;
    if (v38 == a4)
    {
      v40 = *a3;
    }

    else
    {
      v40 = v39;
    }

    sub_F478D8(*(a1 + 8), v40, v38, &v138);
    v42 = v138;
    v41 = v139;
    if (v138 != v139)
    {
      v119 = v38 != a4;
      v121 = v38;
      v118 = v139;
      while (1)
      {
        v43 = *v42;
        sub_3182C8(*(a1 + 8), *v42, &v136);
        v44 = v136;
        v45 = v137;
        if (v38 == 1)
        {
          v46 = v137 - 2;
          if (v136 != v137 && v46 > v136)
          {
            v48 = (v137 - 4);
            v49 = &v136->u32[2];
            if (v137 - 4 > &v136->u32[2])
            {
              v49 = v137 - 4;
            }

            v50 = v49 - 2;
            v51 = (v49 - 2) - v136;
            v52 = 1;
            if (v51)
            {
              v52 = 2;
            }

            v53 = v52 + ((v51 - (v51 != 0)) >> 4);
            if (v53 < 0xA)
            {
              goto LABEL_68;
            }

            if (v50 == v136)
            {
              v54 = v136;
            }

            else
            {
              v54 = &v136->i8[1];
            }

            v72 = v50 == v136;
            v55 = (v50 - v54) >> 4;
            if (!v72)
            {
              ++v55;
            }

            if (v136 < v137 && &v46[-2 * v55] < &v136->u32[2 * v55 + 2])
            {
              goto LABEL_68;
            }

            v56 = 2 * (v53 & 0x1FFFFFFFFFFFFFFCLL);
            v46 = (v46 - v56 * 4);
            v57 = &v136->u32[v56];
            v58 = v136 + 1;
            v59 = v53 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = v58[-1];
              v61 = *v58;
              v62 = vextq_s8(v48[-1], v48[-1], 8uLL);
              v58[-1] = vextq_s8(*v48, *v48, 8uLL);
              *v58 = v62;
              v48[-1] = vextq_s8(v61, v61, 8uLL);
              *v48 = vextq_s8(v60, v60, 8uLL);
              v58 += 2;
              v48 -= 2;
              v59 -= 4;
            }

            while (v59);
            v44 = v57;
            if (v53 != (v53 & 0x1FFFFFFFFFFFFFFCLL))
            {
LABEL_68:
              v63 = v44 + 2;
              do
              {
                v64 = *(v63 - 1);
                *(v63 - 1) = *v46;
                *v46 = v64;
                v46 -= 2;
                v65 = v63 >= v46;
                v63 += 2;
              }

              while (!v65);
            }

            v44 = v136;
            v45 = v137;
          }

          if (v44 != v45)
          {
            do
            {
              *v44 = *v44 | (((v44[1] & 0x7FFFFFFF | ((v44[1] >> 30 == 0) << 31)) ^ 0x20000000) << 32);
              v44 += 2;
            }

            while (v44 != v45);
            v44 = v136;
            v45 = v137;
          }
        }

        v66 = v141;
        v67 = (v142 - v141) >> 3;
        v68 = (v45 - v44) >> 3;
        if (v68 < v67)
        {
          v67 = v68;
        }

        if (v67)
        {
          v69 = 8 * v67;
          v70 = v44;
          v71 = &v141[8 * v67];
          while (1)
          {
            v72 = *v66 == *v70 && *(v66 + 1) == v70[1];
            if (!v72)
            {
              break;
            }

            v66 += 8;
            v70 += 2;
            v69 -= 8;
            if (!v69)
            {
              v66 = v71;
              break;
            }
          }
        }

        if (v66 != v142)
        {
          if (!v44)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v73 = *(a1 + 8);
        LODWORD(v133) = v43;
        LODWORD(v135) = 1;
        *&v123 = &v135;
        *(&v123 + 1) = &v133;
        v74 = *(v73 + 3856) + 1;
        *(v73 + 3856) = v74;
        if (!*v73)
        {
          goto LABEL_121;
        }

        if (*(v73 + 3184) == v43)
        {
          ++*(v73 + 3864);
          *(v73 + 3192) = v74;
          v75 = *(v73 + 3200);
          if (!v75)
          {
            goto LABEL_121;
          }
        }

        else if (*(v73 + 3208) == v43)
        {
          ++*(v73 + 3864);
          *(v73 + 3216) = v74;
          v75 = *(v73 + 3224);
          if (!v75)
          {
            goto LABEL_121;
          }
        }

        else if (*(v73 + 3232) == v43)
        {
          ++*(v73 + 3864);
          *(v73 + 3240) = v74;
          v75 = *(v73 + 3248);
          if (!v75)
          {
            goto LABEL_121;
          }
        }

        else if (*(v73 + 3256) == v43)
        {
          ++*(v73 + 3864);
          *(v73 + 3264) = v74;
          v75 = *(v73 + 3272);
          if (!v75)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v76 = *(v73 + 3240);
          v77 = *(v73 + 3216);
          v78 = *(v73 + 3192);
          v79 = *(v73 + 3264);
          v75 = sub_2D52A4(*v73, 33, v43, 1);
          if (v78 >= v74)
          {
            v80 = v74;
          }

          else
          {
            v80 = v78;
          }

          v81 = 132;
          if (v78 >= v74)
          {
            v81 = 0;
          }

          if (v77 < v80)
          {
            v80 = v77;
            v81 = 133;
          }

          if (v76 < v80)
          {
            v81 = 134;
            v80 = v76;
          }

          v65 = v79 >= v80;
          v82 = 135;
          if (v65)
          {
            v82 = v81;
          }

          v83 = v73 + 16 + 24 * v82;
          *v83 = v133;
          *(v83 + 8) = *(v73 + 3856);
          *(v83 + 16) = v75;
          if (!v75)
          {
            sub_319354(&v123);
            goto LABEL_121;
          }
        }

        v84 = (v75 + *v75);
        v85 = (v84 - *v84);
        if (*v85 >= 9u)
        {
          v86 = v85[4];
          if (v86)
          {
            v87 = (v84 + v86);
            v88 = *v87;
            if (*(v87 + v88) > HIDWORD(v43))
            {
              v89 = sub_319028((v87 + v88), v43);
              if (v89)
              {
                v90 = (v89 + *(v89 - *v89 + 4));
                v91 = *v90;
                v92 = v90[1] << 32;
                goto LABEL_122;
              }
            }
          }
        }

LABEL_121:
        v91 = 0;
        v92 = 0xFFFFFFFF00000000;
LABEL_122:
        v93 = *(v122 + 8);
        LODWORD(v133) = v43;
        LODWORD(v135) = 1;
        *&v123 = &v135;
        *(&v123 + 1) = &v133;
        v94 = *(v93 + 3856) + 1;
        *(v93 + 3856) = v94;
        if (!*v93)
        {
          goto LABEL_157;
        }

        if (*(v93 + 3184) == v43)
        {
          ++*(v93 + 3864);
          *(v93 + 3192) = v94;
          v95 = *(v93 + 3200);
          if (!v95)
          {
            goto LABEL_157;
          }
        }

        else if (*(v93 + 3208) == v43)
        {
          ++*(v93 + 3864);
          *(v93 + 3216) = v94;
          v95 = *(v93 + 3224);
          if (!v95)
          {
            goto LABEL_157;
          }
        }

        else if (*(v93 + 3232) == v43)
        {
          ++*(v93 + 3864);
          *(v93 + 3240) = v94;
          v95 = *(v93 + 3248);
          if (!v95)
          {
            goto LABEL_157;
          }
        }

        else if (*(v93 + 3256) == v43)
        {
          ++*(v93 + 3864);
          *(v93 + 3264) = v94;
          v95 = *(v93 + 3272);
          if (!v95)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v96 = *(v93 + 3216);
          v97 = *(v93 + 3192);
          v114 = *(v93 + 3264);
          v115 = *(v93 + 3240);
          v95 = sub_2D52A4(*v93, 33, v43, 1);
          if (v97 >= v94)
          {
            v98 = v94;
          }

          else
          {
            v98 = v97;
          }

          v99 = 132;
          if (v97 >= v94)
          {
            v99 = 0;
          }

          if (v96 < v98)
          {
            v98 = v96;
            v99 = 133;
          }

          if (v115 < v98)
          {
            v99 = 134;
            v98 = v115;
          }

          v65 = v114 >= v98;
          v100 = 135;
          if (v65)
          {
            v100 = v99;
          }

          v101 = v93 + 16 + 24 * v100;
          *v101 = v133;
          *(v101 + 8) = *(v93 + 3856);
          *(v101 + 16) = v95;
          if (!v95)
          {
            sub_319354(&v123);
            goto LABEL_157;
          }
        }

        v102 = (v95 + *v95);
        v103 = (v102 - *v102);
        if (*v103 >= 9u)
        {
          v104 = v103[4];
          v105 = v36;
          if (!v104 || (v106 = (v102 + v104), v107 = *v106, *(v106 + v107) <= HIDWORD(v43)))
          {
            *&v135 = v91 | v92;
            *(&v135 + 1) = 0xFFFFFFFF00000000;
            if (!v121)
            {
              goto LABEL_155;
            }

            goto LABEL_158;
          }

          v108 = sub_319028((v106 + v107), v43);
          if (v108)
          {
            v109 = (v108 + *(v108 - *v108 + 6));
            v110 = *v109;
            v111 = v109[1] << 32;
            v105 = v36;
            *&v135 = v91 | v92;
            *(&v135 + 1) = v110 | v111;
            if (!v121)
            {
              goto LABEL_155;
            }

            goto LABEL_158;
          }
        }

LABEL_157:
        v105 = v36;
        *&v135 = v91 | v92;
        *(&v135 + 1) = 0xFFFFFFFF00000000;
        if (!v121)
        {
LABEL_155:
          v112 = 0;
          v113 = (v142 - v141) >> 3;
          goto LABEL_159;
        }

LABEL_158:
        v113 = (v137 - v136) >> 3;
        v112 = v113 - ((v142 - v141) >> 3);
LABEL_159:
        sub_317A1C(*(v122 + 8), &v135, v112, v113, &v133);
        if (v134 != v133)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 2) < 0x1555555555555556)
          {
            operator new();
          }

          sub_1794();
        }

        v123 = v135;
        __p = 0;
        v125 = 0;
        v126 = 0;
        v127 = -1;
        v128 = 0x7FFFFFFFFFFFFFFFLL;
        v129 = 0;
        v130 = 0x7FF8000000000000;
        v131 = 257;
        v132 = v119;
        v38 = v121;
        sub_F53650(v105, &v123);
        a1 = v122;
        if (__p)
        {
          v125 = __p;
          operator delete(__p);
        }

        v41 = v118;
        if (v133)
        {
          v134 = v133;
          operator delete(v133);
        }

        v44 = v136;
        if (!v136)
        {
          goto LABEL_46;
        }

LABEL_45:
        v137 = v44;
        operator delete(v44);
LABEL_46:
        if (++v42 == v41)
        {
          v42 = v138;
          a3 = v116;
          break;
        }
      }
    }

    if (v42)
    {
      v139 = v42;
      operator delete(v42);
    }

    v37 = v117 + 1;
  }

  while (v117 != 1);
  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }
}

void sub_F44194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  v45 = *(v43 - 248);
  if (v45)
  {
    *(v43 - 240) = v45;
    operator delete(v45);
    v46 = *(v43 - 224);
    if (v46)
    {
LABEL_7:
      *(v43 - 216) = v46;
      operator delete(v46);
      v47 = *(v43 - 192);
      if (v47)
      {
LABEL_8:
        *(v43 - 184) = v47;
        operator delete(v47);
        sub_F42954(v42);
        _Unwind_Resume(a1);
      }

LABEL_6:
      sub_F42954(v42);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v46 = *(v43 - 224);
    if (v46)
    {
      goto LABEL_7;
    }
  }

  v47 = *(v43 - 192);
  if (v47)
  {
    goto LABEL_8;
  }

  goto LABEL_6;
}

void sub_F442DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_73ECC(a2);
  if (*v6 != v6[1])
  {
    v7 = *sub_73ECC(a3);
    v8 = sub_73ECC(a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = 1.0;
    if (*v8 == v10)
    {
      goto LABEL_7;
    }

    do
    {
      sub_F3E408(*(v9 + 16), v7 + 2, (a1 + 288), 0);
      if (v12 < v11)
      {
        v11 = v12;
      }

      v9 += 80;
    }

    while (v9 != v10);
    if (v11 >= 0.0)
    {
LABEL_7:
      v13 = 0.0;
      sub_2F4C8(v7 + 2, 0, &v45, 0.0, v11);
      v14 = v7[2];
      if (v14)
      {
        v7[3] = v14;
        operator delete(v14);
      }

      v15 = v45;
      *(v7 + 1) = v45;
      v7[4] = v46;
      v16 = *(&v15 + 1);
      v17 = (v15 + 12);
      if (v15 != *(&v15 + 1) && v17 != *(&v15 + 1))
      {
        v22 = 0.0;
        v42 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        v40 = vdupq_n_s64(0xC066800000000000);
        v41 = vdupq_n_s64(0x4076800000000000uLL);
        v39 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        HIDWORD(v23) = 1096306543;
        do
        {
          LODWORD(v23) = *(v17 - 2);
          v24 = exp(3.14159265 - *&v23 * 6.28318531 / 4294967300.0);
          *&v25 = atan((v24 - 1.0 / v24) * 0.5) * 57.2957795;
          LODWORD(v26) = *(v17 - 3);
          HIDWORD(v26) = *v17;
          v43 = v26;
          v27 = *&v25 * 0.0174532925;
          LODWORD(v25) = v17[1];
          v28 = exp(3.14159265 - v25 * 6.28318531 / 4294967300.0);
          v29 = atan((v28 - 1.0 / v28) * 0.5) * 57.2957795 * 0.0174532925;
          v30.i64[0] = v43;
          v30.i64[1] = HIDWORD(v43);
          v31 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v30), v41), v42), v40), v39);
          v44 = vsubq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0];
          v32 = sin((v27 - v29) * 0.5);
          v33 = v32 * v32;
          v34 = cos(v27);
          v35 = v34 * cos(v29);
          v36 = sin(0.5 * v44);
          v37 = atan2(sqrt(v36 * v36 * v35 + v33), sqrt(1.0 - (v36 * v36 * v35 + v33)));
          v23 = (v37 + v37) * 6372797.56;
          v22 = v22 + v23;
          v17 += 3;
        }

        while (v17 != v16);
        v13 = v22 * 100.0;
        if (v22 * 100.0 < 0.0)
        {
          if (v13 <= -4.50359963e15)
          {
            v19 = 1;
            v20 = v22 * 100.0;
          }

          else
          {
            v20 = (((v13 + v13) - 1) / 2);
            v19 = 1;
          }

LABEL_15:
          if (v20 >= 9.22337204e18)
          {
            v38 = 0x7FFFFFFFFFFFFFFELL;
LABEL_28:
            *(*sub_73ECC(a3) + 56) = v38;
            return;
          }

          if (v19)
          {
            if (v13 > -4.50359963e15)
            {
              v21 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
LABEL_26:
              v13 = (v21 >> 1);
            }
          }

          else if (v13 < 4.50359963e15)
          {
            v21 = (v13 + v13) + 1;
            goto LABEL_26;
          }

          v38 = v13;
          goto LABEL_28;
        }

        if (v13 >= 4.50359963e15)
        {
          v19 = 0;
          v20 = v22 * 100.0;
          goto LABEL_15;
        }
      }

      v19 = 0;
      v20 = (((v13 + v13) + 1) >> 1);
      goto LABEL_15;
    }
  }
}

void sub_F446B0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_4D1DC0(a2) - 1;
  sub_F43240(a1, a2, (*(a3 + 8) - 16), 0, &v108);
  if (*(&v108 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v109 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v116;
    if (v116 != *(&v116 + 1))
    {
      while (*(v10 + 16) != *(v10 + 24))
      {
        v10 += 80;
        if (v10 == *(&v116 + 1))
        {
          if (sub_588E0(&v108) != v8)
          {
            v44 = sub_588E0(&v108);
            v45 = sub_5FC64(&v108);
            v46 = sub_4D1F50(a2, v8);
            v47 = (*v46 - **v46);
            if (*v47 >= 9u && (v48 = v47[4]) != 0)
            {
              v49 = *(*v46 + v48);
            }

            else
            {
              v49 = 0;
            }

            sub_F41E40(a1, a2, v44, v45, v8, v49, &v98);
            if (*(&v98 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v99 + 1) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v65 = __p[0];
              if (__p[0] != __p[1])
              {
                while (v65[2] != v65[3])
                {
                  v65 += 10;
                  if (v65 == __p[1])
                  {
                    sub_F44F58(a1, &v108, &v98);
                    v66 = *(a4 + 8);
                    if (v66 >= *(a4 + 16))
                    {
                      sub_F48E14(a4, &v108);
                    }

                    else
                    {
                      v67 = v108;
                      v68 = v109;
                      *(v66 + 32) = v110;
                      *v66 = v67;
                      *(v66 + 16) = v68;
                      v69 = v111;
                      v70 = v113;
                      v111 = 0;
                      *(v66 + 56) = v113;
                      *(v66 + 40) = v69;
                      *(v66 + 48) = v112;
                      v112 = 0;
                      v71 = v114;
                      *(v66 + 64) = v114;
                      *(v66 + 72) = v115;
                      if (v71)
                      {
                        v72 = v70[1];
                        v73 = *(v66 + 48);
                        if ((v73 & (v73 - 1)) != 0)
                        {
                          if (v72 >= v73)
                          {
                            v72 %= v73;
                          }
                        }

                        else
                        {
                          v72 &= v73 - 1;
                        }

                        v69[v72] = v66 + 56;
                        v113 = 0;
                        v114 = 0;
                      }

                      *(v66 + 80) = 0;
                      *(v66 + 88) = 0;
                      *(v66 + 96) = 0;
                      *(v66 + 80) = v116;
                      *(v66 + 96) = v117;
                      v116 = 0uLL;
                      v117 = 0;
                      v90 = v66 + 104;
                      *(a4 + 8) = v66 + 104;
                    }

                    *(a4 + 8) = v90;
                    if (v90 >= *(a4 + 16))
                    {
                      sub_F48E14(a4, &v98);
                      goto LABEL_97;
                    }

                    v91 = v98;
                    v92 = v99;
                    *(v90 + 32) = v100;
                    *v90 = v91;
                    *(v90 + 16) = v92;
                    v93 = v101;
                    v94 = v103;
                    v101 = 0;
                    *(v90 + 56) = v103;
                    *(v90 + 40) = v93;
                    *(v90 + 48) = v102;
                    v102 = 0;
                    v95 = v104;
                    *(v90 + 64) = v104;
                    *(v90 + 72) = v105;
                    if (v95)
                    {
                      v96 = v94[1];
                      v97 = *(v90 + 48);
                      if ((v97 & (v97 - 1)) != 0)
                      {
                        if (v96 >= v97)
                        {
                          v96 %= v97;
                        }
                      }

                      else
                      {
                        v96 &= v97 - 1;
                      }

                      v93[v96] = v90 + 56;
                      v103 = 0;
                      v104 = 0;
                    }

                    *(v90 + 80) = 0;
                    *(v90 + 88) = 0;
                    *(v90 + 96) = 0;
                    *(v90 + 80) = *__p;
                    *(v90 + 96) = v107;
                    __p[0] = 0;
                    __p[1] = 0;
                    v107 = 0;
                    v83 = v90 + 104;
                    goto LABEL_96;
                  }
                }
              }
            }

            v74 = *(a4 + 8);
            if (v74 >= *(a4 + 16))
            {
              sub_F48E14(a4, &v108);
            }

            else
            {
              v75 = v108;
              v76 = v109;
              *(v74 + 32) = v110;
              *v74 = v75;
              *(v74 + 16) = v76;
              v77 = v111;
              v78 = v113;
              v111 = 0;
              *(v74 + 56) = v113;
              *(v74 + 40) = v77;
              *(v74 + 48) = v112;
              v112 = 0;
              v79 = v114;
              *(v74 + 64) = v114;
              *(v74 + 72) = v115;
              if (v79)
              {
                v80 = v78[1];
                v81 = *(v74 + 48);
                if ((v81 & (v81 - 1)) != 0)
                {
                  if (v80 >= v81)
                  {
                    v80 %= v81;
                  }
                }

                else
                {
                  v80 &= v81 - 1;
                }

                v77[v80] = v74 + 56;
                v113 = 0;
                v114 = 0;
              }

              *(v74 + 80) = 0;
              *(v74 + 88) = 0;
              *(v74 + 96) = 0;
              *(v74 + 80) = v116;
              *(v74 + 96) = v117;
              v116 = 0uLL;
              v117 = 0;
              v83 = v74 + 104;
LABEL_96:
              *(a4 + 8) = v83;
            }

LABEL_97:
            *(a4 + 8) = v83;
            ++*(a1[37] + 48);
            v84 = __p[0];
            if (__p[0])
            {
              v85 = __p[1];
              v86 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v87 = *(v85 - 8);
                  if (v87)
                  {
                    *(v85 - 7) = v87;
                    operator delete(v87);
                  }

                  v85 -= 80;
                }

                while (v85 != v84);
                v86 = __p[0];
              }

              __p[1] = v84;
              operator delete(v86);
            }

            v88 = v103;
            if (v103)
            {
              do
              {
                v89 = *v88;
                operator delete(v88);
                v88 = v89;
              }

              while (v89);
            }

            goto LABEL_49;
          }

          v11 = *(a4 + 8);
          if (v11 >= *(a4 + 16))
          {
            sub_F48E14(a4, &v108);
          }

          else
          {
            v12 = v108;
            v13 = v109;
            *(v11 + 32) = v110;
            *v11 = v12;
            *(v11 + 16) = v13;
            v14 = v111;
            v15 = v113;
            v111 = 0;
            *(v11 + 56) = v113;
            *(v11 + 40) = v14;
            *(v11 + 48) = v112;
            v112 = 0;
            v16 = v114;
            *(v11 + 64) = v114;
            *(v11 + 72) = v115;
            if (v16)
            {
              v17 = v15[1];
              v18 = *(v11 + 48);
              if ((v18 & (v18 - 1)) != 0)
              {
                if (v17 >= v18)
                {
                  v17 %= v18;
                }
              }

              else
              {
                v17 &= v18 - 1;
              }

              v14[v17] = v11 + 56;
              v113 = 0;
              v114 = 0;
            }

            *(v11 + 80) = 0;
            *(v11 + 88) = 0;
            *(v11 + 96) = 0;
            *(v11 + 80) = v116;
            *(v11 + 96) = v117;
            v116 = 0uLL;
            v117 = 0;
            v82 = v11 + 104;
            *(a4 + 8) = v11 + 104;
          }

          *(a4 + 8) = v82;
          ++*(a1[37] + 48);
          v58 = v116;
          if (v116)
          {
            goto LABEL_52;
          }

          goto LABEL_59;
        }
      }
    }
  }

  v19 = *(a3 + 8);
  v21 = *(v19 - 16);
  v20 = *(v19 - 8);
  v22 = sub_319180(a1[1], v21, 1);
  if (v22 && (v23 = &v22[-*v22], *v23 >= 5u) && (v24 = *(v23 + 2)) != 0 && (v25 = &v22[v24], v26 = *v25, *&v25[v26] > HIDWORD(v21)) && (v27 = sub_3195D8(&v25[v26], v21)) != 0)
  {
    v28 = (v27 - *v27);
    if (*v28 >= 7u && (v29 = v28[3]) != 0)
    {
      v30 = *(v27 + v29);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v31 = sub_4D1F50(a2, v8);
  v32 = (*v31 - **v31);
  if (*v32 >= 9u && (v33 = v32[4]) != 0)
  {
    v34 = *(*v31 + v33);
  }

  else
  {
    v34 = 0;
  }

  sub_F41E40(a1, a2, v20, v30, v8, v34, &v98);
  if (*(&v98 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v99 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = __p[0];
    if (__p[0] != __p[1])
    {
      while (v35[2] != v35[3])
      {
        v35 += 10;
        if (v35 == __p[1])
        {
          v36 = *(a4 + 8);
          if (v36 >= *(a4 + 16))
          {
            sub_F48E14(a4, &v98);
            *(a4 + 8) = v50;
            break;
          }

          v37 = v98;
          v38 = v99;
          *(v36 + 32) = v100;
          *v36 = v37;
          *(v36 + 16) = v38;
          v39 = v101;
          v40 = v103;
          v101 = 0;
          *(v36 + 56) = v103;
          *(v36 + 40) = v39;
          *(v36 + 48) = v102;
          v102 = 0;
          v41 = v104;
          *(v36 + 64) = v104;
          *(v36 + 72) = v105;
          if (v41)
          {
            v42 = v40[1];
            v43 = *(v36 + 48);
            if ((v43 & (v43 - 1)) != 0)
            {
              if (v42 >= v43)
              {
                v42 %= v43;
              }
            }

            else
            {
              v42 &= v43 - 1;
            }

            v39[v42] = v36 + 56;
            v103 = 0;
            v104 = 0;
          }

          *(v36 + 80) = 0;
          *(v36 + 88) = 0;
          *(v36 + 96) = 0;
          *(v36 + 80) = *__p;
          *(v36 + 96) = v107;
          __p[0] = 0;
          __p[1] = 0;
          v107 = 0;
          *(a4 + 8) = v36 + 104;
          *(a4 + 8) = v36 + 104;
          ++*(a1[37] + 68);
          v51 = __p[0];
          if (__p[0])
          {
            goto LABEL_40;
          }

          goto LABEL_47;
        }
      }
    }
  }

  ++*(a1[37] + 68);
  v51 = __p[0];
  if (__p[0])
  {
LABEL_40:
    v52 = __p[1];
    v53 = v51;
    if (__p[1] != v51)
    {
      do
      {
        v54 = *(v52 - 8);
        if (v54)
        {
          *(v52 - 7) = v54;
          operator delete(v54);
        }

        v52 -= 80;
      }

      while (v52 != v51);
      v53 = __p[0];
    }

    __p[1] = v51;
    operator delete(v53);
  }

LABEL_47:
  v55 = v103;
  if (v103)
  {
    do
    {
      v56 = *v55;
      operator delete(v55);
      v55 = v56;
    }

    while (v56);
  }

LABEL_49:
  v57 = v101;
  v101 = 0;
  if (v57)
  {
    operator delete(v57);
  }

  v58 = v116;
  if (v116)
  {
LABEL_52:
    v59 = *(&v116 + 1);
    v60 = v58;
    if (*(&v116 + 1) != v58)
    {
      do
      {
        v61 = *(v59 - 8);
        if (v61)
        {
          *(v59 - 7) = v61;
          operator delete(v61);
        }

        v59 -= 80;
      }

      while (v59 != v58);
      v60 = v116;
    }

    *(&v116 + 1) = v58;
    operator delete(v60);
  }

LABEL_59:
  v62 = v113;
  if (v113)
  {
    do
    {
      v63 = *v62;
      operator delete(v62);
      v62 = v63;
    }

    while (v63);
  }

  v64 = v111;
  v111 = 0;
  if (v64)
  {
    operator delete(v64);
  }
}

void sub_F44EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_F42954(&a9);
  sub_F42954(&a22);
  _Unwind_Resume(a1);
}

void sub_F44F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F42954(va);
  _Unwind_Resume(a1);
}

void sub_F44F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F42954(va);
  _Unwind_Resume(a1);
}

void sub_F44F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F42954(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F44F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *sub_73ECC(a3);
  v7 = sub_73ECC(a2);
  v8 = *v7;
  v9 = v7[1];
  v10 = 0.0;
  if (*v7 != v9)
  {
    do
    {
      sub_F3E408((*(v8 + 24) - 12), v6 + 2, (a1 + 288), 1);
      if (v10 < v11)
      {
        v10 = v11;
      }

      v8 += 80;
    }

    while (v8 != v9);
  }

  sub_2F4C8(v6 + 2, 0, &v45, v10, 1.0);
  v12 = v6[2];
  if (v12)
  {
    v6[3] = v12;
    operator delete(v12);
  }

  v16 = v45;
  *(v6 + 1) = v45;
  v13 = *(&v16 + 1);
  v6[4] = v46;
  v14 = v16;
  v15 = (v16 + 12);
  *&v16 = 0;
  if (v14 == *(&v16 + 1) || v15 == *(&v16 + 1))
  {
    goto LABEL_12;
  }

  v21 = 0.0;
  v42 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v40 = vdupq_n_s64(0xC066800000000000);
  v41 = vdupq_n_s64(0x4076800000000000uLL);
  v39 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  HIDWORD(v22) = 1096306543;
  do
  {
    LODWORD(v22) = *(v15 - 2);
    v23 = exp(3.14159265 - *&v22 * 6.28318531 / 4294967300.0);
    *&v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795;
    LODWORD(v25) = *(v15 - 3);
    HIDWORD(v25) = *v15;
    v43 = v25;
    v26 = *&v24 * 0.0174532925;
    LODWORD(v24) = v15[1];
    v27 = exp(3.14159265 - v24 * 6.28318531 / 4294967300.0);
    v28 = atan((v27 - 1.0 / v27) * 0.5) * 57.2957795 * 0.0174532925;
    v29.i64[0] = v43;
    v29.i64[1] = HIDWORD(v43);
    v30 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v29), v41), v42), v40), v39);
    v44 = vsubq_f64(v30, vdupq_laneq_s64(v30, 1)).f64[0];
    v31 = sin((v26 - v28) * 0.5);
    v32 = v31 * v31;
    v33 = cos(v26);
    v34 = v33 * cos(v28);
    v35 = sin(0.5 * v44);
    v36 = atan2(sqrt(v35 * v35 * v34 + v32), sqrt(1.0 - (v35 * v35 * v34 + v32)));
    v22 = (v36 + v36) * 6372797.56;
    v21 = v21 + v22;
    v15 += 3;
  }

  while (v15 != v13);
  *&v16 = v21 * 100.0;
  if (v21 * 100.0 >= 0.0)
  {
    if (*&v16 >= 4.50359963e15)
    {
      v18 = 0;
      v19 = v21 * 100.0;
      goto LABEL_13;
    }

LABEL_12:
    v18 = 0;
    v19 = (((*&v16 + *&v16) + 1) >> 1);
    goto LABEL_13;
  }

  if (*&v16 <= -4.50359963e15)
  {
    v18 = 1;
    v19 = v21 * 100.0;
  }

  else
  {
    v19 = (((*&v16 + *&v16) - 1) / 2);
    v18 = 1;
  }

LABEL_13:
  if (v19 < 9.22337204e18)
  {
    if (v18)
    {
      if (*&v16 > -4.50359963e15)
      {
        v20 = (*&v16 + *&v16) - 1 + (((*&v16 + *&v16) - 1) >> 63);
LABEL_24:
        *&v16 = (v20 >> 1);
      }
    }

    else if (*&v16 < 4.50359963e15)
    {
      v20 = (*&v16 + *&v16) + 1;
      goto LABEL_24;
    }

    v37 = *&v16;
    goto LABEL_26;
  }

  v37 = 0x7FFFFFFFFFFFFFFELL;
LABEL_26:
  result = sub_73ECC(a3);
  *(*result + 56) = v37;
  return result;
}

void sub_F45314(BOOL *a1, void *a2)
{
  HIBYTE(v2[2]) = 6;
  strcpy(v2, "enable");
  *a1 = sub_5FBE4(a2, v2, a1);
  if (SHIBYTE(v2[2]) < 0)
  {
    operator delete(v2[0]);
  }

  operator new();
}

void sub_F4640C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_F464B0(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a1 + 8);
  v13 = a2[1];
  v55 = *a2;
  v56 = v13;
  v14 = sub_319730(v12, &v55);
  if (v14 && (v15 = (v14 - *v14), *v15 >= 0xDu) && (v16 = v15[6]) != 0)
  {
    v17 = (v14 + v16 + *(v14 + v16));
    v18 = (v17 - *v17);
    if (*v18 >= 5u && (v19 = v18[2]) != 0)
    {
      v20 = (v17 + v19 + *(v17 + v19));
    }

    else
    {
      v20 = 0;
    }

    sub_2CF504(v20, __p);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v54 = 0;
  }

  v21 = *(a1 + 8);
  v22 = a2[1];
  v55 = *a2;
  v56 = v22;
  v23 = sub_319730(v21, &v55);
  if (v23 && (v24 = (v23 - *v23), *v24 >= 0xFu) && (v25 = v24[7]) != 0)
  {
    v26 = *(v23 + v25);
  }

  else
  {
    LOWORD(v26) = 0;
  }

  v27 = *(a1 + 8);
  v28 = a2[1];
  v55 = *a2;
  v56 = v28;
  v29 = sub_319730(v27, &v55);
  if (v29 && (v30 = (v29 - *v29), *v30 >= 0x13u) && (v31 = v30[9]) != 0)
  {
    v32 = *(v29 + v31);
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a1 + 8);
  v34 = a2[1];
  v55 = *a2;
  v56 = v34;
  v35 = sub_319730(v33, &v55);
  if (v35 && (v36 = (v35 - *v35), *v36 >= 0x15u) && (v37 = v36[10]) != 0)
  {
    v38 = *(v35 + v37);
  }

  else
  {
    v38 = 0;
  }

  v39 = *(a1 + 8);
  v40 = a2[1];
  v55 = *a2;
  v56 = v40;
  v41 = sub_319730(v39, &v55);
  v42 = 0.0;
  if (v41)
  {
    v43 = (v41 - *v41);
    if (*v43 >= 0x19u)
    {
      v44 = v43[12];
      if (v44)
      {
        v42 = *(v41 + v44);
      }
    }
  }

  v45 = a2[1];
  *a6 = *a2;
  *(a6 + 16) = v45;
  v46 = *__p;
  *(a6 + 32) = *__p;
  *(a6 + 48) = v54;
  __p[0] = 0;
  __p[1] = 0;
  v54 = 0;
  *(a6 + 56) = v26;
  *(a6 + 64) = v32;
  *(a6 + 72) = v38;
  *(a6 + 80) = v42;
  *(a6 + 88) = a3;
  *(a6 + 89) = a4;
  *(a6 + 90) = a5;
  if (a5)
  {
    if (v46 != *(&v46 + 1))
    {
      v47 = *(&v46 + 1) - 12;
      if (*(&v46 + 1) - 12 > v46)
      {
        v48 = v46 + 12;
        do
        {
          v49 = *(v48 - 12);
          DWORD2(v55) = *(v48 - 4);
          *&v55 = v49;
          v50 = *v47;
          *(v48 - 4) = *(v47 + 8);
          *(v48 - 12) = v50;
          v51 = v55;
          *(v47 + 8) = DWORD2(v55);
          *v47 = v51;
          v47 -= 12;
          v52 = v48 >= v47;
          v48 += 12;
        }

        while (!v52);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_F46740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4675C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_319A40(*(a1 + 8), *a2, *(a2 + 8));
  if (v12 && (v13 = (v12 - *v12), *v13 >= 0xDu) && (v14 = v13[6]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
    v16 = (v15 - *v15);
    if (*v16 >= 5u && (v17 = v16[2]) != 0)
    {
      v18 = (v15 + v17 + *(v15 + v17));
    }

    else
    {
      v18 = 0;
    }

    sub_2CF504(v18, __p);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v34 = 0;
  }

  v19 = sub_319A40(*(a1 + 8), *a2, *(a2 + 8));
  if (v19 && (v20 = (v19 - *v19), *v20 >= 0xFu) && (v21 = v20[7]) != 0)
  {
    v22 = *(v19 + v21);
  }

  else
  {
    LOWORD(v22) = 0;
  }

  v23 = sub_319A40(*(a1 + 8), *a2, *(a2 + 8));
  if (v23 && (v24 = (v23 - *v23), *v24 >= 0x15u))
  {
    v25 = v24[10];
    if (v25)
    {
      v25 = *(v23 + v25);
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *__p;
  *a6 = *a2;
  *(a6 + 16) = v26;
  *(a6 + 32) = v34;
  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  *(a6 + 40) = v22;
  *(a6 + 48) = 0;
  *(a6 + 56) = v25;
  *(a6 + 64) = 0;
  *(a6 + 72) = a3;
  *(a6 + 73) = a4;
  *(a6 + 74) = a5;
  if (a5)
  {
    if (v26 != *(&v26 + 1))
    {
      v27 = *(&v26 + 1) - 12;
      if (*(&v26 + 1) - 12 > v26)
      {
        v28 = v26 + 12;
        do
        {
          v29 = *(v28 - 12);
          v36 = *(v28 - 4);
          v35 = v29;
          v30 = *v27;
          *(v28 - 4) = *(v27 + 8);
          *(v28 - 12) = v30;
          v31 = v35;
          *(v27 + 8) = v36;
          *v27 = v31;
          v27 -= 12;
          v32 = v28 >= v27;
          v28 += 12;
        }

        while (!v32);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_F4694C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F46968(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = sub_3187E8(a1, a2, 1);
  if (v7 && (v8 = &v7[-*v7], *v8 >= 7u) && (v9 = *(v8 + 3)) != 0 && (v10 = *&v7[v9], v11 = &v7[v9 + v10], *v11 > HIDWORD(a2)) && (v12 = 4 * HIDWORD(a2), v14 = &v11[v12 + 4], v13 = *v14, v15 = &v14[v13], v16 = &v14[v13 - *&v14[v13]], *v16 >= 5u) && (v17 = *(v16 + 2)) != 0)
  {
    v18 = &v15[v17];
    v19 = *&v15[v17];
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v20 = *&v18[v19];
    if (v20)
    {
      v21 = 0;
      v22 = 4 * v20;
      v23 = &v7[v17 + v13 + v10 + v9 + v12 + v19];
      do
      {
        v24 = &v23[v21];
        v25 = *&v23[v21 + 8];
        v26 = &v23[v21 + v25 - *&v23[v21 + 8 + v25]];
        if (*&v23[v21 + 8 + v25 + v26[8]] == a3)
        {
          *&v27 = *&v24[v25 + 8 + v26[6]];
          *(&v27 + 1) = *&v24[v25 + 8 + v26[7]];
          v28 = v27;
          v29 = a3;
          v30 = *&v24[v25 + 8 + v26[9]];
          sub_2C3744(a4, &v28);
        }

        v21 += 4;
      }

      while (v22 != v21);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_F46AF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F46B0C(uint64_t *a1, void *a2, unint64_t **a3, uint64_t a4)
{
  v9 = (*a3)[1];
  v8 = (*a3)[2];
  v10 = **a3;
  v154 = v10;
  v155 = v8;
  v11 = sub_319180(a1[1], v10, 1);
  v130 = a2;
  if (v11 && (v12 = &v11[-*v11], *v12 >= 5u) && (v13 = *(v12 + 2)) != 0 && (v14 = &v11[v13], v15 = *v14, *&v14[v15] > HIDWORD(v10)) && (v16 = sub_3195D8(&v14[v15], v10)) != 0)
  {
    v17 = (v16 - *v16);
    if (*v17 >= 7u && (v18 = v17[3]) != 0)
    {
      v19 = *(v16 + v18);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = (*a3)[2];
  v20 = (*a3)[3];
  v22 = sub_319180(a1[1], v21, 1);
  if (v22 && (v23 = &v22[-*v22], *v23 >= 5u) && (v24 = *(v23 + 2)) != 0 && (v25 = &v22[v24], v26 = *v25, *&v25[v26] > HIDWORD(v21)) && (v27 = sub_3195D8(&v25[v26], v21)) != 0)
  {
    v28 = (v27 - *v27);
    if (*v28 < 7u)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28[3];
      if (v29)
      {
        v29 = *(v27 + v29);
      }
    }
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v146 = v9;
  *(&v146 + 1) = v19;
  *&v147 = v20;
  *(&v147 + 1) = v29;
  v149 = 0u;
  v150 = 0u;
  v148 = 3;
  v151 = 1065353216;
  v153 = 0;
  v152 = 0uLL;
  v30 = sub_317548(a1[1], v10, v8);
  v32 = v31;
  v144 = v30;
  v145 = v31;
  v33 = v154 >= 0xFFFFFFFF00000000 || v154 == 0;
  v34 = !v33;
  if (!v33)
  {
    v34 = v155 < 0xFFFFFFFF00000000 && v155 != 0;
  }

  if (v34)
  {
    v36 = sub_319A40(a1[1], v10, v8);
    if (v36)
    {
      v37 = (v36 - *v36);
      if (*v37 >= 0xDu)
      {
        v38 = v37[6];
        if (v38)
        {
          v39 = (v36 + v38 + *(v36 + v38));
          v40 = (v39 - *v39);
          if (*v40 >= 5u)
          {
            v41 = v40[2];
            if (v41)
            {
              if (*(v39 + v41 + *(v39 + v41)))
              {
                sub_F4675C(a1, &v154, 1, 1, 0, &v133);
                sub_F53650(&v146, &v133);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                v42 = *(a4 + 8);
                if (v42 < *(a4 + 16))
                {
                  v43 = v146;
                  v44 = v147;
                  *(v42 + 32) = v148;
                  *v42 = v43;
                  *(v42 + 16) = v44;
                  v45 = v149;
                  v46 = v150;
                  *&v149 = 0;
                  *(v42 + 56) = v150;
                  v47 = v42 + 56;
                  *(v42 + 40) = __PAIR128__(*(&v149 + 1), v45);
                  *(&v149 + 1) = 0;
                  v48 = *(&v150 + 1);
                  *(v42 + 64) = *(&v150 + 1);
                  *(v42 + 72) = v151;
                  if (!v48)
                  {
                    goto LABEL_73;
                  }

                  v49 = *(v46 + 8);
                  v50 = *(v42 + 48);
                  v51 = v50 - 1;
                  if ((v50 & (v50 - 1)) == 0)
                  {
LABEL_44:
                    v49 &= v51;
LABEL_72:
                    *(v45 + 8 * v49) = v47;
                    v150 = 0uLL;
LABEL_73:
                    *(v42 + 80) = 0;
                    *(v42 + 88) = 0;
                    *(v42 + 96) = 0;
                    *(v42 + 80) = v152;
                    *(v42 + 96) = v153;
                    v152 = 0uLL;
                    v153 = 0;
                    *(a4 + 8) = v42 + 104;
                    *(a4 + 8) = v42 + 104;
                    v65 = v152;
                    if (!v152)
                    {
                      goto LABEL_157;
                    }

                    goto LABEL_150;
                  }

LABEL_70:
                  if (v49 >= v50)
                  {
                    v49 %= v50;
                  }

                  goto LABEL_72;
                }

                goto LABEL_162;
              }
            }
          }
        }
      }
    }
  }

  v52 = v144 >= 0xFFFFFFFF00000000 || v144 == 0;
  v53 = !v52;
  if (!v52)
  {
    v53 = v145 < 0xFFFFFFFF00000000 && v145 != 0;
  }

  if (v53)
  {
    v55 = sub_319A40(a1[1], v30, v32);
    if (v55)
    {
      v56 = (v55 - *v55);
      if (*v56 >= 0xDu)
      {
        v57 = v56[6];
        if (v57)
        {
          v58 = (v55 + v57 + *(v55 + v57));
          v59 = (v58 - *v58);
          if (*v59 >= 5u)
          {
            v60 = v59[2];
            if (v60)
            {
              if (*(v58 + v60 + *(v58 + v60)))
              {
                sub_F4675C(a1, &v144, 1, 1, 1, &v133);
                sub_F53650(&v146, &v133);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                v42 = *(a4 + 8);
                if (v42 < *(a4 + 16))
                {
                  v61 = v146;
                  v62 = v147;
                  *(v42 + 32) = v148;
                  *v42 = v61;
                  *(v42 + 16) = v62;
                  v45 = v149;
                  v63 = v150;
                  *&v149 = 0;
                  *(v42 + 56) = v150;
                  v47 = v42 + 56;
                  *(v42 + 40) = __PAIR128__(*(&v149 + 1), v45);
                  *(&v149 + 1) = 0;
                  v64 = *(&v150 + 1);
                  *(v42 + 64) = *(&v150 + 1);
                  *(v42 + 72) = v151;
                  if (!v64)
                  {
                    goto LABEL_73;
                  }

                  v49 = *(v63 + 8);
                  v50 = *(v42 + 48);
                  v51 = v50 - 1;
                  if ((v50 & (v50 - 1)) == 0)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_70;
                }

LABEL_162:
                sub_F48E14(a4, &v146);
                *(a4 + 8) = v129;
                v65 = v152;
                if (!v152)
                {
                  goto LABEL_157;
                }

                goto LABEL_150;
              }
            }
          }
        }
      }
    }
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v133);
    v66 = sub_4A5C(&v133, "Missing expected geometry between segments ", 43);
    v67 = *(sub_4D1F50(v130, (*a3)[1]) + 36);
    v68 = std::ostream::operator<<();
    sub_4A5C(v68, ".", 1);
    v69 = std::ostream::operator<<();
    v70 = sub_4A5C(v69, " ", 1);
    v71 = sub_7052C(v70, (v67 & 0x20000000) == 0);
    v72 = sub_4A5C(v71, " ", 1);
    if ((v67 & 0x40000000) != 0)
    {
      v73 = 2;
    }

    else
    {
      v73 = v67 >> 31;
    }

    sub_7057C(v72, v73);
    sub_4A5C(v66, " and ", 5);
    v74 = *(sub_4D1F50(v130, (*a3)[3]) + 36);
    v75 = std::ostream::operator<<();
    sub_4A5C(v75, ".", 1);
    v76 = std::ostream::operator<<();
    v77 = sub_4A5C(v76, " ", 1);
    v78 = sub_7052C(v77, (v74 & 0x20000000) == 0);
    v79 = sub_4A5C(v78, " ", 1);
    if ((v74 & 0x40000000) != 0)
    {
      v80 = 2;
    }

    else
    {
      v80 = v74 >> 31;
    }

    sub_7057C(v79, v80);
    if ((v143 & 0x10) != 0)
    {
      v82 = v142;
      if (v142 < v138)
      {
        v142 = v138;
        v82 = v138;
      }

      v83 = v137;
      v81 = v82 - v137;
      if ((v82 - v137) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if ((v143 & 8) == 0)
      {
        v81 = 0;
        v132 = 0;
LABEL_93:
        *(&__dst + v81) = 0;
        sub_7E854(&__dst, 1u);
        if (v132 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v141[1]) < 0)
        {
          operator delete(v140);
        }

        std::locale::~locale(__p);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_98;
      }

      v83 = __p[1];
      v81 = v136 - __p[1];
      if (v136 - __p[1] >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_126:
        sub_3244();
      }
    }

    if (v81 >= 0x17)
    {
      operator new();
    }

    v132 = v81;
    if (v81)
    {
      memmove(&__dst, v83, v81);
    }

    goto LABEL_93;
  }

LABEL_98:
  v85 = **a3;
  v84 = (*a3)[1];
  v86 = sub_319180(a1[1], v85, 1);
  if (v86 && (v87 = &v86[-*v86], *v87 >= 5u) && (v88 = *(v87 + 2)) != 0 && (v89 = &v86[v88], v90 = *v89, *&v89[v90] > HIDWORD(v85)) && (v91 = sub_3195D8(&v89[v90], v85)) != 0)
  {
    v92 = (v91 - *v91);
    if (*v92 >= 7u && (v93 = v92[3]) != 0)
    {
      v94 = *(v91 + v93);
    }

    else
    {
      v94 = 0;
    }
  }

  else
  {
    v94 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v96 = (*a3)[2];
  v95 = (*a3)[3];
  v97 = sub_319180(a1[1], v96, 1);
  if (v97 && (v98 = &v97[-*v97], *v98 >= 5u) && (v99 = *(v98 + 2)) != 0 && (v100 = &v97[v99], v101 = *v100, *&v100[v101] > HIDWORD(v96)) && (v102 = sub_3195D8(&v100[v101], v96)) != 0)
  {
    v103 = (v102 - *v102);
    if (*v103 >= 7u && (v104 = v103[3]) != 0)
    {
      v105 = *(v102 + v104);
    }

    else
    {
      v105 = 0;
    }
  }

  else
  {
    v105 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_F41E40(a1, v130, v84, v94, v95, v105, &v133);
  if (*(&v133 + 1) != 0x7FFFFFFFFFFFFFFFLL && __p[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v106 = v141[0];
    if (v141[0] != v141[1])
    {
      while (v106[2] != v106[3])
      {
        v106 += 10;
        if (v106 == v141[1])
        {
          v107 = *(a4 + 8);
          if (v107 >= *(a4 + 16))
          {
            sub_F48E14(a4, &v133);
          }

          else
          {
            v108 = v133;
            v109 = *__p;
            *(v107 + 32) = v135;
            *v107 = v108;
            *(v107 + 16) = v109;
            v110 = v136;
            v111 = v138;
            v136 = 0;
            *(v107 + 56) = v138;
            *(v107 + 40) = v110;
            *(v107 + 48) = v137;
            v137 = 0;
            v112 = v139;
            *(v107 + 64) = v139;
            *(v107 + 72) = v140;
            if (v112)
            {
              v113 = v111[1];
              v114 = *(v107 + 48);
              if ((v114 & (v114 - 1)) != 0)
              {
                if (v113 >= v114)
                {
                  v113 %= v114;
                }
              }

              else
              {
                v113 &= v114 - 1;
              }

              v110[v113] = v107 + 56;
              v138 = 0;
              v139 = 0;
            }

            *(v107 + 80) = 0;
            *(v107 + 88) = 0;
            *(v107 + 96) = 0;
            *(v107 + 80) = *v141;
            *(v107 + 96) = v142;
            v141[0] = 0;
            v141[1] = 0;
            v142 = 0;
            v115 = v107 + 104;
            *(a4 + 8) = v107 + 104;
          }

          *(a4 + 8) = v115;
          break;
        }
      }
    }
  }

  v116 = v141[0];
  if (v141[0])
  {
    v117 = v141[1];
    v118 = v141[0];
    if (v141[1] != v141[0])
    {
      do
      {
        v119 = *(v117 - 8);
        if (v119)
        {
          *(v117 - 7) = v119;
          operator delete(v119);
        }

        v117 -= 80;
      }

      while (v117 != v116);
      v118 = v141[0];
    }

    v141[1] = v116;
    operator delete(v118);
  }

  v120 = v138;
  if (v138)
  {
    do
    {
      v121 = *v120;
      operator delete(v120);
      v120 = v121;
    }

    while (v121);
  }

  v122 = v136;
  v136 = 0;
  if (v122)
  {
    operator delete(v122);
  }

  v65 = v152;
  if (v152)
  {
LABEL_150:
    v123 = *(&v152 + 1);
    v124 = v65;
    if (*(&v152 + 1) != v65)
    {
      do
      {
        v125 = *(v123 - 8);
        if (v125)
        {
          *(v123 - 7) = v125;
          operator delete(v125);
        }

        v123 -= 80;
      }

      while (v123 != v65);
      v124 = v152;
    }

    *(&v152 + 1) = v65;
    operator delete(v124);
  }

LABEL_157:
  v126 = v150;
  if (v150)
  {
    do
    {
      v127 = *v126;
      operator delete(v126);
      v126 = v127;
    }

    while (v127);
  }

  v128 = v149;
  *&v149 = 0;
  if (v128)
  {
    operator delete(v128);
  }
}

void sub_F47620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    sub_F42954((v20 - 208));
    _Unwind_Resume(a1);
  }

  sub_F42954((v20 - 208));
  _Unwind_Resume(a1);
}

void sub_F47700(uint64_t a1, uint64_t a2)
{
  v3 = sub_73ECC(a1);
  v5 = *v3;
  v6 = 0;
  v7 = v3[1] - *v3;
  if (v7)
  {
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
    v10 = INFINITY;
    v11 = 16;
    do
    {
      sub_6D5084(*v3 + v11, a2, 0, 0, &v25, v4);
      v4 = v25;
      if (*&v25 < v10)
      {
        v6 = v8;
        v10 = *&v25;
      }

      ++v8;
      v11 += 80;
    }

    while (v9 != v8);
    v5 = *v3;
  }

  v12 = v5 + 80 * v6;
  v13 = *(v5 + 16);
  v27 = *v5;
  v14 = *(v5 + 32);
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  v15 = *(v5 + 56);
  v25 = *(v5 + 40);
  v26[0] = v15;
  *(v26 + 15) = *(v5 + 71);
  v16 = *(v12 + 16);
  *v5 = *v12;
  *(v5 + 16) = v16;
  *(v5 + 32) = *(v12 + 32);
  v17 = *(v12 + 40);
  v18 = *(v12 + 56);
  *(v5 + 71) = *(v12 + 71);
  *(v5 + 56) = v18;
  *(v5 + 40) = v17;
  *v12 = v27;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  v19 = v25;
  v20 = v26[0];
  *(v12 + 71) = *(v26 + 15);
  *(v12 + 56) = v20;
  *(v12 + 40) = v19;
  v21 = v3[1];
  v22 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *v3) >> 4);
  if (v21 == *v3)
  {
    sub_F49BC4(v3, 1 - v22);
  }

  else if (v22 >= 2)
  {
    v23 = *v3 + 80;
    while (v21 != v23)
    {
      v24 = *(v21 - 64);
      if (v24)
      {
        *(v21 - 56) = v24;
        operator delete(v24);
      }

      v21 -= 80;
    }

    v3[1] = v23;
  }
}

int *sub_F478D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  result = sub_319180(a1, a2, 1);
  if (!result || (v8 = (result - *result), *v8 < 5u) || (v9 = v8[2]) == 0 || (v10 = (result + v9), v11 = *v10, *(v10 + v11) <= HIDWORD(a2)) || (result = sub_3195D8((v10 + v11), a2)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v12 = (result - *result);
  v13 = *v12;
  if (a3)
  {
    if (v13 < 0xF)
    {
      goto LABEL_15;
    }

    v14 = v12[7];
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v13 < 0xD)
    {
      goto LABEL_15;
    }

    v14 = v12[6];
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  if (*(result + v14 + *(result + v14)))
  {
    operator new();
  }

LABEL_15:
  *a4 = 0u;
  a4[2] = 0;
  return result;
}

void sub_F47A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F47A68(uint64_t a1, unint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v6 = sub_F47CE4(a1, a2);
  v7 = v6;
  LODWORD(v8) = *a4;
  LODWORD(v9) = a4[1];
  v10 = v8;
  v11 = v9;
  LODWORD(v8) = *a3;
  LODWORD(v9) = a3[1];
  v12 = v8;
  v13 = v9;
  v14 = v6;
  v15 = HIDWORD(v6);
  v16 = HIDWORD(v6);
  v17 = v10 - v8;
  v18 = v11 - v13;
  v19 = v17 * v17 + v18 * v18;
  if (v19 == 0.0)
  {
    goto LABEL_5;
  }

  v20 = -v19;
  if (v19 > 0.0)
  {
    v20 = v17 * v17 + v18 * v18;
  }

  if (v20 < 2.22044605e-16)
  {
LABEL_5:
    v21 = 0.0;
  }

  else
  {
    v21 = (v17 * (v14 - v12) + v18 * (v16 - v13)) / v19;
  }

  v22 = sub_6EFC0(a3, a4, v21);
  v23 = exp(((v22 >> 33) + (v15 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
  v24 = atan((v23 + -1.0 / v23) * 0.5);
  v25 = sqrt(((v15 - HIDWORD(v22)) * (v15 - HIDWORD(v22)) + (v7 - v22) * (v7 - v22))) / 100.0 * 100.0 * (cos(v24 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) * 100.0;
  if (v25 >= 0.0)
  {
    v26 = v25;
    if (v25 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v27 = (v25 + v25) + 1;
  }

  else
  {
    v26 = v25;
    if (v25 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
  }

  v26 = (v27 >> 1);
LABEL_12:
  if (v26 >= 9.22337204e18)
  {
    v29 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_21;
  }

  if (v25 >= 0.0)
  {
    if (v25 < 4.50359963e15)
    {
      v28 = (v25 + v25) + 1;
      goto LABEL_19;
    }
  }

  else if (v25 > -4.50359963e15)
  {
    v28 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
LABEL_19:
    v25 = (v28 >> 1);
  }

  v29 = v25;
LABEL_21:
  if ((v14 - v10) * (v13 - v11) - (v12 - v10) * (v16 - v11) > 0.0)
  {
    return v29;
  }

  else
  {
    return -v29;
  }
}

uint64_t sub_F47CE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_319180(a1, a2, 1);
  if (!v3)
  {
    return -1;
  }

  v4 = &v3[-*v3];
  if (*v4 < 5u)
  {
    return -1;
  }

  v5 = *(v4 + 2);
  if (!v5)
  {
    return -1;
  }

  v6 = &v3[v5];
  v7 = *v6;
  if (*&v6[v7] <= HIDWORD(a2))
  {
    return -1;
  }

  v8 = sub_3195D8(&v6[v7], a2);
  if (!v8)
  {
    return -1;
  }

  v9 = v8 + *(v8 - *v8 + 8);
  v10 = *v9;
  LODWORD(v9) = *(v9 + 4);
  if (v9 >= 0xFFFFFFFE)
  {
    v9 = 4294967294;
  }

  else
  {
    v9 = v9;
  }

  return (v9 << 32) | v10;
}

double sub_F47DA0(uint64_t a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *(&v17 + 1) = 0;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  v10 = *(a2 + 56);
  *&stru_20.segname[104 * v2 + 16] = v10;
  v11 = *(a2 + 64);
  *(v6 + 64) = v11;
  *(v6 + 72) = *(a2 + 72);
  if (v11)
  {
    v12 = *(v10 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v12 >= v9)
      {
        v12 %= v9;
      }
    }

    else
    {
      v12 &= v9 - 1;
    }

    *(v8 + 8 * v12) = 104 * v2 + 56;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  *(&stru_20.filesize + 13 * v2) = *(a2 + 80);
  *(&stru_20.nsects + 13 * v2) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *&v17 = v6 + 104;
  v13 = *(a1 + 8);
  v14 = v6 + *a1 - v13;
  sub_F4804C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  result = *&v17;
  *(a1 + 8) = v17;
  if (v15)
  {
    operator delete(v15);
    return *&v17;
  }

  return result;
}

void sub_F47F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_F48014(va);
  _Unwind_Resume(a1);
}

__n128 sub_F47F74(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *(a2 + 32) = *(a3 + 8);
  *a2 = v3;
  *(a2 + 16) = v4;
  v5 = *(a3 + 7);
  *(a2 + 56) = v5;
  v6 = *(a3 + 5);
  *(a2 + 48) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a2 + 40) = v6;
  *(a3 + 6) = 0;
  v7 = *(a3 + 8);
  *(a2 + 64) = v7;
  *(a2 + 72) = *(a3 + 18);
  if (v7)
  {
    v8 = *(v5 + 8);
    v9 = *(a2 + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v6 + 8 * v8) = a2 + 56;
    *(a3 + 7) = 0;
    *(a3 + 8) = 0;
  }

  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  result = a3[5];
  *(a2 + 80) = result;
  *(a2 + 96) = *(a3 + 12);
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  *(a3 + 12) = 0;
  return result;
}

uint64_t sub_F48014(uint64_t a1)
{
  sub_F481BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_F4804C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = &a2[v6];
      v9 = a4 + v6 * 8;
      v10 = *&a2[v6];
      v11 = *&a2[v6 + 2];
      *(v9 + 32) = a2[v6 + 4];
      *v9 = v10;
      *(v9 + 16) = v11;
      v12 = &a2[v6 + 7];
      v13 = *v12;
      v14 = a2[v6 + 5];
      v15 = a2[v6 + 6];
      *(v12 - 2) = 0;
      *(v9 + 40) = v14;
      *(v9 + 48) = v15;
      *(v12 - 1) = 0;
      *(a4 + v6 * 8 + 56) = v13;
      v16 = a2[v6 + 8];
      *(v9 + 64) = v16;
      *(v9 + 72) = a2[v6 + 9];
      if (v16)
      {
        v7 = *(v13 + 8);
        v17 = *(v9 + 48);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v7 >= v17)
          {
            v7 %= v17;
          }
        }

        else
        {
          v7 &= v17 - 1;
        }

        *(v14 + 8 * v7) = a4 + v6 * 8 + 56;
        *v12 = 0;
        a2[v6 + 8] = 0;
      }

      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 80) = *(v8 + 5);
      *(v9 + 96) = v8[12];
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      v6 += 13;
    }

    while (&a2[v6] != a3);
    while (v5 != a3)
    {
      v18 = v5[10];
      if (v18)
      {
        v19 = v5[11];
        v20 = v5[10];
        if (v19 != v18)
        {
          do
          {
            v21 = *(v19 - 64);
            if (v21)
            {
              *(v19 - 56) = v21;
              operator delete(v21);
            }

            v19 -= 96;
          }

          while (v19 != v18);
          v20 = v5[10];
        }

        v5[11] = v18;
        operator delete(v20);
      }

      v22 = v5[7];
      if (v22)
      {
        do
        {
          v23 = *v22;
          operator delete(v22);
          v22 = v23;
        }

        while (v23);
      }

      v24 = v5[5];
      v5[5] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      v5 += 13;
    }
  }
}

void sub_F481BC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 96;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_F48288(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 96;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  *(a1 + 8) = a2;
}

void sub_F4834C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 40 * a2;
      v10 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = -1;
        *(v3 + 24) = v10;
        v3 += 40;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 40 * v5;
    v12 = 40 * v5 + 40 * a2;
    v13 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v14 = 40 * v5;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = -1;
      *(v14 + 24) = v13;
      v14 += 40;
    }

    while (v14 != v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_F484F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unint64_t *a6@<X8>, unint64_t a7@<D2>, unint64_t a8@<D4>)
{
  v9 = 0;
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v10 = *a1;
  v11 = a1[1] - *a1;
  if (!v11)
  {
    goto LABEL_79;
  }

  v12 = a2;
  v13 = a2 / 100.0;
  if (v13 <= 0.0)
  {
    goto LABEL_79;
  }

  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2);
  v17 = 0.0;
  v18 = -1;
  v19 = 1;
  while (1)
  {
    v23 = v16 + v18;
    if (a3)
    {
      v23 = v19 - 1;
    }

    v24 = (v10 + 12 * v23);
    v25 = *a6;
    if (*a6 == v15)
    {
      v30 = a6[2];
      if (v15 >= v30)
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v15) >> 2);
        v38 = 2 * v37;
        if (2 * v37 <= 1)
        {
          v38 = 1;
        }

        if (v37 >= 0xAAAAAAAAAAAAAAALL)
        {
          v39 = 0x1555555555555555;
        }

        else
        {
          v39 = v38;
        }

        if (v39 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v31 = *v24;
      *(v15 + 8) = v24[2];
      *v15 = v31;
      v9 = v15 + 12;
      a6[1] = v15 + 12;
      goto LABEL_6;
    }

    v26 = *(v15 - 12);
    v74 = *(v15 - 4);
    v73 = v26;
    if (!a4)
    {
      sub_314EC(&v73, v24, v12);
      v29 = v17 + v12;
      if (v17 + v12 > v13)
      {
        break;
      }

      goto LABEL_24;
    }

    if (!a5 || v74 == 0x7FFFFFFF || (v27 = v24[2], v27 == 0x7FFFFFFF))
    {
      v28 = 0;
    }

    else
    {
      v28 = fabs((v74 - v27));
    }

    v12 = sqrt(((v73 - *v24) * (v73 - *v24) + (HIDWORD(v73) - v24[1]) * (HIDWORD(v73) - v24[1]) + v28 * v28)) / 100.0;
    v29 = v17 + v12;
    if (v17 + v12 > v13)
    {
      break;
    }

LABEL_24:
    v32 = a6[2];
    if (v15 < v32)
    {
      v20 = *v24;
      *(v15 + 8) = v24[2];
      *v15 = v20;
      v9 = v15 + 12;
    }

    else
    {
      v33 = v15 - v25;
      v34 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 2) + 1;
      if (v34 > 0x1555555555555555)
      {
        sub_1794();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v25) >> 2);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0xAAAAAAAAAAAAAAALL)
      {
        v36 = 0x1555555555555555;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (v36 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v40 = 4 * (v33 >> 2);
      v41 = *v24;
      *(v40 + 8) = v24[2];
      *v40 = v41;
      v9 = v40 + 12;
      v42 = v40 - v33;
      memcpy((v40 - v33), v25, v33);
      *a6 = v42;
      a6[1] = v9;
      a6[2] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    a6[1] = v9;
    v17 = v29;
LABEL_6:
    v10 = *a1;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
    v21 = v19++ >= v16;
    --v18;
    v22 = !v21 && v17 < v13;
    v15 = v9;
    if (!v22)
    {
      goto LABEL_79;
    }
  }

  v43 = 0.0;
  if (v12 > 0.0)
  {
    v43 = (v13 - v17) / v12;
  }

  LODWORD(v12) = *v24;
  LODWORD(a7) = v24[1];
  *&v44 = *&v12;
  v45 = v43 * *&v44;
  LODWORD(a8) = HIDWORD(v73);
  LODWORD(v44) = v73;
  v46 = v44;
  v47 = 1.0 - v43;
  v48 = (v45 + (1.0 - v43) * v46 + 0.5);
  LODWORD(v49) = (v43 * a7 + (1.0 - v43) * a8 + 0.5);
  v50 = 0x7FFFFFFF;
  if (v74 != 0x7FFFFFFF)
  {
    v51 = v24[2];
    if (v51 != 0x7FFFFFFF)
    {
      v52 = v43 * v51;
      if (v52 >= 0.0)
      {
        if (v52 < 4.50359963e15)
        {
          v53 = (v52 + v52) + 1;
LABEL_54:
          v52 = (v53 >> 1);
        }
      }

      else if (v52 > -4.50359963e15)
      {
        v53 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
        goto LABEL_54;
      }

      v54 = v47 * v74;
      if (v54 >= 0.0)
      {
        if (v54 < 4.50359963e15)
        {
          v55 = (v54 + v54) + 1;
LABEL_60:
          v54 = (v55 >> 1);
        }
      }

      else if (v54 > -4.50359963e15)
      {
        v55 = (v54 + v54) - 1 + (((v54 + v54) - 1) >> 63);
        goto LABEL_60;
      }

      v50 = v54 + v52;
    }
  }

  if (v49 >= 0xFFFFFFFE)
  {
    v49 = 4294967294;
  }

  else
  {
    v49 = v49;
  }

  v56 = v48 | (v49 << 32);
  v57 = a6[2];
  if (v15 >= v57)
  {
    v58 = v15 - v25;
    v59 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v25) >> 2) + 1;
    if (v59 > 0x1555555555555555)
    {
      sub_1794();
    }

    v60 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v25) >> 2);
    if (2 * v60 > v59)
    {
      v59 = 2 * v60;
    }

    if (v60 >= 0xAAAAAAAAAAAAAAALL)
    {
      v61 = 0x1555555555555555;
    }

    else
    {
      v61 = v59;
    }

    if (v61)
    {
      if (v61 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v62 = 4 * ((v15 - v25) >> 2);
    *v62 = v56;
    *(v62 + 8) = v50;
    v9 = v62 + 12;
    v63 = v62 - v58;
    memcpy((v62 - v58), v25, v15 - v25);
    *a6 = v63;
    a6[1] = v9;
    a6[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = v56;
    *(v15 + 8) = v50;
    v9 = v15 + 12;
  }

  a6[1] = v9;
LABEL_79:
  if ((a3 & 1) == 0)
  {
    v64 = *a6;
    if (*a6 != v9)
    {
      v65 = v9 - 12;
      if (v9 - 12 > v64)
      {
        v66 = v64 + 12;
        do
        {
          v73 = *(v66 - 12);
          v67 = v73;
          v74 = *(v66 - 4);
          v68 = v74;
          v69 = *(v65 + 8);
          *(v66 - 12) = *v65;
          *(v66 - 4) = v69;
          *(v65 + 8) = v68;
          *v65 = v67;
          v65 -= 12;
          v21 = v66 >= v65;
          v66 += 12;
        }

        while (!v21);
      }
    }
  }
}

void sub_F48B24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_F48B50(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 96 * a2;
      do
      {
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 4) = -1;
        *(v3 + 12) = -1;
        *(v3 + 20) = -1;
        *(v3 + 28) = -1;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = 0;
        *(v3 + 72) = 0;
        *(v3 + 80) = 0;
        *(v3 + 87) = 0;
        v3 += 96;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v6 = v5 + a2;
    if (v5 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x155555555555555)
    {
      v8 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 96 * v5;
    v11 = 96 * v5 + 96 * a2;
    v12 = 96 * v5;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 4) = -1;
      *(v12 + 12) = -1;
      *(v12 + 20) = -1;
      *(v12 + 28) = -1;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 87) = 0;
      v12 += 96;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        v18 = *(v16 + 1);
        *v17 = *v16;
        *(v17 + 16) = v18;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 32) = 0;
        *(v17 + 32) = *(v16 + 2);
        *(v17 + 48) = v16[6];
        v16[4] = 0;
        v16[5] = 0;
        v16[6] = 0;
        v19 = *(v16 + 7);
        v20 = *(v16 + 9);
        *(v17 + 87) = *(v16 + 87);
        *(v17 + 72) = v20;
        *(v17 + 56) = v19;
        v16 += 12;
        v17 += 96;
      }

      while (v16 != v14);
      do
      {
        v21 = v13[4];
        if (v21)
        {
          v13[5] = v21;
          operator delete(v21);
        }

        v13 += 12;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_F48DB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 64);
      if (v5)
      {
        *(v3 - 56) = v5;
        operator delete(v5);
      }

      v3 -= 96;
    }
  }

  return a1;
}

double sub_F48E14(uint64_t a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *(&v17 + 1) = 0;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  v10 = *(a2 + 56);
  *&stru_20.segname[104 * v2 + 16] = v10;
  v11 = *(a2 + 64);
  *(v6 + 64) = v11;
  *(v6 + 72) = *(a2 + 72);
  if (v11)
  {
    v12 = *(v10 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v12 >= v9)
      {
        v12 %= v9;
      }
    }

    else
    {
      v12 &= v9 - 1;
    }

    *(v8 + 8 * v12) = 104 * v2 + 56;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  *(&stru_20.filesize + 13 * v2) = *(a2 + 80);
  *(&stru_20.nsects + 13 * v2) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *&v17 = v6 + 104;
  v13 = *(a1 + 8);
  v14 = v6 + *a1 - v13;
  sub_F48FE8(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  result = *&v17;
  *(a1 + 8) = v17;
  if (v15)
  {
    operator delete(v15);
    return *&v17;
  }

  return result;
}

void sub_F48FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_F49158(va);
  _Unwind_Resume(a1);
}

void sub_F48FE8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = &a2[v6];
      v9 = a4 + v6 * 8;
      v10 = *&a2[v6];
      v11 = *&a2[v6 + 2];
      *(v9 + 32) = a2[v6 + 4];
      *v9 = v10;
      *(v9 + 16) = v11;
      v12 = &a2[v6 + 7];
      v13 = *v12;
      v14 = a2[v6 + 5];
      v15 = a2[v6 + 6];
      *(v12 - 2) = 0;
      *(v9 + 40) = v14;
      *(v9 + 48) = v15;
      *(v12 - 1) = 0;
      *(a4 + v6 * 8 + 56) = v13;
      v16 = a2[v6 + 8];
      *(v9 + 64) = v16;
      *(v9 + 72) = a2[v6 + 9];
      if (v16)
      {
        v7 = *(v13 + 8);
        v17 = *(v9 + 48);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v7 >= v17)
          {
            v7 %= v17;
          }
        }

        else
        {
          v7 &= v17 - 1;
        }

        *(v14 + 8 * v7) = a4 + v6 * 8 + 56;
        *v12 = 0;
        a2[v6 + 8] = 0;
      }

      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 80) = *(v8 + 5);
      *(v9 + 96) = v8[12];
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      v6 += 13;
    }

    while (&a2[v6] != a3);
    while (v5 != a3)
    {
      v18 = v5[10];
      if (v18)
      {
        v19 = v5[11];
        v20 = v5[10];
        if (v19 != v18)
        {
          do
          {
            v21 = *(v19 - 64);
            if (v21)
            {
              *(v19 - 56) = v21;
              operator delete(v21);
            }

            v19 -= 80;
          }

          while (v19 != v18);
          v20 = v5[10];
        }

        v5[11] = v18;
        operator delete(v20);
      }

      v22 = v5[7];
      if (v22)
      {
        do
        {
          v23 = *v22;
          operator delete(v22);
          v22 = v23;
        }

        while (v23);
      }

      v24 = v5[5];
      v5[5] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      v5 += 13;
    }
  }
}

uint64_t sub_F49158(uint64_t a1)
{
  sub_F49190(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_F49190(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 80;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_F4925C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 - 64);
          if (v8)
          {
            *(v6 - 56) = v8;
            operator delete(v8);
          }

          v6 -= 80;
        }

        while (v6 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v9 = *(i - 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(i - 64);
    *(i - 64) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_F49320(uint64_t a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  sub_F49474(v11, a2);
  v6 = 104 * v2 + 104;
  v7 = *(a1 + 8);
  v8 = v11 + *a1 - v7;
  sub_F4804C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_F49460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F48014(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F49474(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 40) = 0u;
  v6 = (a1 + 40);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 18);
  prime = *(a2 + 6);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v6, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 6));
    v8 = *(a1 + 48);
    v9 = prime >= *&v8;
    if (prime > *&v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v9)
  {
    v10 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v8)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 7); i; i = *i)
  {
    sub_F496B0(v6, i + 2);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v15 = *(a2 + 10);
  v14 = *(a2 + 11);
  if (v14 != v15)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F4964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v10 + 88) = v11;
  sub_F49B40(&a9);
  sub_11BD8(v9);
  _Unwind_Resume(a1);
}

void sub_F49680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_F49B40(&a9);
  sub_11BD8(v9);
  _Unwind_Resume(a1);
}

void *sub_F496B0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_F499E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v8 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v8;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v10 = *(v5 + 32);
      v9 = *(v5 + 40);
      if (v9 != v10)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v6 = *(v5 + 56);
      v7 = *(v5 + 72);
      *(a4 + 87) = *(v5 + 87);
      *(a4 + 72) = v7;
      *(a4 + 56) = v6;
      v5 += 96;
      a4 += 96;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_F49B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  sub_F48DB0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_F49B40(void ***a1)
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
          v6 = *(v4 - 8);
          if (v6)
          {
            *(v4 - 7) = v6;
            operator delete(v6);
          }

          v4 -= 96;
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

void sub_F49BC4(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 80 * a2;
      do
      {
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 4) = -1;
        *(v3 + 12) = -1;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = 0;
        *(v3 + 71) = 0;
        v3 += 80;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 80 * v5;
    v11 = 80 * v5 + 80 * a2;
    v12 = 80 * v5;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 4) = -1;
      *(v12 + 12) = -1;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 71) = 0;
      v12 += 80;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        *v17 = *v16;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(v17 + 16) = 0;
        *(v17 + 16) = *(v16 + 1);
        *(v17 + 32) = v16[4];
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = 0;
        v18 = *(v16 + 5);
        v19 = *(v16 + 7);
        *(v17 + 71) = *(v16 + 71);
        *(v17 + 56) = v19;
        *(v17 + 40) = v18;
        v16 += 10;
        v17 += 80;
      }

      while (v16 != v14);
      do
      {
        v20 = v13[2];
        if (v20)
        {
          v13[3] = v20;
          operator delete(v20);
        }

        v13 += 10;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void sub_F49E14(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, void *a4@<X8>, double a5@<D0>)
{
  sub_31BF20(a1, __p);
  sub_31214(__p, a3, &v14, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9 = a2 == 0;
  if (a2)
  {
    v10 = v14;
  }

  else
  {
    v10 = v16;
  }

  v11 = &v17;
  if (!v9)
  {
    v11 = &v15;
  }

  v12 = *v11;
  if (v12 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_F49F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_F49F68(void *a1, void *a2)
{
  if (*a1 != *a2 && *a1 != *a2 - 12)
  {
    __p = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }
}

void sub_F4A254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_F4A280(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  if (a1 != a2)
  {
LABEL_22:
    if (*(v3 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(v3 + 3) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(v3 + 10);
      v19 = *(v3 + 11);
      if (v18 != v19)
      {
        while (*(v18 + 32) != *(v18 + 40))
        {
          v18 += 96;
          if (v18 == v19)
          {
            v3 = (v3 + 104);
            v5 = a2;
            if (v3 != a2)
            {
              goto LABEL_22;
            }

            return v5;
          }
        }
      }
    }
  }

  if (v3 == a2)
  {
    return v3;
  }

  v4 = (v3 + 104);
  if ((v3 + 104) == a2)
  {
    return v3;
  }

  v5 = v3;
  do
  {
    v7 = v3;
    v3 = v4;
    if (v7[14] != 0x7FFFFFFFFFFFFFFFLL && v7[16] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v7[23];
      v10 = v7[24];
      if (v9 != v10)
      {
        while (*(v9 + 32) != *(v9 + 40))
        {
          v9 += 96;
          if (v9 == v10)
          {
            v11 = *v3;
            v12 = v3[1];
            *(v5 + 8) = *(v3 + 8);
            *v5 = v11;
            v5[1] = v12;
            sub_6BE5B4(v5 + 40, v7 + 18);
            v13 = (v5 + 5);
            v14 = *(v5 + 10);
            if (v14)
            {
              v15 = *(v5 + 11);
              v6 = *(v5 + 10);
              if (v15 != v14)
              {
                do
                {
                  v16 = *(v15 - 64);
                  if (v16)
                  {
                    *(v15 - 56) = v16;
                    operator delete(v16);
                  }

                  v15 -= 96;
                }

                while (v15 != v14);
                v6 = *v13;
              }

              *(v5 + 11) = v14;
              operator delete(v6);
              *v13 = 0;
              *(v5 + 11) = 0;
              *(v5 + 12) = 0;
            }

            v5[5] = *(v7 + 23);
            *(v5 + 12) = v7[25];
            v7[23] = 0;
            v7[24] = 0;
            v7[25] = 0;
            v5 = (v5 + 104);
            break;
          }
        }
      }
    }

    v4 = (v3 + 104);
  }

  while ((v3 + 104) != a2);
  return v5;
}

_DWORD *sub_F4A420@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if (result && *result)
  {
    operator new();
  }

  *a2 = 0uLL;
  *(a2 + 16) = 0;
  return result;
}

void sub_F4A548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F4A564(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = v3 - *v2;
    v8 = v7 >> 5;
    v9 = (v7 >> 5) + 1;
    if (v9 >> 59)
    {
      sub_1794();
    }

    v10 = v4 - v6;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = (32 * v8);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v15 = 32 * v8 + 32;
    memcpy(0, v6, v7);
    *v2 = 0;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    *(v2 + 8) = v3 + 2;
  }

  return result;
}

void sub_F4A690(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = sub_3175DC(*a1, *a2, *a3);
  if (v7 > 0xFFFFFFFEFFFFFFFFLL || v7 == 0)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_35:
      **(a1 + 8) = 0;
      return;
    }

    sub_19594F8(__p);
    v9 = sub_4A5C(__p, "Invalid checkpoint connection ", 30);
    v10 = sub_2FF718(v9, __ROR8__(*a2, 32));
    v11 = sub_4A5C(v10, " --> ", 5);
    v12 = sub_2FF718(v11, __ROR8__(*a3, 32));
    sub_4A5C(v12, ".", 1);
    if ((v38 & 0x10) != 0)
    {
      v25 = v37;
      if (v37 < v34)
      {
        v37 = v34;
        v25 = v34;
      }

      v26 = v33;
      v13 = v25 - v33;
      if (v25 - v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v38 & 8) == 0)
      {
        v13 = 0;
        v28 = 0;
LABEL_30:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v28 < 0)
        {
          operator delete(__dst);
        }

        if (v36 < 0)
        {
          operator delete(v35);
        }

        std::locale::~locale(&v30);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_35;
      }

      v26 = v31;
      v13 = v32 - v31;
      if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(&__dst, v26, v13);
    }

    goto LABEL_30;
  }

  v14 = v7;
  v15 = sub_3187E8(v6, v7, 1);
  if (v15 && (v16 = &v15[-*v15], *v16 >= 9u) && (v17 = *(v16 + 4)) != 0 && (v18 = &v15[v17], v19 = *v18, *&v18[v19] > HIDWORD(v14)) && (v20 = sub_318690(&v18[v19], v14)) != 0)
  {
    v21 = (v20 - *v20);
    if (*v21 >= 9u && (v22 = v21[4]) != 0)
    {
      v23 = (v20 + v22 + *(v20 + v22));
    }

    else
    {
      v23 = 0;
    }

    sub_31859C(v23, __p);
    v24 = *__p;
  }

  else
  {
    v30.__locale_ = 0;
    v24 = 0uLL;
    *__p = 0u;
  }

  sub_3790B0(*(a1 + 16), *(*(a1 + 16) + 8), v24, *(&v24 + 1), (*(&v24 + 1) - v24) >> 3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_F4AA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

unint64_t sub_F4AAA0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v9 = result;
  if (result != a2)
  {
    if (a3)
    {
      if (a5)
      {
        do
        {
          v14 = sub_4D1DC0(a3);
          result = sub_4D1DC0(a5);
          if (a4 >= v14 || a6 >= result)
          {
            if (a4 < v14 == a6 < result)
            {
              break;
            }
          }

          else
          {
            v15 = sub_4D1F50(a3, a4);
            result = sub_4D1F50(a5, a6);
            if (v15 == result)
            {
              break;
            }
          }

          result = sub_4D1F50(a3, a4);
          v16 = *(result + 32);
          if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v16), v16))
          {
            break;
          }

          if (*(v9 + 6) != BYTE6(v16))
          {
            break;
          }

          v9 += 8;
          ++a4;
        }

        while (v9 != a2);
      }

      else
      {
        do
        {
          result = sub_4D1DC0(a3);
          if (a4 >= result)
          {
            break;
          }

          result = sub_4D1F50(a3, a4);
          v17 = *(result + 32);
          if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v17), v17))
          {
            break;
          }

          if (*(v9 + 6) != BYTE6(v17))
          {
            break;
          }

          v9 += 8;
          ++a4;
        }

        while (v9 != a2);
      }
    }

    else if (a5)
    {
      do
      {
        result = sub_4D1DC0(a5);
        if (a6 >= result)
        {
          break;
        }

        result = sub_4D1F50(0, a4);
        v18 = *(result + 32);
        if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v18), v18))
        {
          break;
        }

        if (*(v9 + 6) != BYTE6(v18))
        {
          break;
        }

        v9 += 8;
        ++a4;
      }

      while (v9 != a2);
    }
  }

  *a7 = v9;
  a7[1] = a3;
  a7[2] = a4;
  return result;
}

__int128 *sub_F4AC7C(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  if (a1 != a2)
  {
LABEL_22:
    if (*(v3 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(v3 + 3) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(v3 + 10);
      v19 = *(v3 + 11);
      if (v18 != v19)
      {
        while (*(v18 + 16) != *(v18 + 24))
        {
          v18 += 80;
          if (v18 == v19)
          {
            v3 = (v3 + 104);
            v5 = a2;
            if (v3 != a2)
            {
              goto LABEL_22;
            }

            return v5;
          }
        }
      }
    }
  }

  if (v3 == a2)
  {
    return v3;
  }

  v4 = (v3 + 104);
  if ((v3 + 104) == a2)
  {
    return v3;
  }

  v5 = v3;
  do
  {
    v7 = v3;
    v3 = v4;
    if (v7[14] != 0x7FFFFFFFFFFFFFFFLL && v7[16] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v7[23];
      v10 = v7[24];
      if (v9 != v10)
      {
        while (*(v9 + 16) != *(v9 + 24))
        {
          v9 += 80;
          if (v9 == v10)
          {
            v11 = *v3;
            v12 = v3[1];
            *(v5 + 8) = *(v3 + 8);
            *v5 = v11;
            v5[1] = v12;
            sub_6BE5B4(v5 + 40, v7 + 18);
            v13 = (v5 + 5);
            v14 = *(v5 + 10);
            if (v14)
            {
              v15 = *(v5 + 11);
              v6 = *(v5 + 10);
              if (v15 != v14)
              {
                do
                {
                  v16 = *(v15 - 64);
                  if (v16)
                  {
                    *(v15 - 56) = v16;
                    operator delete(v16);
                  }

                  v15 -= 80;
                }

                while (v15 != v14);
                v6 = *v13;
              }

              *(v5 + 11) = v14;
              operator delete(v6);
              *v13 = 0;
              *(v5 + 11) = 0;
              *(v5 + 12) = 0;
            }

            v5[5] = *(v7 + 23);
            *(v5 + 12) = v7[25];
            v7[23] = 0;
            v7[24] = 0;
            v7[25] = 0;
            v5 = (v5 + 104);
            break;
          }
        }
      }
    }

    v4 = (v3 + 104);
  }

  while ((v3 + 104) != a2);
  return v5;
}

void sub_F4AE1C(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  sub_527724((a1 + 1), a3);
  memset(__p, 0, sizeof(__p));
  sub_67A1F8((a1 + 198), a2, 0, 0, __p);
}

void sub_F4AF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_F4AF44(uint64_t a1)
{
  if (*(a1 + 3959) < 0)
  {
    operator delete(*(a1 + 3936));
    sub_528AB4(a1 + 8);
  }

  else
  {
    sub_528AB4(a1 + 8);
  }

  return a1;
}

void sub_F4AF98(uint64_t a1, uint64_t a2, void ***a3)
{
  v6 = sub_4C35B0(a2);
  v7 = a3[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a3) >> 4);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
        ;
      }

      a3[1] = i;
    }
  }

  else
  {
    sub_D3DFD8(a3, v6 - v8);
  }

  v10 = sub_58BBC(a2);
  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v11 >> 3);
    do
    {
      v14 = sub_4C49C0(a2, v12);
      v15 = sub_D3DDA4(a3, v12);
      sub_F4B0A0(a1, v14, v15);
      ++v12;
    }

    while (v13 != v12);
  }
}

void sub_F4B0A0(uint64_t a1, void *a2, int8x8_t *a3)
{
  a3[13].i8[0] = sub_F4B468(a1, a2);
  if (!sub_7E7E4(1u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v18);
  sub_4A5C(&v18, "GeometryProcessor running. Springfield? ", 40);
  std::ostream::operator<<();
  if ((v28 & 0x10) != 0)
  {
    v7 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v7 = v24;
    }

    v8 = v23;
    v6 = v7 - v23;
    if (v7 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_31:
      sub_3244();
    }

LABEL_8:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v17 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_13;
  }

  if ((v28 & 8) != 0)
  {
    v8 = v21;
    v6 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v17 = 0;
LABEL_13:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  if (*(a1 + 4624) & 1) == 0 && sub_4C2C84(a1 + 4152) && (a3[13].i8[0])
  {
    ++*(a1 + 4672);
    sub_F4B77C(a1, a2, a3);
  }

  ++*(a1 + 4676);
  sub_4E5950(*a1, a2, a3);
  v9 = sub_4D27A4(a2);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*v9 != v11)
  {
    do
    {
      v12 = v10[5] - v10[4];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_F54E4C((*a3 + 40 * *v10 + v13), v10[4] + v14);
          v14 += 24;
          v13 += 40;
          --v15;
        }

        while (v15);
      }

      ++*(a1 + 4704);
      v10 += 8;
    }

    while (v10 != v11);
  }
}

void sub_F4B410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F4B468(_BYTE *a1, void *a2)
{
  if (a1[1433] != 1)
  {
    return 0;
  }

  v36 = v2;
  v37 = v3;
  if (a1[1434] != 1)
  {
    return 0;
  }

  sub_4D1DDC(a2, v33);
  v5 = v33[0];
  v6 = v33[1];
  v7 = v34;
  v8 = v35;
  if (!v33[0])
  {
    if (!v34 || v8 >= sub_4D1DC0(v34))
    {
      return 0;
    }

    while (1)
    {
      v20 = *(sub_4D1F50(0, v6) + 8);
      v21 = (v20 - *v20);
      if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
      {
        v23 = *(v20 + v22);
        v24 = a1[1575];
        v25 = a1[4081];
        if (v24)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v23 = 0;
        v24 = a1[1575];
        v25 = a1[4081];
        if (v24)
        {
          goto LABEL_41;
        }
      }

      if ((v25 & 1) == 0)
      {
        if ((v23 & 0x40) != 0)
        {
          return 1;
        }

        goto LABEL_34;
      }

LABEL_41:
      if ((v24 & 1) != 0 || !v25)
      {
        if (!v24 || (v25 & 1) != 0)
        {
          if ((v23 & 0x60C0) != 0)
          {
            return 1;
          }
        }

        else if ((v23 & 0x2040) != 0)
        {
          return 1;
        }
      }

      else if ((v23 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_34:
      v6 = (v6 + 1);
      v19 = sub_4D1DC0(v7);
      result = 0;
      if (v8 >= v19)
      {
        return result;
      }
    }
  }

  if (v34)
  {
    while (1)
    {
      v9 = sub_4D1DC0(v5);
      v10 = sub_4D1DC0(v7);
      if (v6 >= v9 || v8 >= v10)
      {
        if (v6 < v9 == v8 < v10)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_4D1F50(v5, v6);
        if (v11 == sub_4D1F50(v7, v8))
        {
          return 0;
        }
      }

      v12 = *(sub_4D1F50(v5, v6) + 8);
      v13 = (v12 - *v12);
      if (*v13 >= 0x11u && (v14 = v13[8]) != 0)
      {
        v15 = *(v12 + v14);
        v16 = a1[1575];
        v17 = a1[4081];
        if (v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v15 = 0;
        v16 = a1[1575];
        v17 = a1[4081];
        if (v16)
        {
          goto LABEL_19;
        }
      }

      if ((v17 & 1) == 0)
      {
        if ((v15 & 0x40) != 0)
        {
          return 1;
        }

        goto LABEL_7;
      }

LABEL_19:
      if ((v16 & 1) != 0 || !v17)
      {
        if (!v16 || (v17 & 1) != 0)
        {
          if ((v15 & 0x60C0) != 0)
          {
            return 1;
          }
        }

        else if ((v15 & 0x2040) != 0)
        {
          return 1;
        }
      }

      else if ((v15 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_7:
      v6 = (v6 + 1);
    }
  }

  if (v6 < sub_4D1DC0(v33[0]))
  {
    while (1)
    {
      v27 = *(sub_4D1F50(v5, v6) + 8);
      v28 = (v27 - *v27);
      if (*v28 >= 0x11u && (v29 = v28[8]) != 0)
      {
        v30 = *(v27 + v29);
        v31 = a1[1575];
        v32 = a1[4081];
        if (v31)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v30 = 0;
        v31 = a1[1575];
        v32 = a1[4081];
        if (v31)
        {
          goto LABEL_62;
        }
      }

      if ((v32 & 1) == 0)
      {
        if ((v30 & 0x40) != 0)
        {
          return 1;
        }

        goto LABEL_55;
      }

LABEL_62:
      if ((v31 & 1) != 0 || !v32)
      {
        if (!v31 || (v32 & 1) != 0)
        {
          if ((v30 & 0x60C0) != 0)
          {
            return 1;
          }
        }

        else if ((v30 & 0x2040) != 0)
        {
          return 1;
        }
      }

      else if ((v30 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_55:
      v6 = (v6 + 1);
      v26 = sub_4D1DC0(v5);
      result = 0;
      if (v6 >= v26)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_F4B77C(uint64_t a1, void *a2, int8x8_t *a3)
{
  sub_F3568C(a1 + 4152, a2, &v8);
  sub_F4BAF8(a1, &v8, a3);
  sub_F4B9B0(&v8, &v7);
  sub_F51C64(a1 + 4456, a2, a3, &v7);
  sub_F539E8(&v7, &__p);
  sub_F56A44((a1 + 4592), a2, &__p, a3, a1 + 4632);
}

void sub_F4B93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
    sub_F4BA70(&a13);
    sub_F4CC58(&a16);
    _Unwind_Resume(a1);
  }

  sub_F4BA70(&a13);
  sub_F4CC58(&a16);
  _Unwind_Resume(a1);
}

void sub_F4B988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_F4CC58(va);
  _Unwind_Resume(a1);
}

void sub_F4B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_F4CC58(va);
  _Unwind_Resume(a1);
}

void sub_F4B9B0(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      sub_F53778(v5, v2);
      sub_F5395C(a2, v5);
      if (__p)
      {
        v7 = __p;
        operator delete(__p);
      }

      if (v5[0])
      {
        v5[1] = v5[0];
        operator delete(v5[0]);
      }

      v2 += 13;
    }

    while (v2 != v3);
  }
}

void sub_F4BA54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F4C8D8(va);
  sub_F4BA70(v2);
  _Unwind_Resume(a1);
}

void **sub_F4BA70(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 136;
        v7 = *(v3 - 17);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 136;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_F4BAF8(uint64_t a1, int8x8_t **a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  while (2)
  {
    v6 = sub_45AC50(v3);
    v7 = sub_588E0(v3);
    if (v6 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (v6 >= v7)
    {
      goto LABEL_3;
    }

    while (2)
    {
      v9 = sub_681D38(v3);
      v19 = v6;
      v20 = &v19;
      *(sub_F4CECC(a3 + 3, &v19) + 6) = v9;
      if (!sub_F533D4(v3, v6))
      {
        goto LABEL_10;
      }

      v10 = sub_F533D4(v3, v6);
      v11 = a3[9];
      if (!*&v11)
      {
        goto LABEL_9;
      }

      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      if (v12.u32[0] > 1uLL)
      {
        v13 = v6;
        if (*&v11 <= v6)
        {
          v13 = v6 % *&v11;
        }
      }

      else
      {
        v13 = (*&v11 - 1) & v6;
      }

      v14 = *(a3[8] + 8 * v13);
      if (!v14 || (v15 = *v14) == 0)
      {
LABEL_9:
        v20 = v6;
        v21 = v10;
        sub_F4C91C(a3 + 8, &v20);
        goto LABEL_10;
      }

      if (v12.u32[0] < 2uLL)
      {
        v16 = *&v11 - 1;
        while (1)
        {
          v17 = v15[1];
          if (v17 == v6)
          {
            if (v15[2] == v6)
            {
              goto LABEL_33;
            }
          }

          else if ((v17 & v16) != v13)
          {
            goto LABEL_9;
          }

          v15 = *v15;
          if (!v15)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
        v18 = v15[1];
        if (v18 == v6)
        {
          break;
        }

        if (v18 >= *&v11)
        {
          v18 %= *&v11;
        }

        if (v18 != v13)
        {
          goto LABEL_9;
        }

LABEL_27:
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      if (v15[2] != v6)
      {
        goto LABEL_27;
      }

LABEL_33:
      *(v15 + 6) |= v10;
LABEL_10:
      if (++v6 != v8)
      {
        continue;
      }

      break;
    }

LABEL_3:
    v3 += 13;
    if (v3 != v4)
    {
      continue;
    }

    break;
  }
}

void sub_F4BCD4(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  sub_527724((a1 + 1), a3);
  memset(__p, 0, sizeof(__p));
  sub_67A1F8((a1 + 198), a2, 2, 0, __p);
}

void sub_F4BDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4(v15);
  _Unwind_Resume(a1);
}

void sub_F4BDFC(uint64_t a1, uint64_t a2, void ***a3)
{
  v6 = sub_4C35B0(a2);
  v7 = a3[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a3) >> 4);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
        ;
      }

      a3[1] = i;
    }
  }

  else
  {
    sub_D3DFD8(a3, v6 - v8);
  }

  v10 = sub_58BBC(a2);
  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v11 >> 3);
    do
    {
      while (1)
      {
        v14 = sub_4C49C0(a2, v12);
        v15 = sub_D3DDA4(a3, v12);
        if ((*(a1 + 4084) & 1) == 0)
        {
          break;
        }

        sub_F4BF28(a1, v14, v15);
        if (v13 == ++v12)
        {
          return;
        }
      }

      sub_4E57A8(*a1, v14, v15);
      ++v12;
    }

    while (v13 != v12);
  }
}

void sub_F4BF28(uint64_t a1, void *a2, uint64_t a3)
{
  *(a3 + 104) = sub_F4C2E4(a1);
  if (!sub_7E7E4(1u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v18);
  sub_4A5C(&v18, "GeometryProcessor running. Springfield? ", 40);
  std::ostream::operator<<();
  if ((v28 & 0x10) != 0)
  {
    v7 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v7 = v24;
    }

    v8 = v23;
    v6 = v7 - v23;
    if (v7 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_31:
      sub_3244();
    }

LABEL_8:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v17 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_13;
  }

  if ((v28 & 8) != 0)
  {
    v8 = v21;
    v6 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v17 = 0;
LABEL_13:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  if (*(a1 + 4624) & 1) == 0 && sub_4C2C84(a1 + 4152) && (*(a3 + 104))
  {
    ++*(a1 + 4672);
    sub_F4C55C(a1, a2, a3);
  }

  ++*(a1 + 4676);
  sub_4E57A8(*a1, a2, a3);
  v9 = sub_4D27A4(a2);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*v9 != v11)
  {
    do
    {
      v12 = v10[5] - v10[4];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_F54E4C((*a3 + 40 * *v10 + v13), v10[4] + v14);
          v14 += 24;
          v13 += 40;
          --v15;
        }

        while (v15);
      }

      ++*(a1 + 4704);
      v10 += 8;
    }

    while (v10 != v11);
  }
}

void sub_F4C298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F4C2E4(uint64_t a1)
{
  if (*(a1 + 1433) != 1)
  {
    return 0;
  }

  sub_4D0560();
  v3 = v2;
  v5 = v4;
  sub_4D0568();
  v8 = v6;
  v9 = v7;
  if (!v3)
  {
    if (!v6 || v7 >= sub_4D1DC0(v6))
    {
      return 0;
    }

    while (1)
    {
      v24 = *(sub_4D1F50(0, v5) + 8);
      v25 = (v24 - *v24);
      if (*v25 >= 0x11u && (v26 = v25[8]) != 0)
      {
        v27 = *(v24 + v26);
        if ((*(a1 + 4081) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        LOBYTE(v27) = 0;
        if ((*(a1 + 4081) & 1) == 0)
        {
LABEL_34:
          if ((v27 & 0x40) != 0)
          {
            return 1;
          }

          goto LABEL_35;
        }
      }

      if ((v27 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_35:
      ++v5;
      v23 = sub_4D1DC0(v8);
      result = 0;
      if (v9 >= v23)
      {
        return result;
      }
    }
  }

  if (v6)
  {
    while (1)
    {
      v11 = sub_4D1DC0(v3);
      v12 = sub_4D1DC0(v8);
      if (v5 >= v11 || v9 >= v12)
      {
        if (v5 < v11 == v9 < v12)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_4D1F50(v3, v5);
        if (v13 == sub_4D1F50(v8, v9))
        {
          return 0;
        }
      }

      v14 = *(sub_4D1F50(v3, v5) + 8);
      v15 = (v14 - *v14);
      if (*v15 >= 0x11u && (v16 = v15[8]) != 0)
      {
        v17 = *(v14 + v16);
        if ((*(a1 + 4081) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        LOBYTE(v17) = 0;
        if ((*(a1 + 4081) & 1) == 0)
        {
LABEL_7:
          if ((v17 & 0x40) != 0)
          {
            return 1;
          }

          goto LABEL_8;
        }
      }

      if ((v17 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_8:
      ++v5;
    }
  }

  if (v5 < sub_4D1DC0(v3))
  {
    while (1)
    {
      v19 = *(sub_4D1F50(v3, v5) + 8);
      v20 = (v19 - *v19);
      if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
      {
        v22 = *(v19 + v21);
        if ((*(a1 + 4081) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        LOBYTE(v22) = 0;
        if ((*(a1 + 4081) & 1) == 0)
        {
LABEL_22:
          if ((v22 & 0x40) != 0)
          {
            return 1;
          }

          goto LABEL_23;
        }
      }

      if ((v22 & 0xC0) != 0)
      {
        return 1;
      }

LABEL_23:
      ++v5;
      v18 = sub_4D1DC0(v3);
      result = 0;
      if (v5 >= v18)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_F4C55C(uint64_t a1, void *a2, uint64_t *a3)
{
  sub_F40E9C((a1 + 4152), a2, &v8);
  sub_F4BAF8(a1, &v8, a3);
  sub_F4C790(&v8, &v7);
  sub_F5243C(a1 + 4456, a2, a3, &v7);
  sub_F540E4(&v7, &__p);
  sub_F5BB0C((a1 + 4592), a2, &__p, a3, a1 + 4632);
}

void sub_F4C71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
    sub_F4C850(&a13);
    sub_F4CDB4(&a16);
    _Unwind_Resume(a1);
  }

  sub_F4C850(&a13);
  sub_F4CDB4(&a16);
  _Unwind_Resume(a1);
}

void sub_F4C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_F4CDB4(va);
  _Unwind_Resume(a1);
}

void sub_F4C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_F4CDB4(va);
  _Unwind_Resume(a1);
}

void sub_F4C790(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      sub_F5387C(v5, v2);
      sub_F54058(a2, v5);
      if (__p)
      {
        v7 = __p;
        operator delete(__p);
      }

      if (v5[0])
      {
        v5[1] = v5[0];
        operator delete(v5[0]);
      }

      v2 += 13;
    }

    while (v2 != v3);
  }
}

void sub_F4C834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F4CD70(va);
  sub_F4C850(v2);
  _Unwind_Resume(a1);
}