void sub_A4FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  sub_A30978(&a49);
  sub_9FFE48(&STACK[0x210]);
  sub_9FFEB4(&STACK[0x250]);
  sub_A30CBC(v49);
  _Unwind_Resume(a1);
}

uint64_t sub_A4FC74(void *a1, unint64_t a2)
{
  if (HIDWORD(a2) == 1 && (a2 + 3) < 2)
  {
    return -1;
  }

  v4 = sub_502FF8(*a1 + 24, __ROR8__(a2, 32), 0, "stop");
  v5 = (v4 - *v4);
  if (*v5 >= 5u && (v6 = v5[2]) != 0)
  {
    v3 = *(v4 + v6);
    v7 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    v7 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v8 = &v7[-*v7];
  if (*v8 < 0xDu || (v9 = *(v8 + 6)) == 0)
  {
LABEL_18:
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return v3;
  }

  v12 = *(v11 + 5);
  if (!v12 || !v10[v12])
  {
    return v3;
  }

  return nullsub_1(v3);
}

void sub_A4FDCC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v6 = 0x34F72C234F72C235 * ((*(a2 + 32) - *(a2 + 24)) >> 3);
  v8 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (v6 == 0x14C1BACF914C1BADLL * ((v7 - v8) >> 3) && v7 != v8)
  {
    v14 = 0;
    do
    {
      v16 = *(a3 + 8) + 296 * v14;
      if (*(v16 + 200) == *(v16 + 208))
      {
        LODWORD(v25[0]) = 41;
        v20 = *(a5 + 8);
        if (v20 < *(a5 + 16))
        {
          *v20 = 41;
          *(v20 + 8) = 0x8000000080000000;
          *(v20 + 16) = 0;
          *(v20 + 20) = 0x8000000080000000;
          *(v20 + 28) = 0;
          *(v20 + 32) = 0x8000000080000000;
          *(v20 + 40) = 0;
          *(v20 + 44) = 0x8000000080000000;
          *(v20 + 52) = 0;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 120) = 0u;
          *(v20 + 136) = 0u;
          *(v20 + 152) = 0;
          *(v20 + 156) = -1;
          *(v20 + 160) = 0;
          *(v20 + 172) = 0;
          *(v20 + 164) = 0;
          *(v20 + 184) = 0;
          *(v20 + 192) = 0;
          *(v20 + 176) = 0;
          *(v20 + 200) = 0;
          *(v20 + 208) = 0x3FF0000000000000;
          *(v20 + 216) = 0;
          *(v20 + 224) = 0;
          *(v20 + 232) = 0;
          v15 = v20 + 240;
        }

        else
        {
          sub_A5B71C(a5, v25);
        }

        *(a5 + 8) = v15;
      }

      else
      {
        v17 = (*(a2 + 24) + 232 * v14);
        v38 = 0;
        v39[0] = v17;
        sub_A4D898(v25, a1, a4, v16, v39, &v38);
        if (v37 == 1)
        {
          v18 = *(a5 + 8);
          if (v18 >= *(a5 + 16))
          {
            v19 = sub_A5BA70(a5, v25);
          }

          else
          {
            *v18 = 0;
            sub_A31084((v18 + 2), v25);
            v19 = (v18 + 60);
          }
        }

        else
        {
          LODWORD(v39[0]) = 3;
          v21 = *(a5 + 8);
          if (v21 >= *(a5 + 16))
          {
            sub_A5B71C(a5, v39);
          }

          else
          {
            *v21 = 3;
            *(v21 + 8) = 0x8000000080000000;
            *(v21 + 16) = 0;
            *(v21 + 20) = 0x8000000080000000;
            *(v21 + 28) = 0;
            *(v21 + 32) = 0x8000000080000000;
            *(v21 + 40) = 0;
            *(v21 + 44) = 0x8000000080000000;
            *(v21 + 52) = 0;
            *(v21 + 56) = 0u;
            *(v21 + 72) = 0u;
            *(v21 + 88) = 0u;
            *(v21 + 104) = 0u;
            *(v21 + 120) = 0u;
            *(v21 + 136) = 0u;
            *(v21 + 152) = 0;
            *(v21 + 156) = -1;
            *(v21 + 160) = 0;
            *(v21 + 172) = 0;
            *(v21 + 164) = 0;
            *(v21 + 184) = 0;
            *(v21 + 192) = 0;
            *(v21 + 176) = 0;
            *(v21 + 200) = 0;
            *(v21 + 208) = 0x3FF0000000000000;
            *(v21 + 216) = 0;
            *(v21 + 224) = 0;
            *(v21 + 232) = 0;
            v19 = v21 + 240;
          }
        }

        *(a5 + 8) = v19;
        if (v37 == 1)
        {
          v22 = __p;
          if (__p)
          {
            v23 = v36;
            v24 = __p;
            if (v36 != __p)
            {
              do
              {
                v23 -= 80;
                sub_3ED230(v23);
              }

              while (v23 != v22);
              v24 = __p;
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

          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }

          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }

          v39[0] = &v26;
          sub_A30A34(v39);
        }
      }

      ++v14;
    }

    while (v14 != v6);
  }
}

void sub_A50110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  *(v39 + 8) = v40;
  if (a39 == 1)
  {
    sub_A30978(&a10);
    sub_A448F4(v39);
    _Unwind_Resume(a1);
  }

  sub_A448F4(v39);
  _Unwind_Resume(a1);
}

void sub_A50170(void *a1@<X0>, int *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 92) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  sub_5F328(a5 + 112);
  *(a5 + 4) = a2[1];
  v9 = a3[6];
  v212 = a3[7];
  v213 = a2;
  v235 = a3;
  v211 = v10;
  v219 = a1;
  if (v9 != v212)
  {
    do
    {
      *v236 = xmmword_22A7450;
      LODWORD(v237) = -1;
      v242 = 0;
      v241 = 0uLL;
      __p[1] = 0;
      v239 = 0;
      __p[0] = 0;
      v240 = 0;
      LOBYTE(v243[0]) = 1;
      *(v243 + 4) = 0x8000000080000000;
      v244[1] = 0;
      v245 = 0;
      v244[0] = 0;
      if (*(v9 + 120) != -1)
      {
        v240 = *(v9 + 120);
      }

      v249 = 0;
      v217 = v9;
      v12 = *(v9 + 104) - *(v9 + 96);
      if (v12)
      {
        v13 = 0;
        v216 = 0xEEEEEEEEEEEEEEEFLL * (v12 >> 2);
        do
        {
          v15 = *(v217 + 96) + 60 * v13;
          sub_A81CC8(a1, v15, v253);
          v218 = v13;
          v16 = v253[0];
          v220 = v253[1];
          v221 = v15;
          if (v253[0] == v253[1])
          {
            v17 = 0;
            v41 = 0;
          }

          else
          {
            v232 = 0;
            v17 = 0;
            do
            {
              v18 = v249++;
              v222 = *v16;
              v19 = v16[3];
              v224 = v16[2];
              v226 = v16[4];
              v228 = *(v15 + 40);
              if (v228 == -1)
              {
                v26 = v16[3];
                v20 = sub_A56700(a1 + 523, v16, v19, 0x7FFFFFFF);
                v28 = v27;
                v23 = sub_A56A5C(a1 + 523, v16, v16[4], 0x7FFFFFFF);
                LOWORD(v22) = HIBYTE(v28);
                v21 = v28;
                v24 = v29;
                LOWORD(v25) = v30;
                v19 = v26;
              }

              else
              {
                v20 = *(v15 + 4);
                v21 = *(v15 + 12);
                v22 = HIBYTE(*(v15 + 12));
                v23 = *(v15 + 16);
                v24 = *(v15 + 24);
                v25 = HIBYTE(*(v15 + 24));
              }

              v31 = &v17[-v232];
              v32 = 0x193D4BB7E327A977 * (&v17[-v232] >> 4) + 1;
              if (v32 > 0x39B0AD12073615)
              {
                sub_1794();
              }

              if (0x327A976FC64F52EELL * (-v232 >> 4) > v32)
              {
                v32 = 0x327A976FC64F52EELL * (-v232 >> 4);
              }

              if ((0x193D4BB7E327A977 * (-v232 >> 4)) >= 0x1CD85689039B0ALL)
              {
                v33 = 0x39B0AD12073615;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                if (v33 <= 0x39B0AD12073615)
                {
                  operator new();
                }

                sub_1808();
              }

              v34 = 16 * (&v17[-v232] >> 4);
              *v34 = v18;
              *(v34 + 4) = v222;
              *(v34 + 12) = v224;
              *(v34 + 16) = v19;
              *(v34 + 20) = v226;
              *(v34 + 24) = v20;
              *(v34 + 32) = v21 | (v22 << 8);
              *(v34 + 36) = v23;
              *(v34 + 44) = v24 | (v25 << 8);
              *(v34 + 48) = v228;
              *(v34 + 52) = 0;
              *(v34 + 56) = 0;
              *(v34 + 60) = 0;
              v35 = v34 - v31;
              *(v34 + 1128) = 0;
              v15 = v221;
              if (v232 != v17)
              {
                v36 = v34 - v31;
                v37 = v232;
                do
                {
                  *v36 = 0;
                  *(v36 + 1128) = -1;
                  v38 = *(v37 + 1128);
                  if (v38 != -1)
                  {
                    v250 = v36;
                    (off_26707E8[v38])(&v250, v37);
                    *(v36 + 1128) = v38;
                  }

                  v37 += 1136;
                  v36 += 1136;
                }

                while (v37 != v17);
                v39 = v232;
                v15 = v221;
                do
                {
                  v40 = *(v39 + 1128);
                  if (v40 != -1)
                  {
                    (off_26707C0[v40])(&v250, v39);
                  }

                  *(v39 + 1128) = -1;
                  v39 += 1136;
                }

                while (v39 != v17);
              }

              v17 = (v34 + 1136);
              if (v232)
              {
                operator delete(v232);
              }

              v232 = v35;
              a1 = v219;
              v16 += 5;
            }

            while (v16 != v220);
            v16 = v253[0];
            v41 = v232;
          }

          if (v16)
          {
            v253[1] = v16;
            operator delete(v16);
          }

          if (v41 != v17)
          {
            v246[0] = 0;
            v246[1] = 0;
            v247 = 0;
            v250 = v246;
            LOBYTE(v251) = 0;
            if ((0x193D4BB7E327A977 * ((v17 - v41) >> 4)) <= 0x39B0AD12073615)
            {
              operator new();
            }

            sub_1794();
          }

          LOBYTE(v246[0]) = 0;
          v248 = 0;
          if (v17 && (operator delete(v41), (v248 & 1) != 0))
          {
            v42 = v246[1];
            v43 = v246[0];
            for (i = 0; v43 != v42; v43 += 284)
            {
              if (v43[282])
              {
                sub_5AF20();
              }

              v45 = i;
              v46 = i >> 6;
              if (((i >> 6) + 1) >> 58)
              {
                sub_1794();
              }

              if (i >> 6 != -1)
              {
                if (!(((i >> 6) + 1) >> 58))
                {
                  operator new();
                }

                sub_1808();
              }

              v47 = (v46 << 6);
              v48 = *v43;
              v49 = *(v43 + 1);
              v50 = *(v43 + 3);
              v47[2] = *(v43 + 2);
              v47[3] = v50;
              *v47 = v48;
              v47[1] = v49;
              i = (v46 << 6) + 64;
              memcpy(0, 0, v45);
            }

            v51 = *(v221 + 56);
            v52 = __p[1];
            if (__p[1] >= v239)
            {
              v55 = __p[0];
              v56 = (__p[1] - __p[0]) >> 5;
              v57 = v56 + 1;
              v54 = v218;
              if ((v56 + 1) >> 59)
              {
                sub_1794();
              }

              v58 = v239 - __p[0];
              if ((v239 - __p[0]) >> 4 > v57)
              {
                v57 = v58 >> 4;
              }

              if (v58 >= 0x7FFFFFFFFFFFFFE0)
              {
                v59 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                if (!(v59 >> 59))
                {
                  operator new();
                }

                sub_1808();
              }

              v60 = (__p[1] - __p[0]) >> 5;
              v61 = 32 * v56;
              *v61 = 0;
              *(v61 + 8) = i;
              *(v61 + 16) = 0;
              *(v61 + 24) = v51;
              v62 = (v61 - 32 * v60);
              if (v55 != v52)
              {
                v63 = v55;
                v64 = v62;
                do
                {
                  *v64 = *v63;
                  v64[2] = v63[2];
                  *v63 = 0;
                  v63[1] = 0;
                  v63[2] = 0;
                  *(v64 + 24) = *(v63 + 24);
                  v63 += 4;
                  v64 += 4;
                }

                while (v63 != v52);
                do
                {
                  v65 = *v55;
                  if (*v55)
                  {
                    v55[1] = v65;
                    operator delete(v65);
                  }

                  v55 += 4;
                }

                while (v55 != v52);
                v55 = __p[0];
              }

              v53 = (v61 + 32);
              __p[0] = v62;
              __p[1] = (v61 + 32);
              v239 = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *__p[1] = 0;
              v52[1] = i;
              v52[2] = 0;
              v53 = v52 + 4;
              *(v52 + 24) = v51;
              v54 = v218;
            }

            __p[1] = v53;
            if (v248)
            {
              v66 = v246[0];
              if (v246[0])
              {
                v67 = v246[1];
                v14 = v246[0];
                if (v246[1] != v246[0])
                {
                  do
                  {
                    v68 = v67 - 1136;
                    v69 = *(v67 - 2);
                    if (v69 != -1)
                    {
                      (off_26707C0[v69])(v253, v67 - 1136);
                    }

                    *(v67 - 2) = -1;
                    v67 -= 1136;
                  }

                  while (v68 != v66);
                  v14 = v246[0];
                }

                v246[1] = v66;
                operator delete(v14);
              }
            }
          }

          else
          {
            v54 = v218;
            if (v218 <= v240)
            {
              v240 = 0;
            }
          }

          v13 = v54 + 1;
          a1 = v219;
        }

        while (v13 != v216);
      }

      sub_A5BC7C(v253, a1, v217 + 124);
      *v236 = *v253;
      LODWORD(v237) = v254;
      v71 = *(v217 + 184);
      v70 = *(v217 + 192);
      if (v71 != v70)
      {
        v72 = *(&v241 + 1);
        v230 = *(v217 + 192);
        do
        {
          while (1)
          {
            v73 = *v71;
            v74 = v71[1];
            v76 = v71[2];
            v75 = v71[3];
            v77 = v71[4];
            v78 = *(v71 + 3);
            v79 = *(v71 + 32);
            if (v72 >= v242)
            {
              break;
            }

            *v72 = v73;
            *(v72 + 4) = v74;
            *(v72 + 8) = v76;
            *(v72 + 12) = v75;
            *(v72 + 16) = v77;
            *(v72 + 24) = v78;
            *(v72 + 32) = v79;
            *(v72 + 33) = v253[0];
            *(v72 + 36) = *(v253 + 3);
            v72 += 40;
            *(&v241 + 1) = v72;
            v71 += 10;
            if (v71 == v70)
            {
              goto LABEL_101;
            }
          }

          v80 = v241;
          v81 = 0xCCCCCCCCCCCCCCCDLL * ((v72 - v241) >> 3);
          v82 = v81 + 1;
          if (v81 + 1 > 0x666666666666666)
          {
            sub_1794();
          }

          if (0x999999999999999ALL * ((v242 - v241) >> 3) > v82)
          {
            v82 = 0x999999999999999ALL * ((v242 - v241) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v242 - v241) >> 3) >= 0x333333333333333)
          {
            v83 = 0x666666666666666;
          }

          else
          {
            v83 = v82;
          }

          if (v83)
          {
            if (v83 <= 0x666666666666666)
            {
              operator new();
            }

            sub_1808();
          }

          v84 = v72;
          v85 = 8 * ((v72 - v241) >> 3);
          *v85 = v73;
          *(v85 + 4) = v74;
          *(v85 + 8) = v76;
          *(v85 + 12) = v75;
          *(v85 + 16) = v77;
          *(v85 + 24) = v78;
          *(v85 + 32) = v79;
          v72 = 40 * v81 + 40;
          v86 = 40 * v81 - (v84 - v80);
          memcpy((v85 - (v84 - v80)), v80, v84 - v80);
          *&v241 = v86;
          *(&v241 + 1) = v72;
          v242 = 0;
          if (v80)
          {
            operator delete(v80);
          }

          v70 = v230;
          *(&v241 + 1) = v72;
          v71 += 10;
        }

        while (v71 != v230);
      }

LABEL_101:
      LOBYTE(v243[0]) = *(v217 + 208);
      *(v243 + 4) = *(v217 + 212);
      v87 = *(v217 + 172);
      v88 = sub_A57920((v219 + 4136), *(v217 + 152));
      v89 = (v88 - *v88);
      if (*v89 >= 9u && (v90 = v89[4]) != 0)
      {
        v91 = (v88 + v90 + *(v88 + v90));
      }

      else
      {
        v91 = 0;
      }

      v92 = __ROR8__(*sub_A571D4(v91, v87), 32);
      v250 = 0x1FFFFFFFELL;
      v251 = v92;
      if (sub_A5436C(a4, &v250))
      {
        v93 = sub_A5436C(a4, &v250);
        if (!v93)
        {
          goto LABEL_286;
        }

        if (v93[4] == v93[5])
        {
          v108 = v249++;
          v109 = *v213;
          *(v253 + 4) = v92;
          LODWORD(v253[0]) = v108;
          HIDWORD(v253[1]) = v109;
          LODWORD(v254) = v109;
          v257 = 4;
          sub_A5BE18(v246, v253, 1uLL);
          a3 = v235;
          if (v257 != -1)
          {
            (off_26707C0[v257])(&v252, v253);
          }

          goto LABEL_112;
        }

        if (!sub_A5436C(a4, &v250))
        {
LABEL_286:
          sub_49EC("unordered_map::at: key not found");
        }

        sub_A5350C();
        *v246 = *v253;
        v247 = v254;
      }

      else
      {
        v246[0] = 0;
        v246[1] = 0;
        v247 = 0;
      }

      a3 = v235;
LABEL_112:
      v94 = v244[0];
      if (v244[0])
      {
        v95 = v244[1];
        v96 = v244[0];
        if (v244[1] != v244[0])
        {
          do
          {
            v97 = v95 - 1136;
            v98 = *(v95 - 2);
            if (v98 != -1)
            {
              (off_26707C0[v98])(v253, v95 - 1136);
            }

            *(v95 - 2) = -1;
            v95 -= 1136;
          }

          while (v97 != v94);
          v96 = v244[0];
        }

        v244[1] = v94;
        operator delete(v96);
      }

      *v244 = *v246;
      v245 = v247;
      v99 = *(a5 + 64);
      if (v99 >= *(a5 + 72))
      {
        v102 = sub_A5BF80((a5 + 56), v236);
        v103 = v244[0];
        *(a5 + 64) = v102;
        if (v103)
        {
          v104 = v244[1];
          v105 = v103;
          if (v244[1] != v103)
          {
            do
            {
              v106 = v104 - 1136;
              v107 = *(v104 - 2);
              if (v107 != -1)
              {
                (off_26707C0[v107])(v253, v104 - 1136);
              }

              *(v104 - 2) = -1;
              v104 -= 1136;
            }

            while (v106 != v103);
            v105 = v244[0];
          }

          v244[1] = v103;
          operator delete(v105);
        }
      }

      else
      {
        v100 = *v236;
        *(v99 + 16) = v237;
        *v99 = v100;
        *(v99 + 32) = 0;
        *(v99 + 40) = 0;
        *(v99 + 24) = 0;
        *(v99 + 24) = *__p;
        *(v99 + 40) = v239;
        __p[0] = 0;
        __p[1] = 0;
        v239 = 0;
        *(v99 + 48) = v240;
        *(v99 + 56) = 0;
        *(v99 + 64) = 0;
        *(v99 + 72) = 0;
        *(v99 + 56) = v241;
        *(v99 + 72) = v242;
        v241 = 0uLL;
        v242 = 0;
        v101 = v243[0];
        *(v99 + 88) = v243[1];
        *(v99 + 80) = v101;
        *(v99 + 96) = 0;
        *(v99 + 104) = 0;
        *(v99 + 112) = 0;
        *(v99 + 96) = *v244;
        *(v99 + 112) = v245;
        v244[0] = 0;
        v244[1] = 0;
        v245 = 0;
        *(a5 + 64) = v99 + 120;
      }

      if (v241)
      {
        *(&v241 + 1) = v241;
        operator delete(v241);
      }

      v110 = __p[0];
      a1 = v219;
      if (__p[0])
      {
        v111 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          v112 = __p[1];
          do
          {
            v114 = *(v112 - 4);
            v112 -= 32;
            v113 = v114;
            if (v114)
            {
              *(v111 - 3) = v113;
              operator delete(v113);
            }

            v111 = v112;
          }

          while (v112 != v110);
          v11 = __p[0];
          a1 = v219;
        }

        __p[1] = v110;
        operator delete(v11);
      }

      v9 = v217 + 248;
    }

    while (v217 + 248 != v212);
  }

  v115 = a3[3];
  v231 = a3 + 3;
  for (j = a3[4]; v115 != j; v115 += 160)
  {
    v253[0] = 0;
    v253[1] = 0;
    v254 = 0;
    *v255 = xmmword_22A7450;
    *&v255[16] = -1;
    *&v255[20] = 256;
    v117 = *(v115 + 72);
    v118 = *(v115 + 80);
    if (v117 != v118)
    {
      v119 = 0;
      do
      {
        v120 = *v117;
        if (v119 < v254)
        {
          *v119 = v120;
          v119 += 8;
        }

        else
        {
          v121 = v253[0];
          v122 = v119 - v253[0];
          v123 = (v119 - v253[0]) >> 3;
          v124 = v123 + 1;
          if ((v123 + 1) >> 61)
          {
            sub_1794();
          }

          v125 = v254 - v253[0];
          if ((v254 - v253[0]) >> 2 > v124)
          {
            v124 = v125 >> 2;
          }

          if (v125 >= 0x7FFFFFFFFFFFFFF8)
          {
            v126 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v126 = v124;
          }

          if (v126)
          {
            if (!(v126 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v127 = (v119 - v253[0]) >> 3;
          v128 = (8 * v123);
          v129 = (8 * v123 - 8 * v127);
          *v128 = v120;
          v119 = (v128 + 1);
          memcpy(v129, v121, v122);
          v253[0] = v129;
          v253[1] = v119;
          v254 = 0;
          if (v121)
          {
            operator delete(v121);
          }
        }

        v253[1] = v119;
        v117 += 4;
      }

      while (v117 != v118);
    }

    sub_A5BC7C(v236, v219, v115 + 96);
    *v255 = *v236;
    *&v255[16] = v237;
    *&v255[20] = *(v115 + 156);
    v130 = *(a5 + 40);
    if (v130 < *(a5 + 48))
    {
      *v130 = 0;
      *(v130 + 8) = 0;
      *(v130 + 16) = 0;
      *v130 = *v253;
      *(v130 + 16) = v254;
      v253[0] = 0;
      v253[1] = 0;
      v254 = 0;
      v116 = *&v255[14];
      *(v130 + 24) = *v255;
      *(v130 + 38) = v116;
      *(a5 + 40) = v130 + 48;
    }

    else
    {
      v131 = sub_A5C188((a5 + 32), v253);
      v132 = v253[0];
      *(a5 + 40) = v131;
      if (v132)
      {
        v253[1] = v132;
        operator delete(v132);
      }
    }
  }

  v133 = v235;
  v134 = *v235;
  v223 = v235[1];
  if (*v235 != v223)
  {
    while (1)
    {
      v236[0] = 0;
      v236[1] = 0;
      v237 = 0;
      LOBYTE(__p[0]) = *(v134 + 104);
      v135 = *(v134 + 80);
      v227 = *(v134 + 88);
      if (v135 != v227)
      {
        break;
      }

LABEL_252:
      v200 = *(a5 + 16);
      if (v200 < *(a5 + 24))
      {
        *v200 = 0;
        *(v200 + 8) = 0;
        *(v200 + 16) = 0;
        *v200 = *v236;
        *(v200 + 16) = v237;
        v236[0] = 0;
        v236[1] = 0;
        v237 = 0;
        *(v200 + 24) = __p[0];
        *(a5 + 16) = v200 + 32;
      }

      else
      {
        v201 = sub_A5C860((a5 + 8), v236);
        v202 = v236[0];
        *(a5 + 16) = v201;
        if (v202)
        {
          v203 = v236[1];
          v204 = v202;
          if (v236[1] != v202)
          {
            do
            {
              v205 = *(v203 - 3);
              if (v205)
              {
                *(v203 - 2) = v205;
                operator delete(v205);
              }

              v206 = v203 - 56;
              v207 = *(v203 - 7);
              if (v207)
              {
                *(v203 - 6) = v207;
                operator delete(v207);
              }

              v203 -= 56;
            }

            while (v206 != v202);
            v204 = v236[0];
          }

          v236[1] = v202;
          operator delete(v204);
        }
      }

      v134 += 112;
      if (v134 == v223)
      {
        goto LABEL_263;
      }
    }

    v225 = v134;
    while (1)
    {
      *&v255[8] = 0;
      *&v255[16] = 0;
      v256 = 0;
      v253[1] = 0;
      v254 = 0;
      v253[0] = 0;
      v255[0] = *(v135 + 104);
      v136 = *(v135 + 80);
      v137 = *(v135 + 88);
      v229 = v135;
      if (v136 != v137)
      {
        v138 = 0;
        do
        {
          v139 = *v136;
          if (v138 < v254)
          {
            *v138 = v139;
            v138 += 8;
          }

          else
          {
            v140 = v253[0];
            v141 = v138 - v253[0];
            v142 = (v138 - v253[0]) >> 3;
            v143 = v142 + 1;
            if ((v142 + 1) >> 61)
            {
              sub_1794();
            }

            v144 = v254 - v253[0];
            if ((v254 - v253[0]) >> 2 > v143)
            {
              v143 = v144 >> 2;
            }

            if (v144 >= 0x7FFFFFFFFFFFFFF8)
            {
              v145 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v145 = v143;
            }

            if (v145)
            {
              if (!(v145 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v146 = (v138 - v253[0]) >> 3;
            v147 = (8 * v142);
            v148 = (8 * v142 - 8 * v146);
            *v147 = v139;
            v138 = (v147 + 1);
            memcpy(v148, v140, v141);
            v253[0] = v148;
            v253[1] = v138;
            v254 = 0;
            if (v140)
            {
              operator delete(v140);
            }
          }

          v253[1] = v138;
          v136 += 4;
        }

        while (v136 != v137);
        v136 = *(v229 + 80);
        v137 = *(v229 + 88);
      }

      if (v136 != v137)
      {
        break;
      }

LABEL_223:
      v187 = 126 - 2 * __clz((*&v255[16] - *&v255[8]) >> 3);
      if (*&v255[16] == *&v255[8])
      {
        v188 = 0;
      }

      else
      {
        v188 = v187;
      }

      sub_95F8B4(*&v255[8], *&v255[16], v246, v188, 1);
      v190 = *&v255[8];
      v189 = *&v255[16];
      if (*&v255[8] == *&v255[16])
      {
        v134 = v225;
        v191 = v229;
      }

      else
      {
        v134 = v225;
        v191 = v229;
        while (1)
        {
          v192 = v190 + 8;
          if (v190 + 8 == *&v255[16])
          {
            break;
          }

          v193 = *v190 == *(v190 + 8) && *(v190 + 4) == *(v190 + 12);
          v190 += 8;
          if (v193)
          {
            v194 = v192 + 8;
            v195 = v192 - 8;
            if (v194 == *&v255[16])
            {
              v196 = v195 + 8;
              if (v195 + 8 == *&v255[16])
              {
                break;
              }
            }

            else
            {
              do
              {
                if (*v195 != *v194 || *(v195 + 4) != *(v194 + 4))
                {
                  v199 = *(v194 + 4);
                  *(v195 + 8) = *v194;
                  v195 += 8;
                  *(v195 + 4) = v199;
                }

                v194 += 8;
              }

              while (v194 != v189);
              v196 = v195 + 8;
              if (v195 + 8 == *&v255[16])
              {
                break;
              }
            }

            *&v255[16] = v196;
            v197 = v236[1];
            if (v236[1] < v237)
            {
              goto LABEL_237;
            }

            goto LABEL_246;
          }
        }
      }

      v197 = v236[1];
      if (v236[1] >= v237)
      {
LABEL_246:
        v236[1] = sub_A5C530(v236, v253);
        if (*&v255[8])
        {
          *&v255[16] = *&v255[8];
          operator delete(*&v255[8]);
        }
      }

      else
      {
LABEL_237:
        v197[1] = 0;
        v197[2] = 0;
        *v197 = 0;
        *v197 = *v253;
        v197[2] = v254;
        v253[0] = 0;
        v253[1] = 0;
        v254 = 0;
        *(v197 + 24) = v255[0];
        v197[5] = 0;
        v197[6] = 0;
        v197[4] = 0;
        *(v197 + 2) = *&v255[8];
        v197[6] = v256;
        *&v255[16] = 0;
        v256 = 0;
        *&v255[8] = 0;
        v236[1] = v197 + 7;
      }

      if (v253[0])
      {
        v253[1] = v253[0];
        operator delete(v253[0]);
      }

      v135 = v191 + 112;
      if (v135 == v227)
      {
        goto LABEL_252;
      }
    }

    v234 = v137;
LABEL_190:
    v149 = sub_A5C314(v231, *v136);
    v150 = *(v149 + 72);
    v151 = *(v149 + 80);
    while (1)
    {
      while (1)
      {
        if (v150 == v151)
        {
          v136 += 4;
          if (v136 == v234)
          {
            goto LABEL_223;
          }

          goto LABEL_190;
        }

        v152 = v133[6] + 248 * *v150;
        v154 = *(v152 + 224);
        v153 = *(v152 + 232);
        v155 = v153 - v154;
        v156 = (v153 - v154) >> 3;
        if (v156 >= 1)
        {
          break;
        }

LABEL_191:
        v150 += 4;
      }

      v157 = *&v255[16];
      if (v256 - *&v255[16] < v155)
      {
        break;
      }

      if (v154 == v153)
      {
        v150 += 4;
      }

      else
      {
        if ((v155 - 8) < 0x18)
        {
          goto LABEL_211;
        }

        if (*&v255[16] - v154 < 0x20uLL)
        {
          goto LABEL_211;
        }

        v163 = ((v155 - 8) >> 3) + 1;
        v164 = 8 * (v163 & 0x3FFFFFFFFFFFFFFCLL);
        v165 = &v154[v164];
        v166 = (*&v255[16] + v164);
        v167 = (*&v255[16] + 16);
        v168 = (v154 + 16);
        v169 = v163 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v170 = *v168;
          *(v167 - 1) = *(v168 - 1);
          *v167 = v170;
          v167 += 2;
          v168 += 2;
          v169 -= 4;
        }

        while (v169);
        v154 = v165;
        v157 = v166;
        if (v163 != (v163 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_211:
          v166 = v157;
          do
          {
            v171 = *v154;
            v154 += 8;
            *v166++ = v171;
          }

          while (v154 != v153);
        }

        *&v255[16] = v166;
        v150 += 4;
      }
    }

    v158 = (*&v255[16] - *&v255[8]) >> 3;
    v159 = v158 + v156;
    if (v159 >> 61)
    {
      sub_1794();
    }

    v160 = v256 - *&v255[8];
    if ((v256 - *&v255[8]) >> 2 > v159)
    {
      v159 = v160 >> 2;
    }

    if (v160 >= 0x7FFFFFFFFFFFFFF8)
    {
      v161 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v161 = v159;
    }

    if (v161)
    {
      if (!(v161 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v172 = 8 * v158;
    v173 = (8 * v158 + v155);
    if ((v155 - 8) < 0x18)
    {
      v162 = v172;
    }

    else
    {
      v162 = v172;
      if (*&v255[16] - *&v255[8] - v154 >= 0x20uLL)
      {
        v174 = ((v155 - 8) >> 3) + 1;
        v175 = 8 * (v174 & 0x3FFFFFFFFFFFFFFCLL);
        v162 = (v172 + v175);
        v176 = &v154[v175];
        v177 = (v154 + 16);
        v178 = (v172 + 16);
        v179 = v174 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v180 = *v177;
          *(v178 - 1) = *(v177 - 1);
          *v178 = v180;
          v177 += 2;
          v178 += 2;
          v179 -= 4;
        }

        while (v179);
        v154 = v176;
        if (v174 == (v174 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_221:
          v182 = *&v255[16] - v157;
          memcpy(v173, v157, *&v255[16] - v157);
          v183 = &v173[v182];
          *&v255[16] = v157;
          v184 = *&v255[8];
          v185 = v157 - *&v255[8];
          v186 = (v172 - (v157 - *&v255[8]));
          memcpy(v186, *&v255[8], v185);
          *&v255[8] = v186;
          *&v255[16] = v183;
          v256 = 0;
          v133 = v235;
          if (v184)
          {
            operator delete(v184);
          }

          goto LABEL_191;
        }
      }
    }

    do
    {
      v181 = *v154;
      v154 += 8;
      *v162 = v181;
      v162 += 8;
    }

    while (v162 != v173);
    goto LABEL_221;
  }

LABEL_263:
  v208 = *(v133 + 18);
  if (v208 != -1)
  {
    *(a5 + 104) = v208;
  }

  v209 = v133[6];
  for (k = v133[7]; v209 != k; v209 += 248)
  {
    sub_95F494(a5 + 80, *(a5 + 88), *(v209 + 224), *(v209 + 232), (*(v209 + 232) - *(v209 + 224)) >> 3);
  }

  sub_A51D40((a5 + 80));
  if (v211 != v133 + 10)
  {
    *(a5 + 144) = *(v133 + 28);
    sub_618D4(v211, v133[12], 0);
  }
}

void sub_A518F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 80);
  if (v19)
  {
    *(a17 + 88) = v19;
    operator delete(v19);
  }

  sub_21E3944(a17);
  _Unwind_Resume(a1);
}

void sub_A51D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a65)
  {
    JUMPOUT(0xA51D20);
  }

  JUMPOUT(0xA51C5CLL);
}

uint64_t sub_A51D40(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_95F8B4(v2, v3, &v15, v5, 1);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_22:
    if (v8 != v7)
    {
      a1[1] = v8;
    }
  }

  else
  {
    v9 = v8 - 8;
    while (v9 + 16 != v7)
    {
      v10 = *(v9 + 8);
      v9 += 8;
      if (v10 == *(v9 + 8) && *(v9 + 4) == *(v9 + 12))
      {
        v12 = v9 + 16;
        if (v9 + 16 != v7)
        {
          do
          {
            if (*v9 != *v12 || *(v9 + 4) != *(v12 + 4))
            {
              v14 = *(v12 + 4);
              *(v9 + 8) = *v12;
              v9 += 8;
              *(v9 + 4) = v14;
            }

            v12 += 8;
          }

          while (v12 != v7);
          v7 = a1[1];
        }

        v8 = v9 + 8;
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_A51E58(uint64_t a1, int a2)
{
  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  v2 = (a1 + 200);
  if (v3 == v4)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  if (v4 - v3 == 72 && v3[24] == 1)
  {
    v5 = *v3;
    v6 = *(*v3 + 160);
LABEL_8:
    if (v6 == 1)
    {
      v7 = *(v5 + 4) | (*(v5 + 4) << 32);
      return v7 | (HIDWORD(v7) << 32);
    }

    if (!v6)
    {
      v7 = *(v5 + 8);
      return v7 | (HIDWORD(v7) << 32);
    }

LABEL_37:
    sub_5AF20();
  }

  v5 = *v3;
  v6 = *(*v3 + 160);
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_37;
    }

    if (*(v5 + 8) != *(v5 + 4))
    {
      goto LABEL_8;
    }
  }

  else if (*(v5 + 20) != *(v5 + 8))
  {
    goto LABEL_8;
  }

  v10 = sub_A532F0(v2, 1uLL);
  v11 = *v10;
  v12 = *(*v10 + 160);
  if (!a2)
  {
    if (v12 == 1)
    {
      v14 = *(v11 + 4) | (*(v11 + 4) << 32);
      v15 = 0;
      if (HIDWORD(v14) != 0x7FFFFFFF)
      {
LABEL_25:
        v17 = v15 / -10;
        v18 = v15 % 10;
        if (v15 < 0)
        {
          v19 = -5;
        }

        else
        {
          v19 = 5;
        }

        v20 = v17 + HIDWORD(v14) + (((-103 * (v19 + v18)) >> 15) & 1) + ((-103 * (v19 + v18)) >> 10);
        goto LABEL_33;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_37;
      }

      v14 = *(v11 + 8);
      v15 = *(v11 + 4);
      if (HIDWORD(v14) != 0x7FFFFFFF && v15 != 0x7FFFFFFF)
      {
        goto LABEL_25;
      }
    }

    v17 = v15 / -10;
    v18 = v15 % 10;
    v20 = 0x7FFFFFFFLL;
LABEL_33:
    v21 = v17 + v14;
    if (v15 < 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = 5;
    }

    return (v21 + (((-103 * (v22 + v18)) >> 15) & 1) + ((-103 * (v22 + v18)) >> 10)) | (v20 << 32);
  }

  if (v12 == 1)
  {
    v13 = *(v11 + 4) | (*(v11 + 4) << 32);
  }

  else
  {
    if (v12)
    {
      goto LABEL_37;
    }

    v13 = *(v11 + 8);
  }

  return v13 | (HIDWORD(v13) << 32);
}

uint64_t sub_A520DC(uint64_t a1)
{
  v3 = *(a1 + 200);
  v2 = *(a1 + 208);
  v1 = (a1 + 200);
  if (v3 == v2)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v4 = v2 - v3;
  if (v2 - v3 == 72 && *(v3 + 24) == 1)
  {
    v5 = *(v2 - 72);
    v6 = *(v5 + 160);
    goto LABEL_8;
  }

  v5 = *(v2 - 72);
  v6 = *(v5 + 160);
  if (!v6)
  {
    if (*(v5 + 20) != *(v5 + 8))
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = sub_A532F0(v1, 0x8E38E38E38E38E39 * (v4 >> 3) - 2);
    v5 = *v8;
    v9 = *(*v8 + 160);
    if (v9 != 1)
    {
      if (!v9)
      {
        return *(v5 + 20);
      }

      goto LABEL_15;
    }

    return *(v5 + 8) | (*(v5 + 8) << 32);
  }

  if (v6 != 1)
  {
    goto LABEL_15;
  }

  if (*(v5 + 8) == *(v5 + 4))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v6 != 1)
  {
    if (!v6)
    {
      return *(v5 + 20);
    }

LABEL_15:
    sub_5AF20();
  }

  return *(v5 + 8) | (*(v5 + 8) << 32);
}

void sub_A521F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v49 = *(a4 + 12);
  if (!sub_A5436C(a3, &v49))
  {
    if (!sub_7E7E4(1u))
    {
LABEL_39:
      ++*a5;
      *a1 = 0;
      *(a1 + 24) = 0;
      return;
    }

    sub_19594F8(&v39);
    sub_4A5C(&v39, "Unable to unpack walking from stop ", 35);
    sub_A4FC74((a2 + 4120), *(a4 + 12));
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " to stop ", 9);
    sub_A4FC74((a2 + 4120), *(a4 + 20));
    v11 = std::ostream::operator<<();
    sub_4A5C(v11, " (expected duration: ", 21);
    *__p = *a4;
    *&__p[12] = *(a4 + 12);
    v38 = 1;
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " dsec): no valid path found; journey will be dropped from response", 66);
    (nullsub_1998)(&v34, __p);
    if ((v48 & 0x10) != 0)
    {
      v24 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v24 = v44;
      }

      v25 = v43;
      v13 = v24 - v43;
      if (v24 - v43 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v13 = 0;
        __p[23] = 0;
LABEL_34:
        __p[v13] = 0;
        sub_7E854(__p, 1u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }

        std::locale::~locale(&v40);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_39;
      }

      v25 = v41;
      v13 = v42 - v41;
      if (v42 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_43:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    __p[23] = v13;
    if (v13)
    {
      memmove(__p, v25, v13);
    }

    goto LABEL_34;
  }

  if (!sub_A5436C(a3, &v49))
  {
    sub_49EC("unordered_map::at: key not found");
  }

  *&__p[8] = 0;
  *&__p[16] = 0;
  v36 = 0x7FFFFFFF;
  sub_A5350C();
  *__p = v39;
  *&__p[16] = v40;
  v36 = v41;
  if (v41 == 0x7FFFFFFF)
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_61;
    }

    sub_19594F8(&v39);
    sub_4A5C(&v39, "Unable to unpack walking from stop ", 35);
    sub_A4FC74((a2 + 4120), *(a4 + 12));
    v14 = std::ostream::operator<<();
    sub_4A5C(v14, " to stop ", 9);
    sub_A4FC74((a2 + 4120), *(a4 + 20));
    v15 = std::ostream::operator<<();
    sub_4A5C(v15, "; journey will be dropped from response", 39);
    if ((v48 & 0x10) != 0)
    {
      v26 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v26 = v44;
      }

      v27 = v43;
      v16 = v26 - v43;
      if (v26 - v43 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v16 = 0;
        v35 = 0;
LABEL_56:
        *(&v34 + v16) = 0;
        sub_7E854(&v34, 1u);
        if (v35 < 0)
        {
          operator delete(v34);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }

        std::locale::~locale(&v40);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_61:
        ++*a5;
        *a1 = 0;
        *(a1 + 24) = 0;
        v23 = *__p;
        if (!*__p)
        {
          return;
        }

        goto LABEL_62;
      }

      v27 = v41;
      v16 = v42 - v41;
      if (v42 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_45:
        sub_3244();
      }
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v35 = v16;
    if (!v16)
    {
      goto LABEL_56;
    }

LABEL_55:
    memmove(&v34, v27, v16);
    goto LABEL_56;
  }

  if (v41 > *(a4 + 8))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_61;
    }

    sub_19594F8(&v39);
    sub_4A5C(&v39, "Unable to unpack walking from stop ", 35);
    sub_A4FC74((a2 + 4120), *(a4 + 12));
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " to stop ", 9);
    sub_A4FC74((a2 + 4120), *(a4 + 20));
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, ": expected arrival time ", 24);
    v20 = sub_258D4(v19);
    v21 = sub_4A5C(v20, " but got ", 9);
    v22 = sub_258D4(v21);
    sub_4A5C(v22, "; journey will be dropped from response", 39);
    if ((v48 & 0x10) != 0)
    {
      v28 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v28 = v44;
      }

      v29 = &v43;
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v16 = 0;
        v35 = 0;
        goto LABEL_56;
      }

      v29 = &v41;
      v28 = v42;
    }

    v27 = *v29;
    v16 = v28 - *v29;
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v35 = v28 - *v29;
    if (!v16)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  sub_93BED8(a1, __p);
  *(a1 + 24) = 1;
  v23 = *__p;
  if (!*__p)
  {
    return;
  }

LABEL_62:
  v30 = *&__p[8];
  v31 = v23;
  if (*&__p[8] != v23)
  {
    do
    {
      v32 = (v30 - 1136);
      v33 = *(v30 - 8);
      if (v33 != -1)
      {
        (off_26707C0[v33])(&v39, v30 - 1136);
      }

      *(v30 - 8) = -1;
      v30 -= 1136;
    }

    while (v32 != v23);
    v31 = *__p;
  }

  *&__p[8] = v23;
  operator delete(v31);
}

void sub_A52AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a41);
    sub_A542C4(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a41);
  sub_A542C4(&a16);
  _Unwind_Resume(a1);
}

char **sub_A52C1C(char **a1)
{
  if (*(a1 + 24) == 1)
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
          v5 = v3 - 1136;
          v6 = *(v3 - 2);
          if (v6 != -1)
          {
            (off_26707C0[v6])(&v8, v3 - 1136);
          }

          *(v3 - 2) = -1;
          v3 -= 1136;
        }

        while (v5 != v2);
        v4 = *a1;
      }

      a1[1] = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_A52CD0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v70 = 0;
  v71 = 0;
  v72 = 0;
  __p = 0;
  v68 = 0;
  v69 = 0;
  v4 = 64;
  if (a4)
  {
    v4 = 88;
  }

  v5 = (a3 + v4);
  v6 = *v5;
  v66 = v5[1];
  if (*v5 != v66)
  {
    v7 = a2;
    if (a4)
    {
      v8 = 0;
      while (1)
      {
        while (1)
        {
          v9 = sub_A56F04((v7 + 4136), *(v6 + 28), *(v6 + 48), *(v6 + 36));
          v11 = v10;
          v12 = *(v6 + 4);
          v13 = *(v6 + 8);
          v14 = *(v6 + 12);
          v15 = *(v6 + 13);
          v16 = *(v6 + 48);
          v17 = sub_A57920((v7 + 4136), *(v6 + 28));
          v18 = (v17 - *v17);
          if (*v18 >= 9u && (v19 = v18[4]) != 0)
          {
            v20 = (v17 + v19 + *(v17 + v19));
          }

          else
          {
            v20 = 0;
          }

          v21 = *(sub_A571D4(v20, v16) + 12);
          if (v8 >= v72)
          {
            break;
          }

          *v8 = v9;
          *(v8 + 8) = v11;
          *(v8 + 12) = v21;
          *(v8 + 16) = v12;
          *(v8 + 20) = v13;
          *(v8 + 24) = v14;
          *(v8 + 25) = v15;
          v8 += 28;
          v71 = v8;
          v6 += 60;
          if (v6 == v66)
          {
            goto LABEL_24;
          }
        }

        v65 = v15;
        v22 = v70;
        v23 = v8 - v70;
        v24 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v70) >> 2);
        v25 = v24 + 1;
        if ((v24 + 1) > 0x924924924924924)
        {
          goto LABEL_67;
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2) > v25)
        {
          v25 = 0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2);
        }

        v26 = (0x6DB6DB6DB6DB6DB7 * ((v72 - v70) >> 2)) >= 0x492492492492492 ? 0x924924924924924 : v25;
        if (v26)
        {
          break;
        }

        v27 = 28 * v24;
        *v27 = v9;
        *(v27 + 8) = v11;
        *(v27 + 12) = v21;
        *(v27 + 16) = v12;
        *(v27 + 20) = v13;
        *(v27 + 24) = v14;
        *(v27 + 25) = v65;
        v8 = 28 * v24 + 28;
        v28 = (v27 - v23);
        memcpy((v27 - v23), v22, v23);
        v70 = v28;
        v72 = 0;
        if (v22)
        {
          operator delete(v22);
        }

        v7 = a2;
        v71 = v8;
        v6 += 60;
        if (v6 == v66)
        {
          goto LABEL_24;
        }
      }

      if (v26 <= 0x924924924924924)
      {
        operator new();
      }

LABEL_68:
      sub_1808();
    }

    v62 = 0;
    do
    {
      v30 = sub_A56F04((v7 + 4136), *(v6 + 28), *(v6 + 48), *(v6 + 36));
      v32 = v31;
      v34 = *(v6 + 4);
      v33 = *(v6 + 8);
      v35 = *(v6 + 12);
      v36 = *(v6 + 13);
      v37 = *(v6 + 48);
      v38 = sub_A57920((v7 + 4136), *(v6 + 28));
      v39 = (v38 - *v38);
      if (*v39 >= 9u && (v40 = v39[4]) != 0)
      {
        v41 = (v38 + v40 + *(v38 + v40));
      }

      else
      {
        v41 = 0;
      }

      v42 = *(sub_A571D4(v41, v37) + 12);
      v43 = *(v6 + 4);
      v44 = *(a3 + 8);
      if (v43 >= v44)
      {
        if (v43 > v44)
        {
          if (v62 >= v69)
          {
            v52 = __p;
            v53 = v62 - __p;
            v54 = 0x6DB6DB6DB6DB6DB7 * ((v62 - __p) >> 2);
            v55 = v54 + 1;
            if ((v54 + 1) > 0x924924924924924)
            {
LABEL_67:
              sub_1794();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v69 - __p) >> 2) > v55)
            {
              v55 = 0xDB6DB6DB6DB6DB6ELL * ((v69 - __p) >> 2);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v69 - __p) >> 2)) >= 0x492492492492492)
            {
              v56 = 0x924924924924924;
            }

            else
            {
              v56 = v55;
            }

            if (v56)
            {
              if (v56 <= 0x924924924924924)
              {
                operator new();
              }

              goto LABEL_68;
            }

            v59 = 4 * ((v62 - __p) >> 2);
            *v59 = v30;
            *(v59 + 8) = v32;
            *(v59 + 12) = v42;
            *(v59 + 16) = v34;
            *(v59 + 20) = v33;
            *(v59 + 24) = v35;
            *(v59 + 25) = v36;
            v60 = (28 * v54 - v53);
            memcpy(v60, v52, v53);
            __p = v60;
            v69 = 0;
            if (v52)
            {
              operator delete(v52);
            }

            v7 = a2;
            v51 = 28 * v54 + 28;
          }

          else
          {
            *v62 = v30;
            *(v62 + 8) = v32;
            *(v62 + 12) = v42;
            *(v62 + 16) = v34;
            *(v62 + 20) = v33;
            *(v62 + 24) = v35;
            *(v62 + 25) = v36;
            v51 = v62 + 28;
          }

          v62 = v51;
          v68 = v51;
        }
      }

      else
      {
        v45 = v71;
        if (v71 < v72)
        {
          *v71 = v30;
          *(v45 + 2) = v32;
          *(v45 + 3) = v42;
          *(v45 + 4) = v34;
          *(v45 + 5) = v33;
          v45[24] = v35;
          v29 = (v45 + 28);
          v45[25] = v36;
        }

        else
        {
          v46 = v70;
          v47 = v71 - v70;
          v48 = 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 2);
          v49 = v48 + 1;
          if ((v48 + 1) > 0x924924924924924)
          {
            goto LABEL_67;
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2) > v49)
          {
            v49 = 0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v72 - v70) >> 2)) >= 0x492492492492492)
          {
            v50 = 0x924924924924924;
          }

          else
          {
            v50 = v49;
          }

          if (v50)
          {
            if (v50 <= 0x924924924924924)
            {
              operator new();
            }

            goto LABEL_68;
          }

          v57 = 4 * ((v71 - v70) >> 2);
          *v57 = v30;
          *(v57 + 8) = v32;
          *(v57 + 12) = v42;
          *(v57 + 16) = v34;
          *(v57 + 20) = v33;
          *(v57 + 24) = v35;
          *(v57 + 25) = v36;
          v29 = 28 * v48 + 28;
          v58 = (28 * v48 - v47);
          memcpy(v58, v46, v47);
          v70 = v58;
          v72 = 0;
          if (v46)
          {
            operator delete(v46);
          }

          v7 = a2;
        }

        v71 = v29;
      }

      v6 += 60;
    }

    while (v6 != v66);
  }

LABEL_24:
  sub_A57FC4(a1, &v70, &__p);
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }
}

void sub_A53298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a20;
    if (!a20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v22 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A532F0(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 72 * a2;
}

void sub_A5342C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_A5350C()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v80 = v6;
  v76 = v0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  if (v1 == v2)
  {
LABEL_102:
    *(sub_93BED8(v76, &v184) + 6) = v5;
    goto LABEL_103;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  v78 = v3;
  v79 = v2;
  while (1)
  {
    v12 = *(v9 + 1632);
    if (v12 == 3)
    {
      break;
    }

    if (v12 == 2)
    {
      v48 = (*v7)++;
      *v170 = v48;
      *&v170[4] = v5;
      v49 = *(v9 + 16);
      v50 = v49 / 10;
      v51 = v49 % 10;
      if (v49 < 0)
      {
        v52 = -5;
      }

      else
      {
        v52 = 5;
      }

      v5 += v50 + (((103 * (v52 + v51)) >> 15) & 1) + ((103 * (v52 + v51)) >> 10);
      *&v170[8] = v5;
      *&v170[12] = *(v9 + 8);
      v53 = v185;
      if (v185 < v186)
      {
        v10 = *v170;
        *(v185 + 16) = *&v170[16];
        *v53 = v10;
        *(v53 + 1128) = 2;
        v11 = v53 + 1136;
      }

      else
      {
        v11 = sub_A549B0(&v184, v170);
      }

      v185 = v11;
    }

    else if (v12 == 1)
    {
      *&v170[4] = xmmword_22A7460;
      *&v170[20] = xmmword_22A7470;
      *&v170[36] = 0xFFFFFFFFLL;
      v172 = 0;
      v173 = 0;
      __p = 0;
      v174 = 0;
      v13 = (*v7)++;
      *v170 = v13;
      *&v170[4] = sub_A54564((v9 + 8));
      *&v170[12] = v14;
      *&v170[16] = sub_A54564((v9 + 264));
      *&v170[24] = v15;
      *&v170[28] = v5;
      v16 = *(v9 + 552);
      v17 = v16 / 10;
      v18 = v16 % 10;
      if (v16 < 0)
      {
        v19 = -5;
      }

      else
      {
        v19 = 5;
      }

      *&v170[32] = v17 + v5 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10);
      *&v170[36] = *(v9 + 520);
      v20 = *(v9 + 528);
      v21 = *(v9 + 536);
      if (v20 != v21)
      {
        operator new();
      }

      if (__p)
      {
        v172 = __p;
        operator delete(__p);
      }

      __p = 0;
      v172 = 0;
      v173 = 0;
      v22 = *(v9 + 528);
      v23 = *(v9 + 536);
      v7 = v78;
      if (v22 == v23)
      {
LABEL_50:
        v174 = 0;
        v5 = *&v170[32];
        v44 = v185;
        if (v185 >= v186)
        {
          goto LABEL_69;
        }
      }

      else
      {
        while (1)
        {
          v24 = *(v80 + 4160);
          v25 = __ROR8__(*v22, 32);
          v81[0] = "transfer";
          LODWORD(v82[0]) = v25;
          LODWORD(v83[0]) = 0;
          *v84 = v83;
          *&v84[8] = v82;
          v26 = *(v24 + 3880) + 1;
          *(v24 + 3880) = v26;
          v27 = *(v24 + 24);
          if (!v27)
          {
LABEL_116:
            sub_2C9894(v84);
LABEL_117:
            exception = __cxa_allocate_exception(0x40uLL);
            v187 = HIDWORD(v25);
            LODWORD(v83[0]) = v25;
            v82[0] = sub_7FCF0(6u);
            v82[1] = v72;
            sub_2C956C("Failed to acquire entity ", v81, " in quad node ", " at position ", " on layer ", v82, v84);
            if (v84[23] >= 0)
            {
              v73 = v84;
            }

            else
            {
              v73 = *v84;
            }

            if (v84[23] >= 0)
            {
              v74 = v84[23];
            }

            else
            {
              v74 = *&v84[8];
            }

            v75 = sub_2D390(exception, v73, v74);
          }

          if (*(v24 + 616) == v25)
          {
            ++*(v24 + 3888);
            *(v24 + 624) = v26;
            v28 = *(v24 + 632);
            if (!v28)
            {
              goto LABEL_116;
            }
          }

          else if (*(v24 + 640) == v25)
          {
            ++*(v24 + 3888);
            *(v24 + 648) = v26;
            v28 = *(v24 + 656);
            if (!v28)
            {
              goto LABEL_116;
            }
          }

          else if (*(v24 + 664) == v25)
          {
            ++*(v24 + 3888);
            *(v24 + 672) = v26;
            v28 = *(v24 + 680);
            if (!v28)
            {
              goto LABEL_116;
            }
          }

          else if (*(v24 + 688) == v25)
          {
            ++*(v24 + 3888);
            *(v24 + 696) = v26;
            v28 = *(v24 + 704);
            if (!v28)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v29 = *(v24 + 672);
            v30 = *(v24 + 648);
            v31 = *(v24 + 624);
            v77 = *(v24 + 696);
            v28 = sub_2D52A4(v27, 6, v25, 1);
            if (v31 >= v26)
            {
              v32 = v26;
            }

            else
            {
              v32 = v31;
            }

            if (v31 >= v26)
            {
              v33 = 0;
            }

            else
            {
              v33 = 24;
            }

            if (v30 < v32)
            {
              v32 = v30;
              v33 = 25;
            }

            if (v29 < v32)
            {
              v33 = 26;
              v32 = v29;
            }

            v34 = v77 >= v32;
            v35 = 27;
            if (v34)
            {
              v35 = v33;
            }

            v36 = v24 + 40 + 24 * v35;
            *v36 = v82[0];
            *(v36 + 8) = *(v24 + 3880);
            *(v36 + 16) = v28;
            v7 = v78;
            if (!v28)
            {
              goto LABEL_116;
            }
          }

          v37 = (v28 + *v28);
          v38 = (v37 - *v37);
          if (*v38 < 0x23u)
          {
            goto LABEL_117;
          }

          v39 = v38[17];
          if (!v39)
          {
            goto LABEL_117;
          }

          v40 = (v37 + v39 + *(v37 + v39));
          if (*v40 <= HIDWORD(v25))
          {
            goto LABEL_117;
          }

          v41 = (&v40[HIDWORD(v25) + 1] + v40[HIDWORD(v25) + 1]);
          v42 = (v41 - *v41);
          if (*v42 < 0xBu)
          {
            break;
          }

          v43 = v42[5];
          if (!v43 || *(v41 + v43) == -1)
          {
            break;
          }

          if (++v22 == v23)
          {
            goto LABEL_50;
          }
        }

        v174 = 1;
        v5 = *&v170[32];
        v44 = v185;
        if (v185 >= v186)
        {
LABEL_69:
          v47 = sub_A545EC(&v184, v170);
LABEL_70:
          v8 = v79;
          v185 = v47;
          if (__p)
          {
            v172 = __p;
            operator delete(__p);
          }

          goto LABEL_5;
        }
      }

      v45 = *v170;
      v46 = *&v170[16];
      *(v44 + 28) = *&v170[28];
      *(v44 + 48) = 0;
      *v44 = v45;
      *(v44 + 16) = v46;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      if (v172 != __p)
      {
        if (((v172 - __p) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      *(v44 + 72) = v174;
      *(v44 + 1128) = 1;
      v47 = v44 + 1136;
      goto LABEL_70;
    }

LABEL_5:
    v9 += 1640;
    if (v9 == v8)
    {
      goto LABEL_102;
    }
  }

  sub_A54BA4(v170, v9 + 8);
  if (*(v80 + 16) != 1 || (v182 & 1) != 0)
  {
    *&v84[4] = xmmword_22A7460;
    *&v84[20] = 0xFFFFFFFFLL;
    memset(v85, 0, sizeof(v85));
    v86 = 0;
    v87 = -1;
    v88 = 0xFFFF;
    v89 = -1;
    v90 = 0;
    v91 = 0;
    v92[0] = 0;
    *(v92 + 6) = 0;
    v93 = 0x7FFFFFFF;
    v94 = 0x7FFFFFFF;
    v96 = 0;
    v95 = 0x7FFFFFFF7FFFFFFFLL;
    v97 = 0;
    v98 = 0x8000000080000000;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
    v103 = 0x7FFFFFFF;
    v104 = 0x8000000080000000;
    v105 = 0;
    v106 = xmmword_2297C00;
    v107 = -1;
    v108 = -1;
    v109 = 0;
    *(v111 + 6) = 0;
    v110 = 0;
    v111[0] = 0;
    v112 = 0x7FFFFFFF;
    v116 = 0;
    v115 = 0;
    v113 = 0x7FFFFFFF;
    v114 = 0x7FFFFFFF7FFFFFFFLL;
    v117 = 0x8000000080000000;
    v121 = 0;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v122 = 0x7FFFFFFF;
    v123 = 0x8000000080000000;
    v124 = 0;
    v125 = xmmword_2297C00;
    v126 = -1;
    v127 = 0x7FFFFFFF;
    v128 = 0x7FFFFFFF7FFFFFFFLL;
    v130 = 0;
    v131 = 0;
    v129 = 0;
    v132 = 0x8000000080000000;
    v133 = 0x7FFFFFFF;
    v134 = 0x7FFFFFFFFFFFFFFFLL;
    v135 = 0x8000000080000000;
    v136 = 0x7FFFFFFF;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    *&v54 = 0x8000000080000000;
    *(&v54 + 1) = 0x8000000080000000;
    v152 = v54;
    v153 = v54;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v55 = (*v7)++;
    *v84 = v55;
    if (v176 == 2)
    {
      if (v175)
      {
LABEL_124:
        sub_5AF20();
      }

      *&v84[4] = *v170 << 32;
      *&v84[12] = *&v170[4];
      v56 = v180;
      if (v180 != 2)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v176 != 1)
      {
        if (v176)
        {
          *&v84[4] = 0xFFFFFFFF00000003;
          *&v84[12] = 0;
          v56 = v180;
          if (v180 == 2)
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v175)
          {
            goto LABEL_124;
          }

          *&v84[4] = (*v170 << 32) | 3;
          *&v84[12] = *&v170[4];
          v56 = v180;
          if (v180 == 2)
          {
            goto LABEL_76;
          }
        }

LABEL_82:
        if (v56 == 1)
        {
          if (v179)
          {
LABEL_125:
            sub_5AF20();
          }

          v57 = v178;
          v58 = (v177 << 32) | 4;
        }

        else if (v56)
        {
          v57 = 0;
          v58 = 0xFFFFFFFF00000003;
        }

        else
        {
          if (v179)
          {
            goto LABEL_125;
          }

          v57 = v178;
          v58 = (v177 << 32) | 3;
        }

LABEL_89:
        *&v84[16] = v58;
        *&v84[24] = v57;
        v59 = sub_3CF22C(v181);
        sub_3EDCF4(v83, v59);
        LODWORD(v83[0]) = v5;
        sub_790648(v81, v181);
        sub_4D3414(v81, v83, v82);
        sub_4192A0(v85, v82);
        sub_3EEA68(v82);
        sub_3EEA68(v81);
        v60 = v183;
        if (v183 < 0)
        {
          v61 = -5;
        }

        else
        {
          v61 = 5;
        }

        v62 = v185;
        if (v185 >= v186)
        {
          v64 = sub_A54F0C(&v184, v84);
        }

        else
        {
          v63 = *v84;
          *(v185 + 12) = *&v84[12];
          *v62 = v63;
          sub_790648(v62 + 32, v85);
          *(v62 + 1128) = 3;
          v64 = v62 + 1136;
        }

        v185 = v64;
        sub_3EE9A4(v83);
        sub_3EEA68(v85);
        if (v182 == 1)
        {
          sub_3EEA68(v181);
        }

        if (v179 != -1)
        {
          (off_2670810[v179])(v84, &v177);
        }

        v179 = -1;
        if (v175 != -1)
        {
          (off_2670810[v175])(v84, v170);
        }

        v65 = 103 * (v61 + v60 % 10);
        v5 += v60 / 10 + ((v65 >> 15) & 1) + (v65 >> 10);
        v8 = v79;
        goto LABEL_5;
      }

      if (v175)
      {
        goto LABEL_124;
      }

      *&v84[4] = (*v170 << 32) | 4;
      *&v84[12] = *&v170[4];
      v56 = v180;
      if (v180 != 2)
      {
        goto LABEL_82;
      }
    }

LABEL_76:
    if (v179)
    {
      goto LABEL_125;
    }

    v57 = v178;
    v58 = v177 << 32;
    goto LABEL_89;
  }

  *v76 = 0;
  *(v76 + 8) = 0;
  *(v76 + 16) = 0;
  *(v76 + 24) = 0x7FFFFFFF;
  if (v179 != -1)
  {
    (off_2670810[v179])(v84, &v177);
  }

  v179 = -1;
  if (v175 != -1)
  {
    (off_2670810[v175])(v84, v170);
  }

LABEL_103:
  v66 = v184;
  if (v184)
  {
    v67 = v185;
    v68 = v184;
    if (v185 != v184)
    {
      do
      {
        v69 = (v67 - 1136);
        v70 = *(v67 - 8);
        if (v70 != -1)
        {
          (off_26707C0[v70])(v170, v67 - 1136);
        }

        *(v67 - 8) = -1;
        v67 -= 1136;
      }

      while (v69 != v66);
      v68 = v184;
    }

    v185 = v66;
    operator delete(v68);
  }
}

void sub_A54194(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  *(v3 - 128) = v1;
  v6 = STACK[0xEE0];
  if (STACK[0xEE0])
  {
    STACK[0xEE8] = v6;
    operator delete(v6);
  }

  sub_A542C4((v3 - 136));
  _Unwind_Resume(a1);
}

void **sub_A542C4(void **a1)
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
        v5 = v3 - 1136;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_26707C0[v6])(&v8, v3 - 1136);
        }

        *(v3 - 2) = -1;
        v3 -= 1136;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_A5436C(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v8 = ((v7 ^ (v7 >> 33)) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v9 = vcnt_s8(v2);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v8;
    if (v8 >= *&v2)
    {
      v10 = v8 % *&v2;
    }
  }

  else
  {
    v10 = v8 & (*&v2 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  result = *v11;
  if (*v11)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v2 - 1;
      while (1)
      {
        v14 = result[1];
        if (v8 == v14)
        {
          v15 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
          if (v15 && result[3] == v4)
          {
            return result;
          }
        }

        else if ((v14 & v13) != v10)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v16 = result[1];
      if (v8 == v16)
      {
        v17 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
        if (v17 && result[3] == v4)
        {
          return result;
        }
      }

      else
      {
        if (v16 >= *&v2)
        {
          v16 %= *&v2;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_A54508(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 != -1)
  {
    (off_26707B0[v2])(&v4, a1);
  }

  *(a1 + 160) = -1;
  return a1;
}

unint64_t sub_A54564(unsigned int *a1)
{
  v1 = *(a1 + 248);
  if (v1 == 2)
  {
    if (a1[60])
    {
      goto LABEL_11;
    }

    return *a1 << 32;
  }

  else if (v1 == 1)
  {
    if (a1[60])
    {
      goto LABEL_11;
    }

    return (*a1 << 32) | 4;
  }

  else
  {
    if (!*(a1 + 248))
    {
      if (!a1[60])
      {
        return (*a1 << 32) | 3;
      }

LABEL_11:
      sub_5AF20();
    }

    return 0xFFFFFFFF00000003;
  }
}

uint64_t sub_A545EC(unsigned int **a1, uint64_t a2)
{
  v2 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v5 = 0x39B0AD12073615;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  v8 = *(a2 + 28);
  *&stru_20.segname[1136 * v2 + 8] = 0;
  *(v6 + 28) = v8;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 72) = *(a2 + 72);
  *(v6 + 1128) = 1;
  v11 = v6 + 1136;
  v12 = *a1;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = v14;
    v16 = *a1;
    do
    {
      *v15 = 0;
      *(v15 + 1128) = -1;
      v17 = v16[282];
      if (v17 != -1)
      {
        v20 = v15;
        (off_26707E8[v17])(&v20, v16);
        *(v15 + 1128) = v17;
      }

      v16 += 284;
      v15 += 1136;
    }

    while (v16 != v13);
    do
    {
      v18 = v12[282];
      if (v18 != -1)
      {
        (off_26707C0[v18])(&v20, v12);
      }

      v12[282] = -1;
      v12 += 284;
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

void sub_A54844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 56) = v6;
    operator delete(v6);
  }

  sub_A54870(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A54870(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 1136;
      *(a1 + 16) = v3 - 1136;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_26707C0[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
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

uint64_t sub_A54910(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = v4 - 1136;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_26707C0[v7])(&v9, v4 - 1136);
        }

        *(v4 - 8) = -1;
        v4 -= 1136;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_A549B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x193D4BB7E327A977 * (v4 >> 4) + 1;
  if (v5 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4) > v5)
  {
    v5 = 0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((*(a1 + 16) - v2) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v7 = 0x39B0AD12073615;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (v4 >> 4);
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 1128) = 2;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 1128) = -1;
      v11 = v10[282];
      if (v11 != -1)
      {
        v15 = v9;
        (off_26707E8[v11])(&v15, v10);
        *(v9 + 1128) = v11;
      }

      v10 += 284;
      v9 += 1136;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[282];
      if (v12 != -1)
      {
        (off_26707C0[v12])(&v16, v2);
      }

      v2[282] = -1;
      v2 += 284;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 1136;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 1136;
}

uint64_t sub_A54BA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 240) = -1;
  v4 = *(a2 + 240);
  if (v4 != -1)
  {
    v7 = a1;
    (off_2670820[v4])(&v7, a2);
    *(a1 + 240) = v4;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 496) = -1;
  v5 = *(a2 + 496);
  if (v5 != -1)
  {
    v7 = a1 + 256;
    (off_2670820[v5])(&v7, a2 + 256);
    *(a1 + 496) = v5;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = 0;
  *(a1 + 1608) = 0;
  if (*(a2 + 1608) == 1)
  {
    sub_790648(a1 + 512, a2 + 512);
    *(a1 + 1608) = 1;
  }

  *(a1 + 1616) = *(a2 + 1616);
  return a1;
}

void sub_A54C8C(_Unwind_Exception *a1)
{
  if (*(v1 + 1608) == 1)
  {
    sub_3EEA68(v1 + 512);
  }

  sub_A54CEC(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

void sub_A54CBC(_Unwind_Exception *a1)
{
  sub_A54EB0(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A54CEC(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 != -1)
  {
    (off_2670810[v2])(&v4, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

__n128 sub_A54D58(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *(v3 + 63) = *(a2 + 63);
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  *(v3 + 16) = v4;
  v7 = *a2;
  *(v3 + 72) = 0;
  *v3 = v7;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  v9 = *(a2 + 9);
  v8 = *(a2 + 10);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = a2[6];
  *(v3 + 112) = *(a2 + 112);
  *(v3 + 96) = v10;
  v11 = *(a2 + 120);
  *(v3 + 136) = *(a2 + 136);
  *(v3 + 120) = v11;
  sub_81988((v3 + 152), a2 + 152);
  sub_49DC18((v3 + 176), a2 + 22);
  sub_49DC18((v3 + 200), a2 + 25);
  result = a2[14];
  *(v3 + 224) = result;
  return result;
}

void sub_A54E60(_Unwind_Exception *a1)
{
  sub_48C8F4((v1 + 176));
  sub_44D36C(v1);
  _Unwind_Resume(a1);
}

void sub_A54E90(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A54EB0(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 != -1)
  {
    (off_2670810[v2])(&v4, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

uint64_t sub_A54F0C(unsigned int **a1, _OWORD *a2)
{
  v2 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v5 = 0x39B0AD12073615;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  *v15 = *a2;
  *(v15 + 12) = *(a2 + 12);
  sub_790648(1136 * v2 + 32, (a2 + 2));
  *(v15 + 1128) = 3;
  v6 = 1136 * v2 + 1136;
  v7 = *a1;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = v15 + *a1 - v8;
    v11 = *a1;
    do
    {
      *v10 = 0;
      *(v10 + 1128) = -1;
      v12 = v11[282];
      if (v12 != -1)
      {
        v16 = v10;
        (off_26707E8[v12])(&v16, v11);
        *(v10 + 1128) = v12;
      }

      v11 += 284;
      v10 += 1136;
    }

    while (v11 != v8);
    do
    {
      v13 = v7[282];
      if (v13 != -1)
      {
        (off_26707C0[v13])(&v16, v7);
      }

      v7[282] = -1;
      v7 += 284;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

uint64_t sub_A5512C(uint64_t a1)
{
  if (*(a1 + 1608) == 1)
  {
    sub_3EEA68(a1 + 512);
  }

  v2 = *(a1 + 496);
  if (v2 != -1)
  {
    (off_2670810[v2])(&v5, a1 + 256);
  }

  *(a1 + 496) = -1;
  v3 = *(a1 + 240);
  if (v3 != -1)
  {
    (off_2670810[v3])(&v6, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

void ***sub_A551C8(void ***a1)
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
          v6 = v4 - 1136;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_26707C0[v7])(&v9, v4 - 1136);
          }

          *(v4 - 2) = -1;
          v4 -= 1136;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_A55288(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a3;
  v9 = a1[1];
  v8 = a1[2];
  if (0x193D4BB7E327A977 * ((v8 - v9) >> 4) >= a5)
  {
    v14 = v9 - a2;
    if (0x193D4BB7E327A977 * ((v9 - a2) >> 4) < a5)
    {
      v16 = v14 + a3;
      a1[1] = sub_A559D0(a1, v14 + a3, a4, a1[1]);
      if (v14 < 1)
      {
        return v5;
      }

      sub_A5566C(a1, v5, v9, v5 + 1136 * a5);
      for (i = v5; ; i += 284)
      {
        while (1)
        {
          v18 = i[282];
          v19 = *(v6 + 1128);
          if (v18 != -1)
          {
            break;
          }

          if (v19 != -1)
          {
            goto LABEL_16;
          }

LABEL_17:
          v6 += 1136;
          i += 284;
          if (v6 == v16)
          {
            return v5;
          }
        }

        if (v19 != -1)
        {
LABEL_16:
          __p = i;
          (off_2670880[v19])(&__p, i, v6);
          goto LABEL_17;
        }

        (off_26707C0[v18])(&__p, i);
        i[282] = -1;
        v6 += 1136;
        if (v6 == v16)
        {
          return v5;
        }
      }
    }

    v20 = 1136 * a5;
    sub_A5566C(a1, a2, a1[1], a2 + 1136 * a5);
    v21 = v20 + v6;
    for (j = v5; ; j += 284)
    {
      while (1)
      {
        v23 = j[282];
        v24 = *(v6 + 1128);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_24;
        }

LABEL_25:
        v6 += 1136;
        j += 284;
        if (v6 == v21)
        {
          return v5;
        }
      }

      if (v24 != -1)
      {
LABEL_24:
        __p = j;
        (off_2670880[v24])(&__p, j, v6);
        goto LABEL_25;
      }

      (off_26707C0[v23])(&__p, j);
      j[282] = -1;
      v6 += 1136;
      if (v6 == v21)
      {
        return v5;
      }
    }
  }

  v10 = *a1;
  v11 = a5 + 0x193D4BB7E327A977 * ((v9 - *a1) >> 4);
  if (v11 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  v12 = 0x193D4BB7E327A977 * ((v8 - v10) >> 4);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x1CD85689039B0ALL)
  {
    v13 = 0x39B0AD12073615;
  }

  else
  {
    v13 = v11;
  }

  v38 = a1;
  if (v13)
  {
    if (v13 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v25 = 16 * ((a2 - v10) >> 4);
  __p = 0;
  v35 = v25;
  v36 = v25;
  v37 = 0;
  v26 = 1136 * a5;
  v27 = v25 + 1136 * a5;
  do
  {
    *v25 = 0;
    *(v25 + 1128) = -1;
    v28 = *(v6 + 1128);
    if (v28 != -1)
    {
      v39 = v25;
      (off_2670830[v28])(&v39, v6);
      *(v25 + 1128) = v28;
    }

    v25 += 1136;
    v6 += 1136;
    v26 -= 1136;
  }

  while (v26);
  v36 = v27;
  v5 = sub_A557CC(a1, &__p, v5);
  v29 = v35;
  v30 = v36;
  if (v36 != v35)
  {
    do
    {
      v31 = v30 - 1136;
      v36 = v30 - 1136;
      v32 = *(v30 - 8);
      if (v32 != -1)
      {
        (off_26707C0[v32])(&v39);
        v31 = v36;
      }

      *(v30 - 8) = -1;
      v30 = v31;
    }

    while (v31 != v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_A5564C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_93C19C(v11);
  a11 = v11;
  sub_A54870(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A5566C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(result + 8);
    do
    {
      *v10 = 0;
      *(v10 + 1128) = -1;
      v11 = *(v9 + 1128);
      if (v11 != -1)
      {
        v16 = v10;
        result = (off_26707E8[v11])(&v16, v9);
        *(v10 + 1128) = v11;
      }

      v9 += 1136;
      v10 += 1136;
    }

    while (v9 < a3);
  }

  *(v5 + 8) = v10;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      while (1)
      {
        v14 = *(v6 + v12 - 8);
        v15 = *(v7 + v12 - 8);
        if (v14 != -1)
        {
          break;
        }

        if (v15 != -1)
        {
          goto LABEL_10;
        }

LABEL_11:
        v12 -= 1136;
        if (v13 == v12)
        {
          return result;
        }
      }

      if (v15 != -1)
      {
LABEL_10:
        v16 = v6 + v12 - 1136;
        result = (off_2670858[v15])(&v16);
        goto LABEL_11;
      }

      result = (off_26707C0[v14])(&v16, v6 + v12 - 1136);
      *(v6 + v12 - 8) = -1;
      v12 -= 1136;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t sub_A557CC(uint64_t *a1, void *a2, uint64_t a3)
{
  v22 = a2[1];
  v6 = a1[1];
  if (v6 != a3)
  {
    v7 = a2[2];
    v8 = a3;
    do
    {
      *v7 = 0;
      *(v7 + 1128) = -1;
      v9 = *(v8 + 1128);
      if (v9 != -1)
      {
        v23 = v7;
        (off_26707E8[v9])(&v23, v8);
        *(v7 + 1128) = v9;
      }

      v8 += 1136;
      v7 += 1136;
    }

    while (v8 != v6);
    v10 = a3;
    do
    {
      v11 = *(v10 + 1128);
      if (v11 != -1)
      {
        (off_26707C0[v11])(&v23, v10);
      }

      *(v10 + 1128) = -1;
      v10 += 1136;
    }

    while (v10 != v6);
  }

  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v12 = *a1;
  v13 = a2[1] + *a1 - a3;
  if (*a1 != a3)
  {
    v21 = a2[1] + *a1 - a3;
    v14 = *a1;
    do
    {
      *v13 = 0;
      *(v13 + 1128) = -1;
      v15 = *(v14 + 1128);
      if (v15 != -1)
      {
        v23 = v13;
        (off_26707E8[v15])(&v23, v14);
        *(v13 + 1128) = v15;
      }

      v14 += 1136;
      v13 += 1136;
    }

    while (v14 != a3);
    v13 = v21;
    do
    {
      v16 = *(v12 + 1128);
      if (v16 != -1)
      {
        (off_26707C0[v16])(&v23, v12);
      }

      *(v12 + 1128) = -1;
      v12 += 1136;
    }

    while (v12 != a3);
  }

  a2[1] = v13;
  v17 = *a1;
  *a1 = v13;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return v22;
}

uint64_t sub_A559D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 1128) = -1;
      v8 = *(v7 + 1128);
      if (v8 != -1)
      {
        v10 = v4;
        (off_2670830[v8])(&v10, v7);
        *(v4 + 1128) = v8;
        v4 = v9;
      }

      v7 += 1136;
      v4 += 1136;
      v9 = v4;
    }

    while (v7 != a3);
  }

  return v4;
}

void sub_A55A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_93C19C(v2);
  sub_A54910(va);
  _Unwind_Resume(a1);
}

__n128 sub_A55AA8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_26707C0[v4])(&v11, v3);
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

__n128 sub_A55B40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 1128);
  if (v5 == 1)
  {
    result = *a3;
    v7 = *(a3 + 16);
    *(a2 + 28) = *(a3 + 28);
    *a2 = result;
    *(a2 + 16) = v7;
    if (a2 != a3)
    {
      v8 = a2;
      sub_31F64((a2 + 48), *(a3 + 48), *(a3 + 56), (*(a3 + 56) - *(a3 + 48)) >> 3);
      a2 = v8;
    }

    *(a2 + 72) = *(a3 + 72);
  }

  else
  {
    v12 = *a3;
    *v13 = *(a3 + 16);
    *&v13[12] = *(a3 + 28);
    v10 = *(a3 + 48);
    v9 = *(a3 + 56);
    if (v9 != v10)
    {
      if (((v9 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v11 = *(a3 + 72);
    if (v5 != -1)
    {
      (off_26707C0[v5])(&v14, v4);
    }

    *v4 = v12;
    *(v4 + 16) = *v13;
    result = *&v13[12];
    *(v4 + 28) = *&v13[12];
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = v11;
    *(v4 + 1128) = 1;
  }

  return result;
}

__n128 sub_A55C98(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_26707C0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 2;
  return result;
}

uint64_t sub_A55D38(uint64_t *a1, _OWORD *a2, __int128 *a3)
{
  v3 = *a1;
  if (*(*a1 + 1128) == 3)
  {
    v4 = *a3;
    *(a2 + 12) = *(a3 + 12);
    *a2 = v4;

    return sub_4D6664((a2 + 2), (a3 + 2));
  }

  else
  {
    *v7 = *a3;
    *&v7[12] = *(a3 + 12);
    sub_790648(v8, (a3 + 2));
    v6 = *(v3 + 1128);
    if (v6 != -1)
    {
      (off_26707C0[v6])(&v9, v3);
    }

    *(v3 + 1128) = -1;
    *v3 = *v7;
    *(v3 + 12) = *&v7[12];
    sub_4C6AE8(v3 + 32, v8);
    *(v3 + 1128) = 3;
    return sub_3EEA68(v8);
  }
}

__n128 sub_A55E2C(__n128 **a1, __n128 *a2, __n128 *a3)
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
    (off_26707C0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 4;
  return result;
}

uint64_t sub_A55ECC(void *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 144 * v2;
  *v6 = *a2;
  __p = 0;
  v14 = 144 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v6 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  *(a2 + 120) = 0;
  *(v6 + 133) = *(a2 + 133);
  *(v6 + 120) = v7;
  *(v6 + 128) = v8;
  v15 = 144 * v2 + 144;
  v16 = 0;
  sub_A5609C(a1, &__p);
  v9 = a1[1];
  v11 = v14;
  for (i = v15; v15 != v11; i = v15)
  {
    v15 = i - 144;
    sub_9FFEB4((i - 144));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_A56088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A561F8(va);
  _Unwind_Resume(a1);
}

char *sub_A5609C(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = *v8;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 3) = *(v8 + 3);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 6) = 0;
      *(v9 + 2) = *(v8 + 2);
      *(v9 + 6) = *(v8 + 6);
      *(v8 + 4) = 0;
      *(v8 + 5) = 0;
      *(v8 + 6) = 0;
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 9) = *(v8 + 9);
      *(v8 + 7) = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v9 + 5) = *(v8 + 5);
      *(v9 + 12) = *(v8 + 12);
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      *(v8 + 12) = 0;
      *(v9 + 13) = 0;
      *(v9 + 14) = 0;
      *(v9 + 15) = 0;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 15) = *(v8 + 15);
      *(v8 + 13) = 0;
      *(v8 + 14) = 0;
      *(v8 + 15) = 0;
      v10 = *(v8 + 16);
      *(v9 + 133) = *(v8 + 133);
      *(v9 + 16) = v10;
      v8 += 144;
      v9 += 144;
    }

    while (v8 != v5);
    do
    {
      result = (sub_9FFEB4(result) + 18);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v11 = *a1;
  *a1 = v7;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t sub_A561F8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_9FFEB4((i - 144));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A5624C(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  v17 = 0;
  v18 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 54) = *(a2 + 54);
  *(v7 + 40) = v8;
  *(v7 + 48) = v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = ((v2 << 6) + *a1 - v11);
  v19 = ((v2 << 6) + 64);
  sub_A5650C(a1, v10, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_A56398(&v17);
  return v16;
}

void sub_A56384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_A56398(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A56398(uint64_t a1)
{
  v2 = *(a1 + 16);
  for (i = *(a1 + 8); v2 != i; v2 = *(a1 + 16))
  {
    v4 = (v2 - 64);
    *(a1 + 16) = v2 - 64;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      v7 = *(v2 - 56);
      v3 = *v4;
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 5);
          if (v9)
          {
            *(v7 - 4) = v9;
            operator delete(v9);
          }

          v10 = *(v7 - 8);
          if (v10)
          {
            *(v7 - 7) = v10;
            operator delete(v10);
          }

          v11 = *(v7 - 11);
          if (v11)
          {
            *(v7 - 10) = v11;
            operator delete(v11);
          }

          v12 = *(v7 - 14);
          if (v12)
          {
            *(v7 - 13) = v12;
            operator delete(v12);
          }

          v13 = *(v7 - 17);
          if (v13)
          {
            v14 = *(v7 - 16);
            v8 = *(v7 - 17);
            if (v14 != v13)
            {
              do
              {
                v15 = v14 - 1136;
                v16 = *(v14 - 8);
                if (v16 != -1)
                {
                  (off_26707C0[v16])(&v19, v14 - 1136);
                }

                *(v14 - 8) = -1;
                v14 -= 1136;
              }

              while (v15 != v13);
              v8 = *(v7 - 17);
            }

            *(v7 - 16) = v13;
            operator delete(v8);
          }

          v7 -= 144;
        }

        while (v7 != v6);
        v3 = *v4;
      }

      *(v2 - 56) = v6;
      operator delete(v3);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A5650C(uint64_t a1, void **a2, void **a3, void *a4)
{
  v23 = a4;
  v24 = a4;
  v21[0] = a1;
  v21[1] = &v23;
  v21[2] = &v24;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 3);
      a4[5] = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      v7 = v6[6];
      *(a4 + 54) = *(v6 + 54);
      a4[6] = v7;
      v6 += 8;
      a4 += 8;
    }

    while (v6 != a3);
    v24 = a4;
    v22 = 1;
    if (a2 != a3)
    {
      do
      {
        v9 = v5[3];
        if (v9)
        {
          v5[4] = v9;
          operator delete(v9);
        }

        v10 = *v5;
        if (*v5)
        {
          v11 = v5[1];
          v8 = *v5;
          if (v11 != v10)
          {
            do
            {
              v13 = *(v11 - 5);
              if (v13)
              {
                *(v11 - 4) = v13;
                operator delete(v13);
              }

              v14 = *(v11 - 8);
              if (v14)
              {
                *(v11 - 7) = v14;
                operator delete(v14);
              }

              v15 = *(v11 - 11);
              if (v15)
              {
                *(v11 - 10) = v15;
                operator delete(v15);
              }

              v16 = *(v11 - 14);
              if (v16)
              {
                *(v11 - 13) = v16;
                operator delete(v16);
              }

              v17 = *(v11 - 17);
              if (v17)
              {
                v18 = *(v11 - 16);
                v12 = *(v11 - 17);
                if (v18 != v17)
                {
                  do
                  {
                    v19 = v18 - 1136;
                    v20 = *(v18 - 8);
                    if (v20 != -1)
                    {
                      (off_26707C0[v20])(&v25, v18 - 1136);
                    }

                    *(v18 - 8) = -1;
                    v18 -= 1136;
                  }

                  while (v19 != v17);
                  v12 = *(v11 - 17);
                }

                *(v11 - 16) = v17;
                operator delete(v12);
              }

              v11 -= 144;
            }

            while (v11 != v10);
            v8 = *v5;
          }

          v5[1] = v10;
          operator delete(v8);
        }

        v5 += 8;
      }

      while (v5 != a3);
      if ((v22 & 1) == 0)
      {
        sub_A31A74(v21);
      }
    }
  }
}

unint64_t sub_A56700(uint64_t *a1, unsigned int *a2, unsigned int a3, int a4)
{
  v8 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v9 = v8;
  v10 = *v8;
  v11 = -v10;
  v12 = &v8[-v10];
  v13 = *v12;
  if (v13 < 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v14 += &v8[*&v8[v14]];
    }
  }

  v15 = (v14 + 4 * *a2 + 4 + *(v14 + 4 * *a2 + 4));
  if (a4 == 0x7FFFFFFF)
  {
    if (v13 >= 0xD && *(v12 + 6))
    {
      v16 = &v8[*(v12 + 6) + *&v8[*(v12 + 6)]];
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    v18 = v17[10];
    if (v18)
    {
      v19 = *(v15 + v18);
      goto LABEL_14;
    }

LABEL_13:
    v19 = -1;
LABEL_14:
    v20 = *(sub_A56DB8(v16, a2[2] + v19) + 4);
    v21 = (v15 - *v15);
    if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
    {
      v23 = *(v15 + v22);
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

    a4 = sub_96AE18((v23 + v20));
    v11 = -*v9;
  }

  v24 = (v9 + v11);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = (v9 + v25 + *(v9 + v25));
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0;
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
LABEL_26:
      v29 = -1;
      goto LABEL_27;
    }
  }

  v28 = v27[6];
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = *(v15 + v28);
LABEL_27:
  v30 = *(sub_3A2E6C(v26, v29 + a3) + 12);
  v31 = sub_585D8((*a1 + 3896));
  v32 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  if (!*(v32 + 3960))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v33 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v31);
  if (!v33)
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v34 = v33[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v33[6] - v34) >> 2) <= a3)
  {
    v36 = (v30 + a4);
    v37 = 0x7FFFFFFF00000000;
  }

  else
  {
    v35 = *(v34 + 20 * a3 + 12);
    v36 = (v30 + a4);
    if (v35 == 0x7FFFFFFF)
    {
      v37 = 0x7FFFFFFF00000000;
    }

    else
    {
      v39 = v35 / 10;
      v40 = v35 % 10;
      if (v35 < 0)
      {
        v41 = -5;
      }

      else
      {
        v41 = 5;
      }

      v37 = (v39 + a4 + (((103 * (v41 + v40)) >> 15) & 1) + ((103 * (v41 + v40)) >> 10)) << 32;
    }
  }

  if (*(v33 + 32) == 1)
  {
    v37 = 0x7FFFFFFF00000000;
  }

  return v37 | v36;
}

unint64_t sub_A56A5C(uint64_t *a1, unsigned int *a2, unsigned int a3, int a4)
{
  v8 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v9 = v8;
  v10 = *v8;
  v11 = -v10;
  v12 = &v8[-v10];
  v13 = *v12;
  if (v13 < 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v14 += &v8[*&v8[v14]];
    }
  }

  v15 = (v14 + 4 * *a2 + 4 + *(v14 + 4 * *a2 + 4));
  if (a4 == 0x7FFFFFFF)
  {
    if (v13 >= 0xD && *(v12 + 6))
    {
      v16 = &v8[*(v12 + 6) + *&v8[*(v12 + 6)]];
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    v18 = v17[10];
    if (v18)
    {
      v19 = *(v15 + v18);
      goto LABEL_14;
    }

LABEL_13:
    v19 = -1;
LABEL_14:
    v20 = *(sub_A56DB8(v16, a2[2] + v19) + 4);
    v21 = (v15 - *v15);
    if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
    {
      v23 = *(v15 + v22);
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

    a4 = sub_96AE18((v23 + v20));
    v11 = -*v9;
  }

  v24 = (v9 + v11);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = (v9 + v25 + *(v9 + v25));
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0;
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
LABEL_26:
      v29 = -1;
      goto LABEL_27;
    }
  }

  v28 = v27[6];
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = *(v15 + v28);
LABEL_27:
  v30 = *(sub_3A2E6C(v26, v29 + a3) + 8);
  v31 = sub_585D8((*a1 + 3896));
  v32 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  if (!*(v32 + 3960))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v33 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v31);
  if (!v33)
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v34 = v33[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v33[6] - v34) >> 2) <= a3)
  {
    v36 = (v30 + a4);
    v37 = 0x7FFFFFFF00000000;
  }

  else
  {
    v35 = *(v34 + 20 * a3 + 8);
    v36 = (v30 + a4);
    if (v35 == 0x7FFFFFFF)
    {
      v37 = 0x7FFFFFFF00000000;
    }

    else
    {
      v39 = v35 / 10;
      v40 = v35 % 10;
      if (v35 < 0)
      {
        v41 = -5;
      }

      else
      {
        v41 = 5;
      }

      v37 = (v39 + a4 + (((103 * (v41 + v40)) >> 15) & 1) + ((103 * (v41 + v40)) >> 10)) << 32;
    }
  }

  if (*(v33 + 32) == 1)
  {
    v37 = 0x7FFFFFFF00000000;
  }

  return v37 | v36;
}

uint64_t sub_A56DB8(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[2 * a2 + 1];
}

void sub_A56E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A56F04(void *a1, unint64_t a2, unsigned int a3, int a4)
{
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 9u && (v13 = v12[4]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A571D4(v14, a3);
  v16 = (v8 - *v8);
  if (*v16 >= 0xBu)
  {
    v17 = v16[5];
    if (v17)
    {
      v17 = (v17 + v8 + *(v17 + v8));
    }

    v18 = (v11 - *v11);
    if (*v18 >= 0x11u)
    {
      goto LABEL_13;
    }

LABEL_16:
    LODWORD(v19) = 0;
    goto LABEL_17;
  }

  v17 = 0;
  v18 = (v11 - *v11);
  if (*v18 < 0x11u)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = v18[8];
  if (v18[8])
  {
    LODWORD(v19) = *(v11 + v19);
  }

LABEL_17:
  v20 = sub_A57320(v17, v19 + *(v11 + v18[2] + *(v11 + v18[2])) * a4 + *(v15 + 14));
  if (v20)
  {
    return __ROR8__(*v20, 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

char *sub_A5706C(void *a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (sub_A576FC(a1, SHIDWORD(a2)))
  {
    v5 = *(*(*a1 + 3944) + 72);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v7 = "Incident stop pattern quad data requested on nullptr buffer";
      goto LABEL_14;
    }

    return v5 + *v5;
  }

  v8 = &unk_2733000;
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_27339D8);
    v8 = &unk_2733000;
    if (v12)
    {
      v13 = sub_A57824(-85.0, -13.0);
      sub_58168(v13 >> 17, v13 >> 49);
      dword_27339D0 = v14 | 0x40000000;
      __cxa_guard_release(&qword_27339D8);
      v8 = &unk_2733000;
    }
  }

  v9 = v8[628];
  v10 = *a1;
  if (v9 == v4)
  {
    v5 = *(*(v10 + 3976) + 72);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v7 = "Realtime stop pattern quad data requested on nullptr buffer";
LABEL_14:
      v15 = sub_2D390(exception, v7, 0x3BuLL);
    }

    return v5 + *v5;
  }

  return sub_A57470(v10 + 24, a2, 0);
}

uint64_t sub_A571D4(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[4 * a2 + 1];
}

void sub_A572A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A57320(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[3 * a2 + 1];
}

void sub_A573F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

char *sub_A57470(uint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v5 = HIDWORD(a2);
  result = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (result)
  {
    v7 = &result[-*result];
    v8 = *v7;
    if (v8 >= 7)
    {
      v9 = *(v7 + 3);
      if (*(v7 + 3))
      {
        v10 = &result[v9 + *&result[v9]];
        v11 = &v10[-*v10];
        if (*v11 >= 5u)
        {
          v12 = *(v11 + 2);
          if (v12)
          {
            if (*&v10[v12 + *&v10[v12]] > v4)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }

    if (a3 == 1)
    {
      return 0;
    }

    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = v5;
      v15 = exception;
      std::to_string(&v24, v14);
      sub_23E08("Failed to acquire stop pattern in quad node ", &v24, &v25);
      sub_30F54(" and position ", &v25, &v26);
      std::to_string(&v23, v4);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v23;
      }

      else
      {
        v16 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v26, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v28 = v18->__r_.__value_.__r.__words[2];
      v27 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (v28 >= 0)
      {
        v20 = &v27;
      }

      else
      {
        v20 = v27;
      }

      if (v28 >= 0)
      {
        v21 = HIBYTE(v28);
      }

      else
      {
        v21 = *(&v27 + 1);
      }

      v22 = sub_2D390(v15, v20, v21);
    }

    if (v8 >= 7 && (LODWORD(v9) = *(v7 + 3), *(v7 + 3)))
    {
LABEL_11:
      result += v9 + *&result[v9];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_A5761C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
    if (a32 < 0)
    {
LABEL_7:
      operator delete(a27);
      if (a26 < 0)
      {
LABEL_10:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_14:
        _Unwind_Resume(a1);
      }

LABEL_13:
      operator delete(a15);
      goto LABEL_14;
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_7;
  }

  if (a26 < 0)
  {
    goto LABEL_10;
  }

  goto LABEL_12;
}

BOOL sub_A576FC(void *a1, int a2)
{
  v3 = &unk_2733000;
  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v7 = __cxa_guard_acquire(&qword_27339C8);
    v3 = &unk_2733000;
    v8 = v7;
    a1 = v13;
    if (v8)
    {
      v9 = sub_A57824(-85.0, 0.0);
      sub_58168(v9 >> 17, v9 >> 49);
      dword_27339C0 = v10 | 0x40000000;
      __cxa_guard_release(&qword_27339C8);
      v3 = &unk_2733000;
      a1 = v13;
    }
  }

  v4 = v3[624];
  if (v4 == a2)
  {
    v5 = *a1;
    if (!sub_68312C(*a1 + 3896) || !*(v5 + 3944))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
    }
  }

  return v4 == a2;
}

uint64_t sub_A57824(double a1, double a2)
{
  result = -1;
  if (a2 <= 180.0 && fabs(a1) <= 85.0511288 && a2 >= -180.0)
  {
    v4 = sin(fmin(fmax(a1, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
    LODWORD(v5) = ((log((v4 + 1.0) / (1.0 - v4)) / -12.5663706 + 0.5) * 4294967300.0);
    if (v5 >= 0xFFFFFFFE)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = v5;
    }

    return ((a2 + 180.0) / 360.0 * 4294967300.0) | (v5 << 32);
  }

  return result;
}

uint64_t sub_A57920(void *a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (sub_A576FC(a1, SHIDWORD(a2)))
  {
    v5 = *(*a1 + 3944);

    return sub_A57AFC(v5, a2);
  }

  else
  {
    v7 = &unk_2733000;
    if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
    {
      v16 = __cxa_guard_acquire(&qword_27339D8);
      v7 = &unk_2733000;
      if (v16)
      {
        v17 = sub_A57824(-85.0, -13.0);
        sub_58168(v17 >> 17, v17 >> 49);
        dword_27339D0 = v18 | 0x40000000;
        __cxa_guard_release(&qword_27339D8);
        v7 = &unk_2733000;
      }
    }

    v8 = v7[628];
    v9 = *a1;
    if (v8 == v4)
    {
      v10 = *(*(v9 + 3976) + 72);
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v20 = sub_2D390(exception, "Realtime stop pattern quad data requested on nullptr buffer", 0x3BuLL);
      }

      v11 = (v10 + *v10);
      v12 = (v11 - *v11);
      if (*v12 >= 5u && (v13 = v12[2]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
        v15 = a2;
      }

      else
      {
        v14 = 0;
        v15 = a2;
      }

      return sub_A57CB8(v14, v15);
    }

    else
    {

      return sub_A57E08(v9 + 24, a2, 0, "stop pattern");
    }
  }
}

uint64_t sub_A57AFC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "Incident stop pattern quad data requested on nullptr buffer", 0x3BuLL);
  }

  v3 = (v2 + *v2);
  v4 = (v3 - *v3);
  if (*v4 < 5u || (v5 = v4[2]) == 0 || (v6 = (v3 + v5 + *(v3 + v5)), *v6 <= a2))
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v15, a2);
    sub_23E08("Requested new incident stop pattern at object id ", &v15, &v16);
    sub_30F54(", which is out of range", &v16, &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v12 = sub_2D390(v9, v10, size);
  }

  return &v6[a2 + 1] + v6[a2 + 1];
}

void sub_A57C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A57CB8(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1] + a1[a2 + 1];
}

void sub_A57D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A57E08(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v24 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = &v7[-*v7];
  if (*v8 < 7u)
  {
    goto LABEL_10;
  }

  v9 = *(v8 + 3);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = (v9 + v7 + *(v9 + v7));
  v11 = (v10 - *v10);
  if (*v11 < 5u)
  {
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_10:
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v20 = v5;
      v21 = v6;
      v19[0] = sub_7FCF0(9u);
      v19[1] = v15;
      sub_2C956C("Failed to acquire entity ", &v24, " in quad node ", " at position ", " on layer ", v19, v22);
      if ((v23 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22[1];
      }

      v18 = sub_2D390(exception, v16, v17);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  v9 = (v10 + v12 + *(v10 + v12));
  if (*v9 > v5)
  {
    return &v9[v5 + 1] + v9[v5 + 1];
  }

LABEL_7:
  if (a3 != 1)
  {
    goto LABEL_8;
  }

  return 0;
}

void sub_A57F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A57FC4(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v3 - *a2) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a3[1] - *a3;
  if (v4)
  {
    if ((0x6DB6DB6DB6DB6DB7 * (v4 >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_A580E8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A5811C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v9 = (a2 - 24);
  v10 = (a2 - 36);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v90 = *(a2 - 12);
      v89 = (a2 - 12);
      if (v90 >= *v11)
      {
        return result;
      }

LABEL_108:
      v207 = *(v11 + 8);
      v181 = *v11;
      v95 = *v89;
      *(v11 + 8) = *(v89 + 4);
      *v11 = v95;
      *(v89 + 4) = v207;
      *v89 = v181;
      return result;
    }

LABEL_10:
    if (v12 <= 287)
    {
      v100 = v11 + 12;
      v102 = v11 == a2 || v100 == a2;
      if (a4)
      {
        if (v102)
        {
          return result;
        }

        v103 = 0;
        v104 = v11;
        while (1)
        {
          v106 = v100;
          v107 = *(v104 + 12);
          if (v107 < *v104)
          {
            v108 = *(v104 + 16);
            v109 = v103;
            do
            {
              v110 = v11 + v109;
              *(v110 + 12) = *(v11 + v109);
              *(v110 + 20) = *(v11 + v109 + 8);
              if (!v109)
              {
                v105 = v11;
                goto LABEL_122;
              }

              v109 -= 12;
            }

            while (v107 < *(v110 - 12));
            v105 = v11 + v109 + 12;
LABEL_122:
            *v105 = v107;
            *(v105 + 4) = v108;
            *(v105 + 8) = WORD2(v108);
          }

          v100 = v106 + 12;
          v103 += 12;
          v104 = v106;
          if (v106 + 12 == a2)
          {
            return result;
          }
        }
      }

      if (!v102)
      {
        do
        {
          v147 = v100;
          v148 = *(v7 + 12);
          if (v148 < *v7)
          {
            v149 = *(v7 + 16);
            v150 = v147;
            do
            {
              v151 = v150;
              v152 = *(v150 - 12);
              v150 -= 12;
              *v151 = v152;
              *(v151 + 8) = *(v151 - 4);
            }

            while (v148 < *(v151 - 24));
            *v150 = v148;
            *(v150 + 4) = v149;
            *(v150 + 8) = WORD2(v149);
          }

          v100 = v147 + 12;
          v7 = v147;
        }

        while (v147 + 12 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v111 = (v13 - 2) >> 1;
      v112 = v111;
      while (1)
      {
        if (v111 >= v112)
        {
          v113 = (2 * (v112 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v114 = (v11 + 12 * v113);
          if (2 * v112 + 2 >= v13)
          {
            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (*v114 >= *v117)
            {
              goto LABEL_142;
            }
          }

          else
          {
            v115 = v114[3];
            v116 = *v114 < v115;
            if (*v114 > v115)
            {
              v115 = *v114;
            }

            if (v116)
            {
              v114 += 3;
              v113 = 2 * v112 + 2;
            }

            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (v115 >= *v117)
            {
LABEL_142:
              v119 = *(v117 + 1);
              while (1)
              {
                v122 = v117;
                v117 = v114;
                v123 = *v114;
                *(v122 + 4) = *(v117 + 4);
                *v122 = v123;
                if (v111 < v113)
                {
                  break;
                }

                v124 = (2 * v113) | 1;
                v114 = (v11 + 12 * v124);
                v113 = 2 * v113 + 2;
                if (v113 < v13)
                {
                  v120 = *v114;
                  v121 = v114[3];
                  if (*v114 <= v121)
                  {
                    v120 = v114[3];
                  }

                  if (*v114 >= v121)
                  {
                    v113 = v124;
                  }

                  else
                  {
                    v114 += 3;
                  }

                  if (v120 < v118)
                  {
                    break;
                  }
                }

                else
                {
                  v113 = v124;
                  if (*v114 < v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              v117[1] = v119;
              *(v117 + 4) = WORD2(v119);
            }
          }
        }

        v116 = v112-- <= 0;
        if (v116)
        {
          v125 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
          do
          {
            v126 = 0;
            v209 = *(v11 + 8);
            v183 = *v11;
            v127 = v11;
            do
            {
              v132 = v127 + 12 * v126;
              v130 = (v132 + 12);
              result = 2 * v126;
              v133 = (2 * v126) | 1;
              v126 = 2 * v126 + 2;
              if (v126 < v125)
              {
                v129 = *(v132 + 24);
                v128 = (v132 + 24);
                result = v129;
                if (*(v128 - 3) >= v129)
                {
                  v126 = v133;
                }

                else
                {
                  v130 = v128;
                }
              }

              else
              {
                v126 = v133;
              }

              v131 = *v130;
              *(v127 + 4) = *(v130 + 4);
              *v127 = v131;
              v127 = v130;
            }

            while (v126 <= ((v125 - 2) >> 1));
            a2 -= 12;
            if (v130 == a2)
            {
              *(v130 + 4) = v209;
              *v130 = v183;
            }

            else
            {
              v134 = *a2;
              *(v130 + 4) = *(a2 + 8);
              *v130 = v134;
              *(a2 + 8) = v209;
              *a2 = v183;
              v135 = v130 - v11 + 12;
              if (v135 >= 13)
              {
                v136 = (-2 - 0x5555555555555555 * (v135 >> 2)) >> 1;
                v137 = (v11 + 12 * v136);
                v138 = *v130;
                if (*v137 < *v130)
                {
                  v139 = *(v130 + 4);
                  do
                  {
                    v140 = v130;
                    v130 = v137;
                    v141 = *v137;
                    result = *(v130 + 4);
                    *(v140 + 4) = result;
                    *v140 = v141;
                    if (!v136)
                    {
                      break;
                    }

                    v136 = (v136 - 1) >> 1;
                    v137 = (v11 + 12 * v136);
                  }

                  while (*v137 < v138);
                  *v130 = v138;
                  *(v130 + 1) = v139;
                  *(v130 + 4) = WORD2(v139);
                }
              }
            }

            v116 = v125-- <= 2;
          }

          while (!v116);
          return result;
        }
      }
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *v8;
    if (v12 < 0x601)
    {
      v19 = *v11;
      if (*v11 < *v15)
      {
        if (v16 < v19)
        {
          v189 = *(v15 + 8);
          v163 = *v15;
          v20 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v20;
          goto LABEL_37;
        }

        v196 = *(v15 + 8);
        v170 = *v15;
        v41 = *v11;
        *(v15 + 8) = *(v11 + 8);
        *v15 = v41;
        *(v11 + 8) = v196;
        *v11 = v170;
        if (*v8 < *v11)
        {
          v189 = *(v11 + 8);
          v163 = *v11;
          v42 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v42;
LABEL_37:
          *(a2 - 4) = v189;
          *v8 = v163;
        }

LABEL_38:
        --a3;
        v25 = *v11;
        if (a4)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v16 >= v19)
      {
        goto LABEL_38;
      }

      v192 = *(v11 + 8);
      v166 = *v11;
      v23 = *v8;
      *(v11 + 8) = *(a2 - 4);
      *v11 = v23;
      *(a2 - 4) = v192;
      *v8 = v166;
      if (*v11 >= *v15)
      {
        goto LABEL_38;
      }

      v193 = *(v15 + 8);
      v167 = *v15;
      v24 = *v11;
      *(v15 + 8) = *(v11 + 8);
      *v15 = v24;
      *(v11 + 8) = v193;
      *v11 = v167;
      --a3;
      v25 = v167;
      if (a4)
      {
        goto LABEL_61;
      }

LABEL_60:
      if (*(v11 - 12) < v25)
      {
        goto LABEL_61;
      }

      if (v25 >= *v8)
      {
        v81 = v11 + 12;
        do
        {
          v11 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v81 += 12;
        }

        while (v25 >= *v11);
      }

      else
      {
        do
        {
          v80 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 >= v80);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v82 = a2;
        do
        {
          v83 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 < v83);
      }

      v84 = *(v7 + 4);
      while (v11 < v82)
      {
        v206 = *(v11 + 8);
        v180 = *v11;
        v85 = *v82;
        *(v11 + 8) = *(v82 + 8);
        *v11 = v85;
        *(v82 + 8) = v206;
        *v82 = v180;
        do
        {
          v86 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 >= v86);
        do
        {
          v87 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 < v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v25;
      *(v11 - 8) = v84;
      *(v11 - 4) = WORD2(v84);
    }

    else
    {
      v17 = *v15;
      if (*v15 >= *v11)
      {
        if (v16 < v17)
        {
          v190 = *(v15 + 8);
          v164 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v21;
          *(a2 - 4) = v190;
          *v8 = v164;
          if (*v15 < *v11)
          {
            v191 = *(v11 + 8);
            v165 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v191;
            *v15 = v165;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v194 = *(v11 + 8);
          v168 = *v11;
          v26 = *v15;
          *(v11 + 8) = *(v15 + 8);
          *v11 = v26;
          *(v15 + 8) = v194;
          *v15 = v168;
          if (*v8 >= *v15)
          {
            goto LABEL_29;
          }

          v188 = *(v15 + 8);
          v162 = *v15;
          v27 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v27;
        }

        else
        {
          v188 = *(v11 + 8);
          v162 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v18;
        }

        *(a2 - 4) = v188;
        *v8 = v162;
      }

LABEL_29:
      v28 = (v11 + 12);
      v29 = v11 + 12 * v14;
      v32 = *(v29 - 12);
      v30 = (v29 - 12);
      v31 = v32;
      v33 = *v9;
      if (v32 >= *(v11 + 12))
      {
        if (v33 < v31)
        {
          v195 = *(v30 + 2);
          v169 = *v30;
          v37 = *v9;
          *(v30 + 4) = *(a2 - 16);
          *v30 = v37;
          *(a2 - 16) = v195;
          *v9 = v169;
          if (*v30 < *v28)
          {
            v38 = *v28;
            v39 = *(v11 + 20);
            v40 = *(v30 + 4);
            *v28 = *v30;
            *(v11 + 20) = v40;
            *(v30 + 4) = v39;
            *v30 = v38;
          }
        }
      }

      else if (v33 >= v31)
      {
        v43 = *v28;
        v44 = *(v11 + 20);
        v45 = *(v30 + 4);
        *v28 = *v30;
        *(v11 + 20) = v45;
        *(v30 + 4) = v44;
        *v30 = v43;
        if (*v9 < v43)
        {
          v197 = *(v30 + 2);
          v171 = *v30;
          v46 = *v9;
          *(v30 + 4) = *(a2 - 16);
          *v30 = v46;
          *(a2 - 16) = v197;
          *v9 = v171;
        }
      }

      else
      {
        v34 = *v28;
        v35 = *(v11 + 20);
        v36 = *(a2 - 16);
        *v28 = *v9;
        *(v11 + 20) = v36;
        *(a2 - 16) = v35;
        *v9 = v34;
      }

      v47 = (v11 + 24);
      v48 = v11 + 12 * v14;
      v51 = *(v48 + 12);
      v49 = (v48 + 12);
      v50 = v51;
      v52 = *v10;
      if (v51 >= *(v11 + 24))
      {
        if (v52 < v50)
        {
          v198 = *(v49 + 2);
          v172 = *v49;
          v56 = *v10;
          *(v49 + 4) = *(a2 - 28);
          *v49 = v56;
          *(a2 - 28) = v198;
          *v10 = v172;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v58 = *(v11 + 32);
            v59 = *(v49 + 4);
            *v47 = *v49;
            *(v11 + 32) = v59;
            *(v49 + 4) = v58;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v50)
      {
        v60 = *v47;
        v61 = *(v11 + 32);
        v62 = *(v49 + 4);
        *v47 = *v49;
        *(v11 + 32) = v62;
        *(v49 + 4) = v61;
        *v49 = v60;
        if (*v10 < v60)
        {
          v199 = *(v49 + 2);
          v173 = *v49;
          v63 = *v10;
          *(v49 + 4) = *(a2 - 28);
          *v49 = v63;
          *(a2 - 28) = v199;
          *v10 = v173;
        }
      }

      else
      {
        v53 = *v47;
        v54 = *(v11 + 32);
        v55 = *(a2 - 28);
        *v47 = *v10;
        *(v11 + 32) = v55;
        *(a2 - 28) = v54;
        *v10 = v53;
      }

      v64 = *v15;
      v65 = *v49;
      if (*v15 >= *v30)
      {
        if (v65 < v64)
        {
          v201 = *(v15 + 8);
          v175 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 4);
          *(v49 + 4) = v201;
          *v49 = v175;
          if (*v15 < *v30)
          {
            v202 = *(v30 + 2);
            v176 = *v30;
            *v30 = *v15;
            *(v30 + 4) = *(v15 + 8);
            *(v15 + 8) = v202;
            *v15 = v176;
          }
        }
      }

      else
      {
        if (v65 >= v64)
        {
          v203 = *(v30 + 2);
          v177 = *v30;
          *v30 = *v15;
          *(v30 + 4) = *(v15 + 8);
          *(v15 + 8) = v203;
          *v15 = v177;
          if (*v49 >= *v15)
          {
            goto LABEL_59;
          }

          v200 = *(v15 + 8);
          v174 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 4);
        }

        else
        {
          v200 = *(v30 + 2);
          v174 = *v30;
          *v30 = *v49;
          *(v30 + 4) = *(v49 + 4);
        }

        *(v49 + 4) = v200;
        *v49 = v174;
      }

LABEL_59:
      v204 = *(v11 + 8);
      v178 = *v11;
      v66 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v66;
      *(v15 + 8) = v204;
      *v15 = v178;
      --a3;
      v25 = *v11;
      if ((a4 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v67 = 0;
      v68 = *(v11 + 4);
      do
      {
        v69 = *(v11 + v67 + 12);
        v67 += 12;
      }

      while (v69 < v25);
      v70 = v11 + v67;
      v71 = a2;
      if (v67 == 12)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 12);
          v71 -= 12;
        }

        while (v73 >= v25);
      }

      else
      {
        do
        {
          v72 = *(v71 - 12);
          v71 -= 12;
        }

        while (v72 >= v25);
      }

      v11 += v67;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v205 = *(v11 + 8);
          v179 = *v11;
          v75 = *v74;
          *(v11 + 8) = *(v74 + 8);
          *v11 = v75;
          *(v74 + 8) = v205;
          *v74 = v179;
          do
          {
            v76 = *(v11 + 12);
            v11 += 12;
          }

          while (v76 < v25);
          do
          {
            v77 = *(v74 - 12);
            v74 -= 12;
          }

          while (v77 >= v25);
        }

        while (v11 < v74);
      }

      if (v11 - 12 != v7)
      {
        v78 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v78;
      }

      *(v11 - 12) = v25;
      *(v11 - 8) = v68;
      *(v11 - 4) = WORD2(v68);
      if (v70 < v71)
      {
LABEL_80:
        result = sub_A5811C(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v79 = sub_A59304(v7, (v11 - 12));
        result = sub_A59304(v11, a2);
        if (result)
        {
          a2 = v11 - 12;
          if (v79)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v79)
        {
          goto LABEL_80;
        }
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v91 = v11 + 12;
      v96 = *(v11 + 12);
      v97 = (v11 + 24);
      v98 = *(v11 + 24);
      if (v96 >= *v11)
      {
        if (v98 < v96)
        {
          v145 = *(v11 + 20);
          v146 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v146;
          *(v11 + 32) = v145;
          if (*(v11 + 12) < *v11)
          {
            v210 = *(v11 + 8);
            v184 = *v11;
            *v11 = *v91;
            *(v11 + 8) = *(v11 + 20);
            *v91 = v184;
            *(v11 + 20) = v210;
          }
        }
      }

      else
      {
        if (v98 < v96)
        {
          v208 = *(v11 + 8);
          v182 = *v11;
          *v11 = *v97;
          *(v11 + 8) = *(v11 + 32);
          *v97 = v182;
          LOWORD(v99) = v208;
          goto LABEL_186;
        }

        v212 = *(v11 + 8);
        v186 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v11 + 20);
        *v91 = v186;
        *(v11 + 20) = v212;
        if (v98 < *(v11 + 12))
        {
          v99 = *(v11 + 20);
          v156 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v156;
LABEL_186:
          *(v11 + 32) = v99;
        }
      }

      if (*v8 >= *v97)
      {
        return result;
      }

      v157 = *v97;
      v158 = *(v11 + 32);
      v159 = *(a2 - 4);
      *v97 = *v8;
      *(v11 + 32) = v159;
      *(a2 - 4) = v158;
      *v8 = v157;
      if (*v97 >= *v91)
      {
        return result;
      }

      v160 = *(v11 + 20);
      v161 = *v91;
      *v91 = *v97;
      *(v11 + 20) = *(v11 + 32);
      *v97 = v161;
      *(v11 + 32) = v160;
LABEL_190:
      if (*(v11 + 12) < *v11)
      {
        v213 = *(v11 + 8);
        v187 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v91 + 8);
        *v91 = v187;
        *(v91 + 8) = v213;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_A590C4(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

    goto LABEL_10;
  }

  v91 = v11 + 12;
  v92 = *(v11 + 12);
  v94 = *(a2 - 12);
  v89 = (a2 - 12);
  v93 = v94;
  if (v92 >= *v11)
  {
    if (v93 >= v92)
    {
      return result;
    }

    v142 = *v91;
    v143 = *(v11 + 20);
    v144 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v144;
    *(v89 + 4) = v143;
    *v89 = v142;
    goto LABEL_190;
  }

  if (v93 < v92)
  {
    goto LABEL_108;
  }

  v211 = *(v11 + 8);
  v185 = *v11;
  *v11 = *v91;
  *(v11 + 8) = *(v11 + 20);
  *v91 = v185;
  *(v11 + 20) = v211;
  if (*v89 < *(v11 + 12))
  {
    v153 = *v91;
    v154 = *(v11 + 20);
    v155 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v155;
    *(v89 + 4) = v154;
    *v89 = v153;
  }

  return result;
}

uint64_t *sub_A590C4(uint64_t *result, _DWORD *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v10 = a2[2];
      v11 = *a2;
      v12 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v12;
      *a3 = v11;
      *(a3 + 4) = v10;
      if (*a2 < *result)
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v15;
        *a2 = v14;
        *(a2 + 4) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 4);
      *result = *a3;
      *(result + 4) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 4) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 4);
    *result = *a2;
    *(result + 4) = v18;
    *a2 = v17;
    *(a2 + 4) = v16;
    if (*a3 < v17)
    {
      v7 = a2[2];
      v8 = *a2;
      v19 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v20 = a3[2];
    v21 = *a3;
    v22 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v22;
    *a4 = v21;
    *(a4 + 4) = v20;
    if (*a3 < *a2)
    {
      v23 = a2[2];
      v24 = *a2;
      v25 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v25;
      *a3 = v24;
      *(a3 + 4) = v23;
      if (*a2 < *result)
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v28;
        *a2 = v27;
        *(a2 + 4) = v26;
      }
    }
  }

  if (*a5 < *a4)
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 4) = v31;
    *a5 = v30;
    *(a5 + 4) = v29;
    if (*a4 < *a3)
    {
      v32 = a3[2];
      v33 = *a3;
      v34 = *(a4 + 4);
      *a3 = *a4;
      *(a3 + 4) = v34;
      *a4 = v33;
      *(a4 + 4) = v32;
      if (*a3 < *a2)
      {
        v35 = a2[2];
        v36 = *a2;
        v37 = *(a3 + 4);
        *a2 = *a3;
        *(a2 + 4) = v37;
        *a3 = v36;
        *(a3 + 4) = v35;
        if (*a2 < *result)
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 4);
          *result = *a2;
          *(result + 4) = v40;
          *a2 = v39;
          *(a2 + 4) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_A59304(int *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a1 + 3);
      v7 = a1[3];
      v9 = *(a2 - 3);
      v3 = (a2 - 12);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = a1[2];
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v39;
          *(a1 + 10) = v38;
          if (*v3 < a1[3])
          {
            v40 = a1[5];
            v41 = *v6;
            v42 = *(v3 + 4);
            *v6 = *v3;
            *(a1 + 10) = v42;
            *v3 = v41;
            *(v3 + 4) = v40;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = a1[5];
      v28 = *v6;
      v29 = *(v3 + 4);
      *v6 = *v3;
      *(a1 + 10) = v29;
      *v3 = v28;
      *(v3 + 4) = v27;
LABEL_48:
      if (a1[3] < *a1)
      {
        v62 = a1[2];
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 4) = *(v6 + 4);
        *v6 = v63;
        *(v6 + 4) = v62;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_A590C4(a1, a1 + 3, a1 + 6, (a1 + 9), (a2 - 12));
        return 1;
      }

      goto LABEL_13;
    }

    v6 = (a1 + 3);
    v20 = a1[3];
    v21 = (a1 + 6);
    v22 = a1[6];
    v23 = a2 - 3;
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = a1[5];
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 10) = *(a1 + 16);
        *v21 = v35;
        *(a1 + 16) = v34;
        if (*v6 < v24)
        {
          v36 = a1[2];
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v37;
          *(a1 + 10) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v55 = a1[2];
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 4) = *(a1 + 10);
      *v6 = v56;
      *(a1 + 10) = v55;
      if (v22 >= a1[3])
      {
        goto LABEL_45;
      }

      v25 = a1[5];
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 10) = *(a1 + 16);
    }

    else
    {
      v25 = a1[2];
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 4) = *(a1 + 16);
    }

    *v21 = v26;
    *(a1 + 16) = v25;
LABEL_45:
    if (*v23 >= *v21)
    {
      return 1;
    }

    v57 = a1[8];
    v58 = *v21;
    v59 = *(a2 - 2);
    *v21 = *v23;
    *(a1 + 16) = v59;
    *v23 = v58;
    *(a2 - 2) = v57;
    if (*v21 >= *v6)
    {
      return 1;
    }

    v60 = a1[5];
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 10) = *(a1 + 16);
    *v21 = v61;
    *(a1 + 16) = v60;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 3);
    v3 = (a2 - 12);
    if (v4 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v10 = a1[2];
    v11 = *a1;
    v12 = *(v3 + 4);
    *a1 = *v3;
    *(a1 + 4) = v12;
    *v3 = v11;
    *(v3 + 4) = v10;
    return 1;
  }

LABEL_13:
  v13 = (a1 + 6);
  v14 = a1[6];
  v15 = (a1 + 3);
  v16 = a1[3];
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = a1[5];
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v31;
      *(a1 + 16) = v30;
      if (*v15 < v17)
      {
        v32 = a1[2];
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 4) = *(a1 + 10);
        *v15 = v33;
        *(a1 + 10) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = a1[2];
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 4) = *(a1 + 10);
    *v15 = v44;
    *(a1 + 10) = v43;
    if (v14 < a1[3])
    {
      v45 = a1[5];
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v46;
      *(a1 + 16) = v45;
    }
  }

  else
  {
    v18 = a1[2];
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 4) = *(a1 + 16);
    *v13 = v19;
    *(a1 + 16) = v18;
  }

  v47 = (a1 + 9);
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < *v13)
    {
      break;
    }

LABEL_40:
    v13 = v47;
    v48 += 12;
    v47 = (v47 + 12);
    if (v47 == a2)
    {
      return 1;
    }
  }

  v51 = *(v47 + 4);
  v52 = v48;
  do
  {
    v53 = a1 + v52;
    *(v53 + 36) = *(a1 + v52 + 24);
    *(v53 + 44) = *(a1 + v52 + 32);
    if (v52 == -24)
    {
      *a1 = v50;
      a1[1] = v51;
      *(a1 + 4) = WORD2(v51);
      if (++v49 != 8)
      {
        goto LABEL_40;
      }

      return (v47 + 12) == a2;
    }

    v52 -= 12;
  }

  while (v50 < *(v53 + 12));
  v54 = a1 + v52;
  *(v54 + 36) = v50;
  *(v54 + 40) = v51;
  *(v54 + 44) = WORD2(v51);
  if (++v49 != 8)
  {
    goto LABEL_40;
  }

  return (v47 + 12) == a2;
}

uint64_t sub_A597BC(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v9 = (a2 - 24);
  v10 = (a2 - 36);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v90 = *(a2 - 12);
      v89 = (a2 - 12);
      if (v90 <= *v11)
      {
        return result;
      }

LABEL_108:
      v207 = *(v11 + 8);
      v181 = *v11;
      v95 = *v89;
      *(v11 + 8) = *(v89 + 4);
      *v11 = v95;
      *(v89 + 4) = v207;
      *v89 = v181;
      return result;
    }

LABEL_10:
    if (v12 <= 287)
    {
      v100 = v11 + 12;
      v102 = v11 == a2 || v100 == a2;
      if (a4)
      {
        if (v102)
        {
          return result;
        }

        v103 = 0;
        v104 = v11;
        while (1)
        {
          v106 = v100;
          v107 = *(v104 + 12);
          if (v107 > *v104)
          {
            v108 = *(v104 + 16);
            v109 = v103;
            do
            {
              v110 = v11 + v109;
              *(v110 + 12) = *(v11 + v109);
              *(v110 + 20) = *(v11 + v109 + 8);
              if (!v109)
              {
                v105 = v11;
                goto LABEL_122;
              }

              v109 -= 12;
            }

            while (v107 > *(v110 - 12));
            v105 = v11 + v109 + 12;
LABEL_122:
            *v105 = v107;
            *(v105 + 4) = v108;
            *(v105 + 8) = WORD2(v108);
          }

          v100 = v106 + 12;
          v103 += 12;
          v104 = v106;
          if (v106 + 12 == a2)
          {
            return result;
          }
        }
      }

      if (!v102)
      {
        do
        {
          v147 = v100;
          v148 = *(v7 + 12);
          if (v148 > *v7)
          {
            v149 = *(v7 + 16);
            v150 = v147;
            do
            {
              v151 = v150;
              v152 = *(v150 - 12);
              v150 -= 12;
              *v151 = v152;
              *(v151 + 8) = *(v151 - 4);
            }

            while (v148 > *(v151 - 24));
            *v150 = v148;
            *(v150 + 4) = v149;
            *(v150 + 8) = WORD2(v149);
          }

          v100 = v147 + 12;
          v7 = v147;
        }

        while (v147 + 12 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v111 = (v13 - 2) >> 1;
      v112 = v111;
      while (1)
      {
        if (v111 >= v112)
        {
          v113 = (2 * (v112 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v114 = (v11 + 12 * v113);
          if (2 * v112 + 2 >= v13)
          {
            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (*v114 <= *v117)
            {
              goto LABEL_142;
            }
          }

          else
          {
            v115 = v114[3];
            v116 = *v114 <= v115;
            if (*v114 < v115)
            {
              v115 = *v114;
            }

            if (!v116)
            {
              v114 += 3;
              v113 = 2 * v112 + 2;
            }

            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (v115 <= *v117)
            {
LABEL_142:
              v119 = *(v117 + 1);
              while (1)
              {
                v122 = v117;
                v117 = v114;
                v123 = *v114;
                *(v122 + 4) = *(v117 + 4);
                *v122 = v123;
                if (v111 < v113)
                {
                  break;
                }

                v124 = (2 * v113) | 1;
                v114 = (v11 + 12 * v124);
                v113 = 2 * v113 + 2;
                if (v113 < v13)
                {
                  v120 = *v114;
                  v121 = v114[3];
                  if (*v114 >= v121)
                  {
                    v120 = v114[3];
                  }

                  if (*v114 <= v121)
                  {
                    v113 = v124;
                  }

                  else
                  {
                    v114 += 3;
                  }

                  if (v120 > v118)
                  {
                    break;
                  }
                }

                else
                {
                  v113 = v124;
                  if (*v114 > v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              v117[1] = v119;
              *(v117 + 4) = WORD2(v119);
            }
          }
        }

        v116 = v112-- <= 0;
        if (v116)
        {
          v125 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
          do
          {
            v126 = 0;
            v209 = *(v11 + 8);
            v183 = *v11;
            v127 = v11;
            do
            {
              v132 = v127 + 12 * v126;
              v130 = (v132 + 12);
              result = 2 * v126;
              v133 = (2 * v126) | 1;
              v126 = 2 * v126 + 2;
              if (v126 < v125)
              {
                v129 = *(v132 + 24);
                v128 = (v132 + 24);
                result = v129;
                if (*(v128 - 3) <= v129)
                {
                  v126 = v133;
                }

                else
                {
                  v130 = v128;
                }
              }

              else
              {
                v126 = v133;
              }

              v131 = *v130;
              *(v127 + 4) = *(v130 + 4);
              *v127 = v131;
              v127 = v130;
            }

            while (v126 <= ((v125 - 2) >> 1));
            a2 -= 12;
            if (v130 == a2)
            {
              *(v130 + 4) = v209;
              *v130 = v183;
            }

            else
            {
              v134 = *a2;
              *(v130 + 4) = *(a2 + 8);
              *v130 = v134;
              *(a2 + 8) = v209;
              *a2 = v183;
              v135 = v130 - v11 + 12;
              if (v135 >= 13)
              {
                v136 = (-2 - 0x5555555555555555 * (v135 >> 2)) >> 1;
                v137 = (v11 + 12 * v136);
                v138 = *v130;
                if (*v137 > *v130)
                {
                  v139 = *(v130 + 4);
                  do
                  {
                    v140 = v130;
                    v130 = v137;
                    v141 = *v137;
                    result = *(v130 + 4);
                    *(v140 + 4) = result;
                    *v140 = v141;
                    if (!v136)
                    {
                      break;
                    }

                    v136 = (v136 - 1) >> 1;
                    v137 = (v11 + 12 * v136);
                  }

                  while (*v137 > v138);
                  *v130 = v138;
                  *(v130 + 1) = v139;
                  *(v130 + 4) = WORD2(v139);
                }
              }
            }

            v116 = v125-- <= 2;
          }

          while (!v116);
          return result;
        }
      }
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *v8;
    if (v12 < 0x601)
    {
      v19 = *v11;
      if (*v11 > *v15)
      {
        if (v16 > v19)
        {
          v189 = *(v15 + 8);
          v163 = *v15;
          v20 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v20;
          goto LABEL_37;
        }

        v196 = *(v15 + 8);
        v170 = *v15;
        v41 = *v11;
        *(v15 + 8) = *(v11 + 8);
        *v15 = v41;
        *(v11 + 8) = v196;
        *v11 = v170;
        if (*v8 > *v11)
        {
          v189 = *(v11 + 8);
          v163 = *v11;
          v42 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v42;
LABEL_37:
          *(a2 - 4) = v189;
          *v8 = v163;
        }

LABEL_38:
        --a3;
        v25 = *v11;
        if (a4)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v16 <= v19)
      {
        goto LABEL_38;
      }

      v192 = *(v11 + 8);
      v166 = *v11;
      v23 = *v8;
      *(v11 + 8) = *(a2 - 4);
      *v11 = v23;
      *(a2 - 4) = v192;
      *v8 = v166;
      if (*v11 <= *v15)
      {
        goto LABEL_38;
      }

      v193 = *(v15 + 8);
      v167 = *v15;
      v24 = *v11;
      *(v15 + 8) = *(v11 + 8);
      *v15 = v24;
      *(v11 + 8) = v193;
      *v11 = v167;
      --a3;
      v25 = v167;
      if (a4)
      {
        goto LABEL_61;
      }

LABEL_60:
      if (*(v11 - 12) > v25)
      {
        goto LABEL_61;
      }

      if (v25 <= *v8)
      {
        v81 = v11 + 12;
        do
        {
          v11 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v81 += 12;
        }

        while (v25 <= *v11);
      }

      else
      {
        do
        {
          v80 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 <= v80);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v82 = a2;
        do
        {
          v83 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 > v83);
      }

      v84 = *(v7 + 4);
      while (v11 < v82)
      {
        v206 = *(v11 + 8);
        v180 = *v11;
        v85 = *v82;
        *(v11 + 8) = *(v82 + 8);
        *v11 = v85;
        *(v82 + 8) = v206;
        *v82 = v180;
        do
        {
          v86 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 <= v86);
        do
        {
          v87 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 > v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v25;
      *(v11 - 8) = v84;
      *(v11 - 4) = WORD2(v84);
    }

    else
    {
      v17 = *v15;
      if (*v15 <= *v11)
      {
        if (v16 > v17)
        {
          v190 = *(v15 + 8);
          v164 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v21;
          *(a2 - 4) = v190;
          *v8 = v164;
          if (*v15 > *v11)
          {
            v191 = *(v11 + 8);
            v165 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v191;
            *v15 = v165;
          }
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v194 = *(v11 + 8);
          v168 = *v11;
          v26 = *v15;
          *(v11 + 8) = *(v15 + 8);
          *v11 = v26;
          *(v15 + 8) = v194;
          *v15 = v168;
          if (*v8 <= *v15)
          {
            goto LABEL_29;
          }

          v188 = *(v15 + 8);
          v162 = *v15;
          v27 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v27;
        }

        else
        {
          v188 = *(v11 + 8);
          v162 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v18;
        }

        *(a2 - 4) = v188;
        *v8 = v162;
      }

LABEL_29:
      v28 = (v11 + 12);
      v29 = v11 + 12 * v14;
      v32 = *(v29 - 12);
      v30 = (v29 - 12);
      v31 = v32;
      v33 = *v9;
      if (v32 <= *(v11 + 12))
      {
        if (v33 > v31)
        {
          v195 = *(v30 + 2);
          v169 = *v30;
          v37 = *v9;
          *(v30 + 4) = *(a2 - 16);
          *v30 = v37;
          *(a2 - 16) = v195;
          *v9 = v169;
          if (*v30 > *v28)
          {
            v38 = *v28;
            v39 = *(v11 + 20);
            v40 = *(v30 + 4);
            *v28 = *v30;
            *(v11 + 20) = v40;
            *(v30 + 4) = v39;
            *v30 = v38;
          }
        }
      }

      else if (v33 <= v31)
      {
        v43 = *v28;
        v44 = *(v11 + 20);
        v45 = *(v30 + 4);
        *v28 = *v30;
        *(v11 + 20) = v45;
        *(v30 + 4) = v44;
        *v30 = v43;
        if (*v9 > v43)
        {
          v197 = *(v30 + 2);
          v171 = *v30;
          v46 = *v9;
          *(v30 + 4) = *(a2 - 16);
          *v30 = v46;
          *(a2 - 16) = v197;
          *v9 = v171;
        }
      }

      else
      {
        v34 = *v28;
        v35 = *(v11 + 20);
        v36 = *(a2 - 16);
        *v28 = *v9;
        *(v11 + 20) = v36;
        *(a2 - 16) = v35;
        *v9 = v34;
      }

      v47 = (v11 + 24);
      v48 = v11 + 12 * v14;
      v51 = *(v48 + 12);
      v49 = (v48 + 12);
      v50 = v51;
      v52 = *v10;
      if (v51 <= *(v11 + 24))
      {
        if (v52 > v50)
        {
          v198 = *(v49 + 2);
          v172 = *v49;
          v56 = *v10;
          *(v49 + 4) = *(a2 - 28);
          *v49 = v56;
          *(a2 - 28) = v198;
          *v10 = v172;
          if (*v49 > *v47)
          {
            v57 = *v47;
            v58 = *(v11 + 32);
            v59 = *(v49 + 4);
            *v47 = *v49;
            *(v11 + 32) = v59;
            *(v49 + 4) = v58;
            *v49 = v57;
          }
        }
      }

      else if (v52 <= v50)
      {
        v60 = *v47;
        v61 = *(v11 + 32);
        v62 = *(v49 + 4);
        *v47 = *v49;
        *(v11 + 32) = v62;
        *(v49 + 4) = v61;
        *v49 = v60;
        if (*v10 > v60)
        {
          v199 = *(v49 + 2);
          v173 = *v49;
          v63 = *v10;
          *(v49 + 4) = *(a2 - 28);
          *v49 = v63;
          *(a2 - 28) = v199;
          *v10 = v173;
        }
      }

      else
      {
        v53 = *v47;
        v54 = *(v11 + 32);
        v55 = *(a2 - 28);
        *v47 = *v10;
        *(v11 + 32) = v55;
        *(a2 - 28) = v54;
        *v10 = v53;
      }

      v64 = *v15;
      v65 = *v49;
      if (*v15 <= *v30)
      {
        if (v65 > v64)
        {
          v201 = *(v15 + 8);
          v175 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 4);
          *(v49 + 4) = v201;
          *v49 = v175;
          if (*v15 > *v30)
          {
            v202 = *(v30 + 2);
            v176 = *v30;
            *v30 = *v15;
            *(v30 + 4) = *(v15 + 8);
            *(v15 + 8) = v202;
            *v15 = v176;
          }
        }
      }

      else
      {
        if (v65 <= v64)
        {
          v203 = *(v30 + 2);
          v177 = *v30;
          *v30 = *v15;
          *(v30 + 4) = *(v15 + 8);
          *(v15 + 8) = v203;
          *v15 = v177;
          if (*v49 <= *v15)
          {
            goto LABEL_59;
          }

          v200 = *(v15 + 8);
          v174 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 4);
        }

        else
        {
          v200 = *(v30 + 2);
          v174 = *v30;
          *v30 = *v49;
          *(v30 + 4) = *(v49 + 4);
        }

        *(v49 + 4) = v200;
        *v49 = v174;
      }

LABEL_59:
      v204 = *(v11 + 8);
      v178 = *v11;
      v66 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v66;
      *(v15 + 8) = v204;
      *v15 = v178;
      --a3;
      v25 = *v11;
      if ((a4 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v67 = 0;
      v68 = *(v11 + 4);
      do
      {
        v69 = *(v11 + v67 + 12);
        v67 += 12;
      }

      while (v69 > v25);
      v70 = v11 + v67;
      v71 = a2;
      if (v67 == 12)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 12);
          v71 -= 12;
        }

        while (v73 <= v25);
      }

      else
      {
        do
        {
          v72 = *(v71 - 12);
          v71 -= 12;
        }

        while (v72 <= v25);
      }

      v11 += v67;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v205 = *(v11 + 8);
          v179 = *v11;
          v75 = *v74;
          *(v11 + 8) = *(v74 + 8);
          *v11 = v75;
          *(v74 + 8) = v205;
          *v74 = v179;
          do
          {
            v76 = *(v11 + 12);
            v11 += 12;
          }

          while (v76 > v25);
          do
          {
            v77 = *(v74 - 12);
            v74 -= 12;
          }

          while (v77 <= v25);
        }

        while (v11 < v74);
      }

      if (v11 - 12 != v7)
      {
        v78 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v78;
      }

      *(v11 - 12) = v25;
      *(v11 - 8) = v68;
      *(v11 - 4) = WORD2(v68);
      if (v70 < v71)
      {
LABEL_80:
        result = sub_A597BC(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v79 = sub_A5A9A4(v7, (v11 - 12));
        result = sub_A5A9A4(v11, a2);
        if (result)
        {
          a2 = v11 - 12;
          if (v79)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v79)
        {
          goto LABEL_80;
        }
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v91 = v11 + 12;
      v96 = *(v11 + 12);
      v97 = (v11 + 24);
      v98 = *(v11 + 24);
      if (v96 <= *v11)
      {
        if (v98 > v96)
        {
          v145 = *(v11 + 20);
          v146 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v146;
          *(v11 + 32) = v145;
          if (*(v11 + 12) > *v11)
          {
            v210 = *(v11 + 8);
            v184 = *v11;
            *v11 = *v91;
            *(v11 + 8) = *(v11 + 20);
            *v91 = v184;
            *(v11 + 20) = v210;
          }
        }
      }

      else
      {
        if (v98 > v96)
        {
          v208 = *(v11 + 8);
          v182 = *v11;
          *v11 = *v97;
          *(v11 + 8) = *(v11 + 32);
          *v97 = v182;
          LOWORD(v99) = v208;
          goto LABEL_186;
        }

        v212 = *(v11 + 8);
        v186 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v11 + 20);
        *v91 = v186;
        *(v11 + 20) = v212;
        if (v98 > *(v11 + 12))
        {
          v99 = *(v11 + 20);
          v156 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v156;
LABEL_186:
          *(v11 + 32) = v99;
        }
      }

      if (*v8 <= *v97)
      {
        return result;
      }

      v157 = *v97;
      v158 = *(v11 + 32);
      v159 = *(a2 - 4);
      *v97 = *v8;
      *(v11 + 32) = v159;
      *(a2 - 4) = v158;
      *v8 = v157;
      if (*v97 <= *v91)
      {
        return result;
      }

      v160 = *(v11 + 20);
      v161 = *v91;
      *v91 = *v97;
      *(v11 + 20) = *(v11 + 32);
      *v97 = v161;
      *(v11 + 32) = v160;
LABEL_190:
      if (*(v11 + 12) > *v11)
      {
        v213 = *(v11 + 8);
        v187 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v91 + 8);
        *v91 = v187;
        *(v91 + 8) = v213;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_A5A764(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

    goto LABEL_10;
  }

  v91 = v11 + 12;
  v92 = *(v11 + 12);
  v94 = *(a2 - 12);
  v89 = (a2 - 12);
  v93 = v94;
  if (v92 <= *v11)
  {
    if (v93 <= v92)
    {
      return result;
    }

    v142 = *v91;
    v143 = *(v11 + 20);
    v144 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v144;
    *(v89 + 4) = v143;
    *v89 = v142;
    goto LABEL_190;
  }

  if (v93 > v92)
  {
    goto LABEL_108;
  }

  v211 = *(v11 + 8);
  v185 = *v11;
  *v11 = *v91;
  *(v11 + 8) = *(v11 + 20);
  *v91 = v185;
  *(v11 + 20) = v211;
  if (*v89 > *(v11 + 12))
  {
    v153 = *v91;
    v154 = *(v11 + 20);
    v155 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v155;
    *(v89 + 4) = v154;
    *v89 = v153;
  }

  return result;
}

uint64_t *sub_A5A764(uint64_t *result, _DWORD *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 <= *result)
  {
    if (v6 > v5)
    {
      v10 = a2[2];
      v11 = *a2;
      v12 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v12;
      *a3 = v11;
      *(a3 + 4) = v10;
      if (*a2 > *result)
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v15;
        *a2 = v14;
        *(a2 + 4) = v13;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 4);
      *result = *a3;
      *(result + 4) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 4) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 4);
    *result = *a2;
    *(result + 4) = v18;
    *a2 = v17;
    *(a2 + 4) = v16;
    if (*a3 > v17)
    {
      v7 = a2[2];
      v8 = *a2;
      v19 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    v20 = a3[2];
    v21 = *a3;
    v22 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v22;
    *a4 = v21;
    *(a4 + 4) = v20;
    if (*a3 > *a2)
    {
      v23 = a2[2];
      v24 = *a2;
      v25 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v25;
      *a3 = v24;
      *(a3 + 4) = v23;
      if (*a2 > *result)
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v28;
        *a2 = v27;
        *(a2 + 4) = v26;
      }
    }
  }

  if (*a5 > *a4)
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 4) = v31;
    *a5 = v30;
    *(a5 + 4) = v29;
    if (*a4 > *a3)
    {
      v32 = a3[2];
      v33 = *a3;
      v34 = *(a4 + 4);
      *a3 = *a4;
      *(a3 + 4) = v34;
      *a4 = v33;
      *(a4 + 4) = v32;
      if (*a3 > *a2)
      {
        v35 = a2[2];
        v36 = *a2;
        v37 = *(a3 + 4);
        *a2 = *a3;
        *(a2 + 4) = v37;
        *a3 = v36;
        *(a3 + 4) = v35;
        if (*a2 > *result)
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 4);
          *result = *a2;
          *(result + 4) = v40;
          *a2 = v39;
          *(a2 + 4) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_A5A9A4(int *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a1 + 3);
      v7 = a1[3];
      v9 = *(a2 - 3);
      v3 = (a2 - 12);
      v8 = v9;
      if (v7 > *a1)
      {
        if (v8 <= v7)
        {
          v38 = a1[2];
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v39;
          *(a1 + 10) = v38;
          if (*v3 > a1[3])
          {
            v40 = a1[5];
            v41 = *v6;
            v42 = *(v3 + 4);
            *v6 = *v3;
            *(a1 + 10) = v42;
            *v3 = v41;
            *(v3 + 4) = v40;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v27 = a1[5];
      v28 = *v6;
      v29 = *(v3 + 4);
      *v6 = *v3;
      *(a1 + 10) = v29;
      *v3 = v28;
      *(v3 + 4) = v27;
LABEL_48:
      if (a1[3] > *a1)
      {
        v62 = a1[2];
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 4) = *(v6 + 4);
        *v6 = v63;
        *(v6 + 4) = v62;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_A5A764(a1, a1 + 3, a1 + 6, (a1 + 9), (a2 - 12));
        return 1;
      }

      goto LABEL_13;
    }

    v6 = (a1 + 3);
    v20 = a1[3];
    v21 = (a1 + 6);
    v22 = a1[6];
    v23 = a2 - 3;
    v24 = *a1;
    if (v20 <= *a1)
    {
      if (v22 > v20)
      {
        v34 = a1[5];
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 10) = *(a1 + 16);
        *v21 = v35;
        *(a1 + 16) = v34;
        if (*v6 > v24)
        {
          v36 = a1[2];
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v37;
          *(a1 + 10) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 <= v20)
    {
      v55 = a1[2];
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 4) = *(a1 + 10);
      *v6 = v56;
      *(a1 + 10) = v55;
      if (v22 <= a1[3])
      {
        goto LABEL_45;
      }

      v25 = a1[5];
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 10) = *(a1 + 16);
    }

    else
    {
      v25 = a1[2];
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 4) = *(a1 + 16);
    }

    *v21 = v26;
    *(a1 + 16) = v25;
LABEL_45:
    if (*v23 <= *v21)
    {
      return 1;
    }

    v57 = a1[8];
    v58 = *v21;
    v59 = *(a2 - 2);
    *v21 = *v23;
    *(a1 + 16) = v59;
    *v23 = v58;
    *(a2 - 2) = v57;
    if (*v21 <= *v6)
    {
      return 1;
    }

    v60 = a1[5];
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 10) = *(a1 + 16);
    *v21 = v61;
    *(a1 + 16) = v60;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 3);
    v3 = (a2 - 12);
    if (v4 <= *a1)
    {
      return 1;
    }

LABEL_12:
    v10 = a1[2];
    v11 = *a1;
    v12 = *(v3 + 4);
    *a1 = *v3;
    *(a1 + 4) = v12;
    *v3 = v11;
    *(v3 + 4) = v10;
    return 1;
  }

LABEL_13:
  v13 = (a1 + 6);
  v14 = a1[6];
  v15 = (a1 + 3);
  v16 = a1[3];
  v17 = *a1;
  if (v16 <= *a1)
  {
    if (v14 > v16)
    {
      v30 = a1[5];
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v31;
      *(a1 + 16) = v30;
      if (*v15 > v17)
      {
        v32 = a1[2];
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 4) = *(a1 + 10);
        *v15 = v33;
        *(a1 + 10) = v32;
      }
    }
  }

  else if (v14 <= v16)
  {
    v43 = a1[2];
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 4) = *(a1 + 10);
    *v15 = v44;
    *(a1 + 10) = v43;
    if (v14 > a1[3])
    {
      v45 = a1[5];
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v46;
      *(a1 + 16) = v45;
    }
  }

  else
  {
    v18 = a1[2];
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 4) = *(a1 + 16);
    *v13 = v19;
    *(a1 + 16) = v18;
  }

  v47 = (a1 + 9);
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 > *v13)
    {
      break;
    }

LABEL_40:
    v13 = v47;
    v48 += 12;
    v47 = (v47 + 12);
    if (v47 == a2)
    {
      return 1;
    }
  }

  v51 = *(v47 + 4);
  v52 = v48;
  do
  {
    v53 = a1 + v52;
    *(v53 + 36) = *(a1 + v52 + 24);
    *(v53 + 44) = *(a1 + v52 + 32);
    if (v52 == -24)
    {
      *a1 = v50;
      a1[1] = v51;
      *(a1 + 4) = WORD2(v51);
      if (++v49 != 8)
      {
        goto LABEL_40;
      }

      return (v47 + 12) == a2;
    }

    v52 -= 12;
  }

  while (v50 > *(v53 + 12));
  v54 = a1 + v52;
  *(v54 + 36) = v50;
  *(v54 + 40) = v51;
  *(v54 + 44) = WORD2(v51);
  if (++v49 != 8)
  {
    goto LABEL_40;
  }

  return (v47 + 12) == a2;
}

uint64_t sub_A5AE5C(uint64_t *a1, __int128 *a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v5 = 0x11A7B9611A7B961;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x11A7B9611A7B961)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_A31084(v11, a2);
  v6 = 232 * v2 + 232;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_A5B004(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_A5AF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5AFB0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    sub_A30978(i - 232);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A5B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 16);
      *(a4 + 30) = *(v6 + 30);
      *a4 = v7;
      *(a4 + 16) = v8;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      v9 = *(v6 + 144);
      *(a4 + 157) = *(v6 + 157);
      *(a4 + 144) = v9;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(v6 + 168) = 0;
      *(a4 + 192) = *(v6 + 192);
      *(a4 + 216) = 0;
      *(a4 + 224) = 0;
      *(a4 + 208) = 0;
      *(a4 + 208) = *(v6 + 208);
      *(a4 + 224) = *(v6 + 224);
      *(v6 + 208) = 0;
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      v6 += 232;
      a4 += 232;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_A30978(v5) + 232;
    }
  }
}

uint64_t sub_A5B144(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x193D4BB7E327A977 * (v4 >> 4) + 1;
  if (v5 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4) > v5)
  {
    v5 = 0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((*(a1 + 16) - v2) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v7 = 0x39B0AD12073615;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (v4 >> 4);
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 1128) = 4;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 1128) = -1;
      v11 = v10[282];
      if (v11 != -1)
      {
        v15 = v9;
        (off_26707E8[v11])(&v15, v10);
        *(v9 + 1128) = v11;
      }

      v10 += 284;
      v9 += 1136;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[282];
      if (v12 != -1)
      {
        (off_26707C0[v12])(&v16, v2);
      }

      v2[282] = -1;
      v2 += 284;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 1136;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 1136;
}

uint64_t sub_A5B338(void *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 144 * v2;
  v13 = 0;
  sub_A316EC(144 * v2, a2);
  v12 = 144 * v2 + 144;
  sub_A5609C(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 144;
    sub_9FFEB4((i - 144));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_A5B488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A561F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5B49C(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 0;
  v14 = (v2 << 6);
  sub_A314BC((v2 << 6), a2);
  v15 = ((v2 << 6) + 64);
  v7 = *(a1 + 8);
  v8 = (v2 << 6) + *a1 - v7;
  sub_A5650C(a1, *a1, v7, (v14 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_A56398(&v13);
  return v12;
}

void sub_A5B5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_A56398(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5B5C8(uint64_t *a1, __int128 *a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v5 = 0x11A7B9611A7B961;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x11A7B9611A7B961)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_A31084(v11, a2);
  v6 = 232 * v2 + 232;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_A5B004(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}