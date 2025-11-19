void sub_8BB620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_5938B0(&a34);
  sub_5EC628(v34);
  _Unwind_Resume(a1);
}

void sub_8BB650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void ***a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  *(v34 + 8) = v35;
  sub_53A868(&a10);
  sub_5938B0(&a34);
  sub_89DCD4(&a30);
  sub_5EC628(v34);
  _Unwind_Resume(a1);
}

void sub_8BB6B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_906A54((a1 + 2576), (a1 + 6592), &v23);
  sub_80A2FC(a2, &v23);
  v4 = nullsub_1(&v23);
  sub_68215C(a2, v4);
  sub_809E40(a2, *(*(a1 + 2536) + 418));
  sub_6817B4(a2, *(a1 + 6592), 0, *(a1 + 12008));
  v5 = *(a1 + 12008);
  v6 = *(a1 + 5984);
  v7 = v5 <= v6;
  v8 = v5 - v6;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_6817C0(a2, v9);
  v10 = *(a1 + 2520);
  v11 = 9;
  if (((v10 - 21) > 0x2D || ((1 << (v10 - 21)) & 0x250000002281) == 0) && v10 != 2)
  {
    v11 = 10;
  }

  if (*(a1 + 6773))
  {
    v12 = 8;
  }

  else if (*(a1 + 6772))
  {
    v12 = 7;
  }

  else if (*(a1 + 6774))
  {
    v12 = 11;
  }

  else
  {
    v12 = v11;
  }

  sub_68179C(a2, v12);
  sub_64BC20(v22, "{distance}");
  v21 = 1;
  sub_64E428(v22, "{distance}", (a1 + 6592), &v21);
  sub_682240(a2, v22);
  sub_53A868(v22);
  v13 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v26;
  if (v26)
  {
    do
    {
      v15 = *v14;
      sub_55F7FC((v14 + 2));
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = v25;
  v25 = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = v23;
  if (v23)
  {
    v18 = v24;
    v19 = v23;
    if (v24 != v23)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = v23;
    }

    v24 = v17;
    operator delete(v19);
  }
}

void sub_8BB8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  sub_5938B0(v2);
  sub_662AC8((v3 - 136));
  _Unwind_Resume(a1);
}

void sub_8BB904(_Unwind_Exception *a1)
{
  sub_5938B0(v1);
  sub_662AC8((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_8BB93C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 11424) - *(a1 + 11416);
  if (v3)
  {
    v5 = 0;
    v6 = 0x4FA4FA4FA4FA4FA5 * (v3 >> 3);
    while (1)
    {
      v8 = (*(a1 + 11416) + 360 * v5);
      if ((!sub_6C7D24(v8) || (*(a1 + 11803) & 1) == 0) && sub_6C7D54(v8))
      {
        sub_6CA4CC(v8, &v35);
        if (*(a1 + 2556) != 1)
        {
          goto LABEL_14;
        }

        v9 = *(a1 + 5952);
        if (v9 >= v35.n128_i64[1])
        {
          break;
        }
      }

LABEL_5:
      if (++v5 == v6)
      {
        return;
      }
    }

    if (v35.n128_i64[0] > v9 && (v9 - v35.n128_u64[1]) >= *(*(a1 + 2536) + 1928))
    {
      v35.n128_u64[0] = *(a1 + 5952);
    }

LABEL_14:
    sub_6BF6C4(v8, &v31);
    sub_809E48(v30, &v31, 0);
    sub_80A300(v30, v5);
    sub_6817B4(v30, v35.n128_i64[0], v35.n128_i64[1], *(a1 + 12008));
    v10 = *(a1 + 12008);
    v11 = *(a1 + 5984);
    v12 = v10 <= v11;
    v13 = v10 - v11;
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_6817C0(v30, v14);
    if (sub_6C7D24(v8))
    {
      v15 = 18;
    }

    else
    {
      v15 = 17;
    }

    sub_68179C(v30, v15);
    v16 = sub_6C7D24(v8);
    v17 = 416;
    if (v16)
    {
      v17 = 418;
    }

    sub_809E40(v30, *(*(a1 + 2536) + v17));
    if (sub_6C7D08(v8))
    {
      sub_64BC20(v29, "{valid_distance}");
      v18 = sub_4DADB4(v30);
      v28 = sub_681630(v18);
      v27 = 1;
      sub_64E428(v29, "{valid_distance}", &v28, &v27);
      sub_682240(v30, v29);
      sub_53A868(v29);
    }

    v19 = a2[1];
    if (v19 >= a2[2])
    {
      v20 = sub_7A585C(a2, v30);
    }

    else
    {
      sub_5F4D20(a2[1], v30);
      v20 = v19 + 1120;
    }

    a2[1] = v20;
    sub_5938B0(v30);
    v21 = v34;
    if (!v34)
    {
LABEL_28:
      v22 = v33;
      v33 = 0;
      if (v22)
      {
        operator delete(v22);
      }

      v23 = v31;
      if (v31)
      {
        v24 = v32;
        v7 = v31;
        if (v32 != v31)
        {
          do
          {
            v26 = *(v24 - 1);
            v24 -= 3;
            if (v26 < 0)
            {
              operator delete(*v24);
            }
          }

          while (v24 != v23);
          v7 = v31;
        }

        v32 = v23;
        operator delete(v7);
      }

      goto LABEL_5;
    }

    while (1)
    {
      v25 = *v21;
      if (*(v21 + 191) < 0)
      {
        operator delete(v21[21]);
        if ((*(v21 + 159) & 0x80000000) == 0)
        {
LABEL_36:
          if ((*(v21 + 135) & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }

      else if ((*(v21 + 159) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      operator delete(v21[17]);
      if ((*(v21 + 135) & 0x80000000) == 0)
      {
LABEL_37:
        if ((*(v21 + 95) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_44;
      }

LABEL_43:
      operator delete(v21[14]);
      if ((*(v21 + 95) & 0x80000000) == 0)
      {
LABEL_38:
        if ((*(v21 + 63) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_45;
      }

LABEL_44:
      operator delete(v21[9]);
      if ((*(v21 + 63) & 0x80000000) == 0)
      {
LABEL_39:
        if (*(v21 + 39) < 0)
        {
          goto LABEL_46;
        }

        goto LABEL_33;
      }

LABEL_45:
      operator delete(v21[5]);
      if (*(v21 + 39) < 0)
      {
LABEL_46:
        operator delete(v21[2]);
      }

LABEL_33:
      operator delete(v21);
      v21 = v25;
      if (!v25)
      {
        goto LABEL_28;
      }
    }
  }
}

void sub_8BBC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_53A868(&a12);
  sub_5938B0(&a32);
  sub_53A58C((v33 - 184));
  sub_5EC628(v32);
  _Unwind_Resume(a1);
}

void sub_8BBD24(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v18 = v2;
    v19 = v3;
    v6 = sub_67A314(*(a1 + 2536), *(a1 + 5996));
    v7 = *(*(a1 + 2536) + 1928);
    v9 = *a2;
    v8 = a2[1];
    v10 = 126 - 2 * __clz(0xAF8AF8AF8AF8AF8BLL * ((v8 - *a2) >> 5));
    v11 = v8 == *a2;
    v16[0] = v6;
    v16[1] = v7;
    v16[2] = a1;
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    sub_8D40BC(v9, v8, &v17, v12, 1);
    sub_89E088(v16, a2);
    v13 = a2[1];
    v14 = 126 - 2 * __clz(0xAF8AF8AF8AF8AF8BLL * ((v13 - *a2) >> 5));
    if (v13 == *a2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    sub_8D583C(*a2, v13, &v17, v15, 1);
    sub_89E088(v16, a2);
  }
}

uint64_t sub_8BBE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  if (*(a1 + 11915) == 1)
  {
    sub_8EF098(a1 + 2576);
    sub_8BBF70();
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  while (v5 != v6)
  {
    result = sub_681EA0(v5);
    if ((result & 1) == 0)
    {
      v7 = *(a1 + 11920);
      *(a1 + 11920) = v7 + 1;
      result = sub_B6D0(v5, v7);
    }

    v5 += 280;
  }

  return result;
}

void sub_8BBF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5938B0(&a9);
  sub_5EC628(v9);
  _Unwind_Resume(a1);
}

void sub_8BC1B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5938B0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8BC1F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 2558) == 1)
  {
    v3 = *(a1 + 2568) + 1;
    v4 = 1;
    if (*(a1 + 2555) != 1)
    {
LABEL_3:
      sub_8BD3AC(a1, a2, v3, v4, a3);
      return;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    if (*(a1 + 2555) != 1)
    {
      goto LABEL_3;
    }
  }

  sub_8BC230(a1, a2, v3, v4, a3);
}

void sub_8BC230(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*(a1 + 2556) == 1)
  {
    sub_8BEF5C(a1, &v85);
    sub_798900(a5, &v85);
    if (__p)
    {
      v97 = __p;
      operator delete(__p);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    v10 = v92;
    if (v92)
    {
      v11 = v93;
      v12 = v92;
      if (v93 != v92)
      {
        do
        {
          v11 = sub_662AC8(v11 - 13);
        }

        while (v11 != v10);
        v12 = v92;
      }

      v93 = v10;
      operator delete(v12);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    v13 = v86;
    if (v86)
    {
      v14 = v87;
      v15 = v86;
      if (v87 != v86)
      {
        do
        {
          v14 = sub_53A868(v14 - 160);
        }

        while (v14 != v13);
        v15 = v86;
      }

      v87 = v13;
      operator delete(v15);
    }
  }

  if (*(a1 + 2557) == 1)
  {
    sub_8BF24C(a1, &v85);
    sub_8C680C(a5, a5[1], v85, v86, 0x6DB6DB6DB6DB6DB7 * ((v86 - v85) >> 6));
    v16 = v85;
    if (v85)
    {
      v17 = v86;
      v18 = v85;
      if (v86 != v85)
      {
        do
        {
          v19 = *(v17 - 6);
          if (v19)
          {
            *(v17 - 5) = v19;
            operator delete(v19);
          }

          v17 -= 56;
          sub_55D550(v17);
        }

        while (v17 != v16);
        v18 = v85;
      }

      v86 = v16;
      operator delete(v18);
    }
  }

  if (*(a1 + 11904) == 1)
  {
    (*(*a1 + 72))(&v85, a1);
    sub_798900(a5, &v85);
    if (__p)
    {
      v97 = __p;
      operator delete(__p);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    v20 = v92;
    if (v92)
    {
      v21 = v93;
      v22 = v92;
      if (v93 != v92)
      {
        do
        {
          v21 = sub_662AC8(v21 - 13);
        }

        while (v21 != v20);
        v22 = v92;
      }

      v93 = v20;
      operator delete(v22);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    v23 = v86;
    if (v86)
    {
      v24 = v87;
      v25 = v86;
      if (v87 != v86)
      {
        do
        {
          v24 = sub_53A868(v24 - 160);
        }

        while (v24 != v23);
        v25 = v86;
      }

      v87 = v23;
      operator delete(v25);
    }
  }

  if (*(a1 + 11905) == 1)
  {
    (*(*a1 + 80))(&v85, a1);
    sub_798900(a5, &v85);
    if (__p)
    {
      v97 = __p;
      operator delete(__p);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    v26 = v92;
    if (v92)
    {
      v27 = v93;
      v28 = v92;
      if (v93 != v92)
      {
        do
        {
          v27 = sub_662AC8(v27 - 13);
        }

        while (v27 != v26);
        v28 = v92;
      }

      v93 = v26;
      operator delete(v28);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    v29 = v86;
    if (v86)
    {
      v30 = v87;
      v31 = v86;
      if (v87 != v86)
      {
        do
        {
          v30 = sub_53A868(v30 - 160);
        }

        while (v30 != v29);
        v31 = v86;
      }

      v87 = v29;
      operator delete(v31);
    }
  }

  if (*(a1 + 11908) == 1)
  {
    sub_8C0500(a1);
  }

  if (sub_5CBB30((a1 + 6152)))
  {
    sub_8C1940(a1, &v85);
    sub_8C6E28(a5, a5[1], v85, v86, 0x6DB6DB6DB6DB6DB7 * ((v86 - v85) >> 6));
    v32 = v85;
    if (v85)
    {
      v33 = v86;
      v34 = v85;
      if (v86 != v85)
      {
        do
        {
          v35 = *(v33 - 6);
          if (v35)
          {
            *(v33 - 5) = v35;
            operator delete(v35);
          }

          v33 -= 56;
          sub_55D550(v33);
        }

        while (v33 != v32);
        v34 = v85;
      }

      v86 = v32;
      operator delete(v34);
    }
  }

  if (*(a1 + 11916) == 1)
  {
    sub_8C168C(a1);
  }

  if (*(a1 + 11911) == 1)
  {
    sub_8C0288(a1);
  }

  if (*(a1 + 11912) == 1)
  {
    sub_8BFFDC(a1);
  }

  if (*(a1 + 11914) == 1)
  {
    sub_8C1428(a1);
  }

  if (*(a1 + 11913) == 1)
  {
    sub_8C1188(a1);
  }

  if (*(a1 + 11906) == 1)
  {
    if ((a4 & 1) != 0 && *(a1 + 11907) != 1)
    {
      sub_8C255C();
    }

    sub_8C221C(a1, &v85);
    v36 = a5[1];
    if (v36 >= a5[2])
    {
      v37 = sub_7A5EF8(a5, &v85);
    }

    else
    {
      sub_7A6070(a5[1], &v85);
      v37 = v36 + 448;
    }

    a5[1] = v37;
    if (__p)
    {
      v97 = __p;
      operator delete(__p);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    v38 = v92;
    if (v92)
    {
      v39 = v93;
      v40 = v92;
      if (v93 != v92)
      {
        do
        {
          v39 = sub_662AC8(v39 - 13);
        }

        while (v39 != v38);
        v40 = v92;
      }

      v93 = v38;
      operator delete(v40);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    v41 = v86;
    if (v86)
    {
      v42 = v87;
      v43 = v86;
      if (v87 != v86)
      {
        do
        {
          v42 = sub_53A868(v42 - 160);
        }

        while (v42 != v41);
        v43 = v86;
      }

      v87 = v41;
      operator delete(v43);
    }
  }

  if (*(a1 + 11907) == 1)
  {
    if (a4)
    {
      sub_8C2B08(a1);
    }

    sub_8C2814(a1, &v85);
    v45 = a5[1];
    if (v45 >= a5[2])
    {
      v46 = sub_7A5EF8(a5, &v85);
    }

    else
    {
      sub_7A6070(a5[1], &v85);
      v46 = v45 + 448;
    }

    a5[1] = v46;
    if (__p)
    {
      v97 = __p;
      operator delete(__p);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    v47 = v92;
    if (v92)
    {
      v48 = v93;
      v49 = v92;
      if (v93 != v92)
      {
        do
        {
          v48 = sub_662AC8(v48 - 13);
        }

        while (v48 != v47);
        v49 = v92;
      }

      v93 = v47;
      operator delete(v49);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    v50 = v86;
    if (v86)
    {
      v51 = v87;
      v52 = v86;
      if (v87 != v86)
      {
        do
        {
          v51 = sub_53A868(v51 - 160);
        }

        while (v51 != v50);
LABEL_160:
        v52 = v86;
        goto LABEL_161;
      }

      goto LABEL_161;
    }
  }

  else if ((*(a1 + 11906) & 1) == 0)
  {
    v44 = *a1;
    if (a4)
    {
      (*(v44 + 96))(&v85, a1, a2, a3);
    }

    else
    {
      (*(v44 + 88))(&v85, a1);
    }

    v53 = a5[1];
    if (v53 >= a5[2])
    {
      v54 = sub_7A5EF8(a5, &v85);
    }

    else
    {
      sub_7A6070(a5[1], &v85);
      v54 = v53 + 448;
    }

    a5[1] = v54;
    if (__p)
    {
      v97 = __p;
      operator delete(__p);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    v55 = v92;
    if (v92)
    {
      v56 = v93;
      v57 = v92;
      if (v93 != v92)
      {
        do
        {
          v56 = sub_662AC8(v56 - 13);
        }

        while (v56 != v55);
        v57 = v92;
      }

      v93 = v55;
      operator delete(v57);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    v50 = v86;
    if (v86)
    {
      v58 = v87;
      v52 = v86;
      if (v87 != v86)
      {
        do
        {
          v58 = sub_53A868(v58 - 160);
        }

        while (v58 != v50);
        goto LABEL_160;
      }

LABEL_161:
      v87 = v50;
      operator delete(v52);
    }
  }

  v59 = *a5;
  v60 = a5[1];
  while (v59 != v60)
  {
    if (!sub_681EA0(v59))
    {
      v61 = *(a1 + 11920);
      *(a1 + 11920) = v61 + 1;
      sub_B6D0(v59, v61);
    }

    v59 += 112;
  }

  sub_8C2D78(a1, a5);
  if (*(a1 + 11802) == 1)
  {
    sub_8C1D00(a1, &v85);
    v62 = v85;
    v63 = v86;
    while (v62 != v63)
    {
      if (!sub_681EA0(v62))
      {
        v64 = *(a1 + 11920);
        *(a1 + 11920) = v64 + 1;
        sub_B6D0(v62, v64);
      }

      v62 += 112;
    }

    sub_8C2D78(a1, &v85);
    sub_8C680C(a5, a5[1], v85, v86, 0x6DB6DB6DB6DB6DB7 * ((v86 - v85) >> 6));
    sub_8C2D78(a1, a5);
    v65 = v85;
    if (v85)
    {
      v66 = v86;
      v67 = v85;
      if (v86 != v85)
      {
        do
        {
          v68 = *(v66 - 6);
          if (v68)
          {
            *(v66 - 5) = v68;
            operator delete(v68);
          }

          v66 -= 56;
          sub_55D550(v66);
        }

        while (v66 != v65);
        v67 = v85;
      }

      v86 = v65;
      operator delete(v67);
    }
  }

  sub_8C2EF8(a1, &v85);
  v69 = v85;
  v70 = v86;
  if (v85 != v86)
  {
    do
    {
      if (!sub_681EA0(v69))
      {
        v71 = *(a1 + 11920);
        *(a1 + 11920) = v71 + 1;
        sub_B6D0(v69, v71);
      }

      v69 += 112;
    }

    while (v69 != v70);
    v69 = v85;
    v70 = v86;
  }

  sub_8C680C(a5, a5[1], v69, v70, 0x6DB6DB6DB6DB6DB7 * ((v70 - v69) >> 6));
  if (v85 != v86)
  {
    sub_8C2D78(a1, a5);
  }

  if (**(a1 + 11984) != *(*(a1 + 11984) + 8))
  {
    sub_8C39A0(a1, &v83);
    v72 = v83;
    v73 = v84;
    if (v83 != v84)
    {
      do
      {
        if (!sub_681EA0(v72))
        {
          v74 = *(a1 + 11920);
          *(a1 + 11920) = v74 + 1;
          sub_B6D0(v72, v74);
        }

        v72 += 112;
      }

      while (v72 != v73);
      v72 = v83;
      v73 = v84;
    }

    sub_8C680C(a5, a5[1], v72, v73, 0x6DB6DB6DB6DB6DB7 * ((v73 - v72) >> 6));
    v75 = v83;
    if (v83)
    {
      v76 = v84;
      v77 = v83;
      if (v84 != v83)
      {
        do
        {
          v78 = *(v76 - 6);
          if (v78)
          {
            *(v76 - 5) = v78;
            operator delete(v78);
          }

          v76 -= 56;
          sub_55D550(v76);
        }

        while (v76 != v75);
        v77 = v83;
      }

      v84 = v75;
      operator delete(v77);
    }
  }

  v79 = v85;
  if (v85)
  {
    v80 = v86;
    v81 = v85;
    if (v86 != v85)
    {
      do
      {
        v82 = *(v80 - 6);
        if (v82)
        {
          *(v80 - 5) = v82;
          operator delete(v82);
        }

        v80 -= 56;
        sub_55D550(v80);
      }

      while (v80 != v79);
      v81 = v85;
    }

    v86 = v79;
    operator delete(v81);
  }
}

void sub_8BD190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_682DB0(va);
  sub_5EC5AC(v5);
  _Unwind_Resume(a1);
}

void sub_8BD32C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_5EC5AC(va);
  sub_5EC5AC(va1);
  sub_5EC5AC(v2);
  _Unwind_Resume(a1);
}

void sub_8BD3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = a1 + 0x2000;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*(a1 + 11904) == 1)
  {
    sub_8BFB94(a1, &v28);
    sub_798900(a5, &v28);
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v11 = v35;
    if (v35)
    {
      v12 = v36;
      v13 = v35;
      if (v36 != v35)
      {
        do
        {
          v12 = sub_662AC8(v12 - 13);
        }

        while (v12 != v11);
        v13 = v35;
      }

      v36 = v11;
      operator delete(v13);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    v14 = v29;
    if (v29)
    {
      v15 = v30;
      v16 = v29;
      if (v30 != v29)
      {
        do
        {
          v15 = sub_53A868(v15 - 160);
        }

        while (v15 != v14);
        v16 = v29;
      }

      v30 = v14;
      operator delete(v16);
    }
  }

  if (*(v10 + 3719) == 1)
  {
    sub_8C0288(a1);
  }

  if (sub_5CBB30((a1 + 6152)))
  {
    sub_8C1940(a1, &v28);
    sub_8C6E28(a5, a5[1], v28, v29, 0x6DB6DB6DB6DB6DB7 * ((v29 - v28) >> 6));
    v17 = v28;
    if (v28)
    {
      v18 = v29;
      v19 = v28;
      if (v29 != v28)
      {
        do
        {
          v20 = *(v18 - 6);
          if (v20)
          {
            *(v18 - 5) = v20;
            operator delete(v20);
          }

          v18 -= 56;
          sub_55D550(v18);
        }

        while (v18 != v17);
        v19 = v28;
      }

      v29 = v17;
      operator delete(v19);
    }
  }

  v21 = *a1;
  if (a4)
  {
    (*(v21 + 96))(&v28, a1, a2, a3);
  }

  else
  {
    (*(v21 + 88))(&v28, a1);
  }

  sub_798900(a5, &v28);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  v22 = v35;
  if (v35)
  {
    v23 = v36;
    v24 = v35;
    if (v36 != v35)
    {
      do
      {
        v23 = sub_662AC8(v23 - 13);
      }

      while (v23 != v22);
      v24 = v35;
    }

    v36 = v22;
    operator delete(v24);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  v25 = v29;
  if (v29)
  {
    v26 = v30;
    v27 = v29;
    if (v30 != v29)
    {
      do
      {
        v26 = sub_53A868(v26 - 160);
      }

      while (v26 != v25);
      v27 = v29;
    }

    v30 = v25;
    operator delete(v27);
  }
}

void sub_8BD790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_682DB0(&a9);
  sub_5EC5AC(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_8BD840@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_837A5C(a1))
  {
    sub_903020((a1 + 2576), &v21);
    sub_6821C8(a2, &v21);
    v4 = v25;
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v24;
    if (v24)
    {
      do
      {
        v6 = *v5;
        sub_55F7FC((v5 + 2));
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = __p;
    __p = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = v21;
    if (v21)
    {
      v9 = v22;
      v10 = v21;
      if (v22 != v21)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 3;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = v21;
      }

      v22 = v8;
      operator delete(v10);
    }

    sub_902C94(a1 + 2576, &v21);
    sub_6821CC(a2, &v21);
    v13 = v24;
    if (v24)
    {
      do
      {
        v14 = *v13;
        sub_55F7FC((v13 + 2));
        operator delete(v13);
        v13 = v14;
      }

      while (v14);
    }

    v15 = __p;
    __p = 0;
    if (v15)
    {
      operator delete(v15);
    }

    v16 = v21;
    if (v21)
    {
      v17 = v22;
      v18 = v21;
      if (v22 != v21)
      {
        do
        {
          v19 = *(v17 - 1);
          v17 -= 3;
          if (v19 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v18 = v21;
      }

      v22 = v16;
      operator delete(v18);
    }

    sub_6817D8(a2, *(a1 + 2528));
    sub_68179C(a2, 26);
    sub_64BC20(&v21, "{distance}");
    v20 = 1;
    sub_64E428(&v21, "{distance}", (a1 + 2528), &v20);
    sub_682240(a2, &v21);
    return sub_53A868(&v21);
  }

  else
  {
    bzero(a2, 0x358uLL);

    return sub_608080(a2);
  }
}

void sub_8BDA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5936E4(v3);
  _Unwind_Resume(a1);
}

void sub_8BDAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A58C(va);
  sub_5936E4(v3);
  _Unwind_Resume(a1);
}

void sub_8BDAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

BOOL sub_8BDB08(uint64_t a1)
{
  result = sub_83C58C(a1);
  if (result)
  {
    v3 = 136;
    if (*(a1 + 2552))
    {
      v3 = 128;
    }

    return *(a1 + 6000) > *(*(a1 + 2536) + v3);
  }

  return result;
}

void sub_8BDBF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5ED7B0(va);
  sub_5ED7B0(v2);
  _Unwind_Resume(a1);
}

void sub_8BDC28(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 2568);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3)
  {
    if (v3 == 1 && *(a1 + 2528) >= 200)
    {
      sub_903FE0(a1 + 2576, &v56);
      sub_8C71E4(v49, &v56);
      sub_6817B4(v49, *(a1 + 2528), *(a1 + 2528) - 100, *(a1 + 12008));
      v50 = 1;
      sub_68179C(v49, 87);
      v5 = sub_8A4848(*(a1 + 11952), 0);
      if (*(v5 + 23) < 0)
      {
        sub_325C(__p, *v5, *(v5 + 8));
      }

      else
      {
        *__p = *v5;
        v48 = *(v5 + 16);
      }

      v6 = HIBYTE(v48);
      if (v48 < 0)
      {
        v6 = __p[1];
      }

      if (v6)
      {
        if (SHIBYTE(v52) < 0)
        {
          if (v48 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          sub_13B38(&v51, v7, v6);
        }

        else if (SHIBYTE(v48) < 0)
        {
          sub_13A68(&v51, __p[0], __p[1]);
        }

        else
        {
          v51 = *__p;
          v52 = v48;
        }
      }

      v8 = a2[1];
      if (v8 >= a2[2])
      {
        v9 = sub_8C7408(a2, v49);
      }

      else
      {
        sub_5F01C8(a2[1], v49);
        v9 = v8 + 704;
      }

      a2[1] = v9;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      sub_5C3378(v49);
      v10 = v60;
      if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      v11 = v59;
      if (v59)
      {
        do
        {
          v12 = *v11;
          sub_55F7FC((v11 + 2));
          operator delete(v11);
          v11 = v12;
        }

        while (v12);
      }

      v13 = v58;
      v58 = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v14 = v56;
      if (v56)
      {
        v15 = v57;
        v16 = v56;
        if (v57 != v56)
        {
          do
          {
            v17 = *(v15 - 1);
            v15 -= 3;
            if (v17 < 0)
            {
              operator delete(*v15);
            }
          }

          while (v15 != v14);
          v16 = v56;
        }

        v57 = v14;
        operator delete(v16);
      }
    }

    sub_903754(a1 + 2576, &v56);
    v18 = v56;
    if (v57 != v56)
    {
      v19 = 0;
      v20 = *(a1 + 2528);
      v43 = 0x4EC4EC4EC4EC4EC5 * (v57 - v56);
      do
      {
        v21 = v56;
        v22 = sub_8A4848(*(a1 + 11952), v19);
        sub_8C71E4(v49, &v21[13 * v19]);
        v23 = v20 - *(v22 + 232);
        sub_6817B4(v49, v20, v23, *(a1 + 12008));
        v50 = 1;
        if (*(v22 + 23) < 0)
        {
          sub_325C(__p, *v22, *(v22 + 8));
        }

        else
        {
          *__p = *v22;
          v48 = *(v22 + 16);
        }

        v24 = HIBYTE(v48);
        if (v48 < 0)
        {
          v24 = __p[1];
        }

        if (v24)
        {
          if (SHIBYTE(v52) < 0)
          {
            if (v48 >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = __p[0];
            }

            sub_13B38(&v51, v25, v24);
          }

          else if (SHIBYTE(v48) < 0)
          {
            sub_13A68(&v51, __p[0], __p[1]);
          }

          else
          {
            v51 = *__p;
            v52 = v48;
          }
        }

        v44 = v23;
        v45 = v19;
        v26 = *(v22 + 248);
        v27 = *(v22 + 256);
        if (v26 != v27)
        {
          v28 = v54;
          v46 = v27;
          do
          {
            while (1)
            {
              v29 = *(a1 + 2528);
              v30 = v29 - *v26;
              v31 = v29 - v26[1];
              v32 = *(a1 + 12008);
              if (v28 >= v55)
              {
                break;
              }

              sub_681678(v28, v30, v31, v32);
              v28 += 56;
              v54 = v28;
              v26 += 2;
              if (v26 == v27)
              {
                goto LABEL_72;
              }
            }

            v33 = 0x6DB6DB6DB6DB6DB7 * ((v28 - __src) >> 3) + 1;
            if (v33 > 0x492492492492492)
            {
              sub_1794();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v55 - __src) >> 3) > v33)
            {
              v33 = 0xDB6DB6DB6DB6DB6ELL * ((v55 - __src) >> 3);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v55 - __src) >> 3)) >= 0x249249249249249)
            {
              v34 = 0x492492492492492;
            }

            else
            {
              v34 = v33;
            }

            if (v34)
            {
              if (v34 <= 0x492492492492492)
              {
                operator new();
              }

              sub_1808();
            }

            sub_681678(8 * ((v28 - __src) >> 3), v30, v31, v32);
            v28 = v35 + 56;
            v36 = __src;
            v37 = (v35 - (v54 - __src));
            memcpy(v37, __src, v54 - __src);
            __src = v37;
            v54 = v28;
            v55 = 0;
            if (v36)
            {
              operator delete(v36);
            }

            v27 = v46;
            v54 = v28;
            v26 += 2;
          }

          while (v26 != v46);
        }

LABEL_72:
        v38 = a2[1];
        v20 = v44;
        if (v38 >= a2[2])
        {
          v40 = sub_8C7408(a2, v49);
          v39 = v45;
        }

        else
        {
          sub_5F01C8(a2[1], v49);
          v39 = v45;
          v40 = v38 + 704;
        }

        a2[1] = v40;
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__p[0]);
        }

        sub_5C3378(v49);
        v19 = v39 + 1;
      }

      while (v19 != v43);
      v18 = v56;
    }

    if (v18)
    {
      v41 = v57;
      v42 = v18;
      if (v57 != v18)
      {
        do
        {
          v41 = sub_662AC8(v41 - 13);
        }

        while (v41 != v18);
        v42 = v56;
      }

      v57 = v18;
      operator delete(v42);
    }
  }
}

void sub_8BE1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  *(v23 + 8) = v22;
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_5C3378(&a22);
  sub_662AC8((v24 - 192));
  sub_5ED7B0(a13);
  _Unwind_Resume(a1);
}

void sub_8BE260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_5C3378(va);
  sub_681738(v12 - 192);
  sub_5ED7B0(v11);
  _Unwind_Resume(a1);
}

void sub_8BE304(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_903DB4(a1 + 2576, &v24);
  sub_8A4A64(__p, v25);
  sub_8C7594(v20, &v24, __p);
  v4 = v19;
  if (v19)
  {
    do
    {
      v7 = *v4;
      v8 = *(v4 + 6);
      if (v8)
      {
        *(v4 + 7) = v8;
        operator delete(v8);
      }

      if (v4[39] < 0)
      {
        operator delete(*(v4 + 2));
      }

      operator delete(v4);
      v4 = v7;
    }

    while (v7);
  }

  v5 = __p[0];
  __p[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  sub_6817B4(v20, *(a1 + 2528), 0, *(a1 + 12008));
  v21 = 2;
  if (*(a1 + 5992) == 1)
  {
    sub_68179C(v20, 87);
  }

  if (*(a1 + 5994))
  {
LABEL_44:
    sub_5F01C8(&v27, v20);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v25[5] = a2;
    v26 = 0;
    operator new();
  }

  if (*(a1 + 5992) == 1)
  {
    v6 = **(a1 + 11952);
  }

  else
  {
    v9 = *(a1 + 11960);
    v6 = *v9;
    if (*v9 != v9[1])
    {
      if (*(v6 + 23) < 0)
      {
        v10 = *(v6 + 1);
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else if (*(v6 + 23))
      {
        goto LABEL_25;
      }
    }

    v11 = *(a1 + 11968);
    v6 = *v11;
    v12 = v11[1];
    if (v6 != v12)
    {
      while (*(v6 + 30) != 1)
      {
        v6 = (v6 + 152);
        if (v6 == v12)
        {
          goto LABEL_40;
        }
      }
    }

    if (v6 == v12)
    {
LABEL_40:
      v27 = 0uLL;
      v28 = 0;
LABEL_42:
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      goto LABEL_44;
    }
  }

  if ((*(v6 + 23) & 0x80000000) == 0)
  {
LABEL_25:
    v13 = *v6;
    v28 = *(v6 + 2);
    v27 = v13;
    v14 = HIBYTE(v28);
    v15 = SHIBYTE(v28);
    v16 = *(&v13 + 1);
    if (v28 < 0)
    {
      v14 = *(&v27 + 1);
    }

    if (!v14)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  v10 = *(v6 + 1);
LABEL_30:
  sub_325C(&v27, *v6, v10);
  v14 = HIBYTE(v28);
  v15 = SHIBYTE(v28);
  v16 = *(&v27 + 1);
  if (v28 < 0)
  {
    v14 = *(&v27 + 1);
  }

  if (!v14)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (SHIBYTE(v23) < 0)
  {
    if (v15 >= 0)
    {
      v17 = &v27;
    }

    else
    {
      v17 = v27;
    }

    sub_13B38(&v22, v17, v14);
  }

  else if (v15 < 0)
  {
    sub_13A68(&v22, v27, v16);
  }

  else
  {
    v22 = v27;
    v23 = v28;
  }

  goto LABEL_42;
}

void sub_8BE6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5C3378(va);
  sub_8A4BA8(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void sub_8BE7B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 2556))
  {
    sub_904E8C(a1 + 2576, &v19);
    v18 = *(a1 + 2528) - *(a1 + 5952);
    sub_80A06C(a2, &v19, *(*(a1 + 2536) + 417), 3, (a1 + 5984));
    sub_68179C(a2, 5);
    sub_6817B4(a2, *(a1 + 2528), *(a1 + 5952), *(a1 + 12008));
    v4 = *(a1 + 12008);
    v5 = *(a1 + 5984);
    v6 = v4 <= v5;
    v7 = v4 - v5;
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    sub_6817C0(a2, v8);
    sub_64BC20(v17, "{valid_distance}");
    v16 = 1;
    sub_64E428(v17, "{valid_distance}", &v18, &v16);
    sub_682240(a2, v17);
    sub_53A868(v17);
    v9 = v22;
    if (v22)
    {
      do
      {
        v10 = *v9;
        sub_55F7FC((v9 + 2));
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = v21;
    v21 = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = v19;
    if (v19)
    {
      v13 = v20;
      v14 = v19;
      if (v20 != v19)
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = v19;
      }

      v20 = v12;
      operator delete(v14);
    }
  }

  else
  {
    bzero(a2, 0x460uLL);
    sub_608080(a2);
    *(a2 + 856) = -1;
    *(a2 + 864) = 0;
    *(a2 + 872) = 0;
    *(a2 + 888) = 0;
    *(a2 + 880) = 0;
    *(a2 + 896) = 0;
    *(a2 + 904) = 2;
    *(a2 + 912) = -1;
    *(a2 + 920) = 0u;
    *(a2 + 936) = 0u;
    *(a2 + 952) = 0u;
    *(a2 + 968) = 0u;
    *(a2 + 984) = 0u;
    *(a2 + 1000) = 0u;
    *(a2 + 1016) = 0;
    *(a2 + 1024) = 1065353216;
    *(a2 + 1032) = 1;
    *(a2 + 1040) = 0;
    *(a2 + 1048) = 0u;
    *(a2 + 1064) = 0u;
    *(a2 + 1080) = 0u;
    *(a2 + 1096) = 0;
    *(a2 + 1104) = 1065353216;
    *(a2 + 1112) = 1;
  }
}

void sub_8BE9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5938B0(v3);
  sub_53A58C((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_8BE9E4(_Unwind_Exception *a1)
{
  sub_5938B0(v1);
  sub_53A58C((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_8BEA18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = 2528;
  if (*(a1 + 2556))
  {
    v4 = 5952;
  }

  v5 = *(a1 + v4);
  v25 = v5;
  sub_90609C(&v21);
  sub_80A06C(a2, &v21, *(*(a1 + 2536) + 418), 3, (a1 + 5984));
  sub_68179C(a2, 4);
  v6 = 136;
  if (*(a1 + 2552))
  {
    v6 = 128;
  }

  sub_6817B4(a2, v5, *(*(a1 + 2536) + v6), *(a1 + 12008));
  v7 = *(a1 + 12008);
  v8 = *(a1 + 5984);
  v9 = v7 <= v8;
  v10 = v7 - v8;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  sub_6817C0(a2, v11);
  sub_64BC20(v20, "{distance}");
  v19 = 1;
  sub_64E428(v20, "{distance}", &v25, &v19);
  sub_682240(a2, v20);
  sub_53A868(v20);
  v12 = v24;
  if (v24)
  {
    do
    {
      v13 = *v12;
      sub_55F7FC((v12 + 2));
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v23;
  v23 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = v21;
  if (v21)
  {
    v16 = v22;
    v17 = v21;
    if (v22 != v21)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v21;
    }

    v22 = v15;
    operator delete(v17);
  }
}

void sub_8BEBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5938B0(v3);
  sub_53A58C((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_8BEBD8(_Unwind_Exception *a1)
{
  sub_5938B0(v1);
  sub_53A58C((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_8BEC0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 2557) == 1)
  {
    v4 = 136;
    if (*(a1 + 2552))
    {
      v4 = 128;
    }

    v5 = (*(a1 + 2536) + v4);
  }

  else
  {
    v5 = (a1 + 2528);
  }

  v41 = *v5;
  sub_904D44(a1 + 2576, &v36);
  sub_80A2FC(a2, &v36);
  v6 = nullsub_1(&v36);
  sub_68215C(a2, v6);
  sub_809E40(a2, *(*(a1 + 2536) + 418));
  if (*(a1 + 11909) == 1)
  {
    v7 = *(a1 + 6592);
  }

  else
  {
    v7 = 0;
  }

  sub_6817B4(a2, v41, v7, *(a1 + 12008));
  v8 = *(a1 + 12008);
  v9 = *(a1 + 5984);
  v10 = v8 <= v9;
  v11 = v8 - v9;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_6817C0(a2, v12);
  sub_681D20(a2, (a1 + 5984));
  sub_907C18(a1 + 2576, &v32);
  if (sub_6F390(&v32))
  {
    sub_80A308(a2, &v32);
  }

  v13 = (a1 + 5992);
  if (*v13)
  {
    v14 = 15;
  }

  else
  {
    v14 = 6;
  }

  sub_68179C(a2, v14);
  if ((*v13 & 1) == 0 && (v13[1] & 1) == 0)
  {
    sub_64BC20(v31, "{distance}");
    v30 = 1;
    sub_64E428(v31, "{distance}", &v41, &v30);
    sub_682240(a2, v31);
    sub_53A868(v31);
  }

  v15 = v35;
  if (v35)
  {
    do
    {
      v16 = *v15;
      sub_55F7FC((v15 + 2));
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = v34;
  v34 = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = v32;
  if (v32)
  {
    v19 = v33;
    v20 = v32;
    if (v33 != v32)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v32;
    }

    v33 = v18;
    operator delete(v20);
  }

  v22 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v39;
  if (v39)
  {
    do
    {
      v24 = *v23;
      sub_55F7FC((v23 + 2));
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v25 = v38;
  v38 = 0;
  if (v25)
  {
    operator delete(v25);
  }

  v26 = v36;
  if (v36)
  {
    v27 = v37;
    v28 = v36;
    if (v37 != v36)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = v36;
    }

    v37 = v26;
    operator delete(v28);
  }
}

void sub_8BEEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30)
{
  sub_53A868(&a10);
  sub_53A58C(&a30);
  sub_5938B0(v30);
  sub_662AC8((v31 - 144));
  _Unwind_Resume(a1);
}

void sub_8BEF3C(_Unwind_Exception *a1)
{
  sub_5938B0(v1);
  sub_662AC8(v2 - 144);
  _Unwind_Resume(a1);
}

void sub_8BEF5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 2556))
  {
    sub_908508(a1 + 2576, &v20);
    sub_6828CC(a2, &v20, (a1 + 5984), 0, 0, 1);
    sub_68179C(a2, 42);
    v4 = *(a1 + 2528);
    v5 = *(a1 + 5984);
    v6 = *(a1 + 6000);
    v7 = sub_682B0C(a2);
    v8 = 12000;
    if (v7)
    {
      v8 = 12008;
    }

    v9 = *(a1 + v8);
    sub_6817B4(a2, v4 - v5, v6, v9);
    sub_6817C0(a2, v9);
    sub_6828D4(a2, 4);
    v10 = v24;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = v23;
    if (v23)
    {
      do
      {
        v12 = *v11;
        sub_55F7FC((v11 + 2));
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = __p;
    __p = 0;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = v20;
    if (v20)
    {
      v15 = v21;
      v16 = v20;
      if (v21 != v20)
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v16 = v20;
      }

      v21 = v14;
      operator delete(v16);
    }
  }

  else
  {
    *(a2 + 416) = 0u;
    *(a2 + 432) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = -1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 0;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v19 = vnegq_f64(v18);
    *(a2 + 40) = v19;
    *(a2 + 56) = v19;
    *(a2 + 72) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x7FFFFFFF;
    *(a2 + 104) = v19;
    *(a2 + 120) = 0x7FFFFFFF;
    *(a2 + 128) = 0x7FFFFFFF;
    *(a2 + 132) = 0x7FFFFFFF7FFFFFFFLL;
    *(a2 + 152) = 0x8000000080000000;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0;
    *(a2 + 212) = 0x8000000080000000;
    *(a2 + 220) = 0x7FFFFFFF;
    *(a2 + 240) = xmmword_2297C00;
    *(a2 + 256) = 0u;
    *(a2 + 256) = 0x7FFFFFFF;
    *(a2 + 260) = 0x7FFFFFFF7FFFFFFFLL;
    *(a2 + 280) = 0xBFF0000000000000;
    *(a2 + 288) = 0xBFF0000000000000;
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 320) = 1;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(a2 + 356) = -1;
    *(a2 + 368) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 380) = -1;
    *(a2 + 384) = -1;
    *(a2 + 396) = 1;
    *(a2 + 400) = 0;
    *(a2 + 408) = 0;
    *(a2 + 424) = 0;
    *(a2 + 416) = 0;
    *(a2 + 428) = 0x7FFFFFFF7FFFFFFFLL;
    *(a2 + 440) = -1;
  }
}

void sub_8BF218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8BF24C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 2557);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3 == 1)
  {
    sub_864EB8(&v49);
    sub_6828CC(&v36, &v49, (a1 + 5984), 0, 0, 1);
    sub_68179C(&v36, 43);
    v5 = *(a1 + 2536);
    if (*(v5 + 2440))
    {
      v6 = sub_67A924(v5);
      v7 = sub_67A2F8(*(a1 + 2536), *(a1 + 5996));
      if (v6 + v7 <= *(a1 + 6000))
      {
        v8 = v6;
        do
        {
          sub_8BF698(a1, v8, *(*(a1 + 2536) + 2448) + v8, v35);
          if (sub_5CBB30(v35) && v35[0] + v7 <= *(a1 + 6000))
          {
            v8 = v35[0];
          }

          if (sub_682B0C(&v36))
          {
            v10 = 12008;
          }

          else
          {
            v10 = 12000;
          }

          v11 = *(a1 + v10);
          sub_6817B4(&v36, v8 + v7, v8, v11);
          sub_6817C0(&v36, v11);
          sub_682A1C(&v36, *(*(a1 + 2536) + 422));
          sub_6828D4(&v36, 3);
          v12 = a2[1];
          if (v12 >= a2[2])
          {
            v9 = sub_7A5EF8(a2, &v36);
          }

          else
          {
            sub_7A6070(a2[1], &v36);
            v9 = v12 + 448;
          }

          a2[1] = v9;
          v8 += v6;
          sub_5941F8(v35);
        }

        while (v8 + v7 <= *(a1 + 6000));
      }
    }

    else
    {
      v13 = *(a1 + 6000);
      v14 = 136;
      if (*(a1 + 2552))
      {
        v14 = 128;
      }

      v15 = *(v5 + v14);
      v16 = sub_682B0C(&v36);
      v17 = 12000;
      if (v16)
      {
        v17 = 12008;
      }

      v18 = *(a1 + v17);
      sub_6817B4(&v36, v13, v15, v18);
      sub_6817C0(&v36, v18);
      v19 = a2[1];
      if (v19 >= a2[2])
      {
        v20 = sub_7A5EF8(a2, &v36);
      }

      else
      {
        sub_7A6070(a2[1], &v36);
        v20 = v19 + 448;
      }

      a2[1] = v20;
    }

    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    v21 = v43;
    if (v43)
    {
      v22 = v44;
      v23 = v43;
      if (v44 != v43)
      {
        do
        {
          v22 = sub_662AC8(v22 - 13);
        }

        while (v22 != v21);
        v23 = v43;
      }

      v44 = v21;
      operator delete(v23);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    v24 = v37;
    if (v37)
    {
      v25 = v38;
      v26 = v37;
      if (v38 != v37)
      {
        do
        {
          v25 = sub_53A868(v25 - 160);
        }

        while (v25 != v24);
        v26 = v37;
      }

      v38 = v24;
      operator delete(v26);
    }

    v27 = v53;
    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = v52;
    if (v52)
    {
      do
      {
        v29 = *v28;
        sub_55F7FC((v28 + 2));
        operator delete(v28);
        v28 = v29;
      }

      while (v29);
    }

    v30 = v51;
    v51 = 0;
    if (v30)
    {
      operator delete(v30);
    }

    v31 = v49;
    if (v49)
    {
      v32 = v50;
      v33 = v49;
      if (v50 != v49)
      {
        do
        {
          v34 = *(v32 - 1);
          v32 -= 3;
          if (v34 < 0)
          {
            operator delete(*v32);
          }
        }

        while (v32 != v31);
        v33 = v49;
      }

      v50 = v31;
      operator delete(v33);
    }
  }
}

void sub_8BF600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64[1] = v65;
  sub_682DB0(&a64);
  sub_662AC8((v66 - 184));
  sub_5EC5AC(v64);
  _Unwind_Resume(a1);
}

uint64_t sub_8BF698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 6008);
  v6 = *(a1 + 6016);
  if (v5 == v6)
  {
LABEL_12:
    *(a4 + 8) = 0u;
    *(a4 + 424) = 0;
    *(a4 + 248) = 0u;
    *(a4 + 232) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 184) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 152) = 0u;
    *(a4 + 136) = 0u;
    *(a4 + 120) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 392) = 0u;
    *(a4 + 408) = 0u;
    *(a4 + 360) = 0u;
    *(a4 + 376) = 0u;
    *(a4 + 328) = 0u;
    *(a4 + 344) = 0u;
    *(a4 + 296) = 0u;
    *(a4 + 312) = 0u;
    *(a4 + 264) = 0u;
    *(a4 + 280) = 0u;
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a4 + 8);
    *(a4 + 168) = -1;
    *(a4 + 252) = 0;
    *(a4 + 192) = 0;
    *(a4 + 160) = -1;
    *(a4 + 200) = 0;
    *(a4 + 208) = 0;
    *(a4 + 184) = 0;
    *(a4 + 176) = 0;
    *(a4 + 216) = -1;
    *(a4 + 224) = -1;
    *(a4 + 232) = 0x7FFFFFFF;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 268) = 0;
    *(a4 + 260) = 0;
    *(a4 + 276) = 0;
    return sub_734CE0(a4 + 280);
  }

  else
  {
    while (1)
    {
      if (sub_684288(v5))
      {
        if (*v5 > a3)
        {
          goto LABEL_12;
        }

        if (*v5 >= a2)
        {
          v10 = sub_8A5C2C(*(a1 + 11976), v5[21]);
          if (sub_445A90(v10) || sub_683A0C(v10))
          {
            break;
          }
        }
      }

      v5 += 54;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    return sub_5F3168(a4, v5);
  }
}

void sub_8BF834(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

void sub_8BF880(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_90870C(a1 + 2576, &v28);
  sub_6828CC(a2, &v28, (a1 + 5984), 0, 0, 1);
  sub_68179C(a2, 30);
  v4 = (a1 + 11905);
  if (*(a1 + 2557) == 1)
  {
    v5 = 136;
    if (*(a1 + 2552))
    {
      v5 = 128;
    }

    v6 = *(*(a1 + 2536) + v5);
    if (*v4 != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v9 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_18;
  }

  v6 = *(a1 + 6000);
  if (*v4 == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(a1 + 11911))
  {
    v7 = 11880;
  }

  else if (*(a1 + 11912))
  {
    v7 = 11888;
  }

  else if (*(a1 + 11913))
  {
    v7 = 11896;
  }

  else
  {
    v7 = 11872;
    if (*(a1 + 11906))
    {
      v7 = 11864;
    }
  }

  v10 = *(a1 + v7);
LABEL_18:
  v11 = sub_67A2F8(*(a1 + 2536), *(a1 + 5996));
  v12 = *(a1 + 6000);
  v13 = sub_682B0C(a2);
  if (v11 + v10 <= v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = 12000;
  if (v13)
  {
    v15 = 12008;
  }

  v16 = *(a1 + v15);
  sub_6817B4(a2, v6, v14, v16);
  sub_6817C0(a2, v16);
  sub_682A1C(a2, *(*(a1 + 2536) + 420));
  sub_6817D8(a2, *(a1 + 2528));
  v17 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v18 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v19 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = sub_89F42C(a1);
  }

  if (v17 <= v19)
  {
    sub_682A2C(a2, 1);
  }

  v20 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v31;
  if (v31)
  {
    do
    {
      v22 = *v21;
      sub_55F7FC((v21 + 2));
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = __p;
  __p = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = v28;
  if (v28)
  {
    v25 = v29;
    v26 = v28;
    if (v29 != v28)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v28;
    }

    v29 = v24;
    operator delete(v26);
  }
}

void sub_8BFB64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8BFB78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8BFB94(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_89F42C(a1);
  sub_90870C((a1 + 322), &v18);
  sub_6828CC(a2, &v18, a1 + 748, 0, 0, 1);
  sub_68179C(a2, 30);
  v5 = a1[750];
  v6 = sub_682B0C(a2);
  if (v5 <= v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = 1500;
  if (v6)
  {
    v8 = 1501;
  }

  v9 = a1[v8];
  sub_6817B4(a2, v5, v7, v9);
  sub_6817C0(a2, v9);
  sub_6817D8(a2, a1[316]);
  v10 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v21;
  if (v21)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v18;
  if (v18)
  {
    v15 = v19;
    v16 = v18;
    if (v19 != v18)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v18;
    }

    v19 = v14;
    operator delete(v16);
  }
}

void sub_8BFD1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8BFD50(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_908E20(a1 + 2576);
  sub_6828CC(a2, &v22, (a1 + 5984), 0, 0, 1);
  sub_68179C(a2, 32);
  v4 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
  v5 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
  if (!*(a1 + 2552))
  {
    v4 = v5;
  }

  if (*(a1 + 11912))
  {
    v6 = 11888;
  }

  else if (*(a1 + 11913))
  {
    v6 = 11896;
  }

  else
  {
    v6 = 11872;
    if (*(a1 + 11906))
    {
      v6 = 11864;
    }
  }

  v7 = *(a1 + v6);
  v8 = sub_682B0C(a2);
  v9 = 12000;
  if (v8)
  {
    v9 = 12008;
  }

  v10 = *(a1 + v9);
  sub_6817B4(a2, v4, v7, v10);
  sub_6817C0(a2, v10);
  sub_6817D8(a2, *(a1 + 2528));
  sub_682A1C(a2, *(*(a1 + 2536) + 421));
  v11 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v12 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v13 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = sub_89F42C(a1);
  }

  if (v11 <= v13)
  {
    sub_682A2C(a2, 1);
  }

  v14 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v25;
  if (v25)
  {
    do
    {
      v16 = *v15;
      sub_55F7FC((v15 + 2));
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = __p;
  __p = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = v22;
  if (v22)
  {
    v19 = v23;
    v20 = v22;
    if (v23 != v22)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v22;
    }

    v23 = v18;
    operator delete(v20);
  }
}

void sub_8BFFAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8BFFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8BFFDC(_BYTE *a1)
{
  if (a1[11918] == 1)
  {
    if (a1[11906] == 1)
    {
      sub_90A3BC(a1 + 2576);
    }

    sub_909820((a1 + 2576));
  }

  sub_909390((a1 + 2576));
}

void sub_8C0258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C026C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C04D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C04E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C0500(uint64_t a1)
{
  if (*(a1 + 11906) == 1)
  {
    sub_90D9A8(a1 + 2576, a1 + 6592);
  }

  sub_90DF74(a1 + 2576, a1 + 6592);
}

void sub_8C0784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C0798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C07B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + 11910);
  v45 = 0;
  v44 = 0u;
  *v42 = 0u;
  *v43 = 0u;
  v46 = 1065353216;
  v47 = 1;
  v48 = 0;
  v49[0] = 0;
  *(v49 + 7) = 0;
  if (*(a1 + 11917) == 1)
  {
    sub_9109D8(a1 + 2576, 1, &v37);
    sub_6876C8(v42, &v37);
    v5 = v41;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = v40;
    if (v40)
    {
      do
      {
        v7 = *v6;
        sub_55F7FC((v6 + 2));
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = __p;
    __p = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = v37;
    if (v37)
    {
      v10 = v38;
      v11 = v37;
      if (v38 == v37)
      {
        goto LABEL_29;
      }

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
LABEL_28:
      v11 = v37;
LABEL_29:
      v38 = v9;
      operator delete(v11);
    }
  }

  else
  {
    sub_909CBC(a1 + 2576, 1, *v4, 1, &v37);
    sub_6876C8(v42, &v37);
    v13 = v41;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = v40;
    if (v40)
    {
      do
      {
        v15 = *v14;
        sub_55F7FC((v14 + 2));
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }

    v16 = __p;
    __p = 0;
    if (v16)
    {
      operator delete(v16);
    }

    v9 = v37;
    if (v37)
    {
      v17 = v38;
      v11 = v37;
      if (v38 == v37)
      {
        goto LABEL_29;
      }

      do
      {
        v18 = *(v17 - 1);
        v17 -= 3;
        if (v18 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v9);
      goto LABEL_28;
    }
  }

  sub_6828CC(a2, v42, (a1 + 5984), 0, 0, 1);
  if (*(a1 + 2554))
  {
    if (*(a1 + 2554) == 3)
    {
      v19 = sub_8C4FD0(a1);
    }

    else
    {
      v19 = sub_89F42C(a1);
    }
  }

  else
  {
    v19 = sub_8C5390(a1);
  }

  if (v19 == *(a1 + 5984))
  {
    sub_682A34(a2, 1);
  }

  v20 = *(a1 + 11872);
  v21 = sub_682B0C(a2);
  v22 = 12000;
  if (v21)
  {
    v22 = 12008;
  }

  v23 = *(a1 + v22);
  sub_6817B4(a2, v20, 0, v23);
  sub_6817C0(a2, v23);
  sub_682A1C(a2, *(*(a1 + 2536) + 424));
  sub_682A24(a2, 1);
  if (*(a1 + 5992))
  {
    v24 = 86;
  }

  else if (*v4)
  {
    v24 = 46;
  }

  else
  {
    v24 = 45;
  }

  sub_68179C(a2, v24);
  v25 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v26 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v27 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v27 = v26;
    }
  }

  else
  {
    v27 = sub_89F42C(a1);
  }

  if (v25 <= v27)
  {
    sub_682A2C(a2, 1);
  }

  if (*(a1 + 5994) == 1)
  {
    sub_6828D4(a2, 3);
  }

  if ((*v4 & 1) == 0)
  {
    v28 = sub_67A384(*(a1 + 2536), *(a1 + 5996));
    sub_682764(a2, v28, 0);
  }

  v29 = v49[0];
  if (v49[0] && !atomic_fetch_add((v49[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    do
    {
      v31 = *v30;
      sub_55F7FC((v30 + 2));
      operator delete(v30);
      v30 = v31;
    }

    while (v31);
  }

  v32 = v43[1];
  v43[1] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v42[0];
  if (v42[0])
  {
    v34 = v42[1];
    v35 = v42[0];
    if (v42[1] != v42[0])
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v42[0];
    }

    v42[1] = v33;
    operator delete(v35);
  }
}

void sub_8C0C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C0C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C0C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_682DB0(v15);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C0CAC()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v7 = v6;
  v8 = (v0 + 11801);
  v26 = 0uLL;
  v27 = 0;
  if (*(v0 + 11917) == 1)
  {
    sub_8B5B14(&v24, *(v0 + 2536), *(v0 + 2544), v1, v2, *(v0 + 11996) - 1);
    sub_910ABC();
  }

  sub_90EF98((v0 + 2576), v1, v2, *(v0 + 11910), &v24);
  v9 = v26;
  if (v26)
  {
    v10 = *(&v26 + 1);
    v11 = v26;
    if (*(&v26 + 1) != v26)
    {
      do
      {
        v10 = sub_662AC8(v10 - 13);
      }

      while (v10 != v9);
      v11 = v26;
    }

    *(&v26 + 1) = v9;
    operator delete(v11);
  }

  v26 = v24;
  v27 = v25;
  sub_68275C(v7, &v26, 0, 0, 1);
  sub_681D20(v7, (v5 + 5984));
  v12 = *(v5 + 11872);
  if (v12 == *(v5 + 5984))
  {
    sub_682A34(v7, 1);
    v12 = *(v5 + 11872);
  }

  v13 = sub_682B0C(v7);
  v14 = 12000;
  if (v13)
  {
    v14 = 12008;
  }

  v15 = *(v5 + v14);
  sub_6817B4(v7, v12, 0, v15);
  sub_6817C0(v7, v15);
  sub_682A1C(v7, *(*(v5 + 2536) + 424));
  sub_682A24(v7, 1);
  sub_682AA0(v7);
  if (*(v5 + 5992))
  {
    v16 = 86;
  }

  else if (v8[109])
  {
    v16 = 46;
  }

  else
  {
    v16 = 45;
  }

  sub_68179C(v7, v16);
  v17 = sub_681D54(v7);
  if (*(v5 + 2555) == 1)
  {
    v18 = sub_67A1FC(*(v5 + 2536), *(v5 + 5996));
    v19 = sub_67A218(*(v5 + 2536), *(v5 + 5996));
    if (*(v5 + 2552))
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = sub_89F42C(v5);
  }

  if (v17 <= v19)
  {
    sub_682A2C(v7, 1);
  }

  if ((v8[109] & 1) == 0)
  {
    if (*(v5 + 2555) == 1 && *v8 == 1)
    {
      v20 = sub_67A3BC(*(v5 + 2536), *(v5 + 5996));
    }

    else
    {
      v20 = sub_67A384(*(v5 + 2536), *(v5 + 5996));
    }

    sub_682764(v7, v20, 0);
  }

  sub_6817D8(v7, *(v5 + 2528));
  sub_6817E0(v7, *(*(v4 + 1104) + 2616 * v3 + 1008));
  v21 = v26;
  if (v26)
  {
    v22 = *(&v26 + 1);
    v23 = v26;
    if (*(&v26 + 1) != v26)
    {
      do
      {
        v22 = sub_662AC8(v22 - 13);
      }

      while (v22 != v21);
      v23 = v26;
    }

    *(&v26 + 1) = v21;
    operator delete(v23);
  }
}

void sub_8C10F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_662AC8(va);
  sub_80B958(va1);
  sub_681738(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_8C1150(_Unwind_Exception *a1)
{
  sub_682DB0(v1);
  sub_681738(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_8C1188(uint64_t a1)
{
  v2 = sub_8A5C2C(*(a1 + 11976), *(a1 + 9840));
  if (*(a1 + 11906) == 1)
  {
    sub_90AFF8(a1 + 2576, v2);
  }

  sub_90ABC0(a1 + 2576, v2);
}

void sub_8C13F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C140C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C165C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C1670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C168C(uint64_t a1)
{
  v1 = *(a1 + 11910);
  if (*(a1 + 11906) == 1)
  {
    sub_90B890(a1 + 2576, a1 + 6152, v1);
  }

  sub_90B44C(a1 + 2576, a1 + 6152, v1);
}

void sub_8C1910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C1924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8C1940@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 2536);
  if (*(v4 + 2421) & 1) != 0 || (*(v4 + 2422))
  {
    v5 = *(*(result + 2544) + 1454);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    if (v5 == 1)
    {
      v6 = *(result + 6008);
      for (i = *(result + 6016); v6 != i; v6 += 54)
      {
        result = sub_6842B4(v6);
        if (result)
        {
          result = sub_67A630(*(v2 + 2536), *(v2 + 5996));
          if (*v6 + result <= *(v2 + 6000) && (*v6 != *(v2 + 6152) || (*(v2 + 11916) & 1) == 0))
          {
            sub_90BCF0(v2 + 2576, v6);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_8C1C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[1] = v10;
  sub_682DB0(&a9);
  sub_662AC8((v11 - 192));
  sub_5EC5AC(v9);
  _Unwind_Resume(a1);
}

void sub_8C1D00(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 11424) - *(a1 + 11416);
  if (v3)
  {
    v5 = 0;
    v6 = 0x4FA4FA4FA4FA4FA5 * (v3 >> 3);
    while (1)
    {
      v7 = (*(a1 + 11416) + 360 * v5);
      if ((sub_6C7D08(v7) & 1) != 0 && (sub_6C8F50(v7) & 1) == 0 && (sub_6C8F24(v7) & 1) == 0)
      {
        break;
      }

LABEL_4:
      if (++v5 == v6)
      {
        return;
      }
    }

    v54 = 0;
    v55 = 0uLL;
    v8 = *(a1 + 2528);
    if (sub_6C7CA8(v7))
    {
      sub_90E30C(a1 + 2576, a1 + 6592, &__p);
      v9 = v54;
      if (v54)
      {
        v10 = v55;
        v11 = v54;
        if (v55 != v54)
        {
          do
          {
            v10 = sub_662AC8(v10 - 13);
          }

          while (v10 != v9);
LABEL_16:
          v11 = v54;
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_6C1204(a1 + 5088, v7, &__p);
      v9 = v54;
      if (v54)
      {
        v12 = v55;
        v11 = v54;
        if (v55 != v54)
        {
          do
          {
            v12 = sub_662AC8(v12 - 13);
          }

          while (v12 != v9);
          goto LABEL_16;
        }

LABEL_17:
        *&v55 = v9;
        operator delete(v11);
      }
    }

    v13 = __p;
    v54 = __p;
    v55 = v43;
    if (__p != v43)
    {
      if (sub_6810A0(__p))
      {
        sub_68275C(&__p, &v54, 0, 0, 1);
        sub_681D20(&__p, (a1 + 5984));
        v14 = v8;
        if (sub_6C7CA8(v7))
        {
          v15 = sub_67A518(*(a1 + 2536), *(a1 + 5996));
          v16 = *(a1 + 6592);
          v14 = v16 + v15 >= v8 ? v8 : v16 + v15;
          if (v16 < v8)
          {
            v8 = *(a1 + 6592);
          }
        }

        if (sub_6C7C84(v7) && (sub_6CA4CC(v7, &v41), v41.n128_i64[0] > *(a1 + 5984)) && (sub_6CA4CC(v7, &v40), sub_6CA4EC(v7, &v39), v40.n128_i64[0] < v39.n128_i64[0]))
        {
          sub_6CA4CC(v7, &v38);
          v17 = v38.n128_u64[0] - *(a1 + 5984);
        }

        else
        {
          sub_6CA4EC(v7, &v37);
          v17 = v37.n128_u64[0];
        }

        if (v17 < v14)
        {
          v14 = v17;
        }

        sub_6CA4EC(v7, &v41);
        v18 = v41.n128_i64[1];
        v19 = sub_682B0C(&__p);
        if (v18 >= v8)
        {
          v20 = v8;
        }

        else
        {
          v20 = v18;
        }

        v21 = 12000;
        if (v19)
        {
          v21 = 12008;
        }

        v22 = *(a1 + v21);
        sub_6817B4(&__p, v14, v20, v22);
        sub_6817C0(&__p, v22);
        sub_682A1C(&__p, *(*(a1 + 2536) + 423));
        v23 = sub_681D54(&__p);
        if (*(a1 + 2555) == 1)
        {
          v24 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
          v25 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
          if (*(a1 + 2552))
          {
            v25 = v24;
          }
        }

        else
        {
          v25 = sub_89F42C(a1);
        }

        if (v23 <= v25)
        {
          sub_682A2C(&__p, 1);
        }

        v26 = sub_6C7EA0(v7);
        sub_68179C(&__p, v26);
        if (sub_681D38(&__p) == 54)
        {
          sub_681D2C(&__p);
        }

        v27 = a2[1];
        if (v27 >= a2[2])
        {
          v28 = sub_7A5EF8(a2, &__p);
        }

        else
        {
          sub_7A6070(a2[1], &__p);
          v28 = v27 + 448;
        }

        a2[1] = v28;
        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        v29 = v48;
        if (v48)
        {
          v30 = v49;
          v31 = v48;
          if (v49 != v48)
          {
            do
            {
              v30 = sub_662AC8(v30 - 13);
            }

            while (v30 != v29);
            v31 = v48;
          }

          v49 = v29;
          operator delete(v31);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        v32 = v43;
        if (v43)
        {
          v33 = *(&v43 + 1);
          v34 = v43;
          if (*(&v43 + 1) != v43)
          {
            do
            {
              v33 = sub_53A868(v33 - 160);
            }

            while (v33 != v32);
            v34 = v43;
          }

          *(&v43 + 1) = v32;
          operator delete(v34);
        }
      }

      v13 = v54;
    }

    if (v13)
    {
      v35 = v55;
      v36 = v13;
      if (v55 != v13)
      {
        do
        {
          v35 = sub_662AC8(v35 - 13);
        }

        while (v35 != v13);
        v36 = v54;
      }

      *&v55 = v13;
      operator delete(v36);
    }

    goto LABEL_4;
  }
}

void sub_8C2198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_682DB0(va);
  sub_681738(v18 - 112);
  sub_5EC5AC(v17);
  _Unwind_Resume(a1);
}

void sub_8C221C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + 11907);
  sub_912CAC(a1 + 2576, 1, *(a1 + 11910), &v28);
  sub_6828CC(a2, &v28, (a1 + 5984), 0, 0, 1);
  v5 = (a1 + 5996);
  v6 = *(a1 + 11864);
  v7 = sub_67A2DC(*(a1 + 2536), *(a1 + 5996));
  v8 = v7;
  if (v4[6] == 1)
  {
    if (*(a1 + 9672) < v7)
    {
      v8 = *(a1 + 9672);
    }

    if (v4[5] != 1)
    {
LABEL_3:
      if (v4[7] != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if (v4[5] != 1)
  {
    goto LABEL_3;
  }

  if (*(a1 + 8352) < v8)
  {
    v8 = *(a1 + 8352);
  }

  if (v4[7] != 1)
  {
LABEL_4:
    if (v4[9] != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  if (*(a1 + 10552) < v8)
  {
    v8 = *(a1 + 10552);
  }

  if (v4[9] != 1)
  {
LABEL_5:
    if (*(a1 + 7904) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_26:
  v17 = *(a1 + 6584);
  if (*(a1 + 6152) - v17 < v8)
  {
    v8 = *(a1 + 6152) - v17;
  }

  if (*(a1 + 7904) == 1)
  {
LABEL_6:
    if (*(a1 + 7472) < v8)
    {
      v8 = *(a1 + 7472);
    }
  }

LABEL_8:
  v9 = *v4;
  v10 = sub_682B0C(a2);
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = 12000;
  if (v10)
  {
    v12 = 12008;
  }

  v13 = *(a1 + v12);
  sub_6817B4(a2, v6, v11, v13);
  sub_6817C0(a2, v13);
  sub_682A1C(a2, *(*(a1 + 2536) + 425));
  v14 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v15 = sub_67A1FC(*(a1 + 2536), *v5);
    v16 = sub_67A218(*(a1 + 2536), *v5);
    if (*(a1 + 2552))
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = sub_89F42C(a1);
  }

  if (v14 <= v16)
  {
    sub_682A2C(a2, 1);
  }

  sub_682A24(a2, 1);
  if (v4[3])
  {
    v18 = 49;
  }

  else
  {
    v18 = 48;
  }

  sub_68179C(a2, v18);
  if ((v4[3] & 1) == 0)
  {
    v19 = sub_67A3BC(*(a1 + 2536), *v5);
    sub_682764(a2, v19, 0);
  }

  v20 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v31;
  if (v31)
  {
    do
    {
      v22 = *v21;
      sub_55F7FC((v21 + 2));
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = __p;
  __p = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = v28;
  if (v28)
  {
    v25 = v29;
    v26 = v28;
    if (v29 != v28)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v28;
    }

    v29 = v24;
    operator delete(v26);
  }
}

void sub_8C252C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C2540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C27E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8C27F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8C2814(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_9091F0(a1 + 2576, &v23);
  sub_6828CC(a2, &v23, (a1 + 5984), 0, 0, 1);
  v4 = (a1 + 5996);
  v5 = sub_67A2DC(*(a1 + 2536), *(a1 + 5996));
  v6 = v5;
  v7 = (a1 + 11912);
  if (*(a1 + 11913) == 1)
  {
    if (*(a1 + 9672) < v5)
    {
      v6 = *(a1 + 9672);
    }

    if (*v7 != 1)
    {
LABEL_3:
      if (*(a1 + 11914) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if (*v7 != 1)
  {
    goto LABEL_3;
  }

  if (*(a1 + 8352) < v6)
  {
    v6 = *(a1 + 8352);
  }

  if (*(a1 + 11914) != 1)
  {
LABEL_4:
    if (*(a1 + 11916) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (*(a1 + 10552) < v6)
  {
    v6 = *(a1 + 10552);
  }

  if (*(a1 + 11916) != 1)
  {
LABEL_5:
    if (*(a1 + 7904) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_23:
  v14 = *(a1 + 6584);
  if (*(a1 + 6152) - v14 < v6)
  {
    v6 = *(a1 + 6152) - v14;
  }

  if (*(a1 + 7904) == 1)
  {
LABEL_6:
    if (*(a1 + 7472) < v6)
    {
      v6 = *(a1 + 7472);
    }
  }

LABEL_8:
  v8 = sub_682B0C(a2);
  v9 = 12000;
  if (v8)
  {
    v9 = 12008;
  }

  v10 = *(a1 + v9);
  sub_6817B4(a2, v6, 0, v10);
  sub_6817C0(a2, v10);
  sub_682A1C(a2, *(*(a1 + 2536) + 426));
  v11 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v12 = sub_67A1FC(*(a1 + 2536), *v4);
    v13 = sub_67A218(*(a1 + 2536), *v4);
    if (*(a1 + 2552))
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = sub_89F42C(a1);
  }

  if (v11 <= v13)
  {
    sub_682A2C(a2, 1);
  }

  sub_682A24(a2, 1);
  sub_68179C(a2, 47);
  v15 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v26;
  if (v26)
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = __p;
  __p = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = v23;
  if (v23)
  {
    v20 = v24;
    v21 = v23;
    if (v24 != v23)
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
      v21 = v23;
    }

    v24 = v19;
    operator delete(v21);
  }
}

void sub_8C2AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C2AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C2D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8C2D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8C2D78(uint64_t a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - *a2;
  v5 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 6);
  if (v5 >= 2)
  {
    if (v4 < 1)
    {
      v12 = 0;
      v8 = 0;
    }

    else
    {
      v8 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 6);
      while (1)
      {
        v9 = operator new(448 * v8, &std::nothrow);
        if (v9)
        {
          break;
        }

        v10 = v8 >> 1;
        v11 = v8 > 1;
        v8 >>= 1;
        if (!v11)
        {
          v12 = 0;
          v8 = v10;
          goto LABEL_9;
        }
      }

      v12 = v9;
    }

LABEL_9:
    sub_8D6FBC(v3, v2, &v17, v5, v12, v8);
    if (v12)
    {
      operator delete(v12);
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 6);
    if (v13 != 1)
    {
      for (i = 1; i != v13; ++i)
      {
        v15 = sub_8A5830(a2, i - 1);
        v16 = sub_8A5830(a2, i);
        if (sub_682A68(v15) != 4 && !sub_682B2C(v15, v16))
        {
          sub_8A569C(a1, v15, v16);
        }
      }
    }
  }
}

void sub_8C2EE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8C2EF8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 6008);
  v3 = *(result + 6016);
  if (v2 != v3)
  {
    v4 = result;
    v6 = *(result + 11920);
    while (1)
    {
      result = sub_684288(v2);
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }

      v8 = sub_8A5C2C(*(v4 + 11976), *(v2 + 168));
      result = sub_683B64(v8);
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }

      if (sub_683B84(v8))
      {
        if (sub_445A90(v8))
        {
          sub_8C3EC0(v4, v2, &v67);
          sub_798900(a2, &v67);
          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (v76)
          {
            v77 = v76;
            operator delete(v76);
          }

          v9 = v74;
          if (v74)
          {
            v10 = v75;
            v11 = v74;
            if (v75 != v74)
            {
              do
              {
                v10 = sub_662AC8(v10 - 13);
              }

              while (v10 != v9);
              v11 = v74;
            }

            v75 = v9;
            operator delete(v11);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v12 = __p;
          if (!__p)
          {
            goto LABEL_5;
          }

          v13 = v69;
          v7 = __p;
          if (v69 != __p)
          {
            do
            {
              v13 = sub_53A868(v13 - 160);
            }

            while (v13 != v12);
            goto LABEL_3;
          }
        }

        else
        {
          sub_8C40A0(v4, v2, &v67);
          sub_798900(a2, &v67);
          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (v76)
          {
            v77 = v76;
            operator delete(v76);
          }

          v16 = v74;
          if (v74)
          {
            v17 = v75;
            v18 = v74;
            if (v75 != v74)
            {
              do
              {
                v17 = sub_662AC8(v17 - 13);
              }

              while (v17 != v16);
              v18 = v74;
            }

            v75 = v16;
            operator delete(v18);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v12 = __p;
          if (!__p)
          {
            goto LABEL_5;
          }

          v19 = v69;
          v7 = __p;
          if (v69 != __p)
          {
            do
            {
              v19 = sub_53A868(v19 - 160);
            }

            while (v19 != v12);
            goto LABEL_3;
          }
        }

        goto LABEL_4;
      }

      if (sub_683AE0(v8))
      {
        sub_8C4280(v4, v2, v8, 0, &v67);
        sub_682A58(&v67, v6);
        v14 = a2[1];
        if (v14 >= a2[2])
        {
          v15 = sub_7A5EF8(a2, &v67);
        }

        else
        {
          sub_7A6070(a2[1], &v67);
          v15 = v14 + 448;
        }

        a2[1] = v15;
        sub_8C4280(v4, v2, v8, 1, &v54);
        sub_682A58(&v54, v6);
        v24 = a2[1];
        if (v24 >= a2[2])
        {
          v25 = sub_7A5EF8(a2, &v54);
        }

        else
        {
          sub_7A6070(a2[1], &v54);
          v25 = v24 + 448;
        }

        a2[1] = v25;
        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }

        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        v26 = v61;
        if (v61)
        {
          v27 = v62;
          v28 = v61;
          if (v62 != v61)
          {
            do
            {
              v27 = sub_662AC8(v27 - 13);
            }

            while (v27 != v26);
            v28 = v61;
          }

          v62 = v26;
          operator delete(v28);
        }

        if (v59)
        {
          v60 = v59;
          operator delete(v59);
        }

        if (v57)
        {
          v58 = v57;
          operator delete(v57);
        }

        v29 = v55;
        if (v55)
        {
          v30 = v56;
          v31 = v55;
          if (v56 != v55)
          {
            do
            {
              v30 = sub_53A868(v30 - 160);
            }

            while (v30 != v29);
            v31 = v55;
          }

          v56 = v29;
          operator delete(v31);
        }

        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v32 = v74;
        if (v74)
        {
          v33 = v75;
          v34 = v74;
          if (v75 != v74)
          {
            do
            {
              v33 = sub_662AC8(v33 - 13);
            }

            while (v33 != v32);
            v34 = v74;
          }

          v75 = v32;
          operator delete(v34);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v69;
          v37 = __p;
          if (v69 != __p)
          {
            do
            {
              v36 = sub_53A868(v36 - 160);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v69 = v35;
          operator delete(v37);
        }

        ++v6;
        goto LABEL_5;
      }

      if (sub_683A1C(v8))
      {
        sub_8C4490();
      }

      if (sub_683BC0(v8))
      {
        sub_8C4670(v4, v2, &v67);
        sub_798900(a2, &v67);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v20 = v74;
        if (v74)
        {
          v21 = v75;
          v22 = v74;
          if (v75 != v74)
          {
            do
            {
              v21 = sub_662AC8(v21 - 13);
            }

            while (v21 != v20);
            v22 = v74;
          }

          v75 = v20;
          operator delete(v22);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v12 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        v23 = v69;
        v7 = __p;
        if (v69 != __p)
        {
          do
          {
            v23 = sub_53A868(v23 - 160);
          }

          while (v23 != v12);
          goto LABEL_3;
        }

LABEL_4:
        v69 = v12;
        operator delete(v7);
        goto LABEL_5;
      }

      if (sub_683BF4(v8))
      {
        break;
      }

      if (sub_683B48(v8))
      {
        sub_8C4A30(v4, v2, &v67);
        sub_798900(a2, &v67);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v42 = v74;
        if (v74)
        {
          v43 = v75;
          v44 = v74;
          if (v75 != v74)
          {
            do
            {
              v43 = sub_662AC8(v43 - 13);
            }

            while (v43 != v42);
            v44 = v74;
          }

          v75 = v42;
          operator delete(v44);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v12 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        v45 = v69;
        v7 = __p;
        if (v69 == __p)
        {
          goto LABEL_4;
        }

        do
        {
          v45 = sub_53A868(v45 - 160);
        }

        while (v45 != v12);
        goto LABEL_3;
      }

      if (sub_683BA4(v8))
      {
        sub_8C4C10(v4, v2, &v67);
        sub_798900(a2, &v67);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v46 = v74;
        if (v74)
        {
          v47 = v75;
          v48 = v74;
          if (v75 != v74)
          {
            do
            {
              v47 = sub_662AC8(v47 - 13);
            }

            while (v47 != v46);
            v48 = v74;
          }

          v75 = v46;
          operator delete(v48);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v12 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        v49 = v69;
        v7 = __p;
        if (v69 == __p)
        {
          goto LABEL_4;
        }

        do
        {
          v49 = sub_53A868(v49 - 160);
        }

        while (v49 != v12);
        goto LABEL_3;
      }

      result = sub_683C28(v8);
      if (!result)
      {
        goto LABEL_6;
      }

      sub_8C4DF0(v4, v2, &v67);
      sub_798900(a2, &v67);
      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      v50 = v74;
      if (v74)
      {
        v51 = v75;
        v52 = v74;
        if (v75 != v74)
        {
          do
          {
            v51 = sub_662AC8(v51 - 13);
          }

          while (v51 != v50);
          v52 = v74;
        }

        v75 = v50;
        operator delete(v52);
      }

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      v12 = __p;
      if (__p)
      {
        v53 = v69;
        v7 = __p;
        if (v69 == __p)
        {
          goto LABEL_4;
        }

        do
        {
          v53 = sub_53A868(v53 - 160);
        }

        while (v53 != v12);
        goto LABEL_3;
      }

LABEL_5:
      result = sub_682A44(a2[1] - 448, v8 + 1);
LABEL_6:
      v2 += 432;
      if (v2 == v3)
      {
        return result;
      }
    }

    sub_8C4850(v4, v2, &v67);
    sub_798900(a2, &v67);
    if (v78)
    {
      v79 = v78;
      operator delete(v78);
    }

    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    v38 = v74;
    if (v74)
    {
      v39 = v75;
      v40 = v74;
      if (v75 != v74)
      {
        do
        {
          v39 = sub_662AC8(v39 - 13);
        }

        while (v39 != v38);
        v40 = v74;
      }

      v75 = v38;
      operator delete(v40);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v12 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }

    v41 = v69;
    v7 = __p;
    if (v69 == __p)
    {
      goto LABEL_4;
    }

    do
    {
      v41 = sub_53A868(v41 - 160);
    }

    while (v41 != v12);
LABEL_3:
    v7 = __p;
    goto LABEL_4;
  }

  return result;
}

void sub_8C3834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_682DB0(&a65);
  sub_5EC5AC(v65);
  _Unwind_Resume(a1);
}

void sub_8C39A0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 11984);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return;
  }

  do
  {
    sub_9082B0(v4, &v53);
    sub_6828CC(&v40, &v53, (a1 + 5984), 0, 0, 1);
    if (*(a1 + 6000) >= *(v4 + 32))
    {
      v8 = *(v4 + 32);
    }

    else
    {
      v8 = *(a1 + 6000);
    }

    v9 = sub_67AAA0(*(a1 + 2536), *(a1 + 5996));
    v10 = *(v4 + 32);
    v11 = *(a1 + 6000);
    v12 = sub_682B0C(&v40);
    if (v10 + v9 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10 + v9;
    }

    v14 = 12000;
    if (v12)
    {
      v14 = 12008;
    }

    v15 = *(a1 + v14);
    sub_6817B4(&v40, v13, v8, v15);
    sub_6817C0(&v40, v15);
    sub_682A1C(&v40, *(*(a1 + 2536) + 433));
    sub_68179C(&v40, 88);
    v16 = a2[1];
    if (v16 >= a2[2])
    {
      v17 = sub_7A5EF8(a2, &v40);
    }

    else
    {
      sub_7A6070(a2[1], &v40);
      v17 = v16 + 448;
    }

    a2[1] = v17;
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    v18 = v47;
    if (v47)
    {
      v19 = v48;
      v20 = v47;
      if (v48 == v47)
      {
        goto LABEL_55;
      }

      while (1)
      {
        v22 = *(v19 - 2);
        if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v23 = *(v19 - 8);
          if (v23)
          {
            goto LABEL_41;
          }

          goto LABEL_30;
        }

        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
        v23 = *(v19 - 8);
        if (v23)
        {
          break;
        }

LABEL_30:
        v24 = *(v19 - 10);
        *(v19 - 10) = 0;
        if (v24)
        {
          operator delete(v24);
        }

        v25 = v19 - 13;
        v26 = *(v19 - 13);
        if (v26)
        {
          v27 = *(v19 - 12);
          v21 = *(v19 - 13);
          if (v27 != v26)
          {
            do
            {
              v28 = *(v27 - 1);
              v27 -= 3;
              if (v28 < 0)
              {
                operator delete(*v27);
              }
            }

            while (v27 != v26);
            v21 = *v25;
          }

          *(v19 - 12) = v26;
          operator delete(v21);
        }

        v19 -= 13;
        if (v25 == v18)
        {
          v20 = v47;
LABEL_55:
          v48 = v18;
          operator delete(v20);
          goto LABEL_56;
        }
      }

      while (1)
      {
LABEL_41:
        v29 = *v23;
        if (*(v23 + 191) < 0)
        {
          operator delete(v23[21]);
          if ((*(v23 + 159) & 0x80000000) == 0)
          {
LABEL_43:
            if ((*(v23 + 135) & 0x80000000) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_50;
          }
        }

        else if ((*(v23 + 159) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

        operator delete(v23[17]);
        if ((*(v23 + 135) & 0x80000000) == 0)
        {
LABEL_44:
          if ((*(v23 + 95) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v23[14]);
        if ((*(v23 + 95) & 0x80000000) == 0)
        {
LABEL_45:
          if ((*(v23 + 63) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_52;
        }

LABEL_51:
        operator delete(v23[9]);
        if ((*(v23 + 63) & 0x80000000) == 0)
        {
LABEL_46:
          if (*(v23 + 39) < 0)
          {
            goto LABEL_53;
          }

          goto LABEL_40;
        }

LABEL_52:
        operator delete(v23[5]);
        if (*(v23 + 39) < 0)
        {
LABEL_53:
          operator delete(v23[2]);
        }

LABEL_40:
        operator delete(v23);
        v23 = v29;
        if (!v29)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_56:
    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    v30 = v41;
    if (v41)
    {
      v31 = v42;
      v32 = v41;
      if (v42 != v41)
      {
        do
        {
          v31 = sub_53A868(v31 - 160);
        }

        while (v31 != v30);
        v32 = v41;
      }

      v42 = v30;
      operator delete(v32);
    }

    v33 = v57;
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v34 = v56;
      if (!v56)
      {
        goto LABEL_68;
      }

      while (1)
      {
LABEL_79:
        v39 = *v34;
        if (*(v34 + 191) < 0)
        {
          operator delete(v34[21]);
          if ((*(v34 + 159) & 0x80000000) == 0)
          {
LABEL_81:
            if ((*(v34 + 135) & 0x80000000) == 0)
            {
              goto LABEL_82;
            }

            goto LABEL_88;
          }
        }

        else if ((*(v34 + 159) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

        operator delete(v34[17]);
        if ((*(v34 + 135) & 0x80000000) == 0)
        {
LABEL_82:
          if ((*(v34 + 95) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_89;
        }

LABEL_88:
        operator delete(v34[14]);
        if ((*(v34 + 95) & 0x80000000) == 0)
        {
LABEL_83:
          if ((*(v34 + 63) & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_90;
        }

LABEL_89:
        operator delete(v34[9]);
        if ((*(v34 + 63) & 0x80000000) == 0)
        {
LABEL_84:
          if (*(v34 + 39) < 0)
          {
            goto LABEL_91;
          }

          goto LABEL_78;
        }

LABEL_90:
        operator delete(v34[5]);
        if (*(v34 + 39) < 0)
        {
LABEL_91:
          operator delete(v34[2]);
        }

LABEL_78:
        operator delete(v34);
        v34 = v39;
        if (!v39)
        {
          goto LABEL_68;
        }
      }
    }

    v34 = v56;
    if (v56)
    {
      goto LABEL_79;
    }

LABEL_68:
    v35 = v55;
    v55 = 0;
    if (v35)
    {
      operator delete(v35);
    }

    v36 = v53;
    if (v53)
    {
      v37 = v54;
      v7 = v53;
      if (v54 != v53)
      {
        do
        {
          v38 = *(v37 - 1);
          v37 -= 3;
          if (v38 < 0)
          {
            operator delete(*v37);
          }
        }

        while (v37 != v36);
        v7 = v53;
      }

      v54 = v36;
      operator delete(v7);
    }

    v4 += 40;
  }

  while (v4 != v5);
}

void sub_8C3E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[1] = v10;
  sub_682DB0(&a9);
  sub_662AC8((v11 - 192));
  sub_5EC5AC(v9);
  _Unwind_Resume(a1);
}

void sub_8C3EC0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_90C498(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 79);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8C4070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C40A0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_90C368(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 78);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8C4250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4280(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  sub_90C788(a1 + 2576, a3, a4, &v24);
  sub_6828CC(a5, &v24, (a1 + 5984), 0, 0, 1);
  sub_68179C(a5, 77);
  if (a4)
  {
    sub_681A4C(a5, (a3 + 88));
  }

  else
  {
    sub_681A58(a5, (a3 + 88));
  }

  v10 = *a2;
  v11 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v12 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v13 = sub_682B0C(a5);
  v14 = 12000;
  if (v13)
  {
    v14 = 12008;
  }

  v15 = *(a1 + v14);
  sub_6817B4(a5, v11 + v10, v12 + v10, v15);
  sub_6817C0(a5, v15);
  sub_682A1C(a5, *(*(a1 + 2536) + 432));
  v16 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v27;
  if (v27)
  {
    do
    {
      v18 = *v17;
      sub_55F7FC((v17 + 2));
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = __p;
  __p = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = v24;
  if (v24)
  {
    v21 = v25;
    v22 = v24;
    if (v25 != v24)
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
      v22 = v24;
    }

    v25 = v20;
    operator delete(v22);
  }
}

void sub_8C4460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4670(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_90D3B8(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 80);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8C4820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4850(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_90D4E8(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 81);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8C4A00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4A30(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_90D618(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 84);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8C4BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4C10(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_90D748(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 82);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8C4DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4DF0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_90D878(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 85);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8C4FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8C4FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8C4FD0(uint64_t a1)
{
  v2 = *(a1 + 2536);
  v3 = *(v2 + 2456) / 3.6;
  v4 = sub_67A384(v2, *(a1 + 5996));
  if (v4 < 0)
  {
    v5 = -5;
  }

  else
  {
    v5 = 5;
  }

  v6 = v4 / 10 + (((103 * (v5 + v4 % 10)) >> 15) & 1) + ((103 * (v5 + v4 % 10)) >> 10);
  v7 = sub_67A3A0(*(a1 + 2536), *(a1 + 5996));
  if (v7 < 0)
  {
    v8 = -5;
  }

  else
  {
    v8 = 5;
  }

  v9 = (((103 * (v8 + v7 % 10)) >> 15) & 1) + ((103 * (v8 + v7 % 10)) >> 10);
  v10 = v3 * v6 * 100.0;
  if (v10 >= 0.0)
  {
    v11 = v3 * v6 * 100.0;
    if (v10 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v12 = (v10 + v10) + 1;
  }

  else
  {
    v11 = v3 * v6 * 100.0;
    if (v10 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v12 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
  }

  v11 = (v12 >> 1);
LABEL_13:
  v13 = v7 / 10 + v9;
  if (v11 >= 9.22337204e18)
  {
    v15 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_22;
  }

  if (v10 >= 0.0)
  {
    if (v10 < 4.50359963e15)
    {
      v14 = (v10 + v10) + 1;
      goto LABEL_20;
    }
  }

  else if (v10 > -4.50359963e15)
  {
    v14 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_20:
    v10 = (v14 >> 1);
  }

  v15 = v10;
LABEL_22:
  v16 = *(a1 + 6000);
  if (v15 >= v16)
  {
    v17 = *(a1 + 6000);
  }

  else
  {
    v17 = v15;
  }

  v33 = v17;
  v18 = v3 * v13 * 100.0;
  if (v18 >= 0.0)
  {
    v19 = v3 * v13 * 100.0;
    if (v18 >= 4.50359963e15)
    {
      goto LABEL_31;
    }

    v20 = (v18 + v18) + 1;
  }

  else
  {
    v19 = v3 * v13 * 100.0;
    if (v18 <= -4.50359963e15)
    {
      goto LABEL_31;
    }

    v20 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
  }

  v19 = (v20 >> 1);
LABEL_31:
  if (v19 >= 9.22337204e18)
  {
    v22 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_40;
  }

  if (v18 >= 0.0)
  {
    if (v18 < 4.50359963e15)
    {
      v21 = (v18 + v18) + 1;
      goto LABEL_38;
    }
  }

  else if (v18 > -4.50359963e15)
  {
    v21 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
LABEL_38:
    v18 = (v21 >> 1);
  }

  v22 = v18;
LABEL_40:
  if (v22 < v16)
  {
    v16 = v22;
  }

  v32 = v16;
  sub_6844F4((a1 + 6008), &v33, &v32, 1, v31);
  v23 = sub_5CBB30(v31);
  v24 = v31[0];
  if (v31[0] >= v17)
  {
    v24 = v17;
  }

  if (v23)
  {
    v17 = v24;
  }

  sub_684A64(a1 + 6008, &v33, &v32, v30);
  v25 = sub_5CBB30(v30);
  v26 = v30[0];
  if (v30[0] >= v17)
  {
    v26 = v17;
  }

  if (v25)
  {
    v17 = v26;
  }

  if ((*(a1 + 11908) & 1) != 0 && *(a1 + 6592) < v17)
  {
    v17 = *(a1 + 6592);
  }

  if (sub_5CBB30((a1 + 6152)))
  {
    v27 = *(a1 + 6584);
    if (*(a1 + 6152) - v27 < v17)
    {
      v17 = *(a1 + 6152) - v27;
    }
  }

  if (v32 <= v17)
  {
    v28 = v17;
  }

  else
  {
    v28 = v32;
  }

  sub_5941F8(v30);
  sub_5941F8(v31);
  return v28;
}

void sub_8C5374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_5941F8(&a9);
  sub_5941F8(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_8C5390(uint64_t a1)
{
  v2 = (a1 + 11801);
  v3 = (a1 + 5996);
  v4 = sub_67A26C(*(a1 + 2536), *(a1 + 5996));
  v5 = *(a1 + 6000);
  if (v5 >= v4)
  {
    v5 = v4;
  }

  v41 = v5;
  if (*v2 == 1)
  {
    v6 = sub_67A288(*(a1 + 2536), *v3);
    v7 = *(a1 + 6000);
    if (v7 >= v6)
    {
      v7 = v6;
    }

    v8 = *v2;
    v40 = v7;
    if (v8)
    {
      v9 = sub_67A234(*(a1 + 2536), *v3);
      if (*(a1 + 6000) >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = *(a1 + 6000);
      }

      if (v2[107] != 1)
      {
        goto LABEL_11;
      }

LABEL_18:
      v11 = *(a1 + 6592);
      goto LABEL_19;
    }
  }

  else
  {
    v40 = v5;
  }

  v12 = sub_67A250(*(a1 + 2536), *v3);
  if (*(a1 + 6000) >= v12)
  {
    v10 = v12;
  }

  else
  {
    v10 = *(a1 + 6000);
  }

  if (v2[107] == 1)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v2[113] == 1)
  {
    v11 = *(a1 + 10552);
    goto LABEL_19;
  }

  if (v2[115] == 1)
  {
    v11 = *(a1 + 6152) - *(a1 + 6584);
    goto LABEL_19;
  }

  if (v2[111] == 1)
  {
    v11 = *(a1 + 8352);
LABEL_19:
    if (v11 >= v10)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  if (v2[109] == 1 && v3[3668] == 1)
  {
    return *(a1 + 9232);
  }

  if (*v2 == 1)
  {
    sub_6844C8((a1 + 6008), &v41, 1, v39);
    if (sub_5CBB30(v39))
    {
      v14 = v41;
      sub_5941F8(v39);
      return v14;
    }

    sub_6844C8((a1 + 6008), &v40, 1, v38);
    v15 = sub_5CBB30(v38);
    v16 = v38[0];
    sub_5941F8(v38);
    sub_5941F8(v39);
    if (v15)
    {
      return v16;
    }
  }

  v17 = v10;
  if (v3[2348] == 1)
  {
    v17 = *(a1 + 7912);
  }

  if (v3[1908])
  {
    v18 = v40;
  }

  else
  {
    v18 = v17;
  }

  if (sub_5CBB30((a1 + 6152)))
  {
    if (*(a1 + 6152) - *(a1 + 6584) <= v40)
    {
      v18 = v40;
    }

    else
    {
      v18 = *(a1 + 6152) - *(a1 + 6584);
    }

    v19 = v10;
    if (*v2 != 1)
    {
LABEL_42:
      v20 = v10;
      if (v2[1] != 1)
      {
        goto LABEL_43;
      }

LABEL_51:
      v20 = sub_8A5448(a1, v10);
      v27 = *(a1 + 11984);
      v23 = *v27;
      v22 = v27[1];
      if (v23 != v22)
      {
        goto LABEL_44;
      }

LABEL_52:
      v26 = v10;
      goto LABEL_66;
    }
  }

  else
  {
    v19 = v10;
    if (*v2 != 1)
    {
      goto LABEL_42;
    }
  }

  v19 = sub_6C7D34(a1 + 11440);
  v20 = v10;
  if (v2[1] == 1)
  {
    goto LABEL_51;
  }

LABEL_43:
  v21 = *(a1 + 11984);
  v23 = *v21;
  v22 = v21[1];
  if (v23 == v22)
  {
    goto LABEL_52;
  }

LABEL_44:
  v24 = v22 - v23 - 40;
  if (v24 > 0x27)
  {
    v28 = v24 / 0x28 + 1;
    v25 = v23 + 40 * (v28 & 0xFFFFFFFFFFFFFFELL);
    v29 = (v23 + 72);
    v30 = v28 & 0xFFFFFFFFFFFFFFELL;
    v31 = v10;
    v32 = v10;
    do
    {
      v33 = *(v29 - 5);
      v35 = *v29;
      v29 += 10;
      v34 = v35;
      if (v31 >= v33)
      {
        v31 = v33;
      }

      if (v32 >= v34)
      {
        v32 = v34;
      }

      v30 -= 2;
    }

    while (v30);
    if (v31 >= v32)
    {
      v26 = v32;
    }

    else
    {
      v26 = v31;
    }

    if (v28 == (v28 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_66;
    }
  }

  else
  {
    v25 = v23;
    v26 = v10;
  }

  do
  {
    if (v26 >= *(v25 + 32))
    {
      v26 = *(v25 + 32);
    }

    v25 += 40;
  }

  while (v25 != v22);
LABEL_66:
  v36 = v40;
  if (v40 <= v19)
  {
    v36 = v19;
  }

  if (v20 >= v10)
  {
    v37 = v10;
  }

  else
  {
    v37 = v20;
  }

  if (v18 < v37)
  {
    v37 = v18;
  }

  if (v26 < v37)
  {
    v37 = v26;
  }

  if (v36 >= v37)
  {
    return v37;
  }

  else
  {
    return v36;
  }
}

void sub_8C5700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_5941F8(&a9);
  sub_5941F8(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_8C5744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 6008);
  v7 = *(a1 + 6016);
  if (v6 == v7)
  {
LABEL_10:
    *(a5 + 8) = 0u;
    *(a5 + 424) = 0;
    *(a5 + 248) = 0u;
    *(a5 + 232) = 0u;
    *(a5 + 216) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 184) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 152) = 0u;
    *(a5 + 136) = 0u;
    *(a5 + 120) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 392) = 0u;
    *(a5 + 408) = 0u;
    *(a5 + 360) = 0u;
    *(a5 + 376) = 0u;
    *(a5 + 328) = 0u;
    *(a5 + 344) = 0u;
    *(a5 + 296) = 0u;
    *(a5 + 312) = 0u;
    *(a5 + 264) = 0u;
    *(a5 + 280) = 0u;
    *a5 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a5 + 8);
    *(a5 + 168) = -1;
    *(a5 + 252) = 0;
    *(a5 + 192) = 0;
    *(a5 + 160) = -1;
    *(a5 + 200) = 0;
    *(a5 + 208) = 0;
    *(a5 + 184) = 0;
    *(a5 + 176) = 0;
    *(a5 + 216) = -1;
    *(a5 + 224) = -1;
    *(a5 + 232) = 0x7FFFFFFF;
    *(a5 + 240) = 0;
    *(a5 + 248) = 0;
    *(a5 + 268) = 0;
    *(a5 + 260) = 0;
    *(a5 + 276) = 0;
    return sub_734CE0(a5 + 280);
  }

  else
  {
    while (1)
    {
      if (sub_684288(v6))
      {
        v12 = sub_8A5C2C(*(a1 + 11976), v6[21]);
        if (sub_683C48(v12, a2) && sub_684298(v6, a3, a4))
        {
          break;
        }
      }

      v6 += 54;
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    return sub_5F3168(a5, v6);
  }
}

void sub_8C58D8(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

char *sub_8C5924(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 6) >= a5)
    {
      v15 = v10 - a2;
      if (0x2E8BA2E8BA2E8BA3 * ((v10 - a2) >> 6) >= a5)
      {
        v19 = &a2[704 * a5];
        v20 = v10 - 704 * a5;
        for (i = a1[1]; v20 < v10; i = v22 + 704)
        {
          sub_8C5D7C(i, v20);
          v20 += 704;
        }

        a1[1] = i;
        if (v10 != v19)
        {
          v23 = v10 - 704;
          v24 = &v5[704 * a5 - v10];
          v25 = v10 - 704 - 704 * a5;
          do
          {
            sub_8C60E8(v23, v25);
            v23 -= 704;
            v25 -= 704;
            v24 += 704;
          }

          while (v24);
        }

        v26 = v7 + 704 * a5;
        v27 = v5;
        do
        {
          sub_5F9C58(v27, v7);
          v7 += 704;
          v27 += 704;
        }

        while (v7 != v26);
      }

      else
      {
        v17 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v18 = a1[1];
          a1[1] = v10;
          if (v15 < 1)
          {
            return v5;
          }
        }

        else
        {
          v44 = 0;
          do
          {
            sub_5F01C8(v10 + v44, v17 + v44);
            v44 += 704;
          }

          while (v17 + v44 != a4);
          v18 = v10 + v44;
          a1[1] = v10 + v44;
          if (v15 < 1)
          {
            return v5;
          }
        }

        v45 = v18 - 704 * a5;
        for (j = v18; v45 < v10; j = v47 + 704)
        {
          sub_8C5D7C(j, v45);
          v45 += 704;
        }

        a1[1] = j;
        if (v18 != &v5[704 * a5])
        {
          v48 = v18 - 704;
          v49 = &v5[704 * a5 - v18];
          v50 = v18 - 704 - 704 * a5;
          do
          {
            sub_8C60E8(v48, v50);
            v48 -= 704;
            v50 -= 704;
            v49 += 704;
          }

          while (v49);
        }

        v51 = v5;
        do
        {
          sub_5F9C58(v51, v7);
          v7 += 704;
          v51 += 704;
        }

        while (v7 != v17);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x2E8BA2E8BA2E8BA3 * ((v10 - *a1) >> 6);
      if (v12 > 0x5D1745D1745D17)
      {
        sub_1794();
      }

      v13 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v11) >> 6);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x2E8BA2E8BA2E8BLL)
      {
        v14 = 0x5D1745D1745D17;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x5D1745D1745D17)
        {
          operator new();
        }

        sub_1808();
      }

      v28 = (a2 - v11) >> 6 << 6;
      v53 = v28;
      v29 = 704 * a5;
      v30 = v28 + 704 * a5;
      do
      {
        sub_5F01C8(v28, v7);
        v28 += 704;
        v7 += 704;
        v29 -= 704;
      }

      while (v29);
      v31 = a1[1];
      v32 = v5;
      if (v31 != v5)
      {
        v33 = v5;
        v34 = v30;
        do
        {
          sub_8C5D7C(v34, v33);
          v33 += 704;
          v34 = v35 + 704;
        }

        while (v33 != v31);
        v36 = v5;
        do
        {
          v36 = (sub_5C3378(v36) + 88);
        }

        while (v36 != v31);
        v32 = a1[1];
      }

      v37 = v30 + v32 - v5;
      a1[1] = v5;
      v38 = *a1;
      v39 = *a1 - v5;
      v40 = v53 + v39;
      if (*a1 != v5)
      {
        v41 = *a1;
        v42 = v53 + v39;
        do
        {
          sub_8C5D7C(v42, v41);
          v41 += 704;
          v42 = v43 + 704;
        }

        while (v41 != v5);
        do
        {
          sub_5C3378(v38);
          v38 += 704;
        }

        while (v38 != v5);
        v38 = *a1;
      }

      *a1 = v40;
      a1[1] = v37;
      a1[2] = 0;
      if (v38)
      {
        operator delete(v38);
      }

      return v53;
    }
  }

  return v5;
}

void sub_8C5D10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8C5D28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8C5D28(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 704;
    sub_5C3378(i - 704);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_8C5D7C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  v3 = *(a2 + 80);
  v2 = *(a2 + 96);
  v4 = *(a2 + 64);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v2;
  *(a1 + 64) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 120);
  v7 = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 152) = v7;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 160) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a2 + 184) = 0u;
  v8 = *(a2 + 208);
  v9 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v9;
  *(a1 + 208) = v8;
  v10 = *(a2 + 272);
  v11 = *(a2 + 288);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v10;
  *(a1 + 304) = 0u;
  *(a1 + 288) = v11;
  *(a1 + 296) = 0;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 312) = 0;
  *(a2 + 296) = 0u;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0;
  v12 = *(a2 + 352);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 352) = v12;
  *(a1 + 380) = *(a2 + 380);
  *(a1 + 392) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 424) = 0;
  *(a2 + 408) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 448) = 0;
  *(a2 + 432) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 456) = 0u;
  v13 = *(a2 + 480);
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a1 + 480) = v13;
  LODWORD(v13) = *(a2 + 488);
  *(a1 + 492) = *(a2 + 492);
  *(a1 + 488) = v13;
  v14 = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 496) = v14;
  *(a2 + 496) = 0;
  *(a2 + 504) = 0u;
  v15 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 520) = v15;
  *(a2 + 528) = 0u;
  *(a2 + 520) = 0;
  v16 = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 544) = v16;
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  v17 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v17;
  *(a1 + 600) = *(a2 + 600);
  *(a2 + 600) = 0;
  v18 = *(a2 + 608);
  *(a1 + 608) = v18;
  v19 = *(a2 + 616);
  *(a1 + 616) = v19;
  *(a1 + 624) = *(a2 + 624);
  if (v19)
  {
    v20 = *(v18 + 8);
    v21 = *(a1 + 600);
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v20 >= v21)
      {
        v20 %= v21;
      }
    }

    else
    {
      v20 &= v21 - 1;
    }

    *(v17 + 8 * v20) = a1 + 608;
    *(a2 + 608) = 0;
    *(a2 + 616) = 0;
  }

  *(a1 + 632) = *(a2 + 632);
  v22 = *(a2 + 640);
  *(a2 + 640) = 0;
  *(a1 + 640) = v22;
  *(a1 + 648) = *(a2 + 648);
  *(a2 + 648) = 0;
  v23 = *(a2 + 656);
  *(a1 + 656) = v23;
  v24 = *(a2 + 664);
  *(a1 + 664) = v24;
  *(a1 + 672) = *(a2 + 672);
  if (v24)
  {
    v25 = *(v23 + 8);
    v26 = *(a1 + 648);
    if ((v26 & (v26 - 1)) != 0)
    {
      if (v25 >= v26)
      {
        v25 %= v26;
      }
    }

    else
    {
      v25 &= v26 - 1;
    }

    *(v22 + 8 * v25) = a1 + 656;
    *(a2 + 656) = 0;
    *(a2 + 664) = 0;
  }

  *(a1 + 696) = 0;
  result = 0.0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  return result;
}

uint64_t sub_8C60E8(uint64_t a1, uint64_t a2)
{
  sub_592E78(a1, a2);
  *(a1 + 380) = *(a2 + 380);
  sub_53D784(a1 + 384, a2 + 384);
  v4 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v4);
  }

  v5 = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *v4 = v5;
  *(a2 + 567) = 0;
  *(a2 + 544) = 0;
  v6 = *(a1 + 568);
  if (v6)
  {
    v7 = (a1 + 568);
    v8 = *(a1 + 576);
    v9 = *(a1 + 568);
    if (v8 != v6)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v6);
      v9 = *v7;
    }

    *(a1 + 576) = v6;
    operator delete(v9);
    *v7 = 0;
    *(a1 + 576) = 0;
    *(a1 + 584) = 0;
  }

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 568) = 0;
  *(a2 + 576) = 0;
  *(a2 + 584) = 0;
  sub_593214(a1 + 592, (a2 + 592));
  *(a1 + 632) = *(a2 + 632);
  sub_8C6234(a1 + 640, (a2 + 640));
  v11 = *(a1 + 680);
  if (v11)
  {
    *(a1 + 688) = v11;
    operator delete(v11);
    *(a1 + 680) = 0;
    *(a1 + 688) = 0;
    *(a1 + 696) = 0;
  }

  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  return a1;
}

void sub_8C6234(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v15 = *v4;
        v16 = *(v4 + 6);
        if (v16)
        {
          *(v4 + 7) = v16;
          operator delete(v16);
        }

        if (v4[39] < 0)
        {
          operator delete(*(v4 + 2));
        }

        operator delete(v4);
        v4 = v15;
      }

      while (v15);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      bzero(*a1, 8 * v5);
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void sub_8C6340(void ***a1)
{
  v2 = a1[5];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_55F7FC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 == v5)
    {
      a1[1] = v5;
    }

    else
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
      v7 = *a1;
      a1[1] = v5;
    }

    operator delete(v7);
  }
}

uint64_t sub_8C6420(void *a1, unint64_t a2)
{
  if (0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5));
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

  return *a1 + 1120 * a2;
}

void sub_8C655C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_8C663C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 1);
      *(a4 + 24) = v6[3];
      v6[2] = 0;
      v6[3] = 0;
      v6[1] = 0;
      v8 = *(v6 + 5);
      v7 = *(v6 + 6);
      v9 = *(v6 + 4);
      *(a4 + 112) = v6[14];
      *(a4 + 80) = v8;
      *(a4 + 96) = v7;
      *(a4 + 64) = v9;
      v10 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v10;
      v11 = *(v6 + 15);
      v12 = v6[19];
      *(a4 + 136) = *(v6 + 17);
      *(a4 + 120) = v11;
      *(a4 + 152) = v12;
      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 160) = *(v6 + 10);
      *(a4 + 176) = v6[22];
      v6[20] = 0;
      v6[21] = 0;
      v6[22] = 0;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 184) = *(v6 + 23);
      *(a4 + 200) = v6[25];
      v6[23] = 0;
      v6[24] = 0;
      v6[25] = 0;
      v13 = *(v6 + 13);
      v14 = *(v6 + 15);
      *(a4 + 224) = *(v6 + 14);
      *(a4 + 240) = v14;
      *(a4 + 208) = v13;
      v15 = *(v6 + 17);
      v16 = v6[36];
      *(a4 + 256) = *(v6 + 16);
      *(a4 + 272) = v15;
      *(a4 + 288) = v16;
      *(a4 + 296) = 0;
      *(a4 + 304) = 0;
      *(a4 + 312) = 0;
      *(a4 + 296) = v6[37];
      *(a4 + 304) = *(v6 + 19);
      v6[38] = 0;
      v6[39] = 0;
      v6[37] = 0;
      *(a4 + 320) = *(v6 + 320);
      *(a4 + 336) = 0;
      *(a4 + 344) = 0;
      *(a4 + 328) = 0;
      *(a4 + 328) = v6[41];
      *(a4 + 336) = *(v6 + 21);
      v6[41] = 0;
      v6[42] = 0;
      v6[43] = 0;
      v17 = *(v6 + 22);
      *(a4 + 361) = *(v6 + 361);
      *(a4 + 352) = v17;
      v18 = *(v6 + 380);
      *(a4 + 396) = *(v6 + 99);
      *(a4 + 380) = v18;
      *(a4 + 408) = 0;
      *(a4 + 416) = 0;
      *(a4 + 400) = 0;
      *(a4 + 400) = *(v6 + 25);
      *(a4 + 416) = v6[52];
      v6[50] = 0;
      v6[51] = 0;
      v6[52] = 0;
      v19 = *(v6 + 53);
      *(a4 + 440) = *(v6 + 110);
      *(a4 + 424) = v19;
      v6 += 56;
      a4 += 448;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v20 = v5[50];
      if (v20)
      {
        v5[51] = v20;
        operator delete(v20);
      }

      sub_55D550(v5);
      v5 += 56;
    }
  }
}

char *sub_8C680C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 6) >= a5)
    {
      v15 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 6) >= a5)
      {
        v22 = 448 * a5;
        sub_8C6BC8(a1, a2, a1[1], a2 + 448 * a5);
        v23 = v22 + v7;
        v24 = v5;
        do
        {
          sub_5F9D98(v24, v7);
          *(v24 + 380) = *(v7 + 380);
          *(v24 + 384) = *(v7 + 384);
          *(v24 + 392) = *(v7 + 392);
          if (v24 != v7)
          {
            sub_5FE4B8((v24 + 400), *(v7 + 400), *(v7 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 408) - *(v7 + 400)) >> 2));
          }

          v25 = *(v7 + 424);
          *(v24 + 440) = *(v7 + 440);
          *(v24 + 424) = v25;
          v7 += 448;
          v24 += 448;
        }

        while (v7 != v23);
      }

      else
      {
        v17 = v15 + a3;
        v35 = a1[1];
        v18 = v35;
        if (v15 + a3 != a4)
        {
          v18 = v10;
          v19 = v15 + a3;
          do
          {
            sub_5F51E0(v18, v19);
            v19 += 448;
            v18 = v35 + 448;
            v35 += 448;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          sub_8C6BC8(a1, v5, v10, &v5[448 * a5]);
          v20 = v5;
          do
          {
            sub_5F9D98(v20, v7);
            *(v20 + 380) = *(v7 + 380);
            *(v20 + 384) = *(v7 + 384);
            *(v20 + 392) = *(v7 + 392);
            if (v20 != v7)
            {
              sub_5FE4B8((v20 + 400), *(v7 + 400), *(v7 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 408) - *(v7 + 400)) >> 2));
            }

            v21 = *(v7 + 424);
            *(v20 + 440) = *(v7 + 440);
            *(v20 + 424) = v21;
            v7 += 448;
            v20 += 448;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 6);
      if (v12 > 0x92492492492492)
      {
        sub_1794();
      }

      v13 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 6);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x49249249249249)
      {
        v14 = 0x92492492492492;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x92492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v26 = (a2 - v11) >> 6 << 6;
      v33 = v26;
      v27 = 448 * a5;
      v28 = v26 + 448 * a5;
      do
      {
        sub_5F51E0(v26, v7);
        v26 += 448;
        v7 += 448;
        v27 -= 448;
      }

      while (v27);
      sub_8C663C(a1, v5, a1[1], v28);
      v29 = *a1;
      v34 = v28 + a1[1] - v5;
      a1[1] = v5;
      v30 = v33 + v29 - v5;
      sub_8C663C(a1, v29, v5, v30);
      v31 = *a1;
      *a1 = v30;
      a1[1] = v34;
      a1[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      return v33;
    }
  }

  return v5;
}

void sub_8C6B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7A639C(va);
  _Unwind_Resume(a1);
}

void sub_8C6B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F52E4(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_8C6BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7A639C(va);
  _Unwind_Resume(a1);
}

__n128 sub_8C6BC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    *(a1 + 8) = v4;
    if (v4 == a4)
    {
      return result;
    }
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(v7 + 8) = *(v6 + 8);
      *(v7 + 24) = *(v6 + 24);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v9 = *(v6 + 80);
      v8 = *(v6 + 96);
      v10 = *(v6 + 64);
      *(v7 + 112) = *(v6 + 112);
      *(v7 + 80) = v9;
      *(v7 + 96) = v8;
      *(v7 + 64) = v10;
      v11 = *(v6 + 48);
      *(v7 + 32) = *(v6 + 32);
      *(v7 + 48) = v11;
      v12 = *(v6 + 120);
      v13 = *(v6 + 152);
      *(v7 + 136) = *(v6 + 136);
      *(v7 + 120) = v12;
      *(v7 + 152) = v13;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(v7 + 160) = *(v6 + 160);
      *(v7 + 176) = *(v6 + 176);
      *(v6 + 160) = 0;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v7 + 184) = 0;
      *(v7 + 192) = 0;
      *(v7 + 200) = 0;
      *(v7 + 184) = *(v6 + 184);
      *(v7 + 200) = *(v6 + 200);
      *(v6 + 184) = 0;
      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      v14 = *(v6 + 208);
      v15 = *(v6 + 240);
      *(v7 + 224) = *(v6 + 224);
      *(v7 + 240) = v15;
      *(v7 + 208) = v14;
      v16 = *(v6 + 272);
      v17 = *(v6 + 288);
      *(v7 + 256) = *(v6 + 256);
      *(v7 + 272) = v16;
      *(v7 + 288) = v17;
      *(v7 + 296) = 0;
      *(v7 + 304) = 0;
      *(v7 + 312) = 0;
      *(v7 + 296) = *(v6 + 296);
      *(v7 + 304) = *(v6 + 304);
      *(v6 + 304) = 0;
      *(v6 + 312) = 0;
      *(v6 + 296) = 0;
      *(v7 + 320) = *(v6 + 320);
      *(v7 + 336) = 0;
      *(v7 + 344) = 0;
      *(v7 + 328) = 0;
      *(v7 + 328) = *(v6 + 328);
      *(v7 + 336) = *(v6 + 336);
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 344) = 0;
      v18 = *(v6 + 352);
      *(v7 + 361) = *(v6 + 361);
      *(v7 + 352) = v18;
      v19 = *(v6 + 380);
      *(v7 + 396) = *(v6 + 396);
      *(v7 + 380) = v19;
      *(v7 + 408) = 0;
      *(v7 + 416) = 0;
      *(v7 + 400) = 0;
      *(v7 + 400) = *(v6 + 400);
      *(v7 + 416) = *(v6 + 416);
      *(v6 + 400) = 0;
      *(v6 + 408) = 0;
      *(v6 + 416) = 0;
      result = *(v6 + 424);
      *(v7 + 440) = *(v6 + 440);
      *(v7 + 424) = result;
      v7 += 448;
      v6 += 448;
    }

    while (v6 < a3);
    *(a1 + 8) = v7;
    if (v4 == a4)
    {
      return result;
    }
  }

  v21 = 0;
  v22 = a4 - v4;
  do
  {
    v23 = v5 + v21;
    v24 = v4 + v21;
    sub_592E78(v4 + v21 - 448, v5 + v21 - 448);
    v25 = *(v5 + v21 - 52);
    v27 = (v4 + v21 - 48);
    v26 = *v27;
    *(v24 - 68) = *(v5 + v21 - 68);
    *(v24 - 52) = v25;
    if (v26)
    {
      *(v24 - 40) = v26;
      operator delete(v26);
      *v27 = 0;
      *(v24 - 40) = 0;
      *(v24 - 32) = 0;
    }

    *v27 = *(v23 - 48);
    *(v24 - 32) = *(v23 - 32);
    *(v23 - 48) = 0;
    *(v23 - 40) = 0;
    *(v23 - 32) = 0;
    result = *(v23 - 24);
    *(v24 - 8) = *(v23 - 8);
    *(v24 - 24) = result;
    v21 -= 448;
  }

  while (v22 != v21);
  return result;
}

char *sub_8C6E28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 6) >= a5)
    {
      v15 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 6) >= a5)
      {
        v22 = 448 * a5;
        sub_8C6BC8(a1, a2, a1[1], a2 + 448 * a5);
        v23 = v22 + v7;
        v24 = v5;
        do
        {
          sub_5F9D98(v24, v7);
          *(v24 + 380) = *(v7 + 380);
          *(v24 + 384) = *(v7 + 384);
          *(v24 + 392) = *(v7 + 392);
          if (v24 != v7)
          {
            sub_5FE4B8((v24 + 400), *(v7 + 400), *(v7 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 408) - *(v7 + 400)) >> 2));
          }

          v25 = *(v7 + 424);
          *(v24 + 440) = *(v7 + 440);
          *(v24 + 424) = v25;
          v7 += 448;
          v24 += 448;
        }

        while (v7 != v23);
      }

      else
      {
        v17 = v15 + a3;
        v35 = a1[1];
        v18 = v35;
        if (v15 + a3 != a4)
        {
          v18 = v10;
          v19 = v15 + a3;
          do
          {
            sub_7A6070(v18, v19);
            v19 += 448;
            v18 = v35 + 448;
            v35 += 448;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          sub_8C6BC8(a1, v5, v10, &v5[448 * a5]);
          v20 = v5;
          do
          {
            sub_5F9D98(v20, v7);
            *(v20 + 380) = *(v7 + 380);
            *(v20 + 384) = *(v7 + 384);
            *(v20 + 392) = *(v7 + 392);
            if (v20 != v7)
            {
              sub_5FE4B8((v20 + 400), *(v7 + 400), *(v7 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 408) - *(v7 + 400)) >> 2));
            }

            v21 = *(v7 + 424);
            *(v20 + 440) = *(v7 + 440);
            *(v20 + 424) = v21;
            v7 += 448;
            v20 += 448;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 6);
      if (v12 > 0x92492492492492)
      {
        sub_1794();
      }

      v13 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 6);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x49249249249249)
      {
        v14 = 0x92492492492492;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x92492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v26 = (a2 - v11) >> 6 << 6;
      v33 = v26;
      v27 = 448 * a5;
      v28 = v26 + 448 * a5;
      do
      {
        sub_7A6070(v26, v7);
        v26 += 448;
        v7 += 448;
        v27 -= 448;
      }

      while (v27);
      sub_8C663C(a1, v5, a1[1], v28);
      v29 = *a1;
      v34 = v28 + a1[1] - v5;
      a1[1] = v5;
      v30 = v33 + v29 - v5;
      sub_8C663C(a1, v29, v5, v30);
      v31 = *a1;
      *a1 = v30;
      a1[1] = v34;
      a1[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      return v33;
    }
  }

  return v5;
}

void sub_8C71A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7A639C(va);
  _Unwind_Resume(a1);
}

void sub_8C71B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F52E4(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_8C71CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7A639C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8C71E4(uint64_t a1, uint64_t a2)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(a1 + 40) = v5;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v5;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0;
  sub_64B998(a1 + 384);
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 624) = 1065353216;
  *(a1 + 632) = 1;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 1065353216;
  *(a1 + 680) = 0;
  *(a1 + 696) = 0;
  *(a1 + 688) = 0;
  v6 = *(a1 + 304);
  if (v6 >= *(a1 + 312))
  {
    *(a1 + 304) = sub_686F34(a1 + 296, a2);
    return a1;
  }

  else
  {
    sub_5F0850(*(a1 + 304), a2);
    *(v6 + 72) = *(a2 + 72);
    v7 = *(a2 + 88);
    *(v6 + 80) = *(a2 + 80);
    *(v6 + 88) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a2 + 96);
    *(v6 + 98) = *(a2 + 98);
    *(v6 + 96) = v8;
    *(a1 + 304) = v6 + 104;
    *(a1 + 304) = v6 + 104;
    return a1;
  }
}

void sub_8C7394(_Unwind_Exception *a1)
{
  v3 = *(v1 + 680);
  if (v3)
  {
    *(v1 + 688) = v3;
    operator delete(v3);
  }

  sub_5ED80C(v1 + 640);
  sub_53A58C((v1 + 568));
  if (*(v1 + 567) < 0)
  {
    operator delete(*(v1 + 544));
  }

  sub_53A868(v1 + 384);
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_8C7408(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5D1745D1745D17)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 6);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 6)) >= 0x2E8BA2E8BA2E8BLL)
  {
    v5 = 0x5D1745D1745D17;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x5D1745D1745D17)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (a1[1] - *a1) >> 6 << 6;
  sub_5F01C8(v15, a2);
  v6 = 704 * v2 + 704;
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
      sub_8C5D7C(v12, v11);
      v11 += 704;
      v12 = v13 + 704;
    }

    while (v11 != v8);
    do
    {
      sub_5C3378(v7);
      v7 += 704;
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

void sub_8C7580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8C5D28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8C7594(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 40) = v7;
  *(a1 + 56) = v7;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v7;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0;
  sub_64B998(a1 + 384);
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 624) = 1065353216;
  *(a1 + 632) = 1;
  v8 = *a3;
  *(a1 + 648) = a3[1];
  *a3 = 0;
  *(a1 + 640) = v8;
  v9 = a3[2];
  a3[1] = 0;
  *(a1 + 656) = v9;
  v10 = a3[3];
  *(a1 + 664) = v10;
  *(a1 + 672) = *(a3 + 8);
  if (v10)
  {
    v11 = *(v9 + 8);
    v12 = *(a1 + 648);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v8 + 8 * v11) = a1 + 656;
    a3[2] = 0;
    a3[3] = 0;
  }

  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  v13 = *(a1 + 304);
  if (v13 >= *(a1 + 312))
  {
    *(a1 + 304) = sub_686F34(a1 + 296, a2);
    return a1;
  }

  else
  {
    sub_5F0850(*(a1 + 304), a2);
    *(v13 + 72) = *(a2 + 72);
    v14 = *(a2 + 88);
    *(v13 + 80) = *(a2 + 80);
    *(v13 + 88) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(a2 + 96);
    *(v13 + 98) = *(a2 + 98);
    *(v13 + 96) = v15;
    *(a1 + 304) = v13 + 104;
    *(a1 + 304) = v13 + 104;
    return a1;
  }
}

void sub_8C77B0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 688) = v4;
    operator delete(v4);
  }

  sub_5ED80C(v1 + 640);
  sub_53A58C((v1 + 568));
  if (*(v1 + 567) < 0)
  {
    operator delete(*(v1 + 544));
  }

  sub_53A868(v1 + 384);
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_8C7820(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v29 = a2;
  v30 = result;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    v10 = v7 - v8;
    v11 = 0xAF8AF8AF8AF8AF8BLL * ((v7 - v8) >> 5);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:
          v29 = (v7 - 1120);
          return sub_8C7C0C(v8, (v8 + 1120), (v7 - 1120));
        case 4uLL:
          v29 = (v7 - 1120);
          return sub_8C7ED4(v8, (v8 + 1120), (v8 + 2240), (v7 - 1120));
        case 5uLL:
          v29 = (v7 - 1120);
          return sub_8C80C0(v8, (v8 + 1120), (v8 + 2240), (v8 + 3360), (v7 - 1120));
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v29 = (v7 - 1120);
        v25 = sub_681D54((v7 - 1120));
        if (v25 == sub_681D54(v8))
        {
          v26 = sub_681D5C((v7 - 1120));
          result = sub_681D5C(v8);
          if (v26 <= result)
          {
            return result;
          }
        }

        else
        {
          v27 = sub_681D54((v7 - 1120));
          result = sub_681D54(v8);
          if (v27 <= result)
          {
            return result;
          }
        }

        return sub_8C7BAC(&v30, &v29);
      }
    }

    if (v10 <= 26879)
    {
      if (a5)
      {
        return sub_8C8328(v8, v7);
      }

      else
      {
        return sub_8C84E0(v8, v7);
      }
    }

    if (v9 == 1)
    {
      break;
    }

    v12 = v11 >> 1;
    v13 = (v7 - 1120);
    if (v10 <= 0x23000)
    {
      sub_8C7C0C(&v8[1120 * (v11 >> 1)], v8, v13);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_8C7C0C(v8, &v8[1120 * (v11 >> 1)], v13);
      v14 = 1120 * v12;
      v15 = 1120 * v12 - 1120;
      v16 = v29;
      sub_8C7C0C((v30 + 1120), &v30[v15], v29 - 2240);
      sub_8C7C0C((v30 + 2240), &v30[v14 + 1120], v16 - 3360);
      sub_8C7C0C(&v30[v15], &v30[v14], &v30[v14 + 1120]);
      v28 = &v30[v14];
      sub_8C7BAC(&v30, &v28);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = v30;
    v18 = (v30 - 1120);
    v19 = sub_681D54((v30 - 1120));
    if (v19 == sub_681D54(v17))
    {
      v20 = sub_681D5C(v18);
      if (v20 <= sub_681D5C(v17))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = sub_681D54(v18);
      if (v21 <= sub_681D54(v17))
      {
LABEL_27:
        v7 = v29;
        result = sub_8C8634(v30, v29);
        v8 = result;
        goto LABEL_28;
      }
    }

LABEL_20:
    v7 = v29;
    v22 = sub_8C8988(v30, v29);
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    v24 = sub_8C8CA4(v30, v22);
    v8 = (v22 + 1120);
    result = sub_8C8CA4(v22 + 1120, v7);
    if (result)
    {
      if (v24)
      {
        return result;
      }

      v29 = v22;
      v8 = v30;
      v7 = v22;
      ++v9;
    }

    else
    {
      if (!v24)
      {
LABEL_26:
        result = sub_8C7820(v30, v22, a3, -v9, a5 & 1);
        v8 = (v22 + 1120);
LABEL_28:
        a5 = 0;
        v30 = v8;
        a4 = -v9;
        goto LABEL_2;
      }

      v30 = (v22 + 1120);
      ++v9;
    }
  }

  if (v8 != v7)
  {
    return sub_8C91BC(v8, v7, v7, a3);
  }

  return result;
}

void *sub_8C7BAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_7A5A3C(v5, *a1);
  sub_8C8FB0(v2, v3);
  sub_8C8FB0(v3, v5);
  return sub_5938B0(v5);
}

uint64_t sub_8C7C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_681D54(a2);
  if (v6 != sub_681D54(a1))
  {
    v11 = sub_681D54(a2);
    if (v11 <= sub_681D54(a1))
    {
      goto LABEL_3;
    }

LABEL_7:
    v12 = sub_681D54(a3);
    if (v12 == sub_681D54(a2))
    {
      v13 = sub_681D5C(a3);
      if (v13 <= sub_681D5C(a2))
      {
LABEL_9:
        sub_7A5A3C(v24, a1);
        sub_8C8FB0(a1, a2);
        sub_8C8FB0(a2, v24);
        sub_5938B0(v24);
        v14 = sub_681D54(a3);
        if (v14 == sub_681D54(a2))
        {
          v15 = sub_681D5C(a3);
          if (v15 <= sub_681D5C(a2))
          {
            return 1;
          }
        }

        else
        {
          v21 = sub_681D54(a3);
          if (v21 <= sub_681D54(a2))
          {
            return 1;
          }
        }

        sub_7A5A3C(v24, a2);
        v20 = a2;
LABEL_20:
        sub_8C8FB0(v20, a3);
        v22 = a3;
LABEL_23:
        sub_8C8FB0(v22, v24);
        sub_5938B0(v24);
        return 1;
      }
    }

    else
    {
      v19 = sub_681D54(a3);
      if (v19 <= sub_681D54(a2))
      {
        goto LABEL_9;
      }
    }

    sub_7A5A3C(v24, a1);
    v20 = a1;
    goto LABEL_20;
  }

  v7 = sub_681D5C(a2);
  if (v7 > sub_681D5C(a1))
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = sub_681D54(a3);
  if (v8 == sub_681D54(a2))
  {
    v9 = sub_681D5C(a3);
    if (v9 <= sub_681D5C(a2))
    {
      return 0;
    }
  }

  else
  {
    v16 = sub_681D54(a3);
    if (v16 <= sub_681D54(a2))
    {
      return 0;
    }
  }

  sub_7A5A3C(v24, a2);
  sub_8C8FB0(a2, a3);
  sub_8C8FB0(a3, v24);
  sub_5938B0(v24);
  v17 = sub_681D54(a2);
  if (v17 == sub_681D54(a1))
  {
    v18 = sub_681D5C(a2);
    if (v18 <= sub_681D5C(a1))
    {
      return 1;
    }

    goto LABEL_22;
  }

  v23 = sub_681D54(a2);
  if (v23 > sub_681D54(a1))
  {
LABEL_22:
    sub_7A5A3C(v24, a1);
    sub_8C8FB0(a1, a2);
    v22 = a2;
    goto LABEL_23;
  }

  return 1;
}

void *sub_8C7ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_8C7C0C(a1, a2, a3);
  v8 = sub_681D54(a4);
  if (v8 == sub_681D54(a3))
  {
    v9 = sub_681D5C(a4);
    result = sub_681D5C(a3);
    if (v9 <= result)
    {
      return result;
    }
  }

  else
  {
    v11 = sub_681D54(a4);
    result = sub_681D54(a3);
    if (v11 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v18, a3);
  sub_8C8FB0(a3, a4);
  sub_8C8FB0(a4, v18);
  sub_5938B0(v18);
  v12 = sub_681D54(a3);
  if (v12 == sub_681D54(a2))
  {
    v13 = sub_681D5C(a3);
    result = sub_681D5C(a2);
    if (v13 <= result)
    {
      return result;
    }
  }

  else
  {
    v14 = sub_681D54(a3);
    result = sub_681D54(a2);
    if (v14 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v18, a2);
  sub_8C8FB0(a2, a3);
  sub_8C8FB0(a3, v18);
  sub_5938B0(v18);
  v15 = sub_681D54(a2);
  if (v15 == sub_681D54(a1))
  {
    v16 = sub_681D5C(a2);
    result = sub_681D5C(a1);
    if (v16 > result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = sub_681D54(a2);
    result = sub_681D54(a1);
    if (v17 > result)
    {
LABEL_13:
      sub_7A5A3C(v18, a1);
      sub_8C8FB0(a1, a2);
      sub_8C8FB0(a2, v18);
      return sub_5938B0(v18);
    }
  }

  return result;
}

void *sub_8C80C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_8C7ED4(a1, a2, a3, a4);
  v10 = sub_681D54(a5);
  if (v10 == sub_681D54(a4))
  {
    v11 = sub_681D5C(a5);
    result = sub_681D5C(a4);
    if (v11 <= result)
    {
      return result;
    }
  }

  else
  {
    v13 = sub_681D54(a5);
    result = sub_681D54(a4);
    if (v13 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v23, a4);
  sub_8C8FB0(a4, a5);
  sub_8C8FB0(a5, v23);
  sub_5938B0(v23);
  v14 = sub_681D54(a4);
  if (v14 == sub_681D54(a3))
  {
    v15 = sub_681D5C(a4);
    result = sub_681D5C(a3);
    if (v15 <= result)
    {
      return result;
    }
  }

  else
  {
    v16 = sub_681D54(a4);
    result = sub_681D54(a3);
    if (v16 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v23, a3);
  sub_8C8FB0(a3, a4);
  sub_8C8FB0(a4, v23);
  sub_5938B0(v23);
  v17 = sub_681D54(a3);
  if (v17 == sub_681D54(a2))
  {
    v18 = sub_681D5C(a3);
    result = sub_681D5C(a2);
    if (v18 <= result)
    {
      return result;
    }
  }

  else
  {
    v19 = sub_681D54(a3);
    result = sub_681D54(a2);
    if (v19 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v23, a2);
  sub_8C8FB0(a2, a3);
  sub_8C8FB0(a3, v23);
  sub_5938B0(v23);
  v20 = sub_681D54(a2);
  if (v20 != sub_681D54(a1))
  {
    v22 = sub_681D54(a2);
    result = sub_681D54(a1);
    if (v22 <= result)
    {
      return result;
    }

    goto LABEL_17;
  }

  v21 = sub_681D5C(a2);
  result = sub_681D5C(a1);
  if (v21 > result)
  {
LABEL_17:
    sub_7A5A3C(v23, a1);
    sub_8C8FB0(a1, a2);
    sub_8C8FB0(a2, v23);
    return sub_5938B0(v23);
  }

  return result;
}

uint64_t sub_8C8328(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1120;
    if (result + 1120 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v6;
        v6 = v4;
        v9 = sub_681D54(v4);
        if (v9 == sub_681D54(v8))
        {
          v10 = sub_681D5C(v6);
          result = sub_681D5C(v8);
          if (v10 <= result)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = sub_681D54(v6);
          result = sub_681D54(v8);
          if (v11 <= result)
          {
            goto LABEL_6;
          }
        }

        sub_7A5A3C(v16, v6);
        sub_8C8FB0(v6, v8);
        v7 = v3;
        if (v8 == v3)
        {
          goto LABEL_5;
        }

        v12 = v5;
        while (1)
        {
          v13 = sub_681D54(v16);
          if (v13 != sub_681D54(v3 + v12 - 1120))
          {
            break;
          }

          v14 = sub_681D5C(v16);
          if (v14 <= sub_681D5C(v3 + v12 - 1120))
          {
            v7 = v3 + v12;
            goto LABEL_5;
          }

LABEL_13:
          v8 -= 1120;
          sub_8C8FB0(v3 + v12, v3 + v12 - 1120);
          v12 -= 1120;
          if (!v12)
          {
            v7 = v3;
            goto LABEL_5;
          }
        }

        v15 = sub_681D54(v16);
        if (v15 > sub_681D54(v3 + v12 - 1120))
        {
          goto LABEL_13;
        }

        v7 = v8;
LABEL_5:
        sub_8C8FB0(v7, v16);
        result = sub_5938B0(v16);
LABEL_6:
        v4 = v6 + 1120;
        v5 += 1120;
      }

      while (v6 + 1120 != a2);
    }
  }

  return result;
}

uint64_t sub_8C84E0(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    while (1)
    {
      while (1)
      {
        v4 = v3 + 1120;
        if (v3 + 1120 == a2)
        {
          return result;
        }

        v5 = v3;
        v3 += 1120;
        v6 = sub_681D54(v4);
        if (v6 != sub_681D54(v5))
        {
          break;
        }

        v7 = sub_681D5C(v3);
        result = sub_681D5C(v5);
        if (v7 > result)
        {
          goto LABEL_9;
        }
      }

      v8 = sub_681D54(v3);
      result = sub_681D54(v5);
      if (v8 > result)
      {
LABEL_9:
        sub_7A5A3C(v13, v3);
        do
        {
          v9 = v5;
          sub_8C8FB0(v5 + 1120, v5);
          v10 = sub_681D54(v13);
          v5 -= 1120;
          if (v10 == sub_681D54(v9 - 1120))
          {
            v11 = sub_681D5C(v13);
            v12 = sub_681D5C(v9 - 1120);
          }

          else
          {
            v11 = sub_681D54(v13);
            v12 = sub_681D54(v9 - 1120);
          }
        }

        while (v11 > v12);
        sub_8C8FB0(v9, v13);
        result = sub_5938B0(v13);
      }
    }
  }

  return result;
}

unint64_t sub_8C8634(uint64_t a1, unint64_t a2)
{
  sub_7A5A3C(v24, a1);
  v4 = sub_681D54(v24);
  if (v4 == sub_681D54(a2 - 1120))
  {
    v5 = sub_681D5C(v24);
    v6 = sub_681D5C(a2 - 1120);
  }

  else
  {
    v5 = sub_681D54(v24);
    v6 = sub_681D54(a2 - 1120);
  }

  if (v5 <= v6)
  {
    for (i = a1 + 1120; i < a2; i += 1120)
    {
      v11 = sub_681D54(v24);
      if (v11 == sub_681D54(i))
      {
        v12 = sub_681D5C(v24);
        v13 = sub_681D5C(i);
      }

      else
      {
        v12 = sub_681D54(v24);
        v13 = sub_681D54(i);
      }

      if (v12 > v13)
      {
        break;
      }
    }
  }

  else
  {
    for (i = a1 + 1120; ; i += 1120)
    {
      v8 = sub_681D54(v24);
      if (v8 == sub_681D54(i))
      {
        v9 = sub_681D5C(v24);
        v10 = sub_681D5C(i);
      }

      else
      {
        v9 = sub_681D54(v24);
        v10 = sub_681D54(i);
      }

      if (v9 > v10)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 1120; ; a2 -= 1120)
    {
      v14 = sub_681D54(v24);
      if (v14 == sub_681D54(a2))
      {
        v15 = sub_681D5C(v24);
        v16 = sub_681D5C(a2);
      }

      else
      {
        v15 = sub_681D54(v24);
        v16 = sub_681D54(a2);
      }

      if (v15 <= v16)
      {
        break;
      }
    }
  }

  while (i < a2)
  {
    sub_7A5A3C(v25, i);
    sub_8C8FB0(i, a2);
    sub_8C8FB0(a2, v25);
    sub_5938B0(v25);
    do
    {
      i += 1120;
      v17 = sub_681D54(v24);
      if (v17 == sub_681D54(i))
      {
        v18 = sub_681D5C(v24);
        v19 = sub_681D5C(i);
      }

      else
      {
        v18 = sub_681D54(v24);
        v19 = sub_681D54(i);
      }
    }

    while (v18 <= v19);
    do
    {
      a2 -= 1120;
      v20 = sub_681D54(v24);
      if (v20 == sub_681D54(a2))
      {
        v21 = sub_681D5C(v24);
        v22 = sub_681D5C(a2);
      }

      else
      {
        v21 = sub_681D54(v24);
        v22 = sub_681D54(a2);
      }
    }

    while (v21 > v22);
  }

  if (i - 1120 != a1)
  {
    sub_8C8FB0(a1, i - 1120);
  }

  sub_8C8FB0(i - 1120, v24);
  sub_5938B0(v24);
  return i;
}