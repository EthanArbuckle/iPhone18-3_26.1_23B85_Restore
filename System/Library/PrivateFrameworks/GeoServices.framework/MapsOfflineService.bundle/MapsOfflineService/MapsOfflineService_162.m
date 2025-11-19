void sub_9F4D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_9FFE48(&a9);
  sub_9FFEB4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_9F4D54(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  LODWORD(v85[0]) = 3;
  v8 = a4[2];
  if (v8 >= a4[3])
  {
    v9 = sub_9FEC44(a4 + 1, v85);
  }

  else
  {
    sub_9FF7A0(a4[2], 3);
    v9 = v8 + 5704;
    a4[2] = v9;
  }

  a4[2] = v9;
  v10 = *(a2 + 4);
  v11 = sub_3A231C(*(a1 + 32), *(a2 + 8) | (v10 << 32), 0);
  v12 = &v11[-*v11];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v13 += &v11[*&v11[v13]];
    }
  }

  v14 = (v13 + 4 * v10 + 4 + *(v13 + 4 * v10 + 4));
  v15 = (v14 - *v14);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = *(v14 + v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = *&v11[24 * v17 + 4 + 24 * a3 + *(v12 + 3) + *&v11[*(v12 + 3)]];
  v19 = *(a2 + 4);
  v20 = sub_3A231C(*(a1 + 32), *(a2 + 8) | (v19 << 32), 0);
  v21 = &v20[-*v20];
  if (*v21 >= 5u && *(v21 + 2))
  {
    v22 = &v20[*(v21 + 2) + *&v20[*(v21 + 2)]];
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[4 * v19 + 4 + *&v22[4 * v19 + 4]];
  v24 = &v23[-*v23];
  if (*v24 >= 0xDu && (v25 = *(v24 + 6)) != 0)
  {
    v26 = *&v23[v25];
  }

  else
  {
    v26 = -1;
  }

  v27 = *&v20[24 * a3 + 28 + 24 * v26 + *(v21 + 3) + *&v20[*(v21 + 3)]];
  v28 = *(a1 + 2568);
  if (v18)
  {
    v29 = HIDWORD(v18);
  }

  else
  {
    v29 = -1;
  }

  if (HIDWORD(v18) == 0xFFFFFFFF || v18 == 0)
  {
    v31 = 0;
  }

  else
  {
    v31 = v18;
  }

  *&v85[0] = __PAIR64__(v29, v31);
  *(v9 - 5656) = sub_9B018C(v28, v85);
  v32 = *(a1 + 2568);
  if (v27)
  {
    v33 = HIDWORD(v27);
  }

  else
  {
    v33 = -1;
  }

  if (HIDWORD(v27) == 0xFFFFFFFF || v27 == 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = v27;
  }

  *&v85[0] = __PAIR64__(v33, v35);
  *(v9 - 5648) = sub_9B018C(v32, v85);
  if (*(a1 + 6))
  {
    *(v9 - 3808) = sub_9F9078(a1, *(a2 + 8) | (*(a2 + 4) << 32), a3);
    v36 = sub_9B6E08(*(a1 + 2568));
    v37 = *(v36 + 240);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v36 + 248) - v37) >> 3) <= *(v9 - 3808))
    {
      sub_6FAB4();
    }

    v38 = (v37 + 24 * *(v9 - 3808));
    v39 = *v38;
    v40 = v38[1];
    v41 = 0.0;
    if (*v38 != v40)
    {
      v42 = v39 + 3;
      if (v39 + 3 != v40)
      {
        v43 = 0.0;
        v78 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        v76 = vdupq_n_s64(0xC066800000000000);
        v77 = vdupq_n_s64(0x4076800000000000uLL);
        v75 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        HIDWORD(v44) = 1096306543;
        do
        {
          LODWORD(v44) = *(v42 - 2);
          v45 = exp(3.14159265 - *&v44 * 6.28318531 / 4294967300.0);
          *&v46 = atan((v45 - 1.0 / v45) * 0.5) * 57.2957795;
          LODWORD(v47) = *(v42 - 3);
          HIDWORD(v47) = *v42;
          v79 = v47;
          v48 = *&v46 * 0.0174532925;
          LODWORD(v46) = v42[1];
          v49 = exp(3.14159265 - v46 * 6.28318531 / 4294967300.0);
          v50 = atan((v49 - 1.0 / v49) * 0.5) * 57.2957795 * 0.0174532925;
          v51.i64[0] = v79;
          v51.i64[1] = HIDWORD(v79);
          v52 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v51), v77), v78), v76), v75);
          v80 = vsubq_f64(v52, vdupq_laneq_s64(v52, 1)).f64[0];
          v53 = sin((v48 - v50) * 0.5);
          v54 = v53 * v53;
          v55 = cos(v48);
          v56 = v55 * cos(v50);
          v57 = sin(0.5 * v80);
          v58 = atan2(sqrt(v57 * v57 * v56 + v54), sqrt(1.0 - (v57 * v57 * v56 + v54)));
          v44 = (v58 + v58) * 6372797.56;
          v43 = v43 + v44;
          v42 += 3;
        }

        while (v42 != v40);
        v41 = v43 * 100.0;
        if (v43 * 100.0 < 0.0)
        {
          if (v41 <= -4.50359963e15)
          {
            v60 = 1;
            v59 = v43 * 100.0;
          }

          else
          {
            v59 = (((v41 + v41) - 1) / 2);
            v60 = 1;
          }

LABEL_50:
          if (v59 >= 9.22337204e18)
          {
            v62 = 0x7FFFFFFFFFFFFFFELL;
LABEL_59:
            *(v9 - 3816) = v62;
            goto LABEL_60;
          }

          if (v60)
          {
            if (v41 > -4.50359963e15)
            {
              v61 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
LABEL_57:
              v41 = (v61 >> 1);
            }
          }

          else if (v41 < 4.50359963e15)
          {
            v61 = (v41 + v41) + 1;
            goto LABEL_57;
          }

          v62 = v41;
          goto LABEL_59;
        }

        if (v41 >= 4.50359963e15)
        {
          v60 = 0;
          v59 = v43 * 100.0;
          goto LABEL_50;
        }
      }
    }

    v60 = 0;
    v59 = (((v41 + v41) + 1) >> 1);
    goto LABEL_50;
  }

LABEL_60:
  v86 = 0u;
  memset(v85, 0, sizeof(v85));
  LOBYTE(v86) = 1;
  *(&v86 + 4) = 0x8000000080000000;
  memset(v81, 0, sizeof(v81));
  v82 = 1;
  v83 = 0x7FFFFFFF7FFFFFFFLL;
  v84 = 0;
  result = sub_9F6FCC(a1, a2, a3, v85, v81, 0, v9 - 5704);
  v64 = a4[1];
  if (*(v9 - 5588) == 0x7FFFFFFF)
  {
    v65 = a4[2] - 5704;
    if (v65 != v64)
    {
      v66 = a4[2] - 11264;
      v67 = a4[2] - 5704;
      while (1)
      {
        if (*(v66 + 648) == 1)
        {
          result = sub_B6E0(v66);
          if (result)
          {
            break;
          }
        }

        v67 -= 5704;
        v65 -= 5704;
        v66 -= 5704;
        if (v67 == v64)
        {
          v65 = v64;
          break;
        }
      }

      v64 = a4[1];
    }

    if (v64 != v65)
    {
      *(v9 - 5560) = *(v65 - 5560);
      *(v9 - 4959) = *(v65 - 4959);
      v64 = a4[1];
    }
  }

  if (0xBC7FD20AC579B779 * ((a4[2] - v64) >> 3) <= 1)
  {
    sub_6FAB4();
  }

  v68 = a4[2];
  if (*(v68 - 11408) == 3)
  {
    v69 = *(v68 - 9428);
    goto LABEL_79;
  }

  result = sub_9B6E08(*(a1 + 2568));
  v70 = *(v9 - 4952);
  v71 = *(result + 72);
  if (0x66FD0EB66FD0EB67 * ((*(result + 80) - v71) >> 3) <= v70)
  {
    sub_6FAB4();
  }

  v72 = *(v71 + 696 * v70 + 552);
  v69 = 1;
  if (v72 > 6 || ((1 << v72) & 0x52) == 0)
  {
    v74 = 100 * ((5243 * (v72 >> 2)) >> 17);
    v69 = 1;
    if (v74 > 999)
    {
      if (v74 == 1000 || v74 == 1200 || v74 == 1300)
      {
        goto LABEL_79;
      }
    }

    else if (v74 == 400 || v74 == 500 || v74 == 600)
    {
      goto LABEL_79;
    }

    v69 = 0;
  }

LABEL_79:
  *(v9 - 3724) = v69;
  return result;
}

void sub_9F54F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_9FFE48(&a29);
  sub_9FFEB4(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_9F5514(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  LODWORD(v32[0]) = 4;
  v6 = a3[2];
  if (v6 >= a3[3])
  {
    v7 = sub_9FEC44(a3 + 1, v32);
  }

  else
  {
    sub_9FF7A0(a3[2], 4);
    v7 = v6 + 5704;
    a3[2] = v7;
  }

  a3[2] = v7;
  *(v7 - 5664) = sub_503974(a2, *(a1 + 2696));
  v8 = a2[1];
  v9 = a2[5];
  v10 = sub_3A231C(*(a1 + 32), a2[2] | (v8 << 32), 0);
  v11 = &v10[-*v10];
  if (*v11 < 5u)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 2);
    if (*(v11 + 2))
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + 4 * v8 + 4 + *(v12 + 4 * v8 + 4));
  v14 = (v13 - *v13);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = *(v13 + v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = *&v10[24 * v16 + 4 + 24 * v9 + *(v11 + 3) + *&v10[*(v11 + 3)]];
  v18 = *(a1 + 2568);
  if (v17)
  {
    v19 = HIDWORD(v17);
  }

  else
  {
    v19 = -1;
  }

  if (HIDWORD(v17) == 0xFFFFFFFF || v17 == 0)
  {
    LODWORD(v17) = 0;
  }

  *&v32[0] = __PAIR64__(v19, v17);
  v21 = sub_9B018C(v18, v32);
  *(v7 - 5656) = v21;
  *(v7 - 5648) = v21;
  v22 = a2[5];
  v33 = 0u;
  memset(v32, 0, sizeof(v32));
  LOBYTE(v33) = 1;
  *(&v33 + 4) = 0x8000000080000000;
  memset(v28, 0, sizeof(v28));
  v29 = 1;
  v30 = 0x7FFFFFFF7FFFFFFFLL;
  v31 = 0;
  result = sub_9F6FCC(a1, a2, v22, v32, v28, 0, v7 - 5704);
  if (*(v7 - 5588) == 0x7FFFFFFF)
  {
    v24 = a3[1];
    v25 = a3[2] - 5704;
    if (v25 != v24)
    {
      v26 = a3[2] - 11264;
      v27 = a3[2] - 5704;
      while (1)
      {
        if (*(v26 + 648) == 1)
        {
          result = sub_B6E0(v26);
          if (result)
          {
            break;
          }
        }

        v27 -= 5704;
        v25 -= 5704;
        v26 -= 5704;
        if (v27 == v24)
        {
          v25 = v24;
          break;
        }
      }

      v24 = a3[1];
    }

    if (v24 != v25)
    {
      *(v7 - 5560) = *(v25 - 5560);
      *(v7 - 4959) = *(v25 - 4959);
    }
  }

  return result;
}

void sub_9F5788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_9FFE48(&a9);
  sub_9FFEB4(&a17);
  _Unwind_Resume(a1);
}

void sub_9F57A4(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v71 = 7;
  v8 = a4[2];
  if (v8 >= a4[3])
  {
    v9 = sub_9FEC44(a4 + 1, &v71);
  }

  else
  {
    sub_9FF7A0(a4[2], 7);
    v9 = v8 + 5704;
    a4[2] = v9;
  }

  a4[2] = v9;
  v71 = 0x7FFFFFFF;
  v72 = -1;
  v73 = -1;
  v74 = 0;
  v75[1] = 0;
  v76 = 0;
  v75[0] = 0;
  v77 = 0;
  v78 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v80 = 0;
  v81 = 0xFFFFFFFF00000000;
  v70 = 0xFFFFFFFF00000000;
  if (*(a2 + 80) == 1)
  {
    *(v9 - 5664) = *(a2 + 28);
    v69 = *(a2 + 24) | (*(a2 + 20) << 32);
    v72 = sub_9B50DC(*(a1 + 2568), &v69);
    v71 = 10 * (*(a2 + 32) - *(a2 + 28));
    if ((*(a2 + 80) & 1) == 0)
    {
      sub_4F0F0C();
    }

    v10 = *(a2 + 36);
    v11 = *(a2 + 40);
    v13 = *(a2 + 48);
    v12 = *(a2 + 56);
    if (v12 != v13)
    {
      if (((v12 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    LOBYTE(v24) = 0;
    if ((*(a2 + 72) & 1) == 0 && v10 != -1 && v11)
    {
      v25 = sub_994FB4(*(a1 + 24), v11 | (v10 << 32), 0, "transfer graph");
      v26 = (v25 - *v25);
      if (*v26 < 0x13u)
      {
        LOBYTE(v24) = 0;
      }

      else
      {
        v24 = v26[9];
        if (v24)
        {
          LOBYTE(v24) = *(v25 + v24) != 0;
        }
      }
    }

    v78 = v24;
    v63 = 0uLL;
    v64 = 0;
    v27 = *(a2 + 48);
    v28 = *(a2 + 56);
    if (v28 != v27)
    {
      if (((v28 - v27) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v66 = &v63;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v63;
    v80 = v64;
    v29 = *(a2 + 36);
    if (v29 != -1)
    {
      v30 = *(a2 + 40);
      if (v30)
      {
        v81 = v30 | (v29 << 32);
      }

      if (*(a2 + 80))
      {
        v70 = *(a2 + 12) | (*(a2 + 8) << 32);
        if (v30)
        {
          v31 = sub_994FB4(*(a1 + 24), v30 | (v29 << 32), 0, "transfer graph");
          v32 = (v31 - *v31);
          if (*v32 >= 0xBu)
          {
            v33 = v32[5];
            if (v33)
            {
              if (*(v31 + v33 + *(v31 + v33)))
              {
                v66 = 0;
                v67 = 0;
                v68 = 0;
                v34 = *(a2 + 48);
                v35 = *(a2 + 56);
                if (v34 != v35)
                {
                  v36 = 0;
                  do
                  {
                    v37 = *v34;
                    v38 = v34[1];
                    if (v36 < v68)
                    {
                      *v36 = v38 | (v37 << 32);
                      v36 += 8;
                    }

                    else
                    {
                      v39 = v66;
                      v40 = v36 - v66;
                      v41 = (v36 - v66) >> 3;
                      v42 = v41 + 1;
                      if ((v41 + 1) >> 61)
                      {
                        sub_1794();
                      }

                      v43 = v68 - v66;
                      if ((v68 - v66) >> 2 > v42)
                      {
                        v42 = v43 >> 2;
                      }

                      if (v43 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v44 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v44 = v42;
                      }

                      if (v44)
                      {
                        if (!(v44 >> 61))
                        {
                          operator new();
                        }

                        sub_1808();
                      }

                      v45 = v41;
                      v46 = (8 * v41);
                      v47 = v38 | (v37 << 32);
                      v48 = &v46[-v45];
                      *v46 = v47;
                      v36 = (v46 + 1);
                      memcpy(v48, v39, v40);
                      v66 = v48;
                      v67 = v36;
                      v68 = 0;
                      if (v39)
                      {
                        operator delete(v39);
                      }
                    }

                    v67 = v36;
                    v34 += 2;
                  }

                  while (v34 != v35);
                }

                sub_99470C(*(a1 + 2584), *(a2 + 40) | (*(a2 + 36) << 32), &v66, &v63);
                v60 = v75[0];
                if (v75[0])
                {
                  v61 = v75[1];
                  v62 = v75[0];
                  if (v75[1] != v75[0])
                  {
                    do
                    {
                      if (*(v61 - 9) < 0)
                      {
                        operator delete(*(v61 - 4));
                      }

                      v61 -= 5;
                    }

                    while (v61 != v60);
                    v62 = v75[0];
                  }

                  v75[1] = v60;
                  operator delete(v62);
                }

                *v75 = v63;
                v76 = v64;
                v77 = v65;
                if (v66)
                {
                  v67 = v66;
                  operator delete(v66);
                }
              }
            }
          }
        }

        goto LABEL_57;
      }

LABEL_89:
      sub_4F0F0C();
    }

    if (*(a2 + 80) != 1)
    {
      goto LABEL_89;
    }

    v23 = *(a2 + 12) | (*(a2 + 8) << 32);
  }

  else
  {
    *(v9 - 5664) = sub_503974(a3, *(a1 + 2696));
    v71 = 0;
    v14 = a3[1];
    v15 = a3[5];
    v16 = sub_3A231C(*(a1 + 32), a3[2] | (v14 << 32), 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (*(v17 + 2))
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = (v18 + 4 * v14 + 4 + *(v18 + 4 * v14 + 4));
    v20 = (v19 - *v19);
    if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
    {
      v22 = *(v19 + v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = *&v16[24 * v22 + 4 + 24 * v15 + *(v17 + 3) + *&v16[*(v17 + 3)]];
  }

  v70 = v23;
LABEL_57:
  v49 = sub_9B018C(*(a1 + 2568), &v70);
  *(v9 - 5656) = v49;
  v73 = v49;
  if (v72 != -1)
  {
    goto LABEL_58;
  }

  v55 = sub_9B6E08(*(a1 + 2568));
  if (0xCF3CF3CF3CF3CF3DLL * ((v55[1] - *v55) >> 3) <= v73)
  {
LABEL_87:
    sub_6FAB4();
  }

  v56 = *(*v55 + 168 * v73 + 104);
  if (v56 == -1)
  {
    goto LABEL_58;
  }

  v57 = v55[3];
  if (0x8E38E38E38E38E39 * ((v55[4] - v57) >> 4) <= v56)
  {
    sub_6FAB4();
  }

  v58 = *(v57 + 144 * v56 + 104);
  if (v58 == -1)
  {
LABEL_58:
    v50 = 0;
  }

  else
  {
    v59 = v55[6];
    if (0xF0F0F0F0F0F0F0F1 * ((v55[7] - v59) >> 3) <= v58)
    {
      sub_6FAB4();
    }

    v50 = *(v59 + 136 * v58 + 104) == 3;
  }

  HIBYTE(v74) = v50;
  v51 = sub_9B6E08(*(a1 + 2568));
  if (0xCF3CF3CF3CF3CF3DLL * ((v51[1] - *v51) >> 3) <= v73)
  {
    goto LABEL_87;
  }

  LOBYTE(v74) = *(*v51 + 168 * v73 + 163) ^ 1;
  sub_9F6778(v9 - 4856, &v71);
  *(v9 - 3816) = sub_9F68EC(a1, v9 - 4856);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v52 = v75[0];
  if (v75[0])
  {
    v53 = v75[1];
    v54 = v75[0];
    if (v75[1] != v75[0])
    {
      do
      {
        if (*(v53 - 9) < 0)
        {
          operator delete(*(v53 - 4));
        }

        v53 -= 5;
      }

      while (v53 != v52);
      v54 = v75[0];
    }

    v75[1] = v52;
    operator delete(v54);
  }
}

void sub_9F5EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    sub_9F6C1C(&a18);
    _Unwind_Resume(a1);
  }

  sub_9F6C1C(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_9F6004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  LODWORD(v39) = 1;
  v12 = a6[2];
  if (v12 < a6[3])
  {
    sub_9FF7A0(a6[2], 1);
    v13 = v12 + 5704;
    a6[2] = v13;
    a6[2] = v13;
    if (*(a3 + 1136) != 1 || *(a3 + 1128) != 2)
    {
      goto LABEL_16;
    }

LABEL_7:
    *(v13 - 5664) = *(a3 + 4);
    v15 = sub_5039D4(a3, *(a1 + 24));
    if (*(a4 + 1128) == 2)
    {
      v16 = *(a4 + 1136);
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v13 = sub_9FEC44(a6 + 1, &v39);
  a6[2] = v13;
  if (*(a3 + 1136) == 1 && *(a3 + 1128) == 2)
  {
    goto LABEL_7;
  }

LABEL_16:
  v15 = 0;
  *(v13 - 5664) = *sub_3CF22C(a2 + 32);
  if (*(a4 + 1128) == 2)
  {
    v16 = *(a4 + 1136);
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
LABEL_20:
    v17 = sub_5039D4(a4, *(a1 + 24));
    goto LABEL_21;
  }

LABEL_11:
  v17 = 0;
LABEL_21:
  if (0xBC7FD20AC579B779 * ((a6[2] - a6[1]) >> 3) >= 2)
  {
    v19 = a6[2];
    if (*(v19 - 11408) == 7)
    {
      *(v13 - 5656) = *(v19 - 11360);
    }
  }

  if (v16)
  {
    v20 = a5;
  }

  else
  {
    v20 = a4;
  }

  *(v13 - 5648) = sub_9F6CA0(a1, v20);
  if (*(a3 + 1136) == 1)
  {
    v42 = sub_9F6DC8(a1, a3, 1);
    v43 = v21;
    if (*(a4 + 1136) != 1)
    {
      goto LABEL_29;
    }

LABEL_32:
    v40 = sub_9F6DC8(a1, a4, 0);
    v41 = v22;
    if (*(a1 + 4) != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v42 = *(a1 + 64);
  v43 = *(a1 + 72);
  if (*(a4 + 1136) == 1)
  {
    goto LABEL_32;
  }

LABEL_29:
  v40 = *(a1 + 504);
  v41 = *(a1 + 512);
  if (*(a1 + 4) != 1)
  {
LABEL_34:
    v23 = 0;
    if (!sub_4D6468((a2 + 32)))
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

LABEL_33:
  if (*(a1 + 2680))
  {
    goto LABEL_34;
  }

  v23 = sub_96BA08(a2 + 32, &v42, &v40);
  if (!sub_4D6468((a2 + 32)))
  {
    goto LABEL_47;
  }

LABEL_37:
  if (!v23)
  {
    v24 = *(a2 + 8) != -1;
    v25 = *(a2 + 12) != 0;
    v26 = !v24 || !v25;
    if (v24 && v25)
    {
      v27 = a2 + 4;
    }

    else
    {
      v27 = a1 + 64;
    }

    if (v26)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    *&v39 = *v27;
    DWORD2(v39) = *(v27 + 8);
    HIDWORD(v39) = v28;
    if (*(a2 + 20) == -1 || !*(a2 + 24))
    {
      v36 = *(a1 + 504);
      v37 = *(a1 + 512);
      v29 = 1;
    }

    else
    {
      v36 = *(a2 + 16);
      v37 = *(a2 + 24);
      v29 = 2;
    }

    v38 = v29;
    v32 = sub_9B6020(*(a1 + 2568), a2 + 32, &v39, &v36, *(a1 + 2680));
    v33 = sub_9B6E08(*(a1 + 2568));
    v34 = *(v33 + 168);
    if (0x4FBCDA3AC10C9715 * ((*(v33 + 176) - v34) >> 7) <= v32)
    {
      sub_6FAB4();
    }

    v35 = (v34 + 7808 * v32);
    *(v13 - 3816) = v17 + v15 + sub_68C7DC(v35);
    result = sub_68C850(v35);
    v31 = result > *a1;
    if ((*(v13 - 5624) & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_47:
  result = sub_4D1DB8(a2 + 32);
  *(v13 - 3816) = v17 + v15 + result;
  v31 = 2;
  v32 = -1;
  if ((*(v13 - 5624) & 1) == 0)
  {
LABEL_48:
    *(v13 - 5624) = 1;
  }

LABEL_49:
  *(v13 - 5640) = v32;
  *(v13 - 5632) = v31;
  return result;
}

void sub_9F63DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  LODWORD(v30[0]) = 5;
  v6 = a3[2];
  if (v6 >= a3[3])
  {
    v7 = sub_9FEC44(a3 + 1, v30);
  }

  else
  {
    sub_9FF7A0(a3[2], 5);
    v7 = v6 + 5704;
    a3[2] = v7;
  }

  a3[2] = v7;
  *(v7 - 5664) = *(a2 + 28);
  v32[0] = *(a2 + 12) | (*(a2 + 8) << 32);
  *(v7 - 5656) = sub_9B018C(*(a1 + 2568), v32);
  v31 = *(a2 + 24) | (*(a2 + 20) << 32);
  *(v7 - 5648) = sub_9B018C(*(a1 + 2568), &v31);
  v8 = *(a2 + 28);
  v9 = *(a2 + 32);
  v10 = *(a2 + 36);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = 0;
  if ((*(a2 + 72) & 1) == 0 && v10 != -1 && v11)
  {
    v15 = sub_994FB4(*(a1 + 24), v11 | (v10 << 32), 0, "transfer graph");
    v16 = (v15 - *v15);
    if (*v16 >= 0x13u)
    {
      v14 = *(v15 + v16[9]) != 0;
      *v29 = a1;
      goto LABEL_14;
    }

    v14 = 0;
  }

  *v29 = a1;
LABEL_14:
  memset(v30, 0, sizeof(v30));
  v18 = *(a2 + 48);
  v17 = *(a2 + 56);
  v19 = v17 - v18;
  if (v17 != v18)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v32[2] = v30;
  v20 = *(a2 + 36);
  if (*(a2 + 40))
  {
    v21 = v20 == -1;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(a2 + 40) | (v20 << 32);
  *(v7 - 4744) = 10 * (v9 - v8);
  v23 = *(v7 - 4704);
  if (v21)
  {
    v24 = 0xFFFFFFFF00000000;
  }

  else
  {
    v24 = v22;
  }

  *(v7 - 4740) = v14;
  v25 = (v7 - 4736);
  if ((v23 & 1) == 0)
  {
    *v25 = 0;
    *(v7 - 4728) = 0;
    *(v7 - 4720) = v19;
    *(v7 - 4712) = v24;
    *(v7 - 4704) = 1;
    v27 = *v29;
    v28 = *a2;
    if (*a2 == -1)
    {
      return;
    }

    goto LABEL_29;
  }

  v26 = *v25;
  v27 = *v29;
  if (*v25)
  {
    *(v7 - 4728) = v26;
    operator delete(v26);
    *v25 = 0;
    *(v7 - 4728) = 0;
    *(v7 - 4720) = 0;
  }

  *v25 = 0;
  *(v7 - 4728) = 0;
  *(v7 - 4720) = v19;
  *(v7 - 4712) = v24;
  v28 = *a2;
  if (*a2 != -1)
  {
LABEL_29:
    sub_9F3C8C(v27, v28, 0, 0, v7 - 5704);
  }
}

void sub_9F6728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9F6778(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 104);
  v5 = *(a2 + 10);
  *result = *a2;
  *(result + 10) = v5;
  if (v4 == 1)
  {
    v6 = *(result + 32);
    if (v6)
    {
      v7 = *(result + 40);
      v8 = *(result + 32);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 9) < 0)
          {
            operator delete(*(v7 - 32));
          }

          v7 -= 40;
        }

        while (v7 != v6);
        v8 = *(v3 + 32);
      }

      *(v3 + 40) = v6;
      operator delete(v8);
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
    }

    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    v9 = *(v3 + 72);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 64) = *(a2 + 64);
    if (v9)
    {
      *(v3 + 80) = v9;
      operator delete(v9);
      *(v3 + 72) = 0;
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;
    }

    *(v3 + 72) = *(a2 + 72);
    *(v3 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(v3 + 96) = *(a2 + 96);
    return v3;
  }

  else
  {
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(result + 56) = *(a2 + 56);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = 0;
    *(result + 72) = *(a2 + 72);
    *(result + 88) = *(a2 + 88);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(result + 96) = *(a2 + 96);
    *(result + 104) = 1;
  }

  return result;
}

uint64_t sub_9F68EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == -1)
  {
    return 0;
  }

  v4 = sub_9B6E08(*(a1 + 2568));
  v5 = *(a2 + 8);
  v6 = *(v4 + 120);
  if (0x86BCA1AF286BCA1BLL * ((*(v4 + 128) - v6) >> 4) <= v5)
  {
    sub_6FAB4();
  }

  v7 = sub_9B6E08(*(a1 + 2568));
  v8 = *(a2 + 16);
  if (0xCF3CF3CF3CF3CF3DLL * ((v7[1] - *v7) >> 3) <= v8)
  {
    sub_6FAB4();
  }

  v9 = (v6 + 304 * v5);
  v11 = *v9;
  v10 = v9[1];
  if (v11 == -1 && v10 == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = (*v7 + 168 * v8);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 == -1 && v14 == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
  v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795 * 0.0174532925;
  v19.i64[0] = v11;
  v19.i64[1] = v15;
  v20 = exp(3.14159265 - v14 * 6.28318531 / 4294967300.0);
  v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
  v22 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v19), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v34 = vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0];
  v23 = sin((v18 - v21) * 0.5);
  v24 = v23 * v23;
  v25 = cos(v18);
  v26 = v25 * cos(v21);
  v27 = sin(0.5 * v34);
  v28 = atan2(sqrt(v27 * v27 * v26 + v24), sqrt(1.0 - (v27 * v27 * v26 + v24)));
  v29 = (v28 + v28) * 6372797.56 * 100.0;
  if (v29 >= 0.0)
  {
    v30 = v29;
    if (v29 >= 4.50359963e15)
    {
      goto LABEL_20;
    }

    v31 = (v29 + v29) + 1;
  }

  else
  {
    v30 = v29;
    if (v29 <= -4.50359963e15)
    {
      goto LABEL_20;
    }

    v31 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
  }

  v30 = (v31 >> 1);
LABEL_20:
  if (v30 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v29 >= 0.0)
  {
    if (v29 < 4.50359963e15)
    {
      v33 = (v29 + v29) + 1;
      return (v33 >> 1);
    }
  }

  else if (v29 > -4.50359963e15)
  {
    v33 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
    return (v33 >> 1);
  }

  return v29;
}

void *sub_9F6C1C(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    v4 = a1[5];
    v5 = a1[4];
    if (v4 != v3)
    {
      do
      {
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 32));
        }

        v4 -= 40;
      }

      while (v4 != v3);
      v5 = a1[4];
    }

    a1[5] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_9F6CA0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1136) != 1)
  {
    return -1;
  }

  v2 = *(a2 + 1128);
  if (v2 != 1)
  {
    if (!v2)
    {
      v4 = *(a2 + 4);
      v5 = *(a2 + 16);
      v6 = sub_3A231C(*(a1 + 32), *(a2 + 8) | (v4 << 32), 0);
      v7 = &v6[-*v6];
      if (*v7 >= 5u && *(v7 + 2))
      {
        v8 = &v6[*(v7 + 2) + *&v6[*(v7 + 2)]];
      }

      else
      {
        v8 = 0;
      }

      v11 = &v8[4 * v4 + 4 + *&v8[4 * v4 + 4]];
      v12 = &v11[-*v11];
      if (*v12 >= 0xDu && (v13 = *(v12 + 6)) != 0)
      {
        v14 = *&v11[v13];
      }

      else
      {
        v14 = -1;
      }

      v15 = *&v6[24 * (v14 + v5) + 4 + *(v7 + 3) + *&v6[*(v7 + 3)]];
      v10 = *(a1 + 2568);
      return sub_9B018C(v10, &v15);
    }

    return -1;
  }

  v15 = *(a2 + 24) | (*(a2 + 20) << 32);
  v10 = *(a1 + 2568);
  return sub_9B018C(v10, &v15);
}

unint64_t sub_9F6DC8(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = a2[282];
  if (!v3)
  {
    v10 = 4;
    if (a3 == 1)
    {
      v10 = 5;
    }

    v11 = a2[v10];
    v13 = a2[1];
    v14 = sub_3A231C(*(a1 + 32), a2[2] | (v13 << 32), 0);
    v15 = &v14[-*v14];
    if (*v15 >= 5u && *(v15 + 2))
    {
      v16 = &v14[*(v15 + 2) + *&v14[*(v15 + 2)]];
    }

    else
    {
      v16 = 0;
    }

    v19 = &v16[4 * v13 + 4 + *&v16[4 * v13 + 4]];
    v20 = &v19[-*v19];
    if (*v20 >= 0xDu && (v21 = *(v20 + 6)) != 0)
    {
      v22 = *&v19[v21];
    }

    else
    {
      v22 = -1;
    }

    v4 = sub_502FF8(*(a1 + 24), *&v14[24 * v22 + 4 + 24 * v11 + *(v15 + 3) + *&v14[*(v15 + 3)]], 0, "stop");
    v5 = *(v4 - *v4 + 6);
    goto LABEL_22;
  }

  if (v3 == 1)
  {
    v6 = 4;
    if (!a3)
    {
      v6 = 1;
    }

    v7 = &a2[v6];
    if (*v7 == 3)
    {
      v8 = sub_503310(*(a1 + 24), v7[2] | (v7[1] << 32), 0, "access point");
      v9 = 14;
    }

    else
    {
      if (*v7)
      {
        v18 = -1;
LABEL_31:
        v17 = HIDWORD(v18);
        return v18 | (v17 << 32);
      }

      v8 = sub_502FF8(*(a1 + 24), v7[2] | (v7[1] << 32), 0, "stop");
      v9 = 6;
    }

    v23 = v8 + *(v8 + v9 - *v8);
    v24 = *v23;
    LODWORD(v23) = *(v23 + 4);
    if (v23 >= 0xFFFFFFFE)
    {
      v23 = 4294967294;
    }

    else
    {
      v23 = v23;
    }

    v18 = v24 | (v23 << 32);
    goto LABEL_31;
  }

  if (v3 != 2)
  {
    v17 = 0xFFFFFFFFLL;
    LODWORD(v18) = -1;
    return v18 | (v17 << 32);
  }

  v4 = sub_503184(*(a1 + 24), a2[4] | (a2[3] << 32), 0, "road access point");
  v5 = *(v4 - *v4 + 8);
LABEL_22:
  v17 = v4 + v5;
  LODWORD(v18) = *v17;
  LODWORD(v17) = *(v17 + 4);
  if (v17 >= 0xFFFFFFFE)
  {
    v17 = 4294967294;
  }

  else
  {
    v17 = v17;
  }

  return v18 | (v17 << 32);
}

uint64_t sub_9F6FCC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7)
{
  v234 = 0x8000000080000000;
  v235 = 0;
  v236 = xmmword_22A5CD0;
  v237 = 0x8000000080000000;
  v238 = 0;
  v239 = xmmword_22A5CD0;
  v240 = 0x8000000080000000;
  v241 = 0x7FFFFFFF;
  v242 = 0;
  v243 = 0;
  v244[0] = 0;
  v244[56] = 0;
  v245 = 0u;
  memset(v246, 0, sizeof(v246));
  v247 = 2;
  v252 = 0;
  v250 = 0;
  v249 = 0;
  v248 = 0u;
  *(v253 + 3) = -1;
  LODWORD(v253[0]) = -1;
  memset(v253 + 7, 0, 26);
  memset(&v253[5], 0, 24);
  v254 = 0;
  v255 = 0;
  v256 = 1;
  memset(v257, 0, sizeof(v257));
  v258 = 0u;
  v259 = 0;
  v260 = 1;
  v261 = 0x7FFFFFFF7FFFFFFFLL;
  v262[0] = 0;
  v262[56] = 0;
  v263 = 0;
  v265 = 0;
  *(v266 + 3) = -1;
  LODWORD(v266[0]) = -1;
  memset(v266 + 7, 0, 26);
  v267 = 0;
  memset(&v266[5], 0, 24);
  v268 = -1;
  v269 = 0u;
  v271 = 0;
  v270 = 0;
  v273 = -1;
  v272 = -1;
  v274 = xmmword_22A5CD0;
  v275 = 0;
  v233 = vrev64_s32(*(a2 + 4));
  v11 = sub_3A25A8(*(a1 + 32), *&v233, 0, "trip");
  v232 = *(v11 + *(v11 - *v11 + 6));
  v12 = *(a1 + 2568);
  v218[0] = 0xFFFFFFFF00000000;
  v272 = sub_9B2B2C(v12, &v232, v218);
  v273 = sub_9F957C(*(a1 + 32), &v233);
  v13 = *(a2 + 12);
  *&v274 = v233;
  *(&v274 + 1) = __PAIR64__(a3, v13);
  v14 = sub_3A25A8(*(a1 + 32), *&v233, 0, "trip");
  v15 = (v14 - *v14);
  if (*v15 < 0x13u || (v16 = v15[9]) == 0 || !*(v14 + v16 + *(v14 + v16)))
  {
    v21 = sub_96A8FC(*(a1 + 32), &v233, *(a2 + 12), a3);
    v24 = sub_96A748(*(a1 + 32), &v233, *(a2 + 12), a3);
    LODWORD(v27) = *(a1 + 2384);
    if (v27)
    {
      v28 = *(a1 + 40);
      if (**(v28 + 3896))
      {
        v29 = sub_39F47C(**(v28 + 3896), *&v233, *(a2 + 12), *(v28 + 3904));
        v28 = *(a1 + 40);
        if (v29)
        {
          if (*(sub_95B1D4(v28, *&v233, *(a2 + 12), 0) + 32) == 1)
          {
            v23 = 0x7FFFFFFFLL;
            v30 = 1;
            LOWORD(v27) = 2;
            v22 = 0x7FFFFFFFLL;
            goto LABEL_55;
          }

          v28 = *(a1 + 40);
        }
      }

      v27 = **(v28 + 3896);
      if (v27)
      {
        v38 = sub_39F47C(**(v28 + 3896), *&v233, *(a2 + 12), *(v28 + 3904));
        if (v38)
        {
          v39 = v38[5];
          if (0xCCCCCCCCCCCCCCCDLL * ((v38[6] - v39) >> 2) > a3 && *(v39 + 20 * a3) != 255)
          {
            v23 = sub_96AC64(*(a1 + 40), *&v233, *(a2 + 12), a3);
            v22 = sub_96AAB0(*(a1 + 40), *&v233, *(a2 + 12), a3);
            LOWORD(v27) = *(sub_95AE74(*(a1 + 40), *&v233, *(a2 + 12), a3, 0) + 18);
            v30 = 1;
            goto LABEL_55;
          }
        }

        LOWORD(v27) = 0;
      }
    }

    v30 = 0;
    v23 = v21;
    v22 = v24;
LABEL_55:
    v40 = *(a2 + 12);
    v234 = v21 | (v23 << 32);
    v235 = v30 | (v27 << 8);
    *&v236 = v233;
    *(&v236 + 1) = __PAIR64__(a3, v40);
    v237 = v24 | (v22 << 32);
    v238 = v235;
    *&v239 = v233;
    v187 = 1;
    *(&v239 + 1) = __PAIR64__(a3, v40);
    v25 = *a7;
    if (*a7 != 3)
    {
      goto LABEL_5;
    }

LABEL_56:
    v41 = *(a2 + 16);
    _ZF = v41 == a3;
    if (v41 == a3)
    {
      v43 = v24;
    }

    else
    {
      v43 = v21;
    }

    if (_ZF)
    {
      v44 = v22;
    }

    else
    {
      v44 = v23;
    }

    if (v44 == 0x7FFFFFFF)
    {
      v44 = v43;
    }

    if (*(a1 + 2696) == 2)
    {
      v43 = v44;
    }

    *(a7 + 40) = v43;
    __p = 0uLL;
    v231 = 0;
    v228 = 0uLL;
    v229 = 0;
    v26 = *a7;
    v188 = a7;
    if (*a7 != 2)
    {
      goto LABEL_67;
    }

LABEL_25:
    v31 = sub_92FC60(*(a1 + 32), v232, 0, "line");
    v32 = (v31 - *v31);
    if (*v32 >= 0x25u && (v33 = v32[18]) != 0)
    {
      v34 = *(v31 + v33);
    }

    else
    {
      v34 = 0;
    }

    memset(v227, 0, sizeof(v227));
    if (*(&__p + 1) != __p)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((*(&__p + 1) - __p) >> 2)) <= 0x924924924924924)
      {
        operator new();
      }

      sub_1794();
    }

    sub_9F9C4C(v227, 1, v218);
    if (v257[0])
    {
      v257[1] = v257[0];
      operator delete(v257[0]);
    }

    *v257 = *v218;
    v257[2] = v218[2];
    memset(v226, 0, sizeof(v226));
    if (*(&v228 + 1) != v228)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((*(&v228 + 1) - v228) >> 2)) <= 0x924924924924924)
      {
        operator new();
      }

      sub_1794();
    }

    sub_9F9C4C(v226, 1, v218);
    if (v257[3])
    {
      v257[4] = v257[3];
      operator delete(v257[3]);
    }

    *&v257[3] = *v218;
    v257[5] = v218[2];
    v35 = v187;
    if (v34 != 2)
    {
      v35 = 0;
    }

    if (v35)
    {
LABEL_85:
      v50 = v233;
      v51 = sub_3A231C(*(a1 + 32), *&v233, 0);
      v52 = &v51[-*v51];
      if (*v52 < 5u)
      {
        v53 = 0;
      }

      else
      {
        v53 = *(v52 + 2);
        if (*(v52 + 2))
        {
          v53 += &v51[*&v51[v53]];
        }
      }

      v54 = (v53 + 4 * HIDWORD(*&v50) + 4 + *(v53 + 4 * HIDWORD(*&v50) + 4));
      v55 = (v54 - *v54);
      if (*v55 >= 0xDu && (v56 = v55[6]) != 0)
      {
        v57 = *(v54 + v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = *&v51[24 * v57 + 24 + 24 * a3 + *(v52 + 3) + *&v51[*(v52 + 3)]];
      if (v58)
      {
        v241 = *(a2 + 24) - v58;
      }

      if (*(a1 + 5) == 1)
      {
        v59 = (a5 + 6);
        if (!a6)
        {
          v59 = (a4 + 128);
        }

        v260 = *v59;
      }

      v60 = *(a4 + 8);
      v61 = *(a4 + 16);
      if (v60 != v61)
      {
        while (!sub_9FBD28(a1, v60))
        {
          v60 += 284;
          if (v60 == v61)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_108;
      }

LABEL_102:
      v62 = *(a4 + 80);
      v63 = *(a4 + 88);
      if (v62 == v63)
      {
LABEL_109:
        LOBYTE(v64) = 0;
      }

      else
      {
        v64 = **(*(a1 + 40) + 3896);
        if (v64)
        {
          while (1)
          {
            v65 = *(a1 + 40);
            v66 = **(v65 + 3896);
            if (v66)
            {
              if (sub_39F47C(v66, v62[1] | (*v62 << 32), v62[2], *(v65 + 3904)))
              {
                break;
              }
            }

            v62 += 7;
            if (v62 == v63)
            {
              goto LABEL_109;
            }
          }

LABEL_108:
          LOBYTE(v64) = 1;
        }
      }

      v275 = v64;
      sub_9FA7C0(*(a1 + 32), &v233, a3, *(a2 + 12), v218);
      sub_9D69F4(v218, v199);
      if (SHIBYTE(v246[3]) < 0)
      {
        operator delete(v246[1]);
      }

      *&v246[1] = *v199;
      v246[3] = *v200;
      v200[7] = 0;
      LOBYTE(v199[0]) = 0;
      v247 = v200[8];
      if (SHIBYTE(v249) < 0)
      {
        operator delete(v248);
        v248 = v202;
        v249 = v203;
        BYTE7(v203) = 0;
        LOBYTE(v202) = 0;
        if ((v200[7] & 0x80000000) != 0)
        {
          operator delete(v199[0]);
        }
      }

      else
      {
        v248 = v202;
        v249 = v203;
        BYTE7(v203) = 0;
        LOBYTE(v202) = 0;
      }

      v67 = *&v219[16];
      if (*&v219[16])
      {
        v68 = *&v219[24];
        v69 = *&v219[16];
        if (*&v219[24] != *&v219[16])
        {
          do
          {
            if (*(v68 - 1) < 0)
            {
              operator delete(*(v68 - 24));
            }

            v68 -= 32;
          }

          while (v68 != v67);
          v69 = *&v219[16];
        }

        *&v219[24] = v67;
        operator delete(v69);
      }

      if (SHIBYTE(v218[2]) < 0)
      {
        operator delete(v218[0]);
        a7 = v188;
        if (*(a1 + 8) != 1)
        {
          goto LABEL_146;
        }
      }

      else
      {
        a7 = v188;
        if (*(a1 + 8) != 1)
        {
          goto LABEL_146;
        }
      }

      if (*(a1 + 2388) >= 2u)
      {
        if (*(a1 + 2384))
        {
          v70 = *(a1 + 40);
          v71 = **(v70 + 3896);
          if (v71)
          {
            v72 = sub_39F47C(v71, *&v233, *(a2 + 12), *(v70 + 3904));
            if (v72)
            {
              v73 = v72[8];
              v74 = v72[9];
              if (v74 - v73 >= 72)
              {
                if (v74 - v73 != 72)
                {
                  v75 = 0x8E38E38E38E38E39 * ((v74 - v73) >> 3);
                  do
                  {
                    v76 = 18 * (v75 >> 2);
                    _X14 = &v73[v76];
                    __asm { PRFM            #0, [X14] }

                    v82 = &v73[18 * (v75 >> 1)];
                    _X13 = &v82[v76];
                    __asm { PRFM            #0, [X13] }

                    if (*v82 >= a3)
                    {
                      v85 = 0;
                    }

                    else
                    {
                      v85 = v75 >> 1;
                    }

                    v73 += 18 * v85;
                    v75 -= v75 >> 1;
                  }

                  while (v75 > 1);
                }

                v73 += 18 * (*v73 < a3);
              }

              if (v73 != v74 && *v73 == a3)
              {
                v86 = sub_A002F0(*(a1 + 40), *&v233, *(a2 + 12), a3, 0);
                sub_9D69F4((v86 + 1), v218);
                if (SHIBYTE(v246[3]) < 0)
                {
                  operator delete(v246[1]);
                }

                *&v246[1] = *v218;
                v246[3] = v218[2];
                HIBYTE(v218[2]) = 0;
                LOBYTE(v218[0]) = 0;
                v247 = v219[0];
                if (SHIBYTE(v249) < 0)
                {
                  operator delete(v248);
                  v248 = *&v219[8];
                  v249 = *&v219[24];
                  v219[31] = 0;
                  v219[8] = 0;
                  if (SHIBYTE(v218[2]) < 0)
                  {
                    operator delete(v218[0]);
                  }
                }

                else
                {
                  v248 = *&v219[8];
                  v249 = *&v219[24];
                }

                v255 = 1;
LABEL_158:
                v92 = v233;
                v93 = sub_3A231C(*(a1 + 32), *&v233, 0);
                v94 = &v93[-*v93];
                if (*v94 < 5u)
                {
                  v95 = 0;
                }

                else
                {
                  v95 = *(v94 + 2);
                  if (*(v94 + 2))
                  {
                    v95 += &v93[*&v93[v95]];
                  }
                }

                v96 = (v95 + 4 * HIDWORD(*&v92) + 4 + *(v95 + 4 * HIDWORD(*&v92) + 4));
                v97 = (v96 - *v96);
                if (*v97 >= 0xDu && (v98 = v97[6]) != 0)
                {
                  v99 = *(v96 + v98);
                }

                else
                {
                  v99 = -1;
                }

                sub_9FA970(a1, *&v93[24 * v99 + 4 + 24 * a3 + *(v94 + 3) + *&v93[*(v94 + 3)]], v232, &v246[1], v218);
                if (v252 == -1)
                {
                  if (*&v219[8] == -1)
                  {
                    goto LABEL_171;
                  }
                }

                else if (*&v219[8] == -1)
                {
                  (off_266F738[v252])(v199, v251);
                  v252 = -1;
                  goto LABEL_171;
                }

                v199[0] = v251;
                (off_266F8C8[*&v219[8]])(v199);
LABEL_171:
                v253[0] = *&v219[16];
                if (SHIBYTE(v253[3]) < 0)
                {
                  operator delete(v253[1]);
                }

                *&v253[1] = *&v219[24];
                v253[3] = v220;
                HIBYTE(v220) = 0;
                v219[24] = 0;
                LOBYTE(v253[4]) = v221;
                if (SHIBYTE(v253[7]) < 0)
                {
                  operator delete(v253[5]);
                  *&v253[5] = v222;
                  *(&v222.__r_.__value_.__s + 23) = 0;
                  v222.__r_.__value_.__s.__data_[0] = 0;
                  v254 = v223;
                  if (SHIBYTE(v220) < 0)
                  {
                    operator delete(*&v219[24]);
                    v100 = *&v219[8];
                    if (*&v219[8] == -1)
                    {
LABEL_179:
                      v101 = (a5 + 52);
                      if (!a6)
                      {
                        v101 = (a4 + 132);
                      }

                      v261 = *v101;
                      v26 = *a7;
                      if (*a7 == 8)
                      {
                        goto LABEL_183;
                      }

                      goto LABEL_182;
                    }
                  }

                  else
                  {
                    v100 = *&v219[8];
                    if (*&v219[8] == -1)
                    {
                      goto LABEL_179;
                    }
                  }
                }

                else
                {
                  *&v253[5] = v222;
                  *(&v222.__r_.__value_.__s + 23) = 0;
                  v222.__r_.__value_.__s.__data_[0] = 0;
                  v254 = v223;
                  v100 = *&v219[8];
                  if (*&v219[8] == -1)
                  {
                    goto LABEL_179;
                  }
                }

                (off_266F738[v100])(v199, v218);
                goto LABEL_179;
              }
            }
          }
        }
      }

LABEL_146:
      v87 = HIBYTE(v246[3]);
      if (v246[3] < 0)
      {
        v87 = v246[2];
      }

      if (v87)
      {
        v88 = HIBYTE(v249);
        if (v249 < 0)
        {
          v88 = *(&v248 + 1);
        }

        if (v88)
        {
          v89 = sub_A0013C(*(a1 + 32), *&v233, a3, *(a2 + 12));
          if (v89 && (v90 = (v89 - *v89), *v90 >= 9u))
          {
            v91 = v90[4];
            if (v91)
            {
              LOBYTE(v91) = *(v89 + v91) != 0;
            }
          }

          else
          {
            LOBYTE(v91) = 0;
          }

          v250 = v91;
        }
      }

      goto LABEL_158;
    }

    if (a6)
    {
      sub_9F9E5C(a5, v225);
      sub_9F9C4C(v225, 0, v218);
    }

    else
    {
      memset(v224, 0, sizeof(v224));
      v37 = *(a4 + 80);
      v36 = *(a4 + 88);
      if (v36 != v37)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v36 - v37) >> 2)) <= 0x924924924924924)
        {
          operator new();
        }

        sub_1794();
      }

      sub_9F9C4C(v224, 0, v218);
    }

    if (v258)
    {
      *(&v258 + 1) = v258;
      operator delete(v258);
    }

    v258 = *v218;
    v259 = v218[2];
    if (a6)
    {
      v45 = v225[0];
      if (v225[0])
      {
        v46 = v225;
LABEL_77:
        v46[1] = v45;
        operator delete(v45);
      }
    }

    else
    {
      v45 = v224[0];
      if (v224[0])
      {
        v46 = v224;
        goto LABEL_77;
      }
    }

    v240 = sub_9FA120(a1, a2, a4, a5, v257, v187, a6);
    v47 = sub_B6E0(&v240);
    if (v34 < 6u && v47)
    {
      v49 = 0x32u >> v34;
    }

    else
    {
      LOBYTE(v49) = 0;
    }

    HIBYTE(v271) = v49 & 1;
    goto LABEL_85;
  }

  v17 = sub_96A8FC(*(a1 + 32), &v233, *(a2 + 12), a3);
  v18 = sub_96A748(*(a1 + 32), &v233, *(a2 + 12), a3);
  v19 = sub_96A748(*(a1 + 32), &v233, *(a2 + 12), *(a2 + 16));
  v187 = 0;
  v20 = *(a2 + 24);
  LODWORD(v21) = v17 - v19 + v20;
  LODWORD(v22) = v18 - v19 + v20;
  LODWORD(v23) = v21;
  LODWORD(v24) = v22;
  v25 = *a7;
  if (*a7 == 3)
  {
    goto LABEL_56;
  }

LABEL_5:
  __p = 0uLL;
  v231 = 0;
  v228 = 0uLL;
  v229 = 0;
  if (v25 != 2 || !a6)
  {
    if (v25 == 8 || v25 == 2)
    {
      if (&__p != (a4 + 32))
      {
        sub_9FFF9C(&__p, *(a4 + 32), *(a4 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 40) - *(a4 + 32)) >> 2));
      }

      if (&v228 != (a4 + 56))
      {
        sub_9FFF9C(&v228, *(a4 + 56), *(a4 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 64) - *(a4 + 56)) >> 2));
      }
    }

    v26 = *a7;
    v188 = a7;
    if (*a7 != 2)
    {
      goto LABEL_67;
    }

    goto LABEL_25;
  }

  sub_9F96A4(a1, a5, *(a2 + 24), 0, v218);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = *v218;
  v231 = v218[2];
  sub_9F96A4(a1, a5, *(a2 + 24), 1, v218);
  if (v228)
  {
    *(&v228 + 1) = v228;
    operator delete(v228);
  }

  v228 = *v218;
  v229 = v218[2];
  v26 = *a7;
  v188 = a7;
  if (*a7 == 2)
  {
    goto LABEL_25;
  }

LABEL_67:
  if (v26 == 8)
  {
    goto LABEL_183;
  }

LABEL_182:
  if (v26 != 2)
  {
    goto LABEL_310;
  }

LABEL_183:
  sub_9FAB94((a1 + 2520), a2, &__p, &v228, v218);
  v102 = v245;
  if (!v245)
  {
    goto LABEL_193;
  }

  v103 = *(&v245 + 1);
  v104 = v245;
  if (*(&v245 + 1) != v245)
  {
    while (1)
    {
      if (*(v103 - 1) < 0)
      {
        operator delete(*(v103 - 3));
        v105 = v103 - 7;
        if ((*(v103 - 33) & 0x80000000) == 0)
        {
          goto LABEL_187;
        }

LABEL_190:
        operator delete(*v105);
        v103 = v105;
        if (v105 == v102)
        {
LABEL_191:
          v104 = v245;
          a7 = v188;
          break;
        }
      }

      else
      {
        v105 = v103 - 7;
        if (*(v103 - 33) < 0)
        {
          goto LABEL_190;
        }

LABEL_187:
        v103 = v105;
        if (v105 == v102)
        {
          goto LABEL_191;
        }
      }
    }
  }

  *(&v245 + 1) = v102;
  operator delete(v104);
LABEL_193:
  v245 = *v218;
  v246[0] = v218[2];
  sub_95858C(*(a1 + 32), &v233, a3, v218);
  sub_9D69F4(v218, &v212);
  v106 = *&v219[16];
  if (*&v219[16])
  {
    v107 = *&v219[24];
    v108 = *&v219[16];
    if (*&v219[24] != *&v219[16])
    {
      do
      {
        if (*(v107 - 1) < 0)
        {
          operator delete(*(v107 - 24));
        }

        v107 -= 32;
      }

      while (v107 != v106);
      v108 = *&v219[16];
    }

    *&v219[24] = v106;
    operator delete(v108);
  }

  if ((SHIBYTE(v218[2]) & 0x80000000) == 0)
  {
    v109 = v214;
    if ((v214 & 0x80u) != 0)
    {
      v109 = v213;
    }

    if (!v109)
    {
      goto LABEL_213;
    }

LABEL_209:
    v111 = v217;
    if ((v217 & 0x80u) != 0)
    {
      v111 = v216;
    }

    if (v111)
    {
      sub_9FB3A8(v262, &v212);
    }

    goto LABEL_213;
  }

  operator delete(v218[0]);
  v110 = v214;
  if ((v214 & 0x80u) != 0)
  {
    v110 = v213;
  }

  if (v110)
  {
    goto LABEL_209;
  }

LABEL_213:
  v112 = a5 + 61;
  if (!a6)
  {
    v112 = (a2 + 53);
  }

  v263 = *v112;
  v113 = sub_3A231C(*(a1 + 32), *&v233, 0);
  v114 = &v113[-*v113];
  if (*v114 < 5u)
  {
    v115 = 0;
  }

  else
  {
    v115 = *(v114 + 2);
    if (*(v114 + 2))
    {
      v115 += &v113[*&v113[v115]];
    }
  }

  v116 = (v115 + 4 * v233.u32[1] + 4 + *(v115 + 4 * v233.u32[1] + 4));
  v117 = (v116 - *v116);
  if (*v117 < 0x1Du || (v118 = v117[14]) == 0 || (v119 = *(v116 + v118), v119 == -1))
  {
    memset(v218, 0, sizeof(v218));
    v219[0] = 2;
    *&v219[8] = sub_12331FC();
    memset(&v219[16], 0, 24);
  }

  else
  {
    v120 = &v113[4 * v119 + *(v114 + 9) + *&v113[*(v114 + 9)]];
    sub_509164((v120 + 4 + *(v120 + 4)), v218);
  }

  sub_9D69F4(v218, &v206);
  v121 = *&v219[16];
  if (*&v219[16])
  {
    v122 = *&v219[24];
    v123 = *&v219[16];
    if (*&v219[24] != *&v219[16])
    {
      do
      {
        if (*(v122 - 1) < 0)
        {
          operator delete(*(v122 - 24));
        }

        v122 -= 32;
      }

      while (v122 != v121);
      v123 = *&v219[16];
    }

    *&v219[24] = v121;
    operator delete(v123);
  }

  if ((SHIBYTE(v218[2]) & 0x80000000) == 0)
  {
    v124 = v208;
    if ((v208 & 0x80u) != 0)
    {
      v124 = v207;
    }

    if (!v124)
    {
      goto LABEL_244;
    }

LABEL_240:
    v126 = v211;
    if ((v211 & 0x80u) != 0)
    {
      v126 = v210;
    }

    if (v126)
    {
      sub_9FB3A8(v244, &v206);
    }

    goto LABEL_244;
  }

  operator delete(v218[0]);
  v125 = v208;
  if ((v208 & 0x80u) != 0)
  {
    v125 = v207;
  }

  if (v125)
  {
    goto LABEL_240;
  }

LABEL_244:
  v127 = sub_3A25A8(*(a1 + 32), *&v233, 0, "trip");
  v128 = (v127 - *v127);
  if (*v128 < 0x1Bu)
  {
    LOBYTE(v129) = 0;
  }

  else
  {
    v129 = v128[13];
    if (v129)
    {
      LOBYTE(v129) = *(v127 + v129) != 0;
    }
  }

  v243 = v129;
  v130 = sub_3A231C(*(a1 + 32), *&v233, 0);
  v131 = &v130[-*v130];
  if (*v131 < 5u)
  {
    v132 = 0;
  }

  else
  {
    v132 = *(v131 + 2);
    if (*(v131 + 2))
    {
      v132 += &v130[*&v130[v132]];
    }
  }

  v133 = (v132 + 4 * v233.u32[1] + 4 + *(v132 + 4 * v233.u32[1] + 4));
  v134 = (v133 - *v133);
  if (*v134 >= 0x19u)
  {
    v135 = v134[12];
    if (v135)
    {
      v136 = *(v133 + v135);
      if (v136 != -1)
      {
        v137 = &v130[4 * v136 + *(v131 + 7) + *&v130[*(v131 + 7)]];
        v138 = (v137 + 4 + *(v137 + 4));
        v139 = (v138 - *v138);
        v140 = *v139;
        if (v140 < 7)
        {
          v141 = 0;
          v142 = 0xFFFFFF;
          if (v140 < 5)
          {
            goto LABEL_268;
          }

          v143 = v139[2];
          if (!v143)
          {
            goto LABEL_268;
          }

          goto LABEL_265;
        }

        if (v139[3])
        {
          v141 = *(v138 + v139[3]);
          if (v140 >= 9)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v141 = 0;
          if (v140 >= 9)
          {
LABEL_258:
            if (v139[4])
            {
              v142 = *(v138 + v139[4]);
              v143 = v139[2];
              if (!v143)
              {
                goto LABEL_268;
              }
            }

            else
            {
              v142 = 0xFFFFFF;
              v143 = v139[2];
              if (!v143)
              {
                goto LABEL_268;
              }
            }

            goto LABEL_265;
          }
        }

        v142 = 0xFFFFFF;
        v143 = v139[2];
        if (!v143)
        {
LABEL_268:
          v144 = 0;
LABEL_269:
          sub_509164(v144, v218);
          v199[1] = v218[0];
          *v200 = v218[1];
          *&v200[7] = *(&v218[1] + 7);
          LODWORD(v199[0]) = v141;
          HIDWORD(v199[0]) = v142;
          v201 = HIBYTE(v218[2]);
          v202 = *v219;
          v203 = *&v219[16];
          v204 = *&v219[32];
          v205 = 1;
          sub_9A77D0(v199, 4, v218, *v219);
          if (v265 == -1)
          {
            if (*&v219[8] == -1)
            {
              goto LABEL_274;
            }
          }

          else if (*&v219[8] == -1)
          {
            (off_266F738[v265])(v195, v264);
            v265 = -1;
            goto LABEL_274;
          }

          v195[0] = v264;
          (off_266F8C8[*&v219[8]])(v195);
LABEL_274:
          v266[0] = *&v219[16];
          if (SHIBYTE(v266[3]) < 0)
          {
            operator delete(v266[1]);
          }

          *&v266[1] = *&v219[24];
          v266[3] = v220;
          HIBYTE(v220) = 0;
          v219[24] = 0;
          LOBYTE(v266[4]) = v221;
          if (SHIBYTE(v266[7]) < 0)
          {
            operator delete(v266[5]);
            *&v266[5] = v222;
            *(&v222.__r_.__value_.__s + 23) = 0;
            v222.__r_.__value_.__s.__data_[0] = 0;
            v267 = v223;
            if (SHIBYTE(v220) < 0)
            {
              operator delete(*&v219[24]);
            }
          }

          else
          {
            *&v266[5] = v222;
            *(&v222.__r_.__value_.__s + 23) = 0;
            v222.__r_.__value_.__s.__data_[0] = 0;
            v267 = v223;
          }

          if (*&v219[8] != -1)
          {
            (off_266F738[*&v219[8]])(v195, v218);
          }

          v145 = sub_9B6E08(*(a1 + 2568));
          v146 = v272;
          v147 = *(v145 + 72);
          v148 = sub_9B6E08(*(a1 + 2568));
          v149 = (v147 + 696 * v146);
          v150 = v149[8];
          v151 = *(v148 + 96);
          sub_9D45F0(v149, v218);
          sub_9D45F0((v151 + 208 * v150), v195);
          v193 = 1;
          LOWORD(v192) = 32;
          sub_9FB598(&v192, v195, v218, &v206, &v194);
          if (SHIBYTE(v266[7]) < 0)
          {
            operator delete(v266[5]);
          }

          *&v266[5] = v194;
          *(&v194.__r_.__value_.__s + 23) = 0;
          v194.__r_.__value_.__s.__data_[0] = 0;
          if (v193 < 0)
          {
            operator delete(v192);
            if ((v198 & 0x80000000) == 0)
            {
LABEL_286:
              if ((v196 & 0x80000000) == 0)
              {
                goto LABEL_287;
              }

              goto LABEL_293;
            }
          }

          else if ((v198 & 0x80000000) == 0)
          {
            goto LABEL_286;
          }

          operator delete(v197);
          if ((v196 & 0x80000000) == 0)
          {
LABEL_287:
            if ((v219[31] & 0x80000000) == 0)
            {
              goto LABEL_288;
            }

            goto LABEL_294;
          }

LABEL_293:
          operator delete(v195[0]);
          if ((v219[31] & 0x80000000) == 0)
          {
LABEL_288:
            if ((SHIBYTE(v218[2]) & 0x80000000) == 0)
            {
              goto LABEL_289;
            }

            goto LABEL_295;
          }

LABEL_294:
          operator delete(*&v219[8]);
          if ((SHIBYTE(v218[2]) & 0x80000000) == 0)
          {
LABEL_289:
            if ((v205 & 1) == 0)
            {
              goto LABEL_306;
            }

            goto LABEL_296;
          }

LABEL_295:
          operator delete(v218[0]);
          if ((v205 & 1) == 0)
          {
            goto LABEL_306;
          }

LABEL_296:
          v152 = v203;
          if (v203)
          {
            v153 = *(&v203 + 1);
            v154 = v203;
            if (*(&v203 + 1) != v203)
            {
              do
              {
                if (*(v153 - 1) < 0)
                {
                  operator delete(*(v153 - 24));
                }

                v153 -= 32;
              }

              while (v153 != v152);
              v154 = v203;
            }

            *(&v203 + 1) = v152;
            operator delete(v154);
          }

          if (v201 < 0)
          {
            operator delete(v199[1]);
          }

          goto LABEL_306;
        }

LABEL_265:
        v144 = (v138 + v143 + *(v138 + v143));
        goto LABEL_269;
      }
    }
  }

LABEL_306:
  if (v211 < 0)
  {
    operator delete(v209);
    if ((v208 & 0x80000000) == 0)
    {
LABEL_308:
      if ((v217 & 0x80000000) == 0)
      {
        goto LABEL_309;
      }

LABEL_354:
      operator delete(v215);
      if ((v214 & 0x80000000) == 0)
      {
        goto LABEL_310;
      }

      goto LABEL_355;
    }
  }

  else if ((v208 & 0x80000000) == 0)
  {
    goto LABEL_308;
  }

  operator delete(v206);
  if (v217 < 0)
  {
    goto LABEL_354;
  }

LABEL_309:
  if ((v214 & 0x80000000) == 0)
  {
    goto LABEL_310;
  }

LABEL_355:
  operator delete(v212);
LABEL_310:
  v155 = v233;
  v156 = sub_3A231C(*(a1 + 32), *&v233, 0);
  v157 = &v156[-*v156];
  if (*v157 < 5u)
  {
    v158 = 0;
  }

  else
  {
    v158 = *(v157 + 2);
    if (*(v157 + 2))
    {
      v158 += &v156[*&v156[v158]];
    }
  }

  v159 = (v158 + 4 * HIDWORD(*&v155) + 4 + *(v158 + 4 * HIDWORD(*&v155) + 4));
  v160 = (v159 - *v159);
  if (*v160 >= 0xDu && (v161 = v160[6]) != 0)
  {
    v162 = *(v159 + v161);
  }

  else
  {
    v162 = -1;
  }

  v163 = v156[24 * v162 + 22 + 24 * a3 + *(v157 + 3) + *&v156[*(v157 + 3)]];
  v164 = v233;
  v165 = sub_3A231C(*(a1 + 32), *&v233, 0);
  v166 = &v165[-*v165];
  if (*v166 < 5u)
  {
    v167 = 0;
  }

  else
  {
    v167 = *(v166 + 2);
    if (*(v166 + 2))
    {
      v167 += &v165[*&v165[v167]];
    }
  }

  v168 = (v167 + 4 * HIDWORD(*&v164) + 4 + *(v167 + 4 * HIDWORD(*&v164) + 4));
  v169 = (v168 - *v168);
  if (*v169 >= 0xDu && (v170 = v169[6]) != 0)
  {
    v171 = *(v168 + v170);
  }

  else
  {
    v171 = -1;
  }

  v172 = v165[24 * v171 + 20 + 24 * a3 + *(v166 + 3) + *&v165[*(v166 + 3)]];
  v173 = *(a1 + 32);
  v174 = v233;
  v175 = sub_3A231C(v173, *&v233, 0);
  v176 = &v175[-*v175];
  if (*v176 < 5u)
  {
    v177 = 0;
  }

  else
  {
    v177 = *(v176 + 2);
    if (*(v176 + 2))
    {
      v177 += &v175[*&v175[v177]];
    }
  }

  v178 = (v177 + 4 * HIDWORD(*&v174) + 4 + *(v177 + 4 * HIDWORD(*&v174) + 4));
  v179 = (v178 - *v178);
  if (*v179 >= 0xDu && (v180 = v179[6]) != 0)
  {
    v181 = *(v178 + v180);
  }

  else
  {
    v181 = -1;
  }

  v182 = v175[24 * v181 + 21 + 24 * a3 + *(v176 + 3) + *&v175[*(v176 + 3)]];
  v183 = *a7;
  if (*a7 <= 3)
  {
    if (v183 == 2)
    {
      LOBYTE(v242) = v172;
      goto LABEL_357;
    }

    if (v183 != 3)
    {
LABEL_357:
      if (*(a7 + 792) == 1)
      {
        goto LABEL_358;
      }

LABEL_347:
      sub_9FF44C(a7 + 88, &v234);
      *(a7 + 792) = 1;
      v185 = v228;
      if (!v228)
      {
        goto LABEL_349;
      }

      goto LABEL_348;
    }

LABEL_340:
    if (v163 || (v172 == 1 ? (v184 = v182 == 1) : (v184 = 0), v184))
    {
      HIBYTE(v242) = 1;
      if (*(a7 + 792) == 1)
      {
        goto LABEL_358;
      }

      goto LABEL_347;
    }

    goto LABEL_357;
  }

  if (v183 != 4)
  {
    if (v183 != 8)
    {
      goto LABEL_357;
    }

    goto LABEL_340;
  }

  LOBYTE(v242) = v182;
  if (*(a7 + 792) != 1)
  {
    goto LABEL_347;
  }

LABEL_358:
  sub_A006A4(a7 + 88, &v234);
  v185 = v228;
  if (v228)
  {
LABEL_348:
    *(&v228 + 1) = v185;
    operator delete(v185);
  }

LABEL_349:
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  return sub_973264(&v234);
}

void sub_9F8A84(_Unwind_Exception *a1)
{
  v2 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v2;
    operator delete(v2);
    v3 = STACK[0x250];
    if (!STACK[0x250])
    {
LABEL_3:
      sub_973264(&STACK[0x280]);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v3 = STACK[0x250];
    if (!STACK[0x250])
    {
      goto LABEL_3;
    }
  }

  STACK[0x258] = v3;
  operator delete(v3);
  sub_973264(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void sub_9F8CD4(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0x8E38E38E38E38E39 * ((v4 - *a2) >> 4) >= 2)
  {
    for (; v3 != v4; v3 += 144)
    {
      v8 = *(v3 + 8);
      v9 = *(v3 + 16);
      if (v8 != v9)
      {
        while (v8[282])
        {
          v8 += 284;
          if (v8 == v9)
          {
            v8 = *(v3 + 16);
            break;
          }
        }
      }

      if (v8[282])
      {
        sub_5AF20();
      }

      v10 = sub_3A25A8(*(a1 + 32), v8[2] | (v8[1] << 32), 0, "trip");
      v27 = *(v10 + *(v10 - *v10 + 6));
      v11 = *(a1 + 2568);
      v25 = 0xFFFFFFFF00000000;
      v12 = sub_9B2B2C(v11, &v27, &v25);
      sub_981094((a1 + 2536), v3, &v25);
      v14 = v25;
      v13 = v26;
      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v15 = v14 != v13;
      v16 = a3[276];
      v17 = a3[277];
      if (v16 < v17)
      {
        *v16 = v12;
        *(v16 + 8) = v15;
        v7 = v16 + 16;
      }

      else
      {
        v18 = a3[275];
        v19 = v16 - v18;
        v20 = (v16 - v18) >> 4;
        v21 = v20 + 1;
        if ((v20 + 1) >> 60)
        {
          sub_1794();
        }

        v22 = v17 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v23 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (!(v23 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v24 = 16 * v20;
        *v24 = v12;
        *(v24 + 8) = v15;
        v7 = 16 * v20 + 16;
        memcpy(0, v18, v19);
        a3[275] = 0;
        a3[276] = v7;
        a3[277] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      a3[276] = v7;
    }

    sub_9CF2BC(*(a1 + 2576), (a3 + 275));
  }
}

void sub_9F8F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 2024;
  if (*(a3 + 2104) == *(a2 + 80))
  {
    if (*(a3 + 2104))
    {
      *(a3 + 2024) = *a2;
      if (v5 == a2)
      {
        *(a3 + 2056) = *(a2 + 32);
        *(a3 + 2064) = *(a2 + 40);
      }

      else
      {
        v6 = (a3 + 2032);
        v7 = *(a2 + 31);
        if (*(a3 + 2055) < 0)
        {
          if (v7 >= 0)
          {
            v12 = (a2 + 8);
          }

          else
          {
            v12 = *(a2 + 8);
          }

          if (v7 >= 0)
          {
            v13 = *(a2 + 31);
          }

          else
          {
            v13 = *(a2 + 16);
          }

          sub_13B38(v6, v12, v13);
        }

        else if ((*(a2 + 31) & 0x80) != 0)
        {
          sub_13A68(v6, *(a2 + 8), *(a2 + 16));
        }

        else
        {
          v8 = *(a2 + 8);
          *(a3 + 2048) = *(a2 + 24);
          *v6 = v8;
        }

        *(a3 + 2056) = *(a2 + 32);
        *(a3 + 2064) = *(a2 + 40);
        sub_31F64((a3 + 2072), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
      }

      *(a3 + 2096) = *(a2 + 72);
      v10 = a3 + 2112;
      v11 = a2 + 88;

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (*(a3 + 2104))
  {
    v9 = *(a3 + 2072);
    if (v9)
    {
      *(a3 + 2080) = v9;
      operator delete(v9);
    }

    if (*(a3 + 2055) < 0)
    {
      operator delete(*(a3 + 2032));
    }

    *(a3 + 2104) = 0;
LABEL_13:
    v10 = a3 + 2112;
    v11 = a2 + 88;

    goto LABEL_15;
  }

  sub_9740B0(v5, a2);
  *(a3 + 2104) = 1;
  v10 = a3 + 2112;
  v11 = a2 + 88;

LABEL_15:
  sub_A01A58(v10, v11);
}

uint64_t sub_9F9078(uint64_t a1, unint64_t a2, int a3)
{
  v5 = *(a1 + 32);
  v6 = sub_3A231C(v5, a2, 0);
  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 2);
    if (*(v7 + 2))
    {
      v8 += &v6[*&v6[v8]];
    }
  }

  v9 = (v8 + 4 * HIDWORD(a2) + 4 + *(v8 + 4 * HIDWORD(a2) + 4));
  v10 = (v9 - *v9);
  if (*v10 >= 0x1Fu && (v11 = v10[15]) != 0)
  {
    v12 = *(v9 + v11);
  }

  else
  {
    v12 = -1;
  }

  __p = *&v6[8 * (v12 + a3) + 4 + *(v7 + 8) + *&v6[*(v7 + 8)]];
  sub_504EE0(v5, &__p, &v35);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  if (v36 != v35)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = 0;
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
    v13 = v38;
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_41DB4(&v37, 0xAAAAAAAAAAAAAAABLL * ((v13 - v37) >> 2), 0, 1, &__p, &v35, 1.0);
  if (__p)
  {
    operator delete(__p);
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  v14 = v36;
  if (v36)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      if ((*(v35 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
      {
        v19 = v37 + v15;
        if (v16 < v34)
        {
          v18 = *v19;
          *(v16 + 8) = *(v19 + 2);
          *v16 = v18;
          v16 += 12;
        }

        else
        {
          v20 = __p;
          v21 = v16 - __p;
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - __p) >> 2);
          v23 = v22 + 1;
          if (v22 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v34 - __p) >> 2) > v23)
          {
            v23 = 0x5555555555555556 * ((v34 - __p) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v34 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v24 = 0x1555555555555555;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v25 = 12 * v22;
          v26 = *v19;
          *(v25 + 8) = *(v19 + 2);
          *v25 = v26;
          v16 = 12 * v22 + 12;
          v27 = (v25 - v21);
          memcpy((v25 - v21), v20, v21);
          __p = v27;
          v33 = v16;
          v34 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        v33 = v16;
      }

      ++v17;
      v15 += 12;
    }

    while (v14 != v17);
  }

  sub_9B5EA4(*(a1 + 2568), &__p);
  v29 = v28;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    operator delete(v35);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v29;
}

void sub_9F94F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9F957C(uint64_t a1, unint64_t *a2)
{
  v3 = sub_3A25A8(a1, *a2, 0, "trip");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(v3 + v5);
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = &v7[-*v7];
  if (*v8 < 0xDu || (v9 = *(v8 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return v6;
  }

  v12 = *(v11 + 5);
  if (!v12 || !v10[v12])
  {
    return v6;
  }

  return nullsub_1(v6);
}

void sub_9F96A4(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, __int128 *a5@<X8>)
{
  *(a5 + 2) = 0;
  v6 = 0uLL;
  *a5 = 0u;
  v7 = *a2;
  v57 = a2[1];
  if (*a2 != v57)
  {
    v10 = 32;
    if (a4)
    {
      v10 = 56;
    }

    v56 = v10;
    while (1)
    {
      v58 = v7;
      v11 = *(v7 + v56);
      v12 = *(v7 + v56 + 8);
      while (v11 != v12)
      {
        v15 = *(v11 + 4);
        v16 = v15 <= a3;
        v17 = v15 < a3;
        v18 = !v16;
        if (!a4)
        {
          v17 = v18;
        }

        if (v17)
        {
          v20 = *(a5 + 1);
          v19 = *(a5 + 2);
          if (v20 < v19)
          {
            v13 = *v11;
            *(v20 + 12) = *(v11 + 12);
            *v20 = v13;
            v14 = v20 + 28;
          }

          else
          {
            v21 = *a5;
            v22 = v20 - *a5;
            v23 = 0x6DB6DB6DB6DB6DB7 * (v22 >> 2) + 1;
            if (v23 > 0x924924924924924)
            {
              sub_1794();
            }

            v24 = 0x6DB6DB6DB6DB6DB7 * ((v19 - v21) >> 2);
            if (2 * v24 > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0x492492492492492)
            {
              v25 = 0x924924924924924;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              if (v25 <= 0x924924924924924)
              {
                operator new();
              }

              sub_1808();
            }

            v26 = (4 * (v22 >> 2));
            v27 = *v11;
            *(v26 + 12) = *(v11 + 12);
            *v26 = v27;
            v14 = v26 + 28;
            v28 = v26 - v22;
            memcpy(v26 - v22, v21, v22);
            *a5 = v28;
            *(a5 + 1) = v14;
            *(a5 + 2) = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          *(a5 + 1) = v14;
        }

        v11 = (v11 + 28);
      }

      v29 = v58;
      v31 = *(v58 + 8);
      v30 = *(v58 + 16);
      if (v31 != v30)
      {
        while (v31[282])
        {
          v31 += 284;
          if (v31 == v30)
          {
            v31 = *(v58 + 16);
            break;
          }
        }
      }

      if (v31[282])
      {
        sub_5AF20();
      }

      v32 = v31[6];
      if (a4)
      {
        if (v32 < a3)
        {
          goto LABEL_39;
        }
      }

      else if (v32 >= a3)
      {
LABEL_39:
        if (!*(a1 + 2384))
        {
          goto LABEL_45;
        }

        v33 = *(a1 + 40);
        v34 = **(v33 + 3896);
        if (!v34)
        {
          goto LABEL_45;
        }

        v35 = v31[4];
        v36 = sub_39F47C(v34, v31[2] | (v31[1] << 32), v31[3], *(v33 + 3904));
        if (v36)
        {
          v37 = v36[5];
          v29 = v58;
          if (0xCCCCCCCCCCCCCCCDLL * ((v36[6] - v37) >> 2) > v35 && *(v37 + 20 * v35) != 255)
          {
            v38 = sub_96AAB0(*(a1 + 40), v31[2] | (v31[1] << 32), v31[3], v31[4]);
            goto LABEL_48;
          }

LABEL_45:
          v38 = 0x7FFFFFFF;
          v39 = *(a5 + 1);
          v40 = *(a5 + 2);
          if (v39 < v40)
          {
LABEL_46:
            *(v39 + 24) = 0;
            *v39 = xmmword_22A5EC0;
            v41 = v39 + 28;
            *(v39 + 16) = 0x8000000080000000;
LABEL_61:
            *(a5 + 1) = v41;
            *(v41 - 28) = *(v31 + 1);
            *(v41 - 20) = v31[3];
            *(v41 - 16) = v31[4];
            *(v41 - 12) = v31[6] | (v31[6] << 32);
            *(v41 - 4) = 0;
            if (v38 != 0x7FFFFFFF)
            {
              *(v41 - 4) = 1;
              *(v41 - 8) = v38;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v38 = 0x7FFFFFFF;
LABEL_48:
          v29 = v58;
          v39 = *(a5 + 1);
          v40 = *(a5 + 2);
          if (v39 < v40)
          {
            goto LABEL_46;
          }
        }

        v42 = *a5;
        v43 = v39 - *a5;
        v44 = 0x6DB6DB6DB6DB6DB7 * (v43 >> 2) + 1;
        if (v44 > 0x924924924924924)
        {
          sub_1794();
        }

        v45 = 0x6DB6DB6DB6DB6DB7 * ((v40 - v42) >> 2);
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x492492492492492)
        {
          v46 = 0x924924924924924;
        }

        else
        {
          v46 = v44;
        }

        v54 = v38;
        if (v46)
        {
          if (v46 <= 0x924924924924924)
          {
            operator new();
          }

          sub_1808();
        }

        v47 = 4 * (v43 >> 2);
        *(v47 + 24) = 0;
        *v47 = xmmword_22A5EC0;
        *(v47 + 16) = 0x8000000080000000;
        v41 = v47 + 28;
        memcpy((v47 - v43), v42, v43);
        *a5 = 4 * (v43 >> 2) - v43;
        *(a5 + 1) = v41;
        *(a5 + 2) = 0;
        if (v42)
        {
          operator delete(v42);
        }

        v29 = v58;
        v38 = v54;
        goto LABEL_61;
      }

LABEL_5:
      v7 = v29 + 144;
      if (v7 == v57)
      {
        v6 = *a5;
        break;
      }
    }
  }

  v48 = v6;
  v49 = 0x6DB6DB6DB6DB6DB7 * ((*(&v6 + 1) - v6) >> 2);
  if ((*(&v6 + 1) - v6) < 3585)
  {
    v53 = 0;
    v50 = 0;
  }

  else
  {
    v50 = 0x6DB6DB6DB6DB6DB7 * ((*(&v6 + 1) - v6) >> 2);
    while (1)
    {
      v51 = operator new(28 * v50, &std::nothrow);
      if (v51)
      {
        break;
      }

      v52 = v50 >> 1;
      v16 = v50 > 1;
      v50 >>= 1;
      if (!v16)
      {
        v53 = 0;
        v50 = v52;
        goto LABEL_71;
      }
    }

    v53 = v51;
  }

LABEL_71:
  sub_A05AF0(v48, *(&v48 + 1), v49, v53, v50);
  if (v53)
  {

    operator delete(v53);
  }
}

void sub_9F9C04(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = a1;
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
    v4 = a1;
  }

  _Unwind_Resume(v4);
}

void sub_9F9C4C(unsigned int **a1@<X1>, char a2@<W2>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v6 = 0;
    v22 = a2;
    v21 = a1[1];
    do
    {
      if ((a2 & 1) != 0 || *(v4 + 25) - 1 >= 2)
      {
        v8 = *v4;
        v9 = v4[1];
        v10 = v4[2];
        v11 = v4[3];
        v12 = a3[2];
        if (v6 < v12)
        {
          v7 = *(v4 + 2);
          *(v6 + 8) = v4[6];
          *v6 = v7;
          *(v6 + 12) = v9 | (v8 << 32);
          *(v6 + 20) = v10;
          *(v6 + 24) = v11;
          v6 += 28;
        }

        else
        {
          v13 = *a3;
          v14 = v6 - *a3;
          v15 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 2) + 1;
          if (v15 > 0x924924924924924)
          {
            sub_1794();
          }

          v16 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v13) >> 2);
          if (2 * v16 > v15)
          {
            v15 = 2 * v16;
          }

          if (v16 >= 0x492492492492492)
          {
            v17 = 0x924924924924924;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (v17 <= 0x924924924924924)
            {
              operator new();
            }

            sub_1808();
          }

          v18 = 4 * (v14 >> 2);
          v19 = *(v4 + 2);
          *(v18 + 8) = v4[6];
          *v18 = v19;
          *(v18 + 12) = v9 | (v8 << 32);
          *(v18 + 20) = v10;
          *(v18 + 24) = v11;
          v6 = v18 + 28;
          v20 = v18 - v14;
          memcpy((v18 - v14), v13, v14);
          *a3 = v20;
          a3[1] = v6;
          a3[2] = 0;
          if (v13)
          {
            operator delete(v13);
          }

          a2 = v22;
          v3 = v21;
        }

        a3[1] = v6;
      }

      v4 += 7;
    }

    while (v4 != v3);
  }
}

void sub_9F9E3C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_9F9E5C(uint64_t *a1@<X1>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v25 = a1[1];
  if (*a1 == v25)
  {
    v4 = 0;
    v17 = 0;
    v19 = 0;
LABEL_27:
    v24 = 0;
    v20 = 0;
    goto LABEL_29;
  }

  v4 = 0;
  do
  {
    v6 = *(v3 + 80);
    v5 = *(v3 + 88);
    v26 = v3;
    while (v6 != v5)
    {
      v8 = a2[2];
      if (v4 < v8)
      {
        v7 = *v6;
        *(v4 + 12) = *(v6 + 12);
        *v4 = v7;
        v4 += 28;
      }

      else
      {
        v9 = *a2;
        v10 = v4 - *a2;
        v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 2) + 1;
        if (v11 > 0x924924924924924)
        {
          sub_1794();
        }

        v12 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x492492492492492)
        {
          v13 = 0x924924924924924;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (v13 <= 0x924924924924924)
          {
            operator new();
          }

          sub_1808();
        }

        v14 = (4 * (v10 >> 2));
        v15 = *v6;
        *(v14 + 12) = *(v6 + 12);
        *v14 = v15;
        v4 = v14 + 28;
        v16 = v14 - v10;
        memcpy(v14 - v10, v9, v10);
        *a2 = v16;
        a2[1] = v4;
        a2[2] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      a2[1] = v4;
      v6 = (v6 + 28);
    }

    v3 = v26 + 144;
  }

  while (v26 + 144 != v25);
  v17 = *a2;
  v18 = v4 - *a2;
  v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 2);
  if (v18 < 3585)
  {
    goto LABEL_27;
  }

  v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 2);
  while (1)
  {
    v21 = operator new(28 * v20, &std::nothrow);
    if (v21)
    {
      break;
    }

    v22 = v20 >> 1;
    v23 = v20 > 1;
    v20 >>= 1;
    if (!v23)
    {
      v24 = 0;
      v20 = v22;
      goto LABEL_29;
    }
  }

  v24 = v21;
LABEL_29:
  sub_A04EC8(v17, v4, v19, v24, v20);
  if (v24)
  {

    operator delete(v24);
  }
}

void sub_9FA0E4(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = a1;
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
    v4 = a1;
  }

  _Unwind_Resume(v4);
}

uint64_t sub_9FA120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, int a7)
{
  if (*(a1 + 7) != 1)
  {
    __p = 0;
    v32 = 0;
    v33.__locale_ = 0;
    v18 = 0x6DB6DB6DB6DB6DB7 * ((a5[1] - *a5) >> 2);
    if (v18 == -1)
    {
      operator new();
    }

    if (!((v18 + 1) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v10 = (a4 + 60);
  if (!a7)
  {
    v10 = (a3 + 140);
  }

  if (*v10)
  {
    v11 = (a3 + 104);
    if (a7)
    {
      v11 = (a4 + 24);
    }

    if (*v11 != v11[1])
    {
      v12 = sub_B6C0(&v41, *(*v11 + 8), *(*v11 + 12));
      if (sub_B6E0(v12))
      {
        return v41;
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(&__p);
        v13 = sub_4A5C(&__p, "Invalid service frequency found: ", 33);
        v14 = sub_B720(v13, v41);
        sub_4A5C(v14, " (trip_muid: ", 13);
        v15 = *(a1 + 32);
        v29 = vrev64_s32(*(a2 + 4));
        sub_9F957C(v15, &v29);
        v16 = std::ostream::operator<<();
        sub_4A5C(v16, ")", 1);
        if ((v40 & 0x10) != 0)
        {
          v19 = v39;
          if (v39 < v36)
          {
            v39 = v36;
            v19 = v36;
          }

          v20 = &v35;
        }

        else
        {
          if ((v40 & 8) == 0)
          {
            v17 = 0;
            v30 = 0;
LABEL_27:
            *(&v29 + v17) = 0;
            sub_7E854(&v29, 1u);
            if (v30 < 0)
            {
              operator delete(v29);
            }

            if (v38 < 0)
            {
              operator delete(v37);
            }

            std::locale::~locale(&v33);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_32;
          }

          v20 = v34;
          v19 = v34[2];
        }

        v21 = *v20;
        v17 = v19 - *v20;
        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v17 >= 0x17)
        {
          operator new();
        }

        v30 = v19 - *v20;
        if (v17)
        {
          memmove(&v29, v21, v17);
        }

        goto LABEL_27;
      }
    }
  }

LABEL_32:
  if (a6)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 48);
  v25 = sub_3A25A8(v23, *(a2 + 8) | (*(a2 + 4) << 32), 0, "trip");
  v26 = (v25 + *(v25 - *v25 + 18));
  v27 = sub_96AE18(*(&v26[3 * v24 + 1] + *v26));
  sub_B6C8(&__p, 10 * v27);
  return __p;
}

void sub_9FA748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_9FA788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_9FA7C0(uint64_t a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = sub_A0013C(a1, *a2, a3, a4);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = (v9 - *v9);
  if (*v10 < 5u)
  {
    goto LABEL_19;
  }

  v11 = v10[2];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = *(v9 + v11);
  if (v12 == 0xFFFF)
  {
    goto LABEL_19;
  }

  v13 = *a2;
  v14 = sub_3A231C(a1, v13, 0);
  v15 = &v14[-*v14];
  if (*v15 < 5u)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 2);
    if (*(v15 + 2))
    {
      v16 += &v14[*&v14[v16]];
    }
  }

  v17 = (v16 + 4 * HIDWORD(v13) + 4 + *(v16 + 4 * HIDWORD(v13) + 4));
  v18 = (v17 - *v17);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = *(v17 + v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = sub_502FF8(a1, *&v14[24 * (v20 + a3) + 4 + *(v15 + 3) + *&v14[*(v15 + 3)]], 0, "stop");
  v22 = (v21 - *v21);
  if (*v22 >= 0x35u && (v23 = v22[26]) != 0 && (v24 = (v21 + v23 + *(v21 + v23)), *v24 > v12))
  {
    v25 = (&v24[v12 + 1] + v24[v12 + 1]);

    sub_509164(v25, a5);
  }

  else
  {
LABEL_19:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 2;
    *(a5 + 32) = sub_12331FC();
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
  }
}

void sub_9FA970(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 24);
  if (*(a4 + 176) == 1)
  {
    sub_9FB830(v7, a2, a3, v18);
    if (v24 != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_9FB9D0(v7, a2, a3, v18);
    if (v24 != 1)
    {
LABEL_18:
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = 0u;
      *(a5 + 80) = 0u;
      *(a5 + 96) = 0u;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 40) = -1;
      *(a5 + 43) = -1;
      *(a5 + 47) = 0;
      *(a5 + 55) = 0;
      *(a5 + 63) = 0;
      *(a5 + 71) = 0;
      *(a5 + 80) = 0;
      *(a5 + 88) = 0;
      *(a5 + 96) = 0;
      *(a5 + 104) = 0;
      goto LABEL_19;
    }
  }

  if (v23 == 1)
  {
    v9 = *(a4 + 23);
    if (v9 < 0)
    {
      v9 = a4[1];
    }

    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = *(a4 + 55);
    if (v10 < 0)
    {
      v10 = a4[5];
    }

    if (!v10)
    {
      goto LABEL_18;
    }
  }

  sub_9A77D0(v18, 0, a5, v8);
  if (v23 == 1)
  {
    if (*(a5 + 32) != 1)
    {
      sub_5AF20();
    }

    v11 = (a5 + 8);
    if ((a5 + 8) != a4)
    {
      v12 = *(a4 + 23);
      if (*(a5 + 31) < 0)
      {
        if (v12 >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        if (v12 >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = a4[1];
        }

        sub_13B38(v11, v16, v17);
      }

      else if ((*(a4 + 23) & 0x80) != 0)
      {
        sub_13A68(v11, *a4, a4[1]);
      }

      else
      {
        *v11 = *a4;
        *(a5 + 24) = a4[2];
      }
    }
  }

LABEL_19:
  if (v24 == 1)
  {
    v13 = __p;
    if (__p)
    {
      v14 = v22;
      v15 = __p;
      if (v22 != __p)
      {
        do
        {
          if (*(v14 - 1) < 0)
          {
            operator delete(*(v14 - 3));
          }

          v14 -= 4;
        }

        while (v14 != v13);
        v15 = __p;
      }

      v22 = v13;
      operator delete(v15);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }
  }
}

void sub_9FAB64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(v2);
  sub_A01550(va);
  _Unwind_Resume(a1);
}

void sub_9FAB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A01550(va);
  _Unwind_Resume(a1);
}

void sub_9FAB94(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v59 = vrev64_s32(*(a2 + 4));
  sub_9586F4(v10, &v59, *(a2 + 16), &v68);
  sub_9D69F4(&v68, &v73);
  v11 = __p;
  if (__p)
  {
    v12 = v72;
    v13 = __p;
    if (v72 != __p)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 3));
        }

        v12 -= 4;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v72 = v11;
    operator delete(v13);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
    v15 = v75;
    if ((v75 & 0x80u) != 0)
    {
      v15 = v74;
    }

    if (!v15)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v14 = v75;
    if ((v75 & 0x80u) != 0)
    {
      v14 = v74;
    }

    if (!v14)
    {
      goto LABEL_58;
    }
  }

  v16 = v78;
  if ((v78 & 0x80u) != 0)
  {
    v16 = v77;
  }

  if (!v16)
  {
LABEL_58:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_121;
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v56 = a5;
  a5[1] = sub_A02200(a5, &v73);
  *v65 = 0u;
  *v66 = 0u;
  v67 = 1065353216;
  v17 = a4[1];
  if (v17 != *a4)
  {
    v18 = 0x6DB6DB6DB6DB6DB7 * ((v17 - *a4) >> 2);
    do
    {
      if (*(a2 + 24) - *(v17 - 12) > 900)
      {
        break;
      }

      v19 = *a1;
      v57 = *(v17 - 24);
      v58 = *(v17 - 28);
      sub_9586F4(v19, &v57, *(v17 - 16), &v68);
      sub_9D69F4(&v68, &v59);
      v20 = __p;
      if (__p)
      {
        v21 = v72;
        v22 = __p;
        if (v72 != __p)
        {
          do
          {
            if (*(v21 - 1) < 0)
            {
              operator delete(*(v21 - 3));
            }

            v21 -= 4;
          }

          while (v21 != v20);
          v22 = __p;
        }

        v72 = v20;
        operator delete(v22);
      }

      if (SHIBYTE(v70) < 0)
      {
        operator delete(v68);
      }

      --v18;
      if ((v61 & 0x80u) == 0)
      {
        v23 = v61;
      }

      else
      {
        v23 = v60;
      }

      if (!v23)
      {
        goto LABEL_52;
      }

      v24 = v64;
      if ((v64 & 0x80u) != 0)
      {
        v24 = v63;
      }

      if (!v24)
      {
        goto LABEL_52;
      }

      v25 = v75;
      if ((v75 & 0x80u) != 0)
      {
        v25 = v74;
      }

      if (v23 == v25 && ((v61 & 0x80u) == 0 ? (v26 = &v59) : (v26 = v59), (v75 & 0x80u) == 0 ? (v27 = &v73) : (v27 = v73), !memcmp(v26, v27, v23)) || (v68 = &v59, v28 = sub_A024DC(v65, &v59), v29 = *(v28 + 18), *(v28 + 18) = v29 + 1, v29))
      {
LABEL_52:
        if ((v64 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v28[10] = v18;
        if ((v64 & 0x80000000) == 0)
        {
LABEL_53:
          if (v61 < 0)
          {
            goto LABEL_57;
          }

          goto LABEL_22;
        }
      }

      operator delete(v62);
      if (v61 < 0)
      {
LABEL_57:
        operator delete(v59);
      }

LABEL_22:
      v17 -= 28;
    }

    while (v17 != *a4);
  }

  v30 = a3[1] - *a3;
  if (v30)
  {
    v31 = 0;
    v32 = 0x6DB6DB6DB6DB6DB7 * (v30 >> 2);
    do
    {
      v33 = (*a3 + 28 * v31);
      if (v33[4] - *(a2 + 24) > 900)
      {
        break;
      }

      v34 = *a1;
      v57 = v33[1];
      v58 = *v33;
      sub_9586F4(v34, &v57, v33[3], &v68);
      sub_9D69F4(&v68, &v59);
      v35 = __p;
      if (__p)
      {
        v36 = v72;
        v37 = __p;
        if (v72 != __p)
        {
          do
          {
            if (*(v36 - 1) < 0)
            {
              operator delete(*(v36 - 3));
            }

            v36 -= 4;
          }

          while (v36 != v35);
          v37 = __p;
        }

        v72 = v35;
        operator delete(v37);
      }

      if (SHIBYTE(v70) < 0)
      {
        operator delete(v68);
        v38 = v61;
        if ((v61 & 0x80u) == 0)
        {
          v39 = v61;
        }

        else
        {
          v39 = v60;
        }

        if (!v39)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v38 = v61;
        if ((v61 & 0x80u) == 0)
        {
          v39 = v61;
        }

        else
        {
          v39 = v60;
        }

        if (!v39)
        {
          goto LABEL_95;
        }
      }

      v40 = v64;
      if ((v64 & 0x80u) != 0)
      {
        v40 = v63;
      }

      if (!v40)
      {
        goto LABEL_95;
      }

      v41 = v75;
      if ((v75 & 0x80u) != 0)
      {
        v41 = v74;
      }

      if (v39 == v41 && (v38 >= 0 ? (v42 = &v59) : (v42 = v59), (v75 & 0x80u) == 0 ? (v43 = &v73) : (v43 = v73), !memcmp(v42, v43, v39)) || (v68 = &v59, v44 = sub_A024DC(v65, &v59), v45 = *(v44 + 18), *(v44 + 18) = v45 + 1, v45))
      {
LABEL_95:
        if ((v64 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_99;
      }

      v44[10] = (v31 + 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 2));
      if ((v64 & 0x80000000) == 0)
      {
LABEL_96:
        if (v61 < 0)
        {
          goto LABEL_100;
        }

        goto LABEL_61;
      }

LABEL_99:
      operator delete(v62);
      if (v61 < 0)
      {
LABEL_100:
        operator delete(v59);
      }

LABEL_61:
      ++v31;
    }

    while (v31 != v32);
  }

  if (v66[1])
  {
    v69 = 0;
    v70 = 0;
    v68 = 0;
    if (v66[0])
    {
      v46 = 0;
      v47 = -1;
      v48 = v66[0];
      do
      {
        v48 = *v48;
        ++v47;
        v46 += 72;
      }

      while (v48);
      v59 = &v68;
      LOBYTE(v60) = 0;
      if (v47 < 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1794();
    }

    sub_A02C84(0, 0, &v59, 0, 1);
    sub_A02080(v56, 0x6DB6DB6DB6DB6DB7 * ((v56[1] - *v56) >> 3) - 0x71C71C71C71C71C7 * ((v69 - v68) >> 3));
    sub_A04C24(v68, v69, v56);
    v49 = v68;
    if (v68)
    {
      v50 = v69;
      v51 = v68;
      if (v69 == v68)
      {
LABEL_117:
        v69 = v49;
        operator delete(v51);
        goto LABEL_118;
      }

      while (1)
      {
        if (*(v50 - 17) < 0)
        {
          operator delete(*(v50 - 5));
          v52 = (v50 - 72);
          if (*(v50 - 49) < 0)
          {
LABEL_115:
            operator delete(*v52);
          }
        }

        else
        {
          v52 = (v50 - 72);
          if (*(v50 - 49) < 0)
          {
            goto LABEL_115;
          }
        }

        v50 = v52;
        if (v52 == v49)
        {
          v51 = v68;
          goto LABEL_117;
        }
      }
    }
  }

LABEL_118:
  v53 = v66[0];
  if (v66[0])
  {
    do
    {
      v55 = *v53;
      if (*(v53 + 71) < 0)
      {
        operator delete(v53[6]);
        if (*(v53 + 39) < 0)
        {
LABEL_129:
          operator delete(v53[2]);
        }
      }

      else if (*(v53 + 39) < 0)
      {
        goto LABEL_129;
      }

      operator delete(v53);
      v53 = v55;
    }

    while (v55);
  }

  v54 = v65[0];
  v65[0] = 0;
  if (v54)
  {
    operator delete(v54);
  }

LABEL_121:
  if ((v78 & 0x80000000) == 0)
  {
    if ((v75 & 0x80000000) == 0)
    {
      return;
    }

LABEL_131:
    operator delete(v73);
    return;
  }

  operator delete(v76);
  if (v75 < 0)
  {
    goto LABEL_131;
  }
}

void sub_9FB2F8(_Unwind_Exception *a1, uint64_t a2, void ***a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void ***);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_A02BD4(va);
  sub_A04E40(va1);
  sub_9354C4(a3);
  sub_509680(v4 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_9FB3A8(uint64_t result, char *a2)
{
  v2 = a2;
  v3 = result;
  if (*(result + 56) != 1)
  {
    if (a2[23] < 0)
    {
      sub_325C(result, *a2, *(a2 + 1));
      *(v3 + 24) = v2[24];
      if ((v2[55] & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *a2;
      *(result + 16) = *(a2 + 2);
      *result = v7;
      *(result + 24) = a2[24];
      if ((a2[55] & 0x80000000) == 0)
      {
LABEL_9:
        v8 = *(v2 + 2);
        *(v3 + 48) = *(v2 + 6);
        *(v3 + 32) = v8;
        *(v3 + 56) = 1;
        return v3;
      }
    }

    sub_325C((v3 + 32), *(v2 + 4), *(v2 + 5));
    *(v3 + 56) = 1;
    return v3;
  }

  if (result == a2)
  {
    *(result + 24) = a2[24];
    return result;
  }

  if (*(result + 23) < 0)
  {
    if (a2[23] >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      a2 = *a2;
      v9 = *(v2 + 1);
    }

    sub_13B38(result, a2, v9);
    *(v3 + 24) = v2[24];
    v5 = v2 + 32;
    v6 = v2[55];
    if (*(v3 + 55) < 0)
    {
      goto LABEL_21;
    }
  }

  else if (a2[23] < 0)
  {
    sub_13A68(result, *a2, *(a2 + 1));
    *(v3 + 24) = v2[24];
    v5 = v2 + 32;
    v6 = v2[55];
    if (*(v3 + 55) < 0)
    {
LABEL_21:
      if ((v6 & 0x80u) == 0)
      {
        v11 = v5;
      }

      else
      {
        v11 = *(v2 + 4);
      }

      if ((v6 & 0x80u) == 0)
      {
        v12 = v6;
      }

      else
      {
        v12 = *(v2 + 5);
      }

      sub_13B38(v3 + 32, v11, v12);
      return v3;
    }
  }

  else
  {
    v4 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v4;
    *(result + 24) = a2[24];
    v5 = a2 + 32;
    v6 = a2[55];
    if (*(result + 55) < 0)
    {
      goto LABEL_21;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    sub_13A68((v3 + 32), *(v2 + 4), *(v2 + 5));
  }

  else
  {
    v10 = *v5;
    *(v3 + 48) = v5[2];
    *(v3 + 32) = v10;
  }

  return v3;
}

void sub_9FB57C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_9FB598(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  sub_2A8074(a1, a3, a4, &v23);
  v8 = *(a2 + 23);
  v9 = v8;
  v10 = a2[1];
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (*(a1 + 23) < 0)
    {
      sub_325C(__p, *a1, *(a1 + 8));
      v8 = *(a2 + 23);
      v10 = a2[1];
      v9 = *(a2 + 23);
    }

    else
    {
      *__p = *a1;
      v22 = *(a1 + 16);
    }
  }

  else
  {
LABEL_10:
    HIBYTE(v22) = 0;
    LOBYTE(__p[0]) = 0;
  }

  if (v9 >= 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (v22 >= 0)
  {
    v14 = HIBYTE(v22);
  }

  else
  {
    v14 = __p[1];
  }

  if (v14 + v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v14 + v13 > 0x16)
  {
    operator new();
  }

  memset(&v20, 0, sizeof(v20));
  *(&v20.__r_.__value_.__s + 23) = v14 + v13;
  if (v13)
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    memmove(&v20, v15, v13);
  }

  if (v14)
  {
    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    memmove(&v20 + v13, v16, v14);
  }

  v20.__r_.__value_.__s.__data_[v13 + v14] = 0;
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v23;
  }

  else
  {
    v17 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v23.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v20, v17, v18);
  *a5 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_42:
      operator delete(v23.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }
}

void sub_9FB7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if ((a27 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_9FB830(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_502FF8(a1, a2, 0, "stop");
  v7 = (v6 - *v6);
  if (*v7 >= 0x47u && (v8 = v7[35]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v20 = 0uLL;
    v21 = 0;
    sub_A00FA8(&v20, *v9);
    v23 = v9 + 1;
    v22 = &v9[*v9 + 1];
    sub_A01258(&v23, &v22, &v20, sub_A00DC4);
    v10 = v20;
    v11 = v21;
  }

  else
  {
    v11 = 0;
    v10 = 0uLL;
  }

  *__p = v10;
  v19 = v11;
  sub_A00BFC(__p, a3, a4);
  v12 = __p[0];
  if (__p[0])
  {
    v13 = __p[1];
    v14 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v15 = *(v13 - 6);
        if (v15)
        {
          v16 = *(v13 - 5);
          v17 = *(v13 - 6);
          if (v16 != v15)
          {
            do
            {
              if (*(v16 - 1) < 0)
              {
                operator delete(*(v16 - 24));
              }

              v16 -= 32;
            }

            while (v16 != v15);
            v17 = *(v13 - 6);
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }

        if (*(v13 - 65) < 0)
        {
          operator delete(*(v13 - 11));
        }

        v13 -= 96;
      }

      while (v13 != v12);
      v14 = __p[0];
    }

    __p[1] = v12;
    operator delete(v14);
  }
}

void sub_9FB9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A00D00(va);
  _Unwind_Resume(a1);
}

void sub_9FB9D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_502FF8(a1, a2, 0, "stop");
  v7 = (v6 - *v6);
  if (*v7 >= 0x41u && (v8 = v7[32]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v20 = 0uLL;
    v21 = 0;
    sub_A00FA8(&v20, *v9);
    v23 = v9 + 1;
    v22 = &v9[*v9 + 1];
    sub_A01258(&v23, &v22, &v20, sub_A00DC4);
    v10 = v20;
    v11 = v21;
  }

  else
  {
    v11 = 0;
    v10 = 0uLL;
  }

  *__p = v10;
  v19 = v11;
  sub_A00BFC(__p, a3, a4);
  v12 = __p[0];
  if (__p[0])
  {
    v13 = __p[1];
    v14 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v15 = *(v13 - 6);
        if (v15)
        {
          v16 = *(v13 - 5);
          v17 = *(v13 - 6);
          if (v16 != v15)
          {
            do
            {
              if (*(v16 - 1) < 0)
              {
                operator delete(*(v16 - 24));
              }

              v16 -= 32;
            }

            while (v16 != v15);
            v17 = *(v13 - 6);
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }

        if (*(v13 - 65) < 0)
        {
          operator delete(*(v13 - 11));
        }

        v13 -= 96;
      }

      while (v13 != v12);
      v14 = __p[0];
    }

    __p[1] = v12;
    operator delete(v14);
  }
}

void sub_9FBB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A00D00(va);
  _Unwind_Resume(a1);
}

void sub_9FBB70(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  sub_2B3C60(a1, a2, 1, &__p);
  v5 = __p;
  if (__p == v20)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  v6 = sub_2B51D8(a1, *(__p + 1));
  v7 = (v6 - *v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = 4 * *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2AF704(a1 + 3896, 1u, 0);
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 5);
    if (v12)
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + v9 + 4 + *(v12 + v9 + 4));
  v14 = (v13 - *v13);
  if (*v14 < 7u || (v15 = v14[3]) == 0)
  {
    *(a3 + 23) = 0;
    *a3 = 0;
    v5 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_18;
  }

  v16 = (v13 + v15);
  v17 = *v16;
  v18 = *(v16 + v17);
  if (v18 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v18;
  if (v18)
  {
    memcpy(a3, v16 + v17 + 4, v18);
  }

  *(a3 + v18) = 0;
  v5 = __p;
  if (__p)
  {
LABEL_18:
    v20 = v5;
    operator delete(v5);
  }
}

void sub_9FBD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_9FBD28(uint64_t a1, _DWORD *a2)
{
  if (a2[282])
  {
    return 0;
  }

  v5 = sub_3A25A8(*(a1 + 32), a2[2] | (a2[1] << 32), 0, "trip");
  v6 = sub_92FC60(*(a1 + 32), *(v5 + *(v5 - *v5 + 6)), 0, "line");
  v7 = (v6 - *v6);
  if (*v7 >= 0x3Du)
  {
    v8 = v7[30];
    if (v8)
    {
      if (*(v6 + v8))
      {
        return 1;
      }
    }
  }

  v9 = *(a1 + 40);
  v10 = **(v9 + 3896);
  return v10 && sub_39F47C(v10, a2[2] | (a2[1] << 32), a2[3], *(v9 + 3904));
}

unint64_t sub_9FBE1C(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_9FBF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9FBF90(void ***a1, uint64_t a2)
{
  v2 = 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x13E22CBCE4A902)
  {
    sub_1794();
  }

  if (0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 5);
  }

  if (0xDAB7EC1DD3431B57 * ((a1[2] - *a1) >> 5) >= 0x9F1165E725481)
  {
    v5 = 0x13E22CBCE4A902;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x13E22CBCE4A902)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 32 * ((a1[1] - *a1) >> 5);
  sub_9FC0F4(v6, a2);
  v7 = 3296 * v2 + 3296;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_9FC0F4(v12, v11);
      v11 += 3296;
      v12 = v13 + 3296;
    }

    while (v11 != v9);
    do
    {
      sub_9FC74C(v8);
      v8 += 412;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_9FC0F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  sub_9C08B0(a1 + 80, a2 + 80);
  v7 = *(a2 + 1040);
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1040) = v7;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = 0;
  *(a2 + 1056) = 0u;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1080) = *(a2 + 1080);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1096) = 0;
  *(a2 + 1080) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1120) = 0;
  *(a2 + 1104) = 0u;
  v8 = *(a2 + 1128);
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1128) = v8;
  *(a2 + 1136) = 0u;
  *(a2 + 1128) = 0;
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1160) = *(a2 + 1160);
  v9 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = v9;
  *(a2 + 1176) = 0u;
  *(a2 + 1168) = 0;
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1208) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = *(a2 + 1216);
  *(a2 + 1216) = 0;
  *(a2 + 1200) = 0u;
  v10 = *(a2 + 1224);
  *(a1 + 1229) = *(a2 + 1229);
  *(a1 + 1224) = v10;
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1264) = 0u;
  *(a1 + 1256) = 0;
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1264) = *(a2 + 1264);
  *(a2 + 1272) = 0;
  *(a2 + 1256) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1296) = 0;
  *(a2 + 1280) = 0u;
  *(a1 + 1320) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1304) = *(a2 + 1304);
  *(a1 + 1312) = *(a2 + 1312);
  *(a2 + 1320) = 0;
  *(a2 + 1304) = 0u;
  sub_55A4D0(a1 + 1328, a2 + 1328);
  sub_55A4D0(a1 + 1824, a2 + 1824);
  *(a1 + 2336) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2320) = *(a2 + 2320);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2336) = 0;
  *(a2 + 2320) = 0u;
  *(a1 + 2360) = 0;
  *(a1 + 2344) = 0u;
  *(a1 + 2344) = *(a2 + 2344);
  *(a1 + 2352) = *(a2 + 2352);
  *(a2 + 2360) = 0;
  *(a2 + 2344) = 0u;
  *(a1 + 2384) = 0;
  *(a1 + 2368) = 0u;
  *(a1 + 2368) = *(a2 + 2368);
  *(a1 + 2384) = *(a2 + 2384);
  *(a2 + 2384) = 0;
  *(a2 + 2368) = 0u;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2392) = *(a2 + 2392);
  *(a1 + 2400) = *(a2 + 2400);
  *(a2 + 2408) = 0;
  *(a2 + 2392) = 0u;
  v11 = *(a2 + 2432);
  v12 = *(a2 + 2448);
  v13 = *(a2 + 2464);
  *(a1 + 2479) = *(a2 + 2479);
  *(a1 + 2464) = v13;
  *(a1 + 2448) = v12;
  *(a1 + 2432) = v11;
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2496) = 0u;
  *(a1 + 2488) = 0;
  *(a1 + 2488) = *(a2 + 2488);
  *(a1 + 2496) = *(a2 + 2496);
  *(a2 + 2504) = 0;
  *(a2 + 2488) = 0u;
  v14 = *(a2 + 2512);
  *(a1 + 2528) = *(a2 + 2528);
  *(a1 + 2512) = v14;
  v15 = *(a2 + 2552);
  *(a1 + 2536) = *(a2 + 2536);
  *(a1 + 2552) = v15;
  *(a1 + 2568) = *(a2 + 2568);
  *(a1 + 2576) = *(a2 + 2576);
  *(a2 + 2584) = 0;
  *(a2 + 2568) = 0u;
  v16 = *(a2 + 2592);
  *(a1 + 2600) = *(a2 + 2600);
  *(a1 + 2592) = v16;
  v17 = *(a2 + 2608);
  *(a1 + 2624) = *(a2 + 2624);
  *(a1 + 2608) = v17;
  *(a2 + 2616) = 0u;
  *(a2 + 2608) = 0;
  v18 = *(a2 + 2632);
  *(a1 + 2648) = *(a2 + 2648);
  *(a1 + 2632) = v18;
  *(a2 + 2640) = 0u;
  *(a2 + 2632) = 0;
  v19 = *(a2 + 2656);
  *(a1 + 2672) = *(a2 + 2672);
  *(a1 + 2656) = v19;
  *(a2 + 2672) = 0;
  *(a2 + 2656) = 0u;
  v20 = *(a2 + 2680);
  *(a1 + 2696) = *(a2 + 2696);
  *(a1 + 2680) = v20;
  *(a2 + 2696) = 0;
  *(a2 + 2680) = 0u;
  v21 = *(a2 + 2704);
  *(a1 + 2720) = *(a2 + 2720);
  *(a1 + 2704) = v21;
  *(a1 + 2728) = 0;
  *(a1 + 2736) = 0u;
  *(a1 + 2728) = *(a2 + 2728);
  *(a1 + 2736) = *(a2 + 2736);
  *(a2 + 2744) = 0;
  *(a2 + 2728) = 0u;
  *(a1 + 2768) = 0;
  *(a1 + 2752) = 0u;
  *(a1 + 2752) = *(a2 + 2752);
  *(a1 + 2768) = *(a2 + 2768);
  *(a2 + 2768) = 0;
  *(a2 + 2752) = 0u;
  *(a1 + 2792) = 0;
  *(a1 + 2776) = 0u;
  *(a1 + 2776) = *(a2 + 2776);
  *(a1 + 2784) = *(a2 + 2784);
  *(a2 + 2792) = 0;
  *(a2 + 2776) = 0u;
  *(a1 + 2800) = *(a2 + 2800);
  *(a1 + 2824) = 0u;
  *(a1 + 2816) = 0;
  *(a1 + 2816) = *(a2 + 2816);
  *(a1 + 2832) = *(a2 + 2832);
  *(a2 + 2832) = 0;
  *(a2 + 2816) = 0u;
  *(a1 + 2840) = *(a2 + 2840);
  *(a1 + 2848) = *(a2 + 2848);
  *(a1 + 2856) = *(a2 + 2856);
  v22 = *(a2 + 2872);
  v23 = *(a2 + 2888);
  v24 = *(a2 + 2904);
  *(a1 + 2919) = *(a2 + 2919);
  *(a1 + 2888) = v23;
  *(a1 + 2904) = v24;
  *(a1 + 2872) = v22;
  *(a1 + 2928) = 0;
  *(a1 + 2936) = 0u;
  *(a1 + 2928) = *(a2 + 2928);
  *(a1 + 2944) = *(a2 + 2944);
  *(a2 + 2944) = 0;
  *(a2 + 2928) = 0u;
  v25 = *(a2 + 2952);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2952) = v25;
  v26 = *(a2 + 2976);
  *(a1 + 2992) = *(a2 + 2992);
  *(a1 + 2976) = v26;
  *(a1 + 3008) = *(a2 + 3008);
  *(a1 + 3024) = *(a2 + 3024);
  *(a2 + 3024) = 0;
  *(a2 + 3008) = 0u;
  v27 = *(a2 + 3032);
  *(a1 + 3040) = *(a2 + 3040);
  *(a1 + 3032) = v27;
  v28 = *(a2 + 3048);
  *(a1 + 3064) = *(a2 + 3064);
  *(a1 + 3048) = v28;
  *(a2 + 3056) = 0u;
  *(a2 + 3048) = 0;
  v29 = *(a2 + 3072);
  *(a1 + 3088) = *(a2 + 3088);
  *(a1 + 3072) = v29;
  *(a2 + 3080) = 0u;
  *(a2 + 3072) = 0;
  v30 = *(a2 + 3096);
  *(a1 + 3112) = *(a2 + 3112);
  *(a1 + 3096) = v30;
  *(a2 + 3112) = 0;
  *(a2 + 3096) = 0u;
  v31 = *(a2 + 3120);
  *(a1 + 3136) = *(a2 + 3136);
  *(a1 + 3120) = v31;
  *(a2 + 3136) = 0;
  *(a2 + 3120) = 0u;
  v32 = *(a2 + 3144);
  *(a1 + 3160) = *(a2 + 3160);
  *(a1 + 3144) = v32;
  *(a1 + 3168) = 0;
  *(a1 + 3176) = 0u;
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3184) = *(a2 + 3184);
  *(a2 + 3184) = 0;
  *(a2 + 3168) = 0u;
  *(a1 + 3208) = 0;
  *(a1 + 3192) = 0u;
  *(a1 + 3192) = *(a2 + 3192);
  *(a1 + 3200) = *(a2 + 3200);
  *(a2 + 3208) = 0;
  *(a2 + 3192) = 0u;
  *(a1 + 3232) = 0;
  *(a1 + 3216) = 0u;
  *(a1 + 3216) = *(a2 + 3216);
  *(a1 + 3232) = *(a2 + 3232);
  *(a2 + 3232) = 0;
  *(a2 + 3216) = 0u;
  *(a1 + 3240) = *(a2 + 3240);
  *(a1 + 3264) = 0u;
  *(a1 + 3256) = 0;
  *(a1 + 3256) = *(a2 + 3256);
  *(a1 + 3264) = *(a2 + 3264);
  *(a2 + 3272) = 0;
  *(a2 + 3256) = 0u;
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3288) = *(a2 + 3288);
  return a1;
}

void **sub_9FC74C(void **a1)
{
  v1 = a1;
  sub_44FDEC((a1 + 357));
  sub_44FDEC((v1 + 302));
  v2 = v1[299];
  if (v2)
  {
    v1[300] = v2;
    operator delete(v2);
  }

  v3 = v1[296];
  if (v3)
  {
    v1[297] = v3;
    operator delete(v3);
  }

  sub_559E70(v1 + 160);
  v4 = v1[157];
  if (v4)
  {
    v5 = v1[158];
    v6 = v1[157];
    if (v5 != v4)
    {
      do
      {
        v5 -= 80;
        sub_3ED230(v5);
      }

      while (v5 != v4);
      v6 = v1[157];
    }

    v1[158] = v4;
    operator delete(v6);
  }

  v7 = v1[150];
  if (v7)
  {
    v1[151] = v7;
    operator delete(v7);
  }

  if (*(v1 + 1191) < 0)
  {
    operator delete(v1[146]);
    if ((*(v1 + 1151) & 0x80000000) == 0)
    {
LABEL_14:
      v8 = v1[138];
      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v1 + 1151) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v1[141]);
  v8 = v1[138];
  if (v8)
  {
LABEL_15:
    v1[139] = v8;
    operator delete(v8);
  }

LABEL_16:
  v9 = v1[135];
  if (v9)
  {
    v1[136] = v9;
    operator delete(v9);
  }

  v10 = v1[132];
  if (v10)
  {
    v11 = v1[133];
    v12 = v1[132];
    if (v11 != v10)
    {
      v50 = v1;
      v13 = v1[133];
      v54 = v1[132];
      do
      {
        v16 = *(v13 - 3);
        v13 -= 3;
        v15 = v16;
        if (v16)
        {
          v17 = *(v11 - 2);
          v14 = v15;
          if (v17 != v15)
          {
            v18 = *(v11 - 2);
            do
            {
              v21 = *(v18 - 3);
              v18 -= 3;
              v20 = v21;
              if (v21)
              {
                v22 = *(v17 - 2);
                v19 = v20;
                if (v22 != v20)
                {
                  do
                  {
                    v23 = v22 - 168;
                    v24 = *(v22 - 2);
                    if (v24 != -1)
                    {
                      (off_266F7B8[v24])(&v56, v22 - 168);
                    }

                    *(v22 - 2) = -1;
                    v22 -= 168;
                  }

                  while (v23 != v20);
                  v19 = *v18;
                }

                *(v17 - 2) = v20;
                operator delete(v19);
              }

              v17 = v18;
            }

            while (v18 != v15);
            v14 = *v13;
            v10 = v54;
          }

          *(v11 - 2) = v15;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v1 = v50;
      v12 = v50[132];
    }

    v1[133] = v10;
    operator delete(v12);
  }

  sub_53A868((v1 + 110));
  sub_53A868((v1 + 90));
  sub_53A868((v1 + 70));
  sub_53A868((v1 + 50));
  sub_53A868((v1 + 30));
  sub_53A868((v1 + 10));
  v25 = *v1;
  if (*v1)
  {
    v26 = v1[1];
    v27 = *v1;
    if (v26 == v25)
    {
LABEL_82:
      v1[1] = v25;
      operator delete(v27);
      return v1;
    }

    v51 = v1;
    v52 = *v1;
    v28 = v1[1];
    while (1)
    {
      v31 = *(v28 - 4);
      v28 -= 4;
      v30 = v31;
      if (!v31)
      {
        goto LABEL_43;
      }

      v53 = v26;
      v55 = v28;
      v32 = *(v26 - 3);
      v29 = v30;
      if (v32 != v30)
      {
        break;
      }

LABEL_42:
      *(v53 - 3) = v30;
      operator delete(v29);
      v25 = v52;
      v28 = v55;
LABEL_43:
      v26 = v28;
      if (v28 == v25)
      {
        v1 = v51;
        v27 = *v51;
        goto LABEL_82;
      }
    }

    while (1)
    {
      v33 = *(v32 - 3);
      if (!v33)
      {
        goto LABEL_74;
      }

      v34 = *(v32 - 2);
      v35 = *(v32 - 3);
      if (v34 != v33)
      {
        break;
      }

LABEL_73:
      *(v32 - 2) = v33;
      operator delete(v35);
LABEL_74:
      if ((*(v32 - 49) & 0x80000000) == 0)
      {
        v46 = *(v32 - 12);
        if (!v46)
        {
          goto LABEL_48;
        }

LABEL_78:
        v47 = *(v32 - 11);
        v48 = v46;
        if (v47 != v46)
        {
          do
          {
            v47 = sub_9750F8(v47 - 5704);
          }

          while (v47 != v46);
          v48 = *(v32 - 12);
        }

        *(v32 - 11) = v46;
        operator delete(v48);
        goto LABEL_48;
      }

      operator delete(*(v32 - 9));
      v46 = *(v32 - 12);
      if (v46)
      {
        goto LABEL_78;
      }

LABEL_48:
      v32 -= 104;
      if (v32 == v30)
      {
        v29 = *v55;
        goto LABEL_42;
      }
    }

    while (1)
    {
      v36 = *(v34 - 3);
      if (v36)
      {
        v37 = *(v34 - 2);
        v38 = *(v34 - 3);
        if (v37 != v36)
        {
          v39 = *(v34 - 2);
          do
          {
            v42 = *(v39 - 3);
            v39 -= 3;
            v41 = v42;
            if (v42)
            {
              v43 = *(v37 - 2);
              v40 = v41;
              if (v43 != v41)
              {
                do
                {
                  v44 = *(v43 - 3);
                  if (v44)
                  {
                    *(v43 - 2) = v44;
                    operator delete(v44);
                  }

                  v43 -= 32;
                }

                while (v43 != v41);
                v40 = *v39;
              }

              *(v37 - 2) = v41;
              operator delete(v40);
            }

            v37 = v39;
          }

          while (v39 != v36);
          v38 = *(v34 - 3);
        }

        *(v34 - 2) = v36;
        operator delete(v38);
      }

      if (*(v34 - 25) < 0)
      {
        operator delete(*(v34 - 6));
        v45 = v34 - 9;
        if (*(v34 - 49) < 0)
        {
LABEL_71:
          operator delete(*v45);
        }
      }

      else
      {
        v45 = v34 - 9;
        if (*(v34 - 49) < 0)
        {
          goto LABEL_71;
        }
      }

      v34 = v45;
      if (v45 == v33)
      {
        v35 = *(v32 - 3);
        goto LABEL_73;
      }
    }
  }

  return v1;
}

uint64_t sub_9FCB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_3ED230(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9FCBBC(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_9FCC20(a1, i))
    {
      i -= 3;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_9FCC20(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 != v2)
    {
      v6 = a2[1];
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = v10 - 168;
              v12 = *(v10 - 2);
              if (v12 != -1)
              {
                (off_266F7B8[v12])(&v13, v10 - 168);
              }

              *(v10 - 2) = -1;
              v10 -= 168;
            }

            while (v11 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = *a2;
    }

    a2[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_9FCD0C(uint64_t a1)
{
  sub_53A868(a1 + 800);
  sub_53A868(a1 + 640);
  sub_53A868(a1 + 480);
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

void ***sub_9FCD68(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 4);
        v5 -= 4;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 3);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 -= 104;
              sub_9FCE10(v8);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 3) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_9FCE10(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v3 -= 72;
        sub_9D2428(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    v5 = *(a1 + 8);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      return;
    }
  }

  v6 = *(a1 + 16);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v6 = sub_9750F8(v6 - 5704);
    }

    while (v6 != v5);
    v7 = *(a1 + 8);
  }

  *(a1 + 16) = v5;

  operator delete(v7);
}

uint64_t sub_9FCEE0(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    v3 = *(a1 + 480);
    v4 = *(a1 + 472);
    if (v3 != v2)
    {
      v5 = v3 - 568;
      do
      {
        sub_938500((v5 + 24));
        v7 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v7;
          operator delete(v7);
        }

        v6 = v5 == v2;
        v5 -= 568;
      }

      while (!v6);
      v4 = *(a1 + 472);
    }

    *(a1 + 480) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 424);
  if (v8)
  {
    v9 = *(a1 + 432);
    v10 = *(a1 + 424);
    if (v9 != v8)
    {
      do
      {
        v11 = v9 - 168;
        sub_53A868(v9 - 160);
        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(a1 + 424);
    }

    *(a1 + 432) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 400);
  if (v12)
  {
    *(a1 + 408) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 376);
  if (v13)
  {
    *(a1 + 384) = v13;
    operator delete(v13);
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if ((*(a1 + 351) & 0x80000000) == 0)
    {
LABEL_20:
      if ((*(a1 + 327) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      operator delete(*(a1 + 304));
      sub_942F5C((a1 + 24));
      v14 = *a1;
      if (!*a1)
      {
        return a1;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a1 + 351) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(*(a1 + 328));
  if (*(a1 + 327) < 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  sub_942F5C((a1 + 24));
  v14 = *a1;
  if (!*a1)
  {
    return a1;
  }

LABEL_26:
  v16 = *(a1 + 8);
  v17 = v14;
  if (v16 != v14)
  {
    do
    {
      v16 = sub_9FC74C(v16 - 412);
    }

    while (v16 != v14);
    v17 = *a1;
  }

  *(a1 + 8) = v14;
  operator delete(v17);
  return a1;
}

uint64_t sub_9FD064(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0x8000000080000000;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0x8000000080000000;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0x8000000080000000;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x8000000080000000;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0x8000000080000000;
  sub_9C11B8(a1 + 80);
  *(a1 + 1040) = -1;
  *(a1 + 1044) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0x7FFFFFFF;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 100;
  *(a1 + 1200) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1228) = 0xFFFFFFFFLL;
  *(a1 + 1236) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0x3FF0000000000000;
  *(a1 + 1272) = 0;
  *(a1 + 1256) = 0u;
  sub_559C9C(a1 + 1280);
  *(a1 + 2400) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2368) = 0u;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *(a1 + 2416) = -1;
  *(a1 + 2424) = 0x7FFFFFFF;
  *(a1 + 2432) = -1;
  *(a1 + 2440) = -1;
  *(a1 + 2448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2456) = 0;
  *(a1 + 2464) = -1935635296;
  *(a1 + 2472) = 0;
  *(a1 + 2479) = 0;
  *(a1 + 2488) = 0;
  *(a1 + 2496) = 0u;
  *(a1 + 2512) = 0;
  *(a1 + 2520) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2528) = 100;
  *(a1 + 2536) = 0u;
  *(a1 + 2552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2560) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2584) = 0;
  *(a1 + 2568) = 0u;
  *(a1 + 2592) = 1;
  *(a1 + 2600) = 0;
  *(a1 + 2608) = 0u;
  *(a1 + 2624) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2656) = 0u;
  *(a1 + 2672) = 0u;
  *(a1 + 2688) = 0u;
  *(a1 + 2704) = 0;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2792) = 0;
  *(a1 + 2808) = -1;
  *(a1 + 2800) = -1;
  *(a1 + 2816) = 0u;
  *(a1 + 2840) = 0;
  *(a1 + 2832) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2852) = xmmword_2291330;
  *(a1 + 2872) = -1;
  *(a1 + 2880) = -1;
  *(a1 + 2888) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2896) = 0;
  *(a1 + 2904) = -1935635296;
  *(a1 + 2919) = 0;
  *(a1 + 2912) = 0;
  *(a1 + 2928) = 0u;
  *(a1 + 2952) = 0;
  *(a1 + 2944) = 0;
  *(a1 + 2960) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2968) = 100;
  *(a1 + 2976) = 0u;
  *(a1 + 2992) = vnegq_f64(v2);
  *(a1 + 3024) = 0;
  *(a1 + 3008) = 0u;
  *(a1 + 3032) = 1;
  *(a1 + 3040) = 0;
  *(a1 + 3144) = 0;
  *(a1 + 3112) = 0u;
  *(a1 + 3128) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3232) = 0;
  *(a1 + 3216) = 0u;
  *(a1 + 3200) = 0u;
  *(a1 + 3184) = 0u;
  *(a1 + 3168) = 0u;
  *(a1 + 3152) = 0u;
  *(a1 + 3248) = -1;
  *(a1 + 3240) = -1;
  *(a1 + 3280) = 0;
  *(a1 + 3272) = 0;
  *(a1 + 3256) = 0u;
  *(a1 + 3288) = 0;
  *(a1 + 3292) = 0;
  return a1;
}

void sub_9FD2E0(_Unwind_Exception *a1)
{
  sub_9FCB58(v1 + 1240);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 1208) = v5;
    operator delete(v5);
    if ((*(v1 + 1191) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 1151) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v1 + 1191) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  if ((*(v1 + 1151) & 0x80000000) == 0)
  {
LABEL_4:
    v6 = *(v1 + 1104);
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 1128));
  v6 = *(v1 + 1104);
  if (!v6)
  {
LABEL_5:
    v7 = *(v1 + 1080);
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(v1 + 1112) = v6;
  operator delete(v6);
  v7 = *(v1 + 1080);
  if (!v7)
  {
LABEL_7:
    sub_9FCBBC(v1 + 1056);
    sub_9FCD0C(v1 + 80);
    sub_9FCD68(v1);
    _Unwind_Resume(a1);
  }

LABEL_6:
  *(v1 + 1088) = v7;
  operator delete(v7);
  goto LABEL_7;
}

void sub_9FD394(uint64_t *a1, size_t *a2, size_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
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
          v10 -= 80;
          sub_3ED230(v10);
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

    if (a4 <= 0x333333333333333)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x199999999999999)
      {
        v14 = 0x333333333333333;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x333333333333333)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_9FD62C(v8, v5);
        v5 += 10;
        v8 += 80;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 -= 80;
      sub_3ED230(v15);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = (a2 + v16);
    if (v15 != v8)
    {
      do
      {
        sub_9FD62C(v8, v5);
        v5 += 10;
        v8 += 80;
        v16 -= 80;
      }

      while (v16);
      v15 = a1[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        sub_3ED0F4(v15 + v19 * 8, &v17[v19]);
        v19 += 10;
      }

      while (&v17[v19] != a3);
      v18 = v15 + v19 * 8;
    }

    a1[1] = v18;
  }
}

void sub_9FD5FC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 80;
    v7 = -v4;
    do
    {
      sub_3ED230(v6);
      v6 -= 80;
      v7 += 80;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_9FD62C(uint64_t a1, size_t *a2)
{
  v2 = a2;
  if (a1 == a2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    sub_13B38(a1, a2, v8);
LABEL_10:
    v5 = a1 + 24;
    v6 = *(a1 + 48);
    v7 = *(v2 + 12);
    if (v6 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(a1, *a2, a2[1]);
    v5 = a1 + 24;
    v6 = *(a1 + 48);
    v7 = *(v2 + 12);
    if (v6 == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = a2[2];
    *a1 = v4;
    v5 = a1 + 24;
    v6 = *(a1 + 48);
    v7 = *(v2 + 12);
    if (v6 == -1)
    {
LABEL_14:
      if (v7 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_11:
  if (v7 == -1)
  {
    (off_266F788[v6])(&v11, v5);
    *(a1 + 48) = -1;
    goto LABEL_16;
  }

LABEL_15:
  v10 = v5;
  (off_266F7F8[v7])(&v10);
LABEL_16:
  if (a1 != v2)
  {
    sub_9FDB1C((a1 + 56), v2[7], v2[8], (v2[8] - v2[7]) >> 5);
  }

  return a1;
}

uint64_t sub_9FD758(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 24);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266F788[v2])(&v3, v1);
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_9FD7B0(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F788[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 1;
  return result;
}

uint64_t sub_9FD838(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F788[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 2;
  return result;
}

uint64_t sub_9FD8C0(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F788[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 3;
  return result;
}

double sub_9FD948(uint64_t *a1, void *a2, double *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    v6 = a3;
    (off_266F788[v4])(&v7, v3);
    a3 = v6;
  }

  result = *a3;
  *v3 = *a3;
  *(v3 + 24) = 4;
  return result;
}

_BYTE *sub_9FD9D8(_BYTE *result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 6);
  if (v3 != 5)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_325C(&v11, *a3, *(a3 + 1));
      v3 = *(v6 + 24);
      if (v3 == -1)
      {
LABEL_12:
        *v6 = v11;
        *(v6 + 16) = v12;
        *(v6 + 24) = 5;
        return result;
      }
    }

    else
    {
      v11 = *a3;
      v12 = *(a3 + 2);
      if (v3 == -1)
      {
        goto LABEL_12;
      }
    }

    result = (off_266F788[v3])(&v13, v6);
    goto LABEL_12;
  }

  if (a2 != a3)
  {
    v4 = *(a3 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = *(a3 + 1);
      }

      return sub_13B38(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_13A68(a2, v10, v9);
    }

    else
    {
      v5 = *a3;
      *(a2 + 16) = *(a3 + 2);
      *a2 = v5;
    }
  }

  return result;
}

void **sub_9FDB1C(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 8;
          v13 = *(v10 - 2);
          if (v13 != -1)
          {
            (off_266F788[v13])(v30, v10 - 8);
          }

          *(v10 - 2) = -1;
          v10 -= 8;
        }

        while (v12 != v8);
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

    if (!(a4 >> 59))
    {
      v27 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v27 = a4;
      }

      v28 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v29 = 0x7FFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v27;
      }

      if (!(v29 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 5)
  {
    if (a2 == a3)
    {
LABEL_32:
      if (v14 != v8)
      {
        do
        {
          v25 = v14 - 8;
          v26 = *(v14 - 2);
          if (v26 != -1)
          {
            result = (off_266F788[v26])(v30, v14 - 8);
          }

          *(v14 - 2) = -1;
          v14 -= 8;
        }

        while (v25 != v8);
      }

      v6[1] = v8;
      return result;
    }

    while (1)
    {
      while (1)
      {
        v23 = v8[6];
        v24 = *(v5 + 24);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v5 += 32;
        v8 += 8;
        if (v5 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v24 != -1)
      {
LABEL_26:
        v30[0] = v8;
        result = (off_266F7F8[v24])(v30, v8, v5);
        goto LABEL_27;
      }

      result = (off_266F788[v23])(v30, v8);
      v8[6] = -1;
      v5 += 32;
      v8 += 8;
      if (v5 == a3)
      {
LABEL_31:
        v14 = v6[1];
        goto LABEL_32;
      }
    }
  }

  if (v14 == v8)
  {
    goto LABEL_18;
  }

  v16 = v14 - v8;
  v17 = a2;
  do
  {
    while (1)
    {
      v18 = v8[6];
      v19 = *(v17 + 24);
      if (v18 != -1)
      {
        break;
      }

      if (v19 != -1)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 += 32;
      v8 += 8;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v19 != -1)
    {
LABEL_12:
      v30[0] = v8;
      result = (off_266F7F8[v19])(v30, v8, v17);
      goto LABEL_13;
    }

    result = (off_266F788[v18])(v30, v8);
    v8[6] = -1;
    v17 += 32;
    v8 += 8;
    v16 -= 32;
  }

  while (v16);
LABEL_17:
  v14 = v6[1];
LABEL_18:
  v20 = v5 + v15;
  v32 = v14;
  v33 = v14;
  v30[0] = v6;
  v30[1] = &v32;
  v30[2] = &v33;
  v21 = v14;
  v31 = 0;
  if (v20 != a3)
  {
    v21 = v14;
    do
    {
      *v21 = 0;
      v21[6] = -1;
      v22 = *(v20 + 24);
      if (v22 != -1)
      {
        v34 = v21;
        result = (off_266F7C8[v22])(&v34, v20);
        v21[6] = v22;
        v21 = v33;
      }

      v20 += 32;
      v21 += 8;
      v33 = v21;
    }

    while (v20 != a3);
  }

  v6[1] = v21;
  return result;
}

void sub_9FDEFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_840B0(v3);
  sub_84254(va);
  *(v2 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_9FDF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_840B0(v4);
  sub_84254(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

double sub_9FDF40(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - v1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 32 * v3;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = 1;
  sub_9FE060(a1, v1, v2, 0);
  v8 = *a1;
  *a1 = 0;
  v9 = (32 * v3 + 32);
  *(a1 + 1) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 32 * v3 + 32;
  }

  return *&v9;
}

void sub_9FE04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9FE298(va);
  _Unwind_Resume(a1);
}

void sub_9FE060(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v4;
      *(a4 + 16) = v4[2];
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      *(a4 + 24) = *(v4 + 24);
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    if (a2 != a3)
    {
      v25 = a3;
      while (1)
      {
        v7 = *a2;
        if (!*a2)
        {
          goto LABEL_8;
        }

        v5 = a2;
        v8 = a2[1];
        v6 = *a2;
        if (v8 != v7)
        {
          break;
        }

LABEL_7:
        v5[1] = v7;
        operator delete(v6);
        a3 = v25;
        a2 = v5;
LABEL_8:
        a2 += 4;
        if (a2 == a3)
        {
          return;
        }
      }

      v26 = a2;
      while (1)
      {
        v9 = *(v8 - 3);
        if (!v9)
        {
          goto LABEL_39;
        }

        v10 = *(v8 - 2);
        v11 = *(v8 - 3);
        if (v10 != v9)
        {
          break;
        }

LABEL_38:
        *(v8 - 2) = v9;
        operator delete(v11);
LABEL_39:
        if ((*(v8 - 49) & 0x80000000) == 0)
        {
          v22 = *(v8 - 12);
          if (!v22)
          {
            goto LABEL_13;
          }

LABEL_43:
          v23 = *(v8 - 11);
          v24 = v22;
          if (v23 != v22)
          {
            do
            {
              v23 = sub_9750F8(v23 - 5704);
            }

            while (v23 != v22);
            v24 = *(v8 - 12);
          }

          *(v8 - 11) = v22;
          operator delete(v24);
          goto LABEL_13;
        }

        operator delete(*(v8 - 9));
        v22 = *(v8 - 12);
        if (v22)
        {
          goto LABEL_43;
        }

LABEL_13:
        v8 -= 104;
        if (v8 == v7)
        {
          v5 = v26;
          v6 = *v26;
          goto LABEL_7;
        }
      }

      while (1)
      {
        v12 = *(v10 - 3);
        if (v12)
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          if (v13 != v12)
          {
            v15 = *(v10 - 2);
            do
            {
              v18 = *(v15 - 3);
              v15 -= 3;
              v17 = v18;
              if (v18)
              {
                v19 = *(v13 - 2);
                v16 = v17;
                if (v19 != v17)
                {
                  do
                  {
                    v20 = *(v19 - 3);
                    if (v20)
                    {
                      *(v19 - 2) = v20;
                      operator delete(v20);
                    }

                    v19 -= 32;
                  }

                  while (v19 != v17);
                  v16 = *v15;
                }

                *(v13 - 2) = v17;
                operator delete(v16);
              }

              v13 = v15;
            }

            while (v15 != v12);
            v14 = *(v10 - 3);
          }

          *(v10 - 2) = v12;
          operator delete(v14);
        }

        if (*(v10 - 25) < 0)
        {
          operator delete(*(v10 - 6));
          v21 = v10 - 9;
          if (*(v10 - 49) < 0)
          {
LABEL_36:
            operator delete(*v21);
          }
        }

        else
        {
          v21 = v10 - 9;
          if (*(v10 - 49) < 0)
          {
            goto LABEL_36;
          }
        }

        v10 = v21;
        if (v21 == v9)
        {
          v11 = *(v8 - 3);
          goto LABEL_38;
        }
      }
    }
  }
}

uint64_t sub_9FE298(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v6 = *(v4 - 4);
      v4 -= 4;
      v5 = v6;
      *(a1 + 16) = v4;
      if (v6)
      {
        v7 = *(v3 - 3);
        v8 = v5;
        if (v7 != v5)
        {
          do
          {
            v7 -= 104;
            sub_9FCE10(v7);
          }

          while (v7 != v5);
          v8 = *v4;
        }

        *(v3 - 3) = v5;
        operator delete(v8);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9FE33C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = &v2[-*a1];
  v4 = 0x4EC4EC4EC4EC4EC5 * (v3 >> 3) + 1;
  if (v4 > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 3) > v4)
  {
    v4 = 0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - v1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  *(v7 + 48) = 0;
  *(v7 + 56) = -1;
  *(v7 + 64) = -1;
  *(v7 + 72) = -1;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  v8 = v7 + 104;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      *v11 = *v10;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = *(v10 + 8);
      *(v11 + 24) = *(v10 + 3);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      v12 = *(v10 + 2);
      *(v11 + 48) = *(v10 + 6);
      *(v11 + 32) = v12;
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      *(v10 + 4) = 0;
      v13 = *(v10 + 56);
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 56) = v13;
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(v11 + 80) = *(v10 + 5);
      *(v11 + 96) = *(v10 + 12);
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      *(v10 + 12) = 0;
      v10 += 104;
      v11 += 104;
    }

    while (v10 != v2);
    do
    {
      sub_9FCE10(v1);
      v1 += 104;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  a1[1] = v8;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

uint64_t sub_9FE508(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 1136) == *(a2 + 1136))
  {
    if (!*(result + 1136))
    {
      return result;
    }

    v3 = *(result + 1128);
    v4 = *(a2 + 1128);
    if (v3 != -1)
    {
      if (v4 == -1)
      {
        result = (off_266F828[v3])(&v7, result, a2);
        *(v2 + 1128) = -1;
        return result;
      }

LABEL_15:
      v7 = result;
      return (off_266F850[v4])(&v7, result, a2);
    }

    if (v4 != -1)
    {
      goto LABEL_15;
    }
  }

  else if (*(result + 1136))
  {
    v5 = *(result + 1128);
    if (v5 != -1)
    {
      result = (off_266F828[v5])(&v7, result, a2);
    }

    *(v2 + 1128) = -1;
    *(v2 + 1136) = 0;
  }

  else
  {
    *result = 0;
    *(result + 1128) = -1;
    v6 = *(a2 + 1128);
    if (v6 != -1)
    {
      v7 = result;
      result = (off_266F878[v6])(&v7, a2);
      *(v2 + 1128) = v6;
    }

    *(v2 + 1136) = 1;
  }

  return result;
}

__n128 sub_9FE64C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1128);
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      v6 = *(a3 + 16);
      v7 = *(a3 + 48);
      *(a2 + 32) = *(a3 + 32);
      *(a2 + 48) = v7;
      *a2 = result;
      *(a2 + 16) = v6;
      return result;
    }

    v8 = a3;
    (off_266F828[v4])(&v11, v3);
    a3 = v8;
  }

  *(v3 + 1128) = -1;
  result = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 48);
  *(v3 + 32) = *(a3 + 32);
  *(v3 + 48) = v10;
  *v3 = result;
  *(v3 + 16) = v9;
  *(v3 + 1128) = 0;
  return result;
}

__n128 sub_9FE6E4(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 1128);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_266F828[v5])(&v14, v4);
LABEL_7:
    *(v4 + 1128) = -1;
    v12 = *a3;
    v13 = a3[1];
    *(v4 + 28) = *(a3 + 28);
    *v4 = v12;
    *(v4 + 16) = v13;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 48) = 0;
    result = a3[3];
    *(v4 + 48) = result;
    *(v4 + 64) = *(a3 + 8);
    *(a3 + 7) = 0;
    *(a3 + 8) = 0;
    *(a3 + 6) = 0;
    *(v4 + 72) = *(a3 + 72);
    *(v4 + 1128) = 1;
    return result;
  }

  v6 = *a3;
  v7 = a3[1];
  *(a2 + 28) = *(a3 + 28);
  *a2 = v6;
  *(a2 + 16) = v7;
  v9 = (a2 + 48);
  v8 = *(a2 + 48);
  if (v8)
  {
    *(a2 + 56) = v8;
    v10 = a2;
    operator delete(v8);
    a2 = v10;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  result = a3[3];
  *(a2 + 48) = result;
  *(a2 + 64) = *(a3 + 8);
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a2 + 72) = *(a3 + 72);
  return result;
}

__n128 sub_9FE7F8(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[70].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_266F828[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 2;
  return result;
}

void sub_9FE898(uint64_t *a1, _OWORD *a2, _OWORD *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1128);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 3)
  {
    v6 = a3;
    (off_266F828[v4])(&v8, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 1128) = -1;
    v7 = *a3;
    *(v3 + 12) = *(a3 + 12);
    *v3 = v7;
    sub_4C6AE8(v3 + 32, (a3 + 2));
    *(v3 + 1128) = 3;
    return;
  }

  v5 = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = v5;

  sub_4192A0((a2 + 2), (a3 + 2));
}

__n128 sub_9FE95C(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[70].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_266F828[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 4;
  return result;
}

__n128 sub_9FE9FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v5;
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

__n128 sub_9FEA14(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  *(v2 + 28) = *(a2 + 28);
  *v2 = v3;
  *(v2 + 16) = v4;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  result = a2[3];
  *(v2 + 48) = result;
  *(v2 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(v2 + 72) = *(a2 + 72);
  return result;
}

__n128 sub_9FEA54(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u32[0] = a2[1].n128_u32[0];
  *v2 = result;
  return result;
}

double sub_9FEA6C(_OWORD **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = v3;
  return sub_4C6AE8((v2 + 2), (a2 + 2));
}

__n128 sub_9FEA8C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u32[0] = a2[1].n128_u32[0];
  *v2 = result;
  return result;
}

char *sub_9FEAA4(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x924924924924924)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 2) >= a4)
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

uint64_t sub_9FEC44(uint64_t *a1, int *a2)
{
  v2 = 0xBC7FD20AC579B779 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xB7D4EA19221C0)
  {
    sub_1794();
  }

  if (0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3);
  }

  if (0xBC7FD20AC579B779 * ((a1[2] - *a1) >> 3) >= 0x5BEA750C910E0)
  {
    v5 = 0xB7D4EA19221C0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB7D4EA19221C0)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9FF7A0(v15, *a2);
  v6 = 5704 * v2 + 5704;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_9FEE44(v12, v11);
      v11 += 5704;
      v12 = v13 + 5704;
    }

    while (v11 != v8);
    do
    {
      sub_9750F8(v7);
      v7 += 5704;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9FEDD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9FEDE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9FEDE4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 5704;
    sub_9750F8(i - 5704);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9FEE44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 65);
  *(a1 + 88) = 0;
  v8 = a1 + 88;
  *(v8 - 23) = v7;
  *(v8 - 48) = v5;
  *(v8 - 32) = v6;
  *(v8 + 704) = 0;
  if (*(a2 + 792) == 1)
  {
    sub_9FF44C(v8, a2 + 88);
    *(a1 + 792) = 1;
    *(a1 + 800) = 0;
    *(a1 + 840) = 0;
    if (*(a2 + 840) != 1)
    {
LABEL_3:
      *(a1 + 848) = 0;
      *(a1 + 952) = 0;
      if (*(a2 + 952) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(a1 + 800) = 0;
    *(a1 + 840) = 0;
    if (*(a2 + 840) != 1)
    {
      goto LABEL_3;
    }
  }

  v15 = *(a2 + 800);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 800) = v15;
  v16 = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 816) = v16;
  *(a2 + 832) = 0;
  *(a2 + 824) = 0;
  *(a2 + 816) = 0;
  *(a1 + 840) = 1;
  *(a1 + 848) = 0;
  *(a1 + 952) = 0;
  if (*(a2 + 952) != 1)
  {
LABEL_4:
    *(a1 + 960) = 0;
    *(a1 + 1000) = 0;
    if (*(a2 + 1000) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v17 = *(a2 + 848);
  *(a1 + 858) = *(a2 + 858);
  *(a1 + 848) = v17;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 896) = 0;
  *(a2 + 880) = 0u;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a2 + 936) = 0;
  *(a2 + 920) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = 1;
  *(a1 + 960) = 0;
  *(a1 + 1000) = 0;
  if (*(a2 + 1000) == 1)
  {
LABEL_5:
    v9 = *(a2 + 960);
    *(a1 + 964) = *(a2 + 964);
    *(a1 + 960) = v9;
    *(a1 + 968) = 0;
    *(a1 + 976) = 0u;
    *(a1 + 968) = *(a2 + 968);
    *(a1 + 976) = *(a2 + 976);
    *(a2 + 984) = 0;
    *(a2 + 968) = 0u;
    *(a1 + 992) = *(a2 + 992);
    *(a1 + 1000) = 1;
  }

LABEL_6:
  *(a1 + 1008) = *(a2 + 1008);
  sub_9C1C00(a1 + 1016, a2 + 1016);
  *(a1 + 1880) = 0;
  *(a1 + 1864) = 0u;
  *(a1 + 1864) = *(a2 + 1864);
  *(a1 + 1872) = *(a2 + 1872);
  *(a2 + 1880) = 0;
  *(a2 + 1864) = 0u;
  v10 = *(a2 + 1888);
  *(a1 + 1901) = *(a2 + 1901);
  *(a1 + 1888) = v10;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0u;
  *(a1 + 1920) = *(a2 + 1920);
  *(a1 + 1936) = *(a2 + 1936);
  *(a2 + 1936) = 0;
  *(a2 + 1920) = 0u;
  *(a1 + 1960) = 0;
  *(a1 + 1944) = 0u;
  *(a1 + 1944) = *(a2 + 1944);
  *(a1 + 1952) = *(a2 + 1952);
  *(a2 + 1960) = 0;
  *(a2 + 1944) = 0u;
  v11 = *(a2 + 1968);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 1968) = v11;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2000) = *(a2 + 2000);
  *(a1 + 2016) = *(a2 + 2016);
  *(a2 + 2016) = 0;
  *(a2 + 2000) = 0u;
  *(a1 + 2024) = 0;
  *(a1 + 2104) = 0;
  if (*(a2 + 2104) == 1)
  {
    *(a1 + 2024) = *(a2 + 2024);
    v12 = *(a2 + 2032);
    *(a1 + 2048) = *(a2 + 2048);
    *(a1 + 2032) = v12;
    *(a2 + 2040) = 0uLL;
    *(a2 + 2032) = 0;
    *(a1 + 2056) = *(a2 + 2056);
    *(a1 + 2064) = *(a2 + 2064);
    *(a1 + 2072) = 0;
    *(a1 + 2080) = 0uLL;
    *(a1 + 2072) = *(a2 + 2072);
    *(a1 + 2080) = *(a2 + 2080);
    *(a2 + 2088) = 0;
    *(a2 + 2072) = 0uLL;
    *(a1 + 2096) = *(a2 + 2096);
    *(a1 + 2104) = 1;
  }

  *(a1 + 2112) = 0;
  *(a1 + 2144) = 0;
  if (*(a2 + 2144) == 1)
  {
    *(a1 + 2128) = 0;
    *(a1 + 2112) = 0uLL;
    *(a1 + 2112) = *(a2 + 2112);
    *(a1 + 2128) = *(a2 + 2128);
    *(a2 + 2128) = 0;
    *(a2 + 2112) = 0uLL;
    *(a1 + 2136) = *(a2 + 2136);
    *(a1 + 2144) = 1;
  }

  *(a1 + 2168) = 0;
  *(a1 + 2152) = 0u;
  *(a1 + 2152) = *(a2 + 2152);
  *(a1 + 2160) = *(a2 + 2160);
  *(a2 + 2168) = 0;
  *(a2 + 2152) = 0u;
  v13 = *(a2 + 2176);
  *(a1 + 2192) = *(a2 + 2192);
  *(a1 + 2176) = v13;
  *(a1 + 2200) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2200) = *(a2 + 2200);
  *(a1 + 2208) = *(a2 + 2208);
  *(a2 + 2216) = 0;
  *(a2 + 2200) = 0u;
  sub_9C209C(a1 + 2224, a2 + 2224);
  *(a1 + 3440) = 0;
  *(a1 + 3424) = 0u;
  *(a1 + 3424) = *(a2 + 3424);
  *(a1 + 3440) = *(a2 + 3440);
  *(a2 + 3440) = 0;
  *(a2 + 3424) = 0u;
  *(a1 + 3464) = 0;
  *(a1 + 3448) = 0u;
  *(a1 + 3448) = *(a2 + 3448);
  *(a1 + 3456) = *(a2 + 3456);
  *(a2 + 3464) = 0;
  *(a2 + 3448) = 0u;
  *(a1 + 3488) = 0;
  *(a1 + 3472) = 0u;
  *(a1 + 3472) = *(a2 + 3472);
  *(a1 + 3488) = *(a2 + 3488);
  *(a2 + 3488) = 0;
  *(a2 + 3472) = 0u;
  *(a1 + 3512) = 0;
  *(a1 + 3496) = 0u;
  *(a1 + 3496) = *(a2 + 3496);
  *(a1 + 3504) = *(a2 + 3504);
  *(a2 + 3512) = 0;
  *(a2 + 3496) = 0u;
  *(a1 + 3536) = 0;
  *(a1 + 3520) = 0u;
  *(a1 + 3520) = *(a2 + 3520);
  *(a1 + 3536) = *(a2 + 3536);
  *(a2 + 3536) = 0;
  *(a2 + 3520) = 0u;
  sub_55A4D0(a1 + 3544, a2 + 3544);
  sub_55A4D0(a1 + 4040, a2 + 4040);
  *(a1 + 4536) = 0u;
  *(a1 + 4552) = 0;
  *(a1 + 4536) = *(a2 + 4536);
  *(a1 + 4544) = *(a2 + 4544);
  *(a2 + 4536) = 0u;
  *(a2 + 4552) = 0;
  *(a1 + 4576) = 0;
  *(a1 + 4560) = 0u;
  *(a1 + 4560) = *(a2 + 4560);
  *(a1 + 4576) = *(a2 + 4576);
  *(a2 + 4576) = 0;
  *(a2 + 4560) = 0u;
  *(a1 + 4584) = 0u;
  *(a1 + 4600) = 0;
  *(a1 + 4584) = *(a2 + 4584);
  *(a1 + 4592) = *(a2 + 4592);
  *(a2 + 4584) = 0u;
  *(a2 + 4600) = 0;
  *(a1 + 4624) = 0;
  *(a1 + 4608) = 0u;
  *(a1 + 4608) = *(a2 + 4608);
  *(a1 + 4624) = *(a2 + 4624);
  *(a2 + 4624) = 0;
  *(a2 + 4608) = 0u;
  sub_55A4D0(a1 + 4632, a2 + 4632);
  sub_55A4D0(a1 + 5128, a2 + 5128);
  *(a1 + 5624) = 0u;
  *(a1 + 5640) = 0;
  *(a1 + 5624) = *(a2 + 5624);
  *(a1 + 5632) = *(a2 + 5632);
  *(a2 + 5624) = 0u;
  *(a2 + 5640) = 0;
  *(a1 + 5664) = 0;
  *(a1 + 5648) = 0u;
  *(a1 + 5648) = *(a2 + 5648);
  *(a1 + 5664) = *(a2 + 5664);
  *(a2 + 5664) = 0;
  *(a2 + 5648) = 0u;
  *(a1 + 5672) = *(a2 + 5672);
  *(a1 + 5688) = 0u;
  *(a1 + 5680) = 0;
  *(a1 + 5680) = *(a2 + 5680);
  *(a1 + 5696) = *(a2 + 5696);
  *(a2 + 5696) = 0;
  *(a2 + 5680) = 0u;
  return a1;
}

uint64_t sub_9FF44C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a1 + 96) = *(a2 + 96);
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v9 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v9;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  *(a1 + 184) = *(a2 + 184);
  v10 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v10;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  v11 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v11;
  *(a1 + 256) = -1;
  v12 = *(a2 + 256);
  if (v12 != -1)
  {
    v24 = a1 + 224;
    (off_266F760[v12])(&v24, a2 + 224);
    *(a1 + 256) = v12;
  }

  *(a1 + 264) = *(a2 + 264);
  v13 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v13;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  v14 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v14;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  v15 = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 424) = v15;
  *(a1 + 440) = 0;
  *(a1 + 496) = 0;
  if (*(a2 + 496) == 1)
  {
    v16 = *(a2 + 440);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 440) = v16;
    *(a2 + 448) = 0;
    *(a2 + 456) = 0;
    *(a2 + 440) = 0;
    *(a1 + 464) = *(a2 + 464);
    v17 = *(a2 + 472);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 472) = v17;
    *(a2 + 480) = 0;
    *(a2 + 488) = 0;
    *(a2 + 472) = 0;
    *(a1 + 496) = 1;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = 0;
  *(a1 + 544) = -1;
  v18 = *(a2 + 544);
  if (v18 != -1)
  {
    v24 = a1 + 512;
    (off_266F760[v18])(&v24, a2 + 512);
    *(a1 + 544) = v18;
  }

  *(a1 + 552) = *(a2 + 552);
  v19 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 560) = v19;
  *(a2 + 568) = 0u;
  *(a2 + 560) = 0;
  *(a1 + 584) = *(a2 + 584);
  v20 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 592) = v20;
  *(a2 + 600) = 0u;
  *(a2 + 592) = 0;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  v21 = *(a2 + 656);
  v22 = *(a2 + 672);
  *(a1 + 681) = *(a2 + 681);
  *(a1 + 656) = v21;
  *(a1 + 672) = v22;
  return a1;
}

uint64_t sub_9FF7A0(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 48) = -1;
  *(a1 + 56) = -1;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  sub_64B998(a1 + 1112);
  sub_64B998(a1 + 1272);
  sub_64B998(a1 + 1432);
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  sub_64B998(a1 + 1696);
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 0;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1896) = -1;
  *(a1 + 1904) = -1;
  *(a1 + 1912) = 0;
  *(a1 + 1916) = 0;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = -1;
  *(a1 + 1976) = 0;
  *(a1 + 1980) = 0;
  *(a1 + 1984) = -1;
  *(a1 + 1992) = -1;
  *(a1 + 2104) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2144) = 0;
  *(a1 + 2024) = 0;
  *(a1 + 2016) = 0;
  *(a1 + 2000) = 0u;
  *(a1 + 2168) = 0;
  *(a1 + 2152) = 0u;
  *(a1 + 2176) = 0xFFFFFFFF00000000;
  *(a1 + 2184) = 0x8000000080000000;
  *(a1 + 2192) = -1;
  *(a1 + 2216) = 0;
  *(a1 + 2200) = 0u;
  sub_9C2868(a1 + 2224);
  *(a1 + 3488) = 0;
  *(a1 + 3472) = 0u;
  *(a1 + 3456) = 0u;
  *(a1 + 3440) = 0u;
  *(a1 + 3424) = 0u;
  sub_559C9C(a1 + 3496);
  sub_559C9C(a1 + 4584);
  *(a1 + 5672) = 0;
  *(a1 + 5680) = 0;
  *(a1 + 5696) = 0;
  *(a1 + 5688) = 0;
  return a1;
}

void sub_9FF968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_559E70((v10 + 3496));
  v17 = *(v10 + 3472);
  if (v17)
  {
    *(v10 + 3480) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 3448);
  if (v18)
  {
    *(v10 + 3456) = v18;
    operator delete(v18);
  }

  sub_974EB8((v10 + 3424));
  sub_974F1C((v10 + 2224));
  v19 = *v15;
  if (*v15)
  {
    *(v10 + 2208) = v19;
    operator delete(v19);
    v20 = (v10 + 2000);
    v21 = *v14;
    if (!*v14)
    {
LABEL_7:
      sub_974FF4(v10 + 2024);
      v22 = *v20;
      if (!*v20)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v20 = (v10 + 2000);
    v21 = *v14;
    if (!*v14)
    {
      goto LABEL_7;
    }
  }

  *(v10 + 2160) = v21;
  operator delete(v21);
  sub_974FF4(v10 + 2024);
  v22 = *v20;
  if (!*v20)
  {
LABEL_8:
    v23 = (v10 + 1864);
    v24 = (v10 + 1920);
    v25 = *(v10 + 1944);
    if (!v25)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v10 + 2008) = v22;
  operator delete(v22);
  v23 = (v10 + 1864);
  v24 = (v10 + 1920);
  v25 = *(v10 + 1944);
  if (!v25)
  {
LABEL_9:
    v26 = *v24;
    if (!*v24)
    {
LABEL_11:
      a10 = v23;
      sub_973FB8(&a10);
      sub_9750B4(v12);
      if (*(v10 + 1000) == 1)
      {
        v27 = *(v10 + 968);
        if (v27)
        {
          *(v10 + 976) = v27;
          operator delete(v27);
        }
      }

      sub_97373C(v10 + 848);
      if (*(v10 + 840) == 1 && *(v10 + 839) < 0)
      {
        operator delete(*(v10 + 816));
      }

      if (*(v10 + 792) == 1)
      {
        sub_973264(v11);
        if ((*(v10 + 39) & 0x80000000) == 0)
        {
LABEL_25:
          _Unwind_Resume(a1);
        }
      }

      else if ((*(v10 + 39) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      operator delete(*v13);
      _Unwind_Resume(a1);
    }

LABEL_10:
    *(v10 + 1928) = v26;
    operator delete(v26);
    goto LABEL_11;
  }

LABEL_15:
  *(v10 + 1952) = v25;
  operator delete(v25);
  v26 = *v24;
  if (!*v24)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_9FFB40(uint64_t *a1, uint64_t a2)
{
  v2 = 0xBC7FD20AC579B779 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xB7D4EA19221C0)
  {
    sub_1794();
  }

  if (0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3);
  }

  if (0xBC7FD20AC579B779 * ((a1[2] - *a1) >> 3) >= 0x5BEA750C910E0)
  {
    v5 = 0xB7D4EA19221C0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB7D4EA19221C0)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9722E4(v15, a2);
  v6 = 5704 * v2 + 5704;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_9FEE44(v12, v11);
      v11 += 5704;
      v12 = v13 + 5704;
    }

    while (v11 != v8);
    do
    {
      sub_9750F8(v7);
      v7 += 5704;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9FFCCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9FEDE4(va);
  _Unwind_Resume(a1);
}

void sub_9FFCE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9FFE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_974398(&a11);
  *(v11 + 8) = v12;
  sub_9743FC(&a9);
  _Unwind_Resume(a1);
}

void *sub_9FFE48(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v4 = sub_9FFEB4(v4 - 18);
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

void *sub_9FFEB4(void *a1)
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
    v7 = a1[2];
    v8 = a1[1];
    if (v7 != v6)
    {
      do
      {
        v9 = v7 - 1136;
        v10 = *(v7 - 8);
        if (v10 != -1)
        {
          (off_266F828[v10])(&v12, v7 - 1136);
        }

        *(v7 - 8) = -1;
        v7 -= 1136;
      }

      while (v9 != v6);
      v8 = a1[1];
    }

    a1[2] = v6;
    operator delete(v8);
  }

  return a1;
}

char *sub_9FFF9C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x924924924924924)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 2) >= a4)
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

uint64_t sub_A0013C(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v7 = sub_3A231C(a1, a2, 0);
  v8 = &v7[-*v7];
  if (*v8 < 5u)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 2);
    if (*(v8 + 2))
    {
      v9 += &v7[*&v7[v9]];
    }
  }

  v10 = (v9 + 4 * HIDWORD(a2) + 4 + *(v9 + 4 * HIDWORD(a2) + 4));
  v11 = (v10 - *v10);
  if (*v11 < 0x29u)
  {
    return 0;
  }

  v12 = v11[20];
  if (!v12)
  {
    return 0;
  }

  v13 = *(&v10[a3 + 1] + v12 + *(v10 + v12));
  if (v13 == -1)
  {
    return 0;
  }

  v14 = &v7[4 * v13 + *(v8 + 10) + *&v7[*(v8 + 10)]];
  v15 = (v14 + 4 + *(v14 + 4));
  v16 = (v15 - *v15);
  if (*v16 < 7u)
  {
    return 0;
  }

  v17 = v16[3];
  if (!v17)
  {
    return 0;
  }

  v18 = (v15 + v17 + *(v15 + v17));
  v19 = *v18;
  if (!v19)
  {
    return 0;
  }

  v20 = 0;
  v21 = v18 + 1;
  v22 = -1;
  while (1)
  {
    v24 = (&v21[v20] + v21[v20]);
    v25 = (v24 - *v24);
    if (*v25 >= 7u)
    {
      v26 = v25[3];
      if (v26)
      {
        v27 = (v24 + v26 + *(v24 + v26));
        v28 = *v27;
        if (v28)
        {
          break;
        }
      }
    }

    v22 = v20;
LABEL_13:
    ++v20;
    v23 = v22;
    if (v20 == v19)
    {
      goto LABEL_22;
    }
  }

  v29 = 2 * v28;
  v30 = (v27 + 1);
  while (a4 != *v30)
  {
    ++v30;
    v29 -= 2;
    if (!v29)
    {
      goto LABEL_13;
    }
  }

  v23 = v20;
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_22:
  if (v23 != -1)
  {
    return &v21[v23] + v21[v23];
  }

  return 0;
}

uint64_t *sub_A002F0(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = sub_95B1D4(a1, a2, a3, a5);
  if (result)
  {
    v10 = result;
    result = result[8];
    v11 = v10[9];
    if (v11 - result >= 72)
    {
      if (v11 - result != 72)
      {
        v12 = 0x8E38E38E38E38E39 * ((v11 - result) >> 3);
        do
        {
          v13 = 18 * (v12 >> 2);
          _X13 = &result[v13 / 2];
          __asm { PRFM            #0, [X13] }

          v20 = &result[9 * (v12 >> 1)];
          _X12 = &v20[v13];
          __asm { PRFM            #0, [X12] }

          if (*v20 >= a4)
          {
            v23 = 0;
          }

          else
          {
            v23 = v12 >> 1;
          }

          result += 9 * v23;
          v12 -= v12 >> 1;
        }

        while (v12 > 1);
      }

      result += 9 * (*result < a4);
    }

    if (result == v11 || *result != a4)
    {
      if (a5 == 1)
      {
        return 0;
      }

      else if (!a5)
      {
        v24 = HIDWORD(a2);
        exception = __cxa_allocate_exception(0x40uLL);
        v26 = a2;
        v27 = exception;
        v40.__r_.__value_.__r.__words[0] = __PAIR64__(v26, v24);
        sub_2FF494(&v40, &v41);
        sub_23E08("Could not obtain stop time update for trip ", &v41, &v42);
        sub_30F54(", schedule index ", &v42, &v43);
        std::to_string(&v40, a3);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v40;
        }

        else
        {
          v28 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v40.__r_.__value_.__l.__size_;
        }

        v30 = std::string::append(&v43, v28, size);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v44.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        sub_30F54(", and stop index ", &v44, &v45);
        std::to_string(&v39, a4);
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v39;
        }

        else
        {
          v32 = v39.__r_.__value_.__r.__words[0];
        }

        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = v39.__r_.__value_.__l.__size_;
        }

        v34 = std::string::append(&v45, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v47 = v34->__r_.__value_.__r.__words[2];
        v46 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v47 >= 0)
        {
          v36 = &v46;
        }

        else
        {
          v36 = v46;
        }

        if (v47 >= 0)
        {
          v37 = HIBYTE(v47);
        }

        else
        {
          v37 = *(&v46 + 1);
        }

        v38 = sub_2D390(v27, v36, v37);
      }
    }
  }

  return result;
}