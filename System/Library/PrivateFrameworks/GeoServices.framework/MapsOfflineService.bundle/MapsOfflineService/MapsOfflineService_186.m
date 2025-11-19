char *sub_B49A34(void *a1, unsigned int a2)
{
  v36[0] = a2;
  sub_B47A80(a1, v36, v32);
  v4 = a1[6];
  v5 = a1[7];
  v23 = a1;
  v24 = v4;
  v25 = v5;
  v26 = v5;
  v27 = 0;
  v28 = v4;
  v29 = v5;
  v30 = v5;
  v31 = 0;
  result = sub_B47094(&v23);
  if (v32[1] == v24 && v33 == v25 && v34 == v26 && (v34 == v33 || v35 == v27))
  {
    return result;
  }

  v7 = *(v35 + 4);
  v8 = *(v35 + 8);
  v9 = v8 - v7;
  if (v8 == v7)
  {
    return result;
  }

  v22 = 0;
  v10 = 0;
  v11 = 1;
LABEL_6:
  while (2)
  {
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    result = sub_B47C7C(a1, a2, v10++);
    if (*(result + 7) != 0x7FFFFFFF && v10 < v9)
    {
      v14 = result;
      for (i = v10; v12 != i; ++i)
      {
        result = sub_B47C7C(a1, a2, i);
        v16 = *(result + 7);
        if (v16 != 0x7FFFFFFF)
        {
          v17 = *(v14 + 7);
          if (v17 > v16 || *(v14 + 8) > *(result + 8) || (v18 = *(result + 9), v19 = *(v14 + 9), v19 > v18) || v19 == v18 && v17 == v16 && 10 * v17 - *(v14 + 11) > 10 * v16 - *(result + 11))
          {
            if (v16 <= v17 && *(result + 8) <= *(v14 + 8))
            {
              v20 = *(v14 + 9);
              v21 = *(result + 9);
              if (v21 <= v20 && (v21 != v20 || v16 != v17 || 10 * v16 - *(result + 11) <= 10 * v17 - *(v14 + 11)))
              {
                *(v14 + 7) = 0x7FFFFFFF;
                if (v10 == v9)
                {
                  return sub_B47970(a1, a2);
                }

                v22 = 1;
                ++v11;
                goto LABEL_6;
              }
            }
          }

          else
          {
            *(result + 7) = 0x7FFFFFFF;
            v22 = 1;
          }
        }
      }
    }

    if (v10 != v9)
    {
      ++v11;
      continue;
    }

    break;
  }

  if ((v22 & 1) == 0)
  {
    return result;
  }

  return sub_B47970(a1, a2);
}

uint64_t sub_B49C84(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v37 = a2;
  sub_B47A80(a1, &v37, v34);
  v12 = a1[6];
  v13 = a1[7];
  v26 = a1;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  v28 = v13;
  v29 = 0;
  v30 = v12;
  v31 = v13;
  v32 = v13;
  v33 = 0;
  sub_B47094(&v26);
  if (*&v34[8] == v27 && *&v34[24] == v28 && (*&v34[24] == *&v34[16] || v35 == v29))
  {
    goto LABEL_7;
  }

  v14 = *(v35 + 4);
  v15 = *(v35 + 8);
  v16 = v15 - v14;
  if (v15 == v14)
  {
    goto LABEL_7;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v17 = 0;
    do
    {
      sub_B47C7C(a1, a2, v17++);
    }

    while (v16 != v17);
LABEL_7:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  v18 = 0;
  v20 = 0;
  do
  {
    v21 = sub_B47C7C(a1, a2, v20);
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[1];
    *v34 = *v21;
    *&v34[16] = v24;
    v35 = v22;
    v36 = v23;
    if (SHIDWORD(v24) <= a6)
    {
      v25 = sub_B49E3C(a1, v34, a3, a4, a5);
      v18 = v25 | v18 | (v25 | v18) & 0xFF00;
    }

    ++v20;
  }

  while (v16 != v20);
  if ((v18 & 0x100) != 0)
  {
    sub_B47970(a1, a3);
  }

  return v18 & 1;
}

unint64_t sub_B49E3C(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a5 != -1)
  {
    v37 = a5;
    v9 = *(a1 + 88);
    v11 = (v9 + (*(sub_B45D70(a1, &v37) + 4) << 6));
    v37 = a5;
    v12 = *(a1 + 88);
    v13 = (v12 + (*(sub_B45D70(a1, &v37) + 8) << 6));
    if (v11 != v13)
    {
      v30 = a2[7];
      v31 = a2[9];
      do
      {
        v32 = v11[7];
        if (v32 != 0x7FFFFFFF && v32 <= v30 && v11[8] <= a2[8])
        {
          v34 = v11[9];
          if (v34 <= v31)
          {
            v35 = 10 * v32 - v11[11] > 10 * v30 - a2[11] && v34 == v31;
            if (!v35 || v32 != v30)
            {
              goto LABEL_40;
            }
          }
        }

        v11 += 16;
      }

      while (v11 != v13);
    }
  }

  v37 = a4;
  v14 = *(a1 + 88);
  v15 = (v14 + (*(sub_B45D70(a1, &v37) + 4) << 6));
  v37 = a4;
  v16 = *(a1 + 88);
  v17 = (v16 + (*(sub_B45D70(a1, &v37) + 8) << 6));
  if (v15 != v17)
  {
    v23 = a2[7];
    v24 = a2[9];
    while (1)
    {
      v25 = v15[7];
      if (v25 != 0x7FFFFFFF && v25 <= v23 && v15[8] <= a2[8])
      {
        v27 = v15[9];
        if (v27 <= v24)
        {
          v28 = 10 * v25 - v15[11] > 10 * v23 - a2[11] && v27 == v24;
          if (!v28 || v25 != v23)
          {
            break;
          }
        }
      }

      v15 += 16;
      if (v15 == v17)
      {
        goto LABEL_4;
      }
    }

LABEL_40:
    LOBYTE(v20) = 0;
    LOBYTE(v18) = 0;
    v21 = 0;
    return (v20 << 8) | (v21 << 16) | v18;
  }

LABEL_4:
  v18 = sub_B47710(a1, a2, a3, 1, 1);
  v20 = v18 >> 8;
  v21 = v18 >> 16;
  if (v18)
  {
    *(v19 + 52) = -1;
    *(v19 + 60) = 0x7FFFFFFF;
  }

  return (v20 << 8) | (v21 << 16) | v18;
}

void sub_B4A048(uint64_t a1)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v28 = 0;
  LOBYTE(v27) = 0;
  sub_CC9264(v12, &v27);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  BYTE8(v21) = 0;
  *v22 = 0u;
  *__p = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  sub_A98AD4(a1 + 152, v10);
  *&v27 = &v25;
  sub_A31F30(&v27);
  if (__p[1])
  {
    *&v24 = __p[1];
    operator delete(__p[1]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v10[1])
  {
    sub_A95778(&v10[1]);
    operator delete(v10[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  if (*(a1 + 456) | *(a1 + 496))
  {
    for (i = *(a1 + 464); i != *(a1 + 472); i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    *(a1 + 496) = 0;
  }

  *(a1 + 416) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 432), *(a1 + 488))));
  *(a1 + 440) = 0;
  *(a1 + 456) = 0;
  *(a1 + 512) = *(a1 + 504);
  *(a1 + 528) = 0;
  if (*(a1 + 576) | *(a1 + 616))
  {
    for (j = *(a1 + 584); j != *(a1 + 592); j += 16)
    {
      if (*j)
      {
        free(*j);
        *j = 0;
      }

      *(j + 8) = 0;
    }

    *(a1 + 616) = 0;
  }

  *(a1 + 536) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 552), *(a1 + 608))));
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 632) = *(a1 + 624);
  *(a1 + 648) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2136) = 0;
  *(a1 + 2128) = 0;
  v4 = *(a1 + 24);
  *(a1 + 1440) = v4;
  *(a1 + 1444) = *(a1 + 28);
  v5 = *(a1 + 72);
  *(a1 + 1445) = v5;
  *(a1 + 688) = v4;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v5;
  v10[0] = 0x1FFFFFFFELL;
  v6 = sub_B34C5C(a1 + 416, v10);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(a1 + 528);
    *(a1 + 528) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(a1 + 504, v10);
    *(a1 + 656) = *(v9 + 8);
  }

  else
  {
    *(a1 + 656) = v7;
  }
}

void sub_B4A2CC(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_B4A2F0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_B30050(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
  v3 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 16);
  v36 = *(a1 + 8);
  v38 = v6;
  v37 = *(a1 + 24);
  v39 = *(a1 + 28);
  v41 = *(a1 + 72);
  v40 = *(a1 + 144);
  sub_B3B538(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2120);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2120);
  }

  *(a1 + 2120) = v8 + v7;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "Primary SPA scanned ", 20);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " stop patterns and obtained ", 28);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " journeys in ", 13);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, " ms using ", 10);
    v13 = sub_71478(v12, v42[18]);
    sub_4A5C(v13, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v15 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v15 = v27;
      }

      v16 = v26;
      v14 = v15 - v26;
      if (v15 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_26:
        *(&v18 + v14) = 0;
        sub_7E854(&v18, 2u);
        if (v20 < 0)
        {
          operator delete(v18);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_A40284(&v36);
      }

      v16 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&v18, v16, v14);
    }

    goto LABEL_26;
  }

  return sub_A40284(&v36);
}

void sub_B4A720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A40284(&a69);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A40284(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_B4A7C0(uint64_t a1, int a2)
{
  v126 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v124[0] = *(a1 + 88);
  v124[1] = v3;
  v124[2] = *(a1 + 120);
  v125 = *(a1 + 136);
  LOBYTE(v124[0]) = 0;
  v123[0] = v124;
  v123[1] = a1;
  v123[2] = &v126;
  v4 = *(a1 + 664);
  LODWORD(v112) = (*(a1 + 656) << *v4) | (2 * a2) | 1;
  v5 = *(sub_B54B10((v4 + 2), &v112) + 4);
  LODWORD(v6) = v5;
  v8 = (a1 + 92);
  v7 = *(a1 + 92);
  v127 = v7;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_118;
  }

  v9 = 10 * (v7 - v5);
  if (v9 >= *(a1 + 52))
  {
    v10 = sub_B4C668(v123, v5);
    LODWORD(v108) = v10;
    v7 = v127;
    if (v10 == 0x7FFFFFFF || v10 >= v127)
    {
LABEL_28:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_29;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_27:
      v7 = v108;
      v127 = v108;
      goto LABEL_28;
    }

    sub_19594F8(&v112);
    sub_4A5C(&v112, "[", 1);
    v12 = std::ostream::operator<<();
    v13 = sub_4A5C(v12, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v14 = sub_258D4(v13);
    v15 = sub_4A5C(v14, " to ", 4);
    sub_258D4(v15);
    if ((v122 & 0x10) != 0)
    {
      v18 = v121;
      if (v121 < v118)
      {
        v121 = v118;
        v18 = v118;
      }

      v19 = &v117;
    }

    else
    {
      if ((v122 & 8) == 0)
      {
        v16 = v5;
        v17 = 0;
        v111 = 0;
LABEL_22:
        *(&__dst + v17) = 0;
        sub_7E854(&__dst, 2u);
        LODWORD(v6) = v16;
        if (v111 < 0)
        {
          operator delete(__dst);
        }

        if (v120 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v114);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_27;
      }

      v19 = v115;
      v18 = v116;
    }

    v20 = *v19;
    v17 = v18 - *v19;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    v16 = v5;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v111 = v18 - *v19;
    if (v17)
    {
      memmove(&__dst, v20, v17);
    }

    goto LABEL_22;
  }

LABEL_29:
  if (v9 < *(a1 + 52))
  {
    goto LABEL_118;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_47;
  }

  sub_19594F8(&v112);
  sub_4A5C(&v112, "[", 1);
  v21 = std::ostream::operator<<();
  sub_4A5C(v21, "] Journey duration (", 20);
  v22 = std::ostream::operator<<();
  sub_4A5C(v22, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v122 & 0x10) != 0)
  {
    v25 = v121;
    if (v121 < v118)
    {
      v121 = v118;
      v25 = v118;
    }

    v26 = v117;
    v24 = v25 - v117;
    if (v25 - v117 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_85:
      sub_3244();
    }

LABEL_37:
    v23 = v6;
    if (v24 >= 0x17)
    {
      operator new();
    }

    v109 = v24;
    if (v24)
    {
      memmove(&v108, v26, v24);
    }

    goto LABEL_42;
  }

  if ((v122 & 8) != 0)
  {
    v26 = v115[0];
    v24 = v116 - v115[0];
    if (v116 - v115[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_85;
    }

    goto LABEL_37;
  }

  v23 = v6;
  v24 = 0;
  v109 = 0;
LABEL_42:
  *(&v108 + v24) = 0;
  sub_7E854(&v108, 2u);
  LODWORD(v6) = v23;
  if (v109 < 0)
  {
    operator delete(v108);
  }

  if (v120 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v114);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_47:
  v27 = *(a1 + 60);
  if (v27 > *(a1 + 56))
  {
    goto LABEL_117;
  }

  v107 = v5;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v30 = v27 % 10;
      goto LABEL_70;
    }

    sub_19594F8(&v112);
    sub_4A5C(&v112, "[", 1);
    v29 = std::ostream::operator<<();
    sub_4A5C(v29, "] Examining time shift of ", 26);
    v30 = v27 % 10;
    v31 = std::ostream::operator<<();
    sub_4A5C(v31, " sec (exponential search)", 25);
    if ((v122 & 0x10) != 0)
    {
      v33 = v121;
      v34 = &v117;
      if (v121 < v118)
      {
        v121 = v118;
        v33 = v118;
        v34 = &v117;
      }

      goto LABEL_59;
    }

    if ((v122 & 8) != 0)
    {
      v33 = v116;
      v34 = v115;
LABEL_59:
      v35 = *v34;
      v32 = v33 - *v34;
      if (v32 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v32 >= 0x17)
      {
        operator new();
      }

      v109 = v33 - *v34;
      if (v32)
      {
        memmove(&v108, v35, v32);
      }

      goto LABEL_65;
    }

    v32 = 0;
    v109 = 0;
LABEL_65:
    *(&v108 + v32) = 0;
    sub_7E854(&v108, 2u);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    v112 = v106;
    *(&v112 + *(v106 - 3)) = v105;
    if (v120 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v114);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_70:
    v36 = v27 / -10;
    v37 = v27 < 0 ? -5 : 5;
    v38 = (((-103 * (v37 + v30)) >> 15) & 1) + ((-103 * (v37 + v30)) >> 10);
    v39 = v36 + v5 + v38;
    v40 = sub_B4C668(v123, v36 + v5 + v38);
    if (*(a1 + 64) * fabs((10 * (v40 - v127))) >= fabs((10 * (v38 + v36))))
    {
      break;
    }

    v28 = v27 + v27;
    if (v28 >= 0.0)
    {
      if (v28 >= 4.50359963e15)
      {
        goto LABEL_50;
      }

      v41 = (v28 + v28) + 1;
    }

    else
    {
      if (v28 <= -4.50359963e15)
      {
        goto LABEL_50;
      }

      v41 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
    }

    v28 = (v41 >> 1);
LABEL_50:
    v27 = v28;
    if (*(a1 + 56) < v28)
    {
      goto LABEL_117;
    }
  }

  v42 = v40;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v112);
    sub_4A5C(&v112, "[", 1);
    v43 = std::ostream::operator<<();
    sub_4A5C(v43, "] Journey duration improved from ", 33);
    v44 = std::ostream::operator<<();
    sub_4A5C(v44, " to ", 4);
    v45 = std::ostream::operator<<();
    sub_4A5C(v45, " sec for time shift of ", 23);
    v46 = std::ostream::operator<<();
    sub_4A5C(v46, " sec", 4);
    if ((v122 & 0x10) != 0)
    {
      v48 = v121;
      if (v121 < v118)
      {
        v121 = v118;
        v48 = v118;
      }

      v49 = &v117;
    }

    else
    {
      if ((v122 & 8) == 0)
      {
        v47 = 0;
        v109 = 0;
        goto LABEL_97;
      }

      v49 = v115;
      v48 = v116;
    }

    v50 = *v49;
    v47 = v48 - *v49;
    if (v47 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v47 >= 0x17)
    {
      operator new();
    }

    v109 = v48 - *v49;
    if (v47)
    {
      memmove(&v108, v50, v47);
    }

    v5 = v107;
LABEL_97:
    *(&v108 + v47) = 0;
    sub_7E854(&v108, 2u);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    v112 = v106;
    *(&v112 + *(v106 - 3)) = v105;
    if (v120 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v114);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  v127 = v42;
  if (v39 != v5)
  {
    v51 = vcvtd_n_f64_s32(v27, 1uLL);
    if (v51 >= 0.0)
    {
      if (v51 < 4.50359963e15)
      {
        v52 = (v51 + v51) + 1;
LABEL_108:
        v51 = (v52 >> 1);
      }
    }

    else if (v51 > -4.50359963e15)
    {
      v52 = (v51 + v51) - 1 + (((v51 + v51) - 1) >> 63);
      goto LABEL_108;
    }

    v53 = v27 * 0.25;
    if (v53 >= 0.0)
    {
      if (v53 < 4.50359963e15)
      {
        v54 = (v53 + v53) + 1;
LABEL_114:
        v53 = (v54 >> 1);
      }
    }

    else if (v53 > -4.50359963e15)
    {
      v54 = (v53 + v53) - 1 + (((v53 + v53) - 1) >> 63);
      goto LABEL_114;
    }

    v55 = v53;
    if (*(a1 + 60) > v53)
    {
      LODWORD(v6) = v39;
      goto LABEL_117;
    }

    v77 = v51;
    v6 = v39;
    while (2)
    {
      *(a1 + 296) = *(a1 + 296) + 1.0;
      v79 = v55 + v77;
      if (sub_7E7E4(2u))
      {
        sub_19594F8(&v112);
        sub_4A5C(&v112, "[", 1);
        v80 = std::ostream::operator<<();
        sub_4A5C(v80, "] Examining time shift of ", 26);
        v81 = v79 % 10;
        v82 = std::ostream::operator<<();
        sub_4A5C(v82, " sec (binary refinement search)", 31);
        if ((v122 & 0x10) != 0)
        {
          v85 = v6;
          v86 = v121;
          v87 = &v117;
          if (v121 < v118)
          {
            v121 = v118;
            v86 = v118;
            v87 = &v117;
          }
        }

        else
        {
          if ((v122 & 8) == 0)
          {
            v83 = v77;
            v84 = 0;
            v109 = 0;
            goto LABEL_171;
          }

          v85 = v6;
          v86 = v116;
          v87 = v115;
        }

        v88 = *v87;
        v84 = v86 - *v87;
        if (v84 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        v83 = v77;
        if (v84 >= 0x17)
        {
          operator new();
        }

        v109 = v86 - *v87;
        if (v84)
        {
          memmove(&v108, v88, v84);
        }

        v6 = v85;
LABEL_171:
        *(&v108 + v84) = 0;
        sub_7E854(&v108, 2u);
        v77 = v83;
        if (v109 < 0)
        {
          operator delete(v108);
        }

        v112 = v106;
        *(&v112 + *(v106 - 3)) = v105;
        if (v120 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v114);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      else
      {
        v81 = v79 % 10;
      }

      if (v79 < 0)
      {
        v89 = -5;
      }

      else
      {
        v89 = 5;
      }

      v90 = (v89 + v81);
      v91 = v79 / -10 + v5;
      v92 = v91 + (((-103 * v90) >> 15) & 1) + ((-103 * v90) >> 10);
      v93 = sub_B4C668(v123, v91 + (((-103 * v90) >> 15) & 1) + ((-103 * v90) >> 10));
      if (*(a1 + 64) * fabs((10 * (v127 - v93))) >= fabs((10 * (v6 - v92))))
      {
        v77 = v79;
        v78 = vcvtd_n_f64_s32(v55, 1uLL);
        if (v78 >= 0.0)
        {
          goto LABEL_203;
        }
      }

      else
      {
        v94 = v93;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v112);
          sub_4A5C(&v112, "[", 1);
          v95 = std::ostream::operator<<();
          sub_4A5C(v95, "] Journey duration improved from ", 33);
          v96 = std::ostream::operator<<();
          sub_4A5C(v96, " to ", 4);
          v97 = std::ostream::operator<<();
          sub_4A5C(v97, " sec for time shift of ", 23);
          v98 = std::ostream::operator<<();
          sub_4A5C(v98, " sec", 4);
          if ((v122 & 0x10) != 0)
          {
            v102 = v121;
            v103 = &v117;
            if (v121 < v118)
            {
              v121 = v118;
              v102 = v118;
              v103 = &v117;
            }
          }

          else
          {
            if ((v122 & 8) == 0)
            {
              v99 = v77;
              v100 = 0;
              v109 = 0;
              goto LABEL_197;
            }

            v102 = v116;
            v103 = v115;
          }

          v104 = *v103;
          v100 = v102 - *v103;
          if (v100 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          v99 = v77;
          if (v100 >= 0x17)
          {
            operator new();
          }

          v109 = v102 - *v103;
          if (v100)
          {
            memmove(&v108, v104, v100);
          }

          v5 = v107;
LABEL_197:
          *(&v108 + v100) = 0;
          sub_7E854(&v108, 2u);
          v77 = v99;
          if (v109 < 0)
          {
            operator delete(v108);
          }

          v112 = v106;
          *(&v112 + *(v106 - 3)) = v105;
          if (v120 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v114);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v127 = v94;
        v6 = v92;
        v78 = vcvtd_n_f64_s32(v55, 1uLL);
        if (v78 >= 0.0)
        {
LABEL_203:
          if (v78 < 4.50359963e15)
          {
            v101 = (v78 + v78) + 1;
LABEL_154:
            v78 = (v101 >> 1);
          }

          goto LABEL_155;
        }
      }

      if (v78 > -4.50359963e15)
      {
        v101 = (v78 + v78) - 1 + (((v78 + v78) - 1) >> 63);
        goto LABEL_154;
      }

LABEL_155:
      v55 = v78;
      if (*(a1 + 60) > v78)
      {
        break;
      }

      continue;
    }
  }

LABEL_117:
  *(a1 + 232) = sub_7EA60(&__dst);
  v7 = v127;
  v8 = (a1 + 92);
LABEL_118:
  if (v7 != *v8)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v112);
      sub_4A5C(&v112, "[", 1);
      v56 = std::ostream::operator<<();
      v57 = sub_4A5C(v56, "] Shifting ", 11);
      v58 = sub_4A5C(v57, "arrival", 7);
      v59 = sub_4A5C(v58, " time from ", 11);
      v60 = sub_258D4(v59);
      v61 = sub_4A5C(v60, " to ", 4);
      sub_258D4(v61);
      if ((v122 & 0x10) != 0)
      {
        v63 = v121;
        if (v121 < v118)
        {
          v121 = v118;
          v63 = v118;
        }

        v64 = v117;
        v62 = v63 - v117;
        if (v63 - v117 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if ((v122 & 8) == 0)
        {
          v62 = 0;
          v111 = 0;
          goto LABEL_131;
        }

        v64 = v115[0];
        v62 = v116 - v115[0];
        if (v116 - v115[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_152:
          sub_3244();
        }
      }

      if (v62 >= 0x17)
      {
        operator new();
      }

      v111 = v62;
      if (v62)
      {
        memmove(&__dst, v64, v62);
      }

LABEL_131:
      *(&__dst + v62) = 0;
      sub_7E854(&__dst, 2u);
      if (v111 < 0)
      {
        operator delete(__dst);
      }

      if (v120 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v114);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v65 = v126;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_144;
  }

  v66 = v126 + 1;
  v67 = *(a1 + 24);
  if (v126 + 1 <= (v67 + 1))
  {
    v66 = v67 + 1;
  }

  if (v126 + 1 < (v67 + 1))
  {
    v68 = v66 - 1;
    v69 = 2 * v126 + 3;
    v70 = v126;
    while (1)
    {
      v71 = *(a1 + 664);
      LODWORD(v112) = (*(a1 + 656) << *v71) | v69;
      if (*(sub_B54B10((v71 + 2), &v112) + 4) != 0x7FFFFFFF)
      {
        break;
      }

      ++v70;
      v69 += 2;
      if (v68 == v70)
      {
        goto LABEL_144;
      }
    }
  }

  else
  {
LABEL_144:
    if (*(a1 + 24) >= (*(a1 + 148) + v65))
    {
      v70 = *(a1 + 148) + v65;
    }

    else
    {
      v70 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v70;
  v72 = *(a1 + 144);
  v73 = v72 / -10;
  v74 = v72 % 10;
  if (v72 < 0)
  {
    v75 = -5;
  }

  else
  {
    v75 = 5;
  }

  sub_B4C668(v123, v73 + v6 + (((-103 * (v75 + v74)) >> 15) & 1) + ((-103 * (v75 + v74)) >> 10));
  return v127;
}

void sub_B4C004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

void sub_B4C1A4(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 48) != 1)
  {
    goto LABEL_8;
  }

  v6 = a2 + 1;
  v7 = *(a1 + 24);
  if (a2 + 1 <= (v7 + 1))
  {
    v6 = v7 + 1;
  }

  if (a2 + 1 < (v7 + 1))
  {
    v8 = v6 - 1;
    v9 = 2 * a2 + 3;
    v10 = a2;
    while (1)
    {
      v11 = *(a1 + 664);
      v39 = (*(a1 + 656) << *v11) | v9;
      if (*(sub_B54B10((v11 + 2), &v39) + 4) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*(a1 + 24) >= (*(a1 + 148) + a2))
    {
      v10 = *(a1 + 148) + a2;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v12 = *(a1 + 104);
  v47[0] = *(a1 + 88);
  v47[1] = v12;
  v47[2] = *(a1 + 120);
  v48 = *(a1 + 136);
  DWORD1(v47[0]) = a3;
  *(a1 + 1440) = v10;
  sub_B4CA08(a1 + 1424, v47);
  sub_B4CCEC(a1 + 1424, a2, &v39);
  sub_CC92D8(a1 + 184, a1 + 1968, &__p);
  if (v38 < 0)
  {
    operator delete(__p);
  }

  v13 = *(a1 + 2112);
  *(a1 + 328) -= v13;
  v14 = *(a1 + 2136);
  if (v14 <= v13)
  {
    v14 = v13;
  }

  *(a1 + 2136) = v14;
  sub_AA9EA4(v40[0], v40[1], a1 + 160);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v26);
    sub_4A5C(&v26, "[", 1);
    v15 = std::ostream::operator<<();
    sub_4A5C(v15, "] McSPA scanned ", 16);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " stop patterns and obtained ", 28);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " journeys in ", 13);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, " ms using ", 10);
    v20 = sub_71478(v19, *(a1 + 2112));
    sub_4A5C(v20, " of memory", 10);
    if ((v36 & 0x10) != 0)
    {
      v22 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v22 = v32;
      }

      v23 = v31;
      v21 = v22 - v31;
      if (v22 - v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v21 = 0;
        v25 = 0;
LABEL_27:
        *(&v24 + v21) = 0;
        sub_7E854(&v24, 2u);
        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_32;
      }

      v23 = v29;
      v21 = v30 - v29;
      if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v25 = v21;
    if (v21)
    {
      memmove(&v24, v23, v21);
    }

    goto LABEL_27;
  }

LABEL_32:
  v26 = &v46;
  sub_A31F30(&v26);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40[3]);
  }

  if (v40[0])
  {
    sub_A95778(v40);
    operator delete(v40[0]);
  }
}

void sub_B4C5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A300F8(&a67);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A300F8(&a67);
  _Unwind_Resume(a1);
}

uint64_t sub_B4C668(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(v2 + 4) = a2;
  sub_B35FCC(v3 + 680, v2);
  sub_CC92D8(v3 + 184, v3 + 1272, &v32);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  v4 = *(v3 + 1416);
  *(v3 + 328) -= v4;
  v5 = *(v3 + 2128);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 2128) = v5;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "[", 1);
    v6 = std::ostream::operator<<();
    sub_4A5C(v6, "] Secondary SPA scanned ", 24);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " stop patterns and obtained ", 28);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, " journeys in ", 13);
    v9 = std::ostream::operator<<();
    v10 = sub_4A5C(v9, " ms using ", 10);
    v11 = sub_71478(v10, *(v3 + 1416));
    sub_4A5C(v11, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v13 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v13 = v27;
      }

      v14 = v26;
      v12 = v13 - v26;
      if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v12 = 0;
        v20 = 0;
LABEL_17:
        *(&__dst + v12) = 0;
        sub_7E854(&__dst, 2u);
        if (v20 < 0)
        {
          operator delete(__dst);
        }

        if (v29 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v14 = v24;
      v12 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_26:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__dst, v14, v12);
    }

    goto LABEL_17;
  }

LABEL_22:
  v15 = *(v3 + 1136);
  v16 = *(v3 + 896);
  v17 = (*(v3 + 904) - v16) >> 2;
  if (v17 <= v15)
  {
    sub_617214(v3 + 896, v15 - v17 + 1);
    v16 = *(v3 + 896);
  }

  return *(v16 + 4 * v15);
}

void sub_B4C9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
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

void sub_B4CA08(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v41);
  v4 = *(a2 + 16);
  *(a1 + 64) = *a2;
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 40);
  sub_B4F2D8(a1);
  v5 = *(a1 + 32);
  v42[0] = 0x1FFFFFFFELL;
  v6 = sub_B34C5C(v5, v42);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(v5 + 112);
    *(v5 + 112) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(v5 + 88, v42);
    v7 = *(v9 + 8);
  }

  *(a1 + 440) = v7;
  sub_B4F518(a1);
  v10 = 1.0;
  if (*(a1 + 124) >= 2u)
  {
    v11 = 1;
    while (1)
    {
      if (v11)
      {
        v22 = *(a1 + 344);
        v23 = *(a1 + 352);
        if (v22 != v23)
        {
          v24 = *(a1 + 320);
          v25 = *(a1 + 344);
          do
          {
            v26 = *v25++;
            *(v24 + ((v26 >> 3) & 0x1FFFFFF8)) &= ~(1 << v26);
          }

          while (v25 != v23);
        }

        *(a1 + 352) = v22;
        sub_B4F7D4(a1, v11);
        sub_B4FB34(a1, v11);
        v21 = *(a1 + 344);
        if (v21 == *(a1 + 352))
        {
LABEL_22:
          v10 = v11;
          break;
        }

        v20 = *(a1 + 296);
      }

      else
      {
        v12 = *(a1 + 296);
        v13 = *(a1 + 304);
        if (v12 != v13)
        {
          v14 = *(a1 + 272);
          v15 = *(a1 + 296);
          do
          {
            v16 = *v15++;
            *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
          }

          while (v15 != v13);
        }

        *(a1 + 304) = v12;
        sub_B51030(a1);
        sub_7E9A4(v42);
        v17 = *(a1 + 416);
        v18 = *(a1 + 424);
        while (v17 != v18)
        {
          v19 = *v17++;
          sub_B52B94(a1, v11, v19);
        }

        *(a1 + 576) = sub_7EA60(v42) + *(a1 + 576);
        v20 = *(a1 + 296);
        if (v20 == *(a1 + 304))
        {
          goto LABEL_22;
        }

        v21 = *(a1 + 344);
      }

      v39 = *(a1 + 232);
      v40 = *(a1 + 200);
      v37 = 8 * (*(a1 + 256) & 0x3FFFFFFFFFFFFFFLL);
      v38 = *(a1 + 216);
      v27 = *(a1 + 312);
      v35 = 8 * (*(a1 + 336) & 0x3FFFFFFFFFFFFFFLL);
      v36 = 8 * (*(a1 + 288) & 0x3FFFFFFFFFFFFFFLL);
      v28 = *(a1 + 384);
      v29 = *(a1 + 360);
      v33 = *(a1 + 416);
      v34 = *(a1 + 368);
      v30 = 8 * (*(a1 + 408) & 0x3FFFFFFFFFFFFFFLL);
      v31 = *(a1 + 432);
      v32 = v39 + 12 * v40 - v38 + v37 + v27 + v36 - v20 + v29 + v35 + v28 - (v21 + v34) + v30 + v31 - v33 + sub_C439D4((a1 + 448)) + 696;
      if (*(a1 + 688) > v32)
      {
        v32 = *(a1 + 688);
      }

      *(a1 + 688) = v32;
      if ((sub_B45194(a1) & 1) == 0 && ++v11 < *(a1 + 124))
      {
        continue;
      }

      goto LABEL_22;
    }
  }

  sub_B52388(a1);
  *(a1 + 616) = v10;
  *(a1 + 568) = sub_7EA60(v41);
}

__n128 sub_B4CCEC@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  HIBYTE(v354) = 0;
  LOBYTE(__p) = 0;
  v317 = (a3 + 32);
  v325 = (a3 + 8);
  sub_CC9264(a3 + 32, &__p);
  if (SHIBYTE(v354) < 0)
  {
    operator delete(__p);
  }

  v322 = a3;
  *(a3 + 192) = 0u;
  v7 = a3 + 192;
  *(v7 + 64) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 16) = 0u;
  *(v7 - 8) = *(a1 + 64);
  v8 = (2 * a2) | 1;
  v9 = *(a1 + 124);
  if (v8 > v9)
  {
    v10 = 2 * a2 + 1;
  }

  else
  {
    v10 = *(a1 + 124);
  }

  v318 = v10;
  v319 = (2 * a2) | 1;
  if (v8 < v9)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v320 = _Q0;
    v328 = a1;
    while (1)
    {
      *v340 = 0;
      v14 = *(a1 + 216);
      v15 = a1;
      v16 = *(sub_B45D70(a1 + 128, v340) + 4);
      *v340 = 0;
      v17 = *(a1 + 216);
      v18 = sub_B45D70(v15 + 128, v340);
      sub_B459B8(v15 + 128, 0, (v14 + (v16 << 6)), (v17 + (*(v18 + 8) << 6)));
      sub_B52A44((v15 + 128), v319 + *(v15 + 120) + *(v15 + 120) * *(v15 + 440) + 2, 0);
      *v340 = 0;
      v19 = *(v15 + 216);
      v20 = *(sub_B45D70(v15 + 128, v340) + 4);
      *v340 = 0;
      v21 = *(v15 + 216);
      v323 = (v19 + (v20 << 6));
      v321 = (v21 + (*(sub_B45D70(v15 + 128, v340) + 8) << 6));
      a1 = v15;
      if (v323 != v321)
      {
        break;
      }

LABEL_8:
      if (++v319 == v318)
      {
        goto LABEL_384;
      }
    }

    while (1)
    {
      LOWORD(__p) = 0;
      BYTE2(__p) = 0;
      *(&__p + 4) = 0;
      HIDWORD(__p) = 0;
      v354 = -NAN;
      v355 = 0x7FFFFFFF;
      v356 = 0;
      v357 = 0x8000000080000000;
      v358 = 0;
      v359 = 0x8000000080000000;
      v360 = 0x7FFFFFFF;
      v361 = 0;
      v362 = 0x8000000080000000;
      v363 = 0;
      v364 = 0x8000000080000000;
      v365 = 0;
      v366 = 0xFFFFFFFF00000000;
      v367 = -1;
      v368 = 0;
      v370 = 0;
      v371 = 0;
      v372 = 0;
      v369 = 0x7FFFFFFF;
      v373 = 100;
      v374 = -1;
      v375 = v320;
      v376 = v320;
      v377 = v320;
      v378 = 0u;
      v379 = 0u;
      v380 = 0u;
      v381 = 0u;
      v382 = 0u;
      v383 = 0u;
      v22 = *(a1 + 24);
      if (sub_68312C(v22 + 3896) && *(v22 + 3944))
      {
        v23 = 1;
      }

      else
      {
        v24 = *(a1 + 24);
        v23 = sub_4C2B90(v24 + 3896) && *(v24 + 3960) != 0;
      }

      BYTE1(__p) = v23;
      v25 = *(a1 + 24);
      v26 = sub_4C2B90(v25 + 3896) ? 2 * (*(v25 + 3960) != 0) : 0;
      DWORD2(__p) = v26;
      DWORD1(__p) = v26;
      if (*v323 != -1)
      {
        break;
      }

LABEL_347:
      sub_A83920(&__p);
      v289 = *(v322 + 16);
      v288 = *(v322 + 24);
      if (v289 >= v288)
      {
        v291 = 0x14C1BACF914C1BADLL * ((v289 - *v6) >> 3);
        v292 = v291 + 1;
        if ((v291 + 1) > 0xDD67C8A60DD67CLL)
        {
          sub_1794();
        }

        v293 = 0x14C1BACF914C1BADLL * ((v288 - *v6) >> 3);
        if (2 * v293 > v292)
        {
          v292 = 2 * v293;
        }

        if (v293 >= 0x6EB3E45306EB3ELL)
        {
          v294 = 0xDD67C8A60DD67CLL;
        }

        else
        {
          v294 = v292;
        }

        *v341 = v6;
        if (v294)
        {
          if (v294 <= 0xDD67C8A60DD67CLL)
          {
            operator new();
          }

          sub_1808();
        }

        *v340 = 0;
        *&v340[8] = 296 * v291;
        *&v340[16] = (296 * v291);
        sub_A32C84(296 * v291, &__p);
        *&v340[16] += 296;
        v290 = *&v340[16];
        v295 = *(v322 + 8);
        v296 = *(v322 + 16);
        v297 = *&v340[8] + v295 - v296;
        sub_A7CAB8(v6, v295, v296, v297);
        v298 = *(v322 + 8);
        *(v322 + 8) = v297;
        *(v322 + 16) = v290;
        *(v322 + 24) = *&v340[24];
        if (v298)
        {
          operator delete(v298);
        }
      }

      else
      {
        sub_A32C84(*(v322 + 16), &__p);
        v290 = v289 + 296;
      }

      *(v322 + 16) = v290;
      if (*(&v382 + 1))
      {
        *&v383 = *(&v382 + 1);
        operator delete(*(&v382 + 1));
      }

      if (v381)
      {
        *(&v381 + 1) = v381;
        operator delete(v381);
      }

      if (*(&v379 + 1))
      {
        *&v380 = *(&v379 + 1);
        operator delete(*(&v379 + 1));
      }

      v299 = v378;
      if (v378)
      {
        v300 = *(&v378 + 1);
        v301 = v378;
        if (*(&v378 + 1) != v378)
        {
          do
          {
            v303 = *(v300 - 40);
            if (v303)
            {
              *(v300 - 32) = v303;
              operator delete(v303);
            }

            v304 = (v300 - 72);
            v305 = *(v300 - 72);
            if (v305)
            {
              v306 = *(v300 - 64);
              v302 = *(v300 - 72);
              if (v306 != v305)
              {
                do
                {
                  v307 = v306 - 168;
                  v308 = *(v306 - 8);
                  if (v308 != -1)
                  {
                    (off_2670F08[v308])(v340, v306 - 168);
                  }

                  *(v306 - 8) = -1;
                  v306 -= 168;
                }

                while (v307 != v305);
                v302 = *v304;
              }

              *(v300 - 64) = v305;
              operator delete(v302);
            }

            v300 -= 72;
          }

          while (v304 != v299);
          v301 = v378;
        }

        *(&v378 + 1) = v299;
        operator delete(v301);
      }

      if (SHIBYTE(v372) < 0)
      {
        operator delete(v370);
      }

      v323 += 16;
      a1 = v328;
      if (v323 == v321)
      {
        goto LABEL_8;
      }
    }

    v27 = v323;
    v326 = v319;
    v327 = *(v328 + 440);
LABEL_26:
    v347 = 0;
    v346 = 0u;
    v348 = 1;
    v350 = 0;
    v351 = 0;
    v349 = 0;
    v352[0] = 1;
    *&v352[4] = 0x8000000080000000;
    *&v352[12] = 0;
    v352[14] = 0;
    *v340 = 0;
    *&v340[16] = 0u;
    *v341 = 0xFFFFFFFFLL;
    *&v341[16] = 0u;
    *v345 = 1;
    *&v340[4] = 0x8000000080000000;
    *&v340[12] = 0x7FFFFFFF;
    *&v340[20] = 0x8000000080000000;
    *&v341[8] = xmmword_2266560;
    *&v341[24] = -1;
    *__dst = 0u;
    memset(v343, 0, sizeof(v343));
    v344[0] = 0x7FFFFFFFuLL;
    v344[1] = 0uLL;
    *&v345[4] = xmmword_22A7500;
    if (v27[4] == -1)
    {
      goto LABEL_224;
    }

    v329 = xmmword_2297BF0;
    LOWORD(v330) = 0;
    *(&v330 + 4) = 0x8000000080000000;
    WORD6(v330) = 0;
    *v331 = xmmword_22A7450;
    *&v331[16] = -COERCE_DOUBLE(0x8000000080000000);
    v332 = 0uLL;
    v333 = 0uLL;
    v334 = 0uLL;
    *&v331[24] = -1;
    v335 = 0x7FFFFFFF;
    v337 = 0;
    v338 = 0;
    v336 = 0;
    LOBYTE(v339) = 1;
    *(&v339 + 4) = 0x8000000080000000;
    HIDWORD(v339) = 0;
    v348 = 0;
    v29 = *sub_A9C5E0((*(v328 + 40) + 88), v27[4]);
    *v331 = v29;
    v30 = *(v27 + 1);
    *&v331[16] = v27[3];
    *&v331[8] = v30;
    *&v331[24] = *v27;
    v31 = *&v331[24];
    v32 = *(v328 + 24);
    v384 = *sub_A9C5E0((*(v328 + 32) + 88), v327);
    sub_A79708(&v386, v32, v29, v31, 0, 0);
    v393 = (v392 + 12 * *&v331[8]);
    if (v396[0] == 1)
    {
      *&v396[4] = *&v331[12];
    }

    if (v391)
    {
      v33 = *(v391 + 4 * ((v389 - v388) >> 4));
    }

    else
    {
      v33 = 0;
    }

    sub_AB3DEC(&v386, &v384, v33);
    _CF = v389 < v390 && v389 >= v388;
    v35 = (v389 - v388) >> 4;
    if (!_CF)
    {
      LODWORD(v35) = -1;
    }

    *&v331[20] = v35;
    v36 = *(v328 + 32);
    v37 = *&v331[24];
    v38 = sub_A57920((*(v328 + 24) + 4136), *v331);
    v39 = (v38 - *v38);
    if (*v39 >= 9u && (v40 = v39[4]) != 0)
    {
      v41 = (v38 + v40 + *(v38 + v40));
    }

    else
    {
      v41 = 0;
    }

    v42 = sub_A571D4(v41, v37);
    v43 = 0;
    v44 = __ROR8__(*v42, 32);
    v45 = *(v36 + 72) - 1;
    v46 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v44 ^ (v44 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v44 ^ (v44 >> 33))) >> 33));
    v47 = v46 ^ (v46 >> 33);
    v48 = *(v36 + 48);
    v49 = v48 + 11;
    v50 = -1;
    for (i = v47; ; i = v43 + v52)
    {
      v52 = i & v45;
      v53 = (i & v45) / 0x30;
      v54 = (i & v45) % 0x30;
      v55 = (v48 + 16 * v53);
      if (((*(v55 + (v54 >> 3) + 10) >> (v54 & 7)) & 1) == 0)
      {
        if (v50 == -1)
        {
          v91 = v52;
        }

        else
        {
          v91 = v50;
        }

        goto LABEL_83;
      }

      v56 = *v55;
      if (!*(v36 + 40))
      {
        goto LABEL_62;
      }

      v57 = v55 + 10;
      if (v54 < 9)
      {
        v59 = 0;
        LOBYTE(v60) = v54;
        goto LABEL_58;
      }

      v58 = (48 * v53 - v52 + 7);
      if (v58 <= 0xFFF7)
      {
        LOWORD(v58) = -9;
      }

      if ((v58 + v52 - 48 * v53) >= 8u)
      {
        v62 = 0;
        v63 = 0;
        v64 = ((v58 + v52 - 48 * v53) >> 3) + 1;
        v60 = v54 - 8 * ((((v58 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE);
        v61 = &v57[(((v58 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE];
        v65 = (v49 + 16 * v53);
        v66 = v64 & 0x3FFE;
        do
        {
          v67 = *(v65 - 1);
          v68 = *v65;
          v65 += 2;
          v62 += byte_22A7D46[v67];
          v63 += byte_22A7D46[v68];
          v66 -= 2;
        }

        while (v66);
        v59 = v63 + v62;
        if ((v64 & 0x3FFE) == v64)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v59 = 0;
        v60 = v54;
        v61 = v55 + 10;
      }

      do
      {
        v69 = *v61++;
        v59 += byte_22A7D46[v69];
        v60 -= 8;
      }

      while (v60 > 8u);
LABEL_57:
      v57 += ((v54 - 9) >> 3) + 1;
LABEL_58:
      v70 = (v56 + 12 * (v59 + byte_22A7D46[~(-1 << v60) & *v57]));
      if (*(v36 + 36) == v70[1] && *(v36 + 32) == *v70)
      {
        if (v50 == -1)
        {
          v50 = v52;
        }

        goto LABEL_44;
      }

LABEL_62:
      v72 = v55 + 10;
      if (v54 < 9)
      {
        v74 = 0;
        LOBYTE(v75) = v54;
        goto LABEL_73;
      }

      v73 = (48 * v53 - v52 + 7);
      if (v73 <= 0xFFF7)
      {
        LOWORD(v73) = -9;
      }

      if ((v73 + v52 - 48 * v53) >= 8u)
      {
        v77 = 0;
        v78 = 0;
        v79 = ((v73 + v52 - 48 * v53) >> 3) + 1;
        v75 = v54 - 8 * ((((v73 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE);
        v76 = &v72[(((v73 + v52 - 48 * v53) >> 3) + 1) & 0x3FFE];
        v80 = (v49 + 16 * v53);
        v81 = v79 & 0x3FFE;
        do
        {
          v82 = *(v80 - 1);
          v83 = *v80;
          v80 += 2;
          v77 += byte_22A7D46[v82];
          v78 += byte_22A7D46[v83];
          v81 -= 2;
        }

        while (v81);
        v74 = v78 + v77;
        if ((v79 & 0x3FFE) == v79)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v74 = 0;
        v75 = v54;
        v76 = v55 + 10;
      }

      do
      {
        v84 = *v76++;
        v74 += byte_22A7D46[v84];
        v75 -= 8;
      }

      while (v75 > 8u);
LABEL_72:
      v72 += ((v54 - 9) >> 3) + 1;
LABEL_73:
      if (v44 == *(v56 + 12 * (v74 + byte_22A7D46[~(-1 << v75) & *v72])))
      {
        if (v52 != -1)
        {
          v85 = v55 + 10;
          if (v54 < 9)
          {
            v88 = 0;
          }

          else
          {
            v86 = (48 * v53 - v52 + 7);
            if (v86 <= 0xFFF7)
            {
              LOWORD(v86) = -9;
            }

            v87 = v86 + v52 - 48 * v53;
            if (v87 < 8u)
            {
              v88 = 0;
              v89 = v54;
              v90 = v55 + 10;
              goto LABEL_307;
            }

            v264 = 0;
            v265 = 0;
            v266 = (v87 >> 3) + 1;
            v89 = v54 - 8 * (((v87 >> 3) + 1) & 0x3FFE);
            v90 = &v85[v266 & 0x3FFE];
            v267 = v55 + 11;
            v268 = v266 & 0x3FFE;
            do
            {
              v269 = *(v267 - 1);
              v270 = *v267;
              v267 += 2;
              v264 += byte_22A7D46[v269];
              v265 += byte_22A7D46[v270];
              v268 -= 2;
            }

            while (v268);
            v88 = v265 + v264;
            if ((v266 & 0x3FFE) != v266)
            {
              do
              {
LABEL_307:
                v271 = *v90++;
                v88 += byte_22A7D46[v271];
                v89 -= 8;
              }

              while (v89 > 8u);
            }

            v85 += ((v54 - 9) >> 3) + 1;
            LOBYTE(v54) = v89;
          }

          v272 = *(v36 + 56);
          v138 = (v56 + 12 * (v88 + byte_22A7D46[~(-1 << v54) & *v85]));
          if ((*v55 + 12 * *(v55 + 4)) == v138 && v55 + 2 != v272)
          {
            v274 = v55 + 4;
            do
            {
              if (*(v274 - 4))
              {
                v275 = 1;
              }

              else
              {
                v275 = v274 == v272;
              }

              v274 += 2;
            }

            while (!v275);
            v138 = *(v274 - 4);
          }

          goto LABEL_129;
        }

        v91 = -1;
LABEL_83:
        if (!sub_B35190(v36, 1))
        {
          v384 = v44;
          v385 = -1;
          sub_B356C0(v36, &v384, v91, &v386);
LABEL_128:
          v138 = v389;
          goto LABEL_129;
        }

        v92 = 0;
        v384 = v44;
        v385 = -1;
        v93 = *(v36 + 72) - 1;
        v94 = *(v36 + 48);
        v95 = v94 + 11;
        v96 = -1;
        while (2)
        {
          v97 = v47 & v93;
          v98 = (v47 & v93) / 0x30;
          v99 = (v47 & v93) % 0x30;
          v100 = v94 + 16 * v98;
          if (((*(v100 + (v99 >> 3) + 10) >> (v99 & 7)) & 1) == 0)
          {
            if (v96 == -1)
            {
              v137 = v47 & v93;
            }

            else
            {
              v137 = v96;
            }

            goto LABEL_127;
          }

          v101 = *(v36 + 40);
          v102 = *v100;
          if (v101)
          {
            v103 = (v100 + 10);
            if (v99 < 9)
            {
              v105 = 0;
              v106 = (v47 & v93) % 0x30;
            }

            else
            {
              v104 = (48 * v98 - v97 + 7);
              if (v104 <= 0xFFF7)
              {
                LOWORD(v104) = -9;
              }

              if ((v104 + v97 - 48 * v98) < 8u)
              {
                v105 = 0;
                v106 = (v47 & v93) % 0x30;
                v107 = (v100 + 10);
                goto LABEL_99;
              }

              v108 = 0;
              v109 = 0;
              v110 = ((v104 + v97 - 48 * v98) >> 3) + 1;
              LOWORD(v106) = v99 - 8 * ((((v104 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE);
              v107 = &v103[(((v104 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE];
              v111 = (v95 + 16 * v98);
              v112 = v110 & 0x3FFE;
              do
              {
                v113 = *(v111 - 1);
                v114 = *v111;
                v111 += 2;
                v108 += byte_22A7D46[v113];
                v109 += byte_22A7D46[v114];
                v112 -= 2;
              }

              while (v112);
              v105 = v109 + v108;
              v6 = v325;
              if ((v110 & 0x3FFE) != v110)
              {
                do
                {
LABEL_99:
                  v115 = *v107++;
                  v105 += byte_22A7D46[v115];
                  LOWORD(v106) = v106 - 8;
                }

                while (v106 > 8u);
              }

              v103 += ((v99 - 9) >> 3) + 1;
            }

            v116 = v102 + 3 * (v105 + byte_22A7D46[~(-1 << v106) & *v103]);
            if (*(v36 + 36) == v116[1] && *(v36 + 32) == *v116)
            {
              if (v96 == -1)
              {
                v96 = v47 & v93;
              }

LABEL_87:
              v47 = ++v92 + v97;
              continue;
            }
          }

          break;
        }

        v118 = (v100 + 10);
        if (v99 < 9)
        {
          v120 = 0;
          v121 = (v47 & v93) % 0x30;
        }

        else
        {
          v119 = (48 * v98 - v97 + 7);
          if (v119 <= 0xFFF7)
          {
            LOWORD(v119) = -9;
          }

          if ((v119 + v97 - 48 * v98) < 8u)
          {
            v120 = 0;
            v121 = (v47 & v93) % 0x30;
            v122 = (v100 + 10);
            goto LABEL_114;
          }

          v123 = 0;
          v124 = 0;
          v125 = ((v119 + v97 - 48 * v98) >> 3) + 1;
          LOWORD(v121) = v99 - 8 * ((((v119 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE);
          v122 = &v118[(((v119 + v97 - 48 * v98) >> 3) + 1) & 0x3FFE];
          v126 = (v95 + 16 * v98);
          v127 = v125 & 0x3FFE;
          do
          {
            v128 = *(v126 - 1);
            v129 = *v126;
            v126 += 2;
            v123 += byte_22A7D46[v128];
            v124 += byte_22A7D46[v129];
            v127 -= 2;
          }

          while (v127);
          v120 = v124 + v123;
          v6 = v325;
          if ((v125 & 0x3FFE) != v125)
          {
            do
            {
LABEL_114:
              v130 = *v122++;
              v120 += byte_22A7D46[v130];
              LOWORD(v121) = v121 - 8;
            }

            while (v121 > 8u);
          }

          v118 += ((v99 - 9) >> 3) + 1;
        }

        if (v44 != *(v102 + 12 * (v120 + byte_22A7D46[~(-1 << v121) & *v118])))
        {
          goto LABEL_87;
        }

        if (v97 == -1)
        {
          v137 = -1;
LABEL_127:
          sub_B356C0(v36, &v384, v137, &v386);
          goto LABEL_128;
        }

        v131 = (v100 + 10);
        if (v99 < 9)
        {
          v134 = 0;
        }

        else
        {
          v132 = (48 * v98 - v97 + 7);
          if (v132 <= 0xFFF7)
          {
            LOWORD(v132) = -9;
          }

          v133 = v132 + v97 - 48 * v98;
          if (v133 < 8u)
          {
            v134 = 0;
            v135 = (v47 & v93) % 0x30;
            v136 = (v100 + 10);
            goto LABEL_325;
          }

          v276 = 0;
          v277 = 0;
          v278 = (v133 >> 3) + 1;
          v135 = v99 - 8 * (((v133 >> 3) + 1) & 0x3FFE);
          v136 = &v131[v278 & 0x3FFE];
          v279 = (v100 + 11);
          v280 = v278 & 0x3FFE;
          do
          {
            v281 = *(v279 - 1);
            v282 = *v279;
            v279 += 2;
            v276 += byte_22A7D46[v281];
            v277 += byte_22A7D46[v282];
            v280 -= 2;
          }

          while (v280);
          v134 = v277 + v276;
          if ((v278 & 0x3FFE) != v278)
          {
            do
            {
LABEL_325:
              v283 = *v136++;
              v134 += byte_22A7D46[v283];
              v135 -= 8;
            }

            while (v135 > 8u);
          }

          v131 += ((v99 - 9) >> 3) + 1;
          LOBYTE(v99) = v135;
        }

        v284 = *(v36 + 56);
        v138 = (v102 + 12 * (v134 + byte_22A7D46[~(-1 << v99) & *v131]));
        if ((*v100 + 12 * *(v100 + 8)) == v138)
        {
          v100 += 16;
          if (v100 != v284)
          {
            do
            {
              v285 = v100;
              if (*(v100 + 8))
              {
                break;
              }

              v100 += 16;
            }

            while (v285 + 2 != v284);
            v138 = *v285;
          }
        }

        if (v100 != v284 && v101)
        {
          do
          {
            if (*(v36 + 36) != *(v138 + 1) || *(v36 + 32) != *v138)
            {
              break;
            }

            v138 = (v138 + 12);
            if (v138 == (*v100 + 12 * *(v100 + 8)))
            {
              v100 += 16;
              if (v100 != v284)
              {
                do
                {
                  v287 = v100;
                  if (*(v100 + 8))
                  {
                    break;
                  }

                  v100 += 16;
                }

                while (v287 + 2 != v284);
                v138 = *v287;
              }
            }
          }

          while (v100 != v284);
        }

LABEL_129:
        v327 = *(v138 + 2);
        if (v327 == -1)
        {
          v139 = *(v36 + 112);
          *(v36 + 112) = v139 + 1;
          *(v138 + 2) = v139;
          v141 = *(v36 + 96);
          v140 = *(v36 + 104);
          if (v141 >= v140)
          {
            v143 = *(v36 + 88);
            v144 = v141 - v143;
            v145 = (v141 - v143) >> 3;
            v146 = v145 + 1;
            if ((v145 + 1) >> 61)
            {
              sub_1794();
            }

            v147 = v140 - v143;
            if (v147 >> 2 > v146)
            {
              v146 = v147 >> 2;
            }

            if (v147 >= 0x7FFFFFFFFFFFFFF8)
            {
              v148 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v148 = v146;
            }

            if (v148)
            {
              if (!(v148 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v149 = v145;
            v150 = (8 * v145);
            v151 = &v150[-v149];
            *v150 = v44;
            v142 = v150 + 1;
            memcpy(v151, v143, v144);
            *(v36 + 88) = v151;
            *(v36 + 96) = v142;
            *(v36 + 104) = 0;
            if (v143)
            {
              operator delete(v143);
            }

            v6 = v325;
          }

          else
          {
            *v141 = v44;
            v142 = v141 + 1;
          }

          *(v36 + 96) = v142;
          v327 = *(v138 + 2);
        }

        v152 = *&v331[20];
        v153 = sub_A57920((*(v328 + 24) + 4136), *v331);
        v154 = (v153 - *v153);
        if (*v154 >= 9u && (v155 = v154[4]) != 0)
        {
          v156 = (v153 + v155 + *(v153 + v155));
        }

        else
        {
          v156 = 0;
        }

        DWORD1(v329) = 10 * *(sub_A571D4(v156, v152) + 8);
        v157 = *(v328 + 24);
        v158 = *v331;
        v159 = *&v331[20];
        v160 = *&v331[8];
        v161 = sub_A5706C((v157 + 4136), *v331);
        v162 = v161;
        v163 = &v161[-*v161];
        if (*v163 < 5u)
        {
          v164 = 0;
        }

        else
        {
          v164 = *(v163 + 2);
          if (v164)
          {
            v164 += &v161[*&v161[v164]];
          }
        }

        v165 = (v164 + 4 * v158 + 4 + *(v164 + 4 * v158 + 4));
        v166 = (v165 - *v165);
        if (*v166 >= 9u && (v167 = v166[4]) != 0)
        {
          v168 = (v165 + v167 + *(v165 + v167));
        }

        else
        {
          v168 = 0;
        }

        v169 = sub_A571D4(v168, v159);
        v170 = (v162 - *v162);
        if (*v170 < 0xBu)
        {
          v171 = 0;
          v172 = (v165 - *v165);
          if (*v172 >= 0x11u)
          {
            goto LABEL_163;
          }

LABEL_166:
          LODWORD(v173) = 0;
          goto LABEL_167;
        }

        v171 = v170[5];
        if (v171)
        {
          v171 = (v171 + v162 + *(v171 + v162));
        }

        v172 = (v165 - *v165);
        if (*v172 < 0x11u)
        {
          goto LABEL_166;
        }

LABEL_163:
        v173 = v172[8];
        if (v172[8])
        {
          LODWORD(v173) = *(v165 + v173);
        }

LABEL_167:
        v174 = sub_A57320(v171, v173 + *(v165 + v172[2] + *(v165 + v172[2])) * v160 + *(v169 + 14));
        if (v174)
        {
          v175 = __ROR8__(*v174, 32);
          v176 = *(v174 + 8);
        }

        else
        {
          v176 = 0;
          v175 = 0xFFFFFFFFLL;
        }

        *&v386 = v175;
        DWORD2(v386) = v176;
        v177 = sub_A57920((v157 + 4136), v158);
        v178 = (v177 - *v177);
        if (*v178 >= 9u && (v179 = v178[4]) != 0)
        {
          v180 = (v177 + v179 + *(v177 + v179));
        }

        else
        {
          v180 = 0;
        }

        v181 = *(sub_A571D4(v180, v159) + 12);
        if (*&v331[12] == -1)
        {
          v182 = 0x7FFFFFFF;
        }

        else
        {
          v182 = *&v331[16];
        }

        *(&v329 + 1) = sub_A56700((v157 + 4184), &v386, v181, v182);
        LOWORD(v330) = v183;
        v184 = *(v328 + 24);
        v185 = *v331;
        v186 = *&v331[24];
        v187 = *&v331[8];
        v188 = sub_A5706C((v184 + 4136), *v331);
        v189 = v188;
        v190 = &v188[-*v188];
        if (*v190 < 5u)
        {
          v191 = 0;
        }

        else
        {
          v191 = *(v190 + 2);
          if (v191)
          {
            v191 += &v188[*&v188[v191]];
          }
        }

        v192 = (v191 + 4 * v185 + 4 + *(v191 + 4 * v185 + 4));
        v193 = (v192 - *v192);
        if (*v193 >= 9u && (v194 = v193[4]) != 0)
        {
          v195 = (v192 + v194 + *(v192 + v194));
        }

        else
        {
          v195 = 0;
        }

        v196 = sub_A571D4(v195, v186);
        v197 = (v189 - *v189);
        if (*v197 < 0xBu)
        {
          v198 = 0;
          v199 = (v192 - *v192);
          if (*v199 >= 0x11u)
          {
            goto LABEL_189;
          }

LABEL_192:
          LODWORD(v200) = 0;
          goto LABEL_193;
        }

        v198 = v197[5];
        if (v198)
        {
          v198 = (v198 + v189 + *(v198 + v189));
        }

        v199 = (v192 - *v192);
        if (*v199 < 0x11u)
        {
          goto LABEL_192;
        }

LABEL_189:
        v200 = v199[8];
        if (v199[8])
        {
          LODWORD(v200) = *(v192 + v200);
        }

LABEL_193:
        v201 = sub_A57320(v198, v200 + *(v192 + v199[2] + *(v192 + v199[2])) * v187 + *(v196 + 14));
        if (v201)
        {
          v202 = __ROR8__(*v201, 32);
          v203 = *(v201 + 8);
        }

        else
        {
          v203 = 0;
          v202 = 0xFFFFFFFFLL;
        }

        *&v386 = v202;
        DWORD2(v386) = v203;
        v204 = sub_A57920((v184 + 4136), v185);
        v205 = (v204 - *v204);
        if (*v205 >= 9u && (v206 = v205[4]) != 0)
        {
          v207 = (v204 + v206 + *(v204 + v206));
        }

        else
        {
          v207 = 0;
        }

        v208 = *(sub_A571D4(v207, v186) + 12);
        if (*&v331[12] == -1)
        {
          v209 = 0x7FFFFFFF;
        }

        else
        {
          v209 = *&v331[16];
        }

        *(&v330 + 4) = sub_A56A5C((v184 + 4184), &v386, v208, v209);
        WORD6(v330) = v210;
        if (*&v345[16])
        {
          sub_A332F8(&v386, &v329);
          sub_A34B68(v340, &v386);
          if (v397)
          {
            v398 = v397;
            operator delete(v397);
          }

          if (v395)
          {
            *v396 = v395;
            operator delete(v395);
          }

          if (v393)
          {
            v394 = v393;
            operator delete(v393);
          }

          v211 = v336;
          if (v336)
          {
            goto LABEL_211;
          }
        }

        else
        {
          *v340 = v329;
          *&v340[16] = v330;
          *v341 = *v331;
          *&v341[12] = *&v331[12];
          v224 = v332;
          v225 = *(&v332 + 1) - v332;
          v226 = *&v343[0];
          v227 = __dst[0];
          if (*&v343[0] - __dst[0] < *(&v332 + 1) - v332)
          {
            if (__dst[0])
            {
              __dst[1] = __dst[0];
              operator delete(__dst[0]);
              v226 = 0;
              __dst[0] = 0;
              __dst[1] = 0;
              *&v343[0] = 0;
            }

            v228 = 0xEEEEEEEEEEEEEEEFLL * (v225 >> 2);
            if (v228 <= 0x444444444444444)
            {
              v229 = 0xEEEEEEEEEEEEEEEFLL * (v226 >> 2);
              if (2 * v229 > v228)
              {
                v228 = 2 * v229;
              }

              if (v229 >= 0x222222222222222)
              {
                v230 = 0x444444444444444;
              }

              else
              {
                v230 = v228;
              }

              if (v230 <= 0x444444444444444)
              {
                operator new();
              }
            }

            sub_1794();
          }

          v259 = __dst[1];
          v260 = __dst[1] - __dst[0];
          if ((__dst[1] - __dst[0]) >= v225)
          {
            if (*(&v332 + 1) != v332)
            {
              v263 = __dst[0];
              memmove(__dst[0], v332, v225 - 3);
              v227 = v263;
            }

            v262 = &v227[v225];
          }

          else
          {
            if (__dst[1] != __dst[0])
            {
              memmove(__dst[0], v332, v260 - 3);
              v259 = __dst[1];
            }

            v261 = *(&v224 + 1) - (v224 + v260);
            if (v261)
            {
              memmove(v259, (v224 + v260), v261 - 3);
            }

            v262 = &v259[v261];
          }

          __dst[1] = v262;
          sub_A349D4(v343 + 1, *(&v333 + 1), v334, 0xEEEEEEEEEEEEEEEFLL * ((v334 - *(&v333 + 1)) >> 2));
          LODWORD(v344[0]) = v335;
          sub_956400(v344 + 1, v336, v337, 0xCCCCCCCCCCCCCCCDLL * ((v337 - v336) >> 3));
          *v345 = v339;
          v211 = v336;
          if (v336)
          {
LABEL_211:
            v337 = v211;
            operator delete(v211);
          }
        }

        if (*(&v333 + 1))
        {
          *&v334 = *(&v333 + 1);
          operator delete(*(&v333 + 1));
        }

        if (v332)
        {
          *(&v332 + 1) = v332;
          operator delete(v332);
        }

        if (v27[4] != -1)
        {
          v212 = *(&v346 + 1);
          if (*(&v346 + 1) < v347)
          {
            goto LABEL_218;
          }

LABEL_245:
          v214 = sub_AA9AE0(&v346, v340);
          *(&v346 + 1) = v214;
          v215 = *(&v378 + 1);
          v216 = v379;
          if (*(&v378 + 1) >= v379)
          {
            goto LABEL_246;
          }

LABEL_221:
          *v215 = 0;
          *(v215 + 8) = 0;
          *(v215 + 16) = 0;
          if (*(&v346 + 1) != v346)
          {
            if (0xCF3CF3CF3CF3CF3DLL * ((*(&v346 + 1) - v346) >> 3) <= 0x186186186186186)
            {
              operator new();
            }

            sub_1794();
          }

          v221 = v348;
          *(v215 + 32) = 0;
          *(v215 + 24) = v221;
          *(v215 + 40) = 0;
          *(v215 + 48) = 0;
          if (v350 != v349)
          {
            if (0xCCCCCCCCCCCCCCCDLL * ((v350 - v349) >> 3) <= 0x666666666666666)
            {
              operator new();
            }

            sub_1794();
          }

          v222 = *v352;
          *(v215 + 63) = *&v352[7];
          *(v215 + 56) = v222;
          v223 = v215 + 72;
          goto LABEL_278;
        }

LABEL_224:
        v348 = 1;
        v217 = v27[7];
        v218 = v27[3];
        v219 = *sub_A9C5E0((*(v328 + 32) + 88), v327);
        v220 = *sub_A9C5E0((*(v328 + 32) + 88), *v27);
        if (*&v345[16] == -1)
        {
          goto LABEL_243;
        }

        if (*&v345[16] != 1)
        {
          (off_2670F08[*&v345[16]])(&v386, v340);
LABEL_243:
          *v340 = 0;
          *&v340[4] = v217;
          *&v340[12] = v219;
          *&v340[20] = v220;
          *&v340[8] = v218;
          *&v345[16] = 1;
          goto LABEL_244;
        }

        *v340 = 0;
        *&v340[4] = v217;
        *&v340[8] = v218;
        *&v340[12] = v219;
        *&v340[20] = v220;
LABEL_244:
        v327 = *v27;
        v212 = *(&v346 + 1);
        if (*(&v346 + 1) >= v347)
        {
          goto LABEL_245;
        }

LABEL_218:
        *v212 = 0;
        *(v212 + 160) = -1;
        v213 = *&v345[16];
        if (*&v345[16] != -1)
        {
          *&v386 = v212;
          (off_2670F18[*&v345[16]])(&v386, v340);
          *(v212 + 160) = v213;
        }

        v214 = v212 + 168;
        *(&v346 + 1) = v212 + 168;
        v215 = *(&v378 + 1);
        v216 = v379;
        if (*(&v378 + 1) < v379)
        {
          goto LABEL_221;
        }

LABEL_246:
        v231 = 0x8E38E38E38E38E39 * ((v215 - v378) >> 3);
        v232 = v231 + 1;
        if (v231 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v233 = 0x8E38E38E38E38E39 * ((v216 - v378) >> 3);
        if (2 * v233 > v232)
        {
          v232 = 2 * v233;
        }

        if (v233 >= 0x1C71C71C71C71C7)
        {
          v234 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v234 = v232;
        }

        v389 = &v378;
        if (v234)
        {
          if (v234 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v235 = 72 * v231;
        *&v386 = 0;
        *(&v386 + 1) = v235;
        v387 = v235;
        v388 = 0;
        *(v235 + 8) = 0;
        *(v235 + 16) = 0;
        *v235 = 0;
        if (v214 != v346)
        {
          if (0xCF3CF3CF3CF3CF3DLL * ((v214 - v346) >> 3) <= 0x186186186186186)
          {
            operator new();
          }

          sub_1794();
        }

        v236 = v348;
        *(v235 + 32) = 0;
        *(v235 + 24) = v236;
        *(v235 + 40) = 0;
        *(v235 + 48) = 0;
        if (v350 != v349)
        {
          if (0xCCCCCCCCCCCCCCCDLL * ((v350 - v349) >> 3) <= 0x666666666666666)
          {
            operator new();
          }

          sub_1794();
        }

        *(v235 + 56) = *v352;
        *(v235 + 63) = *&v352[7];
        v223 = v387 + 72;
        v387 += 72;
        v237 = *(&v378 + 1);
        v238 = v378;
        v324 = *(&v386 + 1) + v378 - *(&v378 + 1);
        if (v378 != *(&v378 + 1))
        {
          v239 = v378;
          v240 = *(&v386 + 1) + v378 - *(&v378 + 1);
          do
          {
            *v240 = 0;
            *(v240 + 8) = 0;
            *(v240 + 16) = 0;
            *v240 = *v239;
            *(v240 + 16) = *(v239 + 16);
            *(v239 + 8) = 0;
            *(v239 + 16) = 0;
            *v239 = 0;
            *(v240 + 24) = *(v239 + 24);
            *(v240 + 40) = 0;
            *(v240 + 48) = 0;
            *(v240 + 32) = 0;
            *(v240 + 32) = *(v239 + 32);
            *(v240 + 48) = *(v239 + 48);
            *(v239 + 32) = 0;
            *(v239 + 40) = 0;
            *(v239 + 48) = 0;
            v241 = *(v239 + 56);
            *(v240 + 63) = *(v239 + 63);
            *(v240 + 56) = v241;
            v239 += 72;
            v240 += 72;
          }

          while (v239 != v237);
          do
          {
            v243 = v238[4];
            if (v243)
            {
              v238[5] = v243;
              operator delete(v243);
            }

            v244 = *v238;
            if (*v238)
            {
              v245 = v238[1];
              v242 = *v238;
              if (v245 != v244)
              {
                do
                {
                  v246 = v245 - 168;
                  v247 = *(v245 - 2);
                  if (v247 != -1)
                  {
                    (off_2670F08[v247])(&v329, v245 - 168);
                  }

                  *(v245 - 2) = -1;
                  v245 -= 168;
                }

                while (v246 != v244);
                v242 = *v238;
              }

              v238[1] = v244;
              operator delete(v242);
            }

            v238 += 9;
          }

          while (v238 != v237);
        }

        v248 = v378;
        *&v378 = v324;
        *(&v378 + 1) = v223;
        *&v379 = v388;
        if (v248)
        {
          operator delete(v248);
        }

LABEL_278:
        *(&v378 + 1) = v223;
        v250 = v27[5];
        LODWORD(v386) = v326 + *(v328 + 120) + *(v328 + 120) * v327 + 1;
        v249 = v386;
        v251 = *(v328 + 216);
        v252 = *(sub_B45D70(v328 + 128, &v386) + 4);
        LODWORD(v386) = v249;
        v253 = *(v328 + 216);
        v27 = (v251 + (v252 << 6));
        v254 = (v253 + (*(sub_B45D70(v328 + 128, &v386) + 8) << 6));
        if (v27 == v254)
        {
          v27 = 0;
        }

        else
        {
          while (v27[6] != v250)
          {
            v27 += 16;
            if (v27 == v254)
            {
              v27 = 0;
              break;
            }
          }
        }

        if (*&v345[16] != -1)
        {
          (off_2670F08[*&v345[16]])(&v386, v340);
        }

        if (v349)
        {
          v350 = v349;
          operator delete(v349);
        }

        v255 = v346;
        if (v346)
        {
          v256 = *(&v346 + 1);
          v28 = v346;
          if (*(&v346 + 1) != v346)
          {
            do
            {
              v257 = v256 - 168;
              v258 = *(v256 - 8);
              if (v258 != -1)
              {
                (off_2670F08[v258])(v340, v256 - 168);
              }

              *(v256 - 8) = -1;
              v256 -= 168;
            }

            while (v257 != v255);
            v28 = v346;
          }

          *(&v346 + 1) = v255;
          operator delete(v28);
        }

        --v326;
        if (*v27 == -1)
        {
          goto LABEL_347;
        }

        goto LABEL_26;
      }

LABEL_44:
      ++v43;
    }
  }

LABEL_384:
  if (v317 != (a1 + 544))
  {
    v309 = *(a1 + 567);
    if (*(v322 + 55) < 0)
    {
      if (v309 >= 0)
      {
        v310 = (a1 + 544);
      }

      else
      {
        v310 = *(a1 + 544);
      }

      if (v309 >= 0)
      {
        v311 = *(a1 + 567);
      }

      else
      {
        v311 = *(a1 + 552);
      }

      sub_13B38(v317, v310, v311);
    }

    else if ((*(a1 + 567) & 0x80) != 0)
    {
      sub_13A68(v317, *(a1 + 544), *(a1 + 552));
    }

    else
    {
      *v317 = *(a1 + 544);
      v317[2] = *(a1 + 560);
    }
  }

  v312 = *(a1 + 648);
  *(v322 + 120) = *(a1 + 632);
  *(v322 + 136) = v312;
  v313 = *(a1 + 680);
  *(v322 + 152) = *(a1 + 664);
  *(v322 + 168) = v313;
  v314 = *(a1 + 584);
  *(v322 + 56) = *(a1 + 568);
  *(v322 + 72) = v314;
  result = *(a1 + 600);
  v316 = *(a1 + 616);
  *(v322 + 88) = result;
  *(v322 + 104) = v316;
  return result;
}

void sub_B4ED48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  STACK[0x250] = v11 + 240;
  sub_A31F30(&STACK[0x250]);
  v14 = *(v11 + 216);
  if (v14)
  {
    *(v11 + 224) = v14;
    operator delete(v14);
    v15 = *a10;
    if (*a10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *a10;
    if (*a10)
    {
LABEL_3:
      *(v11 + 200) = v15;
      operator delete(v15);
      if ((*(v11 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  if ((*(v11 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    if (!*v12)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a11);
  if (!*v12)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_A95778(v12);
  operator delete(*v12);
  _Unwind_Resume(a1);
}

double sub_B4F2D8(uint64_t a1)
{
  *(a1 + 264) = 0;
  if (*(a1 + 168) | *(a1 + 208))
  {
    for (i = *(a1 + 176); i != *(a1 + 184); i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    *(a1 + 208) = 0;
  }

  *(a1 + 128) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 144), *(a1 + 200))));
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 224) = *(a1 + 216);
  *(a1 + 248) = 0;
  v3 = *(a1 + 296);
  v4 = *(a1 + 304);
  if (v3 != v4)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 296);
    do
    {
      v7 = *v6++;
      *(v5 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
    }

    while (v6 != v4);
  }

  *(a1 + 304) = v3;
  v8 = *(a1 + 344);
  v9 = *(a1 + 352);
  if (v8 != v9)
  {
    v10 = *(a1 + 320);
    v11 = *(a1 + 344);
    do
    {
      v12 = *v11++;
      *(v10 + ((v12 >> 3) & 0x1FFFFFF8)) &= ~(1 << v12);
    }

    while (v11 != v9);
  }

  *(a1 + 352) = v8;
  v13 = *(a1 + 416);
  v14 = *(a1 + 424);
  if (v13 != v14)
  {
    v15 = *(a1 + 392);
    v16 = *(a1 + 368);
    v17 = *(a1 + 416);
    do
    {
      v18 = *v17++;
      *(v15 + ((v18 >> 3) & 0x1FFFFFF8)) &= ~(1 << v18);
      *(v16 + 4 * v18) = -1;
    }

    while (v17 != v14);
  }

  *(a1 + 424) = v13;
  sub_C4306C((a1 + 448));
  v27 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v28, &__p);
  v19 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v19);
  }

  *v19 = v28;
  *(a1 + 560) = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28) = 0;
  v20 = v35;
  *(a1 + 632) = v34;
  *(a1 + 648) = v20;
  v21 = v37;
  *(a1 + 664) = v36;
  *(a1 + 680) = v21;
  v22 = v31;
  *(a1 + 568) = v30;
  *(a1 + 584) = v22;
  v23 = v33;
  *(a1 + 600) = v32;
  *(a1 + 616) = v23;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v24 = COERCE_DOUBLE(vadd_s32(vdup_n_s32(2 * *(a1 + 16)), 0x200000004));
  *(a1 + 120) = v24;
  return sub_C430C8((a1 + 448), *(a1 + 8), v24);
}

void sub_B4F4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B4F518(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 264);
    *(a1 + 264) = v3 + 1;
    v4 = *(a1 + 32);
    v36[0] = 0x1FFFFFFFDLL;
    v5 = sub_B34C5C(v4, v36);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, v36);
      v6 = *(v8 + 8);
    }

    v26 = v6;
    LODWORD(v36[0]) = 0;
    v9 = *(a1 + 216);
    v10 = (v9 + (*(sub_B45D70(a1 + 128, v36) + 4) << 6));
    LODWORD(v36[0]) = 0;
    v11 = *(a1 + 216);
    v12 = sub_B45D70(a1 + 128, v36);
    sub_B459B8(a1 + 128, 0, v10, (v11 + (*(v12 + 8) << 6)));
    v18 = xmmword_229B660;
    v19 = -1;
    v20 = v3;
    v21 = v2;
    v22 = 0;
    v23 = 10 * v2;
    v24 = -1;
    v25 = 0x7FFFFFFF;
    v40 = 0;
    sub_B47A80((a1 + 128), &v40, v36);
    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    v27 = a1 + 128;
    v28 = v13;
    v29 = v14;
    v30 = v14;
    v31 = 0;
    v32 = v13;
    v33 = v14;
    v34 = v14;
    v35 = 0;
    sub_B47094(&v27);
    if (v36[1] == v28 && v37 == v29 && v38 == v30 && (v38 == v37 || v39 == v31) || *(v39 + 8) == *(v39 + 4))
    {
      sub_B4725C((a1 + 128), 0, &v18);
    }

    else if ((sub_B52680(a1 + 128, &v18, 0, 0, 1) & 0x100) != 0)
    {
      sub_B47970(a1 + 128, 0);
    }

    v15 = *(a1 + 120);
    v16 = v15 * (v6 + 1);
    v17 = v16 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_B524BC((a1 + 128), 0, v17, v16, v15 + v15 * *(a1 + 440), 0x80000000))
      {
        return;
      }
    }

    else if (!sub_B524BC((a1 + 128), 0, v17, v16, 0xFFFFFFFF, 0x80000000))
    {
      return;
    }

    if (*(a1 + 280) <= v6)
    {
      sub_4D9168(a1 + 272, v6 + 1, 0);
    }

    if (((*(*(a1 + 272) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
    {
      sub_DD38(a1 + 296, &v26);
      *(*(a1 + 272) + ((v26 >> 3) & 0x1FFFFFF8)) |= 1 << v26;
    }
  }
}

double sub_B4F7D4(uint64_t a1, int a2)
{
  sub_7E9A4(v39);
  v4 = *(a1 + 296);
  v5 = *(a1 + 304);
  if (v4 != v5)
  {
    while (1)
    {
      v38 = *v4;
      v6 = *sub_A9C5E0((*(a1 + 32) + 88), v38);
      if (HIDWORD(v6) == 1 && (v6 + 3) < 2)
      {
LABEL_12:
        v12 = 0;
        goto LABEL_17;
      }

      v8 = *(*(a1 + 24) + 4120);
      if (*(v8 + 17) == 1)
      {
        break;
      }

      v9 = sub_502FF8(v8 + 24, __ROR8__(v6, 32), 0, "stop");
      v13 = (v9 - *v9);
      if (*v13 >= 0x15u)
      {
        v11 = v13[10];
        if (v11)
        {
          goto LABEL_15;
        }
      }

      v12 = -30;
LABEL_17:
      v40 = 0;
      v14 = *(a1 + 216);
      v15 = (v14 + (*(sub_B45D70(a1 + 128, &v40) + 4) << 6));
      v40 = 0;
      v16 = *(a1 + 216);
      v17 = sub_B45D70(a1 + 128, &v40);
      sub_B459B8(a1 + 128, 0, v15, (v16 + (*(v17 + 8) << 6)));
      sub_B52A44((a1 + 128), a2 + 1 + *(a1 + 120) + *(a1 + 120) * v38, 0);
      v40 = 0;
      v18 = *(a1 + 216);
      v19 = (v18 + (*(sub_B45D70(a1 + 128, &v40) + 4) << 6));
      v40 = 0;
      v20 = *(a1 + 216);
      v21 = (v20 + (*(sub_B45D70(a1 + 128, &v40) + 8) << 6));
      if (v19 == v21)
      {
        goto LABEL_24;
      }

      v22 = v38;
      v23 = v21 - v19 - 64;
      if (v23 <= 0x3F)
      {
        v24 = v19;
        do
        {
LABEL_23:
          *v24 = v22;
          v30 = v24[7];
          v24[3] = v30;
          v24[4] = -1;
          v24[7] = v30 + v12;
          v24 += 16;
        }

        while (v24 != v21);
        goto LABEL_24;
      }

      v25 = (v23 >> 6) + 1;
      v24 = &v19[16 * (v25 & 0x7FFFFFFFFFFFFFELL)];
      v26 = (v19 + 23);
      v27 = v25 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v26 - 23) = v22;
        *(v26 - 7) = v22;
        v28 = *(v26 - 16);
        v29 = *v26;
        *(v26 - 20) = v28;
        *(v26 - 19) = -1;
        *(v26 - 4) = v29;
        *(v26 - 3) = -1;
        *(v26 - 16) = v28 + v12;
        *v26 = v29 + v12;
        v26 += 32;
        v27 -= 2;
      }

      while (v27);
      if (v25 != (v25 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_23;
      }

LABEL_24:
      v31 = v38;
      v32 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v33 = v32 + v32 * *(a1 + 440) + 1;
        v34 = *(a1 + 48);
        if (!v34)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v33 = -1;
        v34 = *(a1 + 48);
        if (!v34)
        {
LABEL_28:
          v35 = 0x80000000;
          goto LABEL_29;
        }
      }

      v35 = sub_B394F8(v34, v38, *(a1 + 124) + ~a2);
LABEL_29:
      if (sub_B524BC((a1 + 128), 0, a2 + 2 + v32 + v32 * v31, v32 + v32 * v31 + 1, v33, v35))
      {
        v36 = v38;
        if (*(a1 + 328) <= v38)
        {
          sub_4D9168(a1 + 320, v38 + 1, 0);
          v36 = v38;
        }

        if (((*(*(a1 + 320) + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
        {
          sub_DD38(a1 + 344, &v38);
          *(*(a1 + 320) + ((v38 >> 3) & 0x1FFFFFF8)) |= 1 << v38;
        }
      }

      if (++v4 == v5)
      {
        goto LABEL_34;
      }
    }

    v9 = sub_A74944(v8 + 24, v6, 0, "transfers at stop");
    v10 = (v9 - *v9);
    if (*v10 < 5u)
    {
      goto LABEL_12;
    }

    v11 = v10[2];
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = -*(v9 + v11);
    goto LABEL_17;
  }

LABEL_34:
  result = sub_7EA60(v39) + *(a1 + 584);
  *(a1 + 584) = result;
  return result;
}

double sub_B4FB34(uint64_t a1, int a2)
{
  sub_7E9A4(v273);
  v4 = *(a1 + 296);
  v260 = *(a1 + 304);
  if (v4 != v260)
  {
    v262 = a1;
    while (1)
    {
      v261 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A82C20(&v267, *(a1 + 24), *v6);
      v7 = v268;
      v8 = 16;
      if (v272)
      {
        v8 = 32;
      }

      if (v268 < *(&v267 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v261 + 1;
      if (v261 + 1 == v260)
      {
        goto LABEL_309;
      }
    }

    v263 = v5 + 1;
    v266 = v5;
LABEL_13:
    v12 = 0;
    v13 = __ROR8__(*v7, 32);
    v14 = *(a1 + 32);
    v15 = *(v14 + 72) - 1;
    v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) >> 33));
    v17 = v16 ^ (v16 >> 33);
    v18 = *(v14 + 48);
    v19 = v18 + 11;
    v20 = -1;
    for (i = v17; ; i = v12 + v22)
    {
      v22 = i & v15;
      v23 = (i & v15) / 0x30;
      v24 = (i & v15) % 0x30;
      v25 = (v18 + 16 * v23);
      if (((*(v25 + (v24 >> 3) + 10) >> (v24 & 7)) & 1) == 0)
      {
        if (v20 == -1)
        {
          v61 = v22;
        }

        else
        {
          v61 = v20;
        }

        if (!sub_B35190(*(a1 + 32), 1))
        {
          goto LABEL_100;
        }

        goto LABEL_56;
      }

      v26 = *v25;
      if (!*(v14 + 40))
      {
        goto LABEL_34;
      }

      v27 = v25 + 10;
      if (v24 < 9)
      {
        v29 = 0;
        LOBYTE(v30) = v24;
        goto LABEL_30;
      }

      v28 = (48 * v23 - v22 + 7);
      if (v28 <= 0xFFF7)
      {
        LOWORD(v28) = -9;
      }

      if ((v28 + v22 - 48 * v23) >= 8u)
      {
        v32 = 0;
        v33 = 0;
        v34 = ((v28 + v22 - 48 * v23) >> 3) + 1;
        v30 = v24 - 8 * ((((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
        v31 = &v27[(((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
        v35 = (v19 + 16 * v23);
        v36 = v34 & 0x3FFE;
        do
        {
          v37 = *(v35 - 1);
          v38 = *v35;
          v35 += 2;
          v32 += byte_22A7D46[v37];
          v33 += byte_22A7D46[v38];
          v36 -= 2;
        }

        while (v36);
        v29 = v33 + v32;
        if ((v34 & 0x3FFE) == v34)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v29 = 0;
        v30 = v24;
        v31 = v25 + 10;
      }

      do
      {
        v39 = *v31++;
        v29 += byte_22A7D46[v39];
        v30 -= 8;
      }

      while (v30 > 8u);
LABEL_29:
      v27 += ((v24 - 9) >> 3) + 1;
LABEL_30:
      v40 = (v26 + 12 * (v29 + byte_22A7D46[~(-1 << v30) & *v27]));
      if (*(v14 + 36) == v40[1] && *(v14 + 32) == *v40)
      {
        if (v20 == -1)
        {
          v20 = v22;
        }

        goto LABEL_16;
      }

LABEL_34:
      v42 = v25 + 10;
      if (v24 < 9)
      {
        v44 = 0;
        LOBYTE(v45) = v24;
        goto LABEL_45;
      }

      v43 = (48 * v23 - v22 + 7);
      if (v43 <= 0xFFF7)
      {
        LOWORD(v43) = -9;
      }

      if ((v43 + v22 - 48 * v23) >= 8u)
      {
        v47 = 0;
        v48 = 0;
        v49 = ((v43 + v22 - 48 * v23) >> 3) + 1;
        v45 = v24 - 8 * ((((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
        v46 = &v42[(((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
        v50 = (v19 + 16 * v23);
        v51 = v49 & 0x3FFE;
        do
        {
          v52 = *(v50 - 1);
          v53 = *v50;
          v50 += 2;
          v47 += byte_22A7D46[v52];
          v48 += byte_22A7D46[v53];
          v51 -= 2;
        }

        while (v51);
        v44 = v48 + v47;
        if ((v49 & 0x3FFE) == v49)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v44 = 0;
        v45 = v24;
        v46 = v25 + 10;
      }

      do
      {
        v54 = *v46++;
        v44 += byte_22A7D46[v54];
        v45 -= 8;
      }

      while (v45 > 8u);
LABEL_44:
      v42 += ((v24 - 9) >> 3) + 1;
LABEL_45:
      if (v13 == *(v26 + 12 * (v44 + byte_22A7D46[~(-1 << v45) & *v42])))
      {
        if (v22 != -1)
        {
          v55 = v25 + 10;
          if (v24 < 9)
          {
            v58 = 0;
          }

          else
          {
            v56 = (48 * v23 - v22 + 7);
            if (v56 <= 0xFFF7)
            {
              LOWORD(v56) = -9;
            }

            v57 = v56 + v22 - 48 * v23;
            if (v57 < 8u)
            {
              v58 = 0;
              v59 = v24;
              v60 = v25 + 10;
              goto LABEL_131;
            }

            v139 = 0;
            v140 = 0;
            v141 = (v57 >> 3) + 1;
            v59 = v24 - 8 * (((v57 >> 3) + 1) & 0x3FFE);
            v60 = &v55[v141 & 0x3FFE];
            v142 = v25 + 11;
            v143 = v141 & 0x3FFE;
            do
            {
              v144 = *(v142 - 1);
              v145 = *v142;
              v142 += 2;
              v139 += byte_22A7D46[v144];
              v140 += byte_22A7D46[v145];
              v143 -= 2;
            }

            while (v143);
            v58 = v140 + v139;
            if ((v141 & 0x3FFE) != v141)
            {
              do
              {
LABEL_131:
                v146 = *v60++;
                v58 += byte_22A7D46[v146];
                v59 -= 8;
              }

              while (v59 > 8u);
            }

            v55 += ((v24 - 9) >> 3) + 1;
            LOBYTE(v24) = v59;
          }

          v147 = *(v14 + 56);
          v109 = (v26 + 12 * (v58 + byte_22A7D46[~(-1 << v24) & *v55]));
          if ((*v25 + 12 * *(v25 + 4)) == v109 && v25 + 2 != v147)
          {
            v149 = v25 + 4;
            do
            {
              if (*(v149 - 4))
              {
                v150 = 1;
              }

              else
              {
                v150 = v149 == v147;
              }

              v149 += 2;
            }

            while (!v150);
            v109 = *(v149 - 4);
          }

          goto LABEL_102;
        }

        v61 = -1;
        if (!sub_B35190(*(a1 + 32), 1))
        {
LABEL_100:
          v274 = v13;
          v275 = -1;
          v108 = v14;
          v107 = v61;
LABEL_101:
          sub_B356C0(v108, &v274, v107, v276);
          v109 = v277;
          goto LABEL_102;
        }

LABEL_56:
        v62 = 0;
        v274 = v13;
        v275 = -1;
        v63 = *(v14 + 72) - 1;
        v64 = *(v14 + 48);
        v65 = v64 + 11;
        v66 = -1;
        while (2)
        {
          v67 = v17 & v63;
          v68 = (v17 & v63) / 0x30;
          v69 = (v17 & v63) % 0x30;
          v70 = v64 + 16 * v68;
          if (((*(v70 + (v69 >> 3) + 10) >> (v69 & 7)) & 1) == 0)
          {
            if (v66 == -1)
            {
              v107 = v17 & v63;
            }

            else
            {
              v107 = v66;
            }

            goto LABEL_98;
          }

          v71 = *(v14 + 40);
          v72 = *v70;
          if (v71)
          {
            v73 = (v70 + 10);
            if (v69 < 9)
            {
              v75 = 0;
              LOBYTE(v76) = (v17 & v63) % 0x30;
            }

            else
            {
              v74 = (48 * v68 - v67 + 7);
              if (v74 <= 0xFFF7)
              {
                LOWORD(v74) = -9;
              }

              if ((v74 + v67 - 48 * v68) < 8u)
              {
                v75 = 0;
                v76 = (v17 & v63) % 0x30;
                v77 = (v70 + 10);
                goto LABEL_71;
              }

              v78 = 0;
              v79 = 0;
              v80 = ((v74 + v67 - 48 * v68) >> 3) + 1;
              v76 = v69 - 8 * ((((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
              v77 = &v73[(((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
              v81 = (v65 + 16 * v68);
              v82 = v80 & 0x3FFE;
              do
              {
                v83 = *(v81 - 1);
                v84 = *v81;
                v81 += 2;
                v78 += byte_22A7D46[v83];
                v79 += byte_22A7D46[v84];
                v82 -= 2;
              }

              while (v82);
              v75 = v79 + v78;
              if ((v80 & 0x3FFE) != v80)
              {
                do
                {
LABEL_71:
                  v85 = *v77++;
                  v75 += byte_22A7D46[v85];
                  v76 -= 8;
                }

                while (v76 > 8u);
              }

              v73 += ((v69 - 9) >> 3) + 1;
            }

            v86 = &v72[3 * (v75 + byte_22A7D46[~(-1 << v76) & *v73])];
            if (*(v14 + 36) == v86[1] && *(v14 + 32) == *v86)
            {
              if (v66 == -1)
              {
                v66 = v17 & v63;
              }

LABEL_59:
              v17 = ++v62 + v67;
              continue;
            }
          }

          break;
        }

        v88 = (v70 + 10);
        if (v69 < 9)
        {
          v90 = 0;
          LOBYTE(v91) = (v17 & v63) % 0x30;
        }

        else
        {
          v89 = (48 * v68 - v67 + 7);
          if (v89 <= 0xFFF7)
          {
            LOWORD(v89) = -9;
          }

          if ((v89 + v67 - 48 * v68) < 8u)
          {
            v90 = 0;
            v91 = (v17 & v63) % 0x30;
            v92 = (v70 + 10);
            goto LABEL_86;
          }

          v93 = 0;
          v94 = 0;
          v95 = ((v89 + v67 - 48 * v68) >> 3) + 1;
          v91 = v69 - 8 * ((((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
          v92 = &v88[(((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
          v96 = (v65 + 16 * v68);
          v97 = v95 & 0x3FFE;
          do
          {
            v98 = *(v96 - 1);
            v99 = *v96;
            v96 += 2;
            v93 += byte_22A7D46[v98];
            v94 += byte_22A7D46[v99];
            v97 -= 2;
          }

          while (v97);
          v90 = v94 + v93;
          if ((v95 & 0x3FFE) != v95)
          {
            do
            {
LABEL_86:
              v100 = *v92++;
              v90 += byte_22A7D46[v100];
              v91 -= 8;
            }

            while (v91 > 8u);
          }

          v88 += ((v69 - 9) >> 3) + 1;
        }

        if (v13 != *&v72[3 * (v90 + byte_22A7D46[~(-1 << v91) & *v88])])
        {
          goto LABEL_59;
        }

        if (v67 == -1)
        {
          v107 = -1;
LABEL_98:
          v108 = v14;
          goto LABEL_101;
        }

        v101 = (v70 + 10);
        if (v69 < 9)
        {
          v104 = 0;
        }

        else
        {
          v102 = (48 * v68 - v67 + 7);
          if (v102 <= 0xFFF7)
          {
            LOWORD(v102) = -9;
          }

          v103 = v102 + v67 - 48 * v68;
          if (v103 < 8u)
          {
            v104 = 0;
            v105 = (v17 & v63) % 0x30;
            v106 = (v70 + 10);
            goto LABEL_159;
          }

          v161 = 0;
          v162 = 0;
          v163 = (v103 >> 3) + 1;
          v105 = v69 - 8 * (((v103 >> 3) + 1) & 0x3FFE);
          v106 = &v101[v163 & 0x3FFE];
          v164 = (v70 + 11);
          v165 = v163 & 0x3FFE;
          do
          {
            v166 = *(v164 - 1);
            v167 = *v164;
            v164 += 2;
            v161 += byte_22A7D46[v166];
            v162 += byte_22A7D46[v167];
            v165 -= 2;
          }

          while (v165);
          v104 = v162 + v161;
          if ((v163 & 0x3FFE) != v163)
          {
            do
            {
LABEL_159:
              v168 = *v106++;
              v104 += byte_22A7D46[v168];
              v105 -= 8;
            }

            while (v105 > 8u);
          }

          v101 += ((v69 - 9) >> 3) + 1;
          LOBYTE(v69) = v105;
        }

        v169 = *(v14 + 56);
        v109 = &v72[3 * (v104 + byte_22A7D46[~(-1 << v69) & *v101])];
        if ((*v70 + 12 * *(v70 + 8)) == v109)
        {
          v70 += 16;
          if (v70 != v169)
          {
            do
            {
              v170 = v70;
              if (*(v70 + 8))
              {
                break;
              }

              v70 += 16;
            }

            while (v170 + 2 != v169);
            v109 = *v170;
          }
        }

        if (v70 != v169 && v71)
        {
          do
          {
            if (*(v14 + 36) != v109[1] || *(v14 + 32) != *v109)
            {
              break;
            }

            v109 += 3;
            if (v109 == (*v70 + 12 * *(v70 + 8)))
            {
              v70 += 16;
              if (v70 != v169)
              {
                do
                {
                  v254 = v70;
                  if (*(v70 + 8))
                  {
                    break;
                  }

                  v70 += 16;
                }

                while (v254 + 2 != v169);
                v109 = *v254;
              }
            }
          }

          while (v70 != v169);
        }

LABEL_102:
        v110 = v109[2];
        if (v110 == -1)
        {
          v111 = *(v14 + 112);
          *(v14 + 112) = v111 + 1;
          v109[2] = v111;
          v113 = *(v14 + 96);
          v112 = *(v14 + 104);
          if (v113 < v112)
          {
            *v113 = v13;
            v114 = v113 + 1;
            goto LABEL_119;
          }

          v115 = *(v14 + 88);
          v116 = v113 - v115;
          v117 = (v113 - v115) >> 3;
          v118 = v117 + 1;
          if ((v117 + 1) >> 61)
          {
            sub_1794();
          }

          v119 = v112 - v115;
          if (v119 >> 2 > v118)
          {
            v118 = v119 >> 2;
          }

          if (v119 >= 0x7FFFFFFFFFFFFFF8)
          {
            v120 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v120 = v118;
          }

          if (!v120)
          {
            v121 = (v113 - v115) >> 3;
            v122 = (8 * v117);
            v123 = (8 * v117 - 8 * v121);
            *v122 = v13;
            v114 = v122 + 1;
            memcpy(v123, v115, v116);
            *(v14 + 88) = v123;
            *(v14 + 96) = v114;
            *(v14 + 104) = 0;
            if (v115)
            {
              operator delete(v115);
            }

LABEL_119:
            *(v14 + 96) = v114;
            v110 = v109[2];
            a1 = v262;
            *(v262 + 640) = *(v262 + 640) + 1.0;
            if (v266 == v110)
            {
              goto LABEL_246;
            }

            goto LABEL_120;
          }

          if (!(v120 >> 61))
          {
            operator new();
          }

LABEL_311:
          sub_1808();
        }

        *(a1 + 640) = *(a1 + 640) + 1.0;
        if (v266 == v110)
        {
          goto LABEL_246;
        }

LABEL_120:
        LODWORD(v276[0]) = 0;
        v124 = *(a1 + 216);
        v125 = (v124 + (*(sub_B45D70(a1 + 128, v276) + 4) << 6));
        LODWORD(v276[0]) = 0;
        v126 = *(a1 + 216);
        v127 = sub_B45D70(a1 + 128, v276);
        sub_B459B8(a1 + 128, 0, v125, (v126 + (*(v127 + 8) << 6)));
        v128 = a2 + 1 + *(a1 + 120) * v263;
        LODWORD(v276[0]) = v128;
        if (*(a1 + 208) != *(a1 + 168))
        {
          v129 = sub_B45FDC(a1 + 128, v276);
          if (v129 != -1)
          {
            v130 = *(a1 + 176) + 16 * (v129 / 0x30);
            v131 = (v130 + 10);
            v132 = v129 % 0x30;
            if (v129 % 0x30 < 9)
            {
              v136 = 0;
            }

            else
            {
              v133 = 48 * (v129 / 0x30);
              v134 = (v133 - v129 + 7);
              if (v134 <= 0xFFF7)
              {
                LOWORD(v134) = -9;
              }

              v135 = v134 + v129 - v133;
              v136 = 0;
              if (v135 < 8u)
              {
                v137 = v129 % 0x30;
                v138 = (v130 + 10);
                goto LABEL_149;
              }

              v151 = 0;
              v152 = (v135 >> 3) + 1;
              LOWORD(v137) = v132 - 8 * (((v135 >> 3) + 1) & 0x3FFE);
              v138 = &v131[v152 & 0x3FFE];
              v153 = (v130 + 11);
              v154 = v152 & 0x3FFE;
              do
              {
                v155 = *(v153 - 1);
                v156 = *v153;
                v153 += 2;
                v136 += byte_22A7C46[v155];
                v151 += byte_22A7C46[v156];
                v154 -= 2;
              }

              while (v154);
              v136 += v151;
              if ((v152 & 0x3FFE) != v152)
              {
                do
                {
LABEL_149:
                  v157 = *v138++;
                  v136 += byte_22A7C46[v157];
                  LOWORD(v137) = v137 - 8;
                }

                while (v137 > 8u);
              }

              v131 += ((v132 - 9) >> 3) + 1;
              LOBYTE(v132) = v137;
            }

            v158 = *(a1 + 184);
            v159 = (*v130 + 12 * (v136 + byte_22A7C46[~(-1 << v132) & *v131]));
            if ((*v130 + 12 * *(v130 + 8)) == v159)
            {
              v130 += 16;
              if (v130 != v158)
              {
                do
                {
                  v160 = v130;
                  if (*(v130 + 8))
                  {
                    break;
                  }

                  v130 += 16;
                }

                while (v160 + 2 != v158);
                v159 = *v160;
              }
            }

            if (v130 != v158)
            {
              if (*(a1 + 168))
              {
                v171 = v130;
                do
                {
                  if (*(a1 + 160) != *v159)
                  {
                    break;
                  }

                  v159 += 3;
                  if (v159 == (*v130 + 12 * *(v130 + 8)))
                  {
                    v130 += 16;
                    v171 = *(a1 + 184);
                    if (v130 != v158)
                    {
                      do
                      {
                        v172 = v130;
                        if (*(v130 + 8))
                        {
                          v171 = v130;
                          goto LABEL_171;
                        }

                        v130 += 16;
                      }

                      while (v172 + 2 != v158);
                      v171 = *(a1 + 184);
LABEL_171:
                      v159 = *v172;
                    }
                  }
                }

                while (v130 != v158);
              }

              else
              {
                v171 = v130;
              }

              if (v171 != v158)
              {
                v175 = v159 + 1;
                v174 = v159[1];
                v173 = v175[1];
                v176 = v173 - v174;
                if (v173 != v174)
                {
                  v177 = 0;
                  v178 = 0;
                  do
                  {
                    v179 = sub_B47C7C((a1 + 128), v128, v178);
                    v180 = v179[2];
                    v181 = v179[3];
                    v182 = v179[1];
                    v276[0] = *v179;
                    v277 = v180;
                    v278 = v181;
                    v276[1] = v182;
                    v177 |= sub_B52680(a1 + 128, v276, 0, 0, 1);
                    ++v178;
                  }

                  while (v176 != v178);
                  if ((v177 & 0x100) != 0)
                  {
                    LODWORD(v276[0]) = 0;
                    v183 = *(a1 + 216);
                    v184 = (v183 + (*(sub_B45D70(a1 + 128, v276) + 4) << 6));
                    LODWORD(v276[0]) = 0;
                    v185 = *(a1 + 216);
                    v186 = sub_B45D70(a1 + 128, v276);
                    v187 = (v185 + (*(v186 + 8) << 6));
                    v188 = v187;
                    if (v184 != v187)
                    {
                      v188 = v184;
                      while (*(v188 + 7) != 0x7FFFFFFF)
                      {
                        v188 += 4;
                        if (v188 == v187)
                        {
                          v188 = (v185 + (*(v186 + 8) << 6));
                          break;
                        }
                      }

                      if (v187 != v188)
                      {
                        for (j = v188 + 4; j != v187; j += 4)
                        {
                          if (*(j + 7) != 0x7FFFFFFF)
                          {
                            v256 = *j;
                            v257 = j[1];
                            v258 = j[3];
                            v188[2] = j[2];
                            v188[3] = v258;
                            *v188 = v256;
                            v188[1] = v257;
                            v188 += 4;
                          }
                        }
                      }
                    }

                    LODWORD(v276[0]) = 0;
                    v189 = *(a1 + 216);
                    v190 = sub_B45D70(a1 + 128, v276);
                    sub_B459B8(a1 + 128, 0, v188, (v189 + (*(v190 + 8) << 6)));
                  }
                }
              }
            }
          }
        }

        LODWORD(v276[0]) = 0;
        v191 = *(a1 + 216);
        v192 = (v191 + (*(sub_B45D70(a1 + 128, v276) + 4) << 6));
        LODWORD(v276[0]) = 0;
        v193 = *(a1 + 216);
        v194 = (v193 + (*(sub_B45D70(a1 + 128, v276) + 8) << 6));
        if (v192 != v194)
        {
          v195 = v268;
          do
          {
            *v192 = v266;
            v196 = v192[7];
            v197 = v192[8];
            v192[3] = v196;
            v192[4] = -1;
            v198 = *(v195 + 2);
            v199 = v198 / -10;
            v200 = v198 / 10;
            v201 = v198 % 10;
            if (v198 < 0)
            {
              v202 = -5;
            }

            else
            {
              v202 = 5;
            }

            v203 = (v202 + v201);
            v192[7] = v199 + v196 + (((-103 * v203) >> 15) & 1) + ((-103 * v203) >> 10);
            v192[8] = v197 + v200 + (((103 * v203) >> 15) & 1) + ((103 * v203) >> 10);
            v192 += 16;
          }

          while (v192 != v194);
        }

        v204 = *(a1 + 120);
        if (*(a1 + 20) == 1)
        {
          v205 = v204 + v204 * *(a1 + 440) + 1;
          v206 = *(a1 + 48);
          if (v206)
          {
            goto LABEL_195;
          }

LABEL_241:
          v209 = 0x80000000;
          goto LABEL_242;
        }

        v205 = -1;
        v206 = *(a1 + 48);
        if (!v206)
        {
          goto LABEL_241;
        }

LABEL_195:
        v264 = *(a1 + 120);
        v265 = v205;
        v207 = 0;
        v208 = *(a1 + 124) + ~a2;
        while (2)
        {
          while (2)
          {
            LODWORD(v276[0]) = (v110 << *v206) | (v208 - v207);
            if (*(v206 + 88) == *(v206 + 48))
            {
              goto LABEL_196;
            }

            v211 = sub_B397F8(v206 + 8, v276);
            if (v211 == -1)
            {
              goto LABEL_196;
            }

            v212 = *(v206 + 56) + 16 * (v211 / 0x30);
            v213 = (v212 + 10);
            v214 = v211 % 0x30;
            if (v211 % 0x30 < 9)
            {
              v218 = 0;
            }

            else
            {
              v215 = 48 * (v211 / 0x30);
              v216 = (v215 - v211 + 7);
              if (v216 <= 0xFFF7)
              {
                LOWORD(v216) = -9;
              }

              v217 = v216 + v211 - v215;
              if (v217 < 8u)
              {
                v218 = 0;
                v219 = v211 % 0x30;
                v220 = (v212 + 10);
                goto LABEL_211;
              }

              v221 = 0;
              v222 = 0;
              v223 = (v217 >> 3) + 1;
              LOWORD(v219) = v214 - 8 * (((v217 >> 3) + 1) & 0x3FFE);
              v220 = &v213[v223 & 0x3FFE];
              v224 = (v212 + 11);
              v225 = v223 & 0x3FFE;
              do
              {
                v226 = *(v224 - 1);
                v227 = *v224;
                v224 += 2;
                v221 += byte_22A7B46[v226];
                v222 += byte_22A7B46[v227];
                v225 -= 2;
              }

              while (v225);
              v218 = v222 + v221;
              if ((v223 & 0x3FFE) != v223)
              {
                do
                {
LABEL_211:
                  v228 = *v220++;
                  v218 += byte_22A7B46[v228];
                  LOWORD(v219) = v219 - 8;
                }

                while (v219 > 8u);
              }

              v213 += ((v214 - 9) >> 3) + 1;
              LOBYTE(v214) = v219;
            }

            v229 = *(v206 + 64);
            v230 = (*v212 + 8 * (v218 + byte_22A7B46[~(-1 << v214) & *v213]));
            if ((*v212 + 8 * *(v212 + 8)) == v230)
            {
              v212 += 16;
              if (v212 != v229)
              {
                do
                {
                  v231 = v212;
                  if (*(v212 + 8))
                  {
                    break;
                  }

                  v212 += 16;
                }

                while (v231 + 2 != v229);
                v230 = *v231;
              }
            }

            if (v212 == v229)
            {
LABEL_196:
              v209 = *(v206 + 4);
              v207 += 2;
              if (v209 != 0x7FFFFFFF || v207 > v208)
              {
                goto LABEL_239;
              }

              continue;
            }

            break;
          }

          if (*(v206 + 48))
          {
            v232 = v212;
            do
            {
              if (*(v206 + 40) != *v230)
              {
                break;
              }

              v230 += 2;
              if (v230 == (*v212 + 8 * *(v212 + 8)))
              {
                v212 += 16;
                v232 = *(v206 + 64);
                if (v212 != v229)
                {
                  do
                  {
                    v233 = v212;
                    if (*(v212 + 8))
                    {
                      v232 = v212;
                      goto LABEL_222;
                    }

                    v212 += 16;
                  }

                  while (v233 + 2 != v229);
                  v232 = *(v206 + 64);
LABEL_222:
                  v230 = *v233;
                }
              }
            }

            while (v212 != v229);
          }

          else
          {
            v232 = v212;
          }

          if (v232 == v229)
          {
            v234 = v206;
          }

          else
          {
            v234 = v230;
          }

          v209 = v234[1];
          v207 += 2;
          if (v209 == 0x7FFFFFFF && v207 <= v208)
          {
            continue;
          }

          break;
        }

LABEL_239:
        v205 = v265;
        v204 = v264;
LABEL_242:
        if ((sub_B524BC((a1 + 128), 0, a2 + 2 + v204 * (v110 + 1), v204 * (v110 + 1) + 1, v205, v209) & 1) == 0)
        {
          goto LABEL_246;
        }

        if (*(a1 + 328) <= v110)
        {
          sub_4D9168(a1 + 320, v110 + 1, 0);
        }

        v236 = v110 >> 6;
        if ((*(*(a1 + 320) + 8 * v236) & (1 << v110)) != 0)
        {
LABEL_246:
          v9 = v269;
          v7 = (v268 + 12);
          v268 = v7;
          if (v7 != v269)
          {
            goto LABEL_247;
          }

LABEL_261:
          v7 = v270;
          v268 = v270;
          v10 = 1;
          v272 = 1;
          goto LABEL_262;
        }

        v238 = *(a1 + 352);
        v237 = *(a1 + 360);
        if (v238 >= v237)
        {
          v240 = *(a1 + 344);
          v241 = v238 - v240;
          v242 = (v238 - v240) >> 2;
          v243 = v242 + 1;
          if ((v242 + 1) >> 62)
          {
            sub_1794();
          }

          v244 = v237 - v240;
          if (v244 >> 1 > v243)
          {
            v243 = v244 >> 1;
          }

          if (v244 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v243 = 0x3FFFFFFFFFFFFFFFLL;
          }

          if (!v243)
          {
            v245 = (v238 - v240) >> 2;
            v246 = (4 * v242);
            v247 = (4 * v242 - 4 * v245);
            *v246 = v110;
            v239 = v246 + 1;
            memcpy(v247, v240, v241);
            *(a1 + 344) = v247;
            *(a1 + 352) = v239;
            *(a1 + 360) = 0;
            if (v240)
            {
              operator delete(v240);
            }

            goto LABEL_260;
          }

          if (!(v243 >> 62))
          {
            operator new();
          }

          goto LABEL_311;
        }

        *v238 = v110;
        v239 = v238 + 4;
LABEL_260:
        *(a1 + 352) = v239;
        *(*(a1 + 320) + 8 * v236) |= 1 << v110;
        v9 = v269;
        v7 = (v268 + 12);
        v268 = v7;
        if (v7 == v269)
        {
          goto LABEL_261;
        }

LABEL_247:
        v10 = v272;
LABEL_262:
        v11 = v271;
        if (v10)
        {
          v248 = v271;
        }

        else
        {
          v248 = v9;
        }

        if (*(v267 + 16) == 1 && v7 < v248)
        {
          while (1)
          {
            v250 = __ROR8__(*v7, 32);
            if (HIDWORD(v250) == 1 && (v250 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(v267 + 4120)))
            {
              v7 = v268;
              v9 = v269;
              v10 = v272;
              break;
            }

            v9 = v269;
            v7 = (v268 + 12);
            v268 = v7;
            if (v7 == v269)
            {
              v7 = v270;
              v268 = v270;
              v10 = 1;
              v272 = 1;
              if (v270 >= v271)
              {
                break;
              }
            }

            else
            {
              v10 = v272;
              v252 = 16;
              if (v272)
              {
                v252 = 32;
              }

              if (v7 >= *(&v267 + v252))
              {
                break;
              }
            }
          }

          v11 = v271;
        }

        if (v10)
        {
          v9 = v11;
        }

        if (v7 >= v9)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

LABEL_16:
      ++v12;
    }
  }

LABEL_309:
  result = sub_7EA60(v273) + *(a1 + 584);
  *(a1 + 584) = result;
  return result;
}

void sub_B51030(void *a1)
{
  v1 = a1;
  v2 = a1[52];
  v3 = a1[53];
  if (v2 != v3)
  {
    v4 = a1[49];
    v5 = a1[46];
    v6 = a1[52];
    do
    {
      v7 = *v6++;
      *(v4 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
      *(v5 + 4 * v7) = -1;
    }

    while (v6 != v3);
  }

  a1[53] = v2;
  v8 = a1[43];
  v230 = a1[44];
  if (v8 == v230)
  {
    return;
  }

  while (2)
  {
    v234 = v8;
    v9 = sub_A9C5E0((v1[4] + 88), *v8);
    sub_A7905C(v235, v1[3], *v9, 0, 0, 0);
    v10 = v238;
    v11 = v239;
LABEL_8:
    if (v10 < v11)
    {
      v12 = 0;
      v13 = __ROR8__(*v10, 32);
      v14 = v1[5];
      v15 = *(v14 + 72) - 1;
      v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) >> 33));
      v17 = v16 ^ (v16 >> 33);
      v18 = *(v14 + 48);
      v19 = v18 + 11;
      v20 = -1;
      for (i = v17; ; i = v12 + v22)
      {
        v22 = i & v15;
        v23 = (i & v15) / 0x30;
        v24 = (i & v15) % 0x30;
        v25 = (v18 + 16 * v23);
        if (((*(v25 + (v24 >> 3) + 10) >> (v24 & 7)) & 1) == 0)
        {
          if (v20 == -1)
          {
            v61 = v22;
          }

          else
          {
            v61 = v20;
          }

          if (!sub_B35190(v1[5], 1))
          {
            goto LABEL_96;
          }

          goto LABEL_52;
        }

        v26 = *v25;
        if (!*(v14 + 40))
        {
          goto LABEL_30;
        }

        v27 = v25 + 10;
        if (v24 < 9)
        {
          v29 = 0;
          LOBYTE(v30) = v24;
          goto LABEL_26;
        }

        v28 = (48 * v23 - v22 + 7);
        if (v28 <= 0xFFF7)
        {
          LOWORD(v28) = -9;
        }

        if ((v28 + v22 - 48 * v23) >= 8u)
        {
          v32 = 0;
          v33 = 0;
          v34 = ((v28 + v22 - 48 * v23) >> 3) + 1;
          v30 = v24 - 8 * ((((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
          v31 = &v27[(((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
          v35 = (v19 + 16 * v23);
          v36 = v34 & 0x3FFE;
          do
          {
            v37 = *(v35 - 1);
            v38 = *v35;
            v35 += 2;
            v32 += byte_22A7D46[v37];
            v33 += byte_22A7D46[v38];
            v36 -= 2;
          }

          while (v36);
          v29 = v33 + v32;
          if ((v34 & 0x3FFE) == v34)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v29 = 0;
          v30 = v24;
          v31 = v25 + 10;
        }

        do
        {
          v39 = *v31++;
          v29 += byte_22A7D46[v39];
          v30 -= 8;
        }

        while (v30 > 8u);
LABEL_25:
        v27 += ((v24 - 9) >> 3) + 1;
LABEL_26:
        v40 = (v26 + 12 * (v29 + byte_22A7D46[~(-1 << v30) & *v27]));
        if (*(v14 + 36) == v40[1] && *(v14 + 32) == *v40)
        {
          if (v20 == -1)
          {
            v20 = v22;
          }

          goto LABEL_12;
        }

LABEL_30:
        v42 = v25 + 10;
        if (v24 < 9)
        {
          v44 = 0;
          LOBYTE(v45) = v24;
          goto LABEL_41;
        }

        v43 = (48 * v23 - v22 + 7);
        if (v43 <= 0xFFF7)
        {
          LOWORD(v43) = -9;
        }

        if ((v43 + v22 - 48 * v23) >= 8u)
        {
          v47 = 0;
          v48 = 0;
          v49 = ((v43 + v22 - 48 * v23) >> 3) + 1;
          v45 = v24 - 8 * ((((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
          v46 = &v42[(((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
          v50 = (v19 + 16 * v23);
          v51 = v49 & 0x3FFE;
          do
          {
            v52 = *(v50 - 1);
            v53 = *v50;
            v50 += 2;
            v47 += byte_22A7D46[v52];
            v48 += byte_22A7D46[v53];
            v51 -= 2;
          }

          while (v51);
          v44 = v48 + v47;
          if ((v49 & 0x3FFE) == v49)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v44 = 0;
          v45 = v24;
          v46 = v25 + 10;
        }

        do
        {
          v54 = *v46++;
          v44 += byte_22A7D46[v54];
          v45 -= 8;
        }

        while (v45 > 8u);
LABEL_40:
        v42 += ((v24 - 9) >> 3) + 1;
LABEL_41:
        if (v13 == *(v26 + 12 * (v44 + byte_22A7D46[~(-1 << v45) & *v42])))
        {
          if (v22 != -1)
          {
            v55 = v25 + 10;
            if (v24 < 9)
            {
              v58 = 0;
            }

            else
            {
              v56 = (48 * v23 - v22 + 7);
              if (v56 <= 0xFFF7)
              {
                LOWORD(v56) = -9;
              }

              v57 = v56 + v22 - 48 * v23;
              if (v57 < 8u)
              {
                v58 = 0;
                v59 = v24;
                v60 = v25 + 10;
                goto LABEL_138;
              }

              v140 = 0;
              v141 = 0;
              v142 = (v57 >> 3) + 1;
              v59 = v24 - 8 * (((v57 >> 3) + 1) & 0x3FFE);
              v60 = &v55[v142 & 0x3FFE];
              v143 = v25 + 11;
              v144 = v142 & 0x3FFE;
              do
              {
                v145 = *(v143 - 1);
                v146 = *v143;
                v143 += 2;
                v140 += byte_22A7D46[v145];
                v141 += byte_22A7D46[v146];
                v144 -= 2;
              }

              while (v144);
              v58 = v141 + v140;
              if ((v142 & 0x3FFE) != v142)
              {
                do
                {
LABEL_138:
                  v147 = *v60++;
                  v58 += byte_22A7D46[v147];
                  v59 -= 8;
                }

                while (v59 > 8u);
              }

              v55 += ((v24 - 9) >> 3) + 1;
              LOBYTE(v24) = v59;
            }

            v148 = *(v14 + 56);
            v109 = (v26 + 12 * (v58 + byte_22A7D46[~(-1 << v24) & *v55]));
            if ((*v25 + 12 * *(v25 + 4)) == v109 && v25 + 2 != v148)
            {
              v150 = v25 + 4;
              do
              {
                if (*(v150 - 4))
                {
                  v151 = 1;
                }

                else
                {
                  v151 = v150 == v148;
                }

                v150 += 2;
              }

              while (!v151);
              v109 = *(v150 - 4);
            }

            goto LABEL_98;
          }

          v61 = -1;
          if (!sub_B35190(v1[5], 1))
          {
LABEL_96:
            v242 = v13;
            v243 = -1;
            v108 = v14;
            v107 = v61;
LABEL_97:
            sub_B356C0(v108, &v242, v107, v244);
            v109 = v244[4];
            goto LABEL_98;
          }

LABEL_52:
          v62 = 0;
          v242 = v13;
          v243 = -1;
          v63 = *(v14 + 72) - 1;
          v64 = *(v14 + 48);
          v65 = v64 + 11;
          v66 = -1;
          while (2)
          {
            v67 = v17 & v63;
            v68 = (v17 & v63) / 0x30;
            v69 = (v17 & v63) % 0x30;
            v70 = v64 + 16 * v68;
            if (((*(v70 + (v69 >> 3) + 10) >> (v69 & 7)) & 1) == 0)
            {
              if (v66 == -1)
              {
                v107 = v17 & v63;
              }

              else
              {
                v107 = v66;
              }

              goto LABEL_94;
            }

            v71 = *(v14 + 40);
            v72 = *v70;
            if (v71)
            {
              v73 = (v70 + 10);
              if (v69 < 9)
              {
                v75 = 0;
                LOBYTE(v76) = (v17 & v63) % 0x30;
              }

              else
              {
                v74 = (48 * v68 - v67 + 7);
                if (v74 <= 0xFFF7)
                {
                  LOWORD(v74) = -9;
                }

                if ((v74 + v67 - 48 * v68) < 8u)
                {
                  v75 = 0;
                  v76 = (v17 & v63) % 0x30;
                  v77 = (v70 + 10);
                  goto LABEL_67;
                }

                v78 = 0;
                v79 = 0;
                v80 = ((v74 + v67 - 48 * v68) >> 3) + 1;
                v76 = v69 - 8 * ((((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
                v77 = &v73[(((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
                v81 = (v65 + 16 * v68);
                v82 = v80 & 0x3FFE;
                do
                {
                  v83 = *(v81 - 1);
                  v84 = *v81;
                  v81 += 2;
                  v78 += byte_22A7D46[v83];
                  v79 += byte_22A7D46[v84];
                  v82 -= 2;
                }

                while (v82);
                v75 = v79 + v78;
                if ((v80 & 0x3FFE) != v80)
                {
                  do
                  {
LABEL_67:
                    v85 = *v77++;
                    v75 += byte_22A7D46[v85];
                    v76 -= 8;
                  }

                  while (v76 > 8u);
                }

                v73 += ((v69 - 9) >> 3) + 1;
              }

              v86 = &v72[3 * (v75 + byte_22A7D46[~(-1 << v76) & *v73])];
              if (*(v14 + 36) == v86[1] && *(v14 + 32) == *v86)
              {
                if (v66 == -1)
                {
                  v66 = v67;
                }

LABEL_55:
                v17 = ++v62 + v67;
                continue;
              }
            }

            break;
          }

          v88 = (v70 + 10);
          if (v69 < 9)
          {
            v90 = 0;
            LOBYTE(v91) = v69;
          }

          else
          {
            v89 = (48 * v68 - v67 + 7);
            if (v89 <= 0xFFF7)
            {
              LOWORD(v89) = -9;
            }

            if ((v89 + v67 - 48 * v68) < 8u)
            {
              v90 = 0;
              v91 = v69;
              v92 = (v70 + 10);
              goto LABEL_82;
            }

            v93 = 0;
            v94 = 0;
            v95 = ((v89 + v67 - 48 * v68) >> 3) + 1;
            v91 = v69 - 8 * ((((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
            v92 = &v88[(((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
            v96 = (v65 + 16 * v68);
            v97 = v95 & 0x3FFE;
            do
            {
              v98 = *(v96 - 1);
              v99 = *v96;
              v96 += 2;
              v93 += byte_22A7D46[v98];
              v94 += byte_22A7D46[v99];
              v97 -= 2;
            }

            while (v97);
            v90 = v94 + v93;
            if ((v95 & 0x3FFE) != v95)
            {
              do
              {
LABEL_82:
                v100 = *v92++;
                v90 += byte_22A7D46[v100];
                v91 -= 8;
              }

              while (v91 > 8u);
            }

            v88 += ((v69 - 9) >> 3) + 1;
          }

          if (v13 != *&v72[3 * (v90 + byte_22A7D46[~(-1 << v91) & *v88])])
          {
            goto LABEL_55;
          }

          if (v67 == -1)
          {
            v107 = -1;
LABEL_94:
            v108 = v14;
            goto LABEL_97;
          }

          v101 = (v70 + 10);
          if (v69 < 9)
          {
            v104 = 0;
          }

          else
          {
            v102 = (48 * v68 - v67 + 7);
            if (v102 <= 0xFFF7)
            {
              LOWORD(v102) = -9;
            }

            v103 = v102 + v67 - 48 * v68;
            if (v103 < 8u)
            {
              v104 = 0;
              v105 = v69;
              v106 = (v70 + 10);
              goto LABEL_169;
            }

            v162 = 0;
            v163 = 0;
            v164 = (v103 >> 3) + 1;
            v105 = v69 - 8 * (((v103 >> 3) + 1) & 0x3FFE);
            v106 = &v101[v164 & 0x3FFE];
            v165 = (v70 + 11);
            v166 = v164 & 0x3FFE;
            do
            {
              v167 = *(v165 - 1);
              v168 = *v165;
              v165 += 2;
              v162 += byte_22A7D46[v167];
              v163 += byte_22A7D46[v168];
              v166 -= 2;
            }

            while (v166);
            v104 = v163 + v162;
            if ((v164 & 0x3FFE) != v164)
            {
              do
              {
LABEL_169:
                v169 = *v106++;
                v104 += byte_22A7D46[v169];
                v105 -= 8;
              }

              while (v105 > 8u);
            }

            v101 += ((v69 - 9) >> 3) + 1;
            LOBYTE(v69) = v105;
          }

          v170 = *(v14 + 56);
          v109 = &v72[3 * (v104 + byte_22A7D46[~(-1 << v69) & *v101])];
          if ((*v70 + 12 * *(v70 + 8)) == v109)
          {
            v70 += 16;
            if (v70 != v170)
            {
              do
              {
                v171 = v70;
                if (*(v70 + 8))
                {
                  break;
                }

                v70 += 16;
              }

              while (v171 + 2 != v170);
              v109 = *v171;
            }
          }

          if (v70 != v170 && v71)
          {
            do
            {
              if (*(v14 + 36) != v109[1] || *(v14 + 32) != *v109)
              {
                break;
              }

              v109 += 3;
              if (v109 == (*v70 + 12 * *(v70 + 8)))
              {
                v70 += 16;
                if (v70 != v170)
                {
                  do
                  {
                    v226 = v70;
                    if (*(v70 + 8))
                    {
                      break;
                    }

                    v70 += 16;
                  }

                  while (v226 + 2 != v170);
                  v109 = *v226;
                }
              }
            }

            while (v70 != v170);
          }

LABEL_98:
          v110 = v109[2];
          if (v110 == -1)
          {
            v111 = *(v14 + 112);
            *(v14 + 112) = v111 + 1;
            v109[2] = v111;
            v113 = *(v14 + 96);
            v112 = *(v14 + 104);
            if (v113 < v112)
            {
              *v113 = v13;
              v114 = v113 + 1;
              goto LABEL_114;
            }

            v115 = *(v14 + 88);
            v116 = v113 - v115;
            v117 = (v113 - v115) >> 3;
            v118 = v117 + 1;
            if ((v117 + 1) >> 61)
            {
              sub_1794();
            }

            v119 = v112 - v115;
            if (v119 >> 2 > v118)
            {
              v118 = v119 >> 2;
            }

            if (v119 >= 0x7FFFFFFFFFFFFFF8)
            {
              v120 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v120 = v118;
            }

            if (v120)
            {
              if (!(v120 >> 61))
              {
                operator new();
              }

LABEL_285:
              sub_1808();
            }

            v121 = v117;
            v122 = (8 * v117);
            v123 = &v122[-v121];
            *v122 = v13;
            v114 = v122 + 1;
            memcpy(v123, v115, v116);
            *(v14 + 88) = v123;
            *(v14 + 96) = v114;
            *(v14 + 104) = 0;
            if (v115)
            {
              operator delete(v115);
            }

            v1 = a1;
LABEL_114:
            *(v14 + 96) = v114;
            v110 = v109[2];
          }

          v124 = *(v238 + 5);
          v125 = v110;
          v126 = v110 >> 6;
          if (v1[50] <= v110)
          {
            v130 = v1[46];
            goto LABEL_180;
          }

          v233 = *(v238 + 5);
          v127 = v1[49];
          v128 = *(v127 + 8 * v126);
          v129 = 1 << v110;
          v130 = v1[46];
          if ((v128 & (1 << v110)) == 0)
          {
            v124 = *(v238 + 5);
            goto LABEL_180;
          }

          v131 = v1[47];
          v132 = &v131[-v130] >> 2;
          if (v132 <= v110)
          {
            v133 = v110 + 1;
            v134 = v133 - v132;
            if (v133 <= v132)
            {
              v1 = a1;
              if (v133 < v132)
              {
                a1[47] = v130 + 4 * v133;
              }
            }

            else
            {
              v135 = a1[48];
              if (v134 > (v135 - v131) >> 2)
              {
                v136 = v135 - v130;
                v137 = v136 >> 1;
                if (v136 >> 1 <= v133)
                {
                  v137 = v110 + 1;
                }

                v138 = v136 >= 0x7FFFFFFFFFFFFFFCLL;
                v139 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v138)
                {
                  v139 = v137;
                }

                if (!(v139 >> 62))
                {
                  operator new();
                }

                goto LABEL_285;
              }

              v152 = 4 * v134;
              memset(v131, 255, v152);
              a1[47] = &v131[v152];
              v1 = a1;
            }

            sub_4D9168((v1 + 49), v110 + 1, 0);
            v127 = v1[49];
            v126 = v110 >> 6;
            v128 = *(v127 + 8 * v126);
            if ((v128 & v129) == 0)
            {
              goto LABEL_155;
            }

LABEL_119:
            v130 = v1[46];
            v124 = v233;
            if (*(v130 + 4 * v110) < v233)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if ((v128 & v129) != 0)
            {
              goto LABEL_119;
            }

LABEL_155:
            *(v127 + 8 * v126) = v128 | v129;
            v154 = v1[53];
            v153 = v1[54];
            if (v154 < v153)
            {
              *v154 = v110;
              v155 = v154 + 4;
              goto LABEL_179;
            }

            v156 = v1[52];
            v157 = v154 - v156;
            v158 = (v154 - v156) >> 2;
            v159 = v158 + 1;
            if ((v158 + 1) >> 62)
            {
              goto LABEL_287;
            }

            v231 = v110;
            v160 = v153 - v156;
            if (v160 >> 1 > v159)
            {
              v159 = v160 >> 1;
            }

            if (v160 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v161 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v161 = v159;
            }

            if (v161)
            {
              if (!(v161 >> 62))
              {
                operator new();
              }

              goto LABEL_285;
            }

            v172 = v126;
            v173 = (v154 - v156) >> 2;
            v174 = (4 * v158);
            v175 = (4 * v158 - 4 * v173);
            *v174 = v231;
            v155 = v174 + 1;
            memcpy(v175, v156, v157);
            a1[52] = v175;
            a1[53] = v155;
            a1[54] = 0;
            v1 = a1;
            if (v156)
            {
              operator delete(v156);
            }

            v126 = v172;
            v110 = v231;
LABEL_179:
            v1[53] = v155;
            v130 = v1[46];
            v124 = v233;
            if (*(v130 + 4 * v125) < v233)
            {
LABEL_180:
              v176 = v1[47];
              v177 = &v176[-v130] >> 2;
              if (v177 <= v125)
              {
                v178 = v110 + 1;
                v179 = v178 - v177;
                v232 = v110;
                if (v178 <= v177)
                {
                  v184 = v126;
                  if (v178 < v177)
                  {
                    v185 = (v130 + 4 * v178);
                    goto LABEL_192;
                  }
                }

                else
                {
                  v180 = v1[48];
                  if (v179 > (v180 - v176) >> 2)
                  {
                    v181 = v180 - v130;
                    v182 = v181 >> 1;
                    if (v181 >> 1 <= v178)
                    {
                      v182 = v110 + 1;
                    }

                    v138 = v181 >= 0x7FFFFFFFFFFFFFFCLL;
                    v183 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v138)
                    {
                      v183 = v182;
                    }

                    if (!(v183 >> 62))
                    {
                      operator new();
                    }

                    goto LABEL_285;
                  }

                  v184 = v126;
                  memset(v176, 255, 4 * v179);
                  v185 = &v176[4 * v179];
                  v1 = a1;
LABEL_192:
                  v1[47] = v185;
                }

                sub_4D9168((v1 + 49), v178, 0);
                v126 = v184;
                v110 = v232;
              }

              v186 = v1[49];
              v187 = *(v186 + 8 * v126);
              if ((v187 & (1 << v125)) != 0)
              {
                goto LABEL_209;
              }

              *(v186 + 8 * v126) = v187 | (1 << v125);
              v189 = v1[53];
              v188 = v1[54];
              if (v189 < v188)
              {
                *v189 = v110;
                v190 = v189 + 4;
                goto LABEL_208;
              }

              v191 = v1[52];
              v192 = v189 - v191;
              v193 = (v189 - v191) >> 2;
              v194 = v193 + 1;
              if ((v193 + 1) >> 62)
              {
LABEL_287:
                sub_1794();
              }

              v195 = v188 - v191;
              if (v195 >> 1 > v194)
              {
                v194 = v195 >> 1;
              }

              if (v195 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v196 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v196 = v194;
              }

              if (v196)
              {
                if (!(v196 >> 62))
                {
                  operator new();
                }

                goto LABEL_285;
              }

              v197 = v193;
              v198 = (4 * v193);
              v199 = &v198[-v197];
              *v198 = v110;
              v190 = v198 + 1;
              memcpy(v199, v191, v192);
              v1[52] = v199;
              v1[53] = v190;
              v1[54] = 0;
              if (v191)
              {
                operator delete(v191);
              }

LABEL_208:
              v1[53] = v190;
LABEL_209:
              *(v1[46] + 4 * v125) = v124;
              v11 = v239;
              v10 = v238 + 2;
              v238 = v10;
              if (v10 == v239)
              {
LABEL_210:
                v200 = v236 + 2;
                v236 = v200;
                if (v200 >= v237)
                {
                  break;
                }

                while (1)
                {
                  v10 = *v200;
                  v11 = v200[1];
                  if (*v200 != v11)
                  {
                    break;
                  }

                  v200 += 2;
                  v236 = v200;
                  if (v200 >= v237)
                  {
                    goto LABEL_6;
                  }
                }

                v238 = *v200;
                v239 = v11;
                if (v10 < v11)
                {
                  goto LABEL_218;
                }

                goto LABEL_8;
              }

LABEL_121:
              if (v10 < v11)
              {
                while (1)
                {
LABEL_218:
                  if ((v241 & 1) == 0)
                  {
                    v201 = v235[0];
                    v202 = *v10;
                    v203 = *(v235[0] + 4136);
                    if (sub_68312C(v203 + 3896))
                    {
                      if (*(v203 + 3944))
                      {
                        if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                        {
                          v223 = sub_A57824(-85.0, 0.0);
                          sub_58168(v223 >> 17, v223 >> 49);
                          dword_27339C0 = v224 | 0x40000000;
                          __cxa_guard_release(&qword_27339C8);
                          v1 = a1;
                        }

                        v204 = __ROR8__(v202, 32);
                        v205 = *(v201 + 4136);
                        if (dword_27339C0 == HIDWORD(v204))
                        {
                          if (!sub_68312C(v205 + 3896) || !*(v205 + 3944))
                          {
                            exception = __cxa_allocate_exception(0x40uLL);
                            v228 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                          }
                        }

                        else
                        {
                          v208 = *(v205 + 3944);
                          v209 = v208[1];
                          if (v209)
                          {
                            v210 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v204 ^ (v204 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v204 ^ (v204 >> 33))) >> 33));
                            v211 = v210 ^ (v210 >> 33);
                            v212 = vcnt_s8(v209);
                            v212.i16[0] = vaddlv_u8(v212);
                            if (v212.u32[0] > 1uLL)
                            {
                              v213 = v211;
                              if (v211 >= *&v209)
                              {
                                v213 = v211 % *&v209;
                              }
                            }

                            else
                            {
                              v213 = (*&v209 - 1) & v211;
                            }

                            v214 = *(*v208 + 8 * v213);
                            if (v214)
                            {
                              v215 = *v214;
                              if (v215)
                              {
                                if (v212.u32[0] < 2uLL)
                                {
                                  v216 = *&v209 - 1;
                                  while (1)
                                  {
                                    v220 = v215[1];
                                    if (v211 == v220)
                                    {
                                      if (*(v215 + 5) == HIDWORD(v204) && *(v215 + 4) == v204)
                                      {
                                        goto LABEL_216;
                                      }
                                    }

                                    else if ((v220 & v216) != v213)
                                    {
                                      goto LABEL_258;
                                    }

                                    v215 = *v215;
                                    if (!v215)
                                    {
                                      goto LABEL_258;
                                    }
                                  }
                                }

                                do
                                {
                                  v218 = v215[1];
                                  if (v211 == v218)
                                  {
                                    if (*(v215 + 5) == HIDWORD(v204) && *(v215 + 4) == v204)
                                    {
                                      goto LABEL_216;
                                    }
                                  }

                                  else
                                  {
                                    if (v218 >= *&v209)
                                    {
                                      v218 %= *&v209;
                                    }

                                    if (v218 != v213)
                                    {
                                      break;
                                    }
                                  }

                                  v215 = *v215;
                                }

                                while (v215);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_258:
                  if (v240 == 1)
                  {
                    break;
                  }

                  v221 = sub_C9E544(v235[0] + 3896);
                  v10 = v238;
                  if (v221 >= *(v238 + 14))
                  {
                    if (v240)
                    {
                      goto LABEL_267;
                    }

                    v222 = sub_585D8((v235[0] + 3896));
                    v10 = v238;
                    if ((v222 & 1) != 0 || (*(v238 + 15) & 1) == 0)
                    {
                      goto LABEL_267;
                    }
                  }

LABEL_216:
                  v10 = v238 + 2;
                  v238 = v10;
                  if (v10 == v239)
                  {
                    v206 = v236 + 2;
                    v236 = v206;
                    if (v206 >= v237)
                    {
                      goto LABEL_267;
                    }

                    while (1)
                    {
                      v10 = *v206;
                      v207 = v206[1];
                      if (*v206 != v207)
                      {
                        break;
                      }

                      v206 += 2;
                      v236 = v206;
                      if (v206 >= v237)
                      {
                        goto LABEL_6;
                      }
                    }

                    v238 = *v206;
                    v239 = v207;
                    if (v10 >= v207)
                    {
                      goto LABEL_267;
                    }
                  }

                  else if (v10 >= v239)
                  {
                    goto LABEL_267;
                  }
                }

                v10 = v238;
LABEL_267:
                v11 = v239;
              }

              goto LABEL_8;
            }
          }

          v11 = v239;
          v10 = v238 + 2;
          v238 = v10;
          if (v10 == v239)
          {
            goto LABEL_210;
          }

          goto LABEL_121;
        }

LABEL_12:
        ++v12;
      }
    }

LABEL_6:
    v8 = v234 + 1;
    if (v234 + 1 != v230)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_B52388(uint64_t result)
{
  v1 = *(result + 124);
  if (v1)
  {
    v2 = result;
    for (i = 0; i != v1; ++i)
    {
      v14 = 0;
      v4 = *(v2 + 216);
      v5 = (v4 + (*(sub_B45D70(v2 + 128, &v14) + 4) << 6));
      v14 = 0;
      v6 = *(v2 + 216);
      v7 = sub_B45D70(v2 + 128, &v14);
      sub_B459B8(v2 + 128, 0, v5, (v6 + (*(v7 + 8) << 6)));
      sub_B52A44((v2 + 128), i + *(v2 + 120) + *(v2 + 120) * *(v2 + 440) + 2, 0);
      v14 = 0;
      v8 = *(v2 + 216);
      v9 = v8 + (*(sub_B45D70(v2 + 128, &v14) + 4) << 6);
      v14 = 0;
      v10 = *(v2 + 216);
      result = sub_B45D70(v2 + 128, &v14);
      v11 = v10 + (*(result + 8) << 6);
      if (v9 != v11)
      {
        v12 = *(v2 + 608);
        v13 = *(v2 + 600);
        do
        {
          v12 = v12 + 1.0;
          v13 += *(v9 + 28);
          v9 += 64;
        }

        while (v9 != v11);
        *(v2 + 608) = v12;
        *(v2 + 600) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_B524BC(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v37 = a2;
  sub_B47A80(a1, &v37, v34);
  v12 = a1[6];
  v13 = a1[7];
  v26 = a1;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  v28 = v13;
  v29 = 0;
  v30 = v12;
  v31 = v13;
  v32 = v13;
  v33 = 0;
  sub_B47094(&v26);
  if (*&v34[8] == v27 && *&v34[24] == v28 && (*&v34[24] == *&v34[16] || v35 == v29))
  {
    goto LABEL_7;
  }

  v14 = *(v35 + 4);
  v15 = *(v35 + 8);
  v16 = v15 - v14;
  if (v15 == v14)
  {
    goto LABEL_7;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v17 = 0;
    do
    {
      sub_B47C7C(a1, a2, v17++);
    }

    while (v16 != v17);
LABEL_7:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  v18 = 0;
  v20 = 0;
  do
  {
    v21 = sub_B47C7C(a1, a2, v20);
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[1];
    *v34 = *v21;
    *&v34[16] = v24;
    v35 = v22;
    v36 = v23;
    if (SHIDWORD(v24) >= a6)
    {
      v25 = sub_B528D0(a1, v34, a3, a4, a5);
      v18 = v25 | v18 | (v25 | v18) & 0xFF00;
    }

    ++v20;
  }

  while (v16 != v20);
  if ((v18 & 0x100) != 0)
  {
    sub_B47970(a1, a3);
    sub_B47970(a1, a4);
  }

  return v18 & 1;
}

unint64_t sub_B52680(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v40 = a3;
  sub_B47A80(a1, &v40, v36);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v27 = a1;
  v28 = v10;
  v29 = v11;
  v30 = v11;
  v31 = 0;
  v32 = v10;
  v33 = v11;
  v34 = v11;
  v35 = 0;
  sub_B47094(&v27);
  if ((v36[1] != v28 || v37 != v29 || v38 != v30 || v38 != v37 && v39 != v31) && *(v39 + 8) != *(v39 + 4))
  {
    LODWORD(v36[0]) = a3;
    v12 = *(a1 + 88);
    v13 = (v12 + (*(sub_B45D70(a1, v36) + 4) << 6));
    LODWORD(v36[0]) = a3;
    v14 = *(a1 + 88);
    v15 = (v14 + (*(sub_B45D70(a1, v36) + 8) << 6));
    if (v13 != v15)
    {
      v16 = 0;
      while (1)
      {
        v21 = v13[7];
        if (v21 != 0x7FFFFFFF)
        {
          v22 = *(a2 + 28);
          if (v21 >= v22 && v13[8] <= *(a2 + 32))
          {
            v23 = *(a2 + 36);
            v24 = v13[9];
            if (v24 <= v23 && (v24 != v23 || v21 != v22 || v13[11] - 10 * v21 <= *(a2 + 44) - 10 * v22))
            {
              v19 = 0;
              return v19 & 0xFFFFFFFFFFFF00FFLL | (v16 << 8);
            }
          }

          if (v22 >= v21 && *(a2 + 32) <= v13[8])
          {
            v25 = v13[9];
            v26 = *(a2 + 36);
            if (v26 <= v25 && (v26 != v25 || v22 != v21 || *(a2 + 44) - 10 * v22 <= v13[11] - 10 * v21))
            {
              v13[7] = 0x7FFFFFFF;
              v16 = 1;
            }
          }
        }

        v13 += 16;
        if (v13 == v15)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v16 = 0;
LABEL_7:
  v17 = sub_B4725C(a1, a3, a2);
  if (a5)
  {
    *(v17 + 52) = -1;
    *(v17 + 60) = 0x7FFFFFFF;
  }

  if (a4)
  {
    v18 = *(a1 + 136);
    *(a1 + 136) = v18 + 1;
    *(v17 + 24) = v18;
    *(v17 + 20) = *(a2 + 24);
  }

  v19 = 1;
  return v19 & 0xFFFFFFFFFFFF00FFLL | (v16 << 8);
}

unint64_t sub_B528D0(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a5 == -1 || (v27 = a5, v9 = *(a1 + 88), v11 = (v9 + (*(sub_B45D70(a1, &v27) + 4) << 6)), v28 = a5, v12 = *(a1 + 88), v13 = (v12 + (*(sub_B45D70(a1, &v28) + 8) << 6)), v11 == v13))
  {
LABEL_3:
    v14 = sub_B52680(a1, a2, a4, 0, 1);
    v15 = v14;
    v16 = v14 >> 8;
    v17 = v14 >> 16;
    if (v14)
    {
      sub_B52680(a1, a2, a3, 1, 1);
      *(v18 + 52) = -1;
      *(v18 + 60) = 0x7FFFFFFF;
    }
  }

  else
  {
    v20 = a2[7];
    v21 = a2[9];
    while (1)
    {
      v22 = v11[7];
      if (v22 != 0x7FFFFFFF && v22 >= v20 && v11[8] <= a2[8])
      {
        v24 = v11[9];
        if (v24 <= v21)
        {
          v25 = v11[11] - 10 * v22 > a2[11] - 10 * v20 && v24 == v21;
          if (!v25 || v22 != v20)
          {
            break;
          }
        }
      }

      v11 += 16;
      if (v11 == v13)
      {
        goto LABEL_3;
      }
    }

    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = 0;
  }

  return (v16 << 8) | (v17 << 16) | v15;
}

uint64_t sub_B52A44(void *a1, unsigned int a2, unsigned int a3)
{
  v31 = a2;
  sub_B47A80(a1, &v31, v28);
  v6 = a1[6];
  v7 = a1[7];
  v20 = a1;
  *&v21 = v6;
  *(&v21 + 1) = v7;
  v22 = v7;
  v23 = 0;
  v24 = v6;
  v25 = v7;
  v26 = v7;
  v27 = 0;
  sub_B47094(&v20);
  if (*&v28[8] == v21 && *&v28[24] == v22 && (*&v28[24] == *&v28[16] || v29 == v23))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v8 = *(v29 + 4);
    v9 = *(v29 + 8);
    v10 = 0;
    v11 = v9 - v8;
    if (v9 != v8)
    {
      v12 = 0;
      do
      {
        v13 = sub_B47C7C(a1, a2, v12);
        v14 = v13[3];
        v16 = *v13;
        v15 = v13[1];
        v29 = v13[2];
        v30 = v14;
        *v28 = v16;
        *&v28[16] = v15;
        v17 = sub_B52680(a1, v28, a3, 0, 1);
        v18 = v17 | v10;
        v10 = v17 | v10 | (v17 | v10) & 0xFF00;
        ++v12;
      }

      while (v11 != v12);
      if ((v18 & 0x100) != 0)
      {
        sub_B47970(a1, a3);
      }
    }
  }

  return v10 & 1;
}

unint64_t sub_B52B94(uint64_t a1, int a2, unsigned int a3)
{
  v5 = a1;
  v327 = a3;
  *(a1 + 624) = *(a1 + 624) + 1.0;
  v6 = a3;
  v305 = *sub_A9C5E0((*(a1 + 40) + 88), a3);
  v7 = *(v5 + 368);
  v8 = (*(v5 + 376) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(v5 + 376) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(v5 + 368, v9 - v8);
    }

    sub_4D9168(v5 + 392, a3 + 1, 0);
  }

  v10 = *(v5 + 392);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(v5 + 416, &v327);
    v6 = v327;
  }

  v301 = *(*(v5 + 368) + 4 * v6);
  result = sub_A9D53C(&v325, *(v5 + 24), v305);
  v13 = v325;
  if (v325 < v326)
  {
    v299 = ~a2;
    v300 = a2 + 2;
    v302 = a2 + 1;
    v311 = v5;
    do
    {
      *(v5 + 632) = *(v5 + 632) + 1.0;
      v310 = *v13;
      LODWORD(v313) = 0;
      v14 = *(v5 + 216);
      v15 = (v14 + (*(sub_B45D70(v5 + 128, &v313) + 4) << 6));
      LODWORD(v313) = 0;
      v16 = *(v5 + 216);
      v17 = sub_B45D70(v5 + 128, &v313);
      sub_B459B8(v5 + 128, 0, v15, (v16 + (*(v17 + 8) << 6)));
      result = sub_A79708(&v313, *(v5 + 24), v305, v301, 0, 1);
      v19 = v316;
      v18 = v317;
      while (v18 >= v19 && v18 < v318)
      {
        v20 = 0;
        v21 = __ROR8__(*v18, 32);
        v22 = *(v5 + 32);
        v23 = *(v22 + 72) - 1;
        v24 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v21 ^ (v21 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v21 ^ (v21 >> 33))) >> 33));
        v25 = v24 ^ (v24 >> 33);
        v26 = *(v22 + 48);
        v27 = v26 + 11;
        v28 = -1;
        for (i = v25; ; i = v20 + v30)
        {
          v30 = i & v23;
          v31 = (i & v23) / 0x30;
          v32 = (i & v23) % 0x30;
          v33 = (v26 + 16 * v31);
          if (((*(v33 + (v32 >> 3) + 10) >> (v32 & 7)) & 1) == 0)
          {
            if (v28 == -1)
            {
              v69 = v30;
            }

            else
            {
              v69 = v28;
            }

            if (!sub_B35190(v22, 1))
            {
              goto LABEL_102;
            }

            goto LABEL_58;
          }

          v34 = *v33;
          if (!*(v22 + 40))
          {
            break;
          }

          v35 = v33 + 10;
          if (v32 < 9)
          {
            v37 = 0;
            LOBYTE(v38) = v32;
            goto LABEL_32;
          }

          v36 = (48 * v31 - v30 + 7);
          if (v36 <= 0xFFF7)
          {
            LOWORD(v36) = -9;
          }

          if ((v36 + v30 - 48 * v31) >= 8u)
          {
            v40 = 0;
            v41 = 0;
            v42 = ((v36 + v30 - 48 * v31) >> 3) + 1;
            v38 = v32 - 8 * ((((v36 + v30 - 48 * v31) >> 3) + 1) & 0x3FFE);
            v39 = &v35[(((v36 + v30 - 48 * v31) >> 3) + 1) & 0x3FFE];
            v43 = (v27 + 16 * v31);
            v44 = v42 & 0x3FFE;
            do
            {
              v45 = *(v43 - 1);
              v46 = *v43;
              v43 += 2;
              v40 += byte_22A7D46[v45];
              v41 += byte_22A7D46[v46];
              v44 -= 2;
            }

            while (v44);
            v37 = v41 + v40;
            if ((v42 & 0x3FFE) == v42)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v37 = 0;
            v38 = v32;
            v39 = v33 + 10;
          }

          do
          {
            v47 = *v39++;
            v37 += byte_22A7D46[v47];
            v38 -= 8;
          }

          while (v38 > 8u);
LABEL_31:
          v35 += ((v32 - 9) >> 3) + 1;
LABEL_32:
          v48 = (v34 + 12 * (v37 + byte_22A7D46[~(-1 << v38) & *v35]));
          if (*(v22 + 36) != v48[1] || *(v22 + 32) != *v48)
          {
            break;
          }

          if (v28 == -1)
          {
            v28 = v30;
          }

LABEL_18:
          ++v20;
        }

        v50 = v33 + 10;
        if (v32 < 9)
        {
          v52 = 0;
          LOBYTE(v53) = v32;
        }

        else
        {
          v51 = (48 * v31 - v30 + 7);
          if (v51 <= 0xFFF7)
          {
            LOWORD(v51) = -9;
          }

          if ((v51 + v30 - 48 * v31) < 8u)
          {
            v52 = 0;
            v53 = v32;
            v54 = v33 + 10;
            goto LABEL_45;
          }

          v55 = 0;
          v56 = 0;
          v57 = ((v51 + v30 - 48 * v31) >> 3) + 1;
          v53 = v32 - 8 * ((((v51 + v30 - 48 * v31) >> 3) + 1) & 0x3FFE);
          v54 = &v50[(((v51 + v30 - 48 * v31) >> 3) + 1) & 0x3FFE];
          v58 = (v27 + 16 * v31);
          v59 = v57 & 0x3FFE;
          do
          {
            v60 = *(v58 - 1);
            v61 = *v58;
            v58 += 2;
            v55 += byte_22A7D46[v60];
            v56 += byte_22A7D46[v61];
            v59 -= 2;
          }

          while (v59);
          v52 = v56 + v55;
          if ((v57 & 0x3FFE) != v57)
          {
            do
            {
LABEL_45:
              v62 = *v54++;
              v52 += byte_22A7D46[v62];
              v53 -= 8;
            }

            while (v53 > 8u);
          }

          v50 += ((v32 - 9) >> 3) + 1;
        }

        if (v21 != *(v34 + 12 * (v52 + byte_22A7D46[~(-1 << v53) & *v50])))
        {
          goto LABEL_18;
        }

        if (v30 != -1)
        {
          v63 = v33 + 10;
          if (v32 < 9)
          {
            v66 = 0;
            v5 = v311;
          }

          else
          {
            v64 = (48 * v31 - v30 + 7);
            if (v64 <= 0xFFF7)
            {
              LOWORD(v64) = -9;
            }

            v65 = v64 + v30 - 48 * v31;
            v5 = v311;
            v66 = 0;
            if (v65 < 8u)
            {
              v67 = v32;
              v68 = v33 + 10;
              goto LABEL_107;
            }

            v117 = 0;
            v118 = (v65 >> 3) + 1;
            v67 = v32 - 8 * (((v65 >> 3) + 1) & 0x3FFE);
            v68 = &v63[v118 & 0x3FFE];
            v119 = v33 + 11;
            v120 = v118 & 0x3FFE;
            do
            {
              v121 = *(v119 - 1);
              v122 = *v119;
              v119 += 2;
              v66 += byte_22A7D46[v121];
              v117 += byte_22A7D46[v122];
              v120 -= 2;
            }

            while (v120);
            v66 += v117;
            if ((v118 & 0x3FFE) != v118)
            {
              do
              {
LABEL_107:
                v123 = *v68++;
                v66 += byte_22A7D46[v123];
                v67 -= 8;
              }

              while (v67 > 8u);
            }

            v63 += ((v32 - 9) >> 3) + 1;
            LOBYTE(v32) = v67;
          }

          v124 = *(v22 + 56);
          v116 = (v34 + 12 * (v66 + byte_22A7D46[~(-1 << v32) & *v63]));
          if ((*v33 + 12 * *(v33 + 4)) == v116 && v33 + 2 != v124)
          {
            v126 = v33 + 4;
            do
            {
              if (*(v126 - 4))
              {
                v127 = 1;
              }

              else
              {
                v127 = v126 == v124;
              }

              v126 += 2;
            }

            while (!v127);
            v116 = *(v126 - 4);
          }

          goto LABEL_120;
        }

        v69 = -1;
        if (!sub_B35190(v22, 1))
        {
LABEL_102:
          v328 = v21;
          v329 = -1;
          sub_B356C0(v22, &v328, v69, &v330);
          v116 = v334;
          v5 = v311;
          goto LABEL_120;
        }

LABEL_58:
        v70 = 0;
        v328 = v21;
        v329 = -1;
        v71 = *(v22 + 72) - 1;
        v72 = *(v22 + 48);
        v73 = v72 + 11;
        v74 = -1;
        while (2)
        {
          v75 = v25 & v71;
          v76 = (v25 & v71) / 0x30;
          v77 = (v25 & v71) % 0x30;
          v78 = v72 + 16 * v76;
          if (((*(v78 + (v77 >> 3) + 10) >> (v77 & 7)) & 1) == 0)
          {
            if (v74 == -1)
            {
              v115 = v25 & v71;
            }

            else
            {
              v115 = v74;
            }

            goto LABEL_100;
          }

          v79 = *(v22 + 40);
          v80 = *v78;
          if (v79)
          {
            v81 = (v78 + 10);
            if (v77 < 9)
            {
              v83 = 0;
              v84 = (v25 & v71) % 0x30;
            }

            else
            {
              v82 = (48 * v76 - v75 + 7);
              if (v82 <= 0xFFF7)
              {
                LOWORD(v82) = -9;
              }

              if ((v82 + v75 - 48 * v76) < 8u)
              {
                v83 = 0;
                v84 = (v25 & v71) % 0x30;
                v85 = (v78 + 10);
                goto LABEL_73;
              }

              v86 = 0;
              v87 = 0;
              v88 = ((v82 + v75 - 48 * v76) >> 3) + 1;
              LOWORD(v84) = v77 - 8 * ((((v82 + v75 - 48 * v76) >> 3) + 1) & 0x3FFE);
              v85 = &v81[(((v82 + v75 - 48 * v76) >> 3) + 1) & 0x3FFE];
              v89 = (v73 + 16 * v76);
              v90 = v88 & 0x3FFE;
              do
              {
                v91 = *(v89 - 1);
                v92 = *v89;
                v89 += 2;
                v86 += byte_22A7D46[v91];
                v87 += byte_22A7D46[v92];
                v90 -= 2;
              }

              while (v90);
              v83 = v87 + v86;
              if ((v88 & 0x3FFE) != v88)
              {
                do
                {
LABEL_73:
                  v93 = *v85++;
                  v83 += byte_22A7D46[v93];
                  LOWORD(v84) = v84 - 8;
                }

                while (v84 > 8u);
              }

              v81 += ((v77 - 9) >> 3) + 1;
            }

            v94 = &v80[3 * (v83 + byte_22A7D46[~(-1 << v84) & *v81])];
            if (*(v22 + 36) == v94[1] && *(v22 + 32) == *v94)
            {
              if (v74 == -1)
              {
                v74 = v25 & v71;
              }

LABEL_61:
              v25 = ++v70 + v75;
              continue;
            }
          }

          break;
        }

        v96 = (v78 + 10);
        if (v77 < 9)
        {
          v98 = 0;
          v99 = (v25 & v71) % 0x30;
        }

        else
        {
          v97 = (48 * v76 - v75 + 7);
          if (v97 <= 0xFFF7)
          {
            LOWORD(v97) = -9;
          }

          if ((v97 + v75 - 48 * v76) < 8u)
          {
            v98 = 0;
            v99 = (v25 & v71) % 0x30;
            v100 = (v78 + 10);
            goto LABEL_88;
          }

          v101 = 0;
          v102 = 0;
          v103 = ((v97 + v75 - 48 * v76) >> 3) + 1;
          LOWORD(v99) = v77 - 8 * ((((v97 + v75 - 48 * v76) >> 3) + 1) & 0x3FFE);
          v100 = &v96[(((v97 + v75 - 48 * v76) >> 3) + 1) & 0x3FFE];
          v104 = (v73 + 16 * v76);
          v105 = v103 & 0x3FFE;
          do
          {
            v106 = *(v104 - 1);
            v107 = *v104;
            v104 += 2;
            v101 += byte_22A7D46[v106];
            v102 += byte_22A7D46[v107];
            v105 -= 2;
          }

          while (v105);
          v98 = v102 + v101;
          if ((v103 & 0x3FFE) != v103)
          {
            do
            {
LABEL_88:
              v108 = *v100++;
              v98 += byte_22A7D46[v108];
              LOWORD(v99) = v99 - 8;
            }

            while (v99 > 8u);
          }

          v96 += ((v77 - 9) >> 3) + 1;
        }

        if (v21 != *&v80[3 * (v98 + byte_22A7D46[~(-1 << v99) & *v96])])
        {
          goto LABEL_61;
        }

        if (v75 == -1)
        {
          v115 = -1;
LABEL_100:
          v5 = v311;
          sub_B356C0(v22, &v328, v115, &v330);
          v116 = v334;
          goto LABEL_120;
        }

        v109 = (v78 + 10);
        v5 = v311;
        if (v77 < 9)
        {
          v112 = 0;
        }

        else
        {
          v110 = (48 * v76 - v75 + 7);
          if (v110 <= 0xFFF7)
          {
            LOWORD(v110) = -9;
          }

          v111 = v110 + v75 - 48 * v76;
          if (v111 < 8u)
          {
            v112 = 0;
            v113 = v77;
            v114 = (v78 + 10);
            goto LABEL_162;
          }

          v165 = 0;
          v166 = 0;
          v167 = (v111 >> 3) + 1;
          v113 = v77 - 8 * (((v111 >> 3) + 1) & 0x3FFE);
          v114 = &v109[v167 & 0x3FFE];
          v168 = (v78 + 11);
          v169 = v167 & 0x3FFE;
          do
          {
            v170 = *(v168 - 1);
            v171 = *v168;
            v168 += 2;
            v165 += byte_22A7D46[v170];
            v166 += byte_22A7D46[v171];
            v169 -= 2;
          }

          while (v169);
          v112 = v166 + v165;
          if ((v167 & 0x3FFE) != v167)
          {
            do
            {
LABEL_162:
              v172 = *v114++;
              v112 += byte_22A7D46[v172];
              v113 -= 8;
            }

            while (v113 > 8u);
          }

          v109 += ((v77 - 9) >> 3) + 1;
          LOBYTE(v77) = v113;
        }

        v173 = *(v22 + 56);
        v116 = &v80[3 * (v112 + byte_22A7D46[~(-1 << v77) & *v109])];
        if ((*v78 + 12 * *(v78 + 8)) == v116)
        {
          v78 += 16;
          if (v78 != v173)
          {
            do
            {
              v174 = v78;
              if (*(v78 + 8))
              {
                break;
              }

              v78 += 16;
            }

            while (v174 + 2 != v173);
            v116 = *v174;
          }
        }

        if (v78 != v173 && v79)
        {
          do
          {
            if (*(v22 + 36) != v116[1] || *(v22 + 32) != *v116)
            {
              break;
            }

            v116 += 3;
            if (v116 == (*v78 + 12 * *(v78 + 8)))
            {
              v78 += 16;
              if (v78 != v173)
              {
                do
                {
                  v190 = v78;
                  if (*(v78 + 8))
                  {
                    break;
                  }

                  v78 += 16;
                }

                while (v190 + 2 != v173);
                v116 = *v190;
              }
            }
          }

          while (v78 != v173);
        }

LABEL_120:
        v128 = v116[2];
        if (v128 == -1)
        {
          v129 = *(v22 + 112);
          *(v22 + 112) = v129 + 1;
          v116[2] = v129;
          v131 = *(v22 + 96);
          v130 = *(v22 + 104);
          if (v131 >= v130)
          {
            v133 = *(v22 + 88);
            v134 = v131 - v133;
            v135 = (v131 - v133) >> 3;
            v136 = v135 + 1;
            if ((v135 + 1) >> 61)
            {
              sub_1794();
            }

            v137 = v130 - v133;
            if (v137 >> 2 > v136)
            {
              v136 = v137 >> 2;
            }

            if (v137 >= 0x7FFFFFFFFFFFFFF8)
            {
              v138 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v138 = v136;
            }

            if (v138)
            {
              if (!(v138 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v139 = (v131 - v133) >> 3;
            v140 = (8 * v135);
            v141 = (8 * v135 - 8 * v139);
            *v140 = v21;
            v132 = v140 + 1;
            memcpy(v141, v133, v134);
            *(v22 + 88) = v141;
            *(v22 + 96) = v132;
            *(v22 + 104) = 0;
            if (v133)
            {
              operator delete(v133);
            }

            v5 = v311;
          }

          else
          {
            *v131 = v21;
            v132 = v131 + 1;
          }

          *(v22 + 96) = v132;
          v128 = v116[2];
        }

        v312 = v128;
        result = sub_C435EC((v5 + 448), v128, v21);
        if ((result & 1) == 0)
        {
          if ((*(v5 + 21) & 1) == 0)
          {
            LODWORD(v330) = 0;
            v151 = *(v5 + 216);
            v152 = (v151 + (*(sub_B45D70(v5 + 128, &v330) + 4) << 6));
            LODWORD(v330) = 0;
            v153 = *(v5 + 216);
            v154 = sub_B45D70(v5 + 128, &v330);
            result = sub_B459B8(v5 + 128, 0, v152, (v153 + (*(v154 + 8) << 6)));
          }

          goto LABEL_268;
        }

        LODWORD(v330) = 0;
        if (*(v5 + 208) != *(v5 + 168))
        {
          result = sub_B45FDC(v5 + 128, &v330);
          if (result != -1)
          {
            v142 = *(v5 + 176) + 16 * (result / 0x30);
            v143 = (v142 + 10);
            v144 = result % 0x30;
            if (result % 0x30 < 9)
            {
              v148 = 0;
            }

            else
            {
              v145 = 48 * (result / 0x30);
              v146 = (v145 - result + 7);
              if (v146 <= 0xFFF7)
              {
                LOWORD(v146) = -9;
              }

              v147 = v146 + result - v145;
              if (v147 < 8u)
              {
                v148 = 0;
                v149 = result % 0x30;
                v150 = (v142 + 10);
                goto LABEL_152;
              }

              v155 = 0;
              v156 = 0;
              v157 = (v147 >> 3) + 1;
              LOWORD(v149) = v144 - 8 * (((v147 >> 3) + 1) & 0x3FFE);
              v150 = &v143[v157 & 0x3FFE];
              result = v142 + 11;
              v158 = v157 & 0x3FFE;
              do
              {
                v159 = *(result - 1);
                v160 = *result;
                result += 2;
                v155 += byte_22A7C46[v159];
                v156 += byte_22A7C46[v160];
                v158 -= 2;
              }

              while (v158);
              v148 = v156 + v155;
              if ((v157 & 0x3FFE) != v157)
              {
                do
                {
LABEL_152:
                  v161 = *v150++;
                  v148 += byte_22A7C46[v161];
                  LOWORD(v149) = v149 - 8;
                }

                while (v149 > 8u);
              }

              v143 += ((v144 - 9) >> 3) + 1;
              LOBYTE(v144) = v149;
            }

            v162 = *(v5 + 184);
            v163 = (*v142 + 12 * (v148 + byte_22A7C46[~(-1 << v144) & *v143]));
            if ((*v142 + 12 * *(v142 + 8)) == v163)
            {
              v142 += 16;
              if (v142 != v162)
              {
                do
                {
                  v164 = v142;
                  if (*(v142 + 8))
                  {
                    break;
                  }

                  v142 += 16;
                }

                while (v164 + 2 != v162);
                v163 = *v164;
              }
            }

            if (v142 != v162)
            {
              if (*(v5 + 168))
              {
                v175 = v142;
                do
                {
                  if (*(v5 + 160) != *v163)
                  {
                    break;
                  }

                  v163 += 3;
                  if (v163 == (*v142 + 12 * *(v142 + 8)))
                  {
                    v142 += 16;
                    v175 = *(v5 + 184);
                    if (v142 != v162)
                    {
                      do
                      {
                        v176 = v142;
                        if (*(v142 + 8))
                        {
                          v175 = v142;
                          goto LABEL_174;
                        }

                        v142 += 16;
                      }

                      while (v176 + 2 != v162);
                      v175 = *(v5 + 184);
LABEL_174:
                      v163 = *v176;
                    }
                  }
                }

                while (v142 != v162);
              }

              else
              {
                v175 = v142;
              }

              if (v175 != v162 && v163[2] != v163[1])
              {
                LODWORD(v330) = 0;
                v177 = *(v5 + 216);
                v178 = (v177 + (*(sub_B45D70(v5 + 128, &v330) + 4) << 6));
                LODWORD(v330) = 0;
                v179 = *(v5 + 216);
                v180 = (v179 + (*(sub_B45D70(v5 + 128, &v330) + 8) << 6));
                if (v178 != v180)
                {
                  v181 = v322;
                  v182 = v320;
                  v183 = v317;
                  v184 = v315;
                  v185 = (v317 - v316) >> 4;
                  do
                  {
                    v188 = (v182 + 12 * v178[13]);
                    if (v181)
                    {
                      v323 = v178[14];
                      v186 = v178[15];
                      v324 = v186;
                    }

                    else
                    {
                      v186 = *v188;
                    }

                    v187 = (v184 + *(v184 - *v184 + 6));
                    v178[7] = *(&v187[2 * (v188[1] + v185) + 2] + *v187) + v186 - *(v183 + 2);
                    v178 += 16;
                  }

                  while (v178 != v180);
                  v321 = v188;
                }

                sub_B5451C((v5 + 128), 0);
                if ((*(v317 + 15) & 2) != 0 && (!v319 || (*(v319 + 4 * ((v317 - v316) >> 4)) & v310) == 0))
                {
                  v191 = *(v5 + 120);
                  if (*(v5 + 20) == 1)
                  {
                    v192 = v191 + v191 * *(v5 + 440);
                    v193 = v312;
                    v194 = *(v5 + 48);
                    if (v194)
                    {
                      goto LABEL_214;
                    }

LABEL_216:
                    v195 = 0x80000000;
                  }

                  else
                  {
                    v192 = -1;
                    v193 = v312;
                    v194 = *(v5 + 48);
                    if (!v194)
                    {
                      goto LABEL_216;
                    }

LABEL_214:
                    v195 = sub_B394F8(v194, v193, *(v5 + 124) + v299);
                  }

                  if (sub_B5475C((v5 + 128), 0, v300 + v191 + v191 * v193, v191 + v191 * v193, v192, v195))
                  {
                    v196 = v312;
                    if (*(v5 + 280) <= v312)
                    {
                      sub_4D9168(v5 + 272, v312 + 1, 0);
                      v196 = v312;
                    }

                    if (((*(*(v5 + 272) + ((v196 >> 3) & 0x1FFFFFF8)) >> v196) & 1) == 0)
                    {
                      sub_DD38(v5 + 296, &v312);
                      *(*(v5 + 272) + ((v312 >> 3) & 0x1FFFFFF8)) |= 1 << v312;
                    }
                  }
                }

                LODWORD(v330) = 0;
                v197 = *(v5 + 216);
                v198 = (v197 + (*(sub_B45D70(v5 + 128, &v330) + 4) << 6));
                LODWORD(v330) = 0;
                v199 = *(v5 + 216);
                v200 = (v199 + (*(sub_B45D70(v5 + 128, &v330) + 8) << 6));
                if (v198 != v200)
                {
                  v201 = v322;
                  v202 = v320;
                  v203 = v315;
                  v204 = (v317 - v316) >> 4;
                  do
                  {
                    v207 = (v202 + 12 * v198[13]);
                    if (v201)
                    {
                      v323 = v198[14];
                      v205 = v198[15];
                      v324 = v205;
                    }

                    else
                    {
                      v205 = *v207;
                    }

                    v206 = (v203 + *(v203 - *v203 + 6));
                    v198[7] = *(&v206[2 * (v207[1] + v204) + 1] + *v206) + v205;
                    v198 += 16;
                  }

                  while (v198 != v200);
                  v321 = v207;
                }

                result = sub_B5451C((v5 + 128), 0);
              }
            }
          }
        }

        if (*(v317 + 15))
        {
          if (v319)
          {
            if (*(v319 + 4 * ((v317 - v316) >> 4)) != v310)
            {
              goto LABEL_268;
            }
          }

          else if (v310)
          {
            goto LABEL_268;
          }

          v208 = v302 + *(v5 + 120) + *(v5 + 120) * v312;
          LODWORD(v330) = v208;
          if (*(v5 + 208) == *(v5 + 168))
          {
            goto LABEL_268;
          }

          result = sub_B45FDC(v5 + 128, &v330);
          if (result == -1)
          {
            goto LABEL_268;
          }

          v209 = *(v5 + 176) + 16 * (result / 0x30);
          v210 = (v209 + 10);
          v211 = result % 0x30;
          if (result % 0x30 < 9)
          {
            v215 = 0;
          }

          else
          {
            v212 = 48 * (result / 0x30);
            v213 = (v212 - result + 7);
            if (v213 <= 0xFFF7)
            {
              LOWORD(v213) = -9;
            }

            v214 = v213 + result - v212;
            if (v214 < 8u)
            {
              v215 = 0;
              v216 = result % 0x30;
              v217 = (v209 + 10);
              goto LABEL_246;
            }

            v218 = 0;
            v219 = 0;
            v220 = (v214 >> 3) + 1;
            LOWORD(v216) = v211 - 8 * (((v214 >> 3) + 1) & 0x3FFE);
            v217 = &v210[v220 & 0x3FFE];
            result = v209 + 11;
            v221 = v220 & 0x3FFE;
            do
            {
              v222 = *(result - 1);
              v223 = *result;
              result += 2;
              v218 += byte_22A7C46[v222];
              v219 += byte_22A7C46[v223];
              v221 -= 2;
            }

            while (v221);
            v215 = v219 + v218;
            if ((v220 & 0x3FFE) != v220)
            {
              do
              {
LABEL_246:
                v224 = *v217++;
                v215 += byte_22A7C46[v224];
                LOWORD(v216) = v216 - 8;
              }

              while (v216 > 8u);
            }

            v210 += ((v211 - 9) >> 3) + 1;
            LOBYTE(v211) = v216;
          }

          v225 = *(v5 + 184);
          v226 = (*v209 + 12 * (v215 + byte_22A7C46[~(-1 << v211) & *v210]));
          if ((*v209 + 12 * *(v209 + 8)) == v226)
          {
            v209 += 16;
            if (v209 != v225)
            {
              do
              {
                v227 = v209;
                if (*(v209 + 8))
                {
                  break;
                }

                v209 += 16;
              }

              while (v227 + 2 != v225);
              v226 = *v227;
            }
          }

          if (v209 != v225)
          {
            if (*(v5 + 168))
            {
              v228 = v209;
              do
              {
                if (*(v5 + 160) != *v226)
                {
                  break;
                }

                v226 += 3;
                if (v226 == (*v209 + 12 * *(v209 + 8)))
                {
                  v209 += 16;
                  v228 = *(v5 + 184);
                  if (v209 != v225)
                  {
                    do
                    {
                      v229 = v209;
                      if (*(v209 + 8))
                      {
                        v228 = v209;
                        goto LABEL_257;
                      }

                      v209 += 16;
                    }

                    while (v229 + 2 != v225);
                    v228 = *(v5 + 184);
LABEL_257:
                    v226 = *v229;
                  }
                }
              }

              while (v209 != v225);
            }

            else
            {
              v228 = v209;
            }

            if (v228 != v225)
            {
              v232 = v226 + 1;
              v231 = v226[1];
              v230 = v232[1];
              v233 = v230 - v231;
              if (v230 != v231)
              {
                v237 = 0;
                v304 = v208;
                v303 = v230 - v231;
                do
                {
                  v238 = sub_B47C7C((v5 + 128), v208, v237);
                  v239 = *(v238 + 28);
                  if (v322 == 1)
                  {
                    result = sub_A84F48(*(v5 + 24), &v313, v239, 1u);
                    if ((result & 1) == 0)
                    {
                      goto LABEL_287;
                    }
                  }

                  else
                  {
                    result = sub_A8552C(&v313, v239, 1);
                    if (!result)
                    {
                      goto LABEL_287;
                    }
                  }

                  v308 = *(v238 + 20);
                  v240 = *(v238 + 32);
                  v309 = *(v238 + 40);
                  v306 = *(v238 + 36);
                  v307 = *(v238 + 44);
                  v241 = *(v238 + 48);
                  v242 = *(v5 + 24);
                  v243 = sub_A57920((v242 + 4136), v305);
                  v244 = v243;
                  v245 = (v243 - *v243);
                  if (*v245 >= 0xFu && (v246 = v245[7]) != 0)
                  {
                    v247 = *(v242 + 4136);
                    v248 = sub_4FC268(*(v243 + v246));
                    if (sub_C9E594(v247 + 3896, v248))
                    {
                      goto LABEL_299;
                    }
                  }

                  else
                  {
                    v252 = *(v242 + 4136);
                    v253 = sub_4FC268(0x7FFF);
                    if (sub_C9E594(v252 + 3896, v253))
                    {
LABEL_299:
                      v254 = 128;
                      v5 = v311;
                      goto LABEL_302;
                    }
                  }

                  v249 = (v244 - *v244);
                  if (*v249 >= 0xBu && (v250 = v249[5]) != 0)
                  {
                    v251 = *(v244 + v250);
                  }

                  else
                  {
                    v251 = 0;
                  }

                  v5 = v311;
                  v254 = sub_A882D4(v251);
LABEL_302:
                  v255 = v324;
                  v256 = 0xFFFFFFFF00000000;
                  if (v322)
                  {
                    v256 = v323 << 32;
                  }

                  v257 = (-1431655765 * ((v321 - v320) >> 2)) | v256;
                  if (!v322)
                  {
                    v255 = 0x7FFFFFFF;
                  }

                  v258 = (v315 + *(v315 - *v315 + 6));
                  v259 = v258 + *v258;
                  v260 = &v324;
                  if (!v322)
                  {
                    v260 = v321;
                  }

                  v261 = *v260;
                  v262 = &v259[8 * v321[1] + 8 * ((v317 - v316) >> 4)];
                  v263 = *(v262 + 1) + v261;
                  LODWORD(v262) = 10 * (*(v238 + 28) - v261 - *(v262 + 2));
                  *(&v330 + 4) = v257;
                  LODWORD(v330) = (v317 - v316) >> 4;
                  HIDWORD(v330) = v255;
                  v331 = v327;
                  v332 = v308;
                  v333 = v263;
                  LODWORD(v334) = v240;
                  HIDWORD(v334) = v254 + v306;
                  v335 = v309;
                  v336 = v307 - (v262 & ~(v262 >> 31));
                  v337 = v241;
                  v338 = v257;
                  v339 = v255;
                  LODWORD(v328) = 0;
                  v233 = v303;
                  if (*(v5 + 208) == *(v5 + 168))
                  {
                    goto LABEL_285;
                  }

                  v264 = sub_B45FDC(v5 + 128, &v328);
                  if (v264 == -1)
                  {
                    goto LABEL_285;
                  }

                  v265 = *(v5 + 176) + 16 * (v264 / 0x30);
                  v266 = (v265 + 10);
                  v267 = v264 % 0x30;
                  if (v264 % 0x30 < 9)
                  {
                    v271 = 0;
                    goto LABEL_321;
                  }

                  v268 = 48 * (v264 / 0x30);
                  v269 = (v268 - v264 + 7);
                  if (v269 <= 0xFFF7)
                  {
                    LOWORD(v269) = -9;
                  }

                  v270 = v269 + v264 - v268;
                  if (v270 >= 8u)
                  {
                    v274 = 0;
                    v275 = 0;
                    v276 = (v270 >> 3) + 1;
                    LOWORD(v272) = v267 - 8 * (((v270 >> 3) + 1) & 0x3FFE);
                    v273 = &v266[v276 & 0x3FFE];
                    v277 = (v265 + 11);
                    v278 = v276 & 0x3FFE;
                    do
                    {
                      v279 = *(v277 - 1);
                      v280 = *v277;
                      v277 += 2;
                      v274 += byte_22A7C46[v279];
                      v275 += byte_22A7C46[v280];
                      v278 -= 2;
                    }

                    while (v278);
                    v271 = v275 + v274;
                    if ((v276 & 0x3FFE) == v276)
                    {
                      goto LABEL_320;
                    }
                  }

                  else
                  {
                    v271 = 0;
                    v272 = v264 % 0x30;
                    v273 = (v265 + 10);
                  }

                  do
                  {
                    v281 = *v273++;
                    v271 += byte_22A7C46[v281];
                    LOWORD(v272) = v272 - 8;
                  }

                  while (v272 > 8u);
LABEL_320:
                  v266 += ((v267 - 9) >> 3) + 1;
                  LOBYTE(v267) = v272;
LABEL_321:
                  v282 = *(v5 + 184);
                  v283 = (*v265 + 12 * (v271 + byte_22A7C46[~(-1 << v267) & *v266]));
                  if ((*v265 + 12 * *(v265 + 8)) == v283)
                  {
                    v265 += 16;
                    if (v265 != v282)
                    {
                      do
                      {
                        v284 = v265;
                        if (*(v265 + 8))
                        {
                          break;
                        }

                        v265 += 16;
                      }

                      while (v284 + 2 != v282);
                      v283 = *v284;
                    }
                  }

                  if (v265 != v282)
                  {
                    if (*(v5 + 168))
                    {
                      v285 = v265;
                      do
                      {
                        if (*(v5 + 160) != *v283)
                        {
                          break;
                        }

                        v283 += 3;
                        if (v283 == (*v265 + 12 * *(v265 + 8)))
                        {
                          v265 += 16;
                          v285 = *(v5 + 184);
                          if (v265 != v282)
                          {
                            do
                            {
                              v286 = v265;
                              if (*(v265 + 8))
                              {
                                v285 = v265;
                                goto LABEL_330;
                              }

                              v265 += 16;
                            }

                            while (v286 + 2 != v282);
                            v285 = *(v5 + 184);
LABEL_330:
                            v283 = *v286;
                          }
                        }
                      }

                      while (v265 != v282);
                    }

                    else
                    {
                      v285 = v265;
                    }

                    if (v285 != v282 && v283[2] != v283[1])
                    {
                      result = sub_B52680(v5 + 128, &v330, 0, 0, 0);
                      v208 = v304;
                      if ((result & 0x100) == 0)
                      {
                        goto LABEL_287;
                      }

                      LODWORD(v328) = 0;
                      v287 = *(v5 + 216);
                      v288 = (v287 + (*(sub_B45D70(v5 + 128, &v328) + 4) << 6));
                      LODWORD(v328) = 0;
                      v289 = *(v5 + 216);
                      v290 = sub_B45D70(v5 + 128, &v328);
                      v291 = (v289 + (*(v290 + 8) << 6));
                      v292 = v291;
                      if (v288 != v291)
                      {
                        v292 = v288;
                        while (*(v292 + 7) != 0x7FFFFFFF)
                        {
                          v292 += 4;
                          if (v292 == v291)
                          {
                            v292 = (v289 + (*(v290 + 8) << 6));
                            break;
                          }
                        }

                        if (v291 != v292)
                        {
                          for (j = v292 + 4; j != v291; j += 4)
                          {
                            if (*(j + 7) != 0x7FFFFFFF)
                            {
                              v296 = *j;
                              v297 = j[1];
                              v298 = j[3];
                              v292[2] = j[2];
                              v292[3] = v298;
                              *v292 = v296;
                              v292[1] = v297;
                              v292 += 4;
                            }
                          }
                        }
                      }

                      LODWORD(v328) = 0;
                      v293 = *(v5 + 216);
                      v294 = sub_B45D70(v5 + 128, &v328);
                      result = sub_B459B8(v5 + 128, 0, v292, (v293 + (*(v294 + 8) << 6)));
                      goto LABEL_286;
                    }
                  }

LABEL_285:
                  result = sub_B4725C((v5 + 128), 0, &v330);
LABEL_286:
                  v208 = v304;
LABEL_287:
                  ++v237;
                }

                while (v237 != v233);
              }
            }
          }
        }

LABEL_268:
        v19 = v316;
        v18 = v317 - 2;
        v317 -= 2;
        if (*(v313 + 16) == 1 && (v314 & 1) == 0 && v18 >= v316 && v18 < v318)
        {
          do
          {
            v234 = __ROR8__(*v18, 32);
            if (HIDWORD(v234) == 1 && (v234 + 3) < 2)
            {
              break;
            }

            result = sub_2D5204(**(v313 + 4120));
            v19 = v316;
            v18 = v317;
            if (result)
            {
              break;
            }

            v18 = v317 - 2;
            v317 = v18;
          }

          while (v18 >= v316 && v18 < v318);
        }
      }

      v13 = v325 + 4;
      v325 = v13;
    }

    while (v13 < v326);
  }

  return result;
}

char *sub_B5451C(void *a1, unsigned int a2)
{
  v36[0] = a2;
  sub_B47A80(a1, v36, v32);
  v4 = a1[6];
  v5 = a1[7];
  v23 = a1;
  v24 = v4;
  v25 = v5;
  v26 = v5;
  v27 = 0;
  v28 = v4;
  v29 = v5;
  v30 = v5;
  v31 = 0;
  result = sub_B47094(&v23);
  if (v32[1] == v24 && v33 == v25 && v34 == v26 && (v34 == v33 || v35 == v27))
  {
    return result;
  }

  v7 = *(v35 + 4);
  v8 = *(v35 + 8);
  v9 = v8 - v7;
  if (v8 == v7)
  {
    return result;
  }

  v22 = 0;
  v10 = 0;
  v11 = 1;
LABEL_6:
  while (2)
  {
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    result = sub_B47C7C(a1, a2, v10++);
    if (*(result + 7) != 0x7FFFFFFF && v10 < v9)
    {
      v14 = result;
      for (i = v10; v12 != i; ++i)
      {
        result = sub_B47C7C(a1, a2, i);
        v16 = *(result + 7);
        if (v16 != 0x7FFFFFFF)
        {
          v17 = *(v14 + 7);
          if (v17 < v16 || *(v14 + 8) > *(result + 8) || (v18 = *(result + 9), v19 = *(v14 + 9), v19 > v18) || v19 == v18 && v17 == v16 && *(v14 + 11) - 10 * v17 > *(result + 11) - 10 * v16)
          {
            if (v16 >= v17 && *(result + 8) <= *(v14 + 8))
            {
              v20 = *(v14 + 9);
              v21 = *(result + 9);
              if (v21 <= v20 && (v21 != v20 || v16 != v17 || *(result + 11) - 10 * v16 <= *(v14 + 11) - 10 * v17))
              {
                *(v14 + 7) = 0x7FFFFFFF;
                if (v10 == v9)
                {
                  return sub_B47970(a1, a2);
                }

                v22 = 1;
                ++v11;
                goto LABEL_6;
              }
            }
          }

          else
          {
            *(result + 7) = 0x7FFFFFFF;
            v22 = 1;
          }
        }
      }
    }

    if (v10 != v9)
    {
      ++v11;
      continue;
    }

    break;
  }

  if ((v22 & 1) == 0)
  {
    return result;
  }

  return sub_B47970(a1, a2);
}

uint64_t sub_B5475C(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v37 = a2;
  sub_B47A80(a1, &v37, v34);
  v12 = a1[6];
  v13 = a1[7];
  v26 = a1;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  v28 = v13;
  v29 = 0;
  v30 = v12;
  v31 = v13;
  v32 = v13;
  v33 = 0;
  sub_B47094(&v26);
  if (*&v34[8] == v27 && *&v34[24] == v28 && (*&v34[24] == *&v34[16] || v35 == v29))
  {
    goto LABEL_7;
  }

  v14 = *(v35 + 4);
  v15 = *(v35 + 8);
  v16 = v15 - v14;
  if (v15 == v14)
  {
    goto LABEL_7;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v17 = 0;
    do
    {
      sub_B47C7C(a1, a2, v17++);
    }

    while (v16 != v17);
LABEL_7:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  v18 = 0;
  v20 = 0;
  do
  {
    v21 = sub_B47C7C(a1, a2, v20);
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[1];
    *v34 = *v21;
    *&v34[16] = v24;
    v35 = v22;
    v36 = v23;
    if (SHIDWORD(v24) >= a6)
    {
      v25 = sub_B54914(a1, v34, a3, a4, a5);
      v18 = v25 | v18 | (v25 | v18) & 0xFF00;
    }

    ++v20;
  }

  while (v16 != v20);
  if ((v18 & 0x100) != 0)
  {
    sub_B47970(a1, a3);
  }

  return v18 & 1;
}

unint64_t sub_B54914(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a5 != -1)
  {
    v37 = a5;
    v9 = *(a1 + 88);
    v11 = (v9 + (*(sub_B45D70(a1, &v37) + 4) << 6));
    v37 = a5;
    v12 = *(a1 + 88);
    v13 = (v12 + (*(sub_B45D70(a1, &v37) + 8) << 6));
    if (v11 != v13)
    {
      v30 = a2[7];
      v31 = a2[9];
      do
      {
        v32 = v11[7];
        if (v32 != 0x7FFFFFFF && v32 >= v30 && v11[8] <= a2[8])
        {
          v34 = v11[9];
          if (v34 <= v31)
          {
            v35 = v11[11] - 10 * v32 > a2[11] - 10 * v30 && v34 == v31;
            if (!v35 || v32 != v30)
            {
              goto LABEL_38;
            }
          }
        }

        v11 += 16;
      }

      while (v11 != v13);
    }
  }

  v37 = a4;
  v14 = *(a1 + 88);
  v15 = (v14 + (*(sub_B45D70(a1, &v37) + 4) << 6));
  v37 = a4;
  v16 = *(a1 + 88);
  v17 = (v16 + (*(sub_B45D70(a1, &v37) + 8) << 6));
  if (v15 != v17)
  {
    v23 = a2[7];
    v24 = a2[9];
    while (1)
    {
      v25 = v15[7];
      if (v25 != 0x7FFFFFFF && v25 >= v23 && v15[8] <= a2[8])
      {
        v27 = v15[9];
        if (v27 <= v24)
        {
          v28 = v15[11] - 10 * v25 > a2[11] - 10 * v23 && v27 == v24;
          if (!v28 || v25 != v23)
          {
            break;
          }
        }
      }

      v15 += 16;
      if (v15 == v17)
      {
        goto LABEL_4;
      }
    }

LABEL_38:
    LOBYTE(v20) = 0;
    LOBYTE(v18) = 0;
    v21 = 0;
    return (v20 << 8) | (v21 << 16) | v18;
  }

LABEL_4:
  v18 = sub_B52680(a1, a2, a3, 1, 1);
  v20 = v18 >> 8;
  v21 = v18 >> 16;
  if (v18)
  {
    *(v19 + 52) = -1;
    *(v19 + 60) = 0x7FFFFFFF;
  }

  return (v20 << 8) | (v21 << 16) | v18;
}

uint64_t sub_B54B10(uint64_t a1, unsigned int *a2)
{
  v4 = sub_B397F8(a1, a2);
  if (v4 == -1)
  {
    v19 = v5;
    if (sub_B54D24(a1, 1))
    {
      v32 = *a2 | 0x7FFFFFFF00000000;
      sub_B55034(a1, &v32, v33);
    }

    else
    {
      v32 = *a2 | 0x7FFFFFFF00000000;
      sub_B5525C(a1, &v32, v19, v33);
    }

    return v33[4];
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = 16 * (v4 / 0x30);
  v9 = v8 + v7;
  v11 = (v8 + v7 + 10);
  v10 = *(v8 + v7);
  v12 = v4 % 0x30;
  if (v4 % 0x30 < 9)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v13 = 48 * (v4 / 0x30);
  v14 = (v13 - v4 + 7);
  if (v14 <= 0xFFF7)
  {
    LOWORD(v14) = -9;
  }

  v15 = v14 + v4 - v13;
  if (v15 >= 8u)
  {
    v21 = 0;
    v22 = 0;
    v23 = (v15 >> 3) + 1;
    LOWORD(v17) = v12 - 8 * (((v15 >> 3) + 1) & 0x3FFE);
    v18 = &v11[v23 & 0x3FFE];
    v24 = (v8 + v7 + 11);
    v25 = v23 & 0x3FFE;
    do
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v24 += 2;
      v21 += byte_22A7B46[v26];
      v22 += byte_22A7B46[v27];
      v25 -= 2;
    }

    while (v25);
    v16 = v22 + v21;
    if ((v23 & 0x3FFE) == v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v17 = v4 % 0x30;
    v18 = v11;
  }

  do
  {
    v28 = *v18++;
    v16 += byte_22A7B46[v28];
    LOWORD(v17) = v17 - 8;
  }

  while (v17 > 8u);
LABEL_17:
  v11 += ((v12 - 9) >> 3) + 1;
  LOBYTE(v12) = v17;
LABEL_18:
  result = v10 + 8 * (v16 + byte_22A7B46[~(-1 << v12) & *v11]);
  if (*v9 + 8 * *(v9 + 8) == result && v9 + 16 != v6)
  {
    v30 = v9 + 32;
    do
    {
      if (*(v30 - 8))
      {
        v31 = 1;
      }

      else
      {
        v31 = v30 == v6;
      }

      v30 += 16;
    }

    while (!v31);
    return *(v30 - 32);
  }

  return result;
}

uint64_t sub_B54D24(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_B555F0(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= ~a2)
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 72);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    if (v7 >= vcvts_n_u32_f32(v8, 2uLL))
    {
      v9 = 4;
      while ((v9 & 0x8000000000000000) == 0)
      {
        v9 *= 2;
        if (v7 < (v8 * v9))
        {
          goto LABEL_12;
        }
      }

LABEL_32:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

    v9 = 4;
LABEL_12:
    if (v9 > v6)
    {
      v10 = v5 - *(a1 + 40) + a2;
      v11 = 4;
      if (v6 > 4)
      {
        goto LABEL_15;
      }

LABEL_14:
      if (v10 >= (v8 * v11))
      {
LABEL_15:
        while ((v11 & 0x8000000000000000) == 0)
        {
          v11 *= 2;
          if (v11 >= v6)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_32;
      }

      if (v11 < v9 && v11 <= 0x7FFFFFFFFFFFFFFELL && v10 >= (*(a1 + 20) * (2 * v11)))
      {
        v11 *= 2;
      }

      v28 = *(a1 + 16);
      v29 = *(a1 + 32);
      memset(v30, 0, sizeof(v30));
      v31 = 0u;
      v27 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v28, 0)));
      BYTE8(v28) = 0;
      sub_B2F43C(&v27, 0, a1, v11);
      v12 = *(a1 + 32);
      *(a1 + 32) = v29;
      v29 = v12;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *(a1 + 40) = v30[0];
      v16 = *a1;
      v15 = *(a1 + 16);
      v17 = v28;
      *a1 = v27;
      *(a1 + 16) = v17;
      v27 = v16;
      v28 = v15;
      v18 = *&v30[1];
      v30[0] = v13;
      v30[1] = v14;
      v19 = v30[3];
      v20 = *(a1 + 56);
      *(a1 + 48) = v18;
      *(a1 + 64) = v19;
      *&v30[2] = v20;
      *&v18 = v31;
      v21 = *(a1 + 72);
      *(a1 + 72) = v31;
      v31 = v21;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v18)));
      *(a1 + 24) = 0;
      v27 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v28, v21)));
      BYTE8(v28) = 0;
      if (v14)
      {
        v22 = v20;
        v23 = v14;
        if (v20 != v14)
        {
          do
          {
            v25 = *(v22 - 2);
            v22 -= 2;
            v24 = v25;
            if (v25)
            {
              free(v24);
              *v22 = 0;
            }
          }

          while (v22 != v14);
          v23 = v30[1];
        }

        v30[2] = v14;
        free(v23);
      }

      return 1;
    }
  }

  return result;
}

__n128 sub_B55034@<Q0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_B397F8(a1, a2);
  if (v6 == -1)
  {
    sub_B5525C(a1, a2, v7, a3);
    *(a3 + 72) = 1;
    return result;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = 16 * (v6 / 0x30);
  v11 = v10 + v9;
  v13 = (v10 + v9 + 10);
  v12 = *(v10 + v9);
  v14 = v6 % 0x30;
  if (v6 % 0x30 < 9)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v15 = 48 * (v6 / 0x30);
  v16 = (v15 - v6 + 7);
  if (v16 <= 0xFFF7)
  {
    LOWORD(v16) = -9;
  }

  v17 = v16 + v6 - v15;
  if (v17 >= 8u)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v17 >> 3) + 1;
    LOWORD(v19) = v14 - 8 * (((v17 >> 3) + 1) & 0x3FFE);
    v20 = &v13[v24 & 0x3FFE];
    v25 = (v10 + v9 + 11);
    v26 = v24 & 0x3FFE;
    do
    {
      v27 = *(v25 - 1);
      v28 = *v25;
      v25 += 2;
      v22 += byte_22A7B46[v27];
      v23 += byte_22A7B46[v28];
      v26 -= 2;
    }

    while (v26);
    v18 = v23 + v22;
    if ((v24 & 0x3FFE) == v24)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    v19 = v6 % 0x30;
    v20 = (v10 + v9 + 10);
  }

  do
  {
    v29 = *v20++;
    v18 += byte_22A7B46[v29];
    LOWORD(v19) = v19 - 8;
  }

  while (v19 > 8u);
LABEL_13:
  v13 += ((v14 - 9) >> 3) + 1;
  LOBYTE(v14) = v19;
LABEL_14:
  v30 = v12 + 8 * (v18 + byte_22A7B46[~(-1 << v14) & *v13]);
  if (*v11 + 8 * *(v11 + 8) == v30)
  {
    v11 += 16;
    if (v11 != v8)
    {
      do
      {
        v31 = v11;
        if (*(v11 + 8))
        {
          break;
        }

        v11 += 16;
      }

      while (v31 + 2 != v8);
      v30 = *v31;
    }
  }

  *&v33 = a1;
  *(&v33 + 1) = v9;
  v34.n128_u64[0] = v8;
  v34.n128_u64[1] = v11;
  *&v35 = v30;
  *(&v35 + 1) = v9;
  *&v36 = v8;
  *(&v36 + 1) = v8;
  v37 = 0;
  sub_B39C3C(&v33);
  v32 = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v32;
  *(a3 + 64) = v37;
  result = v34;
  *a3 = v33;
  *(a3 + 16) = result;
  *(a3 + 72) = 0;
  return result;
}

void *sub_B5525C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 40);
  if ((*(a1 + 80) - v5) >= 0x1FFFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  if (!v5)
  {
    v8 = a3 / 0x30;
    v18 = a3 % 0x30;
    v9 = a3 % 0x30;
    goto LABEL_19;
  }

  v8 = a3 / 0x30;
  v9 = a3 % 0x30;
  v10 = (*(a1 + 48) + 16 * (a3 / 0x30));
  if ((*(v10 + ((a3 % 0x30) >> 3) + 10) >> ((a3 % 0x30) & 7)))
  {
    v12 = v10 + 10;
    v11 = *v10;
    if (v9 < 9)
    {
      v15 = 0;
      v16 = a3 % 0x30;
      goto LABEL_16;
    }

    v13 = (48 * v8 - a3 + 7);
    if (v13 <= 0xFFF7)
    {
      LOWORD(v13) = -9;
    }

    v14 = v13 + a3 - 48 * v8;
    if (v14 >= 8u)
    {
      v19 = 0;
      v20 = 0;
      v21 = (v14 >> 3) + 1;
      LOWORD(v16) = v9 - 8 * (((v14 >> 3) + 1) & 0x3FFE);
      v17 = &v12[v21 & 0x3FFE];
      v22 = v10 + 11;
      v23 = v21 & 0x3FFE;
      do
      {
        v24 = *(v22 - 1);
        v25 = *v22;
        v22 += 2;
        v19 += byte_22A7B46[v24];
        v20 += byte_22A7B46[v25];
        v23 -= 2;
      }

      while (v23);
      v15 = v20 + v19;
      if ((v21 & 0x3FFE) == v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
      v16 = a3 % 0x30;
      v17 = v10 + 10;
    }

    do
    {
      v26 = *v17++;
      v15 += byte_22A7B46[v26];
      LOWORD(v16) = v16 - 8;
    }

    while (v16 > 8u);
LABEL_15:
    v12 += ((v9 - 9) >> 3) + 1;
LABEL_16:
    if (*(a1 + 32) == *(v11 + 8 * (v15 + byte_22A7B46[~(-1 << v16) & *v12])))
    {
      *(a1 + 40) = v5 - 1;
    }
  }

  v18 = a3 % 0x30;
LABEL_19:
  sub_B2F9C8((a1 + 48), a3, a2);
  v28 = *(a1 + 48);
  v27 = *(a1 + 56);
  v29 = 16 * v8 + v28;
  v30 = (v29 + 10);
  if (v18 >= 9)
  {
    v31 = (7 - v9);
    if (v31 <= 0xFFF7)
    {
      LOWORD(v31) = -9;
    }

    v32 = v31 + v9;
    if (v32 >= 8u)
    {
      v35 = 0;
      v36 = 0;
      v37 = (v32 >> 3) + 1;
      LOWORD(v9) = v9 - 8 * (((v32 >> 3) + 1) & 0x3FFE);
      v34 = &v30[((v32 >> 3) + 1) & 0x3FFE];
      v38 = (16 * v8 + v28 + 11);
      v39 = v37 & 0x3FFE;
      do
      {
        v40 = *(v38 - 1);
        v41 = *v38;
        v38 += 2;
        v35 += byte_22A7B46[v40];
        v36 += byte_22A7B46[v41];
        v39 -= 2;
      }

      while (v39);
      v33 = v36 + v35;
      if ((v37 & 0x3FFE) == v37)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v33 = 0;
      v34 = (v29 + 10);
    }

    do
    {
      v42 = *v34++;
      v33 += byte_22A7B46[v42];
      LOWORD(v9) = v9 - 8;
    }

    while (v9 > 8u);
LABEL_29:
    v30 += ((v18 - 9) >> 3) + 1;
    goto LABEL_30;
  }

  v33 = 0;
LABEL_30:
  v43 = *v29 + 8 * (v33 + byte_22A7B46[~(-1 << v9) & *v30]);
  if (*v29 + 8 * *(v29 + 8) == v43)
  {
    v29 += 16;
    if (v29 != v27)
    {
      do
      {
        v44 = v29;
        if (*(v29 + 8))
        {
          break;
        }

        v29 += 16;
      }

      while (v44 + 2 != v27);
      v43 = *v44;
    }
  }

  *a4 = a1;
  a4[1] = v28;
  a4[2] = v27;
  a4[3] = v29;
  a4[4] = v43;
  a4[5] = v28;
  a4[6] = v27;
  a4[7] = v27;
  a4[8] = 0;

  return sub_B39C3C(a4);
}

uint64_t sub_B555F0(uint64_t a1)
{
  v2 = *(a1 + 80) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 72), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    do
    {
      v6 = v5;
      v5 >>= 1;
    }

    while (v6 >= 0x42 && v2 < (*(a1 + 20) * v5));
    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    memset(v25, 0, sizeof(v25));
    v26 = 0u;
    v22 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v23, 0)));
    BYTE8(v23) = 0;
    sub_B2F43C(&v22, 0, a1, v5);
    v7 = *(a1 + 32);
    *(a1 + 32) = v24;
    v24 = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *(a1 + 40) = v25[0];
    v11 = *a1;
    v10 = *(a1 + 16);
    v12 = v23;
    *a1 = v22;
    *(a1 + 16) = v12;
    v22 = v11;
    v23 = v10;
    v13 = *&v25[1];
    v25[0] = v8;
    v25[1] = v9;
    v14 = v25[3];
    v15 = *(a1 + 56);
    *(a1 + 48) = v13;
    *(a1 + 64) = v14;
    *&v25[2] = v15;
    *&v13 = v26;
    v16 = *(a1 + 72);
    *(a1 + 72) = v26;
    v26 = v16;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v13)));
    *(a1 + 24) = 0;
    v22 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v23, v16)));
    BYTE8(v23) = 0;
    if (v9)
    {
      v17 = v15;
      v18 = v9;
      if (v15 != v9)
      {
        do
        {
          v20 = *(v17 - 2);
          v17 -= 2;
          v19 = v20;
          if (v20)
          {
            free(v19);
            *v17 = 0;
          }
        }

        while (v17 != v9);
        v18 = v25[1];
      }

      v25[2] = v9;
      free(v18);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_B557D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = xmmword_229B660;
  *(a1 + 16) = 8;
  *(a1 + 20) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v7 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *&v8 = 0x8000000080000000;
  *(&v8 + 1) = 0x8000000080000000;
  *(a1 + 68) = v8;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x100000004;
  sub_B55954(a1 + 128);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = -1;
  sub_C43044(a1 + 448, a2);
  v11 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 544, &__p);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_B558EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A95814((v15 + 448));
  sub_A95860(v15 + 368);
  sub_4D0584(v15 + 320);
  sub_4D0584(v15 + 272);
  sub_A95A3C((v15 + 128));
  sub_1F1A8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_B55954(uint64_t a1)
{
  v2 = sub_B55A14(a1, 0);
  *(v2 + 88) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  sub_B55F24(v2);
  *(a1 + 26) = 1;
  *(a1 + 32) = -1;
  return a1;
}

void sub_B559CC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 112);
  if (v4)
  {
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      sub_A9595C(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 96) = v5;
  operator delete(v5);
  sub_A9595C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_B55A14(uint64_t a1, unint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0x3EA3D70A3F4CCCCDLL;
  *(a1 + 28) = 0xFFFFFFFF00000000;
  *(a1 + 40) = 0;
  if (a2)
  {
    v3 = 4;
    if (a2 >= 3)
    {
      do
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v3 *= 2;
      }

      while ((v3 * 0.8) <= a2);
    }
  }

  else
  {
    v3 = 32;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0;
  v6[0] = 0;
  v6[1] = 0;
  sub_B55B78(a1 + 48, (v3 - 1) / 0x30 + 1, v6);
  if (v6[0])
  {
    free(v6[0]);
  }

  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
  *(a1 + 24) = 0;
  return a1;
}

void sub_B55B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  sub_A959CC((v9 + 48));
  _Unwind_Resume(a1);
}

void sub_B55B78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 4)
  {
    if (a2)
    {
      v13 = v6 + 16 * a2;
      do
      {
        *v6 = 0;
        v15 = *(a3 + 8);
        *(v6 + 8) = v15;
        if (v15)
        {
          v16 = malloc_type_malloc(12 * v15, 0x10000403E1C8BA9uLL);
          if (!v16)
          {
            fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v15);
            exit(1);
          }

          *v6 = v16;
          if (*(a3 + 8))
          {
            v17 = *a3;
            v18 = 12 * *(a3 + 8);
            do
            {
              v19 = *v17;
              v16[2] = *(v17 + 2);
              *v16 = v19;
              v16 += 3;
              v17 = (v17 + 12);
              v18 -= 12;
            }

            while (v18);
          }
        }

        v14 = *(a3 + 10);
        *(v6 + 14) = *(a3 + 14);
        *(v6 + 10) = v14;
        v6 += 16;
      }

      while (v6 != v13);
      v6 = v13;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v7 = (v6 - *a1) >> 4;
    if ((v7 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = a2;
      v12 = malloc_type_malloc(16 * v10, 0x1020040EDED9539uLL);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v20 = &v12[16 * v7];
    v26 = v20;
    v27 = &v12[16 * v10];
    v21 = 16 * a2;
    v22 = v20 + 16 * a2;
    do
    {
      sub_B308B8(a1, v20, a3);
      v20 += 16;
      v21 -= 16;
    }

    while (v21);
    v23 = *(a1 + 8);
    v24 = v26 + *a1 - v23;
    sub_B55DB8(a1, *a1, v23, v24);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v22;
    *(a1 + 16) = v27;
    if (v25)
    {
      free(v25);
    }
  }
}

void sub_B55D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B55DA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B55DB8(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v14 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v9 = *(v7 + 4);
      *(v4 + 8) = v9;
      if (v9)
      {
        v10 = malloc_type_malloc(12 * v9, 0x10000403E1C8BA9uLL);
        if (!v10)
        {
          fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v9);
          exit(1);
        }

        *v4 = v10;
        if (*(v7 + 4))
        {
          v11 = *v7;
          v12 = 12 * *(v7 + 4);
          do
          {
            v13 = *v11;
            v10[2] = v11[2];
            *v10 = v13;
            v10 += 3;
            v11 += 3;
            v12 -= 12;
          }

          while (v12);
        }
      }

      v8 = *(v7 + 10);
      *(v4 + 14) = *(v7 + 7);
      *(v4 + 10) = v8;
      v7 += 2;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (*v6)
      {
        free(*v6);
        *v6 = 0;
      }

      v6 += 2;
    }
  }
}