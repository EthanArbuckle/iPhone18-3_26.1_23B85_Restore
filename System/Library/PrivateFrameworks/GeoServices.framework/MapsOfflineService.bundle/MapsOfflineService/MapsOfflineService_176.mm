void sub_ACCB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  STACK[0x288] = v16 + 240;
  sub_A31F30(&STACK[0x288]);
  v18 = *(v16 + 216);
  if (v18)
  {
    *(v16 + 224) = v18;
    operator delete(v18);
    v19 = *a10;
    if (*a10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *a10;
    if (*a10)
    {
LABEL_3:
      *(v16 + 200) = v19;
      operator delete(v19);
      if ((*(v16 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  if ((*(v16 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    v20 = a16;
    if (!*a16)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a11);
  v20 = a16;
  if (!*a16)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_A95778(v20);
  operator delete(*v20);
  _Unwind_Resume(a1);
}

double sub_ACD084(uint64_t a1)
{
  *(a1 + 200) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 184) = 0;
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  if (v2 != v3)
  {
    v4 = *(a1 + 208);
    v5 = *(a1 + 232);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 240) = v2;
  v7 = *(a1 + 280);
  v8 = *(a1 + 288);
  if (v7 != v8)
  {
    v9 = *(a1 + 256);
    v10 = *(a1 + 280);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 288) = v7;
  v12 = *(a1 + 352);
  v13 = *(a1 + 360);
  if (v12 != v13)
  {
    v14 = *(a1 + 328);
    v15 = *(a1 + 304);
    v16 = *(a1 + 352);
    do
    {
      v17 = *v16++;
      *(v14 + ((v17 >> 3) & 0x1FFFFFF8)) &= ~(1 << v17);
      *(v15 + 4 * v17) = -1;
    }

    while (v16 != v13);
  }

  *(a1 + 360) = v12;
  sub_C4306C((a1 + 384));
  v25 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v26, &__p);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  *(a1 + 480) = v26;
  *(a1 + 496) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  v18 = v33;
  *(a1 + 568) = v32;
  *(a1 + 584) = v18;
  v19 = v35;
  *(a1 + 600) = v34;
  *(a1 + 616) = v19;
  v20 = v29;
  *(a1 + 504) = v28;
  *(a1 + 520) = v20;
  v21 = v31;
  *(a1 + 536) = v30;
  *(a1 + 552) = v21;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v22 = COERCE_DOUBLE(vadd_s32(vdup_n_s32(2 * *(a1 + 16)), 0x200000004));
  *(a1 + 120) = v22;
  return sub_C430C8((a1 + 384), *(a1 + 8), v22);
}

void sub_ACD23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ACD258(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 200);
    *(a1 + 200) = v3 + 1;
    v4 = *(a1 + 32);
    *&v21 = 0x1FFFFFFFELL;
    v5 = sub_A98E8C(v4, &v21);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, &v21);
      v6 = *(v8 + 8);
    }

    v28 = v6;
    sub_AD0464((a1 + 128), 0);
    v21 = xmmword_229B660;
    v22 = -1;
    v23 = v3;
    v24 = v2;
    v25 = 0;
    v26 = -1;
    v27 = 0x7FFFFFFF;
    v9 = *(a1 + 128);
    if (*(a1 + 136) == v9 || (v11 = *v9, v10 = *(*(a1 + 128) + 4), v10 == v11))
    {
      sub_AD0BAC((a1 + 128), 0, &v21);
    }

    else
    {
      v15 = 0;
      v16 = *(a1 + 152);
      v17 = (v16 + 56 * v10);
      v18 = (v16 + 56 * v11);
      do
      {
        v19 = v18[7];
        if (v19 != 0x7FFFFFFF)
        {
          if (v19 <= v24 && v18[8] <= v25 && v18[9] <= HIDWORD(v25))
          {
            goto LABEL_26;
          }

          if (v24 <= v19 && v25 <= v18[8] && HIDWORD(v25) <= v18[9])
          {
            v18[7] = 0x7FFFFFFF;
            v15 = 1;
          }
        }

        v18 += 14;
      }

      while (v18 != v17);
      v20 = sub_AD0BAC((a1 + 128), 0, &v21);
      *(v20 + 44) = -1;
      *(v20 + 52) = 0x7FFFFFFF;
LABEL_26:
      if (v15)
      {
        sub_AD10F4((a1 + 128), 0);
      }
    }

    v12 = *(a1 + 120);
    v13 = v12 * (v6 + 1);
    v14 = v13 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_AD0554((a1 + 128), 0, v14, v13, v12 + v12 * *(a1 + 376), 2147483646))
      {
        return;
      }
    }

    else if (!sub_AD0554((a1 + 128), 0, v14, v13, 0xFFFFFFFF, 2147483646))
    {
      return;
    }

    if (*(a1 + 216) <= v6)
    {
      sub_4D9168(a1 + 208, v6 + 1, 0);
    }

    if (((*(*(a1 + 208) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
    {
      sub_DD38(a1 + 232, &v28);
      *(*(a1 + 208) + ((v28 >> 3) & 0x1FFFFFF8)) |= 1 << v28;
    }
  }
}

double sub_ACD4EC(uint64_t a1, int a2)
{
  sub_7E9A4(v40);
  v4 = *(a1 + 232);
  v38 = *(a1 + 240);
  if (v4 != v38)
  {
    while (1)
    {
      v39 = *v4;
      v5 = *sub_A9C5E0((*(a1 + 32) + 88), v39);
      if (HIDWORD(v5) == 1 && (v5 + 3) < 2)
      {
LABEL_12:
        v11 = 0;
        goto LABEL_17;
      }

      v7 = *(*(a1 + 24) + 4120);
      if (*(v7 + 17) == 1)
      {
        break;
      }

      v8 = sub_502FF8(v7 + 24, __ROR8__(v5, 32), 0, "stop");
      v12 = (v8 - *v8);
      if (*v12 >= 0x15u)
      {
        v10 = v12[10];
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v11 = 30;
LABEL_17:
      sub_AD0464((a1 + 128), 0);
      sub_AD1858((a1 + 128), a2 + 1 + *(a1 + 120) + *(a1 + 120) * v39, 0);
      v13 = *(a1 + 128);
      if (*(a1 + 136) != v13)
      {
        v14 = *(a1 + 152);
        v15 = *v13;
LABEL_19:
        v16 = v14;
        goto LABEL_22;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v14 = *(a1 + 152);
      v15 = *v13;
      if (*(a1 + 136) != v13)
      {
        goto LABEL_19;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v16 = *(a1 + 152);
LABEL_22:
      v17 = (v14 + 56 * v15);
      v18 = (v16 + 56 * v13[1]);
      if (v17 == v18)
      {
        goto LABEL_29;
      }

      v19 = v39;
      v20 = v18 - v17 - 56;
      if (v20 <= 0x37)
      {
        v21 = (v14 + 56 * v15);
        do
        {
LABEL_28:
          *v21 = v19;
          v27 = *(v21 + 7);
          *(v21 + 3) = v27;
          *(v21 + 4) = -1;
          *(v21 + 7) = v27 + v11;
          v21 += 56;
        }

        while (v21 != v18);
        goto LABEL_29;
      }

      v22 = v20 / 0x38 + 1;
      v21 = &v17[56 * (v22 & 0xFFFFFFFFFFFFFFELL)];
      v23 = (v17 + 84);
      v24 = v22 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v23 - 21) = v19;
        *(v23 - 7) = v19;
        v25 = *(v23 - 14);
        v26 = *v23;
        *(v23 - 18) = v25;
        *(v23 - 17) = -1;
        *(v23 - 4) = v26;
        *(v23 - 3) = -1;
        *(v23 - 14) = v25 + v11;
        *v23 = v26 + v11;
        v23 += 28;
        v24 -= 2;
      }

      while (v24);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_28;
      }

LABEL_29:
      v28 = v39;
      v29 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v30 = v29 + v29 * *(a1 + 376) + 1;
        v31 = *(a1 + 48);
        if (v31)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v30 = -1;
        v31 = *(a1 + 48);
        if (v31)
        {
LABEL_31:
          if (*v31 > v39)
          {
            v32 = 0;
            v33 = *(a1 + 124) + ~a2;
            v34 = v33;
            while (v32 <= v33)
            {
              v35 = *sub_A9C7DC(v31 + 2, v31[1] * v28 + v34);
              v32 += 2;
              v34 -= 2;
              if (v35 != 0x7FFFFFFF)
              {
                goto LABEL_39;
              }
            }
          }

          v35 = 0x7FFFFFFF;
          goto LABEL_39;
        }
      }

      v35 = 2147483646;
LABEL_39:
      if (sub_AD0554((a1 + 128), 0, a2 + 2 + v29 + v29 * v28, v29 + v29 * v28 + 1, v30, v35))
      {
        v36 = v39;
        if (*(a1 + 264) <= v39)
        {
          sub_4D9168(a1 + 256, v39 + 1, 0);
          v36 = v39;
        }

        if (((*(*(a1 + 256) + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
        {
          sub_DD38(a1 + 280, &v39);
          *(*(a1 + 256) + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
        }
      }

      if (++v4 == v38)
      {
        goto LABEL_44;
      }
    }

    v8 = sub_A74944(v7 + 24, v5, 0, "transfers at stop");
    v9 = (v8 - *v8);
    if (*v9 < 5u)
    {
      goto LABEL_12;
    }

    v10 = v9[2];
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = *(v8 + v10);
    goto LABEL_17;
  }

LABEL_44:
  result = sub_7EA60(v40) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

double sub_ACD8B4(uint64_t a1, int a2)
{
  sub_7E9A4(v253);
  v4 = *(a1 + 232);
  v230 = *(a1 + 240);
  if (v4 != v230)
  {
    v231 = a2 + 2;
    v237 = ~a2;
    v238 = a2 + 1;
    while (1)
    {
      v233 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A74644(&v247, *(a1 + 24), *v6);
      v7 = v248;
      v8 = 16;
      if (v252)
      {
        v8 = 32;
      }

      if (v248 < *(&v247 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v233 + 1;
      if (v233 + 1 == v230)
      {
        goto LABEL_352;
      }
    }

    v239 = v5 + 1;
    v242 = v5;
LABEL_11:
    v10 = __ROR8__(*v7, 32);
    v11 = *(a1 + 32);
    v12 = *(v11 + 56) - 1;
    v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
    v14 = v13 ^ (v13 >> 33);
    v15 = *(v11 + 80);
    v17 = *(v11 + 64);
    v16 = *(v11 + 68);
    v18 = v14 & v12;
    v19 = (v15 + 12 * (v14 & v12));
    v21 = *v19;
    v20 = v19[1];
    if (v16 != v20 || v17 != v21)
    {
      if (!*(v11 + 40))
      {
        v41 = 1;
        while (__PAIR64__(v20, v21) != v10)
        {
          v18 = (v18 + v41) & v12;
          v42 = (v15 + 12 * v18);
          v21 = *v42;
          v20 = v42[1];
          ++v41;
          if (v16 == v20 && v17 == v21)
          {
            goto LABEL_55;
          }
        }

LABEL_51:
        if (v18 != -1)
        {
          v44 = v15 + 12 * v18;
          v45 = *(v44 + 8);
          if (v45 == -1)
          {
            goto LABEL_53;
          }

          goto LABEL_103;
        }

        v23 = -1;
        if (sub_A99094(*(a1 + 32), 1))
        {
LABEL_29:
          v27 = *(v11 + 56) - 1;
          v28 = *(v11 + 80);
          v30 = *(v11 + 64);
          v29 = *(v11 + 68);
          v31 = v27 & v14;
          v32 = (v28 + 12 * (v27 & v14));
          v34 = *v32;
          v33 = v32[1];
          v35 = *(v11 + 40);
          if (v29 == v33 && v30 == v34)
          {
LABEL_93:
            v37 = v31;
            goto LABEL_94;
          }

          if (v35)
          {
            v37 = -1;
            v38 = 1;
            do
            {
              if (*(v11 + 36) == v33 && *(v11 + 32) == v34)
              {
                if (v37 == -1)
                {
                  v37 = v31;
                }
              }

              else if (__PAIR64__(v33, v34) == v10)
              {
                goto LABEL_83;
              }

              v31 = (v31 + v38) & v27;
              v39 = (v28 + 12 * v31);
              v34 = *v39;
              v33 = v39[1];
              ++v38;
            }

            while (v29 != v33 || v30 != v34);
            if (v37 == -1)
            {
              goto LABEL_93;
            }

LABEL_94:
            v69 = *(v11 + 48);
            if ((v69 - v35) >= 0x1555555555555555)
            {
LABEL_361:
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }

            if (v35 && ((v70 = (v28 + 12 * v37), *(v11 + 36) == v70[1]) ? (v71 = *(v11 + 32) == *v70) : (v71 = 0), v71))
            {
              *(v11 + 40) = v35 - 1;
            }

            else
            {
              *(v11 + 48) = v69 + 1;
            }

            v72 = v28 + 12 * v37;
            *v72 = v10;
            *(v72 + 8) = -1;
            v44 = *(v11 + 80) + 12 * v37;
            v45 = *(v44 + 8);
            if (v45 != -1)
            {
              goto LABEL_103;
            }

LABEL_53:
            v46 = *(v11 + 112);
            *(v11 + 112) = v46 + 1;
            *(v44 + 8) = v46;
            v48 = *(v11 + 96);
            v47 = *(v11 + 104);
            if (v48 >= v47)
            {
              v55 = *(v11 + 88);
              v56 = v48 - v55;
              v57 = (v48 - v55) >> 3;
              v58 = v57 + 1;
              if ((v57 + 1) >> 61)
              {
                sub_1794();
              }

              v59 = v47 - v55;
              if (v59 >> 2 > v58)
              {
                v58 = v59 >> 2;
              }

              if (v59 >= 0x7FFFFFFFFFFFFFF8)
              {
                v60 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v58;
              }

              if (v60)
              {
                if (!(v60 >> 61))
                {
                  operator new();
                }

                goto LABEL_360;
              }

              v65 = (v48 - v55) >> 3;
              v66 = (8 * v57);
              v67 = (8 * v57 - 8 * v65);
              *v66 = v10;
              v49 = v66 + 1;
              memcpy(v67, v55, v56);
              *(v11 + 88) = v67;
              *(v11 + 96) = v49;
              *(v11 + 104) = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *v48 = v10;
              v49 = v48 + 8;
            }

            *(v11 + 96) = v49;
            v68 = *(v44 + 8);
            *(a1 + 576) = *(a1 + 576) + 1.0;
            v244 = v68;
            if (v5 == v68)
            {
              goto LABEL_301;
            }

LABEL_104:
            v73 = *(a1 + 128);
            v74 = *(a1 + 136);
            if (v74 == v73)
            {
              v79 = 1 - ((v74 - v73) >> 3);
              v80 = *(a1 + 144);
              if (v79 > (v80 - v74) >> 3)
              {
                v81 = v80 - v73;
                v82 = v81 >> 2;
                if ((v81 >> 2) <= 1)
                {
                  v82 = 1;
                }

                v220 = v81 >= 0x7FFFFFFFFFFFFFF8;
                v83 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v220)
                {
                  v83 = v82;
                }

                if (!(v83 >> 61))
                {
                  operator new();
                }

                goto LABEL_360;
              }

              bzero(*(a1 + 136), 8 * v79);
              v84 = &v74[2 * v79];
              *(a1 + 136) = v84;
              v73 = *(a1 + 128);
              v75 = *(a1 + 152);
              v76 = *v73;
              if (v73 == v84)
              {
                v77 = *(a1 + 144);
                if (v77 == v84)
                {
                  v86 = 1;
                  v87 = v77 - v73;
                  if ((v87 >> 2) > 1)
                  {
                    v86 = v87 >> 2;
                  }

                  if (v87 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v88 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v88 = v86;
                  }

                  v78 = v242;
                  if (v88)
                  {
                    if (!(v88 >> 61))
                    {
                      operator new();
                    }

                    goto LABEL_360;
                  }

                  *&dword_0 = 0;
                  *(a1 + 128) = 0;
                  *(a1 + 136) = 8;
                  *(a1 + 144) = 0;
                  if (v73)
                  {
                    operator delete(v73);
                  }
                }

                else
                {
                  *v84 = 0;
                  *(a1 + 136) = v84 + 2;
                  v78 = v242;
                }

                v73 = *(a1 + 128);
                v85 = *(a1 + 152);
                goto LABEL_128;
              }
            }

            else
            {
              v75 = *(a1 + 152);
              v76 = *v73;
            }

            v85 = v75;
            v78 = v242;
LABEL_128:
            sub_AD06A4((a1 + 128), 0, (v75 + 56 * v76), (v85 + 56 * v73[1]));
            v89 = v238 + *(a1 + 120) * v239;
            v90 = *(a1 + 128);
            v91 = *(a1 + 136);
            if (v89 >= (v91 - v90) >> 3)
            {
              goto LABEL_166;
            }

            v92 = v90[2 * v89];
            v93 = v90[2 * v89 + 1];
            v94 = v93 - v92;
            if (v93 == v92)
            {
              goto LABEL_166;
            }

            v95 = 0;
            v96 = 0;
            do
            {
              v97 = *(a1 + 128);
              if (v89 >= (*(a1 + 136) - v97) >> 3)
              {
                goto LABEL_357;
              }

              v98 = v97[2 * v89];
              if (v97[2 * v89 + 1] - v98 <= v96)
              {
                goto LABEL_357;
              }

              v99 = v98 + v96;
              v100 = *(a1 + 152);
              if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - v100) >> 3) <= v99)
              {
LABEL_358:
                v228 = __cxa_allocate_exception(0x10uLL);
                sub_195A2D8(v228, "index out of range");
                goto LABEL_359;
              }

              v101 = v100 + 56 * v99;
              v102 = *v101;
              v103 = *(v101 + 16);
              v104 = *(v101 + 32);
              v257 = *(v101 + 48);
              v256 = v104;
              v254 = v102;
              v255 = v103;
              v106 = *v97;
              v105 = v97[1];
              if (v105 != *v97)
              {
                v107 = 0;
                v109 = (v100 + 56 * v105);
                v110 = (v100 + 56 * v106);
                while (1)
                {
                  v111 = v110[7];
                  if (v111 != 0x7FFFFFFF)
                  {
                    if (v111 <= SHIDWORD(v255) && v110[8] <= v256 && v110[9] <= DWORD1(v256))
                    {
                      goto LABEL_137;
                    }

                    if (SHIDWORD(v255) <= v111 && v256 <= v110[8] && DWORD1(v256) <= v110[9])
                    {
                      v110[7] = 0x7FFFFFFF;
                      v107 = 1;
                    }
                  }

                  v110 += 14;
                  if (v110 == v109)
                  {
                    goto LABEL_136;
                  }
                }
              }

              v107 = 0;
LABEL_136:
              v108 = sub_AD0BAC((a1 + 128), 0, &v254);
              *(v108 + 44) = -1;
              *(v108 + 52) = 0x7FFFFFFF;
LABEL_137:
              v95 |= v107;
              ++v96;
            }

            while (v96 != v94);
            v90 = *(a1 + 128);
            v91 = *(a1 + 136);
            if (v95)
            {
              if (v91 != v90)
              {
                v112 = *(a1 + 152);
                v113 = *v90;
                goto LABEL_152;
              }

              sub_30B70(a1 + 128, 1uLL);
              v90 = *(a1 + 128);
              v112 = *(a1 + 152);
              v113 = *v90;
              if (*(a1 + 136) == v90)
              {
                sub_30B70(a1 + 128, 1uLL);
                v90 = *(a1 + 128);
                v114 = *(a1 + 152);
              }

              else
              {
LABEL_152:
                v114 = v112;
              }

              v115 = (v112 + 56 * v113);
              v116 = (v114 + 56 * v90[1]);
              if (v115 != v116)
              {
                while (*(v115 + 7) != 0x7FFFFFFF)
                {
                  v115 = (v115 + 56);
                  if (v115 == v116)
                  {
                    v115 = v116;
                    break;
                  }
                }

                if (v116 == v115 || (v117 = (v115 + 56), (v115 + 56) == v116))
                {
                  if (*(a1 + 136) != v90)
                  {
                    goto LABEL_165;
                  }
                }

                else
                {
                  do
                  {
                    if (*(v117 + 7) != 0x7FFFFFFF)
                    {
                      v121 = *v117;
                      v122 = v117[1];
                      v123 = v117[2];
                      *(v115 + 6) = *(v117 + 6);
                      v115[1] = v122;
                      v115[2] = v123;
                      *v115 = v121;
                      v115 = (v115 + 56);
                    }

                    v117 = (v117 + 56);
                  }

                  while (v117 != v116);
                  v90 = *(a1 + 128);
                  if (*(a1 + 136) != v90)
                  {
                    goto LABEL_165;
                  }
                }

LABEL_158:
                sub_30B70(a1 + 128, 1uLL);
                v90 = *(a1 + 128);
                goto LABEL_165;
              }

              v115 = v116;
              if (*(a1 + 136) == v90)
              {
                goto LABEL_158;
              }

LABEL_165:
              sub_AD06A4((a1 + 128), 0, v115, (*(a1 + 152) + 56 * v90[1]));
              v90 = *(a1 + 128);
              v91 = *(a1 + 136);
            }

LABEL_166:
            if (v91 != v90)
            {
              v118 = *(a1 + 152);
              v119 = *v90;
              goto LABEL_181;
            }

            v124 = 1 - ((v91 - v90) >> 3);
            v125 = *(a1 + 144);
            if (v124 > (v125 - v91) >> 3)
            {
              v126 = v125 - v90;
              v127 = v126 >> 2;
              if ((v126 >> 2) <= 1)
              {
                v127 = 1;
              }

              v220 = v126 >= 0x7FFFFFFFFFFFFFF8;
              v128 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v220)
              {
                v128 = v127;
              }

              if (!(v128 >> 61))
              {
                operator new();
              }

              goto LABEL_360;
            }

            bzero(v91, 8 * v124);
            v129 = &v91[2 * v124];
            *(a1 + 136) = v129;
            v90 = *(a1 + 128);
            v118 = *(a1 + 152);
            v119 = *v90;
            if (v90 != v129)
            {
LABEL_181:
              v130 = v118;
              goto LABEL_193;
            }

            v120 = *(a1 + 144);
            if (v120 == v129)
            {
              v131 = 1;
              v132 = v120 - v90;
              if ((v132 >> 2) > 1)
              {
                v131 = v132 >> 2;
              }

              if (v132 >= 0x7FFFFFFFFFFFFFF8)
              {
                v133 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v133 = v131;
              }

              if (!v133)
              {
                *&dword_0 = 0;
                *(a1 + 128) = 0;
                *(a1 + 136) = 8;
                *(a1 + 144) = 0;
                if (v90)
                {
                  operator delete(v90);
                }

                goto LABEL_192;
              }

              if (!(v133 >> 61))
              {
                operator new();
              }

LABEL_360:
              sub_1808();
            }

            *v129 = 0;
            *(a1 + 136) = v129 + 2;
LABEL_192:
            v90 = *(a1 + 128);
            v130 = *(a1 + 152);
LABEL_193:
            v134 = v118 + 56 * v119;
            v135 = v130 + 56 * v90[1];
            if (v134 != v135)
            {
              v136 = v248;
              do
              {
                *v134 = v78;
                *(v134 + 16) = -1;
                v137 = *(v134 + 28);
                *(v134 + 12) = v137.i32[0];
                v138 = *(v136 + 2);
                v139 = v138 / 10;
                v140 = v138 % 10;
                if (v138 < 0)
                {
                  v141 = -5;
                }

                else
                {
                  v141 = 5;
                }

                *(v134 + 28) = vadd_s32(vdup_n_s32(v139 + (((103 * (v141 + v140)) >> 15) & 1) + ((103 * (v141 + v140)) >> 10)), v137);
                v134 += 56;
              }

              while (v134 != v135);
            }

            v142 = *(a1 + 120);
            if (*(a1 + 20) != 1)
            {
              v143 = 0xFFFFFFFFLL;
              v144 = v244;
              v145 = *(a1 + 48);
              v245 = 0xFFFFFFFFLL;
              if (v145)
              {
                goto LABEL_201;
              }

LABEL_208:
              v149 = 2147483646;
              v150 = *(a1 + 128);
              if (*(a1 + 136) == v150)
              {
                goto LABEL_301;
              }

              goto LABEL_213;
            }

            v143 = (v142 + v142 * *(a1 + 376) + 1);
            v144 = v244;
            v145 = *(a1 + 48);
            v245 = v143;
            if (!v145)
            {
              goto LABEL_208;
            }

LABEL_201:
            if (*v145 <= v144)
            {
              v149 = 0x7FFFFFFF;
              v150 = *(a1 + 128);
              if (*(a1 + 136) == v150)
              {
                goto LABEL_301;
              }
            }

            else
            {
              v146 = 0;
              v147 = *(a1 + 124) + v237;
              v148 = v147;
              do
              {
                if (v146 > v147)
                {
                  v149 = 0x7FFFFFFF;
                  v143 = v245;
                  v150 = *(a1 + 128);
                  if (*(a1 + 136) == v150)
                  {
                    goto LABEL_301;
                  }

                  goto LABEL_213;
                }

                v149 = *sub_A9C7DC(v145 + 2, v145[1] * v144 + v148);
                v146 += 2;
                v148 -= 2;
              }

              while (v149 == 0x7FFFFFFF);
              v143 = v245;
              v150 = *(a1 + 128);
              if (*(a1 + 136) == v150)
              {
                goto LABEL_301;
              }
            }

LABEL_213:
            v151 = v150[1];
            v152 = v151 - *v150;
            if (v151 == *v150)
            {
              goto LABEL_301;
            }

            if (v149 == 0x7FFFFFFF)
            {
              v153 = 0;
              while (v150[1] - *v150 > v153)
              {
                if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - *(a1 + 152)) >> 3) <= (v153 + *v150))
                {
                  goto LABEL_358;
                }

                if (v152 == ++v153)
                {
                  goto LABEL_301;
                }
              }

LABEL_357:
              v228 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v228, "key does not exist and cannot be added");
LABEL_359:
            }

            v236 = v144;
            v246 = 0;
            v154 = 0;
            v232 = v244 + 1;
            v155 = (v142 * v232 + 1);
            v240 = (v143 + 1);
            *v241 = (v231 + v142 * v232);
            v243 = v155;
            while (1)
            {
              while (1)
              {
                v156 = *(a1 + 128);
                v157 = *(a1 + 136);
                v158 = v157 - v156;
                if (v157 == v156 || v156[1] - *v156 <= v154)
                {
                  goto LABEL_357;
                }

                v159 = *v156 + v154;
                v160 = *(a1 + 152);
                if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - v160) >> 3) <= v159)
                {
                  goto LABEL_358;
                }

                v161 = v160 + 56 * v159;
                v163 = *(v161 + 16);
                v162 = *(v161 + 32);
                v164 = *v161;
                v257 = *(v161 + 48);
                v256 = v162;
                v254 = v164;
                v255 = v163;
                if (SHIDWORD(v163) <= v149)
                {
                  break;
                }

                if (++v154 == v152)
                {
                  goto LABEL_295;
                }
              }

              if (v143 == 0xFFFFFFFF)
              {
                goto LABEL_259;
              }

              v165 = v158 >> 3;
              if (v158 >> 3 > v143)
              {
                goto LABEL_228;
              }

              v169 = v240 - v165;
              if (v240 <= v165)
              {
                break;
              }

              v170 = *(a1 + 144);
              if (v169 > (v170 - v157) >> 3)
              {
                v171 = v170 - v156;
                v172 = v171 >> 2;
                if (v171 >> 2 <= v240)
                {
                  v172 = v240;
                }

                v220 = v171 >= 0x7FFFFFFFFFFFFFF8;
                v173 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v220)
                {
                  v173 = v172;
                }

                if (!(v173 >> 61))
                {
                  operator new();
                }

                goto LABEL_360;
              }

              bzero(v157, 8 * v169);
              v143 = v245;
              v157 += 8 * v169;
              *(a1 + 136) = v157;
              v156 = *(a1 + 128);
              v160 = *(a1 + 152);
              v155 = v243;
              v166 = v156[2 * v245];
              v167 = (v157 - v156) >> 3;
              if (v167 > v245)
              {
                goto LABEL_229;
              }

LABEL_241:
              v174 = v240 - v167;
              if (v240 > v167)
              {
                v175 = *(a1 + 144);
                if (v174 <= (v175 - v157) >> 3)
                {
                  v179 = 8 * v174;
                  bzero(v157, 8 * v174);
                  *(a1 + 136) = &v157[v179];
                }

                else
                {
                  v176 = (v157 - v156) >> 3;
                  v177 = v176 + v174;
                  if ((v176 + v174) >> 61)
                  {
                    sub_1794();
                  }

                  v178 = v175 - v156;
                  if (v178 >> 2 > v177)
                  {
                    v177 = v178 >> 2;
                  }

                  if (v178 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v177 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  if (v177)
                  {
                    if (!(v177 >> 61))
                    {
                      operator new();
                    }

                    goto LABEL_360;
                  }

                  v234 = (v157 - v156) >> 3;
                  v235 = v157 - v156;
                  v180 = (8 * v176);
                  v181 = 8 * v174;
                  bzero(v180, 8 * v174);
                  v182 = &v180[v181];
                  v183 = &v180[-8 * v234];
                  memcpy(v183, v156, v235);
                  *(a1 + 128) = v183;
                  *(a1 + 136) = v182;
                  *(a1 + 144) = 0;
                  if (v156)
                  {
                    operator delete(v156);
                  }
                }

                v156 = *(a1 + 128);
                v168 = *(a1 + 152);
                v143 = v245;
                v155 = v243;
                goto LABEL_257;
              }

              if (v240 < v167)
              {
                *(a1 + 136) = &v156[2 * v240];
              }

LABEL_229:
              v168 = v160;
LABEL_257:
              v184 = (v160 + 56 * v166);
              for (i = (v168 + 56 * v156[2 * v143 + 1]); v184 != i; v184 += 14)
              {
                v196 = v184[7];
                v197 = v196 != 0x7FFFFFFF && v196 <= SHIDWORD(v255);
                if (v197 && v184[8] <= v256 && v184[9] <= DWORD1(v256))
                {
                  v195 = 0;
                  v188 = 0;
                  goto LABEL_265;
                }
              }

              v160 = v168;
LABEL_259:
              if (v155 < (*(a1 + 136) - v156) >> 3)
              {
                v187 = v156[2 * v155];
                v186 = v156[2 * v155 + 1];
                if (v186 != v187)
                {
                  v188 = 0;
                  v198 = (v160 + 56 * v186);
                  v199 = (v160 + 56 * v187);
                  while (1)
                  {
                    v200 = v199[7];
                    if (v200 != 0x7FFFFFFF)
                    {
                      if (v200 <= SHIDWORD(v255) && v199[8] <= v256 && v199[9] <= DWORD1(v256))
                      {
                        v195 = 0;
                        goto LABEL_265;
                      }

                      if (SHIDWORD(v255) <= v200 && v256 <= v199[8] && DWORD1(v256) <= v199[9])
                      {
                        v199[7] = 0x7FFFFFFF;
                        v188 = 1;
                      }
                    }

                    v199 += 14;
                    if (v199 == v198)
                    {
                      goto LABEL_262;
                    }
                  }
                }
              }

              v188 = 0;
LABEL_262:
              v189 = sub_AD0BAC((a1 + 128), v155, &v254);
              *(v189 + 44) = -1;
              *(v189 + 52) = 0x7FFFFFFF;
              v190 = *(a1 + 128);
              if (*v241 < ((*(a1 + 136) - v190) >> 3))
              {
                v192 = *(v190 + 8 * *v241);
                v191 = *(v190 + 8 * *v241 + 4);
                if (v191 != v192)
                {
                  v201 = *(a1 + 152);
                  v202 = (v201 + 56 * v191);
                  v203 = (v201 + 56 * v192);
                  do
                  {
                    v204 = v203[7];
                    if (v204 != 0x7FFFFFFF && SHIDWORD(v255) <= v204 && v256 <= v203[8] && DWORD1(v256) <= v203[9])
                    {
                      v203[7] = 0x7FFFFFFF;
                    }

                    v203 += 14;
                  }

                  while (v203 != v202);
                }
              }

              v193 = sub_AD0BAC((a1 + 128), v241[0], &v254);
              *(v193 + 44) = -1;
              *(v193 + 52) = 0x7FFFFFFF;
              v194 = *(a1 + 200);
              *(a1 + 200) = v194 + 1;
              *(v193 + 24) = v194;
              *(v193 + 20) = DWORD2(v255);
              *(v193 + 44) = -1;
              *(v193 + 52) = 0x7FFFFFFF;
              v195 = 1;
              v143 = v245;
              v155 = v243;
LABEL_265:
              v246 |= v195 | (v188 << 8);
              if (++v154 == v152)
              {
LABEL_295:
                if ((v246 & 0x100) != 0)
                {
                  v205 = v155;
                  sub_AD10F4((a1 + 128), v241[0]);
                  sub_AD10F4((a1 + 128), v205);
                }

                if ((v246 & 1) == 0)
                {
                  goto LABEL_301;
                }

                if (*(a1 + 264) <= v236)
                {
                  sub_4D9168(a1 + 256, v232, 0);
                }

                if ((*(*(a1 + 256) + 8 * (v236 >> 6)) & (1 << v236)) != 0)
                {
LABEL_301:
                  v9 = v249;
                  v7 = (v248 + 12);
                  v248 = v7;
                  if (v7 != v249)
                  {
                    goto LABEL_302;
                  }

LABEL_319:
                  v7 = v250;
                  v248 = v250;
                  v206 = 1;
                  v252 = 1;
                  goto LABEL_320;
                }

                v208 = *(a1 + 288);
                v207 = *(a1 + 296);
                if (v208 >= v207)
                {
                  v210 = *(a1 + 280);
                  v211 = v208 - v210;
                  v212 = (v208 - v210) >> 2;
                  v213 = v212 + 1;
                  if ((v212 + 1) >> 62)
                  {
                    sub_1794();
                  }

                  v214 = v207 - v210;
                  if (v214 >> 1 > v213)
                  {
                    v213 = v214 >> 1;
                  }

                  if (v214 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v215 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v215 = v213;
                  }

                  if (!v215)
                  {
                    v216 = (v208 - v210) >> 2;
                    v217 = (4 * v212);
                    v218 = (4 * v212 - 4 * v216);
                    *v217 = v244;
                    v209 = v217 + 1;
                    memcpy(v218, v210, v211);
                    *(a1 + 280) = v218;
                    *(a1 + 288) = v209;
                    *(a1 + 296) = 0;
                    if (v210)
                    {
                      operator delete(v210);
                    }

                    goto LABEL_318;
                  }

                  if (!(v215 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_360;
                }

                *v208 = v244;
                v209 = v208 + 4;
LABEL_318:
                *(a1 + 288) = v209;
                *(*(a1 + 256) + 8 * (v236 >> 6)) |= 1 << v236;
                v9 = v249;
                v7 = (v248 + 12);
                v248 = v7;
                if (v7 == v249)
                {
                  goto LABEL_319;
                }

LABEL_302:
                v206 = v252;
LABEL_320:
                if (v206)
                {
                  v219 = v251;
                }

                else
                {
                  v219 = v9;
                }

                v220 = *(v247 + 16) != 1 || v7 >= v219;
                if (v220)
                {
                  v5 = v242;
                  if (v206)
                  {
                    v9 = v251;
                  }

                  if (v7 >= v9)
                  {
                    goto LABEL_3;
                  }
                }

                else
                {
                  v221 = __ROR8__(*v7, 32);
                  v222 = HIDWORD(v221) != 1 || (v221 + 3) >= 2;
                  v5 = v242;
                  if (v222)
                  {
                    while (!sub_2D5204(**(v247 + 4120)))
                    {
                      v9 = v249;
                      v7 = (v248 + 12);
                      v248 = v7;
                      if (v7 == v249)
                      {
                        v7 = v250;
                        v248 = v250;
                        v206 = 1;
                        v252 = 1;
                        if (v250 >= v251)
                        {
                          goto LABEL_344;
                        }
                      }

                      else
                      {
                        v206 = v252;
                        v225 = 16;
                        if (v252)
                        {
                          v225 = 32;
                        }

                        if (v7 >= *(&v247 + v225))
                        {
                          goto LABEL_344;
                        }
                      }

                      v223 = __ROR8__(*v7, 32);
                      if (HIDWORD(v223) == 1 && (v223 + 3) < 2)
                      {
                        goto LABEL_344;
                      }
                    }

                    v7 = v248;
                    v226 = v249;
                    if (v252)
                    {
                      v226 = v251;
                    }

                    if (v248 >= v226)
                    {
                      goto LABEL_3;
                    }
                  }

                  else
                  {
LABEL_344:
                    if (v206)
                    {
                      v9 = v251;
                    }

                    if (v7 >= v9)
                    {
                      goto LABEL_3;
                    }
                  }
                }

                goto LABEL_11;
              }
            }

            if (v240 < v165)
            {
              v157 = &v156[2 * v240];
              *(a1 + 136) = v157;
            }

LABEL_228:
            v166 = v156[2 * v143];
            v167 = (v157 - v156) >> 3;
            if (v167 > v143)
            {
              goto LABEL_229;
            }

            goto LABEL_241;
          }

          v62 = 1;
          while (__PAIR64__(v33, v34) != v10)
          {
            v31 = (v31 + v62) & v27;
            v63 = (v28 + 12 * v31);
            v34 = *v63;
            v33 = v63[1];
            ++v62;
            if (v29 == v33 && v30 == v34)
            {
              v35 = 0;
              goto LABEL_93;
            }
          }

LABEL_83:
          if (v31 == -1)
          {
            v37 = -1;
            goto LABEL_94;
          }

          v44 = v28 + 12 * v31;
          v45 = *(v44 + 8);
          if (v45 == -1)
          {
            goto LABEL_53;
          }

LABEL_103:
          *(a1 + 576) = *(a1 + 576) + 1.0;
          v244 = v45;
          if (v5 == v45)
          {
            goto LABEL_301;
          }

          goto LABEL_104;
        }

LABEL_56:
        v51 = *(v11 + 40);
        v50 = *(v11 + 48);
        if ((v50 - v51) >= 0x1555555555555555)
        {
          goto LABEL_361;
        }

        v52 = *(v11 + 80);
        if (v51 && ((v53 = (v52 + 12 * v23), *(v11 + 36) == v53[1]) ? (v54 = *(v11 + 32) == *v53) : (v54 = 0), v54))
        {
          *(v11 + 40) = v51 - 1;
        }

        else
        {
          *(v11 + 48) = v50 + 1;
        }

        v61 = v52 + 12 * v23;
        *v61 = v10;
        *(v61 + 8) = -1;
        v44 = *(v11 + 80) + 12 * v23;
        v45 = *(v44 + 8);
        if (v45 == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_103;
      }

      v23 = -1;
      v24 = 1;
      do
      {
        if (*(v11 + 36) == v20 && *(v11 + 32) == v21)
        {
          if (v23 == -1)
          {
            v23 = v18;
          }
        }

        else if (__PAIR64__(v20, v21) == v10)
        {
          goto LABEL_51;
        }

        v18 = (v18 + v24) & v12;
        v25 = (v15 + 12 * v18);
        v21 = *v25;
        v20 = v25[1];
        ++v24;
      }

      while (v16 != v20 || v17 != v21);
      if (v23 != -1)
      {
        if (sub_A99094(*(a1 + 32), 1))
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }
    }

LABEL_55:
    v23 = v18;
    if (sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_352:
  result = sub_7EA60(v253) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

void sub_ACF084(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 360);
  if (v2 != v3)
  {
    v4 = *(a1 + 328);
    v5 = *(a1 + 304);
    v6 = *(a1 + 352);
    do
    {
      v7 = *v6++;
      *(v4 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
      *(v5 + 4 * v7) = -1;
    }

    while (v6 != v3);
  }

  *(a1 + 360) = v2;
  v8 = *(a1 + 280);
  v159 = *(a1 + 288);
  while (v8 != v159)
  {
    v9 = sub_A9C5E0((*(a1 + 32) + 88), *v8);
    sub_A7905C(v163, *(a1 + 24), *v9, 0, 0, 0);
LABEL_8:
    v10 = v166;
LABEL_9:
    v11 = v167;
    while (v10 < v11)
    {
      v12 = __ROR8__(*v10, 32);
      v13 = *(a1 + 40);
      v14 = *(v13 + 56) - 1;
      v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
      v16 = v15 ^ (v15 >> 33);
      v17 = *(v13 + 80);
      v19 = *(v13 + 64);
      v18 = *(v13 + 68);
      v20 = v16 & v14;
      v21 = (v17 + 12 * (v16 & v14));
      v23 = *v21;
      v22 = v21[1];
      if (v18 == v22 && v19 == v23)
      {
        goto LABEL_54;
      }

      if (*(v13 + 40))
      {
        v25 = -1;
        v26 = 1;
        do
        {
          if (*(v13 + 36) == v22 && *(v13 + 32) == v23)
          {
            if (v25 == -1)
            {
              v25 = v20;
            }
          }

          else if (__PAIR64__(v22, v23) == v12)
          {
            goto LABEL_51;
          }

          v20 = (v20 + v26) & v14;
          v27 = (v17 + 12 * v20);
          v23 = *v27;
          v22 = v27[1];
          ++v26;
        }

        while (v18 != v22 || v19 != v23);
        if (v25 == -1)
        {
LABEL_54:
          v25 = v20;
          if (!sub_A99094(*(a1 + 40), 1))
          {
            goto LABEL_55;
          }

          goto LABEL_29;
        }

        if (!sub_A99094(*(a1 + 40), 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v43 = 1;
        while (__PAIR64__(v22, v23) != v12)
        {
          v20 = (v20 + v43) & v14;
          v44 = (v17 + 12 * v20);
          v23 = *v44;
          v22 = v44[1];
          ++v43;
          if (v18 == v22 && v19 == v23)
          {
            goto LABEL_54;
          }
        }

LABEL_51:
        if (v20 != -1)
        {
          v46 = v17 + 12 * v20;
          v47 = *(v46 + 8);
          if (v47 != -1)
          {
            goto LABEL_103;
          }

          goto LABEL_88;
        }

        v25 = -1;
        if (!sub_A99094(*(a1 + 40), 1))
        {
LABEL_55:
          v49 = *(v13 + 40);
          v48 = *(v13 + 48);
          if ((v48 - v49) >= 0x1555555555555555)
          {
            goto LABEL_232;
          }

          v30 = *(v13 + 80);
          if (v49 && ((v50 = (v30 + 12 * v25), *(v13 + 36) == v50[1]) ? (v51 = *(v13 + 32) == *v50) : (v51 = 0), v51))
          {
            *(v13 + 40) = v49 - 1;
          }

          else
          {
            *(v13 + 48) = v48 + 1;
          }

          v52 = 3 * v25;
          goto LABEL_87;
        }
      }

LABEL_29:
      v29 = *(v13 + 56) - 1;
      v30 = *(v13 + 80);
      v32 = *(v13 + 64);
      v31 = *(v13 + 68);
      v33 = v29 & v16;
      v34 = (v30 + 12 * (v29 & v16));
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v13 + 40);
      if (v31 == v35 && v32 == v36)
      {
        goto LABEL_78;
      }

      if (v37)
      {
        v39 = -1;
        v40 = 1;
        do
        {
          if (*(v13 + 36) == v35 && *(v13 + 32) == v36)
          {
            if (v39 == -1)
            {
              v39 = v33;
            }
          }

          else if (__PAIR64__(v35, v36) == v12)
          {
            goto LABEL_72;
          }

          v33 = (v33 + v40) & v29;
          v41 = (v30 + 12 * v33);
          v36 = *v41;
          v35 = v41[1];
          ++v40;
        }

        while (v31 != v35 || v32 != v36);
        if (v39 == -1)
        {
LABEL_78:
          v39 = v33;
        }

        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
          goto LABEL_232;
        }

LABEL_80:
        if (v37 && ((v57 = (v30 + 12 * v39), *(v13 + 36) == v57[1]) ? (v58 = *(v13 + 32) == *v57) : (v58 = 0), v58))
        {
          *(v13 + 40) = v37 - 1;
          v52 = 3 * v39;
        }

        else
        {
          *(v13 + 48) = v56 + 1;
          v52 = 3 * v39;
        }

LABEL_87:
        v59 = 4 * v52;
        v60 = v30 + v59;
        *v60 = v12;
        *(v60 + 8) = -1;
        v46 = *(v13 + 80) + v59;
        v47 = *(v46 + 8);
        if (v47 != -1)
        {
          goto LABEL_103;
        }

        goto LABEL_88;
      }

      v53 = 1;
      while (__PAIR64__(v35, v36) != v12)
      {
        v33 = (v33 + v53) & v29;
        v54 = (v30 + 12 * v33);
        v36 = *v54;
        v35 = v54[1];
        ++v53;
        if (v31 == v35 && v32 == v36)
        {
          v37 = 0;
          goto LABEL_78;
        }
      }

LABEL_72:
      if (v33 == -1)
      {
        v39 = -1;
        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
LABEL_232:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        goto LABEL_80;
      }

      v46 = v30 + 12 * v33;
      v47 = *(v46 + 8);
      if (v47 != -1)
      {
        goto LABEL_103;
      }

LABEL_88:
      v61 = *(v13 + 112);
      *(v13 + 112) = v61 + 1;
      *(v46 + 8) = v61;
      v63 = *(v13 + 96);
      v62 = *(v13 + 104);
      if (v63 >= v62)
      {
        v65 = *(v13 + 88);
        v66 = v63 - v65;
        v67 = (v63 - v65) >> 3;
        v68 = v67 + 1;
        if ((v67 + 1) >> 61)
        {
          sub_1794();
        }

        v69 = v8;
        v70 = v62 - v65;
        if (v70 >> 2 > v68)
        {
          v68 = v70 >> 2;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v71 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v68;
        }

        if (v71)
        {
          if (!(v71 >> 61))
          {
            operator new();
          }

LABEL_231:
          sub_1808();
        }

        v72 = v67;
        v73 = (8 * v67);
        v74 = &v73[-v72];
        *v73 = v12;
        v64 = v73 + 1;
        memcpy(v74, v65, v66);
        *(v13 + 88) = v74;
        *(v13 + 96) = v64;
        *(v13 + 104) = 0;
        if (v65)
        {
          operator delete(v65);
        }

        v8 = v69;
      }

      else
      {
        *v63 = v12;
        v64 = v63 + 8;
      }

      *(v13 + 96) = v64;
      v47 = *(v46 + 8);
LABEL_103:
      v75 = *(v166 + 4);
      v76 = v47 >> 6;
      if (*(a1 + 336) <= v47)
      {
        v80 = *(a1 + 304);
        goto LABEL_122;
      }

      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v79 = 1 << v47;
      v80 = *(a1 + 304);
      if ((v78 & (1 << v47)) == 0)
      {
        goto LABEL_122;
      }

      v81 = *(a1 + 312);
      v82 = &v81[-v80] >> 2;
      if (v82 > v47)
      {
        goto LABEL_120;
      }

      v160 = *(v166 + 4);
      v83 = v8;
      v84 = v47 + 1;
      v85 = v84 - v82;
      if (v84 > v82)
      {
        v86 = *(a1 + 320);
        if (v85 > (v86 - v81) >> 2)
        {
          v87 = v86 - v80;
          v88 = v87 >> 1;
          if (v87 >> 1 <= v84)
          {
            v88 = v47 + 1;
          }

          v89 = v87 >= 0x7FFFFFFFFFFFFFFCLL;
          v90 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v89)
          {
            v90 = v88;
          }

          if (!(v90 >> 62))
          {
            operator new();
          }

          goto LABEL_231;
        }

        v92 = 4 * v85;
        memset(v81, 255, v92);
        v91 = &v81[v92];
        goto LABEL_118;
      }

      if (v84 < v82)
      {
        v91 = (v80 + 4 * v84);
LABEL_118:
        *(a1 + 312) = v91;
      }

      sub_4D9168(a1 + 328, v47 + 1, 0);
      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v8 = v83;
      v75 = v160;
LABEL_120:
      if ((v78 & v79) != 0)
      {
        v80 = *(a1 + 304);
        if (*(v80 + 4 * v47) > v75)
        {
          goto LABEL_122;
        }

LABEL_135:
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 == v167)
        {
          goto LABEL_158;
        }

LABEL_136:
        if (v10 < v11)
        {
          while (1)
          {
LABEL_181:
            if ((v169 & 1) == 0)
            {
              v132 = v163[0];
              v133 = *v10;
              v134 = *(v163[0] + 4136);
              if (sub_68312C(v134 + 3896))
              {
                if (*(v134 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v154 = sub_A57824(-85.0, 0.0);
                    sub_58168(v154 >> 17, v154 >> 49);
                    dword_27339C0 = v155 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                  }

                  v135 = __ROR8__(v133, 32);
                  v136 = *(v132 + 4136);
                  if (dword_27339C0 == HIDWORD(v135))
                  {
                    if (!sub_68312C(v136 + 3896) || !*(v136 + 3944))
                    {
                      v157 = __cxa_allocate_exception(0x40uLL);
                      v158 = sub_2D390(v157, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v139 = *(v136 + 3944);
                    v140 = v139[1];
                    if (v140)
                    {
                      v141 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) >> 33));
                      v142 = v141 ^ (v141 >> 33);
                      v143 = vcnt_s8(v140);
                      v143.i16[0] = vaddlv_u8(v143);
                      if (v143.u32[0] > 1uLL)
                      {
                        v144 = v142;
                        if (v142 >= *&v140)
                        {
                          v144 = v142 % *&v140;
                        }
                      }

                      else
                      {
                        v144 = (*&v140 - 1) & v142;
                      }

                      v145 = *(*v139 + 8 * v144);
                      if (v145)
                      {
                        v146 = *v145;
                        if (v146)
                        {
                          if (v143.u32[0] < 2uLL)
                          {
                            v147 = *&v140 - 1;
                            while (1)
                            {
                              v151 = v146[1];
                              if (v142 == v151)
                              {
                                if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                                {
                                  goto LABEL_179;
                                }
                              }

                              else if ((v151 & v147) != v144)
                              {
                                goto LABEL_221;
                              }

                              v146 = *v146;
                              if (!v146)
                              {
                                goto LABEL_221;
                              }
                            }
                          }

                          do
                          {
                            v149 = v146[1];
                            if (v142 == v149)
                            {
                              if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                              {
                                goto LABEL_179;
                              }
                            }

                            else
                            {
                              if (v149 >= *&v140)
                              {
                                v149 %= *&v140;
                              }

                              if (v149 != v144)
                              {
                                break;
                              }
                            }

                            v146 = *v146;
                          }

                          while (v146);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_221:
            if (v168 == 1)
            {
              goto LABEL_8;
            }

            v152 = sub_C9E544(v163[0] + 3896);
            v10 = v166;
            if (v152 >= *(v166 + 14))
            {
              if (v168)
              {
                goto LABEL_9;
              }

              v153 = sub_585D8((v163[0] + 3896));
              v10 = v166;
              if ((v153 & 1) != 0 || (*(v166 + 15) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

LABEL_179:
            v10 = v166 + 2;
            v166 = v10;
            if (v10 == v167)
            {
              v137 = v164 + 2;
              v164 = v137;
              if (v137 >= v165)
              {
                goto LABEL_9;
              }

              while (1)
              {
                v10 = *v137;
                v138 = v137[1];
                if (*v137 != v138)
                {
                  break;
                }

                v137 += 2;
                v164 = v137;
                if (v137 >= v165)
                {
                  goto LABEL_6;
                }
              }

              v166 = *v137;
              v167 = v138;
              if (v10 >= v138)
              {
                goto LABEL_9;
              }
            }

            else if (v10 >= v167)
            {
              goto LABEL_9;
            }
          }
        }
      }

      else
      {
        *(v77 + 8 * v76) = v78 | v79;
        v103 = *(a1 + 360);
        v102 = *(a1 + 368);
        if (v103 >= v102)
        {
          v121 = *(a1 + 352);
          v122 = v103 - v121;
          v123 = (v103 - v121) >> 2;
          v124 = v123 + 1;
          if ((v123 + 1) >> 62)
          {
LABEL_234:
            sub_1794();
          }

          v125 = v8;
          v126 = v102 - v121;
          if (v126 >> 1 > v124)
          {
            v124 = v126 >> 1;
          }

          if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v127 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v127 = v124;
          }

          v162 = v75;
          if (v127)
          {
            if (!(v127 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          v128 = (v103 - v121) >> 2;
          v129 = (4 * v123);
          v130 = (4 * v123 - 4 * v128);
          *v129 = v47;
          v131 = v129 + 1;
          memcpy(v130, v121, v122);
          *(a1 + 352) = v130;
          *(a1 + 360) = v131;
          *(a1 + 368) = 0;
          if (v121)
          {
            operator delete(v121);
          }

          v8 = v125;
          v75 = v162;
          *(a1 + 360) = v131;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) <= v162)
          {
            goto LABEL_135;
          }
        }

        else
        {
          *v103 = v47;
          *(a1 + 360) = v103 + 4;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) <= v75)
          {
            goto LABEL_135;
          }
        }

LABEL_122:
        v93 = *(a1 + 312);
        v94 = &v93[-v80] >> 2;
        if (v94 > v47)
        {
          goto LABEL_141;
        }

        v161 = v75;
        v95 = v47 + 1;
        v96 = v95 - v94;
        if (v95 > v94)
        {
          v97 = *(a1 + 320);
          if (v96 > (v97 - v93) >> 2)
          {
            v98 = v97 - v80;
            v99 = v98 >> 1;
            if (v98 >> 1 <= v95)
            {
              v99 = v47 + 1;
            }

            v89 = v98 >= 0x7FFFFFFFFFFFFFFCLL;
            v100 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v89)
            {
              v100 = v99;
            }

            if (!(v100 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          memset(v93, 255, 4 * v96);
          v101 = &v93[4 * v96];
          goto LABEL_139;
        }

        if (v95 < v94)
        {
          v101 = (v80 + 4 * v95);
LABEL_139:
          *(a1 + 312) = v101;
        }

        sub_4D9168(a1 + 328, v47 + 1, 0);
        v75 = v161;
LABEL_141:
        v104 = *(a1 + 328);
        v105 = *(v104 + 8 * v76);
        if ((v105 & (1 << v47)) == 0)
        {
          *(v104 + 8 * v76) = v105 | (1 << v47);
          v107 = *(a1 + 360);
          v106 = *(a1 + 368);
          if (v107 >= v106)
          {
            v109 = *(a1 + 352);
            v110 = v107 - v109;
            v111 = (v107 - v109) >> 2;
            v112 = v111 + 1;
            if ((v111 + 1) >> 62)
            {
              goto LABEL_234;
            }

            v113 = v8;
            v114 = v106 - v109;
            if (v114 >> 1 > v112)
            {
              v112 = v114 >> 1;
            }

            if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v115 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v115 = v112;
            }

            if (v115)
            {
              if (!(v115 >> 62))
              {
                operator new();
              }

              goto LABEL_231;
            }

            v116 = v75;
            v117 = (v107 - v109) >> 2;
            v118 = (4 * v111);
            v119 = (4 * v111 - 4 * v117);
            *v118 = v47;
            v108 = v118 + 1;
            memcpy(v119, v109, v110);
            *(a1 + 352) = v119;
            *(a1 + 360) = v108;
            *(a1 + 368) = 0;
            if (v109)
            {
              operator delete(v109);
            }

            v8 = v113;
            v75 = v116;
          }

          else
          {
            *v107 = v47;
            v108 = v107 + 4;
          }

          *(a1 + 360) = v108;
        }

        *(*(a1 + 304) + 4 * v47) = v75;
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 != v167)
        {
          goto LABEL_136;
        }

LABEL_158:
        v120 = v164 + 2;
        v164 = v120;
        if (v120 >= v165)
        {
          break;
        }

        while (1)
        {
          v10 = *v120;
          v11 = v120[1];
          if (*v120 != v11)
          {
            break;
          }

          v120 += 2;
          v164 = v120;
          if (v120 >= v165)
          {
            goto LABEL_6;
          }
        }

        v166 = *v120;
        v167 = v11;
        if (v10 < v11)
        {
          goto LABEL_181;
        }
      }
    }

LABEL_6:
    ++v8;
  }
}

uint64_t sub_ACFE00(uint64_t a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v36 = *(a1 + 168);
  v37 = *(a1 + 128);
  v33 = *(a1 + 152);
  v34 = *(a1 + 144);
  v2 = *(a1 + 192);
  v3 = *(a1 + 224);
  v31 = *(a1 + 248);
  v32 = *(a1 + 232);
  v4 = *(a1 + 272);
  v35 = *(a1 + 280);
  v5 = *(a1 + 296);
  v29 = *(a1 + 304);
  v30 = *(a1 + 320);
  v28 = *(a1 + 368);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  v8 = sub_C439D4((a1 + 384));
  v9 = *(*(a1 + 32) + 104) - *(*(a1 + 32) + 88) + *(*(a1 + 40) + 104) + 12 * (*(*(a1 + 40) + 56) + *(*(a1 + 32) + 56)) - *(*(a1 + 40) + 88);
  v10 = *(a1 + 48);
  if (v10)
  {
    v9 = v9 + *(v10 + 32) - *(v10 + 16);
  }

  v11 = 8 * (v4 & 0x3FFFFFFFFFFFFFFLL);
  sub_2D577C(**(a1 + 24));
  if (v51 != 1)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v12 = sub_32AD80(&v40) * 1048576.0;
  if (v12 >= 0.0)
  {
    v13 = v12;
    if (v12 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v14 = (v12 + v12) + 1;
  }

  else
  {
    v13 = v12;
    if (v12 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v14 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
  }

  v13 = (v14 >> 1);
LABEL_12:
  if (v13 >= 1.84467441e19)
  {
    v15 = -2;
    goto LABEL_21;
  }

  if (v12 >= 0.0)
  {
    if (v12 < 4.50359963e15)
    {
      v16 = (v12 + v12) + 1;
      goto LABEL_19;
    }
  }

  else if (v12 > -4.50359963e15)
  {
    v16 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
LABEL_19:
    v12 = (v16 >> 1);
  }

  v15 = v12;
LABEL_21:
  v17 = v34 + v36 - (v37 + v33) + 8 * (v2 & 0x3FFFFFFFFFFFFFFLL) + v31 + 8 * (v3 & 0x3FFFFFFFFFFFFFFLL) - v32 + v5 + v11 + v30 - (v35 + v29) + 8 * (v6 & 0x3FFFFFFFFFFFFFFLL) + v28 - v7 + v8 + v15 + v9;
  if (v17 <= *a1)
  {
    return 0;
  }

  v18 = sub_7E7E4(1u);
  result = 1;
  if (!v18)
  {
    return result;
  }

  sub_19594F8(&v40);
  v20 = sub_4A5C(&v40, "Exceeded memory limit of ", 25);
  v21 = sub_71478(v20, *a1);
  v22 = sub_4A5C(v21, " in directional McSPA (", 23);
  v23 = sub_71478(v22, v17);
  v24 = sub_4A5C(v23, ") in round ", 11);
  std::ostream::operator<<();
  sub_4A5C(v24, "; terminating algorithm.", 24);
  if ((v50 & 0x10) != 0)
  {
    v26 = v49;
    if (v49 < v46)
    {
      v49 = v46;
      v26 = v46;
    }

    v27 = v45;
    v25 = v26 - v45;
    if (v26 - v45 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_42:
      sub_3244();
    }

LABEL_31:
    if (v25 >= 0x17)
    {
      operator new();
    }

    v39 = v25;
    if (v25)
    {
      memmove(&__dst, v27, v25);
    }

    goto LABEL_36;
  }

  if ((v50 & 8) != 0)
  {
    v27 = v43;
    v25 = v44 - v43;
    if ((v44 - v43) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  v25 = 0;
  v39 = 0;
LABEL_36:
  *(&__dst + v25) = 0;
  sub_7E854(&__dst, 1u);
  if (v39 < 0)
  {
    operator delete(__dst);
  }

  if (v48 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v42);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_AD02E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
    sub_1959728(&a27);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a27);
  _Unwind_Resume(a1);
}

void sub_AD0334(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      sub_AD0464((a1 + 128), 0);
      sub_AD1858((a1 + 128), v3 + *(a1 + 120) + *(a1 + 120) * *(a1 + 376) + 2, 0);
      v4 = *(a1 + 128);
      if (*(a1 + 136) != v4)
      {
        break;
      }

      sub_30B70(a1 + 128, 1uLL);
      v4 = *(a1 + 128);
      v5 = *(a1 + 152);
      v6 = *v4;
      if (*(a1 + 136) != v4)
      {
        goto LABEL_6;
      }

      sub_30B70(a1 + 128, 1uLL);
      v7 = v5 + 56 * v6;
      v8 = *(a1 + 152) + 56 * *(*(a1 + 128) + 4);
      if (v7 != v8)
      {
LABEL_10:
        v9 = *(a1 + 544);
        v10 = *(a1 + 536);
        do
        {
          v9 = v9 + 1.0;
          v10 += *(v7 + 28);
          v7 += 56;
        }

        while (v7 != v8);
        *(a1 + 544) = v9;
        *(a1 + 536) = v10;
      }

LABEL_3:
      if (++v3 == v1)
      {
        return;
      }
    }

    v5 = *(a1 + 152);
    v6 = *v4;
LABEL_6:
    v7 = v5 + 56 * v6;
    v8 = v5 + 56 * v4[1];
    if (v7 != v8)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }
}

char *sub_AD0464(uint64_t *a1, unsigned int a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (v5 <= a2)
  {
    v6 = a2 + 1;
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (v8 != 0 && v7)
    {
      v9 = a1;
      v10 = a2;
      sub_30B70(a1, v8);
      a2 = v10;
      a1 = v9;
      v3 = *v9;
      v4 = v9[1];
    }

    else if (!v7)
    {
      v4 = v3 + 8 * v6;
      a1[1] = v4;
    }
  }

  v11 = a1[3];
  v12 = *(v3 + 8 * v2);
  v13 = (v4 - v3) >> 3;
  if (v13 > v2)
  {
    goto LABEL_8;
  }

  v15 = a2 + 1;
  if (v15 <= v13)
  {
    if (v15 < v13)
    {
      a1[1] = v3 + 8 * v15;
    }

LABEL_8:
    v14 = v11;
    goto LABEL_11;
  }

  v16 = a1;
  sub_30B70(a1, v15 - v13);
  a1 = v16;
  v3 = *v16;
  v14 = v16[3];
LABEL_11:
  v17 = (v14 + 56 * *(v3 + 8 * v2 + 4));

  return sub_AD06A4(a1, v2, (v11 + 56 * v12), v17);
}

uint64_t sub_AD0554(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a2 >= ((a1[1] - *a1) >> 3))
  {
    goto LABEL_6;
  }

  v8 = (*a1 + 8 * a2);
  v7 = v8[1];
  v9 = v7 - *v8;
  if (v7 == *v8)
  {
    goto LABEL_6;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v12 = 0;
    do
    {
      sub_AD1494(a1, a2, v12++);
    }

    while (v9 != v12);
LABEL_6:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  v13 = 0;
  v15 = 0;
  do
  {
    v19 = sub_AD1494(a1, a2, v15);
    v21 = *(v19 + 16);
    v20 = *(v19 + 32);
    v22 = *(v19 + 48);
    v24[0] = *v19;
    v24[1] = v21;
    v25 = v22;
    v24[2] = v20;
    if (SHIDWORD(v21) <= a6)
    {
      v23 = sub_AD1588(a1, v24, a3, a4, a5);
      v13 = v23 | v13 | (v23 | v13) & 0xFF00;
    }

    ++v15;
  }

  while (v9 != v15);
  if ((v13 & 0x100) != 0)
  {
    sub_AD10F4(a1, a3);
    sub_AD10F4(a1, a4);
  }

  return v13 & 1;
}

char *sub_AD06A4(uint64_t *a1, unsigned int a2, char *__dst, _BYTE *__src)
{
  v8 = a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v10 - *a1) >> 3;
  if (v11 <= a2)
  {
    v12 = a2 + 1;
    if (v12 <= v11)
    {
      if (v12 < v11)
      {
        v10 = v9 + 8 * v12;
        a1[1] = v10;
      }
    }

    else
    {
      sub_30B70(a1, v12 - v11);
      v9 = *a1;
      v10 = a1[1];
    }
  }

  v13 = (v9 + 8 * v8);
  v14 = (v10 - v9) >> 3;
  if (v14 <= v8)
  {
    v15 = a2 + 1;
    if (v15 <= v14)
    {
      if (v15 < v14)
      {
        a1[1] = v9 + 8 * v15;
      }
    }

    else
    {
      sub_30B70(a1, v15 - v14);
      v9 = *a1;
    }
  }

  v16 = a1[3];
  if ((v16 + 56 * *(v9 + 8 * v8 + 4)) == __src)
  {
    v17.i64[0] = __src;
    v17.i64[1] = __dst;
    v18 = vsubq_s64(v17, vdupq_n_s64(v16));
    v19 = vshrq_n_s64(v18, 3uLL);
    v21.i64[0] = 0x6DB6DB6DB6DB6DB7 * v19.i64[0];
    v21.i64[1] = 0x6DB6DB6DB6DB6DB7 * v19.i64[1];
    v20 = v21.i32[2];
    v22 = vbslq_s8(vcgtq_s64(v18, vdupq_n_s64(0xFFFFFFFFFFFFFFC8)), vshrq_n_u64(v21, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v21), 6uLL)));
    v23 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
    if (v23 >= 1)
    {
      v24 = (a1[6] + 8 * v22.i64[1]);
      if ((v21.i8[8] & 0x3F) != 0)
      {
        if (64 - (v21.i8[8] & 0x3Fu) >= v23)
        {
          v25 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
        }

        else
        {
          v25 = 64 - (v21.i8[8] & 0x3Fu);
        }

        *v24++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v21.i8[8] & 0x3Fu) - v25)) & (-1 << (v21.i8[8] & 0x3F)));
        v23 -= v25;
      }

      v26 = v23 >> 6;
      if (v23 >= 0x40)
      {
        bzero(v24, 8 * v26);
      }

      if ((v23 & 0x3F) != 0)
      {
        v24[v26] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v23 & 0x3F));
      }
    }

    v13[1] = v20;
  }

  else
  {
    v27 = (a1[1] - v9) >> 3;
    if (v27 <= v8)
    {
      v28 = a2 + 1;
      if (v28 <= v27)
      {
        if (v28 < v27)
        {
          a1[1] = v9 + 8 * v28;
        }
      }

      else
      {
        sub_30B70(a1, v28 - v27);
        v9 = *a1;
        v16 = a1[3];
      }
    }

    if ((v16 + 56 * *(v9 + 8 * v8)) == __dst)
    {
      v29.i64[0] = __src;
      v29.i64[1] = __dst;
      v30 = vsubq_s64(v29, vdupq_n_s64(v16));
      v31 = vshrq_n_s64(v30, 3uLL);
      v33.i64[0] = 0x6DB6DB6DB6DB6DB7 * v31.i64[0];
      v32 = v33.i32[0];
      v33.i64[1] = 0x6DB6DB6DB6DB6DB7 * v31.i64[1];
      v34 = vbslq_s8(vcgtq_s64(v30, vdupq_n_s64(0xFFFFFFFFFFFFFFC8)), vshrq_n_u64(v33, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v33), 6uLL)));
      v35 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
      if (v35 >= 1)
      {
        v36 = (a1[6] + 8 * v34.i64[1]);
        if ((v33.i8[8] & 0x3F) != 0)
        {
          if (64 - (v33.i8[8] & 0x3Fu) >= v35)
          {
            v37 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
          }

          else
          {
            v37 = 64 - (v33.i8[8] & 0x3Fu);
          }

          *v36++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v33.i8[8] & 0x3Fu) - v37)) & (-1 << (v33.i8[8] & 0x3F)));
          v35 -= v37;
        }

        v38 = v35 >> 6;
        if (v35 >= 0x40)
        {
          bzero(v36, 8 * v38);
        }

        if ((v35 & 0x3F) != 0)
        {
          v36[v38] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v35 & 0x3F));
        }
      }

      *v13 = v32;
      return __src;
    }

    else
    {
      v39 = (a1[1] - v9) >> 3;
      if (v39 <= v8)
      {
        v40 = a2 + 1;
        if (v40 <= v39)
        {
          if (v40 < v39)
          {
            a1[1] = v9 + 8 * v40;
          }
        }

        else
        {
          sub_30B70(a1, v40 - v39);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v41 = (v16 + 56 * *(v9 + 8 * v8 + 4));
      v42 = v41 - __src;
      if (v41 != __src)
      {
        memmove(__dst, __src, v41 - __src);
        v16 = a1[3];
        v9 = *a1;
      }

      v43 = &__dst[v42];
      v44 = a1[6];
      v45 = 0x6DB6DB6DB6DB6DB7 * (&v43[-v16] >> 3);
      if (&v43[-v16] <= -56)
      {
        v46 = -((63 - v45) >> 6);
      }

      else
      {
        v46 = v45 >> 6;
      }

      v47 = 8 * v46;
      v48 = (a1[1] - v9) >> 3;
      if (v48 <= v8)
      {
        v49 = a2 + 1;
        if (v49 <= v48)
        {
          if (v49 < v48)
          {
            a1[1] = v9 + 8 * v49;
          }
        }

        else
        {
          sub_30B70(a1, v49 - v48);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v50 = *(v9 + 8 * v8 + 4);
      v51 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
      if (v51 >= 1)
      {
        v52 = (v44 + v47);
        if ((v45 & 0x3F) != 0)
        {
          if (64 - (v45 & 0x3F) >= v51)
          {
            v53 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
          }

          else
          {
            v53 = 64 - (v45 & 0x3F);
          }

          *v52++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v45 & 0x3Fu) - v53)) & (-1 << (v45 & 0x3F)));
          v51 -= v53;
        }

        v54 = v51 >> 6;
        if (v51 >= 0x40)
        {
          bzero(v52, 8 * v54);
        }

        if ((v51 & 0x3F) != 0)
        {
          v52[v54] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v51 & 0x3F));
        }
      }

      v13[1] = -1227133513 * (&v43[-v16] >> 3);
    }
  }

  return __dst;
}

uint64_t sub_AD0BAC(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v5 = a2;
  v6 = *a1;
  v7 = (a1[1] - *a1) >> 3;
  if (v7 <= a2)
  {
    v8 = a2 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        a1[1] = v6 + 8 * v8;
      }
    }

    else
    {
      sub_30B70(a1, v8 - v7);
      v6 = *a1;
    }
  }

  v9 = (v6 + 8 * v5);
  v10 = *v9;
  if (*v9 && (v11 = v10 - 1, ((*(a1[6] + ((v11 >> 3) & 0x1FFFFFF8)) >> (v10 - 1)) & 1) == 0))
  {
    *v9 = v11;
    v43 = a1[3] + 56 * v11;
    v44 = *a3;
    v45 = a3[1];
    v46 = a3[2];
    *(v43 + 48) = *(a3 + 6);
    *(v43 + 16) = v45;
    *(v43 + 32) = v46;
    *v43 = v44;
    v41 = *v9;
    *(a1[6] + ((v41 >> 3) & 0x1FFFFFF8)) |= 1 << v41;
    v42 = a1[3];
  }

  else
  {
    v12 = v9[1];
    v13 = a1[3];
    v14 = a1[4];
    v15 = a1 + 3;
    v16 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 3);
    if (v16 <= (v12 + 1) || ((*(a1[6] + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) != 0)
    {
      v17 = a1[1] - v6;
      v18 = v12 - 1227133513 * ((v14 - v13) >> 3) - v10;
      v19 = 2 * (v12 - v10) + 2;
      if (v5 < v17 >> 3)
      {
        v20 = v18;
      }

      else
      {
        v20 = -1227133513 * ((v14 - v13) >> 3);
      }

      if (v5 < v17 >> 3)
      {
        v21 = v19;
      }

      else
      {
        v21 = 2;
      }

      if (v16 >= v21 + v16)
      {
        if (v16 > v21 + v16)
        {
          v14 = v13 + 56 * (v21 + v16);
          a1[4] = v14;
        }
      }

      else
      {
        sub_AD12B0((a1 + 3), v21);
        v13 = a1[3];
        v14 = a1[4];
      }

      sub_4D9168((a1 + 6), 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 3), 0);
      v22 = *v9;
      v23 = v9[1];
      v24 = v22;
      if (v23 != v22)
      {
        memmove((a1[3] + 56 * v16), (a1[3] + 56 * v22), 56 * (v23 - v22));
        v24 = *v9;
        LODWORD(v22) = v9[1];
      }

      v25 = a1[6];
      v26 = (v24 >> 3) & 0x1FFFFFF8;
      v27 = v24 & 0x3F;
      v28 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
      if (v28 >= 1)
      {
        v29 = (v25 + v26);
        if ((v24 & 0x3F) != 0)
        {
          if ((64 - v27) >= v28)
          {
            v30 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
          }

          else
          {
            v30 = (64 - v27);
          }

          *v29++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v27 - v30)) & (-1 << v27));
          v28 -= v30;
        }

        v31 = v28 >> 6;
        if (v28 >= 0x40)
        {
          bzero(v29, 8 * v31);
        }

        if ((v28 & 0x3F) != 0)
        {
          v29[v31] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v28 & 0x3F));
        }
      }

      v32 = (v16 >> 3) & 0x1FFFFFF8;
      v33 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
      if (v33 >= 1)
      {
        v34 = (v25 + v32);
        if ((v16 & 0x3F) != 0)
        {
          if (64 - (v16 & 0x3F) >= v33)
          {
            v35 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
          }

          else
          {
            v35 = 64 - (v16 & 0x3F);
          }

          *v34++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - (v16 & 0x3Fu) - v35)) & (-1 << (v16 & 0x3F));
          v33 -= v35;
        }

        v36 = v33 >> 6;
        if (v33 >= 0x40)
        {
          memset(v34, 255, 8 * v36);
        }

        if ((v33 & 0x3F) != 0)
        {
          v34[v36] |= 0xFFFFFFFFFFFFFFFFLL >> -(v33 & 0x3F);
        }
      }

      *v9 = v16;
      v9[1] = v20;
      v37 = *v15 + 56 * v20;
      v38 = *a3;
      v39 = a3[1];
      v40 = a3[2];
      *(v37 + 48) = *(a3 + 6);
      *(v37 + 16) = v39;
      *(v37 + 32) = v40;
      *v37 = v38;
      v41 = v9[1];
      *(a1[6] + ((v41 >> 3) & 0x1FFFFFF8)) |= 1 << v41;
      v42 = *v15;
    }

    else
    {
      v48 = v13 + 56 * v12;
      v49 = *a3;
      v50 = a3[1];
      v51 = a3[2];
      *(v48 + 48) = *(a3 + 6);
      *(v48 + 16) = v50;
      *(v48 + 32) = v51;
      *v48 = v49;
      v41 = v9[1];
      *(a1[6] + ((v41 >> 3) & 0x1FFFFFF8)) |= 1 << v41;
      v42 = a1[3];
    }

    v9[1] = v41 + 1;
  }

  return v42 + 56 * v41;
}

unint64_t sub_AD0F94(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v9 = *a1;
  if (a3 < ((*(a1 + 8) - *a1) >> 3))
  {
    v11 = *(v9 + 8 * a3);
    v10 = *(v9 + 8 * a3 + 4);
    if (v10 != v11)
    {
      v12 = 0;
      v16 = *(a1 + 24);
      v17 = (v16 + 56 * v10);
      v18 = (v16 + 56 * v11);
      while (1)
      {
        v19 = v18[7];
        if (v19 != 0x7FFFFFFF)
        {
          v20 = *(a2 + 28);
          if (v19 <= v20 && v18[8] <= *(a2 + 32) && v18[9] <= *(a2 + 36))
          {
            return v12 << 8;
          }

          if (v20 <= v19 && *(a2 + 32) <= v18[8] && *(a2 + 36) <= v18[9])
          {
            v18[7] = 0x7FFFFFFF;
            v12 = 1;
          }
        }

        v18 += 14;
        if (v18 == v17)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v12 = 0;
LABEL_4:
  v13 = sub_AD0BAC(a1, a3, a2);
  if (a5)
  {
    *(v13 + 44) = -1;
    *(v13 + 52) = 0x7FFFFFFF;
  }

  if (a4)
  {
    v14 = *(a1 + 72);
    *(a1 + 72) = v14 + 1;
    *(v13 + 24) = v14;
    *(v13 + 20) = *(a2 + 24);
  }

  return (v12 << 8) | 1;
}

char *sub_AD10F4(uint64_t *a1, unsigned int a2)
{
  v4 = a2;
  v5 = *a1;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  if (v7 <= a2)
  {
    v8 = a2 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        v6 = v5 + 8 * v8;
        a1[1] = v6;
      }
    }

    else
    {
      sub_30B70(a1, v8 - v7);
      v5 = *a1;
      v6 = a1[1];
    }
  }

  v9 = a1[3];
  v10 = v9 + 56 * *(v5 + 8 * v4);
  v11 = (v6 - v5) >> 3;
  if (v11 <= v4)
  {
    v12 = a2 + 1;
    if (v12 <= v11)
    {
      if (v12 < v11)
      {
        a1[1] = v5 + 8 * v12;
      }
    }

    else
    {
      sub_30B70(a1, v12 - v11);
      v5 = *a1;
      v9 = a1[3];
    }
  }

  v13 = v9 + 56 * *(v5 + 8 * v4 + 4);
  if (v10 == v13)
  {
    v10 = v9 + 56 * *(v5 + 8 * v4 + 4);
  }

  else
  {
    while (*(v10 + 28) != 0x7FFFFFFF)
    {
      v10 += 56;
      if (v10 == v13)
      {
        v10 = v9 + 56 * *(v5 + 8 * v4 + 4);
        break;
      }
    }

    if (v13 != v10)
    {
      v14 = (v10 + 56);
      if (v10 + 56 != v13)
      {
        do
        {
          if (*(v14 + 7) != 0x7FFFFFFF)
          {
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[2];
            *(v10 + 48) = *(v14 + 6);
            *(v10 + 16) = v16;
            *(v10 + 32) = v17;
            *v10 = v15;
            v10 += 56;
          }

          v14 = (v14 + 56);
        }

        while (v14 != v13);
        v5 = *a1;
      }
    }
  }

  v18 = (a1[1] - v5) >> 3;
  if (v18 <= v4)
  {
    v19 = a2 + 1;
    if (v19 <= v18)
    {
      if (v19 < v18)
      {
        a1[1] = v5 + 8 * v19;
      }
    }

    else
    {
      sub_30B70(a1, v19 - v18);
      v5 = *a1;
    }
  }

  v20 = (a1[3] + 56 * *(v5 + 8 * v4 + 4));

  return sub_AD06A4(a1, v4, v10, v20);
}

void sub_AD12B0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 56 * a2;
      do
      {
        *v3 = xmmword_229B660;
        *(v3 + 16) = xmmword_22A7510;
        *(v3 + 32) = xmmword_22A7520;
        *(v3 + 48) = -NAN;
        v3 += 56;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x492492492492492)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x249249249249249)
    {
      v8 = 0x492492492492492;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 56 * v5;
    v11 = 56 * v5 + 56 * a2;
    v12 = 56 * v5;
    do
    {
      *v12 = xmmword_229B660;
      *(v12 + 16) = xmmword_22A7510;
      *(v12 + 32) = xmmword_22A7520;
      *(v12 + 48) = -NAN;
      v12 += 56;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v10 - v14;
    memcpy((v10 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_AD1494(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (a2 >= ((a1[1] - *a1) >> 3) || (v4 = *(v3 + 8 * a2), *(v3 + 8 * a2 + 4) - v4 <= a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A2D8(exception, "key does not exist and cannot be added");
    goto LABEL_7;
  }

  v5 = v4 + a3;
  v6 = a1[3];
  if (0x6DB6DB6DB6DB6DB7 * ((a1[4] - v6) >> 3) <= v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A2D8(exception, "index out of range");
LABEL_7:
  }

  return v6 + 56 * v5;
}

unint64_t sub_AD1588(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a5 == 0xFFFFFFFFLL || (sub_AD1710(a1, a2, a5) & 1) == 0)
  {
    v11 = *a1;
    if (a4 < ((a1[1] - *a1) >> 3))
    {
      v13 = *(v11 + 8 * a4);
      v12 = *(v11 + 8 * a4 + 4);
      if (v12 != v13)
      {
        v10 = 0;
        v18 = a1[3];
        v19 = (v18 + 56 * v12);
        v20 = (v18 + 56 * v13);
        while (1)
        {
          v21 = v20[7];
          if (v21 != 0x7FFFFFFF)
          {
            v22 = *(a2 + 28);
            if (v21 <= v22 && v20[8] <= *(a2 + 32) && v20[9] <= *(a2 + 36))
            {
              v9 = 0;
              return v9 & 0xFFFFFFFFFFFF00FFLL | (v10 << 8);
            }

            if (v22 <= v21 && *(a2 + 32) <= v20[8] && *(a2 + 36) <= v20[9])
            {
              v20[7] = 0x7FFFFFFF;
              v10 = 1;
            }
          }

          v20 += 14;
          if (v20 == v19)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v10 = 0;
LABEL_7:
    v14 = sub_AD0BAC(a1, a4, a2);
    *(v14 + 44) = -1;
    *(v14 + 52) = 0x7FFFFFFF;
    v15 = a3;
    v9 = 1;
    sub_AD0F94(a1, a2, v15, 1, 1);
    *(v16 + 44) = -1;
    *(v16 + 52) = 0x7FFFFFFF;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v9 & 0xFFFFFFFFFFFF00FFLL | (v10 << 8);
}

uint64_t sub_AD1710(uint64_t *a1, _DWORD *a2, unsigned int a3)
{
  v5 = a3;
  v6 = *a1;
  v7 = a1[1];
  v8 = (v7 - *a1) >> 3;
  if (v8 <= a3)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        v7 = v6 + 8 * v9;
        a1[1] = v7;
      }
    }

    else
    {
      v10 = a3;
      sub_30B70(a1, v9 - v8);
      a3 = v10;
      v6 = *a1;
      v7 = a1[1];
    }
  }

  v11 = a1[3];
  v12 = *(v6 + 8 * v5);
  v13 = (v7 - v6) >> 3;
  if (v13 > v5)
  {
    goto LABEL_7;
  }

  v15 = a3 + 1;
  if (v15 <= v13)
  {
    if (v15 < v13)
    {
      a1[1] = v6 + 8 * v15;
    }

LABEL_7:
    v14 = v11;
    goto LABEL_10;
  }

  sub_30B70(a1, v15 - v13);
  v6 = *a1;
  v14 = a1[3];
LABEL_10:
  v16 = (v11 + 56 * v12);
  v17 = (v14 + 56 * *(v6 + 8 * v5 + 4));
  if (v16 == v17)
  {
    return 0;
  }

  while (1)
  {
    v19 = v16[7];
    v20 = v19 != 0x7FFFFFFF && v19 <= a2[7];
    if (v20 && v16[8] <= a2[8] && v16[9] <= a2[9])
    {
      break;
    }

    v16 += 14;
    if (v16 == v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_AD1858(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= ((a1[1] - *a1) >> 3) || (v5 = (*a1 + 8 * a2), v4 = v5[1], v6 = v4 - *v5, v4 == *v5))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v11 = a3;
    do
    {
      v12 = sub_AD1494(a1, a2, v10);
      v14 = *(v12 + 16);
      v13 = *(v12 + 32);
      v15 = *v12;
      v30 = *(v12 + 48);
      v28 = v14;
      v29 = v13;
      v27 = v15;
      v16 = *a1;
      if (v11 < (a1[1] - *a1) >> 3)
      {
        v18 = *(v16 + 8 * v11);
        v17 = *(v16 + 8 * v11 + 4);
        if (v17 != v18)
        {
          v19 = 0;
          v23 = a1[3];
          v24 = (v23 + 56 * v17);
          v25 = (v23 + 56 * v18);
          while (1)
          {
            v26 = v25[7];
            if (v26 != 0x7FFFFFFF)
            {
              if (v26 <= SHIDWORD(v28) && v25[8] <= v29 && v25[9] <= DWORD1(v29))
              {
                v21 = 0;
                goto LABEL_10;
              }

              if (SHIDWORD(v28) <= v26 && v29 <= v25[8] && DWORD1(v29) <= v25[9])
              {
                v25[7] = 0x7FFFFFFF;
                v19 = 1;
              }
            }

            v25 += 14;
            if (v25 == v24)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v19 = 0;
LABEL_9:
      v20 = sub_AD0BAC(a1, v11, &v27);
      *(v20 + 44) = -1;
      *(v20 + 52) = 0x7FFFFFFF;
      v21 = 1;
LABEL_10:
      v22 = v19 | (v7 >> 8);
      v7 = v7 & 0xFFFF00FF | v21 & 0xFFFF00FF | ((v19 | BYTE1(v7)) << 8);
      ++v10;
    }

    while (v10 != v6);
    if (v22)
    {
      sub_AD10F4(a1, v11);
    }
  }

  return v7 & 1;
}

uint64_t sub_AD1A18(uint64_t a1, int a2, unsigned int a3)
{
  v228[0] = a3;
  *(a1 + 560) = *(a1 + 560) + 1.0;
  v6 = a3;
  v203 = *sub_A9C5E0((*(a1 + 40) + 88), a3);
  v7 = *(a1 + 304);
  v8 = (*(a1 + 312) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 312) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 304, v9 - v8);
    }

    sub_4D9168(a1 + 328, a3 + 1, 0);
  }

  v10 = *(a1 + 328);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 352, v228);
    v6 = v228[0];
  }

  v200 = *(*(a1 + 304) + 4 * v6);
  result = sub_A9D53C(&v226, *(a1 + 24), v203);
  v13 = v226;
  if (v226 < v227)
  {
    v198 = ~a2;
    v199 = a2 + 2;
    v201 = a2 + 1;
    while (1)
    {
      *(a1 + 568) = *(a1 + 568) + 1.0;
      v202 = *v13;
      sub_AD0464((a1 + 128), 0);
      result = sub_A79708(&v214, *(a1 + 24), v203, v200, 0, 1);
      v14 = v218;
      v15 = v218 < v217 || v218 >= v219;
      if (!v15)
      {
        break;
      }

LABEL_11:
      v13 = v226 + 4;
      v226 = v13;
      if (v13 >= v227)
      {
        return result;
      }
    }

    while (1)
    {
      v16 = __ROR8__(*v14, 32);
      v17 = *(a1 + 32);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_66;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_66;
        }
      }

LABEL_56:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 != -1)
        {
          goto LABEL_58;
        }

        goto LABEL_104;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 32), 1))
      {
LABEL_34:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_94;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_88;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_94:
            v43 = v37;
          }

          v73 = *(v17 + 48);
          if ((v73 - v41) >= 0x1555555555555555)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v70 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v70) & v33;
            v71 = (v34 + 12 * v37);
            v40 = *v71;
            v39 = v71[1];
            ++v70;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_94;
            }
          }

LABEL_88:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 != -1)
            {
              goto LABEL_58;
            }

            goto LABEL_104;
          }

          v43 = -1;
          v73 = *(v17 + 48);
          if ((v73 - v41) >= 0x1555555555555555)
          {
LABEL_283:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v74 = (v34 + 12 * v43), *(v17 + 36) == v74[1]) ? (v75 = *(v17 + 32) == *v74) : (v75 = 0), v75))
        {
          *(v17 + 40) = v41 - 1;
          v69 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v73 + 1;
          v69 = 3 * v43;
        }

        goto LABEL_103;
      }

LABEL_67:
      v66 = *(v17 + 40);
      v65 = *(v17 + 48);
      if ((v65 - v66) >= 0x1555555555555555)
      {
        goto LABEL_283;
      }

      v34 = *(v17 + 80);
      if (v66 && ((v67 = (v34 + 12 * v29), *(v17 + 36) == v67[1]) ? (v68 = *(v17 + 32) == *v67) : (v68 = 0), v68))
      {
        *(v17 + 40) = v66 - 1;
      }

      else
      {
        *(v17 + 48) = v65 + 1;
      }

      v69 = 3 * v29;
LABEL_103:
      v76 = 4 * v69;
      v77 = v34 + v76;
      *v77 = v16;
      *(v77 + 8) = -1;
      v50 = *(v17 + 80) + v76;
      v51 = *(v50 + 8);
      if (v51 != -1)
      {
LABEL_58:
        v213 = v51;
        result = sub_C435EC((a1 + 384), v51, v16);
        if ((result & 1) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_59;
      }

LABEL_104:
      v78 = *(v17 + 112);
      *(v17 + 112) = v78 + 1;
      *(v50 + 8) = v78;
      v80 = *(v17 + 96);
      v79 = *(v17 + 104);
      if (v80 >= v79)
      {
        v82 = *(v17 + 88);
        v83 = v80 - v82;
        v84 = (v80 - v82) >> 3;
        v85 = v84 + 1;
        if ((v84 + 1) >> 61)
        {
          sub_1794();
        }

        v86 = v79 - v82;
        if (v86 >> 2 > v85)
        {
          v85 = v86 >> 2;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFF8)
        {
          v87 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          if (!(v87 >> 61))
          {
            operator new();
          }

LABEL_284:
          sub_1808();
        }

        v88 = v84;
        v89 = (8 * v84);
        v90 = &v89[-v88];
        *v89 = v16;
        v81 = v89 + 1;
        memcpy(v90, v82, v83);
        *(v17 + 88) = v90;
        *(v17 + 96) = v81;
        *(v17 + 104) = 0;
        if (v82)
        {
          operator delete(v82);
        }
      }

      else
      {
        *v80 = v16;
        v81 = v80 + 1;
      }

      *(v17 + 96) = v81;
      v213 = *(v50 + 8);
      result = sub_C435EC((a1 + 384), v213, v16);
      if ((result & 1) == 0)
      {
LABEL_118:
        if (*(a1 + 21))
        {
          goto LABEL_200;
        }

        v91 = *(a1 + 128);
        v92 = *(a1 + 136);
        if (v92 != v91)
        {
          v93 = *(a1 + 152);
          v94 = *v91;
          goto LABEL_130;
        }

        v96 = 1 - ((v92 - v91) >> 3);
        v97 = *(a1 + 144);
        if (v96 > (v97 - v92) >> 3)
        {
          v98 = v97 - v91;
          v99 = v98 >> 2;
          if ((v98 >> 2) <= 1)
          {
            v99 = 1;
          }

          v15 = v98 >= 0x7FFFFFFFFFFFFFF8;
          v100 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v15)
          {
            v100 = v99;
          }

          if (!(v100 >> 61))
          {
            operator new();
          }

          goto LABEL_284;
        }

        bzero(*(a1 + 136), 8 * v96);
        v102 = &v92[2 * v96];
        *(a1 + 136) = v102;
        v91 = *(a1 + 128);
        v93 = *(a1 + 152);
        v94 = *v91;
        if (v91 == v102)
        {
          v95 = *(a1 + 144);
          if (v95 == v102)
          {
            v103 = 1;
            v104 = v95 - v91;
            if ((v104 >> 2) > 1)
            {
              v103 = v104 >> 2;
            }

            if (v104 >= 0x7FFFFFFFFFFFFFF8)
            {
              v105 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v105 = v103;
            }

            if (v105)
            {
              if (!(v105 >> 61))
              {
                operator new();
              }

              goto LABEL_284;
            }

            *&dword_0 = 0;
            *(a1 + 128) = 0;
            *(a1 + 136) = 8;
            *(a1 + 144) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            *v102 = 0;
            *(a1 + 136) = v102 + 2;
          }

          v91 = *(a1 + 128);
          v101 = *(a1 + 152);
        }

        else
        {
LABEL_130:
          v101 = v93;
        }

        result = sub_AD06A4((a1 + 128), 0, (v93 + 56 * v94), (v101 + 56 * v91[1]));
        goto LABEL_200;
      }

LABEL_59:
      v52 = *(a1 + 128);
      if (*(a1 + 136) != v52)
      {
        v54 = *v52;
        v53 = *(*(a1 + 128) + 4);
        if (v53 != v54)
        {
          v55 = *(a1 + 152);
          v56 = (v55 + 56 * v53);
          v57 = (v55 + 56 * v54);
          v58 = v223;
          v59 = v221;
          v60 = v216;
          v61 = (v218 - v217) >> 4;
          do
          {
            v64 = (v59 + 12 * v57[11]);
            if (v58)
            {
              v224 = v57[12];
              v62 = v57[13];
              v225 = v62;
            }

            else
            {
              v62 = *v64;
            }

            v63 = (v60 + *(v60 - *v60 + 6));
            v57[7] = *(&v63[2 * (v64[1] + v61) + 1] + *v63) + v62;
            v57 += 14;
          }

          while (v57 != v56);
          v222 = v64;
          sub_AD2D44((a1 + 128), 0);
          if ((*(v218 + 15) & 1) == 0 || v220 && (*(v220 + 4 * ((v218 - v217) >> 4)) & v202) != 0)
          {
            goto LABEL_161;
          }

          v106 = *(a1 + 120);
          if (*(a1 + 20) == 1)
          {
            v107 = v106 + v106 * *(a1 + 376);
            v108 = v213;
            v109 = *(a1 + 48);
            if (v109)
            {
              goto LABEL_145;
            }

LABEL_155:
            v113 = 2147483646;
          }

          else
          {
            v107 = -1;
            v108 = v213;
            v109 = *(a1 + 48);
            if (!v109)
            {
              goto LABEL_155;
            }

LABEL_145:
            if (*v109 > v108)
            {
              v110 = 0;
              v111 = *(a1 + 124) + v198;
              v112 = v111;
              while (v110 <= v111)
              {
                v113 = *sub_A9C7DC(v109 + 2, v109[1] * v108 + v112);
                v110 += 2;
                v112 -= 2;
                if (v113 != 0x7FFFFFFF)
                {
                  goto LABEL_157;
                }
              }
            }

            v113 = 0x7FFFFFFF;
          }

LABEL_157:
          if (!sub_AD2F94((a1 + 128), 0, v199 + v106 + v106 * v108, v106 + v106 * v108, v107, v113))
          {
            goto LABEL_161;
          }

          v114 = v213;
          if (*(a1 + 216) <= v213)
          {
            sub_4D9168(a1 + 208, v213 + 1, 0);
            v114 = v213;
          }

          if ((*(*(a1 + 208) + ((v114 >> 3) & 0x1FFFFFF8)) >> v114))
          {
LABEL_161:
            v115 = *(a1 + 128);
            v116 = *(a1 + 136);
            v117 = v116 - v115;
            if (v116 != v115)
            {
              goto LABEL_162;
            }

LABEL_178:
            v126 = 1 - (v117 >> 3);
            v127 = *(a1 + 144);
            if (v126 > (v127 - v116) >> 3)
            {
              v128 = v127 - v115;
              v129 = v128 >> 2;
              if ((v128 >> 2) <= 1)
              {
                v129 = 1;
              }

              v15 = v128 >= 0x7FFFFFFFFFFFFFF8;
              v130 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v15)
              {
                v130 = v129;
              }

              if (!(v130 >> 61))
              {
                operator new();
              }

              goto LABEL_284;
            }

            bzero(v116, 8 * v126);
            v116 += 2 * v126;
            *(a1 + 136) = v116;
            v115 = *(a1 + 128);
            v118 = *(a1 + 152);
            v119 = *v115;
            if (v115 != v116)
            {
              goto LABEL_185;
            }

LABEL_163:
            v120 = *(a1 + 144);
            if (v120 == v116)
            {
              v121 = 1;
              v122 = v120 - v115;
              if ((v122 >> 2) > 1)
              {
                v121 = v122 >> 2;
              }

              if (v122 >= 0x7FFFFFFFFFFFFFF8)
              {
                v123 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v123 = v121;
              }

              if (v123)
              {
                if (!(v123 >> 61))
                {
                  operator new();
                }

                goto LABEL_284;
              }

              *&dword_0 = 0;
              *(a1 + 128) = 0;
              *(a1 + 136) = 8;
              *(a1 + 144) = 0;
              if (v115)
              {
                operator delete(v115);
              }
            }

            else
            {
              *v116 = 0;
              *(a1 + 136) = v116 + 2;
            }

            v124 = (v118 + 56 * v119);
            v125 = *(a1 + 152) + 56 * *(*(a1 + 128) + 4);
            if (v124 == v125)
            {
              goto LABEL_192;
            }
          }

          else
          {
            sub_DD38(a1 + 232, &v213);
            *(*(a1 + 208) + ((v213 >> 3) & 0x1FFFFFF8)) |= 1 << v213;
            v115 = *(a1 + 128);
            v116 = *(a1 + 136);
            v117 = v116 - v115;
            if (v116 == v115)
            {
              goto LABEL_178;
            }

LABEL_162:
            v118 = *(a1 + 152);
            v119 = *v115;
            if (v115 == v116)
            {
              goto LABEL_163;
            }

LABEL_185:
            v124 = (v118 + 56 * v119);
            v125 = v118 + 56 * v115[1];
            if (v124 == v125)
            {
LABEL_192:
              result = sub_AD2D44((a1 + 128), 0);
              goto LABEL_193;
            }
          }

          v131 = v223;
          v132 = v221;
          v133 = v216;
          v134 = (v218 - v217) >> 4;
          do
          {
            v137 = (v132 + 12 * v124[11]);
            if (v131)
            {
              v224 = v124[12];
              v135 = v124[13];
              v225 = v135;
            }

            else
            {
              v135 = *v137;
            }

            v136 = (v133 + *(v133 - *v133 + 6));
            v124[7] = *(&v136[2 * (v137[1] + v134) + 2] + *v136) + v135;
            v124 += 14;
          }

          while (v124 != v125);
          v222 = v137;
          goto LABEL_192;
        }
      }

LABEL_193:
      if ((*(v218 + 15) & 2) != 0)
      {
        if (v220)
        {
          if (*(v220 + 4 * ((v218 - v217) >> 4)) == v202)
          {
            goto LABEL_198;
          }
        }

        else if (!v202)
        {
LABEL_198:
          v138 = v201 + *(a1 + 120) + *(a1 + 120) * v213;
          v139 = *(a1 + 128);
          if (v138 >= (*(a1 + 136) - v139) >> 3)
          {
            goto LABEL_200;
          }

          v141 = (v139 + 8 * v138);
          v140 = v141[1];
          v142 = (v140 - *v141);
          if (v140 == *v141)
          {
            goto LABEL_200;
          }

          v147 = 0;
          while (2)
          {
            v148 = *(a1 + 128);
            if (v138 >= (*(a1 + 136) - v148) >> 3 || (v150 = (v148 + 8 * v138), v149 = *v150, v150[1] - *v150 <= v147))
            {
              v196 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v196, "key does not exist and cannot be added");
              goto LABEL_282;
            }

            v151 = v149 + v147;
            v152 = *(a1 + 152);
            if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - v152) >> 3) <= v151)
            {
              v196 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v196, "index out of range");
LABEL_282:
            }

            v153 = v152 + 56 * v151;
            if (v223 == 1)
            {
              result = sub_A7A1E8(*(a1 + 24), &v214, *(v218 + 2) + *(v153 + 28), 1u);
              if (result)
              {
                goto LABEL_228;
              }

              goto LABEL_220;
            }

            result = sub_A7A710(&v214, *(v218 + 2) + *(v153 + 28), 1);
            if (!result)
            {
              goto LABEL_220;
            }

LABEL_228:
            v154 = v138;
            v155 = v142;
            v156 = *(v153 + 20);
            v157 = *(v153 + 32);
            v158 = *(v153 + 36);
            v159 = *(v153 + 40);
            v160 = *(a1 + 24);
            v161 = sub_A57920((v160 + 4136), v203);
            v162 = v161;
            v163 = (v161 - *v161);
            if (*v163 >= 0xFu && (v164 = v163[7]) != 0)
            {
              v165 = *(v160 + 4136);
              v166 = sub_4FC268(*(v161 + v164));
              if ((sub_C9E594(v165 + 3896, v166) & 1) == 0)
              {
LABEL_231:
                v167 = (v162 - *v162);
                if (*v167 >= 0xBu && (v168 = v167[5]) != 0)
                {
                  v169 = *(v162 + v168);
                }

                else
                {
                  v169 = 0;
                }

                v142 = v155;
                result = sub_A882D4(v169);
LABEL_238:
                v138 = v154;
                v172 = v225;
                v173 = 0xFFFFFFFF00000000;
                if (v223)
                {
                  v173 = v224 << 32;
                }

                v174 = (-1431655765 * ((v222 - v221) >> 2)) | v173;
                if (!v223)
                {
                  v172 = 0x7FFFFFFF;
                }

                v175 = (v216 + *(v216 - *v216 + 6));
                v176 = v175 + *v175;
                v177 = &v225;
                if (!v223)
                {
                  v177 = v222;
                }

                v178 = *&v176[8 * v222[1] + 8 + 8 * ((v218 - v217) >> 4)] + *v177;
                LODWORD(v204) = (v218 - v217) >> 4;
                *(&v204 + 4) = v174;
                HIDWORD(v204) = v172;
                v205 = v228[0];
                v206 = v156;
                v207 = v178;
                v208 = v157;
                v209 = result + v158;
                v210 = v159;
                v211 = v174;
                v212 = v172;
                v179 = *(a1 + 128);
                if (*(a1 + 136) == v179 || (v181 = *v179, v180 = *(*(a1 + 128) + 4), v180 == v181))
                {
                  result = sub_AD0BAC((a1 + 128), 0, &v204);
                  goto LABEL_220;
                }

                v182 = 0;
                v183 = *(a1 + 152);
                v184 = (v183 + 56 * v180);
                v185 = (v183 + 56 * v181);
                do
                {
                  v186 = v185[7];
                  if (v186 != 0x7FFFFFFF)
                  {
                    if (v186 <= v207 && v185[8] <= v208 && v185[9] <= v209)
                    {
                      goto LABEL_257;
                    }

                    if (v207 <= v186 && v208 <= v185[8] && v209 <= v185[9])
                    {
                      v185[7] = 0x7FFFFFFF;
                      v182 = 1;
                    }
                  }

                  v185 += 14;
                }

                while (v185 != v184);
                result = sub_AD0BAC((a1 + 128), 0, &v204);
LABEL_257:
                if ((v182 & 1) == 0)
                {
LABEL_220:
                  if (++v147 == v142)
                  {
                    goto LABEL_200;
                  }

                  continue;
                }

                v187 = *(a1 + 128);
                if (*(a1 + 136) != v187)
                {
                  v188 = *(a1 + 152);
                  v189 = *v187;
LABEL_260:
                  v190 = v188 + 56 * v189;
                  v191 = v188 + 56 * v187[1];
                  if (v190 != v191)
                  {
                    goto LABEL_265;
                  }

                  goto LABEL_261;
                }

                sub_30B70(a1 + 128, 1uLL);
                v187 = *(a1 + 128);
                v188 = *(a1 + 152);
                v189 = *v187;
                if (*(a1 + 136) != v187)
                {
                  goto LABEL_260;
                }

                sub_30B70(a1 + 128, 1uLL);
                v187 = *(a1 + 128);
                v190 = v188 + 56 * v189;
                v191 = *(a1 + 152) + 56 * v187[1];
                if (v190 == v191)
                {
LABEL_261:
                  v190 = v191;
                  if (*(a1 + 136) == v187)
                  {
                    goto LABEL_262;
                  }
                }

                else
                {
LABEL_265:
                  while (*(v190 + 28) != 0x7FFFFFFF)
                  {
                    v190 += 56;
                    if (v190 == v191)
                    {
                      v190 = v191;
                      break;
                    }
                  }

                  if (v191 == v190 || (v192 = v190 + 56, v190 + 56 == v191))
                  {
                    if (*(a1 + 136) != v187)
                    {
                      goto LABEL_271;
                    }
                  }

                  else
                  {
                    do
                    {
                      if (*(v192 + 28) != 0x7FFFFFFF)
                      {
                        v193 = *v192;
                        v194 = *(v192 + 16);
                        v195 = *(v192 + 32);
                        *(v190 + 48) = *(v192 + 48);
                        *(v190 + 16) = v194;
                        *(v190 + 32) = v195;
                        *v190 = v193;
                        v190 += 56;
                      }

                      v192 += 56;
                    }

                    while (v192 != v191);
                    v187 = *(a1 + 128);
                    if (*(a1 + 136) != v187)
                    {
                      goto LABEL_271;
                    }
                  }

LABEL_262:
                  sub_30B70(a1 + 128, 1uLL);
                  v187 = *(a1 + 128);
                }

LABEL_271:
                result = sub_AD06A4((a1 + 128), 0, v190, (*(a1 + 152) + 56 * v187[1]));
                goto LABEL_220;
              }
            }

            else
            {
              v170 = *(v160 + 4136);
              v171 = sub_4FC268(0x7FFF);
              if ((sub_C9E594(v170 + 3896, v171) & 1) == 0)
              {
                goto LABEL_231;
              }
            }

            break;
          }

          result = 128;
          v142 = v155;
          goto LABEL_238;
        }
      }

LABEL_200:
      v143 = v217;
      v14 = v218 + 2;
      v218 += 2;
      if (*(v214 + 16) == 1 && (v215 & 1) == 0 && v14 >= v217 && v14 < v219)
      {
        do
        {
          v144 = __ROR8__(*v14, 32);
          if (HIDWORD(v144) == 1 && (v144 + 3) < 2)
          {
            break;
          }

          result = sub_2D5204(**(v214 + 4120));
          v143 = v217;
          v14 = v218;
          if (result)
          {
            break;
          }

          v14 = v218 + 2;
          v218 = v14;
        }

        while (v14 >= v217 && v14 < v219);
      }

      if (v14 < v143 || v14 >= v219)
      {
        goto LABEL_11;
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_56;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 32), 1))
      {
        goto LABEL_34;
      }

      goto LABEL_67;
    }

LABEL_66:
    v29 = v24;
    if (sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  return result;
}

char *sub_AD2D44(char *result, unsigned int a2)
{
  v2 = result;
  v3 = a2;
  if (a2 < ((*(result + 1) - *result) >> 3))
  {
    v4 = *(*result + 8 * a2 + 4) - *(*result + 8 * a2);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      do
      {
        if (v4 <= v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v4;
        }

        result = sub_AD1494(v2, v3, v6++);
        if (*(result + 7) != 0x7FFFFFFF && v6 < v4)
        {
          if (v3 >= (v2[1] - *v2) >> 3)
          {
LABEL_33:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "key does not exist and cannot be added");
          }

          else
          {
            v10 = (*v2 + 8 * v3);
            v11 = v6;
            while (1)
            {
              if (v10[1] - *v10 <= v11)
              {
                goto LABEL_33;
              }

              v12 = v11 + *v10;
              v13 = v2[3];
              if (0x6DB6DB6DB6DB6DB7 * ((v2[4] - v13) >> 3) <= v12)
              {
                break;
              }

              v14 = (v13 + 56 * v12);
              v15 = v14[7];
              if (v15 != 0x7FFFFFFF)
              {
                v16 = *(result + 7);
                if (v16 <= v15 && *(result + 8) <= v14[8] && *(result + 9) <= v14[9])
                {
                  v14[7] = 0x7FFFFFFF;
                  v5 = 1;
                }

                else if (v15 <= v16 && v14[8] <= *(result + 8) && v14[9] <= *(result + 9))
                {
                  *(result + 7) = 0x7FFFFFFF;
                  v5 = 1;
                  goto LABEL_6;
                }
              }

              if (v8 == ++v11)
              {
                goto LABEL_6;
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "index out of range");
          }
        }

LABEL_6:
        ++v7;
      }

      while (v6 != v4);
      if (v5)
      {

        return sub_AD10F4(v2, v3);
      }
    }
  }

  return result;
}

uint64_t sub_AD2F94(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a2 >= ((a1[1] - *a1) >> 3))
  {
    goto LABEL_6;
  }

  v8 = (*a1 + 8 * a2);
  v7 = v8[1];
  v9 = v7 - *v8;
  if (v7 == *v8)
  {
    goto LABEL_6;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v12 = 0;
    do
    {
      sub_AD1494(a1, a2, v12++);
    }

    while (v9 != v12);
LABEL_6:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if (a5 == 0xFFFFFFFFLL)
  {
    v13 = 0;
    v18 = 0;
    do
    {
      v21 = sub_AD1494(a1, a2, v18);
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 48);
      v34 = *v21;
      v35 = v23;
      v37 = v24;
      v36 = v22;
      if (SHIDWORD(v23) <= a6)
      {
        if (sub_AD1710(a1, &v34, a4))
        {
          LOWORD(v19) = 0;
          LOBYTE(v20) = 0;
        }

        else
        {
          v20 = sub_AD0F94(a1, &v34, a3, 1, 1);
          v19 = v20 >> 8;
          if (v20)
          {
            *(v25 + 44) = -1;
            *(v25 + 52) = 0x7FFFFFFF;
          }
        }

        v13 = v20 | v13 | v13 & 0xFF00 | (v19 << 8);
      }

      ++v18;
    }

    while (v9 != v18);
  }

  else
  {
    v13 = 0;
    v26 = 0;
    do
    {
      v29 = sub_AD1494(a1, a2, v26);
      v31 = *(v29 + 16);
      v30 = *(v29 + 32);
      v32 = *(v29 + 48);
      v34 = *v29;
      v35 = v31;
      v37 = v32;
      v36 = v30;
      if (SHIDWORD(v31) <= a6)
      {
        if (sub_AD1710(a1, &v34, a5) & 1) != 0 || (sub_AD1710(a1, &v34, a4))
        {
          LOWORD(v27) = 0;
          LOBYTE(v28) = 0;
        }

        else
        {
          v28 = sub_AD0F94(a1, &v34, a3, 1, 1);
          v27 = v28 >> 8;
          if (v28)
          {
            *(v33 + 44) = -1;
            *(v33 + 52) = 0x7FFFFFFF;
          }
        }

        v13 = v28 | v13 | v13 & 0xFF00 | (v27 << 8);
      }

      ++v26;
    }

    while (v9 != v26);
  }

  if ((v13 & 0x100) != 0)
  {
    sub_AD10F4(a1, a3);
  }

  return v13 & 1;
}

void sub_AD31E0(uint64_t a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v26 = 0;
  LOBYTE(v25) = 0;
  sub_CC9264(v10, &v25);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  BYTE8(v19) = 0;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_A98AD4(a1 + 152, v8);
  *&v25 = &v23;
  sub_A31F30(&v25);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    sub_A95778(&v8[1]);
    operator delete(v8[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  sub_A98CD4(a1 + 416);
  sub_A98CD4(a1 + 536);
  *(a1 + 2072) = 0;
  *(a1 + 2056) = 0u;
  v2 = *(a1 + 24);
  *(a1 + 1440) = v2;
  *(a1 + 1444) = *(a1 + 28);
  v3 = *(a1 + 72);
  *(a1 + 1445) = v3;
  *(a1 + 688) = v2;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v3;
  v8[0] = 0x1FFFFFFFELL;
  v4 = sub_A98E8C(a1 + 416, v8);
  v5 = *(v4 + 8);
  if (v5 == -1)
  {
    v6 = *(a1 + 528);
    *(a1 + 528) = v6 + 1;
    *(v4 + 8) = v6;
    v7 = v4;
    sub_2512DC(a1 + 504, v8);
    *(a1 + 656) = *(v7 + 8);
  }

  else
  {
    *(a1 + 656) = v5;
  }
}

void sub_AD338C(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_AD33B0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_A96160(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
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
  sub_A9DD88(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2056);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2056);
  }

  *(a1 + 2056) = v8 + v7;
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

void sub_AD37E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_AD3880(uint64_t a1, int a2)
{
  v132 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v130[0] = *(a1 + 88);
  v130[1] = v3;
  v130[2] = *(a1 + 120);
  v131 = *(a1 + 136);
  LOBYTE(v130[0]) = 0;
  v129[0] = v130;
  v129[1] = a1;
  v129[2] = &v132;
  v4 = *(a1 + 664);
  v5 = *(a1 + 656);
  if (*v4 <= v5)
  {
    *v4 = v5 + 1;
    v6 = v4[2];
    v7 = v4[1] * (v5 + 1);
    v8 = (v4[3] - v6) >> 2;
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v10 != 0 && v9)
    {
      v11 = a2;
      sub_617214((v4 + 2), v10);
      a2 = v11;
    }

    else if (!v9)
    {
      v4[3] = v6 + 4 * v7;
    }
  }

  v12 = *(v4[2] + 4 * v4[1] * v5 + 4 * ((2 * a2) | 1u));
  v14 = (a1 + 92);
  v13 = *(a1 + 92);
  v133 = v13;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_124;
  }

  v15 = v13 - v12;
  if ((10 * (v13 - v12)) >= *(a1 + 52))
  {
    v16 = sub_AD57D8(v129, v12);
    LODWORD(v114) = v16;
    v13 = v133;
    if (v16 == 0x7FFFFFFF || v16 >= v133)
    {
LABEL_34:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_33:
      v13 = v114;
      v133 = v114;
      goto LABEL_34;
    }

    sub_19594F8(&v118);
    sub_4A5C(&v118, "[", 1);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v20 = sub_258D4(v19);
    v21 = sub_4A5C(v20, " to ", 4);
    sub_258D4(v21);
    if ((v128 & 0x10) != 0)
    {
      v23 = v127;
      if (v127 < v124)
      {
        v127 = v124;
        v23 = v124;
      }

      v24 = &v123;
    }

    else
    {
      if ((v128 & 8) == 0)
      {
        v22 = 0;
        v117 = 0;
LABEL_28:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 2u);
        if (v117 < 0)
        {
          operator delete(__dst);
        }

        if (v126 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v120);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v24 = v121;
      v23 = v122;
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

    v117 = v23 - *v24;
    if (v22)
    {
      memmove(&__dst, v25, v22);
    }

    goto LABEL_28;
  }

LABEL_35:
  if ((10 * v15) < *(a1 + 52))
  {
    goto LABEL_124;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_53;
  }

  sub_19594F8(&v118);
  sub_4A5C(&v118, "[", 1);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, "] Journey duration (", 20);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v128 & 0x10) != 0)
  {
    v29 = v127;
    if (v127 < v124)
    {
      v127 = v124;
      v29 = v124;
    }

    v30 = v123;
    v28 = v29 - v123;
    if (v29 - v123 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_92:
      sub_3244();
    }

LABEL_43:
    if (v28 >= 0x17)
    {
      operator new();
    }

    v115 = v28;
    if (v28)
    {
      memmove(&v114, v30, v28);
    }

    goto LABEL_48;
  }

  if ((v128 & 8) != 0)
  {
    v30 = v121[0];
    v28 = v122 - v121[0];
    if (v122 - v121[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_92;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v115 = 0;
LABEL_48:
  *(&v114 + v28) = 0;
  sub_7E854(&v114, 2u);
  if (v115 < 0)
  {
    operator delete(v114);
  }

  if (v126 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v120);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_53:
  v31 = *(a1 + 60);
  if (v31 > *(a1 + 56))
  {
    v32 = v12;
    goto LABEL_123;
  }

  v113 = v12;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v35 = v31 % 10;
      goto LABEL_77;
    }

    sub_19594F8(&v118);
    sub_4A5C(&v118, "[", 1);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, "] Examining time shift of ", 26);
    v35 = v31 % 10;
    v36 = std::ostream::operator<<();
    sub_4A5C(v36, " sec (exponential search)", 25);
    if ((v128 & 0x10) != 0)
    {
      v38 = v127;
      v39 = &v123;
      if (v127 < v124)
      {
        v127 = v124;
        v38 = v124;
        v39 = &v123;
      }

      goto LABEL_66;
    }

    if ((v128 & 8) != 0)
    {
      v38 = v122;
      v39 = v121;
LABEL_66:
      v40 = *v39;
      v37 = v38 - *v39;
      if (v37 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v37 >= 0x17)
      {
        operator new();
      }

      v115 = v38 - *v39;
      if (v37)
      {
        memmove(&v114, v40, v37);
      }

      goto LABEL_72;
    }

    v37 = 0;
    v115 = 0;
LABEL_72:
    *(&v114 + v37) = 0;
    sub_7E854(&v114, 2u);
    if (v115 < 0)
    {
      operator delete(v114);
    }

    v118 = v112;
    *(&v118 + *(v112 - 3)) = v111;
    if (v126 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v120);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_77:
    v41 = v31 / -10;
    v42 = v31 < 0 ? -5 : 5;
    v43 = (((-103 * (v42 + v35)) >> 15) & 1) + ((-103 * (v42 + v35)) >> 10);
    v44 = v41 + v12 + v43;
    v45 = sub_AD57D8(v129, v44);
    if (*(a1 + 64) * fabs((10 * (v45 - v133))) >= fabs((10 * (v43 + v41))))
    {
      break;
    }

    v33 = v31 + v31;
    if (v33 >= 0.0)
    {
      if (v33 >= 4.50359963e15)
      {
        goto LABEL_57;
      }

      v46 = (v33 + v33) + 1;
    }

    else
    {
      if (v33 <= -4.50359963e15)
      {
        goto LABEL_57;
      }

      v46 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
    }

    v33 = (v46 >> 1);
LABEL_57:
    v31 = v33;
    if (*(a1 + 56) < v33)
    {
      v32 = v12;
      goto LABEL_123;
    }
  }

  v47 = v45;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v118);
    sub_4A5C(&v118, "[", 1);
    v48 = std::ostream::operator<<();
    sub_4A5C(v48, "] Journey duration improved from ", 33);
    v49 = std::ostream::operator<<();
    sub_4A5C(v49, " to ", 4);
    v50 = std::ostream::operator<<();
    sub_4A5C(v50, " sec for time shift of ", 23);
    v51 = std::ostream::operator<<();
    sub_4A5C(v51, " sec", 4);
    if ((v128 & 0x10) != 0)
    {
      v53 = v127;
      if (v127 < v124)
      {
        v127 = v124;
        v53 = v124;
      }

      v54 = &v123;
    }

    else
    {
      if ((v128 & 8) == 0)
      {
        v52 = 0;
        v115 = 0;
        goto LABEL_103;
      }

      v54 = v121;
      v53 = v122;
    }

    v55 = *v54;
    v52 = v53 - *v54;
    if (v52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v52 >= 0x17)
    {
      operator new();
    }

    v115 = v53 - *v54;
    if (v52)
    {
      memmove(&v114, v55, v52);
    }

LABEL_103:
    *(&v114 + v52) = 0;
    sub_7E854(&v114, 2u);
    if (v115 < 0)
    {
      operator delete(v114);
    }

    v118 = v112;
    *(&v118 + *(v112 - 3)) = v111;
    if (v126 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v120);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  v133 = v47;
  v32 = v12;
  if (v44 != v12)
  {
    v56 = vcvtd_n_f64_s32(v31, 1uLL);
    if (v56 >= 0.0)
    {
      if (v56 < 4.50359963e15)
      {
        v57 = (v56 + v56) + 1;
LABEL_114:
        v56 = (v57 >> 1);
      }
    }

    else if (v56 > -4.50359963e15)
    {
      v57 = (v56 + v56) - 1 + (((v56 + v56) - 1) >> 63);
      goto LABEL_114;
    }

    v58 = v31 * 0.25;
    if (v58 >= 0.0)
    {
      if (v58 < 4.50359963e15)
      {
        v59 = (v58 + v58) + 1;
LABEL_120:
        v58 = (v59 >> 1);
      }
    }

    else if (v58 > -4.50359963e15)
    {
      v59 = (v58 + v58) - 1 + (((v58 + v58) - 1) >> 63);
      goto LABEL_120;
    }

    v60 = v58;
    if (*(a1 + 60) > v58)
    {
      v32 = v44;
      goto LABEL_123;
    }

    v86 = v56;
    v32 = v44;
    while (2)
    {
      *(a1 + 296) = *(a1 + 296) + 1.0;
      v88 = v60 + v86;
      if (sub_7E7E4(2u))
      {
        sub_19594F8(&v118);
        sub_4A5C(&v118, "[", 1);
        v89 = std::ostream::operator<<();
        sub_4A5C(v89, "] Examining time shift of ", 26);
        v90 = v88 % 10;
        v91 = std::ostream::operator<<();
        sub_4A5C(v91, " sec (binary refinement search)", 31);
        if ((v128 & 0x10) != 0)
        {
          v93 = v86;
          v94 = v127;
          v95 = &v123;
          if (v127 < v124)
          {
            v127 = v124;
            v94 = v124;
            v95 = &v123;
          }
        }

        else
        {
          if ((v128 & 8) == 0)
          {
            v92 = 0;
            v115 = 0;
            goto LABEL_182;
          }

          v93 = v86;
          v94 = v122;
          v95 = v121;
        }

        v96 = *v95;
        v92 = v94 - *v95;
        if (v92 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v92 >= 0x17)
        {
          operator new();
        }

        v115 = v94 - *v95;
        if (v92)
        {
          memmove(&v114, v96, v92);
        }

        v86 = v93;
LABEL_182:
        *(&v114 + v92) = 0;
        sub_7E854(&v114, 2u);
        if (v115 < 0)
        {
          operator delete(v114);
        }

        v118 = v112;
        *(&v118 + *(v112 - 3)) = v111;
        if (v126 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v120);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      else
      {
        v90 = v88 % 10;
      }

      if (v88 < 0)
      {
        v97 = -5;
      }

      else
      {
        v97 = 5;
      }

      v98 = v88 / -10 + v113 + (((-103 * (v97 + v90)) >> 15) & 1) + ((-103 * (v97 + v90)) >> 10);
      v99 = sub_AD57D8(v129, v98);
      if (*(a1 + 64) * fabs((10 * (v133 - v99))) >= fabs((10 * (v32 - v98))))
      {
        v86 = v88;
        v87 = vcvtd_n_f64_s32(v60, 1uLL);
        if (v87 >= 0.0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v100 = v99;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v118);
          sub_4A5C(&v118, "[", 1);
          v101 = std::ostream::operator<<();
          sub_4A5C(v101, "] Journey duration improved from ", 33);
          v102 = std::ostream::operator<<();
          sub_4A5C(v102, " to ", 4);
          v103 = std::ostream::operator<<();
          sub_4A5C(v103, " sec for time shift of ", 23);
          v104 = std::ostream::operator<<();
          sub_4A5C(v104, " sec", 4);
          if ((v128 & 0x10) != 0)
          {
            v105 = v86;
            v108 = v127;
            v109 = &v123;
            if (v127 < v124)
            {
              v127 = v124;
              v108 = v124;
              v109 = &v123;
            }
          }

          else
          {
            v105 = v86;
            if ((v128 & 8) == 0)
            {
              v106 = 0;
              v115 = 0;
              goto LABEL_207;
            }

            v108 = v122;
            v109 = v121;
          }

          v110 = *v109;
          v106 = v108 - *v109;
          if (v106 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v106 >= 0x17)
          {
            operator new();
          }

          v115 = v108 - *v109;
          if (v106)
          {
            memmove(&v114, v110, v106);
          }

LABEL_207:
          *(&v114 + v106) = 0;
          sub_7E854(&v114, 2u);
          v86 = v105;
          if (v115 < 0)
          {
            operator delete(v114);
          }

          v118 = v112;
          *(&v118 + *(v112 - 3)) = v111;
          if (v126 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v120);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v133 = v100;
        v32 = v98;
        v87 = vcvtd_n_f64_s32(v60, 1uLL);
        if (v87 >= 0.0)
        {
LABEL_213:
          if (v87 < 4.50359963e15)
          {
            v107 = (v87 + v87) + 1;
LABEL_165:
            v87 = (v107 >> 1);
          }

          goto LABEL_166;
        }
      }

      if (v87 > -4.50359963e15)
      {
        v107 = (v87 + v87) - 1 + (((v87 + v87) - 1) >> 63);
        goto LABEL_165;
      }

LABEL_166:
      v60 = v87;
      if (*(a1 + 60) > v87)
      {
        break;
      }

      continue;
    }
  }

LABEL_123:
  *(a1 + 232) = sub_7EA60(&__dst);
  v13 = v133;
  v12 = v32;
  v14 = (a1 + 92);
LABEL_124:
  if (v13 != *v14)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v118);
      sub_4A5C(&v118, "[", 1);
      v61 = std::ostream::operator<<();
      v62 = sub_4A5C(v61, "] Shifting ", 11);
      v63 = sub_4A5C(v62, "arrival", 7);
      v64 = sub_4A5C(v63, " time from ", 11);
      v65 = sub_258D4(v64);
      v66 = sub_4A5C(v65, " to ", 4);
      sub_258D4(v66);
      if ((v128 & 0x10) != 0)
      {
        v68 = v127;
        if (v127 < v124)
        {
          v127 = v124;
          v68 = v124;
        }

        v69 = v123;
        v67 = v68 - v123;
        if (v68 - v123 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_163;
        }
      }

      else
      {
        if ((v128 & 8) == 0)
        {
          v67 = 0;
          v117 = 0;
          goto LABEL_137;
        }

        v69 = v121[0];
        v67 = v122 - v121[0];
        if (v122 - v121[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_163:
          sub_3244();
        }
      }

      if (v67 >= 0x17)
      {
        operator new();
      }

      v117 = v67;
      if (v67)
      {
        memmove(&__dst, v69, v67);
      }

LABEL_137:
      *(&__dst + v67) = 0;
      sub_7E854(&__dst, 2u);
      if (v117 < 0)
      {
        operator delete(__dst);
      }

      if (v126 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v120);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v70 = v132;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_155;
  }

  v71 = v132 + 1;
  v72 = *(a1 + 24);
  if (v132 + 1 <= (v72 + 1))
  {
    v71 = v72 + 1;
  }

  if (v132 + 1 < (v72 + 1))
  {
    v73 = v71 - 1;
    v74 = 2 * v132 + 3;
    v75 = v132;
    while (1)
    {
      v76 = *(a1 + 664);
      v77 = *(a1 + 656);
      if (*v76 <= v77)
      {
        *v76 = v77 + 1;
        v78 = v76[2];
        v79 = v76[1] * (v77 + 1);
        v80 = (v76[3] - v78) >> 2;
        if (v79 <= v80)
        {
          if (v79 < v80)
          {
            v76[3] = v78 + 4 * v79;
          }
        }

        else
        {
          sub_617214((v76 + 2), v79 - v80);
        }
      }

      if (*(v76[2] + 4 * v76[1] * v77 + 4 * v74) != 0x7FFFFFFF)
      {
        break;
      }

      ++v75;
      v74 += 2;
      if (v73 == v75)
      {
        goto LABEL_155;
      }
    }
  }

  else
  {
LABEL_155:
    if (*(a1 + 24) >= (*(a1 + 148) + v70))
    {
      v75 = *(a1 + 148) + v70;
    }

    else
    {
      v75 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v75;
  v81 = *(a1 + 144);
  v82 = v81 / -10;
  v83 = v81 % 10;
  if (v81 < 0)
  {
    v84 = -5;
  }

  else
  {
    v84 = 5;
  }

  sub_AD57D8(v129, v82 + v12 + (((-103 * (v84 + v83)) >> 15) & 1) + ((-103 * (v84 + v83)) >> 10));
  return v133;
}

void sub_AD512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
    sub_1959728(&a29);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a29);
  _Unwind_Resume(a1);
}

void sub_AD52CC(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 48) != 1)
  {
    goto LABEL_13;
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
      v12 = *(a1 + 656);
      if (*v11 <= v12)
      {
        *v11 = v12 + 1;
        v13 = v11[2];
        v14 = v11[1] * (v12 + 1);
        v15 = (v11[3] - v13) >> 2;
        if (v14 <= v15)
        {
          if (v14 < v15)
          {
            v11[3] = v13 + 4 * v14;
          }
        }

        else
        {
          sub_617214((v11 + 2), v14 - v15);
        }
      }

      if (*(v11[2] + 4 * v11[1] * v12 + 4 * v9) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (*(a1 + 24) >= (*(a1 + 148) + a2))
    {
      v10 = *(a1 + 148) + a2;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v16 = *(a1 + 104);
  v51[0] = *(a1 + 88);
  v51[1] = v16;
  v51[2] = *(a1 + 120);
  v52 = *(a1 + 136);
  DWORD1(v51[0]) = a3;
  *(a1 + 1440) = v10;
  sub_AD5B78(a1 + 1424, v51);
  sub_AD5E64((a1 + 1424), a2, v43);
  sub_CC92D8(a1 + 184, a1 + 1904, &__p);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v17 = *(a1 + 2048);
  *(a1 + 328) -= v17;
  v18 = *(a1 + 2072);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  *(a1 + 2072) = v18;
  sub_AA9EA4(v44[0], v44[1], a1 + 160);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v30);
    sub_4A5C(&v30, "[", 1);
    v19 = std::ostream::operator<<();
    sub_4A5C(v19, "] McSPA scanned ", 16);
    v20 = std::ostream::operator<<();
    sub_4A5C(v20, " stop patterns and obtained ", 28);
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, " journeys in ", 13);
    v22 = std::ostream::operator<<();
    v23 = sub_4A5C(v22, " ms using ", 10);
    v24 = sub_71478(v23, *(a1 + 2048));
    sub_4A5C(v24, " of memory", 10);
    if ((v40 & 0x10) != 0)
    {
      v26 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v26 = v36;
      }

      v27 = v35;
      v25 = v26 - v35;
      if (v26 - v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v25 = 0;
        v29 = 0;
LABEL_32:
        *(&v28 + v25) = 0;
        sub_7E854(&v28, 2u);
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v27 = v33;
      v25 = v34 - v33;
      if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_47:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v29 = v25;
    if (v25)
    {
      memmove(&v28, v27, v25);
    }

    goto LABEL_32;
  }

LABEL_37:
  v30 = &v50;
  sub_A31F30(&v30);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[3]);
  }

  if (v44[0])
  {
    sub_A95778(v44);
    operator delete(v44[0]);
  }
}

void sub_AD575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_AD57D8(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(v2 + 4) = a2;
  sub_A99960(v3 + 680, v2);
  sub_CC92D8(v3 + 184, v3 + 1272, &v32);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  v4 = *(v3 + 1416);
  *(v3 + 328) -= v4;
  v5 = *(v3 + 2064);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 2064) = v5;
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

void sub_AD5B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
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

void sub_AD5B78(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v42);
  v4 = *(a2 + 16);
  *(a1 + 64) = *a2;
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 40);
  sub_AD80F0(a1);
  v5 = *(a1 + 32);
  v43[0] = 0x1FFFFFFFELL;
  v6 = sub_A98E8C(v5, v43);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(v5 + 112);
    *(v5 + 112) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(v5 + 88, v43);
    v7 = *(v9 + 8);
  }

  *(a1 + 376) = v7;
  sub_AD82C4(a1);
  v10 = 1.0;
  if (*(a1 + 124) >= 2u)
  {
    v11 = 1;
    while (1)
    {
      if (v11)
      {
        v22 = *(a1 + 280);
        v23 = *(a1 + 288);
        if (v22 != v23)
        {
          v24 = *(a1 + 256);
          v25 = *(a1 + 280);
          do
          {
            v26 = *v25++;
            *(v24 + ((v26 >> 3) & 0x1FFFFFF8)) &= ~(1 << v26);
          }

          while (v25 != v23);
        }

        *(a1 + 288) = v22;
        sub_AD855C(a1, v11);
        sub_AD8928(a1, v11);
        v21 = *(a1 + 280);
        if (v21 == *(a1 + 288))
        {
LABEL_22:
          v10 = v11;
          break;
        }

        v20 = *(a1 + 232);
      }

      else
      {
        v12 = *(a1 + 232);
        v13 = *(a1 + 240);
        if (v12 != v13)
        {
          v14 = *(a1 + 208);
          v15 = *(a1 + 232);
          do
          {
            v16 = *v15++;
            *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
          }

          while (v15 != v13);
        }

        *(a1 + 240) = v12;
        sub_ADA120(a1);
        sub_7E9A4(v43);
        v17 = *(a1 + 352);
        v18 = *(a1 + 360);
        while (v17 != v18)
        {
          v19 = *v17++;
          sub_ADB70C(a1, v11, v19);
        }

        *(a1 + 512) = sub_7EA60(v43) + *(a1 + 512);
        v20 = *(a1 + 232);
        if (v20 == *(a1 + 240))
        {
          goto LABEL_22;
        }

        v21 = *(a1 + 280);
      }

      v40 = *(a1 + 168);
      v41 = *(a1 + 128);
      v38 = *(a1 + 152);
      v39 = *(a1 + 144);
      v36 = 8 * (*(a1 + 224) & 0x3FFFFFFFFFFFFFFLL);
      v37 = 8 * (*(a1 + 192) & 0x3FFFFFFFFFFFFFFLL);
      v27 = *(a1 + 248);
      v34 = *(a1 + 320);
      v35 = 8 * (*(a1 + 272) & 0x3FFFFFFFFFFFFFFLL);
      v28 = *(a1 + 296);
      v29 = *(a1 + 304);
      v33 = *(a1 + 352);
      v30 = 8 * (*(a1 + 344) & 0x3FFFFFFFFFFFFFFLL);
      v31 = *(a1 + 368);
      v32 = v39 + v40 - (v41 + v38) + v37 + v27 + v36 - v20 + v28 + v35 + v34 - (v21 + v29) + v30 + v31 - v33 + sub_C439D4((a1 + 384)) + 632;
      if (*(a1 + 624) > v32)
      {
        v32 = *(a1 + 624);
      }

      *(a1 + 624) = v32;
      if ((sub_ACFE00(a1) & 1) == 0 && ++v11 < *(a1 + 124))
      {
        continue;
      }

      goto LABEL_22;
    }
  }

  sub_ADAE9C(a1);
  *(a1 + 552) = v10;
  *(a1 + 504) = sub_7EA60(v42);
}

__n128 sub_AD5E64@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v262 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  HIBYTE(v295) = 0;
  LOBYTE(__p) = 0;
  v258 = (a3 + 32);
  sub_CC9264(a3 + 32, &__p);
  if (SHIBYTE(v295) < 0)
  {
    operator delete(__p);
  }

  *(a3 + 192) = 0u;
  *(a3 + 256) = 0;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 184) = *(a1 + 64);
  v5 = (2 * a2) | 1;
  v6 = *(a1 + 31);
  if (v5 > v6)
  {
    v7 = 2 * a2 + 1;
  }

  else
  {
    v7 = *(a1 + 31);
  }

  v259 = v7;
  v260 = (2 * a2) | 1;
  if (v5 < v6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v261 = _Q0;
    v269 = a1;
    while (1)
    {
      sub_AD0464(a1 + 16, 0);
      sub_ADB54C(a1 + 16, v260 + *(a1 + 30) + *(a1 + 30) * *(a1 + 94) + 2, 0);
      v11 = a1[16];
      if (a1[17] != v11)
      {
        break;
      }

      sub_30B70((a1 + 16), 1uLL);
      v11 = a1[16];
      v12 = a1[19];
      v13 = *v11;
      if (a1[17] != v11)
      {
        goto LABEL_11;
      }

      sub_30B70((a1 + 16), 1uLL);
      v11 = a1[16];
      v14 = a1[19];
LABEL_14:
      v265 = (v12 + 56 * v13);
      v263 = (v14 + 56 * v11[1]);
      if (v265 != v263)
      {
        while (1)
        {
          LOWORD(__p) = 0;
          BYTE2(__p) = 0;
          *(&__p + 4) = 0;
          HIDWORD(__p) = 0;
          v295 = -NAN;
          v296 = 0x7FFFFFFF;
          v297 = 0;
          v298 = 0x8000000080000000;
          v299 = 0;
          v300 = 0x8000000080000000;
          v301 = 0x7FFFFFFF;
          v302 = 0;
          v303 = 0x8000000080000000;
          v304 = 0;
          v305 = 0x8000000080000000;
          v306 = 0;
          v307 = 0xFFFFFFFF00000000;
          v308 = -1;
          v309 = 0;
          v311 = 0;
          v312 = 0;
          v313 = 0;
          v310 = 0x7FFFFFFF;
          v314 = 100;
          v315 = -1;
          v316 = v261;
          v317 = v261;
          v318 = v261;
          v319 = 0u;
          v320 = 0u;
          v321 = 0u;
          v322 = 0u;
          v323 = 0u;
          v324 = 0u;
          v15 = a1[3];
          if (sub_68312C(v15 + 3896) && *(v15 + 3944))
          {
            v16 = 1;
          }

          else
          {
            v17 = a1[3];
            v16 = sub_4C2B90(v17 + 3896) && *(v17 + 3960) != 0;
          }

          BYTE1(__p) = v16;
          v18 = a1[3];
          if (sub_4C2B90(v18 + 3896))
          {
            DWORD2(__p) = 2 * (*(v18 + 3960) != 0);
            DWORD1(__p) = DWORD2(__p);
            if (*v265 != -1)
            {
              break;
            }

            goto LABEL_328;
          }

          *(&__p + 4) = 0;
          if (*v265 != -1)
          {
            break;
          }

LABEL_328:
          sub_A83920(&__p);
          v228 = *(a3 + 16);
          v227 = *(a3 + 24);
          if (v228 >= v227)
          {
            v231 = 0x14C1BACF914C1BADLL * ((v228 - *v262) >> 3);
            v232 = v231 + 1;
            if ((v231 + 1) > 0xDD67C8A60DD67CLL)
            {
              sub_1794();
            }

            v233 = 0x14C1BACF914C1BADLL * ((v227 - *v262) >> 3);
            if (2 * v233 > v232)
            {
              v232 = 2 * v233;
            }

            if (v233 >= 0x6EB3E45306EB3ELL)
            {
              v234 = 0xDD67C8A60DD67CLL;
            }

            else
            {
              v234 = v232;
            }

            *v282 = v262;
            if (v234)
            {
              if (v234 <= 0xDD67C8A60DD67CLL)
              {
                operator new();
              }

              sub_1808();
            }

            *v281 = 0;
            *&v281[8] = 296 * v231;
            *&v281[16] = (296 * v231);
            v230 = a3;
            sub_A32C84(296 * v231, &__p);
            *&v281[16] += 296;
            v229 = *&v281[16];
            v235 = *(a3 + 8);
            v236 = *(a3 + 16);
            v237 = *&v281[8] + v235 - v236;
            sub_A7CAB8(v262, v235, v236, v237);
            v238 = *(a3 + 8);
            *(a3 + 8) = v237;
            *(a3 + 16) = v229;
            *(a3 + 24) = *&v281[24];
            if (v238)
            {
              operator delete(v238);
            }
          }

          else
          {
            sub_A32C84(*(a3 + 16), &__p);
            v229 = v228 + 296;
            v230 = a3;
          }

          *(v230 + 16) = v229;
          if (*(&v323 + 1))
          {
            *&v324 = *(&v323 + 1);
            operator delete(*(&v323 + 1));
          }

          if (v322)
          {
            *(&v322 + 1) = v322;
            operator delete(v322);
          }

          if (*(&v320 + 1))
          {
            *&v321 = *(&v320 + 1);
            operator delete(*(&v320 + 1));
          }

          v239 = v319;
          if (v319)
          {
            v240 = *(&v319 + 1);
            v241 = v319;
            if (*(&v319 + 1) != v319)
            {
              do
              {
                v243 = *(v240 - 40);
                if (v243)
                {
                  *(v240 - 32) = v243;
                  operator delete(v243);
                }

                v244 = (v240 - 72);
                v245 = *(v240 - 72);
                if (v245)
                {
                  v246 = *(v240 - 64);
                  v242 = *(v240 - 72);
                  if (v246 != v245)
                  {
                    do
                    {
                      v247 = v246 - 168;
                      v248 = *(v246 - 8);
                      if (v248 != -1)
                      {
                        (off_2670F08[v248])(v281, v246 - 168);
                      }

                      *(v246 - 8) = -1;
                      v246 -= 168;
                    }

                    while (v247 != v245);
                    v242 = *v244;
                  }

                  *(v240 - 64) = v245;
                  operator delete(v242);
                  a1 = v269;
                }

                v240 -= 72;
              }

              while (v244 != v239);
              v241 = v319;
            }

            *(&v319 + 1) = v239;
            operator delete(v241);
          }

          if (SHIBYTE(v313) < 0)
          {
            operator delete(v311);
          }

          v265 += 14;
          if (v265 == v263)
          {
            goto LABEL_8;
          }
        }

        v19 = v265;
        v267 = v260;
        v268 = *(a1 + 94);
        while (2)
        {
          v288 = 0;
          *v287 = 0u;
          v289 = 1;
          v291 = 0;
          v292 = 0;
          v290 = 0;
          v293[0] = 1;
          *&v293[4] = 0x8000000080000000;
          *&v293[12] = 0;
          v293[14] = 0;
          *v281 = 0;
          *&v281[16] = 0u;
          *&v282[16] = 0u;
          v285[0] = 0x7FFFFFFFuLL;
          *&v281[4] = 0x8000000080000000;
          *&v281[12] = 0x7FFFFFFF;
          *&v281[20] = 0x8000000080000000;
          *&v282[8] = xmmword_2266560;
          *v282 = 0xFFFFFFFFLL;
          *&v282[24] = -1;
          *__dst = 0u;
          memset(v284, 0, sizeof(v284));
          v285[1] = 0uLL;
          *v286 = 1;
          *&v286[4] = xmmword_22A7500;
          if (v19[4] == -1)
          {
            goto LABEL_213;
          }

          v270 = xmmword_2297BF0;
          LOWORD(v271) = 0;
          *(&v271 + 4) = 0x8000000080000000;
          WORD6(v271) = 0;
          *v272 = xmmword_22A7450;
          *&v272[16] = -COERCE_DOUBLE(0x8000000080000000);
          v273 = 0uLL;
          v274 = 0uLL;
          v275 = 0uLL;
          *&v272[24] = -1;
          v276 = 0x7FFFFFFF;
          v278 = 0;
          v279 = 0;
          v277 = 0;
          LOBYTE(v280) = 1;
          *(&v280 + 4) = 0x8000000080000000;
          HIDWORD(v280) = 0;
          v289 = 0;
          v21 = *sub_A9C5E0((a1[5] + 88), v19[4]);
          *v272 = v21;
          v22 = *(v19 + 1);
          *&v272[16] = v19[3];
          *&v272[8] = v22;
          *&v272[24] = *v19;
          v23 = *&v272[24];
          v24 = a1[3];
          v325 = *sub_A9C5E0((a1[4] + 88), v268);
          sub_A79708(&v326, v24, v21, v23, 0, 0);
          v333 = (v332 + 12 * *&v272[8]);
          if (v336[0] == 1)
          {
            *&v336[4] = *&v272[12];
          }

          if (v331)
          {
            v25 = *(v331 + 4 * ((v329 - v328) >> 4));
          }

          else
          {
            v25 = 0;
          }

          sub_AB3DEC(&v326, &v325, v25);
          _CF = v329 < v330 && v329 >= v328;
          v27 = (v329 - v328) >> 4;
          if (!_CF)
          {
            LODWORD(v27) = -1;
          }

          *&v272[20] = v27;
          v28 = a1[4];
          v29 = *&v272[24];
          v30 = sub_A57920((a1[3] + 4136), *v272);
          v31 = (v30 - *v30);
          if (*v31 >= 9u && (v32 = v31[4]) != 0)
          {
            v33 = (v30 + v32 + *(v30 + v32));
          }

          else
          {
            v33 = 0;
          }

          v34 = __ROR8__(*sub_A571D4(v33, v29), 32);
          v35 = *(v28 + 56) - 1;
          v36 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v34 ^ (v34 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v34 ^ (v34 >> 33))) >> 33));
          v37 = v36 ^ (v36 >> 33);
          v38 = *(v28 + 80);
          v40 = *(v28 + 64);
          v39 = *(v28 + 68);
          v41 = v37 & v35;
          v42 = (v38 + 12 * (v37 & v35));
          v44 = *v42;
          v43 = v42[1];
          if (v39 == v43 && v40 == v44)
          {
            goto LABEL_48;
          }

          if (*(v28 + 40))
          {
            v45 = -1;
            v60 = 1;
            do
            {
              if (*(v28 + 36) == v43 && *(v28 + 32) == v44)
              {
                if (v45 == -1)
                {
                  v45 = v41;
                }
              }

              else if (__PAIR64__(v43, v44) == v34)
              {
                goto LABEL_93;
              }

              v41 = (v41 + v60) & v35;
              v61 = (v38 + 12 * v41);
              v44 = *v61;
              v43 = v61[1];
              ++v60;
            }

            while (v39 != v43 || v40 != v44);
            if (v45 == -1)
            {
LABEL_48:
              v45 = v41;
            }

LABEL_49:
            if (!sub_A99094(v28, 1))
            {
              v64 = *(v28 + 40);
              v63 = *(v28 + 48);
              if ((v63 - v64) >= 0x1555555555555555)
              {
                goto LABEL_384;
              }

              v47 = *(v28 + 80);
              if (v64 && ((v65 = (v47 + 12 * v45), *(v28 + 36) == v65[1]) ? (v66 = *(v28 + 32) == *v65) : (v66 = 0), v66))
              {
                *(v28 + 40) = v64 - 1;
              }

              else
              {
                *(v28 + 48) = v63 + 1;
              }

              v71 = 3 * v45;
              goto LABEL_121;
            }

            v46 = *(v28 + 56) - 1;
            v47 = *(v28 + 80);
            v49 = *(v28 + 64);
            v48 = *(v28 + 68);
            v50 = v46 & v37;
            v51 = (v47 + 12 * (v46 & v37));
            v53 = *v51;
            v52 = v51[1];
            v54 = *(v28 + 40);
            if (v48 == v52 && v49 == v53)
            {
              goto LABEL_111;
            }

            if (v54)
            {
              v56 = -1;
              v57 = 1;
              do
              {
                if (*(v28 + 36) == v52 && *(v28 + 32) == v53)
                {
                  if (v56 == -1)
                  {
                    v56 = v50;
                  }
                }

                else if (__PAIR64__(v52, v53) == v34)
                {
                  goto LABEL_106;
                }

                v50 = (v50 + v57) & v46;
                v58 = (v47 + 12 * v50);
                v53 = *v58;
                v52 = v58[1];
                ++v57;
              }

              while (v48 != v52 || v49 != v53);
              if (v56 == -1)
              {
LABEL_111:
                v56 = v50;
              }

              v75 = *(v28 + 48);
              if ((v75 - v54) >= 0x1555555555555555)
              {
                goto LABEL_384;
              }

LABEL_113:
              if (v54 && ((v76 = (v47 + 12 * v56), *(v28 + 36) == v76[1]) ? (v77 = *(v28 + 32) == *v76) : (v77 = 0), v77))
              {
                *(v28 + 40) = v54 - 1;
              }

              else
              {
                *(v28 + 48) = v75 + 1;
              }

              v71 = 3 * v56;
LABEL_121:
              v78 = 4 * v71;
              v79 = v47 + v78;
              *v79 = v34;
              *(v79 + 8) = -1;
              v70 = *(v28 + 80) + v78;
              v268 = *(v70 + 8);
              if (v268 == -1)
              {
LABEL_122:
                v80 = *(v28 + 112);
                *(v28 + 112) = v80 + 1;
                *(v70 + 8) = v80;
                v82 = *(v28 + 96);
                v81 = *(v28 + 104);
                if (v82 >= v81)
                {
                  v84 = *(v28 + 88);
                  v85 = v82 - v84;
                  v86 = (v82 - v84) >> 3;
                  v87 = v86 + 1;
                  if ((v86 + 1) >> 61)
                  {
                    sub_1794();
                  }

                  v88 = v81 - v84;
                  if (v88 >> 2 > v87)
                  {
                    v87 = v88 >> 2;
                  }

                  if (v88 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v89 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v89 = v87;
                  }

                  if (v89)
                  {
                    if (!(v89 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v90 = (v82 - v84) >> 3;
                  v91 = (8 * v86);
                  v92 = (8 * v86 - 8 * v90);
                  *v91 = v34;
                  v83 = v91 + 1;
                  memcpy(v92, v84, v85);
                  *(v28 + 88) = v92;
                  *(v28 + 96) = v83;
                  *(v28 + 104) = 0;
                  if (v84)
                  {
                    operator delete(v84);
                  }
                }

                else
                {
                  *v82 = v34;
                  v83 = v82 + 8;
                }

                *(v28 + 96) = v83;
                v268 = *(v70 + 8);
                a1 = v269;
              }
            }

            else
            {
              v72 = 1;
              while (__PAIR64__(v52, v53) != v34)
              {
                v50 = (v50 + v72) & v46;
                v73 = (v47 + 12 * v50);
                v53 = *v73;
                v52 = v73[1];
                ++v72;
                if (v48 == v52 && v49 == v53)
                {
                  v54 = 0;
                  goto LABEL_111;
                }
              }

LABEL_106:
              if (v50 == -1)
              {
                v56 = -1;
                v75 = *(v28 + 48);
                if ((v75 - v54) >= 0x1555555555555555)
                {
LABEL_384:
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "insert overflow");
                }

                goto LABEL_113;
              }

              v70 = v47 + 12 * v50;
              v268 = *(v70 + 8);
              if (v268 == -1)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v67 = 1;
            while (__PAIR64__(v43, v44) != v34)
            {
              v41 = (v41 + v67) & v35;
              v68 = (v38 + 12 * v41);
              v44 = *v68;
              v43 = v68[1];
              ++v67;
              if (v39 == v43 && v40 == v44)
              {
                goto LABEL_48;
              }
            }

LABEL_93:
            if (v41 == -1)
            {
              v45 = -1;
              goto LABEL_49;
            }

            v70 = v38 + 12 * v41;
            v268 = *(v70 + 8);
            if (v268 == -1)
            {
              goto LABEL_122;
            }
          }

          v93 = *&v272[20];
          v94 = sub_A57920((a1[3] + 4136), *v272);
          v95 = (v94 - *v94);
          if (*v95 >= 9u && (v96 = v95[4]) != 0)
          {
            v97 = (v94 + v96 + *(v94 + v96));
          }

          else
          {
            v97 = 0;
          }

          DWORD1(v270) = 10 * *(sub_A571D4(v97, v93) + 8);
          v98 = a1[3];
          v99 = *v272;
          v100 = *&v272[20];
          v101 = *&v272[8];
          v102 = sub_A5706C((v98 + 4136), *v272);
          v103 = v102;
          v104 = &v102[-*v102];
          if (*v104 < 5u)
          {
            v105 = 0;
          }

          else
          {
            v105 = *(v104 + 2);
            if (v105)
            {
              v105 += &v102[*&v102[v105]];
            }
          }

          v106 = (v105 + 4 * v99 + 4 + *(v105 + 4 * v99 + 4));
          v107 = (v106 - *v106);
          if (*v107 >= 9u && (v108 = v107[4]) != 0)
          {
            v109 = (v106 + v108 + *(v106 + v108));
          }

          else
          {
            v109 = 0;
          }

          v110 = sub_A571D4(v109, v100);
          v111 = (v103 - *v103);
          if (*v111 < 0xBu)
          {
            v112 = 0;
            v113 = (v106 - *v106);
            if (*v113 >= 0x11u)
            {
              goto LABEL_152;
            }
          }

          else
          {
            v112 = v111[5];
            if (v112)
            {
              v112 = (v112 + v103 + *(v112 + v103));
            }

            v113 = (v106 - *v106);
            if (*v113 >= 0x11u)
            {
LABEL_152:
              v114 = v113[8];
              if (v113[8])
              {
                LODWORD(v114) = *(v106 + v114);
              }

LABEL_156:
              v115 = sub_A57320(v112, v114 + *(v106 + v113[2] + *(v106 + v113[2])) * v101 + *(v110 + 14));
              if (v115)
              {
                v116 = __ROR8__(*v115, 32);
                v117 = *(v115 + 8);
              }

              else
              {
                v117 = 0;
                v116 = 0xFFFFFFFFLL;
              }

              *&v326 = v116;
              DWORD2(v326) = v117;
              v118 = sub_A57920((v98 + 4136), v99);
              v119 = (v118 - *v118);
              if (*v119 >= 9u && (v120 = v119[4]) != 0)
              {
                v121 = (v118 + v120 + *(v118 + v120));
              }

              else
              {
                v121 = 0;
              }

              v122 = *(sub_A571D4(v121, v100) + 12);
              if (*&v272[12] == -1)
              {
                v123 = 0x7FFFFFFF;
              }

              else
              {
                v123 = *&v272[16];
              }

              *(&v270 + 1) = sub_A56700((v98 + 4184), &v326, v122, v123);
              LOWORD(v271) = v124;
              v125 = v269[3];
              v126 = *v272;
              v127 = *&v272[24];
              v128 = *&v272[8];
              v129 = sub_A5706C((v125 + 4136), *v272);
              v130 = v129;
              v131 = &v129[-*v129];
              if (*v131 < 5u)
              {
                v132 = 0;
              }

              else
              {
                v132 = *(v131 + 2);
                if (v132)
                {
                  v132 += &v129[*&v129[v132]];
                }
              }

              v133 = (v132 + 4 * v126 + 4 + *(v132 + 4 * v126 + 4));
              v134 = (v133 - *v133);
              if (*v134 >= 9u && (v135 = v134[4]) != 0)
              {
                v136 = (v133 + v135 + *(v133 + v135));
              }

              else
              {
                v136 = 0;
              }

              v137 = sub_A571D4(v136, v127);
              v138 = (v130 - *v130);
              if (*v138 < 0xBu)
              {
                v139 = 0;
                v140 = (v133 - *v133);
                if (*v140 >= 0x11u)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v139 = v138[5];
                if (v139)
                {
                  v139 = (v139 + v130 + *(v139 + v130));
                }

                v140 = (v133 - *v133);
                if (*v140 >= 0x11u)
                {
LABEL_178:
                  v141 = v140[8];
                  if (v140[8])
                  {
                    LODWORD(v141) = *(v133 + v141);
                  }

LABEL_182:
                  v142 = sub_A57320(v139, v141 + *(v133 + v140[2] + *(v133 + v140[2])) * v128 + *(v137 + 14));
                  if (v142)
                  {
                    v143 = __ROR8__(*v142, 32);
                    v144 = *(v142 + 8);
                  }

                  else
                  {
                    v144 = 0;
                    v143 = 0xFFFFFFFFLL;
                  }

                  *&v326 = v143;
                  DWORD2(v326) = v144;
                  v145 = sub_A57920((v125 + 4136), v126);
                  v146 = (v145 - *v145);
                  if (*v146 >= 9u && (v147 = v146[4]) != 0)
                  {
                    v148 = (v145 + v147 + *(v145 + v147));
                  }

                  else
                  {
                    v148 = 0;
                  }

                  v149 = *(sub_A571D4(v148, v127) + 12);
                  if (*&v272[12] == -1)
                  {
                    v150 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v150 = *&v272[16];
                  }

                  *(&v271 + 4) = sub_A56A5C((v125 + 4184), &v326, v149, v150);
                  WORD6(v271) = v151;
                  if (*&v286[16])
                  {
                    sub_A332F8(&v326, &v270);
                    a1 = v269;
                    sub_A34B68(v281, &v326);
                    if (v337)
                    {
                      v338 = v337;
                      operator delete(v337);
                    }

                    if (v335)
                    {
                      *v336 = v335;
                      operator delete(v335);
                    }

                    if (v333)
                    {
                      v334 = v333;
                      operator delete(v333);
                    }

                    v152 = v277;
                    if (v277)
                    {
                      goto LABEL_200;
                    }
                  }

                  else
                  {
                    *v281 = v270;
                    *&v281[16] = v271;
                    *v282 = *v272;
                    *&v282[12] = *&v272[12];
                    v166 = v273;
                    v167 = *(&v273 + 1) - v273;
                    v168 = *&v284[0];
                    v169 = __dst[0];
                    a1 = v269;
                    if (*&v284[0] - __dst[0] < *(&v273 + 1) - v273)
                    {
                      if (__dst[0])
                      {
                        __dst[1] = __dst[0];
                        operator delete(__dst[0]);
                        v168 = 0;
                        __dst[0] = 0;
                        __dst[1] = 0;
                        *&v284[0] = 0;
                      }

                      v170 = 0xEEEEEEEEEEEEEEEFLL * (v167 >> 2);
                      if (v170 <= 0x444444444444444)
                      {
                        v171 = 0xEEEEEEEEEEEEEEEFLL * (v168 >> 2);
                        if (2 * v171 > v170)
                        {
                          v170 = 2 * v171;
                        }

                        if (v171 >= 0x222222222222222)
                        {
                          v172 = 0x444444444444444;
                        }

                        else
                        {
                          v172 = v170;
                        }

                        if (v172 <= 0x444444444444444)
                        {
                          operator new();
                        }
                      }

                      sub_1794();
                    }

                    v215 = __dst[1];
                    v216 = __dst[1] - __dst[0];
                    if ((__dst[1] - __dst[0]) >= v167)
                    {
                      if (*(&v273 + 1) != v273)
                      {
                        v219 = __dst[0];
                        memmove(__dst[0], v273, v167 - 3);
                        v169 = v219;
                      }

                      v218 = &v169[v167];
                    }

                    else
                    {
                      if (__dst[1] != __dst[0])
                      {
                        memmove(__dst[0], v273, v216 - 3);
                        v215 = __dst[1];
                      }

                      v217 = *(&v166 + 1) - (v166 + v216);
                      if (v217)
                      {
                        memmove(v215, (v166 + v216), v217 - 3);
                      }

                      v218 = &v215[v217];
                    }

                    __dst[1] = v218;
                    sub_A349D4(v284 + 1, *(&v274 + 1), v275, 0xEEEEEEEEEEEEEEEFLL * ((v275 - *(&v274 + 1)) >> 2));
                    LODWORD(v285[0]) = v276;
                    sub_956400(v285 + 1, v277, v278, 0xCCCCCCCCCCCCCCCDLL * ((v278 - v277) >> 3));
                    *v286 = v280;
                    v152 = v277;
                    if (v277)
                    {
LABEL_200:
                      v278 = v152;
                      operator delete(v152);
                    }
                  }

                  if (*(&v274 + 1))
                  {
                    *&v275 = *(&v274 + 1);
                    operator delete(*(&v274 + 1));
                  }

                  if (v273)
                  {
                    *(&v273 + 1) = v273;
                    operator delete(v273);
                  }

                  if (v19[4] != -1)
                  {
                    v153 = v287[1];
                    if (v287[1] < v288)
                    {
                      goto LABEL_207;
                    }

LABEL_234:
                    v155 = sub_AA9AE0(v287, v281);
                    v287[1] = v155;
                    v156 = *(&v319 + 1);
                    v157 = v320;
                    if (*(&v319 + 1) >= v320)
                    {
LABEL_235:
                      v173 = 0x8E38E38E38E38E39 * ((v156 - v319) >> 3);
                      v174 = v173 + 1;
                      if (v173 + 1 > 0x38E38E38E38E38ELL)
                      {
                        sub_1794();
                      }

                      v175 = 0x8E38E38E38E38E39 * ((v157 - v319) >> 3);
                      if (2 * v175 > v174)
                      {
                        v174 = 2 * v175;
                      }

                      if (v175 >= 0x1C71C71C71C71C7)
                      {
                        v176 = 0x38E38E38E38E38ELL;
                      }

                      else
                      {
                        v176 = v174;
                      }

                      v329 = &v319;
                      if (v176)
                      {
                        if (v176 <= 0x38E38E38E38E38ELL)
                        {
                          operator new();
                        }

                        sub_1808();
                      }

                      v177 = (8 * ((v156 - v319) >> 3));
                      *&v326 = 0;
                      *(&v326 + 1) = v177;
                      v327 = 72 * v173;
                      v328 = 0;
                      v177[1] = 0;
                      v177[2] = 0;
                      *v177 = 0;
                      if (v155 != v287[0])
                      {
                        if (0xCF3CF3CF3CF3CF3DLL * ((v155 - v287[0]) >> 3) <= 0x186186186186186)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      v178 = v289;
                      *(&stru_20.cmd + 9 * v173) = 0;
                      LOBYTE(dword_18[18 * v173]) = v178;
                      *&stru_20.segname[72 * v173] = 0;
                      *&stru_20.segname[72 * v173 + 8] = 0;
                      if (v291 != v290)
                      {
                        if (0xCCCCCCCCCCCCCCCDLL * ((v291 - v290) >> 3) <= 0x666666666666666)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      *&stru_20.segname[72 * v173 + 16] = *v293;
                      *&stru_20.segname[72 * v173 + 23] = *&v293[7];
                      v165 = v327 + 72;
                      v327 += 72;
                      v179 = *(&v319 + 1);
                      v180 = v319;
                      v181 = *(&v326 + 1) + v319 - *(&v319 + 1);
                      if (v319 != *(&v319 + 1))
                      {
                        v182 = v319;
                        v183 = *(&v326 + 1) + v319 - *(&v319 + 1);
                        do
                        {
                          *v183 = 0;
                          *(v183 + 8) = 0;
                          *(v183 + 16) = 0;
                          *v183 = *v182;
                          *(v183 + 16) = *(v182 + 16);
                          *(v182 + 8) = 0;
                          *(v182 + 16) = 0;
                          *v182 = 0;
                          *(v183 + 24) = *(v182 + 24);
                          *(v183 + 40) = 0;
                          *(v183 + 48) = 0;
                          *(v183 + 32) = 0;
                          *(v183 + 32) = *(v182 + 32);
                          *(v183 + 48) = *(v182 + 48);
                          *(v182 + 32) = 0;
                          *(v182 + 40) = 0;
                          *(v182 + 48) = 0;
                          v184 = *(v182 + 56);
                          *(v183 + 63) = *(v182 + 63);
                          *(v183 + 56) = v184;
                          v182 += 72;
                          v183 += 72;
                        }

                        while (v182 != v179);
                        do
                        {
                          v186 = v180[4];
                          if (v186)
                          {
                            v180[5] = v186;
                            operator delete(v186);
                          }

                          v187 = *v180;
                          if (*v180)
                          {
                            v188 = v180[1];
                            v185 = *v180;
                            if (v188 != v187)
                            {
                              do
                              {
                                v189 = v188 - 168;
                                v190 = *(v188 - 2);
                                if (v190 != -1)
                                {
                                  (off_2670F08[v190])(&v270, v188 - 168);
                                }

                                *(v188 - 2) = -1;
                                v188 -= 168;
                              }

                              while (v189 != v187);
                              v185 = *v180;
                            }

                            v180[1] = v187;
                            operator delete(v185);
                          }

                          v180 += 9;
                        }

                        while (v180 != v179);
                      }

                      v191 = v319;
                      *&v319 = v181;
                      *(&v319 + 1) = v165;
                      *&v320 = v328;
                      if (v191)
                      {
                        operator delete(v191);
                      }

                      v163 = v269;
LABEL_268:
                      *(&v319 + 1) = v165;
                      v192 = v267 + *(v163 + 30) + *(v163 + 30) * v268 + 1;
                      v193 = v163;
                      v194 = v19[5];
                      v196 = v193[16];
                      v195 = v193[17];
                      v197 = (v195 - v196) >> 3;
                      if (v197 <= v192)
                      {
                        v203 = (v192 + 1);
                        v204 = v203 - v197;
                        if (v203 <= v197)
                        {
                          if (v203 >= v197)
                          {
                            goto LABEL_269;
                          }

                          v195 = &v196[8 * v203];
                          v198 = v269;
                          v269[17] = v195;
                        }

                        else
                        {
                          v198 = v269;
                          v205 = v269[18];
                          if (v204 > (v205 - v195) >> 3)
                          {
                            v206 = v205 - v196;
                            if (v206 >> 2 > v203)
                            {
                              v203 = v206 >> 2;
                            }

                            if (v206 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v207 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v207 = v203;
                            }

                            if (!(v207 >> 61))
                            {
                              operator new();
                            }

LABEL_386:
                            sub_1808();
                          }

                          bzero(v195, 8 * v204);
                          v195 += 8 * v204;
                          v269[17] = v195;
                          v196 = v269[16];
                        }
                      }

                      else
                      {
LABEL_269:
                        v198 = v269;
                      }

                      v199 = v198[19];
                      v200 = *&v196[8 * v192];
                      v201 = (v195 - v196) >> 3;
                      if (v201 <= v192)
                      {
                        v208 = (v192 + 1);
                        v209 = v208 - v201;
                        if (v208 <= v201)
                        {
                          if (v208 < v201)
                          {
                            v269[17] = &v196[8 * v208];
                          }

                          goto LABEL_271;
                        }

                        v210 = v269;
                        v211 = v269[18];
                        if (v209 <= (v211 - v195) >> 3)
                        {
                          bzero(v195, 8 * v209);
                          v269[17] = &v195[8 * v209];
                        }

                        else
                        {
                          __n = *&v196[8 * v192];
                          v212 = v195 - v196;
                          v213 = (v212 >> 3) + v209;
                          if (v213 >> 61)
                          {
                            sub_1794();
                          }

                          v214 = v211 - v196;
                          if (v214 >> 2 > v213)
                          {
                            v213 = v214 >> 2;
                          }

                          if (v214 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v213 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          if (v213)
                          {
                            if (!(v213 >> 61))
                            {
                              operator new();
                            }

                            goto LABEL_386;
                          }

                          v210 = v269;
                          v220 = (8 * (v212 >> 3));
                          v221 = 8 * v209;
                          bzero(v220, v221);
                          memcpy(0, v196, v212);
                          v269[16] = 0;
                          v269[17] = &v220[v221];
                          v269[18] = 0;
                          v200 = __n;
                          if (v196)
                          {
                            operator delete(v196);
                          }
                        }

                        v196 = v210[16];
                        v202 = v210[19];
                      }

                      else
                      {
LABEL_271:
                        v202 = v199;
                      }

                      v19 = (v199 + 56 * v200);
                      v222 = (v202 + 56 * *&v196[8 * v192 + 4]);
                      if (v19 == v222)
                      {
                        v19 = 0;
                      }

                      else
                      {
                        while (v19[6] != v194)
                        {
                          v19 += 14;
                          if (v19 == v222)
                          {
                            v19 = 0;
                            break;
                          }
                        }
                      }

                      a1 = v269;
                      if (*&v286[16] != -1)
                      {
                        (off_2670F08[*&v286[16]])(&v326, v281);
                      }

                      if (v290)
                      {
                        v291 = v290;
                        operator delete(v290);
                      }

                      v223 = v287[0];
                      if (v287[0])
                      {
                        v224 = v287[1];
                        v20 = v287[0];
                        if (v287[1] != v287[0])
                        {
                          do
                          {
                            v225 = v224 - 168;
                            v226 = *(v224 - 2);
                            if (v226 != -1)
                            {
                              (off_2670F08[v226])(v281, v224 - 168);
                            }

                            *(v224 - 2) = -1;
                            v224 -= 168;
                          }

                          while (v225 != v223);
                          v20 = v287[0];
                        }

                        v287[1] = v223;
                        operator delete(v20);
                      }

                      --v267;
                      if (*v19 == -1)
                      {
                        goto LABEL_328;
                      }

                      continue;
                    }

LABEL_210:
                    *v156 = 0;
                    *(v156 + 8) = 0;
                    *(v156 + 16) = 0;
                    if (v287[1] != v287[0])
                    {
                      if (0xCF3CF3CF3CF3CF3DLL * ((v287[1] - v287[0]) >> 3) <= 0x186186186186186)
                      {
                        operator new();
                      }

                      sub_1794();
                    }

                    v162 = v289;
                    *(v156 + 32) = 0;
                    *(v156 + 24) = v162;
                    *(v156 + 40) = 0;
                    *(v156 + 48) = 0;
                    v163 = v269;
                    if (v291 != v290)
                    {
                      if (0xCCCCCCCCCCCCCCCDLL * ((v291 - v290) >> 3) <= 0x666666666666666)
                      {
                        operator new();
                      }

                      sub_1794();
                    }

                    v164 = *v293;
                    *(v156 + 63) = *&v293[7];
                    *(v156 + 56) = v164;
                    v165 = v156 + 72;
                    goto LABEL_268;
                  }

LABEL_213:
                  v289 = 1;
                  v158 = v19[7];
                  v159 = v19[3];
                  v160 = *sub_A9C5E0((a1[4] + 88), v268);
                  v161 = *sub_A9C5E0((a1[4] + 88), *v19);
                  if (*&v286[16] != -1)
                  {
                    if (*&v286[16] == 1)
                    {
                      *v281 = 0;
                      *&v281[4] = v158;
                      *&v281[8] = v159;
                      *&v281[12] = v160;
                      *&v281[20] = v161;
                      v268 = *v19;
                      v153 = v287[1];
                      if (v287[1] >= v288)
                      {
                        goto LABEL_234;
                      }

LABEL_207:
                      *v153 = 0;
                      v153[40] = -1;
                      v154 = *&v286[16];
                      if (*&v286[16] != -1)
                      {
                        *&v326 = v153;
                        (off_2670F18[*&v286[16]])(&v326, v281);
                        v153[40] = v154;
                      }

                      v155 = v153 + 42;
                      v287[1] = v153 + 42;
                      v156 = *(&v319 + 1);
                      v157 = v320;
                      if (*(&v319 + 1) >= v320)
                      {
                        goto LABEL_235;
                      }

                      goto LABEL_210;
                    }

                    (off_2670F08[*&v286[16]])(&v326, v281);
                  }

                  *v281 = 0;
                  *&v281[4] = v158;
                  *&v281[12] = v160;
                  *&v281[20] = v161;
                  *&v281[8] = v159;
                  *&v286[16] = 1;
                  v268 = *v19;
                  v153 = v287[1];
                  if (v287[1] >= v288)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_207;
                }
              }

              LODWORD(v141) = 0;
              goto LABEL_182;
            }
          }

          break;
        }

        LODWORD(v114) = 0;
        goto LABEL_156;
      }

LABEL_8:
      if (++v260 == v259)
      {
        goto LABEL_365;
      }
    }

    v12 = a1[19];
    v13 = *v11;
LABEL_11:
    v14 = v12;
    goto LABEL_14;
  }

LABEL_365:
  if (v258 != a1 + 60)
  {
    v249 = *(a1 + 503);
    if (*(a3 + 55) < 0)
    {
      if (v249 >= 0)
      {
        v250 = a1 + 60;
      }

      else
      {
        v250 = a1[60];
      }

      if (v249 >= 0)
      {
        v251 = *(a1 + 503);
      }

      else
      {
        v251 = a1[61];
      }

      sub_13B38(v258, v250, v251);
    }

    else if ((*(a1 + 503) & 0x80) != 0)
    {
      sub_13A68(v258, a1[60], a1[61]);
    }

    else
    {
      *v258 = *(a1 + 30);
      v258[2] = a1[62];
    }
  }

  v252 = *(a1 + 73);
  *(a3 + 120) = *(a1 + 71);
  *(a3 + 136) = v252;
  v253 = *(a1 + 77);
  *(a3 + 152) = *(a1 + 75);
  *(a3 + 168) = v253;
  v254 = *(a1 + 65);
  *(a3 + 56) = *(a1 + 63);
  *(a3 + 72) = v254;
  result = *(a1 + 67);
  v256 = *(a1 + 69);
  *(a3 + 88) = result;
  *(a3 + 104) = v256;
  return result;
}

void sub_AD7B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  STACK[0x268] = v17 + 240;
  sub_A31F30(&STACK[0x268]);
  v19 = *(v17 + 216);
  if (v19)
  {
    *(v17 + 224) = v19;
    operator delete(v19);
    v20 = *a10;
    if (*a10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *a10;
    if (*a10)
    {
LABEL_3:
      *(v17 + 200) = v20;
      operator delete(v20);
      if ((*(v17 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  if ((*(v17 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    v21 = a17;
    if (!*a17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a11);
  v21 = a17;
  if (!*a17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_A95778(v21);
  operator delete(*v21);
  _Unwind_Resume(a1);
}

double sub_AD80F0(uint64_t a1)
{
  *(a1 + 200) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 184) = 0;
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  if (v2 != v3)
  {
    v4 = *(a1 + 208);
    v5 = *(a1 + 232);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 240) = v2;
  v7 = *(a1 + 280);
  v8 = *(a1 + 288);
  if (v7 != v8)
  {
    v9 = *(a1 + 256);
    v10 = *(a1 + 280);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 288) = v7;
  v12 = *(a1 + 352);
  v13 = *(a1 + 360);
  if (v12 != v13)
  {
    v14 = *(a1 + 328);
    v15 = *(a1 + 304);
    v16 = *(a1 + 352);
    do
    {
      v17 = *v16++;
      *(v14 + ((v17 >> 3) & 0x1FFFFFF8)) &= ~(1 << v17);
      *(v15 + 4 * v17) = -1;
    }

    while (v16 != v13);
  }

  *(a1 + 360) = v12;
  sub_C4306C((a1 + 384));
  v25 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v26, &__p);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  *(a1 + 480) = v26;
  *(a1 + 496) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  v18 = v33;
  *(a1 + 568) = v32;
  *(a1 + 584) = v18;
  v19 = v35;
  *(a1 + 600) = v34;
  *(a1 + 616) = v19;
  v20 = v29;
  *(a1 + 504) = v28;
  *(a1 + 520) = v20;
  v21 = v31;
  *(a1 + 536) = v30;
  *(a1 + 552) = v21;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v22 = COERCE_DOUBLE(vadd_s32(vdup_n_s32(2 * *(a1 + 16)), 0x200000004));
  *(a1 + 120) = v22;
  return sub_C430C8((a1 + 384), *(a1 + 8), v22);
}

void sub_AD82A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_AD82C4(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 200);
    *(a1 + 200) = v3 + 1;
    v4 = *(a1 + 32);
    *&v21 = 0x1FFFFFFFDLL;
    v5 = sub_A98E8C(v4, &v21);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, &v21);
      v6 = *(v8 + 8);
    }

    v28 = v6;
    sub_AD0464((a1 + 128), 0);
    v21 = xmmword_229B660;
    v22 = -1;
    v23 = v3;
    v24 = v2;
    v25 = 0;
    v26 = -1;
    v27 = 0x7FFFFFFF;
    v9 = *(a1 + 128);
    if (*(a1 + 136) == v9 || (v11 = *v9, v10 = *(*(a1 + 128) + 4), v10 == v11))
    {
      sub_AD0BAC((a1 + 128), 0, &v21);
    }

    else
    {
      v15 = 0;
      v16 = *(a1 + 152);
      v17 = (v16 + 56 * v10);
      v18 = (v16 + 56 * v11);
      do
      {
        v19 = v18[7];
        if (v19 != 0x7FFFFFFF)
        {
          if (v19 >= v24 && v18[8] <= v25 && v18[9] <= HIDWORD(v25))
          {
            goto LABEL_26;
          }

          if (v24 >= v19 && v25 <= v18[8] && HIDWORD(v25) <= v18[9])
          {
            v18[7] = 0x7FFFFFFF;
            v15 = 1;
          }
        }

        v18 += 14;
      }

      while (v18 != v17);
      v20 = sub_AD0BAC((a1 + 128), 0, &v21);
      *(v20 + 44) = -1;
      *(v20 + 52) = 0x7FFFFFFF;
LABEL_26:
      if (v15)
      {
        sub_AD10F4((a1 + 128), 0);
      }
    }

    v12 = *(a1 + 120);
    v13 = v12 * (v6 + 1);
    v14 = v13 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_ADAFCC((a1 + 128), 0, v14, v13, v12 + v12 * *(a1 + 376), 0x80000000))
      {
        return;
      }
    }

    else if (!sub_ADAFCC((a1 + 128), 0, v14, v13, 0xFFFFFFFF, 0x80000000))
    {
      return;
    }

    if (*(a1 + 216) <= v6)
    {
      sub_4D9168(a1 + 208, v6 + 1, 0);
    }

    if (((*(*(a1 + 208) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
    {
      sub_DD38(a1 + 232, &v28);
      *(*(a1 + 208) + ((v28 >> 3) & 0x1FFFFFF8)) |= 1 << v28;
    }
  }
}

double sub_AD855C(uint64_t a1, int a2)
{
  sub_7E9A4(v40);
  v4 = *(a1 + 232);
  v38 = *(a1 + 240);
  if (v4 != v38)
  {
    while (1)
    {
      v39 = *v4;
      v5 = *sub_A9C5E0((*(a1 + 32) + 88), v39);
      if (HIDWORD(v5) == 1 && (v5 + 3) < 2)
      {
LABEL_12:
        v11 = 0;
        goto LABEL_17;
      }

      v7 = *(*(a1 + 24) + 4120);
      if (*(v7 + 17) == 1)
      {
        break;
      }

      v8 = sub_502FF8(v7 + 24, __ROR8__(v5, 32), 0, "stop");
      v12 = (v8 - *v8);
      if (*v12 >= 0x15u)
      {
        v10 = v12[10];
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v11 = -30;
LABEL_17:
      sub_AD0464((a1 + 128), 0);
      sub_ADB54C((a1 + 128), a2 + 1 + *(a1 + 120) + *(a1 + 120) * v39, 0);
      v13 = *(a1 + 128);
      if (*(a1 + 136) != v13)
      {
        v14 = *(a1 + 152);
        v15 = *v13;
LABEL_19:
        v16 = v14;
        goto LABEL_22;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v14 = *(a1 + 152);
      v15 = *v13;
      if (*(a1 + 136) != v13)
      {
        goto LABEL_19;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v16 = *(a1 + 152);
LABEL_22:
      v17 = (v14 + 56 * v15);
      v18 = (v16 + 56 * v13[1]);
      if (v17 == v18)
      {
        goto LABEL_29;
      }

      v19 = v39;
      v20 = v18 - v17 - 56;
      if (v20 <= 0x37)
      {
        v21 = (v14 + 56 * v15);
        do
        {
LABEL_28:
          *v21 = v19;
          v27 = *(v21 + 7);
          *(v21 + 3) = v27;
          *(v21 + 4) = -1;
          *(v21 + 7) = v27 + v11;
          v21 += 56;
        }

        while (v21 != v18);
        goto LABEL_29;
      }

      v22 = v20 / 0x38 + 1;
      v21 = &v17[56 * (v22 & 0xFFFFFFFFFFFFFFELL)];
      v23 = (v17 + 84);
      v24 = v22 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v23 - 21) = v19;
        *(v23 - 7) = v19;
        v25 = *(v23 - 14);
        v26 = *v23;
        *(v23 - 18) = v25;
        *(v23 - 17) = -1;
        *(v23 - 4) = v26;
        *(v23 - 3) = -1;
        *(v23 - 14) = v25 + v11;
        *v23 = v26 + v11;
        v23 += 28;
        v24 -= 2;
      }

      while (v24);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_28;
      }

LABEL_29:
      v28 = v39;
      v29 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v30 = v29 + v29 * *(a1 + 376) + 1;
        v31 = *(a1 + 48);
        if (v31)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v30 = -1;
        v31 = *(a1 + 48);
        if (v31)
        {
LABEL_31:
          if (*v31 > v39)
          {
            v32 = 0;
            v33 = *(a1 + 124) + ~a2;
            v34 = v33;
            while (v32 <= v33)
            {
              v35 = *sub_A9C7DC(v31 + 2, v31[1] * v28 + v34);
              v32 += 2;
              v34 -= 2;
              if (v35 != 0x7FFFFFFF)
              {
                goto LABEL_39;
              }
            }
          }

          v35 = 0x7FFFFFFF;
          goto LABEL_39;
        }
      }

      v35 = 0x80000000;
LABEL_39:
      if (sub_ADAFCC((a1 + 128), 0, a2 + 2 + v29 + v29 * v28, v29 + v29 * v28 + 1, v30, v35))
      {
        v36 = v39;
        if (*(a1 + 264) <= v39)
        {
          sub_4D9168(a1 + 256, v39 + 1, 0);
          v36 = v39;
        }

        if (((*(*(a1 + 256) + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
        {
          sub_DD38(a1 + 280, &v39);
          *(*(a1 + 256) + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
        }
      }

      if (++v4 == v38)
      {
        goto LABEL_44;
      }
    }

    v8 = sub_A74944(v7 + 24, v5, 0, "transfers at stop");
    v9 = (v8 - *v8);
    if (*v9 < 5u)
    {
      goto LABEL_12;
    }

    v10 = v9[2];
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = -*(v8 + v10);
    goto LABEL_17;
  }

LABEL_44:
  result = sub_7EA60(v40) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

double sub_AD8928(uint64_t a1, int a2)
{
  sub_7E9A4(v256);
  v4 = *(a1 + 232);
  v233 = *(a1 + 240);
  if (v4 != v233)
  {
    v234 = a2 + 2;
    v240 = ~a2;
    v241 = a2 + 1;
    while (1)
    {
      v236 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A82C20(&v250, *(a1 + 24), *v6);
      v7 = v251;
      v8 = 16;
      if (v255)
      {
        v8 = 32;
      }

      if (v251 < *(&v250 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v236 + 1;
      if (v236 + 1 == v233)
      {
        goto LABEL_351;
      }
    }

    v242 = v5 + 1;
    v245 = v5;
LABEL_11:
    v10 = __ROR8__(*v7, 32);
    v11 = *(a1 + 32);
    v12 = *(v11 + 56) - 1;
    v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
    v14 = v13 ^ (v13 >> 33);
    v15 = *(v11 + 80);
    v17 = *(v11 + 64);
    v16 = *(v11 + 68);
    v18 = v14 & v12;
    v19 = (v15 + 12 * (v14 & v12));
    v21 = *v19;
    v20 = v19[1];
    if (v16 != v20 || v17 != v21)
    {
      if (!*(v11 + 40))
      {
        v41 = 1;
        while (__PAIR64__(v20, v21) != v10)
        {
          v18 = (v18 + v41) & v12;
          v42 = (v15 + 12 * v18);
          v21 = *v42;
          v20 = v42[1];
          ++v41;
          if (v16 == v20 && v17 == v21)
          {
            goto LABEL_55;
          }
        }

LABEL_51:
        if (v18 != -1)
        {
          v44 = v15 + 12 * v18;
          v45 = *(v44 + 8);
          if (v45 == -1)
          {
            goto LABEL_53;
          }

          goto LABEL_103;
        }

        v23 = -1;
        if (sub_A99094(*(a1 + 32), 1))
        {
LABEL_29:
          v27 = *(v11 + 56) - 1;
          v28 = *(v11 + 80);
          v30 = *(v11 + 64);
          v29 = *(v11 + 68);
          v31 = v27 & v14;
          v32 = (v28 + 12 * (v27 & v14));
          v34 = *v32;
          v33 = v32[1];
          v35 = *(v11 + 40);
          if (v29 == v33 && v30 == v34)
          {
LABEL_93:
            v37 = v31;
            goto LABEL_94;
          }

          if (v35)
          {
            v37 = -1;
            v38 = 1;
            do
            {
              if (*(v11 + 36) == v33 && *(v11 + 32) == v34)
              {
                if (v37 == -1)
                {
                  v37 = v31;
                }
              }

              else if (__PAIR64__(v33, v34) == v10)
              {
                goto LABEL_83;
              }

              v31 = (v31 + v38) & v27;
              v39 = (v28 + 12 * v31);
              v34 = *v39;
              v33 = v39[1];
              ++v38;
            }

            while (v29 != v33 || v30 != v34);
            if (v37 == -1)
            {
              goto LABEL_93;
            }

LABEL_94:
            v69 = *(v11 + 48);
            if ((v69 - v35) >= 0x1555555555555555)
            {
LABEL_360:
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }

            if (v35 && ((v70 = (v28 + 12 * v37), *(v11 + 36) == v70[1]) ? (v71 = *(v11 + 32) == *v70) : (v71 = 0), v71))
            {
              *(v11 + 40) = v35 - 1;
            }

            else
            {
              *(v11 + 48) = v69 + 1;
            }

            v72 = v28 + 12 * v37;
            *v72 = v10;
            *(v72 + 8) = -1;
            v44 = *(v11 + 80) + 12 * v37;
            v45 = *(v44 + 8);
            if (v45 != -1)
            {
              goto LABEL_103;
            }

LABEL_53:
            v46 = *(v11 + 112);
            *(v11 + 112) = v46 + 1;
            *(v44 + 8) = v46;
            v48 = *(v11 + 96);
            v47 = *(v11 + 104);
            if (v48 >= v47)
            {
              v55 = *(v11 + 88);
              v56 = v48 - v55;
              v57 = (v48 - v55) >> 3;
              v58 = v57 + 1;
              if ((v57 + 1) >> 61)
              {
                sub_1794();
              }

              v59 = v47 - v55;
              if (v59 >> 2 > v58)
              {
                v58 = v59 >> 2;
              }

              if (v59 >= 0x7FFFFFFFFFFFFFF8)
              {
                v60 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v58;
              }

              if (v60)
              {
                if (!(v60 >> 61))
                {
                  operator new();
                }

                goto LABEL_359;
              }

              v65 = (v48 - v55) >> 3;
              v66 = (8 * v57);
              v67 = (8 * v57 - 8 * v65);
              *v66 = v10;
              v49 = v66 + 1;
              memcpy(v67, v55, v56);
              *(v11 + 88) = v67;
              *(v11 + 96) = v49;
              *(v11 + 104) = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *v48 = v10;
              v49 = v48 + 8;
            }

            *(v11 + 96) = v49;
            v68 = *(v44 + 8);
            *(a1 + 576) = *(a1 + 576) + 1.0;
            v247 = v68;
            if (v5 == v68)
            {
              goto LABEL_300;
            }

LABEL_104:
            v73 = *(a1 + 128);
            v74 = *(a1 + 136);
            if (v74 == v73)
            {
              v79 = 1 - ((v74 - v73) >> 3);
              v80 = *(a1 + 144);
              if (v79 > (v80 - v74) >> 3)
              {
                v81 = v80 - v73;
                v82 = v81 >> 2;
                if ((v81 >> 2) <= 1)
                {
                  v82 = 1;
                }

                v223 = v81 >= 0x7FFFFFFFFFFFFFF8;
                v83 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v223)
                {
                  v83 = v82;
                }

                if (!(v83 >> 61))
                {
                  operator new();
                }

                goto LABEL_359;
              }

              bzero(*(a1 + 136), 8 * v79);
              v84 = &v74[2 * v79];
              *(a1 + 136) = v84;
              v73 = *(a1 + 128);
              v75 = *(a1 + 152);
              v76 = *v73;
              if (v73 == v84)
              {
                v77 = *(a1 + 144);
                if (v77 == v84)
                {
                  v86 = 1;
                  v87 = v77 - v73;
                  if ((v87 >> 2) > 1)
                  {
                    v86 = v87 >> 2;
                  }

                  if (v87 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v88 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v88 = v86;
                  }

                  v78 = v245;
                  if (v88)
                  {
                    if (!(v88 >> 61))
                    {
                      operator new();
                    }

                    goto LABEL_359;
                  }

                  *&dword_0 = 0;
                  *(a1 + 128) = 0;
                  *(a1 + 136) = 8;
                  *(a1 + 144) = 0;
                  if (v73)
                  {
                    operator delete(v73);
                  }
                }

                else
                {
                  *v84 = 0;
                  *(a1 + 136) = v84 + 2;
                  v78 = v245;
                }

                v73 = *(a1 + 128);
                v85 = *(a1 + 152);
                goto LABEL_128;
              }
            }

            else
            {
              v75 = *(a1 + 152);
              v76 = *v73;
            }

            v85 = v75;
            v78 = v245;
LABEL_128:
            sub_AD06A4((a1 + 128), 0, (v75 + 56 * v76), (v85 + 56 * v73[1]));
            v89 = v241 + *(a1 + 120) * v242;
            v90 = *(a1 + 128);
            v91 = *(a1 + 136);
            if (v89 >= (v91 - v90) >> 3)
            {
              goto LABEL_166;
            }

            v92 = v90[2 * v89];
            v93 = v90[2 * v89 + 1];
            v94 = v93 - v92;
            if (v93 == v92)
            {
              goto LABEL_166;
            }

            v95 = 0;
            v96 = 0;
            do
            {
              v97 = *(a1 + 128);
              if (v89 >= (*(a1 + 136) - v97) >> 3)
              {
                goto LABEL_356;
              }

              v98 = v97[2 * v89];
              if (v97[2 * v89 + 1] - v98 <= v96)
              {
                goto LABEL_356;
              }

              v99 = v98 + v96;
              v100 = *(a1 + 152);
              if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - v100) >> 3) <= v99)
              {
LABEL_357:
                v231 = __cxa_allocate_exception(0x10uLL);
                sub_195A2D8(v231, "index out of range");
                goto LABEL_358;
              }

              v101 = v100 + 56 * v99;
              v102 = *v101;
              v103 = *(v101 + 16);
              v104 = *(v101 + 32);
              v260 = *(v101 + 48);
              v259 = v104;
              v257 = v102;
              v258 = v103;
              v106 = *v97;
              v105 = v97[1];
              if (v105 != *v97)
              {
                v107 = 0;
                v109 = (v100 + 56 * v105);
                v110 = (v100 + 56 * v106);
                while (1)
                {
                  v111 = v110[7];
                  if (v111 != 0x7FFFFFFF)
                  {
                    if (v111 >= SHIDWORD(v258) && v110[8] <= v259 && v110[9] <= DWORD1(v259))
                    {
                      goto LABEL_137;
                    }

                    if (SHIDWORD(v258) >= v111 && v259 <= v110[8] && DWORD1(v259) <= v110[9])
                    {
                      v110[7] = 0x7FFFFFFF;
                      v107 = 1;
                    }
                  }

                  v110 += 14;
                  if (v110 == v109)
                  {
                    goto LABEL_136;
                  }
                }
              }

              v107 = 0;
LABEL_136:
              v108 = sub_AD0BAC((a1 + 128), 0, &v257);
              *(v108 + 44) = -1;
              *(v108 + 52) = 0x7FFFFFFF;
LABEL_137:
              v95 |= v107;
              ++v96;
            }

            while (v96 != v94);
            v90 = *(a1 + 128);
            v91 = *(a1 + 136);
            if (v95)
            {
              if (v91 != v90)
              {
                v112 = *(a1 + 152);
                v113 = *v90;
                goto LABEL_152;
              }

              sub_30B70(a1 + 128, 1uLL);
              v90 = *(a1 + 128);
              v112 = *(a1 + 152);
              v113 = *v90;
              if (*(a1 + 136) == v90)
              {
                sub_30B70(a1 + 128, 1uLL);
                v90 = *(a1 + 128);
                v114 = *(a1 + 152);
              }

              else
              {
LABEL_152:
                v114 = v112;
              }

              v115 = (v112 + 56 * v113);
              v116 = (v114 + 56 * v90[1]);
              if (v115 != v116)
              {
                while (*(v115 + 7) != 0x7FFFFFFF)
                {
                  v115 = (v115 + 56);
                  if (v115 == v116)
                  {
                    v115 = v116;
                    break;
                  }
                }

                if (v116 == v115 || (v117 = (v115 + 56), (v115 + 56) == v116))
                {
                  if (*(a1 + 136) != v90)
                  {
                    goto LABEL_165;
                  }
                }

                else
                {
                  do
                  {
                    if (*(v117 + 7) != 0x7FFFFFFF)
                    {
                      v121 = *v117;
                      v122 = v117[1];
                      v123 = v117[2];
                      *(v115 + 6) = *(v117 + 6);
                      v115[1] = v122;
                      v115[2] = v123;
                      *v115 = v121;
                      v115 = (v115 + 56);
                    }

                    v117 = (v117 + 56);
                  }

                  while (v117 != v116);
                  v90 = *(a1 + 128);
                  if (*(a1 + 136) != v90)
                  {
                    goto LABEL_165;
                  }
                }

LABEL_158:
                sub_30B70(a1 + 128, 1uLL);
                v90 = *(a1 + 128);
                goto LABEL_165;
              }

              v115 = v116;
              if (*(a1 + 136) == v90)
              {
                goto LABEL_158;
              }

LABEL_165:
              sub_AD06A4((a1 + 128), 0, v115, (*(a1 + 152) + 56 * v90[1]));
              v90 = *(a1 + 128);
              v91 = *(a1 + 136);
            }

LABEL_166:
            if (v91 != v90)
            {
              v118 = *(a1 + 152);
              v119 = *v90;
              goto LABEL_181;
            }

            v124 = 1 - ((v91 - v90) >> 3);
            v125 = *(a1 + 144);
            if (v124 > (v125 - v91) >> 3)
            {
              v126 = v125 - v90;
              v127 = v126 >> 2;
              if ((v126 >> 2) <= 1)
              {
                v127 = 1;
              }

              v223 = v126 >= 0x7FFFFFFFFFFFFFF8;
              v128 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v223)
              {
                v128 = v127;
              }

              if (!(v128 >> 61))
              {
                operator new();
              }

              goto LABEL_359;
            }

            bzero(v91, 8 * v124);
            v129 = &v91[2 * v124];
            *(a1 + 136) = v129;
            v90 = *(a1 + 128);
            v118 = *(a1 + 152);
            v119 = *v90;
            if (v90 != v129)
            {
LABEL_181:
              v130 = v118;
              goto LABEL_193;
            }

            v120 = *(a1 + 144);
            if (v120 == v129)
            {
              v131 = 1;
              v132 = v120 - v90;
              if ((v132 >> 2) > 1)
              {
                v131 = v132 >> 2;
              }

              if (v132 >= 0x7FFFFFFFFFFFFFF8)
              {
                v133 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v133 = v131;
              }

              if (!v133)
              {
                *&dword_0 = 0;
                *(a1 + 128) = 0;
                *(a1 + 136) = 8;
                *(a1 + 144) = 0;
                if (v90)
                {
                  operator delete(v90);
                }

                goto LABEL_192;
              }

              if (!(v133 >> 61))
              {
                operator new();
              }

LABEL_359:
              sub_1808();
            }

            *v129 = 0;
            *(a1 + 136) = v129 + 2;
LABEL_192:
            v90 = *(a1 + 128);
            v130 = *(a1 + 152);
LABEL_193:
            v134 = (v118 + 56 * v119);
            v135 = (v130 + 56 * v90[1]);
            if (v134 != v135)
            {
              v136 = v251;
              do
              {
                *v134 = v78;
                v137 = v134[7];
                v138 = v134[8];
                v134[3] = v137;
                v134[4] = -1;
                v139 = *(v136 + 2);
                v140 = v139 / -10;
                v141 = v139 / 10;
                v142 = v139 % 10;
                if (v139 < 0)
                {
                  v143 = -5;
                }

                else
                {
                  v143 = 5;
                }

                v144 = (v143 + v142);
                v134[7] = v140 + v137 + (((-103 * v144) >> 15) & 1) + ((-103 * v144) >> 10);
                v134[8] = v138 + v141 + (((103 * v144) >> 15) & 1) + ((103 * v144) >> 10);
                v134 += 14;
              }

              while (v134 != v135);
            }

            v145 = *(a1 + 120);
            if (*(a1 + 20) != 1)
            {
              v146 = 0xFFFFFFFFLL;
              v147 = v247;
              v148 = *(a1 + 48);
              v248 = 0xFFFFFFFFLL;
              if (v148)
              {
                goto LABEL_201;
              }

LABEL_208:
              v152 = 0x80000000;
              v153 = *(a1 + 128);
              if (*(a1 + 136) == v153)
              {
                goto LABEL_300;
              }

              goto LABEL_213;
            }

            v146 = (v145 + v145 * *(a1 + 376) + 1);
            v147 = v247;
            v148 = *(a1 + 48);
            v248 = v146;
            if (!v148)
            {
              goto LABEL_208;
            }

LABEL_201:
            if (*v148 <= v147)
            {
              v152 = 0x7FFFFFFF;
              v153 = *(a1 + 128);
              if (*(a1 + 136) == v153)
              {
                goto LABEL_300;
              }
            }

            else
            {
              v149 = 0;
              v150 = *(a1 + 124) + v240;
              v151 = v150;
              do
              {
                if (v149 > v150)
                {
                  v152 = 0x7FFFFFFF;
                  v146 = v248;
                  v153 = *(a1 + 128);
                  if (*(a1 + 136) == v153)
                  {
                    goto LABEL_300;
                  }

                  goto LABEL_213;
                }

                v152 = *sub_A9C7DC(v148 + 2, v148[1] * v147 + v151);
                v149 += 2;
                v151 -= 2;
              }

              while (v152 == 0x7FFFFFFF);
              v146 = v248;
              v153 = *(a1 + 128);
              if (*(a1 + 136) == v153)
              {
                goto LABEL_300;
              }
            }

LABEL_213:
            v154 = v153[1];
            v155 = v154 - *v153;
            if (v154 == *v153)
            {
              goto LABEL_300;
            }

            if (v152 == 0x7FFFFFFF)
            {
              v156 = 0;
              while (v153[1] - *v153 > v156)
              {
                if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - *(a1 + 152)) >> 3) <= (v156 + *v153))
                {
                  goto LABEL_357;
                }

                if (v155 == ++v156)
                {
                  goto LABEL_300;
                }
              }

LABEL_356:
              v231 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v231, "key does not exist and cannot be added");
LABEL_358:
            }

            v239 = v147;
            v249 = 0;
            v157 = 0;
            v235 = v247 + 1;
            v158 = (v145 * v235 + 1);
            v243 = (v146 + 1);
            *v244 = (v234 + v145 * v235);
            v246 = v158;
            while (1)
            {
              while (1)
              {
                v159 = *(a1 + 128);
                v160 = *(a1 + 136);
                v161 = v160 - v159;
                if (v160 == v159 || v159[1] - *v159 <= v157)
                {
                  goto LABEL_356;
                }

                v162 = *v159 + v157;
                v163 = *(a1 + 152);
                if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - v163) >> 3) <= v162)
                {
                  goto LABEL_357;
                }

                v164 = v163 + 56 * v162;
                v166 = *(v164 + 16);
                v165 = *(v164 + 32);
                v167 = *v164;
                v260 = *(v164 + 48);
                v259 = v165;
                v257 = v167;
                v258 = v166;
                if (SHIDWORD(v166) >= v152)
                {
                  break;
                }

                if (++v157 == v155)
                {
                  goto LABEL_294;
                }
              }

              if (v146 == 0xFFFFFFFF)
              {
                goto LABEL_259;
              }

              v168 = v161 >> 3;
              if (v161 >> 3 > v146)
              {
                goto LABEL_228;
              }

              v172 = v243 - v168;
              if (v243 <= v168)
              {
                break;
              }

              v173 = *(a1 + 144);
              if (v172 > (v173 - v160) >> 3)
              {
                v174 = v173 - v159;
                v175 = v174 >> 2;
                if (v174 >> 2 <= v243)
                {
                  v175 = v243;
                }

                v223 = v174 >= 0x7FFFFFFFFFFFFFF8;
                v176 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v223)
                {
                  v176 = v175;
                }

                if (!(v176 >> 61))
                {
                  operator new();
                }

                goto LABEL_359;
              }

              bzero(v160, 8 * v172);
              v146 = v248;
              v160 += 8 * v172;
              *(a1 + 136) = v160;
              v159 = *(a1 + 128);
              v163 = *(a1 + 152);
              v158 = v246;
              v169 = v159[2 * v248];
              v170 = (v160 - v159) >> 3;
              if (v170 > v248)
              {
                goto LABEL_229;
              }

LABEL_241:
              v177 = v243 - v170;
              if (v243 > v170)
              {
                v178 = *(a1 + 144);
                if (v177 <= (v178 - v160) >> 3)
                {
                  v182 = 8 * v177;
                  bzero(v160, 8 * v177);
                  *(a1 + 136) = &v160[v182];
                }

                else
                {
                  v179 = (v160 - v159) >> 3;
                  v180 = v179 + v177;
                  if ((v179 + v177) >> 61)
                  {
                    sub_1794();
                  }

                  v181 = v178 - v159;
                  if (v181 >> 2 > v180)
                  {
                    v180 = v181 >> 2;
                  }

                  if (v181 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v180 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  if (v180)
                  {
                    if (!(v180 >> 61))
                    {
                      operator new();
                    }

                    goto LABEL_359;
                  }

                  v237 = (v160 - v159) >> 3;
                  v238 = v160 - v159;
                  v183 = (8 * v179);
                  v184 = 8 * v177;
                  bzero(v183, 8 * v177);
                  v185 = &v183[v184];
                  v186 = &v183[-8 * v237];
                  memcpy(v186, v159, v238);
                  *(a1 + 128) = v186;
                  *(a1 + 136) = v185;
                  *(a1 + 144) = 0;
                  if (v159)
                  {
                    operator delete(v159);
                  }
                }

                v159 = *(a1 + 128);
                v171 = *(a1 + 152);
                v146 = v248;
                v158 = v246;
                goto LABEL_257;
              }

              if (v243 < v170)
              {
                *(a1 + 136) = &v159[2 * v243];
              }

LABEL_229:
              v171 = v163;
LABEL_257:
              v187 = (v163 + 56 * v169);
              for (i = (v171 + 56 * v159[2 * v146 + 1]); v187 != i; v187 += 14)
              {
                v199 = v187[7];
                v200 = v199 == 0x7FFFFFFF || v199 < SHIDWORD(v258);
                if (!v200 && v187[8] <= v259 && v187[9] <= DWORD1(v259))
                {
                  v198 = 0;
                  v191 = 0;
                  goto LABEL_265;
                }
              }

              v163 = v171;
LABEL_259:
              if (v158 < (*(a1 + 136) - v159) >> 3)
              {
                v190 = v159[2 * v158];
                v189 = v159[2 * v158 + 1];
                if (v189 != v190)
                {
                  v191 = 0;
                  v201 = (v163 + 56 * v189);
                  v202 = (v163 + 56 * v190);
                  while (1)
                  {
                    v203 = v202[7];
                    if (v203 != 0x7FFFFFFF)
                    {
                      if (v203 >= SHIDWORD(v258) && v202[8] <= v259 && v202[9] <= DWORD1(v259))
                      {
                        v198 = 0;
                        goto LABEL_265;
                      }

                      if (SHIDWORD(v258) >= v203 && v259 <= v202[8] && DWORD1(v259) <= v202[9])
                      {
                        v202[7] = 0x7FFFFFFF;
                        v191 = 1;
                      }
                    }

                    v202 += 14;
                    if (v202 == v201)
                    {
                      goto LABEL_262;
                    }
                  }
                }
              }

              v191 = 0;
LABEL_262:
              v192 = sub_AD0BAC((a1 + 128), v158, &v257);
              *(v192 + 44) = -1;
              *(v192 + 52) = 0x7FFFFFFF;
              v193 = *(a1 + 128);
              if (*v244 < ((*(a1 + 136) - v193) >> 3))
              {
                v195 = *(v193 + 8 * *v244);
                v194 = *(v193 + 8 * *v244 + 4);
                if (v194 != v195)
                {
                  v204 = *(a1 + 152);
                  v205 = (v204 + 56 * v194);
                  v206 = (v204 + 56 * v195);
                  do
                  {
                    v207 = v206[7];
                    if (v207 != 0x7FFFFFFF && SHIDWORD(v258) >= v207 && v259 <= v206[8] && DWORD1(v259) <= v206[9])
                    {
                      v206[7] = 0x7FFFFFFF;
                    }

                    v206 += 14;
                  }

                  while (v206 != v205);
                }
              }

              v196 = sub_AD0BAC((a1 + 128), v244[0], &v257);
              *(v196 + 44) = -1;
              *(v196 + 52) = 0x7FFFFFFF;
              v197 = *(a1 + 200);
              *(a1 + 200) = v197 + 1;
              *(v196 + 24) = v197;
              *(v196 + 20) = DWORD2(v258);
              *(v196 + 44) = -1;
              *(v196 + 52) = 0x7FFFFFFF;
              v198 = 1;
              v146 = v248;
              v158 = v246;
LABEL_265:
              v249 |= v198 | (v191 << 8);
              if (++v157 == v155)
              {
LABEL_294:
                if ((v249 & 0x100) != 0)
                {
                  v208 = v158;
                  sub_AD10F4((a1 + 128), v244[0]);
                  sub_AD10F4((a1 + 128), v208);
                }

                if ((v249 & 1) == 0)
                {
                  goto LABEL_300;
                }

                if (*(a1 + 264) <= v239)
                {
                  sub_4D9168(a1 + 256, v235, 0);
                }

                if ((*(*(a1 + 256) + 8 * (v239 >> 6)) & (1 << v239)) != 0)
                {
LABEL_300:
                  v9 = v252;
                  v7 = (v251 + 12);
                  v251 = v7;
                  if (v7 != v252)
                  {
                    goto LABEL_301;
                  }

LABEL_318:
                  v7 = v253;
                  v251 = v253;
                  v209 = 1;
                  v255 = 1;
                  goto LABEL_319;
                }

                v211 = *(a1 + 288);
                v210 = *(a1 + 296);
                if (v211 >= v210)
                {
                  v213 = *(a1 + 280);
                  v214 = v211 - v213;
                  v215 = (v211 - v213) >> 2;
                  v216 = v215 + 1;
                  if ((v215 + 1) >> 62)
                  {
                    sub_1794();
                  }

                  v217 = v210 - v213;
                  if (v217 >> 1 > v216)
                  {
                    v216 = v217 >> 1;
                  }

                  if (v217 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v218 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v218 = v216;
                  }

                  if (!v218)
                  {
                    v219 = (v211 - v213) >> 2;
                    v220 = (4 * v215);
                    v221 = (4 * v215 - 4 * v219);
                    *v220 = v247;
                    v212 = v220 + 1;
                    memcpy(v221, v213, v214);
                    *(a1 + 280) = v221;
                    *(a1 + 288) = v212;
                    *(a1 + 296) = 0;
                    if (v213)
                    {
                      operator delete(v213);
                    }

                    goto LABEL_317;
                  }

                  if (!(v218 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_359;
                }

                *v211 = v247;
                v212 = v211 + 4;
LABEL_317:
                *(a1 + 288) = v212;
                *(*(a1 + 256) + 8 * (v239 >> 6)) |= 1 << v239;
                v9 = v252;
                v7 = (v251 + 12);
                v251 = v7;
                if (v7 == v252)
                {
                  goto LABEL_318;
                }

LABEL_301:
                v209 = v255;
LABEL_319:
                if (v209)
                {
                  v222 = v254;
                }

                else
                {
                  v222 = v9;
                }

                v223 = *(v250 + 16) != 1 || v7 >= v222;
                if (v223)
                {
                  v5 = v245;
                  if (v209)
                  {
                    v9 = v254;
                  }

                  if (v7 >= v9)
                  {
                    goto LABEL_3;
                  }
                }

                else
                {
                  v224 = __ROR8__(*v7, 32);
                  v225 = HIDWORD(v224) != 1 || (v224 + 3) >= 2;
                  v5 = v245;
                  if (v225)
                  {
                    while (!sub_2D5204(**(v250 + 4120)))
                    {
                      v9 = v252;
                      v7 = (v251 + 12);
                      v251 = v7;
                      if (v7 == v252)
                      {
                        v7 = v253;
                        v251 = v253;
                        v209 = 1;
                        v255 = 1;
                        if (v253 >= v254)
                        {
                          goto LABEL_343;
                        }
                      }

                      else
                      {
                        v209 = v255;
                        v228 = 16;
                        if (v255)
                        {
                          v228 = 32;
                        }

                        if (v7 >= *(&v250 + v228))
                        {
                          goto LABEL_343;
                        }
                      }

                      v226 = __ROR8__(*v7, 32);
                      if (HIDWORD(v226) == 1 && (v226 + 3) < 2)
                      {
                        goto LABEL_343;
                      }
                    }

                    v7 = v251;
                    v229 = v252;
                    if (v255)
                    {
                      v229 = v254;
                    }

                    if (v251 >= v229)
                    {
                      goto LABEL_3;
                    }
                  }

                  else
                  {
LABEL_343:
                    if (v209)
                    {
                      v9 = v254;
                    }

                    if (v7 >= v9)
                    {
                      goto LABEL_3;
                    }
                  }
                }

                goto LABEL_11;
              }
            }

            if (v243 < v168)
            {
              v160 = &v159[2 * v243];
              *(a1 + 136) = v160;
            }

LABEL_228:
            v169 = v159[2 * v146];
            v170 = (v160 - v159) >> 3;
            if (v170 > v146)
            {
              goto LABEL_229;
            }

            goto LABEL_241;
          }

          v62 = 1;
          while (__PAIR64__(v33, v34) != v10)
          {
            v31 = (v31 + v62) & v27;
            v63 = (v28 + 12 * v31);
            v34 = *v63;
            v33 = v63[1];
            ++v62;
            if (v29 == v33 && v30 == v34)
            {
              v35 = 0;
              goto LABEL_93;
            }
          }

LABEL_83:
          if (v31 == -1)
          {
            v37 = -1;
            goto LABEL_94;
          }

          v44 = v28 + 12 * v31;
          v45 = *(v44 + 8);
          if (v45 == -1)
          {
            goto LABEL_53;
          }

LABEL_103:
          *(a1 + 576) = *(a1 + 576) + 1.0;
          v247 = v45;
          if (v5 == v45)
          {
            goto LABEL_300;
          }

          goto LABEL_104;
        }

LABEL_56:
        v51 = *(v11 + 40);
        v50 = *(v11 + 48);
        if ((v50 - v51) >= 0x1555555555555555)
        {
          goto LABEL_360;
        }

        v52 = *(v11 + 80);
        if (v51 && ((v53 = (v52 + 12 * v23), *(v11 + 36) == v53[1]) ? (v54 = *(v11 + 32) == *v53) : (v54 = 0), v54))
        {
          *(v11 + 40) = v51 - 1;
        }

        else
        {
          *(v11 + 48) = v50 + 1;
        }

        v61 = v52 + 12 * v23;
        *v61 = v10;
        *(v61 + 8) = -1;
        v44 = *(v11 + 80) + 12 * v23;
        v45 = *(v44 + 8);
        if (v45 == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_103;
      }

      v23 = -1;
      v24 = 1;
      do
      {
        if (*(v11 + 36) == v20 && *(v11 + 32) == v21)
        {
          if (v23 == -1)
          {
            v23 = v18;
          }
        }

        else if (__PAIR64__(v20, v21) == v10)
        {
          goto LABEL_51;
        }

        v18 = (v18 + v24) & v12;
        v25 = (v15 + 12 * v18);
        v21 = *v25;
        v20 = v25[1];
        ++v24;
      }

      while (v16 != v20 || v17 != v21);
      if (v23 != -1)
      {
        if (sub_A99094(*(a1 + 32), 1))
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }
    }

LABEL_55:
    v23 = v18;
    if (sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_351:
  result = sub_7EA60(v256) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}