void sub_B00C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  STACK[0x208] = a18 + 240;
  sub_A31F30(&STACK[0x208]);
  v20 = *(a18 + 216);
  if (v20)
  {
    *(a18 + 224) = v20;
    operator delete(v20);
    v21 = a11;
    v22 = *a10;
    if (!*a10)
    {
LABEL_3:
      if (*(a18 + 55) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v21 = a11;
    v22 = *a10;
    if (!*a10)
    {
      goto LABEL_3;
    }
  }

  *(a18 + 200) = v22;
  operator delete(v22);
  if (*(a18 + 55) < 0)
  {
LABEL_4:
    operator delete(*v21);
    if (*v18)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  if (*v18)
  {
LABEL_5:
    sub_A95778(v18);
    operator delete(*v18);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

double sub_B011C4(uint64_t a1)
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

void sub_B0137C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B01398(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 200);
    *(a1 + 200) = v3 + 1;
    v4 = *(a1 + 32);
    *&v13 = 0x1FFFFFFFDLL;
    v5 = sub_A98E8C(v4, &v13);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, &v13);
      v6 = *(v8 + 8);
    }

    v22 = v6;
    sub_AE5278((a1 + 128), 0);
    v13 = xmmword_229B660;
    v14 = -1;
    v15 = v3;
    v16 = v2;
    v17 = 0;
    v18 = 10 * v2;
    v19 = 0;
    v20 = -1;
    v21 = 0x7FFFFFFF;
    v9 = *(a1 + 128);
    if (*(a1 + 136) == v9 || *(*(a1 + 128) + 4) == *v9)
    {
      sub_AF9E48((a1 + 128), 0, &v13);
    }

    else if ((sub_B040A0(a1 + 128, &v13, 0, 0, 1) & 0x100) != 0)
    {
      sub_AE5FB0((a1 + 128), 0);
    }

    v10 = *(a1 + 120);
    v11 = v10 * (v6 + 1);
    v12 = v11 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_B03E50((a1 + 128), 0, v12, v11, v10 + v10 * *(a1 + 376), 0x80000000))
      {
        return;
      }
    }

    else if (!sub_B03E50((a1 + 128), 0, v12, v11, 0xFFFFFFFF, 0x80000000))
    {
      return;
    }

    if (*(a1 + 216) <= v6)
    {
      sub_4D9168(a1 + 208, v6 + 1, 0);
    }

    if (((*(*(a1 + 208) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
    {
      sub_DD38(a1 + 232, &v22);
      *(*(a1 + 208) + ((v22 >> 3) & 0x1FFFFFF8)) |= 1 << v22;
    }
  }
}

double sub_B015A4(uint64_t a1, int a2)
{
  sub_7E9A4(v70);
  v4 = *(a1 + 232);
  v66 = *(a1 + 240);
  if (v4 != v66)
  {
    v64 = a2 + 2;
    v65 = a2 + 1;
    v63 = ~a2;
    while (1)
    {
      v69 = *v4;
      v5 = *sub_A9C5E0((*(a1 + 32) + 88), v69);
      v6 = HIDWORD(v5) != 1 || (v5 + 3) >= 2;
      v68 = v4;
      if (!v6)
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
      sub_AE5278((a1 + 128), 0);
      v13 = v65 + *(a1 + 120) + *(a1 + 120) * v69;
      v14 = *(a1 + 128);
      if (v13 >= (*(a1 + 136) - v14) >> 3)
      {
        goto LABEL_47;
      }

      v16 = (v14 + 8 * v13);
      v15 = v16[1];
      v17 = v15 - *v16;
      if (v15 == *v16)
      {
        goto LABEL_47;
      }

      v18 = 0;
      v19 = 0;
LABEL_22:
      while (2)
      {
        v23 = v18;
        v24 = *(a1 + 128);
        if (v13 >= (*(a1 + 136) - v24) >> 3 || (v25 = v24[2 * v13], v24[2 * v13 + 1] - v25 <= v19))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "key does not exist and cannot be added");
          goto LABEL_77;
        }

        v26 = v25 + v19;
        v27 = *(a1 + 152);
        if (v26 >= (*(a1 + 160) - v27) >> 6)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "index out of range");
LABEL_77:
        }

        v28 = (v27 + (v26 << 6));
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v73 = v28[2];
        v74 = v31;
        v71 = v29;
        v72 = v30;
        v33 = *v24;
        v32 = v24[1];
        if (v32 != v33)
        {
          v20 = 0;
          v34 = v27 + (v32 << 6);
          v35 = v74;
          v36 = v27 + (v33 << 6);
          while (1)
          {
            v37 = *(v36 + 28);
            if (v37 != 0x7FFFFFFF)
            {
              if (v37 >= SHIDWORD(v72) && *(v36 + 32) <= v73)
              {
                v38 = *(v36 + 36);
                if (v38 <= DWORD1(v73) && (v38 != DWORD1(v73) || v37 != HIDWORD(v72) || *(v36 + 44) - 10 * v37 <= HIDWORD(v73) - 10 * HIDWORD(v72)) && (*(v36 + 48) & ~v74) == 0)
                {
                  v22 = v20 << 8;
                  v18 = v23 | (v20 << 8);
                  if (++v19 == v17)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_22;
                }
              }

              if (SHIDWORD(v72) >= v37 && v73 <= *(v36 + 32))
              {
                v39 = *(v36 + 36);
                if (DWORD1(v73) <= v39 && (DWORD1(v73) != v39 || HIDWORD(v72) != v37 || HIDWORD(v73) - 10 * HIDWORD(v72) <= *(v36 + 44) - 10 * v37) && (v35 & ~*(v36 + 48)) == 0)
                {
                  *(v36 + 28) = 0x7FFFFFFF;
                  v20 = 1;
                }
              }
            }

            v36 += 64;
            if (v36 == v34)
            {
              goto LABEL_21;
            }
          }
        }

        v20 = 0;
LABEL_21:
        v21 = sub_AF9E48((a1 + 128), 0, &v71);
        *(v21 + 52) = -1;
        *(v21 + 60) = 0x7FFFFFFF;
        v22 = v20 << 8;
        v18 = v23 | 1 | (v20 << 8);
        if (++v19 != v17)
        {
          continue;
        }

        break;
      }

LABEL_45:
      if (((v22 | v23) & 0x100) != 0)
      {
        sub_AE5FB0((a1 + 128), 0);
      }

LABEL_47:
      v40 = *(a1 + 128);
      if (*(a1 + 136) != v40)
      {
        v41 = *(a1 + 152);
        v42 = *v40;
LABEL_49:
        v43 = (v41 + (v42 << 6));
        v44 = v41 + (v40[1] << 6);
        v45 = v69;
        if (v43 == v44)
        {
          goto LABEL_50;
        }

        goto LABEL_60;
      }

      sub_30B70(a1 + 128, 1uLL);
      v40 = *(a1 + 128);
      v41 = *(a1 + 152);
      v42 = *v40;
      if (*(a1 + 136) != v40)
      {
        goto LABEL_49;
      }

      sub_30B70(a1 + 128, 1uLL);
      v43 = (v41 + (v42 << 6));
      v44 = *(a1 + 152) + (*(*(a1 + 128) + 4) << 6);
      v45 = v69;
      if (v43 == v44)
      {
LABEL_50:
        v46 = *(a1 + 120);
        if (*(a1 + 20) == 1)
        {
          goto LABEL_51;
        }

        goto LABEL_67;
      }

LABEL_60:
      v52 = v44 - v43 - 64;
      if (v52 <= 0x3F)
      {
        v53 = v43;
        do
        {
LABEL_65:
          *v53 = v45;
          v59 = v53[7];
          v53[3] = v59;
          v53[4] = -1;
          v53[7] = v59 + v11;
          v53 += 16;
        }

        while (v53 != v44);
        goto LABEL_66;
      }

      v54 = (v52 >> 6) + 1;
      v53 = &v43[16 * (v54 & 0x7FFFFFFFFFFFFFELL)];
      v55 = v43 + 23;
      v56 = v54 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v55 - 23) = v45;
        *(v55 - 7) = v45;
        v57 = *(v55 - 16);
        v58 = *v55;
        *(v55 - 20) = v57;
        *(v55 - 19) = -1;
        *(v55 - 4) = v58;
        *(v55 - 3) = -1;
        *(v55 - 16) = v57 + v11;
        *v55 = v58 + v11;
        v55 += 32;
        v56 -= 2;
      }

      while (v56);
      if (v54 != (v54 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_65;
      }

LABEL_66:
      v45 = v69;
      v46 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
LABEL_51:
        v67 = v46 + v46 * *(a1 + 376) + 1;
        v47 = *(a1 + 48);
        if (v47)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

LABEL_67:
      v67 = -1;
      v47 = *(a1 + 48);
      if (v47)
      {
LABEL_52:
        if (*v47 > v45)
        {
          v48 = 0;
          v49 = *(a1 + 124) + v63;
          v50 = v49;
          while (v48 <= v49)
          {
            v51 = *sub_A9C7DC(v47 + 2, v47[1] * v45 + v50);
            v48 += 2;
            v50 -= 2;
            if (v51 != 0x7FFFFFFF)
            {
              goto LABEL_69;
            }
          }
        }

        v51 = 0x7FFFFFFF;
        goto LABEL_69;
      }

LABEL_68:
      v51 = 0x80000000;
LABEL_69:
      if (sub_B03E50((a1 + 128), 0, v64 + v46 + v46 * v45, v46 + v46 * v45 + 1, v67, v51))
      {
        v60 = v69;
        if (*(a1 + 264) <= v69)
        {
          sub_4D9168(a1 + 256, v69 + 1, 0);
          v60 = v69;
        }

        if (((*(*(a1 + 256) + ((v60 >> 3) & 0x1FFFFFF8)) >> v60) & 1) == 0)
        {
          sub_DD38(a1 + 280, &v69);
          *(*(a1 + 256) + ((v69 >> 3) & 0x1FFFFFF8)) |= 1 << v69;
        }
      }

      v4 = v68 + 1;
      if (v68 + 1 == v66)
      {
        goto LABEL_74;
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

LABEL_74:
  result = sub_7EA60(v70) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

double sub_B01BEC(uint64_t a1, int a2)
{
  sub_7E9A4(v194);
  v4 = *(a1 + 232);
  v182 = *(a1 + 240);
  if (v4 != v182)
  {
    v185 = a2 + 2;
    v186 = a2 + 1;
    v184 = ~a2;
    while (1)
    {
      v183 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A82C20(&v188, *(a1 + 24), *v6);
      v7 = v189;
      v8 = 16;
      if (v193)
      {
        v8 = 32;
      }

      if (v189 < *(&v188 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v183 + 1;
      if (v183 + 1 == v182)
      {
        goto LABEL_264;
      }
    }

    while (1)
    {
      v12 = __ROR8__(*v7, 32);
      v13 = *(a1 + 32);
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
        goto LABEL_55;
      }

      if (*(v13 + 40))
      {
        break;
      }

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
          goto LABEL_55;
        }
      }

LABEL_53:
      if (v20 != -1)
      {
        v46 = v17 + 12 * v20;
        goto LABEL_88;
      }

      v25 = -1;
      if (sub_A99094(*(a1 + 32), 1))
      {
LABEL_31:
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
              goto LABEL_73;
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
            goto LABEL_269;
          }
        }

        else
        {
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

LABEL_73:
          if (v33 != -1)
          {
            v46 = v30 + 12 * v33;
            goto LABEL_88;
          }

          v39 = -1;
          v56 = *(v13 + 48);
          if ((v56 - v37) >= 0x1555555555555555)
          {
LABEL_269:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v37 && ((v57 = (v30 + 12 * v39), *(v13 + 36) == v57[1]) ? (v58 = *(v13 + 32) == *v57) : (v58 = 0), v58))
        {
          *(v13 + 40) = v37 - 1;
        }

        else
        {
          *(v13 + 48) = v56 + 1;
        }

        v59 = v30 + 12 * v39;
        *v59 = v12;
        *(v59 + 8) = -1;
        v46 = *(v13 + 80) + 12 * v39;
        goto LABEL_88;
      }

LABEL_56:
      v48 = *(v13 + 40);
      v47 = *(v13 + 48);
      if ((v47 - v48) >= 0x1555555555555555)
      {
        goto LABEL_269;
      }

      v49 = *(v13 + 80);
      if (v48 && ((v50 = (v49 + 12 * v25), *(v13 + 36) == v50[1]) ? (v51 = *(v13 + 32) == *v50) : (v51 = 0), v51))
      {
        *(v13 + 40) = v48 - 1;
      }

      else
      {
        *(v13 + 48) = v47 + 1;
      }

      v52 = v49 + 12 * v25;
      *v52 = v12;
      *(v52 + 8) = -1;
      v46 = *(v13 + 80) + 12 * v25;
LABEL_88:
      v60 = *(v46 + 8);
      if (v60 == -1)
      {
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

          v69 = v62 - v65;
          if (v69 >> 2 > v68)
          {
            v68 = v69 >> 2;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v70 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = v68;
          }

          if (v70)
          {
            if (!(v70 >> 61))
            {
              operator new();
            }

LABEL_268:
            sub_1808();
          }

          v71 = (v63 - v65) >> 3;
          v72 = (8 * v67);
          v73 = (8 * v67 - 8 * v71);
          *v72 = v12;
          v64 = v72 + 1;
          memcpy(v73, v65, v66);
          *(v13 + 88) = v73;
          *(v13 + 96) = v64;
          *(v13 + 104) = 0;
          if (v65)
          {
            operator delete(v65);
          }
        }

        else
        {
          *v63 = v12;
          v64 = v63 + 8;
        }

        *(v13 + 96) = v64;
        v74 = *(v46 + 8);
        *(a1 + 576) = *(a1 + 576) + 1.0;
        v187 = v74;
        if (v5 == v74)
        {
LABEL_224:
          v9 = v190;
          v7 = (v189 + 12);
          v189 = v7;
          if (v7 == v190)
          {
            goto LABEL_240;
          }

          goto LABEL_225;
        }
      }

      else
      {
        *(a1 + 576) = *(a1 + 576) + 1.0;
        v187 = v60;
        if (v5 == v60)
        {
          goto LABEL_224;
        }
      }

      v75 = *(a1 + 128);
      v76 = *(a1 + 136);
      if (v76 != v75)
      {
        v77 = *(a1 + 152);
        v78 = *v75;
LABEL_116:
        v85 = v77;
        goto LABEL_130;
      }

      v80 = 1 - ((v76 - v75) >> 3);
      v81 = *(a1 + 144);
      if (v80 > (v81 - v76) >> 3)
      {
        v82 = v81 - v75;
        v83 = v82 >> 2;
        if ((v82 >> 2) <= 1)
        {
          v83 = 1;
        }

        v175 = v82 >= 0x7FFFFFFFFFFFFFF8;
        v84 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v175)
        {
          v84 = v83;
        }

        if (!(v84 >> 61))
        {
          operator new();
        }

        goto LABEL_268;
      }

      bzero(*(a1 + 136), 8 * v80);
      v86 = &v76[2 * v80];
      *(a1 + 136) = v86;
      v75 = *(a1 + 128);
      v77 = *(a1 + 152);
      v78 = *v75;
      if (v75 != v86)
      {
        goto LABEL_116;
      }

      v79 = *(a1 + 144);
      if (v79 == v86)
      {
        v87 = 1;
        v88 = v79 - v75;
        if ((v88 >> 2) > 1)
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

          goto LABEL_268;
        }

        *&dword_0 = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 8;
        *(a1 + 144) = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        *v86 = 0;
        *(a1 + 136) = v86 + 2;
      }

      v75 = *(a1 + 128);
      v85 = *(a1 + 152);
LABEL_130:
      sub_AE55B4((a1 + 128), 0, (v77 + (v78 << 6)), (v85 + (v75[1] << 6)));
      v90 = v186 + *(a1 + 120) * (v5 + 1);
      v91 = *(a1 + 128);
      v92 = *(a1 + 136);
      if (v90 >= (v92 - v91) >> 3)
      {
        goto LABEL_176;
      }

      v93 = v91[2 * v90];
      v94 = v91[2 * v90 + 1];
      v95 = v94 - v93;
      if (v94 == v93)
      {
        goto LABEL_176;
      }

      v96 = 0;
      v97 = 0;
LABEL_133:
      while (2)
      {
        v98 = v96;
        v99 = *(a1 + 128);
        if (v90 >= (*(a1 + 136) - v99) >> 3 || (v100 = v99[2 * v90], v99[2 * v90 + 1] - v100 <= v97))
        {
          v180 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v180, "key does not exist and cannot be added");
          goto LABEL_267;
        }

        v101 = v100 + v97;
        v102 = *(a1 + 152);
        if (v101 >= (*(a1 + 160) - v102) >> 6)
        {
          v180 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v180, "index out of range");
LABEL_267:
        }

        v103 = (v102 + (v101 << 6));
        v104 = *v103;
        v105 = v103[1];
        v106 = v103[3];
        v197 = v103[2];
        v198 = v106;
        v195 = v104;
        v196 = v105;
        v108 = *v99;
        v107 = v99[1];
        if (v107 != v108)
        {
          v109 = 0;
          v112 = v102 + (v107 << 6);
          v113 = v198;
          v114 = v102 + (v108 << 6);
          while (1)
          {
            v115 = *(v114 + 28);
            if (v115 != 0x7FFFFFFF)
            {
              if (v115 >= SHIDWORD(v196) && *(v114 + 32) <= v197)
              {
                v116 = *(v114 + 36);
                if (v116 <= DWORD1(v197) && (v116 != DWORD1(v197) || v115 != HIDWORD(v196) || *(v114 + 44) - 10 * v115 <= HIDWORD(v197) - 10 * HIDWORD(v196)) && (*(v114 + 48) & ~v198) == 0)
                {
                  v111 = v109 << 8;
                  v96 = v98 | (v109 << 8);
                  if (++v97 == v95)
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_133;
                }
              }

              if (SHIDWORD(v196) >= v115 && v197 <= *(v114 + 32))
              {
                v117 = *(v114 + 36);
                if (DWORD1(v197) <= v117 && (DWORD1(v197) != v117 || HIDWORD(v196) != v115 || HIDWORD(v197) - 10 * HIDWORD(v196) <= *(v114 + 44) - 10 * v115) && (v113 & ~*(v114 + 48)) == 0)
                {
                  *(v114 + 28) = 0x7FFFFFFF;
                  v109 = 1;
                }
              }
            }

            v114 += 64;
            if (v114 == v112)
            {
              goto LABEL_138;
            }
          }
        }

        v109 = 0;
LABEL_138:
        v110 = sub_AF9E48((a1 + 128), 0, &v195);
        *(v110 + 52) = -1;
        *(v110 + 60) = 0x7FFFFFFF;
        v111 = v109 << 8;
        v96 = v98 | 1 | (v109 << 8);
        if (++v97 != v95)
        {
          continue;
        }

        break;
      }

LABEL_159:
      v118 = v111 | v98;
      v91 = *(a1 + 128);
      v92 = *(a1 + 136);
      if ((v118 & 0x100) != 0)
      {
        if (v92 != v91)
        {
          v119 = *(a1 + 152);
          v120 = *v91;
LABEL_162:
          v121 = v119 + (v120 << 6);
          v122 = v119 + (v91[1] << 6);
          if (v121 != v122)
          {
            goto LABEL_169;
          }

          goto LABEL_163;
        }

        sub_30B70(a1 + 128, 1uLL);
        v91 = *(a1 + 128);
        v119 = *(a1 + 152);
        v120 = *v91;
        if (*(a1 + 136) != v91)
        {
          goto LABEL_162;
        }

        sub_30B70(a1 + 128, 1uLL);
        v91 = *(a1 + 128);
        v121 = v119 + (v120 << 6);
        v122 = *(a1 + 152) + (v91[1] << 6);
        if (v121 == v122)
        {
LABEL_163:
          v121 = v122;
          if (*(a1 + 136) != v91)
          {
            goto LABEL_175;
          }

          goto LABEL_164;
        }

LABEL_169:
        while (*(v121 + 28) != 0x7FFFFFFF)
        {
          v121 += 64;
          if (v121 == v122)
          {
            v121 = v122;
            break;
          }
        }

        if (v122 == v121 || (v123 = v121 + 64, v121 + 64 == v122))
        {
          if (*(a1 + 136) != v91)
          {
            goto LABEL_175;
          }

LABEL_164:
          sub_30B70(a1 + 128, 1uLL);
          v91 = *(a1 + 128);
          goto LABEL_175;
        }

        do
        {
          if (*(v123 + 28) != 0x7FFFFFFF)
          {
            v127 = *v123;
            v128 = *(v123 + 16);
            v129 = *(v123 + 48);
            *(v121 + 32) = *(v123 + 32);
            *(v121 + 48) = v129;
            *v121 = v127;
            *(v121 + 16) = v128;
            v121 += 64;
          }

          v123 += 64;
        }

        while (v123 != v122);
        v91 = *(a1 + 128);
        if (*(a1 + 136) == v91)
        {
          goto LABEL_164;
        }

LABEL_175:
        sub_AE55B4((a1 + 128), 0, v121, (*(a1 + 152) + (v91[1] << 6)));
        v91 = *(a1 + 128);
        v92 = *(a1 + 136);
      }

LABEL_176:
      if (v92 != v91)
      {
        v124 = *(a1 + 152);
        v125 = *v91;
LABEL_190:
        v135 = v124;
        goto LABEL_204;
      }

      v130 = 1 - ((v92 - v91) >> 3);
      v131 = *(a1 + 144);
      if (v130 > (v131 - v92) >> 3)
      {
        v132 = v131 - v91;
        v133 = v132 >> 2;
        if ((v132 >> 2) <= 1)
        {
          v133 = 1;
        }

        v175 = v132 >= 0x7FFFFFFFFFFFFFF8;
        v134 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v175)
        {
          v134 = v133;
        }

        if (!(v134 >> 61))
        {
          operator new();
        }

        goto LABEL_268;
      }

      bzero(v92, 8 * v130);
      v136 = &v92[2 * v130];
      *(a1 + 136) = v136;
      v91 = *(a1 + 128);
      v124 = *(a1 + 152);
      v125 = *v91;
      if (v91 != v136)
      {
        goto LABEL_190;
      }

      v126 = *(a1 + 144);
      if (v126 == v136)
      {
        v137 = 1;
        v138 = v126 - v91;
        if ((v138 >> 2) > 1)
        {
          v137 = v138 >> 2;
        }

        if (v138 >= 0x7FFFFFFFFFFFFFF8)
        {
          v139 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v139 = v137;
        }

        if (v139)
        {
          if (!(v139 >> 61))
          {
            operator new();
          }

          goto LABEL_268;
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
        *v136 = 0;
        *(a1 + 136) = v136 + 2;
      }

      v91 = *(a1 + 128);
      v135 = *(a1 + 152);
LABEL_204:
      v140 = (v124 + (v125 << 6));
      v141 = (v135 + (v91[1] << 6));
      if (v140 != v141)
      {
        v142 = v189;
        do
        {
          v143 = v140[7];
          v144 = v140[8];
          v140[3] = v143;
          v145 = *(v142 + 2);
          v146 = v145 / -10;
          v147 = v145 / 10;
          v148 = v145 % 10;
          if (v145 < 0)
          {
            v149 = -5;
          }

          else
          {
            v149 = 5;
          }

          v150 = (v149 + v148);
          *v140 = v5;
          v140[4] = -1;
          v140[7] = v146 + v143 + (((-103 * v150) >> 15) & 1) + ((-103 * v150) >> 10);
          v140[8] = v144 + v147 + (((103 * v150) >> 15) & 1) + ((103 * v150) >> 10);
          v140 += 16;
        }

        while (v140 != v141);
      }

      v151 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v152 = v151 + v151 * *(a1 + 376) + 1;
        v153 = v187;
        v154 = *(a1 + 48);
        if (!v154)
        {
          goto LABEL_218;
        }
      }

      else
      {
        v152 = -1;
        v153 = v187;
        v154 = *(a1 + 48);
        if (!v154)
        {
LABEL_218:
          v158 = 0x80000000;
          goto LABEL_220;
        }
      }

      if (*v154 > v153)
      {
        v155 = 0;
        v156 = *(a1 + 124) + v184;
        v157 = v156;
        while (v155 <= v156)
        {
          v158 = *sub_A9C7DC(v154 + 2, v154[1] * v153 + v157);
          v155 += 2;
          v157 -= 2;
          if (v158 != 0x7FFFFFFF)
          {
            goto LABEL_220;
          }
        }
      }

      v158 = 0x7FFFFFFF;
LABEL_220:
      v159 = v187 + 1;
      if ((sub_B03E50((a1 + 128), 0, v185 + v151 * v159, v151 * v159 + 1, v152, v158) & 1) == 0)
      {
        goto LABEL_224;
      }

      if (*(a1 + 264) <= v153)
      {
        sub_4D9168(a1 + 256, v159, 0);
      }

      v160 = v153 >> 6;
      v161 = 1 << v153;
      if ((*(*(a1 + 256) + 8 * v160) & v161) != 0)
      {
        goto LABEL_224;
      }

      v163 = *(a1 + 288);
      v162 = *(a1 + 296);
      if (v163 >= v162)
      {
        v165 = *(a1 + 280);
        v166 = v163 - v165;
        v167 = (v163 - v165) >> 2;
        v168 = v167 + 1;
        if ((v167 + 1) >> 62)
        {
          sub_1794();
        }

        v169 = v162 - v165;
        if (v169 >> 1 > v168)
        {
          v168 = v169 >> 1;
        }

        if (v169 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v170 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v170 = v168;
        }

        if (v170)
        {
          if (!(v170 >> 62))
          {
            operator new();
          }

          goto LABEL_268;
        }

        v171 = (v163 - v165) >> 2;
        v172 = (4 * v167);
        v173 = (4 * v167 - 4 * v171);
        *v172 = v187;
        v164 = v172 + 1;
        memcpy(v173, v165, v166);
        *(a1 + 280) = v173;
        *(a1 + 288) = v164;
        *(a1 + 296) = 0;
        if (v165)
        {
          operator delete(v165);
        }
      }

      else
      {
        *v163 = v187;
        v164 = v163 + 4;
      }

      *(a1 + 288) = v164;
      *(*(a1 + 256) + 8 * v160) |= v161;
      v9 = v190;
      v7 = (v189 + 12);
      v189 = v7;
      if (v7 == v190)
      {
LABEL_240:
        v7 = v191;
        v189 = v191;
        v10 = 1;
        v193 = 1;
        goto LABEL_241;
      }

LABEL_225:
      v10 = v193;
LABEL_241:
      v11 = v192;
      if (v10)
      {
        v174 = v192;
      }

      else
      {
        v174 = v9;
      }

      v175 = *(v188 + 16) != 1 || v7 >= v174;
      if (!v175)
      {
        while (1)
        {
          v176 = __ROR8__(*v7, 32);
          if (HIDWORD(v176) == 1 && (v176 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v188 + 4120)))
          {
            v7 = v189;
            v9 = v190;
            v10 = v193;
            break;
          }

          v9 = v190;
          v7 = (v189 + 12);
          v189 = v7;
          if (v7 == v190)
          {
            v7 = v191;
            v189 = v191;
            v10 = 1;
            v193 = 1;
            if (v191 >= v192)
            {
              break;
            }
          }

          else
          {
            v10 = v193;
            v178 = 16;
            if (v193)
            {
              v178 = 32;
            }

            if (v7 >= *(&v188 + v178))
            {
              break;
            }
          }
        }

        v11 = v192;
      }

      if (v10)
      {
        v9 = v11;
      }

      if (v7 >= v9)
      {
        goto LABEL_3;
      }
    }

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
        goto LABEL_53;
      }

      v20 = (v20 + v26) & v14;
      v27 = (v17 + 12 * v20);
      v23 = *v27;
      v22 = v27[1];
      ++v26;
    }

    while (v18 != v22 || v19 != v23);
    if (v25 != -1)
    {
      if (sub_A99094(*(a1 + 32), 1))
      {
        goto LABEL_31;
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = v20;
    if (sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

LABEL_264:
  result = sub_7EA60(v194) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

void sub_B02D2C(uint64_t a1)
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
      v75 = *(v166 + 5);
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

      v160 = *(v166 + 5);
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
        if (*(v80 + 4 * v47) < v75)
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
          if (*(v80 + 4 * v47) >= v162)
          {
            goto LABEL_135;
          }
        }

        else
        {
          *v103 = v47;
          *(a1 + 360) = v103 + 4;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) >= v75)
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

void sub_B03AA8(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      sub_AE5278((a1 + 128), 0);
      v4 = (v3 + *(a1 + 120) + *(a1 + 120) * *(a1 + 376) + 2);
      v5 = *(a1 + 128);
      if (v4 >= (*(a1 + 136) - v5) >> 3)
      {
        goto LABEL_35;
      }

      v7 = (v5 + 8 * v4);
      v6 = v7[1];
      v8 = v6 - *v7;
      if (v6 == *v7)
      {
        goto LABEL_35;
      }

      v9 = 0;
      v10 = 0;
LABEL_7:
      while (2)
      {
        v11 = v9;
        v12 = *(a1 + 128);
        if (v4 >= (*(a1 + 136) - v12) >> 3 || (v13 = v12[2 * v4], v12[2 * v4 + 1] - v13 <= v10))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "key does not exist and cannot be added");
          goto LABEL_47;
        }

        v14 = v13 + v10;
        v15 = *(a1 + 152);
        if (v14 >= (*(a1 + 160) - v15) >> 6)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "index out of range");
LABEL_47:
        }

        v16 = (v15 + (v14 << 6));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[3];
        v41 = v16[2];
        v42 = v19;
        v39 = v17;
        v40 = v18;
        v21 = *v12;
        v20 = v12[1];
        if (v20 != v21)
        {
          v22 = 0;
          v25 = v15 + (v20 << 6);
          v26 = v42;
          v27 = v15 + (v21 << 6);
          while (1)
          {
            v28 = *(v27 + 28);
            if (v28 != 0x7FFFFFFF)
            {
              if (v28 >= SHIDWORD(v40) && *(v27 + 32) <= v41)
              {
                v29 = *(v27 + 36);
                if (v29 <= DWORD1(v41) && (v29 != DWORD1(v41) || v28 != HIDWORD(v40) || *(v27 + 44) - 10 * v28 <= HIDWORD(v41) - 10 * HIDWORD(v40)) && (*(v27 + 48) & ~v42) == 0)
                {
                  v24 = v22 << 8;
                  v9 = v11 | (v22 << 8);
                  if (++v10 == v8)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_7;
                }
              }

              if (SHIDWORD(v40) >= v28 && v41 <= *(v27 + 32))
              {
                v30 = *(v27 + 36);
                if (DWORD1(v41) <= v30 && (DWORD1(v41) != v30 || HIDWORD(v40) != v28 || HIDWORD(v41) - 10 * HIDWORD(v40) <= *(v27 + 44) - 10 * v28) && (v26 & ~*(v27 + 48)) == 0)
                {
                  *(v27 + 28) = 0x7FFFFFFF;
                  v22 = 1;
                }
              }
            }

            v27 += 64;
            if (v27 == v25)
            {
              goto LABEL_12;
            }
          }
        }

        v22 = 0;
LABEL_12:
        v23 = sub_AF9E48((a1 + 128), 0, &v39);
        *(v23 + 52) = -1;
        *(v23 + 60) = 0x7FFFFFFF;
        v24 = v22 << 8;
        v9 = v11 | 1 | (v22 << 8);
        if (++v10 != v8)
        {
          continue;
        }

        break;
      }

LABEL_33:
      if (((v24 | v11) & 0x100) != 0)
      {
        sub_AE5FB0((a1 + 128), 0);
      }

LABEL_35:
      v31 = *(a1 + 128);
      if (*(a1 + 136) != v31)
      {
        break;
      }

      sub_30B70(a1 + 128, 1uLL);
      v31 = *(a1 + 128);
      v32 = *(a1 + 152);
      v33 = *v31;
      if (*(a1 + 136) != v31)
      {
        goto LABEL_37;
      }

      sub_30B70(a1 + 128, 1uLL);
      v34 = v32 + (v33 << 6);
      v35 = *(a1 + 152) + (*(*(a1 + 128) + 4) << 6);
      if (v34 != v35)
      {
LABEL_41:
        v36 = *(a1 + 544);
        v37 = *(a1 + 536);
        do
        {
          v36 = v36 + 1.0;
          v37 += *(v34 + 28);
          v34 += 64;
        }

        while (v34 != v35);
        *(a1 + 544) = v36;
        *(a1 + 536) = v37;
      }

LABEL_3:
      if (++v3 == v1)
      {
        return;
      }
    }

    v32 = *(a1 + 152);
    v33 = *v31;
LABEL_37:
    v34 = v32 + (v33 << 6);
    v35 = v32 + (v31[1] << 6);
    if (v34 != v35)
    {
      goto LABEL_41;
    }

    goto LABEL_3;
  }
}

uint64_t sub_B03E50(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
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
      sub_AFA5A0(a1, a2, v12++);
    }

    while (v9 != v12);
LABEL_6:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if (a5 == 0xFFFFFFFFLL)
  {
    v13 = 0;
    v17 = 0;
    do
    {
      v18 = sub_AFA5A0(a1, a2, v17);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[1];
      v34 = *v18;
      v35 = v21;
      v36 = v19;
      v37 = v20;
      if (SHIDWORD(v21) >= a6)
      {
        v22 = sub_B040A0(a1, &v34, a4, 0, 1);
        if (v22)
        {
          sub_B040A0(a1, &v34, a3, 1, 1);
          *(v23 + 52) = -1;
          *(v23 + 60) = 0x7FFFFFFF;
        }

        v13 = v22 | v13 | (v22 | v13) & 0xFF00;
      }

      ++v17;
    }

    while (v9 != v17);
  }

  else
  {
    v13 = 0;
    v24 = 0;
    do
    {
      v27 = sub_AFA5A0(a1, a2, v24);
      v28 = v27[2];
      v29 = v27[3];
      v30 = v27[1];
      v34 = *v27;
      v35 = v30;
      v36 = v28;
      v37 = v29;
      if (SHIDWORD(v30) >= a6)
      {
        if (sub_B04270(a1, &v34, a5))
        {
          v25 = 0;
          LOWORD(v26) = 0;
        }

        else
        {
          v31 = sub_B040A0(a1, &v34, a4, 0, 1);
          v25 = v31;
          v26 = v31 >> 8;
          if (v31)
          {
            sub_B040A0(a1, &v34, a3, 1, 1);
            *(v32 + 52) = -1;
            *(v32 + 60) = 0x7FFFFFFF;
          }
        }

        v13 = v25 | v13 | v13 & 0xFF00 | (v26 << 8);
      }

      ++v24;
    }

    while (v9 != v24);
  }

  if ((v13 & 0x100) != 0)
  {
    sub_AE5FB0(a1, a3);
    sub_AE5FB0(a1, a4);
  }

  return v13 & 1;
}

unint64_t sub_B040A0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
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
      v17 = v16 + (v10 << 6);
      v18 = v16 + (v11 << 6);
      v19 = *(a2 + 48);
      while (1)
      {
        v20 = *(v18 + 28);
        if (v20 != 0x7FFFFFFF)
        {
          v21 = *(a2 + 28);
          if (v20 >= v21 && *(v18 + 32) <= *(a2 + 32))
          {
            v22 = *(a2 + 36);
            v23 = *(v18 + 36);
            if (v23 <= v22 && (v23 != v22 || v20 != v21 || *(v18 + 44) - 10 * v20 <= *(a2 + 44) - 10 * v21) && (*(v18 + 48) & ~*(a2 + 48)) == 0)
            {
              return v12 << 8;
            }
          }

          if (v21 >= v20 && *(a2 + 32) <= *(v18 + 32))
          {
            v24 = *(v18 + 36);
            v25 = *(a2 + 36);
            if (v25 <= v24 && (v25 != v24 || v21 != v20 || *(a2 + 44) - 10 * v21 <= *(v18 + 44) - 10 * v20) && (v19 & ~*(v18 + 48)) == 0)
            {
              *(v18 + 28) = 0x7FFFFFFF;
              v12 = 1;
            }
          }
        }

        v18 += 64;
        if (v18 == v17)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v12 = 0;
LABEL_4:
  v13 = sub_AF9E48(a1, a3, a2);
  if (a5)
  {
    *(v13 + 52) = -1;
    *(v13 + 60) = 0x7FFFFFFF;
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

uint64_t sub_B04270(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v5 = *a1;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  if (v7 <= a3)
  {
    v8 = a3 + 1;
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
      v9 = a1;
      v10 = a3;
      sub_30B70(a1, v8 - v7);
      a3 = v10;
      a1 = v9;
      v5 = *v9;
      v6 = v9[1];
    }
  }

  v11 = a1[3];
  v12 = *(v5 + 8 * v4);
  v13 = (v6 - v5) >> 3;
  if (v13 <= v4)
  {
    v16 = a3 + 1;
    if (v16 > v13)
    {
      v17 = a1;
      sub_30B70(a1, v16 - v13);
      v14 = v11 + (v12 << 6);
      v15 = v17[3] + (*(*v17 + 8 * v4 + 4) << 6);
      if (v14 != v15)
      {
        goto LABEL_12;
      }

      return 0;
    }

    if (v16 < v13)
    {
      a1[1] = v5 + 8 * v16;
    }
  }

  v14 = v11 + (v12 << 6);
  v15 = v11 + (*(v5 + 8 * v4 + 4) << 6);
  if (v14 == v15)
  {
    return 0;
  }

LABEL_12:
  v19 = *(a2 + 28);
  v20 = *(a2 + 36);
  while (1)
  {
    v21 = *(v14 + 28);
    if (v21 != 0x7FFFFFFF && v21 >= v19 && *(v14 + 32) <= *(a2 + 32))
    {
      v23 = *(v14 + 36);
      if (v23 <= v20 && (v23 != v20 || v21 != v19 || *(v14 + 44) - 10 * v21 <= *(a2 + 44) - 10 * v19) && (*(v14 + 48) & ~*(a2 + 48)) == 0)
      {
        break;
      }
    }

    v14 += 64;
    if (v14 == v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_B04408(uint64_t a1, int a2, unsigned int a3)
{
  v5 = a1;
  v256[0] = a3;
  *(a1 + 560) = *(a1 + 560) + 1.0;
  v6 = a3;
  v225 = *sub_A9C5E0((*(a1 + 40) + 88), a3);
  v7 = v5[38];
  v8 = (v5[39] - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        v5[39] = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC((v5 + 38), v9 - v8);
    }

    sub_4D9168((v5 + 41), a3 + 1, 0);
  }

  v10 = v5[41];
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38((v5 + 44), v256);
    v6 = v256[0];
  }

  v217 = *(v5[38] + 4 * v6);
  result = sub_A9D53C(&v254, v5[3], v225);
  v13 = v254;
  if (v254 < v255)
  {
    v220 = v5;
    v215 = ~a2;
    v216 = a2 + 2;
    v218 = a2 + 1;
    v14 = 0xFF51AFD7ED558CCDLL;
    while (1)
    {
      *(v5 + 71) = *(v5 + 71) + 1.0;
      v219 = *v13;
      sub_AE5278(v5 + 16, 0);
      result = sub_A79708(&v242, v5[3], v225, v217, 0, 1);
      v15 = v246;
      v16 = v246 < v245 || v246 >= v247;
      if (!v16)
      {
        break;
      }

LABEL_11:
      v13 = v254 + 4;
      v254 = v13;
      if (v13 >= v255)
      {
        return result;
      }
    }

    while (1)
    {
      v17 = __ROR8__(*v15, 32);
      v18 = v5[4];
      v19 = *(v18 + 56) - 1;
      v20 = 0xC4CEB9FE1A85EC53 * (((v17 ^ (v17 >> 33)) * v14) ^ (((v17 ^ (v17 >> 33)) * v14) >> 33));
      v21 = v20 ^ (v20 >> 33);
      v22 = *(v18 + 80);
      v24 = *(v18 + 64);
      v23 = *(v18 + 68);
      v25 = v21 & v19;
      v26 = (v22 + 12 * (v21 & v19));
      v28 = *v26;
      v27 = v26[1];
      if (v23 == v27 && v24 == v28)
      {
        goto LABEL_66;
      }

      if (*(v18 + 40))
      {
        break;
      }

      v48 = 1;
      while (__PAIR64__(v27, v28) != v17)
      {
        v25 = (v25 + v48) & v19;
        v49 = (v22 + 12 * v25);
        v28 = *v49;
        v27 = v49[1];
        ++v48;
        if (v23 == v27 && v24 == v28)
        {
          goto LABEL_66;
        }
      }

LABEL_56:
      if (v25 != -1)
      {
        v51 = v22 + 12 * v25;
        v52 = *(v51 + 8);
        if (v52 != -1)
        {
          goto LABEL_58;
        }

        goto LABEL_104;
      }

      v30 = -1;
      if (sub_A99094(v5[4], 1))
      {
LABEL_34:
        v34 = *(v18 + 56) - 1;
        v35 = *(v18 + 80);
        v37 = *(v18 + 64);
        v36 = *(v18 + 68);
        v38 = v34 & v21;
        v39 = (v35 + 12 * (v34 & v21));
        v41 = *v39;
        v40 = v39[1];
        v42 = *(v18 + 40);
        if (v36 == v40 && v37 == v41)
        {
          goto LABEL_94;
        }

        if (v42)
        {
          v44 = -1;
          v45 = 1;
          do
          {
            if (*(v18 + 36) == v40 && *(v18 + 32) == v41)
            {
              if (v44 == -1)
              {
                v44 = v38;
              }
            }

            else if (__PAIR64__(v40, v41) == v17)
            {
              goto LABEL_88;
            }

            v38 = (v38 + v45) & v34;
            v46 = (v35 + 12 * v38);
            v41 = *v46;
            v40 = v46[1];
            ++v45;
          }

          while (v36 != v40 || v37 != v41);
          if (v44 == -1)
          {
LABEL_94:
            v44 = v38;
          }

          v75 = *(v18 + 48);
          if ((v75 - v42) >= 0x1555555555555555)
          {
            goto LABEL_307;
          }
        }

        else
        {
          v72 = 1;
          while (__PAIR64__(v40, v41) != v17)
          {
            v38 = (v38 + v72) & v34;
            v73 = (v35 + 12 * v38);
            v41 = *v73;
            v40 = v73[1];
            ++v72;
            if (v36 == v40 && v37 == v41)
            {
              v42 = 0;
              goto LABEL_94;
            }
          }

LABEL_88:
          if (v38 != -1)
          {
            v51 = v35 + 12 * v38;
            v52 = *(v51 + 8);
            if (v52 != -1)
            {
              goto LABEL_58;
            }

            goto LABEL_104;
          }

          v44 = -1;
          v75 = *(v18 + 48);
          if ((v75 - v42) >= 0x1555555555555555)
          {
LABEL_307:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v42 && ((v76 = (v35 + 12 * v44), *(v18 + 36) == v76[1]) ? (v77 = *(v18 + 32) == *v76) : (v77 = 0), v77))
        {
          *(v18 + 40) = v42 - 1;
          v71 = 3 * v44;
        }

        else
        {
          *(v18 + 48) = v75 + 1;
          v71 = 3 * v44;
        }

        goto LABEL_103;
      }

LABEL_67:
      v68 = *(v18 + 40);
      v67 = *(v18 + 48);
      if ((v67 - v68) >= 0x1555555555555555)
      {
        goto LABEL_307;
      }

      v35 = *(v18 + 80);
      if (v68 && ((v69 = (v35 + 12 * v30), *(v18 + 36) == v69[1]) ? (v70 = *(v18 + 32) == *v69) : (v70 = 0), v70))
      {
        *(v18 + 40) = v68 - 1;
      }

      else
      {
        *(v18 + 48) = v67 + 1;
      }

      v71 = 3 * v30;
LABEL_103:
      v78 = 4 * v71;
      v79 = v35 + v78;
      *v79 = v17;
      *(v79 + 8) = -1;
      v51 = *(v18 + 80) + v78;
      v52 = *(v51 + 8);
      if (v52 != -1)
      {
LABEL_58:
        v241 = v52;
        result = sub_C435EC(v5 + 48, v52, v17);
        if ((result & 1) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_59;
      }

LABEL_104:
      v80 = *(v18 + 112);
      *(v18 + 112) = v80 + 1;
      *(v51 + 8) = v80;
      v82 = *(v18 + 96);
      v81 = *(v18 + 104);
      if (v82 >= v81)
      {
        v84 = *(v18 + 88);
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

LABEL_308:
          sub_1808();
        }

        v90 = v86;
        v91 = (8 * v86);
        v92 = &v91[-v90];
        *v91 = v17;
        v83 = v91 + 1;
        memcpy(v92, v84, v85);
        *(v18 + 88) = v92;
        *(v18 + 96) = v83;
        *(v18 + 104) = 0;
        if (v84)
        {
          operator delete(v84);
        }
      }

      else
      {
        *v82 = v17;
        v83 = v82 + 1;
      }

      *(v18 + 96) = v83;
      v241 = *(v51 + 8);
      result = sub_C435EC(v5 + 48, v241, v17);
      if ((result & 1) == 0)
      {
LABEL_118:
        if (*(v5 + 21))
        {
          goto LABEL_200;
        }

        v93 = v5[16];
        v94 = v5[17];
        if (v94 != v93)
        {
          v95 = v5[19];
          v96 = *v93;
          goto LABEL_130;
        }

        v98 = 1 - ((v94 - v93) >> 3);
        v99 = v5[18];
        if (v98 > (v99 - v94) >> 3)
        {
          v100 = v99 - v93;
          v101 = v100 >> 2;
          if ((v100 >> 2) <= 1)
          {
            v101 = 1;
          }

          v16 = v100 >= 0x7FFFFFFFFFFFFFF8;
          v102 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v16)
          {
            v102 = v101;
          }

          if (!(v102 >> 61))
          {
            operator new();
          }

          goto LABEL_308;
        }

        bzero(v5[17], 8 * v98);
        v104 = &v94[2 * v98];
        v5[17] = v104;
        v93 = v5[16];
        v95 = v5[19];
        v96 = *v93;
        if (v93 == v104)
        {
          v97 = v5[18];
          if (v97 == v104)
          {
            v105 = 1;
            v106 = v97 - v93;
            if ((v106 >> 2) > 1)
            {
              v105 = v106 >> 2;
            }

            if (v106 >= 0x7FFFFFFFFFFFFFF8)
            {
              v107 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v107 = v105;
            }

            if (v107)
            {
              if (!(v107 >> 61))
              {
                operator new();
              }

              goto LABEL_308;
            }

            *&dword_0 = 0;
            v5[16] = 0;
            v5[17] = 8;
            v5[18] = 0;
            if (v93)
            {
              operator delete(v93);
            }
          }

          else
          {
            *v104 = 0;
            v5[17] = (v104 + 2);
          }

          v93 = v5[16];
          v103 = v5[19];
        }

        else
        {
LABEL_130:
          v103 = v95;
        }

        result = sub_AE55B4(v5 + 16, 0, (v95 + (v96 << 6)), (v103 + (v93[1] << 6)));
        goto LABEL_200;
      }

LABEL_59:
      v53 = v5[16];
      if (v5[17] != v53)
      {
        v55 = *v53;
        v54 = *(v5[16] + 4);
        if (v54 != v55)
        {
          v56 = v5[19];
          v57 = (v56 + (v54 << 6));
          v58 = (v56 + (v55 << 6));
          v59 = v251;
          v60 = v249;
          v61 = v246;
          v62 = v244;
          v63 = (v246 - v245) >> 4;
          do
          {
            v66 = (v60 + 12 * v58[13]);
            if (v59)
            {
              v252 = v58[14];
              v64 = v58[15];
              v253 = v64;
            }

            else
            {
              v64 = *v66;
            }

            v65 = (v62 + *(v62 - *v62 + 6));
            v58[7] = *(&v65[2 * (v66[1] + v63) + 2] + *v65) + v64 - *(v61 + 2);
            v58 += 16;
          }

          while (v58 != v57);
          v250 = v66;
          sub_B058A4(v5 + 128, 0);
          if ((*(v246 + 15) & 2) == 0 || v248 && (*(v248 + 4 * ((v246 - v245) >> 4)) & v219) != 0)
          {
            goto LABEL_161;
          }

          v108 = *(v5 + 30);
          if (*(v5 + 20) == 1)
          {
            v109 = v108 + v108 * *(v5 + 94);
            v110 = v241;
            v111 = v5[6];
            if (v111)
            {
              goto LABEL_145;
            }

LABEL_155:
            v115 = 0x80000000;
          }

          else
          {
            v109 = -1;
            v110 = v241;
            v111 = v5[6];
            if (!v111)
            {
              goto LABEL_155;
            }

LABEL_145:
            if (*v111 > v110)
            {
              v112 = 0;
              v113 = *(v5 + 31) + v215;
              v114 = v113;
              while (v112 <= v113)
              {
                v115 = *sub_A9C7DC(v111 + 2, v111[1] * v110 + v114);
                v112 += 2;
                v114 -= 2;
                if (v115 != 0x7FFFFFFF)
                {
                  goto LABEL_157;
                }
              }
            }

            v115 = 0x7FFFFFFF;
          }

LABEL_157:
          if (!sub_B05B3C(v5 + 16, 0, v216 + v108 + v108 * v110, v108 + v108 * v110, v109, v115))
          {
            goto LABEL_161;
          }

          v116 = v241;
          if (v5[27] <= v241)
          {
            sub_4D9168((v5 + 26), v241 + 1, 0);
            v116 = v241;
          }

          if ((*(v5[26] + ((v116 >> 3) & 0x1FFFFFF8)) >> v116))
          {
LABEL_161:
            v117 = v5[16];
            v118 = v5[17];
            v119 = v118 - v117;
            if (v118 != v117)
            {
              goto LABEL_162;
            }

LABEL_178:
            v128 = 1 - (v119 >> 3);
            v129 = v5[18];
            if (v128 > (v129 - v118) >> 3)
            {
              v130 = v129 - v117;
              v131 = v130 >> 2;
              if ((v130 >> 2) <= 1)
              {
                v131 = 1;
              }

              v16 = v130 >= 0x7FFFFFFFFFFFFFF8;
              v132 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v16)
              {
                v132 = v131;
              }

              if (!(v132 >> 61))
              {
                operator new();
              }

              goto LABEL_308;
            }

            bzero(v118, 8 * v128);
            v118 += 2 * v128;
            v5[17] = v118;
            v117 = v5[16];
            v120 = v5[19];
            v121 = *v117;
            if (v117 != v118)
            {
              goto LABEL_185;
            }

LABEL_163:
            v122 = v5[18];
            if (v122 == v118)
            {
              v123 = 1;
              v124 = v122 - v117;
              if ((v124 >> 2) > 1)
              {
                v123 = v124 >> 2;
              }

              if (v124 >= 0x7FFFFFFFFFFFFFF8)
              {
                v125 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v125 = v123;
              }

              if (v125)
              {
                if (!(v125 >> 61))
                {
                  operator new();
                }

                goto LABEL_308;
              }

              *&dword_0 = 0;
              v5[16] = 0;
              v5[17] = 8;
              v5[18] = 0;
              if (v117)
              {
                operator delete(v117);
              }
            }

            else
            {
              *v118 = 0;
              v5[17] = (v118 + 2);
            }

            v126 = (v120 + (v121 << 6));
            v127 = v5[19] + (*(v5[16] + 4) << 6);
            if (v126 == v127)
            {
              goto LABEL_192;
            }
          }

          else
          {
            sub_DD38((v5 + 29), &v241);
            *(v5[26] + ((v241 >> 3) & 0x1FFFFFF8)) |= 1 << v241;
            v117 = v5[16];
            v118 = v5[17];
            v119 = v118 - v117;
            if (v118 == v117)
            {
              goto LABEL_178;
            }

LABEL_162:
            v120 = v5[19];
            v121 = *v117;
            if (v117 == v118)
            {
              goto LABEL_163;
            }

LABEL_185:
            v126 = (v120 + (v121 << 6));
            v127 = v120 + (v117[1] << 6);
            if (v126 == v127)
            {
LABEL_192:
              result = sub_B058A4(v5 + 128, 0);
              goto LABEL_193;
            }
          }

          v133 = v251;
          v134 = v249;
          v135 = v244;
          v136 = (v246 - v245) >> 4;
          do
          {
            v139 = (v134 + 12 * v126[13]);
            if (v133)
            {
              v252 = v126[14];
              v137 = v126[15];
              v253 = v137;
            }

            else
            {
              v137 = *v139;
            }

            v138 = (v135 + *(v135 - *v135 + 6));
            v126[7] = *(&v138[2 * (v139[1] + v136) + 1] + *v138) + v137;
            v126 += 16;
          }

          while (v126 != v127);
          v250 = v139;
          goto LABEL_192;
        }
      }

LABEL_193:
      if (*(v246 + 15))
      {
        if (v248)
        {
          if (*(v248 + 4 * ((v246 - v245) >> 4)) == v219)
          {
            goto LABEL_198;
          }
        }

        else if (!v219)
        {
LABEL_198:
          v140 = v218 + *(v5 + 30) + *(v5 + 30) * v241;
          v141 = v5[16];
          if (v140 >= (v5[17] - v141) >> 3)
          {
            goto LABEL_200;
          }

          v144 = (v141 + 8 * v140);
          v142 = *v144;
          v143 = v144[1];
          v145 = v143 - *v144;
          if (v143 == *v144)
          {
            goto LABEL_200;
          }

          v150 = 0;
          v221 = v143 - v142;
          v222 = v218 + *(v5 + 30) + *(v5 + 30) * v241;
          while (2)
          {
            v151 = v5[16];
            if (v140 >= (v5[17] - v151) >> 3 || (v153 = (v151 + 8 * v140), v152 = *v153, v153[1] - *v153 <= v150))
            {
              v213 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v213, "key does not exist and cannot be added");
              goto LABEL_306;
            }

            v154 = v152 + v150;
            v155 = v5[19];
            if (v154 >= (v5[20] - v155) >> 6)
            {
              v213 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v213, "index out of range");
LABEL_306:
            }

            v156 = v155 + (v154 << 6);
            if (v251 == 1)
            {
              result = sub_A84F48(v5[3], &v242, *(v156 + 28), 1u);
              if (result)
              {
                goto LABEL_228;
              }

              goto LABEL_220;
            }

            result = sub_A8552C(&v242, *(v156 + 28), 1);
            if (!result)
            {
              goto LABEL_220;
            }

LABEL_228:
            v157 = v14;
            v223 = *(v156 + 20);
            v158 = v5;
            v160 = *(v156 + 32);
            v159 = *(v156 + 36);
            v161 = *(v156 + 40);
            v224 = *(v156 + 44);
            v162 = *(v156 + 48);
            v239 = *(v156 + 49);
            v240 = *(v156 + 51);
            v163 = v158[3];
            v164 = sub_A57920((v163 + 4136), v225);
            v165 = v164;
            v166 = (v164 - *v164);
            if (*v166 >= 0xFu && (v167 = v166[7]) != 0)
            {
              v168 = *(v163 + 4136);
              v169 = sub_4FC268(*(v164 + v167));
              if ((sub_C9E594(v168 + 3896, v169) & 1) == 0)
              {
LABEL_231:
                v170 = (v165 - *v165);
                v145 = v221;
                if (*v170 >= 0xBu && (v171 = v170[5]) != 0)
                {
                  v172 = *(v165 + v171);
                }

                else
                {
                  v172 = 0;
                }

                v175 = sub_A882D4(v172);
LABEL_238:
                v176 = sub_A57920((v163 + 4136), v225);
                v177 = (v176 - *v176);
                if (*v177 < 0xFu)
                {
                  v179 = 3;
                  v14 = v157;
                }

                else
                {
                  v178 = v177[7];
                  v14 = v157;
                  if (v177[7])
                  {
                    v179 = 0;
                    v180 = *(v176 + v178);
                    if (v180 > 4)
                    {
                      v181 = v161;
                      v182 = v223;
                      result = v224;
                      if ((v180 - 5) >= 3)
                      {
                        if (v180 == 12 || v180 == 900)
                        {
                          goto LABEL_247;
                        }

                        v208 = ((5243 * (v180 >> 2)) >> 17) - 1;
                        if (v208 <= 0xB)
                        {
                          v179 = byte_22A8146[v208];
                          goto LABEL_247;
                        }
                      }

                      v179 = 3;
                      goto LABEL_247;
                    }

                    v181 = v161;
                    v182 = v223;
                    result = v224;
                    if (v180 >= 3)
                    {
                      if (v180 == 3)
                      {
                        v179 = 1;
                      }

                      else
                      {
                        v179 = 2;
                      }
                    }

LABEL_247:
                    v183 = (1 << v179) | v162;
                    v184 = v253;
                    v185 = 0xFFFFFFFF00000000;
                    if (v251)
                    {
                      v185 = v252 << 32;
                    }

                    v186 = (-1431655765 * ((v250 - v249) >> 2)) | v185;
                    if (!v251)
                    {
                      v184 = 0x7FFFFFFF;
                    }

                    v187 = (v244 + *(v244 - *v244 + 6));
                    v188 = v187 + *v187;
                    v189 = &v253;
                    if (!v251)
                    {
                      v189 = v250;
                    }

                    v190 = *v189;
                    v191 = &v188[8 * v250[1] + 8 * ((v246 - v245) >> 4)];
                    v192 = *(v191 + 1) + v190;
                    LODWORD(v191) = 10 * (*(v156 + 28) - v190 - *(v191 + 2));
                    LODWORD(v226) = (v246 - v245) >> 4;
                    *(&v226 + 4) = v186;
                    HIDWORD(v226) = v184;
                    v227 = v256[0];
                    v228 = v182;
                    v229 = v192;
                    v230 = v160;
                    v231 = v175 + v159;
                    v232 = v181;
                    v233 = result - (v191 & ~(v191 >> 31));
                    v234 = v183;
                    v235 = v239;
                    v236 = v240;
                    v237 = v186;
                    v238 = v184;
                    v5 = v220;
                    v193 = v220[16];
                    if (v220[17] == v193 || (v195 = *v193, v194 = *(v220[16] + 4), v194 == v195))
                    {
                      result = sub_AF9E48(v220 + 16, 0, &v226);
                      v140 = v222;
                      goto LABEL_220;
                    }

                    v196 = 0;
                    v197 = v220[19];
                    v198 = v197 + (v194 << 6);
                    v199 = v197 + (v195 << 6);
                    do
                    {
                      v200 = *(v199 + 28);
                      if (v200 != 0x7FFFFFFF)
                      {
                        if (v200 >= v229 && *(v199 + 32) <= v230)
                        {
                          v201 = *(v199 + 36);
                          if (v201 <= v231 && (v201 != v231 || v200 != v229 || *(v199 + 44) - 10 * v200 <= v233 - 10 * v229) && (*(v199 + 48) & ~v234) == 0)
                          {
                            goto LABEL_274;
                          }
                        }

                        if (v229 >= v200 && v230 <= *(v199 + 32))
                        {
                          v202 = *(v199 + 36);
                          if (v231 <= v202 && (v231 != v202 || v229 != v200 || v233 - 10 * v229 <= *(v199 + 44) - 10 * v200) && (v183 & ~*(v199 + 48)) == 0)
                          {
                            *(v199 + 28) = 0x7FFFFFFF;
                            v196 = 1;
                          }
                        }
                      }

                      v199 += 64;
                    }

                    while (v199 != v198);
                    result = sub_AF9E48(v220 + 16, 0, &v226);
LABEL_274:
                    v140 = v222;
                    if ((v196 & 1) == 0)
                    {
LABEL_220:
                      if (++v150 == v145)
                      {
                        goto LABEL_200;
                      }

                      continue;
                    }

                    v203 = v220[16];
                    if (v220[17] != v203)
                    {
                      v204 = v220[19];
                      v205 = *v203;
LABEL_277:
                      v206 = v204 + (v205 << 6);
                      v207 = v204 + (v203[1] << 6);
                      if (v206 != v207)
                      {
                        goto LABEL_288;
                      }

                      goto LABEL_278;
                    }

                    sub_30B70((v220 + 16), 1uLL);
                    v203 = v220[16];
                    v204 = v220[19];
                    v205 = *v203;
                    if (v220[17] != v203)
                    {
                      goto LABEL_277;
                    }

                    sub_30B70((v220 + 16), 1uLL);
                    v203 = v220[16];
                    v206 = v204 + (v205 << 6);
                    v207 = v220[19] + (v203[1] << 6);
                    if (v206 == v207)
                    {
LABEL_278:
                      v206 = v207;
                      if (v220[17] == v203)
                      {
                        goto LABEL_279;
                      }
                    }

                    else
                    {
LABEL_288:
                      while (*(v206 + 28) != 0x7FFFFFFF)
                      {
                        v206 += 64;
                        if (v206 == v207)
                        {
                          v206 = v207;
                          break;
                        }
                      }

                      if (v207 == v206 || (v209 = v206 + 64, v206 + 64 == v207))
                      {
                        if (v220[17] != v203)
                        {
                          goto LABEL_294;
                        }
                      }

                      else
                      {
                        do
                        {
                          if (*(v209 + 28) != 0x7FFFFFFF)
                          {
                            v210 = *v209;
                            v211 = *(v209 + 16);
                            v212 = *(v209 + 48);
                            *(v206 + 32) = *(v209 + 32);
                            *(v206 + 48) = v212;
                            *v206 = v210;
                            *(v206 + 16) = v211;
                            v206 += 64;
                          }

                          v209 += 64;
                        }

                        while (v209 != v207);
                        v203 = v220[16];
                        if (v220[17] != v203)
                        {
                          goto LABEL_294;
                        }
                      }

LABEL_279:
                      sub_30B70((v220 + 16), 1uLL);
                      v203 = v220[16];
                    }

LABEL_294:
                    result = sub_AE55B4(v220 + 16, 0, v206, (v220[19] + (v203[1] << 6)));
                    goto LABEL_220;
                  }

                  v179 = 3;
                }

                v181 = v161;
                v182 = v223;
                result = v224;
                goto LABEL_247;
              }
            }

            else
            {
              v173 = *(v163 + 4136);
              v174 = sub_4FC268(0x7FFF);
              if ((sub_C9E594(v173 + 3896, v174) & 1) == 0)
              {
                goto LABEL_231;
              }
            }

            break;
          }

          v175 = 128;
          v145 = v221;
          goto LABEL_238;
        }
      }

LABEL_200:
      v146 = v245;
      v15 = v246 - 2;
      v246 -= 2;
      if (*(v242 + 16) == 1 && (v243 & 1) == 0 && v15 >= v245 && v15 < v247)
      {
        do
        {
          v147 = __ROR8__(*v15, 32);
          if (HIDWORD(v147) == 1 && (v147 + 3) < 2)
          {
            break;
          }

          result = sub_2D5204(**(v242 + 4120));
          v146 = v245;
          v15 = v246;
          if (result)
          {
            break;
          }

          v15 = v246 - 2;
          v246 = v15;
        }

        while (v15 >= v245 && v15 < v247);
      }

      if (v15 < v146 || v15 >= v247)
      {
        goto LABEL_11;
      }
    }

    v30 = -1;
    v31 = 1;
    do
    {
      if (*(v18 + 36) == v27 && *(v18 + 32) == v28)
      {
        if (v30 == -1)
        {
          v30 = v25;
        }
      }

      else if (__PAIR64__(v27, v28) == v17)
      {
        goto LABEL_56;
      }

      v25 = (v25 + v31) & v19;
      v32 = (v22 + 12 * v25);
      v28 = *v32;
      v27 = v32[1];
      ++v31;
    }

    while (v23 != v27 || v24 != v28);
    if (v30 != -1)
    {
      if (sub_A99094(v5[4], 1))
      {
        goto LABEL_34;
      }

      goto LABEL_67;
    }

LABEL_66:
    v30 = v25;
    if (sub_A99094(v5[4], 1))
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  return result;
}

char *sub_B058A4(char *result, unsigned int a2)
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

        result = sub_AFA5A0(v2, v3, v6++);
        if (*(result + 7) != 0x7FFFFFFF && v6 < v4)
        {
          if (v3 >= (v2[1] - *v2) >> 3)
          {
LABEL_51:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "key does not exist and cannot be added");
          }

          else
          {
            v10 = (*v2 + 8 * v3);
            v11 = result[48];
            v12 = v6;
            while (1)
            {
              if (v10[1] - *v10 <= v12)
              {
                goto LABEL_51;
              }

              v13 = v12 + *v10;
              v14 = v2[3];
              if (v13 >= (v2[4] - v14) >> 6)
              {
                break;
              }

              v15 = v14 + (v13 << 6);
              v16 = *(v15 + 28);
              if (v16 != 0x7FFFFFFF)
              {
                v17 = *(result + 7);
                if (v17 >= v16 && *(result + 8) <= *(v15 + 32) && (v18 = *(v15 + 36), v19 = *(result + 9), v19 <= v18) && (v19 == v18 ? (v20 = v17 == v16) : (v20 = 0), v20 ? (v21 = *(result + 11) - 10 * v17 <= *(v15 + 44) - 10 * v16) : (v21 = 1), v21 && (v11 & ~*(v15 + 48)) == 0))
                {
                  *(v15 + 28) = 0x7FFFFFFF;
                  v5 = 1;
                }

                else if (v16 >= v17 && *(v15 + 32) <= *(result + 8))
                {
                  v22 = *(result + 9);
                  v23 = *(v15 + 36);
                  if (v23 <= v22)
                  {
                    v24 = v23 == v22 && v16 == v17;
                    v25 = !v24 || *(v15 + 44) - 10 * v16 <= *(result + 11) - 10 * v17;
                    if (v25 && (*(v15 + 48) & ~result[48]) == 0)
                    {
                      *(result + 7) = 0x7FFFFFFF;
                      v5 = 1;
                      goto LABEL_6;
                    }
                  }
                }
              }

              if (v8 == ++v12)
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

        return sub_AE5FB0(v2, v3);
      }
    }
  }

  return result;
}

uint64_t sub_B05B3C(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
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
      sub_AFA5A0(a1, a2, v12++);
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
      v21 = sub_AFA5A0(a1, a2, v18);
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[1];
      v34 = *v21;
      v35 = v24;
      v36 = v22;
      v37 = v23;
      if (SHIDWORD(v24) >= a6)
      {
        if (sub_B04270(a1, &v34, a4))
        {
          LOWORD(v19) = 0;
          LOBYTE(v20) = 0;
        }

        else
        {
          v20 = sub_B040A0(a1, &v34, a3, 1, 1);
          v19 = v20 >> 8;
          if (v20)
          {
            *(v25 + 52) = -1;
            *(v25 + 60) = 0x7FFFFFFF;
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
      v29 = sub_AFA5A0(a1, a2, v26);
      v30 = v29[2];
      v31 = v29[3];
      v32 = v29[1];
      v34 = *v29;
      v35 = v32;
      v36 = v30;
      v37 = v31;
      if (SHIDWORD(v32) >= a6)
      {
        if (sub_B04270(a1, &v34, a5) & 1) != 0 || (sub_B04270(a1, &v34, a4))
        {
          LOWORD(v27) = 0;
          LOBYTE(v28) = 0;
        }

        else
        {
          v28 = sub_B040A0(a1, &v34, a3, 1, 1);
          v27 = v28 >> 8;
          if (v28)
          {
            *(v33 + 52) = -1;
            *(v33 + 60) = 0x7FFFFFFF;
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
    sub_AE5FB0(a1, a3);
  }

  return v13 & 1;
}

uint64_t sub_B05D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = xmmword_229B660;
  *(a1 + 16) = 8;
  *(a1 + 20) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v6 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0u;
  *(a1 + 64) = 0;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  *(a1 + 68) = v7;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x100000004;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = -1;
  sub_C43044(a1 + 384, a2);
  v10 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 480, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_B05E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A95814((v17 + 256));
  sub_A95860(v15 + 304);
  sub_4D0584(v15 + 256);
  sub_4D0584(v18);
  sub_4CB154(v17);
  sub_1F1A8(v16);
  _Unwind_Resume(a1);
}

void sub_B05EE0(uint64_t a1)
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
  v8[0] = 0x1FFFFFFFDLL;
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

void sub_B06090(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_B060B4(uint64_t a1)
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
  sub_A99960(&v36, a1 + 88);
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

void sub_B064E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_B06584(uint64_t a1, int a2)
{
  v133 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v131[0] = *(a1 + 88);
  v131[1] = v3;
  v131[2] = *(a1 + 120);
  v132 = *(a1 + 136);
  LOBYTE(v131[0]) = 1;
  v130[0] = v131;
  v130[1] = a1;
  v130[2] = &v133;
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
  v134 = v13;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_56;
  }

  v15 = 10 * (v12 - v13);
  if (v15 >= *(a1 + 52))
  {
    v16 = sub_B0843C(v130, v12);
    LODWORD(v115) = v16;
    v13 = v134;
    if (v16 == 0x7FFFFFFF || v134 >= v16)
    {
LABEL_34:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_35;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_33:
      v13 = v115;
      v134 = v115;
      goto LABEL_34;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v20 = sub_258D4(v19);
    v21 = sub_4A5C(v20, " to ", 4);
    sub_258D4(v21);
    if ((v129 & 0x10) != 0)
    {
      v23 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v23 = v125;
      }

      v24 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v22 = 0;
        v118 = 0;
LABEL_28:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 2u);
        if (v118 < 0)
        {
          operator delete(__dst);
        }

        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v24 = v122;
      v23 = v123;
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

    v118 = v23 - *v24;
    if (v22)
    {
      memmove(&__dst, v25, v22);
    }

    goto LABEL_28;
  }

LABEL_35:
  if (v15 < *(a1 + 52))
  {
    goto LABEL_56;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_53;
  }

  sub_19594F8(&v119);
  sub_4A5C(&v119, "[", 1);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, "] Journey duration (", 20);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v129 & 0x10) != 0)
  {
    v29 = v128;
    if (v128 < v125)
    {
      v128 = v125;
      v29 = v125;
    }

    v30 = v124;
    v28 = v29 - v124;
    if (v29 - v124 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_132:
      sub_3244();
    }

LABEL_43:
    if (v28 >= 0x17)
    {
      operator new();
    }

    v116 = v28;
    if (v28)
    {
      memmove(&v115, v30, v28);
    }

    goto LABEL_48;
  }

  if ((v129 & 8) != 0)
  {
    v30 = v122[0];
    v28 = v123 - v122[0];
    if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_132;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v116 = 0;
LABEL_48:
  *(&v115 + v28) = 0;
  sub_7E854(&v115, 2u);
  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v127 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v121);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_53:
  v31 = *(a1 + 60);
  if (v31 > *(a1 + 56))
  {
LABEL_54:
    v112 = v12;
    goto LABEL_55;
  }

  v111 = v12;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v43 = v31 / 10;
      v44 = v31 % 10;
      goto LABEL_89;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v42 = std::ostream::operator<<();
    sub_4A5C(v42, "] Examining time shift of ", 26);
    v43 = v31 / 10;
    v44 = v31 % 10;
    v45 = std::ostream::operator<<();
    sub_4A5C(v45, " sec (exponential search)", 25);
    if ((v129 & 0x10) != 0)
    {
      v47 = v128;
      v48 = &v124;
      if (v128 < v125)
      {
        v128 = v125;
        v47 = v125;
        v48 = &v124;
      }

      goto LABEL_78;
    }

    if ((v129 & 8) != 0)
    {
      v47 = v123;
      v48 = v122;
LABEL_78:
      v49 = *v48;
      v46 = v47 - *v48;
      if (v46 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v46 >= 0x17)
      {
        operator new();
      }

      v116 = v47 - *v48;
      if (v46)
      {
        memmove(&v115, v49, v46);
      }

      goto LABEL_84;
    }

    v46 = 0;
    v116 = 0;
LABEL_84:
    *(&v115 + v46) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(v114 - 3)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_89:
    v50 = v31 < 0 ? -5 : 5;
    v51 = v43 + (((103 * (v50 + v44)) >> 15) & 1) + ((103 * (v50 + v44)) >> 10);
    v52 = v51 + v12;
    v53 = sub_B0843C(v130, v51 + v12);
    if (*(a1 + 64) * fabs((10 * (v53 - v134))) >= fabs((10 * v51)))
    {
      break;
    }

    v41 = v31 + v31;
    if (v41 >= 0.0)
    {
      if (v41 >= 4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) + 1;
    }

    else
    {
      if (v41 <= -4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
    }

    v41 = (v54 >> 1);
LABEL_69:
    v31 = v41;
    if (*(a1 + 56) < v41)
    {
      goto LABEL_54;
    }
  }

  v71 = v53;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v72 = std::ostream::operator<<();
    sub_4A5C(v72, "] Journey duration improved from ", 33);
    v73 = std::ostream::operator<<();
    sub_4A5C(v73, " to ", 4);
    v74 = std::ostream::operator<<();
    sub_4A5C(v74, " sec for time shift of ", 23);
    v75 = std::ostream::operator<<();
    sub_4A5C(v75, " sec", 4);
    if ((v129 & 0x10) != 0)
    {
      v77 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v77 = v125;
      }

      v78 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v76 = 0;
        v116 = 0;
        goto LABEL_143;
      }

      v78 = v122;
      v77 = v123;
    }

    v79 = *v78;
    v76 = v77 - *v78;
    if (v76 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v76 >= 0x17)
    {
      operator new();
    }

    v116 = v77 - *v78;
    if (v76)
    {
      memmove(&v115, v79, v76);
    }

LABEL_143:
    *(&v115 + v76) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(v114 - 3)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
    v12 = v111;
  }

  v134 = v71;
  v112 = v12;
  if (v51)
  {
    v80 = vcvtd_n_f64_s32(v31, 1uLL);
    if (v80 >= 0.0)
    {
      if (v80 < 4.50359963e15)
      {
        v81 = (v80 + v80) + 1;
LABEL_154:
        v80 = (v81 >> 1);
      }
    }

    else if (v80 > -4.50359963e15)
    {
      v81 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
      goto LABEL_154;
    }

    v82 = v31 * 0.25;
    if (v82 >= 0.0)
    {
      if (v82 < 4.50359963e15)
      {
        v83 = (v82 + v82) + 1;
LABEL_160:
        v82 = (v83 >> 1);
      }
    }

    else if (v82 > -4.50359963e15)
    {
      v83 = (v82 + v82) - 1 + (((v82 + v82) - 1) >> 63);
      goto LABEL_160;
    }

    v84 = v82;
    if (*(a1 + 60) > v82)
    {
      v112 = v52;
      goto LABEL_55;
    }

    v85 = v80;
    v112 = v52;
    while (2)
    {
      *(a1 + 296) = *(a1 + 296) + 1.0;
      v87 = v84 + v85;
      if (sub_7E7E4(2u))
      {
        sub_19594F8(&v119);
        sub_4A5C(&v119, "[", 1);
        v88 = std::ostream::operator<<();
        sub_4A5C(v88, "] Examining time shift of ", 26);
        v89 = v87 / 10;
        v90 = v87 % 10;
        v91 = std::ostream::operator<<();
        sub_4A5C(v91, " sec (binary refinement search)", 31);
        if ((v129 & 0x10) != 0)
        {
          v93 = v85;
          v94 = v128;
          v95 = &v124;
          if (v128 < v125)
          {
            v128 = v125;
            v94 = v125;
            v95 = &v124;
          }
        }

        else
        {
          if ((v129 & 8) == 0)
          {
            v92 = 0;
            v116 = 0;
            goto LABEL_181;
          }

          v93 = v85;
          v94 = v123;
          v95 = v122;
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

        v116 = v94 - *v95;
        if (v92)
        {
          memmove(&v115, v96, v92);
        }

        v85 = v93;
LABEL_181:
        *(&v115 + v92) = 0;
        sub_7E854(&v115, 2u);
        if (v116 < 0)
        {
          operator delete(v115);
        }

        v119 = v114;
        *(&v119 + *(v114 - 3)) = v113;
        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      else
      {
        v89 = v87 / 10;
        v90 = v87 % 10;
      }

      if (v87 < 0)
      {
        v97 = -5;
      }

      else
      {
        v97 = 5;
      }

      v98 = v89 + (((103 * (v97 + v90)) >> 15) & 1) + ((103 * (v97 + v90)) >> 10) + v111;
      v99 = sub_B0843C(v130, v98);
      if (*(a1 + 64) * fabs((10 * (v134 - v99))) >= fabs((10 * (v112 - v98))))
      {
        v85 = v87;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v100 = v99;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v119);
          sub_4A5C(&v119, "[", 1);
          v101 = std::ostream::operator<<();
          sub_4A5C(v101, "] Journey duration improved from ", 33);
          v102 = std::ostream::operator<<();
          sub_4A5C(v102, " to ", 4);
          v103 = std::ostream::operator<<();
          sub_4A5C(v103, " sec for time shift of ", 23);
          v104 = std::ostream::operator<<();
          sub_4A5C(v104, " sec", 4);
          if ((v129 & 0x10) != 0)
          {
            v107 = v85;
            v108 = v128;
            v109 = &v124;
            if (v128 < v125)
            {
              v128 = v125;
              v108 = v125;
              v109 = &v124;
            }
          }

          else
          {
            if ((v129 & 8) == 0)
            {
              v105 = 0;
              v116 = 0;
              goto LABEL_207;
            }

            v107 = v85;
            v108 = v123;
            v109 = v122;
          }

          v110 = *v109;
          v105 = v108 - *v109;
          if (v105 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v105 >= 0x17)
          {
            operator new();
          }

          v116 = v108 - *v109;
          if (v105)
          {
            memmove(&v115, v110, v105);
          }

          v85 = v107;
LABEL_207:
          *(&v115 + v105) = 0;
          sub_7E854(&v115, 2u);
          if (v116 < 0)
          {
            operator delete(v115);
          }

          v119 = v114;
          *(&v119 + *(v114 - 3)) = v113;
          if (v127 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v121);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v134 = v100;
        v112 = v98;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
LABEL_213:
          if (v86 < 4.50359963e15)
          {
            v106 = (v86 + v86) + 1;
LABEL_164:
            v86 = (v106 >> 1);
          }

          goto LABEL_165;
        }
      }

      if (v86 > -4.50359963e15)
      {
        v106 = (v86 + v86) - 1 + (((v86 + v86) - 1) >> 63);
        goto LABEL_164;
      }

LABEL_165:
      v84 = v86;
      if (*(a1 + 60) > v86)
      {
        break;
      }

      continue;
    }
  }

LABEL_55:
  *(a1 + 232) = sub_7EA60(&__dst);
  v13 = v134;
  v12 = v112;
  v14 = (a1 + 92);
LABEL_56:
  if (v13 != *v14)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v119);
      sub_4A5C(&v119, "[", 1);
      v32 = std::ostream::operator<<();
      v33 = sub_4A5C(v32, "] Shifting ", 11);
      v34 = sub_4A5C(v33, "departure", 9);
      v35 = sub_4A5C(v34, " time from ", 11);
      v36 = sub_258D4(v35);
      v37 = sub_4A5C(v36, " to ", 4);
      sub_258D4(v37);
      if ((v129 & 0x10) != 0)
      {
        v39 = v128;
        if (v128 < v125)
        {
          v128 = v125;
          v39 = v125;
        }

        v40 = v124;
        v38 = v39 - v124;
        if (v39 - v124 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_126;
        }
      }

      else
      {
        if ((v129 & 8) == 0)
        {
          v38 = 0;
          v118 = 0;
          goto LABEL_100;
        }

        v40 = v122[0];
        v38 = v123 - v122[0];
        if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_126:
          sub_3244();
        }
      }

      if (v38 >= 0x17)
      {
        operator new();
      }

      v118 = v38;
      if (v38)
      {
        memmove(&__dst, v40, v38);
      }

LABEL_100:
      *(&__dst + v38) = 0;
      sub_7E854(&__dst, 2u);
      if (v118 < 0)
      {
        operator delete(__dst);
      }

      if (v127 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v121);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v55 = v133;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_118;
  }

  v56 = v133 + 1;
  v57 = *(a1 + 24);
  if (v133 + 1 <= (v57 + 1))
  {
    v56 = v57 + 1;
  }

  if (v133 + 1 < (v57 + 1))
  {
    v58 = v56 - 1;
    v59 = 2 * v133 + 3;
    v60 = v133;
    while (1)
    {
      v61 = *(a1 + 664);
      v62 = *(a1 + 656);
      if (*v61 <= v62)
      {
        *v61 = v62 + 1;
        v63 = v61[2];
        v64 = v61[1] * (v62 + 1);
        v65 = (v61[3] - v63) >> 2;
        if (v64 <= v65)
        {
          if (v64 < v65)
          {
            v61[3] = v63 + 4 * v64;
          }
        }

        else
        {
          sub_617214((v61 + 2), v64 - v65);
        }
      }

      if (*(v61[2] + 4 * v61[1] * v62 + 4 * v59) != 0x7FFFFFFF)
      {
        break;
      }

      ++v60;
      v59 += 2;
      if (v58 == v60)
      {
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    if (*(a1 + 24) >= (*(a1 + 148) + v55))
    {
      v60 = *(a1 + 148) + v55;
    }

    else
    {
      v60 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v60;
  v66 = *(a1 + 144);
  v67 = v66 / 10;
  v68 = v66 % 10;
  if (v66 < 0)
  {
    v69 = -5;
  }

  else
  {
    v69 = 5;
  }

  sub_B0843C(v130, v67 + v12 + (((103 * (v69 + v68)) >> 15) & 1) + ((103 * (v69 + v68)) >> 10));
  return v134;
}

void sub_B07D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
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

void sub_B07F30(uint64_t a1, int a2, int a3)
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
  sub_B087DC(a1 + 1424, v51);
  sub_B08ACC((a1 + 1424), a2, v43);
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

void sub_B083C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_B0843C(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(v2 + 4) = a2;
  sub_A9DD88(v3 + 680, v2);
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

void sub_B08790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
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

void sub_B087DC(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v42);
  v4 = *(a2 + 16);
  *(a1 + 64) = *a2;
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 40);
  sub_B0B004(a1);
  v5 = *(a1 + 32);
  v43[0] = 0x1FFFFFFFDLL;
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
  sub_B0B1D8(a1);
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
        sub_B0B3DC(a1, v11);
        sub_B0BA2C(a1, v11);
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
        sub_B0CB44(a1);
        sub_7E9A4(v43);
        v17 = *(a1 + 352);
        v18 = *(a1 + 360);
        while (v17 != v18)
        {
          v19 = *v17++;
          sub_B0EDC4(a1, v11, v19);
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
      if ((sub_B0D8C0(a1) & 1) == 0 && ++v11 < *(a1 + 124))
      {
        continue;
      }

      goto LABEL_22;
    }
  }

  sub_B0DDF4(a1);
  *(a1 + 552) = v10;
  *(a1 + 504) = sub_7EA60(v42);
}

__n128 sub_B08ACC@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v301 = (a3 + 8);
  BYTE7(v337) = 0;
  LOBYTE(__p[0]) = 0;
  v296 = (a3 + 32);
  sub_CC9264(a3 + 32, __p);
  if (SBYTE7(v337) < 0)
  {
    operator delete(__p[0]);
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

  v297 = v7;
  v298 = (2 * a2) | 1;
  if (v5 < v6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v299 = _Q0;
    v311 = a1;
    do
    {
      sub_AE5278(a1 + 16, 0);
      v11 = (v298 + *(a1 + 30) + *(a1 + 30) * *(a1 + 94) + 2);
      v12 = a1[16];
      if (v11 >= (a1[17] - v12) >> 3)
      {
        goto LABEL_18;
      }

      v14 = (v12 + 8 * v11);
      v13 = v14[1];
      v15 = v13 - *v14;
      if (v13 == *v14)
      {
        goto LABEL_18;
      }

      v16 = 0;
      v17 = 0;
      do
      {
        v18 = a1[16];
        if (v11 >= (a1[17] - v18) >> 3 || (v20 = (v18 + 8 * v11), v19 = *v20, v20[1] - *v20 <= v17))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "key does not exist and cannot be added");
          goto LABEL_420;
        }

        v21 = v17 + v19;
        v22 = a1[19];
        if (v21 >= (a1[20] - v22) >> 6)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "index out of range");
LABEL_420:
        }

        v23 = (v22 + (v21 << 6));
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[3];
        *v338 = v23[2];
        *&v338[16] = v26;
        *__p = v24;
        v337 = v25;
        v16 |= sub_B0E7AC((a1 + 16), __p, 0, 0, 1);
        ++v17;
      }

      while (v15 != v17);
      if ((v16 & 0x100) != 0)
      {
        sub_AE5FB0(a1 + 16, 0);
      }

LABEL_18:
      v27 = a1[16];
      if (a1[17] != v27)
      {
        v28 = a1[19];
        v29 = *v27;
        goto LABEL_20;
      }

      sub_30B70((a1 + 16), 1uLL);
      v27 = a1[16];
      v28 = a1[19];
      v29 = *v27;
      if (a1[17] == v27)
      {
        sub_30B70((a1 + 16), 1uLL);
        v27 = a1[16];
        v30 = a1[19];
      }

      else
      {
LABEL_20:
        v30 = v28;
      }

      v303 = (v28 + (v29 << 6));
      v300 = (v30 + (v27[1] << 6));
      _ZF = v303 == v300;
      while (2)
      {
        if (!_ZF)
        {
          LOWORD(__p[0]) = 0;
          BYTE2(__p[0]) = 0;
          *(__p + 4) = 0;
          HIDWORD(__p[1]) = 0;
          *&v337 = -NAN;
          DWORD2(v337) = 0x7FFFFFFF;
          WORD6(v337) = 0;
          *v338 = 0x8000000080000000;
          *&v338[8] = 0;
          *&v338[12] = 0x8000000080000000;
          *&v338[20] = 0x7FFFFFFF;
          *&v338[24] = 0;
          *&v338[28] = 0x8000000080000000;
          v339 = 0;
          v340 = 0x8000000080000000;
          v341 = 0;
          v342 = 0xFFFFFFFF00000000;
          v343 = -1;
          v344 = 0;
          v346 = 0;
          v347 = 0;
          v348 = 0;
          v345 = 0x7FFFFFFF;
          v349 = 100;
          v350 = -1;
          v351 = v299;
          v352 = v299;
          v353 = v299;
          v354 = 0u;
          v355 = 0u;
          v356 = 0u;
          v357 = 0u;
          v358 = 0u;
          v359 = 0u;
          v32 = a1[3];
          if (sub_68312C(v32 + 3896) && *(v32 + 3944))
          {
            v33 = 1;
          }

          else
          {
            v34 = a1[3];
            v33 = sub_4C2B90(v34 + 3896) && *(v34 + 3960) != 0;
          }

          BYTE1(__p[0]) = v33;
          v35 = a1[3];
          if (sub_4C2B90(v35 + 3896))
          {
            v36 = 2 * (*(v35 + 3960) != 0);
          }

          else
          {
            v36 = 0;
          }

          LODWORD(__p[1]) = v36;
          HIDWORD(__p[0]) = v36;
          if (*v303 != -1)
          {
            v309 = *(a1 + 94);
            v37 = v303;
            v307 = v298;
            while (2)
            {
              v330 = 0;
              v329 = 0u;
              v331 = 1;
              v333 = 0;
              v334 = 0;
              v332 = 0;
              v335[0] = 1;
              *&v335[4] = 0x8000000080000000;
              *&v335[12] = 0;
              v335[14] = 0;
              *v323 = 0;
              *&v323[16] = 0u;
              *v324 = 0xFFFFFFFFLL;
              *&v324[16] = 0u;
              *v328 = 1;
              *&v323[4] = 0x8000000080000000;
              *&v323[12] = 0x7FFFFFFF;
              *&v323[20] = 0x8000000080000000;
              *&v324[8] = xmmword_2266560;
              *&v324[24] = -1;
              *__dst = 0u;
              memset(v326, 0, sizeof(v326));
              v327[0] = 0x7FFFFFFFuLL;
              v327[1] = 0uLL;
              *&v328[4] = xmmword_22A7500;
              if (v37[4] == -1)
              {
                goto LABEL_222;
              }

              v312 = xmmword_2297BF0;
              LOWORD(v313) = 0;
              *(&v313 + 4) = 0x8000000080000000;
              WORD6(v313) = 0;
              *v314 = xmmword_22A7450;
              *&v314[16] = -COERCE_DOUBLE(0x8000000080000000);
              v315 = 0uLL;
              v316 = 0uLL;
              v317 = 0uLL;
              *&v314[24] = -1;
              v318 = 0x7FFFFFFF;
              v320 = 0;
              v321 = 0;
              v319 = 0;
              LOBYTE(v322) = 1;
              *(&v322 + 4) = 0x8000000080000000;
              HIDWORD(v322) = 0;
              v331 = 0;
              v39 = *sub_A9C5E0((a1[5] + 88), v37[4]);
              *v314 = v39;
              v40 = *(v37 + 1);
              *&v314[16] = v37[3];
              *&v314[8] = v40;
              *&v314[20] = *v37;
              v41 = *&v314[20];
              v42 = a1[3];
              v360 = *sub_A9C5E0((a1[4] + 88), v309);
              sub_A79708(&v361, v42, v39, v41, 0, 0);
              v368 = (v367 + 12 * *&v314[8]);
              if (v371[0] == 1)
              {
                *&v371[4] = *&v314[12];
              }

              if (v366)
              {
                v43 = *(v366 + 4 * ((v364 - v363) >> 4));
              }

              else
              {
                v43 = 0;
              }

              sub_AA98A0(&v361, &v360, v43);
              _CF = v364 < v365 && v364 >= v363;
              v45 = (v364 - v363) >> 4;
              if (!_CF)
              {
                LODWORD(v45) = -1;
              }

              *&v314[24] = v45;
              v46 = a1[4];
              v47 = *&v314[20];
              v48 = sub_A57920((a1[3] + 4136), *v314);
              v49 = (v48 - *v48);
              if (*v49 >= 9u && (v50 = v49[4]) != 0)
              {
                v51 = (v48 + v50 + *(v48 + v50));
              }

              else
              {
                v51 = 0;
              }

              v52 = __ROR8__(*sub_A571D4(v51, v47), 32);
              v53 = *(v46 + 56) - 1;
              v54 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v52 ^ (v52 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v52 ^ (v52 >> 33))) >> 33));
              v55 = v54 ^ (v54 >> 33);
              v56 = *(v46 + 80);
              v58 = *(v46 + 64);
              v57 = *(v46 + 68);
              v59 = v55 & v53;
              v60 = (v56 + 12 * (v55 & v53));
              v62 = *v60;
              v61 = v60[1];
              if (v57 == v61 && v58 == v62)
              {
LABEL_57:
                v63 = v59;
                goto LABEL_58;
              }

              if (*(v46 + 40))
              {
                v63 = -1;
                v78 = 1;
                do
                {
                  if (*(v46 + 36) == v61 && *(v46 + 32) == v62)
                  {
                    if (v63 == -1)
                    {
                      v63 = v59;
                    }
                  }

                  else if (__PAIR64__(v61, v62) == v52)
                  {
                    goto LABEL_102;
                  }

                  v59 = (v59 + v78) & v53;
                  v79 = (v56 + 12 * v59);
                  v62 = *v79;
                  v61 = v79[1];
                  ++v78;
                }

                while (v57 != v61 || v58 != v62);
                if (v63 == -1)
                {
                  goto LABEL_57;
                }

LABEL_58:
                if (!sub_A99094(v46, 1))
                {
                  v82 = *(v46 + 40);
                  v81 = *(v46 + 48);
                  if ((v81 - v82) >= 0x1555555555555555)
                  {
                    goto LABEL_412;
                  }

                  v65 = *(v46 + 80);
                  if (v82 && ((v83 = (v65 + 12 * v63), *(v46 + 36) == v83[1]) ? (v84 = *(v46 + 32) == *v83) : (v84 = 0), v84))
                  {
                    *(v46 + 40) = v82 - 1;
                  }

                  else
                  {
                    *(v46 + 48) = v81 + 1;
                  }

                  v89 = 3 * v63;
                  goto LABEL_130;
                }

                v64 = *(v46 + 56) - 1;
                v65 = *(v46 + 80);
                v67 = *(v46 + 64);
                v66 = *(v46 + 68);
                v68 = v64 & v55;
                v69 = (v65 + 12 * (v64 & v55));
                v71 = *v69;
                v70 = v69[1];
                v72 = *(v46 + 40);
                if (v66 == v70 && v67 == v71)
                {
                  goto LABEL_120;
                }

                if (v72)
                {
                  v74 = -1;
                  v75 = 1;
                  do
                  {
                    if (*(v46 + 36) == v70 && *(v46 + 32) == v71)
                    {
                      if (v74 == -1)
                      {
                        v74 = v68;
                      }
                    }

                    else if (__PAIR64__(v70, v71) == v52)
                    {
                      goto LABEL_115;
                    }

                    v68 = (v68 + v75) & v64;
                    v76 = (v65 + 12 * v68);
                    v71 = *v76;
                    v70 = v76[1];
                    ++v75;
                  }

                  while (v66 != v70 || v67 != v71);
                  if (v74 == -1)
                  {
LABEL_120:
                    v74 = v68;
                  }

                  v93 = *(v46 + 48);
                  if ((v93 - v72) >= 0x1555555555555555)
                  {
                    goto LABEL_412;
                  }

LABEL_122:
                  if (v72 && ((v94 = (v65 + 12 * v74), *(v46 + 36) == v94[1]) ? (v95 = *(v46 + 32) == *v94) : (v95 = 0), v95))
                  {
                    *(v46 + 40) = v72 - 1;
                  }

                  else
                  {
                    *(v46 + 48) = v93 + 1;
                  }

                  v89 = 3 * v74;
LABEL_130:
                  v96 = 4 * v89;
                  v97 = v65 + v96;
                  *v97 = v52;
                  *(v97 + 8) = -1;
                  v88 = *(v46 + 80) + v96;
                  v309 = *(v88 + 8);
                  if (v309 == -1)
                  {
LABEL_131:
                    v98 = *(v46 + 112);
                    *(v46 + 112) = v98 + 1;
                    *(v88 + 8) = v98;
                    v100 = *(v46 + 96);
                    v99 = *(v46 + 104);
                    if (v100 >= v99)
                    {
                      v102 = *(v46 + 88);
                      v103 = v100 - v102;
                      v104 = (v100 - v102) >> 3;
                      v105 = v104 + 1;
                      if ((v104 + 1) >> 61)
                      {
                        sub_1794();
                      }

                      v106 = v99 - v102;
                      if (v106 >> 2 > v105)
                      {
                        v105 = v106 >> 2;
                      }

                      if (v106 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v107 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v107 = v105;
                      }

                      if (v107)
                      {
                        if (!(v107 >> 61))
                        {
                          operator new();
                        }

                        sub_1808();
                      }

                      v108 = (v100 - v102) >> 3;
                      v109 = (8 * v104);
                      v110 = (8 * v104 - 8 * v108);
                      *v109 = v52;
                      v101 = v109 + 1;
                      memcpy(v110, v102, v103);
                      *(v46 + 88) = v110;
                      *(v46 + 96) = v101;
                      *(v46 + 104) = 0;
                      if (v102)
                      {
                        operator delete(v102);
                      }
                    }

                    else
                    {
                      *v100 = v52;
                      v101 = v100 + 8;
                    }

                    *(v46 + 96) = v101;
                    v309 = *(v88 + 8);
                    a1 = v311;
                  }
                }

                else
                {
                  v90 = 1;
                  while (__PAIR64__(v70, v71) != v52)
                  {
                    v68 = (v68 + v90) & v64;
                    v91 = (v65 + 12 * v68);
                    v71 = *v91;
                    v70 = v91[1];
                    ++v90;
                    if (v66 == v70 && v67 == v71)
                    {
                      v72 = 0;
                      goto LABEL_120;
                    }
                  }

LABEL_115:
                  if (v68 == -1)
                  {
                    v74 = -1;
                    v93 = *(v46 + 48);
                    if ((v93 - v72) >= 0x1555555555555555)
                    {
LABEL_412:
                      v294 = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(v294, "insert overflow");
                    }

                    goto LABEL_122;
                  }

                  v88 = v65 + 12 * v68;
                  v309 = *(v88 + 8);
                  if (v309 == -1)
                  {
                    goto LABEL_131;
                  }
                }
              }

              else
              {
                v85 = 1;
                while (__PAIR64__(v61, v62) != v52)
                {
                  v59 = (v59 + v85) & v53;
                  v86 = (v56 + 12 * v59);
                  v62 = *v86;
                  v61 = v86[1];
                  ++v85;
                  if (v57 == v61 && v58 == v62)
                  {
                    goto LABEL_57;
                  }
                }

LABEL_102:
                if (v59 == -1)
                {
                  v63 = -1;
                  goto LABEL_58;
                }

                v88 = v56 + 12 * v59;
                v309 = *(v88 + 8);
                if (v309 == -1)
                {
                  goto LABEL_131;
                }
              }

              v111 = *&v314[20];
              v112 = sub_A57920((a1[3] + 4136), *v314);
              v113 = (v112 - *v112);
              if (*v113 >= 9u && (v114 = v113[4]) != 0)
              {
                v115 = (v112 + v114 + *(v112 + v114));
              }

              else
              {
                v115 = 0;
              }

              DWORD1(v312) = 10 * *(sub_A571D4(v115, v111) + 8);
              v116 = a1[3];
              v117 = *v314;
              v118 = *&v314[20];
              v119 = *&v314[8];
              v120 = sub_A5706C((v116 + 4136), *v314);
              v121 = v120;
              v122 = &v120[-*v120];
              if (*v122 < 5u)
              {
                v123 = 0;
              }

              else
              {
                v123 = *(v122 + 2);
                if (v123)
                {
                  v123 += &v120[*&v120[v123]];
                }
              }

              v124 = (v123 + 4 * v117 + 4 + *(v123 + 4 * v117 + 4));
              v125 = (v124 - *v124);
              if (*v125 >= 9u && (v126 = v125[4]) != 0)
              {
                v127 = (v124 + v126 + *(v124 + v126));
              }

              else
              {
                v127 = 0;
              }

              v128 = sub_A571D4(v127, v118);
              v129 = (v121 - *v121);
              if (*v129 < 0xBu)
              {
                v130 = 0;
                v131 = (v124 - *v124);
                if (*v131 >= 0x11u)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v130 = v129[5];
                if (v130)
                {
                  v130 = (v130 + v121 + *(v130 + v121));
                }

                v131 = (v124 - *v124);
                if (*v131 >= 0x11u)
                {
LABEL_161:
                  v132 = v131[8];
                  if (v131[8])
                  {
                    LODWORD(v132) = *(v124 + v132);
                  }

LABEL_165:
                  v133 = sub_A57320(v130, v132 + *(v124 + v131[2] + *(v124 + v131[2])) * v119 + *(v128 + 14));
                  if (v133)
                  {
                    v134 = __ROR8__(*v133, 32);
                    v135 = *(v133 + 8);
                  }

                  else
                  {
                    v135 = 0;
                    v134 = 0xFFFFFFFFLL;
                  }

                  *&v361 = v134;
                  DWORD2(v361) = v135;
                  v136 = sub_A57920((v116 + 4136), v117);
                  v137 = (v136 - *v136);
                  if (*v137 >= 9u && (v138 = v137[4]) != 0)
                  {
                    v139 = (v136 + v138 + *(v136 + v138));
                  }

                  else
                  {
                    v139 = 0;
                  }

                  v140 = *(sub_A571D4(v139, v118) + 12);
                  if (*&v314[12] == -1)
                  {
                    v141 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v141 = *&v314[16];
                  }

                  *(&v312 + 1) = sub_A56700((v116 + 4184), &v361, v140, v141);
                  LOWORD(v313) = v142;
                  v143 = v311[3];
                  v144 = *v314;
                  v145 = *&v314[24];
                  v146 = *&v314[8];
                  v147 = sub_A5706C((v143 + 4136), *v314);
                  v148 = v147;
                  v149 = &v147[-*v147];
                  if (*v149 < 5u)
                  {
                    v150 = 0;
                  }

                  else
                  {
                    v150 = *(v149 + 2);
                    if (v150)
                    {
                      v150 += &v147[*&v147[v150]];
                    }
                  }

                  v151 = (v150 + 4 * v144 + 4 + *(v150 + 4 * v144 + 4));
                  v152 = (v151 - *v151);
                  if (*v152 >= 9u && (v153 = v152[4]) != 0)
                  {
                    v154 = (v151 + v153 + *(v151 + v153));
                  }

                  else
                  {
                    v154 = 0;
                  }

                  v155 = sub_A571D4(v154, v145);
                  v156 = (v148 - *v148);
                  if (*v156 < 0xBu)
                  {
                    v157 = 0;
                    v158 = (v151 - *v151);
                    if (*v158 >= 0x11u)
                    {
                      goto LABEL_187;
                    }
                  }

                  else
                  {
                    v157 = v156[5];
                    if (v157)
                    {
                      v157 = (v157 + v148 + *(v157 + v148));
                    }

                    v158 = (v151 - *v151);
                    if (*v158 >= 0x11u)
                    {
LABEL_187:
                      v159 = v158[8];
                      if (v158[8])
                      {
                        LODWORD(v159) = *(v151 + v159);
                      }

LABEL_191:
                      v160 = sub_A57320(v157, v159 + *(v151 + v158[2] + *(v151 + v158[2])) * v146 + *(v155 + 14));
                      if (v160)
                      {
                        v161 = __ROR8__(*v160, 32);
                        v162 = *(v160 + 8);
                      }

                      else
                      {
                        v162 = 0;
                        v161 = 0xFFFFFFFFLL;
                      }

                      *&v361 = v161;
                      DWORD2(v361) = v162;
                      v163 = sub_A57920((v143 + 4136), v144);
                      v164 = (v163 - *v163);
                      if (*v164 >= 9u && (v165 = v164[4]) != 0)
                      {
                        v166 = (v163 + v165 + *(v163 + v165));
                      }

                      else
                      {
                        v166 = 0;
                      }

                      v167 = *(sub_A571D4(v166, v145) + 12);
                      if (*&v314[12] == -1)
                      {
                        v168 = 0x7FFFFFFF;
                      }

                      else
                      {
                        v168 = *&v314[16];
                      }

                      *(&v313 + 4) = sub_A56A5C((v143 + 4184), &v361, v167, v168);
                      WORD6(v313) = v169;
                      if (*&v328[16])
                      {
                        sub_A332F8(&v361, &v312);
                        a1 = v311;
                        sub_A34B68(v323, &v361);
                        if (v372)
                        {
                          v373 = v372;
                          operator delete(v372);
                        }

                        if (v370)
                        {
                          *v371 = v370;
                          operator delete(v370);
                        }

                        if (v368)
                        {
                          v369 = v368;
                          operator delete(v368);
                        }

                        v170 = v319;
                        if (v319)
                        {
                          goto LABEL_209;
                        }
                      }

                      else
                      {
                        *v323 = v312;
                        *&v323[16] = v313;
                        *v324 = *v314;
                        *&v324[12] = *&v314[12];
                        v184 = v315;
                        v185 = *(&v315 + 1) - v315;
                        v186 = *&v326[0];
                        v187 = __dst[0];
                        a1 = v311;
                        if (*&v326[0] - __dst[0] < *(&v315 + 1) - v315)
                        {
                          if (__dst[0])
                          {
                            __dst[1] = __dst[0];
                            operator delete(__dst[0]);
                            v186 = 0;
                            __dst[0] = 0;
                            __dst[1] = 0;
                            *&v326[0] = 0;
                          }

                          v188 = 0xEEEEEEEEEEEEEEEFLL * (v185 >> 2);
                          if (v188 <= 0x444444444444444)
                          {
                            v189 = 0xEEEEEEEEEEEEEEEFLL * (v186 >> 2);
                            if (2 * v189 > v188)
                            {
                              v188 = 2 * v189;
                            }

                            if (v189 >= 0x222222222222222)
                            {
                              v190 = 0x444444444444444;
                            }

                            else
                            {
                              v190 = v188;
                            }

                            if (v190 <= 0x444444444444444)
                            {
                              operator new();
                            }
                          }

                          sub_1794();
                        }

                        v237 = __dst[1];
                        v238 = __dst[1] - __dst[0];
                        if ((__dst[1] - __dst[0]) >= v185)
                        {
                          if (*(&v315 + 1) != v315)
                          {
                            v241 = __dst[0];
                            memmove(__dst[0], v315, v185 - 3);
                            v187 = v241;
                          }

                          v240 = &v187[v185];
                        }

                        else
                        {
                          if (__dst[1] != __dst[0])
                          {
                            memmove(__dst[0], v315, v238 - 3);
                            v237 = __dst[1];
                          }

                          v239 = *(&v184 + 1) - (v184 + v238);
                          if (v239)
                          {
                            memmove(v237, (v184 + v238), v239 - 3);
                          }

                          v240 = &v237[v239];
                        }

                        __dst[1] = v240;
                        sub_A349D4(v326 + 1, *(&v316 + 1), v317, 0xEEEEEEEEEEEEEEEFLL * ((v317 - *(&v316 + 1)) >> 2));
                        LODWORD(v327[0]) = v318;
                        sub_956400(v327 + 1, v319, v320, 0xCCCCCCCCCCCCCCCDLL * ((v320 - v319) >> 3));
                        *v328 = v322;
                        v170 = v319;
                        if (v319)
                        {
LABEL_209:
                          v320 = v170;
                          operator delete(v170);
                        }
                      }

                      if (*(&v316 + 1))
                      {
                        *&v317 = *(&v316 + 1);
                        operator delete(*(&v316 + 1));
                      }

                      if (v315)
                      {
                        *(&v315 + 1) = v315;
                        operator delete(v315);
                      }

                      if (v37[4] != -1)
                      {
                        v171 = *(&v329 + 1);
                        if (*(&v329 + 1) >= v330)
                        {
                          goto LABEL_243;
                        }

                        goto LABEL_216;
                      }

LABEL_222:
                      v331 = 1;
                      v176 = v37[3];
                      v177 = v37[7];
                      v178 = *sub_A9C5E0((a1[4] + 88), *v37);
                      v179 = *sub_A9C5E0((a1[4] + 88), v309);
                      if (*&v328[16] != -1)
                      {
                        if (*&v328[16] == 1)
                        {
                          *v323 = 0;
                          *&v323[4] = v176;
                          *&v323[8] = v177;
                          *&v323[12] = v178;
                          *&v323[20] = v179;
                          v309 = *v37;
                          v171 = *(&v329 + 1);
                          if (*(&v329 + 1) >= v330)
                          {
                            goto LABEL_243;
                          }

                          goto LABEL_216;
                        }

                        (off_2670F08[*&v328[16]])(&v361, v323);
                      }

                      *v323 = 0;
                      *&v323[4] = v176;
                      *&v323[12] = v178;
                      *&v323[20] = v179;
                      *&v323[8] = v177;
                      *&v328[16] = 1;
                      v309 = *v37;
                      v171 = *(&v329 + 1);
                      if (*(&v329 + 1) >= v330)
                      {
LABEL_243:
                        v173 = sub_AA9AE0(&v329, v323);
                        *(&v329 + 1) = v173;
                        v174 = *(&v354 + 1);
                        v175 = v355;
                        if (*(&v354 + 1) < v355)
                        {
                          goto LABEL_219;
                        }

                        goto LABEL_244;
                      }

LABEL_216:
                      *v171 = 0;
                      *(v171 + 160) = -1;
                      v172 = *&v328[16];
                      if (*&v328[16] != -1)
                      {
                        *&v361 = v171;
                        (off_2670F18[*&v328[16]])(&v361, v323);
                        *(v171 + 160) = v172;
                      }

                      v173 = v171 + 168;
                      *(&v329 + 1) = v171 + 168;
                      v174 = *(&v354 + 1);
                      v175 = v355;
                      if (*(&v354 + 1) < v355)
                      {
LABEL_219:
                        *v174 = 0;
                        *(v174 + 8) = 0;
                        *(v174 + 16) = 0;
                        if (*(&v329 + 1) != v329)
                        {
                          if (0xCF3CF3CF3CF3CF3DLL * ((*(&v329 + 1) - v329) >> 3) <= 0x186186186186186)
                          {
                            operator new();
                          }

                          sub_1794();
                        }

                        v180 = v331;
                        *(v174 + 32) = 0;
                        *(v174 + 24) = v180;
                        *(v174 + 40) = 0;
                        *(v174 + 48) = 0;
                        v181 = v311;
                        if (v333 != v332)
                        {
                          if (0xCCCCCCCCCCCCCCCDLL * ((v333 - v332) >> 3) <= 0x666666666666666)
                          {
                            operator new();
                          }

                          sub_1794();
                        }

                        v182 = *v335;
                        *(v174 + 63) = *&v335[7];
                        *(v174 + 56) = v182;
                        v183 = v174 + 72;
                        goto LABEL_277;
                      }

LABEL_244:
                      v191 = 0x8E38E38E38E38E39 * ((v174 - v354) >> 3);
                      v192 = v191 + 1;
                      if (v191 + 1 > 0x38E38E38E38E38ELL)
                      {
                        sub_1794();
                      }

                      v193 = 0x8E38E38E38E38E39 * ((v175 - v354) >> 3);
                      if (2 * v193 > v192)
                      {
                        v192 = 2 * v193;
                      }

                      if (v193 >= 0x1C71C71C71C71C7)
                      {
                        v194 = 0x38E38E38E38E38ELL;
                      }

                      else
                      {
                        v194 = v192;
                      }

                      v364 = &v354;
                      if (v194)
                      {
                        if (v194 <= 0x38E38E38E38E38ELL)
                        {
                          operator new();
                        }

                        sub_1808();
                      }

                      v195 = (8 * ((v174 - v354) >> 3));
                      *&v361 = 0;
                      *(&v361 + 1) = v195;
                      v362 = 72 * v191;
                      v363 = 0;
                      v195[1] = 0;
                      v195[2] = 0;
                      *v195 = 0;
                      if (v173 != v329)
                      {
                        if (0xCF3CF3CF3CF3CF3DLL * ((v173 - v329) >> 3) <= 0x186186186186186)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      v196 = v331;
                      *(&stru_20.cmd + 9 * v191) = 0;
                      LOBYTE(dword_18[18 * v191]) = v196;
                      *&stru_20.segname[72 * v191] = 0;
                      *&stru_20.segname[72 * v191 + 8] = 0;
                      if (v333 != v332)
                      {
                        if (0xCCCCCCCCCCCCCCCDLL * ((v333 - v332) >> 3) <= 0x666666666666666)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      *&stru_20.segname[72 * v191 + 16] = *v335;
                      *&stru_20.segname[72 * v191 + 23] = *&v335[7];
                      v183 = v362 + 72;
                      v362 += 72;
                      v197 = *(&v354 + 1);
                      v198 = v354;
                      v199 = *(&v361 + 1) + v354 - *(&v354 + 1);
                      if (v354 != *(&v354 + 1))
                      {
                        v200 = v354;
                        v201 = *(&v361 + 1) + v354 - *(&v354 + 1);
                        do
                        {
                          *v201 = 0;
                          *(v201 + 8) = 0;
                          *(v201 + 16) = 0;
                          *v201 = *v200;
                          *(v201 + 16) = *(v200 + 16);
                          *(v200 + 8) = 0;
                          *(v200 + 16) = 0;
                          *v200 = 0;
                          *(v201 + 24) = *(v200 + 24);
                          *(v201 + 40) = 0;
                          *(v201 + 48) = 0;
                          *(v201 + 32) = 0;
                          *(v201 + 32) = *(v200 + 32);
                          *(v201 + 48) = *(v200 + 48);
                          *(v200 + 32) = 0;
                          *(v200 + 40) = 0;
                          *(v200 + 48) = 0;
                          v202 = *(v200 + 56);
                          *(v201 + 63) = *(v200 + 63);
                          *(v201 + 56) = v202;
                          v200 += 72;
                          v201 += 72;
                        }

                        while (v200 != v197);
                        do
                        {
                          v204 = v198[4];
                          if (v204)
                          {
                            v198[5] = v204;
                            operator delete(v204);
                          }

                          v205 = *v198;
                          if (*v198)
                          {
                            v206 = v198[1];
                            v203 = *v198;
                            if (v206 != v205)
                            {
                              do
                              {
                                v207 = v206 - 168;
                                v208 = *(v206 - 2);
                                if (v208 != -1)
                                {
                                  (off_2670F08[v208])(&v312, v206 - 168);
                                }

                                *(v206 - 2) = -1;
                                v206 -= 168;
                              }

                              while (v207 != v205);
                              v203 = *v198;
                            }

                            v198[1] = v205;
                            operator delete(v203);
                          }

                          v198 += 9;
                        }

                        while (v198 != v197);
                      }

                      v209 = v354;
                      *&v354 = v199;
                      *(&v354 + 1) = v183;
                      *&v355 = v363;
                      if (v209)
                      {
                        operator delete(v209);
                      }

                      v181 = v311;
LABEL_277:
                      *(&v354 + 1) = v183;
                      v210 = v181;
                      v211 = v307 + *(v181 + 30) + *(v181 + 30) * v309 + 1;
                      v212 = v37[5];
                      v214 = v210[16];
                      v213 = v210[17];
                      v215 = (v213 - v214) >> 3;
                      if (v215 > v211)
                      {
                        goto LABEL_278;
                      }

                      v221 = (v211 + 1);
                      v222 = v221 - v215;
                      if (v221 <= v215)
                      {
                        if (v221 >= v215)
                        {
LABEL_278:
                          v216 = v311;
                          goto LABEL_279;
                        }

                        v213 = &v214[8 * v221];
                        v216 = v311;
                        v311[17] = v213;
                      }

                      else
                      {
                        v216 = v311;
                        v223 = v311[18];
                        if (v222 > (v223 - v213) >> 3)
                        {
                          v224 = v223 - v214;
                          if (v224 >> 2 > v221)
                          {
                            v221 = v224 >> 2;
                          }

                          if (v224 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v225 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v225 = v221;
                          }

                          if (!(v225 >> 61))
                          {
                            operator new();
                          }

LABEL_414:
                          sub_1808();
                        }

                        bzero(v213, 8 * v222);
                        v213 += 8 * v222;
                        v311[17] = v213;
                        v214 = v311[16];
                      }

LABEL_279:
                      v217 = v216[19];
                      v218 = *&v214[8 * v211];
                      v219 = (v213 - v214) >> 3;
                      if (v219 > v211)
                      {
                        v220 = v216[19];
                        goto LABEL_327;
                      }

                      v226 = (v211 + 1);
                      v227 = v226 - v219;
                      if (v226 > v219)
                      {
                        v228 = v311;
                        v229 = v311[18];
                        if (v227 <= (v229 - v213) >> 3)
                        {
                          v236 = 8 * v227;
                          bzero(v213, 8 * v227);
                          v311[17] = &v213[v236];
                        }

                        else
                        {
                          v230 = (v213 - v214) >> 3;
                          v231 = v230 + v227;
                          if ((v230 + v227) >> 61)
                          {
                            sub_1794();
                          }

                          v232 = v229 - v214;
                          if (v232 >> 2 > v231)
                          {
                            v231 = v232 >> 2;
                          }

                          if (v232 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v231 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          if (v231)
                          {
                            if (!(v231 >> 61))
                            {
                              operator new();
                            }

                            goto LABEL_414;
                          }

                          v304 = (v213 - v214) >> 3;
                          v228 = v311;
                          __na = v213 - v214;
                          v242 = (8 * v230);
                          v243 = 8 * v227;
                          bzero(v242, 8 * v227);
                          v244 = &v242[v243];
                          v245 = &v242[-8 * v304];
                          memcpy(v245, v214, __na);
                          v311[16] = v245;
                          v311[17] = v244;
                          v311[18] = 0;
                          if (v214)
                          {
                            operator delete(v214);
                          }
                        }

                        v214 = v228[16];
                        v220 = v228[19];
LABEL_327:
                        v37 = (v217 + (v218 << 6));
                        v234 = (v220 + (*&v214[8 * v211 + 4] << 6));
                        if (v37 != v234)
                        {
                          goto LABEL_305;
                        }

                        goto LABEL_328;
                      }

                      if (v226 < v219)
                      {
                        v311[17] = &v214[8 * v226];
                      }

                      v233 = v217;
                      v37 = (v217 + (v218 << 6));
                      v234 = (v233 + (*&v214[8 * v211 + 4] << 6));
                      if (v37 != v234)
                      {
LABEL_305:
                        a1 = v311;
                        while (v37[6] != v212)
                        {
                          v37 += 16;
                          if (v37 == v234)
                          {
                            v37 = 0;
                            break;
                          }
                        }

                        v235 = *&v328[16];
                        if (*&v328[16] == -1)
                        {
                          goto LABEL_330;
                        }

LABEL_329:
                        (off_2670F08[v235])(&v361, v323);
                        goto LABEL_330;
                      }

LABEL_328:
                      v37 = 0;
                      a1 = v311;
                      v235 = *&v328[16];
                      if (*&v328[16] != -1)
                      {
                        goto LABEL_329;
                      }

LABEL_330:
                      if (v332)
                      {
                        v333 = v332;
                        operator delete(v332);
                      }

                      v246 = v329;
                      if (v329)
                      {
                        v247 = *(&v329 + 1);
                        v38 = v329;
                        if (*(&v329 + 1) != v329)
                        {
                          do
                          {
                            v248 = v247 - 168;
                            v249 = *(v247 - 8);
                            if (v249 != -1)
                            {
                              (off_2670F08[v249])(v323, v247 - 168);
                            }

                            *(v247 - 8) = -1;
                            v247 -= 168;
                          }

                          while (v248 != v246);
                          v38 = v329;
                        }

                        *(&v329 + 1) = v246;
                        operator delete(v38);
                      }

                      --v307;
                      if (*v37 == -1)
                      {
                        goto LABEL_340;
                      }

                      continue;
                    }
                  }

                  LODWORD(v159) = 0;
                  goto LABEL_191;
                }
              }

              break;
            }

            LODWORD(v132) = 0;
            goto LABEL_165;
          }

LABEL_340:
          v250 = v354;
          if (v354 != *(&v354 + 1))
          {
            v251 = *(&v354 + 1) - 72;
            if (*(&v354 + 1) - 72 > v354)
            {
              do
              {
                *__n = *v250;
                v258 = *(v250 + 16);
                *(v250 + 8) = 0;
                *(v250 + 16) = 0;
                *v250 = 0;
                v259 = *(v250 + 24);
                v310 = *(v250 + 32);
                v308 = *(v250 + 48);
                *(v250 + 32) = 0;
                *(v250 + 40) = 0;
                *(v250 + 48) = 0;
                *v323 = *(v250 + 56);
                *&v323[7] = *(v250 + 63);
                v260 = *(v251 + 24);
                v261 = *(v251 + 16);
                *v250 = *v251;
                *(v250 + 16) = v261;
                *(v251 + 8) = 0;
                *(v251 + 16) = 0;
                *v251 = 0;
                *(v250 + 24) = v260;
                v262 = *(v250 + 32);
                if (v262)
                {
                  *(v250 + 40) = v262;
                  operator delete(v262);
                  *(v250 + 32) = 0;
                  *(v250 + 40) = 0;
                  *(v250 + 48) = 0;
                }

                *(v250 + 32) = *(v251 + 32);
                *(v250 + 48) = *(v251 + 48);
                *(v251 + 32) = 0;
                *(v251 + 40) = 0;
                *(v251 + 48) = 0;
                v263 = *(v251 + 56);
                *(v250 + 63) = *(v251 + 63);
                *(v250 + 56) = v263;
                v264 = *v251;
                if (*v251)
                {
                  v265 = *(v251 + 8);
                  v266 = *v251;
                  if (v265 != v264)
                  {
                    do
                    {
                      v267 = v265 - 168;
                      v268 = *(v265 - 8);
                      if (v268 != -1)
                      {
                        (off_2670F08[v268])(&v361, v265 - 168);
                      }

                      *(v265 - 8) = -1;
                      v265 -= 168;
                    }

                    while (v267 != v264);
                    v266 = *v251;
                  }

                  *(v251 + 8) = v264;
                  operator delete(v266);
                }

                *v251 = *__n;
                *(v251 + 16) = v258;
                *(v251 + 24) = v259;
                v269 = *(v251 + 32);
                if (v269)
                {
                  *(v251 + 40) = v269;
                  operator delete(v269);
                }

                *(v251 + 32) = v310;
                *(v251 + 48) = v308;
                *(v251 + 56) = *v323;
                *(v251 + 63) = *&v323[7];
                v250 += 72;
                v251 -= 72;
              }

              while (v250 < v251);
            }
          }

          sub_A83920(__p);
          a1 = v311;
          v253 = *(a3 + 16);
          v252 = *(a3 + 24);
          if (v253 >= v252)
          {
            v277 = 0x14C1BACF914C1BADLL * ((v253 - *v301) >> 3);
            v278 = v277 + 1;
            if ((v277 + 1) > 0xDD67C8A60DD67CLL)
            {
              sub_1794();
            }

            v279 = 0x14C1BACF914C1BADLL * ((v252 - *v301) >> 3);
            if (2 * v279 > v278)
            {
              v278 = 2 * v279;
            }

            if (v279 >= 0x6EB3E45306EB3ELL)
            {
              v280 = 0xDD67C8A60DD67CLL;
            }

            else
            {
              v280 = v278;
            }

            *v324 = v301;
            if (v280)
            {
              if (v280 <= 0xDD67C8A60DD67CLL)
              {
                operator new();
              }

              sub_1808();
            }

            *v323 = 0;
            *&v323[8] = 296 * v277;
            *&v323[16] = (296 * v277);
            sub_A32C84(296 * v277, __p);
            *&v323[16] += 296;
            v281 = *&v323[16];
            v282 = *(a3 + 8);
            v283 = *(a3 + 16);
            v284 = *&v323[8] + v282 - v283;
            sub_A7CAB8(v301, v282, v283, v284);
            v285 = *(a3 + 8);
            *(a3 + 8) = v284;
            *(a3 + 16) = v281;
            *(a3 + 24) = *&v323[24];
            if (v285)
            {
              operator delete(v285);
            }

            *(a3 + 16) = v281;
            v254 = *(&v358 + 1);
            if (*(&v358 + 1))
            {
LABEL_344:
              *&v359 = v254;
              operator delete(v254);
            }
          }

          else
          {
            sub_A32C84(*(a3 + 16), __p);
            *(a3 + 16) = v253 + 296;
            v254 = *(&v358 + 1);
            if (*(&v358 + 1))
            {
              goto LABEL_344;
            }
          }

          if (v357)
          {
            *(&v357 + 1) = v357;
            operator delete(v357);
          }

          if (*(&v355 + 1))
          {
            *&v356 = *(&v355 + 1);
            operator delete(*(&v355 + 1));
          }

          v255 = v354;
          if (v354)
          {
            v256 = *(&v354 + 1);
            v257 = v354;
            if (*(&v354 + 1) != v354)
            {
              do
              {
                v271 = *(v256 - 40);
                if (v271)
                {
                  *(v256 - 32) = v271;
                  operator delete(v271);
                }

                v272 = (v256 - 72);
                v273 = *(v256 - 72);
                if (v273)
                {
                  v274 = *(v256 - 64);
                  v270 = *(v256 - 72);
                  if (v274 != v273)
                  {
                    do
                    {
                      v275 = v274 - 168;
                      v276 = *(v274 - 8);
                      if (v276 != -1)
                      {
                        (off_2670F08[v276])(v323, v274 - 168);
                      }

                      *(v274 - 8) = -1;
                      v274 -= 168;
                    }

                    while (v275 != v273);
                    v270 = *v272;
                  }

                  *(v256 - 64) = v273;
                  operator delete(v270);
                }

                v256 -= 72;
              }

              while (v272 != v255);
              v257 = v354;
            }

            *(&v354 + 1) = v255;
            operator delete(v257);
          }

          if (SHIBYTE(v348) < 0)
          {
            operator delete(v346);
          }

          v303 += 16;
          _ZF = v303 == v300;
          continue;
        }

        break;
      }

      ++v298;
    }

    while (v298 != v297);
  }

  if (v296 != a1 + 60)
  {
    v286 = *(a1 + 503);
    if (*(a3 + 55) < 0)
    {
      if (v286 >= 0)
      {
        v287 = a1 + 60;
      }

      else
      {
        v287 = a1[60];
      }

      if (v286 >= 0)
      {
        v288 = *(a1 + 503);
      }

      else
      {
        v288 = a1[61];
      }

      sub_13B38(v296, v287, v288);
    }

    else if ((*(a1 + 503) & 0x80) != 0)
    {
      sub_13A68(v296, a1[60], a1[61]);
    }

    else
    {
      *v296 = *(a1 + 30);
      v296[2] = a1[62];
    }
  }

  v289 = *(a1 + 73);
  *(a3 + 120) = *(a1 + 71);
  *(a3 + 136) = v289;
  v290 = *(a1 + 77);
  *(a3 + 152) = *(a1 + 75);
  *(a3 + 168) = v290;
  v291 = *(a1 + 65);
  *(a3 + 56) = *(a1 + 63);
  *(a3 + 72) = v291;
  result = *(a1 + 67);
  v293 = *(a1 + 69);
  *(a3 + 88) = result;
  *(a3 + 104) = v293;
  return result;
}

void sub_B0AAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  STACK[0x238] = a18 + 240;
  sub_A31F30(&STACK[0x238]);
  v20 = *(a18 + 216);
  if (v20)
  {
    *(a18 + 224) = v20;
    operator delete(v20);
    v21 = a11;
    v22 = *a10;
    if (!*a10)
    {
LABEL_3:
      if (*(a18 + 55) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v21 = a11;
    v22 = *a10;
    if (!*a10)
    {
      goto LABEL_3;
    }
  }

  *(a18 + 200) = v22;
  operator delete(v22);
  if (*(a18 + 55) < 0)
  {
LABEL_4:
    operator delete(*v21);
    if (*v18)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  if (*v18)
  {
LABEL_5:
    sub_A95778(v18);
    operator delete(*v18);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

double sub_B0B004(uint64_t a1)
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

void sub_B0B1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B0B1D8(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 200);
    *(a1 + 200) = v3 + 1;
    v4 = *(a1 + 32);
    *&v13 = 0x1FFFFFFFELL;
    v5 = sub_A98E8C(v4, &v13);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, &v13);
      v6 = *(v8 + 8);
    }

    v22 = v6;
    sub_AE5278((a1 + 128), 0);
    v13 = xmmword_229B660;
    v14 = -1;
    v15 = v3;
    v16 = v2;
    v17 = 0;
    v18 = 0;
    v19 = 10 * v2;
    v20 = -1;
    v21 = 0x7FFFFFFF;
    v9 = *(a1 + 128);
    if (*(a1 + 136) == v9 || *(*(a1 + 128) + 4) == *v9)
    {
      sub_B0E3FC((a1 + 128), 0, &v13);
    }

    else if ((sub_B0E7AC(a1 + 128, &v13, 0, 0, 1) & 0x100) != 0)
    {
      sub_AE5FB0((a1 + 128), 0);
    }

    v10 = *(a1 + 120);
    v11 = v10 * (v6 + 1);
    v12 = v11 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_B0E1AC((a1 + 128), 0, v12, v11, v10 + v10 * *(a1 + 376), 2147483646))
      {
        return;
      }
    }

    else if (!sub_B0E1AC((a1 + 128), 0, v12, v11, 0xFFFFFFFF, 2147483646))
    {
      return;
    }

    if (*(a1 + 216) <= v6)
    {
      sub_4D9168(a1 + 208, v6 + 1, 0);
    }

    if (((*(*(a1 + 208) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
    {
      sub_DD38(a1 + 232, &v22);
      *(*(a1 + 208) + ((v22 >> 3) & 0x1FFFFFF8)) |= 1 << v22;
    }
  }
}

double sub_B0B3DC(uint64_t a1, int a2)
{
  sub_7E9A4(v69);
  v4 = *(a1 + 232);
  v66 = *(a1 + 240);
  if (v4 != v66)
  {
    v64 = a2 + 2;
    v65 = a2 + 1;
    v63 = ~a2;
    while (1)
    {
      v68 = *v4;
      v5 = *sub_A9C5E0((*(a1 + 32) + 88), v68);
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
      sub_AE5278((a1 + 128), 0);
      v13 = v65 + *(a1 + 120) + *(a1 + 120) * v68;
      v14 = *(a1 + 128);
      if (v13 >= (*(a1 + 136) - v14) >> 3)
      {
        goto LABEL_49;
      }

      v16 = (v14 + 8 * v13);
      v15 = v16[1];
      v17 = v15 - *v16;
      if (v15 == *v16)
      {
        goto LABEL_49;
      }

      v18 = 0;
      v19 = 0;
LABEL_20:
      while (2)
      {
        v20 = v18;
        v21 = *(a1 + 128);
        if (v13 >= (*(a1 + 136) - v21) >> 3 || (v22 = v21[2 * v13], v21[2 * v13 + 1] - v22 <= v19))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "key does not exist and cannot be added");
          goto LABEL_79;
        }

        v23 = v22 + v19;
        v24 = *(a1 + 152);
        if (v23 >= (*(a1 + 160) - v24) >> 6)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "index out of range");
LABEL_79:
        }

        v25 = (v24 + (v23 << 6));
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[3];
        v72 = v25[2];
        v73 = v28;
        v70 = v26;
        v71 = v27;
        v30 = *v21;
        v29 = v21[1];
        if (v29 != v30)
        {
          v31 = 0;
          v34 = (v24 + (v29 << 6));
          v35 = (v24 + (v30 << 6));
          while (1)
          {
            v36 = v35[7];
            if (v36 != 0x7FFFFFFF)
            {
              if (v36 <= SHIDWORD(v71) && v35[8] <= v72)
              {
                v37 = v35[9];
                if (v37 <= DWORD1(v72) && v35[10] <= DWORD2(v72) && (v37 != DWORD1(v72) || v36 != HIDWORD(v71) || 10 * v36 - v35[11] <= 10 * HIDWORD(v71) - HIDWORD(v72)))
                {
                  v33 = v31 << 8;
                  v18 = v20 | (v31 << 8);
                  if (++v19 == v17)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_20;
                }
              }

              if (SHIDWORD(v71) <= v36 && v72 <= v35[8])
              {
                v38 = v35[9];
                if (DWORD1(v72) <= v38 && DWORD2(v72) <= v35[10] && (DWORD1(v72) != v38 || HIDWORD(v71) != v36 || 10 * HIDWORD(v71) - HIDWORD(v72) <= 10 * v36 - v35[11]))
                {
                  v35[7] = 0x7FFFFFFF;
                  v31 = 1;
                }
              }
            }

            v35 += 16;
            if (v35 == v34)
            {
              goto LABEL_25;
            }
          }
        }

        v31 = 0;
LABEL_25:
        v32 = sub_B0E3FC((a1 + 128), 0, &v70);
        *(v32 + 52) = -1;
        *(v32 + 60) = 0x7FFFFFFF;
        v33 = v31 << 8;
        v18 = v20 | 1 | (v31 << 8);
        if (++v19 != v17)
        {
          continue;
        }

        break;
      }

LABEL_47:
      if (((v33 | v20) & 0x100) != 0)
      {
        sub_AE5FB0((a1 + 128), 0);
      }

LABEL_49:
      v39 = *(a1 + 128);
      v67 = v4;
      if (*(a1 + 136) != v39)
      {
        v40 = *(a1 + 152);
        v41 = *v39;
LABEL_51:
        v42 = (v40 + (v41 << 6));
        v43 = v40 + (v39[1] << 6);
        v44 = v68;
        if (v42 == v43)
        {
          goto LABEL_52;
        }

        goto LABEL_62;
      }

      sub_30B70(a1 + 128, 1uLL);
      v39 = *(a1 + 128);
      v40 = *(a1 + 152);
      v41 = *v39;
      if (*(a1 + 136) != v39)
      {
        goto LABEL_51;
      }

      sub_30B70(a1 + 128, 1uLL);
      v42 = (v40 + (v41 << 6));
      v43 = *(a1 + 152) + (*(*(a1 + 128) + 4) << 6);
      v44 = v68;
      if (v42 == v43)
      {
LABEL_52:
        v45 = *(a1 + 120);
        if (*(a1 + 20) == 1)
        {
          goto LABEL_53;
        }

        goto LABEL_69;
      }

LABEL_62:
      v52 = v43 - v42 - 64;
      if (v52 <= 0x3F)
      {
        v53 = v42;
        do
        {
LABEL_67:
          *v53 = v44;
          v59 = v53[7];
          v53[3] = v59;
          v53[4] = -1;
          v53[7] = v59 + v11;
          v53 += 16;
        }

        while (v53 != v43);
        goto LABEL_68;
      }

      v54 = (v52 >> 6) + 1;
      v53 = &v42[16 * (v54 & 0x7FFFFFFFFFFFFFELL)];
      v55 = v42 + 23;
      v56 = v54 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v55 - 23) = v44;
        *(v55 - 7) = v44;
        v57 = *(v55 - 16);
        v58 = *v55;
        *(v55 - 20) = v57;
        *(v55 - 19) = -1;
        *(v55 - 4) = v58;
        *(v55 - 3) = -1;
        *(v55 - 16) = v57 + v11;
        *v55 = v58 + v11;
        v55 += 32;
        v56 -= 2;
      }

      while (v56);
      if (v54 != (v54 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_67;
      }

LABEL_68:
      v44 = v68;
      v45 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
LABEL_53:
        v46 = v45 + v45 * *(a1 + 376) + 1;
        v47 = *(a1 + 48);
        if (v47)
        {
          goto LABEL_54;
        }

        goto LABEL_70;
      }

LABEL_69:
      v46 = -1;
      v47 = *(a1 + 48);
      if (v47)
      {
LABEL_54:
        if (*v47 > v44)
        {
          v48 = 0;
          v49 = *(a1 + 124) + v63;
          v50 = v49;
          while (v48 <= v49)
          {
            v51 = *sub_A9C7DC(v47 + 2, v47[1] * v44 + v50);
            v48 += 2;
            v50 -= 2;
            if (v51 != 0x7FFFFFFF)
            {
              goto LABEL_71;
            }
          }
        }

        v51 = 0x7FFFFFFF;
        goto LABEL_71;
      }

LABEL_70:
      v51 = 2147483646;
LABEL_71:
      if (sub_B0E1AC((a1 + 128), 0, v64 + v45 + v45 * v44, v45 + v45 * v44 + 1, v46, v51))
      {
        v60 = v68;
        if (*(a1 + 264) <= v68)
        {
          sub_4D9168(a1 + 256, v68 + 1, 0);
          v60 = v68;
        }

        if (((*(*(a1 + 256) + ((v60 >> 3) & 0x1FFFFFF8)) >> v60) & 1) == 0)
        {
          sub_DD38(a1 + 280, &v68);
          *(*(a1 + 256) + ((v68 >> 3) & 0x1FFFFFF8)) |= 1 << v68;
        }
      }

      v4 = v67 + 1;
      if (v67 + 1 == v66)
      {
        goto LABEL_76;
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

LABEL_76:
  result = sub_7EA60(v69) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

double sub_B0BA2C(uint64_t a1, int a2)
{
  sub_7E9A4(v189);
  v4 = *(a1 + 232);
  v177 = *(a1 + 240);
  if (v4 != v177)
  {
    v180 = a2 + 2;
    v181 = a2 + 1;
    v179 = ~a2;
    while (1)
    {
      v178 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A74644(&v183, *(a1 + 24), *v6);
      v7 = v184;
      v8 = 16;
      if (v188)
      {
        v8 = 32;
      }

      if (v184 < *(&v183 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v178 + 1;
      if (v178 + 1 == v177)
      {
        goto LABEL_264;
      }
    }

    while (1)
    {
      v12 = __ROR8__(*v7, 32);
      v13 = *(a1 + 32);
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
        goto LABEL_57;
      }

      if (*(v13 + 40))
      {
        break;
      }

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
          goto LABEL_57;
        }
      }

LABEL_53:
      if (v20 != -1)
      {
        v46 = v17 + 12 * v20;
        v47 = *(v46 + 8);
        if (v47 != -1)
        {
          goto LABEL_104;
        }

        goto LABEL_55;
      }

      v25 = -1;
      if (sub_A99094(*(a1 + 32), 1))
      {
LABEL_31:
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
          goto LABEL_94;
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
              goto LABEL_84;
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
LABEL_94:
            v39 = v33;
          }

          v69 = *(v13 + 48);
          if ((v69 - v37) >= 0x1555555555555555)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v63 = 1;
          while (__PAIR64__(v35, v36) != v12)
          {
            v33 = (v33 + v63) & v29;
            v64 = (v30 + 12 * v33);
            v36 = *v64;
            v35 = v64[1];
            ++v63;
            if (v31 == v35 && v32 == v36)
            {
              v37 = 0;
              goto LABEL_94;
            }
          }

LABEL_84:
          if (v33 != -1)
          {
            v46 = v30 + 12 * v33;
            v47 = *(v46 + 8);
            if (v47 != -1)
            {
              goto LABEL_104;
            }

            goto LABEL_55;
          }

          v39 = -1;
          v69 = *(v13 + 48);
          if ((v69 - v37) >= 0x1555555555555555)
          {
LABEL_269:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v37 && ((v70 = (v30 + 12 * v39), *(v13 + 36) == v70[1]) ? (v71 = *(v13 + 32) == *v70) : (v71 = 0), v71))
        {
          *(v13 + 40) = v37 - 1;
          v62 = 3 * v39;
        }

        else
        {
          *(v13 + 48) = v69 + 1;
          v62 = 3 * v39;
        }

        goto LABEL_103;
      }

LABEL_58:
      v53 = *(v13 + 40);
      v52 = *(v13 + 48);
      if ((v52 - v53) >= 0x1555555555555555)
      {
        goto LABEL_269;
      }

      v30 = *(v13 + 80);
      if (v53 && ((v54 = (v30 + 12 * v25), *(v13 + 36) == v54[1]) ? (v55 = *(v13 + 32) == *v54) : (v55 = 0), v55))
      {
        *(v13 + 40) = v53 - 1;
      }

      else
      {
        *(v13 + 48) = v52 + 1;
      }

      v62 = 3 * v25;
LABEL_103:
      v72 = 4 * v62;
      v73 = v30 + v72;
      *v73 = v12;
      *(v73 + 8) = -1;
      v46 = *(v13 + 80) + v72;
      v47 = *(v46 + 8);
      if (v47 != -1)
      {
LABEL_104:
        *(a1 + 576) = *(a1 + 576) + 1.0;
        if (v5 == v47)
        {
          goto LABEL_224;
        }

        goto LABEL_105;
      }

LABEL_55:
      v48 = *(v13 + 112);
      *(v13 + 112) = v48 + 1;
      *(v46 + 8) = v48;
      v50 = *(v13 + 96);
      v49 = *(v13 + 104);
      if (v50 >= v49)
      {
        v56 = *(v13 + 88);
        v57 = v50 - v56;
        v58 = (v50 - v56) >> 3;
        v59 = v58 + 1;
        if ((v58 + 1) >> 61)
        {
          sub_1794();
        }

        v60 = v49 - v56;
        if (v60 >> 2 > v59)
        {
          v59 = v60 >> 2;
        }

        if (v60 >= 0x7FFFFFFFFFFFFFF8)
        {
          v61 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v61 = v59;
        }

        if (v61)
        {
          if (!(v61 >> 61))
          {
            operator new();
          }

LABEL_268:
          sub_1808();
        }

        v66 = (v50 - v56) >> 3;
        v67 = (8 * v58);
        v68 = (8 * v58 - 8 * v66);
        *v67 = v12;
        v51 = v67 + 1;
        memcpy(v68, v56, v57);
        *(v13 + 88) = v68;
        *(v13 + 96) = v51;
        *(v13 + 104) = 0;
        if (v56)
        {
          operator delete(v56);
        }
      }

      else
      {
        *v50 = v12;
        v51 = v50 + 8;
      }

      *(v13 + 96) = v51;
      v47 = *(v46 + 8);
      *(a1 + 576) = *(a1 + 576) + 1.0;
      if (v5 == v47)
      {
LABEL_224:
        v9 = v185;
        v7 = (v184 + 12);
        v184 = v7;
        if (v7 == v185)
        {
          goto LABEL_240;
        }

        goto LABEL_225;
      }

LABEL_105:
      v74 = *(a1 + 128);
      v75 = *(a1 + 136);
      v182 = v47;
      if (v75 != v74)
      {
        v76 = *(a1 + 152);
        v77 = *v74;
LABEL_117:
        v85 = v76;
        goto LABEL_129;
      }

      v79 = 1 - ((v75 - v74) >> 3);
      v80 = *(a1 + 144);
      if (v79 > (v80 - v75) >> 3)
      {
        v81 = v80 - v74;
        v82 = v81 >> 2;
        if ((v81 >> 2) <= 1)
        {
          v82 = 1;
        }

        v170 = v81 >= 0x7FFFFFFFFFFFFFF8;
        v83 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v170)
        {
          v83 = v82;
        }

        if (!(v83 >> 61))
        {
          operator new();
        }

        goto LABEL_268;
      }

      bzero(v75, 8 * v79);
      v84 = &v75[2 * v79];
      *(a1 + 136) = v84;
      v74 = *(a1 + 128);
      v76 = *(a1 + 152);
      v77 = *v74;
      if (v74 != v84)
      {
        goto LABEL_117;
      }

      v78 = *(a1 + 144);
      if (v78 == v84)
      {
        v86 = 1;
        v87 = v78 - v74;
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

        if (v88)
        {
          if (!(v88 >> 61))
          {
            operator new();
          }

          goto LABEL_268;
        }

        *&dword_0 = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 8;
        *(a1 + 144) = 0;
        if (v74)
        {
          operator delete(v74);
        }
      }

      else
      {
        *v84 = 0;
        *(a1 + 136) = v84 + 2;
      }

      v74 = *(a1 + 128);
      v85 = *(a1 + 152);
LABEL_129:
      sub_AE55B4((a1 + 128), 0, (v76 + (v77 << 6)), (v85 + (v74[1] << 6)));
      v89 = v181 + *(a1 + 120) * (v5 + 1);
      v90 = *(a1 + 128);
      v91 = *(a1 + 136);
      if (v89 >= (v91 - v90) >> 3)
      {
        goto LABEL_176;
      }

      v92 = v90[2 * v89];
      v93 = v90[2 * v89 + 1];
      v94 = v93 - v92;
      if (v93 == v92)
      {
        goto LABEL_176;
      }

      v95 = 0;
      v96 = 0;
LABEL_132:
      while (2)
      {
        v97 = v95;
        v98 = *(a1 + 128);
        if (v89 >= (*(a1 + 136) - v98) >> 3 || (v99 = v98[2 * v89], v98[2 * v89 + 1] - v99 <= v96))
        {
          v175 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v175, "key does not exist and cannot be added");
          goto LABEL_267;
        }

        v100 = v99 + v96;
        v101 = *(a1 + 152);
        if (v100 >= (*(a1 + 160) - v101) >> 6)
        {
          v175 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v175, "index out of range");
LABEL_267:
        }

        v102 = (v101 + (v100 << 6));
        v103 = *v102;
        v104 = v102[1];
        v105 = v102[3];
        v192 = v102[2];
        v193 = v105;
        v190 = v103;
        v191 = v104;
        v107 = *v98;
        v106 = v98[1];
        if (v106 != v107)
        {
          v108 = 0;
          v111 = (v101 + (v106 << 6));
          v112 = (v101 + (v107 << 6));
          while (1)
          {
            v113 = v112[7];
            if (v113 != 0x7FFFFFFF)
            {
              if (v113 <= SHIDWORD(v191) && v112[8] <= v192)
              {
                v114 = v112[9];
                if (v114 <= DWORD1(v192) && v112[10] <= DWORD2(v192) && (v114 != DWORD1(v192) || v113 != HIDWORD(v191) || 10 * v113 - v112[11] <= 10 * HIDWORD(v191) - HIDWORD(v192)))
                {
                  v110 = v108 << 8;
                  v95 = v97 | (v108 << 8);
                  if (++v96 == v94)
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_132;
                }
              }

              if (SHIDWORD(v191) <= v113 && v192 <= v112[8])
              {
                v115 = v112[9];
                if (DWORD1(v192) <= v115 && DWORD2(v192) <= v112[10] && (DWORD1(v192) != v115 || HIDWORD(v191) != v113 || 10 * HIDWORD(v191) - HIDWORD(v192) <= 10 * v113 - v112[11]))
                {
                  v112[7] = 0x7FFFFFFF;
                  v108 = 1;
                }
              }
            }

            v112 += 16;
            if (v112 == v111)
            {
              goto LABEL_137;
            }
          }
        }

        v108 = 0;
LABEL_137:
        v109 = sub_B0E3FC((a1 + 128), 0, &v190);
        *(v109 + 52) = -1;
        *(v109 + 60) = 0x7FFFFFFF;
        v110 = v108 << 8;
        v95 = v97 | 1 | (v108 << 8);
        if (++v96 != v94)
        {
          continue;
        }

        break;
      }

LABEL_159:
      v116 = v110 | v97;
      v90 = *(a1 + 128);
      v91 = *(a1 + 136);
      if ((v116 & 0x100) != 0)
      {
        if (v91 != v90)
        {
          v117 = *(a1 + 152);
          v118 = *v90;
LABEL_162:
          v119 = v117 + (v118 << 6);
          v120 = v117 + (v90[1] << 6);
          if (v119 != v120)
          {
            goto LABEL_169;
          }

          goto LABEL_163;
        }

        sub_30B70(a1 + 128, 1uLL);
        v90 = *(a1 + 128);
        v117 = *(a1 + 152);
        v118 = *v90;
        if (*(a1 + 136) != v90)
        {
          goto LABEL_162;
        }

        sub_30B70(a1 + 128, 1uLL);
        v90 = *(a1 + 128);
        v119 = v117 + (v118 << 6);
        v120 = *(a1 + 152) + (v90[1] << 6);
        if (v119 == v120)
        {
LABEL_163:
          v119 = v120;
          if (*(a1 + 136) != v90)
          {
            goto LABEL_175;
          }

          goto LABEL_164;
        }

LABEL_169:
        while (*(v119 + 28) != 0x7FFFFFFF)
        {
          v119 += 64;
          if (v119 == v120)
          {
            v119 = v120;
            break;
          }
        }

        if (v120 == v119 || (v121 = v119 + 64, v119 + 64 == v120))
        {
          if (*(a1 + 136) != v90)
          {
            goto LABEL_175;
          }

LABEL_164:
          sub_30B70(a1 + 128, 1uLL);
          v90 = *(a1 + 128);
          goto LABEL_175;
        }

        do
        {
          if (*(v121 + 28) != 0x7FFFFFFF)
          {
            v125 = *v121;
            v126 = *(v121 + 16);
            v127 = *(v121 + 48);
            *(v119 + 32) = *(v121 + 32);
            *(v119 + 48) = v127;
            *v119 = v125;
            *(v119 + 16) = v126;
            v119 += 64;
          }

          v121 += 64;
        }

        while (v121 != v120);
        v90 = *(a1 + 128);
        if (*(a1 + 136) == v90)
        {
          goto LABEL_164;
        }

LABEL_175:
        sub_AE55B4((a1 + 128), 0, v119, (*(a1 + 152) + (v90[1] << 6)));
        v90 = *(a1 + 128);
        v91 = *(a1 + 136);
      }

LABEL_176:
      if (v91 != v90)
      {
        v122 = *(a1 + 152);
        v123 = *v90;
LABEL_190:
        v133 = v122;
        goto LABEL_204;
      }

      v128 = 1 - ((v91 - v90) >> 3);
      v129 = *(a1 + 144);
      if (v128 > (v129 - v91) >> 3)
      {
        v130 = v129 - v90;
        v131 = v130 >> 2;
        if ((v130 >> 2) <= 1)
        {
          v131 = 1;
        }

        v170 = v130 >= 0x7FFFFFFFFFFFFFF8;
        v132 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v170)
        {
          v132 = v131;
        }

        if (!(v132 >> 61))
        {
          operator new();
        }

        goto LABEL_268;
      }

      bzero(v91, 8 * v128);
      v134 = &v91[2 * v128];
      *(a1 + 136) = v134;
      v90 = *(a1 + 128);
      v122 = *(a1 + 152);
      v123 = *v90;
      if (v90 != v134)
      {
        goto LABEL_190;
      }

      v124 = *(a1 + 144);
      if (v124 == v134)
      {
        v135 = 1;
        v136 = v124 - v90;
        if ((v136 >> 2) > 1)
        {
          v135 = v136 >> 2;
        }

        if (v136 >= 0x7FFFFFFFFFFFFFF8)
        {
          v137 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v137 = v135;
        }

        if (v137)
        {
          if (!(v137 >> 61))
          {
            operator new();
          }

          goto LABEL_268;
        }

        *&dword_0 = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 8;
        *(a1 + 144) = 0;
        if (v90)
        {
          operator delete(v90);
        }
      }

      else
      {
        *v134 = 0;
        *(a1 + 136) = v134 + 2;
      }

      v90 = *(a1 + 128);
      v133 = *(a1 + 152);
LABEL_204:
      v138 = v122 + (v123 << 6);
      v139 = v133 + (v90[1] << 6);
      if (v138 != v139)
      {
        v140 = v184;
        do
        {
          *v138 = v5;
          *(v138 + 16) = -1;
          v141 = *(v138 + 28);
          *(v138 + 12) = v141.i32[0];
          v142 = *(v140 + 2);
          v143 = v142 / 10;
          v144 = v142 % 10;
          if (v142 < 0)
          {
            v145 = -5;
          }

          else
          {
            v145 = 5;
          }

          *(v138 + 28) = vadd_s32(vdup_n_s32(v143 + (((103 * (v145 + v144)) >> 15) & 1) + ((103 * (v145 + v144)) >> 10)), v141);
          v138 += 64;
        }

        while (v138 != v139);
      }

      v146 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v147 = v146 + v146 * *(a1 + 376) + 1;
        v148 = v182;
        v149 = *(a1 + 48);
        if (!v149)
        {
          goto LABEL_218;
        }
      }

      else
      {
        v147 = -1;
        v148 = v182;
        v149 = *(a1 + 48);
        if (!v149)
        {
LABEL_218:
          v153 = 2147483646;
          goto LABEL_220;
        }
      }

      if (*v149 > v148)
      {
        v150 = 0;
        v151 = *(a1 + 124) + v179;
        v152 = v151;
        while (v150 <= v151)
        {
          v153 = *sub_A9C7DC(v149 + 2, v149[1] * v148 + v152);
          v150 += 2;
          v152 -= 2;
          if (v153 != 0x7FFFFFFF)
          {
            goto LABEL_220;
          }
        }
      }

      v153 = 0x7FFFFFFF;
LABEL_220:
      v154 = v182 + 1;
      if ((sub_B0E1AC((a1 + 128), 0, v180 + v146 * v154, v146 * v154 + 1, v147, v153) & 1) == 0)
      {
        goto LABEL_224;
      }

      if (*(a1 + 264) <= v148)
      {
        sub_4D9168(a1 + 256, v154, 0);
      }

      v155 = v148 >> 6;
      v156 = 1 << v148;
      if ((*(*(a1 + 256) + 8 * v155) & v156) != 0)
      {
        goto LABEL_224;
      }

      v158 = *(a1 + 288);
      v157 = *(a1 + 296);
      if (v158 >= v157)
      {
        v160 = *(a1 + 280);
        v161 = v158 - v160;
        v162 = (v158 - v160) >> 2;
        v163 = v162 + 1;
        if ((v162 + 1) >> 62)
        {
          sub_1794();
        }

        v164 = v157 - v160;
        if (v164 >> 1 > v163)
        {
          v163 = v164 >> 1;
        }

        if (v164 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v165 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v165 = v163;
        }

        if (v165)
        {
          if (!(v165 >> 62))
          {
            operator new();
          }

          goto LABEL_268;
        }

        v166 = (v158 - v160) >> 2;
        v167 = (4 * v162);
        v168 = (4 * v162 - 4 * v166);
        *v167 = v182;
        v159 = v167 + 1;
        memcpy(v168, v160, v161);
        *(a1 + 280) = v168;
        *(a1 + 288) = v159;
        *(a1 + 296) = 0;
        if (v160)
        {
          operator delete(v160);
        }
      }

      else
      {
        *v158 = v182;
        v159 = v158 + 4;
      }

      *(a1 + 288) = v159;
      *(*(a1 + 256) + 8 * v155) |= v156;
      v9 = v185;
      v7 = (v184 + 12);
      v184 = v7;
      if (v7 == v185)
      {
LABEL_240:
        v7 = v186;
        v184 = v186;
        v10 = 1;
        v188 = 1;
        goto LABEL_241;
      }

LABEL_225:
      v10 = v188;
LABEL_241:
      v11 = v187;
      if (v10)
      {
        v169 = v187;
      }

      else
      {
        v169 = v9;
      }

      v170 = *(v183 + 16) != 1 || v7 >= v169;
      if (!v170)
      {
        while (1)
        {
          v171 = __ROR8__(*v7, 32);
          if (HIDWORD(v171) == 1 && (v171 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v183 + 4120)))
          {
            v7 = v184;
            v9 = v185;
            v10 = v188;
            break;
          }

          v9 = v185;
          v7 = (v184 + 12);
          v184 = v7;
          if (v7 == v185)
          {
            v7 = v186;
            v184 = v186;
            v10 = 1;
            v188 = 1;
            if (v186 >= v187)
            {
              break;
            }
          }

          else
          {
            v10 = v188;
            v173 = 16;
            if (v188)
            {
              v173 = 32;
            }

            if (v7 >= *(&v183 + v173))
            {
              break;
            }
          }
        }

        v11 = v187;
      }

      if (v10)
      {
        v9 = v11;
      }

      if (v7 >= v9)
      {
        goto LABEL_3;
      }
    }

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
        goto LABEL_53;
      }

      v20 = (v20 + v26) & v14;
      v27 = (v17 + 12 * v20);
      v23 = *v27;
      v22 = v27[1];
      ++v26;
    }

    while (v18 != v22 || v19 != v23);
    if (v25 != -1)
    {
      if (sub_A99094(*(a1 + 32), 1))
      {
        goto LABEL_31;
      }

      goto LABEL_58;
    }

LABEL_57:
    v25 = v20;
    if (sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_264:
  result = sub_7EA60(v189) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

void sub_B0CB44(uint64_t a1)
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