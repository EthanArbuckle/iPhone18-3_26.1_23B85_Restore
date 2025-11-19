uint64_t sub_3746CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2 + 24;
  v25 = a2 + 24;
  v26 = a2;
  v6 = a2 + 56;
  v27 = a2 + 56;
  v28 = a2 + 48;
  v16 = a2 + 48;
  v17 = a2 + 80;
  v7 = a2 + 104;
  v29 = a2 + 80;
  v30 = a2 + 104;
  v11 = a1 + 24;
  v12 = a1 + 104;
  v19 = a1 + 24;
  v20 = a1;
  v14 = a1 + 48;
  v15 = a1 + 56;
  v21 = a1 + 56;
  v22 = a1 + 48;
  v13 = a1 + 80;
  v23 = a1 + 80;
  v24 = a1 + 104;
  if ((sub_3762FC(&v25, &v19) & 0x80) != 0)
  {
    v25 = a3 + 24;
    v26 = a3;
    v27 = a3 + 56;
    v28 = a3 + 48;
    v29 = a3 + 80;
    v30 = a3 + 104;
    v19 = v18;
    v20 = a2;
    v21 = v6;
    v22 = v16;
    v23 = v17;
    v24 = v7;
    if ((sub_3762FC(&v25, &v19) & 0x80) != 0)
    {
      v9 = a1;
    }

    else
    {
      sub_3764F0(a1, a2);
      v25 = a3 + 24;
      v26 = a3;
      v27 = a3 + 56;
      v28 = a3 + 48;
      v29 = a3 + 80;
      v30 = a3 + 104;
      v19 = v18;
      v20 = a2;
      v21 = v6;
      v22 = v16;
      v23 = v17;
      v24 = v7;
      if ((sub_3762FC(&v25, &v19) & 0x80) == 0)
      {
        return 1;
      }

      v9 = a2;
    }

    v10 = a3;
    goto LABEL_11;
  }

  v25 = a3 + 24;
  v26 = a3;
  v27 = a3 + 56;
  v28 = a3 + 48;
  v29 = a3 + 80;
  v30 = a3 + 104;
  v19 = v18;
  v20 = a2;
  v21 = v6;
  v22 = v16;
  v23 = v17;
  v24 = v7;
  if ((sub_3762FC(&v25, &v19) & 0x80) == 0)
  {
    return 0;
  }

  sub_3764F0(a2, a3);
  v25 = v18;
  v26 = a2;
  v27 = v6;
  v28 = v16;
  v29 = v17;
  v30 = v7;
  v19 = v11;
  v20 = a1;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  if ((sub_3762FC(&v25, &v19) & 0x80) != 0)
  {
    v9 = a1;
    v10 = a2;
LABEL_11:
    sub_3764F0(v9, v10);
  }

  return 1;
}

double sub_3748A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3746CC(a1, a2, a3);
  v15 = a4 + 24;
  v16 = a4;
  v17 = a4 + 56;
  v18 = a4 + 48;
  v19 = a4 + 80;
  v20 = a4 + 104;
  v9 = a3 + 24;
  v10 = a3;
  v11 = a3 + 56;
  v12 = a3 + 48;
  v13 = a3 + 80;
  v14 = a3 + 104;
  if ((sub_3762FC(&v15, &v9) & 0x80) != 0)
  {
    sub_3764F0(a3, a4);
    v15 = a3 + 24;
    v16 = a3;
    v17 = a3 + 56;
    v18 = a3 + 48;
    v19 = a3 + 80;
    v20 = a3 + 104;
    v9 = a2 + 24;
    v10 = a2;
    v11 = a2 + 56;
    v12 = a2 + 48;
    v13 = a2 + 80;
    v14 = a2 + 104;
    if ((sub_3762FC(&v15, &v9) & 0x80) != 0)
    {
      sub_3764F0(a2, a3);
      v15 = a2 + 24;
      v16 = a2;
      v17 = a2 + 56;
      v18 = a2 + 48;
      v19 = a2 + 80;
      v20 = a2 + 104;
      v9 = a1 + 24;
      v10 = a1;
      v11 = a1 + 56;
      v12 = a1 + 48;
      v13 = a1 + 80;
      v14 = a1 + 104;
      if ((sub_3762FC(&v15, &v9) & 0x80) != 0)
      {
        *&result = sub_3764F0(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

double sub_3749EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_3748A4(a1, a2, a3, a4);
  v17 = a5 + 24;
  v18 = a5;
  v19 = a5 + 56;
  v20 = a5 + 48;
  v21 = a5 + 80;
  v22 = a5 + 104;
  v11 = a4 + 24;
  v12 = a4;
  v13 = a4 + 56;
  v14 = a4 + 48;
  v15 = a4 + 80;
  v16 = a4 + 104;
  if ((sub_3762FC(&v17, &v11) & 0x80) != 0)
  {
    sub_3764F0(a4, a5);
    v17 = a4 + 24;
    v18 = a4;
    v19 = a4 + 56;
    v20 = a4 + 48;
    v21 = a4 + 80;
    v22 = a4 + 104;
    v11 = a3 + 24;
    v12 = a3;
    v13 = a3 + 56;
    v14 = a3 + 48;
    v15 = a3 + 80;
    v16 = a3 + 104;
    if ((sub_3762FC(&v17, &v11) & 0x80) != 0)
    {
      sub_3764F0(a3, a4);
      v17 = a3 + 24;
      v18 = a3;
      v19 = a3 + 56;
      v20 = a3 + 48;
      v21 = a3 + 80;
      v22 = a3 + 104;
      v11 = a2 + 24;
      v12 = a2;
      v13 = a2 + 56;
      v14 = a2 + 48;
      v15 = a2 + 80;
      v16 = a2 + 104;
      if ((sub_3762FC(&v17, &v11) & 0x80) != 0)
      {
        sub_3764F0(a2, a3);
        v17 = a2 + 24;
        v18 = a2;
        v19 = a2 + 56;
        v20 = a2 + 48;
        v21 = a2 + 80;
        v22 = a2 + 104;
        v11 = a1 + 24;
        v12 = a1;
        v13 = a1 + 56;
        v14 = a1 + 48;
        v15 = a1 + 80;
        v16 = a1 + 104;
        if ((sub_3762FC(&v17, &v11) & 0x80) != 0)
        {
          *&result = sub_3764F0(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

void sub_374B80(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = (a1 + 152);
    if ((a1 + 152) != a2)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        v6 = v3;
        v7 = (v5 + 22);
        v8 = (v5 + 26);
        v28[0] = v5 + 22;
        v28[1] = v3;
        v9 = (v5 + 29);
        v29 = v5 + 26;
        *&v30 = v5 + 25;
        *(&v30 + 1) = v5 + 29;
        v31 = v5 + 32;
        v41 = (v5 + 3);
        v42 = v5;
        v43 = (v5 + 7);
        v44 = v5 + 6;
        p_p = (v5 + 10);
        v46 = (v5 + 13);
        if ((sub_3762FC(v28, &v41) & 0x80) == 0)
        {
          goto LABEL_4;
        }

        v10 = *v6;
        v11 = v6[2];
        v6[1] = 0;
        v6[2] = 0;
        *v6 = 0;
        v31 = v5[24];
        *v28 = v10;
        v30 = *v7;
        *v7 = 0;
        v5[23] = 0;
        v5[24] = 0;
        v12 = v5[25];
        v29 = v11;
        v32 = v12;
        v13 = *v8;
        v34 = v5[28];
        v33 = v13;
        v5[27] = 0;
        v5[28] = 0;
        *v8 = 0;
        v14 = *v9;
        v36 = v5[31];
        __p = v14;
        *v9 = 0;
        v5[30] = 0;
        v5[31] = 0;
        v37 = *(v5 + 256);
        *v38 = *(v5 + 33);
        *&v38[16] = v5[35];
        v5[33] = 0;
        v5[34] = 0;
        v5[35] = 0;
        v15 = v4;
        v39 = *(v5 + 18);
        while (1)
        {
          v16 = v15;
          v17 = a1 + v15;
          if (*(a1 + v15 + 175) < 0)
          {
            operator delete(*(v17 + 152));
          }

          *(v17 + 152) = *v17;
          *(v17 + 168) = *(v17 + 16);
          *(v17 + 23) = 0;
          *v17 = 0;
          if (*(v17 + 199) < 0)
          {
            operator delete(*(v17 + 176));
          }

          v18 = a1 + v16;
          *(v17 + 176) = *(v17 + 24);
          *(v17 + 192) = *(v17 + 40);
          *(v18 + 47) = 0;
          *(v17 + 24) = 0;
          *(v18 + 200) = *(a1 + v16 + 48);
          if (*(a1 + v16 + 231) < 0)
          {
            operator delete(*(v18 + 208));
          }

          *(v18 + 208) = *(v18 + 56);
          *(v18 + 224) = *(v18 + 72);
          *(v18 + 79) = 0;
          *(v18 + 56) = 0;
          if (*(v18 + 255) < 0)
          {
            operator delete(*(v18 + 232));
          }

          v19 = a1 + v16;
          *(v18 + 232) = *(v18 + 80);
          *(v18 + 248) = *(v18 + 96);
          *(v19 + 103) = 0;
          *(v18 + 80) = 0;
          *(v19 + 256) = *(a1 + v16 + 104);
          v20 = (a1 + v16 + 264);
          v21 = *v20;
          if (*v20)
          {
            *(v19 + 272) = v21;
            operator delete(v21);
            *v20 = 0;
            *(a1 + v16 + 272) = 0;
            *(a1 + v16 + 280) = 0;
          }

          *v20 = *(v19 + 112);
          *(v19 + 280) = *(v19 + 128);
          *(v19 + 120) = 0;
          *(v19 + 128) = 0;
          *(v19 + 112) = 0;
          *(v19 + 288) = *(v19 + 136);
          if (!v16)
          {
            break;
          }

          v41 = &v30;
          v42 = v28;
          v43 = &v33;
          v44 = &v32;
          p_p = &__p;
          v46 = &v37;
          v40[0] = a1 + v16 - 128;
          v40[1] = a1 + v16 - 152;
          v40[2] = a1 + v16 - 96;
          v40[3] = a1 + v16 - 104;
          v40[4] = a1 + v16 - 72;
          v40[5] = a1 + v16 - 48;
          v22 = sub_3762FC(&v41, v40);
          v15 = v16 - 152;
          if ((v22 & 0x80000000) == 0)
          {
            v23 = a1 + v16;
            if ((*(a1 + v15 + 175) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        v23 = a1;
        if ((*(a1 + 23) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_22:
        operator delete(*v23);
LABEL_23:
        v24 = a1 + v16;
        *v23 = *v28;
        *(v23 + 16) = v29;
        HIBYTE(v29) = 0;
        LOBYTE(v28[0]) = 0;
        if (*(v23 + 47) < 0)
        {
          operator delete(*(v24 + 24));
        }

        *(v24 + 24) = v30;
        *(v24 + 40) = v31;
        HIBYTE(v31) = 0;
        LOBYTE(v30) = 0;
        *(v23 + 48) = v32;
        if (*(v23 + 79) < 0)
        {
          operator delete(*(v24 + 56));
        }

        *(v24 + 72) = v34;
        *(v24 + 56) = v33;
        HIBYTE(v34) = 0;
        LOBYTE(v33) = 0;
        if (*(v23 + 103) < 0)
        {
          operator delete(*(v24 + 80));
        }

        *(v24 + 80) = __p;
        *(v24 + 96) = v36;
        HIBYTE(v36) = 0;
        LOBYTE(__p) = 0;
        *(v23 + 104) = v37;
        v25 = *(v24 + 112);
        if (v25)
        {
          *(v23 + 120) = v25;
          operator delete(v25);
          *(v24 + 112) = 0;
          *(v24 + 120) = 0;
          *(v24 + 128) = 0;
          v26 = SHIBYTE(v36);
          *(v24 + 112) = *v38;
          *(v23 + 120) = *&v38[8];
          memset(v38, 0, sizeof(v38));
          *(v24 + 136) = v39;
          if (v26 < 0)
          {
            operator delete(__p);
            if ((SHIBYTE(v34) & 0x80000000) == 0)
            {
LABEL_32:
              if ((SHIBYTE(v31) & 0x80000000) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_39;
            }
          }

          else if ((SHIBYTE(v34) & 0x80000000) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          *(v24 + 112) = *v38;
          *(v23 + 120) = *&v38[8];
          memset(v38, 0, sizeof(v38));
          *(v24 + 136) = v39;
          if ((SHIBYTE(v34) & 0x80000000) == 0)
          {
            goto LABEL_32;
          }
        }

        operator delete(v33);
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
LABEL_33:
          if (SHIBYTE(v29) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_4;
        }

LABEL_39:
        operator delete(v30);
        if (SHIBYTE(v29) < 0)
        {
LABEL_40:
          operator delete(v28[0]);
        }

LABEL_4:
        v3 = v6 + 19;
        v4 += 152;
        v5 = v6;
      }

      while (v6 + 19 != a2);
    }
  }
}

void sub_374FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_375008(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v2 = a1;
    v3 = a1 + 19;
    if (a1 + 19 != a2)
    {
      v19 = a1 + 79;
      do
      {
        v4 = v3;
        v5 = (v2 + 22);
        v6 = (v2 + 26);
        v20[0] = v2 + 22;
        v20[1] = v3;
        v7 = (v2 + 29);
        v21 = v2 + 26;
        *&v22 = v2 + 25;
        *(&v22 + 1) = v2 + 29;
        v23 = v2 + 32;
        v34 = (v2 + 3);
        v35 = v2;
        v36 = (v2 + 7);
        v37 = v2 + 6;
        p_p = (v2 + 10);
        v39 = (v2 + 13);
        if ((sub_3762FC(v20, &v34) & 0x80) == 0)
        {
          goto LABEL_4;
        }

        v8 = *v4;
        v9 = v4[2];
        v4[1] = 0;
        v4[2] = 0;
        *v4 = 0;
        v23 = v2[24];
        *v20 = v8;
        v22 = *v5;
        *v5 = 0;
        v2[23] = 0;
        v2[24] = 0;
        v10 = v2[25];
        v21 = v9;
        v24 = v10;
        v11 = *v6;
        v26 = v2[28];
        v25 = v11;
        v2[27] = 0;
        v2[28] = 0;
        *v6 = 0;
        v12 = *v7;
        v28 = v2[31];
        __p = v12;
        *v7 = 0;
        v2[30] = 0;
        v2[31] = 0;
        v29 = *(v2 + 256);
        v30 = *(v2 + 33);
        v31 = v2[35];
        v2[33] = 0;
        v2[34] = 0;
        v2[35] = 0;
        v13 = *(v2 + 18);
        v14 = v19;
        v32 = v13;
        do
        {
          if (*(v14 + 96) < 0)
          {
            operator delete(*(v14 + 73));
          }

          *(v14 + 73) = *(v14 - 79);
          *(v14 + 89) = *(v14 - 63);
          *(v14 - 56) = 0;
          *(v14 - 79) = 0;
          if (*(v14 + 120) < 0)
          {
            operator delete(*(v14 + 97));
          }

          *(v14 + 97) = *(v14 - 55);
          *(v14 + 113) = *(v14 - 39);
          *(v14 - 32) = 0;
          *(v14 - 55) = 0;
          *(v14 + 121) = *(v14 - 31);
          if (*(v14 + 152) < 0)
          {
            operator delete(*(v14 + 129));
          }

          *(v14 + 129) = *(v14 - 23);
          *(v14 + 145) = *(v14 - 7);
          *v14 = 0;
          *(v14 - 23) = 0;
          if (*(v14 + 176) < 0)
          {
            operator delete(*(v14 + 153));
          }

          *(v14 + 153) = *(v14 + 1);
          *(v14 + 169) = *(v14 + 17);
          v15 = *(v14 + 185);
          *(v14 + 24) = 0;
          *(v14 + 1) = 0;
          *(v14 + 177) = *(v14 + 25);
          if (v15)
          {
            *(v14 + 193) = v15;
            operator delete(v15);
            *(v14 + 185) = 0;
            *(v14 + 193) = 0;
            *(v14 + 201) = 0;
          }

          *(v14 + 185) = *(v14 + 33);
          *(v14 + 201) = *(v14 + 49);
          *(v14 + 49) = 0;
          *(v14 + 41) = 0;
          *(v14 + 33) = 0;
          *(v14 + 209) = *(v14 + 57);
          v34 = &v22;
          v35 = v20;
          v36 = &v25;
          v37 = &v24;
          p_p = &__p;
          v39 = &v29;
          v33[0] = v14 - 207;
          v33[1] = v14 - 231;
          v33[2] = v14 - 175;
          v33[3] = v14 - 183;
          v33[4] = v14 - 151;
          v33[5] = v14 - 127;
          v14 -= 152;
        }

        while (sub_3762FC(&v34, v33) < 0);
        if (*(v14 + 96) < 0)
        {
          operator delete(*(v14 + 73));
        }

        *(v14 + 73) = *v20;
        *(v14 + 89) = v21;
        HIBYTE(v21) = 0;
        LOBYTE(v20[0]) = 0;
        if (*(v14 + 120) < 0)
        {
          operator delete(*(v14 + 97));
        }

        *(v14 + 97) = v22;
        *(v14 + 113) = v23;
        HIBYTE(v23) = 0;
        LOBYTE(v22) = 0;
        *(v14 + 121) = v24;
        if (*(v14 + 152) < 0)
        {
          operator delete(*(v14 + 129));
        }

        *(v14 + 129) = v25;
        *(v14 + 145) = v26;
        HIBYTE(v26) = 0;
        LOBYTE(v25) = 0;
        if (*(v14 + 176) < 0)
        {
          operator delete(*(v14 + 153));
        }

        *(v14 + 153) = __p;
        *(v14 + 169) = v28;
        HIBYTE(v28) = 0;
        LOBYTE(__p) = 0;
        *(v14 + 177) = v29;
        v16 = *(v14 + 185);
        if (v16)
        {
          *(v14 + 193) = v16;
          operator delete(v16);
          *(v14 + 193) = 0;
          *(v14 + 185) = 0;
          *(v14 + 201) = 0;
          v17 = SHIBYTE(v28);
          *(v14 + 185) = v30;
          *(v14 + 201) = v31;
          v31 = 0;
          v30 = 0uLL;
          *(v14 + 209) = v32;
          if (v17 < 0)
          {
            operator delete(__p);
            if ((SHIBYTE(v26) & 0x80000000) == 0)
            {
LABEL_29:
              if ((SHIBYTE(v23) & 0x80000000) == 0)
              {
                goto LABEL_30;
              }

              goto LABEL_36;
            }
          }

          else if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          *(v14 + 185) = v30;
          *(v14 + 201) = v31;
          v31 = 0;
          v30 = 0uLL;
          *(v14 + 209) = v32;
          if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }
        }

        operator delete(v25);
        if ((SHIBYTE(v23) & 0x80000000) == 0)
        {
LABEL_30:
          if (SHIBYTE(v21) < 0)
          {
            goto LABEL_37;
          }

          goto LABEL_4;
        }

LABEL_36:
        operator delete(v22);
        if (SHIBYTE(v21) < 0)
        {
LABEL_37:
          operator delete(v20[0]);
        }

LABEL_4:
        v3 = v4 + 19;
        v19 += 152;
        v2 = v4;
      }

      while (v4 + 19 != a2);
    }
  }
}

void sub_37545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_375470(uint64_t a1, unint64_t a2)
{
  i = a2;
  *v24 = *a1;
  v25 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *v26 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v27 = v5;
  v28 = v6;
  v30 = *(a1 + 72);
  *v29 = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = *(a1 + 80);
  v32 = *(a1 + 96);
  *v31 = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v33 = *(a1 + 104);
  *__p = *(a1 + 112);
  v35 = *(a1 + 128);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v36 = *(a1 + 136);
  v43 = v26;
  v44 = v24;
  v45 = v29;
  v46 = &v28;
  v47 = v31;
  v48 = &v33;
  v8 = a2 - 72;
  v37 = a2 - 128;
  v38 = a2 - 152;
  v39 = a2 - 96;
  v40 = a2 - 104;
  v41 = a2 - 72;
  v42 = a2 - 48;
  if (sub_3762FC(&v43, &v37) < 0)
  {
    v11 = a1 + 256;
    do
    {
      v43 = v26;
      v44 = v24;
      v45 = v29;
      v46 = &v28;
      v47 = v31;
      v48 = &v33;
      v37 = v11 - 80;
      v38 = v11 - 104;
      v39 = v11 - 48;
      v40 = v11 - 56;
      v41 = v11 - 24;
      v42 = v11;
      v11 += 152;
    }

    while ((sub_3762FC(&v43, &v37) & 0x80000000) == 0);
    v10 = v11 - 256;
    if (v10 >= i)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = a1 + 256;
    do
    {
      v10 = v9 - 104;
      if (v9 - 104 >= i)
      {
        break;
      }

      v43 = v26;
      v44 = v24;
      v45 = v29;
      v46 = &v28;
      v47 = v31;
      v48 = &v33;
      v37 = v9 - 80;
      v38 = v9 - 104;
      v39 = v9 - 48;
      v40 = v9 - 56;
      v41 = v9 - 24;
      v42 = v9;
      v9 += 152;
    }

    while ((sub_3762FC(&v43, &v37) & 0x80000000) == 0);
    if (v10 >= i)
    {
LABEL_6:
      if (v10 >= i)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  do
  {
    v43 = v26;
    v44 = v24;
    v45 = v29;
    v46 = &v28;
    v47 = v31;
    v48 = &v33;
    v37 = v8 - 56;
    v38 = v8 - 80;
    v39 = v8 - 24;
    v40 = v8 - 32;
    v41 = v8;
    v42 = v8 + 24;
    v8 -= 152;
  }

  while (sub_3762FC(&v43, &v37) < 0);
  for (i = v8 + 72; v10 < i; i = v13 + 72)
  {
LABEL_13:
    sub_3764F0(v10, i);
    v12 = v10 + 256;
    do
    {
      v43 = v26;
      v44 = v24;
      v45 = v29;
      v46 = &v28;
      v47 = v31;
      v48 = &v33;
      v37 = v12 - 80;
      v38 = v12 - 104;
      v39 = v12 - 48;
      v40 = v12 - 56;
      v41 = v12 - 24;
      v42 = v12;
      v12 += 152;
    }

    while ((sub_3762FC(&v43, &v37) & 0x80000000) == 0);
    v10 = v12 - 256;
    v13 = i - 72;
    do
    {
      v43 = v26;
      v44 = v24;
      v45 = v29;
      v46 = &v28;
      v47 = v31;
      v48 = &v33;
      v37 = v13 - 56;
      v38 = v13 - 80;
      v39 = v13 - 24;
      v40 = v13 - 32;
      v41 = v13;
      v42 = v13 + 24;
      v13 -= 152;
    }

    while (sub_3762FC(&v43, &v37) < 0);
  }

LABEL_18:
  v14 = (v10 - 152);
  if (v10 - 152 != a1)
  {
    sub_3766B8(a1, (v10 - 152));
  }

  if (*(v10 - 129) < 0)
  {
    operator delete(*v14);
  }

  v15 = *v24;
  *(v10 - 136) = v25;
  *v14 = v15;
  HIBYTE(v25) = 0;
  LOBYTE(v24[0]) = 0;
  v16 = (v10 - 128);
  if (*(v10 - 105) < 0)
  {
    operator delete(*v16);
  }

  v17 = *v26;
  *(v10 - 112) = v27;
  *v16 = v17;
  HIBYTE(v27) = 0;
  LOBYTE(v26[0]) = 0;
  *(v10 - 104) = v28;
  v18 = (v10 - 96);
  if (*(v10 - 73) < 0)
  {
    operator delete(*v18);
  }

  v19 = *v29;
  *(v10 - 80) = v30;
  *v18 = v19;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v20 = (v10 - 72);
  if (*(v10 - 49) < 0)
  {
    operator delete(*v20);
  }

  v21 = *v31;
  *(v10 - 56) = v32;
  *v20 = v21;
  HIBYTE(v32) = 0;
  LOBYTE(v31[0]) = 0;
  v22 = *(v10 - 40);
  *(v10 - 48) = v33;
  if (v22)
  {
    *(v10 - 32) = v22;
    operator delete(v22);
    *(v10 - 40) = 0;
    *(v10 - 32) = 0;
    *(v10 - 24) = 0;
  }

  *(v10 - 40) = *__p;
  *(v10 - 24) = v35;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  *(v10 - 16) = v36;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_34:
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      operator delete(v26[0]);
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        return v10;
      }

LABEL_40:
      operator delete(v24[0]);
      return v10;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(v29[0]);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  if (SHIBYTE(v25) < 0)
  {
    goto LABEL_40;
  }

  return v10;
}

unint64_t sub_375958(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  *v28 = *a1;
  v29 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *v30 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v31 = v6;
  v32 = v7;
  v34 = *(a1 + 72);
  *v33 = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 80);
  v36 = *(a1 + 96);
  *v35 = v8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v37 = *(a1 + 104);
  v39 = *(a1 + 128);
  *__p = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v40 = *(a1 + 136);
  do
  {
    v47 = a1 + v4 + 176;
    v48 = a1 + v4 + 152;
    v49 = a1 + v4 + 208;
    v50 = a1 + v4 + 200;
    v51 = a1 + v4 + 232;
    v52 = a1 + v4 + 256;
    v41 = v30;
    v42 = v28;
    v43 = v33;
    v44 = &v32;
    v45 = v35;
    v46 = &v37;
    v4 += 152;
  }

  while (sub_3762FC(&v47, &v41) < 0);
  v9 = a1 + v4;
  v27 = a1 + v4;
  if (v4 == 152)
  {
    while (v9 < a2)
    {
      v11 = a2 - 152;
      v47 = a2 - 128;
      v48 = a2 - 152;
      v49 = a2 - 96;
      v50 = a2 - 104;
      v51 = a2 - 72;
      v52 = a2 - 48;
      v41 = v30;
      v42 = v28;
      v43 = v33;
      v44 = &v32;
      v45 = v35;
      v46 = &v37;
      v12 = sub_3762FC(&v47, &v41);
      a2 -= 152;
      v9 = a1 + v4;
      if (v12 < 0)
      {
        if (v27 >= v11)
        {
          break;
        }

        goto LABEL_11;
      }
    }

LABEL_19:
    v13 = v9;
    v17 = v9 - 152;
    if (v9 - 152 == a1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 = a2 - 72;
  do
  {
    v47 = v10 - 56;
    v48 = v10 - 80;
    v49 = v10 - 24;
    v50 = v10 - 32;
    v51 = v10;
    v52 = v10 + 24;
    v41 = v30;
    v42 = v28;
    v43 = v33;
    v44 = &v32;
    v45 = v35;
    v46 = &v37;
    v10 -= 152;
  }

  while ((sub_3762FC(&v47, &v41) & 0x80000000) == 0);
  v11 = v10 + 72;
  v9 = a1 + v4;
  if (v27 >= v10 + 72)
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = v9;
  v14 = v11;
  do
  {
    sub_3764F0(v13, v14);
    v15 = v13 + 256;
    do
    {
      v47 = v15 - 80;
      v48 = v15 - 104;
      v49 = v15 - 48;
      v50 = v15 - 56;
      v51 = v15 - 24;
      v52 = v15;
      v41 = v30;
      v42 = v28;
      v43 = v33;
      v44 = &v32;
      v45 = v35;
      v46 = &v37;
      v15 += 152;
    }

    while (sub_3762FC(&v47, &v41) < 0);
    v13 = v15 - 256;
    v16 = v14 - 72;
    do
    {
      v47 = v16 - 56;
      v48 = v16 - 80;
      v49 = v16 - 24;
      v50 = v16 - 32;
      v51 = v16;
      v52 = v16 + 24;
      v41 = v30;
      v42 = v28;
      v43 = v33;
      v44 = &v32;
      v45 = v35;
      v46 = &v37;
      v16 -= 152;
    }

    while ((sub_3762FC(&v47, &v41) & 0x80000000) == 0);
    v14 = v16 + 72;
  }

  while (v13 < v14);
  v17 = v13 - 152;
  if (v13 - 152 != a1)
  {
LABEL_20:
    sub_3766B8(a1, v17);
  }

LABEL_21:
  if (*(v13 - 129) < 0)
  {
    operator delete(*v17);
  }

  v18 = *v28;
  *(v17 + 16) = v29;
  *v17 = v18;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  v19 = (v13 - 128);
  if (*(v13 - 105) < 0)
  {
    operator delete(*v19);
  }

  v20 = *v30;
  *(v13 - 112) = v31;
  *v19 = v20;
  HIBYTE(v31) = 0;
  LOBYTE(v30[0]) = 0;
  *(v13 - 104) = v32;
  v21 = (v13 - 96);
  if (*(v13 - 73) < 0)
  {
    operator delete(*v21);
  }

  v22 = *v33;
  *(v13 - 80) = v34;
  *v21 = v22;
  HIBYTE(v34) = 0;
  LOBYTE(v33[0]) = 0;
  v23 = (v13 - 72);
  if (*(v13 - 49) < 0)
  {
    operator delete(*v23);
  }

  v24 = *v35;
  *(v13 - 56) = v36;
  *v23 = v24;
  HIBYTE(v36) = 0;
  LOBYTE(v35[0]) = 0;
  v25 = *(v13 - 40);
  *(v13 - 48) = v37;
  if (v25)
  {
    *(v13 - 32) = v25;
    operator delete(v25);
    *(v13 - 40) = 0;
    *(v13 - 32) = 0;
    *(v13 - 24) = 0;
  }

  *(v13 - 40) = *__p;
  *(v13 - 24) = v39;
  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  *(v13 - 16) = v40;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_35:
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      operator delete(v30[0]);
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        return v17;
      }

LABEL_41:
      operator delete(v28[0]);
      return v17;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v33[0]);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_41;
  }

  return v17;
}

void sub_375DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_375DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_375DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_375E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_375E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_375E28(uint64_t a1, _OWORD *a2)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_3746CC(a1, a1 + 152, a2 - 152);
        return 1;
      case 4:
        sub_3748A4(a1, a1 + 152, a1 + 304, a2 - 152);
        return 1;
      case 5:
        sub_3749EC(a1, a1 + 152, a1 + 304, a1 + 456, a2 - 152);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = a2 - 152;
      v23[0] = a2 - 8;
      v23[1] = a2 - 152;
      v24 = (a2 - 6);
      *&__p = a2 - 104;
      *(&__p + 1) = a2 - 72;
      v26 = (a2 - 3);
      p_p = (a1 + 24);
      v38 = a1;
      v39 = (a1 + 56);
      v40 = (a1 + 48);
      v41 = (a1 + 80);
      v42 = (a1 + 104);
      if ((sub_3762FC(v23, &p_p) & 0x80) != 0)
      {
        sub_3764F0(a1, v4);
        return 1;
      }

      return 1;
    }
  }

  v6 = (a1 + 304);
  sub_3746CC(a1, a1 + 152, a1 + 304);
  v7 = (a1 + 456);
  if ((a1 + 456) != a2)
  {
    v8 = 0;
    v21 = 0;
    do
    {
      v9 = (v7 + 24);
      v10 = (v7 + 56);
      v23[0] = v7 + 24;
      v23[1] = v7;
      v11 = v7 + 5;
      v24 = v7 + 56;
      *&__p = v7 + 3;
      *(&__p + 1) = v7 + 5;
      v26 = v7 + 104;
      p_p = (v6 + 24);
      v38 = v6;
      v39 = (v6 + 56);
      v40 = (v6 + 3);
      v41 = v6 + 5;
      v42 = v6 + 104;
      if ((sub_3762FC(v23, &p_p) & 0x80) == 0)
      {
        goto LABEL_15;
      }

      *v23 = *v7;
      v26 = *(v7 + 5);
      v12 = *(v7 + 2);
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      __p = *v9;
      *v9 = 0;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      v13 = *(v7 + 6);
      v24 = v12;
      v27 = v13;
      v28 = *v10;
      v29 = *(v7 + 9);
      *v10 = 0;
      *(v7 + 8) = 0;
      *(v7 + 9) = 0;
      v14 = *v11;
      v31 = *(v7 + 12);
      v30 = v14;
      *v11 = 0;
      *(v7 + 11) = 0;
      *(v7 + 12) = 0;
      v32 = *(v7 + 104);
      v33 = v7[7];
      v34 = *(v7 + 16);
      *(v7 + 14) = 0;
      *(v7 + 15) = 0;
      *(v7 + 16) = 0;
      v15 = v8;
      v35 = *(v7 + 136);
      while (1)
      {
        v16 = a1 + v15;
        sub_3766B8(a1 + v15 + 456, (a1 + v15 + 304));
        if (v15 == -304)
        {
          break;
        }

        p_p = &__p;
        v38 = v23;
        v39 = &v28;
        v40 = &v27;
        v41 = &v30;
        v42 = &v32;
        v36[0] = v16 + 176;
        v36[1] = v16 + 152;
        v36[2] = v16 + 208;
        v36[3] = v16 + 200;
        v36[4] = v16 + 232;
        v36[5] = v16 + 256;
        v15 -= 152;
        if ((sub_3762FC(&p_p, v36) & 0x80000000) == 0)
        {
          v17 = a1 + v15 + 456;
          if ((*(v17 + 23) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      v17 = a1;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(*v17);
LABEL_24:
      *v17 = *v23;
      *(v17 + 16) = v24;
      HIBYTE(v24) = 0;
      LOBYTE(v23[0]) = 0;
      if (*(v17 + 47) < 0)
      {
        operator delete(*(v17 + 24));
      }

      *(v17 + 24) = __p;
      v18 = v26;
      HIBYTE(v26) = 0;
      LOBYTE(__p) = 0;
      v19 = v27;
      *(v17 + 40) = v18;
      *(v17 + 48) = v19;
      if (*(v17 + 79) < 0)
      {
        operator delete(*(v17 + 56));
      }

      *(v17 + 56) = v28;
      *(v17 + 72) = v29;
      HIBYTE(v29) = 0;
      LOBYTE(v28) = 0;
      if (*(v17 + 103) < 0)
      {
        operator delete(*(v17 + 80));
      }

      *(v17 + 80) = v30;
      *(v17 + 96) = v31;
      HIBYTE(v31) = 0;
      LOBYTE(v30) = 0;
      v20 = *(v17 + 112);
      *(v17 + 104) = v32;
      if (v20)
      {
        *(v17 + 120) = v20;
        operator delete(v20);
        *(v17 + 112) = 0;
        *(v17 + 120) = 0;
        *(v17 + 128) = 0;
      }

      *(v17 + 112) = v33;
      *(v17 + 128) = v34;
      v34 = 0;
      v33 = 0uLL;
      *(v17 + 136) = v35;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30);
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
LABEL_34:
          if (SHIBYTE(v26) < 0)
          {
            goto LABEL_13;
          }

          goto LABEL_38;
        }
      }

      else if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(v28);
      if (SHIBYTE(v26) < 0)
      {
LABEL_13:
        operator delete(__p);
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_39;
      }

LABEL_38:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
LABEL_14:
        if (++v21 == 8)
        {
          return (v7 + 152) == a2;
        }

        goto LABEL_15;
      }

LABEL_39:
      operator delete(v23[0]);
      if (++v21 == 8)
      {
        return (v7 + 152) == a2;
      }

LABEL_15:
      v6 = v7;
      v8 += 152;
      v7 = (v7 + 152);
    }

    while (v7 != a2);
  }

  return 1;
}

void sub_3762E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3762FC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(*a1 + 23);
  v6 = *(*a1 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v4 + 23);
  if (v9 >= 0)
  {
    v10 = *a2;
  }

  else
  {
    v10 = *v4;
  }

  if (v9 >= 0)
  {
    v11 = *(v4 + 23);
  }

  else
  {
    v11 = v4[1];
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
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return 1;
    }

    return 255;
  }

  v15 = v8 >= v11;
  if (v8 != v11)
  {
    goto LABEL_84;
  }

  v16 = *(a1 + 8);
  v17 = *(a2 + 8);
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = *(a1 + 8);
  }

  else
  {
    v19 = *v16;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  v21 = *(v17 + 23);
  if (v21 >= 0)
  {
    v22 = *(a2 + 8);
  }

  else
  {
    v22 = *v17;
  }

  if (v21 >= 0)
  {
    v23 = *(v17 + 23);
  }

  else
  {
    v23 = *(v17 + 8);
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
LABEL_37:
    if (v25 < 0)
    {
      return 255;
    }

    return 1;
  }

  v15 = v20 >= v23;
  if (v20 != v23)
  {
    goto LABEL_84;
  }

  v26 = *(a1 + 16);
  v27 = *(a2 + 16);
  v28 = *(v26 + 23);
  if (v28 >= 0)
  {
    v29 = *(a1 + 16);
  }

  else
  {
    v29 = *v26;
  }

  if (v28 >= 0)
  {
    v30 = *(v26 + 23);
  }

  else
  {
    v30 = *(v26 + 8);
  }

  v31 = *(v27 + 23);
  if (v31 >= 0)
  {
    v32 = *(a2 + 16);
  }

  else
  {
    v32 = *v27;
  }

  if (v31 >= 0)
  {
    v33 = *(v27 + 23);
  }

  else
  {
    v33 = *(v27 + 8);
  }

  if (v33 >= v30)
  {
    v34 = v30;
  }

  else
  {
    v34 = v33;
  }

  v25 = memcmp(v29, v32, v34);
  if (v25)
  {
    goto LABEL_37;
  }

  v15 = v30 >= v33;
  if (v30 != v33)
  {
    goto LABEL_84;
  }

  v35 = **(a1 + 24);
  v36 = **(a2 + 24);
  if (v35 < v36)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v35 == v36)
  {
    v37 = *(a1 + 32);
    v38 = *(a2 + 32);
    v39 = *(v37 + 23);
    if (v39 >= 0)
    {
      v40 = *(a1 + 32);
    }

    else
    {
      v40 = *v37;
    }

    if (v39 >= 0)
    {
      v41 = *(v37 + 23);
    }

    else
    {
      v41 = *(v37 + 8);
    }

    v42 = *(v38 + 23);
    if (v42 >= 0)
    {
      v43 = *(a2 + 32);
    }

    else
    {
      v43 = *v38;
    }

    if (v42 >= 0)
    {
      v44 = *(v38 + 23);
    }

    else
    {
      v44 = *(v38 + 8);
    }

    if (v44 >= v41)
    {
      v45 = v41;
    }

    else
    {
      v45 = v44;
    }

    v25 = memcmp(v40, v43, v45);
    if (v25)
    {
      goto LABEL_37;
    }

    v15 = v41 >= v44;
    if (v41 == v44)
    {
      v46 = **(a1 + 40);
      v47 = **(a2 + 40);
      v48 = v46 == v47;
      if (v46 < v47)
      {
        v49 = -1;
      }

      else
      {
        v49 = 1;
      }

      if (v48)
      {
        return 0;
      }

      else
      {
        return v49;
      }
    }

LABEL_84:
    if (!v15)
    {
      return 255;
    }

    return 1;
  }

  return result;
}

__n128 sub_3764F0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *v22 = *(a1 + 8);
  *&v22[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = *(a1 + 24);
  *v21 = *(a1 + 32);
  *&v21[7] = *(a1 + 39);
  v6 = *(a1 + 47);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v20[7] = *(a1 + 71);
  *v20 = *(a1 + 64);
  v9 = *(a1 + 79);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v15 = *(a1 + 80);
  *&v19[7] = *(a1 + 95);
  *v19 = *(a1 + 88);
  v10 = *(a1 + 103);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v16 = *(a1 + 128);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v17 = v12;
  v18 = *(a1 + 136);
  sub_3766B8(a1, a2);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 8) = *v22;
  *(a2 + 15) = *&v22[7];
  *(a2 + 23) = v4;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = v5;
  *(a2 + 32) = *v21;
  *(a2 + 39) = *&v21[7];
  *(a2 + 47) = v6;
  *(a2 + 48) = v8;
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  *(a2 + 56) = v7;
  *(a2 + 64) = *v20;
  *(a2 + 71) = *&v20[7];
  *(a2 + 79) = v9;
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  *(a2 + 80) = v15;
  *(a2 + 88) = *v19;
  *(a2 + 95) = *&v19[7];
  *(a2 + 103) = v10;
  *(a2 + 104) = v11;
  v13 = *(a2 + 112);
  if (v13)
  {
    *(a2 + 120) = v13;
    operator delete(v13);
  }

  result = v18;
  *(a2 + 112) = v17;
  *(a2 + 128) = v16;
  *(a2 + 136) = v18;
  return result;
}

uint64_t sub_3766B8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 6);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v6;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v7 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 80) = v7;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v8 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  if (v8)
  {
    *(a1 + 120) = v8;
    operator delete(v8);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  *(a1 + 112) = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_3767D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v25 = v4 >> 1;
  if ((v4 >> 1) < (0x86BCA1AF286BCA1BLL * ((a4 - a1) >> 3)))
  {
    return;
  }

  v8 = (0xD79435E50D79436 * ((a4 - a1) >> 3)) | 1;
  v9 = a1 + 152 * v8;
  v10 = 0xD79435E50D79436 * ((a4 - a1) >> 3) + 2;
  if (v10 < a3)
  {
    v26[0] = (v9 + 24);
    v26[1] = (a1 + 152 * v8);
    v27 = v9 + 56;
    v28[0] = (v9 + 48);
    v28[1] = (v9 + 80);
    v29 = v9 + 104;
    v45 = v9 + 176;
    v46 = v9 + 152;
    v47 = v9 + 208;
    v48 = v9 + 200;
    v49 = v9 + 232;
    v50 = v9 + 256;
    if ((sub_3762FC(v26, &v45) & 0x80u) != 0)
    {
      v9 += 152;
      v8 = v10;
    }
  }

  v26[0] = (v9 + 24);
  v26[1] = v9;
  v27 = v9 + 56;
  v28[0] = (v9 + 48);
  v28[1] = (v9 + 80);
  v29 = v9 + 104;
  v11 = (v5 + 24);
  v12 = (v5 + 56);
  v13 = (v5 + 80);
  v45 = v5 + 24;
  v46 = v5;
  v47 = v5 + 56;
  v48 = v5 + 48;
  v49 = v5 + 80;
  v50 = v5 + 104;
  if ((sub_3762FC(v26, &v45) & 0x80) != 0)
  {
    return;
  }

  *v26 = *v5;
  v27 = *(v5 + 16);
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *v28 = *v11;
  v14 = *(v5 + 40);
  *v11 = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v15 = *(v5 + 48);
  v29 = v14;
  v30 = v15;
  *v31 = *v12;
  v32 = *(v5 + 72);
  *v12 = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v16 = *v13;
  v34 = *(v5 + 96);
  *__p = v16;
  *v13 = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  v35 = *(v5 + 104);
  v36 = *(v5 + 112);
  v37 = *(v5 + 128);
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  v38 = *(v5 + 136);
  do
  {
    v17 = v9;
    sub_3766B8(v5, v9);
    if (v25 < v8)
    {
      break;
    }

    v18 = (2 * v8) | 1;
    v9 = a1 + 152 * v18;
    v8 = 2 * v8 + 2;
    if (v8 >= a3)
    {
      v8 = v18;
    }

    else
    {
      v45 = v9 + 24;
      v46 = a1 + 152 * v18;
      v47 = v9 + 56;
      v48 = v9 + 48;
      v49 = v9 + 80;
      v50 = v9 + 104;
      v39 = (v9 + 176);
      v40 = (v9 + 152);
      v41 = (v9 + 208);
      v42 = (v9 + 200);
      v43 = (v9 + 232);
      v44 = (v9 + 256);
      if ((sub_3762FC(&v45, &v39) & 0x80u) == 0)
      {
        v8 = v18;
      }

      else
      {
        v9 += 152;
      }
    }

    v45 = v9 + 24;
    v46 = v9;
    v47 = v9 + 56;
    v48 = v9 + 48;
    v49 = v9 + 80;
    v50 = v9 + 104;
    v39 = v28;
    v40 = v26;
    v41 = v31;
    v42 = &v30;
    v43 = __p;
    v44 = &v35;
    v5 = v17;
  }

  while ((sub_3762FC(&v45, &v39) & 0x80000000) == 0);
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  v19 = *v26;
  *(v17 + 16) = v27;
  *v17 = v19;
  HIBYTE(v27) = 0;
  LOBYTE(v26[0]) = 0;
  if (*(v17 + 47) < 0)
  {
    operator delete(*(v17 + 24));
  }

  v20 = *v28;
  *(v17 + 40) = v29;
  *(v17 + 24) = v20;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  *(v17 + 48) = v30;
  if (*(v17 + 79) < 0)
  {
    operator delete(*(v17 + 56));
  }

  v21 = *v31;
  *(v17 + 72) = v32;
  *(v17 + 56) = v21;
  HIBYTE(v32) = 0;
  LOBYTE(v31[0]) = 0;
  if (*(v17 + 103) < 0)
  {
    operator delete(*(v17 + 80));
  }

  v22 = *__p;
  *(v17 + 96) = v34;
  *(v17 + 80) = v22;
  HIBYTE(v34) = 0;
  LOBYTE(__p[0]) = 0;
  v23 = *(v17 + 112);
  *(v17 + 104) = v35;
  if (v23)
  {
    *(v17 + 120) = v23;
    operator delete(v23);
    *(v17 + 120) = 0;
    *(v17 + 128) = 0;
    *(v17 + 112) = 0;
    v24 = SHIBYTE(v34);
    *(v17 + 112) = v36;
    *(v17 + 128) = v37;
    v36 = 0uLL;
    v37 = 0;
    *(v17 + 136) = v38;
    if ((v24 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_32:
      operator delete(v31[0]);
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
LABEL_27:
        if ((SHIBYTE(v27) & 0x80000000) == 0)
        {
          return;
        }

LABEL_34:
        operator delete(v26[0]);
        return;
      }

      goto LABEL_33;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v32) < 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *(v17 + 112) = v36;
    *(v17 + 128) = v37;
    v36 = 0uLL;
    v37 = 0;
    *(v17 + 136) = v38;
    if (SHIBYTE(v32) < 0)
    {
      goto LABEL_32;
    }
  }

LABEL_26:
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_33:
  operator delete(v28[0]);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_34;
  }
}

void sub_376C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_376C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = 0;
    *v26 = *a1;
    v27 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v8 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *v28 = v8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v29 = v9;
    v30 = v10;
    v32 = *(a1 + 72);
    *v31 = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v34 = *(a1 + 96);
    *v33 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    v35 = *(a1 + 104);
    *__p = *(a1 + 112);
    v37 = *(a1 + 128);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    v11 = (a4 - 2) >> 1;
    v12 = a1;
    v38 = *(a1 + 136);
    do
    {
      v13 = v12 + 152 * v7;
      v14 = v13 + 152;
      v15 = (2 * v7) | 1;
      v16 = 2 * v7 + 2;
      if (v16 < a4)
      {
        v17 = v13 + 304;
        v40[0] = v13 + 176;
        v40[1] = v13 + 152;
        v40[2] = v13 + 208;
        v40[3] = v13 + 200;
        v40[4] = v13 + 232;
        v40[5] = v13 + 256;
        v39[0] = v13 + 328;
        v39[1] = v13 + 304;
        v39[2] = v13 + 360;
        v39[3] = v13 + 352;
        v39[4] = v13 + 384;
        v39[5] = v13 + 408;
        if ((sub_3762FC(v40, v39) & 0x80u) != 0)
        {
          v14 = v17;
          v15 = v16;
        }
      }

      sub_3766B8(v12, v14);
      v12 = v14;
      v7 = v15;
    }

    while (v15 <= v11);
    v18 = (a2 - 152);
    if (v14 == a2 - 152)
    {
      if (*(v14 + 23) < 0)
      {
        operator delete(*v14);
      }

      *(v14 + 16) = v27;
      *v14 = *v26;
      if (*(v14 + 47) < 0)
      {
        operator delete(*(v14 + 24));
      }

      *(v14 + 40) = v29;
      *(v14 + 24) = *v28;
      *(v14 + 48) = v30;
      if (*(v14 + 79) < 0)
      {
        operator delete(*(v14 + 56));
      }

      *(v14 + 72) = v32;
      *(v14 + 56) = *v31;
      if (*(v14 + 103) < 0)
      {
        operator delete(*(v14 + 80));
      }

      *(v14 + 96) = v34;
      *(v14 + 80) = *v33;
      v24 = *(v14 + 112);
      *(v14 + 104) = v35;
      if (v24)
      {
        *(v14 + 120) = v24;
        operator delete(v24);
        *(v14 + 112) = 0;
        *(v14 + 120) = 0;
        *(v14 + 128) = 0;
      }

      *(v14 + 112) = *__p;
      *(v14 + 128) = v37;
      *(v14 + 136) = v38;
    }

    else
    {
      sub_3766B8(v14, (a2 - 152));
      if (*(a2 - 129) < 0)
      {
        operator delete(*v18);
      }

      *v18 = *v26;
      *(a2 - 136) = v27;
      v19 = (a2 - 128);
      if (*(a2 - 105) < 0)
      {
        operator delete(*v19);
      }

      *v19 = *v28;
      *(a2 - 112) = v29;
      *(a2 - 104) = v30;
      v20 = (a2 - 96);
      if (*(a2 - 73) < 0)
      {
        operator delete(*v20);
      }

      v21 = v14 + 152;
      *v20 = *v31;
      *(a2 - 80) = v32;
      v22 = (a2 - 72);
      if (*(a2 - 49) < 0)
      {
        operator delete(*v22);
      }

      *v22 = *v33;
      *(a2 - 56) = v34;
      v23 = *(a2 - 40);
      *(a2 - 48) = v35;
      if (v23)
      {
        *(a2 - 32) = v23;
        operator delete(v23);
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *(a2 - 24) = 0;
      }

      *(a2 - 40) = *__p;
      *(a2 - 24) = v37;
      *(a2 - 16) = v38;
      sub_3770A8(a1, v21, a3, 0x86BCA1AF286BCA1BLL * ((v21 - a1) >> 3));
    }
  }
}

void sub_377080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_377094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_3770A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v7 = v4 >> 1;
  v8 = a1 + 152 * (v4 >> 1);
  v23[0] = (v8 + 24);
  v23[1] = v8;
  v24 = v8 + 56;
  v25[0] = (v8 + 48);
  v25[1] = (v8 + 80);
  v26 = v8 + 104;
  v9 = a2 - 128;
  v10 = a2 - 96;
  v11 = (a2 - 72);
  v37 = a2 - 128;
  v38 = a2 - 152;
  v12 = a2 - 152;
  v39 = a2 - 96;
  v40 = a2 - 104;
  v41 = a2 - 72;
  v42 = a2 - 48;
  if ((sub_3762FC(v23, &v37) & 0x80) == 0)
  {
    return;
  }

  v13 = v12;
  *v23 = *v12;
  v24 = *(v12 + 16);
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = 0;
  *v25 = *v9;
  v14 = *(v9 + 16);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v15 = *(a2 - 104);
  v26 = v14;
  v27 = v15;
  *v28 = *v10;
  v29 = *(v10 + 16);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v16 = *v11;
  v31 = *(v11 + 2);
  *__p = v16;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v32 = *(a2 - 48);
  v33 = *(a2 - 40);
  v34 = *(a2 - 24);
  *(a2 - 40) = 0;
  *(a2 - 32) = 0;
  *(a2 - 24) = 0;
  v35 = *(a2 - 16);
  do
  {
    v17 = v8;
    sub_3766B8(v13, v8);
    if (!v7)
    {
      break;
    }

    v7 = (v7 - 1) >> 1;
    v8 = a1 + 152 * v7;
    v37 = v8 + 24;
    v38 = v8;
    v39 = v8 + 56;
    v40 = v8 + 48;
    v41 = v8 + 80;
    v42 = v8 + 104;
    v36[0] = v25;
    v36[1] = v23;
    v36[2] = v28;
    v36[3] = &v27;
    v36[4] = __p;
    v36[5] = &v32;
    v18 = sub_3762FC(&v37, v36);
    v13 = v17;
  }

  while (v18 < 0);
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  *v17 = *v23;
  *(v17 + 16) = v24;
  HIBYTE(v24) = 0;
  LOBYTE(v23[0]) = 0;
  if (*(v17 + 47) < 0)
  {
    operator delete(*(v17 + 24));
  }

  *(v17 + 24) = *v25;
  v19 = v26;
  HIBYTE(v26) = 0;
  LOBYTE(v25[0]) = 0;
  v20 = v27;
  *(v17 + 40) = v19;
  *(v17 + 48) = v20;
  if (*(v17 + 79) < 0)
  {
    operator delete(*(v17 + 56));
  }

  *(v17 + 56) = *v28;
  *(v17 + 72) = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  if (*(v17 + 103) < 0)
  {
    operator delete(*(v17 + 80));
  }

  *(v17 + 80) = *__p;
  *(v17 + 96) = v31;
  HIBYTE(v31) = 0;
  LOBYTE(__p[0]) = 0;
  v21 = *(v17 + 112);
  *(v17 + 104) = v32;
  if (v21)
  {
    *(v17 + 120) = v21;
    operator delete(v21);
    *(v17 + 112) = 0;
    *(v17 + 120) = 0;
    *(v17 + 128) = 0;
    v22 = SHIBYTE(v31);
    *(v17 + 112) = v33;
    *(v17 + 128) = v34;
    v34 = 0;
    v33 = 0uLL;
    *(v17 + 136) = v35;
    if ((v22 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      operator delete(v28[0]);
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          return;
        }

LABEL_25:
        operator delete(v23[0]);
        return;
      }

      goto LABEL_24;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v29) < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *(v17 + 112) = v33;
    *(v17 + 128) = v34;
    v34 = 0;
    v33 = 0uLL;
    *(v17 + 136) = v35;
    if (SHIBYTE(v29) < 0)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_24:
  operator delete(v25[0]);
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_25;
  }
}

uint64_t sub_3773F8(uint64_t a1, __int128 *a2)
{
  result = a2;
  if (a1 != a2)
  {
    result = a2;
    if ((a1 + 152) != a2)
    {
      while (1)
      {
        v13 = a1 + 24;
        v14 = a1;
        v15 = a1 + 56;
        v16 = a1 + 48;
        v17 = a1 + 80;
        v18 = (a1 + 104);
        v7 = a1 + 176;
        v8 = (a1 + 152);
        v9 = (a1 + 208);
        v10 = (a1 + 200);
        v11 = (a1 + 232);
        v12 = (a1 + 256);
        if (sub_37759C(&v19, &v13, &v7) && *v12 == *v18)
        {
          break;
        }

        v5 = a1 + 304;
        a1 += 152;
        if (v5 == a2)
        {
          return a2;
        }
      }

      result = a2;
      if (a1 != a2)
      {
        for (i = (a1 + 304); i != a2; i = (i + 152))
        {
          v13 = a1 + 24;
          v14 = a1;
          v15 = a1 + 56;
          v16 = a1 + 48;
          v17 = a1 + 80;
          v18 = (a1 + 104);
          v7 = i + 24;
          v8 = i;
          v9 = i + 56;
          v10 = i + 3;
          v11 = i + 5;
          v12 = i + 104;
          if (!sub_37759C(&v19, &v13, &v7) || *v12 != *v18)
          {
            a1 += 152;
            sub_3766B8(a1, i);
          }
        }

        return a1 + 152;
      }
    }
  }

  return result;
}

BOOL sub_37759C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(*a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(*a2 + 23);
  }

  else
  {
    v6 = *(*a2 + 8);
  }

  v7 = *(v4 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v4 + 8);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v10 = v5 >= 0 ? *a2 : **a2;
  v11 = v8 >= 0 ? v4 : *v4;
  if (memcmp(v10, v11, v6))
  {
    return 0;
  }

  v12 = *(a2 + 8);
  v13 = a3[1];
  v14 = *(v12 + 23);
  if (v14 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = *(v13 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v13 + 8);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? *(a2 + 8) : *v12;
  v19 = v17 >= 0 ? a3[1] : *v13;
  if (memcmp(v18, v19, v15))
  {
    return 0;
  }

  v20 = *(a2 + 16);
  v21 = a3[2];
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = *(v20 + 23);
  }

  else
  {
    v23 = *(v20 + 8);
  }

  v24 = *(v21 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(v21 + 8);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = v22 >= 0 ? *(a2 + 16) : *v20;
  v27 = v25 >= 0 ? a3[2] : *v21;
  if (memcmp(v26, v27, v23) || **(a2 + 24) != *a3[3])
  {
    return 0;
  }

  v28 = *(a2 + 32);
  v29 = a3[4];
  v30 = *(v28 + 23);
  if (v30 >= 0)
  {
    v31 = *(v28 + 23);
  }

  else
  {
    v31 = *(v28 + 8);
  }

  v32 = *(v29 + 23);
  v33 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(v29 + 8);
  }

  if (v31 != v32)
  {
    return 0;
  }

  if (v30 >= 0)
  {
    v34 = *(a2 + 32);
  }

  else
  {
    v34 = *v28;
  }

  if (v33 >= 0)
  {
    v35 = a3[4];
  }

  else
  {
    v35 = *v29;
  }

  return memcmp(v34, v35, v31) == 0;
}

uint64_t sub_37774C(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_1794();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = sub_320C0(16 * v3, a2, a3);
  v9 = v8 + 16;
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v8 - v11;
  memcpy((v8 - v11), *a1, v11);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_377840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_377858(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = 4 * ((v3 - *v2) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v13 = 12 * v7 + 12;
    v14 = 12 * v7 - (v3 - v6);
    memcpy((v12 - (v3 - v6)), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    *(v2 + 8) = v3 + 12;
  }

  return result;
}

uint64_t *sub_3779B0(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v8 = *v2;
    v9 = v3 - *v2;
    v10 = v9 >> 6;
    v11 = (v9 >> 6) + 1;
    if (v11 >> 58)
    {
      sub_1794();
    }

    v12 = v4 - v8;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 58))
      {
        operator new();
      }

      sub_1808();
    }

    v14 = result;
    v15 = (v10 << 6);
    v16 = a2[1];
    *v15 = *a2;
    v15[1] = v16;
    v17 = a2[3];
    v15[2] = a2[2];
    v15[3] = v17;
    v18 = (v10 << 6) + 64;
    memcpy(0, v8, v9);
    *v2 = 0;
    *(v2 + 8) = v18;
    *(v2 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    result = v14;
    *(v2 + 8) = v18;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    *(v2 + 8) = v3 + 4;
  }

  return result;
}

void sub_377AEC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

__n128 sub_377C0C(uint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = &a2[-1];
  i = a1;
  while (1)
  {
    a1 = i;
    v10 = (a2 - i) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = sub_3788D0(i, (i + 16), &a2[-1]).n128_u64[0];
          return result;
        case 4:
          result.n128_u64[0] = sub_3788D0(i, (i + 16), i + 32).n128_u64[0];
          v67 = a2 - 1;
          v68 = a2[-1].n128_i64[0];
          v69 = *(i + 32);
          v63 = v68 == v69;
          v70 = v68 < v69;
          if (v63 && (v71 = a2[-1].n128_u32[2], v72 = *(i + 40), v70 = v71 < v72, v72 == v71))
          {
            if (a2[-1].n128_u32[3] >= *(i + 44))
            {
              return result;
            }
          }

          else if (!v70)
          {
            return result;
          }

          result = *(i + 32);
          *(i + 32) = *v67;
          *v67 = result;
          v139 = *(i + 32);
          v140 = *(i + 16);
          v63 = v139 == v140;
          v141 = v139 < v140;
          if (v63 && (v142 = *(i + 40), v143 = *(i + 24), v141 = v142 < v143, v143 == v142))
          {
            if (*(i + 44) >= *(i + 28))
            {
              return result;
            }
          }

          else if (!v141)
          {
            return result;
          }

          result = *(i + 16);
          *(i + 16) = *(i + 32);
          *(i + 32) = result;
          v154 = *(i + 16);
          v63 = v154 == *i;
          v155 = v154 < *i;
          if (v63 && (v156 = *(i + 24), v157 = *(i + 8), v155 = v156 < v157, v157 == v156))
          {
            if (*(i + 28) >= *(i + 12))
            {
              return result;
            }
          }

          else if (!v155)
          {
            return result;
          }

          v163 = *i;
          *i = *(i + 16);
          result = v163;
          *(i + 16) = v163;
          return result;
        case 5:

          result.n128_u64[0] = sub_378A84(i, i + 16, i + 32, i + 48, &a2[-1]).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v61 = a2 - 1;
        v62 = a2[-1].n128_i64[0];
        v63 = v62 == *i;
        v64 = v62 < *i;
        if (v63 && (v65 = a2[-1].n128_u32[2], v66 = *(i + 8), v64 = v65 < v66, v66 == v65))
        {
          if (a2[-1].n128_u32[3] >= *(i + 12))
          {
            return result;
          }
        }

        else if (!v64)
        {
          return result;
        }

        v162 = *i;
        *i = *v61;
        result = v162;
        *v61 = v162;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v90 = (v10 - 2) >> 1;
      v91 = v90;
      while (2)
      {
        v93 = v91;
        if (v90 < v91)
        {
          goto LABEL_155;
        }

        v94 = (2 * v91) | 1;
        v95 = i + 16 * v94;
        if (2 * v93 + 2 < v10)
        {
          v96 = *(v95 + 16);
          v63 = *v95 == v96;
          v97 = *v95 < v96;
          if (v63 && (v98 = *(v95 + 8), v99 = *(v95 + 24), v97 = v98 < v99, v99 == v98))
          {
            if (*(v95 + 12) >= *(v95 + 28))
            {
              goto LABEL_165;
            }

LABEL_164:
            v95 += 16;
            v94 = 2 * v93 + 2;
          }

          else if (v97)
          {
            goto LABEL_164;
          }
        }

LABEL_165:
        v100 = i + 16 * v93;
        v101 = *v100;
        v102 = *v95 < *v100;
        if (*v95 == *v100)
        {
          v103 = *(v95 + 8);
          v104 = *(v100 + 8);
          v102 = v103 < v104;
          if (v104 == v103)
          {
            v105 = *(v100 + 12);
            if (*(v95 + 12) >= v105)
            {
              *v100 = *v95;
              if (v90 >= v94)
              {
                goto LABEL_175;
              }

              goto LABEL_153;
            }

LABEL_155:
            v91 = v93 - 1;
            if (v93)
            {
              continue;
            }

            while (2)
            {
              v115 = 0;
              v161 = *i;
              v116 = i;
LABEL_192:
              v117 = v116;
              v118 = v116 + 16 * v115;
              v116 = v118 + 16;
              v119 = 2 * v115;
              v115 = (2 * v115) | 1;
              v120 = v119 + 2;
              if (v120 < v10)
              {
                v121 = *(v118 + 32);
                v122 = *(v118 + 16);
                v63 = v122 == v121;
                v123 = v122 < v121;
                if (v63 && (v124 = *(v118 + 24), v125 = *(v118 + 40), v123 = v124 < v125, v125 == v124))
                {
                  if (*(v118 + 28) >= *(v118 + 44))
                  {
                    goto LABEL_191;
                  }
                }

                else if (!v123)
                {
                  goto LABEL_191;
                }

                v116 = v118 + 32;
                v115 = v120;
              }

LABEL_191:
              *v117 = *v116;
              if (v115 > ((v10 - 2) >> 1))
              {
                if (v116 == --a2)
                {
                  result = v161;
                  *v116 = v161;
                }

                else
                {
                  *v116 = *a2;
                  result = v161;
                  *a2 = v161;
                  v126 = (v116 - i + 16) >> 4;
                  v127 = v126 - 2;
                  if (v126 >= 2)
                  {
                    v128 = v127 >> 1;
                    v129 = i + 16 * (v127 >> 1);
                    v130 = *v116;
                    v131 = *v129 < *v116;
                    if (*v129 == *v116 && (v132 = *(v129 + 8), v133 = *(v116 + 8), v131 = v132 < v133, v133 == v132))
                    {
                      v134 = *(v116 + 12);
                      if (*(v129 + 12) < v134)
                      {
                        result = *v129;
                        *v116 = *v129;
                        if (v127 >= 2)
                        {
                          while (1)
                          {
LABEL_213:
                            v136 = v128 - 1;
                            v128 = (v128 - 1) >> 1;
                            v135 = i + 16 * v128;
                            v137 = *v135 < v130;
                            if (*v135 == v130 && (v138 = *(v135 + 8), v137 = v138 < v132, v132 == v138))
                            {
                              if (*(v135 + 12) >= v134)
                              {
                                break;
                              }
                            }

                            else if (!v137)
                            {
                              break;
                            }

                            result = *v135;
                            *v129 = *v135;
                            v129 = i + 16 * v128;
                            if (v136 <= 1)
                            {
                              goto LABEL_210;
                            }
                          }
                        }

LABEL_209:
                        v135 = v129;
LABEL_210:
                        *v135 = v130;
                        *(v135 + 8) = v132;
                        *(v135 + 12) = v134;
                      }
                    }

                    else if (v131)
                    {
                      v132 = *(v116 + 8);
                      v134 = *(v116 + 12);
                      result = *v129;
                      *v116 = *v129;
                      if (v127 >= 2)
                      {
                        goto LABEL_213;
                      }

                      goto LABEL_209;
                    }
                  }
                }

                if (v10-- <= 2)
                {
                  return result;
                }

                continue;
              }

              goto LABEL_192;
            }
          }
        }

        break;
      }

      if (v102)
      {
        goto LABEL_155;
      }

      v103 = *(v100 + 8);
      v105 = *(v100 + 12);
      *v100 = *v95;
      if (v90 < v94)
      {
LABEL_153:
        v92 = v95;
LABEL_154:
        *v92 = v101;
        *(v92 + 8) = v103;
        *(v92 + 12) = v105;
        goto LABEL_155;
      }

LABEL_175:
      while (2)
      {
        v106 = 2 * v94;
        v94 = (2 * v94) | 1;
        v92 = i + 16 * v94;
        v107 = v106 + 2;
        if (v107 < v10)
        {
          v108 = *(v92 + 16);
          v63 = *v92 == v108;
          v109 = *v92 < v108;
          if (v63 && (v110 = *(v92 + 8), v111 = *(v92 + 24), v109 = v110 < v111, v111 == v110))
          {
            if (*(v92 + 12) >= *(v92 + 28))
            {
              goto LABEL_183;
            }
          }

          else if (!v109)
          {
            goto LABEL_183;
          }

          v92 += 16;
          v94 = v107;
        }

LABEL_183:
        v112 = *v92 < v101;
        if (*v92 == v101 && (v113 = *(v92 + 8), v112 = v113 < v103, v103 == v113))
        {
          if (*(v92 + 12) < v105)
          {
            goto LABEL_153;
          }
        }

        else if (v112)
        {
          goto LABEL_153;
        }

        *v95 = *v92;
        v95 = v92;
        if (v90 < v94)
        {
          goto LABEL_154;
        }

        continue;
      }
    }

    v11 = v10 >> 1;
    v12 = (i + 16 * (v10 >> 1));
    if (v10 < 0x81)
    {
      result = sub_3788D0(a1 + 16 * (v10 >> 1), a1, &a2[-1]);
      --a3;
      v16 = *a1;
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v17 = *(a1 - 16);
        v18 = v17 < v16;
        if (v17 == v16 && (v19 = *(a1 - 8), v20 = *(a1 + 8), v18 = v19 < v20, v20 == v19))
        {
          v21 = *(a1 + 12);
          if (*(a1 - 4) >= v21)
          {
            goto LABEL_65;
          }
        }

        else if (!v18)
        {
          v19 = *(a1 + 8);
          v21 = *(a1 + 12);
LABEL_65:
          v43 = *v8;
          v44 = v16 < *v8;
          if (v16 == *v8 && (v45 = a2[-1].n128_u32[2], v44 = v19 < v45, v45 == v19))
          {
            if (v21 < a2[-1].n128_u32[3])
            {
              goto LABEL_77;
            }
          }

          else if (v44)
          {
LABEL_77:
            for (i = a1 + 16; ; i += 16)
            {
              v48 = v16 < *i;
              if (v16 == *i && (v49 = *(i + 8), v48 = v19 < v49, v49 == v19))
              {
                if (v21 < *(i + 12))
                {
                  goto LABEL_83;
                }
              }

              else if (v48)
              {
                goto LABEL_83;
              }
            }
          }

          for (i = a1 + 16; i < a2; i += 16)
          {
            v46 = v16 < *i;
            if (v16 == *i && (v47 = *(i + 8), v46 = v19 < v47, v47 == v19))
            {
              if (v21 < *(i + 12))
              {
                break;
              }
            }

            else if (v46)
            {
              break;
            }
          }

LABEL_83:
          j = a2;
          if (i < a2)
          {
            for (j = a2 - 1; ; --j)
            {
              v63 = v16 == v43;
              v52 = v16 < v43;
              if (v63 && (v53 = j->n128_u32[2], v52 = v19 < v53, v53 == v19))
              {
                if (v21 >= j->n128_u32[3])
                {
                  break;
                }
              }

              else if (!v52)
              {
                break;
              }

              v51 = j[-1].n128_i64[0];
              v43 = v51;
            }
          }

LABEL_102:
          while (i < j)
          {
            v160 = *i;
            *i = *j;
            result = v160;
            *j = v160;
            do
            {
              while (1)
              {
                v54 = *(i + 16);
                i += 16;
                v55 = v16 < v54;
                if (v16 != v54)
                {
                  break;
                }

                v56 = *(i + 8);
                v55 = v19 < v56;
                if (v56 != v19)
                {
                  break;
                }

                if (v21 < *(i + 12))
                {
                  goto LABEL_99;
                }
              }
            }

            while (!v55);
            do
            {
LABEL_99:
              while (1)
              {
                v57 = j[-1].n128_i64[0];
                --j;
                v58 = v16 < v57;
                if (v16 == v57)
                {
                  v59 = j->n128_u32[2];
                  v58 = v19 < v59;
                  if (v59 == v19)
                  {
                    break;
                  }
                }

                if (!v58)
                {
                  goto LABEL_102;
                }
              }
            }

            while (v21 < j->n128_u32[3]);
          }

          v60 = (i - 16);
          if (i - 16 != a1)
          {
            result = *v60;
            *a1 = *v60;
          }

          a4 = 0;
          *(i - 16) = v16;
          *(i - 8) = v19;
          *(i - 4) = v21;
          continue;
        }
      }
    }

    else
    {
      sub_3788D0(a1, (a1 + 16 * (v10 >> 1)), &a2[-1]);
      v13 = 16 * v11;
      v14 = (16 * v11 + a1 - 16);
      sub_3788D0(a1 + 16, v14, &a2[-2]);
      sub_3788D0(a1 + 32, (a1 + 16 + v13), &a2[-3]);
      sub_3788D0(v14, v12, a1 + 16 + v13);
      v158 = *a1;
      *a1 = *v12;
      result = v158;
      *v12 = v158;
      --a3;
      v16 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = 0;
    v23 = *(a1 + 8);
    v24 = *(a1 + 12);
    while (1)
    {
      v25 = a1 + v22;
      v26 = *(a1 + v22 + 16);
      v63 = v26 == v16;
      v27 = v26 < v16;
      if (v63)
      {
        v28 = *(v25 + 24);
        v27 = v28 < v23;
        if (v23 == v28)
        {
          break;
        }
      }

      if (!v27)
      {
        goto LABEL_27;
      }

LABEL_22:
      v22 += 16;
    }

    if (*(v25 + 28) < v24)
    {
      goto LABEL_22;
    }

LABEL_27:
    v29 = a1 + v22 + 16;
    k = a2 - 1;
    if (v22)
    {
      while (1)
      {
        v31 = k->n128_u64[0] < v16;
        if (k->n128_u64[0] == v16 && (v32 = k->n128_u32[2], v31 = v32 < v23, v23 == v32))
        {
          if (k->n128_u32[3] < v24)
          {
            goto LABEL_44;
          }
        }

        else if (v31)
        {
          goto LABEL_44;
        }

        --k;
      }
    }

    k = a2;
    if (v29 < a2)
    {
      for (k = a2 - 1; ; --k)
      {
        v33 = k->n128_u64[0] < v16;
        if (k->n128_u64[0] == v16 && (v34 = k->n128_u32[2], v33 = v34 < v23, v23 == v34))
        {
          if (v29 >= k || k->n128_u32[3] < v24)
          {
            break;
          }
        }

        else if (v29 >= k || v33)
        {
          break;
        }
      }
    }

LABEL_44:
    i = v29;
    if (v29 < k)
    {
      v35 = k;
      do
      {
        v159 = *i;
        *i = *v35;
        *v35 = v159;
        do
        {
          while (1)
          {
            v36 = *(i + 16);
            i += 16;
            v37 = v36 < v16;
            if (v36 != v16)
            {
              break;
            }

            v38 = *(i + 8);
            v37 = v38 < v23;
            if (v23 != v38)
            {
              break;
            }

            if (*(i + 12) >= v24)
            {
              goto LABEL_54;
            }
          }
        }

        while (v37);
        do
        {
LABEL_54:
          while (1)
          {
            v39 = *(v35 - 16);
            v35 -= 16;
            v40 = v39 < v16;
            if (v39 == v16)
            {
              v41 = *(v35 + 8);
              v40 = v41 < v23;
              if (v23 == v41)
              {
                break;
              }
            }

            if (v40)
            {
              goto LABEL_46;
            }
          }
        }

        while (*(v35 + 12) >= v24);
LABEL_46:
        ;
      }

      while (i < v35);
    }

    if (i - 16 != a1)
    {
      *a1 = *(i - 16);
    }

    *(i - 16) = v16;
    *(i - 8) = v23;
    *(i - 4) = v24;
    if (v29 < k)
    {
LABEL_63:
      sub_377C0C(a1, i - 16, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v42 = sub_378D30(a1, i - 16);
      if (sub_378D30(i, a2))
      {
        a2 = (i - 16);
        if (v42)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v42)
      {
        goto LABEL_63;
      }
    }
  }

  v73 = (i + 16);
  v75 = i == a2 || v73 == a2;
  if (a4)
  {
    if (!v75)
    {
      v76 = 0;
      v77 = i;
      do
      {
        v79 = v77;
        v77 = v73;
        v80 = *(v79 + 2);
        v81 = v80 < *v79;
        if (v80 == *v79 && (v82 = *(v79 + 6), v83 = *(v79 + 2), v81 = v82 < v83, v83 == v82))
        {
          v84 = *(v79 + 7);
          if (v84 < *(v79 + 3))
          {
            result = *v79;
            *v77 = *v79;
            v78 = i;
            if (v79 != i)
            {
              goto LABEL_143;
            }

LABEL_134:
            *v78 = v80;
            *(v78 + 8) = v82;
            *(v78 + 12) = v84;
          }
        }

        else if (v81)
        {
          v82 = *(v79 + 6);
          v84 = *(v79 + 7);
          result = *v79;
          *v77 = *v79;
          v78 = i;
          if (v79 == i)
          {
            goto LABEL_134;
          }

LABEL_143:
          v85 = v76;
          while (1)
          {
            v86 = (i + v85);
            v87 = (i + v85 - 16);
            v88 = v80 < v87->n128_u64[0];
            if (v80 == v87->n128_u64[0] && (v89 = v86[-1].n128_u32[2], v88 = v82 < v89, v89 == v82))
            {
              if (v84 >= v86[-1].n128_u32[3])
              {
                v78 = i + v85;
                goto LABEL_134;
              }
            }

            else if (!v88)
            {
              v78 = v79;
              goto LABEL_134;
            }

            --v79;
            result = *v87;
            *v86 = *v87;
            v85 -= 16;
            if (!v85)
            {
              v78 = i;
              goto LABEL_134;
            }
          }
        }

        v73 = (v77 + 1);
        v76 += 16;
      }

      while (v77 + 1 != a2);
    }
  }

  else if (!v75)
  {
    do
    {
      v144 = a1;
      a1 = v73;
      v145 = *(v144 + 16);
      v146 = v145 < *v144;
      if (v145 == *v144 && (v147 = *(v144 + 24), v148 = *(v144 + 8), v146 = v147 < v148, v148 == v147))
      {
        v149 = *(v144 + 28);
        if (v149 < *(v144 + 12))
        {
          goto LABEL_235;
        }
      }

      else if (v146)
      {
        v147 = *(v144 + 24);
        v149 = *(v144 + 28);
LABEL_235:
        for (m = a1; ; --m)
        {
          result = m[-1];
          *m = result;
          v151 = m[-2].n128_i64[0];
          v63 = v145 == v151;
          v152 = v145 < v151;
          if (v63 && (v153 = m[-2].n128_u32[2], v152 = v147 < v153, v153 == v147))
          {
            if (v149 >= m[-2].n128_u32[3])
            {
LABEL_227:
              m[-1].n128_u64[0] = v145;
              m[-1].n128_u32[2] = v147;
              m[-1].n128_u32[3] = v149;
              break;
            }
          }

          else if (!v152)
          {
            goto LABEL_227;
          }
        }
      }

      v73 = (a1 + 16);
    }

    while ((a1 + 16) != a2);
  }

  return result;
}

__n128 sub_3788D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v5 = *(a2 + 2);
    v6 = *(a1 + 8);
    v4 = v5 < v6;
    if (v6 == v5)
    {
      if (*(a2 + 3) >= *(a1 + 12))
      {
        goto LABEL_4;
      }

LABEL_10:
      v7 = *a3 == v3;
      v11 = *a3 < v3;
      if (v7 && (v12 = *(a3 + 8), v13 = *(a2 + 2), v11 = v12 < v13, v13 == v12))
      {
        if (*(a3 + 12) >= *(a2 + 3))
        {
LABEL_14:
          result = *a1;
          *a1 = *a2;
          *a2 = result;
          v15 = *a3 < *a2;
          if (*a3 == *a2 && (v16 = *(a3 + 8), v17 = *(a2 + 2), v15 = v16 < v17, v17 == v16))
          {
            if (*(a3 + 12) >= *(a2 + 3))
            {
              return result;
            }
          }

          else if (!v15)
          {
            return result;
          }

          result = *a2;
          *a2 = *a3;
          *a3 = result;
          return result;
        }
      }

      else if (!v11)
      {
        goto LABEL_14;
      }

      result = *a1;
      *a1 = *a3;
      *a3 = result;
      return result;
    }
  }

  if (v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = *a3 == v3;
  v8 = *a3 < v3;
  if (v7 && (v9 = *(a3 + 8), v10 = *(a2 + 2), v8 = v9 < v10, v10 == v9))
  {
    if (*(a3 + 12) >= *(a2 + 3))
    {
      return result;
    }
  }

  else if (!v8)
  {
    return result;
  }

  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v18 = *a2 < *a1;
  if (*a2 == *a1 && (v19 = *(a2 + 2), v20 = *(a1 + 8), v18 = v19 < v20, v20 == v19))
  {
    if (*(a2 + 3) < *(a1 + 12))
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
LABEL_28:
    result = *a1;
    *a1 = *a2;
    *a2 = result;
  }

  return result;
}

__n128 sub_378A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = sub_3788D0(a1, a2, a3).n128_u64[0];
  v11 = *a4 < *a3;
  if (*a4 == *a3 && (v12 = *(a4 + 8), v13 = *(a3 + 8), v11 = v12 < v13, v13 == v12))
  {
    if (*(a4 + 12) >= *(a3 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (!v11)
  {
    goto LABEL_17;
  }

  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v14 = *a3 < *a2;
  if (*a3 == *a2 && (v15 = *(a3 + 8), v16 = *(a2 + 8), v14 = v15 < v16, v16 == v15))
  {
    if (*(a3 + 12) >= *(a2 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (!v14)
  {
    goto LABEL_17;
  }

  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v17 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v18 = *(a2 + 8);
    v19 = *(a1 + 8);
    v17 = v18 < v19;
    if (v19 == v18)
    {
      if (*(a2 + 12) >= *(a1 + 12))
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if (v17)
  {
LABEL_16:
    result = *a1;
    *a1 = *a2;
    *a2 = result;
  }

LABEL_17:
  v20 = *a5 < *a4;
  if (*a5 == *a4 && (v21 = *(a5 + 8), v22 = *(a4 + 8), v20 = v21 < v22, v22 == v21))
  {
    if (*(a5 + 12) >= *(a4 + 12))
    {
      return result;
    }
  }

  else if (!v20)
  {
    return result;
  }

  result = *a4;
  *a4 = *a5;
  *a5 = result;
  v23 = *a4 < *a3;
  if (*a4 == *a3 && (v24 = *(a4 + 8), v25 = *(a3 + 8), v23 = v24 < v25, v25 == v24))
  {
    if (*(a4 + 12) >= *(a3 + 12))
    {
      return result;
    }
  }

  else if (!v23)
  {
    return result;
  }

  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v26 = *a3 < *a2;
  if (*a3 == *a2 && (v27 = *(a3 + 8), v28 = *(a2 + 8), v26 = v27 < v28, v28 == v27))
  {
    if (*(a3 + 12) >= *(a2 + 12))
    {
      return result;
    }
  }

  else if (!v26)
  {
    return result;
  }

  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v29 = *a2 < *a1;
  if (*a2 == *a1 && (v30 = *(a2 + 8), v31 = *(a1 + 8), v29 = v30 < v31, v31 == v30))
  {
    if (*(a2 + 12) < *(a1 + 12))
    {
      goto LABEL_37;
    }
  }

  else if (v29)
  {
LABEL_37:
    result = *a1;
    *a1 = *a2;
    *a2 = result;
  }

  return result;
}

BOOL sub_378D30(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = (a2 - 16);
      v5 = *(a2 - 16);
      v6 = v5 == *a1;
      v7 = v5 < *a1;
      if (v6 && (v8 = *(a2 - 8), v9 = *(a1 + 8), v7 = v8 < v9, v9 == v8))
      {
        if (*(a2 - 4) >= *(a1 + 12))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }

      v34 = *a1;
      *a1 = *v4;
      *v4 = v34;
      return 1;
    }

    goto LABEL_15;
  }

  if (v2 == 3)
  {
    sub_3788D0(a1, (a1 + 16), a2 - 16);
    return 1;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      sub_378A84(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
      return 1;
    }

LABEL_15:
    v10 = a1 + 32;
    sub_3788D0(a1, (a1 + 16), a1 + 32);
    v13 = a1 + 48;
    if (a1 + 48 == a2)
    {
      return 1;
    }

    v14 = 0;
    v15 = 0;
LABEL_20:
    v16 = *v13;
    v17 = *v13 < *v10;
    if (*v13 == *v10 && (v18 = *(v13 + 8), v19 = *(v10 + 8), v17 = v18 < v19, v19 == v18))
    {
      v20 = *(v13 + 12);
      if (v20 >= *(v10 + 12))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_19;
      }

      v18 = *(v13 + 8);
      v20 = *(v13 + 12);
    }

    *v13 = *v10;
    v21 = v14;
    while (1)
    {
      v22 = a1 + v21;
      v23 = *(a1 + v21 + 16);
      v6 = v16 == v23;
      v24 = v16 < v23;
      if (v6 && (v25 = *(v22 + 24), v24 = v18 < v25, v25 == v18))
      {
        if (v20 >= *(v22 + 28))
        {
          v10 = a1 + v21 + 32;
LABEL_18:
          *v10 = v16;
          *(v10 + 8) = v18;
          *(v10 + 12) = v20;
          if (++v15 == 8)
          {
            return v13 + 16 == a2;
          }

LABEL_19:
          v10 = v13;
          v14 += 16;
          v13 += 16;
          if (v13 != a2)
          {
            goto LABEL_20;
          }

          return 1;
        }
      }

      else if (!v24)
      {
        goto LABEL_18;
      }

      v10 -= 16;
      *(v22 + 32) = *(a1 + v21 + 16);
      v21 -= 16;
      if (v21 == -32)
      {
        v10 = a1;
        goto LABEL_18;
      }
    }
  }

  sub_3788D0(a1, (a1 + 16), a1 + 32);
  v28 = (a2 - 16);
  v29 = *(a2 - 16);
  v30 = *(a1 + 32);
  v6 = v29 == v30;
  v31 = v29 < v30;
  if (v6 && (v32 = *(a2 - 8), v33 = *(a1 + 40), v31 = v32 < v33, v33 == v32))
  {
    if (*(a2 - 4) >= *(a1 + 44))
    {
      return 1;
    }
  }

  else if (!v31)
  {
    return 1;
  }

  v35 = *(a1 + 32);
  *(a1 + 32) = *v28;
  *v28 = v35;
  v36 = *(a1 + 32);
  v37 = *(a1 + 16);
  v6 = v36 == v37;
  v38 = v36 < v37;
  if (v6 && (v39 = *(a1 + 40), v40 = *(a1 + 24), v38 = v39 < v40, v40 == v39))
  {
    if (*(a1 + 44) >= *(a1 + 28))
    {
      return 1;
    }
  }

  else if (!v38)
  {
    return 1;
  }

  v41 = *(a1 + 16);
  *(a1 + 16) = *(a1 + 32);
  *(a1 + 32) = v41;
  v42 = *(a1 + 16);
  v6 = v42 == *a1;
  v43 = v42 < *a1;
  if (v6 && (v44 = *(a1 + 24), v45 = *(a1 + 8), v43 = v44 < v45, v45 == v44))
  {
    if (*(a1 + 28) >= *(a1 + 12))
    {
      return 1;
    }
  }

  else if (!v43)
  {
    return 1;
  }

  v46 = *a1;
  *a1 = *(a1 + 16);
  *(a1 + 16) = v46;
  return 1;
}

char *sub_3790B0(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      sub_1794();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v31 = (__dst - v9);
    v32 = 8 * ((__dst - v9) >> 3);
    v33 = (v32 + 8 * a5);
    v34 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v31 - __src) >= 0x20)
    {
      v58 = v34 + 1;
      v59 = (v34 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v35 = (v32 + 8 * v59);
      v36 = &__src[8 * v59];
      v60 = (__src + 16);
      v61 = (v32 + 16);
      v62 = v59;
      do
      {
        v63 = *v60;
        *(v61 - 1) = *(v60 - 1);
        *v61 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 4;
      }

      while (v62);
      if (v58 == v59)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v35 = v32;
      v36 = __src;
    }

    do
    {
      v37 = *v36;
      v36 += 8;
      *v35++ = v37;
    }

    while (v35 != v33);
LABEL_31:
    v38 = *(a1 + 8) - __dst;
    memcpy((v32 + 8 * a5), __dst, v38);
    v40 = v33 + v38;
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = v32 - v42;
    memcpy((v32 - v42), *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 3;
  if (v14 >= a5)
  {
    v17 = 8 * a5;
    v18 = &__dst[8 * a5];
    v19 = (v8 - 8 * a5);
    if (v19 >= v8)
    {
      v23 = *(a1 + 8);
    }

    else
    {
      v20 = v19 + 1;
      if (v8 > (v19 + 1))
      {
        v20 = *(a1 + 8);
      }

      v21 = &v20[v17 / 8] + ~v8;
      v22 = v21 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v23 = *(a1 + 8);
      if (v22)
      {
        goto LABEL_74;
      }

      v24 = (v21 >> 3) + 1;
      v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
      v19 = (v19 + v25);
      v23 = (v8 + v25);
      v26 = (v8 + 16);
      v27 = (v8 + 16 - v17);
      v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      if (v24 != (v24 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_74:
        do
        {
          v30 = *v19++;
          *v23++ = v30;
        }

        while (v19 < v8);
      }
    }

    *(a1 + 8) = v23;
    if (v8 != v18)
    {
      v52 = v8 - v18;
      v53 = (v8 - v52);
      v54 = __src;
      memmove(v53, __dst, v52 - 1);
      __src = v54;
    }

    v55 = v5;
    v56 = __src;
    v57 = v17 - 1;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = *(a1 + 8);
  }

  else
  {
    v44 = &__src[v13];
    v45 = a4 - v15 - 8;
    if (v45 < 0x18)
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v16 = *(a1 + 8);
      if (v8 - v15 >= 0x20)
      {
        v46 = (v45 >> 3) + 1;
        v47 = 8 * (v46 & 0x3FFFFFFFFFFFFFFCLL);
        v44 = &v15[v47];
        v16 = v8 + v47;
        v48 = (v8 + 16);
        v49 = (v15 + 16);
        v50 = v46 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v51 = *v49;
          *(v48 - 1) = *(v49 - 1);
          *v48 = v51;
          v48 += 2;
          v49 += 2;
          v50 -= 4;
        }

        while (v50);
        if (v46 == (v46 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v64 = *v44;
      v44 += 8;
      *v16 = v64;
      v16 += 8;
    }

    while (v44 != a4);
  }

LABEL_50:
  *(a1 + 8) = v16;
  if (v14 >= 1)
  {
    v65 = a5;
    v66 = &__dst[8 * a5];
    v67 = (v16 - 8 * a5);
    v68 = __src;
    if (v67 >= v8)
    {
      v72 = v16;
    }

    else
    {
      v69 = v67 + 1;
      if (v8 > (v67 + 1))
      {
        v69 = v8;
      }

      v70 = &v69[v65] + ~v16;
      v71 = v70 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v72 = v16;
      if (v71)
      {
        goto LABEL_75;
      }

      v73 = (v70 >> 3) + 1;
      v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
      v67 = (v67 + v74);
      v72 = (v16 + v74);
      v75 = (v16 + 16);
      v76 = (v16 + 16 - v65 * 8);
      v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v78 = *v76;
        *(v75 - 1) = *(v76 - 1);
        *v75 = v78;
        v75 += 2;
        v76 += 2;
        v77 -= 4;
      }

      while (v77);
      if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_75:
        do
        {
          v79 = *v67++;
          *v72++ = v79;
        }

        while (v67 < v8);
      }
    }

    *(a1 + 8) = v72;
    if (v16 != v66)
    {
      memmove(v66, __dst, v16 - v66 - 1);
    }

    if (v8 != v5)
    {
      v57 = v13 - 1;
      v55 = v5;
      v56 = v68;
LABEL_68:
      memmove(v55, v56, v57);
    }
  }

  return v5;
}

void *sub_3794D0()
{
  if ((atomic_load_explicit(&qword_278F228, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_278F228))
  {
    return &unk_278F230;
  }

  sub_379558(&unk_278F230);
  __cxa_guard_release(&qword_278F228);
  return &unk_278F230;
}

uint64_t sub_379558(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 850045863;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  sub_379D0C(a1);
  return a1;
}

void sub_3795C8(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v3);
  sub_37AFB0(v2);
  sub_23D9C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3795EC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 80));
  if (sub_379E90(a1, a2))
  {
    v19 = a2;
    v4 = *(sub_37A048(a1, a2) + 40);
LABEL_33:
    v30 = v4;
    goto LABEL_34;
  }

  v5 = *(a1 + 24);
  if (v5 >= 0x20)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_32:
      v4 = -1;
      goto LABEL_33;
    }

    sub_19594F8(&v19);
    sub_4A5C(&v19, "Got more traffic branches than currently supported. Skipping this branch.", 73);
    if ((v29 & 0x10) != 0)
    {
      v12 = v28;
      if (v28 < v25)
      {
        v28 = v25;
        v12 = v25;
      }

      v13 = v24;
      v11 = v12 - v24;
      if (v12 - v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v29 & 8) == 0)
      {
        v11 = 0;
        v18 = 0;
LABEL_27:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 3u);
        if (v18 < 0)
        {
          operator delete(__dst);
        }

        if (v27 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v21);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_32;
      }

      v13 = v22;
      v11 = v23 - v22;
      if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v18 = v11;
    if (v11)
    {
      memmove(&__dst, v13, v11);
    }

    goto LABEL_27;
  }

  v30 = *(a1 + 24);
  *(sub_37A048(a1, a2) + 40) = v5;
  v19 = &v30;
  v6 = sub_37A47C((a1 + 40), &v30);
  v7 = (v6 + 3);
  if (v6 + 3 != a2)
  {
    v8 = *(v6 + 47);
    v9 = *(a2 + 23);
    if (v8 < 0)
    {
      if (v9 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if (v9 >= 0)
      {
        v15 = *(a2 + 23);
      }

      else
      {
        v15 = *(a2 + 8);
      }

      sub_13B38(v7, v14, v15);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_13A68(v7, *a2, *(a2 + 8));
    }

    else
    {
      v10 = *a2;
      *(v7 + 16) = *(a2 + 16);
      *v7 = v10;
    }
  }

LABEL_34:
  std::mutex::unlock((a1 + 80));
  return v30;
}

void sub_379944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  std::mutex::unlock((v16 + 80));
  _Unwind_Resume(a1);
}

uint64_t sub_3799B8(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 80));
  if (sub_379E90(a1, a2))
  {
    v4 = sub_379E90(a1, a2);
    if (!v4)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    v5 = *(v4 + 40);
    std::mutex::unlock((a1 + 80));
    return v5;
  }

  else
  {
    std::mutex::unlock((a1 + 80));
    return 255;
  }
}

BOOL sub_379A54(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 80));
  v4 = sub_379E90(a1, a2) != 0;
  std::mutex::unlock((a1 + 80));
  return v4;
}

void sub_379AB4(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  std::mutex::lock((a1 + 80));
  if (v6 == 255)
  {
    goto LABEL_22;
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = a2;
    if (v7 <= a2)
    {
      v9 = v6 % *(a1 + 48);
    }
  }

  else
  {
    v9 = (v7 - 1) & a2;
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 8 * v9);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    *(a3 + 23) = 0;
    *a3 = 0;
    goto LABEL_23;
  }

  v13 = v7 - 1;
  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == a2)
      {
        if (*(v12 + 16) == v6)
        {
          goto LABEL_26;
        }
      }

      else if ((v14 & v13) != v9)
      {
        goto LABEL_22;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == a2)
    {
      break;
    }

    if (v15 >= v7)
    {
      v15 %= v7;
    }

    if (v15 != v9)
    {
      goto LABEL_22;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (*(v12 + 16) != v6)
  {
    goto LABEL_17;
  }

LABEL_26:
  if (v8.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v7 <= a2)
    {
      v17 = v6 % *(a1 + 48);
    }
  }

  else
  {
    v17 = (v7 - 1) & a2;
  }

  v18 = *(v10 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_50:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v19[1];
      if (v20 == a2)
      {
        if (*(v19 + 16) == v6)
        {
          goto LABEL_38;
        }
      }

      else if ((v20 & v13) != v17)
      {
        goto LABEL_50;
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_50;
      }
    }
  }

  while (2)
  {
    v22 = v19[1];
    if (v22 != a2)
    {
      if (v22 >= v7)
      {
        v22 %= v7;
      }

      if (v22 != v17)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    if (*(v19 + 16) != v6)
    {
LABEL_43:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

LABEL_38:
  if (*(v19 + 47) < 0)
  {
    sub_325C(a3, v19[3], v19[4]);
LABEL_23:
    v16 = (a1 + 80);

    goto LABEL_25;
  }

  v21 = *(v19 + 3);
  *(a3 + 16) = v19[5];
  *a3 = v21;
  v16 = (a1 + 80);

LABEL_25:
  std::mutex::unlock(v16);
}

void sub_379D0C(uint64_t a1)
{
  std::mutex::lock((a1 + 80));
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      do
      {
        v6 = *v2;
        if (*(v2 + 39) < 0)
        {
          operator delete(v2[2]);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6);
    }

    *(a1 + 16) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      bzero(*a1, 8 * v3);
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 64))
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      do
      {
        v7 = *v4;
        if (*(v4 + 47) < 0)
        {
          operator delete(v4[3]);
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7);
    }

    *(a1 + 56) = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      bzero(*(a1 + 40), 8 * v5);
    }

    *(a1 + 64) = 0;
  }

  v10 = 1;
  LOWORD(__p) = 65;
  sub_37A82C(a1, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  LOBYTE(__p) = 0;
  v11 = 1;
  LOWORD(v9) = 65;
  sub_37AC5C((a1 + 40), &__p);
  if (v11 < 0)
  {
    operator delete(v9);
  }

  std::mutex::unlock((a1 + 80));
}

void sub_379E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v18 + 80));
  _Unwind_Resume(a1);
}

uint64_t **sub_379E90(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_37A048(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_37A450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_37A464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_37A47C(void *a1, unsigned __int8 *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
        if (v2 == *(v7 + 16))
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

  if (v2 != *(v7 + 16))
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_37A7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_37A7C4(va);
  _Unwind_Resume(a1);
}

void *sub_37A7C4(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 47) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 24));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t **sub_37A82C(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_37AC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_37AC44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_37AC5C(void *a1, unsigned __int8 *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
        if (v2 == *(v7 + 16))
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

  if (v2 != *(v7 + 16))
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_37AF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_37A7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_37AFB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_37B2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_37E06C(&a47);
  sub_36293C(&a9);
  _Unwind_Resume(a1);
}

void sub_37B304(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_37B31C(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        sub_37E06C(*(a1 + 408) + v4);
        v4 += 328;
        --v3;
      }

      while (v3);
      v2 = *(a1 + 408);
    }

    free(v2);
  }

  sub_37E06C(a1 + 80);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_37D3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
    v65 = a37;
    if (!a37)
    {
LABEL_3:
      v66 = a40;
      if (!a40)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v65 = a37;
    if (!a37)
    {
      goto LABEL_3;
    }
  }

  operator delete(v65);
  v66 = a40;
  if (!a40)
  {
LABEL_4:
    v67 = a43;
    if (!a43)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v66);
  v67 = a43;
  if (!a43)
  {
LABEL_5:
    v68 = a46;
    if (!a46)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v67);
  v68 = a46;
  if (!a46)
  {
LABEL_6:
    v69 = a49;
    if (!a49)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v68);
  v69 = a49;
  if (!a49)
  {
LABEL_7:
    v70 = a52;
    if (!a52)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v69);
  v70 = a52;
  if (!a52)
  {
LABEL_8:
    v71 = a55;
    if (!a55)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v70);
  v71 = a55;
  if (!a55)
  {
LABEL_9:
    sub_252664(a10, *(v63 + 80));
    v72 = *(v63 + 32);
    if (!v72)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_10:
      v73 = *v72;
      sub_252664((v72 + 4), v72[5]);
      operator delete(v72);
      v72 = v73;
    }

    while (v73);
LABEL_11:
    v74 = *a19;
    *a19 = 0;
    if (v74)
    {
      operator delete(v74);
    }

    v75 = *(v63 + 8);
    if (v75)
    {
      if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v75->__on_zero_shared)(v75);
        std::__shared_weak_count::__release_weak(v75);
      }
    }

    _Unwind_Resume(a1);
  }

LABEL_24:
  operator delete(v71);
  sub_252664(a10, *(v63 + 80));
  v72 = *(v63 + 32);
  if (!v72)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_37DF70(_Unwind_Exception *a1)
{
  sub_389FCC(&STACK[0x480]);
  sub_37B31C(&STACK[0x5710]);
  _Unwind_Resume(a1);
}

uint64_t sub_37E06C(uint64_t a1)
{
  sub_252664(a1 + 96, *(a1 + 104));
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_252664((v2 + 4), v2[5]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void **sub_37E150(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        std::thread::~thread(v3 - 1);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_37E1AC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        sub_252664((v4 + 4), v4[5]);
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      bzero(*a1, 8 * v6);
    }

    *(a1 + 24) = 0;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v11 = a2[2];
  v10 = a2 + 2;
  v9 = v11;
  v12 = *(v10 - 1);
  *(a1 + 16) = v11;
  *(a1 + 8) = v12;
  *(v10 - 1) = 0;
  v13 = v10[1];
  *(a1 + 24) = v13;
  *(a1 + 32) = *(v10 + 4);
  if (v13)
  {
    v14 = *(v9 + 8);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
    *v10 = 0;
    v10[1] = 0;
  }
}

uint64_t sub_37E2A0(uint64_t a1, uint64_t a2)
{
  *a1 |= *a2;
  v4 = *(a2 + 8);
  if (v4 != (a2 + 16))
  {
    v5 = (a1 + 16);
    do
    {
      v6 = *v5;
      if (!*v5)
      {
LABEL_10:
        operator new();
      }

      v7 = v4[1].u8[12];
      while (1)
      {
        while (1)
        {
          v8 = v6;
          v9 = v6[1].u8[12];
          if (v7 >= v9)
          {
            break;
          }

          v6 = v8->i64[0];
          if (!v8->i64[0])
          {
            goto LABEL_10;
          }
        }

        if (v9 >= v7)
        {
          break;
        }

        v6 = v8->i64[1];
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v10 = v8[3];
      v8[2] = vaddq_s32(v8[2], v4[2]);
      v8[3] = vaddq_s32(v10, v4[3]);
      v11 = v4->i64[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = v11->i64[0];
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[1].i64[0];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != (a2 + 16));
  }

  v14 = *(a1 + 48);
  *(a1 + 56) = vadd_s32(*(a1 + 56), *(a2 + 56));
  *(a1 + 64) += *(a2 + 64);
  *(a1 + 32) = vaddq_s32(*(a1 + 32), *(a2 + 32));
  *(a1 + 48) = vadd_s32(v14, *(a2 + 48));
  *(a1 + 68) = vadd_s32(*(a1 + 68), *(a2 + 68));
  *(a1 + 76) += *(a2 + 76);
  sub_386858((a1 + 80), (a2 + 80));
  *(a1 + 168) = vadd_s32(*(a1 + 168), *(a2 + 168));
  *(a1 + 176) += *(a2 + 176);
  *(a1 + 184) += *(a2 + 184);
  v15 = *(a1 + 216);
  *(a1 + 224) = vadd_s32(*(a1 + 224), *(a2 + 224));
  v16 = vaddq_s32(*(a1 + 200), *(a2 + 200));
  *(a1 + 232) += *(a2 + 232);
  *(a1 + 192) += *(a2 + 192);
  *(a1 + 200) = v16;
  *(a1 + 216) = vadd_s32(v15, *(a2 + 216));
  return a1;
}

char *sub_37E4FC(uint64_t a1, char *__dst, __int128 *__src, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 <= (v6 - v7) >> 4)
  {
    v12 = v7 - __dst;
    v13 = (v7 - __dst) >> 4;
    if (v13 >= a5)
    {
      v12 = 16 * a5;
      v25 = &__dst[16 * a5];
      v26 = &v7[-a5];
      for (i = *(a1 + 8); v26 < v7; ++i)
      {
        v28 = *v26++;
        *i = v28;
      }

      *(a1 + 8) = i;
      if (v7 != v25)
      {
        v29 = __src;
        memmove(v25, __dst, v7 - v25);
        __src = v29;
      }

      v23 = __dst;
      v24 = __src;
    }

    else
    {
      v14 = (__src + v12);
      v15 = *(a1 + 8);
      for (j = v15; v14 != a4; v15 += 16)
      {
        v17 = *v14++;
        *j = v17;
        j += 16;
      }

      *(a1 + 8) = v15;
      if (v13 < 1)
      {
        return __dst;
      }

      v18 = &__dst[16 * a5];
      v19 = &v15[-16 * a5];
      v20 = __src;
      for (k = v15; v19 < v7; k += 16)
      {
        v22 = *v19++;
        *k = v22;
      }

      *(a1 + 8) = k;
      if (j != v18)
      {
        memmove(&__dst[16 * a5], __dst, v15 - v18);
      }

      if (v7 == __dst)
      {
        return __dst;
      }

      v23 = __dst;
      v24 = v20;
    }

    memmove(v23, v24, v12);
    return __dst;
  }

  v8 = *a1;
  v9 = a5 + ((v7 - *a1) >> 4);
  if (v9 >> 60)
  {
    sub_1794();
  }

  v10 = v6 - v8;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v31 = 16 * ((__dst - v8) >> 4);
  v32 = 16 * a5;
  v33 = v31 + 16 * a5;
  v34 = v31;
  do
  {
    v35 = *__src++;
    *v34++ = v35;
    v32 -= 16;
  }

  while (v32);
  v36 = *(a1 + 8) - __dst;
  memcpy((v31 + 16 * a5), __dst, v36);
  v38 = v33 + v36;
  *(a1 + 8) = __dst;
  v39 = *a1;
  v40 = &__dst[-*a1];
  v41 = v31 - v40;
  memcpy((v31 - v40), *a1, v40);
  *a1 = v41;
  *(a1 + 8) = v38;
  *(a1 + 16) = 0;
  if (v39)
  {
    operator delete(v39);
  }

  return v31;
}

void sub_37E764(void *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0x34F72C234F72C235 * ((v3 - v2) >> 4) >= a2)
  {
    if (a2)
    {
      v8 = a1;
      v9 = v2 + 464 * a2;
      do
      {
        *(v2 + 432) = 0u;
        *(v2 + 448) = 0u;
        *(v2 + 400) = 0u;
        *(v2 + 416) = 0u;
        *(v2 + 368) = 0u;
        *(v2 + 384) = 0u;
        *(v2 + 336) = 0u;
        *(v2 + 352) = 0u;
        *(v2 + 304) = 0u;
        *(v2 + 320) = 0u;
        *(v2 + 272) = 0u;
        *(v2 + 288) = 0u;
        *(v2 + 240) = 0u;
        *(v2 + 256) = 0u;
        *(v2 + 208) = 0u;
        *(v2 + 224) = 0u;
        *(v2 + 176) = 0u;
        *(v2 + 192) = 0u;
        *(v2 + 144) = 0u;
        *(v2 + 160) = 0u;
        *(v2 + 112) = 0u;
        *(v2 + 128) = 0u;
        *(v2 + 48) = 0u;
        *(v2 + 64) = 0u;
        *(v2 + 80) = 0u;
        *(v2 + 96) = 0u;
        *(v2 + 16) = 0u;
        *(v2 + 32) = 0u;
        *v2 = 0u;
        *(v2 + 32) = -1;
        *(v2 + 236) = 0u;
        v10 = v2 + 236;
        *(v2 + 40) = 0x7FFFFFFF;
        *(v2 + 48) = 0u;
        *(v2 + 64) = 0u;
        *(v2 + 80) = 0u;
        *(v2 + 96) = 3;
        *(v2 + 104) = 0u;
        *(v2 + 120) = 0u;
        *(v2 + 136) = 0u;
        *(v2 + 152) = 0x7FFFFFFF00000000;
        *(v2 + 164) = 7;
        *(v2 + 165) = 0;
        *(v2 + 168) = 0;
        *(v2 + 176) = 0u;
        *(v2 + 192) = 0u;
        *(v2 + 208) = 0u;
        *(v2 + 224) = 0;
        *(v2 + 252) = 0u;
        *(v2 + 268) = 0u;
        *(v2 + 284) = 0u;
        *(v2 + 297) = 0u;
        *(v2 + 320) = 0x7FFFFFFF;
        *(v2 + 328) = 0x7FFFFFFFFFFFFFFFLL;
        *(v2 + 336) = 0x7FFFFFFFFFFFFFFFLL;
        *(v2 + 356) = 0x7FFFFFFF;
        *(v2 + 360) = 0u;
        *(v2 + 376) = 0u;
        memset_pattern16((v2 + 392), &unk_22910C0, 0x30uLL);
        *(v10 + 204) = -1;
        v2 = v10 + 228;
      }

      while (v10 + 228 != v9);
      v2 = v9;
      a1 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0x34F72C234F72C235 * ((v2 - *a1) >> 4);
    v5 = v4 + a2;
    if (v4 + a2 > 0x8D3DCB08D3DCB0)
    {
      sub_1794();
    }

    v6 = 0x34F72C234F72C235 * ((v3 - *a1) >> 4);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x469EE58469EE58)
    {
      v7 = 0x8D3DCB08D3DCB0;
    }

    else
    {
      v7 = v5;
    }

    v32 = a1;
    if (v7)
    {
      if (v7 <= 0x8D3DCB08D3DCB0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 464 * v4;
    v12 = 464 * v4 + 464 * a2;
    v13 = 464 * v4;
    do
    {
      *(v13 + 432) = 0u;
      *(v13 + 448) = 0u;
      *(v13 + 400) = 0u;
      *(v13 + 416) = 0u;
      *(v13 + 368) = 0u;
      *(v13 + 384) = 0u;
      *(v13 + 336) = 0u;
      *(v13 + 352) = 0u;
      *(v13 + 304) = 0u;
      *(v13 + 320) = 0u;
      *(v13 + 272) = 0u;
      *(v13 + 288) = 0u;
      *(v13 + 240) = 0u;
      *(v13 + 256) = 0u;
      *(v13 + 208) = 0u;
      *(v13 + 224) = 0u;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *v13 = 0u;
      *(v13 + 32) = -1;
      *(v13 + 236) = 0u;
      v14 = v13 + 236;
      *(v13 + 40) = 0x7FFFFFFF;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 3;
      *(v13 + 104) = 0u;
      *(v13 + 120) = 0u;
      *(v13 + 136) = 0u;
      *(v13 + 152) = 0x7FFFFFFF00000000;
      *(v13 + 164) = 7;
      *(v13 + 165) = 0;
      *(v13 + 168) = 0;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 208) = 0u;
      *(v13 + 224) = 0;
      *(v13 + 252) = 0u;
      *(v13 + 268) = 0u;
      *(v13 + 284) = 0u;
      *(v13 + 297) = 0u;
      *(v13 + 320) = 0x7FFFFFFF;
      *(v13 + 328) = 0x7FFFFFFFFFFFFFFFLL;
      *(v13 + 336) = 0x7FFFFFFFFFFFFFFFLL;
      *(v13 + 356) = 0x7FFFFFFF;
      *(v13 + 360) = 0u;
      *(v13 + 376) = 0u;
      memset_pattern16((v13 + 392), &unk_22910C0, 0x30uLL);
      *(v14 + 204) = -1;
      v13 = v14 + 228;
    }

    while (v14 + 228 != v12);
    v15 = *v32;
    v16 = v32[1];
    v17 = v11 + *v32 - v16;
    if (v16 != *v32)
    {
      v18 = *v32;
      v19 = v11 + *v32 - v16;
      do
      {
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
        *v19 = *v18;
        *(v19 + 16) = *(v18 + 2);
        *v18 = 0;
        *(v18 + 1) = 0;
        *(v18 + 2) = 0;
        v20 = *(v18 + 24);
        *(v19 + 40) = *(v18 + 10);
        *(v19 + 24) = v20;
        v21 = *(v18 + 3);
        *(v19 + 64) = *(v18 + 8);
        *(v19 + 48) = v21;
        *(v18 + 7) = 0;
        *(v18 + 8) = 0;
        *(v18 + 6) = 0;
        *(v19 + 72) = 0;
        *(v19 + 80) = 0;
        *(v19 + 88) = 0;
        *(v19 + 72) = *(v18 + 72);
        *(v19 + 88) = *(v18 + 11);
        *(v18 + 9) = 0;
        *(v18 + 10) = 0;
        *(v18 + 11) = 0;
        *(v19 + 96) = *(v18 + 24);
        v22 = *(v18 + 104);
        *(v19 + 120) = *(v18 + 15);
        *(v19 + 104) = v22;
        *(v18 + 14) = 0;
        *(v18 + 15) = 0;
        *(v18 + 13) = 0;
        v23 = *(v18 + 8);
        *(v19 + 144) = *(v18 + 18);
        *(v19 + 128) = v23;
        *(v18 + 17) = 0;
        *(v18 + 18) = 0;
        *(v18 + 16) = 0;
        v24 = *(v18 + 152);
        *(v19 + 168) = *(v18 + 42);
        *(v19 + 152) = v24;
        v25 = *(v18 + 11);
        *(v19 + 192) = *(v18 + 24);
        *(v19 + 176) = v25;
        *(v18 + 22) = 0;
        *(v18 + 23) = 0;
        *(v18 + 24) = 0;
        *(v19 + 200) = 0;
        *(v19 + 208) = 0;
        *(v19 + 216) = 0;
        *(v19 + 200) = *(v18 + 200);
        *(v19 + 216) = *(v18 + 27);
        *(v18 + 26) = 0;
        *(v18 + 27) = 0;
        *(v18 + 25) = 0;
        *(v19 + 224) = *(v18 + 14);
        *(v19 + 248) = 0;
        *(v19 + 256) = 0;
        *(v19 + 240) = 0;
        *(v19 + 240) = *(v18 + 15);
        *(v19 + 256) = *(v18 + 32);
        *(v18 + 30) = 0;
        *(v18 + 31) = 0;
        *(v18 + 32) = 0;
        *(v19 + 264) = 0;
        *(v19 + 272) = 0;
        *(v19 + 280) = 0;
        *(v19 + 264) = *(v18 + 33);
        *(v19 + 272) = *(v18 + 17);
        *(v18 + 33) = 0;
        *(v18 + 34) = 0;
        *(v18 + 35) = 0;
        v26 = *(v18 + 18);
        *(v19 + 304) = *(v18 + 38);
        *(v19 + 288) = v26;
        *(v18 + 37) = 0;
        *(v18 + 38) = 0;
        *(v18 + 36) = 0;
        *(v19 + 312) = v18[312];
        v27 = *(v18 + 21);
        v28 = *(v18 + 44);
        *(v19 + 320) = *(v18 + 20);
        *(v19 + 336) = v27;
        *(v19 + 352) = v28;
        *(v19 + 360) = 0;
        *(v19 + 368) = 0;
        *(v19 + 376) = 0;
        *(v19 + 360) = *(v18 + 45);
        *(v19 + 368) = *(v18 + 23);
        *(v18 + 46) = 0;
        *(v18 + 47) = 0;
        *(v18 + 45) = 0;
        v30 = *(v18 + 26);
        v29 = *(v18 + 27);
        v31 = *(v18 + 25);
        *(v19 + 448) = *(v18 + 56);
        *(v19 + 416) = v30;
        *(v19 + 432) = v29;
        *(v19 + 400) = v31;
        *(v19 + 384) = *(v18 + 24);
        *(v19 + 456) = v18[456];
        v18 += 464;
        v19 += 464;
      }

      while (v18 != v16);
      do
      {
        v15 = (sub_2C0F28(v15) + 464);
      }

      while (v15 != v16);
      v15 = *v32;
    }

    *v32 = v17;
    v32[1] = v12;
    v32[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_37ECA8(uint64_t a1, void **a2)
{
  v3 = a2[3];
  if (v3)
  {
    a2[4] = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  v5 = a2[1];
  v6 = *a2;
  if (v5 == v4)
  {
    a2[1] = v4;

    goto LABEL_7;
  }

  do
  {
    if (*(v5 - 17) < 0)
    {
      operator delete(*(v5 - 5));
      v7 = *(v5 - 8);
      if (!v7)
      {
        goto LABEL_8;
      }

LABEL_13:
      *(v5 - 7) = v7;
      operator delete(v7);
      goto LABEL_8;
    }

    v7 = *(v5 - 8);
    if (v7)
    {
      goto LABEL_13;
    }

LABEL_8:
    v5 -= 9;
  }

  while (v5 != v4);
  v6 = *a2;
  a2[1] = v4;

LABEL_7:
  operator delete(v6);
}

void **sub_37ED80(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (*(v3 - 17) < 0)
    {
      operator delete(*(v3 - 5));
      v5 = *(v3 - 8);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 9;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 8);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 7) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void sub_37EE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 850045863;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1018212795;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a3;
  *(a1 + 232) = a3;
  *(a1 + 240) = 0;
  sub_13E0();
  v5 = *(v4 + 24);
  if (v5)
  {
    sub_13E0();
    v5 = *(*(v6 + 24) + 248) + 1;
  }

  *(a1 + 248) = v5;
  operator new();
}

void sub_37F070(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::mutex::~mutex(v2);
  sub_2C1818(v1 + 3);
  sub_37E150(v1);
  _Unwind_Resume(a1);
}

void sub_37F0BC(uint64_t a1, uint64_t a2, void **a3)
{
  sub_13E0();
  v7 = v6;
  v16 = 0;
  v17 = 0;
  v15[0] = v6;
  v15[1] = &v16;
  sub_13E0();
  v9 = *(v8 + 24);
  std::mutex::lock((v9 + 48));
  sub_37F248(v15);
  std::mutex::unlock((v9 + 48));
  v10 = a2 - a1;
  add_explicit = atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  if (add_explicit < v10)
  {
    v12 = 0;
    do
    {
      v13 = v12;
      v12 = add_explicit;
      a1 += (add_explicit - v13) & ~((add_explicit - v13) >> 63);
      sub_37F464(*(**a3 + 152) + 464 * *a3[1] + 464 * a1, (*(*a3[2] + 152) + 464 * a1));
      add_explicit = atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
    }

    while (add_explicit < v10);
  }

  ++*(v7 + 16);
  v14 = v17;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void sub_37F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock((v3 + 48));
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_37F220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_37F234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_37F248(void *a1)
{
  v1 = *(*a1 + 16);
  v2 = *(*(*a1 + 24) + 24);
  if (v1 >= (*(*(*a1 + 24) + 32) - v2) >> 4)
  {
    operator new();
  }

  v3 = a1[1];
  v4 = *(v2 + 16 * v1);
  v5 = *(v2 + 16 * v1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 8);
  *v3 = v4;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t sub_37F464(uint64_t a1, void *a2)
{
  if (a1 == a2)
  {
    v7 = *(a2 + 3);
    *(a1 + 40) = *(a2 + 10);
    *(a1 + 24) = v7;
    *(a1 + 96) = *(a2 + 24);
    v8 = *(a2 + 19);
    *(a1 + 168) = *(a2 + 42);
    *(a1 + 152) = v8;
    *(a1 + 224) = *(a2 + 14);
    *(a1 + 312) = *(a2 + 312);
    v9 = *(a2 + 20);
    v10 = *(a2 + 21);
    *(a1 + 352) = a2[44];
    *(a1 + 320) = v9;
    *(a1 + 336) = v10;
    goto LABEL_59;
  }

  sub_37F7CC(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v4 = *(a2 + 3);
  *(a1 + 40) = *(a2 + 10);
  *(a1 + 24) = v4;
  v5 = *(a2 + 71);
  if (*(a1 + 71) < 0)
  {
    if (v5 >= 0)
    {
      v11 = a2 + 6;
    }

    else
    {
      v11 = a2[6];
    }

    if (v5 >= 0)
    {
      v12 = *(a2 + 71);
    }

    else
    {
      v12 = a2[7];
    }

    sub_13B38(a1 + 48, v11, v12);
  }

  else if ((*(a2 + 71) & 0x80) != 0)
  {
    sub_13A68((a1 + 48), a2[6], a2[7]);
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 64) = a2[8];
    *(a1 + 48) = v6;
  }

  sub_37FB44((a1 + 72), a2[9], a2[10], 0xAAAAAAAAAAAAAAABLL * ((a2[10] - a2[9]) >> 4));
  *(a1 + 96) = *(a2 + 24);
  v13 = *(a2 + 127);
  if (*(a1 + 127) < 0)
  {
    if (v13 >= 0)
    {
      v17 = a2 + 13;
    }

    else
    {
      v17 = a2[13];
    }

    if (v13 >= 0)
    {
      v18 = *(a2 + 127);
    }

    else
    {
      v18 = a2[14];
    }

    sub_13B38(a1 + 104, v17, v18);
    v15 = a2 + 16;
    v16 = *(a2 + 151);
    if (*(a1 + 151) < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if ((*(a2 + 127) & 0x80) == 0)
  {
    v14 = *(a2 + 13);
    *(a1 + 120) = a2[15];
    *(a1 + 104) = v14;
    v15 = a2 + 16;
    v16 = *(a2 + 151);
    if (*(a1 + 151) < 0)
    {
      goto LABEL_28;
    }

LABEL_25:
    if ((v16 & 0x80) != 0)
    {
      sub_13A68((a1 + 128), a2[16], a2[17]);
    }

    else
    {
      v19 = *v15;
      *(a1 + 144) = v15[2];
      *(a1 + 128) = v19;
    }

    goto LABEL_36;
  }

  sub_13A68((a1 + 104), a2[13], a2[14]);
  v15 = a2 + 16;
  v16 = *(a2 + 151);
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  if ((v16 & 0x80u) == 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = a2[16];
  }

  if ((v16 & 0x80u) == 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = a2[17];
  }

  sub_13B38(a1 + 128, v20, v21);
LABEL_36:
  v22 = *(a2 + 19);
  *(a1 + 168) = *(a2 + 42);
  *(a1 + 152) = v22;
  v23 = *(a2 + 199);
  if (*(a1 + 199) < 0)
  {
    if (v23 >= 0)
    {
      v25 = a2 + 22;
    }

    else
    {
      v25 = a2[22];
    }

    if (v23 >= 0)
    {
      v26 = *(a2 + 199);
    }

    else
    {
      v26 = a2[23];
    }

    sub_13B38(a1 + 176, v25, v26);
  }

  else if ((*(a2 + 199) & 0x80) != 0)
  {
    sub_13A68((a1 + 176), a2[22], a2[23]);
  }

  else
  {
    v24 = *(a2 + 11);
    *(a1 + 192) = a2[24];
    *(a1 + 176) = v24;
  }

  sub_74300((a1 + 200), a2[25], a2[26], 0xAAAAAAAAAAAAAAABLL * ((a2[26] - a2[25]) >> 3));
  *(a1 + 224) = *(a2 + 14);
  sub_380094((a1 + 240), a2[30], a2[31], (a2[31] - a2[30]) >> 3);
  sub_74300((a1 + 264), a2[33], a2[34], 0xAAAAAAAAAAAAAAABLL * ((a2[34] - a2[33]) >> 3));
  v27 = *(a2 + 311);
  if (*(a1 + 311) < 0)
  {
    if (v27 >= 0)
    {
      v29 = a2 + 36;
    }

    else
    {
      v29 = a2[36];
    }

    if (v27 >= 0)
    {
      v30 = *(a2 + 311);
    }

    else
    {
      v30 = a2[37];
    }

    sub_13B38(a1 + 288, v29, v30);
  }

  else if ((*(a2 + 311) & 0x80) != 0)
  {
    sub_13A68((a1 + 288), a2[36], a2[37]);
  }

  else
  {
    v28 = *(a2 + 18);
    *(a1 + 304) = a2[38];
    *(a1 + 288) = v28;
  }

  *(a1 + 312) = *(a2 + 312);
  v31 = *(a2 + 20);
  v32 = *(a2 + 21);
  *(a1 + 352) = a2[44];
  *(a1 + 320) = v31;
  *(a1 + 336) = v32;
  sub_3801F0(a1 + 360, a2[45], a2[46], 0x6DB6DB6DB6DB6DB7 * ((a2[46] - a2[45]) >> 3));
LABEL_59:
  *(a1 + 384) = *(a2 + 24);
  v33 = *(a2 + 25);
  v34 = *(a2 + 26);
  v35 = *(a2 + 27);
  *(a1 + 448) = a2[56];
  *(a1 + 416) = v34;
  *(a1 + 432) = v35;
  *(a1 + 400) = v33;
  *(a1 + 456) = *(a2 + 456);
  return a1;
}

void sub_37F7CC(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_30945C(v8, *v5, v5[1], (v5[1] - *v5) >> 3);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_30945C(v8, *v18, v18[1], (v18[1] - *v18) >> 3);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_37FA38(a1, (v5 + v16), a3, v15);
}

void *sub_37FA38(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_37FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_47D80(&a9);
  _Unwind_Resume(a1);
}

void sub_37FB44(void ***a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
  {
    if (!v8)
    {
      goto LABEL_68;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_67:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_68:
      if (a4 <= 0x555555555555555)
      {
        v45 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
        v46 = 2 * v45;
        if (2 * v45 <= a4)
        {
          v46 = a4;
        }

        if (v45 >= 0x2AAAAAAAAAAAAAALL)
        {
          v47 = 0x555555555555555;
        }

        else
        {
          v47 = v46;
        }

        if (v47 <= 0x555555555555555)
        {
          operator new();
        }
      }

      sub_1794();
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
LABEL_10:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
          goto LABEL_10;
        }
      }

      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        goto LABEL_67;
      }
    }
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v30 = 0;
      while (1)
      {
        if (a2 != v8)
        {
          v34 = &v8[v30 / 8];
          v35 = &a2[v30 / 0x10];
          v36 = BYTE7(a2[v30 / 0x10 + 1]);
          if (SHIBYTE(v8[v30 / 8 + 2]) < 0)
          {
            if (v36 >= 0)
            {
              v42 = &a2[v30 / 0x10];
            }

            else
            {
              v42 = *&a2[v30 / 0x10];
            }

            if (v36 >= 0)
            {
              v43 = BYTE7(a2[v30 / 0x10 + 1]);
            }

            else
            {
              v43 = *(&a2[v30 / 0x10] + 1);
            }

            sub_13B38(v34, v42, v43);
            v38 = &v8[v30 / 8];
            v39 = &a2[v30 / 0x10];
            v40 = &a2[v30 / 0x10 + 1] + 8;
            v41 = HIBYTE(a2[v30 / 0x10 + 2]);
            if (SHIBYTE(v8[v30 / 8 + 5]) < 0)
            {
LABEL_41:
              v31 = *(v39 + 4);
              if ((v41 & 0x80u) == 0)
              {
                v32 = v40;
              }

              else
              {
                v32 = *v40;
              }

              if ((v41 & 0x80u) == 0)
              {
                v33 = v41;
              }

              else
              {
                v33 = v31;
              }

              sub_13B38((v38 + 3), v32, v33);
              goto LABEL_48;
            }
          }

          else if ((BYTE7(a2[v30 / 0x10 + 1]) & 0x80) != 0)
          {
            sub_13A68(v34, *&a2[v30 / 0x10], *(&a2[v30 / 0x10] + 1));
            v38 = &v8[v30 / 8];
            v39 = &a2[v30 / 0x10];
            v40 = &a2[v30 / 0x10 + 1] + 8;
            v41 = HIBYTE(a2[v30 / 0x10 + 2]);
            if (SHIBYTE(v8[v30 / 8 + 5]) < 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v37 = *v35;
            *(v34 + 16) = *(v35 + 2);
            *v34 = v37;
            v38 = &v8[v30 / 8];
            v39 = &a2[v30 / 0x10];
            v40 = &a2[v30 / 0x10 + 1] + 8;
            v41 = HIBYTE(a2[v30 / 0x10 + 2]);
            if (SHIBYTE(v8[v30 / 8 + 5]) < 0)
            {
              goto LABEL_41;
            }
          }

          if ((v41 & 0x80) != 0)
          {
            sub_13A68(v38 + 24, *v40, *&a2[v30 / 0x10 + 2]);
          }

          else
          {
            v44 = *v40;
            v38[5] = *(v40 + 16);
            *(v38 + 3) = v44;
          }
        }

LABEL_48:
        v30 += 48;
        if (&a2[v30 / 0x10] == a3)
        {
          v13 = a1[1];
          v8 = (v8 + v30);
          break;
        }
      }
    }

    if (v13 == v8)
    {
LABEL_80:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 24));
        v48 = (v13 - 48);
        if (*(v13 - 25) < 0)
        {
LABEL_86:
          operator delete(*v48);
        }
      }

      else
      {
        v48 = (v13 - 48);
        if (*(v13 - 25) < 0)
        {
          goto LABEL_86;
        }
      }

      v13 = v48;
      if (v48 == v8)
      {
        goto LABEL_80;
      }
    }
  }

  if (v13 == v8)
  {
    goto LABEL_77;
  }

  v15 = 0;
  do
  {
    if (a2 == v8)
    {
      goto LABEL_21;
    }

    v19 = &v8[v15 / 8];
    v20 = &a2[v15 / 0x10];
    v21 = BYTE7(a2[v15 / 0x10 + 1]);
    if (SHIBYTE(v8[v15 / 8 + 2]) < 0)
    {
      if (v21 >= 0)
      {
        v27 = &a2[v15 / 0x10];
      }

      else
      {
        v27 = *&a2[v15 / 0x10];
      }

      if (v21 >= 0)
      {
        v28 = BYTE7(a2[v15 / 0x10 + 1]);
      }

      else
      {
        v28 = *(&a2[v15 / 0x10] + 1);
      }

      sub_13B38(v19, v27, v28);
      v23 = &v8[v15 / 8];
      v24 = &a2[v15 / 0x10];
      v25 = &a2[v15 / 0x10 + 1] + 8;
      v26 = HIBYTE(a2[v15 / 0x10 + 2]);
      if ((SHIBYTE(v8[v15 / 8 + 5]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((v26 & 0x80) != 0)
        {
          sub_13A68(v23 + 24, *v25, *&a2[v15 / 0x10 + 2]);
        }

        else
        {
          v29 = *v25;
          v23[5] = *(v25 + 16);
          *(v23 + 3) = v29;
        }

        goto LABEL_21;
      }
    }

    else if ((BYTE7(a2[v15 / 0x10 + 1]) & 0x80) != 0)
    {
      sub_13A68(v19, *&a2[v15 / 0x10], *(&a2[v15 / 0x10] + 1));
      v23 = &v8[v15 / 8];
      v24 = &a2[v15 / 0x10];
      v25 = &a2[v15 / 0x10 + 1] + 8;
      v26 = HIBYTE(a2[v15 / 0x10 + 2]);
      if ((SHIBYTE(v8[v15 / 8 + 5]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = *v20;
      *(v19 + 16) = *(v20 + 2);
      *v19 = v22;
      v23 = &v8[v15 / 8];
      v24 = &a2[v15 / 0x10];
      v25 = &a2[v15 / 0x10 + 1] + 8;
      v26 = HIBYTE(a2[v15 / 0x10 + 2]);
      if ((SHIBYTE(v8[v15 / 8 + 5]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    v16 = *(v24 + 4);
    if ((v26 & 0x80u) == 0)
    {
      v17 = v25;
    }

    else
    {
      v17 = *v25;
    }

    if ((v26 & 0x80u) == 0)
    {
      v18 = v26;
    }

    else
    {
      v18 = v16;
    }

    sub_13B38((v23 + 3), v17, v18);
LABEL_21:
    v15 += 48;
  }

  while (v14 != v15);
  v13 = a1[1];
LABEL_77:
  a1[1] = sub_37FF94(a1, (a2 + v14), a3, v13);
}

uint64_t sub_37FF94(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      v6 += 3;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_380070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

char *sub_380094(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
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

void sub_3801F0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_335538(a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x249249249249249)
      {
        v12 = 0x492492492492492;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v13 - v8) >= a4)
  {
    if (a2 != a3)
    {
      v17 = v8 + 3;
      do
      {
        if (v5 != (v17 - 3))
        {
          sub_380A40(v17 - 3, *v5, v5[1], 0x8E38E38E38E38E39 * ((v5[1] - *v5) >> 3));
          sub_35354C(v17, v5[3], v5[4], 0xAAAAAAAAAAAAAAABLL * ((v5[4] - v5[3]) >> 2));
        }

        v17[3] = v5[6];
        v5 += 7;
        v17 += 7;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
      v8 = v17 - 3;
    }

    if (v13 == v8)
    {
LABEL_30:
      *(a1 + 8) = v8;
      return;
    }

    while (1)
    {
      v20 = *(v13 - 4);
      if (v20)
      {
        *(v13 - 3) = v20;
        operator delete(v20);
      }

      v21 = v13 - 7;
      v22 = *(v13 - 7);
      if (!v22)
      {
        goto LABEL_33;
      }

      v23 = *(v13 - 6);
      v19 = *(v13 - 7);
      if (v23 != v22)
      {
        break;
      }

LABEL_32:
      *(v13 - 6) = v22;
      operator delete(v19);
LABEL_33:
      v13 -= 7;
      if (v21 == v8)
      {
        goto LABEL_30;
      }
    }

    while (*(v23 - 17) < 0)
    {
      operator delete(*(v23 - 5));
      v24 = *(v23 - 8);
      if (v24)
      {
        goto LABEL_44;
      }

LABEL_39:
      v23 -= 9;
      if (v23 == v22)
      {
        v19 = *v21;
        goto LABEL_32;
      }
    }

    v24 = *(v23 - 8);
    if (!v24)
    {
      goto LABEL_39;
    }

LABEL_44:
    *(v23 - 7) = v24;
    operator delete(v24);
    goto LABEL_39;
  }

  v15 = (a2 + v14);
  if (v13 != v8)
  {
    v16 = v8 + 3;
    do
    {
      if (v5 != (v16 - 3))
      {
        sub_380A40(v16 - 3, *v5, v5[1], 0x8E38E38E38E38E39 * ((v5[1] - *v5) >> 3));
        sub_35354C(v16, v5[3], v5[4], 0xAAAAAAAAAAAAAAABLL * ((v5[4] - v5[3]) >> 2));
      }

      v16[3] = v5[6];
      v5 += 7;
      v16 += 7;
      v14 -= 56;
    }

    while (v14);
    v13 = *(a1 + 8);
  }

  v25 = v13;
  v18 = v13;
  if (v15 != a3)
  {
    v18 = v13;
    do
    {
      sub_380598(v18, v15);
      v15 += 7;
      v18 = v25 + 7;
      v25 += 7;
    }

    while (v15 != a3);
  }

  *(a1 + 8) = v18;
}

void sub_380568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3809D8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_380580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3809D8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void *sub_380598(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_3806A4(a1, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v5 = a2[3];
  v4 = a2[4];
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  a1[6] = a2[6];
  return a1;
}

void sub_380680(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_37ED80(v1);
  _Unwind_Resume(a1);
}

void sub_3806A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_3807A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_3808B8(&a11);
  *(v11 + 8) = v12;
  sub_380938(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_3807C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = a2[1];
  v5 = a2[2];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), a2[4], a2[5]);
  }

  else
  {
    v7 = *(a2 + 2);
    *(a1 + 48) = a2[6];
    *(a1 + 32) = v7;
  }

  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];
  return a1;
}

void sub_380898(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3808B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      if (*(v3 - 17) < 0)
      {
        break;
      }

      v5 = *(v3 - 64);
      if (v5)
      {
        goto LABEL_10;
      }

LABEL_4:
      v3 -= 72;
    }

    operator delete(*(v3 - 40));
    v5 = *(v3 - 64);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    *(v3 - 56) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void ***sub_380938(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_12:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (*(v4 - 17) < 0)
      {
        operator delete(*(v4 - 5));
        v6 = *(v4 - 8);
        if (v6)
        {
          goto LABEL_10;
        }

LABEL_5:
        v4 -= 9;
        if (v4 == v3)
        {
          v5 = **a1;
          goto LABEL_12;
        }
      }

      v6 = *(v4 - 8);
      if (!v6)
      {
        goto LABEL_5;
      }

LABEL_10:
      *(v4 - 7) = v6;
      operator delete(v6);
      goto LABEL_5;
    }
  }

  return a1;
}

uint64_t sub_3809D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 7;
        sub_37ECA8(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_380A40(void **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 3) < a4)
  {
    if (!v8)
    {
      goto LABEL_44;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_43:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_44:
      if (a4 <= 0x38E38E38E38E38ELL)
      {
        v31 = 0x8E38E38E38E38E39 * (v7 >> 3);
        v32 = 2 * v31;
        if (2 * v31 <= a4)
        {
          v32 = a4;
        }

        if (v31 >= 0x1C71C71C71C71C7)
        {
          v33 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v33 = v32;
        }

        if (v33 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }
      }

      sub_1794();
    }

    while (*(v10 - 17) < 0)
    {
      operator delete(*(v10 - 5));
      v12 = *(v10 - 8);
      if (v12)
      {
        goto LABEL_10;
      }

LABEL_5:
      v10 -= 9;
      if (v10 == v8)
      {
        v11 = *a1;
        goto LABEL_43;
      }
    }

    v12 = *(v10 - 8);
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(v10 - 7) = v12;
    operator delete(v12);
    goto LABEL_5;
  }

  v13 = a1[1];
  if (0x8E38E38E38E38E39 * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        v26 = &v8[v23 * 8];
        v27 = &a2[v23];
        *&v8[v23 * 8] = a2[v23];
        if (v8 != a2)
        {
          sub_30945C(v26 + 1, v27[1], v27[2], (v27[2] - v27[1]) >> 3);
          v28 = (v27 + 4);
          v29 = *(v27 + 55);
          if (*(v26 + 55) < 0)
          {
            if (v29 >= 0)
            {
              v24 = v27 + 4;
            }

            else
            {
              v24 = *v28;
            }

            if (v29 >= 0)
            {
              v25 = *(v27 + 55);
            }

            else
            {
              v25 = a2[v23 + 5];
            }

            sub_13B38((v26 + 4), v24, v25);
          }

          else if ((*(v27 + 55) & 0x80) != 0)
          {
            sub_13A68(v26 + 32, *v28, a2[v23 + 5]);
          }

          else
          {
            v30 = *v28;
            v26[6] = v27[6];
            *(v26 + 2) = v30;
          }
        }

        v26[7] = v27[7];
        v26[8] = v27[8];
        v23 += 9;
      }

      while (v27 + 9 != a3);
      v13 = a1[1];
      v8 += v23 * 8;
    }

    while (1)
    {
      if (v13 == v8)
      {
        a1[1] = v8;
        return;
      }

      if (*(v13 - 17) < 0)
      {
        break;
      }

      v35 = *(v13 - 64);
      if (v35)
      {
        goto LABEL_64;
      }

LABEL_58:
      v13 -= 72;
    }

    operator delete(*(v13 - 40));
    v35 = *(v13 - 64);
    if (!v35)
    {
      goto LABEL_58;
    }

LABEL_64:
    *(v13 - 56) = v35;
    operator delete(v35);
    goto LABEL_58;
  }

  v14 = (a2 + v13 - v8);
  if (v13 != v8)
  {
    v15 = 0;
    do
    {
      v18 = &v8[v15 * 8];
      v19 = &a2[v15];
      *&v8[v15 * 8] = a2[v15];
      if (v8 != a2)
      {
        sub_30945C(v18 + 1, v19[1], v19[2], (v19[2] - v19[1]) >> 3);
        v20 = (v19 + 4);
        v21 = *(v19 + 55);
        if (*(v18 + 55) < 0)
        {
          if (v21 >= 0)
          {
            v16 = v19 + 4;
          }

          else
          {
            v16 = *v20;
          }

          if (v21 >= 0)
          {
            v17 = *(v19 + 55);
          }

          else
          {
            v17 = a2[v15 + 5];
          }

          sub_13B38((v18 + 4), v16, v17);
        }

        else if ((*(v19 + 55) & 0x80) != 0)
        {
          sub_13A68(v18 + 32, *v20, a2[v15 + 5]);
        }

        else
        {
          v22 = *v20;
          v18[6] = v19[6];
          *(v18 + 2) = v22;
        }
      }

      v18[7] = v19[7];
      v18[8] = v19[8];
      v15 += 9;
    }

    while (v19 + 9 != v14);
    v13 = a1[1];
  }

  v36 = v13;
  v34 = v13;
  if (v14 != a3)
  {
    v34 = v13;
    do
    {
      sub_3807C8(v34, v14);
      v14 += 9;
      v34 = v36 + 72;
      v36 += 72;
    }

    while (v14 != a3);
  }

  a1[1] = v34;
}

void sub_380E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3808B8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_380E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3808B8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_380E70(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_3811B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_303BF0(va);
  _Unwind_Resume(a1);
}

void sub_3811CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_303BF0(va);
  _Unwind_Resume(a1);
}

void *sub_3811E0(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_381350(a1, *a2, a2[1], (a2[1] - *a2) >> 6);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v5 = a2[3];
  v4 = a2[4];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v7 = a2[6];
  v6 = a2[7];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_3812EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *v11;
  if (*v11)
  {
    *(v10 + 56) = v14;
    operator delete(v14);
    v15 = *v12;
    if (!*v12)
    {
LABEL_3:
      a10 = v10;
      sub_381714(&a10);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v15 = *v12;
    if (!*v12)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 32) = v15;
  operator delete(v15);
  a10 = v10;
  sub_381714(&a10);
  _Unwind_Resume(a1);
}

void sub_381350(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_38143C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_303214(&a11);
  *(v11 + 8) = v12;
  sub_381714(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_38145C(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = *(a2 + 24);
  *(result + 40) = 0;
  *(result + 24) = v3;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_38157C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_52FF0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3815B4(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 8);
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      v5 = v4[1];
      if (v5 != *v4)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v4 += 3;
      v3 += 3;
    }

    while (v4 != a3);
  }

  *(result + 8) = v3;
  return result;
}

void sub_3816E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_35390(va1);
  sub_52F40(va);
  *(a3 + 8) = a2;
  _Unwind_Resume(a1);
}

void sub_381714(void ***a1)
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
        v7 = *(v4 - 3);
        if (v7)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v8 = v4 - 8;
        v9 = *(v4 - 8);
        if (v9)
        {
          v10 = *(v4 - 7);
          v6 = *(v4 - 8);
          if (v10 != v9)
          {
            v11 = *(v4 - 7);
            do
            {
              v14 = *(v11 - 3);
              v11 -= 3;
              v13 = v14;
              if (v14)
              {
                v15 = *(v10 - 2);
                v12 = v13;
                if (v15 != v13)
                {
                  v16 = *(v10 - 2);
                  do
                  {
                    v18 = *(v16 - 3);
                    v16 -= 24;
                    v17 = v18;
                    if (v18)
                    {
                      *(v15 - 2) = v17;
                      operator delete(v17);
                    }

                    v15 = v16;
                  }

                  while (v16 != v13);
                  v12 = *v11;
                }

                *(v10 - 2) = v13;
                operator delete(v12);
              }

              v10 = v11;
            }

            while (v11 != v9);
            v6 = *v8;
          }

          *(v4 - 7) = v9;
          operator delete(v6);
        }

        v4 -= 8;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_381850(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 9);
      if (v6)
      {
        *(v2 + 10) = v6;
        operator delete(v6);
      }

      v7 = *(v2 + 6);
      if (v7)
      {
        *(v2 + 7) = v7;
        operator delete(v7);
      }

      v8 = (v2 + 24);
      sub_381714(&v8);
      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_3818E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = a1[1];
    v7 = a1[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v7 - v8) >> 6) >= a5)
    {
      v13 = v8 - a2;
      if (0x2E8BA2E8BA2E8BA3 * ((v8 - a2) >> 6) >= a5)
      {
        v19 = 704 * a5;
        sub_381C40(a1, a2, a1[1], a2 + 704 * a5);
        v20 = v19 + v6;
        v21 = v5;
        do
        {
          sub_37F464(v21, v6);
          v22 = *(v6 + 480);
          *(v21 + 464) = *(v6 + 464);
          *(v21 + 480) = v22;
          if (v21 != v6)
          {
            sub_383574((v21 + 488), *(v6 + 488), *(v6 + 496), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 496) - *(v6 + 488)) >> 4));
          }

          sub_3833D0(v21 + 512, v6 + 512);
          v6 += 704;
          v21 += 704;
        }

        while (v6 != v20);
      }

      else
      {
        v15 = v13 + a3;
        a1[1] = sub_381F14(a1, v13 + a3, a4, a1[1]);
        if (v13 >= 1)
        {
          sub_381C40(a1, v5, v8, v5 + 704 * a5);
          v17 = v5;
          do
          {
            sub_37F464(v17, v6);
            v18 = *(v6 + 480);
            *(v17 + 464) = *(v6 + 464);
            *(v17 + 480) = v18;
            if (v17 != v6)
            {
              sub_383574((v17 + 488), *(v6 + 488), *(v6 + 496), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 496) - *(v6 + 488)) >> 4));
            }

            sub_3833D0(v17 + 512, v6 + 512);
            v6 += 704;
            v17 += 704;
          }

          while (v6 != v15);
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 + 0x2E8BA2E8BA2E8BA3 * ((v8 - *a1) >> 6);
      if (v10 > 0x5D1745D1745D17)
      {
        sub_1794();
      }

      v11 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v9) >> 6);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x2E8BA2E8BA2E8BLL)
      {
        v12 = 0x5D1745D1745D17;
      }

      else
      {
        v12 = v10;
      }

      v37 = a1;
      if (v12)
      {
        if (v12 <= 0x5D1745D1745D17)
        {
          operator new();
        }

        sub_1808();
      }

      v24 = (a2 - v9) >> 6 << 6;
      __p = 0;
      v34 = v24;
      v35 = v24;
      v36 = 0;
      v25 = 704 * a5;
      v26 = v24 + 704 * a5;
      do
      {
        sub_381FC0(v37, v24, v6);
        v24 += 704;
        v6 += 704;
        v25 -= 704;
      }

      while (v25);
      v35 = v26;
      v5 = sub_381D68(a1, &__p, v5);
      v27 = v34;
      while (1)
      {
        v28 = v35;
        if (v35 == v27)
        {
          break;
        }

        v35 -= 704;
        sub_33D080(v28 - 192);
        v29 = *(v28 - 216);
        if (v29)
        {
          v30 = *(v28 - 208);
          v31 = *(v28 - 216);
          if (v30 != v29)
          {
            do
            {
              v30 = sub_33D5A0(v30 - 176);
            }

            while (v30 != v29);
            v31 = *(v28 - 216);
          }

          *(v28 - 208) = v29;
          operator delete(v31);
        }

        sub_2C0F28(v28 - 704);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_381C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_362F9C(va);
  _Unwind_Resume(a1);
}

void sub_381C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_362F9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_381C40(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = a2 + v7 - a4;
  result = v7;
  if (v8 < a3)
  {
    v11 = a2 + v7 - a4;
    result = v7;
    do
    {
      sub_362BB4(result, v11);
      v11 += 704;
      result = v12 + 704;
    }

    while (v11 < a3);
  }

  *(a1 + 8) = result;
  if (v7 != a4)
  {
    do
    {
      v13 = v8 - 704;
      sub_33AE88((v7 - 704), v8 - 704);
      v14 = *(v8 - 224);
      v15 = (v7 - 216);
      v16 = *(v7 - 216);
      *(v7 - 240) = *(v8 - 240);
      *(v7 - 224) = v14;
      if (v16)
      {
        v17 = *(v7 - 208);
        v18 = v16;
        if (v17 != v16)
        {
          do
          {
            v17 = sub_33D5A0(v17 - 176);
          }

          while (v17 != v16);
          v18 = *v15;
        }

        *(v7 - 208) = v16;
        operator delete(v18);
        *v15 = 0;
        *(v7 - 208) = 0;
        *(v7 - 200) = 0;
      }

      *(v7 - 216) = *(v8 - 216);
      *(v7 - 200) = *(v8 - 200);
      *(v8 - 216) = 0;
      *(v8 - 208) = 0;
      *(v8 - 200) = 0;
      result = sub_33CE04(v7 - 192, v8 - 192);
      v7 -= 704;
      v8 -= 704;
    }

    while (v13 != a2);
  }

  return result;
}

uint64_t sub_381D68(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      sub_362BB4(v8, v9);
      v9 += 704;
      v8 = v10 + 704;
    }

    while (v9 != v7);
    v11 = a3;
    do
    {
      sub_33D080(v11 + 512);
      v12 = *(v11 + 488);
      if (v12)
      {
        v13 = *(v11 + 496);
        v14 = *(v11 + 488);
        if (v13 != v12)
        {
          do
          {
            v13 = sub_33D5A0(v13 - 176);
          }

          while (v13 != v12);
          v14 = *(v11 + 488);
        }

        *(v11 + 496) = v12;
        operator delete(v14);
      }

      sub_2C0F28(v11);
      v11 += 704;
    }

    while (v11 != v7);
  }

  v15 = *a1;
  v16 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v17 = v16 + v15 - a3;
  if (v15 != a3)
  {
    v18 = v16 + v15 - a3;
    v19 = v15;
    do
    {
      sub_362BB4(v18, v19);
      v19 += 704;
      v18 = v20 + 704;
    }

    while (v19 != a3);
    do
    {
      sub_33D080(v15 + 512);
      v21 = *(v15 + 488);
      if (v21)
      {
        v22 = *(v15 + 496);
        v23 = *(v15 + 488);
        if (v22 != v21)
        {
          do
          {
            v22 = sub_33D5A0(v22 - 176);
          }

          while (v22 != v21);
          v23 = *(v15 + 488);
        }

        *(v15 + 496) = v21;
        operator delete(v23);
      }

      sub_2C0F28(v15);
      v15 += 704;
    }

    while (v15 != a3);
  }

  a2[1] = v17;
  v24 = *a1;
  *a1 = v17;
  a1[1] = v24;
  a2[1] = v24;
  v25 = a1[1];
  a1[1] = a2[2];
  a2[2] = v25;
  v26 = a1[2];
  a1[2] = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return v6;
}